; ModuleID = 'blender/source/blender/editors/space_buttons/buttons_texture.c'
source_filename = "blender/source/blender/editors/space_buttons/buttons_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
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
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.SpaceButs = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, i16, i16, i16, i16, i16, i16, i16, i16, i8, [7 x i8], ptr, i32, i32, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ButsTextureUser = type { ptr, ptr, ptr, %struct.PointerRNA, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.ButsContextTexture = type { %struct.ListBase, ptr, ptr, i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.uiBut = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, [128 x i8], [400 x i8], %struct.rctf, ptr, float, float, float, float, float, float, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i16], ptr, ptr, i32, i8, i8, i8, i8, i8, i16, i16, ptr, ptr, %struct.PointerRNA, ptr, i32, %struct.PointerRNA, ptr, ptr, ptr, i16, i8, i8, ptr, ptr, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uiBlock = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, [128 x i8], [4 x [4 x float]], %struct.rctf, float, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, i8, [7 x i8], double, ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.rctf, %struct.ListBase, ptr, ptr, ptr, ptr, [3 x float], i8, [64 x i8], %struct.PieMenuData }
%struct.PieMenuData = type { [2 x float], [2 x float], [2 x float], [2 x float], double, i32, i32, float }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"ButsContextTexture\00", align 1
@RNA_Texture = external global %struct.StructRNA, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"No textures in context\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Show texture in texture tab\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Lamp\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Line Style\00", align 1
@RNA_ParticleSettingsTextureSlot = external global %struct.StructRNA, align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"texture\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Particles\00", align 1
@RNA_ParticleSettings = external global %struct.StructRNA, align 1
@RNA_FieldSettings = external global %struct.StructRNA, align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Fields\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Texture Field\00", align 1
@RNA_BrushTextureSlot = external global %struct.StructRNA, align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Brush\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Brush Mask\00", align 1
@RNA_Node = external global %struct.StructRNA, align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"ButsTextureUser\00", align 1
@RNA_Modifier = external global %struct.StructRNA, align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Modifiers\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"  %s - %s\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_texture_context_check_world(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp ne ptr %6, null
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_texture_context_check_material(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 31
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_texture_context_check_lamp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !65
  %7 = icmp eq i16 %6, 10
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_texture_context_check_particles(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 109
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp ne ptr %6, null
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @ED_texture_context_check_linestyle(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  ret i8 0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_texture_context_check_others(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 110
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.PartDeflect, ptr %7, i64 0, i32 2
  %11 = load i16, ptr %10, align 2, !tbaa !68
  %12 = icmp eq i16 %11, 6
  br i1 %12, label %21, label %13

13:                                               ; preds = %9, %5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1, !tbaa !70
  call void @modifiers_foreachTexLink(ptr noundef nonnull %3, ptr noundef nonnull @texture_context_check_modifier_foreach, ptr noundef nonnull %2) #8
  %14 = load i8, ptr %2, align 1, !tbaa !70
  %15 = icmp eq i8 %14, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  br i1 %15, label %16, label %21

16:                                               ; preds = %13, %1
  %17 = call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #8
  %18 = call ptr @BKE_paint_brush(ptr noundef %17) #8
  %19 = icmp ne ptr %18, null
  %20 = zext i1 %19 to i8
  br label %21

21:                                               ; preds = %16, %9, %13
  %22 = phi i8 [ 1, %13 ], [ 1, %9 ], [ %20, %16 ]
  ret i8 %22
}

declare void @modifiers_foreachTexLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @texture_context_check_modifier_foreach(ptr nocapture noundef writeonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #4 {
  store i8 1, ptr %0, align 1, !tbaa !70
  ret void
}

declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @buttons_texture_context_compute(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca %struct.PointerRNA, align 8
  %12 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %15 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !74
  %17 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %18 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %17) #8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %170

20:                                               ; preds = %2
  %21 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.Scene, ptr %21, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp ne ptr %25, null
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi i1 [ false, %20 ], [ %26, %23 ]
  %29 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 31
  %33 = load i32, ptr %32, align 8, !tbaa !62
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i8
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi i8 [ 0, %27 ], [ %35, %31 ]
  %38 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.Object, ptr %38, i64 0, i32 3
  %42 = load i16, ptr %41, align 8, !tbaa !65
  %43 = icmp eq i16 %42, 10
  %44 = zext i1 %43 to i8
  br label %45

45:                                               ; preds = %40, %36
  %46 = phi i8 [ 0, %36 ], [ %44, %40 ]
  %47 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.Object, ptr %47, i64 0, i32 109
  %51 = load ptr, ptr %50, align 8, !tbaa !66
  %52 = icmp ne ptr %51, null
  %53 = zext i1 %52 to i8
  br label %54

54:                                               ; preds = %49, %45
  %55 = phi i8 [ 0, %45 ], [ %53, %49 ]
  %56 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.Object, ptr %56, i64 0, i32 110
  %60 = load ptr, ptr %59, align 8, !tbaa !67
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.PartDeflect, ptr %60, i64 0, i32 2
  %64 = load i16, ptr %63, align 2, !tbaa !68
  %65 = icmp eq i16 %64, 6
  br i1 %65, label %74, label %66

66:                                               ; preds = %62, %58
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !tbaa !70
  call void @modifiers_foreachTexLink(ptr noundef nonnull %56, ptr noundef nonnull @texture_context_check_modifier_foreach, ptr noundef nonnull %3) #8
  %67 = load i8, ptr %3, align 1, !tbaa !70
  %68 = icmp eq i8 %67, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br i1 %68, label %69, label %74

69:                                               ; preds = %66, %54
  %70 = call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #8
  %71 = call ptr @BKE_paint_brush(ptr noundef %70) #8
  %72 = icmp ne ptr %71, null
  %73 = zext i1 %72 to i8
  br label %74

74:                                               ; preds = %62, %66, %69
  %75 = phi i8 [ 1, %66 ], [ 1, %62 ], [ %73, %69 ]
  %76 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 7
  %77 = load i16, ptr %76, align 8, !tbaa !75
  %78 = icmp eq i16 %77, 2
  %79 = select i1 %78, i1 %28, i1 false
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 14
  store i16 1, ptr %81, align 2, !tbaa !76
  %82 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 13
  store i16 1, ptr %82, align 4, !tbaa !77
  br label %170

83:                                               ; preds = %74
  %84 = icmp eq i16 %77, 5
  %85 = icmp ne i8 %37, 0
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 14
  store i16 0, ptr %88, align 2, !tbaa !76
  %89 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 13
  store i16 0, ptr %89, align 4, !tbaa !77
  br label %170

90:                                               ; preds = %83
  %91 = icmp eq i16 %77, 4
  %92 = icmp ne i8 %46, 0
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 14
  store i16 2, ptr %95, align 2, !tbaa !76
  %96 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 13
  store i16 2, ptr %96, align 4, !tbaa !77
  br label %170

97:                                               ; preds = %90
  %98 = icmp eq i16 %77, 7
  %99 = icmp ne i8 %55, 0
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 14
  store i16 3, ptr %102, align 2, !tbaa !76
  %103 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 13
  store i16 3, ptr %103, align 4, !tbaa !77
  br label %170

104:                                              ; preds = %97
  %105 = icmp eq i16 %77, 10
  br i1 %105, label %110, label %106

106:                                              ; preds = %104
  %107 = icmp eq i16 %77, 8
  %108 = icmp ne i8 %75, 0
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %112, label %115

110:                                              ; preds = %104
  %111 = icmp eq i8 %75, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %110, %106
  %113 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 14
  store i16 4, ptr %113, align 2, !tbaa !76
  %114 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 13
  store i16 4, ptr %114, align 4, !tbaa !77
  br label %170

115:                                              ; preds = %110, %106
  %116 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 14
  %117 = load i16, ptr %116, align 2, !tbaa !76
  %118 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 13
  %119 = load i16, ptr %118, align 4, !tbaa !77
  %120 = icmp eq i16 %117, %119
  br i1 %120, label %138, label %121

121:                                              ; preds = %115
  %122 = icmp eq i16 %117, 1
  %123 = select i1 %122, i1 %28, i1 false
  %124 = icmp eq i16 %117, 0
  %125 = select i1 %124, i1 %85, i1 false
  %126 = select i1 %123, i1 true, i1 %125
  %127 = icmp eq i16 %117, 2
  %128 = select i1 %127, i1 %92, i1 false
  %129 = select i1 %126, i1 true, i1 %128
  %130 = icmp eq i16 %117, 3
  %131 = select i1 %130, i1 %99, i1 false
  %132 = select i1 %129, i1 true, i1 %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %121
  %134 = icmp eq i16 %117, 4
  %135 = icmp ne i8 %75, 0
  %136 = select i1 %134, i1 %135, i1 false
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %121
  store i16 %117, ptr %118, align 4, !tbaa !77
  br label %170

138:                                              ; preds = %133, %115
  %139 = icmp ne i16 %119, 1
  %140 = select i1 %139, i1 true, i1 %28
  %141 = icmp ne i16 %119, 0
  %142 = select i1 %141, i1 true, i1 %85
  %143 = select i1 %140, i1 %142, i1 false
  %144 = icmp ne i16 %119, 2
  %145 = select i1 %144, i1 true, i1 %92
  %146 = select i1 %143, i1 %145, i1 false
  br i1 %146, label %147, label %156

147:                                              ; preds = %138
  %148 = icmp ne i16 %119, 3
  %149 = select i1 %148, i1 true, i1 %99
  %150 = icmp ne i16 %119, 5
  %151 = and i1 %150, %149
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = icmp ne i16 %119, 4
  %154 = icmp ne i8 %75, 0
  %155 = select i1 %153, i1 true, i1 %154
  br i1 %155, label %170, label %156

156:                                              ; preds = %152, %147, %138
  store i16 %119, ptr %116, align 2, !tbaa !76
  %157 = icmp eq i8 %37, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %156
  store i16 0, ptr %118, align 4, !tbaa !77
  br label %170

159:                                              ; preds = %156
  %160 = icmp eq i8 %46, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %159
  store i16 2, ptr %118, align 4, !tbaa !77
  br label %170

162:                                              ; preds = %159
  %163 = icmp eq i8 %55, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %162
  store i16 3, ptr %118, align 4, !tbaa !77
  br label %170

165:                                              ; preds = %162
  br i1 %28, label %166, label %167

166:                                              ; preds = %165
  store i16 1, ptr %118, align 4, !tbaa !77
  br label %170

167:                                              ; preds = %165
  %168 = icmp eq i8 %75, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %167
  store i16 4, ptr %118, align 4, !tbaa !77
  br label %170

170:                                              ; preds = %2, %80, %87, %94, %101, %112, %137, %152, %158, %161, %164, %166, %167, %169
  %171 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 13
  %172 = load i16, ptr %171, align 4, !tbaa !77
  %173 = icmp eq i16 %172, 4
  br i1 %173, label %181, label %174

174:                                              ; preds = %170
  %175 = call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %14) #8
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = icmp eq ptr %13, null
  br i1 %178, label %432, label %179

179:                                              ; preds = %177
  call void @BLI_freelistN(ptr noundef nonnull %13) #8
  %180 = load ptr, ptr @MEM_freeN, align 8, !tbaa !78
  call void %180(ptr noundef nonnull %13) #8
  store ptr null, ptr %12, align 8, !tbaa !71
  br label %432

181:                                              ; preds = %174, %170
  %182 = icmp eq ptr %13, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %181
  %184 = load ptr, ptr @MEM_callocN, align 8, !tbaa !78
  %185 = call ptr %184(i64 noundef 40, ptr noundef nonnull @.str) #8
  store ptr %185, ptr %12, align 8, !tbaa !71
  br label %187

186:                                              ; preds = %181
  call void @BLI_freelistN(ptr noundef nonnull %13) #8
  br label %187

187:                                              ; preds = %186, %183
  %188 = phi ptr [ %13, %186 ], [ %185, %183 ]
  %189 = load ptr, ptr %15, align 8, !tbaa !74
  %190 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 15
  %191 = load i8, ptr %190, align 8, !tbaa !79
  %192 = icmp ne ptr %189, null
  br i1 %192, label %193, label %203

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.ID, ptr %189, i64 0, i32 4
  %195 = load i16, ptr %194, align 8, !tbaa !80
  switch i16 %195, label %202 [
    i16 17235, label %203
    i16 16975, label %196
    i16 16716, label %197
    i16 20311, label %198
    i16 16717, label %199
    i16 21058, label %200
    i16 21324, label %201
  ]

196:                                              ; preds = %193
  br label %203

197:                                              ; preds = %193
  br label %203

198:                                              ; preds = %193
  br label %203

199:                                              ; preds = %193
  br label %203

200:                                              ; preds = %193
  br label %203

201:                                              ; preds = %193
  br label %203

202:                                              ; preds = %193
  br label %203

203:                                              ; preds = %202, %201, %200, %199, %198, %197, %196, %193, %187
  %204 = phi ptr [ null, %196 ], [ null, %197 ], [ null, %198 ], [ null, %199 ], [ %189, %200 ], [ null, %201 ], [ null, %187 ], [ null, %193 ], [ null, %202 ]
  %205 = phi ptr [ null, %196 ], [ null, %197 ], [ null, %198 ], [ null, %199 ], [ null, %200 ], [ %189, %201 ], [ null, %187 ], [ null, %193 ], [ null, %202 ]
  %206 = phi ptr [ null, %196 ], [ null, %197 ], [ %189, %198 ], [ null, %199 ], [ null, %200 ], [ null, %201 ], [ null, %187 ], [ null, %193 ], [ null, %202 ]
  %207 = phi ptr [ null, %196 ], [ %189, %197 ], [ null, %198 ], [ null, %199 ], [ null, %200 ], [ null, %201 ], [ null, %187 ], [ null, %193 ], [ null, %202 ]
  %208 = phi ptr [ null, %196 ], [ null, %197 ], [ null, %198 ], [ %189, %199 ], [ null, %200 ], [ null, %201 ], [ null, %187 ], [ null, %193 ], [ null, %202 ]
  %209 = phi ptr [ %189, %196 ], [ null, %197 ], [ null, %198 ], [ null, %199 ], [ null, %200 ], [ null, %201 ], [ null, %187 ], [ null, %193 ], [ null, %202 ]
  %210 = phi ptr [ null, %196 ], [ null, %197 ], [ null, %198 ], [ null, %199 ], [ null, %200 ], [ null, %201 ], [ null, %187 ], [ %189, %193 ], [ null, %202 ]
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %214

212:                                              ; preds = %203
  %213 = call ptr @CTX_data_scene(ptr noundef %0) #8
  br label %214

214:                                              ; preds = %212, %203
  %215 = phi ptr [ %210, %203 ], [ %213, %212 ]
  %216 = icmp eq ptr %215, null
  %217 = select i1 %192, i1 true, i1 %216
  br i1 %217, label %232, label %218

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.Scene, ptr %215, i64 0, i32 6
  %220 = load ptr, ptr %219, align 8, !tbaa !81
  %221 = icmp eq ptr %220, null
  br i1 %221, label %225, label %222

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.Base, ptr %220, i64 0, i32 7
  %224 = load ptr, ptr %223, align 8, !tbaa !82
  br label %225

225:                                              ; preds = %222, %218
  %226 = phi ptr [ %224, %222 ], [ null, %218 ]
  %227 = getelementptr inbounds %struct.Scene, ptr %215, i64 0, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !34
  %229 = call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #8
  %230 = call ptr @BKE_paint_brush(ptr noundef %229) #8
  %231 = call ptr @BKE_linestyle_active_from_scene(ptr noundef nonnull %215) #8
  br label %232

232:                                              ; preds = %225, %214
  %233 = phi ptr [ %204, %214 ], [ %230, %225 ]
  %234 = phi ptr [ %205, %214 ], [ %231, %225 ]
  %235 = phi ptr [ %206, %214 ], [ %228, %225 ]
  %236 = phi ptr [ %209, %214 ], [ %226, %225 ]
  %237 = icmp eq ptr %236, null
  br i1 %237, label %247, label %238

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.Object, ptr %236, i64 0, i32 3
  %240 = load i16, ptr %239, align 8, !tbaa !65
  %241 = icmp ne i16 %240, 10
  %242 = icmp ne ptr %207, null
  %243 = or i1 %242, %241
  br i1 %243, label %247, label %244

244:                                              ; preds = %238
  %245 = getelementptr inbounds %struct.Object, ptr %236, i64 0, i32 19
  %246 = load ptr, ptr %245, align 8, !tbaa !84
  br label %247

247:                                              ; preds = %244, %238, %232
  %248 = phi ptr [ %207, %238 ], [ %246, %244 ], [ %207, %232 ]
  %249 = icmp ne ptr %208, null
  %250 = or i1 %249, %237
  br i1 %250, label %256, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.Object, ptr %236, i64 0, i32 32
  %253 = load i32, ptr %252, align 4, !tbaa !85
  %254 = trunc i32 %253 to i16
  %255 = call ptr @give_current_material(ptr noundef %236, i16 noundef signext %254) #8
  br label %256

256:                                              ; preds = %251, %247
  %257 = phi ptr [ %208, %247 ], [ %255, %251 ]
  %258 = icmp eq ptr %257, null
  %259 = and i8 %191, 8
  %260 = icmp ne i8 %259, 0
  %261 = select i1 %258, i1 true, i1 %260
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %188, i8 0, i64 16, i1 false)
  br i1 %261, label %265, label %262

262:                                              ; preds = %256
  %263 = getelementptr inbounds %struct.Material, ptr %257, i64 0, i32 103
  %264 = load ptr, ptr %263, align 8, !tbaa !86
  call fastcc void @buttons_texture_users_find_nodetree(ptr noundef nonnull %188, ptr noundef %257, ptr noundef %264, ptr noundef nonnull @.str.4)
  br label %265

265:                                              ; preds = %262, %256
  %266 = icmp eq ptr %248, null
  %267 = select i1 %266, i1 true, i1 %260
  br i1 %267, label %271, label %268

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.Lamp, ptr %248, i64 0, i32 74
  %270 = load ptr, ptr %269, align 8, !tbaa !90
  call fastcc void @buttons_texture_users_find_nodetree(ptr noundef nonnull %188, ptr noundef %248, ptr noundef %270, ptr noundef nonnull @.str.5)
  br label %271

271:                                              ; preds = %268, %265
  %272 = icmp eq ptr %235, null
  %273 = select i1 %272, i1 true, i1 %260
  br i1 %273, label %277, label %274

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.World, ptr %235, i64 0, i32 75
  %276 = load ptr, ptr %275, align 8, !tbaa !92
  call fastcc void @buttons_texture_users_find_nodetree(ptr noundef nonnull %188, ptr noundef %235, ptr noundef %276, ptr noundef nonnull @.str.6)
  br label %277

277:                                              ; preds = %274, %271
  %278 = icmp eq ptr %234, null
  %279 = select i1 %278, i1 true, i1 %260
  br i1 %279, label %283, label %280

280:                                              ; preds = %277
  %281 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %234, i64 0, i32 40
  %282 = load ptr, ptr %281, align 8, !tbaa !94
  call fastcc void @buttons_texture_users_find_nodetree(ptr noundef nonnull %188, ptr noundef %234, ptr noundef %282, ptr noundef nonnull @.str.7)
  br label %283

283:                                              ; preds = %280, %277
  br i1 %237, label %335, label %284

284:                                              ; preds = %283
  %285 = call ptr @psys_get_current(ptr noundef nonnull %236) #8
  call void @modifiers_foreachTexLink(ptr noundef nonnull %236, ptr noundef nonnull @buttons_texture_modifier_foreach, ptr noundef nonnull %188) #8
  %286 = icmp eq ptr %285, null
  %287 = select i1 %286, i1 true, i1 %260
  br i1 %287, label %315, label %288

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.ParticleSystem, ptr %285, i64 0, i32 2
  %290 = getelementptr inbounds %struct.ParticleSystem, ptr %285, i64 0, i32 18
  br label %291

291:                                              ; preds = %288, %312
  %292 = phi i64 [ 0, %288 ], [ %313, %312 ]
  %293 = load ptr, ptr %289, align 8, !tbaa !96
  %294 = getelementptr inbounds %struct.ParticleSettings, ptr %293, i64 0, i32 121, i64 %292
  %295 = load ptr, ptr %294, align 8, !tbaa !78
  %296 = icmp eq ptr %295, null
  br i1 %296, label %312, label %297

297:                                              ; preds = %291
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #8
  %298 = load ptr, ptr %289, align 8, !tbaa !96
  call void @RNA_pointer_create(ptr noundef %298, ptr noundef nonnull @RNA_ParticleSettingsTextureSlot, ptr noundef nonnull %295, ptr noundef nonnull %8) #8
  %299 = call ptr @RNA_struct_find_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.8) #8
  %300 = load ptr, ptr %289, align 8, !tbaa !96
  %301 = call i32 @RNA_struct_ui_icon(ptr noundef nonnull @RNA_ParticleSettings) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %302 = load ptr, ptr @MEM_callocN, align 8, !tbaa !78
  %303 = call ptr %302(i64 noundef 104, ptr noundef nonnull @.str.14) #8
  %304 = getelementptr inbounds %struct.ButsTextureUser, ptr %303, i64 0, i32 2
  store ptr %300, ptr %304, align 8, !tbaa !98
  %305 = getelementptr inbounds %struct.ButsTextureUser, ptr %303, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %305, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !102
  %306 = getelementptr inbounds %struct.ButsTextureUser, ptr %303, i64 0, i32 4
  store ptr %299, ptr %306, align 8, !tbaa !103
  %307 = getelementptr inbounds %struct.ButsTextureUser, ptr %303, i64 0, i32 7
  store ptr @.str.9, ptr %307, align 8, !tbaa !104
  %308 = getelementptr inbounds %struct.ButsTextureUser, ptr %303, i64 0, i32 8
  store i32 %301, ptr %308, align 8, !tbaa !105
  %309 = getelementptr inbounds %struct.ButsTextureUser, ptr %303, i64 0, i32 9
  store ptr %290, ptr %309, align 8, !tbaa !106
  %310 = call i32 @BLI_countlist(ptr noundef nonnull %188) #8
  %311 = getelementptr inbounds %struct.ButsTextureUser, ptr %303, i64 0, i32 10
  store i32 %310, ptr %311, align 8, !tbaa !107
  call void @BLI_addtail(ptr noundef nonnull %188, ptr noundef %303) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8
  br label %312

312:                                              ; preds = %297, %291
  %313 = add nuw nsw i64 %292, 1
  %314 = icmp eq i64 %313, 18
  br i1 %314, label %315, label %291, !llvm.loop !108

315:                                              ; preds = %312, %284
  %316 = getelementptr inbounds %struct.Object, ptr %236, i64 0, i32 110
  %317 = load ptr, ptr %316, align 8, !tbaa !67
  %318 = icmp eq ptr %317, null
  br i1 %318, label %335, label %319

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.PartDeflect, ptr %317, i64 0, i32 2
  %321 = load i16, ptr %320, align 2, !tbaa !68
  %322 = icmp eq i16 %321, 6
  br i1 %322, label %323, label %335

323:                                              ; preds = %319
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #8
  call void @RNA_pointer_create(ptr noundef nonnull %236, ptr noundef nonnull @RNA_FieldSettings, ptr noundef nonnull %317, ptr noundef nonnull %9) #8
  %324 = call ptr @RNA_struct_find_property(ptr noundef nonnull %9, ptr noundef nonnull @.str.8) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %325 = load ptr, ptr @MEM_callocN, align 8, !tbaa !78
  %326 = call ptr %325(i64 noundef 104, ptr noundef nonnull @.str.14) #8
  %327 = getelementptr inbounds %struct.ButsTextureUser, ptr %326, i64 0, i32 2
  store ptr %236, ptr %327, align 8, !tbaa !98
  %328 = getelementptr inbounds %struct.ButsTextureUser, ptr %326, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %328, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !102
  %329 = getelementptr inbounds %struct.ButsTextureUser, ptr %326, i64 0, i32 4
  store ptr %324, ptr %329, align 8, !tbaa !103
  %330 = getelementptr inbounds %struct.ButsTextureUser, ptr %326, i64 0, i32 7
  store ptr @.str.10, ptr %330, align 8, !tbaa !104
  %331 = getelementptr inbounds %struct.ButsTextureUser, ptr %326, i64 0, i32 8
  store i32 345, ptr %331, align 8, !tbaa !105
  %332 = getelementptr inbounds %struct.ButsTextureUser, ptr %326, i64 0, i32 9
  store ptr @.str.11, ptr %332, align 8, !tbaa !106
  %333 = call i32 @BLI_countlist(ptr noundef nonnull %188) #8
  %334 = getelementptr inbounds %struct.ButsTextureUser, ptr %326, i64 0, i32 10
  store i32 %333, ptr %334, align 8, !tbaa !107
  call void @BLI_addtail(ptr noundef nonnull %188, ptr noundef %326) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #8
  br label %335

335:                                              ; preds = %323, %319, %315, %283
  %336 = icmp eq ptr %233, null
  br i1 %336, label %362, label %337

337:                                              ; preds = %335
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #8
  %338 = getelementptr inbounds %struct.Brush, ptr %233, i64 0, i32 3
  call void @RNA_pointer_create(ptr noundef nonnull %233, ptr noundef nonnull @RNA_BrushTextureSlot, ptr noundef nonnull %338, ptr noundef nonnull %10) #8
  %339 = call ptr @RNA_struct_find_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.8) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %340 = load ptr, ptr @MEM_callocN, align 8, !tbaa !78
  %341 = call ptr %340(i64 noundef 104, ptr noundef nonnull @.str.14) #8
  %342 = getelementptr inbounds %struct.ButsTextureUser, ptr %341, i64 0, i32 2
  store ptr %233, ptr %342, align 8, !tbaa !98
  %343 = getelementptr inbounds %struct.ButsTextureUser, ptr %341, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %343, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !102
  %344 = getelementptr inbounds %struct.ButsTextureUser, ptr %341, i64 0, i32 4
  store ptr %339, ptr %344, align 8, !tbaa !103
  %345 = getelementptr inbounds %struct.ButsTextureUser, ptr %341, i64 0, i32 7
  store ptr @.str.12, ptr %345, align 8, !tbaa !104
  %346 = getelementptr inbounds %struct.ButsTextureUser, ptr %341, i64 0, i32 8
  store i32 182, ptr %346, align 8, !tbaa !105
  %347 = getelementptr inbounds %struct.ButsTextureUser, ptr %341, i64 0, i32 9
  store ptr @.str.12, ptr %347, align 8, !tbaa !106
  %348 = call i32 @BLI_countlist(ptr noundef nonnull %188) #8
  %349 = getelementptr inbounds %struct.ButsTextureUser, ptr %341, i64 0, i32 10
  store i32 %348, ptr %349, align 8, !tbaa !107
  call void @BLI_addtail(ptr noundef nonnull %188, ptr noundef %341) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5)
  %350 = getelementptr inbounds %struct.Brush, ptr %233, i64 0, i32 4
  call void @RNA_pointer_create(ptr noundef nonnull %233, ptr noundef nonnull @RNA_BrushTextureSlot, ptr noundef nonnull %350, ptr noundef nonnull %10) #8
  %351 = call ptr @RNA_struct_find_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.8) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %352 = load ptr, ptr @MEM_callocN, align 8, !tbaa !78
  %353 = call ptr %352(i64 noundef 104, ptr noundef nonnull @.str.14) #8
  %354 = getelementptr inbounds %struct.ButsTextureUser, ptr %353, i64 0, i32 2
  store ptr %233, ptr %354, align 8, !tbaa !98
  %355 = getelementptr inbounds %struct.ButsTextureUser, ptr %353, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %355, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !102
  %356 = getelementptr inbounds %struct.ButsTextureUser, ptr %353, i64 0, i32 4
  store ptr %351, ptr %356, align 8, !tbaa !103
  %357 = getelementptr inbounds %struct.ButsTextureUser, ptr %353, i64 0, i32 7
  store ptr @.str.12, ptr %357, align 8, !tbaa !104
  %358 = getelementptr inbounds %struct.ButsTextureUser, ptr %353, i64 0, i32 8
  store i32 182, ptr %358, align 8, !tbaa !105
  %359 = getelementptr inbounds %struct.ButsTextureUser, ptr %353, i64 0, i32 9
  store ptr @.str.13, ptr %359, align 8, !tbaa !106
  %360 = call i32 @BLI_countlist(ptr noundef nonnull %188) #8
  %361 = getelementptr inbounds %struct.ButsTextureUser, ptr %353, i64 0, i32 10
  store i32 %360, ptr %361, align 8, !tbaa !107
  call void @BLI_addtail(ptr noundef nonnull %188, ptr noundef %353) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #8
  br label %362

362:                                              ; preds = %335, %337
  %363 = icmp eq ptr %16, null
  br i1 %363, label %371, label %364

364:                                              ; preds = %362
  %365 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 4
  %366 = load i16, ptr %365, align 8, !tbaa !80
  %367 = icmp eq i16 %366, 17748
  br i1 %367, label %368, label %371

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.ButsContextTexture, ptr %188, i64 0, i32 2
  store ptr null, ptr %369, align 8, !tbaa !111
  %370 = getelementptr inbounds %struct.ButsContextTexture, ptr %188, i64 0, i32 1
  store ptr %16, ptr %370, align 8, !tbaa !113
  br label %432

371:                                              ; preds = %364, %362
  %372 = getelementptr inbounds %struct.ButsContextTexture, ptr %188, i64 0, i32 3
  %373 = load i32, ptr %372, align 8, !tbaa !114
  %374 = call i32 @BLI_countlist(ptr noundef nonnull %188) #8
  %375 = icmp slt i32 %373, %374
  br i1 %375, label %377, label %376

376:                                              ; preds = %371
  store i32 0, ptr %372, align 8, !tbaa !114
  br label %377

377:                                              ; preds = %376, %371
  %378 = load i32, ptr %372, align 8, !tbaa !114
  %379 = call ptr @BLI_findlink(ptr noundef nonnull %188, i32 noundef %378) #8
  %380 = getelementptr inbounds %struct.ButsContextTexture, ptr %188, i64 0, i32 2
  store ptr %379, ptr %380, align 8, !tbaa !111
  %381 = getelementptr inbounds %struct.ButsContextTexture, ptr %188, i64 0, i32 1
  store ptr null, ptr %381, align 8, !tbaa !113
  %382 = icmp eq ptr %379, null
  br i1 %382, label %432, label %383

383:                                              ; preds = %377
  %384 = getelementptr inbounds %struct.ButsTextureUser, ptr %379, i64 0, i32 3, i32 2
  %385 = load ptr, ptr %384, align 8, !tbaa !115
  %386 = icmp eq ptr %385, null
  br i1 %386, label %398, label %387

387:                                              ; preds = %383
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #8
  %388 = getelementptr inbounds %struct.ButsTextureUser, ptr %379, i64 0, i32 3
  %389 = getelementptr inbounds %struct.ButsTextureUser, ptr %379, i64 0, i32 4
  %390 = load ptr, ptr %389, align 8, !tbaa !103
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %11, ptr noundef nonnull %388, ptr noundef %390) #8
  %391 = getelementptr inbounds i8, ptr %11, i64 8
  %392 = load ptr, ptr %391, align 8, !tbaa.struct !116
  %393 = getelementptr inbounds i8, ptr %11, i64 16
  %394 = load ptr, ptr %393, align 8, !tbaa.struct !117
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #8
  %395 = call zeroext i8 @RNA_struct_is_a(ptr noundef %392, ptr noundef nonnull @RNA_Texture) #8
  %396 = icmp eq i8 %395, 0
  %397 = select i1 %396, ptr null, ptr %394
  store ptr %397, ptr %381, align 8, !tbaa !113
  br label %432

398:                                              ; preds = %383
  %399 = getelementptr inbounds %struct.ButsTextureUser, ptr %379, i64 0, i32 6
  %400 = load ptr, ptr %399, align 8, !tbaa !118
  %401 = icmp eq ptr %400, null
  br i1 %401, label %432, label %402

402:                                              ; preds = %398
  %403 = getelementptr inbounds %struct.bNode, ptr %400, i64 0, i32 7
  %404 = load i32, ptr %403, align 8, !tbaa !119
  %405 = and i32 %404, 16384
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %432

407:                                              ; preds = %402
  %408 = load ptr, ptr %188, align 8, !tbaa !78
  %409 = icmp eq ptr %408, null
  br i1 %409, label %432, label %410

410:                                              ; preds = %407
  %411 = getelementptr inbounds %struct.ButsTextureUser, ptr %379, i64 0, i32 5
  %412 = load ptr, ptr %411, align 8, !tbaa !121
  br label %413

413:                                              ; preds = %410, %429
  %414 = phi ptr [ %408, %410 ], [ %430, %429 ]
  %415 = getelementptr inbounds %struct.ButsTextureUser, ptr %414, i64 0, i32 5
  %416 = load ptr, ptr %415, align 8, !tbaa !121
  %417 = icmp eq ptr %416, %412
  br i1 %417, label %418, label %429

418:                                              ; preds = %413
  %419 = getelementptr inbounds %struct.ButsTextureUser, ptr %414, i64 0, i32 6
  %420 = load ptr, ptr %419, align 8, !tbaa !118
  %421 = icmp eq ptr %420, %400
  br i1 %421, label %429, label %422

422:                                              ; preds = %418
  %423 = getelementptr inbounds %struct.bNode, ptr %420, i64 0, i32 7
  %424 = load i32, ptr %423, align 8, !tbaa !119
  %425 = and i32 %424, 16384
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %429, label %427

427:                                              ; preds = %422
  store ptr %414, ptr %380, align 8, !tbaa !111
  %428 = call i32 @BLI_findindex(ptr noundef nonnull %188, ptr noundef nonnull %414) #8
  store i32 %428, ptr %372, align 8, !tbaa !114
  br label %432

429:                                              ; preds = %413, %418, %422
  %430 = load ptr, ptr %414, align 8, !tbaa !78
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %413, !llvm.loop !122

432:                                              ; preds = %429, %407, %368, %387, %402, %398, %377, %427, %177, %179
  ret void
}

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateTextureUser(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [128 x i8], align 16
  %4 = tail call ptr @CTX_wm_space_buts(ptr noundef %1) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #8
  %12 = icmp eq ptr %10, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ButsContextTexture, ptr %10, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !111
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 0) #8
  br label %36

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ButsTextureUser, ptr %15, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !106
  %21 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %20, i64 noundef 128) #8
  %22 = getelementptr inbounds %struct.ButsTextureUser, ptr %15, i64 0, i32 8
  %23 = load i32, ptr %22, align 8, !tbaa !105
  %24 = icmp eq i32 %23, 0
  %25 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !123
  %26 = shl i16 %25, 2
  br i1 %24, label %29, label %27

27:                                               ; preds = %18
  %28 = call ptr @uiDefIconTextMenuBut(ptr noundef %11, ptr noundef nonnull @template_texture_user_menu, ptr noundef null, i32 noundef %23, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i16 noundef signext %26, i16 noundef signext %25, ptr noundef nonnull @.str.2) #8
  br label %31

29:                                               ; preds = %18
  %30 = call ptr @uiDefMenuBut(ptr noundef %11, ptr noundef nonnull @template_texture_user_menu, ptr noundef null, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i16 noundef signext %26, i16 noundef signext %25, ptr noundef nonnull @.str.2) #8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi ptr [ %28, %27 ], [ %30, %29 ]
  call void @uiButSetMenuFromPulldown(ptr noundef %32) #8
  %33 = getelementptr inbounds %struct.uiBut, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !127
  %35 = and i32 %34, -65
  store i32 %35, ptr %33, align 8, !tbaa !127
  br label %36

36:                                               ; preds = %9, %31, %17
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #8
  ret void
}

declare ptr @CTX_wm_space_buts(ptr noundef) local_unnamed_addr #2

declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @uiDefIconTextMenuBut(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @template_texture_user_menu(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [128 x i8], align 16
  %5 = alloca %struct.PointerRNA, align 8
  %6 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.SpaceButs, ptr %6, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = tail call ptr @uiLayoutGetBlock(ptr noundef %1) #8
  %10 = load ptr, ptr %8, align 8, !tbaa !78
  %11 = icmp eq ptr %10, null
  br i1 %11, label %61, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.uiBlock, ptr %9, i64 0, i32 2, i32 1
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  br label %15

15:                                               ; preds = %12, %49
  %16 = phi ptr [ %10, %12 ], [ %59, %49 ]
  %17 = phi ptr [ null, %12 ], [ %58, %49 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ButsTextureUser, ptr %16, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !104
  %22 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %21) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19, %15
  %25 = getelementptr inbounds %struct.ButsTextureUser, ptr %16, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !104
  call void @uiItemL(ptr noundef %1, ptr noundef %26, i32 noundef 0) #8
  %27 = load ptr, ptr %13, align 8, !tbaa !129
  %28 = getelementptr inbounds %struct.uiBut, ptr %27, i64 0, i32 3
  store i32 2, ptr %28, align 4, !tbaa !133
  br label %29

29:                                               ; preds = %24, %19
  %30 = getelementptr inbounds %struct.ButsTextureUser, ptr %16, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !103
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  %34 = getelementptr inbounds %struct.ButsTextureUser, ptr %16, i64 0, i32 3
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %34, ptr noundef nonnull %31) #8
  %35 = load ptr, ptr %14, align 8, !tbaa !134
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %struct.ButsTextureUser, ptr %16, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !106
  br i1 %36, label %42, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.ID, ptr %35, i64 0, i32 4, i64 2
  %41 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 128, ptr noundef nonnull @.str.16, ptr noundef %38, ptr noundef nonnull %40) #8
  br label %44

42:                                               ; preds = %33
  %43 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 128, ptr noundef nonnull @.str.17, ptr noundef %38) #8
  br label %44

44:                                               ; preds = %42, %39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  br label %49

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.ButsTextureUser, ptr %16, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !106
  %48 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 128, ptr noundef nonnull @.str.17, ptr noundef %47) #8
  br label %49

49:                                               ; preds = %45, %44
  %50 = getelementptr inbounds %struct.ButsTextureUser, ptr %16, i64 0, i32 8
  %51 = load i32, ptr %50, align 8, !tbaa !105
  %52 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !123
  %53 = shl i16 %52, 2
  %54 = call ptr @uiDefIconTextBut(ptr noundef %9, i32 noundef 512, i32 noundef 0, i32 noundef %51, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i16 noundef signext %53, i16 noundef signext %52, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #8
  %55 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !78
  %56 = call ptr %55(ptr noundef nonnull %16) #8
  call void @uiButSetNFunc(ptr noundef %54, ptr noundef nonnull @template_texture_select, ptr noundef %56, ptr noundef null) #8
  %57 = getelementptr inbounds %struct.ButsTextureUser, ptr %16, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #8
  %59 = load ptr, ptr %16, align 8, !tbaa !78
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %15, !llvm.loop !135

61:                                               ; preds = %49, %3
  ret void
}

declare ptr @uiDefMenuBut(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @uiButSetMenuFromPulldown(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateTextureShow(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readnone %3) local_unnamed_addr #0 {
  %5 = tail call ptr @CTX_wm_space_buts(ptr noundef %1) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  br label %10

10:                                               ; preds = %4, %7
  %11 = phi ptr [ %9, %7 ], [ null, %4 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 7
  %15 = load i16, ptr %14, align 8, !tbaa !75
  %16 = icmp eq i16 %15, 6
  br i1 %16, label %43, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %11, align 8, !tbaa !78
  %19 = icmp eq ptr %18, null
  br i1 %19, label %43, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !134
  br label %23

23:                                               ; preds = %20, %32
  %24 = phi ptr [ %18, %20 ], [ %33, %32 ]
  %25 = getelementptr inbounds %struct.ButsTextureUser, ptr %24, i64 0, i32 3, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !115
  %27 = icmp eq ptr %26, %22
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ButsTextureUser, ptr %24, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !103
  %31 = icmp eq ptr %30, %3
  br i1 %31, label %35, label %32

32:                                               ; preds = %23, %28
  %33 = load ptr, ptr %24, align 8, !tbaa !78
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %23, !llvm.loop !136

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.ButsTextureUser, ptr %24, i64 0, i32 3, i32 2
  %37 = getelementptr inbounds %struct.ButsTextureUser, ptr %24, i64 0, i32 4
  %38 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #8
  %39 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !123
  %40 = tail call ptr @uiDefIconBut(ptr noundef %38, i32 noundef 512, i32 noundef 0, i32 noundef 107, i32 noundef 0, i32 noundef 0, i16 noundef signext %39, i16 noundef signext %39, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #8
  %41 = load ptr, ptr %36, align 8, !tbaa !115
  %42 = load ptr, ptr %37, align 8, !tbaa !103
  tail call void @uiButSetFunc(ptr noundef %40, ptr noundef nonnull @template_texture_show, ptr noundef %41, ptr noundef %42) #8
  br label %43

43:                                               ; preds = %32, %17, %35, %10, %13
  ret void
}

declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @template_texture_show(ptr noundef %0, ptr noundef readnone %1, ptr noundef readnone %2) #0 {
  %4 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  br label %9

9:                                                ; preds = %3, %6
  %10 = phi ptr [ %8, %6 ], [ null, %3 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %10, align 8, !tbaa !78
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %12, %24
  %16 = phi ptr [ %25, %24 ], [ %13, %12 ]
  %17 = getelementptr inbounds %struct.ButsTextureUser, ptr %16, i64 0, i32 3, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !115
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ButsTextureUser, ptr %16, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !103
  %23 = icmp eq ptr %22, %2
  br i1 %23, label %27, label %24

24:                                               ; preds = %15, %20
  %25 = load ptr, ptr %16, align 8, !tbaa !78
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %15, !llvm.loop !137

27:                                               ; preds = %20
  tail call void @template_texture_select(ptr noundef %0, ptr noundef nonnull %16, ptr poison)
  %28 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 7
  store i16 6, ptr %28, align 8, !tbaa !75
  %29 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 9
  store i16 6, ptr %29, align 4, !tbaa !138
  %30 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 12
  store i16 1, ptr %30, align 2, !tbaa !139
  %31 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  tail call void @ED_area_tag_redraw(ptr noundef %31) #8
  br label %32

32:                                               ; preds = %24, %12, %27, %9
  ret void
}

declare ptr @BKE_linestyle_active_from_scene(ptr noundef) local_unnamed_addr #2

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @buttons_texture_users_find_nodetree(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = icmp eq ptr %2, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = icmp eq ptr %9, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 1
  br label %13

13:                                               ; preds = %11, %43
  %14 = phi ptr [ %9, %11 ], [ %44, %43 ]
  %15 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !140
  %17 = getelementptr inbounds %struct.bNodeType, ptr %16, i64 0, i32 14
  %18 = load i16, ptr %17, align 4, !tbaa !141
  %19 = icmp eq i16 %18, 13
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  call void @RNA_pointer_create(ptr noundef nonnull %2, ptr noundef nonnull @RNA_Node, ptr noundef nonnull %14, ptr noundef nonnull %5) #8
  %21 = load ptr, ptr %12, align 8, !tbaa !144
  %22 = call i32 @RNA_struct_ui_icon(ptr noundef %21) #8
  %23 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 6
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !78
  %25 = call ptr %24(i64 noundef 104, ptr noundef nonnull @.str.14) #8
  %26 = getelementptr inbounds %struct.ButsTextureUser, ptr %25, i64 0, i32 2
  store ptr %1, ptr %26, align 8, !tbaa !98
  %27 = getelementptr inbounds %struct.ButsTextureUser, ptr %25, i64 0, i32 5
  store ptr %2, ptr %27, align 8, !tbaa !121
  %28 = getelementptr inbounds %struct.ButsTextureUser, ptr %25, i64 0, i32 6
  store ptr %14, ptr %28, align 8, !tbaa !118
  %29 = getelementptr inbounds %struct.ButsTextureUser, ptr %25, i64 0, i32 7
  store ptr %3, ptr %29, align 8, !tbaa !104
  %30 = getelementptr inbounds %struct.ButsTextureUser, ptr %25, i64 0, i32 8
  store i32 %22, ptr %30, align 8, !tbaa !105
  %31 = getelementptr inbounds %struct.ButsTextureUser, ptr %25, i64 0, i32 9
  store ptr %23, ptr %31, align 8, !tbaa !106
  %32 = call i32 @BLI_countlist(ptr noundef %0) #8
  %33 = getelementptr inbounds %struct.ButsTextureUser, ptr %25, i64 0, i32 10
  store i32 %32, ptr %33, align 8, !tbaa !107
  call void @BLI_addtail(ptr noundef %0, ptr noundef %25) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  br label %43

34:                                               ; preds = %13
  %35 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 8
  %36 = load i16, ptr %35, align 4, !tbaa !145
  %37 = icmp eq i16 %36, 2
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 20
  %40 = load ptr, ptr %39, align 8, !tbaa !146
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  call fastcc void @buttons_texture_users_find_nodetree(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %40, ptr noundef %3)
  br label %43

43:                                               ; preds = %20, %42, %38, %34
  %44 = load ptr, ptr %14, align 8, !tbaa !78
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %13, !llvm.loop !147

46:                                               ; preds = %43, %7, %4
  ret void
}

declare ptr @psys_get_current(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @buttons_texture_modifier_foreach(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_Modifier, ptr noundef %2, ptr noundef nonnull %6) #8
  %7 = call ptr @RNA_struct_find_property(ptr noundef nonnull %6, ptr noundef %3) #8
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !144
  %10 = call i32 @RNA_struct_ui_icon(ptr noundef %9) #8
  %11 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !78
  %13 = call ptr %12(i64 noundef 104, ptr noundef nonnull @.str.14) #8
  %14 = getelementptr inbounds %struct.ButsTextureUser, ptr %13, i64 0, i32 2
  store ptr %1, ptr %14, align 8, !tbaa !98
  %15 = getelementptr inbounds %struct.ButsTextureUser, ptr %13, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !102
  %16 = getelementptr inbounds %struct.ButsTextureUser, ptr %13, i64 0, i32 4
  store ptr %7, ptr %16, align 8, !tbaa !103
  %17 = getelementptr inbounds %struct.ButsTextureUser, ptr %13, i64 0, i32 7
  store ptr @.str.15, ptr %17, align 8, !tbaa !104
  %18 = getelementptr inbounds %struct.ButsTextureUser, ptr %13, i64 0, i32 8
  store i32 %10, ptr %18, align 8, !tbaa !105
  %19 = getelementptr inbounds %struct.ButsTextureUser, ptr %13, i64 0, i32 9
  store ptr %11, ptr %19, align 8, !tbaa !106
  %20 = call i32 @BLI_countlist(ptr noundef %0) #8
  %21 = getelementptr inbounds %struct.ButsTextureUser, ptr %13, i64 0, i32 10
  store i32 %20, ptr %21, align 8, !tbaa !107
  call void @BLI_addtail(ptr noundef %0, ptr noundef %13) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  ret void
}

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_struct_ui_icon(ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @uiDefIconTextBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiButSetNFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @template_texture_select(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %9, %7 ], [ null, %3 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %58, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ButsTextureUser, ptr %1, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !118
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %19 = getelementptr inbounds %struct.ButsTextureUser, ptr %1, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !121
  %21 = load ptr, ptr %14, align 8, !tbaa !118
  tail call void @ED_node_set_active(ptr noundef %18, ptr noundef %20, ptr noundef %21) #8
  %22 = getelementptr inbounds %struct.ButsContextTexture, ptr %11, i64 0, i32 1
  store ptr null, ptr %22, align 8, !tbaa !113
  br label %53

23:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  %24 = getelementptr inbounds %struct.ButsTextureUser, ptr %1, i64 0, i32 3
  %25 = getelementptr inbounds %struct.ButsTextureUser, ptr %1, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !103
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %24, ptr noundef %26) #8
  %27 = getelementptr inbounds i8, ptr %4, i64 8
  %28 = load ptr, ptr %27, align 8, !tbaa.struct !116
  %29 = getelementptr inbounds i8, ptr %4, i64 16
  %30 = load ptr, ptr %29, align 8, !tbaa.struct !117
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  %31 = call zeroext i8 @RNA_struct_is_a(ptr noundef %28, ptr noundef nonnull @RNA_Texture) #8
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, ptr null, ptr %30
  %34 = getelementptr inbounds %struct.ButsContextTexture, ptr %11, i64 0, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !113
  %35 = getelementptr inbounds %struct.ButsTextureUser, ptr %1, i64 0, i32 3, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !148
  %37 = icmp eq ptr %36, @RNA_ParticleSettingsTextureSlot
  br i1 %37, label %38, label %53

38:                                               ; preds = %23
  %39 = load ptr, ptr %24, align 8, !tbaa !149
  %40 = getelementptr inbounds %struct.ButsTextureUser, ptr %1, i64 0, i32 3, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !115
  %42 = getelementptr inbounds %struct.ParticleSettings, ptr %39, i64 0, i32 10
  br label %43

43:                                               ; preds = %38, %50
  %44 = phi i64 [ 0, %38 ], [ %51, %50 ]
  %45 = getelementptr inbounds %struct.ParticleSettings, ptr %39, i64 0, i32 121, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !78
  %47 = icmp eq ptr %41, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = trunc i64 %44 to i16
  store i16 %49, ptr %42, align 2, !tbaa !150
  br label %50

50:                                               ; preds = %43, %48
  %51 = add nuw nsw i64 %44, 1
  %52 = icmp eq i64 %51, 18
  br i1 %52, label %53, label %43, !llvm.loop !152

53:                                               ; preds = %50, %23, %17
  %54 = getelementptr inbounds %struct.ButsContextTexture, ptr %11, i64 0, i32 2
  store ptr %1, ptr %54, align 8, !tbaa !111
  %55 = getelementptr inbounds %struct.ButsTextureUser, ptr %1, i64 0, i32 10
  %56 = load i32, ptr %55, align 8, !tbaa !107
  %57 = getelementptr inbounds %struct.ButsContextTexture, ptr %11, i64 0, i32 3
  store i32 %56, ptr %57, align 8, !tbaa !114
  br label %58

58:                                               ; preds = %10, %53
  ret void
}

declare void @ED_node_set_active(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!34 = !{!35, !37, i64 136}
!35 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !43, i64 280, !53, i64 4264, !42, i64 4296, !42, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !42, i64 4384, !54, i64 4400, !55, i64 4416, !58, i64 4600, !37, i64 4608, !59, i64 4616, !37, i64 4640, !60, i64 4648, !60, i64 4656, !46, i64 4664, !47, i64 4824, !61, i64 4888, !37, i64 4952}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"RenderData", !44, i64 0, !37, i64 248, !37, i64 256, !48, i64 264, !49, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !45, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !50, i64 544, !50, i64 560, !51, i64 576, !42, i64 592, !40, i64 608, !40, i64 610, !45, i64 612, !45, i64 616, !45, i64 620, !45, i64 624, !41, i64 628, !45, i64 632, !45, i64 636, !45, i64 640, !45, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !45, i64 660, !45, i64 664, !40, i64 668, !40, i64 670, !45, i64 672, !45, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !45, i64 2528, !45, i64 2532, !40, i64 2536, !40, i64 2538, !45, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !45, i64 2560, !45, i64 2564, !37, i64 2568, !41, i64 2576, !45, i64 2580, !38, i64 2584, !52, i64 2616, !41, i64 3976, !41, i64 3980}
!44 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !45, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !46, i64 24, !47, i64 184}
!45 = !{!"float", !38, i64 0}
!46 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !45, i64 136, !45, i64 140, !37, i64 144, !37, i64 152}
!47 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!48 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!49 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !45, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!50 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!51 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!52 = !{!"BakeData", !44, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !45, i64 1280, !45, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!53 = !{!"AudioData", !41, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !45, i64 24, !45, i64 28}
!54 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!55 = !{!"GameData", !54, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !56, i64 40, !40, i64 64, !40, i64 66, !45, i64 68, !57, i64 72, !45, i64 128, !45, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180}
!56 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !45, i64 8, !45, i64 12, !37, i64 16}
!57 = !{!"RecastData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !41, i64 40, !45, i64 44, !45, i64 48, !40, i64 52, !40, i64 54}
!58 = !{!"UnitSettings", !45, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!59 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!60 = !{!"long", !38, i64 0}
!61 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!62 = !{!63, !41, i64 456}
!63 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !64, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !45, i64 616, !45, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !45, i64 1048, !45, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !45, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !45, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !60, i64 1304, !60, i64 1312, !41, i64 1320, !41, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!64 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!65 = !{!63, !40, i64 136}
!66 = !{!63, !37, i64 1224}
!67 = !{!63, !37, i64 1240}
!68 = !{!69, !40, i64 6}
!69 = !{!"PartDeflect", !41, i64 0, !40, i64 4, !40, i64 6, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !40, i64 16, !40, i64 18, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !45, i64 56, !45, i64 60, !45, i64 64, !45, i64 68, !45, i64 72, !45, i64 76, !45, i64 80, !45, i64 84, !45, i64 88, !45, i64 92, !45, i64 96, !45, i64 100, !45, i64 104, !45, i64 108, !45, i64 112, !45, i64 116, !45, i64 120, !45, i64 124, !37, i64 128, !37, i64 136, !45, i64 144, !41, i64 148, !37, i64 152}
!70 = !{!38, !38, i64 0}
!71 = !{!72, !37, i64 264}
!72 = !{!"SpaceButs", !37, i64 0, !37, i64 8, !42, i64 16, !41, i64 32, !45, i64 36, !38, i64 40, !73, i64 56, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !38, i64 232, !38, i64 233, !37, i64 240, !41, i64 248, !41, i64 252, !37, i64 256, !37, i64 264}
!73 = !{!"View2D", !50, i64 0, !50, i64 16, !51, i64 32, !51, i64 48, !51, i64 64, !38, i64 80, !38, i64 88, !45, i64 96, !45, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !37, i64 128, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!74 = !{!72, !37, i64 256}
!75 = !{!72, !40, i64 216}
!76 = !{!72, !40, i64 230}
!77 = !{!72, !40, i64 228}
!78 = !{!37, !37, i64 0}
!79 = !{!72, !38, i64 232}
!80 = !{!40, !40, i64 0}
!81 = !{!35, !37, i64 168}
!82 = !{!83, !37, i64 32}
!83 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!84 = !{!63, !37, i64 296}
!85 = !{!63, !41, i64 460}
!86 = !{!87, !37, i64 768}
!87 = !{!"Material", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !45, i64 132, !45, i64 136, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !45, i64 200, !45, i64 204, !45, i64 208, !45, i64 212, !45, i64 216, !45, i64 220, !88, i64 224, !89, i64 312, !45, i64 328, !45, i64 332, !45, i64 336, !45, i64 340, !45, i64 344, !45, i64 348, !45, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !38, i64 362, !38, i64 363, !45, i64 364, !45, i64 368, !40, i64 372, !40, i64 374, !45, i64 376, !45, i64 380, !45, i64 384, !45, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !45, i64 420, !45, i64 424, !45, i64 428, !45, i64 432, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !45, i64 456, !38, i64 460, !45, i64 524, !45, i64 528, !45, i64 532, !41, i64 536, !38, i64 540, !38, i64 541, !38, i64 542, !38, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !38, i64 550, !38, i64 551, !40, i64 552, !40, i64 554, !45, i64 556, !45, i64 560, !38, i64 564, !45, i64 580, !45, i64 584, !40, i64 588, !40, i64 590, !37, i64 592, !37, i64 600, !38, i64 608, !38, i64 609, !38, i64 610, !38, i64 611, !40, i64 612, !40, i64 614, !45, i64 616, !45, i64 620, !38, i64 624, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !45, i64 800, !45, i64 804, !45, i64 808, !45, i64 812, !45, i64 816, !40, i64 820, !40, i64 822, !38, i64 824, !38, i64 836, !45, i64 848, !45, i64 852, !45, i64 856, !45, i64 860, !45, i64 864, !45, i64 868, !45, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !38, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !38, i64 914, !37, i64 920, !42, i64 928}
!88 = !{!"VolumeSettings", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !38, i64 16, !38, i64 28, !38, i64 40, !45, i64 52, !45, i64 56, !45, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !45, i64 72, !45, i64 76, !45, i64 80, !45, i64 84}
!89 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!90 = !{!91, !37, i64 512}
!91 = !{!"Lamp", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !40, i64 136, !40, i64 138, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !37, i64 200, !40, i64 208, !40, i64 210, !45, i64 212, !45, i64 216, !45, i64 220, !45, i64 224, !45, i64 228, !45, i64 232, !45, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !38, i64 248, !38, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !45, i64 260, !45, i64 264, !45, i64 268, !45, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !45, i64 320, !45, i64 324, !45, i64 328, !45, i64 332, !45, i64 336, !40, i64 340, !38, i64 342, !37, i64 344, !38, i64 352, !40, i64 496, !40, i64 498, !38, i64 500, !37, i64 504, !37, i64 512}
!92 = !{!93, !37, i64 520}
!93 = !{!"World", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !45, i64 136, !45, i64 140, !45, i64 144, !45, i64 148, !45, i64 152, !45, i64 156, !45, i64 160, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !45, i64 192, !45, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !45, i64 216, !45, i64 220, !45, i64 224, !45, i64 228, !45, i64 232, !45, i64 236, !45, i64 240, !45, i64 244, !45, i64 248, !45, i64 252, !45, i64 256, !45, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !45, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !37, i64 336, !37, i64 344, !37, i64 352, !38, i64 360, !40, i64 504, !40, i64 506, !38, i64 508, !37, i64 512, !37, i64 520}
!94 = !{!95, !37, i64 392}
!95 = !{!"FreestyleLineStyle", !36, i64 0, !37, i64 120, !45, i64 128, !45, i64 132, !45, i64 136, !45, i64 140, !45, i64 144, !41, i64 148, !45, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !45, i64 172, !45, i64 176, !45, i64 180, !45, i64 184, !45, i64 188, !41, i64 192, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !41, i64 208, !41, i64 212, !45, i64 216, !40, i64 220, !40, i64 222, !40, i64 224, !38, i64 226, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !41, i64 244, !38, i64 248, !37, i64 392, !42, i64 400, !42, i64 416, !42, i64 432, !42, i64 448}
!96 = !{!97, !37, i64 16}
!97 = !{!"ParticleSystem", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !42, i64 72, !42, i64 88, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !38, i64 168, !38, i64 232, !45, i64 296, !45, i64 300, !45, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !40, i64 342, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 540, !40, i64 564, !40, i64 566, !37, i64 568, !37, i64 576, !42, i64 584, !37, i64 600, !37, i64 608, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 632, !37, i64 640, !45, i64 648, !45, i64 652}
!98 = !{!99, !37, i64 16}
!99 = !{!"ButsTextureUser", !37, i64 0, !37, i64 8, !37, i64 16, !100, i64 24, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !41, i64 80, !37, i64 88, !41, i64 96}
!100 = !{!"PointerRNA", !101, i64 0, !37, i64 8, !37, i64 16}
!101 = !{!"", !37, i64 0}
!102 = !{i64 0, i64 8, !78, i64 8, i64 8, !78, i64 16, i64 8, !78}
!103 = !{!99, !37, i64 48}
!104 = !{!99, !37, i64 72}
!105 = !{!99, !41, i64 80}
!106 = !{!99, !37, i64 88}
!107 = !{!99, !41, i64 96}
!108 = distinct !{!108, !109, !110}
!109 = !{!"llvm.loop.mustprogress"}
!110 = !{!"llvm.loop.unroll.disable"}
!111 = !{!112, !37, i64 24}
!112 = !{!"ButsContextTexture", !42, i64 0, !37, i64 16, !37, i64 24, !41, i64 32}
!113 = !{!112, !37, i64 16}
!114 = !{!112, !41, i64 32}
!115 = !{!99, !37, i64 40}
!116 = !{i64 0, i64 8, !78, i64 8, i64 8, !78}
!117 = !{i64 0, i64 8, !78}
!118 = !{!99, !37, i64 64}
!119 = !{!120, !41, i64 168}
!120 = !{!"bNode", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 104, !41, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !38, i64 188, !42, i64 200, !42, i64 216, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !42, i64 264, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !41, i64 308, !38, i64 312, !40, i64 376, !40, i64 378, !45, i64 380, !45, i64 384, !40, i64 388, !40, i64 390, !37, i64 392, !50, i64 400, !50, i64 416, !50, i64 432, !40, i64 448, !40, i64 450, !41, i64 452, !37, i64 456}
!121 = !{!99, !37, i64 56}
!122 = distinct !{!122, !109, !110}
!123 = !{!124, !40, i64 8948}
!124 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !42, i64 8536, !42, i64 8552, !42, i64 8568, !42, i64 8584, !42, i64 8600, !42, i64 8616, !42, i64 8632, !38, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !38, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !45, i64 8956, !45, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !45, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !125, i64 8984, !38, i64 9760, !38, i64 9772, !40, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !41, i64 10896, !41, i64 10900, !45, i64 10904, !45, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !126, i64 10928}
!125 = !{!"ColorBand", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!126 = !{!"WalkNavigation", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !40, i64 24, !38, i64 26}
!127 = !{!128, !41, i64 16}
!128 = !{!"uiBut", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !40, i64 48, !37, i64 56, !38, i64 64, !38, i64 192, !50, i64 592, !37, i64 608, !45, i64 616, !45, i64 620, !45, i64 624, !45, i64 628, !45, i64 632, !45, i64 636, !38, i64 640, !37, i64 648, !37, i64 656, !37, i64 664, !37, i64 672, !37, i64 680, !37, i64 688, !37, i64 696, !37, i64 704, !37, i64 712, !37, i64 720, !37, i64 728, !37, i64 736, !37, i64 744, !37, i64 752, !38, i64 760, !37, i64 768, !37, i64 776, !41, i64 784, !38, i64 788, !38, i64 789, !38, i64 790, !38, i64 791, !38, i64 792, !40, i64 794, !40, i64 796, !37, i64 800, !37, i64 808, !100, i64 816, !37, i64 840, !41, i64 848, !100, i64 856, !37, i64 880, !37, i64 888, !37, i64 896, !40, i64 904, !38, i64 906, !38, i64 907, !37, i64 912, !37, i64 920, !45, i64 928, !37, i64 936, !37, i64 944, !37, i64 952, !37, i64 960, !37, i64 968, !37, i64 976, !37, i64 984, !37, i64 992}
!129 = !{!130, !37, i64 24}
!130 = !{!"uiBlock", !37, i64 0, !37, i64 8, !42, i64 16, !37, i64 32, !37, i64 40, !42, i64 48, !42, i64 64, !37, i64 80, !42, i64 88, !38, i64 104, !38, i64 232, !50, i64 296, !45, i64 312, !41, i64 316, !37, i64 320, !37, i64 328, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !37, i64 408, !37, i64 416, !41, i64 424, !40, i64 428, !38, i64 430, !38, i64 431, !38, i64 432, !38, i64 433, !131, i64 440, !37, i64 448, !38, i64 456, !38, i64 457, !38, i64 458, !38, i64 459, !41, i64 460, !41, i64 464, !41, i64 468, !41, i64 472, !41, i64 476, !50, i64 480, !42, i64 496, !37, i64 512, !37, i64 520, !37, i64 528, !37, i64 536, !38, i64 544, !38, i64 556, !38, i64 557, !132, i64 624}
!131 = !{!"double", !38, i64 0}
!132 = !{!"PieMenuData", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !131, i64 32, !41, i64 40, !41, i64 44, !45, i64 48}
!133 = !{!128, !41, i64 20}
!134 = !{!100, !37, i64 16}
!135 = distinct !{!135, !109, !110}
!136 = distinct !{!136, !109, !110}
!137 = distinct !{!137, !109, !110}
!138 = !{!72, !40, i64 220}
!139 = !{!72, !40, i64 226}
!140 = !{!120, !37, i64 32}
!141 = !{!142, !40, i64 436}
!142 = !{!"bNodeType", !37, i64 0, !37, i64 8, !40, i64 16, !38, i64 18, !41, i64 84, !38, i64 88, !38, i64 152, !41, i64 408, !45, i64 412, !45, i64 416, !45, i64 420, !45, i64 424, !45, i64 428, !45, i64 432, !40, i64 436, !40, i64 438, !40, i64 440, !37, i64 448, !37, i64 456, !38, i64 464, !37, i64 528, !37, i64 536, !37, i64 544, !37, i64 552, !37, i64 560, !37, i64 568, !37, i64 576, !37, i64 584, !37, i64 592, !37, i64 600, !37, i64 608, !37, i64 616, !37, i64 624, !37, i64 632, !37, i64 640, !37, i64 648, !37, i64 656, !37, i64 664, !37, i64 672, !37, i64 680, !37, i64 688, !37, i64 696, !37, i64 704, !37, i64 712, !143, i64 720}
!143 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!144 = !{!100, !37, i64 8}
!145 = !{!120, !40, i64 172}
!146 = !{!120, !37, i64 240}
!147 = distinct !{!147, !109, !110}
!148 = !{!99, !37, i64 32}
!149 = !{!99, !37, i64 24}
!150 = !{!151, !40, i64 166}
!151 = !{!"ParticleSettings", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !41, i64 152, !41, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !41, i64 176, !41, i64 180, !40, i64 184, !40, i64 186, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !45, i64 232, !45, i64 236, !38, i64 240, !38, i64 248, !45, i64 256, !45, i64 260, !45, i64 264, !40, i64 268, !40, i64 270, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !38, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !40, i64 340, !38, i64 342, !45, i64 348, !45, i64 352, !45, i64 356, !45, i64 360, !45, i64 364, !45, i64 368, !45, i64 372, !38, i64 376, !45, i64 388, !45, i64 392, !45, i64 396, !45, i64 400, !45, i64 404, !45, i64 408, !45, i64 412, !38, i64 416, !45, i64 428, !45, i64 432, !45, i64 436, !45, i64 440, !41, i64 444, !41, i64 448, !45, i64 452, !45, i64 456, !45, i64 460, !45, i64 464, !45, i64 468, !45, i64 472, !45, i64 476, !45, i64 480, !45, i64 484, !45, i64 488, !45, i64 492, !45, i64 496, !45, i64 500, !45, i64 504, !45, i64 508, !45, i64 512, !45, i64 516, !45, i64 520, !45, i64 524, !45, i64 528, !45, i64 532, !45, i64 536, !45, i64 540, !45, i64 544, !45, i64 548, !38, i64 552, !45, i64 560, !45, i64 564, !41, i64 568, !41, i64 572, !38, i64 576, !37, i64 720, !42, i64 728, !37, i64 744, !37, i64 752, !37, i64 760, !37, i64 768, !37, i64 776, !37, i64 784, !40, i64 792, !38, i64 794}
!152 = distinct !{!152, !109, !110}
