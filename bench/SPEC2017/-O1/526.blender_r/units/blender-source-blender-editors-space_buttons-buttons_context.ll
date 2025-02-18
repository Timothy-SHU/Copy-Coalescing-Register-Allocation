; ModuleID = 'blender/source/blender/editors/space_buttons/buttons_context.c'
source_filename = "blender/source/blender/editors/space_buttons/buttons_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.SpaceButs = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, i16, i16, i16, i16, i16, i16, i16, i16, i8, [7 x i8], ptr, i32, i32, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ButsContextPath = type { [8 x %struct.PointerRNA], i32, i32, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.ButsContextTexture = type { %struct.ListBase, ptr, ptr, i32 }
%struct.ButsTextureUser = type { ptr, ptr, ptr, %struct.PointerRNA, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.PanelType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.Panel = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"ButsContextPath\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"texture_slot\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mesh\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"armature\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"lattice\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"curve\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"meta_ball\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"lamp\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"speaker\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"camera\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"material\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"material_slot\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"texture\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"texture_user\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"texture_user_property\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"bone\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"edit_bone\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"pose_bone\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"particle_system\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"particle_system_editable\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"particle_settings\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"cloth\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"soft_body\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"fluid\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"smoke\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"collision\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"brush\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"dynamic_paint\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"line_style\00", align 1
@buttons_context_dir = dso_local global [32 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr null], align 16
@RNA_Scene = external global %struct.StructRNA, align 1
@RNA_World = external global %struct.StructRNA, align 1
@RNA_Object = external global %struct.StructRNA, align 1
@RNA_Mesh = external global %struct.StructRNA, align 1
@RNA_Armature = external global %struct.StructRNA, align 1
@RNA_Lattice = external global %struct.StructRNA, align 1
@RNA_Curve = external global %struct.StructRNA, align 1
@RNA_MetaBall = external global %struct.StructRNA, align 1
@RNA_Lamp = external global %struct.StructRNA, align 1
@RNA_Camera = external global %struct.StructRNA, align 1
@RNA_Speaker = external global %struct.StructRNA, align 1
@RNA_Material = external global %struct.StructRNA, align 1
@RNA_Texture = external global %struct.StructRNA, align 1
@RNA_MaterialSlot = external global %struct.StructRNA, align 1
@RNA_Property = external global %struct.StructRNA, align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"texture_node\00", align 1
@RNA_Node = external global %struct.StructRNA, align 1
@RNA_ParticleSystem = external global %struct.StructRNA, align 1
@RNA_ParticleSettingsTextureSlot = external global %struct.StructRNA, align 1
@RNA_MaterialTextureSlot = external global %struct.StructRNA, align 1
@RNA_LampTextureSlot = external global %struct.StructRNA, align 1
@RNA_WorldTextureSlot = external global %struct.StructRNA, align 1
@RNA_FreestyleLineStyle = external global %struct.StructRNA, align 1
@RNA_LineStyleTextureSlot = external global %struct.StructRNA, align 1
@RNA_Bone = external global %struct.StructRNA, align 1
@RNA_EditBone = external global %struct.StructRNA, align 1
@RNA_PoseBone = external global %struct.StructRNA, align 1
@RNA_ParticleSettings = external global %struct.StructRNA, align 1
@RNA_ClothModifier = external global %struct.StructRNA, align 1
@RNA_SoftBodyModifier = external global %struct.StructRNA, align 1
@RNA_FluidSimulationModifier = external global %struct.StructRNA, align 1
@RNA_SmokeModifier = external global %struct.StructRNA, align 1
@RNA_CollisionModifier = external global %struct.StructRNA, align 1
@RNA_Brush = external global %struct.StructRNA, align 1
@RNA_DynamicPaintModifier = external global %struct.StructRNA, align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.33 = private unnamed_addr constant [49 x i8] c"Follow context or keep fixed datablock displayed\00", align 1
@.str.34 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.35 = private unnamed_addr constant [32 x i8] c"spacetype buttons panel context\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"BUTTONS_PT_context\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @buttons_context_compute(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %8 = tail call ptr %7(i64 noundef 208, ptr noundef nonnull @.str) #6
  store ptr %8, ptr %3, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %6, %2
  %10 = load ptr, ptr %3, align 8, !tbaa !34
  %11 = tail call fastcc i32 @buttons_context_path(ptr noundef %0, ptr noundef %10, i32 noundef 1)
  tail call void @buttons_texture_context_compute(ptr noundef %0, ptr noundef %1) #6
  %12 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %13 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 19
  %14 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 19
  br label %15

15:                                               ; preds = %9, %34
  %16 = phi i32 [ 0, %9 ], [ %35, %34 ]
  %17 = phi i32 [ 0, %9 ], [ %36, %34 ]
  %18 = tail call fastcc i32 @buttons_context_path(ptr noundef %0, ptr noundef %10, i32 noundef %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = shl nuw nsw i32 1, %17
  %22 = or i32 %16, %21
  %23 = icmp eq i32 %17, 4
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i32, ptr %12, align 8, !tbaa !47
  %26 = add nsw i32 %25, -1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %27, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = tail call i32 @RNA_struct_ui_icon(ptr noundef nonnull %29) #6
  store i32 %32, ptr %13, align 4, !tbaa !52
  br label %34

33:                                               ; preds = %24
  store i32 189, ptr %14, align 4, !tbaa !52
  br label %34

34:                                               ; preds = %15, %31, %33, %20
  %35 = phi i32 [ %22, %31 ], [ %22, %33 ], [ %22, %20 ], [ %16, %15 ]
  %36 = add nuw nsw i32 %17, 1
  %37 = icmp eq i32 %36, 14
  br i1 %37, label %38, label %15, !llvm.loop !53

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 9
  %40 = load i16, ptr %39, align 4, !tbaa !56
  %41 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 7
  store i16 %40, ptr %41, align 8, !tbaa !57
  %42 = zext nneg i16 %40 to i32
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %35
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 15
  %48 = load i8, ptr %47, align 8, !tbaa !58
  %49 = and i8 %48, 16
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %46
  %52 = tail call ptr @CTX_data_active_object(ptr noundef %0) #6
  %53 = and i32 %35, 32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %51
  %56 = icmp eq ptr %52, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 3
  %59 = load i16, ptr %58, align 8, !tbaa !59
  %60 = and i16 %59, -2
  %61 = icmp ne i16 %60, 10
  %62 = and i32 %35, 16
  %63 = icmp eq i32 %62, 0
  %64 = or i1 %63, %61
  br i1 %64, label %65, label %82

65:                                               ; preds = %57, %55
  %66 = trunc i32 %35 to i16
  %67 = lshr i16 %66, 1
  %68 = and i16 %67, 2
  br label %82

69:                                               ; preds = %46
  %70 = and i32 %35, 3
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %69, %79
  %73 = phi i32 [ %80, %79 ], [ 0, %69 ]
  %74 = shl nuw nsw i32 1, %73
  %75 = and i32 %74, %35
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = trunc i32 %73 to i16
  br label %82

79:                                               ; preds = %72
  %80 = add nuw nsw i32 %73, 1
  %81 = icmp eq i32 %80, 14
  br i1 %81, label %84, label %72, !llvm.loop !64

82:                                               ; preds = %69, %65, %57, %51, %77
  %83 = phi i16 [ %78, %77 ], [ 5, %51 ], [ %68, %65 ], [ 4, %57 ], [ 3, %69 ]
  store i16 %83, ptr %41, align 8, !tbaa !57
  br label %84

84:                                               ; preds = %79, %82, %38
  %85 = load i16, ptr %41, align 8, !tbaa !57
  %86 = sext i16 %85 to i32
  %87 = tail call fastcc i32 @buttons_context_path(ptr noundef %0, ptr noundef %10, i32 noundef %86)
  %88 = load i16, ptr %41, align 8, !tbaa !57
  %89 = zext nneg i16 %88 to i32
  %90 = shl nuw i32 1, %89
  %91 = and i32 %90, %35
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = and i32 %35, 8
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i16 1, i16 3
  store i16 %96, ptr %41, align 8, !tbaa !57
  br label %97

97:                                               ; preds = %93, %84
  %98 = load i16, ptr %41, align 8, !tbaa !57
  %99 = tail call ptr @CTX_data_active_object(ptr noundef %0) #6
  switch i16 %98, label %100 [
    i16 6, label %113
    i16 5, label %113
    i16 2, label %113
  ]

100:                                              ; preds = %97
  %101 = icmp eq i16 %98, 4
  %102 = icmp ne ptr %99, null
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.Object, ptr %99, i64 0, i32 3
  %106 = load i16, ptr %105, align 8, !tbaa !59
  %107 = and i16 %106, -2
  %108 = icmp eq i16 %107, 10
  br i1 %108, label %113, label %109

109:                                              ; preds = %104, %100
  %110 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 15
  %111 = load i8, ptr %110, align 8, !tbaa !58
  %112 = and i8 %111, -17
  store i8 %112, ptr %110, align 8, !tbaa !58
  br label %117

113:                                              ; preds = %104, %97, %97, %97
  %114 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 15
  %115 = load i8, ptr %114, align 8, !tbaa !58
  %116 = or i8 %115, 16
  store i8 %116, ptr %114, align 8, !tbaa !58
  br label %117

117:                                              ; preds = %109, %113
  %118 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 18
  store i32 %35, ptr %118, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @buttons_context_path(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %1, i8 0, i64 208, i1 false)
  %6 = load i16, ptr %5, align 4, !tbaa !66
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.ButsContextPath, ptr %1, i64 0, i32 3
  store i32 %7, ptr %8, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %10, ptr noundef %1) #6
  %13 = getelementptr inbounds %struct.ButsContextPath, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !47
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !47
  br label %16

16:                                               ; preds = %12, %3
  %17 = getelementptr inbounds %struct.ButsContextPath, ptr %1, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !47
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  tail call void @RNA_id_pointer_create(ptr noundef %21, ptr noundef %1) #6
  %22 = load i32, ptr %17, align 8, !tbaa !47
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %17, align 8, !tbaa !47
  br label %24

24:                                               ; preds = %20, %16
  switch i32 %2, label %436 [
    i32 1, label %25
    i32 0, label %25
    i32 13, label %33
    i32 2, label %41
    i32 3, label %71
    i32 8, label %71
    i32 11, label %71
    i32 10, label %73
    i32 4, label %87
    i32 7, label %89
    i32 5, label %91
    i32 6, label %97
    i32 9, label %356
    i32 12, label %390
  ]

25:                                               ; preds = %24, %24
  %26 = load i32, ptr %17, align 8, !tbaa !47
  %27 = add nsw i32 %26, -1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %28, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !49
  %31 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %30, ptr noundef nonnull @RNA_Scene) #6
  %32 = zext i8 %31 to i32
  br label %436

33:                                               ; preds = %24
  %34 = load i32, ptr %17, align 8, !tbaa !47
  %35 = add nsw i32 %34, -1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %36, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !49
  %39 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %38, ptr noundef nonnull @RNA_Scene) #6
  %40 = zext i8 %39 to i32
  br label %436

41:                                               ; preds = %24
  %42 = load i32, ptr %17, align 8, !tbaa !47
  %43 = add nsw i32 %42, -1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %44, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !49
  %47 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %46, ptr noundef nonnull @RNA_World) #6
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %436

49:                                               ; preds = %41
  %50 = load i32, ptr %17, align 8, !tbaa !47
  %51 = add nsw i32 %50, -1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %52, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !49
  %55 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %54, ptr noundef nonnull @RNA_Scene) #6
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %436, label %57

57:                                               ; preds = %49
  %58 = load i32, ptr %17, align 8, !tbaa !47
  %59 = add nsw i32 %58, -1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %60, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !69
  %63 = getelementptr inbounds %struct.Scene, ptr %62, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !70
  %65 = icmp eq ptr %64, null
  br i1 %65, label %436, label %66

66:                                               ; preds = %57
  %67 = sext i32 %58 to i64
  %68 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %67
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %64, ptr noundef %68) #6
  %69 = load i32, ptr %17, align 8, !tbaa !47
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %17, align 8, !tbaa !47
  br label %436

71:                                               ; preds = %24, %24, %24
  %72 = tail call fastcc i32 @buttons_context_path_object(ptr noundef %1), !range !87
  br label %436

73:                                               ; preds = %24
  %74 = tail call fastcc i32 @buttons_context_path_object(ptr noundef %1), !range !87
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr %17, align 8, !tbaa !47
  %78 = add nsw i32 %77, -1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %79, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !69
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 3
  %85 = load i16, ptr %84, align 8, !tbaa !59
  switch i16 %85, label %86 [
    i16 1, label %436
    i16 2, label %436
    i16 4, label %436
    i16 3, label %436
    i16 22, label %436
  ]

86:                                               ; preds = %83, %76, %73
  br label %436

87:                                               ; preds = %24
  %88 = tail call fastcc i32 @buttons_context_path_data(ptr noundef %1, i32 noundef -1), !range !87
  br label %436

89:                                               ; preds = %24
  %90 = tail call fastcc i32 @buttons_context_path_particle(ptr noundef %1), !range !87
  br label %436

91:                                               ; preds = %24
  %92 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %93 = load ptr, ptr %92, align 8, !tbaa !88
  %94 = icmp ne ptr %93, null
  %95 = zext i1 %94 to i8
  %96 = tail call fastcc i32 @buttons_context_path_material(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %95), !range !87
  br label %436

97:                                               ; preds = %24
  %98 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %99 = load ptr, ptr %98, align 8, !tbaa !88
  %100 = icmp eq ptr %99, null
  %101 = load i32, ptr %17, align 8, !tbaa !47
  %102 = add nsw i32 %101, -1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %103, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !49
  %106 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %105, ptr noundef nonnull @RNA_Texture) #6
  %107 = icmp eq i8 %106, 0
  br i1 %100, label %205, label %108

108:                                              ; preds = %97
  br i1 %107, label %109, label %436

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.ButsContextTexture, ptr %99, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !89
  %112 = icmp eq ptr %111, null
  br i1 %112, label %436, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.ButsTextureUser, ptr %111, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !91
  %116 = icmp eq ptr %115, null
  br i1 %116, label %195, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.ID, ptr %115, i64 0, i32 4
  %119 = load i16, ptr %118, align 8, !tbaa !93
  switch i16 %119, label %195 [
    i16 21058, label %120
    i16 16717, label %155
    i16 20311, label %157
    i16 16716, label %187
    i16 16720, label %189
    i16 16975, label %191
    i16 21324, label %193
  ]

120:                                              ; preds = %117
  %121 = load i32, ptr %17, align 8, !tbaa !47
  %122 = add nsw i32 %121, -1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %123, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !49
  %126 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %125, ptr noundef nonnull @RNA_Brush) #6
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %195

128:                                              ; preds = %120
  %129 = load i32, ptr %17, align 8, !tbaa !47
  %130 = add nsw i32 %129, -1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %131, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !49
  %134 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %133, ptr noundef nonnull @RNA_Scene) #6
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %195, label %136

136:                                              ; preds = %128
  %137 = load i32, ptr %17, align 8, !tbaa !47
  %138 = add nsw i32 %137, -1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %139, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !69
  %142 = icmp eq ptr %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %136
  %144 = tail call ptr @BKE_paint_get_active(ptr noundef nonnull %141) #6
  %145 = tail call ptr @BKE_paint_brush(ptr noundef %144) #6
  br label %146

146:                                              ; preds = %143, %136
  %147 = phi ptr [ %145, %143 ], [ null, %136 ]
  %148 = icmp eq ptr %147, null
  br i1 %148, label %195, label %149

149:                                              ; preds = %146
  %150 = load i32, ptr %17, align 8, !tbaa !47
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %151
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %147, ptr noundef %152) #6
  %153 = load i32, ptr %17, align 8, !tbaa !47
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr %17, align 8, !tbaa !47
  br label %195

155:                                              ; preds = %117
  %156 = tail call fastcc i32 @buttons_context_path_material(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1), !range !87
  br label %195

157:                                              ; preds = %117
  %158 = load i32, ptr %17, align 8, !tbaa !47
  %159 = add nsw i32 %158, -1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %160, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !49
  %163 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %162, ptr noundef nonnull @RNA_World) #6
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %195

165:                                              ; preds = %157
  %166 = load i32, ptr %17, align 8, !tbaa !47
  %167 = add nsw i32 %166, -1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %168, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !49
  %171 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %170, ptr noundef nonnull @RNA_Scene) #6
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %195, label %173

173:                                              ; preds = %165
  %174 = load i32, ptr %17, align 8, !tbaa !47
  %175 = add nsw i32 %174, -1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %176, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !69
  %179 = getelementptr inbounds %struct.Scene, ptr %178, i64 0, i32 3
  %180 = load ptr, ptr %179, align 8, !tbaa !70
  %181 = icmp eq ptr %180, null
  br i1 %181, label %195, label %182

182:                                              ; preds = %173
  %183 = sext i32 %174 to i64
  %184 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %183
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %180, ptr noundef %184) #6
  %185 = load i32, ptr %17, align 8, !tbaa !47
  %186 = add nsw i32 %185, 1
  store i32 %186, ptr %17, align 8, !tbaa !47
  br label %195

187:                                              ; preds = %117
  %188 = tail call fastcc i32 @buttons_context_path_data(ptr noundef %1, i32 noundef 10), !range !87
  br label %195

189:                                              ; preds = %117
  %190 = tail call fastcc i32 @buttons_context_path_particle(ptr noundef %1), !range !87
  br label %195

191:                                              ; preds = %117
  %192 = tail call fastcc i32 @buttons_context_path_object(ptr noundef %1), !range !87
  br label %195

193:                                              ; preds = %117
  %194 = tail call fastcc i32 @buttons_context_path_linestyle(ptr noundef %1), !range !87
  br label %195

195:                                              ; preds = %182, %173, %165, %157, %149, %146, %128, %120, %193, %191, %189, %187, %155, %117, %113
  %196 = getelementptr inbounds %struct.ButsContextTexture, ptr %99, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !94
  %198 = icmp eq ptr %197, null
  br i1 %198, label %436, label %199

199:                                              ; preds = %195
  %200 = load i32, ptr %17, align 8, !tbaa !47
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %201
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %197, ptr noundef %202) #6
  %203 = load i32, ptr %17, align 8, !tbaa !47
  %204 = add nsw i32 %203, 1
  store i32 %204, ptr %17, align 8, !tbaa !47
  br label %436

205:                                              ; preds = %97
  br i1 %107, label %206, label %436

206:                                              ; preds = %205
  %207 = load i32, ptr %8, align 8, !tbaa !67
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %257

209:                                              ; preds = %206
  %210 = load i32, ptr %17, align 8, !tbaa !47
  %211 = add nsw i32 %210, -1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %212, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !49
  %215 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %214, ptr noundef nonnull @RNA_World) #6
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %217, label %239

217:                                              ; preds = %209
  %218 = load i32, ptr %17, align 8, !tbaa !47
  %219 = add nsw i32 %218, -1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %220, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !49
  %223 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %222, ptr noundef nonnull @RNA_Scene) #6
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %257, label %225

225:                                              ; preds = %217
  %226 = load i32, ptr %17, align 8, !tbaa !47
  %227 = add nsw i32 %226, -1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %228, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !69
  %231 = getelementptr inbounds %struct.Scene, ptr %230, i64 0, i32 3
  %232 = load ptr, ptr %231, align 8, !tbaa !70
  %233 = icmp eq ptr %232, null
  br i1 %233, label %239, label %234

234:                                              ; preds = %225
  %235 = sext i32 %226 to i64
  %236 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %235
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %232, ptr noundef %236) #6
  %237 = load i32, ptr %17, align 8, !tbaa !47
  %238 = add nsw i32 %237, 1
  store i32 %238, ptr %17, align 8, !tbaa !47
  br label %239

239:                                              ; preds = %225, %209, %234
  %240 = load i32, ptr %17, align 8, !tbaa !47
  %241 = add nsw i32 %240, -1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %242, i32 2
  %244 = load ptr, ptr %243, align 8, !tbaa !69
  %245 = icmp eq ptr %244, null
  br i1 %245, label %436, label %246

246:                                              ; preds = %239
  %247 = getelementptr inbounds %struct.ID, ptr %244, i64 0, i32 4
  %248 = load i16, ptr %247, align 8, !tbaa !93
  %249 = icmp eq i16 %248, 20311
  br i1 %249, label %250, label %436

250:                                              ; preds = %246
  %251 = tail call ptr @give_current_world_texture(ptr noundef nonnull %244) #6
  %252 = load i32, ptr %17, align 8, !tbaa !47
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %253
  tail call void @RNA_id_pointer_create(ptr noundef %251, ptr noundef %254) #6
  %255 = load i32, ptr %17, align 8, !tbaa !47
  %256 = add nsw i32 %255, 1
  store i32 %256, ptr %17, align 8, !tbaa !47
  br label %436

257:                                              ; preds = %217, %206
  %258 = load i32, ptr %8, align 8, !tbaa !67
  %259 = icmp eq i32 %258, 3
  br i1 %259, label %260, label %296

260:                                              ; preds = %257
  %261 = tail call fastcc i32 @buttons_context_path_particle(ptr noundef %1), !range !87
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %296, label %263

263:                                              ; preds = %260
  %264 = load i32, ptr %17, align 8, !tbaa !47
  %265 = add nsw i32 %264, -1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %266, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !49
  %269 = icmp eq ptr %268, @RNA_ParticleSettings
  %270 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %266, i32 2
  %271 = load ptr, ptr %270, align 8, !tbaa !69
  br i1 %269, label %272, label %279

272:                                              ; preds = %263
  %273 = tail call ptr @give_current_particle_texture(ptr noundef %271) #6
  %274 = load i32, ptr %17, align 8, !tbaa !47
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %275
  tail call void @RNA_id_pointer_create(ptr noundef %273, ptr noundef %276) #6
  %277 = load i32, ptr %17, align 8, !tbaa !47
  %278 = add nsw i32 %277, 1
  store i32 %278, ptr %17, align 8, !tbaa !47
  br label %436

279:                                              ; preds = %263
  %280 = icmp eq ptr %271, null
  br i1 %280, label %436, label %281

281:                                              ; preds = %279
  %282 = getelementptr inbounds %struct.ParticleSystem, ptr %271, i64 0, i32 2
  %283 = load ptr, ptr %282, align 8, !tbaa !95
  %284 = icmp eq ptr %283, null
  br i1 %284, label %436, label %285

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.ID, ptr %283, i64 0, i32 4
  %287 = load i16, ptr %286, align 8, !tbaa !93
  %288 = icmp eq i16 %287, 16720
  br i1 %288, label %289, label %436

289:                                              ; preds = %285
  %290 = tail call ptr @give_current_particle_texture(ptr noundef nonnull %283) #6
  %291 = load i32, ptr %17, align 8, !tbaa !47
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %292
  tail call void @RNA_id_pointer_create(ptr noundef %290, ptr noundef %293) #6
  %294 = load i32, ptr %17, align 8, !tbaa !47
  %295 = add nsw i32 %294, 1
  store i32 %295, ptr %17, align 8, !tbaa !47
  br label %436

296:                                              ; preds = %260, %257
  %297 = load i32, ptr %8, align 8, !tbaa !67
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %316

299:                                              ; preds = %296
  %300 = tail call fastcc i32 @buttons_context_path_material(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0), !range !87
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %316, label %302

302:                                              ; preds = %299
  %303 = load i32, ptr %17, align 8, !tbaa !47
  %304 = add nsw i32 %303, -1
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %305, i32 2
  %307 = load ptr, ptr %306, align 8, !tbaa !69
  %308 = icmp eq ptr %307, null
  br i1 %308, label %436, label %309

309:                                              ; preds = %302
  %310 = tail call ptr @give_current_material_texture(ptr noundef nonnull %307) #6
  %311 = load i32, ptr %17, align 8, !tbaa !47
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %312
  tail call void @RNA_id_pointer_create(ptr noundef %310, ptr noundef %313) #6
  %314 = load i32, ptr %17, align 8, !tbaa !47
  %315 = add nsw i32 %314, 1
  store i32 %315, ptr %17, align 8, !tbaa !47
  br label %436

316:                                              ; preds = %299, %296
  %317 = load i32, ptr %8, align 8, !tbaa !67
  %318 = icmp eq i32 %317, 2
  br i1 %318, label %319, label %336

319:                                              ; preds = %316
  %320 = tail call fastcc i32 @buttons_context_path_data(ptr noundef %1, i32 noundef 10), !range !87
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %336, label %322

322:                                              ; preds = %319
  %323 = load i32, ptr %17, align 8, !tbaa !47
  %324 = add nsw i32 %323, -1
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %325, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !69
  %328 = icmp eq ptr %327, null
  br i1 %328, label %436, label %329

329:                                              ; preds = %322
  %330 = tail call ptr @give_current_lamp_texture(ptr noundef nonnull %327) #6
  %331 = load i32, ptr %17, align 8, !tbaa !47
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %332
  tail call void @RNA_id_pointer_create(ptr noundef %330, ptr noundef %333) #6
  %334 = load i32, ptr %17, align 8, !tbaa !47
  %335 = add nsw i32 %334, 1
  store i32 %335, ptr %17, align 8, !tbaa !47
  br label %436

336:                                              ; preds = %319, %316
  %337 = load i32, ptr %8, align 8, !tbaa !67
  %338 = icmp eq i32 %337, 5
  br i1 %338, label %339, label %436

339:                                              ; preds = %336
  %340 = tail call fastcc i32 @buttons_context_path_linestyle(ptr noundef %1), !range !87
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %436, label %342

342:                                              ; preds = %339
  %343 = load i32, ptr %17, align 8, !tbaa !47
  %344 = add nsw i32 %343, -1
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %345, i32 2
  %347 = load ptr, ptr %346, align 8, !tbaa !69
  %348 = icmp eq ptr %347, null
  br i1 %348, label %436, label %349

349:                                              ; preds = %342
  %350 = tail call ptr @give_current_linestyle_texture(ptr noundef nonnull %347) #6
  %351 = load i32, ptr %17, align 8, !tbaa !47
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %352
  tail call void @RNA_id_pointer_create(ptr noundef %350, ptr noundef %353) #6
  %354 = load i32, ptr %17, align 8, !tbaa !47
  %355 = add nsw i32 %354, 1
  store i32 %355, ptr %17, align 8, !tbaa !47
  br label %436

356:                                              ; preds = %24
  %357 = tail call fastcc i32 @buttons_context_path_data(ptr noundef %1, i32 noundef 25), !range !87
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %385, label %359

359:                                              ; preds = %356
  %360 = load i32, ptr %17, align 8, !tbaa !47
  %361 = add nsw i32 %360, -1
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %362, i32 2
  %364 = load ptr, ptr %363, align 8, !tbaa !69
  %365 = getelementptr inbounds %struct.bArmature, ptr %364, i64 0, i32 4
  %366 = load ptr, ptr %365, align 8, !tbaa !97
  %367 = icmp eq ptr %366, null
  br i1 %367, label %375, label %368

368:                                              ; preds = %359
  %369 = getelementptr inbounds %struct.bArmature, ptr %364, i64 0, i32 6
  %370 = load ptr, ptr %369, align 8, !tbaa !99
  %371 = icmp eq ptr %370, null
  br i1 %371, label %385, label %372

372:                                              ; preds = %368
  %373 = sext i32 %360 to i64
  %374 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %373
  tail call void @RNA_pointer_create(ptr noundef %364, ptr noundef nonnull @RNA_EditBone, ptr noundef nonnull %370, ptr noundef %374) #6
  br label %382

375:                                              ; preds = %359
  %376 = getelementptr inbounds %struct.bArmature, ptr %364, i64 0, i32 5
  %377 = load ptr, ptr %376, align 8, !tbaa !100
  %378 = icmp eq ptr %377, null
  br i1 %378, label %385, label %379

379:                                              ; preds = %375
  %380 = sext i32 %360 to i64
  %381 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %380
  tail call void @RNA_pointer_create(ptr noundef %364, ptr noundef nonnull @RNA_Bone, ptr noundef nonnull %377, ptr noundef %381) #6
  br label %382

382:                                              ; preds = %379, %372
  %383 = load i32, ptr %17, align 8, !tbaa !47
  %384 = add nsw i32 %383, 1
  store i32 %384, ptr %17, align 8, !tbaa !47
  br label %385

385:                                              ; preds = %382, %356, %368, %375
  %386 = phi i1 [ true, %368 ], [ true, %375 ], [ true, %356 ], [ false, %382 ]
  %387 = phi i32 [ 0, %368 ], [ 0, %375 ], [ 0, %356 ], [ 1, %382 ]
  br i1 %386, label %388, label %436

388:                                              ; preds = %385
  %389 = tail call fastcc i32 @buttons_context_path_data(ptr noundef %1, i32 noundef 25), !range !87
  br label %436

390:                                              ; preds = %24
  %391 = load i32, ptr %17, align 8, !tbaa !47
  %392 = add nsw i32 %391, -1
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %393, i32 1
  %395 = load ptr, ptr %394, align 8, !tbaa !49
  %396 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %395, ptr noundef nonnull @RNA_PoseBone) #6
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %398, label %436

398:                                              ; preds = %390
  %399 = tail call fastcc i32 @buttons_context_path_object(ptr noundef %1), !range !87
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %435, label %401

401:                                              ; preds = %398
  %402 = load i32, ptr %17, align 8, !tbaa !47
  %403 = add nsw i32 %402, -1
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %404, i32 2
  %406 = load ptr, ptr %405, align 8, !tbaa !69
  %407 = getelementptr inbounds %struct.Object, ptr %406, i64 0, i32 19
  %408 = load ptr, ptr %407, align 8, !tbaa !101
  %409 = getelementptr inbounds %struct.Object, ptr %406, i64 0, i32 3
  %410 = load i16, ptr %409, align 8, !tbaa !59
  %411 = icmp eq i16 %410, 25
  br i1 %411, label %412, label %432

412:                                              ; preds = %401
  %413 = getelementptr inbounds %struct.bArmature, ptr %408, i64 0, i32 4
  %414 = load ptr, ptr %413, align 8, !tbaa !97
  %415 = icmp eq ptr %414, null
  br i1 %415, label %416, label %432

416:                                              ; preds = %412
  %417 = getelementptr inbounds %struct.bArmature, ptr %408, i64 0, i32 5
  %418 = load ptr, ptr %417, align 8, !tbaa !100
  %419 = icmp eq ptr %418, null
  br i1 %419, label %432, label %420

420:                                              ; preds = %416
  %421 = getelementptr inbounds %struct.Object, ptr %406, i64 0, i32 18
  %422 = load ptr, ptr %421, align 8, !tbaa !102
  %423 = getelementptr inbounds %struct.Bone, ptr %418, i64 0, i32 5
  %424 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %422, ptr noundef nonnull %423) #6
  %425 = icmp eq ptr %424, null
  br i1 %425, label %432, label %426

426:                                              ; preds = %420
  %427 = load i32, ptr %17, align 8, !tbaa !47
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %1, i64 0, i64 %428
  tail call void @RNA_pointer_create(ptr noundef %406, ptr noundef nonnull @RNA_PoseBone, ptr noundef nonnull %424, ptr noundef %429) #6
  %430 = load i32, ptr %17, align 8, !tbaa !47
  %431 = add nsw i32 %430, 1
  store i32 %431, ptr %17, align 8, !tbaa !47
  br label %432

432:                                              ; preds = %426, %420, %416, %412, %401
  %433 = phi i1 [ false, %426 ], [ false, %412 ], [ false, %401 ], [ true, %420 ], [ true, %416 ]
  %434 = phi i32 [ 1, %426 ], [ 0, %412 ], [ 0, %401 ], [ 1, %420 ], [ 1, %416 ]
  br i1 %433, label %435, label %436

435:                                              ; preds = %432, %398
  br label %436

436:                                              ; preds = %66, %57, %49, %41, %435, %432, %390, %199, %195, %109, %108, %349, %342, %339, %336, %329, %322, %309, %302, %289, %285, %281, %279, %272, %250, %246, %239, %205, %86, %83, %83, %83, %83, %83, %24, %385, %388, %91, %89, %87, %71, %33, %25
  %437 = phi i32 [ %387, %385 ], [ %389, %388 ], [ %96, %91 ], [ %90, %89 ], [ %88, %87 ], [ %72, %71 ], [ %40, %33 ], [ %32, %25 ], [ 0, %24 ], [ 0, %86 ], [ 1, %83 ], [ 1, %83 ], [ 1, %83 ], [ 1, %83 ], [ 1, %83 ], [ 1, %108 ], [ 0, %109 ], [ 1, %199 ], [ 1, %195 ], [ 1, %250 ], [ 1, %272 ], [ 1, %289 ], [ 1, %309 ], [ 1, %329 ], [ 1, %349 ], [ 1, %205 ], [ 0, %246 ], [ 0, %239 ], [ 0, %302 ], [ 0, %336 ], [ 0, %339 ], [ 0, %342 ], [ 0, %322 ], [ 0, %285 ], [ 0, %281 ], [ 0, %279 ], [ 0, %435 ], [ %434, %432 ], [ 1, %390 ], [ 1, %66 ], [ 1, %41 ], [ 1, %57 ], [ 0, %49 ]
  ret i32 %437
}

declare void @buttons_texture_context_compute(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_struct_ui_icon(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @buttons_context(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %3, %6
  %10 = phi ptr [ %8, %6 ], [ null, %3 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %1068, label %12

12:                                               ; preds = %9
  %13 = tail call zeroext i8 @CTX_data_dir(ptr noundef %1) #6
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @CTX_data_dir_set(ptr noundef %2, ptr noundef nonnull getelementptr inbounds ([32 x ptr], ptr @buttons_context_dir, i64 0, i64 1)) #6
  br label %1068

20:                                               ; preds = %15
  tail call void @CTX_data_dir_set(ptr noundef %2, ptr noundef nonnull @buttons_context_dir) #6
  br label %1068

21:                                               ; preds = %12
  %22 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.2) #6
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !47
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %33, label %1068

28:                                               ; preds = %33
  %29 = add nuw nsw i64 %34, 1
  %30 = load i32, ptr %25, align 8, !tbaa !47
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %33, label %1068, !llvm.loop !103

33:                                               ; preds = %24, %28
  %34 = phi i64 [ %29, %28 ], [ 0, %24 ]
  %35 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %34, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !49
  %37 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %36, ptr noundef nonnull @RNA_Scene) #6
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %28, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %34
  %41 = load ptr, ptr %40, align 8, !tbaa !104
  %42 = load ptr, ptr %35, align 8, !tbaa !49
  %43 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %34, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %41, ptr noundef %42, ptr noundef %44) #6
  br label %1068

45:                                               ; preds = %21
  %46 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.3) #6
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !47
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %57, label %1068

52:                                               ; preds = %57
  %53 = add nuw nsw i64 %58, 1
  %54 = load i32, ptr %49, align 8, !tbaa !47
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %57, label %1068, !llvm.loop !103

57:                                               ; preds = %48, %52
  %58 = phi i64 [ %53, %52 ], [ 0, %48 ]
  %59 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %58, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !49
  %61 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %60, ptr noundef nonnull @RNA_World) #6
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %52, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %58
  %65 = load ptr, ptr %64, align 8, !tbaa !104
  %66 = load ptr, ptr %59, align 8, !tbaa !49
  %67 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %58, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %65, ptr noundef %66, ptr noundef %68) #6
  br label %1068

69:                                               ; preds = %45
  %70 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.4) #6
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %93, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !47
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %81, label %1068

76:                                               ; preds = %81
  %77 = add nuw nsw i64 %82, 1
  %78 = load i32, ptr %73, align 8, !tbaa !47
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %81, label %1068, !llvm.loop !103

81:                                               ; preds = %72, %76
  %82 = phi i64 [ %77, %76 ], [ 0, %72 ]
  %83 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %82, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !49
  %85 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %84, ptr noundef nonnull @RNA_Object) #6
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %76, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %82
  %89 = load ptr, ptr %88, align 8, !tbaa !104
  %90 = load ptr, ptr %83, align 8, !tbaa !49
  %91 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %82, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %89, ptr noundef %90, ptr noundef %92) #6
  br label %1068

93:                                               ; preds = %69
  %94 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.5) #6
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %117, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !47
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %105, label %1068

100:                                              ; preds = %105
  %101 = add nuw nsw i64 %106, 1
  %102 = load i32, ptr %97, align 8, !tbaa !47
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %101, %103
  br i1 %104, label %105, label %1068, !llvm.loop !103

105:                                              ; preds = %96, %100
  %106 = phi i64 [ %101, %100 ], [ 0, %96 ]
  %107 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %106, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !49
  %109 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %108, ptr noundef nonnull @RNA_Mesh) #6
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %100, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %106
  %113 = load ptr, ptr %112, align 8, !tbaa !104
  %114 = load ptr, ptr %107, align 8, !tbaa !49
  %115 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %106, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %113, ptr noundef %114, ptr noundef %116) #6
  br label %1068

117:                                              ; preds = %93
  %118 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.6) #6
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %141, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %122 = load i32, ptr %121, align 8, !tbaa !47
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %129, label %1068

124:                                              ; preds = %129
  %125 = add nuw nsw i64 %130, 1
  %126 = load i32, ptr %121, align 8, !tbaa !47
  %127 = sext i32 %126 to i64
  %128 = icmp slt i64 %125, %127
  br i1 %128, label %129, label %1068, !llvm.loop !103

129:                                              ; preds = %120, %124
  %130 = phi i64 [ %125, %124 ], [ 0, %120 ]
  %131 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %130, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !49
  %133 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %132, ptr noundef nonnull @RNA_Armature) #6
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %124, label %135

135:                                              ; preds = %129
  %136 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %130
  %137 = load ptr, ptr %136, align 8, !tbaa !104
  %138 = load ptr, ptr %131, align 8, !tbaa !49
  %139 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %130, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %137, ptr noundef %138, ptr noundef %140) #6
  br label %1068

141:                                              ; preds = %117
  %142 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.7) #6
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %165, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %146 = load i32, ptr %145, align 8, !tbaa !47
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %153, label %1068

148:                                              ; preds = %153
  %149 = add nuw nsw i64 %154, 1
  %150 = load i32, ptr %145, align 8, !tbaa !47
  %151 = sext i32 %150 to i64
  %152 = icmp slt i64 %149, %151
  br i1 %152, label %153, label %1068, !llvm.loop !103

153:                                              ; preds = %144, %148
  %154 = phi i64 [ %149, %148 ], [ 0, %144 ]
  %155 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %154, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !49
  %157 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %156, ptr noundef nonnull @RNA_Lattice) #6
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %148, label %159

159:                                              ; preds = %153
  %160 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %154
  %161 = load ptr, ptr %160, align 8, !tbaa !104
  %162 = load ptr, ptr %155, align 8, !tbaa !49
  %163 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %154, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %161, ptr noundef %162, ptr noundef %164) #6
  br label %1068

165:                                              ; preds = %141
  %166 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.8) #6
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %189, label %168

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %170 = load i32, ptr %169, align 8, !tbaa !47
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %177, label %1068

172:                                              ; preds = %177
  %173 = add nuw nsw i64 %178, 1
  %174 = load i32, ptr %169, align 8, !tbaa !47
  %175 = sext i32 %174 to i64
  %176 = icmp slt i64 %173, %175
  br i1 %176, label %177, label %1068, !llvm.loop !103

177:                                              ; preds = %168, %172
  %178 = phi i64 [ %173, %172 ], [ 0, %168 ]
  %179 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %178, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !49
  %181 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %180, ptr noundef nonnull @RNA_Curve) #6
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %172, label %183

183:                                              ; preds = %177
  %184 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %178
  %185 = load ptr, ptr %184, align 8, !tbaa !104
  %186 = load ptr, ptr %179, align 8, !tbaa !49
  %187 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %178, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %185, ptr noundef %186, ptr noundef %188) #6
  br label %1068

189:                                              ; preds = %165
  %190 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.9) #6
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %213, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %194 = load i32, ptr %193, align 8, !tbaa !47
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %201, label %1068

196:                                              ; preds = %201
  %197 = add nuw nsw i64 %202, 1
  %198 = load i32, ptr %193, align 8, !tbaa !47
  %199 = sext i32 %198 to i64
  %200 = icmp slt i64 %197, %199
  br i1 %200, label %201, label %1068, !llvm.loop !103

201:                                              ; preds = %192, %196
  %202 = phi i64 [ %197, %196 ], [ 0, %192 ]
  %203 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %202, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !49
  %205 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %204, ptr noundef nonnull @RNA_MetaBall) #6
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %196, label %207

207:                                              ; preds = %201
  %208 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %202
  %209 = load ptr, ptr %208, align 8, !tbaa !104
  %210 = load ptr, ptr %203, align 8, !tbaa !49
  %211 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %202, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %209, ptr noundef %210, ptr noundef %212) #6
  br label %1068

213:                                              ; preds = %189
  %214 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.10) #6
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %237, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %218 = load i32, ptr %217, align 8, !tbaa !47
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %225, label %1068

220:                                              ; preds = %225
  %221 = add nuw nsw i64 %226, 1
  %222 = load i32, ptr %217, align 8, !tbaa !47
  %223 = sext i32 %222 to i64
  %224 = icmp slt i64 %221, %223
  br i1 %224, label %225, label %1068, !llvm.loop !103

225:                                              ; preds = %216, %220
  %226 = phi i64 [ %221, %220 ], [ 0, %216 ]
  %227 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %226, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !49
  %229 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %228, ptr noundef nonnull @RNA_Lamp) #6
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %220, label %231

231:                                              ; preds = %225
  %232 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %226
  %233 = load ptr, ptr %232, align 8, !tbaa !104
  %234 = load ptr, ptr %227, align 8, !tbaa !49
  %235 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %226, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %233, ptr noundef %234, ptr noundef %236) #6
  br label %1068

237:                                              ; preds = %213
  %238 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.12) #6
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %261, label %240

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %242 = load i32, ptr %241, align 8, !tbaa !47
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %249, label %1068

244:                                              ; preds = %249
  %245 = add nuw nsw i64 %250, 1
  %246 = load i32, ptr %241, align 8, !tbaa !47
  %247 = sext i32 %246 to i64
  %248 = icmp slt i64 %245, %247
  br i1 %248, label %249, label %1068, !llvm.loop !103

249:                                              ; preds = %240, %244
  %250 = phi i64 [ %245, %244 ], [ 0, %240 ]
  %251 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %250, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !49
  %253 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %252, ptr noundef nonnull @RNA_Camera) #6
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %244, label %255

255:                                              ; preds = %249
  %256 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %250
  %257 = load ptr, ptr %256, align 8, !tbaa !104
  %258 = load ptr, ptr %251, align 8, !tbaa !49
  %259 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %250, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %257, ptr noundef %258, ptr noundef %260) #6
  br label %1068

261:                                              ; preds = %237
  %262 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.11) #6
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %285, label %264

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %266 = load i32, ptr %265, align 8, !tbaa !47
  %267 = icmp sgt i32 %266, 0
  br i1 %267, label %273, label %1068

268:                                              ; preds = %273
  %269 = add nuw nsw i64 %274, 1
  %270 = load i32, ptr %265, align 8, !tbaa !47
  %271 = sext i32 %270 to i64
  %272 = icmp slt i64 %269, %271
  br i1 %272, label %273, label %1068, !llvm.loop !103

273:                                              ; preds = %264, %268
  %274 = phi i64 [ %269, %268 ], [ 0, %264 ]
  %275 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %274, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !49
  %277 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %276, ptr noundef nonnull @RNA_Speaker) #6
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %268, label %279

279:                                              ; preds = %273
  %280 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %274
  %281 = load ptr, ptr %280, align 8, !tbaa !104
  %282 = load ptr, ptr %275, align 8, !tbaa !49
  %283 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %274, i32 2
  %284 = load ptr, ptr %283, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %281, ptr noundef %282, ptr noundef %284) #6
  br label %1068

285:                                              ; preds = %261
  %286 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.13) #6
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %309, label %288

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %290 = load i32, ptr %289, align 8, !tbaa !47
  %291 = icmp sgt i32 %290, 0
  br i1 %291, label %297, label %1068

292:                                              ; preds = %297
  %293 = add nuw nsw i64 %298, 1
  %294 = load i32, ptr %289, align 8, !tbaa !47
  %295 = sext i32 %294 to i64
  %296 = icmp slt i64 %293, %295
  br i1 %296, label %297, label %1068, !llvm.loop !103

297:                                              ; preds = %288, %292
  %298 = phi i64 [ %293, %292 ], [ 0, %288 ]
  %299 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %298, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !49
  %301 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %300, ptr noundef nonnull @RNA_Material) #6
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %292, label %303

303:                                              ; preds = %297
  %304 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %298
  %305 = load ptr, ptr %304, align 8, !tbaa !104
  %306 = load ptr, ptr %299, align 8, !tbaa !49
  %307 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %298, i32 2
  %308 = load ptr, ptr %307, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %305, ptr noundef %306, ptr noundef %308) #6
  br label %1068

309:                                              ; preds = %285
  %310 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.15) #6
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %340, label %312

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %314 = load ptr, ptr %313, align 8, !tbaa !88
  %315 = icmp eq ptr %314, null
  br i1 %315, label %319, label %316

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.ButsContextTexture, ptr %314, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !94
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %318, ptr noundef nonnull @RNA_Texture, ptr noundef %318) #6
  br label %1068

319:                                              ; preds = %312
  %320 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %321 = load i32, ptr %320, align 8, !tbaa !47
  %322 = icmp sgt i32 %321, 0
  br i1 %322, label %328, label %1068

323:                                              ; preds = %328
  %324 = add nuw nsw i64 %329, 1
  %325 = load i32, ptr %320, align 8, !tbaa !47
  %326 = sext i32 %325 to i64
  %327 = icmp slt i64 %324, %326
  br i1 %327, label %328, label %1068, !llvm.loop !103

328:                                              ; preds = %319, %323
  %329 = phi i64 [ %324, %323 ], [ 0, %319 ]
  %330 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %329, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !49
  %332 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %331, ptr noundef nonnull @RNA_Texture) #6
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %323, label %334

334:                                              ; preds = %328
  %335 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %329
  %336 = load ptr, ptr %335, align 8, !tbaa !104
  %337 = load ptr, ptr %330, align 8, !tbaa !49
  %338 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %329, i32 2
  %339 = load ptr, ptr %338, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %336, ptr noundef %337, ptr noundef %339) #6
  br label %1068

340:                                              ; preds = %309
  %341 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.14) #6
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %385, label %343

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %345 = load i32, ptr %344, align 8, !tbaa !47
  %346 = icmp sgt i32 %345, 0
  br i1 %346, label %352, label %360

347:                                              ; preds = %352
  %348 = add nuw nsw i64 %353, 1
  %349 = load i32, ptr %344, align 8, !tbaa !47
  %350 = sext i32 %349 to i64
  %351 = icmp slt i64 %348, %350
  br i1 %351, label %352, label %360, !llvm.loop !105

352:                                              ; preds = %343, %347
  %353 = phi i64 [ %348, %347 ], [ 0, %343 ]
  %354 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %353, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !49
  %356 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %355, ptr noundef nonnull @RNA_Object) #6
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %347, label %358

358:                                              ; preds = %352
  %359 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %353
  br label %360

360:                                              ; preds = %347, %343, %358
  %361 = phi ptr [ %359, %358 ], [ null, %343 ], [ null, %347 ]
  %362 = icmp eq ptr %361, null
  br i1 %362, label %1068, label %363

363:                                              ; preds = %360
  %364 = getelementptr inbounds %struct.PointerRNA, ptr %361, i64 0, i32 2
  %365 = load ptr, ptr %364, align 8, !tbaa !69
  %366 = icmp eq ptr %365, null
  br i1 %366, label %1068, label %367

367:                                              ; preds = %363
  %368 = getelementptr inbounds %struct.Object, ptr %365, i64 0, i32 3
  %369 = load i16, ptr %368, align 8, !tbaa !59
  %370 = add i16 %369, -1
  %371 = icmp ult i16 %370, 5
  br i1 %371, label %372, label %1068

372:                                              ; preds = %367
  %373 = getelementptr inbounds %struct.Object, ptr %365, i64 0, i32 31
  %374 = load i32, ptr %373, align 8, !tbaa !106
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %1068, label %376

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.Object, ptr %365, i64 0, i32 32
  %378 = load i32, ptr %377, align 4, !tbaa !107
  %379 = tail call i32 @llvm.smax.i32(i32 %378, i32 1)
  %380 = getelementptr inbounds %struct.Object, ptr %365, i64 0, i32 29
  %381 = load ptr, ptr %380, align 8, !tbaa !108
  %382 = zext nneg i32 %379 to i64
  %383 = getelementptr ptr, ptr %381, i64 %382
  %384 = getelementptr ptr, ptr %383, i64 -1
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %365, ptr noundef nonnull @RNA_MaterialSlot, ptr noundef %384) #6
  br label %1068

385:                                              ; preds = %340
  %386 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.16) #6
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %405, label %388

388:                                              ; preds = %385
  %389 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %390 = load ptr, ptr %389, align 8, !tbaa !88
  %391 = icmp eq ptr %390, null
  br i1 %391, label %1068, label %392

392:                                              ; preds = %388
  %393 = getelementptr inbounds %struct.ButsContextTexture, ptr %390, i64 0, i32 2
  %394 = load ptr, ptr %393, align 8, !tbaa !89
  %395 = icmp eq ptr %394, null
  br i1 %395, label %1068, label %396

396:                                              ; preds = %392
  %397 = getelementptr inbounds %struct.ButsTextureUser, ptr %394, i64 0, i32 3, i32 2
  %398 = load ptr, ptr %397, align 8, !tbaa !109
  %399 = icmp eq ptr %398, null
  br i1 %399, label %1068, label %400

400:                                              ; preds = %396
  %401 = getelementptr inbounds %struct.ButsTextureUser, ptr %394, i64 0, i32 3
  %402 = load ptr, ptr %401, align 8, !tbaa !110
  %403 = getelementptr inbounds %struct.ButsTextureUser, ptr %394, i64 0, i32 3, i32 1
  %404 = load ptr, ptr %403, align 8, !tbaa !111
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %402, ptr noundef %404, ptr noundef nonnull %398) #6
  br label %1068

405:                                              ; preds = %385
  %406 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.17) #6
  %407 = icmp eq i8 %406, 0
  br i1 %407, label %423, label %408

408:                                              ; preds = %405
  %409 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %410 = load ptr, ptr %409, align 8, !tbaa !88
  %411 = icmp eq ptr %410, null
  br i1 %411, label %1068, label %412

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.ButsContextTexture, ptr %410, i64 0, i32 2
  %414 = load ptr, ptr %413, align 8, !tbaa !89
  %415 = icmp eq ptr %414, null
  br i1 %415, label %1068, label %416

416:                                              ; preds = %412
  %417 = getelementptr inbounds %struct.ButsTextureUser, ptr %414, i64 0, i32 3, i32 2
  %418 = load ptr, ptr %417, align 8, !tbaa !109
  %419 = icmp eq ptr %418, null
  br i1 %419, label %1068, label %420

420:                                              ; preds = %416
  %421 = getelementptr inbounds %struct.ButsTextureUser, ptr %414, i64 0, i32 4
  %422 = load ptr, ptr %421, align 8, !tbaa !112
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef null, ptr noundef nonnull @RNA_Property, ptr noundef %422) #6
  br label %1068

423:                                              ; preds = %405
  %424 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.32) #6
  %425 = icmp eq i8 %424, 0
  br i1 %425, label %469, label %426

426:                                              ; preds = %423
  %427 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %428 = load ptr, ptr %427, align 8, !tbaa !88
  %429 = icmp eq ptr %428, null
  br i1 %429, label %430, label %434

430:                                              ; preds = %426
  %431 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %432 = load i32, ptr %431, align 8, !tbaa !47
  %433 = icmp sgt i32 %432, 0
  br i1 %433, label %450, label %458

434:                                              ; preds = %426
  %435 = getelementptr inbounds %struct.ButsContextTexture, ptr %428, i64 0, i32 2
  %436 = load ptr, ptr %435, align 8, !tbaa !89
  %437 = icmp eq ptr %436, null
  br i1 %437, label %1068, label %438

438:                                              ; preds = %434
  %439 = getelementptr inbounds %struct.ButsTextureUser, ptr %436, i64 0, i32 6
  %440 = load ptr, ptr %439, align 8, !tbaa !113
  %441 = icmp eq ptr %440, null
  br i1 %441, label %1068, label %442

442:                                              ; preds = %438
  %443 = getelementptr inbounds %struct.ButsTextureUser, ptr %436, i64 0, i32 5
  %444 = load ptr, ptr %443, align 8, !tbaa !114
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %444, ptr noundef nonnull @RNA_Node, ptr noundef nonnull %440) #6
  br label %1068

445:                                              ; preds = %450
  %446 = add nuw nsw i64 %451, 1
  %447 = load i32, ptr %431, align 8, !tbaa !47
  %448 = sext i32 %447 to i64
  %449 = icmp slt i64 %446, %448
  br i1 %449, label %450, label %458, !llvm.loop !105

450:                                              ; preds = %430, %445
  %451 = phi i64 [ %446, %445 ], [ 0, %430 ]
  %452 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %451, i32 1
  %453 = load ptr, ptr %452, align 8, !tbaa !49
  %454 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %453, ptr noundef nonnull @RNA_Material) #6
  %455 = icmp eq i8 %454, 0
  br i1 %455, label %445, label %456

456:                                              ; preds = %450
  %457 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %451
  br label %458

458:                                              ; preds = %445, %430, %456
  %459 = phi ptr [ %457, %456 ], [ null, %430 ], [ null, %445 ]
  %460 = icmp eq ptr %459, null
  br i1 %460, label %1068, label %461

461:                                              ; preds = %458
  %462 = getelementptr inbounds %struct.PointerRNA, ptr %459, i64 0, i32 2
  %463 = load ptr, ptr %462, align 8, !tbaa !69
  %464 = icmp eq ptr %463, null
  br i1 %464, label %1068, label %465

465:                                              ; preds = %461
  %466 = tail call ptr @give_current_material_texture_node(ptr noundef nonnull %463) #6
  %467 = getelementptr inbounds %struct.Material, ptr %463, i64 0, i32 103
  %468 = load ptr, ptr %467, align 8, !tbaa !115
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %468, ptr noundef nonnull @RNA_Node, ptr noundef %466) #6
  br label %1068

469:                                              ; preds = %423
  %470 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %471 = icmp eq i8 %470, 0
  br i1 %471, label %645, label %472

472:                                              ; preds = %469
  %473 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %474 = load ptr, ptr %473, align 8, !tbaa !88
  %475 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %476 = load i32, ptr %475, align 8, !tbaa !47
  %477 = icmp sgt i32 %476, 0
  br i1 %477, label %483, label %491

478:                                              ; preds = %483
  %479 = add nuw nsw i64 %484, 1
  %480 = load i32, ptr %475, align 8, !tbaa !47
  %481 = sext i32 %480 to i64
  %482 = icmp slt i64 %479, %481
  br i1 %482, label %483, label %491, !llvm.loop !105

483:                                              ; preds = %472, %478
  %484 = phi i64 [ %479, %478 ], [ 0, %472 ]
  %485 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %484, i32 1
  %486 = load ptr, ptr %485, align 8, !tbaa !49
  %487 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %486, ptr noundef nonnull @RNA_ParticleSystem) #6
  %488 = icmp eq i8 %487, 0
  br i1 %488, label %478, label %489

489:                                              ; preds = %483
  %490 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %484
  br label %491

491:                                              ; preds = %478, %472, %489
  %492 = phi ptr [ %490, %489 ], [ null, %472 ], [ null, %478 ]
  %493 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %494 = icmp eq ptr %492, null
  br i1 %494, label %507, label %495

495:                                              ; preds = %491
  %496 = getelementptr inbounds %struct.PointerRNA, ptr %492, i64 0, i32 2
  %497 = load ptr, ptr %496, align 8, !tbaa !69
  %498 = getelementptr inbounds %struct.ParticleSystem, ptr %497, i64 0, i32 2
  %499 = load ptr, ptr %498, align 8, !tbaa !95
  %500 = icmp eq ptr %499, null
  br i1 %500, label %1068, label %501

501:                                              ; preds = %495
  %502 = getelementptr inbounds %struct.ParticleSettings, ptr %499, i64 0, i32 10
  %503 = load i16, ptr %502, align 2, !tbaa !119
  %504 = sext i16 %503 to i64
  %505 = getelementptr inbounds %struct.ParticleSettings, ptr %499, i64 0, i32 121, i64 %504
  %506 = load ptr, ptr %505, align 8, !tbaa !46
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %499, ptr noundef nonnull @RNA_ParticleSettingsTextureSlot, ptr noundef %506) #6
  br label %1068

507:                                              ; preds = %491
  %508 = icmp eq ptr %474, null
  br i1 %508, label %509, label %1068

509:                                              ; preds = %507
  %510 = load i32, ptr %493, align 8, !tbaa !47
  %511 = icmp sgt i32 %510, 0
  br i1 %511, label %517, label %525

512:                                              ; preds = %517
  %513 = add nuw nsw i64 %518, 1
  %514 = load i32, ptr %493, align 8, !tbaa !47
  %515 = sext i32 %514 to i64
  %516 = icmp slt i64 %513, %515
  br i1 %516, label %517, label %525, !llvm.loop !105

517:                                              ; preds = %509, %512
  %518 = phi i64 [ %513, %512 ], [ 0, %509 ]
  %519 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %518, i32 1
  %520 = load ptr, ptr %519, align 8, !tbaa !49
  %521 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %520, ptr noundef nonnull @RNA_Material) #6
  %522 = icmp eq i8 %521, 0
  br i1 %522, label %512, label %523

523:                                              ; preds = %517
  %524 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %518
  br label %525

525:                                              ; preds = %512, %509, %523
  %526 = phi ptr [ %524, %523 ], [ null, %509 ], [ null, %512 ]
  %527 = icmp eq ptr %526, null
  br i1 %527, label %528, label %531

528:                                              ; preds = %525
  %529 = load i32, ptr %493, align 8, !tbaa !47
  %530 = icmp sgt i32 %529, 0
  br i1 %530, label %566, label %574

531:                                              ; preds = %525
  %532 = getelementptr inbounds %struct.PointerRNA, ptr %526, i64 0, i32 2
  %533 = load ptr, ptr %532, align 8, !tbaa !69
  %534 = icmp eq ptr %533, null
  br i1 %534, label %1068, label %535

535:                                              ; preds = %531
  %536 = getelementptr inbounds %struct.Material, ptr %533, i64 0, i32 77
  %537 = load i8, ptr %536, align 1, !tbaa !121
  %538 = icmp eq i8 %537, 0
  br i1 %538, label %555, label %539

539:                                              ; preds = %535
  %540 = getelementptr inbounds %struct.Material, ptr %533, i64 0, i32 103
  %541 = load ptr, ptr %540, align 8, !tbaa !115
  %542 = icmp eq ptr %541, null
  br i1 %542, label %555, label %543

543:                                              ; preds = %539
  %544 = tail call ptr @give_current_material_texture_node(ptr noundef nonnull %533) #6
  %545 = icmp eq ptr %544, null
  br i1 %545, label %546, label %1068

546:                                              ; preds = %543
  %547 = tail call ptr @give_node_material(ptr noundef nonnull %533) #6
  %548 = icmp eq ptr %547, null
  br i1 %548, label %1068, label %549

549:                                              ; preds = %546
  %550 = getelementptr inbounds %struct.Material, ptr %547, i64 0, i32 75
  %551 = load i8, ptr %550, align 1, !tbaa !122
  %552 = zext i8 %551 to i64
  %553 = getelementptr inbounds %struct.Material, ptr %547, i64 0, i32 102, i64 %552
  %554 = load ptr, ptr %553, align 8, !tbaa !46
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %547, ptr noundef nonnull @RNA_MaterialTextureSlot, ptr noundef %554) #6
  br label %1068

555:                                              ; preds = %535, %539
  %556 = getelementptr inbounds %struct.Material, ptr %533, i64 0, i32 75
  %557 = load i8, ptr %556, align 1, !tbaa !122
  %558 = zext i8 %557 to i64
  %559 = getelementptr inbounds %struct.Material, ptr %533, i64 0, i32 102, i64 %558
  %560 = load ptr, ptr %559, align 8, !tbaa !46
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %533, ptr noundef nonnull @RNA_MaterialTextureSlot, ptr noundef %560) #6
  br label %1068

561:                                              ; preds = %566
  %562 = add nuw nsw i64 %567, 1
  %563 = load i32, ptr %493, align 8, !tbaa !47
  %564 = sext i32 %563 to i64
  %565 = icmp slt i64 %562, %564
  br i1 %565, label %566, label %574, !llvm.loop !105

566:                                              ; preds = %528, %561
  %567 = phi i64 [ %562, %561 ], [ 0, %528 ]
  %568 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %567, i32 1
  %569 = load ptr, ptr %568, align 8, !tbaa !49
  %570 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %569, ptr noundef nonnull @RNA_Lamp) #6
  %571 = icmp eq i8 %570, 0
  br i1 %571, label %561, label %572

572:                                              ; preds = %566
  %573 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %567
  br label %574

574:                                              ; preds = %561, %528, %572
  %575 = phi ptr [ %573, %572 ], [ null, %528 ], [ null, %561 ]
  %576 = icmp eq ptr %575, null
  br i1 %576, label %577, label %580

577:                                              ; preds = %574
  %578 = load i32, ptr %493, align 8, !tbaa !47
  %579 = icmp sgt i32 %578, 0
  br i1 %579, label %595, label %603

580:                                              ; preds = %574
  %581 = getelementptr inbounds %struct.PointerRNA, ptr %575, i64 0, i32 2
  %582 = load ptr, ptr %581, align 8, !tbaa !69
  %583 = icmp eq ptr %582, null
  br i1 %583, label %1068, label %584

584:                                              ; preds = %580
  %585 = getelementptr inbounds %struct.Lamp, ptr %582, i64 0, i32 49
  %586 = load i16, ptr %585, align 8, !tbaa !123
  %587 = sext i16 %586 to i64
  %588 = getelementptr inbounds %struct.Lamp, ptr %582, i64 0, i32 69, i64 %587
  %589 = load ptr, ptr %588, align 8, !tbaa !46
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %582, ptr noundef nonnull @RNA_LampTextureSlot, ptr noundef %589) #6
  br label %1068

590:                                              ; preds = %595
  %591 = add nuw nsw i64 %596, 1
  %592 = load i32, ptr %493, align 8, !tbaa !47
  %593 = sext i32 %592 to i64
  %594 = icmp slt i64 %591, %593
  br i1 %594, label %595, label %603, !llvm.loop !105

595:                                              ; preds = %577, %590
  %596 = phi i64 [ %591, %590 ], [ 0, %577 ]
  %597 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %596, i32 1
  %598 = load ptr, ptr %597, align 8, !tbaa !49
  %599 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %598, ptr noundef nonnull @RNA_World) #6
  %600 = icmp eq i8 %599, 0
  br i1 %600, label %590, label %601

601:                                              ; preds = %595
  %602 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %596
  br label %603

603:                                              ; preds = %590, %577, %601
  %604 = phi ptr [ %602, %601 ], [ null, %577 ], [ null, %590 ]
  %605 = icmp eq ptr %604, null
  br i1 %605, label %606, label %609

606:                                              ; preds = %603
  %607 = load i32, ptr %493, align 8, !tbaa !47
  %608 = icmp sgt i32 %607, 0
  br i1 %608, label %624, label %632

609:                                              ; preds = %603
  %610 = getelementptr inbounds %struct.PointerRNA, ptr %604, i64 0, i32 2
  %611 = load ptr, ptr %610, align 8, !tbaa !69
  %612 = icmp eq ptr %611, null
  br i1 %612, label %1068, label %613

613:                                              ; preds = %609
  %614 = getelementptr inbounds %struct.World, ptr %611, i64 0, i32 4
  %615 = load i16, ptr %614, align 4, !tbaa !125
  %616 = sext i16 %615 to i64
  %617 = getelementptr inbounds %struct.World, ptr %611, i64 0, i32 70, i64 %616
  %618 = load ptr, ptr %617, align 8, !tbaa !46
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %611, ptr noundef nonnull @RNA_WorldTextureSlot, ptr noundef %618) #6
  br label %1068

619:                                              ; preds = %624
  %620 = add nuw nsw i64 %625, 1
  %621 = load i32, ptr %493, align 8, !tbaa !47
  %622 = sext i32 %621 to i64
  %623 = icmp slt i64 %620, %622
  br i1 %623, label %624, label %632, !llvm.loop !105

624:                                              ; preds = %606, %619
  %625 = phi i64 [ %620, %619 ], [ 0, %606 ]
  %626 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %625, i32 1
  %627 = load ptr, ptr %626, align 8, !tbaa !49
  %628 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %627, ptr noundef nonnull @RNA_FreestyleLineStyle) #6
  %629 = icmp eq i8 %628, 0
  br i1 %629, label %619, label %630

630:                                              ; preds = %624
  %631 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %625
  br label %632

632:                                              ; preds = %619, %606, %630
  %633 = phi ptr [ %631, %630 ], [ null, %606 ], [ null, %619 ]
  %634 = icmp eq ptr %633, null
  br i1 %634, label %1068, label %635

635:                                              ; preds = %632
  %636 = getelementptr inbounds %struct.PointerRNA, ptr %633, i64 0, i32 2
  %637 = load ptr, ptr %636, align 8, !tbaa !69
  %638 = icmp eq ptr %637, null
  br i1 %638, label %1068, label %639

639:                                              ; preds = %635
  %640 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %637, i64 0, i32 28
  %641 = load i16, ptr %640, align 4, !tbaa !127
  %642 = sext i16 %641 to i64
  %643 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %637, i64 0, i32 39, i64 %642
  %644 = load ptr, ptr %643, align 8, !tbaa !46
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %637, ptr noundef nonnull @RNA_LineStyleTextureSlot, ptr noundef %644) #6
  br label %1068

645:                                              ; preds = %469
  %646 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.18) #6
  %647 = icmp eq i8 %646, 0
  br i1 %647, label %669, label %648

648:                                              ; preds = %645
  %649 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %650 = load i32, ptr %649, align 8, !tbaa !47
  %651 = icmp sgt i32 %650, 0
  br i1 %651, label %657, label %1068

652:                                              ; preds = %657
  %653 = add nuw nsw i64 %658, 1
  %654 = load i32, ptr %649, align 8, !tbaa !47
  %655 = sext i32 %654 to i64
  %656 = icmp slt i64 %653, %655
  br i1 %656, label %657, label %1068, !llvm.loop !103

657:                                              ; preds = %648, %652
  %658 = phi i64 [ %653, %652 ], [ 0, %648 ]
  %659 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %658, i32 1
  %660 = load ptr, ptr %659, align 8, !tbaa !49
  %661 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %660, ptr noundef nonnull @RNA_Bone) #6
  %662 = icmp eq i8 %661, 0
  br i1 %662, label %652, label %663

663:                                              ; preds = %657
  %664 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %658
  %665 = load ptr, ptr %664, align 8, !tbaa !104
  %666 = load ptr, ptr %659, align 8, !tbaa !49
  %667 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %658, i32 2
  %668 = load ptr, ptr %667, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %665, ptr noundef %666, ptr noundef %668) #6
  br label %1068

669:                                              ; preds = %645
  %670 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.19) #6
  %671 = icmp eq i8 %670, 0
  br i1 %671, label %693, label %672

672:                                              ; preds = %669
  %673 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %674 = load i32, ptr %673, align 8, !tbaa !47
  %675 = icmp sgt i32 %674, 0
  br i1 %675, label %681, label %1068

676:                                              ; preds = %681
  %677 = add nuw nsw i64 %682, 1
  %678 = load i32, ptr %673, align 8, !tbaa !47
  %679 = sext i32 %678 to i64
  %680 = icmp slt i64 %677, %679
  br i1 %680, label %681, label %1068, !llvm.loop !103

681:                                              ; preds = %672, %676
  %682 = phi i64 [ %677, %676 ], [ 0, %672 ]
  %683 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %682, i32 1
  %684 = load ptr, ptr %683, align 8, !tbaa !49
  %685 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %684, ptr noundef nonnull @RNA_EditBone) #6
  %686 = icmp eq i8 %685, 0
  br i1 %686, label %676, label %687

687:                                              ; preds = %681
  %688 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %682
  %689 = load ptr, ptr %688, align 8, !tbaa !104
  %690 = load ptr, ptr %683, align 8, !tbaa !49
  %691 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %682, i32 2
  %692 = load ptr, ptr %691, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %689, ptr noundef %690, ptr noundef %692) #6
  br label %1068

693:                                              ; preds = %669
  %694 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.20) #6
  %695 = icmp eq i8 %694, 0
  br i1 %695, label %717, label %696

696:                                              ; preds = %693
  %697 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %698 = load i32, ptr %697, align 8, !tbaa !47
  %699 = icmp sgt i32 %698, 0
  br i1 %699, label %705, label %1068

700:                                              ; preds = %705
  %701 = add nuw nsw i64 %706, 1
  %702 = load i32, ptr %697, align 8, !tbaa !47
  %703 = sext i32 %702 to i64
  %704 = icmp slt i64 %701, %703
  br i1 %704, label %705, label %1068, !llvm.loop !103

705:                                              ; preds = %696, %700
  %706 = phi i64 [ %701, %700 ], [ 0, %696 ]
  %707 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %706, i32 1
  %708 = load ptr, ptr %707, align 8, !tbaa !49
  %709 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %708, ptr noundef nonnull @RNA_PoseBone) #6
  %710 = icmp eq i8 %709, 0
  br i1 %710, label %700, label %711

711:                                              ; preds = %705
  %712 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %706
  %713 = load ptr, ptr %712, align 8, !tbaa !104
  %714 = load ptr, ptr %707, align 8, !tbaa !49
  %715 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %706, i32 2
  %716 = load ptr, ptr %715, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %713, ptr noundef %714, ptr noundef %716) #6
  br label %1068

717:                                              ; preds = %693
  %718 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.21) #6
  %719 = icmp eq i8 %718, 0
  br i1 %719, label %741, label %720

720:                                              ; preds = %717
  %721 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %722 = load i32, ptr %721, align 8, !tbaa !47
  %723 = icmp sgt i32 %722, 0
  br i1 %723, label %729, label %1068

724:                                              ; preds = %729
  %725 = add nuw nsw i64 %730, 1
  %726 = load i32, ptr %721, align 8, !tbaa !47
  %727 = sext i32 %726 to i64
  %728 = icmp slt i64 %725, %727
  br i1 %728, label %729, label %1068, !llvm.loop !103

729:                                              ; preds = %720, %724
  %730 = phi i64 [ %725, %724 ], [ 0, %720 ]
  %731 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %730, i32 1
  %732 = load ptr, ptr %731, align 8, !tbaa !49
  %733 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %732, ptr noundef nonnull @RNA_ParticleSystem) #6
  %734 = icmp eq i8 %733, 0
  br i1 %734, label %724, label %735

735:                                              ; preds = %729
  %736 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %730
  %737 = load ptr, ptr %736, align 8, !tbaa !104
  %738 = load ptr, ptr %731, align 8, !tbaa !49
  %739 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %730, i32 2
  %740 = load ptr, ptr %739, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %737, ptr noundef %738, ptr noundef %740) #6
  br label %1068

741:                                              ; preds = %717
  %742 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.22) #6
  %743 = icmp eq i8 %742, 0
  br i1 %743, label %769, label %744

744:                                              ; preds = %741
  %745 = tail call i32 @PE_poll(ptr noundef %0) #6
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %768, label %747

747:                                              ; preds = %744
  %748 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %749 = load i32, ptr %748, align 8, !tbaa !47
  %750 = icmp sgt i32 %749, 0
  br i1 %750, label %756, label %1068

751:                                              ; preds = %756
  %752 = add nuw nsw i64 %757, 1
  %753 = load i32, ptr %748, align 8, !tbaa !47
  %754 = sext i32 %753 to i64
  %755 = icmp slt i64 %752, %754
  br i1 %755, label %756, label %1068, !llvm.loop !103

756:                                              ; preds = %747, %751
  %757 = phi i64 [ %752, %751 ], [ 0, %747 ]
  %758 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %757, i32 1
  %759 = load ptr, ptr %758, align 8, !tbaa !49
  %760 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %759, ptr noundef nonnull @RNA_ParticleSystem) #6
  %761 = icmp eq i8 %760, 0
  br i1 %761, label %751, label %762

762:                                              ; preds = %756
  %763 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %757
  %764 = load ptr, ptr %763, align 8, !tbaa !104
  %765 = load ptr, ptr %758, align 8, !tbaa !49
  %766 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %757, i32 2
  %767 = load ptr, ptr %766, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %764, ptr noundef %765, ptr noundef %767) #6
  br label %1068

768:                                              ; preds = %744
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef null, ptr noundef nonnull @RNA_ParticleSystem, ptr noundef null) #6
  br label %1068

769:                                              ; preds = %741
  %770 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.23) #6
  %771 = icmp eq i8 %770, 0
  br i1 %771, label %846, label %772

772:                                              ; preds = %769
  %773 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %774 = load i32, ptr %773, align 8, !tbaa !47
  %775 = icmp sgt i32 %774, 0
  br i1 %775, label %781, label %789

776:                                              ; preds = %781
  %777 = add nuw nsw i64 %782, 1
  %778 = load i32, ptr %773, align 8, !tbaa !47
  %779 = sext i32 %778 to i64
  %780 = icmp slt i64 %777, %779
  br i1 %780, label %781, label %789, !llvm.loop !105

781:                                              ; preds = %772, %776
  %782 = phi i64 [ %777, %776 ], [ 0, %772 ]
  %783 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %782, i32 1
  %784 = load ptr, ptr %783, align 8, !tbaa !49
  %785 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %784, ptr noundef nonnull @RNA_ParticleSettings) #6
  %786 = icmp eq i8 %785, 0
  br i1 %786, label %776, label %787

787:                                              ; preds = %781
  %788 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %782
  br label %789

789:                                              ; preds = %776, %772, %787
  %790 = phi ptr [ %788, %787 ], [ null, %772 ], [ null, %776 ]
  %791 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %792 = icmp eq ptr %790, null
  br i1 %792, label %799, label %793

793:                                              ; preds = %789
  %794 = getelementptr inbounds %struct.PointerRNA, ptr %790, i64 0, i32 2
  %795 = load ptr, ptr %794, align 8, !tbaa !69
  %796 = icmp eq ptr %795, null
  br i1 %796, label %799, label %797

797:                                              ; preds = %793
  %798 = load ptr, ptr %790, align 8, !tbaa !104
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %798, ptr noundef nonnull @RNA_ParticleSettings, ptr noundef nonnull %795) #6
  br label %1068

799:                                              ; preds = %793, %789
  %800 = load i32, ptr %791, align 8, !tbaa !47
  %801 = icmp sgt i32 %800, 0
  br i1 %801, label %807, label %815

802:                                              ; preds = %807
  %803 = add nuw nsw i64 %808, 1
  %804 = load i32, ptr %791, align 8, !tbaa !47
  %805 = sext i32 %804 to i64
  %806 = icmp slt i64 %803, %805
  br i1 %806, label %807, label %815, !llvm.loop !105

807:                                              ; preds = %799, %802
  %808 = phi i64 [ %803, %802 ], [ 0, %799 ]
  %809 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %808, i32 1
  %810 = load ptr, ptr %809, align 8, !tbaa !49
  %811 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %810, ptr noundef nonnull @RNA_ParticleSystem) #6
  %812 = icmp eq i8 %811, 0
  br i1 %812, label %802, label %813

813:                                              ; preds = %807
  %814 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %808
  br label %815

815:                                              ; preds = %802, %799, %813
  %816 = phi ptr [ %814, %813 ], [ null, %799 ], [ null, %802 ]
  %817 = icmp eq ptr %816, null
  br i1 %817, label %826, label %818

818:                                              ; preds = %815
  %819 = getelementptr inbounds %struct.PointerRNA, ptr %816, i64 0, i32 2
  %820 = load ptr, ptr %819, align 8, !tbaa !69
  %821 = icmp eq ptr %820, null
  br i1 %821, label %826, label %822

822:                                              ; preds = %818
  %823 = getelementptr inbounds %struct.ParticleSystem, ptr %820, i64 0, i32 2
  %824 = load ptr, ptr %823, align 8, !tbaa !95
  %825 = load ptr, ptr %816, align 8, !tbaa !104
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %825, ptr noundef nonnull @RNA_ParticleSettings, ptr noundef %824) #6
  br label %1068

826:                                              ; preds = %815, %818
  %827 = load i32, ptr %791, align 8, !tbaa !47
  %828 = icmp sgt i32 %827, 0
  br i1 %828, label %834, label %1068

829:                                              ; preds = %834
  %830 = add nuw nsw i64 %835, 1
  %831 = load i32, ptr %791, align 8, !tbaa !47
  %832 = sext i32 %831 to i64
  %833 = icmp slt i64 %830, %832
  br i1 %833, label %834, label %1068, !llvm.loop !103

834:                                              ; preds = %826, %829
  %835 = phi i64 [ %830, %829 ], [ 0, %826 ]
  %836 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %835, i32 1
  %837 = load ptr, ptr %836, align 8, !tbaa !49
  %838 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %837, ptr noundef nonnull @RNA_ParticleSettings) #6
  %839 = icmp eq i8 %838, 0
  br i1 %839, label %829, label %840

840:                                              ; preds = %834
  %841 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %835
  %842 = load ptr, ptr %841, align 8, !tbaa !104
  %843 = load ptr, ptr %836, align 8, !tbaa !49
  %844 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %835, i32 2
  %845 = load ptr, ptr %844, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %842, ptr noundef %843, ptr noundef %845) #6
  br label %1068

846:                                              ; preds = %769
  %847 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.24) #6
  %848 = icmp eq i8 %847, 0
  br i1 %848, label %875, label %849

849:                                              ; preds = %846
  %850 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %851 = load i32, ptr %850, align 8, !tbaa !47
  %852 = icmp sgt i32 %851, 0
  br i1 %852, label %858, label %866

853:                                              ; preds = %858
  %854 = add nuw nsw i64 %859, 1
  %855 = load i32, ptr %850, align 8, !tbaa !47
  %856 = sext i32 %855 to i64
  %857 = icmp slt i64 %854, %856
  br i1 %857, label %858, label %866, !llvm.loop !105

858:                                              ; preds = %849, %853
  %859 = phi i64 [ %854, %853 ], [ 0, %849 ]
  %860 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %859, i32 1
  %861 = load ptr, ptr %860, align 8, !tbaa !49
  %862 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %861, ptr noundef nonnull @RNA_Object) #6
  %863 = icmp eq i8 %862, 0
  br i1 %863, label %853, label %864

864:                                              ; preds = %858
  %865 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %859
  br label %866

866:                                              ; preds = %853, %849, %864
  %867 = phi ptr [ %865, %864 ], [ null, %849 ], [ null, %853 ]
  %868 = icmp eq ptr %867, null
  br i1 %868, label %1068, label %869

869:                                              ; preds = %866
  %870 = getelementptr inbounds %struct.PointerRNA, ptr %867, i64 0, i32 2
  %871 = load ptr, ptr %870, align 8, !tbaa !69
  %872 = icmp eq ptr %871, null
  br i1 %872, label %1068, label %873

873:                                              ; preds = %869
  %874 = tail call ptr @modifiers_findByType(ptr noundef nonnull %871, i32 noundef 22) #6
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %871, ptr noundef nonnull @RNA_ClothModifier, ptr noundef %874) #6
  br label %1068

875:                                              ; preds = %846
  %876 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.25) #6
  %877 = icmp eq i8 %876, 0
  br i1 %877, label %904, label %878

878:                                              ; preds = %875
  %879 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %880 = load i32, ptr %879, align 8, !tbaa !47
  %881 = icmp sgt i32 %880, 0
  br i1 %881, label %887, label %895

882:                                              ; preds = %887
  %883 = add nuw nsw i64 %888, 1
  %884 = load i32, ptr %879, align 8, !tbaa !47
  %885 = sext i32 %884 to i64
  %886 = icmp slt i64 %883, %885
  br i1 %886, label %887, label %895, !llvm.loop !105

887:                                              ; preds = %878, %882
  %888 = phi i64 [ %883, %882 ], [ 0, %878 ]
  %889 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %888, i32 1
  %890 = load ptr, ptr %889, align 8, !tbaa !49
  %891 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %890, ptr noundef nonnull @RNA_Object) #6
  %892 = icmp eq i8 %891, 0
  br i1 %892, label %882, label %893

893:                                              ; preds = %887
  %894 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %888
  br label %895

895:                                              ; preds = %882, %878, %893
  %896 = phi ptr [ %894, %893 ], [ null, %878 ], [ null, %882 ]
  %897 = icmp eq ptr %896, null
  br i1 %897, label %1068, label %898

898:                                              ; preds = %895
  %899 = getelementptr inbounds %struct.PointerRNA, ptr %896, i64 0, i32 2
  %900 = load ptr, ptr %899, align 8, !tbaa !69
  %901 = icmp eq ptr %900, null
  br i1 %901, label %1068, label %902

902:                                              ; preds = %898
  %903 = tail call ptr @modifiers_findByType(ptr noundef nonnull %900, i32 noundef 10) #6
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %900, ptr noundef nonnull @RNA_SoftBodyModifier, ptr noundef %903) #6
  br label %1068

904:                                              ; preds = %875
  %905 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.26) #6
  %906 = icmp eq i8 %905, 0
  br i1 %906, label %933, label %907

907:                                              ; preds = %904
  %908 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %909 = load i32, ptr %908, align 8, !tbaa !47
  %910 = icmp sgt i32 %909, 0
  br i1 %910, label %916, label %924

911:                                              ; preds = %916
  %912 = add nuw nsw i64 %917, 1
  %913 = load i32, ptr %908, align 8, !tbaa !47
  %914 = sext i32 %913 to i64
  %915 = icmp slt i64 %912, %914
  br i1 %915, label %916, label %924, !llvm.loop !105

916:                                              ; preds = %907, %911
  %917 = phi i64 [ %912, %911 ], [ 0, %907 ]
  %918 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %917, i32 1
  %919 = load ptr, ptr %918, align 8, !tbaa !49
  %920 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %919, ptr noundef nonnull @RNA_Object) #6
  %921 = icmp eq i8 %920, 0
  br i1 %921, label %911, label %922

922:                                              ; preds = %916
  %923 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %917
  br label %924

924:                                              ; preds = %911, %907, %922
  %925 = phi ptr [ %923, %922 ], [ null, %907 ], [ null, %911 ]
  %926 = icmp eq ptr %925, null
  br i1 %926, label %1068, label %927

927:                                              ; preds = %924
  %928 = getelementptr inbounds %struct.PointerRNA, ptr %925, i64 0, i32 2
  %929 = load ptr, ptr %928, align 8, !tbaa !69
  %930 = icmp eq ptr %929, null
  br i1 %930, label %1068, label %931

931:                                              ; preds = %927
  %932 = tail call ptr @modifiers_findByType(ptr noundef nonnull %929, i32 noundef 26) #6
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %929, ptr noundef nonnull @RNA_FluidSimulationModifier, ptr noundef %932) #6
  br label %1068

933:                                              ; preds = %904
  %934 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.27) #6
  %935 = icmp eq i8 %934, 0
  br i1 %935, label %962, label %936

936:                                              ; preds = %933
  %937 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %938 = load i32, ptr %937, align 8, !tbaa !47
  %939 = icmp sgt i32 %938, 0
  br i1 %939, label %945, label %953

940:                                              ; preds = %945
  %941 = add nuw nsw i64 %946, 1
  %942 = load i32, ptr %937, align 8, !tbaa !47
  %943 = sext i32 %942 to i64
  %944 = icmp slt i64 %941, %943
  br i1 %944, label %945, label %953, !llvm.loop !105

945:                                              ; preds = %936, %940
  %946 = phi i64 [ %941, %940 ], [ 0, %936 ]
  %947 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %946, i32 1
  %948 = load ptr, ptr %947, align 8, !tbaa !49
  %949 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %948, ptr noundef nonnull @RNA_Object) #6
  %950 = icmp eq i8 %949, 0
  br i1 %950, label %940, label %951

951:                                              ; preds = %945
  %952 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %946
  br label %953

953:                                              ; preds = %940, %936, %951
  %954 = phi ptr [ %952, %951 ], [ null, %936 ], [ null, %940 ]
  %955 = icmp eq ptr %954, null
  br i1 %955, label %1068, label %956

956:                                              ; preds = %953
  %957 = getelementptr inbounds %struct.PointerRNA, ptr %954, i64 0, i32 2
  %958 = load ptr, ptr %957, align 8, !tbaa !69
  %959 = icmp eq ptr %958, null
  br i1 %959, label %1068, label %960

960:                                              ; preds = %956
  %961 = tail call ptr @modifiers_findByType(ptr noundef nonnull %958, i32 noundef 31) #6
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %958, ptr noundef nonnull @RNA_SmokeModifier, ptr noundef %961) #6
  br label %1068

962:                                              ; preds = %933
  %963 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.28) #6
  %964 = icmp eq i8 %963, 0
  br i1 %964, label %991, label %965

965:                                              ; preds = %962
  %966 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %967 = load i32, ptr %966, align 8, !tbaa !47
  %968 = icmp sgt i32 %967, 0
  br i1 %968, label %974, label %982

969:                                              ; preds = %974
  %970 = add nuw nsw i64 %975, 1
  %971 = load i32, ptr %966, align 8, !tbaa !47
  %972 = sext i32 %971 to i64
  %973 = icmp slt i64 %970, %972
  br i1 %973, label %974, label %982, !llvm.loop !105

974:                                              ; preds = %965, %969
  %975 = phi i64 [ %970, %969 ], [ 0, %965 ]
  %976 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %975, i32 1
  %977 = load ptr, ptr %976, align 8, !tbaa !49
  %978 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %977, ptr noundef nonnull @RNA_Object) #6
  %979 = icmp eq i8 %978, 0
  br i1 %979, label %969, label %980

980:                                              ; preds = %974
  %981 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %975
  br label %982

982:                                              ; preds = %969, %965, %980
  %983 = phi ptr [ %981, %980 ], [ null, %965 ], [ null, %969 ]
  %984 = icmp eq ptr %983, null
  br i1 %984, label %1068, label %985

985:                                              ; preds = %982
  %986 = getelementptr inbounds %struct.PointerRNA, ptr %983, i64 0, i32 2
  %987 = load ptr, ptr %986, align 8, !tbaa !69
  %988 = icmp eq ptr %987, null
  br i1 %988, label %1068, label %989

989:                                              ; preds = %985
  %990 = tail call ptr @modifiers_findByType(ptr noundef nonnull %987, i32 noundef 23) #6
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %987, ptr noundef nonnull @RNA_CollisionModifier, ptr noundef %990) #6
  br label %1068

991:                                              ; preds = %962
  %992 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.29) #6
  %993 = icmp eq i8 %992, 0
  br i1 %993, label %1015, label %994

994:                                              ; preds = %991
  %995 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %996 = load i32, ptr %995, align 8, !tbaa !47
  %997 = icmp sgt i32 %996, 0
  br i1 %997, label %1003, label %1068

998:                                              ; preds = %1003
  %999 = add nuw nsw i64 %1004, 1
  %1000 = load i32, ptr %995, align 8, !tbaa !47
  %1001 = sext i32 %1000 to i64
  %1002 = icmp slt i64 %999, %1001
  br i1 %1002, label %1003, label %1068, !llvm.loop !103

1003:                                             ; preds = %994, %998
  %1004 = phi i64 [ %999, %998 ], [ 0, %994 ]
  %1005 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %1004, i32 1
  %1006 = load ptr, ptr %1005, align 8, !tbaa !49
  %1007 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %1006, ptr noundef nonnull @RNA_Brush) #6
  %1008 = icmp eq i8 %1007, 0
  br i1 %1008, label %998, label %1009

1009:                                             ; preds = %1003
  %1010 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %1004
  %1011 = load ptr, ptr %1010, align 8, !tbaa !104
  %1012 = load ptr, ptr %1005, align 8, !tbaa !49
  %1013 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %1004, i32 2
  %1014 = load ptr, ptr %1013, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %1011, ptr noundef %1012, ptr noundef %1014) #6
  br label %1068

1015:                                             ; preds = %991
  %1016 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.30) #6
  %1017 = icmp eq i8 %1016, 0
  br i1 %1017, label %1044, label %1018

1018:                                             ; preds = %1015
  %1019 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %1020 = load i32, ptr %1019, align 8, !tbaa !47
  %1021 = icmp sgt i32 %1020, 0
  br i1 %1021, label %1027, label %1035

1022:                                             ; preds = %1027
  %1023 = add nuw nsw i64 %1028, 1
  %1024 = load i32, ptr %1019, align 8, !tbaa !47
  %1025 = sext i32 %1024 to i64
  %1026 = icmp slt i64 %1023, %1025
  br i1 %1026, label %1027, label %1035, !llvm.loop !105

1027:                                             ; preds = %1018, %1022
  %1028 = phi i64 [ %1023, %1022 ], [ 0, %1018 ]
  %1029 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %1028, i32 1
  %1030 = load ptr, ptr %1029, align 8, !tbaa !49
  %1031 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %1030, ptr noundef nonnull @RNA_Object) #6
  %1032 = icmp eq i8 %1031, 0
  br i1 %1032, label %1022, label %1033

1033:                                             ; preds = %1027
  %1034 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %1028
  br label %1035

1035:                                             ; preds = %1022, %1018, %1033
  %1036 = phi ptr [ %1034, %1033 ], [ null, %1018 ], [ null, %1022 ]
  %1037 = icmp eq ptr %1036, null
  br i1 %1037, label %1068, label %1038

1038:                                             ; preds = %1035
  %1039 = getelementptr inbounds %struct.PointerRNA, ptr %1036, i64 0, i32 2
  %1040 = load ptr, ptr %1039, align 8, !tbaa !69
  %1041 = icmp eq ptr %1040, null
  br i1 %1041, label %1068, label %1042

1042:                                             ; preds = %1038
  %1043 = tail call ptr @modifiers_findByType(ptr noundef nonnull %1040, i32 noundef 40) #6
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %1040, ptr noundef nonnull @RNA_DynamicPaintModifier, ptr noundef %1043) #6
  br label %1068

1044:                                             ; preds = %1015
  %1045 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.31) #6
  %1046 = icmp eq i8 %1045, 0
  br i1 %1046, label %1068, label %1047

1047:                                             ; preds = %1044
  %1048 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %1049 = load i32, ptr %1048, align 8, !tbaa !47
  %1050 = icmp sgt i32 %1049, 0
  br i1 %1050, label %1056, label %1068

1051:                                             ; preds = %1056
  %1052 = add nuw nsw i64 %1057, 1
  %1053 = load i32, ptr %1048, align 8, !tbaa !47
  %1054 = sext i32 %1053 to i64
  %1055 = icmp slt i64 %1052, %1054
  br i1 %1055, label %1056, label %1068, !llvm.loop !103

1056:                                             ; preds = %1047, %1051
  %1057 = phi i64 [ %1052, %1051 ], [ 0, %1047 ]
  %1058 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %1057, i32 1
  %1059 = load ptr, ptr %1058, align 8, !tbaa !49
  %1060 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %1059, ptr noundef nonnull @RNA_FreestyleLineStyle) #6
  %1061 = icmp eq i8 %1060, 0
  br i1 %1061, label %1051, label %1062

1062:                                             ; preds = %1056
  %1063 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %1057
  %1064 = load ptr, ptr %1063, align 8, !tbaa !104
  %1065 = load ptr, ptr %1058, align 8, !tbaa !49
  %1066 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %1057, i32 2
  %1067 = load ptr, ptr %1066, align 8, !tbaa !69
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %1064, ptr noundef %1065, ptr noundef %1067) #6
  br label %1068

1068:                                             ; preds = %28, %52, %76, %100, %124, %148, %172, %196, %220, %244, %268, %292, %323, %652, %676, %700, %724, %751, %829, %998, %1051, %1062, %1047, %1009, %994, %840, %826, %762, %747, %735, %720, %711, %696, %687, %672, %663, %648, %334, %319, %303, %288, %279, %264, %255, %240, %231, %216, %207, %192, %183, %168, %159, %144, %135, %120, %111, %96, %87, %72, %63, %48, %39, %24, %866, %869, %895, %898, %924, %927, %953, %956, %982, %985, %1035, %1038, %1044, %1042, %989, %960, %931, %902, %873, %797, %822, %768, %507, %635, %639, %609, %613, %580, %584, %531, %555, %549, %495, %501, %632, %546, %543, %442, %438, %434, %461, %465, %458, %408, %420, %416, %412, %388, %400, %396, %392, %360, %376, %372, %367, %363, %316, %19, %20, %9
  %1069 = phi i32 [ 0, %9 ], [ 1, %20 ], [ 1, %19 ], [ 1, %316 ], [ 1, %363 ], [ 1, %367 ], [ 1, %372 ], [ 1, %376 ], [ 1, %360 ], [ -1, %388 ], [ 1, %400 ], [ 1, %396 ], [ 1, %392 ], [ -1, %408 ], [ 1, %420 ], [ 1, %416 ], [ 1, %412 ], [ 1, %458 ], [ 1, %465 ], [ 1, %461 ], [ 1, %434 ], [ 1, %438 ], [ 1, %442 ], [ 0, %507 ], [ 1, %635 ], [ 1, %639 ], [ 1, %609 ], [ 1, %613 ], [ 1, %580 ], [ 1, %584 ], [ 1, %531 ], [ 1, %555 ], [ 1, %549 ], [ 1, %495 ], [ 1, %501 ], [ 1, %632 ], [ 0, %546 ], [ 0, %543 ], [ 1, %768 ], [ 1, %822 ], [ 1, %797 ], [ 1, %873 ], [ 1, %902 ], [ 1, %931 ], [ 1, %960 ], [ 1, %989 ], [ 1, %1042 ], [ 0, %1044 ], [ -1, %1038 ], [ -1, %1035 ], [ -1, %985 ], [ -1, %982 ], [ -1, %956 ], [ -1, %953 ], [ -1, %927 ], [ -1, %924 ], [ -1, %898 ], [ -1, %895 ], [ -1, %869 ], [ -1, %866 ], [ 1, %39 ], [ 0, %24 ], [ 1, %48 ], [ 1, %63 ], [ 1, %72 ], [ 1, %87 ], [ 1, %96 ], [ 1, %111 ], [ 1, %120 ], [ 1, %135 ], [ 1, %144 ], [ 1, %159 ], [ 1, %168 ], [ 1, %183 ], [ 1, %192 ], [ 1, %207 ], [ 1, %216 ], [ 1, %231 ], [ 1, %240 ], [ 1, %255 ], [ 1, %264 ], [ 1, %279 ], [ 1, %288 ], [ 1, %303 ], [ 1, %319 ], [ 1, %334 ], [ 1, %648 ], [ 1, %663 ], [ 1, %672 ], [ 1, %687 ], [ 1, %696 ], [ 1, %711 ], [ 1, %720 ], [ 1, %735 ], [ 1, %747 ], [ 1, %762 ], [ 1, %826 ], [ 1, %840 ], [ 1, %994 ], [ 1, %1009 ], [ 1, %1047 ], [ 1, %1062 ], [ 1, %1051 ], [ 1, %998 ], [ 1, %829 ], [ 1, %751 ], [ 1, %724 ], [ 1, %700 ], [ 1, %676 ], [ 1, %652 ], [ 1, %323 ], [ 1, %292 ], [ 1, %268 ], [ 1, %244 ], [ 1, %220 ], [ 1, %196 ], [ 1, %172 ], [ 1, %148 ], [ 1, %124 ], [ 1, %100 ], [ 1, %76 ], [ 1, %52 ], [ 0, %28 ]
  ret i32 %1069
}

declare ptr @CTX_wm_space_buts(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CTX_data_dir(ptr noundef) local_unnamed_addr #2

declare void @CTX_data_dir_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CTX_data_equals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CTX_data_pointer_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @give_current_material_texture_node(ptr noundef) local_unnamed_addr #2

declare ptr @give_node_material(ptr noundef) local_unnamed_addr #2

declare i32 @PE_poll(ptr noundef) local_unnamed_addr #2

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @buttons_context_draw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [128 x i8], align 16
  %4 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @uiLayoutRow(ptr noundef %1, i32 noundef 1) #6
  tail call void @uiLayoutSetAlignment(ptr noundef %9, i8 noundef zeroext 1) #6
  %10 = tail call ptr @uiLayoutGetBlock(ptr noundef %9) #6
  tail call void @uiBlockSetEmboss(ptr noundef %10, i8 noundef zeroext 1) #6
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !129
  %12 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 15
  %13 = tail call ptr @uiDefIconButBitC(ptr noundef %10, i32 noundef 6656, i32 noundef 2, i32 noundef 0, i32 noundef 42, i32 noundef 0, i32 noundef 0, i16 noundef signext %11, i16 noundef signext %11, ptr noundef nonnull %12, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.33) #6
  tail call void @uiButClearFlag(ptr noundef %13, i32 noundef 524288) #6
  tail call void @uiButSetFunc(ptr noundef %13, ptr noundef nonnull @pin_cb, ptr noundef null, ptr noundef null) #6
  %14 = getelementptr inbounds %struct.ButsContextPath, ptr %6, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !47
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 7
  br label %19

19:                                               ; preds = %17, %46
  %20 = phi i64 [ 0, %17 ], [ %47, %46 ]
  %21 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %6, i64 0, i64 %20
  %22 = icmp eq i64 %20, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  call void @uiItemL(ptr noundef %9, ptr noundef nonnull @.str.34, i32 noundef 845) #6
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %6, i64 0, i64 %20, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !69
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %6, i64 0, i64 %20, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !49
  %31 = call i32 @RNA_struct_ui_icon(ptr noundef %30) #6
  %32 = call ptr @RNA_struct_name_get_alloc(ptr noundef nonnull %21, ptr noundef nonnull %3, i32 noundef 128, ptr noundef null) #6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %28
  %35 = load i16, ptr %18, align 8, !tbaa !57
  switch i16 %35, label %36 [
    i16 0, label %39
    i16 1, label %39
    i16 13, label %39
  ]

36:                                               ; preds = %34
  %37 = load ptr, ptr %29, align 8, !tbaa !49
  %38 = icmp eq ptr %37, @RNA_Scene
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %34, %34, %36
  br label %40

40:                                               ; preds = %36, %39
  %41 = phi ptr [ %32, %39 ], [ @.str.34, %36 ]
  call void @uiItemLDrag(ptr noundef %9, ptr noundef nonnull %21, ptr noundef nonnull %41, i32 noundef %31) #6
  %42 = icmp eq ptr %32, %3
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %44(ptr noundef nonnull %32) #6
  br label %46

45:                                               ; preds = %28
  call void @uiItemL(ptr noundef %9, ptr noundef nonnull @.str.34, i32 noundef %31) #6
  br label %46

46:                                               ; preds = %24, %40, %43, %45
  %47 = add nuw nsw i64 %20, 1
  %48 = load i32, ptr %14, align 8, !tbaa !47
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %19, label %51, !llvm.loop !133

51:                                               ; preds = %46, %8, %2
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #6
  ret void
}

declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiLayoutSetAlignment(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @uiDefIconButBitC(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @uiButClearFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @pin_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 15
  %6 = load i8, ptr %5, align 8, !tbaa !58
  %7 = and i8 %6, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %47, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #6
  %11 = getelementptr inbounds %struct.SpaceButs, ptr %10, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.ButsContextPath, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !47
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %47, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.SpaceButs, ptr %10, i64 0, i32 7
  %18 = getelementptr inbounds %struct.SpaceButs, ptr %10, i64 0, i32 15
  %19 = zext i32 %14 to i64
  br label %20

20:                                               ; preds = %44, %16
  %21 = phi i64 [ %19, %16 ], [ %22, %44 ]
  %22 = add nsw i64 %21, -1
  %23 = trunc i64 %21 to i32
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %12, i64 0, i64 %22
  %27 = load i16, ptr %17, align 8, !tbaa !57
  %28 = icmp eq i16 %27, 7
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load i8, ptr %18, align 8, !tbaa !58
  %31 = and i8 %30, 2
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %12, i64 0, i64 %22, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !49
  %36 = icmp eq ptr %35, @RNA_ParticleSystem
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %12, i64 0, i64 %22, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !69
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ParticleSystem, ptr %39, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !95
  br label %47

44:                                               ; preds = %37, %33, %29, %25
  %45 = load ptr, ptr %26, align 8, !tbaa !104
  %46 = icmp eq ptr %45, null
  br i1 %46, label %20, label %47, !llvm.loop !134

47:                                               ; preds = %44, %20, %3, %41, %9
  %48 = phi ptr [ %43, %41 ], [ null, %9 ], [ null, %3 ], [ %45, %44 ], [ null, %20 ]
  %49 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 20
  store ptr %48, ptr %49, align 8, !tbaa !68
  %50 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  tail call void @ED_area_tag_redraw(ptr noundef %50) #6
  ret void
}

declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_struct_name_get_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @uiItemLDrag(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @buttons_context_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str.35) #6
  %4 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %4, ptr noundef nonnull align 1 dereferenceable(19) @.str.36, i64 19, i1 false) #6
  %5 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 3
  store i64 32783474438860611, ptr %5, align 1
  %6 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 4
  store i16 42, ptr %6, align 1
  %7 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 12
  store ptr @buttons_panel_context, ptr %7, align 8, !tbaa !135
  %8 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 9
  store i32 2, ptr %8, align 8, !tbaa !138
  %9 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @buttons_panel_context(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !139
  tail call void @buttons_context_draw(ptr noundef %0, ptr noundef %4)
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @buttons_context_id_path(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.SpaceButs, ptr %2, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ButsContextPath, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !47
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %40, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.SpaceButs, ptr %2, i64 0, i32 7
  %10 = getelementptr inbounds %struct.SpaceButs, ptr %2, i64 0, i32 15
  %11 = zext i32 %6 to i64
  br label %12

12:                                               ; preds = %8, %37
  %13 = phi i64 [ %11, %8 ], [ %15, %37 ]
  %14 = add nsw i64 %13, -1
  %15 = add nsw i64 %13, -1
  %16 = trunc i64 %13 to i32
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %4, i64 0, i64 %14
  %20 = load i16, ptr %9, align 8, !tbaa !57
  %21 = icmp eq i16 %20, 7
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load i8, ptr %10, align 8, !tbaa !58
  %24 = and i8 %23, 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %4, i64 0, i64 %14, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = icmp eq ptr %28, @RNA_ParticleSystem
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %4, i64 0, i64 %14, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !69
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ParticleSystem, ptr %32, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !95
  br label %40

37:                                               ; preds = %26, %30, %22, %18
  %38 = load ptr, ptr %19, align 8, !tbaa !104
  %39 = icmp eq ptr %38, null
  br i1 %39, label %12, label %40, !llvm.loop !134

40:                                               ; preds = %12, %37, %1, %34
  %41 = phi ptr [ %36, %34 ], [ null, %1 ], [ %38, %37 ], [ null, %12 ]
  ret ptr %41
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @buttons_context_path_object(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ButsContextPath, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !47
  %4 = add nsw i32 %3, -1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %5, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %7, ptr noundef nonnull @RNA_Object) #6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = load i32, ptr %2, align 8, !tbaa !47
  %12 = add nsw i32 %11, -1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %13, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %15, ptr noundef nonnull @RNA_Scene) #6
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %10
  %19 = load i32, ptr %2, align 8, !tbaa !47
  %20 = add nsw i32 %19, -1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %21, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !69
  %24 = getelementptr inbounds %struct.Scene, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !141
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.Base, ptr %25, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !142
  br label %30

30:                                               ; preds = %18, %27
  %31 = phi ptr [ %29, %27 ], [ null, %18 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = sext i32 %19 to i64
  %35 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %34
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %31, ptr noundef %35) #6
  %36 = load i32, ptr %2, align 8, !tbaa !47
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %2, align 8, !tbaa !47
  br label %38

38:                                               ; preds = %30, %10, %1, %33
  %39 = phi i32 [ 1, %33 ], [ 1, %1 ], [ 0, %10 ], [ 0, %30 ]
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @buttons_context_path_data(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ButsContextPath, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !47
  %5 = add nsw i32 %4, -1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %8, ptr noundef nonnull @RNA_Mesh) #6
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  switch i32 %1, label %12 [
    i32 -1, label %78
    i32 1, label %78
  ]

12:                                               ; preds = %11, %2
  %13 = load ptr, ptr %7, align 8, !tbaa !49
  %14 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %13, ptr noundef nonnull @RNA_Curve) #6
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = add i32 %1, 1
  %18 = icmp ult i32 %17, 6
  br i1 %18, label %73, label %19

19:                                               ; preds = %73, %16, %12
  %20 = load ptr, ptr %7, align 8, !tbaa !49
  %21 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %20, ptr noundef nonnull @RNA_Armature) #6
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  switch i32 %1, label %24 [
    i32 -1, label %78
    i32 25, label %78
  ]

24:                                               ; preds = %23, %19
  %25 = load ptr, ptr %7, align 8, !tbaa !49
  %26 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %25, ptr noundef nonnull @RNA_MetaBall) #6
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  switch i32 %1, label %29 [
    i32 -1, label %78
    i32 5, label %78
  ]

29:                                               ; preds = %28, %24
  %30 = load ptr, ptr %7, align 8, !tbaa !49
  %31 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %30, ptr noundef nonnull @RNA_Lattice) #6
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  switch i32 %1, label %34 [
    i32 -1, label %78
    i32 22, label %78
  ]

34:                                               ; preds = %33, %29
  %35 = load ptr, ptr %7, align 8, !tbaa !49
  %36 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %35, ptr noundef nonnull @RNA_Camera) #6
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  switch i32 %1, label %39 [
    i32 -1, label %78
    i32 11, label %78
  ]

39:                                               ; preds = %38, %34
  %40 = load ptr, ptr %7, align 8, !tbaa !49
  %41 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %40, ptr noundef nonnull @RNA_Lamp) #6
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  switch i32 %1, label %44 [
    i32 -1, label %78
    i32 10, label %78
  ]

44:                                               ; preds = %43, %39
  %45 = load ptr, ptr %7, align 8, !tbaa !49
  %46 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %45, ptr noundef nonnull @RNA_Speaker) #6
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  switch i32 %1, label %49 [
    i32 -1, label %78
    i32 12, label %78
  ]

49:                                               ; preds = %48, %44
  %50 = tail call fastcc i32 @buttons_context_path_object(ptr noundef %0), !range !87
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %78, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr %3, align 8, !tbaa !47
  %54 = add nsw i32 %53, -1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %55, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !69
  %58 = icmp eq ptr %57, null
  br i1 %58, label %78, label %59

59:                                               ; preds = %52
  %60 = icmp eq i32 %1, -1
  br i1 %60, label %66, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 3
  %63 = load i16, ptr %62, align 8, !tbaa !59
  %64 = sext i16 %63 to i32
  %65 = icmp eq i32 %64, %1
  br i1 %65, label %66, label %78

66:                                               ; preds = %61, %59
  %67 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 19
  %68 = load ptr, ptr %67, align 8, !tbaa !101
  %69 = sext i32 %53 to i64
  %70 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %69
  tail call void @RNA_id_pointer_create(ptr noundef %68, ptr noundef %70) #6
  %71 = load i32, ptr %3, align 8, !tbaa !47
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %3, align 8, !tbaa !47
  br label %78

73:                                               ; preds = %16
  %74 = trunc i32 %17 to i8
  %75 = lshr i8 57, %74
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %19, label %78

78:                                               ; preds = %73, %49, %61, %52, %48, %48, %43, %43, %38, %38, %33, %33, %28, %28, %23, %23, %11, %11, %66
  %79 = phi i32 [ 1, %66 ], [ 1, %11 ], [ 1, %11 ], [ 1, %23 ], [ 1, %23 ], [ 1, %28 ], [ 1, %28 ], [ 1, %33 ], [ 1, %33 ], [ 1, %38 ], [ 1, %38 ], [ 1, %43 ], [ 1, %43 ], [ 1, %48 ], [ 1, %48 ], [ 0, %52 ], [ 0, %61 ], [ 0, %49 ], [ 1, %73 ]
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @buttons_context_path_particle(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ButsContextPath, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !47
  %4 = add nsw i32 %3, -1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %5, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %7, ptr noundef nonnull @RNA_ParticleSettings) #6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @buttons_context_path_object(ptr noundef %0), !range !87
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 8, !tbaa !47
  %15 = add nsw i32 %14, -1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %16, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !59
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = tail call ptr @psys_get_current(ptr noundef nonnull %18) #6
  %26 = load i32, ptr %2, align 8, !tbaa !47
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %27
  tail call void @RNA_pointer_create(ptr noundef nonnull %18, ptr noundef nonnull @RNA_ParticleSystem, ptr noundef %25, ptr noundef %28) #6
  %29 = load i32, ptr %2, align 8, !tbaa !47
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %2, align 8, !tbaa !47
  br label %31

31:                                               ; preds = %10, %20, %13, %1, %24
  %32 = phi i32 [ 1, %24 ], [ 1, %1 ], [ 0, %13 ], [ 0, %20 ], [ 0, %10 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @buttons_context_path_material(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ButsContextPath, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = add nsw i32 %5, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %9, ptr noundef nonnull @RNA_Material) #6
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %3
  %13 = tail call fastcc i32 @buttons_context_path_object(ptr noundef %0), !range !87
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %54, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %4, align 8, !tbaa !47
  %17 = add nsw i32 %16, -1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %18, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  %21 = icmp eq ptr %20, null
  br i1 %21, label %54, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 3
  %24 = load i16, ptr %23, align 8, !tbaa !59
  %25 = add i16 %24, -1
  %26 = icmp ult i16 %25, 5
  br i1 %26, label %27, label %54

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 32
  %29 = load i32, ptr %28, align 4, !tbaa !107
  %30 = trunc i32 %29 to i16
  %31 = tail call ptr @give_current_material(ptr noundef nonnull %20, i16 noundef signext %30) #6
  %32 = load i32, ptr %4, align 8, !tbaa !47
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %33
  tail call void @RNA_id_pointer_create(ptr noundef %31, ptr noundef %34) #6
  %35 = load i32, ptr %4, align 8, !tbaa !47
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %4, align 8, !tbaa !47
  %37 = icmp eq i8 %1, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %27
  %39 = tail call ptr @give_current_material_texture_node(ptr noundef %31) #6
  %40 = icmp eq ptr %39, null
  %41 = icmp eq i8 %2, 0
  %42 = and i1 %41, %40
  br i1 %42, label %45, label %54

43:                                               ; preds = %27
  %44 = icmp eq i8 %2, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38, %43
  %46 = tail call ptr @give_node_material(ptr noundef %31) #6
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %4, align 8, !tbaa !47
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %50
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %46, ptr noundef %51) #6
  %52 = load i32, ptr %4, align 8, !tbaa !47
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %4, align 8, !tbaa !47
  br label %54

54:                                               ; preds = %15, %22, %12, %43, %48, %45, %38, %3
  %55 = phi i32 [ 1, %3 ], [ 1, %38 ], [ 1, %45 ], [ 1, %48 ], [ 1, %43 ], [ 0, %12 ], [ 0, %22 ], [ 0, %15 ]
  ret i32 %55
}

declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @psys_get_current(ptr noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @buttons_context_path_linestyle(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ButsContextPath, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !47
  %4 = add nsw i32 %3, -1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %5, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %7, ptr noundef nonnull @RNA_FreestyleLineStyle) #6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load i32, ptr %2, align 8, !tbaa !47
  %12 = add nsw i32 %11, -1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %13, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %15, ptr noundef nonnull @RNA_Scene) #6
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %10
  %19 = load i32, ptr %2, align 8, !tbaa !47
  %20 = add nsw i32 %19, -1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %21, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !69
  %24 = tail call ptr @BKE_linestyle_active_from_scene(ptr noundef %23) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = load i32, ptr %2, align 8, !tbaa !47
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %28
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %24, ptr noundef %29) #6
  %30 = load i32, ptr %2, align 8, !tbaa !47
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %2, align 8, !tbaa !47
  br label %32

32:                                               ; preds = %18, %10, %1, %26
  %33 = phi i32 [ 1, %26 ], [ 1, %1 ], [ 0, %10 ], [ 0, %18 ]
  ret i32 %33
}

declare ptr @give_current_world_texture(ptr noundef) local_unnamed_addr #2

declare ptr @give_current_particle_texture(ptr noundef) local_unnamed_addr #2

declare ptr @give_current_material_texture(ptr noundef) local_unnamed_addr #2

declare ptr @give_current_lamp_texture(ptr noundef) local_unnamed_addr #2

declare ptr @give_current_linestyle_texture(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_paint_get_active(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_linestyle_active_from_scene(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

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
!34 = !{!35, !36, i64 240}
!35 = !{!"SpaceButs", !36, i64 0, !36, i64 8, !39, i64 16, !40, i64 32, !41, i64 36, !37, i64 40, !42, i64 56, !45, i64 216, !45, i64 218, !45, i64 220, !45, i64 222, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !37, i64 232, !37, i64 233, !36, i64 240, !40, i64 248, !40, i64 252, !36, i64 256, !36, i64 264}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"int", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!"View2D", !43, i64 0, !43, i64 16, !44, i64 32, !44, i64 48, !44, i64 64, !37, i64 80, !37, i64 88, !41, i64 96, !41, i64 100, !45, i64 104, !45, i64 106, !45, i64 108, !45, i64 110, !45, i64 112, !45, i64 114, !45, i64 116, !45, i64 118, !45, i64 120, !45, i64 122, !45, i64 124, !45, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!43 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!44 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!45 = !{!"short", !37, i64 0}
!46 = !{!36, !36, i64 0}
!47 = !{!48, !40, i64 192}
!48 = !{!"ButsContextPath", !37, i64 0, !40, i64 192, !40, i64 196, !40, i64 200}
!49 = !{!50, !36, i64 8}
!50 = !{!"PointerRNA", !51, i64 0, !36, i64 8, !36, i64 16}
!51 = !{!"", !36, i64 0}
!52 = !{!35, !40, i64 252}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!35, !45, i64 220}
!57 = !{!35, !45, i64 216}
!58 = !{!35, !37, i64 232}
!59 = !{!60, !45, i64 136}
!60 = !{!"Object", !61, i64 0, !36, i64 120, !36, i64 128, !45, i64 136, !45, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !62, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !45, i64 948, !45, i64 950, !45, i64 952, !45, i64 954, !45, i64 956, !45, i64 958, !45, i64 960, !45, i64 962, !45, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !45, i64 1036, !45, i64 1038, !45, i64 1040, !37, i64 1042, !37, i64 1043, !45, i64 1044, !37, i64 1046, !37, i64 1047, !41, i64 1048, !41, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !41, i64 1120, !45, i64 1124, !45, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !45, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !45, i64 1266, !41, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !63, i64 1304, !63, i64 1312, !40, i64 1320, !40, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!61 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !45, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!62 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!63 = !{!"long", !37, i64 0}
!64 = distinct !{!64, !54, !55}
!65 = !{!35, !40, i64 248}
!66 = !{!35, !45, i64 228}
!67 = !{!48, !40, i64 200}
!68 = !{!35, !36, i64 256}
!69 = !{!50, !36, i64 16}
!70 = !{!71, !36, i64 136}
!71 = !{!"Scene", !61, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !45, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !72, i64 280, !79, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !45, i64 4376, !45, i64 4378, !40, i64 4380, !39, i64 4384, !80, i64 4400, !81, i64 4416, !84, i64 4600, !36, i64 4608, !85, i64 4616, !36, i64 4640, !63, i64 4648, !63, i64 4656, !74, i64 4664, !75, i64 4824, !86, i64 4888, !36, i64 4952}
!72 = !{!"RenderData", !73, i64 0, !36, i64 248, !36, i64 256, !76, i64 264, !77, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !45, i64 432, !45, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !45, i64 456, !45, i64 458, !45, i64 460, !45, i64 462, !45, i64 464, !45, i64 466, !40, i64 468, !45, i64 472, !45, i64 474, !45, i64 476, !45, i64 478, !45, i64 480, !45, i64 482, !40, i64 484, !40, i64 488, !45, i64 492, !45, i64 494, !40, i64 496, !40, i64 500, !45, i64 504, !45, i64 506, !45, i64 508, !45, i64 510, !45, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !45, i64 528, !45, i64 530, !45, i64 532, !45, i64 534, !45, i64 536, !45, i64 538, !45, i64 540, !45, i64 542, !43, i64 544, !43, i64 560, !44, i64 576, !39, i64 592, !45, i64 608, !45, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !40, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !45, i64 648, !45, i64 650, !45, i64 652, !45, i64 654, !45, i64 656, !45, i64 658, !41, i64 660, !41, i64 664, !45, i64 668, !45, i64 670, !41, i64 672, !41, i64 676, !37, i64 680, !40, i64 1704, !45, i64 1708, !45, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !45, i64 2524, !45, i64 2526, !41, i64 2528, !41, i64 2532, !45, i64 2536, !45, i64 2538, !41, i64 2540, !45, i64 2544, !45, i64 2546, !40, i64 2548, !45, i64 2552, !45, i64 2554, !45, i64 2556, !45, i64 2558, !41, i64 2560, !41, i64 2564, !36, i64 2568, !40, i64 2576, !41, i64 2580, !37, i64 2584, !78, i64 2616, !40, i64 3976, !40, i64 3980}
!73 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !45, i64 8, !45, i64 10, !41, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !74, i64 24, !75, i64 184}
!74 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!75 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!76 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !45, i64 48, !45, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!77 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!78 = !{!"BakeData", !73, i64 0, !37, i64 248, !45, i64 1272, !45, i64 1274, !45, i64 1276, !45, i64 1278, !41, i64 1280, !41, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!79 = !{!"AudioData", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !45, i64 20, !45, i64 22, !41, i64 24, !41, i64 28}
!80 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!81 = !{!"GameData", !80, i64 0, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !45, i64 32, !37, i64 34, !82, i64 40, !45, i64 64, !45, i64 66, !41, i64 68, !83, i64 72, !41, i64 128, !41, i64 132, !40, i64 136, !45, i64 140, !45, i64 142, !45, i64 144, !45, i64 146, !45, i64 148, !45, i64 150, !45, i64 152, !45, i64 154, !45, i64 156, !45, i64 158, !45, i64 160, !45, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!82 = !{!"GameDome", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6, !41, i64 8, !41, i64 12, !36, i64 16}
!83 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 44, !41, i64 48, !45, i64 52, !45, i64 54}
!84 = !{!"UnitSettings", !41, i64 0, !37, i64 4, !37, i64 5, !45, i64 6}
!85 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!86 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!87 = !{i32 0, i32 2}
!88 = !{!35, !36, i64 264}
!89 = !{!90, !36, i64 24}
!90 = !{!"ButsContextTexture", !39, i64 0, !36, i64 16, !36, i64 24, !40, i64 32}
!91 = !{!92, !36, i64 16}
!92 = !{!"ButsTextureUser", !36, i64 0, !36, i64 8, !36, i64 16, !50, i64 24, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !40, i64 80, !36, i64 88, !40, i64 96}
!93 = !{!45, !45, i64 0}
!94 = !{!90, !36, i64 16}
!95 = !{!96, !36, i64 16}
!96 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !39, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !37, i64 168, !37, i64 232, !41, i64 296, !41, i64 300, !41, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !45, i64 340, !45, i64 342, !45, i64 344, !45, i64 346, !37, i64 348, !37, i64 540, !45, i64 564, !45, i64 566, !36, i64 568, !36, i64 576, !39, i64 584, !36, i64 600, !36, i64 608, !40, i64 616, !40, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !41, i64 648, !41, i64 652}
!97 = !{!98, !36, i64 160}
!98 = !{!"bArmature", !61, i64 0, !36, i64 120, !39, i64 128, !39, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !45, i64 208, !45, i64 210, !40, i64 212, !40, i64 216, !40, i64 220, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252}
!99 = !{!98, !36, i64 176}
!100 = !{!98, !36, i64 168}
!101 = !{!60, !36, i64 296}
!102 = !{!60, !36, i64 288}
!103 = distinct !{!103, !54, !55}
!104 = !{!50, !36, i64 0}
!105 = distinct !{!105, !54, !55}
!106 = !{!60, !40, i64 456}
!107 = !{!60, !40, i64 460}
!108 = !{!60, !36, i64 440}
!109 = !{!92, !36, i64 40}
!110 = !{!92, !36, i64 24}
!111 = !{!92, !36, i64 32}
!112 = !{!92, !36, i64 48}
!113 = !{!92, !36, i64 64}
!114 = !{!92, !36, i64 56}
!115 = !{!116, !36, i64 768}
!116 = !{!"Material", !61, i64 0, !36, i64 120, !45, i64 128, !45, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !117, i64 224, !118, i64 312, !41, i64 328, !41, i64 332, !41, i64 336, !41, i64 340, !41, i64 344, !41, i64 348, !41, i64 352, !45, i64 356, !45, i64 358, !45, i64 360, !37, i64 362, !37, i64 363, !41, i64 364, !41, i64 368, !45, i64 372, !45, i64 374, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !45, i64 392, !45, i64 394, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !45, i64 412, !45, i64 414, !45, i64 416, !45, i64 418, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !41, i64 456, !37, i64 460, !41, i64 524, !41, i64 528, !41, i64 532, !40, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !45, i64 544, !45, i64 546, !45, i64 548, !37, i64 550, !37, i64 551, !45, i64 552, !45, i64 554, !41, i64 556, !41, i64 560, !37, i64 564, !41, i64 580, !41, i64 584, !45, i64 588, !45, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !45, i64 612, !45, i64 614, !41, i64 616, !41, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !41, i64 800, !41, i64 804, !41, i64 808, !41, i64 812, !41, i64 816, !45, i64 820, !45, i64 822, !37, i64 824, !37, i64 836, !41, i64 848, !41, i64 852, !41, i64 856, !41, i64 860, !41, i64 864, !41, i64 868, !41, i64 872, !45, i64 876, !45, i64 878, !40, i64 880, !45, i64 884, !45, i64 886, !37, i64 888, !45, i64 904, !45, i64 906, !45, i64 908, !45, i64 910, !45, i64 912, !37, i64 914, !36, i64 920, !39, i64 928}
!117 = !{!"VolumeSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !41, i64 52, !41, i64 56, !41, i64 60, !45, i64 64, !45, i64 66, !45, i64 68, !45, i64 70, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!118 = !{!"GameSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!119 = !{!120, !45, i64 166}
!120 = !{!"ParticleSettings", !61, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !40, i64 156, !45, i64 160, !45, i64 162, !45, i64 164, !45, i64 166, !45, i64 168, !45, i64 170, !45, i64 172, !45, i64 174, !40, i64 176, !40, i64 180, !45, i64 184, !45, i64 186, !45, i64 188, !45, i64 190, !45, i64 192, !45, i64 194, !45, i64 196, !45, i64 198, !45, i64 200, !45, i64 202, !45, i64 204, !45, i64 206, !45, i64 208, !45, i64 210, !45, i64 212, !45, i64 214, !45, i64 216, !45, i64 218, !45, i64 220, !45, i64 222, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !41, i64 232, !41, i64 236, !37, i64 240, !37, i64 248, !41, i64 256, !41, i64 260, !41, i64 264, !45, i64 268, !45, i64 270, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !37, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !45, i64 340, !37, i64 342, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !41, i64 368, !41, i64 372, !37, i64 376, !41, i64 388, !41, i64 392, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !41, i64 412, !37, i64 416, !41, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !40, i64 444, !40, i64 448, !41, i64 452, !41, i64 456, !41, i64 460, !41, i64 464, !41, i64 468, !41, i64 472, !41, i64 476, !41, i64 480, !41, i64 484, !41, i64 488, !41, i64 492, !41, i64 496, !41, i64 500, !41, i64 504, !41, i64 508, !41, i64 512, !41, i64 516, !41, i64 520, !41, i64 524, !41, i64 528, !41, i64 532, !41, i64 536, !41, i64 540, !41, i64 544, !41, i64 548, !37, i64 552, !41, i64 560, !41, i64 564, !40, i64 568, !40, i64 572, !37, i64 576, !36, i64 720, !39, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !45, i64 792, !37, i64 794}
!121 = !{!116, !37, i64 543}
!122 = !{!116, !37, i64 541}
!123 = !{!124, !45, i64 280}
!124 = !{!"Lamp", !61, i64 0, !36, i64 120, !45, i64 128, !45, i64 130, !40, i64 132, !45, i64 136, !45, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !36, i64 200, !45, i64 208, !45, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !45, i64 240, !45, i64 242, !45, i64 244, !45, i64 246, !37, i64 248, !37, i64 249, !45, i64 250, !45, i64 252, !45, i64 254, !45, i64 256, !45, i64 258, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !45, i64 276, !45, i64 278, !45, i64 280, !45, i64 282, !45, i64 284, !45, i64 286, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !45, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !45, i64 496, !45, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!125 = !{!126, !45, i64 132}
!126 = !{!"World", !61, i64 0, !36, i64 120, !45, i64 128, !45, i64 130, !45, i64 132, !45, i64 134, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !45, i64 200, !45, i64 202, !45, i64 204, !45, i64 206, !45, i64 208, !45, i64 210, !45, i64 212, !45, i64 214, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !45, i64 264, !45, i64 266, !45, i64 268, !45, i64 270, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !45, i64 288, !45, i64 290, !45, i64 292, !45, i64 294, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !45, i64 324, !45, i64 326, !45, i64 328, !45, i64 330, !45, i64 332, !45, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !45, i64 504, !45, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!127 = !{!128, !45, i64 220}
!128 = !{!"FreestyleLineStyle", !61, i64 0, !36, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !40, i64 148, !41, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !40, i64 192, !45, i64 196, !45, i64 198, !45, i64 200, !45, i64 202, !45, i64 204, !45, i64 206, !40, i64 208, !40, i64 212, !41, i64 216, !45, i64 220, !45, i64 222, !45, i64 224, !37, i64 226, !45, i64 232, !45, i64 234, !45, i64 236, !45, i64 238, !45, i64 240, !45, i64 242, !40, i64 244, !37, i64 248, !36, i64 392, !39, i64 400, !39, i64 416, !39, i64 432, !39, i64 448}
!129 = !{!130, !45, i64 8948}
!130 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !45, i64 8472, !45, i64 8474, !45, i64 8476, !45, i64 8478, !45, i64 8480, !45, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !45, i64 8496, !45, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !45, i64 8528, !45, i64 8530, !45, i64 8532, !45, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !45, i64 8712, !45, i64 8714, !45, i64 8716, !45, i64 8718, !45, i64 8720, !45, i64 8722, !45, i64 8724, !45, i64 8726, !37, i64 8728, !45, i64 8896, !45, i64 8898, !45, i64 8900, !45, i64 8902, !45, i64 8904, !45, i64 8906, !45, i64 8908, !45, i64 8910, !40, i64 8912, !40, i64 8916, !45, i64 8920, !45, i64 8922, !45, i64 8924, !45, i64 8926, !45, i64 8928, !45, i64 8930, !45, i64 8932, !45, i64 8934, !45, i64 8936, !45, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !45, i64 8944, !45, i64 8946, !45, i64 8948, !45, i64 8950, !45, i64 8952, !45, i64 8954, !41, i64 8956, !41, i64 8960, !40, i64 8964, !45, i64 8968, !45, i64 8970, !41, i64 8972, !45, i64 8976, !45, i64 8978, !45, i64 8980, !45, i64 8982, !131, i64 8984, !37, i64 9760, !37, i64 9772, !45, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !41, i64 10904, !41, i64 10908, !40, i64 10912, !45, i64 10916, !45, i64 10918, !45, i64 10920, !45, i64 10922, !45, i64 10924, !45, i64 10926, !132, i64 10928}
!131 = !{!"ColorBand", !45, i64 0, !45, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!132 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !45, i64 24, !37, i64 26}
!133 = distinct !{!133, !54, !55}
!134 = distinct !{!134, !54, !55}
!135 = !{!136, !36, i64 368}
!136 = !{!"PanelType", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !37, i64 208, !37, i64 272, !40, i64 336, !40, i64 340, !40, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !137, i64 376}
!137 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!138 = !{!136, !40, i64 344}
!139 = !{!140, !36, i64 24}
!140 = !{!"Panel", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !37, i64 160, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !45, i64 240, !45, i64 242, !45, i64 244, !45, i64 246, !45, i64 248, !45, i64 250, !40, i64 252, !36, i64 256, !36, i64 264}
!141 = !{!71, !36, i64 168}
!142 = !{!143, !36, i64 32}
!143 = !{!"Base", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !45, i64 28, !45, i64 30, !36, i64 32}
