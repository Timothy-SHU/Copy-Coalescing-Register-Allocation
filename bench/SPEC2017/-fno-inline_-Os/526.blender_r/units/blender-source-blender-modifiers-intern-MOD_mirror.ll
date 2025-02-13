; ModuleID = 'blender/source/blender/modifiers/intern/MOD_mirror.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MirrorModifierData = type { %struct.ModifierData, i16, i16, float, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @applyModifier(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 %3) #0 !PGOFuncName !35 {
  %5 = tail call fastcc ptr @mirrorModifier__doMirror(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  %6 = icmp eq ptr %5, %2
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 16
  %9 = load i32, ptr %8, align 8, !tbaa !36
  %10 = or i32 %9, 4
  store i32 %10, ptr %8, align 8, !tbaa !36
  br label %11

11:                                               ; preds = %7, %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @initData(ptr nocapture noundef %0) #1 !PGOFuncName !44 {
  %2 = getelementptr inbounds %struct.MirrorModifierData, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 2, !tbaa !45
  %4 = or i16 %3, 72
  store i16 %4, ptr %2, align 2, !tbaa !45
  %5 = getelementptr inbounds %struct.MirrorModifierData, ptr %0, i64 0, i32 3
  store float 0x3F50624DE0000000, ptr %5, align 4, !tbaa !49
  %6 = getelementptr inbounds %struct.MirrorModifierData, ptr %0, i64 0, i32 4
  store ptr null, ptr %6, align 8, !tbaa !50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !51 {
  %6 = getelementptr inbounds %struct.MirrorModifierData, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #6
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #6
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !52 {
  %5 = getelementptr inbounds %struct.MirrorModifierData, ptr %0, i64 0, i32 4
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #6
  ret void
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mirrorModifier__doMirror(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !53 {
  %4 = getelementptr inbounds %struct.MirrorModifierData, ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !45
  %6 = and i16 %5, 8
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @doMirrorOnAxis(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #7
  %10 = load i16, ptr %4, align 2, !tbaa !45
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i16 [ %10, %8 ], [ %5, %3 ]
  %13 = phi ptr [ %9, %8 ], [ %2, %3 ]
  %14 = and i16 %12, 16
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @doMirrorOnAxis(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %13, i32 noundef 1) #7
  %18 = icmp eq ptr %13, %2
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %13, i64 0, i32 95
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  tail call void %21(ptr noundef %13) #6
  br label %22

22:                                               ; preds = %16, %19, %11
  %23 = phi ptr [ %13, %11 ], [ %17, %19 ], [ %17, %16 ]
  %24 = load i16, ptr %4, align 2, !tbaa !45
  %25 = and i16 %24, 32
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = tail call fastcc ptr @doMirrorOnAxis(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %23, i32 noundef 2) #7
  %29 = icmp eq ptr %23, %2
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 95
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  tail call void %32(ptr noundef %23) #6
  br label %33

33:                                               ; preds = %27, %30, %22
  %34 = phi ptr [ %23, %22 ], [ %28, %30 ], [ %28, %27 ]
  ret ptr %34
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @doMirrorOnAxis(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !55 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.MirrorModifierData, ptr %0, i64 0, i32 3
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fmul float %10, %10
  %12 = getelementptr inbounds %struct.MirrorModifierData, ptr %0, i64 0, i32 2
  %13 = load i16, ptr %12, align 2, !tbaa !45
  %14 = and i16 %13, 128
  %15 = icmp eq i16 %14, 0
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  %18 = tail call i32 %17(ptr noundef %2) #6
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 24
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = tail call i32 %20(ptr noundef %2) #6
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 26
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = tail call i32 %23(ptr noundef %2) #6
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 27
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = tail call i32 %26(ptr noundef %2) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @unit_m4(ptr noundef nonnull %5) #6
  %28 = zext nneg i32 %3 to i64
  %29 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 %28, i64 %28
  store float -1.000000e+00, ptr %29, align 4, !tbaa !60
  %30 = getelementptr inbounds %struct.MirrorModifierData, ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  %34 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 47
  %35 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %34) #6
  %36 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %36) #6
  %37 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %6) #6
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #8
  br label %38

38:                                               ; preds = %33, %4
  %39 = shl nsw i32 %18, 1
  %40 = shl nsw i32 %21, 1
  %41 = shl nsw i32 %24, 1
  %42 = shl nsw i32 %27, 1
  %43 = call ptr @CDDM_from_template(ptr noundef nonnull %2, i32 noundef %39, i32 noundef %40, i32 noundef 0, i32 noundef %41, i32 noundef %42) #6
  call void @DM_copy_vert_data(ptr noundef nonnull %2, ptr noundef %43, i32 noundef 0, i32 noundef 0, i32 noundef %18) #6
  call void @DM_copy_edge_data(ptr noundef nonnull %2, ptr noundef %43, i32 noundef 0, i32 noundef 0, i32 noundef %21) #6
  call void @DM_copy_loop_data(ptr noundef nonnull %2, ptr noundef %43, i32 noundef 0, i32 noundef 0, i32 noundef %24) #6
  call void @DM_copy_poly_data(ptr noundef nonnull %2, ptr noundef %43, i32 noundef 0, i32 noundef 0, i32 noundef %27) #6
  %44 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %2, i32 noundef 0) #6
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 36
  %48 = load ptr, ptr %47, align 8, !tbaa !61
  %49 = call ptr @CDDM_get_verts(ptr noundef %43) #6
  call void %48(ptr noundef nonnull %2, ptr noundef %49) #6
  br label %50

50:                                               ; preds = %46, %38
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 1
  %52 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %51, i32 noundef 3) #6
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 37
  %56 = load ptr, ptr %55, align 8, !tbaa !62
  %57 = call ptr @CDDM_get_edges(ptr noundef %43) #6
  call void %56(ptr noundef nonnull %2, ptr noundef %57) #6
  br label %58

58:                                               ; preds = %54, %50
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 4
  %60 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %59, i32 noundef 25) #6
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 39
  %64 = load ptr, ptr %63, align 8, !tbaa !63
  %65 = call ptr @CDDM_get_loops(ptr noundef %43) #6
  call void %64(ptr noundef nonnull %2, ptr noundef %65) #6
  %66 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 40
  %67 = load ptr, ptr %66, align 8, !tbaa !64
  %68 = call ptr @CDDM_get_polys(ptr noundef %43) #6
  call void %67(ptr noundef nonnull %2, ptr noundef %68) #6
  br label %69

69:                                               ; preds = %62, %58
  call void @DM_copy_vert_data(ptr noundef %43, ptr noundef %43, i32 noundef 0, i32 noundef %18, i32 noundef %18) #6
  call void @DM_copy_edge_data(ptr noundef %43, ptr noundef %43, i32 noundef 0, i32 noundef %21, i32 noundef %21) #6
  call void @DM_copy_poly_data(ptr noundef %43, ptr noundef %43, i32 noundef 0, i32 noundef %27, i32 noundef %27) #6
  br i1 %15, label %72, label %70

70:                                               ; preds = %69
  %71 = sext i32 %18 to i64
  br label %78

72:                                               ; preds = %69
  %73 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !65
  %74 = sext i32 %18 to i64
  %75 = shl nsw i64 %74, 3
  %76 = call ptr %73(i64 noundef %75, ptr noundef nonnull @.str) #6
  %77 = getelementptr inbounds i32, ptr %76, i64 %74
  br label %78

78:                                               ; preds = %70, %72
  %79 = phi i64 [ %71, %70 ], [ %74, %72 ]
  %80 = phi ptr [ null, %70 ], [ %76, %72 ]
  %81 = phi ptr [ null, %70 ], [ %77, %72 ]
  %82 = call ptr @CDDM_get_verts(ptr noundef %43) #6
  %83 = icmp sgt i32 %18, 0
  br i1 %83, label %84, label %112

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.MVert, ptr %82, i64 %79
  br label %86

86:                                               ; preds = %84, %104
  %87 = phi i32 [ %107, %104 ], [ 0, %84 ]
  %88 = phi ptr [ %109, %104 ], [ %85, %84 ]
  %89 = phi ptr [ %110, %104 ], [ %82, %84 ]
  %90 = phi ptr [ %106, %104 ], [ %81, %84 ]
  %91 = phi ptr [ %105, %104 ], [ %80, %84 ]
  %92 = phi i32 [ %108, %104 ], [ 0, %84 ]
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef %88) #6
  br i1 %15, label %93, label %104

93:                                               ; preds = %86
  %94 = call fastcc float @len_squared_v3v3(ptr noundef %89, ptr noundef %88) #7
  %95 = fcmp olt float %94, %11
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = add nuw nsw i32 %92, %18
  store i32 %97, ptr %91, align 4, !tbaa !66
  %98 = add nsw i32 %87, 1
  call void @mid_v3_v3v3(ptr noundef %88, ptr noundef %89, ptr noundef %88) #6
  call fastcc void @copy_v3_v3(ptr noundef %89, ptr noundef %88) #7
  br label %100

99:                                               ; preds = %93
  store i32 -1, ptr %91, align 4, !tbaa !66
  br label %100

100:                                              ; preds = %99, %96
  %101 = phi i32 [ %98, %96 ], [ %87, %99 ]
  store i32 -1, ptr %90, align 4, !tbaa !66
  %102 = getelementptr inbounds i32, ptr %91, i64 1
  %103 = getelementptr inbounds i32, ptr %90, i64 1
  br label %104

104:                                              ; preds = %86, %100
  %105 = phi ptr [ %102, %100 ], [ %91, %86 ]
  %106 = phi ptr [ %103, %100 ], [ %90, %86 ]
  %107 = phi i32 [ %101, %100 ], [ %87, %86 ]
  %108 = add nuw nsw i32 %92, 1
  %109 = getelementptr inbounds %struct.MVert, ptr %88, i64 1
  %110 = getelementptr inbounds %struct.MVert, ptr %89, i64 1
  %111 = icmp eq i32 %108, %18
  br i1 %111, label %112, label %86, !llvm.loop !67

112:                                              ; preds = %104, %78
  %113 = phi i32 [ 0, %78 ], [ %107, %104 ]
  %114 = call i32 @CustomData_number_of_layers(ptr noundef %43, i32 noundef 28) #6
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %133

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.DerivedMesh, ptr %43, i64 0, i32 5
  br label %118

118:                                              ; preds = %116, %130
  %119 = phi i32 [ 0, %116 ], [ %131, %130 ]
  %120 = call ptr @CustomData_get_layer_n(ptr noundef %43, i32 noundef 28, i32 noundef %119) #6
  %121 = load i32, ptr %117, align 8, !tbaa !69
  %122 = icmp slt i32 %18, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %118, %123
  %124 = phi i64 [ %126, %123 ], [ %79, %118 ]
  %125 = getelementptr inbounds [3 x float], ptr %120, i64 %124
  call void @mul_m4_v3(ptr noundef nonnull %5, ptr noundef %125) #6
  %126 = add nsw i64 %124, 1
  %127 = load i32, ptr %117, align 8, !tbaa !69
  %128 = sext i32 %127 to i64
  %129 = icmp slt i64 %126, %128
  br i1 %129, label %123, label %130, !llvm.loop !70

130:                                              ; preds = %123, %118
  %131 = add nuw nsw i32 %119, 1
  %132 = icmp eq i32 %131, %114
  br i1 %132, label %133, label %118, !llvm.loop !71

133:                                              ; preds = %130, %112
  %134 = call ptr @CDDM_get_edges(ptr noundef %43) #6
  %135 = icmp sgt i32 %21, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %133
  %137 = zext nneg i32 %21 to i64
  %138 = getelementptr inbounds %struct.MEdge, ptr %134, i64 %137
  %139 = insertelement <2 x i32> poison, i32 %18, i64 0
  %140 = shufflevector <2 x i32> %139, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %141

141:                                              ; preds = %136, %141
  %142 = phi ptr [ %147, %141 ], [ %138, %136 ]
  %143 = phi i32 [ %146, %141 ], [ 0, %136 ]
  %144 = load <2 x i32>, ptr %142, align 4, !tbaa !66
  %145 = add <2 x i32> %144, %140
  store <2 x i32> %145, ptr %142, align 4, !tbaa !66
  %146 = add nuw nsw i32 %143, 1
  %147 = getelementptr inbounds %struct.MEdge, ptr %142, i64 1
  %148 = icmp eq i32 %146, %21
  br i1 %148, label %149, label %141, !llvm.loop !72

149:                                              ; preds = %141, %133
  %150 = call ptr @CDDM_get_polys(ptr noundef %43) #6
  %151 = call ptr @CDDM_get_loops(ptr noundef %43) #6
  %152 = icmp sgt i32 %27, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = sext i32 %24 to i64
  br label %215

155:                                              ; preds = %149
  %156 = zext nneg i32 %27 to i64
  %157 = getelementptr inbounds %struct.MPoly, ptr %150, i64 %156
  %158 = sext i32 %24 to i64
  br label %159

159:                                              ; preds = %155, %204
  %160 = phi ptr [ %157, %155 ], [ %213, %204 ]
  %161 = phi i32 [ 0, %155 ], [ %212, %204 ]
  %162 = load i32, ptr %160, align 4, !tbaa !73
  %163 = add nsw i32 %162, %24
  call void @DM_copy_loop_data(ptr noundef %43, ptr noundef %43, i32 noundef %162, i32 noundef %163, i32 noundef 1) #6
  %164 = getelementptr inbounds %struct.MPoly, ptr %160, i64 0, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !75
  %166 = icmp sgt i32 %165, 1
  br i1 %166, label %175, label %167

167:                                              ; preds = %159
  %168 = load i32, ptr %160, align 4, !tbaa !73
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.MLoop, ptr %151, i64 %169
  %171 = getelementptr inbounds %struct.MLoop, ptr %170, i64 %158
  %172 = getelementptr inbounds %struct.MLoop, ptr %170, i64 %158, i32 1
  %173 = load i32, ptr %172, align 4, !tbaa !76
  %174 = add i32 %165, -1
  br label %204

175:                                              ; preds = %159, %175
  %176 = phi i32 [ %184, %175 ], [ %165, %159 ]
  %177 = phi i32 [ %183, %175 ], [ 1, %159 ]
  %178 = load i32, ptr %160, align 4, !tbaa !73
  %179 = add nsw i32 %178, %177
  %180 = sub i32 %24, %177
  %181 = add i32 %180, %176
  %182 = add i32 %181, %178
  call void @DM_copy_loop_data(ptr noundef %43, ptr noundef %43, i32 noundef %179, i32 noundef %182, i32 noundef 1) #6
  %183 = add nuw nsw i32 %177, 1
  %184 = load i32, ptr %164, align 4, !tbaa !75
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %175, label %186, !llvm.loop !78

186:                                              ; preds = %175
  %187 = load i32, ptr %160, align 4, !tbaa !73
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.MLoop, ptr %151, i64 %188
  %190 = getelementptr inbounds %struct.MLoop, ptr %189, i64 %158
  %191 = getelementptr inbounds %struct.MLoop, ptr %189, i64 %158, i32 1
  %192 = load i32, ptr %191, align 4, !tbaa !76
  %193 = add i32 %184, -1
  %194 = icmp sgt i32 %184, 1
  br i1 %194, label %195, label %204

195:                                              ; preds = %186
  %196 = zext nneg i32 %193 to i64
  br label %197

197:                                              ; preds = %195, %197
  %198 = phi i64 [ 0, %195 ], [ %199, %197 ]
  %199 = add nuw nsw i64 %198, 1
  %200 = getelementptr inbounds %struct.MLoop, ptr %190, i64 %199, i32 1
  %201 = load i32, ptr %200, align 4, !tbaa !76
  %202 = getelementptr inbounds %struct.MLoop, ptr %190, i64 %198, i32 1
  store i32 %201, ptr %202, align 4, !tbaa !76
  %203 = icmp eq i64 %199, %196
  br i1 %203, label %204, label %197, !llvm.loop !79

204:                                              ; preds = %197, %167, %186
  %205 = phi i32 [ %174, %167 ], [ %193, %186 ], [ %193, %197 ]
  %206 = phi i32 [ %173, %167 ], [ %192, %186 ], [ %192, %197 ]
  %207 = phi ptr [ %171, %167 ], [ %190, %186 ], [ %190, %197 ]
  %208 = phi i32 [ %168, %167 ], [ %187, %186 ], [ %187, %197 ]
  %209 = sext i32 %205 to i64
  %210 = getelementptr inbounds %struct.MLoop, ptr %207, i64 %209, i32 1
  store i32 %206, ptr %210, align 4, !tbaa !76
  %211 = add nsw i32 %208, %24
  store i32 %211, ptr %160, align 4, !tbaa !73
  %212 = add nuw nsw i32 %161, 1
  %213 = getelementptr inbounds %struct.MPoly, ptr %160, i64 1
  %214 = icmp eq i32 %212, %27
  br i1 %214, label %215, label %159, !llvm.loop !80

215:                                              ; preds = %204, %153
  %216 = phi i64 [ %154, %153 ], [ %158, %204 ]
  %217 = call ptr @CDDM_get_loops(ptr noundef %43) #6
  %218 = icmp sgt i32 %24, 0
  br i1 %218, label %219, label %232

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.MLoop, ptr %217, i64 %216
  br label %221

221:                                              ; preds = %219, %221
  %222 = phi ptr [ %230, %221 ], [ %220, %219 ]
  %223 = phi i32 [ %229, %221 ], [ 0, %219 ]
  %224 = load i32, ptr %222, align 4, !tbaa !81
  %225 = add i32 %224, %18
  store i32 %225, ptr %222, align 4, !tbaa !81
  %226 = getelementptr inbounds %struct.MLoop, ptr %222, i64 0, i32 1
  %227 = load i32, ptr %226, align 4, !tbaa !76
  %228 = add i32 %227, %21
  store i32 %228, ptr %226, align 4, !tbaa !76
  %229 = add nuw nsw i32 %223, 1
  %230 = getelementptr inbounds %struct.MLoop, ptr %222, i64 1
  %231 = icmp eq i32 %229, %24
  br i1 %231, label %232, label %221, !llvm.loop !82

232:                                              ; preds = %221, %215
  %233 = load i16, ptr %12, align 2, !tbaa !45
  %234 = and i16 %233, 6
  %235 = icmp eq i16 %234, 0
  br i1 %235, label %268, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.DerivedMesh, ptr %43, i64 0, i32 3
  %238 = call i32 @CustomData_number_of_layers(ptr noundef nonnull %237, i32 noundef 16) #6
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %268

240:                                              ; preds = %236
  %241 = and i16 %233, 2
  %242 = icmp eq i16 %241, 0
  %243 = and i16 %233, 4
  %244 = icmp eq i16 %243, 0
  br label %245

245:                                              ; preds = %240, %265
  %246 = phi i32 [ 0, %240 ], [ %266, %265 ]
  %247 = call ptr @CustomData_get_layer_n(ptr noundef nonnull %237, i32 noundef 16, i32 noundef %246) #6
  br i1 %218, label %248, label %265

248:                                              ; preds = %245
  %249 = getelementptr inbounds %struct.MLoopUV, ptr %247, i64 %216
  br label %250

250:                                              ; preds = %248, %262
  %251 = phi i32 [ %253, %262 ], [ %24, %248 ]
  %252 = phi ptr [ %263, %262 ], [ %249, %248 ]
  %253 = add nsw i32 %251, -1
  br i1 %242, label %257, label %254

254:                                              ; preds = %250
  %255 = load float, ptr %252, align 4, !tbaa !60
  %256 = fsub float 1.000000e+00, %255
  store float %256, ptr %252, align 4, !tbaa !60
  br label %257

257:                                              ; preds = %254, %250
  br i1 %244, label %262, label %258

258:                                              ; preds = %257
  %259 = getelementptr inbounds [2 x float], ptr %252, i64 0, i64 1
  %260 = load float, ptr %259, align 4, !tbaa !60
  %261 = fsub float 1.000000e+00, %260
  store float %261, ptr %259, align 4, !tbaa !60
  br label %262

262:                                              ; preds = %257, %258
  %263 = getelementptr inbounds %struct.MLoopUV, ptr %252, i64 1
  %264 = icmp ugt i32 %251, 1
  br i1 %264, label %250, label %265, !llvm.loop !83

265:                                              ; preds = %262, %245
  %266 = add nuw nsw i32 %246, 1
  %267 = icmp eq i32 %266, %238
  br i1 %267, label %268, label %245, !llvm.loop !84

268:                                              ; preds = %265, %236, %232
  %269 = load i16, ptr %12, align 2, !tbaa !45
  %270 = and i16 %269, 64
  %271 = icmp eq i16 %270, 0
  br i1 %271, label %301, label %272

272:                                              ; preds = %268
  %273 = call zeroext i8 @CustomData_has_layer(ptr noundef %43, i32 noundef 2) #6
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %301, label %275

275:                                              ; preds = %272
  %276 = call ptr @CustomData_get_layer(ptr noundef %43, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !tbaa !66
  %277 = call ptr @defgroup_flip_map(ptr noundef %1, ptr noundef nonnull %8, i8 noundef zeroext 0) #6
  %278 = icmp eq ptr %277, null
  br i1 %278, label %300, label %279

279:                                              ; preds = %275
  br i1 %83, label %280, label %298

280:                                              ; preds = %279
  %281 = getelementptr inbounds %struct.MDeformVert, ptr %276, i64 %79
  %282 = zext nneg i32 %18 to i64
  br label %283

283:                                              ; preds = %280, %294
  %284 = phi i64 [ 0, %280 ], [ %296, %294 ]
  %285 = phi ptr [ %281, %280 ], [ %295, %294 ]
  br i1 %15, label %286, label %292

286:                                              ; preds = %283
  %287 = getelementptr inbounds i32, ptr %80, i64 %284
  %288 = load i32, ptr %287, align 4, !tbaa !66
  %289 = icmp eq i32 %288, -1
  br i1 %289, label %292, label %290

290:                                              ; preds = %286
  %291 = load i32, ptr %8, align 4, !tbaa !66
  call void @defvert_flip_merged(ptr noundef %285, ptr noundef nonnull %277, i32 noundef %291) #6
  br label %294

292:                                              ; preds = %286, %283
  %293 = load i32, ptr %8, align 4, !tbaa !66
  call void @defvert_flip(ptr noundef %285, ptr noundef nonnull %277, i32 noundef %293) #6
  br label %294

294:                                              ; preds = %290, %292
  %295 = getelementptr inbounds %struct.MDeformVert, ptr %285, i64 1
  %296 = add nuw nsw i64 %284, 1
  %297 = icmp eq i64 %296, %282
  br i1 %297, label %298, label %283, !llvm.loop !85

298:                                              ; preds = %294, %279
  %299 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  call void %299(ptr noundef nonnull %277) #6
  br label %300

300:                                              ; preds = %298, %275
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %301

301:                                              ; preds = %300, %272, %268
  br i1 %15, label %302, label %309

302:                                              ; preds = %301
  %303 = icmp eq i32 %113, 0
  br i1 %303, label %306, label %304

304:                                              ; preds = %302
  %305 = call ptr @CDDM_merge_verts(ptr noundef %43, ptr noundef %80, i32 noundef %113, i32 noundef 0) #6
  br label %306

306:                                              ; preds = %304, %302
  %307 = phi ptr [ %305, %304 ], [ %43, %302 ]
  %308 = load ptr, ptr @MEM_freeN, align 8, !tbaa !65
  call void %308(ptr noundef %80) #6
  br label %309

309:                                              ; preds = %306, %301
  %310 = phi ptr [ %307, %306 ], [ %43, %301 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  ret ptr %310
}

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_from_template(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_copy_vert_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_copy_edge_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_copy_loop_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_copy_poly_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_get_verts(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_get_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_get_loops(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_get_polys(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !86 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #7
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  ret float %4
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !87 {
  %3 = load float, ptr %1, align 4, !tbaa !60
  store float %3, ptr %0, align 4, !tbaa !60
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !60
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !60
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !60
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !60
  ret void
}

; Function Attrs: optsize
declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @defgroup_flip_map(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @defvert_flip_merged(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @defvert_flip(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_merge_verts(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !88 {
  %4 = load float, ptr %1, align 4, !tbaa !60
  %5 = load float, ptr %2, align 4, !tbaa !60
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !60
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !60
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !60
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !60
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !60
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !60
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !89 {
  %3 = load float, ptr %0, align 4, !tbaa !60
  %4 = load float, ptr %1, align 4, !tbaa !60
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !60
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !60
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !60
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !60
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind }

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
!34 = !{!"MOD_mirror.c:copyData"}
!35 = !{!"MOD_mirror.c:applyModifier"}
!36 = !{!37, !42, i64 1056}
!37 = !{!"DerivedMesh", !38, i64 0, !38, i64 200, !38, i64 400, !38, i64 600, !38, i64 800, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !39, i64 1032, !39, i64 1040, !42, i64 1048, !43, i64 1052, !42, i64 1056, !42, i64 1060, !39, i64 1064, !40, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !39, i64 1176, !39, i64 1184, !39, i64 1192, !39, i64 1200, !39, i64 1208, !39, i64 1216, !39, i64 1224, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !39, i64 1496, !39, i64 1504, !39, i64 1512, !39, i64 1520, !39, i64 1528, !39, i64 1536, !39, i64 1544, !39, i64 1552, !39, i64 1560, !39, i64 1568, !39, i64 1576, !39, i64 1584, !39, i64 1592, !39, i64 1600, !39, i64 1608, !39, i64 1616, !39, i64 1624, !39, i64 1632, !39, i64 1640, !39, i64 1648, !39, i64 1656, !39, i64 1664, !39, i64 1672, !39, i64 1680}
!38 = !{!"CustomData", !39, i64 0, !40, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !39, i64 184, !39, i64 192}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"int", !40, i64 0}
!43 = !{!"float", !40, i64 0}
!44 = !{!"MOD_mirror.c:initData"}
!45 = !{!46, !48, i64 114}
!46 = !{!"MirrorModifierData", !47, i64 0, !48, i64 112, !48, i64 114, !43, i64 116, !39, i64 120}
!47 = !{!"ModifierData", !39, i64 0, !39, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !40, i64 32, !39, i64 96, !39, i64 104}
!48 = !{!"short", !40, i64 0}
!49 = !{!46, !43, i64 116}
!50 = !{!46, !39, i64 120}
!51 = !{!"MOD_mirror.c:updateDepgraph"}
!52 = !{!"MOD_mirror.c:foreachObjectLink"}
!53 = !{!"MOD_mirror.c:mirrorModifier__doMirror"}
!54 = !{!37, !39, i64 1680}
!55 = !{!"MOD_mirror.c:doMirrorOnAxis"}
!56 = !{!37, !39, i64 1104}
!57 = !{!37, !39, i64 1112}
!58 = !{!37, !39, i64 1128}
!59 = !{!37, !39, i64 1136}
!60 = !{!43, !43, i64 0}
!61 = !{!37, !39, i64 1208}
!62 = !{!37, !39, i64 1216}
!63 = !{!37, !39, i64 1232}
!64 = !{!37, !39, i64 1240}
!65 = !{!39, !39, i64 0}
!66 = !{!42, !42, i64 0}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!37, !42, i64 1000}
!70 = distinct !{!70, !68}
!71 = distinct !{!71, !68}
!72 = distinct !{!72, !68}
!73 = !{!74, !42, i64 0}
!74 = !{!"MPoly", !42, i64 0, !42, i64 4, !48, i64 8, !40, i64 10, !40, i64 11}
!75 = !{!74, !42, i64 4}
!76 = !{!77, !42, i64 4}
!77 = !{!"MLoop", !42, i64 0, !42, i64 4}
!78 = distinct !{!78, !68}
!79 = distinct !{!79, !68}
!80 = distinct !{!80, !68}
!81 = !{!77, !42, i64 0}
!82 = distinct !{!82, !68}
!83 = distinct !{!83, !68}
!84 = distinct !{!84, !68}
!85 = distinct !{!85, !68}
!86 = !{!"MOD_mirror.c:len_squared_v3v3"}
!87 = !{!"MOD_mirror.c:copy_v3_v3"}
!88 = !{!"MOD_mirror.c:sub_v3_v3v3"}
!89 = !{!"MOD_mirror.c:dot_v3v3"}
