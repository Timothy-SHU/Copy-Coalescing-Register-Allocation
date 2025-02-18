; ModuleID = 'blender/source/blender/blenkernel/intern/anim_sys.c'
source_filename = "blender/source/blender/blenkernel/intern/anim_sys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.StructRNA = type opaque
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.IdAdtTemplate = type { %struct.ID, ptr }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.AnimMapper = type { ptr, ptr, ptr, %struct.ListBase }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
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
%struct.KeyingSet = type { ptr, ptr, %struct.ListBase, [64 x i8], [64 x i8], [240 x i8], [64 x i8], i16, i16, i32 }
%struct.KS_Path = type { ptr, ptr, ptr, [64 x i8], i32, i16, i16, ptr, i32, i16, i16 }
%struct.NlaEvalStrip = type { ptr, ptr, ptr, ptr, i16, i16, float }
%struct.FModifier = type { ptr, ptr, ptr, [64 x i8], i16, i16, float, float, float, float, float }
%struct.NlaEvalChannel = type { ptr, ptr, %struct.PointerRNA, ptr, i32, float }
%struct.ChannelDriver = type { %struct.ListBase, [256 x i8], ptr, float, float, i32, i32 }
%struct.AnimOverride = type { ptr, ptr, ptr, i32, float }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"AnimData\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"No AnimData to set action on\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Cannot change action, as it is still being edited in NLA\00", align 1
@.str.3 = private unnamed_addr constant [99 x i8] c"Could not set action '%s' onto ID '%s', as it does not have suitably rooted paths for this purpose\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.4 = private unnamed_addr constant [92 x i8] c"ERROR: action_partition_fcurves_by_basepath(%p, %p, %p) has insufficient info to work with\0A\00", align 1
@.str.7 = private unnamed_addr constant [101 x i8] c"Argh! Source and Destination share animation! ('%s' and '%s' both use '%s') Making new empty action\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"material_slots[\22%s\22].material.texture_slots[\22%s\22].texture.%s\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"[\22%s\22]\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"KeyingSet\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Keying Set\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"KeyingSet Path\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"NlaEvalStrip\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Evaluate all animation - %f\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"bones\00", align 1
@.str.21 = private unnamed_addr constant [105 x i8] c"AnimSys Safety Check Failed: Action '%s' is not meant to be used from ID-Blocks of type %d such as '%s'\0A\00", align 1
@.str.22 = private unnamed_addr constant [72 x i8] c"Animato: Invalid array index. ID = '%s',  '%s[%d]', array length is %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"<No ID>\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"Animato: Invalid path. ID = '%s',  '%s[%d]'\0A\00", align 1
@RNA_NlaStrip = external global %struct.StructRNA, align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"NLA-Strip Eval Error: Strip '%s' has no Action\0A\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"NlaEvalChannel\00", align 1
@str = private unnamed_addr constant [41 x i8] c"ERROR: no AnimData for this pair of ID's\00", align 1
@str.30 = private unnamed_addr constant [61 x i8] c"ERROR: no source or destination ID to separate AnimData with\00", align 1
@str.31 = private unnamed_addr constant [48 x i8] c"ERROR: destination already exists in Keying Set\00", align 1
@str.32 = private unnamed_addr constant [42 x i8] c"ERROR: No ID provided for Keying Set Path\00", align 1
@str.33 = private unnamed_addr constant [54 x i8] c"ERROR: no Keying Set and/or RNA Path to add path with\00", align 1
@str.34 = private unnamed_addr constant [54 x i8] c"\09No Actions, so no animation needs to be evaluated...\00", align 1
@str.35 = private unnamed_addr constant [40 x i8] c"NLA Strip Eval: Property not animatable\00", align 1
@str.36 = private unnamed_addr constant [36 x i8] c"NLA Strip Eval: Cannot resolve path\00", align 1
@str.37 = private unnamed_addr constant [66 x i8] c"NLA Eval: Stopgap for active action on NLA Stack - no strips case\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @id_type_can_have_animdata(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !34
  switch i16 %5, label %6 [
    i16 16975, label %7
    i16 17741, label %7
    i16 16973, label %7
    i16 21827, label %7
    i16 21057, label %7
    i16 21580, label %7
    i16 17739, label %7
    i16 16720, label %7
    i16 16717, label %7
    i16 17748, label %7
    i16 21582, label %7
    i16 16716, label %7
    i16 16707, label %7
    i16 20311, label %7
    i16 21324, label %7
    i16 19283, label %7
    i16 17235, label %7
    i16 17229, label %7
    i16 21325, label %7
  ]

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %1, %6
  %8 = phi i8 [ 0, %6 ], [ 0, %1 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ]
  ret i8 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_animdata_from_id(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef %0), !range !38
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.IdAdtTemplate, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_id_add_animdata(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef %0), !range !38
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.IdAdtTemplate, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %10 = tail call ptr %9(i64 noundef 96, ptr noundef nonnull @.str) #13
  store ptr %10, ptr %5, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 11
  store float 1.000000e+00, ptr %11, align 4, !tbaa !45
  br label %12

12:                                               ; preds = %8, %4
  %13 = load ptr, ptr %5, align 8, !tbaa !39
  br label %14

14:                                               ; preds = %1, %12
  %15 = phi ptr [ %13, %12 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_animdata_set_action(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef %1), !range !38
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.IdAdtTemplate, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  br label %9

9:                                                ; preds = %3, %6
  %10 = phi ptr [ %8, %6 ], [ null, %3 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @BKE_report(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.1) #13
  br label %46

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !49
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %18, %13
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.2) #13
  br label %46

27:                                               ; preds = %22
  %28 = load ptr, ptr %10, align 8, !tbaa !52
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @id_us_min(ptr noundef nonnull %28) #13
  br label %31

31:                                               ; preds = %30, %27
  %32 = icmp eq ptr %2, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.bAction, ptr %2, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !53
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %39 = load i16, ptr %38, align 8, !tbaa !34
  %40 = sext i16 %39 to i32
  %41 = icmp eq i32 %35, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %33
  store ptr %2, ptr %10, align 8, !tbaa !52
  tail call void @id_us_plus(ptr noundef nonnull %2) #13
  br label %46

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef nonnull %44, ptr noundef nonnull %38) #13
  br label %46

45:                                               ; preds = %31
  store ptr null, ptr %10, align 8, !tbaa !52
  br label %46

46:                                               ; preds = %45, %43, %42, %26, %12
  %47 = phi i8 [ 0, %12 ], [ 0, %26 ], [ 1, %42 ], [ 0, %43 ], [ 1, %45 ]
  ret i8 %47
}

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @id_us_min(ptr noundef) local_unnamed_addr #3

declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_free_animdata(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef %0), !range !38
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.IdAdtTemplate, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !52
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !55
  %14 = add nsw i32 %13, -1
  store i32 %14, ptr %12, align 4, !tbaa !55
  br label %15

15:                                               ; preds = %11, %8
  %16 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !55
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %20, align 4, !tbaa !55
  br label %23

23:                                               ; preds = %19, %15
  %24 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 3
  tail call void @free_nladata(ptr noundef nonnull %24) #13
  %25 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 5
  tail call void @free_fcurves(ptr noundef nonnull %25) #13
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %26(ptr noundef nonnull %6) #13
  store ptr null, ptr %5, align 8, !tbaa !39
  br label %27

27:                                               ; preds = %4, %23, %1
  ret void
}

declare void @free_nladata(ptr noundef) local_unnamed_addr #3

declare void @free_fcurves(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_copy_animdata(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %6 = tail call ptr %5(ptr noundef nonnull %0) #13
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !52
  %10 = tail call ptr @BKE_action_copy(ptr noundef %9) #13
  store ptr %10, ptr %6, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = tail call ptr @BKE_action_copy(ptr noundef %12) #13
  %14 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !51
  br label %19

15:                                               ; preds = %4
  %16 = load ptr, ptr %6, align 8, !tbaa !52
  tail call void @id_us_plus(ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  tail call void @id_us_plus(ptr noundef %18) #13
  br label %19

19:                                               ; preds = %15, %8
  %20 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 3
  %21 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  tail call void @copy_nladata(ptr noundef nonnull %20, ptr noundef nonnull %21) #13
  %22 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 5
  %23 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 5
  tail call void @copy_fcurves(ptr noundef nonnull %22, ptr noundef nonnull %23) #13
  %24 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  br label %25

25:                                               ; preds = %2, %19
  %26 = phi ptr [ %6, %19 ], [ null, %2 ]
  ret ptr %26
}

declare ptr @BKE_action_copy(ptr noundef) local_unnamed_addr #3

declare void @copy_nladata(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @copy_fcurves(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_copy_animdata_id(ptr noundef %0, ptr noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i16 %9, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %7, %3
  %14 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef %0), !range !38
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.IdAdtTemplate, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  %19 = icmp eq ptr %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !52
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 6
  %25 = load i32, ptr %24, align 4, !tbaa !55
  %26 = add nsw i32 %25, -1
  store i32 %26, ptr %24, align 4, !tbaa !55
  br label %27

27:                                               ; preds = %23, %20
  %28 = getelementptr inbounds %struct.AnimData, ptr %18, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !51
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ID, ptr %29, i64 0, i32 6
  %33 = load i32, ptr %32, align 4, !tbaa !55
  %34 = add nsw i32 %33, -1
  store i32 %34, ptr %32, align 4, !tbaa !55
  br label %35

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds %struct.AnimData, ptr %18, i64 0, i32 3
  tail call void @free_nladata(ptr noundef nonnull %36) #13
  %37 = getelementptr inbounds %struct.AnimData, ptr %18, i64 0, i32 5
  tail call void @free_fcurves(ptr noundef nonnull %37) #13
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %38(ptr noundef nonnull %18) #13
  store ptr null, ptr %17, align 8, !tbaa !39
  br label %39

39:                                               ; preds = %13, %16, %35
  %40 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef %1), !range !38
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.IdAdtTemplate, ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !39
  br label %45

45:                                               ; preds = %39, %42
  %46 = phi ptr [ %44, %42 ], [ null, %39 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = tail call ptr @BKE_copy_animdata(ptr noundef nonnull %46, i8 noundef zeroext %2)
  %50 = getelementptr inbounds %struct.IdAdtTemplate, ptr %0, i64 0, i32 1
  store ptr %49, ptr %50, align 8, !tbaa !39
  br label %51

51:                                               ; preds = %45, %48, %7
  %52 = phi i8 [ 0, %7 ], [ 1, %48 ], [ 1, %45 ]
  ret i8 %52
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_copy_animdata_id_action(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef %0), !range !38
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.IdAdtTemplate, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 8, !tbaa !52
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  tail call void @id_us_min(ptr noundef nonnull %11) #13
  %14 = load ptr, ptr %8, align 8, !tbaa !52
  %15 = tail call ptr @BKE_action_copy(ptr noundef %14) #13
  store ptr %15, ptr %8, align 8, !tbaa !52
  br label %16

16:                                               ; preds = %13, %10
  %17 = getelementptr inbounds %struct.AnimData, ptr %8, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  tail call void @id_us_min(ptr noundef nonnull %18) #13
  %21 = load ptr, ptr %17, align 8, !tbaa !51
  %22 = tail call ptr @BKE_action_copy(ptr noundef %21) #13
  store ptr %22, ptr %17, align 8, !tbaa !51
  br label %23

23:                                               ; preds = %16, %20, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_animdata_make_local(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @BKE_action_make_local(ptr noundef nonnull %2) #13
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @BKE_action_make_local(ptr noundef nonnull %7) #13
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.AnimMapper, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @BKE_action_make_local(ptr noundef nonnull %16) #13
  br label %19

19:                                               ; preds = %18, %14, %10
  %20 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.NlaTrack, ptr %24, i64 0, i32 2
  tail call fastcc void @make_local_strips(ptr noundef nonnull %25)
  %26 = load ptr, ptr %24, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !59

28:                                               ; preds = %23, %19
  ret void
}

declare void @BKE_action_make_local(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @make_local_strips(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !44
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1, %19
  %5 = phi ptr [ %21, %19 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @BKE_action_make_local(ptr noundef nonnull %7) #13
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.AnimMapper, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @BKE_action_make_local(ptr noundef nonnull %16) #13
  br label %19

19:                                               ; preds = %18, %14, %10
  %20 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 2
  tail call fastcc void @make_local_strips(ptr noundef nonnull %20)
  %21 = load ptr, ptr %5, align 8, !tbaa !44
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %4, !llvm.loop !65

23:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_relink_animdata(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %3, %38
  %8 = phi ptr [ %39, %38 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.FCurve, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %16

13:                                               ; preds = %34, %16
  %14 = load ptr, ptr %17, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %16, !llvm.loop !69

16:                                               ; preds = %7, %13
  %17 = phi ptr [ %14, %13 ], [ %11, %7 ]
  %18 = getelementptr inbounds %struct.DriverVar, ptr %17, i64 0, i32 4
  %19 = load i16, ptr %18, align 8, !tbaa !70
  %20 = sext i16 %19 to i32
  %21 = icmp sgt i16 %19, 0
  br i1 %21, label %22, label %13

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.DriverVar, ptr %17, i64 0, i32 3
  br label %24

24:                                               ; preds = %22, %34
  %25 = phi i32 [ %35, %34 ], [ 0, %22 ]
  %26 = phi ptr [ %36, %34 ], [ %23, %22 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ID, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !74
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store ptr %31, ptr %26, align 8, !tbaa !72
  br label %34

34:                                               ; preds = %24, %29, %33
  %35 = add nuw nsw i32 %25, 1
  %36 = getelementptr inbounds %struct.DriverTarget, ptr %26, i64 1
  %37 = icmp eq i32 %35, %20
  br i1 %37, label %13, label %24, !llvm.loop !75

38:                                               ; preds = %13, %7
  %39 = load ptr, ptr %8, align 8, !tbaa !76
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %7, !llvm.loop !77

41:                                               ; preds = %38, %1, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @action_move_fcurves_by_basepath(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp eq ptr %2, null
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !78
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %82, label %13

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %82

15:                                               ; preds = %3
  tail call void @action_groups_clear_tempflags(ptr noundef %0) #13
  %16 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !80
  %18 = icmp eq ptr %17, null
  br i1 %18, label %62, label %19

19:                                               ; preds = %15
  %20 = icmp ne ptr %2, null
  %21 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 1
  br label %22

22:                                               ; preds = %19, %60
  %23 = phi ptr [ %17, %19 ], [ %24, %60 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !76
  %25 = getelementptr inbounds %struct.FCurve, ptr %23, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !81
  %27 = icmp ne ptr %26, null
  %28 = and i1 %20, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #14
  %31 = tail call i32 @strncmp(ptr noundef nonnull %26, ptr noundef nonnull %2, i64 noundef %30) #14
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %22, %29
  %35 = phi i8 [ 0, %22 ], [ %33, %29 ]
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %60, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.FCurve, ptr %23, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !82
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.bActionGroup, ptr %39, i64 0, i32 5
  %43 = tail call ptr @BKE_action_group_find_name(ptr noundef %1, ptr noundef nonnull %42) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load ptr, ptr %38, align 8, !tbaa !82
  %47 = getelementptr inbounds %struct.bActionGroup, ptr %46, i64 0, i32 5
  %48 = tail call ptr @action_groups_add_new(ptr noundef %1, ptr noundef nonnull %47) #13
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi ptr [ %48, %45 ], [ %43, %41 ]
  %51 = load ptr, ptr %38, align 8, !tbaa !82
  %52 = getelementptr inbounds %struct.bActionGroup, ptr %51, i64 0, i32 3
  %53 = load i32, ptr %52, align 8, !tbaa !83
  %54 = or i32 %53, 1073741824
  store i32 %54, ptr %52, align 8, !tbaa !83
  br label %55

55:                                               ; preds = %49, %37
  %56 = phi ptr [ %50, %49 ], [ null, %37 ]
  tail call void @action_groups_remove_channel(ptr noundef %0, ptr noundef nonnull %23) #13
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call void @action_groups_add_channel(ptr noundef %1, ptr noundef nonnull %56, ptr noundef nonnull %23) #13
  br label %60

59:                                               ; preds = %55
  tail call void @BLI_addtail(ptr noundef nonnull %21, ptr noundef nonnull %23) #13
  br label %60

60:                                               ; preds = %58, %59, %34
  %61 = icmp eq ptr %24, null
  br i1 %61, label %62, label %22, !llvm.loop !86

62:                                               ; preds = %60, %15
  %63 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !87
  %65 = icmp eq ptr %64, null
  br i1 %65, label %82, label %66

66:                                               ; preds = %62, %80
  %67 = phi ptr [ %68, %80 ], [ %64, %62 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !88
  %69 = getelementptr inbounds %struct.bActionGroup, ptr %67, i64 0, i32 3
  %70 = load i32, ptr %69, align 8, !tbaa !83
  %71 = and i32 %70, 1073741824
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.bActionGroup, ptr %67, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !89
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  tail call void @BLI_freelinkN(ptr noundef nonnull %63, ptr noundef nonnull %67) #13
  br label %80

78:                                               ; preds = %73
  %79 = and i32 %70, -1073741825
  store i32 %79, ptr %69, align 8, !tbaa !83
  br label %80

80:                                               ; preds = %66, %78, %77
  %81 = icmp eq ptr %68, null
  br i1 %81, label %82, label %66, !llvm.loop !90

82:                                               ; preds = %80, %62, %9, %13
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare void @action_groups_clear_tempflags(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_action_group_find_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @action_groups_add_new(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @action_groups_remove_channel(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @action_groups_add_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_animdata_separate_by_basepath(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !78
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %106, label %103

11:                                               ; preds = %3
  %12 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef %0), !range !38
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.IdAdtTemplate, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  br label %17

17:                                               ; preds = %11, %14
  %18 = phi ptr [ %16, %14 ], [ null, %11 ]
  %19 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef %1), !range !38
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.IdAdtTemplate, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %27 = tail call ptr %26(i64 noundef 96, ptr noundef nonnull @.str) #13
  store ptr %27, ptr %22, align 8, !tbaa !39
  %28 = getelementptr inbounds %struct.AnimData, ptr %27, i64 0, i32 11
  store float 1.000000e+00, ptr %28, align 4, !tbaa !45
  br label %29

29:                                               ; preds = %25, %21
  %30 = load ptr, ptr %22, align 8, !tbaa !39
  br label %31

31:                                               ; preds = %17, %29
  %32 = phi ptr [ %30, %29 ], [ null, %17 ]
  %33 = icmp eq ptr %18, null
  %34 = icmp eq ptr %32, null
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !78
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %106, label %103

40:                                               ; preds = %31
  %41 = load ptr, ptr %18, align 8, !tbaa !52
  %42 = icmp eq ptr %41, null
  br i1 %42, label %71, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %32, align 8, !tbaa !52
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = icmp eq ptr %44, %41
  br i1 %47, label %48, label %60

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %50 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %51 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 4
  %52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %49, ptr noundef nonnull %50, ptr noundef nonnull %51)
  %53 = load ptr, ptr %32, align 8, !tbaa !52
  tail call void @id_us_min(ptr noundef %53) #13
  %54 = load ptr, ptr %32, align 8, !tbaa !52
  br label %55

55:                                               ; preds = %43, %48
  %56 = phi ptr [ %54, %48 ], [ %41, %43 ]
  %57 = load ptr, ptr @G, align 8, !tbaa !91
  %58 = getelementptr inbounds %struct.ID, ptr %56, i64 0, i32 4, i64 2
  %59 = tail call ptr @add_empty_action(ptr noundef %57, ptr noundef nonnull %58) #13
  store ptr %59, ptr %32, align 8, !tbaa !52
  br label %60

60:                                               ; preds = %55, %46
  %61 = load ptr, ptr %2, align 8, !tbaa !44
  %62 = icmp eq ptr %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %60, %63
  %64 = phi ptr [ %69, %63 ], [ %61, %60 ]
  %65 = getelementptr inbounds %struct.LinkData, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !92
  %67 = load ptr, ptr %18, align 8, !tbaa !52
  %68 = load ptr, ptr %32, align 8, !tbaa !52
  tail call void @action_move_fcurves_by_basepath(ptr noundef %67, ptr noundef %68, ptr noundef %66)
  %69 = load ptr, ptr %64, align 8, !tbaa !44
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %63, !llvm.loop !94

71:                                               ; preds = %63, %60, %40
  %72 = getelementptr inbounds %struct.AnimData, ptr %18, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !66
  %74 = icmp eq ptr %73, null
  br i1 %74, label %106, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.AnimData, ptr %32, i64 0, i32 5
  br label %77

77:                                               ; preds = %75, %101
  %78 = phi ptr [ %73, %75 ], [ %79, %101 ]
  %79 = load ptr, ptr %78, align 8, !tbaa !76
  %80 = getelementptr inbounds %struct.FCurve, ptr %78, i64 0, i32 12
  br label %81

81:                                               ; preds = %97, %77
  %82 = phi ptr [ %2, %77 ], [ %83, %97 ]
  %83 = load ptr, ptr %82, align 8, !tbaa !44
  %84 = icmp eq ptr %83, null
  br i1 %84, label %101, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.LinkData, ptr %83, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !92
  %88 = load ptr, ptr %80, align 8, !tbaa !81
  %89 = icmp ne ptr %88, null
  %90 = icmp ne ptr %87, null
  %91 = and i1 %90, %89
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %87) #14
  %94 = tail call i32 @strncmp(ptr noundef nonnull %88, ptr noundef nonnull %87, i64 noundef %93) #14
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i8
  br label %97

97:                                               ; preds = %85, %92
  %98 = phi i8 [ 0, %85 ], [ %96, %92 ]
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %81, label %100

100:                                              ; preds = %97
  tail call void @BLI_remlink(ptr noundef nonnull %72, ptr noundef nonnull %78) #13
  tail call void @BLI_addtail(ptr noundef nonnull %76, ptr noundef nonnull %78) #13
  br label %101, !llvm.loop !95

101:                                              ; preds = %81, %100
  %102 = icmp eq ptr %79, null
  br i1 %102, label %106, label %77, !llvm.loop !96

103:                                              ; preds = %36, %7
  %104 = phi ptr [ @str.30, %7 ], [ @str, %36 ]
  %105 = tail call i32 @puts(ptr nonnull dereferenceable(1) %104)
  br label %106

106:                                              ; preds = %101, %103, %71, %36, %7
  ret void
}

declare ptr @add_empty_action(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_animdata_driver_path_hack(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca [128 x i8], align 16
  %6 = alloca [128 x i8], align 16
  %7 = load ptr, ptr %1, align 8, !tbaa !97
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %9 = icmp eq ptr %3, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %1, ptr noundef %2) #13
  br label %12

12:                                               ; preds = %4, %10
  %13 = phi ptr [ %11, %10 ], [ %3, %4 ]
  %14 = icmp eq ptr %8, null
  br i1 %14, label %53, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 8
  %17 = load i8, ptr %16, align 8, !tbaa !100
  %18 = icmp eq i8 %17, 4
  br i1 %18, label %19, label %53

19:                                               ; preds = %15
  %20 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  %21 = icmp ne ptr %20, null
  %22 = icmp ne ptr %7, null
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %53

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4
  %26 = load i16, ptr %25, align 8, !tbaa !34
  %27 = icmp eq i16 %26, 17748
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 32
  %30 = load i32, ptr %29, align 4, !tbaa !103
  %31 = trunc i32 %30 to i16
  %32 = tail call ptr @give_current_material(ptr noundef nonnull %20, i16 noundef signext %31) #13
  %33 = tail call ptr @give_current_material_texture(ptr noundef %32) #13
  %34 = icmp eq ptr %33, %7
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #13
  %36 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 4, i64 2
  %37 = call i64 @BLI_strescape(ptr noundef nonnull %5, ptr noundef nonnull %36, i64 noundef 128) #13
  %38 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 4, i64 2
  %39 = call i64 @BLI_strescape(ptr noundef nonnull %6, ptr noundef nonnull %38, i64 noundef 128) #13
  %40 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.8, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %13) #13
  %41 = icmp eq ptr %13, %3
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %43(ptr noundef %13) #13
  br label %44

44:                                               ; preds = %42, %35
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #13
  br label %45

45:                                               ; preds = %28, %44, %24
  %46 = phi ptr [ %13, %24 ], [ %40, %44 ], [ %13, %28 ]
  %47 = icmp eq ptr %13, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !107
  %51 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !108
  call void @RNA_pointer_create(ptr noundef nonnull %20, ptr noundef %50, ptr noundef %52, ptr noundef nonnull %1) #13
  br label %53

53:                                               ; preds = %19, %48, %45, %15, %12
  %54 = phi ptr [ %13, %15 ], [ %13, %12 ], [ %46, %48 ], [ %46, %45 ], [ %13, %19 ]
  ret ptr %54
}

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

declare ptr @RNA_path_from_ID_to_property(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #3

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare ptr @give_current_material_texture(ptr noundef) local_unnamed_addr #3

declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #3

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_action_fix_paths_rename(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) local_unnamed_addr #2 {
  %9 = icmp eq ptr %0, null
  %10 = icmp eq ptr %1, null
  %11 = or i1 %9, %10
  br i1 %11, label %62, label %12

12:                                               ; preds = %8
  %13 = icmp ne ptr %3, null
  %14 = icmp ne ptr %4, null
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #14
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %19 = shl i64 %17, 1
  %20 = or disjoint i64 %19, 1
  %21 = alloca i8, i64 %20, align 16
  %22 = shl i64 %18, 1
  %23 = or disjoint i64 %22, 1
  %24 = alloca i8, i64 %23, align 16
  %25 = call i64 @BLI_strescape(ptr noundef nonnull %21, ptr noundef nonnull %3, i64 noundef %20) #13
  %26 = call i64 @BLI_strescape(ptr noundef nonnull %24, ptr noundef nonnull %4, i64 noundef %23) #13
  %27 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.9, ptr noundef nonnull %21) #13
  %28 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.9, ptr noundef nonnull %24) #13
  br label %32

29:                                               ; preds = %12
  %30 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.10, i32 noundef %5) #13
  %31 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.10, i32 noundef %6) #13
  br label %32

32:                                               ; preds = %29, %16
  %33 = phi ptr [ %28, %16 ], [ %31, %29 ]
  %34 = phi ptr [ %27, %16 ], [ %30, %29 ]
  %35 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  %37 = icmp eq ptr %36, null
  br i1 %37, label %59, label %38

38:                                               ; preds = %32, %56
  %39 = phi ptr [ %57, %56 ], [ %36, %32 ]
  %40 = getelementptr inbounds %struct.FCurve, ptr %39, i64 0, i32 12
  %41 = load ptr, ptr %40, align 8, !tbaa !81
  %42 = icmp eq ptr %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %38
  %44 = call fastcc ptr @rna_path_rename_fix(ptr noundef %0, ptr noundef %2, ptr noundef %34, ptr noundef %33, ptr noundef nonnull %41, i8 noundef zeroext %7)
  store ptr %44, ptr %40, align 8, !tbaa !81
  %45 = icmp eq ptr %44, %41
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.FCurve, ptr %39, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !82
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.bActionGroup, ptr %48, i64 0, i32 5
  %52 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %51) #14
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call ptr @BLI_strncpy(ptr noundef nonnull %51, ptr noundef %4, i64 noundef 64) #13
  br label %56

56:                                               ; preds = %54, %50, %46, %43, %38
  %57 = load ptr, ptr %39, align 8, !tbaa !44
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %38, !llvm.loop !109

59:                                               ; preds = %56, %32
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %60(ptr noundef %34) #13
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %61(ptr noundef %33) #13
  br label %62

62:                                               ; preds = %8, %59
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @BKE_animdata_fix_paths_rename(ptr noundef %0, ptr noundef readonly %1, ptr noundef readnone %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i8 noundef zeroext %8) local_unnamed_addr #2 {
  %10 = icmp eq ptr %0, null
  %11 = icmp eq ptr %1, null
  %12 = or i1 %10, %11
  br i1 %12, label %178, label %13

13:                                               ; preds = %9
  %14 = icmp ne ptr %4, null
  %15 = icmp ne ptr %5, null
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #14
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #14
  %20 = shl i64 %18, 1
  %21 = or disjoint i64 %20, 1
  %22 = alloca i8, i64 %21, align 16
  %23 = shl i64 %19, 1
  %24 = or disjoint i64 %23, 1
  %25 = alloca i8, i64 %24, align 16
  %26 = call i64 @BLI_strescape(ptr noundef nonnull %22, ptr noundef nonnull %4, i64 noundef %21) #13
  %27 = call i64 @BLI_strescape(ptr noundef nonnull %25, ptr noundef nonnull %5, i64 noundef %24) #13
  %28 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.9, ptr noundef nonnull %22) #13
  %29 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.9, ptr noundef nonnull %25) #13
  br label %33

30:                                               ; preds = %13
  %31 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.10, i32 noundef %6) #13
  %32 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.10, i32 noundef %7) #13
  br label %33

33:                                               ; preds = %30, %17
  %34 = phi ptr [ %29, %17 ], [ %32, %30 ]
  %35 = phi ptr [ %28, %17 ], [ %31, %30 ]
  %36 = load ptr, ptr %1, align 8, !tbaa !52
  %37 = icmp eq ptr %36, null
  br i1 %37, label %63, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.bAction, ptr %36, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  %41 = icmp eq ptr %40, null
  br i1 %41, label %63, label %42

42:                                               ; preds = %38, %60
  %43 = phi ptr [ %61, %60 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.FCurve, ptr %43, i64 0, i32 12
  %45 = load ptr, ptr %44, align 8, !tbaa !81
  %46 = icmp eq ptr %45, null
  br i1 %46, label %60, label %47

47:                                               ; preds = %42
  %48 = call fastcc ptr @rna_path_rename_fix(ptr noundef %0, ptr noundef %3, ptr noundef %35, ptr noundef %34, ptr noundef nonnull %45, i8 noundef zeroext %8)
  store ptr %48, ptr %44, align 8, !tbaa !81
  %49 = icmp eq ptr %48, %45
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.FCurve, ptr %43, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !82
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bActionGroup, ptr %52, i64 0, i32 5
  %56 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %55) #14
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call ptr @BLI_strncpy(ptr noundef nonnull %55, ptr noundef %5, i64 noundef 64) #13
  br label %60

60:                                               ; preds = %58, %54, %50, %47, %42
  %61 = load ptr, ptr %43, align 8, !tbaa !44
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %42, !llvm.loop !109

63:                                               ; preds = %60, %38, %33
  %64 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !51
  %66 = icmp eq ptr %65, null
  br i1 %66, label %92, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.bAction, ptr %65, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !44
  %70 = icmp eq ptr %69, null
  br i1 %70, label %92, label %71

71:                                               ; preds = %67, %89
  %72 = phi ptr [ %90, %89 ], [ %69, %67 ]
  %73 = getelementptr inbounds %struct.FCurve, ptr %72, i64 0, i32 12
  %74 = load ptr, ptr %73, align 8, !tbaa !81
  %75 = icmp eq ptr %74, null
  br i1 %75, label %89, label %76

76:                                               ; preds = %71
  %77 = call fastcc ptr @rna_path_rename_fix(ptr noundef %0, ptr noundef %3, ptr noundef %35, ptr noundef %34, ptr noundef nonnull %74, i8 noundef zeroext %8)
  store ptr %77, ptr %73, align 8, !tbaa !81
  %78 = icmp eq ptr %77, %74
  br i1 %78, label %89, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.FCurve, ptr %72, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !82
  %82 = icmp eq ptr %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.bActionGroup, ptr %81, i64 0, i32 5
  %85 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %84) #14
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call ptr @BLI_strncpy(ptr noundef nonnull %84, ptr noundef %5, i64 noundef 64) #13
  br label %89

89:                                               ; preds = %87, %83, %79, %76, %71
  %90 = load ptr, ptr %72, align 8, !tbaa !44
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %71, !llvm.loop !109

92:                                               ; preds = %89, %67, %63
  %93 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 5
  %94 = load ptr, ptr %93, align 8, !tbaa !44
  %95 = icmp eq ptr %94, null
  br i1 %95, label %166, label %96

96:                                               ; preds = %92
  %97 = icmp eq ptr %2, null
  br label %98

98:                                               ; preds = %96, %163
  %99 = phi ptr [ %94, %96 ], [ %164, %163 ]
  %100 = getelementptr inbounds %struct.FCurve, ptr %99, i64 0, i32 12
  %101 = load ptr, ptr %100, align 8, !tbaa !81
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = call fastcc ptr @rna_path_rename_fix(ptr noundef %0, ptr noundef %3, ptr noundef %35, ptr noundef %34, ptr noundef nonnull %101, i8 noundef zeroext %8)
  store ptr %104, ptr %100, align 8, !tbaa !81
  br label %105

105:                                              ; preds = %103, %98
  %106 = getelementptr inbounds %struct.FCurve, ptr %99, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !67
  %108 = icmp eq ptr %107, null
  br i1 %108, label %163, label %109

109:                                              ; preds = %105
  %110 = load ptr, ptr %107, align 8, !tbaa !44
  %111 = icmp eq ptr %110, null
  br i1 %111, label %163, label %115

112:                                              ; preds = %157, %115
  %113 = load ptr, ptr %116, align 8, !tbaa !44
  %114 = icmp eq ptr %113, null
  br i1 %114, label %163, label %115, !llvm.loop !110

115:                                              ; preds = %109, %112
  %116 = phi ptr [ %113, %112 ], [ %110, %109 ]
  %117 = getelementptr inbounds %struct.DriverVar, ptr %116, i64 0, i32 4
  %118 = load i16, ptr %117, align 8, !tbaa !70
  %119 = icmp sgt i16 %118, 0
  br i1 %119, label %120, label %112

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.DriverVar, ptr %116, i64 0, i32 3
  br label %122

122:                                              ; preds = %120, %157
  %123 = phi i32 [ %158, %157 ], [ 0, %120 ]
  %124 = phi ptr [ %159, %157 ], [ %121, %120 ]
  %125 = getelementptr inbounds %struct.DriverTarget, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !111
  %127 = icmp eq ptr %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %122
  %129 = load ptr, ptr %124, align 8, !tbaa !72
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  %132 = call fastcc ptr @rna_path_rename_fix(ptr noundef nonnull %129, ptr noundef %3, ptr noundef %35, ptr noundef %34, ptr noundef nonnull %126, i8 noundef zeroext %8)
  store ptr %132, ptr %125, align 8, !tbaa !111
  br label %133

133:                                              ; preds = %131, %128, %122
  %134 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.20) #14
  %135 = icmp eq ptr %134, null
  br i1 %135, label %157, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr %124, align 8, !tbaa !72
  %138 = icmp eq ptr %137, null
  br i1 %138, label %157, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.ID, ptr %137, i64 0, i32 4
  %141 = load i16, ptr %140, align 8, !tbaa !34
  %142 = icmp eq i16 %141, 16975
  br i1 %142, label %143, label %157

143:                                              ; preds = %139
  br i1 %97, label %148, label %144

144:                                              ; preds = %143
  %145 = getelementptr inbounds %struct.Object, ptr %137, i64 0, i32 19
  %146 = load ptr, ptr %145, align 8, !tbaa !112
  %147 = icmp eq ptr %146, %2
  br i1 %147, label %148, label %157

148:                                              ; preds = %144, %143
  %149 = getelementptr inbounds %struct.DriverTarget, ptr %124, i64 0, i32 2
  %150 = load i8, ptr %149, align 8, !tbaa !113
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %148
  %153 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %149) #14
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = call ptr @BLI_strncpy(ptr noundef nonnull %149, ptr noundef %5, i64 noundef 32) #13
  br label %157

157:                                              ; preds = %155, %152, %148, %144, %139, %136, %133
  %158 = add nuw nsw i32 %123, 1
  %159 = getelementptr inbounds %struct.DriverTarget, ptr %124, i64 1
  %160 = load i16, ptr %117, align 8, !tbaa !70
  %161 = sext i16 %160 to i32
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %122, label %112, !llvm.loop !114

163:                                              ; preds = %112, %109, %105
  %164 = load ptr, ptr %99, align 8, !tbaa !44
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %98, !llvm.loop !115

166:                                              ; preds = %163, %92
  %167 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !44
  %169 = icmp eq ptr %168, null
  br i1 %169, label %175, label %170

170:                                              ; preds = %166, %170
  %171 = phi ptr [ %173, %170 ], [ %168, %166 ]
  %172 = getelementptr inbounds %struct.NlaTrack, ptr %171, i64 0, i32 2
  call fastcc void @nlastrips_path_rename_fix(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %35, ptr noundef %34, ptr noundef nonnull %172, i8 noundef zeroext %8)
  %173 = load ptr, ptr %171, align 8, !tbaa !44
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %170, !llvm.loop !116

175:                                              ; preds = %170, %166
  %176 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %176(ptr noundef %35) #13
  %177 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %177(ptr noundef %34) #13
  br label %178

178:                                              ; preds = %9, %175
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nlastrips_path_rename_fix(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr nocapture noundef readonly %6, i8 noundef zeroext %7) unnamed_addr #2 {
  %9 = load ptr, ptr %6, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %45, label %11

11:                                               ; preds = %8, %41
  %12 = phi ptr [ %43, %41 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.NlaStrip, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !62
  %15 = icmp eq ptr %14, null
  br i1 %15, label %41, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bAction, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %16, %38
  %21 = phi ptr [ %39, %38 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.FCurve, ptr %21, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !81
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = tail call fastcc ptr @rna_path_rename_fix(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %23, i8 noundef zeroext %7)
  store ptr %26, ptr %22, align 8, !tbaa !81
  %27 = icmp eq ptr %26, %23
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.FCurve, ptr %21, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !82
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.bActionGroup, ptr %30, i64 0, i32 5
  %34 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %33) #14
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = tail call ptr @BLI_strncpy(ptr noundef nonnull %33, ptr noundef %3, i64 noundef 64) #13
  br label %38

38:                                               ; preds = %36, %32, %28, %25, %20
  %39 = load ptr, ptr %21, align 8, !tbaa !44
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %20, !llvm.loop !109

41:                                               ; preds = %38, %16, %11
  %42 = getelementptr inbounds %struct.NlaStrip, ptr %12, i64 0, i32 2
  tail call fastcc void @nlastrips_path_rename_fix(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %42, i8 noundef zeroext %7)
  %43 = load ptr, ptr %12, align 8, !tbaa !44
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %11, !llvm.loop !117

45:                                               ; preds = %41, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_animdata_fix_paths_remove(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef %0), !range !38
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %82, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.IdAdtTemplate, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = icmp eq ptr %7, null
  br i1 %8, label %82, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.bAction, ptr %10, i64 0, i32 1
  %14 = icmp eq ptr %1, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %13, align 8, !tbaa !89
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %15, %29
  %19 = phi ptr [ %20, %29 ], [ %16, %15 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = getelementptr inbounds %struct.FCurve, ptr %19, i64 0, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %26 = tail call i32 @strncmp(ptr noundef nonnull %22, ptr noundef nonnull %1, i64 noundef %25) #14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void @BLI_remlink(ptr noundef nonnull %13, ptr noundef nonnull %19) #13
  tail call void @free_fcurve(ptr noundef nonnull %19) #13
  br label %29

29:                                               ; preds = %28, %24, %18
  %30 = icmp eq ptr %20, null
  br i1 %30, label %31, label %18, !llvm.loop !118

31:                                               ; preds = %29, %15, %12, %9
  %32 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !51
  %34 = icmp eq ptr %33, null
  br i1 %34, label %54, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bAction, ptr %33, i64 0, i32 1
  %37 = icmp eq ptr %1, null
  br i1 %37, label %54, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %36, align 8, !tbaa !89
  %40 = icmp eq ptr %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %38, %52
  %42 = phi ptr [ %43, %52 ], [ %39, %38 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !76
  %44 = getelementptr inbounds %struct.FCurve, ptr %42, i64 0, i32 12
  %45 = load ptr, ptr %44, align 8, !tbaa !81
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %49 = tail call i32 @strncmp(ptr noundef nonnull %45, ptr noundef nonnull %1, i64 noundef %48) #14
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  tail call void @BLI_remlink(ptr noundef nonnull %36, ptr noundef nonnull %42) #13
  tail call void @free_fcurve(ptr noundef nonnull %42) #13
  br label %52

52:                                               ; preds = %51, %47, %41
  %53 = icmp eq ptr %43, null
  br i1 %53, label %54, label %41, !llvm.loop !118

54:                                               ; preds = %52, %38, %35, %31
  %55 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 5
  %56 = icmp eq ptr %1, null
  br i1 %56, label %73, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %55, align 8, !tbaa !89
  %59 = icmp eq ptr %58, null
  br i1 %59, label %73, label %60

60:                                               ; preds = %57, %71
  %61 = phi ptr [ %62, %71 ], [ %58, %57 ]
  %62 = load ptr, ptr %61, align 8, !tbaa !76
  %63 = getelementptr inbounds %struct.FCurve, ptr %61, i64 0, i32 12
  %64 = load ptr, ptr %63, align 8, !tbaa !81
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %68 = tail call i32 @strncmp(ptr noundef nonnull %64, ptr noundef nonnull %1, i64 noundef %67) #14
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  tail call void @BLI_remlink(ptr noundef nonnull %55, ptr noundef nonnull %61) #13
  tail call void @free_fcurve(ptr noundef nonnull %61) #13
  br label %71

71:                                               ; preds = %70, %66, %60
  %72 = icmp eq ptr %62, null
  br i1 %72, label %73, label %60, !llvm.loop !118

73:                                               ; preds = %71, %54, %57
  %74 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !44
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %73, %77
  %78 = phi ptr [ %80, %77 ], [ %75, %73 ]
  %79 = getelementptr inbounds %struct.NlaTrack, ptr %78, i64 0, i32 2
  tail call fastcc void @nlastrips_path_remove_fix(ptr noundef %1, ptr noundef nonnull %79)
  %80 = load ptr, ptr %78, align 8, !tbaa !44
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %77, !llvm.loop !119

82:                                               ; preds = %77, %73, %5, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nlastrips_path_remove_fix(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br label %7

7:                                                ; preds = %5, %30
  %8 = phi ptr [ %3, %5 ], [ %32, %30 ]
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.bAction, ptr %10, i64 0, i32 1
  br i1 %6, label %30, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %13, align 8, !tbaa !89
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %14, %28
  %18 = phi ptr [ %19, %28 ], [ %15, %14 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !81
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  %25 = tail call i32 @strncmp(ptr noundef nonnull %21, ptr noundef nonnull %0, i64 noundef %24) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void @BLI_remlink(ptr noundef nonnull %13, ptr noundef nonnull %18) #13
  tail call void @free_fcurve(ptr noundef nonnull %18) #13
  br label %28

28:                                               ; preds = %27, %23, %17
  %29 = icmp eq ptr %19, null
  br i1 %29, label %30, label %17, !llvm.loop !118

30:                                               ; preds = %28, %14, %12, %7
  %31 = getelementptr inbounds %struct.NlaStrip, ptr %8, i64 0, i32 2
  tail call fastcc void @nlastrips_path_remove_fix(ptr noundef %0, ptr noundef nonnull %31)
  %32 = load ptr, ptr %8, align 8, !tbaa !44
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %7, !llvm.loop !120

34:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_animdata_main_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 35
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %3, %18
  %8 = phi ptr [ %19, %18 ], [ %5, %3 ]
  %9 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %8), !range !38
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.IdAdtTemplate, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void %1(ptr noundef nonnull %8, ptr noundef nonnull %15, ptr noundef %2) #13
  br label %18

18:                                               ; preds = %17, %14
  %19 = load ptr, ptr %8, align 8, !tbaa !44
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %7, !llvm.loop !121

21:                                               ; preds = %18, %3
  %22 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = icmp eq ptr %23, null
  br i1 %24, label %53, label %25

25:                                               ; preds = %21, %50
  %26 = phi ptr [ %51, %50 ], [ %23, %21 ]
  %27 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %26), !range !38
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.IdAdtTemplate, ptr %26, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !39
  br label %32

32:                                               ; preds = %25, %29
  %33 = phi ptr [ %31, %29 ], [ null, %25 ]
  %34 = getelementptr inbounds %struct.Tex, ptr %26, i64 0, i32 52
  %35 = load ptr, ptr %34, align 8, !tbaa !122
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %35), !range !38
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.IdAdtTemplate, ptr %35, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !39
  br label %43

43:                                               ; preds = %37, %40
  %44 = phi ptr [ %42, %40 ], [ null, %37 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void %1(ptr noundef nonnull %26, ptr noundef nonnull %44, ptr noundef %2) #13
  br label %47

47:                                               ; preds = %43, %46, %32
  %48 = icmp eq ptr %33, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  tail call void %1(ptr noundef nonnull %26, ptr noundef nonnull %33, ptr noundef %2) #13
  br label %50

50:                                               ; preds = %49, %47
  %51 = load ptr, ptr %26, align 8, !tbaa !44
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %25, !llvm.loop !125

53:                                               ; preds = %50, %21
  %54 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 21
  %55 = load ptr, ptr %54, align 8, !tbaa !44
  %56 = icmp eq ptr %55, null
  br i1 %56, label %85, label %57

57:                                               ; preds = %53, %82
  %58 = phi ptr [ %83, %82 ], [ %55, %53 ]
  %59 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %58), !range !38
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.IdAdtTemplate, ptr %58, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !39
  br label %64

64:                                               ; preds = %57, %61
  %65 = phi ptr [ %63, %61 ], [ null, %57 ]
  %66 = getelementptr inbounds %struct.Lamp, ptr %58, i64 0, i32 74
  %67 = load ptr, ptr %66, align 8, !tbaa !126
  %68 = icmp eq ptr %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %67), !range !38
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.IdAdtTemplate, ptr %67, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !39
  br label %75

75:                                               ; preds = %69, %72
  %76 = phi ptr [ %74, %72 ], [ null, %69 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  tail call void %1(ptr noundef nonnull %58, ptr noundef nonnull %76, ptr noundef %2) #13
  br label %79

79:                                               ; preds = %75, %78, %64
  %80 = icmp eq ptr %65, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %79
  tail call void %1(ptr noundef nonnull %58, ptr noundef nonnull %65, ptr noundef %2) #13
  br label %82

82:                                               ; preds = %81, %79
  %83 = load ptr, ptr %58, align 8, !tbaa !44
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %57, !llvm.loop !128

85:                                               ; preds = %82, %53
  %86 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %87 = load ptr, ptr %86, align 8, !tbaa !44
  %88 = icmp eq ptr %87, null
  br i1 %88, label %117, label %89

89:                                               ; preds = %85, %114
  %90 = phi ptr [ %115, %114 ], [ %87, %85 ]
  %91 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %90), !range !38
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.IdAdtTemplate, ptr %90, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !39
  br label %96

96:                                               ; preds = %89, %93
  %97 = phi ptr [ %95, %93 ], [ null, %89 ]
  %98 = getelementptr inbounds %struct.Material, ptr %90, i64 0, i32 103
  %99 = load ptr, ptr %98, align 8, !tbaa !129
  %100 = icmp eq ptr %99, null
  br i1 %100, label %111, label %101

101:                                              ; preds = %96
  %102 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %99), !range !38
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.IdAdtTemplate, ptr %99, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !39
  br label %107

107:                                              ; preds = %101, %104
  %108 = phi ptr [ %106, %104 ], [ null, %101 ]
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  tail call void %1(ptr noundef nonnull %90, ptr noundef nonnull %108, ptr noundef %2) #13
  br label %111

111:                                              ; preds = %107, %110, %96
  %112 = icmp eq ptr %97, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %111
  tail call void %1(ptr noundef nonnull %90, ptr noundef nonnull %97, ptr noundef %2) #13
  br label %114

114:                                              ; preds = %113, %111
  %115 = load ptr, ptr %90, align 8, !tbaa !44
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %89, !llvm.loop !133

117:                                              ; preds = %114, %85
  %118 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 22
  %119 = load ptr, ptr %118, align 8, !tbaa !44
  %120 = icmp eq ptr %119, null
  br i1 %120, label %135, label %121

121:                                              ; preds = %117, %132
  %122 = phi ptr [ %133, %132 ], [ %119, %117 ]
  %123 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %122), !range !38
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.IdAdtTemplate, ptr %122, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !39
  br label %128

128:                                              ; preds = %121, %125
  %129 = phi ptr [ %127, %125 ], [ null, %121 ]
  %130 = icmp eq ptr %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  tail call void %1(ptr noundef nonnull %122, ptr noundef nonnull %129, ptr noundef %2) #13
  br label %132

132:                                              ; preds = %131, %128
  %133 = load ptr, ptr %122, align 8, !tbaa !44
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %121, !llvm.loop !134

135:                                              ; preds = %132, %117
  %136 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 24
  %137 = load ptr, ptr %136, align 8, !tbaa !44
  %138 = icmp eq ptr %137, null
  br i1 %138, label %153, label %139

139:                                              ; preds = %135, %150
  %140 = phi ptr [ %151, %150 ], [ %137, %135 ]
  %141 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %140), !range !38
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.IdAdtTemplate, ptr %140, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !39
  br label %146

146:                                              ; preds = %139, %143
  %147 = phi ptr [ %145, %143 ], [ null, %139 ]
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  tail call void %1(ptr noundef nonnull %140, ptr noundef nonnull %147, ptr noundef %2) #13
  br label %150

150:                                              ; preds = %149, %146
  %151 = load ptr, ptr %140, align 8, !tbaa !44
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %139, !llvm.loop !135

153:                                              ; preds = %150, %135
  %154 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 16
  %155 = load ptr, ptr %154, align 8, !tbaa !44
  %156 = icmp eq ptr %155, null
  br i1 %156, label %171, label %157

157:                                              ; preds = %153, %168
  %158 = phi ptr [ %169, %168 ], [ %155, %153 ]
  %159 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %158), !range !38
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.IdAdtTemplate, ptr %158, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !39
  br label %164

164:                                              ; preds = %157, %161
  %165 = phi ptr [ %163, %161 ], [ null, %157 ]
  %166 = icmp eq ptr %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %164
  tail call void %1(ptr noundef nonnull %158, ptr noundef nonnull %165, ptr noundef %2) #13
  br label %168

168:                                              ; preds = %167, %164
  %169 = load ptr, ptr %158, align 8, !tbaa !44
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %157, !llvm.loop !136

171:                                              ; preds = %168, %153
  %172 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 15
  %173 = load ptr, ptr %172, align 8, !tbaa !44
  %174 = icmp eq ptr %173, null
  br i1 %174, label %189, label %175

175:                                              ; preds = %171, %186
  %176 = phi ptr [ %187, %186 ], [ %173, %171 ]
  %177 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %176), !range !38
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.IdAdtTemplate, ptr %176, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !39
  br label %182

182:                                              ; preds = %175, %179
  %183 = phi ptr [ %181, %179 ], [ null, %175 ]
  %184 = icmp eq ptr %183, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %182
  tail call void %1(ptr noundef nonnull %176, ptr noundef nonnull %183, ptr noundef %2) #13
  br label %186

186:                                              ; preds = %185, %182
  %187 = load ptr, ptr %176, align 8, !tbaa !44
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %175, !llvm.loop !137

189:                                              ; preds = %186, %171
  %190 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 33
  %191 = load ptr, ptr %190, align 8, !tbaa !44
  %192 = icmp eq ptr %191, null
  br i1 %192, label %207, label %193

193:                                              ; preds = %189, %204
  %194 = phi ptr [ %205, %204 ], [ %191, %189 ]
  %195 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %194), !range !38
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.IdAdtTemplate, ptr %194, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !39
  br label %200

200:                                              ; preds = %193, %197
  %201 = phi ptr [ %199, %197 ], [ null, %193 ]
  %202 = icmp eq ptr %201, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %200
  tail call void %1(ptr noundef nonnull %194, ptr noundef nonnull %201, ptr noundef %2) #13
  br label %204

204:                                              ; preds = %203, %200
  %205 = load ptr, ptr %194, align 8, !tbaa !44
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %193, !llvm.loop !138

207:                                              ; preds = %204, %189
  %208 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 20
  %209 = load ptr, ptr %208, align 8, !tbaa !44
  %210 = icmp eq ptr %209, null
  br i1 %210, label %225, label %211

211:                                              ; preds = %207, %222
  %212 = phi ptr [ %223, %222 ], [ %209, %207 ]
  %213 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %212), !range !38
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.IdAdtTemplate, ptr %212, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !39
  br label %218

218:                                              ; preds = %211, %215
  %219 = phi ptr [ %217, %215 ], [ null, %211 ]
  %220 = icmp eq ptr %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %218
  tail call void %1(ptr noundef nonnull %212, ptr noundef nonnull %219, ptr noundef %2) #13
  br label %222

222:                                              ; preds = %221, %218
  %223 = load ptr, ptr %212, align 8, !tbaa !44
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %211, !llvm.loop !139

225:                                              ; preds = %222, %207
  %226 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 14
  %227 = load ptr, ptr %226, align 8, !tbaa !44
  %228 = icmp eq ptr %227, null
  br i1 %228, label %243, label %229

229:                                              ; preds = %225, %240
  %230 = phi ptr [ %241, %240 ], [ %227, %225 ]
  %231 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %230), !range !38
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.IdAdtTemplate, ptr %230, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !39
  br label %236

236:                                              ; preds = %229, %233
  %237 = phi ptr [ %235, %233 ], [ null, %229 ]
  %238 = icmp eq ptr %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %236
  tail call void %1(ptr noundef nonnull %230, ptr noundef nonnull %237, ptr noundef %2) #13
  br label %240

240:                                              ; preds = %239, %236
  %241 = load ptr, ptr %230, align 8, !tbaa !44
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %229, !llvm.loop !140

243:                                              ; preds = %240, %225
  %244 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 37
  %245 = load ptr, ptr %244, align 8, !tbaa !44
  %246 = icmp eq ptr %245, null
  br i1 %246, label %261, label %247

247:                                              ; preds = %243, %258
  %248 = phi ptr [ %259, %258 ], [ %245, %243 ]
  %249 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %248), !range !38
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.IdAdtTemplate, ptr %248, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !39
  br label %254

254:                                              ; preds = %247, %251
  %255 = phi ptr [ %253, %251 ], [ null, %247 ]
  %256 = icmp eq ptr %255, null
  br i1 %256, label %258, label %257

257:                                              ; preds = %254
  tail call void %1(ptr noundef nonnull %248, ptr noundef nonnull %255, ptr noundef %2) #13
  br label %258

258:                                              ; preds = %257, %254
  %259 = load ptr, ptr %248, align 8, !tbaa !44
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %247, !llvm.loop !141

261:                                              ; preds = %258, %243
  %262 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 30
  %263 = load ptr, ptr %262, align 8, !tbaa !44
  %264 = icmp eq ptr %263, null
  br i1 %264, label %279, label %265

265:                                              ; preds = %261, %276
  %266 = phi ptr [ %277, %276 ], [ %263, %261 ]
  %267 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %266), !range !38
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %272, label %269

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct.IdAdtTemplate, ptr %266, i64 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !39
  br label %272

272:                                              ; preds = %265, %269
  %273 = phi ptr [ %271, %269 ], [ null, %265 ]
  %274 = icmp eq ptr %273, null
  br i1 %274, label %276, label %275

275:                                              ; preds = %272
  tail call void %1(ptr noundef nonnull %266, ptr noundef nonnull %273, ptr noundef %2) #13
  br label %276

276:                                              ; preds = %275, %272
  %277 = load ptr, ptr %266, align 8, !tbaa !44
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %265, !llvm.loop !142

279:                                              ; preds = %276, %261
  %280 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 42
  %281 = load ptr, ptr %280, align 8, !tbaa !44
  %282 = icmp eq ptr %281, null
  br i1 %282, label %297, label %283

283:                                              ; preds = %279, %294
  %284 = phi ptr [ %295, %294 ], [ %281, %279 ]
  %285 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %284), !range !38
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %290, label %287

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.IdAdtTemplate, ptr %284, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !39
  br label %290

290:                                              ; preds = %283, %287
  %291 = phi ptr [ %289, %287 ], [ null, %283 ]
  %292 = icmp eq ptr %291, null
  br i1 %292, label %294, label %293

293:                                              ; preds = %290
  tail call void %1(ptr noundef nonnull %284, ptr noundef nonnull %291, ptr noundef %2) #13
  br label %294

294:                                              ; preds = %293, %290
  %295 = load ptr, ptr %284, align 8, !tbaa !44
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %283, !llvm.loop !143

297:                                              ; preds = %294, %279
  %298 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %299 = load ptr, ptr %298, align 8, !tbaa !44
  %300 = icmp eq ptr %299, null
  br i1 %300, label %315, label %301

301:                                              ; preds = %297, %312
  %302 = phi ptr [ %313, %312 ], [ %299, %297 ]
  %303 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %302), !range !38
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.IdAdtTemplate, ptr %302, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !39
  br label %308

308:                                              ; preds = %301, %305
  %309 = phi ptr [ %307, %305 ], [ null, %301 ]
  %310 = icmp eq ptr %309, null
  br i1 %310, label %312, label %311

311:                                              ; preds = %308
  tail call void %1(ptr noundef nonnull %302, ptr noundef nonnull %309, ptr noundef %2) #13
  br label %312

312:                                              ; preds = %311, %308
  %313 = load ptr, ptr %302, align 8, !tbaa !44
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %301, !llvm.loop !144

315:                                              ; preds = %312, %297
  %316 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 43
  %317 = load ptr, ptr %316, align 8, !tbaa !44
  %318 = icmp eq ptr %317, null
  br i1 %318, label %333, label %319

319:                                              ; preds = %315, %330
  %320 = phi ptr [ %331, %330 ], [ %317, %315 ]
  %321 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %320), !range !38
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %326, label %323

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.IdAdtTemplate, ptr %320, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !39
  br label %326

326:                                              ; preds = %319, %323
  %327 = phi ptr [ %325, %323 ], [ null, %319 ]
  %328 = icmp eq ptr %327, null
  br i1 %328, label %330, label %329

329:                                              ; preds = %326
  tail call void %1(ptr noundef nonnull %320, ptr noundef nonnull %327, ptr noundef %2) #13
  br label %330

330:                                              ; preds = %329, %326
  %331 = load ptr, ptr %320, align 8, !tbaa !44
  %332 = icmp eq ptr %331, null
  br i1 %332, label %333, label %319, !llvm.loop !145

333:                                              ; preds = %330, %315
  %334 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 25
  %335 = load ptr, ptr %334, align 8, !tbaa !44
  %336 = icmp eq ptr %335, null
  br i1 %336, label %365, label %337

337:                                              ; preds = %333, %362
  %338 = phi ptr [ %363, %362 ], [ %335, %333 ]
  %339 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %338), !range !38
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %344, label %341

341:                                              ; preds = %337
  %342 = getelementptr inbounds %struct.IdAdtTemplate, ptr %338, i64 0, i32 1
  %343 = load ptr, ptr %342, align 8, !tbaa !39
  br label %344

344:                                              ; preds = %337, %341
  %345 = phi ptr [ %343, %341 ], [ null, %337 ]
  %346 = getelementptr inbounds %struct.World, ptr %338, i64 0, i32 75
  %347 = load ptr, ptr %346, align 8, !tbaa !146
  %348 = icmp eq ptr %347, null
  br i1 %348, label %359, label %349

349:                                              ; preds = %344
  %350 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %347), !range !38
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %355, label %352

352:                                              ; preds = %349
  %353 = getelementptr inbounds %struct.IdAdtTemplate, ptr %347, i64 0, i32 1
  %354 = load ptr, ptr %353, align 8, !tbaa !39
  br label %355

355:                                              ; preds = %349, %352
  %356 = phi ptr [ %354, %352 ], [ null, %349 ]
  %357 = icmp eq ptr %356, null
  br i1 %357, label %359, label %358

358:                                              ; preds = %355
  tail call void %1(ptr noundef nonnull %338, ptr noundef nonnull %356, ptr noundef %2) #13
  br label %359

359:                                              ; preds = %355, %358, %344
  %360 = icmp eq ptr %345, null
  br i1 %360, label %362, label %361

361:                                              ; preds = %359
  tail call void %1(ptr noundef nonnull %338, ptr noundef nonnull %345, ptr noundef %2) #13
  br label %362

362:                                              ; preds = %361, %359
  %363 = load ptr, ptr %338, align 8, !tbaa !44
  %364 = icmp eq ptr %363, null
  br i1 %364, label %365, label %337, !llvm.loop !148

365:                                              ; preds = %362, %333
  %366 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %367 = load ptr, ptr %366, align 8, !tbaa !44
  %368 = icmp eq ptr %367, null
  br i1 %368, label %397, label %369

369:                                              ; preds = %365, %394
  %370 = phi ptr [ %395, %394 ], [ %367, %365 ]
  %371 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %370), !range !38
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %376, label %373

373:                                              ; preds = %369
  %374 = getelementptr inbounds %struct.IdAdtTemplate, ptr %370, i64 0, i32 1
  %375 = load ptr, ptr %374, align 8, !tbaa !39
  br label %376

376:                                              ; preds = %369, %373
  %377 = phi ptr [ %375, %373 ], [ null, %369 ]
  %378 = getelementptr inbounds %struct.Scene, ptr %370, i64 0, i32 18
  %379 = load ptr, ptr %378, align 8, !tbaa !149
  %380 = icmp eq ptr %379, null
  br i1 %380, label %391, label %381

381:                                              ; preds = %376
  %382 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %379), !range !38
  %383 = icmp eq i8 %382, 0
  br i1 %383, label %387, label %384

384:                                              ; preds = %381
  %385 = getelementptr inbounds %struct.IdAdtTemplate, ptr %379, i64 0, i32 1
  %386 = load ptr, ptr %385, align 8, !tbaa !39
  br label %387

387:                                              ; preds = %381, %384
  %388 = phi ptr [ %386, %384 ], [ null, %381 ]
  %389 = icmp eq ptr %388, null
  br i1 %389, label %391, label %390

390:                                              ; preds = %387
  tail call void %1(ptr noundef nonnull %370, ptr noundef nonnull %388, ptr noundef %2) #13
  br label %391

391:                                              ; preds = %387, %390, %376
  %392 = icmp eq ptr %377, null
  br i1 %392, label %394, label %393

393:                                              ; preds = %391
  tail call void %1(ptr noundef nonnull %370, ptr noundef nonnull %377, ptr noundef %2) #13
  br label %394

394:                                              ; preds = %393, %391
  %395 = load ptr, ptr %370, align 8, !tbaa !44
  %396 = icmp eq ptr %395, null
  br i1 %396, label %397, label %369, !llvm.loop !167

397:                                              ; preds = %394, %365
  %398 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 44
  %399 = load ptr, ptr %398, align 8, !tbaa !44
  %400 = icmp eq ptr %399, null
  br i1 %400, label %415, label %401

401:                                              ; preds = %397, %412
  %402 = phi ptr [ %413, %412 ], [ %399, %397 ]
  %403 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %402), !range !38
  %404 = icmp eq i8 %403, 0
  br i1 %404, label %408, label %405

405:                                              ; preds = %401
  %406 = getelementptr inbounds %struct.IdAdtTemplate, ptr %402, i64 0, i32 1
  %407 = load ptr, ptr %406, align 8, !tbaa !39
  br label %408

408:                                              ; preds = %401, %405
  %409 = phi ptr [ %407, %405 ], [ null, %401 ]
  %410 = icmp eq ptr %409, null
  br i1 %410, label %412, label %411

411:                                              ; preds = %408
  tail call void %1(ptr noundef nonnull %402, ptr noundef nonnull %409, ptr noundef %2) #13
  br label %412

412:                                              ; preds = %411, %408
  %413 = load ptr, ptr %402, align 8, !tbaa !44
  %414 = icmp eq ptr %413, null
  br i1 %414, label %415, label %401, !llvm.loop !168

415:                                              ; preds = %412, %397
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_all_animdata_fix_paths_rename(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = load ptr, ptr @G, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 35
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %4, %16
  %10 = phi ptr [ %18, %16 ], [ %7, %4 ]
  %11 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %10), !range !38
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.IdAdtTemplate, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  br label %16

16:                                               ; preds = %9, %13
  %17 = phi ptr [ %15, %13 ], [ null, %9 ]
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %10, ptr noundef %17, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  %18 = load ptr, ptr %10, align 8, !tbaa !44
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !llvm.loop !169

20:                                               ; preds = %16, %4
  %21 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = icmp eq ptr %22, null
  br i1 %23, label %47, label %24

24:                                               ; preds = %20, %44
  %25 = phi ptr [ %45, %44 ], [ %22, %20 ]
  %26 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %25), !range !38
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.IdAdtTemplate, ptr %25, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !39
  br label %31

31:                                               ; preds = %24, %28
  %32 = phi ptr [ %30, %28 ], [ null, %24 ]
  %33 = getelementptr inbounds %struct.Tex, ptr %25, i64 0, i32 52
  %34 = load ptr, ptr %33, align 8, !tbaa !122
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %34), !range !38
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.IdAdtTemplate, ptr %34, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !39
  br label %42

42:                                               ; preds = %36, %39
  %43 = phi ptr [ %41, %39 ], [ null, %36 ]
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %34, ptr noundef %43, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  br label %44

44:                                               ; preds = %42, %31
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %25, ptr noundef %32, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  %45 = load ptr, ptr %25, align 8, !tbaa !44
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %24, !llvm.loop !170

47:                                               ; preds = %44, %20
  %48 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 21
  %49 = load ptr, ptr %48, align 8, !tbaa !44
  %50 = icmp eq ptr %49, null
  br i1 %50, label %74, label %51

51:                                               ; preds = %47, %71
  %52 = phi ptr [ %72, %71 ], [ %49, %47 ]
  %53 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %52), !range !38
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.IdAdtTemplate, ptr %52, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !39
  br label %58

58:                                               ; preds = %51, %55
  %59 = phi ptr [ %57, %55 ], [ null, %51 ]
  %60 = getelementptr inbounds %struct.Lamp, ptr %52, i64 0, i32 74
  %61 = load ptr, ptr %60, align 8, !tbaa !126
  %62 = icmp eq ptr %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %58
  %64 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %61), !range !38
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.IdAdtTemplate, ptr %61, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !39
  br label %69

69:                                               ; preds = %63, %66
  %70 = phi ptr [ %68, %66 ], [ null, %63 ]
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %61, ptr noundef %70, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  br label %71

71:                                               ; preds = %69, %58
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %52, ptr noundef %59, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  %72 = load ptr, ptr %52, align 8, !tbaa !44
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %51, !llvm.loop !171

74:                                               ; preds = %71, %47
  %75 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 17
  %76 = load ptr, ptr %75, align 8, !tbaa !44
  %77 = icmp eq ptr %76, null
  br i1 %77, label %101, label %78

78:                                               ; preds = %74, %98
  %79 = phi ptr [ %99, %98 ], [ %76, %74 ]
  %80 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %79), !range !38
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.IdAdtTemplate, ptr %79, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !39
  br label %85

85:                                               ; preds = %78, %82
  %86 = phi ptr [ %84, %82 ], [ null, %78 ]
  %87 = getelementptr inbounds %struct.Material, ptr %79, i64 0, i32 103
  %88 = load ptr, ptr %87, align 8, !tbaa !129
  %89 = icmp eq ptr %88, null
  br i1 %89, label %98, label %90

90:                                               ; preds = %85
  %91 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %88), !range !38
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.IdAdtTemplate, ptr %88, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !39
  br label %96

96:                                               ; preds = %90, %93
  %97 = phi ptr [ %95, %93 ], [ null, %90 ]
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %88, ptr noundef %97, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  br label %98

98:                                               ; preds = %96, %85
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %79, ptr noundef %86, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  %99 = load ptr, ptr %79, align 8, !tbaa !44
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %78, !llvm.loop !172

101:                                              ; preds = %98, %74
  %102 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 22
  %103 = load ptr, ptr %102, align 8, !tbaa !44
  %104 = icmp eq ptr %103, null
  br i1 %104, label %116, label %105

105:                                              ; preds = %101, %112
  %106 = phi ptr [ %114, %112 ], [ %103, %101 ]
  %107 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %106), !range !38
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.IdAdtTemplate, ptr %106, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !39
  br label %112

112:                                              ; preds = %105, %109
  %113 = phi ptr [ %111, %109 ], [ null, %105 ]
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %106, ptr noundef %113, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  %114 = load ptr, ptr %106, align 8, !tbaa !44
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %105, !llvm.loop !173

116:                                              ; preds = %112, %101
  %117 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 24
  %118 = load ptr, ptr %117, align 8, !tbaa !44
  %119 = icmp eq ptr %118, null
  br i1 %119, label %131, label %120

120:                                              ; preds = %116, %127
  %121 = phi ptr [ %129, %127 ], [ %118, %116 ]
  %122 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %121), !range !38
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.IdAdtTemplate, ptr %121, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !39
  br label %127

127:                                              ; preds = %120, %124
  %128 = phi ptr [ %126, %124 ], [ null, %120 ]
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %121, ptr noundef %128, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  %129 = load ptr, ptr %121, align 8, !tbaa !44
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %120, !llvm.loop !174

131:                                              ; preds = %127, %116
  %132 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 16
  %133 = load ptr, ptr %132, align 8, !tbaa !44
  %134 = icmp eq ptr %133, null
  br i1 %134, label %146, label %135

135:                                              ; preds = %131, %142
  %136 = phi ptr [ %144, %142 ], [ %133, %131 ]
  %137 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %136), !range !38
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.IdAdtTemplate, ptr %136, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !39
  br label %142

142:                                              ; preds = %135, %139
  %143 = phi ptr [ %141, %139 ], [ null, %135 ]
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %136, ptr noundef %143, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  %144 = load ptr, ptr %136, align 8, !tbaa !44
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %135, !llvm.loop !175

146:                                              ; preds = %142, %131
  %147 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 15
  %148 = load ptr, ptr %147, align 8, !tbaa !44
  %149 = icmp eq ptr %148, null
  br i1 %149, label %161, label %150

150:                                              ; preds = %146, %157
  %151 = phi ptr [ %159, %157 ], [ %148, %146 ]
  %152 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %151), !range !38
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.IdAdtTemplate, ptr %151, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !39
  br label %157

157:                                              ; preds = %150, %154
  %158 = phi ptr [ %156, %154 ], [ null, %150 ]
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %151, ptr noundef %158, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  %159 = load ptr, ptr %151, align 8, !tbaa !44
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %150, !llvm.loop !176

161:                                              ; preds = %157, %146
  %162 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 33
  %163 = load ptr, ptr %162, align 8, !tbaa !44
  %164 = icmp eq ptr %163, null
  br i1 %164, label %176, label %165

165:                                              ; preds = %161, %172
  %166 = phi ptr [ %174, %172 ], [ %163, %161 ]
  %167 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %166), !range !38
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.IdAdtTemplate, ptr %166, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !39
  br label %172

172:                                              ; preds = %165, %169
  %173 = phi ptr [ %171, %169 ], [ null, %165 ]
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %166, ptr noundef %173, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  %174 = load ptr, ptr %166, align 8, !tbaa !44
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %165, !llvm.loop !177

176:                                              ; preds = %172, %161
  %177 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 20
  %178 = load ptr, ptr %177, align 8, !tbaa !44
  %179 = icmp eq ptr %178, null
  br i1 %179, label %191, label %180

180:                                              ; preds = %176, %187
  %181 = phi ptr [ %189, %187 ], [ %178, %176 ]
  %182 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %181), !range !38
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.IdAdtTemplate, ptr %181, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !39
  br label %187

187:                                              ; preds = %180, %184
  %188 = phi ptr [ %186, %184 ], [ null, %180 ]
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %181, ptr noundef %188, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  %189 = load ptr, ptr %181, align 8, !tbaa !44
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %180, !llvm.loop !178

191:                                              ; preds = %187, %176
  %192 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 14
  %193 = load ptr, ptr %192, align 8, !tbaa !44
  %194 = icmp eq ptr %193, null
  br i1 %194, label %206, label %195

195:                                              ; preds = %191, %202
  %196 = phi ptr [ %204, %202 ], [ %193, %191 ]
  %197 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %196), !range !38
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.IdAdtTemplate, ptr %196, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !39
  br label %202

202:                                              ; preds = %195, %199
  %203 = phi ptr [ %201, %199 ], [ null, %195 ]
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %196, ptr noundef %203, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  %204 = load ptr, ptr %196, align 8, !tbaa !44
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %195, !llvm.loop !179

206:                                              ; preds = %202, %191
  %207 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 37
  %208 = load ptr, ptr %207, align 8, !tbaa !44
  %209 = icmp eq ptr %208, null
  br i1 %209, label %221, label %210

210:                                              ; preds = %206, %217
  %211 = phi ptr [ %219, %217 ], [ %208, %206 ]
  %212 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %211), !range !38
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.IdAdtTemplate, ptr %211, i64 0, i32 1
  %216 = load ptr, ptr %215, align 8, !tbaa !39
  br label %217

217:                                              ; preds = %210, %214
  %218 = phi ptr [ %216, %214 ], [ null, %210 ]
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %211, ptr noundef %218, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  %219 = load ptr, ptr %211, align 8, !tbaa !44
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %210, !llvm.loop !180

221:                                              ; preds = %217, %206
  %222 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 30
  %223 = load ptr, ptr %222, align 8, !tbaa !44
  %224 = icmp eq ptr %223, null
  br i1 %224, label %236, label %225

225:                                              ; preds = %221, %232
  %226 = phi ptr [ %234, %232 ], [ %223, %221 ]
  %227 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %226), !range !38
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.IdAdtTemplate, ptr %226, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !39
  br label %232

232:                                              ; preds = %225, %229
  %233 = phi ptr [ %231, %229 ], [ null, %225 ]
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %226, ptr noundef %233, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  %234 = load ptr, ptr %226, align 8, !tbaa !44
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %225, !llvm.loop !181

236:                                              ; preds = %232, %221
  %237 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 42
  %238 = load ptr, ptr %237, align 8, !tbaa !44
  %239 = icmp eq ptr %238, null
  br i1 %239, label %251, label %240

240:                                              ; preds = %236, %247
  %241 = phi ptr [ %249, %247 ], [ %238, %236 ]
  %242 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %241), !range !38
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.IdAdtTemplate, ptr %241, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !39
  br label %247

247:                                              ; preds = %240, %244
  %248 = phi ptr [ %246, %244 ], [ null, %240 ]
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %241, ptr noundef %248, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  %249 = load ptr, ptr %241, align 8, !tbaa !44
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %240, !llvm.loop !182

251:                                              ; preds = %247, %236
  %252 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 13
  %253 = load ptr, ptr %252, align 8, !tbaa !44
  %254 = icmp eq ptr %253, null
  br i1 %254, label %266, label %255

255:                                              ; preds = %251, %262
  %256 = phi ptr [ %264, %262 ], [ %253, %251 ]
  %257 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %256), !range !38
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.IdAdtTemplate, ptr %256, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !39
  br label %262

262:                                              ; preds = %255, %259
  %263 = phi ptr [ %261, %259 ], [ null, %255 ]
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %256, ptr noundef %263, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  %264 = load ptr, ptr %256, align 8, !tbaa !44
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %255, !llvm.loop !183

266:                                              ; preds = %262, %251
  %267 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 43
  %268 = load ptr, ptr %267, align 8, !tbaa !44
  %269 = icmp eq ptr %268, null
  br i1 %269, label %281, label %270

270:                                              ; preds = %266, %277
  %271 = phi ptr [ %279, %277 ], [ %268, %266 ]
  %272 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %271), !range !38
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.IdAdtTemplate, ptr %271, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !39
  br label %277

277:                                              ; preds = %270, %274
  %278 = phi ptr [ %276, %274 ], [ null, %270 ]
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %271, ptr noundef %278, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  %279 = load ptr, ptr %271, align 8, !tbaa !44
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %270, !llvm.loop !184

281:                                              ; preds = %277, %266
  %282 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 25
  %283 = load ptr, ptr %282, align 8, !tbaa !44
  %284 = icmp eq ptr %283, null
  br i1 %284, label %308, label %285

285:                                              ; preds = %281, %305
  %286 = phi ptr [ %306, %305 ], [ %283, %281 ]
  %287 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %286), !range !38
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.IdAdtTemplate, ptr %286, i64 0, i32 1
  %291 = load ptr, ptr %290, align 8, !tbaa !39
  br label %292

292:                                              ; preds = %285, %289
  %293 = phi ptr [ %291, %289 ], [ null, %285 ]
  %294 = getelementptr inbounds %struct.World, ptr %286, i64 0, i32 75
  %295 = load ptr, ptr %294, align 8, !tbaa !146
  %296 = icmp eq ptr %295, null
  br i1 %296, label %305, label %297

297:                                              ; preds = %292
  %298 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %295), !range !38
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %297
  %301 = getelementptr inbounds %struct.IdAdtTemplate, ptr %295, i64 0, i32 1
  %302 = load ptr, ptr %301, align 8, !tbaa !39
  br label %303

303:                                              ; preds = %297, %300
  %304 = phi ptr [ %302, %300 ], [ null, %297 ]
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %295, ptr noundef %304, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  br label %305

305:                                              ; preds = %303, %292
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %286, ptr noundef %293, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  %306 = load ptr, ptr %286, align 8, !tbaa !44
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %285, !llvm.loop !185

308:                                              ; preds = %305, %281
  %309 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 44
  %310 = load ptr, ptr %309, align 8, !tbaa !44
  %311 = icmp eq ptr %310, null
  br i1 %311, label %323, label %312

312:                                              ; preds = %308, %319
  %313 = phi ptr [ %321, %319 ], [ %310, %308 ]
  %314 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %313), !range !38
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %319, label %316

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.IdAdtTemplate, ptr %313, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !39
  br label %319

319:                                              ; preds = %312, %316
  %320 = phi ptr [ %318, %316 ], [ null, %312 ]
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %313, ptr noundef %320, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  %321 = load ptr, ptr %313, align 8, !tbaa !44
  %322 = icmp eq ptr %321, null
  br i1 %322, label %323, label %312, !llvm.loop !186

323:                                              ; preds = %319, %308
  %324 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 11
  %325 = load ptr, ptr %324, align 8, !tbaa !44
  %326 = icmp eq ptr %325, null
  br i1 %326, label %350, label %327

327:                                              ; preds = %323, %347
  %328 = phi ptr [ %348, %347 ], [ %325, %323 ]
  %329 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %328), !range !38
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %334, label %331

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.IdAdtTemplate, ptr %328, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !39
  br label %334

334:                                              ; preds = %327, %331
  %335 = phi ptr [ %333, %331 ], [ null, %327 ]
  %336 = getelementptr inbounds %struct.Scene, ptr %328, i64 0, i32 18
  %337 = load ptr, ptr %336, align 8, !tbaa !149
  %338 = icmp eq ptr %337, null
  br i1 %338, label %347, label %339

339:                                              ; preds = %334
  %340 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %337), !range !38
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %345, label %342

342:                                              ; preds = %339
  %343 = getelementptr inbounds %struct.IdAdtTemplate, ptr %337, i64 0, i32 1
  %344 = load ptr, ptr %343, align 8, !tbaa !39
  br label %345

345:                                              ; preds = %339, %342
  %346 = phi ptr [ %344, %342 ], [ null, %339 ]
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %337, ptr noundef %346, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  br label %347

347:                                              ; preds = %345, %334
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %328, ptr noundef %335, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1)
  %348 = load ptr, ptr %328, align 8, !tbaa !44
  %349 = icmp eq ptr %348, null
  br i1 %349, label %350, label %327, !llvm.loop !187

350:                                              ; preds = %347, %323
  ret void
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_keyingset_find_path(ptr noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef readonly %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #7 {
  %7 = icmp eq ptr %0, null
  %8 = icmp eq ptr %3, null
  %9 = or i1 %7, %8
  %10 = icmp eq ptr %1, null
  %11 = or i1 %10, %9
  br i1 %11, label %38, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.KeyingSet, ptr %0, i64 0, i32 2
  br label %14

14:                                               ; preds = %30, %12
  %15 = phi ptr [ %13, %12 ], [ %17, %30 ]
  %16 = phi ptr [ undef, %12 ], [ %37, %30 ]
  %17 = load ptr, ptr %15, align 8, !tbaa !44
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.KS_Path, ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !188
  %22 = icmp eq ptr %21, %1
  %23 = getelementptr inbounds %struct.KS_Path, ptr %17, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !190
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %24) #14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %19
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i1 [ false, %29 ], [ true, %26 ]
  %32 = getelementptr inbounds %struct.KS_Path, ptr %17, i64 0, i32 8
  %33 = load i32, ptr %32, align 8, !tbaa !191
  %34 = icmp eq i32 %33, %4
  %35 = and i1 %22, %31
  %36 = and i1 %35, %34
  %37 = select i1 %36, ptr %17, ptr %16
  br i1 %36, label %38, label %14, !llvm.loop !192

38:                                               ; preds = %14, %30, %6
  %39 = phi ptr [ null, %6 ], [ %37, %30 ], [ null, %14 ]
  ret ptr %39
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_keyingset_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4) local_unnamed_addr #2 {
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %7 = tail call ptr %6(i64 noundef 472, ptr noundef nonnull @.str.11) #13
  %8 = getelementptr inbounds %struct.KeyingSet, ptr %7, i64 0, i32 3
  %9 = icmp eq ptr %1, null
  %10 = icmp eq ptr %2, null
  %11 = select i1 %10, ptr @.str.11, ptr %2
  %12 = select i1 %9, ptr %11, ptr %1
  %13 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %12, i64 noundef 64) #13
  %14 = select i1 %9, ptr @.str.12, ptr %1
  %15 = select i1 %10, ptr %14, ptr %2
  %16 = getelementptr inbounds %struct.KeyingSet, ptr %7, i64 0, i32 4
  %17 = tail call ptr @BLI_strncpy(ptr noundef nonnull %16, ptr noundef nonnull %15, i64 noundef 64) #13
  %18 = getelementptr inbounds %struct.KeyingSet, ptr %7, i64 0, i32 7
  store i16 %3, ptr %18, align 8, !tbaa !193
  %19 = getelementptr inbounds %struct.KeyingSet, ptr %7, i64 0, i32 8
  store i16 %4, ptr %19, align 2, !tbaa !195
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %7) #13
  tail call void @BLI_uniquename(ptr noundef %0, ptr noundef %7, ptr noundef nonnull @.str.11, i8 noundef zeroext 46, i32 noundef 32, i32 noundef 64) #13
  tail call void @BLI_uniquename(ptr noundef %0, ptr noundef %7, ptr noundef nonnull @.str.12, i8 noundef zeroext 46, i32 noundef 96, i32 noundef 64) #13
  ret ptr %7
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_keyingset_add_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i16 noundef signext %5, i16 noundef signext %6) local_unnamed_addr #2 {
  %8 = icmp eq ptr %0, null
  %9 = icmp eq ptr %3, null
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.33)
  br label %72

13:                                               ; preds = %7
  %14 = icmp eq ptr %1, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  br label %72

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.KeyingSet, ptr %0, i64 0, i32 2
  br label %19

19:                                               ; preds = %35, %17
  %20 = phi ptr [ %18, %17 ], [ %22, %35 ]
  %21 = phi ptr [ undef, %17 ], [ %42, %35 ]
  %22 = load ptr, ptr %20, align 8, !tbaa !44
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.KS_Path, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !188
  %27 = icmp eq ptr %26, %1
  %28 = getelementptr inbounds %struct.KS_Path, ptr %22, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !190
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %29) #14
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %24
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i1 [ false, %34 ], [ true, %31 ]
  %37 = getelementptr inbounds %struct.KS_Path, ptr %22, i64 0, i32 8
  %38 = load i32, ptr %37, align 8, !tbaa !191
  %39 = icmp eq i32 %38, %4
  %40 = and i1 %27, %36
  %41 = and i1 %40, %39
  %42 = select i1 %41, ptr %22, ptr %21
  br i1 %41, label %43, label %19, !llvm.loop !192

43:                                               ; preds = %19, %35
  %44 = phi ptr [ %42, %35 ], [ null, %19 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !78
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %72, label %50

50:                                               ; preds = %46
  %51 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  br label %72

52:                                               ; preds = %43
  %53 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %54 = tail call ptr %53(i64 noundef 112, ptr noundef nonnull @.str.16) #13
  %55 = getelementptr inbounds %struct.KS_Path, ptr %54, i64 0, i32 2
  store ptr %1, ptr %55, align 8, !tbaa !188
  %56 = icmp eq ptr %2, null
  %57 = getelementptr inbounds %struct.KS_Path, ptr %54, i64 0, i32 3
  br i1 %56, label %60, label %58

58:                                               ; preds = %52
  %59 = tail call ptr @BLI_strncpy(ptr noundef nonnull %57, ptr noundef nonnull %2, i64 noundef 64) #13
  br label %61

60:                                               ; preds = %52
  store i8 0, ptr %57, align 8, !tbaa !113
  br label %61

61:                                               ; preds = %58, %60
  %62 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %63 = load i16, ptr %62, align 8, !tbaa !34
  %64 = sext i16 %63 to i32
  %65 = getelementptr inbounds %struct.KS_Path, ptr %54, i64 0, i32 4
  store i32 %64, ptr %65, align 8, !tbaa !196
  %66 = tail call ptr @BLI_strdup(ptr noundef %3) #13
  %67 = getelementptr inbounds %struct.KS_Path, ptr %54, i64 0, i32 7
  store ptr %66, ptr %67, align 8, !tbaa !190
  %68 = getelementptr inbounds %struct.KS_Path, ptr %54, i64 0, i32 8
  store i32 %4, ptr %68, align 8, !tbaa !191
  %69 = getelementptr inbounds %struct.KS_Path, ptr %54, i64 0, i32 9
  store i16 %5, ptr %69, align 4, !tbaa !197
  %70 = getelementptr inbounds %struct.KS_Path, ptr %54, i64 0, i32 5
  store i16 %6, ptr %70, align 4, !tbaa !198
  %71 = getelementptr inbounds %struct.KeyingSet, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %71, ptr noundef %54) #13
  br label %72

72:                                               ; preds = %46, %50, %61, %15, %11
  %73 = phi ptr [ null, %11 ], [ null, %15 ], [ %54, %61 ], [ null, %50 ], [ null, %46 ]
  ret ptr %73
}

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_keyingset_free_path(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.KS_Path, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !190
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %11(ptr noundef nonnull %8) #13
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.KeyingSet, ptr %0, i64 0, i32 2
  tail call void @BLI_freelinkN(ptr noundef nonnull %13, ptr noundef %1) #13
  br label %14

14:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_keyingsets_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  tail call void @BLI_duplicatelist(ptr noundef %0, ptr noundef %1) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %8

5:                                                ; preds = %13, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8, !llvm.loop !199

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %10 = getelementptr inbounds %struct.KeyingSet, ptr %9, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %10, ptr noundef nonnull %10) #13
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %19, %13 ], [ %11, %8 ]
  %15 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct.KS_Path, ptr %14, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !190
  %18 = tail call ptr %15(ptr noundef %17) #13
  store ptr %18, ptr %16, align 8, !tbaa !190
  %19 = load ptr, ptr %14, align 8, !tbaa !44
  %20 = icmp eq ptr %19, null
  br i1 %20, label %5, label %13, !llvm.loop !200

21:                                               ; preds = %5, %2
  ret void
}

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_keyingset_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.KeyingSet, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !201
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3, %15
  %8 = phi ptr [ %9, %15 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !202
  %10 = getelementptr inbounds %struct.KS_Path, ptr %8, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !190
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %14(ptr noundef nonnull %11) #13
  br label %15

15:                                               ; preds = %13, %7
  tail call void @BLI_freelinkN(ptr noundef nonnull %4, ptr noundef nonnull %8) #13
  %16 = icmp eq ptr %9, null
  br i1 %16, label %17, label %7, !llvm.loop !203

17:                                               ; preds = %15, %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_keyingsets_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %3, %22
  %7 = phi ptr [ %8, %22 ], [ %4, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !204
  %9 = getelementptr inbounds %struct.KeyingSet, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !201
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %6, %20
  %13 = phi ptr [ %14, %20 ], [ %10, %6 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !202
  %15 = getelementptr inbounds %struct.KS_Path, ptr %13, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !190
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %19(ptr noundef nonnull %16) #13
  br label %20

20:                                               ; preds = %18, %12
  tail call void @BLI_freelinkN(ptr noundef nonnull %9, ptr noundef nonnull %13) #13
  %21 = icmp eq ptr %14, null
  br i1 %21, label %22, label %12, !llvm.loop !203

22:                                               ; preds = %20, %6
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %7) #13
  %23 = icmp eq ptr %8, null
  br i1 %23, label %24, label %6, !llvm.loop !205

24:                                               ; preds = %22, %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @animsys_evaluate_action_group(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr nocapture noundef readnone %3, float noundef %4) local_unnamed_addr #2 {
  %6 = icmp eq ptr %1, null
  %7 = icmp eq ptr %2, null
  %8 = or i1 %6, %7
  br i1 %8, label %61, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !97
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !34
  %15 = sext i16 %14 to i32
  %16 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !53
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 %15, ptr %16, align 8, !tbaa !53
  br label %29

20:                                               ; preds = %12
  %21 = icmp eq i32 %17, %15
  br i1 %21, label %29, label %22

22:                                               ; preds = %20
  %23 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !78
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull %27, i32 noundef %15, ptr noundef nonnull %13)
  br label %29

29:                                               ; preds = %9, %19, %20, %22, %26
  %30 = getelementptr inbounds %struct.bActionGroup, ptr %2, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !83
  %32 = and i32 %31, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bActionGroup, ptr %2, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  %37 = icmp eq ptr %36, null
  br i1 %37, label %61, label %38

38:                                               ; preds = %34, %58
  %39 = phi ptr [ %59, %58 ], [ %36, %34 ]
  %40 = getelementptr inbounds %struct.FCurve, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !82
  %42 = icmp eq ptr %41, %2
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.FCurve, ptr %39, i64 0, i32 9
  %45 = load i16, ptr %44, align 8, !tbaa !206
  %46 = and i16 %45, 1040
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  tail call void @calculate_fcurve(ptr noundef nonnull %39, float noundef %4) #13
  %49 = getelementptr inbounds %struct.FCurve, ptr %39, i64 0, i32 12
  %50 = load ptr, ptr %49, align 8, !tbaa !81
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.FCurve, ptr %39, i64 0, i32 11
  %54 = load i32, ptr %53, align 4, !tbaa !207
  %55 = getelementptr inbounds %struct.FCurve, ptr %39, i64 0, i32 8
  %56 = load float, ptr %55, align 4, !tbaa !208
  %57 = tail call fastcc zeroext i8 @animsys_write_rna_setting(ptr noundef nonnull %0, ptr noundef nonnull %50, i32 noundef %54, float noundef %56), !range !38
  br label %58

58:                                               ; preds = %52, %48, %43
  %59 = load ptr, ptr %39, align 8, !tbaa !44
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %38, !llvm.loop !209

61:                                               ; preds = %58, %38, %34, %29, %5
  ret void
}

declare void @calculate_fcurve(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @animsys_evaluate_action(ptr noundef %0, ptr noundef %1, ptr nocapture readonly %2, float noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %58, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !97
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !34
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !53
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 %12, ptr %13, align 8, !tbaa !53
  br label %26

17:                                               ; preds = %9
  %18 = icmp eq i32 %14, %12
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !78
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull %24, i32 noundef %12, ptr noundef nonnull %10)
  br label %26

26:                                               ; preds = %6, %16, %17, %19, %23
  %27 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = icmp eq ptr %28, null
  br i1 %29, label %58, label %30

30:                                               ; preds = %26, %55
  %31 = phi ptr [ %56, %55 ], [ %28, %26 ]
  %32 = getelementptr inbounds %struct.FCurve, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !82
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.bActionGroup, ptr %33, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !83
  %38 = and i32 %37, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35, %30
  %41 = getelementptr inbounds %struct.FCurve, ptr %31, i64 0, i32 9
  %42 = load i16, ptr %41, align 8, !tbaa !206
  %43 = and i16 %42, 1040
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  tail call void @calculate_fcurve(ptr noundef nonnull %31, float noundef %3) #13
  %46 = getelementptr inbounds %struct.FCurve, ptr %31, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !81
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.FCurve, ptr %31, i64 0, i32 11
  %51 = load i32, ptr %50, align 4, !tbaa !207
  %52 = getelementptr inbounds %struct.FCurve, ptr %31, i64 0, i32 8
  %53 = load float, ptr %52, align 4, !tbaa !208
  %54 = tail call fastcc zeroext i8 @animsys_write_rna_setting(ptr noundef nonnull %0, ptr noundef nonnull %47, i32 noundef %51, float noundef %53), !range !38
  br label %55

55:                                               ; preds = %49, %45, %40, %35
  %56 = load ptr, ptr %31, align 8, !tbaa !44
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %30, !llvm.loop !210

58:                                               ; preds = %55, %26, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @nlastrips_ctime_get_strip(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, float noundef %3) local_unnamed_addr #2 {
  %5 = load ptr, ptr %1, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  br label %9

9:                                                ; preds = %7, %51
  %10 = phi ptr [ %5, %7 ], [ %52, %51 ]
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %10, i64 0, i32 10
  %12 = load float, ptr %11, align 8, !tbaa !211
  %13 = getelementptr inbounds %struct.NlaStrip, ptr %10, i64 0, i32 11
  %14 = load float, ptr %13, align 4, !tbaa !212
  %15 = fcmp olt float %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = fcmp ugt float %12, %3
  %18 = fcmp ult float %14, %3
  %19 = or i1 %17, %18
  br i1 %19, label %24, label %54

20:                                               ; preds = %9
  %21 = fcmp ugt float %14, %3
  %22 = fcmp ult float %12, %3
  %23 = or i1 %22, %21
  br i1 %23, label %24, label %54

24:                                               ; preds = %20, %16
  %25 = fcmp ogt float %12, %3
  br i1 %25, label %26, label %41

26:                                               ; preds = %24
  %27 = load ptr, ptr %1, align 8, !tbaa !89
  %28 = icmp eq ptr %10, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.NlaStrip, ptr %10, i64 0, i32 19
  %31 = load i16, ptr %30, align 2, !tbaa !213
  %32 = icmp eq i16 %31, 0
  %33 = select i1 %32, ptr %10, ptr null
  br label %54

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.NlaStrip, ptr %10, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !214
  %37 = getelementptr inbounds %struct.NlaStrip, ptr %36, i64 0, i32 19
  %38 = load i16, ptr %37, align 2, !tbaa !213
  %39 = icmp eq i16 %38, 2
  %40 = select i1 %39, ptr null, ptr %36
  br label %54

41:                                               ; preds = %24
  %42 = fcmp olt float %14, %3
  br i1 %42, label %43, label %51

43:                                               ; preds = %41
  %44 = load ptr, ptr %8, align 8, !tbaa !215
  %45 = icmp eq ptr %10, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.NlaStrip, ptr %10, i64 0, i32 19
  %48 = load i16, ptr %47, align 2, !tbaa !213
  %49 = icmp eq i16 %48, 2
  %50 = select i1 %49, ptr null, ptr %10
  br label %54

51:                                               ; preds = %41, %43
  %52 = load ptr, ptr %10, align 8, !tbaa !44
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %9, !llvm.loop !216

54:                                               ; preds = %51, %20, %16, %4, %29, %34, %46
  %55 = phi ptr [ %33, %29 ], [ %40, %34 ], [ %50, %46 ], [ null, %4 ], [ %10, %16 ], [ %10, %20 ], [ null, %51 ]
  %56 = phi i16 [ -1, %29 ], [ 1, %34 ], [ 1, %46 ], [ 0, %4 ], [ 0, %16 ], [ 0, %20 ], [ 0, %51 ]
  %57 = icmp eq ptr %55, null
  br i1 %57, label %106, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.NlaStrip, ptr %55, i64 0, i32 23
  %60 = load i32, ptr %59, align 8, !tbaa !217
  %61 = and i32 %60, 4096
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %106

63:                                               ; preds = %58
  switch i16 %56, label %70 [
    i16 -1, label %64
    i16 1, label %67
  ]

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.NlaStrip, ptr %55, i64 0, i32 10
  %66 = load float, ptr %65, align 8, !tbaa !211
  br label %70

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.NlaStrip, ptr %55, i64 0, i32 11
  %69 = load float, ptr %68, align 4, !tbaa !212
  br label %70

70:                                               ; preds = %63, %67, %64
  %71 = phi float [ %3, %63 ], [ %69, %67 ], [ %66, %64 ]
  tail call fastcc void @nlastrip_evaluate_controls(ptr noundef nonnull %55, float noundef %71)
  %72 = getelementptr inbounds %struct.NlaStrip, ptr %55, i64 0, i32 8
  %73 = load float, ptr %72, align 8, !tbaa !218
  %74 = fcmp ugt float %73, 0.000000e+00
  br i1 %74, label %75, label %106

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.NlaStrip, ptr %55, i64 0, i32 21
  %77 = load i16, ptr %76, align 2, !tbaa !219
  switch i16 %77, label %95 [
    i16 0, label %78
    i16 1, label %82
  ]

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.NlaStrip, ptr %55, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !62
  %81 = icmp eq ptr %80, null
  br i1 %81, label %106, label %95

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.NlaStrip, ptr %55, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !214
  %85 = icmp eq ptr %84, null
  br i1 %85, label %106, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %55, align 8, !tbaa !220
  %88 = icmp eq ptr %87, null
  br i1 %88, label %106, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.NlaStrip, ptr %55, i64 0, i32 10
  %91 = load float, ptr %90, align 8, !tbaa !211
  tail call fastcc void @nlastrip_evaluate_controls(ptr noundef nonnull %84, float noundef %91)
  %92 = load ptr, ptr %55, align 8, !tbaa !220
  %93 = getelementptr inbounds %struct.NlaStrip, ptr %55, i64 0, i32 11
  %94 = load float, ptr %93, align 4, !tbaa !212
  tail call fastcc void @nlastrip_evaluate_controls(ptr noundef %92, float noundef %94)
  br label %95

95:                                               ; preds = %78, %75, %89
  %96 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %97 = tail call ptr %96(i64 noundef 40, ptr noundef nonnull @.str.17) #13
  %98 = getelementptr inbounds %struct.NlaEvalStrip, ptr %97, i64 0, i32 3
  store ptr %55, ptr %98, align 8, !tbaa !221
  %99 = getelementptr inbounds %struct.NlaEvalStrip, ptr %97, i64 0, i32 5
  store i16 %56, ptr %99, align 2, !tbaa !223
  %100 = getelementptr inbounds %struct.NlaEvalStrip, ptr %97, i64 0, i32 4
  store i16 %2, ptr %100, align 8, !tbaa !224
  %101 = getelementptr inbounds %struct.NlaStrip, ptr %55, i64 0, i32 9
  %102 = load float, ptr %101, align 4, !tbaa !225
  %103 = getelementptr inbounds %struct.NlaEvalStrip, ptr %97, i64 0, i32 6
  store float %102, ptr %103, align 4, !tbaa !226
  %104 = icmp eq ptr %0, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %95
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %97) #13
  br label %106

106:                                              ; preds = %95, %105, %82, %86, %78, %70, %54, %58
  %107 = phi ptr [ null, %58 ], [ null, %54 ], [ null, %70 ], [ null, %78 ], [ null, %86 ], [ null, %82 ], [ %97, %105 ], [ %97, %95 ]
  ret ptr %107
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nlastrip_evaluate_controls(ptr noundef %0, float noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !217
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = tail call float @nlastrip_get_frame(ptr noundef %0, float noundef %1, i16 noundef signext 0) #13
  %10 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 9
  store float %9, ptr %10, align 4, !tbaa !225
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i32, ptr %4, align 8, !tbaa !217
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 16
  %17 = load float, ptr %16, align 8, !tbaa !227
  %18 = tail call float @llvm.fabs.f32(float %17)
  store float %18, ptr %16, align 8, !tbaa !227
  %19 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 17
  %20 = load float, ptr %19, align 4, !tbaa !228
  %21 = tail call float @llvm.fabs.f32(float %20)
  store float %21, ptr %19, align 4, !tbaa !228
  %22 = fcmp ult float %18, 0x3E80000000000000
  br i1 %22, label %32, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %25 = load float, ptr %24, align 8, !tbaa !211
  %26 = fadd float %18, %25
  %27 = fcmp ult float %26, %1
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = fsub float %1, %25
  %30 = fdiv float %29, %17
  %31 = tail call float @llvm.fabs.f32(float %30)
  br label %43

32:                                               ; preds = %23, %15
  %33 = fcmp ult float %21, 0x3E80000000000000
  br i1 %33, label %43, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %36 = load float, ptr %35, align 4, !tbaa !212
  %37 = fsub float %36, %21
  %38 = fcmp ugt float %37, %1
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = fsub float %36, %1
  %41 = fdiv float %40, %20
  %42 = tail call float @llvm.fabs.f32(float %41)
  br label %43

43:                                               ; preds = %28, %32, %34, %39
  %44 = phi float [ %31, %28 ], [ %42, %39 ], [ 1.000000e+00, %34 ], [ 1.000000e+00, %32 ]
  %45 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 8
  store float %44, ptr %45, align 8, !tbaa !218
  br label %46

46:                                               ; preds = %43, %11
  %47 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !229
  %49 = icmp eq ptr %48, null
  br i1 %49, label %82, label %50

50:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_NlaStrip, ptr noundef %0, ptr noundef nonnull %3) #13
  %51 = load ptr, ptr %47, align 8, !tbaa !44
  %52 = icmp eq ptr %51, null
  br i1 %52, label %81, label %53

53:                                               ; preds = %50, %78
  %54 = phi ptr [ %79, %78 ], [ %51, %50 ]
  %55 = getelementptr inbounds %struct.FCurve, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !82
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.bActionGroup, ptr %56, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !83
  %61 = and i32 %60, 16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58, %53
  %64 = getelementptr inbounds %struct.FCurve, ptr %54, i64 0, i32 9
  %65 = load i16, ptr %64, align 8, !tbaa !206
  %66 = and i16 %65, 1040
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  call void @calculate_fcurve(ptr noundef nonnull %54, float noundef %1) #13
  %69 = getelementptr inbounds %struct.FCurve, ptr %54, i64 0, i32 12
  %70 = load ptr, ptr %69, align 8, !tbaa !81
  %71 = icmp eq ptr %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.FCurve, ptr %54, i64 0, i32 11
  %74 = load i32, ptr %73, align 4, !tbaa !207
  %75 = getelementptr inbounds %struct.FCurve, ptr %54, i64 0, i32 8
  %76 = load float, ptr %75, align 4, !tbaa !208
  %77 = call fastcc zeroext i8 @animsys_write_rna_setting(ptr noundef nonnull %3, ptr noundef nonnull %70, i32 noundef %74, float noundef %76), !range !38
  br label %78

78:                                               ; preds = %72, %68, %63, %58
  %79 = load ptr, ptr %54, align 8, !tbaa !44
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %53, !llvm.loop !210

81:                                               ; preds = %78, %50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %82

82:                                               ; preds = %81, %46
  %83 = load i32, ptr %4, align 8, !tbaa !217
  %84 = and i32 %83, 192
  %85 = icmp eq i32 %84, 192
  br i1 %85, label %86, label %99

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 9
  %88 = load float, ptr %87, align 4, !tbaa !225
  %89 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 12
  %90 = load float, ptr %89, align 8, !tbaa !230
  %91 = fsub float %88, %90
  %92 = fpext float %91 to double
  %93 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 13
  %94 = load float, ptr %93, align 4, !tbaa !231
  %95 = fsub float %94, %90
  %96 = fpext float %95 to double
  %97 = call double @fmod(double noundef %92, double noundef %96) #13
  %98 = fptrunc double %97 to float
  store float %98, ptr %87, align 4, !tbaa !225
  br label %99

99:                                               ; preds = %86, %82
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nlastrip_evaluate(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  %8 = alloca %struct.NlaEvalStrip, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca %struct.ListBase, align 8
  %12 = alloca float, align 4
  %13 = getelementptr inbounds %struct.NlaEvalStrip, ptr %3, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !221
  %15 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 23
  %16 = load i32, ptr %15, align 8, !tbaa !217
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %454

18:                                               ; preds = %4
  %19 = or disjoint i32 %16, -2147483648
  store i32 %19, ptr %15, align 8, !tbaa !217
  %20 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 21
  %21 = load i16, ptr %20, align 2, !tbaa !219
  switch i16 %21, label %451 [
    i16 0, label %22
    i16 1, label %261
    i16 2, label %396
  ]

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %23 = icmp eq ptr %14, null
  br i1 %23, label %260, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !62
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 7
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef nonnull %29)
  br label %260

31:                                               ; preds = %24
  %32 = load ptr, ptr %0, align 8, !tbaa !97
  %33 = icmp eq ptr %32, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 4
  %36 = load i16, ptr %35, align 8, !tbaa !34
  %37 = sext i16 %36 to i32
  %38 = getelementptr inbounds %struct.bAction, ptr %26, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !53
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 %37, ptr %38, align 8, !tbaa !53
  br label %51

42:                                               ; preds = %34
  %43 = icmp eq i32 %39, %37
  br i1 %43, label %51, label %44

44:                                               ; preds = %42
  %45 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !78
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ID, ptr %26, i64 0, i32 4, i64 2
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull %49, i32 noundef %37, ptr noundef nonnull %35)
  br label %51

51:                                               ; preds = %31, %41, %42, %44, %48
  %52 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !89
  %54 = icmp eq ptr %53, null
  %55 = icmp eq ptr %2, null
  br i1 %54, label %56, label %64

56:                                               ; preds = %51
  br i1 %55, label %79, label %57

57:                                               ; preds = %56
  %58 = load ptr, ptr %2, align 8, !tbaa !89
  %59 = icmp eq ptr %58, null
  br i1 %59, label %79, label %60

60:                                               ; preds = %57
  store ptr %58, ptr %11, align 8, !tbaa !89
  %61 = getelementptr inbounds %struct.ListBase, ptr %2, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !215
  %63 = getelementptr inbounds %struct.ListBase, ptr %11, i64 0, i32 1
  store ptr %62, ptr %63, align 8, !tbaa !215
  br label %79

64:                                               ; preds = %51
  br i1 %55, label %68, label %65

65:                                               ; preds = %64
  %66 = load ptr, ptr %2, align 8, !tbaa !89
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65, %64
  store ptr %53, ptr %11, align 8, !tbaa !89
  %69 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 6, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !215
  %71 = getelementptr inbounds %struct.ListBase, ptr %11, i64 0, i32 1
  store ptr %70, ptr %71, align 8, !tbaa !215
  br label %79

72:                                               ; preds = %65
  store ptr %53, ptr %11, align 8, !tbaa !89
  %73 = getelementptr inbounds %struct.ListBase, ptr %2, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !215
  %75 = getelementptr inbounds %struct.ListBase, ptr %11, i64 0, i32 1
  store ptr %74, ptr %75, align 8, !tbaa !215
  %76 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 6, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !215
  store ptr %66, ptr %77, align 8, !tbaa !232
  %78 = getelementptr inbounds %struct.FModifier, ptr %66, i64 0, i32 1
  store ptr %77, ptr %78, align 8, !tbaa !234
  br label %79

79:                                               ; preds = %72, %68, %60, %57, %56
  %80 = call ptr @evaluate_fmodifiers_storage_new(ptr noundef nonnull %11) #13
  %81 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 9
  %82 = load float, ptr %81, align 4, !tbaa !225
  %83 = call float @evaluate_time_fmodifiers(ptr noundef %80, ptr noundef nonnull %11, ptr noundef null, float noundef 0.000000e+00, float noundef %82) #13
  %84 = load ptr, ptr %25, align 8, !tbaa !62
  %85 = getelementptr inbounds %struct.bAction, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !44
  %87 = icmp eq ptr %86, null
  br i1 %87, label %248, label %88

88:                                               ; preds = %79
  %89 = icmp eq ptr %1, null
  %90 = getelementptr inbounds %struct.PointerRNA, ptr %10, i64 0, i32 2
  %91 = getelementptr inbounds %struct.NlaEvalStrip, ptr %3, i64 0, i32 5
  %92 = getelementptr inbounds %struct.NlaEvalStrip, ptr %3, i64 0, i32 6
  br label %93

93:                                               ; preds = %88, %244
  %94 = phi ptr [ %86, %88 ], [ %246, %244 ]
  %95 = phi i8 [ undef, %88 ], [ %245, %244 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  store float 0.000000e+00, ptr %12, align 4, !tbaa !235
  %96 = getelementptr inbounds %struct.FCurve, ptr %94, i64 0, i32 9
  %97 = load i16, ptr %96, align 8, !tbaa !206
  %98 = and i16 %97, 1040
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %244

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.FCurve, ptr %94, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !82
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.bActionGroup, ptr %102, i64 0, i32 3
  %106 = load i32, ptr %105, align 8, !tbaa !83
  %107 = and i32 %106, 16
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %244

109:                                              ; preds = %104, %100
  %110 = call float @evaluate_fcurve(ptr noundef nonnull %94, float noundef %83) #13
  store float %110, ptr %12, align 4, !tbaa !235
  %111 = load float, ptr %81, align 4, !tbaa !225
  call void @evaluate_value_fmodifiers(ptr noundef %80, ptr noundef nonnull %11, ptr noundef nonnull %94, ptr noundef nonnull %12, float noundef %111) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  br i1 %89, label %201, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.FCurve, ptr %94, i64 0, i32 12
  %114 = load ptr, ptr %113, align 8, !tbaa !81
  %115 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %0, ptr noundef %114, ptr noundef nonnull %10, ptr noundef nonnull %9) #13
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !78
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %201, label %121

121:                                              ; preds = %117
  %122 = call i32 @puts(ptr nonnull dereferenceable(1) @str.36)
  br label %201

123:                                              ; preds = %112
  %124 = load ptr, ptr %9, align 8, !tbaa !44
  %125 = call zeroext i8 @RNA_property_animateable(ptr noundef nonnull %10, ptr noundef %124) #13
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !78
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %201, label %131

131:                                              ; preds = %127
  %132 = call i32 @puts(ptr nonnull dereferenceable(1) @str.35)
  br label %201

133:                                              ; preds = %123
  %134 = load ptr, ptr %9, align 8, !tbaa !44
  %135 = getelementptr inbounds %struct.FCurve, ptr %94, i64 0, i32 11
  %136 = load i32, ptr %135, align 4, !tbaa !207
  %137 = load ptr, ptr %1, align 8, !tbaa !44
  %138 = icmp eq ptr %137, null
  br i1 %138, label %157, label %139

139:                                              ; preds = %133
  %140 = load ptr, ptr %90, align 8, !tbaa !108
  br label %141

141:                                              ; preds = %139, %154
  %142 = phi ptr [ %137, %139 ], [ %155, %154 ]
  %143 = getelementptr inbounds %struct.NlaEvalChannel, ptr %142, i64 0, i32 2, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !236
  %145 = icmp eq ptr %144, %140
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.NlaEvalChannel, ptr %142, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !238
  %149 = icmp eq ptr %148, %134
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.NlaEvalChannel, ptr %142, i64 0, i32 4
  %152 = load i32, ptr %151, align 8, !tbaa !239
  %153 = icmp eq i32 %152, %136
  br i1 %153, label %157, label %154

154:                                              ; preds = %150, %146, %141
  %155 = load ptr, ptr %142, align 8, !tbaa !44
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %141, !llvm.loop !240

157:                                              ; preds = %154, %150, %133
  %158 = phi ptr [ null, %133 ], [ null, %154 ], [ %142, %150 ]
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %201

160:                                              ; preds = %157
  %161 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %162 = call ptr %161(i64 noundef 56, ptr noundef nonnull @.str.28) #13
  call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %162) #13
  %163 = getelementptr inbounds %struct.NlaEvalChannel, ptr %162, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %163, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !241
  %164 = load ptr, ptr %9, align 8, !tbaa !44
  %165 = getelementptr inbounds %struct.NlaEvalChannel, ptr %162, i64 0, i32 3
  store ptr %164, ptr %165, align 8, !tbaa !238
  %166 = load i32, ptr %135, align 4, !tbaa !207
  %167 = getelementptr inbounds %struct.NlaEvalChannel, ptr %162, i64 0, i32 4
  store i32 %166, ptr %167, align 8, !tbaa !239
  %168 = call i32 @RNA_property_type(ptr noundef %164) #13
  switch i32 %168, label %201 [
    i32 0, label %169
    i32 1, label %179
    i32 2, label %189
    i32 4, label %197
  ]

169:                                              ; preds = %160
  %170 = call zeroext i8 @RNA_property_array_check(ptr noundef %164) #13
  %171 = icmp eq i8 %170, 0
  %172 = getelementptr inbounds %struct.NlaEvalChannel, ptr %162, i64 0, i32 5
  br i1 %171, label %176, label %173

173:                                              ; preds = %169
  %174 = call i32 @RNA_property_boolean_get_default_index(ptr noundef nonnull %163, ptr noundef %164, i32 noundef %166) #13
  %175 = sitofp i32 %174 to float
  store float %175, ptr %172, align 4, !tbaa !242
  br label %201

176:                                              ; preds = %169
  %177 = call i32 @RNA_property_boolean_get_default(ptr noundef nonnull %163, ptr noundef %164) #13
  %178 = sitofp i32 %177 to float
  store float %178, ptr %172, align 4, !tbaa !242
  br label %201

179:                                              ; preds = %160
  %180 = call zeroext i8 @RNA_property_array_check(ptr noundef %164) #13
  %181 = icmp eq i8 %180, 0
  %182 = getelementptr inbounds %struct.NlaEvalChannel, ptr %162, i64 0, i32 5
  br i1 %181, label %186, label %183

183:                                              ; preds = %179
  %184 = call i32 @RNA_property_int_get_default_index(ptr noundef nonnull %163, ptr noundef %164, i32 noundef %166) #13
  %185 = sitofp i32 %184 to float
  store float %185, ptr %182, align 4, !tbaa !242
  br label %201

186:                                              ; preds = %179
  %187 = call i32 @RNA_property_int_get_default(ptr noundef nonnull %163, ptr noundef %164) #13
  %188 = sitofp i32 %187 to float
  store float %188, ptr %182, align 4, !tbaa !242
  br label %201

189:                                              ; preds = %160
  %190 = call zeroext i8 @RNA_property_array_check(ptr noundef %164) #13
  %191 = icmp eq i8 %190, 0
  %192 = getelementptr inbounds %struct.NlaEvalChannel, ptr %162, i64 0, i32 5
  br i1 %191, label %195, label %193

193:                                              ; preds = %189
  %194 = call float @RNA_property_float_get_default_index(ptr noundef nonnull %163, ptr noundef %164, i32 noundef %166) #13
  store float %194, ptr %192, align 4, !tbaa !242
  br label %201

195:                                              ; preds = %189
  %196 = call float @RNA_property_float_get_default(ptr noundef nonnull %163, ptr noundef %164) #13
  store float %196, ptr %192, align 4, !tbaa !242
  br label %201

197:                                              ; preds = %160
  %198 = call i32 @RNA_property_enum_get_default(ptr noundef nonnull %163, ptr noundef %164) #13
  %199 = sitofp i32 %198 to float
  %200 = getelementptr inbounds %struct.NlaEvalChannel, ptr %162, i64 0, i32 5
  store float %199, ptr %200, align 4, !tbaa !242
  br label %201

201:                                              ; preds = %197, %195, %193, %186, %183, %176, %173, %160, %157, %131, %127, %121, %117, %109
  %202 = phi i8 [ %95, %109 ], [ %95, %117 ], [ %95, %121 ], [ %95, %127 ], [ %95, %131 ], [ 0, %157 ], [ 1, %160 ], [ 1, %173 ], [ 1, %176 ], [ 1, %183 ], [ 1, %186 ], [ 1, %193 ], [ 1, %195 ], [ 1, %197 ]
  %203 = phi ptr [ null, %109 ], [ null, %117 ], [ null, %121 ], [ null, %127 ], [ null, %131 ], [ %158, %157 ], [ %162, %160 ], [ %162, %173 ], [ %162, %176 ], [ %162, %183 ], [ %162, %186 ], [ %162, %193 ], [ %162, %195 ], [ %162, %197 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  %204 = icmp eq ptr %203, null
  br i1 %204, label %244, label %205

205:                                              ; preds = %201
  %206 = load float, ptr %12, align 4, !tbaa !235
  %207 = load ptr, ptr %13, align 8, !tbaa !221
  %208 = getelementptr inbounds %struct.NlaStrip, ptr %207, i64 0, i32 18
  %209 = load i16, ptr %208, align 8, !tbaa !243
  %210 = getelementptr inbounds %struct.NlaStrip, ptr %207, i64 0, i32 8
  %211 = load float, ptr %210, align 8, !tbaa !218
  %212 = icmp ne i8 %202, 0
  %213 = icmp eq i16 %209, 0
  %214 = select i1 %212, i1 %213, i1 false
  br i1 %214, label %215, label %217

215:                                              ; preds = %205
  %216 = getelementptr inbounds %struct.NlaEvalChannel, ptr %203, i64 0, i32 5
  store float %206, ptr %216, align 4, !tbaa !242
  br label %244

217:                                              ; preds = %205
  %218 = load i16, ptr %91, align 2, !tbaa !223
  %219 = icmp eq i16 %218, 3
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load float, ptr %92, align 4, !tbaa !226
  %222 = fmul float %211, %221
  br label %223

223:                                              ; preds = %220, %217
  %224 = phi float [ %222, %220 ], [ %211, %217 ]
  %225 = call float @llvm.fabs.f32(float %224)
  %226 = fcmp ult float %225, 0x3E80000000000000
  br i1 %226, label %244, label %227

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.NlaEvalChannel, ptr %203, i64 0, i32 5
  %229 = load float, ptr %228, align 4, !tbaa !242
  switch i16 %209, label %240 [
    i16 1, label %230
    i16 2, label %232
    i16 3, label %235
  ]

230:                                              ; preds = %227
  %231 = call float @llvm.fmuladd.f32(float %206, float %224, float %229)
  store float %231, ptr %228, align 4, !tbaa !242
  br label %244

232:                                              ; preds = %227
  %233 = fneg float %206
  %234 = call float @llvm.fmuladd.f32(float %233, float %224, float %229)
  store float %234, ptr %228, align 4, !tbaa !242
  br label %244

235:                                              ; preds = %227
  %236 = fmul float %206, %229
  %237 = fsub float 1.000000e+00, %224
  %238 = fmul float %237, %229
  %239 = call float @llvm.fmuladd.f32(float %224, float %236, float %238)
  store float %239, ptr %228, align 4, !tbaa !242
  br label %244

240:                                              ; preds = %227
  %241 = fsub float 1.000000e+00, %224
  %242 = fmul float %206, %224
  %243 = call float @llvm.fmuladd.f32(float %229, float %241, float %242)
  store float %243, ptr %228, align 4, !tbaa !242
  br label %244

244:                                              ; preds = %240, %235, %232, %230, %223, %215, %201, %104, %93
  %245 = phi i8 [ %202, %201 ], [ %95, %104 ], [ %95, %93 ], [ %202, %215 ], [ %202, %223 ], [ %202, %230 ], [ %202, %232 ], [ %202, %235 ], [ %202, %240 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  %246 = load ptr, ptr %94, align 8, !tbaa !44
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %93, !llvm.loop !244

248:                                              ; preds = %244, %79
  call void @evaluate_fmodifiers_storage_free(ptr noundef %80) #13
  %249 = icmp eq ptr %2, null
  br i1 %249, label %260, label %250

250:                                              ; preds = %248
  %251 = load ptr, ptr %52, align 8, !tbaa !89
  %252 = icmp eq ptr %251, null
  br i1 %252, label %260, label %253

253:                                              ; preds = %250
  %254 = load ptr, ptr %2, align 8, !tbaa !89
  %255 = icmp eq ptr %254, null
  br i1 %255, label %260, label %256

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 6, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !215
  store ptr null, ptr %258, align 8, !tbaa !232
  %259 = getelementptr inbounds %struct.FModifier, ptr %254, i64 0, i32 1
  store ptr null, ptr %259, align 8, !tbaa !234
  br label %260

260:                                              ; preds = %22, %28, %248, %250, %253, %256
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #13
  br label %451

261:                                              ; preds = %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #13
  %262 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 6
  %263 = load ptr, ptr %262, align 8, !tbaa !89
  %264 = icmp eq ptr %263, null
  %265 = icmp eq ptr %2, null
  br i1 %264, label %266, label %274

266:                                              ; preds = %261
  br i1 %265, label %289, label %267

267:                                              ; preds = %266
  %268 = load ptr, ptr %2, align 8, !tbaa !89
  %269 = icmp eq ptr %268, null
  br i1 %269, label %289, label %270

270:                                              ; preds = %267
  store ptr %268, ptr %7, align 8, !tbaa !89
  %271 = getelementptr inbounds %struct.ListBase, ptr %2, i64 0, i32 1
  %272 = load ptr, ptr %271, align 8, !tbaa !215
  %273 = getelementptr inbounds %struct.ListBase, ptr %7, i64 0, i32 1
  store ptr %272, ptr %273, align 8, !tbaa !215
  br label %289

274:                                              ; preds = %261
  br i1 %265, label %278, label %275

275:                                              ; preds = %274
  %276 = load ptr, ptr %2, align 8, !tbaa !89
  %277 = icmp eq ptr %276, null
  br i1 %277, label %278, label %282

278:                                              ; preds = %275, %274
  store ptr %263, ptr %7, align 8, !tbaa !89
  %279 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 6, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !215
  %281 = getelementptr inbounds %struct.ListBase, ptr %7, i64 0, i32 1
  store ptr %280, ptr %281, align 8, !tbaa !215
  br label %289

282:                                              ; preds = %275
  store ptr %263, ptr %7, align 8, !tbaa !89
  %283 = getelementptr inbounds %struct.ListBase, ptr %2, i64 0, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !215
  %285 = getelementptr inbounds %struct.ListBase, ptr %7, i64 0, i32 1
  store ptr %284, ptr %285, align 8, !tbaa !215
  %286 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 6, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !215
  store ptr %276, ptr %287, align 8, !tbaa !232
  %288 = getelementptr inbounds %struct.FModifier, ptr %276, i64 0, i32 1
  store ptr %287, ptr %288, align 8, !tbaa !234
  br label %289

289:                                              ; preds = %266, %267, %270, %278, %282
  %290 = and i32 %16, 2048
  %291 = icmp eq i32 %290, 0
  %292 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 1
  %293 = select i1 %291, ptr %292, ptr %14
  %294 = select i1 %291, ptr %14, ptr %292
  %295 = load ptr, ptr %294, align 8, !tbaa !44
  %296 = load ptr, ptr %293, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !245
  %297 = getelementptr inbounds %struct.NlaEvalStrip, ptr %8, i64 0, i32 5
  store i16 2, ptr %297, align 2, !tbaa !223
  %298 = getelementptr inbounds %struct.NlaEvalStrip, ptr %8, i64 0, i32 3
  store ptr %296, ptr %298, align 8, !tbaa !221
  call void @nlastrip_evaluate(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
  store i16 3, ptr %297, align 2, !tbaa !223
  store ptr %295, ptr %298, align 8, !tbaa !221
  call void @nlastrip_evaluate(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %299 = load ptr, ptr %6, align 8, !tbaa !89
  %300 = icmp eq ptr %299, null
  br i1 %300, label %381, label %301

301:                                              ; preds = %289
  %302 = icmp eq ptr %1, null
  %303 = getelementptr inbounds %struct.NlaEvalStrip, ptr %3, i64 0, i32 5
  %304 = getelementptr inbounds %struct.NlaEvalStrip, ptr %3, i64 0, i32 6
  br label %305

305:                                              ; preds = %301, %378
  %306 = phi ptr [ %299, %301 ], [ %307, %378 ]
  %307 = load ptr, ptr %306, align 8, !tbaa !246
  %308 = getelementptr inbounds %struct.NlaEvalChannel, ptr %306, i64 0, i32 3
  %309 = load ptr, ptr %308, align 8, !tbaa !238
  %310 = getelementptr inbounds %struct.NlaEvalChannel, ptr %306, i64 0, i32 4
  %311 = load i32, ptr %310, align 8, !tbaa !239
  br i1 %302, label %334, label %312

312:                                              ; preds = %305
  %313 = load ptr, ptr %1, align 8, !tbaa !44
  %314 = icmp eq ptr %313, null
  br i1 %314, label %334, label %315

315:                                              ; preds = %312
  %316 = getelementptr inbounds %struct.NlaEvalChannel, ptr %306, i64 0, i32 2, i32 2
  %317 = load ptr, ptr %316, align 8, !tbaa !108
  br label %318

318:                                              ; preds = %315, %331
  %319 = phi ptr [ %313, %315 ], [ %332, %331 ]
  %320 = getelementptr inbounds %struct.NlaEvalChannel, ptr %319, i64 0, i32 2, i32 2
  %321 = load ptr, ptr %320, align 8, !tbaa !236
  %322 = icmp eq ptr %321, %317
  br i1 %322, label %323, label %331

323:                                              ; preds = %318
  %324 = getelementptr inbounds %struct.NlaEvalChannel, ptr %319, i64 0, i32 3
  %325 = load ptr, ptr %324, align 8, !tbaa !238
  %326 = icmp eq ptr %325, %309
  br i1 %326, label %327, label %331

327:                                              ; preds = %323
  %328 = getelementptr inbounds %struct.NlaEvalChannel, ptr %319, i64 0, i32 4
  %329 = load i32, ptr %328, align 8, !tbaa !239
  %330 = icmp eq i32 %329, %311
  br i1 %330, label %334, label %331

331:                                              ; preds = %327, %323, %318
  %332 = load ptr, ptr %319, align 8, !tbaa !44
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %318, !llvm.loop !240

334:                                              ; preds = %331, %327, %312, %305
  %335 = phi ptr [ null, %305 ], [ null, %312 ], [ %319, %327 ], [ null, %331 ]
  %336 = icmp eq ptr %335, null
  br i1 %336, label %377, label %337

337:                                              ; preds = %334
  %338 = getelementptr inbounds %struct.NlaEvalChannel, ptr %306, i64 0, i32 5
  %339 = load float, ptr %338, align 4, !tbaa !242
  %340 = fptoui float %339 to i8
  %341 = load ptr, ptr %13, align 8, !tbaa !221
  %342 = getelementptr inbounds %struct.NlaStrip, ptr %341, i64 0, i32 18
  %343 = load i16, ptr %342, align 8, !tbaa !243
  %344 = getelementptr inbounds %struct.NlaStrip, ptr %341, i64 0, i32 8
  %345 = load float, ptr %344, align 8, !tbaa !218
  %346 = icmp ne i8 %340, 0
  %347 = icmp eq i16 %343, 0
  %348 = select i1 %346, i1 %347, i1 false
  br i1 %348, label %349, label %351

349:                                              ; preds = %337
  %350 = getelementptr inbounds %struct.NlaEvalChannel, ptr %335, i64 0, i32 5
  store float 0.000000e+00, ptr %350, align 4, !tbaa !242
  br label %378

351:                                              ; preds = %337
  %352 = load i16, ptr %303, align 2, !tbaa !223
  %353 = icmp eq i16 %352, 3
  br i1 %353, label %354, label %357

354:                                              ; preds = %351
  %355 = load float, ptr %304, align 4, !tbaa !226
  %356 = fmul float %345, %355
  br label %357

357:                                              ; preds = %354, %351
  %358 = phi float [ %356, %354 ], [ %345, %351 ]
  %359 = call float @llvm.fabs.f32(float %358)
  %360 = fcmp ult float %359, 0x3E80000000000000
  br i1 %360, label %378, label %361

361:                                              ; preds = %357
  %362 = getelementptr inbounds %struct.NlaEvalChannel, ptr %335, i64 0, i32 5
  %363 = load float, ptr %362, align 4, !tbaa !242
  switch i16 %343, label %373 [
    i16 1, label %364
    i16 2, label %366
    i16 3, label %368
  ]

364:                                              ; preds = %361
  %365 = call float @llvm.fmuladd.f32(float %358, float 0.000000e+00, float %363)
  store float %365, ptr %362, align 4, !tbaa !242
  br label %378

366:                                              ; preds = %361
  %367 = call float @llvm.fmuladd.f32(float %358, float -0.000000e+00, float %363)
  store float %367, ptr %362, align 4, !tbaa !242
  br label %378

368:                                              ; preds = %361
  %369 = fmul float %363, 0.000000e+00
  %370 = fsub float 1.000000e+00, %358
  %371 = fmul float %370, %363
  %372 = call float @llvm.fmuladd.f32(float %358, float %369, float %371)
  store float %372, ptr %362, align 4, !tbaa !242
  br label %378

373:                                              ; preds = %361
  %374 = fsub float 1.000000e+00, %358
  %375 = fmul float %358, 0.000000e+00
  %376 = call float @llvm.fmuladd.f32(float %363, float %374, float %375)
  store float %376, ptr %362, align 4, !tbaa !242
  br label %378

377:                                              ; preds = %334
  call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %306) #13
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %306) #13
  br label %378

378:                                              ; preds = %373, %368, %366, %364, %357, %349, %377
  %379 = icmp eq ptr %307, null
  br i1 %379, label %380, label %305, !llvm.loop !247

380:                                              ; preds = %378
  call void @BLI_freelistN(ptr noundef nonnull %6) #13
  br label %381

381:                                              ; preds = %289, %380
  %382 = load ptr, ptr %13, align 8, !tbaa !221
  %383 = icmp eq ptr %2, null
  br i1 %383, label %395, label %384

384:                                              ; preds = %381
  %385 = getelementptr inbounds %struct.NlaStrip, ptr %382, i64 0, i32 6
  %386 = load ptr, ptr %385, align 8, !tbaa !89
  %387 = icmp eq ptr %386, null
  br i1 %387, label %395, label %388

388:                                              ; preds = %384
  %389 = load ptr, ptr %2, align 8, !tbaa !89
  %390 = icmp eq ptr %389, null
  br i1 %390, label %395, label %391

391:                                              ; preds = %388
  %392 = getelementptr inbounds %struct.NlaStrip, ptr %382, i64 0, i32 6, i32 1
  %393 = load ptr, ptr %392, align 8, !tbaa !215
  store ptr null, ptr %393, align 8, !tbaa !232
  %394 = getelementptr inbounds %struct.FModifier, ptr %389, i64 0, i32 1
  store ptr null, ptr %394, align 8, !tbaa !234
  br label %395

395:                                              ; preds = %381, %384, %388, %391
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %451

396:                                              ; preds = %18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %397 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 6
  %398 = load ptr, ptr %397, align 8, !tbaa !89
  %399 = icmp eq ptr %398, null
  %400 = icmp eq ptr %2, null
  br i1 %399, label %401, label %409

401:                                              ; preds = %396
  br i1 %400, label %424, label %402

402:                                              ; preds = %401
  %403 = load ptr, ptr %2, align 8, !tbaa !89
  %404 = icmp eq ptr %403, null
  br i1 %404, label %424, label %405

405:                                              ; preds = %402
  store ptr %403, ptr %5, align 8, !tbaa !89
  %406 = getelementptr inbounds %struct.ListBase, ptr %2, i64 0, i32 1
  %407 = load ptr, ptr %406, align 8, !tbaa !215
  %408 = getelementptr inbounds %struct.ListBase, ptr %5, i64 0, i32 1
  store ptr %407, ptr %408, align 8, !tbaa !215
  br label %424

409:                                              ; preds = %396
  br i1 %400, label %413, label %410

410:                                              ; preds = %409
  %411 = load ptr, ptr %2, align 8, !tbaa !89
  %412 = icmp eq ptr %411, null
  br i1 %412, label %413, label %417

413:                                              ; preds = %410, %409
  store ptr %398, ptr %5, align 8, !tbaa !89
  %414 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 6, i32 1
  %415 = load ptr, ptr %414, align 8, !tbaa !215
  %416 = getelementptr inbounds %struct.ListBase, ptr %5, i64 0, i32 1
  store ptr %415, ptr %416, align 8, !tbaa !215
  br label %424

417:                                              ; preds = %410
  store ptr %398, ptr %5, align 8, !tbaa !89
  %418 = getelementptr inbounds %struct.ListBase, ptr %2, i64 0, i32 1
  %419 = load ptr, ptr %418, align 8, !tbaa !215
  %420 = getelementptr inbounds %struct.ListBase, ptr %5, i64 0, i32 1
  store ptr %419, ptr %420, align 8, !tbaa !215
  %421 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 6, i32 1
  %422 = load ptr, ptr %421, align 8, !tbaa !215
  store ptr %411, ptr %422, align 8, !tbaa !232
  %423 = getelementptr inbounds %struct.FModifier, ptr %411, i64 0, i32 1
  store ptr %422, ptr %423, align 8, !tbaa !234
  br label %424

424:                                              ; preds = %401, %402, %405, %413, %417
  %425 = getelementptr inbounds %struct.NlaEvalStrip, ptr %3, i64 0, i32 6
  %426 = load float, ptr %425, align 4, !tbaa !226
  %427 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 11
  %428 = load float, ptr %427, align 4, !tbaa !212
  %429 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 10
  %430 = load float, ptr %429, align 8, !tbaa !211
  %431 = fsub float %428, %430
  %432 = tail call float @llvm.fmuladd.f32(float %426, float %431, float %430)
  %433 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 2
  %434 = tail call ptr @nlastrips_ctime_get_strip(ptr noundef null, ptr noundef nonnull %433, i16 noundef signext -1, float noundef %432)
  %435 = icmp eq ptr %434, null
  br i1 %435, label %438, label %436

436:                                              ; preds = %424
  call void @nlastrip_evaluate(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %434)
  %437 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %437(ptr noundef nonnull %434) #13
  br label %438

438:                                              ; preds = %424, %436
  %439 = icmp eq ptr %2, null
  br i1 %439, label %450, label %440

440:                                              ; preds = %438
  %441 = load ptr, ptr %397, align 8, !tbaa !89
  %442 = icmp eq ptr %441, null
  br i1 %442, label %450, label %443

443:                                              ; preds = %440
  %444 = load ptr, ptr %2, align 8, !tbaa !89
  %445 = icmp eq ptr %444, null
  br i1 %445, label %450, label %446

446:                                              ; preds = %443
  %447 = getelementptr inbounds %struct.NlaStrip, ptr %14, i64 0, i32 6, i32 1
  %448 = load ptr, ptr %447, align 8, !tbaa !215
  store ptr null, ptr %448, align 8, !tbaa !232
  %449 = getelementptr inbounds %struct.FModifier, ptr %444, i64 0, i32 1
  store ptr null, ptr %449, align 8, !tbaa !234
  br label %450

450:                                              ; preds = %438, %440, %443, %446
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br label %451

451:                                              ; preds = %18, %450, %395, %260
  %452 = load i32, ptr %15, align 8, !tbaa !217
  %453 = and i32 %452, 2147483647
  store i32 %453, ptr %15, align 8, !tbaa !217
  br label %454

454:                                              ; preds = %4, %451
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nladata_flush_channels(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %3, %36
  %7 = phi ptr [ %37, %36 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.NlaEvalChannel, ptr %7, i64 0, i32 2
  %9 = getelementptr inbounds %struct.NlaEvalChannel, ptr %7, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !238
  %11 = getelementptr inbounds %struct.NlaEvalChannel, ptr %7, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !239
  %13 = getelementptr inbounds %struct.NlaEvalChannel, ptr %7, i64 0, i32 5
  %14 = load float, ptr %13, align 4, !tbaa !242
  %15 = tail call i32 @RNA_property_type(ptr noundef %10) #13
  switch i32 %15, label %36 [
    i32 0, label %16
    i32 1, label %23
    i32 2, label %29
    i32 4, label %34
  ]

16:                                               ; preds = %6
  %17 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %10) #13
  %18 = icmp eq i8 %17, 0
  %19 = fcmp ogt float %14, 0x3FEFFFFFC0000000
  %20 = zext i1 %19 to i32
  br i1 %18, label %22, label %21

21:                                               ; preds = %16
  tail call void @RNA_property_boolean_set_index(ptr noundef nonnull %8, ptr noundef %10, i32 noundef %12, i32 noundef %20) #13
  br label %36

22:                                               ; preds = %16
  tail call void @RNA_property_boolean_set(ptr noundef nonnull %8, ptr noundef %10, i32 noundef %20) #13
  br label %36

23:                                               ; preds = %6
  %24 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %10) #13
  %25 = icmp eq i8 %24, 0
  %26 = fptosi float %14 to i32
  br i1 %25, label %28, label %27

27:                                               ; preds = %23
  tail call void @RNA_property_int_set_index(ptr noundef nonnull %8, ptr noundef %10, i32 noundef %12, i32 noundef %26) #13
  br label %36

28:                                               ; preds = %23
  tail call void @RNA_property_int_set(ptr noundef nonnull %8, ptr noundef %10, i32 noundef %26) #13
  br label %36

29:                                               ; preds = %6
  %30 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %10) #13
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @RNA_property_float_set_index(ptr noundef nonnull %8, ptr noundef %10, i32 noundef %12, float noundef %14) #13
  br label %36

33:                                               ; preds = %29
  tail call void @RNA_property_float_set(ptr noundef nonnull %8, ptr noundef %10, float noundef %14) #13
  br label %36

34:                                               ; preds = %6
  %35 = fptosi float %14 to i32
  tail call void @RNA_property_enum_set(ptr noundef nonnull %8, ptr noundef %10, i32 noundef %35) #13
  br label %36

36:                                               ; preds = %6, %32, %33, %27, %28, %21, %22, %34
  %37 = load ptr, ptr %7, align 8, !tbaa !44
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %6, !llvm.loop !248

39:                                               ; preds = %36, %3, %1
  ret void
}

declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #3

declare void @RNA_property_boolean_set_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @RNA_property_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @RNA_property_int_set_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @RNA_property_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @RNA_property_float_set_index(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

declare void @RNA_property_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @RNA_property_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, i16 noundef signext %4) local_unnamed_addr #2 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.NlaStrip, align 8
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca %struct.ListBase, align 8
  %10 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  %11 = icmp eq ptr %1, null
  %12 = icmp eq ptr %2, null
  %13 = or i1 %11, %12
  br i1 %13, label %282, label %14

14:                                               ; preds = %5
  call void @RNA_id_pointer_create(ptr noundef %1, ptr noundef nonnull %10) #13
  %15 = zext i16 %4 to i32
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 8
  %20 = load i32, ptr %19, align 4, !tbaa !249
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %219, label %23

23:                                               ; preds = %18, %14
  %24 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !250
  %26 = icmp eq ptr %25, null
  br i1 %26, label %160, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !49
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %160

32:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %7, i8 0, i64 208, i1 false)
  %33 = load ptr, ptr %24, align 8, !tbaa !44
  %34 = icmp ne ptr %33, null
  br i1 %34, label %35, label %75

35:                                               ; preds = %32, %70
  %36 = phi i1 [ %74, %70 ], [ %34, %32 ]
  %37 = phi ptr [ %73, %70 ], [ %33, %32 ]
  %38 = phi i8 [ %71, %70 ], [ 0, %32 ]
  %39 = phi i16 [ %72, %70 ], [ 0, %32 ]
  %40 = load i32, ptr %28, align 8, !tbaa !49
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.NlaTrack, ptr %37, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !251
  %46 = and i32 %45, 1024
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %43, %35
  %49 = and i32 %40, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.NlaTrack, ptr %37, i64 0, i32 3
  %53 = load i32, ptr %52, align 8, !tbaa !251
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %51, %48
  %57 = getelementptr inbounds %struct.NlaTrack, ptr %37, i64 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !251
  %59 = and i32 %58, 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.NlaTrack, ptr %37, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !253
  %64 = icmp eq ptr %63, null
  %65 = select i1 %64, i8 %38, i8 1
  %66 = call ptr @nlastrips_ctime_get_strip(ptr noundef nonnull %6, ptr noundef nonnull %62, i16 noundef signext %39, float noundef %3)
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.NlaEvalStrip, ptr %66, i64 0, i32 2
  store ptr %37, ptr %69, align 8, !tbaa !254
  br label %70

70:                                               ; preds = %68, %61, %56, %51
  %71 = phi i8 [ %38, %51 ], [ %38, %56 ], [ %65, %68 ], [ %65, %61 ]
  %72 = add i16 %39, 1
  %73 = load ptr, ptr %37, align 8, !tbaa !44
  %74 = icmp ne ptr %73, null
  br i1 %74, label %35, label %75, !llvm.loop !255

75:                                               ; preds = %70, %43, %32
  %76 = phi i8 [ 0, %32 ], [ %71, %70 ], [ %38, %43 ]
  %77 = phi i1 [ %34, %32 ], [ %74, %70 ], [ %36, %43 ]
  %78 = load ptr, ptr %2, align 8, !tbaa !52
  %79 = icmp eq ptr %78, null
  br i1 %79, label %136, label %80

80:                                               ; preds = %75
  %81 = load i32, ptr %28, align 8, !tbaa !49
  %82 = and i32 %81, 5
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %136, label %84

84:                                               ; preds = %80
  %85 = icmp eq i8 %76, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !50
  %89 = icmp eq ptr %88, null
  br i1 %89, label %128, label %90

90:                                               ; preds = %86, %84
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  %91 = getelementptr inbounds %struct.ListBase, ptr %8, i64 0, i32 1
  store ptr %7, ptr %91, align 8, !tbaa !215
  store ptr %7, ptr %8, align 8, !tbaa !89
  %92 = and i32 %81, 8
  %93 = icmp eq i32 %92, 0
  %94 = and i1 %77, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %97, i64 208, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br label %126

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.NlaStrip, ptr %7, i64 0, i32 3
  store ptr %78, ptr %99, align 8, !tbaa !62
  %100 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !56
  %102 = getelementptr inbounds %struct.NlaStrip, ptr %7, i64 0, i32 4
  store ptr %101, ptr %102, align 8, !tbaa !64
  %103 = getelementptr inbounds %struct.NlaStrip, ptr %7, i64 0, i32 12
  %104 = getelementptr inbounds %struct.NlaStrip, ptr %7, i64 0, i32 13
  call void @calc_action_range(ptr noundef nonnull %78, ptr noundef nonnull %103, ptr noundef nonnull %104, i16 noundef signext 1) #13
  %105 = load float, ptr %103, align 8
  %106 = getelementptr inbounds %struct.NlaStrip, ptr %7, i64 0, i32 10
  store float %105, ptr %106, align 8, !tbaa !211
  %107 = load float, ptr %104, align 4
  %108 = fsub float %105, %107
  %109 = call float @llvm.fabs.f32(float %108)
  %110 = fcmp ult float %109, 0x3E80000000000000
  %111 = fadd float %105, 1.000000e+00
  %112 = select i1 %110, float %111, float %107
  %113 = getelementptr inbounds %struct.NlaStrip, ptr %7, i64 0, i32 11
  store float %112, ptr %113, align 4, !tbaa !212
  %114 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 9
  %115 = load i16, ptr %114, align 8, !tbaa !256
  %116 = getelementptr inbounds %struct.NlaStrip, ptr %7, i64 0, i32 18
  store i16 %115, ptr %116, align 8, !tbaa !243
  %117 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 10
  %118 = load i16, ptr %117, align 2, !tbaa !257
  %119 = getelementptr inbounds %struct.NlaStrip, ptr %7, i64 0, i32 19
  store i16 %118, ptr %119, align 2, !tbaa !213
  %120 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 11
  %121 = load float, ptr %120, align 4, !tbaa !45
  %122 = getelementptr inbounds %struct.NlaStrip, ptr %7, i64 0, i32 8
  store float %121, ptr %122, align 8, !tbaa !218
  %123 = getelementptr inbounds %struct.NlaStrip, ptr %7, i64 0, i32 23
  %124 = load i32, ptr %123, align 8, !tbaa !217
  %125 = or i32 %124, 32
  store i32 %125, ptr %123, align 8, !tbaa !217
  br label %126

126:                                              ; preds = %98, %95
  %127 = call ptr @nlastrips_ctime_get_strip(ptr noundef nonnull %6, ptr noundef nonnull %8, i16 noundef signext -1, float noundef %3)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  br label %136

128:                                              ; preds = %86
  %129 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !78
  %130 = and i32 %129, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = call i32 @puts(ptr nonnull dereferenceable(1) @str.37)
  br label %134

134:                                              ; preds = %132, %128
  %135 = load ptr, ptr %2, align 8, !tbaa !52
  call void @animsys_evaluate_action(ptr noundef nonnull %10, ptr noundef %135, ptr poison, float noundef %3)
  call void @BLI_freelistN(ptr noundef nonnull %6) #13
  br label %159

136:                                              ; preds = %126, %80, %75
  %137 = load ptr, ptr %6, align 8, !tbaa !89
  %138 = icmp eq ptr %137, null
  br i1 %138, label %159, label %139

139:                                              ; preds = %136
  %140 = load ptr, ptr %6, align 8, !tbaa !44
  %141 = icmp eq ptr %140, null
  br i1 %141, label %146, label %142

142:                                              ; preds = %139, %142
  %143 = phi ptr [ %144, %142 ], [ %140, %139 ]
  call void @nlastrip_evaluate(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull %143)
  %144 = load ptr, ptr %143, align 8, !tbaa !44
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %142, !llvm.loop !258

146:                                              ; preds = %142, %139
  call void @BLI_freelistN(ptr noundef nonnull %6) #13
  %147 = load ptr, ptr %10, align 8, !tbaa !97
  %148 = icmp eq ptr %147, null
  br i1 %148, label %159, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.ID, ptr %147, i64 0, i32 5
  %151 = load i16, ptr %150, align 2, !tbaa !259
  %152 = and i16 %151, 16384
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = or i16 %151, 4096
  store i16 %155, ptr %150, align 2, !tbaa !259
  %156 = load ptr, ptr @G, align 8, !tbaa !91
  %157 = getelementptr inbounds %struct.ID, ptr %147, i64 0, i32 4
  %158 = load i16, ptr %157, align 8, !tbaa !34
  call void @DAG_id_type_tag(ptr noundef %156, i16 noundef signext %158) #13
  br label %159

159:                                              ; preds = %134, %136, %146, %149, %154
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  call void @nladata_flush_channels(ptr noundef nonnull %9)
  call void @BLI_freelistN(ptr noundef nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  br label %215

160:                                              ; preds = %27, %23
  %161 = load ptr, ptr %2, align 8, !tbaa !52
  %162 = icmp eq ptr %161, null
  br i1 %162, label %215, label %163

163:                                              ; preds = %160
  %164 = load ptr, ptr %10, align 8, !tbaa !97
  %165 = icmp eq ptr %164, null
  br i1 %165, label %183, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.ID, ptr %164, i64 0, i32 4
  %168 = load i16, ptr %167, align 8, !tbaa !34
  %169 = sext i16 %168 to i32
  %170 = getelementptr inbounds %struct.bAction, ptr %161, i64 0, i32 7
  %171 = load i32, ptr %170, align 8, !tbaa !53
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  store i32 %169, ptr %170, align 8, !tbaa !53
  br label %183

174:                                              ; preds = %166
  %175 = icmp eq i32 %171, %169
  br i1 %175, label %183, label %176

176:                                              ; preds = %174
  %177 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !78
  %178 = and i32 %177, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.ID, ptr %161, i64 0, i32 4, i64 2
  %182 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull %181, i32 noundef %169, ptr noundef nonnull %167)
  br label %183

183:                                              ; preds = %163, %173, %174, %176, %180
  %184 = getelementptr inbounds %struct.bAction, ptr %161, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !44
  %186 = icmp eq ptr %185, null
  br i1 %186, label %215, label %187

187:                                              ; preds = %183, %212
  %188 = phi ptr [ %213, %212 ], [ %185, %183 ]
  %189 = getelementptr inbounds %struct.FCurve, ptr %188, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !82
  %191 = icmp eq ptr %190, null
  br i1 %191, label %197, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.bActionGroup, ptr %190, i64 0, i32 3
  %194 = load i32, ptr %193, align 8, !tbaa !83
  %195 = and i32 %194, 16
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %212

197:                                              ; preds = %192, %187
  %198 = getelementptr inbounds %struct.FCurve, ptr %188, i64 0, i32 9
  %199 = load i16, ptr %198, align 8, !tbaa !206
  %200 = and i16 %199, 1040
  %201 = icmp eq i16 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %197
  call void @calculate_fcurve(ptr noundef nonnull %188, float noundef %3) #13
  %203 = getelementptr inbounds %struct.FCurve, ptr %188, i64 0, i32 12
  %204 = load ptr, ptr %203, align 8, !tbaa !81
  %205 = icmp eq ptr %204, null
  br i1 %205, label %212, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.FCurve, ptr %188, i64 0, i32 11
  %208 = load i32, ptr %207, align 4, !tbaa !207
  %209 = getelementptr inbounds %struct.FCurve, ptr %188, i64 0, i32 8
  %210 = load float, ptr %209, align 4, !tbaa !208
  %211 = call fastcc zeroext i8 @animsys_write_rna_setting(ptr noundef nonnull %10, ptr noundef nonnull %204, i32 noundef %208, float noundef %210), !range !38
  br label %212

212:                                              ; preds = %206, %202, %197, %192
  %213 = load ptr, ptr %188, align 8, !tbaa !44
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %187, !llvm.loop !210

215:                                              ; preds = %212, %183, %160, %159
  %216 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 8
  %217 = load i32, ptr %216, align 4, !tbaa !249
  %218 = and i32 %217, -3
  store i32 %218, ptr %216, align 4, !tbaa !249
  br label %219

219:                                              ; preds = %215, %18
  %220 = and i32 %15, 1
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %261, label %222

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 5
  %224 = load ptr, ptr %223, align 8, !tbaa !44
  %225 = icmp eq ptr %224, null
  br i1 %225, label %261, label %226

226:                                              ; preds = %222, %258
  %227 = phi ptr [ %259, %258 ], [ %224, %222 ]
  %228 = getelementptr inbounds %struct.FCurve, ptr %227, i64 0, i32 3
  %229 = load ptr, ptr %228, align 8, !tbaa !67
  %230 = getelementptr inbounds %struct.FCurve, ptr %227, i64 0, i32 9
  %231 = load i16, ptr %230, align 8, !tbaa !206
  %232 = and i16 %231, 1040
  %233 = icmp eq i16 %232, 0
  %234 = icmp ne ptr %229, null
  %235 = select i1 %233, i1 %234, i1 false
  br i1 %235, label %236, label %258

236:                                              ; preds = %226
  %237 = getelementptr inbounds %struct.ChannelDriver, ptr %229, i64 0, i32 6
  %238 = load i32, ptr %237, align 4, !tbaa !260
  %239 = and i32 %238, 1
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %258

241:                                              ; preds = %236
  call void @calculate_fcurve(ptr noundef nonnull %227, float noundef %3) #13
  %242 = getelementptr inbounds %struct.FCurve, ptr %227, i64 0, i32 12
  %243 = load ptr, ptr %242, align 8, !tbaa !81
  %244 = icmp eq ptr %243, null
  br i1 %244, label %251, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.FCurve, ptr %227, i64 0, i32 11
  %247 = load i32, ptr %246, align 4, !tbaa !207
  %248 = getelementptr inbounds %struct.FCurve, ptr %227, i64 0, i32 8
  %249 = load float, ptr %248, align 4, !tbaa !208
  %250 = call fastcc zeroext i8 @animsys_write_rna_setting(ptr noundef nonnull %10, ptr noundef nonnull %243, i32 noundef %247, float noundef %249), !range !38
  br label %251

251:                                              ; preds = %245, %241
  %252 = phi i8 [ %250, %245 ], [ 0, %241 ]
  %253 = load i32, ptr %237, align 4, !tbaa !260
  %254 = and i32 %253, -3
  store i32 %254, ptr %237, align 4, !tbaa !260
  %255 = icmp eq i8 %252, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %251
  %257 = or i32 %254, 1
  store i32 %257, ptr %237, align 4, !tbaa !260
  br label %258

258:                                              ; preds = %256, %251, %236, %226
  %259 = load ptr, ptr %227, align 8, !tbaa !44
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %226, !llvm.loop !262

261:                                              ; preds = %258, %222, %219
  %262 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 6
  %263 = load ptr, ptr %262, align 8, !tbaa !44
  %264 = icmp eq ptr %263, null
  br i1 %264, label %276, label %265

265:                                              ; preds = %261, %265
  %266 = phi ptr [ %274, %265 ], [ %263, %261 ]
  %267 = getelementptr inbounds %struct.AnimOverride, ptr %266, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !263
  %269 = getelementptr inbounds %struct.AnimOverride, ptr %266, i64 0, i32 3
  %270 = load i32, ptr %269, align 8, !tbaa !265
  %271 = getelementptr inbounds %struct.AnimOverride, ptr %266, i64 0, i32 4
  %272 = load float, ptr %271, align 4, !tbaa !266
  %273 = call fastcc zeroext i8 @animsys_write_rna_setting(ptr noundef nonnull %10, ptr noundef %268, i32 noundef %270, float noundef %272), !range !38
  %274 = load ptr, ptr %266, align 8, !tbaa !44
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %265, !llvm.loop !267

276:                                              ; preds = %265, %261
  %277 = icmp eq ptr %0, null
  br i1 %277, label %280, label %278

278:                                              ; preds = %276
  %279 = load ptr, ptr @G, align 8, !tbaa !91
  call void @RNA_property_update_cache_flush(ptr noundef %279, ptr noundef nonnull %0) #13
  call void @RNA_property_update_cache_free() #13
  br label %280

280:                                              ; preds = %278, %276
  %281 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 8
  store i32 0, ptr %281, align 4, !tbaa !249
  br label %282

282:                                              ; preds = %5, %280
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  ret void
}

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_property_update_cache_flush(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_property_update_cache_free() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_animsys_evaluate_all_animation(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2) local_unnamed_addr #2 {
  %4 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !78
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = fpext float %2 to double
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, double noundef %8)
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 34
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 15
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !78
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %559, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.34)
  br label %559

24:                                               ; preds = %14, %10
  %25 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 35
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %49, label %28

28:                                               ; preds = %24, %46
  %29 = phi ptr [ %47, %46 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.ID, ptr %29, i64 0, i32 6
  %31 = load i32, ptr %30, align 4, !tbaa !268
  %32 = getelementptr inbounds %struct.ID, ptr %29, i64 0, i32 5
  %33 = load i16, ptr %32, align 2, !tbaa !259
  %34 = lshr i16 %33, 9
  %35 = and i16 %34, 1
  %36 = zext nneg i16 %35 to i32
  %37 = icmp sgt i32 %31, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %29), !range !38
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.IdAdtTemplate, ptr %29, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !39
  br label %44

44:                                               ; preds = %38, %41
  %45 = phi ptr [ %43, %41 ], [ null, %38 ]
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %29, ptr noundef %45, float noundef %2, i16 noundef signext 2)
  br label %46

46:                                               ; preds = %28, %44
  %47 = load ptr, ptr %29, align 8, !tbaa !44
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %28, !llvm.loop !269

49:                                               ; preds = %46, %24
  %50 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %51 = load ptr, ptr %50, align 8, !tbaa !44
  %52 = icmp eq ptr %51, null
  br i1 %52, label %86, label %53

53:                                               ; preds = %49, %83
  %54 = phi ptr [ %84, %83 ], [ %51, %49 ]
  %55 = getelementptr inbounds %struct.ID, ptr %54, i64 0, i32 6
  %56 = load i32, ptr %55, align 4, !tbaa !268
  %57 = getelementptr inbounds %struct.ID, ptr %54, i64 0, i32 5
  %58 = load i16, ptr %57, align 2, !tbaa !259
  %59 = lshr i16 %58, 9
  %60 = and i16 %59, 1
  %61 = zext nneg i16 %60 to i32
  %62 = icmp sgt i32 %56, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %53
  %64 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %54), !range !38
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.IdAdtTemplate, ptr %54, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !39
  br label %69

69:                                               ; preds = %63, %66
  %70 = phi ptr [ %68, %66 ], [ null, %63 ]
  %71 = getelementptr inbounds %struct.Tex, ptr %54, i64 0, i32 52
  %72 = load ptr, ptr %71, align 8, !tbaa !122
  %73 = icmp eq ptr %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %69
  %75 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %72), !range !38
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.IdAdtTemplate, ptr %72, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !39
  br label %80

80:                                               ; preds = %74, %77
  %81 = phi ptr [ %79, %77 ], [ null, %74 ]
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %72, ptr noundef %81, float noundef %2, i16 noundef signext 2)
  br label %82

82:                                               ; preds = %80, %69
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %54, ptr noundef %70, float noundef %2, i16 noundef signext 2)
  br label %83

83:                                               ; preds = %53, %82
  %84 = load ptr, ptr %54, align 8, !tbaa !44
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %53, !llvm.loop !270

86:                                               ; preds = %83, %49
  %87 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 21
  %88 = load ptr, ptr %87, align 8, !tbaa !44
  %89 = icmp eq ptr %88, null
  br i1 %89, label %123, label %90

90:                                               ; preds = %86, %120
  %91 = phi ptr [ %121, %120 ], [ %88, %86 ]
  %92 = getelementptr inbounds %struct.ID, ptr %91, i64 0, i32 6
  %93 = load i32, ptr %92, align 4, !tbaa !268
  %94 = getelementptr inbounds %struct.ID, ptr %91, i64 0, i32 5
  %95 = load i16, ptr %94, align 2, !tbaa !259
  %96 = lshr i16 %95, 9
  %97 = and i16 %96, 1
  %98 = zext nneg i16 %97 to i32
  %99 = icmp sgt i32 %93, %98
  br i1 %99, label %100, label %120

100:                                              ; preds = %90
  %101 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %91), !range !38
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.IdAdtTemplate, ptr %91, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !39
  br label %106

106:                                              ; preds = %100, %103
  %107 = phi ptr [ %105, %103 ], [ null, %100 ]
  %108 = getelementptr inbounds %struct.Lamp, ptr %91, i64 0, i32 74
  %109 = load ptr, ptr %108, align 8, !tbaa !126
  %110 = icmp eq ptr %109, null
  br i1 %110, label %119, label %111

111:                                              ; preds = %106
  %112 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %109), !range !38
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.IdAdtTemplate, ptr %109, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !39
  br label %117

117:                                              ; preds = %111, %114
  %118 = phi ptr [ %116, %114 ], [ null, %111 ]
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %109, ptr noundef %118, float noundef %2, i16 noundef signext 2)
  br label %119

119:                                              ; preds = %117, %106
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %91, ptr noundef %107, float noundef %2, i16 noundef signext 2)
  br label %120

120:                                              ; preds = %90, %119
  %121 = load ptr, ptr %91, align 8, !tbaa !44
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %90, !llvm.loop !271

123:                                              ; preds = %120, %86
  %124 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %125 = load ptr, ptr %124, align 8, !tbaa !44
  %126 = icmp eq ptr %125, null
  br i1 %126, label %160, label %127

127:                                              ; preds = %123, %157
  %128 = phi ptr [ %158, %157 ], [ %125, %123 ]
  %129 = getelementptr inbounds %struct.ID, ptr %128, i64 0, i32 6
  %130 = load i32, ptr %129, align 4, !tbaa !268
  %131 = getelementptr inbounds %struct.ID, ptr %128, i64 0, i32 5
  %132 = load i16, ptr %131, align 2, !tbaa !259
  %133 = lshr i16 %132, 9
  %134 = and i16 %133, 1
  %135 = zext nneg i16 %134 to i32
  %136 = icmp sgt i32 %130, %135
  br i1 %136, label %137, label %157

137:                                              ; preds = %127
  %138 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %128), !range !38
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.IdAdtTemplate, ptr %128, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !39
  br label %143

143:                                              ; preds = %137, %140
  %144 = phi ptr [ %142, %140 ], [ null, %137 ]
  %145 = getelementptr inbounds %struct.Material, ptr %128, i64 0, i32 103
  %146 = load ptr, ptr %145, align 8, !tbaa !129
  %147 = icmp eq ptr %146, null
  br i1 %147, label %156, label %148

148:                                              ; preds = %143
  %149 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %146), !range !38
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.IdAdtTemplate, ptr %146, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !39
  br label %154

154:                                              ; preds = %148, %151
  %155 = phi ptr [ %153, %151 ], [ null, %148 ]
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %146, ptr noundef %155, float noundef %2, i16 noundef signext 2)
  br label %156

156:                                              ; preds = %154, %143
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %128, ptr noundef %144, float noundef %2, i16 noundef signext 2)
  br label %157

157:                                              ; preds = %127, %156
  %158 = load ptr, ptr %128, align 8, !tbaa !44
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %127, !llvm.loop !272

160:                                              ; preds = %157, %123
  %161 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 22
  %162 = load ptr, ptr %161, align 8, !tbaa !44
  %163 = icmp eq ptr %162, null
  br i1 %163, label %185, label %164

164:                                              ; preds = %160, %182
  %165 = phi ptr [ %183, %182 ], [ %162, %160 ]
  %166 = getelementptr inbounds %struct.ID, ptr %165, i64 0, i32 6
  %167 = load i32, ptr %166, align 4, !tbaa !268
  %168 = getelementptr inbounds %struct.ID, ptr %165, i64 0, i32 5
  %169 = load i16, ptr %168, align 2, !tbaa !259
  %170 = lshr i16 %169, 9
  %171 = and i16 %170, 1
  %172 = zext nneg i16 %171 to i32
  %173 = icmp sgt i32 %167, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %164
  %175 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %165), !range !38
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.IdAdtTemplate, ptr %165, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !39
  br label %180

180:                                              ; preds = %174, %177
  %181 = phi ptr [ %179, %177 ], [ null, %174 ]
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %165, ptr noundef %181, float noundef %2, i16 noundef signext 2)
  br label %182

182:                                              ; preds = %164, %180
  %183 = load ptr, ptr %165, align 8, !tbaa !44
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %164, !llvm.loop !273

185:                                              ; preds = %182, %160
  %186 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 24
  %187 = load ptr, ptr %186, align 8, !tbaa !44
  %188 = icmp eq ptr %187, null
  br i1 %188, label %210, label %189

189:                                              ; preds = %185, %207
  %190 = phi ptr [ %208, %207 ], [ %187, %185 ]
  %191 = getelementptr inbounds %struct.ID, ptr %190, i64 0, i32 6
  %192 = load i32, ptr %191, align 4, !tbaa !268
  %193 = getelementptr inbounds %struct.ID, ptr %190, i64 0, i32 5
  %194 = load i16, ptr %193, align 2, !tbaa !259
  %195 = lshr i16 %194, 9
  %196 = and i16 %195, 1
  %197 = zext nneg i16 %196 to i32
  %198 = icmp sgt i32 %192, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %189
  %200 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %190), !range !38
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.IdAdtTemplate, ptr %190, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !39
  br label %205

205:                                              ; preds = %199, %202
  %206 = phi ptr [ %204, %202 ], [ null, %199 ]
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %190, ptr noundef %206, float noundef %2, i16 noundef signext 2)
  br label %207

207:                                              ; preds = %189, %205
  %208 = load ptr, ptr %190, align 8, !tbaa !44
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %189, !llvm.loop !274

210:                                              ; preds = %207, %185
  %211 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 16
  %212 = load ptr, ptr %211, align 8, !tbaa !44
  %213 = icmp eq ptr %212, null
  br i1 %213, label %235, label %214

214:                                              ; preds = %210, %232
  %215 = phi ptr [ %233, %232 ], [ %212, %210 ]
  %216 = getelementptr inbounds %struct.ID, ptr %215, i64 0, i32 6
  %217 = load i32, ptr %216, align 4, !tbaa !268
  %218 = getelementptr inbounds %struct.ID, ptr %215, i64 0, i32 5
  %219 = load i16, ptr %218, align 2, !tbaa !259
  %220 = lshr i16 %219, 9
  %221 = and i16 %220, 1
  %222 = zext nneg i16 %221 to i32
  %223 = icmp sgt i32 %217, %222
  br i1 %223, label %224, label %232

224:                                              ; preds = %214
  %225 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %215), !range !38
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.IdAdtTemplate, ptr %215, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !39
  br label %230

230:                                              ; preds = %224, %227
  %231 = phi ptr [ %229, %227 ], [ null, %224 ]
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %215, ptr noundef %231, float noundef %2, i16 noundef signext 2)
  br label %232

232:                                              ; preds = %214, %230
  %233 = load ptr, ptr %215, align 8, !tbaa !44
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %214, !llvm.loop !275

235:                                              ; preds = %232, %210
  %236 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 15
  %237 = load ptr, ptr %236, align 8, !tbaa !44
  %238 = icmp eq ptr %237, null
  br i1 %238, label %260, label %239

239:                                              ; preds = %235, %257
  %240 = phi ptr [ %258, %257 ], [ %237, %235 ]
  %241 = getelementptr inbounds %struct.ID, ptr %240, i64 0, i32 6
  %242 = load i32, ptr %241, align 4, !tbaa !268
  %243 = getelementptr inbounds %struct.ID, ptr %240, i64 0, i32 5
  %244 = load i16, ptr %243, align 2, !tbaa !259
  %245 = lshr i16 %244, 9
  %246 = and i16 %245, 1
  %247 = zext nneg i16 %246 to i32
  %248 = icmp sgt i32 %242, %247
  br i1 %248, label %249, label %257

249:                                              ; preds = %239
  %250 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %240), !range !38
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.IdAdtTemplate, ptr %240, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !39
  br label %255

255:                                              ; preds = %249, %252
  %256 = phi ptr [ %254, %252 ], [ null, %249 ]
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %240, ptr noundef %256, float noundef %2, i16 noundef signext 2)
  br label %257

257:                                              ; preds = %239, %255
  %258 = load ptr, ptr %240, align 8, !tbaa !44
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %239, !llvm.loop !276

260:                                              ; preds = %257, %235
  %261 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 33
  %262 = load ptr, ptr %261, align 8, !tbaa !44
  %263 = icmp eq ptr %262, null
  br i1 %263, label %285, label %264

264:                                              ; preds = %260, %282
  %265 = phi ptr [ %283, %282 ], [ %262, %260 ]
  %266 = getelementptr inbounds %struct.ID, ptr %265, i64 0, i32 6
  %267 = load i32, ptr %266, align 4, !tbaa !268
  %268 = getelementptr inbounds %struct.ID, ptr %265, i64 0, i32 5
  %269 = load i16, ptr %268, align 2, !tbaa !259
  %270 = lshr i16 %269, 9
  %271 = and i16 %270, 1
  %272 = zext nneg i16 %271 to i32
  %273 = icmp sgt i32 %267, %272
  br i1 %273, label %274, label %282

274:                                              ; preds = %264
  %275 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %265), !range !38
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct.IdAdtTemplate, ptr %265, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !39
  br label %280

280:                                              ; preds = %274, %277
  %281 = phi ptr [ %279, %277 ], [ null, %274 ]
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %265, ptr noundef %281, float noundef %2, i16 noundef signext 2)
  br label %282

282:                                              ; preds = %264, %280
  %283 = load ptr, ptr %265, align 8, !tbaa !44
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %264, !llvm.loop !277

285:                                              ; preds = %282, %260
  %286 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 20
  %287 = load ptr, ptr %286, align 8, !tbaa !44
  %288 = icmp eq ptr %287, null
  br i1 %288, label %310, label %289

289:                                              ; preds = %285, %307
  %290 = phi ptr [ %308, %307 ], [ %287, %285 ]
  %291 = getelementptr inbounds %struct.ID, ptr %290, i64 0, i32 6
  %292 = load i32, ptr %291, align 4, !tbaa !268
  %293 = getelementptr inbounds %struct.ID, ptr %290, i64 0, i32 5
  %294 = load i16, ptr %293, align 2, !tbaa !259
  %295 = lshr i16 %294, 9
  %296 = and i16 %295, 1
  %297 = zext nneg i16 %296 to i32
  %298 = icmp sgt i32 %292, %297
  br i1 %298, label %299, label %307

299:                                              ; preds = %289
  %300 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %290), !range !38
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %305, label %302

302:                                              ; preds = %299
  %303 = getelementptr inbounds %struct.IdAdtTemplate, ptr %290, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !39
  br label %305

305:                                              ; preds = %299, %302
  %306 = phi ptr [ %304, %302 ], [ null, %299 ]
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %290, ptr noundef %306, float noundef %2, i16 noundef signext 2)
  br label %307

307:                                              ; preds = %289, %305
  %308 = load ptr, ptr %290, align 8, !tbaa !44
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %289, !llvm.loop !278

310:                                              ; preds = %307, %285
  %311 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 14
  %312 = load ptr, ptr %311, align 8, !tbaa !44
  %313 = icmp eq ptr %312, null
  br i1 %313, label %335, label %314

314:                                              ; preds = %310, %332
  %315 = phi ptr [ %333, %332 ], [ %312, %310 ]
  %316 = getelementptr inbounds %struct.ID, ptr %315, i64 0, i32 6
  %317 = load i32, ptr %316, align 4, !tbaa !268
  %318 = getelementptr inbounds %struct.ID, ptr %315, i64 0, i32 5
  %319 = load i16, ptr %318, align 2, !tbaa !259
  %320 = lshr i16 %319, 9
  %321 = and i16 %320, 1
  %322 = zext nneg i16 %321 to i32
  %323 = icmp sgt i32 %317, %322
  br i1 %323, label %324, label %332

324:                                              ; preds = %314
  %325 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %315), !range !38
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %330, label %327

327:                                              ; preds = %324
  %328 = getelementptr inbounds %struct.IdAdtTemplate, ptr %315, i64 0, i32 1
  %329 = load ptr, ptr %328, align 8, !tbaa !39
  br label %330

330:                                              ; preds = %324, %327
  %331 = phi ptr [ %329, %327 ], [ null, %324 ]
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %315, ptr noundef %331, float noundef %2, i16 noundef signext 2)
  br label %332

332:                                              ; preds = %314, %330
  %333 = load ptr, ptr %315, align 8, !tbaa !44
  %334 = icmp eq ptr %333, null
  br i1 %334, label %335, label %314, !llvm.loop !279

335:                                              ; preds = %332, %310
  %336 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 37
  %337 = load ptr, ptr %336, align 8, !tbaa !44
  %338 = icmp eq ptr %337, null
  br i1 %338, label %360, label %339

339:                                              ; preds = %335, %357
  %340 = phi ptr [ %358, %357 ], [ %337, %335 ]
  %341 = getelementptr inbounds %struct.ID, ptr %340, i64 0, i32 6
  %342 = load i32, ptr %341, align 4, !tbaa !268
  %343 = getelementptr inbounds %struct.ID, ptr %340, i64 0, i32 5
  %344 = load i16, ptr %343, align 2, !tbaa !259
  %345 = lshr i16 %344, 9
  %346 = and i16 %345, 1
  %347 = zext nneg i16 %346 to i32
  %348 = icmp sgt i32 %342, %347
  br i1 %348, label %349, label %357

349:                                              ; preds = %339
  %350 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %340), !range !38
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %355, label %352

352:                                              ; preds = %349
  %353 = getelementptr inbounds %struct.IdAdtTemplate, ptr %340, i64 0, i32 1
  %354 = load ptr, ptr %353, align 8, !tbaa !39
  br label %355

355:                                              ; preds = %349, %352
  %356 = phi ptr [ %354, %352 ], [ null, %349 ]
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %340, ptr noundef %356, float noundef %2, i16 noundef signext 2)
  br label %357

357:                                              ; preds = %339, %355
  %358 = load ptr, ptr %340, align 8, !tbaa !44
  %359 = icmp eq ptr %358, null
  br i1 %359, label %360, label %339, !llvm.loop !280

360:                                              ; preds = %357, %335
  %361 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 30
  %362 = load ptr, ptr %361, align 8, !tbaa !44
  %363 = icmp eq ptr %362, null
  br i1 %363, label %385, label %364

364:                                              ; preds = %360, %382
  %365 = phi ptr [ %383, %382 ], [ %362, %360 ]
  %366 = getelementptr inbounds %struct.ID, ptr %365, i64 0, i32 6
  %367 = load i32, ptr %366, align 4, !tbaa !268
  %368 = getelementptr inbounds %struct.ID, ptr %365, i64 0, i32 5
  %369 = load i16, ptr %368, align 2, !tbaa !259
  %370 = lshr i16 %369, 9
  %371 = and i16 %370, 1
  %372 = zext nneg i16 %371 to i32
  %373 = icmp sgt i32 %367, %372
  br i1 %373, label %374, label %382

374:                                              ; preds = %364
  %375 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %365), !range !38
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %380, label %377

377:                                              ; preds = %374
  %378 = getelementptr inbounds %struct.IdAdtTemplate, ptr %365, i64 0, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !39
  br label %380

380:                                              ; preds = %374, %377
  %381 = phi ptr [ %379, %377 ], [ null, %374 ]
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %365, ptr noundef %381, float noundef %2, i16 noundef signext 2)
  br label %382

382:                                              ; preds = %364, %380
  %383 = load ptr, ptr %365, align 8, !tbaa !44
  %384 = icmp eq ptr %383, null
  br i1 %384, label %385, label %364, !llvm.loop !281

385:                                              ; preds = %382, %360
  %386 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 42
  %387 = load ptr, ptr %386, align 8, !tbaa !44
  %388 = icmp eq ptr %387, null
  br i1 %388, label %410, label %389

389:                                              ; preds = %385, %407
  %390 = phi ptr [ %408, %407 ], [ %387, %385 ]
  %391 = getelementptr inbounds %struct.ID, ptr %390, i64 0, i32 6
  %392 = load i32, ptr %391, align 4, !tbaa !268
  %393 = getelementptr inbounds %struct.ID, ptr %390, i64 0, i32 5
  %394 = load i16, ptr %393, align 2, !tbaa !259
  %395 = lshr i16 %394, 9
  %396 = and i16 %395, 1
  %397 = zext nneg i16 %396 to i32
  %398 = icmp sgt i32 %392, %397
  br i1 %398, label %399, label %407

399:                                              ; preds = %389
  %400 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %390), !range !38
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %405, label %402

402:                                              ; preds = %399
  %403 = getelementptr inbounds %struct.IdAdtTemplate, ptr %390, i64 0, i32 1
  %404 = load ptr, ptr %403, align 8, !tbaa !39
  br label %405

405:                                              ; preds = %399, %402
  %406 = phi ptr [ %404, %402 ], [ null, %399 ]
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %390, ptr noundef %406, float noundef %2, i16 noundef signext 2)
  br label %407

407:                                              ; preds = %389, %405
  %408 = load ptr, ptr %390, align 8, !tbaa !44
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %389, !llvm.loop !282

410:                                              ; preds = %407, %385
  %411 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 44
  %412 = load ptr, ptr %411, align 8, !tbaa !44
  %413 = icmp eq ptr %412, null
  br i1 %413, label %435, label %414

414:                                              ; preds = %410, %432
  %415 = phi ptr [ %433, %432 ], [ %412, %410 ]
  %416 = getelementptr inbounds %struct.ID, ptr %415, i64 0, i32 6
  %417 = load i32, ptr %416, align 4, !tbaa !268
  %418 = getelementptr inbounds %struct.ID, ptr %415, i64 0, i32 5
  %419 = load i16, ptr %418, align 2, !tbaa !259
  %420 = lshr i16 %419, 9
  %421 = and i16 %420, 1
  %422 = zext nneg i16 %421 to i32
  %423 = icmp sgt i32 %417, %422
  br i1 %423, label %424, label %432

424:                                              ; preds = %414
  %425 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %415), !range !38
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %430, label %427

427:                                              ; preds = %424
  %428 = getelementptr inbounds %struct.IdAdtTemplate, ptr %415, i64 0, i32 1
  %429 = load ptr, ptr %428, align 8, !tbaa !39
  br label %430

430:                                              ; preds = %424, %427
  %431 = phi ptr [ %429, %427 ], [ null, %424 ]
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %415, ptr noundef %431, float noundef %2, i16 noundef signext 2)
  br label %432

432:                                              ; preds = %414, %430
  %433 = load ptr, ptr %415, align 8, !tbaa !44
  %434 = icmp eq ptr %433, null
  br i1 %434, label %435, label %414, !llvm.loop !283

435:                                              ; preds = %432, %410
  %436 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %437 = load ptr, ptr %436, align 8, !tbaa !44
  %438 = icmp eq ptr %437, null
  br i1 %438, label %460, label %439

439:                                              ; preds = %435, %457
  %440 = phi ptr [ %458, %457 ], [ %437, %435 ]
  %441 = getelementptr inbounds %struct.ID, ptr %440, i64 0, i32 6
  %442 = load i32, ptr %441, align 4, !tbaa !268
  %443 = getelementptr inbounds %struct.ID, ptr %440, i64 0, i32 5
  %444 = load i16, ptr %443, align 2, !tbaa !259
  %445 = lshr i16 %444, 9
  %446 = and i16 %445, 1
  %447 = zext nneg i16 %446 to i32
  %448 = icmp sgt i32 %442, %447
  br i1 %448, label %449, label %457

449:                                              ; preds = %439
  %450 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %440), !range !38
  %451 = icmp eq i8 %450, 0
  br i1 %451, label %455, label %452

452:                                              ; preds = %449
  %453 = getelementptr inbounds %struct.IdAdtTemplate, ptr %440, i64 0, i32 1
  %454 = load ptr, ptr %453, align 8, !tbaa !39
  br label %455

455:                                              ; preds = %449, %452
  %456 = phi ptr [ %454, %452 ], [ null, %449 ]
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %440, ptr noundef %456, float noundef %2, i16 noundef signext 0)
  br label %457

457:                                              ; preds = %439, %455
  %458 = load ptr, ptr %440, align 8, !tbaa !44
  %459 = icmp eq ptr %458, null
  br i1 %459, label %460, label %439, !llvm.loop !284

460:                                              ; preds = %457, %435
  %461 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 43
  %462 = load ptr, ptr %461, align 8, !tbaa !44
  %463 = icmp eq ptr %462, null
  br i1 %463, label %485, label %464

464:                                              ; preds = %460, %482
  %465 = phi ptr [ %483, %482 ], [ %462, %460 ]
  %466 = getelementptr inbounds %struct.ID, ptr %465, i64 0, i32 6
  %467 = load i32, ptr %466, align 4, !tbaa !268
  %468 = getelementptr inbounds %struct.ID, ptr %465, i64 0, i32 5
  %469 = load i16, ptr %468, align 2, !tbaa !259
  %470 = lshr i16 %469, 9
  %471 = and i16 %470, 1
  %472 = zext nneg i16 %471 to i32
  %473 = icmp sgt i32 %467, %472
  br i1 %473, label %474, label %482

474:                                              ; preds = %464
  %475 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %465), !range !38
  %476 = icmp eq i8 %475, 0
  br i1 %476, label %480, label %477

477:                                              ; preds = %474
  %478 = getelementptr inbounds %struct.IdAdtTemplate, ptr %465, i64 0, i32 1
  %479 = load ptr, ptr %478, align 8, !tbaa !39
  br label %480

480:                                              ; preds = %474, %477
  %481 = phi ptr [ %479, %477 ], [ null, %474 ]
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %465, ptr noundef %481, float noundef %2, i16 noundef signext 2)
  br label %482

482:                                              ; preds = %464, %480
  %483 = load ptr, ptr %465, align 8, !tbaa !44
  %484 = icmp eq ptr %483, null
  br i1 %484, label %485, label %464, !llvm.loop !285

485:                                              ; preds = %482, %460
  %486 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 25
  %487 = load ptr, ptr %486, align 8, !tbaa !44
  %488 = icmp eq ptr %487, null
  br i1 %488, label %522, label %489

489:                                              ; preds = %485, %519
  %490 = phi ptr [ %520, %519 ], [ %487, %485 ]
  %491 = getelementptr inbounds %struct.ID, ptr %490, i64 0, i32 6
  %492 = load i32, ptr %491, align 4, !tbaa !268
  %493 = getelementptr inbounds %struct.ID, ptr %490, i64 0, i32 5
  %494 = load i16, ptr %493, align 2, !tbaa !259
  %495 = lshr i16 %494, 9
  %496 = and i16 %495, 1
  %497 = zext nneg i16 %496 to i32
  %498 = icmp sgt i32 %492, %497
  br i1 %498, label %499, label %519

499:                                              ; preds = %489
  %500 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %490), !range !38
  %501 = icmp eq i8 %500, 0
  br i1 %501, label %505, label %502

502:                                              ; preds = %499
  %503 = getelementptr inbounds %struct.IdAdtTemplate, ptr %490, i64 0, i32 1
  %504 = load ptr, ptr %503, align 8, !tbaa !39
  br label %505

505:                                              ; preds = %499, %502
  %506 = phi ptr [ %504, %502 ], [ null, %499 ]
  %507 = getelementptr inbounds %struct.World, ptr %490, i64 0, i32 75
  %508 = load ptr, ptr %507, align 8, !tbaa !146
  %509 = icmp eq ptr %508, null
  br i1 %509, label %518, label %510

510:                                              ; preds = %505
  %511 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %508), !range !38
  %512 = icmp eq i8 %511, 0
  br i1 %512, label %516, label %513

513:                                              ; preds = %510
  %514 = getelementptr inbounds %struct.IdAdtTemplate, ptr %508, i64 0, i32 1
  %515 = load ptr, ptr %514, align 8, !tbaa !39
  br label %516

516:                                              ; preds = %510, %513
  %517 = phi ptr [ %515, %513 ], [ null, %510 ]
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %508, ptr noundef %517, float noundef %2, i16 noundef signext 2)
  br label %518

518:                                              ; preds = %516, %505
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %490, ptr noundef %506, float noundef %2, i16 noundef signext 2)
  br label %519

519:                                              ; preds = %489, %518
  %520 = load ptr, ptr %490, align 8, !tbaa !44
  %521 = icmp eq ptr %520, null
  br i1 %521, label %522, label %489, !llvm.loop !286

522:                                              ; preds = %519, %485
  %523 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %524 = load ptr, ptr %523, align 8, !tbaa !44
  %525 = icmp eq ptr %524, null
  br i1 %525, label %559, label %526

526:                                              ; preds = %522, %556
  %527 = phi ptr [ %557, %556 ], [ %524, %522 ]
  %528 = getelementptr inbounds %struct.ID, ptr %527, i64 0, i32 6
  %529 = load i32, ptr %528, align 4, !tbaa !268
  %530 = getelementptr inbounds %struct.ID, ptr %527, i64 0, i32 5
  %531 = load i16, ptr %530, align 2, !tbaa !259
  %532 = lshr i16 %531, 9
  %533 = and i16 %532, 1
  %534 = zext nneg i16 %533 to i32
  %535 = icmp sgt i32 %529, %534
  br i1 %535, label %536, label %556

536:                                              ; preds = %526
  %537 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %527), !range !38
  %538 = icmp eq i8 %537, 0
  br i1 %538, label %542, label %539

539:                                              ; preds = %536
  %540 = getelementptr inbounds %struct.IdAdtTemplate, ptr %527, i64 0, i32 1
  %541 = load ptr, ptr %540, align 8, !tbaa !39
  br label %542

542:                                              ; preds = %536, %539
  %543 = phi ptr [ %541, %539 ], [ null, %536 ]
  %544 = getelementptr inbounds %struct.Scene, ptr %527, i64 0, i32 18
  %545 = load ptr, ptr %544, align 8, !tbaa !149
  %546 = icmp eq ptr %545, null
  br i1 %546, label %555, label %547

547:                                              ; preds = %542
  %548 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef nonnull %545), !range !38
  %549 = icmp eq i8 %548, 0
  br i1 %549, label %553, label %550

550:                                              ; preds = %547
  %551 = getelementptr inbounds %struct.IdAdtTemplate, ptr %545, i64 0, i32 1
  %552 = load ptr, ptr %551, align 8, !tbaa !39
  br label %553

553:                                              ; preds = %547, %550
  %554 = phi ptr [ %552, %550 ], [ null, %547 ]
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %545, ptr noundef %554, float noundef %2, i16 noundef signext 2)
  br label %555

555:                                              ; preds = %553, %542
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %527, ptr noundef %543, float noundef %2, i16 noundef signext 2)
  br label %556

556:                                              ; preds = %526, %555
  %557 = load ptr, ptr %527, align 8, !tbaa !44
  %558 = icmp eq ptr %557, null
  br i1 %558, label %559, label %526, !llvm.loop !287

559:                                              ; preds = %556, %522, %18, %22
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @rna_path_rename_fix(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #2 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca %struct.PointerRNA, align 8
  %12 = alloca ptr, align 8
  %13 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %1) #14
  %14 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %2) #14
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #14
  %16 = icmp ne ptr %13, null
  %17 = icmp ne ptr %14, null
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %49

19:                                               ; preds = %6
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = getelementptr inbounds i8, ptr %13, i64 %22
  %24 = icmp eq ptr %23, %14
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = icmp eq i8 %5, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  store ptr null, ptr %12, align 8, !tbaa !44
  call void @RNA_id_pointer_create(ptr noundef %0, ptr noundef nonnull %10) #13
  %28 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %10, ptr noundef %4, ptr noundef nonnull %11, ptr noundef nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %27, %25
  %31 = call ptr @BLI_dynstr_new() #13
  %32 = shl i64 %15, 32
  %33 = ashr exact i64 %32, 32
  %34 = getelementptr inbounds i8, ptr %14, i64 %33
  %35 = icmp ugt ptr %13, %4
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i8, ptr %13, align 1, !tbaa !113
  store i8 0, ptr %13, align 1, !tbaa !113
  call void @BLI_dynstr_append(ptr noundef %31, ptr noundef %4) #13
  store i8 %37, ptr %13, align 1, !tbaa !113
  br label %38

38:                                               ; preds = %36, %30
  call void @BLI_dynstr_append(ptr noundef %31, ptr noundef %1) #13
  call void @BLI_dynstr_append(ptr noundef %31, ptr noundef %3) #13
  call void @BLI_dynstr_append(ptr noundef %31, ptr noundef nonnull %34) #13
  %39 = call ptr @BLI_dynstr_get_cstring(ptr noundef %31) #13
  call void @BLI_dynstr_free(ptr noundef %31) #13
  br i1 %26, label %45, label %40

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  store ptr null, ptr %9, align 8, !tbaa !44
  call void @RNA_id_pointer_create(ptr noundef %0, ptr noundef nonnull %7) #13
  %41 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %7, ptr noundef %39, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %42, ptr %39, ptr %4
  %44 = select i1 %42, ptr %4, ptr %39
  br label %45

45:                                               ; preds = %40, %38
  %46 = phi ptr [ %4, %38 ], [ %43, %40 ]
  %47 = phi ptr [ %39, %38 ], [ %44, %40 ]
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %48(ptr noundef %46) #13
  br label %49

49:                                               ; preds = %45, %6, %19, %27
  %50 = phi ptr [ %4, %27 ], [ %4, %19 ], [ %4, %6 ], [ %47, %45 ]
  ret ptr %50
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

declare ptr @BLI_dynstr_new() local_unnamed_addr #3

declare void @BLI_dynstr_append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #3

declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @free_fcurve(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @animsys_write_rna_setting(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3) unnamed_addr #2 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  %7 = call zeroext i8 @RNA_path_resolve_property(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %5) #13
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %98, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !44
  %11 = call zeroext i8 @RNA_property_animateable(ptr noundef nonnull %6, ptr noundef %10) #13
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %108, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !44
  %15 = call i32 @RNA_property_array_length(ptr noundef nonnull %6, ptr noundef %14) #13
  %16 = icmp eq i32 %15, 0
  %17 = icmp sgt i32 %15, %2
  %18 = or i1 %16, %17
  br i1 %18, label %34, label %19

19:                                               ; preds = %13
  %20 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !78
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %108, label %23

23:                                               ; preds = %19
  %24 = icmp eq ptr %0, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %0, align 8, !tbaa !97
  %27 = icmp eq ptr %26, null
  %28 = getelementptr inbounds %struct.ID, ptr %26, i64 0, i32 4, i64 2
  %29 = select i1 %27, ptr @.str.23, ptr %28
  br label %30

30:                                               ; preds = %25, %23
  %31 = phi ptr [ @.str.23, %23 ], [ %29, %25 ]
  %32 = add nsw i32 %15, -1
  %33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef nonnull %31, ptr noundef %1, i32 noundef %2, i32 noundef %32)
  br label %108

34:                                               ; preds = %13
  %35 = load ptr, ptr %5, align 8, !tbaa !44
  %36 = call i32 @RNA_property_type(ptr noundef %35) #13
  switch i32 %36, label %108 [
    i32 0, label %37
    i32 1, label %51
    i32 2, label %64
    i32 4, label %76
  ]

37:                                               ; preds = %34
  %38 = load ptr, ptr %5, align 8, !tbaa !44
  %39 = fcmp ogt float %3, 0x3FEFFFFFC0000000
  %40 = zext i1 %39 to i32
  br i1 %16, label %46, label %41

41:                                               ; preds = %37
  %42 = call i32 @RNA_property_boolean_get_index(ptr noundef nonnull %6, ptr noundef %38, i32 noundef %2) #13
  %43 = icmp eq i32 %42, %40
  br i1 %43, label %83, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %5, align 8, !tbaa !44
  call void @RNA_property_boolean_set_index(ptr noundef nonnull %6, ptr noundef %45, i32 noundef %2, i32 noundef %40) #13
  br label %83

46:                                               ; preds = %37
  %47 = call i32 @RNA_property_boolean_get(ptr noundef nonnull %6, ptr noundef %38) #13
  %48 = icmp eq i32 %47, %40
  br i1 %48, label %83, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %5, align 8, !tbaa !44
  call void @RNA_property_boolean_set(ptr noundef nonnull %6, ptr noundef %50, i32 noundef %40) #13
  br label %83

51:                                               ; preds = %34
  %52 = load ptr, ptr %5, align 8, !tbaa !44
  %53 = fptosi float %3 to i32
  br i1 %16, label %59, label %54

54:                                               ; preds = %51
  %55 = call i32 @RNA_property_int_get_index(ptr noundef nonnull %6, ptr noundef %52, i32 noundef %2) #13
  %56 = icmp eq i32 %55, %53
  br i1 %56, label %83, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %5, align 8, !tbaa !44
  call void @RNA_property_int_set_index(ptr noundef nonnull %6, ptr noundef %58, i32 noundef %2, i32 noundef %53) #13
  br label %83

59:                                               ; preds = %51
  %60 = call i32 @RNA_property_int_get(ptr noundef nonnull %6, ptr noundef %52) #13
  %61 = icmp eq i32 %60, %53
  br i1 %61, label %83, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %5, align 8, !tbaa !44
  call void @RNA_property_int_set(ptr noundef nonnull %6, ptr noundef %63, i32 noundef %53) #13
  br label %83

64:                                               ; preds = %34
  %65 = load ptr, ptr %5, align 8, !tbaa !44
  br i1 %16, label %71, label %66

66:                                               ; preds = %64
  %67 = call float @RNA_property_float_get_index(ptr noundef nonnull %6, ptr noundef %65, i32 noundef %2) #13
  %68 = fcmp une float %67, %3
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load ptr, ptr %5, align 8, !tbaa !44
  call void @RNA_property_float_set_index(ptr noundef nonnull %6, ptr noundef %70, i32 noundef %2, float noundef %3) #13
  br label %83

71:                                               ; preds = %64
  %72 = call float @RNA_property_float_get(ptr noundef nonnull %6, ptr noundef %65) #13
  %73 = fcmp une float %72, %3
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load ptr, ptr %5, align 8, !tbaa !44
  call void @RNA_property_float_set(ptr noundef nonnull %6, ptr noundef %75, float noundef %3) #13
  br label %83

76:                                               ; preds = %34
  %77 = load ptr, ptr %5, align 8, !tbaa !44
  %78 = call i32 @RNA_property_enum_get(ptr noundef nonnull %6, ptr noundef %77) #13
  %79 = fptosi float %3 to i32
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = load ptr, ptr %5, align 8, !tbaa !44
  call void @RNA_property_enum_set(ptr noundef nonnull %6, ptr noundef %82, i32 noundef %79) #13
  br label %83

83:                                               ; preds = %76, %81, %69, %66, %74, %71, %57, %54, %62, %59, %44, %41, %49, %46
  %84 = phi i1 [ true, %81 ], [ false, %76 ], [ true, %69 ], [ false, %66 ], [ true, %74 ], [ false, %71 ], [ true, %57 ], [ false, %54 ], [ true, %62 ], [ false, %59 ], [ true, %44 ], [ false, %41 ], [ true, %49 ], [ false, %46 ]
  %85 = load ptr, ptr %6, align 8
  %86 = icmp ne ptr %85, null
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %108

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.ID, ptr %85, i64 0, i32 5
  %90 = load i16, ptr %89, align 2, !tbaa !259
  %91 = and i16 %90, 16384
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %88
  %94 = or i16 %90, 4096
  store i16 %94, ptr %89, align 2, !tbaa !259
  %95 = load ptr, ptr @G, align 8, !tbaa !91
  %96 = getelementptr inbounds %struct.ID, ptr %85, i64 0, i32 4
  %97 = load i16, ptr %96, align 8, !tbaa !34
  call void @DAG_id_type_tag(ptr noundef %95, i16 noundef signext %97) #13
  br label %108

98:                                               ; preds = %4
  %99 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !78
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %0, align 8, !tbaa !97
  %104 = icmp eq ptr %103, null
  %105 = getelementptr inbounds %struct.ID, ptr %103, i64 0, i32 4, i64 2
  %106 = select i1 %104, ptr @.str.23, ptr %105
  %107 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef nonnull %106, ptr noundef %1, i32 noundef %2)
  br label %108

108:                                              ; preds = %30, %19, %34, %98, %102, %9, %83, %93, %88
  %109 = phi i8 [ 1, %88 ], [ 1, %93 ], [ 1, %83 ], [ 1, %9 ], [ 0, %102 ], [ 0, %98 ], [ 0, %34 ], [ 0, %19 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret i8 %109
}

declare zeroext i8 @RNA_property_animateable(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_property_boolean_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_property_int_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @RNA_property_float_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @DAG_id_type_tag(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare float @nlastrip_get_frame(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare ptr @evaluate_fmodifiers_storage_new(ptr noundef) local_unnamed_addr #3

declare float @evaluate_time_fmodifiers(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #3

declare void @evaluate_value_fmodifiers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @evaluate_fmodifiers_storage_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare i32 @RNA_property_boolean_get_default_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @RNA_property_boolean_get_default(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_property_int_get_default_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @RNA_property_int_get_default(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @RNA_property_float_get_default_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @RNA_property_float_get_default(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_property_enum_get_default(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

declare void @calc_action_range(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"short", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{i8 0, i8 2}
!39 = !{!40, !42, i64 120}
!40 = !{!"IdAdtTemplate", !41, i64 0, !42, i64 120}
!41 = !{!"ID", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !36, i64 32, !35, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !42, i64 112}
!42 = !{!"any pointer", !36, i64 0}
!43 = !{!"int", !36, i64 0}
!44 = !{!42, !42, i64 0}
!45 = !{!46, !48, i64 92}
!46 = !{!"AnimData", !42, i64 0, !42, i64 8, !42, i64 16, !47, i64 24, !42, i64 40, !47, i64 48, !47, i64 64, !43, i64 80, !43, i64 84, !35, i64 88, !35, i64 90, !48, i64 92}
!47 = !{!"ListBase", !42, i64 0, !42, i64 8}
!48 = !{!"float", !36, i64 0}
!49 = !{!46, !43, i64 80}
!50 = !{!46, !42, i64 40}
!51 = !{!46, !42, i64 8}
!52 = !{!46, !42, i64 0}
!53 = !{!54, !43, i64 192}
!54 = !{!"bAction", !41, i64 0, !47, i64 120, !47, i64 136, !47, i64 152, !47, i64 168, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196}
!55 = !{!54, !43, i64 100}
!56 = !{!46, !42, i64 16}
!57 = !{!58, !42, i64 16}
!58 = !{!"AnimMapper", !42, i64 0, !42, i64 8, !42, i64 16, !47, i64 24}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!63, !42, i64 32}
!63 = !{!"NlaStrip", !42, i64 0, !42, i64 8, !47, i64 16, !42, i64 32, !42, i64 40, !47, i64 48, !47, i64 64, !36, i64 80, !48, i64 144, !48, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180, !35, i64 184, !35, i64 186, !35, i64 188, !35, i64 190, !42, i64 192, !43, i64 200, !43, i64 204}
!64 = !{!63, !42, i64 40}
!65 = distinct !{!65, !60, !61}
!66 = !{!46, !42, i64 48}
!67 = !{!68, !42, i64 24}
!68 = !{!"FCurve", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !47, i64 32, !42, i64 48, !42, i64 56, !43, i64 64, !48, i64 68, !35, i64 72, !35, i64 74, !43, i64 76, !42, i64 80, !43, i64 88, !36, i64 92, !48, i64 104, !48, i64 108}
!69 = distinct !{!69, !60, !61}
!70 = !{!71, !35, i64 528}
!71 = !{!"DriverVar", !42, i64 0, !42, i64 8, !36, i64 16, !36, i64 80, !35, i64 528, !35, i64 530, !48, i64 532}
!72 = !{!73, !42, i64 0}
!73 = !{!"DriverTarget", !42, i64 0, !42, i64 8, !36, i64 16, !35, i64 48, !35, i64 50, !43, i64 52}
!74 = !{!41, !42, i64 16}
!75 = distinct !{!75, !60, !61}
!76 = !{!68, !42, i64 0}
!77 = distinct !{!77, !60, !61}
!78 = !{!79, !43, i64 2100}
!79 = !{!"Global", !42, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !47, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !35, i64 2084, !35, i64 2086, !35, i64 2088, !36, i64 2090, !35, i64 2092, !43, i64 2096, !43, i64 2100, !36, i64 2104, !43, i64 2108, !43, i64 2112, !36, i64 2116}
!80 = !{!54, !42, i64 120}
!81 = !{!68, !42, i64 80}
!82 = !{!68, !42, i64 16}
!83 = !{!84, !43, i64 32}
!84 = !{!"bActionGroup", !42, i64 0, !42, i64 8, !47, i64 16, !43, i64 32, !43, i64 36, !36, i64 40, !85, i64 104}
!85 = !{!"ThemeWireColor", !36, i64 0, !36, i64 4, !36, i64 8, !35, i64 12, !35, i64 14}
!86 = distinct !{!86, !60, !61}
!87 = !{!54, !42, i64 152}
!88 = !{!84, !42, i64 0}
!89 = !{!47, !42, i64 0}
!90 = distinct !{!90, !60, !61}
!91 = !{!79, !42, i64 0}
!92 = !{!93, !42, i64 16}
!93 = !{!"LinkData", !42, i64 0, !42, i64 8, !42, i64 16}
!94 = distinct !{!94, !60, !61}
!95 = distinct !{!95, !60, !61}
!96 = distinct !{!96, !60, !61}
!97 = !{!98, !42, i64 0}
!98 = !{!"PointerRNA", !99, i64 0, !42, i64 8, !42, i64 16}
!99 = !{!"", !42, i64 0}
!100 = !{!101, !36, i64 72}
!101 = !{!"ScrArea", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !102, i64 56, !36, i64 72, !36, i64 73, !35, i64 74, !35, i64 76, !35, i64 78, !35, i64 80, !35, i64 82, !35, i64 84, !36, i64 86, !36, i64 87, !42, i64 88, !47, i64 96, !47, i64 112, !47, i64 128, !47, i64 144}
!102 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!103 = !{!104, !43, i64 460}
!104 = !{!"Object", !41, i64 0, !42, i64 120, !42, i64 128, !35, i64 136, !35, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !36, i64 152, !42, i64 216, !42, i64 224, !42, i64 232, !42, i64 240, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288, !42, i64 296, !42, i64 304, !105, i64 312, !42, i64 360, !47, i64 368, !47, i64 384, !47, i64 400, !47, i64 416, !43, i64 432, !43, i64 436, !42, i64 440, !42, i64 448, !43, i64 456, !43, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !48, i64 616, !48, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !43, i64 944, !35, i64 948, !35, i64 950, !35, i64 952, !35, i64 954, !35, i64 956, !35, i64 958, !35, i64 960, !35, i64 962, !35, i64 964, !36, i64 966, !36, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !48, i64 988, !48, i64 992, !48, i64 996, !48, i64 1000, !48, i64 1004, !48, i64 1008, !48, i64 1012, !48, i64 1016, !48, i64 1020, !48, i64 1024, !48, i64 1028, !48, i64 1032, !35, i64 1036, !35, i64 1038, !35, i64 1040, !36, i64 1042, !36, i64 1043, !35, i64 1044, !36, i64 1046, !36, i64 1047, !48, i64 1048, !48, i64 1052, !47, i64 1056, !47, i64 1072, !47, i64 1088, !47, i64 1104, !48, i64 1120, !35, i64 1124, !35, i64 1126, !36, i64 1128, !43, i64 1144, !43, i64 1148, !42, i64 1152, !36, i64 1160, !36, i64 1161, !35, i64 1162, !36, i64 1164, !47, i64 1176, !47, i64 1192, !47, i64 1208, !47, i64 1224, !42, i64 1240, !42, i64 1248, !42, i64 1256, !36, i64 1264, !36, i64 1265, !35, i64 1266, !48, i64 1268, !42, i64 1272, !42, i64 1280, !42, i64 1288, !42, i64 1296, !106, i64 1304, !106, i64 1312, !43, i64 1320, !43, i64 1324, !47, i64 1328, !47, i64 1344, !42, i64 1360, !42, i64 1368, !42, i64 1376, !36, i64 1384, !42, i64 1392, !47, i64 1400, !42, i64 1416}
!105 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !35, i64 16, !35, i64 18, !35, i64 20, !35, i64 22, !35, i64 24, !35, i64 26, !35, i64 28, !35, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!106 = !{!"long", !36, i64 0}
!107 = !{!98, !42, i64 8}
!108 = !{!98, !42, i64 16}
!109 = distinct !{!109, !60, !61}
!110 = distinct !{!110, !60, !61}
!111 = !{!73, !42, i64 8}
!112 = !{!104, !42, i64 296}
!113 = !{!36, !36, i64 0}
!114 = distinct !{!114, !60, !61}
!115 = distinct !{!115, !60, !61}
!116 = distinct !{!116, !60, !61}
!117 = distinct !{!117, !60, !61}
!118 = distinct !{!118, !60, !61}
!119 = distinct !{!119, !60, !61}
!120 = distinct !{!120, !60, !61}
!121 = distinct !{!121, !60, !61}
!122 = !{!123, !42, i64 336}
!123 = !{!"Tex", !41, i64 0, !42, i64 120, !48, i64 128, !48, i64 132, !48, i64 136, !48, i64 140, !48, i64 144, !48, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180, !48, i64 184, !48, i64 188, !48, i64 192, !48, i64 196, !48, i64 200, !48, i64 204, !48, i64 208, !48, i64 212, !35, i64 216, !35, i64 218, !35, i64 220, !35, i64 222, !35, i64 224, !35, i64 226, !35, i64 228, !35, i64 230, !35, i64 232, !35, i64 234, !48, i64 236, !48, i64 240, !48, i64 244, !48, i64 248, !43, i64 252, !43, i64 256, !35, i64 260, !35, i64 262, !35, i64 264, !35, i64 266, !43, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !48, i64 284, !48, i64 288, !48, i64 292, !124, i64 296, !42, i64 336, !42, i64 344, !42, i64 352, !42, i64 360, !42, i64 368, !42, i64 376, !42, i64 384, !42, i64 392, !42, i64 400, !36, i64 408, !36, i64 409}
!124 = !{!"ImageUser", !42, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !35, i64 28, !35, i64 30, !35, i64 32, !35, i64 34, !43, i64 36}
!125 = distinct !{!125, !60, !61}
!126 = !{!127, !42, i64 512}
!127 = !{!"Lamp", !41, i64 0, !42, i64 120, !35, i64 128, !35, i64 130, !43, i64 132, !35, i64 136, !35, i64 138, !48, i64 140, !48, i64 144, !48, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180, !48, i64 184, !48, i64 188, !48, i64 192, !48, i64 196, !42, i64 200, !35, i64 208, !35, i64 210, !48, i64 212, !48, i64 216, !48, i64 220, !48, i64 224, !48, i64 228, !48, i64 232, !48, i64 236, !35, i64 240, !35, i64 242, !35, i64 244, !35, i64 246, !36, i64 248, !36, i64 249, !35, i64 250, !35, i64 252, !35, i64 254, !35, i64 256, !35, i64 258, !48, i64 260, !48, i64 264, !48, i64 268, !48, i64 272, !35, i64 276, !35, i64 278, !35, i64 280, !35, i64 282, !35, i64 284, !35, i64 286, !48, i64 288, !48, i64 292, !48, i64 296, !48, i64 300, !48, i64 304, !48, i64 308, !48, i64 312, !48, i64 316, !48, i64 320, !48, i64 324, !48, i64 328, !48, i64 332, !48, i64 336, !35, i64 340, !36, i64 342, !42, i64 344, !36, i64 352, !35, i64 496, !35, i64 498, !36, i64 500, !42, i64 504, !42, i64 512}
!128 = distinct !{!128, !60, !61}
!129 = !{!130, !42, i64 768}
!130 = !{!"Material", !41, i64 0, !42, i64 120, !35, i64 128, !35, i64 130, !48, i64 132, !48, i64 136, !48, i64 140, !48, i64 144, !48, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180, !48, i64 184, !48, i64 188, !48, i64 192, !48, i64 196, !48, i64 200, !48, i64 204, !48, i64 208, !48, i64 212, !48, i64 216, !48, i64 220, !131, i64 224, !132, i64 312, !48, i64 328, !48, i64 332, !48, i64 336, !48, i64 340, !48, i64 344, !48, i64 348, !48, i64 352, !35, i64 356, !35, i64 358, !35, i64 360, !36, i64 362, !36, i64 363, !48, i64 364, !48, i64 368, !35, i64 372, !35, i64 374, !48, i64 376, !48, i64 380, !48, i64 384, !48, i64 388, !35, i64 392, !35, i64 394, !43, i64 396, !43, i64 400, !43, i64 404, !43, i64 408, !35, i64 412, !35, i64 414, !35, i64 416, !35, i64 418, !48, i64 420, !48, i64 424, !48, i64 428, !48, i64 432, !48, i64 436, !48, i64 440, !48, i64 444, !48, i64 448, !48, i64 452, !48, i64 456, !36, i64 460, !48, i64 524, !48, i64 528, !48, i64 532, !43, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !35, i64 544, !35, i64 546, !35, i64 548, !36, i64 550, !36, i64 551, !35, i64 552, !35, i64 554, !48, i64 556, !48, i64 560, !36, i64 564, !48, i64 580, !48, i64 584, !35, i64 588, !35, i64 590, !42, i64 592, !42, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !35, i64 612, !35, i64 614, !48, i64 616, !48, i64 620, !36, i64 624, !42, i64 768, !42, i64 776, !42, i64 784, !42, i64 792, !48, i64 800, !48, i64 804, !48, i64 808, !48, i64 812, !48, i64 816, !35, i64 820, !35, i64 822, !36, i64 824, !36, i64 836, !48, i64 848, !48, i64 852, !48, i64 856, !48, i64 860, !48, i64 864, !48, i64 868, !48, i64 872, !35, i64 876, !35, i64 878, !43, i64 880, !35, i64 884, !35, i64 886, !36, i64 888, !35, i64 904, !35, i64 906, !35, i64 908, !35, i64 910, !35, i64 912, !36, i64 914, !42, i64 920, !47, i64 928}
!131 = !{!"VolumeSettings", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !48, i64 52, !48, i64 56, !48, i64 60, !35, i64 64, !35, i64 66, !35, i64 68, !35, i64 70, !48, i64 72, !48, i64 76, !48, i64 80, !48, i64 84}
!132 = !{!"GameSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!133 = distinct !{!133, !60, !61}
!134 = distinct !{!134, !60, !61}
!135 = distinct !{!135, !60, !61}
!136 = distinct !{!136, !60, !61}
!137 = distinct !{!137, !60, !61}
!138 = distinct !{!138, !60, !61}
!139 = distinct !{!139, !60, !61}
!140 = distinct !{!140, !60, !61}
!141 = distinct !{!141, !60, !61}
!142 = distinct !{!142, !60, !61}
!143 = distinct !{!143, !60, !61}
!144 = distinct !{!144, !60, !61}
!145 = distinct !{!145, !60, !61}
!146 = !{!147, !42, i64 520}
!147 = !{!"World", !41, i64 0, !42, i64 120, !35, i64 128, !35, i64 130, !35, i64 132, !35, i64 134, !48, i64 136, !48, i64 140, !48, i64 144, !48, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180, !48, i64 184, !48, i64 188, !48, i64 192, !48, i64 196, !35, i64 200, !35, i64 202, !35, i64 204, !35, i64 206, !35, i64 208, !35, i64 210, !35, i64 212, !35, i64 214, !48, i64 216, !48, i64 220, !48, i64 224, !48, i64 228, !48, i64 232, !48, i64 236, !48, i64 240, !48, i64 244, !48, i64 248, !48, i64 252, !48, i64 256, !48, i64 260, !35, i64 264, !35, i64 266, !35, i64 268, !35, i64 270, !48, i64 272, !48, i64 276, !48, i64 280, !48, i64 284, !35, i64 288, !35, i64 290, !35, i64 292, !35, i64 294, !48, i64 296, !48, i64 300, !48, i64 304, !48, i64 308, !48, i64 312, !48, i64 316, !48, i64 320, !35, i64 324, !35, i64 326, !35, i64 328, !35, i64 330, !35, i64 332, !35, i64 334, !42, i64 336, !42, i64 344, !42, i64 352, !36, i64 360, !35, i64 504, !35, i64 506, !36, i64 508, !42, i64 512, !42, i64 520}
!148 = distinct !{!148, !60, !61}
!149 = !{!150, !42, i64 248}
!150 = !{!"Scene", !41, i64 0, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !47, i64 152, !42, i64 168, !42, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !35, i64 244, !36, i64 246, !36, i64 247, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !151, i64 280, !159, i64 4264, !47, i64 4296, !47, i64 4312, !42, i64 4328, !42, i64 4336, !42, i64 4344, !42, i64 4352, !42, i64 4360, !42, i64 4368, !35, i64 4376, !35, i64 4378, !43, i64 4380, !47, i64 4384, !160, i64 4400, !161, i64 4416, !164, i64 4600, !42, i64 4608, !165, i64 4616, !42, i64 4640, !106, i64 4648, !106, i64 4656, !153, i64 4664, !154, i64 4824, !166, i64 4888, !42, i64 4952}
!151 = !{!"RenderData", !152, i64 0, !42, i64 248, !42, i64 256, !155, i64 264, !156, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !48, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !35, i64 432, !35, i64 434, !48, i64 436, !48, i64 440, !48, i64 444, !48, i64 448, !48, i64 452, !35, i64 456, !35, i64 458, !35, i64 460, !35, i64 462, !35, i64 464, !35, i64 466, !43, i64 468, !35, i64 472, !35, i64 474, !35, i64 476, !35, i64 478, !35, i64 480, !35, i64 482, !43, i64 484, !43, i64 488, !35, i64 492, !35, i64 494, !43, i64 496, !43, i64 500, !35, i64 504, !35, i64 506, !35, i64 508, !35, i64 510, !35, i64 512, !36, i64 514, !36, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !35, i64 528, !35, i64 530, !35, i64 532, !35, i64 534, !35, i64 536, !35, i64 538, !35, i64 540, !35, i64 542, !157, i64 544, !157, i64 560, !102, i64 576, !47, i64 592, !35, i64 608, !35, i64 610, !48, i64 612, !48, i64 616, !48, i64 620, !48, i64 624, !43, i64 628, !48, i64 632, !48, i64 636, !48, i64 640, !48, i64 644, !35, i64 648, !35, i64 650, !35, i64 652, !35, i64 654, !35, i64 656, !35, i64 658, !48, i64 660, !48, i64 664, !35, i64 668, !35, i64 670, !48, i64 672, !48, i64 676, !36, i64 680, !43, i64 1704, !35, i64 1708, !35, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !43, i64 2520, !35, i64 2524, !35, i64 2526, !48, i64 2528, !48, i64 2532, !35, i64 2536, !35, i64 2538, !48, i64 2540, !35, i64 2544, !35, i64 2546, !43, i64 2548, !35, i64 2552, !35, i64 2554, !35, i64 2556, !35, i64 2558, !48, i64 2560, !48, i64 2564, !42, i64 2568, !43, i64 2576, !48, i64 2580, !36, i64 2584, !158, i64 2616, !43, i64 3976, !43, i64 3980}
!152 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !35, i64 8, !35, i64 10, !48, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !153, i64 24, !154, i64 184}
!153 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !36, i64 8, !36, i64 72, !48, i64 136, !48, i64 140, !42, i64 144, !42, i64 152}
!154 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!155 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !35, i64 48, !35, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!156 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !48, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !42, i64 64}
!157 = !{!"rctf", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!158 = !{!"BakeData", !152, i64 0, !36, i64 248, !35, i64 1272, !35, i64 1274, !35, i64 1276, !35, i64 1278, !48, i64 1280, !48, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!159 = !{!"AudioData", !43, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !43, i64 16, !35, i64 20, !35, i64 22, !48, i64 24, !48, i64 28}
!160 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!161 = !{!"GameData", !160, i64 0, !35, i64 16, !35, i64 18, !35, i64 20, !35, i64 22, !35, i64 24, !35, i64 26, !35, i64 28, !35, i64 30, !35, i64 32, !36, i64 34, !162, i64 40, !35, i64 64, !35, i64 66, !48, i64 68, !163, i64 72, !48, i64 128, !48, i64 132, !43, i64 136, !35, i64 140, !35, i64 142, !35, i64 144, !35, i64 146, !35, i64 148, !35, i64 150, !35, i64 152, !35, i64 154, !35, i64 156, !35, i64 158, !35, i64 160, !35, i64 162, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180}
!162 = !{!"GameDome", !35, i64 0, !35, i64 2, !35, i64 4, !35, i64 6, !48, i64 8, !48, i64 12, !42, i64 16}
!163 = !{!"RecastData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !43, i64 40, !48, i64 44, !48, i64 48, !35, i64 52, !35, i64 54}
!164 = !{!"UnitSettings", !48, i64 0, !36, i64 4, !36, i64 5, !35, i64 6}
!165 = !{!"PhysicsSettings", !36, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!166 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!167 = distinct !{!167, !60, !61}
!168 = distinct !{!168, !60, !61}
!169 = distinct !{!169, !60, !61}
!170 = distinct !{!170, !60, !61}
!171 = distinct !{!171, !60, !61}
!172 = distinct !{!172, !60, !61}
!173 = distinct !{!173, !60, !61}
!174 = distinct !{!174, !60, !61}
!175 = distinct !{!175, !60, !61}
!176 = distinct !{!176, !60, !61}
!177 = distinct !{!177, !60, !61}
!178 = distinct !{!178, !60, !61}
!179 = distinct !{!179, !60, !61}
!180 = distinct !{!180, !60, !61}
!181 = distinct !{!181, !60, !61}
!182 = distinct !{!182, !60, !61}
!183 = distinct !{!183, !60, !61}
!184 = distinct !{!184, !60, !61}
!185 = distinct !{!185, !60, !61}
!186 = distinct !{!186, !60, !61}
!187 = distinct !{!187, !60, !61}
!188 = !{!189, !42, i64 16}
!189 = !{!"KS_Path", !42, i64 0, !42, i64 8, !42, i64 16, !36, i64 24, !43, i64 88, !35, i64 92, !35, i64 94, !42, i64 96, !43, i64 104, !35, i64 108, !35, i64 110}
!190 = !{!189, !42, i64 96}
!191 = !{!189, !43, i64 104}
!192 = distinct !{!192, !60, !61}
!193 = !{!194, !35, i64 464}
!194 = !{!"KeyingSet", !42, i64 0, !42, i64 8, !47, i64 16, !36, i64 32, !36, i64 96, !36, i64 160, !36, i64 400, !35, i64 464, !35, i64 466, !43, i64 468}
!195 = !{!194, !35, i64 466}
!196 = !{!189, !43, i64 88}
!197 = !{!189, !35, i64 108}
!198 = !{!189, !35, i64 92}
!199 = distinct !{!199, !60, !61}
!200 = distinct !{!200, !60, !61}
!201 = !{!194, !42, i64 16}
!202 = !{!189, !42, i64 0}
!203 = distinct !{!203, !60, !61}
!204 = !{!194, !42, i64 0}
!205 = distinct !{!205, !60, !61}
!206 = !{!68, !35, i64 72}
!207 = !{!68, !43, i64 76}
!208 = !{!68, !48, i64 68}
!209 = distinct !{!209, !60, !61}
!210 = distinct !{!210, !60, !61}
!211 = !{!63, !48, i64 152}
!212 = !{!63, !48, i64 156}
!213 = !{!63, !35, i64 186}
!214 = !{!63, !42, i64 8}
!215 = !{!47, !42, i64 8}
!216 = distinct !{!216, !60, !61}
!217 = !{!63, !43, i64 200}
!218 = !{!63, !48, i64 144}
!219 = !{!63, !35, i64 190}
!220 = !{!63, !42, i64 0}
!221 = !{!222, !42, i64 24}
!222 = !{!"NlaEvalStrip", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !35, i64 32, !35, i64 34, !48, i64 36}
!223 = !{!222, !35, i64 34}
!224 = !{!222, !35, i64 32}
!225 = !{!63, !48, i64 148}
!226 = !{!222, !48, i64 36}
!227 = !{!63, !48, i64 176}
!228 = !{!63, !48, i64 180}
!229 = !{!63, !42, i64 48}
!230 = !{!63, !48, i64 160}
!231 = !{!63, !48, i64 164}
!232 = !{!233, !42, i64 0}
!233 = !{!"FModifier", !42, i64 0, !42, i64 8, !42, i64 16, !36, i64 24, !35, i64 88, !35, i64 90, !48, i64 92, !48, i64 96, !48, i64 100, !48, i64 104, !48, i64 108}
!234 = !{!233, !42, i64 8}
!235 = !{!48, !48, i64 0}
!236 = !{!237, !42, i64 32}
!237 = !{!"NlaEvalChannel", !42, i64 0, !42, i64 8, !98, i64 16, !42, i64 40, !43, i64 48, !48, i64 52}
!238 = !{!237, !42, i64 40}
!239 = !{!237, !43, i64 48}
!240 = distinct !{!240, !60, !61}
!241 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !44}
!242 = !{!237, !48, i64 52}
!243 = !{!63, !35, i64 184}
!244 = distinct !{!244, !60, !61}
!245 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !44, i64 24, i64 8, !44, i64 32, i64 2, !34, i64 34, i64 2, !34, i64 36, i64 4, !235}
!246 = !{!237, !42, i64 0}
!247 = distinct !{!247, !60, !61}
!248 = distinct !{!248, !60, !61}
!249 = !{!46, !43, i64 84}
!250 = !{!46, !42, i64 24}
!251 = !{!252, !43, i64 32}
!252 = !{!"NlaTrack", !42, i64 0, !42, i64 8, !47, i64 16, !43, i64 32, !43, i64 36, !36, i64 40}
!253 = !{!252, !42, i64 16}
!254 = !{!222, !42, i64 16}
!255 = distinct !{!255, !60, !61}
!256 = !{!46, !35, i64 88}
!257 = !{!46, !35, i64 90}
!258 = distinct !{!258, !60, !61}
!259 = !{!41, !35, i64 98}
!260 = !{!261, !43, i64 292}
!261 = !{!"ChannelDriver", !47, i64 0, !36, i64 16, !42, i64 272, !48, i64 280, !48, i64 284, !43, i64 288, !43, i64 292}
!262 = distinct !{!262, !60, !61}
!263 = !{!264, !42, i64 16}
!264 = !{!"AnimOverride", !42, i64 0, !42, i64 8, !42, i64 16, !43, i64 24, !48, i64 28}
!265 = !{!264, !43, i64 24}
!266 = !{!264, !48, i64 28}
!267 = distinct !{!267, !60, !61}
!268 = !{!41, !43, i64 100}
!269 = distinct !{!269, !60, !61}
!270 = distinct !{!270, !60, !61}
!271 = distinct !{!271, !60, !61}
!272 = distinct !{!272, !60, !61}
!273 = distinct !{!273, !60, !61}
!274 = distinct !{!274, !60, !61}
!275 = distinct !{!275, !60, !61}
!276 = distinct !{!276, !60, !61}
!277 = distinct !{!277, !60, !61}
!278 = distinct !{!278, !60, !61}
!279 = distinct !{!279, !60, !61}
!280 = distinct !{!280, !60, !61}
!281 = distinct !{!281, !60, !61}
!282 = distinct !{!282, !60, !61}
!283 = distinct !{!283, !60, !61}
!284 = distinct !{!284, !60, !61}
!285 = distinct !{!285, !60, !61}
!286 = distinct !{!286, !60, !61}
!287 = distinct !{!287, !60, !61}
