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
%struct.NlaEvalChannel = type { ptr, ptr, %struct.PointerRNA, ptr, i32, float }
%struct.ChannelDriver = type { %struct.ListBase, [256 x i8], ptr, float, float, i32, i32 }
%struct.AnimOverride = type { ptr, ptr, ptr, i32, float }
%struct.FModifier = type { ptr, ptr, ptr, [64 x i8], i16, i16, float, float, float, float, float }

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_animdata_from_id(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef %0) #21, !range !38
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_id_add_animdata(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef %0) #21, !range !38
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.IdAdtTemplate, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %10 = tail call ptr %9(i64 noundef 96, ptr noundef nonnull @.str) #22
  store ptr %10, ptr %5, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.AnimData, ptr %10, i64 0, i32 11
  store float 1.000000e+00, ptr %11, align 4, !tbaa !45
  br label %12

12:                                               ; preds = %4, %8, %1
  %13 = phi ptr [ null, %1 ], [ %10, %8 ], [ %6, %4 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_animdata_set_action(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @BKE_animdata_from_id(ptr noundef %1) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @BKE_report(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.1) #22
  br label %40

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.AnimData, ptr %4, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !49
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.AnimData, ptr %4, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.AnimData, ptr %4, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %12, %7
  tail call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.2) #22
  br label %40

21:                                               ; preds = %16
  %22 = load ptr, ptr %4, align 8, !tbaa !52
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @id_us_min(ptr noundef nonnull %22) #22
  br label %25

25:                                               ; preds = %24, %21
  %26 = icmp eq ptr %2, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.bAction, ptr %2, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !53
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %33 = load i16, ptr %32, align 8, !tbaa !34
  %34 = sext i16 %33 to i32
  %35 = icmp eq i32 %29, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %27
  store ptr %2, ptr %4, align 8, !tbaa !52
  tail call void @id_us_plus(ptr noundef nonnull %2) #22
  br label %40

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4, i64 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef nonnull %38, ptr noundef nonnull %32) #22
  br label %40

39:                                               ; preds = %25
  store ptr null, ptr %4, align 8, !tbaa !52
  br label %40

40:                                               ; preds = %39, %37, %36, %20, %6
  %41 = phi i8 [ 0, %6 ], [ 0, %20 ], [ 1, %36 ], [ 0, %37 ], [ 1, %39 ]
  ret i8 %41
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_free_animdata(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef %0) #21, !range !38
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
  tail call void @free_nladata(ptr noundef nonnull %24) #22
  %25 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 5
  tail call void @free_fcurves(ptr noundef nonnull %25) #22
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %26(ptr noundef nonnull %6) #22
  store ptr null, ptr %5, align 8, !tbaa !39
  br label %27

27:                                               ; preds = %4, %23, %1
  ret void
}

; Function Attrs: optsize
declare void @free_nladata(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_fcurves(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_copy_animdata(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %6 = tail call ptr %5(ptr noundef nonnull %0) #22
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !52
  %10 = tail call ptr @BKE_action_copy(ptr noundef %9) #22
  store ptr %10, ptr %6, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = tail call ptr @BKE_action_copy(ptr noundef %12) #22
  %14 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !51
  br label %19

15:                                               ; preds = %4
  %16 = load ptr, ptr %6, align 8, !tbaa !52
  tail call void @id_us_plus(ptr noundef %16) #22
  %17 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  tail call void @id_us_plus(ptr noundef %18) #22
  br label %19

19:                                               ; preds = %15, %8
  %20 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 3
  %21 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  tail call void @copy_nladata(ptr noundef nonnull %20, ptr noundef nonnull %21) #22
  %22 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 5
  %23 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 5
  tail call void @copy_fcurves(ptr noundef nonnull %22, ptr noundef nonnull %23) #22
  %24 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 6
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %24) #21
  br label %25

25:                                               ; preds = %2, %19
  %26 = phi ptr [ %6, %19 ], [ null, %2 ]
  ret ptr %26
}

; Function Attrs: optsize
declare ptr @BKE_action_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_nladata(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_fcurves(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !56 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_copy_animdata_id(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
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
  br i1 %12, label %13, label %19

13:                                               ; preds = %7, %3
  tail call void @BKE_free_animdata(ptr noundef %0) #21
  %14 = tail call ptr @BKE_animdata_from_id(ptr noundef %1) #21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @BKE_copy_animdata(ptr noundef nonnull %14, i8 noundef zeroext %2) #21
  %18 = getelementptr inbounds %struct.IdAdtTemplate, ptr %0, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !39
  br label %19

19:                                               ; preds = %13, %16, %7
  %20 = phi i8 [ 0, %7 ], [ 1, %16 ], [ 1, %13 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_copy_animdata_id_action(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  tail call void @id_us_min(ptr noundef nonnull %5) #22
  %8 = load ptr, ptr %2, align 8, !tbaa !52
  %9 = tail call ptr @BKE_action_copy(ptr noundef %8) #22
  store ptr %9, ptr %2, align 8, !tbaa !52
  br label %10

10:                                               ; preds = %7, %4
  %11 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  tail call void @id_us_min(ptr noundef nonnull %12) #22
  %15 = load ptr, ptr %11, align 8, !tbaa !51
  %16 = tail call ptr @BKE_action_copy(ptr noundef %15) #22
  store ptr %16, ptr %11, align 8, !tbaa !51
  br label %17

17:                                               ; preds = %10, %14, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_animdata_make_local(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @BKE_action_make_local(ptr noundef nonnull %2) #22
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @BKE_action_make_local(ptr noundef nonnull %7) #22
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.AnimMapper, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @BKE_action_make_local(ptr noundef nonnull %16) #22
  br label %19

19:                                               ; preds = %18, %14, %10
  %20 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.NlaTrack, ptr %24, i64 0, i32 2
  tail call fastcc void @make_local_strips(ptr noundef nonnull %25) #21
  %26 = load ptr, ptr %24, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !60

28:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: optsize
declare void @BKE_action_make_local(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_local_strips(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !62 {
  %2 = load ptr, ptr %0, align 8, !tbaa !44
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1, %19
  %5 = phi ptr [ %21, %19 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @BKE_action_make_local(ptr noundef nonnull %7) #22
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.AnimMapper, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @BKE_action_make_local(ptr noundef nonnull %16) #22
  br label %19

19:                                               ; preds = %18, %14, %10
  %20 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 2
  tail call fastcc void @make_local_strips(ptr noundef nonnull %20) #21
  %21 = load ptr, ptr %5, align 8, !tbaa !44
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %4, !llvm.loop !66

23:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_relink_animdata(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.AnimData, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %3, %38
  %8 = phi ptr [ %39, %38 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.FCurve, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %16

13:                                               ; preds = %34, %16
  %14 = load ptr, ptr %17, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  br i1 %15, label %38, label %16, !llvm.loop !70

16:                                               ; preds = %7, %13
  %17 = phi ptr [ %14, %13 ], [ %11, %7 ]
  %18 = getelementptr inbounds %struct.DriverVar, ptr %17, i64 0, i32 4
  %19 = load i16, ptr %18, align 8, !tbaa !71
  %20 = sext i16 %19 to i32
  %21 = icmp sgt i16 %19, 0
  br i1 %21, label %22, label %13

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.DriverVar, ptr %17, i64 0, i32 3
  br label %24

24:                                               ; preds = %22, %34
  %25 = phi i32 [ %35, %34 ], [ 0, %22 ]
  %26 = phi ptr [ %36, %34 ], [ %23, %22 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !73
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ID, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !75
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store ptr %31, ptr %26, align 8, !tbaa !73
  br label %34

34:                                               ; preds = %24, %29, %33
  %35 = add nuw nsw i32 %25, 1
  %36 = getelementptr inbounds %struct.DriverTarget, ptr %26, i64 1
  %37 = icmp eq i32 %35, %20
  br i1 %37, label %13, label %24, !llvm.loop !76

38:                                               ; preds = %13, %7
  %39 = load ptr, ptr %8, align 8, !tbaa !77
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %7, !llvm.loop !78

41:                                               ; preds = %38, %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @action_move_fcurves_by_basepath(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp eq ptr %2, null
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %72, label %13

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %0, ptr noundef %1, ptr noundef %2) #21
  br label %72

15:                                               ; preds = %3
  tail call void @action_groups_clear_tempflags(ptr noundef nonnull %0) #22
  %16 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  %18 = icmp eq ptr %17, null
  br i1 %18, label %52, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 1
  br label %21

21:                                               ; preds = %19, %50
  %22 = phi ptr [ %17, %19 ], [ %23, %50 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !77
  %24 = getelementptr inbounds %struct.FCurve, ptr %22, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !82
  %26 = tail call fastcc zeroext i8 @animpath_matches_basepath(ptr noundef %25, ptr noundef %2) #21, !range !38
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.FCurve, ptr %22, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !83
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @action_groups_remove_channel(ptr noundef %0, ptr noundef nonnull %22) #22
  br label %49

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.bActionGroup, ptr %30, i64 0, i32 5
  %35 = tail call ptr @BKE_action_group_find_name(ptr noundef %1, ptr noundef nonnull %34) #22
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load ptr, ptr %29, align 8, !tbaa !83
  %39 = getelementptr inbounds %struct.bActionGroup, ptr %38, i64 0, i32 5
  %40 = tail call ptr @action_groups_add_new(ptr noundef %1, ptr noundef nonnull %39) #22
  br label %41

41:                                               ; preds = %33, %37
  %42 = phi ptr [ %40, %37 ], [ %35, %33 ]
  %43 = load ptr, ptr %29, align 8, !tbaa !83
  %44 = getelementptr inbounds %struct.bActionGroup, ptr %43, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !84
  %46 = or i32 %45, 1073741824
  store i32 %46, ptr %44, align 8, !tbaa !84
  tail call void @action_groups_remove_channel(ptr noundef %0, ptr noundef nonnull %22) #22
  %47 = icmp eq ptr %42, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  tail call void @action_groups_add_channel(ptr noundef %1, ptr noundef nonnull %42, ptr noundef nonnull %22) #22
  br label %50

49:                                               ; preds = %32, %41
  tail call void @BLI_addtail(ptr noundef nonnull %20, ptr noundef nonnull %22) #22
  br label %50

50:                                               ; preds = %48, %49, %21
  %51 = icmp eq ptr %23, null
  br i1 %51, label %52, label %21, !llvm.loop !87

52:                                               ; preds = %50, %15
  %53 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !88
  %55 = icmp eq ptr %54, null
  br i1 %55, label %72, label %56

56:                                               ; preds = %52, %70
  %57 = phi ptr [ %58, %70 ], [ %54, %52 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !89
  %59 = getelementptr inbounds %struct.bActionGroup, ptr %57, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !84
  %61 = and i32 %60, 1073741824
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.bActionGroup, ptr %57, i64 0, i32 2
  %65 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %64) #21, !range !38
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call void @BLI_freelinkN(ptr noundef nonnull %53, ptr noundef nonnull %57) #22
  br label %70

68:                                               ; preds = %63
  %69 = and i32 %60, -1073741825
  store i32 %69, ptr %59, align 8, !tbaa !84
  br label %70

70:                                               ; preds = %56, %68, %67
  %71 = icmp eq ptr %58, null
  br i1 %71, label %72, label %56, !llvm.loop !90

72:                                               ; preds = %70, %52, %9, %13
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare void @action_groups_clear_tempflags(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @animpath_matches_basepath(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #7 !PGOFuncName !91 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %8 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %7) #23
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 0, %2 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @BKE_action_group_find_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @action_groups_add_new(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @action_groups_remove_channel(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @action_groups_add_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !92 {
  %2 = load ptr, ptr %0, align 8, !tbaa !93
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_animdata_separate_by_basepath(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %78, label %75

11:                                               ; preds = %3
  %12 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #21
  %13 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %1) #21
  %14 = icmp eq ptr %12, null
  %15 = icmp eq ptr %13, null
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %78, label %75

21:                                               ; preds = %11
  %22 = load ptr, ptr %12, align 8, !tbaa !52
  %23 = icmp eq ptr %22, null
  br i1 %23, label %52, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %13, align 8, !tbaa !52
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = icmp eq ptr %25, %22
  br i1 %28, label %29, label %41

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %31 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %32 = getelementptr inbounds %struct.ID, ptr %22, i64 0, i32 4
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef nonnull %32) #21
  %34 = load ptr, ptr %13, align 8, !tbaa !52
  tail call void @id_us_min(ptr noundef %34) #22
  %35 = load ptr, ptr %13, align 8, !tbaa !52
  br label %36

36:                                               ; preds = %24, %29
  %37 = phi ptr [ %35, %29 ], [ %22, %24 ]
  %38 = load ptr, ptr @G, align 8, !tbaa !94
  %39 = getelementptr inbounds %struct.ID, ptr %37, i64 0, i32 4, i64 2
  %40 = tail call ptr @add_empty_action(ptr noundef %38, ptr noundef nonnull %39) #22
  store ptr %40, ptr %13, align 8, !tbaa !52
  br label %41

41:                                               ; preds = %36, %27
  %42 = load ptr, ptr %2, align 8, !tbaa !44
  %43 = icmp eq ptr %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %41, %44
  %45 = phi ptr [ %50, %44 ], [ %42, %41 ]
  %46 = getelementptr inbounds %struct.LinkData, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !95
  %48 = load ptr, ptr %12, align 8, !tbaa !52
  %49 = load ptr, ptr %13, align 8, !tbaa !52
  tail call void @action_move_fcurves_by_basepath(ptr noundef %48, ptr noundef %49, ptr noundef %47) #21
  %50 = load ptr, ptr %45, align 8, !tbaa !44
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %44, !llvm.loop !97

52:                                               ; preds = %44, %41, %21
  %53 = getelementptr inbounds %struct.AnimData, ptr %12, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !67
  %55 = icmp eq ptr %54, null
  br i1 %55, label %78, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.AnimData, ptr %13, i64 0, i32 5
  br label %58

58:                                               ; preds = %56, %73
  %59 = phi ptr [ %54, %56 ], [ %60, %73 ]
  %60 = load ptr, ptr %59, align 8, !tbaa !77
  %61 = getelementptr inbounds %struct.FCurve, ptr %59, i64 0, i32 12
  br label %62

62:                                               ; preds = %66, %58
  %63 = phi ptr [ %2, %58 ], [ %64, %66 ]
  %64 = load ptr, ptr %63, align 8, !tbaa !44
  %65 = icmp eq ptr %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.LinkData, ptr %64, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !95
  %69 = load ptr, ptr %61, align 8, !tbaa !82
  %70 = tail call fastcc zeroext i8 @animpath_matches_basepath(ptr noundef %69, ptr noundef %68) #21, !range !38
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %62, label %72, !llvm.loop !98

72:                                               ; preds = %66
  tail call void @BLI_remlink(ptr noundef nonnull %53, ptr noundef nonnull %59) #22
  tail call void @BLI_addtail(ptr noundef nonnull %57, ptr noundef nonnull %59) #22
  br label %73

73:                                               ; preds = %62, %72
  %74 = icmp eq ptr %60, null
  br i1 %74, label %78, label %58, !llvm.loop !99

75:                                               ; preds = %17, %7
  %76 = phi ptr [ @str.30, %7 ], [ @str, %17 ]
  %77 = tail call i32 @puts(ptr nonnull dereferenceable(1) %76)
  br label %78

78:                                               ; preds = %73, %75, %52, %17, %7
  ret void
}

; Function Attrs: optsize
declare ptr @add_empty_action(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_animdata_driver_path_hack(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = alloca [128 x i8], align 16
  %6 = alloca [128 x i8], align 16
  %7 = load ptr, ptr %1, align 8, !tbaa !100
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #22
  %9 = icmp eq ptr %3, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call ptr @RNA_path_from_ID_to_property(ptr noundef nonnull %1, ptr noundef %2) #22
  br label %12

12:                                               ; preds = %4, %10
  %13 = phi ptr [ %11, %10 ], [ %3, %4 ]
  %14 = icmp eq ptr %8, null
  br i1 %14, label %53, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 8
  %17 = load i8, ptr %16, align 8, !tbaa !103
  %18 = icmp eq i8 %17, 4
  br i1 %18, label %19, label %53

19:                                               ; preds = %15
  %20 = tail call ptr @CTX_data_active_object(ptr noundef %0) #22
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
  %30 = load i32, ptr %29, align 4, !tbaa !106
  %31 = trunc i32 %30 to i16
  %32 = tail call ptr @give_current_material(ptr noundef nonnull %20, i16 noundef signext %31) #22
  %33 = tail call ptr @give_current_material_texture(ptr noundef %32) #22
  %34 = icmp eq ptr %33, %7
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #24
  %36 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 4, i64 2
  %37 = call i64 @BLI_strescape(ptr noundef nonnull %5, ptr noundef nonnull %36, i64 noundef 128) #22
  %38 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4, i64 2
  %39 = call i64 @BLI_strescape(ptr noundef nonnull %6, ptr noundef nonnull %38, i64 noundef 128) #22
  %40 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.8, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %13) #22
  %41 = icmp eq ptr %13, %3
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %43(ptr noundef %13) #22
  br label %44

44:                                               ; preds = %42, %35
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #24
  br label %45

45:                                               ; preds = %28, %44, %24
  %46 = phi ptr [ %13, %24 ], [ %40, %44 ], [ %13, %28 ]
  %47 = icmp eq ptr %13, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !110
  %51 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !111
  call void @RNA_pointer_create(ptr noundef nonnull %20, ptr noundef %50, ptr noundef %52, ptr noundef nonnull %1) #22
  br label %53

53:                                               ; preds = %19, %48, %45, %15, %12
  %54 = phi ptr [ %13, %15 ], [ %13, %12 ], [ %46, %48 ], [ %13, %45 ], [ %13, %19 ]
  ret ptr %54
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_path_from_ID_to_property(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @give_current_material_texture(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_action_fix_paths_rename(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) local_unnamed_addr #2 {
  %9 = icmp eq ptr %0, null
  %10 = icmp eq ptr %1, null
  %11 = or i1 %9, %10
  br i1 %11, label %38, label %12

12:                                               ; preds = %8
  %13 = icmp ne ptr %3, null
  %14 = icmp ne ptr %4, null
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #23
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #23
  %19 = shl i64 %17, 1
  %20 = or disjoint i64 %19, 1
  %21 = alloca i8, i64 %20, align 16
  %22 = shl i64 %18, 1
  %23 = or disjoint i64 %22, 1
  %24 = alloca i8, i64 %23, align 16
  %25 = call i64 @BLI_strescape(ptr noundef nonnull %21, ptr noundef nonnull %3, i64 noundef %20) #22
  %26 = call i64 @BLI_strescape(ptr noundef nonnull %24, ptr noundef nonnull %4, i64 noundef %23) #22
  %27 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.9, ptr noundef nonnull %21) #22
  %28 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.9, ptr noundef nonnull %24) #22
  br label %32

29:                                               ; preds = %12
  %30 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.10, i32 noundef %5) #22
  %31 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.10, i32 noundef %6) #22
  br label %32

32:                                               ; preds = %29, %16
  %33 = phi ptr [ %28, %16 ], [ %31, %29 ]
  %34 = phi ptr [ %27, %16 ], [ %30, %29 ]
  %35 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 1
  call fastcc void @fcurves_path_rename_fix(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %34, ptr noundef %33, ptr noundef nonnull %35, i8 noundef zeroext %7) #21
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %36(ptr noundef %34) #22
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %37(ptr noundef %33) #22
  br label %38

38:                                               ; preds = %8, %32
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fcurves_path_rename_fix(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr nocapture noundef readonly %6, i8 noundef zeroext %7) unnamed_addr #2 !PGOFuncName !112 {
  %9 = load ptr, ptr %6, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %8, %29
  %12 = phi ptr [ %30, %29 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.FCurve, ptr %12, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !82
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %11
  %17 = tail call fastcc ptr @rna_path_rename_fix(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %14, i8 noundef zeroext %7) #21
  store ptr %17, ptr %13, align 8, !tbaa !82
  %18 = icmp eq ptr %17, %14
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.FCurve, ptr %12, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !83
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.bActionGroup, ptr %21, i64 0, i32 5
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %24) #23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = tail call ptr @BLI_strncpy(ptr noundef nonnull %24, ptr noundef %3, i64 noundef 64) #22
  br label %29

29:                                               ; preds = %16, %27, %23, %19, %11
  %30 = load ptr, ptr %12, align 8, !tbaa !44
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %11, !llvm.loop !113

32:                                               ; preds = %29, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_animdata_fix_paths_rename(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i8 noundef zeroext %8) local_unnamed_addr #2 {
  %10 = icmp eq ptr %0, null
  %11 = icmp eq ptr %1, null
  %12 = or i1 %10, %11
  br i1 %12, label %59, label %13

13:                                               ; preds = %9
  %14 = icmp ne ptr %4, null
  %15 = icmp ne ptr %5, null
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #23
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #23
  %20 = shl i64 %18, 1
  %21 = or disjoint i64 %20, 1
  %22 = alloca i8, i64 %21, align 16
  %23 = shl i64 %19, 1
  %24 = or disjoint i64 %23, 1
  %25 = alloca i8, i64 %24, align 16
  %26 = call i64 @BLI_strescape(ptr noundef nonnull %22, ptr noundef nonnull %4, i64 noundef %21) #22
  %27 = call i64 @BLI_strescape(ptr noundef nonnull %25, ptr noundef nonnull %5, i64 noundef %24) #22
  %28 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.9, ptr noundef nonnull %22) #22
  %29 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.9, ptr noundef nonnull %25) #22
  br label %33

30:                                               ; preds = %13
  %31 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.10, i32 noundef %6) #22
  %32 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.10, i32 noundef %7) #22
  br label %33

33:                                               ; preds = %30, %17
  %34 = phi ptr [ %29, %17 ], [ %32, %30 ]
  %35 = phi ptr [ %28, %17 ], [ %31, %30 ]
  %36 = load ptr, ptr %1, align 8, !tbaa !52
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.bAction, ptr %36, i64 0, i32 1
  call fastcc void @fcurves_path_rename_fix(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %35, ptr noundef %34, ptr noundef nonnull %39, i8 noundef zeroext %8) #21
  br label %40

40:                                               ; preds = %38, %33
  %41 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !51
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.bAction, ptr %42, i64 0, i32 1
  call fastcc void @fcurves_path_rename_fix(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %35, ptr noundef %34, ptr noundef nonnull %45, i8 noundef zeroext %8) #21
  br label %46

46:                                               ; preds = %44, %40
  %47 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 5
  call fastcc void @drivers_path_rename_fix(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %35, ptr noundef %34, ptr noundef nonnull %47, i8 noundef zeroext %8) #21
  %48 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !44
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %46, %51
  %52 = phi ptr [ %54, %51 ], [ %49, %46 ]
  %53 = getelementptr inbounds %struct.NlaTrack, ptr %52, i64 0, i32 2
  call fastcc void @nlastrips_path_rename_fix(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %35, ptr noundef %34, ptr noundef nonnull %53, i8 noundef zeroext %8) #21
  %54 = load ptr, ptr %52, align 8, !tbaa !44
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %51, !llvm.loop !114

56:                                               ; preds = %51, %46
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %57(ptr noundef %35) #22
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %58(ptr noundef %34) #22
  br label %59

59:                                               ; preds = %9, %56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drivers_path_rename_fix(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr nocapture noundef readonly %7, i8 noundef zeroext %8) unnamed_addr #2 !PGOFuncName !115 {
  %10 = load ptr, ptr %7, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %82, label %12

12:                                               ; preds = %9
  %13 = icmp eq ptr %1, null
  br label %14

14:                                               ; preds = %12, %79
  %15 = phi ptr [ %10, %12 ], [ %80, %79 ]
  %16 = getelementptr inbounds %struct.FCurve, ptr %15, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !82
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call fastcc ptr @rna_path_rename_fix(ptr noundef %0, ptr noundef %2, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %17, i8 noundef zeroext %8) #21
  store ptr %20, ptr %16, align 8, !tbaa !82
  br label %21

21:                                               ; preds = %19, %14
  %22 = getelementptr inbounds %struct.FCurve, ptr %15, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !68
  %24 = icmp eq ptr %23, null
  br i1 %24, label %79, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %79, label %31

28:                                               ; preds = %73, %31
  %29 = load ptr, ptr %32, align 8, !tbaa !44
  %30 = icmp eq ptr %29, null
  br i1 %30, label %79, label %31, !llvm.loop !116

31:                                               ; preds = %25, %28
  %32 = phi ptr [ %29, %28 ], [ %26, %25 ]
  %33 = getelementptr inbounds %struct.DriverVar, ptr %32, i64 0, i32 4
  %34 = load i16, ptr %33, align 8, !tbaa !71
  %35 = icmp sgt i16 %34, 0
  br i1 %35, label %36, label %28

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.DriverVar, ptr %32, i64 0, i32 3
  br label %38

38:                                               ; preds = %36, %73
  %39 = phi i32 [ %74, %73 ], [ 0, %36 ]
  %40 = phi ptr [ %75, %73 ], [ %37, %36 ]
  %41 = getelementptr inbounds %struct.DriverTarget, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !117
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %40, align 8, !tbaa !73
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = tail call fastcc ptr @rna_path_rename_fix(ptr noundef nonnull %45, ptr noundef %2, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %42, i8 noundef zeroext %8) #21
  store ptr %48, ptr %41, align 8, !tbaa !117
  br label %49

49:                                               ; preds = %47, %44, %38
  %50 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.20) #23
  %51 = icmp eq ptr %50, null
  br i1 %51, label %73, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %40, align 8, !tbaa !73
  %54 = icmp eq ptr %53, null
  br i1 %54, label %73, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.ID, ptr %53, i64 0, i32 4
  %57 = load i16, ptr %56, align 8, !tbaa !34
  %58 = icmp eq i16 %57, 16975
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  br i1 %13, label %64, label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.Object, ptr %53, i64 0, i32 19
  %62 = load ptr, ptr %61, align 8, !tbaa !118
  %63 = icmp eq ptr %62, %1
  br i1 %63, label %64, label %73

64:                                               ; preds = %60, %59
  %65 = getelementptr inbounds %struct.DriverTarget, ptr %40, i64 0, i32 2
  %66 = load i8, ptr %65, align 8, !tbaa !119
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %65) #23
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = tail call ptr @BLI_strncpy(ptr noundef nonnull %65, ptr noundef %4, i64 noundef 32) #22
  br label %73

73:                                               ; preds = %49, %71, %68, %64, %60, %55, %52
  %74 = add nuw nsw i32 %39, 1
  %75 = getelementptr inbounds %struct.DriverTarget, ptr %40, i64 1
  %76 = load i16, ptr %33, align 8, !tbaa !71
  %77 = sext i16 %76 to i32
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %38, label %28, !llvm.loop !120

79:                                               ; preds = %28, %25, %21
  %80 = load ptr, ptr %15, align 8, !tbaa !44
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %14, !llvm.loop !121

82:                                               ; preds = %79, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nlastrips_path_rename_fix(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr nocapture noundef readonly %6, i8 noundef zeroext %7) unnamed_addr #2 !PGOFuncName !122 {
  %9 = load ptr, ptr %6, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %18
  %12 = phi ptr [ %20, %18 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.NlaStrip, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !63
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bAction, ptr %14, i64 0, i32 1
  tail call fastcc void @fcurves_path_rename_fix(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %17, i8 noundef zeroext %7) #21
  br label %18

18:                                               ; preds = %16, %11
  %19 = getelementptr inbounds %struct.NlaStrip, ptr %12, i64 0, i32 2
  tail call fastcc void @nlastrips_path_rename_fix(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %19, i8 noundef zeroext %7) #21
  %20 = load ptr, ptr %12, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %11, !llvm.loop !123

22:                                               ; preds = %18, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_animdata_fix_paths_remove(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call zeroext i8 @id_type_can_have_animdata(ptr noundef %0) #21, !range !38
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.IdAdtTemplate, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.bAction, ptr %10, i64 0, i32 1
  tail call fastcc void @fcurves_path_remove_fix(ptr noundef %1, ptr noundef nonnull %13) #21
  br label %14

14:                                               ; preds = %12, %9
  %15 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bAction, ptr %16, i64 0, i32 1
  tail call fastcc void @fcurves_path_remove_fix(ptr noundef %1, ptr noundef nonnull %19) #21
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 5
  tail call fastcc void @fcurves_path_remove_fix(ptr noundef %1, ptr noundef nonnull %21) #21
  %22 = getelementptr inbounds %struct.AnimData, ptr %7, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %28, %25 ], [ %23, %20 ]
  %27 = getelementptr inbounds %struct.NlaTrack, ptr %26, i64 0, i32 2
  tail call fastcc void @nlastrips_path_remove_fix(ptr noundef %1, ptr noundef nonnull %27) #21
  %28 = load ptr, ptr %26, align 8, !tbaa !44
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %25, !llvm.loop !124

30:                                               ; preds = %25, %20, %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fcurves_path_remove_fix(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #2 !PGOFuncName !125 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !93
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %4, %18
  %8 = phi ptr [ %9, %18 ], [ %5, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = getelementptr inbounds %struct.FCurve, ptr %8, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %15 = tail call i32 @strncmp(ptr noundef nonnull %11, ptr noundef nonnull %0, i64 noundef %14) #23
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef nonnull %8) #22
  tail call void @free_fcurve(ptr noundef nonnull %8) #22
  br label %18

18:                                               ; preds = %7, %17, %13
  %19 = icmp eq ptr %9, null
  br i1 %19, label %20, label %7, !llvm.loop !126

20:                                               ; preds = %18, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nlastrips_path_remove_fix(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !127 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %12
  %6 = phi ptr [ %14, %12 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.bAction, ptr %8, i64 0, i32 1
  tail call fastcc void @fcurves_path_remove_fix(ptr noundef %0, ptr noundef nonnull %11) #21
  br label %12

12:                                               ; preds = %10, %5
  %13 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 2
  tail call fastcc void @nlastrips_path_remove_fix(ptr noundef %0, ptr noundef nonnull %13) #21
  %14 = load ptr, ptr %6, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !128

16:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_animdata_main_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 35
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3, %12
  %8 = phi ptr [ %13, %12 ], [ %5, %3 ]
  %9 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %8) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void %1(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %2) #22
  br label %12

12:                                               ; preds = %11, %7
  %13 = load ptr, ptr %8, align 8, !tbaa !44
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7, !llvm.loop !129

15:                                               ; preds = %12, %3
  %16 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %15, %32
  %20 = phi ptr [ %33, %32 ], [ %17, %15 ]
  %21 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %20) #21
  %22 = getelementptr inbounds %struct.Tex, ptr %20, i64 0, i32 52
  %23 = load ptr, ptr %22, align 8, !tbaa !130
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %23) #21
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void %1(ptr noundef nonnull %20, ptr noundef nonnull %26, ptr noundef %2) #22
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = icmp eq ptr %21, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  tail call void %1(ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef %2) #22
  br label %32

32:                                               ; preds = %31, %29
  %33 = load ptr, ptr %20, align 8, !tbaa !44
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %19, !llvm.loop !133

35:                                               ; preds = %32, %15
  %36 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 21
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = icmp eq ptr %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %35, %52
  %40 = phi ptr [ %53, %52 ], [ %37, %35 ]
  %41 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %40) #21
  %42 = getelementptr inbounds %struct.Lamp, ptr %40, i64 0, i32 74
  %43 = load ptr, ptr %42, align 8, !tbaa !134
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %43) #21
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void %1(ptr noundef nonnull %40, ptr noundef nonnull %46, ptr noundef %2) #22
  br label %49

49:                                               ; preds = %45, %48, %39
  %50 = icmp eq ptr %41, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  tail call void %1(ptr noundef nonnull %40, ptr noundef nonnull %41, ptr noundef %2) #22
  br label %52

52:                                               ; preds = %51, %49
  %53 = load ptr, ptr %40, align 8, !tbaa !44
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %39, !llvm.loop !136

55:                                               ; preds = %52, %35
  %56 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !44
  %58 = icmp eq ptr %57, null
  br i1 %58, label %75, label %59

59:                                               ; preds = %55, %72
  %60 = phi ptr [ %73, %72 ], [ %57, %55 ]
  %61 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %60) #21
  %62 = getelementptr inbounds %struct.Material, ptr %60, i64 0, i32 103
  %63 = load ptr, ptr %62, align 8, !tbaa !137
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %63) #21
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call void %1(ptr noundef nonnull %60, ptr noundef nonnull %66, ptr noundef %2) #22
  br label %69

69:                                               ; preds = %65, %68, %59
  %70 = icmp eq ptr %61, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %69
  tail call void %1(ptr noundef nonnull %60, ptr noundef nonnull %61, ptr noundef %2) #22
  br label %72

72:                                               ; preds = %71, %69
  %73 = load ptr, ptr %60, align 8, !tbaa !44
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %59, !llvm.loop !141

75:                                               ; preds = %72, %55
  %76 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 22
  %77 = load ptr, ptr %76, align 8, !tbaa !44
  %78 = icmp eq ptr %77, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %75, %84
  %80 = phi ptr [ %85, %84 ], [ %77, %75 ]
  %81 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %80) #21
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  tail call void %1(ptr noundef nonnull %80, ptr noundef nonnull %81, ptr noundef %2) #22
  br label %84

84:                                               ; preds = %83, %79
  %85 = load ptr, ptr %80, align 8, !tbaa !44
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %79, !llvm.loop !142

87:                                               ; preds = %84, %75
  %88 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 24
  %89 = load ptr, ptr %88, align 8, !tbaa !44
  %90 = icmp eq ptr %89, null
  br i1 %90, label %99, label %91

91:                                               ; preds = %87, %96
  %92 = phi ptr [ %97, %96 ], [ %89, %87 ]
  %93 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %92) #21
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  tail call void %1(ptr noundef nonnull %92, ptr noundef nonnull %93, ptr noundef %2) #22
  br label %96

96:                                               ; preds = %95, %91
  %97 = load ptr, ptr %92, align 8, !tbaa !44
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %91, !llvm.loop !143

99:                                               ; preds = %96, %87
  %100 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 16
  %101 = load ptr, ptr %100, align 8, !tbaa !44
  %102 = icmp eq ptr %101, null
  br i1 %102, label %111, label %103

103:                                              ; preds = %99, %108
  %104 = phi ptr [ %109, %108 ], [ %101, %99 ]
  %105 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %104) #21
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  tail call void %1(ptr noundef nonnull %104, ptr noundef nonnull %105, ptr noundef %2) #22
  br label %108

108:                                              ; preds = %107, %103
  %109 = load ptr, ptr %104, align 8, !tbaa !44
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %103, !llvm.loop !144

111:                                              ; preds = %108, %99
  %112 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 15
  %113 = load ptr, ptr %112, align 8, !tbaa !44
  %114 = icmp eq ptr %113, null
  br i1 %114, label %123, label %115

115:                                              ; preds = %111, %120
  %116 = phi ptr [ %121, %120 ], [ %113, %111 ]
  %117 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %116) #21
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  tail call void %1(ptr noundef nonnull %116, ptr noundef nonnull %117, ptr noundef %2) #22
  br label %120

120:                                              ; preds = %119, %115
  %121 = load ptr, ptr %116, align 8, !tbaa !44
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %115, !llvm.loop !145

123:                                              ; preds = %120, %111
  %124 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 33
  %125 = load ptr, ptr %124, align 8, !tbaa !44
  %126 = icmp eq ptr %125, null
  br i1 %126, label %135, label %127

127:                                              ; preds = %123, %132
  %128 = phi ptr [ %133, %132 ], [ %125, %123 ]
  %129 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %128) #21
  %130 = icmp eq ptr %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  tail call void %1(ptr noundef nonnull %128, ptr noundef nonnull %129, ptr noundef %2) #22
  br label %132

132:                                              ; preds = %131, %127
  %133 = load ptr, ptr %128, align 8, !tbaa !44
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %127, !llvm.loop !146

135:                                              ; preds = %132, %123
  %136 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 20
  %137 = load ptr, ptr %136, align 8, !tbaa !44
  %138 = icmp eq ptr %137, null
  br i1 %138, label %147, label %139

139:                                              ; preds = %135, %144
  %140 = phi ptr [ %145, %144 ], [ %137, %135 ]
  %141 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %140) #21
  %142 = icmp eq ptr %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  tail call void %1(ptr noundef nonnull %140, ptr noundef nonnull %141, ptr noundef %2) #22
  br label %144

144:                                              ; preds = %143, %139
  %145 = load ptr, ptr %140, align 8, !tbaa !44
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %139, !llvm.loop !147

147:                                              ; preds = %144, %135
  %148 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 14
  %149 = load ptr, ptr %148, align 8, !tbaa !44
  %150 = icmp eq ptr %149, null
  br i1 %150, label %159, label %151

151:                                              ; preds = %147, %156
  %152 = phi ptr [ %157, %156 ], [ %149, %147 ]
  %153 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %152) #21
  %154 = icmp eq ptr %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %151
  tail call void %1(ptr noundef nonnull %152, ptr noundef nonnull %153, ptr noundef %2) #22
  br label %156

156:                                              ; preds = %155, %151
  %157 = load ptr, ptr %152, align 8, !tbaa !44
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %151, !llvm.loop !148

159:                                              ; preds = %156, %147
  %160 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 37
  %161 = load ptr, ptr %160, align 8, !tbaa !44
  %162 = icmp eq ptr %161, null
  br i1 %162, label %171, label %163

163:                                              ; preds = %159, %168
  %164 = phi ptr [ %169, %168 ], [ %161, %159 ]
  %165 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %164) #21
  %166 = icmp eq ptr %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  tail call void %1(ptr noundef nonnull %164, ptr noundef nonnull %165, ptr noundef %2) #22
  br label %168

168:                                              ; preds = %167, %163
  %169 = load ptr, ptr %164, align 8, !tbaa !44
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %163, !llvm.loop !149

171:                                              ; preds = %168, %159
  %172 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 30
  %173 = load ptr, ptr %172, align 8, !tbaa !44
  %174 = icmp eq ptr %173, null
  br i1 %174, label %183, label %175

175:                                              ; preds = %171, %180
  %176 = phi ptr [ %181, %180 ], [ %173, %171 ]
  %177 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %176) #21
  %178 = icmp eq ptr %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %175
  tail call void %1(ptr noundef nonnull %176, ptr noundef nonnull %177, ptr noundef %2) #22
  br label %180

180:                                              ; preds = %179, %175
  %181 = load ptr, ptr %176, align 8, !tbaa !44
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %175, !llvm.loop !150

183:                                              ; preds = %180, %171
  %184 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 42
  %185 = load ptr, ptr %184, align 8, !tbaa !44
  %186 = icmp eq ptr %185, null
  br i1 %186, label %195, label %187

187:                                              ; preds = %183, %192
  %188 = phi ptr [ %193, %192 ], [ %185, %183 ]
  %189 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %188) #21
  %190 = icmp eq ptr %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %187
  tail call void %1(ptr noundef nonnull %188, ptr noundef nonnull %189, ptr noundef %2) #22
  br label %192

192:                                              ; preds = %191, %187
  %193 = load ptr, ptr %188, align 8, !tbaa !44
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %187, !llvm.loop !151

195:                                              ; preds = %192, %183
  %196 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %197 = load ptr, ptr %196, align 8, !tbaa !44
  %198 = icmp eq ptr %197, null
  br i1 %198, label %207, label %199

199:                                              ; preds = %195, %204
  %200 = phi ptr [ %205, %204 ], [ %197, %195 ]
  %201 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %200) #21
  %202 = icmp eq ptr %201, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %199
  tail call void %1(ptr noundef nonnull %200, ptr noundef nonnull %201, ptr noundef %2) #22
  br label %204

204:                                              ; preds = %203, %199
  %205 = load ptr, ptr %200, align 8, !tbaa !44
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %199, !llvm.loop !152

207:                                              ; preds = %204, %195
  %208 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 43
  %209 = load ptr, ptr %208, align 8, !tbaa !44
  %210 = icmp eq ptr %209, null
  br i1 %210, label %219, label %211

211:                                              ; preds = %207, %216
  %212 = phi ptr [ %217, %216 ], [ %209, %207 ]
  %213 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %212) #21
  %214 = icmp eq ptr %213, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %211
  tail call void %1(ptr noundef nonnull %212, ptr noundef nonnull %213, ptr noundef %2) #22
  br label %216

216:                                              ; preds = %215, %211
  %217 = load ptr, ptr %212, align 8, !tbaa !44
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %211, !llvm.loop !153

219:                                              ; preds = %216, %207
  %220 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 25
  %221 = load ptr, ptr %220, align 8, !tbaa !44
  %222 = icmp eq ptr %221, null
  br i1 %222, label %239, label %223

223:                                              ; preds = %219, %236
  %224 = phi ptr [ %237, %236 ], [ %221, %219 ]
  %225 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %224) #21
  %226 = getelementptr inbounds %struct.World, ptr %224, i64 0, i32 75
  %227 = load ptr, ptr %226, align 8, !tbaa !154
  %228 = icmp eq ptr %227, null
  br i1 %228, label %233, label %229

229:                                              ; preds = %223
  %230 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %227) #21
  %231 = icmp eq ptr %230, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %229
  tail call void %1(ptr noundef nonnull %224, ptr noundef nonnull %230, ptr noundef %2) #22
  br label %233

233:                                              ; preds = %229, %232, %223
  %234 = icmp eq ptr %225, null
  br i1 %234, label %236, label %235

235:                                              ; preds = %233
  tail call void %1(ptr noundef nonnull %224, ptr noundef nonnull %225, ptr noundef %2) #22
  br label %236

236:                                              ; preds = %235, %233
  %237 = load ptr, ptr %224, align 8, !tbaa !44
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %223, !llvm.loop !156

239:                                              ; preds = %236, %219
  %240 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %241 = load ptr, ptr %240, align 8, !tbaa !44
  %242 = icmp eq ptr %241, null
  br i1 %242, label %259, label %243

243:                                              ; preds = %239, %256
  %244 = phi ptr [ %257, %256 ], [ %241, %239 ]
  %245 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %244) #21
  %246 = getelementptr inbounds %struct.Scene, ptr %244, i64 0, i32 18
  %247 = load ptr, ptr %246, align 8, !tbaa !157
  %248 = icmp eq ptr %247, null
  br i1 %248, label %253, label %249

249:                                              ; preds = %243
  %250 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %247) #21
  %251 = icmp eq ptr %250, null
  br i1 %251, label %253, label %252

252:                                              ; preds = %249
  tail call void %1(ptr noundef nonnull %244, ptr noundef nonnull %250, ptr noundef %2) #22
  br label %253

253:                                              ; preds = %249, %252, %243
  %254 = icmp eq ptr %245, null
  br i1 %254, label %256, label %255

255:                                              ; preds = %253
  tail call void %1(ptr noundef nonnull %244, ptr noundef nonnull %245, ptr noundef %2) #22
  br label %256

256:                                              ; preds = %255, %253
  %257 = load ptr, ptr %244, align 8, !tbaa !44
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %243, !llvm.loop !175

259:                                              ; preds = %256, %239
  %260 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 44
  %261 = load ptr, ptr %260, align 8, !tbaa !44
  %262 = icmp eq ptr %261, null
  br i1 %262, label %271, label %263

263:                                              ; preds = %259, %268
  %264 = phi ptr [ %269, %268 ], [ %261, %259 ]
  %265 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %264) #21
  %266 = icmp eq ptr %265, null
  br i1 %266, label %268, label %267

267:                                              ; preds = %263
  tail call void %1(ptr noundef nonnull %264, ptr noundef nonnull %265, ptr noundef %2) #22
  br label %268

268:                                              ; preds = %267, %263
  %269 = load ptr, ptr %264, align 8, !tbaa !44
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %263, !llvm.loop !176

271:                                              ; preds = %268, %259
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_all_animdata_fix_paths_rename(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = load ptr, ptr @G, align 8, !tbaa !94
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 35
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %4 ]
  %11 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %10) #21
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %10, ptr noundef %11, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  %12 = load ptr, ptr %10, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !177

14:                                               ; preds = %9, %4
  %15 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %14, %26
  %19 = phi ptr [ %27, %26 ], [ %16, %14 ]
  %20 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %19) #21
  %21 = getelementptr inbounds %struct.Tex, ptr %19, i64 0, i32 52
  %22 = load ptr, ptr %21, align 8, !tbaa !130
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %22) #21
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %22, ptr noundef %25, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  br label %26

26:                                               ; preds = %24, %18
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %19, ptr noundef %20, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  %27 = load ptr, ptr %19, align 8, !tbaa !44
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %18, !llvm.loop !178

29:                                               ; preds = %26, %14
  %30 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 21
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %29, %41
  %34 = phi ptr [ %42, %41 ], [ %31, %29 ]
  %35 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %34) #21
  %36 = getelementptr inbounds %struct.Lamp, ptr %34, i64 0, i32 74
  %37 = load ptr, ptr %36, align 8, !tbaa !134
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %37) #21
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %37, ptr noundef %40, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  br label %41

41:                                               ; preds = %39, %33
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %34, ptr noundef %35, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  %42 = load ptr, ptr %34, align 8, !tbaa !44
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %33, !llvm.loop !179

44:                                               ; preds = %41, %29
  %45 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !44
  %47 = icmp eq ptr %46, null
  br i1 %47, label %59, label %48

48:                                               ; preds = %44, %56
  %49 = phi ptr [ %57, %56 ], [ %46, %44 ]
  %50 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %49) #21
  %51 = getelementptr inbounds %struct.Material, ptr %49, i64 0, i32 103
  %52 = load ptr, ptr %51, align 8, !tbaa !137
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %52) #21
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %52, ptr noundef %55, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  br label %56

56:                                               ; preds = %54, %48
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %49, ptr noundef %50, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  %57 = load ptr, ptr %49, align 8, !tbaa !44
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %48, !llvm.loop !180

59:                                               ; preds = %56, %44
  %60 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 22
  %61 = load ptr, ptr %60, align 8, !tbaa !44
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %59, %63
  %64 = phi ptr [ %66, %63 ], [ %61, %59 ]
  %65 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %64) #21
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %64, ptr noundef %65, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  %66 = load ptr, ptr %64, align 8, !tbaa !44
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %63, !llvm.loop !181

68:                                               ; preds = %63, %59
  %69 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 24
  %70 = load ptr, ptr %69, align 8, !tbaa !44
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %68, %72
  %73 = phi ptr [ %75, %72 ], [ %70, %68 ]
  %74 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %73) #21
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %73, ptr noundef %74, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  %75 = load ptr, ptr %73, align 8, !tbaa !44
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %72, !llvm.loop !182

77:                                               ; preds = %72, %68
  %78 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 16
  %79 = load ptr, ptr %78, align 8, !tbaa !44
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %77, %81
  %82 = phi ptr [ %84, %81 ], [ %79, %77 ]
  %83 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %82) #21
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %82, ptr noundef %83, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  %84 = load ptr, ptr %82, align 8, !tbaa !44
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %81, !llvm.loop !183

86:                                               ; preds = %81, %77
  %87 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 15
  %88 = load ptr, ptr %87, align 8, !tbaa !44
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %86, %90
  %91 = phi ptr [ %93, %90 ], [ %88, %86 ]
  %92 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %91) #21
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %91, ptr noundef %92, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  %93 = load ptr, ptr %91, align 8, !tbaa !44
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %90, !llvm.loop !184

95:                                               ; preds = %90, %86
  %96 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 33
  %97 = load ptr, ptr %96, align 8, !tbaa !44
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %95, %99
  %100 = phi ptr [ %102, %99 ], [ %97, %95 ]
  %101 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %100) #21
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %100, ptr noundef %101, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  %102 = load ptr, ptr %100, align 8, !tbaa !44
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %99, !llvm.loop !185

104:                                              ; preds = %99, %95
  %105 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 20
  %106 = load ptr, ptr %105, align 8, !tbaa !44
  %107 = icmp eq ptr %106, null
  br i1 %107, label %113, label %108

108:                                              ; preds = %104, %108
  %109 = phi ptr [ %111, %108 ], [ %106, %104 ]
  %110 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %109) #21
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %109, ptr noundef %110, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  %111 = load ptr, ptr %109, align 8, !tbaa !44
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %108, !llvm.loop !186

113:                                              ; preds = %108, %104
  %114 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 14
  %115 = load ptr, ptr %114, align 8, !tbaa !44
  %116 = icmp eq ptr %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %113, %117
  %118 = phi ptr [ %120, %117 ], [ %115, %113 ]
  %119 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %118) #21
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %118, ptr noundef %119, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  %120 = load ptr, ptr %118, align 8, !tbaa !44
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %117, !llvm.loop !187

122:                                              ; preds = %117, %113
  %123 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 37
  %124 = load ptr, ptr %123, align 8, !tbaa !44
  %125 = icmp eq ptr %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %122, %126
  %127 = phi ptr [ %129, %126 ], [ %124, %122 ]
  %128 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %127) #21
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %127, ptr noundef %128, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  %129 = load ptr, ptr %127, align 8, !tbaa !44
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %126, !llvm.loop !188

131:                                              ; preds = %126, %122
  %132 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 30
  %133 = load ptr, ptr %132, align 8, !tbaa !44
  %134 = icmp eq ptr %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %131, %135
  %136 = phi ptr [ %138, %135 ], [ %133, %131 ]
  %137 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %136) #21
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %136, ptr noundef %137, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  %138 = load ptr, ptr %136, align 8, !tbaa !44
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %135, !llvm.loop !189

140:                                              ; preds = %135, %131
  %141 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 42
  %142 = load ptr, ptr %141, align 8, !tbaa !44
  %143 = icmp eq ptr %142, null
  br i1 %143, label %149, label %144

144:                                              ; preds = %140, %144
  %145 = phi ptr [ %147, %144 ], [ %142, %140 ]
  %146 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %145) #21
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %145, ptr noundef %146, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  %147 = load ptr, ptr %145, align 8, !tbaa !44
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %144, !llvm.loop !190

149:                                              ; preds = %144, %140
  %150 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 13
  %151 = load ptr, ptr %150, align 8, !tbaa !44
  %152 = icmp eq ptr %151, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %149, %153
  %154 = phi ptr [ %156, %153 ], [ %151, %149 ]
  %155 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %154) #21
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %154, ptr noundef %155, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  %156 = load ptr, ptr %154, align 8, !tbaa !44
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %153, !llvm.loop !191

158:                                              ; preds = %153, %149
  %159 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 43
  %160 = load ptr, ptr %159, align 8, !tbaa !44
  %161 = icmp eq ptr %160, null
  br i1 %161, label %167, label %162

162:                                              ; preds = %158, %162
  %163 = phi ptr [ %165, %162 ], [ %160, %158 ]
  %164 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %163) #21
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %163, ptr noundef %164, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  %165 = load ptr, ptr %163, align 8, !tbaa !44
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %162, !llvm.loop !192

167:                                              ; preds = %162, %158
  %168 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 25
  %169 = load ptr, ptr %168, align 8, !tbaa !44
  %170 = icmp eq ptr %169, null
  br i1 %170, label %182, label %171

171:                                              ; preds = %167, %179
  %172 = phi ptr [ %180, %179 ], [ %169, %167 ]
  %173 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %172) #21
  %174 = getelementptr inbounds %struct.World, ptr %172, i64 0, i32 75
  %175 = load ptr, ptr %174, align 8, !tbaa !154
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %171
  %178 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %175) #21
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %175, ptr noundef %178, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  br label %179

179:                                              ; preds = %177, %171
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %172, ptr noundef %173, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  %180 = load ptr, ptr %172, align 8, !tbaa !44
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %171, !llvm.loop !193

182:                                              ; preds = %179, %167
  %183 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 44
  %184 = load ptr, ptr %183, align 8, !tbaa !44
  %185 = icmp eq ptr %184, null
  br i1 %185, label %191, label %186

186:                                              ; preds = %182, %186
  %187 = phi ptr [ %189, %186 ], [ %184, %182 ]
  %188 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %187) #21
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %187, ptr noundef %188, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  %189 = load ptr, ptr %187, align 8, !tbaa !44
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %186, !llvm.loop !194

191:                                              ; preds = %186, %182
  %192 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 11
  %193 = load ptr, ptr %192, align 8, !tbaa !44
  %194 = icmp eq ptr %193, null
  br i1 %194, label %206, label %195

195:                                              ; preds = %191, %203
  %196 = phi ptr [ %204, %203 ], [ %193, %191 ]
  %197 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %196) #21
  %198 = getelementptr inbounds %struct.Scene, ptr %196, i64 0, i32 18
  %199 = load ptr, ptr %198, align 8, !tbaa !157
  %200 = icmp eq ptr %199, null
  br i1 %200, label %203, label %201

201:                                              ; preds = %195
  %202 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %199) #21
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %199, ptr noundef %202, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  br label %203

203:                                              ; preds = %201, %195
  tail call void @BKE_animdata_fix_paths_rename(ptr noundef nonnull %196, ptr noundef %197, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #21
  %204 = load ptr, ptr %196, align 8, !tbaa !44
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %195, !llvm.loop !195

206:                                              ; preds = %203, %191
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_keyingset_find_path(ptr noundef readonly %0, ptr noundef readnone %1, ptr nocapture readnone %2, ptr noundef readonly %3, i32 noundef %4, i32 %5) local_unnamed_addr #9 {
  %7 = icmp eq ptr %0, null
  %8 = icmp eq ptr %3, null
  %9 = or i1 %7, %8
  %10 = icmp eq ptr %1, null
  %11 = or i1 %10, %9
  br i1 %11, label %36, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.KeyingSet, ptr %0, i64 0, i32 2
  br label %14

14:                                               ; preds = %29, %12
  %15 = phi ptr [ %13, %12 ], [ %16, %29 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.KS_Path, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !196
  %21 = icmp eq ptr %20, %1
  %22 = getelementptr inbounds %struct.KS_Path, ptr %16, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !198
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %23) #23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %18
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i1 [ false, %28 ], [ true, %25 ]
  %31 = getelementptr inbounds %struct.KS_Path, ptr %16, i64 0, i32 8
  %32 = load i32, ptr %31, align 8, !tbaa !199
  %33 = icmp eq i32 %32, %4
  %34 = and i1 %21, %30
  %35 = and i1 %34, %33
  br i1 %35, label %36, label %14, !llvm.loop !200

36:                                               ; preds = %14, %29, %6
  %37 = phi ptr [ null, %6 ], [ null, %14 ], [ %16, %29 ]
  ret ptr %37
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_keyingset_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4) local_unnamed_addr #2 {
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %7 = tail call ptr %6(i64 noundef 472, ptr noundef nonnull @.str.11) #22
  %8 = getelementptr inbounds %struct.KeyingSet, ptr %7, i64 0, i32 3
  %9 = icmp eq ptr %1, null
  %10 = icmp eq ptr %2, null
  %11 = select i1 %10, ptr @.str.11, ptr %2
  %12 = select i1 %9, ptr %11, ptr %1
  %13 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %12, i64 noundef 64) #22
  %14 = select i1 %9, ptr @.str.12, ptr %1
  %15 = select i1 %10, ptr %14, ptr %2
  %16 = getelementptr inbounds %struct.KeyingSet, ptr %7, i64 0, i32 4
  %17 = tail call ptr @BLI_strncpy(ptr noundef nonnull %16, ptr noundef nonnull %15, i64 noundef 64) #22
  %18 = getelementptr inbounds %struct.KeyingSet, ptr %7, i64 0, i32 7
  store i16 %3, ptr %18, align 8, !tbaa !201
  %19 = getelementptr inbounds %struct.KeyingSet, ptr %7, i64 0, i32 8
  store i16 %4, ptr %19, align 2, !tbaa !203
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %7) #22
  tail call void @BLI_uniquename(ptr noundef %0, ptr noundef %7, ptr noundef nonnull @.str.11, i8 noundef zeroext 46, i32 noundef 32, i32 noundef 64) #22
  tail call void @BLI_uniquename(ptr noundef %0, ptr noundef %7, ptr noundef nonnull @.str.12, i8 noundef zeroext 46, i32 noundef 96, i32 noundef 64) #22
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_keyingset_add_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i16 noundef signext %5, i16 noundef signext %6) local_unnamed_addr #2 {
  %8 = icmp eq ptr %0, null
  %9 = icmp eq ptr %3, null
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.33)
  br label %46

13:                                               ; preds = %7
  %14 = icmp eq ptr %1, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  br label %46

17:                                               ; preds = %13
  %18 = tail call ptr @BKE_keyingset_find_path(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr poison, ptr noundef nonnull %3, i32 noundef %4, i32 poison) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  br label %46

26:                                               ; preds = %17
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %28 = tail call ptr %27(i64 noundef 112, ptr noundef nonnull @.str.16) #22
  %29 = getelementptr inbounds %struct.KS_Path, ptr %28, i64 0, i32 2
  store ptr %1, ptr %29, align 8, !tbaa !196
  %30 = icmp eq ptr %2, null
  %31 = getelementptr inbounds %struct.KS_Path, ptr %28, i64 0, i32 3
  br i1 %30, label %34, label %32

32:                                               ; preds = %26
  %33 = tail call ptr @BLI_strncpy(ptr noundef nonnull %31, ptr noundef nonnull %2, i64 noundef 64) #22
  br label %35

34:                                               ; preds = %26
  store i8 0, ptr %31, align 8, !tbaa !119
  br label %35

35:                                               ; preds = %32, %34
  %36 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %37 = load i16, ptr %36, align 8, !tbaa !34
  %38 = sext i16 %37 to i32
  %39 = getelementptr inbounds %struct.KS_Path, ptr %28, i64 0, i32 4
  store i32 %38, ptr %39, align 8, !tbaa !204
  %40 = tail call ptr @BLI_strdup(ptr noundef nonnull %3) #22
  %41 = getelementptr inbounds %struct.KS_Path, ptr %28, i64 0, i32 7
  store ptr %40, ptr %41, align 8, !tbaa !198
  %42 = getelementptr inbounds %struct.KS_Path, ptr %28, i64 0, i32 8
  store i32 %4, ptr %42, align 8, !tbaa !199
  %43 = getelementptr inbounds %struct.KS_Path, ptr %28, i64 0, i32 9
  store i16 %5, ptr %43, align 4, !tbaa !205
  %44 = getelementptr inbounds %struct.KS_Path, ptr %28, i64 0, i32 5
  store i16 %6, ptr %44, align 4, !tbaa !206
  %45 = getelementptr inbounds %struct.KeyingSet, ptr %0, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %45, ptr noundef nonnull %28) #22
  br label %46

46:                                               ; preds = %20, %24, %35, %15, %11
  %47 = phi ptr [ null, %11 ], [ null, %15 ], [ %28, %35 ], [ null, %24 ], [ null, %20 ]
  ret ptr %47
}

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_keyingset_free_path(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.KS_Path, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !198
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %11(ptr noundef nonnull %8) #22
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.KeyingSet, ptr %0, i64 0, i32 2
  tail call void @BLI_freelinkN(ptr noundef nonnull %13, ptr noundef nonnull %1) #22
  br label %14

14:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_keyingsets_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  tail call void @BLI_duplicatelist(ptr noundef %0, ptr noundef %1) #22
  %3 = load ptr, ptr %0, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %8

5:                                                ; preds = %13, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8, !llvm.loop !207

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %10 = getelementptr inbounds %struct.KeyingSet, ptr %9, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %10, ptr noundef nonnull %10) #22
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %19, %13 ], [ %11, %8 ]
  %15 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct.KS_Path, ptr %14, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !198
  %18 = tail call ptr %15(ptr noundef %17) #22
  store ptr %18, ptr %16, align 8, !tbaa !198
  %19 = load ptr, ptr %14, align 8, !tbaa !44
  %20 = icmp eq ptr %19, null
  br i1 %20, label %5, label %13, !llvm.loop !208

21:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_keyingset_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.KeyingSet, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !209
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !210
  tail call void @BKE_keyingset_free_path(ptr noundef nonnull %0, ptr noundef nonnull %8) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !211

11:                                               ; preds = %7, %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_keyingsets_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !93
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !212
  tail call void @BKE_keyingset_free(ptr noundef nonnull %7) #21
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %7) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !213

10:                                               ; preds = %6, %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @animsys_evaluate_action_group(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, float noundef %4) local_unnamed_addr #2 {
  %6 = icmp eq ptr %1, null
  %7 = icmp eq ptr %2, null
  %8 = or i1 %6, %7
  br i1 %8, label %34, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !tbaa !100
  tail call fastcc void @action_idcode_patch_check(ptr noundef %10, ptr noundef nonnull %1) #21
  %11 = getelementptr inbounds %struct.bActionGroup, ptr %2, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !84
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.bActionGroup, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %15, %31
  %20 = phi ptr [ %32, %31 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.FCurve, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  %23 = icmp eq ptr %22, %2
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.FCurve, ptr %20, i64 0, i32 9
  %26 = load i16, ptr %25, align 8, !tbaa !214
  %27 = and i16 %26, 1040
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  tail call void @calculate_fcurve(ptr noundef nonnull %20, float noundef %4) #22
  %30 = tail call fastcc zeroext i8 @animsys_execute_fcurve(ptr noundef nonnull %0, ptr noundef nonnull %20) #21
  br label %31

31:                                               ; preds = %24, %29
  %32 = load ptr, ptr %20, align 8, !tbaa !44
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %19, !llvm.loop !215

34:                                               ; preds = %31, %19, %15, %9, %5
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @action_idcode_patch_check(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !PGOFuncName !216 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %6 = load i16, ptr %5, align 8, !tbaa !34
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !53
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  store i32 %7, ptr %8, align 8, !tbaa !53
  br label %21

12:                                               ; preds = %4
  %13 = icmp eq i32 %9, %7
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull %19, i32 noundef %7, ptr noundef nonnull %5) #21
  br label %21

21:                                               ; preds = %11, %14, %18, %12, %2
  ret void
}

; Function Attrs: optsize
declare void @calculate_fcurve(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @animsys_execute_fcurve(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !217 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  call fastcc void @animsys_remap_path(ptr noundef %5, ptr noundef nonnull %3) #21
  %6 = load ptr, ptr %3, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 11
  %10 = load i32, ptr %9, align 4, !tbaa !218
  %11 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 8
  %12 = load float, ptr %11, align 4, !tbaa !219
  %13 = tail call fastcc zeroext i8 @animsys_write_rna_setting(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %10, float noundef %12) #21, !range !38
  br label %14

14:                                               ; preds = %2, %8
  %15 = phi i8 [ %13, %8 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @animsys_evaluate_action(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, float noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !100
  tail call fastcc void @action_idcode_patch_check(ptr noundef %7, ptr noundef nonnull %1) #21
  %8 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 1
  tail call fastcc void @animsys_evaluate_fcurves(ptr noundef nonnull %0, ptr noundef nonnull %8, float noundef %3) #21
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @animsys_evaluate_fcurves(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 !PGOFuncName !220 {
  %4 = load ptr, ptr %1, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %3, %23
  %7 = phi ptr [ %24, %23 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.FCurve, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bActionGroup, ptr %9, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !84
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11, %6
  %17 = getelementptr inbounds %struct.FCurve, ptr %7, i64 0, i32 9
  %18 = load i16, ptr %17, align 8, !tbaa !214
  %19 = and i16 %18, 1040
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  tail call void @calculate_fcurve(ptr noundef nonnull %7, float noundef %2) #22
  %22 = tail call fastcc zeroext i8 @animsys_execute_fcurve(ptr noundef %0, ptr noundef nonnull %7) #21
  br label %23

23:                                               ; preds = %11, %21, %16
  %24 = load ptr, ptr %7, align 8, !tbaa !44
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %6, !llvm.loop !221

26:                                               ; preds = %23, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @nlastrips_ctime_get_strip(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, float noundef %3) local_unnamed_addr #2 {
  %5 = load ptr, ptr %1, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %100, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  br label %9

9:                                                ; preds = %7, %47
  %10 = phi ptr [ %5, %7 ], [ %48, %47 ]
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %10, i64 0, i32 10
  %12 = load float, ptr %11, align 8, !tbaa !222
  %13 = getelementptr inbounds %struct.NlaStrip, ptr %10, i64 0, i32 11
  %14 = load float, ptr %13, align 4, !tbaa !223
  %15 = fcmp olt float %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = fcmp ugt float %12, %3
  %18 = fcmp ult float %14, %3
  %19 = or i1 %17, %18
  br i1 %19, label %24, label %50

20:                                               ; preds = %9
  %21 = fcmp ugt float %14, %3
  %22 = fcmp ult float %12, %3
  %23 = or i1 %22, %21
  br i1 %23, label %24, label %50

24:                                               ; preds = %20, %16
  %25 = fcmp ogt float %12, %3
  br i1 %25, label %26, label %38

26:                                               ; preds = %24
  %27 = icmp eq ptr %10, %5
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.NlaStrip, ptr %5, i64 0, i32 19
  %30 = load i16, ptr %29, align 2, !tbaa !224
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %50, label %100

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.NlaStrip, ptr %10, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !225
  %35 = getelementptr inbounds %struct.NlaStrip, ptr %34, i64 0, i32 19
  %36 = load i16, ptr %35, align 2, !tbaa !224
  %37 = icmp eq i16 %36, 2
  br i1 %37, label %100, label %50

38:                                               ; preds = %24
  %39 = fcmp olt float %14, %3
  br i1 %39, label %40, label %47

40:                                               ; preds = %38
  %41 = load ptr, ptr %8, align 8, !tbaa !226
  %42 = icmp eq ptr %10, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.NlaStrip, ptr %10, i64 0, i32 19
  %45 = load i16, ptr %44, align 2, !tbaa !224
  %46 = icmp eq i16 %45, 2
  br i1 %46, label %100, label %50

47:                                               ; preds = %38, %40
  %48 = load ptr, ptr %10, align 8, !tbaa !44
  %49 = icmp eq ptr %48, null
  br i1 %49, label %100, label %9, !llvm.loop !227

50:                                               ; preds = %20, %16, %28, %32, %43
  %51 = phi ptr [ %10, %43 ], [ %34, %32 ], [ %5, %28 ], [ %10, %16 ], [ %10, %20 ]
  %52 = phi i16 [ 1, %43 ], [ 1, %32 ], [ -1, %28 ], [ 0, %16 ], [ 0, %20 ]
  %53 = getelementptr inbounds %struct.NlaStrip, ptr %51, i64 0, i32 23
  %54 = load i32, ptr %53, align 8, !tbaa !228
  %55 = and i32 %54, 4096
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %100

57:                                               ; preds = %50
  switch i16 %52, label %64 [
    i16 -1, label %58
    i16 1, label %61
  ]

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.NlaStrip, ptr %51, i64 0, i32 10
  %60 = load float, ptr %59, align 8, !tbaa !222
  br label %64

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.NlaStrip, ptr %51, i64 0, i32 11
  %63 = load float, ptr %62, align 4, !tbaa !223
  br label %64

64:                                               ; preds = %57, %61, %58
  %65 = phi float [ %3, %57 ], [ %63, %61 ], [ %60, %58 ]
  tail call fastcc void @nlastrip_evaluate_controls(ptr noundef nonnull %51, float noundef %65) #21
  %66 = getelementptr inbounds %struct.NlaStrip, ptr %51, i64 0, i32 8
  %67 = load float, ptr %66, align 8, !tbaa !229
  %68 = fcmp ugt float %67, 0.000000e+00
  br i1 %68, label %69, label %100

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.NlaStrip, ptr %51, i64 0, i32 21
  %71 = load i16, ptr %70, align 2, !tbaa !230
  switch i16 %71, label %89 [
    i16 0, label %72
    i16 1, label %76
  ]

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.NlaStrip, ptr %51, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !63
  %75 = icmp eq ptr %74, null
  br i1 %75, label %100, label %89

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.NlaStrip, ptr %51, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !225
  %79 = icmp eq ptr %78, null
  br i1 %79, label %100, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %51, align 8, !tbaa !231
  %82 = icmp eq ptr %81, null
  br i1 %82, label %100, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.NlaStrip, ptr %51, i64 0, i32 10
  %85 = load float, ptr %84, align 8, !tbaa !222
  tail call fastcc void @nlastrip_evaluate_controls(ptr noundef nonnull %78, float noundef %85) #21
  %86 = load ptr, ptr %51, align 8, !tbaa !231
  %87 = getelementptr inbounds %struct.NlaStrip, ptr %51, i64 0, i32 11
  %88 = load float, ptr %87, align 4, !tbaa !223
  tail call fastcc void @nlastrip_evaluate_controls(ptr noundef %86, float noundef %88) #21
  br label %89

89:                                               ; preds = %72, %69, %83
  %90 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %91 = tail call ptr %90(i64 noundef 40, ptr noundef nonnull @.str.17) #22
  %92 = getelementptr inbounds %struct.NlaEvalStrip, ptr %91, i64 0, i32 3
  store ptr %51, ptr %92, align 8, !tbaa !232
  %93 = getelementptr inbounds %struct.NlaEvalStrip, ptr %91, i64 0, i32 5
  store i16 %52, ptr %93, align 2, !tbaa !234
  %94 = getelementptr inbounds %struct.NlaEvalStrip, ptr %91, i64 0, i32 4
  store i16 %2, ptr %94, align 8, !tbaa !235
  %95 = getelementptr inbounds %struct.NlaStrip, ptr %51, i64 0, i32 9
  %96 = load float, ptr %95, align 4, !tbaa !236
  %97 = getelementptr inbounds %struct.NlaEvalStrip, ptr %91, i64 0, i32 6
  store float %96, ptr %97, align 4, !tbaa !237
  %98 = icmp eq ptr %0, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %89
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef nonnull %91) #22
  br label %100

100:                                              ; preds = %47, %4, %43, %32, %28, %89, %99, %76, %80, %72, %64, %50
  %101 = phi ptr [ null, %50 ], [ null, %64 ], [ null, %72 ], [ null, %80 ], [ null, %76 ], [ %91, %99 ], [ %91, %89 ], [ null, %28 ], [ null, %32 ], [ null, %43 ], [ null, %4 ], [ null, %47 ]
  ret ptr %101
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nlastrip_evaluate_controls(ptr noundef %0, float noundef %1) unnamed_addr #2 !PGOFuncName !238 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 23
  %5 = load i32, ptr %4, align 8, !tbaa !228
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = tail call float @nlastrip_get_frame(ptr noundef nonnull %0, float noundef %1, i16 noundef signext 0) #22
  %10 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 9
  store float %9, ptr %10, align 4, !tbaa !236
  %11 = load i32, ptr %4, align 8, !tbaa !228
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %11, %8 ], [ %5, %2 ]
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = tail call fastcc float @nlastrip_get_influence(ptr noundef nonnull %0, float noundef %1) #21
  %18 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 8
  store float %17, ptr %18, align 8, !tbaa !229
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !239
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_NlaStrip, ptr noundef nonnull %0, ptr noundef nonnull %3) #22
  call fastcc void @animsys_evaluate_fcurves(ptr noundef nonnull %3, ptr noundef nonnull %20, float noundef %1) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i32, ptr %4, align 8, !tbaa !228
  %26 = and i32 %25, 192
  %27 = icmp eq i32 %26, 192
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 9
  %30 = load float, ptr %29, align 4, !tbaa !236
  %31 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 12
  %32 = load float, ptr %31, align 8, !tbaa !240
  %33 = fsub float %30, %32
  %34 = fpext float %33 to double
  %35 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 13
  %36 = load float, ptr %35, align 4, !tbaa !241
  %37 = fsub float %36, %32
  %38 = fpext float %37 to double
  %39 = call double @fmod(double noundef %34, double noundef %38) #22
  %40 = fptrunc double %39 to float
  store float %40, ptr %29, align 4, !tbaa !236
  br label %41

41:                                               ; preds = %28, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nlastrip_evaluate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.NlaEvalStrip, ptr %3, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !232
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 23
  %8 = load i32, ptr %7, align 8, !tbaa !228
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = or disjoint i32 %8, -2147483648
  store i32 %11, ptr %7, align 8, !tbaa !228
  %12 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 21
  %13 = load i16, ptr %12, align 2, !tbaa !230
  switch i16 %13, label %17 [
    i16 0, label %14
    i16 1, label %15
    i16 2, label %16
  ]

14:                                               ; preds = %10
  tail call fastcc void @nlastrip_evaluate_actionclip(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #21
  br label %17

15:                                               ; preds = %10
  tail call fastcc void @nlastrip_evaluate_transition(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #21
  br label %17

16:                                               ; preds = %10
  tail call fastcc void @nlastrip_evaluate_meta(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #21
  br label %17

17:                                               ; preds = %10, %16, %15, %14
  %18 = load i32, ptr %7, align 8, !tbaa !228
  %19 = and i32 %18, 2147483647
  store i32 %19, ptr %7, align 8, !tbaa !228
  br label %20

20:                                               ; preds = %4, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nlastrip_evaluate_actionclip(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #2 !PGOFuncName !242 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds %struct.NlaEvalStrip, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !232
  %10 = icmp eq ptr %9, null
  br i1 %10, label %56, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.NlaStrip, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.NlaStrip, ptr %9, i64 0, i32 7
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef nonnull %16) #21
  br label %56

18:                                               ; preds = %11
  %19 = load ptr, ptr %0, align 8, !tbaa !100
  tail call fastcc void @action_idcode_patch_check(ptr noundef %19, ptr noundef nonnull %13) #21
  %20 = getelementptr inbounds %struct.NlaStrip, ptr %9, i64 0, i32 6
  call fastcc void @nlaeval_fmodifiers_join_stacks(ptr noundef nonnull %5, ptr noundef nonnull %20, ptr noundef %2) #21
  %21 = call ptr @evaluate_fmodifiers_storage_new(ptr noundef nonnull %5) #22
  %22 = getelementptr inbounds %struct.NlaStrip, ptr %9, i64 0, i32 9
  %23 = load float, ptr %22, align 4, !tbaa !236
  %24 = call float @evaluate_time_fmodifiers(ptr noundef %21, ptr noundef nonnull %5, ptr noundef null, float noundef 0.000000e+00, float noundef %23) #22
  %25 = load ptr, ptr %12, align 8, !tbaa !63
  %26 = getelementptr inbounds %struct.bAction, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = icmp eq ptr %27, null
  br i1 %28, label %55, label %29

29:                                               ; preds = %18, %52
  %30 = phi ptr [ %53, %52 ], [ %27, %18 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  store float 0.000000e+00, ptr %6, align 4, !tbaa !243
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #24
  %31 = getelementptr inbounds %struct.FCurve, ptr %30, i64 0, i32 9
  %32 = load i16, ptr %31, align 8, !tbaa !214
  %33 = and i16 %32, 1040
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.FCurve, ptr %30, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !83
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.bActionGroup, ptr %37, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !84
  %42 = and i32 %41, 16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39, %35
  %45 = call float @evaluate_fcurve(ptr noundef nonnull %30, float noundef %24) #22
  store float %45, ptr %6, align 4, !tbaa !243
  %46 = load float, ptr %22, align 4, !tbaa !236
  call void @evaluate_value_fmodifiers(ptr noundef %21, ptr noundef nonnull %5, ptr noundef nonnull %30, ptr noundef nonnull %6, float noundef %46) #22
  %47 = call fastcc ptr @nlaevalchan_verify(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %30, ptr noundef nonnull %7) #21
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load float, ptr %6, align 4, !tbaa !243
  %51 = load i8, ptr %7, align 1, !tbaa !119
  call fastcc void @nlaevalchan_accumulate(ptr noundef nonnull %47, ptr noundef %3, float noundef %50, i8 noundef zeroext %51) #21
  br label %52

52:                                               ; preds = %44, %49, %39, %29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  %53 = load ptr, ptr %30, align 8, !tbaa !44
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %29, !llvm.loop !244

55:                                               ; preds = %52, %18
  call void @evaluate_fmodifiers_storage_free(ptr noundef %21) #22
  call fastcc void @nlaeval_fmodifiers_split_stacks(ptr noundef nonnull %20, ptr noundef %2) #21
  br label %56

56:                                               ; preds = %4, %55, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nlastrip_evaluate_transition(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #2 !PGOFuncName !245 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.NlaEvalStrip, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #24
  %8 = getelementptr inbounds %struct.NlaEvalStrip, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !232
  %10 = getelementptr inbounds %struct.NlaStrip, ptr %9, i64 0, i32 6
  call fastcc void @nlaeval_fmodifiers_join_stacks(ptr noundef nonnull %6, ptr noundef nonnull %10, ptr noundef %2) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !232
  %12 = getelementptr inbounds %struct.NlaStrip, ptr %11, i64 0, i32 23
  %13 = load i32, ptr %12, align 8, !tbaa !228
  %14 = and i32 %13, 2048
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.NlaStrip, ptr %11, i64 0, i32 1
  %17 = select i1 %15, ptr %16, ptr %11
  %18 = select i1 %15, ptr %11, ptr %16
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = load ptr, ptr %17, align 8, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !246
  %21 = getelementptr inbounds %struct.NlaEvalStrip, ptr %7, i64 0, i32 5
  store i16 2, ptr %21, align 2, !tbaa !234
  %22 = getelementptr inbounds %struct.NlaEvalStrip, ptr %7, i64 0, i32 3
  store ptr %20, ptr %22, align 8, !tbaa !232
  call void @nlastrip_evaluate(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  store i16 3, ptr %21, align 2, !tbaa !234
  store ptr %19, ptr %22, align 8, !tbaa !232
  call void @nlastrip_evaluate(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  call fastcc void @nlaevalchan_buffers_accumulate(ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #21
  %23 = load ptr, ptr %8, align 8, !tbaa !232
  %24 = getelementptr inbounds %struct.NlaStrip, ptr %23, i64 0, i32 6
  call fastcc void @nlaeval_fmodifiers_split_stacks(ptr noundef nonnull %24, ptr noundef %2) #21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nlastrip_evaluate_meta(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #2 !PGOFuncName !247 {
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds %struct.NlaEvalStrip, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !232
  %8 = getelementptr inbounds %struct.NlaStrip, ptr %7, i64 0, i32 6
  call fastcc void @nlaeval_fmodifiers_join_stacks(ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef %2) #21
  %9 = getelementptr inbounds %struct.NlaEvalStrip, ptr %3, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !237
  %11 = getelementptr inbounds %struct.NlaStrip, ptr %7, i64 0, i32 11
  %12 = load float, ptr %11, align 4, !tbaa !223
  %13 = getelementptr inbounds %struct.NlaStrip, ptr %7, i64 0, i32 10
  %14 = load float, ptr %13, align 8, !tbaa !222
  %15 = fsub float %12, %14
  %16 = tail call float @llvm.fmuladd.f32(float %10, float %15, float %14)
  %17 = getelementptr inbounds %struct.NlaStrip, ptr %7, i64 0, i32 2
  %18 = tail call ptr @nlastrips_ctime_get_strip(ptr noundef null, ptr noundef nonnull %17, i16 noundef signext -1, float noundef %16) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  call void @nlastrip_evaluate(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %18) #21
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  call void %21(ptr noundef nonnull %18) #22
  br label %22

22:                                               ; preds = %20, %4
  call fastcc void @nlaeval_fmodifiers_split_stacks(ptr noundef nonnull %8, ptr noundef %2) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %10 = load ptr, ptr %9, align 8, !tbaa !248
  %11 = getelementptr inbounds %struct.NlaEvalChannel, ptr %7, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !250
  %13 = getelementptr inbounds %struct.NlaEvalChannel, ptr %7, i64 0, i32 5
  %14 = load float, ptr %13, align 4, !tbaa !251
  %15 = tail call i32 @RNA_property_type(ptr noundef %10) #22
  switch i32 %15, label %36 [
    i32 0, label %16
    i32 1, label %23
    i32 2, label %29
    i32 4, label %34
  ]

16:                                               ; preds = %6
  %17 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %10) #22
  %18 = icmp eq i8 %17, 0
  %19 = fcmp ogt float %14, 0x3FEFFFFFC0000000
  %20 = zext i1 %19 to i32
  br i1 %18, label %22, label %21

21:                                               ; preds = %16
  tail call void @RNA_property_boolean_set_index(ptr noundef nonnull %8, ptr noundef %10, i32 noundef %12, i32 noundef %20) #22
  br label %36

22:                                               ; preds = %16
  tail call void @RNA_property_boolean_set(ptr noundef nonnull %8, ptr noundef %10, i32 noundef %20) #22
  br label %36

23:                                               ; preds = %6
  %24 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %10) #22
  %25 = icmp eq i8 %24, 0
  %26 = fptosi float %14 to i32
  br i1 %25, label %28, label %27

27:                                               ; preds = %23
  tail call void @RNA_property_int_set_index(ptr noundef nonnull %8, ptr noundef %10, i32 noundef %12, i32 noundef %26) #22
  br label %36

28:                                               ; preds = %23
  tail call void @RNA_property_int_set(ptr noundef nonnull %8, ptr noundef %10, i32 noundef %26) #22
  br label %36

29:                                               ; preds = %6
  %30 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %10) #22
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @RNA_property_float_set_index(ptr noundef nonnull %8, ptr noundef %10, i32 noundef %12, float noundef %14) #22
  br label %36

33:                                               ; preds = %29
  tail call void @RNA_property_float_set(ptr noundef nonnull %8, ptr noundef %10, float noundef %14) #22
  br label %36

34:                                               ; preds = %6
  %35 = fptosi float %14 to i32
  tail call void @RNA_property_enum_set(ptr noundef nonnull %8, ptr noundef %10, i32 noundef %35) #22
  br label %36

36:                                               ; preds = %6, %32, %33, %27, %28, %21, %22, %34
  %37 = load ptr, ptr %7, align 8, !tbaa !44
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %6, !llvm.loop !252

39:                                               ; preds = %36, %3, %1
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_boolean_set_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_int_set_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_float_set_index(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, i16 noundef signext %4) local_unnamed_addr #2 {
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #24
  %7 = icmp eq ptr %1, null
  %8 = icmp eq ptr %2, null
  %9 = or i1 %7, %8
  br i1 %9, label %49, label %10

10:                                               ; preds = %5
  call void @RNA_id_pointer_create(ptr noundef nonnull %1, ptr noundef nonnull %6) #22
  %11 = zext i16 %4 to i32
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 8
  %16 = load i32, ptr %15, align 4, !tbaa !253
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %14, %10
  %20 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !254
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !49
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  call fastcc void @animsys_calculate_nla(ptr noundef nonnull %6, ptr noundef nonnull %2, float noundef %3) #21
  br label %35

29:                                               ; preds = %23, %19
  %30 = load ptr, ptr %2, align 8, !tbaa !52
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !57
  call void @animsys_evaluate_action(ptr noundef nonnull %6, ptr noundef nonnull %30, ptr noundef %34, float noundef %3) #21
  br label %35

35:                                               ; preds = %29, %32, %28
  %36 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 8
  %37 = load i32, ptr %36, align 4, !tbaa !253
  %38 = and i32 %37, -3
  store i32 %38, ptr %36, align 4, !tbaa !253
  br label %39

39:                                               ; preds = %35, %14
  %40 = and i32 %11, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  call fastcc void @animsys_evaluate_drivers(ptr noundef nonnull %6, ptr noundef nonnull %2, float noundef %3) #21
  br label %43

43:                                               ; preds = %42, %39
  call fastcc void @animsys_evaluate_overrides(ptr noundef nonnull %6, ptr noundef nonnull %2) #21
  %44 = icmp eq ptr %0, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr @G, align 8, !tbaa !94
  call void @RNA_property_update_cache_flush(ptr noundef %46, ptr noundef nonnull %0) #22
  call void @RNA_property_update_cache_free() #22
  br label %47

47:                                               ; preds = %45, %43
  %48 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 8
  store i32 0, ptr %48, align 4, !tbaa !253
  br label %49

49:                                               ; preds = %5, %47
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #24
  ret void
}

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @animsys_calculate_nla(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 !PGOFuncName !255 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call fastcc void @animsys_evaluate_nla(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, float noundef %2) #21
  call void @nladata_flush_channels(ptr noundef nonnull %4) #21
  call void @BLI_freelistN(ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @animsys_evaluate_drivers(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #2 !PGOFuncName !256 {
  %4 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %3, %29
  %8 = phi ptr [ %30, %29 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.FCurve, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  %11 = getelementptr inbounds %struct.FCurve, ptr %8, i64 0, i32 9
  %12 = load i16, ptr %11, align 8, !tbaa !214
  %13 = and i16 %12, 1040
  %14 = icmp eq i16 %13, 0
  %15 = icmp ne ptr %10, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %29

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.ChannelDriver, ptr %10, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !257
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  tail call void @calculate_fcurve(ptr noundef nonnull %8, float noundef %2) #22
  %23 = tail call fastcc zeroext i8 @animsys_execute_fcurve(ptr noundef %0, ptr noundef nonnull %8) #21
  %24 = load i32, ptr %18, align 4, !tbaa !257
  %25 = and i32 %24, -3
  store i32 %25, ptr %18, align 4, !tbaa !257
  %26 = icmp eq i8 %23, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = or i32 %25, 1
  store i32 %28, ptr %18, align 4, !tbaa !257
  br label %29

29:                                               ; preds = %17, %27, %22, %7
  %30 = load ptr, ptr %8, align 8, !tbaa !44
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %7, !llvm.loop !259

32:                                               ; preds = %29, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @animsys_evaluate_overrides(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !260 {
  %3 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %15, %6 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.AnimOverride, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !261
  %10 = getelementptr inbounds %struct.AnimOverride, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !263
  %12 = getelementptr inbounds %struct.AnimOverride, ptr %7, i64 0, i32 4
  %13 = load float, ptr %12, align 4, !tbaa !264
  %14 = tail call fastcc zeroext i8 @animsys_write_rna_setting(ptr noundef %0, ptr noundef %9, i32 noundef %11, float noundef %13) #21, !range !38
  %15 = load ptr, ptr %7, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !265

17:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @RNA_property_update_cache_flush(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_update_cache_free() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_animsys_evaluate_all_animation(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2) local_unnamed_addr #2 {
  %4 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = fpext float %2 to double
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, double noundef %8) #21
  br label %10

10:                                               ; preds = %7, %3
  %11 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 34
  %12 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %11) #21, !range !38
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 15
  %16 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %15) #21, !range !38
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %415, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.34)
  br label %415

24:                                               ; preds = %14, %10
  %25 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 35
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %24, %40
  %29 = phi ptr [ %41, %40 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.ID, ptr %29, i64 0, i32 6
  %31 = load i32, ptr %30, align 4, !tbaa !266
  %32 = getelementptr inbounds %struct.ID, ptr %29, i64 0, i32 5
  %33 = load i16, ptr %32, align 2, !tbaa !267
  %34 = lshr i16 %33, 9
  %35 = and i16 %34, 1
  %36 = zext nneg i16 %35 to i32
  %37 = icmp sgt i32 %31, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %29) #21
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %29, ptr noundef %39, float noundef %2, i16 noundef signext 2) #21
  br label %40

40:                                               ; preds = %28, %38
  %41 = load ptr, ptr %29, align 8, !tbaa !44
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %28, !llvm.loop !268

43:                                               ; preds = %40, %24
  %44 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %45 = load ptr, ptr %44, align 8, !tbaa !44
  %46 = icmp eq ptr %45, null
  br i1 %46, label %68, label %47

47:                                               ; preds = %43, %65
  %48 = phi ptr [ %66, %65 ], [ %45, %43 ]
  %49 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 6
  %50 = load i32, ptr %49, align 4, !tbaa !266
  %51 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 5
  %52 = load i16, ptr %51, align 2, !tbaa !267
  %53 = lshr i16 %52, 9
  %54 = and i16 %53, 1
  %55 = zext nneg i16 %54 to i32
  %56 = icmp sgt i32 %50, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %48) #21
  %59 = getelementptr inbounds %struct.Tex, ptr %48, i64 0, i32 52
  %60 = load ptr, ptr %59, align 8, !tbaa !130
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %60) #21
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %60, ptr noundef %63, float noundef %2, i16 noundef signext 2) #21
  br label %64

64:                                               ; preds = %62, %57
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %48, ptr noundef %58, float noundef %2, i16 noundef signext 2) #21
  br label %65

65:                                               ; preds = %47, %64
  %66 = load ptr, ptr %48, align 8, !tbaa !44
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %47, !llvm.loop !269

68:                                               ; preds = %65, %43
  %69 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 21
  %70 = load ptr, ptr %69, align 8, !tbaa !44
  %71 = icmp eq ptr %70, null
  br i1 %71, label %93, label %72

72:                                               ; preds = %68, %90
  %73 = phi ptr [ %91, %90 ], [ %70, %68 ]
  %74 = getelementptr inbounds %struct.ID, ptr %73, i64 0, i32 6
  %75 = load i32, ptr %74, align 4, !tbaa !266
  %76 = getelementptr inbounds %struct.ID, ptr %73, i64 0, i32 5
  %77 = load i16, ptr %76, align 2, !tbaa !267
  %78 = lshr i16 %77, 9
  %79 = and i16 %78, 1
  %80 = zext nneg i16 %79 to i32
  %81 = icmp sgt i32 %75, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %72
  %83 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %73) #21
  %84 = getelementptr inbounds %struct.Lamp, ptr %73, i64 0, i32 74
  %85 = load ptr, ptr %84, align 8, !tbaa !134
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %85) #21
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %85, ptr noundef %88, float noundef %2, i16 noundef signext 2) #21
  br label %89

89:                                               ; preds = %87, %82
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %73, ptr noundef %83, float noundef %2, i16 noundef signext 2) #21
  br label %90

90:                                               ; preds = %72, %89
  %91 = load ptr, ptr %73, align 8, !tbaa !44
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %72, !llvm.loop !270

93:                                               ; preds = %90, %68
  %94 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %95 = load ptr, ptr %94, align 8, !tbaa !44
  %96 = icmp eq ptr %95, null
  br i1 %96, label %118, label %97

97:                                               ; preds = %93, %115
  %98 = phi ptr [ %116, %115 ], [ %95, %93 ]
  %99 = getelementptr inbounds %struct.ID, ptr %98, i64 0, i32 6
  %100 = load i32, ptr %99, align 4, !tbaa !266
  %101 = getelementptr inbounds %struct.ID, ptr %98, i64 0, i32 5
  %102 = load i16, ptr %101, align 2, !tbaa !267
  %103 = lshr i16 %102, 9
  %104 = and i16 %103, 1
  %105 = zext nneg i16 %104 to i32
  %106 = icmp sgt i32 %100, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %97
  %108 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %98) #21
  %109 = getelementptr inbounds %struct.Material, ptr %98, i64 0, i32 103
  %110 = load ptr, ptr %109, align 8, !tbaa !137
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %110) #21
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %110, ptr noundef %113, float noundef %2, i16 noundef signext 2) #21
  br label %114

114:                                              ; preds = %112, %107
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %98, ptr noundef %108, float noundef %2, i16 noundef signext 2) #21
  br label %115

115:                                              ; preds = %97, %114
  %116 = load ptr, ptr %98, align 8, !tbaa !44
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %97, !llvm.loop !271

118:                                              ; preds = %115, %93
  %119 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 22
  %120 = load ptr, ptr %119, align 8, !tbaa !44
  %121 = icmp eq ptr %120, null
  br i1 %121, label %137, label %122

122:                                              ; preds = %118, %134
  %123 = phi ptr [ %135, %134 ], [ %120, %118 ]
  %124 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 6
  %125 = load i32, ptr %124, align 4, !tbaa !266
  %126 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 5
  %127 = load i16, ptr %126, align 2, !tbaa !267
  %128 = lshr i16 %127, 9
  %129 = and i16 %128, 1
  %130 = zext nneg i16 %129 to i32
  %131 = icmp sgt i32 %125, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  %133 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %123) #21
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %123, ptr noundef %133, float noundef %2, i16 noundef signext 2) #21
  br label %134

134:                                              ; preds = %122, %132
  %135 = load ptr, ptr %123, align 8, !tbaa !44
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %122, !llvm.loop !272

137:                                              ; preds = %134, %118
  %138 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 24
  %139 = load ptr, ptr %138, align 8, !tbaa !44
  %140 = icmp eq ptr %139, null
  br i1 %140, label %156, label %141

141:                                              ; preds = %137, %153
  %142 = phi ptr [ %154, %153 ], [ %139, %137 ]
  %143 = getelementptr inbounds %struct.ID, ptr %142, i64 0, i32 6
  %144 = load i32, ptr %143, align 4, !tbaa !266
  %145 = getelementptr inbounds %struct.ID, ptr %142, i64 0, i32 5
  %146 = load i16, ptr %145, align 2, !tbaa !267
  %147 = lshr i16 %146, 9
  %148 = and i16 %147, 1
  %149 = zext nneg i16 %148 to i32
  %150 = icmp sgt i32 %144, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %141
  %152 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %142) #21
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %142, ptr noundef %152, float noundef %2, i16 noundef signext 2) #21
  br label %153

153:                                              ; preds = %141, %151
  %154 = load ptr, ptr %142, align 8, !tbaa !44
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %141, !llvm.loop !273

156:                                              ; preds = %153, %137
  %157 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 16
  %158 = load ptr, ptr %157, align 8, !tbaa !44
  %159 = icmp eq ptr %158, null
  br i1 %159, label %175, label %160

160:                                              ; preds = %156, %172
  %161 = phi ptr [ %173, %172 ], [ %158, %156 ]
  %162 = getelementptr inbounds %struct.ID, ptr %161, i64 0, i32 6
  %163 = load i32, ptr %162, align 4, !tbaa !266
  %164 = getelementptr inbounds %struct.ID, ptr %161, i64 0, i32 5
  %165 = load i16, ptr %164, align 2, !tbaa !267
  %166 = lshr i16 %165, 9
  %167 = and i16 %166, 1
  %168 = zext nneg i16 %167 to i32
  %169 = icmp sgt i32 %163, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %160
  %171 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %161) #21
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %161, ptr noundef %171, float noundef %2, i16 noundef signext 2) #21
  br label %172

172:                                              ; preds = %160, %170
  %173 = load ptr, ptr %161, align 8, !tbaa !44
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %160, !llvm.loop !274

175:                                              ; preds = %172, %156
  %176 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 15
  %177 = load ptr, ptr %176, align 8, !tbaa !44
  %178 = icmp eq ptr %177, null
  br i1 %178, label %194, label %179

179:                                              ; preds = %175, %191
  %180 = phi ptr [ %192, %191 ], [ %177, %175 ]
  %181 = getelementptr inbounds %struct.ID, ptr %180, i64 0, i32 6
  %182 = load i32, ptr %181, align 4, !tbaa !266
  %183 = getelementptr inbounds %struct.ID, ptr %180, i64 0, i32 5
  %184 = load i16, ptr %183, align 2, !tbaa !267
  %185 = lshr i16 %184, 9
  %186 = and i16 %185, 1
  %187 = zext nneg i16 %186 to i32
  %188 = icmp sgt i32 %182, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %179
  %190 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %180) #21
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %180, ptr noundef %190, float noundef %2, i16 noundef signext 2) #21
  br label %191

191:                                              ; preds = %179, %189
  %192 = load ptr, ptr %180, align 8, !tbaa !44
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %179, !llvm.loop !275

194:                                              ; preds = %191, %175
  %195 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 33
  %196 = load ptr, ptr %195, align 8, !tbaa !44
  %197 = icmp eq ptr %196, null
  br i1 %197, label %213, label %198

198:                                              ; preds = %194, %210
  %199 = phi ptr [ %211, %210 ], [ %196, %194 ]
  %200 = getelementptr inbounds %struct.ID, ptr %199, i64 0, i32 6
  %201 = load i32, ptr %200, align 4, !tbaa !266
  %202 = getelementptr inbounds %struct.ID, ptr %199, i64 0, i32 5
  %203 = load i16, ptr %202, align 2, !tbaa !267
  %204 = lshr i16 %203, 9
  %205 = and i16 %204, 1
  %206 = zext nneg i16 %205 to i32
  %207 = icmp sgt i32 %201, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %198
  %209 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %199) #21
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %199, ptr noundef %209, float noundef %2, i16 noundef signext 2) #21
  br label %210

210:                                              ; preds = %198, %208
  %211 = load ptr, ptr %199, align 8, !tbaa !44
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %198, !llvm.loop !276

213:                                              ; preds = %210, %194
  %214 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 20
  %215 = load ptr, ptr %214, align 8, !tbaa !44
  %216 = icmp eq ptr %215, null
  br i1 %216, label %232, label %217

217:                                              ; preds = %213, %229
  %218 = phi ptr [ %230, %229 ], [ %215, %213 ]
  %219 = getelementptr inbounds %struct.ID, ptr %218, i64 0, i32 6
  %220 = load i32, ptr %219, align 4, !tbaa !266
  %221 = getelementptr inbounds %struct.ID, ptr %218, i64 0, i32 5
  %222 = load i16, ptr %221, align 2, !tbaa !267
  %223 = lshr i16 %222, 9
  %224 = and i16 %223, 1
  %225 = zext nneg i16 %224 to i32
  %226 = icmp sgt i32 %220, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %217
  %228 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %218) #21
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %218, ptr noundef %228, float noundef %2, i16 noundef signext 2) #21
  br label %229

229:                                              ; preds = %217, %227
  %230 = load ptr, ptr %218, align 8, !tbaa !44
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %217, !llvm.loop !277

232:                                              ; preds = %229, %213
  %233 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 14
  %234 = load ptr, ptr %233, align 8, !tbaa !44
  %235 = icmp eq ptr %234, null
  br i1 %235, label %251, label %236

236:                                              ; preds = %232, %248
  %237 = phi ptr [ %249, %248 ], [ %234, %232 ]
  %238 = getelementptr inbounds %struct.ID, ptr %237, i64 0, i32 6
  %239 = load i32, ptr %238, align 4, !tbaa !266
  %240 = getelementptr inbounds %struct.ID, ptr %237, i64 0, i32 5
  %241 = load i16, ptr %240, align 2, !tbaa !267
  %242 = lshr i16 %241, 9
  %243 = and i16 %242, 1
  %244 = zext nneg i16 %243 to i32
  %245 = icmp sgt i32 %239, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %236
  %247 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %237) #21
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %237, ptr noundef %247, float noundef %2, i16 noundef signext 2) #21
  br label %248

248:                                              ; preds = %236, %246
  %249 = load ptr, ptr %237, align 8, !tbaa !44
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %236, !llvm.loop !278

251:                                              ; preds = %248, %232
  %252 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 37
  %253 = load ptr, ptr %252, align 8, !tbaa !44
  %254 = icmp eq ptr %253, null
  br i1 %254, label %270, label %255

255:                                              ; preds = %251, %267
  %256 = phi ptr [ %268, %267 ], [ %253, %251 ]
  %257 = getelementptr inbounds %struct.ID, ptr %256, i64 0, i32 6
  %258 = load i32, ptr %257, align 4, !tbaa !266
  %259 = getelementptr inbounds %struct.ID, ptr %256, i64 0, i32 5
  %260 = load i16, ptr %259, align 2, !tbaa !267
  %261 = lshr i16 %260, 9
  %262 = and i16 %261, 1
  %263 = zext nneg i16 %262 to i32
  %264 = icmp sgt i32 %258, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %255
  %266 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %256) #21
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %256, ptr noundef %266, float noundef %2, i16 noundef signext 2) #21
  br label %267

267:                                              ; preds = %255, %265
  %268 = load ptr, ptr %256, align 8, !tbaa !44
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %255, !llvm.loop !279

270:                                              ; preds = %267, %251
  %271 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 30
  %272 = load ptr, ptr %271, align 8, !tbaa !44
  %273 = icmp eq ptr %272, null
  br i1 %273, label %289, label %274

274:                                              ; preds = %270, %286
  %275 = phi ptr [ %287, %286 ], [ %272, %270 ]
  %276 = getelementptr inbounds %struct.ID, ptr %275, i64 0, i32 6
  %277 = load i32, ptr %276, align 4, !tbaa !266
  %278 = getelementptr inbounds %struct.ID, ptr %275, i64 0, i32 5
  %279 = load i16, ptr %278, align 2, !tbaa !267
  %280 = lshr i16 %279, 9
  %281 = and i16 %280, 1
  %282 = zext nneg i16 %281 to i32
  %283 = icmp sgt i32 %277, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %274
  %285 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %275) #21
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %275, ptr noundef %285, float noundef %2, i16 noundef signext 2) #21
  br label %286

286:                                              ; preds = %274, %284
  %287 = load ptr, ptr %275, align 8, !tbaa !44
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %274, !llvm.loop !280

289:                                              ; preds = %286, %270
  %290 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 42
  %291 = load ptr, ptr %290, align 8, !tbaa !44
  %292 = icmp eq ptr %291, null
  br i1 %292, label %308, label %293

293:                                              ; preds = %289, %305
  %294 = phi ptr [ %306, %305 ], [ %291, %289 ]
  %295 = getelementptr inbounds %struct.ID, ptr %294, i64 0, i32 6
  %296 = load i32, ptr %295, align 4, !tbaa !266
  %297 = getelementptr inbounds %struct.ID, ptr %294, i64 0, i32 5
  %298 = load i16, ptr %297, align 2, !tbaa !267
  %299 = lshr i16 %298, 9
  %300 = and i16 %299, 1
  %301 = zext nneg i16 %300 to i32
  %302 = icmp sgt i32 %296, %301
  br i1 %302, label %303, label %305

303:                                              ; preds = %293
  %304 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %294) #21
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %294, ptr noundef %304, float noundef %2, i16 noundef signext 2) #21
  br label %305

305:                                              ; preds = %293, %303
  %306 = load ptr, ptr %294, align 8, !tbaa !44
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %293, !llvm.loop !281

308:                                              ; preds = %305, %289
  %309 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 44
  %310 = load ptr, ptr %309, align 8, !tbaa !44
  %311 = icmp eq ptr %310, null
  br i1 %311, label %327, label %312

312:                                              ; preds = %308, %324
  %313 = phi ptr [ %325, %324 ], [ %310, %308 ]
  %314 = getelementptr inbounds %struct.ID, ptr %313, i64 0, i32 6
  %315 = load i32, ptr %314, align 4, !tbaa !266
  %316 = getelementptr inbounds %struct.ID, ptr %313, i64 0, i32 5
  %317 = load i16, ptr %316, align 2, !tbaa !267
  %318 = lshr i16 %317, 9
  %319 = and i16 %318, 1
  %320 = zext nneg i16 %319 to i32
  %321 = icmp sgt i32 %315, %320
  br i1 %321, label %322, label %324

322:                                              ; preds = %312
  %323 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %313) #21
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %313, ptr noundef %323, float noundef %2, i16 noundef signext 2) #21
  br label %324

324:                                              ; preds = %312, %322
  %325 = load ptr, ptr %313, align 8, !tbaa !44
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %312, !llvm.loop !282

327:                                              ; preds = %324, %308
  %328 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %329 = load ptr, ptr %328, align 8, !tbaa !44
  %330 = icmp eq ptr %329, null
  br i1 %330, label %346, label %331

331:                                              ; preds = %327, %343
  %332 = phi ptr [ %344, %343 ], [ %329, %327 ]
  %333 = getelementptr inbounds %struct.ID, ptr %332, i64 0, i32 6
  %334 = load i32, ptr %333, align 4, !tbaa !266
  %335 = getelementptr inbounds %struct.ID, ptr %332, i64 0, i32 5
  %336 = load i16, ptr %335, align 2, !tbaa !267
  %337 = lshr i16 %336, 9
  %338 = and i16 %337, 1
  %339 = zext nneg i16 %338 to i32
  %340 = icmp sgt i32 %334, %339
  br i1 %340, label %341, label %343

341:                                              ; preds = %331
  %342 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %332) #21
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %332, ptr noundef %342, float noundef %2, i16 noundef signext 0) #21
  br label %343

343:                                              ; preds = %331, %341
  %344 = load ptr, ptr %332, align 8, !tbaa !44
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %331, !llvm.loop !283

346:                                              ; preds = %343, %327
  %347 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 43
  %348 = load ptr, ptr %347, align 8, !tbaa !44
  %349 = icmp eq ptr %348, null
  br i1 %349, label %365, label %350

350:                                              ; preds = %346, %362
  %351 = phi ptr [ %363, %362 ], [ %348, %346 ]
  %352 = getelementptr inbounds %struct.ID, ptr %351, i64 0, i32 6
  %353 = load i32, ptr %352, align 4, !tbaa !266
  %354 = getelementptr inbounds %struct.ID, ptr %351, i64 0, i32 5
  %355 = load i16, ptr %354, align 2, !tbaa !267
  %356 = lshr i16 %355, 9
  %357 = and i16 %356, 1
  %358 = zext nneg i16 %357 to i32
  %359 = icmp sgt i32 %353, %358
  br i1 %359, label %360, label %362

360:                                              ; preds = %350
  %361 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %351) #21
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %351, ptr noundef %361, float noundef %2, i16 noundef signext 2) #21
  br label %362

362:                                              ; preds = %350, %360
  %363 = load ptr, ptr %351, align 8, !tbaa !44
  %364 = icmp eq ptr %363, null
  br i1 %364, label %365, label %350, !llvm.loop !284

365:                                              ; preds = %362, %346
  %366 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 25
  %367 = load ptr, ptr %366, align 8, !tbaa !44
  %368 = icmp eq ptr %367, null
  br i1 %368, label %390, label %369

369:                                              ; preds = %365, %387
  %370 = phi ptr [ %388, %387 ], [ %367, %365 ]
  %371 = getelementptr inbounds %struct.ID, ptr %370, i64 0, i32 6
  %372 = load i32, ptr %371, align 4, !tbaa !266
  %373 = getelementptr inbounds %struct.ID, ptr %370, i64 0, i32 5
  %374 = load i16, ptr %373, align 2, !tbaa !267
  %375 = lshr i16 %374, 9
  %376 = and i16 %375, 1
  %377 = zext nneg i16 %376 to i32
  %378 = icmp sgt i32 %372, %377
  br i1 %378, label %379, label %387

379:                                              ; preds = %369
  %380 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %370) #21
  %381 = getelementptr inbounds %struct.World, ptr %370, i64 0, i32 75
  %382 = load ptr, ptr %381, align 8, !tbaa !154
  %383 = icmp eq ptr %382, null
  br i1 %383, label %386, label %384

384:                                              ; preds = %379
  %385 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %382) #21
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %382, ptr noundef %385, float noundef %2, i16 noundef signext 2) #21
  br label %386

386:                                              ; preds = %384, %379
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %370, ptr noundef %380, float noundef %2, i16 noundef signext 2) #21
  br label %387

387:                                              ; preds = %369, %386
  %388 = load ptr, ptr %370, align 8, !tbaa !44
  %389 = icmp eq ptr %388, null
  br i1 %389, label %390, label %369, !llvm.loop !285

390:                                              ; preds = %387, %365
  %391 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %392 = load ptr, ptr %391, align 8, !tbaa !44
  %393 = icmp eq ptr %392, null
  br i1 %393, label %415, label %394

394:                                              ; preds = %390, %412
  %395 = phi ptr [ %413, %412 ], [ %392, %390 ]
  %396 = getelementptr inbounds %struct.ID, ptr %395, i64 0, i32 6
  %397 = load i32, ptr %396, align 4, !tbaa !266
  %398 = getelementptr inbounds %struct.ID, ptr %395, i64 0, i32 5
  %399 = load i16, ptr %398, align 2, !tbaa !267
  %400 = lshr i16 %399, 9
  %401 = and i16 %400, 1
  %402 = zext nneg i16 %401 to i32
  %403 = icmp sgt i32 %397, %402
  br i1 %403, label %404, label %412

404:                                              ; preds = %394
  %405 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %395) #21
  %406 = getelementptr inbounds %struct.Scene, ptr %395, i64 0, i32 18
  %407 = load ptr, ptr %406, align 8, !tbaa !157
  %408 = icmp eq ptr %407, null
  br i1 %408, label %411, label %409

409:                                              ; preds = %404
  %410 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %407) #21
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %407, ptr noundef %410, float noundef %2, i16 noundef signext 2) #21
  br label %411

411:                                              ; preds = %409, %404
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %395, ptr noundef %405, float noundef %2, i16 noundef signext 2) #21
  br label %412

412:                                              ; preds = %394, %411
  %413 = load ptr, ptr %395, align 8, !tbaa !44
  %414 = icmp eq ptr %413, null
  br i1 %414, label %415, label %394, !llvm.loop !286

415:                                              ; preds = %412, %390, %18, %22
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_path_rename_fix(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #2 !PGOFuncName !287 {
  %7 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %1) #23
  %8 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %2) #23
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #23
  %10 = icmp ne ptr %7, null
  %11 = icmp ne ptr %8, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %43

13:                                               ; preds = %6
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %15 = shl i64 %14, 32
  %16 = ashr exact i64 %15, 32
  %17 = getelementptr inbounds i8, ptr %7, i64 %16
  %18 = icmp eq ptr %17, %8
  br i1 %18, label %19, label %43

19:                                               ; preds = %13
  %20 = icmp eq i8 %5, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = tail call fastcc zeroext i8 @check_rna_path_is_valid(ptr noundef %0, ptr noundef %4) #21
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %21, %19
  %25 = tail call ptr @BLI_dynstr_new() #22
  %26 = shl i64 %9, 32
  %27 = ashr exact i64 %26, 32
  %28 = getelementptr inbounds i8, ptr %8, i64 %27
  %29 = icmp ugt ptr %7, %4
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i8, ptr %7, align 1, !tbaa !119
  store i8 0, ptr %7, align 1, !tbaa !119
  tail call void @BLI_dynstr_append(ptr noundef %25, ptr noundef %4) #22
  store i8 %31, ptr %7, align 1, !tbaa !119
  br label %32

32:                                               ; preds = %30, %24
  tail call void @BLI_dynstr_append(ptr noundef %25, ptr noundef %1) #22
  tail call void @BLI_dynstr_append(ptr noundef %25, ptr noundef %3) #22
  tail call void @BLI_dynstr_append(ptr noundef %25, ptr noundef nonnull %28) #22
  %33 = tail call ptr @BLI_dynstr_get_cstring(ptr noundef %25) #22
  tail call void @BLI_dynstr_free(ptr noundef %25) #22
  br i1 %20, label %39, label %34

34:                                               ; preds = %32
  %35 = tail call fastcc zeroext i8 @check_rna_path_is_valid(ptr noundef %0, ptr noundef %33) #21
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %36, ptr %33, ptr %4
  %38 = select i1 %36, ptr %4, ptr %33
  br label %39

39:                                               ; preds = %34, %32
  %40 = phi ptr [ %4, %32 ], [ %37, %34 ]
  %41 = phi ptr [ %33, %32 ], [ %38, %34 ]
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %42(ptr noundef %40) #22
  br label %43

43:                                               ; preds = %39, %6, %13, %21
  %44 = phi ptr [ %4, %21 ], [ %4, %13 ], [ %4, %6 ], [ %41, %39 ]
  ret ptr %44
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @check_rna_path_is_valid(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !PGOFuncName !288 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !44
  call void @RNA_id_pointer_create(ptr noundef %0, ptr noundef nonnull %3) #22
  %6 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @BLI_dynstr_new() local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_dynstr_append(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_fcurve(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @animsys_remap_path(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #4 !PGOFuncName !289 {
  store ptr %0, ptr %1, align 8, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @animsys_write_rna_setting(ptr noundef %0, ptr noundef %1, i32 noundef %2, float noundef %3) unnamed_addr #2 !PGOFuncName !290 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #24
  %7 = call zeroext i8 @RNA_path_resolve_property(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %5) #22
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %96, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !44
  %11 = call zeroext i8 @RNA_property_animateable(ptr noundef nonnull %6, ptr noundef %10) #22
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %106, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8, !tbaa !44
  %15 = call i32 @RNA_property_array_length(ptr noundef nonnull %6, ptr noundef %14) #22
  %16 = icmp eq i32 %15, 0
  %17 = icmp sgt i32 %15, %2
  %18 = or i1 %16, %17
  br i1 %18, label %34, label %19

19:                                               ; preds = %13
  %20 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %106, label %23

23:                                               ; preds = %19
  %24 = icmp eq ptr %0, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %0, align 8, !tbaa !100
  %27 = icmp eq ptr %26, null
  %28 = getelementptr inbounds %struct.ID, ptr %26, i64 0, i32 4, i64 2
  %29 = select i1 %27, ptr @.str.23, ptr %28
  br label %30

30:                                               ; preds = %25, %23
  %31 = phi ptr [ @.str.23, %23 ], [ %29, %25 ]
  %32 = add nsw i32 %15, -1
  %33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef nonnull %31, ptr noundef %1, i32 noundef %2, i32 noundef %32) #21
  br label %106

34:                                               ; preds = %13
  %35 = load ptr, ptr %5, align 8, !tbaa !44
  %36 = call i32 @RNA_property_type(ptr noundef %35) #22
  switch i32 %36, label %106 [
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
  %42 = call i32 @RNA_property_boolean_get_index(ptr noundef nonnull %6, ptr noundef %38, i32 noundef %2) #22
  %43 = icmp eq i32 %42, %40
  br i1 %43, label %106, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %5, align 8, !tbaa !44
  call void @RNA_property_boolean_set_index(ptr noundef nonnull %6, ptr noundef %45, i32 noundef %2, i32 noundef %40) #22
  br label %83

46:                                               ; preds = %37
  %47 = call i32 @RNA_property_boolean_get(ptr noundef nonnull %6, ptr noundef %38) #22
  %48 = icmp eq i32 %47, %40
  br i1 %48, label %106, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %5, align 8, !tbaa !44
  call void @RNA_property_boolean_set(ptr noundef nonnull %6, ptr noundef %50, i32 noundef %40) #22
  br label %83

51:                                               ; preds = %34
  %52 = load ptr, ptr %5, align 8, !tbaa !44
  %53 = fptosi float %3 to i32
  br i1 %16, label %59, label %54

54:                                               ; preds = %51
  %55 = call i32 @RNA_property_int_get_index(ptr noundef nonnull %6, ptr noundef %52, i32 noundef %2) #22
  %56 = icmp eq i32 %55, %53
  br i1 %56, label %106, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %5, align 8, !tbaa !44
  call void @RNA_property_int_set_index(ptr noundef nonnull %6, ptr noundef %58, i32 noundef %2, i32 noundef %53) #22
  br label %83

59:                                               ; preds = %51
  %60 = call i32 @RNA_property_int_get(ptr noundef nonnull %6, ptr noundef %52) #22
  %61 = icmp eq i32 %60, %53
  br i1 %61, label %106, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %5, align 8, !tbaa !44
  call void @RNA_property_int_set(ptr noundef nonnull %6, ptr noundef %63, i32 noundef %53) #22
  br label %83

64:                                               ; preds = %34
  %65 = load ptr, ptr %5, align 8, !tbaa !44
  br i1 %16, label %71, label %66

66:                                               ; preds = %64
  %67 = call float @RNA_property_float_get_index(ptr noundef nonnull %6, ptr noundef %65, i32 noundef %2) #22
  %68 = fcmp une float %67, %3
  br i1 %68, label %69, label %106

69:                                               ; preds = %66
  %70 = load ptr, ptr %5, align 8, !tbaa !44
  call void @RNA_property_float_set_index(ptr noundef nonnull %6, ptr noundef %70, i32 noundef %2, float noundef %3) #22
  br label %83

71:                                               ; preds = %64
  %72 = call float @RNA_property_float_get(ptr noundef nonnull %6, ptr noundef %65) #22
  %73 = fcmp une float %72, %3
  br i1 %73, label %74, label %106

74:                                               ; preds = %71
  %75 = load ptr, ptr %5, align 8, !tbaa !44
  call void @RNA_property_float_set(ptr noundef nonnull %6, ptr noundef %75, float noundef %3) #22
  br label %83

76:                                               ; preds = %34
  %77 = load ptr, ptr %5, align 8, !tbaa !44
  %78 = call i32 @RNA_property_enum_get(ptr noundef nonnull %6, ptr noundef %77) #22
  %79 = fptosi float %3 to i32
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %106, label %81

81:                                               ; preds = %76
  %82 = load ptr, ptr %5, align 8, !tbaa !44
  call void @RNA_property_enum_set(ptr noundef nonnull %6, ptr noundef %82, i32 noundef %79) #22
  br label %83

83:                                               ; preds = %81, %69, %74, %57, %62, %44, %49
  %84 = load ptr, ptr %6, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %106, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.ID, ptr %84, i64 0, i32 5
  %88 = load i16, ptr %87, align 2, !tbaa !267
  %89 = and i16 %88, 16384
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = or i16 %88, 4096
  store i16 %92, ptr %87, align 2, !tbaa !267
  %93 = load ptr, ptr @G, align 8, !tbaa !94
  %94 = getelementptr inbounds %struct.ID, ptr %84, i64 0, i32 4
  %95 = load i16, ptr %94, align 8, !tbaa !34
  call void @DAG_id_type_tag(ptr noundef %93, i16 noundef signext %95) #22
  br label %106

96:                                               ; preds = %4
  %97 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %0, align 8, !tbaa !100
  %102 = icmp eq ptr %101, null
  %103 = getelementptr inbounds %struct.ID, ptr %101, i64 0, i32 4, i64 2
  %104 = select i1 %102, ptr @.str.23, ptr %103
  %105 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef nonnull %104, ptr noundef %1, i32 noundef %2) #21
  br label %106

106:                                              ; preds = %46, %41, %59, %54, %71, %66, %76, %30, %19, %34, %96, %100, %9, %83, %91, %86
  %107 = phi i8 [ 1, %86 ], [ 1, %91 ], [ 1, %83 ], [ 1, %9 ], [ 0, %100 ], [ 0, %96 ], [ 0, %34 ], [ 0, %19 ], [ 0, %30 ], [ 1, %76 ], [ 1, %66 ], [ 1, %71 ], [ 1, %54 ], [ 1, %59 ], [ 1, %41 ], [ 1, %46 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  ret i8 %107
}

; Function Attrs: optsize
declare zeroext i8 @RNA_property_animateable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_int_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @RNA_property_float_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_id_type_tag(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare float @nlastrip_get_frame(ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @nlastrip_get_influence(ptr nocapture noundef %0, float noundef %1) unnamed_addr #11 !PGOFuncName !291 {
  %3 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 16
  %4 = load <2 x float>, ptr %3, align 8, !tbaa !243
  %5 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %4)
  store <2 x float> %5, ptr %3, align 8, !tbaa !243
  %6 = extractelement <2 x float> %5, i64 0
  %7 = fcmp ult float %6, 0x3E80000000000000
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 10
  %10 = load float, ptr %9, align 8, !tbaa !222
  %11 = fadd float %6, %10
  %12 = fcmp ult float %11, %1
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = fsub float %1, %10
  %15 = extractelement <2 x float> %4, i64 0
  %16 = fdiv float %14, %15
  %17 = tail call float @llvm.fabs.f32(float %16)
  br label %31

18:                                               ; preds = %8, %2
  %19 = extractelement <2 x float> %5, i64 1
  %20 = fcmp ult float %19, 0x3E80000000000000
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.NlaStrip, ptr %0, i64 0, i32 11
  %23 = load float, ptr %22, align 4, !tbaa !223
  %24 = fsub float %23, %19
  %25 = fcmp ugt float %24, %1
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = fsub float %23, %1
  %28 = extractelement <2 x float> %4, i64 1
  %29 = fdiv float %27, %28
  %30 = tail call float @llvm.fabs.f32(float %29)
  br label %31

31:                                               ; preds = %18, %21, %26, %13
  %32 = phi float [ %17, %13 ], [ %30, %26 ], [ 1.000000e+00, %21 ], [ 1.000000e+00, %18 ]
  ret float %32
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @nlaeval_fmodifiers_join_stacks(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #15 !PGOFuncName !292 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 8, !tbaa !93
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %5, %3
  %9 = icmp eq ptr %2, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %2, align 8, !tbaa !93
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %10
  store ptr %11, ptr %0, align 8, !tbaa !93
  %14 = getelementptr inbounds %struct.ListBase, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !226
  %16 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !226
  br label %34

17:                                               ; preds = %5
  %18 = icmp eq ptr %2, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %2, align 8, !tbaa !93
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19, %17
  store ptr %6, ptr %0, align 8, !tbaa !93
  %23 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !226
  %25 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !226
  br label %34

26:                                               ; preds = %19
  store ptr %6, ptr %0, align 8, !tbaa !93
  %27 = getelementptr inbounds %struct.ListBase, ptr %2, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !226
  %29 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !226
  %30 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !226
  %32 = load ptr, ptr %2, align 8, !tbaa !93
  store ptr %32, ptr %31, align 8, !tbaa !293
  %33 = getelementptr inbounds %struct.FModifier, ptr %32, i64 0, i32 1
  store ptr %31, ptr %33, align 8, !tbaa !295
  br label %34

34:                                               ; preds = %22, %26, %8, %10, %13
  ret void
}

; Function Attrs: optsize
declare ptr @evaluate_fmodifiers_storage_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @evaluate_time_fmodifiers(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @evaluate_value_fmodifiers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @nlaevalchan_verify(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #2 !PGOFuncName !296 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  store ptr null, ptr %8, align 8, !tbaa !44
  %9 = icmp eq ptr %1, null
  br i1 %9, label %49, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  call fastcc void @animsys_remap_path(ptr noundef %12, ptr noundef nonnull %8) #21
  %13 = load ptr, ptr %8, align 8, !tbaa !44
  %14 = call zeroext i8 @RNA_path_resolve_property(ptr noundef %0, ptr noundef %13, ptr noundef nonnull %7, ptr noundef nonnull %6) #22
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %49, label %20

20:                                               ; preds = %16
  %21 = call i32 @puts(ptr nonnull dereferenceable(1) @str.36)
  br label %49

22:                                               ; preds = %10
  %23 = load ptr, ptr %6, align 8, !tbaa !44
  %24 = call zeroext i8 @RNA_property_animateable(ptr noundef nonnull %7, ptr noundef %23) #22
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  %31 = call i32 @puts(ptr nonnull dereferenceable(1) @str.35)
  br label %49

32:                                               ; preds = %22
  %33 = load ptr, ptr %6, align 8, !tbaa !44
  %34 = getelementptr inbounds %struct.FCurve, ptr %3, i64 0, i32 11
  %35 = load i32, ptr %34, align 4, !tbaa !218
  %36 = call fastcc ptr @nlaevalchan_find_match(ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef %33, i32 noundef %35) #21
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %40 = call ptr %39(i64 noundef 56, ptr noundef nonnull @.str.28) #22
  call void @BLI_addtail(ptr noundef nonnull %1, ptr noundef %40) #22
  %41 = getelementptr inbounds %struct.NlaEvalChannel, ptr %40, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !297
  %42 = load ptr, ptr %6, align 8, !tbaa !44
  %43 = getelementptr inbounds %struct.NlaEvalChannel, ptr %40, i64 0, i32 3
  store ptr %42, ptr %43, align 8, !tbaa !248
  %44 = load i32, ptr %34, align 4, !tbaa !218
  %45 = getelementptr inbounds %struct.NlaEvalChannel, ptr %40, i64 0, i32 4
  store i32 %44, ptr %45, align 8, !tbaa !250
  call fastcc void @nlaevalchan_value_init(ptr noundef %40) #21
  br label %46

46:                                               ; preds = %32, %38
  %47 = phi i8 [ 1, %38 ], [ 0, %32 ]
  %48 = phi ptr [ %40, %38 ], [ %36, %32 ]
  store i8 %47, ptr %4, align 1, !tbaa !119
  br label %49

49:                                               ; preds = %26, %30, %16, %20, %5, %46
  %50 = phi ptr [ %48, %46 ], [ null, %5 ], [ null, %20 ], [ null, %16 ], [ null, %30 ], [ null, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  ret ptr %50
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @nlaevalchan_accumulate(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, i8 noundef zeroext %3) unnamed_addr #16 !PGOFuncName !298 {
  %5 = getelementptr inbounds %struct.NlaEvalStrip, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !232
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 18
  %8 = load i16, ptr %7, align 8, !tbaa !299
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 8
  %10 = load float, ptr %9, align 8, !tbaa !229
  %11 = icmp ne i8 %3, 0
  %12 = icmp eq i16 %8, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.NlaEvalChannel, ptr %0, i64 0, i32 5
  store float %2, ptr %15, align 4, !tbaa !251
  br label %45

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.NlaEvalStrip, ptr %1, i64 0, i32 5
  %18 = load i16, ptr %17, align 2, !tbaa !234
  %19 = icmp eq i16 %18, 3
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.NlaEvalStrip, ptr %1, i64 0, i32 6
  %22 = load float, ptr %21, align 4, !tbaa !237
  %23 = fmul float %10, %22
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi float [ %23, %20 ], [ %10, %16 ]
  %26 = tail call float @llvm.fabs.f32(float %25)
  %27 = fcmp ult float %26, 0x3E80000000000000
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.NlaEvalChannel, ptr %0, i64 0, i32 5
  %30 = load float, ptr %29, align 4, !tbaa !251
  switch i16 %8, label %41 [
    i16 1, label %31
    i16 2, label %33
    i16 3, label %36
  ]

31:                                               ; preds = %28
  %32 = tail call float @llvm.fmuladd.f32(float %2, float %25, float %30)
  store float %32, ptr %29, align 4, !tbaa !251
  br label %45

33:                                               ; preds = %28
  %34 = fneg float %2
  %35 = tail call float @llvm.fmuladd.f32(float %34, float %25, float %30)
  store float %35, ptr %29, align 4, !tbaa !251
  br label %45

36:                                               ; preds = %28
  %37 = fmul float %30, %2
  %38 = fsub float 1.000000e+00, %25
  %39 = fmul float %38, %30
  %40 = tail call float @llvm.fmuladd.f32(float %25, float %37, float %39)
  store float %40, ptr %29, align 4, !tbaa !251
  br label %45

41:                                               ; preds = %28
  %42 = fsub float 1.000000e+00, %25
  %43 = fmul float %25, %2
  %44 = tail call float @llvm.fmuladd.f32(float %30, float %42, float %43)
  store float %44, ptr %29, align 4, !tbaa !251
  br label %45

45:                                               ; preds = %31, %33, %36, %41, %24, %14
  ret void
}

; Function Attrs: optsize
declare void @evaluate_fmodifiers_storage_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @nlaeval_fmodifiers_split_stacks(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #15 !PGOFuncName !300 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !93
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %1, align 8, !tbaa !93
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !226
  store ptr null, ptr %14, align 8, !tbaa !293
  %15 = getelementptr inbounds %struct.FModifier, ptr %10, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !295
  br label %16

16:                                               ; preds = %6, %9, %2, %12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @nlaevalchan_find_match(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2, i32 noundef %3) unnamed_addr #17 !PGOFuncName !301 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !111
  br label %12

12:                                               ; preds = %9, %25
  %13 = phi ptr [ %7, %9 ], [ %26, %25 ]
  %14 = getelementptr inbounds %struct.NlaEvalChannel, ptr %13, i64 0, i32 2, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !302
  %16 = icmp eq ptr %15, %11
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.NlaEvalChannel, ptr %13, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !248
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.NlaEvalChannel, ptr %13, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !250
  %24 = icmp eq i32 %23, %3
  br i1 %24, label %28, label %25

25:                                               ; preds = %12, %17, %21
  %26 = load ptr, ptr %13, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %12, !llvm.loop !303

28:                                               ; preds = %21, %25, %6, %4
  %29 = phi ptr [ null, %4 ], [ null, %6 ], [ %13, %21 ], [ null, %25 ]
  ret ptr %29
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nlaevalchan_value_init(ptr noundef %0) unnamed_addr #2 !PGOFuncName !304 {
  %2 = getelementptr inbounds %struct.NlaEvalChannel, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.NlaEvalChannel, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !248
  %5 = getelementptr inbounds %struct.NlaEvalChannel, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !250
  %7 = tail call i32 @RNA_property_type(ptr noundef %4) #22
  switch i32 %7, label %40 [
    i32 0, label %8
    i32 1, label %18
    i32 2, label %28
    i32 4, label %36
  ]

8:                                                ; preds = %1
  %9 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %4) #22
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.NlaEvalChannel, ptr %0, i64 0, i32 5
  br i1 %10, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @RNA_property_boolean_get_default_index(ptr noundef nonnull %2, ptr noundef %4, i32 noundef %6) #22
  %14 = sitofp i32 %13 to float
  store float %14, ptr %11, align 4, !tbaa !251
  br label %40

15:                                               ; preds = %8
  %16 = tail call i32 @RNA_property_boolean_get_default(ptr noundef nonnull %2, ptr noundef %4) #22
  %17 = sitofp i32 %16 to float
  store float %17, ptr %11, align 4, !tbaa !251
  br label %40

18:                                               ; preds = %1
  %19 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %4) #22
  %20 = icmp eq i8 %19, 0
  %21 = getelementptr inbounds %struct.NlaEvalChannel, ptr %0, i64 0, i32 5
  br i1 %20, label %25, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @RNA_property_int_get_default_index(ptr noundef nonnull %2, ptr noundef %4, i32 noundef %6) #22
  %24 = sitofp i32 %23 to float
  store float %24, ptr %21, align 4, !tbaa !251
  br label %40

25:                                               ; preds = %18
  %26 = tail call i32 @RNA_property_int_get_default(ptr noundef nonnull %2, ptr noundef %4) #22
  %27 = sitofp i32 %26 to float
  store float %27, ptr %21, align 4, !tbaa !251
  br label %40

28:                                               ; preds = %1
  %29 = tail call zeroext i8 @RNA_property_array_check(ptr noundef %4) #22
  %30 = icmp eq i8 %29, 0
  %31 = getelementptr inbounds %struct.NlaEvalChannel, ptr %0, i64 0, i32 5
  br i1 %30, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call float @RNA_property_float_get_default_index(ptr noundef nonnull %2, ptr noundef %4, i32 noundef %6) #22
  store float %33, ptr %31, align 4, !tbaa !251
  br label %40

34:                                               ; preds = %28
  %35 = tail call float @RNA_property_float_get_default(ptr noundef nonnull %2, ptr noundef %4) #22
  store float %35, ptr %31, align 4, !tbaa !251
  br label %40

36:                                               ; preds = %1
  %37 = tail call i32 @RNA_property_enum_get_default(ptr noundef nonnull %2, ptr noundef %4) #22
  %38 = sitofp i32 %37 to float
  %39 = getelementptr inbounds %struct.NlaEvalChannel, ptr %0, i64 0, i32 5
  store float %38, ptr %39, align 4, !tbaa !251
  br label %40

40:                                               ; preds = %1, %32, %34, %22, %25, %12, %15, %36
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get_default_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get_default(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_int_get_default_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_int_get_default(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @RNA_property_float_get_default_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @RNA_property_float_get_default(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_enum_get_default(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nlaevalchan_buffers_accumulate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !305 {
  %4 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef %1) #21, !range !38
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 8, !tbaa !93
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %6, %24
  %10 = phi ptr [ %11, %24 ], [ %7, %6 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !306
  %12 = getelementptr inbounds %struct.NlaEvalChannel, ptr %10, i64 0, i32 2
  %13 = getelementptr inbounds %struct.NlaEvalChannel, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !248
  %15 = getelementptr inbounds %struct.NlaEvalChannel, ptr %10, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !250
  %17 = tail call fastcc ptr @nlaevalchan_find_match(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %14, i32 noundef %16) #21
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.NlaEvalChannel, ptr %10, i64 0, i32 5
  %21 = load float, ptr %20, align 4, !tbaa !251
  %22 = fptoui float %21 to i8
  tail call fastcc void @nlaevalchan_accumulate(ptr noundef nonnull %17, ptr noundef %2, float noundef 0.000000e+00, i8 noundef zeroext %22) #21
  br label %24

23:                                               ; preds = %9
  tail call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef nonnull %10) #22
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %10) #22
  br label %24

24:                                               ; preds = %19, %23
  %25 = icmp eq ptr %11, null
  br i1 %25, label %26, label %9, !llvm.loop !307

26:                                               ; preds = %24, %6
  tail call void @BLI_freelistN(ptr noundef nonnull %1) #22
  br label %27

27:                                               ; preds = %3, %26
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @animsys_evaluate_nla(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #2 !PGOFuncName !308 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.NlaStrip, align 8
  %7 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %6, i8 0, i64 208, i1 false)
  %8 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %54, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 7
  br label %13

13:                                               ; preds = %11, %45
  %14 = phi ptr [ %9, %11 ], [ %48, %45 ]
  %15 = phi i8 [ 0, %11 ], [ %46, %45 ]
  %16 = phi i16 [ 0, %11 ], [ %47, %45 ]
  %17 = load i32, ptr %12, align 8, !tbaa !49
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.NlaTrack, ptr %14, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !309
  %23 = and i32 %22, 1024
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %20, %13
  %26 = and i32 %17, 1
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.NlaTrack, ptr %14, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !309
  %30 = and i32 %29, 8
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %27, i1 true, i1 %31
  %33 = and i32 %29, 4
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %45

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.NlaTrack, ptr %14, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !311
  %39 = icmp eq ptr %38, null
  %40 = select i1 %39, i8 %15, i8 1
  %41 = call ptr @nlastrips_ctime_get_strip(ptr noundef nonnull %5, ptr noundef nonnull %37, i16 noundef signext %16, float noundef %3) #21
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.NlaEvalStrip, ptr %41, i64 0, i32 2
  store ptr %14, ptr %44, align 8, !tbaa !312
  br label %45

45:                                               ; preds = %25, %36, %43
  %46 = phi i8 [ %40, %43 ], [ %40, %36 ], [ %15, %25 ]
  %47 = add i16 %16, 1
  %48 = load ptr, ptr %14, align 8, !tbaa !44
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %13, !llvm.loop !313

50:                                               ; preds = %20, %45
  %51 = phi i8 [ %46, %45 ], [ %15, %20 ]
  %52 = phi i1 [ false, %45 ], [ true, %20 ]
  %53 = icmp eq i8 %51, 0
  br label %54

54:                                               ; preds = %50, %4
  %55 = phi i1 [ true, %4 ], [ %53, %50 ]
  %56 = phi i1 [ false, %4 ], [ %52, %50 ]
  %57 = load ptr, ptr %2, align 8, !tbaa !52
  %58 = icmp eq ptr %57, null
  br i1 %58, label %115, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 7
  %61 = load i32, ptr %60, align 8, !tbaa !49
  %62 = and i32 %61, 5
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %115, label %64

64:                                               ; preds = %59
  br i1 %55, label %65, label %69

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !50
  %68 = icmp eq ptr %67, null
  br i1 %68, label %104, label %69

69:                                               ; preds = %65, %64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #24
  %70 = getelementptr inbounds %struct.ListBase, ptr %7, i64 0, i32 1
  store ptr %6, ptr %70, align 8, !tbaa !226
  store ptr %6, ptr %7, align 8, !tbaa !93
  %71 = and i32 %61, 8
  %72 = icmp eq i32 %71, 0
  %73 = and i1 %56, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %76, i64 208, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br label %102

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 3
  store ptr %57, ptr %78, align 8, !tbaa !63
  %79 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !57
  %81 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 4
  store ptr %80, ptr %81, align 8, !tbaa !65
  %82 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 12
  %83 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 13
  call void @calc_action_range(ptr noundef nonnull %57, ptr noundef nonnull %82, ptr noundef nonnull %83, i16 noundef signext 1) #22
  %84 = load float, ptr %82, align 8
  %85 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 10
  store float %84, ptr %85, align 8, !tbaa !222
  %86 = load float, ptr %83, align 4
  %87 = fsub float %84, %86
  %88 = call float @llvm.fabs.f32(float %87)
  %89 = fcmp ult float %88, 0x3E80000000000000
  %90 = fadd float %84, 1.000000e+00
  %91 = select i1 %89, float %90, float %86
  %92 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 11
  store float %91, ptr %92, align 4, !tbaa !223
  %93 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 9
  %94 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 18
  %95 = load <2 x i16>, ptr %93, align 8, !tbaa !34
  store <2 x i16> %95, ptr %94, align 8, !tbaa !34
  %96 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 11
  %97 = load float, ptr %96, align 4, !tbaa !45
  %98 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 8
  store float %97, ptr %98, align 8, !tbaa !229
  %99 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 23
  %100 = load i32, ptr %99, align 8, !tbaa !228
  %101 = or i32 %100, 32
  store i32 %101, ptr %99, align 8, !tbaa !228
  br label %102

102:                                              ; preds = %77, %74
  %103 = call ptr @nlastrips_ctime_get_strip(ptr noundef nonnull %5, ptr noundef nonnull %7, i16 noundef signext -1, float noundef %3) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #24
  br label %115

104:                                              ; preds = %65
  %105 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !79
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = call i32 @puts(ptr nonnull dereferenceable(1) @str.37)
  %110 = load ptr, ptr %2, align 8, !tbaa !52
  br label %111

111:                                              ; preds = %108, %104
  %112 = phi ptr [ %110, %108 ], [ %57, %104 ]
  %113 = getelementptr inbounds %struct.AnimData, ptr %2, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !57
  call void @animsys_evaluate_action(ptr noundef %1, ptr noundef %112, ptr noundef %114, float noundef %3) #21
  call void @BLI_freelistN(ptr noundef nonnull %5) #22
  br label %138

115:                                              ; preds = %59, %102, %54
  %116 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %5) #21, !range !38
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %115
  %119 = load ptr, ptr %5, align 8, !tbaa !44
  %120 = icmp eq ptr %119, null
  br i1 %120, label %125, label %121

121:                                              ; preds = %118, %121
  %122 = phi ptr [ %123, %121 ], [ %119, %118 ]
  call void @nlastrip_evaluate(ptr noundef %1, ptr noundef %0, ptr noundef null, ptr noundef nonnull %122) #21
  %123 = load ptr, ptr %122, align 8, !tbaa !44
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %121, !llvm.loop !314

125:                                              ; preds = %121, %118
  call void @BLI_freelistN(ptr noundef nonnull %5) #22
  %126 = load ptr, ptr %1, align 8, !tbaa !100
  %127 = icmp eq ptr %126, null
  br i1 %127, label %138, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.ID, ptr %126, i64 0, i32 5
  %130 = load i16, ptr %129, align 2, !tbaa !267
  %131 = and i16 %130, 16384
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = or i16 %130, 4096
  store i16 %134, ptr %129, align 2, !tbaa !267
  %135 = load ptr, ptr @G, align 8, !tbaa !94
  %136 = getelementptr inbounds %struct.ID, ptr %126, i64 0, i32 4
  %137 = load i16, ptr %136, align 8, !tbaa !34
  call void @DAG_id_type_tag(ptr noundef %135, i16 noundef signext %137) #22
  br label %138

138:                                              ; preds = %125, %133, %128, %115, %111
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  ret void
}

; Function Attrs: optsize
declare void @calc_action_range(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #20

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind optsize willreturn memory(read) }
attributes #24 = { nounwind }

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
!56 = !{!"anim_sys.c:BLI_listbase_clear"}
!57 = !{!46, !42, i64 16}
!58 = !{!59, !42, i64 16}
!59 = !{!"AnimMapper", !42, i64 0, !42, i64 8, !42, i64 16, !47, i64 24}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"anim_sys.c:make_local_strips"}
!63 = !{!64, !42, i64 32}
!64 = !{!"NlaStrip", !42, i64 0, !42, i64 8, !47, i64 16, !42, i64 32, !42, i64 40, !47, i64 48, !47, i64 64, !36, i64 80, !48, i64 144, !48, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180, !35, i64 184, !35, i64 186, !35, i64 188, !35, i64 190, !42, i64 192, !43, i64 200, !43, i64 204}
!65 = !{!64, !42, i64 40}
!66 = distinct !{!66, !61}
!67 = !{!46, !42, i64 48}
!68 = !{!69, !42, i64 24}
!69 = !{!"FCurve", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !47, i64 32, !42, i64 48, !42, i64 56, !43, i64 64, !48, i64 68, !35, i64 72, !35, i64 74, !43, i64 76, !42, i64 80, !43, i64 88, !36, i64 92, !48, i64 104, !48, i64 108}
!70 = distinct !{!70, !61}
!71 = !{!72, !35, i64 528}
!72 = !{!"DriverVar", !42, i64 0, !42, i64 8, !36, i64 16, !36, i64 80, !35, i64 528, !35, i64 530, !48, i64 532}
!73 = !{!74, !42, i64 0}
!74 = !{!"DriverTarget", !42, i64 0, !42, i64 8, !36, i64 16, !35, i64 48, !35, i64 50, !43, i64 52}
!75 = !{!41, !42, i64 16}
!76 = distinct !{!76, !61}
!77 = !{!69, !42, i64 0}
!78 = distinct !{!78, !61}
!79 = !{!80, !43, i64 2100}
!80 = !{!"Global", !42, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !47, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !35, i64 2084, !35, i64 2086, !35, i64 2088, !36, i64 2090, !35, i64 2092, !43, i64 2096, !43, i64 2100, !36, i64 2104, !43, i64 2108, !43, i64 2112, !36, i64 2116}
!81 = !{!54, !42, i64 120}
!82 = !{!69, !42, i64 80}
!83 = !{!69, !42, i64 16}
!84 = !{!85, !43, i64 32}
!85 = !{!"bActionGroup", !42, i64 0, !42, i64 8, !47, i64 16, !43, i64 32, !43, i64 36, !36, i64 40, !86, i64 104}
!86 = !{!"ThemeWireColor", !36, i64 0, !36, i64 4, !36, i64 8, !35, i64 12, !35, i64 14}
!87 = distinct !{!87, !61}
!88 = !{!54, !42, i64 152}
!89 = !{!85, !42, i64 0}
!90 = distinct !{!90, !61}
!91 = !{!"anim_sys.c:animpath_matches_basepath"}
!92 = !{!"anim_sys.c:BLI_listbase_is_empty"}
!93 = !{!47, !42, i64 0}
!94 = !{!80, !42, i64 0}
!95 = !{!96, !42, i64 16}
!96 = !{!"LinkData", !42, i64 0, !42, i64 8, !42, i64 16}
!97 = distinct !{!97, !61}
!98 = distinct !{!98, !61}
!99 = distinct !{!99, !61}
!100 = !{!101, !42, i64 0}
!101 = !{!"PointerRNA", !102, i64 0, !42, i64 8, !42, i64 16}
!102 = !{!"", !42, i64 0}
!103 = !{!104, !36, i64 72}
!104 = !{!"ScrArea", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !105, i64 56, !36, i64 72, !36, i64 73, !35, i64 74, !35, i64 76, !35, i64 78, !35, i64 80, !35, i64 82, !35, i64 84, !36, i64 86, !36, i64 87, !42, i64 88, !47, i64 96, !47, i64 112, !47, i64 128, !47, i64 144}
!105 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!106 = !{!107, !43, i64 460}
!107 = !{!"Object", !41, i64 0, !42, i64 120, !42, i64 128, !35, i64 136, !35, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !36, i64 152, !42, i64 216, !42, i64 224, !42, i64 232, !42, i64 240, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288, !42, i64 296, !42, i64 304, !108, i64 312, !42, i64 360, !47, i64 368, !47, i64 384, !47, i64 400, !47, i64 416, !43, i64 432, !43, i64 436, !42, i64 440, !42, i64 448, !43, i64 456, !43, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !48, i64 616, !48, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !43, i64 944, !35, i64 948, !35, i64 950, !35, i64 952, !35, i64 954, !35, i64 956, !35, i64 958, !35, i64 960, !35, i64 962, !35, i64 964, !36, i64 966, !36, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !48, i64 988, !48, i64 992, !48, i64 996, !48, i64 1000, !48, i64 1004, !48, i64 1008, !48, i64 1012, !48, i64 1016, !48, i64 1020, !48, i64 1024, !48, i64 1028, !48, i64 1032, !35, i64 1036, !35, i64 1038, !35, i64 1040, !36, i64 1042, !36, i64 1043, !35, i64 1044, !36, i64 1046, !36, i64 1047, !48, i64 1048, !48, i64 1052, !47, i64 1056, !47, i64 1072, !47, i64 1088, !47, i64 1104, !48, i64 1120, !35, i64 1124, !35, i64 1126, !36, i64 1128, !43, i64 1144, !43, i64 1148, !42, i64 1152, !36, i64 1160, !36, i64 1161, !35, i64 1162, !36, i64 1164, !47, i64 1176, !47, i64 1192, !47, i64 1208, !47, i64 1224, !42, i64 1240, !42, i64 1248, !42, i64 1256, !36, i64 1264, !36, i64 1265, !35, i64 1266, !48, i64 1268, !42, i64 1272, !42, i64 1280, !42, i64 1288, !42, i64 1296, !109, i64 1304, !109, i64 1312, !43, i64 1320, !43, i64 1324, !47, i64 1328, !47, i64 1344, !42, i64 1360, !42, i64 1368, !42, i64 1376, !36, i64 1384, !42, i64 1392, !47, i64 1400, !42, i64 1416}
!108 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !35, i64 16, !35, i64 18, !35, i64 20, !35, i64 22, !35, i64 24, !35, i64 26, !35, i64 28, !35, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!109 = !{!"long", !36, i64 0}
!110 = !{!101, !42, i64 8}
!111 = !{!101, !42, i64 16}
!112 = !{!"anim_sys.c:fcurves_path_rename_fix"}
!113 = distinct !{!113, !61}
!114 = distinct !{!114, !61}
!115 = !{!"anim_sys.c:drivers_path_rename_fix"}
!116 = distinct !{!116, !61}
!117 = !{!74, !42, i64 8}
!118 = !{!107, !42, i64 296}
!119 = !{!36, !36, i64 0}
!120 = distinct !{!120, !61}
!121 = distinct !{!121, !61}
!122 = !{!"anim_sys.c:nlastrips_path_rename_fix"}
!123 = distinct !{!123, !61}
!124 = distinct !{!124, !61}
!125 = !{!"anim_sys.c:fcurves_path_remove_fix"}
!126 = distinct !{!126, !61}
!127 = !{!"anim_sys.c:nlastrips_path_remove_fix"}
!128 = distinct !{!128, !61}
!129 = distinct !{!129, !61}
!130 = !{!131, !42, i64 336}
!131 = !{!"Tex", !41, i64 0, !42, i64 120, !48, i64 128, !48, i64 132, !48, i64 136, !48, i64 140, !48, i64 144, !48, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180, !48, i64 184, !48, i64 188, !48, i64 192, !48, i64 196, !48, i64 200, !48, i64 204, !48, i64 208, !48, i64 212, !35, i64 216, !35, i64 218, !35, i64 220, !35, i64 222, !35, i64 224, !35, i64 226, !35, i64 228, !35, i64 230, !35, i64 232, !35, i64 234, !48, i64 236, !48, i64 240, !48, i64 244, !48, i64 248, !43, i64 252, !43, i64 256, !35, i64 260, !35, i64 262, !35, i64 264, !35, i64 266, !43, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !48, i64 284, !48, i64 288, !48, i64 292, !132, i64 296, !42, i64 336, !42, i64 344, !42, i64 352, !42, i64 360, !42, i64 368, !42, i64 376, !42, i64 384, !42, i64 392, !42, i64 400, !36, i64 408, !36, i64 409}
!132 = !{!"ImageUser", !42, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !35, i64 28, !35, i64 30, !35, i64 32, !35, i64 34, !43, i64 36}
!133 = distinct !{!133, !61}
!134 = !{!135, !42, i64 512}
!135 = !{!"Lamp", !41, i64 0, !42, i64 120, !35, i64 128, !35, i64 130, !43, i64 132, !35, i64 136, !35, i64 138, !48, i64 140, !48, i64 144, !48, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180, !48, i64 184, !48, i64 188, !48, i64 192, !48, i64 196, !42, i64 200, !35, i64 208, !35, i64 210, !48, i64 212, !48, i64 216, !48, i64 220, !48, i64 224, !48, i64 228, !48, i64 232, !48, i64 236, !35, i64 240, !35, i64 242, !35, i64 244, !35, i64 246, !36, i64 248, !36, i64 249, !35, i64 250, !35, i64 252, !35, i64 254, !35, i64 256, !35, i64 258, !48, i64 260, !48, i64 264, !48, i64 268, !48, i64 272, !35, i64 276, !35, i64 278, !35, i64 280, !35, i64 282, !35, i64 284, !35, i64 286, !48, i64 288, !48, i64 292, !48, i64 296, !48, i64 300, !48, i64 304, !48, i64 308, !48, i64 312, !48, i64 316, !48, i64 320, !48, i64 324, !48, i64 328, !48, i64 332, !48, i64 336, !35, i64 340, !36, i64 342, !42, i64 344, !36, i64 352, !35, i64 496, !35, i64 498, !36, i64 500, !42, i64 504, !42, i64 512}
!136 = distinct !{!136, !61}
!137 = !{!138, !42, i64 768}
!138 = !{!"Material", !41, i64 0, !42, i64 120, !35, i64 128, !35, i64 130, !48, i64 132, !48, i64 136, !48, i64 140, !48, i64 144, !48, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180, !48, i64 184, !48, i64 188, !48, i64 192, !48, i64 196, !48, i64 200, !48, i64 204, !48, i64 208, !48, i64 212, !48, i64 216, !48, i64 220, !139, i64 224, !140, i64 312, !48, i64 328, !48, i64 332, !48, i64 336, !48, i64 340, !48, i64 344, !48, i64 348, !48, i64 352, !35, i64 356, !35, i64 358, !35, i64 360, !36, i64 362, !36, i64 363, !48, i64 364, !48, i64 368, !35, i64 372, !35, i64 374, !48, i64 376, !48, i64 380, !48, i64 384, !48, i64 388, !35, i64 392, !35, i64 394, !43, i64 396, !43, i64 400, !43, i64 404, !43, i64 408, !35, i64 412, !35, i64 414, !35, i64 416, !35, i64 418, !48, i64 420, !48, i64 424, !48, i64 428, !48, i64 432, !48, i64 436, !48, i64 440, !48, i64 444, !48, i64 448, !48, i64 452, !48, i64 456, !36, i64 460, !48, i64 524, !48, i64 528, !48, i64 532, !43, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !35, i64 544, !35, i64 546, !35, i64 548, !36, i64 550, !36, i64 551, !35, i64 552, !35, i64 554, !48, i64 556, !48, i64 560, !36, i64 564, !48, i64 580, !48, i64 584, !35, i64 588, !35, i64 590, !42, i64 592, !42, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !35, i64 612, !35, i64 614, !48, i64 616, !48, i64 620, !36, i64 624, !42, i64 768, !42, i64 776, !42, i64 784, !42, i64 792, !48, i64 800, !48, i64 804, !48, i64 808, !48, i64 812, !48, i64 816, !35, i64 820, !35, i64 822, !36, i64 824, !36, i64 836, !48, i64 848, !48, i64 852, !48, i64 856, !48, i64 860, !48, i64 864, !48, i64 868, !48, i64 872, !35, i64 876, !35, i64 878, !43, i64 880, !35, i64 884, !35, i64 886, !36, i64 888, !35, i64 904, !35, i64 906, !35, i64 908, !35, i64 910, !35, i64 912, !36, i64 914, !42, i64 920, !47, i64 928}
!139 = !{!"VolumeSettings", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !48, i64 52, !48, i64 56, !48, i64 60, !35, i64 64, !35, i64 66, !35, i64 68, !35, i64 70, !48, i64 72, !48, i64 76, !48, i64 80, !48, i64 84}
!140 = !{!"GameSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!141 = distinct !{!141, !61}
!142 = distinct !{!142, !61}
!143 = distinct !{!143, !61}
!144 = distinct !{!144, !61}
!145 = distinct !{!145, !61}
!146 = distinct !{!146, !61}
!147 = distinct !{!147, !61}
!148 = distinct !{!148, !61}
!149 = distinct !{!149, !61}
!150 = distinct !{!150, !61}
!151 = distinct !{!151, !61}
!152 = distinct !{!152, !61}
!153 = distinct !{!153, !61}
!154 = !{!155, !42, i64 520}
!155 = !{!"World", !41, i64 0, !42, i64 120, !35, i64 128, !35, i64 130, !35, i64 132, !35, i64 134, !48, i64 136, !48, i64 140, !48, i64 144, !48, i64 148, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180, !48, i64 184, !48, i64 188, !48, i64 192, !48, i64 196, !35, i64 200, !35, i64 202, !35, i64 204, !35, i64 206, !35, i64 208, !35, i64 210, !35, i64 212, !35, i64 214, !48, i64 216, !48, i64 220, !48, i64 224, !48, i64 228, !48, i64 232, !48, i64 236, !48, i64 240, !48, i64 244, !48, i64 248, !48, i64 252, !48, i64 256, !48, i64 260, !35, i64 264, !35, i64 266, !35, i64 268, !35, i64 270, !48, i64 272, !48, i64 276, !48, i64 280, !48, i64 284, !35, i64 288, !35, i64 290, !35, i64 292, !35, i64 294, !48, i64 296, !48, i64 300, !48, i64 304, !48, i64 308, !48, i64 312, !48, i64 316, !48, i64 320, !35, i64 324, !35, i64 326, !35, i64 328, !35, i64 330, !35, i64 332, !35, i64 334, !42, i64 336, !42, i64 344, !42, i64 352, !36, i64 360, !35, i64 504, !35, i64 506, !36, i64 508, !42, i64 512, !42, i64 520}
!156 = distinct !{!156, !61}
!157 = !{!158, !42, i64 248}
!158 = !{!"Scene", !41, i64 0, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !47, i64 152, !42, i64 168, !42, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !35, i64 244, !36, i64 246, !36, i64 247, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !159, i64 280, !167, i64 4264, !47, i64 4296, !47, i64 4312, !42, i64 4328, !42, i64 4336, !42, i64 4344, !42, i64 4352, !42, i64 4360, !42, i64 4368, !35, i64 4376, !35, i64 4378, !43, i64 4380, !47, i64 4384, !168, i64 4400, !169, i64 4416, !172, i64 4600, !42, i64 4608, !173, i64 4616, !42, i64 4640, !109, i64 4648, !109, i64 4656, !161, i64 4664, !162, i64 4824, !174, i64 4888, !42, i64 4952}
!159 = !{!"RenderData", !160, i64 0, !42, i64 248, !42, i64 256, !163, i64 264, !164, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !48, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !35, i64 432, !35, i64 434, !48, i64 436, !48, i64 440, !48, i64 444, !48, i64 448, !48, i64 452, !35, i64 456, !35, i64 458, !35, i64 460, !35, i64 462, !35, i64 464, !35, i64 466, !43, i64 468, !35, i64 472, !35, i64 474, !35, i64 476, !35, i64 478, !35, i64 480, !35, i64 482, !43, i64 484, !43, i64 488, !35, i64 492, !35, i64 494, !43, i64 496, !43, i64 500, !35, i64 504, !35, i64 506, !35, i64 508, !35, i64 510, !35, i64 512, !36, i64 514, !36, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !35, i64 528, !35, i64 530, !35, i64 532, !35, i64 534, !35, i64 536, !35, i64 538, !35, i64 540, !35, i64 542, !165, i64 544, !165, i64 560, !105, i64 576, !47, i64 592, !35, i64 608, !35, i64 610, !48, i64 612, !48, i64 616, !48, i64 620, !48, i64 624, !43, i64 628, !48, i64 632, !48, i64 636, !48, i64 640, !48, i64 644, !35, i64 648, !35, i64 650, !35, i64 652, !35, i64 654, !35, i64 656, !35, i64 658, !48, i64 660, !48, i64 664, !35, i64 668, !35, i64 670, !48, i64 672, !48, i64 676, !36, i64 680, !43, i64 1704, !35, i64 1708, !35, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !43, i64 2520, !35, i64 2524, !35, i64 2526, !48, i64 2528, !48, i64 2532, !35, i64 2536, !35, i64 2538, !48, i64 2540, !35, i64 2544, !35, i64 2546, !43, i64 2548, !35, i64 2552, !35, i64 2554, !35, i64 2556, !35, i64 2558, !48, i64 2560, !48, i64 2564, !42, i64 2568, !43, i64 2576, !48, i64 2580, !36, i64 2584, !166, i64 2616, !43, i64 3976, !43, i64 3980}
!160 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !35, i64 8, !35, i64 10, !48, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !161, i64 24, !162, i64 184}
!161 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !36, i64 8, !36, i64 72, !48, i64 136, !48, i64 140, !42, i64 144, !42, i64 152}
!162 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!163 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !35, i64 48, !35, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!164 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !48, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !42, i64 64}
!165 = !{!"rctf", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!166 = !{!"BakeData", !160, i64 0, !36, i64 248, !35, i64 1272, !35, i64 1274, !35, i64 1276, !35, i64 1278, !48, i64 1280, !48, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!167 = !{!"AudioData", !43, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !43, i64 16, !35, i64 20, !35, i64 22, !48, i64 24, !48, i64 28}
!168 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!169 = !{!"GameData", !168, i64 0, !35, i64 16, !35, i64 18, !35, i64 20, !35, i64 22, !35, i64 24, !35, i64 26, !35, i64 28, !35, i64 30, !35, i64 32, !36, i64 34, !170, i64 40, !35, i64 64, !35, i64 66, !48, i64 68, !171, i64 72, !48, i64 128, !48, i64 132, !43, i64 136, !35, i64 140, !35, i64 142, !35, i64 144, !35, i64 146, !35, i64 148, !35, i64 150, !35, i64 152, !35, i64 154, !35, i64 156, !35, i64 158, !35, i64 160, !35, i64 162, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180}
!170 = !{!"GameDome", !35, i64 0, !35, i64 2, !35, i64 4, !35, i64 6, !48, i64 8, !48, i64 12, !42, i64 16}
!171 = !{!"RecastData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !43, i64 40, !48, i64 44, !48, i64 48, !35, i64 52, !35, i64 54}
!172 = !{!"UnitSettings", !48, i64 0, !36, i64 4, !36, i64 5, !35, i64 6}
!173 = !{!"PhysicsSettings", !36, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!174 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!175 = distinct !{!175, !61}
!176 = distinct !{!176, !61}
!177 = distinct !{!177, !61}
!178 = distinct !{!178, !61}
!179 = distinct !{!179, !61}
!180 = distinct !{!180, !61}
!181 = distinct !{!181, !61}
!182 = distinct !{!182, !61}
!183 = distinct !{!183, !61}
!184 = distinct !{!184, !61}
!185 = distinct !{!185, !61}
!186 = distinct !{!186, !61}
!187 = distinct !{!187, !61}
!188 = distinct !{!188, !61}
!189 = distinct !{!189, !61}
!190 = distinct !{!190, !61}
!191 = distinct !{!191, !61}
!192 = distinct !{!192, !61}
!193 = distinct !{!193, !61}
!194 = distinct !{!194, !61}
!195 = distinct !{!195, !61}
!196 = !{!197, !42, i64 16}
!197 = !{!"KS_Path", !42, i64 0, !42, i64 8, !42, i64 16, !36, i64 24, !43, i64 88, !35, i64 92, !35, i64 94, !42, i64 96, !43, i64 104, !35, i64 108, !35, i64 110}
!198 = !{!197, !42, i64 96}
!199 = !{!197, !43, i64 104}
!200 = distinct !{!200, !61}
!201 = !{!202, !35, i64 464}
!202 = !{!"KeyingSet", !42, i64 0, !42, i64 8, !47, i64 16, !36, i64 32, !36, i64 96, !36, i64 160, !36, i64 400, !35, i64 464, !35, i64 466, !43, i64 468}
!203 = !{!202, !35, i64 466}
!204 = !{!197, !43, i64 88}
!205 = !{!197, !35, i64 108}
!206 = !{!197, !35, i64 92}
!207 = distinct !{!207, !61}
!208 = distinct !{!208, !61}
!209 = !{!202, !42, i64 16}
!210 = !{!197, !42, i64 0}
!211 = distinct !{!211, !61}
!212 = !{!202, !42, i64 0}
!213 = distinct !{!213, !61}
!214 = !{!69, !35, i64 72}
!215 = distinct !{!215, !61}
!216 = !{!"anim_sys.c:action_idcode_patch_check"}
!217 = !{!"anim_sys.c:animsys_execute_fcurve"}
!218 = !{!69, !43, i64 76}
!219 = !{!69, !48, i64 68}
!220 = !{!"anim_sys.c:animsys_evaluate_fcurves"}
!221 = distinct !{!221, !61}
!222 = !{!64, !48, i64 152}
!223 = !{!64, !48, i64 156}
!224 = !{!64, !35, i64 186}
!225 = !{!64, !42, i64 8}
!226 = !{!47, !42, i64 8}
!227 = distinct !{!227, !61}
!228 = !{!64, !43, i64 200}
!229 = !{!64, !48, i64 144}
!230 = !{!64, !35, i64 190}
!231 = !{!64, !42, i64 0}
!232 = !{!233, !42, i64 24}
!233 = !{!"NlaEvalStrip", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !35, i64 32, !35, i64 34, !48, i64 36}
!234 = !{!233, !35, i64 34}
!235 = !{!233, !35, i64 32}
!236 = !{!64, !48, i64 148}
!237 = !{!233, !48, i64 36}
!238 = !{!"anim_sys.c:nlastrip_evaluate_controls"}
!239 = !{!64, !42, i64 48}
!240 = !{!64, !48, i64 160}
!241 = !{!64, !48, i64 164}
!242 = !{!"anim_sys.c:nlastrip_evaluate_actionclip"}
!243 = !{!48, !48, i64 0}
!244 = distinct !{!244, !61}
!245 = !{!"anim_sys.c:nlastrip_evaluate_transition"}
!246 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !44, i64 24, i64 8, !44, i64 32, i64 2, !34, i64 34, i64 2, !34, i64 36, i64 4, !243}
!247 = !{!"anim_sys.c:nlastrip_evaluate_meta"}
!248 = !{!249, !42, i64 40}
!249 = !{!"NlaEvalChannel", !42, i64 0, !42, i64 8, !101, i64 16, !42, i64 40, !43, i64 48, !48, i64 52}
!250 = !{!249, !43, i64 48}
!251 = !{!249, !48, i64 52}
!252 = distinct !{!252, !61}
!253 = !{!46, !43, i64 84}
!254 = !{!46, !42, i64 24}
!255 = !{!"anim_sys.c:animsys_calculate_nla"}
!256 = !{!"anim_sys.c:animsys_evaluate_drivers"}
!257 = !{!258, !43, i64 292}
!258 = !{!"ChannelDriver", !47, i64 0, !36, i64 16, !42, i64 272, !48, i64 280, !48, i64 284, !43, i64 288, !43, i64 292}
!259 = distinct !{!259, !61}
!260 = !{!"anim_sys.c:animsys_evaluate_overrides"}
!261 = !{!262, !42, i64 16}
!262 = !{!"AnimOverride", !42, i64 0, !42, i64 8, !42, i64 16, !43, i64 24, !48, i64 28}
!263 = !{!262, !43, i64 24}
!264 = !{!262, !48, i64 28}
!265 = distinct !{!265, !61}
!266 = !{!41, !43, i64 100}
!267 = !{!41, !35, i64 98}
!268 = distinct !{!268, !61}
!269 = distinct !{!269, !61}
!270 = distinct !{!270, !61}
!271 = distinct !{!271, !61}
!272 = distinct !{!272, !61}
!273 = distinct !{!273, !61}
!274 = distinct !{!274, !61}
!275 = distinct !{!275, !61}
!276 = distinct !{!276, !61}
!277 = distinct !{!277, !61}
!278 = distinct !{!278, !61}
!279 = distinct !{!279, !61}
!280 = distinct !{!280, !61}
!281 = distinct !{!281, !61}
!282 = distinct !{!282, !61}
!283 = distinct !{!283, !61}
!284 = distinct !{!284, !61}
!285 = distinct !{!285, !61}
!286 = distinct !{!286, !61}
!287 = !{!"anim_sys.c:rna_path_rename_fix"}
!288 = !{!"anim_sys.c:check_rna_path_is_valid"}
!289 = !{!"anim_sys.c:animsys_remap_path"}
!290 = !{!"anim_sys.c:animsys_write_rna_setting"}
!291 = !{!"anim_sys.c:nlastrip_get_influence"}
!292 = !{!"anim_sys.c:nlaeval_fmodifiers_join_stacks"}
!293 = !{!294, !42, i64 0}
!294 = !{!"FModifier", !42, i64 0, !42, i64 8, !42, i64 16, !36, i64 24, !35, i64 88, !35, i64 90, !48, i64 92, !48, i64 96, !48, i64 100, !48, i64 104, !48, i64 108}
!295 = !{!294, !42, i64 8}
!296 = !{!"anim_sys.c:nlaevalchan_verify"}
!297 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !44}
!298 = !{!"anim_sys.c:nlaevalchan_accumulate"}
!299 = !{!64, !35, i64 184}
!300 = !{!"anim_sys.c:nlaeval_fmodifiers_split_stacks"}
!301 = !{!"anim_sys.c:nlaevalchan_find_match"}
!302 = !{!249, !42, i64 32}
!303 = distinct !{!303, !61}
!304 = !{!"anim_sys.c:nlaevalchan_value_init"}
!305 = !{!"anim_sys.c:nlaevalchan_buffers_accumulate"}
!306 = !{!249, !42, i64 0}
!307 = distinct !{!307, !61}
!308 = !{!"anim_sys.c:animsys_evaluate_nla"}
!309 = !{!310, !43, i64 32}
!310 = !{!"NlaTrack", !42, i64 0, !42, i64 8, !47, i64 16, !43, i64 32, !43, i64 36, !36, i64 40}
!311 = !{!310, !42, i64 16}
!312 = !{!233, !42, i64 16}
!313 = distinct !{!313, !61}
!314 = distinct !{!314, !61}
