; ModuleID = 'blender/source/blender/modifiers/intern/MOD_uvwarp.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_uvwarp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.UVWarpModifierData = type { %struct.ModifierData, i8, i8, [6 x i8], [2 x float], ptr, [64 x i8], ptr, [64 x i8], [64 x i8], [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoopUV = type { [2 x float], i32 }
%struct.MLoop = type { i32, i32 }
%struct.MDeformVert = type { ptr, i32, i32 }

@modifierType_UVWarp = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"UVWarp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"UVWarpModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 400, i32 5, i32 25, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr @requiredDataMask, ptr null, ptr null, ptr @updateDepgraph, ptr null, ptr null, ptr @foreachObjectLink, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [28 x i8] c"From/To objects must be set\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"UVWarp Modifier\00", align 1

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef returned %2, i32 %3) #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [4 x [4 x float]], align 16
  %16 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #6
  %17 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 2
  %20 = load i8, ptr %19, align 1, !tbaa !41
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 3
  %22 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %21, i32 noundef 16) #6
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %169, label %24

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !43
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef %0, ptr noundef nonnull @.str) #6
  br label %169

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 6
  %35 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 18
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  %37 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %36, ptr noundef nonnull %34) #6
  %38 = icmp eq ptr %37, null
  %39 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 47
  br i1 %38, label %42, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.bPoseChannel, ptr %37, i64 0, i32 29
  call void @mul_m4_m4m4(ptr noundef nonnull %10, ptr noundef nonnull %39, ptr noundef nonnull %41) #6
  br label %43

42:                                               ; preds = %33
  call void @copy_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %39) #6
  br label %43

43:                                               ; preds = %40, %42
  %44 = load ptr, ptr %29, align 8, !tbaa !43
  %45 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 8
  %46 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 18
  %47 = load ptr, ptr %46, align 8, !tbaa !44
  %48 = call ptr @BKE_pose_channel_find_name(ptr noundef %47, ptr noundef nonnull %45) #6
  %49 = icmp eq ptr %48, null
  %50 = getelementptr inbounds %struct.Object, ptr %44, i64 0, i32 47
  br i1 %49, label %53, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.bPoseChannel, ptr %48, i64 0, i32 29
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %50, ptr noundef nonnull %52) #6
  br label %54

53:                                               ; preds = %43
  call void @copy_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %50) #6
  br label %54

54:                                               ; preds = %51, %53
  %55 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %11) #6
  call void @mul_m4_m4m4(ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %10) #6
  %56 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 4
  %57 = load float, ptr %56, align 4, !tbaa !52
  %58 = fcmp oeq float %57, 0.000000e+00
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 4, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !52
  %62 = fcmp une float %61, 0.000000e+00
  br i1 %62, label %63, label %72

63:                                               ; preds = %54, %59
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #6
  call void @unit_m4(ptr noundef nonnull %14) #6
  %64 = load float, ptr %56, align 8, !tbaa !52
  %65 = zext i8 %18 to i64
  %66 = getelementptr inbounds [4 x [4 x float]], ptr %14, i64 0, i64 3, i64 %65
  store float %64, ptr %66, align 4, !tbaa !52
  %67 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 4, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !52
  %69 = zext i8 %20 to i64
  %70 = getelementptr inbounds [4 x [4 x float]], ptr %14, i64 0, i64 3, i64 %69
  store float %68, ptr %70, align 4, !tbaa !52
  %71 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %15, ptr noundef nonnull %14) #6
  call void @mul_m4_m4m4(ptr noundef nonnull %13, ptr noundef nonnull %13, ptr noundef nonnull %15) #6
  call void @mul_m4_m4m4(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #6
  br label %72

72:                                               ; preds = %63, %59
  %73 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 10
  call void @CustomData_validate_layer_name(ptr noundef nonnull %21, i32 noundef 16, ptr noundef nonnull %73, ptr noundef nonnull %9) #6
  %74 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %75 = load ptr, ptr %74, align 8, !tbaa !53
  %76 = call i32 %75(ptr noundef %2) #6
  %77 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 26
  %78 = load ptr, ptr %77, align 8, !tbaa !56
  %79 = call i32 %78(ptr noundef %2) #6
  %80 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 35
  %81 = load ptr, ptr %80, align 8, !tbaa !57
  %82 = call ptr %81(ptr noundef %2) #6
  %83 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 34
  %84 = load ptr, ptr %83, align 8, !tbaa !58
  %85 = call ptr %84(ptr noundef %2) #6
  %86 = call ptr @CustomData_duplicate_referenced_layer_named(ptr noundef nonnull %21, i32 noundef 16, ptr noundef nonnull %9, i32 noundef %79) #6
  %87 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 9
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %87, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  %88 = load ptr, ptr %7, align 8, !tbaa !59
  %89 = icmp eq ptr %88, null
  %90 = icmp sgt i32 %76, 0
  br i1 %89, label %99, label %91

91:                                               ; preds = %72
  br i1 %90, label %92, label %165

92:                                               ; preds = %91
  %93 = zext i8 %18 to i64
  %94 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %93
  %95 = zext i8 %20 to i64
  %96 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %95
  %97 = getelementptr inbounds float, ptr %16, i64 1
  %98 = zext nneg i32 %76 to i64
  br label %106

99:                                               ; preds = %72
  br i1 %90, label %100, label %165

100:                                              ; preds = %99
  %101 = zext i8 %18 to i64
  %102 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %101
  %103 = zext i8 %20 to i64
  %104 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %103
  %105 = zext nneg i32 %76 to i64
  br label %140

106:                                              ; preds = %92, %137
  %107 = phi i64 [ 0, %92 ], [ %138, %137 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #6
  %108 = getelementptr inbounds %struct.MPoly, ptr %82, i64 %107, i32 1
  %109 = load i32, ptr %108, align 4, !tbaa !60
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %137

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.MPoly, ptr %82, i64 %107
  %113 = load i32, ptr %112, align 4, !tbaa !62
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.MLoopUV, ptr %86, i64 %114
  %116 = getelementptr inbounds %struct.MLoop, ptr %85, i64 %114
  br label %117

117:                                              ; preds = %111, %117
  %118 = phi i32 [ %132, %117 ], [ 0, %111 ]
  %119 = phi ptr [ %134, %117 ], [ %115, %111 ]
  %120 = phi ptr [ %133, %117 ], [ %116, %111 ]
  %121 = load ptr, ptr %7, align 8, !tbaa !59
  %122 = load i32, ptr %120, align 4, !tbaa !63
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.MDeformVert, ptr %121, i64 %123
  %125 = load i32, ptr %8, align 4, !tbaa !65
  %126 = call float @defvert_find_weight(ptr noundef %124, i32 noundef %125) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %127 = load float, ptr %119, align 4, !tbaa !52
  store float %127, ptr %94, align 4, !tbaa !52
  %128 = getelementptr inbounds float, ptr %119, i64 1
  %129 = load float, ptr %128, align 4, !tbaa !52
  store float %129, ptr %96, align 4, !tbaa !52
  call void @mul_m4_v3(ptr noundef nonnull %13, ptr noundef nonnull %6) #6
  %130 = load float, ptr %94, align 4, !tbaa !52
  store float %130, ptr %16, align 4, !tbaa !52
  %131 = load float, ptr %96, align 4, !tbaa !52
  store float %131, ptr %97, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @interp_v2_v2v2(ptr noundef nonnull %119, ptr noundef nonnull %119, ptr noundef nonnull %16, float noundef %126) #6
  %132 = add nuw nsw i32 %118, 1
  %133 = getelementptr inbounds %struct.MLoop, ptr %120, i64 1
  %134 = getelementptr inbounds %struct.MLoopUV, ptr %119, i64 1
  %135 = load i32, ptr %108, align 4, !tbaa !60
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %117, label %137, !llvm.loop !66

137:                                              ; preds = %117, %106
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #6
  %138 = add nuw nsw i64 %107, 1
  %139 = icmp eq i64 %138, %98
  br i1 %139, label %165, label %106, !llvm.loop !69

140:                                              ; preds = %100, %162
  %141 = phi i64 [ 0, %100 ], [ %163, %162 ]
  %142 = getelementptr inbounds %struct.MPoly, ptr %82, i64 %141, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !60
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.MPoly, ptr %82, i64 %141
  %147 = load i32, ptr %146, align 4, !tbaa !62
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.MLoopUV, ptr %86, i64 %148
  br label %150

150:                                              ; preds = %145, %150
  %151 = phi i32 [ %158, %150 ], [ 0, %145 ]
  %152 = phi ptr [ %159, %150 ], [ %149, %145 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %153 = load float, ptr %152, align 4, !tbaa !52
  store float %153, ptr %102, align 4, !tbaa !52
  %154 = getelementptr inbounds float, ptr %152, i64 1
  %155 = load float, ptr %154, align 4, !tbaa !52
  store float %155, ptr %104, align 4, !tbaa !52
  call void @mul_m4_v3(ptr noundef nonnull %13, ptr noundef nonnull %5) #6
  %156 = load float, ptr %102, align 4, !tbaa !52
  store float %156, ptr %152, align 4, !tbaa !52
  %157 = load float, ptr %104, align 4, !tbaa !52
  store float %157, ptr %154, align 4, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  %158 = add nuw nsw i32 %151, 1
  %159 = getelementptr inbounds %struct.MLoopUV, ptr %152, i64 1
  %160 = load i32, ptr %142, align 4, !tbaa !60
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %150, label %162, !llvm.loop !70

162:                                              ; preds = %150, %140
  %163 = add nuw nsw i64 %141, 1
  %164 = icmp eq i64 %163, %105
  br i1 %164, label %165, label %140, !llvm.loop !71

165:                                              ; preds = %137, %162, %91, %99
  %166 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 16
  %167 = load i32, ptr %166, align 8, !tbaa !72
  %168 = or i32 %167, 1
  store i32 %168, ptr %166, align 8, !tbaa !72
  br label %169

169:                                              ; preds = %4, %165, %32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #6
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 1
  store i8 0, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 2
  store i8 1, ptr %3, align 1, !tbaa !41
  %4 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 4
  store float 5.000000e-01, ptr %4, align 4, !tbaa !52
  %5 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 4, i64 1
  store float 5.000000e-01, ptr %5, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.UVWarpModifierData, ptr %1, i64 0, i32 9
  %4 = load i8, ptr %3, align 8, !tbaa !73
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 6
  %11 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #6
  %12 = load i8, ptr %10, align 1, !tbaa !73
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i16 8, i16 40
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %11, ptr noundef %4, i16 noundef signext %14, ptr noundef nonnull @.str.1) #6
  br label %15

15:                                               ; preds = %9, %5
  %16 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 8
  %21 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %17) #6
  %22 = load i8, ptr %20, align 1, !tbaa !73
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i16 8, i16 40
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %21, ptr noundef %4, i16 noundef signext %24, ptr noundef nonnull @.str.1) #6
  br label %25

25:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 7
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #6
  %6 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 5
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %6) #6
  ret void
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @modifier_setError(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @unit_m4(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @CustomData_validate_layer_name(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CustomData_duplicate_referenced_layer_named(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @interp_v2_v2v2(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!34 = !{!35, !38, i64 112}
!35 = !{!"UVWarpModifierData", !36, i64 0, !38, i64 112, !38, i64 113, !38, i64 114, !38, i64 120, !37, i64 128, !38, i64 136, !37, i64 200, !38, i64 208, !38, i64 272, !38, i64 336}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!35, !38, i64 113}
!42 = !{!35, !37, i64 128}
!43 = !{!35, !37, i64 200}
!44 = !{!45, !37, i64 288}
!45 = !{!"Object", !46, i64 0, !37, i64 120, !37, i64 128, !47, i64 136, !47, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !48, i64 312, !37, i64 360, !49, i64 368, !49, i64 384, !49, i64 400, !49, i64 416, !40, i64 432, !40, i64 436, !37, i64 440, !37, i64 448, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !50, i64 616, !50, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !40, i64 944, !47, i64 948, !47, i64 950, !47, i64 952, !47, i64 954, !47, i64 956, !47, i64 958, !47, i64 960, !47, i64 962, !47, i64 964, !38, i64 966, !38, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !50, i64 988, !50, i64 992, !50, i64 996, !50, i64 1000, !50, i64 1004, !50, i64 1008, !50, i64 1012, !50, i64 1016, !50, i64 1020, !50, i64 1024, !50, i64 1028, !50, i64 1032, !47, i64 1036, !47, i64 1038, !47, i64 1040, !38, i64 1042, !38, i64 1043, !47, i64 1044, !38, i64 1046, !38, i64 1047, !50, i64 1048, !50, i64 1052, !49, i64 1056, !49, i64 1072, !49, i64 1088, !49, i64 1104, !50, i64 1120, !47, i64 1124, !47, i64 1126, !38, i64 1128, !40, i64 1144, !40, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !47, i64 1162, !38, i64 1164, !49, i64 1176, !49, i64 1192, !49, i64 1208, !49, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !47, i64 1266, !50, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !51, i64 1304, !51, i64 1312, !40, i64 1320, !40, i64 1324, !49, i64 1328, !49, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !49, i64 1400, !37, i64 1416}
!46 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !47, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!47 = !{!"short", !38, i64 0}
!48 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !47, i64 16, !47, i64 18, !47, i64 20, !47, i64 22, !47, i64 24, !47, i64 26, !47, i64 28, !47, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!49 = !{!"ListBase", !37, i64 0, !37, i64 8}
!50 = !{!"float", !38, i64 0}
!51 = !{!"long", !38, i64 0}
!52 = !{!50, !50, i64 0}
!53 = !{!54, !37, i64 1136}
!54 = !{!"DerivedMesh", !55, i64 0, !55, i64 200, !55, i64 400, !55, i64 600, !55, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !50, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!55 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!56 = !{!54, !37, i64 1128}
!57 = !{!54, !37, i64 1200}
!58 = !{!54, !37, i64 1192}
!59 = !{!37, !37, i64 0}
!60 = !{!61, !40, i64 4}
!61 = !{!"MPoly", !40, i64 0, !40, i64 4, !47, i64 8, !38, i64 10, !38, i64 11}
!62 = !{!61, !40, i64 0}
!63 = !{!64, !40, i64 0}
!64 = !{!"MLoop", !40, i64 0, !40, i64 4}
!65 = !{!40, !40, i64 0}
!66 = distinct !{!66, !67, !68}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = distinct !{!69, !67, !68}
!70 = distinct !{!70, !67, !68}
!71 = distinct !{!71, !67, !68}
!72 = !{!54, !40, i64 1056}
!73 = !{!38, !38, i64 0}
