; ModuleID = 'blender/source/blender/modifiers/intern/MOD_mirror.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MirrorModifierData = type { %struct.ModifierData, i16, i16, float, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.MLoopUV = type { [2 x float], i32 }
%struct.MDeformVert = type { ptr, i32, i32 }

@modifierType_Mirror = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Mirror\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MirrorModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 128, i32 2, i32 543, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr null, ptr null, ptr null, ptr @updateDepgraph, ptr null, ptr null, ptr @foreachObjectLink, ptr null, ptr null }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"MOD_mirror tarmap\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Mirror Modifier\00", align 1

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @applyModifier(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 %3) #0 {
  %5 = getelementptr inbounds %struct.MirrorModifierData, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !34
  %7 = and i16 %6, 8
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @doMirrorOnAxis(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %2, %4 ]
  %13 = load i16, ptr %5, align 2, !tbaa !34
  %14 = and i16 %13, 16
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @doMirrorOnAxis(ptr noundef %0, ptr noundef %1, ptr noundef %12, i32 noundef 1)
  %18 = icmp eq ptr %12, %2
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %12, i64 0, i32 95
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  tail call void %21(ptr noundef %12) #5
  br label %22

22:                                               ; preds = %19, %16, %11
  %23 = phi ptr [ %12, %11 ], [ %17, %19 ], [ %17, %16 ]
  %24 = load i16, ptr %5, align 2, !tbaa !34
  %25 = and i16 %24, 32
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = tail call fastcc ptr @doMirrorOnAxis(ptr noundef %0, ptr noundef %1, ptr noundef %23, i32 noundef 2)
  %29 = icmp eq ptr %23, %2
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 95
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  tail call void %32(ptr noundef %23) #5
  br label %33

33:                                               ; preds = %22, %27, %30
  %34 = phi ptr [ %23, %22 ], [ %28, %30 ], [ %28, %27 ]
  %35 = icmp eq ptr %34, %2
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 16
  %38 = load i32, ptr %37, align 8, !tbaa !46
  %39 = or i32 %38, 4
  store i32 %39, ptr %37, align 8, !tbaa !46
  br label %40

40:                                               ; preds = %36, %33
  ret ptr %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @initData(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.MirrorModifierData, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 2, !tbaa !34
  %4 = or i16 %3, 72
  store i16 %4, ptr %2, align 2, !tbaa !34
  %5 = getelementptr inbounds %struct.MirrorModifierData, ptr %0, i64 0, i32 3
  store float 0x3F50624DE0000000, ptr %5, align 4, !tbaa !47
  %6 = getelementptr inbounds %struct.MirrorModifierData, ptr %0, i64 0, i32 4
  store ptr null, ptr %6, align 8, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.MirrorModifierData, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #5
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #5
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.MirrorModifierData, ptr %0, i64 0, i32 4
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #5
  ret void
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @doMirrorOnAxis(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.MirrorModifierData, ptr %0, i64 0, i32 3
  %10 = load float, ptr %9, align 4, !tbaa !47
  %11 = fmul float %10, %10
  %12 = getelementptr inbounds %struct.MirrorModifierData, ptr %0, i64 0, i32 2
  %13 = load i16, ptr %12, align 2, !tbaa !34
  %14 = and i16 %13, 128
  %15 = icmp eq i16 %14, 0
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = tail call i32 %17(ptr noundef %2) #5
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 24
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = tail call i32 %20(ptr noundef %2) #5
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 26
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = tail call i32 %23(ptr noundef %2) #5
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  %27 = tail call i32 %26(ptr noundef %2) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #5
  call void @unit_m4(ptr noundef nonnull %5) #5
  %28 = zext nneg i32 %3 to i64
  %29 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %28, i64 %28
  store float -1.000000e+00, ptr %29, align 4, !tbaa !53
  %30 = getelementptr inbounds %struct.MirrorModifierData, ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #5
  %34 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 47
  %35 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %34) #5
  %36 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %36) #5
  %37 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %6) #5
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %6) #5
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #5
  br label %38

38:                                               ; preds = %33, %4
  %39 = shl nsw i32 %18, 1
  %40 = shl nsw i32 %21, 1
  %41 = shl nsw i32 %24, 1
  %42 = shl nsw i32 %27, 1
  %43 = call ptr @CDDM_from_template(ptr noundef %2, i32 noundef %39, i32 noundef %40, i32 noundef 0, i32 noundef %41, i32 noundef %42) #5
  call void @DM_copy_vert_data(ptr noundef %2, ptr noundef %43, i32 noundef 0, i32 noundef 0, i32 noundef %18) #5
  call void @DM_copy_edge_data(ptr noundef %2, ptr noundef %43, i32 noundef 0, i32 noundef 0, i32 noundef %21) #5
  call void @DM_copy_loop_data(ptr noundef %2, ptr noundef %43, i32 noundef 0, i32 noundef 0, i32 noundef %24) #5
  call void @DM_copy_poly_data(ptr noundef %2, ptr noundef %43, i32 noundef 0, i32 noundef 0, i32 noundef %27) #5
  %44 = call zeroext i8 @CustomData_has_layer(ptr noundef %2, i32 noundef 0) #5
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 36
  %48 = load ptr, ptr %47, align 8, !tbaa !54
  %49 = call ptr @CDDM_get_verts(ptr noundef %43) #5
  call void %48(ptr noundef %2, ptr noundef %49) #5
  br label %50

50:                                               ; preds = %46, %38
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 1
  %52 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %51, i32 noundef 3) #5
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 37
  %56 = load ptr, ptr %55, align 8, !tbaa !55
  %57 = call ptr @CDDM_get_edges(ptr noundef %43) #5
  call void %56(ptr noundef %2, ptr noundef %57) #5
  br label %58

58:                                               ; preds = %54, %50
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 4
  %60 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %59, i32 noundef 25) #5
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 39
  %64 = load ptr, ptr %63, align 8, !tbaa !56
  %65 = call ptr @CDDM_get_loops(ptr noundef %43) #5
  call void %64(ptr noundef %2, ptr noundef %65) #5
  %66 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 40
  %67 = load ptr, ptr %66, align 8, !tbaa !57
  %68 = call ptr @CDDM_get_polys(ptr noundef %43) #5
  call void %67(ptr noundef %2, ptr noundef %68) #5
  br label %69

69:                                               ; preds = %62, %58
  call void @DM_copy_vert_data(ptr noundef %43, ptr noundef %43, i32 noundef 0, i32 noundef %18, i32 noundef %18) #5
  call void @DM_copy_edge_data(ptr noundef %43, ptr noundef %43, i32 noundef 0, i32 noundef %21, i32 noundef %21) #5
  call void @DM_copy_poly_data(ptr noundef %43, ptr noundef %43, i32 noundef 0, i32 noundef %27, i32 noundef %27) #5
  br i1 %15, label %70, label %76

70:                                               ; preds = %69
  %71 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %72 = sext i32 %18 to i64
  %73 = shl nsw i64 %72, 3
  %74 = call ptr %71(i64 noundef %73, ptr noundef nonnull @.str) #5
  %75 = getelementptr inbounds i32, ptr %74, i64 %72
  br label %76

76:                                               ; preds = %70, %69
  %77 = phi ptr [ %74, %70 ], [ null, %69 ]
  %78 = phi ptr [ %75, %70 ], [ null, %69 ]
  %79 = call ptr @CDDM_get_verts(ptr noundef %43) #5
  %80 = sext i32 %18 to i64
  %81 = icmp sgt i32 %18, 0
  br i1 %81, label %82, label %128

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.MVert, ptr %79, i64 %80
  br label %84

84:                                               ; preds = %82, %120
  %85 = phi i32 [ %123, %120 ], [ 0, %82 ]
  %86 = phi ptr [ %125, %120 ], [ %83, %82 ]
  %87 = phi ptr [ %126, %120 ], [ %79, %82 ]
  %88 = phi ptr [ %122, %120 ], [ %78, %82 ]
  %89 = phi ptr [ %121, %120 ], [ %77, %82 ]
  %90 = phi i32 [ %124, %120 ], [ 0, %82 ]
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef %86) #5
  br i1 %15, label %91, label %120

91:                                               ; preds = %84
  %92 = load float, ptr %86, align 4, !tbaa !53
  %93 = load float, ptr %87, align 4, !tbaa !53
  %94 = fsub float %92, %93
  %95 = getelementptr inbounds float, ptr %86, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !53
  %97 = getelementptr inbounds float, ptr %87, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !53
  %99 = fsub float %96, %98
  %100 = getelementptr inbounds float, ptr %86, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !53
  %102 = getelementptr inbounds float, ptr %87, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !53
  %104 = fsub float %101, %103
  %105 = fmul float %99, %99
  %106 = call float @llvm.fmuladd.f32(float %94, float %94, float %105)
  %107 = call float @llvm.fmuladd.f32(float %104, float %104, float %106)
  %108 = fcmp olt float %107, %11
  br i1 %108, label %109, label %115

109:                                              ; preds = %91
  %110 = add nuw nsw i32 %90, %18
  store i32 %110, ptr %89, align 4, !tbaa !59
  %111 = add nsw i32 %85, 1
  call void @mid_v3_v3v3(ptr noundef nonnull %86, ptr noundef nonnull %87, ptr noundef nonnull %86) #5
  %112 = load float, ptr %86, align 4, !tbaa !53
  store float %112, ptr %87, align 4, !tbaa !53
  %113 = load float, ptr %95, align 4, !tbaa !53
  store float %113, ptr %97, align 4, !tbaa !53
  %114 = load float, ptr %100, align 4, !tbaa !53
  store float %114, ptr %102, align 4, !tbaa !53
  br label %116

115:                                              ; preds = %91
  store i32 -1, ptr %89, align 4, !tbaa !59
  br label %116

116:                                              ; preds = %115, %109
  %117 = phi i32 [ %111, %109 ], [ %85, %115 ]
  store i32 -1, ptr %88, align 4, !tbaa !59
  %118 = getelementptr inbounds i32, ptr %89, i64 1
  %119 = getelementptr inbounds i32, ptr %88, i64 1
  br label %120

120:                                              ; preds = %84, %116
  %121 = phi ptr [ %118, %116 ], [ %89, %84 ]
  %122 = phi ptr [ %119, %116 ], [ %88, %84 ]
  %123 = phi i32 [ %117, %116 ], [ %85, %84 ]
  %124 = add nuw nsw i32 %90, 1
  %125 = getelementptr inbounds %struct.MVert, ptr %86, i64 1
  %126 = getelementptr inbounds %struct.MVert, ptr %87, i64 1
  %127 = icmp eq i32 %124, %18
  br i1 %127, label %128, label %84, !llvm.loop !60

128:                                              ; preds = %120, %76
  %129 = phi i32 [ 0, %76 ], [ %123, %120 ]
  %130 = call i32 @CustomData_number_of_layers(ptr noundef %43, i32 noundef 28) #5
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.DerivedMesh, ptr %43, i64 0, i32 5
  br label %134

134:                                              ; preds = %132, %146
  %135 = phi i32 [ 0, %132 ], [ %147, %146 ]
  %136 = call ptr @CustomData_get_layer_n(ptr noundef %43, i32 noundef 28, i32 noundef %135) #5
  %137 = load i32, ptr %133, align 8, !tbaa !63
  %138 = icmp slt i32 %18, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %134, %139
  %140 = phi i64 [ %142, %139 ], [ %80, %134 ]
  %141 = getelementptr inbounds [3 x float], ptr %136, i64 %140
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef %141) #5
  %142 = add nsw i64 %140, 1
  %143 = load i32, ptr %133, align 8, !tbaa !63
  %144 = sext i32 %143 to i64
  %145 = icmp slt i64 %142, %144
  br i1 %145, label %139, label %146, !llvm.loop !64

146:                                              ; preds = %139, %134
  %147 = add nuw nsw i32 %135, 1
  %148 = icmp eq i32 %147, %130
  br i1 %148, label %149, label %134, !llvm.loop !65

149:                                              ; preds = %146, %128
  %150 = call ptr @CDDM_get_edges(ptr noundef %43) #5
  %151 = icmp sgt i32 %21, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %149
  %153 = zext nneg i32 %21 to i64
  %154 = getelementptr inbounds %struct.MEdge, ptr %150, i64 %153
  br label %155

155:                                              ; preds = %152, %155
  %156 = phi ptr [ %164, %155 ], [ %154, %152 ]
  %157 = phi i32 [ %163, %155 ], [ 0, %152 ]
  %158 = load i32, ptr %156, align 4, !tbaa !66
  %159 = add i32 %158, %18
  store i32 %159, ptr %156, align 4, !tbaa !66
  %160 = getelementptr inbounds %struct.MEdge, ptr %156, i64 0, i32 1
  %161 = load i32, ptr %160, align 4, !tbaa !68
  %162 = add i32 %161, %18
  store i32 %162, ptr %160, align 4, !tbaa !68
  %163 = add nuw nsw i32 %157, 1
  %164 = getelementptr inbounds %struct.MEdge, ptr %156, i64 1
  %165 = icmp eq i32 %163, %21
  br i1 %165, label %166, label %155, !llvm.loop !69

166:                                              ; preds = %155, %149
  %167 = call ptr @CDDM_get_polys(ptr noundef %43) #5
  %168 = call ptr @CDDM_get_loops(ptr noundef %43) #5
  %169 = icmp sgt i32 %27, 0
  br i1 %169, label %170, label %219

170:                                              ; preds = %166
  %171 = zext nneg i32 %27 to i64
  %172 = getelementptr inbounds %struct.MPoly, ptr %167, i64 %171
  %173 = sext i32 %24 to i64
  br label %174

174:                                              ; preds = %170, %212
  %175 = phi ptr [ %172, %170 ], [ %217, %212 ]
  %176 = phi i32 [ 0, %170 ], [ %216, %212 ]
  %177 = load i32, ptr %175, align 4, !tbaa !70
  %178 = add nsw i32 %177, %24
  call void @DM_copy_loop_data(ptr noundef %43, ptr noundef %43, i32 noundef %177, i32 noundef %178, i32 noundef 1) #5
  %179 = getelementptr inbounds %struct.MPoly, ptr %175, i64 0, i32 1
  %180 = load i32, ptr %179, align 4, !tbaa !72
  %181 = icmp sgt i32 %180, 1
  br i1 %181, label %182, label %193

182:                                              ; preds = %174, %182
  %183 = phi i32 [ %191, %182 ], [ %180, %174 ]
  %184 = phi i32 [ %190, %182 ], [ 1, %174 ]
  %185 = load i32, ptr %175, align 4, !tbaa !70
  %186 = add nsw i32 %185, %184
  %187 = sub i32 %24, %184
  %188 = add i32 %187, %183
  %189 = add i32 %188, %185
  call void @DM_copy_loop_data(ptr noundef %43, ptr noundef %43, i32 noundef %186, i32 noundef %189, i32 noundef 1) #5
  %190 = add nuw nsw i32 %184, 1
  %191 = load i32, ptr %179, align 4, !tbaa !72
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %182, label %193, !llvm.loop !73

193:                                              ; preds = %182, %174
  %194 = phi i32 [ %180, %174 ], [ %191, %182 ]
  %195 = load i32, ptr %175, align 4, !tbaa !70
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.MLoop, ptr %168, i64 %196
  %198 = getelementptr inbounds %struct.MLoop, ptr %197, i64 %173
  %199 = getelementptr inbounds %struct.MLoop, ptr %197, i64 %173, i32 1
  %200 = load i32, ptr %199, align 4, !tbaa !74
  %201 = add i32 %194, -1
  %202 = icmp sgt i32 %194, 1
  br i1 %202, label %203, label %212

203:                                              ; preds = %193
  %204 = zext i32 %201 to i64
  br label %205

205:                                              ; preds = %203, %205
  %206 = phi i64 [ 0, %203 ], [ %207, %205 ]
  %207 = add nuw nsw i64 %206, 1
  %208 = getelementptr inbounds %struct.MLoop, ptr %198, i64 %207, i32 1
  %209 = load i32, ptr %208, align 4, !tbaa !74
  %210 = getelementptr inbounds %struct.MLoop, ptr %198, i64 %206, i32 1
  store i32 %209, ptr %210, align 4, !tbaa !74
  %211 = icmp eq i64 %207, %204
  br i1 %211, label %212, label %205, !llvm.loop !76

212:                                              ; preds = %205, %193
  %213 = sext i32 %201 to i64
  %214 = getelementptr inbounds %struct.MLoop, ptr %198, i64 %213, i32 1
  store i32 %200, ptr %214, align 4, !tbaa !74
  %215 = add nsw i32 %195, %24
  store i32 %215, ptr %175, align 4, !tbaa !70
  %216 = add nuw nsw i32 %176, 1
  %217 = getelementptr inbounds %struct.MPoly, ptr %175, i64 1
  %218 = icmp eq i32 %216, %27
  br i1 %218, label %219, label %174, !llvm.loop !77

219:                                              ; preds = %212, %166
  %220 = call ptr @CDDM_get_loops(ptr noundef %43) #5
  %221 = sext i32 %24 to i64
  %222 = icmp sgt i32 %24, 0
  br i1 %222, label %223, label %236

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.MLoop, ptr %220, i64 %221
  br label %225

225:                                              ; preds = %223, %225
  %226 = phi ptr [ %234, %225 ], [ %224, %223 ]
  %227 = phi i32 [ %233, %225 ], [ 0, %223 ]
  %228 = load i32, ptr %226, align 4, !tbaa !78
  %229 = add i32 %228, %18
  store i32 %229, ptr %226, align 4, !tbaa !78
  %230 = getelementptr inbounds %struct.MLoop, ptr %226, i64 0, i32 1
  %231 = load i32, ptr %230, align 4, !tbaa !74
  %232 = add i32 %231, %21
  store i32 %232, ptr %230, align 4, !tbaa !74
  %233 = add nuw nsw i32 %227, 1
  %234 = getelementptr inbounds %struct.MLoop, ptr %226, i64 1
  %235 = icmp eq i32 %233, %24
  br i1 %235, label %236, label %225, !llvm.loop !79

236:                                              ; preds = %225, %219
  %237 = load i16, ptr %12, align 2, !tbaa !34
  %238 = and i16 %237, 6
  %239 = icmp eq i16 %238, 0
  br i1 %239, label %273, label %240

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.DerivedMesh, ptr %43, i64 0, i32 3
  %242 = call i32 @CustomData_number_of_layers(ptr noundef nonnull %241, i32 noundef 16) #5
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %273

244:                                              ; preds = %240
  %245 = icmp sgt i32 %24, 0
  %246 = and i16 %237, 2
  %247 = icmp eq i16 %246, 0
  %248 = and i16 %237, 4
  %249 = icmp eq i16 %248, 0
  br label %250

250:                                              ; preds = %244, %270
  %251 = phi i32 [ 0, %244 ], [ %271, %270 ]
  %252 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %241, i32 noundef 16, i32 noundef %251) #5
  br i1 %245, label %253, label %270

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.MLoopUV, ptr %252, i64 %221
  br label %255

255:                                              ; preds = %253, %267
  %256 = phi i32 [ %258, %267 ], [ %24, %253 ]
  %257 = phi ptr [ %268, %267 ], [ %254, %253 ]
  %258 = add nsw i32 %256, -1
  br i1 %247, label %262, label %259

259:                                              ; preds = %255
  %260 = load float, ptr %257, align 4, !tbaa !53
  %261 = fsub float 1.000000e+00, %260
  store float %261, ptr %257, align 4, !tbaa !53
  br label %262

262:                                              ; preds = %259, %255
  br i1 %249, label %267, label %263

263:                                              ; preds = %262
  %264 = getelementptr inbounds [2 x float], ptr %257, i64 0, i64 1
  %265 = load float, ptr %264, align 4, !tbaa !53
  %266 = fsub float 1.000000e+00, %265
  store float %266, ptr %264, align 4, !tbaa !53
  br label %267

267:                                              ; preds = %262, %263
  %268 = getelementptr inbounds %struct.MLoopUV, ptr %257, i64 1
  %269 = icmp sgt i32 %256, 1
  br i1 %269, label %255, label %270, !llvm.loop !80

270:                                              ; preds = %267, %250
  %271 = add nuw nsw i32 %251, 1
  %272 = icmp eq i32 %271, %242
  br i1 %272, label %273, label %250, !llvm.loop !81

273:                                              ; preds = %270, %240, %236
  %274 = load i16, ptr %12, align 2, !tbaa !34
  %275 = and i16 %274, 64
  %276 = icmp eq i16 %275, 0
  br i1 %276, label %307, label %277

277:                                              ; preds = %273
  %278 = call zeroext i8 @CustomData_has_layer(ptr noundef %43, i32 noundef 2) #5
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %307, label %280

280:                                              ; preds = %277
  %281 = call ptr @CustomData_get_layer(ptr noundef %43, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5
  store i32 0, ptr %8, align 4, !tbaa !59
  %282 = call ptr @defgroup_flip_map(ptr noundef %1, ptr noundef nonnull %8, i8 noundef zeroext 0) #5
  %283 = icmp eq ptr %282, null
  br i1 %283, label %306, label %284

284:                                              ; preds = %280
  %285 = icmp sgt i32 %18, 0
  br i1 %285, label %286, label %304

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.MDeformVert, ptr %281, i64 %80
  %288 = zext nneg i32 %18 to i64
  br label %289

289:                                              ; preds = %286, %300
  %290 = phi i64 [ 0, %286 ], [ %302, %300 ]
  %291 = phi ptr [ %287, %286 ], [ %301, %300 ]
  br i1 %15, label %292, label %298

292:                                              ; preds = %289
  %293 = getelementptr inbounds i32, ptr %77, i64 %290
  %294 = load i32, ptr %293, align 4, !tbaa !59
  %295 = icmp eq i32 %294, -1
  br i1 %295, label %298, label %296

296:                                              ; preds = %292
  %297 = load i32, ptr %8, align 4, !tbaa !59
  call void @defvert_flip_merged(ptr noundef %291, ptr noundef nonnull %282, i32 noundef %297) #5
  br label %300

298:                                              ; preds = %292, %289
  %299 = load i32, ptr %8, align 4, !tbaa !59
  call void @defvert_flip(ptr noundef %291, ptr noundef nonnull %282, i32 noundef %299) #5
  br label %300

300:                                              ; preds = %296, %298
  %301 = getelementptr inbounds %struct.MDeformVert, ptr %291, i64 1
  %302 = add nuw nsw i64 %290, 1
  %303 = icmp eq i64 %302, %288
  br i1 %303, label %304, label %289, !llvm.loop !82

304:                                              ; preds = %300, %284
  %305 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %305(ptr noundef nonnull %282) #5
  br label %306

306:                                              ; preds = %304, %280
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5
  br label %307

307:                                              ; preds = %306, %277, %273
  br i1 %15, label %308, label %315

308:                                              ; preds = %307
  %309 = icmp eq i32 %129, 0
  br i1 %309, label %312, label %310

310:                                              ; preds = %308
  %311 = call ptr @CDDM_merge_verts(ptr noundef %43, ptr noundef %77, i32 noundef %129, i32 noundef 0) #5
  br label %312

312:                                              ; preds = %310, %308
  %313 = phi ptr [ %311, %310 ], [ %43, %308 ]
  %314 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %314(ptr noundef %77) #5
  br label %315

315:                                              ; preds = %312, %307
  %316 = phi ptr [ %313, %312 ], [ %43, %307 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #5
  ret ptr %316
}

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CDDM_from_template(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_copy_vert_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_copy_edge_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_copy_loop_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_copy_poly_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CDDM_get_verts(ptr noundef) local_unnamed_addr #2

declare ptr @CDDM_get_edges(ptr noundef) local_unnamed_addr #2

declare ptr @CDDM_get_loops(ptr noundef) local_unnamed_addr #2

declare ptr @CDDM_get_polys(ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @defgroup_flip_map(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @defvert_flip_merged(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @defvert_flip(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CDDM_merge_verts(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!34 = !{!35, !41, i64 114}
!35 = !{!"MirrorModifierData", !36, i64 0, !41, i64 112, !41, i64 114, !42, i64 116, !37, i64 120}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!"float", !38, i64 0}
!43 = !{!44, !37, i64 1680}
!44 = !{!"DerivedMesh", !45, i64 0, !45, i64 200, !45, i64 400, !45, i64 600, !45, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !42, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!45 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!46 = !{!44, !40, i64 1056}
!47 = !{!35, !42, i64 116}
!48 = !{!35, !37, i64 120}
!49 = !{!44, !37, i64 1104}
!50 = !{!44, !37, i64 1112}
!51 = !{!44, !37, i64 1128}
!52 = !{!44, !37, i64 1136}
!53 = !{!42, !42, i64 0}
!54 = !{!44, !37, i64 1208}
!55 = !{!44, !37, i64 1216}
!56 = !{!44, !37, i64 1232}
!57 = !{!44, !37, i64 1240}
!58 = !{!37, !37, i64 0}
!59 = !{!40, !40, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!44, !40, i64 1000}
!64 = distinct !{!64, !61, !62}
!65 = distinct !{!65, !61, !62}
!66 = !{!67, !40, i64 0}
!67 = !{!"MEdge", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 9, !41, i64 10}
!68 = !{!67, !40, i64 4}
!69 = distinct !{!69, !61, !62}
!70 = !{!71, !40, i64 0}
!71 = !{!"MPoly", !40, i64 0, !40, i64 4, !41, i64 8, !38, i64 10, !38, i64 11}
!72 = !{!71, !40, i64 4}
!73 = distinct !{!73, !61, !62}
!74 = !{!75, !40, i64 4}
!75 = !{!"MLoop", !40, i64 0, !40, i64 4}
!76 = distinct !{!76, !61, !62}
!77 = distinct !{!77, !61, !62}
!78 = !{!75, !40, i64 0}
!79 = distinct !{!79, !61, !62}
!80 = distinct !{!80, !61, !62}
!81 = distinct !{!81, !61, !62}
!82 = distinct !{!82, !61, !62}
