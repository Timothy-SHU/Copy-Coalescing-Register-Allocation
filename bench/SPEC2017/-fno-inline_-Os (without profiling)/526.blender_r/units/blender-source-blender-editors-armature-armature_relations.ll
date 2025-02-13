; ModuleID = 'blender/source/blender/editors/armature/armature_relations.c'
source_filename = "blender/source/blender/editors/armature/armature_relations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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
%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bConstraintTarget = type { ptr, ptr, ptr, [64 x i8], [4 x [4 x float]], i16, i16, i16, i16 }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bActionConstraint = type { ptr, i16, i16, i32, i32, float, float, i32, ptr, [64 x i8] }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.bActionChannel = type { ptr, ptr, ptr, ptr, %struct.ListBase, i32, [64 x i8], i32 }

@.str = private unnamed_addr constant [41 x i8] c"Active object is not a selected armature\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Separate Bones\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ARMATURE_OT_separate\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Isolate selected bones into a separate armature\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Make Parent\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"ARMATURE_OT_parent_set\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"Set the active bone as the parent of the selected bones\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@prop_editarm_make_parent_types = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.17, i32 0, ptr @.str.18, ptr @.str.19 }, %struct.EnumPropertyItem { i32 2, ptr @.str.20, i32 0, ptr @.str.21, ptr @.str.19 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [11 x i8] c"ParentType\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Type of parenting\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Clear Parent\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"ARMATURE_OT_parent_clear\00", align 1
@.str.12 = private unnamed_addr constant [78 x i8] c"Remove the parent-child relationship between selected bones and their parents\00", align 1
@prop_editarm_clear_parent_types = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.22, i32 0, ptr @.str.10, ptr @.str.19 }, %struct.EnumPropertyItem { i32 2, ptr @.str.23, i32 0, ptr @.str.24, ptr @.str.19 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [10 x i8] c"ClearType\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"What way to clear parenting\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.15 = private unnamed_addr constant [16 x i8] c"Separated bones\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Operation requires an active bone\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"CONNECTED\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"Connected\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"OFFSET\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"Keep Offset\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"DISCONNECT\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"Disconnect Bone\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @join_armature_exec(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  %13 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %14 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  br label %111

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %20 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !17
  %22 = icmp ne i16 %21, 25
  %23 = icmp eq ptr %19, null
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %111, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.bArmature, ptr %19, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %111

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %30 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %5) #10
  br label %31

31:                                               ; preds = %35, %29
  %32 = phi ptr [ %5, %29 ], [ %33, %35 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !20
  %34 = icmp eq ptr %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.CollectionPointerLink, ptr %33, i64 0, i32 2, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.Base, ptr %37, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !25
  %40 = icmp eq ptr %39, %14
  br i1 %40, label %41, label %31

41:                                               ; preds = %35
  call void @BLI_freelistN(ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @ED_armature_to_edit(ptr noundef nonnull %19) #10
  %42 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 18
  %43 = load ptr, ptr %42, align 8, !tbaa !27
  %44 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 27
  %45 = load i32, ptr %44, align 8, !tbaa !28
  %46 = and i32 %45, -65
  store i32 %46, ptr %44, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %47 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %6) #10
  %48 = load ptr, ptr %6, align 8, !tbaa !20
  %49 = icmp eq ptr %48, null
  br i1 %49, label %110, label %53

50:                                               ; preds = %31
  call void @BLI_freelistN(ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  %51 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !29
  call void @BKE_report(ptr noundef %52, i32 noundef 16, ptr noundef nonnull @.str) #10
  br label %111

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 47
  %55 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2
  %56 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2, i64 2
  br label %57

57:                                               ; preds = %53, %107
  %58 = phi ptr [ %48, %53 ], [ %108, %107 ]
  %59 = getelementptr inbounds %struct.CollectionPointerLink, ptr %58, i64 0, i32 2, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !21
  %61 = getelementptr inbounds %struct.Base, ptr %60, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !25
  %63 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 3
  %64 = load i16, ptr %63, align 8, !tbaa !17
  %65 = icmp ne i16 %64, 25
  %66 = icmp eq ptr %62, %14
  %67 = or i1 %66, %65
  br i1 %67, label %107, label %68

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.Object, ptr %62, i64 0, i32 19
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  call void @ED_armature_to_edit(ptr noundef %70) #10
  %71 = load ptr, ptr %61, align 8, !tbaa !25
  %72 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 18
  %73 = load ptr, ptr %72, align 8, !tbaa !27
  %74 = getelementptr inbounds %struct.Object, ptr %71, i64 0, i32 27
  %75 = load i32, ptr %74, align 8, !tbaa !28
  %76 = and i32 %75, -65
  store i32 %76, ptr %74, align 8, !tbaa !28
  %77 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %54) #10
  %78 = load ptr, ptr %61, align 8, !tbaa !25
  %79 = getelementptr inbounds %struct.Object, ptr %78, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %79) #10
  %80 = load ptr, ptr %73, align 8, !tbaa !31
  %81 = icmp eq ptr %80, null
  br i1 %81, label %106, label %82

82:                                               ; preds = %68
  %83 = getelementptr inbounds %struct.bArmature, ptr %70, i64 0, i32 4
  br label %84

84:                                               ; preds = %82, %84
  %85 = phi ptr [ %80, %82 ], [ %86, %84 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !33
  %87 = load ptr, ptr %83, align 8, !tbaa !18
  %88 = getelementptr inbounds %struct.bPoseChannel, ptr %85, i64 0, i32 4
  %89 = call ptr @ED_armature_bone_find_name(ptr noundef %87, ptr noundef nonnull %88) #10
  %90 = load ptr, ptr %26, align 8, !tbaa !18
  %91 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 5
  call void @unique_editbone_name(ptr noundef %90, ptr noundef nonnull %91, ptr noundef null) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #11
  call void @ED_armature_ebone_to_mat3(ptr noundef %89, ptr noundef nonnull %11) #10
  call void @unit_m4(ptr noundef nonnull %7) #10
  call void @mul_m4_m3m4(ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull %3) #10
  %92 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 7
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %92) #10
  %93 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %93) #10
  call void @ED_armature_ebone_to_mat3(ptr noundef %89, ptr noundef nonnull %11) #10
  call void @copy_m4_m3(ptr noundef nonnull %8, ptr noundef nonnull %11) #10
  %94 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %7) #10
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %8) #10
  %95 = load float, ptr %55, align 16, !tbaa !35
  %96 = load float, ptr %56, align 8, !tbaa !35
  %97 = call float @atan2f(float noundef %95, float noundef %96) #10
  %98 = getelementptr inbounds %struct.EditBone, ptr %89, i64 0, i32 6
  %99 = load float, ptr %98, align 8, !tbaa !36
  %100 = fsub float %99, %97
  store float %100, ptr %98, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  %101 = load ptr, ptr %61, align 8, !tbaa !25
  call fastcc void @joined_armature_fix_links(ptr noundef nonnull %14, ptr noundef %101, ptr noundef nonnull %85, ptr noundef %89) #12
  %102 = call ptr @BLI_strncpy(ptr noundef nonnull %88, ptr noundef nonnull %91, i64 noundef 64) #10
  %103 = load ptr, ptr %83, align 8, !tbaa !18
  call void @BLI_remlink(ptr noundef %103, ptr noundef %89) #10
  %104 = load ptr, ptr %26, align 8, !tbaa !18
  call void @BLI_addtail(ptr noundef %104, ptr noundef %89) #10
  call void @BLI_remlink(ptr noundef nonnull %73, ptr noundef nonnull %85) #10
  call void @BLI_addtail(ptr noundef %43, ptr noundef nonnull %85) #10
  call void @BKE_pose_channels_hash_free(ptr noundef nonnull %73) #10
  call void @BKE_pose_channels_hash_free(ptr noundef %43) #10
  %105 = icmp eq ptr %86, null
  br i1 %105, label %106, label %84, !llvm.loop !38

106:                                              ; preds = %84, %68
  call void @ED_base_object_free_and_unlink(ptr noundef %12, ptr noundef %13, ptr noundef nonnull %60) #10
  br label %107

107:                                              ; preds = %106, %57
  %108 = load ptr, ptr %58, align 8, !tbaa !20
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %57, !llvm.loop !40

110:                                              ; preds = %107, %41
  call void @BLI_freelistN(ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @DAG_relations_tag_update(ptr noundef %12) #10
  call void @ED_armature_from_edit(ptr noundef nonnull %19) #10
  call void @ED_armature_edit_free(ptr noundef nonnull %19) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %13) #10
  br label %111

111:                                              ; preds = %16, %25, %17, %110, %50
  %112 = phi i32 [ 2, %50 ], [ 4, %110 ], [ 2, %17 ], [ 2, %25 ], [ 2, %16 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  ret i32 %112
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_to_edit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_armature_bone_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unique_editbone_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_ebone_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m3m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @joined_armature_fix_links(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr @G, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 4
  %11 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 5
  br label %12

12:                                               ; preds = %9, %48
  %13 = phi ptr [ %7, %9 ], [ %49, %48 ]
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !17
  %16 = icmp eq i16 %15, 25
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !27
  %20 = load ptr, ptr %19, align 8, !tbaa !20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17, %22
  %23 = phi ptr [ %25, %22 ], [ %20, %17 ]
  %24 = getelementptr inbounds %struct.bPoseChannel, ptr %23, i64 0, i32 3
  tail call fastcc void @joined_armature_fix_links_constraints(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %24) #12
  %25 = load ptr, ptr %23, align 8, !tbaa !20
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %22, !llvm.loop !43

27:                                               ; preds = %22, %17, %12
  %28 = icmp eq ptr %13, %1
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 106
  tail call fastcc void @joined_armature_fix_links_constraints(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %30) #12
  br label %31

31:                                               ; preds = %29, %27
  %32 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = icmp ne ptr %33, null
  %35 = icmp eq ptr %33, %1
  %36 = and i1 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 4
  %39 = load i16, ptr %38, align 2, !tbaa !45
  %40 = icmp eq i16 %39, 7
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 8
  %43 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %10) #13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = tail call ptr @BLI_strncpy(ptr noundef nonnull %42, ptr noundef nonnull %11, i64 noundef 64) #10
  br label %47

47:                                               ; preds = %41, %45, %37
  store ptr %0, ptr %32, align 8, !tbaa !44
  br label %48

48:                                               ; preds = %31, %47
  %49 = load ptr, ptr %13, align 8, !tbaa !20
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %12, !llvm.loop !46

51:                                               ; preds = %48, %4
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pose_channels_hash_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_base_object_free_and_unlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_from_edit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_edit_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_separate(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %2, align 8, !tbaa !50
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.3, ptr %3, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @separate_armature_exec, ptr %4, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @separate_armature_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %2
  tail call void @WM_cursor_wait(i8 noundef zeroext 1) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %9 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %3) #10
  %10 = load ptr, ptr %3, align 8, !tbaa !20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %24, %12 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.CollectionPointerLink, ptr %13, i64 0, i32 2, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = icmp eq ptr %17, %6
  %19 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !55
  %21 = and i32 %20, -2
  %22 = zext i1 %18 to i32
  %23 = or disjoint i32 %21, %22
  store i32 %23, ptr %19, align 8, !tbaa !55
  %24 = load ptr, ptr %13, align 8, !tbaa !20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %12, !llvm.loop !56

26:                                               ; preds = %12, %8
  call void @BLI_freelistN(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  %27 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 27
  %30 = load i32, ptr %29, align 8, !tbaa !28
  %31 = and i32 %30, -65
  store i32 %31, ptr %29, align 8, !tbaa !28
  %32 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  call void @ED_armature_from_edit(ptr noundef %33) #10
  %34 = load ptr, ptr %32, align 8, !tbaa !5
  call void @ED_armature_edit_free(ptr noundef %34) #10
  %35 = call ptr @ED_object_add_duplicate(ptr noundef %4, ptr noundef %5, ptr noundef %28, i32 noundef 512) #10
  call void @DAG_relations_tag_update(ptr noundef %4) #10
  %36 = getelementptr inbounds %struct.Base, ptr %35, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !25
  %38 = getelementptr inbounds %struct.Base, ptr %35, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !55
  %40 = and i32 %39, -2
  store i32 %40, ptr %38, align 8, !tbaa !55
  call fastcc void @separate_armature_bones(ptr noundef nonnull %6, i16 noundef signext 1) #12
  call fastcc void @separate_armature_bones(ptr noundef %37, i16 noundef signext 0) #12
  call fastcc void @separated_armature_fix_links(ptr noundef nonnull %6, ptr noundef %37) #12
  call void @DAG_id_tag_update(ptr noundef nonnull %6, i16 noundef signext 2) #10
  call void @DAG_id_tag_update(ptr noundef %37, i16 noundef signext 2) #10
  %41 = load ptr, ptr %32, align 8, !tbaa !5
  call void @ED_armature_to_edit(ptr noundef %41) #10
  %42 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !29
  call void @BKE_report(ptr noundef %43, i32 noundef 2, ptr noundef nonnull @.str.15) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %6) #10
  call void @WM_cursor_wait(i8 noundef zeroext 0) #10
  br label %44

44:                                               ; preds = %2, %26
  %45 = phi i32 [ 4, %26 ], [ 2, %2 ]
  ret i32 %45
}

; Function Attrs: optsize
declare i32 @ED_operator_editarmature(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ARMATURE_OT_parent_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.4, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %2, align 8, !tbaa !50
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.6, ptr %3, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @armature_parent_set_invoke, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_parent_set_exec, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %6, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef nonnull @prop_editarm_make_parent_types, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_parent_set_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_active_bone(ptr noundef %0) #10
  %6 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef 0) #10
  %7 = tail call ptr @uiPupMenuLayout(ptr noundef %6) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %8 = call i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr noundef nonnull %4) #10
  %9 = load ptr, ptr %4, align 8, !tbaa !20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %3, %22
  %12 = phi ptr [ %24, %22 ], [ %9, %3 ]
  %13 = phi i32 [ %23, %22 ], [ 0, %3 ]
  %14 = getelementptr inbounds %struct.CollectionPointerLink, ptr %12, i64 0, i32 2, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !78
  %20 = icmp eq ptr %19, %5
  %21 = select i1 %20, i32 %13, i32 1
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i32 [ %13, %11 ], [ %21, %17 ]
  %24 = load ptr, ptr %12, align 8, !tbaa !20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %11, !llvm.loop !79

26:                                               ; preds = %22
  %27 = icmp eq i32 %23, 0
  call void @BLI_freelistN(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @uiItemEnumO(ptr noundef %7, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef 1) #10
  br i1 %27, label %31, label %29

28:                                               ; preds = %3
  call void @BLI_freelistN(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %29

29:                                               ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ 2, %26 ]
  call void @uiItemEnumO(ptr noundef %7, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef %30) #10
  br label %31

31:                                               ; preds = %29, %26
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %6) #10
  ret i32 32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_parent_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = tail call ptr @CTX_data_active_bone(ptr noundef %0) #10
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.7) #10
  %11 = trunc i32 %10 to i16
  %12 = icmp eq ptr %7, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !29
  tail call void @BKE_report(ptr noundef %15, i32 noundef 32, ptr noundef nonnull @.str.16) #10
  br label %70

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !81
  %19 = and i32 %18, 256
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !18
  %24 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %23, ptr noundef nonnull %7) #10
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr %7, ptr %24
  br label %27

27:                                               ; preds = %21, %16
  %28 = phi ptr [ null, %16 ], [ %26, %21 ]
  %29 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_selected_editable_bones) #10
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !78
  %34 = icmp eq ptr %33, null
  br i1 %34, label %69, label %35

35:                                               ; preds = %31
  tail call fastcc void @bone_connect_to_existing_parent(ptr noundef nonnull %7) #12
  %36 = load i32, ptr %17, align 8, !tbaa !81
  %37 = and i32 %36, 256
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %69, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.EditBone, ptr %28, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !78
  %42 = icmp eq ptr %41, null
  br i1 %42, label %69, label %43

43:                                               ; preds = %39
  tail call fastcc void @bone_connect_to_existing_parent(ptr noundef nonnull %28) #12
  br label %69

44:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %45 = call i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr noundef nonnull %3) #10
  %46 = load ptr, ptr %3, align 8, !tbaa !20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %68, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  br label %50

50:                                               ; preds = %48, %65
  %51 = phi ptr [ %46, %48 ], [ %66, %65 ]
  %52 = getelementptr inbounds %struct.CollectionPointerLink, ptr %51, i64 0, i32 2, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !21
  %54 = icmp ne ptr %53, %7
  %55 = icmp ne ptr %53, %28
  %56 = and i1 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.EditBone, ptr %53, i64 0, i32 9
  %59 = load i32, ptr %58, align 4, !tbaa !82
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  %62 = load ptr, ptr %49, align 8, !tbaa !18
  br i1 %61, label %64, label %63

63:                                               ; preds = %57
  call fastcc void @bone_connect_to_new_parent(ptr noundef %62, ptr noundef nonnull %53, ptr noundef nonnull %7, i16 noundef signext %11) #12
  br label %65

64:                                               ; preds = %57
  call fastcc void @bone_connect_to_new_parent(ptr noundef %62, ptr noundef nonnull %53, ptr noundef %28, i16 noundef signext %11) #12
  br label %65

65:                                               ; preds = %63, %64, %50
  %66 = load ptr, ptr %51, align 8, !tbaa !20
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %50, !llvm.loop !83

68:                                               ; preds = %65, %44
  call void @BLI_freelistN(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %69

69:                                               ; preds = %31, %43, %39, %35, %68
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %4) #10
  br label %70

70:                                               ; preds = %69, %13
  %71 = phi i32 [ 2, %13 ], [ 4, %69 ]
  ret i32 %71
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ARMATURE_OT_parent_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %2, align 8, !tbaa !50
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %3, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_parent_clear_exec, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %6, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef nonnull @prop_editarm_clear_parent_types, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #10
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !84
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_parent_clear_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.7) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %10 = call i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr noundef nonnull %3) #10
  %11 = load ptr, ptr %3, align 8, !tbaa !20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %2, %13
  %14 = phi ptr [ %17, %13 ], [ %11, %2 ]
  %15 = getelementptr inbounds %struct.CollectionPointerLink, ptr %14, i64 0, i32 2, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  call fastcc void @editbone_clear_parent(ptr noundef %16, i32 noundef %9) #12
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %13, !llvm.loop !85

19:                                               ; preds = %13, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  %20 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !18
  call void @ED_armature_sync_selection(ptr noundef %21) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %4) #10
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @joined_armature_fix_links_constraints(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  %7 = load ptr, ptr %4, align 8, !tbaa !20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %74, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 4
  %11 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 5
  br label %12

12:                                               ; preds = %9, %71
  %13 = phi ptr [ %7, %9 ], [ %72, %71 ]
  %14 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %47, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %14, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %16
  %21 = call i32 %18(ptr noundef nonnull %13, ptr noundef nonnull %6) #10
  %22 = load ptr, ptr %6, align 8, !tbaa !20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %20, %39
  %25 = phi ptr [ %40, %39 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.bConstraintTarget, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !88
  %28 = icmp eq ptr %27, %1
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.bConstraintTarget, ptr %25, i64 0, i32 3
  %31 = load i8, ptr %30, align 8, !tbaa !90
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store ptr %0, ptr %26, align 8, !tbaa !88
  br label %39

34:                                               ; preds = %29
  %35 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %10) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  store ptr %0, ptr %26, align 8, !tbaa !88
  %38 = call ptr @BLI_strncpy(ptr noundef nonnull %30, ptr noundef nonnull %11, i64 noundef 64) #10
  br label %39

39:                                               ; preds = %24, %34, %37, %33
  %40 = load ptr, ptr %25, align 8, !tbaa !20
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %24, !llvm.loop !91

42:                                               ; preds = %39, %20
  %43 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %14, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !92
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  call void %44(ptr noundef nonnull %13, ptr noundef nonnull %6, i8 noundef zeroext 0) #10
  br label %47

47:                                               ; preds = %42, %46, %16, %12
  %48 = getelementptr inbounds %struct.bConstraint, ptr %13, i64 0, i32 3
  %49 = load i16, ptr %48, align 8, !tbaa !93
  %50 = icmp eq i16 %49, 12
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.bConstraint, ptr %13, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !95
  %54 = getelementptr inbounds %struct.bActionConstraint, ptr %53, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !96
  %56 = icmp eq ptr %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.bAction, ptr %55, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !20
  %60 = icmp eq ptr %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %57, %68
  %62 = phi ptr [ %69, %68 ], [ %59, %57 ]
  %63 = getelementptr inbounds %struct.bActionChannel, ptr %62, i64 0, i32 6
  %64 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %63, ptr noundef nonnull dereferenceable(1) %10) #13
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = call ptr @BLI_strncpy(ptr noundef nonnull %63, ptr noundef nonnull %11, i64 noundef 64) #10
  br label %68

68:                                               ; preds = %61, %66
  %69 = load ptr, ptr %62, align 8, !tbaa !20
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %61, !llvm.loop !98

71:                                               ; preds = %68, %57, %51, %47
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  %72 = load ptr, ptr %13, align 8, !tbaa !20
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %12, !llvm.loop !99

74:                                               ; preds = %71, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_visible_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_object_add_duplicate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @separate_armature_bones(ptr nocapture noundef readonly %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  tail call void @ED_armature_to_edit(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !27
  %7 = load ptr, ptr %6, align 8, !tbaa !31
  %8 = icmp eq ptr %7, null
  br i1 %8, label %58, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 4
  %11 = icmp eq i16 %1, 0
  br label %12

12:                                               ; preds = %9, %56
  %13 = phi ptr [ %7, %9 ], [ %14, %56 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !33
  %15 = load ptr, ptr %10, align 8, !tbaa !18
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %13, i64 0, i32 4
  %17 = tail call ptr @ED_armature_bone_find_name(ptr noundef %15, ptr noundef nonnull %16) #10
  %18 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !82
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %11, label %23, label %22

22:                                               ; preds = %12
  br i1 %21, label %56, label %24

23:                                               ; preds = %12
  br i1 %21, label %24, label %56

24:                                               ; preds = %23, %22
  %25 = load ptr, ptr %10, align 8, !tbaa !18
  %26 = load ptr, ptr %25, align 8, !tbaa !20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %24, %37
  %29 = phi ptr [ %38, %37 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.EditBone, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !78
  %32 = icmp eq ptr %31, %17
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.EditBone, ptr %29, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  %35 = load i32, ptr %34, align 4, !tbaa !82
  %36 = and i32 %35, -17
  store i32 %36, ptr %34, align 4, !tbaa !82
  br label %37

37:                                               ; preds = %28, %33
  %38 = load ptr, ptr %29, align 8, !tbaa !20
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %28, !llvm.loop !100

40:                                               ; preds = %37, %24
  %41 = load ptr, ptr %5, align 8, !tbaa !27
  %42 = load ptr, ptr %41, align 8, !tbaa !20
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %40, %50
  %45 = phi ptr [ %51, %50 ], [ %42, %40 ]
  %46 = getelementptr inbounds %struct.bPoseChannel, ptr %45, i64 0, i32 13
  %47 = load ptr, ptr %46, align 8, !tbaa !101
  %48 = icmp eq ptr %47, %13
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store ptr null, ptr %46, align 8, !tbaa !101
  br label %50

50:                                               ; preds = %44, %49
  %51 = load ptr, ptr %45, align 8, !tbaa !20
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %44, !llvm.loop !102

53:                                               ; preds = %50, %40
  tail call void @BKE_pose_channel_free(ptr noundef nonnull %13) #10
  %54 = load ptr, ptr %5, align 8, !tbaa !27
  tail call void @BKE_pose_channels_hash_free(ptr noundef %54) #10
  tail call void @bone_free(ptr noundef %4, ptr noundef %17) #10
  %55 = load ptr, ptr %5, align 8, !tbaa !27
  tail call void @BLI_freelinkN(ptr noundef %55, ptr noundef nonnull %13) #10
  br label %56

56:                                               ; preds = %22, %23, %53
  %57 = icmp eq ptr %14, null
  br i1 %57, label %58, label %12, !llvm.loop !103

58:                                               ; preds = %56, %2
  %59 = load ptr, ptr %3, align 8, !tbaa !5
  tail call void @ED_armature_from_edit(ptr noundef %59) #10
  %60 = load ptr, ptr %3, align 8, !tbaa !5
  tail call void @ED_armature_edit_free(ptr noundef %60) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @separated_armature_fix_links(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !27
  %9 = load ptr, ptr @G, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %142, label %13

13:                                               ; preds = %2, %139
  %14 = phi ptr [ %140, %139 ], [ %11, %2 ]
  %15 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !17
  %17 = icmp eq i16 %16, 25
  br i1 %17, label %18, label %73

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 18
  %20 = load ptr, ptr %19, align 8, !tbaa !27
  %21 = load ptr, ptr %20, align 8, !tbaa !20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %73, label %26

23:                                               ; preds = %70, %26
  %24 = load ptr, ptr %27, align 8, !tbaa !20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %73, label %26, !llvm.loop !104

26:                                               ; preds = %18, %23
  %27 = phi ptr [ %24, %23 ], [ %21, %18 ]
  %28 = getelementptr inbounds %struct.bPoseChannel, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !20
  %30 = icmp eq ptr %29, null
  br i1 %30, label %23, label %31

31:                                               ; preds = %26, %70
  %32 = phi ptr [ %71, %70 ], [ %29, %26 ]
  %33 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %32) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %70, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %33, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !86
  %38 = icmp eq ptr %37, null
  br i1 %38, label %70, label %39

39:                                               ; preds = %35
  %40 = call i32 %37(ptr noundef nonnull %32, ptr noundef nonnull %3) #10
  %41 = load ptr, ptr %3, align 8, !tbaa !20
  %42 = icmp eq ptr %41, null
  br i1 %42, label %65, label %43

43:                                               ; preds = %39, %62
  %44 = phi ptr [ %63, %62 ], [ %41, %39 ]
  %45 = getelementptr inbounds %struct.bConstraintTarget, ptr %44, i64 0, i32 3
  %46 = load i8, ptr %45, align 8, !tbaa !90
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.bConstraintTarget, ptr %44, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !88
  %51 = icmp eq ptr %50, %0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = call ptr @BLI_findstring(ptr noundef %8, ptr noundef nonnull %45, i32 noundef 40) #10
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %60

55:                                               ; preds = %48
  %56 = icmp eq ptr %50, %1
  br i1 %56, label %57, label %62

57:                                               ; preds = %55
  %58 = call ptr @BLI_findstring(ptr noundef %6, ptr noundef nonnull %45, i32 noundef 40) #10
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57, %52
  %61 = phi ptr [ %1, %52 ], [ %0, %57 ]
  store ptr %61, ptr %49, align 8, !tbaa !88
  br label %62

62:                                               ; preds = %60, %43, %55, %57, %52
  %63 = load ptr, ptr %44, align 8, !tbaa !20
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %43, !llvm.loop !105

65:                                               ; preds = %62, %39
  %66 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %33, i64 0, i32 9
  %67 = load ptr, ptr %66, align 8, !tbaa !92
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  call void %67(ptr noundef nonnull %32, ptr noundef nonnull %3, i8 noundef zeroext 0) #10
  br label %70

70:                                               ; preds = %65, %69, %35, %31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  %71 = load ptr, ptr %32, align 8, !tbaa !20
  %72 = icmp eq ptr %71, null
  br i1 %72, label %23, label %31, !llvm.loop !106

73:                                               ; preds = %23, %18, %13
  %74 = icmp eq ptr %14, %0
  br i1 %74, label %121, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 106
  %77 = load ptr, ptr %76, align 8, !tbaa !20
  %78 = icmp eq ptr %77, null
  br i1 %78, label %121, label %79

79:                                               ; preds = %75, %118
  %80 = phi ptr [ %119, %118 ], [ %77, %75 ]
  %81 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %80) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %82 = icmp eq ptr %81, null
  br i1 %82, label %118, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %81, i64 0, i32 8
  %85 = load ptr, ptr %84, align 8, !tbaa !86
  %86 = icmp eq ptr %85, null
  br i1 %86, label %118, label %87

87:                                               ; preds = %83
  %88 = call i32 %85(ptr noundef nonnull %80, ptr noundef nonnull %4) #10
  %89 = load ptr, ptr %4, align 8, !tbaa !20
  %90 = icmp eq ptr %89, null
  br i1 %90, label %113, label %91

91:                                               ; preds = %87, %110
  %92 = phi ptr [ %111, %110 ], [ %89, %87 ]
  %93 = getelementptr inbounds %struct.bConstraintTarget, ptr %92, i64 0, i32 3
  %94 = load i8, ptr %93, align 8, !tbaa !90
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.bConstraintTarget, ptr %92, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !88
  %99 = icmp eq ptr %98, %0
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = call ptr @BLI_findstring(ptr noundef %8, ptr noundef nonnull %93, i32 noundef 40) #10
  %102 = icmp eq ptr %101, null
  br i1 %102, label %110, label %108

103:                                              ; preds = %96
  %104 = icmp eq ptr %98, %1
  br i1 %104, label %105, label %110

105:                                              ; preds = %103
  %106 = call ptr @BLI_findstring(ptr noundef %6, ptr noundef nonnull %93, i32 noundef 40) #10
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %105, %100
  %109 = phi ptr [ %1, %100 ], [ %0, %105 ]
  store ptr %109, ptr %97, align 8, !tbaa !88
  br label %110

110:                                              ; preds = %108, %91, %103, %105, %100
  %111 = load ptr, ptr %92, align 8, !tbaa !20
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %91, !llvm.loop !107

113:                                              ; preds = %110, %87
  %114 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %81, i64 0, i32 9
  %115 = load ptr, ptr %114, align 8, !tbaa !92
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  call void %115(ptr noundef nonnull %80, ptr noundef nonnull %4, i8 noundef zeroext 0) #10
  br label %118

118:                                              ; preds = %113, %117, %83, %79
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  %119 = load ptr, ptr %80, align 8, !tbaa !20
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %79, !llvm.loop !108

121:                                              ; preds = %118, %75, %73
  %122 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 9
  %123 = load ptr, ptr %122, align 8, !tbaa !44
  %124 = icmp ne ptr %123, null
  %125 = icmp eq ptr %123, %0
  %126 = and i1 %124, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 4
  %129 = load i16, ptr %128, align 2, !tbaa !45
  %130 = icmp eq i16 %129, 7
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 8
  %133 = load i8, ptr %132, align 8, !tbaa !90
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = call ptr @BLI_findstring(ptr noundef %8, ptr noundef nonnull %132, i32 noundef 40) #10
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  store ptr %1, ptr %122, align 8, !tbaa !44
  br label %139

139:                                              ; preds = %121, %135, %138, %131, %127
  %140 = load ptr, ptr %14, align 8, !tbaa !20
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %13, !llvm.loop !109

142:                                              ; preds = %139, %2
  ret void
}

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pose_channel_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bone_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_bone(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_bones(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @uiItemEnumO(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_armature_bone_get_mirrored(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ctx_data_list_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bone_connect_to_existing_parent(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !82
  %4 = or i32 %3, 16
  store i32 %4, ptr %2, align 4, !tbaa !82
  %5 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 7
  %6 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 8
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %8) #12
  %9 = load ptr, ptr %6, align 8, !tbaa !78
  %10 = getelementptr inbounds %struct.EditBone, ptr %9, i64 0, i32 19
  %11 = load float, ptr %10, align 4, !tbaa !110
  %12 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 18
  store float %11, ptr %12, align 8, !tbaa !111
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bone_connect_to_new_parent(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) unnamed_addr #8 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %11 = load i32, ptr %10, align 4, !tbaa !82
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 9
  %16 = load i32, ptr %15, align 4, !tbaa !82
  %17 = and i32 %16, -5
  store i32 %17, ptr %15, align 4, !tbaa !82
  br label %18

18:                                               ; preds = %14, %9, %4
  store ptr %2, ptr %6, align 8, !tbaa !78
  %19 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !78
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %18, %32
  %23 = phi ptr [ %25, %32 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !78
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 3
  store ptr null, ptr %28, align 8, !tbaa !78
  %29 = getelementptr inbounds %struct.EditBone, ptr %23, i64 0, i32 9
  %30 = load i32, ptr %29, align 4, !tbaa !82
  %31 = and i32 %30, -17
  store i32 %31, ptr %29, align 4, !tbaa !82
  br label %34

32:                                               ; preds = %22
  %33 = icmp eq ptr %25, null
  br i1 %33, label %34, label %22, !llvm.loop !112

34:                                               ; preds = %32, %27, %18
  %35 = icmp eq i16 %3, 1
  %36 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %37 = load i32, ptr %36, align 4, !tbaa !82
  br i1 %35, label %38, label %63

38:                                               ; preds = %34
  %39 = or i32 %37, 16
  store i32 %39, ptr %36, align 4, !tbaa !82
  %40 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 8
  %41 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %40, ptr noundef nonnull %41) #12
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %41, ptr noundef nonnull %40) #12
  %42 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 19
  %43 = load float, ptr %42, align 4, !tbaa !110
  %44 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 18
  store float %43, ptr %44, align 8, !tbaa !111
  %45 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 8
  call fastcc void @add_v3_v3(ptr noundef nonnull %45, ptr noundef nonnull %5) #12
  %46 = load ptr, ptr %0, align 8, !tbaa !20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %65, label %48

48:                                               ; preds = %38, %60
  %49 = phi ptr [ %61, %60 ], [ %46, %38 ]
  br label %50

50:                                               ; preds = %48, %55
  %51 = phi ptr [ %53, %55 ], [ %49, %48 ]
  %52 = getelementptr inbounds %struct.EditBone, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !78
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = icmp eq ptr %53, %1
  br i1 %56, label %57, label %50, !llvm.loop !113

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.EditBone, ptr %49, i64 0, i32 7
  call fastcc void @add_v3_v3(ptr noundef nonnull %58, ptr noundef nonnull %5) #12
  %59 = getelementptr inbounds %struct.EditBone, ptr %49, i64 0, i32 8
  call fastcc void @add_v3_v3(ptr noundef nonnull %59, ptr noundef nonnull %5) #12
  br label %60

60:                                               ; preds = %50, %57
  %61 = load ptr, ptr %49, align 8, !tbaa !20
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %48, !llvm.loop !114

63:                                               ; preds = %34
  %64 = and i32 %37, -17
  store i32 %64, ptr %36, align 4, !tbaa !82
  br label %65

65:                                               ; preds = %60, %38, %63
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = load float, ptr %1, align 4, !tbaa !35
  store float %3, ptr %0, align 4, !tbaa !35
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !35
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !35
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !35
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #9 {
  %4 = load float, ptr %1, align 4, !tbaa !35
  %5 = load float, ptr %2, align 4, !tbaa !35
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !35
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !35
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !35
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !35
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !35
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !35
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = load float, ptr %1, align 4, !tbaa !35
  %4 = load float, ptr %0, align 4, !tbaa !35
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !35
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !35
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !35
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !35
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !35
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !35
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @editbone_clear_parent(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.EditBone, ptr %4, i64 0, i32 9
  %8 = load i32, ptr %7, align 4, !tbaa !82
  %9 = and i32 %8, -5
  store i32 %9, ptr %7, align 4, !tbaa !82
  br label %10

10:                                               ; preds = %6, %2
  %11 = icmp eq i32 %1, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  store ptr null, ptr %3, align 8, !tbaa !78
  br label %13

13:                                               ; preds = %12, %10
  %14 = getelementptr inbounds %struct.EditBone, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !82
  %16 = and i32 %15, -17
  store i32 %16, ptr %14, align 4, !tbaa !82
  ret void
}

; Function Attrs: optsize
declare void @ED_armature_sync_selection(ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 296}
!6 = !{!"Object", !7, i64 0, !8, i64 120, !8, i64 128, !11, i64 136, !11, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !9, i64 152, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !13, i64 312, !8, i64 360, !14, i64 368, !14, i64 384, !14, i64 400, !14, i64 416, !12, i64 432, !12, i64 436, !8, i64 440, !8, i64 448, !12, i64 456, !12, i64 460, !9, i64 464, !9, i64 476, !9, i64 488, !9, i64 500, !9, i64 512, !9, i64 524, !9, i64 536, !9, i64 548, !9, i64 560, !9, i64 576, !9, i64 592, !9, i64 604, !15, i64 616, !15, i64 620, !9, i64 624, !9, i64 688, !9, i64 752, !9, i64 816, !9, i64 880, !12, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !9, i64 966, !9, i64 967, !12, i64 968, !12, i64 972, !12, i64 976, !12, i64 980, !12, i64 984, !15, i64 988, !15, i64 992, !15, i64 996, !15, i64 1000, !15, i64 1004, !15, i64 1008, !15, i64 1012, !15, i64 1016, !15, i64 1020, !15, i64 1024, !15, i64 1028, !15, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !9, i64 1042, !9, i64 1043, !11, i64 1044, !9, i64 1046, !9, i64 1047, !15, i64 1048, !15, i64 1052, !14, i64 1056, !14, i64 1072, !14, i64 1088, !14, i64 1104, !15, i64 1120, !11, i64 1124, !11, i64 1126, !9, i64 1128, !12, i64 1144, !12, i64 1148, !8, i64 1152, !9, i64 1160, !9, i64 1161, !11, i64 1162, !9, i64 1164, !14, i64 1176, !14, i64 1192, !14, i64 1208, !14, i64 1224, !8, i64 1240, !8, i64 1248, !8, i64 1256, !9, i64 1264, !9, i64 1265, !11, i64 1266, !15, i64 1268, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !16, i64 1304, !16, i64 1312, !12, i64 1320, !12, i64 1324, !14, i64 1328, !14, i64 1344, !8, i64 1360, !8, i64 1368, !8, i64 1376, !9, i64 1384, !8, i64 1392, !14, i64 1400, !8, i64 1416}
!7 = !{!"ID", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !8, i64 112}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"short", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"bAnimVizSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!14 = !{!"ListBase", !8, i64 0, !8, i64 8}
!15 = !{!"float", !9, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!6, !11, i64 136}
!18 = !{!19, !8, i64 160}
!19 = !{!"bArmature", !7, i64 0, !8, i64 120, !14, i64 128, !14, i64 144, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !11, i64 208, !11, i64 210, !12, i64 212, !12, i64 216, !12, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !12, i64 248, !12, i64 252}
!20 = !{!8, !8, i64 0}
!21 = !{!22, !8, i64 32}
!22 = !{!"CollectionPointerLink", !8, i64 0, !8, i64 8, !23, i64 16}
!23 = !{!"PointerRNA", !24, i64 0, !8, i64 8, !8, i64 16}
!24 = !{!"", !8, i64 0}
!25 = !{!26, !8, i64 32}
!26 = !{!"Base", !8, i64 0, !8, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !11, i64 28, !11, i64 30, !8, i64 32}
!27 = !{!6, !8, i64 288}
!28 = !{!6, !12, i64 432}
!29 = !{!30, !8, i64 120}
!30 = !{!"wmOperator", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !14, i64 128, !8, i64 144, !8, i64 152, !11, i64 160, !9, i64 162}
!31 = !{!32, !8, i64 0}
!32 = !{!"bPose", !14, i64 0, !8, i64 16, !11, i64 24, !11, i64 26, !12, i64 28, !12, i64 32, !15, i64 36, !9, i64 40, !9, i64 52, !14, i64 64, !12, i64 80, !12, i64 84, !8, i64 88, !8, i64 96, !13, i64 104, !9, i64 152}
!33 = !{!34, !8, i64 0}
!34 = !{!"bPoseChannel", !8, i64 0, !8, i64 8, !8, i64 16, !14, i64 24, !9, i64 40, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !9, i64 112, !9, i64 113, !9, i64 114, !8, i64 120, !8, i64 128, !8, i64 136, !14, i64 144, !14, i64 160, !8, i64 176, !8, i64 184, !8, i64 192, !9, i64 200, !9, i64 212, !9, i64 224, !9, i64 236, !9, i64 252, !15, i64 264, !11, i64 268, !11, i64 270, !9, i64 272, !9, i64 336, !9, i64 400, !9, i64 464, !9, i64 476, !9, i64 488, !9, i64 500, !9, i64 512, !15, i64 524, !15, i64 528, !15, i64 532, !8, i64 536}
!35 = !{!15, !15, i64 0}
!36 = !{!37, !15, i64 104}
!37 = !{!"EditBone", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !9, i64 40, !15, i64 104, !9, i64 108, !9, i64 120, !12, i64 132, !12, i64 136, !15, i64 140, !15, i64 144, !15, i64 148, !15, i64 152, !15, i64 156, !15, i64 160, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !11, i64 180}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = !{!42, !8, i64 0}
!42 = !{!"Global", !8, i64 0, !9, i64 8, !9, i64 1032, !9, i64 2056, !9, i64 2057, !9, i64 2058, !14, i64 2064, !9, i64 2080, !9, i64 2081, !9, i64 2082, !11, i64 2084, !11, i64 2086, !11, i64 2088, !9, i64 2090, !11, i64 2092, !12, i64 2096, !12, i64 2100, !9, i64 2104, !12, i64 2108, !12, i64 2112, !9, i64 2116}
!43 = distinct !{!43, !39}
!44 = !{!6, !8, i64 216}
!45 = !{!6, !11, i64 138}
!46 = distinct !{!46, !39}
!47 = !{!48, !8, i64 0}
!48 = !{!"wmOperatorType", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !14, i64 112, !8, i64 128, !8, i64 136, !8, i64 144, !49, i64 152, !11, i64 184}
!49 = !{!"ExtensionRNA", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!50 = !{!48, !8, i64 8}
!51 = !{!48, !8, i64 24}
!52 = !{!48, !8, i64 32}
!53 = !{!48, !8, i64 72}
!54 = !{!48, !11, i64 184}
!55 = !{!26, !12, i64 24}
!56 = distinct !{!56, !39}
!57 = !{!58, !8, i64 168}
!58 = !{!"Scene", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !14, i64 152, !8, i64 168, !8, i64 176, !9, i64 184, !9, i64 196, !9, i64 208, !9, i64 220, !12, i64 232, !12, i64 236, !12, i64 240, !11, i64 244, !9, i64 246, !9, i64 247, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !59, i64 280, !68, i64 4264, !14, i64 4296, !14, i64 4312, !8, i64 4328, !8, i64 4336, !8, i64 4344, !8, i64 4352, !8, i64 4360, !8, i64 4368, !11, i64 4376, !11, i64 4378, !12, i64 4380, !14, i64 4384, !69, i64 4400, !70, i64 4416, !73, i64 4600, !8, i64 4608, !74, i64 4616, !8, i64 4640, !16, i64 4648, !16, i64 4656, !61, i64 4664, !62, i64 4824, !75, i64 4888, !8, i64 4952}
!59 = !{!"RenderData", !60, i64 0, !8, i64 248, !8, i64 256, !63, i64 264, !64, i64 328, !12, i64 400, !12, i64 404, !12, i64 408, !15, i64 412, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !11, i64 432, !11, i64 434, !15, i64 436, !15, i64 440, !15, i64 444, !15, i64 448, !15, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !12, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !12, i64 484, !12, i64 488, !11, i64 492, !11, i64 494, !12, i64 496, !12, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !9, i64 514, !9, i64 515, !12, i64 516, !12, i64 520, !12, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !65, i64 544, !65, i64 560, !66, i64 576, !14, i64 592, !11, i64 608, !11, i64 610, !15, i64 612, !15, i64 616, !15, i64 620, !15, i64 624, !12, i64 628, !15, i64 632, !15, i64 636, !15, i64 640, !15, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !15, i64 660, !15, i64 664, !11, i64 668, !11, i64 670, !15, i64 672, !15, i64 676, !9, i64 680, !12, i64 1704, !11, i64 1708, !11, i64 1710, !9, i64 1712, !9, i64 2480, !9, i64 2496, !9, i64 2512, !9, i64 2513, !9, i64 2514, !9, i64 2515, !12, i64 2520, !11, i64 2524, !11, i64 2526, !15, i64 2528, !15, i64 2532, !11, i64 2536, !11, i64 2538, !15, i64 2540, !11, i64 2544, !11, i64 2546, !12, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !15, i64 2560, !15, i64 2564, !8, i64 2568, !12, i64 2576, !15, i64 2580, !9, i64 2584, !67, i64 2616, !12, i64 3976, !12, i64 3980}
!60 = !{!"ImageFormatData", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !11, i64 8, !11, i64 10, !15, i64 12, !9, i64 16, !9, i64 17, !9, i64 18, !61, i64 24, !62, i64 184}
!61 = !{!"ColorManagedViewSettings", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 72, !15, i64 136, !15, i64 140, !8, i64 144, !8, i64 152}
!62 = !{!"ColorManagedDisplaySettings", !9, i64 0}
!63 = !{!"QuicktimeCodecSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !11, i64 48, !11, i64 50, !12, i64 52, !12, i64 56, !12, i64 60}
!64 = !{!"FFMpegCodecData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !15, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !8, i64 64}
!65 = !{!"rctf", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!66 = !{!"rcti", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!67 = !{!"BakeData", !60, i64 0, !9, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !15, i64 1280, !15, i64 1284, !9, i64 1288, !9, i64 1291, !9, i64 1292, !9, i64 1293, !9, i64 1296}
!68 = !{!"AudioData", !12, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !12, i64 16, !11, i64 20, !11, i64 22, !15, i64 24, !15, i64 28}
!69 = !{!"GameFraming", !9, i64 0, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15}
!70 = !{!"GameData", !69, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !9, i64 34, !71, i64 40, !11, i64 64, !11, i64 66, !15, i64 68, !72, i64 72, !15, i64 128, !15, i64 132, !12, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180}
!71 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !15, i64 8, !15, i64 12, !8, i64 16}
!72 = !{!"RecastData", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !12, i64 40, !15, i64 44, !15, i64 48, !11, i64 52, !11, i64 54}
!73 = !{!"UnitSettings", !15, i64 0, !9, i64 4, !9, i64 5, !11, i64 6}
!74 = !{!"PhysicsSettings", !9, i64 0, !12, i64 12, !12, i64 16, !12, i64 20}
!75 = !{!"ColorManagedColorspaceSettings", !9, i64 0}
!76 = !{!48, !8, i64 48}
!77 = !{!48, !8, i64 88}
!78 = !{!37, !8, i64 24}
!79 = distinct !{!79, !39}
!80 = !{!30, !8, i64 112}
!81 = !{!19, !12, i64 192}
!82 = !{!37, !12, i64 132}
!83 = distinct !{!83, !39}
!84 = !{!48, !8, i64 104}
!85 = distinct !{!85, !39}
!86 = !{!87, !8, i64 104}
!87 = !{!"bConstraintTypeInfo", !11, i64 0, !11, i64 2, !9, i64 4, !9, i64 36, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128}
!88 = !{!89, !8, i64 16}
!89 = !{!"bConstraintTarget", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !9, i64 88, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158}
!90 = !{!9, !9, i64 0}
!91 = distinct !{!91, !39}
!92 = !{!87, !8, i64 112}
!93 = !{!94, !11, i64 24}
!94 = !{!"bConstraint", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 26, !9, i64 28, !9, i64 29, !9, i64 30, !11, i64 94, !15, i64 96, !15, i64 100, !8, i64 104, !15, i64 112, !15, i64 116}
!95 = !{!94, !8, i64 16}
!96 = !{!97, !8, i64 32}
!97 = !{!"bActionConstraint", !8, i64 0, !11, i64 8, !11, i64 10, !12, i64 12, !12, i64 16, !15, i64 20, !15, i64 24, !12, i64 28, !8, i64 32, !9, i64 40}
!98 = distinct !{!98, !39}
!99 = distinct !{!99, !39}
!100 = distinct !{!100, !39}
!101 = !{!34, !8, i64 128}
!102 = distinct !{!102, !39}
!103 = distinct !{!103, !39}
!104 = distinct !{!104, !39}
!105 = distinct !{!105, !39}
!106 = distinct !{!106, !39}
!107 = distinct !{!107, !39}
!108 = distinct !{!108, !39}
!109 = distinct !{!109, !39}
!110 = !{!37, !15, i64 172}
!111 = !{!37, !15, i64 168}
!112 = distinct !{!112, !39}
!113 = distinct !{!113, !39}
!114 = distinct !{!114, !39}
