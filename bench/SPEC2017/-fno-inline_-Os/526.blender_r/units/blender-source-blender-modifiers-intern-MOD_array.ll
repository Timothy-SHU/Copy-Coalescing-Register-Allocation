; ModuleID = 'blender/source/blender/modifiers/intern/MOD_array.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.ArrayModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, [3 x float], [3 x float], float, float, i32, i32, i32, i32 }
%struct.DagNode = type { i32, i16, float, float, float, ptr, ptr, i32, i32, i32, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i16 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.CurveCache = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr }
%struct.Path = type { ptr, i32, float }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.MLoop = type { i32, i32 }
%struct.SortVertsElem = type { i32, [3 x float], float }

@modifierType_Array = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Array\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ArrayModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 192, i32 2, i32 31, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr null, ptr null, ptr null, ptr @updateDepgraph, ptr null, ptr null, ptr @foreachObjectLink, ptr null, ptr null }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"mod array doubles map\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.dm_mvert_map_doubles = private unnamed_addr constant [21 x i8] c"dm_mvert_map_doubles\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Array Modifier\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @applyModifier(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !PGOFuncName !35 {
  %5 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = tail call fastcc ptr @arrayModifier_doArray(ptr noundef %0, ptr noundef %6, ptr noundef %1, ptr noundef %2, i32 noundef %3) #15
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !42 {
  %2 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  store i32 2, ptr %3, align 4, !tbaa !43
  %4 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 5
  tail call fastcc void @zero_v3(ptr noundef nonnull %4) #15
  %5 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 6
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %5, align 4, !tbaa !46
  %6 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 8
  store float 0x3F847AE140000000, ptr %6, align 4, !tbaa !47
  %7 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 9
  store i32 0, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 10
  store i32 2, ptr %8, align 4, !tbaa !49
  %9 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 11
  store i32 0, ptr %9, align 8, !tbaa !50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !51 {
  %6 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #14
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #14
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %13) #14
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %16, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #14
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %19) #14
  %23 = getelementptr inbounds %struct.DagNode, ptr %22, i64 0, i32 21
  %24 = load i16, ptr %23, align 2, !tbaa !55
  %25 = or i16 %24, 1
  store i16 %25, ptr %23, align 2, !tbaa !55
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %22, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #14
  br label %26

26:                                               ; preds = %21, %17
  %27 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %28) #14
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %31, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #14
  br label %32

32:                                               ; preds = %30, %26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !60 {
  %5 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #14
  %6 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 2
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %6) #14
  %7 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 3
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %7) #14
  %8 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 4
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %8) #14
  ret void
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @arrayModifier_doArray(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !61 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca [4 x [4 x float]], align 16
  %15 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #16
  %17 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 11
  %18 = load i32, ptr %17, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 16
  %20 = load i32, ptr %19, align 8, !tbaa !63
  %21 = and i32 %20, 4
  %22 = icmp ne i32 %21, 0
  %23 = and i32 %18, 1
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 true, i1 %24
  %26 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 10
  %27 = load i32, ptr %26, align 4, !tbaa !49
  %28 = and i32 %27, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  %33 = icmp ne ptr %32, null
  br label %34

34:                                               ; preds = %30, %5
  %35 = phi i1 [ false, %5 ], [ %33, %30 ]
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 23
  %38 = load ptr, ptr %37, align 8, !tbaa !66
  %39 = tail call i32 %38(ptr noundef nonnull %3) #14
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 24
  %41 = load ptr, ptr %40, align 8, !tbaa !67
  %42 = tail call i32 %41(ptr noundef nonnull %3) #14
  %43 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 26
  %44 = load ptr, ptr %43, align 8, !tbaa !68
  %45 = tail call i32 %44(ptr noundef nonnull %3) #14
  %46 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 27
  %47 = load ptr, ptr %46, align 8, !tbaa !69
  %48 = tail call i32 %47(ptr noundef nonnull %3) #14
  %49 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 12
  %50 = load i32, ptr %49, align 4, !tbaa !43
  %51 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !52
  %53 = icmp eq ptr %52, null
  %54 = icmp eq ptr %52, %2
  %55 = or i1 %53, %54
  br i1 %55, label %76, label %56

56:                                               ; preds = %34
  %57 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 3
  %58 = load i16, ptr %57, align 8, !tbaa !70
  %59 = icmp eq i16 %58, 1
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = tail call ptr @get_dm_for_modifier(ptr noundef nonnull %52, i32 noundef %4) #14
  %62 = icmp eq ptr %61, null
  br i1 %62, label %76, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.DerivedMesh, ptr %61, i64 0, i32 23
  %65 = load ptr, ptr %64, align 8, !tbaa !66
  %66 = tail call i32 %65(ptr noundef nonnull %61) #14
  %67 = getelementptr inbounds %struct.DerivedMesh, ptr %61, i64 0, i32 24
  %68 = load ptr, ptr %67, align 8, !tbaa !67
  %69 = tail call i32 %68(ptr noundef nonnull %61) #14
  %70 = getelementptr inbounds %struct.DerivedMesh, ptr %61, i64 0, i32 26
  %71 = load ptr, ptr %70, align 8, !tbaa !68
  %72 = tail call i32 %71(ptr noundef nonnull %61) #14
  %73 = getelementptr inbounds %struct.DerivedMesh, ptr %61, i64 0, i32 27
  %74 = load ptr, ptr %73, align 8, !tbaa !69
  %75 = tail call i32 %74(ptr noundef nonnull %61) #14
  br label %76

76:                                               ; preds = %60, %63, %56, %34
  %77 = phi i32 [ %69, %63 ], [ 0, %60 ], [ 0, %56 ], [ 0, %34 ]
  %78 = phi i32 [ %75, %63 ], [ 0, %60 ], [ 0, %56 ], [ 0, %34 ]
  %79 = phi i32 [ %72, %63 ], [ 0, %60 ], [ 0, %56 ], [ 0, %34 ]
  %80 = phi i32 [ %66, %63 ], [ 0, %60 ], [ 0, %56 ], [ 0, %34 ]
  %81 = phi ptr [ %61, %63 ], [ null, %60 ], [ null, %56 ], [ null, %34 ]
  %82 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !53
  %84 = icmp eq ptr %83, null
  %85 = icmp eq ptr %83, %2
  %86 = or i1 %84, %85
  br i1 %86, label %107, label %87

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.Object, ptr %83, i64 0, i32 3
  %89 = load i16, ptr %88, align 8, !tbaa !70
  %90 = icmp eq i16 %89, 1
  br i1 %90, label %91, label %107

91:                                               ; preds = %87
  %92 = tail call ptr @get_dm_for_modifier(ptr noundef nonnull %83, i32 noundef %4) #14
  %93 = icmp eq ptr %92, null
  br i1 %93, label %107, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.DerivedMesh, ptr %92, i64 0, i32 23
  %96 = load ptr, ptr %95, align 8, !tbaa !66
  %97 = tail call i32 %96(ptr noundef nonnull %92) #14
  %98 = getelementptr inbounds %struct.DerivedMesh, ptr %92, i64 0, i32 24
  %99 = load ptr, ptr %98, align 8, !tbaa !67
  %100 = tail call i32 %99(ptr noundef nonnull %92) #14
  %101 = getelementptr inbounds %struct.DerivedMesh, ptr %92, i64 0, i32 26
  %102 = load ptr, ptr %101, align 8, !tbaa !68
  %103 = tail call i32 %102(ptr noundef nonnull %92) #14
  %104 = getelementptr inbounds %struct.DerivedMesh, ptr %92, i64 0, i32 27
  %105 = load ptr, ptr %104, align 8, !tbaa !69
  %106 = tail call i32 %105(ptr noundef nonnull %92) #14
  br label %107

107:                                              ; preds = %91, %94, %87, %76
  %108 = phi i32 [ %97, %94 ], [ 0, %91 ], [ 0, %87 ], [ 0, %76 ]
  %109 = phi i32 [ %100, %94 ], [ 0, %91 ], [ 0, %87 ], [ 0, %76 ]
  %110 = phi i32 [ %106, %94 ], [ 0, %91 ], [ 0, %87 ], [ 0, %76 ]
  %111 = phi i32 [ %103, %94 ], [ 0, %91 ], [ 0, %87 ], [ 0, %76 ]
  %112 = phi ptr [ %92, %94 ], [ null, %91 ], [ null, %87 ], [ null, %76 ]
  call void @unit_m4(ptr noundef nonnull %6) #14
  %113 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 31
  %114 = load ptr, ptr %113, align 8, !tbaa !75
  %115 = call ptr %114(ptr noundef nonnull %3) #14
  %116 = load i32, ptr %26, align 4, !tbaa !49
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %107
  %120 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  %121 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 5
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %120, ptr noundef nonnull %120, ptr noundef nonnull %121) #15
  br label %122

122:                                              ; preds = %119, %107
  %123 = and i32 %116, 2
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %122, %125
  %126 = phi i64 [ %134, %125 ], [ 0, %122 ]
  %127 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 6, i64 %126
  %128 = load float, ptr %127, align 4, !tbaa !46
  %129 = trunc i64 %126 to i32
  %130 = call fastcc float @vertarray_size(ptr noundef %115, i32 noundef %39, i32 noundef %129) #15
  %131 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 %126
  %132 = load float, ptr %131, align 4, !tbaa !46
  %133 = call float @llvm.fmuladd.f32(float %128, float %130, float %132)
  store float %133, ptr %131, align 4, !tbaa !46
  %134 = add nuw nsw i64 %126, 1
  %135 = icmp eq i64 %134, 3
  br i1 %135, label %136, label %125, !llvm.loop !76

136:                                              ; preds = %125, %122
  br i1 %35, label %137, label %147

137:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #16
  %138 = icmp eq ptr %2, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %141 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %140) #14
  br label %143

142:                                              ; preds = %137
  call void @unit_m4(ptr noundef nonnull %10) #14
  br label %143

143:                                              ; preds = %142, %139
  %144 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 4
  %145 = load ptr, ptr %144, align 8, !tbaa !59
  %146 = getelementptr inbounds %struct.Object, ptr %145, i64 0, i32 47
  call void @_va_mul_m4_series_4(ptr noundef nonnull %11, ptr noundef nonnull %6, ptr noundef nonnull %10, ptr noundef nonnull %146) #14
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #16
  br label %147

147:                                              ; preds = %143, %136
  call void @mat4_to_size(ptr noundef nonnull %7, ptr noundef nonnull %6) #14
  %148 = call fastcc zeroext i8 @is_one_v3(ptr noundef nonnull %7) #15, !range !78
  %149 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 9
  %150 = load i32, ptr %149, align 8, !tbaa !48
  %151 = icmp eq i32 %150, 2
  br i1 %151, label %152, label %186

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !54
  %155 = icmp eq ptr %154, null
  br i1 %155, label %186, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.Object, ptr %154, i64 0, i32 19
  %158 = load ptr, ptr %157, align 8, !tbaa !79
  %159 = icmp eq ptr %158, null
  br i1 %159, label %186, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.Object, ptr %154, i64 0, i32 118
  %162 = load ptr, ptr %161, align 8, !tbaa !80
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  call void @BKE_displist_make_curveTypes(ptr noundef %1, ptr noundef nonnull %154, i8 noundef zeroext 0) #14
  %165 = load ptr, ptr %153, align 8, !tbaa !54
  %166 = getelementptr inbounds %struct.Object, ptr %165, i64 0, i32 118
  %167 = load ptr, ptr %166, align 8, !tbaa !80
  %168 = icmp eq ptr %167, null
  br i1 %168, label %186, label %169

169:                                              ; preds = %160, %164
  %170 = phi ptr [ %165, %164 ], [ %154, %160 ]
  %171 = phi ptr [ %167, %164 ], [ %162, %160 ]
  %172 = getelementptr inbounds %struct.CurveCache, ptr %171, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !81
  %174 = icmp eq ptr %173, null
  br i1 %174, label %186, label %175

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.Object, ptr %170, i64 0, i32 47
  %177 = call float @mat4_to_scale(ptr noundef nonnull %176) #14
  %178 = load ptr, ptr %153, align 8, !tbaa !54
  %179 = getelementptr inbounds %struct.Object, ptr %178, i64 0, i32 118
  %180 = load ptr, ptr %179, align 8, !tbaa !80
  %181 = getelementptr inbounds %struct.CurveCache, ptr %180, i64 0, i32 3
  %182 = load ptr, ptr %181, align 8, !tbaa !81
  %183 = getelementptr inbounds %struct.Path, ptr %182, i64 0, i32 2
  %184 = load float, ptr %183, align 4, !tbaa !83
  %185 = fmul float %177, %184
  br label %186

186:                                              ; preds = %156, %175, %169, %164, %152, %147
  %187 = phi float [ %16, %152 ], [ %16, %147 ], [ %185, %175 ], [ %16, %169 ], [ %16, %164 ], [ %16, %156 ]
  %188 = load i32, ptr %149, align 8, !tbaa !48
  %189 = add i32 %188, -1
  %190 = icmp ult i32 %189, 2
  br i1 %190, label %191, label %199

191:                                              ; preds = %186
  %192 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  %193 = call fastcc float @len_v3(ptr noundef nonnull %192) #15
  %194 = fcmp ogt float %193, 0x3EB0C6F7A0000000
  %195 = fadd float %187, 0x3EB0C6F7A0000000
  %196 = fdiv float %195, %193
  %197 = fptosi float %196 to i32
  %198 = select i1 %194, i32 %197, i32 1
  br label %199

199:                                              ; preds = %186, %191
  %200 = phi i32 [ %198, %191 ], [ %50, %186 ]
  %201 = call i32 @llvm.smax.i32(i32 %200, i32 1)
  %202 = mul nsw i32 %201, %39
  %203 = add nsw i32 %202, %80
  %204 = add nsw i32 %203, %108
  %205 = mul nsw i32 %201, %42
  %206 = add nsw i32 %205, %77
  %207 = add nsw i32 %206, %109
  %208 = mul nsw i32 %201, %45
  %209 = add nsw i32 %208, %79
  %210 = add nsw i32 %209, %111
  %211 = mul nsw i32 %201, %48
  %212 = add nsw i32 %211, %78
  %213 = add nsw i32 %212, %110
  %214 = call ptr @CDDM_from_template(ptr noundef %3, i32 noundef %204, i32 noundef %207, i32 noundef 0, i32 noundef %210, i32 noundef %213) #14
  %215 = call ptr @CDDM_get_verts(ptr noundef %214) #14
  %216 = icmp eq i32 %23, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %199
  %218 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !85
  %219 = sext i32 %204 to i64
  %220 = shl nsw i64 %219, 2
  %221 = call ptr %218(i64 noundef %220, ptr noundef nonnull @.str) #14
  call void @fill_vn_i(ptr noundef %221, i32 noundef %204, i32 noundef -1) #14
  br label %222

222:                                              ; preds = %217, %199
  %223 = phi ptr [ %221, %217 ], [ null, %199 ]
  call void @DM_copy_vert_data(ptr noundef %3, ptr noundef %214, i32 noundef 0, i32 noundef 0, i32 noundef %39) #14
  call void @DM_copy_edge_data(ptr noundef %3, ptr noundef %214, i32 noundef 0, i32 noundef 0, i32 noundef %42) #14
  call void @DM_copy_loop_data(ptr noundef %3, ptr noundef %214, i32 noundef 0, i32 noundef 0, i32 noundef %45) #14
  call void @DM_copy_poly_data(ptr noundef %3, ptr noundef %214, i32 noundef 0, i32 noundef 0, i32 noundef %48) #14
  %224 = call zeroext i8 @CustomData_has_layer(ptr noundef %3, i32 noundef 0) #14
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 36
  %228 = load ptr, ptr %227, align 8, !tbaa !86
  call void %228(ptr noundef %3, ptr noundef %215) #14
  br label %229

229:                                              ; preds = %226, %222
  %230 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 1
  %231 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %230, i32 noundef 3) #14
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 37
  %235 = load ptr, ptr %234, align 8, !tbaa !87
  %236 = call ptr @CDDM_get_edges(ptr noundef %214) #14
  call void %235(ptr noundef %3, ptr noundef %236) #14
  br label %237

237:                                              ; preds = %233, %229
  %238 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 4
  %239 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %238, i32 noundef 25) #14
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 39
  %243 = load ptr, ptr %242, align 8, !tbaa !88
  %244 = call ptr @CDDM_get_loops(ptr noundef %214) #14
  call void %243(ptr noundef %3, ptr noundef %244) #14
  %245 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 40
  %246 = load ptr, ptr %245, align 8, !tbaa !89
  %247 = call ptr @CDDM_get_polys(ptr noundef %214) #14
  call void %246(ptr noundef %3, ptr noundef %247) #14
  br label %248

248:                                              ; preds = %241, %237
  call void @unit_m4(ptr noundef nonnull %8) #14
  %249 = icmp sgt i32 %200, 1
  br i1 %249, label %250, label %366

250:                                              ; preds = %248
  %251 = icmp sgt i32 %39, 0
  %252 = icmp sgt i32 %42, 0
  %253 = icmp sgt i32 %48, 0
  %254 = icmp sgt i32 %45, 0
  %255 = icmp ne i8 %148, 0
  %256 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 8
  %257 = sext i32 %39 to i64
  %258 = sext i32 %42 to i64
  %259 = sext i32 %45 to i64
  %260 = sext i32 %48 to i64
  %261 = zext nneg i32 %200 to i64
  br label %262

262:                                              ; preds = %250, %361
  %263 = phi i64 [ 1, %250 ], [ %362, %361 ]
  %264 = phi i64 [ %257, %250 ], [ %364, %361 ]
  %265 = phi i32 [ 0, %250 ], [ %363, %361 ]
  %266 = trunc i64 %263 to i32
  %267 = sext i32 %265 to i64
  %268 = mul nsw i64 %263, %257
  %269 = mul nsw i32 %39, %266
  %270 = trunc i64 %268 to i32
  call void @DM_copy_vert_data(ptr noundef %214, ptr noundef %214, i32 noundef 0, i32 noundef %270, i32 noundef %39) #14
  %271 = mul nsw i64 %263, %258
  %272 = trunc i64 %271 to i32
  call void @DM_copy_edge_data(ptr noundef %214, ptr noundef %214, i32 noundef 0, i32 noundef %272, i32 noundef %42) #14
  %273 = mul nsw i64 %263, %259
  %274 = trunc i64 %273 to i32
  call void @DM_copy_loop_data(ptr noundef %214, ptr noundef %214, i32 noundef 0, i32 noundef %274, i32 noundef %45) #14
  %275 = mul nsw i64 %263, %260
  %276 = trunc i64 %275 to i32
  call void @DM_copy_poly_data(ptr noundef %214, ptr noundef %214, i32 noundef 0, i32 noundef %276, i32 noundef %48) #14
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %6) #14
  br i1 %251, label %277, label %288

277:                                              ; preds = %262
  %278 = getelementptr inbounds %struct.MVert, ptr %215, i64 %268
  br label %279

279:                                              ; preds = %277, %284
  %280 = phi ptr [ %286, %284 ], [ %278, %277 ]
  %281 = phi i32 [ %285, %284 ], [ 0, %277 ]
  call void @mul_m4_v3(ptr noundef nonnull %8, ptr noundef %280) #14
  br i1 %25, label %284, label %282

282:                                              ; preds = %279
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #16
  %283 = getelementptr inbounds %struct.MVert, ptr %280, i64 0, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %12, ptr noundef nonnull %283) #15
  call void @mul_mat3_m4_v3(ptr noundef nonnull %8, ptr noundef nonnull %12) #14
  call fastcc void @normalize_v3(ptr noundef nonnull %12) #15
  call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %283, ptr noundef nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #16
  br label %284

284:                                              ; preds = %279, %282
  %285 = add nuw nsw i32 %281, 1
  %286 = getelementptr inbounds %struct.MVert, ptr %280, i64 1
  %287 = icmp eq i32 %285, %39
  br i1 %287, label %288, label %279, !llvm.loop !90

288:                                              ; preds = %284, %262
  %289 = call ptr @CDDM_get_edges(ptr noundef %214) #14
  br i1 %252, label %290, label %302

290:                                              ; preds = %288
  %291 = getelementptr inbounds %struct.MEdge, ptr %289, i64 %271
  %292 = insertelement <2 x i32> poison, i32 %270, i64 0
  %293 = shufflevector <2 x i32> %292, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %294

294:                                              ; preds = %290, %294
  %295 = phi ptr [ %300, %294 ], [ %291, %290 ]
  %296 = phi i32 [ %299, %294 ], [ 0, %290 ]
  %297 = load <2 x i32>, ptr %295, align 4, !tbaa !91
  %298 = add <2 x i32> %297, %293
  store <2 x i32> %298, ptr %295, align 4, !tbaa !91
  %299 = add nuw nsw i32 %296, 1
  %300 = getelementptr inbounds %struct.MEdge, ptr %295, i64 1
  %301 = icmp eq i32 %299, %42
  br i1 %301, label %302, label %294, !llvm.loop !92

302:                                              ; preds = %294, %288
  %303 = call ptr @CDDM_get_polys(ptr noundef %214) #14
  br i1 %253, label %304, label %314

304:                                              ; preds = %302
  %305 = getelementptr inbounds %struct.MPoly, ptr %303, i64 %275
  br label %306

306:                                              ; preds = %304, %306
  %307 = phi ptr [ %312, %306 ], [ %305, %304 ]
  %308 = phi i32 [ %311, %306 ], [ 0, %304 ]
  %309 = load i32, ptr %307, align 4, !tbaa !93
  %310 = add nsw i32 %309, %274
  store i32 %310, ptr %307, align 4, !tbaa !93
  %311 = add nuw nsw i32 %308, 1
  %312 = getelementptr inbounds %struct.MPoly, ptr %307, i64 1
  %313 = icmp eq i32 %311, %48
  br i1 %313, label %314, label %306, !llvm.loop !95

314:                                              ; preds = %306, %302
  %315 = call ptr @CDDM_get_loops(ptr noundef %214) #14
  br i1 %254, label %316, label %329

316:                                              ; preds = %314
  %317 = getelementptr inbounds %struct.MLoop, ptr %315, i64 %273
  br label %318

318:                                              ; preds = %316, %318
  %319 = phi ptr [ %327, %318 ], [ %317, %316 ]
  %320 = phi i32 [ %326, %318 ], [ 0, %316 ]
  %321 = load i32, ptr %319, align 4, !tbaa !96
  %322 = add i32 %321, %270
  store i32 %322, ptr %319, align 4, !tbaa !96
  %323 = getelementptr inbounds %struct.MLoop, ptr %319, i64 0, i32 1
  %324 = load i32, ptr %323, align 4, !tbaa !98
  %325 = add i32 %324, %272
  store i32 %325, ptr %323, align 4, !tbaa !98
  %326 = add nuw nsw i32 %320, 1
  %327 = getelementptr inbounds %struct.MLoop, ptr %319, i64 1
  %328 = icmp eq i32 %326, %45
  br i1 %328, label %329, label %318, !llvm.loop !99

329:                                              ; preds = %318, %314
  br i1 %24, label %330, label %361

330:                                              ; preds = %329
  %331 = icmp ugt i64 %263, 1
  %332 = and i1 %255, %331
  br i1 %332, label %333, label %356

333:                                              ; preds = %330
  br i1 %251, label %334, label %361

334:                                              ; preds = %333, %349
  %335 = phi i64 [ %353, %349 ], [ %264, %333 ]
  %336 = phi i64 [ %354, %349 ], [ %267, %333 ]
  %337 = phi i32 [ %352, %349 ], [ 0, %333 ]
  %338 = getelementptr inbounds i32, ptr %223, i64 %336
  %339 = load i32, ptr %338, align 4, !tbaa !91
  %340 = icmp eq i32 %339, -1
  br i1 %340, label %349, label %341

341:                                              ; preds = %334
  %342 = add nsw i32 %339, %39
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, ptr %223, i64 %343
  %345 = load i32, ptr %344, align 4, !tbaa !91
  %346 = icmp eq i32 %345, -1
  %347 = select i1 %35, i32 %345, i32 -1
  %348 = select i1 %346, i32 %342, i32 %347
  br label %349

349:                                              ; preds = %341, %334
  %350 = phi i32 [ -1, %334 ], [ %348, %341 ]
  %351 = getelementptr inbounds i32, ptr %223, i64 %335
  store i32 %350, ptr %351, align 4, !tbaa !91
  %352 = add nuw nsw i32 %337, 1
  %353 = add nsw i64 %335, 1
  %354 = add nsw i64 %336, 1
  %355 = icmp eq i32 %352, %39
  br i1 %355, label %361, label %334, !llvm.loop !100

356:                                              ; preds = %330
  %357 = load float, ptr %256, align 4, !tbaa !47
  %358 = trunc i64 %263 to i32
  %359 = add i32 %358, -1
  %360 = mul i32 %359, %39
  call fastcc void @dm_mvert_map_doubles(ptr noundef %223, ptr noundef %215, i32 noundef %360, i32 noundef %39, i32 noundef %269, i32 noundef %39, float noundef %357, i8 noundef zeroext %36) #15
  br label %361

361:                                              ; preds = %349, %333, %329, %356
  %362 = add nuw nsw i64 %263, 1
  %363 = add i32 %265, %39
  %364 = add i64 %264, %257
  %365 = icmp eq i64 %362, %261
  br i1 %365, label %366, label %262, !llvm.loop !101

366:                                              ; preds = %361, %248
  %367 = add nsw i32 %201, -1
  %368 = mul nsw i32 %367, %39
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %8) #14
  br i1 %24, label %369, label %377

369:                                              ; preds = %366
  %370 = load i32, ptr %17, align 8, !tbaa !50
  %371 = and i32 %370, 2
  %372 = icmp ne i32 %371, 0
  %373 = and i1 %372, %249
  br i1 %373, label %374, label %377

374:                                              ; preds = %369
  %375 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 8
  %376 = load float, ptr %375, align 4, !tbaa !47
  call fastcc void @dm_mvert_map_doubles(ptr noundef %223, ptr noundef %215, i32 noundef %368, i32 noundef %39, i32 noundef 0, i32 noundef %39, float noundef %376, i8 noundef zeroext %36) #15
  br label %377

377:                                              ; preds = %374, %369, %366
  %378 = icmp eq ptr %81, null
  br i1 %378, label %385, label %379

379:                                              ; preds = %377
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #16
  %380 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %6) #14
  call fastcc void @dm_merge_transform(ptr noundef %214, ptr noundef nonnull %81, ptr noundef nonnull %13, i32 noundef %202, i32 noundef %205, i32 noundef %208, i32 noundef %211, i32 noundef %80, i32 noundef %77, i32 noundef %79, i32 noundef %78) #15
  br i1 %216, label %384, label %381

381:                                              ; preds = %379
  %382 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 8
  %383 = load float, ptr %382, align 4, !tbaa !47
  call fastcc void @dm_mvert_map_doubles(ptr noundef %223, ptr noundef %215, i32 noundef 0, i32 noundef %39, i32 noundef %202, i32 noundef %80, float noundef %383, i8 noundef zeroext 0) #15
  br label %384

384:                                              ; preds = %381, %379
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #16
  br label %385

385:                                              ; preds = %384, %377
  %386 = icmp eq ptr %112, null
  br i1 %386, label %392, label %387

387:                                              ; preds = %385
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #16
  call void @mul_m4_m4m4(ptr noundef nonnull %14, ptr noundef nonnull %8, ptr noundef nonnull %6) #14
  call fastcc void @dm_merge_transform(ptr noundef %214, ptr noundef nonnull %112, ptr noundef nonnull %14, i32 noundef %203, i32 noundef %206, i32 noundef %209, i32 noundef %212, i32 noundef %108, i32 noundef %109, i32 noundef %111, i32 noundef %110) #15
  br i1 %216, label %391, label %388

388:                                              ; preds = %387
  %389 = getelementptr inbounds %struct.ArrayModifierData, ptr %0, i64 0, i32 8
  %390 = load float, ptr %389, align 4, !tbaa !47
  call fastcc void @dm_mvert_map_doubles(ptr noundef %223, ptr noundef %215, i32 noundef %368, i32 noundef %39, i32 noundef %203, i32 noundef %108, float noundef %390, i8 noundef zeroext 0) #15
  br label %391

391:                                              ; preds = %388, %387
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #16
  br label %392

392:                                              ; preds = %391, %385
  br i1 %216, label %420, label %393

393:                                              ; preds = %392
  %394 = icmp sgt i32 %204, 0
  br i1 %394, label %395, label %417

395:                                              ; preds = %393
  %396 = zext nneg i32 %204 to i64
  br label %397

397:                                              ; preds = %395, %409
  %398 = phi i64 [ 0, %395 ], [ %411, %409 ]
  %399 = phi i32 [ 0, %395 ], [ %410, %409 ]
  %400 = getelementptr inbounds i32, ptr %223, i64 %398
  %401 = load i32, ptr %400, align 4, !tbaa !91
  %402 = icmp eq i32 %401, -1
  br i1 %402, label %409, label %403

403:                                              ; preds = %397
  %404 = zext i32 %401 to i64
  %405 = icmp eq i64 %398, %404
  br i1 %405, label %406, label %407

406:                                              ; preds = %403
  store i32 -1, ptr %400, align 4, !tbaa !91
  br label %409

407:                                              ; preds = %403
  %408 = add nsw i32 %399, 1
  br label %409

409:                                              ; preds = %397, %407, %406
  %410 = phi i32 [ %399, %406 ], [ %408, %407 ], [ %399, %397 ]
  %411 = add nuw nsw i64 %398, 1
  %412 = icmp eq i64 %411, %396
  br i1 %412, label %413, label %397, !llvm.loop !102

413:                                              ; preds = %409
  %414 = icmp sgt i32 %410, 0
  br i1 %414, label %415, label %417

415:                                              ; preds = %413
  %416 = call ptr @CDDM_merge_verts(ptr noundef %214, ptr noundef nonnull %223, i32 noundef %410, i32 noundef 1) #14
  br label %417

417:                                              ; preds = %393, %415, %413
  %418 = phi ptr [ %416, %415 ], [ %214, %413 ], [ %214, %393 ]
  %419 = load ptr, ptr @MEM_freeN, align 8, !tbaa !85
  call void %419(ptr noundef %223) #14
  br label %420

420:                                              ; preds = %417, %392
  %421 = phi ptr [ %418, %417 ], [ %214, %392 ]
  br i1 %25, label %422, label %426

422:                                              ; preds = %420
  %423 = getelementptr inbounds %struct.DerivedMesh, ptr %421, i64 0, i32 16
  %424 = load i32, ptr %423, align 8, !tbaa !63
  %425 = or i32 %424, 4
  store i32 %425, ptr %423, align 8, !tbaa !63
  br label %426

426:                                              ; preds = %422, %420
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  ret ptr %421
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @get_dm_for_modifier(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !103 {
  %4 = load float, ptr %1, align 4, !tbaa !46
  %5 = load float, ptr %2, align 4, !tbaa !46
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !46
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !46
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !46
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !46
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !46
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @vertarray_size(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 !PGOFuncName !104 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %3
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = icmp sgt i32 %1, 1
  br i1 %9, label %10, label %24

10:                                               ; preds = %5, %10
  %11 = phi float [ %21, %10 ], [ %8, %5 ]
  %12 = phi float [ %19, %10 ], [ %8, %5 ]
  %13 = phi i32 [ %22, %10 ], [ 1, %5 ]
  %14 = phi ptr [ %15, %10 ], [ %0, %5 ]
  %15 = getelementptr inbounds %struct.MVert, ptr %14, i64 1
  %16 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 %6
  %17 = load float, ptr %16, align 4, !tbaa !46
  %18 = fcmp olt float %17, %12
  %19 = select i1 %18, float %17, float %12
  %20 = fcmp ogt float %17, %11
  %21 = select i1 %20, float %17, float %11
  %22 = add nuw nsw i32 %13, 1
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %24, label %10, !llvm.loop !105

24:                                               ; preds = %10, %5
  %25 = phi float [ %8, %5 ], [ %19, %10 ]
  %26 = phi float [ %8, %5 ], [ %21, %10 ]
  %27 = fsub float %26, %25
  br label %28

28:                                               ; preds = %3, %24
  %29 = phi float [ %27, %24 ], [ 0.000000e+00, %3 ]
  ret float %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_va_mul_m4_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_one_v3(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !106 {
  %2 = load float, ptr %0, align 4, !tbaa !46
  %3 = fcmp oeq float %2, 1.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !46
  %7 = fcmp oeq float %6, 1.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !46
  %11 = fcmp oeq float %10, 1.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: optsize
declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare float @mat4_to_scale(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !107 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #15
  %3 = tail call float @sqrtf(float noundef %2) #14
  ret float %3
}

; Function Attrs: optsize
declare ptr @CDDM_from_template(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_get_verts(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fill_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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
declare ptr @CDDM_get_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_get_loops(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_get_polys(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !108 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !109
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !46
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !109
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #8 !PGOFuncName !110 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_float_to_short_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !111 {
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !46
  %4 = fmul <2 x float> %3, <float 3.276700e+04, float 3.276700e+04>
  %5 = fptosi <2 x float> %4 to <2 x i16>
  store <2 x i16> %5, ptr %0, align 2, !tbaa !109
  %6 = getelementptr inbounds float, ptr %1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !46
  %8 = fmul float %7, 3.276700e+04
  %9 = fptosi float %8 to i16
  %10 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %9, ptr %10, align 2, !tbaa !109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dm_mvert_map_doubles(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, i8 noundef zeroext %7) unnamed_addr #0 !PGOFuncName !112 {
  %9 = fpext float %6 to double
  %10 = fmul double %9, 0x3FFBB6AF561E0CAA
  %11 = fptrunc double %10 to float
  %12 = add nsw i32 %3, %2
  %13 = add nsw i32 %5, %4
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !85
  %15 = sext i32 %3 to i64
  %16 = mul nsw i64 %15, 20
  %17 = tail call ptr %14(i64 noundef %16, ptr noundef nonnull @__func__.dm_mvert_map_doubles) #14
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !85
  %19 = sext i32 %5 to i64
  %20 = mul nsw i64 %19, 20
  %21 = tail call ptr %18(i64 noundef %20, ptr noundef nonnull @__func__.dm_mvert_map_doubles) #14
  %22 = sext i32 %2 to i64
  %23 = getelementptr inbounds %struct.MVert, ptr %1, i64 %22
  tail call fastcc void @svert_from_mvert(ptr noundef %17, ptr noundef %23, i32 noundef %2, i32 noundef %12) #15
  %24 = sext i32 %4 to i64
  %25 = getelementptr inbounds %struct.MVert, ptr %1, i64 %24
  tail call fastcc void @svert_from_mvert(ptr noundef %21, ptr noundef %25, i32 noundef %4, i32 noundef %13) #15
  tail call void @qsort(ptr noundef %17, i64 noundef %15, i64 noundef 20, ptr noundef nonnull @svert_sum_cmp) #14
  tail call void @qsort(ptr noundef %21, i64 noundef %19, i64 noundef 20, ptr noundef nonnull @svert_sum_cmp) #14
  %26 = icmp sgt i32 %5, 0
  br i1 %26, label %27, label %96

27:                                               ; preds = %8
  %28 = icmp eq i8 %7, 0
  br label %29

29:                                               ; preds = %27, %89
  %30 = phi i32 [ 0, %27 ], [ %93, %89 ]
  %31 = phi i8 [ 0, %27 ], [ %92, %89 ]
  %32 = phi ptr [ %17, %27 ], [ %91, %89 ]
  %33 = phi ptr [ %21, %27 ], [ %94, %89 ]
  %34 = phi i32 [ 0, %27 ], [ %90, %89 ]
  %35 = load i32, ptr %33, align 4, !tbaa !113
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !91
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %89

40:                                               ; preds = %29
  %41 = icmp eq i8 %31, 0
  br i1 %41, label %42, label %84

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.SortVertsElem, ptr %33, i64 0, i32 1
  %44 = tail call fastcc float @sum_v3(ptr noundef nonnull %43) #15
  %45 = icmp slt i32 %34, %3
  br i1 %45, label %46, label %84

46:                                               ; preds = %42
  %47 = fsub float %44, %11
  br label %48

48:                                               ; preds = %46, %58
  %49 = phi ptr [ %32, %46 ], [ %60, %58 ]
  %50 = phi i32 [ %34, %46 ], [ %59, %58 ]
  %51 = getelementptr inbounds %struct.SortVertsElem, ptr %49, i64 0, i32 2
  %52 = load float, ptr %51, align 4, !tbaa !115
  %53 = fcmp olt float %52, %47
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = icmp slt i32 %50, %3
  br i1 %55, label %56, label %84

56:                                               ; preds = %54
  %57 = fadd float %44, %11
  br label %62

58:                                               ; preds = %48
  %59 = add i32 %50, 1
  %60 = getelementptr inbounds %struct.SortVertsElem, ptr %49, i64 1
  %61 = icmp eq i32 %59, %3
  br i1 %61, label %84, label %48, !llvm.loop !116

62:                                               ; preds = %56, %80
  %63 = phi ptr [ %49, %56 ], [ %82, %80 ]
  %64 = phi i32 [ %50, %56 ], [ %81, %80 ]
  %65 = getelementptr inbounds %struct.SortVertsElem, ptr %63, i64 0, i32 2
  %66 = load float, ptr %65, align 4, !tbaa !115
  %67 = fcmp ugt float %66, %57
  br i1 %67, label %84, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.SortVertsElem, ptr %63, i64 0, i32 1
  %70 = tail call fastcc zeroext i8 @compare_len_v3v3(ptr noundef nonnull %43, ptr noundef nonnull %69, float noundef %6) #15, !range !78
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load i32, ptr %63, align 4, !tbaa !113
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, ptr %0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !91
  %77 = icmp eq i32 %76, -1
  %78 = select i1 %28, i32 -1, i32 %76
  %79 = select i1 %77, i32 %73, i32 %78
  br label %84

80:                                               ; preds = %68
  %81 = add nsw i32 %64, 1
  %82 = getelementptr inbounds %struct.SortVertsElem, ptr %63, i64 1
  %83 = icmp slt i32 %81, %3
  br i1 %83, label %62, label %84, !llvm.loop !117

84:                                               ; preds = %58, %62, %80, %72, %54, %42, %40
  %85 = phi i32 [ -1, %40 ], [ -1, %42 ], [ -1, %54 ], [ %79, %72 ], [ -1, %80 ], [ -1, %62 ], [ -1, %58 ]
  %86 = phi i32 [ %34, %40 ], [ %34, %42 ], [ %50, %54 ], [ %50, %72 ], [ %50, %80 ], [ %50, %62 ], [ %3, %58 ]
  %87 = phi ptr [ %32, %40 ], [ %32, %42 ], [ %49, %54 ], [ %49, %72 ], [ %49, %80 ], [ %49, %62 ], [ %60, %58 ]
  %88 = phi i8 [ 1, %40 ], [ 1, %42 ], [ 0, %54 ], [ 0, %72 ], [ 0, %80 ], [ 0, %62 ], [ 1, %58 ]
  store i32 %85, ptr %37, align 4, !tbaa !91
  br label %89

89:                                               ; preds = %84, %29
  %90 = phi i32 [ %34, %29 ], [ %86, %84 ]
  %91 = phi ptr [ %32, %29 ], [ %87, %84 ]
  %92 = phi i8 [ %31, %29 ], [ %88, %84 ]
  %93 = add nuw nsw i32 %30, 1
  %94 = getelementptr inbounds %struct.SortVertsElem, ptr %33, i64 1
  %95 = icmp eq i32 %93, %5
  br i1 %95, label %96, label %29, !llvm.loop !118

96:                                               ; preds = %89, %8
  %97 = load ptr, ptr @MEM_freeN, align 8, !tbaa !85
  tail call void %97(ptr noundef %21) #14
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !85
  tail call void %98(ptr noundef %17) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dm_merge_transform(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #0 !PGOFuncName !119 {
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 31
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  %14 = tail call ptr %13(ptr noundef %1) #14
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 32
  %16 = load ptr, ptr %15, align 8, !tbaa !120
  %17 = tail call ptr %16(ptr noundef %1) #14
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 26
  %19 = load ptr, ptr %18, align 8, !tbaa !68
  %20 = tail call i32 %19(ptr noundef %1) #14
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 27
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  %23 = tail call i32 %22(ptr noundef %1) #14
  tail call void @DM_copy_vert_data(ptr noundef %1, ptr noundef %0, i32 noundef 0, i32 noundef %3, i32 noundef %7) #14
  tail call void @DM_copy_edge_data(ptr noundef %1, ptr noundef %0, i32 noundef 0, i32 noundef %4, i32 noundef %8) #14
  tail call void @DM_copy_loop_data(ptr noundef %1, ptr noundef %0, i32 noundef 0, i32 noundef %5, i32 noundef %9) #14
  tail call void @DM_copy_poly_data(ptr noundef %1, ptr noundef %0, i32 noundef 0, i32 noundef %6, i32 noundef %10) #14
  %24 = tail call ptr @CDDM_get_verts(ptr noundef %0) #14
  %25 = zext i32 %3 to i64
  %26 = icmp sgt i32 %7, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.MVert, ptr %24, i64 %25
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi ptr [ %35, %29 ], [ %28, %27 ]
  %31 = phi i32 [ %34, %29 ], [ 0, %27 ]
  tail call void @mul_m4_v3(ptr noundef %2, ptr noundef %30) #14
  %32 = getelementptr inbounds %struct.MVert, ptr %30, i64 0, i32 3
  store i8 0, ptr %32, align 1, !tbaa !121
  %33 = getelementptr inbounds %struct.MVert, ptr %30, i64 0, i32 2
  store i8 0, ptr %33, align 2, !tbaa !123
  %34 = add nuw nsw i32 %31, 1
  %35 = getelementptr inbounds %struct.MVert, ptr %30, i64 1
  %36 = icmp eq i32 %34, %7
  br i1 %36, label %37, label %29, !llvm.loop !124

37:                                               ; preds = %29, %11
  %38 = tail call ptr @CDDM_get_edges(ptr noundef %0) #14
  %39 = zext i32 %4 to i64
  %40 = icmp sgt i32 %8, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.MEdge, ptr %38, i64 %39
  %43 = insertelement <2 x i32> poison, i32 %3, i64 0
  %44 = shufflevector <2 x i32> %43, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %45

45:                                               ; preds = %41, %45
  %46 = phi ptr [ %51, %45 ], [ %42, %41 ]
  %47 = phi i32 [ %50, %45 ], [ 0, %41 ]
  %48 = load <2 x i32>, ptr %46, align 4, !tbaa !91
  %49 = add <2 x i32> %48, %44
  store <2 x i32> %49, ptr %46, align 4, !tbaa !91
  %50 = add nuw nsw i32 %47, 1
  %51 = getelementptr inbounds %struct.MEdge, ptr %46, i64 1
  %52 = icmp eq i32 %50, %8
  br i1 %52, label %53, label %45, !llvm.loop !125

53:                                               ; preds = %45, %37
  %54 = tail call ptr @CDDM_get_polys(ptr noundef %0) #14
  %55 = sext i32 %6 to i64
  %56 = icmp sgt i32 %10, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.MPoly, ptr %54, i64 %55
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi ptr [ %65, %59 ], [ %58, %57 ]
  %61 = phi i32 [ %64, %59 ], [ 0, %57 ]
  %62 = load i32, ptr %60, align 4, !tbaa !93
  %63 = add nsw i32 %62, %5
  store i32 %63, ptr %60, align 4, !tbaa !93
  %64 = add nuw nsw i32 %61, 1
  %65 = getelementptr inbounds %struct.MPoly, ptr %60, i64 1
  %66 = icmp eq i32 %64, %10
  br i1 %66, label %67, label %59, !llvm.loop !126

67:                                               ; preds = %59, %53
  %68 = tail call ptr @CDDM_get_loops(ptr noundef %0) #14
  %69 = sext i32 %5 to i64
  %70 = icmp sgt i32 %9, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.MLoop, ptr %68, i64 %69
  br label %73

73:                                               ; preds = %71, %73
  %74 = phi ptr [ %82, %73 ], [ %72, %71 ]
  %75 = phi i32 [ %81, %73 ], [ 0, %71 ]
  %76 = load i32, ptr %74, align 4, !tbaa !96
  %77 = add i32 %76, %3
  store i32 %77, ptr %74, align 4, !tbaa !96
  %78 = getelementptr inbounds %struct.MLoop, ptr %74, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !98
  %80 = add i32 %79, %4
  store i32 %80, ptr %78, align 4, !tbaa !98
  %81 = add nuw nsw i32 %75, 1
  %82 = getelementptr inbounds %struct.MLoop, ptr %74, i64 1
  %83 = icmp eq i32 %81, %9
  br i1 %83, label %84, label %73, !llvm.loop !127

84:                                               ; preds = %73, %67
  %85 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 50
  %86 = load ptr, ptr %85, align 8, !tbaa !128
  %87 = tail call ptr %86(ptr noundef %0, i32 noundef 7) #14
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds i32, ptr %87, i64 %25
  tail call void @fill_vn_i(ptr noundef nonnull %90, i32 noundef %7, i32 noundef -1) #14
  br label %91

91:                                               ; preds = %89, %84
  %92 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 51
  %93 = load ptr, ptr %92, align 8, !tbaa !129
  %94 = tail call ptr %93(ptr noundef nonnull %0, i32 noundef 7) #14
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds i32, ptr %94, i64 %39
  tail call void @fill_vn_i(ptr noundef nonnull %97, i32 noundef %8, i32 noundef -1) #14
  br label %98

98:                                               ; preds = %96, %91
  %99 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 54
  %100 = load ptr, ptr %99, align 8, !tbaa !130
  %101 = tail call ptr %100(ptr noundef nonnull %0, i32 noundef 7) #14
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds i32, ptr %101, i64 %55
  tail call void @fill_vn_i(ptr noundef nonnull %104, i32 noundef %10, i32 noundef -1) #14
  br label %105

105:                                              ; preds = %103, %98
  %106 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 53
  %107 = load ptr, ptr %106, align 8, !tbaa !131
  %108 = tail call ptr %107(ptr noundef nonnull %0, i32 noundef 7) #14
  %109 = icmp eq ptr %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds i32, ptr %108, i64 %69
  tail call void @fill_vn_i(ptr noundef nonnull %111, i32 noundef %9, i32 noundef -1) #14
  br label %112

112:                                              ; preds = %110, %105
  ret void
}

; Function Attrs: optsize
declare ptr @CDDM_merge_verts(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !132 {
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

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !133 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #15
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #14
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #15
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #15
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !134 {
  %4 = load float, ptr %1, align 4, !tbaa !46
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !46
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !46
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !46
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !46
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #1 !PGOFuncName !135 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !46
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !46
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @svert_from_mvert(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 !PGOFuncName !136 {
  %5 = icmp slt i32 %2, %3
  br i1 %5, label %6, label %17

6:                                                ; preds = %4, %6
  %7 = phi i32 [ %13, %6 ], [ %2, %4 ]
  %8 = phi ptr [ %14, %6 ], [ %0, %4 ]
  %9 = phi ptr [ %15, %6 ], [ %1, %4 ]
  store i32 %7, ptr %8, align 4, !tbaa !113
  %10 = getelementptr inbounds %struct.SortVertsElem, ptr %8, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %9) #15
  %11 = tail call fastcc float @sum_v3(ptr noundef %9) #15
  %12 = getelementptr inbounds %struct.SortVertsElem, ptr %8, i64 0, i32 2
  store float %11, ptr %12, align 4, !tbaa !115
  %13 = add nsw i32 %7, 1
  %14 = getelementptr inbounds %struct.SortVertsElem, ptr %8, i64 1
  %15 = getelementptr inbounds %struct.MVert, ptr %9, i64 1
  %16 = icmp eq i32 %13, %3
  br i1 %16, label %17, label %6, !llvm.loop !137

17:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @svert_sum_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 !PGOFuncName !138 {
  %3 = getelementptr inbounds %struct.SortVertsElem, ptr %0, i64 0, i32 2
  %4 = load float, ptr %3, align 4, !tbaa !115
  %5 = getelementptr inbounds %struct.SortVertsElem, ptr %1, i64 0, i32 2
  %6 = load float, ptr %5, align 4, !tbaa !115
  %7 = fcmp ogt float %4, %6
  %8 = fcmp olt float %4, %6
  %9 = sext i1 %8 to i32
  %10 = select i1 %7, i32 1, i32 %9
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @sum_v3(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !139 {
  %2 = load float, ptr %0, align 4, !tbaa !46
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !46
  %5 = fadd float %2, %4
  %6 = getelementptr inbounds float, ptr %0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !46
  %8 = fadd float %5, %7
  ret float %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @compare_len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 !PGOFuncName !140 {
  %4 = load float, ptr %0, align 4, !tbaa !46
  %5 = load float, ptr %1, align 4, !tbaa !46
  %6 = fsub float %4, %5
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !46
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !46
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !46
  %16 = fsub float %13, %15
  %17 = fmul float %11, %11
  %18 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %17)
  %19 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %18)
  %20 = fmul float %2, %2
  %21 = fcmp ole float %19, %20
  %22 = zext i1 %21 to i8
  ret i8 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !141 {
  %3 = load float, ptr %1, align 4, !tbaa !46
  store float %3, ptr %0, align 4, !tbaa !46
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !46
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }

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
!34 = !{!"MOD_array.c:copyData"}
!35 = !{!"MOD_array.c:applyModifier"}
!36 = !{!37, !38, i64 96}
!37 = !{!"ModifierData", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !38, i64 96, !38, i64 104}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"MOD_array.c:initData"}
!43 = !{!44, !41, i64 188}
!44 = !{!"ArrayModifierData", !37, i64 0, !38, i64 112, !38, i64 120, !38, i64 128, !38, i64 136, !39, i64 144, !39, i64 156, !45, i64 168, !45, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188}
!45 = !{!"float", !39, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!44, !45, i64 172}
!48 = !{!44, !41, i64 176}
!49 = !{!44, !41, i64 180}
!50 = !{!44, !41, i64 184}
!51 = !{!"MOD_array.c:updateDepgraph"}
!52 = !{!44, !38, i64 112}
!53 = !{!44, !38, i64 120}
!54 = !{!44, !38, i64 128}
!55 = !{!56, !57, i64 118}
!56 = !{!"DagNode", !41, i64 0, !57, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !38, i64 24, !38, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !58, i64 56, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !41, i64 112, !39, i64 116, !57, i64 118}
!57 = !{!"short", !39, i64 0}
!58 = !{!"long", !39, i64 0}
!59 = !{!44, !38, i64 136}
!60 = !{!"MOD_array.c:foreachObjectLink"}
!61 = !{!"MOD_array.c:arrayModifier_doArray"}
!62 = !{!44, !45, i64 168}
!63 = !{!64, !41, i64 1056}
!64 = !{!"DerivedMesh", !65, i64 0, !65, i64 200, !65, i64 400, !65, i64 600, !65, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !38, i64 1032, !38, i64 1040, !41, i64 1048, !45, i64 1052, !41, i64 1056, !41, i64 1060, !38, i64 1064, !39, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!65 = !{!"CustomData", !38, i64 0, !39, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!66 = !{!64, !38, i64 1104}
!67 = !{!64, !38, i64 1112}
!68 = !{!64, !38, i64 1128}
!69 = !{!64, !38, i64 1136}
!70 = !{!71, !57, i64 136}
!71 = !{!"Object", !72, i64 0, !38, i64 120, !38, i64 128, !57, i64 136, !57, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !39, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !73, i64 312, !38, i64 360, !74, i64 368, !74, i64 384, !74, i64 400, !74, i64 416, !41, i64 432, !41, i64 436, !38, i64 440, !38, i64 448, !41, i64 456, !41, i64 460, !39, i64 464, !39, i64 476, !39, i64 488, !39, i64 500, !39, i64 512, !39, i64 524, !39, i64 536, !39, i64 548, !39, i64 560, !39, i64 576, !39, i64 592, !39, i64 604, !45, i64 616, !45, i64 620, !39, i64 624, !39, i64 688, !39, i64 752, !39, i64 816, !39, i64 880, !41, i64 944, !57, i64 948, !57, i64 950, !57, i64 952, !57, i64 954, !57, i64 956, !57, i64 958, !57, i64 960, !57, i64 962, !57, i64 964, !39, i64 966, !39, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !57, i64 1036, !57, i64 1038, !57, i64 1040, !39, i64 1042, !39, i64 1043, !57, i64 1044, !39, i64 1046, !39, i64 1047, !45, i64 1048, !45, i64 1052, !74, i64 1056, !74, i64 1072, !74, i64 1088, !74, i64 1104, !45, i64 1120, !57, i64 1124, !57, i64 1126, !39, i64 1128, !41, i64 1144, !41, i64 1148, !38, i64 1152, !39, i64 1160, !39, i64 1161, !57, i64 1162, !39, i64 1164, !74, i64 1176, !74, i64 1192, !74, i64 1208, !74, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !39, i64 1264, !39, i64 1265, !57, i64 1266, !45, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !58, i64 1304, !58, i64 1312, !41, i64 1320, !41, i64 1324, !74, i64 1328, !74, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !39, i64 1384, !38, i64 1392, !74, i64 1400, !38, i64 1416}
!72 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !57, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !38, i64 112}
!73 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !57, i64 16, !57, i64 18, !57, i64 20, !57, i64 22, !57, i64 24, !57, i64 26, !57, i64 28, !57, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!74 = !{!"ListBase", !38, i64 0, !38, i64 8}
!75 = !{!64, !38, i64 1168}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{i8 0, i8 2}
!79 = !{!71, !38, i64 296}
!80 = !{!71, !38, i64 1280}
!81 = !{!82, !38, i64 48}
!82 = !{!"CurveCache", !74, i64 0, !74, i64 16, !74, i64 32, !38, i64 48}
!83 = !{!84, !45, i64 12}
!84 = !{!"Path", !38, i64 0, !41, i64 8, !45, i64 12}
!85 = !{!38, !38, i64 0}
!86 = !{!64, !38, i64 1208}
!87 = !{!64, !38, i64 1216}
!88 = !{!64, !38, i64 1232}
!89 = !{!64, !38, i64 1240}
!90 = distinct !{!90, !77}
!91 = !{!41, !41, i64 0}
!92 = distinct !{!92, !77}
!93 = !{!94, !41, i64 0}
!94 = !{!"MPoly", !41, i64 0, !41, i64 4, !57, i64 8, !39, i64 10, !39, i64 11}
!95 = distinct !{!95, !77}
!96 = !{!97, !41, i64 0}
!97 = !{!"MLoop", !41, i64 0, !41, i64 4}
!98 = !{!97, !41, i64 4}
!99 = distinct !{!99, !77}
!100 = distinct !{!100, !77}
!101 = distinct !{!101, !77}
!102 = distinct !{!102, !77}
!103 = !{!"MOD_array.c:add_v3_v3v3"}
!104 = !{!"MOD_array.c:vertarray_size"}
!105 = distinct !{!105, !77}
!106 = !{!"MOD_array.c:is_one_v3"}
!107 = !{!"MOD_array.c:len_v3"}
!108 = !{!"MOD_array.c:normal_short_to_float_v3"}
!109 = !{!57, !57, i64 0}
!110 = !{!"MOD_array.c:normalize_v3"}
!111 = !{!"MOD_array.c:normal_float_to_short_v3"}
!112 = !{!"MOD_array.c:dm_mvert_map_doubles"}
!113 = !{!114, !41, i64 0}
!114 = !{!"SortVertsElem", !41, i64 0, !39, i64 4, !45, i64 16}
!115 = !{!114, !45, i64 16}
!116 = distinct !{!116, !77}
!117 = distinct !{!117, !77}
!118 = distinct !{!118, !77}
!119 = !{!"MOD_array.c:dm_merge_transform"}
!120 = !{!64, !38, i64 1176}
!121 = !{!122, !39, i64 19}
!122 = !{!"MVert", !39, i64 0, !39, i64 12, !39, i64 18, !39, i64 19}
!123 = !{!122, !39, i64 18}
!124 = distinct !{!124, !77}
!125 = distinct !{!125, !77}
!126 = distinct !{!126, !77}
!127 = distinct !{!127, !77}
!128 = !{!64, !38, i64 1320}
!129 = !{!64, !38, i64 1328}
!130 = !{!64, !38, i64 1352}
!131 = !{!64, !38, i64 1344}
!132 = !{!"MOD_array.c:dot_v3v3"}
!133 = !{!"MOD_array.c:normalize_v3_v3"}
!134 = !{!"MOD_array.c:mul_v3_v3fl"}
!135 = !{!"MOD_array.c:zero_v3"}
!136 = !{!"MOD_array.c:svert_from_mvert"}
!137 = distinct !{!137, !77}
!138 = !{!"MOD_array.c:svert_sum_cmp"}
!139 = !{!"MOD_array.c:sum_v3"}
!140 = !{!"MOD_array.c:compare_len_v3v3"}
!141 = !{!"MOD_array.c:copy_v3_v3"}
