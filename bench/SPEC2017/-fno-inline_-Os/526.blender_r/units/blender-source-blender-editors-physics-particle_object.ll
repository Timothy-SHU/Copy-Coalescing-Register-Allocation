; ModuleID = 'blender/source/blender/editors/physics/particle_object.c'
source_filename = "blender/source/blender/editors/physics/particle_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleTarget = type { ptr, ptr, ptr, i32, i16, i16, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ParticleDupliWeight = type { ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.PTCacheEdit = type { %struct.ListBase, ptr, ptr, %struct.PTCacheID, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, i32, i32, i32, i32, [3 x i8], [3 x i8] }
%struct.PTCacheID = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.PTCacheEditPoint = type { ptr, i32, i16 }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.PTCacheEditKey = type { ptr, ptr, ptr, ptr, [3 x float], float, float, i16 }
%struct.HairKey = type { [3 x float], float, float, i16, i16 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.BVHTreeFromMesh = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, float, ptr, i8 }
%struct.BVHTreeNearest = type { i32, [3 x float], [3 x float], float, i32 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MFace = type { i32, i32, i32, i32, i16, i8, i8 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }

@.str = private unnamed_addr constant [25 x i8] c"Add Particle System Slot\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"OBJECT_OT_particle_system_add\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Add a particle system\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Remove Particle System Slot\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"OBJECT_OT_particle_system_remove\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Remove the selected particle system\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"New Particle Settings\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"PARTICLE_OT_new\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Add new particle settings\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"New Particle Target\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"PARTICLE_OT_new_target\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Add a new particle target\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Remove Particle Target\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"PARTICLE_OT_target_remove\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Remove the selected particle target\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Move Up Target\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"PARTICLE_OT_target_move_up\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"Move particle target up in the list\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Move Down Target\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"PARTICLE_OT_target_move_down\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"Move particle target down in the list\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Move Up Dupli Object\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"PARTICLE_OT_dupliob_move_up\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"Move dupli object up in the list\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Copy Particle Dupliob\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"PARTICLE_OT_dupliob_copy\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"Duplicate the current dupliobject\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"Remove Particle Dupliobject\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"PARTICLE_OT_dupliob_remove\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"Remove the selected dupliobject\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"Move Down Dupli Object\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"PARTICLE_OT_dupliob_move_down\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"Move dupli object down in the list\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"Disconnect Hair\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"Disconnect hair from the emitter mesh\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"PARTICLE_OT_disconnect_hair\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"All hair\00", align 1
@.str.38 = private unnamed_addr constant [50 x i8] c"Disconnect all hair systems from the emitter mesh\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"Connect Hair\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"Connect hair to the emitter mesh\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"PARTICLE_OT_connect_hair\00", align 1
@.str.42 = private unnamed_addr constant [45 x i8] c"Connect all hair systems to the emitter mesh\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"particle_system\00", align 1
@RNA_ParticleSystem = external global %struct.StructRNA, align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"ParticleSettings\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.45 = private unnamed_addr constant [22 x i8] c"keyed particle target\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.46 = private unnamed_addr constant [62 x i8] c"Can't disconnect hair if particle system modifier is disabled\00", align 1
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.47 = private unnamed_addr constant [38 x i8] c"No nearest point found for hair root!\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_particle_system_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @particle_system_add_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare i32 @ED_operator_object_active_editable(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @particle_system_add_exec(ptr noundef %0, ptr nocapture readnone %1) #2 !PGOFuncName !47 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #7
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %3, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call ptr @object_add_particle_system(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef null) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef nonnull %3) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85721088, ptr noundef nonnull %3) #7
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi i32 [ 4, %8 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_particle_system_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @particle_system_remove_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @particle_system_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #2 !PGOFuncName !48 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #7
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %3, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %10 = load i32, ptr %9, align 8, !tbaa !49
  tail call void @object_remove_particle_system(ptr noundef nonnull %4, ptr noundef nonnull %3) #7
  %11 = and i32 %10, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %9, align 8, !tbaa !49
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Base, ptr %19, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = icmp eq ptr %23, %3
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67830016, ptr noundef null) #7
  br label %26

26:                                               ; preds = %13, %25, %21, %17, %8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef nonnull %3) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85721088, ptr noundef nonnull %3) #7
  br label %27

27:                                               ; preds = %2, %26
  %28 = phi i32 [ 4, %26 ], [ 2, %2 ]
  ret i32 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_new(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @new_particle_settings_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @psys_poll, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @new_particle_settings_exec(ptr noundef %0, ptr nocapture readnone %1) #2 !PGOFuncName !77 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #7
  %5 = load ptr, ptr %3, align 8, !tbaa.struct !78
  %6 = getelementptr inbounds i8, ptr %3, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call ptr @BKE_particlesettings_copy(ptr noundef nonnull %9) #7
  br label %15

13:                                               ; preds = %2
  %14 = call ptr @psys_new_settings(ptr noundef nonnull @.str.44, ptr noundef %4) #7
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  %17 = load ptr, ptr %8, align 8, !tbaa !81
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !83
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %20, align 4, !tbaa !83
  br label %23

23:                                               ; preds = %19, %15
  store ptr %16, ptr %8, align 8, !tbaa !81
  call void @psys_check_boid_data(ptr noundef nonnull %7) #7
  call void @DAG_relations_tag_update(ptr noundef %4) #7
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef %5) #7
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @psys_poll(ptr noundef %0) #2 !PGOFuncName !85 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #7
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = icmp ne ptr %4, null
  %6 = zext i1 %5 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_new_target(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @new_particle_target_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @new_particle_target_exec(ptr noundef %0, ptr nocapture readnone %1) #2 !PGOFuncName !89 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #7
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = load ptr, ptr %3, align 8, !tbaa !90
  %8 = icmp eq ptr %6, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %18, %13 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.ParticleTarget, ptr %14, i64 0, i32 4
  %16 = load i16, ptr %15, align 4, !tbaa !91
  %17 = and i16 %16, -2
  store i16 %17, ptr %15, align 4, !tbaa !91
  %18 = load ptr, ptr %14, align 8, !tbaa !79
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !93

20:                                               ; preds = %13, %9
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !79
  %22 = call ptr %21(i64 noundef 40, ptr noundef nonnull @.str.45) #7
  %23 = getelementptr inbounds %struct.ParticleTarget, ptr %22, i64 0, i32 4
  %24 = load i16, ptr %23, align 4, !tbaa !91
  %25 = or i16 %24, 1
  store i16 %25, ptr %23, align 4, !tbaa !91
  %26 = getelementptr inbounds %struct.ParticleTarget, ptr %22, i64 0, i32 3
  store i32 1, ptr %26, align 8, !tbaa !95
  call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %22) #7
  call void @DAG_relations_tag_update(ptr noundef %4) #7
  call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef %7) #7
  br label %27

27:                                               ; preds = %2, %20
  %28 = phi i32 [ 4, %20 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_target_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @remove_particle_target_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @remove_particle_target_exec(ptr noundef %0, ptr nocapture readnone %1) #2 !PGOFuncName !96 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #7
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = load ptr, ptr %3, align 8, !tbaa !90
  %8 = icmp eq ptr %6, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 17
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ %10, %9 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ParticleTarget, ptr %13, i64 0, i32 4
  %17 = load i16, ptr %16, align 4, !tbaa !91
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %11, label %20, !llvm.loop !97

20:                                               ; preds = %15
  call void @BLI_remlink(ptr noundef nonnull %10, ptr noundef nonnull %13) #7
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %21(ptr noundef nonnull %13) #7
  br label %22

22:                                               ; preds = %11, %20
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 17, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !98
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ParticleTarget, ptr %24, i64 0, i32 4
  %28 = load i16, ptr %27, align 4, !tbaa !91
  %29 = or i16 %28, 1
  store i16 %29, ptr %27, align 4, !tbaa !91
  br label %30

30:                                               ; preds = %26, %22
  call void @DAG_relations_tag_update(ptr noundef %4) #7
  call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef %7) #7
  br label %31

31:                                               ; preds = %2, %30
  %32 = phi i32 [ 4, %30 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_target_move_up(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @target_move_up_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @target_move_up_exec(ptr noundef %0, ptr nocapture readnone %1) #2 !PGOFuncName !99 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #7
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = load ptr, ptr %3, align 8, !tbaa !90
  %7 = icmp eq ptr %5, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8, %25
  %13 = phi ptr [ %26, %25 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.ParticleTarget, ptr %13, i64 0, i32 4
  %15 = load i16, ptr %14, align 4, !tbaa !91
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ParticleTarget, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !100
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ParticleTarget, ptr %13, i64 0, i32 1
  call void @BLI_remlink(ptr noundef nonnull %9, ptr noundef nonnull %13) #7
  %24 = load ptr, ptr %23, align 8, !tbaa !100
  call void @BLI_insertlinkbefore(ptr noundef nonnull %9, ptr noundef %24, ptr noundef nonnull %13) #7
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef %6) #7
  br label %28

25:                                               ; preds = %12, %18
  %26 = load ptr, ptr %13, align 8, !tbaa !79
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %12, !llvm.loop !101

28:                                               ; preds = %25, %8, %22, %2
  %29 = phi i32 [ 2, %2 ], [ 4, %22 ], [ 4, %8 ], [ 4, %25 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_target_move_down(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @target_move_down_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @target_move_down_exec(ptr noundef %0, ptr nocapture readnone %1) #2 !PGOFuncName !102 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #7
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = load ptr, ptr %3, align 8, !tbaa !90
  %7 = icmp eq ptr %5, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %23
  %13 = phi ptr [ %18, %23 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.ParticleTarget, ptr %13, i64 0, i32 4
  %15 = load i16, ptr %14, align 4, !tbaa !91
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  %18 = load ptr, ptr %13, align 8, !tbaa !79
  %19 = icmp eq ptr %18, null
  br i1 %17, label %23, label %20

20:                                               ; preds = %12
  br i1 %19, label %24, label %21

21:                                               ; preds = %20
  call void @BLI_remlink(ptr noundef nonnull %9, ptr noundef nonnull %13) #7
  %22 = load ptr, ptr %13, align 8, !tbaa !103
  call void @BLI_insertlinkafter(ptr noundef nonnull %9, ptr noundef %22, ptr noundef nonnull %13) #7
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef %6) #7
  br label %24

23:                                               ; preds = %12
  br i1 %19, label %24, label %12, !llvm.loop !104

24:                                               ; preds = %23, %20, %8, %21, %2
  %25 = phi i32 [ 2, %2 ], [ 4, %21 ], [ 4, %8 ], [ 4, %20 ], [ 4, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_dupliob_move_up(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @dupliob_move_up_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dupliob_move_up_exec(ptr noundef %0, ptr nocapture readnone %1) #2 !PGOFuncName !105 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #7
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 123
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %7, %26
  %14 = phi ptr [ %27, %26 ], [ %11, %7 ]
  %15 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %14, i64 0, i32 4
  %16 = load i16, ptr %15, align 2, !tbaa !106
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %14, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !108
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %14, i64 0, i32 1
  call void @BLI_remlink(ptr noundef nonnull %10, ptr noundef nonnull %14) #7
  %25 = load ptr, ptr %24, align 8, !tbaa !108
  call void @BLI_insertlinkbefore(ptr noundef nonnull %10, ptr noundef %25, ptr noundef nonnull %14) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef null) #7
  br label %29

26:                                               ; preds = %13, %19
  %27 = load ptr, ptr %14, align 8, !tbaa !79
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %13, !llvm.loop !109

29:                                               ; preds = %26, %7, %23, %2
  %30 = phi i32 [ 2, %2 ], [ 4, %23 ], [ 4, %7 ], [ 4, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_dupliob_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @copy_particle_dupliob_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @copy_particle_dupliob_exec(ptr noundef %0, ptr nocapture readnone %1) #2 !PGOFuncName !110 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #7
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 123
  br label %11

11:                                               ; preds = %15, %7
  %12 = phi ptr [ %10, %7 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %13, i64 0, i32 4
  %17 = load i16, ptr %16, align 2, !tbaa !106
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %11, label %20, !llvm.loop !111

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %13, i64 0, i32 4
  %22 = and i16 %17, -2
  store i16 %22, ptr %21, align 2, !tbaa !106
  %23 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !79
  %24 = call ptr %23(ptr noundef nonnull %13) #7
  %25 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %24, i64 0, i32 4
  %26 = load i16, ptr %25, align 2, !tbaa !106
  %27 = or i16 %26, 1
  store i16 %27, ptr %25, align 2, !tbaa !106
  call void @BLI_addhead(ptr noundef nonnull %10, ptr noundef %24) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef null) #7
  br label %28

28:                                               ; preds = %11, %20, %2
  %29 = phi i32 [ 2, %2 ], [ 4, %20 ], [ 4, %11 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_dupliob_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @remove_particle_dupliob_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @remove_particle_dupliob_exec(ptr noundef %0, ptr nocapture readnone %1) #2 !PGOFuncName !112 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #7
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 123
  br label %11

11:                                               ; preds = %15, %7
  %12 = phi ptr [ %10, %7 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !79
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %13, i64 0, i32 4
  %17 = load i16, ptr %16, align 2, !tbaa !106
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %11, label %20, !llvm.loop !113

20:                                               ; preds = %15
  call void @BLI_remlink(ptr noundef nonnull %10, ptr noundef nonnull %13) #7
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !79
  call void %21(ptr noundef nonnull %13) #7
  br label %22

22:                                               ; preds = %11, %20
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 123, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !114
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %24, i64 0, i32 4
  %28 = load i16, ptr %27, align 2, !tbaa !106
  %29 = or i16 %28, 1
  store i16 %29, ptr %27, align 2, !tbaa !106
  br label %30

30:                                               ; preds = %26, %22
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef null) #7
  br label %31

31:                                               ; preds = %2, %30
  %32 = phi i32 [ 4, %30 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @PARTICLE_OT_dupliob_move_down(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.32, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @dupliob_move_down_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dupliob_move_down_exec(ptr noundef %0, ptr nocapture readnone %1) #2 !PGOFuncName !115 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #7
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 123
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %7, %24
  %14 = phi ptr [ %19, %24 ], [ %11, %7 ]
  %15 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %14, i64 0, i32 4
  %16 = load i16, ptr %15, align 2, !tbaa !106
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  %19 = load ptr, ptr %14, align 8, !tbaa !79
  %20 = icmp eq ptr %19, null
  br i1 %18, label %24, label %21

21:                                               ; preds = %13
  br i1 %20, label %25, label %22

22:                                               ; preds = %21
  call void @BLI_remlink(ptr noundef nonnull %10, ptr noundef nonnull %14) #7
  %23 = load ptr, ptr %14, align 8, !tbaa !116
  call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef %23, ptr noundef nonnull %14) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef null) #7
  br label %25

24:                                               ; preds = %13
  br i1 %20, label %25, label %13, !llvm.loop !117

25:                                               ; preds = %24, %21, %7, %22, %2
  %26 = phi i32 [ 2, %2 ], [ 4, %22 ], [ 4, %7 ], [ 4, %21 ], [ 4, %24 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PARTICLE_OT_disconnect_hair(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @disconnect_hair_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @disconnect_hair_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !119 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #7
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !120
  %8 = call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.36) #7
  %9 = icmp eq ptr %5, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = and i32 %8, 255
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 109
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %19, %17 ], [ %15, %13 ]
  call fastcc void @disconnect_hair(ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %18) #9
  %19 = load ptr, ptr %18, align 8, !tbaa !79
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %17, !llvm.loop !122

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  call fastcc void @disconnect_hair(ptr noundef %4, ptr noundef nonnull %5, ptr noundef %23) #9
  br label %24

24:                                               ; preds = %17, %13, %21
  call void @DAG_id_tag_update(ptr noundef nonnull %5, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef nonnull %5) #7
  br label %25

25:                                               ; preds = %2, %24
  %26 = phi i32 [ 4, %24 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %26
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @PARTICLE_OT_connect_hair(ptr nocapture noundef %0) local_unnamed_addr #2 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @connect_hair_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.42) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @connect_hair_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !123 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #7
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !120
  %8 = call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.36) #7
  %9 = icmp eq ptr %5, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %2
  %11 = and i32 %8, 255
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 109
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %22, %17 ], [ %15, %13 ]
  %19 = phi i8 [ %21, %17 ], [ 0, %13 ]
  %20 = call fastcc zeroext i8 @connect_hair(ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %18) #9, !range !124
  %21 = or i8 %20, %19
  %22 = load ptr, ptr %18, align 8, !tbaa !79
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %17, !llvm.loop !125

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  %27 = call fastcc zeroext i8 @connect_hair(ptr noundef %4, ptr noundef nonnull %5, ptr noundef %26) #9, !range !124
  br label %28

28:                                               ; preds = %17, %24
  %29 = phi i8 [ %27, %24 ], [ %21, %17 ]
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %13, %28
  %32 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !126
  call void @BKE_report(ptr noundef %33, i32 noundef 32, ptr noundef nonnull @.str.46) #7
  br label %35

34:                                               ; preds = %28
  call void @DAG_id_tag_update(ptr noundef nonnull %5, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef nonnull %5) #7
  br label %35

35:                                               ; preds = %2, %34, %31
  %36 = phi i32 [ 4, %34 ], [ 2, %31 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @object_add_particle_system(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @object_remove_particle_system(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_particlesettings_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @psys_new_settings(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @psys_check_boid_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @disconnect_hair(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 !PGOFuncName !127 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = tail call ptr @psys_get_modifier(ptr noundef %1, ptr noundef %2) #7
  %6 = tail call ptr @PE_settings(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  %7 = icmp eq ptr %2, null
  br i1 %7, label %93, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 25
  %10 = load i32, ptr %9, align 4, !tbaa !128
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %93

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !81
  %16 = icmp eq ptr %15, null
  br i1 %16, label %93, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 7
  %19 = load i16, ptr %18, align 8, !tbaa !129
  %20 = icmp eq i16 %19, 2
  br i1 %20, label %21, label %93

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !130
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.PTCacheEdit, ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !131
  br label %28

28:                                               ; preds = %21, %25
  %29 = phi ptr [ %27, %25 ], [ null, %21 ]
  %30 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 26
  %31 = load i32, ptr %30, align 8, !tbaa !134
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %83

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !135
  %36 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %5, i64 0, i32 2
  br label %37

37:                                               ; preds = %33, %75
  %38 = phi i32 [ 0, %33 ], [ %77, %75 ]
  %39 = phi ptr [ null, %33 ], [ %76, %75 ]
  %40 = phi ptr [ %29, %33 ], [ %47, %75 ]
  %41 = phi ptr [ %35, %33 ], [ %78, %75 ]
  %42 = icmp eq ptr %40, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr %40, align 8, !tbaa !136
  %45 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %40, i64 1
  br label %46

46:                                               ; preds = %43, %37
  %47 = phi ptr [ %45, %43 ], [ null, %37 ]
  %48 = phi ptr [ %44, %43 ], [ %39, %37 ]
  %49 = load ptr, ptr %36, align 8, !tbaa !138
  %50 = load ptr, ptr %14, align 8, !tbaa !81
  %51 = getelementptr inbounds %struct.ParticleSettings, ptr %50, i64 0, i32 8
  %52 = load i16, ptr %51, align 2, !tbaa !141
  call void @psys_mat_hair_to_global(ptr noundef %1, ptr noundef %49, i16 noundef signext %52, ptr noundef %41, ptr noundef nonnull %4) #7
  %53 = getelementptr inbounds %struct.ParticleData, ptr %41, i64 0, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !142
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.ParticleData, ptr %41, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !145
  br label %59

59:                                               ; preds = %56, %69
  %60 = phi i32 [ %71, %69 ], [ 0, %56 ]
  %61 = phi ptr [ %72, %69 ], [ %58, %56 ]
  %62 = phi ptr [ %70, %69 ], [ %48, %56 ]
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef %61) #7
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.PTCacheEditKey, ptr %62, i64 0, i32 7
  %66 = load i16, ptr %65, align 4, !tbaa !146
  %67 = and i16 %66, -9
  store i16 %67, ptr %65, align 4, !tbaa !146
  %68 = getelementptr inbounds %struct.PTCacheEditKey, ptr %62, i64 1
  br label %69

69:                                               ; preds = %59, %64
  %70 = phi ptr [ %68, %64 ], [ null, %59 ]
  %71 = add nuw nsw i32 %60, 1
  %72 = getelementptr inbounds %struct.HairKey, ptr %61, i64 1
  %73 = load i32, ptr %53, align 8, !tbaa !142
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %59, label %75, !llvm.loop !148

75:                                               ; preds = %69, %46
  %76 = phi ptr [ %48, %46 ], [ %70, %69 ]
  %77 = add nuw nsw i32 %38, 1
  %78 = getelementptr inbounds %struct.ParticleData, ptr %41, i64 1
  %79 = load i32, ptr %30, align 8, !tbaa !134
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %37, label %81, !llvm.loop !149

81:                                               ; preds = %75
  %82 = load ptr, ptr %22, align 8, !tbaa !130
  br label %83

83:                                               ; preds = %81, %28
  %84 = phi ptr [ %82, %81 ], [ %23, %28 ]
  call void @psys_free_path_cache(ptr noundef nonnull %2, ptr noundef %84) #7
  %85 = load i32, ptr %9, align 4, !tbaa !128
  %86 = or i32 %85, 2
  store i32 %86, ptr %9, align 4, !tbaa !128
  %87 = getelementptr inbounds %struct.ParticleEditSettings, ptr %6, i64 0, i32 3
  %88 = load i16, ptr %87, align 2, !tbaa !150
  %89 = add i16 %88, -3
  %90 = icmp ult i16 %89, 2
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  store i16 -1, ptr %87, align 2, !tbaa !150
  br label %92

92:                                               ; preds = %83, %91
  call void @PE_update_object(ptr noundef %0, ptr noundef %1, i32 noundef 0) #7
  br label %93

93:                                               ; preds = %13, %17, %3, %8, %92
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  ret void
}

; Function Attrs: optsize
declare ptr @psys_get_modifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @PE_settings(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @psys_mat_hair_to_global(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @psys_free_path_cache(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @PE_update_object(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @connect_hair(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 !PGOFuncName !152 {
  %4 = alloca %struct.BVHTreeFromMesh, align 8
  %5 = alloca %struct.BVHTreeNearest, align 4
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [3 x float]], align 16
  %9 = alloca [3 x float], align 4
  %10 = tail call ptr @psys_get_modifier(ptr noundef %1, ptr noundef %2) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  %11 = icmp eq ptr %2, null
  br i1 %11, label %205, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !81
  %15 = icmp eq ptr %14, null
  br i1 %15, label %205, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ParticleSettings, ptr %14, i64 0, i32 7
  %18 = load i16, ptr %17, align 8, !tbaa !129
  %19 = icmp eq i16 %18, 2
  br i1 %19, label %20, label %205

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %10, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !138
  %23 = icmp eq ptr %22, null
  br i1 %23, label %205, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !130
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.PTCacheEdit, ptr %26, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !131
  br label %31

31:                                               ; preds = %24, %28
  %32 = phi ptr [ %30, %28 ], [ null, %24 ]
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %22, i64 0, i32 11
  %34 = load i32, ptr %33, align 8, !tbaa !153
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !156
  %38 = tail call ptr @mesh_get_derived_deform(ptr noundef %0, ptr noundef %1, i64 noundef %37) #7
  br label %39

39:                                               ; preds = %31, %36
  %40 = phi ptr [ %38, %36 ], [ %22, %31 ]
  %41 = tail call ptr @CDDM_copy(ptr noundef %40) #7
  tail call void @DM_ensure_tessface(ptr noundef %41) #7
  %42 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 23
  %43 = load ptr, ptr %42, align 8, !tbaa !157
  %44 = tail call i32 %43(ptr noundef %41) #7
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 31
  %46 = load ptr, ptr %45, align 8, !tbaa !158
  %47 = tail call ptr %46(ptr noundef %41) #7
  %48 = icmp sgt i32 %44, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %51 = zext nneg i32 %44 to i64
  br label %52

52:                                               ; preds = %49, %52
  %53 = phi i64 [ 0, %49 ], [ %55, %52 ]
  %54 = getelementptr inbounds %struct.MVert, ptr %47, i64 %53
  tail call void @mul_m4_v3(ptr noundef nonnull %50, ptr noundef %54) #7
  %55 = add nuw nsw i64 %53, 1
  %56 = icmp eq i64 %55, %51
  br i1 %56, label %57, label %52, !llvm.loop !159

57:                                               ; preds = %52, %39
  %58 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 25
  %59 = load ptr, ptr %58, align 8, !tbaa !160
  %60 = tail call i32 %59(ptr noundef %41) #7
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 33
  %64 = load ptr, ptr %63, align 8, !tbaa !161
  %65 = tail call ptr %64(ptr noundef nonnull %41) #7
  %66 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %4, ptr noundef nonnull %41, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #7
  br label %80

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 24
  %69 = load ptr, ptr %68, align 8, !tbaa !162
  %70 = tail call i32 %69(ptr noundef nonnull %41) #7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 32
  %74 = load ptr, ptr %73, align 8, !tbaa !163
  %75 = tail call ptr %74(ptr noundef nonnull %41) #7
  %76 = call ptr @bvhtree_from_mesh_edges(ptr noundef nonnull %4, ptr noundef nonnull %41, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #7
  br label %80

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 95
  %79 = load ptr, ptr %78, align 8, !tbaa !164
  tail call void %79(ptr noundef nonnull %41) #7
  br label %205

80:                                               ; preds = %72, %62
  %81 = phi ptr [ %65, %62 ], [ null, %72 ]
  %82 = phi ptr [ null, %62 ], [ %75, %72 ]
  %83 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 26
  %84 = load i32, ptr %83, align 8, !tbaa !134
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %198

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !135
  %89 = getelementptr inbounds %struct.BVHTreeNearest, ptr %5, i64 0, i32 3
  %90 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %4, i64 0, i32 1
  %91 = icmp eq ptr %81, null
  %92 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 1
  %93 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 2
  %94 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 3
  %95 = getelementptr inbounds %struct.BVHTreeNearest, ptr %5, i64 0, i32 1
  br label %96

96:                                               ; preds = %86, %191
  %97 = phi i32 [ 0, %86 ], [ %194, %191 ]
  %98 = phi ptr [ %88, %86 ], [ %195, %191 ]
  %99 = phi ptr [ %32, %86 ], [ %193, %191 ]
  %100 = phi ptr [ null, %86 ], [ %192, %191 ]
  %101 = getelementptr inbounds %struct.ParticleData, ptr %98, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !145
  store i32 -1, ptr %5, align 4, !tbaa !165
  store float 0x47EFFFFFE0000000, ptr %89, align 4, !tbaa !167
  %103 = load ptr, ptr %4, align 8, !tbaa !168
  %104 = load ptr, ptr %90, align 8, !tbaa !170
  %105 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %103, ptr noundef %102, ptr noundef nonnull %5, ptr noundef %104, ptr noundef nonnull %4) #7
  %106 = load i32, ptr %5, align 4, !tbaa !165
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %114

108:                                              ; preds = %96
  %109 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !171
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %191, label %112

112:                                              ; preds = %108
  %113 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47) #9
  br label %191

114:                                              ; preds = %96
  %115 = sext i32 %106 to i64
  br i1 %91, label %143, label %116

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.MFace, ptr %81, i64 %115
  %118 = load i32, ptr %117, align 4, !tbaa !173
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.MVert, ptr %47, i64 %119
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef %120) #9
  %121 = getelementptr inbounds %struct.MFace, ptr %81, i64 %115, i32 1
  %122 = load i32, ptr %121, align 4, !tbaa !175
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.MVert, ptr %47, i64 %123
  call fastcc void @copy_v3_v3(ptr noundef nonnull %92, ptr noundef %124) #9
  %125 = getelementptr inbounds %struct.MFace, ptr %81, i64 %115, i32 2
  %126 = load i32, ptr %125, align 4, !tbaa !176
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.MVert, ptr %47, i64 %127
  call fastcc void @copy_v3_v3(ptr noundef nonnull %93, ptr noundef %128) #9
  %129 = getelementptr inbounds %struct.MFace, ptr %81, i64 %115, i32 3
  %130 = load i32, ptr %129, align 4, !tbaa !177
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %116
  %133 = zext i32 %130 to i64
  %134 = getelementptr inbounds %struct.MVert, ptr %47, i64 %133
  call fastcc void @copy_v3_v3(ptr noundef nonnull %94, ptr noundef nonnull %134) #9
  br label %135

135:                                              ; preds = %116, %132
  %136 = phi i32 [ 4, %132 ], [ 3, %116 ]
  %137 = getelementptr inbounds %struct.ParticleData, ptr %98, i64 0, i32 11
  call void @interp_weights_poly_v3(ptr noundef nonnull %137, ptr noundef nonnull %8, i32 noundef %136, ptr noundef nonnull %95) #7
  %138 = load i32, ptr %5, align 4, !tbaa !165
  %139 = getelementptr inbounds %struct.ParticleData, ptr %98, i64 0, i32 9
  store i32 %138, ptr %139, align 8, !tbaa !178
  %140 = load ptr, ptr %21, align 8, !tbaa !138
  %141 = getelementptr inbounds %struct.ParticleData, ptr %98, i64 0, i32 11
  %142 = call i32 @psys_particle_dm_face_lookup(ptr noundef %1, ptr noundef %140, i32 noundef %138, ptr noundef nonnull %141, ptr noundef null) #7
  br label %155

143:                                              ; preds = %114
  %144 = getelementptr inbounds %struct.MEdge, ptr %82, i64 %115, i32 1
  %145 = load i32, ptr %144, align 4, !tbaa !179
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.MVert, ptr %47, i64 %146
  %148 = call float @line_point_factor_v3(ptr noundef nonnull %95, ptr noundef %147, ptr noundef %147) #7
  %149 = getelementptr inbounds %struct.ParticleData, ptr %98, i64 0, i32 11
  %150 = getelementptr inbounds %struct.ParticleData, ptr %98, i64 0, i32 11, i64 1
  store float %148, ptr %150, align 4, !tbaa !181
  %151 = fsub float 1.000000e+00, %148
  store float %151, ptr %149, align 8, !tbaa !181
  %152 = getelementptr inbounds %struct.ParticleData, ptr %98, i64 0, i32 11, i64 2
  store <2 x float> zeroinitializer, ptr %152, align 8, !tbaa !181
  %153 = load i32, ptr %5, align 4, !tbaa !165
  %154 = getelementptr inbounds %struct.ParticleData, ptr %98, i64 0, i32 9
  store i32 %153, ptr %154, align 8, !tbaa !178
  br label %155

155:                                              ; preds = %143, %135
  %156 = phi i32 [ -1, %143 ], [ %142, %135 ]
  %157 = getelementptr inbounds %struct.ParticleData, ptr %98, i64 0, i32 10
  store i32 %156, ptr %157, align 4, !tbaa !182
  %158 = load ptr, ptr %21, align 8, !tbaa !138
  %159 = load ptr, ptr %13, align 8, !tbaa !81
  %160 = getelementptr inbounds %struct.ParticleSettings, ptr %159, i64 0, i32 8
  %161 = load i16, ptr %160, align 2, !tbaa !141
  call void @psys_mat_hair_to_global(ptr noundef %1, ptr noundef %158, i16 noundef signext %161, ptr noundef nonnull %98, ptr noundef nonnull %6) #7
  %162 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %6) #7
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %95, ptr noundef %102) #9
  %163 = icmp eq ptr %99, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %155
  %165 = load ptr, ptr %99, align 8, !tbaa !136
  %166 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %99, i64 1
  br label %167

167:                                              ; preds = %164, %155
  %168 = phi ptr [ %165, %164 ], [ %100, %155 ]
  %169 = phi ptr [ %166, %164 ], [ null, %155 ]
  %170 = getelementptr inbounds %struct.ParticleData, ptr %98, i64 0, i32 5
  %171 = load i32, ptr %170, align 8, !tbaa !142
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %191

173:                                              ; preds = %167
  %174 = load ptr, ptr %101, align 8, !tbaa !145
  br label %175

175:                                              ; preds = %173, %185
  %176 = phi i32 [ %187, %185 ], [ 0, %173 ]
  %177 = phi ptr [ %186, %185 ], [ %168, %173 ]
  %178 = phi ptr [ %188, %185 ], [ %174, %173 ]
  call fastcc void @add_v3_v3(ptr noundef %178, ptr noundef nonnull %9) #9
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef %178) #7
  %179 = icmp eq ptr %177, null
  br i1 %179, label %185, label %180

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.PTCacheEditKey, ptr %177, i64 0, i32 7
  %182 = load i16, ptr %181, align 4, !tbaa !146
  %183 = or i16 %182, 8
  store i16 %183, ptr %181, align 4, !tbaa !146
  %184 = getelementptr inbounds %struct.PTCacheEditKey, ptr %177, i64 1
  br label %185

185:                                              ; preds = %175, %180
  %186 = phi ptr [ %184, %180 ], [ null, %175 ]
  %187 = add nuw nsw i32 %176, 1
  %188 = getelementptr inbounds %struct.HairKey, ptr %178, i64 1
  %189 = load i32, ptr %170, align 8, !tbaa !142
  %190 = icmp slt i32 %187, %189
  br i1 %190, label %175, label %191, !llvm.loop !183

191:                                              ; preds = %185, %167, %108, %112
  %192 = phi ptr [ %100, %112 ], [ %100, %108 ], [ %168, %167 ], [ %186, %185 ]
  %193 = phi ptr [ %99, %112 ], [ %99, %108 ], [ %169, %167 ], [ %169, %185 ]
  %194 = add nuw nsw i32 %97, 1
  %195 = getelementptr inbounds %struct.ParticleData, ptr %98, i64 1
  %196 = load i32, ptr %83, align 8, !tbaa !134
  %197 = icmp slt i32 %194, %196
  br i1 %197, label %96, label %198, !llvm.loop !184

198:                                              ; preds = %191, %80
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %4) #7
  %199 = getelementptr inbounds %struct.DerivedMesh, ptr %41, i64 0, i32 95
  %200 = load ptr, ptr %199, align 8, !tbaa !164
  call void %200(ptr noundef %41) #7
  %201 = load ptr, ptr %25, align 8, !tbaa !130
  call void @psys_free_path_cache(ptr noundef nonnull %2, ptr noundef %201) #7
  %202 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 25
  %203 = load i32, ptr %202, align 4, !tbaa !128
  %204 = and i32 %203, -3
  store i32 %204, ptr %202, align 4, !tbaa !128
  call void @PE_update_object(ptr noundef %0, ptr noundef %1, i32 noundef 0) #7
  br label %205

205:                                              ; preds = %3, %12, %16, %20, %198, %77
  %206 = phi i8 [ 1, %198 ], [ 0, %77 ], [ 0, %20 ], [ 0, %16 ], [ 0, %12 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #8
  ret i8 %206
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare ptr @mesh_get_derived_deform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @bvhtree_from_mesh_faces(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @bvhtree_from_mesh_edges(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_bvhtree_find_nearest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !185 {
  %3 = load float, ptr %1, align 4, !tbaa !181
  store float %3, ptr %0, align 4, !tbaa !181
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !181
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !181
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !181
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !181
  ret void
}

; Function Attrs: optsize
declare void @interp_weights_poly_v3(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @psys_particle_dm_face_lookup(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @line_point_factor_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !186 {
  %4 = load float, ptr %1, align 4, !tbaa !181
  %5 = load float, ptr %2, align 4, !tbaa !181
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !181
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !181
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !181
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !181
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !181
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !181
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !181
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !187 {
  %3 = load float, ptr %1, align 4, !tbaa !181
  %4 = load float, ptr %0, align 4, !tbaa !181
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !181
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !181
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !181
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !181
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !181
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !181
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !181
  ret void
}

; Function Attrs: optsize
declare void @free_bvhtree_from_mesh(ptr noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { optsize }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 72}
!45 = !{!35, !36, i64 32}
!46 = !{!35, !41, i64 184}
!47 = !{!"particle_object.c:particle_system_add_exec"}
!48 = !{!"particle_object.c:particle_system_remove_exec"}
!49 = !{!50, !52, i64 432}
!50 = !{!"Object", !51, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !52, i64 140, !52, i64 144, !52, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !53, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !52, i64 432, !52, i64 436, !36, i64 440, !36, i64 448, !52, i64 456, !52, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !54, i64 616, !54, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !52, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !52, i64 968, !52, i64 972, !52, i64 976, !52, i64 980, !52, i64 984, !54, i64 988, !54, i64 992, !54, i64 996, !54, i64 1000, !54, i64 1004, !54, i64 1008, !54, i64 1012, !54, i64 1016, !54, i64 1020, !54, i64 1024, !54, i64 1028, !54, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !54, i64 1048, !54, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !54, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !52, i64 1144, !52, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !54, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !55, i64 1304, !55, i64 1312, !52, i64 1320, !52, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!51 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !52, i64 100, !52, i64 104, !52, i64 108, !36, i64 112}
!52 = !{!"int", !37, i64 0}
!53 = !{!"bAnimVizSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !52, i64 32, !52, i64 36, !52, i64 40, !52, i64 44}
!54 = !{!"float", !37, i64 0}
!55 = !{!"long", !37, i64 0}
!56 = !{!57, !36, i64 168}
!57 = !{!"Scene", !51, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !52, i64 232, !52, i64 236, !52, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !58, i64 280, !67, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !52, i64 4380, !39, i64 4384, !68, i64 4400, !69, i64 4416, !72, i64 4600, !36, i64 4608, !73, i64 4616, !36, i64 4640, !55, i64 4648, !55, i64 4656, !60, i64 4664, !61, i64 4824, !74, i64 4888, !36, i64 4952}
!58 = !{!"RenderData", !59, i64 0, !36, i64 248, !36, i64 256, !62, i64 264, !63, i64 328, !52, i64 400, !52, i64 404, !52, i64 408, !54, i64 412, !52, i64 416, !52, i64 420, !52, i64 424, !52, i64 428, !41, i64 432, !41, i64 434, !54, i64 436, !54, i64 440, !54, i64 444, !54, i64 448, !54, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !52, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !52, i64 484, !52, i64 488, !41, i64 492, !41, i64 494, !52, i64 496, !52, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !52, i64 516, !52, i64 520, !52, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !64, i64 544, !64, i64 560, !65, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !54, i64 612, !54, i64 616, !54, i64 620, !54, i64 624, !52, i64 628, !54, i64 632, !54, i64 636, !54, i64 640, !54, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !54, i64 660, !54, i64 664, !41, i64 668, !41, i64 670, !54, i64 672, !54, i64 676, !37, i64 680, !52, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !52, i64 2520, !41, i64 2524, !41, i64 2526, !54, i64 2528, !54, i64 2532, !41, i64 2536, !41, i64 2538, !54, i64 2540, !41, i64 2544, !41, i64 2546, !52, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !54, i64 2560, !54, i64 2564, !36, i64 2568, !52, i64 2576, !54, i64 2580, !37, i64 2584, !66, i64 2616, !52, i64 3976, !52, i64 3980}
!59 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !54, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !60, i64 24, !61, i64 184}
!60 = !{!"ColorManagedViewSettings", !52, i64 0, !52, i64 4, !37, i64 8, !37, i64 72, !54, i64 136, !54, i64 140, !36, i64 144, !36, i64 152}
!61 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!62 = !{!"QuicktimeCodecSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !52, i64 40, !52, i64 44, !41, i64 48, !41, i64 50, !52, i64 52, !52, i64 56, !52, i64 60}
!63 = !{!"FFMpegCodecData", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !54, i64 32, !52, i64 36, !52, i64 40, !52, i64 44, !52, i64 48, !52, i64 52, !52, i64 56, !52, i64 60, !36, i64 64}
!64 = !{!"rctf", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!65 = !{!"rcti", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!66 = !{!"BakeData", !59, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !54, i64 1280, !54, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!67 = !{!"AudioData", !52, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !52, i64 16, !41, i64 20, !41, i64 22, !54, i64 24, !54, i64 28}
!68 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!69 = !{!"GameData", !68, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !70, i64 40, !41, i64 64, !41, i64 66, !54, i64 68, !71, i64 72, !54, i64 128, !54, i64 132, !52, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180}
!70 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !54, i64 8, !54, i64 12, !36, i64 16}
!71 = !{!"RecastData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !52, i64 40, !54, i64 44, !54, i64 48, !41, i64 52, !41, i64 54}
!72 = !{!"UnitSettings", !54, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!73 = !{!"PhysicsSettings", !37, i64 0, !52, i64 12, !52, i64 16, !52, i64 20}
!74 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!75 = !{!76, !36, i64 32}
!76 = !{!"Base", !36, i64 0, !36, i64 8, !52, i64 16, !52, i64 20, !52, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!77 = !{!"particle_object.c:new_particle_settings_exec"}
!78 = !{i64 0, i64 8, !79, i64 8, i64 8, !79, i64 16, i64 8, !79}
!79 = !{!36, !36, i64 0}
!80 = !{i64 0, i64 8, !79}
!81 = !{!82, !36, i64 16}
!82 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !39, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !37, i64 168, !37, i64 232, !54, i64 296, !54, i64 300, !54, i64 304, !52, i64 308, !52, i64 312, !52, i64 316, !52, i64 320, !52, i64 324, !52, i64 328, !52, i64 332, !52, i64 336, !41, i64 340, !41, i64 342, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 540, !41, i64 564, !41, i64 566, !36, i64 568, !36, i64 576, !39, i64 584, !36, i64 600, !36, i64 608, !52, i64 616, !52, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !54, i64 648, !54, i64 652}
!83 = !{!84, !52, i64 100}
!84 = !{!"ParticleSettings", !51, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !52, i64 152, !52, i64 156, !41, i64 160, !41, i64 162, !41, i64 164, !41, i64 166, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !52, i64 176, !52, i64 180, !41, i64 184, !41, i64 186, !41, i64 188, !41, i64 190, !41, i64 192, !41, i64 194, !41, i64 196, !41, i64 198, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !54, i64 232, !54, i64 236, !37, i64 240, !37, i64 248, !54, i64 256, !54, i64 260, !54, i64 264, !41, i64 268, !41, i64 270, !54, i64 272, !54, i64 276, !54, i64 280, !54, i64 284, !54, i64 288, !54, i64 292, !54, i64 296, !54, i64 300, !54, i64 304, !54, i64 308, !54, i64 312, !54, i64 316, !37, i64 320, !52, i64 324, !52, i64 328, !52, i64 332, !52, i64 336, !41, i64 340, !37, i64 342, !54, i64 348, !54, i64 352, !54, i64 356, !54, i64 360, !54, i64 364, !54, i64 368, !54, i64 372, !37, i64 376, !54, i64 388, !54, i64 392, !54, i64 396, !54, i64 400, !54, i64 404, !54, i64 408, !54, i64 412, !37, i64 416, !54, i64 428, !54, i64 432, !54, i64 436, !54, i64 440, !52, i64 444, !52, i64 448, !54, i64 452, !54, i64 456, !54, i64 460, !54, i64 464, !54, i64 468, !54, i64 472, !54, i64 476, !54, i64 480, !54, i64 484, !54, i64 488, !54, i64 492, !54, i64 496, !54, i64 500, !54, i64 504, !54, i64 508, !54, i64 512, !54, i64 516, !54, i64 520, !54, i64 524, !54, i64 528, !54, i64 532, !54, i64 536, !54, i64 540, !54, i64 544, !54, i64 548, !37, i64 552, !54, i64 560, !54, i64 564, !52, i64 568, !52, i64 572, !37, i64 576, !36, i64 720, !39, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !41, i64 792, !37, i64 794}
!85 = !{!"particle_object.c:psys_poll"}
!86 = !{!87, !36, i64 16}
!87 = !{!"PointerRNA", !88, i64 0, !36, i64 8, !36, i64 16}
!88 = !{!"", !36, i64 0}
!89 = !{!"particle_object.c:new_particle_target_exec"}
!90 = !{!87, !36, i64 0}
!91 = !{!92, !41, i64 28}
!92 = !{!"ParticleTarget", !36, i64 0, !36, i64 8, !36, i64 16, !52, i64 24, !41, i64 28, !41, i64 30, !54, i64 32, !54, i64 36}
!93 = distinct !{!93, !94}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!92, !52, i64 24}
!96 = !{!"particle_object.c:remove_particle_target_exec"}
!97 = distinct !{!97, !94}
!98 = !{!82, !36, i64 160}
!99 = !{!"particle_object.c:target_move_up_exec"}
!100 = !{!92, !36, i64 8}
!101 = distinct !{!101, !94}
!102 = !{!"particle_object.c:target_move_down_exec"}
!103 = !{!92, !36, i64 0}
!104 = distinct !{!104, !94}
!105 = !{!"particle_object.c:dupliob_move_up_exec"}
!106 = !{!107, !41, i64 26}
!107 = !{!"ParticleDupliWeight", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30}
!108 = !{!107, !36, i64 8}
!109 = distinct !{!109, !94}
!110 = !{!"particle_object.c:copy_particle_dupliob_exec"}
!111 = distinct !{!111, !94}
!112 = !{!"particle_object.c:remove_particle_dupliob_exec"}
!113 = distinct !{!113, !94}
!114 = !{!84, !36, i64 736}
!115 = !{!"particle_object.c:dupliob_move_down_exec"}
!116 = !{!107, !36, i64 0}
!117 = distinct !{!117, !94}
!118 = !{!35, !36, i64 88}
!119 = !{!"particle_object.c:disconnect_hair_exec"}
!120 = !{!121, !36, i64 112}
!121 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!122 = distinct !{!122, !94}
!123 = !{!"particle_object.c:connect_hair_exec"}
!124 = !{i8 0, i8 2}
!125 = distinct !{!125, !94}
!126 = !{!121, !36, i64 120}
!127 = !{!"particle_object.c:disconnect_hair"}
!128 = !{!82, !52, i64 316}
!129 = !{!84, !41, i64 160}
!130 = !{!82, !36, i64 40}
!131 = !{!132, !36, i64 24}
!132 = !{!"PTCacheEdit", !39, i64 0, !36, i64 16, !36, i64 24, !133, i64 32, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !39, i64 280, !52, i64 296, !52, i64 300, !52, i64 304, !52, i64 308, !37, i64 312, !37, i64 315}
!133 = !{!"PTCacheID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !52, i64 40, !52, i64 44, !52, i64 48, !52, i64 52, !52, i64 56, !52, i64 60, !52, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192}
!134 = !{!82, !52, i64 320}
!135 = !{!82, !36, i64 24}
!136 = !{!137, !36, i64 0}
!137 = !{!"PTCacheEditPoint", !36, i64 0, !52, i64 8, !41, i64 12}
!138 = !{!139, !36, i64 120}
!139 = !{!"ParticleSystemModifierData", !140, i64 0, !36, i64 112, !36, i64 120, !52, i64 128, !52, i64 132, !52, i64 136, !41, i64 140, !41, i64 142}
!140 = !{!"ModifierData", !36, i64 0, !36, i64 8, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!141 = !{!84, !41, i64 162}
!142 = !{!143, !52, i64 136}
!143 = !{!"ParticleData", !144, i64 0, !144, i64 56, !36, i64 112, !36, i64 120, !36, i64 128, !52, i64 136, !54, i64 140, !54, i64 144, !54, i64 148, !52, i64 152, !52, i64 156, !37, i64 160, !54, i64 176, !54, i64 180, !54, i64 184, !52, i64 188, !52, i64 192, !41, i64 196, !41, i64 198}
!144 = !{!"ParticleKey", !37, i64 0, !37, i64 12, !37, i64 24, !37, i64 40, !54, i64 52}
!145 = !{!143, !36, i64 112}
!146 = !{!147, !41, i64 52}
!147 = !{!"PTCacheEditKey", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !54, i64 44, !54, i64 48, !41, i64 52}
!148 = distinct !{!148, !94}
!149 = distinct !{!149, !94}
!150 = !{!151, !41, i64 6}
!151 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !54, i64 128, !54, i64 132, !52, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !36, i64 152, !36, i64 160}
!152 = !{!"particle_object.c:connect_hair"}
!153 = !{!154, !52, i64 1024}
!154 = !{!"DerivedMesh", !155, i64 0, !155, i64 200, !155, i64 400, !155, i64 600, !155, i64 800, !52, i64 1000, !52, i64 1004, !52, i64 1008, !52, i64 1012, !52, i64 1016, !52, i64 1020, !52, i64 1024, !36, i64 1032, !36, i64 1040, !52, i64 1048, !54, i64 1052, !52, i64 1056, !52, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!155 = !{!"CustomData", !36, i64 0, !37, i64 8, !52, i64 172, !52, i64 176, !52, i64 180, !36, i64 184, !36, i64 192}
!156 = !{!55, !55, i64 0}
!157 = !{!154, !36, i64 1104}
!158 = !{!154, !36, i64 1168}
!159 = distinct !{!159, !94}
!160 = !{!154, !36, i64 1120}
!161 = !{!154, !36, i64 1184}
!162 = !{!154, !36, i64 1112}
!163 = !{!154, !36, i64 1176}
!164 = !{!154, !36, i64 1680}
!165 = !{!166, !52, i64 0}
!166 = !{!"BVHTreeNearest", !52, i64 0, !37, i64 4, !37, i64 16, !54, i64 28, !52, i64 32}
!167 = !{!166, !54, i64 28}
!168 = !{!169, !36, i64 0}
!169 = !{!"BVHTreeFromMesh", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !37, i64 48, !37, i64 49, !37, i64 50, !54, i64 52, !36, i64 56, !37, i64 64}
!170 = !{!169, !36, i64 8}
!171 = !{!172, !52, i64 2100}
!172 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !52, i64 2096, !52, i64 2100, !37, i64 2104, !52, i64 2108, !52, i64 2112, !37, i64 2116}
!173 = !{!174, !52, i64 0}
!174 = !{!"MFace", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !41, i64 16, !37, i64 18, !37, i64 19}
!175 = !{!174, !52, i64 4}
!176 = !{!174, !52, i64 8}
!177 = !{!174, !52, i64 12}
!178 = !{!143, !52, i64 152}
!179 = !{!180, !52, i64 4}
!180 = !{!"MEdge", !52, i64 0, !52, i64 4, !37, i64 8, !37, i64 9, !41, i64 10}
!181 = !{!54, !54, i64 0}
!182 = !{!143, !52, i64 156}
!183 = distinct !{!183, !94}
!184 = distinct !{!184, !94}
!185 = !{!"particle_object.c:copy_v3_v3"}
!186 = !{!"particle_object.c:sub_v3_v3v3"}
!187 = !{!"particle_object.c:add_v3_v3"}
