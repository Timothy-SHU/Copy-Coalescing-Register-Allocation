; ModuleID = 'blender/source/blender/blenkernel/intern/text.c'
source_filename = "blender/source/blender/blenkernel/intern/text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.Text = type { %struct.ID, ptr, i32, i32, %struct.ListBase, ptr, ptr, i32, i32, ptr, i32, i32, ptr, double }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.TextLine = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bController = type { ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i32 }
%struct.bActuator = type { ptr, ptr, ptr, i16, i16, i16, i16, [64 x i8], ptr, ptr }
%struct.bTwoDFilterActuator = type { [4 x i8], i16, i16, i32, float, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.SpaceText = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], ptr, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, float, %struct.rcti, %struct.rcti, i32, i32, [256 x i8], [256 x i8], i16, i16, [4 x i8], ptr, [2 x float] }
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
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.FreestyleModuleConfig = type { ptr, ptr, ptr, i16, [3 x i16] }

@undoing = internal unnamed_addr global i8 0, align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"textline\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"textline_string\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"text_line\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"text_buffer\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"text_name\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"text buffer\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"cut buffer\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"sel buffer\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"dblock buffer\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"iblock buffer\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@tab_to_spaces = internal global [5 x i8] c"    \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@txt_setcurr_tab_spaces.back_words = internal unnamed_addr constant [6 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr null], align 16
@.str.14 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"yield\00", align 1
@__const.text_check_bracket.opens = private unnamed_addr constant [4 x i8] c"([{\00", align 1
@__const.text_check_bracket.close = private unnamed_addr constant [4 x i8] c")]}\00", align 1
@__const.text_check_delim.delims = private unnamed_addr constant [30 x i8] c"():\22' ~!%^&*-+=[]{};/<>|.#\09,@\00", align 16
@.str.19 = private unnamed_addr constant [9 x i8] c"undo buf\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @txt_set_undostate(i32 noundef %0) local_unnamed_addr #0 {
  %2 = trunc i32 %0 to i8
  store i8 %2, ptr @undoing, align 1, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @txt_get_undostate() local_unnamed_addr #1 {
  %1 = load i8, ptr @undoing, align 1, !tbaa !34
  %2 = zext i8 %1 to i32
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_text_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1, %15
  %6 = phi ptr [ %16, %15 ], [ %3, %1 ]
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %8 = getelementptr inbounds %struct.TextLine, ptr %6, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  tail call void %7(ptr noundef %9) #24
  %10 = getelementptr inbounds %struct.TextLine, ptr %6, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %14(ptr noundef nonnull %11) #24
  br label %15

15:                                               ; preds = %5, %13
  %16 = load ptr, ptr %6, align 8, !tbaa !37
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %5, !llvm.loop !43

18:                                               ; preds = %15, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #24
  %19 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %23(ptr noundef nonnull %20) #24
  br label %24

24:                                               ; preds = %22, %18
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %26 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  tail call void %25(ptr noundef %27) #24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_text_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 22612, ptr noundef %1) #24
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 6
  store i32 1, ptr %4, align 4, !tbaa !53
  %5 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 10
  store i32 -1, ptr %6, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 11
  store i32 1024, ptr %7, align 4, !tbaa !55
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %9 = tail call ptr %8(i64 noundef 1024, ptr noundef nonnull @.str.19) #24
  %10 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 9
  store ptr %9, ptr %10, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 3
  store i32 1, ptr %11, align 4, !tbaa !56
  %12 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 2
  store i32 5, ptr %12, align 8, !tbaa !57
  %13 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !58
  %14 = and i32 %13, 33554432
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 1029, i32 5
  store i32 %16, ptr %12, align 8
  %17 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %19 = tail call ptr %18(i64 noundef 40, ptr noundef nonnull @.str) #24
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %21 = tail call ptr %20(i64 noundef 1, ptr noundef nonnull @.str.1) #24
  %22 = getelementptr inbounds %struct.TextLine, ptr %19, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !39
  %23 = getelementptr inbounds %struct.TextLine, ptr %19, i64 0, i32 3
  store ptr null, ptr %23, align 8, !tbaa !42
  store i8 0, ptr %21, align 1, !tbaa !34
  %24 = getelementptr inbounds %struct.TextLine, ptr %19, i64 0, i32 4
  store i32 0, ptr %24, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  tail call void @BLI_addhead(ptr noundef nonnull %17, ptr noundef nonnull %19) #24
  %25 = load ptr, ptr %17, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 5
  store ptr %25, ptr %26, align 8, !tbaa !65
  %27 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 7
  store i32 0, ptr %27, align 8, !tbaa !66
  %28 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 6
  store ptr %25, ptr %28, align 8, !tbaa !67
  %29 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 8
  store i32 0, ptr %29, align 4, !tbaa !68
  ret ptr %3
}

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #4

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @txt_extended_ascii_as_utf8(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !37
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %4 = trunc i64 %3 to i32
  %5 = load i8, ptr %2, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %1, %14
  %8 = phi ptr [ %20, %14 ], [ %2, %1 ]
  %9 = phi i32 [ %15, %14 ], [ 0, %1 ]
  %10 = phi i32 [ %17, %14 ], [ 0, %1 ]
  %11 = sub nsw i32 %4, %10
  %12 = tail call i32 @BLI_utf8_invalid_byte(ptr noundef nonnull %8, i32 noundef %11) #24
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %23, label %14

14:                                               ; preds = %7
  %15 = add nuw nsw i32 %9, 1
  %16 = add i32 %10, 1
  %17 = add i32 %16, %12
  %18 = load ptr, ptr %0, align 8, !tbaa !37
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !34
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %7, !llvm.loop !69

23:                                               ; preds = %14, %7, %1
  %24 = phi i32 [ 0, %1 ], [ %15, %14 ], [ %9, %7 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %74, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %28 = add nsw i32 %24, %4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = tail call ptr %27(i64 noundef %30, ptr noundef nonnull @.str.2) #24
  %32 = load ptr, ptr %0, align 8, !tbaa !37
  %33 = load i8, ptr %32, align 1, !tbaa !34
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %69, label %35

35:                                               ; preds = %26, %50
  %36 = phi ptr [ %66, %50 ], [ %32, %26 ]
  %37 = phi i64 [ %65, %50 ], [ 0, %26 ]
  %38 = phi i32 [ %63, %50 ], [ 0, %26 ]
  %39 = phi i32 [ %61, %50 ], [ 0, %26 ]
  %40 = sub nsw i32 %4, %39
  %41 = tail call i32 @BLI_utf8_invalid_byte(ptr noundef nonnull %36, i32 noundef %40) #24
  %42 = icmp eq i32 %41, -1
  %43 = sext i32 %38 to i64
  %44 = getelementptr inbounds i8, ptr %31, i64 %43
  %45 = load ptr, ptr %0, align 8, !tbaa !37
  %46 = getelementptr inbounds i8, ptr %45, i64 %37
  br i1 %42, label %47, label %50

47:                                               ; preds = %35
  %48 = add nsw i32 %40, 1
  %49 = sext i32 %48 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %44, ptr align 1 %46, i64 %49, i1 false)
  br label %69

50:                                               ; preds = %35
  %51 = sext i32 %41 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %44, ptr align 1 %46, i64 %51, i1 false)
  %52 = load ptr, ptr %0, align 8, !tbaa !37
  %53 = add nsw i32 %41, %39
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %52, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !34
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds i8, ptr %44, i64 %51
  %59 = tail call i64 @BLI_str_utf8_from_unicode(i32 noundef %57, ptr noundef %58) #24
  %60 = add i32 %39, 1
  %61 = add i32 %60, %41
  %62 = add i32 %38, 2
  %63 = add i32 %62, %41
  %64 = load ptr, ptr %0, align 8, !tbaa !37
  %65 = sext i32 %61 to i64
  %66 = getelementptr inbounds i8, ptr %64, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !34
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %35, !llvm.loop !70

69:                                               ; preds = %50, %26, %47
  %70 = sext i32 %28 to i64
  %71 = getelementptr inbounds i8, ptr %31, i64 %70
  store i8 0, ptr %71, align 1, !tbaa !34
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %73 = load ptr, ptr %0, align 8, !tbaa !37
  tail call void %72(ptr noundef %73) #24
  store ptr %31, ptr %0, align 8, !tbaa !37
  br label %74

74:                                               ; preds = %69, %23
  ret i32 %24
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

declare i32 @BLI_utf8_invalid_byte(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare i64 @BLI_str_utf8_from_unicode(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BKE_text_reload(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca [1024 x i8], align 16
  %3 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #24
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %55, label %7

7:                                                ; preds = %1
  %8 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef nonnull %5, i64 noundef 1024) #24
  %9 = load ptr, ptr @G, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 2
  %11 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %2, ptr noundef nonnull %10) #24
  %12 = call ptr @BLI_fopen(ptr noundef nonnull %2, ptr noundef nonnull @.str.3) #24
  %13 = icmp eq ptr %12, null
  br i1 %13, label %55, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !37
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %14, %28
  %19 = phi ptr [ %29, %28 ], [ %16, %14 ]
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %21 = getelementptr inbounds %struct.TextLine, ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  call void %20(ptr noundef %22) #24
  %23 = getelementptr inbounds %struct.TextLine, ptr %19, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %27(ptr noundef nonnull %24) #24
  br label %28

28:                                               ; preds = %18, %26
  %29 = load ptr, ptr %19, align 8, !tbaa !37
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !73

31:                                               ; preds = %28, %14
  call void @BLI_freelistN(ptr noundef nonnull %15) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %33 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !52
  call void %32(ptr noundef %34) #24
  %35 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 10
  store i32 -1, ptr %35, align 8, !tbaa !54
  %36 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 11
  store i32 1024, ptr %36, align 4, !tbaa !55
  %37 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %38 = call ptr %37(i64 noundef 1024, ptr noundef nonnull @.str.19) #24
  store ptr %38, ptr %33, align 8, !tbaa !52
  %39 = call i32 @fseek(ptr noundef nonnull %12, i64 noundef 0, i32 noundef 2)
  %40 = call i64 @ftell(ptr noundef nonnull %12)
  %41 = call i32 @fseek(ptr noundef nonnull %12, i64 noundef 0, i32 noundef 0)
  %42 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %43 = shl i64 %40, 32
  %44 = ashr exact i64 %43, 32
  %45 = call ptr %42(i64 noundef %44, ptr noundef nonnull @.str.4) #24
  %46 = call i64 @fread(ptr noundef %45, i64 noundef 1, i64 noundef %44, ptr noundef nonnull %12)
  %47 = trunc i64 %46 to i32
  %48 = call i32 @fclose(ptr noundef nonnull %12)
  %49 = call i32 @BLI_stat(ptr noundef nonnull %2, ptr noundef nonnull %3) #24
  %50 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 12
  %51 = load i64, ptr %50, align 8, !tbaa !74
  %52 = sitofp i64 %51 to double
  %53 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 13
  store double %52, ptr %53, align 8, !tbaa !78
  call fastcc void @text_from_buf(ptr noundef %0, ptr noundef %45, i32 noundef %47)
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %54(ptr noundef %45) #24
  br label %55

55:                                               ; preds = %7, %1, %31
  %56 = phi i32 [ 1, %31 ], [ 0, %1 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #24
  ret i32 %56
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

declare i32 @BLI_stat(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @text_from_buf(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 4, !tbaa !56
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %73

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %8 = zext nneg i32 %2 to i64
  br label %9

9:                                                ; preds = %6, %67
  %10 = phi i64 [ 0, %6 ], [ %69, %67 ]
  %11 = phi i32 [ 0, %6 ], [ %68, %67 ]
  %12 = getelementptr inbounds i8, ptr %1, i64 %10
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = icmp eq i8 %13, 10
  br i1 %14, label %15, label %65

15:                                               ; preds = %9
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %17 = tail call ptr %16(i64 noundef 40, ptr noundef nonnull @.str) #24
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %19 = add nsw i32 %11, 1
  %20 = sext i32 %19 to i64
  %21 = tail call ptr %18(i64 noundef %20, ptr noundef nonnull @.str.1) #24
  %22 = getelementptr inbounds %struct.TextLine, ptr %17, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !39
  %23 = getelementptr inbounds %struct.TextLine, ptr %17, i64 0, i32 3
  store ptr null, ptr %23, align 8, !tbaa !42
  %24 = icmp eq i32 %11, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %15
  %26 = trunc i64 %10 to i32
  %27 = sub nsw i32 %26, %11
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %1, i64 %28
  %30 = sext i32 %11 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %29, i64 %30, i1 false)
  br label %31

31:                                               ; preds = %25, %15
  %32 = load ptr, ptr %22, align 8, !tbaa !39
  %33 = sext i32 %11 to i64
  %34 = getelementptr inbounds i8, ptr %32, i64 %33
  store i8 0, ptr %34, align 1, !tbaa !34
  %35 = getelementptr inbounds %struct.TextLine, ptr %17, i64 0, i32 4
  store i32 %11, ptr %35, align 8, !tbaa !63
  %36 = icmp sgt i32 %11, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %31, %54
  %38 = phi i32 [ %57, %54 ], [ %11, %31 ]
  %39 = phi i32 [ %56, %54 ], [ 0, %31 ]
  %40 = load ptr, ptr %22, align 8, !tbaa !39
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, ptr %40, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !34
  %44 = icmp ugt i8 %43, 31
  %45 = icmp eq i8 %43, 9
  %46 = or i1 %44, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %37
  %48 = getelementptr inbounds i8, ptr %42, i64 1
  %49 = sub nsw i32 %38, %39
  %50 = sext i32 %49 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %42, ptr nonnull align 1 %48, i64 %50, i1 false)
  %51 = load i32, ptr %35, align 8, !tbaa !63
  %52 = add nsw i32 %51, -1
  store i32 %52, ptr %35, align 8, !tbaa !63
  %53 = add nsw i32 %39, -1
  br label %54

54:                                               ; preds = %47, %37
  %55 = phi i32 [ %53, %47 ], [ %39, %37 ]
  %56 = add nsw i32 %55, 1
  %57 = load i32, ptr %35, align 8, !tbaa !63
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %37, label %59, !llvm.loop !79

59:                                               ; preds = %54, %31
  %60 = tail call i32 @txt_extended_ascii_as_utf8(ptr noundef nonnull %22)
  %61 = load i32, ptr %35, align 8, !tbaa !63
  %62 = add nsw i32 %61, %60
  store i32 %62, ptr %35, align 8, !tbaa !63
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %17) #24
  %63 = load i32, ptr %4, align 4, !tbaa !56
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %4, align 4, !tbaa !56
  br label %67

65:                                               ; preds = %9
  %66 = add nsw i32 %11, 1
  br label %67

67:                                               ; preds = %65, %59
  %68 = phi i32 [ 0, %59 ], [ %66, %65 ]
  %69 = add nuw nsw i64 %10, 1
  %70 = icmp eq i64 %69, %8
  br i1 %70, label %71, label %9, !llvm.loop !80

71:                                               ; preds = %67
  %72 = trunc i64 %69 to i32
  br label %73

73:                                               ; preds = %71, %3
  %74 = phi i32 [ 0, %3 ], [ %68, %71 ]
  %75 = phi i32 [ 0, %3 ], [ %72, %71 ]
  %76 = icmp eq i32 %74, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load i32, ptr %4, align 4, !tbaa !56
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = sext i32 %2 to i64
  %82 = getelementptr i8, ptr %1, i64 %81
  %83 = getelementptr i8, ptr %82, i64 -1
  %84 = load i8, ptr %83, align 1, !tbaa !34
  %85 = icmp eq i8 %84, 10
  br i1 %85, label %86, label %135

86:                                               ; preds = %80, %77, %73
  %87 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %88 = tail call ptr %87(i64 noundef 40, ptr noundef nonnull @.str) #24
  %89 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %90 = add nsw i32 %74, 1
  %91 = sext i32 %90 to i64
  %92 = tail call ptr %89(i64 noundef %91, ptr noundef nonnull @.str.1) #24
  %93 = getelementptr inbounds %struct.TextLine, ptr %88, i64 0, i32 2
  store ptr %92, ptr %93, align 8, !tbaa !39
  %94 = getelementptr inbounds %struct.TextLine, ptr %88, i64 0, i32 3
  store ptr null, ptr %94, align 8, !tbaa !42
  br i1 %76, label %100, label %95

95:                                               ; preds = %86
  %96 = sub nsw i32 %75, %74
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, ptr %1, i64 %97
  %99 = sext i32 %74 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %92, ptr align 1 %98, i64 %99, i1 false)
  br label %100

100:                                              ; preds = %95, %86
  %101 = load ptr, ptr %93, align 8, !tbaa !39
  %102 = sext i32 %74 to i64
  %103 = getelementptr inbounds i8, ptr %101, i64 %102
  store i8 0, ptr %103, align 1, !tbaa !34
  %104 = getelementptr inbounds %struct.TextLine, ptr %88, i64 0, i32 4
  store i32 %74, ptr %104, align 8, !tbaa !63
  %105 = icmp sgt i32 %74, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %100, %123
  %107 = phi i32 [ %126, %123 ], [ %74, %100 ]
  %108 = phi i32 [ %125, %123 ], [ 0, %100 ]
  %109 = load ptr, ptr %93, align 8, !tbaa !39
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, ptr %109, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !34
  %113 = icmp ugt i8 %112, 31
  %114 = icmp eq i8 %112, 9
  %115 = or i1 %113, %114
  br i1 %115, label %123, label %116

116:                                              ; preds = %106
  %117 = getelementptr inbounds i8, ptr %111, i64 1
  %118 = sub nsw i32 %107, %108
  %119 = sext i32 %118 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %111, ptr nonnull align 1 %117, i64 %119, i1 false)
  %120 = load i32, ptr %104, align 8, !tbaa !63
  %121 = add nsw i32 %120, -1
  store i32 %121, ptr %104, align 8, !tbaa !63
  %122 = add nsw i32 %108, -1
  br label %123

123:                                              ; preds = %116, %106
  %124 = phi i32 [ %122, %116 ], [ %108, %106 ]
  %125 = add nsw i32 %124, 1
  %126 = load i32, ptr %104, align 8, !tbaa !63
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %106, label %128, !llvm.loop !79

128:                                              ; preds = %123, %100
  %129 = tail call i32 @txt_extended_ascii_as_utf8(ptr noundef nonnull %93)
  %130 = load i32, ptr %104, align 8, !tbaa !63
  %131 = add nsw i32 %130, %129
  store i32 %131, ptr %104, align 8, !tbaa !63
  %132 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  tail call void @BLI_addtail(ptr noundef nonnull %132, ptr noundef %88) #24
  %133 = load i32, ptr %4, align 4, !tbaa !56
  %134 = add nsw i32 %133, 1
  store i32 %134, ptr %4, align 4, !tbaa !56
  br label %135

135:                                              ; preds = %128, %80
  %136 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %137 = load ptr, ptr %136, align 8, !tbaa !64
  %138 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %137, ptr %138, align 8, !tbaa !67
  %139 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  store ptr %137, ptr %139, align 8, !tbaa !65
  %140 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 0, ptr %140, align 4, !tbaa !68
  %141 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  store i32 0, ptr %141, align 8, !tbaa !66
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_text_load_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #24
  %7 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 1024) #24
  %8 = icmp eq ptr %2, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %5, ptr noundef nonnull %2) #24
  br label %11

11:                                               ; preds = %9, %4
  %12 = call ptr @BLI_fopen(ptr noundef nonnull %5, ptr noundef nonnull @.str.3) #24
  %13 = icmp eq ptr %12, null
  br i1 %13, label %59, label %14

14:                                               ; preds = %11
  %15 = call ptr @BLI_path_basename(ptr noundef nonnull %5) #24
  %16 = call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 22612, ptr noundef %15) #24
  %17 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 6
  store i32 1, ptr %17, align 4, !tbaa !53
  %18 = getelementptr inbounds %struct.Text, ptr %16, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false)
  %19 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !58
  %20 = and i32 %19, 33554432
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.Text, ptr %16, i64 0, i32 2
  store i32 1024, ptr %23, align 8, !tbaa !57
  br label %24

24:                                               ; preds = %22, %14
  %25 = icmp eq i8 %3, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %24
  %27 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %28 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %29 = add i64 %28, 1
  %30 = call ptr %27(i64 noundef %29, ptr noundef nonnull @.str.5) #24
  %31 = getelementptr inbounds %struct.Text, ptr %16, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !46
  %32 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %1) #24
  br label %37

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.Text, ptr %16, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !57
  %36 = or i32 %35, 5
  store i32 %36, ptr %34, align 8, !tbaa !57
  br label %37

37:                                               ; preds = %33, %26
  %38 = getelementptr inbounds %struct.Text, ptr %16, i64 0, i32 10
  store i32 -1, ptr %38, align 8, !tbaa !54
  %39 = getelementptr inbounds %struct.Text, ptr %16, i64 0, i32 11
  store i32 1024, ptr %39, align 4, !tbaa !55
  %40 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %41 = call ptr %40(i64 noundef 1024, ptr noundef nonnull @.str.19) #24
  %42 = getelementptr inbounds %struct.Text, ptr %16, i64 0, i32 9
  store ptr %41, ptr %42, align 8, !tbaa !52
  %43 = call i32 @fseek(ptr noundef nonnull %12, i64 noundef 0, i32 noundef 2)
  %44 = call i64 @ftell(ptr noundef nonnull %12)
  %45 = call i32 @fseek(ptr noundef nonnull %12, i64 noundef 0, i32 noundef 0)
  %46 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %47 = shl i64 %44, 32
  %48 = ashr exact i64 %47, 32
  %49 = call ptr %46(i64 noundef %48, ptr noundef nonnull @.str.4) #24
  %50 = call i64 @fread(ptr noundef %49, i64 noundef 1, i64 noundef %48, ptr noundef nonnull %12)
  %51 = trunc i64 %50 to i32
  %52 = call i32 @fclose(ptr noundef nonnull %12)
  %53 = call i32 @BLI_stat(ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  %54 = getelementptr inbounds %struct.stat, ptr %6, i64 0, i32 12
  %55 = load i64, ptr %54, align 8, !tbaa !74
  %56 = sitofp i64 %55 to double
  %57 = getelementptr inbounds %struct.Text, ptr %16, i64 0, i32 13
  store double %56, ptr %57, align 8, !tbaa !78
  call fastcc void @text_from_buf(ptr noundef %16, ptr noundef %49, i32 noundef %51)
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %58(ptr noundef %49) #24
  br label %59

59:                                               ; preds = %11, %37
  %60 = phi ptr [ %16, %37 ], [ null, %11 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #24
  ret ptr %60
}

declare ptr @BLI_path_basename(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_text_load(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @BKE_text_load_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0)
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_text_copy(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #24
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #25
  %9 = add i64 %8, 1
  %10 = tail call ptr %7(i64 noundef %9, ptr noundef nonnull @.str.5) #24
  %11 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !46
  %12 = load ptr, ptr %3, align 8, !tbaa !46
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %12) #24
  br label %16

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !46
  br label %16

16:                                               ; preds = %14, %6
  %17 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !57
  %19 = or i32 %18, 1
  %20 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 2
  store i32 %19, ptr %20, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 4
  %22 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, i8 0, i64 32, i1 false)
  %23 = load i32, ptr %22, align 4, !tbaa !56
  %24 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 3
  store i32 %23, ptr %24, align 4, !tbaa !56
  %25 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !37
  %27 = icmp eq ptr %26, null
  br i1 %27, label %47, label %28

28:                                               ; preds = %16, %28
  %29 = phi ptr [ %45, %28 ], [ %26, %16 ]
  %30 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %31 = tail call ptr %30(i64 noundef 40, ptr noundef nonnull @.str) #24
  %32 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %33 = getelementptr inbounds %struct.TextLine, ptr %29, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !63
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = tail call ptr %32(i64 noundef %36, ptr noundef nonnull @.str.1) #24
  %38 = getelementptr inbounds %struct.TextLine, ptr %31, i64 0, i32 2
  store ptr %37, ptr %38, align 8, !tbaa !39
  %39 = getelementptr inbounds %struct.TextLine, ptr %31, i64 0, i32 3
  store ptr null, ptr %39, align 8, !tbaa !42
  %40 = getelementptr inbounds %struct.TextLine, ptr %29, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !39
  %42 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(1) %41) #24
  %43 = load i32, ptr %33, align 8, !tbaa !63
  %44 = getelementptr inbounds %struct.TextLine, ptr %31, i64 0, i32 4
  store i32 %43, ptr %44, align 8, !tbaa !63
  tail call void @BLI_addtail(ptr noundef nonnull %21, ptr noundef %31) #24
  %45 = load ptr, ptr %29, align 8, !tbaa !37
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %28, !llvm.loop !81

47:                                               ; preds = %28, %16
  %48 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 5
  %49 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 6
  %50 = load ptr, ptr %21, align 8, !tbaa !64
  store ptr %50, ptr %49, align 8, !tbaa !67
  store ptr %50, ptr %48, align 8, !tbaa !65
  %51 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 8
  store i32 0, ptr %51, align 4, !tbaa !68
  %52 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 7
  store i32 0, ptr %52, align 8, !tbaa !66
  %53 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 10
  store i32 -1, ptr %53, align 8, !tbaa !54
  %54 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 11
  store i32 1024, ptr %54, align 4, !tbaa !55
  %55 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %56 = tail call ptr %55(i64 noundef 1024, ptr noundef nonnull @.str.19) #24
  %57 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 9
  store ptr %56, ptr %57, align 8, !tbaa !52
  ret ptr %2
}

declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #4

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_text_unlink(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = icmp eq ptr %4, null
  br i1 %5, label %109, label %6

6:                                                ; preds = %2, %106
  %7 = phi ptr [ %107, %106 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 93
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %6, %22
  %12 = phi ptr [ %23, %22 ], [ %9, %6 ]
  %13 = getelementptr inbounds %struct.bController, ptr %12, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !82
  %15 = icmp eq i16 %14, 3
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bController, ptr %12, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !84
  %19 = load ptr, ptr %18, align 8, !tbaa !85
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store ptr null, ptr %18, align 8, !tbaa !85
  br label %22

22:                                               ; preds = %16, %21, %11
  %23 = load ptr, ptr %12, align 8, !tbaa !37
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %11, !llvm.loop !87

25:                                               ; preds = %22, %6
  %26 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 94
  %27 = load ptr, ptr %26, align 8, !tbaa !37
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %25, %41
  %30 = phi ptr [ %42, %41 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.bActuator, ptr %30, i64 0, i32 3
  %32 = load i16, ptr %31, align 8, !tbaa !88
  %33 = icmp eq i16 %32, 19
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bActuator, ptr %30, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !90
  %37 = getelementptr inbounds %struct.bTwoDFilterActuator, ptr %36, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !91
  %39 = icmp eq ptr %38, %1
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store ptr null, ptr %37, align 8, !tbaa !91
  br label %41

41:                                               ; preds = %34, %40, %29
  %42 = load ptr, ptr %30, align 8, !tbaa !37
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %29, !llvm.loop !93

44:                                               ; preds = %41, %25
  %45 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %46 = load i16, ptr %45, align 8, !tbaa !94
  %47 = icmp eq i16 %46, 25
  br i1 %47, label %48, label %81

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 18
  %50 = load ptr, ptr %49, align 8, !tbaa !97
  %51 = icmp eq ptr %50, null
  br i1 %51, label %81, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %50, align 8, !tbaa !37
  %54 = icmp eq ptr %53, null
  br i1 %54, label %81, label %59

55:                                               ; preds = %77, %59
  %56 = phi i16 [ %61, %59 ], [ %78, %77 ]
  %57 = load ptr, ptr %60, align 8, !tbaa !37
  %58 = icmp eq ptr %57, null
  br i1 %58, label %81, label %59, !llvm.loop !98

59:                                               ; preds = %52, %55
  %60 = phi ptr [ %57, %55 ], [ %53, %52 ]
  %61 = phi i16 [ %56, %55 ], [ 0, %52 ]
  %62 = getelementptr inbounds %struct.bPoseChannel, ptr %60, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !37
  %64 = icmp eq ptr %63, null
  br i1 %64, label %55, label %65

65:                                               ; preds = %59, %77
  %66 = phi ptr [ %79, %77 ], [ %63, %59 ]
  %67 = phi i16 [ %78, %77 ], [ %61, %59 ]
  %68 = getelementptr inbounds %struct.bConstraint, ptr %66, i64 0, i32 3
  %69 = load i16, ptr %68, align 8, !tbaa !99
  %70 = icmp eq i16 %69, 11
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.bConstraint, ptr %66, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !101
  %74 = load ptr, ptr %73, align 8, !tbaa !102
  %75 = icmp eq ptr %74, %1
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store ptr null, ptr %73, align 8, !tbaa !102
  br label %77

77:                                               ; preds = %71, %76, %65
  %78 = phi i16 [ %67, %65 ], [ 1, %76 ], [ 1, %71 ]
  %79 = load ptr, ptr %66, align 8, !tbaa !37
  %80 = icmp eq ptr %79, null
  br i1 %80, label %55, label %65, !llvm.loop !104

81:                                               ; preds = %55, %52, %48, %44
  %82 = phi i16 [ 0, %48 ], [ 0, %44 ], [ 0, %52 ], [ %56, %55 ]
  %83 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 106
  %84 = load ptr, ptr %83, align 8, !tbaa !37
  %85 = icmp eq ptr %84, null
  br i1 %85, label %102, label %86

86:                                               ; preds = %81, %98
  %87 = phi ptr [ %100, %98 ], [ %84, %81 ]
  %88 = phi i16 [ %99, %98 ], [ %82, %81 ]
  %89 = getelementptr inbounds %struct.bConstraint, ptr %87, i64 0, i32 3
  %90 = load i16, ptr %89, align 8, !tbaa !99
  %91 = icmp eq i16 %90, 11
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.bConstraint, ptr %87, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !101
  %95 = load ptr, ptr %94, align 8, !tbaa !102
  %96 = icmp eq ptr %95, %1
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store ptr null, ptr %94, align 8, !tbaa !102
  br label %98

98:                                               ; preds = %92, %97, %86
  %99 = phi i16 [ %88, %86 ], [ 1, %97 ], [ 1, %92 ]
  %100 = load ptr, ptr %87, align 8, !tbaa !37
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %86, !llvm.loop !105

102:                                              ; preds = %98, %81
  %103 = phi i16 [ %82, %81 ], [ %99, %98 ]
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  tail call void @DAG_id_tag_update(ptr noundef nonnull %7, i16 noundef signext 2) #24
  br label %106

106:                                              ; preds = %102, %105
  %107 = load ptr, ptr %7, align 8, !tbaa !37
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %6, !llvm.loop !106

109:                                              ; preds = %106, %2
  %110 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %111 = load ptr, ptr %110, align 8, !tbaa !37
  %112 = icmp eq ptr %111, null
  br i1 %112, label %138, label %113

113:                                              ; preds = %109, %135
  %114 = phi ptr [ %136, %135 ], [ %111, %109 ]
  %115 = getelementptr inbounds %struct.Material, ptr %114, i64 0, i32 103
  %116 = load ptr, ptr %115, align 8, !tbaa !107
  %117 = icmp eq ptr %116, null
  br i1 %117, label %135, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.bNodeTree, ptr %116, i64 0, i32 7
  %120 = load ptr, ptr %119, align 8, !tbaa !37
  %121 = icmp eq ptr %120, null
  br i1 %121, label %135, label %122

122:                                              ; preds = %118, %132
  %123 = phi ptr [ %133, %132 ], [ %120, %118 ]
  %124 = getelementptr inbounds %struct.bNode, ptr %123, i64 0, i32 8
  %125 = load i16, ptr %124, align 4, !tbaa !111
  %126 = icmp eq i16 %125, 171
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.bNode, ptr %123, i64 0, i32 20
  %129 = load ptr, ptr %128, align 8, !tbaa !114
  %130 = icmp eq ptr %129, %1
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store ptr null, ptr %128, align 8, !tbaa !114
  br label %132

132:                                              ; preds = %127, %131, %122
  %133 = load ptr, ptr %123, align 8, !tbaa !37
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %122, !llvm.loop !115

135:                                              ; preds = %132, %118, %113
  %136 = load ptr, ptr %114, align 8, !tbaa !37
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %113, !llvm.loop !116

138:                                              ; preds = %135, %109
  %139 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 35
  %140 = load ptr, ptr %139, align 8, !tbaa !37
  %141 = icmp eq ptr %140, null
  br i1 %141, label %163, label %145

142:                                              ; preds = %160, %145
  %143 = load ptr, ptr %146, align 8, !tbaa !37
  %144 = icmp eq ptr %143, null
  br i1 %144, label %163, label %145, !llvm.loop !117

145:                                              ; preds = %138, %142
  %146 = phi ptr [ %143, %142 ], [ %140, %138 ]
  %147 = getelementptr inbounds %struct.bNodeTree, ptr %146, i64 0, i32 7
  %148 = load ptr, ptr %147, align 8, !tbaa !37
  %149 = icmp eq ptr %148, null
  br i1 %149, label %142, label %150

150:                                              ; preds = %145, %160
  %151 = phi ptr [ %161, %160 ], [ %148, %145 ]
  %152 = getelementptr inbounds %struct.bNode, ptr %151, i64 0, i32 8
  %153 = load i16, ptr %152, align 4, !tbaa !111
  %154 = icmp eq i16 %153, 171
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.bNode, ptr %151, i64 0, i32 20
  %157 = load ptr, ptr %156, align 8, !tbaa !114
  %158 = icmp eq ptr %157, %1
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store ptr null, ptr %156, align 8, !tbaa !114
  br label %160

160:                                              ; preds = %155, %159, %150
  %161 = load ptr, ptr %151, align 8, !tbaa !37
  %162 = icmp eq ptr %161, null
  br i1 %162, label %142, label %150, !llvm.loop !118

163:                                              ; preds = %142, %138
  %164 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %165 = load ptr, ptr %164, align 8, !tbaa !37
  %166 = icmp eq ptr %165, null
  br i1 %166, label %197, label %170

167:                                              ; preds = %175, %170
  %168 = load ptr, ptr %171, align 8, !tbaa !37
  %169 = icmp eq ptr %168, null
  br i1 %169, label %197, label %170, !llvm.loop !119

170:                                              ; preds = %163, %167
  %171 = phi ptr [ %168, %167 ], [ %165, %163 ]
  %172 = getelementptr inbounds %struct.bScreen, ptr %171, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !37
  %174 = icmp eq ptr %173, null
  br i1 %174, label %167, label %178

175:                                              ; preds = %194, %178
  %176 = load ptr, ptr %179, align 8, !tbaa !37
  %177 = icmp eq ptr %176, null
  br i1 %177, label %167, label %178, !llvm.loop !120

178:                                              ; preds = %170, %175
  %179 = phi ptr [ %176, %175 ], [ %173, %170 ]
  %180 = getelementptr inbounds %struct.ScrArea, ptr %179, i64 0, i32 19
  %181 = load ptr, ptr %180, align 8, !tbaa !37
  %182 = icmp eq ptr %181, null
  br i1 %182, label %175, label %183

183:                                              ; preds = %178, %194
  %184 = phi ptr [ %195, %194 ], [ %181, %178 ]
  %185 = getelementptr inbounds %struct.SpaceLink, ptr %184, i64 0, i32 3
  %186 = load i32, ptr %185, align 8, !tbaa !121
  %187 = icmp eq i32 %186, 9
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.SpaceText, ptr %184, i64 0, i32 6
  %190 = load ptr, ptr %189, align 8, !tbaa !123
  %191 = icmp eq ptr %190, %1
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  store ptr null, ptr %189, align 8, !tbaa !123
  %193 = getelementptr inbounds %struct.SpaceText, ptr %184, i64 0, i32 7
  store i32 0, ptr %193, align 8, !tbaa !126
  br label %194

194:                                              ; preds = %188, %192, %183
  %195 = load ptr, ptr %184, align 8, !tbaa !37
  %196 = icmp eq ptr %195, null
  br i1 %196, label %175, label %183, !llvm.loop !127

197:                                              ; preds = %167, %163
  %198 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %199 = load ptr, ptr %198, align 8, !tbaa !37
  %200 = icmp eq ptr %199, null
  br i1 %200, label %226, label %204

201:                                              ; preds = %209, %204
  %202 = load ptr, ptr %205, align 8, !tbaa !37
  %203 = icmp eq ptr %202, null
  br i1 %203, label %226, label %204, !llvm.loop !128

204:                                              ; preds = %197, %201
  %205 = phi ptr [ %202, %201 ], [ %199, %197 ]
  %206 = getelementptr inbounds %struct.Scene, ptr %205, i64 0, i32 22, i32 60
  %207 = load ptr, ptr %206, align 8, !tbaa !37
  %208 = icmp eq ptr %207, null
  br i1 %208, label %201, label %212

209:                                              ; preds = %223, %212
  %210 = load ptr, ptr %213, align 8, !tbaa !37
  %211 = icmp eq ptr %210, null
  br i1 %211, label %201, label %212, !llvm.loop !129

212:                                              ; preds = %204, %209
  %213 = phi ptr [ %210, %209 ], [ %207, %204 ]
  %214 = getelementptr inbounds %struct.SceneRenderLayer, ptr %213, i64 0, i32 13
  %215 = load ptr, ptr %214, align 8, !tbaa !37
  %216 = icmp eq ptr %215, null
  br i1 %216, label %209, label %217

217:                                              ; preds = %212, %223
  %218 = phi ptr [ %224, %223 ], [ %215, %212 ]
  %219 = getelementptr inbounds %struct.FreestyleModuleConfig, ptr %218, i64 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !130
  %221 = icmp eq ptr %220, %1
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  store ptr null, ptr %219, align 8, !tbaa !130
  br label %223

223:                                              ; preds = %217, %222
  %224 = load ptr, ptr %218, align 8, !tbaa !37
  %225 = icmp eq ptr %224, null
  br i1 %225, label %209, label %217, !llvm.loop !132

226:                                              ; preds = %201, %197
  %227 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 6
  store i32 0, ptr %227, align 4, !tbaa !53
  ret void
}

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_text_clear(ptr noundef %0) local_unnamed_addr #2 {
  %2 = load i8, ptr @undoing, align 1, !tbaa !34
  store i8 1, ptr @undoing, align 1, !tbaa !34
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  store ptr %4, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  store i32 0, ptr %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !133
  %9 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %8, ptr %9, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.TextLine, ptr %8, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %11, ptr %12, align 4, !tbaa !68
  tail call fastcc void @txt_delete_sel(ptr noundef %0)
  store i8 %2, ptr @undoing, align 1, !tbaa !34
  %13 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !57
  %15 = or i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @txt_sel_all(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  store ptr %3, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  store i32 0, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  %8 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %7, ptr %8, align 8, !tbaa !67
  %9 = getelementptr inbounds %struct.TextLine, ptr %7, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %10, ptr %11, align 4, !tbaa !68
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @txt_delete_sel(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %148, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %148, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %3, %7
  br i1 %10, label %12, label %11

11:                                               ; preds = %18, %9
  br label %20

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !66
  %15 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %16 = load i32, ptr %15, align 4, !tbaa !68
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %148, label %18

18:                                               ; preds = %12
  br i1 %10, label %39, label %11

19:                                               ; preds = %23
  br i1 %10, label %39, label %26

20:                                               ; preds = %11, %23
  %21 = phi ptr [ %24, %23 ], [ %3, %11 ]
  %22 = icmp eq ptr %21, %7
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !134
  %25 = icmp eq ptr %24, null
  br i1 %25, label %19, label %20, !llvm.loop !135

26:                                               ; preds = %19, %26
  %27 = phi ptr [ %31, %26 ], [ %3, %19 ]
  %28 = phi i32 [ %29, %26 ], [ 0, %19 ]
  %29 = add nsw i32 %28, -1
  %30 = getelementptr inbounds %struct.TextLine, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !136
  %32 = icmp eq ptr %31, null
  %33 = icmp eq ptr %31, %7
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %26, !llvm.loop !137

35:                                               ; preds = %26
  %36 = icmp sgt i32 %28, 0
  %37 = select i1 %32, i1 true, i1 %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %20, %35
  br i1 %10, label %39, label %50

39:                                               ; preds = %19, %38, %18
  %40 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !66
  %42 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %43 = load i32, ptr %42, align 4, !tbaa !68
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39, %35
  store ptr %7, ptr %2, align 8, !tbaa !65
  store ptr %3, ptr %6, align 8, !tbaa !67
  %46 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !66
  %48 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %49 = load i32, ptr %48, align 4, !tbaa !68
  store i32 %49, ptr %46, align 8, !tbaa !66
  store i32 %47, ptr %48, align 4, !tbaa !68
  br label %50

50:                                               ; preds = %38, %39, %45
  %51 = load i8, ptr @undoing, align 1, !tbaa !34
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = tail call ptr @txt_sel_to_buf(ptr noundef %0)
  tail call fastcc void @txt_undo_add_blockop(ptr noundef %0, i32 noundef 23, ptr noundef %54)
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %55(ptr noundef %54) #24
  br label %56

56:                                               ; preds = %53, %50
  %57 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %58 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %59 = load i32, ptr %58, align 8, !tbaa !66
  %60 = load ptr, ptr %6, align 8, !tbaa !67
  %61 = getelementptr inbounds %struct.TextLine, ptr %60, i64 0, i32 4
  %62 = load i32, ptr %61, align 8, !tbaa !63
  %63 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %64 = load i32, ptr %63, align 4, !tbaa !68
  %65 = add i32 %59, 1
  %66 = add i32 %65, %62
  %67 = sub i32 %66, %64
  %68 = sext i32 %67 to i64
  %69 = tail call ptr %57(i64 noundef %68, ptr noundef nonnull @.str.1) #24
  %70 = load ptr, ptr %2, align 8, !tbaa !65
  %71 = getelementptr inbounds %struct.TextLine, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !39
  %73 = load i32, ptr %58, align 8, !tbaa !66
  %74 = sext i32 %73 to i64
  %75 = tail call ptr @strncpy(ptr noundef %69, ptr noundef %72, i64 noundef %74) #24
  %76 = load i32, ptr %58, align 8, !tbaa !66
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, ptr %69, i64 %77
  %79 = load ptr, ptr %6, align 8, !tbaa !67
  %80 = getelementptr inbounds %struct.TextLine, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !39
  %82 = load i32, ptr %63, align 4, !tbaa !68
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %81, i64 %83
  %85 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %78, ptr noundef nonnull dereferenceable(1) %84) #24
  %86 = load i32, ptr %58, align 8, !tbaa !66
  %87 = load ptr, ptr %6, align 8, !tbaa !67
  %88 = getelementptr inbounds %struct.TextLine, ptr %87, i64 0, i32 4
  %89 = load i32, ptr %88, align 8, !tbaa !63
  %90 = load i32, ptr %63, align 4, !tbaa !68
  %91 = add i32 %89, %86
  %92 = sub i32 %91, %90
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %69, i64 %93
  store i8 0, ptr %94, align 1, !tbaa !34
  %95 = load ptr, ptr %2, align 8, !tbaa !65
  %96 = getelementptr inbounds %struct.TextLine, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !39
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %56
  %100 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %100(ptr noundef nonnull %97) #24
  br label %101

101:                                              ; preds = %99, %56
  %102 = getelementptr inbounds %struct.TextLine, ptr %95, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !42
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %106(ptr noundef nonnull %103) #24
  br label %107

107:                                              ; preds = %101, %105
  store ptr %69, ptr %96, align 8, !tbaa !39
  %108 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %69) #25
  %109 = trunc i64 %108 to i32
  %110 = getelementptr inbounds %struct.TextLine, ptr %95, i64 0, i32 4
  store i32 %109, ptr %110, align 8, !tbaa !63
  store ptr null, ptr %102, align 8, !tbaa !42
  %111 = load ptr, ptr %6, align 8, !tbaa !67
  %112 = load ptr, ptr %2, align 8, !tbaa !65
  %113 = icmp eq ptr %111, %112
  br i1 %113, label %145, label %114

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %116 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  br label %117

117:                                              ; preds = %114, %142
  %118 = phi ptr [ %112, %114 ], [ %143, %142 ]
  %119 = phi ptr [ %111, %114 ], [ %121, %142 ]
  %120 = getelementptr inbounds %struct.TextLine, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !136
  %122 = icmp eq ptr %121, null
  br i1 %122, label %145, label %123

123:                                              ; preds = %117
  %124 = load ptr, ptr %121, align 8, !tbaa !134
  %125 = icmp eq ptr %118, null
  br i1 %125, label %142, label %126

126:                                              ; preds = %123
  tail call void @BLI_remlink(ptr noundef nonnull %115, ptr noundef %124) #24
  %127 = getelementptr inbounds %struct.TextLine, ptr %124, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !39
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %131(ptr noundef nonnull %128) #24
  br label %132

132:                                              ; preds = %130, %126
  %133 = getelementptr inbounds %struct.TextLine, ptr %124, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !42
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %132
  %137 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %137(ptr noundef nonnull %134) #24
  br label %138

138:                                              ; preds = %136, %132
  %139 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %139(ptr noundef %124) #24
  %140 = load i32, ptr %116, align 8, !tbaa !57
  %141 = or i32 %140, 1
  store i32 %141, ptr %116, align 8, !tbaa !57
  tail call void @txt_clean_text(ptr noundef %0)
  br label %142

142:                                              ; preds = %123, %138
  %143 = load ptr, ptr %2, align 8, !tbaa !65
  %144 = icmp eq ptr %121, %143
  br i1 %144, label %145, label %117, !llvm.loop !138

145:                                              ; preds = %142, %117, %107
  %146 = phi ptr [ %112, %107 ], [ %143, %142 ], [ %118, %117 ]
  store ptr %146, ptr %6, align 8, !tbaa !67
  %147 = load i32, ptr %58, align 8, !tbaa !66
  store i32 %147, ptr %63, align 4, !tbaa !68
  br label %148

148:                                              ; preds = %12, %5, %1, %145
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_text_write(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load i8, ptr @undoing, align 1, !tbaa !34
  tail call void @txt_insert_buf(ptr noundef %0, ptr noundef %1)
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %9 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !133
  store ptr %10, ptr %4, align 8, !tbaa !37
  %11 = getelementptr inbounds %struct.TextLine, ptr %10, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !63
  store i32 %12, ptr %8, align 4, !tbaa !139
  %13 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %10, ptr %13, align 8, !tbaa !67
  %14 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %12, ptr %14, align 4, !tbaa !68
  br label %15

15:                                               ; preds = %2, %7
  store i8 %3, ptr @undoing, align 1, !tbaa !34
  %16 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !57
  %18 = or i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @txt_insert_buf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store i64 0, ptr %3, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %6 = icmp eq ptr %1, null
  br i1 %6, label %89, label %7

7:                                                ; preds = %2
  tail call fastcc void @txt_delete_sel(ptr noundef %0)
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %9 = trunc i64 %8 to i32
  %10 = shl i64 %8, 32
  %11 = ashr exact i64 %10, 32
  %12 = tail call ptr @BLI_strdupn(ptr noundef nonnull %1, i64 noundef %11) #24
  store ptr %12, ptr %5, align 8, !tbaa !37
  %13 = call i32 @txt_extended_ascii_as_utf8(ptr noundef nonnull %5)
  %14 = add nsw i32 %13, %9
  %15 = load i8, ptr @undoing, align 1, !tbaa !34
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %7
  %18 = load ptr, ptr %5, align 8, !tbaa !37
  tail call fastcc void @txt_undo_add_blockop(ptr noundef %0, i32 noundef 24, ptr noundef %18)
  br label %19

19:                                               ; preds = %17, %7
  %20 = load i8, ptr @undoing, align 1, !tbaa !34
  store i8 1, ptr @undoing, align 1, !tbaa !34
  %21 = load ptr, ptr %5, align 8, !tbaa !37
  br label %22

22:                                               ; preds = %26, %19
  %23 = load i64, ptr %3, align 8, !tbaa !140
  %24 = getelementptr inbounds i8, ptr %21, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !34
  switch i8 %25, label %26 [
    i8 10, label %29
    i8 0, label %38
  ]

26:                                               ; preds = %22
  %27 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef %21, ptr noundef nonnull %3) #24
  %28 = call fastcc zeroext i8 @txt_add_char_intern(ptr noundef %0, i32 noundef %27, i8 noundef zeroext 0), !range !141
  br label %22, !llvm.loop !142

29:                                               ; preds = %22
  call void @txt_split_curline(ptr noundef %0)
  %30 = sext i32 %14 to i64
  %31 = load i64, ptr %3, align 8, !tbaa !140
  %32 = add i64 %31, 1
  store i64 %32, ptr %3, align 8, !tbaa !140
  %33 = icmp ult i64 %32, %30
  br i1 %33, label %34, label %87

34:                                               ; preds = %29
  %35 = icmp eq ptr %21, null
  %36 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %37 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  br label %40

38:                                               ; preds = %22
  store i8 %20, ptr @undoing, align 1, !tbaa !34
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %39(ptr noundef %21) #24
  br label %89

40:                                               ; preds = %34, %50
  %41 = load i64, ptr %3, align 8, !tbaa !140
  br label %42

42:                                               ; preds = %40, %47
  %43 = phi i64 [ %48, %47 ], [ %41, %40 ]
  %44 = phi i32 [ %49, %47 ], [ 0, %40 ]
  %45 = getelementptr inbounds i8, ptr %21, i64 %43
  %46 = load i8, ptr %45, align 1, !tbaa !34
  switch i8 %46, label %47 [
    i8 10, label %50
    i8 0, label %72
  ]

47:                                               ; preds = %42
  %48 = add i64 %43, 1
  store i64 %48, ptr %3, align 8, !tbaa !140
  %49 = add nuw nsw i32 %44, 1
  br label %42, !llvm.loop !143

50:                                               ; preds = %42
  %51 = zext nneg i32 %44 to i64
  %52 = sub i64 %43, %51
  %53 = getelementptr inbounds i8, ptr %21, i64 %52
  %54 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %55 = call ptr %54(i64 noundef 40, ptr noundef nonnull @.str) #24
  %56 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %57 = add nuw nsw i32 %44, 1
  %58 = zext nneg i32 %57 to i64
  %59 = call ptr %56(i64 noundef %58, ptr noundef nonnull @.str.1) #24
  %60 = getelementptr inbounds %struct.TextLine, ptr %55, i64 0, i32 2
  store ptr %59, ptr %60, align 8, !tbaa !39
  %61 = getelementptr inbounds %struct.TextLine, ptr %55, i64 0, i32 3
  store ptr null, ptr %61, align 8, !tbaa !42
  %62 = select i1 %35, ptr @.str.20, ptr %53
  %63 = call ptr @BLI_strncpy(ptr noundef %59, ptr noundef nonnull %62, i64 noundef %58) #24
  %64 = load ptr, ptr %60, align 8, !tbaa !39
  %65 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %64) #25
  %66 = trunc i64 %65 to i32
  %67 = getelementptr inbounds %struct.TextLine, ptr %55, i64 0, i32 4
  store i32 %66, ptr %67, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %55, i8 0, i64 16, i1 false)
  %68 = load ptr, ptr %37, align 8, !tbaa !65
  call void @BLI_insertlinkbefore(ptr noundef nonnull %36, ptr noundef %68, ptr noundef nonnull %55) #24
  %69 = load i64, ptr %3, align 8, !tbaa !140
  %70 = add i64 %69, 1
  store i64 %70, ptr %3, align 8, !tbaa !140
  %71 = icmp ult i64 %70, %30
  br i1 %71, label %40, label %87, !llvm.loop !144

72:                                               ; preds = %42
  %73 = zext nneg i32 %44 to i64
  %74 = sub i64 %43, %73
  store i64 %74, ptr %4, align 8, !tbaa !140
  %75 = load i64, ptr %3, align 8, !tbaa !140
  %76 = icmp ult i64 %74, %75
  %77 = icmp ult i64 %74, %30
  %78 = and i1 %77, %76
  br i1 %78, label %79, label %87

79:                                               ; preds = %72, %79
  %80 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef %21, ptr noundef nonnull %4) #24
  %81 = call fastcc zeroext i8 @txt_add_char_intern(ptr noundef %0, i32 noundef %80, i8 noundef zeroext 0), !range !141
  %82 = load i64, ptr %4, align 8
  %83 = load i64, ptr %3, align 8, !tbaa !140
  %84 = icmp ult i64 %82, %83
  %85 = icmp ult i64 %82, %30
  %86 = and i1 %85, %84
  br i1 %86, label %79, label %87, !llvm.loop !145

87:                                               ; preds = %50, %79, %29, %72
  %88 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %88(ptr noundef %21) #24
  store i8 %20, ptr @undoing, align 1, !tbaa !34
  br label %89

89:                                               ; preds = %2, %87, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @txt_move_eof(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #10 {
  %3 = icmp eq i8 %1, 0
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %6 = select i1 %3, ptr %4, ptr %5
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %12 = select i1 %3, ptr %10, ptr %11
  %13 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !133
  store ptr %14, ptr %6, align 8, !tbaa !37
  %15 = getelementptr inbounds %struct.TextLine, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !63
  store i32 %16, ptr %12, align 4, !tbaa !139
  br i1 %3, label %17, label %20

17:                                               ; preds = %9
  %18 = load ptr, ptr %4, align 8, !tbaa !65
  store ptr %18, ptr %5, align 8, !tbaa !67
  %19 = load i32, ptr %10, align 8, !tbaa !66
  store i32 %19, ptr %11, align 4, !tbaa !68
  br label %20

20:                                               ; preds = %9, %17, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_text_file_modified_check(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #24
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %5, i64 noundef 1024) #24
  %9 = load ptr, ptr @G, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 2
  %11 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %3, ptr noundef nonnull %10) #24
  %12 = call i32 @BLI_exists(ptr noundef nonnull %3) #24
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %7
  %15 = call i32 @BLI_stat(ptr noundef nonnull %3, ptr noundef nonnull %2) #24
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %30, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !146
  %20 = and i32 %19, 61440
  %21 = icmp eq i32 %20, 32768
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 12
  %24 = load i64, ptr %23, align 8, !tbaa !74
  %25 = sitofp i64 %24 to double
  %26 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 13
  %27 = load double, ptr %26, align 8, !tbaa !78
  %28 = fcmp olt double %27, %25
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %22, %17, %14, %7, %1
  %31 = phi i32 [ 0, %1 ], [ 2, %7 ], [ -1, %14 ], [ -1, %17 ], [ %29, %22 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #24
  ret i32 %31
}

declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_text_file_modified_ignore(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #24
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %5, i64 noundef 1024) #24
  %9 = load ptr, ptr @G, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 2
  %11 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %3, ptr noundef nonnull %10) #24
  %12 = call i32 @BLI_exists(ptr noundef nonnull %3) #24
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %7
  %15 = call i32 @BLI_stat(ptr noundef nonnull %3, ptr noundef nonnull %2) #24
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !146
  %20 = and i32 %19, 61440
  %21 = icmp eq i32 %20, 32768
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 12
  %24 = load i64, ptr %23, align 8, !tbaa !74
  %25 = sitofp i64 %24 to double
  %26 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 13
  store double %25, ptr %26, align 8, !tbaa !78
  br label %27

27:                                               ; preds = %14, %17, %7, %1, %22
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @txt_clean_text(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %11 = tail call ptr %10(i64 noundef 40, ptr noundef nonnull @.str) #24
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %13 = tail call ptr %12(i64 noundef 1, ptr noundef nonnull @.str.1) #24
  %14 = getelementptr inbounds %struct.TextLine, ptr %11, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !39
  %15 = getelementptr inbounds %struct.TextLine, ptr %11, i64 0, i32 3
  store ptr null, ptr %15, align 8, !tbaa !42
  store i8 0, ptr %13, align 1
  %16 = getelementptr inbounds %struct.TextLine, ptr %11, i64 0, i32 4
  store i32 0, ptr %16, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store ptr %11, ptr %6, align 8, !tbaa !133
  br label %17

17:                                               ; preds = %5, %9
  %18 = phi ptr [ %11, %9 ], [ %7, %5 ]
  store ptr %18, ptr %2, align 8, !tbaa !64
  br label %19

19:                                               ; preds = %17, %1
  %20 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !133
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !64
  store ptr %24, ptr %20, align 8, !tbaa !133
  br label %25

25:                                               ; preds = %23, %19
  %26 = load ptr, ptr %2, align 8, !tbaa !37
  %27 = getelementptr inbounds %struct.TextLine, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !136
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %35, %25
  %31 = phi ptr [ %26, %25 ], [ %36, %35 ]
  %32 = load ptr, ptr %20, align 8, !tbaa !37
  %33 = load ptr, ptr %32, align 8, !tbaa !134
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %40

35:                                               ; preds = %25, %35
  %36 = phi ptr [ %38, %35 ], [ %28, %25 ]
  store ptr %36, ptr %2, align 8, !tbaa !37
  %37 = getelementptr inbounds %struct.TextLine, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !136
  %39 = icmp eq ptr %38, null
  br i1 %39, label %30, label %35, !llvm.loop !147

40:                                               ; preds = %30, %40
  %41 = phi ptr [ %42, %40 ], [ %33, %30 ]
  store ptr %41, ptr %20, align 8, !tbaa !37
  %42 = load ptr, ptr %41, align 8, !tbaa !134
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %40, !llvm.loop !148

44:                                               ; preds = %40, %30
  %45 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !65
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !67
  %51 = icmp eq ptr %50, null
  %52 = select i1 %51, ptr %31, ptr %50
  store ptr %52, ptr %45, align 8, !tbaa !65
  %53 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  store i32 0, ptr %53, align 8, !tbaa !66
  br label %54

54:                                               ; preds = %48, %44
  %55 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !67
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load ptr, ptr %45, align 8, !tbaa !65
  store ptr %59, ptr %55, align 8, !tbaa !67
  %60 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 0, ptr %60, align 4, !tbaa !68
  br label %61

61:                                               ; preds = %58, %54
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @txt_get_span(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #11 {
  %3 = icmp eq ptr %1, null
  %4 = icmp eq ptr %0, null
  %5 = or i1 %4, %3
  %6 = icmp eq ptr %0, %1
  %7 = or i1 %6, %5
  br i1 %7, label %31, label %12

8:                                                ; preds = %16
  %9 = icmp eq ptr %0, null
  %10 = icmp eq ptr %0, %1
  %11 = or i1 %9, %10
  br i1 %11, label %31, label %20

12:                                               ; preds = %2, %16
  %13 = phi ptr [ %18, %16 ], [ %0, %2 ]
  %14 = phi i32 [ %17, %16 ], [ 0, %2 ]
  %15 = icmp eq ptr %13, %1
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = add nuw nsw i32 %14, 1
  %18 = load ptr, ptr %13, align 8, !tbaa !134
  %19 = icmp eq ptr %18, null
  br i1 %19, label %8, label %12, !llvm.loop !135

20:                                               ; preds = %8, %20
  %21 = phi ptr [ %25, %20 ], [ %0, %8 ]
  %22 = phi i32 [ %23, %20 ], [ 0, %8 ]
  %23 = add nsw i32 %22, -1
  %24 = getelementptr inbounds %struct.TextLine, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !136
  %26 = icmp eq ptr %25, null
  %27 = icmp eq ptr %25, %1
  %28 = or i1 %26, %27
  br i1 %28, label %29, label %20, !llvm.loop !137

29:                                               ; preds = %20
  %30 = select i1 %26, i32 0, i32 %23
  br label %31

31:                                               ; preds = %12, %8, %29, %2
  %32 = phi i32 [ 0, %2 ], [ 0, %8 ], [ %30, %29 ], [ %14, %12 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @txt_cursor_is_line_start(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !68
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @txt_cursor_is_line_end(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !68
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %struct.TextLine, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !63
  %8 = icmp eq i32 %3, %7
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: nounwind uwtable
define dso_local i32 @txt_utf8_offset_to_index(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %10, %4 ], [ 0, %2 ]
  %6 = phi i32 [ %11, %4 ], [ 0, %2 ]
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = tail call i32 @BLI_str_utf8_size(ptr noundef %8) #24
  %10 = add nsw i32 %9, %5
  %11 = add nuw nsw i32 %6, 1
  %12 = icmp eq i32 %10, %1
  br i1 %12, label %13, label %4, !llvm.loop !149

13:                                               ; preds = %4, %2
  %14 = phi i32 [ 0, %2 ], [ %11, %4 ]
  ret i32 %14
}

declare i32 @BLI_str_utf8_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @txt_utf8_index_to_offset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %11, %4 ], [ 0, %2 ]
  %6 = phi i32 [ %10, %4 ], [ 0, %2 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = tail call i32 @BLI_str_utf8_size(ptr noundef %8) #24
  %10 = add nsw i32 %9, %6
  %11 = add nuw nsw i32 %5, 1
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %4, !llvm.loop !150

13:                                               ; preds = %4, %2
  %14 = phi i32 [ 0, %2 ], [ %10, %4 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local i32 @txt_utf8_offset_to_column(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %12, %4 ], [ 0, %2 ]
  %6 = phi i32 [ %10, %4 ], [ 0, %2 ]
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef %8) #24
  %10 = add nsw i32 %9, %6
  %11 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef %8) #24
  %12 = add nsw i32 %11, %5
  %13 = icmp slt i32 %12, %1
  br i1 %13, label %4, label %14, !llvm.loop !151

14:                                               ; preds = %4, %2
  %15 = phi i32 [ 0, %2 ], [ %10, %4 ]
  ret i32 %15
}

declare i32 @BLI_str_utf8_char_width_safe(ptr noundef) local_unnamed_addr #4

declare i32 @BLI_str_utf8_size_safe(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @txt_utf8_column_to_offset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load i8, ptr %0, align 1, !tbaa !34
  %4 = icmp ne i8 %3, 0
  %5 = icmp sgt i32 %1, 0
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %23

7:                                                ; preds = %2, %14
  %8 = phi ptr [ %18, %14 ], [ %0, %2 ]
  %9 = phi i32 [ %16, %14 ], [ 0, %2 ]
  %10 = phi i32 [ %12, %14 ], [ 0, %2 ]
  %11 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %8) #24
  %12 = add nsw i32 %11, %10
  %13 = icmp sgt i32 %12, %1
  br i1 %13, label %23, label %14

14:                                               ; preds = %7
  %15 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %8) #24
  %16 = add nsw i32 %15, %9
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !34
  %20 = icmp ne i8 %19, 0
  %21 = icmp slt i32 %12, %1
  %22 = and i1 %21, %20
  br i1 %22, label %7, label %23, !llvm.loop !152

23:                                               ; preds = %14, %7, %2
  %24 = phi i32 [ 0, %2 ], [ %16, %14 ], [ %9, %7 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define dso_local void @txt_move_up(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  br label %54

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = icmp eq ptr %11, null
  %13 = icmp eq ptr %9, null
  %14 = or i1 %13, %12
  %15 = icmp eq ptr %9, %11
  %16 = or i1 %15, %14
  br i1 %16, label %37, label %19

17:                                               ; preds = %22
  %18 = or i1 %13, %15
  br i1 %18, label %37, label %25

19:                                               ; preds = %7, %22
  %20 = phi ptr [ %23, %22 ], [ %9, %7 ]
  %21 = icmp eq ptr %20, %11
  br i1 %21, label %37, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %20, align 8, !tbaa !134
  %24 = icmp eq ptr %23, null
  br i1 %24, label %17, label %19, !llvm.loop !135

25:                                               ; preds = %17, %25
  %26 = phi ptr [ %30, %25 ], [ %9, %17 ]
  %27 = phi i32 [ %28, %25 ], [ 0, %17 ]
  %28 = add nsw i32 %27, -1
  %29 = getelementptr inbounds %struct.TextLine, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !136
  %31 = icmp eq ptr %30, null
  %32 = icmp eq ptr %30, %11
  %33 = or i1 %31, %32
  br i1 %33, label %34, label %25, !llvm.loop !137

34:                                               ; preds = %25
  %35 = icmp sgt i32 %27, 0
  %36 = select i1 %31, i1 true, i1 %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %19, %34, %17, %7
  br i1 %15, label %38, label %49

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !66
  %41 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %42 = load i32, ptr %41, align 4, !tbaa !68
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38, %34
  store ptr %11, ptr %8, align 8, !tbaa !65
  store ptr %9, ptr %10, align 8, !tbaa !67
  %45 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !66
  %47 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %48 = load i32, ptr %47, align 4, !tbaa !68
  store i32 %48, ptr %45, align 8, !tbaa !66
  store i32 %46, ptr %47, align 4, !tbaa !68
  br label %49

49:                                               ; preds = %37, %38, %44
  %50 = load ptr, ptr %8, align 8, !tbaa !65
  store ptr %50, ptr %10, align 8, !tbaa !67
  %51 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %52 = load i32, ptr %51, align 8, !tbaa !66
  %53 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %52, ptr %53, align 4, !tbaa !68
  br label %54

54:                                               ; preds = %49, %4
  %55 = phi ptr [ %8, %49 ], [ %5, %4 ]
  %56 = phi ptr [ %51, %49 ], [ %6, %4 ]
  %57 = load ptr, ptr %55, align 8, !tbaa !37
  %58 = icmp eq ptr %57, null
  br i1 %58, label %128, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.TextLine, ptr %57, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !136
  %62 = icmp eq ptr %61, null
  br i1 %62, label %107, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.TextLine, ptr %57, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !39
  %66 = load i32, ptr %56, align 4, !tbaa !139
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63, %68
  %69 = phi i32 [ %76, %68 ], [ 0, %63 ]
  %70 = phi i32 [ %74, %68 ], [ 0, %63 ]
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, ptr %65, i64 %71
  %73 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef %72) #24
  %74 = add nsw i32 %73, %70
  %75 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef %72) #24
  %76 = add nsw i32 %75, %69
  %77 = icmp slt i32 %76, %66
  br i1 %77, label %68, label %78, !llvm.loop !151

78:                                               ; preds = %68, %63
  %79 = phi i32 [ 0, %63 ], [ %74, %68 ]
  %80 = load ptr, ptr %55, align 8, !tbaa !37
  %81 = getelementptr inbounds %struct.TextLine, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !136
  store ptr %82, ptr %55, align 8, !tbaa !37
  %83 = getelementptr inbounds %struct.TextLine, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !39
  %85 = load i8, ptr %84, align 1, !tbaa !34
  %86 = icmp ne i8 %85, 0
  %87 = icmp sgt i32 %79, 0
  %88 = and i1 %87, %86
  br i1 %88, label %89, label %105

89:                                               ; preds = %78, %96
  %90 = phi ptr [ %100, %96 ], [ %84, %78 ]
  %91 = phi i32 [ %98, %96 ], [ 0, %78 ]
  %92 = phi i32 [ %94, %96 ], [ 0, %78 ]
  %93 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %90) #24
  %94 = add nsw i32 %93, %92
  %95 = icmp sgt i32 %94, %79
  br i1 %95, label %105, label %96

96:                                               ; preds = %89
  %97 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %90) #24
  %98 = add nsw i32 %97, %91
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %84, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !34
  %102 = icmp ne i8 %101, 0
  %103 = icmp slt i32 %94, %79
  %104 = and i1 %103, %102
  br i1 %104, label %89, label %105, !llvm.loop !152

105:                                              ; preds = %89, %96, %78
  %106 = phi i32 [ 0, %78 ], [ %98, %96 ], [ %91, %89 ]
  store i32 %106, ptr %56, align 4, !tbaa !139
  br label %120

107:                                              ; preds = %59
  %108 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %109 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %110 = select i1 %3, ptr %108, ptr %109
  %111 = load ptr, ptr %110, align 8, !tbaa !37
  %112 = icmp eq ptr %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %115 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %116 = select i1 %3, ptr %114, ptr %115
  store i32 0, ptr %116, align 4, !tbaa !139
  br i1 %3, label %117, label %128

117:                                              ; preds = %113
  %118 = load ptr, ptr %108, align 8, !tbaa !65
  store ptr %118, ptr %109, align 8, !tbaa !67
  %119 = load i32, ptr %114, align 8, !tbaa !66
  store i32 %119, ptr %115, align 4, !tbaa !68
  br label %120

120:                                              ; preds = %117, %107, %105
  br i1 %3, label %121, label %128

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %123 = load ptr, ptr %122, align 8, !tbaa !65
  %124 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %123, ptr %124, align 8, !tbaa !67
  %125 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %126 = load i32, ptr %125, align 8, !tbaa !66
  %127 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %126, ptr %127, align 4, !tbaa !68
  br label %128

128:                                              ; preds = %113, %120, %121, %54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @txt_move_bol(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #10 {
  %3 = icmp eq i8 %1, 0
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %6 = select i1 %3, ptr %4, ptr %5
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %12 = select i1 %3, ptr %10, ptr %11
  store i32 0, ptr %12, align 4, !tbaa !139
  br i1 %3, label %13, label %16

13:                                               ; preds = %9
  %14 = load ptr, ptr %4, align 8, !tbaa !65
  store ptr %14, ptr %5, align 8, !tbaa !67
  %15 = load i32, ptr %10, align 8, !tbaa !66
  store i32 %15, ptr %11, align 4, !tbaa !68
  br label %16

16:                                               ; preds = %9, %13, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @txt_pop_sel(ptr nocapture noundef %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %3, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %6, ptr %7, align 4, !tbaa !68
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @txt_move_down(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  br label %58

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = icmp eq ptr %11, null
  %13 = icmp eq ptr %9, null
  %14 = or i1 %13, %12
  %15 = icmp eq ptr %9, %11
  %16 = or i1 %15, %14
  br i1 %16, label %38, label %19

17:                                               ; preds = %23
  %18 = or i1 %13, %15
  br i1 %18, label %38, label %27

19:                                               ; preds = %7, %23
  %20 = phi ptr [ %25, %23 ], [ %9, %7 ]
  %21 = phi i32 [ %24, %23 ], [ 0, %7 ]
  %22 = icmp eq ptr %20, %11
  br i1 %22, label %38, label %23

23:                                               ; preds = %19
  %24 = add nuw nsw i32 %21, 1
  %25 = load ptr, ptr %20, align 8, !tbaa !134
  %26 = icmp eq ptr %25, null
  br i1 %26, label %17, label %19, !llvm.loop !135

27:                                               ; preds = %17, %27
  %28 = phi ptr [ %32, %27 ], [ %9, %17 ]
  %29 = phi i32 [ %30, %27 ], [ 0, %17 ]
  %30 = add nsw i32 %29, -1
  %31 = getelementptr inbounds %struct.TextLine, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !136
  %33 = icmp eq ptr %32, null
  %34 = icmp eq ptr %32, %11
  %35 = or i1 %33, %34
  br i1 %35, label %36, label %27, !llvm.loop !137

36:                                               ; preds = %27
  %37 = select i1 %33, i32 0, i32 %30
  br label %38

38:                                               ; preds = %19, %36, %17, %7
  %39 = phi i32 [ 0, %7 ], [ 0, %17 ], [ %37, %36 ], [ %21, %19 ]
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  br i1 %15, label %42, label %53

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !66
  %45 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %46 = load i32, ptr %45, align 4, !tbaa !68
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42, %38
  store ptr %11, ptr %8, align 8, !tbaa !65
  store ptr %9, ptr %10, align 8, !tbaa !67
  %49 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !66
  %51 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %52 = load i32, ptr %51, align 4, !tbaa !68
  store i32 %52, ptr %49, align 8, !tbaa !66
  store i32 %50, ptr %51, align 4, !tbaa !68
  br label %53

53:                                               ; preds = %41, %42, %48
  %54 = load ptr, ptr %8, align 8, !tbaa !65
  store ptr %54, ptr %10, align 8, !tbaa !67
  %55 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %56 = load i32, ptr %55, align 8, !tbaa !66
  %57 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %56, ptr %57, align 4, !tbaa !68
  br label %58

58:                                               ; preds = %53, %4
  %59 = phi ptr [ %8, %53 ], [ %5, %4 ]
  %60 = phi ptr [ %55, %53 ], [ %6, %4 ]
  %61 = load ptr, ptr %59, align 8, !tbaa !37
  %62 = icmp eq ptr %61, null
  br i1 %62, label %132, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr %61, align 8, !tbaa !134
  %65 = icmp eq ptr %64, null
  br i1 %65, label %109, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.TextLine, ptr %61, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !39
  %69 = load i32, ptr %60, align 4, !tbaa !139
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66, %71
  %72 = phi i32 [ %79, %71 ], [ 0, %66 ]
  %73 = phi i32 [ %77, %71 ], [ 0, %66 ]
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, ptr %68, i64 %74
  %76 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef %75) #24
  %77 = add nsw i32 %76, %73
  %78 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef %75) #24
  %79 = add nsw i32 %78, %72
  %80 = icmp slt i32 %79, %69
  br i1 %80, label %71, label %81, !llvm.loop !151

81:                                               ; preds = %71, %66
  %82 = phi i32 [ 0, %66 ], [ %77, %71 ]
  %83 = load ptr, ptr %59, align 8, !tbaa !37
  %84 = load ptr, ptr %83, align 8, !tbaa !134
  store ptr %84, ptr %59, align 8, !tbaa !37
  %85 = getelementptr inbounds %struct.TextLine, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !39
  %87 = load i8, ptr %86, align 1, !tbaa !34
  %88 = icmp ne i8 %87, 0
  %89 = icmp sgt i32 %82, 0
  %90 = and i1 %89, %88
  br i1 %90, label %91, label %107

91:                                               ; preds = %81, %98
  %92 = phi ptr [ %102, %98 ], [ %86, %81 ]
  %93 = phi i32 [ %100, %98 ], [ 0, %81 ]
  %94 = phi i32 [ %96, %98 ], [ 0, %81 ]
  %95 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %92) #24
  %96 = add nsw i32 %95, %94
  %97 = icmp sgt i32 %96, %82
  br i1 %97, label %107, label %98

98:                                               ; preds = %91
  %99 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %92) #24
  %100 = add nsw i32 %99, %93
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, ptr %86, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !34
  %104 = icmp ne i8 %103, 0
  %105 = icmp slt i32 %96, %82
  %106 = and i1 %105, %104
  br i1 %106, label %91, label %107, !llvm.loop !152

107:                                              ; preds = %91, %98, %81
  %108 = phi i32 [ 0, %81 ], [ %100, %98 ], [ %93, %91 ]
  store i32 %108, ptr %60, align 4, !tbaa !139
  br label %124

109:                                              ; preds = %63
  %110 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %111 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %112 = select i1 %3, ptr %110, ptr %111
  %113 = load ptr, ptr %112, align 8, !tbaa !37
  %114 = icmp eq ptr %113, null
  br i1 %114, label %124, label %115

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %117 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %118 = select i1 %3, ptr %116, ptr %117
  %119 = getelementptr inbounds %struct.TextLine, ptr %113, i64 0, i32 4
  %120 = load i32, ptr %119, align 8, !tbaa !63
  store i32 %120, ptr %118, align 4, !tbaa !139
  br i1 %3, label %121, label %132

121:                                              ; preds = %115
  %122 = load ptr, ptr %110, align 8, !tbaa !65
  store ptr %122, ptr %111, align 8, !tbaa !67
  %123 = load i32, ptr %116, align 8, !tbaa !66
  store i32 %123, ptr %117, align 4, !tbaa !68
  br label %124

124:                                              ; preds = %121, %109, %107
  br i1 %3, label %125, label %132

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %127 = load ptr, ptr %126, align 8, !tbaa !65
  %128 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %127, ptr %128, align 8, !tbaa !67
  %129 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %130 = load i32, ptr %129, align 8, !tbaa !66
  %131 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %130, ptr %131, align 4, !tbaa !68
  br label %132

132:                                              ; preds = %115, %124, %125, %58
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @txt_move_eol(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #10 {
  %3 = icmp eq i8 %1, 0
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %6 = select i1 %3, ptr %4, ptr %5
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %12 = select i1 %3, ptr %10, ptr %11
  %13 = getelementptr inbounds %struct.TextLine, ptr %7, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !63
  store i32 %14, ptr %12, align 4, !tbaa !139
  br i1 %3, label %15, label %18

15:                                               ; preds = %9
  %16 = load ptr, ptr %4, align 8, !tbaa !65
  store ptr %16, ptr %5, align 8, !tbaa !67
  %17 = load i32, ptr %10, align 8, !tbaa !66
  store i32 %17, ptr %11, align 4, !tbaa !68
  br label %18

18:                                               ; preds = %9, %15, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @txt_move_left(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  br label %54

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = icmp eq ptr %11, null
  %13 = icmp eq ptr %9, null
  %14 = or i1 %13, %12
  %15 = icmp eq ptr %9, %11
  %16 = or i1 %15, %14
  br i1 %16, label %37, label %19

17:                                               ; preds = %22
  %18 = or i1 %13, %15
  br i1 %18, label %37, label %25

19:                                               ; preds = %7, %22
  %20 = phi ptr [ %23, %22 ], [ %9, %7 ]
  %21 = icmp eq ptr %20, %11
  br i1 %21, label %37, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %20, align 8, !tbaa !134
  %24 = icmp eq ptr %23, null
  br i1 %24, label %17, label %19, !llvm.loop !135

25:                                               ; preds = %17, %25
  %26 = phi ptr [ %30, %25 ], [ %9, %17 ]
  %27 = phi i32 [ %28, %25 ], [ 0, %17 ]
  %28 = add nsw i32 %27, -1
  %29 = getelementptr inbounds %struct.TextLine, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !136
  %31 = icmp eq ptr %30, null
  %32 = icmp eq ptr %30, %11
  %33 = or i1 %31, %32
  br i1 %33, label %34, label %25, !llvm.loop !137

34:                                               ; preds = %25
  %35 = icmp sgt i32 %27, 0
  %36 = select i1 %31, i1 true, i1 %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %19, %34, %17, %7
  br i1 %15, label %38, label %49

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !66
  %41 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %42 = load i32, ptr %41, align 4, !tbaa !68
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38, %34
  store ptr %11, ptr %8, align 8, !tbaa !65
  store ptr %9, ptr %10, align 8, !tbaa !67
  %45 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !66
  %47 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %48 = load i32, ptr %47, align 4, !tbaa !68
  store i32 %48, ptr %45, align 8, !tbaa !66
  store i32 %46, ptr %47, align 4, !tbaa !68
  br label %49

49:                                               ; preds = %37, %38, %44
  %50 = load ptr, ptr %8, align 8, !tbaa !65
  store ptr %50, ptr %10, align 8, !tbaa !67
  %51 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %52 = load i32, ptr %51, align 8, !tbaa !66
  %53 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %52, ptr %53, align 4, !tbaa !68
  br label %54

54:                                               ; preds = %49, %4
  %55 = phi ptr [ %8, %49 ], [ %5, %4 ]
  %56 = phi ptr [ %51, %49 ], [ %6, %4 ]
  %57 = load ptr, ptr %55, align 8, !tbaa !37
  %58 = icmp eq ptr %57, null
  br i1 %58, label %125, label %59

59:                                               ; preds = %54
  %60 = load i32, ptr %56, align 4, !tbaa !139
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.TextLine, ptr %57, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !136
  %65 = icmp eq ptr %64, null
  br i1 %65, label %117, label %66

66:                                               ; preds = %62
  tail call void @txt_move_up(ptr noundef %0, i8 noundef zeroext %1)
  %67 = load ptr, ptr %55, align 8, !tbaa !37
  %68 = getelementptr inbounds %struct.TextLine, ptr %67, i64 0, i32 4
  %69 = load i32, ptr %68, align 8, !tbaa !63
  br label %115

70:                                               ; preds = %59
  %71 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !57
  %73 = and i32 %72, 1024
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %97, label %75

75:                                               ; preds = %70
  %76 = tail call i32 @llvm.smin.i32(i32 %60, i32 4)
  %77 = icmp sgt i32 %60, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.TextLine, ptr %57, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !39
  %81 = zext nneg i32 %60 to i64
  br label %85

82:                                               ; preds = %85
  %83 = add nuw nsw i64 %86, 1
  %84 = icmp eq i64 %83, %81
  br i1 %84, label %90, label %85, !llvm.loop !153

85:                                               ; preds = %78, %82
  %86 = phi i64 [ 0, %78 ], [ %83, %82 ]
  %87 = getelementptr inbounds i8, ptr %80, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !34
  %89 = icmp eq i8 %88, 32
  br i1 %89, label %82, label %90

90:                                               ; preds = %82, %85, %75
  %91 = phi i32 [ %76, %75 ], [ %76, %82 ], [ 0, %85 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = srem i32 %60, 4
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 %91, i32 %94
  br label %97

97:                                               ; preds = %93, %90, %70
  %98 = phi i32 [ 0, %90 ], [ 0, %70 ], [ %96, %93 ]
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = sub nsw i32 %60, %98
  br label %115

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.TextLine, ptr %57, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !39
  %105 = sext i32 %60 to i64
  %106 = getelementptr inbounds i8, ptr %104, i64 %105
  %107 = tail call ptr @BLI_str_prev_char_utf8(ptr noundef nonnull %106) #24
  %108 = load ptr, ptr %55, align 8, !tbaa !37
  %109 = getelementptr inbounds %struct.TextLine, ptr %108, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !39
  %111 = ptrtoint ptr %107 to i64
  %112 = ptrtoint ptr %110 to i64
  %113 = sub i64 %111, %112
  %114 = trunc i64 %113 to i32
  br label %115

115:                                              ; preds = %66, %102, %100
  %116 = phi i32 [ %101, %100 ], [ %114, %102 ], [ %69, %66 ]
  store i32 %116, ptr %56, align 4, !tbaa !139
  br label %117

117:                                              ; preds = %115, %62
  br i1 %3, label %118, label %125

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %120 = load ptr, ptr %119, align 8, !tbaa !65
  %121 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %120, ptr %121, align 8, !tbaa !67
  %122 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %123 = load i32, ptr %122, align 8, !tbaa !66
  %124 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %123, ptr %124, align 4, !tbaa !68
  br label %125

125:                                              ; preds = %117, %118, %54
  ret void
}

declare ptr @BLI_str_prev_char_utf8(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @txt_move_right(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  br label %58

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = icmp eq ptr %11, null
  %13 = icmp eq ptr %9, null
  %14 = or i1 %13, %12
  %15 = icmp eq ptr %9, %11
  %16 = or i1 %15, %14
  br i1 %16, label %38, label %19

17:                                               ; preds = %23
  %18 = or i1 %13, %15
  br i1 %18, label %38, label %27

19:                                               ; preds = %7, %23
  %20 = phi ptr [ %25, %23 ], [ %9, %7 ]
  %21 = phi i32 [ %24, %23 ], [ 0, %7 ]
  %22 = icmp eq ptr %20, %11
  br i1 %22, label %38, label %23

23:                                               ; preds = %19
  %24 = add nuw nsw i32 %21, 1
  %25 = load ptr, ptr %20, align 8, !tbaa !134
  %26 = icmp eq ptr %25, null
  br i1 %26, label %17, label %19, !llvm.loop !135

27:                                               ; preds = %17, %27
  %28 = phi ptr [ %32, %27 ], [ %9, %17 ]
  %29 = phi i32 [ %30, %27 ], [ 0, %17 ]
  %30 = add nsw i32 %29, -1
  %31 = getelementptr inbounds %struct.TextLine, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !136
  %33 = icmp eq ptr %32, null
  %34 = icmp eq ptr %32, %11
  %35 = or i1 %33, %34
  br i1 %35, label %36, label %27, !llvm.loop !137

36:                                               ; preds = %27
  %37 = select i1 %33, i32 0, i32 %30
  br label %38

38:                                               ; preds = %19, %36, %17, %7
  %39 = phi i32 [ 0, %7 ], [ 0, %17 ], [ %37, %36 ], [ %21, %19 ]
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  br i1 %15, label %42, label %53

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !66
  %45 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %46 = load i32, ptr %45, align 4, !tbaa !68
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42, %38
  store ptr %11, ptr %8, align 8, !tbaa !65
  store ptr %9, ptr %10, align 8, !tbaa !67
  %49 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !66
  %51 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %52 = load i32, ptr %51, align 4, !tbaa !68
  store i32 %52, ptr %49, align 8, !tbaa !66
  store i32 %50, ptr %51, align 4, !tbaa !68
  br label %53

53:                                               ; preds = %41, %42, %48
  %54 = load ptr, ptr %8, align 8, !tbaa !65
  store ptr %54, ptr %10, align 8, !tbaa !67
  %55 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %56 = load i32, ptr %55, align 8, !tbaa !66
  %57 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %56, ptr %57, align 4, !tbaa !68
  br label %58

58:                                               ; preds = %53, %4
  %59 = phi ptr [ %8, %53 ], [ %5, %4 ]
  %60 = phi ptr [ %55, %53 ], [ %6, %4 ]
  %61 = load ptr, ptr %59, align 8, !tbaa !37
  %62 = icmp eq ptr %61, null
  br i1 %62, label %129, label %63

63:                                               ; preds = %58
  %64 = load i32, ptr %60, align 4, !tbaa !139
  %65 = getelementptr inbounds %struct.TextLine, ptr %61, i64 0, i32 4
  %66 = load i32, ptr %65, align 8, !tbaa !63
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load ptr, ptr %61, align 8, !tbaa !134
  %70 = icmp eq ptr %69, null
  br i1 %70, label %121, label %71

71:                                               ; preds = %68
  tail call void @txt_move_down(ptr noundef %0, i8 noundef zeroext %1)
  br label %119

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !57
  %75 = and i32 %74, 1024
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %111, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.TextLine, ptr %61, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !39
  %80 = sext i32 %64 to i64
  %81 = getelementptr inbounds i8, ptr %79, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !34
  %83 = icmp eq i8 %82, 32
  br i1 %83, label %84, label %111

84:                                               ; preds = %77
  %85 = icmp sgt i32 %64, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %84
  %87 = zext nneg i32 %64 to i64
  br label %91

88:                                               ; preds = %91
  %89 = add nuw nsw i64 %92, 1
  %90 = icmp eq i64 %89, %87
  br i1 %90, label %96, label %91, !llvm.loop !154

91:                                               ; preds = %86, %88
  %92 = phi i64 [ 0, %86 ], [ %89, %88 ]
  %93 = getelementptr inbounds i8, ptr %79, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !34
  %95 = icmp eq i8 %94, 32
  br i1 %95, label %88, label %111

96:                                               ; preds = %88, %84
  %97 = srem i32 %64, 4
  %98 = sext i32 %64 to i64
  br label %99

99:                                               ; preds = %99, %96
  %100 = phi i64 [ %102, %99 ], [ %98, %96 ]
  %101 = phi i32 [ %108, %99 ], [ %97, %96 ]
  %102 = add nsw i64 %100, 1
  %103 = getelementptr inbounds i8, ptr %79, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !34
  %105 = icmp eq i8 %104, 32
  %106 = icmp slt i32 %101, 3
  %107 = select i1 %105, i1 %106, i1 false
  %108 = add nsw i32 %101, 1
  br i1 %107, label %99, label %109, !llvm.loop !155

109:                                              ; preds = %99
  %110 = trunc i64 %102 to i32
  br label %119

111:                                              ; preds = %91, %72, %77
  %112 = getelementptr inbounds %struct.TextLine, ptr %61, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !39
  %114 = sext i32 %64 to i64
  %115 = getelementptr inbounds i8, ptr %113, i64 %114
  %116 = tail call i32 @BLI_str_utf8_size(ptr noundef %115) #24
  %117 = load i32, ptr %60, align 4, !tbaa !139
  %118 = add nsw i32 %117, %116
  br label %119

119:                                              ; preds = %71, %111, %109
  %120 = phi i32 [ %110, %109 ], [ %118, %111 ], [ 0, %71 ]
  store i32 %120, ptr %60, align 4, !tbaa !139
  br label %121

121:                                              ; preds = %119, %68
  br i1 %3, label %122, label %129

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %124 = load ptr, ptr %123, align 8, !tbaa !65
  %125 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %124, ptr %125, align 8, !tbaa !67
  %126 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %127 = load i32, ptr %126, align 8, !tbaa !66
  %128 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %127, ptr %128, align 4, !tbaa !68
  br label %129

129:                                              ; preds = %121, %122, %58
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @txt_jump_left(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  br label %55

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = icmp eq ptr %12, null
  %14 = icmp eq ptr %10, null
  %15 = or i1 %14, %13
  %16 = icmp eq ptr %10, %12
  %17 = or i1 %16, %15
  br i1 %17, label %38, label %20

18:                                               ; preds = %23
  %19 = or i1 %14, %16
  br i1 %19, label %38, label %26

20:                                               ; preds = %8, %23
  %21 = phi ptr [ %24, %23 ], [ %10, %8 ]
  %22 = icmp eq ptr %21, %12
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !134
  %25 = icmp eq ptr %24, null
  br i1 %25, label %18, label %20, !llvm.loop !135

26:                                               ; preds = %18, %26
  %27 = phi ptr [ %31, %26 ], [ %10, %18 ]
  %28 = phi i32 [ %29, %26 ], [ 0, %18 ]
  %29 = add nsw i32 %28, -1
  %30 = getelementptr inbounds %struct.TextLine, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !136
  %32 = icmp eq ptr %31, null
  %33 = icmp eq ptr %31, %12
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %26, !llvm.loop !137

35:                                               ; preds = %26
  %36 = icmp sgt i32 %28, 0
  %37 = select i1 %32, i1 true, i1 %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %20, %35, %18, %8
  br i1 %16, label %39, label %50

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !66
  %42 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %43 = load i32, ptr %42, align 4, !tbaa !68
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39, %35
  store ptr %12, ptr %9, align 8, !tbaa !65
  store ptr %10, ptr %11, align 8, !tbaa !67
  %46 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !66
  %48 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %49 = load i32, ptr %48, align 4, !tbaa !68
  store i32 %49, ptr %46, align 8, !tbaa !66
  store i32 %47, ptr %48, align 4, !tbaa !68
  br label %50

50:                                               ; preds = %38, %39, %45
  %51 = load ptr, ptr %9, align 8, !tbaa !65
  store ptr %51, ptr %11, align 8, !tbaa !67
  %52 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !66
  %54 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %53, ptr %54, align 4, !tbaa !68
  br label %55

55:                                               ; preds = %50, %5
  %56 = phi ptr [ %9, %50 ], [ %6, %5 ]
  %57 = phi ptr [ %52, %50 ], [ %7, %5 ]
  %58 = load ptr, ptr %56, align 8, !tbaa !37
  %59 = icmp eq ptr %58, null
  br i1 %59, label %73, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.TextLine, ptr %58, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !39
  %63 = getelementptr inbounds %struct.TextLine, ptr %58, i64 0, i32 4
  %64 = load i32, ptr %63, align 8, !tbaa !63
  %65 = sext i32 %64 to i64
  tail call void @BLI_str_cursor_step_utf8(ptr noundef %62, i64 noundef %65, ptr noundef nonnull %57, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %2) #24
  br i1 %4, label %66, label %73

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !65
  %69 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %68, ptr %69, align 8, !tbaa !67
  %70 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !66
  %72 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %71, ptr %72, align 4, !tbaa !68
  br label %73

73:                                               ; preds = %60, %66, %55
  ret void
}

declare void @BLI_str_cursor_step_utf8(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @txt_jump_right(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  br label %59

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = icmp eq ptr %12, null
  %14 = icmp eq ptr %10, null
  %15 = or i1 %14, %13
  %16 = icmp eq ptr %10, %12
  %17 = or i1 %16, %15
  br i1 %17, label %39, label %20

18:                                               ; preds = %24
  %19 = or i1 %14, %16
  br i1 %19, label %39, label %28

20:                                               ; preds = %8, %24
  %21 = phi ptr [ %26, %24 ], [ %10, %8 ]
  %22 = phi i32 [ %25, %24 ], [ 0, %8 ]
  %23 = icmp eq ptr %21, %12
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  %25 = add nuw nsw i32 %22, 1
  %26 = load ptr, ptr %21, align 8, !tbaa !134
  %27 = icmp eq ptr %26, null
  br i1 %27, label %18, label %20, !llvm.loop !135

28:                                               ; preds = %18, %28
  %29 = phi ptr [ %33, %28 ], [ %10, %18 ]
  %30 = phi i32 [ %31, %28 ], [ 0, %18 ]
  %31 = add nsw i32 %30, -1
  %32 = getelementptr inbounds %struct.TextLine, ptr %29, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !136
  %34 = icmp eq ptr %33, null
  %35 = icmp eq ptr %33, %12
  %36 = or i1 %34, %35
  br i1 %36, label %37, label %28, !llvm.loop !137

37:                                               ; preds = %28
  %38 = select i1 %34, i32 0, i32 %31
  br label %39

39:                                               ; preds = %20, %37, %18, %8
  %40 = phi i32 [ 0, %8 ], [ 0, %18 ], [ %38, %37 ], [ %22, %20 ]
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  br i1 %16, label %43, label %54

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !66
  %46 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %47 = load i32, ptr %46, align 4, !tbaa !68
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43, %39
  store ptr %12, ptr %9, align 8, !tbaa !65
  store ptr %10, ptr %11, align 8, !tbaa !67
  %50 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !66
  %52 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %53 = load i32, ptr %52, align 4, !tbaa !68
  store i32 %53, ptr %50, align 8, !tbaa !66
  store i32 %51, ptr %52, align 4, !tbaa !68
  br label %54

54:                                               ; preds = %42, %43, %49
  %55 = load ptr, ptr %9, align 8, !tbaa !65
  store ptr %55, ptr %11, align 8, !tbaa !67
  %56 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !66
  %58 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %57, ptr %58, align 4, !tbaa !68
  br label %59

59:                                               ; preds = %54, %5
  %60 = phi ptr [ %9, %54 ], [ %6, %5 ]
  %61 = phi ptr [ %56, %54 ], [ %7, %5 ]
  %62 = load ptr, ptr %60, align 8, !tbaa !37
  %63 = icmp eq ptr %62, null
  br i1 %63, label %77, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.TextLine, ptr %62, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !39
  %67 = getelementptr inbounds %struct.TextLine, ptr %62, i64 0, i32 4
  %68 = load i32, ptr %67, align 8, !tbaa !63
  %69 = sext i32 %68 to i64
  tail call void @BLI_str_cursor_step_utf8(ptr noundef %66, i64 noundef %69, ptr noundef nonnull %61, i32 noundef 1, i32 noundef 1, i8 noundef zeroext %2) #24
  br i1 %4, label %70, label %77

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !65
  %73 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %72, ptr %73, align 8, !tbaa !67
  %74 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %75 = load i32, ptr %74, align 8, !tbaa !66
  %76 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %75, ptr %76, align 4, !tbaa !68
  br label %77

77:                                               ; preds = %64, %70, %59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @txt_move_bof(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #10 {
  %3 = icmp eq i8 %1, 0
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %6 = select i1 %3, ptr %4, ptr %5
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %12 = select i1 %3, ptr %10, ptr %11
  %13 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  store ptr %14, ptr %6, align 8, !tbaa !37
  store i32 0, ptr %12, align 4, !tbaa !139
  br i1 %3, label %15, label %18

15:                                               ; preds = %9
  %16 = load ptr, ptr %4, align 8, !tbaa !65
  store ptr %16, ptr %5, align 8, !tbaa !67
  %17 = load i32, ptr %10, align 8, !tbaa !66
  store i32 %17, ptr %11, align 4, !tbaa !68
  br label %18

18:                                               ; preds = %9, %15, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @txt_move_toline(ptr nocapture noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #15 {
  %4 = icmp eq i8 %2, 0
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %8 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %9 = select i1 %4, ptr %5, ptr %7
  %10 = select i1 %4, ptr %6, ptr %8
  %11 = load ptr, ptr %9, align 8, !tbaa !37
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  store ptr %15, ptr %9, align 8, !tbaa !37
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13, %22
  %18 = phi ptr [ %20, %22 ], [ %15, %13 ]
  %19 = phi i32 [ %23, %22 ], [ 0, %13 ]
  %20 = load ptr, ptr %18, align 8, !tbaa !134
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  store ptr %20, ptr %9, align 8, !tbaa !37
  %23 = add nuw i32 %19, 1
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %25, label %17, !llvm.loop !156

25:                                               ; preds = %22, %17, %13
  store i32 0, ptr %10, align 4, !tbaa !139
  br i1 %4, label %26, label %29

26:                                               ; preds = %25
  %27 = load ptr, ptr %5, align 8, !tbaa !65
  store ptr %27, ptr %7, align 8, !tbaa !67
  %28 = load i32, ptr %6, align 8, !tbaa !66
  store i32 %28, ptr %8, align 4, !tbaa !68
  br label %29

29:                                               ; preds = %3, %25, %26
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @txt_move_to(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #15 {
  %5 = icmp eq i8 %3, 0
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %9 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %10 = select i1 %5, ptr %6, ptr %8
  %11 = select i1 %5, ptr %7, ptr %9
  %12 = load ptr, ptr %10, align 8, !tbaa !37
  %13 = icmp eq ptr %12, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  store ptr %16, ptr %10, align 8, !tbaa !37
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %10, align 8, !tbaa !37
  br label %20

20:                                               ; preds = %18, %25
  %21 = phi ptr [ %19, %18 ], [ %23, %25 ]
  %22 = phi i32 [ 0, %18 ], [ %26, %25 ]
  %23 = load ptr, ptr %21, align 8, !tbaa !134
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  store ptr %23, ptr %10, align 8, !tbaa !37
  %26 = add nuw i32 %22, 1
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %28, label %20, !llvm.loop !156

28:                                               ; preds = %25, %20, %14
  %29 = load ptr, ptr %10, align 8, !tbaa !37
  %30 = getelementptr inbounds %struct.TextLine, ptr %29, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !63
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 %2)
  store i32 %32, ptr %11, align 4, !tbaa !139
  br i1 %5, label %33, label %36

33:                                               ; preds = %28
  %34 = load ptr, ptr %6, align 8, !tbaa !65
  store ptr %34, ptr %8, align 8, !tbaa !67
  %35 = load i32, ptr %7, align 8, !tbaa !66
  store i32 %35, ptr %9, align 4, !tbaa !68
  br label %36

36:                                               ; preds = %28, %33, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @txt_order_cursors(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %83, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = icmp eq ptr %8, null
  br i1 %9, label %83, label %10

10:                                               ; preds = %6
  %11 = icmp eq i8 %1, 0
  %12 = icmp eq ptr %4, %8
  br i1 %11, label %13, label %46

13:                                               ; preds = %10
  br i1 %12, label %35, label %16

14:                                               ; preds = %19
  %15 = icmp eq ptr %4, %8
  br i1 %15, label %34, label %22

16:                                               ; preds = %13, %19
  %17 = phi ptr [ %20, %19 ], [ %4, %13 ]
  %18 = icmp eq ptr %17, %8
  br i1 %18, label %34, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 8, !tbaa !134
  %21 = icmp eq ptr %20, null
  br i1 %21, label %14, label %16, !llvm.loop !135

22:                                               ; preds = %14, %22
  %23 = phi ptr [ %27, %22 ], [ %4, %14 ]
  %24 = phi i32 [ %25, %22 ], [ 0, %14 ]
  %25 = add nsw i32 %24, -1
  %26 = getelementptr inbounds %struct.TextLine, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !136
  %28 = icmp eq ptr %27, null
  %29 = icmp eq ptr %27, %8
  %30 = or i1 %28, %29
  br i1 %30, label %31, label %22, !llvm.loop !137

31:                                               ; preds = %22
  %32 = icmp sgt i32 %24, 0
  %33 = select i1 %28, i1 true, i1 %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %16, %14, %31
  br i1 %12, label %35, label %83

35:                                               ; preds = %13, %34
  %36 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !66
  %38 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %39 = load i32, ptr %38, align 4, !tbaa !68
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %41, label %83

41:                                               ; preds = %35, %31
  store ptr %8, ptr %3, align 8, !tbaa !65
  store ptr %4, ptr %7, align 8, !tbaa !67
  %42 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !66
  %44 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %45 = load i32, ptr %44, align 4, !tbaa !68
  store i32 %45, ptr %42, align 8, !tbaa !66
  store i32 %43, ptr %44, align 4, !tbaa !68
  br label %83

46:                                               ; preds = %10
  br i1 %12, label %68, label %49

47:                                               ; preds = %53
  %48 = icmp eq ptr %4, %8
  br i1 %48, label %68, label %57

49:                                               ; preds = %46, %53
  %50 = phi ptr [ %55, %53 ], [ %4, %46 ]
  %51 = phi i32 [ %54, %53 ], [ 0, %46 ]
  %52 = icmp eq ptr %50, %8
  br i1 %52, label %68, label %53

53:                                               ; preds = %49
  %54 = add nuw nsw i32 %51, 1
  %55 = load ptr, ptr %50, align 8, !tbaa !134
  %56 = icmp eq ptr %55, null
  br i1 %56, label %47, label %49, !llvm.loop !135

57:                                               ; preds = %47, %57
  %58 = phi ptr [ %62, %57 ], [ %4, %47 ]
  %59 = phi i32 [ %60, %57 ], [ 0, %47 ]
  %60 = add nsw i32 %59, -1
  %61 = getelementptr inbounds %struct.TextLine, ptr %58, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !136
  %63 = icmp eq ptr %62, null
  %64 = icmp eq ptr %62, %8
  %65 = or i1 %63, %64
  br i1 %65, label %66, label %57, !llvm.loop !137

66:                                               ; preds = %57
  %67 = select i1 %63, i32 0, i32 %60
  br label %68

68:                                               ; preds = %49, %47, %66, %46
  %69 = phi i32 [ 0, %46 ], [ 0, %47 ], [ %67, %66 ], [ %51, %49 ]
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  br i1 %12, label %72, label %83

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %74 = load i32, ptr %73, align 8, !tbaa !66
  %75 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %76 = load i32, ptr %75, align 4, !tbaa !68
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72, %68
  store ptr %8, ptr %3, align 8, !tbaa !65
  store ptr %4, ptr %7, align 8, !tbaa !67
  %79 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %80 = load i32, ptr %79, align 8, !tbaa !66
  %81 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %82 = load i32, ptr %81, align 4, !tbaa !68
  store i32 %82, ptr %79, align 8, !tbaa !66
  store i32 %80, ptr %81, align 4, !tbaa !68
  br label %83

83:                                               ; preds = %71, %72, %78, %34, %35, %41, %6, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @txt_has_sel(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 4, !tbaa !68
  %12 = icmp ne i32 %9, %11
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i8 [ 1, %1 ], [ %13, %7 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @txt_sel_clear(ptr nocapture noundef %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  store ptr %3, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 4, !tbaa !68
  %9 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  store i32 %8, ptr %9, align 8, !tbaa !66
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @txt_sel_line(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  store i32 0, ptr %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %3, ptr %7, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.TextLine, ptr %3, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %9, ptr %10, align 4, !tbaa !68
  br label %11

11:                                               ; preds = %1, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @txt_to_buf(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %105, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %105, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %105, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !133
  %16 = getelementptr inbounds %struct.TextLine, ptr %15, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !63
  %18 = icmp eq ptr %11, %15
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %21 = add nsw i32 %17, 2
  %22 = sext i32 %21 to i64
  %23 = tail call ptr %20(i64 noundef %22, ptr noundef nonnull @.str.6) #24
  %24 = getelementptr inbounds %struct.TextLine, ptr %11, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !39
  %26 = add nsw i32 %17, 1
  %27 = sext i32 %26 to i64
  %28 = tail call ptr @BLI_strncpy(ptr noundef %23, ptr noundef %25, i64 noundef %27) #24
  %29 = sext i32 %17 to i64
  %30 = getelementptr inbounds i8, ptr %23, i64 %29
  br label %102

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.TextLine, ptr %11, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !63
  %34 = add i32 %17, 2
  %35 = add i32 %34, %33
  %36 = load ptr, ptr %11, align 8, !tbaa !134
  %37 = icmp ne ptr %36, null
  %38 = icmp ne ptr %36, %15
  %39 = and i1 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %31, %40
  %41 = phi ptr [ %47, %40 ], [ %36, %31 ]
  %42 = phi i32 [ %46, %40 ], [ %35, %31 ]
  %43 = getelementptr inbounds %struct.TextLine, ptr %41, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !63
  %45 = add i32 %42, 1
  %46 = add i32 %45, %44
  %47 = load ptr, ptr %41, align 8, !tbaa !134
  %48 = icmp ne ptr %47, null
  %49 = icmp ne ptr %47, %15
  %50 = and i1 %48, %49
  br i1 %50, label %40, label %51, !llvm.loop !157

51:                                               ; preds = %40, %31
  %52 = phi i32 [ %35, %31 ], [ %46, %40 ]
  %53 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %54 = add nsw i32 %52, 1
  %55 = sext i32 %54 to i64
  %56 = tail call ptr %53(i64 noundef %55, ptr noundef nonnull @.str.7) #24
  %57 = getelementptr inbounds %struct.TextLine, ptr %11, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !39
  %59 = load i32, ptr %32, align 8, !tbaa !63
  %60 = sext i32 %59 to i64
  %61 = tail call ptr @strncpy(ptr noundef %56, ptr noundef %58, i64 noundef %60) #24
  %62 = load i32, ptr %32, align 8, !tbaa !63
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %56, i64 %63
  store i8 10, ptr %64, align 1, !tbaa !34
  %65 = add nsw i32 %62, 1
  %66 = load ptr, ptr %11, align 8, !tbaa !134
  %67 = icmp ne ptr %66, null
  %68 = icmp ne ptr %66, %15
  %69 = and i1 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %51, %70
  %71 = phi ptr [ %86, %70 ], [ %66, %51 ]
  %72 = phi i32 [ %85, %70 ], [ %65, %51 ]
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %56, i64 %73
  %75 = getelementptr inbounds %struct.TextLine, ptr %71, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !39
  %77 = getelementptr inbounds %struct.TextLine, ptr %71, i64 0, i32 4
  %78 = load i32, ptr %77, align 8, !tbaa !63
  %79 = sext i32 %78 to i64
  %80 = tail call ptr @strncpy(ptr noundef %74, ptr noundef %76, i64 noundef %79) #24
  %81 = load i32, ptr %77, align 8, !tbaa !63
  %82 = add nsw i32 %81, %72
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %56, i64 %83
  store i8 10, ptr %84, align 1, !tbaa !34
  %85 = add nsw i32 %82, 1
  %86 = load ptr, ptr %71, align 8, !tbaa !134
  %87 = icmp ne ptr %86, null
  %88 = icmp ne ptr %86, %15
  %89 = and i1 %87, %88
  br i1 %89, label %70, label %90, !llvm.loop !158

90:                                               ; preds = %70, %51
  %91 = phi i32 [ %65, %51 ], [ %85, %70 ]
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %56, i64 %92
  %94 = getelementptr inbounds %struct.TextLine, ptr %15, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !39
  %96 = sext i32 %17 to i64
  %97 = tail call ptr @strncpy(ptr noundef %93, ptr noundef %95, i64 noundef %96) #24
  %98 = add nsw i32 %91, %17
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %56, i64 %99
  store i8 10, ptr %100, align 1, !tbaa !34
  %101 = getelementptr i8, ptr %100, i64 1
  br label %102

102:                                              ; preds = %90, %19
  %103 = phi ptr [ %30, %19 ], [ %101, %90 ]
  %104 = phi ptr [ %23, %19 ], [ %56, %90 ]
  store i8 0, ptr %103, align 1, !tbaa !34
  br label %105

105:                                              ; preds = %102, %9, %5, %1
  %106 = phi ptr [ null, %1 ], [ null, %5 ], [ null, %9 ], [ %104, %102 ]
  ret ptr %106
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @txt_find_string(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %171, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = icmp eq ptr %10, null
  br i1 %11, label %171, label %12

12:                                               ; preds = %8
  %13 = icmp eq ptr %6, %10
  br i1 %13, label %34, label %15

14:                                               ; preds = %18
  br i1 %13, label %34, label %21

15:                                               ; preds = %12, %18
  %16 = phi ptr [ %19, %18 ], [ %6, %12 ]
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %33, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 8, !tbaa !134
  %20 = icmp eq ptr %19, null
  br i1 %20, label %14, label %15, !llvm.loop !135

21:                                               ; preds = %14, %21
  %22 = phi ptr [ %26, %21 ], [ %6, %14 ]
  %23 = phi i32 [ %24, %21 ], [ 0, %14 ]
  %24 = add nsw i32 %23, -1
  %25 = getelementptr inbounds %struct.TextLine, ptr %22, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !136
  %27 = icmp eq ptr %26, null
  %28 = icmp eq ptr %26, %10
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %21, !llvm.loop !137

30:                                               ; preds = %21
  %31 = icmp sgt i32 %23, 0
  %32 = select i1 %27, i1 true, i1 %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %15, %30
  br i1 %13, label %34, label %45

34:                                               ; preds = %14, %33, %12
  %35 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !66
  %37 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %38 = load i32, ptr %37, align 4, !tbaa !68
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34, %30
  store ptr %10, ptr %5, align 8, !tbaa !65
  store ptr %6, ptr %9, align 8, !tbaa !67
  %41 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !66
  %43 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %44 = load i32, ptr %43, align 4, !tbaa !68
  store i32 %44, ptr %41, align 8, !tbaa !66
  store i32 %42, ptr %43, align 4, !tbaa !68
  br label %45

45:                                               ; preds = %33, %34, %40
  %46 = load ptr, ptr %9, align 8, !tbaa !67
  %47 = icmp eq i32 %3, 0
  %48 = getelementptr inbounds %struct.TextLine, ptr %46, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !39
  %50 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %51 = load i32, ptr %50, align 4, !tbaa !68
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %49, i64 %52
  br i1 %47, label %56, label %54

54:                                               ; preds = %45
  %55 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull dereferenceable(1) %1) #25
  br label %58

56:                                               ; preds = %45
  %57 = tail call ptr @BLI_strcasestr(ptr noundef %53, ptr noundef %1) #24
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi ptr [ %55, %54 ], [ %57, %56 ]
  %60 = icmp eq i32 %2, 0
  %61 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  br label %62

62:                                               ; preds = %80, %58
  %63 = phi ptr [ %59, %58 ], [ %81, %80 ]
  %64 = phi ptr [ %46, %58 ], [ %73, %80 ]
  %65 = icmp eq ptr %63, null
  br i1 %65, label %66, label %83

66:                                               ; preds = %62
  %67 = load ptr, ptr %64, align 8, !tbaa !134
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  br i1 %60, label %83, label %70

70:                                               ; preds = %69
  %71 = load ptr, ptr %61, align 8, !tbaa !64
  br label %72

72:                                               ; preds = %70, %66
  %73 = phi ptr [ %67, %66 ], [ %71, %70 ]
  %74 = getelementptr inbounds %struct.TextLine, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !39
  br i1 %47, label %78, label %76

76:                                               ; preds = %72
  %77 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(1) %1) #25
  br label %80

78:                                               ; preds = %72
  %79 = tail call ptr @BLI_strcasestr(ptr noundef %75, ptr noundef %1) #24
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi ptr [ %77, %76 ], [ %79, %78 ]
  %82 = icmp eq ptr %73, %46
  br i1 %82, label %83, label %62, !llvm.loop !159

83:                                               ; preds = %80, %69, %62
  %84 = phi ptr [ %81, %80 ], [ %63, %69 ], [ %63, %62 ]
  %85 = phi ptr [ %73, %80 ], [ null, %69 ], [ %64, %62 ]
  %86 = icmp eq ptr %84, null
  br i1 %86, label %171, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !64
  %90 = icmp eq ptr %85, null
  %91 = icmp eq ptr %89, null
  %92 = or i1 %90, %91
  %93 = icmp eq ptr %89, %85
  %94 = or i1 %93, %92
  br i1 %94, label %118, label %99

95:                                               ; preds = %103
  %96 = icmp eq ptr %89, null
  %97 = icmp eq ptr %89, %85
  %98 = or i1 %96, %97
  br i1 %98, label %118, label %107

99:                                               ; preds = %87, %103
  %100 = phi ptr [ %105, %103 ], [ %89, %87 ]
  %101 = phi i32 [ %104, %103 ], [ 0, %87 ]
  %102 = icmp eq ptr %100, %85
  br i1 %102, label %118, label %103

103:                                              ; preds = %99
  %104 = add nuw nsw i32 %101, 1
  %105 = load ptr, ptr %100, align 8, !tbaa !134
  %106 = icmp eq ptr %105, null
  br i1 %106, label %95, label %99, !llvm.loop !135

107:                                              ; preds = %95, %107
  %108 = phi ptr [ %112, %107 ], [ %89, %95 ]
  %109 = phi i32 [ %110, %107 ], [ 0, %95 ]
  %110 = add nsw i32 %109, -1
  %111 = getelementptr inbounds %struct.TextLine, ptr %108, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !136
  %113 = icmp eq ptr %112, null
  %114 = icmp eq ptr %112, %85
  %115 = or i1 %113, %114
  br i1 %115, label %116, label %107, !llvm.loop !137

116:                                              ; preds = %107
  %117 = select i1 %113, i32 0, i32 %110
  br label %118

118:                                              ; preds = %99, %95, %116, %87
  %119 = phi i32 [ 0, %87 ], [ 0, %95 ], [ %117, %116 ], [ %101, %99 ]
  %120 = getelementptr inbounds %struct.TextLine, ptr %85, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !39
  %122 = ptrtoint ptr %84 to i64
  %123 = ptrtoint ptr %121 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  %126 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %127 = load ptr, ptr %5, align 8, !tbaa !37
  %128 = icmp eq ptr %127, null
  br i1 %128, label %147, label %129

129:                                              ; preds = %118
  store ptr %89, ptr %5, align 8, !tbaa !37
  %130 = icmp eq i32 %119, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %129
  %132 = load ptr, ptr %5, align 8, !tbaa !37
  br label %133

133:                                              ; preds = %131, %138
  %134 = phi ptr [ %132, %131 ], [ %136, %138 ]
  %135 = phi i32 [ 0, %131 ], [ %139, %138 ]
  %136 = load ptr, ptr %134, align 8, !tbaa !134
  %137 = icmp eq ptr %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  store ptr %136, ptr %5, align 8, !tbaa !37
  %139 = add nuw i32 %135, 1
  %140 = icmp eq i32 %139, %119
  br i1 %140, label %141, label %133, !llvm.loop !156

141:                                              ; preds = %138, %133, %129
  %142 = load ptr, ptr %5, align 8, !tbaa !37
  %143 = getelementptr inbounds %struct.TextLine, ptr %142, i64 0, i32 4
  %144 = load i32, ptr %143, align 8, !tbaa !63
  %145 = tail call i32 @llvm.umin.i32(i32 %144, i32 %125)
  store i32 %145, ptr %126, align 4, !tbaa !139
  store ptr %142, ptr %9, align 8, !tbaa !67
  %146 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %145, ptr %146, align 4, !tbaa !68
  br label %147

147:                                              ; preds = %118, %141
  %148 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %149 = add i64 %148, %124
  %150 = trunc i64 %149 to i32
  %151 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %152 = load ptr, ptr %9, align 8, !tbaa !37
  %153 = icmp eq ptr %152, null
  br i1 %153, label %171, label %154

154:                                              ; preds = %147
  store ptr %89, ptr %9, align 8, !tbaa !37
  %155 = icmp eq i32 %119, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %154
  %157 = load ptr, ptr %9, align 8, !tbaa !37
  br label %158

158:                                              ; preds = %156, %163
  %159 = phi ptr [ %157, %156 ], [ %161, %163 ]
  %160 = phi i32 [ 0, %156 ], [ %164, %163 ]
  %161 = load ptr, ptr %159, align 8, !tbaa !134
  %162 = icmp eq ptr %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %158
  store ptr %161, ptr %9, align 8, !tbaa !37
  %164 = add nuw i32 %160, 1
  %165 = icmp eq i32 %164, %119
  br i1 %165, label %166, label %158, !llvm.loop !156

166:                                              ; preds = %163, %158, %154
  %167 = load ptr, ptr %9, align 8, !tbaa !37
  %168 = getelementptr inbounds %struct.TextLine, ptr %167, i64 0, i32 4
  %169 = load i32, ptr %168, align 8, !tbaa !63
  %170 = tail call i32 @llvm.umin.i32(i32 %169, i32 %150)
  store i32 %170, ptr %151, align 4, !tbaa !139
  br label %171

171:                                              ; preds = %166, %147, %83, %4, %8
  %172 = phi i32 [ 0, %8 ], [ 0, %4 ], [ 0, %83 ], [ 1, %147 ], [ 1, %166 ]
  ret i32 %172
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

declare ptr @BLI_strcasestr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @txt_sel_to_buf(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %140, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %140, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %3, %7
  br i1 %10, label %11, label %20

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %15 = load i32, ptr %14, align 4, !tbaa !68
  %16 = tail call i32 @llvm.smin.i32(i32 %13, i32 %15)
  %17 = tail call i32 @llvm.smax.i32(i32 %13, i32 %15)
  br label %48

18:                                               ; preds = %23
  %19 = icmp eq ptr %3, %7
  br i1 %19, label %43, label %26

20:                                               ; preds = %9, %23
  %21 = phi ptr [ %24, %23 ], [ %3, %9 ]
  %22 = icmp eq ptr %21, %7
  br i1 %22, label %43, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !134
  %25 = icmp eq ptr %24, null
  br i1 %25, label %18, label %20, !llvm.loop !135

26:                                               ; preds = %18, %26
  %27 = phi ptr [ %31, %26 ], [ %3, %18 ]
  %28 = phi i32 [ %29, %26 ], [ 0, %18 ]
  %29 = add nsw i32 %28, -1
  %30 = getelementptr inbounds %struct.TextLine, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !136
  %32 = icmp eq ptr %31, null
  %33 = icmp eq ptr %31, %7
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %26, !llvm.loop !137

35:                                               ; preds = %26
  %36 = icmp sgt i32 %28, 0
  %37 = select i1 %32, i1 true, i1 %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %40 = load i32, ptr %39, align 4, !tbaa !68
  %41 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !66
  br label %48

43:                                               ; preds = %20, %18, %35
  %44 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !66
  %46 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %47 = load i32, ptr %46, align 4, !tbaa !68
  br label %48

48:                                               ; preds = %11, %38, %43
  %49 = phi ptr [ %7, %38 ], [ %3, %43 ], [ %3, %11 ]
  %50 = phi ptr [ %3, %38 ], [ %7, %43 ], [ %3, %11 ]
  %51 = phi i32 [ %40, %38 ], [ %45, %43 ], [ %16, %11 ]
  %52 = phi i32 [ %42, %38 ], [ %47, %43 ], [ %17, %11 ]
  %53 = icmp eq ptr %49, %50
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %56 = sub i32 %52, %51
  %57 = add i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = tail call ptr %55(i64 noundef %58, ptr noundef nonnull @.str.8) #24
  %60 = getelementptr inbounds %struct.TextLine, ptr %49, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !39
  %62 = sext i32 %51 to i64
  %63 = getelementptr inbounds i8, ptr %61, i64 %62
  %64 = tail call ptr @BLI_strncpy(ptr noundef %59, ptr noundef %63, i64 noundef %58) #24
  br label %140

65:                                               ; preds = %48
  %66 = getelementptr inbounds %struct.TextLine, ptr %49, i64 0, i32 4
  %67 = load i32, ptr %66, align 8, !tbaa !63
  %68 = sub i32 %52, %51
  %69 = add i32 %68, 1
  %70 = add i32 %69, %67
  %71 = load ptr, ptr %49, align 8, !tbaa !134
  %72 = icmp ne ptr %71, null
  %73 = icmp ne ptr %71, %50
  %74 = and i1 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %65, %75
  %76 = phi ptr [ %82, %75 ], [ %71, %65 ]
  %77 = phi i32 [ %81, %75 ], [ %70, %65 ]
  %78 = getelementptr inbounds %struct.TextLine, ptr %76, i64 0, i32 4
  %79 = load i32, ptr %78, align 8, !tbaa !63
  %80 = add i32 %77, 1
  %81 = add i32 %80, %79
  %82 = load ptr, ptr %76, align 8, !tbaa !134
  %83 = icmp ne ptr %82, null
  %84 = icmp ne ptr %82, %50
  %85 = and i1 %83, %84
  br i1 %85, label %75, label %86, !llvm.loop !160

86:                                               ; preds = %75, %65
  %87 = phi i32 [ %70, %65 ], [ %81, %75 ]
  %88 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %89 = add nsw i32 %87, 1
  %90 = sext i32 %89 to i64
  %91 = tail call ptr %88(i64 noundef %90, ptr noundef nonnull @.str.8) #24
  %92 = getelementptr inbounds %struct.TextLine, ptr %49, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !39
  %94 = sext i32 %51 to i64
  %95 = getelementptr inbounds i8, ptr %93, i64 %94
  %96 = load i32, ptr %66, align 8, !tbaa !63
  %97 = sub nsw i32 %96, %51
  %98 = sext i32 %97 to i64
  %99 = tail call ptr @strncpy(ptr noundef %91, ptr noundef %95, i64 noundef %98) #24
  %100 = load i32, ptr %66, align 8, !tbaa !63
  %101 = sub nsw i32 %100, %51
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, ptr %91, i64 %102
  store i8 10, ptr %103, align 1, !tbaa !34
  %104 = load ptr, ptr %49, align 8, !tbaa !134
  %105 = add nsw i32 %101, 1
  %106 = icmp ne ptr %104, null
  %107 = icmp ne ptr %104, %50
  %108 = and i1 %106, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %86, %109
  %110 = phi i32 [ %125, %109 ], [ %105, %86 ]
  %111 = phi ptr [ %124, %109 ], [ %104, %86 ]
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, ptr %91, i64 %112
  %114 = getelementptr inbounds %struct.TextLine, ptr %111, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !39
  %116 = getelementptr inbounds %struct.TextLine, ptr %111, i64 0, i32 4
  %117 = load i32, ptr %116, align 8, !tbaa !63
  %118 = sext i32 %117 to i64
  %119 = tail call ptr @strncpy(ptr noundef %113, ptr noundef %115, i64 noundef %118) #24
  %120 = load i32, ptr %116, align 8, !tbaa !63
  %121 = add nsw i32 %120, %110
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %91, i64 %122
  store i8 10, ptr %123, align 1, !tbaa !34
  %124 = load ptr, ptr %111, align 8, !tbaa !134
  %125 = add nsw i32 %121, 1
  %126 = icmp ne ptr %124, null
  %127 = icmp ne ptr %124, %50
  %128 = and i1 %126, %127
  br i1 %128, label %109, label %129, !llvm.loop !161

129:                                              ; preds = %109, %86
  %130 = phi i32 [ %105, %86 ], [ %125, %109 ]
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, ptr %91, i64 %131
  %133 = getelementptr inbounds %struct.TextLine, ptr %50, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !39
  %135 = sext i32 %52 to i64
  %136 = tail call ptr @strncpy(ptr noundef %132, ptr noundef %134, i64 noundef %135) #24
  %137 = add nsw i32 %130, %52
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, ptr %91, i64 %138
  store i8 0, ptr %139, align 1, !tbaa !34
  br label %140

140:                                              ; preds = %54, %129, %5, %1
  %141 = phi ptr [ null, %1 ], [ null, %5 ], [ %59, %54 ], [ %91, %129 ]
  ret ptr %141
}

declare ptr @BLI_strdupn(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @txt_undo_add_blockop(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %5 = trunc i64 %4 to i32
  %6 = add i32 %5, 23
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 11
  %9 = load i32, ptr %7, align 8, !tbaa !54
  %10 = add nsw i32 %6, %9
  %11 = load i32, ptr %8, align 4, !tbaa !55
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %37, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  br label %15

15:                                               ; preds = %23, %13
  %16 = phi i32 [ %11, %13 ], [ %35, %23 ]
  %17 = icmp sgt i32 %16, 524288
  %18 = load ptr, ptr %14, align 8, !tbaa !52
  br i1 %17, label %19, label %23

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %20(ptr noundef %18) #24
  store i32 -1, ptr %7, align 8, !tbaa !54
  store i32 1024, ptr %8, align 4, !tbaa !55
  %21 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %22 = tail call ptr %21(i64 noundef 1024, ptr noundef nonnull @.str.19) #24
  store ptr %22, ptr %14, align 8, !tbaa !52
  br label %104

23:                                               ; preds = %15
  %24 = shl nsw i32 %16, 1
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %26 = sext i32 %24 to i64
  %27 = tail call ptr %25(i64 noundef %26, ptr noundef nonnull @.str.19) #24
  store ptr %27, ptr %14, align 8, !tbaa !52
  %28 = load i32, ptr %8, align 4, !tbaa !55
  %29 = sext i32 %28 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %27, ptr align 1 %18, i64 %29, i1 false)
  %30 = load i32, ptr %8, align 4, !tbaa !55
  %31 = shl nsw i32 %30, 1
  store i32 %31, ptr %8, align 4, !tbaa !55
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %32(ptr noundef %18) #24
  %33 = load i32, ptr %7, align 8, !tbaa !54
  %34 = add nsw i32 %33, %6
  %35 = load i32, ptr %8, align 4, !tbaa !55
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %15, !llvm.loop !162

37:                                               ; preds = %23, %3
  %38 = load i32, ptr %7, align 8, !tbaa !54
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %7, align 8, !tbaa !54
  %40 = trunc i32 %1 to i8
  %41 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !52
  %43 = sext i32 %39 to i64
  %44 = getelementptr inbounds i8, ptr %42, i64 %43
  store i8 %40, ptr %44, align 1, !tbaa !34
  %45 = load i32, ptr %7, align 8, !tbaa !54
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %7, align 8, !tbaa !54
  tail call fastcc void @txt_undo_store_cursors(ptr noundef %0)
  %47 = load ptr, ptr %41, align 8, !tbaa !52
  %48 = trunc i64 %4 to i8
  %49 = load i32, ptr %7, align 4, !tbaa !139
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %47, i64 %50
  store i8 %48, ptr %51, align 1, !tbaa !34
  %52 = load i32, ptr %7, align 4, !tbaa !139
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %7, align 4, !tbaa !139
  %54 = lshr i64 %4, 8
  %55 = trunc i64 %54 to i8
  %56 = sext i32 %53 to i64
  %57 = getelementptr inbounds i8, ptr %47, i64 %56
  store i8 %55, ptr %57, align 1, !tbaa !34
  %58 = load i32, ptr %7, align 4, !tbaa !139
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %7, align 4, !tbaa !139
  %60 = lshr i64 %4, 16
  %61 = trunc i64 %60 to i8
  %62 = sext i32 %59 to i64
  %63 = getelementptr inbounds i8, ptr %47, i64 %62
  store i8 %61, ptr %63, align 1, !tbaa !34
  %64 = load i32, ptr %7, align 4, !tbaa !139
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %7, align 4, !tbaa !139
  %66 = lshr i64 %4, 24
  %67 = trunc i64 %66 to i8
  %68 = sext i32 %65 to i64
  %69 = getelementptr inbounds i8, ptr %47, i64 %68
  store i8 %67, ptr %69, align 1, !tbaa !34
  %70 = load i32, ptr %7, align 4, !tbaa !139
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %7, align 4, !tbaa !139
  %72 = load ptr, ptr %41, align 8, !tbaa !52
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, ptr %72, i64 %73
  %75 = and i64 %4, 4294967295
  %76 = tail call ptr @strncpy(ptr noundef %74, ptr noundef %2, i64 noundef %75) #24
  %77 = load i32, ptr %7, align 8, !tbaa !54
  %78 = add i32 %77, %5
  store i32 %78, ptr %7, align 8, !tbaa !54
  %79 = load ptr, ptr %41, align 8, !tbaa !52
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, ptr %79, i64 %80
  store i8 %48, ptr %81, align 1, !tbaa !34
  %82 = load i32, ptr %7, align 4, !tbaa !139
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %7, align 4, !tbaa !139
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %79, i64 %84
  store i8 %55, ptr %85, align 1, !tbaa !34
  %86 = load i32, ptr %7, align 4, !tbaa !139
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %7, align 4, !tbaa !139
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, ptr %79, i64 %88
  store i8 %61, ptr %89, align 1, !tbaa !34
  %90 = load i32, ptr %7, align 4, !tbaa !139
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %7, align 4, !tbaa !139
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %79, i64 %92
  store i8 %67, ptr %93, align 1, !tbaa !34
  %94 = load i32, ptr %7, align 4, !tbaa !139
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %7, align 4, !tbaa !139
  %96 = load ptr, ptr %41, align 8, !tbaa !52
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, ptr %96, i64 %97
  store i8 %40, ptr %98, align 1, !tbaa !34
  %99 = load ptr, ptr %41, align 8, !tbaa !52
  %100 = load i32, ptr %7, align 8, !tbaa !54
  %101 = sext i32 %100 to i64
  %102 = getelementptr i8, ptr %99, i64 %101
  %103 = getelementptr i8, ptr %102, i64 1
  store i8 0, ptr %103, align 1, !tbaa !34
  br label %104

104:                                              ; preds = %19, %37
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @txt_add_raw_char(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc zeroext i8 @txt_add_char_intern(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0), !range !141
  ret i8 %3
}

declare i32 @BLI_str_utf8_as_unicode_step(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @txt_split_curline(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %78, label %5

5:                                                ; preds = %1
  tail call fastcc void @txt_delete_sel(ptr noundef %0)
  %6 = load i8, ptr @undoing, align 1, !tbaa !34
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call fastcc void @txt_undo_add_charop(ptr noundef %0, i32 noundef 11, i32 noundef 10)
  br label %9

9:                                                ; preds = %8, %5
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !66
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = tail call ptr %10(i64 noundef %14, ptr noundef nonnull @.str.1) #24
  %16 = load i32, ptr %11, align 8, !tbaa !66
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %9
  %19 = load ptr, ptr %2, align 8, !tbaa !65
  %20 = getelementptr inbounds %struct.TextLine, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  %22 = sext i32 %16 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %21, i64 %22, i1 false)
  br label %23

23:                                               ; preds = %18, %9
  %24 = load i32, ptr %11, align 8, !tbaa !66
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %15, i64 %25
  store i8 0, ptr %26, align 1, !tbaa !34
  %27 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %28 = load ptr, ptr %2, align 8, !tbaa !65
  %29 = getelementptr inbounds %struct.TextLine, ptr %28, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !63
  %31 = load i32, ptr %11, align 8, !tbaa !66
  %32 = add i32 %30, 1
  %33 = sub i32 %32, %31
  %34 = sext i32 %33 to i64
  %35 = tail call ptr %27(i64 noundef %34, ptr noundef nonnull @.str.1) #24
  %36 = load ptr, ptr %2, align 8, !tbaa !65
  %37 = getelementptr inbounds %struct.TextLine, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !39
  %39 = load i32, ptr %11, align 8, !tbaa !66
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %38, i64 %40
  %42 = getelementptr inbounds %struct.TextLine, ptr %36, i64 0, i32 4
  %43 = load i32, ptr %42, align 8, !tbaa !63
  %44 = sub i32 %43, %39
  %45 = add i32 %44, 1
  %46 = sext i32 %45 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %35, ptr align 1 %41, i64 %46, i1 false)
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %48 = load ptr, ptr %2, align 8, !tbaa !65
  %49 = getelementptr inbounds %struct.TextLine, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !39
  tail call void %47(ptr noundef %50) #24
  %51 = load ptr, ptr %2, align 8, !tbaa !65
  %52 = getelementptr inbounds %struct.TextLine, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !42
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %23
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %56(ptr noundef nonnull %53) #24
  br label %57

57:                                               ; preds = %55, %23
  %58 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %59 = tail call ptr %58(i64 noundef 40, ptr noundef nonnull @.str) #24
  %60 = getelementptr inbounds %struct.TextLine, ptr %59, i64 0, i32 2
  store ptr %15, ptr %60, align 8, !tbaa !39
  %61 = getelementptr inbounds %struct.TextLine, ptr %59, i64 0, i32 3
  store ptr null, ptr %61, align 8, !tbaa !42
  %62 = load i32, ptr %11, align 8, !tbaa !66
  %63 = getelementptr inbounds %struct.TextLine, ptr %59, i64 0, i32 4
  store i32 %62, ptr %63, align 8, !tbaa !63
  %64 = load ptr, ptr %2, align 8, !tbaa !65
  %65 = getelementptr inbounds %struct.TextLine, ptr %64, i64 0, i32 2
  store ptr %35, ptr %65, align 8, !tbaa !39
  %66 = getelementptr inbounds %struct.TextLine, ptr %64, i64 0, i32 3
  store ptr null, ptr %66, align 8, !tbaa !42
  %67 = getelementptr inbounds %struct.TextLine, ptr %64, i64 0, i32 4
  %68 = load i32, ptr %67, align 8, !tbaa !63
  %69 = sub nsw i32 %68, %62
  store i32 %69, ptr %67, align 8, !tbaa !63
  %70 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %70, ptr noundef %64, ptr noundef %59) #24
  store i32 0, ptr %11, align 8, !tbaa !66
  %71 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !57
  %73 = or i32 %72, 1
  store i32 %73, ptr %71, align 8, !tbaa !57
  tail call void @txt_clean_text(ptr noundef %0)
  %74 = load ptr, ptr %2, align 8, !tbaa !65
  %75 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %74, ptr %75, align 8, !tbaa !67
  %76 = load i32, ptr %11, align 8, !tbaa !66
  %77 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %76, ptr %77, align 4, !tbaa !68
  br label %78

78:                                               ; preds = %1, %57
  ret void
}

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @txt_undo_add_op(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 10
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 11
  %5 = load i32, ptr %3, align 8, !tbaa !54
  %6 = add nsw i32 %5, 15
  %7 = load i32, ptr %4, align 4, !tbaa !55
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  br label %11

11:                                               ; preds = %19, %9
  %12 = phi i32 [ %7, %9 ], [ %31, %19 ]
  %13 = icmp sgt i32 %12, 524288
  %14 = load ptr, ptr %10, align 8, !tbaa !52
  br i1 %13, label %15, label %19

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %16(ptr noundef %14) #24
  store i32 -1, ptr %3, align 8, !tbaa !54
  store i32 1024, ptr %4, align 4, !tbaa !55
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %18 = tail call ptr %17(i64 noundef 1024, ptr noundef nonnull @.str.19) #24
  store ptr %18, ptr %10, align 8, !tbaa !52
  br label %52

19:                                               ; preds = %11
  %20 = shl nsw i32 %12, 1
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %22 = sext i32 %20 to i64
  %23 = tail call ptr %21(i64 noundef %22, ptr noundef nonnull @.str.19) #24
  store ptr %23, ptr %10, align 8, !tbaa !52
  %24 = load i32, ptr %4, align 4, !tbaa !55
  %25 = sext i32 %24 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %14, i64 %25, i1 false)
  %26 = load i32, ptr %4, align 4, !tbaa !55
  %27 = shl nsw i32 %26, 1
  store i32 %27, ptr %4, align 4, !tbaa !55
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %28(ptr noundef %14) #24
  %29 = load i32, ptr %3, align 8, !tbaa !54
  %30 = add nsw i32 %29, 15
  %31 = load i32, ptr %4, align 4, !tbaa !55
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %11, !llvm.loop !162

33:                                               ; preds = %19, %2
  %34 = load i32, ptr %3, align 8, !tbaa !54
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %3, align 8, !tbaa !54
  %36 = trunc i32 %1 to i8
  %37 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !52
  %39 = sext i32 %35 to i64
  %40 = getelementptr inbounds i8, ptr %38, i64 %39
  store i8 %36, ptr %40, align 1, !tbaa !34
  %41 = load i32, ptr %3, align 8, !tbaa !54
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %3, align 8, !tbaa !54
  tail call fastcc void @txt_undo_store_cursors(ptr noundef %0)
  %43 = load ptr, ptr %37, align 8, !tbaa !52
  %44 = load i32, ptr %3, align 8, !tbaa !54
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %43, i64 %45
  store i8 %36, ptr %46, align 1, !tbaa !34
  %47 = load ptr, ptr %37, align 8, !tbaa !52
  %48 = load i32, ptr %3, align 8, !tbaa !54
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, ptr %47, i64 %49
  %51 = getelementptr i8, ptr %50, i64 1
  store i8 0, ptr %51, align 1, !tbaa !34
  br label %52

52:                                               ; preds = %15, %33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @txt_undo_store_cursors(ptr nocapture noundef %0) unnamed_addr #15 {
  tail call fastcc void @txt_undo_store_cur(ptr noundef %0)
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 10
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 4, !tbaa !68
  %7 = trunc i32 %6 to i8
  %8 = load i32, ptr %4, align 4, !tbaa !139
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %3, i64 %9
  store i8 %7, ptr %10, align 1, !tbaa !34
  %11 = load i32, ptr %4, align 4, !tbaa !139
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %4, align 4, !tbaa !139
  %13 = lshr i32 %6, 8
  %14 = trunc i32 %13 to i8
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i8, ptr %3, i64 %15
  store i8 %14, ptr %16, align 1, !tbaa !34
  %17 = load i32, ptr %4, align 4, !tbaa !139
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %4, align 4, !tbaa !139
  %19 = load ptr, ptr %2, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = icmp eq ptr %23, null
  %25 = icmp eq ptr %21, null
  %26 = or i1 %25, %24
  %27 = icmp eq ptr %21, %23
  %28 = or i1 %27, %26
  br i1 %28, label %52, label %33

29:                                               ; preds = %37
  %30 = icmp eq ptr %21, null
  %31 = icmp eq ptr %21, %23
  %32 = or i1 %30, %31
  br i1 %32, label %52, label %41

33:                                               ; preds = %1, %37
  %34 = phi ptr [ %39, %37 ], [ %21, %1 ]
  %35 = phi i32 [ %38, %37 ], [ 0, %1 ]
  %36 = icmp eq ptr %34, %23
  br i1 %36, label %52, label %37

37:                                               ; preds = %33
  %38 = add nuw nsw i32 %35, 1
  %39 = load ptr, ptr %34, align 8, !tbaa !134
  %40 = icmp eq ptr %39, null
  br i1 %40, label %29, label %33, !llvm.loop !135

41:                                               ; preds = %29, %41
  %42 = phi ptr [ %46, %41 ], [ %21, %29 ]
  %43 = phi i32 [ %44, %41 ], [ 0, %29 ]
  %44 = add nsw i32 %43, -1
  %45 = getelementptr inbounds %struct.TextLine, ptr %42, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !136
  %47 = icmp eq ptr %46, null
  %48 = icmp eq ptr %46, %23
  %49 = or i1 %47, %48
  br i1 %49, label %50, label %41, !llvm.loop !137

50:                                               ; preds = %41
  %51 = select i1 %47, i32 0, i32 %44
  br label %52

52:                                               ; preds = %33, %29, %50, %1
  %53 = phi i32 [ 0, %1 ], [ 0, %29 ], [ %51, %50 ], [ %35, %33 ]
  %54 = trunc i32 %53 to i8
  %55 = sext i32 %18 to i64
  %56 = getelementptr inbounds i8, ptr %19, i64 %55
  store i8 %54, ptr %56, align 1, !tbaa !34
  %57 = load i32, ptr %4, align 4, !tbaa !139
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %4, align 4, !tbaa !139
  %59 = lshr i32 %53, 8
  %60 = trunc i32 %59 to i8
  %61 = sext i32 %58 to i64
  %62 = getelementptr inbounds i8, ptr %19, i64 %61
  store i8 %60, ptr %62, align 1, !tbaa !34
  %63 = load i32, ptr %4, align 4, !tbaa !139
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %4, align 4, !tbaa !139
  %65 = lshr i32 %53, 16
  %66 = trunc i32 %65 to i8
  %67 = sext i32 %64 to i64
  %68 = getelementptr inbounds i8, ptr %19, i64 %67
  store i8 %66, ptr %68, align 1, !tbaa !34
  %69 = load i32, ptr %4, align 4, !tbaa !139
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %4, align 4, !tbaa !139
  %71 = lshr i32 %53, 24
  %72 = trunc i32 %71 to i8
  %73 = sext i32 %70 to i64
  %74 = getelementptr inbounds i8, ptr %19, i64 %73
  store i8 %72, ptr %74, align 1, !tbaa !34
  %75 = load i32, ptr %4, align 4, !tbaa !139
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %4, align 4, !tbaa !139
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @txt_do_undo(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !54
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %3, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !34
  %9 = zext i8 %8 to i32
  %10 = icmp slt i32 %5, 0
  br i1 %10, label %876, label %11

11:                                               ; preds = %1
  %12 = add nsw i32 %5, -1
  store i32 %12, ptr %4, align 8, !tbaa !54
  store i8 1, ptr @undoing, align 1, !tbaa !34
  switch i8 %8, label %874 [
    i8 11, label %13
    i8 12, label %13
    i8 13, label %13
    i8 14, label %13
    i8 15, label %104
    i8 16, label %104
    i8 17, label %104
    i8 18, label %104
    i8 19, label %204
    i8 20, label %204
    i8 21, label %204
    i8 22, label %204
    i8 23, label %304
    i8 24, label %512
    i8 26, label %718
    i8 27, label %718
    i8 28, label %718
    i8 29, label %718
    i8 32, label %718
    i8 30, label %718
    i8 31, label %718
  ]

13:                                               ; preds = %11, %11, %11, %11
  %14 = add nuw i32 %5, 9
  %15 = sub i32 %14, %9
  store i32 %15, ptr %4, align 8, !tbaa !54
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %3, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !34
  %19 = zext i8 %18 to i32
  %20 = add nsw i32 %15, -1
  store i32 %20, ptr %4, align 4, !tbaa !139
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %3, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !34
  %24 = zext i8 %23 to i32
  %25 = add nsw i32 %15, -2
  store i32 %25, ptr %4, align 4, !tbaa !139
  %26 = shl nuw nsw i32 %19, 16
  %27 = shl nuw nsw i32 %24, 8
  %28 = or disjoint i32 %27, %26
  %29 = sext i32 %25 to i64
  %30 = getelementptr inbounds i8, ptr %3, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !34
  %32 = zext i8 %31 to i32
  %33 = or disjoint i32 %28, %32
  %34 = add nsw i32 %15, -3
  store i32 %34, ptr %4, align 4, !tbaa !139
  %35 = shl nuw i32 %33, 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, ptr %3, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !34
  %39 = zext i8 %38 to i32
  %40 = or disjoint i32 %35, %39
  %41 = add nsw i32 %15, -4
  store i32 %41, ptr %4, align 4, !tbaa !139
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %3, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !34
  %45 = add nsw i32 %15, -5
  store i32 %45, ptr %4, align 4, !tbaa !139
  %46 = zext i8 %44 to i32
  %47 = shl nuw nsw i32 %46, 8
  %48 = sext i32 %45 to i64
  %49 = getelementptr inbounds i8, ptr %3, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !34
  %51 = zext i8 %50 to i32
  %52 = or disjoint i32 %47, %51
  %53 = add nsw i32 %15, -6
  store i32 %53, ptr %4, align 4, !tbaa !139
  %54 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %55 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %56 = load ptr, ptr %54, align 8, !tbaa !37
  %57 = icmp eq ptr %56, null
  br i1 %57, label %79, label %58

58:                                               ; preds = %13
  %59 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !64
  store ptr %60, ptr %54, align 8, !tbaa !37
  %61 = icmp eq i32 %40, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %54, align 8, !tbaa !37
  br label %64

64:                                               ; preds = %62, %69
  %65 = phi ptr [ %63, %62 ], [ %67, %69 ]
  %66 = phi i32 [ 0, %62 ], [ %70, %69 ]
  %67 = load ptr, ptr %65, align 8, !tbaa !134
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  store ptr %67, ptr %54, align 8, !tbaa !37
  %70 = add nuw i32 %66, 1
  %71 = icmp ult i32 %70, %40
  br i1 %71, label %64, label %72, !llvm.loop !156

72:                                               ; preds = %69, %64, %58
  %73 = load ptr, ptr %54, align 8, !tbaa !37
  %74 = getelementptr inbounds %struct.TextLine, ptr %73, i64 0, i32 4
  %75 = load i32, ptr %74, align 8, !tbaa !63
  %76 = tail call i32 @llvm.umin.i32(i32 %75, i32 %52)
  store i32 %76, ptr %55, align 4, !tbaa !139
  %77 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %73, ptr %77, align 8, !tbaa !67
  %78 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %76, ptr %78, align 4, !tbaa !68
  br label %79

79:                                               ; preds = %13, %72
  %80 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %81 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %82 = load ptr, ptr %80, align 8, !tbaa !37
  %83 = icmp eq ptr %82, null
  br i1 %83, label %103, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !64
  store ptr %86, ptr %80, align 8, !tbaa !37
  %87 = icmp eq i32 %40, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %80, align 8, !tbaa !37
  br label %90

90:                                               ; preds = %88, %95
  %91 = phi ptr [ %89, %88 ], [ %93, %95 ]
  %92 = phi i32 [ 0, %88 ], [ %96, %95 ]
  %93 = load ptr, ptr %91, align 8, !tbaa !134
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  store ptr %93, ptr %80, align 8, !tbaa !37
  %96 = add nuw i32 %92, 1
  %97 = icmp ult i32 %96, %40
  br i1 %97, label %90, label %98, !llvm.loop !156

98:                                               ; preds = %95, %90, %84
  %99 = load ptr, ptr %80, align 8, !tbaa !37
  %100 = getelementptr inbounds %struct.TextLine, ptr %99, i64 0, i32 4
  %101 = load i32, ptr %100, align 8, !tbaa !63
  %102 = tail call i32 @llvm.umin.i32(i32 %101, i32 %52)
  store i32 %102, ptr %81, align 4, !tbaa !139
  br label %103

103:                                              ; preds = %79, %98
  tail call void @txt_delete_char(ptr noundef %0)
  br label %871

104:                                              ; preds = %11, %11, %11, %11
  %105 = zext i8 %8 to i16
  %106 = add nsw i16 %105, -14
  %107 = tail call fastcc i32 @txt_undo_read_unicode(ptr noundef %3, ptr noundef nonnull %4, i16 noundef signext %106)
  %108 = load ptr, ptr %2, align 8, !tbaa !52
  %109 = load i32, ptr %4, align 4, !tbaa !139
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, ptr %108, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !34
  %113 = zext i8 %112 to i32
  %114 = add nsw i32 %109, -1
  store i32 %114, ptr %4, align 4, !tbaa !139
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, ptr %108, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !34
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 %109, -2
  store i32 %119, ptr %4, align 4, !tbaa !139
  %120 = shl nuw nsw i32 %113, 16
  %121 = shl nuw nsw i32 %118, 8
  %122 = or disjoint i32 %121, %120
  %123 = sext i32 %119 to i64
  %124 = getelementptr inbounds i8, ptr %108, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !34
  %126 = zext i8 %125 to i32
  %127 = or disjoint i32 %122, %126
  %128 = add nsw i32 %109, -3
  store i32 %128, ptr %4, align 4, !tbaa !139
  %129 = shl nuw i32 %127, 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, ptr %108, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !34
  %133 = zext i8 %132 to i32
  %134 = or disjoint i32 %129, %133
  %135 = add nsw i32 %109, -4
  store i32 %135, ptr %4, align 4, !tbaa !139
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, ptr %108, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !34
  %139 = add nsw i32 %109, -5
  store i32 %139, ptr %4, align 4, !tbaa !139
  %140 = zext i8 %138 to i32
  %141 = shl nuw nsw i32 %140, 8
  %142 = sext i32 %139 to i64
  %143 = getelementptr inbounds i8, ptr %108, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !34
  %145 = zext i8 %144 to i32
  %146 = or disjoint i32 %141, %145
  %147 = add nsw i32 %109, -6
  store i32 %147, ptr %4, align 4, !tbaa !139
  %148 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %149 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %150 = load ptr, ptr %148, align 8, !tbaa !37
  %151 = icmp eq ptr %150, null
  br i1 %151, label %173, label %152

152:                                              ; preds = %104
  %153 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %154 = load ptr, ptr %153, align 8, !tbaa !64
  store ptr %154, ptr %148, align 8, !tbaa !37
  %155 = icmp eq i32 %134, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %152
  %157 = load ptr, ptr %148, align 8, !tbaa !37
  br label %158

158:                                              ; preds = %156, %163
  %159 = phi ptr [ %157, %156 ], [ %161, %163 ]
  %160 = phi i32 [ 0, %156 ], [ %164, %163 ]
  %161 = load ptr, ptr %159, align 8, !tbaa !134
  %162 = icmp eq ptr %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %158
  store ptr %161, ptr %148, align 8, !tbaa !37
  %164 = add nuw i32 %160, 1
  %165 = icmp ult i32 %164, %134
  br i1 %165, label %158, label %166, !llvm.loop !156

166:                                              ; preds = %163, %158, %152
  %167 = load ptr, ptr %148, align 8, !tbaa !37
  %168 = getelementptr inbounds %struct.TextLine, ptr %167, i64 0, i32 4
  %169 = load i32, ptr %168, align 8, !tbaa !63
  %170 = tail call i32 @llvm.umin.i32(i32 %169, i32 %146)
  store i32 %170, ptr %149, align 4, !tbaa !139
  %171 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %167, ptr %171, align 8, !tbaa !67
  %172 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %170, ptr %172, align 4, !tbaa !68
  br label %173

173:                                              ; preds = %104, %166
  %174 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %175 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %176 = load ptr, ptr %174, align 8, !tbaa !37
  %177 = icmp eq ptr %176, null
  br i1 %177, label %197, label %178

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %180 = load ptr, ptr %179, align 8, !tbaa !64
  store ptr %180, ptr %174, align 8, !tbaa !37
  %181 = icmp eq i32 %134, 0
  br i1 %181, label %192, label %182

182:                                              ; preds = %178
  %183 = load ptr, ptr %174, align 8, !tbaa !37
  br label %184

184:                                              ; preds = %182, %189
  %185 = phi ptr [ %183, %182 ], [ %187, %189 ]
  %186 = phi i32 [ 0, %182 ], [ %190, %189 ]
  %187 = load ptr, ptr %185, align 8, !tbaa !134
  %188 = icmp eq ptr %187, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  store ptr %187, ptr %174, align 8, !tbaa !37
  %190 = add nuw i32 %186, 1
  %191 = icmp ult i32 %190, %134
  br i1 %191, label %184, label %192, !llvm.loop !156

192:                                              ; preds = %189, %184, %178
  %193 = load ptr, ptr %174, align 8, !tbaa !37
  %194 = getelementptr inbounds %struct.TextLine, ptr %193, i64 0, i32 4
  %195 = load i32, ptr %194, align 8, !tbaa !63
  %196 = tail call i32 @llvm.umin.i32(i32 %195, i32 %146)
  store i32 %196, ptr %175, align 4, !tbaa !139
  br label %197

197:                                              ; preds = %173, %192
  %198 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %199 = load i32, ptr %198, align 8, !tbaa !57
  %200 = lshr i32 %199, 10
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = tail call fastcc zeroext i8 @txt_add_char_intern(ptr noundef %0, i32 noundef %107, i8 noundef zeroext %202), !range !141
  br label %871

204:                                              ; preds = %11, %11, %11, %11
  %205 = zext i8 %8 to i16
  %206 = add nsw i16 %205, -18
  %207 = tail call fastcc i32 @txt_undo_read_unicode(ptr noundef %3, ptr noundef nonnull %4, i16 noundef signext %206)
  %208 = load ptr, ptr %2, align 8, !tbaa !52
  %209 = load i32, ptr %4, align 4, !tbaa !139
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, ptr %208, i64 %210
  %212 = load i8, ptr %211, align 1, !tbaa !34
  %213 = zext i8 %212 to i32
  %214 = add nsw i32 %209, -1
  store i32 %214, ptr %4, align 4, !tbaa !139
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, ptr %208, i64 %215
  %217 = load i8, ptr %216, align 1, !tbaa !34
  %218 = zext i8 %217 to i32
  %219 = add nsw i32 %209, -2
  store i32 %219, ptr %4, align 4, !tbaa !139
  %220 = shl nuw nsw i32 %213, 16
  %221 = shl nuw nsw i32 %218, 8
  %222 = or disjoint i32 %221, %220
  %223 = sext i32 %219 to i64
  %224 = getelementptr inbounds i8, ptr %208, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !34
  %226 = zext i8 %225 to i32
  %227 = or disjoint i32 %222, %226
  %228 = add nsw i32 %209, -3
  store i32 %228, ptr %4, align 4, !tbaa !139
  %229 = shl nuw i32 %227, 8
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i8, ptr %208, i64 %230
  %232 = load i8, ptr %231, align 1, !tbaa !34
  %233 = zext i8 %232 to i32
  %234 = or disjoint i32 %229, %233
  %235 = add nsw i32 %209, -4
  store i32 %235, ptr %4, align 4, !tbaa !139
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, ptr %208, i64 %236
  %238 = load i8, ptr %237, align 1, !tbaa !34
  %239 = add nsw i32 %209, -5
  store i32 %239, ptr %4, align 4, !tbaa !139
  %240 = zext i8 %238 to i32
  %241 = shl nuw nsw i32 %240, 8
  %242 = sext i32 %239 to i64
  %243 = getelementptr inbounds i8, ptr %208, i64 %242
  %244 = load i8, ptr %243, align 1, !tbaa !34
  %245 = zext i8 %244 to i32
  %246 = or disjoint i32 %241, %245
  %247 = add nsw i32 %209, -6
  store i32 %247, ptr %4, align 4, !tbaa !139
  %248 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %249 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %250 = load ptr, ptr %248, align 8, !tbaa !37
  %251 = icmp eq ptr %250, null
  br i1 %251, label %273, label %252

252:                                              ; preds = %204
  %253 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %254 = load ptr, ptr %253, align 8, !tbaa !64
  store ptr %254, ptr %248, align 8, !tbaa !37
  %255 = icmp eq i32 %234, 0
  br i1 %255, label %266, label %256

256:                                              ; preds = %252
  %257 = load ptr, ptr %248, align 8, !tbaa !37
  br label %258

258:                                              ; preds = %256, %263
  %259 = phi ptr [ %257, %256 ], [ %261, %263 ]
  %260 = phi i32 [ 0, %256 ], [ %264, %263 ]
  %261 = load ptr, ptr %259, align 8, !tbaa !134
  %262 = icmp eq ptr %261, null
  br i1 %262, label %266, label %263

263:                                              ; preds = %258
  store ptr %261, ptr %248, align 8, !tbaa !37
  %264 = add nuw i32 %260, 1
  %265 = icmp ult i32 %264, %234
  br i1 %265, label %258, label %266, !llvm.loop !156

266:                                              ; preds = %263, %258, %252
  %267 = load ptr, ptr %248, align 8, !tbaa !37
  %268 = getelementptr inbounds %struct.TextLine, ptr %267, i64 0, i32 4
  %269 = load i32, ptr %268, align 8, !tbaa !63
  %270 = tail call i32 @llvm.umin.i32(i32 %269, i32 %246)
  store i32 %270, ptr %249, align 4, !tbaa !139
  %271 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %267, ptr %271, align 8, !tbaa !67
  %272 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %270, ptr %272, align 4, !tbaa !68
  br label %273

273:                                              ; preds = %204, %266
  %274 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %275 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %276 = load ptr, ptr %274, align 8, !tbaa !37
  %277 = icmp eq ptr %276, null
  br i1 %277, label %297, label %278

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %280 = load ptr, ptr %279, align 8, !tbaa !64
  store ptr %280, ptr %274, align 8, !tbaa !37
  %281 = icmp eq i32 %234, 0
  br i1 %281, label %292, label %282

282:                                              ; preds = %278
  %283 = load ptr, ptr %274, align 8, !tbaa !37
  br label %284

284:                                              ; preds = %282, %289
  %285 = phi ptr [ %283, %282 ], [ %287, %289 ]
  %286 = phi i32 [ 0, %282 ], [ %290, %289 ]
  %287 = load ptr, ptr %285, align 8, !tbaa !134
  %288 = icmp eq ptr %287, null
  br i1 %288, label %292, label %289

289:                                              ; preds = %284
  store ptr %287, ptr %274, align 8, !tbaa !37
  %290 = add nuw i32 %286, 1
  %291 = icmp ult i32 %290, %234
  br i1 %291, label %284, label %292, !llvm.loop !156

292:                                              ; preds = %289, %284, %278
  %293 = load ptr, ptr %274, align 8, !tbaa !37
  %294 = getelementptr inbounds %struct.TextLine, ptr %293, i64 0, i32 4
  %295 = load i32, ptr %294, align 8, !tbaa !63
  %296 = tail call i32 @llvm.umin.i32(i32 %295, i32 %246)
  store i32 %296, ptr %275, align 4, !tbaa !139
  br label %297

297:                                              ; preds = %273, %292
  %298 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %299 = load i32, ptr %298, align 8, !tbaa !57
  %300 = lshr i32 %299, 10
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = tail call fastcc zeroext i8 @txt_add_char_intern(ptr noundef %0, i32 noundef %207, i8 noundef zeroext %302), !range !141
  tail call void @txt_move_left(ptr noundef %0, i8 noundef zeroext 0)
  br label %871

304:                                              ; preds = %11
  %305 = sext i32 %12 to i64
  %306 = getelementptr inbounds i8, ptr %3, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !34
  %308 = zext i8 %307 to i32
  %309 = add nsw i32 %5, -2
  store i32 %309, ptr %4, align 4, !tbaa !139
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, ptr %3, i64 %310
  %312 = load i8, ptr %311, align 1, !tbaa !34
  %313 = zext i8 %312 to i32
  %314 = add nsw i32 %5, -3
  store i32 %314, ptr %4, align 4, !tbaa !139
  %315 = shl nuw nsw i32 %308, 16
  %316 = shl nuw nsw i32 %313, 8
  %317 = or disjoint i32 %316, %315
  %318 = sext i32 %314 to i64
  %319 = getelementptr inbounds i8, ptr %3, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !34
  %321 = zext i8 %320 to i32
  %322 = or disjoint i32 %317, %321
  %323 = add nsw i32 %5, -4
  store i32 %323, ptr %4, align 4, !tbaa !139
  %324 = shl nuw i32 %322, 8
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds i8, ptr %3, i64 %325
  %327 = load i8, ptr %326, align 1, !tbaa !34
  %328 = zext i8 %327 to i32
  %329 = or disjoint i32 %324, %328
  %330 = add nsw i32 %5, -5
  store i32 %330, ptr %4, align 4, !tbaa !139
  %331 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %332 = add i32 %329, 1
  %333 = zext i32 %332 to i64
  %334 = tail call ptr %331(i64 noundef %333, ptr noundef nonnull @.str.9) #24
  %335 = icmp eq i32 %329, 0
  br i1 %335, label %356, label %336

336:                                              ; preds = %304
  %337 = zext i32 %329 to i64
  br label %338

338:                                              ; preds = %336, %338
  %339 = phi i64 [ 0, %336 ], [ %352, %338 ]
  %340 = load ptr, ptr %2, align 8, !tbaa !52
  %341 = load i32, ptr %4, align 8, !tbaa !54
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8, ptr %340, i64 %342
  %344 = load i8, ptr %343, align 1, !tbaa !34
  %345 = trunc i64 %339 to i32
  %346 = xor i32 %345, -1
  %347 = add i32 %329, %346
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds i8, ptr %334, i64 %348
  store i8 %344, ptr %349, align 1, !tbaa !34
  %350 = load i32, ptr %4, align 8, !tbaa !54
  %351 = add nsw i32 %350, -1
  store i32 %351, ptr %4, align 8, !tbaa !54
  %352 = add nuw nsw i64 %339, 1
  %353 = icmp eq i64 %352, %337
  br i1 %353, label %354, label %338, !llvm.loop !163

354:                                              ; preds = %338
  %355 = and i64 %352, 4294967295
  br label %356

356:                                              ; preds = %354, %304
  %357 = phi i64 [ 0, %304 ], [ %355, %354 ]
  %358 = getelementptr inbounds i8, ptr %334, i64 %357
  store i8 0, ptr %358, align 1, !tbaa !34
  %359 = load i32, ptr %4, align 8, !tbaa !54
  %360 = add nsw i32 %359, -4
  store i32 %360, ptr %4, align 8, !tbaa !54
  %361 = load ptr, ptr %2, align 8, !tbaa !52
  %362 = sext i32 %360 to i64
  %363 = getelementptr inbounds i8, ptr %361, i64 %362
  %364 = load i8, ptr %363, align 1, !tbaa !34
  %365 = zext i8 %364 to i32
  %366 = add nsw i32 %359, -5
  store i32 %366, ptr %4, align 4, !tbaa !139
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, ptr %361, i64 %367
  %369 = load i8, ptr %368, align 1, !tbaa !34
  %370 = zext i8 %369 to i32
  %371 = add nsw i32 %359, -6
  store i32 %371, ptr %4, align 4, !tbaa !139
  %372 = shl nuw nsw i32 %365, 16
  %373 = shl nuw nsw i32 %370, 8
  %374 = or disjoint i32 %373, %372
  %375 = sext i32 %371 to i64
  %376 = getelementptr inbounds i8, ptr %361, i64 %375
  %377 = load i8, ptr %376, align 1, !tbaa !34
  %378 = zext i8 %377 to i32
  %379 = or disjoint i32 %374, %378
  %380 = add nsw i32 %359, -7
  store i32 %380, ptr %4, align 4, !tbaa !139
  %381 = shl nuw i32 %379, 8
  %382 = sext i32 %380 to i64
  %383 = getelementptr inbounds i8, ptr %361, i64 %382
  %384 = load i8, ptr %383, align 1, !tbaa !34
  %385 = zext i8 %384 to i32
  %386 = or disjoint i32 %381, %385
  %387 = add nsw i32 %359, -8
  store i32 %387, ptr %4, align 4, !tbaa !139
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, ptr %361, i64 %388
  %390 = load i8, ptr %389, align 1, !tbaa !34
  %391 = add nsw i32 %359, -9
  store i32 %391, ptr %4, align 4, !tbaa !139
  %392 = zext i8 %390 to i32
  %393 = shl nuw nsw i32 %392, 8
  %394 = sext i32 %391 to i64
  %395 = getelementptr inbounds i8, ptr %361, i64 %394
  %396 = load i8, ptr %395, align 1, !tbaa !34
  %397 = zext i8 %396 to i32
  %398 = or disjoint i32 %393, %397
  %399 = add nsw i32 %359, -10
  store i32 %399, ptr %4, align 4, !tbaa !139
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i8, ptr %361, i64 %400
  %402 = load i8, ptr %401, align 1, !tbaa !34
  %403 = zext i8 %402 to i32
  %404 = add nsw i32 %359, -11
  store i32 %404, ptr %4, align 4, !tbaa !139
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8, ptr %361, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !34
  %408 = zext i8 %407 to i32
  %409 = add nsw i32 %359, -12
  store i32 %409, ptr %4, align 4, !tbaa !139
  %410 = shl nuw nsw i32 %403, 16
  %411 = shl nuw nsw i32 %408, 8
  %412 = or disjoint i32 %411, %410
  %413 = sext i32 %409 to i64
  %414 = getelementptr inbounds i8, ptr %361, i64 %413
  %415 = load i8, ptr %414, align 1, !tbaa !34
  %416 = zext i8 %415 to i32
  %417 = or disjoint i32 %412, %416
  %418 = add nsw i32 %359, -13
  store i32 %418, ptr %4, align 4, !tbaa !139
  %419 = shl nuw i32 %417, 8
  %420 = sext i32 %418 to i64
  %421 = getelementptr inbounds i8, ptr %361, i64 %420
  %422 = load i8, ptr %421, align 1, !tbaa !34
  %423 = zext i8 %422 to i32
  %424 = or disjoint i32 %419, %423
  %425 = add nsw i32 %359, -14
  store i32 %425, ptr %4, align 4, !tbaa !139
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i8, ptr %361, i64 %426
  %428 = load i8, ptr %427, align 1, !tbaa !34
  %429 = add nsw i32 %359, -15
  store i32 %429, ptr %4, align 4, !tbaa !139
  %430 = zext i8 %428 to i32
  %431 = shl nuw nsw i32 %430, 8
  %432 = sext i32 %429 to i64
  %433 = getelementptr inbounds i8, ptr %361, i64 %432
  %434 = load i8, ptr %433, align 1, !tbaa !34
  %435 = zext i8 %434 to i32
  %436 = or disjoint i32 %431, %435
  %437 = add nsw i32 %359, -16
  store i32 %437, ptr %4, align 4, !tbaa !139
  %438 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %439 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %440 = load ptr, ptr %438, align 8, !tbaa !37
  %441 = icmp eq ptr %440, null
  br i1 %441, label %463, label %442

442:                                              ; preds = %356
  %443 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %444 = load ptr, ptr %443, align 8, !tbaa !64
  store ptr %444, ptr %438, align 8, !tbaa !37
  %445 = icmp eq i32 %424, 0
  br i1 %445, label %456, label %446

446:                                              ; preds = %442
  %447 = load ptr, ptr %438, align 8, !tbaa !37
  br label %448

448:                                              ; preds = %446, %453
  %449 = phi ptr [ %447, %446 ], [ %451, %453 ]
  %450 = phi i32 [ 0, %446 ], [ %454, %453 ]
  %451 = load ptr, ptr %449, align 8, !tbaa !134
  %452 = icmp eq ptr %451, null
  br i1 %452, label %456, label %453

453:                                              ; preds = %448
  store ptr %451, ptr %438, align 8, !tbaa !37
  %454 = add nuw i32 %450, 1
  %455 = icmp ult i32 %454, %424
  br i1 %455, label %448, label %456, !llvm.loop !156

456:                                              ; preds = %453, %448, %442
  %457 = load ptr, ptr %438, align 8, !tbaa !37
  %458 = getelementptr inbounds %struct.TextLine, ptr %457, i64 0, i32 4
  %459 = load i32, ptr %458, align 8, !tbaa !63
  %460 = tail call i32 @llvm.umin.i32(i32 %459, i32 %436)
  store i32 %460, ptr %439, align 4, !tbaa !139
  %461 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %457, ptr %461, align 8, !tbaa !67
  %462 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %460, ptr %462, align 4, !tbaa !68
  br label %463

463:                                              ; preds = %356, %456
  tail call void @txt_insert_buf(ptr noundef %0, ptr noundef %334)
  %464 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %464(ptr noundef %334) #24
  %465 = load ptr, ptr %438, align 8, !tbaa !37
  %466 = icmp eq ptr %465, null
  br i1 %466, label %488, label %467

467:                                              ; preds = %463
  %468 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %469 = load ptr, ptr %468, align 8, !tbaa !64
  store ptr %469, ptr %438, align 8, !tbaa !37
  %470 = icmp eq i32 %424, 0
  br i1 %470, label %481, label %471

471:                                              ; preds = %467
  %472 = load ptr, ptr %438, align 8, !tbaa !37
  br label %473

473:                                              ; preds = %471, %478
  %474 = phi ptr [ %472, %471 ], [ %476, %478 ]
  %475 = phi i32 [ 0, %471 ], [ %479, %478 ]
  %476 = load ptr, ptr %474, align 8, !tbaa !134
  %477 = icmp eq ptr %476, null
  br i1 %477, label %481, label %478

478:                                              ; preds = %473
  store ptr %476, ptr %438, align 8, !tbaa !37
  %479 = add nuw i32 %475, 1
  %480 = icmp ult i32 %479, %424
  br i1 %480, label %473, label %481, !llvm.loop !156

481:                                              ; preds = %478, %473, %467
  %482 = load ptr, ptr %438, align 8, !tbaa !37
  %483 = getelementptr inbounds %struct.TextLine, ptr %482, i64 0, i32 4
  %484 = load i32, ptr %483, align 8, !tbaa !63
  %485 = tail call i32 @llvm.umin.i32(i32 %484, i32 %436)
  store i32 %485, ptr %439, align 4, !tbaa !139
  %486 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %482, ptr %486, align 8, !tbaa !67
  %487 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %485, ptr %487, align 4, !tbaa !68
  br label %488

488:                                              ; preds = %463, %481
  %489 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %490 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %491 = load ptr, ptr %489, align 8, !tbaa !37
  %492 = icmp eq ptr %491, null
  br i1 %492, label %871, label %493

493:                                              ; preds = %488
  %494 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %495 = load ptr, ptr %494, align 8, !tbaa !64
  store ptr %495, ptr %489, align 8, !tbaa !37
  %496 = icmp eq i32 %386, 0
  br i1 %496, label %507, label %497

497:                                              ; preds = %493
  %498 = load ptr, ptr %489, align 8, !tbaa !37
  br label %499

499:                                              ; preds = %497, %504
  %500 = phi ptr [ %498, %497 ], [ %502, %504 ]
  %501 = phi i32 [ 0, %497 ], [ %505, %504 ]
  %502 = load ptr, ptr %500, align 8, !tbaa !134
  %503 = icmp eq ptr %502, null
  br i1 %503, label %507, label %504

504:                                              ; preds = %499
  store ptr %502, ptr %489, align 8, !tbaa !37
  %505 = add nuw i32 %501, 1
  %506 = icmp ult i32 %505, %386
  br i1 %506, label %499, label %507, !llvm.loop !156

507:                                              ; preds = %504, %499, %493
  %508 = load ptr, ptr %489, align 8, !tbaa !37
  %509 = getelementptr inbounds %struct.TextLine, ptr %508, i64 0, i32 4
  %510 = load i32, ptr %509, align 8, !tbaa !63
  %511 = tail call i32 @llvm.umin.i32(i32 %510, i32 %398)
  store i32 %511, ptr %490, align 4, !tbaa !139
  br label %871

512:                                              ; preds = %11
  %513 = sext i32 %12 to i64
  %514 = getelementptr inbounds i8, ptr %3, i64 %513
  %515 = load i8, ptr %514, align 1, !tbaa !34
  %516 = zext i8 %515 to i32
  %517 = add nsw i32 %5, -2
  store i32 %517, ptr %4, align 4, !tbaa !139
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i8, ptr %3, i64 %518
  %520 = load i8, ptr %519, align 1, !tbaa !34
  %521 = zext i8 %520 to i32
  %522 = add nsw i32 %5, -3
  store i32 %522, ptr %4, align 4, !tbaa !139
  %523 = shl nuw nsw i32 %516, 16
  %524 = shl nuw nsw i32 %521, 8
  %525 = or disjoint i32 %524, %523
  %526 = sext i32 %522 to i64
  %527 = getelementptr inbounds i8, ptr %3, i64 %526
  %528 = load i8, ptr %527, align 1, !tbaa !34
  %529 = zext i8 %528 to i32
  %530 = or disjoint i32 %525, %529
  %531 = add nsw i32 %5, -4
  store i32 %531, ptr %4, align 4, !tbaa !139
  %532 = shl nuw i32 %530, 8
  %533 = sext i32 %531 to i64
  %534 = getelementptr inbounds i8, ptr %3, i64 %533
  %535 = load i8, ptr %534, align 1, !tbaa !34
  %536 = zext i8 %535 to i32
  %537 = or disjoint i32 %532, %536
  %538 = add nsw i32 %5, -5
  store i32 %538, ptr %4, align 4, !tbaa !139
  %539 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %540 = add i32 %537, 1
  %541 = zext i32 %540 to i64
  %542 = tail call ptr %539(i64 noundef %541, ptr noundef nonnull @.str.10) #24
  %543 = icmp eq i32 %537, 0
  br i1 %543, label %564, label %544

544:                                              ; preds = %512
  %545 = zext i32 %537 to i64
  br label %546

546:                                              ; preds = %544, %546
  %547 = phi i64 [ 0, %544 ], [ %560, %546 ]
  %548 = load ptr, ptr %2, align 8, !tbaa !52
  %549 = load i32, ptr %4, align 8, !tbaa !54
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i8, ptr %548, i64 %550
  %552 = load i8, ptr %551, align 1, !tbaa !34
  %553 = trunc i64 %547 to i32
  %554 = xor i32 %553, -1
  %555 = add i32 %537, %554
  %556 = zext i32 %555 to i64
  %557 = getelementptr inbounds i8, ptr %542, i64 %556
  store i8 %552, ptr %557, align 1, !tbaa !34
  %558 = load i32, ptr %4, align 8, !tbaa !54
  %559 = add nsw i32 %558, -1
  store i32 %559, ptr %4, align 8, !tbaa !54
  %560 = add nuw nsw i64 %547, 1
  %561 = icmp eq i64 %560, %545
  br i1 %561, label %562, label %546, !llvm.loop !164

562:                                              ; preds = %546
  %563 = and i64 %560, 4294967295
  br label %564

564:                                              ; preds = %562, %512
  %565 = phi i64 [ 0, %512 ], [ %563, %562 ]
  %566 = getelementptr inbounds i8, ptr %542, i64 %565
  store i8 0, ptr %566, align 1, !tbaa !34
  %567 = tail call i64 @BLI_strlen_utf8(ptr noundef %542) #24
  %568 = trunc i64 %567 to i32
  %569 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %569(ptr noundef %542) #24
  %570 = load i32, ptr %4, align 8, !tbaa !54
  %571 = add nsw i32 %570, -4
  store i32 %571, ptr %4, align 8, !tbaa !54
  %572 = load ptr, ptr %2, align 8, !tbaa !52
  %573 = sext i32 %571 to i64
  %574 = getelementptr inbounds i8, ptr %572, i64 %573
  %575 = load i8, ptr %574, align 1, !tbaa !34
  %576 = zext i8 %575 to i32
  %577 = add nsw i32 %570, -5
  store i32 %577, ptr %4, align 4, !tbaa !139
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i8, ptr %572, i64 %578
  %580 = load i8, ptr %579, align 1, !tbaa !34
  %581 = zext i8 %580 to i32
  %582 = add nsw i32 %570, -6
  store i32 %582, ptr %4, align 4, !tbaa !139
  %583 = shl nuw nsw i32 %576, 16
  %584 = shl nuw nsw i32 %581, 8
  %585 = or disjoint i32 %584, %583
  %586 = sext i32 %582 to i64
  %587 = getelementptr inbounds i8, ptr %572, i64 %586
  %588 = load i8, ptr %587, align 1, !tbaa !34
  %589 = zext i8 %588 to i32
  %590 = or disjoint i32 %585, %589
  %591 = add nsw i32 %570, -7
  store i32 %591, ptr %4, align 4, !tbaa !139
  %592 = shl nuw i32 %590, 8
  %593 = sext i32 %591 to i64
  %594 = getelementptr inbounds i8, ptr %572, i64 %593
  %595 = load i8, ptr %594, align 1, !tbaa !34
  %596 = zext i8 %595 to i32
  %597 = or disjoint i32 %592, %596
  %598 = add nsw i32 %570, -8
  store i32 %598, ptr %4, align 4, !tbaa !139
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i8, ptr %572, i64 %599
  %601 = load i8, ptr %600, align 1, !tbaa !34
  %602 = add nsw i32 %570, -9
  store i32 %602, ptr %4, align 4, !tbaa !139
  %603 = zext i8 %601 to i16
  %604 = shl nuw i16 %603, 8
  %605 = sext i32 %602 to i64
  %606 = getelementptr inbounds i8, ptr %572, i64 %605
  %607 = load i8, ptr %606, align 1, !tbaa !34
  %608 = zext i8 %607 to i16
  %609 = or disjoint i16 %604, %608
  %610 = add nsw i32 %570, -10
  store i32 %610, ptr %4, align 4, !tbaa !139
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds i8, ptr %572, i64 %611
  %613 = load i8, ptr %612, align 1, !tbaa !34
  %614 = zext i8 %613 to i32
  %615 = add nsw i32 %570, -11
  store i32 %615, ptr %4, align 4, !tbaa !139
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds i8, ptr %572, i64 %616
  %618 = load i8, ptr %617, align 1, !tbaa !34
  %619 = zext i8 %618 to i32
  %620 = add nsw i32 %570, -12
  store i32 %620, ptr %4, align 4, !tbaa !139
  %621 = shl nuw nsw i32 %614, 16
  %622 = shl nuw nsw i32 %619, 8
  %623 = or disjoint i32 %622, %621
  %624 = sext i32 %620 to i64
  %625 = getelementptr inbounds i8, ptr %572, i64 %624
  %626 = load i8, ptr %625, align 1, !tbaa !34
  %627 = zext i8 %626 to i32
  %628 = or disjoint i32 %623, %627
  %629 = add nsw i32 %570, -13
  store i32 %629, ptr %4, align 4, !tbaa !139
  %630 = shl nuw i32 %628, 8
  %631 = sext i32 %629 to i64
  %632 = getelementptr inbounds i8, ptr %572, i64 %631
  %633 = load i8, ptr %632, align 1, !tbaa !34
  %634 = zext i8 %633 to i32
  %635 = or disjoint i32 %630, %634
  %636 = add nsw i32 %570, -14
  store i32 %636, ptr %4, align 4, !tbaa !139
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds i8, ptr %572, i64 %637
  %639 = load i8, ptr %638, align 1, !tbaa !34
  %640 = add nsw i32 %570, -15
  store i32 %640, ptr %4, align 4, !tbaa !139
  %641 = zext i8 %639 to i16
  %642 = shl nuw i16 %641, 8
  %643 = sext i32 %640 to i64
  %644 = getelementptr inbounds i8, ptr %572, i64 %643
  %645 = load i8, ptr %644, align 1, !tbaa !34
  %646 = zext i8 %645 to i16
  %647 = or disjoint i16 %642, %646
  %648 = add nsw i32 %570, -16
  store i32 %648, ptr %4, align 4, !tbaa !139
  %649 = zext i16 %647 to i32
  %650 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %651 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %652 = load ptr, ptr %650, align 8, !tbaa !37
  %653 = icmp eq ptr %652, null
  br i1 %653, label %675, label %654

654:                                              ; preds = %564
  %655 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %656 = load ptr, ptr %655, align 8, !tbaa !64
  store ptr %656, ptr %650, align 8, !tbaa !37
  %657 = icmp eq i32 %635, 0
  br i1 %657, label %668, label %658

658:                                              ; preds = %654
  %659 = load ptr, ptr %650, align 8, !tbaa !37
  br label %660

660:                                              ; preds = %658, %665
  %661 = phi ptr [ %659, %658 ], [ %663, %665 ]
  %662 = phi i32 [ 0, %658 ], [ %666, %665 ]
  %663 = load ptr, ptr %661, align 8, !tbaa !134
  %664 = icmp eq ptr %663, null
  br i1 %664, label %668, label %665

665:                                              ; preds = %660
  store ptr %663, ptr %650, align 8, !tbaa !37
  %666 = add nuw i32 %662, 1
  %667 = icmp ult i32 %666, %635
  br i1 %667, label %660, label %668, !llvm.loop !156

668:                                              ; preds = %665, %660, %654
  %669 = load ptr, ptr %650, align 8, !tbaa !37
  %670 = getelementptr inbounds %struct.TextLine, ptr %669, i64 0, i32 4
  %671 = load i32, ptr %670, align 8, !tbaa !63
  %672 = tail call i32 @llvm.umin.i32(i32 %671, i32 %649)
  store i32 %672, ptr %651, align 4, !tbaa !139
  %673 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %669, ptr %673, align 8, !tbaa !67
  %674 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %672, ptr %674, align 4, !tbaa !68
  br label %675

675:                                              ; preds = %564, %668
  %676 = zext i16 %609 to i32
  %677 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %678 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %679 = load ptr, ptr %677, align 8, !tbaa !37
  %680 = icmp eq ptr %679, null
  br i1 %680, label %700, label %681

681:                                              ; preds = %675
  %682 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %683 = load ptr, ptr %682, align 8, !tbaa !64
  store ptr %683, ptr %677, align 8, !tbaa !37
  %684 = icmp eq i32 %597, 0
  br i1 %684, label %695, label %685

685:                                              ; preds = %681
  %686 = load ptr, ptr %677, align 8, !tbaa !37
  br label %687

687:                                              ; preds = %685, %692
  %688 = phi ptr [ %686, %685 ], [ %690, %692 ]
  %689 = phi i32 [ 0, %685 ], [ %693, %692 ]
  %690 = load ptr, ptr %688, align 8, !tbaa !134
  %691 = icmp eq ptr %690, null
  br i1 %691, label %695, label %692

692:                                              ; preds = %687
  store ptr %690, ptr %677, align 8, !tbaa !37
  %693 = add nuw i32 %689, 1
  %694 = icmp ult i32 %693, %597
  br i1 %694, label %687, label %695, !llvm.loop !156

695:                                              ; preds = %692, %687, %681
  %696 = load ptr, ptr %677, align 8, !tbaa !37
  %697 = getelementptr inbounds %struct.TextLine, ptr %696, i64 0, i32 4
  %698 = load i32, ptr %697, align 8, !tbaa !63
  %699 = tail call i32 @llvm.umin.i32(i32 %698, i32 %676)
  store i32 %699, ptr %678, align 4, !tbaa !139
  br label %700

700:                                              ; preds = %675, %695
  %701 = icmp eq i32 %635, %597
  %702 = icmp eq i16 %647, %609
  %703 = select i1 %701, i1 %702, i1 false
  br i1 %703, label %704, label %714

704:                                              ; preds = %700
  %705 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %706 = load i32, ptr %705, align 8, !tbaa !57
  %707 = and i32 %706, -1025
  store i32 %707, ptr %705, align 8, !tbaa !57
  %708 = icmp eq i32 %568, 0
  br i1 %708, label %713, label %709

709:                                              ; preds = %704, %709
  %710 = phi i32 [ %711, %709 ], [ 0, %704 ]
  tail call void @txt_move_right(ptr noundef %0, i8 noundef zeroext 1)
  %711 = add nuw i32 %710, 1
  %712 = icmp eq i32 %711, %568
  br i1 %712, label %713, label %709, !llvm.loop !165

713:                                              ; preds = %709, %704
  store i32 %706, ptr %705, align 8, !tbaa !57
  br label %714

714:                                              ; preds = %713, %700
  tail call fastcc void @txt_delete_sel(ptr noundef %0)
  %715 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %716 = load i32, ptr %715, align 8, !tbaa !57
  %717 = or i32 %716, 1
  store i32 %717, ptr %715, align 8, !tbaa !57
  br label %871

718:                                              ; preds = %11, %11, %11, %11, %11, %11, %11
  %719 = sext i32 %12 to i64
  %720 = getelementptr inbounds i8, ptr %3, i64 %719
  %721 = load i8, ptr %720, align 1, !tbaa !34
  %722 = zext i8 %721 to i32
  %723 = add nsw i32 %5, -2
  store i32 %723, ptr %4, align 4, !tbaa !139
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds i8, ptr %3, i64 %724
  %726 = load i8, ptr %725, align 1, !tbaa !34
  %727 = zext i8 %726 to i32
  %728 = add nsw i32 %5, -3
  store i32 %728, ptr %4, align 4, !tbaa !139
  %729 = shl nuw nsw i32 %722, 16
  %730 = shl nuw nsw i32 %727, 8
  %731 = or disjoint i32 %730, %729
  %732 = sext i32 %728 to i64
  %733 = getelementptr inbounds i8, ptr %3, i64 %732
  %734 = load i8, ptr %733, align 1, !tbaa !34
  %735 = zext i8 %734 to i32
  %736 = or disjoint i32 %731, %735
  %737 = add nsw i32 %5, -4
  store i32 %737, ptr %4, align 4, !tbaa !139
  %738 = shl nuw i32 %736, 8
  %739 = sext i32 %737 to i64
  %740 = getelementptr inbounds i8, ptr %3, i64 %739
  %741 = load i8, ptr %740, align 1, !tbaa !34
  %742 = zext i8 %741 to i32
  %743 = or disjoint i32 %738, %742
  %744 = add nsw i32 %5, -5
  store i32 %744, ptr %4, align 4, !tbaa !139
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds i8, ptr %3, i64 %745
  %747 = load i8, ptr %746, align 1, !tbaa !34
  %748 = add nsw i32 %5, -6
  store i32 %748, ptr %4, align 4, !tbaa !139
  %749 = zext i8 %747 to i32
  %750 = shl nuw nsw i32 %749, 8
  %751 = sext i32 %748 to i64
  %752 = getelementptr inbounds i8, ptr %3, i64 %751
  %753 = load i8, ptr %752, align 1, !tbaa !34
  %754 = zext i8 %753 to i32
  %755 = or disjoint i32 %750, %754
  %756 = add nsw i32 %5, -7
  store i32 %756, ptr %4, align 4, !tbaa !139
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds i8, ptr %3, i64 %757
  %759 = load i8, ptr %758, align 1, !tbaa !34
  %760 = zext i8 %759 to i32
  %761 = add nsw i32 %5, -8
  store i32 %761, ptr %4, align 4, !tbaa !139
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds i8, ptr %3, i64 %762
  %764 = load i8, ptr %763, align 1, !tbaa !34
  %765 = zext i8 %764 to i32
  %766 = add nsw i32 %5, -9
  store i32 %766, ptr %4, align 4, !tbaa !139
  %767 = shl nuw nsw i32 %760, 16
  %768 = shl nuw nsw i32 %765, 8
  %769 = or disjoint i32 %768, %767
  %770 = sext i32 %766 to i64
  %771 = getelementptr inbounds i8, ptr %3, i64 %770
  %772 = load i8, ptr %771, align 1, !tbaa !34
  %773 = zext i8 %772 to i32
  %774 = or disjoint i32 %769, %773
  %775 = add nsw i32 %5, -10
  store i32 %775, ptr %4, align 4, !tbaa !139
  %776 = shl nuw i32 %774, 8
  %777 = sext i32 %775 to i64
  %778 = getelementptr inbounds i8, ptr %3, i64 %777
  %779 = load i8, ptr %778, align 1, !tbaa !34
  %780 = zext i8 %779 to i32
  %781 = or disjoint i32 %776, %780
  %782 = add nsw i32 %5, -11
  store i32 %782, ptr %4, align 4, !tbaa !139
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds i8, ptr %3, i64 %783
  %785 = load i8, ptr %784, align 1, !tbaa !34
  %786 = add nsw i32 %5, -12
  store i32 %786, ptr %4, align 4, !tbaa !139
  %787 = zext i8 %785 to i32
  %788 = shl nuw nsw i32 %787, 8
  %789 = sext i32 %786 to i64
  %790 = getelementptr inbounds i8, ptr %3, i64 %789
  %791 = load i8, ptr %790, align 1, !tbaa !34
  %792 = zext i8 %791 to i32
  %793 = or disjoint i32 %788, %792
  %794 = add nsw i32 %5, -13
  store i32 %794, ptr %4, align 4, !tbaa !139
  %795 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %796 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %797 = load ptr, ptr %795, align 8, !tbaa !37
  %798 = icmp eq ptr %797, null
  br i1 %798, label %820, label %799

799:                                              ; preds = %718
  %800 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %801 = load ptr, ptr %800, align 8, !tbaa !64
  store ptr %801, ptr %795, align 8, !tbaa !37
  %802 = icmp eq i32 %781, 0
  br i1 %802, label %813, label %803

803:                                              ; preds = %799
  %804 = load ptr, ptr %795, align 8, !tbaa !37
  br label %805

805:                                              ; preds = %803, %810
  %806 = phi ptr [ %804, %803 ], [ %808, %810 ]
  %807 = phi i32 [ 0, %803 ], [ %811, %810 ]
  %808 = load ptr, ptr %806, align 8, !tbaa !134
  %809 = icmp eq ptr %808, null
  br i1 %809, label %813, label %810

810:                                              ; preds = %805
  store ptr %808, ptr %795, align 8, !tbaa !37
  %811 = add nuw i32 %807, 1
  %812 = icmp ult i32 %811, %781
  br i1 %812, label %805, label %813, !llvm.loop !156

813:                                              ; preds = %810, %805, %799
  %814 = load ptr, ptr %795, align 8, !tbaa !37
  %815 = getelementptr inbounds %struct.TextLine, ptr %814, i64 0, i32 4
  %816 = load i32, ptr %815, align 8, !tbaa !63
  %817 = tail call i32 @llvm.umin.i32(i32 %816, i32 %793)
  store i32 %817, ptr %796, align 4, !tbaa !139
  %818 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %814, ptr %818, align 8, !tbaa !67
  %819 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %817, ptr %819, align 4, !tbaa !68
  br label %820

820:                                              ; preds = %718, %813
  %821 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %822 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %823 = load ptr, ptr %821, align 8, !tbaa !37
  %824 = icmp eq ptr %823, null
  br i1 %824, label %844, label %825

825:                                              ; preds = %820
  %826 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %827 = load ptr, ptr %826, align 8, !tbaa !64
  store ptr %827, ptr %821, align 8, !tbaa !37
  %828 = icmp eq i32 %743, 0
  br i1 %828, label %839, label %829

829:                                              ; preds = %825
  %830 = load ptr, ptr %821, align 8, !tbaa !37
  br label %831

831:                                              ; preds = %829, %836
  %832 = phi ptr [ %830, %829 ], [ %834, %836 ]
  %833 = phi i32 [ 0, %829 ], [ %837, %836 ]
  %834 = load ptr, ptr %832, align 8, !tbaa !134
  %835 = icmp eq ptr %834, null
  br i1 %835, label %839, label %836

836:                                              ; preds = %831
  store ptr %834, ptr %821, align 8, !tbaa !37
  %837 = add nuw i32 %833, 1
  %838 = icmp ult i32 %837, %743
  br i1 %838, label %831, label %839, !llvm.loop !156

839:                                              ; preds = %836, %831, %825
  %840 = load ptr, ptr %821, align 8, !tbaa !37
  %841 = getelementptr inbounds %struct.TextLine, ptr %840, i64 0, i32 4
  %842 = load i32, ptr %841, align 8, !tbaa !63
  %843 = tail call i32 @llvm.umin.i32(i32 %842, i32 %755)
  store i32 %843, ptr %822, align 4, !tbaa !139
  br label %844

844:                                              ; preds = %820, %839
  switch i8 %8, label %871 [
    i8 26, label %845
    i8 27, label %846
    i8 28, label %847
    i8 29, label %848
    i8 32, label %849
    i8 30, label %869
    i8 31, label %870
  ]

845:                                              ; preds = %844
  tail call void @txt_unindent(ptr noundef %0)
  br label %871

846:                                              ; preds = %844
  tail call void @txt_indent(ptr noundef %0)
  br label %871

847:                                              ; preds = %844
  tail call void @txt_uncomment(ptr noundef %0)
  br label %871

848:                                              ; preds = %844
  tail call void @txt_comment(ptr noundef %0)
  br label %871

849:                                              ; preds = %844
  %850 = load ptr, ptr %795, align 8, !tbaa !65
  %851 = load ptr, ptr %850, align 8, !tbaa !134
  %852 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  tail call void @BLI_remlink(ptr noundef nonnull %852, ptr noundef %851) #24
  %853 = getelementptr inbounds %struct.TextLine, ptr %851, i64 0, i32 2
  %854 = load ptr, ptr %853, align 8, !tbaa !39
  %855 = icmp eq ptr %854, null
  br i1 %855, label %858, label %856

856:                                              ; preds = %849
  %857 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %857(ptr noundef nonnull %854) #24
  br label %858

858:                                              ; preds = %856, %849
  %859 = getelementptr inbounds %struct.TextLine, ptr %851, i64 0, i32 3
  %860 = load ptr, ptr %859, align 8, !tbaa !42
  %861 = icmp eq ptr %860, null
  br i1 %861, label %864, label %862

862:                                              ; preds = %858
  %863 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %863(ptr noundef nonnull %860) #24
  br label %864

864:                                              ; preds = %862, %858
  %865 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %865(ptr noundef %851) #24
  %866 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %867 = load i32, ptr %866, align 8, !tbaa !57
  %868 = or i32 %867, 1
  store i32 %868, ptr %866, align 8, !tbaa !57
  tail call void @txt_clean_text(ptr noundef %0)
  br label %871

869:                                              ; preds = %844
  tail call void @txt_move_lines(ptr noundef %0, i32 noundef 1)
  br label %871

870:                                              ; preds = %844
  tail call void @txt_move_lines(ptr noundef %0, i32 noundef -1)
  br label %871

871:                                              ; preds = %845, %847, %864, %870, %869, %848, %846, %844, %507, %488, %103, %197, %297, %714
  %872 = load i32, ptr %4, align 8, !tbaa !54
  %873 = add nsw i32 %872, -1
  br label %874

874:                                              ; preds = %871, %11
  %875 = phi i32 [ -1, %11 ], [ %873, %871 ]
  store i32 %875, ptr %4, align 8, !tbaa !54
  store i8 0, ptr @undoing, align 1, !tbaa !34
  br label %876

876:                                              ; preds = %1, %874
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @txt_delete_char(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %69, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = icmp eq ptr %4, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %14 = load i32, ptr %13, align 4, !tbaa !68
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %6, %10
  tail call fastcc void @txt_delete_sel(ptr noundef %0)
  %17 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !57
  %19 = or i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !57
  br label %69

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.TextLine, ptr %4, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !63
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load ptr, ptr %4, align 8, !tbaa !134
  %28 = icmp eq ptr %27, null
  br i1 %28, label %69, label %29

29:                                               ; preds = %26
  tail call fastcc void @txt_combine_lines(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %27)
  %30 = load ptr, ptr %3, align 8, !tbaa !65
  store ptr %30, ptr %7, align 8, !tbaa !67
  %31 = load i32, ptr %21, align 8, !tbaa !66
  %32 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %31, ptr %32, align 4, !tbaa !68
  br label %61

33:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  store i64 0, ptr %2, align 8, !tbaa !140
  %34 = getelementptr inbounds %struct.TextLine, ptr %4, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !39
  %36 = sext i32 %22 to i64
  %37 = getelementptr inbounds i8, ptr %35, i64 %36
  %38 = call i32 @BLI_str_utf8_as_unicode_and_size(ptr noundef %37, ptr noundef nonnull %2) #24
  %39 = load ptr, ptr %3, align 8, !tbaa !65
  %40 = getelementptr inbounds %struct.TextLine, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !39
  %42 = load i32, ptr %21, align 8, !tbaa !66
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %41, i64 %43
  %45 = load i64, ptr %2, align 8, !tbaa !140
  %46 = getelementptr inbounds i8, ptr %44, i64 %45
  %47 = getelementptr inbounds %struct.TextLine, ptr %39, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !63
  %49 = sub nsw i32 %48, %42
  %50 = sext i32 %49 to i64
  %51 = sub i64 %50, %45
  %52 = add i64 %51, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %44, ptr align 1 %46, i64 %52, i1 false)
  %53 = load i64, ptr %2, align 8, !tbaa !140
  %54 = load ptr, ptr %3, align 8, !tbaa !65
  %55 = getelementptr inbounds %struct.TextLine, ptr %54, i64 0, i32 4
  %56 = load i32, ptr %55, align 8, !tbaa !63
  %57 = trunc i64 %53 to i32
  %58 = sub i32 %56, %57
  store i32 %58, ptr %55, align 8, !tbaa !63
  store ptr %54, ptr %7, align 8, !tbaa !67
  %59 = load i32, ptr %21, align 8, !tbaa !66
  %60 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %59, ptr %60, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  br label %61

61:                                               ; preds = %29, %33
  %62 = phi i32 [ 10, %29 ], [ %38, %33 ]
  %63 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !57
  %65 = or i32 %64, 1
  store i32 %65, ptr %63, align 8, !tbaa !57
  call void @txt_clean_text(ptr noundef %0)
  %66 = load i8, ptr @undoing, align 1, !tbaa !34
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  call fastcc void @txt_undo_add_charop(ptr noundef %0, i32 noundef 19, i32 noundef %62)
  br label %69

69:                                               ; preds = %61, %68, %26, %1, %16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @txt_undo_read_unicode(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #2 {
  %4 = alloca [7 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #24
  switch i16 %2, label %71 [
    i16 1, label %5
    i16 2, label %12
    i16 3, label %25
    i16 4, label %43
  ]

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 4, !tbaa !139
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !34
  %10 = zext i8 %9 to i32
  %11 = add nsw i32 %6, -1
  store i32 %11, ptr %1, align 4, !tbaa !139
  br label %71

12:                                               ; preds = %3
  %13 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 2
  store i8 0, ptr %13, align 1, !tbaa !34
  %14 = load i32, ptr %1, align 4, !tbaa !139
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 1
  store i8 %17, ptr %18, align 1, !tbaa !34
  %19 = add nsw i32 %14, -1
  store i32 %19, ptr %1, align 4, !tbaa !139
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !34
  store i8 %22, ptr %4, align 1, !tbaa !34
  %23 = add nsw i32 %14, -2
  store i32 %23, ptr %1, align 4, !tbaa !139
  %24 = call i32 @BLI_str_utf8_as_unicode(ptr noundef nonnull %4) #24
  br label %71

25:                                               ; preds = %3
  %26 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 3
  store i8 0, ptr %26, align 1, !tbaa !34
  %27 = load i32, ptr %1, align 4, !tbaa !139
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !34
  %31 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 2
  store i8 %30, ptr %31, align 1, !tbaa !34
  %32 = add nsw i32 %27, -1
  store i32 %32, ptr %1, align 4, !tbaa !139
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !34
  %36 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 1
  store i8 %35, ptr %36, align 1, !tbaa !34
  %37 = add nsw i32 %27, -2
  store i32 %37, ptr %1, align 4, !tbaa !139
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !34
  store i8 %40, ptr %4, align 1, !tbaa !34
  %41 = add nsw i32 %27, -3
  store i32 %41, ptr %1, align 4, !tbaa !139
  %42 = call i32 @BLI_str_utf8_as_unicode(ptr noundef nonnull %4) #24
  br label %71

43:                                               ; preds = %3
  %44 = load i32, ptr %1, align 4, !tbaa !139
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !34
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %44, -1
  store i32 %49, ptr %1, align 4, !tbaa !139
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !34
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %44, -2
  store i32 %54, ptr %1, align 4, !tbaa !139
  %55 = shl nuw nsw i32 %48, 16
  %56 = shl nuw nsw i32 %53, 8
  %57 = or disjoint i32 %56, %55
  %58 = sext i32 %54 to i64
  %59 = getelementptr inbounds i8, ptr %0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !34
  %61 = zext i8 %60 to i32
  %62 = or disjoint i32 %57, %61
  %63 = add nsw i32 %44, -3
  store i32 %63, ptr %1, align 4, !tbaa !139
  %64 = shl nuw i32 %62, 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, ptr %0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !34
  %68 = zext i8 %67 to i32
  %69 = or disjoint i32 %64, %68
  %70 = add nsw i32 %44, -4
  store i32 %70, ptr %1, align 4, !tbaa !139
  br label %71

71:                                               ; preds = %3, %43, %25, %12, %5
  %72 = phi i32 [ %69, %43 ], [ %42, %25 ], [ %24, %12 ], [ %10, %5 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #24
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @txt_add_char(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !57
  %5 = lshr i32 %4, 10
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, 1
  %8 = tail call fastcc zeroext i8 @txt_add_char_intern(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %7), !range !141
  ret i8 %8
}

declare i64 @BLI_strlen_utf8(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @txt_delete_selected(ptr noundef %0) local_unnamed_addr #2 {
  tail call fastcc void @txt_delete_sel(ptr noundef %0)
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = or i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @txt_unindent(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %75, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %75, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !57
  %12 = and i32 %11, 1024
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr @.str.11, ptr @tab_to_spaces
  %15 = select i1 %13, i32 1, i32 4
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  br label %18

18:                                               ; preds = %50, %9
  %19 = phi i8 [ 0, %9 ], [ %36, %50 ]
  %20 = phi i32 [ 0, %9 ], [ %51, %50 ]
  %21 = load ptr, ptr %2, align 8, !tbaa !65
  %22 = getelementptr inbounds %struct.TextLine, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  %24 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %14, i64 noundef %16) #25
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = icmp eq i32 %20, 0
  %28 = select i1 %27, i8 1, i8 %19
  %29 = getelementptr inbounds %struct.TextLine, ptr %21, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !63
  %31 = sub nsw i32 %30, %15
  store i32 %31, ptr %29, align 8, !tbaa !63
  %32 = getelementptr inbounds i8, ptr %23, i64 %16
  %33 = add nsw i32 %31, 1
  %34 = sext i32 %33 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %23, ptr nonnull align 1 %32, i64 %34, i1 false)
  br label %35

35:                                               ; preds = %26, %18
  %36 = phi i8 [ %28, %26 ], [ %19, %18 ]
  %37 = load i32, ptr %10, align 8, !tbaa !57
  %38 = or i32 %37, 1
  store i32 %38, ptr %10, align 8, !tbaa !57
  tail call void @txt_clean_text(ptr noundef %0)
  %39 = load ptr, ptr %2, align 8, !tbaa !65
  %40 = load ptr, ptr %6, align 8, !tbaa !67
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  br i1 %25, label %43, label %50

43:                                               ; preds = %42
  %44 = load i32, ptr %17, align 4, !tbaa !68
  %45 = sub nsw i32 %44, %15
  %46 = tail call i32 @llvm.smax.i32(i32 %45, i32 0)
  store i32 %46, ptr %17, align 4, !tbaa !68
  br label %50

47:                                               ; preds = %35
  %48 = load ptr, ptr %39, align 8, !tbaa !134
  store ptr %48, ptr %2, align 8, !tbaa !65
  %49 = add nsw i32 %20, 1
  br label %50

50:                                               ; preds = %42, %43, %47
  %51 = phi i32 [ %49, %47 ], [ %20, %43 ], [ %20, %42 ]
  br i1 %41, label %52, label %18

52:                                               ; preds = %50
  %53 = icmp eq i8 %36, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %56 = load i32, ptr %55, align 8, !tbaa !66
  %57 = sub nsw i32 %56, %15
  %58 = tail call i32 @llvm.smax.i32(i32 %57, i32 0)
  store i32 %58, ptr %55, align 8, !tbaa !66
  br label %59

59:                                               ; preds = %54, %52
  %60 = icmp sgt i32 %51, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %59
  %62 = load ptr, ptr %2, align 8, !tbaa !65
  br label %63

63:                                               ; preds = %61, %63
  %64 = phi ptr [ %62, %61 ], [ %67, %63 ]
  %65 = phi i32 [ %51, %61 ], [ %68, %63 ]
  %66 = getelementptr inbounds %struct.TextLine, ptr %64, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !136
  %68 = add nsw i32 %65, -1
  %69 = icmp sgt i32 %65, 1
  br i1 %69, label %63, label %70, !llvm.loop !166

70:                                               ; preds = %63
  store ptr %67, ptr %2, align 8, !tbaa !65
  br label %71

71:                                               ; preds = %70, %59
  %72 = load i8, ptr @undoing, align 1, !tbaa !34
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  tail call void @txt_undo_add_op(ptr noundef %0, i32 noundef 27)
  br label %75

75:                                               ; preds = %71, %74, %1, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @txt_indent(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %101, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %101, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !57
  %12 = and i32 %11, 1024
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr @.str.11, ptr @tab_to_spaces
  %15 = select i1 %13, i32 1, i32 4
  %16 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !66
  %18 = add nuw nsw i32 %15, 1
  %19 = zext nneg i32 %15 to i64
  br label %20

20:                                               ; preds = %86, %9
  %21 = phi i32 [ 0, %9 ], [ %88, %86 ]
  %22 = load ptr, ptr %2, align 8, !tbaa !65
  %23 = getelementptr inbounds %struct.TextLine, ptr %22, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !63
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %72, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %28 = add i32 %18, %24
  %29 = sext i32 %28 to i64
  %30 = tail call ptr %27(i64 noundef %29, ptr noundef nonnull @.str.1) #24
  store i32 0, ptr %16, align 8, !tbaa !66
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %30, ptr noundef nonnull align 1 dereferenceable(1) %14, i64 %19, i1 false)
  %31 = load ptr, ptr %2, align 8, !tbaa !65
  %32 = getelementptr inbounds %struct.TextLine, ptr %31, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !63
  %34 = load i32, ptr %16, align 8, !tbaa !66
  %35 = sub nsw i32 %33, %34
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %26
  %38 = sext i32 %34 to i64
  %39 = getelementptr inbounds i8, ptr %30, i64 %38
  %40 = getelementptr inbounds i8, ptr %39, i64 %19
  %41 = getelementptr inbounds %struct.TextLine, ptr %31, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !39
  %43 = getelementptr inbounds i8, ptr %42, i64 %38
  %44 = zext nneg i32 %35 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %40, ptr align 1 %43, i64 %44, i1 false)
  br label %45

45:                                               ; preds = %37, %26
  %46 = load ptr, ptr %2, align 8, !tbaa !65
  %47 = getelementptr inbounds %struct.TextLine, ptr %46, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !63
  %49 = add nsw i32 %48, %15
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %30, i64 %50
  store i8 0, ptr %51, align 1, !tbaa !34
  %52 = load ptr, ptr %2, align 8, !tbaa !65
  %53 = getelementptr inbounds %struct.TextLine, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !39
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %57(ptr noundef nonnull %54) #24
  br label %58

58:                                               ; preds = %56, %45
  %59 = getelementptr inbounds %struct.TextLine, ptr %52, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !42
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %63(ptr noundef nonnull %60) #24
  br label %64

64:                                               ; preds = %58, %62
  store ptr %30, ptr %53, align 8, !tbaa !39
  %65 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #25
  %66 = trunc i64 %65 to i32
  %67 = getelementptr inbounds %struct.TextLine, ptr %52, i64 0, i32 4
  store i32 %66, ptr %67, align 8, !tbaa !63
  store ptr null, ptr %59, align 8, !tbaa !42
  %68 = load i32, ptr %16, align 8, !tbaa !66
  %69 = add nsw i32 %68, %15
  store i32 %69, ptr %16, align 8, !tbaa !66
  %70 = load i32, ptr %10, align 8, !tbaa !57
  %71 = or i32 %70, 1
  store i32 %71, ptr %10, align 8, !tbaa !57
  tail call void @txt_clean_text(ptr noundef %0)
  br label %72

72:                                               ; preds = %64, %20
  %73 = load ptr, ptr %2, align 8, !tbaa !65
  %74 = load ptr, ptr %6, align 8, !tbaa !67
  %75 = icmp eq ptr %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %78 = load i32, ptr %77, align 4, !tbaa !68
  %79 = add nsw i32 %78, %15
  store i32 %79, ptr %77, align 4, !tbaa !68
  %80 = icmp eq i32 %17, 0
  %81 = add nsw i32 %15, %17
  %82 = select i1 %80, i32 0, i32 %81
  store i32 %82, ptr %16, align 8, !tbaa !66
  %83 = icmp eq i32 %21, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %76
  %85 = load ptr, ptr %2, align 8, !tbaa !65
  br label %89

86:                                               ; preds = %72
  %87 = load ptr, ptr %73, align 8, !tbaa !134
  store ptr %87, ptr %2, align 8, !tbaa !65
  %88 = add nuw nsw i32 %21, 1
  br label %20, !llvm.loop !167

89:                                               ; preds = %84, %89
  %90 = phi ptr [ %85, %84 ], [ %93, %89 ]
  %91 = phi i32 [ %21, %84 ], [ %94, %89 ]
  %92 = getelementptr inbounds %struct.TextLine, ptr %90, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !136
  %94 = add nsw i32 %91, -1
  %95 = icmp sgt i32 %91, 1
  br i1 %95, label %89, label %96, !llvm.loop !168

96:                                               ; preds = %89
  store ptr %93, ptr %2, align 8, !tbaa !65
  br label %97

97:                                               ; preds = %96, %76
  %98 = load i8, ptr @undoing, align 1, !tbaa !34
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  tail call void @txt_undo_add_op(ptr noundef %0, i32 noundef 26)
  br label %101

101:                                              ; preds = %97, %100, %1, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @txt_uncomment(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %74, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %74, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  br label %12

12:                                               ; preds = %9, %55
  %13 = phi i32 [ %56, %55 ], [ 0, %9 ]
  %14 = load ptr, ptr %2, align 8, !tbaa !65
  %15 = getelementptr inbounds %struct.TextLine, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = icmp eq i8 %17, 35
  br i1 %18, label %19, label %43

19:                                               ; preds = %12
  %20 = load ptr, ptr %2, align 8, !tbaa !65
  %21 = getelementptr inbounds %struct.TextLine, ptr %20, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !63
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19, %24
  %25 = phi i64 [ %29, %24 ], [ 0, %19 ]
  %26 = phi ptr [ %33, %24 ], [ %20, %19 ]
  %27 = getelementptr inbounds %struct.TextLine, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  %29 = add nuw nsw i64 %25, 1
  %30 = getelementptr inbounds i8, ptr %28, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !34
  %32 = getelementptr inbounds i8, ptr %28, i64 %25
  store i8 %31, ptr %32, align 1, !tbaa !34
  %33 = load ptr, ptr %2, align 8, !tbaa !65
  %34 = getelementptr inbounds %struct.TextLine, ptr %33, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !63
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %29, %36
  br i1 %37, label %24, label %38, !llvm.loop !169

38:                                               ; preds = %24, %19
  %39 = phi ptr [ %20, %19 ], [ %33, %24 ]
  %40 = phi i32 [ %22, %19 ], [ %35, %24 ]
  %41 = getelementptr inbounds %struct.TextLine, ptr %39, i64 0, i32 4
  %42 = add nsw i32 %40, -1
  store i32 %42, ptr %41, align 8, !tbaa !63
  br label %43

43:                                               ; preds = %38, %12
  %44 = load i32, ptr %10, align 8, !tbaa !57
  %45 = or i32 %44, 1
  store i32 %45, ptr %10, align 8, !tbaa !57
  tail call void @txt_clean_text(ptr noundef %0)
  %46 = load ptr, ptr %2, align 8, !tbaa !65
  %47 = load ptr, ptr %6, align 8, !tbaa !67
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.TextLine, ptr %47, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !63
  store i32 %51, ptr %11, align 4, !tbaa !68
  br label %55

52:                                               ; preds = %43
  %53 = load ptr, ptr %46, align 8, !tbaa !134
  store ptr %53, ptr %2, align 8, !tbaa !65
  %54 = add nsw i32 %13, 1
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i32 [ %13, %49 ], [ %54, %52 ]
  br i1 %48, label %57, label %12

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  store i32 0, ptr %58, align 8, !tbaa !66
  %59 = icmp sgt i32 %56, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load ptr, ptr %2, align 8, !tbaa !65
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi ptr [ %61, %60 ], [ %66, %62 ]
  %64 = phi i32 [ %56, %60 ], [ %67, %62 ]
  %65 = getelementptr inbounds %struct.TextLine, ptr %63, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !136
  %67 = add nsw i32 %64, -1
  %68 = icmp sgt i32 %64, 1
  br i1 %68, label %62, label %69, !llvm.loop !170

69:                                               ; preds = %62
  store ptr %66, ptr %2, align 8, !tbaa !65
  br label %70

70:                                               ; preds = %69, %57
  %71 = load i8, ptr @undoing, align 1, !tbaa !34
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  tail call void @txt_undo_add_op(ptr noundef %0, i32 noundef 29)
  br label %74

74:                                               ; preds = %70, %73, %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @txt_comment(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %87, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %87, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  br label %12

12:                                               ; preds = %9, %72
  %13 = phi i32 [ %74, %72 ], [ 0, %9 ]
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %15 = load ptr, ptr %2, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.TextLine, ptr %15, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !63
  %18 = add nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = tail call ptr %14(i64 noundef %19, ptr noundef nonnull @.str.1) #24
  store i32 0, ptr %10, align 8, !tbaa !66
  store i8 35, ptr %20, align 1, !tbaa !34
  %21 = load ptr, ptr %2, align 8, !tbaa !65
  %22 = getelementptr inbounds %struct.TextLine, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !63
  %24 = load i32, ptr %10, align 8, !tbaa !66
  %25 = sub nsw i32 %23, %24
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %12
  %28 = sext i32 %24 to i64
  %29 = getelementptr inbounds i8, ptr %20, i64 %28
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  %31 = getelementptr inbounds %struct.TextLine, ptr %21, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !39
  %33 = getelementptr inbounds i8, ptr %32, i64 %28
  %34 = zext nneg i32 %25 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %30, ptr align 1 %33, i64 %34, i1 false)
  br label %35

35:                                               ; preds = %27, %12
  %36 = load ptr, ptr %2, align 8, !tbaa !65
  %37 = getelementptr inbounds %struct.TextLine, ptr %36, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !63
  %39 = sext i32 %38 to i64
  %40 = getelementptr i8, ptr %20, i64 %39
  %41 = getelementptr i8, ptr %40, i64 1
  store i8 0, ptr %41, align 1, !tbaa !34
  %42 = load ptr, ptr %2, align 8, !tbaa !65
  %43 = getelementptr inbounds %struct.TextLine, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !39
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %47(ptr noundef nonnull %44) #24
  br label %48

48:                                               ; preds = %46, %35
  %49 = getelementptr inbounds %struct.TextLine, ptr %42, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !42
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %53(ptr noundef nonnull %50) #24
  br label %54

54:                                               ; preds = %48, %52
  store ptr %20, ptr %43, align 8, !tbaa !39
  %55 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #25
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds %struct.TextLine, ptr %42, i64 0, i32 4
  store i32 %56, ptr %57, align 8, !tbaa !63
  store ptr null, ptr %49, align 8, !tbaa !42
  %58 = load i32, ptr %10, align 8, !tbaa !66
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %10, align 8, !tbaa !66
  %60 = load i32, ptr %11, align 8, !tbaa !57
  %61 = or i32 %60, 1
  store i32 %61, ptr %11, align 8, !tbaa !57
  tail call void @txt_clean_text(ptr noundef %0)
  %62 = load ptr, ptr %2, align 8, !tbaa !65
  %63 = load ptr, ptr %6, align 8, !tbaa !67
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.TextLine, ptr %63, i64 0, i32 4
  %67 = load i32, ptr %66, align 8, !tbaa !63
  %68 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %67, ptr %68, align 4, !tbaa !68
  store i32 0, ptr %10, align 8, !tbaa !66
  %69 = icmp eq i32 %13, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %2, align 8, !tbaa !65
  br label %75

72:                                               ; preds = %54
  %73 = load ptr, ptr %62, align 8, !tbaa !134
  store ptr %73, ptr %2, align 8, !tbaa !65
  %74 = add nuw nsw i32 %13, 1
  br label %12, !llvm.loop !171

75:                                               ; preds = %70, %75
  %76 = phi ptr [ %71, %70 ], [ %79, %75 ]
  %77 = phi i32 [ %13, %70 ], [ %80, %75 ]
  %78 = getelementptr inbounds %struct.TextLine, ptr %76, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !136
  %80 = add nsw i32 %77, -1
  %81 = icmp sgt i32 %77, 1
  br i1 %81, label %75, label %82, !llvm.loop !172

82:                                               ; preds = %75
  store ptr %79, ptr %2, align 8, !tbaa !65
  br label %83

83:                                               ; preds = %82, %65
  %84 = load i8, ptr @undoing, align 1, !tbaa !34
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  tail call void @txt_undo_add_op(ptr noundef %0, i32 noundef 28)
  br label %87

87:                                               ; preds = %83, %86, %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @txt_move_lines(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %68, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = icmp eq ptr %8, null
  br i1 %9, label %68, label %10

10:                                               ; preds = %6
  %11 = icmp eq ptr %4, %8
  br i1 %11, label %32, label %13

12:                                               ; preds = %16
  br i1 %11, label %32, label %19

13:                                               ; preds = %10, %16
  %14 = phi ptr [ %17, %16 ], [ %4, %10 ]
  %15 = icmp eq ptr %14, %8
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !134
  %18 = icmp eq ptr %17, null
  br i1 %18, label %12, label %13, !llvm.loop !135

19:                                               ; preds = %12, %19
  %20 = phi ptr [ %24, %19 ], [ %4, %12 ]
  %21 = phi i32 [ %22, %19 ], [ 0, %12 ]
  %22 = add nsw i32 %21, -1
  %23 = getelementptr inbounds %struct.TextLine, ptr %20, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !136
  %25 = icmp eq ptr %24, null
  %26 = icmp eq ptr %24, %8
  %27 = or i1 %25, %26
  br i1 %27, label %28, label %19, !llvm.loop !137

28:                                               ; preds = %19
  %29 = icmp sgt i32 %21, 0
  %30 = select i1 %25, i1 true, i1 %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %13, %28
  br i1 %11, label %32, label %43

32:                                               ; preds = %12, %31, %10
  %33 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !66
  %35 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %36 = load i32, ptr %35, align 4, !tbaa !68
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32, %28
  store ptr %8, ptr %3, align 8, !tbaa !65
  store ptr %4, ptr %7, align 8, !tbaa !67
  %39 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !66
  %41 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %42 = load i32, ptr %41, align 4, !tbaa !68
  store i32 %42, ptr %39, align 8, !tbaa !66
  store i32 %40, ptr %41, align 4, !tbaa !68
  br label %43

43:                                               ; preds = %31, %32, %38
  %44 = icmp eq i32 %1, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  %46 = load ptr, ptr %7, align 8, !tbaa !67
  br label %50

47:                                               ; preds = %43
  %48 = load ptr, ptr %3, align 8, !tbaa !65
  %49 = getelementptr inbounds %struct.TextLine, ptr %48, i64 0, i32 1
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi ptr [ %46, %45 ], [ %49, %47 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !37
  %53 = icmp eq ptr %52, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  tail call void @BLI_remlink(ptr noundef nonnull %55, ptr noundef nonnull %52) #24
  br i1 %44, label %56, label %58

56:                                               ; preds = %54
  %57 = load ptr, ptr %3, align 8, !tbaa !65
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %55, ptr noundef %57, ptr noundef nonnull %52) #24
  br label %60

58:                                               ; preds = %54
  %59 = load ptr, ptr %7, align 8, !tbaa !67
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %55, ptr noundef %59, ptr noundef nonnull %52) #24
  br label %60

60:                                               ; preds = %58, %56
  %61 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %62 = load i32, ptr %61, align 8, !tbaa !57
  %63 = or i32 %62, 1
  store i32 %63, ptr %61, align 8, !tbaa !57
  tail call void @txt_clean_text(ptr noundef %0)
  %64 = load i8, ptr @undoing, align 1, !tbaa !34
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = select i1 %44, i32 31, i32 30
  tail call void @txt_undo_add_op(ptr noundef %0, i32 noundef %67)
  br label %68

68:                                               ; preds = %60, %66, %50, %2, %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @txt_do_redo(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca [7 x i8], align 1
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !54
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i8, ptr %7, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !34
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 %4, ptr %3, align 8, !tbaa !54
  br label %970

13:                                               ; preds = %1
  store i8 1, ptr @undoing, align 1, !tbaa !34
  %14 = zext i8 %10 to i32
  switch i8 %10, label %968 [
    i8 11, label %15
    i8 12, label %15
    i8 13, label %15
    i8 14, label %15
    i8 15, label %181
    i8 16, label %181
    i8 17, label %181
    i8 18, label %181
    i8 19, label %279
    i8 20, label %279
    i8 21, label %279
    i8 22, label %279
    i8 23, label %377
    i8 24, label %538
    i8 26, label %675
    i8 27, label %675
    i8 28, label %675
    i8 29, label %675
    i8 32, label %675
    i8 30, label %675
    i8 31, label %675
  ]

15:                                               ; preds = %13, %13, %13, %13
  %16 = add nsw i32 %4, 2
  store i32 %16, ptr %3, align 8, !tbaa !54
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %7, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !34
  %20 = add nsw i32 %4, 3
  store i32 %20, ptr %3, align 4, !tbaa !139
  %21 = zext i8 %19 to i32
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, ptr %7, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !34
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = or disjoint i32 %26, %21
  %28 = add nsw i32 %4, 4
  store i32 %28, ptr %3, align 4, !tbaa !139
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, ptr %7, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !34
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %4, 5
  store i32 %33, ptr %3, align 4, !tbaa !139
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %7, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !34
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = or disjoint i32 %38, %32
  %40 = add nsw i32 %4, 6
  store i32 %40, ptr %3, align 4, !tbaa !139
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %7, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !34
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 16
  %46 = or disjoint i32 %39, %45
  %47 = add nsw i32 %4, 7
  store i32 %47, ptr %3, align 4, !tbaa !139
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %7, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !34
  %51 = zext i8 %50 to i32
  %52 = shl nuw i32 %51, 24
  %53 = or disjoint i32 %46, %52
  %54 = add nsw i32 %4, 8
  store i32 %54, ptr %3, align 4, !tbaa !139
  %55 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %56 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %57 = load ptr, ptr %55, align 8, !tbaa !37
  %58 = icmp eq ptr %57, null
  br i1 %58, label %83, label %59

59:                                               ; preds = %15
  %60 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !64
  store ptr %61, ptr %55, align 8, !tbaa !37
  %62 = icmp eq i32 %53, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %55, align 8, !tbaa !37
  %65 = or disjoint i32 %52, %45
  %66 = or disjoint i32 %65, %38
  %67 = or disjoint i32 %66, %32
  br label %68

68:                                               ; preds = %63, %73
  %69 = phi ptr [ %64, %63 ], [ %71, %73 ]
  %70 = phi i32 [ 0, %63 ], [ %74, %73 ]
  %71 = load ptr, ptr %69, align 8, !tbaa !134
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  store ptr %71, ptr %55, align 8, !tbaa !37
  %74 = add nuw i32 %70, 1
  %75 = icmp eq i32 %74, %67
  br i1 %75, label %76, label %68, !llvm.loop !156

76:                                               ; preds = %73, %68, %59
  %77 = load ptr, ptr %55, align 8, !tbaa !37
  %78 = getelementptr inbounds %struct.TextLine, ptr %77, i64 0, i32 4
  %79 = load i32, ptr %78, align 8, !tbaa !63
  %80 = tail call i32 @llvm.umin.i32(i32 %79, i32 %27)
  store i32 %80, ptr %56, align 4, !tbaa !139
  %81 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %77, ptr %81, align 8, !tbaa !67
  %82 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %80, ptr %82, align 4, !tbaa !68
  br label %83

83:                                               ; preds = %15, %76
  %84 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %85 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %86 = load ptr, ptr %84, align 8, !tbaa !37
  %87 = icmp eq ptr %86, null
  br i1 %87, label %110, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !64
  store ptr %90, ptr %84, align 8, !tbaa !37
  %91 = icmp eq i32 %53, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %84, align 8, !tbaa !37
  %94 = or disjoint i32 %52, %45
  %95 = or disjoint i32 %94, %38
  %96 = or disjoint i32 %95, %32
  br label %97

97:                                               ; preds = %92, %102
  %98 = phi ptr [ %93, %92 ], [ %100, %102 ]
  %99 = phi i32 [ 0, %92 ], [ %103, %102 ]
  %100 = load ptr, ptr %98, align 8, !tbaa !134
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  store ptr %100, ptr %84, align 8, !tbaa !37
  %103 = add nuw i32 %99, 1
  %104 = icmp eq i32 %103, %96
  br i1 %104, label %105, label %97, !llvm.loop !156

105:                                              ; preds = %102, %97, %88
  %106 = load ptr, ptr %84, align 8, !tbaa !37
  %107 = getelementptr inbounds %struct.TextLine, ptr %106, i64 0, i32 4
  %108 = load i32, ptr %107, align 8, !tbaa !63
  %109 = tail call i32 @llvm.umin.i32(i32 %108, i32 %27)
  store i32 %109, ptr %85, align 4, !tbaa !139
  br label %110

110:                                              ; preds = %83, %105
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %2) #24
  switch i8 %10, label %173 [
    i8 11, label %111
    i8 12, label %117
    i8 13, label %129
    i8 14, label %146
  ]

111:                                              ; preds = %110
  %112 = sext i32 %54 to i64
  %113 = getelementptr inbounds i8, ptr %7, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !34
  %115 = zext i8 %114 to i32
  %116 = add nsw i32 %4, 9
  store i32 %116, ptr %3, align 4, !tbaa !139
  br label %173

117:                                              ; preds = %110
  %118 = sext i32 %54 to i64
  %119 = getelementptr inbounds i8, ptr %7, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !34
  store i8 %120, ptr %2, align 1, !tbaa !34
  %121 = add nsw i32 %4, 9
  store i32 %121, ptr %3, align 4, !tbaa !139
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %7, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !34
  %125 = getelementptr inbounds [7 x i8], ptr %2, i64 0, i64 1
  store i8 %124, ptr %125, align 1, !tbaa !34
  %126 = add nsw i32 %4, 10
  store i32 %126, ptr %3, align 4, !tbaa !139
  %127 = getelementptr inbounds [7 x i8], ptr %2, i64 0, i64 2
  store i8 0, ptr %127, align 1, !tbaa !34
  %128 = call i32 @BLI_str_utf8_as_unicode(ptr noundef nonnull %2) #24
  br label %173

129:                                              ; preds = %110
  %130 = sext i32 %54 to i64
  %131 = getelementptr inbounds i8, ptr %7, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !34
  store i8 %132, ptr %2, align 1, !tbaa !34
  %133 = add nsw i32 %4, 9
  store i32 %133, ptr %3, align 4, !tbaa !139
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, ptr %7, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !34
  %137 = getelementptr inbounds [7 x i8], ptr %2, i64 0, i64 1
  store i8 %136, ptr %137, align 1, !tbaa !34
  %138 = add nsw i32 %4, 10
  store i32 %138, ptr %3, align 4, !tbaa !139
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, ptr %7, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !34
  %142 = getelementptr inbounds [7 x i8], ptr %2, i64 0, i64 2
  store i8 %141, ptr %142, align 1, !tbaa !34
  %143 = add nsw i32 %4, 11
  store i32 %143, ptr %3, align 4, !tbaa !139
  %144 = getelementptr inbounds [7 x i8], ptr %2, i64 0, i64 3
  store i8 0, ptr %144, align 1, !tbaa !34
  %145 = call i32 @BLI_str_utf8_as_unicode(ptr noundef nonnull %2) #24
  br label %173

146:                                              ; preds = %110
  %147 = sext i32 %54 to i64
  %148 = getelementptr inbounds i8, ptr %7, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !34
  %150 = zext i8 %149 to i32
  %151 = add nsw i32 %4, 7
  store i32 %151, ptr %3, align 4, !tbaa !139
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, ptr %7, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !34
  %155 = zext i8 %154 to i32
  %156 = add nsw i32 %4, 6
  store i32 %156, ptr %3, align 4, !tbaa !139
  %157 = shl nuw nsw i32 %150, 16
  %158 = shl nuw nsw i32 %155, 8
  %159 = or disjoint i32 %158, %157
  %160 = sext i32 %156 to i64
  %161 = getelementptr inbounds i8, ptr %7, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !34
  %163 = zext i8 %162 to i32
  %164 = or disjoint i32 %159, %163
  %165 = add nsw i32 %4, 5
  store i32 %165, ptr %3, align 4, !tbaa !139
  %166 = shl nuw i32 %164, 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i8, ptr %7, i64 %167
  %169 = load i8, ptr %168, align 1, !tbaa !34
  %170 = zext i8 %169 to i32
  %171 = or disjoint i32 %166, %170
  %172 = add nsw i32 %4, 4
  store i32 %172, ptr %3, align 4, !tbaa !139
  br label %173

173:                                              ; preds = %110, %111, %117, %129, %146
  %174 = phi i32 [ %171, %146 ], [ %145, %129 ], [ %128, %117 ], [ %115, %111 ], [ 0, %110 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #24
  %175 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %176 = load i32, ptr %175, align 8, !tbaa !57
  %177 = lshr i32 %176, 10
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  %180 = call fastcc zeroext i8 @txt_add_char_intern(ptr noundef %0, i32 noundef %174, i8 noundef zeroext %179), !range !141
  br label %969

181:                                              ; preds = %13, %13, %13, %13
  %182 = add nsw i32 %4, 2
  store i32 %182, ptr %3, align 8, !tbaa !54
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, ptr %7, i64 %183
  %185 = load i8, ptr %184, align 1, !tbaa !34
  %186 = add nsw i32 %4, 3
  store i32 %186, ptr %3, align 4, !tbaa !139
  %187 = zext i8 %185 to i32
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i8, ptr %7, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !34
  %191 = zext i8 %190 to i32
  %192 = shl nuw nsw i32 %191, 8
  %193 = or disjoint i32 %192, %187
  %194 = add nsw i32 %4, 4
  store i32 %194, ptr %3, align 4, !tbaa !139
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, ptr %7, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !34
  %198 = zext i8 %197 to i32
  %199 = add nsw i32 %4, 5
  store i32 %199, ptr %3, align 4, !tbaa !139
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, ptr %7, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !34
  %203 = zext i8 %202 to i32
  %204 = shl nuw nsw i32 %203, 8
  %205 = or disjoint i32 %204, %198
  %206 = add nsw i32 %4, 6
  store i32 %206, ptr %3, align 4, !tbaa !139
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, ptr %7, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !34
  %210 = zext i8 %209 to i32
  %211 = shl nuw nsw i32 %210, 16
  %212 = or disjoint i32 %205, %211
  %213 = add nsw i32 %4, 7
  store i32 %213, ptr %3, align 4, !tbaa !139
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, ptr %7, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !34
  %217 = zext i8 %216 to i32
  %218 = shl nuw i32 %217, 24
  %219 = or disjoint i32 %212, %218
  %220 = add nsw i32 %4, 8
  store i32 %220, ptr %3, align 4, !tbaa !139
  %221 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %222 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %223 = load ptr, ptr %221, align 8, !tbaa !37
  %224 = icmp eq ptr %223, null
  br i1 %224, label %249, label %225

225:                                              ; preds = %181
  %226 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %227 = load ptr, ptr %226, align 8, !tbaa !64
  store ptr %227, ptr %221, align 8, !tbaa !37
  %228 = icmp eq i32 %219, 0
  br i1 %228, label %242, label %229

229:                                              ; preds = %225
  %230 = load ptr, ptr %221, align 8, !tbaa !37
  %231 = or disjoint i32 %218, %211
  %232 = or disjoint i32 %231, %204
  %233 = or disjoint i32 %232, %198
  br label %234

234:                                              ; preds = %229, %239
  %235 = phi ptr [ %230, %229 ], [ %237, %239 ]
  %236 = phi i32 [ 0, %229 ], [ %240, %239 ]
  %237 = load ptr, ptr %235, align 8, !tbaa !134
  %238 = icmp eq ptr %237, null
  br i1 %238, label %242, label %239

239:                                              ; preds = %234
  store ptr %237, ptr %221, align 8, !tbaa !37
  %240 = add nuw i32 %236, 1
  %241 = icmp eq i32 %240, %233
  br i1 %241, label %242, label %234, !llvm.loop !156

242:                                              ; preds = %239, %234, %225
  %243 = load ptr, ptr %221, align 8, !tbaa !37
  %244 = getelementptr inbounds %struct.TextLine, ptr %243, i64 0, i32 4
  %245 = load i32, ptr %244, align 8, !tbaa !63
  %246 = tail call i32 @llvm.umin.i32(i32 %245, i32 %193)
  store i32 %246, ptr %222, align 4, !tbaa !139
  %247 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %243, ptr %247, align 8, !tbaa !67
  %248 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %246, ptr %248, align 4, !tbaa !68
  br label %249

249:                                              ; preds = %181, %242
  %250 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %251 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %252 = load ptr, ptr %250, align 8, !tbaa !37
  %253 = icmp eq ptr %252, null
  br i1 %253, label %276, label %254

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %256 = load ptr, ptr %255, align 8, !tbaa !64
  store ptr %256, ptr %250, align 8, !tbaa !37
  %257 = icmp eq i32 %219, 0
  br i1 %257, label %271, label %258

258:                                              ; preds = %254
  %259 = load ptr, ptr %250, align 8, !tbaa !37
  %260 = or disjoint i32 %218, %211
  %261 = or disjoint i32 %260, %204
  %262 = or disjoint i32 %261, %198
  br label %263

263:                                              ; preds = %258, %268
  %264 = phi ptr [ %259, %258 ], [ %266, %268 ]
  %265 = phi i32 [ 0, %258 ], [ %269, %268 ]
  %266 = load ptr, ptr %264, align 8, !tbaa !134
  %267 = icmp eq ptr %266, null
  br i1 %267, label %271, label %268

268:                                              ; preds = %263
  store ptr %266, ptr %250, align 8, !tbaa !37
  %269 = add nuw i32 %265, 1
  %270 = icmp eq i32 %269, %262
  br i1 %270, label %271, label %263, !llvm.loop !156

271:                                              ; preds = %268, %263, %254
  %272 = load ptr, ptr %250, align 8, !tbaa !37
  %273 = getelementptr inbounds %struct.TextLine, ptr %272, i64 0, i32 4
  %274 = load i32, ptr %273, align 8, !tbaa !63
  %275 = tail call i32 @llvm.umin.i32(i32 %274, i32 %193)
  store i32 %275, ptr %251, align 4, !tbaa !139
  br label %276

276:                                              ; preds = %249, %271
  %277 = add i32 %4, -6
  %278 = add i32 %277, %14
  store i32 %278, ptr %3, align 8, !tbaa !54
  tail call void @txt_move_right(ptr noundef %0, i8 noundef zeroext 0)
  tail call void @txt_backspace_char(ptr noundef %0)
  br label %969

279:                                              ; preds = %13, %13, %13, %13
  %280 = add nsw i32 %4, 2
  store i32 %280, ptr %3, align 8, !tbaa !54
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8, ptr %7, i64 %281
  %283 = load i8, ptr %282, align 1, !tbaa !34
  %284 = add nsw i32 %4, 3
  store i32 %284, ptr %3, align 4, !tbaa !139
  %285 = zext i8 %283 to i32
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i8, ptr %7, i64 %286
  %288 = load i8, ptr %287, align 1, !tbaa !34
  %289 = zext i8 %288 to i32
  %290 = shl nuw nsw i32 %289, 8
  %291 = or disjoint i32 %290, %285
  %292 = add nsw i32 %4, 4
  store i32 %292, ptr %3, align 4, !tbaa !139
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8, ptr %7, i64 %293
  %295 = load i8, ptr %294, align 1, !tbaa !34
  %296 = zext i8 %295 to i32
  %297 = add nsw i32 %4, 5
  store i32 %297, ptr %3, align 4, !tbaa !139
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, ptr %7, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !34
  %301 = zext i8 %300 to i32
  %302 = shl nuw nsw i32 %301, 8
  %303 = or disjoint i32 %302, %296
  %304 = add nsw i32 %4, 6
  store i32 %304, ptr %3, align 4, !tbaa !139
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, ptr %7, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !34
  %308 = zext i8 %307 to i32
  %309 = shl nuw nsw i32 %308, 16
  %310 = or disjoint i32 %303, %309
  %311 = add nsw i32 %4, 7
  store i32 %311, ptr %3, align 4, !tbaa !139
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, ptr %7, i64 %312
  %314 = load i8, ptr %313, align 1, !tbaa !34
  %315 = zext i8 %314 to i32
  %316 = shl nuw i32 %315, 24
  %317 = or disjoint i32 %310, %316
  %318 = add nsw i32 %4, 8
  store i32 %318, ptr %3, align 4, !tbaa !139
  %319 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %320 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %321 = load ptr, ptr %319, align 8, !tbaa !37
  %322 = icmp eq ptr %321, null
  br i1 %322, label %347, label %323

323:                                              ; preds = %279
  %324 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %325 = load ptr, ptr %324, align 8, !tbaa !64
  store ptr %325, ptr %319, align 8, !tbaa !37
  %326 = icmp eq i32 %317, 0
  br i1 %326, label %340, label %327

327:                                              ; preds = %323
  %328 = load ptr, ptr %319, align 8, !tbaa !37
  %329 = or disjoint i32 %316, %309
  %330 = or disjoint i32 %329, %302
  %331 = or disjoint i32 %330, %296
  br label %332

332:                                              ; preds = %327, %337
  %333 = phi ptr [ %328, %327 ], [ %335, %337 ]
  %334 = phi i32 [ 0, %327 ], [ %338, %337 ]
  %335 = load ptr, ptr %333, align 8, !tbaa !134
  %336 = icmp eq ptr %335, null
  br i1 %336, label %340, label %337

337:                                              ; preds = %332
  store ptr %335, ptr %319, align 8, !tbaa !37
  %338 = add nuw i32 %334, 1
  %339 = icmp eq i32 %338, %331
  br i1 %339, label %340, label %332, !llvm.loop !156

340:                                              ; preds = %337, %332, %323
  %341 = load ptr, ptr %319, align 8, !tbaa !37
  %342 = getelementptr inbounds %struct.TextLine, ptr %341, i64 0, i32 4
  %343 = load i32, ptr %342, align 8, !tbaa !63
  %344 = tail call i32 @llvm.umin.i32(i32 %343, i32 %291)
  store i32 %344, ptr %320, align 4, !tbaa !139
  %345 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %341, ptr %345, align 8, !tbaa !67
  %346 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %344, ptr %346, align 4, !tbaa !68
  br label %347

347:                                              ; preds = %279, %340
  %348 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %349 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %350 = load ptr, ptr %348, align 8, !tbaa !37
  %351 = icmp eq ptr %350, null
  br i1 %351, label %374, label %352

352:                                              ; preds = %347
  %353 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %354 = load ptr, ptr %353, align 8, !tbaa !64
  store ptr %354, ptr %348, align 8, !tbaa !37
  %355 = icmp eq i32 %317, 0
  br i1 %355, label %369, label %356

356:                                              ; preds = %352
  %357 = load ptr, ptr %348, align 8, !tbaa !37
  %358 = or disjoint i32 %316, %309
  %359 = or disjoint i32 %358, %302
  %360 = or disjoint i32 %359, %296
  br label %361

361:                                              ; preds = %356, %366
  %362 = phi ptr [ %357, %356 ], [ %364, %366 ]
  %363 = phi i32 [ 0, %356 ], [ %367, %366 ]
  %364 = load ptr, ptr %362, align 8, !tbaa !134
  %365 = icmp eq ptr %364, null
  br i1 %365, label %369, label %366

366:                                              ; preds = %361
  store ptr %364, ptr %348, align 8, !tbaa !37
  %367 = add nuw i32 %363, 1
  %368 = icmp eq i32 %367, %360
  br i1 %368, label %369, label %361, !llvm.loop !156

369:                                              ; preds = %366, %361, %352
  %370 = load ptr, ptr %348, align 8, !tbaa !37
  %371 = getelementptr inbounds %struct.TextLine, ptr %370, i64 0, i32 4
  %372 = load i32, ptr %371, align 8, !tbaa !63
  %373 = tail call i32 @llvm.umin.i32(i32 %372, i32 %291)
  store i32 %373, ptr %349, align 4, !tbaa !139
  br label %374

374:                                              ; preds = %347, %369
  %375 = add i32 %4, -10
  %376 = add i32 %375, %14
  store i32 %376, ptr %3, align 8, !tbaa !54
  tail call void @txt_delete_char(ptr noundef %0)
  br label %969

377:                                              ; preds = %13
  %378 = add nsw i32 %4, 2
  store i32 %378, ptr %3, align 8, !tbaa !54
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i8, ptr %7, i64 %379
  %381 = load i8, ptr %380, align 1, !tbaa !34
  %382 = add nsw i32 %4, 3
  store i32 %382, ptr %3, align 4, !tbaa !139
  %383 = zext i8 %381 to i32
  %384 = sext i32 %382 to i64
  %385 = getelementptr inbounds i8, ptr %7, i64 %384
  %386 = load i8, ptr %385, align 1, !tbaa !34
  %387 = zext i8 %386 to i32
  %388 = shl nuw nsw i32 %387, 8
  %389 = or disjoint i32 %388, %383
  %390 = add nsw i32 %4, 4
  store i32 %390, ptr %3, align 4, !tbaa !139
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i8, ptr %7, i64 %391
  %393 = load i8, ptr %392, align 1, !tbaa !34
  %394 = zext i8 %393 to i32
  %395 = add nsw i32 %4, 5
  store i32 %395, ptr %3, align 4, !tbaa !139
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i8, ptr %7, i64 %396
  %398 = load i8, ptr %397, align 1, !tbaa !34
  %399 = zext i8 %398 to i32
  %400 = shl nuw nsw i32 %399, 8
  %401 = add nsw i32 %4, 6
  store i32 %401, ptr %3, align 4, !tbaa !139
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8, ptr %7, i64 %402
  %404 = load i8, ptr %403, align 1, !tbaa !34
  %405 = zext i8 %404 to i32
  %406 = shl nuw nsw i32 %405, 16
  %407 = add nsw i32 %4, 7
  store i32 %407, ptr %3, align 4, !tbaa !139
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i8, ptr %7, i64 %408
  %410 = load i8, ptr %409, align 1, !tbaa !34
  %411 = zext i8 %410 to i32
  %412 = shl nuw i32 %411, 24
  %413 = add nsw i32 %4, 8
  store i32 %413, ptr %3, align 4, !tbaa !139
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8, ptr %7, i64 %414
  %416 = load i8, ptr %415, align 1, !tbaa !34
  %417 = add nsw i32 %4, 9
  store i32 %417, ptr %3, align 4, !tbaa !139
  %418 = zext i8 %416 to i32
  %419 = sext i32 %417 to i64
  %420 = getelementptr inbounds i8, ptr %7, i64 %419
  %421 = load i8, ptr %420, align 1, !tbaa !34
  %422 = zext i8 %421 to i32
  %423 = shl nuw nsw i32 %422, 8
  %424 = or disjoint i32 %423, %418
  %425 = add nsw i32 %4, 10
  store i32 %425, ptr %3, align 4, !tbaa !139
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i8, ptr %7, i64 %426
  %428 = load i8, ptr %427, align 1, !tbaa !34
  %429 = zext i8 %428 to i32
  %430 = add nsw i32 %4, 11
  store i32 %430, ptr %3, align 4, !tbaa !139
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i8, ptr %7, i64 %431
  %433 = load i8, ptr %432, align 1, !tbaa !34
  %434 = zext i8 %433 to i32
  %435 = shl nuw nsw i32 %434, 8
  %436 = or disjoint i32 %435, %429
  %437 = add nsw i32 %4, 12
  store i32 %437, ptr %3, align 4, !tbaa !139
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i8, ptr %7, i64 %438
  %440 = load i8, ptr %439, align 1, !tbaa !34
  %441 = zext i8 %440 to i32
  %442 = shl nuw nsw i32 %441, 16
  %443 = or disjoint i32 %436, %442
  %444 = add nsw i32 %4, 13
  store i32 %444, ptr %3, align 4, !tbaa !139
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i8, ptr %7, i64 %445
  %447 = load i8, ptr %446, align 1, !tbaa !34
  %448 = zext i8 %447 to i32
  %449 = shl nuw i32 %448, 24
  %450 = or disjoint i32 %443, %449
  %451 = add nsw i32 %4, 14
  store i32 %451, ptr %3, align 4, !tbaa !139
  %452 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %453 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %454 = load ptr, ptr %452, align 8, !tbaa !37
  %455 = icmp eq ptr %454, null
  br i1 %455, label %483, label %456

456:                                              ; preds = %377
  %457 = or disjoint i32 %400, %394
  %458 = or disjoint i32 %457, %406
  %459 = or disjoint i32 %458, %412
  %460 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %461 = load ptr, ptr %460, align 8, !tbaa !64
  store ptr %461, ptr %452, align 8, !tbaa !37
  %462 = icmp eq i32 %459, 0
  br i1 %462, label %476, label %463

463:                                              ; preds = %456
  %464 = load ptr, ptr %452, align 8, !tbaa !37
  %465 = or disjoint i32 %412, %406
  %466 = or disjoint i32 %465, %400
  %467 = or disjoint i32 %466, %394
  br label %468

468:                                              ; preds = %463, %473
  %469 = phi ptr [ %464, %463 ], [ %471, %473 ]
  %470 = phi i32 [ 0, %463 ], [ %474, %473 ]
  %471 = load ptr, ptr %469, align 8, !tbaa !134
  %472 = icmp eq ptr %471, null
  br i1 %472, label %476, label %473

473:                                              ; preds = %468
  store ptr %471, ptr %452, align 8, !tbaa !37
  %474 = add nuw i32 %470, 1
  %475 = icmp eq i32 %474, %467
  br i1 %475, label %476, label %468, !llvm.loop !156

476:                                              ; preds = %473, %468, %456
  %477 = load ptr, ptr %452, align 8, !tbaa !37
  %478 = getelementptr inbounds %struct.TextLine, ptr %477, i64 0, i32 4
  %479 = load i32, ptr %478, align 8, !tbaa !63
  %480 = tail call i32 @llvm.umin.i32(i32 %479, i32 %389)
  store i32 %480, ptr %453, align 4, !tbaa !139
  %481 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %477, ptr %481, align 8, !tbaa !67
  %482 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %480, ptr %482, align 4, !tbaa !68
  br label %483

483:                                              ; preds = %377, %476
  %484 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %485 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %486 = load ptr, ptr %484, align 8, !tbaa !37
  %487 = icmp eq ptr %486, null
  br i1 %487, label %510, label %488

488:                                              ; preds = %483
  %489 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %490 = load ptr, ptr %489, align 8, !tbaa !64
  store ptr %490, ptr %484, align 8, !tbaa !37
  %491 = icmp eq i32 %450, 0
  br i1 %491, label %505, label %492

492:                                              ; preds = %488
  %493 = load ptr, ptr %484, align 8, !tbaa !37
  %494 = or disjoint i32 %449, %442
  %495 = or disjoint i32 %494, %435
  %496 = or disjoint i32 %495, %429
  br label %497

497:                                              ; preds = %492, %502
  %498 = phi ptr [ %493, %492 ], [ %500, %502 ]
  %499 = phi i32 [ 0, %492 ], [ %503, %502 ]
  %500 = load ptr, ptr %498, align 8, !tbaa !134
  %501 = icmp eq ptr %500, null
  br i1 %501, label %505, label %502

502:                                              ; preds = %497
  store ptr %500, ptr %484, align 8, !tbaa !37
  %503 = add nuw i32 %499, 1
  %504 = icmp eq i32 %503, %496
  br i1 %504, label %505, label %497, !llvm.loop !156

505:                                              ; preds = %502, %497, %488
  %506 = load ptr, ptr %484, align 8, !tbaa !37
  %507 = getelementptr inbounds %struct.TextLine, ptr %506, i64 0, i32 4
  %508 = load i32, ptr %507, align 8, !tbaa !63
  %509 = tail call i32 @llvm.umin.i32(i32 %508, i32 %424)
  store i32 %509, ptr %485, align 4, !tbaa !139
  br label %510

510:                                              ; preds = %483, %505
  %511 = sext i32 %451 to i64
  %512 = getelementptr inbounds i8, ptr %7, i64 %511
  %513 = load i8, ptr %512, align 1, !tbaa !34
  %514 = zext i8 %513 to i32
  %515 = add nsw i32 %4, 15
  store i32 %515, ptr %3, align 4, !tbaa !139
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i8, ptr %7, i64 %516
  %518 = load i8, ptr %517, align 1, !tbaa !34
  %519 = zext i8 %518 to i32
  %520 = shl nuw nsw i32 %519, 8
  %521 = or disjoint i32 %520, %514
  %522 = add nsw i32 %4, 16
  store i32 %522, ptr %3, align 4, !tbaa !139
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i8, ptr %7, i64 %523
  %525 = load i8, ptr %524, align 1, !tbaa !34
  %526 = zext i8 %525 to i32
  %527 = shl nuw nsw i32 %526, 16
  %528 = or disjoint i32 %521, %527
  %529 = add nsw i32 %4, 17
  store i32 %529, ptr %3, align 4, !tbaa !139
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i8, ptr %7, i64 %530
  %532 = load i8, ptr %531, align 1, !tbaa !34
  %533 = zext i8 %532 to i32
  %534 = shl nuw i32 %533, 24
  %535 = or disjoint i32 %528, %534
  %536 = add i32 %4, 22
  %537 = add i32 %536, %535
  store i32 %537, ptr %3, align 8, !tbaa !54
  tail call fastcc void @txt_delete_sel(ptr noundef %0)
  br label %969

538:                                              ; preds = %13
  %539 = add nsw i32 %4, 2
  store i32 %539, ptr %3, align 8, !tbaa !54
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i8, ptr %7, i64 %540
  %542 = load i8, ptr %541, align 1, !tbaa !34
  %543 = add nsw i32 %4, 3
  store i32 %543, ptr %3, align 4, !tbaa !139
  %544 = zext i8 %542 to i32
  %545 = sext i32 %543 to i64
  %546 = getelementptr inbounds i8, ptr %7, i64 %545
  %547 = load i8, ptr %546, align 1, !tbaa !34
  %548 = zext i8 %547 to i32
  %549 = shl nuw nsw i32 %548, 8
  %550 = or disjoint i32 %549, %544
  %551 = add nsw i32 %4, 4
  store i32 %551, ptr %3, align 4, !tbaa !139
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i8, ptr %7, i64 %552
  %554 = load i8, ptr %553, align 1, !tbaa !34
  %555 = zext i8 %554 to i32
  %556 = add nsw i32 %4, 5
  store i32 %556, ptr %3, align 4, !tbaa !139
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds i8, ptr %7, i64 %557
  %559 = load i8, ptr %558, align 1, !tbaa !34
  %560 = zext i8 %559 to i32
  %561 = shl nuw nsw i32 %560, 8
  %562 = or disjoint i32 %561, %555
  %563 = add nsw i32 %4, 6
  store i32 %563, ptr %3, align 4, !tbaa !139
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i8, ptr %7, i64 %564
  %566 = load i8, ptr %565, align 1, !tbaa !34
  %567 = zext i8 %566 to i32
  %568 = shl nuw nsw i32 %567, 16
  %569 = or disjoint i32 %562, %568
  %570 = add nsw i32 %4, 7
  store i32 %570, ptr %3, align 4, !tbaa !139
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i8, ptr %7, i64 %571
  %573 = load i8, ptr %572, align 1, !tbaa !34
  %574 = zext i8 %573 to i32
  %575 = shl nuw i32 %574, 24
  %576 = or disjoint i32 %569, %575
  %577 = add nsw i32 %4, 14
  store i32 %577, ptr %3, align 4, !tbaa !139
  %578 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %579 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %580 = load ptr, ptr %578, align 8, !tbaa !37
  %581 = icmp eq ptr %580, null
  br i1 %581, label %606, label %582

582:                                              ; preds = %538
  %583 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %584 = load ptr, ptr %583, align 8, !tbaa !64
  store ptr %584, ptr %578, align 8, !tbaa !37
  %585 = icmp eq i32 %576, 0
  br i1 %585, label %599, label %586

586:                                              ; preds = %582
  %587 = load ptr, ptr %578, align 8, !tbaa !37
  %588 = or disjoint i32 %575, %568
  %589 = or disjoint i32 %588, %561
  %590 = or disjoint i32 %589, %555
  br label %591

591:                                              ; preds = %586, %596
  %592 = phi ptr [ %587, %586 ], [ %594, %596 ]
  %593 = phi i32 [ 0, %586 ], [ %597, %596 ]
  %594 = load ptr, ptr %592, align 8, !tbaa !134
  %595 = icmp eq ptr %594, null
  br i1 %595, label %599, label %596

596:                                              ; preds = %591
  store ptr %594, ptr %578, align 8, !tbaa !37
  %597 = add nuw i32 %593, 1
  %598 = icmp eq i32 %597, %590
  br i1 %598, label %599, label %591, !llvm.loop !156

599:                                              ; preds = %596, %591, %582
  %600 = load ptr, ptr %578, align 8, !tbaa !37
  %601 = getelementptr inbounds %struct.TextLine, ptr %600, i64 0, i32 4
  %602 = load i32, ptr %601, align 8, !tbaa !63
  %603 = tail call i32 @llvm.umin.i32(i32 %602, i32 %550)
  store i32 %603, ptr %579, align 4, !tbaa !139
  %604 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %600, ptr %604, align 8, !tbaa !67
  %605 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %603, ptr %605, align 4, !tbaa !68
  br label %606

606:                                              ; preds = %538, %599
  %607 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %608 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %609 = load ptr, ptr %607, align 8, !tbaa !37
  %610 = icmp eq ptr %609, null
  br i1 %610, label %633, label %611

611:                                              ; preds = %606
  %612 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %613 = load ptr, ptr %612, align 8, !tbaa !64
  store ptr %613, ptr %607, align 8, !tbaa !37
  %614 = icmp eq i32 %576, 0
  br i1 %614, label %628, label %615

615:                                              ; preds = %611
  %616 = load ptr, ptr %607, align 8, !tbaa !37
  %617 = or disjoint i32 %575, %568
  %618 = or disjoint i32 %617, %561
  %619 = or disjoint i32 %618, %555
  br label %620

620:                                              ; preds = %615, %625
  %621 = phi ptr [ %616, %615 ], [ %623, %625 ]
  %622 = phi i32 [ 0, %615 ], [ %626, %625 ]
  %623 = load ptr, ptr %621, align 8, !tbaa !134
  %624 = icmp eq ptr %623, null
  br i1 %624, label %628, label %625

625:                                              ; preds = %620
  store ptr %623, ptr %607, align 8, !tbaa !37
  %626 = add nuw i32 %622, 1
  %627 = icmp eq i32 %626, %619
  br i1 %627, label %628, label %620, !llvm.loop !156

628:                                              ; preds = %625, %620, %611
  %629 = load ptr, ptr %607, align 8, !tbaa !37
  %630 = getelementptr inbounds %struct.TextLine, ptr %629, i64 0, i32 4
  %631 = load i32, ptr %630, align 8, !tbaa !63
  %632 = tail call i32 @llvm.umin.i32(i32 %631, i32 %550)
  store i32 %632, ptr %608, align 4, !tbaa !139
  br label %633

633:                                              ; preds = %606, %628
  %634 = sext i32 %577 to i64
  %635 = getelementptr inbounds i8, ptr %7, i64 %634
  %636 = load i8, ptr %635, align 1, !tbaa !34
  %637 = zext i8 %636 to i32
  %638 = add nsw i32 %4, 15
  store i32 %638, ptr %3, align 4, !tbaa !139
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds i8, ptr %7, i64 %639
  %641 = load i8, ptr %640, align 1, !tbaa !34
  %642 = zext i8 %641 to i32
  %643 = shl nuw nsw i32 %642, 8
  %644 = or disjoint i32 %643, %637
  %645 = add nsw i32 %4, 16
  store i32 %645, ptr %3, align 4, !tbaa !139
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds i8, ptr %7, i64 %646
  %648 = load i8, ptr %647, align 1, !tbaa !34
  %649 = zext i8 %648 to i32
  %650 = shl nuw nsw i32 %649, 16
  %651 = or disjoint i32 %644, %650
  %652 = add nsw i32 %4, 17
  store i32 %652, ptr %3, align 4, !tbaa !139
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds i8, ptr %7, i64 %653
  %655 = load i8, ptr %654, align 1, !tbaa !34
  %656 = zext i8 %655 to i32
  %657 = shl nuw i32 %656, 24
  %658 = or disjoint i32 %651, %657
  %659 = add nsw i32 %4, 18
  store i32 %659, ptr %3, align 4, !tbaa !139
  %660 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %661 = add i32 %658, 1
  %662 = zext i32 %661 to i64
  %663 = tail call ptr %660(i64 noundef %662, ptr noundef nonnull @.str.10) #24
  %664 = load ptr, ptr %6, align 8, !tbaa !52
  %665 = load i32, ptr %3, align 8, !tbaa !54
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds i8, ptr %664, i64 %666
  %668 = zext i32 %658 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %663, ptr align 1 %667, i64 %668, i1 false)
  %669 = load i32, ptr %3, align 8, !tbaa !54
  %670 = add i32 %669, %658
  store i32 %670, ptr %3, align 8, !tbaa !54
  %671 = getelementptr inbounds i8, ptr %663, i64 %668
  store i8 0, ptr %671, align 1, !tbaa !34
  tail call void @txt_insert_buf(ptr noundef %0, ptr noundef %663)
  %672 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %672(ptr noundef %663) #24
  %673 = load i32, ptr %3, align 8, !tbaa !54
  %674 = add nsw i32 %673, 4
  store i32 %674, ptr %3, align 8, !tbaa !54
  br label %969

675:                                              ; preds = %13, %13, %13, %13, %13, %13, %13
  %676 = add nsw i32 %4, 2
  store i32 %676, ptr %3, align 8, !tbaa !54
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds i8, ptr %7, i64 %677
  %679 = load i8, ptr %678, align 1, !tbaa !34
  %680 = add nsw i32 %4, 3
  store i32 %680, ptr %3, align 4, !tbaa !139
  %681 = zext i8 %679 to i32
  %682 = sext i32 %680 to i64
  %683 = getelementptr inbounds i8, ptr %7, i64 %682
  %684 = load i8, ptr %683, align 1, !tbaa !34
  %685 = zext i8 %684 to i32
  %686 = shl nuw nsw i32 %685, 8
  %687 = or disjoint i32 %686, %681
  %688 = add nsw i32 %4, 4
  store i32 %688, ptr %3, align 4, !tbaa !139
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds i8, ptr %7, i64 %689
  %691 = load i8, ptr %690, align 1, !tbaa !34
  %692 = zext i8 %691 to i32
  %693 = add nsw i32 %4, 5
  store i32 %693, ptr %3, align 4, !tbaa !139
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds i8, ptr %7, i64 %694
  %696 = load i8, ptr %695, align 1, !tbaa !34
  %697 = zext i8 %696 to i32
  %698 = shl nuw nsw i32 %697, 8
  %699 = or disjoint i32 %698, %692
  %700 = add nsw i32 %4, 6
  store i32 %700, ptr %3, align 4, !tbaa !139
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i8, ptr %7, i64 %701
  %703 = load i8, ptr %702, align 1, !tbaa !34
  %704 = zext i8 %703 to i32
  %705 = shl nuw nsw i32 %704, 16
  %706 = or disjoint i32 %699, %705
  %707 = add nsw i32 %4, 7
  store i32 %707, ptr %3, align 4, !tbaa !139
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds i8, ptr %7, i64 %708
  %710 = load i8, ptr %709, align 1, !tbaa !34
  %711 = zext i8 %710 to i32
  %712 = shl nuw i32 %711, 24
  %713 = or disjoint i32 %706, %712
  %714 = add nsw i32 %4, 8
  store i32 %714, ptr %3, align 4, !tbaa !139
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i8, ptr %7, i64 %715
  %717 = load i8, ptr %716, align 1, !tbaa !34
  %718 = add nsw i32 %4, 9
  store i32 %718, ptr %3, align 4, !tbaa !139
  %719 = zext i8 %717 to i32
  %720 = sext i32 %718 to i64
  %721 = getelementptr inbounds i8, ptr %7, i64 %720
  %722 = load i8, ptr %721, align 1, !tbaa !34
  %723 = zext i8 %722 to i32
  %724 = shl nuw nsw i32 %723, 8
  %725 = or disjoint i32 %724, %719
  %726 = add nsw i32 %4, 10
  store i32 %726, ptr %3, align 4, !tbaa !139
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds i8, ptr %7, i64 %727
  %729 = load i8, ptr %728, align 1, !tbaa !34
  %730 = zext i8 %729 to i32
  %731 = add nsw i32 %4, 11
  store i32 %731, ptr %3, align 4, !tbaa !139
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds i8, ptr %7, i64 %732
  %734 = load i8, ptr %733, align 1, !tbaa !34
  %735 = zext i8 %734 to i32
  %736 = shl nuw nsw i32 %735, 8
  %737 = or disjoint i32 %736, %730
  %738 = add nsw i32 %4, 12
  store i32 %738, ptr %3, align 4, !tbaa !139
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds i8, ptr %7, i64 %739
  %741 = load i8, ptr %740, align 1, !tbaa !34
  %742 = zext i8 %741 to i32
  %743 = shl nuw nsw i32 %742, 16
  %744 = or disjoint i32 %737, %743
  %745 = add nsw i32 %4, 13
  store i32 %745, ptr %3, align 4, !tbaa !139
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds i8, ptr %7, i64 %746
  %748 = load i8, ptr %747, align 1, !tbaa !34
  %749 = zext i8 %748 to i32
  %750 = shl nuw i32 %749, 24
  %751 = or disjoint i32 %744, %750
  %752 = add nsw i32 %4, 14
  store i32 %752, ptr %3, align 4, !tbaa !139
  %753 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %754 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %755 = load ptr, ptr %753, align 8, !tbaa !37
  %756 = icmp eq ptr %755, null
  br i1 %756, label %781, label %757

757:                                              ; preds = %675
  %758 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %759 = load ptr, ptr %758, align 8, !tbaa !64
  store ptr %759, ptr %753, align 8, !tbaa !37
  %760 = icmp eq i32 %713, 0
  br i1 %760, label %774, label %761

761:                                              ; preds = %757
  %762 = load ptr, ptr %753, align 8, !tbaa !37
  %763 = or disjoint i32 %712, %705
  %764 = or disjoint i32 %763, %698
  %765 = or disjoint i32 %764, %692
  br label %766

766:                                              ; preds = %761, %771
  %767 = phi ptr [ %762, %761 ], [ %769, %771 ]
  %768 = phi i32 [ 0, %761 ], [ %772, %771 ]
  %769 = load ptr, ptr %767, align 8, !tbaa !134
  %770 = icmp eq ptr %769, null
  br i1 %770, label %774, label %771

771:                                              ; preds = %766
  store ptr %769, ptr %753, align 8, !tbaa !37
  %772 = add nuw i32 %768, 1
  %773 = icmp eq i32 %772, %765
  br i1 %773, label %774, label %766, !llvm.loop !156

774:                                              ; preds = %771, %766, %757
  %775 = load ptr, ptr %753, align 8, !tbaa !37
  %776 = getelementptr inbounds %struct.TextLine, ptr %775, i64 0, i32 4
  %777 = load i32, ptr %776, align 8, !tbaa !63
  %778 = tail call i32 @llvm.umin.i32(i32 %777, i32 %687)
  store i32 %778, ptr %754, align 4, !tbaa !139
  %779 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %775, ptr %779, align 8, !tbaa !67
  %780 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %778, ptr %780, align 4, !tbaa !68
  br label %781

781:                                              ; preds = %675, %774
  %782 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %783 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %784 = load ptr, ptr %782, align 8, !tbaa !37
  %785 = icmp eq ptr %784, null
  br i1 %785, label %808, label %786

786:                                              ; preds = %781
  %787 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %788 = load ptr, ptr %787, align 8, !tbaa !64
  store ptr %788, ptr %782, align 8, !tbaa !37
  %789 = icmp eq i32 %751, 0
  br i1 %789, label %803, label %790

790:                                              ; preds = %786
  %791 = load ptr, ptr %782, align 8, !tbaa !37
  %792 = or disjoint i32 %750, %743
  %793 = or disjoint i32 %792, %736
  %794 = or disjoint i32 %793, %730
  br label %795

795:                                              ; preds = %790, %800
  %796 = phi ptr [ %791, %790 ], [ %798, %800 ]
  %797 = phi i32 [ 0, %790 ], [ %801, %800 ]
  %798 = load ptr, ptr %796, align 8, !tbaa !134
  %799 = icmp eq ptr %798, null
  br i1 %799, label %803, label %800

800:                                              ; preds = %795
  store ptr %798, ptr %782, align 8, !tbaa !37
  %801 = add nuw i32 %797, 1
  %802 = icmp eq i32 %801, %794
  br i1 %802, label %803, label %795, !llvm.loop !156

803:                                              ; preds = %800, %795, %786
  %804 = load ptr, ptr %782, align 8, !tbaa !37
  %805 = getelementptr inbounds %struct.TextLine, ptr %804, i64 0, i32 4
  %806 = load i32, ptr %805, align 8, !tbaa !63
  %807 = tail call i32 @llvm.umin.i32(i32 %806, i32 %725)
  store i32 %807, ptr %783, align 4, !tbaa !139
  br label %808

808:                                              ; preds = %781, %803
  switch i8 %10, label %918 [
    i8 26, label %809
    i8 27, label %810
    i8 28, label %811
    i8 29, label %812
    i8 32, label %813
    i8 30, label %814
    i8 31, label %865
  ]

809:                                              ; preds = %808
  tail call void @txt_indent(ptr noundef %0)
  br label %918

810:                                              ; preds = %808
  tail call void @txt_unindent(ptr noundef %0)
  br label %918

811:                                              ; preds = %808
  tail call void @txt_comment(ptr noundef %0)
  br label %918

812:                                              ; preds = %808
  tail call void @txt_uncomment(ptr noundef %0)
  br label %918

813:                                              ; preds = %808
  tail call void @txt_duplicate_line(ptr noundef %0)
  br label %918

814:                                              ; preds = %808
  %815 = load ptr, ptr %753, align 8, !tbaa !37
  %816 = icmp eq ptr %815, null
  br i1 %816, label %839, label %817

817:                                              ; preds = %814
  %818 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %819 = load ptr, ptr %818, align 8, !tbaa !64
  store ptr %819, ptr %753, align 8, !tbaa !37
  %820 = icmp eq i32 %713, -1
  br i1 %820, label %834, label %821

821:                                              ; preds = %817
  %822 = load ptr, ptr %753, align 8, !tbaa !37
  %823 = or disjoint i32 %712, %705
  %824 = or disjoint i32 %823, %698
  %825 = or disjoint i32 %824, %692
  br label %826

826:                                              ; preds = %821, %831
  %827 = phi ptr [ %822, %821 ], [ %829, %831 ]
  %828 = phi i32 [ 0, %821 ], [ %832, %831 ]
  %829 = load ptr, ptr %827, align 8, !tbaa !134
  %830 = icmp eq ptr %829, null
  br i1 %830, label %834, label %831

831:                                              ; preds = %826
  store ptr %829, ptr %753, align 8, !tbaa !37
  %832 = add nuw i32 %828, 1
  %833 = icmp eq i32 %828, %825
  br i1 %833, label %834, label %826, !llvm.loop !156

834:                                              ; preds = %831, %826, %817
  %835 = load ptr, ptr %753, align 8, !tbaa !37
  %836 = getelementptr inbounds %struct.TextLine, ptr %835, i64 0, i32 4
  %837 = load i32, ptr %836, align 8, !tbaa !63
  %838 = tail call i32 @llvm.umin.i32(i32 %837, i32 %687)
  store i32 %838, ptr %754, align 4, !tbaa !139
  store ptr %835, ptr %782, align 8, !tbaa !67
  store i32 %838, ptr %783, align 4, !tbaa !68
  br label %839

839:                                              ; preds = %814, %834
  %840 = load ptr, ptr %782, align 8, !tbaa !37
  %841 = icmp eq ptr %840, null
  br i1 %841, label %864, label %842

842:                                              ; preds = %839
  %843 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %844 = load ptr, ptr %843, align 8, !tbaa !64
  store ptr %844, ptr %782, align 8, !tbaa !37
  %845 = icmp eq i32 %751, -1
  br i1 %845, label %859, label %846

846:                                              ; preds = %842
  %847 = load ptr, ptr %782, align 8, !tbaa !37
  %848 = or disjoint i32 %750, %743
  %849 = or disjoint i32 %848, %736
  %850 = or disjoint i32 %849, %730
  br label %851

851:                                              ; preds = %846, %856
  %852 = phi ptr [ %847, %846 ], [ %854, %856 ]
  %853 = phi i32 [ 0, %846 ], [ %857, %856 ]
  %854 = load ptr, ptr %852, align 8, !tbaa !134
  %855 = icmp eq ptr %854, null
  br i1 %855, label %859, label %856

856:                                              ; preds = %851
  store ptr %854, ptr %782, align 8, !tbaa !37
  %857 = add nuw i32 %853, 1
  %858 = icmp eq i32 %853, %850
  br i1 %858, label %859, label %851, !llvm.loop !156

859:                                              ; preds = %856, %851, %842
  %860 = load ptr, ptr %782, align 8, !tbaa !37
  %861 = getelementptr inbounds %struct.TextLine, ptr %860, i64 0, i32 4
  %862 = load i32, ptr %861, align 8, !tbaa !63
  %863 = tail call i32 @llvm.umin.i32(i32 %862, i32 %725)
  store i32 %863, ptr %783, align 4, !tbaa !139
  br label %864

864:                                              ; preds = %839, %859
  tail call void @txt_move_lines(ptr noundef %0, i32 noundef -1)
  br label %918

865:                                              ; preds = %808
  %866 = load ptr, ptr %753, align 8, !tbaa !37
  %867 = icmp eq ptr %866, null
  br i1 %867, label %891, label %868

868:                                              ; preds = %865
  %869 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %870 = load ptr, ptr %869, align 8, !tbaa !64
  store ptr %870, ptr %753, align 8, !tbaa !37
  %871 = icmp eq i32 %713, 1
  br i1 %871, label %886, label %872

872:                                              ; preds = %868
  %873 = load ptr, ptr %753, align 8, !tbaa !37
  %874 = or disjoint i32 %712, %705
  %875 = or disjoint i32 %874, %698
  %876 = or disjoint i32 %875, %692
  %877 = add i32 %876, -2
  br label %878

878:                                              ; preds = %872, %883
  %879 = phi ptr [ %873, %872 ], [ %881, %883 ]
  %880 = phi i32 [ 0, %872 ], [ %884, %883 ]
  %881 = load ptr, ptr %879, align 8, !tbaa !134
  %882 = icmp eq ptr %881, null
  br i1 %882, label %886, label %883

883:                                              ; preds = %878
  store ptr %881, ptr %753, align 8, !tbaa !37
  %884 = add nuw i32 %880, 1
  %885 = icmp eq i32 %880, %877
  br i1 %885, label %886, label %878, !llvm.loop !156

886:                                              ; preds = %883, %878, %868
  %887 = load ptr, ptr %753, align 8, !tbaa !37
  %888 = getelementptr inbounds %struct.TextLine, ptr %887, i64 0, i32 4
  %889 = load i32, ptr %888, align 8, !tbaa !63
  %890 = tail call i32 @llvm.umin.i32(i32 %889, i32 %687)
  store i32 %890, ptr %754, align 4, !tbaa !139
  store ptr %887, ptr %782, align 8, !tbaa !67
  store i32 %890, ptr %783, align 4, !tbaa !68
  br label %891

891:                                              ; preds = %865, %886
  %892 = load ptr, ptr %782, align 8, !tbaa !37
  %893 = icmp eq ptr %892, null
  br i1 %893, label %917, label %894

894:                                              ; preds = %891
  %895 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %896 = load ptr, ptr %895, align 8, !tbaa !64
  store ptr %896, ptr %782, align 8, !tbaa !37
  %897 = icmp eq i32 %751, 1
  br i1 %897, label %912, label %898

898:                                              ; preds = %894
  %899 = load ptr, ptr %782, align 8, !tbaa !37
  %900 = or disjoint i32 %750, %743
  %901 = or disjoint i32 %900, %736
  %902 = or disjoint i32 %901, %730
  %903 = add i32 %902, -2
  br label %904

904:                                              ; preds = %898, %909
  %905 = phi ptr [ %899, %898 ], [ %907, %909 ]
  %906 = phi i32 [ 0, %898 ], [ %910, %909 ]
  %907 = load ptr, ptr %905, align 8, !tbaa !134
  %908 = icmp eq ptr %907, null
  br i1 %908, label %912, label %909

909:                                              ; preds = %904
  store ptr %907, ptr %782, align 8, !tbaa !37
  %910 = add nuw i32 %906, 1
  %911 = icmp eq i32 %906, %903
  br i1 %911, label %912, label %904, !llvm.loop !156

912:                                              ; preds = %909, %904, %894
  %913 = load ptr, ptr %782, align 8, !tbaa !37
  %914 = getelementptr inbounds %struct.TextLine, ptr %913, i64 0, i32 4
  %915 = load i32, ptr %914, align 8, !tbaa !63
  %916 = tail call i32 @llvm.umin.i32(i32 %915, i32 %725)
  store i32 %916, ptr %783, align 4, !tbaa !139
  br label %917

917:                                              ; preds = %891, %912
  tail call void @txt_move_lines(ptr noundef %0, i32 noundef 1)
  br label %918

918:                                              ; preds = %808, %810, %812, %864, %917, %813, %811, %809
  %919 = load ptr, ptr %753, align 8, !tbaa !37
  %920 = icmp eq ptr %919, null
  br i1 %920, label %943, label %921

921:                                              ; preds = %918
  %922 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %923 = load ptr, ptr %922, align 8, !tbaa !64
  store ptr %923, ptr %753, align 8, !tbaa !37
  %924 = icmp eq i32 %713, 0
  br i1 %924, label %938, label %925

925:                                              ; preds = %921
  %926 = load ptr, ptr %753, align 8, !tbaa !37
  %927 = or disjoint i32 %712, %705
  %928 = or disjoint i32 %927, %698
  %929 = or disjoint i32 %928, %692
  br label %930

930:                                              ; preds = %925, %935
  %931 = phi ptr [ %926, %925 ], [ %933, %935 ]
  %932 = phi i32 [ 0, %925 ], [ %936, %935 ]
  %933 = load ptr, ptr %931, align 8, !tbaa !134
  %934 = icmp eq ptr %933, null
  br i1 %934, label %938, label %935

935:                                              ; preds = %930
  store ptr %933, ptr %753, align 8, !tbaa !37
  %936 = add nuw i32 %932, 1
  %937 = icmp eq i32 %936, %929
  br i1 %937, label %938, label %930, !llvm.loop !156

938:                                              ; preds = %935, %930, %921
  %939 = load ptr, ptr %753, align 8, !tbaa !37
  %940 = getelementptr inbounds %struct.TextLine, ptr %939, i64 0, i32 4
  %941 = load i32, ptr %940, align 8, !tbaa !63
  %942 = tail call i32 @llvm.umin.i32(i32 %941, i32 %687)
  store i32 %942, ptr %754, align 4, !tbaa !139
  store ptr %939, ptr %782, align 8, !tbaa !67
  store i32 %942, ptr %783, align 4, !tbaa !68
  br label %943

943:                                              ; preds = %918, %938
  %944 = load ptr, ptr %782, align 8, !tbaa !37
  %945 = icmp eq ptr %944, null
  br i1 %945, label %969, label %946

946:                                              ; preds = %943
  %947 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %948 = load ptr, ptr %947, align 8, !tbaa !64
  store ptr %948, ptr %782, align 8, !tbaa !37
  %949 = icmp eq i32 %751, 0
  br i1 %949, label %963, label %950

950:                                              ; preds = %946
  %951 = load ptr, ptr %782, align 8, !tbaa !37
  %952 = or disjoint i32 %750, %743
  %953 = or disjoint i32 %952, %736
  %954 = or disjoint i32 %953, %730
  br label %955

955:                                              ; preds = %950, %960
  %956 = phi ptr [ %951, %950 ], [ %958, %960 ]
  %957 = phi i32 [ 0, %950 ], [ %961, %960 ]
  %958 = load ptr, ptr %956, align 8, !tbaa !134
  %959 = icmp eq ptr %958, null
  br i1 %959, label %963, label %960

960:                                              ; preds = %955
  store ptr %958, ptr %782, align 8, !tbaa !37
  %961 = add nuw i32 %957, 1
  %962 = icmp eq i32 %961, %954
  br i1 %962, label %963, label %955, !llvm.loop !156

963:                                              ; preds = %960, %955, %946
  %964 = load ptr, ptr %782, align 8, !tbaa !37
  %965 = getelementptr inbounds %struct.TextLine, ptr %964, i64 0, i32 4
  %966 = load i32, ptr %965, align 8, !tbaa !63
  %967 = tail call i32 @llvm.umin.i32(i32 %966, i32 %725)
  store i32 %967, ptr %783, align 4, !tbaa !139
  br label %969

968:                                              ; preds = %13
  store i32 -1, ptr %3, align 8, !tbaa !54
  br label %969

969:                                              ; preds = %963, %943, %968, %633, %510, %374, %276, %173
  store i8 0, ptr @undoing, align 1, !tbaa !34
  br label %970

970:                                              ; preds = %969, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @txt_backspace_char(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %73, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = icmp eq ptr %4, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %14 = load i32, ptr %13, align 4, !tbaa !68
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %6, %10
  tail call fastcc void @txt_delete_sel(ptr noundef %0)
  %17 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !57
  %19 = or i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !57
  br label %73

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !66
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TextLine, ptr %4, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !136
  %27 = icmp eq ptr %26, null
  br i1 %27, label %73, label %28

28:                                               ; preds = %24
  store ptr %26, ptr %3, align 8, !tbaa !65
  %29 = getelementptr inbounds %struct.TextLine, ptr %26, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !63
  store i32 %30, ptr %21, align 8, !tbaa !66
  %31 = load ptr, ptr %26, align 8, !tbaa !134
  tail call fastcc void @txt_combine_lines(ptr noundef %0, ptr noundef nonnull %26, ptr noundef %31)
  %32 = load ptr, ptr %3, align 8, !tbaa !65
  store ptr %32, ptr %7, align 8, !tbaa !67
  %33 = load i32, ptr %21, align 8, !tbaa !66
  %34 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %33, ptr %34, align 4, !tbaa !68
  br label %65

35:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  store i64 0, ptr %2, align 8, !tbaa !140
  %36 = getelementptr inbounds %struct.TextLine, ptr %4, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !39
  %38 = sext i32 %22 to i64
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  %40 = tail call ptr @BLI_str_prev_char_utf8(ptr noundef nonnull %39) #24
  %41 = call i32 @BLI_str_utf8_as_unicode_and_size(ptr noundef %40, ptr noundef nonnull %2) #24
  %42 = load ptr, ptr %3, align 8, !tbaa !65
  %43 = getelementptr inbounds %struct.TextLine, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !39
  %45 = load i32, ptr %21, align 8, !tbaa !66
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %44, i64 %46
  %48 = load i64, ptr %2, align 8, !tbaa !140
  %49 = sub i64 0, %48
  %50 = getelementptr inbounds i8, ptr %47, i64 %49
  %51 = getelementptr inbounds %struct.TextLine, ptr %42, i64 0, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !63
  %53 = sub i32 %52, %45
  %54 = add i32 %53, 1
  %55 = sext i32 %54 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %50, ptr align 1 %47, i64 %55, i1 false)
  %56 = load i64, ptr %2, align 8, !tbaa !140
  %57 = load ptr, ptr %3, align 8, !tbaa !65
  %58 = getelementptr inbounds %struct.TextLine, ptr %57, i64 0, i32 4
  %59 = load i32, ptr %58, align 8, !tbaa !63
  %60 = trunc i64 %56 to i32
  %61 = sub i32 %59, %60
  store i32 %61, ptr %58, align 8, !tbaa !63
  %62 = load i32, ptr %21, align 8, !tbaa !66
  %63 = sub i32 %62, %60
  store i32 %63, ptr %21, align 8, !tbaa !66
  store ptr %57, ptr %7, align 8, !tbaa !67
  %64 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %63, ptr %64, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  br label %65

65:                                               ; preds = %28, %35
  %66 = phi i32 [ 10, %28 ], [ %41, %35 ]
  %67 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !57
  %69 = or i32 %68, 1
  store i32 %69, ptr %67, align 8, !tbaa !57
  call void @txt_clean_text(ptr noundef %0)
  %70 = load i8, ptr @undoing, align 1, !tbaa !34
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  call fastcc void @txt_undo_add_charop(ptr noundef %0, i32 noundef 15, i32 noundef %66)
  br label %73

73:                                               ; preds = %65, %72, %24, %1, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @txt_duplicate_line(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %3, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.TextLine, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr @.str.20, ptr %11
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %15 = tail call ptr %14(i64 noundef 40, ptr noundef nonnull @.str) #24
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #25
  %18 = add i64 %17, 1
  %19 = tail call ptr %16(i64 noundef %18, ptr noundef nonnull @.str.1) #24
  %20 = getelementptr inbounds %struct.TextLine, ptr %15, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !39
  %21 = getelementptr inbounds %struct.TextLine, ptr %15, i64 0, i32 3
  store ptr null, ptr %21, align 8, !tbaa !42
  %22 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %13) #24
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #25
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.TextLine, ptr %15, i64 0, i32 4
  store i32 %24, ptr %25, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %26 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %2, align 8, !tbaa !65
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %26, ptr noundef %27, ptr noundef %15) #24
  %28 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !57
  %30 = or i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !57
  tail call void @txt_clean_text(ptr noundef %0)
  %31 = load i8, ptr @undoing, align 1, !tbaa !34
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %9
  tail call void @txt_undo_add_op(ptr noundef %0, i32 noundef 32)
  br label %34

34:                                               ; preds = %5, %33, %9, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @txt_undo_add_charop(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #24
  %5 = call i64 @BLI_str_utf8_from_unicode(i32 noundef %2, ptr noundef nonnull %4) #24
  %6 = trunc i64 %5 to i32
  %7 = add i32 %6, 15
  %8 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 10
  %9 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 11
  %10 = load i32, ptr %8, align 8, !tbaa !54
  %11 = add nsw i32 %7, %10
  %12 = load i32, ptr %9, align 4, !tbaa !55
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %38, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  br label %16

16:                                               ; preds = %24, %14
  %17 = phi i32 [ %12, %14 ], [ %36, %24 ]
  %18 = icmp sgt i32 %17, 524288
  %19 = load ptr, ptr %15, align 8, !tbaa !52
  br i1 %18, label %20, label %24

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %21(ptr noundef %19) #24
  store i32 -1, ptr %8, align 8, !tbaa !54
  store i32 1024, ptr %9, align 4, !tbaa !55
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %23 = call ptr %22(i64 noundef 1024, ptr noundef nonnull @.str.19) #24
  store ptr %23, ptr %15, align 8, !tbaa !52
  br label %115

24:                                               ; preds = %16
  %25 = shl nsw i32 %17, 1
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %27 = sext i32 %25 to i64
  %28 = call ptr %26(i64 noundef %27, ptr noundef nonnull @.str.19) #24
  store ptr %28, ptr %15, align 8, !tbaa !52
  %29 = load i32, ptr %9, align 4, !tbaa !55
  %30 = sext i32 %29 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 1 %19, i64 %30, i1 false)
  %31 = load i32, ptr %9, align 4, !tbaa !55
  %32 = shl nsw i32 %31, 1
  store i32 %32, ptr %9, align 4, !tbaa !55
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %33(ptr noundef %19) #24
  %34 = load i32, ptr %8, align 8, !tbaa !54
  %35 = add nsw i32 %34, %7
  %36 = load i32, ptr %9, align 4, !tbaa !55
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %16, !llvm.loop !162

38:                                               ; preds = %24, %3
  %39 = load i32, ptr %8, align 8, !tbaa !54
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %8, align 8, !tbaa !54
  %41 = icmp ult i64 %5, 4
  br i1 %41, label %42, label %68

42:                                               ; preds = %38
  %43 = zext nneg i32 %1 to i64
  %44 = add nuw nsw i64 %5, %43
  %45 = trunc i64 %44 to i8
  %46 = add i8 %45, -1
  %47 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %48 = load ptr, ptr %47, align 8, !tbaa !52
  %49 = sext i32 %40 to i64
  %50 = getelementptr inbounds i8, ptr %48, i64 %49
  store i8 %46, ptr %50, align 1, !tbaa !34
  %51 = load i32, ptr %8, align 8, !tbaa !54
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %8, align 8, !tbaa !54
  call fastcc void @txt_undo_store_cur(ptr noundef %0)
  %53 = icmp eq i64 %5, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %42, %54
  %55 = phi i64 [ %64, %54 ], [ 0, %42 ]
  %56 = getelementptr inbounds [6 x i8], ptr %4, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !34
  %58 = load ptr, ptr %47, align 8, !tbaa !52
  %59 = load i32, ptr %8, align 8, !tbaa !54
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %58, i64 %60
  store i8 %57, ptr %61, align 1, !tbaa !34
  %62 = load i32, ptr %8, align 8, !tbaa !54
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %8, align 8, !tbaa !54
  %64 = add nuw nsw i64 %55, 1
  %65 = icmp eq i64 %64, %5
  br i1 %65, label %66, label %54, !llvm.loop !173

66:                                               ; preds = %54, %42
  %67 = load i32, ptr %8, align 8, !tbaa !54
  br label %102

68:                                               ; preds = %38
  %69 = trunc i32 %1 to i8
  %70 = add i8 %69, 3
  %71 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !52
  %73 = sext i32 %40 to i64
  %74 = getelementptr inbounds i8, ptr %72, i64 %73
  store i8 %70, ptr %74, align 1, !tbaa !34
  %75 = load i32, ptr %8, align 8, !tbaa !54
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %8, align 8, !tbaa !54
  call fastcc void @txt_undo_store_cursors(ptr noundef %0)
  %77 = load ptr, ptr %71, align 8, !tbaa !52
  %78 = trunc i32 %2 to i8
  %79 = load i32, ptr %8, align 4, !tbaa !139
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %77, i64 %80
  store i8 %78, ptr %81, align 1, !tbaa !34
  %82 = load i32, ptr %8, align 4, !tbaa !139
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %8, align 4, !tbaa !139
  %84 = lshr i32 %2, 8
  %85 = trunc i32 %84 to i8
  %86 = sext i32 %83 to i64
  %87 = getelementptr inbounds i8, ptr %77, i64 %86
  store i8 %85, ptr %87, align 1, !tbaa !34
  %88 = load i32, ptr %8, align 4, !tbaa !139
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %8, align 4, !tbaa !139
  %90 = lshr i32 %2, 16
  %91 = trunc i32 %90 to i8
  %92 = sext i32 %89 to i64
  %93 = getelementptr inbounds i8, ptr %77, i64 %92
  store i8 %91, ptr %93, align 1, !tbaa !34
  %94 = load i32, ptr %8, align 4, !tbaa !139
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %8, align 4, !tbaa !139
  %96 = lshr i32 %2, 24
  %97 = trunc i32 %96 to i8
  %98 = sext i32 %95 to i64
  %99 = getelementptr inbounds i8, ptr %77, i64 %98
  store i8 %97, ptr %99, align 1, !tbaa !34
  %100 = load i32, ptr %8, align 4, !tbaa !139
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %8, align 4, !tbaa !139
  br label %102

102:                                              ; preds = %68, %66
  %103 = phi i32 [ %101, %68 ], [ %67, %66 ]
  %104 = phi ptr [ %71, %68 ], [ %47, %66 ]
  %105 = phi i8 [ %70, %68 ], [ %46, %66 ]
  %106 = load ptr, ptr %104, align 8, !tbaa !52
  %107 = sext i32 %103 to i64
  %108 = getelementptr inbounds i8, ptr %106, i64 %107
  store i8 %105, ptr %108, align 1, !tbaa !34
  %109 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %110 = load ptr, ptr %109, align 8, !tbaa !52
  %111 = load i32, ptr %8, align 8, !tbaa !54
  %112 = sext i32 %111 to i64
  %113 = getelementptr i8, ptr %110, i64 %112
  %114 = getelementptr i8, ptr %113, i64 1
  store i8 0, ptr %114, align 1, !tbaa !34
  br label %115

115:                                              ; preds = %20, %102
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #24
  ret void
}

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @txt_combine_lines(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %61

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct.TextLine, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.TextLine, ptr %2, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !63
  %13 = add i32 %10, 1
  %14 = add i32 %13, %12
  %15 = sext i32 %14 to i64
  %16 = tail call ptr %8(i64 noundef %15, ptr noundef nonnull @.str.1) #24
  %17 = getelementptr inbounds %struct.TextLine, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  %19 = tail call i64 @BLI_strcpy_rlen(ptr noundef %16, ptr noundef %18) #24
  %20 = getelementptr inbounds i8, ptr %16, i64 %19
  %21 = getelementptr inbounds %struct.TextLine, ptr %2, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  %23 = tail call i64 @BLI_strcpy_rlen(ptr noundef %20, ptr noundef %22) #24
  %24 = load ptr, ptr %17, align 8, !tbaa !39
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %7
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %27(ptr noundef nonnull %24) #24
  br label %28

28:                                               ; preds = %26, %7
  %29 = getelementptr inbounds %struct.TextLine, ptr %1, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !42
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %33(ptr noundef nonnull %30) #24
  br label %34

34:                                               ; preds = %28, %32
  store ptr %16, ptr %17, align 8, !tbaa !39
  %35 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #25
  %36 = trunc i64 %35 to i32
  store i32 %36, ptr %9, align 8, !tbaa !63
  store ptr null, ptr %29, align 8, !tbaa !42
  %37 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !65
  %39 = icmp eq ptr %38, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  tail call void @BLI_remlink(ptr noundef nonnull %41, ptr noundef nonnull %2) #24
  %42 = load ptr, ptr %21, align 8, !tbaa !39
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %45(ptr noundef nonnull %42) #24
  br label %46

46:                                               ; preds = %44, %40
  %47 = getelementptr inbounds %struct.TextLine, ptr %2, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !42
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %51(ptr noundef nonnull %48) #24
  br label %52

52:                                               ; preds = %50, %46
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %53(ptr noundef nonnull %2) #24
  %54 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !57
  %56 = or i32 %55, 1
  store i32 %56, ptr %54, align 8, !tbaa !57
  tail call void @txt_clean_text(ptr noundef %0)
  br label %57

57:                                               ; preds = %34, %52
  %58 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !57
  %60 = or i32 %59, 1
  store i32 %60, ptr %58, align 8, !tbaa !57
  tail call void @txt_clean_text(ptr noundef %0)
  br label %61

61:                                               ; preds = %3, %57
  ret void
}

declare i32 @BLI_str_utf8_as_unicode_and_size(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local void @txt_delete_word(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %7 = getelementptr inbounds %struct.TextLine, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.TextLine, ptr %3, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !63
  %11 = sext i32 %10 to i64
  tail call void @BLI_str_cursor_step_utf8(ptr noundef %8, i64 noundef %11, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 1, i8 noundef zeroext 1) #24
  br label %12

12:                                               ; preds = %1, %5
  tail call fastcc void @txt_delete_sel(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @txt_backspace_word(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %7 = getelementptr inbounds %struct.TextLine, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.TextLine, ptr %3, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !63
  %11 = sext i32 %10 to i64
  tail call void @BLI_str_cursor_step_utf8(ptr noundef %8, i64 noundef %11, ptr noundef nonnull %6, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 1) #24
  br label %12

12:                                               ; preds = %1, %5
  tail call fastcc void @txt_delete_sel(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @txt_add_char_intern(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #24
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %82, label %8

8:                                                ; preds = %3
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @txt_split_curline(ptr noundef %0)
  br label %82

11:                                               ; preds = %8
  %12 = icmp eq i32 %1, 9
  %13 = icmp ne i8 %2, 0
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !66
  %18 = srem i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [5 x i8], ptr @tab_to_spaces, i64 0, i64 %19
  tail call void @txt_insert_buf(ptr noundef %0, ptr noundef nonnull %20)
  br label %82

21:                                               ; preds = %11
  tail call fastcc void @txt_delete_sel(ptr noundef %0)
  %22 = load i8, ptr @undoing, align 1, !tbaa !34
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call fastcc void @txt_undo_add_charop(ptr noundef %0, i32 noundef 11, i32 noundef %1)
  br label %25

25:                                               ; preds = %24, %21
  %26 = call i64 @BLI_str_utf8_from_unicode(i32 noundef %1, ptr noundef nonnull %4) #24
  %27 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %28 = load ptr, ptr %5, align 8, !tbaa !65
  %29 = getelementptr inbounds %struct.TextLine, ptr %28, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !63
  %31 = sext i32 %30 to i64
  %32 = add i64 %26, 1
  %33 = add i64 %32, %31
  %34 = call ptr %27(i64 noundef %33, ptr noundef nonnull @.str.1) #24
  %35 = load ptr, ptr %5, align 8, !tbaa !65
  %36 = getelementptr inbounds %struct.TextLine, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !39
  %38 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !66
  %40 = sext i32 %39 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %34, ptr align 1 %37, i64 %40, i1 false)
  %41 = load i32, ptr %38, align 8, !tbaa !66
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %34, i64 %42
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %43, ptr nonnull align 1 %4, i64 %26, i1 false)
  %44 = load i32, ptr %38, align 8, !tbaa !66
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %34, i64 %45
  %47 = getelementptr inbounds i8, ptr %46, i64 %26
  %48 = load ptr, ptr %5, align 8, !tbaa !65
  %49 = getelementptr inbounds %struct.TextLine, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !39
  %51 = getelementptr inbounds i8, ptr %50, i64 %45
  %52 = getelementptr inbounds %struct.TextLine, ptr %48, i64 0, i32 4
  %53 = load i32, ptr %52, align 8, !tbaa !63
  %54 = sub i32 %53, %44
  %55 = add i32 %54, 1
  %56 = sext i32 %55 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %47, ptr align 1 %51, i64 %56, i1 false)
  %57 = load ptr, ptr %5, align 8, !tbaa !65
  %58 = getelementptr inbounds %struct.TextLine, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !39
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %25
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %62(ptr noundef nonnull %59) #24
  br label %63

63:                                               ; preds = %61, %25
  %64 = getelementptr inbounds %struct.TextLine, ptr %57, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !42
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %68(ptr noundef nonnull %65) #24
  br label %69

69:                                               ; preds = %63, %67
  store ptr %34, ptr %58, align 8, !tbaa !39
  %70 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %34) #25
  %71 = trunc i64 %70 to i32
  %72 = getelementptr inbounds %struct.TextLine, ptr %57, i64 0, i32 4
  store i32 %71, ptr %72, align 8, !tbaa !63
  store ptr null, ptr %64, align 8, !tbaa !42
  %73 = load i32, ptr %38, align 8, !tbaa !66
  %74 = trunc i64 %26 to i32
  %75 = add i32 %73, %74
  store i32 %75, ptr %38, align 8, !tbaa !66
  %76 = load ptr, ptr %5, align 8, !tbaa !65
  %77 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %76, ptr %77, align 8, !tbaa !67
  %78 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %75, ptr %78, align 4, !tbaa !68
  %79 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !57
  %81 = or i32 %80, 1
  store i32 %81, ptr %79, align 8, !tbaa !57
  call void @txt_clean_text(ptr noundef %0)
  br label %82

82:                                               ; preds = %3, %69, %15, %10
  %83 = phi i8 [ 1, %10 ], [ 1, %15 ], [ 1, %69 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #24
  ret i8 %83
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @txt_replace_char(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store i64 0, ptr %3, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #24
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp eq ptr %6, null
  br i1 %7, label %126, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.TextLine, ptr %6, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !63
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  %17 = icmp eq ptr %6, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %20 = load i32, ptr %19, align 4, !tbaa !68
  %21 = icmp ne i32 %10, %20
  br label %22

22:                                               ; preds = %14, %18
  %23 = phi i1 [ true, %14 ], [ %21, %18 ]
  %24 = icmp eq i32 %1, 10
  %25 = or i1 %24, %23
  br i1 %25, label %26, label %33

26:                                               ; preds = %22, %8
  %27 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !57
  %29 = lshr i32 %28, 10
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = tail call fastcc zeroext i8 @txt_add_char_intern(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %31), !range !141
  br label %126

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.TextLine, ptr %6, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !39
  %36 = sext i32 %10 to i64
  %37 = getelementptr inbounds i8, ptr %35, i64 %36
  %38 = call i32 @BLI_str_utf8_as_unicode_and_size(ptr noundef %37, ptr noundef nonnull %3) #24
  %39 = call i64 @BLI_str_utf8_from_unicode(i32 noundef %1, ptr noundef nonnull %4) #24
  %40 = load i64, ptr %3, align 8, !tbaa !140
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %33
  %43 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %44 = load ptr, ptr %5, align 8, !tbaa !65
  %45 = getelementptr inbounds %struct.TextLine, ptr %44, i64 0, i32 4
  %46 = load i32, ptr %45, align 8, !tbaa !63
  %47 = sext i32 %46 to i64
  %48 = add i64 %39, 1
  %49 = sub i64 %48, %40
  %50 = add i64 %49, %47
  %51 = call ptr %43(i64 noundef %50, ptr noundef nonnull @.str.1) #24
  %52 = load ptr, ptr %5, align 8, !tbaa !65
  %53 = getelementptr inbounds %struct.TextLine, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !39
  %55 = load i32, ptr %9, align 8, !tbaa !66
  %56 = sext i32 %55 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %51, ptr align 1 %54, i64 %56, i1 false)
  %57 = load i32, ptr %9, align 8, !tbaa !66
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %51, i64 %58
  %60 = getelementptr inbounds i8, ptr %59, i64 %39
  %61 = load ptr, ptr %5, align 8, !tbaa !65
  %62 = getelementptr inbounds %struct.TextLine, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !39
  %64 = getelementptr inbounds i8, ptr %63, i64 %58
  %65 = load i64, ptr %3, align 8, !tbaa !140
  %66 = getelementptr inbounds i8, ptr %64, i64 %65
  %67 = getelementptr inbounds %struct.TextLine, ptr %61, i64 0, i32 4
  %68 = load i32, ptr %67, align 8, !tbaa !63
  %69 = sub nsw i32 %68, %57
  %70 = sext i32 %69 to i64
  %71 = sub i64 %70, %65
  %72 = add i64 %71, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %60, ptr align 1 %66, i64 %72, i1 false)
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %74 = load ptr, ptr %5, align 8, !tbaa !65
  %75 = getelementptr inbounds %struct.TextLine, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !39
  call void %73(ptr noundef %76) #24
  %77 = load ptr, ptr %5, align 8, !tbaa !65
  %78 = getelementptr inbounds %struct.TextLine, ptr %77, i64 0, i32 2
  store ptr %51, ptr %78, align 8, !tbaa !39
  br label %96

79:                                               ; preds = %33
  %80 = icmp ult i64 %39, %40
  br i1 %80, label %81, label %96

81:                                               ; preds = %79
  %82 = load ptr, ptr %5, align 8, !tbaa !65
  %83 = getelementptr inbounds %struct.TextLine, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !39
  %85 = load i32, ptr %9, align 8, !tbaa !66
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %84, i64 %86
  %88 = getelementptr inbounds i8, ptr %87, i64 %39
  %89 = getelementptr inbounds i8, ptr %87, i64 %40
  %90 = getelementptr inbounds %struct.TextLine, ptr %82, i64 0, i32 4
  %91 = load i32, ptr %90, align 8, !tbaa !63
  %92 = sub nsw i32 %91, %85
  %93 = sext i32 %92 to i64
  %94 = sub i64 %93, %40
  %95 = add i64 %94, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %88, ptr nonnull align 1 %89, i64 %95, i1 false)
  br label %96

96:                                               ; preds = %79, %81, %42
  %97 = load ptr, ptr %5, align 8, !tbaa !65
  %98 = getelementptr inbounds %struct.TextLine, ptr %97, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !39
  %100 = load i32, ptr %9, align 8, !tbaa !66
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, ptr %99, i64 %101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %102, ptr nonnull align 1 %4, i64 %39, i1 false)
  %103 = load i32, ptr %9, align 8, !tbaa !66
  %104 = trunc i64 %39 to i32
  %105 = add i32 %103, %104
  store i32 %105, ptr %9, align 8, !tbaa !66
  %106 = load i64, ptr %3, align 8, !tbaa !140
  %107 = sub i64 %39, %106
  %108 = load ptr, ptr %5, align 8, !tbaa !65
  %109 = getelementptr inbounds %struct.TextLine, ptr %108, i64 0, i32 4
  %110 = load i32, ptr %109, align 8, !tbaa !63
  %111 = trunc i64 %107 to i32
  %112 = add i32 %110, %111
  store i32 %112, ptr %109, align 8, !tbaa !63
  store ptr %108, ptr %15, align 8, !tbaa !67
  %113 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %105, ptr %113, align 4, !tbaa !68
  %114 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !57
  %116 = or i32 %115, 1
  store i32 %116, ptr %114, align 8, !tbaa !57
  call void @txt_clean_text(ptr noundef %0)
  %117 = load i8, ptr @undoing, align 1, !tbaa !34
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %96
  call fastcc void @txt_undo_add_charop(ptr noundef %0, i32 noundef 11, i32 noundef %1)
  %120 = load i32, ptr %9, align 8, !tbaa !66
  %121 = sub i32 %120, %104
  store i32 %121, ptr %9, align 8, !tbaa !66
  %122 = load ptr, ptr %5, align 8, !tbaa !65
  store ptr %122, ptr %15, align 8, !tbaa !67
  store i32 %121, ptr %113, align 4, !tbaa !68
  call fastcc void @txt_undo_add_charop(ptr noundef %0, i32 noundef 19, i32 noundef %38)
  %123 = load i32, ptr %9, align 8, !tbaa !66
  %124 = add i32 %123, %104
  store i32 %124, ptr %9, align 8, !tbaa !66
  %125 = load ptr, ptr %5, align 8, !tbaa !65
  store ptr %125, ptr %15, align 8, !tbaa !67
  store i32 %124, ptr %113, align 4, !tbaa !68
  br label %126

126:                                              ; preds = %96, %119, %2, %26
  %127 = phi i8 [ %32, %26 ], [ 0, %2 ], [ 1, %119 ], [ 1, %96 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret i8 %127
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @txt_setcurr_tab_spaces(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #17 {
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = icmp eq ptr %4, null
  br i1 %5, label %85, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !57
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.TextLine, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = select i1 %10, i32 9, i32 32
  %14 = load i8, ptr %12, align 1, !tbaa !34
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !66
  %20 = zext i32 %19 to i64
  br label %21

21:                                               ; preds = %17, %24
  %22 = phi i64 [ 0, %17 ], [ %25, %24 ]
  %23 = icmp eq i64 %22, %20
  br i1 %23, label %85, label %24

24:                                               ; preds = %21
  %25 = add nuw nsw i64 %22, 1
  %26 = getelementptr inbounds i8, ptr %12, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %13, %28
  br i1 %29, label %21, label %30, !llvm.loop !174

30:                                               ; preds = %24
  %31 = trunc i64 %25 to i32
  br label %32

32:                                               ; preds = %30, %6
  %33 = phi i32 [ 0, %6 ], [ %31, %30 ]
  %34 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %12, i32 58)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %63, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !66
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = zext nneg i32 %38 to i64
  br label %42

42:                                               ; preds = %50, %40
  %43 = phi i64 [ 0, %40 ], [ %53, %50 ]
  %44 = phi i8 [ 0, %40 ], [ %52, %50 ]
  %45 = getelementptr inbounds i8, ptr %12, i64 %43
  %46 = load i8, ptr %45, align 1, !tbaa !34
  switch i8 %46, label %47 [
    i8 0, label %56
    i8 35, label %50
    i8 58, label %48
    i8 32, label %49
    i8 9, label %49
  ]

47:                                               ; preds = %42
  br label %50

48:                                               ; preds = %42
  br label %50

49:                                               ; preds = %42, %42
  br label %50

50:                                               ; preds = %42, %49, %47, %48
  %51 = phi i1 [ true, %42 ], [ false, %47 ], [ false, %48 ], [ false, %49 ]
  %52 = phi i8 [ %44, %42 ], [ 0, %47 ], [ 1, %48 ], [ %44, %49 ]
  %53 = add nuw nsw i64 %43, 1
  %54 = icmp eq i64 %53, %41
  %55 = select i1 %51, i1 true, i1 %54
  br i1 %55, label %56, label %42, !llvm.loop !175

56:                                               ; preds = %42, %50
  %57 = phi i8 [ %52, %50 ], [ %44, %42 ]
  %58 = icmp eq i8 %57, 0
  %59 = select i1 %58, i32 0, i32 %1
  br label %60

60:                                               ; preds = %56, %36
  %61 = phi i32 [ 0, %36 ], [ %59, %56 ]
  %62 = add nsw i32 %61, %33
  br label %63

63:                                               ; preds = %60, %32
  %64 = phi i32 [ %33, %32 ], [ %62, %60 ]
  br label %65

65:                                               ; preds = %63, %79
  %66 = phi i64 [ %81, %79 ], [ 0, %63 ]
  %67 = phi ptr [ %83, %79 ], [ @.str.14, %63 ]
  %68 = phi i32 [ %80, %79 ], [ %64, %63 ]
  %69 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %67) #25
  %70 = icmp ne ptr %69, null
  %71 = icmp sgt i32 %68, 0
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = tail call i64 @strcspn(ptr noundef nonnull %12, ptr noundef %67) #25
  %75 = tail call i64 @strcspn(ptr noundef nonnull %12, ptr noundef nonnull @.str.13) #25
  %76 = icmp ult i64 %74, %75
  %77 = select i1 %76, i32 %1, i32 0
  %78 = sub nsw i32 %68, %77
  br label %79

79:                                               ; preds = %73, %65
  %80 = phi i32 [ %68, %65 ], [ %78, %73 ]
  %81 = add nuw nsw i64 %66, 1
  %82 = getelementptr inbounds [6 x ptr], ptr @txt_setcurr_tab_spaces.back_words, i64 0, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !37
  %84 = icmp eq i64 %81, 5
  br i1 %84, label %85, label %65, !llvm.loop !176

85:                                               ; preds = %21, %79, %2
  %86 = phi i32 [ 0, %2 ], [ %80, %79 ], [ %19, %21 ]
  ret i32 %86
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @text_check_bracket(i8 noundef zeroext %0) local_unnamed_addr #18 {
  br label %2

2:                                                ; preds = %1, %17
  %3 = phi i64 [ 0, %1 ], [ %18, %17 ]
  %4 = getelementptr inbounds [4 x i8], ptr @__const.text_check_bracket.opens, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = icmp eq i8 %5, %0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = trunc i64 %3 to i32
  %9 = add nuw nsw i32 %8, 1
  br label %20

10:                                               ; preds = %2
  %11 = getelementptr inbounds [4 x i8], ptr @__const.text_check_bracket.close, i64 0, i64 %3
  %12 = load i8, ptr %11, align 1, !tbaa !34
  %13 = icmp eq i8 %12, %0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = trunc i64 %3 to i32
  %16 = xor i32 %15, -1
  br label %20

17:                                               ; preds = %10
  %18 = add nuw nsw i64 %3, 1
  %19 = icmp eq i64 %18, 3
  br i1 %19, label %20, label %2, !llvm.loop !177

20:                                               ; preds = %17, %14, %7
  %21 = phi i32 [ %9, %7 ], [ %16, %14 ], [ 0, %17 ]
  ret i32 %21
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local noundef zeroext i8 @text_check_delim(i8 noundef zeroext %0) local_unnamed_addr #18 {
  br label %5

2:                                                ; preds = %5
  %3 = add nuw nsw i64 %6, 1
  %4 = icmp eq i64 %3, 29
  br i1 %4, label %10, label %5, !llvm.loop !178

5:                                                ; preds = %1, %2
  %6 = phi i64 [ 0, %1 ], [ %3, %2 ]
  %7 = getelementptr inbounds [30 x i8], ptr @__const.text_check_delim.delims, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !34
  %9 = icmp eq i8 %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %2, %5
  %11 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @text_check_digit(i8 noundef zeroext %0) local_unnamed_addr #19 {
  %2 = add i8 %0, -48
  %3 = icmp ult i8 %2, 10
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @text_check_identifier(i8 noundef zeroext %0) local_unnamed_addr #19 {
  %2 = icmp ult i8 %0, 48
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = icmp ult i8 %0, 58
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = icmp ult i8 %0, 65
  br i1 %6, label %16, label %7

7:                                                ; preds = %5
  %8 = icmp ult i8 %0, 91
  %9 = icmp eq i8 %0, 95
  %10 = or i1 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = icmp ult i8 %0, 97
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = icmp ult i8 %0, 123
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %13, %11, %7, %5, %3, %1
  %17 = phi i8 [ 0, %1 ], [ 1, %3 ], [ 0, %5 ], [ 1, %7 ], [ 0, %11 ], [ %15, %13 ]
  ret i8 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @text_check_identifier_nodigit(i8 noundef zeroext %0) local_unnamed_addr #19 {
  %2 = icmp ult i8 %0, 65
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = icmp ult i8 %0, 91
  %5 = icmp eq i8 %0, 95
  %6 = or i1 %4, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = icmp ult i8 %0, 97
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = icmp ult i8 %0, 123
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %9, %7, %3, %1
  %13 = phi i8 [ 0, %1 ], [ 1, %3 ], [ 0, %7 ], [ %11, %9 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @text_check_identifier_unicode(i32 noundef %0) local_unnamed_addr #19 {
  %2 = icmp ult i32 %0, 255
  br i1 %2, label %3, label %19

3:                                                ; preds = %1
  %4 = trunc i32 %0 to i8
  %5 = icmp ult i8 %4, 48
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = icmp ult i8 %4, 58
  br i1 %7, label %19, label %8

8:                                                ; preds = %6
  %9 = icmp ult i8 %4, 65
  br i1 %9, label %19, label %10

10:                                               ; preds = %8
  %11 = icmp ult i8 %4, 91
  %12 = icmp eq i8 %4, 95
  %13 = or i1 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = icmp ult i8 %4, 97
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = icmp ult i8 %4, 123
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %16, %14, %10, %8, %6, %3, %1
  %20 = phi i32 [ 0, %1 ], [ 0, %3 ], [ 1, %6 ], [ 0, %8 ], [ 1, %10 ], [ 0, %14 ], [ %18, %16 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @text_check_identifier_nodigit_unicode(i32 noundef %0) local_unnamed_addr #19 {
  %2 = icmp ult i32 %0, 255
  br i1 %2, label %3, label %15

3:                                                ; preds = %1
  %4 = trunc i32 %0 to i8
  %5 = icmp ult i8 %4, 65
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = icmp ult i8 %4, 91
  %8 = icmp eq i8 %4, 95
  %9 = or i1 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = icmp ult i8 %4, 97
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = icmp ult i8 %4, 123
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %12, %10, %6, %3, %1
  %16 = phi i32 [ 0, %1 ], [ 0, %3 ], [ 1, %6 ], [ 0, %10 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @text_check_whitespace(i8 noundef zeroext %0) local_unnamed_addr #19 {
  switch i8 %0, label %2 [
    i8 32, label %3
    i8 13, label %3
    i8 10, label %3
    i8 9, label %3
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %1, %1, %1, %1, %2
  %4 = phi i8 [ 0, %2 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @text_find_identifier_start(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #20 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %27
  %7 = phi i64 [ %5, %4 ], [ %10, %27 ]
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %6
  %10 = add nsw i64 %7, -1
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !34
  %13 = icmp ult i8 %12, 48
  br i1 %13, label %27, label %14

14:                                               ; preds = %9
  %15 = icmp ult i8 %12, 58
  br i1 %15, label %27, label %16

16:                                               ; preds = %14
  %17 = icmp ult i8 %12, 65
  br i1 %17, label %27, label %18

18:                                               ; preds = %16
  %19 = icmp ult i8 %12, 91
  %20 = icmp eq i8 %12, 95
  %21 = or i1 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = icmp ult i8 %12, 97
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = icmp ult i8 %12, 123
  %26 = zext i1 %25 to i8
  br label %27

27:                                               ; preds = %9, %14, %16, %18, %22, %24
  %28 = phi i8 [ 0, %9 ], [ 1, %14 ], [ 0, %16 ], [ 1, %18 ], [ 0, %22 ], [ %26, %24 ]
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %6, !llvm.loop !179

30:                                               ; preds = %27
  %31 = trunc i64 %7 to i32
  br label %32

32:                                               ; preds = %30, %6, %2
  %33 = phi i32 [ 0, %2 ], [ %31, %30 ], [ 0, %6 ]
  ret i32 %33
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @txt_undo_store_cur(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 10
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = trunc i32 %6 to i8
  %8 = load i32, ptr %4, align 4, !tbaa !139
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %3, i64 %9
  store i8 %7, ptr %10, align 1, !tbaa !34
  %11 = load i32, ptr %4, align 4, !tbaa !139
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %4, align 4, !tbaa !139
  %13 = lshr i32 %6, 8
  %14 = trunc i32 %13 to i8
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i8, ptr %3, i64 %15
  store i8 %14, ptr %16, align 1, !tbaa !34
  %17 = load i32, ptr %4, align 4, !tbaa !139
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %4, align 4, !tbaa !139
  %19 = load ptr, ptr %2, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !65
  %24 = icmp eq ptr %23, null
  %25 = icmp eq ptr %21, null
  %26 = or i1 %25, %24
  %27 = icmp eq ptr %21, %23
  %28 = or i1 %27, %26
  br i1 %28, label %52, label %33

29:                                               ; preds = %37
  %30 = icmp eq ptr %21, null
  %31 = icmp eq ptr %21, %23
  %32 = or i1 %30, %31
  br i1 %32, label %52, label %41

33:                                               ; preds = %1, %37
  %34 = phi ptr [ %39, %37 ], [ %21, %1 ]
  %35 = phi i32 [ %38, %37 ], [ 0, %1 ]
  %36 = icmp eq ptr %34, %23
  br i1 %36, label %52, label %37

37:                                               ; preds = %33
  %38 = add nuw nsw i32 %35, 1
  %39 = load ptr, ptr %34, align 8, !tbaa !134
  %40 = icmp eq ptr %39, null
  br i1 %40, label %29, label %33, !llvm.loop !135

41:                                               ; preds = %29, %41
  %42 = phi ptr [ %46, %41 ], [ %21, %29 ]
  %43 = phi i32 [ %44, %41 ], [ 0, %29 ]
  %44 = add nsw i32 %43, -1
  %45 = getelementptr inbounds %struct.TextLine, ptr %42, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !136
  %47 = icmp eq ptr %46, null
  %48 = icmp eq ptr %46, %23
  %49 = or i1 %47, %48
  br i1 %49, label %50, label %41, !llvm.loop !137

50:                                               ; preds = %41
  %51 = select i1 %47, i32 0, i32 %44
  br label %52

52:                                               ; preds = %33, %29, %50, %1
  %53 = phi i32 [ 0, %1 ], [ 0, %29 ], [ %51, %50 ], [ %35, %33 ]
  %54 = trunc i32 %53 to i8
  %55 = sext i32 %18 to i64
  %56 = getelementptr inbounds i8, ptr %19, i64 %55
  store i8 %54, ptr %56, align 1, !tbaa !34
  %57 = load i32, ptr %4, align 4, !tbaa !139
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %4, align 4, !tbaa !139
  %59 = lshr i32 %53, 8
  %60 = trunc i32 %59 to i8
  %61 = sext i32 %58 to i64
  %62 = getelementptr inbounds i8, ptr %19, i64 %61
  store i8 %60, ptr %62, align 1, !tbaa !34
  %63 = load i32, ptr %4, align 4, !tbaa !139
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %4, align 4, !tbaa !139
  %65 = lshr i32 %53, 16
  %66 = trunc i32 %65 to i8
  %67 = sext i32 %64 to i64
  %68 = getelementptr inbounds i8, ptr %19, i64 %67
  store i8 %66, ptr %68, align 1, !tbaa !34
  %69 = load i32, ptr %4, align 4, !tbaa !139
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %4, align 4, !tbaa !139
  %71 = lshr i32 %53, 24
  %72 = trunc i32 %71 to i8
  %73 = sext i32 %70 to i64
  %74 = getelementptr inbounds i8, ptr %19, i64 %73
  store i8 %72, ptr %74, align 1, !tbaa !34
  %75 = load i32, ptr %4, align 4, !tbaa !139
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %4, align 4, !tbaa !139
  ret void
}

declare i32 @BLI_str_utf8_as_unicode(ptr noundef) local_unnamed_addr #4

declare i64 @BLI_strcpy_rlen(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(read) }

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
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !35, i64 0}
!39 = !{!40, !38, i64 16}
!40 = !{!"TextLine", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !41, i64 32, !41, i64 36}
!41 = !{!"int", !35, i64 0}
!42 = !{!40, !38, i64 24}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!47, !38, i64 120}
!47 = !{!"Text", !48, i64 0, !38, i64 120, !41, i64 128, !41, i64 132, !50, i64 136, !38, i64 152, !38, i64 160, !41, i64 168, !41, i64 172, !38, i64 176, !41, i64 184, !41, i64 188, !38, i64 192, !51, i64 200}
!48 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !35, i64 32, !49, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !38, i64 112}
!49 = !{!"short", !35, i64 0}
!50 = !{!"ListBase", !38, i64 0, !38, i64 8}
!51 = !{!"double", !35, i64 0}
!52 = !{!47, !38, i64 176}
!53 = !{!47, !41, i64 100}
!54 = !{!47, !41, i64 184}
!55 = !{!47, !41, i64 188}
!56 = !{!47, !41, i64 132}
!57 = !{!47, !41, i64 128}
!58 = !{!59, !41, i64 8}
!59 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !35, i64 20, !35, i64 788, !35, i64 1556, !35, i64 2580, !35, i64 3348, !35, i64 4116, !35, i64 4884, !35, i64 5652, !35, i64 6420, !35, i64 7444, !41, i64 8468, !49, i64 8472, !49, i64 8474, !49, i64 8476, !49, i64 8478, !49, i64 8480, !49, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !49, i64 8496, !49, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !49, i64 8528, !49, i64 8530, !49, i64 8532, !49, i64 8534, !50, i64 8536, !50, i64 8552, !50, i64 8568, !50, i64 8584, !50, i64 8600, !50, i64 8616, !50, i64 8632, !35, i64 8648, !49, i64 8712, !49, i64 8714, !49, i64 8716, !49, i64 8718, !49, i64 8720, !49, i64 8722, !49, i64 8724, !49, i64 8726, !35, i64 8728, !49, i64 8896, !49, i64 8898, !49, i64 8900, !49, i64 8902, !49, i64 8904, !49, i64 8906, !49, i64 8908, !49, i64 8910, !41, i64 8912, !41, i64 8916, !49, i64 8920, !49, i64 8922, !49, i64 8924, !49, i64 8926, !49, i64 8928, !49, i64 8930, !49, i64 8932, !49, i64 8934, !49, i64 8936, !49, i64 8938, !35, i64 8940, !35, i64 8941, !35, i64 8942, !35, i64 8943, !49, i64 8944, !49, i64 8946, !49, i64 8948, !49, i64 8950, !49, i64 8952, !49, i64 8954, !60, i64 8956, !60, i64 8960, !41, i64 8964, !49, i64 8968, !49, i64 8970, !60, i64 8972, !49, i64 8976, !49, i64 8978, !49, i64 8980, !49, i64 8982, !61, i64 8984, !35, i64 9760, !35, i64 9772, !49, i64 9788, !35, i64 9790, !35, i64 9791, !35, i64 9792, !35, i64 9872, !41, i64 10896, !41, i64 10900, !60, i64 10904, !60, i64 10908, !41, i64 10912, !49, i64 10916, !49, i64 10918, !49, i64 10920, !49, i64 10922, !49, i64 10924, !49, i64 10926, !62, i64 10928}
!60 = !{!"float", !35, i64 0}
!61 = !{!"ColorBand", !49, i64 0, !49, i64 2, !35, i64 4, !35, i64 5, !35, i64 6, !35, i64 7, !35, i64 8}
!62 = !{!"WalkNavigation", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !49, i64 24, !35, i64 26}
!63 = !{!40, !41, i64 32}
!64 = !{!47, !38, i64 136}
!65 = !{!47, !38, i64 152}
!66 = !{!47, !41, i64 168}
!67 = !{!47, !38, i64 160}
!68 = !{!47, !41, i64 172}
!69 = distinct !{!69, !44, !45}
!70 = distinct !{!70, !44, !45}
!71 = !{!72, !38, i64 0}
!72 = !{!"Global", !38, i64 0, !35, i64 8, !35, i64 1032, !35, i64 2056, !35, i64 2057, !35, i64 2058, !50, i64 2064, !35, i64 2080, !35, i64 2081, !35, i64 2082, !49, i64 2084, !49, i64 2086, !49, i64 2088, !35, i64 2090, !49, i64 2092, !41, i64 2096, !41, i64 2100, !35, i64 2104, !41, i64 2108, !41, i64 2112, !35, i64 2116}
!73 = distinct !{!73, !44, !45}
!74 = !{!75, !76, i64 88}
!75 = !{!"stat", !76, i64 0, !76, i64 8, !76, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !76, i64 40, !76, i64 48, !76, i64 56, !76, i64 64, !77, i64 72, !77, i64 88, !77, i64 104, !35, i64 120}
!76 = !{!"long", !35, i64 0}
!77 = !{!"timespec", !76, i64 0, !76, i64 8}
!78 = !{!47, !51, i64 200}
!79 = distinct !{!79, !44, !45}
!80 = distinct !{!80, !44, !45}
!81 = distinct !{!81, !44, !45}
!82 = !{!83, !49, i64 24}
!83 = !{!"bController", !38, i64 0, !38, i64 8, !38, i64 16, !49, i64 24, !49, i64 26, !49, i64 28, !49, i64 30, !49, i64 32, !49, i64 34, !49, i64 36, !49, i64 38, !35, i64 40, !38, i64 104, !38, i64 112, !38, i64 120, !49, i64 128, !49, i64 130, !41, i64 132}
!84 = !{!83, !38, i64 104}
!85 = !{!86, !38, i64 0}
!86 = !{!"bPythonCont", !38, i64 0, !35, i64 8, !41, i64 72, !41, i64 76}
!87 = distinct !{!87, !44, !45}
!88 = !{!89, !49, i64 24}
!89 = !{!"bActuator", !38, i64 0, !38, i64 8, !38, i64 16, !49, i64 24, !49, i64 26, !49, i64 28, !49, i64 30, !35, i64 32, !38, i64 96, !38, i64 104}
!90 = !{!89, !38, i64 96}
!91 = !{!92, !38, i64 16}
!92 = !{!"bTwoDFilterActuator", !35, i64 0, !49, i64 4, !49, i64 6, !41, i64 8, !60, i64 12, !38, i64 16}
!93 = distinct !{!93, !44, !45}
!94 = !{!95, !49, i64 136}
!95 = !{!"Object", !48, i64 0, !38, i64 120, !38, i64 128, !49, i64 136, !49, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !35, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !96, i64 312, !38, i64 360, !50, i64 368, !50, i64 384, !50, i64 400, !50, i64 416, !41, i64 432, !41, i64 436, !38, i64 440, !38, i64 448, !41, i64 456, !41, i64 460, !35, i64 464, !35, i64 476, !35, i64 488, !35, i64 500, !35, i64 512, !35, i64 524, !35, i64 536, !35, i64 548, !35, i64 560, !35, i64 576, !35, i64 592, !35, i64 604, !60, i64 616, !60, i64 620, !35, i64 624, !35, i64 688, !35, i64 752, !35, i64 816, !35, i64 880, !41, i64 944, !49, i64 948, !49, i64 950, !49, i64 952, !49, i64 954, !49, i64 956, !49, i64 958, !49, i64 960, !49, i64 962, !49, i64 964, !35, i64 966, !35, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !60, i64 988, !60, i64 992, !60, i64 996, !60, i64 1000, !60, i64 1004, !60, i64 1008, !60, i64 1012, !60, i64 1016, !60, i64 1020, !60, i64 1024, !60, i64 1028, !60, i64 1032, !49, i64 1036, !49, i64 1038, !49, i64 1040, !35, i64 1042, !35, i64 1043, !49, i64 1044, !35, i64 1046, !35, i64 1047, !60, i64 1048, !60, i64 1052, !50, i64 1056, !50, i64 1072, !50, i64 1088, !50, i64 1104, !60, i64 1120, !49, i64 1124, !49, i64 1126, !35, i64 1128, !41, i64 1144, !41, i64 1148, !38, i64 1152, !35, i64 1160, !35, i64 1161, !49, i64 1162, !35, i64 1164, !50, i64 1176, !50, i64 1192, !50, i64 1208, !50, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !35, i64 1264, !35, i64 1265, !49, i64 1266, !60, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !76, i64 1304, !76, i64 1312, !41, i64 1320, !41, i64 1324, !50, i64 1328, !50, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !35, i64 1384, !38, i64 1392, !50, i64 1400, !38, i64 1416}
!96 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !49, i64 16, !49, i64 18, !49, i64 20, !49, i64 22, !49, i64 24, !49, i64 26, !49, i64 28, !49, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!97 = !{!95, !38, i64 288}
!98 = distinct !{!98, !44, !45}
!99 = !{!100, !49, i64 24}
!100 = !{!"bConstraint", !38, i64 0, !38, i64 8, !38, i64 16, !49, i64 24, !49, i64 26, !35, i64 28, !35, i64 29, !35, i64 30, !49, i64 94, !60, i64 96, !60, i64 100, !38, i64 104, !60, i64 112, !60, i64 116}
!101 = !{!100, !38, i64 16}
!102 = !{!103, !38, i64 0}
!103 = !{!"bPythonConstraint", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !50, i64 24, !38, i64 40, !35, i64 48}
!104 = distinct !{!104, !44, !45}
!105 = distinct !{!105, !44, !45}
!106 = distinct !{!106, !44, !45}
!107 = !{!108, !38, i64 768}
!108 = !{!"Material", !48, i64 0, !38, i64 120, !49, i64 128, !49, i64 130, !60, i64 132, !60, i64 136, !60, i64 140, !60, i64 144, !60, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180, !60, i64 184, !60, i64 188, !60, i64 192, !60, i64 196, !60, i64 200, !60, i64 204, !60, i64 208, !60, i64 212, !60, i64 216, !60, i64 220, !109, i64 224, !110, i64 312, !60, i64 328, !60, i64 332, !60, i64 336, !60, i64 340, !60, i64 344, !60, i64 348, !60, i64 352, !49, i64 356, !49, i64 358, !49, i64 360, !35, i64 362, !35, i64 363, !60, i64 364, !60, i64 368, !49, i64 372, !49, i64 374, !60, i64 376, !60, i64 380, !60, i64 384, !60, i64 388, !49, i64 392, !49, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !49, i64 412, !49, i64 414, !49, i64 416, !49, i64 418, !60, i64 420, !60, i64 424, !60, i64 428, !60, i64 432, !60, i64 436, !60, i64 440, !60, i64 444, !60, i64 448, !60, i64 452, !60, i64 456, !35, i64 460, !60, i64 524, !60, i64 528, !60, i64 532, !41, i64 536, !35, i64 540, !35, i64 541, !35, i64 542, !35, i64 543, !49, i64 544, !49, i64 546, !49, i64 548, !35, i64 550, !35, i64 551, !49, i64 552, !49, i64 554, !60, i64 556, !60, i64 560, !35, i64 564, !60, i64 580, !60, i64 584, !49, i64 588, !49, i64 590, !38, i64 592, !38, i64 600, !35, i64 608, !35, i64 609, !35, i64 610, !35, i64 611, !49, i64 612, !49, i64 614, !60, i64 616, !60, i64 620, !35, i64 624, !38, i64 768, !38, i64 776, !38, i64 784, !38, i64 792, !60, i64 800, !60, i64 804, !60, i64 808, !60, i64 812, !60, i64 816, !49, i64 820, !49, i64 822, !35, i64 824, !35, i64 836, !60, i64 848, !60, i64 852, !60, i64 856, !60, i64 860, !60, i64 864, !60, i64 868, !60, i64 872, !49, i64 876, !49, i64 878, !41, i64 880, !49, i64 884, !49, i64 886, !35, i64 888, !49, i64 904, !49, i64 906, !49, i64 908, !49, i64 910, !49, i64 912, !35, i64 914, !38, i64 920, !50, i64 928}
!109 = !{!"VolumeSettings", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !35, i64 16, !35, i64 28, !35, i64 40, !60, i64 52, !60, i64 56, !60, i64 60, !49, i64 64, !49, i64 66, !49, i64 68, !49, i64 70, !60, i64 72, !60, i64 76, !60, i64 80, !60, i64 84}
!110 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!111 = !{!112, !49, i64 172}
!112 = !{!"bNode", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !35, i64 40, !35, i64 104, !41, i64 168, !49, i64 172, !49, i64 174, !49, i64 176, !49, i64 178, !49, i64 180, !49, i64 182, !49, i64 184, !49, i64 186, !35, i64 188, !50, i64 200, !50, i64 216, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !50, i64 264, !60, i64 280, !60, i64 284, !60, i64 288, !60, i64 292, !60, i64 296, !60, i64 300, !60, i64 304, !41, i64 308, !35, i64 312, !49, i64 376, !49, i64 378, !60, i64 380, !60, i64 384, !49, i64 388, !49, i64 390, !38, i64 392, !113, i64 400, !113, i64 416, !113, i64 432, !49, i64 448, !49, i64 450, !41, i64 452, !38, i64 456}
!113 = !{!"rctf", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12}
!114 = !{!112, !38, i64 240}
!115 = distinct !{!115, !44, !45}
!116 = distinct !{!116, !44, !45}
!117 = distinct !{!117, !44, !45}
!118 = distinct !{!118, !44, !45}
!119 = distinct !{!119, !44, !45}
!120 = distinct !{!120, !44, !45}
!121 = !{!122, !41, i64 32}
!122 = !{!"SpaceLink", !38, i64 0, !38, i64 8, !50, i64 16, !41, i64 32, !60, i64 36, !35, i64 40}
!123 = !{!124, !38, i64 56}
!124 = !{!"SpaceText", !38, i64 0, !38, i64 8, !50, i64 16, !41, i64 32, !60, i64 36, !35, i64 40, !38, i64 56, !41, i64 64, !41, i64 68, !49, i64 72, !49, i64 74, !49, i64 76, !35, i64 78, !35, i64 79, !41, i64 80, !41, i64 84, !41, i64 88, !49, i64 92, !49, i64 94, !49, i64 96, !49, i64 98, !60, i64 100, !125, i64 104, !125, i64 120, !41, i64 136, !41, i64 140, !35, i64 144, !35, i64 400, !49, i64 656, !49, i64 658, !35, i64 660, !38, i64 664, !35, i64 672}
!125 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!126 = !{!124, !41, i64 64}
!127 = distinct !{!127, !44, !45}
!128 = distinct !{!128, !44, !45}
!129 = distinct !{!129, !44, !45}
!130 = !{!131, !38, i64 16}
!131 = !{!"FreestyleModuleConfig", !38, i64 0, !38, i64 8, !38, i64 16, !49, i64 24, !35, i64 26}
!132 = distinct !{!132, !44, !45}
!133 = !{!47, !38, i64 144}
!134 = !{!40, !38, i64 0}
!135 = distinct !{!135, !44, !45}
!136 = !{!40, !38, i64 8}
!137 = distinct !{!137, !44, !45}
!138 = distinct !{!138, !44, !45}
!139 = !{!41, !41, i64 0}
!140 = !{!76, !76, i64 0}
!141 = !{i8 0, i8 2}
!142 = distinct !{!142, !44, !45}
!143 = distinct !{!143, !44, !45}
!144 = distinct !{!144, !44, !45}
!145 = distinct !{!145, !44, !45}
!146 = !{!75, !41, i64 24}
!147 = distinct !{!147, !44, !45}
!148 = distinct !{!148, !44, !45}
!149 = distinct !{!149, !44, !45}
!150 = distinct !{!150, !44, !45}
!151 = distinct !{!151, !44, !45}
!152 = distinct !{!152, !44, !45}
!153 = distinct !{!153, !44, !45}
!154 = distinct !{!154, !44, !45}
!155 = distinct !{!155, !44, !45}
!156 = distinct !{!156, !44, !45}
!157 = distinct !{!157, !44, !45}
!158 = distinct !{!158, !44, !45}
!159 = distinct !{!159, !44, !45}
!160 = distinct !{!160, !44, !45}
!161 = distinct !{!161, !44, !45}
!162 = distinct !{!162, !44, !45}
!163 = distinct !{!163, !44, !45}
!164 = distinct !{!164, !44, !45}
!165 = distinct !{!165, !44, !45}
!166 = distinct !{!166, !44, !45}
!167 = distinct !{!167, !45}
!168 = distinct !{!168, !44, !45}
!169 = distinct !{!169, !44, !45}
!170 = distinct !{!170, !44, !45}
!171 = distinct !{!171, !45}
!172 = distinct !{!172, !44, !45}
!173 = distinct !{!173, !44, !45}
!174 = distinct !{!174, !44, !45}
!175 = distinct !{!175, !44, !45}
!176 = distinct !{!176, !44, !45}
!177 = distinct !{!177, !44, !45}
!178 = distinct !{!178, !44, !45}
!179 = distinct !{!179, !44, !45}
