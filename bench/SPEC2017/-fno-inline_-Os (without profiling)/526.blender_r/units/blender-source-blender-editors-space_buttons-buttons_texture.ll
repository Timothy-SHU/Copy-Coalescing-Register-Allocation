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
%struct.ButsContextTexture = type { %struct.ListBase, ptr, ptr, i32 }
%struct.ButsTextureUser = type { ptr, ptr, ptr, %struct.PointerRNA, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_texture_context_check_world(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp ne ptr %6, null
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_texture_context_check_material(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 31
  %6 = load i32, ptr %5, align 8, !tbaa !33
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_texture_context_check_lamp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !36
  %7 = icmp eq i16 %6, 10
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_texture_context_check_particles(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 109
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = icmp ne ptr %6, null
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @ED_texture_context_check_linestyle(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  ret i8 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_texture_context_check_others(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 110
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.PartDeflect, ptr %7, i64 0, i32 2
  %11 = load i16, ptr %10, align 2, !tbaa !39
  %12 = icmp eq i16 %11, 6
  br i1 %12, label %21, label %13

13:                                               ; preds = %9, %5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  store i8 0, ptr %2, align 1, !tbaa !41
  call void @modifiers_foreachTexLink(ptr noundef nonnull %3, ptr noundef nonnull @texture_context_check_modifier_foreach, ptr noundef nonnull %2) #8
  %14 = load i8, ptr %2, align 1, !tbaa !41
  %15 = icmp eq i8 %14, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
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

; Function Attrs: optsize
declare void @modifiers_foreachTexLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @texture_context_check_modifier_foreach(ptr nocapture noundef writeonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #4 {
  store i8 1, ptr %0, align 1, !tbaa !41
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @buttons_texture_context_compute(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 21
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  tail call fastcc void @set_texture_context(ptr noundef %0, ptr noundef %1) #10
  %9 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 13
  %10 = load i16, ptr %9, align 4, !tbaa !46
  %11 = icmp eq i16 %10, 4
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %6) #8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = icmp eq ptr %5, null
  br i1 %16, label %98, label %17

17:                                               ; preds = %15
  tail call void @BLI_freelistN(ptr noundef nonnull %5) #8
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %18(ptr noundef nonnull %5) #8
  store ptr null, ptr %4, align 8, !tbaa !42
  br label %98

19:                                               ; preds = %12, %2
  %20 = icmp eq ptr %5, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %23 = tail call ptr %22(i64 noundef 40, ptr noundef nonnull @.str) #8
  store ptr %23, ptr %4, align 8, !tbaa !42
  br label %25

24:                                               ; preds = %19
  tail call void @BLI_freelistN(ptr noundef nonnull %5) #8
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi ptr [ %5, %24 ], [ %23, %21 ]
  tail call fastcc void @buttons_texture_users_from_context(ptr noundef %26, ptr noundef %0, ptr noundef nonnull %1) #10
  %27 = icmp eq ptr %8, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 4
  %30 = load i16, ptr %29, align 8, !tbaa !48
  %31 = icmp eq i16 %30, 17748
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ButsContextTexture, ptr %26, i64 0, i32 2
  store ptr null, ptr %33, align 8, !tbaa !49
  %34 = getelementptr inbounds %struct.ButsContextTexture, ptr %26, i64 0, i32 1
  store ptr %8, ptr %34, align 8, !tbaa !51
  br label %98

35:                                               ; preds = %28, %25
  %36 = getelementptr inbounds %struct.ButsContextTexture, ptr %26, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !52
  %38 = tail call i32 @BLI_countlist(ptr noundef %26) #8
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, ptr %36, align 8, !tbaa !52
  br label %43

42:                                               ; preds = %35
  store i32 0, ptr %36, align 8, !tbaa !52
  br label %43

43:                                               ; preds = %40, %42
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = tail call ptr @BLI_findlink(ptr noundef nonnull %26, i32 noundef %44) #8
  %46 = getelementptr inbounds %struct.ButsContextTexture, ptr %26, i64 0, i32 2
  store ptr %45, ptr %46, align 8, !tbaa !49
  %47 = getelementptr inbounds %struct.ButsContextTexture, ptr %26, i64 0, i32 1
  store ptr null, ptr %47, align 8, !tbaa !51
  %48 = icmp eq ptr %45, null
  br i1 %48, label %98, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.ButsTextureUser, ptr %45, i64 0, i32 3, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !53
  %52 = icmp eq ptr %51, null
  br i1 %52, label %64, label %53

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  %54 = getelementptr inbounds %struct.ButsTextureUser, ptr %45, i64 0, i32 3
  %55 = getelementptr inbounds %struct.ButsTextureUser, ptr %45, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !57
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %54, ptr noundef %56) #8
  %57 = getelementptr inbounds i8, ptr %3, i64 8
  %58 = load ptr, ptr %57, align 8, !tbaa.struct !58
  %59 = getelementptr inbounds i8, ptr %3, i64 16
  %60 = load ptr, ptr %59, align 8, !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  %61 = call zeroext i8 @RNA_struct_is_a(ptr noundef %58, ptr noundef nonnull @RNA_Texture) #8
  %62 = icmp eq i8 %61, 0
  %63 = select i1 %62, ptr null, ptr %60
  store ptr %63, ptr %47, align 8, !tbaa !51
  br label %98

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.ButsTextureUser, ptr %45, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !60
  %67 = icmp eq ptr %66, null
  br i1 %67, label %98, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.bNode, ptr %66, i64 0, i32 7
  %70 = load i32, ptr %69, align 8, !tbaa !61
  %71 = and i32 %70, 16384
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %68
  %74 = load ptr, ptr %26, align 8, !tbaa !47
  %75 = icmp eq ptr %74, null
  br i1 %75, label %98, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.ButsTextureUser, ptr %45, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !63
  br label %79

79:                                               ; preds = %76, %95
  %80 = phi ptr [ %74, %76 ], [ %96, %95 ]
  %81 = getelementptr inbounds %struct.ButsTextureUser, ptr %80, i64 0, i32 5
  %82 = load ptr, ptr %81, align 8, !tbaa !63
  %83 = icmp eq ptr %82, %78
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.ButsTextureUser, ptr %80, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !60
  %87 = icmp eq ptr %86, %66
  br i1 %87, label %95, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.bNode, ptr %86, i64 0, i32 7
  %90 = load i32, ptr %89, align 8, !tbaa !61
  %91 = and i32 %90, 16384
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  store ptr %80, ptr %46, align 8, !tbaa !49
  %94 = tail call i32 @BLI_findindex(ptr noundef nonnull %26, ptr noundef nonnull %80) #8
  store i32 %94, ptr %36, align 8, !tbaa !52
  br label %98

95:                                               ; preds = %79, %84, %88
  %96 = load ptr, ptr %80, align 8, !tbaa !47
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %79, !llvm.loop !64

98:                                               ; preds = %95, %73, %32, %53, %68, %64, %43, %93, %15, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_texture_context(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %3) #8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %108

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @ED_texture_context_check_world(ptr noundef %0) #10, !range !66
  %8 = tail call zeroext i8 @ED_texture_context_check_material(ptr noundef %0) #10, !range !66
  %9 = tail call zeroext i8 @ED_texture_context_check_lamp(ptr noundef %0) #10, !range !66
  %10 = tail call zeroext i8 @ED_texture_context_check_particles(ptr noundef %0) #10, !range !66
  %11 = tail call zeroext i8 @ED_texture_context_check_others(ptr noundef %0) #10, !range !66
  %12 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 7
  %13 = load i16, ptr %12, align 8, !tbaa !67
  %14 = icmp eq i16 %13, 2
  %15 = icmp ne i8 %7, 0
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 14
  store i16 1, ptr %18, align 2, !tbaa !68
  %19 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 13
  store i16 1, ptr %19, align 4, !tbaa !46
  br label %108

20:                                               ; preds = %6
  %21 = icmp eq i16 %13, 5
  %22 = icmp ne i8 %8, 0
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 14
  store i16 0, ptr %25, align 2, !tbaa !68
  %26 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 13
  store i16 0, ptr %26, align 4, !tbaa !46
  br label %108

27:                                               ; preds = %20
  %28 = icmp eq i16 %13, 4
  %29 = icmp ne i8 %9, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 14
  store i16 2, ptr %32, align 2, !tbaa !68
  %33 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 13
  store i16 2, ptr %33, align 4, !tbaa !46
  br label %108

34:                                               ; preds = %27
  %35 = icmp eq i16 %13, 7
  %36 = icmp ne i8 %10, 0
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 14
  store i16 3, ptr %39, align 2, !tbaa !68
  %40 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 13
  store i16 3, ptr %40, align 4, !tbaa !46
  br label %108

41:                                               ; preds = %34
  %42 = icmp eq i16 %13, 10
  br i1 %42, label %47, label %43

43:                                               ; preds = %41
  %44 = icmp eq i16 %13, 8
  %45 = icmp ne i8 %11, 0
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %49, label %52

47:                                               ; preds = %41
  %48 = icmp eq i8 %11, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43, %47
  %50 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 14
  store i16 4, ptr %50, align 2, !tbaa !68
  %51 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 13
  store i16 4, ptr %51, align 4, !tbaa !46
  br label %108

52:                                               ; preds = %47, %43
  %53 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 14
  %54 = load i16, ptr %53, align 2, !tbaa !68
  %55 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 13
  %56 = load i16, ptr %55, align 4, !tbaa !46
  %57 = icmp eq i16 %54, %56
  br i1 %57, label %75, label %58

58:                                               ; preds = %52
  %59 = icmp eq i16 %54, 1
  %60 = select i1 %59, i1 %15, i1 false
  %61 = icmp eq i16 %54, 0
  %62 = select i1 %61, i1 %22, i1 false
  %63 = select i1 %60, i1 true, i1 %62
  %64 = icmp eq i16 %54, 2
  %65 = select i1 %64, i1 %29, i1 false
  %66 = select i1 %63, i1 true, i1 %65
  %67 = icmp eq i16 %54, 3
  %68 = select i1 %67, i1 %36, i1 false
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %58
  %71 = icmp eq i16 %54, 4
  %72 = icmp ne i8 %11, 0
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %58
  store i16 %54, ptr %55, align 4, !tbaa !46
  br label %108

75:                                               ; preds = %70, %52
  %76 = icmp ne i16 %56, 1
  %77 = select i1 %76, i1 true, i1 %15
  br i1 %77, label %78, label %94

78:                                               ; preds = %75
  %79 = icmp ne i16 %56, 0
  %80 = select i1 %79, i1 true, i1 %22
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  store i16 0, ptr %53, align 2, !tbaa !68
  br label %97

82:                                               ; preds = %78
  %83 = icmp ne i16 %56, 2
  %84 = select i1 %83, i1 true, i1 %29
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = icmp ne i16 %56, 3
  %87 = select i1 %86, i1 true, i1 %36
  %88 = icmp ne i16 %56, 5
  %89 = and i1 %88, %87
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = icmp ne i16 %56, 4
  %92 = icmp ne i8 %11, 0
  %93 = select i1 %91, i1 true, i1 %92
  br i1 %93, label %108, label %94

94:                                               ; preds = %90, %85, %82, %75
  store i16 %56, ptr %53, align 2, !tbaa !68
  %95 = icmp eq i8 %8, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %94
  store i16 0, ptr %55, align 4, !tbaa !46
  br label %108

97:                                               ; preds = %81, %94
  %98 = icmp eq i8 %9, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %97
  store i16 2, ptr %55, align 4, !tbaa !46
  br label %108

100:                                              ; preds = %97
  %101 = icmp eq i8 %10, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %100
  store i16 3, ptr %55, align 4, !tbaa !46
  br label %108

103:                                              ; preds = %100
  br i1 %15, label %104, label %105

104:                                              ; preds = %103
  store i16 1, ptr %55, align 4, !tbaa !46
  br label %108

105:                                              ; preds = %103
  %106 = icmp eq i8 %11, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %105
  store i16 4, ptr %55, align 4, !tbaa !46
  br label %108

108:                                              ; preds = %17, %31, %74, %96, %102, %104, %107, %105, %99, %90, %49, %38, %24, %2
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @buttons_texture_users_from_context(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = getelementptr inbounds %struct.SpaceButs, ptr %2, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.SpaceButs, ptr %2, i64 0, i32 15
  %10 = load i8, ptr %9, align 8, !tbaa !69
  %11 = icmp eq ptr %8, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !48
  switch i16 %14, label %20 [
    i16 17235, label %71
    i16 16975, label %21
    i16 16716, label %15
    i16 20311, label %16
    i16 16717, label %17
    i16 21058, label %18
    i16 21324, label %19
  ]

15:                                               ; preds = %12
  br label %21

16:                                               ; preds = %12
  br label %21

17:                                               ; preds = %12
  br label %21

18:                                               ; preds = %12
  br label %21

19:                                               ; preds = %12
  br label %21

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %12, %20, %19, %18, %17, %16, %15
  %22 = phi ptr [ null, %12 ], [ null, %15 ], [ null, %16 ], [ null, %17 ], [ %8, %18 ], [ null, %19 ], [ null, %20 ]
  %23 = phi ptr [ null, %12 ], [ null, %15 ], [ null, %16 ], [ null, %17 ], [ null, %18 ], [ %8, %19 ], [ null, %20 ]
  %24 = phi ptr [ null, %12 ], [ null, %15 ], [ %8, %16 ], [ null, %17 ], [ null, %18 ], [ null, %19 ], [ null, %20 ]
  %25 = phi ptr [ null, %12 ], [ %8, %15 ], [ null, %16 ], [ null, %17 ], [ null, %18 ], [ null, %19 ], [ null, %20 ]
  %26 = phi ptr [ null, %12 ], [ null, %15 ], [ null, %16 ], [ %8, %17 ], [ null, %18 ], [ null, %19 ], [ null, %20 ]
  %27 = phi ptr [ %8, %12 ], [ null, %15 ], [ null, %16 ], [ null, %17 ], [ null, %18 ], [ null, %19 ], [ null, %20 ]
  %28 = tail call ptr @CTX_data_scene(ptr noundef %1) #8
  br label %46

29:                                               ; preds = %3
  %30 = tail call ptr @CTX_data_scene(ptr noundef %1) #8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %71, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !70
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.Base, ptr %34, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !71
  br label %39

39:                                               ; preds = %32, %36
  %40 = phi ptr [ %38, %36 ], [ null, %32 ]
  %41 = getelementptr inbounds %struct.Scene, ptr %30, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %1) #8
  %44 = tail call ptr @BKE_paint_brush(ptr noundef %43) #8
  %45 = tail call ptr @BKE_linestyle_active_from_scene(ptr noundef nonnull %30) #8
  br label %46

46:                                               ; preds = %21, %39
  %47 = phi ptr [ null, %39 ], [ %26, %21 ]
  %48 = phi ptr [ null, %39 ], [ %25, %21 ]
  %49 = phi ptr [ %44, %39 ], [ %22, %21 ]
  %50 = phi ptr [ %45, %39 ], [ %23, %21 ]
  %51 = phi ptr [ %42, %39 ], [ %24, %21 ]
  %52 = phi ptr [ %40, %39 ], [ %27, %21 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %71, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 3
  %56 = load i16, ptr %55, align 8, !tbaa !36
  %57 = icmp ne i16 %56, 10
  %58 = icmp ne ptr %48, null
  %59 = or i1 %58, %57
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 19
  %62 = load ptr, ptr %61, align 8, !tbaa !73
  br label %63

63:                                               ; preds = %60, %54
  %64 = phi ptr [ %48, %54 ], [ %62, %60 ]
  %65 = icmp eq ptr %47, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 32
  %68 = load i32, ptr %67, align 4, !tbaa !74
  %69 = trunc i32 %68 to i16
  %70 = tail call ptr @give_current_material(ptr noundef nonnull %52, i16 noundef signext %69) #8
  br label %71

71:                                               ; preds = %29, %12, %46, %66, %63
  %72 = phi ptr [ %64, %63 ], [ %64, %66 ], [ %48, %46 ], [ null, %12 ], [ null, %29 ]
  %73 = phi ptr [ %49, %63 ], [ %49, %66 ], [ %49, %46 ], [ null, %12 ], [ null, %29 ]
  %74 = phi ptr [ %50, %63 ], [ %50, %66 ], [ %50, %46 ], [ null, %12 ], [ null, %29 ]
  %75 = phi ptr [ %51, %63 ], [ %51, %66 ], [ %51, %46 ], [ null, %12 ], [ null, %29 ]
  %76 = phi ptr [ %52, %63 ], [ %52, %66 ], [ null, %46 ], [ null, %12 ], [ null, %29 ]
  %77 = phi i1 [ false, %63 ], [ false, %66 ], [ true, %46 ], [ true, %12 ], [ true, %29 ]
  %78 = phi ptr [ %47, %63 ], [ %70, %66 ], [ %47, %46 ], [ null, %12 ], [ null, %29 ]
  tail call fastcc void @BLI_listbase_clear(ptr noundef %0) #10
  %79 = icmp eq ptr %78, null
  %80 = and i8 %10, 8
  %81 = icmp ne i8 %80, 0
  %82 = select i1 %79, i1 true, i1 %81
  br i1 %82, label %86, label %83

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.Material, ptr %78, i64 0, i32 103
  %85 = load ptr, ptr %84, align 8, !tbaa !75
  tail call fastcc void @buttons_texture_users_find_nodetree(ptr noundef %0, ptr noundef nonnull %78, ptr noundef %85, ptr noundef nonnull @.str.4) #10
  br label %86

86:                                               ; preds = %83, %71
  %87 = icmp eq ptr %72, null
  %88 = select i1 %87, i1 true, i1 %81
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.Lamp, ptr %72, i64 0, i32 74
  %91 = load ptr, ptr %90, align 8, !tbaa !79
  tail call fastcc void @buttons_texture_users_find_nodetree(ptr noundef %0, ptr noundef nonnull %72, ptr noundef %91, ptr noundef nonnull @.str.5) #10
  br label %92

92:                                               ; preds = %89, %86
  %93 = icmp eq ptr %75, null
  %94 = select i1 %93, i1 true, i1 %81
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.World, ptr %75, i64 0, i32 75
  %97 = load ptr, ptr %96, align 8, !tbaa !81
  tail call fastcc void @buttons_texture_users_find_nodetree(ptr noundef %0, ptr noundef nonnull %75, ptr noundef %97, ptr noundef nonnull @.str.6) #10
  br label %98

98:                                               ; preds = %95, %92
  %99 = icmp eq ptr %74, null
  %100 = select i1 %99, i1 true, i1 %81
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %74, i64 0, i32 40
  %103 = load ptr, ptr %102, align 8, !tbaa !83
  tail call fastcc void @buttons_texture_users_find_nodetree(ptr noundef %0, ptr noundef nonnull %74, ptr noundef %103, ptr noundef nonnull @.str.7) #10
  br label %104

104:                                              ; preds = %101, %98
  br i1 %77, label %135, label %105

105:                                              ; preds = %104
  %106 = tail call ptr @psys_get_current(ptr noundef nonnull %76) #8
  tail call void @modifiers_foreachTexLink(ptr noundef nonnull %76, ptr noundef nonnull @buttons_texture_modifier_foreach, ptr noundef %0) #8
  %107 = icmp eq ptr %106, null
  %108 = select i1 %107, i1 true, i1 %81
  br i1 %108, label %125, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.ParticleSystem, ptr %106, i64 0, i32 2
  %111 = getelementptr inbounds %struct.ParticleSystem, ptr %106, i64 0, i32 18
  br label %112

112:                                              ; preds = %109, %122
  %113 = phi i64 [ 0, %109 ], [ %123, %122 ]
  %114 = load ptr, ptr %110, align 8, !tbaa !85
  %115 = getelementptr inbounds %struct.ParticleSettings, ptr %114, i64 0, i32 121, i64 %113
  %116 = load ptr, ptr %115, align 8, !tbaa !47
  %117 = icmp eq ptr %116, null
  br i1 %117, label %122, label %118

118:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @RNA_pointer_create(ptr noundef nonnull %114, ptr noundef nonnull @RNA_ParticleSettingsTextureSlot, ptr noundef nonnull %116, ptr noundef nonnull %4) #8
  %119 = call ptr @RNA_struct_find_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.8) #8
  %120 = load ptr, ptr %110, align 8, !tbaa !85
  %121 = call i32 @RNA_struct_ui_icon(ptr noundef nonnull @RNA_ParticleSettings) #8
  call fastcc void @buttons_texture_user_property_add(ptr noundef %0, ptr noundef %120, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4, ptr noundef %119, ptr noundef nonnull @.str.9, i32 noundef %121, ptr noundef nonnull %111) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  br label %122

122:                                              ; preds = %112, %118
  %123 = add nuw nsw i64 %113, 1
  %124 = icmp eq i64 %123, 18
  br i1 %124, label %125, label %112, !llvm.loop !87

125:                                              ; preds = %122, %105
  %126 = getelementptr inbounds %struct.Object, ptr %76, i64 0, i32 110
  %127 = load ptr, ptr %126, align 8, !tbaa !38
  %128 = icmp eq ptr %127, null
  br i1 %128, label %135, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.PartDeflect, ptr %127, i64 0, i32 2
  %131 = load i16, ptr %130, align 2, !tbaa !39
  %132 = icmp eq i16 %131, 6
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @RNA_pointer_create(ptr noundef nonnull %76, ptr noundef nonnull @RNA_FieldSettings, ptr noundef nonnull %127, ptr noundef nonnull %5) #8
  %134 = call ptr @RNA_struct_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.8) #8
  call fastcc void @buttons_texture_user_property_add(ptr noundef %0, ptr noundef nonnull %76, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %5, ptr noundef %134, ptr noundef nonnull @.str.10, i32 noundef 345, ptr noundef nonnull @.str.11) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  br label %135

135:                                              ; preds = %125, %129, %133, %104
  %136 = icmp eq ptr %73, null
  br i1 %136, label %142, label %137

137:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %138 = getelementptr inbounds %struct.Brush, ptr %73, i64 0, i32 3
  call void @RNA_pointer_create(ptr noundef nonnull %73, ptr noundef nonnull @RNA_BrushTextureSlot, ptr noundef nonnull %138, ptr noundef nonnull %6) #8
  %139 = call ptr @RNA_struct_find_property(ptr noundef nonnull %6, ptr noundef nonnull @.str.8) #8
  call fastcc void @buttons_texture_user_property_add(ptr noundef %0, ptr noundef nonnull %73, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %6, ptr noundef %139, ptr noundef nonnull @.str.12, i32 noundef 182, ptr noundef nonnull @.str.12) #10
  %140 = getelementptr inbounds %struct.Brush, ptr %73, i64 0, i32 4
  call void @RNA_pointer_create(ptr noundef nonnull %73, ptr noundef nonnull @RNA_BrushTextureSlot, ptr noundef nonnull %140, ptr noundef nonnull %6) #8
  %141 = call ptr @RNA_struct_find_property(ptr noundef nonnull %6, ptr noundef nonnull @.str.8) #8
  call fastcc void @buttons_texture_user_property_add(ptr noundef %0, ptr noundef nonnull %73, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %6, ptr noundef %141, ptr noundef nonnull @.str.12, i32 noundef 182, ptr noundef nonnull @.str.13) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  br label %142

142:                                              ; preds = %137, %135
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateTextureUser(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [128 x i8], align 16
  %4 = tail call ptr @CTX_wm_space_buts(ptr noundef %1) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #9
  br label %36

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #9
  %12 = icmp eq ptr %10, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ButsContextTexture, ptr %10, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 0) #8
  br label %36

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ButsTextureUser, ptr %15, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !88
  %21 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %20, i64 noundef 128) #8
  %22 = getelementptr inbounds %struct.ButsTextureUser, ptr %15, i64 0, i32 8
  %23 = load i32, ptr %22, align 8, !tbaa !89
  %24 = icmp eq i32 %23, 0
  %25 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !90
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
  %34 = load i32, ptr %33, align 8, !tbaa !94
  %35 = and i32 %34, -65
  store i32 %35, ptr %33, align 8, !tbaa !94
  br label %36

36:                                               ; preds = %6, %8, %31, %17
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #9
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_buts(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconTextMenuBut(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @template_texture_user_menu(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [128 x i8], align 16
  %5 = alloca %struct.PointerRNA, align 8
  %6 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.SpaceButs, ptr %6, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = tail call ptr @uiLayoutGetBlock(ptr noundef %1) #8
  %10 = load ptr, ptr %8, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %59, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.uiBlock, ptr %9, i64 0, i32 2, i32 1
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  br label %15

15:                                               ; preds = %12, %47
  %16 = phi ptr [ %10, %12 ], [ %57, %47 ]
  %17 = phi ptr [ null, %12 ], [ %56, %47 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #9
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %struct.ButsTextureUser, ptr %16, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !96
  br i1 %18, label %24, label %21

21:                                               ; preds = %15
  %22 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %20) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %15, %21
  call void @uiItemL(ptr noundef %1, ptr noundef %20, i32 noundef 0) #8
  %25 = load ptr, ptr %13, align 8, !tbaa !97
  %26 = getelementptr inbounds %struct.uiBut, ptr %25, i64 0, i32 3
  store i32 2, ptr %26, align 4, !tbaa !101
  br label %27

27:                                               ; preds = %24, %21
  %28 = getelementptr inbounds %struct.ButsTextureUser, ptr %16, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !57
  %30 = icmp eq ptr %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %32 = getelementptr inbounds %struct.ButsTextureUser, ptr %16, i64 0, i32 3
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %32, ptr noundef nonnull %29) #8
  %33 = load ptr, ptr %14, align 8, !tbaa !102
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds %struct.ButsTextureUser, ptr %16, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !88
  br i1 %34, label %40, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 4, i64 2
  %39 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 128, ptr noundef nonnull @.str.16, ptr noundef %36, ptr noundef nonnull %38) #8
  br label %42

40:                                               ; preds = %31
  %41 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 128, ptr noundef nonnull @.str.17, ptr noundef %36) #8
  br label %42

42:                                               ; preds = %40, %37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  br label %47

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.ButsTextureUser, ptr %16, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !88
  %46 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 128, ptr noundef nonnull @.str.17, ptr noundef %45) #8
  br label %47

47:                                               ; preds = %43, %42
  %48 = getelementptr inbounds %struct.ButsTextureUser, ptr %16, i64 0, i32 8
  %49 = load i32, ptr %48, align 8, !tbaa !89
  %50 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !90
  %51 = shl i16 %50, 2
  %52 = call ptr @uiDefIconTextBut(ptr noundef %9, i32 noundef 512, i32 noundef 0, i32 noundef %49, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i16 noundef signext %51, i16 noundef signext %50, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.2) #8
  %53 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %54 = call ptr %53(ptr noundef nonnull %16) #8
  call void @uiButSetNFunc(ptr noundef %52, ptr noundef nonnull @template_texture_select, ptr noundef %54, ptr noundef null) #8
  %55 = getelementptr inbounds %struct.ButsTextureUser, ptr %16, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #9
  %57 = load ptr, ptr %16, align 8, !tbaa !47
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %15, !llvm.loop !103

59:                                               ; preds = %47, %3
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefMenuBut(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetMenuFromPulldown(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateTextureShow(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef readnone %3) local_unnamed_addr #0 {
  %5 = tail call ptr @CTX_wm_space_buts(ptr noundef %1) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %41, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 7
  %13 = load i16, ptr %12, align 8, !tbaa !67
  %14 = icmp eq i16 %13, 6
  br i1 %14, label %41, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %9, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !102
  br label %21

21:                                               ; preds = %18, %30
  %22 = phi ptr [ %16, %18 ], [ %31, %30 ]
  %23 = getelementptr inbounds %struct.ButsTextureUser, ptr %22, i64 0, i32 3, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  %25 = icmp eq ptr %24, %20
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ButsTextureUser, ptr %22, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = icmp eq ptr %28, %3
  br i1 %29, label %33, label %30

30:                                               ; preds = %21, %26
  %31 = load ptr, ptr %22, align 8, !tbaa !47
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %21, !llvm.loop !104

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.ButsTextureUser, ptr %22, i64 0, i32 3, i32 2
  %35 = getelementptr inbounds %struct.ButsTextureUser, ptr %22, i64 0, i32 4
  %36 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #8
  %37 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !90
  %38 = tail call ptr @uiDefIconBut(ptr noundef %36, i32 noundef 512, i32 noundef 0, i32 noundef 107, i32 noundef 0, i32 noundef 0, i16 noundef signext %37, i16 noundef signext %37, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #8
  %39 = load ptr, ptr %34, align 8, !tbaa !53
  %40 = load ptr, ptr %35, align 8, !tbaa !57
  tail call void @uiButSetFunc(ptr noundef %38, ptr noundef nonnull @template_texture_show, ptr noundef %39, ptr noundef %40) #8
  br label %41

41:                                               ; preds = %30, %15, %4, %33, %7, %11
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @template_texture_show(ptr noundef %0, ptr noundef readnone %1, ptr noundef readnone %2) #0 {
  %4 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %10, %22
  %14 = phi ptr [ %23, %22 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.ButsTextureUser, ptr %14, i64 0, i32 3, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ButsTextureUser, ptr %14, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %25, label %22

22:                                               ; preds = %13, %18
  %23 = load ptr, ptr %14, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %13, !llvm.loop !105

25:                                               ; preds = %18
  tail call void @template_texture_select(ptr noundef %0, ptr noundef nonnull %14, ptr poison) #10
  %26 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 7
  store i16 6, ptr %26, align 8, !tbaa !67
  %27 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 9
  store i16 6, ptr %27, align 4, !tbaa !106
  %28 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 12
  store i16 1, ptr %28, align 2, !tbaa !107
  %29 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  tail call void @ED_area_tag_redraw(ptr noundef %29) #8
  br label %30

30:                                               ; preds = %22, %10, %3, %25, %6
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_linestyle_active_from_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #4 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @buttons_texture_users_find_nodetree(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = icmp eq ptr %2, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 1
  br label %13

13:                                               ; preds = %11, %33
  %14 = phi ptr [ %9, %11 ], [ %34, %33 ]
  %15 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !108
  %17 = getelementptr inbounds %struct.bNodeType, ptr %16, i64 0, i32 14
  %18 = load i16, ptr %17, align 4, !tbaa !109
  %19 = icmp eq i16 %18, 13
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @RNA_pointer_create(ptr noundef nonnull %2, ptr noundef nonnull @RNA_Node, ptr noundef nonnull %14, ptr noundef nonnull %5) #8
  %21 = load ptr, ptr %12, align 8, !tbaa !112
  %22 = call i32 @RNA_struct_ui_icon(ptr noundef %21) #8
  %23 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 6
  call fastcc void @buttons_texture_user_node_add(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %14, ptr noundef %3, i32 noundef %22, ptr noundef nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  br label %33

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 8
  %26 = load i16, ptr %25, align 4, !tbaa !113
  %27 = icmp eq i16 %26, 2
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 20
  %30 = load ptr, ptr %29, align 8, !tbaa !114
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  call fastcc void @buttons_texture_users_find_nodetree(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %30, ptr noundef %3) #10
  br label %33

33:                                               ; preds = %20, %32, %28, %24
  %34 = load ptr, ptr %14, align 8, !tbaa !47
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %13, !llvm.loop !115

36:                                               ; preds = %33, %7, %4
  ret void
}

; Function Attrs: optsize
declare ptr @psys_get_current(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @buttons_texture_modifier_foreach(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_Modifier, ptr noundef %2, ptr noundef nonnull %5) #8
  %6 = call ptr @RNA_struct_find_property(ptr noundef nonnull %5, ptr noundef %3) #8
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = call i32 @RNA_struct_ui_icon(ptr noundef %8) #8
  %10 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 6
  call fastcc void @buttons_texture_user_property_add(ptr noundef %0, ptr noundef %1, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %5, ptr noundef %6, ptr noundef nonnull @.str.15, i32 noundef %9, ptr noundef nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @buttons_texture_user_property_add(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %9 = tail call ptr %8(i64 noundef 104, ptr noundef nonnull @.str.14) #8
  %10 = getelementptr inbounds %struct.ButsTextureUser, ptr %9, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !116
  %11 = getelementptr inbounds %struct.ButsTextureUser, ptr %9, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !117
  %12 = getelementptr inbounds %struct.ButsTextureUser, ptr %9, i64 0, i32 4
  store ptr %3, ptr %12, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.ButsTextureUser, ptr %9, i64 0, i32 7
  store ptr %4, ptr %13, align 8, !tbaa !96
  %14 = getelementptr inbounds %struct.ButsTextureUser, ptr %9, i64 0, i32 8
  store i32 %5, ptr %14, align 8, !tbaa !89
  %15 = getelementptr inbounds %struct.ButsTextureUser, ptr %9, i64 0, i32 9
  store ptr %6, ptr %15, align 8, !tbaa !88
  %16 = tail call i32 @BLI_countlist(ptr noundef %0) #8
  %17 = getelementptr inbounds %struct.ButsTextureUser, ptr %9, i64 0, i32 10
  store i32 %16, ptr %17, align 8, !tbaa !118
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %9) #8
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_struct_ui_icon(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @buttons_texture_user_node_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %9 = tail call ptr %8(i64 noundef 104, ptr noundef nonnull @.str.14) #8
  %10 = getelementptr inbounds %struct.ButsTextureUser, ptr %9, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !116
  %11 = getelementptr inbounds %struct.ButsTextureUser, ptr %9, i64 0, i32 5
  store ptr %2, ptr %11, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.ButsTextureUser, ptr %9, i64 0, i32 6
  store ptr %3, ptr %12, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.ButsTextureUser, ptr %9, i64 0, i32 7
  store ptr %4, ptr %13, align 8, !tbaa !96
  %14 = getelementptr inbounds %struct.ButsTextureUser, ptr %9, i64 0, i32 8
  store i32 %5, ptr %14, align 8, !tbaa !89
  %15 = getelementptr inbounds %struct.ButsTextureUser, ptr %9, i64 0, i32 9
  store ptr %6, ptr %15, align 8, !tbaa !88
  %16 = tail call i32 @BLI_countlist(ptr noundef %0) #8
  %17 = getelementptr inbounds %struct.ButsTextureUser, ptr %9, i64 0, i32 10
  store i32 %16, ptr %17, align 8, !tbaa !118
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %9) #8
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconTextBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetNFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @template_texture_select(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %56, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SpaceButs, ptr %5, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %56, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ButsTextureUser, ptr %1, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %17 = getelementptr inbounds %struct.ButsTextureUser, ptr %1, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = load ptr, ptr %12, align 8, !tbaa !60
  tail call void @ED_node_set_active(ptr noundef %16, ptr noundef %18, ptr noundef %19) #8
  %20 = getelementptr inbounds %struct.ButsContextTexture, ptr %9, i64 0, i32 1
  store ptr null, ptr %20, align 8, !tbaa !51
  br label %51

21:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %22 = getelementptr inbounds %struct.ButsTextureUser, ptr %1, i64 0, i32 3
  %23 = getelementptr inbounds %struct.ButsTextureUser, ptr %1, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %22, ptr noundef %24) #8
  %25 = getelementptr inbounds i8, ptr %4, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa.struct !58
  %27 = getelementptr inbounds i8, ptr %4, i64 16
  %28 = load ptr, ptr %27, align 8, !tbaa.struct !59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  %29 = call zeroext i8 @RNA_struct_is_a(ptr noundef %26, ptr noundef nonnull @RNA_Texture) #8
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, ptr null, ptr %28
  %32 = getelementptr inbounds %struct.ButsContextTexture, ptr %9, i64 0, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !51
  %33 = getelementptr inbounds %struct.ButsTextureUser, ptr %1, i64 0, i32 3, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !119
  %35 = icmp eq ptr %34, @RNA_ParticleSettingsTextureSlot
  br i1 %35, label %36, label %51

36:                                               ; preds = %21
  %37 = load ptr, ptr %22, align 8, !tbaa !120
  %38 = getelementptr inbounds %struct.ButsTextureUser, ptr %1, i64 0, i32 3, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !53
  %40 = getelementptr inbounds %struct.ParticleSettings, ptr %37, i64 0, i32 10
  br label %41

41:                                               ; preds = %36, %48
  %42 = phi i64 [ 0, %36 ], [ %49, %48 ]
  %43 = getelementptr inbounds %struct.ParticleSettings, ptr %37, i64 0, i32 121, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !47
  %45 = icmp eq ptr %39, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = trunc i64 %42 to i16
  store i16 %47, ptr %40, align 2, !tbaa !121
  br label %48

48:                                               ; preds = %41, %46
  %49 = add nuw nsw i64 %42, 1
  %50 = icmp eq i64 %49, 18
  br i1 %50, label %51, label %41, !llvm.loop !123

51:                                               ; preds = %48, %21, %15
  %52 = getelementptr inbounds %struct.ButsContextTexture, ptr %9, i64 0, i32 2
  store ptr %1, ptr %52, align 8, !tbaa !49
  %53 = getelementptr inbounds %struct.ButsTextureUser, ptr %1, i64 0, i32 10
  %54 = load i32, ptr %53, align 8, !tbaa !118
  %55 = getelementptr inbounds %struct.ButsContextTexture, ptr %9, i64 0, i32 3
  store i32 %54, ptr %55, align 8, !tbaa !52
  br label %56

56:                                               ; preds = %3, %7, %51
  ret void
}

; Function Attrs: optsize
declare void @ED_node_set_active(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 136}
!6 = !{!"Scene", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !13, i64 152, !8, i64 168, !8, i64 176, !9, i64 184, !9, i64 196, !9, i64 208, !9, i64 220, !12, i64 232, !12, i64 236, !12, i64 240, !11, i64 244, !9, i64 246, !9, i64 247, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !14, i64 280, !24, i64 4264, !13, i64 4296, !13, i64 4312, !8, i64 4328, !8, i64 4336, !8, i64 4344, !8, i64 4352, !8, i64 4360, !8, i64 4368, !11, i64 4376, !11, i64 4378, !12, i64 4380, !13, i64 4384, !25, i64 4400, !26, i64 4416, !29, i64 4600, !8, i64 4608, !30, i64 4616, !8, i64 4640, !31, i64 4648, !31, i64 4656, !17, i64 4664, !18, i64 4824, !32, i64 4888, !8, i64 4952}
!7 = !{!"ID", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !8, i64 112}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"short", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"ListBase", !8, i64 0, !8, i64 8}
!14 = !{!"RenderData", !15, i64 0, !8, i64 248, !8, i64 256, !19, i64 264, !20, i64 328, !12, i64 400, !12, i64 404, !12, i64 408, !16, i64 412, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !11, i64 432, !11, i64 434, !16, i64 436, !16, i64 440, !16, i64 444, !16, i64 448, !16, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !12, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !12, i64 484, !12, i64 488, !11, i64 492, !11, i64 494, !12, i64 496, !12, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !9, i64 514, !9, i64 515, !12, i64 516, !12, i64 520, !12, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !21, i64 544, !21, i64 560, !22, i64 576, !13, i64 592, !11, i64 608, !11, i64 610, !16, i64 612, !16, i64 616, !16, i64 620, !16, i64 624, !12, i64 628, !16, i64 632, !16, i64 636, !16, i64 640, !16, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !16, i64 660, !16, i64 664, !11, i64 668, !11, i64 670, !16, i64 672, !16, i64 676, !9, i64 680, !12, i64 1704, !11, i64 1708, !11, i64 1710, !9, i64 1712, !9, i64 2480, !9, i64 2496, !9, i64 2512, !9, i64 2513, !9, i64 2514, !9, i64 2515, !12, i64 2520, !11, i64 2524, !11, i64 2526, !16, i64 2528, !16, i64 2532, !11, i64 2536, !11, i64 2538, !16, i64 2540, !11, i64 2544, !11, i64 2546, !12, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !16, i64 2560, !16, i64 2564, !8, i64 2568, !12, i64 2576, !16, i64 2580, !9, i64 2584, !23, i64 2616, !12, i64 3976, !12, i64 3980}
!15 = !{!"ImageFormatData", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !11, i64 8, !11, i64 10, !16, i64 12, !9, i64 16, !9, i64 17, !9, i64 18, !17, i64 24, !18, i64 184}
!16 = !{!"float", !9, i64 0}
!17 = !{!"ColorManagedViewSettings", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 72, !16, i64 136, !16, i64 140, !8, i64 144, !8, i64 152}
!18 = !{!"ColorManagedDisplaySettings", !9, i64 0}
!19 = !{!"QuicktimeCodecSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !11, i64 48, !11, i64 50, !12, i64 52, !12, i64 56, !12, i64 60}
!20 = !{!"FFMpegCodecData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !16, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !8, i64 64}
!21 = !{!"rctf", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12}
!22 = !{!"rcti", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!23 = !{!"BakeData", !15, i64 0, !9, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !16, i64 1280, !16, i64 1284, !9, i64 1288, !9, i64 1291, !9, i64 1292, !9, i64 1293, !9, i64 1296}
!24 = !{!"AudioData", !12, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !12, i64 16, !11, i64 20, !11, i64 22, !16, i64 24, !16, i64 28}
!25 = !{!"GameFraming", !9, i64 0, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15}
!26 = !{!"GameData", !25, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !9, i64 34, !27, i64 40, !11, i64 64, !11, i64 66, !16, i64 68, !28, i64 72, !16, i64 128, !16, i64 132, !12, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !16, i64 164, !16, i64 168, !16, i64 172, !16, i64 176, !16, i64 180}
!27 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !16, i64 8, !16, i64 12, !8, i64 16}
!28 = !{!"RecastData", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !12, i64 40, !16, i64 44, !16, i64 48, !11, i64 52, !11, i64 54}
!29 = !{!"UnitSettings", !16, i64 0, !9, i64 4, !9, i64 5, !11, i64 6}
!30 = !{!"PhysicsSettings", !9, i64 0, !12, i64 12, !12, i64 16, !12, i64 20}
!31 = !{!"long", !9, i64 0}
!32 = !{!"ColorManagedColorspaceSettings", !9, i64 0}
!33 = !{!34, !12, i64 456}
!34 = !{!"Object", !7, i64 0, !8, i64 120, !8, i64 128, !11, i64 136, !11, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !9, i64 152, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !35, i64 312, !8, i64 360, !13, i64 368, !13, i64 384, !13, i64 400, !13, i64 416, !12, i64 432, !12, i64 436, !8, i64 440, !8, i64 448, !12, i64 456, !12, i64 460, !9, i64 464, !9, i64 476, !9, i64 488, !9, i64 500, !9, i64 512, !9, i64 524, !9, i64 536, !9, i64 548, !9, i64 560, !9, i64 576, !9, i64 592, !9, i64 604, !16, i64 616, !16, i64 620, !9, i64 624, !9, i64 688, !9, i64 752, !9, i64 816, !9, i64 880, !12, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !9, i64 966, !9, i64 967, !12, i64 968, !12, i64 972, !12, i64 976, !12, i64 980, !12, i64 984, !16, i64 988, !16, i64 992, !16, i64 996, !16, i64 1000, !16, i64 1004, !16, i64 1008, !16, i64 1012, !16, i64 1016, !16, i64 1020, !16, i64 1024, !16, i64 1028, !16, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !9, i64 1042, !9, i64 1043, !11, i64 1044, !9, i64 1046, !9, i64 1047, !16, i64 1048, !16, i64 1052, !13, i64 1056, !13, i64 1072, !13, i64 1088, !13, i64 1104, !16, i64 1120, !11, i64 1124, !11, i64 1126, !9, i64 1128, !12, i64 1144, !12, i64 1148, !8, i64 1152, !9, i64 1160, !9, i64 1161, !11, i64 1162, !9, i64 1164, !13, i64 1176, !13, i64 1192, !13, i64 1208, !13, i64 1224, !8, i64 1240, !8, i64 1248, !8, i64 1256, !9, i64 1264, !9, i64 1265, !11, i64 1266, !16, i64 1268, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !31, i64 1304, !31, i64 1312, !12, i64 1320, !12, i64 1324, !13, i64 1328, !13, i64 1344, !8, i64 1360, !8, i64 1368, !8, i64 1376, !9, i64 1384, !8, i64 1392, !13, i64 1400, !8, i64 1416}
!35 = !{!"bAnimVizSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!36 = !{!34, !11, i64 136}
!37 = !{!34, !8, i64 1224}
!38 = !{!34, !8, i64 1240}
!39 = !{!40, !11, i64 6}
!40 = !{!"PartDeflect", !12, i64 0, !11, i64 4, !11, i64 6, !11, i64 8, !11, i64 10, !11, i64 12, !11, i64 14, !11, i64 16, !11, i64 18, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !16, i64 56, !16, i64 60, !16, i64 64, !16, i64 68, !16, i64 72, !16, i64 76, !16, i64 80, !16, i64 84, !16, i64 88, !16, i64 92, !16, i64 96, !16, i64 100, !16, i64 104, !16, i64 108, !16, i64 112, !16, i64 116, !16, i64 120, !16, i64 124, !8, i64 128, !8, i64 136, !16, i64 144, !12, i64 148, !8, i64 152}
!41 = !{!9, !9, i64 0}
!42 = !{!43, !8, i64 264}
!43 = !{!"SpaceButs", !8, i64 0, !8, i64 8, !13, i64 16, !12, i64 32, !16, i64 36, !9, i64 40, !44, i64 56, !11, i64 216, !11, i64 218, !11, i64 220, !11, i64 222, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !9, i64 232, !9, i64 233, !8, i64 240, !12, i64 248, !12, i64 252, !8, i64 256, !8, i64 264}
!44 = !{!"View2D", !21, i64 0, !21, i64 16, !22, i64 32, !22, i64 48, !22, i64 64, !9, i64 80, !9, i64 88, !16, i64 96, !16, i64 100, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !8, i64 128, !12, i64 136, !12, i64 140, !8, i64 144, !8, i64 152}
!45 = !{!43, !8, i64 256}
!46 = !{!43, !11, i64 228}
!47 = !{!8, !8, i64 0}
!48 = !{!11, !11, i64 0}
!49 = !{!50, !8, i64 24}
!50 = !{!"ButsContextTexture", !13, i64 0, !8, i64 16, !8, i64 24, !12, i64 32}
!51 = !{!50, !8, i64 16}
!52 = !{!50, !12, i64 32}
!53 = !{!54, !8, i64 40}
!54 = !{!"ButsTextureUser", !8, i64 0, !8, i64 8, !8, i64 16, !55, i64 24, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !12, i64 80, !8, i64 88, !12, i64 96}
!55 = !{!"PointerRNA", !56, i64 0, !8, i64 8, !8, i64 16}
!56 = !{!"", !8, i64 0}
!57 = !{!54, !8, i64 48}
!58 = !{i64 0, i64 8, !47, i64 8, i64 8, !47}
!59 = !{i64 0, i64 8, !47}
!60 = !{!54, !8, i64 64}
!61 = !{!62, !12, i64 168}
!62 = !{!"bNode", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !9, i64 40, !9, i64 104, !12, i64 168, !11, i64 172, !11, i64 174, !11, i64 176, !11, i64 178, !11, i64 180, !11, i64 182, !11, i64 184, !11, i64 186, !9, i64 188, !13, i64 200, !13, i64 216, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !13, i64 264, !16, i64 280, !16, i64 284, !16, i64 288, !16, i64 292, !16, i64 296, !16, i64 300, !16, i64 304, !12, i64 308, !9, i64 312, !11, i64 376, !11, i64 378, !16, i64 380, !16, i64 384, !11, i64 388, !11, i64 390, !8, i64 392, !21, i64 400, !21, i64 416, !21, i64 432, !11, i64 448, !11, i64 450, !12, i64 452, !8, i64 456}
!63 = !{!54, !8, i64 56}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{i8 0, i8 2}
!67 = !{!43, !11, i64 216}
!68 = !{!43, !11, i64 230}
!69 = !{!43, !9, i64 232}
!70 = !{!6, !8, i64 168}
!71 = !{!72, !8, i64 32}
!72 = !{!"Base", !8, i64 0, !8, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !11, i64 28, !11, i64 30, !8, i64 32}
!73 = !{!34, !8, i64 296}
!74 = !{!34, !12, i64 460}
!75 = !{!76, !8, i64 768}
!76 = !{!"Material", !7, i64 0, !8, i64 120, !11, i64 128, !11, i64 130, !16, i64 132, !16, i64 136, !16, i64 140, !16, i64 144, !16, i64 148, !16, i64 152, !16, i64 156, !16, i64 160, !16, i64 164, !16, i64 168, !16, i64 172, !16, i64 176, !16, i64 180, !16, i64 184, !16, i64 188, !16, i64 192, !16, i64 196, !16, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !77, i64 224, !78, i64 312, !16, i64 328, !16, i64 332, !16, i64 336, !16, i64 340, !16, i64 344, !16, i64 348, !16, i64 352, !11, i64 356, !11, i64 358, !11, i64 360, !9, i64 362, !9, i64 363, !16, i64 364, !16, i64 368, !11, i64 372, !11, i64 374, !16, i64 376, !16, i64 380, !16, i64 384, !16, i64 388, !11, i64 392, !11, i64 394, !12, i64 396, !12, i64 400, !12, i64 404, !12, i64 408, !11, i64 412, !11, i64 414, !11, i64 416, !11, i64 418, !16, i64 420, !16, i64 424, !16, i64 428, !16, i64 432, !16, i64 436, !16, i64 440, !16, i64 444, !16, i64 448, !16, i64 452, !16, i64 456, !9, i64 460, !16, i64 524, !16, i64 528, !16, i64 532, !12, i64 536, !9, i64 540, !9, i64 541, !9, i64 542, !9, i64 543, !11, i64 544, !11, i64 546, !11, i64 548, !9, i64 550, !9, i64 551, !11, i64 552, !11, i64 554, !16, i64 556, !16, i64 560, !9, i64 564, !16, i64 580, !16, i64 584, !11, i64 588, !11, i64 590, !8, i64 592, !8, i64 600, !9, i64 608, !9, i64 609, !9, i64 610, !9, i64 611, !11, i64 612, !11, i64 614, !16, i64 616, !16, i64 620, !9, i64 624, !8, i64 768, !8, i64 776, !8, i64 784, !8, i64 792, !16, i64 800, !16, i64 804, !16, i64 808, !16, i64 812, !16, i64 816, !11, i64 820, !11, i64 822, !9, i64 824, !9, i64 836, !16, i64 848, !16, i64 852, !16, i64 856, !16, i64 860, !16, i64 864, !16, i64 868, !16, i64 872, !11, i64 876, !11, i64 878, !12, i64 880, !11, i64 884, !11, i64 886, !9, i64 888, !11, i64 904, !11, i64 906, !11, i64 908, !11, i64 910, !11, i64 912, !9, i64 914, !8, i64 920, !13, i64 928}
!77 = !{!"VolumeSettings", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !9, i64 16, !9, i64 28, !9, i64 40, !16, i64 52, !16, i64 56, !16, i64 60, !11, i64 64, !11, i64 66, !11, i64 68, !11, i64 70, !16, i64 72, !16, i64 76, !16, i64 80, !16, i64 84}
!78 = !{!"GameSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!79 = !{!80, !8, i64 512}
!80 = !{!"Lamp", !7, i64 0, !8, i64 120, !11, i64 128, !11, i64 130, !12, i64 132, !11, i64 136, !11, i64 138, !16, i64 140, !16, i64 144, !16, i64 148, !16, i64 152, !16, i64 156, !16, i64 160, !16, i64 164, !16, i64 168, !16, i64 172, !16, i64 176, !16, i64 180, !16, i64 184, !16, i64 188, !16, i64 192, !16, i64 196, !8, i64 200, !11, i64 208, !11, i64 210, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !11, i64 240, !11, i64 242, !11, i64 244, !11, i64 246, !9, i64 248, !9, i64 249, !11, i64 250, !11, i64 252, !11, i64 254, !11, i64 256, !11, i64 258, !16, i64 260, !16, i64 264, !16, i64 268, !16, i64 272, !11, i64 276, !11, i64 278, !11, i64 280, !11, i64 282, !11, i64 284, !11, i64 286, !16, i64 288, !16, i64 292, !16, i64 296, !16, i64 300, !16, i64 304, !16, i64 308, !16, i64 312, !16, i64 316, !16, i64 320, !16, i64 324, !16, i64 328, !16, i64 332, !16, i64 336, !11, i64 340, !9, i64 342, !8, i64 344, !9, i64 352, !11, i64 496, !11, i64 498, !9, i64 500, !8, i64 504, !8, i64 512}
!81 = !{!82, !8, i64 520}
!82 = !{!"World", !7, i64 0, !8, i64 120, !11, i64 128, !11, i64 130, !11, i64 132, !11, i64 134, !16, i64 136, !16, i64 140, !16, i64 144, !16, i64 148, !16, i64 152, !16, i64 156, !16, i64 160, !16, i64 164, !16, i64 168, !16, i64 172, !16, i64 176, !16, i64 180, !16, i64 184, !16, i64 188, !16, i64 192, !16, i64 196, !11, i64 200, !11, i64 202, !11, i64 204, !11, i64 206, !11, i64 208, !11, i64 210, !11, i64 212, !11, i64 214, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !16, i64 240, !16, i64 244, !16, i64 248, !16, i64 252, !16, i64 256, !16, i64 260, !11, i64 264, !11, i64 266, !11, i64 268, !11, i64 270, !16, i64 272, !16, i64 276, !16, i64 280, !16, i64 284, !11, i64 288, !11, i64 290, !11, i64 292, !11, i64 294, !16, i64 296, !16, i64 300, !16, i64 304, !16, i64 308, !16, i64 312, !16, i64 316, !16, i64 320, !11, i64 324, !11, i64 326, !11, i64 328, !11, i64 330, !11, i64 332, !11, i64 334, !8, i64 336, !8, i64 344, !8, i64 352, !9, i64 360, !11, i64 504, !11, i64 506, !9, i64 508, !8, i64 512, !8, i64 520}
!83 = !{!84, !8, i64 392}
!84 = !{!"FreestyleLineStyle", !7, i64 0, !8, i64 120, !16, i64 128, !16, i64 132, !16, i64 136, !16, i64 140, !16, i64 144, !12, i64 148, !16, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !16, i64 172, !16, i64 176, !16, i64 180, !16, i64 184, !16, i64 188, !12, i64 192, !11, i64 196, !11, i64 198, !11, i64 200, !11, i64 202, !11, i64 204, !11, i64 206, !12, i64 208, !12, i64 212, !16, i64 216, !11, i64 220, !11, i64 222, !11, i64 224, !9, i64 226, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !11, i64 240, !11, i64 242, !12, i64 244, !9, i64 248, !8, i64 392, !13, i64 400, !13, i64 416, !13, i64 432, !13, i64 448}
!85 = !{!86, !8, i64 16}
!86 = !{!"ParticleSystem", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !13, i64 72, !13, i64 88, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !13, i64 152, !9, i64 168, !9, i64 232, !16, i64 296, !16, i64 300, !16, i64 304, !12, i64 308, !12, i64 312, !12, i64 316, !12, i64 320, !12, i64 324, !12, i64 328, !12, i64 332, !12, i64 336, !11, i64 340, !11, i64 342, !11, i64 344, !11, i64 346, !9, i64 348, !9, i64 540, !11, i64 564, !11, i64 566, !8, i64 568, !8, i64 576, !13, i64 584, !8, i64 600, !8, i64 608, !12, i64 616, !12, i64 620, !8, i64 624, !8, i64 632, !8, i64 640, !16, i64 648, !16, i64 652}
!87 = distinct !{!87, !65}
!88 = !{!54, !8, i64 88}
!89 = !{!54, !12, i64 80}
!90 = !{!91, !11, i64 8948}
!91 = !{!"UserDef", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !9, i64 20, !9, i64 788, !9, i64 1556, !9, i64 2580, !9, i64 3348, !9, i64 4116, !9, i64 4884, !9, i64 5652, !9, i64 6420, !9, i64 7444, !12, i64 8468, !11, i64 8472, !11, i64 8474, !11, i64 8476, !11, i64 8478, !11, i64 8480, !11, i64 8482, !12, i64 8484, !12, i64 8488, !12, i64 8492, !11, i64 8496, !11, i64 8498, !12, i64 8500, !12, i64 8504, !12, i64 8508, !12, i64 8512, !12, i64 8516, !12, i64 8520, !12, i64 8524, !11, i64 8528, !11, i64 8530, !11, i64 8532, !11, i64 8534, !13, i64 8536, !13, i64 8552, !13, i64 8568, !13, i64 8584, !13, i64 8600, !13, i64 8616, !13, i64 8632, !9, i64 8648, !11, i64 8712, !11, i64 8714, !11, i64 8716, !11, i64 8718, !11, i64 8720, !11, i64 8722, !11, i64 8724, !11, i64 8726, !9, i64 8728, !11, i64 8896, !11, i64 8898, !11, i64 8900, !11, i64 8902, !11, i64 8904, !11, i64 8906, !11, i64 8908, !11, i64 8910, !12, i64 8912, !12, i64 8916, !11, i64 8920, !11, i64 8922, !11, i64 8924, !11, i64 8926, !11, i64 8928, !11, i64 8930, !11, i64 8932, !11, i64 8934, !11, i64 8936, !11, i64 8938, !9, i64 8940, !9, i64 8941, !9, i64 8942, !9, i64 8943, !11, i64 8944, !11, i64 8946, !11, i64 8948, !11, i64 8950, !11, i64 8952, !11, i64 8954, !16, i64 8956, !16, i64 8960, !12, i64 8964, !11, i64 8968, !11, i64 8970, !16, i64 8972, !11, i64 8976, !11, i64 8978, !11, i64 8980, !11, i64 8982, !92, i64 8984, !9, i64 9760, !9, i64 9772, !11, i64 9788, !9, i64 9790, !9, i64 9791, !9, i64 9792, !9, i64 9872, !12, i64 10896, !12, i64 10900, !16, i64 10904, !16, i64 10908, !12, i64 10912, !11, i64 10916, !11, i64 10918, !11, i64 10920, !11, i64 10922, !11, i64 10924, !11, i64 10926, !93, i64 10928}
!92 = !{!"ColorBand", !11, i64 0, !11, i64 2, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !9, i64 8}
!93 = !{!"WalkNavigation", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !11, i64 24, !9, i64 26}
!94 = !{!95, !12, i64 16}
!95 = !{!"uiBut", !8, i64 0, !8, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !11, i64 32, !11, i64 34, !11, i64 36, !11, i64 38, !11, i64 40, !11, i64 42, !11, i64 44, !11, i64 46, !11, i64 48, !8, i64 56, !9, i64 64, !9, i64 192, !21, i64 592, !8, i64 608, !16, i64 616, !16, i64 620, !16, i64 624, !16, i64 628, !16, i64 632, !16, i64 636, !9, i64 640, !8, i64 648, !8, i64 656, !8, i64 664, !8, i64 672, !8, i64 680, !8, i64 688, !8, i64 696, !8, i64 704, !8, i64 712, !8, i64 720, !8, i64 728, !8, i64 736, !8, i64 744, !8, i64 752, !9, i64 760, !8, i64 768, !8, i64 776, !12, i64 784, !9, i64 788, !9, i64 789, !9, i64 790, !9, i64 791, !9, i64 792, !11, i64 794, !11, i64 796, !8, i64 800, !8, i64 808, !55, i64 816, !8, i64 840, !12, i64 848, !55, i64 856, !8, i64 880, !8, i64 888, !8, i64 896, !11, i64 904, !9, i64 906, !9, i64 907, !8, i64 912, !8, i64 920, !16, i64 928, !8, i64 936, !8, i64 944, !8, i64 952, !8, i64 960, !8, i64 968, !8, i64 976, !8, i64 984, !8, i64 992}
!96 = !{!54, !8, i64 72}
!97 = !{!98, !8, i64 24}
!98 = !{!"uiBlock", !8, i64 0, !8, i64 8, !13, i64 16, !8, i64 32, !8, i64 40, !13, i64 48, !13, i64 64, !8, i64 80, !13, i64 88, !9, i64 104, !9, i64 232, !21, i64 296, !16, i64 312, !12, i64 316, !8, i64 320, !8, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !8, i64 408, !8, i64 416, !12, i64 424, !11, i64 428, !9, i64 430, !9, i64 431, !9, i64 432, !9, i64 433, !99, i64 440, !8, i64 448, !9, i64 456, !9, i64 457, !9, i64 458, !9, i64 459, !12, i64 460, !12, i64 464, !12, i64 468, !12, i64 472, !12, i64 476, !21, i64 480, !13, i64 496, !8, i64 512, !8, i64 520, !8, i64 528, !8, i64 536, !9, i64 544, !9, i64 556, !9, i64 557, !100, i64 624}
!99 = !{!"double", !9, i64 0}
!100 = !{!"PieMenuData", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !99, i64 32, !12, i64 40, !12, i64 44, !16, i64 48}
!101 = !{!95, !12, i64 20}
!102 = !{!55, !8, i64 16}
!103 = distinct !{!103, !65}
!104 = distinct !{!104, !65}
!105 = distinct !{!105, !65}
!106 = !{!43, !11, i64 220}
!107 = !{!43, !11, i64 226}
!108 = !{!62, !8, i64 32}
!109 = !{!110, !11, i64 436}
!110 = !{!"bNodeType", !8, i64 0, !8, i64 8, !11, i64 16, !9, i64 18, !12, i64 84, !9, i64 88, !9, i64 152, !12, i64 408, !16, i64 412, !16, i64 416, !16, i64 420, !16, i64 424, !16, i64 428, !16, i64 432, !11, i64 436, !11, i64 438, !11, i64 440, !8, i64 448, !8, i64 456, !9, i64 464, !8, i64 528, !8, i64 536, !8, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !8, i64 576, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !8, i64 616, !8, i64 624, !8, i64 632, !8, i64 640, !8, i64 648, !8, i64 656, !8, i64 664, !8, i64 672, !8, i64 680, !8, i64 688, !8, i64 696, !8, i64 704, !8, i64 712, !111, i64 720}
!111 = !{!"ExtensionRNA", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!112 = !{!55, !8, i64 8}
!113 = !{!62, !11, i64 172}
!114 = !{!62, !8, i64 240}
!115 = distinct !{!115, !65}
!116 = !{!54, !8, i64 16}
!117 = !{i64 0, i64 8, !47, i64 8, i64 8, !47, i64 16, i64 8, !47}
!118 = !{!54, !12, i64 96}
!119 = !{!54, !8, i64 32}
!120 = !{!54, !8, i64 24}
!121 = !{!122, !11, i64 166}
!122 = !{!"ParticleSettings", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !12, i64 152, !12, i64 156, !11, i64 160, !11, i64 162, !11, i64 164, !11, i64 166, !11, i64 168, !11, i64 170, !11, i64 172, !11, i64 174, !12, i64 176, !12, i64 180, !11, i64 184, !11, i64 186, !11, i64 188, !11, i64 190, !11, i64 192, !11, i64 194, !11, i64 196, !11, i64 198, !11, i64 200, !11, i64 202, !11, i64 204, !11, i64 206, !11, i64 208, !11, i64 210, !11, i64 212, !11, i64 214, !11, i64 216, !11, i64 218, !11, i64 220, !11, i64 222, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !16, i64 232, !16, i64 236, !9, i64 240, !9, i64 248, !16, i64 256, !16, i64 260, !16, i64 264, !11, i64 268, !11, i64 270, !16, i64 272, !16, i64 276, !16, i64 280, !16, i64 284, !16, i64 288, !16, i64 292, !16, i64 296, !16, i64 300, !16, i64 304, !16, i64 308, !16, i64 312, !16, i64 316, !9, i64 320, !12, i64 324, !12, i64 328, !12, i64 332, !12, i64 336, !11, i64 340, !9, i64 342, !16, i64 348, !16, i64 352, !16, i64 356, !16, i64 360, !16, i64 364, !16, i64 368, !16, i64 372, !9, i64 376, !16, i64 388, !16, i64 392, !16, i64 396, !16, i64 400, !16, i64 404, !16, i64 408, !16, i64 412, !9, i64 416, !16, i64 428, !16, i64 432, !16, i64 436, !16, i64 440, !12, i64 444, !12, i64 448, !16, i64 452, !16, i64 456, !16, i64 460, !16, i64 464, !16, i64 468, !16, i64 472, !16, i64 476, !16, i64 480, !16, i64 484, !16, i64 488, !16, i64 492, !16, i64 496, !16, i64 500, !16, i64 504, !16, i64 508, !16, i64 512, !16, i64 516, !16, i64 520, !16, i64 524, !16, i64 528, !16, i64 532, !16, i64 536, !16, i64 540, !16, i64 544, !16, i64 548, !9, i64 552, !16, i64 560, !16, i64 564, !12, i64 568, !12, i64 572, !9, i64 576, !8, i64 720, !13, i64 728, !8, i64 744, !8, i64 752, !8, i64 760, !8, i64 768, !8, i64 776, !8, i64 784, !11, i64 792, !9, i64 794}
!123 = distinct !{!123, !65}
