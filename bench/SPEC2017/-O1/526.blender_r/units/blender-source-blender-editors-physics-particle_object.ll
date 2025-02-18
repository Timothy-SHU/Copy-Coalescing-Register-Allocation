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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

declare i32 @ED_operator_object_active_editable(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @particle_system_add_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #6
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %3, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call ptr @object_add_particle_system(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef null) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef nonnull %3) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85721088, ptr noundef nonnull %3) #6
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi i32 [ 4, %8 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @particle_system_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #6
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %5 = icmp ne ptr %4, null
  %6 = icmp ne ptr %3, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %10 = load i32, ptr %9, align 8, !tbaa !47
  tail call void @object_remove_particle_system(ptr noundef nonnull %4, ptr noundef nonnull %3) #6
  %11 = and i32 %10, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %9, align 8, !tbaa !47
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Base, ptr %19, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !73
  %24 = icmp eq ptr %23, %3
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67830016, ptr noundef null) #6
  br label %26

26:                                               ; preds = %13, %25, %21, %17, %8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef nonnull %3) #6
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85721088, ptr noundef nonnull %3) #6
  br label %27

27:                                               ; preds = %2, %26
  %28 = phi i32 [ 4, %26 ], [ 2, %2 ]
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @new_particle_settings_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #6
  %5 = load ptr, ptr %3, align 8, !tbaa.struct !75
  %6 = getelementptr inbounds i8, ptr %3, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa.struct !77
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call ptr @BKE_particlesettings_copy(ptr noundef nonnull %9) #6
  br label %15

13:                                               ; preds = %2
  %14 = call ptr @psys_new_settings(ptr noundef nonnull @.str.44, ptr noundef %4) #6
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  %17 = load ptr, ptr %8, align 8, !tbaa !78
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !80
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %20, align 4, !tbaa !80
  br label %23

23:                                               ; preds = %19, %15
  store ptr %16, ptr %8, align 8, !tbaa !78
  call void @psys_check_boid_data(ptr noundef %7) #6
  call void @DAG_relations_tag_update(ptr noundef %4) #6
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef %5) #6
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @psys_poll(ptr noundef %0) #2 {
  %2 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #6
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = icmp ne ptr %4, null
  %6 = zext i1 %5 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @new_particle_target_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #6
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = load ptr, ptr %3, align 8, !tbaa !85
  %8 = icmp eq ptr %6, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %18, %13 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.ParticleTarget, ptr %14, i64 0, i32 4
  %16 = load i16, ptr %15, align 4, !tbaa !86
  %17 = and i16 %16, -2
  store i16 %17, ptr %15, align 4, !tbaa !86
  %18 = load ptr, ptr %14, align 8, !tbaa !76
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !88

20:                                               ; preds = %13, %9
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !76
  %22 = call ptr %21(i64 noundef 40, ptr noundef nonnull @.str.45) #6
  %23 = getelementptr inbounds %struct.ParticleTarget, ptr %22, i64 0, i32 4
  %24 = load i16, ptr %23, align 4, !tbaa !86
  %25 = or i16 %24, 1
  store i16 %25, ptr %23, align 4, !tbaa !86
  %26 = getelementptr inbounds %struct.ParticleTarget, ptr %22, i64 0, i32 3
  store i32 1, ptr %26, align 8, !tbaa !91
  call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %22) #6
  call void @DAG_relations_tag_update(ptr noundef %4) #6
  call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef %7) #6
  br label %27

27:                                               ; preds = %2, %20
  %28 = phi i32 [ 4, %20 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @remove_particle_target_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #6
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = load ptr, ptr %3, align 8, !tbaa !85
  %8 = icmp eq ptr %6, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 17
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ %10, %9 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ParticleTarget, ptr %13, i64 0, i32 4
  %17 = load i16, ptr %16, align 4, !tbaa !86
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %11, label %20, !llvm.loop !92

20:                                               ; preds = %15
  call void @BLI_remlink(ptr noundef nonnull %10, ptr noundef nonnull %13) #6
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  call void %21(ptr noundef nonnull %13) #6
  br label %22

22:                                               ; preds = %11, %20
  %23 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 17, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !93
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ParticleTarget, ptr %24, i64 0, i32 4
  %28 = load i16, ptr %27, align 4, !tbaa !86
  %29 = or i16 %28, 1
  store i16 %29, ptr %27, align 4, !tbaa !86
  br label %30

30:                                               ; preds = %26, %22
  call void @DAG_relations_tag_update(ptr noundef %4) #6
  call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 2) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef %7) #6
  br label %31

31:                                               ; preds = %2, %30
  %32 = phi i32 [ 4, %30 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @target_move_up_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #6
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = load ptr, ptr %3, align 8, !tbaa !85
  %7 = icmp eq ptr %5, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8, %25
  %13 = phi ptr [ %26, %25 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.ParticleTarget, ptr %13, i64 0, i32 4
  %15 = load i16, ptr %14, align 4, !tbaa !86
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ParticleTarget, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !94
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ParticleTarget, ptr %13, i64 0, i32 1
  call void @BLI_remlink(ptr noundef nonnull %9, ptr noundef nonnull %13) #6
  %24 = load ptr, ptr %23, align 8, !tbaa !94
  call void @BLI_insertlinkbefore(ptr noundef nonnull %9, ptr noundef %24, ptr noundef nonnull %13) #6
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef %6) #6
  br label %28

25:                                               ; preds = %12, %18
  %26 = load ptr, ptr %13, align 8, !tbaa !76
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %12, !llvm.loop !95

28:                                               ; preds = %25, %8, %22, %2
  %29 = phi i32 [ 2, %2 ], [ 4, %22 ], [ 4, %8 ], [ 4, %25 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @target_move_down_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #6
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = load ptr, ptr %3, align 8, !tbaa !85
  %7 = icmp eq ptr %5, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %8, %23
  %13 = phi ptr [ %24, %23 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.ParticleTarget, ptr %13, i64 0, i32 4
  %15 = load i16, ptr %14, align 4, !tbaa !86
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %13, align 8, !tbaa !96
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  call void @BLI_remlink(ptr noundef nonnull %9, ptr noundef nonnull %13) #6
  %22 = load ptr, ptr %13, align 8, !tbaa !96
  call void @BLI_insertlinkafter(ptr noundef nonnull %9, ptr noundef %22, ptr noundef nonnull %13) #6
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef %6) #6
  br label %26

23:                                               ; preds = %12, %18
  %24 = load ptr, ptr %13, align 8, !tbaa !76
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %12, !llvm.loop !97

26:                                               ; preds = %23, %8, %21, %2
  %27 = phi i32 [ 2, %2 ], [ 4, %21 ], [ 4, %8 ], [ 4, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @dupliob_move_up_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #6
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 123
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %7, %26
  %14 = phi ptr [ %27, %26 ], [ %11, %7 ]
  %15 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %14, i64 0, i32 4
  %16 = load i16, ptr %15, align 2, !tbaa !98
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %14, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %14, i64 0, i32 1
  call void @BLI_remlink(ptr noundef nonnull %10, ptr noundef nonnull %14) #6
  %25 = load ptr, ptr %24, align 8, !tbaa !100
  call void @BLI_insertlinkbefore(ptr noundef nonnull %10, ptr noundef %25, ptr noundef nonnull %14) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef null) #6
  br label %29

26:                                               ; preds = %13, %19
  %27 = load ptr, ptr %14, align 8, !tbaa !76
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %13, !llvm.loop !101

29:                                               ; preds = %26, %7, %23, %2
  %30 = phi i32 [ 2, %2 ], [ 4, %23 ], [ 4, %7 ], [ 4, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @copy_particle_dupliob_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #6
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 123
  br label %11

11:                                               ; preds = %15, %7
  %12 = phi ptr [ %10, %7 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %13, i64 0, i32 4
  %17 = load i16, ptr %16, align 2, !tbaa !98
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %11, label %20, !llvm.loop !102

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %13, i64 0, i32 4
  %22 = and i16 %17, -2
  store i16 %22, ptr %21, align 2, !tbaa !98
  %23 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !76
  %24 = call ptr %23(ptr noundef nonnull %13) #6
  %25 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %24, i64 0, i32 4
  %26 = load i16, ptr %25, align 2, !tbaa !98
  %27 = or i16 %26, 1
  store i16 %27, ptr %25, align 2, !tbaa !98
  call void @BLI_addhead(ptr noundef nonnull %10, ptr noundef %24) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef null) #6
  br label %28

28:                                               ; preds = %11, %20, %2
  %29 = phi i32 [ 2, %2 ], [ 4, %20 ], [ 4, %11 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @remove_particle_dupliob_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #6
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 123
  br label %11

11:                                               ; preds = %15, %7
  %12 = phi ptr [ %10, %7 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %13, i64 0, i32 4
  %17 = load i16, ptr %16, align 2, !tbaa !98
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %11, label %20, !llvm.loop !103

20:                                               ; preds = %15
  call void @BLI_remlink(ptr noundef nonnull %10, ptr noundef nonnull %13) #6
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !76
  call void %21(ptr noundef nonnull %13) #6
  br label %22

22:                                               ; preds = %11, %20
  %23 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 123, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !104
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %24, i64 0, i32 4
  %28 = load i16, ptr %27, align 2, !tbaa !98
  %29 = or i16 %28, 1
  store i16 %29, ptr %27, align 2, !tbaa !98
  br label %30

30:                                               ; preds = %26, %22
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef null) #6
  br label %31

31:                                               ; preds = %2, %30
  %32 = phi i32 [ 4, %30 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @dupliob_move_down_exec(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #6
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 123
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %7, %24
  %14 = phi ptr [ %25, %24 ], [ %11, %7 ]
  %15 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %14, i64 0, i32 4
  %16 = load i16, ptr %15, align 2, !tbaa !98
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %14, align 8, !tbaa !105
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  call void @BLI_remlink(ptr noundef nonnull %10, ptr noundef nonnull %14) #6
  %23 = load ptr, ptr %14, align 8, !tbaa !105
  call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef %23, ptr noundef nonnull %14) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef null) #6
  br label %27

24:                                               ; preds = %13, %19
  %25 = load ptr, ptr %14, align 8, !tbaa !76
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %13, !llvm.loop !106

27:                                               ; preds = %24, %7, %22, %2
  %28 = phi i32 [ 2, %2 ], [ 4, %22 ], [ 4, %7 ], [ 4, %24 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %28
}

; Function Attrs: nounwind uwtable
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
  %7 = load ptr, ptr %6, align 8, !tbaa !107
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @disconnect_hair_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #6
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !108
  %8 = call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.36) #6
  %9 = icmp eq ptr %5, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = and i32 %8, 255
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 109
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %19, %17 ], [ %15, %13 ]
  call fastcc void @disconnect_hair(ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %18)
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %17, !llvm.loop !110

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !82
  call fastcc void @disconnect_hair(ptr noundef %4, ptr noundef nonnull %5, ptr noundef %23)
  br label %24

24:                                               ; preds = %17, %13, %21
  call void @DAG_id_tag_update(ptr noundef nonnull %5, i16 noundef signext 2) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef nonnull %5) #6
  br label %25

25:                                               ; preds = %2, %24
  %26 = phi i32 [ 4, %24 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %26
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
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
  %7 = load ptr, ptr %6, align 8, !tbaa !107
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.36, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.42) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @connect_hair_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @RNA_ParticleSystem) #6
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !108
  %8 = call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.36) #6
  %9 = icmp eq ptr %5, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %2
  %11 = and i32 %8, 255
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 109
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %22, %17 ], [ %15, %13 ]
  %19 = phi i8 [ %21, %17 ], [ 0, %13 ]
  %20 = call fastcc zeroext i8 @connect_hair(ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %18), !range !111
  %21 = or i8 %20, %19
  %22 = load ptr, ptr %18, align 8, !tbaa !76
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %17, !llvm.loop !112

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !82
  %27 = call fastcc zeroext i8 @connect_hair(ptr noundef %4, ptr noundef nonnull %5, ptr noundef %26), !range !111
  br label %28

28:                                               ; preds = %17, %13, %24
  %29 = phi i8 [ %27, %24 ], [ 0, %13 ], [ %21, %17 ]
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !113
  call void @BKE_report(ptr noundef %33, i32 noundef 32, ptr noundef nonnull @.str.46) #6
  br label %35

34:                                               ; preds = %28
  call void @DAG_id_tag_update(ptr noundef nonnull %5, i16 noundef signext 2) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85655552, ptr noundef nonnull %5) #6
  br label %35

35:                                               ; preds = %2, %34, %31
  %36 = phi i32 [ 4, %34 ], [ 2, %31 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  ret i32 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare ptr @object_add_particle_system(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @object_remove_particle_system(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_particlesettings_copy(ptr noundef) local_unnamed_addr #1

declare ptr @psys_new_settings(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @psys_check_boid_data(ptr noundef) local_unnamed_addr #1

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #1

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @disconnect_hair(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = tail call ptr @psys_get_modifier(ptr noundef %1, ptr noundef %2) #6
  %6 = tail call ptr @PE_settings(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  %7 = icmp eq ptr %2, null
  br i1 %7, label %91, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 25
  %10 = load i32, ptr %9, align 4, !tbaa !114
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %91

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = icmp eq ptr %15, null
  br i1 %16, label %91, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 7
  %19 = load i16, ptr %18, align 8, !tbaa !115
  %20 = icmp eq i16 %19, 2
  br i1 %20, label %21, label %91

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !116
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.PTCacheEdit, ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !117
  br label %28

28:                                               ; preds = %21, %25
  %29 = phi ptr [ %27, %25 ], [ null, %21 ]
  %30 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 26
  %31 = load i32, ptr %30, align 8, !tbaa !120
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %81

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !121
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
  %44 = load ptr, ptr %40, align 8, !tbaa !122
  %45 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %40, i64 1
  br label %46

46:                                               ; preds = %43, %37
  %47 = phi ptr [ %45, %43 ], [ null, %37 ]
  %48 = phi ptr [ %44, %43 ], [ %39, %37 ]
  %49 = load ptr, ptr %36, align 8, !tbaa !124
  %50 = load ptr, ptr %14, align 8, !tbaa !78
  %51 = getelementptr inbounds %struct.ParticleSettings, ptr %50, i64 0, i32 8
  %52 = load i16, ptr %51, align 2, !tbaa !127
  call void @psys_mat_hair_to_global(ptr noundef %1, ptr noundef %49, i16 noundef signext %52, ptr noundef %41, ptr noundef nonnull %4) #6
  %53 = getelementptr inbounds %struct.ParticleData, ptr %41, i64 0, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !128
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.ParticleData, ptr %41, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !131
  br label %59

59:                                               ; preds = %56, %69
  %60 = phi i32 [ %71, %69 ], [ 0, %56 ]
  %61 = phi ptr [ %72, %69 ], [ %58, %56 ]
  %62 = phi ptr [ %70, %69 ], [ %48, %56 ]
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef %61) #6
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.PTCacheEditKey, ptr %62, i64 0, i32 7
  %66 = load i16, ptr %65, align 4, !tbaa !132
  %67 = and i16 %66, -9
  store i16 %67, ptr %65, align 4, !tbaa !132
  %68 = getelementptr inbounds %struct.PTCacheEditKey, ptr %62, i64 1
  br label %69

69:                                               ; preds = %59, %64
  %70 = phi ptr [ %68, %64 ], [ null, %59 ]
  %71 = add nuw nsw i32 %60, 1
  %72 = getelementptr inbounds %struct.HairKey, ptr %61, i64 1
  %73 = load i32, ptr %53, align 8, !tbaa !128
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %59, label %75, !llvm.loop !134

75:                                               ; preds = %69, %46
  %76 = phi ptr [ %48, %46 ], [ %70, %69 ]
  %77 = add nuw nsw i32 %38, 1
  %78 = getelementptr inbounds %struct.ParticleData, ptr %41, i64 1
  %79 = load i32, ptr %30, align 8, !tbaa !120
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %37, label %81, !llvm.loop !135

81:                                               ; preds = %75, %28
  %82 = load ptr, ptr %22, align 8, !tbaa !116
  call void @psys_free_path_cache(ptr noundef nonnull %2, ptr noundef %82) #6
  %83 = load i32, ptr %9, align 4, !tbaa !114
  %84 = or i32 %83, 2
  store i32 %84, ptr %9, align 4, !tbaa !114
  %85 = getelementptr inbounds %struct.ParticleEditSettings, ptr %6, i64 0, i32 3
  %86 = load i16, ptr %85, align 2, !tbaa !136
  %87 = add i16 %86, -3
  %88 = icmp ult i16 %87, 2
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  store i16 -1, ptr %85, align 2, !tbaa !136
  br label %90

90:                                               ; preds = %81, %89
  call void @PE_update_object(ptr noundef %0, ptr noundef %1, i32 noundef 0) #6
  br label %91

91:                                               ; preds = %13, %17, %3, %8, %90
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  ret void
}

declare ptr @psys_get_modifier(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PE_settings(ptr noundef) local_unnamed_addr #1

declare void @psys_mat_hair_to_global(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @psys_free_path_cache(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @PE_update_object(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @connect_hair(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.BVHTreeFromMesh, align 8
  %5 = alloca %struct.BVHTreeNearest, align 4
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [3 x float]], align 16
  %9 = tail call ptr @psys_get_modifier(ptr noundef %1, ptr noundef %2) #6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #6
  %10 = icmp eq ptr %2, null
  br i1 %10, label %258, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !78
  %14 = icmp eq ptr %13, null
  br i1 %14, label %258, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ParticleSettings, ptr %13, i64 0, i32 7
  %17 = load i16, ptr %16, align 8, !tbaa !115
  %18 = icmp eq i16 %17, 2
  br i1 %18, label %19, label %258

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %9, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !124
  %22 = icmp eq ptr %21, null
  br i1 %22, label %258, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !116
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.PTCacheEdit, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !117
  br label %30

30:                                               ; preds = %23, %27
  %31 = phi ptr [ %29, %27 ], [ null, %23 ]
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %21, i64 0, i32 11
  %33 = load i32, ptr %32, align 8, !tbaa !138
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !141
  %37 = tail call ptr @mesh_get_derived_deform(ptr noundef %0, ptr noundef %1, i64 noundef %36) #6
  br label %38

38:                                               ; preds = %30, %35
  %39 = phi ptr [ %37, %35 ], [ %21, %30 ]
  %40 = tail call ptr @CDDM_copy(ptr noundef %39) #6
  tail call void @DM_ensure_tessface(ptr noundef %40) #6
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %40, i64 0, i32 23
  %42 = load ptr, ptr %41, align 8, !tbaa !142
  %43 = tail call i32 %42(ptr noundef %40) #6
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %40, i64 0, i32 31
  %45 = load ptr, ptr %44, align 8, !tbaa !143
  %46 = tail call ptr %45(ptr noundef %40) #6
  %47 = icmp sgt i32 %43, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %50 = zext nneg i32 %43 to i64
  br label %51

51:                                               ; preds = %48, %51
  %52 = phi i64 [ 0, %48 ], [ %54, %51 ]
  %53 = getelementptr inbounds %struct.MVert, ptr %46, i64 %52
  tail call void @mul_m4_v3(ptr noundef nonnull %49, ptr noundef %53) #6
  %54 = add nuw nsw i64 %52, 1
  %55 = icmp eq i64 %54, %50
  br i1 %55, label %56, label %51, !llvm.loop !144

56:                                               ; preds = %51, %38
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %40, i64 0, i32 25
  %58 = load ptr, ptr %57, align 8, !tbaa !145
  %59 = tail call i32 %58(ptr noundef %40) #6
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.DerivedMesh, ptr %40, i64 0, i32 33
  %63 = load ptr, ptr %62, align 8, !tbaa !146
  %64 = tail call ptr %63(ptr noundef %40) #6
  %65 = call ptr @bvhtree_from_mesh_faces(ptr noundef nonnull %4, ptr noundef %40, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #6
  br label %79

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.DerivedMesh, ptr %40, i64 0, i32 24
  %68 = load ptr, ptr %67, align 8, !tbaa !147
  %69 = tail call i32 %68(ptr noundef %40) #6
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.DerivedMesh, ptr %40, i64 0, i32 32
  %73 = load ptr, ptr %72, align 8, !tbaa !148
  %74 = tail call ptr %73(ptr noundef %40) #6
  %75 = call ptr @bvhtree_from_mesh_edges(ptr noundef nonnull %4, ptr noundef %40, float noundef 0.000000e+00, i32 noundef 2, i32 noundef 6) #6
  br label %79

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.DerivedMesh, ptr %40, i64 0, i32 95
  %78 = load ptr, ptr %77, align 8, !tbaa !149
  tail call void %78(ptr noundef %40) #6
  br label %258

79:                                               ; preds = %71, %61
  %80 = phi ptr [ %64, %61 ], [ null, %71 ]
  %81 = phi ptr [ null, %61 ], [ %74, %71 ]
  %82 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 26
  %83 = load i32, ptr %82, align 8, !tbaa !120
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %251

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !121
  %88 = getelementptr inbounds %struct.BVHTreeNearest, ptr %5, i64 0, i32 3
  %89 = getelementptr inbounds %struct.BVHTreeFromMesh, ptr %4, i64 0, i32 1
  %90 = icmp eq ptr %80, null
  %91 = getelementptr inbounds float, ptr %8, i64 1
  %92 = getelementptr inbounds float, ptr %8, i64 2
  %93 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 1
  %94 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 1, i64 1
  %95 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 1, i64 2
  %96 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 2
  %97 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 2, i64 1
  %98 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 2, i64 2
  %99 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 3
  %100 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 3, i64 1
  %101 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 3, i64 2
  %102 = getelementptr inbounds %struct.BVHTreeNearest, ptr %5, i64 0, i32 1
  %103 = getelementptr inbounds %struct.BVHTreeNearest, ptr %5, i64 0, i32 1
  %104 = getelementptr inbounds %struct.BVHTreeNearest, ptr %5, i64 0, i32 1
  %105 = getelementptr inbounds %struct.BVHTreeNearest, ptr %5, i64 0, i32 1
  %106 = getelementptr inbounds %struct.BVHTreeNearest, ptr %5, i64 0, i32 1, i64 1
  %107 = getelementptr inbounds %struct.BVHTreeNearest, ptr %5, i64 0, i32 1, i64 2
  br label %108

108:                                              ; preds = %85, %244
  %109 = phi i32 [ 0, %85 ], [ %247, %244 ]
  %110 = phi ptr [ %87, %85 ], [ %248, %244 ]
  %111 = phi ptr [ %31, %85 ], [ %246, %244 ]
  %112 = phi ptr [ null, %85 ], [ %245, %244 ]
  %113 = getelementptr inbounds %struct.ParticleData, ptr %110, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !131
  store i32 -1, ptr %5, align 4, !tbaa !150
  store float 0x47EFFFFFE0000000, ptr %88, align 4, !tbaa !152
  %115 = load ptr, ptr %4, align 8, !tbaa !153
  %116 = load ptr, ptr %89, align 8, !tbaa !155
  %117 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %115, ptr noundef %114, ptr noundef nonnull %5, ptr noundef %116, ptr noundef nonnull %4) #6
  %118 = load i32, ptr %5, align 4, !tbaa !150
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %126

120:                                              ; preds = %108
  %121 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !156
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %244, label %124

124:                                              ; preds = %120
  %125 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47)
  br label %244

126:                                              ; preds = %108
  %127 = sext i32 %118 to i64
  br i1 %90, label %176, label %128

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.MFace, ptr %80, i64 %127
  %130 = load i32, ptr %129, align 4, !tbaa !158
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.MVert, ptr %46, i64 %131
  %133 = load float, ptr %132, align 4, !tbaa !160
  store float %133, ptr %8, align 16, !tbaa !160
  %134 = getelementptr inbounds float, ptr %132, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !160
  store float %135, ptr %91, align 4, !tbaa !160
  %136 = getelementptr inbounds float, ptr %132, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !160
  store float %137, ptr %92, align 8, !tbaa !160
  %138 = getelementptr inbounds %struct.MFace, ptr %80, i64 %127, i32 1
  %139 = load i32, ptr %138, align 4, !tbaa !161
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.MVert, ptr %46, i64 %140
  %142 = load float, ptr %141, align 4, !tbaa !160
  store float %142, ptr %93, align 4, !tbaa !160
  %143 = getelementptr inbounds float, ptr %141, i64 1
  %144 = load float, ptr %143, align 4, !tbaa !160
  store float %144, ptr %94, align 16, !tbaa !160
  %145 = getelementptr inbounds float, ptr %141, i64 2
  %146 = load float, ptr %145, align 4, !tbaa !160
  store float %146, ptr %95, align 4, !tbaa !160
  %147 = getelementptr inbounds %struct.MFace, ptr %80, i64 %127, i32 2
  %148 = load i32, ptr %147, align 4, !tbaa !162
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.MVert, ptr %46, i64 %149
  %151 = load float, ptr %150, align 4, !tbaa !160
  store float %151, ptr %96, align 8, !tbaa !160
  %152 = getelementptr inbounds float, ptr %150, i64 1
  %153 = load float, ptr %152, align 4, !tbaa !160
  store float %153, ptr %97, align 4, !tbaa !160
  %154 = getelementptr inbounds float, ptr %150, i64 2
  %155 = load float, ptr %154, align 4, !tbaa !160
  store float %155, ptr %98, align 16, !tbaa !160
  %156 = getelementptr inbounds %struct.MFace, ptr %80, i64 %127, i32 3
  %157 = load i32, ptr %156, align 4, !tbaa !163
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %168, label %159

159:                                              ; preds = %128
  %160 = zext i32 %157 to i64
  %161 = getelementptr inbounds %struct.MVert, ptr %46, i64 %160
  %162 = load float, ptr %161, align 4, !tbaa !160
  store float %162, ptr %99, align 4, !tbaa !160
  %163 = getelementptr inbounds float, ptr %161, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !160
  store float %164, ptr %100, align 8, !tbaa !160
  %165 = getelementptr inbounds float, ptr %161, i64 2
  %166 = load float, ptr %165, align 4, !tbaa !160
  store float %166, ptr %101, align 4, !tbaa !160
  %167 = getelementptr inbounds %struct.ParticleData, ptr %110, i64 0, i32 11
  call void @interp_weights_poly_v3(ptr noundef nonnull %167, ptr noundef nonnull %8, i32 noundef 4, ptr noundef nonnull %102) #6
  br label %170

168:                                              ; preds = %128
  %169 = getelementptr inbounds %struct.ParticleData, ptr %110, i64 0, i32 11
  call void @interp_weights_poly_v3(ptr noundef nonnull %169, ptr noundef nonnull %8, i32 noundef 3, ptr noundef nonnull %103) #6
  br label %170

170:                                              ; preds = %168, %159
  %171 = load i32, ptr %5, align 4, !tbaa !150
  %172 = getelementptr inbounds %struct.ParticleData, ptr %110, i64 0, i32 9
  store i32 %171, ptr %172, align 8, !tbaa !164
  %173 = load ptr, ptr %20, align 8, !tbaa !124
  %174 = getelementptr inbounds %struct.ParticleData, ptr %110, i64 0, i32 11
  %175 = call i32 @psys_particle_dm_face_lookup(ptr noundef %1, ptr noundef %173, i32 noundef %171, ptr noundef nonnull %174, ptr noundef null) #6
  br label %189

176:                                              ; preds = %126
  %177 = getelementptr inbounds %struct.MEdge, ptr %81, i64 %127, i32 1
  %178 = load i32, ptr %177, align 4, !tbaa !165
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.MVert, ptr %46, i64 %179
  %181 = call float @line_point_factor_v3(ptr noundef nonnull %104, ptr noundef %180, ptr noundef %180) #6
  %182 = getelementptr inbounds %struct.ParticleData, ptr %110, i64 0, i32 11
  %183 = getelementptr inbounds %struct.ParticleData, ptr %110, i64 0, i32 11, i64 1
  store float %181, ptr %183, align 4, !tbaa !160
  %184 = fsub float 1.000000e+00, %181
  store float %184, ptr %182, align 8, !tbaa !160
  %185 = getelementptr inbounds %struct.ParticleData, ptr %110, i64 0, i32 11, i64 3
  store float 0.000000e+00, ptr %185, align 4, !tbaa !160
  %186 = getelementptr inbounds %struct.ParticleData, ptr %110, i64 0, i32 11, i64 2
  store float 0.000000e+00, ptr %186, align 8, !tbaa !160
  %187 = load i32, ptr %5, align 4, !tbaa !150
  %188 = getelementptr inbounds %struct.ParticleData, ptr %110, i64 0, i32 9
  store i32 %187, ptr %188, align 8, !tbaa !164
  br label %189

189:                                              ; preds = %176, %170
  %190 = phi i32 [ -1, %176 ], [ %175, %170 ]
  %191 = getelementptr inbounds %struct.ParticleData, ptr %110, i64 0, i32 10
  store i32 %190, ptr %191, align 4, !tbaa !167
  %192 = load ptr, ptr %20, align 8, !tbaa !124
  %193 = load ptr, ptr %12, align 8, !tbaa !78
  %194 = getelementptr inbounds %struct.ParticleSettings, ptr %193, i64 0, i32 8
  %195 = load i16, ptr %194, align 2, !tbaa !127
  call void @psys_mat_hair_to_global(ptr noundef %1, ptr noundef %192, i16 noundef signext %195, ptr noundef %110, ptr noundef nonnull %6) #6
  %196 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %6) #6
  %197 = load float, ptr %105, align 4, !tbaa !160
  %198 = load float, ptr %114, align 4, !tbaa !160
  %199 = fsub float %197, %198
  %200 = load float, ptr %106, align 4, !tbaa !160
  %201 = getelementptr inbounds float, ptr %114, i64 1
  %202 = load float, ptr %201, align 4, !tbaa !160
  %203 = fsub float %200, %202
  %204 = load float, ptr %107, align 4, !tbaa !160
  %205 = getelementptr inbounds float, ptr %114, i64 2
  %206 = load float, ptr %205, align 4, !tbaa !160
  %207 = fsub float %204, %206
  %208 = icmp eq ptr %111, null
  br i1 %208, label %212, label %209

209:                                              ; preds = %189
  %210 = load ptr, ptr %111, align 8, !tbaa !122
  %211 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %111, i64 1
  br label %212

212:                                              ; preds = %209, %189
  %213 = phi ptr [ %210, %209 ], [ %112, %189 ]
  %214 = phi ptr [ %211, %209 ], [ null, %189 ]
  %215 = getelementptr inbounds %struct.ParticleData, ptr %110, i64 0, i32 5
  %216 = load i32, ptr %215, align 8, !tbaa !128
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %218, label %244

218:                                              ; preds = %212
  %219 = load ptr, ptr %113, align 8, !tbaa !131
  br label %220

220:                                              ; preds = %218, %238
  %221 = phi i32 [ %240, %238 ], [ 0, %218 ]
  %222 = phi ptr [ %239, %238 ], [ %213, %218 ]
  %223 = phi ptr [ %241, %238 ], [ %219, %218 ]
  %224 = load float, ptr %223, align 4, !tbaa !160
  %225 = fadd float %199, %224
  store float %225, ptr %223, align 4, !tbaa !160
  %226 = getelementptr inbounds float, ptr %223, i64 1
  %227 = load float, ptr %226, align 4, !tbaa !160
  %228 = fadd float %203, %227
  store float %228, ptr %226, align 4, !tbaa !160
  %229 = getelementptr inbounds float, ptr %223, i64 2
  %230 = load float, ptr %229, align 4, !tbaa !160
  %231 = fadd float %207, %230
  store float %231, ptr %229, align 4, !tbaa !160
  call void @mul_m4_v3(ptr noundef nonnull %7, ptr noundef nonnull %223) #6
  %232 = icmp eq ptr %222, null
  br i1 %232, label %238, label %233

233:                                              ; preds = %220
  %234 = getelementptr inbounds %struct.PTCacheEditKey, ptr %222, i64 0, i32 7
  %235 = load i16, ptr %234, align 4, !tbaa !132
  %236 = or i16 %235, 8
  store i16 %236, ptr %234, align 4, !tbaa !132
  %237 = getelementptr inbounds %struct.PTCacheEditKey, ptr %222, i64 1
  br label %238

238:                                              ; preds = %220, %233
  %239 = phi ptr [ %237, %233 ], [ null, %220 ]
  %240 = add nuw nsw i32 %221, 1
  %241 = getelementptr inbounds %struct.HairKey, ptr %223, i64 1
  %242 = load i32, ptr %215, align 8, !tbaa !128
  %243 = icmp slt i32 %240, %242
  br i1 %243, label %220, label %244, !llvm.loop !168

244:                                              ; preds = %238, %212, %120, %124
  %245 = phi ptr [ %112, %124 ], [ %112, %120 ], [ %213, %212 ], [ %239, %238 ]
  %246 = phi ptr [ %111, %124 ], [ %111, %120 ], [ %214, %212 ], [ %214, %238 ]
  %247 = add nuw nsw i32 %109, 1
  %248 = getelementptr inbounds %struct.ParticleData, ptr %110, i64 1
  %249 = load i32, ptr %82, align 8, !tbaa !120
  %250 = icmp slt i32 %247, %249
  br i1 %250, label %108, label %251, !llvm.loop !169

251:                                              ; preds = %244, %79
  call void @free_bvhtree_from_mesh(ptr noundef nonnull %4) #6
  %252 = getelementptr inbounds %struct.DerivedMesh, ptr %40, i64 0, i32 95
  %253 = load ptr, ptr %252, align 8, !tbaa !149
  call void %253(ptr noundef %40) #6
  %254 = load ptr, ptr %24, align 8, !tbaa !116
  call void @psys_free_path_cache(ptr noundef nonnull %2, ptr noundef %254) #6
  %255 = getelementptr inbounds %struct.ParticleSystem, ptr %2, i64 0, i32 25
  %256 = load i32, ptr %255, align 4, !tbaa !114
  %257 = and i32 %256, -3
  store i32 %257, ptr %255, align 4, !tbaa !114
  call void @PE_update_object(ptr noundef %0, ptr noundef %1, i32 noundef 0) #6
  br label %258

258:                                              ; preds = %3, %11, %15, %19, %251, %76
  %259 = phi i8 [ 1, %251 ], [ 0, %76 ], [ 0, %19 ], [ 0, %15 ], [ 0, %11 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #6
  ret i8 %259
}

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare ptr @mesh_get_derived_deform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @CDDM_copy(ptr noundef) local_unnamed_addr #1

declare void @DM_ensure_tessface(ptr noundef) local_unnamed_addr #1

declare ptr @bvhtree_from_mesh_faces(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @bvhtree_from_mesh_edges(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BLI_bvhtree_find_nearest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare void @interp_weights_poly_v3(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @psys_particle_dm_face_lookup(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @line_point_factor_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @free_bvhtree_from_mesh(ptr noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!47 = !{!48, !50, i64 432}
!48 = !{!"Object", !49, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !50, i64 140, !50, i64 144, !50, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !51, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !50, i64 432, !50, i64 436, !36, i64 440, !36, i64 448, !50, i64 456, !50, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !52, i64 616, !52, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !50, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !50, i64 968, !50, i64 972, !50, i64 976, !50, i64 980, !50, i64 984, !52, i64 988, !52, i64 992, !52, i64 996, !52, i64 1000, !52, i64 1004, !52, i64 1008, !52, i64 1012, !52, i64 1016, !52, i64 1020, !52, i64 1024, !52, i64 1028, !52, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !52, i64 1048, !52, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !52, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !50, i64 1144, !50, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !52, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !53, i64 1304, !53, i64 1312, !50, i64 1320, !50, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!49 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !50, i64 100, !50, i64 104, !50, i64 108, !36, i64 112}
!50 = !{!"int", !37, i64 0}
!51 = !{!"bAnimVizSettings", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !50, i64 32, !50, i64 36, !50, i64 40, !50, i64 44}
!52 = !{!"float", !37, i64 0}
!53 = !{!"long", !37, i64 0}
!54 = !{!55, !36, i64 168}
!55 = !{!"Scene", !49, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !50, i64 232, !50, i64 236, !50, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !56, i64 280, !65, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !50, i64 4380, !39, i64 4384, !66, i64 4400, !67, i64 4416, !70, i64 4600, !36, i64 4608, !71, i64 4616, !36, i64 4640, !53, i64 4648, !53, i64 4656, !58, i64 4664, !59, i64 4824, !72, i64 4888, !36, i64 4952}
!56 = !{!"RenderData", !57, i64 0, !36, i64 248, !36, i64 256, !60, i64 264, !61, i64 328, !50, i64 400, !50, i64 404, !50, i64 408, !52, i64 412, !50, i64 416, !50, i64 420, !50, i64 424, !50, i64 428, !41, i64 432, !41, i64 434, !52, i64 436, !52, i64 440, !52, i64 444, !52, i64 448, !52, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !50, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !50, i64 484, !50, i64 488, !41, i64 492, !41, i64 494, !50, i64 496, !50, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !50, i64 516, !50, i64 520, !50, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !62, i64 544, !62, i64 560, !63, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !52, i64 612, !52, i64 616, !52, i64 620, !52, i64 624, !50, i64 628, !52, i64 632, !52, i64 636, !52, i64 640, !52, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !52, i64 660, !52, i64 664, !41, i64 668, !41, i64 670, !52, i64 672, !52, i64 676, !37, i64 680, !50, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !50, i64 2520, !41, i64 2524, !41, i64 2526, !52, i64 2528, !52, i64 2532, !41, i64 2536, !41, i64 2538, !52, i64 2540, !41, i64 2544, !41, i64 2546, !50, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !52, i64 2560, !52, i64 2564, !36, i64 2568, !50, i64 2576, !52, i64 2580, !37, i64 2584, !64, i64 2616, !50, i64 3976, !50, i64 3980}
!57 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !52, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !58, i64 24, !59, i64 184}
!58 = !{!"ColorManagedViewSettings", !50, i64 0, !50, i64 4, !37, i64 8, !37, i64 72, !52, i64 136, !52, i64 140, !36, i64 144, !36, i64 152}
!59 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!60 = !{!"QuicktimeCodecSettings", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !50, i64 40, !50, i64 44, !41, i64 48, !41, i64 50, !50, i64 52, !50, i64 56, !50, i64 60}
!61 = !{!"FFMpegCodecData", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !52, i64 32, !50, i64 36, !50, i64 40, !50, i64 44, !50, i64 48, !50, i64 52, !50, i64 56, !50, i64 60, !36, i64 64}
!62 = !{!"rctf", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!63 = !{!"rcti", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!64 = !{!"BakeData", !57, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !52, i64 1280, !52, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!65 = !{!"AudioData", !50, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !50, i64 16, !41, i64 20, !41, i64 22, !52, i64 24, !52, i64 28}
!66 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!67 = !{!"GameData", !66, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !68, i64 40, !41, i64 64, !41, i64 66, !52, i64 68, !69, i64 72, !52, i64 128, !52, i64 132, !50, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180}
!68 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !52, i64 8, !52, i64 12, !36, i64 16}
!69 = !{!"RecastData", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !50, i64 40, !52, i64 44, !52, i64 48, !41, i64 52, !41, i64 54}
!70 = !{!"UnitSettings", !52, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!71 = !{!"PhysicsSettings", !37, i64 0, !50, i64 12, !50, i64 16, !50, i64 20}
!72 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!73 = !{!74, !36, i64 32}
!74 = !{!"Base", !36, i64 0, !36, i64 8, !50, i64 16, !50, i64 20, !50, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!75 = !{i64 0, i64 8, !76, i64 8, i64 8, !76, i64 16, i64 8, !76}
!76 = !{!36, !36, i64 0}
!77 = !{i64 0, i64 8, !76}
!78 = !{!79, !36, i64 16}
!79 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !39, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !37, i64 168, !37, i64 232, !52, i64 296, !52, i64 300, !52, i64 304, !50, i64 308, !50, i64 312, !50, i64 316, !50, i64 320, !50, i64 324, !50, i64 328, !50, i64 332, !50, i64 336, !41, i64 340, !41, i64 342, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 540, !41, i64 564, !41, i64 566, !36, i64 568, !36, i64 576, !39, i64 584, !36, i64 600, !36, i64 608, !50, i64 616, !50, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !52, i64 648, !52, i64 652}
!80 = !{!81, !50, i64 100}
!81 = !{!"ParticleSettings", !49, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !50, i64 152, !50, i64 156, !41, i64 160, !41, i64 162, !41, i64 164, !41, i64 166, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !50, i64 176, !50, i64 180, !41, i64 184, !41, i64 186, !41, i64 188, !41, i64 190, !41, i64 192, !41, i64 194, !41, i64 196, !41, i64 198, !41, i64 200, !41, i64 202, !41, i64 204, !41, i64 206, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !52, i64 232, !52, i64 236, !37, i64 240, !37, i64 248, !52, i64 256, !52, i64 260, !52, i64 264, !41, i64 268, !41, i64 270, !52, i64 272, !52, i64 276, !52, i64 280, !52, i64 284, !52, i64 288, !52, i64 292, !52, i64 296, !52, i64 300, !52, i64 304, !52, i64 308, !52, i64 312, !52, i64 316, !37, i64 320, !50, i64 324, !50, i64 328, !50, i64 332, !50, i64 336, !41, i64 340, !37, i64 342, !52, i64 348, !52, i64 352, !52, i64 356, !52, i64 360, !52, i64 364, !52, i64 368, !52, i64 372, !37, i64 376, !52, i64 388, !52, i64 392, !52, i64 396, !52, i64 400, !52, i64 404, !52, i64 408, !52, i64 412, !37, i64 416, !52, i64 428, !52, i64 432, !52, i64 436, !52, i64 440, !50, i64 444, !50, i64 448, !52, i64 452, !52, i64 456, !52, i64 460, !52, i64 464, !52, i64 468, !52, i64 472, !52, i64 476, !52, i64 480, !52, i64 484, !52, i64 488, !52, i64 492, !52, i64 496, !52, i64 500, !52, i64 504, !52, i64 508, !52, i64 512, !52, i64 516, !52, i64 520, !52, i64 524, !52, i64 528, !52, i64 532, !52, i64 536, !52, i64 540, !52, i64 544, !52, i64 548, !37, i64 552, !52, i64 560, !52, i64 564, !50, i64 568, !50, i64 572, !37, i64 576, !36, i64 720, !39, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !41, i64 792, !37, i64 794}
!82 = !{!83, !36, i64 16}
!83 = !{!"PointerRNA", !84, i64 0, !36, i64 8, !36, i64 16}
!84 = !{!"", !36, i64 0}
!85 = !{!83, !36, i64 0}
!86 = !{!87, !41, i64 28}
!87 = !{!"ParticleTarget", !36, i64 0, !36, i64 8, !36, i64 16, !50, i64 24, !41, i64 28, !41, i64 30, !52, i64 32, !52, i64 36}
!88 = distinct !{!88, !89, !90}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = !{!87, !50, i64 24}
!92 = distinct !{!92, !89, !90}
!93 = !{!79, !36, i64 160}
!94 = !{!87, !36, i64 8}
!95 = distinct !{!95, !89, !90}
!96 = !{!87, !36, i64 0}
!97 = distinct !{!97, !89, !90}
!98 = !{!99, !41, i64 26}
!99 = !{!"ParticleDupliWeight", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30}
!100 = !{!99, !36, i64 8}
!101 = distinct !{!101, !89, !90}
!102 = distinct !{!102, !89, !90}
!103 = distinct !{!103, !89, !90}
!104 = !{!81, !36, i64 736}
!105 = !{!99, !36, i64 0}
!106 = distinct !{!106, !89, !90}
!107 = !{!35, !36, i64 88}
!108 = !{!109, !36, i64 112}
!109 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!110 = distinct !{!110, !89, !90}
!111 = !{i8 0, i8 2}
!112 = distinct !{!112, !89, !90}
!113 = !{!109, !36, i64 120}
!114 = !{!79, !50, i64 316}
!115 = !{!81, !41, i64 160}
!116 = !{!79, !36, i64 40}
!117 = !{!118, !36, i64 24}
!118 = !{!"PTCacheEdit", !39, i64 0, !36, i64 16, !36, i64 24, !119, i64 32, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !39, i64 280, !50, i64 296, !50, i64 300, !50, i64 304, !50, i64 308, !37, i64 312, !37, i64 315}
!119 = !{!"PTCacheID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !50, i64 40, !50, i64 44, !50, i64 48, !50, i64 52, !50, i64 56, !50, i64 60, !50, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192}
!120 = !{!79, !50, i64 320}
!121 = !{!79, !36, i64 24}
!122 = !{!123, !36, i64 0}
!123 = !{!"PTCacheEditPoint", !36, i64 0, !50, i64 8, !41, i64 12}
!124 = !{!125, !36, i64 120}
!125 = !{!"ParticleSystemModifierData", !126, i64 0, !36, i64 112, !36, i64 120, !50, i64 128, !50, i64 132, !50, i64 136, !41, i64 140, !41, i64 142}
!126 = !{!"ModifierData", !36, i64 0, !36, i64 8, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!127 = !{!81, !41, i64 162}
!128 = !{!129, !50, i64 136}
!129 = !{!"ParticleData", !130, i64 0, !130, i64 56, !36, i64 112, !36, i64 120, !36, i64 128, !50, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !50, i64 152, !50, i64 156, !37, i64 160, !52, i64 176, !52, i64 180, !52, i64 184, !50, i64 188, !50, i64 192, !41, i64 196, !41, i64 198}
!130 = !{!"ParticleKey", !37, i64 0, !37, i64 12, !37, i64 24, !37, i64 40, !52, i64 52}
!131 = !{!129, !36, i64 112}
!132 = !{!133, !41, i64 52}
!133 = !{!"PTCacheEditKey", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !52, i64 44, !52, i64 48, !41, i64 52}
!134 = distinct !{!134, !89, !90}
!135 = distinct !{!135, !89, !90}
!136 = !{!137, !41, i64 6}
!137 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !52, i64 128, !52, i64 132, !50, i64 136, !50, i64 140, !50, i64 144, !50, i64 148, !36, i64 152, !36, i64 160}
!138 = !{!139, !50, i64 1024}
!139 = !{!"DerivedMesh", !140, i64 0, !140, i64 200, !140, i64 400, !140, i64 600, !140, i64 800, !50, i64 1000, !50, i64 1004, !50, i64 1008, !50, i64 1012, !50, i64 1016, !50, i64 1020, !50, i64 1024, !36, i64 1032, !36, i64 1040, !50, i64 1048, !52, i64 1052, !50, i64 1056, !50, i64 1060, !36, i64 1064, !37, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !36, i64 1176, !36, i64 1184, !36, i64 1192, !36, i64 1200, !36, i64 1208, !36, i64 1216, !36, i64 1224, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !36, i64 1464, !36, i64 1472, !36, i64 1480, !36, i64 1488, !36, i64 1496, !36, i64 1504, !36, i64 1512, !36, i64 1520, !36, i64 1528, !36, i64 1536, !36, i64 1544, !36, i64 1552, !36, i64 1560, !36, i64 1568, !36, i64 1576, !36, i64 1584, !36, i64 1592, !36, i64 1600, !36, i64 1608, !36, i64 1616, !36, i64 1624, !36, i64 1632, !36, i64 1640, !36, i64 1648, !36, i64 1656, !36, i64 1664, !36, i64 1672, !36, i64 1680}
!140 = !{!"CustomData", !36, i64 0, !37, i64 8, !50, i64 172, !50, i64 176, !50, i64 180, !36, i64 184, !36, i64 192}
!141 = !{!53, !53, i64 0}
!142 = !{!139, !36, i64 1104}
!143 = !{!139, !36, i64 1168}
!144 = distinct !{!144, !89, !90}
!145 = !{!139, !36, i64 1120}
!146 = !{!139, !36, i64 1184}
!147 = !{!139, !36, i64 1112}
!148 = !{!139, !36, i64 1176}
!149 = !{!139, !36, i64 1680}
!150 = !{!151, !50, i64 0}
!151 = !{!"BVHTreeNearest", !50, i64 0, !37, i64 4, !37, i64 16, !52, i64 28, !50, i64 32}
!152 = !{!151, !52, i64 28}
!153 = !{!154, !36, i64 0}
!154 = !{!"BVHTreeFromMesh", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !37, i64 48, !37, i64 49, !37, i64 50, !52, i64 52, !36, i64 56, !37, i64 64}
!155 = !{!154, !36, i64 8}
!156 = !{!157, !50, i64 2100}
!157 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !50, i64 2096, !50, i64 2100, !37, i64 2104, !50, i64 2108, !50, i64 2112, !37, i64 2116}
!158 = !{!159, !50, i64 0}
!159 = !{!"MFace", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !41, i64 16, !37, i64 18, !37, i64 19}
!160 = !{!52, !52, i64 0}
!161 = !{!159, !50, i64 4}
!162 = !{!159, !50, i64 8}
!163 = !{!159, !50, i64 12}
!164 = !{!129, !50, i64 152}
!165 = !{!166, !50, i64 4}
!166 = !{!"MEdge", !50, i64 0, !50, i64 4, !37, i64 8, !37, i64 9, !41, i64 10}
!167 = !{!129, !50, i64 156}
!168 = distinct !{!168, !89, !90}
!169 = distinct !{!169, !89, !90}
