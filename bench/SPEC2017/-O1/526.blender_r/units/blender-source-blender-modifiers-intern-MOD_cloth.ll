; ModuleID = 'blender/source/blender/modifiers/intern/MOD_cloth.c'
source_filename = "blender/source/blender/modifiers/intern/MOD_cloth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.ClothSimSettings = type { ptr, float, float, float, [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i8], ptr }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.ClothCollSettings = type { ptr, float, float, float, float, float, float, i32, i16, i16, ptr, i16, i16, i32 }

@modifierType_Cloth = dso_local local_unnamed_addr global %struct.ModifierTypeInfo { [32 x i8] c"Cloth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ClothModifierData\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 168, i32 1, i32 193, ptr @copyData, ptr @deformVerts, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @initData, ptr @requiredDataMask, ptr @freeData, ptr null, ptr @updateDepgraph, ptr @dependsOnTime, ptr null, ptr null, ptr @foreachIDLink, ptr null }, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"cloth sim parms\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cloth coll parms\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Cloth Collision\00", align 1
@str = private unnamed_addr constant [23 x i8] c"clothModifier_freeData\00", align 1

; Function Attrs: nounwind uwtable
define internal void @copyData(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 41
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %11(ptr noundef nonnull %8) #5
  br label %12

12:                                               ; preds = %10, %6
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %14 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void %13(ptr noundef %14) #5
  br label %15

15:                                               ; preds = %12, %2
  %16 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %20(ptr noundef nonnull %17) #5
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 6
  tail call void @BKE_ptcache_free_list(ptr noundef nonnull %22) #5
  %23 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 5
  store ptr null, ptr %23, align 8, !tbaa !48
  %24 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = tail call ptr %24(ptr noundef %26) #5
  store ptr %27, ptr %3, align 8, !tbaa !34
  %28 = load ptr, ptr %25, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.ClothSimSettings, ptr %28, i64 0, i32 41
  %30 = load ptr, ptr %29, align 8, !tbaa !42
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %21
  %33 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %34 = tail call ptr %33(ptr noundef nonnull %30) #5
  %35 = load ptr, ptr %3, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.ClothSimSettings, ptr %35, i64 0, i32 41
  store ptr %34, ptr %36, align 8, !tbaa !42
  br label %37

37:                                               ; preds = %32, %21
  %38 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  %41 = tail call ptr %38(ptr noundef %40) #5
  store ptr %41, ptr %16, align 8, !tbaa !47
  %42 = tail call ptr @BKE_ptcache_add(ptr noundef nonnull %22) #5
  store ptr %42, ptr %23, align 8, !tbaa !48
  %43 = getelementptr inbounds %struct.PointCache, ptr %42, i64 0, i32 3
  store i32 1, ptr %43, align 4, !tbaa !49
  %44 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 2
  store ptr null, ptr %44, align 8, !tbaa !51
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 {
  %7 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %37

14:                                               ; preds = %10, %6
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %16 = tail call ptr %15(i64 noundef 168, ptr noundef nonnull @.str) #5
  store ptr %16, ptr %7, align 8, !tbaa !34
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %18 = tail call ptr %17(i64 noundef 56, ptr noundef nonnull @.str.1) #5
  %19 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 6
  %21 = tail call ptr @BKE_ptcache_add(ptr noundef nonnull %20) #5
  %22 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 5
  store ptr %21, ptr %22, align 8, !tbaa !48
  %23 = load ptr, ptr %7, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %14
  %26 = load ptr, ptr %19, align 8, !tbaa !47
  %27 = icmp eq ptr %26, null
  %28 = icmp eq ptr %21, null
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void @cloth_init(ptr noundef %0) #5
  br label %31

31:                                               ; preds = %14, %25, %30
  %32 = load ptr, ptr %7, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %75, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %19, align 8, !tbaa !47
  %36 = icmp eq ptr %35, null
  br i1 %36, label %75, label %37

37:                                               ; preds = %34, %10
  %38 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %39 = icmp eq ptr %38, %2
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call ptr @CDDM_copy(ptr noundef %38) #5
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi ptr [ %41, %40 ], [ %38, %37 ]
  %44 = icmp eq ptr %2, null
  br i1 %44, label %45, label %70

45:                                               ; preds = %42
  %46 = load ptr, ptr %7, align 8, !tbaa !34
  %47 = getelementptr inbounds %struct.ClothSimSettings, ptr %46, i64 0, i32 37
  %48 = load i16, ptr %47, align 2, !tbaa !52
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %45
  %51 = tail call ptr @BKE_key_from_object(ptr noundef %1) #5
  %52 = load ptr, ptr %7, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct.ClothSimSettings, ptr %52, i64 0, i32 37
  %54 = load i16, ptr %53, align 2, !tbaa !52
  %55 = sext i16 %54 to i32
  %56 = tail call ptr @BKE_keyblock_from_key(ptr noundef %51, i32 noundef %55) #5
  %57 = getelementptr inbounds %struct.KeyBlock, ptr %56, i64 0, i32 10
  %58 = load ptr, ptr %57, align 8, !tbaa !53
  %59 = icmp eq ptr %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %50
  %61 = tail call ptr @DM_get_vert_data_layer(ptr noundef %43, i32 noundef 23) #5
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  tail call void @DM_add_vert_layer(ptr noundef %43, i32 noundef 23, i32 noundef 1, ptr noundef null) #5
  %64 = tail call ptr @DM_get_vert_data_layer(ptr noundef %43, i32 noundef 23) #5
  br label %65

65:                                               ; preds = %63, %60
  %66 = phi ptr [ %61, %60 ], [ %64, %63 ]
  %67 = load ptr, ptr %57, align 8, !tbaa !53
  %68 = sext i32 %4 to i64
  %69 = mul nsw i64 %68, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %66, ptr align 1 %67, i64 %69, i1 false)
  br label %70

70:                                               ; preds = %50, %65, %45, %42
  tail call void @CDDM_apply_vert_coords(ptr noundef %43, ptr noundef %3) #5
  tail call void @DM_ensure_tessface(ptr noundef %43) #5
  %71 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !55
  tail call void @clothModifier_do(ptr noundef %0, ptr noundef %72, ptr noundef %1, ptr noundef %43, ptr noundef %3) #5
  %73 = getelementptr inbounds %struct.DerivedMesh, ptr %43, i64 0, i32 95
  %74 = load ptr, ptr %73, align 8, !tbaa !56
  tail call void %74(ptr noundef %43) #5
  br label %75

75:                                               ; preds = %31, %34, %70
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @initData(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %3 = tail call ptr %2(i64 noundef 168, ptr noundef nonnull @.str) #5
  %4 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  store ptr %3, ptr %4, align 8, !tbaa !34
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %6 = tail call ptr %5(i64 noundef 56, ptr noundef nonnull @.str.1) #5
  %7 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  store ptr %6, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 6
  %9 = tail call ptr @BKE_ptcache_add(ptr noundef nonnull %8) #5
  %10 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 5
  store ptr %9, ptr %10, align 8, !tbaa !48
  %11 = load ptr, ptr %4, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %7, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  %16 = icmp eq ptr %9, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @cloth_init(ptr noundef %0) #5
  br label %19

19:                                               ; preds = %1, %13, %18
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @cloth_uses_vgroup(ptr noundef %1) #5
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i64 0, i64 4
  %6 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.ClothSimSettings, ptr %7, i64 0, i32 37
  %9 = load i16, ptr %8, align 2, !tbaa !52
  %10 = icmp eq i16 %9, 0
  %11 = or disjoint i64 %5, 8388608
  %12 = select i1 %10, i64 %5, i64 %11
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define internal void @freeData(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !59
  %5 = icmp sgt i16 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %8

8:                                                ; preds = %6, %3
  tail call void @cloth_free_modifier_extern(ptr noundef nonnull %0) #5
  %9 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ClothSimSettings, ptr %10, i64 0, i32 41
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %17(ptr noundef nonnull %14) #5
  br label %18

18:                                               ; preds = %16, %12
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %20 = load ptr, ptr %9, align 8, !tbaa !34
  tail call void %19(ptr noundef %20) #5
  br label %21

21:                                               ; preds = %18, %8
  %22 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %26(ptr noundef nonnull %23) #5
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 6
  tail call void @BKE_ptcache_free_list(ptr noundef nonnull %28) #5
  %29 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 5
  store ptr null, ptr %29, align 8, !tbaa !48
  br label %30

30:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @updateDepgraph(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readnone %3, ptr noundef %4) #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %7, %21
  %12 = phi ptr [ %22, %21 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.Base, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = icmp eq ptr %14, %3
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @modifiers_findByType(ptr noundef %14, i32 noundef 23) #5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @dag_get_node(ptr noundef %1, ptr noundef %14) #5
  tail call void @dag_add_relation(ptr noundef %1, ptr noundef %20, ptr noundef %4, i16 noundef signext 40, ptr noundef nonnull @.str.3) #5
  br label %21

21:                                               ; preds = %16, %19, %11
  %22 = load ptr, ptr %12, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %11, !llvm.loop !63

24:                                               ; preds = %21, %7, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnTime(ptr nocapture readnone %0) #1 {
  ret i8 1
}

; Function Attrs: nounwind uwtable
define internal void @foreachIDLink(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ClothCollSettings, ptr %6, i64 0, i32 10
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %9) #5
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ClothSimSettings, ptr %12, i64 0, i32 41
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %16) #5
  br label %19

19:                                               ; preds = %18, %14, %10
  ret void
}

declare void @BKE_ptcache_free_list(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_ptcache_add(ptr noundef) local_unnamed_addr #2

declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_keyblock_from_key(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #2

declare ptr @DM_get_vert_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @DM_add_vert_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @CDDM_apply_vert_coords(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #2

declare void @clothModifier_do(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @cloth_init(ptr noundef) local_unnamed_addr #2

declare i32 @cloth_uses_vgroup(ptr noundef) local_unnamed_addr #2

declare void @cloth_free_modifier_extern(ptr noundef) local_unnamed_addr #2

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind }
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
!34 = !{!35, !37, i64 128}
!35 = !{!"ClothModifierData", !36, i64 0, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152}
!36 = !{!"ModifierData", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !38, i64 32, !37, i64 96, !37, i64 104}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"ListBase", !37, i64 0, !37, i64 8}
!42 = !{!43, !37, i64 160}
!43 = !{!"ClothSimSettings", !37, i64 0, !44, i64 8, !44, i64 12, !44, i64 16, !38, i64 20, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !44, i64 64, !44, i64 68, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84, !44, i64 88, !44, i64 92, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !45, i64 140, !45, i64 142, !45, i64 144, !45, i64 146, !45, i64 148, !45, i64 150, !45, i64 152, !45, i64 154, !38, i64 156, !37, i64 160}
!44 = !{!"float", !38, i64 0}
!45 = !{!"short", !38, i64 0}
!46 = !{!37, !37, i64 0}
!47 = !{!35, !37, i64 136}
!48 = !{!35, !37, i64 144}
!49 = !{!50, !40, i64 20}
!50 = !{!"PointCache", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !45, i64 60, !45, i64 62, !38, i64 64, !38, i64 128, !38, i64 192, !38, i64 256, !37, i64 1280, !41, i64 1288, !37, i64 1304, !37, i64 1312}
!51 = !{!35, !37, i64 120}
!52 = !{!43, !45, i64 150}
!53 = !{!54, !37, i64 40}
!54 = !{!"KeyBlock", !37, i64 0, !37, i64 8, !44, i64 16, !44, i64 20, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !40, i64 32, !40, i64 36, !37, i64 40, !38, i64 48, !38, i64 112, !44, i64 176, !44, i64 180}
!55 = !{!36, !37, i64 96}
!56 = !{!57, !37, i64 1680}
!57 = !{!"DerivedMesh", !58, i64 0, !58, i64 200, !58, i64 400, !58, i64 600, !58, i64 800, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !37, i64 1032, !37, i64 1040, !40, i64 1048, !44, i64 1052, !40, i64 1056, !40, i64 1060, !37, i64 1064, !38, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !37, i64 1176, !37, i64 1184, !37, i64 1192, !37, i64 1200, !37, i64 1208, !37, i64 1216, !37, i64 1224, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !37, i64 1496, !37, i64 1504, !37, i64 1512, !37, i64 1520, !37, i64 1528, !37, i64 1536, !37, i64 1544, !37, i64 1552, !37, i64 1560, !37, i64 1568, !37, i64 1576, !37, i64 1584, !37, i64 1592, !37, i64 1600, !37, i64 1608, !37, i64 1616, !37, i64 1624, !37, i64 1632, !37, i64 1640, !37, i64 1648, !37, i64 1656, !37, i64 1664, !37, i64 1672, !37, i64 1680}
!58 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!59 = !{!60, !45, i64 2092}
!60 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !41, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !45, i64 2084, !45, i64 2086, !45, i64 2088, !38, i64 2090, !45, i64 2092, !40, i64 2096, !40, i64 2100, !38, i64 2104, !40, i64 2108, !40, i64 2112, !38, i64 2116}
!61 = !{!62, !37, i64 32}
!62 = !{!"Base", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !45, i64 28, !45, i64 30, !37, i64 32}
!63 = distinct !{!63, !64, !65}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
