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
%struct.ButsContextTexture = type { %struct.ListBase, ptr, ptr, i32 }
%struct.ButsTextureUser = type { ptr, ptr, ptr, %struct.PointerRNA, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.PanelType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.Panel = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }

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

; Function Attrs: noinline nounwind optsize uwtable
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
  %10 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %11 = tail call fastcc i32 @buttons_context_path(ptr noundef %0, ptr noundef %10, i32 noundef 1) #7
  tail call void @buttons_texture_context_compute(ptr noundef %0, ptr noundef nonnull %1) #6
  %12 = getelementptr inbounds %struct.ButsContextPath, ptr %10, i64 0, i32 1
  %13 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 19
  br label %14

14:                                               ; preds = %9, %34
  %15 = phi i32 [ 0, %9 ], [ %35, %34 ]
  %16 = phi i32 [ 0, %9 ], [ %36, %34 ]
  %17 = tail call fastcc i32 @buttons_context_path(ptr noundef %0, ptr noundef %10, i32 noundef %16) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %14
  %20 = shl nuw nsw i32 1, %16
  %21 = or i32 %15, %20
  %22 = icmp eq i32 %16, 4
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i32, ptr %12, align 8, !tbaa !47
  %25 = add nsw i32 %24, -1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %10, i64 0, i64 %26, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = tail call i32 @RNA_struct_ui_icon(ptr noundef nonnull %28) #6
  br label %32

32:                                               ; preds = %23, %30
  %33 = phi i32 [ %31, %30 ], [ 189, %23 ]
  store i32 %33, ptr %13, align 4, !tbaa !52
  br label %34

34:                                               ; preds = %32, %14, %19
  %35 = phi i32 [ %21, %19 ], [ %15, %14 ], [ %21, %32 ]
  %36 = add nuw nsw i32 %16, 1
  %37 = icmp eq i32 %36, 14
  br i1 %37, label %38, label %14, !llvm.loop !53

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 9
  %40 = load i16, ptr %39, align 4, !tbaa !55
  %41 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 7
  store i16 %40, ptr %41, align 8, !tbaa !56
  %42 = zext nneg i16 %40 to i32
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %35
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 15
  %48 = load i8, ptr %47, align 8, !tbaa !57
  %49 = and i8 %48, 16
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = tail call fastcc i32 @buttons_shading_new_context(ptr noundef %0, i32 noundef %35) #7, !range !58
  %53 = trunc i32 %52 to i16
  br label %67

54:                                               ; preds = %46
  %55 = and i32 %35, 3
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54, %64
  %58 = phi i32 [ %65, %64 ], [ 0, %54 ]
  %59 = shl nuw nsw i32 1, %58
  %60 = and i32 %59, %35
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = trunc i32 %58 to i16
  br label %67

64:                                               ; preds = %57
  %65 = add nuw nsw i32 %58, 1
  %66 = icmp eq i32 %65, 14
  br i1 %66, label %69, label %57, !llvm.loop !59

67:                                               ; preds = %54, %62, %51
  %68 = phi i16 [ %53, %51 ], [ %63, %62 ], [ 3, %54 ]
  store i16 %68, ptr %41, align 8, !tbaa !56
  br label %69

69:                                               ; preds = %64, %67, %38
  %70 = phi i16 [ %40, %38 ], [ %68, %67 ], [ %40, %64 ]
  %71 = sext i16 %70 to i32
  %72 = tail call fastcc i32 @buttons_context_path(ptr noundef %0, ptr noundef %10, i32 noundef %71) #7
  %73 = load i16, ptr %41, align 8, !tbaa !56
  %74 = zext nneg i16 %73 to i32
  %75 = shl nuw i32 1, %74
  %76 = and i32 %75, %35
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = and i32 %35, 8
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i16 1, i16 3
  store i16 %81, ptr %41, align 8, !tbaa !56
  br label %82

82:                                               ; preds = %78, %69
  %83 = phi i16 [ %73, %69 ], [ %81, %78 ]
  %84 = sext i16 %83 to i32
  %85 = tail call fastcc i32 @buttons_shading_context(ptr noundef %0, i32 noundef %84) #7, !range !60
  %86 = icmp eq i32 %85, 0
  %87 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 15
  %88 = load i8, ptr %87, align 8, !tbaa !57
  %89 = and i8 %88, -17
  %90 = select i1 %86, i8 0, i8 16
  %91 = or disjoint i8 %89, %90
  store i8 %91, ptr %87, align 8, !tbaa !57
  %92 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 18
  store i32 %35, ptr %92, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @buttons_context_path(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !62 {
  %4 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %1, i8 0, i64 208, i1 false)
  %6 = load i16, ptr %5, align 4, !tbaa !63
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.ButsContextPath, ptr %1, i64 0, i32 3
  store i32 %7, ptr %8, align 8, !tbaa !64
  %9 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %10, ptr noundef nonnull %1) #6
  %13 = getelementptr inbounds %struct.ButsContextPath, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !47
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !47
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3, %12
  %18 = getelementptr inbounds %struct.ButsContextPath, ptr %1, i64 0, i32 1
  %19 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  tail call void @RNA_id_pointer_create(ptr noundef %19, ptr noundef nonnull %1) #6
  %20 = load i32, ptr %18, align 8, !tbaa !47
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %18, align 8, !tbaa !47
  br label %22

22:                                               ; preds = %17, %12
  switch i32 %2, label %54 [
    i32 1, label %23
    i32 0, label %23
    i32 13, label %25
    i32 2, label %27
    i32 3, label %29
    i32 8, label %29
    i32 11, label %29
    i32 10, label %31
    i32 4, label %33
    i32 7, label %35
    i32 5, label %37
    i32 6, label %43
    i32 9, label %47
    i32 12, label %52
  ]

23:                                               ; preds = %22, %22
  %24 = tail call fastcc i32 @buttons_context_path_scene(ptr noundef nonnull %1) #7, !range !66
  br label %54

25:                                               ; preds = %22
  %26 = tail call fastcc i32 @buttons_context_path_scene(ptr noundef nonnull %1) #7, !range !66
  br label %54

27:                                               ; preds = %22
  %28 = tail call fastcc i32 @buttons_context_path_world(ptr noundef nonnull %1) #7, !range !60
  br label %54

29:                                               ; preds = %22, %22, %22
  %30 = tail call fastcc i32 @buttons_context_path_object(ptr noundef nonnull %1) #7, !range !60
  br label %54

31:                                               ; preds = %22
  %32 = tail call fastcc i32 @buttons_context_path_modifier(ptr noundef nonnull %1) #7, !range !60
  br label %54

33:                                               ; preds = %22
  %34 = tail call fastcc i32 @buttons_context_path_data(ptr noundef nonnull %1, i32 noundef -1) #7, !range !60
  br label %54

35:                                               ; preds = %22
  %36 = tail call fastcc i32 @buttons_context_path_particle(ptr noundef nonnull %1) #7, !range !60
  br label %54

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %39 = load ptr, ptr %38, align 8, !tbaa !67
  %40 = icmp ne ptr %39, null
  %41 = zext i1 %40 to i8
  %42 = tail call fastcc i32 @buttons_context_path_material(ptr noundef nonnull %1, i8 noundef zeroext 0, i8 noundef zeroext %41) #7, !range !60
  br label %54

43:                                               ; preds = %22
  %44 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %45 = load ptr, ptr %44, align 8, !tbaa !67
  %46 = tail call fastcc i32 @buttons_context_path_texture(ptr noundef nonnull %1, ptr noundef %45) #7, !range !60
  br label %54

47:                                               ; preds = %22
  %48 = tail call fastcc i32 @buttons_context_path_bone(ptr noundef nonnull %1) #7, !range !60
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = tail call fastcc i32 @buttons_context_path_data(ptr noundef nonnull %1, i32 noundef 25) #7, !range !60
  br label %54

52:                                               ; preds = %22
  %53 = tail call fastcc i32 @buttons_context_path_pose_bone(ptr noundef nonnull %1) #7, !range !60
  br label %54

54:                                               ; preds = %22, %47, %50, %52, %43, %37, %35, %33, %31, %29, %27, %25, %23
  %55 = phi i32 [ %53, %52 ], [ 1, %47 ], [ %51, %50 ], [ %46, %43 ], [ %42, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ 0, %22 ]
  ret i32 %55
}

; Function Attrs: optsize
declare void @buttons_texture_context_compute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_struct_ui_icon(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @buttons_shading_new_context(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !68 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #6
  %4 = and i32 %1, 32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = icmp eq ptr %3, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !69
  %11 = and i16 %10, -2
  %12 = icmp ne i16 %11, 10
  %13 = and i32 %1, 16
  %14 = icmp eq i32 %13, 0
  %15 = or i1 %14, %12
  br i1 %15, label %16, label %19

16:                                               ; preds = %8, %6
  %17 = lshr i32 %1, 1
  %18 = and i32 %17, 2
  br label %19

19:                                               ; preds = %8, %16, %2
  %20 = phi i32 [ 5, %2 ], [ %18, %16 ], [ 4, %8 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @buttons_shading_context(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !74 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #6
  switch i32 %1, label %4 [
    i32 6, label %14
    i32 5, label %14
    i32 2, label %14
  ]

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 4
  %6 = icmp ne ptr %3, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !69
  %11 = and i16 %10, -2
  %12 = icmp eq i16 %11, 10
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %4
  br label %14

14:                                               ; preds = %8, %2, %2, %2, %13
  %15 = phi i32 [ 0, %13 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %8 ]
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @buttons_context(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %416, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %416, label %10

10:                                               ; preds = %6
  %11 = tail call zeroext i8 @CTX_data_dir(ptr noundef %1) #6
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @CTX_data_dir_set(ptr noundef %2, ptr noundef nonnull getelementptr inbounds ([32 x ptr], ptr @buttons_context_dir, i64 0, i64 1)) #6
  br label %416

18:                                               ; preds = %13
  tail call void @CTX_data_dir_set(ptr noundef %2, ptr noundef nonnull @buttons_context_dir) #6
  br label %416

19:                                               ; preds = %10
  %20 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.2) #6
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_Scene) #7, !range !60
  br label %416

24:                                               ; preds = %19
  %25 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.3) #6
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_World) #7, !range !60
  br label %416

29:                                               ; preds = %24
  %30 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.4) #6
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_Object) #7, !range !60
  br label %416

34:                                               ; preds = %29
  %35 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.5) #6
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_Mesh) #7, !range !60
  br label %416

39:                                               ; preds = %34
  %40 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.6) #6
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_Armature) #7, !range !60
  br label %416

44:                                               ; preds = %39
  %45 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.7) #6
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_Lattice) #7, !range !60
  br label %416

49:                                               ; preds = %44
  %50 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.8) #6
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_Curve) #7, !range !60
  br label %416

54:                                               ; preds = %49
  %55 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.9) #6
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_MetaBall) #7, !range !60
  br label %416

59:                                               ; preds = %54
  %60 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.10) #6
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_Lamp) #7, !range !60
  br label %416

64:                                               ; preds = %59
  %65 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.12) #6
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_Camera) #7, !range !60
  br label %416

69:                                               ; preds = %64
  %70 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.11) #6
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_Speaker) #7, !range !60
  br label %416

74:                                               ; preds = %69
  %75 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.13) #6
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_Material) #7, !range !60
  br label %416

79:                                               ; preds = %74
  %80 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.15) #6
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %84 = load ptr, ptr %83, align 8, !tbaa !67
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ButsContextTexture, ptr %84, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !75
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %88, ptr noundef nonnull @RNA_Texture, ptr noundef %88) #6
  br label %416

89:                                               ; preds = %82
  %90 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_Texture) #7, !range !60
  br label %416

91:                                               ; preds = %79
  %92 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.14) #6
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %119, label %94

94:                                               ; preds = %91
  %95 = tail call fastcc ptr @get_pointer_type(ptr noundef nonnull %8, ptr noundef nonnull @RNA_Object) #7
  %96 = icmp eq ptr %95, null
  br i1 %96, label %416, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.PointerRNA, ptr %95, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !77
  %100 = icmp eq ptr %99, null
  br i1 %100, label %416, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.Object, ptr %99, i64 0, i32 3
  %103 = load i16, ptr %102, align 8, !tbaa !69
  %104 = add i16 %103, -1
  %105 = icmp ult i16 %104, 5
  br i1 %105, label %106, label %416

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.Object, ptr %99, i64 0, i32 31
  %108 = load i32, ptr %107, align 8, !tbaa !78
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %416, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.Object, ptr %99, i64 0, i32 32
  %112 = load i32, ptr %111, align 4, !tbaa !79
  %113 = tail call i32 @llvm.smax.i32(i32 %112, i32 1)
  %114 = getelementptr inbounds %struct.Object, ptr %99, i64 0, i32 29
  %115 = load ptr, ptr %114, align 8, !tbaa !80
  %116 = zext nneg i32 %113 to i64
  %117 = getelementptr ptr, ptr %115, i64 %116
  %118 = getelementptr ptr, ptr %117, i64 -1
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %99, ptr noundef nonnull @RNA_MaterialSlot, ptr noundef %118) #6
  br label %416

119:                                              ; preds = %91
  %120 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.16) #6
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %139, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %124 = load ptr, ptr %123, align 8, !tbaa !67
  %125 = icmp eq ptr %124, null
  br i1 %125, label %416, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.ButsContextTexture, ptr %124, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !81
  %129 = icmp eq ptr %128, null
  br i1 %129, label %416, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.ButsTextureUser, ptr %128, i64 0, i32 3, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !82
  %133 = icmp eq ptr %132, null
  br i1 %133, label %416, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.ButsTextureUser, ptr %128, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !84
  %137 = getelementptr inbounds %struct.ButsTextureUser, ptr %128, i64 0, i32 3, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !85
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %136, ptr noundef %138, ptr noundef nonnull %132) #6
  br label %416

139:                                              ; preds = %119
  %140 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.17) #6
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %157, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %144 = load ptr, ptr %143, align 8, !tbaa !67
  %145 = icmp eq ptr %144, null
  br i1 %145, label %416, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.ButsContextTexture, ptr %144, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !81
  %149 = icmp eq ptr %148, null
  br i1 %149, label %416, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.ButsTextureUser, ptr %148, i64 0, i32 3, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !82
  %153 = icmp eq ptr %152, null
  br i1 %153, label %416, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.ButsTextureUser, ptr %148, i64 0, i32 4
  %156 = load ptr, ptr %155, align 8, !tbaa !86
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef null, ptr noundef nonnull @RNA_Property, ptr noundef %156) #6
  br label %416

157:                                              ; preds = %139
  %158 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.32) #6
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %186, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %162 = load ptr, ptr %161, align 8, !tbaa !67
  %163 = icmp eq ptr %162, null
  br i1 %163, label %175, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.ButsContextTexture, ptr %162, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !81
  %167 = icmp eq ptr %166, null
  br i1 %167, label %416, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.ButsTextureUser, ptr %166, i64 0, i32 6
  %170 = load ptr, ptr %169, align 8, !tbaa !87
  %171 = icmp eq ptr %170, null
  br i1 %171, label %416, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.ButsTextureUser, ptr %166, i64 0, i32 5
  %174 = load ptr, ptr %173, align 8, !tbaa !88
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %174, ptr noundef nonnull @RNA_Node, ptr noundef nonnull %170) #6
  br label %416

175:                                              ; preds = %160
  %176 = tail call fastcc ptr @get_pointer_type(ptr noundef nonnull %8, ptr noundef nonnull @RNA_Material) #7
  %177 = icmp eq ptr %176, null
  br i1 %177, label %416, label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.PointerRNA, ptr %176, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !77
  %181 = icmp eq ptr %180, null
  br i1 %181, label %416, label %182

182:                                              ; preds = %178
  %183 = tail call ptr @give_current_material_texture_node(ptr noundef nonnull %180) #6
  %184 = getelementptr inbounds %struct.Material, ptr %180, i64 0, i32 103
  %185 = load ptr, ptr %184, align 8, !tbaa !89
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %185, ptr noundef nonnull @RNA_Node, ptr noundef %183) #6
  br label %416

186:                                              ; preds = %157
  %187 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %280, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 21
  %191 = load ptr, ptr %190, align 8, !tbaa !67
  %192 = tail call fastcc ptr @get_pointer_type(ptr noundef nonnull %8, ptr noundef nonnull @RNA_ParticleSystem) #7
  %193 = icmp eq ptr %192, null
  br i1 %193, label %206, label %194

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.PointerRNA, ptr %192, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !77
  %197 = getelementptr inbounds %struct.ParticleSystem, ptr %196, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !93
  %199 = icmp eq ptr %198, null
  br i1 %199, label %416, label %200

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.ParticleSettings, ptr %198, i64 0, i32 10
  %202 = load i16, ptr %201, align 2, !tbaa !95
  %203 = sext i16 %202 to i64
  %204 = getelementptr inbounds %struct.ParticleSettings, ptr %198, i64 0, i32 121, i64 %203
  %205 = load ptr, ptr %204, align 8, !tbaa !46
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %198, ptr noundef nonnull @RNA_ParticleSettingsTextureSlot, ptr noundef %205) #6
  br label %416

206:                                              ; preds = %189
  %207 = icmp eq ptr %191, null
  br i1 %207, label %208, label %416

208:                                              ; preds = %206
  %209 = tail call fastcc ptr @get_pointer_type(ptr noundef nonnull %8, ptr noundef nonnull @RNA_Material) #7
  %210 = icmp eq ptr %209, null
  br i1 %210, label %241, label %211

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.PointerRNA, ptr %209, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !77
  %214 = icmp eq ptr %213, null
  br i1 %214, label %416, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.Material, ptr %213, i64 0, i32 77
  %217 = load i8, ptr %216, align 1, !tbaa !97
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %235, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.Material, ptr %213, i64 0, i32 103
  %221 = load ptr, ptr %220, align 8, !tbaa !89
  %222 = icmp eq ptr %221, null
  br i1 %222, label %235, label %223

223:                                              ; preds = %219
  %224 = tail call ptr @give_current_material_texture_node(ptr noundef nonnull %213) #6
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %416

226:                                              ; preds = %223
  %227 = tail call ptr @give_node_material(ptr noundef nonnull %213) #6
  %228 = icmp eq ptr %227, null
  br i1 %228, label %416, label %229

229:                                              ; preds = %226
  %230 = getelementptr inbounds %struct.Material, ptr %227, i64 0, i32 75
  %231 = load i8, ptr %230, align 1, !tbaa !98
  %232 = zext i8 %231 to i64
  %233 = getelementptr inbounds %struct.Material, ptr %227, i64 0, i32 102, i64 %232
  %234 = load ptr, ptr %233, align 8, !tbaa !46
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %227, ptr noundef nonnull @RNA_MaterialTextureSlot, ptr noundef %234) #6
  br label %416

235:                                              ; preds = %215, %219
  %236 = getelementptr inbounds %struct.Material, ptr %213, i64 0, i32 75
  %237 = load i8, ptr %236, align 1, !tbaa !98
  %238 = zext i8 %237 to i64
  %239 = getelementptr inbounds %struct.Material, ptr %213, i64 0, i32 102, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !46
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %213, ptr noundef nonnull @RNA_MaterialTextureSlot, ptr noundef %240) #6
  br label %416

241:                                              ; preds = %208
  %242 = tail call fastcc ptr @get_pointer_type(ptr noundef nonnull %8, ptr noundef nonnull @RNA_Lamp) #7
  %243 = icmp eq ptr %242, null
  br i1 %243, label %254, label %244

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.PointerRNA, ptr %242, i64 0, i32 2
  %246 = load ptr, ptr %245, align 8, !tbaa !77
  %247 = icmp eq ptr %246, null
  br i1 %247, label %416, label %248

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.Lamp, ptr %246, i64 0, i32 49
  %250 = load i16, ptr %249, align 8, !tbaa !99
  %251 = sext i16 %250 to i64
  %252 = getelementptr inbounds %struct.Lamp, ptr %246, i64 0, i32 69, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !46
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %246, ptr noundef nonnull @RNA_LampTextureSlot, ptr noundef %253) #6
  br label %416

254:                                              ; preds = %241
  %255 = tail call fastcc ptr @get_pointer_type(ptr noundef nonnull %8, ptr noundef nonnull @RNA_World) #7
  %256 = icmp eq ptr %255, null
  br i1 %256, label %267, label %257

257:                                              ; preds = %254
  %258 = getelementptr inbounds %struct.PointerRNA, ptr %255, i64 0, i32 2
  %259 = load ptr, ptr %258, align 8, !tbaa !77
  %260 = icmp eq ptr %259, null
  br i1 %260, label %416, label %261

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.World, ptr %259, i64 0, i32 4
  %263 = load i16, ptr %262, align 4, !tbaa !101
  %264 = sext i16 %263 to i64
  %265 = getelementptr inbounds %struct.World, ptr %259, i64 0, i32 70, i64 %264
  %266 = load ptr, ptr %265, align 8, !tbaa !46
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %259, ptr noundef nonnull @RNA_WorldTextureSlot, ptr noundef %266) #6
  br label %416

267:                                              ; preds = %254
  %268 = tail call fastcc ptr @get_pointer_type(ptr noundef nonnull %8, ptr noundef nonnull @RNA_FreestyleLineStyle) #7
  %269 = icmp eq ptr %268, null
  br i1 %269, label %416, label %270

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.PointerRNA, ptr %268, i64 0, i32 2
  %272 = load ptr, ptr %271, align 8, !tbaa !77
  %273 = icmp eq ptr %272, null
  br i1 %273, label %416, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %272, i64 0, i32 28
  %276 = load i16, ptr %275, align 4, !tbaa !103
  %277 = sext i16 %276 to i64
  %278 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %272, i64 0, i32 39, i64 %277
  %279 = load ptr, ptr %278, align 8, !tbaa !46
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %272, ptr noundef nonnull @RNA_LineStyleTextureSlot, ptr noundef %279) #6
  br label %416

280:                                              ; preds = %186
  %281 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.18) #6
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %280
  %284 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_Bone) #7, !range !60
  br label %416

285:                                              ; preds = %280
  %286 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.19) #6
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %285
  %289 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_EditBone) #7, !range !60
  br label %416

290:                                              ; preds = %285
  %291 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.20) #6
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %290
  %294 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_PoseBone) #7, !range !60
  br label %416

295:                                              ; preds = %290
  %296 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.21) #6
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %300, label %298

298:                                              ; preds = %295
  %299 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_ParticleSystem) #7, !range !60
  br label %416

300:                                              ; preds = %295
  %301 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.22) #6
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %309, label %303

303:                                              ; preds = %300
  %304 = tail call i32 @PE_poll(ptr noundef %0) #6
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %308, label %306

306:                                              ; preds = %303
  %307 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_ParticleSystem) #7, !range !60
  br label %416

308:                                              ; preds = %303
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef null, ptr noundef nonnull @RNA_ParticleSystem, ptr noundef null) #6
  br label %416

309:                                              ; preds = %300
  %310 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.23) #6
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %334, label %312

312:                                              ; preds = %309
  %313 = tail call fastcc ptr @get_pointer_type(ptr noundef nonnull %8, ptr noundef nonnull @RNA_ParticleSettings) #7
  %314 = icmp eq ptr %313, null
  br i1 %314, label %321, label %315

315:                                              ; preds = %312
  %316 = getelementptr inbounds %struct.PointerRNA, ptr %313, i64 0, i32 2
  %317 = load ptr, ptr %316, align 8, !tbaa !77
  %318 = icmp eq ptr %317, null
  br i1 %318, label %321, label %319

319:                                              ; preds = %315
  %320 = load ptr, ptr %313, align 8, !tbaa !105
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %320, ptr noundef nonnull @RNA_ParticleSettings, ptr noundef nonnull %317) #6
  br label %416

321:                                              ; preds = %315, %312
  %322 = tail call fastcc ptr @get_pointer_type(ptr noundef nonnull %8, ptr noundef nonnull @RNA_ParticleSystem) #7
  %323 = icmp eq ptr %322, null
  br i1 %323, label %332, label %324

324:                                              ; preds = %321
  %325 = getelementptr inbounds %struct.PointerRNA, ptr %322, i64 0, i32 2
  %326 = load ptr, ptr %325, align 8, !tbaa !77
  %327 = icmp eq ptr %326, null
  br i1 %327, label %332, label %328

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.ParticleSystem, ptr %326, i64 0, i32 2
  %330 = load ptr, ptr %329, align 8, !tbaa !93
  %331 = load ptr, ptr %322, align 8, !tbaa !105
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef %331, ptr noundef nonnull @RNA_ParticleSettings, ptr noundef %330) #6
  br label %416

332:                                              ; preds = %321, %324
  %333 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_ParticleSettings) #7, !range !60
  br label %416

334:                                              ; preds = %309
  %335 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.24) #6
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %346, label %337

337:                                              ; preds = %334
  %338 = tail call fastcc ptr @get_pointer_type(ptr noundef nonnull %8, ptr noundef nonnull @RNA_Object) #7
  %339 = icmp eq ptr %338, null
  br i1 %339, label %416, label %340

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct.PointerRNA, ptr %338, i64 0, i32 2
  %342 = load ptr, ptr %341, align 8, !tbaa !77
  %343 = icmp eq ptr %342, null
  br i1 %343, label %416, label %344

344:                                              ; preds = %340
  %345 = tail call ptr @modifiers_findByType(ptr noundef nonnull %342, i32 noundef 22) #6
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %342, ptr noundef nonnull @RNA_ClothModifier, ptr noundef %345) #6
  br label %416

346:                                              ; preds = %334
  %347 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.25) #6
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %358, label %349

349:                                              ; preds = %346
  %350 = tail call fastcc ptr @get_pointer_type(ptr noundef nonnull %8, ptr noundef nonnull @RNA_Object) #7
  %351 = icmp eq ptr %350, null
  br i1 %351, label %416, label %352

352:                                              ; preds = %349
  %353 = getelementptr inbounds %struct.PointerRNA, ptr %350, i64 0, i32 2
  %354 = load ptr, ptr %353, align 8, !tbaa !77
  %355 = icmp eq ptr %354, null
  br i1 %355, label %416, label %356

356:                                              ; preds = %352
  %357 = tail call ptr @modifiers_findByType(ptr noundef nonnull %354, i32 noundef 10) #6
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %354, ptr noundef nonnull @RNA_SoftBodyModifier, ptr noundef %357) #6
  br label %416

358:                                              ; preds = %346
  %359 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.26) #6
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %370, label %361

361:                                              ; preds = %358
  %362 = tail call fastcc ptr @get_pointer_type(ptr noundef nonnull %8, ptr noundef nonnull @RNA_Object) #7
  %363 = icmp eq ptr %362, null
  br i1 %363, label %416, label %364

364:                                              ; preds = %361
  %365 = getelementptr inbounds %struct.PointerRNA, ptr %362, i64 0, i32 2
  %366 = load ptr, ptr %365, align 8, !tbaa !77
  %367 = icmp eq ptr %366, null
  br i1 %367, label %416, label %368

368:                                              ; preds = %364
  %369 = tail call ptr @modifiers_findByType(ptr noundef nonnull %366, i32 noundef 26) #6
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %366, ptr noundef nonnull @RNA_FluidSimulationModifier, ptr noundef %369) #6
  br label %416

370:                                              ; preds = %358
  %371 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.27) #6
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %382, label %373

373:                                              ; preds = %370
  %374 = tail call fastcc ptr @get_pointer_type(ptr noundef nonnull %8, ptr noundef nonnull @RNA_Object) #7
  %375 = icmp eq ptr %374, null
  br i1 %375, label %416, label %376

376:                                              ; preds = %373
  %377 = getelementptr inbounds %struct.PointerRNA, ptr %374, i64 0, i32 2
  %378 = load ptr, ptr %377, align 8, !tbaa !77
  %379 = icmp eq ptr %378, null
  br i1 %379, label %416, label %380

380:                                              ; preds = %376
  %381 = tail call ptr @modifiers_findByType(ptr noundef nonnull %378, i32 noundef 31) #6
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %378, ptr noundef nonnull @RNA_SmokeModifier, ptr noundef %381) #6
  br label %416

382:                                              ; preds = %370
  %383 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.28) #6
  %384 = icmp eq i8 %383, 0
  br i1 %384, label %394, label %385

385:                                              ; preds = %382
  %386 = tail call fastcc ptr @get_pointer_type(ptr noundef nonnull %8, ptr noundef nonnull @RNA_Object) #7
  %387 = icmp eq ptr %386, null
  br i1 %387, label %416, label %388

388:                                              ; preds = %385
  %389 = getelementptr inbounds %struct.PointerRNA, ptr %386, i64 0, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !77
  %391 = icmp eq ptr %390, null
  br i1 %391, label %416, label %392

392:                                              ; preds = %388
  %393 = tail call ptr @modifiers_findByType(ptr noundef nonnull %390, i32 noundef 23) #6
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %390, ptr noundef nonnull @RNA_CollisionModifier, ptr noundef %393) #6
  br label %416

394:                                              ; preds = %382
  %395 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.29) #6
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %399, label %397

397:                                              ; preds = %394
  %398 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_Brush) #7, !range !60
  br label %416

399:                                              ; preds = %394
  %400 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.30) #6
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %411, label %402

402:                                              ; preds = %399
  %403 = tail call fastcc ptr @get_pointer_type(ptr noundef nonnull %8, ptr noundef nonnull @RNA_Object) #7
  %404 = icmp eq ptr %403, null
  br i1 %404, label %416, label %405

405:                                              ; preds = %402
  %406 = getelementptr inbounds %struct.PointerRNA, ptr %403, i64 0, i32 2
  %407 = load ptr, ptr %406, align 8, !tbaa !77
  %408 = icmp eq ptr %407, null
  br i1 %408, label %416, label %409

409:                                              ; preds = %405
  %410 = tail call ptr @modifiers_findByType(ptr noundef nonnull %407, i32 noundef 40) #6
  tail call void @CTX_data_pointer_set(ptr noundef %2, ptr noundef nonnull %407, ptr noundef nonnull @RNA_DynamicPaintModifier, ptr noundef %410) #6
  br label %416

411:                                              ; preds = %399
  %412 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.31) #6
  %413 = icmp eq i8 %412, 0
  br i1 %413, label %416, label %414

414:                                              ; preds = %411
  %415 = tail call fastcc i32 @set_pointer_type(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull @RNA_FreestyleLineStyle) #7, !range !60
  br label %416

416:                                              ; preds = %3, %337, %340, %349, %352, %361, %364, %373, %376, %385, %388, %402, %405, %411, %409, %392, %380, %368, %356, %344, %319, %328, %332, %306, %308, %206, %270, %274, %257, %261, %244, %248, %211, %235, %229, %194, %200, %267, %226, %223, %172, %168, %164, %178, %182, %175, %142, %154, %150, %146, %122, %134, %130, %126, %94, %110, %106, %101, %97, %86, %89, %17, %18, %6, %414, %397, %298, %293, %288, %283, %77, %72, %67, %62, %57, %52, %47, %42, %37, %32, %27, %22
  %417 = phi i32 [ %23, %22 ], [ 1, %27 ], [ 1, %32 ], [ 1, %37 ], [ 1, %42 ], [ 1, %47 ], [ 1, %52 ], [ 1, %57 ], [ 1, %62 ], [ 1, %67 ], [ 1, %72 ], [ 1, %77 ], [ 1, %283 ], [ 1, %288 ], [ 1, %293 ], [ 1, %298 ], [ 1, %397 ], [ 1, %414 ], [ 0, %6 ], [ 1, %18 ], [ 1, %17 ], [ 1, %89 ], [ 1, %86 ], [ 1, %97 ], [ 1, %101 ], [ 1, %106 ], [ 1, %110 ], [ 1, %94 ], [ -1, %122 ], [ 1, %134 ], [ 1, %130 ], [ 1, %126 ], [ -1, %142 ], [ 1, %154 ], [ 1, %150 ], [ 1, %146 ], [ 1, %175 ], [ 1, %182 ], [ 1, %178 ], [ 1, %164 ], [ 1, %168 ], [ 1, %172 ], [ 0, %206 ], [ 1, %270 ], [ 1, %274 ], [ 1, %257 ], [ 1, %261 ], [ 1, %244 ], [ 1, %248 ], [ 1, %211 ], [ 1, %235 ], [ 1, %229 ], [ 1, %194 ], [ 1, %200 ], [ 1, %267 ], [ 0, %226 ], [ 0, %223 ], [ 1, %308 ], [ 1, %306 ], [ 1, %332 ], [ 1, %328 ], [ 1, %319 ], [ 1, %344 ], [ 1, %356 ], [ 1, %368 ], [ 1, %380 ], [ 1, %392 ], [ 1, %409 ], [ 0, %411 ], [ -1, %405 ], [ -1, %402 ], [ -1, %388 ], [ -1, %385 ], [ -1, %376 ], [ -1, %373 ], [ -1, %364 ], [ -1, %361 ], [ -1, %352 ], [ -1, %349 ], [ -1, %340 ], [ -1, %337 ], [ 0, %3 ]
  ret i32 %417
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_buts(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CTX_data_dir(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_data_dir_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CTX_data_equals(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @set_pointer_type(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !106 {
  %4 = getelementptr inbounds %struct.ButsContextPath, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %12, label %24

7:                                                ; preds = %12
  %8 = add nuw nsw i64 %13, 1
  %9 = load i32, ptr %4, align 8, !tbaa !47
  %10 = sext i32 %9 to i64
  %11 = icmp slt i64 %8, %10
  br i1 %11, label %12, label %24, !llvm.loop !107

12:                                               ; preds = %3, %7
  %13 = phi i64 [ %8, %7 ], [ 0, %3 ]
  %14 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %13, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %15, ptr noundef %2) #6
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %7, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %13
  %20 = load ptr, ptr %19, align 8, !tbaa !105
  %21 = load ptr, ptr %14, align 8, !tbaa !49
  %22 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %13, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !77
  tail call void @CTX_data_pointer_set(ptr noundef %1, ptr noundef %20, ptr noundef %21, ptr noundef %23) #6
  br label %24

24:                                               ; preds = %7, %3, %18
  %25 = phi i32 [ 1, %18 ], [ 0, %3 ], [ 0, %7 ]
  ret i32 %25
}

; Function Attrs: optsize
declare void @CTX_data_pointer_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_pointer_type(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !108 {
  %3 = getelementptr inbounds %struct.ButsContextPath, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !47
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %11, label %19

6:                                                ; preds = %11
  %7 = add nuw nsw i64 %12, 1
  %8 = load i32, ptr %3, align 8, !tbaa !47
  %9 = sext i32 %8 to i64
  %10 = icmp slt i64 %7, %9
  br i1 %10, label %11, label %19, !llvm.loop !109

11:                                               ; preds = %2, %6
  %12 = phi i64 [ %7, %6 ], [ 0, %2 ]
  %13 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %12, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %14, ptr noundef %1) #6
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %6, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %12
  br label %19

19:                                               ; preds = %6, %2, %17
  %20 = phi ptr [ %18, %17 ], [ null, %2 ], [ null, %6 ]
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @give_current_material_texture_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_node_material(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @PE_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @buttons_context_draw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [128 x i8], align 16
  %4 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %51, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @uiLayoutRow(ptr noundef %1, i32 noundef 1) #6
  tail call void @uiLayoutSetAlignment(ptr noundef %9, i8 noundef zeroext 1) #6
  %10 = tail call ptr @uiLayoutGetBlock(ptr noundef %9) #6
  tail call void @uiBlockSetEmboss(ptr noundef %10, i8 noundef zeroext 1) #6
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !110
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
  %26 = load ptr, ptr %25, align 8, !tbaa !77
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
  %35 = load i16, ptr %18, align 8, !tbaa !56
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
  br i1 %50, label %19, label %51, !llvm.loop !114

51:                                               ; preds = %46, %8, %2
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #8
  ret void
}

; Function Attrs: optsize
declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutSetAlignment(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiDefIconButBitC(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButClearFlag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pin_cb(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !PGOFuncName !115 {
  %4 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 15
  %6 = load i8, ptr %5, align 8, !tbaa !57
  %7 = and i8 %6, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @buttons_context_id_path(ptr noundef %0) #7
  br label %11

11:                                               ; preds = %3, %9
  %12 = phi ptr [ %10, %9 ], [ null, %3 ]
  %13 = getelementptr inbounds %struct.SpaceButs, ptr %4, i64 0, i32 20
  store ptr %12, ptr %13, align 8
  %14 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  tail call void @ED_area_tag_redraw(ptr noundef %14) #6
  ret void
}

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_name_get_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemLDrag(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  store ptr @buttons_panel_context, ptr %7, align 8, !tbaa !116
  %8 = getelementptr inbounds %struct.PanelType, ptr %3, i64 0, i32 9
  store i32 2, ptr %8, align 8, !tbaa !119
  %9 = getelementptr inbounds %struct.ARegionType, ptr %0, i64 0, i32 14
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %3) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @buttons_panel_context(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !120 {
  %3 = getelementptr inbounds %struct.Panel, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !121
  tail call void @buttons_context_draw(ptr noundef %0, ptr noundef %4) #7
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @buttons_context_id_path(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.SpaceButs, ptr %2, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ButsContextPath, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !47
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.SpaceButs, ptr %2, i64 0, i32 7
  %10 = getelementptr inbounds %struct.SpaceButs, ptr %2, i64 0, i32 15
  %11 = zext i32 %6 to i64
  br label %12

12:                                               ; preds = %8, %36
  %13 = phi i64 [ %11, %8 ], [ %14, %36 ]
  %14 = add nsw i64 %13, -1
  %15 = trunc i64 %13 to i32
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %4, i64 0, i64 %14
  %19 = load i16, ptr %9, align 8, !tbaa !56
  %20 = icmp eq i16 %19, 7
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load i8, ptr %10, align 8, !tbaa !57
  %23 = and i8 %22, 2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %4, i64 0, i64 %14, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = icmp eq ptr %27, @RNA_ParticleSystem
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %4, i64 0, i64 %14, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !77
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %31, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !93
  br label %39

36:                                               ; preds = %25, %29, %21, %17
  %37 = load ptr, ptr %18, align 8, !tbaa !105
  %38 = icmp eq ptr %37, null
  br i1 %38, label %12, label %39, !llvm.loop !123

39:                                               ; preds = %12, %36, %1, %33
  %40 = phi ptr [ %35, %33 ], [ null, %1 ], [ null, %12 ], [ %37, %36 ]
  ret ptr %40
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @buttons_context_path_scene(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !124 {
  %2 = getelementptr inbounds %struct.ButsContextPath, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !47
  %4 = add nsw i32 %3, -1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %5, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %7, ptr noundef nonnull @RNA_Scene) #6
  %9 = zext i8 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @buttons_context_path_world(ptr noundef %0) unnamed_addr #0 !PGOFuncName !125 {
  %2 = getelementptr inbounds %struct.ButsContextPath, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !47
  %4 = add nsw i32 %3, -1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %5, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %7, ptr noundef nonnull @RNA_World) #6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @buttons_context_path_scene(ptr noundef nonnull %0) #7, !range !66
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 8, !tbaa !47
  %15 = add nsw i32 %14, -1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %16, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !126
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = sext i32 %14 to i64
  %24 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %23
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %20, ptr noundef %24) #6
  %25 = load i32, ptr %2, align 8, !tbaa !47
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %2, align 8, !tbaa !47
  br label %27

27:                                               ; preds = %10, %13, %1, %22
  %28 = phi i32 [ 1, %22 ], [ 1, %1 ], [ 1, %13 ], [ 0, %10 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @buttons_context_path_object(ptr noundef %0) unnamed_addr #0 !PGOFuncName !143 {
  %2 = getelementptr inbounds %struct.ButsContextPath, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !47
  %4 = add nsw i32 %3, -1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %5, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %7, ptr noundef nonnull @RNA_Object) #6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @buttons_context_path_scene(ptr noundef nonnull %0) #7, !range !66
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 8, !tbaa !47
  %15 = add nsw i32 %14, -1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %16, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !144
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.Base, ptr %20, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !145
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = sext i32 %14 to i64
  %28 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %27
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %24, ptr noundef %28) #6
  %29 = load i32, ptr %2, align 8, !tbaa !47
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %2, align 8, !tbaa !47
  br label %31

31:                                               ; preds = %13, %22, %10, %1, %26
  %32 = phi i32 [ 1, %26 ], [ 1, %1 ], [ 0, %10 ], [ 0, %22 ], [ 0, %13 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @buttons_context_path_modifier(ptr noundef %0) unnamed_addr #0 !PGOFuncName !147 {
  %2 = tail call fastcc i32 @buttons_context_path_object(ptr noundef %0) #7, !range !60
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ButsContextPath, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !47
  %7 = add nsw i32 %6, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %8, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !69
  switch i16 %14, label %15 [
    i16 1, label %16
    i16 2, label %16
    i16 4, label %16
    i16 3, label %16
    i16 22, label %16
  ]

15:                                               ; preds = %12, %4, %1
  br label %16

16:                                               ; preds = %12, %12, %12, %12, %12, %15
  %17 = phi i32 [ 0, %15 ], [ 1, %12 ], [ 1, %12 ], [ 1, %12 ], [ 1, %12 ], [ 1, %12 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @buttons_context_path_data(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !148 {
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
  %50 = tail call fastcc i32 @buttons_context_path_object(ptr noundef nonnull %0) #7, !range !60
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %78, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr %3, align 8, !tbaa !47
  %54 = add nsw i32 %53, -1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %55, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !77
  %58 = icmp eq ptr %57, null
  br i1 %58, label %78, label %59

59:                                               ; preds = %52
  %60 = icmp eq i32 %1, -1
  br i1 %60, label %66, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 3
  %63 = load i16, ptr %62, align 8, !tbaa !69
  %64 = sext i16 %63 to i32
  %65 = icmp eq i32 %64, %1
  br i1 %65, label %66, label %78

66:                                               ; preds = %61, %59
  %67 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 19
  %68 = load ptr, ptr %67, align 8, !tbaa !149
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @buttons_context_path_particle(ptr noundef %0) unnamed_addr #0 !PGOFuncName !150 {
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
  %11 = tail call fastcc i32 @buttons_context_path_object(ptr noundef nonnull %0) #7, !range !60
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 8, !tbaa !47
  %15 = add nsw i32 %14, -1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %16, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !69
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @buttons_context_path_material(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !151 {
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
  %13 = tail call fastcc i32 @buttons_context_path_object(ptr noundef nonnull %0) #7, !range !60
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %54, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %4, align 8, !tbaa !47
  %17 = add nsw i32 %16, -1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %18, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !77
  %21 = icmp eq ptr %20, null
  br i1 %21, label %54, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 3
  %24 = load i16, ptr %23, align 8, !tbaa !69
  %25 = add i16 %24, -1
  %26 = icmp ult i16 %25, 5
  br i1 %26, label %27, label %54

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 32
  %29 = load i32, ptr %28, align 4, !tbaa !79
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @buttons_context_path_texture(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 !PGOFuncName !152 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr inbounds %struct.ButsContextPath, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = add nsw i32 %5, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %9, ptr noundef nonnull @RNA_Texture) #6
  %11 = icmp eq i8 %10, 0
  br i1 %3, label %45, label %12

12:                                               ; preds = %2
  br i1 %11, label %13, label %169

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.ButsContextTexture, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !81
  %16 = icmp eq ptr %15, null
  br i1 %16, label %169, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ButsTextureUser, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !153
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 4
  %23 = load i16, ptr %22, align 8, !tbaa !154
  switch i16 %23, label %37 [
    i16 21058, label %24
    i16 16717, label %25
    i16 20311, label %27
    i16 16716, label %29
    i16 16720, label %31
    i16 16975, label %33
    i16 21324, label %35
  ]

24:                                               ; preds = %21
  tail call fastcc void @buttons_context_path_brush(ptr noundef nonnull %0) #7
  br label %37

25:                                               ; preds = %21
  %26 = tail call fastcc i32 @buttons_context_path_material(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext 1) #7, !range !60
  br label %37

27:                                               ; preds = %21
  %28 = tail call fastcc i32 @buttons_context_path_world(ptr noundef nonnull %0) #7, !range !60
  br label %37

29:                                               ; preds = %21
  %30 = tail call fastcc i32 @buttons_context_path_data(ptr noundef nonnull %0, i32 noundef 10) #7, !range !60
  br label %37

31:                                               ; preds = %21
  %32 = tail call fastcc i32 @buttons_context_path_particle(ptr noundef nonnull %0) #7, !range !60
  br label %37

33:                                               ; preds = %21
  %34 = tail call fastcc i32 @buttons_context_path_object(ptr noundef nonnull %0) #7, !range !60
  br label %37

35:                                               ; preds = %21
  %36 = tail call fastcc i32 @buttons_context_path_linestyle(ptr noundef nonnull %0) #7, !range !60
  br label %37

37:                                               ; preds = %21, %24, %27, %31, %35, %33, %29, %25, %17
  %38 = getelementptr inbounds %struct.ButsContextTexture, ptr %1, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !75
  %40 = icmp eq ptr %39, null
  br i1 %40, label %169, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %4, align 8, !tbaa !47
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %43
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %39, ptr noundef %44) #6
  br label %166

45:                                               ; preds = %2
  br i1 %11, label %46, label %169

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.ButsContextPath, ptr %0, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !64
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = tail call fastcc i32 @buttons_context_path_world(ptr noundef nonnull %0) #7, !range !60
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %4, align 8, !tbaa !47
  %55 = add nsw i32 %54, -1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %56, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !77
  %59 = icmp eq ptr %58, null
  br i1 %59, label %169, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.ID, ptr %58, i64 0, i32 4
  %62 = load i16, ptr %61, align 8, !tbaa !154
  %63 = icmp eq i16 %62, 20311
  br i1 %63, label %64, label %169

64:                                               ; preds = %60
  %65 = tail call ptr @give_current_world_texture(ptr noundef nonnull %58) #6
  %66 = load i32, ptr %4, align 8, !tbaa !47
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %67
  tail call void @RNA_id_pointer_create(ptr noundef %65, ptr noundef %68) #6
  br label %166

69:                                               ; preds = %50
  %70 = load i32, ptr %47, align 8, !tbaa !64
  br label %71

71:                                               ; preds = %69, %46
  %72 = phi i32 [ %70, %69 ], [ %48, %46 ]
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %74, label %108

74:                                               ; preds = %71
  %75 = tail call fastcc i32 @buttons_context_path_particle(ptr noundef nonnull %0) #7, !range !60
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, ptr %47, align 8, !tbaa !64
  br label %108

79:                                               ; preds = %74
  %80 = load i32, ptr %4, align 8, !tbaa !47
  %81 = add nsw i32 %80, -1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %82, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !49
  %85 = icmp eq ptr %84, @RNA_ParticleSettings
  %86 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %82, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !77
  br i1 %85, label %88, label %93

88:                                               ; preds = %79
  %89 = tail call ptr @give_current_particle_texture(ptr noundef %87) #6
  %90 = load i32, ptr %4, align 8, !tbaa !47
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %91
  tail call void @RNA_id_pointer_create(ptr noundef %89, ptr noundef %92) #6
  br label %166

93:                                               ; preds = %79
  %94 = icmp eq ptr %87, null
  br i1 %94, label %169, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.ParticleSystem, ptr %87, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !93
  %98 = icmp eq ptr %97, null
  br i1 %98, label %169, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.ID, ptr %97, i64 0, i32 4
  %101 = load i16, ptr %100, align 8, !tbaa !154
  %102 = icmp eq i16 %101, 16720
  br i1 %102, label %103, label %169

103:                                              ; preds = %99
  %104 = tail call ptr @give_current_particle_texture(ptr noundef nonnull %97) #6
  %105 = load i32, ptr %4, align 8, !tbaa !47
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %106
  tail call void @RNA_id_pointer_create(ptr noundef %104, ptr noundef %107) #6
  br label %166

108:                                              ; preds = %77, %71
  %109 = phi i32 [ %78, %77 ], [ %72, %71 ]
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %108
  %112 = tail call fastcc i32 @buttons_context_path_material(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 0) #7, !range !60
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %111
  %115 = load i32, ptr %4, align 8, !tbaa !47
  %116 = add nsw i32 %115, -1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %117, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !77
  %120 = icmp eq ptr %119, null
  br i1 %120, label %169, label %121

121:                                              ; preds = %114
  %122 = tail call ptr @give_current_material_texture(ptr noundef nonnull %119) #6
  %123 = load i32, ptr %4, align 8, !tbaa !47
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %124
  tail call void @RNA_id_pointer_create(ptr noundef %122, ptr noundef %125) #6
  br label %166

126:                                              ; preds = %111
  %127 = load i32, ptr %47, align 8, !tbaa !64
  br label %128

128:                                              ; preds = %126, %108
  %129 = phi i32 [ %127, %126 ], [ %109, %108 ]
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %148

131:                                              ; preds = %128
  %132 = tail call fastcc i32 @buttons_context_path_data(ptr noundef nonnull %0, i32 noundef 10) #7, !range !60
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, ptr %47, align 8, !tbaa !64
  br label %148

136:                                              ; preds = %131
  %137 = load i32, ptr %4, align 8, !tbaa !47
  %138 = add nsw i32 %137, -1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %139, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !77
  %142 = icmp eq ptr %141, null
  br i1 %142, label %169, label %143

143:                                              ; preds = %136
  %144 = tail call ptr @give_current_lamp_texture(ptr noundef nonnull %141) #6
  %145 = load i32, ptr %4, align 8, !tbaa !47
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %146
  tail call void @RNA_id_pointer_create(ptr noundef %144, ptr noundef %147) #6
  br label %166

148:                                              ; preds = %134, %128
  %149 = phi i32 [ %135, %134 ], [ %129, %128 ]
  %150 = icmp eq i32 %149, 5
  br i1 %150, label %151, label %169

151:                                              ; preds = %148
  %152 = tail call fastcc i32 @buttons_context_path_linestyle(ptr noundef nonnull %0) #7, !range !60
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %169, label %154

154:                                              ; preds = %151
  %155 = load i32, ptr %4, align 8, !tbaa !47
  %156 = add nsw i32 %155, -1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %157, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !77
  %160 = icmp eq ptr %159, null
  br i1 %160, label %169, label %161

161:                                              ; preds = %154
  %162 = tail call ptr @give_current_linestyle_texture(ptr noundef nonnull %159) #6
  %163 = load i32, ptr %4, align 8, !tbaa !47
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %164
  tail call void @RNA_id_pointer_create(ptr noundef %162, ptr noundef %165) #6
  br label %166

166:                                              ; preds = %41, %64, %88, %103, %121, %143, %161
  %167 = load i32, ptr %4, align 8, !tbaa !47
  %168 = add nsw i32 %167, 1
  store i32 %168, ptr %4, align 8, !tbaa !47
  br label %169

169:                                              ; preds = %166, %45, %60, %53, %114, %148, %151, %154, %136, %99, %95, %93, %12, %13, %37
  %170 = phi i32 [ 1, %12 ], [ 0, %13 ], [ 1, %37 ], [ 1, %45 ], [ 0, %60 ], [ 0, %53 ], [ 0, %114 ], [ 0, %148 ], [ 0, %151 ], [ 0, %154 ], [ 0, %136 ], [ 0, %99 ], [ 0, %95 ], [ 0, %93 ], [ 1, %166 ]
  ret i32 %170
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @buttons_context_path_bone(ptr noundef %0) unnamed_addr #0 !PGOFuncName !155 {
  %2 = tail call fastcc i32 @buttons_context_path_data(ptr noundef %0, i32 noundef 25) #7, !range !60
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ButsContextPath, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !47
  %7 = add nsw i32 %6, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %8, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  %11 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !156
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !158
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %14
  %19 = sext i32 %6 to i64
  %20 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %19
  tail call void @RNA_pointer_create(ptr noundef nonnull %10, ptr noundef nonnull @RNA_EditBone, ptr noundef nonnull %16, ptr noundef %20) #6
  br label %28

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !159
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = sext i32 %6 to i64
  %27 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %26
  tail call void @RNA_pointer_create(ptr noundef nonnull %10, ptr noundef nonnull @RNA_Bone, ptr noundef nonnull %23, ptr noundef %27) #6
  br label %28

28:                                               ; preds = %18, %25
  %29 = load i32, ptr %5, align 8, !tbaa !47
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %5, align 8, !tbaa !47
  br label %31

31:                                               ; preds = %28, %1, %21, %14
  %32 = phi i32 [ 0, %14 ], [ 0, %21 ], [ 0, %1 ], [ 1, %28 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @buttons_context_path_pose_bone(ptr noundef %0) unnamed_addr #0 !PGOFuncName !160 {
  %2 = getelementptr inbounds %struct.ButsContextPath, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !47
  %4 = add nsw i32 %3, -1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %5, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %7, ptr noundef nonnull @RNA_PoseBone) #6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @buttons_context_path_object(ptr noundef nonnull %0) #7, !range !60
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 8, !tbaa !47
  %15 = add nsw i32 %14, -1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %16, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !149
  %21 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !69
  %23 = icmp eq i16 %22, 25
  br i1 %23, label %24, label %44

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.bArmature, ptr %20, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !156
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bArmature, ptr %20, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !159
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 18
  %34 = load ptr, ptr %33, align 8, !tbaa !161
  %35 = getelementptr inbounds %struct.Bone, ptr %30, i64 0, i32 5
  %36 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %34, ptr noundef nonnull %35) #6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i32, ptr %2, align 8, !tbaa !47
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %40
  tail call void @RNA_pointer_create(ptr noundef nonnull %18, ptr noundef nonnull @RNA_PoseBone, ptr noundef nonnull %36, ptr noundef %41) #6
  %42 = load i32, ptr %2, align 8, !tbaa !47
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %2, align 8, !tbaa !47
  br label %44

44:                                               ; preds = %13, %24, %38, %10, %28, %32, %1
  %45 = phi i32 [ 1, %1 ], [ 0, %32 ], [ 0, %28 ], [ 0, %10 ], [ 0, %13 ], [ 0, %24 ], [ 1, %38 ]
  ret i32 %45
}

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @psys_get_current(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @buttons_context_path_brush(ptr noundef %0) unnamed_addr #0 !PGOFuncName !162 {
  %2 = getelementptr inbounds %struct.ButsContextPath, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !47
  %4 = add nsw i32 %3, -1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %5, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %7, ptr noundef nonnull @RNA_Brush) #6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @buttons_context_path_scene(ptr noundef nonnull %0) #7, !range !66
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 8, !tbaa !47
  %15 = add nsw i32 %14, -1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %16, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %13
  %21 = tail call ptr @BKE_paint_get_active(ptr noundef nonnull %18) #6
  %22 = tail call ptr @BKE_paint_brush(ptr noundef %21) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %2, align 8, !tbaa !47
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %26
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %22, ptr noundef %27) #6
  %28 = load i32, ptr %2, align 8, !tbaa !47
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %2, align 8, !tbaa !47
  br label %30

30:                                               ; preds = %13, %20, %10, %1, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @buttons_context_path_linestyle(ptr noundef %0) unnamed_addr #0 !PGOFuncName !163 {
  %2 = getelementptr inbounds %struct.ButsContextPath, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !47
  %4 = add nsw i32 %3, -1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %5, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %7, ptr noundef nonnull @RNA_FreestyleLineStyle) #6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @buttons_context_path_scene(ptr noundef nonnull %0) #7, !range !66
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 8, !tbaa !47
  %15 = add nsw i32 %14, -1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %16, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = tail call ptr @BKE_linestyle_active_from_scene(ptr noundef %18) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = load i32, ptr %2, align 8, !tbaa !47
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x %struct.PointerRNA], ptr %0, i64 0, i64 %23
  tail call void @RNA_id_pointer_create(ptr noundef nonnull %19, ptr noundef %24) #6
  %25 = load i32, ptr %2, align 8, !tbaa !47
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %2, align 8, !tbaa !47
  br label %27

27:                                               ; preds = %13, %10, %1, %21
  %28 = phi i32 [ 1, %21 ], [ 1, %1 ], [ 0, %10 ], [ 0, %13 ]
  ret i32 %28
}

; Function Attrs: optsize
declare ptr @give_current_world_texture(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_current_particle_texture(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_current_material_texture(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_current_lamp_texture(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @give_current_linestyle_texture(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_paint_brush(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_paint_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_linestyle_active_from_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind }

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
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!35, !45, i64 220}
!56 = !{!35, !45, i64 216}
!57 = !{!35, !37, i64 232}
!58 = !{i32 0, i32 6}
!59 = distinct !{!59, !54}
!60 = !{i32 0, i32 2}
!61 = !{!35, !40, i64 248}
!62 = !{!"buttons_context.c:buttons_context_path"}
!63 = !{!35, !45, i64 228}
!64 = !{!48, !40, i64 200}
!65 = !{!35, !36, i64 256}
!66 = !{i32 0, i32 256}
!67 = !{!35, !36, i64 264}
!68 = !{!"buttons_context.c:buttons_shading_new_context"}
!69 = !{!70, !45, i64 136}
!70 = !{!"Object", !71, i64 0, !36, i64 120, !36, i64 128, !45, i64 136, !45, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !72, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !41, i64 616, !41, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !45, i64 948, !45, i64 950, !45, i64 952, !45, i64 954, !45, i64 956, !45, i64 958, !45, i64 960, !45, i64 962, !45, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !41, i64 988, !41, i64 992, !41, i64 996, !41, i64 1000, !41, i64 1004, !41, i64 1008, !41, i64 1012, !41, i64 1016, !41, i64 1020, !41, i64 1024, !41, i64 1028, !41, i64 1032, !45, i64 1036, !45, i64 1038, !45, i64 1040, !37, i64 1042, !37, i64 1043, !45, i64 1044, !37, i64 1046, !37, i64 1047, !41, i64 1048, !41, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !41, i64 1120, !45, i64 1124, !45, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !45, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !45, i64 1266, !41, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !73, i64 1304, !73, i64 1312, !40, i64 1320, !40, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!71 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !45, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!72 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!73 = !{!"long", !37, i64 0}
!74 = !{!"buttons_context.c:buttons_shading_context"}
!75 = !{!76, !36, i64 16}
!76 = !{!"ButsContextTexture", !39, i64 0, !36, i64 16, !36, i64 24, !40, i64 32}
!77 = !{!50, !36, i64 16}
!78 = !{!70, !40, i64 456}
!79 = !{!70, !40, i64 460}
!80 = !{!70, !36, i64 440}
!81 = !{!76, !36, i64 24}
!82 = !{!83, !36, i64 40}
!83 = !{!"ButsTextureUser", !36, i64 0, !36, i64 8, !36, i64 16, !50, i64 24, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !40, i64 80, !36, i64 88, !40, i64 96}
!84 = !{!83, !36, i64 24}
!85 = !{!83, !36, i64 32}
!86 = !{!83, !36, i64 48}
!87 = !{!83, !36, i64 64}
!88 = !{!83, !36, i64 56}
!89 = !{!90, !36, i64 768}
!90 = !{!"Material", !71, i64 0, !36, i64 120, !45, i64 128, !45, i64 130, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !91, i64 224, !92, i64 312, !41, i64 328, !41, i64 332, !41, i64 336, !41, i64 340, !41, i64 344, !41, i64 348, !41, i64 352, !45, i64 356, !45, i64 358, !45, i64 360, !37, i64 362, !37, i64 363, !41, i64 364, !41, i64 368, !45, i64 372, !45, i64 374, !41, i64 376, !41, i64 380, !41, i64 384, !41, i64 388, !45, i64 392, !45, i64 394, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !45, i64 412, !45, i64 414, !45, i64 416, !45, i64 418, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !41, i64 456, !37, i64 460, !41, i64 524, !41, i64 528, !41, i64 532, !40, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !45, i64 544, !45, i64 546, !45, i64 548, !37, i64 550, !37, i64 551, !45, i64 552, !45, i64 554, !41, i64 556, !41, i64 560, !37, i64 564, !41, i64 580, !41, i64 584, !45, i64 588, !45, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !45, i64 612, !45, i64 614, !41, i64 616, !41, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !41, i64 800, !41, i64 804, !41, i64 808, !41, i64 812, !41, i64 816, !45, i64 820, !45, i64 822, !37, i64 824, !37, i64 836, !41, i64 848, !41, i64 852, !41, i64 856, !41, i64 860, !41, i64 864, !41, i64 868, !41, i64 872, !45, i64 876, !45, i64 878, !40, i64 880, !45, i64 884, !45, i64 886, !37, i64 888, !45, i64 904, !45, i64 906, !45, i64 908, !45, i64 910, !45, i64 912, !37, i64 914, !36, i64 920, !39, i64 928}
!91 = !{!"VolumeSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !41, i64 52, !41, i64 56, !41, i64 60, !45, i64 64, !45, i64 66, !45, i64 68, !45, i64 70, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84}
!92 = !{!"GameSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!93 = !{!94, !36, i64 16}
!94 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !39, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !37, i64 168, !37, i64 232, !41, i64 296, !41, i64 300, !41, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !45, i64 340, !45, i64 342, !45, i64 344, !45, i64 346, !37, i64 348, !37, i64 540, !45, i64 564, !45, i64 566, !36, i64 568, !36, i64 576, !39, i64 584, !36, i64 600, !36, i64 608, !40, i64 616, !40, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !41, i64 648, !41, i64 652}
!95 = !{!96, !45, i64 166}
!96 = !{!"ParticleSettings", !71, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !40, i64 156, !45, i64 160, !45, i64 162, !45, i64 164, !45, i64 166, !45, i64 168, !45, i64 170, !45, i64 172, !45, i64 174, !40, i64 176, !40, i64 180, !45, i64 184, !45, i64 186, !45, i64 188, !45, i64 190, !45, i64 192, !45, i64 194, !45, i64 196, !45, i64 198, !45, i64 200, !45, i64 202, !45, i64 204, !45, i64 206, !45, i64 208, !45, i64 210, !45, i64 212, !45, i64 214, !45, i64 216, !45, i64 218, !45, i64 220, !45, i64 222, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !41, i64 232, !41, i64 236, !37, i64 240, !37, i64 248, !41, i64 256, !41, i64 260, !41, i64 264, !45, i64 268, !45, i64 270, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !37, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !45, i64 340, !37, i64 342, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !41, i64 368, !41, i64 372, !37, i64 376, !41, i64 388, !41, i64 392, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !41, i64 412, !37, i64 416, !41, i64 428, !41, i64 432, !41, i64 436, !41, i64 440, !40, i64 444, !40, i64 448, !41, i64 452, !41, i64 456, !41, i64 460, !41, i64 464, !41, i64 468, !41, i64 472, !41, i64 476, !41, i64 480, !41, i64 484, !41, i64 488, !41, i64 492, !41, i64 496, !41, i64 500, !41, i64 504, !41, i64 508, !41, i64 512, !41, i64 516, !41, i64 520, !41, i64 524, !41, i64 528, !41, i64 532, !41, i64 536, !41, i64 540, !41, i64 544, !41, i64 548, !37, i64 552, !41, i64 560, !41, i64 564, !40, i64 568, !40, i64 572, !37, i64 576, !36, i64 720, !39, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !45, i64 792, !37, i64 794}
!97 = !{!90, !37, i64 543}
!98 = !{!90, !37, i64 541}
!99 = !{!100, !45, i64 280}
!100 = !{!"Lamp", !71, i64 0, !36, i64 120, !45, i64 128, !45, i64 130, !40, i64 132, !45, i64 136, !45, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !36, i64 200, !45, i64 208, !45, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !45, i64 240, !45, i64 242, !45, i64 244, !45, i64 246, !37, i64 248, !37, i64 249, !45, i64 250, !45, i64 252, !45, i64 254, !45, i64 256, !45, i64 258, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !45, i64 276, !45, i64 278, !45, i64 280, !45, i64 282, !45, i64 284, !45, i64 286, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !41, i64 336, !45, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !45, i64 496, !45, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!101 = !{!102, !45, i64 132}
!102 = !{!"World", !71, i64 0, !36, i64 120, !45, i64 128, !45, i64 130, !45, i64 132, !45, i64 134, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !45, i64 200, !45, i64 202, !45, i64 204, !45, i64 206, !45, i64 208, !45, i64 210, !45, i64 212, !45, i64 214, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !45, i64 264, !45, i64 266, !45, i64 268, !45, i64 270, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !45, i64 288, !45, i64 290, !45, i64 292, !45, i64 294, !41, i64 296, !41, i64 300, !41, i64 304, !41, i64 308, !41, i64 312, !41, i64 316, !41, i64 320, !45, i64 324, !45, i64 326, !45, i64 328, !45, i64 330, !45, i64 332, !45, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !45, i64 504, !45, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!103 = !{!104, !45, i64 220}
!104 = !{!"FreestyleLineStyle", !71, i64 0, !36, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !40, i64 148, !41, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !40, i64 192, !45, i64 196, !45, i64 198, !45, i64 200, !45, i64 202, !45, i64 204, !45, i64 206, !40, i64 208, !40, i64 212, !41, i64 216, !45, i64 220, !45, i64 222, !45, i64 224, !37, i64 226, !45, i64 232, !45, i64 234, !45, i64 236, !45, i64 238, !45, i64 240, !45, i64 242, !40, i64 244, !37, i64 248, !36, i64 392, !39, i64 400, !39, i64 416, !39, i64 432, !39, i64 448}
!105 = !{!50, !36, i64 0}
!106 = !{!"buttons_context.c:set_pointer_type"}
!107 = distinct !{!107, !54}
!108 = !{!"buttons_context.c:get_pointer_type"}
!109 = distinct !{!109, !54}
!110 = !{!111, !45, i64 8948}
!111 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !45, i64 8472, !45, i64 8474, !45, i64 8476, !45, i64 8478, !45, i64 8480, !45, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !45, i64 8496, !45, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !45, i64 8528, !45, i64 8530, !45, i64 8532, !45, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !45, i64 8712, !45, i64 8714, !45, i64 8716, !45, i64 8718, !45, i64 8720, !45, i64 8722, !45, i64 8724, !45, i64 8726, !37, i64 8728, !45, i64 8896, !45, i64 8898, !45, i64 8900, !45, i64 8902, !45, i64 8904, !45, i64 8906, !45, i64 8908, !45, i64 8910, !40, i64 8912, !40, i64 8916, !45, i64 8920, !45, i64 8922, !45, i64 8924, !45, i64 8926, !45, i64 8928, !45, i64 8930, !45, i64 8932, !45, i64 8934, !45, i64 8936, !45, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !45, i64 8944, !45, i64 8946, !45, i64 8948, !45, i64 8950, !45, i64 8952, !45, i64 8954, !41, i64 8956, !41, i64 8960, !40, i64 8964, !45, i64 8968, !45, i64 8970, !41, i64 8972, !45, i64 8976, !45, i64 8978, !45, i64 8980, !45, i64 8982, !112, i64 8984, !37, i64 9760, !37, i64 9772, !45, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !41, i64 10904, !41, i64 10908, !40, i64 10912, !45, i64 10916, !45, i64 10918, !45, i64 10920, !45, i64 10922, !45, i64 10924, !45, i64 10926, !113, i64 10928}
!112 = !{!"ColorBand", !45, i64 0, !45, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!113 = !{!"WalkNavigation", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !45, i64 24, !37, i64 26}
!114 = distinct !{!114, !54}
!115 = !{!"buttons_context.c:pin_cb"}
!116 = !{!117, !36, i64 368}
!117 = !{!"PanelType", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !37, i64 208, !37, i64 272, !40, i64 336, !40, i64 340, !40, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !118, i64 376}
!118 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!119 = !{!117, !40, i64 344}
!120 = !{!"buttons_context.c:buttons_panel_context"}
!121 = !{!122, !36, i64 24}
!122 = !{!"Panel", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !37, i64 160, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !45, i64 240, !45, i64 242, !45, i64 244, !45, i64 246, !45, i64 248, !45, i64 250, !40, i64 252, !36, i64 256, !36, i64 264}
!123 = distinct !{!123, !54}
!124 = !{!"buttons_context.c:buttons_context_path_scene"}
!125 = !{!"buttons_context.c:buttons_context_path_world"}
!126 = !{!127, !36, i64 136}
!127 = !{!"Scene", !71, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !45, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !128, i64 280, !135, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !45, i64 4376, !45, i64 4378, !40, i64 4380, !39, i64 4384, !136, i64 4400, !137, i64 4416, !140, i64 4600, !36, i64 4608, !141, i64 4616, !36, i64 4640, !73, i64 4648, !73, i64 4656, !130, i64 4664, !131, i64 4824, !142, i64 4888, !36, i64 4952}
!128 = !{!"RenderData", !129, i64 0, !36, i64 248, !36, i64 256, !132, i64 264, !133, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !41, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !45, i64 432, !45, i64 434, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !45, i64 456, !45, i64 458, !45, i64 460, !45, i64 462, !45, i64 464, !45, i64 466, !40, i64 468, !45, i64 472, !45, i64 474, !45, i64 476, !45, i64 478, !45, i64 480, !45, i64 482, !40, i64 484, !40, i64 488, !45, i64 492, !45, i64 494, !40, i64 496, !40, i64 500, !45, i64 504, !45, i64 506, !45, i64 508, !45, i64 510, !45, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !45, i64 528, !45, i64 530, !45, i64 532, !45, i64 534, !45, i64 536, !45, i64 538, !45, i64 540, !45, i64 542, !43, i64 544, !43, i64 560, !44, i64 576, !39, i64 592, !45, i64 608, !45, i64 610, !41, i64 612, !41, i64 616, !41, i64 620, !41, i64 624, !40, i64 628, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !45, i64 648, !45, i64 650, !45, i64 652, !45, i64 654, !45, i64 656, !45, i64 658, !41, i64 660, !41, i64 664, !45, i64 668, !45, i64 670, !41, i64 672, !41, i64 676, !37, i64 680, !40, i64 1704, !45, i64 1708, !45, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !45, i64 2524, !45, i64 2526, !41, i64 2528, !41, i64 2532, !45, i64 2536, !45, i64 2538, !41, i64 2540, !45, i64 2544, !45, i64 2546, !40, i64 2548, !45, i64 2552, !45, i64 2554, !45, i64 2556, !45, i64 2558, !41, i64 2560, !41, i64 2564, !36, i64 2568, !40, i64 2576, !41, i64 2580, !37, i64 2584, !134, i64 2616, !40, i64 3976, !40, i64 3980}
!129 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !45, i64 8, !45, i64 10, !41, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !130, i64 24, !131, i64 184}
!130 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!131 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!132 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !45, i64 48, !45, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!133 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !41, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!134 = !{!"BakeData", !129, i64 0, !37, i64 248, !45, i64 1272, !45, i64 1274, !45, i64 1276, !45, i64 1278, !41, i64 1280, !41, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!135 = !{!"AudioData", !40, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !45, i64 20, !45, i64 22, !41, i64 24, !41, i64 28}
!136 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!137 = !{!"GameData", !136, i64 0, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !45, i64 32, !37, i64 34, !138, i64 40, !45, i64 64, !45, i64 66, !41, i64 68, !139, i64 72, !41, i64 128, !41, i64 132, !40, i64 136, !45, i64 140, !45, i64 142, !45, i64 144, !45, i64 146, !45, i64 148, !45, i64 150, !45, i64 152, !45, i64 154, !45, i64 156, !45, i64 158, !45, i64 160, !45, i64 162, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180}
!138 = !{!"GameDome", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6, !41, i64 8, !41, i64 12, !36, i64 16}
!139 = !{!"RecastData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 44, !41, i64 48, !45, i64 52, !45, i64 54}
!140 = !{!"UnitSettings", !41, i64 0, !37, i64 4, !37, i64 5, !45, i64 6}
!141 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!142 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!143 = !{!"buttons_context.c:buttons_context_path_object"}
!144 = !{!127, !36, i64 168}
!145 = !{!146, !36, i64 32}
!146 = !{!"Base", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !45, i64 28, !45, i64 30, !36, i64 32}
!147 = !{!"buttons_context.c:buttons_context_path_modifier"}
!148 = !{!"buttons_context.c:buttons_context_path_data"}
!149 = !{!70, !36, i64 296}
!150 = !{!"buttons_context.c:buttons_context_path_particle"}
!151 = !{!"buttons_context.c:buttons_context_path_material"}
!152 = !{!"buttons_context.c:buttons_context_path_texture"}
!153 = !{!83, !36, i64 16}
!154 = !{!45, !45, i64 0}
!155 = !{!"buttons_context.c:buttons_context_path_bone"}
!156 = !{!157, !36, i64 160}
!157 = !{!"bArmature", !71, i64 0, !36, i64 120, !39, i64 128, !39, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !45, i64 208, !45, i64 210, !40, i64 212, !40, i64 216, !40, i64 220, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252}
!158 = !{!157, !36, i64 176}
!159 = !{!157, !36, i64 168}
!160 = !{!"buttons_context.c:buttons_context_path_pose_bone"}
!161 = !{!70, !36, i64 288}
!162 = !{!"buttons_context.c:buttons_context_path_brush"}
!163 = !{!"buttons_context.c:buttons_context_path_linestyle"}
