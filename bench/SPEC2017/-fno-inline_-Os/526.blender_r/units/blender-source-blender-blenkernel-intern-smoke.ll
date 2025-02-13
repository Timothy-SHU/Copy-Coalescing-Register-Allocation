; ModuleID = 'blender/source/blender/blenkernel/intern/smoke.c'
source_filename = "blender/source/blender/blenkernel/intern/smoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SmokeModifierData = type { %struct.ModifierData, ptr, ptr, ptr, float, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.SmokeDomainSettings = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x i32], [3 x float], [3 x float], [4 x [4 x float]], [4 x [4 x float]], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, float, float, i32, i32, float, float, float, i32, i32, i32, i32, i16, i16, i32, float, [3 x i32], float, i32, i32, [2 x ptr], [2 x %struct.ListBase], ptr, i32, float, float, i32, [3 x float], i32, float, float, float, float, float, [3 x float] }
%struct.ListBase = type { ptr, ptr }
%struct.SmokeFlowSettings = type { ptr, ptr, ptr, ptr, ptr, i32, float, float, float, float, [3 x float], float, float, float, float, float, i32, float, float, i32, [64 x i8], i16, i16, i16, i16, i32 }
%struct.SmokeCollSettings = type { ptr, ptr, ptr, i32, i16, i16 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"SmokeDomain\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SmokeFlow\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"SmokeColl\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @smoke_turbulence_init(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @smoke_free(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @smoke_get_density(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @smoke_turbulence_free(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @smoke_initWaveletBlenderRNA(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @smoke_initBlenderRNA(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readnone %4, ptr nocapture noundef readnone %5, ptr nocapture noundef readnone %6, ptr nocapture noundef readnone %7, ptr nocapture noundef readnone %8, ptr nocapture noundef readnone %9, ptr nocapture noundef readnone %10, ptr nocapture noundef readnone %11) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @smokeModifier_do(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef float @smoke_get_velocity_at(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  ret float 0.000000e+00
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @flame_get_spectrum(ptr nocapture noundef readnone %0, i32 noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @smokeModifier_reset_turbulence(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %5, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  store ptr null, ptr %8, align 8, !tbaa !42
  br label %12

12:                                               ; preds = %11, %7, %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @smokeModifier_reset(ptr noundef %0) local_unnamed_addr #2 {
  tail call fastcc void @smokeModifier_reset_ex(ptr noundef %0) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @smokeModifier_reset_ex(ptr noundef %0) unnamed_addr #2 !PGOFuncName !45 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %61, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %5, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %12(ptr noundef nonnull %9) #8
  %13 = load ptr, ptr %4, align 8, !tbaa !34
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %5, %7 ]
  %16 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %15, i64 0, i32 11
  store ptr null, ptr %16, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %15, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %15, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  tail call void @BLI_rw_mutex_lock(ptr noundef %22, i32 noundef 2) #8
  %23 = load ptr, ptr %4, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %23, i64 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %23, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !49
  tail call void @BLI_rw_mutex_unlock(ptr noundef %26) #8
  br label %27

27:                                               ; preds = %20, %14
  tail call void @smokeModifier_reset_turbulence(ptr noundef nonnull %0) #7
  %28 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 4
  store float -1.000000e+00, ptr %28, align 8, !tbaa !50
  %29 = load ptr, ptr %4, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %29, i64 0, i32 27
  store i32 0, ptr %30, align 4, !tbaa !51
  %31 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %29, i64 0, i32 53
  store i32 0, ptr %31, align 4, !tbaa !52
  br label %61

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !53
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %34, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %41(ptr noundef nonnull %38) #8
  %42 = load ptr, ptr %33, align 8, !tbaa !53
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi ptr [ %42, %40 ], [ %34, %36 ]
  %45 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %44, i64 0, i32 4
  store ptr null, ptr %45, align 8, !tbaa !54
  %46 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %44, i64 0, i32 5
  store i32 0, ptr %46, align 8, !tbaa !56
  br label %61

47:                                               ; preds = %32
  %48 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  %50 = icmp eq ptr %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.SmokeCollSettings, ptr %49, i64 0, i32 3
  %53 = load i32, ptr %52, align 8, !tbaa !58
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.SmokeCollSettings, ptr %49, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !60
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %60(ptr noundef nonnull %57) #8
  store ptr null, ptr %56, align 8, !tbaa !60
  br label %61

61:                                               ; preds = %51, %55, %59, %27, %47, %43, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @smokeModifier_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call fastcc void @smokeModifier_freeDomain(ptr noundef nonnull %0) #7
  tail call fastcc void @smokeModifier_freeFlow(ptr noundef nonnull %0) #7
  tail call fastcc void @smokeModifier_freeCollision(ptr noundef nonnull %0) #7
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @smokeModifier_freeDomain(ptr nocapture noundef %0) unnamed_addr #2 !PGOFuncName !61 {
  %2 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %10(ptr noundef nonnull %7) #8
  %11 = load ptr, ptr %2, align 8, !tbaa !34
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi ptr [ %11, %9 ], [ %3, %5 ]
  %14 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %13, i64 0, i32 11
  store ptr null, ptr %14, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %13, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  tail call void @BLI_rw_mutex_free(ptr noundef nonnull %16) #8
  %19 = load ptr, ptr %2, align 8, !tbaa !34
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi ptr [ %19, %18 ], [ %13, %12 ]
  %22 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %21, i64 0, i32 49
  %23 = load ptr, ptr %22, align 8, !tbaa !62
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %26(ptr noundef nonnull %23) #8
  %27 = load ptr, ptr %2, align 8, !tbaa !34
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi ptr [ %27, %25 ], [ %21, %20 ]
  %30 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %29, i64 0, i32 49
  store ptr null, ptr %30, align 8, !tbaa !62
  %31 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %29, i64 0, i32 48
  tail call void @BKE_ptcache_free_list(ptr noundef nonnull %31) #8
  %32 = load ptr, ptr %2, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %32, i64 0, i32 47
  store ptr null, ptr %33, align 8, !tbaa !47
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %35 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void %34(ptr noundef %35) #8
  store ptr null, ptr %2, align 8, !tbaa !34
  br label %36

36:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @smokeModifier_freeFlow(ptr nocapture noundef %0) unnamed_addr #2 !PGOFuncName !63 {
  %2 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  tail call void %11(ptr noundef nonnull %7) #8
  %12 = load ptr, ptr %2, align 8, !tbaa !53
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %12, %9 ], [ %3, %5 ]
  %15 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %19(ptr noundef nonnull %16) #8
  %20 = load ptr, ptr %2, align 8, !tbaa !53
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi ptr [ %20, %18 ], [ %14, %13 ]
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %23(ptr noundef %22) #8
  store ptr null, ptr %2, align 8, !tbaa !53
  br label %24

24:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @smokeModifier_freeCollision(ptr nocapture noundef %0) unnamed_addr #2 !PGOFuncName !68 {
  %2 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.SmokeCollSettings, ptr %3, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !58
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.SmokeCollSettings, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %14(ptr noundef nonnull %11) #8
  store ptr null, ptr %10, align 8, !tbaa !60
  %15 = load ptr, ptr %2, align 8, !tbaa !57
  br label %16

16:                                               ; preds = %9, %13, %5
  %17 = phi ptr [ %3, %9 ], [ %15, %13 ], [ %3, %5 ]
  %18 = getelementptr inbounds %struct.SmokeCollSettings, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 95
  %23 = load ptr, ptr %22, align 8, !tbaa !65
  tail call void %23(ptr noundef nonnull %19) #8
  %24 = load ptr, ptr %2, align 8, !tbaa !57
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi ptr [ %24, %21 ], [ %17, %16 ]
  %27 = getelementptr inbounds %struct.SmokeCollSettings, ptr %26, i64 0, i32 1
  store ptr null, ptr %27, align 8, !tbaa !69
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %28(ptr noundef %26) #8
  store ptr null, ptr %2, align 8, !tbaa !57
  br label %29

29:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @smokeModifier_createType(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %88, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !70
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %56, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call fastcc void @smokeModifier_freeDomain(ptr noundef nonnull %0) #7
  br label %13

13:                                               ; preds = %12, %8
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %15 = tail call ptr %14(i64 noundef 584, ptr noundef nonnull @.str) #8
  store ptr %15, ptr %9, align 8, !tbaa !34
  store ptr %0, ptr %15, align 8, !tbaa !71
  %16 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %15, i64 0, i32 48
  %17 = tail call ptr @BKE_ptcache_add(ptr noundef nonnull %16) #8
  %18 = load ptr, ptr %9, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %18, i64 0, i32 47
  store ptr %17, ptr %19, align 8, !tbaa !47
  %20 = load ptr, ptr %9, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %20, i64 0, i32 47
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.PointCache, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !72
  %25 = or i32 %24, 64
  store i32 %25, ptr %23, align 8, !tbaa !72
  %26 = getelementptr inbounds %struct.PointCache, ptr %22, i64 0, i32 3
  store i32 1, ptr %26, align 4, !tbaa !75
  %27 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %20, i64 0, i32 47, i64 1
  store ptr null, ptr %27, align 8, !tbaa !47
  %28 = load ptr, ptr %9, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %28, i64 0, i32 48, i64 1
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %29) #7
  %30 = load ptr, ptr %9, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %30, i64 0, i32 1
  store ptr null, ptr %31, align 8, !tbaa !48
  %32 = tail call ptr @BLI_rw_mutex_alloc() #8
  %33 = load ptr, ptr %9, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 2
  store ptr %32, ptr %34, align 8, !tbaa !49
  %35 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 3
  %36 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %35, i8 0, i64 32, i1 false)
  store i32 32, ptr %36, align 8, !tbaa !76
  %37 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 35
  store i32 1, ptr %37, align 4, !tbaa !77
  %38 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 34
  store float 0x3FB99999A0000000, ptr %38, align 8, !tbaa !78
  %39 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 51
  store <2 x float> <float 1.000000e+00, float 2.000000e+00>, ptr %39, align 4, !tbaa !79
  %40 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 50
  store i32 0, ptr %40, align 8, !tbaa !80
  %41 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 37
  store i32 8, ptr %41, align 4, !tbaa !81
  %42 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 55
  store i32 2, ptr %42, align 4, !tbaa !82
  %43 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 42
  store float 2.000000e+00, ptr %43, align 4, !tbaa !83
  %44 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 39
  store i16 1, ptr %44, align 4, !tbaa !84
  %45 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 41
  store i32 5, ptr %45, align 8, !tbaa !85
  %46 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 53
  store i32 0, ptr %46, align 4, !tbaa !52
  %47 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 30
  store i32 4, ptr %47, align 8, !tbaa !86
  %48 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 31
  store i32 0, ptr %48, align 4, !tbaa !87
  %49 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 32
  store <2 x float> <float 0x3F947AE140000000, float 0xBF50624DE0000000>, ptr %49, align 8, !tbaa !79
  %50 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 56
  store <4 x float> <float 7.500000e-01, float 1.000000e+00, float 5.000000e-01, float 1.250000e+00>, ptr %50, align 8, !tbaa !79
  %51 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 60
  store <4 x float> <float 1.750000e+00, float 0x3FE6666660000000, float 0x3FE6666660000000, float 0x3FE6666660000000>, ptr %51, align 8, !tbaa !79
  %52 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 38
  store i32 1, ptr %52, align 8, !tbaa !88
  %53 = tail call ptr @BKE_add_effector_weights(ptr noundef null) #8
  %54 = load ptr, ptr %9, align 8, !tbaa !34
  %55 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %54, i64 0, i32 49
  store ptr %53, ptr %55, align 8, !tbaa !62
  br label %88

56:                                               ; preds = %3
  %57 = and i32 %5, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !53
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call fastcc void @smokeModifier_freeFlow(ptr noundef nonnull %0) #7
  br label %64

64:                                               ; preds = %63, %59
  %65 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %66 = tail call ptr %65(i64 noundef 184, ptr noundef nonnull @.str.1) #8
  store ptr %66, ptr %60, align 8, !tbaa !53
  store ptr %0, ptr %66, align 8, !tbaa !89
  %67 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %66, i64 0, i32 9
  %68 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %66, i64 0, i32 11
  %69 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %66, i64 0, i32 25
  store i32 18, ptr %69, align 4, !tbaa !90
  %70 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %66, i64 0, i32 6
  store float 1.000000e+00, ptr %70, align 4, !tbaa !91
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.500000e+00>, ptr %68, align 8, !tbaa !79
  %71 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %66, i64 0, i32 23
  store i16 1, ptr %71, align 8, !tbaa !92
  %72 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %66, i64 0, i32 17
  store float 1.000000e+00, ptr %72, align 8, !tbaa !93
  %73 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %66, i64 0, i32 15
  store float 1.000000e+00, ptr %73, align 8, !tbaa !94
  %74 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %66, i64 0, i32 16
  store i32 0, ptr %74, align 4, !tbaa !95
  store <4 x float> <float 1.000000e+00, float 0x3FE6666660000000, float 0x3FE6666660000000, float 0x3FE6666660000000>, ptr %67, align 8, !tbaa !79
  %75 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %66, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %75, i8 0, i64 16, i1 false)
  br label %88

76:                                               ; preds = %56
  %77 = and i32 %5, 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !57
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  tail call fastcc void @smokeModifier_freeCollision(ptr noundef nonnull %0) #7
  br label %84

84:                                               ; preds = %83, %79
  %85 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %86 = tail call ptr %85(i64 noundef 32, ptr noundef nonnull @.str.2) #8
  store ptr %86, ptr %80, align 8, !tbaa !57
  store ptr %0, ptr %86, align 8, !tbaa !96
  %87 = getelementptr inbounds %struct.SmokeCollSettings, ptr %86, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22) %87, i8 0, i64 22, i1 false)
  br label %88

88:                                               ; preds = %13, %76, %84, %64, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_ptcache_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !97 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_rw_mutex_alloc() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_add_effector_weights(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @smokeModifier_copy(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !70
  %5 = getelementptr inbounds %struct.SmokeModifierData, ptr %1, i64 0, i32 5
  store i32 %4, ptr %5, align 4, !tbaa !70
  %6 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 4
  %7 = load float, ptr %6, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.SmokeModifierData, ptr %1, i64 0, i32 4
  store float %7, ptr %8, align 8, !tbaa !50
  tail call void @smokeModifier_createType(ptr noundef %1) #7
  %9 = getelementptr inbounds %struct.SmokeModifierData, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %70, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  %17 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !98
  %18 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !99
  %20 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 5
  store ptr %19, ptr %20, align 8, !tbaa !99
  %21 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 30
  %22 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 30
  %23 = load <2 x i32>, ptr %21, align 8, !tbaa !100
  store <2 x i32> %23, ptr %22, align 8, !tbaa !100
  %24 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 32
  %25 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 32
  %26 = load <2 x float>, ptr %24, align 8, !tbaa !79
  store <2 x float> %26, ptr %25, align 8, !tbaa !79
  %27 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 34
  %28 = load float, ptr %27, align 8, !tbaa !78
  %29 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 34
  store float %28, ptr %29, align 8, !tbaa !78
  %30 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 35
  %31 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 35
  %32 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 55
  %33 = load i32, ptr %32, align 4, !tbaa !82
  %34 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 55
  store i32 %33, ptr %34, align 4, !tbaa !82
  %35 = load <4 x i32>, ptr %30, align 4, !tbaa !100
  store <4 x i32> %35, ptr %31, align 4, !tbaa !100
  %36 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 39
  %37 = load i16, ptr %36, align 4, !tbaa !84
  %38 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 39
  store i16 %37, ptr %38, align 4, !tbaa !84
  %39 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 41
  %40 = load i32, ptr %39, align 8, !tbaa !85
  %41 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 41
  store i32 %40, ptr %41, align 8, !tbaa !85
  %42 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 42
  %43 = load float, ptr %42, align 4, !tbaa !83
  %44 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 42
  store float %43, ptr %44, align 4, !tbaa !83
  %45 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 50
  %46 = load i32, ptr %45, align 8, !tbaa !80
  %47 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 50
  store i32 %46, ptr %47, align 8, !tbaa !80
  %48 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 51
  %49 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 51
  %50 = load <2 x float>, ptr %48, align 4, !tbaa !79
  store <2 x float> %50, ptr %49, align 4, !tbaa !79
  %51 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 56
  %52 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 56
  %53 = load <4 x float>, ptr %51, align 8, !tbaa !79
  store <4 x float> %53, ptr %52, align 8, !tbaa !79
  %54 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 60
  %55 = load float, ptr %54, align 8, !tbaa !101
  %56 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 60
  store float %55, ptr %56, align 8, !tbaa !101
  %57 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 61
  %58 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 61
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %57, ptr noundef nonnull %58) #7
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %60 = load ptr, ptr %9, align 8, !tbaa !34
  %61 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %60, i64 0, i32 49
  %62 = load ptr, ptr %61, align 8, !tbaa !62
  tail call void %59(ptr noundef %62) #8
  %63 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %64 = load ptr, ptr %13, align 8, !tbaa !34
  %65 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %64, i64 0, i32 49
  %66 = load ptr, ptr %65, align 8, !tbaa !62
  %67 = tail call ptr %63(ptr noundef %66) #8
  %68 = load ptr, ptr %9, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %68, i64 0, i32 49
  store ptr %67, ptr %69, align 8, !tbaa !62
  br label %109

70:                                               ; preds = %2
  %71 = getelementptr inbounds %struct.SmokeModifierData, ptr %1, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !53
  %73 = icmp eq ptr %72, null
  br i1 %73, label %109, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !53
  %77 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %76, i64 0, i32 2
  %78 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %72, i64 0, i32 2
  %79 = load <2 x ptr>, ptr %77, align 8, !tbaa !47
  store <2 x ptr> %79, ptr %78, align 8, !tbaa !47
  %80 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %76, i64 0, i32 6
  %81 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %72, i64 0, i32 6
  %82 = load <4 x float>, ptr %80, align 4, !tbaa !79
  store <4 x float> %82, ptr %81, align 4, !tbaa !79
  %83 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %72, i64 0, i32 10
  %84 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %76, i64 0, i32 10
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %83, ptr noundef nonnull %84) #7
  %85 = load ptr, ptr %75, align 8, !tbaa !53
  %86 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %85, i64 0, i32 11
  %87 = load ptr, ptr %71, align 8, !tbaa !53
  %88 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %87, i64 0, i32 11
  %89 = load <4 x float>, ptr %86, align 8, !tbaa !79
  store <4 x float> %89, ptr %88, align 8, !tbaa !79
  %90 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %85, i64 0, i32 15
  %91 = load float, ptr %90, align 8, !tbaa !94
  %92 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %87, i64 0, i32 15
  store float %91, ptr %92, align 8, !tbaa !94
  %93 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %85, i64 0, i32 16
  %94 = load i32, ptr %93, align 4, !tbaa !95
  %95 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %87, i64 0, i32 16
  store i32 %94, ptr %95, align 4, !tbaa !95
  %96 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %85, i64 0, i32 17
  %97 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %87, i64 0, i32 17
  %98 = load <2 x float>, ptr %96, align 8, !tbaa !79
  store <2 x float> %98, ptr %97, align 8, !tbaa !79
  %99 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %87, i64 0, i32 20
  %100 = tail call ptr @BLI_strncpy(ptr noundef nonnull %99, ptr noundef nonnull %99, i64 noundef 64) #8
  %101 = load ptr, ptr %75, align 8, !tbaa !53
  %102 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %101, i64 0, i32 21
  %103 = load ptr, ptr %71, align 8, !tbaa !53
  %104 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %103, i64 0, i32 21
  %105 = load <4 x i16>, ptr %102, align 4, !tbaa !102
  store <4 x i16> %105, ptr %104, align 4, !tbaa !102
  %106 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %101, i64 0, i32 25
  %107 = load i32, ptr %106, align 4, !tbaa !90
  %108 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %103, i64 0, i32 25
  store i32 %107, ptr %108, align 4, !tbaa !90
  br label %109

109:                                              ; preds = %70, %74, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !103 {
  %3 = load float, ptr %1, align 4, !tbaa !79
  store float %3, ptr %0, align 4, !tbaa !79
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !79
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !79
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !79
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !79
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_rw_mutex_lock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_rw_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_rw_mutex_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_ptcache_free_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

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
!34 = !{!35, !37, i64 112}
!35 = !{!"SmokeModifierData", !36, i64 0, !37, i64 112, !37, i64 120, !37, i64 128, !41, i64 136, !40, i64 140}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!43, !37, i64 48}
!43 = !{!"SmokeDomainSettings", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !38, i64 96, !38, i64 108, !38, i64 120, !38, i64 132, !38, i64 144, !38, i64 156, !38, i64 168, !38, i64 180, !38, i64 192, !38, i64 204, !38, i64 268, !38, i64 332, !38, i64 344, !38, i64 356, !38, i64 368, !40, i64 380, !41, i64 384, !41, i64 388, !40, i64 392, !40, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !44, i64 428, !44, i64 430, !40, i64 432, !41, i64 436, !38, i64 440, !41, i64 452, !40, i64 456, !40, i64 460, !38, i64 464, !38, i64 480, !37, i64 512, !40, i64 520, !41, i64 524, !41, i64 528, !40, i64 532, !38, i64 536, !40, i64 548, !41, i64 552, !41, i64 556, !41, i64 560, !41, i64 564, !41, i64 568, !38, i64 572}
!44 = !{!"short", !38, i64 0}
!45 = !{!"smoke.c:smokeModifier_reset_ex"}
!46 = !{!43, !37, i64 88}
!47 = !{!37, !37, i64 0}
!48 = !{!43, !37, i64 8}
!49 = !{!43, !37, i64 16}
!50 = !{!35, !41, i64 136}
!51 = !{!43, !40, i64 380}
!52 = !{!43, !40, i64 532}
!53 = !{!35, !37, i64 120}
!54 = !{!55, !37, i64 32}
!55 = !{!"SmokeFlowSettings", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !40, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !38, i64 60, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !41, i64 88, !40, i64 92, !41, i64 96, !41, i64 100, !40, i64 104, !38, i64 108, !44, i64 172, !44, i64 174, !44, i64 176, !44, i64 178, !40, i64 180}
!56 = !{!55, !40, i64 40}
!57 = !{!35, !37, i64 128}
!58 = !{!59, !40, i64 24}
!59 = !{!"SmokeCollSettings", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !44, i64 28, !44, i64 30}
!60 = !{!59, !37, i64 16}
!61 = !{!"smoke.c:smokeModifier_freeDomain"}
!62 = !{!43, !37, i64 512}
!63 = !{!"smoke.c:smokeModifier_freeFlow"}
!64 = !{!55, !37, i64 8}
!65 = !{!66, !37, i64 1680}
!66 = !{!"DerivedMesh", !67, i64 0, !67, i64 200, !67, i64 400, !67, i64 600, !67, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !41, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!67 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!68 = !{!"smoke.c:smokeModifier_freeCollision"}
!69 = !{!59, !37, i64 8}
!70 = !{!35, !40, i64 140}
!71 = !{!43, !37, i64 0}
!72 = !{!73, !40, i64 16}
!73 = !{!"PointCache", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !44, i64 60, !44, i64 62, !38, i64 64, !38, i64 128, !38, i64 192, !38, i64 256, !37, i64 1280, !74, i64 1288, !37, i64 1304, !37, i64 1312}
!74 = !{!"ListBase", !37, i64 0, !37, i64 8}
!75 = !{!73, !40, i64 20}
!76 = !{!43, !40, i64 416}
!77 = !{!43, !40, i64 412}
!78 = !{!43, !41, i64 408}
!79 = !{!41, !41, i64 0}
!80 = !{!43, !40, i64 520}
!81 = !{!43, !40, i64 420}
!82 = !{!43, !40, i64 548}
!83 = !{!43, !41, i64 436}
!84 = !{!43, !44, i64 428}
!85 = !{!43, !40, i64 432}
!86 = !{!43, !40, i64 392}
!87 = !{!43, !40, i64 396}
!88 = !{!43, !40, i64 424}
!89 = !{!55, !37, i64 0}
!90 = !{!55, !40, i64 180}
!91 = !{!55, !41, i64 44}
!92 = !{!55, !44, i64 176}
!93 = !{!55, !41, i64 96}
!94 = !{!55, !41, i64 88}
!95 = !{!55, !40, i64 92}
!96 = !{!59, !37, i64 0}
!97 = !{!"smoke.c:BLI_listbase_clear"}
!98 = !{!43, !37, i64 24}
!99 = !{!43, !37, i64 40}
!100 = !{!40, !40, i64 0}
!101 = !{!43, !41, i64 568}
!102 = !{!44, !44, i64 0}
!103 = !{!"smoke.c:copy_v3_v3"}
