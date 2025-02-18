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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @smoke_turbulence_init(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @smoke_free(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @smoke_get_density(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @smoke_turbulence_free(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @smoke_initWaveletBlenderRNA(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @smoke_initBlenderRNA(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readnone %4, ptr nocapture noundef readnone %5, ptr nocapture noundef readnone %6, ptr nocapture noundef readnone %7, ptr nocapture noundef readnone %8, ptr nocapture noundef readnone %9, ptr nocapture noundef readnone %10, ptr nocapture noundef readnone %11) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @smokeModifier_do(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @smoke_get_velocity_at(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  ret float 0.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @flame_get_spectrum(ptr nocapture noundef readnone %0, i32 noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
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

; Function Attrs: nounwind uwtable
define dso_local void @smokeModifier_reset(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %66, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %5, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %12(ptr noundef nonnull %9) #5
  br label %13

13:                                               ; preds = %11, %7
  %14 = load ptr, ptr %4, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 11
  store ptr null, ptr %15, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  tail call void @BLI_rw_mutex_lock(ptr noundef %21, i32 noundef 2) #5
  %22 = load ptr, ptr %4, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %22, i64 0, i32 1
  store ptr null, ptr %23, align 8, !tbaa !47
  %24 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %22, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  tail call void @BLI_rw_mutex_unlock(ptr noundef %25) #5
  br label %26

26:                                               ; preds = %19, %13
  %27 = load ptr, ptr %4, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %27, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store ptr null, ptr %30, align 8, !tbaa !42
  br label %34

34:                                               ; preds = %33, %29, %26
  %35 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 4
  store float -1.000000e+00, ptr %35, align 8, !tbaa !49
  %36 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %27, i64 0, i32 27
  store i32 0, ptr %36, align 4, !tbaa !50
  %37 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %27, i64 0, i32 53
  store i32 0, ptr %37, align 4, !tbaa !51
  br label %66

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !52
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %40, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !53
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %47(ptr noundef nonnull %44) #5
  br label %48

48:                                               ; preds = %46, %42
  %49 = load ptr, ptr %39, align 8, !tbaa !52
  %50 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %49, i64 0, i32 4
  store ptr null, ptr %50, align 8, !tbaa !53
  %51 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %49, i64 0, i32 5
  store i32 0, ptr %51, align 8, !tbaa !55
  br label %66

52:                                               ; preds = %38
  %53 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !56
  %55 = icmp eq ptr %54, null
  br i1 %55, label %66, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.SmokeCollSettings, ptr %54, i64 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.SmokeCollSettings, ptr %54, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !59
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %65(ptr noundef nonnull %62) #5
  store ptr null, ptr %61, align 8, !tbaa !59
  br label %66

66:                                               ; preds = %1, %34, %48, %52, %56, %60, %64
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @smokeModifier_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %82, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %5, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %12(ptr noundef nonnull %9) #5
  br label %13

13:                                               ; preds = %11, %7
  %14 = load ptr, ptr %4, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 11
  store ptr null, ptr %15, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void @BLI_rw_mutex_free(ptr noundef nonnull %17) #5
  br label %20

20:                                               ; preds = %19, %13
  %21 = load ptr, ptr %4, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %21, i64 0, i32 49
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %26(ptr noundef nonnull %23) #5
  br label %27

27:                                               ; preds = %25, %20
  %28 = load ptr, ptr %4, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %28, i64 0, i32 49
  store ptr null, ptr %29, align 8, !tbaa !60
  %30 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %28, i64 0, i32 48
  tail call void @BKE_ptcache_free_list(ptr noundef nonnull %30) #5
  %31 = load ptr, ptr %4, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %31, i64 0, i32 47
  store ptr null, ptr %32, align 8, !tbaa !46
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %34 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void %33(ptr noundef %34) #5
  store ptr null, ptr %4, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %3, %27
  %36 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !52
  %38 = icmp eq ptr %37, null
  br i1 %38, label %56, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %37, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !61
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 95
  %45 = load ptr, ptr %44, align 8, !tbaa !62
  tail call void %45(ptr noundef nonnull %41) #5
  br label %46

46:                                               ; preds = %43, %39
  %47 = load ptr, ptr %36, align 8, !tbaa !52
  %48 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %47, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !53
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %52(ptr noundef nonnull %49) #5
  br label %53

53:                                               ; preds = %51, %46
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %55 = load ptr, ptr %36, align 8, !tbaa !52
  tail call void %54(ptr noundef %55) #5
  store ptr null, ptr %36, align 8, !tbaa !52
  br label %56

56:                                               ; preds = %35, %53
  %57 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !56
  %59 = icmp eq ptr %58, null
  br i1 %59, label %82, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.SmokeCollSettings, ptr %58, i64 0, i32 3
  %62 = load i32, ptr %61, align 8, !tbaa !57
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.SmokeCollSettings, ptr %58, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !59
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %69(ptr noundef nonnull %66) #5
  store ptr null, ptr %65, align 8, !tbaa !59
  br label %70

70:                                               ; preds = %68, %64, %60
  %71 = load ptr, ptr %57, align 8, !tbaa !56
  %72 = getelementptr inbounds %struct.SmokeCollSettings, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !65
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.DerivedMesh, ptr %73, i64 0, i32 95
  %77 = load ptr, ptr %76, align 8, !tbaa !62
  tail call void %77(ptr noundef nonnull %73) #5
  br label %78

78:                                               ; preds = %75, %70
  %79 = load ptr, ptr %57, align 8, !tbaa !56
  %80 = getelementptr inbounds %struct.SmokeCollSettings, ptr %79, i64 0, i32 1
  store ptr null, ptr %80, align 8, !tbaa !65
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %81(ptr noundef %79) #5
  store ptr null, ptr %57, align 8, !tbaa !56
  br label %82

82:                                               ; preds = %78, %56, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @smokeModifier_createType(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %165, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %90, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %40, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %17(ptr noundef nonnull %14) #5
  br label %18

18:                                               ; preds = %16, %12
  %19 = load ptr, ptr %9, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %19, i64 0, i32 11
  store ptr null, ptr %20, align 8, !tbaa !45
  %21 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void @BLI_rw_mutex_free(ptr noundef nonnull %22) #5
  br label %25

25:                                               ; preds = %24, %18
  %26 = load ptr, ptr %9, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %26, i64 0, i32 49
  %28 = load ptr, ptr %27, align 8, !tbaa !60
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %31(ptr noundef nonnull %28) #5
  br label %32

32:                                               ; preds = %30, %25
  %33 = load ptr, ptr %9, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 49
  store ptr null, ptr %34, align 8, !tbaa !60
  %35 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %33, i64 0, i32 48
  tail call void @BKE_ptcache_free_list(ptr noundef nonnull %35) #5
  %36 = load ptr, ptr %9, align 8, !tbaa !34
  %37 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %36, i64 0, i32 47
  store ptr null, ptr %37, align 8, !tbaa !46
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %39 = load ptr, ptr %9, align 8, !tbaa !34
  tail call void %38(ptr noundef %39) #5
  store ptr null, ptr %9, align 8, !tbaa !34
  br label %40

40:                                               ; preds = %32, %8
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %42 = tail call ptr %41(i64 noundef 584, ptr noundef nonnull @.str) #5
  store ptr %42, ptr %9, align 8, !tbaa !34
  store ptr %0, ptr %42, align 8, !tbaa !67
  %43 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %42, i64 0, i32 48
  %44 = tail call ptr @BKE_ptcache_add(ptr noundef nonnull %43) #5
  %45 = load ptr, ptr %9, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %45, i64 0, i32 47
  store ptr %44, ptr %46, align 8, !tbaa !46
  %47 = load ptr, ptr %9, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %47, i64 0, i32 47
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = getelementptr inbounds %struct.PointCache, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !68
  %52 = or i32 %51, 64
  store i32 %52, ptr %50, align 8, !tbaa !68
  %53 = getelementptr inbounds %struct.PointCache, ptr %49, i64 0, i32 3
  store i32 1, ptr %53, align 4, !tbaa !71
  %54 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %47, i64 0, i32 47, i64 1
  store ptr null, ptr %54, align 8, !tbaa !46
  %55 = load ptr, ptr %9, align 8, !tbaa !34
  %56 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %55, i64 0, i32 48, i64 1
  %57 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %55, i64 0, i32 1
  store ptr null, ptr %57, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %56, i8 0, i64 16, i1 false)
  %58 = tail call ptr @BLI_rw_mutex_alloc() #5
  %59 = load ptr, ptr %9, align 8, !tbaa !34
  %60 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 2
  store ptr %58, ptr %60, align 8, !tbaa !48
  %61 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 3
  %62 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %61, i8 0, i64 32, i1 false)
  store i32 32, ptr %62, align 8, !tbaa !72
  %63 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 35
  store i32 1, ptr %63, align 4, !tbaa !73
  %64 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 33
  store float 0xBF50624DE0000000, ptr %64, align 4, !tbaa !74
  %65 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 34
  store float 0x3FB99999A0000000, ptr %65, align 8, !tbaa !75
  %66 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 51
  store float 1.000000e+00, ptr %66, align 4, !tbaa !76
  %67 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 52
  store float 2.000000e+00, ptr %67, align 8, !tbaa !77
  %68 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 50
  store i32 0, ptr %68, align 8, !tbaa !78
  %69 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 37
  store i32 8, ptr %69, align 4, !tbaa !79
  %70 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 55
  store i32 2, ptr %70, align 4, !tbaa !80
  %71 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 42
  store float 2.000000e+00, ptr %71, align 4, !tbaa !81
  %72 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 39
  store i16 1, ptr %72, align 4, !tbaa !82
  %73 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 41
  store i32 5, ptr %73, align 8, !tbaa !83
  %74 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 53
  store i32 0, ptr %74, align 4, !tbaa !51
  %75 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 30
  store i32 4, ptr %75, align 8, !tbaa !84
  %76 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 31
  store i32 0, ptr %76, align 4, !tbaa !85
  %77 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 32
  store float 0x3F947AE140000000, ptr %77, align 8, !tbaa !86
  %78 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 56
  store float 7.500000e-01, ptr %78, align 8, !tbaa !87
  %79 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 57
  store float 1.000000e+00, ptr %79, align 4, !tbaa !88
  %80 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 58
  store float 5.000000e-01, ptr %80, align 8, !tbaa !89
  %81 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 59
  store float 1.250000e+00, ptr %81, align 4, !tbaa !90
  %82 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 60
  store float 1.750000e+00, ptr %82, align 8, !tbaa !91
  %83 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 61
  store float 0x3FE6666660000000, ptr %83, align 4, !tbaa !92
  %84 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 61, i64 1
  store float 0x3FE6666660000000, ptr %84, align 4, !tbaa !92
  %85 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 61, i64 2
  store float 0x3FE6666660000000, ptr %85, align 4, !tbaa !92
  %86 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %59, i64 0, i32 38
  store i32 1, ptr %86, align 8, !tbaa !93
  %87 = tail call ptr @BKE_add_effector_weights(ptr noundef null) #5
  %88 = load ptr, ptr %9, align 8, !tbaa !34
  %89 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %88, i64 0, i32 49
  store ptr %87, ptr %89, align 8, !tbaa !60
  br label %165

90:                                               ; preds = %3
  %91 = and i32 %5, 2
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %132, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !52
  %96 = icmp eq ptr %95, null
  br i1 %96, label %114, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %95, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !61
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.DerivedMesh, ptr %99, i64 0, i32 95
  %103 = load ptr, ptr %102, align 8, !tbaa !62
  tail call void %103(ptr noundef nonnull %99) #5
  br label %104

104:                                              ; preds = %101, %97
  %105 = load ptr, ptr %94, align 8, !tbaa !52
  %106 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %105, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !53
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %110(ptr noundef nonnull %107) #5
  br label %111

111:                                              ; preds = %109, %104
  %112 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %113 = load ptr, ptr %94, align 8, !tbaa !52
  tail call void %112(ptr noundef %113) #5
  store ptr null, ptr %94, align 8, !tbaa !52
  br label %114

114:                                              ; preds = %111, %93
  %115 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %116 = tail call ptr %115(i64 noundef 184, ptr noundef nonnull @.str.1) #5
  store ptr %116, ptr %94, align 8, !tbaa !52
  store ptr %0, ptr %116, align 8, !tbaa !94
  %117 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %116, i64 0, i32 9
  store float 1.000000e+00, ptr %117, align 8, !tbaa !95
  %118 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %116, i64 0, i32 11
  store float 1.000000e+00, ptr %118, align 8, !tbaa !96
  %119 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %116, i64 0, i32 12
  store float 1.000000e+00, ptr %119, align 4, !tbaa !97
  %120 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %116, i64 0, i32 25
  store i32 18, ptr %120, align 4, !tbaa !98
  %121 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %116, i64 0, i32 6
  store float 1.000000e+00, ptr %121, align 4, !tbaa !99
  %122 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %116, i64 0, i32 13
  store float 0.000000e+00, ptr %122, align 8, !tbaa !100
  %123 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %116, i64 0, i32 14
  store float 1.500000e+00, ptr %123, align 4, !tbaa !101
  %124 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %116, i64 0, i32 23
  store i16 1, ptr %124, align 8, !tbaa !102
  %125 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %116, i64 0, i32 17
  store float 1.000000e+00, ptr %125, align 8, !tbaa !103
  %126 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %116, i64 0, i32 15
  store float 1.000000e+00, ptr %126, align 8, !tbaa !104
  %127 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %116, i64 0, i32 16
  store i32 0, ptr %127, align 4, !tbaa !105
  %128 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %116, i64 0, i32 10
  store float 0x3FE6666660000000, ptr %128, align 4, !tbaa !92
  %129 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %116, i64 0, i32 10, i64 1
  store float 0x3FE6666660000000, ptr %129, align 4, !tbaa !92
  %130 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %116, i64 0, i32 10, i64 2
  store float 0x3FE6666660000000, ptr %130, align 4, !tbaa !92
  %131 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %116, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %131, i8 0, i64 16, i1 false)
  br label %165

132:                                              ; preds = %90
  %133 = and i32 %5, 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %165, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !56
  %138 = icmp eq ptr %137, null
  br i1 %138, label %161, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.SmokeCollSettings, ptr %137, i64 0, i32 3
  %141 = load i32, ptr %140, align 8, !tbaa !57
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.SmokeCollSettings, ptr %137, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !59
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %143
  %148 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %148(ptr noundef nonnull %145) #5
  store ptr null, ptr %144, align 8, !tbaa !59
  br label %149

149:                                              ; preds = %147, %143, %139
  %150 = load ptr, ptr %136, align 8, !tbaa !56
  %151 = getelementptr inbounds %struct.SmokeCollSettings, ptr %150, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !65
  %153 = icmp eq ptr %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.DerivedMesh, ptr %152, i64 0, i32 95
  %156 = load ptr, ptr %155, align 8, !tbaa !62
  tail call void %156(ptr noundef nonnull %152) #5
  br label %157

157:                                              ; preds = %154, %149
  %158 = load ptr, ptr %136, align 8, !tbaa !56
  %159 = getelementptr inbounds %struct.SmokeCollSettings, ptr %158, i64 0, i32 1
  store ptr null, ptr %159, align 8, !tbaa !65
  %160 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %160(ptr noundef %158) #5
  store ptr null, ptr %136, align 8, !tbaa !56
  br label %161

161:                                              ; preds = %157, %135
  %162 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %163 = tail call ptr %162(i64 noundef 32, ptr noundef nonnull @.str.2) #5
  store ptr %163, ptr %136, align 8, !tbaa !56
  store ptr %0, ptr %163, align 8, !tbaa !106
  %164 = getelementptr inbounds %struct.SmokeCollSettings, ptr %163, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(22) %164, i8 0, i64 22, i1 false)
  br label %165

165:                                              ; preds = %40, %132, %161, %114, %1
  ret void
}

declare ptr @BKE_ptcache_add(ptr noundef) local_unnamed_addr #3

declare ptr @BLI_rw_mutex_alloc() local_unnamed_addr #3

declare ptr @BKE_add_effector_weights(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @smokeModifier_copy(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !66
  %5 = getelementptr inbounds %struct.SmokeModifierData, ptr %1, i64 0, i32 5
  store i32 %4, ptr %5, align 4, !tbaa !66
  %6 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 4
  %7 = load float, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.SmokeModifierData, ptr %1, i64 0, i32 4
  store float %7, ptr %8, align 8, !tbaa !49
  tail call void @smokeModifier_createType(ptr noundef %1)
  %9 = getelementptr inbounds %struct.SmokeModifierData, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %103, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  %17 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !107
  %18 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !108
  %20 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 5
  store ptr %19, ptr %20, align 8, !tbaa !108
  %21 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 30
  %22 = load i32, ptr %21, align 8, !tbaa !84
  %23 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 30
  store i32 %22, ptr %23, align 8, !tbaa !84
  %24 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 31
  %25 = load i32, ptr %24, align 4, !tbaa !85
  %26 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 31
  store i32 %25, ptr %26, align 4, !tbaa !85
  %27 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 32
  %28 = load float, ptr %27, align 8, !tbaa !86
  %29 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 32
  store float %28, ptr %29, align 8, !tbaa !86
  %30 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 33
  %31 = load float, ptr %30, align 4, !tbaa !74
  %32 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 33
  store float %31, ptr %32, align 4, !tbaa !74
  %33 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 34
  %34 = load float, ptr %33, align 8, !tbaa !75
  %35 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 34
  store float %34, ptr %35, align 8, !tbaa !75
  %36 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 35
  %37 = load i32, ptr %36, align 4, !tbaa !73
  %38 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 35
  store i32 %37, ptr %38, align 4, !tbaa !73
  %39 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 36
  %40 = load i32, ptr %39, align 8, !tbaa !72
  %41 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 36
  store i32 %40, ptr %41, align 8, !tbaa !72
  %42 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 37
  %43 = load i32, ptr %42, align 4, !tbaa !79
  %44 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 37
  store i32 %43, ptr %44, align 4, !tbaa !79
  %45 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 55
  %46 = load i32, ptr %45, align 4, !tbaa !80
  %47 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 55
  store i32 %46, ptr %47, align 4, !tbaa !80
  %48 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 38
  %49 = load i32, ptr %48, align 8, !tbaa !93
  %50 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 38
  store i32 %49, ptr %50, align 8, !tbaa !93
  %51 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 39
  %52 = load i16, ptr %51, align 4, !tbaa !82
  %53 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 39
  store i16 %52, ptr %53, align 4, !tbaa !82
  %54 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 41
  %55 = load i32, ptr %54, align 8, !tbaa !83
  %56 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 41
  store i32 %55, ptr %56, align 8, !tbaa !83
  %57 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 42
  %58 = load float, ptr %57, align 4, !tbaa !81
  %59 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 42
  store float %58, ptr %59, align 4, !tbaa !81
  %60 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 50
  %61 = load i32, ptr %60, align 8, !tbaa !78
  %62 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 50
  store i32 %61, ptr %62, align 8, !tbaa !78
  %63 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 52
  %64 = load float, ptr %63, align 8, !tbaa !77
  %65 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 52
  store float %64, ptr %65, align 8, !tbaa !77
  %66 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 51
  %67 = load float, ptr %66, align 4, !tbaa !76
  %68 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 51
  store float %67, ptr %68, align 4, !tbaa !76
  %69 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 56
  %70 = load float, ptr %69, align 8, !tbaa !87
  %71 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 56
  store float %70, ptr %71, align 8, !tbaa !87
  %72 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 57
  %73 = load float, ptr %72, align 4, !tbaa !88
  %74 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 57
  store float %73, ptr %74, align 4, !tbaa !88
  %75 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 58
  %76 = load float, ptr %75, align 8, !tbaa !89
  %77 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 58
  store float %76, ptr %77, align 8, !tbaa !89
  %78 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 59
  %79 = load float, ptr %78, align 4, !tbaa !90
  %80 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 59
  store float %79, ptr %80, align 4, !tbaa !90
  %81 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 60
  %82 = load float, ptr %81, align 8, !tbaa !91
  %83 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 60
  store float %82, ptr %83, align 8, !tbaa !91
  %84 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 61
  %85 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 61
  %86 = load float, ptr %85, align 4, !tbaa !92
  store float %86, ptr %84, align 4, !tbaa !92
  %87 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 61, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !92
  %89 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 61, i64 1
  store float %88, ptr %89, align 4, !tbaa !92
  %90 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %14, i64 0, i32 61, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !92
  %92 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 61, i64 2
  store float %91, ptr %92, align 4, !tbaa !92
  %93 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %94 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %10, i64 0, i32 49
  %95 = load ptr, ptr %94, align 8, !tbaa !60
  tail call void %93(ptr noundef %95) #5
  %96 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %97 = load ptr, ptr %13, align 8, !tbaa !34
  %98 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %97, i64 0, i32 49
  %99 = load ptr, ptr %98, align 8, !tbaa !60
  %100 = tail call ptr %96(ptr noundef %99) #5
  %101 = load ptr, ptr %9, align 8, !tbaa !34
  %102 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %101, i64 0, i32 49
  store ptr %100, ptr %102, align 8, !tbaa !60
  br label %180

103:                                              ; preds = %2
  %104 = getelementptr inbounds %struct.SmokeModifierData, ptr %1, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !52
  %106 = icmp eq ptr %105, null
  br i1 %106, label %180, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.SmokeModifierData, ptr %0, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !52
  %110 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %109, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !109
  %112 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %105, i64 0, i32 2
  store ptr %111, ptr %112, align 8, !tbaa !109
  %113 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %109, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !110
  %115 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %105, i64 0, i32 3
  store ptr %114, ptr %115, align 8, !tbaa !110
  %116 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %109, i64 0, i32 6
  %117 = load float, ptr %116, align 4, !tbaa !99
  %118 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %105, i64 0, i32 6
  store float %117, ptr %118, align 4, !tbaa !99
  %119 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %109, i64 0, i32 7
  %120 = load float, ptr %119, align 8, !tbaa !111
  %121 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %105, i64 0, i32 7
  store float %120, ptr %121, align 8, !tbaa !111
  %122 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %109, i64 0, i32 8
  %123 = load float, ptr %122, align 4, !tbaa !112
  %124 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %105, i64 0, i32 8
  store float %123, ptr %124, align 4, !tbaa !112
  %125 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %109, i64 0, i32 9
  %126 = load float, ptr %125, align 8, !tbaa !95
  %127 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %105, i64 0, i32 9
  store float %126, ptr %127, align 8, !tbaa !95
  %128 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %105, i64 0, i32 10
  %129 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %109, i64 0, i32 10
  %130 = load float, ptr %129, align 4, !tbaa !92
  store float %130, ptr %128, align 4, !tbaa !92
  %131 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %109, i64 0, i32 10, i64 1
  %132 = load float, ptr %131, align 4, !tbaa !92
  %133 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %105, i64 0, i32 10, i64 1
  store float %132, ptr %133, align 4, !tbaa !92
  %134 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %109, i64 0, i32 10, i64 2
  %135 = load float, ptr %134, align 4, !tbaa !92
  %136 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %105, i64 0, i32 10, i64 2
  store float %135, ptr %136, align 4, !tbaa !92
  %137 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %109, i64 0, i32 11
  %138 = load float, ptr %137, align 8, !tbaa !96
  %139 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %105, i64 0, i32 11
  store float %138, ptr %139, align 8, !tbaa !96
  %140 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %109, i64 0, i32 12
  %141 = load float, ptr %140, align 4, !tbaa !97
  %142 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %105, i64 0, i32 12
  store float %141, ptr %142, align 4, !tbaa !97
  %143 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %109, i64 0, i32 13
  %144 = load float, ptr %143, align 8, !tbaa !100
  %145 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %105, i64 0, i32 13
  store float %144, ptr %145, align 8, !tbaa !100
  %146 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %109, i64 0, i32 14
  %147 = load float, ptr %146, align 4, !tbaa !101
  %148 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %105, i64 0, i32 14
  store float %147, ptr %148, align 4, !tbaa !101
  %149 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %109, i64 0, i32 15
  %150 = load float, ptr %149, align 8, !tbaa !104
  %151 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %105, i64 0, i32 15
  store float %150, ptr %151, align 8, !tbaa !104
  %152 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %109, i64 0, i32 16
  %153 = load i32, ptr %152, align 4, !tbaa !105
  %154 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %105, i64 0, i32 16
  store i32 %153, ptr %154, align 4, !tbaa !105
  %155 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %109, i64 0, i32 17
  %156 = load float, ptr %155, align 8, !tbaa !103
  %157 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %105, i64 0, i32 17
  store float %156, ptr %157, align 8, !tbaa !103
  %158 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %109, i64 0, i32 18
  %159 = load float, ptr %158, align 4, !tbaa !113
  %160 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %105, i64 0, i32 18
  store float %159, ptr %160, align 4, !tbaa !113
  %161 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %105, i64 0, i32 20
  %162 = tail call ptr @BLI_strncpy(ptr noundef nonnull %161, ptr noundef nonnull %161, i64 noundef 64) #5
  %163 = load ptr, ptr %108, align 8, !tbaa !52
  %164 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %163, i64 0, i32 21
  %165 = load i16, ptr %164, align 4, !tbaa !114
  %166 = load ptr, ptr %104, align 8, !tbaa !52
  %167 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %166, i64 0, i32 21
  store i16 %165, ptr %167, align 4, !tbaa !114
  %168 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %163, i64 0, i32 22
  %169 = load i16, ptr %168, align 2, !tbaa !115
  %170 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %166, i64 0, i32 22
  store i16 %169, ptr %170, align 2, !tbaa !115
  %171 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %163, i64 0, i32 23
  %172 = load i16, ptr %171, align 8, !tbaa !102
  %173 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %166, i64 0, i32 23
  store i16 %172, ptr %173, align 8, !tbaa !102
  %174 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %163, i64 0, i32 24
  %175 = load i16, ptr %174, align 2, !tbaa !116
  %176 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %166, i64 0, i32 24
  store i16 %175, ptr %176, align 2, !tbaa !116
  %177 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %163, i64 0, i32 25
  %178 = load i32, ptr %177, align 4, !tbaa !98
  %179 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %166, i64 0, i32 25
  store i32 %178, ptr %179, align 4, !tbaa !98
  br label %180

180:                                              ; preds = %103, %107, %12
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @BLI_rw_mutex_lock(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BLI_rw_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare void @BLI_rw_mutex_free(ptr noundef) local_unnamed_addr #3

declare void @BKE_ptcache_free_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!45 = !{!43, !37, i64 88}
!46 = !{!37, !37, i64 0}
!47 = !{!43, !37, i64 8}
!48 = !{!43, !37, i64 16}
!49 = !{!35, !41, i64 136}
!50 = !{!43, !40, i64 380}
!51 = !{!43, !40, i64 532}
!52 = !{!35, !37, i64 120}
!53 = !{!54, !37, i64 32}
!54 = !{!"SmokeFlowSettings", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !40, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !38, i64 60, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !41, i64 88, !40, i64 92, !41, i64 96, !41, i64 100, !40, i64 104, !38, i64 108, !44, i64 172, !44, i64 174, !44, i64 176, !44, i64 178, !40, i64 180}
!55 = !{!54, !40, i64 40}
!56 = !{!35, !37, i64 128}
!57 = !{!58, !40, i64 24}
!58 = !{!"SmokeCollSettings", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !44, i64 28, !44, i64 30}
!59 = !{!58, !37, i64 16}
!60 = !{!43, !37, i64 512}
!61 = !{!54, !37, i64 8}
!62 = !{!63, !37, i64 1680}
!63 = !{!"DerivedMesh", !64, i64 0, !64, i64 200, !64, i64 400, !64, i64 600, !64, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !41, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!64 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!65 = !{!58, !37, i64 8}
!66 = !{!35, !40, i64 140}
!67 = !{!43, !37, i64 0}
!68 = !{!69, !40, i64 16}
!69 = !{!"PointCache", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !44, i64 60, !44, i64 62, !38, i64 64, !38, i64 128, !38, i64 192, !38, i64 256, !37, i64 1280, !70, i64 1288, !37, i64 1304, !37, i64 1312}
!70 = !{!"ListBase", !37, i64 0, !37, i64 8}
!71 = !{!69, !40, i64 20}
!72 = !{!43, !40, i64 416}
!73 = !{!43, !40, i64 412}
!74 = !{!43, !41, i64 404}
!75 = !{!43, !41, i64 408}
!76 = !{!43, !41, i64 524}
!77 = !{!43, !41, i64 528}
!78 = !{!43, !40, i64 520}
!79 = !{!43, !40, i64 420}
!80 = !{!43, !40, i64 548}
!81 = !{!43, !41, i64 436}
!82 = !{!43, !44, i64 428}
!83 = !{!43, !40, i64 432}
!84 = !{!43, !40, i64 392}
!85 = !{!43, !40, i64 396}
!86 = !{!43, !41, i64 400}
!87 = !{!43, !41, i64 552}
!88 = !{!43, !41, i64 556}
!89 = !{!43, !41, i64 560}
!90 = !{!43, !41, i64 564}
!91 = !{!43, !41, i64 568}
!92 = !{!41, !41, i64 0}
!93 = !{!43, !40, i64 424}
!94 = !{!54, !37, i64 0}
!95 = !{!54, !41, i64 56}
!96 = !{!54, !41, i64 72}
!97 = !{!54, !41, i64 76}
!98 = !{!54, !40, i64 180}
!99 = !{!54, !41, i64 44}
!100 = !{!54, !41, i64 80}
!101 = !{!54, !41, i64 84}
!102 = !{!54, !44, i64 176}
!103 = !{!54, !41, i64 96}
!104 = !{!54, !41, i64 88}
!105 = !{!54, !40, i64 92}
!106 = !{!58, !37, i64 0}
!107 = !{!43, !37, i64 24}
!108 = !{!43, !37, i64 40}
!109 = !{!54, !37, i64 16}
!110 = !{!54, !37, i64 24}
!111 = !{!54, !41, i64 48}
!112 = !{!54, !41, i64 52}
!113 = !{!54, !41, i64 100}
!114 = !{!54, !44, i64 172}
!115 = !{!54, !44, i64 174}
!116 = !{!54, !44, i64 178}
