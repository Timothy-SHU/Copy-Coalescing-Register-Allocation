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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copyData(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !34 {
  %3 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ClothSimSettings, ptr %4, i64 0, i32 41
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %11(ptr noundef nonnull %8) #5
  %12 = load ptr, ptr %3, align 8, !tbaa !35
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %12, %10 ], [ %4, %6 ]
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %15(ptr noundef %14) #5
  br label %16

16:                                               ; preds = %13, %2
  %17 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %21(ptr noundef nonnull %18) #5
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 6
  tail call void @BKE_ptcache_free_list(ptr noundef nonnull %23) #5
  %24 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 5
  store ptr null, ptr %24, align 8, !tbaa !49
  %25 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = tail call ptr %25(ptr noundef %27) #5
  store ptr %28, ptr %3, align 8, !tbaa !35
  %29 = load ptr, ptr %26, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.ClothSimSettings, ptr %29, i64 0, i32 41
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %22
  %34 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %35 = tail call ptr %34(ptr noundef nonnull %31) #5
  %36 = load ptr, ptr %3, align 8, !tbaa !35
  %37 = getelementptr inbounds %struct.ClothSimSettings, ptr %36, i64 0, i32 41
  store ptr %35, ptr %37, align 8, !tbaa !43
  br label %38

38:                                               ; preds = %33, %22
  %39 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %40 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  %42 = tail call ptr %39(ptr noundef %41) #5
  store ptr %42, ptr %17, align 8, !tbaa !48
  %43 = tail call ptr @BKE_ptcache_add(ptr noundef nonnull %23) #5
  store ptr %43, ptr %24, align 8, !tbaa !49
  %44 = getelementptr inbounds %struct.PointCache, ptr %43, i64 0, i32 3
  store i32 1, ptr %44, align 4, !tbaa !50
  %45 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 2
  store ptr null, ptr %45, align 8, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @deformVerts(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) #0 !PGOFuncName !53 {
  %7 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %10, %6
  tail call void @initData(ptr noundef nonnull %0) #6
  %15 = load ptr, ptr %7, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %59, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = icmp eq ptr %19, null
  br i1 %20, label %59, label %21

21:                                               ; preds = %17, %10
  %22 = tail call ptr @get_dm(ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %23 = icmp eq ptr %22, %2
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call ptr @CDDM_copy(ptr noundef %2) #5
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi ptr [ %25, %24 ], [ %22, %21 ]
  %28 = icmp eq ptr %2, null
  br i1 %28, label %29, label %54

29:                                               ; preds = %26
  %30 = load ptr, ptr %7, align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.ClothSimSettings, ptr %30, i64 0, i32 37
  %32 = load i16, ptr %31, align 2, !tbaa !54
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %29
  %35 = tail call ptr @BKE_key_from_object(ptr noundef %1) #5
  %36 = load ptr, ptr %7, align 8, !tbaa !35
  %37 = getelementptr inbounds %struct.ClothSimSettings, ptr %36, i64 0, i32 37
  %38 = load i16, ptr %37, align 2, !tbaa !54
  %39 = sext i16 %38 to i32
  %40 = tail call ptr @BKE_keyblock_from_key(ptr noundef %35, i32 noundef %39) #5
  %41 = getelementptr inbounds %struct.KeyBlock, ptr %40, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !55
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %34
  %45 = tail call ptr @DM_get_vert_data_layer(ptr noundef %27, i32 noundef 23) #5
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  tail call void @DM_add_vert_layer(ptr noundef %27, i32 noundef 23, i32 noundef 1, ptr noundef null) #5
  %48 = tail call ptr @DM_get_vert_data_layer(ptr noundef %27, i32 noundef 23) #5
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi ptr [ %45, %44 ], [ %48, %47 ]
  %51 = load ptr, ptr %41, align 8, !tbaa !55
  %52 = sext i32 %4 to i64
  %53 = mul nsw i64 %52, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %50, ptr align 1 %51, i64 %53, i1 false)
  br label %54

54:                                               ; preds = %34, %49, %29, %26
  tail call void @CDDM_apply_vert_coords(ptr noundef %27, ptr noundef %3) #5
  tail call void @DM_ensure_tessface(ptr noundef %27) #5
  %55 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !57
  tail call void @clothModifier_do(ptr noundef nonnull %0, ptr noundef %56, ptr noundef %1, ptr noundef %27, ptr noundef %3) #5
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %27, i64 0, i32 95
  %58 = load ptr, ptr %57, align 8, !tbaa !58
  tail call void %58(ptr noundef %27) #5
  br label %59

59:                                               ; preds = %14, %17, %54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @initData(ptr noundef %0) #0 !PGOFuncName !61 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %3 = tail call ptr %2(i64 noundef 168, ptr noundef nonnull @.str) #5
  %4 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  store ptr %3, ptr %4, align 8, !tbaa !35
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %6 = tail call ptr %5(i64 noundef 56, ptr noundef nonnull @.str.1) #5
  %7 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  store ptr %6, ptr %7, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 6
  %9 = tail call ptr @BKE_ptcache_add(ptr noundef nonnull %8) #5
  %10 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 5
  store ptr %9, ptr %10, align 8, !tbaa !49
  %11 = load ptr, ptr %4, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %7, align 8, !tbaa !48
  %15 = icmp eq ptr %14, null
  %16 = icmp eq ptr %9, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @cloth_init(ptr noundef nonnull %0) #5
  br label %19

19:                                               ; preds = %1, %13, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i64 @requiredDataMask(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !62 {
  %3 = tail call i32 @cloth_uses_vgroup(ptr noundef %1) #5
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i64 0, i64 4
  %6 = getelementptr inbounds %struct.ClothModifierData, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.ClothSimSettings, ptr %7, i64 0, i32 37
  %9 = load i16, ptr %8, align 2, !tbaa !54
  %10 = icmp eq i16 %9, 0
  %11 = or disjoint i64 %5, 8388608
  %12 = select i1 %10, i64 %5, i64 %11
  ret i64 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @freeData(ptr noundef %0) #0 !PGOFuncName !63 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !64
  %5 = icmp sgt i16 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %8

8:                                                ; preds = %6, %3
  tail call void @cloth_free_modifier_extern(ptr noundef nonnull %0) #5
  %9 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ClothSimSettings, ptr %10, i64 0, i32 41
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %17(ptr noundef nonnull %14) #5
  %18 = load ptr, ptr %9, align 8, !tbaa !35
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi ptr [ %18, %16 ], [ %10, %12 ]
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %21(ptr noundef %20) #5
  br label %22

22:                                               ; preds = %19, %8
  %23 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %27(ptr noundef nonnull %24) #5
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 6
  tail call void @BKE_ptcache_free_list(ptr noundef nonnull %29) #5
  %30 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 5
  store ptr null, ptr %30, align 8, !tbaa !49
  br label %31

31:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @updateDepgraph(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readnone %3, ptr noundef %4) #0 !PGOFuncName !66 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %7, %21
  %12 = phi ptr [ %22, %21 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.Base, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !67
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
  %22 = load ptr, ptr %12, align 8, !tbaa !47
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %11, !llvm.loop !69

24:                                               ; preds = %21, %7, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @dependsOnTime(ptr nocapture readnone %0) #1 !PGOFuncName !71 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @foreachIDLink(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !PGOFuncName !72 {
  %5 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ClothCollSettings, ptr %6, i64 0, i32 10
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %9) #5
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.ClothModifierData, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ClothSimSettings, ptr %12, i64 0, i32 41
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void %2(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %16) #5
  br label %19

19:                                               ; preds = %18, %14, %10
  ret void
}

; Function Attrs: optsize
declare void @BKE_ptcache_free_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_ptcache_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_dm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_keyblock_from_key(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DM_get_vert_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_add_vert_layer(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @CDDM_apply_vert_coords(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @clothModifier_do(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cloth_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @cloth_uses_vgroup(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cloth_free_modifier_extern(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @dag_get_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dag_add_relation(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

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
!34 = !{!"MOD_cloth.c:copyData"}
!35 = !{!36, !38, i64 128}
!36 = !{!"ClothModifierData", !37, i64 0, !38, i64 112, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !42, i64 152}
!37 = !{!"ModifierData", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !38, i64 96, !38, i64 104}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"ListBase", !38, i64 0, !38, i64 8}
!43 = !{!44, !38, i64 160}
!44 = !{!"ClothSimSettings", !38, i64 0, !45, i64 8, !45, i64 12, !45, i64 16, !39, i64 20, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !45, i64 56, !45, i64 60, !45, i64 64, !45, i64 68, !45, i64 72, !45, i64 76, !45, i64 80, !45, i64 84, !45, i64 88, !45, i64 92, !45, i64 96, !45, i64 100, !45, i64 104, !45, i64 108, !45, i64 112, !45, i64 116, !45, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !46, i64 140, !46, i64 142, !46, i64 144, !46, i64 146, !46, i64 148, !46, i64 150, !46, i64 152, !46, i64 154, !39, i64 156, !38, i64 160}
!45 = !{!"float", !39, i64 0}
!46 = !{!"short", !39, i64 0}
!47 = !{!38, !38, i64 0}
!48 = !{!36, !38, i64 136}
!49 = !{!36, !38, i64 144}
!50 = !{!51, !41, i64 20}
!51 = !{!"PointCache", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !46, i64 60, !46, i64 62, !39, i64 64, !39, i64 128, !39, i64 192, !39, i64 256, !38, i64 1280, !42, i64 1288, !38, i64 1304, !38, i64 1312}
!52 = !{!36, !38, i64 120}
!53 = !{!"MOD_cloth.c:deformVerts"}
!54 = !{!44, !46, i64 150}
!55 = !{!56, !38, i64 40}
!56 = !{!"KeyBlock", !38, i64 0, !38, i64 8, !45, i64 16, !45, i64 20, !46, i64 24, !46, i64 26, !46, i64 28, !46, i64 30, !41, i64 32, !41, i64 36, !38, i64 40, !39, i64 48, !39, i64 112, !45, i64 176, !45, i64 180}
!57 = !{!37, !38, i64 96}
!58 = !{!59, !38, i64 1680}
!59 = !{!"DerivedMesh", !60, i64 0, !60, i64 200, !60, i64 400, !60, i64 600, !60, i64 800, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !38, i64 1032, !38, i64 1040, !41, i64 1048, !45, i64 1052, !41, i64 1056, !41, i64 1060, !38, i64 1064, !39, i64 1072, !38, i64 1080, !38, i64 1088, !38, i64 1096, !38, i64 1104, !38, i64 1112, !38, i64 1120, !38, i64 1128, !38, i64 1136, !38, i64 1144, !38, i64 1152, !38, i64 1160, !38, i64 1168, !38, i64 1176, !38, i64 1184, !38, i64 1192, !38, i64 1200, !38, i64 1208, !38, i64 1216, !38, i64 1224, !38, i64 1232, !38, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !38, i64 1304, !38, i64 1312, !38, i64 1320, !38, i64 1328, !38, i64 1336, !38, i64 1344, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !38, i64 1392, !38, i64 1400, !38, i64 1408, !38, i64 1416, !38, i64 1424, !38, i64 1432, !38, i64 1440, !38, i64 1448, !38, i64 1456, !38, i64 1464, !38, i64 1472, !38, i64 1480, !38, i64 1488, !38, i64 1496, !38, i64 1504, !38, i64 1512, !38, i64 1520, !38, i64 1528, !38, i64 1536, !38, i64 1544, !38, i64 1552, !38, i64 1560, !38, i64 1568, !38, i64 1576, !38, i64 1584, !38, i64 1592, !38, i64 1600, !38, i64 1608, !38, i64 1616, !38, i64 1624, !38, i64 1632, !38, i64 1640, !38, i64 1648, !38, i64 1656, !38, i64 1664, !38, i64 1672, !38, i64 1680}
!60 = !{!"CustomData", !38, i64 0, !39, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !38, i64 184, !38, i64 192}
!61 = !{!"MOD_cloth.c:initData"}
!62 = !{!"MOD_cloth.c:requiredDataMask"}
!63 = !{!"MOD_cloth.c:freeData"}
!64 = !{!65, !46, i64 2092}
!65 = !{!"Global", !38, i64 0, !39, i64 8, !39, i64 1032, !39, i64 2056, !39, i64 2057, !39, i64 2058, !42, i64 2064, !39, i64 2080, !39, i64 2081, !39, i64 2082, !46, i64 2084, !46, i64 2086, !46, i64 2088, !39, i64 2090, !46, i64 2092, !41, i64 2096, !41, i64 2100, !39, i64 2104, !41, i64 2108, !41, i64 2112, !39, i64 2116}
!66 = !{!"MOD_cloth.c:updateDepgraph"}
!67 = !{!68, !38, i64 32}
!68 = !{!"Base", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !46, i64 28, !46, i64 30, !38, i64 32}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"MOD_cloth.c:dependsOnTime"}
!72 = !{!"MOD_cloth.c:foreachIDLink"}
