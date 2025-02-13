; ModuleID = 'blender/source/blender/modifiers/intern/MOD_uvproject.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_uvproject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.UVProjectModifierData = type { %struct.ModifierData, [10 x ptr], ptr, i32, i32, float, float, float, float, [64 x i8], i32, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.Projector = type { ptr, [4 x [4 x float]], [3 x float], ptr }
%struct.CameraParams = type { i8, float, float, float, float, float, float, float, float, float, i32, float, float, i32, i32, i32, float, float, float, %struct.rctf, [4 x [4 x float]] }
%struct.rctf = type { float, float, float, float }
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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef returned %2, i32 %3) #0 !PGOFuncName !35 {
  %5 = tail call fastcc ptr @uvprojectModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !36 {
  %2 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 3
  store i32 0, ptr %2, align 8, !tbaa !37
  %3 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 4
  store i32 1, ptr %3, align 4, !tbaa !45
  %4 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 5
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %4, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 !PGOFuncName !47 {
  ret i64 31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !48 {
  %6 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !45
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %5, %18
  %10 = phi i32 [ %19, %18 ], [ %7, %5 ]
  %11 = phi i64 [ %20, %18 ], [ 0, %5 ]
  %12 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 1, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %13) #8
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %16, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #8
  %17 = load i32, ptr %6, align 4, !tbaa !45
  br label %18

18:                                               ; preds = %9, %15
  %19 = phi i32 [ %10, %9 ], [ %17, %15 ]
  %20 = add nuw nsw i64 %11, 1
  %21 = sext i32 %19 to i64
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %9, label %23, !llvm.loop !50

23:                                               ; preds = %18, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !52 {
  br label %5

5:                                                ; preds = %4, %5
  %6 = phi i64 [ 0, %4 ], [ %8, %5 ]
  %7 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 1, i64 %6
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %7) #8
  %8 = add nuw nsw i64 %6, 1
  %9 = icmp eq i64 %8, 10
  br i1 %9, label %10, label %5, !llvm.loop !53

10:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachIDLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !54 {
  %5 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 2
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #8
  tail call void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #9
  ret void
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @uvprojectModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef returned %2) unnamed_addr #0 !PGOFuncName !55 {
  %4 = alloca [10 x %struct.Projector], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca %struct.CameraParams, align 4
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !37
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  call void @llvm.lifetime.start.p0(i64 960, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  %16 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 5
  %17 = load float, ptr %16, align 8, !tbaa !57
  %18 = fcmp une float %17, 0.000000e+00
  %19 = select i1 %18, float %17, float 1.000000e+00
  %20 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 6
  %21 = load float, ptr %20, align 4, !tbaa !58
  %22 = fcmp une float %21, 0.000000e+00
  %23 = select i1 %22, float %21, float 1.000000e+00
  %24 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 7
  %25 = load <2 x float>, ptr %24, align 8, !tbaa !46
  %26 = fcmp une <2 x float> %25, zeroinitializer
  %27 = select <2 x i1> %26, <2 x float> %25, <2 x float> <float 1.000000e+00, float 1.000000e+00>
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %29 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !45
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %285

32:                                               ; preds = %3
  %33 = zext nneg i32 %30 to i64
  br label %34

34:                                               ; preds = %32, %44
  %35 = phi i64 [ 0, %32 ], [ %46, %44 ]
  %36 = phi i32 [ 0, %32 ], [ %45, %44 ]
  %37 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 1, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !49
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = add nsw i32 %36, 1
  %42 = sext i32 %36 to i64
  %43 = getelementptr inbounds [10 x %struct.Projector], ptr %4, i64 0, i64 %42
  store ptr %38, ptr %43, align 16, !tbaa !59
  br label %44

44:                                               ; preds = %34, %40
  %45 = phi i32 [ %41, %40 ], [ %36, %34 ]
  %46 = add nuw nsw i64 %35, 1
  %47 = icmp eq i64 %46, %33
  br i1 %47, label %48, label %34, !llvm.loop !61

48:                                               ; preds = %44
  %49 = icmp eq i32 %45, 0
  br i1 %49, label %285, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 3
  %52 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %51, i32 noundef 16) #8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %285, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.UVProjectModifierData, ptr %0, i64 0, i32 9
  call void @CustomData_validate_layer_name(ptr noundef nonnull %51, i32 noundef 16, ptr noundef nonnull %55, ptr noundef nonnull %5) #8
  %56 = icmp sgt i32 %45, 0
  br i1 %56, label %57, label %101

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.CameraParams, ptr %8, i64 0, i32 19
  %59 = getelementptr inbounds %struct.CameraParams, ptr %8, i64 0, i32 20
  %60 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3
  %61 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3, i64 2
  %62 = zext nneg i32 %45 to i64
  %63 = extractelement <2 x float> %27, i64 0
  %64 = extractelement <2 x float> %27, i64 1
  br label %65

65:                                               ; preds = %57, %91
  %66 = phi i64 [ 0, %57 ], [ %97, %91 ]
  %67 = phi i32 [ 0, %57 ], [ %92, %91 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #10
  %68 = getelementptr inbounds [10 x %struct.Projector], ptr %4, i64 0, i64 %66
  %69 = getelementptr inbounds [10 x %struct.Projector], ptr %4, i64 0, i64 %66, i32 1
  %70 = load ptr, ptr %68, align 16, !tbaa !59
  %71 = getelementptr inbounds %struct.Object, ptr %70, i64 0, i32 47
  %72 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %69, ptr noundef nonnull %71) #8
  %73 = getelementptr inbounds [10 x %struct.Projector], ptr %4, i64 0, i64 %66, i32 3
  store ptr null, ptr %73, align 8, !tbaa !62
  %74 = load ptr, ptr %68, align 16, !tbaa !59
  %75 = getelementptr inbounds %struct.Object, ptr %74, i64 0, i32 3
  %76 = load i16, ptr %75, align 8, !tbaa !63
  %77 = icmp eq i16 %76, 11
  br i1 %77, label %78, label %90

78:                                               ; preds = %65
  %79 = getelementptr inbounds %struct.Object, ptr %74, i64 0, i32 19
  %80 = load ptr, ptr %79, align 8, !tbaa !70
  %81 = getelementptr inbounds %struct.Camera, ptr %80, i64 0, i32 2
  %82 = load i8, ptr %81, align 8, !tbaa !71
  %83 = icmp eq i8 %82, 2
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = call ptr @BLI_uvproject_camera_info(ptr noundef nonnull %74, ptr noundef null, float noundef %19, float noundef %23) #8
  store ptr %85, ptr %73, align 8, !tbaa !62
  call void @BLI_uvproject_camera_info_scale(ptr noundef %85, float noundef %63, float noundef %64) #8
  br label %91

86:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %8) #10
  call void @BKE_camera_params_init(ptr noundef nonnull %8) #8
  %87 = load ptr, ptr %68, align 16, !tbaa !59
  call void @BKE_camera_params_from_object(ptr noundef nonnull %8, ptr noundef %87) #8
  call void @BKE_camera_params_compute_viewplane(ptr noundef nonnull %8, i32 noundef 1, i32 noundef 1, float noundef %19, float noundef %23) #8
  %88 = load <4 x float>, ptr %58, align 4, !tbaa !46
  %89 = fmul <4 x float> %28, %88
  store <4 x float> %89, ptr %58, align 4, !tbaa !46
  call void @BKE_camera_params_compute_matrix(ptr noundef nonnull %8) #8
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %59, ptr noundef nonnull %69) #8
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %8) #10
  br label %91

90:                                               ; preds = %65
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %69) #8
  br label %91

91:                                               ; preds = %84, %86, %90
  %92 = phi i32 [ 1, %84 ], [ %67, %86 ], [ %67, %90 ]
  call void @unit_m4(ptr noundef nonnull %7) #8
  call void @mul_mat3_m4_fl(ptr noundef nonnull %7, float noundef 5.000000e-01) #8
  store float 5.000000e-01, ptr %61, align 8, !tbaa !46
  store <2 x float> <float 5.000000e-01, float 5.000000e-01>, ptr %60, align 16, !tbaa !46
  call void @mul_m4_m4m4(ptr noundef nonnull %69, ptr noundef nonnull %7, ptr noundef nonnull %6) #8
  %93 = getelementptr inbounds [10 x %struct.Projector], ptr %4, i64 0, i64 %66, i32 2
  store <2 x float> zeroinitializer, ptr %93, align 8, !tbaa !46
  %94 = getelementptr inbounds [10 x %struct.Projector], ptr %4, i64 0, i64 %66, i32 2, i64 2
  store float 1.000000e+00, ptr %94, align 16, !tbaa !46
  %95 = load ptr, ptr %68, align 16, !tbaa !59
  %96 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 47
  call void @mul_mat3_m4_v3(ptr noundef nonnull %96, ptr noundef nonnull %93) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  %97 = add nuw nsw i64 %66, 1
  %98 = icmp eq i64 %97, %62
  br i1 %98, label %99, label %65, !llvm.loop !73

99:                                               ; preds = %91
  %100 = icmp ne i32 %92, 0
  br label %101

101:                                              ; preds = %99, %54
  %102 = phi i1 [ false, %54 ], [ %100, %99 ]
  %103 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %104 = load ptr, ptr %103, align 8, !tbaa !74
  %105 = call i32 %104(ptr noundef %2) #8
  %106 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 26
  %107 = load ptr, ptr %106, align 8, !tbaa !77
  %108 = call i32 %107(ptr noundef %2) #8
  %109 = call ptr @CustomData_duplicate_referenced_layer_named(ptr noundef nonnull %51, i32 noundef 16, ptr noundef nonnull %5, i32 noundef %108) #8
  %110 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 4
  %111 = call ptr @CustomData_duplicate_referenced_layer_named(ptr noundef nonnull %110, i32 noundef 15, ptr noundef nonnull %5, i32 noundef %105) #8
  %112 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %113 = load ptr, ptr %112, align 8, !tbaa !78
  %114 = call i32 %113(ptr noundef %2) #8
  %115 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %116 = sext i32 %114 to i64
  %117 = mul nsw i64 %116, 12
  %118 = call ptr %115(i64 noundef %117, ptr noundef nonnull @.str) #8
  %119 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 77
  %120 = load ptr, ptr %119, align 8, !tbaa !79
  call void %120(ptr noundef %2, ptr noundef %118) #8
  %121 = icmp sgt i32 %114, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %101
  %123 = icmp eq i32 %45, 1
  %124 = getelementptr inbounds %struct.Projector, ptr %4, i64 0, i32 3
  br label %148

125:                                              ; preds = %101
  %126 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  br label %127

127:                                              ; preds = %125, %127
  %128 = phi ptr [ %118, %125 ], [ %131, %127 ]
  %129 = phi i32 [ 0, %125 ], [ %130, %127 ]
  call void @mul_m4_v3(ptr noundef nonnull %126, ptr noundef %128) #8
  %130 = add nuw nsw i32 %129, 1
  %131 = getelementptr inbounds [3 x float], ptr %128, i64 1
  %132 = icmp eq i32 %130, %114
  br i1 %132, label %133, label %127, !llvm.loop !80

133:                                              ; preds = %127
  %134 = icmp eq i32 %45, 1
  %135 = getelementptr inbounds %struct.Projector, ptr %4, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8
  %137 = icmp eq ptr %136, null
  %138 = select i1 %134, i1 %137, i1 false
  %139 = and i1 %138, %121
  br i1 %139, label %140, label %148

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.Projector, ptr %4, i64 0, i32 1
  br label %142

142:                                              ; preds = %140, %142
  %143 = phi ptr [ %118, %140 ], [ %146, %142 ]
  %144 = phi i32 [ 0, %140 ], [ %145, %142 ]
  call void @mul_project_m4_v3(ptr noundef nonnull %141, ptr noundef %143) #8
  %145 = add nuw nsw i32 %144, 1
  %146 = getelementptr inbounds [3 x float], ptr %143, i64 1
  %147 = icmp eq i32 %145, %114
  br i1 %147, label %148, label %142, !llvm.loop !81

148:                                              ; preds = %142, %122, %133
  %149 = phi ptr [ %124, %122 ], [ %135, %133 ], [ %135, %142 ]
  %150 = phi i1 [ %123, %122 ], [ %134, %133 ], [ %134, %142 ]
  %151 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 35
  %152 = load ptr, ptr %151, align 8, !tbaa !82
  %153 = call ptr %152(ptr noundef %2) #8
  %154 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 34
  %155 = load ptr, ptr %154, align 8, !tbaa !83
  %156 = call ptr %155(ptr noundef %2) #8
  %157 = icmp sgt i32 %105, 0
  br i1 %157, label %158, label %266

158:                                              ; preds = %148
  %159 = icmp eq ptr %11, null
  %160 = select i1 %15, i1 true, i1 %159
  %161 = icmp eq ptr %111, null
  %162 = select i1 %160, i1 true, i1 %161
  %163 = getelementptr inbounds %struct.Projector, ptr %4, i64 0, i32 2
  %164 = icmp sgt i32 %45, 1
  %165 = icmp ne ptr %111, null
  %166 = select i1 %15, i1 %165, i1 false
  %167 = zext nneg i32 %45 to i64
  br label %168

168:                                              ; preds = %158, %261
  %169 = phi ptr [ %111, %158 ], [ %264, %261 ]
  %170 = phi i32 [ 0, %158 ], [ %262, %261 ]
  %171 = phi ptr [ %153, %158 ], [ %263, %261 ]
  br i1 %162, label %175, label %172

172:                                              ; preds = %168
  %173 = load ptr, ptr %169, align 8, !tbaa !84
  %174 = icmp eq ptr %173, %11
  br i1 %174, label %175, label %261

175:                                              ; preds = %172, %168
  br i1 %150, label %176, label %206

176:                                              ; preds = %175
  %177 = load ptr, ptr %149, align 8, !tbaa !62
  %178 = icmp eq ptr %177, null
  %179 = getelementptr inbounds %struct.MPoly, ptr %171, i64 0, i32 1
  %180 = load i32, ptr %179, align 4, !tbaa !86
  br i1 %178, label %194, label %181

181:                                              ; preds = %176, %181
  %182 = phi i32 [ %183, %181 ], [ %180, %176 ]
  %183 = add i32 %182, -1
  %184 = load i32, ptr %171, align 4, !tbaa !88
  %185 = add i32 %184, %183
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.MLoop, ptr %156, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !89
  %189 = getelementptr inbounds %struct.MLoopUV, ptr %109, i64 %186
  %190 = zext i32 %188 to i64
  %191 = getelementptr inbounds [3 x float], ptr %118, i64 %190
  %192 = load ptr, ptr %149, align 8, !tbaa !62
  call void @BLI_uvproject_from_camera(ptr noundef %189, ptr noundef %191, ptr noundef %192) #8
  %193 = icmp eq i32 %183, 0
  br i1 %193, label %259, label %181, !llvm.loop !91

194:                                              ; preds = %176, %194
  %195 = phi i32 [ %196, %194 ], [ %180, %176 ]
  %196 = add i32 %195, -1
  %197 = load i32, ptr %171, align 4, !tbaa !88
  %198 = add i32 %197, %196
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.MLoop, ptr %156, i64 %199
  %201 = load i32, ptr %200, align 4, !tbaa !89
  %202 = getelementptr inbounds %struct.MLoopUV, ptr %109, i64 %199
  %203 = zext i32 %201 to i64
  %204 = getelementptr inbounds [3 x float], ptr %118, i64 %203
  call fastcc void @copy_v2_v2(ptr noundef %202, ptr noundef %204) #9
  %205 = icmp eq i32 %196, 0
  br i1 %205, label %259, label %194, !llvm.loop !92

206:                                              ; preds = %175
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %207 = load i32, ptr %171, align 4, !tbaa !88
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.MLoop, ptr %156, i64 %208
  call void @BKE_mesh_calc_poly_normal_coords(ptr noundef nonnull %171, ptr noundef %209, ptr noundef %118, ptr noundef nonnull %9) #8
  br i1 %164, label %210, label %224

210:                                              ; preds = %206
  %211 = call fastcc float @dot_v3v3(ptr noundef nonnull %163, ptr noundef nonnull %9) #9
  br label %212

212:                                              ; preds = %210, %212
  %213 = phi i64 [ 1, %210 ], [ %222, %212 ]
  %214 = phi float [ %211, %210 ], [ %221, %212 ]
  %215 = phi ptr [ %4, %210 ], [ %220, %212 ]
  %216 = getelementptr inbounds [10 x %struct.Projector], ptr %4, i64 0, i64 %213, i32 2
  %217 = call fastcc float @dot_v3v3(ptr noundef nonnull %216, ptr noundef nonnull %9) #9
  %218 = fcmp ogt float %217, %214
  %219 = getelementptr inbounds [10 x %struct.Projector], ptr %4, i64 0, i64 %213
  %220 = select i1 %218, ptr %219, ptr %215
  %221 = select i1 %218, float %217, float %214
  %222 = add nuw nsw i64 %213, 1
  %223 = icmp eq i64 %222, %167
  br i1 %223, label %224, label %212, !llvm.loop !93

224:                                              ; preds = %212, %206
  %225 = phi ptr [ %4, %206 ], [ %220, %212 ]
  %226 = getelementptr inbounds %struct.Projector, ptr %225, i64 0, i32 3
  %227 = load ptr, ptr %226, align 8, !tbaa !62
  %228 = icmp eq ptr %227, null
  %229 = getelementptr inbounds %struct.MPoly, ptr %171, i64 0, i32 1
  %230 = load i32, ptr %229, align 4, !tbaa !86
  br i1 %228, label %244, label %231

231:                                              ; preds = %224, %231
  %232 = phi i32 [ %233, %231 ], [ %230, %224 ]
  %233 = add i32 %232, -1
  %234 = load i32, ptr %171, align 4, !tbaa !88
  %235 = add i32 %234, %233
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds %struct.MLoop, ptr %156, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !89
  %239 = getelementptr inbounds %struct.MLoopUV, ptr %109, i64 %236
  %240 = zext i32 %238 to i64
  %241 = getelementptr inbounds [3 x float], ptr %118, i64 %240
  %242 = load ptr, ptr %226, align 8, !tbaa !62
  call void @BLI_uvproject_from_camera(ptr noundef %239, ptr noundef %241, ptr noundef %242) #8
  %243 = icmp eq i32 %233, 0
  br i1 %243, label %258, label %231, !llvm.loop !94

244:                                              ; preds = %224
  %245 = getelementptr inbounds %struct.Projector, ptr %225, i64 0, i32 1
  br label %246

246:                                              ; preds = %246, %244
  %247 = phi i32 [ %230, %244 ], [ %248, %246 ]
  %248 = add i32 %247, -1
  %249 = load i32, ptr %171, align 4, !tbaa !88
  %250 = add i32 %249, %248
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.MLoop, ptr %156, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !89
  %254 = getelementptr inbounds %struct.MLoopUV, ptr %109, i64 %251
  %255 = zext i32 %253 to i64
  %256 = getelementptr inbounds [3 x float], ptr %118, i64 %255
  call void @mul_v2_project_m4_v3(ptr noundef %254, ptr noundef nonnull %245, ptr noundef %256) #8
  %257 = icmp eq i32 %248, 0
  br i1 %257, label %258, label %246, !llvm.loop !95

258:                                              ; preds = %231, %246
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  br label %259

259:                                              ; preds = %181, %194, %258
  br i1 %166, label %260, label %261

260:                                              ; preds = %259
  store ptr %11, ptr %169, align 8, !tbaa !84
  br label %261

261:                                              ; preds = %172, %259, %260
  %262 = add nuw nsw i32 %170, 1
  %263 = getelementptr inbounds %struct.MPoly, ptr %171, i64 1
  %264 = getelementptr inbounds %struct.MTexPoly, ptr %169, i64 1
  %265 = icmp eq i32 %262, %105
  br i1 %265, label %266, label %168, !llvm.loop !96

266:                                              ; preds = %261, %148
  %267 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %267(ptr noundef %118) #8
  %268 = and i1 %102, %56
  br i1 %268, label %269, label %281

269:                                              ; preds = %266
  %270 = zext nneg i32 %45 to i64
  br label %271

271:                                              ; preds = %269, %278
  %272 = phi i64 [ 0, %269 ], [ %279, %278 ]
  %273 = getelementptr inbounds [10 x %struct.Projector], ptr %4, i64 0, i64 %272, i32 3
  %274 = load ptr, ptr %273, align 8, !tbaa !62
  %275 = icmp eq ptr %274, null
  br i1 %275, label %278, label %276

276:                                              ; preds = %271
  %277 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %277(ptr noundef nonnull %274) #8
  br label %278

278:                                              ; preds = %271, %276
  %279 = add nuw nsw i64 %272, 1
  %280 = icmp eq i64 %279, %270
  br i1 %280, label %281, label %271, !llvm.loop !97

281:                                              ; preds = %278, %266
  %282 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 16
  %283 = load i32, ptr %282, align 8, !tbaa !98
  %284 = or i32 %283, 1
  store i32 %284, ptr %282, align 8, !tbaa !98
  br label %285

285:                                              ; preds = %3, %50, %48, %281
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 960, ptr nonnull %4) #10
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CustomData_validate_layer_name(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_uvproject_camera_info(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_uvproject_camera_info_scale(ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_camera_params_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_camera_params_from_object(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_camera_params_compute_viewplane(ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_camera_params_compute_matrix(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_mat3_m4_fl(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CustomData_duplicate_referenced_layer_named(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_project_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_uvproject_from_camera(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !99 {
  %3 = load float, ptr %1, align 4, !tbaa !46
  store float %3, ptr %0, align 4, !tbaa !46
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !46
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_calc_poly_normal_coords(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !100 {
  %3 = load float, ptr %0, align 4, !tbaa !46
  %4 = load float, ptr %1, align 4, !tbaa !46
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !46
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !46
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare void @mul_v2_project_m4_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"MOD_uvproject.c:copyData"}
!35 = !{!"MOD_uvproject.c:applyModifier"}
!36 = !{!"MOD_uvproject.c:initData"}
!37 = !{!38, !43, i64 200}
!38 = !{!"UVProjectModifierData", !39, i64 0, !41, i64 112, !40, i64 192, !43, i64 200, !43, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !41, i64 224, !43, i64 288, !43, i64 292}
!39 = !{!"ModifierData", !40, i64 0, !40, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !41, i64 32, !40, i64 96, !40, i64 104}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"int", !41, i64 0}
!44 = !{!"float", !41, i64 0}
!45 = !{!38, !43, i64 204}
!46 = !{!44, !44, i64 0}
!47 = !{!"MOD_uvproject.c:requiredDataMask"}
!48 = !{!"MOD_uvproject.c:updateDepgraph"}
!49 = !{!40, !40, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"MOD_uvproject.c:foreachObjectLink"}
!53 = distinct !{!53, !51}
!54 = !{!"MOD_uvproject.c:foreachIDLink"}
!55 = !{!"MOD_uvproject.c:uvprojectModifier_do"}
!56 = !{!38, !40, i64 192}
!57 = !{!38, !44, i64 208}
!58 = !{!38, !44, i64 212}
!59 = !{!60, !40, i64 0}
!60 = !{!"Projector", !40, i64 0, !41, i64 8, !41, i64 72, !40, i64 88}
!61 = distinct !{!61, !51}
!62 = !{!60, !40, i64 88}
!63 = !{!64, !66, i64 136}
!64 = !{!"Object", !65, i64 0, !40, i64 120, !40, i64 128, !66, i64 136, !66, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !41, i64 152, !40, i64 216, !40, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !67, i64 312, !40, i64 360, !68, i64 368, !68, i64 384, !68, i64 400, !68, i64 416, !43, i64 432, !43, i64 436, !40, i64 440, !40, i64 448, !43, i64 456, !43, i64 460, !41, i64 464, !41, i64 476, !41, i64 488, !41, i64 500, !41, i64 512, !41, i64 524, !41, i64 536, !41, i64 548, !41, i64 560, !41, i64 576, !41, i64 592, !41, i64 604, !44, i64 616, !44, i64 620, !41, i64 624, !41, i64 688, !41, i64 752, !41, i64 816, !41, i64 880, !43, i64 944, !66, i64 948, !66, i64 950, !66, i64 952, !66, i64 954, !66, i64 956, !66, i64 958, !66, i64 960, !66, i64 962, !66, i64 964, !41, i64 966, !41, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !66, i64 1036, !66, i64 1038, !66, i64 1040, !41, i64 1042, !41, i64 1043, !66, i64 1044, !41, i64 1046, !41, i64 1047, !44, i64 1048, !44, i64 1052, !68, i64 1056, !68, i64 1072, !68, i64 1088, !68, i64 1104, !44, i64 1120, !66, i64 1124, !66, i64 1126, !41, i64 1128, !43, i64 1144, !43, i64 1148, !40, i64 1152, !41, i64 1160, !41, i64 1161, !66, i64 1162, !41, i64 1164, !68, i64 1176, !68, i64 1192, !68, i64 1208, !68, i64 1224, !40, i64 1240, !40, i64 1248, !40, i64 1256, !41, i64 1264, !41, i64 1265, !66, i64 1266, !44, i64 1268, !40, i64 1272, !40, i64 1280, !40, i64 1288, !40, i64 1296, !69, i64 1304, !69, i64 1312, !43, i64 1320, !43, i64 1324, !68, i64 1328, !68, i64 1344, !40, i64 1360, !40, i64 1368, !40, i64 1376, !41, i64 1384, !40, i64 1392, !68, i64 1400, !40, i64 1416}
!65 = !{!"ID", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !41, i64 32, !66, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !40, i64 112}
!66 = !{!"short", !41, i64 0}
!67 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !66, i64 16, !66, i64 18, !66, i64 20, !66, i64 22, !66, i64 24, !66, i64 26, !66, i64 28, !66, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!68 = !{!"ListBase", !40, i64 0, !40, i64 8}
!69 = !{!"long", !41, i64 0}
!70 = !{!64, !40, i64 296}
!71 = !{!72, !41, i64 128}
!72 = !{!"Camera", !65, i64 0, !40, i64 120, !41, i64 128, !41, i64 129, !66, i64 130, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !40, i64 176, !40, i64 184, !41, i64 192, !41, i64 193}
!73 = distinct !{!73, !51}
!74 = !{!75, !40, i64 1136}
!75 = !{!"DerivedMesh", !76, i64 0, !76, i64 200, !76, i64 400, !76, i64 600, !76, i64 800, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !40, i64 1032, !40, i64 1040, !43, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1060, !40, i64 1064, !41, i64 1072, !40, i64 1080, !40, i64 1088, !40, i64 1096, !40, i64 1104, !40, i64 1112, !40, i64 1120, !40, i64 1128, !40, i64 1136, !40, i64 1144, !40, i64 1152, !40, i64 1160, !40, i64 1168, !40, i64 1176, !40, i64 1184, !40, i64 1192, !40, i64 1200, !40, i64 1208, !40, i64 1216, !40, i64 1224, !40, i64 1232, !40, i64 1240, !40, i64 1248, !40, i64 1256, !40, i64 1264, !40, i64 1272, !40, i64 1280, !40, i64 1288, !40, i64 1296, !40, i64 1304, !40, i64 1312, !40, i64 1320, !40, i64 1328, !40, i64 1336, !40, i64 1344, !40, i64 1352, !40, i64 1360, !40, i64 1368, !40, i64 1376, !40, i64 1384, !40, i64 1392, !40, i64 1400, !40, i64 1408, !40, i64 1416, !40, i64 1424, !40, i64 1432, !40, i64 1440, !40, i64 1448, !40, i64 1456, !40, i64 1464, !40, i64 1472, !40, i64 1480, !40, i64 1488, !40, i64 1496, !40, i64 1504, !40, i64 1512, !40, i64 1520, !40, i64 1528, !40, i64 1536, !40, i64 1544, !40, i64 1552, !40, i64 1560, !40, i64 1568, !40, i64 1576, !40, i64 1584, !40, i64 1592, !40, i64 1600, !40, i64 1608, !40, i64 1616, !40, i64 1624, !40, i64 1632, !40, i64 1640, !40, i64 1648, !40, i64 1656, !40, i64 1664, !40, i64 1672, !40, i64 1680}
!76 = !{!"CustomData", !40, i64 0, !41, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !40, i64 184, !40, i64 192}
!77 = !{!75, !40, i64 1128}
!78 = !{!75, !40, i64 1104}
!79 = !{!75, !40, i64 1536}
!80 = distinct !{!80, !51}
!81 = distinct !{!81, !51}
!82 = !{!75, !40, i64 1200}
!83 = !{!75, !40, i64 1192}
!84 = !{!85, !40, i64 0}
!85 = !{!"MTexPoly", !40, i64 0, !41, i64 8, !41, i64 9, !66, i64 10, !66, i64 12, !66, i64 14}
!86 = !{!87, !43, i64 4}
!87 = !{!"MPoly", !43, i64 0, !43, i64 4, !66, i64 8, !41, i64 10, !41, i64 11}
!88 = !{!87, !43, i64 0}
!89 = !{!90, !43, i64 0}
!90 = !{!"MLoop", !43, i64 0, !43, i64 4}
!91 = distinct !{!91, !51}
!92 = distinct !{!92, !51}
!93 = distinct !{!93, !51}
!94 = distinct !{!94, !51}
!95 = distinct !{!95, !51}
!96 = distinct !{!96, !51}
!97 = distinct !{!97, !51}
!98 = !{!75, !43, i64 1056}
!99 = !{!"MOD_uvproject.c:copy_v2_v2"}
!100 = !{!"MOD_uvproject.c:dot_v3v3"}
