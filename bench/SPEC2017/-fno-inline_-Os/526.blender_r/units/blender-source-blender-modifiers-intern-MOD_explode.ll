; ModuleID = 'blender/source/blender/modifiers/intern/MOD_explode.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_explode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExplodeModifierData = type { %struct.ModifierData, ptr, i16, i16, float, [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ListBase = type { ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.ParticleSimulationData = type { ptr, ptr, ptr, ptr, ptr, float }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.EdgeHashIterator = type { ptr, ptr, i32 }
%struct._eh_Entry = type { ptr, i32, i32, ptr }

@modifierType_Explode = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Explode\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ExplodeModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 192, i32 2, i32 1, ptr @copyData, ptr null, ptr null, ptr null, ptr null, ptr @applyModifier, ptr null, ptr @initData, ptr @requiredDataMask, ptr @freeData, ptr null, ptr null, ptr @dependsOnTime, ptr null, ptr null, ptr null, ptr null }, align 8
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"explode_facepa\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"explode_vertpa\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"explode_facesplit\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"explode_vertpa2\00", align 1
@__func__.cutEdges = private unnamed_addr constant [9 x i8] c"cutEdges\00", align 1
@add_faces = internal unnamed_addr constant [24 x i16] [i16 0, i16 0, i16 0, i16 2, i16 0, i16 1, i16 2, i16 2, i16 0, i16 2, i16 1, i16 2, i16 2, i16 2, i16 2, i16 3, i16 0, i16 0, i16 0, i16 1, i16 0, i16 1, i16 1, i16 2], align 16
@__func__.explodeMesh = private unnamed_addr constant [12 x i8] c"explodeMesh\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #13
  %3 = getelementptr inbounds %struct.ExplodeModifierData, ptr %1, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @applyModifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) #0 !PGOFuncName !44 {
  %5 = tail call fastcc ptr @findPrecedingParticlesystem(ptr noundef %1, ptr noundef %0) #14
  tail call void @DM_ensure_tessface(ptr noundef %2) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %84, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %84, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 26
  %13 = load i32, ptr %12, align 8, !tbaa !47
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %84, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = icmp eq ptr %17, null
  br i1 %18, label %84, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ParticleSystem, ptr %9, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = icmp eq ptr %21, null
  br i1 %22, label %84, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %5, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = icmp eq ptr %25, null
  br i1 %26, label %84, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %50, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %5, i64 0, i32 6
  %33 = load i16, ptr %32, align 4, !tbaa !53
  %34 = and i16 %33, 1
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 2
  %38 = load i16, ptr %37, align 8, !tbaa !54
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !55
  %43 = tail call i64 %42(ptr noundef nonnull %29) #13
  %44 = lshr i64 %43, 2
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 25
  %46 = load ptr, ptr %45, align 8, !tbaa !56
  %47 = tail call i32 %46(ptr noundef %2) #13
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %44, %48
  br i1 %49, label %65, label %50

50:                                               ; preds = %41, %36, %31, %27
  %51 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %5, i64 0, i32 6
  %52 = load i16, ptr %51, align 4, !tbaa !53
  %53 = and i16 %52, 1
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = and i16 %52, -2
  store i16 %56, ptr %51, align 4, !tbaa !53
  br label %57

57:                                               ; preds = %55, %50
  %58 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 2
  %59 = load i16, ptr %58, align 8, !tbaa !54
  %60 = and i16 %59, 1
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = and i16 %59, -2
  store i16 %63, ptr %58, align 8, !tbaa !54
  br label %64

64:                                               ; preds = %62, %57
  tail call fastcc void @createFacepa(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %2) #14
  br label %65

65:                                               ; preds = %64, %41
  %66 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 2
  %67 = load i16, ptr %66, align 8, !tbaa !54
  %68 = and i16 %67, 4
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %28, align 8, !tbaa !35
  %72 = tail call fastcc ptr @cutEdges(ptr noundef nonnull %0, ptr noundef %2) #14
  %73 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %74 = load ptr, ptr %73, align 8, !tbaa !59
  %75 = tail call fastcc ptr @explodeMesh(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %74, ptr noundef %1, ptr noundef %72) #14
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  %77 = load ptr, ptr %28, align 8, !tbaa !35
  tail call void %76(ptr noundef %77) #13
  store ptr %71, ptr %28, align 8, !tbaa !35
  %78 = getelementptr inbounds %struct.DerivedMesh, ptr %72, i64 0, i32 95
  %79 = load ptr, ptr %78, align 8, !tbaa !60
  tail call void %79(ptr noundef %72) #13
  br label %84

80:                                               ; preds = %65
  %81 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !59
  %83 = tail call fastcc ptr @explodeMesh(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %82, ptr noundef %1, ptr noundef %2) #14
  br label %84

84:                                               ; preds = %4, %70, %80, %11, %7, %19, %15, %23
  %85 = phi ptr [ %75, %70 ], [ %83, %80 ], [ %2, %11 ], [ %2, %7 ], [ %2, %19 ], [ %2, %15 ], [ %2, %23 ], [ %2, %4 ]
  ret ptr %85
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @initData(ptr nocapture noundef %0) #1 !PGOFuncName !61 {
  %2 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 8, !tbaa !54
  %5 = or i16 %4, 56
  store i16 %5, ptr %3, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !62 {
  %3 = getelementptr inbounds %struct.ExplodeModifierData, ptr %1, i64 0, i32 3
  %4 = load i16, ptr %3, align 2, !tbaa !63
  %5 = icmp eq i16 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  ret i64 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @freeData(ptr nocapture noundef readonly %0) #0 !PGOFuncName !64 {
  %2 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %6(ptr noundef nonnull %3) #13
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnTime(ptr nocapture readnone %0) #3 !PGOFuncName !65 {
  ret i8 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @findPrecedingParticlesystem(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #6 !PGOFuncName !66 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %15, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %13, %6 ], [ %4, %2 ]
  %8 = phi ptr [ %12, %6 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.ModifierData, ptr %7, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !67
  %11 = icmp eq i32 %10, 19
  %12 = select i1 %11, ptr %7, ptr %8
  %13 = load ptr, ptr %7, align 8, !tbaa !55
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %6, !llvm.loop !68

15:                                               ; preds = %6, %2
  %16 = phi ptr [ null, %2 ], [ %12, %6 ]
  ret ptr %16
}

; Function Attrs: optsize
declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @createFacepa(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !70 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 31
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = tail call ptr %9(ptr noundef %2) #13
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 33
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = tail call ptr %12(ptr noundef %2) #13
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = tail call i32 %15(ptr noundef %2) #13
  %17 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 23
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  %19 = tail call i32 %18(ptr noundef %2) #13
  %20 = load ptr, ptr %6, align 8, !tbaa !45
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %20, i64 0, i32 26
  %22 = load i32, ptr %21, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 23
  %24 = load i32, ptr %23, align 4, !tbaa !74
  %25 = tail call ptr @BLI_rng_new_srandom(i32 noundef %24) #13
  %26 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %3
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %30(ptr noundef nonnull %27) #13
  br label %31

31:                                               ; preds = %29, %3
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %33 = sext i32 %16 to i64
  %34 = shl nsw i64 %33, 2
  %35 = tail call ptr %32(i64 noundef %34, ptr noundef nonnull @.str) #13
  store ptr %35, ptr %26, align 8, !tbaa !35
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %37 = sext i32 %19 to i64
  %38 = shl nsw i64 %37, 2
  %39 = tail call ptr %36(i64 noundef %38, ptr noundef nonnull @.str.1) #13
  %40 = icmp sgt i32 %16, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %31
  %42 = zext nneg i32 %16 to i64
  %43 = add nuw nsw i64 %42, 3
  %44 = and i64 %43, 4294967292
  %45 = add nsw i64 %42, -1
  %46 = insertelement <4 x i64> poison, i64 %45, i64 0
  %47 = shufflevector <4 x i64> %46, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %48

48:                                               ; preds = %70, %41
  %49 = phi i64 [ 0, %41 ], [ %71, %70 ]
  %50 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %41 ], [ %72, %70 ]
  %51 = icmp ule <4 x i64> %50, %47
  %52 = extractelement <4 x i1> %51, i64 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = getelementptr inbounds i32, ptr %35, i64 %49
  store i32 %22, ptr %54, align 4, !tbaa !75
  br label %55

55:                                               ; preds = %53, %48
  %56 = extractelement <4 x i1> %51, i64 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = or disjoint i64 %49, 1
  %59 = getelementptr inbounds i32, ptr %35, i64 %58
  store i32 %22, ptr %59, align 4, !tbaa !75
  br label %60

60:                                               ; preds = %57, %55
  %61 = extractelement <4 x i1> %51, i64 2
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = or disjoint i64 %49, 2
  %64 = getelementptr inbounds i32, ptr %35, i64 %63
  store i32 %22, ptr %64, align 4, !tbaa !75
  br label %65

65:                                               ; preds = %62, %60
  %66 = extractelement <4 x i1> %51, i64 3
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = or disjoint i64 %49, 3
  %69 = getelementptr inbounds i32, ptr %35, i64 %68
  store i32 %22, ptr %69, align 4, !tbaa !75
  br label %70

70:                                               ; preds = %67, %65
  %71 = add i64 %49, 4
  %72 = add <4 x i64> %50, <i64 4, i64 4, i64 4, i64 4>
  %73 = icmp eq i64 %71, %44
  br i1 %73, label %74, label %48, !llvm.loop !76

74:                                               ; preds = %70, %31
  %75 = icmp sgt i32 %19, 0
  br i1 %75, label %76, label %109

76:                                               ; preds = %74
  %77 = zext nneg i32 %19 to i64
  %78 = add nuw nsw i64 %77, 3
  %79 = and i64 %78, 4294967292
  %80 = add nsw i64 %77, -1
  %81 = insertelement <4 x i64> poison, i64 %80, i64 0
  %82 = shufflevector <4 x i64> %81, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %83

83:                                               ; preds = %105, %76
  %84 = phi i64 [ 0, %76 ], [ %106, %105 ]
  %85 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %76 ], [ %107, %105 ]
  %86 = icmp ule <4 x i64> %85, %82
  %87 = extractelement <4 x i1> %86, i64 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = getelementptr inbounds i32, ptr %39, i64 %84
  store i32 %22, ptr %89, align 4, !tbaa !75
  br label %90

90:                                               ; preds = %88, %83
  %91 = extractelement <4 x i1> %86, i64 1
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = or disjoint i64 %84, 1
  %94 = getelementptr inbounds i32, ptr %39, i64 %93
  store i32 %22, ptr %94, align 4, !tbaa !75
  br label %95

95:                                               ; preds = %92, %90
  %96 = extractelement <4 x i1> %86, i64 2
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = or disjoint i64 %84, 2
  %99 = getelementptr inbounds i32, ptr %39, i64 %98
  store i32 %22, ptr %99, align 4, !tbaa !75
  br label %100

100:                                              ; preds = %97, %95
  %101 = extractelement <4 x i1> %86, i64 3
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = or disjoint i64 %84, 3
  %104 = getelementptr inbounds i32, ptr %39, i64 %103
  store i32 %22, ptr %104, align 4, !tbaa !75
  br label %105

105:                                              ; preds = %102, %100
  %106 = add i64 %84, 4
  %107 = add <4 x i64> %85, <i64 4, i64 4, i64 4, i64 4>
  %108 = icmp eq i64 %106, %79
  br i1 %108, label %109, label %83, !llvm.loop !79

109:                                              ; preds = %105, %74
  %110 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 3
  %111 = load i16, ptr %110, align 2, !tbaa !63
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %141, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 50
  %115 = load ptr, ptr %114, align 8, !tbaa !80
  %116 = tail call ptr %115(ptr noundef %2, i32 noundef 2) #13
  %117 = icmp eq ptr %116, null
  br i1 %117, label %141, label %118

118:                                              ; preds = %113
  %119 = load i16, ptr %110, align 2, !tbaa !63
  %120 = sext i16 %119 to i32
  %121 = add nsw i32 %120, -1
  br i1 %75, label %122, label %141

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 4
  %124 = zext nneg i32 %19 to i64
  br label %125

125:                                              ; preds = %122, %137
  %126 = phi i64 [ 0, %122 ], [ %138, %137 ]
  %127 = phi ptr [ %116, %122 ], [ %139, %137 ]
  %128 = tail call float @BLI_rng_get_float(ptr noundef %25) #13
  %129 = load float, ptr %123, align 4, !tbaa !81
  %130 = fsub float 1.000000e+00, %129
  %131 = fmul float %129, 5.000000e-01
  %132 = tail call float @llvm.fmuladd.f32(float %130, float %128, float %131)
  %133 = tail call float @defvert_find_weight(ptr noundef nonnull %127, i32 noundef %121) #13
  %134 = fcmp olt float %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %125
  %136 = getelementptr inbounds i32, ptr %39, i64 %126
  store i32 -1, ptr %136, align 4, !tbaa !75
  br label %137

137:                                              ; preds = %135, %125
  %138 = add nuw nsw i64 %126, 1
  %139 = getelementptr inbounds %struct.MDeformVert, ptr %127, i64 1
  %140 = icmp eq i64 %138, %124
  br i1 %140, label %141, label %125, !llvm.loop !82

141:                                              ; preds = %137, %118, %113, %109
  %142 = tail call ptr @BLI_kdtree_new(i32 noundef %22) #13
  %143 = icmp sgt i32 %22, 0
  br i1 %143, label %144, label %165

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !51
  %147 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 2
  br label %148

148:                                              ; preds = %144, %148
  %149 = phi ptr [ %146, %144 ], [ %163, %148 ]
  %150 = phi i32 [ 0, %144 ], [ %162, %148 ]
  %151 = load ptr, ptr %147, align 8, !tbaa !50
  %152 = getelementptr inbounds %struct.ParticleSettings, ptr %151, i64 0, i32 8
  %153 = load i16, ptr %152, align 2, !tbaa !83
  %154 = sext i16 %153 to i32
  %155 = getelementptr inbounds %struct.ParticleData, ptr %149, i64 0, i32 9
  %156 = load i32, ptr %155, align 8, !tbaa !86
  %157 = getelementptr inbounds %struct.ParticleData, ptr %149, i64 0, i32 10
  %158 = load i32, ptr %157, align 4, !tbaa !89
  %159 = getelementptr inbounds %struct.ParticleData, ptr %149, i64 0, i32 11
  %160 = getelementptr inbounds %struct.ParticleData, ptr %149, i64 0, i32 12
  %161 = load float, ptr %160, align 8, !tbaa !90
  call void @psys_particle_on_emitter(ptr noundef %1, i32 noundef %154, i32 noundef %156, i32 noundef %158, ptr noundef nonnull %159, float noundef %161, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #13
  call void @BLI_kdtree_insert(ptr noundef %142, i32 noundef %150, ptr noundef nonnull %5) #13
  %162 = add nuw nsw i32 %150, 1
  %163 = getelementptr inbounds %struct.ParticleData, ptr %149, i64 1
  %164 = icmp eq i32 %162, %22
  br i1 %164, label %165, label %148, !llvm.loop !91

165:                                              ; preds = %148, %141
  call void @BLI_kdtree_balance(ptr noundef %142) #13
  br i1 %40, label %166, label %250

166:                                              ; preds = %165
  %167 = zext nneg i32 %16 to i64
  br label %168

168:                                              ; preds = %166, %246
  %169 = phi i64 [ 0, %166 ], [ %247, %246 ]
  %170 = phi ptr [ %13, %166 ], [ %248, %246 ]
  %171 = phi i32 [ 0, %166 ], [ %211, %246 ]
  %172 = load i32, ptr %170, align 4, !tbaa !92
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.MVert, ptr %10, i64 %173
  %175 = getelementptr inbounds %struct.MFace, ptr %170, i64 0, i32 1
  %176 = load i32, ptr %175, align 4, !tbaa !94
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.MVert, ptr %10, i64 %177
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %4, ptr noundef %174, ptr noundef %178) #14
  %179 = getelementptr inbounds %struct.MFace, ptr %170, i64 0, i32 2
  %180 = load i32, ptr %179, align 4, !tbaa !95
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.MVert, ptr %10, i64 %181
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %182) #14
  %183 = getelementptr inbounds %struct.MFace, ptr %170, i64 0, i32 3
  %184 = load i32, ptr %183, align 4, !tbaa !96
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %168
  %187 = zext i32 %184 to i64
  %188 = getelementptr inbounds %struct.MVert, ptr %10, i64 %187
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %188) #14
  br label %189

189:                                              ; preds = %168, %186
  %190 = phi float [ 2.500000e-01, %186 ], [ 0x3FD5555560000000, %168 ]
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %190) #14
  %191 = call i32 @BLI_kdtree_find_nearest(ptr noundef %142, ptr noundef nonnull %4, ptr noundef null) #13
  %192 = load i32, ptr %170, align 4, !tbaa !92
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i32, ptr %39, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !75
  %196 = load i32, ptr %175, align 4, !tbaa !94
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i32, ptr %39, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !75
  %200 = load i32, ptr %179, align 4, !tbaa !95
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i32, ptr %39, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !75
  %204 = load i32, ptr %183, align 4, !tbaa !96
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %189
  %207 = zext i32 %204 to i64
  %208 = getelementptr inbounds i32, ptr %39, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !75
  br label %210

210:                                              ; preds = %206, %189
  %211 = phi i32 [ %209, %206 ], [ %171, %189 ]
  %212 = icmp sgt i32 %195, -1
  %213 = icmp sgt i32 %199, -1
  %214 = select i1 %212, i1 %213, i1 false
  %215 = icmp sgt i32 %203, -1
  %216 = select i1 %214, i1 %215, i1 false
  br i1 %216, label %217, label %224

217:                                              ; preds = %210
  %218 = icmp sgt i32 %211, -1
  %219 = select i1 %205, i1 true, i1 %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %217
  %221 = getelementptr inbounds i32, ptr %35, i64 %169
  store i32 %191, ptr %221, align 4, !tbaa !75
  %222 = load i32, ptr %170, align 4, !tbaa !92
  %223 = zext i32 %222 to i64
  br label %225

224:                                              ; preds = %210
  br i1 %212, label %225, label %228

225:                                              ; preds = %220, %217, %224
  %226 = phi i64 [ %223, %220 ], [ %193, %217 ], [ %193, %224 ]
  %227 = getelementptr inbounds i32, ptr %39, i64 %226
  store i32 %191, ptr %227, align 4, !tbaa !75
  br label %228

228:                                              ; preds = %225, %224
  br i1 %213, label %229, label %233

229:                                              ; preds = %228
  %230 = load i32, ptr %175, align 4, !tbaa !94
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i32, ptr %39, i64 %231
  store i32 %191, ptr %232, align 4, !tbaa !75
  br label %233

233:                                              ; preds = %229, %228
  br i1 %215, label %234, label %238

234:                                              ; preds = %233
  %235 = load i32, ptr %179, align 4, !tbaa !95
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds i32, ptr %39, i64 %236
  store i32 %191, ptr %237, align 4, !tbaa !75
  br label %238

238:                                              ; preds = %234, %233
  %239 = load i32, ptr %183, align 4, !tbaa !96
  %240 = icmp ne i32 %239, 0
  %241 = icmp sgt i32 %211, -1
  %242 = select i1 %240, i1 %241, i1 false
  br i1 %242, label %243, label %246

243:                                              ; preds = %238
  %244 = zext i32 %239 to i64
  %245 = getelementptr inbounds i32, ptr %39, i64 %244
  store i32 %191, ptr %245, align 4, !tbaa !75
  br label %246

246:                                              ; preds = %238, %243
  %247 = add nuw nsw i64 %169, 1
  %248 = getelementptr inbounds %struct.MFace, ptr %170, i64 1
  %249 = icmp eq i64 %247, %167
  br i1 %249, label %252, label %168, !llvm.loop !97

250:                                              ; preds = %165
  %251 = icmp eq ptr %39, null
  br i1 %251, label %254, label %252

252:                                              ; preds = %246, %250
  %253 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %253(ptr noundef nonnull %39) #13
  br label %254

254:                                              ; preds = %252, %250
  call void @BLI_kdtree_free(ptr noundef %142) #13
  call void @BLI_rng_free(ptr noundef %25) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cutEdges(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !98 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.MVert, align 4
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 33
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = tail call ptr %7(ptr noundef %1) #13
  %9 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 23
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = tail call i32 %10(ptr noundef %1) #13
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 25
  %13 = load ptr, ptr %12, align 8, !tbaa !56
  %14 = tail call i32 %13(ptr noundef %1) #13
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %16 = sext i32 %14 to i64
  %17 = shl nsw i64 %16, 2
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @.str.2) #13
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %20 = sext i32 %11 to i64
  %21 = shl nsw i64 %20, 2
  %22 = tail call ptr %19(i64 noundef %21, ptr noundef nonnull @.str.3) #13
  %23 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %25 = tail call ptr @BLI_edgehash_new(ptr noundef nonnull @__func__.cutEdges) #13
  %26 = icmp sgt i32 %14, 0
  br i1 %26, label %27, label %134

27:                                               ; preds = %2
  %28 = zext nneg i32 %14 to i64
  br label %30

29:                                               ; preds = %53
  br i1 %26, label %57, label %134

30:                                               ; preds = %27, %53
  %31 = phi i64 [ 0, %27 ], [ %54, %53 ]
  %32 = phi ptr [ %8, %27 ], [ %55, %53 ]
  %33 = getelementptr inbounds i32, ptr %24, i64 %31
  %34 = load i32, ptr %33, align 4, !tbaa !75
  %35 = load i32, ptr %32, align 4, !tbaa !92
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, ptr %22, i64 %36
  store i32 %34, ptr %37, align 4, !tbaa !75
  %38 = getelementptr inbounds %struct.MFace, ptr %32, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !94
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, ptr %22, i64 %40
  store i32 %34, ptr %41, align 4, !tbaa !75
  %42 = load i32, ptr %33, align 4, !tbaa !75
  %43 = getelementptr inbounds %struct.MFace, ptr %32, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !95
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %22, i64 %45
  store i32 %42, ptr %46, align 4, !tbaa !75
  %47 = getelementptr inbounds %struct.MFace, ptr %32, i64 0, i32 3
  %48 = load i32, ptr %47, align 4, !tbaa !96
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %30
  %51 = zext i32 %48 to i64
  %52 = getelementptr inbounds i32, ptr %22, i64 %51
  store i32 %42, ptr %52, align 4, !tbaa !75
  br label %53

53:                                               ; preds = %30, %50
  %54 = add nuw nsw i64 %31, 1
  %55 = getelementptr inbounds %struct.MFace, ptr %32, i64 1
  %56 = icmp eq i64 %54, %28
  br i1 %56, label %29, label %30, !llvm.loop !99

57:                                               ; preds = %29, %129
  %58 = phi ptr [ %131, %129 ], [ %8, %29 ]
  %59 = phi ptr [ %132, %129 ], [ %18, %29 ]
  %60 = phi i32 [ %130, %129 ], [ 0, %29 ]
  %61 = load i32, ptr %58, align 4, !tbaa !92
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %22, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !75
  %65 = getelementptr inbounds %struct.MFace, ptr %58, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !94
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, ptr %22, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !75
  %70 = getelementptr inbounds %struct.MFace, ptr %58, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !95
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, ptr %22, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !75
  %75 = icmp eq i32 %64, %69
  br i1 %75, label %80, label %76

76:                                               ; preds = %57
  %77 = tail call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %25, i32 noundef %61, i32 noundef %66, ptr noundef null) #13
  %78 = load i32, ptr %59, align 4, !tbaa !75
  %79 = or i32 %78, 1
  store i32 %79, ptr %59, align 4, !tbaa !75
  br label %80

80:                                               ; preds = %76, %57
  %81 = icmp eq i32 %69, %74
  br i1 %81, label %88, label %82

82:                                               ; preds = %80
  %83 = load i32, ptr %65, align 4, !tbaa !94
  %84 = load i32, ptr %70, align 4, !tbaa !95
  %85 = tail call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %25, i32 noundef %83, i32 noundef %84, ptr noundef null) #13
  %86 = load i32, ptr %59, align 4, !tbaa !75
  %87 = or i32 %86, 2
  store i32 %87, ptr %59, align 4, !tbaa !75
  br label %88

88:                                               ; preds = %82, %80
  %89 = getelementptr inbounds %struct.MFace, ptr %58, i64 0, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !96
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %119, label %92

92:                                               ; preds = %88
  %93 = zext i32 %90 to i64
  %94 = getelementptr inbounds i32, ptr %22, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !75
  %96 = icmp eq i32 %74, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i32, ptr %70, align 4, !tbaa !95
  %99 = tail call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %25, i32 noundef %98, i32 noundef %90, ptr noundef null) #13
  %100 = load i32, ptr %59, align 4, !tbaa !75
  %101 = or i32 %100, 4
  store i32 %101, ptr %59, align 4, !tbaa !75
  br label %102

102:                                              ; preds = %97, %92
  %103 = icmp eq i32 %64, %95
  br i1 %103, label %110, label %104

104:                                              ; preds = %102
  %105 = load i32, ptr %58, align 4, !tbaa !92
  %106 = load i32, ptr %89, align 4, !tbaa !96
  %107 = tail call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %25, i32 noundef %105, i32 noundef %106, ptr noundef null) #13
  %108 = load i32, ptr %59, align 4, !tbaa !75
  %109 = or i32 %108, 8
  store i32 %109, ptr %59, align 4, !tbaa !75
  br label %112

110:                                              ; preds = %102
  %111 = load i32, ptr %59, align 4, !tbaa !75
  br label %112

112:                                              ; preds = %110, %104
  %113 = phi i32 [ %111, %110 ], [ %109, %104 ]
  %114 = icmp eq i32 %113, 15
  br i1 %114, label %115, label %129

115:                                              ; preds = %112
  %116 = load i32, ptr %58, align 4, !tbaa !92
  %117 = load i32, ptr %70, align 4, !tbaa !95
  %118 = tail call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %25, i32 noundef %116, i32 noundef %117, ptr noundef null) #13
  br label %129

119:                                              ; preds = %88
  %120 = load i32, ptr %59, align 4, !tbaa !75
  %121 = or i32 %120, 16
  store i32 %121, ptr %59, align 4, !tbaa !75
  %122 = icmp eq i32 %64, %74
  br i1 %122, label %129, label %123

123:                                              ; preds = %119
  %124 = load i32, ptr %58, align 4, !tbaa !92
  %125 = load i32, ptr %70, align 4, !tbaa !95
  %126 = tail call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %25, i32 noundef %124, i32 noundef %125, ptr noundef null) #13
  %127 = load i32, ptr %59, align 4, !tbaa !75
  %128 = or i32 %127, 4
  store i32 %128, ptr %59, align 4, !tbaa !75
  br label %129

129:                                              ; preds = %115, %112, %123, %119
  %130 = add nuw nsw i32 %60, 1
  %131 = getelementptr inbounds %struct.MFace, ptr %58, i64 1
  %132 = getelementptr inbounds i32, ptr %59, i64 1
  %133 = icmp eq i32 %130, %14
  br i1 %133, label %134, label %57, !llvm.loop !100

134:                                              ; preds = %129, %2, %29
  %135 = tail call ptr @BLI_edgehashIterator_new(ptr noundef %25) #13
  %136 = tail call fastcc zeroext i8 @BLI_edgehashIterator_isDone(ptr noundef %135) #14, !range !101
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %134, %138
  %139 = phi i64 [ %141, %138 ], [ %20, %134 ]
  %140 = inttoptr i64 %139 to ptr
  tail call fastcc void @BLI_edgehashIterator_setValue(ptr noundef %135, ptr noundef %140) #14
  %141 = add i64 %139, 1
  tail call void @BLI_edgehashIterator_step(ptr noundef %135) #13
  %142 = tail call fastcc zeroext i8 @BLI_edgehashIterator_isDone(ptr noundef %135) #14, !range !101
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %138, label %144, !llvm.loop !102

144:                                              ; preds = %138
  %145 = trunc i64 %141 to i32
  br label %146

146:                                              ; preds = %144, %134
  %147 = phi i32 [ %11, %134 ], [ %145, %144 ]
  tail call void @BLI_edgehashIterator_free(ptr noundef %135) #13
  br i1 %26, label %148, label %161

148:                                              ; preds = %146, %148
  %149 = phi ptr [ %159, %148 ], [ %18, %146 ]
  %150 = phi i32 [ %157, %148 ], [ 0, %146 ]
  %151 = phi i32 [ %158, %148 ], [ 0, %146 ]
  %152 = load i32, ptr %149, align 4, !tbaa !75
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [24 x i16], ptr @add_faces, i64 0, i64 %153
  %155 = load i16, ptr %154, align 2, !tbaa !103
  %156 = sext i16 %155 to i32
  %157 = add nsw i32 %150, %156
  %158 = add nuw nsw i32 %151, 1
  %159 = getelementptr inbounds i32, ptr %149, i64 1
  %160 = icmp eq i32 %158, %14
  br i1 %160, label %161, label %148, !llvm.loop !104

161:                                              ; preds = %148, %146
  %162 = phi i32 [ 0, %146 ], [ %157, %148 ]
  %163 = add nsw i32 %162, %14
  %164 = tail call ptr @CDDM_from_template(ptr noundef %1, i32 noundef %147, i32 noundef 0, i32 noundef %163, i32 noundef 0, i32 noundef 0) #13
  %165 = getelementptr inbounds %struct.DerivedMesh, ptr %164, i64 0, i32 2
  %166 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %165, i32 noundef 5) #13
  %167 = icmp sgt i32 %11, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %161
  %169 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 28
  br label %170

170:                                              ; preds = %168, %170
  %171 = phi i32 [ 0, %168 ], [ %174, %170 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  %172 = load ptr, ptr %169, align 8, !tbaa !105
  call void %172(ptr noundef %1, i32 noundef %171, ptr noundef nonnull %5) #13
  %173 = call ptr @CDDM_get_vert(ptr noundef %164, i32 noundef %171) #13
  call void @DM_copy_vert_data(ptr noundef %1, ptr noundef %164, i32 noundef %171, i32 noundef %171, i32 noundef 1) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %173, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !106
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  %174 = add nuw nsw i32 %171, 1
  %175 = icmp eq i32 %174, %11
  br i1 %175, label %176, label %170, !llvm.loop !108

176:                                              ; preds = %170, %161
  %177 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %178 = shl nsw i32 %162, 1
  %179 = add nsw i32 %178, %14
  %180 = sext i32 %179 to i64
  %181 = shl nsw i64 %180, 2
  %182 = call ptr %177(i64 noundef %181, ptr noundef nonnull @.str) #13
  store ptr %182, ptr %23, align 8, !tbaa !35
  %183 = call ptr @BLI_edgehashIterator_new(ptr noundef %25) #13
  %184 = call fastcc zeroext i8 @BLI_edgehashIterator_isDone(ptr noundef %183) #14, !range !101
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %176, %186
  call fastcc void @BLI_edgehashIterator_getKey(ptr noundef %183, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %187 = call fastcc ptr @BLI_edgehashIterator_getValue(ptr noundef %183) #14
  %188 = ptrtoint ptr %187 to i64
  %189 = trunc i64 %188 to i32
  %190 = load i32, ptr %4, align 4, !tbaa !75
  %191 = call ptr @CDDM_get_vert(ptr noundef %164, i32 noundef %190) #13
  %192 = call ptr @CDDM_get_vert(ptr noundef %164, i32 noundef %189) #13
  call void @DM_copy_vert_data(ptr noundef %164, ptr noundef %164, i32 noundef %190, i32 noundef %189, i32 noundef 1) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %192, ptr noundef nonnull align 4 dereferenceable(20) %191, i64 20, i1 false), !tbaa.struct !106
  %193 = load i32, ptr %3, align 4, !tbaa !75
  %194 = call ptr @CDDM_get_vert(ptr noundef %164, i32 noundef %193) #13
  call void @mid_v3_v3v3(ptr noundef %192, ptr noundef %192, ptr noundef %194) #13
  call void @BLI_edgehashIterator_step(ptr noundef %183) #13
  %195 = call fastcc zeroext i8 @BLI_edgehashIterator_isDone(ptr noundef %183) #14, !range !101
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %186, label %197, !llvm.loop !109

197:                                              ; preds = %186, %176
  call void @BLI_edgehashIterator_free(ptr noundef %183) #13
  br i1 %26, label %198, label %345

198:                                              ; preds = %197
  %199 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 48
  %200 = icmp eq i32 %166, 0
  br label %203

201:                                              ; preds = %315
  %202 = icmp sgt i32 %330, 0
  br i1 %202, label %334, label %345

203:                                              ; preds = %198, %315
  %204 = phi i32 [ 0, %198 ], [ %316, %315 ]
  %205 = phi i32 [ 0, %198 ], [ %317, %315 ]
  %206 = phi i32 [ 0, %198 ], [ %318, %315 ]
  %207 = phi i32 [ 0, %198 ], [ %319, %315 ]
  %208 = phi i32 [ 0, %198 ], [ %320, %315 ]
  %209 = phi i32 [ 0, %198 ], [ %321, %315 ]
  %210 = phi i32 [ 0, %198 ], [ %322, %315 ]
  %211 = phi i32 [ 0, %198 ], [ %323, %315 ]
  %212 = phi ptr [ %18, %198 ], [ %332, %315 ]
  %213 = phi i32 [ 0, %198 ], [ %331, %315 ]
  %214 = phi i32 [ 0, %198 ], [ %330, %315 ]
  %215 = load ptr, ptr %199, align 8, !tbaa !110
  %216 = call ptr %215(ptr noundef %1, i32 noundef %213, i32 noundef 4) #13
  %217 = load i32, ptr %212, align 4, !tbaa !75
  switch i32 %217, label %257 [
    i32 3, label %218
    i32 10, label %218
    i32 11, label %218
    i32 15, label %218
    i32 5, label %222
    i32 6, label %222
    i32 7, label %222
    i32 9, label %226
    i32 13, label %226
    i32 12, label %230
    i32 14, label %230
    i32 21, label %234
    i32 23, label %234
    i32 19, label %238
    i32 22, label %241
  ]

218:                                              ; preds = %203, %203, %203, %203
  %219 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 1
  %220 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 2
  %221 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 3
  br label %244

222:                                              ; preds = %203, %203, %203
  %223 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 1
  %224 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 2
  %225 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 3
  br label %244

226:                                              ; preds = %203, %203
  %227 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 3
  %228 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 1
  %229 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 2
  br label %244

230:                                              ; preds = %203, %203
  %231 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 2
  %232 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 3
  %233 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 1
  br label %244

234:                                              ; preds = %203, %203
  %235 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 1
  %236 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 2
  %237 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 3
  br label %244

238:                                              ; preds = %203
  %239 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 1
  %240 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 2
  br label %274

241:                                              ; preds = %203
  %242 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 2
  %243 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 1
  br label %274

244:                                              ; preds = %218, %222, %226, %230, %234
  %245 = phi ptr [ %237, %234 ], [ %233, %230 ], [ %229, %226 ], [ %216, %222 ], [ %221, %218 ]
  %246 = phi ptr [ %216, %234 ], [ %231, %230 ], [ %227, %226 ], [ %223, %222 ], [ %216, %218 ]
  %247 = phi ptr [ %235, %234 ], [ %232, %230 ], [ %216, %226 ], [ %224, %222 ], [ %219, %218 ]
  %248 = phi ptr [ %236, %234 ], [ %216, %230 ], [ %228, %226 ], [ %225, %222 ], [ %220, %218 ]
  %249 = phi i32 [ 0, %234 ], [ 2, %230 ], [ 3, %226 ], [ 1, %222 ], [ 0, %218 ]
  %250 = phi i32 [ 1, %234 ], [ 3, %230 ], [ 0, %226 ], [ 2, %222 ], [ 1, %218 ]
  %251 = phi i32 [ 2, %234 ], [ 0, %230 ], [ 1, %226 ], [ 3, %222 ], [ 2, %218 ]
  %252 = phi i32 [ 3, %234 ], [ 1, %230 ], [ 2, %226 ], [ 0, %222 ], [ 3, %218 ]
  %253 = load i32, ptr %248, align 4, !tbaa !75
  %254 = load i32, ptr %247, align 4, !tbaa !75
  %255 = load i32, ptr %246, align 4, !tbaa !75
  %256 = load i32, ptr %245, align 4, !tbaa !75
  br label %257

257:                                              ; preds = %244, %203
  %258 = phi i32 [ %211, %203 ], [ %255, %244 ]
  %259 = phi i32 [ %210, %203 ], [ %254, %244 ]
  %260 = phi i32 [ %209, %203 ], [ %253, %244 ]
  %261 = phi i32 [ %208, %203 ], [ %256, %244 ]
  %262 = phi i32 [ %207, %203 ], [ %249, %244 ]
  %263 = phi i32 [ %206, %203 ], [ %250, %244 ]
  %264 = phi i32 [ %205, %203 ], [ %251, %244 ]
  %265 = phi i32 [ %204, %203 ], [ %252, %244 ]
  switch i32 %217, label %315 [
    i32 3, label %266
    i32 6, label %266
    i32 9, label %266
    i32 12, label %266
    i32 5, label %268
    i32 10, label %268
    i32 15, label %270
    i32 7, label %272
    i32 11, label %272
    i32 13, label %272
    i32 14, label %272
    i32 19, label %286
    i32 21, label %286
    i32 22, label %286
    i32 23, label %296
    i32 0, label %298
    i32 16, label %298
  ]

266:                                              ; preds = %257, %257, %257, %257
  call fastcc void @remap_faces_3_6_9_12(ptr noundef nonnull %1, ptr noundef %164, ptr noundef %216, ptr noundef %182, ptr noundef %22, i32 noundef %213, ptr noundef %25, i32 noundef %214, i32 noundef %258, i32 noundef %259, i32 noundef %260, i32 noundef %261) #14
  br i1 %200, label %315, label %267

267:                                              ; preds = %266
  call fastcc void @remap_uvs_3_6_9_12(ptr noundef nonnull %1, ptr noundef %164, i32 noundef %166, i32 noundef %213, i32 noundef %214, i32 noundef %262, i32 noundef %263, i32 noundef %264, i32 noundef %265) #14
  br label %315

268:                                              ; preds = %257, %257
  call fastcc void @remap_faces_5_10(ptr noundef nonnull %1, ptr noundef %164, ptr noundef %216, ptr noundef %182, ptr noundef %22, i32 noundef %213, ptr noundef %25, i32 noundef %214, i32 noundef %258, i32 noundef %259, i32 noundef %260, i32 noundef %261) #14
  br i1 %200, label %315, label %269

269:                                              ; preds = %268
  call fastcc void @remap_uvs_5_10(ptr noundef nonnull %1, ptr noundef %164, i32 noundef %166, i32 noundef %213, i32 noundef %214, i32 noundef %262, i32 noundef %263, i32 noundef %264, i32 noundef %265) #14
  br label %315

270:                                              ; preds = %257
  call fastcc void @remap_faces_15(ptr noundef nonnull %1, ptr noundef %164, ptr noundef %216, ptr noundef %182, ptr noundef %22, i32 noundef %213, ptr noundef %25, i32 noundef %214, i32 noundef %258, i32 noundef %259, i32 noundef %260, i32 noundef %261) #14
  br i1 %200, label %315, label %271

271:                                              ; preds = %270
  call fastcc void @remap_uvs_15(ptr noundef nonnull %1, ptr noundef %164, i32 noundef %166, i32 noundef %213, i32 noundef %214, i32 noundef %262, i32 noundef %263, i32 noundef %264, i32 noundef %265) #14
  br label %315

272:                                              ; preds = %257, %257, %257, %257
  call fastcc void @remap_faces_7_11_13_14(ptr noundef nonnull %1, ptr noundef %164, ptr noundef %216, ptr noundef %182, ptr noundef %22, i32 noundef %213, ptr noundef %25, i32 noundef %214, i32 noundef %258, i32 noundef %259, i32 noundef %260, i32 noundef %261) #14
  br i1 %200, label %315, label %273

273:                                              ; preds = %272
  call fastcc void @remap_uvs_7_11_13_14(ptr noundef nonnull %1, ptr noundef %164, i32 noundef %166, i32 noundef %213, i32 noundef %214, i32 noundef %262, i32 noundef %263, i32 noundef %264, i32 noundef %265) #14
  br label %315

274:                                              ; preds = %241, %238
  %275 = phi ptr [ %216, %238 ], [ %243, %241 ]
  %276 = phi i32 [ 0, %238 ], [ 1, %241 ]
  %277 = phi i32 [ 2, %238 ], [ 0, %241 ]
  %278 = phi i32 [ 1, %238 ], [ 2, %241 ]
  %279 = phi ptr [ %240, %238 ], [ %216, %241 ]
  %280 = phi ptr [ %239, %238 ], [ %242, %241 ]
  %281 = load i32, ptr %280, align 4, !tbaa !75
  %282 = load i32, ptr %279, align 4, !tbaa !75
  %283 = load i32, ptr %275, align 4, !tbaa !75
  %284 = getelementptr inbounds %struct.MFace, ptr %216, i64 0, i32 3
  %285 = load i32, ptr %284, align 4, !tbaa !96
  br label %286

286:                                              ; preds = %274, %257, %257, %257
  %287 = phi i32 [ %265, %257 ], [ %265, %257 ], [ %265, %257 ], [ 3, %274 ]
  %288 = phi i32 [ %264, %257 ], [ %264, %257 ], [ %264, %257 ], [ %276, %274 ]
  %289 = phi i32 [ %263, %257 ], [ %263, %257 ], [ %263, %257 ], [ %277, %274 ]
  %290 = phi i32 [ %262, %257 ], [ %262, %257 ], [ %262, %257 ], [ %278, %274 ]
  %291 = phi i32 [ %261, %257 ], [ %261, %257 ], [ %261, %257 ], [ %285, %274 ]
  %292 = phi i32 [ %260, %257 ], [ %260, %257 ], [ %260, %257 ], [ %283, %274 ]
  %293 = phi i32 [ %259, %257 ], [ %259, %257 ], [ %259, %257 ], [ %282, %274 ]
  %294 = phi i32 [ %258, %257 ], [ %258, %257 ], [ %258, %257 ], [ %281, %274 ]
  call fastcc void @remap_faces_19_21_22(ptr noundef nonnull %1, ptr noundef %164, ptr noundef %216, ptr noundef %182, ptr noundef %22, i32 noundef %213, ptr noundef %25, i32 noundef %214, i32 noundef %294, i32 noundef %293, i32 noundef %292) #14
  br i1 %200, label %315, label %295

295:                                              ; preds = %286
  call fastcc void @remap_uvs_19_21_22(ptr noundef nonnull %1, ptr noundef %164, i32 noundef %166, i32 noundef %213, i32 noundef %214, i32 noundef %290, i32 noundef %289, i32 noundef %288) #14
  br label %315

296:                                              ; preds = %257
  call fastcc void @remap_faces_23(ptr noundef nonnull %1, ptr noundef %164, ptr noundef %216, ptr noundef %182, ptr noundef %22, i32 noundef %213, ptr noundef %25, i32 noundef %214, i32 noundef %258, i32 noundef %259, i32 noundef %260) #14
  br i1 %200, label %315, label %297

297:                                              ; preds = %296
  call fastcc void @remap_uvs_23(ptr noundef nonnull %1, ptr noundef %164, i32 noundef %166, i32 noundef %213, i32 noundef %214, i32 noundef %262, i32 noundef %263, i32 noundef %264) #14
  br label %315

298:                                              ; preds = %257, %257
  %299 = call fastcc ptr @get_dface(ptr noundef nonnull %1, ptr noundef %164, i32 noundef %214, i32 noundef %213, ptr noundef %216) #14
  %300 = load i32, ptr %216, align 4, !tbaa !92
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i32, ptr %22, i64 %301
  %303 = load i32, ptr %302, align 4, !tbaa !75
  %304 = sext i32 %214 to i64
  %305 = getelementptr inbounds i32, ptr %182, i64 %304
  store i32 %303, ptr %305, align 4, !tbaa !75
  %306 = getelementptr inbounds %struct.MFace, ptr %299, i64 0, i32 3
  %307 = load i32, ptr %306, align 4, !tbaa !96
  %308 = icmp eq i32 %307, 0
  %309 = getelementptr inbounds %struct.MFace, ptr %299, i64 0, i32 6
  %310 = load i8, ptr %309, align 1, !tbaa !111
  br i1 %308, label %313, label %311

311:                                              ; preds = %298
  %312 = or i8 %310, 2
  store i8 %312, ptr %309, align 1, !tbaa !111
  br label %315

313:                                              ; preds = %298
  %314 = and i8 %310, -3
  store i8 %314, ptr %309, align 1, !tbaa !111
  br label %315

315:                                              ; preds = %311, %313, %296, %297, %286, %295, %272, %273, %270, %271, %268, %269, %266, %267, %257
  %316 = phi i32 [ %265, %311 ], [ %265, %313 ], [ %265, %296 ], [ %265, %297 ], [ %287, %286 ], [ %287, %295 ], [ %265, %272 ], [ %265, %273 ], [ %265, %270 ], [ %265, %271 ], [ %265, %268 ], [ %265, %269 ], [ %265, %266 ], [ %265, %267 ], [ %265, %257 ]
  %317 = phi i32 [ %264, %311 ], [ %264, %313 ], [ %264, %296 ], [ %264, %297 ], [ %288, %286 ], [ %288, %295 ], [ %264, %272 ], [ %264, %273 ], [ %264, %270 ], [ %264, %271 ], [ %264, %268 ], [ %264, %269 ], [ %264, %266 ], [ %264, %267 ], [ %264, %257 ]
  %318 = phi i32 [ %263, %311 ], [ %263, %313 ], [ %263, %296 ], [ %263, %297 ], [ %289, %286 ], [ %289, %295 ], [ %263, %272 ], [ %263, %273 ], [ %263, %270 ], [ %263, %271 ], [ %263, %268 ], [ %263, %269 ], [ %263, %266 ], [ %263, %267 ], [ %263, %257 ]
  %319 = phi i32 [ %262, %311 ], [ %262, %313 ], [ %262, %296 ], [ %262, %297 ], [ %290, %286 ], [ %290, %295 ], [ %262, %272 ], [ %262, %273 ], [ %262, %270 ], [ %262, %271 ], [ %262, %268 ], [ %262, %269 ], [ %262, %266 ], [ %262, %267 ], [ %262, %257 ]
  %320 = phi i32 [ %261, %311 ], [ %261, %313 ], [ %261, %296 ], [ %261, %297 ], [ %291, %286 ], [ %291, %295 ], [ %261, %272 ], [ %261, %273 ], [ %261, %270 ], [ %261, %271 ], [ %261, %268 ], [ %261, %269 ], [ %261, %266 ], [ %261, %267 ], [ %261, %257 ]
  %321 = phi i32 [ %260, %311 ], [ %260, %313 ], [ %260, %296 ], [ %260, %297 ], [ %292, %286 ], [ %292, %295 ], [ %260, %272 ], [ %260, %273 ], [ %260, %270 ], [ %260, %271 ], [ %260, %268 ], [ %260, %269 ], [ %260, %266 ], [ %260, %267 ], [ %260, %257 ]
  %322 = phi i32 [ %259, %311 ], [ %259, %313 ], [ %259, %296 ], [ %259, %297 ], [ %293, %286 ], [ %293, %295 ], [ %259, %272 ], [ %259, %273 ], [ %259, %270 ], [ %259, %271 ], [ %259, %268 ], [ %259, %269 ], [ %259, %266 ], [ %259, %267 ], [ %259, %257 ]
  %323 = phi i32 [ %258, %311 ], [ %258, %313 ], [ %258, %296 ], [ %258, %297 ], [ %294, %286 ], [ %294, %295 ], [ %258, %272 ], [ %258, %273 ], [ %258, %270 ], [ %258, %271 ], [ %258, %268 ], [ %258, %269 ], [ %258, %266 ], [ %258, %267 ], [ %258, %257 ]
  %324 = load i32, ptr %212, align 4, !tbaa !75
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [24 x i16], ptr @add_faces, i64 0, i64 %325
  %327 = load i16, ptr %326, align 2, !tbaa !103
  %328 = sext i16 %327 to i32
  %329 = add i32 %214, 1
  %330 = add i32 %329, %328
  %331 = add nuw nsw i32 %213, 1
  %332 = getelementptr inbounds i32, ptr %212, i64 1
  %333 = icmp eq i32 %331, %14
  br i1 %333, label %201, label %203, !llvm.loop !112

334:                                              ; preds = %201, %334
  %335 = phi i32 [ %343, %334 ], [ 0, %201 ]
  %336 = call ptr @CDDM_get_tessface(ptr noundef %164, i32 noundef %335) #13
  %337 = getelementptr inbounds %struct.MFace, ptr %336, i64 0, i32 6
  %338 = load i8, ptr %337, align 1, !tbaa !111
  %339 = and i8 %338, 2
  %340 = icmp eq i8 %339, 0
  %341 = select i1 %340, i32 3, i32 4
  %342 = call i32 @test_index_face(ptr noundef %336, ptr noundef nonnull %165, i32 noundef %335, i32 noundef %341) #13
  %343 = add nuw nsw i32 %335, 1
  %344 = icmp eq i32 %343, %330
  br i1 %344, label %345, label %334, !llvm.loop !113

345:                                              ; preds = %334, %197, %201
  call void @BLI_edgehash_free(ptr noundef %25, ptr noundef null) #13
  %346 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %346(ptr noundef %18) #13
  %347 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %347(ptr noundef %22) #13
  call void @CDDM_calc_edges_tessface(ptr noundef %164) #13
  call void @CDDM_tessfaces_to_faces(ptr noundef %164) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret ptr %164
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @explodeMesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !114 {
  %6 = alloca %struct.ParticleSimulationData, align 8
  %7 = alloca %struct.ParticleKey, align 4
  %8 = alloca %struct.ParticleKey, align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.MVert, align 4
  %14 = alloca %struct.MFace, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #15
  %15 = getelementptr inbounds i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %15, i8 0, i64 16, i1 false)
  %16 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #15
  %20 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #15
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 25
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = tail call i32 %23(ptr noundef %4) #13
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 23
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  %27 = tail call i32 %26(ptr noundef %4) #13
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 33
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  %30 = tail call ptr %29(ptr noundef %4) #13
  %31 = load ptr, ptr %16, align 8, !tbaa !45
  %32 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 26
  %33 = load i32, ptr %32, align 8, !tbaa !47
  store ptr %2, ptr %6, align 8, !tbaa !115
  %34 = getelementptr inbounds %struct.ParticleSimulationData, ptr %6, i64 0, i32 1
  store ptr %3, ptr %34, align 8, !tbaa !117
  %35 = getelementptr inbounds %struct.ParticleSimulationData, ptr %6, i64 0, i32 2
  store ptr %31, ptr %35, align 8, !tbaa !118
  %36 = getelementptr inbounds %struct.ParticleSimulationData, ptr %6, i64 0, i32 3
  store ptr %1, ptr %36, align 8, !tbaa !119
  %37 = tail call float @BKE_scene_frame_get(ptr noundef %2) #13
  %38 = tail call ptr @BLI_edgehash_new(ptr noundef nonnull @__func__.explodeMesh) #13
  %39 = icmp sgt i32 %24, 0
  br i1 %39, label %40, label %97

40:                                               ; preds = %5
  %41 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 2
  %42 = zext nneg i32 %24 to i64
  br label %43

43:                                               ; preds = %40, %92
  %44 = phi i64 [ 0, %40 ], [ %95, %92 ]
  %45 = phi ptr [ null, %40 ], [ %94, %92 ]
  %46 = phi i32 [ 0, %40 ], [ %93, %92 ]
  %47 = getelementptr inbounds i32, ptr %21, i64 %44
  %48 = load i32, ptr %47, align 4, !tbaa !75
  %49 = icmp eq i32 %48, %33
  br i1 %49, label %74, label %50

50:                                               ; preds = %43
  %51 = sext i32 %48 to i64
  %52 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %51
  %53 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %51, i32 18
  %54 = load i16, ptr %53, align 2, !tbaa !120
  switch i16 %54, label %69 [
    i16 2, label %55
    i16 3, label %59
    i16 1, label %63
  ]

55:                                               ; preds = %50
  %56 = load i16, ptr %41, align 8, !tbaa !54
  %57 = and i16 %56, 8
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %67, label %69

59:                                               ; preds = %50
  %60 = load i16, ptr %41, align 8, !tbaa !54
  %61 = and i16 %60, 16
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %67, label %69

63:                                               ; preds = %50
  %64 = load i16, ptr %41, align 8, !tbaa !54
  %65 = and i16 %64, 32
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %59, %55
  %68 = add nsw i32 %46, 1
  br label %92

69:                                               ; preds = %50, %55, %59, %63
  %70 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %51, i32 6
  %71 = load float, ptr %70, align 4, !tbaa !121
  %72 = fcmp olt float %37, %71
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %43, %69, %73
  %75 = phi ptr [ %52, %73 ], [ %52, %69 ], [ %45, %43 ]
  %76 = phi i32 [ %48, %73 ], [ %33, %69 ], [ %33, %43 ]
  %77 = add nsw i32 %76, %27
  %78 = getelementptr inbounds %struct.MFace, ptr %30, i64 %44
  %79 = load i32, ptr %78, align 4, !tbaa !92
  %80 = tail call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %38, i32 noundef %79, i32 noundef %77, ptr noundef null) #13
  %81 = getelementptr inbounds %struct.MFace, ptr %30, i64 %44, i32 1
  %82 = load i32, ptr %81, align 4, !tbaa !94
  %83 = tail call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %38, i32 noundef %82, i32 noundef %77, ptr noundef null) #13
  %84 = getelementptr inbounds %struct.MFace, ptr %30, i64 %44, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !95
  %86 = tail call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %38, i32 noundef %85, i32 noundef %77, ptr noundef null) #13
  %87 = getelementptr inbounds %struct.MFace, ptr %30, i64 %44, i32 3
  %88 = load i32, ptr %87, align 4, !tbaa !96
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %74
  %91 = tail call zeroext i8 @BLI_edgehash_reinsert(ptr noundef %38, i32 noundef %88, i32 noundef %77, ptr noundef null) #13
  br label %92

92:                                               ; preds = %74, %90, %67
  %93 = phi i32 [ %68, %67 ], [ %46, %90 ], [ %46, %74 ]
  %94 = phi ptr [ %52, %67 ], [ %75, %90 ], [ %75, %74 ]
  %95 = add nuw nsw i64 %44, 1
  %96 = icmp eq i64 %95, %42
  br i1 %96, label %97, label %43, !llvm.loop !122

97:                                               ; preds = %92, %5
  %98 = phi i32 [ 0, %5 ], [ %93, %92 ]
  %99 = phi ptr [ null, %5 ], [ %94, %92 ]
  %100 = tail call ptr @BLI_edgehashIterator_new(ptr noundef %38) #13
  %101 = tail call fastcc zeroext i8 @BLI_edgehashIterator_isDone(ptr noundef %100) #14, !range !101
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %97, %103
  %104 = phi i64 [ %106, %103 ], [ 0, %97 ]
  %105 = inttoptr i64 %104 to ptr
  tail call fastcc void @BLI_edgehashIterator_setValue(ptr noundef %100, ptr noundef %105) #14
  %106 = add nuw i64 %104, 1
  tail call void @BLI_edgehashIterator_step(ptr noundef %100) #13
  %107 = tail call fastcc zeroext i8 @BLI_edgehashIterator_isDone(ptr noundef %100) #14, !range !101
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %103, label %109, !llvm.loop !123

109:                                              ; preds = %103
  %110 = trunc i64 %106 to i32
  br label %111

111:                                              ; preds = %109, %97
  %112 = phi i32 [ 0, %97 ], [ %110, %109 ]
  tail call void @BLI_edgehashIterator_free(ptr noundef %100) #13
  %113 = sub nsw i32 %24, %98
  %114 = tail call ptr @CDDM_from_template(ptr noundef %4, i32 noundef %112, i32 noundef 0, i32 noundef %113, i32 noundef 0, i32 noundef 0) #13
  %115 = getelementptr inbounds %struct.DerivedMesh, ptr %114, i64 0, i32 2
  %116 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 5
  %117 = tail call ptr @CustomData_get_layer_named(ptr noundef nonnull %115, i32 noundef 5, ptr noundef nonnull %116) #13
  %118 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  %119 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %118) #13
  %120 = call ptr @psys_create_lattice_deform_data(ptr noundef nonnull %6) #13
  %121 = load ptr, ptr %16, align 8, !tbaa !45
  %122 = getelementptr inbounds %struct.ParticleSystem, ptr %121, i64 0, i32 15
  store ptr %120, ptr %122, align 8, !tbaa !124
  %123 = call ptr @BLI_edgehashIterator_new(ptr noundef %38) #13
  %124 = call fastcc zeroext i8 @BLI_edgehashIterator_isDone(ptr noundef %123) #14, !range !101
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %159

126:                                              ; preds = %111
  %127 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 28
  %128 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 4
  %129 = getelementptr inbounds %struct.ParticleKey, ptr %7, i64 0, i32 2
  %130 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 2
  %131 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 2
  br label %132

132:                                              ; preds = %126, %155
  %133 = phi ptr [ %99, %126 ], [ %156, %155 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %13) #15
  call fastcc void @BLI_edgehashIterator_getKey(ptr noundef %123, ptr noundef nonnull %11, ptr noundef nonnull %12) #14
  %134 = load i32, ptr %12, align 4, !tbaa !75
  %135 = sub i32 %134, %27
  store i32 %135, ptr %12, align 4, !tbaa !75
  %136 = call fastcc ptr @BLI_edgehashIterator_getValue(ptr noundef %123) #14
  %137 = ptrtoint ptr %136 to i64
  %138 = trunc i64 %137 to i32
  %139 = load ptr, ptr %127, align 8, !tbaa !105
  %140 = load i32, ptr %11, align 4, !tbaa !75
  call void %139(ptr noundef %4, i32 noundef %140, ptr noundef nonnull %13) #13
  %141 = call ptr @CDDM_get_vert(ptr noundef %114, i32 noundef %138) #13
  call void @DM_copy_vert_data(ptr noundef %4, ptr noundef %114, i32 noundef %140, i32 noundef %138, i32 noundef 1) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %141, ptr noundef nonnull align 4 dereferenceable(20) %13, i64 20, i1 false), !tbaa.struct !106
  %142 = icmp eq i32 %135, %33
  br i1 %142, label %155, label %143

143:                                              ; preds = %132
  %144 = zext i32 %135 to i64
  %145 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %144
  call void @psys_get_birth_coordinates(ptr noundef nonnull %6, ptr noundef %145, ptr noundef nonnull %8, float noundef 0.000000e+00, float noundef 0.000000e+00) #13
  store float %37, ptr %128, align 4, !tbaa !125
  %146 = call i32 @psys_get_particle_state(ptr noundef nonnull %6, i32 noundef %135, ptr noundef nonnull %7, i32 noundef 1) #13
  %147 = call ptr @CDDM_get_vert(ptr noundef %114, i32 noundef %138) #13
  call void @mul_m4_v3(ptr noundef nonnull %118, ptr noundef %147) #13
  call fastcc void @sub_v3_v3(ptr noundef %147, ptr noundef nonnull %8) #14
  call void @sub_qt_qtqt(ptr noundef nonnull %10, ptr noundef nonnull %129, ptr noundef nonnull %130) #13
  call void @mul_qt_v3(ptr noundef nonnull %10, ptr noundef %147) #13
  %148 = load i16, ptr %131, align 8, !tbaa !54
  %149 = and i16 %148, 2
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %144, i32 13
  %153 = load float, ptr %152, align 4, !tbaa !126
  call fastcc void @mul_v3_fl(ptr noundef %147, float noundef %153) #14
  br label %154

154:                                              ; preds = %151, %143
  call fastcc void @add_v3_v3(ptr noundef %147, ptr noundef nonnull %7) #14
  call void @mul_m4_v3(ptr noundef nonnull %9, ptr noundef %147) #13
  br label %155

155:                                              ; preds = %154, %132
  %156 = phi ptr [ %145, %154 ], [ %133, %132 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %13) #15
  call void @BLI_edgehashIterator_step(ptr noundef %123) #13
  %157 = call fastcc zeroext i8 @BLI_edgehashIterator_isDone(ptr noundef %123) #14, !range !101
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %132, label %159, !llvm.loop !127

159:                                              ; preds = %155, %111
  %160 = phi ptr [ %99, %111 ], [ %156, %155 ]
  call void @BLI_edgehashIterator_free(ptr noundef %123) #13
  br i1 %39, label %161, label %252

161:                                              ; preds = %159
  %162 = getelementptr inbounds %struct.ExplodeModifierData, ptr %0, i64 0, i32 2
  %163 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 30
  %164 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 3
  %165 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 1
  %166 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 2
  %167 = icmp eq ptr %117, null
  %168 = zext nneg i32 %24 to i64
  br label %169

169:                                              ; preds = %161, %247
  %170 = phi i64 [ 0, %161 ], [ %250, %247 ]
  %171 = phi ptr [ %160, %161 ], [ %249, %247 ]
  %172 = phi i32 [ 0, %161 ], [ %248, %247 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %14) #15
  %173 = getelementptr inbounds i32, ptr %21, i64 %170
  %174 = load i32, ptr %173, align 4, !tbaa !75
  %175 = icmp eq i32 %174, %33
  br i1 %175, label %193, label %176

176:                                              ; preds = %169
  %177 = sext i32 %174 to i64
  %178 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %177
  %179 = getelementptr inbounds %struct.ParticleData, ptr %19, i64 %177, i32 18
  %180 = load i16, ptr %179, align 2, !tbaa !120
  switch i16 %180, label %193 [
    i16 2, label %181
    i16 3, label %185
    i16 1, label %189
  ]

181:                                              ; preds = %176
  %182 = load i16, ptr %162, align 8, !tbaa !54
  %183 = and i16 %182, 8
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %247, label %193

185:                                              ; preds = %176
  %186 = load i16, ptr %162, align 8, !tbaa !54
  %187 = and i16 %186, 16
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %247, label %193

189:                                              ; preds = %176
  %190 = load i16, ptr %162, align 8, !tbaa !54
  %191 = and i16 %190, 32
  %192 = icmp eq i16 %191, 0
  br i1 %192, label %247, label %193

193:                                              ; preds = %176, %181, %185, %189, %169
  %194 = phi ptr [ %178, %189 ], [ %171, %169 ], [ %178, %185 ], [ %178, %181 ], [ %178, %176 ]
  %195 = load ptr, ptr %163, align 8, !tbaa !128
  %196 = trunc i64 %170 to i32
  call void %195(ptr noundef %4, i32 noundef %196, ptr noundef nonnull %14) #13
  %197 = call ptr @CDDM_get_tessface(ptr noundef %114, i32 noundef %172) #13
  %198 = load i32, ptr %164, align 4, !tbaa !96
  %199 = load i32, ptr %173, align 4, !tbaa !75
  %200 = icmp eq i32 %199, %33
  br i1 %200, label %205, label %201

201:                                              ; preds = %193
  %202 = getelementptr inbounds %struct.ParticleData, ptr %194, i64 0, i32 6
  %203 = load float, ptr %202, align 4, !tbaa !121
  %204 = fcmp olt float %37, %203
  br i1 %204, label %206, label %205

205:                                              ; preds = %201, %193
  br label %206

206:                                              ; preds = %201, %205
  %207 = phi i32 [ %199, %205 ], [ %33, %201 ]
  %208 = add nsw i32 %207, %27
  %209 = load i32, ptr %14, align 4, !tbaa !92
  %210 = call fastcc i32 @edgecut_get(ptr noundef %38, i32 noundef %209, i32 noundef %208) #14
  store i32 %210, ptr %14, align 4, !tbaa !92
  %211 = load i32, ptr %165, align 4, !tbaa !94
  %212 = call fastcc i32 @edgecut_get(ptr noundef %38, i32 noundef %211, i32 noundef %208) #14
  store i32 %212, ptr %165, align 4, !tbaa !94
  %213 = load i32, ptr %166, align 4, !tbaa !95
  %214 = call fastcc i32 @edgecut_get(ptr noundef %38, i32 noundef %213, i32 noundef %208) #14
  store i32 %214, ptr %166, align 4, !tbaa !95
  %215 = load i32, ptr %164, align 4, !tbaa !96
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %206
  %218 = call fastcc i32 @edgecut_get(ptr noundef %38, i32 noundef %215, i32 noundef %208) #14
  store i32 %218, ptr %164, align 4, !tbaa !96
  br label %219

219:                                              ; preds = %217, %206
  call void @DM_copy_tessface_data(ptr noundef nonnull %4, ptr noundef %114, i32 noundef %196, i32 noundef %172, i32 noundef 1) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %197, ptr noundef nonnull align 4 dereferenceable(20) %14, i64 20, i1 false), !tbaa.struct !129
  br i1 %167, label %242, label %220

220:                                              ; preds = %219
  %221 = getelementptr inbounds %struct.ParticleData, ptr %194, i64 0, i32 6
  %222 = load float, ptr %221, align 4, !tbaa !121
  %223 = fsub float %37, %222
  %224 = getelementptr inbounds %struct.ParticleData, ptr %194, i64 0, i32 7
  %225 = load float, ptr %224, align 8, !tbaa !130
  %226 = fdiv float %223, %225
  %227 = fcmp olt float %226, 0x3F50624DE0000000
  br i1 %227, label %231, label %228

228:                                              ; preds = %220
  %229 = fcmp ogt float %226, 0x3FEFF7CEE0000000
  br i1 %229, label %230, label %231

230:                                              ; preds = %228
  br label %231

231:                                              ; preds = %220, %228, %230
  %232 = phi float [ 0x3FEFF7CEE0000000, %230 ], [ %226, %228 ], [ 0x3F50624DE0000000, %220 ]
  %233 = sext i32 %172 to i64
  %234 = getelementptr inbounds %struct.MTFace, ptr %117, i64 %233
  %235 = getelementptr inbounds [4 x [2 x float]], ptr %234, i64 0, i64 3
  store float %232, ptr %235, align 8, !tbaa !131
  %236 = getelementptr inbounds [4 x [2 x float]], ptr %234, i64 0, i64 2
  store float %232, ptr %236, align 8, !tbaa !131
  %237 = getelementptr inbounds [4 x [2 x float]], ptr %234, i64 0, i64 1
  store float %232, ptr %237, align 8, !tbaa !131
  store float %232, ptr %234, align 8, !tbaa !131
  %238 = getelementptr inbounds [4 x [2 x float]], ptr %234, i64 0, i64 3, i64 1
  store float 5.000000e-01, ptr %238, align 4, !tbaa !131
  %239 = getelementptr inbounds [4 x [2 x float]], ptr %234, i64 0, i64 2, i64 1
  store float 5.000000e-01, ptr %239, align 4, !tbaa !131
  %240 = getelementptr inbounds [4 x [2 x float]], ptr %234, i64 0, i64 1, i64 1
  store float 5.000000e-01, ptr %240, align 4, !tbaa !131
  %241 = getelementptr inbounds [2 x float], ptr %234, i64 0, i64 1
  store float 5.000000e-01, ptr %241, align 4, !tbaa !131
  br label %242

242:                                              ; preds = %231, %219
  %243 = icmp eq i32 %198, 0
  %244 = select i1 %243, i32 3, i32 4
  %245 = call i32 @test_index_face(ptr noundef nonnull %197, ptr noundef nonnull %115, i32 noundef %172, i32 noundef %244) #13
  %246 = add nsw i32 %172, 1
  br label %247

247:                                              ; preds = %189, %185, %181, %242
  %248 = phi i32 [ %246, %242 ], [ %172, %181 ], [ %172, %185 ], [ %172, %189 ]
  %249 = phi ptr [ %194, %242 ], [ %178, %181 ], [ %178, %185 ], [ %178, %189 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %14) #15
  %250 = add nuw nsw i64 %170, 1
  %251 = icmp eq i64 %250, %168
  br i1 %251, label %252, label %169, !llvm.loop !132

252:                                              ; preds = %247, %159
  call void @BLI_edgehash_free(ptr noundef %38, ptr noundef null) #13
  call void @CDDM_calc_edges_tessface(ptr noundef %114) #13
  call void @CDDM_tessfaces_to_faces(ptr noundef %114) #13
  %253 = getelementptr inbounds %struct.DerivedMesh, ptr %114, i64 0, i32 16
  %254 = load i32, ptr %253, align 8, !tbaa !133
  %255 = or i32 %254, 4
  store i32 %255, ptr %253, align 8, !tbaa !133
  %256 = load ptr, ptr %16, align 8, !tbaa !45
  %257 = getelementptr inbounds %struct.ParticleSystem, ptr %256, i64 0, i32 15
  %258 = load ptr, ptr %257, align 8, !tbaa !124
  %259 = icmp eq ptr %258, null
  br i1 %259, label %263, label %260

260:                                              ; preds = %252
  call void @end_latt_deform(ptr noundef nonnull %258) #13
  %261 = load ptr, ptr %16, align 8, !tbaa !45
  %262 = getelementptr inbounds %struct.ParticleSystem, ptr %261, i64 0, i32 15
  store ptr null, ptr %262, align 8, !tbaa !124
  br label %263

263:                                              ; preds = %260, %252
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #15
  ret ptr %114
}

; Function Attrs: optsize
declare ptr @BLI_rng_new_srandom(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BLI_kdtree_new(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @psys_particle_on_emitter(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_kdtree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_kdtree_balance(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !134 {
  %4 = load float, ptr %1, align 4, !tbaa !131
  %5 = load float, ptr %2, align 4, !tbaa !131
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !131
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !131
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !131
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !131
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !131
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !131
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !135 {
  %3 = load float, ptr %1, align 4, !tbaa !131
  %4 = load float, ptr %0, align 4, !tbaa !131
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !131
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !131
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !131
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !131
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !131
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !131
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #1 !PGOFuncName !136 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !131
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !131
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !131
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !131
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_kdtree_find_nearest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_kdtree_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: optsize
declare ptr @BLI_edgehash_new(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @BLI_edgehash_reinsert(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BLI_edgehashIterator_new(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_edgehashIterator_isDone(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !137 {
  %2 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !138
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @BLI_edgehashIterator_setValue(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !PGOFuncName !140 {
  %3 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !138
  %5 = getelementptr inbounds %struct._eh_Entry, ptr %4, i64 0, i32 3
  store ptr %1, ptr %5, align 8, !tbaa !141
  ret void
}

; Function Attrs: optsize
declare void @BLI_edgehashIterator_step(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_edgehashIterator_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CDDM_from_template(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CDDM_get_vert(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @DM_copy_vert_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @BLI_edgehashIterator_getKey(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 !PGOFuncName !143 {
  %4 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !138
  %6 = getelementptr inbounds %struct._eh_Entry, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !144
  store i32 %7, ptr %1, align 4, !tbaa !75
  %8 = getelementptr inbounds %struct._eh_Entry, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !145
  store i32 %9, ptr %2, align 4, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_edgehashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #12 !PGOFuncName !146 {
  %2 = getelementptr inbounds %struct.EdgeHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !138
  %4 = getelementptr inbounds %struct._eh_Entry, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !141
  ret ptr %5
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remap_faces_3_6_9_12(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) unnamed_addr #0 !PGOFuncName !147 {
  %13 = tail call fastcc ptr @get_dface(ptr noundef %0, ptr noundef %1, i32 noundef %7, i32 noundef %5, ptr noundef %2) #14
  %14 = add nsw i32 %7, 1
  %15 = tail call fastcc ptr @get_dface(ptr noundef %0, ptr noundef %1, i32 noundef %14, i32 noundef %5, ptr noundef %2) #14
  %16 = add nsw i32 %7, 2
  %17 = tail call fastcc ptr @get_dface(ptr noundef %0, ptr noundef %1, i32 noundef %16, i32 noundef %5, ptr noundef %2) #14
  %18 = sext i32 %8 to i64
  %19 = getelementptr inbounds i32, ptr %4, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !75
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds i32, ptr %3, i64 %21
  store i32 %20, ptr %22, align 4, !tbaa !75
  store i32 %8, ptr %13, align 4, !tbaa !92
  %23 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %9) #14
  %24 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 1
  store i32 %23, ptr %24, align 4, !tbaa !94
  %25 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %9, i32 noundef %10) #14
  %26 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 2
  store i32 %25, ptr %26, align 4, !tbaa !95
  %27 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 3
  store i32 %10, ptr %27, align 4, !tbaa !96
  %28 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 6
  %29 = load i8, ptr %28, align 1, !tbaa !111
  %30 = or i8 %29, 2
  store i8 %30, ptr %28, align 1, !tbaa !111
  %31 = sext i32 %9 to i64
  %32 = getelementptr inbounds i32, ptr %4, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !75
  %34 = sext i32 %14 to i64
  %35 = getelementptr inbounds i32, ptr %3, i64 %34
  store i32 %33, ptr %35, align 4, !tbaa !75
  %36 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %9) #14
  store i32 %36, ptr %15, align 4, !tbaa !92
  %37 = getelementptr inbounds %struct.MFace, ptr %15, i64 0, i32 1
  store i32 %9, ptr %37, align 4, !tbaa !94
  %38 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %9, i32 noundef %10) #14
  %39 = getelementptr inbounds %struct.MFace, ptr %15, i64 0, i32 2
  store i32 %38, ptr %39, align 4, !tbaa !95
  %40 = getelementptr inbounds %struct.MFace, ptr %15, i64 0, i32 3
  store i32 0, ptr %40, align 4, !tbaa !96
  %41 = getelementptr inbounds %struct.MFace, ptr %15, i64 0, i32 6
  %42 = load i8, ptr %41, align 1, !tbaa !111
  %43 = and i8 %42, -3
  store i8 %43, ptr %41, align 1, !tbaa !111
  %44 = load i32, ptr %19, align 4, !tbaa !75
  %45 = sext i32 %16 to i64
  %46 = getelementptr inbounds i32, ptr %3, i64 %45
  store i32 %44, ptr %46, align 4, !tbaa !75
  store i32 %8, ptr %17, align 4, !tbaa !92
  %47 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 1
  store i32 %10, ptr %47, align 4, !tbaa !94
  %48 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 2
  store i32 %11, ptr %48, align 4, !tbaa !95
  %49 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 3
  store i32 0, ptr %49, align 4, !tbaa !96
  %50 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 6
  %51 = load i8, ptr %50, align 1, !tbaa !111
  %52 = and i8 %51, -3
  store i8 %52, ptr %50, align 1, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remap_uvs_3_6_9_12(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 !PGOFuncName !148 {
  %10 = icmp sgt i32 %2, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 2
  %13 = sext i32 %4 to i64
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %15 = sext i32 %3 to i64
  %16 = zext nneg i32 %5 to i64
  %17 = zext nneg i32 %6 to i64
  %18 = zext nneg i32 %7 to i64
  %19 = zext nneg i32 %8 to i64
  br label %20

20:                                               ; preds = %11, %20
  %21 = phi i32 [ 0, %11 ], [ %39, %20 ]
  %22 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %12, i32 noundef 5, i32 noundef %21) #13
  %23 = getelementptr inbounds %struct.MTFace, ptr %22, i64 %13
  %24 = getelementptr inbounds %struct.MTFace, ptr %23, i64 1
  %25 = getelementptr inbounds %struct.MTFace, ptr %23, i64 2
  %26 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %14, i32 noundef 5, i32 noundef %21) #13
  %27 = getelementptr inbounds %struct.MTFace, ptr %26, i64 %15
  %28 = getelementptr inbounds [4 x [2 x float]], ptr %27, i64 0, i64 %16
  tail call fastcc void @copy_v2_v2(ptr noundef %23, ptr noundef %28) #14
  %29 = getelementptr inbounds [4 x [2 x float]], ptr %23, i64 0, i64 1
  %30 = getelementptr inbounds [4 x [2 x float]], ptr %27, i64 0, i64 %17
  tail call void @mid_v2_v2v2(ptr noundef nonnull %29, ptr noundef %28, ptr noundef %30) #13
  %31 = getelementptr inbounds [4 x [2 x float]], ptr %23, i64 0, i64 2
  %32 = getelementptr inbounds [4 x [2 x float]], ptr %27, i64 0, i64 %18
  tail call void @mid_v2_v2v2(ptr noundef nonnull %31, ptr noundef %30, ptr noundef %32) #13
  %33 = getelementptr inbounds [4 x [2 x float]], ptr %23, i64 0, i64 3
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %33, ptr noundef %32) #14
  tail call void @mid_v2_v2v2(ptr noundef nonnull %24, ptr noundef %28, ptr noundef %30) #13
  %34 = getelementptr inbounds %struct.MTFace, ptr %23, i64 1, i32 0, i64 1
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %34, ptr noundef %30) #14
  %35 = getelementptr inbounds %struct.MTFace, ptr %23, i64 1, i32 0, i64 2
  tail call void @mid_v2_v2v2(ptr noundef nonnull %35, ptr noundef %30, ptr noundef %32) #13
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %25, ptr noundef %28) #14
  %36 = getelementptr inbounds %struct.MTFace, ptr %23, i64 2, i32 0, i64 1
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %36, ptr noundef %32) #14
  %37 = getelementptr inbounds %struct.MTFace, ptr %23, i64 2, i32 0, i64 2
  %38 = getelementptr inbounds [4 x [2 x float]], ptr %27, i64 0, i64 %19
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %37, ptr noundef %38) #14
  %39 = add nuw nsw i32 %21, 1
  %40 = icmp eq i32 %39, %2
  br i1 %40, label %41, label %20, !llvm.loop !149

41:                                               ; preds = %20, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remap_faces_5_10(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) unnamed_addr #0 !PGOFuncName !150 {
  %13 = tail call fastcc ptr @get_dface(ptr noundef %0, ptr noundef %1, i32 noundef %7, i32 noundef %5, ptr noundef %2) #14
  %14 = add nsw i32 %7, 1
  %15 = tail call fastcc ptr @get_dface(ptr noundef %0, ptr noundef %1, i32 noundef %14, i32 noundef %5, ptr noundef %2) #14
  %16 = sext i32 %8 to i64
  %17 = getelementptr inbounds i32, ptr %4, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !75
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds i32, ptr %3, i64 %19
  store i32 %18, ptr %20, align 4, !tbaa !75
  store i32 %8, ptr %13, align 4, !tbaa !92
  %21 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 1
  store i32 %9, ptr %21, align 4, !tbaa !94
  %22 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %9, i32 noundef %10) #14
  %23 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 2
  store i32 %22, ptr %23, align 4, !tbaa !95
  %24 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %11) #14
  %25 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 3
  store i32 %24, ptr %25, align 4, !tbaa !96
  %26 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 6
  %27 = load i8, ptr %26, align 1, !tbaa !111
  %28 = or i8 %27, 2
  store i8 %28, ptr %26, align 1, !tbaa !111
  %29 = sext i32 %10 to i64
  %30 = getelementptr inbounds i32, ptr %4, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !75
  %32 = sext i32 %14 to i64
  %33 = getelementptr inbounds i32, ptr %3, i64 %32
  store i32 %31, ptr %33, align 4, !tbaa !75
  %34 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %11) #14
  store i32 %34, ptr %15, align 4, !tbaa !92
  %35 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %9, i32 noundef %10) #14
  %36 = getelementptr inbounds %struct.MFace, ptr %15, i64 0, i32 1
  store i32 %35, ptr %36, align 4, !tbaa !94
  %37 = getelementptr inbounds %struct.MFace, ptr %15, i64 0, i32 2
  store i32 %10, ptr %37, align 4, !tbaa !95
  %38 = getelementptr inbounds %struct.MFace, ptr %15, i64 0, i32 3
  store i32 %11, ptr %38, align 4, !tbaa !96
  %39 = getelementptr inbounds %struct.MFace, ptr %15, i64 0, i32 6
  %40 = load i8, ptr %39, align 1, !tbaa !111
  %41 = or i8 %40, 2
  store i8 %41, ptr %39, align 1, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remap_uvs_5_10(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 !PGOFuncName !151 {
  %10 = icmp sgt i32 %2, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 2
  %13 = sext i32 %4 to i64
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %15 = sext i32 %3 to i64
  %16 = zext nneg i32 %5 to i64
  %17 = zext nneg i32 %6 to i64
  %18 = zext nneg i32 %7 to i64
  %19 = zext nneg i32 %8 to i64
  br label %20

20:                                               ; preds = %11, %20
  %21 = phi i32 [ 0, %11 ], [ %37, %20 ]
  %22 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %12, i32 noundef 5, i32 noundef %21) #13
  %23 = getelementptr inbounds %struct.MTFace, ptr %22, i64 %13
  %24 = getelementptr inbounds %struct.MTFace, ptr %23, i64 1
  %25 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %14, i32 noundef 5, i32 noundef %21) #13
  %26 = getelementptr inbounds %struct.MTFace, ptr %25, i64 %15
  %27 = getelementptr inbounds [4 x [2 x float]], ptr %26, i64 0, i64 %16
  tail call fastcc void @copy_v2_v2(ptr noundef %23, ptr noundef %27) #14
  %28 = getelementptr inbounds [4 x [2 x float]], ptr %23, i64 0, i64 1
  %29 = getelementptr inbounds [4 x [2 x float]], ptr %26, i64 0, i64 %17
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %28, ptr noundef %29) #14
  %30 = getelementptr inbounds [4 x [2 x float]], ptr %23, i64 0, i64 2
  %31 = getelementptr inbounds [4 x [2 x float]], ptr %26, i64 0, i64 %18
  tail call void @mid_v2_v2v2(ptr noundef nonnull %30, ptr noundef %29, ptr noundef %31) #13
  %32 = getelementptr inbounds [4 x [2 x float]], ptr %23, i64 0, i64 3
  %33 = getelementptr inbounds [4 x [2 x float]], ptr %26, i64 0, i64 %19
  tail call void @mid_v2_v2v2(ptr noundef nonnull %32, ptr noundef %27, ptr noundef %33) #13
  tail call void @mid_v2_v2v2(ptr noundef nonnull %24, ptr noundef %27, ptr noundef %33) #13
  %34 = getelementptr inbounds %struct.MTFace, ptr %23, i64 1, i32 0, i64 1
  tail call void @mid_v2_v2v2(ptr noundef nonnull %34, ptr noundef %29, ptr noundef %31) #13
  %35 = getelementptr inbounds %struct.MTFace, ptr %23, i64 1, i32 0, i64 2
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %35, ptr noundef %31) #14
  %36 = getelementptr inbounds %struct.MTFace, ptr %23, i64 1, i32 0, i64 3
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %36, ptr noundef %33) #14
  %37 = add nuw nsw i32 %21, 1
  %38 = icmp eq i32 %37, %2
  br i1 %38, label %39, label %20, !llvm.loop !152

39:                                               ; preds = %20, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remap_faces_15(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) unnamed_addr #0 !PGOFuncName !153 {
  %13 = tail call fastcc ptr @get_dface(ptr noundef %0, ptr noundef %1, i32 noundef %7, i32 noundef %5, ptr noundef %2) #14
  %14 = add nsw i32 %7, 1
  %15 = tail call fastcc ptr @get_dface(ptr noundef %0, ptr noundef %1, i32 noundef %14, i32 noundef %5, ptr noundef %2) #14
  %16 = add nsw i32 %7, 2
  %17 = tail call fastcc ptr @get_dface(ptr noundef %0, ptr noundef %1, i32 noundef %16, i32 noundef %5, ptr noundef %2) #14
  %18 = add nsw i32 %7, 3
  %19 = tail call fastcc ptr @get_dface(ptr noundef %0, ptr noundef %1, i32 noundef %18, i32 noundef %5, ptr noundef %2) #14
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds i32, ptr %4, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !75
  %23 = sext i32 %7 to i64
  %24 = getelementptr inbounds i32, ptr %3, i64 %23
  store i32 %22, ptr %24, align 4, !tbaa !75
  store i32 %8, ptr %13, align 4, !tbaa !92
  %25 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %9) #14
  %26 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 1
  store i32 %25, ptr %26, align 4, !tbaa !94
  %27 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %10) #14
  %28 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 2
  store i32 %27, ptr %28, align 4, !tbaa !95
  %29 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %11) #14
  %30 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 3
  store i32 %29, ptr %30, align 4, !tbaa !96
  %31 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 6
  %32 = load i8, ptr %31, align 1, !tbaa !111
  %33 = or i8 %32, 2
  store i8 %33, ptr %31, align 1, !tbaa !111
  %34 = sext i32 %9 to i64
  %35 = getelementptr inbounds i32, ptr %4, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !75
  %37 = sext i32 %14 to i64
  %38 = getelementptr inbounds i32, ptr %3, i64 %37
  store i32 %36, ptr %38, align 4, !tbaa !75
  %39 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %9) #14
  store i32 %39, ptr %15, align 4, !tbaa !92
  %40 = getelementptr inbounds %struct.MFace, ptr %15, i64 0, i32 1
  store i32 %9, ptr %40, align 4, !tbaa !94
  %41 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %9, i32 noundef %10) #14
  %42 = getelementptr inbounds %struct.MFace, ptr %15, i64 0, i32 2
  store i32 %41, ptr %42, align 4, !tbaa !95
  %43 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %10) #14
  %44 = getelementptr inbounds %struct.MFace, ptr %15, i64 0, i32 3
  store i32 %43, ptr %44, align 4, !tbaa !96
  %45 = getelementptr inbounds %struct.MFace, ptr %15, i64 0, i32 6
  %46 = load i8, ptr %45, align 1, !tbaa !111
  %47 = or i8 %46, 2
  store i8 %47, ptr %45, align 1, !tbaa !111
  %48 = sext i32 %10 to i64
  %49 = getelementptr inbounds i32, ptr %4, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !75
  %51 = sext i32 %16 to i64
  %52 = getelementptr inbounds i32, ptr %3, i64 %51
  store i32 %50, ptr %52, align 4, !tbaa !75
  %53 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %10) #14
  store i32 %53, ptr %17, align 4, !tbaa !92
  %54 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %9, i32 noundef %10) #14
  %55 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 1
  store i32 %54, ptr %55, align 4, !tbaa !94
  %56 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 2
  store i32 %10, ptr %56, align 4, !tbaa !95
  %57 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %10, i32 noundef %11) #14
  %58 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 3
  store i32 %57, ptr %58, align 4, !tbaa !96
  %59 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 6
  %60 = load i8, ptr %59, align 1, !tbaa !111
  %61 = or i8 %60, 2
  store i8 %61, ptr %59, align 1, !tbaa !111
  %62 = sext i32 %11 to i64
  %63 = getelementptr inbounds i32, ptr %4, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !75
  %65 = sext i32 %18 to i64
  %66 = getelementptr inbounds i32, ptr %3, i64 %65
  store i32 %64, ptr %66, align 4, !tbaa !75
  %67 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %11) #14
  store i32 %67, ptr %19, align 4, !tbaa !92
  %68 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %10) #14
  %69 = getelementptr inbounds %struct.MFace, ptr %19, i64 0, i32 1
  store i32 %68, ptr %69, align 4, !tbaa !94
  %70 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %10, i32 noundef %11) #14
  %71 = getelementptr inbounds %struct.MFace, ptr %19, i64 0, i32 2
  store i32 %70, ptr %71, align 4, !tbaa !95
  %72 = getelementptr inbounds %struct.MFace, ptr %19, i64 0, i32 3
  store i32 %11, ptr %72, align 4, !tbaa !96
  %73 = getelementptr inbounds %struct.MFace, ptr %19, i64 0, i32 6
  %74 = load i8, ptr %73, align 1, !tbaa !111
  %75 = or i8 %74, 2
  store i8 %75, ptr %73, align 1, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remap_uvs_15(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 !PGOFuncName !154 {
  %10 = icmp sgt i32 %2, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 2
  %13 = sext i32 %4 to i64
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %15 = sext i32 %3 to i64
  %16 = zext nneg i32 %5 to i64
  %17 = zext nneg i32 %6 to i64
  %18 = zext nneg i32 %7 to i64
  %19 = zext nneg i32 %8 to i64
  br label %20

20:                                               ; preds = %11, %20
  %21 = phi i32 [ 0, %11 ], [ %45, %20 ]
  %22 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %12, i32 noundef 5, i32 noundef %21) #13
  %23 = getelementptr inbounds %struct.MTFace, ptr %22, i64 %13
  %24 = getelementptr inbounds %struct.MTFace, ptr %23, i64 1
  %25 = getelementptr inbounds %struct.MTFace, ptr %23, i64 2
  %26 = getelementptr inbounds %struct.MTFace, ptr %23, i64 3
  %27 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %14, i32 noundef 5, i32 noundef %21) #13
  %28 = getelementptr inbounds %struct.MTFace, ptr %27, i64 %15
  %29 = getelementptr inbounds [4 x [2 x float]], ptr %28, i64 0, i64 %16
  tail call fastcc void @copy_v2_v2(ptr noundef %23, ptr noundef %29) #14
  %30 = getelementptr inbounds [4 x [2 x float]], ptr %23, i64 0, i64 1
  %31 = getelementptr inbounds [4 x [2 x float]], ptr %28, i64 0, i64 %17
  tail call void @mid_v2_v2v2(ptr noundef nonnull %30, ptr noundef %29, ptr noundef %31) #13
  %32 = getelementptr inbounds [4 x [2 x float]], ptr %23, i64 0, i64 2
  %33 = getelementptr inbounds [4 x [2 x float]], ptr %28, i64 0, i64 %18
  tail call void @mid_v2_v2v2(ptr noundef nonnull %32, ptr noundef %29, ptr noundef %33) #13
  %34 = getelementptr inbounds [4 x [2 x float]], ptr %23, i64 0, i64 3
  %35 = getelementptr inbounds [4 x [2 x float]], ptr %28, i64 0, i64 %19
  tail call void @mid_v2_v2v2(ptr noundef nonnull %34, ptr noundef %29, ptr noundef %35) #13
  tail call void @mid_v2_v2v2(ptr noundef nonnull %24, ptr noundef %29, ptr noundef %31) #13
  %36 = getelementptr inbounds %struct.MTFace, ptr %23, i64 1, i32 0, i64 1
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %36, ptr noundef %31) #14
  %37 = getelementptr inbounds %struct.MTFace, ptr %23, i64 1, i32 0, i64 2
  tail call void @mid_v2_v2v2(ptr noundef nonnull %37, ptr noundef %31, ptr noundef %33) #13
  %38 = getelementptr inbounds %struct.MTFace, ptr %23, i64 1, i32 0, i64 3
  tail call void @mid_v2_v2v2(ptr noundef nonnull %38, ptr noundef %29, ptr noundef %33) #13
  tail call void @mid_v2_v2v2(ptr noundef nonnull %25, ptr noundef %29, ptr noundef %33) #13
  %39 = getelementptr inbounds %struct.MTFace, ptr %23, i64 2, i32 0, i64 1
  tail call void @mid_v2_v2v2(ptr noundef nonnull %39, ptr noundef %31, ptr noundef %33) #13
  %40 = getelementptr inbounds %struct.MTFace, ptr %23, i64 2, i32 0, i64 2
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %40, ptr noundef %33) #14
  %41 = getelementptr inbounds %struct.MTFace, ptr %23, i64 2, i32 0, i64 3
  tail call void @mid_v2_v2v2(ptr noundef nonnull %41, ptr noundef %33, ptr noundef %35) #13
  tail call void @mid_v2_v2v2(ptr noundef nonnull %26, ptr noundef %29, ptr noundef %35) #13
  %42 = getelementptr inbounds %struct.MTFace, ptr %23, i64 3, i32 0, i64 1
  tail call void @mid_v2_v2v2(ptr noundef nonnull %42, ptr noundef %29, ptr noundef %33) #13
  %43 = getelementptr inbounds %struct.MTFace, ptr %23, i64 3, i32 0, i64 2
  tail call void @mid_v2_v2v2(ptr noundef nonnull %43, ptr noundef %33, ptr noundef %35) #13
  %44 = getelementptr inbounds %struct.MTFace, ptr %23, i64 3, i32 0, i64 3
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %44, ptr noundef %35) #14
  %45 = add nuw nsw i32 %21, 1
  %46 = icmp eq i32 %45, %2
  br i1 %46, label %47, label %20, !llvm.loop !155

47:                                               ; preds = %20, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remap_faces_7_11_13_14(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) unnamed_addr #0 !PGOFuncName !156 {
  %13 = tail call fastcc ptr @get_dface(ptr noundef %0, ptr noundef %1, i32 noundef %7, i32 noundef %5, ptr noundef %2) #14
  %14 = add nsw i32 %7, 1
  %15 = tail call fastcc ptr @get_dface(ptr noundef %0, ptr noundef %1, i32 noundef %14, i32 noundef %5, ptr noundef %2) #14
  %16 = add nsw i32 %7, 2
  %17 = tail call fastcc ptr @get_dface(ptr noundef %0, ptr noundef %1, i32 noundef %16, i32 noundef %5, ptr noundef %2) #14
  %18 = sext i32 %8 to i64
  %19 = getelementptr inbounds i32, ptr %4, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !75
  %21 = sext i32 %7 to i64
  %22 = getelementptr inbounds i32, ptr %3, i64 %21
  store i32 %20, ptr %22, align 4, !tbaa !75
  store i32 %8, ptr %13, align 4, !tbaa !92
  %23 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %9) #14
  %24 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 1
  store i32 %23, ptr %24, align 4, !tbaa !94
  %25 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %9, i32 noundef %10) #14
  %26 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 2
  store i32 %25, ptr %26, align 4, !tbaa !95
  %27 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %11) #14
  %28 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 3
  store i32 %27, ptr %28, align 4, !tbaa !96
  %29 = getelementptr inbounds %struct.MFace, ptr %13, i64 0, i32 6
  %30 = load i8, ptr %29, align 1, !tbaa !111
  %31 = or i8 %30, 2
  store i8 %31, ptr %29, align 1, !tbaa !111
  %32 = sext i32 %9 to i64
  %33 = getelementptr inbounds i32, ptr %4, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !75
  %35 = sext i32 %14 to i64
  %36 = getelementptr inbounds i32, ptr %3, i64 %35
  store i32 %34, ptr %36, align 4, !tbaa !75
  %37 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %9) #14
  store i32 %37, ptr %15, align 4, !tbaa !92
  %38 = getelementptr inbounds %struct.MFace, ptr %15, i64 0, i32 1
  store i32 %9, ptr %38, align 4, !tbaa !94
  %39 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %9, i32 noundef %10) #14
  %40 = getelementptr inbounds %struct.MFace, ptr %15, i64 0, i32 2
  store i32 %39, ptr %40, align 4, !tbaa !95
  %41 = getelementptr inbounds %struct.MFace, ptr %15, i64 0, i32 3
  store i32 0, ptr %41, align 4, !tbaa !96
  %42 = getelementptr inbounds %struct.MFace, ptr %15, i64 0, i32 6
  %43 = load i8, ptr %42, align 1, !tbaa !111
  %44 = and i8 %43, -3
  store i8 %44, ptr %42, align 1, !tbaa !111
  %45 = sext i32 %11 to i64
  %46 = getelementptr inbounds i32, ptr %4, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !75
  %48 = sext i32 %16 to i64
  %49 = getelementptr inbounds i32, ptr %3, i64 %48
  store i32 %47, ptr %49, align 4, !tbaa !75
  %50 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %11) #14
  store i32 %50, ptr %17, align 4, !tbaa !92
  %51 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %9, i32 noundef %10) #14
  %52 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 1
  store i32 %51, ptr %52, align 4, !tbaa !94
  %53 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 2
  store i32 %10, ptr %53, align 4, !tbaa !95
  %54 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 3
  store i32 %11, ptr %54, align 4, !tbaa !96
  %55 = getelementptr inbounds %struct.MFace, ptr %17, i64 0, i32 6
  %56 = load i8, ptr %55, align 1, !tbaa !111
  %57 = or i8 %56, 2
  store i8 %57, ptr %55, align 1, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remap_uvs_7_11_13_14(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 !PGOFuncName !157 {
  %10 = icmp sgt i32 %2, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 2
  %13 = sext i32 %4 to i64
  %14 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %15 = sext i32 %3 to i64
  %16 = zext nneg i32 %5 to i64
  %17 = zext nneg i32 %6 to i64
  %18 = zext nneg i32 %7 to i64
  %19 = zext nneg i32 %8 to i64
  br label %20

20:                                               ; preds = %11, %20
  %21 = phi i32 [ 0, %11 ], [ %40, %20 ]
  %22 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %12, i32 noundef 5, i32 noundef %21) #13
  %23 = getelementptr inbounds %struct.MTFace, ptr %22, i64 %13
  %24 = getelementptr inbounds %struct.MTFace, ptr %23, i64 1
  %25 = getelementptr inbounds %struct.MTFace, ptr %23, i64 2
  %26 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %14, i32 noundef 5, i32 noundef %21) #13
  %27 = getelementptr inbounds %struct.MTFace, ptr %26, i64 %15
  %28 = getelementptr inbounds [4 x [2 x float]], ptr %27, i64 0, i64 %16
  tail call fastcc void @copy_v2_v2(ptr noundef %23, ptr noundef %28) #14
  %29 = getelementptr inbounds [4 x [2 x float]], ptr %23, i64 0, i64 1
  %30 = getelementptr inbounds [4 x [2 x float]], ptr %27, i64 0, i64 %17
  tail call void @mid_v2_v2v2(ptr noundef nonnull %29, ptr noundef %28, ptr noundef %30) #13
  %31 = getelementptr inbounds [4 x [2 x float]], ptr %23, i64 0, i64 2
  %32 = getelementptr inbounds [4 x [2 x float]], ptr %27, i64 0, i64 %18
  tail call void @mid_v2_v2v2(ptr noundef nonnull %31, ptr noundef %30, ptr noundef %32) #13
  %33 = getelementptr inbounds [4 x [2 x float]], ptr %23, i64 0, i64 3
  %34 = getelementptr inbounds [4 x [2 x float]], ptr %27, i64 0, i64 %19
  tail call void @mid_v2_v2v2(ptr noundef nonnull %33, ptr noundef %28, ptr noundef %34) #13
  tail call void @mid_v2_v2v2(ptr noundef nonnull %24, ptr noundef %28, ptr noundef %30) #13
  %35 = getelementptr inbounds %struct.MTFace, ptr %23, i64 1, i32 0, i64 1
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %35, ptr noundef %30) #14
  %36 = getelementptr inbounds %struct.MTFace, ptr %23, i64 1, i32 0, i64 2
  tail call void @mid_v2_v2v2(ptr noundef nonnull %36, ptr noundef %30, ptr noundef %32) #13
  tail call void @mid_v2_v2v2(ptr noundef nonnull %25, ptr noundef %28, ptr noundef %34) #13
  %37 = getelementptr inbounds %struct.MTFace, ptr %23, i64 2, i32 0, i64 1
  tail call void @mid_v2_v2v2(ptr noundef nonnull %37, ptr noundef %30, ptr noundef %32) #13
  %38 = getelementptr inbounds %struct.MTFace, ptr %23, i64 2, i32 0, i64 2
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %38, ptr noundef %32) #14
  %39 = getelementptr inbounds %struct.MTFace, ptr %23, i64 2, i32 0, i64 3
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %39, ptr noundef %34) #14
  %40 = add nuw nsw i32 %21, 1
  %41 = icmp eq i32 %40, %2
  br i1 %41, label %42, label %20, !llvm.loop !158

42:                                               ; preds = %20, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remap_faces_19_21_22(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #0 !PGOFuncName !159 {
  %12 = tail call fastcc ptr @get_dface(ptr noundef %0, ptr noundef %1, i32 noundef %7, i32 noundef %5, ptr noundef %2) #14
  %13 = add nsw i32 %7, 1
  %14 = tail call fastcc ptr @get_dface(ptr noundef %0, ptr noundef %1, i32 noundef %13, i32 noundef %5, ptr noundef %2) #14
  %15 = sext i32 %8 to i64
  %16 = getelementptr inbounds i32, ptr %4, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !75
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds i32, ptr %3, i64 %18
  store i32 %17, ptr %19, align 4, !tbaa !75
  store i32 %8, ptr %12, align 4, !tbaa !92
  %20 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %9) #14
  %21 = getelementptr inbounds %struct.MFace, ptr %12, i64 0, i32 1
  store i32 %20, ptr %21, align 4, !tbaa !94
  %22 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %10) #14
  %23 = getelementptr inbounds %struct.MFace, ptr %12, i64 0, i32 2
  store i32 %22, ptr %23, align 4, !tbaa !95
  %24 = getelementptr inbounds %struct.MFace, ptr %12, i64 0, i32 3
  store i32 0, ptr %24, align 4, !tbaa !96
  %25 = getelementptr inbounds %struct.MFace, ptr %12, i64 0, i32 6
  %26 = load i8, ptr %25, align 1, !tbaa !111
  %27 = and i8 %26, -3
  store i8 %27, ptr %25, align 1, !tbaa !111
  %28 = sext i32 %9 to i64
  %29 = getelementptr inbounds i32, ptr %4, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !75
  %31 = sext i32 %13 to i64
  %32 = getelementptr inbounds i32, ptr %3, i64 %31
  store i32 %30, ptr %32, align 4, !tbaa !75
  %33 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %9) #14
  store i32 %33, ptr %14, align 4, !tbaa !92
  %34 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 1
  store i32 %9, ptr %34, align 4, !tbaa !94
  %35 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 2
  store i32 %10, ptr %35, align 4, !tbaa !95
  %36 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %10) #14
  %37 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 3
  store i32 %36, ptr %37, align 4, !tbaa !96
  %38 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 6
  %39 = load i8, ptr %38, align 1, !tbaa !111
  %40 = or i8 %39, 2
  store i8 %40, ptr %38, align 1, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remap_uvs_19_21_22(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 !PGOFuncName !160 {
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 2
  %12 = sext i32 %4 to i64
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %14 = sext i32 %3 to i64
  %15 = zext nneg i32 %5 to i64
  %16 = zext nneg i32 %6 to i64
  %17 = zext nneg i32 %7 to i64
  br label %18

18:                                               ; preds = %10, %18
  %19 = phi i32 [ 0, %10 ], [ %33, %18 ]
  %20 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %11, i32 noundef 5, i32 noundef %19) #13
  %21 = getelementptr inbounds %struct.MTFace, ptr %20, i64 %12
  %22 = getelementptr inbounds %struct.MTFace, ptr %21, i64 1
  %23 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %13, i32 noundef 5, i32 noundef %19) #13
  %24 = getelementptr inbounds %struct.MTFace, ptr %23, i64 %14
  %25 = getelementptr inbounds [4 x [2 x float]], ptr %24, i64 0, i64 %15
  tail call fastcc void @copy_v2_v2(ptr noundef %21, ptr noundef %25) #14
  %26 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 1
  %27 = getelementptr inbounds [4 x [2 x float]], ptr %24, i64 0, i64 %16
  tail call void @mid_v2_v2v2(ptr noundef nonnull %26, ptr noundef %25, ptr noundef %27) #13
  %28 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 2
  %29 = getelementptr inbounds [4 x [2 x float]], ptr %24, i64 0, i64 %17
  tail call void @mid_v2_v2v2(ptr noundef nonnull %28, ptr noundef %25, ptr noundef %29) #13
  tail call void @mid_v2_v2v2(ptr noundef nonnull %22, ptr noundef %25, ptr noundef %27) #13
  %30 = getelementptr inbounds %struct.MTFace, ptr %21, i64 1, i32 0, i64 1
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %30, ptr noundef %27) #14
  %31 = getelementptr inbounds %struct.MTFace, ptr %21, i64 1, i32 0, i64 2
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %31, ptr noundef %29) #14
  %32 = getelementptr inbounds %struct.MTFace, ptr %21, i64 1, i32 0, i64 3
  tail call void @mid_v2_v2v2(ptr noundef nonnull %32, ptr noundef %25, ptr noundef %29) #13
  %33 = add nuw nsw i32 %19, 1
  %34 = icmp eq i32 %33, %2
  br i1 %34, label %35, label %18, !llvm.loop !161

35:                                               ; preds = %18, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remap_faces_23(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #0 !PGOFuncName !162 {
  %12 = tail call fastcc ptr @get_dface(ptr noundef %0, ptr noundef %1, i32 noundef %7, i32 noundef %5, ptr noundef %2) #14
  %13 = add nsw i32 %7, 1
  %14 = tail call fastcc ptr @get_dface(ptr noundef %0, ptr noundef %1, i32 noundef %13, i32 noundef %5, ptr noundef %2) #14
  %15 = add nsw i32 %7, 2
  %16 = tail call fastcc ptr @get_dface(ptr noundef %0, ptr noundef %1, i32 noundef %15, i32 noundef %5, ptr noundef %2) #14
  %17 = sext i32 %8 to i64
  %18 = getelementptr inbounds i32, ptr %4, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !75
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds i32, ptr %3, i64 %20
  store i32 %19, ptr %21, align 4, !tbaa !75
  store i32 %8, ptr %12, align 4, !tbaa !92
  %22 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %9) #14
  %23 = getelementptr inbounds %struct.MFace, ptr %12, i64 0, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !94
  %24 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %9, i32 noundef %10) #14
  %25 = getelementptr inbounds %struct.MFace, ptr %12, i64 0, i32 2
  store i32 %24, ptr %25, align 4, !tbaa !95
  %26 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %10) #14
  %27 = getelementptr inbounds %struct.MFace, ptr %12, i64 0, i32 3
  store i32 %26, ptr %27, align 4, !tbaa !96
  %28 = getelementptr inbounds %struct.MFace, ptr %12, i64 0, i32 6
  %29 = load i8, ptr %28, align 1, !tbaa !111
  %30 = or i8 %29, 2
  store i8 %30, ptr %28, align 1, !tbaa !111
  %31 = sext i32 %9 to i64
  %32 = getelementptr inbounds i32, ptr %4, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !75
  %34 = sext i32 %13 to i64
  %35 = getelementptr inbounds i32, ptr %3, i64 %34
  store i32 %33, ptr %35, align 4, !tbaa !75
  %36 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %9) #14
  store i32 %36, ptr %14, align 4, !tbaa !92
  %37 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 1
  store i32 %9, ptr %37, align 4, !tbaa !94
  %38 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %9, i32 noundef %10) #14
  %39 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 2
  store i32 %38, ptr %39, align 4, !tbaa !95
  %40 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 3
  store i32 0, ptr %40, align 4, !tbaa !96
  %41 = getelementptr inbounds %struct.MFace, ptr %14, i64 0, i32 6
  %42 = load i8, ptr %41, align 1, !tbaa !111
  %43 = and i8 %42, -3
  store i8 %43, ptr %41, align 1, !tbaa !111
  %44 = sext i32 %10 to i64
  %45 = getelementptr inbounds i32, ptr %4, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !75
  %47 = sext i32 %15 to i64
  %48 = getelementptr inbounds i32, ptr %3, i64 %47
  store i32 %46, ptr %48, align 4, !tbaa !75
  %49 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %8, i32 noundef %10) #14
  store i32 %49, ptr %16, align 4, !tbaa !92
  %50 = tail call fastcc i32 @edgecut_get(ptr noundef %6, i32 noundef %9, i32 noundef %10) #14
  %51 = getelementptr inbounds %struct.MFace, ptr %16, i64 0, i32 1
  store i32 %50, ptr %51, align 4, !tbaa !94
  %52 = getelementptr inbounds %struct.MFace, ptr %16, i64 0, i32 2
  store i32 %10, ptr %52, align 4, !tbaa !95
  %53 = getelementptr inbounds %struct.MFace, ptr %16, i64 0, i32 3
  store i32 0, ptr %53, align 4, !tbaa !96
  %54 = getelementptr inbounds %struct.MFace, ptr %16, i64 0, i32 6
  %55 = load i8, ptr %54, align 1, !tbaa !111
  %56 = and i8 %55, -3
  store i8 %56, ptr %54, align 1, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remap_uvs_23(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 !PGOFuncName !163 {
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 2
  %12 = sext i32 %4 to i64
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 2
  %14 = sext i32 %3 to i64
  %15 = zext nneg i32 %5 to i64
  %16 = zext nneg i32 %6 to i64
  %17 = zext nneg i32 %7 to i64
  br label %18

18:                                               ; preds = %10, %18
  %19 = phi i32 [ 0, %10 ], [ %33, %18 ]
  %20 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %11, i32 noundef 5, i32 noundef %19) #13
  %21 = getelementptr inbounds %struct.MTFace, ptr %20, i64 %12
  %22 = getelementptr inbounds %struct.MTFace, ptr %21, i64 1
  %23 = tail call ptr @CustomData_get_layer_n(ptr noundef nonnull %13, i32 noundef 5, i32 noundef %19) #13
  %24 = getelementptr inbounds %struct.MTFace, ptr %23, i64 %14
  %25 = getelementptr inbounds [4 x [2 x float]], ptr %24, i64 0, i64 %15
  tail call fastcc void @copy_v2_v2(ptr noundef %21, ptr noundef %25) #14
  %26 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 1
  %27 = getelementptr inbounds [4 x [2 x float]], ptr %24, i64 0, i64 %16
  tail call void @mid_v2_v2v2(ptr noundef nonnull %26, ptr noundef %25, ptr noundef %27) #13
  %28 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 2
  %29 = getelementptr inbounds [4 x [2 x float]], ptr %24, i64 0, i64 %17
  tail call void @mid_v2_v2v2(ptr noundef nonnull %28, ptr noundef %27, ptr noundef %29) #13
  %30 = getelementptr inbounds [4 x [2 x float]], ptr %21, i64 0, i64 3
  tail call void @mid_v2_v2v2(ptr noundef nonnull %30, ptr noundef %25, ptr noundef %29) #13
  tail call void @mid_v2_v2v2(ptr noundef nonnull %22, ptr noundef %25, ptr noundef %27) #13
  %31 = getelementptr inbounds %struct.MTFace, ptr %21, i64 1, i32 0, i64 1
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %31, ptr noundef %27) #14
  %32 = getelementptr inbounds %struct.MTFace, ptr %21, i64 1, i32 0, i64 2
  tail call void @mid_v2_v2v2(ptr noundef nonnull %32, ptr noundef %27, ptr noundef %29) #13
  tail call void @mid_v2_v2v2(ptr noundef nonnull %22, ptr noundef %25, ptr noundef %29) #13
  tail call void @mid_v2_v2v2(ptr noundef nonnull %31, ptr noundef %27, ptr noundef %29) #13
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %32, ptr noundef %29) #14
  %33 = add nuw nsw i32 %19, 1
  %34 = icmp eq i32 %33, %2
  br i1 %34, label %35, label %18, !llvm.loop !164

35:                                               ; preds = %18, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_dface(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !PGOFuncName !165 {
  %6 = tail call ptr @CDDM_get_tessface(ptr noundef %1, i32 noundef %2) #13
  tail call void @DM_copy_tessface_data(ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef %2, i32 noundef 1) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !129
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @CDDM_get_tessface(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @test_index_face(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_edgehash_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @CDDM_calc_edges_tessface(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @CDDM_tessfaces_to_faces(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @edgecut_get(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !166 {
  %4 = tail call ptr @BLI_edgehash_lookup(ptr noundef %0, i32 noundef %1, i32 noundef %2) #13
  %5 = ptrtoint ptr %4 to i64
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @BLI_edgehash_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CustomData_get_layer_n(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !167 {
  %3 = load float, ptr %1, align 4, !tbaa !131
  store float %3, ptr %0, align 4, !tbaa !131
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !131
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !131
  ret void
}

; Function Attrs: optsize
declare void @mid_v2_v2v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @DM_copy_tessface_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @CustomData_get_layer_named(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @psys_create_lattice_deform_data(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @psys_get_birth_coordinates(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @psys_get_particle_state(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !168 {
  %3 = load float, ptr %1, align 4, !tbaa !131
  %4 = load float, ptr %0, align 4, !tbaa !131
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !131
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !131
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !131
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !131
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !131
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !131
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !131
  ret void
}

; Function Attrs: optsize
declare void @sub_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @end_latt_deform(ptr noundef) local_unnamed_addr #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }

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
!34 = !{!"MOD_explode.c:copyData"}
!35 = !{!36, !38, i64 112}
!36 = !{!"ExplodeModifierData", !37, i64 0, !38, i64 112, !42, i64 120, !42, i64 122, !43, i64 124, !39, i64 128}
!37 = !{!"ModifierData", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !38, i64 96, !38, i64 104}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"short", !39, i64 0}
!43 = !{!"float", !39, i64 0}
!44 = !{!"MOD_explode.c:applyModifier"}
!45 = !{!46, !38, i64 112}
!46 = !{!"ParticleSystemModifierData", !37, i64 0, !38, i64 112, !38, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !42, i64 140, !42, i64 142}
!47 = !{!48, !41, i64 320}
!48 = !{!"ParticleSystem", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !49, i64 72, !49, i64 88, !38, i64 104, !38, i64 112, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !49, i64 152, !39, i64 168, !39, i64 232, !43, i64 296, !43, i64 300, !43, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !42, i64 340, !42, i64 342, !42, i64 344, !42, i64 346, !39, i64 348, !39, i64 540, !42, i64 564, !42, i64 566, !38, i64 568, !38, i64 576, !49, i64 584, !38, i64 600, !38, i64 608, !41, i64 616, !41, i64 620, !38, i64 624, !38, i64 632, !38, i64 640, !43, i64 648, !43, i64 652}
!49 = !{!"ListBase", !38, i64 0, !38, i64 8}
!50 = !{!48, !38, i64 16}
!51 = !{!48, !38, i64 24}
!52 = !{!46, !38, i64 120}
!53 = !{!46, !42, i64 140}
!54 = !{!36, !42, i64 120}
!55 = !{!38, !38, i64 0}
!56 = !{!57, !38, i64 1120}
!57 = !{!"DerivedMesh", !58, i64 0, !58, i64 200, !58, i64 400, !58, i64 600, !58, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !38, i64 1032, !38, i64 1040, !41, i64 1048, !43, i64 1052, !41, i64 1056, !41, i64 1060, !38, i64 1064, !39, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!58 = !{!"CustomData", !38, i64 0, !39, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!59 = !{!37, !38, i64 96}
!60 = !{!57, !38, i64 1680}
!61 = !{!"MOD_explode.c:initData"}
!62 = !{!"MOD_explode.c:requiredDataMask"}
!63 = !{!36, !42, i64 122}
!64 = !{!"MOD_explode.c:freeData"}
!65 = !{!"MOD_explode.c:dependsOnTime"}
!66 = !{!"MOD_explode.c:findPrecedingParticlesystem"}
!67 = !{!37, !41, i64 16}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"MOD_explode.c:createFacepa"}
!71 = !{!57, !38, i64 1168}
!72 = !{!57, !38, i64 1184}
!73 = !{!57, !38, i64 1104}
!74 = !{!48, !41, i64 308}
!75 = !{!41, !41, i64 0}
!76 = distinct !{!76, !69, !77, !78}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = distinct !{!79, !69, !77, !78}
!80 = !{!57, !38, i64 1320}
!81 = !{!36, !43, i64 124}
!82 = distinct !{!82, !69}
!83 = !{!84, !42, i64 162}
!84 = !{!"ParticleSettings", !85, i64 0, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !41, i64 152, !41, i64 156, !42, i64 160, !42, i64 162, !42, i64 164, !42, i64 166, !42, i64 168, !42, i64 170, !42, i64 172, !42, i64 174, !41, i64 176, !41, i64 180, !42, i64 184, !42, i64 186, !42, i64 188, !42, i64 190, !42, i64 192, !42, i64 194, !42, i64 196, !42, i64 198, !42, i64 200, !42, i64 202, !42, i64 204, !42, i64 206, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !43, i64 232, !43, i64 236, !39, i64 240, !39, i64 248, !43, i64 256, !43, i64 260, !43, i64 264, !42, i64 268, !42, i64 270, !43, i64 272, !43, i64 276, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !39, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !42, i64 340, !39, i64 342, !43, i64 348, !43, i64 352, !43, i64 356, !43, i64 360, !43, i64 364, !43, i64 368, !43, i64 372, !39, i64 376, !43, i64 388, !43, i64 392, !43, i64 396, !43, i64 400, !43, i64 404, !43, i64 408, !43, i64 412, !39, i64 416, !43, i64 428, !43, i64 432, !43, i64 436, !43, i64 440, !41, i64 444, !41, i64 448, !43, i64 452, !43, i64 456, !43, i64 460, !43, i64 464, !43, i64 468, !43, i64 472, !43, i64 476, !43, i64 480, !43, i64 484, !43, i64 488, !43, i64 492, !43, i64 496, !43, i64 500, !43, i64 504, !43, i64 508, !43, i64 512, !43, i64 516, !43, i64 520, !43, i64 524, !43, i64 528, !43, i64 532, !43, i64 536, !43, i64 540, !43, i64 544, !43, i64 548, !39, i64 552, !43, i64 560, !43, i64 564, !41, i64 568, !41, i64 572, !39, i64 576, !38, i64 720, !49, i64 728, !38, i64 744, !38, i64 752, !38, i64 760, !38, i64 768, !38, i64 776, !38, i64 784, !42, i64 792, !39, i64 794}
!85 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !42, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !38, i64 112}
!86 = !{!87, !41, i64 152}
!87 = !{!"ParticleData", !88, i64 0, !88, i64 56, !38, i64 112, !38, i64 120, !38, i64 128, !41, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !41, i64 152, !41, i64 156, !39, i64 160, !43, i64 176, !43, i64 180, !43, i64 184, !41, i64 188, !41, i64 192, !42, i64 196, !42, i64 198}
!88 = !{!"ParticleKey", !39, i64 0, !39, i64 12, !39, i64 24, !39, i64 40, !43, i64 52}
!89 = !{!87, !41, i64 156}
!90 = !{!87, !43, i64 176}
!91 = distinct !{!91, !69}
!92 = !{!93, !41, i64 0}
!93 = !{!"MFace", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !42, i64 16, !39, i64 18, !39, i64 19}
!94 = !{!93, !41, i64 4}
!95 = !{!93, !41, i64 8}
!96 = !{!93, !41, i64 12}
!97 = distinct !{!97, !69}
!98 = !{!"MOD_explode.c:cutEdges"}
!99 = distinct !{!99, !69}
!100 = distinct !{!100, !69}
!101 = !{i8 0, i8 2}
!102 = distinct !{!102, !69}
!103 = !{!42, !42, i64 0}
!104 = distinct !{!104, !69}
!105 = !{!57, !38, i64 1144}
!106 = !{i64 0, i64 12, !107, i64 12, i64 6, !107, i64 18, i64 1, !107, i64 19, i64 1, !107}
!107 = !{!39, !39, i64 0}
!108 = distinct !{!108, !69}
!109 = distinct !{!109, !69}
!110 = !{!57, !38, i64 1304}
!111 = !{!93, !39, i64 19}
!112 = distinct !{!112, !69}
!113 = distinct !{!113, !69}
!114 = !{!"MOD_explode.c:explodeMesh"}
!115 = !{!116, !38, i64 0}
!116 = !{!"ParticleSimulationData", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !43, i64 40}
!117 = !{!116, !38, i64 8}
!118 = !{!116, !38, i64 16}
!119 = !{!116, !38, i64 24}
!120 = !{!87, !42, i64 198}
!121 = !{!87, !43, i64 140}
!122 = distinct !{!122, !69}
!123 = distinct !{!123, !69}
!124 = !{!48, !38, i64 136}
!125 = !{!88, !43, i64 52}
!126 = !{!87, !43, i64 180}
!127 = distinct !{!127, !69}
!128 = !{!57, !38, i64 1160}
!129 = !{i64 0, i64 4, !75, i64 4, i64 4, !75, i64 8, i64 4, !75, i64 12, i64 4, !75, i64 16, i64 2, !103, i64 18, i64 1, !107, i64 19, i64 1, !107}
!130 = !{!87, !43, i64 144}
!131 = !{!43, !43, i64 0}
!132 = distinct !{!132, !69}
!133 = !{!57, !41, i64 1056}
!134 = !{!"MOD_explode.c:add_v3_v3v3"}
!135 = !{!"MOD_explode.c:add_v3_v3"}
!136 = !{!"MOD_explode.c:mul_v3_fl"}
!137 = !{!"MOD_explode.c:BLI_edgehashIterator_isDone"}
!138 = !{!139, !38, i64 8}
!139 = !{!"EdgeHashIterator", !38, i64 0, !38, i64 8, !41, i64 16}
!140 = !{!"MOD_explode.c:BLI_edgehashIterator_setValue"}
!141 = !{!142, !38, i64 16}
!142 = !{!"_eh_Entry", !38, i64 0, !41, i64 8, !41, i64 12, !38, i64 16}
!143 = !{!"MOD_explode.c:BLI_edgehashIterator_getKey"}
!144 = !{!142, !41, i64 8}
!145 = !{!142, !41, i64 12}
!146 = !{!"MOD_explode.c:BLI_edgehashIterator_getValue"}
!147 = !{!"MOD_explode.c:remap_faces_3_6_9_12"}
!148 = !{!"MOD_explode.c:remap_uvs_3_6_9_12"}
!149 = distinct !{!149, !69}
!150 = !{!"MOD_explode.c:remap_faces_5_10"}
!151 = !{!"MOD_explode.c:remap_uvs_5_10"}
!152 = distinct !{!152, !69}
!153 = !{!"MOD_explode.c:remap_faces_15"}
!154 = !{!"MOD_explode.c:remap_uvs_15"}
!155 = distinct !{!155, !69}
!156 = !{!"MOD_explode.c:remap_faces_7_11_13_14"}
!157 = !{!"MOD_explode.c:remap_uvs_7_11_13_14"}
!158 = distinct !{!158, !69}
!159 = !{!"MOD_explode.c:remap_faces_19_21_22"}
!160 = !{!"MOD_explode.c:remap_uvs_19_21_22"}
!161 = distinct !{!161, !69}
!162 = !{!"MOD_explode.c:remap_faces_23"}
!163 = !{!"MOD_explode.c:remap_uvs_23"}
!164 = distinct !{!164, !69}
!165 = !{!"MOD_explode.c:get_dface"}
!166 = !{!"MOD_explode.c:edgecut_get"}
!167 = !{!"MOD_explode.c:copy_v2_v2"}
!168 = !{!"MOD_explode.c:sub_v3_v3"}
