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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #5
  %3 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %1, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVerts(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 %4, i32 %5) #0 !PGOFuncName !35 {
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = icmp eq ptr %8, null
  br i1 %9, label %104, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = tail call i32 @psys_check_enabled(ptr noundef nonnull %1, ptr noundef %12) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %104, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %2, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = tail call ptr @get_dm(ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %104, label %20

20:                                               ; preds = %17, %15
  %21 = phi ptr [ %2, %15 ], [ %18, %17 ]
  %22 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 10
  store i32 1, ptr %26, align 4, !tbaa !52
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %23, i64 0, i32 95
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  tail call void %28(ptr noundef nonnull %23) #5
  br label %40

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 6
  %31 = load i16, ptr %30, align 4, !tbaa !56
  %32 = and i16 %31, 4
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = and i16 %31, -5
  store i16 %35, ptr %30, align 4, !tbaa !56
  br label %40

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 31
  %38 = load i16, ptr %37, align 4, !tbaa !57
  %39 = or i16 %38, 16
  store i16 %39, ptr %37, align 4, !tbaa !57
  br label %40

40:                                               ; preds = %34, %36, %25
  %41 = tail call ptr @CDDM_copy(ptr noundef nonnull %21) #5
  store ptr %41, ptr %22, align 8, !tbaa !51
  tail call void @CDDM_apply_vert_coords(ptr noundef %41, ptr noundef %3) #5
  %42 = load ptr, ptr %22, align 8, !tbaa !51
  tail call void @CDDM_calc_normals(ptr noundef %42) #5
  br i1 %16, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %21, i64 0, i32 10
  store i32 1, ptr %44, align 4, !tbaa !52
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %21, i64 0, i32 95
  %46 = load ptr, ptr %45, align 8, !tbaa !55
  tail call void %46(ptr noundef nonnull %21) #5
  br label %47

47:                                               ; preds = %43, %40
  %48 = load ptr, ptr %22, align 8, !tbaa !51
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %48, i64 0, i32 10
  store i32 0, ptr %49, align 4, !tbaa !52
  tail call void @DM_ensure_tessface(ptr noundef %48) #5
  %50 = load ptr, ptr %22, align 8, !tbaa !51
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %50, i64 0, i32 23
  %52 = load ptr, ptr %51, align 8, !tbaa !59
  %53 = tail call i32 %52(ptr noundef %50) #5
  %54 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !60
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %47
  %58 = load ptr, ptr %22, align 8, !tbaa !51
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %58, i64 0, i32 24
  %60 = load ptr, ptr %59, align 8, !tbaa !61
  %61 = tail call i32 %60(ptr noundef %58) #5
  %62 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 4
  %63 = load i32, ptr %62, align 4, !tbaa !62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load ptr, ptr %22, align 8, !tbaa !51
  %67 = getelementptr inbounds %struct.DerivedMesh, ptr %66, i64 0, i32 25
  %68 = load ptr, ptr %67, align 8, !tbaa !63
  %69 = tail call i32 %68(ptr noundef %66) #5
  %70 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 5
  %71 = load i32, ptr %70, align 8, !tbaa !64
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %91, label %73

73:                                               ; preds = %65, %57, %47
  %74 = getelementptr inbounds %struct.ParticleSystem, ptr %12, i64 0, i32 31
  %75 = load i16, ptr %74, align 4, !tbaa !57
  %76 = or i16 %75, 16
  store i16 %76, ptr %74, align 4, !tbaa !57
  %77 = load ptr, ptr %22, align 8, !tbaa !51
  %78 = getelementptr inbounds %struct.DerivedMesh, ptr %77, i64 0, i32 23
  %79 = load ptr, ptr %78, align 8, !tbaa !59
  %80 = tail call i32 %79(ptr noundef %77) #5
  store i32 %80, ptr %54, align 8, !tbaa !60
  %81 = load ptr, ptr %22, align 8, !tbaa !51
  %82 = getelementptr inbounds %struct.DerivedMesh, ptr %81, i64 0, i32 24
  %83 = load ptr, ptr %82, align 8, !tbaa !61
  %84 = tail call i32 %83(ptr noundef %81) #5
  %85 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 4
  store i32 %84, ptr %85, align 4, !tbaa !62
  %86 = load ptr, ptr %22, align 8, !tbaa !51
  %87 = getelementptr inbounds %struct.DerivedMesh, ptr %86, i64 0, i32 25
  %88 = load ptr, ptr %87, align 8, !tbaa !63
  %89 = tail call i32 %88(ptr noundef %86) #5
  %90 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 5
  store i32 %89, ptr %90, align 8, !tbaa !64
  br label %91

91:                                               ; preds = %73, %65
  %92 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %93 = load i16, ptr %92, align 8, !tbaa !65
  %94 = and i16 %93, 16384
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 6
  %98 = load i16, ptr %97, align 4, !tbaa !56
  %99 = and i16 %98, -3
  store i16 %99, ptr %97, align 4, !tbaa !56
  %100 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !66
  tail call void @particle_system_update(ptr noundef %101, ptr noundef nonnull %1, ptr noundef %12) #5
  %102 = load i16, ptr %97, align 4, !tbaa !56
  %103 = or i16 %102, 2
  store i16 %103, ptr %97, align 4, !tbaa !56
  br label %104

104:                                              ; preds = %91, %96, %17, %10, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !67 {
  %2 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !68 {
  %3 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %2, %24
  %9 = phi i64 [ %26, %24 ], [ 0, %2 ]
  %10 = phi i64 [ %25, %24 ], [ 0, %2 ]
  %11 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 121, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.MTex, ptr %12, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !71
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load i16, ptr %12, align 8, !tbaa !73
  %20 = shl i16 %19, 1
  %21 = and i16 %20, 32
  %22 = zext nneg i16 %21 to i64
  %23 = or i64 %10, %22
  br label %24

24:                                               ; preds = %18, %8, %14
  %25 = phi i64 [ %10, %14 ], [ %10, %8 ], [ %23, %18 ]
  %26 = add nuw nsw i64 %9, 1
  %27 = icmp eq i64 %26, 18
  br i1 %27, label %28, label %8, !llvm.loop !74

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ParticleSettings, ptr %6, i64 0, i32 73
  %30 = load float, ptr %29, align 4, !tbaa !76
  %31 = fcmp une float %30, 0.000000e+00
  %32 = or i64 %25, 32
  %33 = select i1 %31, i64 %32, i64 %25
  br label %37

34:                                               ; preds = %37
  %35 = add nuw nsw i64 %38, 1
  %36 = icmp eq i64 %35, 12
  br i1 %36, label %44, label %37, !llvm.loop !78

37:                                               ; preds = %28, %34
  %38 = phi i64 [ 0, %28 ], [ %35, %34 ]
  %39 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 36, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !79
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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @freeData(ptr nocapture noundef %0) #0 !PGOFuncName !80 {
  %2 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 10
  store i32 1, ptr %6, align 4, !tbaa !52
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 95
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  tail call void %8(ptr noundef nonnull %3) #5
  store ptr null, ptr %2, align 8, !tbaa !51
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %11, i64 0, i32 25
  %15 = load i32, ptr %14, align 4, !tbaa !81
  %16 = or i32 %15, 256
  store i32 %16, ptr %14, align 4, !tbaa !81
  br label %17

17:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @psys_check_enabled(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CDDM_apply_vert_coords(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CDDM_calc_normals(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @particle_system_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind optsize }

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
!34 = !{!"MOD_particlesystem.c:copyData"}
!35 = !{!"MOD_particlesystem.c:deformVerts"}
!36 = !{!37, !39, i64 1224}
!37 = !{!"Object", !38, i64 0, !39, i64 120, !39, i64 128, !42, i64 136, !42, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !40, i64 152, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !39, i64 304, !44, i64 312, !39, i64 360, !45, i64 368, !45, i64 384, !45, i64 400, !45, i64 416, !43, i64 432, !43, i64 436, !39, i64 440, !39, i64 448, !43, i64 456, !43, i64 460, !40, i64 464, !40, i64 476, !40, i64 488, !40, i64 500, !40, i64 512, !40, i64 524, !40, i64 536, !40, i64 548, !40, i64 560, !40, i64 576, !40, i64 592, !40, i64 604, !46, i64 616, !46, i64 620, !40, i64 624, !40, i64 688, !40, i64 752, !40, i64 816, !40, i64 880, !43, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !40, i64 966, !40, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !46, i64 988, !46, i64 992, !46, i64 996, !46, i64 1000, !46, i64 1004, !46, i64 1008, !46, i64 1012, !46, i64 1016, !46, i64 1020, !46, i64 1024, !46, i64 1028, !46, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !40, i64 1042, !40, i64 1043, !42, i64 1044, !40, i64 1046, !40, i64 1047, !46, i64 1048, !46, i64 1052, !45, i64 1056, !45, i64 1072, !45, i64 1088, !45, i64 1104, !46, i64 1120, !42, i64 1124, !42, i64 1126, !40, i64 1128, !43, i64 1144, !43, i64 1148, !39, i64 1152, !40, i64 1160, !40, i64 1161, !42, i64 1162, !40, i64 1164, !45, i64 1176, !45, i64 1192, !45, i64 1208, !45, i64 1224, !39, i64 1240, !39, i64 1248, !39, i64 1256, !40, i64 1264, !40, i64 1265, !42, i64 1266, !46, i64 1268, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !47, i64 1304, !47, i64 1312, !43, i64 1320, !43, i64 1324, !45, i64 1328, !45, i64 1344, !39, i64 1360, !39, i64 1368, !39, i64 1376, !40, i64 1384, !39, i64 1392, !45, i64 1400, !39, i64 1416}
!38 = !{!"ID", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !40, i64 32, !42, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !39, i64 112}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"short", !40, i64 0}
!43 = !{!"int", !40, i64 0}
!44 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!45 = !{!"ListBase", !39, i64 0, !39, i64 8}
!46 = !{!"float", !40, i64 0}
!47 = !{!"long", !40, i64 0}
!48 = !{!49, !39, i64 112}
!49 = !{!"ParticleSystemModifierData", !50, i64 0, !39, i64 112, !39, i64 120, !43, i64 128, !43, i64 132, !43, i64 136, !42, i64 140, !42, i64 142}
!50 = !{!"ModifierData", !39, i64 0, !39, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !40, i64 32, !39, i64 96, !39, i64 104}
!51 = !{!49, !39, i64 120}
!52 = !{!53, !43, i64 1020}
!53 = !{!"DerivedMesh", !54, i64 0, !54, i64 200, !54, i64 400, !54, i64 600, !54, i64 800, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !39, i64 1032, !39, i64 1040, !43, i64 1048, !46, i64 1052, !43, i64 1056, !43, i64 1060, !39, i64 1064, !40, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !39, i64 1176, !39, i64 1184, !39, i64 1192, !39, i64 1200, !39, i64 1208, !39, i64 1216, !39, i64 1224, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !39, i64 1496, !39, i64 1504, !39, i64 1512, !39, i64 1520, !39, i64 1528, !39, i64 1536, !39, i64 1544, !39, i64 1552, !39, i64 1560, !39, i64 1568, !39, i64 1576, !39, i64 1584, !39, i64 1592, !39, i64 1600, !39, i64 1608, !39, i64 1616, !39, i64 1624, !39, i64 1632, !39, i64 1640, !39, i64 1648, !39, i64 1656, !39, i64 1664, !39, i64 1672, !39, i64 1680}
!54 = !{!"CustomData", !39, i64 0, !40, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !39, i64 184, !39, i64 192}
!55 = !{!53, !39, i64 1680}
!56 = !{!49, !42, i64 140}
!57 = !{!58, !42, i64 340}
!58 = !{!"ParticleSystem", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !45, i64 72, !45, i64 88, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !45, i64 152, !40, i64 168, !40, i64 232, !46, i64 296, !46, i64 300, !46, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !43, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !42, i64 340, !42, i64 342, !42, i64 344, !42, i64 346, !40, i64 348, !40, i64 540, !42, i64 564, !42, i64 566, !39, i64 568, !39, i64 576, !45, i64 584, !39, i64 600, !39, i64 608, !43, i64 616, !43, i64 620, !39, i64 624, !39, i64 632, !39, i64 640, !46, i64 648, !46, i64 652}
!59 = !{!53, !39, i64 1104}
!60 = !{!49, !43, i64 128}
!61 = !{!53, !39, i64 1112}
!62 = !{!49, !43, i64 132}
!63 = !{!53, !39, i64 1120}
!64 = !{!49, !43, i64 136}
!65 = !{!37, !42, i64 952}
!66 = !{!50, !39, i64 96}
!67 = !{!"MOD_particlesystem.c:initData"}
!68 = !{!"MOD_particlesystem.c:requiredDataMask"}
!69 = !{!58, !39, i64 16}
!70 = !{!39, !39, i64 0}
!71 = !{!72, !42, i64 2}
!72 = !{!"MTex", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !39, i64 8, !39, i64 16, !40, i64 24, !40, i64 88, !40, i64 89, !40, i64 90, !40, i64 91, !40, i64 92, !40, i64 104, !46, i64 116, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !42, i64 128, !42, i64 130, !40, i64 132, !40, i64 133, !46, i64 140, !46, i64 144, !46, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !46, i64 184, !46, i64 188, !46, i64 192, !46, i64 196, !46, i64 200, !46, i64 204, !46, i64 208, !46, i64 212, !46, i64 216, !46, i64 220, !46, i64 224, !46, i64 228, !46, i64 232, !46, i64 236, !46, i64 240, !46, i64 244, !46, i64 248, !46, i64 252, !46, i64 256, !46, i64 260, !46, i64 264, !46, i64 268, !46, i64 272, !46, i64 276, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !46, i64 308}
!73 = !{!72, !42, i64 0}
!74 = distinct !{!74, !75}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!77, !46, i64 364}
!77 = !{!"ParticleSettings", !38, i64 0, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !43, i64 152, !43, i64 156, !42, i64 160, !42, i64 162, !42, i64 164, !42, i64 166, !42, i64 168, !42, i64 170, !42, i64 172, !42, i64 174, !43, i64 176, !43, i64 180, !42, i64 184, !42, i64 186, !42, i64 188, !42, i64 190, !42, i64 192, !42, i64 194, !42, i64 196, !42, i64 198, !42, i64 200, !42, i64 202, !42, i64 204, !42, i64 206, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !46, i64 232, !46, i64 236, !40, i64 240, !40, i64 248, !46, i64 256, !46, i64 260, !46, i64 264, !42, i64 268, !42, i64 270, !46, i64 272, !46, i64 276, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !46, i64 308, !46, i64 312, !46, i64 316, !40, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !42, i64 340, !40, i64 342, !46, i64 348, !46, i64 352, !46, i64 356, !46, i64 360, !46, i64 364, !46, i64 368, !46, i64 372, !40, i64 376, !46, i64 388, !46, i64 392, !46, i64 396, !46, i64 400, !46, i64 404, !46, i64 408, !46, i64 412, !40, i64 416, !46, i64 428, !46, i64 432, !46, i64 436, !46, i64 440, !43, i64 444, !43, i64 448, !46, i64 452, !46, i64 456, !46, i64 460, !46, i64 464, !46, i64 468, !46, i64 472, !46, i64 476, !46, i64 480, !46, i64 484, !46, i64 488, !46, i64 492, !46, i64 496, !46, i64 500, !46, i64 504, !46, i64 508, !46, i64 512, !46, i64 516, !46, i64 520, !46, i64 524, !46, i64 528, !46, i64 532, !46, i64 536, !46, i64 540, !46, i64 544, !46, i64 548, !40, i64 552, !46, i64 560, !46, i64 564, !43, i64 568, !43, i64 572, !40, i64 576, !39, i64 720, !45, i64 728, !39, i64 744, !39, i64 752, !39, i64 760, !39, i64 768, !39, i64 776, !39, i64 784, !42, i64 792, !40, i64 794}
!78 = distinct !{!78, !75}
!79 = !{!42, !42, i64 0}
!80 = !{!"MOD_particlesystem.c:freeData"}
!81 = !{!58, !43, i64 316}
