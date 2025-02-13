; ModuleID = 'blender/source/blender/modifiers/intern/MOD_displace.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_displace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.DisplaceModifierData = type { %struct.ModifierData, ptr, ptr, [64 x i8], i32, i32, float, i32, [64 x i8], float, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }

@modifierType_Displace = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Displace\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"DisplaceModifierData\00\00\00\00\00\00\00\00\00\00\00\00", i32 280, i32 1, i32 9, ptr @copyData, ptr @deformVerts, ptr null, ptr @deformVertsEM, ptr null, ptr null, ptr null, ptr @initData, ptr @requiredDataMask, ptr @freeData, ptr @isDisabled, ptr @updateDepgraph, ptr @dependsOnTime, ptr @dependsOnNormals, ptr @foreachObjectLink, ptr @foreachIDLink, ptr @foreachTexLink }, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"displaceModifier_do tex_co\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Displace Modifier\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"texture\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !34 {
  tail call void @modifier_copyData_generic(ptr noundef %0, ptr noundef %1) #7
  %3 = getelementptr inbounds %struct.DisplaceModifierData, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @id_us_plus(ptr noundef nonnull %4) #7
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 !PGOFuncName !43 {
  %7 = tail call zeroext i8 @dependsOnNormals(ptr noundef %0) #8, !range !44
  %8 = tail call ptr @get_cddm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %7) #7
  tail call fastcc void @displaceModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %8, ptr noundef %3, i32 noundef %4) #8
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 95
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  tail call void %12(ptr noundef %8) #7
  br label %13

13:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVertsEM(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 !PGOFuncName !48 {
  %7 = tail call zeroext i8 @dependsOnNormals(ptr noundef %0) #8, !range !44
  %8 = tail call ptr @get_cddm(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %7) #7
  tail call fastcc void @displaceModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %8, ptr noundef %4, i32 noundef %5) #8
  %9 = icmp eq ptr %8, %3
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %8, i64 0, i32 95
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  tail call void %12(ptr noundef %8) #7
  br label %13

13:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @initData(ptr nocapture noundef writeonly %0) #1 !PGOFuncName !49 {
  %2 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 6
  store float 1.000000e+00, ptr %3, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 7
  store i32 3, ptr %4, align 4, !tbaa !51
  %5 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 9
  store float 5.000000e-01, ptr %5, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !53 {
  %3 = getelementptr inbounds %struct.DisplaceModifierData, ptr %1, i64 0, i32 8
  %4 = load i8, ptr %3, align 8, !tbaa !54
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 0, i64 4
  %7 = getelementptr inbounds %struct.DisplaceModifierData, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !55
  %9 = icmp eq i32 %8, 3
  %10 = or disjoint i64 %6, 32
  %11 = select i1 %9, i64 %10, i64 %6
  ret i64 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @freeData(ptr nocapture noundef readonly %0) #0 !PGOFuncName !56 {
  %2 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @id_us_min(ptr noundef nonnull %3) #7
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @isDisabled(ptr nocapture noundef readonly %0, i32 %1) #2 !PGOFuncName !57 {
  %3 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !51
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %15, label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 6
  %12 = load float, ptr %11, align 8, !tbaa !50
  %13 = fcmp oeq float %12, 0.000000e+00
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i8 [ 1, %6 ], [ %14, %10 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 !PGOFuncName !58 {
  %6 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !55
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef nonnull %7) #7
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %14, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #7
  br label %15

15:                                               ; preds = %13, %9, %5
  %16 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !55
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %4, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.1) #7
  br label %20

20:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @dependsOnTime(ptr nocapture noundef readonly %0) #0 !PGOFuncName !60 {
  %2 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @BKE_texture_dependsOnTime(ptr noundef nonnull %3) #7
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i8 [ %6, %5 ], [ 0, %1 ]
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @dependsOnNormals(ptr nocapture noundef readonly %0) #2 !PGOFuncName !61 {
  %2 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !51
  %4 = icmp eq i32 %3, 3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !62 {
  %5 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 2
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachIDLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !63 {
  %5 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 1
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %5) #7
  tail call void @foreachObjectLink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachTexLink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !64 {
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @.str.2) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @modifier_copyData_generic(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @get_cddm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @displaceModifier_do(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !65 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TexResult, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  %9 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 9
  %10 = load float, ptr %9, align 8, !tbaa !52
  %11 = fsub float 1.000000e+00, %10
  %12 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !51
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %138, label %19

19:                                               ; preds = %15, %5
  %20 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 6
  %21 = load float, ptr %20, align 8, !tbaa !50
  %22 = fcmp oeq float %21, 0.000000e+00
  br i1 %22, label %138, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @CDDM_get_verts(ptr noundef %2) #7
  %25 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 8
  call void @modifier_get_vgroup(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %25, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %26 = load ptr, ptr %12, align 8, !tbaa !35
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !66
  %30 = sext i32 %4 to i64
  %31 = mul nsw i64 %30, 12
  %32 = call ptr %29(i64 noundef %31, ptr noundef nonnull @.str) #7
  call void @get_texture_coords(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %32, i32 noundef %4) #7
  %33 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !67
  %35 = load ptr, ptr %12, align 8, !tbaa !35
  call void @modifier_init_texture(ptr noundef %34, ptr noundef %35) #7
  br label %36

36:                                               ; preds = %23, %28
  %37 = phi ptr [ %32, %28 ], [ null, %23 ]
  %38 = icmp sgt i32 %4, 0
  br i1 %38, label %39, label %134

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 6
  %41 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %42 = getelementptr inbounds %struct.DisplaceModifierData, ptr %0, i64 0, i32 7
  %43 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 1
  %44 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 2
  %45 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 3
  %46 = zext nneg i32 %4 to i64
  br label %47

47:                                               ; preds = %39, %130
  %48 = phi i64 [ 0, %39 ], [ %132, %130 ]
  %49 = phi float [ 1.000000e+00, %39 ], [ %131, %130 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #9
  %50 = load float, ptr %20, align 8, !tbaa !50
  %51 = load ptr, ptr %6, align 8, !tbaa !66
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.MDeformVert, ptr %51, i64 %48
  %55 = load i32, ptr %7, align 4, !tbaa !68
  %56 = call float @defvert_find_weight(ptr noundef nonnull %54, i32 noundef %55) #7
  %57 = fcmp oeq float %56, 0.000000e+00
  br i1 %57, label %130, label %58

58:                                               ; preds = %53, %47
  %59 = phi float [ %56, %53 ], [ %49, %47 ]
  %60 = load ptr, ptr %12, align 8, !tbaa !35
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  store ptr null, ptr %40, align 8, !tbaa !69
  %63 = load ptr, ptr %41, align 8, !tbaa !67
  %64 = getelementptr inbounds [3 x float], ptr %37, i64 %48
  call void @BKE_texture_get_value(ptr noundef %63, ptr noundef nonnull %60, ptr noundef %64, ptr noundef nonnull %8, i8 noundef zeroext 0) #7
  %65 = load float, ptr %8, align 8, !tbaa !71
  %66 = load float, ptr %9, align 8, !tbaa !52
  %67 = fsub float %65, %66
  br label %68

68:                                               ; preds = %58, %62
  %69 = phi float [ %67, %62 ], [ %11, %58 ]
  %70 = load ptr, ptr %6, align 8, !tbaa !66
  %71 = icmp eq ptr %70, null
  %72 = select i1 %71, float 1.000000e+00, float %59
  %73 = fmul float %50, %72
  %74 = fmul float %69, %73
  %75 = fcmp olt float %74, -1.000000e+04
  br i1 %75, label %79, label %76

76:                                               ; preds = %68
  %77 = fcmp ogt float %74, 1.000000e+04
  br i1 %77, label %78, label %79

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %68, %76, %78
  %80 = phi float [ 1.000000e+04, %78 ], [ %74, %76 ], [ -1.000000e+04, %68 ]
  %81 = load i32, ptr %42, align 4, !tbaa !51
  switch i32 %81, label %130 [
    i32 0, label %82
    i32 1, label %86
    i32 2, label %90
    i32 4, label %94
    i32 3, label %113
  ]

82:                                               ; preds = %79
  %83 = getelementptr inbounds [3 x float], ptr %3, i64 %48
  %84 = load float, ptr %83, align 4, !tbaa !72
  %85 = fadd float %80, %84
  store float %85, ptr %83, align 4, !tbaa !72
  br label %130

86:                                               ; preds = %79
  %87 = getelementptr inbounds [3 x float], ptr %3, i64 %48, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !72
  %89 = fadd float %80, %88
  store float %89, ptr %87, align 4, !tbaa !72
  br label %130

90:                                               ; preds = %79
  %91 = getelementptr inbounds [3 x float], ptr %3, i64 %48, i64 2
  %92 = load float, ptr %91, align 4, !tbaa !72
  %93 = fadd float %80, %92
  store float %93, ptr %91, align 4, !tbaa !72
  br label %130

94:                                               ; preds = %79
  %95 = load float, ptr %43, align 4, !tbaa !73
  %96 = load float, ptr %9, align 8, !tbaa !52
  %97 = fsub float %95, %96
  %98 = getelementptr inbounds [3 x float], ptr %3, i64 %48
  %99 = load float, ptr %98, align 4, !tbaa !72
  %100 = call float @llvm.fmuladd.f32(float %97, float %73, float %99)
  store float %100, ptr %98, align 4, !tbaa !72
  %101 = load float, ptr %44, align 8, !tbaa !74
  %102 = load float, ptr %9, align 8, !tbaa !52
  %103 = fsub float %101, %102
  %104 = getelementptr inbounds [3 x float], ptr %3, i64 %48, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !72
  %106 = call float @llvm.fmuladd.f32(float %103, float %73, float %105)
  store float %106, ptr %104, align 4, !tbaa !72
  %107 = load float, ptr %45, align 4, !tbaa !75
  %108 = load float, ptr %9, align 8, !tbaa !52
  %109 = fsub float %107, %108
  %110 = getelementptr inbounds [3 x float], ptr %3, i64 %48, i64 2
  %111 = load float, ptr %110, align 4, !tbaa !72
  %112 = call float @llvm.fmuladd.f32(float %109, float %73, float %111)
  store float %112, ptr %110, align 4, !tbaa !72
  br label %130

113:                                              ; preds = %79
  %114 = getelementptr inbounds %struct.MVert, ptr %24, i64 %48, i32 1
  %115 = getelementptr inbounds [3 x float], ptr %3, i64 %48
  %116 = load <2 x i16>, ptr %114, align 4, !tbaa !76
  %117 = sitofp <2 x i16> %116 to <2 x float>
  %118 = fdiv <2 x float> %117, <float 3.276700e+04, float 3.276700e+04>
  %119 = load <2 x float>, ptr %115, align 4, !tbaa !72
  %120 = insertelement <2 x float> poison, float %80, i64 0
  %121 = shufflevector <2 x float> %120, <2 x float> poison, <2 x i32> zeroinitializer
  %122 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %121, <2 x float> %118, <2 x float> %119)
  store <2 x float> %122, ptr %115, align 4, !tbaa !72
  %123 = getelementptr inbounds %struct.MVert, ptr %24, i64 %48, i32 1, i64 2
  %124 = load i16, ptr %123, align 4, !tbaa !76
  %125 = sitofp i16 %124 to float
  %126 = fdiv float %125, 3.276700e+04
  %127 = getelementptr inbounds [3 x float], ptr %3, i64 %48, i64 2
  %128 = load float, ptr %127, align 4, !tbaa !72
  %129 = call float @llvm.fmuladd.f32(float %80, float %126, float %128)
  store float %129, ptr %127, align 4, !tbaa !72
  br label %130

130:                                              ; preds = %82, %86, %90, %94, %113, %79, %53
  %131 = phi float [ %56, %53 ], [ %59, %79 ], [ %59, %113 ], [ %59, %94 ], [ %59, %90 ], [ %59, %86 ], [ %59, %82 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #9
  %132 = add nuw nsw i64 %48, 1
  %133 = icmp eq i64 %132, %46
  br i1 %133, label %134, label %47, !llvm.loop !78

134:                                              ; preds = %130, %36
  %135 = icmp eq ptr %37, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %134
  %137 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  call void %137(ptr noundef nonnull %37) #7
  br label %138

138:                                              ; preds = %134, %136, %19, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret void
}

; Function Attrs: optsize
declare ptr @CDDM_get_verts(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @modifier_get_vgroup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @get_texture_coords(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @modifier_init_texture(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_texture_get_value(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BKE_texture_dependsOnTime(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!"MOD_displace.c:copyData"}
!35 = !{!36, !38, i64 112}
!36 = !{!"DisplaceModifierData", !37, i64 0, !38, i64 112, !38, i64 120, !39, i64 128, !41, i64 192, !41, i64 196, !42, i64 200, !41, i64 204, !39, i64 208, !42, i64 272, !41, i64 276}
!37 = !{!"ModifierData", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !38, i64 96, !38, i64 104}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"float", !39, i64 0}
!43 = !{!"MOD_displace.c:deformVerts"}
!44 = !{i8 0, i8 2}
!45 = !{!46, !38, i64 1680}
!46 = !{!"DerivedMesh", !47, i64 0, !47, i64 200, !47, i64 400, !47, i64 600, !47, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !38, i64 1032, !38, i64 1040, !41, i64 1048, !42, i64 1052, !41, i64 1056, !41, i64 1060, !38, i64 1064, !39, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!47 = !{!"CustomData", !38, i64 0, !39, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!48 = !{!"MOD_displace.c:deformVertsEM"}
!49 = !{!"MOD_displace.c:initData"}
!50 = !{!36, !42, i64 200}
!51 = !{!36, !41, i64 204}
!52 = !{!36, !42, i64 272}
!53 = !{!"MOD_displace.c:requiredDataMask"}
!54 = !{!39, !39, i64 0}
!55 = !{!36, !41, i64 196}
!56 = !{!"MOD_displace.c:freeData"}
!57 = !{!"MOD_displace.c:isDisabled"}
!58 = !{!"MOD_displace.c:updateDepgraph"}
!59 = !{!36, !38, i64 120}
!60 = !{!"MOD_displace.c:dependsOnTime"}
!61 = !{!"MOD_displace.c:dependsOnNormals"}
!62 = !{!"MOD_displace.c:foreachObjectLink"}
!63 = !{!"MOD_displace.c:foreachIDLink"}
!64 = !{!"MOD_displace.c:foreachTexLink"}
!65 = !{!"MOD_displace.c:displaceModifier_do"}
!66 = !{!38, !38, i64 0}
!67 = !{!36, !38, i64 96}
!68 = !{!41, !41, i64 0}
!69 = !{!70, !38, i64 24}
!70 = !{!"TexResult", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !41, i64 20, !38, i64 24}
!71 = !{!70, !42, i64 0}
!72 = !{!42, !42, i64 0}
!73 = !{!70, !42, i64 4}
!74 = !{!70, !42, i64 8}
!75 = !{!70, !42, i64 12}
!76 = !{!77, !77, i64 0}
!77 = !{!"short", !39, i64 0}
!78 = distinct !{!78, !79}
!79 = !{!"llvm.loop.mustprogress"}
