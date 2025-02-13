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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #7
  %3 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = tail call ptr %3(ptr noundef %5) #7
  %7 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 6
  store ptr %6, ptr %7, align 8, !tbaa !39
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 !PGOFuncName !44 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call fastcc void @deformVerts_do(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4) #8
  br label %24

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !45
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 9
  %15 = load i8, ptr %14, align 8, !tbaa !52
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %9
  tail call fastcc void @deformVerts_do(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %3, i32 noundef %4) #8
  br label %24

18:                                               ; preds = %13
  %19 = tail call ptr @get_dm(ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call fastcc void @deformVerts_do(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %19, ptr noundef %3, i32 noundef %4) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 95
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  tail call void %23(ptr noundef nonnull %19) #7
  br label %24

24:                                               ; preds = %17, %8, %21, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 !PGOFuncName !56 {
  %7 = icmp eq ptr %3, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call fastcc void @deformVerts_do(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %5) #8
  br label %24

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !45
  %12 = icmp eq i16 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 9
  %15 = load i8, ptr %14, align 8, !tbaa !52
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %9
  tail call fastcc void @deformVerts_do(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %4, i32 noundef %5) #8
  br label %24

18:                                               ; preds = %13
  %19 = tail call ptr @get_dm(ptr noundef nonnull %1, ptr noundef %2, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call fastcc void @deformVerts_do(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %19, ptr noundef %4, i32 noundef %5) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 95
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  tail call void %23(ptr noundef nonnull %19) #7
  br label %24

24:                                               ; preds = %17, %8, %21, %18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !57 {
  %2 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 8
  store float 1.000000e+00, ptr %2, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !59 {
  %3 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 9
  %4 = load i8, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  %7 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = icmp eq ptr %8, null
  %10 = or disjoint i64 %6, 128
  %11 = select i1 %9, i64 %6, i64 %10
  ret i64 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @freeData(ptr nocapture noundef readonly %0) #0 !PGOFuncName !60 {
  %2 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %6(ptr noundef nonnull %3) #7
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #2 !PGOFuncName !61 {
  %3 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !63 {
  %6 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #7
  %11 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 2
  %12 = load i8, ptr %11, align 8, !tbaa !52
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i16 8, i16 40
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %10, ptr noundef %4, i16 noundef signext %14, ptr noundef nonnull @.str) #7
  br label %15

15:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !64 {
  %5 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @deformVerts_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !65 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 2
  %16 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %14, ptr noundef nonnull %15) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  %17 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 5
  %18 = load float, ptr %17, align 4, !tbaa !67
  %19 = fmul float %18, %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  %20 = load i8, ptr %15, align 8, !tbaa !52
  %21 = icmp ne i8 %20, 0
  %22 = icmp ne ptr %16, null
  %23 = select i1 %21, i1 %22, i1 false
  %24 = load ptr, ptr %11, align 8, !tbaa !62
  %25 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 47
  br i1 %23, label %26, label %28

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 29
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %25, ptr noundef nonnull %27) #7
  br label %29

28:                                               ; preds = %5
  call void @copy_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %25) #7
  br label %29

29:                                               ; preds = %28, %26
  %30 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 50
  %31 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %32 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %30, ptr noundef nonnull %31) #7
  %33 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 3
  call void @_va_mul_m4_series_4(ptr noundef nonnull %7, ptr noundef nonnull %30, ptr noundef nonnull %8, ptr noundef nonnull %33) #7
  %34 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 9
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %34, ptr noundef nonnull %9, ptr noundef nonnull %10) #7
  %35 = load ptr, ptr %9, align 8, !tbaa !35
  %36 = icmp ne ptr %35, null
  %37 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 8
  %38 = load float, ptr %37, align 4, !tbaa !58
  %39 = fcmp oeq float %38, 0.000000e+00
  br i1 %39, label %156, label %40

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !39
  %43 = icmp eq ptr %42, null
  br i1 %43, label %133, label %44

44:                                               ; preds = %40
  %45 = icmp eq ptr %2, null
  br i1 %45, label %99, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 50
  %48 = load ptr, ptr %47, align 8, !tbaa !68
  %49 = call ptr %48(ptr noundef nonnull %2, i32 noundef 7) #7
  %50 = icmp eq ptr %49, null
  br i1 %50, label %99, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !69
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %156

55:                                               ; preds = %51
  %56 = load ptr, ptr %41, align 8, !tbaa !39
  %57 = icmp slt i32 %4, 1
  %58 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 4
  %59 = zext nneg i32 %4 to i64
  br label %60

60:                                               ; preds = %55, %94
  %61 = phi i32 [ %53, %55 ], [ %95, %94 ]
  %62 = phi i32 [ 0, %55 ], [ %96, %94 ]
  %63 = phi ptr [ %56, %55 ], [ %97, %94 ]
  %64 = load i32, ptr %63, align 4, !tbaa !70
  %65 = icmp sge i32 %64, %4
  %66 = or i1 %65, %57
  br i1 %66, label %94, label %67

67:                                               ; preds = %60, %89
  %68 = phi i64 [ %90, %89 ], [ 0, %60 ]
  %69 = getelementptr inbounds i32, ptr %49, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !70
  %71 = load i32, ptr %63, align 4, !tbaa !70
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %67
  %74 = getelementptr inbounds [3 x float], ptr %3, i64 %68
  %75 = call fastcc float @hook_falloff(ptr noundef nonnull %58, ptr noundef %74, float noundef %19, float noundef %38) #8
  %76 = fcmp une float %75, 0.000000e+00
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load ptr, ptr %9, align 8, !tbaa !35
  %79 = icmp eq ptr %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.MDeformVert, ptr %78, i64 %68
  %82 = load i32, ptr %10, align 4, !tbaa !70
  %83 = call float @defvert_find_weight(ptr noundef nonnull %81, i32 noundef %82) #7
  %84 = fmul float %75, %83
  br label %85

85:                                               ; preds = %80, %77
  %86 = phi float [ %84, %80 ], [ %75, %77 ]
  %87 = fcmp une float %86, 0.000000e+00
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %74) #7
  call void @interp_v3_v3v3(ptr noundef %74, ptr noundef %74, ptr noundef nonnull %6, float noundef %86) #7
  br label %89

89:                                               ; preds = %73, %88, %85, %67
  %90 = add nuw nsw i64 %68, 1
  %91 = icmp eq i64 %90, %59
  br i1 %91, label %92, label %67, !llvm.loop !71

92:                                               ; preds = %89
  %93 = load i32, ptr %52, align 8, !tbaa !69
  br label %94

94:                                               ; preds = %92, %60
  %95 = phi i32 [ %93, %92 ], [ %61, %60 ]
  %96 = add nuw nsw i32 %62, 1
  %97 = getelementptr inbounds i32, ptr %63, i64 1
  %98 = icmp slt i32 %96, %95
  br i1 %98, label %60, label %156, !llvm.loop !73

99:                                               ; preds = %46, %44
  %100 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 7
  %101 = load i32, ptr %100, align 8, !tbaa !69
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %156

103:                                              ; preds = %99
  %104 = load ptr, ptr %41, align 8, !tbaa !39
  %105 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 4
  br label %106

106:                                              ; preds = %103, %128
  %107 = phi i32 [ 0, %103 ], [ %129, %128 ]
  %108 = phi ptr [ %104, %103 ], [ %130, %128 ]
  %109 = load i32, ptr %108, align 4, !tbaa !70
  %110 = icmp slt i32 %109, %4
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = sext i32 %109 to i64
  %113 = getelementptr inbounds [3 x float], ptr %3, i64 %112
  %114 = call fastcc float @hook_falloff(ptr noundef nonnull %105, ptr noundef %113, float noundef %19, float noundef %38) #8
  %115 = fcmp une float %114, 0.000000e+00
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = load ptr, ptr %9, align 8, !tbaa !35
  %118 = icmp eq ptr %117, null
  br i1 %118, label %124, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.MDeformVert, ptr %117, i64 %112
  %121 = load i32, ptr %10, align 4, !tbaa !70
  %122 = call float @defvert_find_weight(ptr noundef nonnull %120, i32 noundef %121) #7
  %123 = fmul float %114, %122
  br label %124

124:                                              ; preds = %119, %116
  %125 = phi float [ %123, %119 ], [ %114, %116 ]
  %126 = fcmp une float %125, 0.000000e+00
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %113) #7
  call void @interp_v3_v3v3(ptr noundef %113, ptr noundef %113, ptr noundef nonnull %6, float noundef %125) #7
  br label %128

128:                                              ; preds = %111, %127, %124, %106
  %129 = add nuw nsw i32 %107, 1
  %130 = getelementptr inbounds i32, ptr %108, i64 1
  %131 = load i32, ptr %100, align 8, !tbaa !69
  %132 = icmp slt i32 %129, %131
  br i1 %132, label %106, label %156, !llvm.loop !74

133:                                              ; preds = %40
  %134 = icmp sgt i32 %4, 0
  %135 = and i1 %36, %134
  br i1 %135, label %136, label %156

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.HookModifierData, ptr %0, i64 0, i32 4
  %138 = zext nneg i32 %4 to i64
  br label %139

139:                                              ; preds = %136, %151
  %140 = phi ptr [ %35, %136 ], [ %154, %151 ]
  %141 = phi i64 [ 0, %136 ], [ %152, %151 ]
  %142 = getelementptr inbounds [3 x float], ptr %3, i64 %141
  %143 = call fastcc float @hook_falloff(ptr noundef nonnull %137, ptr noundef %142, float noundef %19, float noundef %38) #8
  %144 = fcmp une float %143, 0.000000e+00
  br i1 %144, label %145, label %151

145:                                              ; preds = %139
  %146 = load i32, ptr %10, align 4, !tbaa !70
  %147 = call float @defvert_find_weight(ptr noundef nonnull %140, i32 noundef %146) #7
  %148 = fmul float %143, %147
  %149 = fcmp une float %148, 0.000000e+00
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %142) #7
  call void @interp_v3_v3v3(ptr noundef %142, ptr noundef %142, ptr noundef nonnull %6, float noundef %148) #7
  br label %151

151:                                              ; preds = %145, %150, %139
  %152 = add nuw nsw i64 %141, 1
  %153 = load ptr, ptr %9, align 8, !tbaa !35
  %154 = getelementptr inbounds %struct.MDeformVert, ptr %153, i64 1
  store ptr %154, ptr %9, align 8, !tbaa !35
  %155 = icmp eq i64 %152, %138
  br i1 %155, label %156, label %139, !llvm.loop !75

156:                                              ; preds = %94, %128, %151, %51, %99, %133, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_va_mul_m4_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @hook_falloff(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3) unnamed_addr #5 !PGOFuncName !76 {
  %5 = fcmp une float %2, 0.000000e+00
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = tail call fastcc float @len_squared_v3v3(ptr noundef %0, ptr noundef %1) #8
  %8 = fcmp ogt float %7, %2
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = fcmp ogt float %7, 0.000000e+00
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = fdiv float %7, %2
  %13 = fsub float 1.000000e+00, %12
  %14 = fmul float %13, %3
  br label %15

15:                                               ; preds = %6, %11, %4, %9
  %16 = phi float [ %3, %9 ], [ %3, %4 ], [ 0.000000e+00, %6 ], [ %14, %11 ]
  ret float %16
}

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !77 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #8
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !78 {
  %4 = load float, ptr %1, align 4, !tbaa !79
  %5 = load float, ptr %2, align 4, !tbaa !79
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !79
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !79
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !79
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !79
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !79
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !79
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !80 {
  %3 = load float, ptr %0, align 4, !tbaa !79
  %4 = load float, ptr %1, align 4, !tbaa !79
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !79
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !79
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !79
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !79
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }

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
!34 = !{!"MOD_hook.c:copyData"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 264}
!40 = !{!"HookModifierData", !41, i64 0, !36, i64 112, !37, i64 120, !37, i64 184, !37, i64 248, !43, i64 260, !36, i64 264, !42, i64 272, !43, i64 276, !37, i64 280}
!41 = !{!"ModifierData", !36, i64 0, !36, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!42 = !{!"int", !37, i64 0}
!43 = !{!"float", !37, i64 0}
!44 = !{!"MOD_hook.c:deformVerts"}
!45 = !{!46, !48, i64 136}
!46 = !{!"Object", !47, i64 0, !36, i64 120, !36, i64 128, !48, i64 136, !48, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !49, i64 312, !36, i64 360, !50, i64 368, !50, i64 384, !50, i64 400, !50, i64 416, !42, i64 432, !42, i64 436, !36, i64 440, !36, i64 448, !42, i64 456, !42, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !43, i64 616, !43, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !42, i64 944, !48, i64 948, !48, i64 950, !48, i64 952, !48, i64 954, !48, i64 956, !48, i64 958, !48, i64 960, !48, i64 962, !48, i64 964, !37, i64 966, !37, i64 967, !42, i64 968, !42, i64 972, !42, i64 976, !42, i64 980, !42, i64 984, !43, i64 988, !43, i64 992, !43, i64 996, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !43, i64 1028, !43, i64 1032, !48, i64 1036, !48, i64 1038, !48, i64 1040, !37, i64 1042, !37, i64 1043, !48, i64 1044, !37, i64 1046, !37, i64 1047, !43, i64 1048, !43, i64 1052, !50, i64 1056, !50, i64 1072, !50, i64 1088, !50, i64 1104, !43, i64 1120, !48, i64 1124, !48, i64 1126, !37, i64 1128, !42, i64 1144, !42, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !48, i64 1162, !37, i64 1164, !50, i64 1176, !50, i64 1192, !50, i64 1208, !50, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !48, i64 1266, !43, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !51, i64 1304, !51, i64 1312, !42, i64 1320, !42, i64 1324, !50, i64 1328, !50, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !50, i64 1400, !36, i64 1416}
!47 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !48, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !36, i64 112}
!48 = !{!"short", !37, i64 0}
!49 = !{!"bAnimVizSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!50 = !{!"ListBase", !36, i64 0, !36, i64 8}
!51 = !{!"long", !37, i64 0}
!52 = !{!37, !37, i64 0}
!53 = !{!54, !36, i64 1680}
!54 = !{!"DerivedMesh", !55, i64 0, !55, i64 200, !55, i64 400, !55, i64 600, !55, i64 800, !42, i64 1000, !42, i64 1004, !42, i64 1008, !42, i64 1012, !42, i64 1016, !42, i64 1020, !42, i64 1024, !36, i64 1032, !36, i64 1040, !42, i64 1048, !43, i64 1052, !42, i64 1056, !42, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!55 = !{!"CustomData", !36, i64 0, !37, i64 8, !42, i64 172, !42, i64 176, !42, i64 180, !36, i64 184, !36, i64 192}
!56 = !{!"MOD_hook.c:deformVertsEM"}
!57 = !{!"MOD_hook.c:initData"}
!58 = !{!40, !43, i64 276}
!59 = !{!"MOD_hook.c:requiredDataMask"}
!60 = !{!"MOD_hook.c:freeData"}
!61 = !{!"MOD_hook.c:isDisabled"}
!62 = !{!40, !36, i64 112}
!63 = !{!"MOD_hook.c:updateDepgraph"}
!64 = !{!"MOD_hook.c:foreachObjectLink"}
!65 = !{!"MOD_hook.c:deformVerts_do"}
!66 = !{!46, !36, i64 288}
!67 = !{!40, !43, i64 260}
!68 = !{!54, !36, i64 1320}
!69 = !{!40, !42, i64 272}
!70 = !{!42, !42, i64 0}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = distinct !{!73, !72}
!74 = distinct !{!74, !72}
!75 = distinct !{!75, !72}
!76 = !{!"MOD_hook.c:hook_falloff"}
!77 = !{!"MOD_hook.c:len_squared_v3v3"}
!78 = !{!"MOD_hook.c:sub_v3_v3v3"}
!79 = !{!43, !43, i64 0}
!80 = !{!"MOD_hook.c:dot_v3v3"}
