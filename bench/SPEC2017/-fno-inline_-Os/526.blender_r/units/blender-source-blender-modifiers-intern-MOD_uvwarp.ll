; ModuleID = 'blender/source/blender/modifiers/intern/MOD_uvwarp.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_uvwarp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.UVWarpModifierData = type { %struct.ModifierData, i8, i8, [6 x i8], [2 x float], ptr, [64 x i8], ptr, [64 x i8], [64 x i8], [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoopUV = type { [2 x float], i32 }
%struct.MLoop = type { i32, i32 }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }

@modifierType_UVWarp = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"UVWarp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"UVWarpModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 400, i32 5, i32 25, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr @requiredDataMask, ptr null, ptr null, ptr @updateDepgraph, ptr null, ptr null, ptr @foreachObjectLink, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [28 x i8] c"From/To objects must be set\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"UVWarp Modifier\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef returned %2, i32 %3) #0 !PGOFuncName !35 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #7
  %15 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !36
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 2
  %19 = load i8, ptr %18, align 1, !tbaa !43
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 3
  %22 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %21, i32 noundef 16) #6
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %128, label %24

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24
  tail call void (ptr, ptr, ...) @modifier_setError(ptr noundef nonnull %0, ptr noundef nonnull @.str) #6
  br label %128

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 6
  call fastcc void @matrix_from_obj_pchan(ptr noundef nonnull %8, ptr noundef nonnull %26, ptr noundef nonnull %34) #8
  %35 = load ptr, ptr %29, align 8, !tbaa !45
  %36 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 8
  call fastcc void @matrix_from_obj_pchan(ptr noundef nonnull %9, ptr noundef %35, ptr noundef nonnull %36) #8
  %37 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %9) #6
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %8) #6
  %38 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 4
  %39 = call fastcc zeroext i8 @is_zero_v2(ptr noundef nonnull %38) #8, !range !46
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #7
  call void @unit_m4(ptr noundef nonnull %12) #6
  %42 = load float, ptr %38, align 8, !tbaa !47
  %43 = zext i8 %16 to i64
  %44 = getelementptr inbounds [4 x [4 x float]], ptr %12, i64 0, i64 3, i64 %43
  store float %42, ptr %44, align 4, !tbaa !47
  %45 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 4, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !47
  %47 = zext i8 %19 to i64
  %48 = getelementptr inbounds [4 x [4 x float]], ptr %12, i64 0, i64 3, i64 %47
  store float %46, ptr %48, align 4, !tbaa !47
  %49 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %12) #6
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef nonnull %13) #6
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #7
  br label %50

50:                                               ; preds = %41, %33
  %51 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 10
  call void @CustomData_validate_layer_name(ptr noundef nonnull %21, i32 noundef 16, ptr noundef nonnull %51, ptr noundef nonnull %7) #6
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %53 = load ptr, ptr %52, align 8, !tbaa !49
  %54 = call i32 %53(ptr noundef %2) #6
  %55 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 26
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  %57 = call i32 %56(ptr noundef %2) #6
  %58 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 35
  %59 = load ptr, ptr %58, align 8, !tbaa !53
  %60 = call ptr %59(ptr noundef %2) #6
  %61 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 34
  %62 = load ptr, ptr %61, align 8, !tbaa !54
  %63 = call ptr %62(ptr noundef %2) #6
  %64 = call ptr @CustomData_duplicate_referenced_layer_named(ptr noundef nonnull %21, i32 noundef 16, ptr noundef nonnull %7, i32 noundef %57) #6
  %65 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 9
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %65, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %66 = load ptr, ptr %5, align 8, !tbaa !55
  %67 = icmp eq ptr %66, null
  %68 = icmp sgt i32 %54, 0
  br i1 %67, label %72, label %69

69:                                               ; preds = %50
  br i1 %68, label %70, label %124

70:                                               ; preds = %69
  %71 = zext nneg i32 %54 to i64
  br label %75

72:                                               ; preds = %50
  br i1 %68, label %73, label %124

73:                                               ; preds = %72
  %74 = zext nneg i32 %54 to i64
  br label %104

75:                                               ; preds = %70, %101
  %76 = phi i64 [ 0, %70 ], [ %102, %101 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #7
  %77 = getelementptr inbounds %struct.MPoly, ptr %60, i64 %76, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !56
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.MPoly, ptr %60, i64 %76
  %82 = load i32, ptr %81, align 4, !tbaa !59
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.MLoopUV, ptr %64, i64 %83
  %85 = getelementptr inbounds %struct.MLoop, ptr %63, i64 %83
  br label %86

86:                                               ; preds = %80, %86
  %87 = phi i32 [ %96, %86 ], [ 0, %80 ]
  %88 = phi ptr [ %98, %86 ], [ %84, %80 ]
  %89 = phi ptr [ %97, %86 ], [ %85, %80 ]
  %90 = load ptr, ptr %5, align 8, !tbaa !55
  %91 = load i32, ptr %89, align 4, !tbaa !60
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.MDeformVert, ptr %90, i64 %92
  %94 = load i32, ptr %6, align 4, !tbaa !62
  %95 = call float @defvert_find_weight(ptr noundef %93, i32 noundef %94) #6
  call fastcc void @uv_warp_from_mat4_pair(ptr noundef nonnull %14, ptr noundef %88, ptr noundef nonnull %11, i32 noundef %17, i32 noundef %20) #8
  call void @interp_v2_v2v2(ptr noundef %88, ptr noundef %88, ptr noundef nonnull %14, float noundef %95) #6
  %96 = add nuw nsw i32 %87, 1
  %97 = getelementptr inbounds %struct.MLoop, ptr %89, i64 1
  %98 = getelementptr inbounds %struct.MLoopUV, ptr %88, i64 1
  %99 = load i32, ptr %77, align 4, !tbaa !56
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %86, label %101, !llvm.loop !63

101:                                              ; preds = %86, %75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #7
  %102 = add nuw nsw i64 %76, 1
  %103 = icmp eq i64 %102, %71
  br i1 %103, label %124, label %75, !llvm.loop !65

104:                                              ; preds = %73, %121
  %105 = phi i64 [ 0, %73 ], [ %122, %121 ]
  %106 = getelementptr inbounds %struct.MPoly, ptr %60, i64 %105, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !56
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.MPoly, ptr %60, i64 %105
  %111 = load i32, ptr %110, align 4, !tbaa !59
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.MLoopUV, ptr %64, i64 %112
  br label %114

114:                                              ; preds = %109, %114
  %115 = phi i32 [ %117, %114 ], [ 0, %109 ]
  %116 = phi ptr [ %118, %114 ], [ %113, %109 ]
  call fastcc void @uv_warp_from_mat4_pair(ptr noundef %116, ptr noundef %116, ptr noundef nonnull %11, i32 noundef %17, i32 noundef %20) #8
  %117 = add nuw nsw i32 %115, 1
  %118 = getelementptr inbounds %struct.MLoopUV, ptr %116, i64 1
  %119 = load i32, ptr %106, align 4, !tbaa !56
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %114, label %121, !llvm.loop !66

121:                                              ; preds = %114, %104
  %122 = add nuw nsw i64 %105, 1
  %123 = icmp eq i64 %122, %74
  br i1 %123, label %124, label %104, !llvm.loop !67

124:                                              ; preds = %101, %121, %69, %72
  %125 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 16
  %126 = load i32, ptr %125, align 8, !tbaa !68
  %127 = or i32 %126, 1
  store i32 %127, ptr %125, align 8, !tbaa !68
  br label %128

128:                                              ; preds = %4, %124, %32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !69 {
  %2 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 1
  store i8 0, ptr %2, align 8, !tbaa !36
  %3 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 2
  store i8 1, ptr %3, align 1, !tbaa !43
  %4 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 4
  tail call fastcc void @copy_v2_fl(ptr noundef nonnull %4) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !70 {
  %3 = getelementptr inbounds %struct.UVWarpModifierData, ptr %1, i64 0, i32 9
  %4 = load i8, ptr %3, align 8, !tbaa !71
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !72 {
  %6 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 6
  tail call fastcc void @uv_warp_deps_object_bone(ptr noundef %1, ptr noundef %4, ptr noundef %7, ptr noundef nonnull %8) #8
  %9 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 8
  tail call fastcc void @uv_warp_deps_object_bone(ptr noundef %1, ptr noundef %4, ptr noundef %10, ptr noundef nonnull %11) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !73 {
  %5 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 7
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #6
  %6 = getelementptr inbounds %struct.UVWarpModifierData, ptr %0, i64 0, i32 5
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %6) #6
  ret void
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @modifier_setError(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @matrix_from_obj_pchan(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !74 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %5, ptr noundef %2) #6
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  br i1 %7, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %6, i64 0, i32 29
  tail call void @mul_m4_m4m4(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %10) #6
  br label %12

11:                                               ; preds = %3
  tail call void @copy_m4_m4(ptr noundef %0, ptr noundef nonnull %8) #6
  br label %12

12:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v2(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !81 {
  %2 = load float, ptr %0, align 4, !tbaa !47
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !47
  %7 = fcmp oeq float %6, 0.000000e+00
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @CustomData_validate_layer_name(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CustomData_duplicate_referenced_layer_named(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_warp_from_mat4_pair(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !82 {
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %7 = load float, ptr %1, align 4, !tbaa !47
  %8 = zext nneg i32 %3 to i64
  %9 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %8
  store float %7, ptr %9, align 4, !tbaa !47
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !47
  %12 = zext nneg i32 %4 to i64
  %13 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 %12
  store float %11, ptr %13, align 4, !tbaa !47
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %6) #6
  %14 = load float, ptr %9, align 4, !tbaa !47
  store float %14, ptr %0, align 4, !tbaa !47
  %15 = load float, ptr %13, align 4, !tbaa !47
  %16 = getelementptr inbounds float, ptr %0, i64 1
  store float %15, ptr %16, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  ret void
}

; Function Attrs: optsize
declare void @interp_v2_v2v2(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v2_fl(ptr nocapture noundef writeonly %0) unnamed_addr #1 !PGOFuncName !83 {
  store <2 x float> <float 5.000000e-01, float 5.000000e-01>, ptr %0, align 4, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @uv_warp_deps_object_bone(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !84 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @dag_get_node(ptr noundef %0, ptr noundef nonnull %2) #6
  %8 = load i8, ptr %3, align 1, !tbaa !71
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i16 8, i16 40
  tail call void @dag_add_relation(ptr noundef %0, ptr noundef %7, ptr noundef %1, i16 noundef signext %10, ptr noundef nonnull @.str.1) #6
  br label %11

11:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }
attributes #8 = { optsize }

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
!34 = !{!"MOD_uvwarp.c:copyData"}
!35 = !{!"MOD_uvwarp.c:applyModifier"}
!36 = !{!37, !40, i64 112}
!37 = !{!"UVWarpModifierData", !38, i64 0, !40, i64 112, !40, i64 113, !40, i64 114, !40, i64 120, !39, i64 128, !40, i64 136, !39, i64 200, !40, i64 208, !40, i64 272, !40, i64 336}
!38 = !{!"ModifierData", !39, i64 0, !39, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !40, i64 32, !39, i64 96, !39, i64 104}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"int", !40, i64 0}
!43 = !{!37, !40, i64 113}
!44 = !{!37, !39, i64 128}
!45 = !{!37, !39, i64 200}
!46 = !{i8 0, i8 2}
!47 = !{!48, !48, i64 0}
!48 = !{!"float", !40, i64 0}
!49 = !{!50, !39, i64 1136}
!50 = !{!"DerivedMesh", !51, i64 0, !51, i64 200, !51, i64 400, !51, i64 600, !51, i64 800, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !39, i64 1032, !39, i64 1040, !42, i64 1048, !48, i64 1052, !42, i64 1056, !42, i64 1060, !39, i64 1064, !40, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !39, i64 1176, !39, i64 1184, !39, i64 1192, !39, i64 1200, !39, i64 1208, !39, i64 1216, !39, i64 1224, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !39, i64 1496, !39, i64 1504, !39, i64 1512, !39, i64 1520, !39, i64 1528, !39, i64 1536, !39, i64 1544, !39, i64 1552, !39, i64 1560, !39, i64 1568, !39, i64 1576, !39, i64 1584, !39, i64 1592, !39, i64 1600, !39, i64 1608, !39, i64 1616, !39, i64 1624, !39, i64 1632, !39, i64 1640, !39, i64 1648, !39, i64 1656, !39, i64 1664, !39, i64 1672, !39, i64 1680}
!51 = !{!"CustomData", !39, i64 0, !40, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !39, i64 184, !39, i64 192}
!52 = !{!50, !39, i64 1128}
!53 = !{!50, !39, i64 1200}
!54 = !{!50, !39, i64 1192}
!55 = !{!39, !39, i64 0}
!56 = !{!57, !42, i64 4}
!57 = !{!"MPoly", !42, i64 0, !42, i64 4, !58, i64 8, !40, i64 10, !40, i64 11}
!58 = !{!"short", !40, i64 0}
!59 = !{!57, !42, i64 0}
!60 = !{!61, !42, i64 0}
!61 = !{!"MLoop", !42, i64 0, !42, i64 4}
!62 = !{!42, !42, i64 0}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = distinct !{!65, !64}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !64}
!68 = !{!50, !42, i64 1056}
!69 = !{!"MOD_uvwarp.c:initData"}
!70 = !{!"MOD_uvwarp.c:requiredDataMask"}
!71 = !{!40, !40, i64 0}
!72 = !{!"MOD_uvwarp.c:updateDepgraph"}
!73 = !{!"MOD_uvwarp.c:foreachObjectLink"}
!74 = !{!"MOD_uvwarp.c:matrix_from_obj_pchan"}
!75 = !{!76, !39, i64 288}
!76 = !{!"Object", !77, i64 0, !39, i64 120, !39, i64 128, !58, i64 136, !58, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !40, i64 152, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !39, i64 304, !78, i64 312, !39, i64 360, !79, i64 368, !79, i64 384, !79, i64 400, !79, i64 416, !42, i64 432, !42, i64 436, !39, i64 440, !39, i64 448, !42, i64 456, !42, i64 460, !40, i64 464, !40, i64 476, !40, i64 488, !40, i64 500, !40, i64 512, !40, i64 524, !40, i64 536, !40, i64 548, !40, i64 560, !40, i64 576, !40, i64 592, !40, i64 604, !48, i64 616, !48, i64 620, !40, i64 624, !40, i64 688, !40, i64 752, !40, i64 816, !40, i64 880, !42, i64 944, !58, i64 948, !58, i64 950, !58, i64 952, !58, i64 954, !58, i64 956, !58, i64 958, !58, i64 960, !58, i64 962, !58, i64 964, !40, i64 966, !40, i64 967, !42, i64 968, !42, i64 972, !42, i64 976, !42, i64 980, !42, i64 984, !48, i64 988, !48, i64 992, !48, i64 996, !48, i64 1000, !48, i64 1004, !48, i64 1008, !48, i64 1012, !48, i64 1016, !48, i64 1020, !48, i64 1024, !48, i64 1028, !48, i64 1032, !58, i64 1036, !58, i64 1038, !58, i64 1040, !40, i64 1042, !40, i64 1043, !58, i64 1044, !40, i64 1046, !40, i64 1047, !48, i64 1048, !48, i64 1052, !79, i64 1056, !79, i64 1072, !79, i64 1088, !79, i64 1104, !48, i64 1120, !58, i64 1124, !58, i64 1126, !40, i64 1128, !42, i64 1144, !42, i64 1148, !39, i64 1152, !40, i64 1160, !40, i64 1161, !58, i64 1162, !40, i64 1164, !79, i64 1176, !79, i64 1192, !79, i64 1208, !79, i64 1224, !39, i64 1240, !39, i64 1248, !39, i64 1256, !40, i64 1264, !40, i64 1265, !58, i64 1266, !48, i64 1268, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !80, i64 1304, !80, i64 1312, !42, i64 1320, !42, i64 1324, !79, i64 1328, !79, i64 1344, !39, i64 1360, !39, i64 1368, !39, i64 1376, !40, i64 1384, !39, i64 1392, !79, i64 1400, !39, i64 1416}
!77 = !{!"ID", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !40, i64 32, !58, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !39, i64 112}
!78 = !{!"bAnimVizSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !58, i64 16, !58, i64 18, !58, i64 20, !58, i64 22, !58, i64 24, !58, i64 26, !58, i64 28, !58, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!79 = !{!"ListBase", !39, i64 0, !39, i64 8}
!80 = !{!"long", !40, i64 0}
!81 = !{!"MOD_uvwarp.c:is_zero_v2"}
!82 = !{!"MOD_uvwarp.c:uv_warp_from_mat4_pair"}
!83 = !{!"MOD_uvwarp.c:copy_v2_fl"}
!84 = !{!"MOD_uvwarp.c:uv_warp_deps_object_bone"}
