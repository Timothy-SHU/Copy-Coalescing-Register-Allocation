; ModuleID = 'blender/source/blender/modifiers/intern/MOD_particlesystem.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_particlesystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

@modifierType_ParticleSystem = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"ParticleSystem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ParticleSystemModifierData\00\00\00\00\00\00", i32 144, i32 1, i32 69, ptr @copyData, ptr @deformVerts, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @initData, ptr @requiredDataMask, ptr @freeData, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #5
  %3 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %1, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVerts(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 %4, i32 %5) #0 {
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %104, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = tail call i32 @psys_check_enabled(ptr noundef %1, ptr noundef %12) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %104, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %2, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %104, label %20

20:                                               ; preds = %17, %15
  %21 = phi ptr [ %2, %15 ], [ %18, %17 ]
  %22 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 10
  store i32 1, ptr %26, align 4, !tbaa !50
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 95
  %28 = load ptr, ptr %27, align 8, !tbaa !53
  tail call void %28(ptr noundef nonnull %23) #5
  br label %40

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 6
  %31 = load i16, ptr %30, align 4, !tbaa !54
  %32 = and i16 %31, 4
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = and i16 %31, -5
  store i16 %35, ptr %30, align 4, !tbaa !54
  br label %40

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 31
  %38 = load i16, ptr %37, align 4, !tbaa !55
  %39 = or i16 %38, 16
  store i16 %39, ptr %37, align 4, !tbaa !55
  br label %40

40:                                               ; preds = %34, %36, %25
  %41 = tail call ptr @CDDM_copy(ptr noundef nonnull %21) #5
  store ptr %41, ptr %22, align 8, !tbaa !49
  tail call void @CDDM_apply_vert_coords(ptr noundef %41, ptr noundef %3) #5
  %42 = load ptr, ptr %22, align 8, !tbaa !49
  tail call void @CDDM_calc_normals(ptr noundef %42) #5
  br i1 %16, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %21, i64 0, i32 10
  store i32 1, ptr %44, align 4, !tbaa !50
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %21, i64 0, i32 95
  %46 = load ptr, ptr %45, align 8, !tbaa !53
  tail call void %46(ptr noundef nonnull %21) #5
  br label %47

47:                                               ; preds = %43, %40
  %48 = load ptr, ptr %22, align 8, !tbaa !49
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %48, i64 0, i32 10
  store i32 0, ptr %49, align 4, !tbaa !50
  tail call void @DM_ensure_tessface(ptr noundef %48) #5
  %50 = load ptr, ptr %22, align 8, !tbaa !49
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %50, i64 0, i32 23
  %52 = load ptr, ptr %51, align 8, !tbaa !57
  %53 = tail call i32 %52(ptr noundef %50) #5
  %54 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !58
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %47
  %58 = load ptr, ptr %22, align 8, !tbaa !49
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %58, i64 0, i32 24
  %60 = load ptr, ptr %59, align 8, !tbaa !59
  %61 = tail call i32 %60(ptr noundef %58) #5
  %62 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 4
  %63 = load i32, ptr %62, align 4, !tbaa !60
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load ptr, ptr %22, align 8, !tbaa !49
  %67 = getelementptr inbounds %struct.DerivedMesh, ptr %66, i64 0, i32 25
  %68 = load ptr, ptr %67, align 8, !tbaa !61
  %69 = tail call i32 %68(ptr noundef %66) #5
  %70 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 5
  %71 = load i32, ptr %70, align 8, !tbaa !62
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %91, label %73

73:                                               ; preds = %65, %57, %47
  %74 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 31
  %75 = load i16, ptr %74, align 4, !tbaa !55
  %76 = or i16 %75, 16
  store i16 %76, ptr %74, align 4, !tbaa !55
  %77 = load ptr, ptr %22, align 8, !tbaa !49
  %78 = getelementptr inbounds %struct.DerivedMesh, ptr %77, i64 0, i32 23
  %79 = load ptr, ptr %78, align 8, !tbaa !57
  %80 = tail call i32 %79(ptr noundef %77) #5
  store i32 %80, ptr %54, align 8, !tbaa !58
  %81 = load ptr, ptr %22, align 8, !tbaa !49
  %82 = getelementptr inbounds %struct.DerivedMesh, ptr %81, i64 0, i32 24
  %83 = load ptr, ptr %82, align 8, !tbaa !59
  %84 = tail call i32 %83(ptr noundef %81) #5
  %85 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 4
  store i32 %84, ptr %85, align 4, !tbaa !60
  %86 = load ptr, ptr %22, align 8, !tbaa !49
  %87 = getelementptr inbounds %struct.DerivedMesh, ptr %86, i64 0, i32 25
  %88 = load ptr, ptr %87, align 8, !tbaa !61
  %89 = tail call i32 %88(ptr noundef %86) #5
  %90 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 5
  store i32 %89, ptr %90, align 8, !tbaa !62
  br label %91

91:                                               ; preds = %73, %65
  %92 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %93 = load i16, ptr %92, align 8, !tbaa !63
  %94 = and i16 %93, 16384
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 6
  %98 = load i16, ptr %97, align 4, !tbaa !54
  %99 = and i16 %98, -3
  store i16 %99, ptr %97, align 4, !tbaa !54
  %100 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !64
  tail call void @particle_system_update(ptr noundef %101, ptr noundef %1, ptr noundef %12) #5
  %102 = load i16, ptr %97, align 4, !tbaa !54
  %103 = or i16 %102, 2
  store i16 %103, ptr %97, align 4, !tbaa !54
  br label %104

104:                                              ; preds = %91, %96, %17, %10, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %2, %24
  %9 = phi i64 [ %26, %24 ], [ 0, %2 ]
  %10 = phi i64 [ %25, %24 ], [ 0, %2 ]
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 121, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.MTex, ptr %12, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !67
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load i16, ptr %12, align 8, !tbaa !69
  %20 = shl i16 %19, 1
  %21 = and i16 %20, 32
  %22 = zext nneg i16 %21 to i64
  %23 = or i64 %10, %22
  br label %24

24:                                               ; preds = %18, %8, %14
  %25 = phi i64 [ %10, %14 ], [ %10, %8 ], [ %23, %18 ]
  %26 = add nuw nsw i64 %9, 1
  %27 = icmp eq i64 %26, 18
  br i1 %27, label %28, label %8, !llvm.loop !70

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 73
  %30 = load float, ptr %29, align 4, !tbaa !73
  %31 = fcmp une float %30, 0.000000e+00
  %32 = or i64 %25, 32
  %33 = select i1 %31, i64 %32, i64 %25
  br label %37

34:                                               ; preds = %37
  %35 = add nuw nsw i64 %38, 1
  %36 = icmp eq i64 %35, 12
  br i1 %36, label %44, label %37, !llvm.loop !75

37:                                               ; preds = %28, %34
  %38 = phi i64 [ 0, %28 ], [ %35, %34 ]
  %39 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 36, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !76
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %34, label %42

42:                                               ; preds = %37
  %43 = or i64 %33, 4
  br label %44

44:                                               ; preds = %34, %42
  %45 = phi i64 [ %43, %42 ], [ %33, %34 ]
  %46 = or i64 %45, 2147500160
  br label %47

47:                                               ; preds = %2, %44
  %48 = phi i64 [ %46, %44 ], [ 0, %2 ]
  ret i64 %48
}

; Function Attrs: nounwind uwtable
define internal void @freeData(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 10
  store i32 1, ptr %6, align 4, !tbaa !50
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 95
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  tail call void %8(ptr noundef nonnull %3) #5
  store ptr null, ptr %2, align 8, !tbaa !49
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %11, i64 0, i32 25
  %15 = load i32, ptr %14, align 4, !tbaa !77
  %16 = or i32 %15, 256
  store i32 %16, ptr %14, align 4, !tbaa !77
  br label %17

17:                                               ; preds = %13, %9
  ret void
}

declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @psys_check_enabled(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #3

declare void @CDDM_apply_vert_coords(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @CDDM_calc_normals(ptr noundef) local_unnamed_addr #3

declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #3

declare void @particle_system_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !37, i64 1224}
!35 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !42, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !45, i64 1304, !45, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!"float", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!47, !37, i64 112}
!47 = !{!"ParticleSystemModifierData", !48, i64 0, !37, i64 112, !37, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !40, i64 140, !40, i64 142}
!48 = !{!"ModifierData", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!49 = !{!47, !37, i64 120}
!50 = !{!51, !41, i64 1020}
!51 = !{!"DerivedMesh", !52, i64 0, !52, i64 200, !52, i64 400, !52, i64 600, !52, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !37, i64 1032, !37, i64 1040, !41, i64 1048, !44, i64 1052, !41, i64 1056, !41, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!52 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!53 = !{!51, !37, i64 1680}
!54 = !{!47, !40, i64 140}
!55 = !{!56, !40, i64 340}
!56 = !{!"ParticleSystem", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !43, i64 72, !43, i64 88, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !38, i64 168, !38, i64 232, !44, i64 296, !44, i64 300, !44, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 540, !40, i64 564, !40, i64 566, !37, i64 568, !37, i64 576, !43, i64 584, !37, i64 600, !37, i64 608, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 632, !37, i64 640, !44, i64 648, !44, i64 652}
!57 = !{!51, !37, i64 1104}
!58 = !{!47, !41, i64 128}
!59 = !{!51, !37, i64 1112}
!60 = !{!47, !41, i64 132}
!61 = !{!51, !37, i64 1120}
!62 = !{!47, !41, i64 136}
!63 = !{!35, !40, i64 952}
!64 = !{!48, !37, i64 96}
!65 = !{!56, !37, i64 16}
!66 = !{!37, !37, i64 0}
!67 = !{!68, !40, i64 2}
!68 = !{!"MTex", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !38, i64 89, !38, i64 90, !38, i64 91, !38, i64 92, !38, i64 104, !44, i64 116, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !40, i64 128, !40, i64 130, !38, i64 132, !38, i64 133, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308}
!69 = !{!68, !40, i64 0}
!70 = distinct !{!70, !71, !72}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = !{!74, !44, i64 364}
!74 = !{!"ParticleSettings", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152, !41, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !41, i64 176, !41, i64 180, !40, i64 184, !40, i64 186, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !44, i64 232, !44, i64 236, !38, i64 240, !38, i64 248, !44, i64 256, !44, i64 260, !44, i64 264, !40, i64 268, !40, i64 270, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !38, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !38, i64 342, !44, i64 348, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !44, i64 368, !44, i64 372, !38, i64 376, !44, i64 388, !44, i64 392, !44, i64 396, !44, i64 400, !44, i64 404, !44, i64 408, !44, i64 412, !38, i64 416, !44, i64 428, !44, i64 432, !44, i64 436, !44, i64 440, !41, i64 444, !41, i64 448, !44, i64 452, !44, i64 456, !44, i64 460, !44, i64 464, !44, i64 468, !44, i64 472, !44, i64 476, !44, i64 480, !44, i64 484, !44, i64 488, !44, i64 492, !44, i64 496, !44, i64 500, !44, i64 504, !44, i64 508, !44, i64 512, !44, i64 516, !44, i64 520, !44, i64 524, !44, i64 528, !44, i64 532, !44, i64 536, !44, i64 540, !44, i64 544, !44, i64 548, !38, i64 552, !44, i64 560, !44, i64 564, !41, i64 568, !41, i64 572, !38, i64 576, !37, i64 720, !43, i64 728, !37, i64 744, !37, i64 752, !37, i64 760, !37, i64 768, !37, i64 776, !37, i64 784, !40, i64 792, !38, i64 794}
!75 = distinct !{!75, !71, !72}
!76 = !{!40, !40, i64 0}
!77 = !{!56, !41, i64 316}
