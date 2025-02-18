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

; Function Attrs: nounwind uwtable
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
  %12 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %13 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %14 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  br label %19

19:                                               ; preds = %2, %16
  %20 = phi ptr [ %18, %16 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  br i1 %15, label %162, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 3
  %23 = load i16, ptr %22, align 8, !tbaa !46
  %24 = icmp ne i16 %23, 25
  %25 = icmp eq ptr %20, null
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %162, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.bArmature, ptr %20, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !47
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %162

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %32 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %5) #8
  br label %33

33:                                               ; preds = %38, %31
  %34 = phi ptr [ %5, %31 ], [ %36, %38 ]
  %35 = phi i8 [ 0, %31 ], [ %44, %38 ]
  %36 = load ptr, ptr %34, align 8, !tbaa !49
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.CollectionPointerLink, ptr %36, i64 0, i32 2, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  %41 = getelementptr inbounds %struct.Base, ptr %40, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !54
  %43 = icmp eq ptr %42, %14
  %44 = select i1 %43, i8 1, i8 %35
  br i1 %43, label %45, label %33

45:                                               ; preds = %38, %33
  %46 = phi i8 [ %44, %38 ], [ %35, %33 ]
  call void @BLI_freelistN(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !56
  call void @BKE_report(ptr noundef %50, i32 noundef 16, ptr noundef nonnull @.str) #8
  br label %162

51:                                               ; preds = %45
  call void @ED_armature_to_edit(ptr noundef nonnull %20) #8
  %52 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 18
  %53 = load ptr, ptr %52, align 8, !tbaa !58
  %54 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 27
  %55 = load i32, ptr %54, align 8, !tbaa !59
  %56 = and i32 %55, -65
  store i32 %56, ptr %54, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  %57 = call i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr noundef nonnull %6) #8
  %58 = load ptr, ptr %6, align 8, !tbaa !49
  %59 = icmp eq ptr %58, null
  br i1 %59, label %161, label %60

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 47
  %62 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2
  %63 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2, i64 2
  br label %64

64:                                               ; preds = %60, %158
  %65 = phi ptr [ %58, %60 ], [ %159, %158 ]
  %66 = getelementptr inbounds %struct.CollectionPointerLink, ptr %65, i64 0, i32 2, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !50
  %68 = getelementptr inbounds %struct.Base, ptr %67, i64 0, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !54
  %70 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 3
  %71 = load i16, ptr %70, align 8, !tbaa !46
  %72 = icmp ne i16 %71, 25
  %73 = icmp eq ptr %69, %14
  %74 = or i1 %73, %72
  br i1 %74, label %158, label %75

75:                                               ; preds = %64
  %76 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 19
  %77 = load ptr, ptr %76, align 8, !tbaa !34
  call void @ED_armature_to_edit(ptr noundef %77) #8
  %78 = load ptr, ptr %68, align 8, !tbaa !54
  %79 = getelementptr inbounds %struct.Object, ptr %78, i64 0, i32 18
  %80 = load ptr, ptr %79, align 8, !tbaa !58
  %81 = getelementptr inbounds %struct.Object, ptr %78, i64 0, i32 27
  %82 = load i32, ptr %81, align 8, !tbaa !59
  %83 = and i32 %82, -65
  store i32 %83, ptr %81, align 8, !tbaa !59
  %84 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %61) #8
  %85 = load ptr, ptr %68, align 8, !tbaa !54
  %86 = getelementptr inbounds %struct.Object, ptr %85, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %86) #8
  %87 = load ptr, ptr %80, align 8, !tbaa !60
  %88 = icmp eq ptr %87, null
  br i1 %88, label %157, label %89

89:                                               ; preds = %75
  %90 = getelementptr inbounds %struct.bArmature, ptr %77, i64 0, i32 4
  br label %91

91:                                               ; preds = %89, %152
  %92 = phi ptr [ %87, %89 ], [ %93, %152 ]
  %93 = load ptr, ptr %92, align 8, !tbaa !62
  %94 = load ptr, ptr %90, align 8, !tbaa !47
  %95 = getelementptr inbounds %struct.bPoseChannel, ptr %92, i64 0, i32 4
  %96 = call ptr @ED_armature_bone_find_name(ptr noundef %94, ptr noundef nonnull %95) #8
  %97 = load ptr, ptr %28, align 8, !tbaa !47
  %98 = getelementptr inbounds %struct.EditBone, ptr %96, i64 0, i32 5
  call void @unique_editbone_name(ptr noundef %97, ptr noundef nonnull %98, ptr noundef null) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #8
  call void @ED_armature_ebone_to_mat3(ptr noundef %96, ptr noundef nonnull %11) #8
  call void @unit_m4(ptr noundef nonnull %7) #8
  call void @mul_m4_m3m4(ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull %3) #8
  %99 = getelementptr inbounds %struct.EditBone, ptr %96, i64 0, i32 7
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %99) #8
  %100 = getelementptr inbounds %struct.EditBone, ptr %96, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %100) #8
  call void @ED_armature_ebone_to_mat3(ptr noundef %96, ptr noundef nonnull %11) #8
  call void @copy_m4_m3(ptr noundef nonnull %8, ptr noundef nonnull %11) #8
  %101 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %7) #8
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %8) #8
  %102 = load float, ptr %62, align 16, !tbaa !64
  %103 = load float, ptr %63, align 8, !tbaa !64
  %104 = call float @atan2f(float noundef %102, float noundef %103) #8
  %105 = getelementptr inbounds %struct.EditBone, ptr %96, i64 0, i32 6
  %106 = load float, ptr %105, align 8, !tbaa !65
  %107 = fsub float %106, %104
  store float %107, ptr %105, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  %108 = load ptr, ptr %68, align 8, !tbaa !54
  %109 = load ptr, ptr @G, align 8, !tbaa !67
  %110 = getelementptr inbounds %struct.Main, ptr %109, i64 0, i32 13
  %111 = load ptr, ptr %110, align 8, !tbaa !49
  %112 = icmp eq ptr %111, null
  br i1 %112, label %152, label %113

113:                                              ; preds = %91, %149
  %114 = phi ptr [ %150, %149 ], [ %111, %91 ]
  %115 = getelementptr inbounds %struct.Object, ptr %114, i64 0, i32 3
  %116 = load i16, ptr %115, align 8, !tbaa !46
  %117 = icmp eq i16 %116, 25
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.Object, ptr %114, i64 0, i32 18
  %120 = load ptr, ptr %119, align 8, !tbaa !58
  %121 = load ptr, ptr %120, align 8, !tbaa !49
  %122 = icmp eq ptr %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %118, %123
  %124 = phi ptr [ %126, %123 ], [ %121, %118 ]
  %125 = getelementptr inbounds %struct.bPoseChannel, ptr %124, i64 0, i32 3
  call fastcc void @joined_armature_fix_links_constraints(ptr noundef nonnull %14, ptr noundef %108, ptr noundef nonnull %92, ptr noundef %96, ptr noundef nonnull %125)
  %126 = load ptr, ptr %124, align 8, !tbaa !49
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %123, !llvm.loop !69

128:                                              ; preds = %123, %118, %113
  %129 = icmp eq ptr %114, %108
  br i1 %129, label %132, label %130

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.Object, ptr %114, i64 0, i32 106
  call fastcc void @joined_armature_fix_links_constraints(ptr noundef nonnull %14, ptr noundef %108, ptr noundef nonnull %92, ptr noundef %96, ptr noundef nonnull %131)
  br label %132

132:                                              ; preds = %130, %128
  %133 = getelementptr inbounds %struct.Object, ptr %114, i64 0, i32 9
  %134 = load ptr, ptr %133, align 8, !tbaa !72
  %135 = icmp ne ptr %134, null
  %136 = icmp eq ptr %134, %108
  %137 = and i1 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.Object, ptr %114, i64 0, i32 4
  %140 = load i16, ptr %139, align 2, !tbaa !73
  %141 = icmp eq i16 %140, 7
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.Object, ptr %114, i64 0, i32 8
  %144 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %143, ptr noundef nonnull dereferenceable(1) %95) #9
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = call ptr @BLI_strncpy(ptr noundef nonnull %143, ptr noundef nonnull %98, i64 noundef 64) #8
  br label %148

148:                                              ; preds = %146, %142, %138
  store ptr %14, ptr %133, align 8, !tbaa !72
  br label %149

149:                                              ; preds = %148, %132
  %150 = load ptr, ptr %114, align 8, !tbaa !49
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %113, !llvm.loop !74

152:                                              ; preds = %149, %91
  %153 = call ptr @BLI_strncpy(ptr noundef nonnull %95, ptr noundef nonnull %98, i64 noundef 64) #8
  %154 = load ptr, ptr %90, align 8, !tbaa !47
  call void @BLI_remlink(ptr noundef %154, ptr noundef %96) #8
  %155 = load ptr, ptr %28, align 8, !tbaa !47
  call void @BLI_addtail(ptr noundef %155, ptr noundef %96) #8
  call void @BLI_remlink(ptr noundef nonnull %80, ptr noundef nonnull %92) #8
  call void @BLI_addtail(ptr noundef %53, ptr noundef nonnull %92) #8
  call void @BKE_pose_channels_hash_free(ptr noundef nonnull %80) #8
  call void @BKE_pose_channels_hash_free(ptr noundef %53) #8
  %156 = icmp eq ptr %93, null
  br i1 %156, label %157, label %91, !llvm.loop !75

157:                                              ; preds = %152, %75
  call void @ED_base_object_free_and_unlink(ptr noundef %12, ptr noundef %13, ptr noundef %67) #8
  br label %158

158:                                              ; preds = %157, %64
  %159 = load ptr, ptr %65, align 8, !tbaa !49
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %64, !llvm.loop !76

161:                                              ; preds = %158, %51
  call void @BLI_freelistN(ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @DAG_relations_tag_update(ptr noundef %12) #8
  call void @ED_armature_from_edit(ptr noundef nonnull %20) #8
  call void @ED_armature_edit_free(ptr noundef nonnull %20) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %13) #8
  br label %162

162:                                              ; preds = %27, %19, %21, %161, %48
  %163 = phi i32 [ 2, %48 ], [ 4, %161 ], [ 2, %21 ], [ 2, %19 ], [ 2, %27 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #8
  ret i32 %163
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_editable_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_armature_to_edit(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_armature_bone_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unique_editbone_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_armature_ebone_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m3m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #3

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_pose_channels_hash_free(ptr noundef) local_unnamed_addr #2

declare void @ED_base_object_free_and_unlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

declare void @ED_armature_from_edit(ptr noundef) local_unnamed_addr #2

declare void @ED_armature_edit_free(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ARMATURE_OT_separate(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !77
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %2, align 8, !tbaa !80
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.3, ptr %3, align 8, !tbaa !81
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @separate_armature_exec, ptr %4, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %5, align 8, !tbaa !83
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !84
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @separate_armature_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %182, label %10

10:                                               ; preds = %2
  tail call void @WM_cursor_wait(i8 noundef zeroext 1) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %11 = call i32 @CTX_data_visible_bases(ptr noundef %0, ptr noundef nonnull %5) #8
  %12 = load ptr, ptr %5, align 8, !tbaa !49
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %26, %14 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.CollectionPointerLink, ptr %15, i64 0, i32 2, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = icmp eq ptr %19, %8
  %21 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !85
  %23 = and i32 %22, -2
  %24 = zext i1 %20 to i32
  %25 = or disjoint i32 %23, %24
  store i32 %25, ptr %21, align 8, !tbaa !85
  %26 = load ptr, ptr %15, align 8, !tbaa !49
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %14, !llvm.loop !86

28:                                               ; preds = %14, %10
  call void @BLI_freelistN(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  %29 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !87
  %31 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 27
  %32 = load i32, ptr %31, align 8, !tbaa !59
  %33 = and i32 %32, -65
  store i32 %33, ptr %31, align 8, !tbaa !59
  %34 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  call void @ED_armature_from_edit(ptr noundef %35) #8
  %36 = load ptr, ptr %34, align 8, !tbaa !34
  call void @ED_armature_edit_free(ptr noundef %36) #8
  %37 = call ptr @ED_object_add_duplicate(ptr noundef %6, ptr noundef %7, ptr noundef %30, i32 noundef 512) #8
  call void @DAG_relations_tag_update(ptr noundef %6) #8
  %38 = getelementptr inbounds %struct.Base, ptr %37, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !54
  %40 = getelementptr inbounds %struct.Base, ptr %37, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !85
  %42 = and i32 %41, -2
  store i32 %42, ptr %40, align 8, !tbaa !85
  call fastcc void @separate_armature_bones(ptr noundef nonnull %8, i16 noundef signext 1)
  call fastcc void @separate_armature_bones(ptr noundef %39, i16 noundef signext 0)
  %43 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 18
  %44 = load ptr, ptr %43, align 8, !tbaa !58
  %45 = getelementptr inbounds %struct.Object, ptr %39, i64 0, i32 18
  %46 = load ptr, ptr %45, align 8, !tbaa !58
  %47 = load ptr, ptr @G, align 8, !tbaa !67
  %48 = getelementptr inbounds %struct.Main, ptr %47, i64 0, i32 13
  %49 = load ptr, ptr %48, align 8, !tbaa !49
  %50 = icmp eq ptr %49, null
  br i1 %50, label %178, label %51

51:                                               ; preds = %28, %175
  %52 = phi ptr [ %176, %175 ], [ %49, %28 ]
  %53 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 3
  %54 = load i16, ptr %53, align 8, !tbaa !46
  %55 = icmp eq i16 %54, 25
  br i1 %55, label %56, label %111

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 18
  %58 = load ptr, ptr %57, align 8, !tbaa !58
  %59 = load ptr, ptr %58, align 8, !tbaa !49
  %60 = icmp eq ptr %59, null
  br i1 %60, label %111, label %64

61:                                               ; preds = %108, %64
  %62 = load ptr, ptr %65, align 8, !tbaa !49
  %63 = icmp eq ptr %62, null
  br i1 %63, label %111, label %64, !llvm.loop !106

64:                                               ; preds = %56, %61
  %65 = phi ptr [ %62, %61 ], [ %59, %56 ]
  %66 = getelementptr inbounds %struct.bPoseChannel, ptr %65, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !49
  %68 = icmp eq ptr %67, null
  br i1 %68, label %61, label %69

69:                                               ; preds = %64, %108
  %70 = phi ptr [ %109, %108 ], [ %67, %64 ]
  %71 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %70) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %72 = icmp eq ptr %71, null
  br i1 %72, label %108, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %71, i64 0, i32 8
  %75 = load ptr, ptr %74, align 8, !tbaa !107
  %76 = icmp eq ptr %75, null
  br i1 %76, label %108, label %77

77:                                               ; preds = %73
  %78 = call i32 %75(ptr noundef nonnull %70, ptr noundef nonnull %3) #8
  %79 = load ptr, ptr %3, align 8, !tbaa !49
  %80 = icmp eq ptr %79, null
  br i1 %80, label %103, label %81

81:                                               ; preds = %77, %100
  %82 = phi ptr [ %101, %100 ], [ %79, %77 ]
  %83 = getelementptr inbounds %struct.bConstraintTarget, ptr %82, i64 0, i32 3
  %84 = load i8, ptr %83, align 8, !tbaa !109
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.bConstraintTarget, ptr %82, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !110
  %89 = icmp eq ptr %88, %8
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = call ptr @BLI_findstring(ptr noundef %46, ptr noundef nonnull %83, i32 noundef 40) #8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %100, label %98

93:                                               ; preds = %86
  %94 = icmp eq ptr %88, %39
  br i1 %94, label %95, label %100

95:                                               ; preds = %93
  %96 = call ptr @BLI_findstring(ptr noundef %44, ptr noundef nonnull %83, i32 noundef 40) #8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %95, %90
  %99 = phi ptr [ %39, %90 ], [ %8, %95 ]
  store ptr %99, ptr %87, align 8, !tbaa !110
  br label %100

100:                                              ; preds = %98, %95, %93, %90, %81
  %101 = load ptr, ptr %82, align 8, !tbaa !49
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %81, !llvm.loop !112

103:                                              ; preds = %100, %77
  %104 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %71, i64 0, i32 9
  %105 = load ptr, ptr %104, align 8, !tbaa !113
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  call void %105(ptr noundef nonnull %70, ptr noundef nonnull %3, i8 noundef zeroext 0) #8
  br label %108

108:                                              ; preds = %107, %103, %73, %69
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  %109 = load ptr, ptr %70, align 8, !tbaa !49
  %110 = icmp eq ptr %109, null
  br i1 %110, label %61, label %69, !llvm.loop !114

111:                                              ; preds = %61, %56, %51
  %112 = icmp eq ptr %52, %8
  br i1 %112, label %159, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 106
  %115 = load ptr, ptr %114, align 8, !tbaa !49
  %116 = icmp eq ptr %115, null
  br i1 %116, label %159, label %117

117:                                              ; preds = %113, %156
  %118 = phi ptr [ %157, %156 ], [ %115, %113 ]
  %119 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %118) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %120 = icmp eq ptr %119, null
  br i1 %120, label %156, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %119, i64 0, i32 8
  %123 = load ptr, ptr %122, align 8, !tbaa !107
  %124 = icmp eq ptr %123, null
  br i1 %124, label %156, label %125

125:                                              ; preds = %121
  %126 = call i32 %123(ptr noundef nonnull %118, ptr noundef nonnull %4) #8
  %127 = load ptr, ptr %4, align 8, !tbaa !49
  %128 = icmp eq ptr %127, null
  br i1 %128, label %151, label %129

129:                                              ; preds = %125, %148
  %130 = phi ptr [ %149, %148 ], [ %127, %125 ]
  %131 = getelementptr inbounds %struct.bConstraintTarget, ptr %130, i64 0, i32 3
  %132 = load i8, ptr %131, align 8, !tbaa !109
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %148, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.bConstraintTarget, ptr %130, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !110
  %137 = icmp eq ptr %136, %8
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = call ptr @BLI_findstring(ptr noundef %46, ptr noundef nonnull %131, i32 noundef 40) #8
  %140 = icmp eq ptr %139, null
  br i1 %140, label %148, label %146

141:                                              ; preds = %134
  %142 = icmp eq ptr %136, %39
  br i1 %142, label %143, label %148

143:                                              ; preds = %141
  %144 = call ptr @BLI_findstring(ptr noundef %44, ptr noundef nonnull %131, i32 noundef 40) #8
  %145 = icmp eq ptr %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %143, %138
  %147 = phi ptr [ %39, %138 ], [ %8, %143 ]
  store ptr %147, ptr %135, align 8, !tbaa !110
  br label %148

148:                                              ; preds = %146, %143, %141, %138, %129
  %149 = load ptr, ptr %130, align 8, !tbaa !49
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %129, !llvm.loop !115

151:                                              ; preds = %148, %125
  %152 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %119, i64 0, i32 9
  %153 = load ptr, ptr %152, align 8, !tbaa !113
  %154 = icmp eq ptr %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %151
  call void %153(ptr noundef nonnull %118, ptr noundef nonnull %4, i8 noundef zeroext 0) #8
  br label %156

156:                                              ; preds = %155, %151, %121, %117
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  %157 = load ptr, ptr %118, align 8, !tbaa !49
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %117, !llvm.loop !116

159:                                              ; preds = %156, %113, %111
  %160 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 9
  %161 = load ptr, ptr %160, align 8, !tbaa !72
  %162 = icmp eq ptr %161, %8
  br i1 %162, label %163, label %175

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 4
  %165 = load i16, ptr %164, align 2, !tbaa !73
  %166 = icmp eq i16 %165, 7
  br i1 %166, label %167, label %175

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 8
  %169 = load i8, ptr %168, align 8, !tbaa !109
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = call ptr @BLI_findstring(ptr noundef %46, ptr noundef nonnull %168, i32 noundef 40) #8
  %173 = icmp eq ptr %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %171
  store ptr %39, ptr %160, align 8, !tbaa !72
  br label %175

175:                                              ; preds = %174, %171, %167, %163, %159
  %176 = load ptr, ptr %52, align 8, !tbaa !49
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %51, !llvm.loop !117

178:                                              ; preds = %175, %28
  call void @DAG_id_tag_update(ptr noundef nonnull %8, i16 noundef signext 2) #8
  call void @DAG_id_tag_update(ptr noundef %39, i16 noundef signext 2) #8
  %179 = load ptr, ptr %34, align 8, !tbaa !34
  call void @ED_armature_to_edit(ptr noundef %179) #8
  %180 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %181 = load ptr, ptr %180, align 8, !tbaa !56
  call void @BKE_report(ptr noundef %181, i32 noundef 2, ptr noundef nonnull @.str.15) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %8) #8
  call void @WM_cursor_wait(i8 noundef zeroext 0) #8
  br label %182

182:                                              ; preds = %2, %178
  %183 = phi i32 [ 4, %178 ], [ 2, %2 ]
  ret i32 %183
}

declare i32 @ED_operator_editarmature(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @ARMATURE_OT_parent_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.4, ptr %0, align 8, !tbaa !77
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %2, align 8, !tbaa !80
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.6, ptr %3, align 8, !tbaa !81
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @armature_parent_set_invoke, ptr %4, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_parent_set_exec, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %6, align 8, !tbaa !83
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !84
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !119
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef nonnull @prop_editarm_make_parent_types, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_parent_set_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_active_bone(ptr noundef %0) #8
  %6 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef 0) #8
  %7 = tail call ptr @uiPupMenuLayout(ptr noundef %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %8 = call i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr noundef nonnull %4) #8
  %9 = load ptr, ptr %4, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %3, %22
  %12 = phi ptr [ %24, %22 ], [ %9, %3 ]
  %13 = phi i32 [ %23, %22 ], [ 0, %3 ]
  %14 = getelementptr inbounds %struct.CollectionPointerLink, ptr %12, i64 0, i32 2, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !120
  %20 = icmp eq ptr %19, %5
  %21 = select i1 %20, i32 %13, i32 1
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i32 [ %13, %11 ], [ %21, %17 ]
  %24 = load ptr, ptr %12, align 8, !tbaa !49
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %11, !llvm.loop !121

26:                                               ; preds = %22
  %27 = icmp eq i32 %23, 0
  call void @BLI_freelistN(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @uiItemEnumO(ptr noundef %7, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef 1) #8
  br i1 %27, label %31, label %29

28:                                               ; preds = %3
  call void @BLI_freelistN(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  br label %29

29:                                               ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ 2, %26 ]
  call void @uiItemEnumO(ptr noundef %7, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef %30) #8
  br label %31

31:                                               ; preds = %29, %26
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %6) #8
  ret i32 32
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_parent_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = tail call ptr @CTX_data_active_bone(ptr noundef %0) #8
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !122
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.7) #8
  %11 = trunc i32 %10 to i16
  %12 = icmp eq ptr %7, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  tail call void @BKE_report(ptr noundef %15, i32 noundef 32, ptr noundef nonnull @.str.16) #8
  br label %102

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !123
  %19 = and i32 %18, 256
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = tail call ptr @ED_armature_bone_get_mirrored(ptr noundef %23, ptr noundef nonnull %7) #8
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr %7, ptr %24
  br label %27

27:                                               ; preds = %21, %16
  %28 = phi ptr [ null, %16 ], [ %26, %21 ]
  %29 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_selected_editable_bones) #8
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %74

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !120
  %34 = icmp eq ptr %33, null
  br i1 %34, label %101, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 9
  %37 = load i32, ptr %36, align 4, !tbaa !124
  %38 = or i32 %37, 16
  store i32 %38, ptr %36, align 4, !tbaa !124
  %39 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 7
  %40 = getelementptr inbounds %struct.EditBone, ptr %33, i64 0, i32 8
  %41 = load float, ptr %40, align 4, !tbaa !64
  store float %41, ptr %39, align 4, !tbaa !64
  %42 = getelementptr inbounds %struct.EditBone, ptr %33, i64 0, i32 8, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !64
  %44 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 7, i64 1
  store float %43, ptr %44, align 4, !tbaa !64
  %45 = getelementptr inbounds %struct.EditBone, ptr %33, i64 0, i32 8, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !64
  %47 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 7, i64 2
  store float %46, ptr %47, align 4, !tbaa !64
  %48 = getelementptr inbounds %struct.EditBone, ptr %33, i64 0, i32 19
  %49 = load float, ptr %48, align 4, !tbaa !125
  %50 = getelementptr inbounds %struct.EditBone, ptr %7, i64 0, i32 18
  store float %49, ptr %50, align 8, !tbaa !126
  %51 = load i32, ptr %17, align 8, !tbaa !123
  %52 = and i32 %51, 256
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %101, label %54

54:                                               ; preds = %35
  %55 = getelementptr inbounds %struct.EditBone, ptr %28, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !120
  %57 = icmp eq ptr %56, null
  br i1 %57, label %101, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.EditBone, ptr %28, i64 0, i32 9
  %60 = load i32, ptr %59, align 4, !tbaa !124
  %61 = or i32 %60, 16
  store i32 %61, ptr %59, align 4, !tbaa !124
  %62 = getelementptr inbounds %struct.EditBone, ptr %28, i64 0, i32 7
  %63 = getelementptr inbounds %struct.EditBone, ptr %56, i64 0, i32 8
  %64 = load float, ptr %63, align 4, !tbaa !64
  store float %64, ptr %62, align 4, !tbaa !64
  %65 = getelementptr inbounds %struct.EditBone, ptr %56, i64 0, i32 8, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !64
  %67 = getelementptr inbounds %struct.EditBone, ptr %28, i64 0, i32 7, i64 1
  store float %66, ptr %67, align 4, !tbaa !64
  %68 = getelementptr inbounds %struct.EditBone, ptr %56, i64 0, i32 8, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !64
  %70 = getelementptr inbounds %struct.EditBone, ptr %28, i64 0, i32 7, i64 2
  store float %69, ptr %70, align 4, !tbaa !64
  %71 = getelementptr inbounds %struct.EditBone, ptr %56, i64 0, i32 19
  %72 = load float, ptr %71, align 4, !tbaa !125
  %73 = getelementptr inbounds %struct.EditBone, ptr %28, i64 0, i32 18
  store float %72, ptr %73, align 8, !tbaa !126
  br label %101

74:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %75 = call i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr noundef nonnull %3) #8
  %76 = load ptr, ptr %3, align 8, !tbaa !49
  %77 = icmp eq ptr %76, null
  br i1 %77, label %100, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  %80 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  br label %81

81:                                               ; preds = %78, %97
  %82 = phi ptr [ %76, %78 ], [ %98, %97 ]
  %83 = getelementptr inbounds %struct.CollectionPointerLink, ptr %82, i64 0, i32 2, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !50
  %85 = icmp ne ptr %84, %7
  %86 = icmp ne ptr %84, %28
  %87 = and i1 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.EditBone, ptr %84, i64 0, i32 9
  %90 = load i32, ptr %89, align 4, !tbaa !124
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = load ptr, ptr %79, align 8, !tbaa !47
  call fastcc void @bone_connect_to_new_parent(ptr noundef %94, ptr noundef %84, ptr noundef nonnull %7, i16 noundef signext %11)
  br label %97

95:                                               ; preds = %88
  %96 = load ptr, ptr %80, align 8, !tbaa !47
  call fastcc void @bone_connect_to_new_parent(ptr noundef %96, ptr noundef %84, ptr noundef %28, i16 noundef signext %11)
  br label %97

97:                                               ; preds = %93, %95, %81
  %98 = load ptr, ptr %82, align 8, !tbaa !49
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %81, !llvm.loop !127

100:                                              ; preds = %97, %74
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br label %101

101:                                              ; preds = %31, %58, %54, %35, %100
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %4) #8
  br label %102

102:                                              ; preds = %101, %13
  %103 = phi i32 [ 2, %13 ], [ 4, %101 ]
  ret i32 %103
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ARMATURE_OT_parent_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !77
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %2, align 8, !tbaa !80
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %3, align 8, !tbaa !81
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !118
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_parent_clear_exec, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %6, align 8, !tbaa !83
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !84
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !119
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef nonnull @prop_editarm_clear_parent_types, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !128
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_parent_clear_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.7) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %10 = call i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr noundef nonnull %3) #8
  %11 = load ptr, ptr %3, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %2
  %14 = icmp eq i32 %9, 1
  br label %15

15:                                               ; preds = %13, %28
  %16 = phi ptr [ %11, %13 ], [ %32, %28 ]
  %17 = getelementptr inbounds %struct.CollectionPointerLink, ptr %16, i64 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.EditBone, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !120
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.EditBone, ptr %20, i64 0, i32 9
  %24 = load i32, ptr %23, align 4, !tbaa !124
  %25 = and i32 %24, -5
  store i32 %25, ptr %23, align 4, !tbaa !124
  br label %26

26:                                               ; preds = %22, %15
  br i1 %14, label %27, label %28

27:                                               ; preds = %26
  store ptr null, ptr %19, align 8, !tbaa !120
  br label %28

28:                                               ; preds = %26, %27
  %29 = getelementptr inbounds %struct.EditBone, ptr %18, i64 0, i32 9
  %30 = load i32, ptr %29, align 4, !tbaa !124
  %31 = and i32 %30, -17
  store i32 %31, ptr %29, align 4, !tbaa !124
  %32 = load ptr, ptr %16, align 8, !tbaa !49
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %15, !llvm.loop !129

34:                                               ; preds = %28, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  %35 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  call void @ED_armature_sync_selection(ptr noundef %36) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %4) #8
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @joined_armature_fix_links_constraints(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  %7 = load ptr, ptr %4, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %76, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 4
  %11 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 5
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %2, i64 0, i32 4
  %13 = getelementptr inbounds %struct.EditBone, ptr %3, i64 0, i32 5
  br label %14

14:                                               ; preds = %9, %73
  %15 = phi ptr [ %7, %9 ], [ %74, %73 ]
  %16 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %49, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %16, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !107
  %21 = icmp eq ptr %20, null
  br i1 %21, label %49, label %22

22:                                               ; preds = %18
  %23 = call i32 %20(ptr noundef nonnull %15, ptr noundef nonnull %6) #8
  %24 = load ptr, ptr %6, align 8, !tbaa !49
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %22, %41
  %27 = phi ptr [ %42, %41 ], [ %24, %22 ]
  %28 = getelementptr inbounds %struct.bConstraintTarget, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !110
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.bConstraintTarget, ptr %27, i64 0, i32 3
  %33 = load i8, ptr %32, align 8, !tbaa !109
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store ptr %0, ptr %28, align 8, !tbaa !110
  br label %41

36:                                               ; preds = %31
  %37 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(1) %10) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  store ptr %0, ptr %28, align 8, !tbaa !110
  %40 = call ptr @BLI_strncpy(ptr noundef nonnull %32, ptr noundef nonnull %11, i64 noundef 64) #8
  br label %41

41:                                               ; preds = %26, %36, %39, %35
  %42 = load ptr, ptr %27, align 8, !tbaa !49
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %26, !llvm.loop !130

44:                                               ; preds = %41, %22
  %45 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %16, i64 0, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !113
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  call void %46(ptr noundef nonnull %15, ptr noundef nonnull %6, i8 noundef zeroext 0) #8
  br label %49

49:                                               ; preds = %44, %48, %18, %14
  %50 = getelementptr inbounds %struct.bConstraint, ptr %15, i64 0, i32 3
  %51 = load i16, ptr %50, align 8, !tbaa !131
  %52 = icmp eq i16 %51, 12
  br i1 %52, label %53, label %73

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.bConstraint, ptr %15, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !133
  %56 = getelementptr inbounds %struct.bActionConstraint, ptr %55, i64 0, i32 8
  %57 = load ptr, ptr %56, align 8, !tbaa !134
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.bAction, ptr %57, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !49
  %62 = icmp eq ptr %61, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %59, %70
  %64 = phi ptr [ %71, %70 ], [ %61, %59 ]
  %65 = getelementptr inbounds %struct.bActionChannel, ptr %64, i64 0, i32 6
  %66 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(1) %12) #9
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call ptr @BLI_strncpy(ptr noundef nonnull %65, ptr noundef nonnull %13, i64 noundef 64) #8
  br label %70

70:                                               ; preds = %63, %68
  %71 = load ptr, ptr %64, align 8, !tbaa !49
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %63, !llvm.loop !136

73:                                               ; preds = %70, %59, %53, %49
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  %74 = load ptr, ptr %15, align 8, !tbaa !49
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %14, !llvm.loop !137

76:                                               ; preds = %73, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #2

declare i32 @CTX_data_visible_bases(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_object_add_duplicate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @separate_armature_bones(ptr nocapture noundef readonly %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @ED_armature_to_edit(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = icmp eq ptr %7, null
  br i1 %8, label %58, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bArmature, ptr %4, i64 0, i32 4
  %11 = icmp eq i16 %1, 0
  br label %12

12:                                               ; preds = %9, %56
  %13 = phi ptr [ %7, %9 ], [ %14, %56 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !62
  %15 = load ptr, ptr %10, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %13, i64 0, i32 4
  %17 = tail call ptr @ED_armature_bone_find_name(ptr noundef %15, ptr noundef nonnull %16) #8
  %18 = getelementptr inbounds %struct.EditBone, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !124
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %11, label %23, label %22

22:                                               ; preds = %12
  br i1 %21, label %56, label %24

23:                                               ; preds = %12
  br i1 %21, label %24, label %56

24:                                               ; preds = %23, %22
  %25 = load ptr, ptr %10, align 8, !tbaa !47
  %26 = load ptr, ptr %25, align 8, !tbaa !49
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %24, %37
  %29 = phi ptr [ %38, %37 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.EditBone, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !120
  %32 = icmp eq ptr %31, %17
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.EditBone, ptr %29, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  %35 = load i32, ptr %34, align 4, !tbaa !124
  %36 = and i32 %35, -17
  store i32 %36, ptr %34, align 4, !tbaa !124
  br label %37

37:                                               ; preds = %28, %33
  %38 = load ptr, ptr %29, align 8, !tbaa !49
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %28, !llvm.loop !138

40:                                               ; preds = %37, %24
  %41 = load ptr, ptr %5, align 8, !tbaa !58
  %42 = load ptr, ptr %41, align 8, !tbaa !49
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %40, %50
  %45 = phi ptr [ %51, %50 ], [ %42, %40 ]
  %46 = getelementptr inbounds %struct.bPoseChannel, ptr %45, i64 0, i32 13
  %47 = load ptr, ptr %46, align 8, !tbaa !139
  %48 = icmp eq ptr %47, %13
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store ptr null, ptr %46, align 8, !tbaa !139
  br label %50

50:                                               ; preds = %44, %49
  %51 = load ptr, ptr %45, align 8, !tbaa !49
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %44, !llvm.loop !140

53:                                               ; preds = %50, %40
  tail call void @BKE_pose_channel_free(ptr noundef nonnull %13) #8
  %54 = load ptr, ptr %5, align 8, !tbaa !58
  tail call void @BKE_pose_channels_hash_free(ptr noundef %54) #8
  tail call void @bone_free(ptr noundef %4, ptr noundef %17) #8
  %55 = load ptr, ptr %5, align 8, !tbaa !58
  tail call void @BLI_freelinkN(ptr noundef %55, ptr noundef nonnull %13) #8
  br label %56

56:                                               ; preds = %22, %23, %53
  %57 = icmp eq ptr %14, null
  br i1 %57, label %58, label %12, !llvm.loop !141

58:                                               ; preds = %56, %2
  %59 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @ED_armature_from_edit(ptr noundef %59) #8
  %60 = load ptr, ptr %3, align 8, !tbaa !34
  tail call void @ED_armature_edit_free(ptr noundef %60) #8
  ret void
}

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BKE_pose_channel_free(ptr noundef) local_unnamed_addr #2

declare void @bone_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_bone(ptr noundef) local_unnamed_addr #2

declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_editable_bones(ptr noundef, ptr noundef) #2

declare void @uiItemEnumO(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_armature_bone_get_mirrored(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ctx_data_list_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bone_connect_to_new_parent(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %10 = load i32, ptr %9, align 4, !tbaa !124
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.EditBone, ptr %6, i64 0, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !124
  %16 = and i32 %15, -5
  store i32 %16, ptr %14, align 4, !tbaa !124
  br label %17

17:                                               ; preds = %13, %8, %4
  store ptr %2, ptr %5, align 8, !tbaa !120
  %18 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !120
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %17, %30
  %22 = phi ptr [ %31, %30 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !120
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  store ptr null, ptr %23, align 8, !tbaa !120
  %27 = getelementptr inbounds %struct.EditBone, ptr %22, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !124
  %29 = and i32 %28, -17
  store i32 %29, ptr %27, align 4, !tbaa !124
  br label %30

30:                                               ; preds = %21, %26
  %31 = load ptr, ptr %23, align 8, !tbaa !120
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %21, !llvm.loop !142

33:                                               ; preds = %30, %17
  %34 = icmp eq i16 %3, 1
  %35 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 9
  %36 = load i32, ptr %35, align 4, !tbaa !124
  br i1 %34, label %37, label %101

37:                                               ; preds = %33
  %38 = or i32 %36, 16
  store i32 %38, ptr %35, align 4, !tbaa !124
  %39 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 8
  %40 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 7
  %41 = load float, ptr %39, align 4, !tbaa !64
  %42 = load float, ptr %40, align 4, !tbaa !64
  %43 = fsub float %41, %42
  %44 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 8, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !64
  %46 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 7, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !64
  %48 = fsub float %45, %47
  %49 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 8, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !64
  %51 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 7, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !64
  %53 = fsub float %50, %52
  store float %41, ptr %40, align 4, !tbaa !64
  %54 = load float, ptr %44, align 4, !tbaa !64
  store float %54, ptr %46, align 4, !tbaa !64
  %55 = load float, ptr %49, align 4, !tbaa !64
  store float %55, ptr %51, align 4, !tbaa !64
  %56 = getelementptr inbounds %struct.EditBone, ptr %2, i64 0, i32 19
  %57 = load float, ptr %56, align 4, !tbaa !125
  %58 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 18
  store float %57, ptr %58, align 8, !tbaa !126
  %59 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 8
  %60 = load float, ptr %59, align 4, !tbaa !64
  %61 = fadd float %43, %60
  store float %61, ptr %59, align 4, !tbaa !64
  %62 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 8, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !64
  %64 = fadd float %48, %63
  store float %64, ptr %62, align 4, !tbaa !64
  %65 = getelementptr inbounds %struct.EditBone, ptr %1, i64 0, i32 8, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !64
  %67 = fadd float %53, %66
  store float %67, ptr %65, align 4, !tbaa !64
  %68 = load ptr, ptr %0, align 8, !tbaa !49
  %69 = icmp eq ptr %68, null
  br i1 %69, label %103, label %70

70:                                               ; preds = %37, %98
  %71 = phi ptr [ %99, %98 ], [ %68, %37 ]
  br label %72

72:                                               ; preds = %70, %77
  %73 = phi ptr [ %75, %77 ], [ %71, %70 ]
  %74 = getelementptr inbounds %struct.EditBone, ptr %73, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !120
  %76 = icmp eq ptr %75, null
  br i1 %76, label %98, label %77

77:                                               ; preds = %72
  %78 = icmp eq ptr %75, %1
  br i1 %78, label %79, label %72, !llvm.loop !143

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.EditBone, ptr %71, i64 0, i32 7
  %81 = load float, ptr %80, align 4, !tbaa !64
  %82 = fadd float %43, %81
  store float %82, ptr %80, align 4, !tbaa !64
  %83 = getelementptr inbounds %struct.EditBone, ptr %71, i64 0, i32 7, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !64
  %85 = fadd float %48, %84
  store float %85, ptr %83, align 4, !tbaa !64
  %86 = getelementptr inbounds %struct.EditBone, ptr %71, i64 0, i32 7, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !64
  %88 = fadd float %53, %87
  store float %88, ptr %86, align 4, !tbaa !64
  %89 = getelementptr inbounds %struct.EditBone, ptr %71, i64 0, i32 8
  %90 = load float, ptr %89, align 4, !tbaa !64
  %91 = fadd float %43, %90
  store float %91, ptr %89, align 4, !tbaa !64
  %92 = getelementptr inbounds %struct.EditBone, ptr %71, i64 0, i32 8, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !64
  %94 = fadd float %48, %93
  store float %94, ptr %92, align 4, !tbaa !64
  %95 = getelementptr inbounds %struct.EditBone, ptr %71, i64 0, i32 8, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !64
  %97 = fadd float %53, %96
  store float %97, ptr %95, align 4, !tbaa !64
  br label %98

98:                                               ; preds = %72, %79
  %99 = load ptr, ptr %71, align 8, !tbaa !49
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %70, !llvm.loop !144

101:                                              ; preds = %33
  %102 = and i32 %36, -17
  store i32 %102, ptr %35, align 4, !tbaa !124
  br label %103

103:                                              ; preds = %98, %37, %101
  ret void
}

declare void @ED_armature_sync_selection(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !37, i64 296}
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
!46 = !{!35, !40, i64 136}
!47 = !{!48, !37, i64 160}
!48 = !{!"bArmature", !36, i64 0, !37, i64 120, !43, i64 128, !43, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!49 = !{!37, !37, i64 0}
!50 = !{!51, !37, i64 32}
!51 = !{!"CollectionPointerLink", !37, i64 0, !37, i64 8, !52, i64 16}
!52 = !{!"PointerRNA", !53, i64 0, !37, i64 8, !37, i64 16}
!53 = !{!"", !37, i64 0}
!54 = !{!55, !37, i64 32}
!55 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!56 = !{!57, !37, i64 120}
!57 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!58 = !{!35, !37, i64 288}
!59 = !{!35, !41, i64 432}
!60 = !{!61, !37, i64 0}
!61 = !{!"bPose", !43, i64 0, !37, i64 16, !40, i64 24, !40, i64 26, !41, i64 28, !41, i64 32, !44, i64 36, !38, i64 40, !38, i64 52, !43, i64 64, !41, i64 80, !41, i64 84, !37, i64 88, !37, i64 96, !42, i64 104, !38, i64 152}
!62 = !{!63, !37, i64 0}
!63 = !{!"bPoseChannel", !37, i64 0, !37, i64 8, !37, i64 16, !43, i64 24, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !38, i64 112, !38, i64 113, !38, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !43, i64 144, !43, i64 160, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 212, !38, i64 224, !38, i64 236, !38, i64 252, !44, i64 264, !40, i64 268, !40, i64 270, !38, i64 272, !38, i64 336, !38, i64 400, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !44, i64 524, !44, i64 528, !44, i64 532, !37, i64 536}
!64 = !{!44, !44, i64 0}
!65 = !{!66, !44, i64 104}
!66 = !{!"EditBone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !44, i64 104, !38, i64 108, !38, i64 120, !41, i64 132, !41, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !40, i64 180}
!67 = !{!68, !37, i64 0}
!68 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !43, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!69 = distinct !{!69, !70, !71}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!35, !37, i64 216}
!73 = !{!35, !40, i64 138}
!74 = distinct !{!74, !70, !71}
!75 = distinct !{!75, !70, !71}
!76 = distinct !{!76, !70, !71}
!77 = !{!78, !37, i64 0}
!78 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !79, i64 152, !40, i64 184}
!79 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!80 = !{!78, !37, i64 8}
!81 = !{!78, !37, i64 24}
!82 = !{!78, !37, i64 32}
!83 = !{!78, !37, i64 72}
!84 = !{!78, !40, i64 184}
!85 = !{!55, !41, i64 24}
!86 = distinct !{!86, !70, !71}
!87 = !{!88, !37, i64 168}
!88 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !89, i64 280, !98, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !99, i64 4400, !100, i64 4416, !103, i64 4600, !37, i64 4608, !104, i64 4616, !37, i64 4640, !45, i64 4648, !45, i64 4656, !91, i64 4664, !92, i64 4824, !105, i64 4888, !37, i64 4952}
!89 = !{!"RenderData", !90, i64 0, !37, i64 248, !37, i64 256, !93, i64 264, !94, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !95, i64 544, !95, i64 560, !96, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !97, i64 2616, !41, i64 3976, !41, i64 3980}
!90 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !91, i64 24, !92, i64 184}
!91 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!92 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!93 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!94 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!95 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!96 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!97 = !{!"BakeData", !90, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!98 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!99 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!100 = !{!"GameData", !99, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !101, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !102, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!101 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!102 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!103 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!104 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!105 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!106 = distinct !{!106, !70, !71}
!107 = !{!108, !37, i64 104}
!108 = !{!"bConstraintTypeInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 36, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128}
!109 = !{!38, !38, i64 0}
!110 = !{!111, !37, i64 16}
!111 = !{!"bConstraintTarget", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158}
!112 = distinct !{!112, !70, !71}
!113 = !{!108, !37, i64 112}
!114 = distinct !{!114, !70, !71}
!115 = distinct !{!115, !70, !71}
!116 = distinct !{!116, !70, !71}
!117 = distinct !{!117, !70, !71}
!118 = !{!78, !37, i64 48}
!119 = !{!78, !37, i64 88}
!120 = !{!66, !37, i64 24}
!121 = distinct !{!121, !70, !71}
!122 = !{!57, !37, i64 112}
!123 = !{!48, !41, i64 192}
!124 = !{!66, !41, i64 132}
!125 = !{!66, !44, i64 172}
!126 = !{!66, !44, i64 168}
!127 = distinct !{!127, !70, !71}
!128 = !{!78, !37, i64 104}
!129 = distinct !{!129, !70, !71}
!130 = distinct !{!130, !70, !71}
!131 = !{!132, !40, i64 24}
!132 = !{!"bConstraint", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 26, !38, i64 28, !38, i64 29, !38, i64 30, !40, i64 94, !44, i64 96, !44, i64 100, !37, i64 104, !44, i64 112, !44, i64 116}
!133 = !{!132, !37, i64 16}
!134 = !{!135, !37, i64 32}
!135 = !{!"bActionConstraint", !37, i64 0, !40, i64 8, !40, i64 10, !41, i64 12, !41, i64 16, !44, i64 20, !44, i64 24, !41, i64 28, !37, i64 32, !38, i64 40}
!136 = distinct !{!136, !70, !71}
!137 = distinct !{!137, !70, !71}
!138 = distinct !{!138, !70, !71}
!139 = !{!63, !37, i64 128}
!140 = distinct !{!140, !70, !71}
!141 = distinct !{!141, !70, !71}
!142 = distinct !{!142, !70, !71}
!143 = distinct !{!143, !70, !71}
!144 = distinct !{!144, !70, !71}
