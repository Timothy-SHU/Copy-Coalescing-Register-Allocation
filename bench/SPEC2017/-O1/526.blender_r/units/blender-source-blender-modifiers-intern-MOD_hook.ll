; ModuleID = 'blender/source/blender/modifiers/intern/MOD_hook.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.HookModifierData = type { %struct.ModifierData, ptr, [64 x i8], [4 x [4 x float]], [3 x float], float, ptr, i32, float, [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }

@modifierType_Hook = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Hook\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"HookModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 344, i32 1, i32 10, ptr @copyData, ptr @deformVerts, ptr null, ptr @deformVertsEM, ptr null, ptr null, ptr null, ptr @initData, ptr @requiredDataMask, ptr @freeData, ptr @isDisabled, ptr @updateDepgraph, ptr null, ptr null, ptr @foreachObjectLink, ptr null, ptr null }, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"Hook Modifier\00", align 1

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #6
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call ptr %3(ptr noundef %5) #6
  %7 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 6
  store ptr %6, ptr %7, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !43
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 9
  %14 = load i8, ptr %13, align 8, !tbaa !50
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  br label %18

18:                                               ; preds = %16, %12, %8, %6
  %19 = phi ptr [ %2, %6 ], [ %17, %16 ], [ null, %12 ], [ null, %8 ]
  tail call fastcc void @deformVerts_do(ptr noundef %0, ptr noundef %1, ptr noundef %19, ptr noundef %3, i32 noundef %4)
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 95
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  tail call void %23(ptr noundef %19) #6
  br label %24

24:                                               ; preds = %21, %18
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = icmp eq ptr %3, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !43
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 9
  %14 = load i8, ptr %13, align 8, !tbaa !50
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @get_dm(ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  br label %18

18:                                               ; preds = %16, %12, %8, %6
  %19 = phi ptr [ %3, %6 ], [ %17, %16 ], [ null, %12 ], [ null, %8 ]
  tail call fastcc void @deformVerts_do(ptr noundef %0, ptr noundef %1, ptr noundef %19, ptr noundef %4, i32 noundef %5)
  %20 = icmp eq ptr %19, %3
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 95
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  tail call void %23(ptr noundef %19) #6
  br label %24

24:                                               ; preds = %21, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 8
  store float 1.000000e+00, ptr %2, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 9
  %4 = load i8, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  %7 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = icmp eq ptr %8, null
  %10 = or disjoint i64 %6, 128
  %11 = select i1 %9, i64 %6, i64 %10
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define internal void @freeData(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #6
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #2 {
  %3 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #6
  %11 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 2
  %12 = load i8, ptr %11, align 8, !tbaa !50
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i16 8, i16 40
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext %14, ptr noundef nonnull @.str) #6
  br label %15

15:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @deformVerts_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 2
  %16 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %14, ptr noundef nonnull %15) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #6
  %17 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 5
  %18 = load float, ptr %17, align 4, !tbaa !57
  %19 = fmul float %18, %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  %20 = load i8, ptr %15, align 8, !tbaa !50
  %21 = icmp ne i8 %20, 0
  %22 = icmp ne ptr %16, null
  %23 = select i1 %21, i1 %22, i1 false
  %24 = load ptr, ptr %11, align 8, !tbaa !55
  %25 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 47
  br i1 %23, label %26, label %28

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 29
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %25, ptr noundef nonnull %27) #6
  br label %29

28:                                               ; preds = %5
  call void @copy_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %25) #6
  br label %29

29:                                               ; preds = %28, %26
  %30 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %31 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %32 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %30, ptr noundef nonnull %31) #6
  %33 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 3
  call void @_va_mul_m4_series_4(ptr noundef nonnull %7, ptr noundef nonnull %30, ptr noundef nonnull %8, ptr noundef nonnull %33) #6
  %34 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 9
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %34, ptr noundef nonnull %9, ptr noundef nonnull %10) #6
  %35 = load ptr, ptr %9, align 8, !tbaa !34
  %36 = icmp ne ptr %35, null
  %37 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 8
  %38 = load float, ptr %37, align 4, !tbaa !54
  %39 = fcmp oeq float %38, 0.000000e+00
  br i1 %39, label %244, label %40

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !38
  %43 = icmp eq ptr %42, null
  br i1 %43, label %190, label %44

44:                                               ; preds = %40
  %45 = icmp eq ptr %2, null
  br i1 %45, label %126, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 50
  %48 = load ptr, ptr %47, align 8, !tbaa !58
  %49 = call ptr %48(ptr noundef nonnull %2, i32 noundef 7) #6
  %50 = icmp eq ptr %49, null
  br i1 %50, label %126, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !59
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %244

55:                                               ; preds = %51
  %56 = load ptr, ptr %41, align 8, !tbaa !38
  %57 = icmp slt i32 %4, 1
  %58 = fcmp une float %19, 0.000000e+00
  %59 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 4
  %60 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 4, i64 1
  %61 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 4, i64 2
  %62 = zext i32 %4 to i64
  br label %63

63:                                               ; preds = %55, %121
  %64 = phi i32 [ 0, %55 ], [ %122, %121 ]
  %65 = phi ptr [ %56, %55 ], [ %123, %121 ]
  %66 = load i32, ptr %65, align 4, !tbaa !60
  %67 = icmp sge i32 %66, %4
  %68 = or i1 %67, %57
  br i1 %68, label %121, label %69

69:                                               ; preds = %63, %118
  %70 = phi i64 [ %119, %118 ], [ 0, %63 ]
  %71 = getelementptr inbounds i32, ptr %49, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !60
  %73 = load i32, ptr %65, align 4, !tbaa !60
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %118

75:                                               ; preds = %69
  %76 = getelementptr inbounds [3 x float], ptr %3, i64 %70
  br i1 %58, label %77, label %102

77:                                               ; preds = %75
  %78 = load float, ptr %76, align 4, !tbaa !61
  %79 = load float, ptr %59, align 4, !tbaa !61
  %80 = fsub float %78, %79
  %81 = getelementptr inbounds float, ptr %76, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !61
  %83 = load float, ptr %60, align 4, !tbaa !61
  %84 = fsub float %82, %83
  %85 = getelementptr inbounds float, ptr %76, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !61
  %87 = load float, ptr %61, align 4, !tbaa !61
  %88 = fsub float %86, %87
  %89 = fmul float %84, %84
  %90 = call float @llvm.fmuladd.f32(float %80, float %80, float %89)
  %91 = call float @llvm.fmuladd.f32(float %88, float %88, float %90)
  %92 = fcmp ogt float %91, %19
  br i1 %92, label %99, label %93

93:                                               ; preds = %77
  %94 = fcmp ogt float %91, 0.000000e+00
  br i1 %94, label %95, label %99

95:                                               ; preds = %93
  %96 = fdiv float %91, %19
  %97 = fsub float 1.000000e+00, %96
  %98 = fmul float %38, %97
  br label %99

99:                                               ; preds = %95, %93, %77
  %100 = phi float [ %98, %95 ], [ 0.000000e+00, %77 ], [ undef, %93 ]
  %101 = phi i1 [ false, %95 ], [ false, %77 ], [ true, %93 ]
  br i1 %101, label %102, label %103

102:                                              ; preds = %99, %75
  br label %103

103:                                              ; preds = %99, %102
  %104 = phi float [ %100, %99 ], [ %38, %102 ]
  %105 = fcmp une float %104, 0.000000e+00
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = load ptr, ptr %9, align 8, !tbaa !34
  %108 = icmp eq ptr %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.MDeformVert, ptr %107, i64 %70
  %111 = load i32, ptr %10, align 4, !tbaa !60
  %112 = call float @defvert_find_weight(ptr noundef nonnull %110, i32 noundef %111) #6
  %113 = fmul float %104, %112
  br label %114

114:                                              ; preds = %109, %106
  %115 = phi float [ %113, %109 ], [ %104, %106 ]
  %116 = fcmp une float %115, 0.000000e+00
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %76) #6
  call void @interp_v3_v3v3(ptr noundef %76, ptr noundef %76, ptr noundef nonnull %6, float noundef %115) #6
  br label %118

118:                                              ; preds = %103, %117, %114, %69
  %119 = add nuw nsw i64 %70, 1
  %120 = icmp eq i64 %119, %62
  br i1 %120, label %121, label %69, !llvm.loop !62

121:                                              ; preds = %118, %63
  %122 = add nuw nsw i32 %64, 1
  %123 = getelementptr inbounds i32, ptr %65, i64 1
  %124 = load i32, ptr %52, align 8, !tbaa !59
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %63, label %244, !llvm.loop !65

126:                                              ; preds = %46, %44
  %127 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 7
  %128 = load i32, ptr %127, align 8, !tbaa !59
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %244

130:                                              ; preds = %126
  %131 = load ptr, ptr %41, align 8, !tbaa !38
  %132 = fcmp une float %19, 0.000000e+00
  %133 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 4
  %134 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 4, i64 1
  %135 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 4, i64 2
  br label %136

136:                                              ; preds = %130, %185
  %137 = phi i32 [ 0, %130 ], [ %186, %185 ]
  %138 = phi ptr [ %131, %130 ], [ %187, %185 ]
  %139 = load i32, ptr %138, align 4, !tbaa !60
  %140 = icmp slt i32 %139, %4
  br i1 %140, label %141, label %185

141:                                              ; preds = %136
  %142 = sext i32 %139 to i64
  %143 = getelementptr inbounds [3 x float], ptr %3, i64 %142
  br i1 %132, label %144, label %169

144:                                              ; preds = %141
  %145 = load float, ptr %143, align 4, !tbaa !61
  %146 = load float, ptr %133, align 4, !tbaa !61
  %147 = fsub float %145, %146
  %148 = getelementptr inbounds float, ptr %143, i64 1
  %149 = load float, ptr %148, align 4, !tbaa !61
  %150 = load float, ptr %134, align 4, !tbaa !61
  %151 = fsub float %149, %150
  %152 = getelementptr inbounds float, ptr %143, i64 2
  %153 = load float, ptr %152, align 4, !tbaa !61
  %154 = load float, ptr %135, align 4, !tbaa !61
  %155 = fsub float %153, %154
  %156 = fmul float %151, %151
  %157 = call float @llvm.fmuladd.f32(float %147, float %147, float %156)
  %158 = call float @llvm.fmuladd.f32(float %155, float %155, float %157)
  %159 = fcmp ogt float %158, %19
  br i1 %159, label %166, label %160

160:                                              ; preds = %144
  %161 = fcmp ogt float %158, 0.000000e+00
  br i1 %161, label %162, label %166

162:                                              ; preds = %160
  %163 = fdiv float %158, %19
  %164 = fsub float 1.000000e+00, %163
  %165 = fmul float %38, %164
  br label %166

166:                                              ; preds = %162, %160, %144
  %167 = phi float [ %165, %162 ], [ 0.000000e+00, %144 ], [ undef, %160 ]
  %168 = phi i1 [ false, %162 ], [ false, %144 ], [ true, %160 ]
  br i1 %168, label %169, label %170

169:                                              ; preds = %166, %141
  br label %170

170:                                              ; preds = %166, %169
  %171 = phi float [ %167, %166 ], [ %38, %169 ]
  %172 = fcmp une float %171, 0.000000e+00
  br i1 %172, label %173, label %185

173:                                              ; preds = %170
  %174 = load ptr, ptr %9, align 8, !tbaa !34
  %175 = icmp eq ptr %174, null
  br i1 %175, label %181, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.MDeformVert, ptr %174, i64 %142
  %178 = load i32, ptr %10, align 4, !tbaa !60
  %179 = call float @defvert_find_weight(ptr noundef nonnull %177, i32 noundef %178) #6
  %180 = fmul float %171, %179
  br label %181

181:                                              ; preds = %176, %173
  %182 = phi float [ %180, %176 ], [ %171, %173 ]
  %183 = fcmp une float %182, 0.000000e+00
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %143) #6
  call void @interp_v3_v3v3(ptr noundef %143, ptr noundef %143, ptr noundef nonnull %6, float noundef %182) #6
  br label %185

185:                                              ; preds = %170, %184, %181, %136
  %186 = add nuw nsw i32 %137, 1
  %187 = getelementptr inbounds i32, ptr %138, i64 1
  %188 = load i32, ptr %127, align 8, !tbaa !59
  %189 = icmp slt i32 %186, %188
  br i1 %189, label %136, label %244, !llvm.loop !66

190:                                              ; preds = %40
  %191 = icmp sgt i32 %4, 0
  %192 = and i1 %36, %191
  br i1 %192, label %193, label %244

193:                                              ; preds = %190
  %194 = fcmp une float %19, 0.000000e+00
  %195 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 4
  %196 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 4, i64 1
  %197 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 4, i64 2
  %198 = sext i32 %4 to i64
  br label %199

199:                                              ; preds = %193, %238
  %200 = phi i64 [ 0, %193 ], [ %239, %238 ]
  %201 = getelementptr inbounds [3 x float], ptr %3, i64 %200
  br i1 %194, label %202, label %227

202:                                              ; preds = %199
  %203 = load float, ptr %201, align 4, !tbaa !61
  %204 = load float, ptr %195, align 4, !tbaa !61
  %205 = fsub float %203, %204
  %206 = getelementptr inbounds float, ptr %201, i64 1
  %207 = load float, ptr %206, align 4, !tbaa !61
  %208 = load float, ptr %196, align 4, !tbaa !61
  %209 = fsub float %207, %208
  %210 = getelementptr inbounds float, ptr %201, i64 2
  %211 = load float, ptr %210, align 4, !tbaa !61
  %212 = load float, ptr %197, align 4, !tbaa !61
  %213 = fsub float %211, %212
  %214 = fmul float %209, %209
  %215 = call float @llvm.fmuladd.f32(float %205, float %205, float %214)
  %216 = call float @llvm.fmuladd.f32(float %213, float %213, float %215)
  %217 = fcmp ogt float %216, %19
  br i1 %217, label %224, label %218

218:                                              ; preds = %202
  %219 = fcmp ogt float %216, 0.000000e+00
  br i1 %219, label %220, label %224

220:                                              ; preds = %218
  %221 = fdiv float %216, %19
  %222 = fsub float 1.000000e+00, %221
  %223 = fmul float %38, %222
  br label %224

224:                                              ; preds = %220, %218, %202
  %225 = phi float [ %223, %220 ], [ 0.000000e+00, %202 ], [ undef, %218 ]
  %226 = phi i1 [ false, %220 ], [ false, %202 ], [ true, %218 ]
  br i1 %226, label %227, label %228

227:                                              ; preds = %224, %199
  br label %228

228:                                              ; preds = %224, %227
  %229 = phi float [ %225, %224 ], [ %38, %227 ]
  %230 = fcmp une float %229, 0.000000e+00
  br i1 %230, label %231, label %238

231:                                              ; preds = %228
  %232 = load ptr, ptr %9, align 8, !tbaa !34
  %233 = load i32, ptr %10, align 4, !tbaa !60
  %234 = call float @defvert_find_weight(ptr noundef %232, i32 noundef %233) #6
  %235 = fmul float %229, %234
  %236 = fcmp une float %235, 0.000000e+00
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %201) #6
  call void @interp_v3_v3v3(ptr noundef %201, ptr noundef %201, ptr noundef nonnull %6, float noundef %235) #6
  br label %238

238:                                              ; preds = %231, %237, %228
  %239 = add nuw nsw i64 %200, 1
  %240 = load ptr, ptr %9, align 8, !tbaa !34
  %241 = getelementptr inbounds %struct.MDeformVert, ptr %240, i64 1
  store ptr %241, ptr %9, align 8, !tbaa !34
  %242 = icmp slt i64 %239, %198
  %243 = select i1 %36, i1 %242, i1 false
  br i1 %243, label %199, label %244, !llvm.loop !67

244:                                              ; preds = %121, %185, %238, %51, %126, %190, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  ret void
}

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_va_mul_m4_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 264}
!39 = !{!"HookModifierData", !40, i64 0, !35, i64 112, !36, i64 120, !36, i64 184, !36, i64 248, !42, i64 260, !35, i64 264, !41, i64 272, !42, i64 276, !36, i64 280}
!40 = !{!"ModifierData", !35, i64 0, !35, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !36, i64 32, !35, i64 96, !35, i64 104}
!41 = !{!"int", !36, i64 0}
!42 = !{!"float", !36, i64 0}
!43 = !{!44, !46, i64 136}
!44 = !{!"Object", !45, i64 0, !35, i64 120, !35, i64 128, !46, i64 136, !46, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !47, i64 312, !35, i64 360, !48, i64 368, !48, i64 384, !48, i64 400, !48, i64 416, !41, i64 432, !41, i64 436, !35, i64 440, !35, i64 448, !41, i64 456, !41, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !42, i64 616, !42, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !41, i64 944, !46, i64 948, !46, i64 950, !46, i64 952, !46, i64 954, !46, i64 956, !46, i64 958, !46, i64 960, !46, i64 962, !46, i64 964, !36, i64 966, !36, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !42, i64 988, !42, i64 992, !42, i64 996, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !42, i64 1028, !42, i64 1032, !46, i64 1036, !46, i64 1038, !46, i64 1040, !36, i64 1042, !36, i64 1043, !46, i64 1044, !36, i64 1046, !36, i64 1047, !42, i64 1048, !42, i64 1052, !48, i64 1056, !48, i64 1072, !48, i64 1088, !48, i64 1104, !42, i64 1120, !46, i64 1124, !46, i64 1126, !36, i64 1128, !41, i64 1144, !41, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !46, i64 1162, !36, i64 1164, !48, i64 1176, !48, i64 1192, !48, i64 1208, !48, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !46, i64 1266, !42, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !49, i64 1304, !49, i64 1312, !41, i64 1320, !41, i64 1324, !48, i64 1328, !48, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !48, i64 1400, !35, i64 1416}
!45 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !46, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !35, i64 112}
!46 = !{!"short", !36, i64 0}
!47 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !46, i64 16, !46, i64 18, !46, i64 20, !46, i64 22, !46, i64 24, !46, i64 26, !46, i64 28, !46, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!48 = !{!"ListBase", !35, i64 0, !35, i64 8}
!49 = !{!"long", !36, i64 0}
!50 = !{!36, !36, i64 0}
!51 = !{!52, !35, i64 1680}
!52 = !{!"DerivedMesh", !53, i64 0, !53, i64 200, !53, i64 400, !53, i64 600, !53, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !35, i64 1032, !35, i64 1040, !41, i64 1048, !42, i64 1052, !41, i64 1056, !41, i64 1060, !35, i64 1064, !36, i64 1072, !35, i64 1080, !35, i64 1088, !35, i64 1096, !35, i64 1104, !35, i64 1112, !35, i64 1120, !35, i64 1128, !35, i64 1136, !35, i64 1144, !35, i64 1152, !35, i64 1160, !35, i64 1168, !35, i64 1176, !35, i64 1184, !35, i64 1192, !35, i64 1200, !35, i64 1208, !35, i64 1216, !35, i64 1224, !35, i64 1232, !35, i64 1240, !35, i64 1248, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !35, i64 1304, !35, i64 1312, !35, i64 1320, !35, i64 1328, !35, i64 1336, !35, i64 1344, !35, i64 1352, !35, i64 1360, !35, i64 1368, !35, i64 1376, !35, i64 1384, !35, i64 1392, !35, i64 1400, !35, i64 1408, !35, i64 1416, !35, i64 1424, !35, i64 1432, !35, i64 1440, !35, i64 1448, !35, i64 1456, !35, i64 1464, !35, i64 1472, !35, i64 1480, !35, i64 1488, !35, i64 1496, !35, i64 1504, !35, i64 1512, !35, i64 1520, !35, i64 1528, !35, i64 1536, !35, i64 1544, !35, i64 1552, !35, i64 1560, !35, i64 1568, !35, i64 1576, !35, i64 1584, !35, i64 1592, !35, i64 1600, !35, i64 1608, !35, i64 1616, !35, i64 1624, !35, i64 1632, !35, i64 1640, !35, i64 1648, !35, i64 1656, !35, i64 1664, !35, i64 1672, !35, i64 1680}
!53 = !{!"CustomData", !35, i64 0, !36, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !35, i64 184, !35, i64 192}
!54 = !{!39, !42, i64 276}
!55 = !{!39, !35, i64 112}
!56 = !{!44, !35, i64 288}
!57 = !{!39, !42, i64 260}
!58 = !{!52, !35, i64 1320}
!59 = !{!39, !41, i64 272}
!60 = !{!41, !41, i64 0}
!61 = !{!42, !42, i64 0}
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = distinct !{!65, !63, !64}
!66 = distinct !{!66, !63, !64}
!67 = distinct !{!67, !63, !64}
