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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @txt_set_undostate(i32 noundef %0) local_unnamed_addr #0 {
  %2 = trunc i32 %0 to i8
  store i8 %2, ptr @undoing, align 1, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @txt_get_undostate() local_unnamed_addr #1 {
  %1 = load i8, ptr @undoing, align 1, !tbaa !34
  %2 = zext i8 %1 to i32
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void %7(ptr noundef %9) #25
  %10 = getelementptr inbounds %struct.TextLine, ptr %6, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %14(ptr noundef nonnull %11) #25
  br label %15

15:                                               ; preds = %5, %13
  %16 = load ptr, ptr %6, align 8, !tbaa !37
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %5, !llvm.loop !43

18:                                               ; preds = %15, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #25
  %19 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %23(ptr noundef nonnull %20) #25
  br label %24

24:                                               ; preds = %22, %18
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %26 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  tail call void %25(ptr noundef %27) #25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_text_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 22612, ptr noundef %1) #25
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 6
  store i32 1, ptr %4, align 4, !tbaa !52
  %5 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !45
  tail call fastcc void @init_undo_text(ptr noundef %3) #26
  %6 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 3
  store i32 1, ptr %6, align 4, !tbaa !53
  %7 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 2
  %8 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !54
  %9 = and i32 %8, 33554432
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 1029, i32 5
  store i32 %11, ptr %7, align 8
  %12 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 4
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %12) #26
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %14 = tail call ptr %13(i64 noundef 40, ptr noundef nonnull @.str) #25
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %16 = tail call ptr %15(i64 noundef 1, ptr noundef nonnull @.str.1) #25
  %17 = getelementptr inbounds %struct.TextLine, ptr %14, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !39
  %18 = getelementptr inbounds %struct.TextLine, ptr %14, i64 0, i32 3
  store ptr null, ptr %18, align 8, !tbaa !42
  store i8 0, ptr %16, align 1, !tbaa !34
  %19 = getelementptr inbounds %struct.TextLine, ptr %14, i64 0, i32 4
  store i32 0, ptr %19, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  tail call void @BLI_addhead(ptr noundef nonnull %12, ptr noundef nonnull %14) #25
  %20 = load ptr, ptr %12, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 5
  store ptr %20, ptr %21, align 8, !tbaa !61
  %22 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 7
  store i32 0, ptr %22, align 8, !tbaa !62
  %23 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 6
  store ptr %20, ptr %23, align 8, !tbaa !63
  %24 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 8
  store i32 0, ptr %24, align 4, !tbaa !64
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_undo_text(ptr nocapture noundef writeonly %0) unnamed_addr #2 !PGOFuncName !65 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 10
  store i32 -1, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 11
  store i32 1024, ptr %3, align 4, !tbaa !67
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %5 = tail call ptr %4(i64 noundef 1024, ptr noundef nonnull @.str.19) #25
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  store ptr %5, ptr %6, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !68 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @txt_extended_ascii_as_utf8(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !37
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #27
  %4 = trunc i64 %3 to i32
  %5 = load i8, ptr %2, align 1, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %74, label %7

7:                                                ; preds = %1, %14
  %8 = phi ptr [ %20, %14 ], [ %2, %1 ]
  %9 = phi i32 [ %15, %14 ], [ 0, %1 ]
  %10 = phi i32 [ %17, %14 ], [ 0, %1 ]
  %11 = sub nsw i32 %4, %10
  %12 = tail call i32 @BLI_utf8_invalid_byte(ptr noundef nonnull %8, i32 noundef %11) #25
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
  br i1 %22, label %25, label %7, !llvm.loop !69

23:                                               ; preds = %7
  %24 = icmp eq i32 %9, 0
  br i1 %24, label %74, label %25

25:                                               ; preds = %14, %23
  %26 = phi i32 [ %9, %23 ], [ %15, %14 ]
  %27 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %28 = add nsw i32 %26, %4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = tail call ptr %27(i64 noundef %30, ptr noundef nonnull @.str.2) #25
  %32 = load ptr, ptr %0, align 8, !tbaa !37
  %33 = load i8, ptr %32, align 1, !tbaa !34
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %69, label %35

35:                                               ; preds = %25, %50
  %36 = phi ptr [ %66, %50 ], [ %32, %25 ]
  %37 = phi i64 [ %65, %50 ], [ 0, %25 ]
  %38 = phi i32 [ %63, %50 ], [ 0, %25 ]
  %39 = phi i32 [ %61, %50 ], [ 0, %25 ]
  %40 = sub nsw i32 %4, %39
  %41 = tail call i32 @BLI_utf8_invalid_byte(ptr noundef nonnull %36, i32 noundef %40) #25
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
  %59 = tail call i64 @BLI_str_utf8_from_unicode(i32 noundef %57, ptr noundef %58) #25
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

69:                                               ; preds = %50, %25, %47
  %70 = sext i32 %28 to i64
  %71 = getelementptr inbounds i8, ptr %31, i64 %70
  store i8 0, ptr %71, align 1, !tbaa !34
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %73 = load ptr, ptr %0, align 8, !tbaa !37
  tail call void %72(ptr noundef %73) #25
  store ptr %31, ptr %0, align 8, !tbaa !37
  br label %74

74:                                               ; preds = %1, %69, %23
  %75 = phi i32 [ %26, %69 ], [ 0, %23 ], [ 0, %1 ]
  ret i32 %75
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @BLI_utf8_invalid_byte(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare i64 @BLI_str_utf8_from_unicode(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BKE_text_reload(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca [1024 x i8], align 16
  %3 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #28
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %52, label %7

7:                                                ; preds = %1
  %8 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef nonnull %5, i64 noundef 1024) #25
  %9 = load ptr, ptr @G, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 2
  %11 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %2, ptr noundef nonnull %10) #25
  %12 = call ptr @BLI_fopen(ptr noundef nonnull %2, ptr noundef nonnull @.str.3) #25
  %13 = icmp eq ptr %12, null
  br i1 %13, label %52, label %14

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
  call void %20(ptr noundef %22) #25
  %23 = getelementptr inbounds %struct.TextLine, ptr %19, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %27(ptr noundef nonnull %24) #25
  br label %28

28:                                               ; preds = %18, %26
  %29 = load ptr, ptr %19, align 8, !tbaa !37
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !73

31:                                               ; preds = %28, %14
  call void @BLI_freelistN(ptr noundef nonnull %15) #25
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %15) #26
  %32 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %34 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  call void %33(ptr noundef %35) #25
  call fastcc void @init_undo_text(ptr noundef %0) #26
  %36 = call i32 @fseek(ptr noundef nonnull %12, i64 noundef 0, i32 noundef 2) #26
  %37 = call i64 @ftell(ptr noundef nonnull %12) #26
  %38 = call i32 @fseek(ptr noundef nonnull %12, i64 noundef 0, i32 noundef 0) #26
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %40 = shl i64 %37, 32
  %41 = ashr exact i64 %40, 32
  %42 = call ptr %39(i64 noundef %41, ptr noundef nonnull @.str.4) #25
  %43 = call i64 @fread(ptr noundef %42, i64 noundef 1, i64 noundef %41, ptr noundef nonnull %12) #26
  %44 = trunc i64 %43 to i32
  %45 = call i32 @fclose(ptr noundef nonnull %12) #26
  %46 = call i32 @BLI_stat(ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %47 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 12
  %48 = load i64, ptr %47, align 8, !tbaa !74
  %49 = sitofp i64 %48 to double
  %50 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 13
  store double %49, ptr %50, align 8, !tbaa !78
  call fastcc void @text_from_buf(ptr noundef %0, ptr noundef %42, i32 noundef %44) #26
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %51(ptr noundef %42) #25
  br label %52

52:                                               ; preds = %7, %1, %31
  %53 = phi i32 [ 1, %31 ], [ 0, %1 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #28
  ret i32 %53
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @BLI_stat(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @text_from_buf(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 !PGOFuncName !79 {
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 4, !tbaa !53
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %56

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %8 = zext nneg i32 %2 to i64
  br label %9

9:                                                ; preds = %36, %6
  %10 = phi i64 [ 0, %6 ], [ %37, %36 ]
  %11 = phi i32 [ 0, %6 ], [ %38, %36 ]
  %12 = getelementptr inbounds i8, ptr %1, i64 %10
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = icmp eq i8 %13, 10
  br i1 %14, label %15, label %32

15:                                               ; preds = %9
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %17 = tail call ptr %16(i64 noundef 40, ptr noundef nonnull @.str) #25
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %19 = add nuw nsw i32 %11, 1
  %20 = zext nneg i32 %19 to i64
  %21 = tail call ptr %18(i64 noundef %20, ptr noundef nonnull @.str.1) #25
  %22 = getelementptr inbounds %struct.TextLine, ptr %17, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !39
  %23 = getelementptr inbounds %struct.TextLine, ptr %17, i64 0, i32 3
  store ptr null, ptr %23, align 8, !tbaa !42
  %24 = icmp eq i32 %11, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %15
  %26 = trunc i64 %10 to i32
  %27 = sub nsw i32 %26, %11
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %1, i64 %28
  %30 = zext nneg i32 %11 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %29, i64 %30, i1 false)
  %31 = load ptr, ptr %22, align 8, !tbaa !39
  br label %39

32:                                               ; preds = %9
  %33 = add nuw nsw i32 %11, 1
  %34 = add nuw nsw i64 %10, 1
  %35 = icmp eq i64 %34, %8
  br i1 %35, label %56, label %36

36:                                               ; preds = %32, %39
  %37 = phi i64 [ %34, %32 ], [ %46, %39 ]
  %38 = phi i32 [ %33, %32 ], [ 0, %39 ]
  br label %9, !llvm.loop !80

39:                                               ; preds = %15, %25
  %40 = phi i64 [ %30, %25 ], [ 0, %15 ]
  %41 = phi ptr [ %31, %25 ], [ %21, %15 ]
  %42 = getelementptr inbounds i8, ptr %41, i64 %40
  store i8 0, ptr %42, align 1, !tbaa !34
  %43 = getelementptr inbounds %struct.TextLine, ptr %17, i64 0, i32 4
  store i32 %11, ptr %43, align 8, !tbaa !59
  tail call fastcc void @cleanup_textline(ptr noundef nonnull %17) #26
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef nonnull %17) #25
  %44 = load i32, ptr %4, align 4, !tbaa !53
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %4, align 4, !tbaa !53
  %46 = add nuw nsw i64 %10, 1
  %47 = icmp eq i64 %46, %8
  br i1 %47, label %48, label %36

48:                                               ; preds = %39
  %49 = icmp eq i32 %45, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %48
  %51 = zext nneg i32 %2 to i64
  %52 = getelementptr i8, ptr %1, i64 %51
  %53 = getelementptr i8, ptr %52, i64 -1
  %54 = load i8, ptr %53, align 1, !tbaa !34
  %55 = icmp eq i8 %54, 10
  br i1 %55, label %56, label %84

56:                                               ; preds = %32, %3, %48, %50
  %57 = phi i1 [ true, %50 ], [ true, %48 ], [ true, %3 ], [ false, %32 ]
  %58 = phi i32 [ %2, %50 ], [ %2, %48 ], [ 0, %3 ], [ %2, %32 ]
  %59 = phi i32 [ 0, %50 ], [ 0, %48 ], [ 0, %3 ], [ %33, %32 ]
  %60 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %61 = tail call ptr %60(i64 noundef 40, ptr noundef nonnull @.str) #25
  %62 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %63 = add nsw i32 %59, 1
  %64 = sext i32 %63 to i64
  %65 = tail call ptr %62(i64 noundef %64, ptr noundef nonnull @.str.1) #25
  %66 = getelementptr inbounds %struct.TextLine, ptr %61, i64 0, i32 2
  store ptr %65, ptr %66, align 8, !tbaa !39
  %67 = getelementptr inbounds %struct.TextLine, ptr %61, i64 0, i32 3
  store ptr null, ptr %67, align 8, !tbaa !42
  br i1 %57, label %68, label %70

68:                                               ; preds = %56
  %69 = zext nneg i32 %59 to i64
  br label %76

70:                                               ; preds = %56
  %71 = sub nsw i32 %58, %59
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %1, i64 %72
  %74 = sext i32 %59 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %65, ptr align 1 %73, i64 %74, i1 false)
  %75 = load ptr, ptr %66, align 8, !tbaa !39
  br label %76

76:                                               ; preds = %68, %70
  %77 = phi i64 [ %69, %68 ], [ %74, %70 ]
  %78 = phi ptr [ %65, %68 ], [ %75, %70 ]
  %79 = getelementptr inbounds i8, ptr %78, i64 %77
  store i8 0, ptr %79, align 1, !tbaa !34
  %80 = getelementptr inbounds %struct.TextLine, ptr %61, i64 0, i32 4
  store i32 %59, ptr %80, align 8, !tbaa !59
  tail call fastcc void @cleanup_textline(ptr noundef nonnull %61) #26
  %81 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  tail call void @BLI_addtail(ptr noundef nonnull %81, ptr noundef nonnull %61) #25
  %82 = load i32, ptr %4, align 4, !tbaa !53
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %4, align 4, !tbaa !53
  br label %84

84:                                               ; preds = %76, %50
  %85 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !60
  %87 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %86, ptr %87, align 8, !tbaa !63
  %88 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  store ptr %86, ptr %88, align 8, !tbaa !61
  %89 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 0, ptr %89, align 4, !tbaa !64
  %90 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  store i32 0, ptr %90, align 8, !tbaa !62
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_text_load_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = alloca [1024 x i8], align 16
  %6 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #28
  %7 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 1024) #25
  %8 = icmp eq ptr %2, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %5, ptr noundef nonnull %2) #25
  br label %11

11:                                               ; preds = %9, %4
  %12 = call ptr @BLI_fopen(ptr noundef nonnull %5, ptr noundef nonnull @.str.3) #25
  %13 = icmp eq ptr %12, null
  br i1 %13, label %55, label %14

14:                                               ; preds = %11
  %15 = call ptr @BLI_path_basename(ptr noundef nonnull %5) #25
  %16 = call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 22612, ptr noundef %15) #25
  %17 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 6
  store i32 1, ptr %17, align 4, !tbaa !52
  %18 = getelementptr inbounds %struct.Text, ptr %16, i64 0, i32 4
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %18) #26
  %19 = getelementptr inbounds %struct.Text, ptr %16, i64 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %20 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !54
  %21 = and i32 %20, 33554432
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.Text, ptr %16, i64 0, i32 2
  store i32 1024, ptr %24, align 8, !tbaa !81
  br label %25

25:                                               ; preds = %23, %14
  %26 = icmp eq i8 %3, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %25
  %28 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %29 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %30 = add i64 %29, 1
  %31 = call ptr %28(i64 noundef %30, ptr noundef nonnull @.str.5) #25
  %32 = getelementptr inbounds %struct.Text, ptr %16, i64 0, i32 1
  store ptr %31, ptr %32, align 8, !tbaa !45
  %33 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %1) #25
  br label %38

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.Text, ptr %16, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !81
  %37 = or i32 %36, 5
  store i32 %37, ptr %35, align 8, !tbaa !81
  br label %38

38:                                               ; preds = %34, %27
  call fastcc void @init_undo_text(ptr noundef nonnull %16) #26
  %39 = call i32 @fseek(ptr noundef nonnull %12, i64 noundef 0, i32 noundef 2) #26
  %40 = call i64 @ftell(ptr noundef nonnull %12) #26
  %41 = call i32 @fseek(ptr noundef nonnull %12, i64 noundef 0, i32 noundef 0) #26
  %42 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %43 = shl i64 %40, 32
  %44 = ashr exact i64 %43, 32
  %45 = call ptr %42(i64 noundef %44, ptr noundef nonnull @.str.4) #25
  %46 = call i64 @fread(ptr noundef %45, i64 noundef 1, i64 noundef %44, ptr noundef nonnull %12) #26
  %47 = trunc i64 %46 to i32
  %48 = call i32 @fclose(ptr noundef nonnull %12) #26
  %49 = call i32 @BLI_stat(ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %50 = getelementptr inbounds %struct.stat, ptr %6, i64 0, i32 12
  %51 = load i64, ptr %50, align 8, !tbaa !74
  %52 = sitofp i64 %51 to double
  %53 = getelementptr inbounds %struct.Text, ptr %16, i64 0, i32 13
  store double %52, ptr %53, align 8, !tbaa !78
  call fastcc void @text_from_buf(ptr noundef nonnull %16, ptr noundef %45, i32 noundef %47) #26
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %54(ptr noundef %45) #25
  br label %55

55:                                               ; preds = %11, %38
  %56 = phi ptr [ %16, %38 ], [ null, %11 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #28
  ret ptr %56
}

; Function Attrs: optsize
declare ptr @BLI_path_basename(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_text_load(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @BKE_text_load_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0) #26
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_text_copy(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @BKE_libblock_copy(ptr noundef %0) #25
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #27
  %9 = add i64 %8, 1
  %10 = tail call ptr %7(i64 noundef %9, ptr noundef nonnull @.str.5) #25
  %11 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !45
  %12 = load ptr, ptr %3, align 8, !tbaa !45
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %12) #25
  br label %16

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !45
  br label %16

16:                                               ; preds = %14, %6
  %17 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !81
  %19 = or i32 %18, 1
  %20 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 2
  store i32 %19, ptr %20, align 8, !tbaa !81
  %21 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 4
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %21) #26
  %22 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 5
  %23 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %24 = load i32, ptr %23, align 4, !tbaa !53
  %25 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 3
  store i32 %24, ptr %25, align 4, !tbaa !53
  %26 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !37
  %28 = icmp eq ptr %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %16, %29
  %30 = phi ptr [ %46, %29 ], [ %27, %16 ]
  %31 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %32 = tail call ptr %31(i64 noundef 40, ptr noundef nonnull @.str) #25
  %33 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %34 = getelementptr inbounds %struct.TextLine, ptr %30, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !59
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = tail call ptr %33(i64 noundef %37, ptr noundef nonnull @.str.1) #25
  %39 = getelementptr inbounds %struct.TextLine, ptr %32, i64 0, i32 2
  store ptr %38, ptr %39, align 8, !tbaa !39
  %40 = getelementptr inbounds %struct.TextLine, ptr %32, i64 0, i32 3
  store ptr null, ptr %40, align 8, !tbaa !42
  %41 = getelementptr inbounds %struct.TextLine, ptr %30, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !39
  %43 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) %42) #25
  %44 = load i32, ptr %34, align 8, !tbaa !59
  %45 = getelementptr inbounds %struct.TextLine, ptr %32, i64 0, i32 4
  store i32 %44, ptr %45, align 8, !tbaa !59
  tail call void @BLI_addtail(ptr noundef nonnull %21, ptr noundef %32) #25
  %46 = load ptr, ptr %30, align 8, !tbaa !37
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %29, !llvm.loop !82

48:                                               ; preds = %29, %16
  %49 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 6
  %50 = load ptr, ptr %21, align 8, !tbaa !60
  store ptr %50, ptr %49, align 8, !tbaa !63
  store ptr %50, ptr %22, align 8, !tbaa !61
  %51 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 8
  store i32 0, ptr %51, align 4, !tbaa !64
  %52 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 7
  store i32 0, ptr %52, align 8, !tbaa !62
  tail call fastcc void @init_undo_text(ptr noundef %2) #26
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
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
  %14 = load i16, ptr %13, align 8, !tbaa !83
  %15 = icmp eq i16 %14, 3
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bController, ptr %12, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  %19 = load ptr, ptr %18, align 8, !tbaa !86
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store ptr null, ptr %18, align 8, !tbaa !86
  br label %22

22:                                               ; preds = %16, %21, %11
  %23 = load ptr, ptr %12, align 8, !tbaa !37
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %11, !llvm.loop !88

25:                                               ; preds = %22, %6
  %26 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 94
  %27 = load ptr, ptr %26, align 8, !tbaa !37
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %25, %41
  %30 = phi ptr [ %42, %41 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.bActuator, ptr %30, i64 0, i32 3
  %32 = load i16, ptr %31, align 8, !tbaa !89
  %33 = icmp eq i16 %32, 19
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bActuator, ptr %30, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !91
  %37 = getelementptr inbounds %struct.bTwoDFilterActuator, ptr %36, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !92
  %39 = icmp eq ptr %38, %1
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store ptr null, ptr %37, align 8, !tbaa !92
  br label %41

41:                                               ; preds = %34, %40, %29
  %42 = load ptr, ptr %30, align 8, !tbaa !37
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %29, !llvm.loop !94

44:                                               ; preds = %41, %25
  %45 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %46 = load i16, ptr %45, align 8, !tbaa !95
  %47 = icmp eq i16 %46, 25
  br i1 %47, label %48, label %81

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 18
  %50 = load ptr, ptr %49, align 8, !tbaa !98
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
  br i1 %58, label %81, label %59, !llvm.loop !99

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
  %69 = load i16, ptr %68, align 8, !tbaa !100
  %70 = icmp eq i16 %69, 11
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.bConstraint, ptr %66, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !102
  %74 = load ptr, ptr %73, align 8, !tbaa !103
  %75 = icmp eq ptr %74, %1
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store ptr null, ptr %73, align 8, !tbaa !103
  br label %77

77:                                               ; preds = %71, %76, %65
  %78 = phi i16 [ %67, %65 ], [ 1, %76 ], [ 1, %71 ]
  %79 = load ptr, ptr %66, align 8, !tbaa !37
  %80 = icmp eq ptr %79, null
  br i1 %80, label %55, label %65, !llvm.loop !105

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
  %90 = load i16, ptr %89, align 8, !tbaa !100
  %91 = icmp eq i16 %90, 11
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.bConstraint, ptr %87, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !102
  %95 = load ptr, ptr %94, align 8, !tbaa !103
  %96 = icmp eq ptr %95, %1
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store ptr null, ptr %94, align 8, !tbaa !103
  br label %98

98:                                               ; preds = %92, %97, %86
  %99 = phi i16 [ %88, %86 ], [ 1, %97 ], [ 1, %92 ]
  %100 = load ptr, ptr %87, align 8, !tbaa !37
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %86, !llvm.loop !106

102:                                              ; preds = %98, %81
  %103 = phi i16 [ %82, %81 ], [ %99, %98 ]
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  tail call void @DAG_id_tag_update(ptr noundef nonnull %7, i16 noundef signext 2) #25
  br label %106

106:                                              ; preds = %102, %105
  %107 = load ptr, ptr %7, align 8, !tbaa !37
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %6, !llvm.loop !107

109:                                              ; preds = %106, %2
  %110 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %111 = load ptr, ptr %110, align 8, !tbaa !37
  %112 = icmp eq ptr %111, null
  br i1 %112, label %138, label %113

113:                                              ; preds = %109, %135
  %114 = phi ptr [ %136, %135 ], [ %111, %109 ]
  %115 = getelementptr inbounds %struct.Material, ptr %114, i64 0, i32 103
  %116 = load ptr, ptr %115, align 8, !tbaa !108
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
  %125 = load i16, ptr %124, align 4, !tbaa !112
  %126 = icmp eq i16 %125, 171
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.bNode, ptr %123, i64 0, i32 20
  %129 = load ptr, ptr %128, align 8, !tbaa !115
  %130 = icmp eq ptr %129, %1
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store ptr null, ptr %128, align 8, !tbaa !115
  br label %132

132:                                              ; preds = %127, %131, %122
  %133 = load ptr, ptr %123, align 8, !tbaa !37
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %122, !llvm.loop !116

135:                                              ; preds = %132, %118, %113
  %136 = load ptr, ptr %114, align 8, !tbaa !37
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %113, !llvm.loop !117

138:                                              ; preds = %135, %109
  %139 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 35
  %140 = load ptr, ptr %139, align 8, !tbaa !37
  %141 = icmp eq ptr %140, null
  br i1 %141, label %163, label %145

142:                                              ; preds = %160, %145
  %143 = load ptr, ptr %146, align 8, !tbaa !37
  %144 = icmp eq ptr %143, null
  br i1 %144, label %163, label %145, !llvm.loop !118

145:                                              ; preds = %138, %142
  %146 = phi ptr [ %143, %142 ], [ %140, %138 ]
  %147 = getelementptr inbounds %struct.bNodeTree, ptr %146, i64 0, i32 7
  %148 = load ptr, ptr %147, align 8, !tbaa !37
  %149 = icmp eq ptr %148, null
  br i1 %149, label %142, label %150

150:                                              ; preds = %145, %160
  %151 = phi ptr [ %161, %160 ], [ %148, %145 ]
  %152 = getelementptr inbounds %struct.bNode, ptr %151, i64 0, i32 8
  %153 = load i16, ptr %152, align 4, !tbaa !112
  %154 = icmp eq i16 %153, 171
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.bNode, ptr %151, i64 0, i32 20
  %157 = load ptr, ptr %156, align 8, !tbaa !115
  %158 = icmp eq ptr %157, %1
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store ptr null, ptr %156, align 8, !tbaa !115
  br label %160

160:                                              ; preds = %155, %159, %150
  %161 = load ptr, ptr %151, align 8, !tbaa !37
  %162 = icmp eq ptr %161, null
  br i1 %162, label %142, label %150, !llvm.loop !119

163:                                              ; preds = %142, %138
  %164 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %165 = load ptr, ptr %164, align 8, !tbaa !37
  %166 = icmp eq ptr %165, null
  br i1 %166, label %197, label %170

167:                                              ; preds = %175, %170
  %168 = load ptr, ptr %171, align 8, !tbaa !37
  %169 = icmp eq ptr %168, null
  br i1 %169, label %197, label %170, !llvm.loop !120

170:                                              ; preds = %163, %167
  %171 = phi ptr [ %168, %167 ], [ %165, %163 ]
  %172 = getelementptr inbounds %struct.bScreen, ptr %171, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !37
  %174 = icmp eq ptr %173, null
  br i1 %174, label %167, label %178

175:                                              ; preds = %194, %178
  %176 = load ptr, ptr %179, align 8, !tbaa !37
  %177 = icmp eq ptr %176, null
  br i1 %177, label %167, label %178, !llvm.loop !121

178:                                              ; preds = %170, %175
  %179 = phi ptr [ %176, %175 ], [ %173, %170 ]
  %180 = getelementptr inbounds %struct.ScrArea, ptr %179, i64 0, i32 19
  %181 = load ptr, ptr %180, align 8, !tbaa !37
  %182 = icmp eq ptr %181, null
  br i1 %182, label %175, label %183

183:                                              ; preds = %178, %194
  %184 = phi ptr [ %195, %194 ], [ %181, %178 ]
  %185 = getelementptr inbounds %struct.SpaceLink, ptr %184, i64 0, i32 3
  %186 = load i32, ptr %185, align 8, !tbaa !122
  %187 = icmp eq i32 %186, 9
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.SpaceText, ptr %184, i64 0, i32 6
  %190 = load ptr, ptr %189, align 8, !tbaa !124
  %191 = icmp eq ptr %190, %1
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  store ptr null, ptr %189, align 8, !tbaa !124
  %193 = getelementptr inbounds %struct.SpaceText, ptr %184, i64 0, i32 7
  store i32 0, ptr %193, align 8, !tbaa !127
  br label %194

194:                                              ; preds = %188, %192, %183
  %195 = load ptr, ptr %184, align 8, !tbaa !37
  %196 = icmp eq ptr %195, null
  br i1 %196, label %175, label %183, !llvm.loop !128

197:                                              ; preds = %167, %163
  %198 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %199 = load ptr, ptr %198, align 8, !tbaa !37
  %200 = icmp eq ptr %199, null
  br i1 %200, label %226, label %204

201:                                              ; preds = %209, %204
  %202 = load ptr, ptr %205, align 8, !tbaa !37
  %203 = icmp eq ptr %202, null
  br i1 %203, label %226, label %204, !llvm.loop !129

204:                                              ; preds = %197, %201
  %205 = phi ptr [ %202, %201 ], [ %199, %197 ]
  %206 = getelementptr inbounds %struct.Scene, ptr %205, i64 0, i32 22, i32 60
  %207 = load ptr, ptr %206, align 8, !tbaa !37
  %208 = icmp eq ptr %207, null
  br i1 %208, label %201, label %212

209:                                              ; preds = %223, %212
  %210 = load ptr, ptr %213, align 8, !tbaa !37
  %211 = icmp eq ptr %210, null
  br i1 %211, label %201, label %212, !llvm.loop !130

212:                                              ; preds = %204, %209
  %213 = phi ptr [ %210, %209 ], [ %207, %204 ]
  %214 = getelementptr inbounds %struct.SceneRenderLayer, ptr %213, i64 0, i32 13
  %215 = load ptr, ptr %214, align 8, !tbaa !37
  %216 = icmp eq ptr %215, null
  br i1 %216, label %209, label %217

217:                                              ; preds = %212, %223
  %218 = phi ptr [ %224, %223 ], [ %215, %212 ]
  %219 = getelementptr inbounds %struct.FreestyleModuleConfig, ptr %218, i64 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !131
  %221 = icmp eq ptr %220, %1
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  store ptr null, ptr %219, align 8, !tbaa !131
  br label %223

223:                                              ; preds = %217, %222
  %224 = load ptr, ptr %218, align 8, !tbaa !37
  %225 = icmp eq ptr %224, null
  br i1 %225, label %209, label %217, !llvm.loop !133

226:                                              ; preds = %201, %197
  %227 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 6
  store i32 0, ptr %227, align 4, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_text_clear(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call i32 @txt_get_undostate() #26, !range !134
  tail call void @txt_set_undostate(i32 noundef 1) #26
  tail call void @txt_sel_all(ptr noundef %0) #26
  tail call fastcc void @txt_delete_sel(ptr noundef %0) #26
  tail call void @txt_set_undostate(i32 noundef %2) #26
  tail call fastcc void @txt_make_dirty(ptr noundef %0) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @txt_sel_all(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  store ptr %3, ptr %4, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  store i32 0, ptr %5, align 8, !tbaa !62
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !135
  %8 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %7, ptr %8, align 8, !tbaa !63
  %9 = getelementptr inbounds %struct.TextLine, ptr %7, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %10, ptr %11, align 4, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @txt_delete_sel(ptr noundef %0) unnamed_addr #2 !PGOFuncName !136 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %77, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %77, label %9

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @txt_has_sel(ptr noundef nonnull %0) #26, !range !137
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %77, label %12

12:                                               ; preds = %9
  tail call void @txt_order_cursors(ptr noundef nonnull %0, i8 noundef zeroext 0) #26
  %13 = load i8, ptr @undoing, align 1, !tbaa !34
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = tail call ptr @txt_sel_to_buf(ptr noundef nonnull %0) #26
  tail call fastcc void @txt_undo_add_blockop(ptr noundef nonnull %0, i32 noundef 23, ptr noundef %16) #26
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %17(ptr noundef %16) #25
  br label %18

18:                                               ; preds = %15, %12
  %19 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %20 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !62
  %22 = load ptr, ptr %6, align 8, !tbaa !63
  %23 = getelementptr inbounds %struct.TextLine, ptr %22, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !59
  %25 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %26 = load i32, ptr %25, align 4, !tbaa !64
  %27 = add i32 %21, 1
  %28 = add i32 %27, %24
  %29 = sub i32 %28, %26
  %30 = sext i32 %29 to i64
  %31 = tail call ptr %19(i64 noundef %30, ptr noundef nonnull @.str.1) #25
  %32 = load ptr, ptr %2, align 8, !tbaa !61
  %33 = getelementptr inbounds %struct.TextLine, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !39
  %35 = load i32, ptr %20, align 8, !tbaa !62
  %36 = sext i32 %35 to i64
  %37 = tail call ptr @strncpy(ptr noundef %31, ptr noundef %34, i64 noundef %36) #25
  %38 = load i32, ptr %20, align 8, !tbaa !62
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %31, i64 %39
  %41 = load ptr, ptr %6, align 8, !tbaa !63
  %42 = getelementptr inbounds %struct.TextLine, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !39
  %44 = load i32, ptr %25, align 4, !tbaa !64
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %43, i64 %45
  %47 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(1) %46) #25
  %48 = load i32, ptr %20, align 8, !tbaa !62
  %49 = load ptr, ptr %6, align 8, !tbaa !63
  %50 = getelementptr inbounds %struct.TextLine, ptr %49, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !59
  %52 = load i32, ptr %25, align 4, !tbaa !64
  %53 = add i32 %51, %48
  %54 = sub i32 %53, %52
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, ptr %31, i64 %55
  store i8 0, ptr %56, align 1, !tbaa !34
  %57 = load ptr, ptr %2, align 8, !tbaa !61
  tail call fastcc void @make_new_line(ptr noundef %57, ptr noundef %31) #26
  %58 = load ptr, ptr %6, align 8, !tbaa !63
  %59 = load ptr, ptr %2, align 8, !tbaa !61
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %74, label %61

61:                                               ; preds = %18
  %62 = getelementptr inbounds %struct.TextLine, ptr %58, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !138
  %64 = icmp eq ptr %63, null
  br i1 %64, label %74, label %69

65:                                               ; preds = %69
  %66 = getelementptr inbounds %struct.TextLine, ptr %70, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !138
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69, !llvm.loop !139

69:                                               ; preds = %61, %65
  %70 = phi ptr [ %67, %65 ], [ %63, %61 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !140
  tail call fastcc void @txt_delete_line(ptr noundef nonnull %0, ptr noundef %71) #26
  %72 = load ptr, ptr %2, align 8, !tbaa !61
  %73 = icmp eq ptr %70, %72
  br i1 %73, label %74, label %65, !llvm.loop !139

74:                                               ; preds = %65, %69, %61, %18
  %75 = phi ptr [ %58, %18 ], [ %59, %61 ], [ %70, %69 ], [ %72, %65 ]
  store ptr %75, ptr %6, align 8, !tbaa !63
  %76 = load i32, ptr %20, align 8, !tbaa !62
  store i32 %76, ptr %25, align 4, !tbaa !64
  br label %77

77:                                               ; preds = %9, %5, %1, %74
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @txt_make_dirty(ptr nocapture noundef %0) unnamed_addr #11 !PGOFuncName !141 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !81
  %4 = or i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !81
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_text_write(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call i32 @txt_get_undostate() #26, !range !134
  tail call void @txt_insert_buf(ptr noundef %0, ptr noundef %1) #26
  tail call void @txt_move_eof(ptr noundef %0, i8 noundef zeroext 0) #26
  tail call void @txt_set_undostate(i32 noundef %3) #26
  tail call fastcc void @txt_make_dirty(ptr noundef %0) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_insert_buf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  store i64 0, ptr %3, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  %6 = icmp eq ptr %1, null
  br i1 %6, label %76, label %7

7:                                                ; preds = %2
  tail call fastcc void @txt_delete_sel(ptr noundef %0) #26
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %9 = trunc i64 %8 to i32
  %10 = shl i64 %8, 32
  %11 = ashr exact i64 %10, 32
  %12 = tail call ptr @BLI_strdupn(ptr noundef nonnull %1, i64 noundef %11) #25
  store ptr %12, ptr %5, align 8, !tbaa !37
  %13 = call i32 @txt_extended_ascii_as_utf8(ptr noundef nonnull %5) #26
  %14 = add nsw i32 %13, %9
  %15 = load i8, ptr @undoing, align 1, !tbaa !34
  %16 = icmp eq i8 %15, 0
  %17 = load ptr, ptr %5, align 8, !tbaa !37
  br i1 %16, label %18, label %20

18:                                               ; preds = %7
  tail call fastcc void @txt_undo_add_blockop(ptr noundef %0, i32 noundef 24, ptr noundef %17) #26
  %19 = load i8, ptr @undoing, align 1, !tbaa !34
  br label %20

20:                                               ; preds = %18, %7
  %21 = phi i8 [ %19, %18 ], [ %15, %7 ]
  store i8 1, ptr @undoing, align 1, !tbaa !34
  br label %22

22:                                               ; preds = %26, %20
  %23 = phi i64 [ %29, %26 ], [ 0, %20 ]
  %24 = getelementptr inbounds i8, ptr %17, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !34
  switch i8 %25, label %26 [
    i8 10, label %30
    i8 0, label %38
  ]

26:                                               ; preds = %22
  %27 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef nonnull %17, ptr noundef nonnull %3) #25
  %28 = call zeroext i8 @txt_add_raw_char(ptr noundef %0, i32 noundef %27) #26, !range !137
  %29 = load i64, ptr %3, align 8, !tbaa !142
  br label %22, !llvm.loop !143

30:                                               ; preds = %22
  call void @txt_split_curline(ptr noundef %0) #26
  %31 = sext i32 %14 to i64
  %32 = load i64, ptr %3, align 8, !tbaa !142
  %33 = add i64 %32, 1
  store i64 %33, ptr %3, align 8, !tbaa !142
  %34 = icmp ult i64 %33, %31
  br i1 %34, label %35, label %74

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %37 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  br label %40

38:                                               ; preds = %22
  store i8 %21, ptr @undoing, align 1, !tbaa !34
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %39(ptr noundef nonnull %17) #25
  br label %76

40:                                               ; preds = %48, %35
  %41 = phi i64 [ %33, %35 ], [ %49, %48 ]
  %42 = phi i32 [ 0, %35 ], [ %50, %48 ]
  %43 = getelementptr inbounds i8, ptr %17, i64 %41
  %44 = load i8, ptr %43, align 1, !tbaa !34
  switch i8 %44, label %45 [
    i8 10, label %51
    i8 0, label %60
  ]

45:                                               ; preds = %40
  %46 = add i64 %41, 1
  store i64 %46, ptr %3, align 8, !tbaa !142
  %47 = add nuw nsw i32 %42, 1
  br label %48

48:                                               ; preds = %45, %51
  %49 = phi i64 [ %46, %45 ], [ %58, %51 ]
  %50 = phi i32 [ %47, %45 ], [ 0, %51 ]
  br label %40, !llvm.loop !144

51:                                               ; preds = %40
  %52 = zext nneg i32 %42 to i64
  %53 = sub i64 %41, %52
  %54 = getelementptr inbounds i8, ptr %17, i64 %53
  %55 = call fastcc ptr @txt_new_linen(ptr noundef %54, i32 noundef %42) #26
  %56 = load ptr, ptr %37, align 8, !tbaa !61
  call void @BLI_insertlinkbefore(ptr noundef nonnull %36, ptr noundef %56, ptr noundef %55) #25
  %57 = load i64, ptr %3, align 8, !tbaa !142
  %58 = add i64 %57, 1
  store i64 %58, ptr %3, align 8, !tbaa !142
  %59 = icmp ult i64 %58, %31
  br i1 %59, label %48, label %74

60:                                               ; preds = %40
  %61 = zext nneg i32 %42 to i64
  %62 = sub i64 %41, %61
  store i64 %62, ptr %4, align 8, !tbaa !142
  %63 = icmp ult i64 %62, %41
  %64 = icmp ult i64 %62, %31
  %65 = and i1 %64, %63
  br i1 %65, label %66, label %74

66:                                               ; preds = %60, %66
  %67 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef %17, ptr noundef nonnull %4) #25
  %68 = call zeroext i8 @txt_add_raw_char(ptr noundef %0, i32 noundef %67) #26, !range !137
  %69 = load i64, ptr %4, align 8
  %70 = load i64, ptr %3, align 8, !tbaa !142
  %71 = icmp ult i64 %69, %70
  %72 = icmp ult i64 %69, %31
  %73 = and i1 %72, %71
  br i1 %73, label %66, label %74, !llvm.loop !145

74:                                               ; preds = %51, %66, %30, %60
  %75 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  call void %75(ptr noundef %17) #25
  store i8 %21, ptr @undoing, align 1, !tbaa !34
  br label %76

76:                                               ; preds = %2, %74, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @txt_move_eof(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #12 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call fastcc void @txt_curs_sel(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  br label %8

7:                                                ; preds = %2
  call fastcc void @txt_curs_cur(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  br label %8

8:                                                ; preds = %7, %6
  %9 = load ptr, ptr %3, align 8, !tbaa !37
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !135
  store ptr %14, ptr %9, align 8, !tbaa !37
  %15 = getelementptr inbounds %struct.TextLine, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !59
  %17 = load ptr, ptr %4, align 8, !tbaa !37
  store i32 %16, ptr %17, align 4, !tbaa !146
  br i1 %5, label %18, label %19

18:                                               ; preds = %12
  tail call void @txt_pop_sel(ptr noundef nonnull %0) #26
  br label %19

19:                                               ; preds = %12, %18, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_text_file_modified_check(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #28
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %5, i64 noundef 1024) #25
  %9 = load ptr, ptr @G, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 2
  %11 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %3, ptr noundef nonnull %10) #25
  %12 = call i32 @BLI_exists(ptr noundef nonnull %3) #25
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %7
  %15 = call i32 @BLI_stat(ptr noundef nonnull %3, ptr noundef nonnull %2) #25
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %30, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !147
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
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #28
  ret i32 %31
}

; Function Attrs: optsize
declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_text_file_modified_ignore(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #28
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %5, i64 noundef 1024) #25
  %9 = load ptr, ptr @G, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 2
  %11 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %3, ptr noundef nonnull %10) #25
  %12 = call i32 @BLI_exists(ptr noundef nonnull %3) #25
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %7
  %15 = call i32 @BLI_stat(ptr noundef nonnull %3, ptr noundef nonnull %2) #25
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !147
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
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_clean_text(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  br i1 %4, label %7, label %13

7:                                                ; preds = %1
  %8 = icmp eq ptr %6, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  store ptr %6, ptr %2, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4, i32 1
  br label %19

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @txt_new_line(ptr noundef null) #26
  store ptr %12, ptr %5, align 8, !tbaa !135
  store ptr %12, ptr %2, align 8, !tbaa !60
  br label %13

13:                                               ; preds = %1, %11
  %14 = phi ptr [ %12, %11 ], [ %3, %1 ]
  %15 = phi ptr [ %12, %11 ], [ %6, %1 ]
  %16 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4, i32 1
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store ptr %14, ptr %16, align 8, !tbaa !135
  br label %19

19:                                               ; preds = %9, %18, %13
  %20 = phi ptr [ %16, %18 ], [ %16, %13 ], [ %10, %9 ]
  %21 = phi ptr [ %14, %18 ], [ %14, %13 ], [ %6, %9 ]
  %22 = phi ptr [ %14, %18 ], [ %15, %13 ], [ %6, %9 ]
  %23 = getelementptr inbounds %struct.TextLine, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !138
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %30, %19
  %27 = phi ptr [ %21, %19 ], [ %31, %30 ]
  %28 = load ptr, ptr %22, align 8, !tbaa !140
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %35

30:                                               ; preds = %19, %30
  %31 = phi ptr [ %33, %30 ], [ %24, %19 ]
  store ptr %31, ptr %2, align 8, !tbaa !37
  %32 = getelementptr inbounds %struct.TextLine, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !138
  %34 = icmp eq ptr %33, null
  br i1 %34, label %26, label %30, !llvm.loop !148

35:                                               ; preds = %26, %35
  %36 = phi ptr [ %37, %35 ], [ %28, %26 ]
  store ptr %36, ptr %20, align 8, !tbaa !37
  %37 = load ptr, ptr %36, align 8, !tbaa !140
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %35, !llvm.loop !149

39:                                               ; preds = %35, %26
  %40 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !61
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !63
  br i1 %42, label %45, label %49

45:                                               ; preds = %39
  %46 = icmp eq ptr %44, null
  %47 = select i1 %46, ptr %27, ptr %44
  store ptr %47, ptr %40, align 8, !tbaa !61
  %48 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  store i32 0, ptr %48, align 8, !tbaa !62
  br label %49

49:                                               ; preds = %39, %45
  %50 = phi ptr [ %47, %45 ], [ %41, %39 ]
  %51 = icmp eq ptr %44, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %50, ptr %53, align 8, !tbaa !63
  %54 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 0, ptr %54, align 4, !tbaa !64
  br label %55

55:                                               ; preds = %52, %49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @txt_new_line(ptr noundef readonly %0) unnamed_addr #2 !PGOFuncName !150 {
  %2 = icmp eq ptr %0, null
  %3 = select i1 %2, ptr @.str.20, ptr %0
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %5 = tail call ptr %4(i64 noundef 40, ptr noundef nonnull @.str) #25
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #27
  %8 = add i64 %7, 1
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str.1) #25
  %10 = getelementptr inbounds %struct.TextLine, ptr %5, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.TextLine, ptr %5, i64 0, i32 3
  store ptr null, ptr %11, align 8, !tbaa !42
  %12 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %3) #25
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #27
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.TextLine, ptr %5, i64 0, i32 4
  store i32 %14, ptr %15, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  ret ptr %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @txt_get_span(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #13 {
  %3 = icmp eq ptr %1, null
  %4 = icmp eq ptr %0, null
  %5 = or i1 %4, %3
  %6 = icmp eq ptr %0, %1
  %7 = or i1 %6, %5
  br i1 %7, label %27, label %8

8:                                                ; preds = %2, %12
  %9 = phi ptr [ %14, %12 ], [ %0, %2 ]
  %10 = phi i32 [ %13, %12 ], [ 0, %2 ]
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = add nuw nsw i32 %10, 1
  %14 = load ptr, ptr %9, align 8, !tbaa !140
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !llvm.loop !151

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %21, %16 ], [ %0, %12 ]
  %18 = phi i32 [ %19, %16 ], [ 0, %12 ]
  %19 = add nsw i32 %18, -1
  %20 = getelementptr inbounds %struct.TextLine, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !138
  %22 = icmp eq ptr %21, null
  %23 = icmp eq ptr %21, %1
  %24 = or i1 %22, %23
  br i1 %24, label %25, label %16, !llvm.loop !152

25:                                               ; preds = %16
  %26 = select i1 %22, i32 0, i32 %19
  br label %27

27:                                               ; preds = %8, %2, %25
  %28 = phi i32 [ %26, %25 ], [ 0, %2 ], [ %10, %8 ]
  ret i32 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @txt_cursor_is_line_start(ptr nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !64
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @txt_cursor_is_line_end(ptr nocapture noundef readonly %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !64
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.TextLine, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !59
  %8 = icmp eq i32 %3, %7
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @txt_utf8_offset_to_index(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %10, %4 ], [ 0, %2 ]
  %6 = phi i32 [ %11, %4 ], [ 0, %2 ]
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = tail call i32 @BLI_str_utf8_size(ptr noundef %8) #25
  %10 = add nsw i32 %9, %5
  %11 = add nuw nsw i32 %6, 1
  %12 = icmp eq i32 %10, %1
  br i1 %12, label %13, label %4, !llvm.loop !153

13:                                               ; preds = %4, %2
  %14 = phi i32 [ 0, %2 ], [ %11, %4 ]
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @BLI_str_utf8_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @txt_utf8_index_to_offset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %11, %4 ], [ 0, %2 ]
  %6 = phi i32 [ %10, %4 ], [ 0, %2 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = tail call i32 @BLI_str_utf8_size(ptr noundef %8) #25
  %10 = add nsw i32 %9, %6
  %11 = add nuw nsw i32 %5, 1
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %4, !llvm.loop !154

13:                                               ; preds = %4, %2
  %14 = phi i32 [ 0, %2 ], [ %10, %4 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @txt_utf8_offset_to_column(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %12, %4 ], [ 0, %2 ]
  %6 = phi i32 [ %10, %4 ], [ 0, %2 ]
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef %8) #25
  %10 = add nsw i32 %9, %6
  %11 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef %8) #25
  %12 = add nsw i32 %11, %5
  %13 = icmp slt i32 %12, %1
  br i1 %13, label %4, label %14, !llvm.loop !155

14:                                               ; preds = %4, %2
  %15 = phi i32 [ 0, %2 ], [ %10, %4 ]
  ret i32 %15
}

; Function Attrs: optsize
declare i32 @BLI_str_utf8_char_width_safe(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BLI_str_utf8_size_safe(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
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
  %11 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %8) #25
  %12 = add nsw i32 %11, %10
  %13 = icmp sgt i32 %12, %1
  br i1 %13, label %23, label %14

14:                                               ; preds = %7
  %15 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %8) #25
  %16 = add nsw i32 %15, %9
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !34
  %20 = icmp ne i8 %19, 0
  %21 = icmp slt i32 %12, %1
  %22 = and i1 %21, %20
  br i1 %22, label %7, label %23, !llvm.loop !156

23:                                               ; preds = %14, %7, %2
  %24 = phi i32 [ 0, %2 ], [ %9, %7 ], [ %16, %14 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_move_up(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call fastcc void @txt_curs_sel(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  br label %8

7:                                                ; preds = %2
  tail call fastcc void @txt_pop_first(ptr noundef %0) #26
  call fastcc void @txt_curs_cur(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  br label %8

8:                                                ; preds = %7, %6
  %9 = load ptr, ptr %3, align 8, !tbaa !37
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.TextLine, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !138
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.TextLine, ptr %10, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  %19 = load ptr, ptr %4, align 8, !tbaa !37
  %20 = load i32, ptr %19, align 4, !tbaa !146
  %21 = tail call i32 @txt_utf8_offset_to_column(ptr noundef %18, i32 noundef %20) #26
  %22 = load ptr, ptr %9, align 8, !tbaa !37
  %23 = getelementptr inbounds %struct.TextLine, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !138
  store ptr %24, ptr %9, align 8, !tbaa !37
  %25 = getelementptr inbounds %struct.TextLine, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !39
  %27 = tail call i32 @txt_utf8_column_to_offset(ptr noundef %26, i32 noundef %21) #26
  store i32 %27, ptr %19, align 4, !tbaa !146
  br label %29

28:                                               ; preds = %12
  tail call void @txt_move_bol(ptr noundef %0, i8 noundef zeroext %1) #26
  br label %29

29:                                               ; preds = %28, %16
  br i1 %5, label %30, label %31

30:                                               ; preds = %29
  tail call void @txt_pop_sel(ptr noundef %0) #26
  br label %31

31:                                               ; preds = %29, %30, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @txt_curs_sel(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !PGOFuncName !157 {
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %4, ptr %1, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store ptr %5, ptr %2, align 8, !tbaa !37
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @txt_pop_first(ptr nocapture noundef %0) unnamed_addr #16 !PGOFuncName !158 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = tail call i32 @txt_get_span(ptr noundef %3, ptr noundef %5) #26
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = icmp eq ptr %3, %5
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !62
  %13 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %14 = load i32, ptr %13, align 4, !tbaa !64
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  tail call fastcc void @txt_curs_swap(ptr noundef nonnull %0) #26
  br label %17

17:                                               ; preds = %16, %10, %8
  tail call void @txt_pop_sel(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @txt_curs_cur(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !PGOFuncName !159 {
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  store ptr %4, ptr %1, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  store ptr %5, ptr %2, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @txt_move_bol(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #12 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  call fastcc void @txt_curs_cur(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  %7 = load ptr, ptr %3, align 8, !tbaa !37
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %16

10:                                               ; preds = %2
  call fastcc void @txt_curs_sel(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  %11 = load ptr, ptr %3, align 8, !tbaa !37
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 8, !tbaa !37
  store i32 0, ptr %15, align 4, !tbaa !146
  br label %18

16:                                               ; preds = %6
  %17 = load ptr, ptr %4, align 8, !tbaa !37
  store i32 0, ptr %17, align 4, !tbaa !146
  tail call void @txt_pop_sel(ptr noundef %0) #26
  br label %18

18:                                               ; preds = %14, %10, %16, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @txt_pop_sel(ptr nocapture noundef %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %3, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %6, ptr %7, align 4, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_move_down(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call fastcc void @txt_curs_sel(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  br label %8

7:                                                ; preds = %2
  tail call fastcc void @txt_pop_last(ptr noundef %0) #26
  call fastcc void @txt_curs_cur(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  br label %8

8:                                                ; preds = %7, %6
  %9 = load ptr, ptr %3, align 8, !tbaa !37
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !140
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.TextLine, ptr %10, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !39
  %18 = load ptr, ptr %4, align 8, !tbaa !37
  %19 = load i32, ptr %18, align 4, !tbaa !146
  %20 = tail call i32 @txt_utf8_offset_to_column(ptr noundef %17, i32 noundef %19) #26
  %21 = load ptr, ptr %9, align 8, !tbaa !37
  %22 = load ptr, ptr %21, align 8, !tbaa !140
  store ptr %22, ptr %9, align 8, !tbaa !37
  %23 = getelementptr inbounds %struct.TextLine, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !39
  %25 = tail call i32 @txt_utf8_column_to_offset(ptr noundef %24, i32 noundef %20) #26
  store i32 %25, ptr %18, align 4, !tbaa !146
  br label %27

26:                                               ; preds = %12
  tail call void @txt_move_eol(ptr noundef %0, i8 noundef zeroext %1) #26
  br label %27

27:                                               ; preds = %26, %15
  br i1 %5, label %28, label %29

28:                                               ; preds = %27
  tail call void @txt_pop_sel(ptr noundef %0) #26
  br label %29

29:                                               ; preds = %27, %28, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @txt_pop_last(ptr nocapture noundef %0) unnamed_addr #16 !PGOFuncName !160 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = tail call i32 @txt_get_span(ptr noundef %3, ptr noundef %5) #26
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = icmp eq ptr %3, %5
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !62
  %13 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %14 = load i32, ptr %13, align 4, !tbaa !64
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  tail call fastcc void @txt_curs_swap(ptr noundef nonnull %0) #26
  br label %17

17:                                               ; preds = %16, %10, %8
  tail call void @txt_pop_sel(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @txt_move_eol(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #12 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  call fastcc void @txt_curs_cur(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  %7 = load ptr, ptr %3, align 8, !tbaa !37
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %18

10:                                               ; preds = %2
  call fastcc void @txt_curs_sel(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  %11 = load ptr, ptr %3, align 8, !tbaa !37
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.TextLine, ptr %12, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !59
  %17 = load ptr, ptr %4, align 8, !tbaa !37
  store i32 %16, ptr %17, align 4, !tbaa !146
  br label %22

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.TextLine, ptr %8, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !59
  %21 = load ptr, ptr %4, align 8, !tbaa !37
  store i32 %20, ptr %21, align 4, !tbaa !146
  tail call void @txt_pop_sel(ptr noundef %0) #26
  br label %22

22:                                               ; preds = %14, %10, %18, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_move_left(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call fastcc void @txt_curs_sel(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  br label %8

7:                                                ; preds = %2
  tail call fastcc void @txt_pop_first(ptr noundef %0) #26
  call fastcc void @txt_curs_cur(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  br label %8

8:                                                ; preds = %7, %6
  %9 = load ptr, ptr %3, align 8, !tbaa !37
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = icmp eq ptr %10, null
  br i1 %11, label %68, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8, !tbaa !37
  %14 = load i32, ptr %13, align 4, !tbaa !146
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.TextLine, ptr %10, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !138
  %19 = icmp eq ptr %18, null
  br i1 %19, label %66, label %20

20:                                               ; preds = %16
  tail call void @txt_move_up(ptr noundef %0, i8 noundef zeroext %1) #26
  %21 = load ptr, ptr %9, align 8, !tbaa !37
  %22 = getelementptr inbounds %struct.TextLine, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !59
  br label %64

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !81
  %27 = and i32 %26, 1024
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.TextLine, ptr %10, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !39
  br label %52

32:                                               ; preds = %24
  %33 = tail call i32 @llvm.smin.i32(i32 %14, i32 4)
  %34 = icmp sgt i32 %14, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.TextLine, ptr %10, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !39
  %38 = zext nneg i32 %14 to i64
  br label %42

39:                                               ; preds = %42
  %40 = add nuw nsw i64 %43, 1
  %41 = icmp eq i64 %40, %38
  br i1 %41, label %47, label %42, !llvm.loop !161

42:                                               ; preds = %35, %39
  %43 = phi i64 [ 0, %35 ], [ %40, %39 ]
  %44 = getelementptr inbounds i8, ptr %37, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !34
  %46 = icmp eq i8 %45, 32
  br i1 %46, label %39, label %52

47:                                               ; preds = %39, %32
  %48 = srem i32 %14, 4
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 %33, i32 %48
  %51 = sub nsw i32 %14, %50
  br label %64

52:                                               ; preds = %42, %29
  %53 = phi ptr [ %31, %29 ], [ %37, %42 ]
  %54 = sext i32 %14 to i64
  %55 = getelementptr inbounds i8, ptr %53, i64 %54
  %56 = tail call ptr @BLI_str_prev_char_utf8(ptr noundef nonnull %55) #25
  %57 = load ptr, ptr %9, align 8, !tbaa !37
  %58 = getelementptr inbounds %struct.TextLine, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !39
  %60 = ptrtoint ptr %56 to i64
  %61 = ptrtoint ptr %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  br label %64

64:                                               ; preds = %20, %52, %47
  %65 = phi i32 [ %51, %47 ], [ %63, %52 ], [ %23, %20 ]
  store i32 %65, ptr %13, align 4, !tbaa !146
  br label %66

66:                                               ; preds = %64, %16
  br i1 %5, label %67, label %68

67:                                               ; preds = %66
  tail call void @txt_pop_sel(ptr noundef %0) #26
  br label %68

68:                                               ; preds = %66, %67, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_str_prev_char_utf8(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_move_right(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call fastcc void @txt_curs_sel(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  br label %8

7:                                                ; preds = %2
  tail call fastcc void @txt_pop_last(ptr noundef %0) #26
  call fastcc void @txt_curs_cur(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  br label %8

8:                                                ; preds = %7, %6
  %9 = load ptr, ptr %3, align 8, !tbaa !37
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = icmp eq ptr %10, null
  br i1 %11, label %69, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8, !tbaa !37
  %14 = load i32, ptr %13, align 4, !tbaa !146
  %15 = getelementptr inbounds %struct.TextLine, ptr %10, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !59
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load ptr, ptr %10, align 8, !tbaa !140
  %20 = icmp eq ptr %19, null
  br i1 %20, label %67, label %21

21:                                               ; preds = %18
  tail call void @txt_move_down(ptr noundef %0, i8 noundef zeroext %1) #26
  br label %65

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !81
  %25 = and i32 %24, 1024
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.TextLine, ptr %10, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  %29 = sext i32 %14 to i64
  br i1 %26, label %60, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds i8, ptr %28, i64 %29
  %32 = load i8, ptr %31, align 1, !tbaa !34
  %33 = icmp eq i8 %32, 32
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = icmp sgt i32 %14, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %34
  %37 = zext nneg i32 %14 to i64
  br label %41

38:                                               ; preds = %41
  %39 = add nuw nsw i64 %42, 1
  %40 = icmp eq i64 %39, %37
  br i1 %40, label %46, label %41, !llvm.loop !162

41:                                               ; preds = %36, %38
  %42 = phi i64 [ 0, %36 ], [ %39, %38 ]
  %43 = getelementptr inbounds i8, ptr %28, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !34
  %45 = icmp eq i8 %44, 32
  br i1 %45, label %38, label %60

46:                                               ; preds = %38, %34
  %47 = srem i32 %14, 4
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ %51, %48 ], [ %29, %46 ]
  %50 = phi i32 [ %57, %48 ], [ %47, %46 ]
  %51 = add nsw i64 %49, 1
  %52 = getelementptr inbounds i8, ptr %28, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !34
  %54 = icmp eq i8 %53, 32
  %55 = icmp slt i32 %50, 3
  %56 = select i1 %54, i1 %55, i1 false
  %57 = add nsw i32 %50, 1
  br i1 %56, label %48, label %58, !llvm.loop !163

58:                                               ; preds = %48
  %59 = trunc i64 %51 to i32
  br label %65

60:                                               ; preds = %41, %22, %30
  %61 = getelementptr inbounds i8, ptr %28, i64 %29
  %62 = tail call i32 @BLI_str_utf8_size(ptr noundef %61) #25
  %63 = load i32, ptr %13, align 4, !tbaa !146
  %64 = add nsw i32 %63, %62
  br label %65

65:                                               ; preds = %21, %60, %58
  %66 = phi i32 [ %59, %58 ], [ %64, %60 ], [ 0, %21 ]
  store i32 %66, ptr %13, align 4, !tbaa !146
  br label %67

67:                                               ; preds = %65, %18
  br i1 %5, label %68, label %69

68:                                               ; preds = %67
  tail call void @txt_pop_sel(ptr noundef %0) #26
  br label %69

69:                                               ; preds = %67, %68, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_jump_left(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  %6 = icmp eq i8 %1, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  call fastcc void @txt_curs_sel(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #26
  br label %9

8:                                                ; preds = %3
  tail call fastcc void @txt_pop_first(ptr noundef %0) #26
  call fastcc void @txt_curs_cur(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #26
  br label %9

9:                                                ; preds = %8, %7
  %10 = load ptr, ptr %4, align 8, !tbaa !37
  %11 = load ptr, ptr %10, align 8, !tbaa !37
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.TextLine, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = getelementptr inbounds %struct.TextLine, ptr %11, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !59
  %18 = sext i32 %17 to i64
  %19 = load ptr, ptr %5, align 8, !tbaa !37
  tail call void @BLI_str_cursor_step_utf8(ptr noundef %15, i64 noundef %18, ptr noundef %19, i32 noundef 0, i32 noundef 1, i8 noundef zeroext %2) #25
  br i1 %6, label %20, label %21

20:                                               ; preds = %13
  tail call void @txt_pop_sel(ptr noundef %0) #26
  br label %21

21:                                               ; preds = %13, %20, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  ret void
}

; Function Attrs: optsize
declare void @BLI_str_cursor_step_utf8(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_jump_right(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  %6 = icmp eq i8 %1, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  call fastcc void @txt_curs_sel(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #26
  br label %9

8:                                                ; preds = %3
  tail call fastcc void @txt_pop_last(ptr noundef %0) #26
  call fastcc void @txt_curs_cur(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #26
  br label %9

9:                                                ; preds = %8, %7
  %10 = load ptr, ptr %4, align 8, !tbaa !37
  %11 = load ptr, ptr %10, align 8, !tbaa !37
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.TextLine, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = getelementptr inbounds %struct.TextLine, ptr %11, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !59
  %18 = sext i32 %17 to i64
  %19 = load ptr, ptr %5, align 8, !tbaa !37
  tail call void @BLI_str_cursor_step_utf8(ptr noundef %15, i64 noundef %18, ptr noundef %19, i32 noundef 1, i32 noundef 1, i8 noundef zeroext %2) #25
  br i1 %6, label %20, label %21

20:                                               ; preds = %13
  tail call void @txt_pop_sel(ptr noundef %0) #26
  br label %21

21:                                               ; preds = %13, %20, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @txt_move_bof(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #12 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call fastcc void @txt_curs_sel(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  br label %8

7:                                                ; preds = %2
  call fastcc void @txt_curs_cur(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  br label %8

8:                                                ; preds = %7, %6
  %9 = load ptr, ptr %3, align 8, !tbaa !37
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  store ptr %14, ptr %9, align 8, !tbaa !37
  %15 = load ptr, ptr %4, align 8, !tbaa !37
  store i32 0, ptr %15, align 4, !tbaa !146
  br i1 %5, label %16, label %17

16:                                               ; preds = %12
  tail call void @txt_pop_sel(ptr noundef nonnull %0) #26
  br label %17

17:                                               ; preds = %12, %16, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @txt_move_toline(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #17 {
  tail call void @txt_move_to(ptr noundef %0, i32 noundef %1, i32 noundef 0, i8 noundef zeroext %2) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @txt_move_to(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #17 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #28
  %7 = icmp eq i8 %3, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  call fastcc void @txt_curs_sel(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #26
  br label %10

9:                                                ; preds = %4
  call fastcc void @txt_curs_cur(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #26
  br label %10

10:                                               ; preds = %9, %8
  %11 = load ptr, ptr %5, align 8, !tbaa !37
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  store ptr %16, ptr %11, align 8, !tbaa !37
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14, %23
  %19 = phi ptr [ %21, %23 ], [ %16, %14 ]
  %20 = phi i32 [ %24, %23 ], [ 0, %14 ]
  %21 = load ptr, ptr %19, align 8, !tbaa !140
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  store ptr %21, ptr %11, align 8, !tbaa !37
  %24 = add nuw i32 %20, 1
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %26, label %18, !llvm.loop !164

26:                                               ; preds = %23, %18, %14
  %27 = phi ptr [ %16, %14 ], [ %21, %23 ], [ %19, %18 ]
  %28 = getelementptr inbounds %struct.TextLine, ptr %27, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !59
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %2)
  %31 = load ptr, ptr %6, align 8, !tbaa !37
  store i32 %30, ptr %31, align 4, !tbaa !146
  br i1 %7, label %32, label %33

32:                                               ; preds = %26
  tail call void @txt_pop_sel(ptr noundef %0) #26
  br label %33

33:                                               ; preds = %26, %32, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @txt_order_cursors(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = icmp eq i8 %1, 0
  %12 = tail call i32 @txt_get_span(ptr noundef nonnull %4, ptr noundef nonnull %8) #26
  br i1 %11, label %13, label %23

13:                                               ; preds = %10
  %14 = icmp slt i32 %12, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %13
  %16 = icmp eq ptr %4, %8
  br i1 %16, label %17, label %34

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !62
  %20 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !64
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %33, label %34

23:                                               ; preds = %10
  %24 = icmp sgt i32 %12, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %23
  %26 = icmp eq ptr %4, %8
  br i1 %26, label %27, label %34

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !62
  %30 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %31 = load i32, ptr %30, align 4, !tbaa !64
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23, %27, %13, %17
  tail call fastcc void @txt_curs_swap(ptr noundef nonnull %0) #26
  br label %34

34:                                               ; preds = %33, %25, %27, %15, %17, %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @txt_curs_swap(ptr nocapture noundef %0) unnamed_addr #11 !PGOFuncName !165 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load <2 x ptr>, ptr %2, align 8, !tbaa !37
  %4 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %4, ptr %2, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %6 = load <2 x i32>, ptr %5, align 8, !tbaa !146
  %7 = shufflevector <2 x i32> %6, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %7, ptr %5, align 8, !tbaa !146
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @txt_has_sel(ptr nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !62
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 4, !tbaa !64
  %12 = icmp ne i32 %9, %11
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i8 [ 1, %1 ], [ %13, %7 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @txt_sel_clear(ptr nocapture noundef %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  store ptr %3, ptr %6, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 4, !tbaa !64
  %9 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  store i32 %8, ptr %9, align 8, !tbaa !62
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @txt_sel_line(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  store i32 0, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  store ptr %3, ptr %7, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.TextLine, ptr %3, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %9, ptr %10, align 4, !tbaa !64
  br label %11

11:                                               ; preds = %1, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @txt_to_buf(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %105, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %105, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = icmp eq ptr %11, null
  br i1 %12, label %105, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !135
  %16 = getelementptr inbounds %struct.TextLine, ptr %15, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %11, %15
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %21 = add nsw i32 %17, 2
  %22 = sext i32 %21 to i64
  %23 = tail call ptr %20(i64 noundef %22, ptr noundef nonnull @.str.6) #25
  %24 = getelementptr inbounds %struct.TextLine, ptr %11, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !39
  %26 = add nsw i32 %17, 1
  %27 = sext i32 %26 to i64
  %28 = tail call ptr @BLI_strncpy(ptr noundef %23, ptr noundef %25, i64 noundef %27) #25
  %29 = sext i32 %17 to i64
  %30 = getelementptr inbounds i8, ptr %23, i64 %29
  br label %102

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.TextLine, ptr %11, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !59
  %34 = add i32 %17, 2
  %35 = add i32 %34, %33
  %36 = load ptr, ptr %11, align 8, !tbaa !140
  %37 = icmp ne ptr %36, null
  %38 = icmp ne ptr %36, %15
  %39 = and i1 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %31, %40
  %41 = phi ptr [ %47, %40 ], [ %36, %31 ]
  %42 = phi i32 [ %46, %40 ], [ %35, %31 ]
  %43 = getelementptr inbounds %struct.TextLine, ptr %41, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !59
  %45 = add i32 %42, 1
  %46 = add i32 %45, %44
  %47 = load ptr, ptr %41, align 8, !tbaa !140
  %48 = icmp ne ptr %47, null
  %49 = icmp ne ptr %47, %15
  %50 = and i1 %48, %49
  br i1 %50, label %40, label %51, !llvm.loop !166

51:                                               ; preds = %40, %31
  %52 = phi i32 [ %35, %31 ], [ %46, %40 ]
  %53 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %54 = add nsw i32 %52, 1
  %55 = sext i32 %54 to i64
  %56 = tail call ptr %53(i64 noundef %55, ptr noundef nonnull @.str.7) #25
  %57 = getelementptr inbounds %struct.TextLine, ptr %11, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !39
  %59 = load i32, ptr %32, align 8, !tbaa !59
  %60 = sext i32 %59 to i64
  %61 = tail call ptr @strncpy(ptr noundef %56, ptr noundef %58, i64 noundef %60) #25
  %62 = load i32, ptr %32, align 8, !tbaa !59
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %56, i64 %63
  store i8 10, ptr %64, align 1, !tbaa !34
  %65 = add nsw i32 %62, 1
  %66 = load ptr, ptr %11, align 8, !tbaa !140
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
  %78 = load i32, ptr %77, align 8, !tbaa !59
  %79 = sext i32 %78 to i64
  %80 = tail call ptr @strncpy(ptr noundef %74, ptr noundef %76, i64 noundef %79) #25
  %81 = load i32, ptr %77, align 8, !tbaa !59
  %82 = add nsw i32 %81, %72
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %56, i64 %83
  store i8 10, ptr %84, align 1, !tbaa !34
  %85 = add nsw i32 %82, 1
  %86 = load ptr, ptr %71, align 8, !tbaa !140
  %87 = icmp ne ptr %86, null
  %88 = icmp ne ptr %86, %15
  %89 = and i1 %87, %88
  br i1 %89, label %70, label %90, !llvm.loop !167

90:                                               ; preds = %70, %51
  %91 = phi i32 [ %65, %51 ], [ %85, %70 ]
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %56, i64 %92
  %94 = getelementptr inbounds %struct.TextLine, ptr %15, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !39
  %96 = sext i32 %17 to i64
  %97 = tail call ptr @strncpy(ptr noundef %93, ptr noundef %95, i64 noundef %96) #25
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

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @txt_find_string(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %66, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = icmp eq ptr %10, null
  br i1 %11, label %66, label %12

12:                                               ; preds = %8
  tail call void @txt_order_cursors(ptr noundef nonnull %0, i8 noundef zeroext 0) #26
  %13 = load ptr, ptr %9, align 8, !tbaa !63
  %14 = icmp eq i32 %3, 0
  %15 = getelementptr inbounds %struct.TextLine, ptr %13, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %18 = load i32, ptr %17, align 4, !tbaa !64
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %16, i64 %19
  br i1 %14, label %23, label %21

21:                                               ; preds = %12
  %22 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %1) #27
  br label %25

23:                                               ; preds = %12
  %24 = tail call ptr @BLI_strcasestr(ptr noundef %20, ptr noundef %1) #25
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi ptr [ %22, %21 ], [ %24, %23 ]
  %27 = icmp eq i32 %2, 0
  %28 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  br label %29

29:                                               ; preds = %47, %25
  %30 = phi ptr [ %26, %25 ], [ %48, %47 ]
  %31 = phi ptr [ %13, %25 ], [ %40, %47 ]
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load ptr, ptr %31, align 8, !tbaa !140
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  br i1 %27, label %66, label %37

37:                                               ; preds = %36
  %38 = load ptr, ptr %28, align 8, !tbaa !60
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi ptr [ %34, %33 ], [ %38, %37 ]
  %41 = getelementptr inbounds %struct.TextLine, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !39
  br i1 %14, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %1) #27
  br label %47

45:                                               ; preds = %39
  %46 = tail call ptr @BLI_strcasestr(ptr noundef %42, ptr noundef %1) #25
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi ptr [ %44, %43 ], [ %46, %45 ]
  %49 = icmp eq ptr %40, %13
  br i1 %49, label %50, label %29, !llvm.loop !168

50:                                               ; preds = %47
  %51 = icmp eq ptr %48, null
  br i1 %51, label %66, label %52

52:                                               ; preds = %29, %50
  %53 = phi ptr [ %13, %50 ], [ %31, %29 ]
  %54 = phi ptr [ %48, %50 ], [ %30, %29 ]
  %55 = load ptr, ptr %28, align 8, !tbaa !60
  %56 = tail call i32 @txt_get_span(ptr noundef %55, ptr noundef nonnull %53) #26
  %57 = getelementptr inbounds %struct.TextLine, ptr %53, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !39
  %59 = ptrtoint ptr %54 to i64
  %60 = ptrtoint ptr %58 to i64
  %61 = sub i64 %59, %60
  %62 = trunc i64 %61 to i32
  tail call void @txt_move_to(ptr noundef %0, i32 noundef %56, i32 noundef %62, i8 noundef zeroext 0) #26
  %63 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %64 = add i64 %61, %63
  %65 = trunc i64 %64 to i32
  tail call void @txt_move_to(ptr noundef %0, i32 noundef %56, i32 noundef %65, i8 noundef zeroext 1) #26
  br label %66

66:                                               ; preds = %36, %50, %4, %8, %52
  %67 = phi i32 [ 1, %52 ], [ 0, %8 ], [ 0, %4 ], [ 0, %50 ], [ 0, %36 ]
  ret i32 %67
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BLI_strcasestr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @txt_sel_to_buf(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %124, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %124, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %3, %7
  br i1 %10, label %11, label %18

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %15 = load i32, ptr %14, align 4, !tbaa !64
  %16 = tail call i32 @llvm.smin.i32(i32 %13, i32 %15)
  %17 = tail call i32 @llvm.smax.i32(i32 %13, i32 %15)
  br label %35

18:                                               ; preds = %9
  %19 = tail call i32 @txt_get_span(ptr noundef nonnull %3, ptr noundef nonnull %7) #26
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %23 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  br label %27

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %26 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  br label %27

27:                                               ; preds = %21, %24
  %28 = phi ptr [ %7, %21 ], [ %3, %24 ]
  %29 = phi ptr [ %3, %21 ], [ %7, %24 ]
  %30 = phi ptr [ %22, %21 ], [ %25, %24 ]
  %31 = phi ptr [ %23, %21 ], [ %26, %24 ]
  %32 = load i32, ptr %31, align 4, !tbaa !146
  %33 = load i32, ptr %30, align 4, !tbaa !146
  %34 = icmp eq ptr %28, %29
  br i1 %34, label %35, label %49

35:                                               ; preds = %11, %27
  %36 = phi i32 [ %17, %11 ], [ %32, %27 ]
  %37 = phi i32 [ %16, %11 ], [ %33, %27 ]
  %38 = phi ptr [ %3, %11 ], [ %28, %27 ]
  %39 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %40 = add i32 %36, 1
  %41 = sub i32 %40, %37
  %42 = sext i32 %41 to i64
  %43 = tail call ptr %39(i64 noundef %42, ptr noundef nonnull @.str.8) #25
  %44 = getelementptr inbounds %struct.TextLine, ptr %38, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !39
  %46 = sext i32 %37 to i64
  %47 = getelementptr inbounds i8, ptr %45, i64 %46
  %48 = tail call ptr @BLI_strncpy(ptr noundef %43, ptr noundef %47, i64 noundef %42) #25
  br label %124

49:                                               ; preds = %27
  %50 = getelementptr inbounds %struct.TextLine, ptr %28, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !59
  %52 = add i32 %32, 1
  %53 = sub i32 %52, %33
  %54 = add i32 %53, %51
  %55 = load ptr, ptr %28, align 8, !tbaa !140
  %56 = icmp ne ptr %55, null
  %57 = icmp ne ptr %55, %29
  %58 = and i1 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %49, %59
  %60 = phi ptr [ %66, %59 ], [ %55, %49 ]
  %61 = phi i32 [ %65, %59 ], [ %54, %49 ]
  %62 = getelementptr inbounds %struct.TextLine, ptr %60, i64 0, i32 4
  %63 = load i32, ptr %62, align 8, !tbaa !59
  %64 = add i32 %61, 1
  %65 = add i32 %64, %63
  %66 = load ptr, ptr %60, align 8, !tbaa !140
  %67 = icmp ne ptr %66, null
  %68 = icmp ne ptr %66, %29
  %69 = and i1 %67, %68
  br i1 %69, label %59, label %70, !llvm.loop !169

70:                                               ; preds = %59, %49
  %71 = phi i32 [ %54, %49 ], [ %65, %59 ]
  %72 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %73 = add nsw i32 %71, 1
  %74 = sext i32 %73 to i64
  %75 = tail call ptr %72(i64 noundef %74, ptr noundef nonnull @.str.8) #25
  %76 = getelementptr inbounds %struct.TextLine, ptr %28, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !39
  %78 = sext i32 %33 to i64
  %79 = getelementptr inbounds i8, ptr %77, i64 %78
  %80 = load i32, ptr %50, align 8, !tbaa !59
  %81 = sub nsw i32 %80, %33
  %82 = sext i32 %81 to i64
  %83 = tail call ptr @strncpy(ptr noundef %75, ptr noundef %79, i64 noundef %82) #25
  %84 = load i32, ptr %50, align 8, !tbaa !59
  %85 = sub nsw i32 %84, %33
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %75, i64 %86
  store i8 10, ptr %87, align 1, !tbaa !34
  %88 = load ptr, ptr %28, align 8, !tbaa !140
  %89 = add nsw i32 %85, 1
  %90 = icmp ne ptr %88, null
  %91 = icmp ne ptr %88, %29
  %92 = and i1 %90, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %70, %93
  %94 = phi i32 [ %109, %93 ], [ %89, %70 ]
  %95 = phi ptr [ %108, %93 ], [ %88, %70 ]
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, ptr %75, i64 %96
  %98 = getelementptr inbounds %struct.TextLine, ptr %95, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !39
  %100 = getelementptr inbounds %struct.TextLine, ptr %95, i64 0, i32 4
  %101 = load i32, ptr %100, align 8, !tbaa !59
  %102 = sext i32 %101 to i64
  %103 = tail call ptr @strncpy(ptr noundef %97, ptr noundef %99, i64 noundef %102) #25
  %104 = load i32, ptr %100, align 8, !tbaa !59
  %105 = add nsw i32 %104, %94
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, ptr %75, i64 %106
  store i8 10, ptr %107, align 1, !tbaa !34
  %108 = load ptr, ptr %95, align 8, !tbaa !140
  %109 = add nsw i32 %105, 1
  %110 = icmp ne ptr %108, null
  %111 = icmp ne ptr %108, %29
  %112 = and i1 %110, %111
  br i1 %112, label %93, label %113, !llvm.loop !170

113:                                              ; preds = %93, %70
  %114 = phi i32 [ %89, %70 ], [ %109, %93 ]
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, ptr %75, i64 %115
  %117 = getelementptr inbounds %struct.TextLine, ptr %29, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !39
  %119 = sext i32 %32 to i64
  %120 = tail call ptr @strncpy(ptr noundef %116, ptr noundef %118, i64 noundef %119) #25
  %121 = add nsw i32 %114, %32
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %75, i64 %122
  store i8 0, ptr %123, align 1, !tbaa !34
  br label %124

124:                                              ; preds = %35, %113, %5, %1
  %125 = phi ptr [ null, %1 ], [ null, %5 ], [ %43, %35 ], [ %75, %113 ]
  ret ptr %125
}

; Function Attrs: optsize
declare ptr @BLI_strdupn(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @txt_undo_add_blockop(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !171 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #27
  %5 = trunc i64 %4 to i32
  %6 = add i32 %5, 23
  %7 = tail call fastcc zeroext i8 @max_undo_test(ptr noundef %0, i32 noundef %6) #26, !range !137
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !66
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !66
  %13 = trunc i32 %1 to i8
  %14 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = sext i32 %12 to i64
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  store i8 %13, ptr %17, align 1, !tbaa !34
  %18 = load i32, ptr %10, align 8, !tbaa !66
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %10, align 8, !tbaa !66
  tail call fastcc void @txt_undo_store_cursors(ptr noundef %0) #26
  %20 = load ptr, ptr %14, align 8, !tbaa !51
  tail call fastcc void @txt_undo_store_uint32(ptr noundef %20, ptr noundef nonnull %10, i32 noundef %5) #26
  %21 = load ptr, ptr %14, align 8, !tbaa !51
  %22 = load i32, ptr %10, align 8, !tbaa !66
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %21, i64 %23
  %25 = and i64 %4, 4294967295
  %26 = tail call ptr @strncpy(ptr noundef %24, ptr noundef %2, i64 noundef %25) #25
  %27 = load i32, ptr %10, align 8, !tbaa !66
  %28 = add i32 %27, %5
  store i32 %28, ptr %10, align 8, !tbaa !66
  %29 = load ptr, ptr %14, align 8, !tbaa !51
  tail call fastcc void @txt_undo_store_uint32(ptr noundef %29, ptr noundef nonnull %10, i32 noundef %5) #26
  %30 = load ptr, ptr %14, align 8, !tbaa !51
  %31 = load i32, ptr %10, align 8, !tbaa !66
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %30, i64 %32
  store i8 %13, ptr %33, align 1, !tbaa !34
  %34 = load ptr, ptr %14, align 8, !tbaa !51
  %35 = load i32, ptr %10, align 8, !tbaa !66
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, ptr %34, i64 %36
  %38 = getelementptr i8, ptr %37, i64 1
  store i8 0, ptr %38, align 1, !tbaa !34
  br label %39

39:                                               ; preds = %3, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @txt_add_raw_char(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc zeroext i8 @txt_add_char_intern(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0) #26, !range !137
  ret i8 %3
}

; Function Attrs: optsize
declare i32 @BLI_str_utf8_as_unicode_step(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_split_curline(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %72, label %5

5:                                                ; preds = %1
  tail call fastcc void @txt_delete_sel(ptr noundef nonnull %0) #26
  %6 = load i8, ptr @undoing, align 1, !tbaa !34
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call fastcc void @txt_undo_add_charop(ptr noundef nonnull %0, i32 noundef 11, i32 noundef 10) #26
  br label %9

9:                                                ; preds = %8, %5
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !62
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = tail call ptr %10(i64 noundef %14, ptr noundef nonnull @.str.1) #25
  %16 = load i32, ptr %11, align 8, !tbaa !62
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %9
  %19 = load ptr, ptr %2, align 8, !tbaa !61
  %20 = getelementptr inbounds %struct.TextLine, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  %22 = sext i32 %16 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %21, i64 %22, i1 false)
  %23 = load i32, ptr %11, align 8, !tbaa !62
  %24 = sext i32 %23 to i64
  br label %25

25:                                               ; preds = %18, %9
  %26 = phi i64 [ %24, %18 ], [ 0, %9 ]
  %27 = getelementptr inbounds i8, ptr %15, i64 %26
  store i8 0, ptr %27, align 1, !tbaa !34
  %28 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %29 = load ptr, ptr %2, align 8, !tbaa !61
  %30 = getelementptr inbounds %struct.TextLine, ptr %29, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !59
  %32 = load i32, ptr %11, align 8, !tbaa !62
  %33 = add i32 %31, 1
  %34 = sub i32 %33, %32
  %35 = sext i32 %34 to i64
  %36 = tail call ptr %28(i64 noundef %35, ptr noundef nonnull @.str.1) #25
  %37 = load ptr, ptr %2, align 8, !tbaa !61
  %38 = getelementptr inbounds %struct.TextLine, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !39
  %40 = load i32, ptr %11, align 8, !tbaa !62
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %39, i64 %41
  %43 = getelementptr inbounds %struct.TextLine, ptr %37, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !59
  %45 = sub i32 %44, %40
  %46 = add i32 %45, 1
  %47 = sext i32 %46 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %36, ptr align 1 %42, i64 %47, i1 false)
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %49 = load ptr, ptr %2, align 8, !tbaa !61
  %50 = getelementptr inbounds %struct.TextLine, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !39
  tail call void %48(ptr noundef %51) #25
  %52 = load ptr, ptr %2, align 8, !tbaa !61
  %53 = getelementptr inbounds %struct.TextLine, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !42
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %25
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %57(ptr noundef nonnull %54) #25
  br label %58

58:                                               ; preds = %56, %25
  %59 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %60 = tail call ptr %59(i64 noundef 40, ptr noundef nonnull @.str) #25
  %61 = getelementptr inbounds %struct.TextLine, ptr %60, i64 0, i32 2
  store ptr %15, ptr %61, align 8, !tbaa !39
  %62 = getelementptr inbounds %struct.TextLine, ptr %60, i64 0, i32 3
  store ptr null, ptr %62, align 8, !tbaa !42
  %63 = load i32, ptr %11, align 8, !tbaa !62
  %64 = getelementptr inbounds %struct.TextLine, ptr %60, i64 0, i32 4
  store i32 %63, ptr %64, align 8, !tbaa !59
  %65 = load ptr, ptr %2, align 8, !tbaa !61
  %66 = getelementptr inbounds %struct.TextLine, ptr %65, i64 0, i32 2
  store ptr %36, ptr %66, align 8, !tbaa !39
  %67 = getelementptr inbounds %struct.TextLine, ptr %65, i64 0, i32 3
  store ptr null, ptr %67, align 8, !tbaa !42
  %68 = getelementptr inbounds %struct.TextLine, ptr %65, i64 0, i32 4
  %69 = load i32, ptr %68, align 8, !tbaa !59
  %70 = sub nsw i32 %69, %63
  store i32 %70, ptr %68, align 8, !tbaa !59
  %71 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %71, ptr noundef %65, ptr noundef %60) #25
  store i32 0, ptr %11, align 8, !tbaa !62
  tail call fastcc void @txt_make_dirty(ptr noundef nonnull %0) #26
  tail call void @txt_clean_text(ptr noundef nonnull %0) #26
  tail call void @txt_pop_sel(ptr noundef nonnull %0) #26
  br label %72

72:                                               ; preds = %1, %58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @txt_new_linen(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !172 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %4 = tail call ptr %3(i64 noundef 40, ptr noundef nonnull @.str) #25
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %6 = add nsw i32 %1, 1
  %7 = sext i32 %6 to i64
  %8 = tail call ptr %5(i64 noundef %7, ptr noundef nonnull @.str.1) #25
  %9 = getelementptr inbounds %struct.TextLine, ptr %4, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !39
  %10 = getelementptr inbounds %struct.TextLine, ptr %4, i64 0, i32 3
  store ptr null, ptr %10, align 8, !tbaa !42
  %11 = icmp eq ptr %0, null
  %12 = select i1 %11, ptr @.str.20, ptr %0
  %13 = tail call ptr @BLI_strncpy(ptr noundef %8, ptr noundef nonnull %12, i64 noundef %7) #25
  %14 = load ptr, ptr %9, align 8, !tbaa !39
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #27
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.TextLine, ptr %4, i64 0, i32 4
  store i32 %16, ptr %17, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  ret ptr %4
}

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_undo_add_op(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call fastcc zeroext i8 @max_undo_test(ptr noundef %0, i32 noundef 15) #26, !range !137
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !66
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !66
  %9 = trunc i32 %1 to i8
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds i8, ptr %11, i64 %12
  store i8 %9, ptr %13, align 1, !tbaa !34
  %14 = load i32, ptr %6, align 8, !tbaa !66
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %6, align 8, !tbaa !66
  tail call fastcc void @txt_undo_store_cursors(ptr noundef %0) #26
  %16 = load ptr, ptr %10, align 8, !tbaa !51
  %17 = load i32, ptr %6, align 8, !tbaa !66
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %16, i64 %18
  store i8 %9, ptr %19, align 1, !tbaa !34
  %20 = load ptr, ptr %10, align 8, !tbaa !51
  %21 = load i32, ptr %6, align 8, !tbaa !66
  %22 = sext i32 %21 to i64
  %23 = getelementptr i8, ptr %20, i64 %22
  %24 = getelementptr i8, ptr %23, i64 1
  store i8 0, ptr %24, align 1, !tbaa !34
  br label %25

25:                                               ; preds = %2, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @max_undo_test(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 !PGOFuncName !173 {
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 10
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 11
  %5 = load i32, ptr %3, align 8, !tbaa !66
  %6 = add nsw i32 %5, %1
  %7 = load i32, ptr %4, align 4, !tbaa !67
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %31, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  br label %11

11:                                               ; preds = %9, %17
  %12 = phi i32 [ %7, %9 ], [ %29, %17 ]
  %13 = icmp sgt i32 %12, 524288
  %14 = load ptr, ptr %10, align 8, !tbaa !51
  br i1 %13, label %15, label %17

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %16(ptr noundef %14) #25
  tail call fastcc void @init_undo_text(ptr noundef nonnull %0) #26
  br label %31

17:                                               ; preds = %11
  %18 = shl nsw i32 %12, 1
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !37
  %20 = sext i32 %18 to i64
  %21 = tail call ptr %19(i64 noundef %20, ptr noundef nonnull @.str.19) #25
  store ptr %21, ptr %10, align 8, !tbaa !51
  %22 = load i32, ptr %4, align 4, !tbaa !67
  %23 = sext i32 %22 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %14, i64 %23, i1 false)
  %24 = load i32, ptr %4, align 4, !tbaa !67
  %25 = shl nsw i32 %24, 1
  store i32 %25, ptr %4, align 4, !tbaa !67
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %26(ptr noundef %14) #25
  %27 = load i32, ptr %3, align 8, !tbaa !66
  %28 = add nsw i32 %27, %1
  %29 = load i32, ptr %4, align 4, !tbaa !67
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %11, !llvm.loop !174

31:                                               ; preds = %17, %2, %15
  %32 = phi i8 [ 0, %15 ], [ 1, %2 ], [ 1, %17 ]
  ret i8 %32
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @txt_undo_store_cursors(ptr nocapture noundef %0) unnamed_addr #17 !PGOFuncName !175 {
  tail call fastcc void @txt_undo_store_cur(ptr noundef %0) #26
  tail call fastcc void @txt_undo_store_sel(ptr noundef %0) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_do_undo(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !66
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !34
  %13 = zext i8 %12 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #28
  %14 = icmp slt i32 %9, 0
  br i1 %14, label %161, label %15

15:                                               ; preds = %1
  %16 = add nsw i32 %9, -1
  store i32 %16, ptr %8, align 8, !tbaa !66
  store i8 1, ptr @undoing, align 1, !tbaa !34
  switch i8 %12, label %159 [
    i8 11, label %17
    i8 12, label %17
    i8 13, label %17
    i8 14, label %17
    i8 15, label %23
    i8 16, label %23
    i8 17, label %23
    i8 18, label %23
    i8 19, label %32
    i8 20, label %32
    i8 21, label %32
    i8 22, label %32
    i8 23, label %41
    i8 24, label %82
    i8 26, label %139
    i8 27, label %139
    i8 28, label %139
    i8 29, label %139
    i8 32, label %139
    i8 30, label %139
    i8 31, label %139
  ]

17:                                               ; preds = %15, %15, %15, %15
  %18 = add nuw i32 %9, 9
  %19 = sub i32 %18, %13
  store i32 %19, ptr %8, align 8, !tbaa !66
  call fastcc void @txt_undo_read_cur(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %2, ptr noundef nonnull %4) #26
  %20 = load i32, ptr %2, align 4, !tbaa !146
  %21 = load i16, ptr %4, align 2, !tbaa !176
  %22 = zext i16 %21 to i32
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %20, i32 noundef %22, i8 noundef zeroext 0) #26
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %20, i32 noundef %22, i8 noundef zeroext 1) #26
  tail call void @txt_delete_char(ptr noundef nonnull %0) #26
  br label %156

23:                                               ; preds = %15, %15, %15, %15
  %24 = zext nneg i8 %12 to i16
  %25 = add nsw i16 %24, -14
  %26 = tail call fastcc i32 @txt_undo_read_unicode(ptr noundef nonnull %7, ptr noundef nonnull %8, i16 noundef signext %25) #26
  %27 = load ptr, ptr %6, align 8, !tbaa !51
  call fastcc void @txt_undo_read_cur(ptr noundef %27, ptr noundef nonnull %8, ptr noundef nonnull %2, ptr noundef nonnull %4) #26
  %28 = load i32, ptr %2, align 4, !tbaa !146
  %29 = load i16, ptr %4, align 2, !tbaa !176
  %30 = zext i16 %29 to i32
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %28, i32 noundef %30, i8 noundef zeroext 0) #26
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %28, i32 noundef %30, i8 noundef zeroext 1) #26
  %31 = tail call zeroext i8 @txt_add_char(ptr noundef nonnull %0, i32 noundef %26) #26, !range !137
  br label %156

32:                                               ; preds = %15, %15, %15, %15
  %33 = zext nneg i8 %12 to i16
  %34 = add nsw i16 %33, -18
  %35 = tail call fastcc i32 @txt_undo_read_unicode(ptr noundef nonnull %7, ptr noundef nonnull %8, i16 noundef signext %34) #26
  %36 = load ptr, ptr %6, align 8, !tbaa !51
  call fastcc void @txt_undo_read_cur(ptr noundef %36, ptr noundef nonnull %8, ptr noundef nonnull %2, ptr noundef nonnull %4) #26
  %37 = load i32, ptr %2, align 4, !tbaa !146
  %38 = load i16, ptr %4, align 2, !tbaa !176
  %39 = zext i16 %38 to i32
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %37, i32 noundef %39, i8 noundef zeroext 0) #26
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %37, i32 noundef %39, i8 noundef zeroext 1) #26
  %40 = tail call zeroext i8 @txt_add_char(ptr noundef nonnull %0, i32 noundef %35) #26, !range !137
  tail call void @txt_move_left(ptr noundef nonnull %0, i8 noundef zeroext 0) #26
  br label %156

41:                                               ; preds = %15
  %42 = tail call fastcc i32 @txt_undo_read_uint32(ptr noundef nonnull %7, ptr noundef nonnull %8) #26
  %43 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %44 = add i32 %42, 1
  %45 = zext i32 %44 to i64
  %46 = tail call ptr %43(i64 noundef %45, ptr noundef nonnull @.str.9) #25
  %47 = icmp eq i32 %42, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %41
  %49 = zext i32 %42 to i64
  %50 = load i32, ptr %8, align 8, !tbaa !66
  br label %51

51:                                               ; preds = %48, %51
  %52 = phi i32 [ %50, %48 ], [ %64, %51 ]
  %53 = phi i64 [ 0, %48 ], [ %65, %51 ]
  %54 = load ptr, ptr %6, align 8, !tbaa !51
  %55 = sext i32 %52 to i64
  %56 = getelementptr inbounds i8, ptr %54, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !34
  %58 = trunc i64 %53 to i32
  %59 = xor i32 %58, -1
  %60 = add i32 %42, %59
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %46, i64 %61
  store i8 %57, ptr %62, align 1, !tbaa !34
  %63 = load i32, ptr %8, align 8, !tbaa !66
  %64 = add nsw i32 %63, -1
  store i32 %64, ptr %8, align 8, !tbaa !66
  %65 = add nuw nsw i64 %53, 1
  %66 = icmp eq i64 %65, %49
  br i1 %66, label %67, label %51, !llvm.loop !177

67:                                               ; preds = %51
  %68 = zext i32 %42 to i64
  br label %69

69:                                               ; preds = %41, %67
  %70 = phi i64 [ %68, %67 ], [ 0, %41 ]
  %71 = getelementptr inbounds i8, ptr %46, i64 %70
  store i8 0, ptr %71, align 1, !tbaa !34
  %72 = load i32, ptr %8, align 8, !tbaa !66
  %73 = add nsw i32 %72, -4
  store i32 %73, ptr %8, align 8, !tbaa !66
  %74 = load ptr, ptr %6, align 8, !tbaa !51
  call fastcc void @txt_undo_read_cursors(ptr noundef %74, ptr noundef nonnull %8, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5) #26
  %75 = load i32, ptr %2, align 4, !tbaa !146
  %76 = load i16, ptr %4, align 2, !tbaa !176
  %77 = zext i16 %76 to i32
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %75, i32 noundef %77, i8 noundef zeroext 0) #26
  tail call void @txt_insert_buf(ptr noundef nonnull %0, ptr noundef %46) #26
  %78 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %78(ptr noundef %46) #25
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %75, i32 noundef %77, i8 noundef zeroext 0) #26
  %79 = load i32, ptr %3, align 4, !tbaa !146
  %80 = load i16, ptr %5, align 2, !tbaa !176
  %81 = zext i16 %80 to i32
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %79, i32 noundef %81, i8 noundef zeroext 1) #26
  br label %156

82:                                               ; preds = %15
  %83 = tail call fastcc i32 @txt_undo_read_uint32(ptr noundef nonnull %7, ptr noundef nonnull %8) #26
  %84 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %85 = add i32 %83, 1
  %86 = zext i32 %85 to i64
  %87 = tail call ptr %84(i64 noundef %86, ptr noundef nonnull @.str.10) #25
  %88 = icmp eq i32 %83, 0
  br i1 %88, label %110, label %89

89:                                               ; preds = %82
  %90 = zext i32 %83 to i64
  %91 = load i32, ptr %8, align 8, !tbaa !66
  br label %92

92:                                               ; preds = %89, %92
  %93 = phi i32 [ %91, %89 ], [ %105, %92 ]
  %94 = phi i64 [ 0, %89 ], [ %106, %92 ]
  %95 = load ptr, ptr %6, align 8, !tbaa !51
  %96 = sext i32 %93 to i64
  %97 = getelementptr inbounds i8, ptr %95, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !34
  %99 = trunc i64 %94 to i32
  %100 = xor i32 %99, -1
  %101 = add i32 %83, %100
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i8, ptr %87, i64 %102
  store i8 %98, ptr %103, align 1, !tbaa !34
  %104 = load i32, ptr %8, align 8, !tbaa !66
  %105 = add nsw i32 %104, -1
  store i32 %105, ptr %8, align 8, !tbaa !66
  %106 = add nuw nsw i64 %94, 1
  %107 = icmp eq i64 %106, %90
  br i1 %107, label %108, label %92, !llvm.loop !178

108:                                              ; preds = %92
  %109 = zext i32 %83 to i64
  br label %110

110:                                              ; preds = %82, %108
  %111 = phi i64 [ %109, %108 ], [ 0, %82 ]
  %112 = getelementptr inbounds i8, ptr %87, i64 %111
  store i8 0, ptr %112, align 1, !tbaa !34
  %113 = tail call i64 @BLI_strlen_utf8(ptr noundef %87) #25
  %114 = trunc i64 %113 to i32
  %115 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %115(ptr noundef %87) #25
  %116 = load i32, ptr %8, align 8, !tbaa !66
  %117 = add nsw i32 %116, -4
  store i32 %117, ptr %8, align 8, !tbaa !66
  %118 = load ptr, ptr %6, align 8, !tbaa !51
  call fastcc void @txt_undo_read_cursors(ptr noundef %118, ptr noundef nonnull %8, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5) #26
  %119 = load i32, ptr %2, align 4, !tbaa !146
  %120 = load i16, ptr %4, align 2, !tbaa !176
  %121 = zext i16 %120 to i32
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %119, i32 noundef %121, i8 noundef zeroext 0) #26
  %122 = load i32, ptr %3, align 4, !tbaa !146
  %123 = load i16, ptr %5, align 2, !tbaa !176
  %124 = zext i16 %123 to i32
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %122, i32 noundef %124, i8 noundef zeroext 1) #26
  %125 = icmp eq i32 %119, %122
  %126 = icmp eq i16 %120, %123
  %127 = and i1 %125, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %110
  %129 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %130 = load i32, ptr %129, align 8, !tbaa !81
  %131 = and i32 %130, -1025
  store i32 %131, ptr %129, align 8, !tbaa !81
  %132 = icmp eq i32 %114, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %128, %133
  %134 = phi i32 [ %135, %133 ], [ 0, %128 ]
  tail call void @txt_move_right(ptr noundef %0, i8 noundef zeroext 1) #26
  %135 = add nuw i32 %134, 1
  %136 = icmp eq i32 %135, %114
  br i1 %136, label %137, label %133, !llvm.loop !179

137:                                              ; preds = %133, %128
  store i32 %130, ptr %129, align 8, !tbaa !81
  br label %138

138:                                              ; preds = %137, %110
  tail call void @txt_delete_selected(ptr noundef nonnull %0) #26
  br label %156

139:                                              ; preds = %15, %15, %15, %15, %15, %15, %15
  call fastcc void @txt_undo_read_cursors(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5) #26
  %140 = load i32, ptr %2, align 4, !tbaa !146
  %141 = load i16, ptr %4, align 2, !tbaa !176
  %142 = zext i16 %141 to i32
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %140, i32 noundef %142, i8 noundef zeroext 0) #26
  %143 = load i32, ptr %3, align 4, !tbaa !146
  %144 = load i16, ptr %5, align 2, !tbaa !176
  %145 = zext i16 %144 to i32
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %143, i32 noundef %145, i8 noundef zeroext 1) #26
  switch i8 %12, label %156 [
    i8 26, label %146
    i8 27, label %147
    i8 28, label %148
    i8 29, label %149
    i8 32, label %150
    i8 30, label %154
    i8 31, label %155
  ]

146:                                              ; preds = %139
  tail call void @txt_unindent(ptr noundef nonnull %0) #26
  br label %156

147:                                              ; preds = %139
  tail call void @txt_indent(ptr noundef nonnull %0) #26
  br label %156

148:                                              ; preds = %139
  tail call void @txt_uncomment(ptr noundef nonnull %0) #26
  br label %156

149:                                              ; preds = %139
  tail call void @txt_comment(ptr noundef nonnull %0) #26
  br label %156

150:                                              ; preds = %139
  %151 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %152 = load ptr, ptr %151, align 8, !tbaa !61
  %153 = load ptr, ptr %152, align 8, !tbaa !140
  tail call fastcc void @txt_delete_line(ptr noundef nonnull %0, ptr noundef %153) #26
  br label %156

154:                                              ; preds = %139
  tail call void @txt_move_lines(ptr noundef nonnull %0, i32 noundef 1) #26
  br label %156

155:                                              ; preds = %139
  tail call void @txt_move_lines(ptr noundef nonnull %0, i32 noundef -1) #26
  br label %156

156:                                              ; preds = %146, %148, %150, %155, %154, %149, %147, %139, %17, %23, %32, %69, %138
  %157 = load i32, ptr %8, align 8, !tbaa !66
  %158 = add nsw i32 %157, -1
  br label %159

159:                                              ; preds = %156, %15
  %160 = phi i32 [ -1, %15 ], [ %158, %156 ]
  store i32 %160, ptr %8, align 8, !tbaa !66
  store i8 0, ptr @undoing, align 1, !tbaa !34
  br label %161

161:                                              ; preds = %1, %159
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @txt_undo_read_cur(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 !PGOFuncName !180 {
  %5 = tail call fastcc i32 @txt_undo_read_uint32(ptr noundef %0, ptr noundef %1) #26
  store i32 %5, ptr %2, align 4, !tbaa !146
  %6 = tail call fastcc zeroext i16 @txt_undo_read_uint16(ptr noundef %0, ptr noundef %1) #26
  store i16 %6, ptr %3, align 2, !tbaa !176
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_delete_char(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = icmp eq ptr %4, null
  br i1 %5, label %51, label %6

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @txt_has_sel(ptr noundef nonnull %0) #26, !range !137
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call fastcc void @txt_delete_sel(ptr noundef nonnull %0) #26
  tail call fastcc void @txt_make_dirty(ptr noundef nonnull %0) #26
  br label %51

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !62
  %13 = getelementptr inbounds %struct.TextLine, ptr %4, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !59
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load ptr, ptr %4, align 8, !tbaa !140
  %18 = icmp eq ptr %17, null
  br i1 %18, label %51, label %19

19:                                               ; preds = %16
  tail call fastcc void @txt_combine_lines(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %17) #26
  tail call void @txt_pop_sel(ptr noundef nonnull %0) #26
  br label %46

20:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  store i64 0, ptr %2, align 8, !tbaa !142
  %21 = getelementptr inbounds %struct.TextLine, ptr %4, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  %23 = sext i32 %12 to i64
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = call i32 @BLI_str_utf8_as_unicode_and_size(ptr noundef %24, ptr noundef nonnull %2) #25
  %26 = load ptr, ptr %3, align 8, !tbaa !61
  %27 = getelementptr inbounds %struct.TextLine, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  %29 = load i32, ptr %11, align 8, !tbaa !62
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %28, i64 %30
  %32 = load i64, ptr %2, align 8, !tbaa !142
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = getelementptr inbounds %struct.TextLine, ptr %26, i64 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !59
  %36 = sub nsw i32 %35, %29
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, %32
  %39 = add i64 %38, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %31, ptr align 1 %33, i64 %39, i1 false)
  %40 = load i64, ptr %2, align 8, !tbaa !142
  %41 = load ptr, ptr %3, align 8, !tbaa !61
  %42 = getelementptr inbounds %struct.TextLine, ptr %41, i64 0, i32 4
  %43 = load i32, ptr %42, align 8, !tbaa !59
  %44 = trunc i64 %40 to i32
  %45 = sub i32 %43, %44
  store i32 %45, ptr %42, align 8, !tbaa !59
  call void @txt_pop_sel(ptr noundef nonnull %0) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  br label %46

46:                                               ; preds = %19, %20
  %47 = phi i32 [ 10, %19 ], [ %25, %20 ]
  call fastcc void @txt_make_dirty(ptr noundef nonnull %0) #26
  call void @txt_clean_text(ptr noundef nonnull %0) #26
  %48 = load i8, ptr @undoing, align 1, !tbaa !34
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  call fastcc void @txt_undo_add_charop(ptr noundef nonnull %0, i32 noundef 19, i32 noundef %47) #26
  br label %51

51:                                               ; preds = %46, %50, %16, %1, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @txt_undo_read_unicode(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #2 !PGOFuncName !181 {
  %4 = alloca [7 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #28
  switch i16 %2, label %45 [
    i16 1, label %5
    i16 2, label %12
    i16 3, label %25
    i16 4, label %43
  ]

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 4, !tbaa !146
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !34
  %10 = zext i8 %9 to i32
  %11 = add nsw i32 %6, -1
  store i32 %11, ptr %1, align 4, !tbaa !146
  br label %45

12:                                               ; preds = %3
  %13 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 2
  store i8 0, ptr %13, align 1, !tbaa !34
  %14 = load i32, ptr %1, align 4, !tbaa !146
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !34
  %18 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 1
  store i8 %17, ptr %18, align 1, !tbaa !34
  %19 = add nsw i32 %14, -1
  store i32 %19, ptr %1, align 4, !tbaa !146
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !34
  store i8 %22, ptr %4, align 1, !tbaa !34
  %23 = add nsw i32 %14, -2
  store i32 %23, ptr %1, align 4, !tbaa !146
  %24 = call i32 @BLI_str_utf8_as_unicode(ptr noundef nonnull %4) #25
  br label %45

25:                                               ; preds = %3
  %26 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 3
  store i8 0, ptr %26, align 1, !tbaa !34
  %27 = load i32, ptr %1, align 4, !tbaa !146
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !34
  %31 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 2
  store i8 %30, ptr %31, align 1, !tbaa !34
  %32 = add nsw i32 %27, -1
  store i32 %32, ptr %1, align 4, !tbaa !146
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !34
  %36 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 1
  store i8 %35, ptr %36, align 1, !tbaa !34
  %37 = add nsw i32 %27, -2
  store i32 %37, ptr %1, align 4, !tbaa !146
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !34
  store i8 %40, ptr %4, align 1, !tbaa !34
  %41 = add nsw i32 %27, -3
  store i32 %41, ptr %1, align 4, !tbaa !146
  %42 = call i32 @BLI_str_utf8_as_unicode(ptr noundef nonnull %4) #25
  br label %45

43:                                               ; preds = %3
  %44 = tail call fastcc i32 @txt_undo_read_uint32(ptr noundef %0, ptr noundef %1) #26
  br label %45

45:                                               ; preds = %3, %43, %25, %12, %5
  %46 = phi i32 [ %44, %43 ], [ %42, %25 ], [ %24, %12 ], [ %10, %5 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #28
  ret i32 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @txt_add_char(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !81
  %5 = lshr i32 %4, 10
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, 1
  %8 = tail call fastcc zeroext i8 @txt_add_char_intern(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %7) #26, !range !137
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @txt_undo_read_uint32(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #11 !PGOFuncName !182 {
  %3 = load i32, ptr %1, align 4, !tbaa !146
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = zext i8 %6 to i32
  %8 = add nsw i32 %3, -1
  store i32 %8, ptr %1, align 4, !tbaa !146
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = zext i8 %11 to i32
  %13 = add nsw i32 %3, -2
  store i32 %13, ptr %1, align 4, !tbaa !146
  %14 = shl nuw nsw i32 %7, 16
  %15 = shl nuw nsw i32 %12, 8
  %16 = or disjoint i32 %15, %14
  %17 = sext i32 %13 to i64
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !34
  %20 = zext i8 %19 to i32
  %21 = or disjoint i32 %16, %20
  %22 = add nsw i32 %3, -3
  store i32 %22, ptr %1, align 4, !tbaa !146
  %23 = shl nuw i32 %21, 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, ptr %0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !34
  %27 = zext i8 %26 to i32
  %28 = or disjoint i32 %23, %27
  %29 = add nsw i32 %3, -4
  store i32 %29, ptr %1, align 4, !tbaa !146
  ret i32 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @txt_undo_read_cursors(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #11 !PGOFuncName !183 {
  tail call fastcc void @txt_undo_read_sel(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %5) #26
  tail call fastcc void @txt_undo_read_cur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #26
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_strlen_utf8(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_delete_selected(ptr noundef %0) local_unnamed_addr #2 {
  tail call fastcc void @txt_delete_sel(ptr noundef %0) #26
  tail call fastcc void @txt_make_dirty(ptr noundef %0) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_unindent(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %69, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %69, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !81
  %12 = and i32 %11, 1024
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr @.str.11, ptr @tab_to_spaces
  %15 = select i1 %13, i32 1, i32 4
  %16 = zext nneg i32 %15 to i64
  br label %17

17:                                               ; preds = %45, %9
  %18 = phi ptr [ %3, %9 ], [ %46, %45 ]
  %19 = phi i8 [ 0, %9 ], [ %35, %45 ]
  %20 = phi i32 [ 0, %9 ], [ %47, %45 ]
  %21 = getelementptr inbounds %struct.TextLine, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %14, i64 noundef %16) #27
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = icmp eq i32 %20, 0
  %27 = select i1 %26, i8 1, i8 %19
  %28 = getelementptr inbounds %struct.TextLine, ptr %18, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !59
  %30 = sub nsw i32 %29, %15
  store i32 %30, ptr %28, align 8, !tbaa !59
  %31 = getelementptr inbounds i8, ptr %22, i64 %16
  %32 = add nsw i32 %30, 1
  %33 = sext i32 %32 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %22, ptr nonnull align 1 %31, i64 %33, i1 false)
  br label %34

34:                                               ; preds = %25, %17
  %35 = phi i8 [ %27, %25 ], [ %19, %17 ]
  tail call fastcc void @txt_make_dirty(ptr noundef nonnull %0) #26
  tail call void @txt_clean_text(ptr noundef nonnull %0) #26
  %36 = load ptr, ptr %2, align 8, !tbaa !61
  %37 = load ptr, ptr %6, align 8, !tbaa !63
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  br i1 %24, label %40, label %48

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %42 = load i32, ptr %41, align 4, !tbaa !64
  %43 = sub nsw i32 %42, %15
  %44 = tail call i32 @llvm.smax.i32(i32 %43, i32 0)
  store i32 %44, ptr %41, align 4, !tbaa !64
  br label %48

45:                                               ; preds = %34
  %46 = load ptr, ptr %36, align 8, !tbaa !140
  store ptr %46, ptr %2, align 8, !tbaa !61
  %47 = add nuw nsw i32 %20, 1
  br label %17

48:                                               ; preds = %40, %39
  %49 = icmp eq i8 %35, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %52 = load i32, ptr %51, align 8, !tbaa !62
  %53 = sub nsw i32 %52, %15
  %54 = tail call i32 @llvm.smax.i32(i32 %53, i32 0)
  store i32 %54, ptr %51, align 8, !tbaa !62
  br label %55

55:                                               ; preds = %50, %48
  %56 = icmp eq i32 %20, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %55, %57
  %58 = phi ptr [ %61, %57 ], [ %36, %55 ]
  %59 = phi i32 [ %62, %57 ], [ %20, %55 ]
  %60 = getelementptr inbounds %struct.TextLine, ptr %58, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !138
  %62 = add nsw i32 %59, -1
  %63 = icmp sgt i32 %59, 1
  br i1 %63, label %57, label %64, !llvm.loop !184

64:                                               ; preds = %57
  store ptr %61, ptr %2, align 8, !tbaa !61
  br label %65

65:                                               ; preds = %64, %55
  %66 = load i8, ptr @undoing, align 1, !tbaa !34
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  tail call void @txt_undo_add_op(ptr noundef nonnull %0, i32 noundef 27) #26
  br label %69

69:                                               ; preds = %65, %68, %1, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_indent(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %86, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %86, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !81
  %12 = and i32 %11, 1024
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr @.str.11, ptr @tab_to_spaces
  %15 = select i1 %13, i32 1, i32 4
  %16 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !62
  %18 = add nuw nsw i32 %15, 1
  %19 = zext nneg i32 %15 to i64
  br label %20

20:                                               ; preds = %71, %9
  %21 = phi ptr [ %7, %9 ], [ %60, %71 ]
  %22 = phi ptr [ %3, %9 ], [ %72, %71 ]
  %23 = phi i32 [ 0, %9 ], [ %73, %71 ]
  %24 = getelementptr inbounds %struct.TextLine, ptr %22, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !59
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %59, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %29 = add i32 %18, %25
  %30 = sext i32 %29 to i64
  %31 = tail call ptr %28(i64 noundef %30, ptr noundef nonnull @.str.1) #25
  store i32 0, ptr %16, align 8, !tbaa !62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %31, ptr noundef nonnull align 1 dereferenceable(1) %14, i64 %19, i1 false)
  %32 = load ptr, ptr %2, align 8, !tbaa !61
  %33 = getelementptr inbounds %struct.TextLine, ptr %32, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !59
  %35 = load i32, ptr %16, align 8, !tbaa !62
  %36 = sub nsw i32 %34, %35
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %27
  %39 = sext i32 %35 to i64
  %40 = getelementptr inbounds i8, ptr %31, i64 %39
  %41 = getelementptr inbounds i8, ptr %40, i64 %19
  %42 = getelementptr inbounds %struct.TextLine, ptr %32, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !39
  %44 = getelementptr inbounds i8, ptr %43, i64 %39
  %45 = zext nneg i32 %36 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %41, ptr align 1 %44, i64 %45, i1 false)
  %46 = load ptr, ptr %2, align 8, !tbaa !61
  %47 = getelementptr inbounds %struct.TextLine, ptr %46, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !59
  br label %49

49:                                               ; preds = %38, %27
  %50 = phi i32 [ %48, %38 ], [ %34, %27 ]
  %51 = add nsw i32 %50, %15
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %31, i64 %52
  store i8 0, ptr %53, align 1, !tbaa !34
  %54 = load ptr, ptr %2, align 8, !tbaa !61
  tail call fastcc void @make_new_line(ptr noundef %54, ptr noundef %31) #26
  %55 = load i32, ptr %16, align 8, !tbaa !62
  %56 = add nsw i32 %55, %15
  store i32 %56, ptr %16, align 8, !tbaa !62
  tail call fastcc void @txt_make_dirty(ptr noundef nonnull %0) #26
  tail call void @txt_clean_text(ptr noundef nonnull %0) #26
  %57 = load ptr, ptr %2, align 8, !tbaa !61
  %58 = load ptr, ptr %6, align 8, !tbaa !63
  br label %59

59:                                               ; preds = %49, %20
  %60 = phi ptr [ %58, %49 ], [ %21, %20 ]
  %61 = phi ptr [ %57, %49 ], [ %22, %20 ]
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %65 = load i32, ptr %64, align 4, !tbaa !64
  %66 = add nsw i32 %65, %15
  store i32 %66, ptr %64, align 4, !tbaa !64
  %67 = icmp eq i32 %17, 0
  %68 = add nsw i32 %15, %17
  %69 = select i1 %67, i32 0, i32 %68
  store i32 %69, ptr %16, align 8, !tbaa !62
  %70 = icmp eq i32 %23, 0
  br i1 %70, label %82, label %74

71:                                               ; preds = %59
  %72 = load ptr, ptr %61, align 8, !tbaa !140
  store ptr %72, ptr %2, align 8, !tbaa !61
  %73 = add nuw nsw i32 %23, 1
  br label %20

74:                                               ; preds = %63, %74
  %75 = phi ptr [ %78, %74 ], [ %60, %63 ]
  %76 = phi i32 [ %79, %74 ], [ %23, %63 ]
  %77 = getelementptr inbounds %struct.TextLine, ptr %75, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !138
  %79 = add nsw i32 %76, -1
  %80 = icmp sgt i32 %76, 1
  br i1 %80, label %74, label %81, !llvm.loop !185

81:                                               ; preds = %74
  store ptr %78, ptr %2, align 8, !tbaa !61
  br label %82

82:                                               ; preds = %81, %63
  %83 = load i8, ptr @undoing, align 1, !tbaa !34
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  tail call void @txt_undo_add_op(ptr noundef nonnull %0, i32 noundef 26) #26
  br label %86

86:                                               ; preds = %82, %85, %1, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_uncomment(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %64, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %64, label %9

9:                                                ; preds = %5, %43
  %10 = phi ptr [ %44, %43 ], [ %3, %5 ]
  %11 = phi i32 [ %45, %43 ], [ 0, %5 ]
  %12 = getelementptr inbounds %struct.TextLine, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  %14 = load i8, ptr %13, align 1, !tbaa !34
  %15 = icmp eq i8 %14, 35
  br i1 %15, label %16, label %39

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.TextLine, ptr %10, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !59
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %16, %20
  %21 = phi i64 [ %25, %20 ], [ 0, %16 ]
  %22 = phi ptr [ %29, %20 ], [ %10, %16 ]
  %23 = getelementptr inbounds %struct.TextLine, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !39
  %25 = add nuw nsw i64 %21, 1
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = getelementptr inbounds i8, ptr %24, i64 %21
  store i8 %27, ptr %28, align 1, !tbaa !34
  %29 = load ptr, ptr %2, align 8, !tbaa !61
  %30 = getelementptr inbounds %struct.TextLine, ptr %29, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !59
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %25, %32
  br i1 %33, label %20, label %34, !llvm.loop !186

34:                                               ; preds = %20, %16
  %35 = phi ptr [ %10, %16 ], [ %29, %20 ]
  %36 = phi i32 [ %18, %16 ], [ %31, %20 ]
  %37 = getelementptr inbounds %struct.TextLine, ptr %35, i64 0, i32 4
  %38 = add nsw i32 %36, -1
  store i32 %38, ptr %37, align 8, !tbaa !59
  br label %39

39:                                               ; preds = %34, %9
  tail call fastcc void @txt_make_dirty(ptr noundef nonnull %0) #26
  tail call void @txt_clean_text(ptr noundef nonnull %0) #26
  %40 = load ptr, ptr %2, align 8, !tbaa !61
  %41 = load ptr, ptr %6, align 8, !tbaa !63
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %40, align 8, !tbaa !140
  store ptr %44, ptr %2, align 8, !tbaa !61
  %45 = add nuw nsw i32 %11, 1
  br label %9

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.TextLine, ptr %40, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !59
  %49 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %48, ptr %49, align 4, !tbaa !64
  %50 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  store i32 0, ptr %50, align 8, !tbaa !62
  %51 = icmp eq i32 %11, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %46, %52
  %53 = phi ptr [ %56, %52 ], [ %40, %46 ]
  %54 = phi i32 [ %57, %52 ], [ %11, %46 ]
  %55 = getelementptr inbounds %struct.TextLine, ptr %53, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !138
  %57 = add nsw i32 %54, -1
  %58 = icmp sgt i32 %54, 1
  br i1 %58, label %52, label %59, !llvm.loop !187

59:                                               ; preds = %52
  store ptr %56, ptr %2, align 8, !tbaa !61
  br label %60

60:                                               ; preds = %59, %46
  %61 = load i8, ptr @undoing, align 1, !tbaa !34
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  tail call void @txt_undo_add_op(ptr noundef nonnull %0, i32 noundef 29) #26
  br label %64

64:                                               ; preds = %60, %63, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_comment(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %68, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %68, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  br label %11

11:                                               ; preds = %9, %53
  %12 = phi ptr [ %54, %53 ], [ %3, %9 ]
  %13 = phi i32 [ %55, %53 ], [ 0, %9 ]
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %15 = getelementptr inbounds %struct.TextLine, ptr %12, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !59
  %17 = add nsw i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = tail call ptr %14(i64 noundef %18, ptr noundef nonnull @.str.1) #25
  store i32 0, ptr %10, align 8, !tbaa !62
  store i8 35, ptr %19, align 1, !tbaa !34
  %20 = load ptr, ptr %2, align 8, !tbaa !61
  %21 = getelementptr inbounds %struct.TextLine, ptr %20, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !59
  %23 = load i32, ptr %10, align 8, !tbaa !62
  %24 = sub nsw i32 %22, %23
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %11
  %27 = sext i32 %23 to i64
  %28 = getelementptr inbounds i8, ptr %19, i64 %27
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  %30 = getelementptr inbounds %struct.TextLine, ptr %20, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !39
  %32 = getelementptr inbounds i8, ptr %31, i64 %27
  %33 = zext nneg i32 %24 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %29, ptr align 1 %32, i64 %33, i1 false)
  %34 = load ptr, ptr %2, align 8, !tbaa !61
  %35 = getelementptr inbounds %struct.TextLine, ptr %34, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !59
  br label %37

37:                                               ; preds = %26, %11
  %38 = phi i32 [ %36, %26 ], [ %22, %11 ]
  %39 = sext i32 %38 to i64
  %40 = getelementptr i8, ptr %19, i64 %39
  %41 = getelementptr i8, ptr %40, i64 1
  store i8 0, ptr %41, align 1, !tbaa !34
  %42 = load ptr, ptr %2, align 8, !tbaa !61
  tail call fastcc void @make_new_line(ptr noundef %42, ptr noundef nonnull %19) #26
  %43 = load i32, ptr %10, align 8, !tbaa !62
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %10, align 8, !tbaa !62
  tail call fastcc void @txt_make_dirty(ptr noundef nonnull %0) #26
  tail call void @txt_clean_text(ptr noundef nonnull %0) #26
  %45 = load ptr, ptr %2, align 8, !tbaa !61
  %46 = load ptr, ptr %6, align 8, !tbaa !63
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.TextLine, ptr %45, i64 0, i32 4
  %50 = load i32, ptr %49, align 8, !tbaa !59
  %51 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  store i32 %50, ptr %51, align 4, !tbaa !64
  store i32 0, ptr %10, align 8, !tbaa !62
  %52 = icmp eq i32 %13, 0
  br i1 %52, label %64, label %56

53:                                               ; preds = %37
  %54 = load ptr, ptr %45, align 8, !tbaa !140
  store ptr %54, ptr %2, align 8, !tbaa !61
  %55 = add nuw nsw i32 %13, 1
  br label %11

56:                                               ; preds = %48, %56
  %57 = phi ptr [ %60, %56 ], [ %45, %48 ]
  %58 = phi i32 [ %61, %56 ], [ %13, %48 ]
  %59 = getelementptr inbounds %struct.TextLine, ptr %57, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !138
  %61 = add nsw i32 %58, -1
  %62 = icmp sgt i32 %58, 1
  br i1 %62, label %56, label %63, !llvm.loop !188

63:                                               ; preds = %56
  store ptr %60, ptr %2, align 8, !tbaa !61
  br label %64

64:                                               ; preds = %63, %48
  %65 = load i8, ptr @undoing, align 1, !tbaa !34
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  tail call void @txt_undo_add_op(ptr noundef nonnull %0, i32 noundef 28) #26
  br label %68

68:                                               ; preds = %64, %67, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @txt_delete_line(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !PGOFuncName !189 {
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  tail call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef %1) #25
  %8 = getelementptr inbounds %struct.TextLine, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %12(ptr noundef nonnull %9) #25
  br label %13

13:                                               ; preds = %11, %6
  %14 = getelementptr inbounds %struct.TextLine, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %18(ptr noundef nonnull %15) #25
  br label %19

19:                                               ; preds = %17, %13
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %20(ptr noundef nonnull %1) #25
  tail call fastcc void @txt_make_dirty(ptr noundef nonnull %0) #26
  tail call void @txt_clean_text(ptr noundef nonnull %0) #26
  br label %21

21:                                               ; preds = %2, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_move_lines(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %6
  tail call void @txt_order_cursors(ptr noundef nonnull %0, i8 noundef zeroext 0) #26
  %11 = icmp eq i32 %1, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = load ptr, ptr %7, align 8, !tbaa !63
  %14 = load ptr, ptr %13, align 8, !tbaa !37
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %21

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8, !tbaa !61
  %18 = getelementptr inbounds %struct.TextLine, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !37
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %24

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  tail call void @BLI_remlink(ptr noundef nonnull %22, ptr noundef nonnull %14) #25
  %23 = load ptr, ptr %3, align 8, !tbaa !61
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %22, ptr noundef %23, ptr noundef nonnull %14) #25
  br label %27

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  tail call void @BLI_remlink(ptr noundef nonnull %25, ptr noundef nonnull %19) #25
  %26 = load ptr, ptr %7, align 8, !tbaa !63
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %25, ptr noundef %26, ptr noundef nonnull %19) #25
  br label %27

27:                                               ; preds = %24, %21
  tail call fastcc void @txt_make_dirty(ptr noundef nonnull %0) #26
  tail call void @txt_clean_text(ptr noundef nonnull %0) #26
  %28 = load i8, ptr @undoing, align 1, !tbaa !34
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = select i1 %11, i32 31, i32 30
  tail call void @txt_undo_add_op(ptr noundef nonnull %0, i32 noundef %31) #26
  br label %32

32:                                               ; preds = %16, %27, %30, %12, %2, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_do_redo(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #28
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !66
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !66
  %9 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds i8, ptr %10, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 %7, ptr %6, align 8, !tbaa !66
  br label %101

16:                                               ; preds = %1
  store i8 1, ptr @undoing, align 1, !tbaa !34
  %17 = zext i8 %13 to i32
  switch i8 %13, label %99 [
    i8 11, label %18
    i8 12, label %18
    i8 13, label %18
    i8 14, label %18
    i8 15, label %28
    i8 16, label %28
    i8 17, label %28
    i8 18, label %28
    i8 19, label %36
    i8 20, label %36
    i8 21, label %36
    i8 22, label %36
    i8 23, label %44
    i8 24, label %57
    i8 26, label %79
    i8 27, label %79
    i8 28, label %79
    i8 29, label %79
    i8 32, label %79
    i8 30, label %79
    i8 31, label %79
  ]

18:                                               ; preds = %16, %16, %16, %16
  %19 = add nsw i32 %7, 2
  store i32 %19, ptr %6, align 8, !tbaa !66
  call fastcc void @txt_redo_read_cur(ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %4) #26
  %20 = load i32, ptr %2, align 4, !tbaa !146
  %21 = load i16, ptr %4, align 2, !tbaa !176
  %22 = zext i16 %21 to i32
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %20, i32 noundef %22, i8 noundef zeroext 0) #26
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %20, i32 noundef %22, i8 noundef zeroext 1) #26
  %23 = zext nneg i8 %13 to i16
  %24 = add nsw i16 %23, -10
  %25 = load ptr, ptr %9, align 8, !tbaa !51
  %26 = tail call fastcc i32 @txt_redo_read_unicode(ptr noundef %25, ptr noundef nonnull %6, i16 noundef signext %24) #26
  %27 = tail call zeroext i8 @txt_add_char(ptr noundef nonnull %0, i32 noundef %26) #26, !range !137
  br label %100

28:                                               ; preds = %16, %16, %16, %16
  %29 = add nsw i32 %7, 2
  store i32 %29, ptr %6, align 8, !tbaa !66
  call fastcc void @txt_redo_read_cur(ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %4) #26
  %30 = load i32, ptr %2, align 4, !tbaa !146
  %31 = load i16, ptr %4, align 2, !tbaa !176
  %32 = zext i16 %31 to i32
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %30, i32 noundef %32, i8 noundef zeroext 0) #26
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %30, i32 noundef %32, i8 noundef zeroext 1) #26
  %33 = add nsw i32 %17, -14
  %34 = load i32, ptr %6, align 8, !tbaa !66
  %35 = add nsw i32 %33, %34
  store i32 %35, ptr %6, align 8, !tbaa !66
  tail call void @txt_move_right(ptr noundef nonnull %0, i8 noundef zeroext 0) #26
  tail call void @txt_backspace_char(ptr noundef nonnull %0) #26
  br label %100

36:                                               ; preds = %16, %16, %16, %16
  %37 = add nsw i32 %7, 2
  store i32 %37, ptr %6, align 8, !tbaa !66
  call fastcc void @txt_redo_read_cur(ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %4) #26
  %38 = load i32, ptr %2, align 4, !tbaa !146
  %39 = load i16, ptr %4, align 2, !tbaa !176
  %40 = zext i16 %39 to i32
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %38, i32 noundef %40, i8 noundef zeroext 0) #26
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %38, i32 noundef %40, i8 noundef zeroext 1) #26
  %41 = add nsw i32 %17, -18
  %42 = load i32, ptr %6, align 8, !tbaa !66
  %43 = add nsw i32 %41, %42
  store i32 %43, ptr %6, align 8, !tbaa !66
  tail call void @txt_delete_char(ptr noundef nonnull %0) #26
  br label %100

44:                                               ; preds = %16
  %45 = add nsw i32 %7, 2
  store i32 %45, ptr %6, align 8, !tbaa !66
  call fastcc void @txt_redo_read_cursors(ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5) #26
  %46 = load i32, ptr %2, align 4, !tbaa !146
  %47 = load i16, ptr %4, align 2, !tbaa !176
  %48 = zext i16 %47 to i32
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %46, i32 noundef %48, i8 noundef zeroext 0) #26
  %49 = load i32, ptr %3, align 4, !tbaa !146
  %50 = load i16, ptr %5, align 2, !tbaa !176
  %51 = zext i16 %50 to i32
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %49, i32 noundef %51, i8 noundef zeroext 1) #26
  %52 = load ptr, ptr %9, align 8, !tbaa !51
  %53 = tail call fastcc i32 @txt_redo_read_uint32(ptr noundef %52, ptr noundef nonnull %6) #26
  %54 = load i32, ptr %6, align 8, !tbaa !66
  %55 = add i32 %53, 4
  %56 = add i32 %55, %54
  store i32 %56, ptr %6, align 8, !tbaa !66
  tail call fastcc void @txt_delete_sel(ptr noundef nonnull %0) #26
  br label %100

57:                                               ; preds = %16
  %58 = add nsw i32 %7, 2
  store i32 %58, ptr %6, align 8, !tbaa !66
  call fastcc void @txt_redo_read_cursors(ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5) #26
  %59 = load i32, ptr %2, align 4, !tbaa !146
  %60 = load i16, ptr %4, align 2, !tbaa !176
  %61 = zext i16 %60 to i32
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %59, i32 noundef %61, i8 noundef zeroext 0) #26
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %59, i32 noundef %61, i8 noundef zeroext 1) #26
  %62 = load ptr, ptr %9, align 8, !tbaa !51
  %63 = tail call fastcc i32 @txt_redo_read_uint32(ptr noundef %62, ptr noundef nonnull %6) #26
  %64 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %65 = add i32 %63, 1
  %66 = zext i32 %65 to i64
  %67 = tail call ptr %64(i64 noundef %66, ptr noundef nonnull @.str.10) #25
  %68 = load ptr, ptr %9, align 8, !tbaa !51
  %69 = load i32, ptr %6, align 8, !tbaa !66
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %68, i64 %70
  %72 = zext i32 %63 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %67, ptr align 1 %71, i64 %72, i1 false)
  %73 = load i32, ptr %6, align 8, !tbaa !66
  %74 = add i32 %73, %63
  store i32 %74, ptr %6, align 8, !tbaa !66
  %75 = getelementptr inbounds i8, ptr %67, i64 %72
  store i8 0, ptr %75, align 1, !tbaa !34
  tail call void @txt_insert_buf(ptr noundef nonnull %0, ptr noundef %67) #26
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %76(ptr noundef %67) #25
  %77 = load i32, ptr %6, align 8, !tbaa !66
  %78 = add nsw i32 %77, 4
  store i32 %78, ptr %6, align 8, !tbaa !66
  br label %100

79:                                               ; preds = %16, %16, %16, %16, %16, %16, %16
  %80 = add nsw i32 %7, 2
  store i32 %80, ptr %6, align 8, !tbaa !66
  call fastcc void @txt_redo_read_cursors(ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5) #26
  %81 = load i32, ptr %2, align 4, !tbaa !146
  %82 = load i16, ptr %4, align 2, !tbaa !176
  %83 = zext i16 %82 to i32
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %81, i32 noundef %83, i8 noundef zeroext 0) #26
  %84 = load i32, ptr %3, align 4, !tbaa !146
  %85 = load i16, ptr %5, align 2, !tbaa !176
  %86 = zext i16 %85 to i32
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %84, i32 noundef %86, i8 noundef zeroext 1) #26
  switch i8 %13, label %98 [
    i8 26, label %87
    i8 27, label %88
    i8 28, label %89
    i8 29, label %90
    i8 32, label %91
    i8 30, label %92
    i8 31, label %95
  ]

87:                                               ; preds = %79
  tail call void @txt_indent(ptr noundef nonnull %0) #26
  br label %98

88:                                               ; preds = %79
  tail call void @txt_unindent(ptr noundef nonnull %0) #26
  br label %98

89:                                               ; preds = %79
  tail call void @txt_comment(ptr noundef nonnull %0) #26
  br label %98

90:                                               ; preds = %79
  tail call void @txt_uncomment(ptr noundef nonnull %0) #26
  br label %98

91:                                               ; preds = %79
  tail call void @txt_duplicate_line(ptr noundef nonnull %0) #26
  br label %98

92:                                               ; preds = %79
  %93 = add i32 %81, 1
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %93, i32 noundef %83, i8 noundef zeroext 0) #26
  %94 = add i32 %84, 1
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %94, i32 noundef %86, i8 noundef zeroext 1) #26
  tail call void @txt_move_lines(ptr noundef nonnull %0, i32 noundef -1) #26
  br label %98

95:                                               ; preds = %79
  %96 = add i32 %81, -1
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %96, i32 noundef %83, i8 noundef zeroext 0) #26
  %97 = add i32 %84, -1
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %97, i32 noundef %86, i8 noundef zeroext 1) #26
  tail call void @txt_move_lines(ptr noundef nonnull %0, i32 noundef 1) #26
  br label %98

98:                                               ; preds = %79, %88, %90, %92, %95, %91, %89, %87
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %81, i32 noundef %83, i8 noundef zeroext 0) #26
  tail call void @txt_move_to(ptr noundef nonnull %0, i32 noundef %84, i32 noundef %86, i8 noundef zeroext 1) #26
  br label %100

99:                                               ; preds = %16
  store i32 -1, ptr %6, align 8, !tbaa !66
  br label %100

100:                                              ; preds = %99, %98, %57, %44, %36, %28, %18
  store i8 0, ptr @undoing, align 1, !tbaa !34
  br label %101

101:                                              ; preds = %100, %15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @txt_redo_read_cur(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 !PGOFuncName !190 {
  %5 = tail call fastcc zeroext i16 @txt_redo_read_uint16(ptr noundef %0, ptr noundef %1) #26
  store i16 %5, ptr %3, align 2, !tbaa !176
  %6 = tail call fastcc i32 @txt_redo_read_uint32(ptr noundef %0, ptr noundef %1) #26
  store i32 %6, ptr %2, align 4, !tbaa !146
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @txt_redo_read_unicode(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #2 !PGOFuncName !191 {
  %4 = alloca [7 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #28
  switch i16 %2, label %45 [
    i16 1, label %5
    i16 2, label %12
    i16 3, label %25
    i16 4, label %43
  ]

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 4, !tbaa !146
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !34
  %10 = zext i8 %9 to i32
  %11 = add nsw i32 %6, 1
  store i32 %11, ptr %1, align 4, !tbaa !146
  br label %45

12:                                               ; preds = %3
  %13 = load i32, ptr %1, align 4, !tbaa !146
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !34
  store i8 %16, ptr %4, align 1, !tbaa !34
  %17 = add nsw i32 %13, 1
  store i32 %17, ptr %1, align 4, !tbaa !146
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !34
  %21 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 1
  store i8 %20, ptr %21, align 1, !tbaa !34
  %22 = add nsw i32 %13, 2
  store i32 %22, ptr %1, align 4, !tbaa !146
  %23 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 2
  store i8 0, ptr %23, align 1, !tbaa !34
  %24 = call i32 @BLI_str_utf8_as_unicode(ptr noundef nonnull %4) #25
  br label %45

25:                                               ; preds = %3
  %26 = load i32, ptr %1, align 4, !tbaa !146
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !34
  store i8 %29, ptr %4, align 1, !tbaa !34
  %30 = add nsw i32 %26, 1
  store i32 %30, ptr %1, align 4, !tbaa !146
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !34
  %34 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 1
  store i8 %33, ptr %34, align 1, !tbaa !34
  %35 = add nsw i32 %26, 2
  store i32 %35, ptr %1, align 4, !tbaa !146
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !34
  %39 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 2
  store i8 %38, ptr %39, align 1, !tbaa !34
  %40 = add nsw i32 %26, 3
  store i32 %40, ptr %1, align 4, !tbaa !146
  %41 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 3
  store i8 0, ptr %41, align 1, !tbaa !34
  %42 = call i32 @BLI_str_utf8_as_unicode(ptr noundef nonnull %4) #25
  br label %45

43:                                               ; preds = %3
  %44 = tail call fastcc i32 @txt_undo_read_uint32(ptr noundef %0, ptr noundef %1) #26
  br label %45

45:                                               ; preds = %3, %43, %25, %12, %5
  %46 = phi i32 [ %44, %43 ], [ %42, %25 ], [ %24, %12 ], [ %10, %5 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #28
  ret i32 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_backspace_char(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = icmp eq ptr %4, null
  br i1 %5, label %56, label %6

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @txt_has_sel(ptr noundef nonnull %0) #26, !range !137
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call fastcc void @txt_delete_sel(ptr noundef nonnull %0) #26
  tail call fastcc void @txt_make_dirty(ptr noundef nonnull %0) #26
  br label %56

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !62
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.TextLine, ptr %4, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !138
  %17 = icmp eq ptr %16, null
  br i1 %17, label %56, label %18

18:                                               ; preds = %14
  store ptr %16, ptr %3, align 8, !tbaa !61
  %19 = getelementptr inbounds %struct.TextLine, ptr %16, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !59
  store i32 %20, ptr %11, align 8, !tbaa !62
  %21 = load ptr, ptr %16, align 8, !tbaa !140
  tail call fastcc void @txt_combine_lines(ptr noundef nonnull %0, ptr noundef nonnull %16, ptr noundef %21) #26
  tail call void @txt_pop_sel(ptr noundef nonnull %0) #26
  br label %51

22:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  store i64 0, ptr %2, align 8, !tbaa !142
  %23 = getelementptr inbounds %struct.TextLine, ptr %4, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !39
  %25 = sext i32 %12 to i64
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  %27 = tail call ptr @BLI_str_prev_char_utf8(ptr noundef nonnull %26) #25
  %28 = call i32 @BLI_str_utf8_as_unicode_and_size(ptr noundef %27, ptr noundef nonnull %2) #25
  %29 = load ptr, ptr %3, align 8, !tbaa !61
  %30 = getelementptr inbounds %struct.TextLine, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !39
  %32 = load i32, ptr %11, align 8, !tbaa !62
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %31, i64 %33
  %35 = load i64, ptr %2, align 8, !tbaa !142
  %36 = sub i64 0, %35
  %37 = getelementptr inbounds i8, ptr %34, i64 %36
  %38 = getelementptr inbounds %struct.TextLine, ptr %29, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !59
  %40 = sub i32 %39, %32
  %41 = add i32 %40, 1
  %42 = sext i32 %41 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %37, ptr align 1 %34, i64 %42, i1 false)
  %43 = load i64, ptr %2, align 8, !tbaa !142
  %44 = load ptr, ptr %3, align 8, !tbaa !61
  %45 = getelementptr inbounds %struct.TextLine, ptr %44, i64 0, i32 4
  %46 = load i32, ptr %45, align 8, !tbaa !59
  %47 = trunc i64 %43 to i32
  %48 = sub i32 %46, %47
  store i32 %48, ptr %45, align 8, !tbaa !59
  %49 = load i32, ptr %11, align 8, !tbaa !62
  %50 = sub i32 %49, %47
  store i32 %50, ptr %11, align 8, !tbaa !62
  call void @txt_pop_sel(ptr noundef nonnull %0) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  br label %51

51:                                               ; preds = %18, %22
  %52 = phi i32 [ 10, %18 ], [ %28, %22 ]
  call fastcc void @txt_make_dirty(ptr noundef nonnull %0) #26
  call void @txt_clean_text(ptr noundef nonnull %0) #26
  %53 = load i8, ptr @undoing, align 1, !tbaa !34
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  call fastcc void @txt_undo_add_charop(ptr noundef nonnull %0, i32 noundef 15, i32 noundef %52) #26
  br label %56

56:                                               ; preds = %51, %55, %14, %1, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @txt_redo_read_cursors(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #11 !PGOFuncName !192 {
  tail call fastcc void @txt_redo_read_cur(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #26
  tail call fastcc void @txt_redo_read_sel(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %5) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @txt_redo_read_uint32(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #11 !PGOFuncName !193 {
  %3 = load i32, ptr %1, align 4, !tbaa !146
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = zext i8 %6 to i32
  %8 = add nsw i32 %3, 1
  store i32 %8, ptr %1, align 4, !tbaa !146
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or disjoint i32 %13, %7
  %15 = add nsw i32 %3, 2
  store i32 %15, ptr %1, align 4, !tbaa !146
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !34
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 16
  %21 = or disjoint i32 %14, %20
  %22 = add nsw i32 %3, 3
  store i32 %22, ptr %1, align 4, !tbaa !146
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !34
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 %26, 24
  %28 = or disjoint i32 %21, %27
  %29 = add nsw i32 %3, 4
  store i32 %29, ptr %1, align 4, !tbaa !146
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_duplicate_line(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = icmp eq ptr %3, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.TextLine, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = tail call fastcc ptr @txt_new_line(ptr noundef %11) #26
  %13 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %2, align 8, !tbaa !61
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %13, ptr noundef %14, ptr noundef %12) #25
  tail call fastcc void @txt_make_dirty(ptr noundef nonnull %0) #26
  tail call void @txt_clean_text(ptr noundef nonnull %0) #26
  %15 = load i8, ptr @undoing, align 1, !tbaa !34
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  tail call void @txt_undo_add_op(ptr noundef nonnull %0, i32 noundef 32) #26
  br label %18

18:                                               ; preds = %5, %17, %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @txt_undo_add_charop(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 !PGOFuncName !194 {
  %4 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #28
  %5 = call i64 @BLI_str_utf8_from_unicode(i32 noundef %2, ptr noundef nonnull %4) #25
  %6 = trunc i64 %5 to i32
  %7 = add i32 %6, 15
  %8 = call fastcc zeroext i8 @max_undo_test(ptr noundef %0, i32 noundef %7) #26, !range !137
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %64, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 10
  %12 = load i32, ptr %11, align 8, !tbaa !66
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !66
  %14 = icmp ult i64 %5, 4
  br i1 %14, label %15, label %40

15:                                               ; preds = %10
  %16 = zext nneg i32 %1 to i64
  %17 = add nuw nsw i64 %5, %16
  %18 = trunc i64 %17 to i8
  %19 = add i8 %18, -1
  %20 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = sext i32 %13 to i64
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  store i8 %19, ptr %23, align 1, !tbaa !34
  %24 = load i32, ptr %11, align 8, !tbaa !66
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %11, align 8, !tbaa !66
  call fastcc void @txt_undo_store_cur(ptr noundef nonnull %0) #26
  %26 = icmp eq i64 %5, 0
  %27 = load i32, ptr %11, align 8, !tbaa !66
  br i1 %26, label %51, label %28

28:                                               ; preds = %15, %28
  %29 = phi i32 [ %37, %28 ], [ %27, %15 ]
  %30 = phi i64 [ %38, %28 ], [ 0, %15 ]
  %31 = getelementptr inbounds [6 x i8], ptr %4, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !34
  %33 = load ptr, ptr %20, align 8, !tbaa !51
  %34 = sext i32 %29 to i64
  %35 = getelementptr inbounds i8, ptr %33, i64 %34
  store i8 %32, ptr %35, align 1, !tbaa !34
  %36 = load i32, ptr %11, align 8, !tbaa !66
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %11, align 8, !tbaa !66
  %38 = add nuw nsw i64 %30, 1
  %39 = icmp eq i64 %38, %5
  br i1 %39, label %51, label %28, !llvm.loop !195

40:                                               ; preds = %10
  %41 = trunc i32 %1 to i8
  %42 = add i8 %41, 3
  %43 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !51
  %45 = sext i32 %13 to i64
  %46 = getelementptr inbounds i8, ptr %44, i64 %45
  store i8 %42, ptr %46, align 1, !tbaa !34
  %47 = load i32, ptr %11, align 8, !tbaa !66
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %11, align 8, !tbaa !66
  call fastcc void @txt_undo_store_cursors(ptr noundef nonnull %0) #26
  %49 = load ptr, ptr %43, align 8, !tbaa !51
  call fastcc void @txt_undo_store_uint32(ptr noundef %49, ptr noundef nonnull %11, i32 noundef %2) #26
  %50 = load i32, ptr %11, align 8, !tbaa !66
  br label %51

51:                                               ; preds = %28, %15, %40
  %52 = phi i32 [ %50, %40 ], [ %27, %15 ], [ %37, %28 ]
  %53 = phi ptr [ %43, %40 ], [ %20, %15 ], [ %20, %28 ]
  %54 = phi i8 [ %42, %40 ], [ %19, %15 ], [ %19, %28 ]
  %55 = load ptr, ptr %53, align 8, !tbaa !51
  %56 = sext i32 %52 to i64
  %57 = getelementptr inbounds i8, ptr %55, i64 %56
  store i8 %54, ptr %57, align 1, !tbaa !34
  %58 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %59 = load ptr, ptr %58, align 8, !tbaa !51
  %60 = load i32, ptr %11, align 8, !tbaa !66
  %61 = sext i32 %60 to i64
  %62 = getelementptr i8, ptr %59, i64 %61
  %63 = getelementptr i8, ptr %62, i64 1
  store i8 0, ptr %63, align 1, !tbaa !34
  br label %64

64:                                               ; preds = %3, %51
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #28
  ret void
}

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @txt_combine_lines(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 !PGOFuncName !196 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct.TextLine, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.TextLine, ptr %2, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !59
  %13 = add i32 %10, 1
  %14 = add i32 %13, %12
  %15 = sext i32 %14 to i64
  %16 = tail call ptr %8(i64 noundef %15, ptr noundef nonnull @.str.1) #25
  %17 = getelementptr inbounds %struct.TextLine, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  %19 = tail call i64 @BLI_strcpy_rlen(ptr noundef %16, ptr noundef %18) #25
  %20 = getelementptr inbounds i8, ptr %16, i64 %19
  %21 = getelementptr inbounds %struct.TextLine, ptr %2, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  %23 = tail call i64 @BLI_strcpy_rlen(ptr noundef %20, ptr noundef %22) #25
  tail call fastcc void @make_new_line(ptr noundef nonnull %1, ptr noundef %16) #26
  tail call fastcc void @txt_delete_line(ptr noundef %0, ptr noundef nonnull %2) #26
  tail call fastcc void @txt_make_dirty(ptr noundef %0) #26
  tail call void @txt_clean_text(ptr noundef %0) #26
  br label %24

24:                                               ; preds = %3, %7
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_str_utf8_as_unicode_and_size(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_delete_word(ptr noundef %0) local_unnamed_addr #2 {
  tail call void @txt_jump_right(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 1) #26
  tail call fastcc void @txt_delete_sel(ptr noundef %0) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @txt_backspace_word(ptr noundef %0) local_unnamed_addr #2 {
  tail call void @txt_jump_left(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 1) #26
  tail call fastcc void @txt_delete_sel(ptr noundef %0) #26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @txt_add_char_intern(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #2 !PGOFuncName !197 {
  %4 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #28
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %56, label %8

8:                                                ; preds = %3
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @txt_split_curline(ptr noundef nonnull %0) #26
  br label %56

11:                                               ; preds = %8
  %12 = icmp eq i32 %1, 9
  %13 = icmp ne i8 %2, 0
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call fastcc void @txt_convert_tab_to_spaces(ptr noundef nonnull %0) #26
  br label %56

16:                                               ; preds = %11
  tail call fastcc void @txt_delete_sel(ptr noundef nonnull %0) #26
  %17 = load i8, ptr @undoing, align 1, !tbaa !34
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call fastcc void @txt_undo_add_charop(ptr noundef nonnull %0, i32 noundef 11, i32 noundef %1) #26
  br label %20

20:                                               ; preds = %19, %16
  %21 = call i64 @BLI_str_utf8_from_unicode(i32 noundef %1, ptr noundef nonnull %4) #25
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %23 = load ptr, ptr %5, align 8, !tbaa !61
  %24 = getelementptr inbounds %struct.TextLine, ptr %23, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !59
  %26 = sext i32 %25 to i64
  %27 = add i64 %21, 1
  %28 = add i64 %27, %26
  %29 = call ptr %22(i64 noundef %28, ptr noundef nonnull @.str.1) #25
  %30 = load ptr, ptr %5, align 8, !tbaa !61
  %31 = getelementptr inbounds %struct.TextLine, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !39
  %33 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !62
  %35 = sext i32 %34 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %29, ptr align 1 %32, i64 %35, i1 false)
  %36 = load i32, ptr %33, align 8, !tbaa !62
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %29, i64 %37
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %38, ptr nonnull align 1 %4, i64 %21, i1 false)
  %39 = load i32, ptr %33, align 8, !tbaa !62
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %29, i64 %40
  %42 = getelementptr inbounds i8, ptr %41, i64 %21
  %43 = load ptr, ptr %5, align 8, !tbaa !61
  %44 = getelementptr inbounds %struct.TextLine, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !39
  %46 = getelementptr inbounds i8, ptr %45, i64 %40
  %47 = getelementptr inbounds %struct.TextLine, ptr %43, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !59
  %49 = sub i32 %48, %39
  %50 = add i32 %49, 1
  %51 = sext i32 %50 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %42, ptr align 1 %46, i64 %51, i1 false)
  %52 = load ptr, ptr %5, align 8, !tbaa !61
  call fastcc void @make_new_line(ptr noundef %52, ptr noundef %29) #26
  %53 = load i32, ptr %33, align 8, !tbaa !62
  %54 = trunc i64 %21 to i32
  %55 = add i32 %53, %54
  store i32 %55, ptr %33, align 8, !tbaa !62
  call void @txt_pop_sel(ptr noundef nonnull %0) #26
  call fastcc void @txt_make_dirty(ptr noundef nonnull %0) #26
  call void @txt_clean_text(ptr noundef nonnull %0) #26
  br label %56

56:                                               ; preds = %3, %20, %15, %10
  %57 = phi i8 [ 1, %10 ], [ 1, %15 ], [ 1, %20 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #28
  ret i8 %57
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @txt_replace_char(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i64, align 8
  %4 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  store i64 0, ptr %3, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #28
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %108, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !62
  %11 = getelementptr inbounds %struct.TextLine, ptr %6, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !59
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = tail call zeroext i8 @txt_has_sel(ptr noundef nonnull %0) #26, !range !137
  %16 = icmp ne i8 %15, 0
  %17 = icmp eq i32 %1, 10
  %18 = or i1 %17, %16
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %8
  %20 = tail call zeroext i8 @txt_add_char(ptr noundef nonnull %0, i32 noundef %1) #26, !range !137
  br label %108

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.TextLine, ptr %6, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  %24 = sext i32 %10 to i64
  %25 = getelementptr inbounds i8, ptr %23, i64 %24
  %26 = call i32 @BLI_str_utf8_as_unicode_and_size(ptr noundef %25, ptr noundef nonnull %3) #25
  %27 = call i64 @BLI_str_utf8_from_unicode(i32 noundef %1, ptr noundef nonnull %4) #25
  %28 = load i64, ptr %3, align 8, !tbaa !142
  %29 = icmp ugt i64 %27, %28
  %30 = load ptr, ptr %5, align 8, !tbaa !61
  br i1 %29, label %31, label %67

31:                                               ; preds = %21
  %32 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !37
  %33 = getelementptr inbounds %struct.TextLine, ptr %30, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !59
  %35 = sext i32 %34 to i64
  %36 = add i64 %27, 1
  %37 = sub i64 %36, %28
  %38 = add i64 %37, %35
  %39 = call ptr %32(i64 noundef %38, ptr noundef nonnull @.str.1) #25
  %40 = load ptr, ptr %5, align 8, !tbaa !61
  %41 = getelementptr inbounds %struct.TextLine, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !39
  %43 = load i32, ptr %9, align 8, !tbaa !62
  %44 = sext i32 %43 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr align 1 %42, i64 %44, i1 false)
  %45 = load i32, ptr %9, align 8, !tbaa !62
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %39, i64 %46
  %48 = getelementptr inbounds i8, ptr %47, i64 %27
  %49 = load ptr, ptr %5, align 8, !tbaa !61
  %50 = getelementptr inbounds %struct.TextLine, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !39
  %52 = getelementptr inbounds i8, ptr %51, i64 %46
  %53 = load i64, ptr %3, align 8, !tbaa !142
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  %55 = getelementptr inbounds %struct.TextLine, ptr %49, i64 0, i32 4
  %56 = load i32, ptr %55, align 8, !tbaa !59
  %57 = sub nsw i32 %56, %45
  %58 = sext i32 %57 to i64
  %59 = sub i64 %58, %53
  %60 = add i64 %59, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %48, ptr align 1 %54, i64 %60, i1 false)
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %62 = load ptr, ptr %5, align 8, !tbaa !61
  %63 = getelementptr inbounds %struct.TextLine, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !39
  call void %61(ptr noundef %64) #25
  %65 = load ptr, ptr %5, align 8, !tbaa !61
  %66 = getelementptr inbounds %struct.TextLine, ptr %65, i64 0, i32 2
  store ptr %39, ptr %66, align 8, !tbaa !39
  br label %84

67:                                               ; preds = %21
  %68 = icmp ult i64 %27, %28
  br i1 %68, label %69, label %84

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.TextLine, ptr %30, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !39
  %72 = load i32, ptr %9, align 8, !tbaa !62
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %71, i64 %73
  %75 = getelementptr inbounds i8, ptr %74, i64 %27
  %76 = getelementptr inbounds i8, ptr %74, i64 %28
  %77 = getelementptr inbounds %struct.TextLine, ptr %30, i64 0, i32 4
  %78 = load i32, ptr %77, align 8, !tbaa !59
  %79 = sub nsw i32 %78, %72
  %80 = sext i32 %79 to i64
  %81 = sub i64 %80, %28
  %82 = add i64 %81, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %75, ptr nonnull align 1 %76, i64 %82, i1 false)
  %83 = load ptr, ptr %5, align 8, !tbaa !61
  br label %84

84:                                               ; preds = %67, %69, %31
  %85 = phi ptr [ %30, %67 ], [ %83, %69 ], [ %65, %31 ]
  %86 = getelementptr inbounds %struct.TextLine, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !39
  %88 = load i32, ptr %9, align 8, !tbaa !62
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, ptr %87, i64 %89
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %90, ptr nonnull align 1 %4, i64 %27, i1 false)
  %91 = load i32, ptr %9, align 8, !tbaa !62
  %92 = trunc i64 %27 to i32
  %93 = add i32 %91, %92
  store i32 %93, ptr %9, align 8, !tbaa !62
  %94 = load i64, ptr %3, align 8, !tbaa !142
  %95 = sub i64 %27, %94
  %96 = load ptr, ptr %5, align 8, !tbaa !61
  %97 = getelementptr inbounds %struct.TextLine, ptr %96, i64 0, i32 4
  %98 = load i32, ptr %97, align 8, !tbaa !59
  %99 = trunc i64 %95 to i32
  %100 = add i32 %98, %99
  store i32 %100, ptr %97, align 8, !tbaa !59
  call void @txt_pop_sel(ptr noundef nonnull %0) #26
  call fastcc void @txt_make_dirty(ptr noundef nonnull %0) #26
  call void @txt_clean_text(ptr noundef nonnull %0) #26
  %101 = load i8, ptr @undoing, align 1, !tbaa !34
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %84
  call fastcc void @txt_undo_add_charop(ptr noundef nonnull %0, i32 noundef 11, i32 noundef %1) #26
  %104 = load i32, ptr %9, align 8, !tbaa !62
  %105 = sub i32 %104, %92
  store i32 %105, ptr %9, align 8, !tbaa !62
  call void @txt_pop_sel(ptr noundef nonnull %0) #26
  call fastcc void @txt_undo_add_charop(ptr noundef nonnull %0, i32 noundef 19, i32 noundef %26) #26
  %106 = load i32, ptr %9, align 8, !tbaa !62
  %107 = add i32 %106, %92
  store i32 %107, ptr %9, align 8, !tbaa !62
  call void @txt_pop_sel(ptr noundef nonnull %0) #26
  br label %108

108:                                              ; preds = %84, %103, %2, %19
  %109 = phi i8 [ %20, %19 ], [ 0, %2 ], [ 1, %103 ], [ 1, %84 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret i8 %109
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_new_line(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 !PGOFuncName !198 {
  %3 = getelementptr inbounds %struct.TextLine, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %7(ptr noundef nonnull %4) #25
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct.TextLine, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  tail call void %13(ptr noundef nonnull %10) #25
  br label %14

14:                                               ; preds = %12, %8
  store ptr %1, ptr %3, align 8, !tbaa !39
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.TextLine, ptr %0, i64 0, i32 4
  store i32 %16, ptr %17, align 8, !tbaa !59
  store ptr null, ptr %9, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @txt_setcurr_tab_spaces(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #18 {
  %3 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = icmp eq ptr %4, null
  br i1 %5, label %82, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !81
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
  %19 = load i32, ptr %18, align 8, !tbaa !62
  %20 = zext i32 %19 to i64
  br label %21

21:                                               ; preds = %17, %24
  %22 = phi i64 [ 0, %17 ], [ %25, %24 ]
  %23 = icmp eq i64 %22, %20
  br i1 %23, label %82, label %24

24:                                               ; preds = %21
  %25 = add nuw nsw i64 %22, 1
  %26 = getelementptr inbounds i8, ptr %12, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !34
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %13, %28
  br i1 %29, label %21, label %30, !llvm.loop !199

30:                                               ; preds = %24
  %31 = trunc i64 %25 to i32
  br label %32

32:                                               ; preds = %30, %6
  %33 = phi i32 [ 0, %6 ], [ %31, %30 ]
  %34 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %12, i32 58)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %60, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !62
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = zext nneg i32 %38 to i64
  br label %42

42:                                               ; preds = %40, %49
  %43 = phi i64 [ 0, %40 ], [ %51, %49 ]
  %44 = phi i8 [ 0, %40 ], [ %50, %49 ]
  %45 = getelementptr inbounds i8, ptr %12, i64 %43
  %46 = load i8, ptr %45, align 1, !tbaa !34
  switch i8 %46, label %49 [
    i8 0, label %53
    i8 35, label %53
    i8 58, label %47
    i8 32, label %48
    i8 9, label %48
  ]

47:                                               ; preds = %42
  br label %49

48:                                               ; preds = %42, %42
  br label %49

49:                                               ; preds = %42, %47, %48
  %50 = phi i8 [ %44, %48 ], [ 1, %47 ], [ 0, %42 ]
  %51 = add nuw nsw i64 %43, 1
  %52 = icmp eq i64 %51, %41
  br i1 %52, label %53, label %42, !llvm.loop !200

53:                                               ; preds = %42, %42, %49
  %54 = phi i8 [ %50, %49 ], [ %44, %42 ], [ %44, %42 ]
  %55 = icmp eq i8 %54, 0
  %56 = select i1 %55, i32 0, i32 %1
  br label %57

57:                                               ; preds = %53, %36
  %58 = phi i32 [ 0, %36 ], [ %56, %53 ]
  %59 = add nsw i32 %58, %33
  br label %60

60:                                               ; preds = %57, %32
  %61 = phi i32 [ %33, %32 ], [ %59, %57 ]
  br label %62

62:                                               ; preds = %60, %76
  %63 = phi i64 [ %78, %76 ], [ 0, %60 ]
  %64 = phi ptr [ %80, %76 ], [ @.str.14, %60 ]
  %65 = phi i32 [ %77, %76 ], [ %61, %60 ]
  %66 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %64) #27
  %67 = icmp ne ptr %66, null
  %68 = icmp sgt i32 %65, 0
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = tail call i64 @strcspn(ptr noundef nonnull %12, ptr noundef %64) #27
  %72 = tail call i64 @strcspn(ptr noundef nonnull %12, ptr noundef nonnull @.str.13) #27
  %73 = icmp ult i64 %71, %72
  %74 = select i1 %73, i32 %1, i32 0
  %75 = sub nsw i32 %65, %74
  br label %76

76:                                               ; preds = %70, %62
  %77 = phi i32 [ %65, %62 ], [ %75, %70 ]
  %78 = add nuw nsw i64 %63, 1
  %79 = getelementptr inbounds [6 x ptr], ptr @txt_setcurr_tab_spaces.back_words, i64 0, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !37
  %81 = icmp eq i64 %78, 5
  br i1 %81, label %82, label %62, !llvm.loop !201

82:                                               ; preds = %21, %76, %2
  %83 = phi i32 [ 0, %2 ], [ %77, %76 ], [ %19, %21 ]
  ret i32 %83
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define dso_local i32 @text_check_bracket(i8 noundef zeroext %0) local_unnamed_addr #19 {
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
  br i1 %19, label %20, label %2, !llvm.loop !202

20:                                               ; preds = %17, %14, %7
  %21 = phi i32 [ %9, %7 ], [ %16, %14 ], [ 0, %17 ]
  ret i32 %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define dso_local noundef zeroext i8 @text_check_delim(i8 noundef zeroext %0) local_unnamed_addr #19 {
  br label %5

2:                                                ; preds = %5
  %3 = add nuw nsw i64 %6, 1
  %4 = icmp eq i64 %3, 29
  br i1 %4, label %10, label %5, !llvm.loop !203

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @text_check_digit(i8 noundef zeroext %0) local_unnamed_addr #20 {
  %2 = add i8 %0, -48
  %3 = icmp ult i8 %2, 10
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @text_check_identifier(i8 noundef zeroext %0) local_unnamed_addr #20 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @text_check_identifier_nodigit(i8 noundef zeroext %0) local_unnamed_addr #20 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @text_check_identifier_unicode(i32 noundef %0) local_unnamed_addr #20 {
  %2 = icmp ult i32 %0, 255
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = trunc i32 %0 to i8
  %5 = tail call zeroext i8 @text_check_identifier(i8 noundef zeroext %4) #26, !range !137
  %6 = zext nneg i8 %5 to i32
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ 0, %1 ], [ %6, %3 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @text_check_identifier_nodigit_unicode(i32 noundef %0) local_unnamed_addr #20 {
  %2 = icmp ult i32 %0, 255
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = trunc i32 %0 to i8
  %5 = tail call zeroext i8 @text_check_identifier_nodigit(i8 noundef zeroext %4) #26, !range !137
  %6 = zext nneg i8 %5 to i32
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ 0, %1 ], [ %6, %3 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @text_check_whitespace(i8 noundef zeroext %0) local_unnamed_addr #20 {
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i32 @text_find_identifier_start(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #21 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %9
  %7 = phi i64 [ %5, %4 ], [ %10, %9 ]
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = add nsw i64 %7, -1
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !34
  %13 = tail call zeroext i8 @text_check_identifier(i8 noundef zeroext %12) #26, !range !137
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %6, !llvm.loop !204

15:                                               ; preds = %9
  %16 = trunc i64 %7 to i32
  br label %17

17:                                               ; preds = %6, %15, %2
  %18 = phi i32 [ 0, %2 ], [ %16, %15 ], [ 0, %6 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cleanup_textline(ptr nocapture noundef %0) unnamed_addr #2 !PGOFuncName !205 {
  %2 = getelementptr inbounds %struct.TextLine, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !59
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TextLine, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %5, %24
  %8 = phi i32 [ %3, %5 ], [ %25, %24 ]
  %9 = phi i32 [ 0, %5 ], [ %27, %24 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !39
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i8, ptr %10, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = icmp ugt i8 %13, 31
  %15 = icmp eq i8 %13, 9
  %16 = or i1 %14, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds i8, ptr %12, i64 1
  %19 = sub nsw i32 %8, %9
  %20 = sext i32 %19 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %12, ptr nonnull align 1 %18, i64 %20, i1 false)
  %21 = load i32, ptr %2, align 8, !tbaa !59
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %2, align 8, !tbaa !59
  %23 = add nsw i32 %9, -1
  br label %24

24:                                               ; preds = %7, %17
  %25 = phi i32 [ %22, %17 ], [ %8, %7 ]
  %26 = phi i32 [ %23, %17 ], [ %9, %7 ]
  %27 = add nsw i32 %26, 1
  %28 = icmp slt i32 %27, %25
  br i1 %28, label %7, label %29, !llvm.loop !206

29:                                               ; preds = %24, %1
  %30 = getelementptr inbounds %struct.TextLine, ptr %0, i64 0, i32 2
  %31 = tail call i32 @txt_extended_ascii_as_utf8(ptr noundef nonnull %30) #26
  %32 = load i32, ptr %2, align 8, !tbaa !59
  %33 = add nsw i32 %32, %31
  store i32 %33, ptr %2, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @txt_undo_store_uint32(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #11 !PGOFuncName !207 {
  %4 = trunc i32 %2 to i8
  %5 = load i32, ptr %1, align 4, !tbaa !146
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  store i8 %4, ptr %7, align 1, !tbaa !34
  %8 = load i32, ptr %1, align 4, !tbaa !146
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %1, align 4, !tbaa !146
  %10 = lshr i32 %2, 8
  %11 = trunc i32 %10 to i8
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  store i8 %11, ptr %13, align 1, !tbaa !34
  %14 = load i32, ptr %1, align 4, !tbaa !146
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %1, align 4, !tbaa !146
  %16 = lshr i32 %2, 16
  %17 = trunc i32 %16 to i8
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds i8, ptr %0, i64 %18
  store i8 %17, ptr %19, align 1, !tbaa !34
  %20 = load i32, ptr %1, align 4, !tbaa !146
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %1, align 4, !tbaa !146
  %22 = lshr i32 %2, 24
  %23 = trunc i32 %22 to i8
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds i8, ptr %0, i64 %24
  store i8 %23, ptr %25, align 1, !tbaa !34
  %26 = load i32, ptr %1, align 4, !tbaa !146
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %1, align 4, !tbaa !146
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @txt_undo_store_cur(ptr nocapture noundef %0) unnamed_addr #17 !PGOFuncName !208 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 10
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !62
  %7 = trunc i32 %6 to i16
  tail call fastcc void @txt_undo_store_uint16(ptr noundef %3, ptr noundef nonnull %4, i16 noundef zeroext %7) #26
  %8 = load ptr, ptr %2, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  %13 = tail call i32 @txt_get_span(ptr noundef %10, ptr noundef %12) #26
  tail call fastcc void @txt_undo_store_uint32(ptr noundef %8, ptr noundef nonnull %4, i32 noundef %13) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @txt_undo_store_sel(ptr nocapture noundef %0) unnamed_addr #17 !PGOFuncName !209 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 10
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 4, !tbaa !64
  %7 = trunc i32 %6 to i16
  tail call fastcc void @txt_undo_store_uint16(ptr noundef %3, ptr noundef nonnull %4, i16 noundef zeroext %7) #26
  %8 = load ptr, ptr %2, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = tail call i32 @txt_get_span(ptr noundef %10, ptr noundef %12) #26
  tail call fastcc void @txt_undo_store_uint32(ptr noundef %8, ptr noundef nonnull %4, i32 noundef %13) #26
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @txt_undo_store_uint16(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, i16 noundef zeroext %2) unnamed_addr #11 !PGOFuncName !210 {
  %4 = trunc i16 %2 to i8
  %5 = load i32, ptr %1, align 4, !tbaa !146
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  store i8 %4, ptr %7, align 1, !tbaa !34
  %8 = load i32, ptr %1, align 4, !tbaa !146
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %1, align 4, !tbaa !146
  %10 = lshr i16 %2, 8
  %11 = trunc i16 %10 to i8
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  store i8 %11, ptr %13, align 1, !tbaa !34
  %14 = load i32, ptr %1, align 4, !tbaa !146
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %1, align 4, !tbaa !146
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc zeroext i16 @txt_undo_read_uint16(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #11 !PGOFuncName !211 {
  %3 = load i32, ptr %1, align 4, !tbaa !146
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = add nsw i32 %3, -1
  store i32 %7, ptr %1, align 4, !tbaa !146
  %8 = zext i8 %6 to i16
  %9 = shl nuw i16 %8, 8
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !34
  %13 = zext i8 %12 to i16
  %14 = or disjoint i16 %9, %13
  %15 = add nsw i32 %3, -2
  store i32 %15, ptr %1, align 4, !tbaa !146
  ret i16 %14
}

; Function Attrs: optsize
declare i32 @BLI_str_utf8_as_unicode(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @txt_undo_read_sel(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 !PGOFuncName !212 {
  %5 = tail call fastcc i32 @txt_undo_read_uint32(ptr noundef %0, ptr noundef %1) #26
  store i32 %5, ptr %2, align 4, !tbaa !146
  %6 = tail call fastcc zeroext i16 @txt_undo_read_uint16(ptr noundef %0, ptr noundef %1) #26
  store i16 %6, ptr %3, align 2, !tbaa !176
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc zeroext i16 @txt_redo_read_uint16(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #11 !PGOFuncName !213 {
  %3 = load i32, ptr %1, align 4, !tbaa !146
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = add nsw i32 %3, 1
  store i32 %7, ptr %1, align 4, !tbaa !146
  %8 = zext i8 %6 to i16
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !34
  %12 = zext i8 %11 to i16
  %13 = shl nuw i16 %12, 8
  %14 = or disjoint i16 %13, %8
  %15 = add nsw i32 %3, 2
  store i32 %15, ptr %1, align 4, !tbaa !146
  ret i16 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @txt_redo_read_sel(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 !PGOFuncName !214 {
  %5 = tail call fastcc zeroext i16 @txt_redo_read_uint16(ptr noundef %0, ptr noundef %1) #26
  store i16 %5, ptr %3, align 2, !tbaa !176
  %6 = tail call fastcc i32 @txt_redo_read_uint32(ptr noundef %0, ptr noundef %1) #26
  store i32 %6, ptr %2, align 4, !tbaa !146
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_strcpy_rlen(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @txt_convert_tab_to_spaces(ptr noundef %0) unnamed_addr #2 !PGOFuncName !215 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !62
  %4 = srem i32 %3, 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [5 x i8], ptr @tab_to_spaces, i64 0, i64 %5
  tail call void @txt_insert_buf(ptr noundef %0, ptr noundef nonnull %6) #26
  ret void
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #22

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind optsize }
attributes #26 = { optsize }
attributes #27 = { nounwind optsize willreturn memory(read) }
attributes #28 = { nounwind }

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
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !35, i64 0}
!39 = !{!40, !38, i64 16}
!40 = !{!"TextLine", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !41, i64 32, !41, i64 36}
!41 = !{!"int", !35, i64 0}
!42 = !{!40, !38, i64 24}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!46, !38, i64 120}
!46 = !{!"Text", !47, i64 0, !38, i64 120, !41, i64 128, !41, i64 132, !49, i64 136, !38, i64 152, !38, i64 160, !41, i64 168, !41, i64 172, !38, i64 176, !41, i64 184, !41, i64 188, !38, i64 192, !50, i64 200}
!47 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !35, i64 32, !48, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !38, i64 112}
!48 = !{!"short", !35, i64 0}
!49 = !{!"ListBase", !38, i64 0, !38, i64 8}
!50 = !{!"double", !35, i64 0}
!51 = !{!46, !38, i64 176}
!52 = !{!46, !41, i64 100}
!53 = !{!46, !41, i64 132}
!54 = !{!55, !41, i64 8}
!55 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !35, i64 20, !35, i64 788, !35, i64 1556, !35, i64 2580, !35, i64 3348, !35, i64 4116, !35, i64 4884, !35, i64 5652, !35, i64 6420, !35, i64 7444, !41, i64 8468, !48, i64 8472, !48, i64 8474, !48, i64 8476, !48, i64 8478, !48, i64 8480, !48, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !48, i64 8496, !48, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !48, i64 8528, !48, i64 8530, !48, i64 8532, !48, i64 8534, !49, i64 8536, !49, i64 8552, !49, i64 8568, !49, i64 8584, !49, i64 8600, !49, i64 8616, !49, i64 8632, !35, i64 8648, !48, i64 8712, !48, i64 8714, !48, i64 8716, !48, i64 8718, !48, i64 8720, !48, i64 8722, !48, i64 8724, !48, i64 8726, !35, i64 8728, !48, i64 8896, !48, i64 8898, !48, i64 8900, !48, i64 8902, !48, i64 8904, !48, i64 8906, !48, i64 8908, !48, i64 8910, !41, i64 8912, !41, i64 8916, !48, i64 8920, !48, i64 8922, !48, i64 8924, !48, i64 8926, !48, i64 8928, !48, i64 8930, !48, i64 8932, !48, i64 8934, !48, i64 8936, !48, i64 8938, !35, i64 8940, !35, i64 8941, !35, i64 8942, !35, i64 8943, !48, i64 8944, !48, i64 8946, !48, i64 8948, !48, i64 8950, !48, i64 8952, !48, i64 8954, !56, i64 8956, !56, i64 8960, !41, i64 8964, !48, i64 8968, !48, i64 8970, !56, i64 8972, !48, i64 8976, !48, i64 8978, !48, i64 8980, !48, i64 8982, !57, i64 8984, !35, i64 9760, !35, i64 9772, !48, i64 9788, !35, i64 9790, !35, i64 9791, !35, i64 9792, !35, i64 9872, !41, i64 10896, !41, i64 10900, !56, i64 10904, !56, i64 10908, !41, i64 10912, !48, i64 10916, !48, i64 10918, !48, i64 10920, !48, i64 10922, !48, i64 10924, !48, i64 10926, !58, i64 10928}
!56 = !{!"float", !35, i64 0}
!57 = !{!"ColorBand", !48, i64 0, !48, i64 2, !35, i64 4, !35, i64 5, !35, i64 6, !35, i64 7, !35, i64 8}
!58 = !{!"WalkNavigation", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !48, i64 24, !35, i64 26}
!59 = !{!40, !41, i64 32}
!60 = !{!46, !38, i64 136}
!61 = !{!46, !38, i64 152}
!62 = !{!46, !41, i64 168}
!63 = !{!46, !38, i64 160}
!64 = !{!46, !41, i64 172}
!65 = !{!"text.c:init_undo_text"}
!66 = !{!46, !41, i64 184}
!67 = !{!46, !41, i64 188}
!68 = !{!"text.c:BLI_listbase_clear"}
!69 = distinct !{!69, !44}
!70 = distinct !{!70, !44}
!71 = !{!72, !38, i64 0}
!72 = !{!"Global", !38, i64 0, !35, i64 8, !35, i64 1032, !35, i64 2056, !35, i64 2057, !35, i64 2058, !49, i64 2064, !35, i64 2080, !35, i64 2081, !35, i64 2082, !48, i64 2084, !48, i64 2086, !48, i64 2088, !35, i64 2090, !48, i64 2092, !41, i64 2096, !41, i64 2100, !35, i64 2104, !41, i64 2108, !41, i64 2112, !35, i64 2116}
!73 = distinct !{!73, !44}
!74 = !{!75, !76, i64 88}
!75 = !{!"stat", !76, i64 0, !76, i64 8, !76, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !76, i64 40, !76, i64 48, !76, i64 56, !76, i64 64, !77, i64 72, !77, i64 88, !77, i64 104, !35, i64 120}
!76 = !{!"long", !35, i64 0}
!77 = !{!"timespec", !76, i64 0, !76, i64 8}
!78 = !{!46, !50, i64 200}
!79 = !{!"text.c:text_from_buf"}
!80 = distinct !{!80, !44}
!81 = !{!46, !41, i64 128}
!82 = distinct !{!82, !44}
!83 = !{!84, !48, i64 24}
!84 = !{!"bController", !38, i64 0, !38, i64 8, !38, i64 16, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !48, i64 32, !48, i64 34, !48, i64 36, !48, i64 38, !35, i64 40, !38, i64 104, !38, i64 112, !38, i64 120, !48, i64 128, !48, i64 130, !41, i64 132}
!85 = !{!84, !38, i64 104}
!86 = !{!87, !38, i64 0}
!87 = !{!"bPythonCont", !38, i64 0, !35, i64 8, !41, i64 72, !41, i64 76}
!88 = distinct !{!88, !44}
!89 = !{!90, !48, i64 24}
!90 = !{!"bActuator", !38, i64 0, !38, i64 8, !38, i64 16, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !35, i64 32, !38, i64 96, !38, i64 104}
!91 = !{!90, !38, i64 96}
!92 = !{!93, !38, i64 16}
!93 = !{!"bTwoDFilterActuator", !35, i64 0, !48, i64 4, !48, i64 6, !41, i64 8, !56, i64 12, !38, i64 16}
!94 = distinct !{!94, !44}
!95 = !{!96, !48, i64 136}
!96 = !{!"Object", !47, i64 0, !38, i64 120, !38, i64 128, !48, i64 136, !48, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !35, i64 152, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !38, i64 304, !97, i64 312, !38, i64 360, !49, i64 368, !49, i64 384, !49, i64 400, !49, i64 416, !41, i64 432, !41, i64 436, !38, i64 440, !38, i64 448, !41, i64 456, !41, i64 460, !35, i64 464, !35, i64 476, !35, i64 488, !35, i64 500, !35, i64 512, !35, i64 524, !35, i64 536, !35, i64 548, !35, i64 560, !35, i64 576, !35, i64 592, !35, i64 604, !56, i64 616, !56, i64 620, !35, i64 624, !35, i64 688, !35, i64 752, !35, i64 816, !35, i64 880, !41, i64 944, !48, i64 948, !48, i64 950, !48, i64 952, !48, i64 954, !48, i64 956, !48, i64 958, !48, i64 960, !48, i64 962, !48, i64 964, !35, i64 966, !35, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !56, i64 988, !56, i64 992, !56, i64 996, !56, i64 1000, !56, i64 1004, !56, i64 1008, !56, i64 1012, !56, i64 1016, !56, i64 1020, !56, i64 1024, !56, i64 1028, !56, i64 1032, !48, i64 1036, !48, i64 1038, !48, i64 1040, !35, i64 1042, !35, i64 1043, !48, i64 1044, !35, i64 1046, !35, i64 1047, !56, i64 1048, !56, i64 1052, !49, i64 1056, !49, i64 1072, !49, i64 1088, !49, i64 1104, !56, i64 1120, !48, i64 1124, !48, i64 1126, !35, i64 1128, !41, i64 1144, !41, i64 1148, !38, i64 1152, !35, i64 1160, !35, i64 1161, !48, i64 1162, !35, i64 1164, !49, i64 1176, !49, i64 1192, !49, i64 1208, !49, i64 1224, !38, i64 1240, !38, i64 1248, !38, i64 1256, !35, i64 1264, !35, i64 1265, !48, i64 1266, !56, i64 1268, !38, i64 1272, !38, i64 1280, !38, i64 1288, !38, i64 1296, !76, i64 1304, !76, i64 1312, !41, i64 1320, !41, i64 1324, !49, i64 1328, !49, i64 1344, !38, i64 1360, !38, i64 1368, !38, i64 1376, !35, i64 1384, !38, i64 1392, !49, i64 1400, !38, i64 1416}
!97 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !48, i64 16, !48, i64 18, !48, i64 20, !48, i64 22, !48, i64 24, !48, i64 26, !48, i64 28, !48, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!98 = !{!96, !38, i64 288}
!99 = distinct !{!99, !44}
!100 = !{!101, !48, i64 24}
!101 = !{!"bConstraint", !38, i64 0, !38, i64 8, !38, i64 16, !48, i64 24, !48, i64 26, !35, i64 28, !35, i64 29, !35, i64 30, !48, i64 94, !56, i64 96, !56, i64 100, !38, i64 104, !56, i64 112, !56, i64 116}
!102 = !{!101, !38, i64 16}
!103 = !{!104, !38, i64 0}
!104 = !{!"bPythonConstraint", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !49, i64 24, !38, i64 40, !35, i64 48}
!105 = distinct !{!105, !44}
!106 = distinct !{!106, !44}
!107 = distinct !{!107, !44}
!108 = !{!109, !38, i64 768}
!109 = !{!"Material", !47, i64 0, !38, i64 120, !48, i64 128, !48, i64 130, !56, i64 132, !56, i64 136, !56, i64 140, !56, i64 144, !56, i64 148, !56, i64 152, !56, i64 156, !56, i64 160, !56, i64 164, !56, i64 168, !56, i64 172, !56, i64 176, !56, i64 180, !56, i64 184, !56, i64 188, !56, i64 192, !56, i64 196, !56, i64 200, !56, i64 204, !56, i64 208, !56, i64 212, !56, i64 216, !56, i64 220, !110, i64 224, !111, i64 312, !56, i64 328, !56, i64 332, !56, i64 336, !56, i64 340, !56, i64 344, !56, i64 348, !56, i64 352, !48, i64 356, !48, i64 358, !48, i64 360, !35, i64 362, !35, i64 363, !56, i64 364, !56, i64 368, !48, i64 372, !48, i64 374, !56, i64 376, !56, i64 380, !56, i64 384, !56, i64 388, !48, i64 392, !48, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !48, i64 412, !48, i64 414, !48, i64 416, !48, i64 418, !56, i64 420, !56, i64 424, !56, i64 428, !56, i64 432, !56, i64 436, !56, i64 440, !56, i64 444, !56, i64 448, !56, i64 452, !56, i64 456, !35, i64 460, !56, i64 524, !56, i64 528, !56, i64 532, !41, i64 536, !35, i64 540, !35, i64 541, !35, i64 542, !35, i64 543, !48, i64 544, !48, i64 546, !48, i64 548, !35, i64 550, !35, i64 551, !48, i64 552, !48, i64 554, !56, i64 556, !56, i64 560, !35, i64 564, !56, i64 580, !56, i64 584, !48, i64 588, !48, i64 590, !38, i64 592, !38, i64 600, !35, i64 608, !35, i64 609, !35, i64 610, !35, i64 611, !48, i64 612, !48, i64 614, !56, i64 616, !56, i64 620, !35, i64 624, !38, i64 768, !38, i64 776, !38, i64 784, !38, i64 792, !56, i64 800, !56, i64 804, !56, i64 808, !56, i64 812, !56, i64 816, !48, i64 820, !48, i64 822, !35, i64 824, !35, i64 836, !56, i64 848, !56, i64 852, !56, i64 856, !56, i64 860, !56, i64 864, !56, i64 868, !56, i64 872, !48, i64 876, !48, i64 878, !41, i64 880, !48, i64 884, !48, i64 886, !35, i64 888, !48, i64 904, !48, i64 906, !48, i64 908, !48, i64 910, !48, i64 912, !35, i64 914, !38, i64 920, !49, i64 928}
!110 = !{!"VolumeSettings", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !35, i64 16, !35, i64 28, !35, i64 40, !56, i64 52, !56, i64 56, !56, i64 60, !48, i64 64, !48, i64 66, !48, i64 68, !48, i64 70, !56, i64 72, !56, i64 76, !56, i64 80, !56, i64 84}
!111 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!112 = !{!113, !48, i64 172}
!113 = !{!"bNode", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !35, i64 40, !35, i64 104, !41, i64 168, !48, i64 172, !48, i64 174, !48, i64 176, !48, i64 178, !48, i64 180, !48, i64 182, !48, i64 184, !48, i64 186, !35, i64 188, !49, i64 200, !49, i64 216, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !49, i64 264, !56, i64 280, !56, i64 284, !56, i64 288, !56, i64 292, !56, i64 296, !56, i64 300, !56, i64 304, !41, i64 308, !35, i64 312, !48, i64 376, !48, i64 378, !56, i64 380, !56, i64 384, !48, i64 388, !48, i64 390, !38, i64 392, !114, i64 400, !114, i64 416, !114, i64 432, !48, i64 448, !48, i64 450, !41, i64 452, !38, i64 456}
!114 = !{!"rctf", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!115 = !{!113, !38, i64 240}
!116 = distinct !{!116, !44}
!117 = distinct !{!117, !44}
!118 = distinct !{!118, !44}
!119 = distinct !{!119, !44}
!120 = distinct !{!120, !44}
!121 = distinct !{!121, !44}
!122 = !{!123, !41, i64 32}
!123 = !{!"SpaceLink", !38, i64 0, !38, i64 8, !49, i64 16, !41, i64 32, !56, i64 36, !35, i64 40}
!124 = !{!125, !38, i64 56}
!125 = !{!"SpaceText", !38, i64 0, !38, i64 8, !49, i64 16, !41, i64 32, !56, i64 36, !35, i64 40, !38, i64 56, !41, i64 64, !41, i64 68, !48, i64 72, !48, i64 74, !48, i64 76, !35, i64 78, !35, i64 79, !41, i64 80, !41, i64 84, !41, i64 88, !48, i64 92, !48, i64 94, !48, i64 96, !48, i64 98, !56, i64 100, !126, i64 104, !126, i64 120, !41, i64 136, !41, i64 140, !35, i64 144, !35, i64 400, !48, i64 656, !48, i64 658, !35, i64 660, !38, i64 664, !35, i64 672}
!126 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!127 = !{!125, !41, i64 64}
!128 = distinct !{!128, !44}
!129 = distinct !{!129, !44}
!130 = distinct !{!130, !44}
!131 = !{!132, !38, i64 16}
!132 = !{!"FreestyleModuleConfig", !38, i64 0, !38, i64 8, !38, i64 16, !48, i64 24, !35, i64 26}
!133 = distinct !{!133, !44}
!134 = !{i32 0, i32 256}
!135 = !{!46, !38, i64 144}
!136 = !{!"text.c:txt_delete_sel"}
!137 = !{i8 0, i8 2}
!138 = !{!40, !38, i64 8}
!139 = distinct !{!139, !44}
!140 = !{!40, !38, i64 0}
!141 = !{!"text.c:txt_make_dirty"}
!142 = !{!76, !76, i64 0}
!143 = distinct !{!143, !44}
!144 = distinct !{!144, !44}
!145 = distinct !{!145, !44}
!146 = !{!41, !41, i64 0}
!147 = !{!75, !41, i64 24}
!148 = distinct !{!148, !44}
!149 = distinct !{!149, !44}
!150 = !{!"text.c:txt_new_line"}
!151 = distinct !{!151, !44}
!152 = distinct !{!152, !44}
!153 = distinct !{!153, !44}
!154 = distinct !{!154, !44}
!155 = distinct !{!155, !44}
!156 = distinct !{!156, !44}
!157 = !{!"text.c:txt_curs_sel"}
!158 = !{!"text.c:txt_pop_first"}
!159 = !{!"text.c:txt_curs_cur"}
!160 = !{!"text.c:txt_pop_last"}
!161 = distinct !{!161, !44}
!162 = distinct !{!162, !44}
!163 = distinct !{!163, !44}
!164 = distinct !{!164, !44}
!165 = !{!"text.c:txt_curs_swap"}
!166 = distinct !{!166, !44}
!167 = distinct !{!167, !44}
!168 = distinct !{!168, !44}
!169 = distinct !{!169, !44}
!170 = distinct !{!170, !44}
!171 = !{!"text.c:txt_undo_add_blockop"}
!172 = !{!"text.c:txt_new_linen"}
!173 = !{!"text.c:max_undo_test"}
!174 = distinct !{!174, !44}
!175 = !{!"text.c:txt_undo_store_cursors"}
!176 = !{!48, !48, i64 0}
!177 = distinct !{!177, !44}
!178 = distinct !{!178, !44}
!179 = distinct !{!179, !44}
!180 = !{!"text.c:txt_undo_read_cur"}
!181 = !{!"text.c:txt_undo_read_unicode"}
!182 = !{!"text.c:txt_undo_read_uint32"}
!183 = !{!"text.c:txt_undo_read_cursors"}
!184 = distinct !{!184, !44}
!185 = distinct !{!185, !44}
!186 = distinct !{!186, !44}
!187 = distinct !{!187, !44}
!188 = distinct !{!188, !44}
!189 = !{!"text.c:txt_delete_line"}
!190 = !{!"text.c:txt_redo_read_cur"}
!191 = !{!"text.c:txt_redo_read_unicode"}
!192 = !{!"text.c:txt_redo_read_cursors"}
!193 = !{!"text.c:txt_redo_read_uint32"}
!194 = !{!"text.c:txt_undo_add_charop"}
!195 = distinct !{!195, !44}
!196 = !{!"text.c:txt_combine_lines"}
!197 = !{!"text.c:txt_add_char_intern"}
!198 = !{!"text.c:make_new_line"}
!199 = distinct !{!199, !44}
!200 = distinct !{!200, !44}
!201 = distinct !{!201, !44}
!202 = distinct !{!202, !44}
!203 = distinct !{!203, !44}
!204 = distinct !{!204, !44}
!205 = !{!"text.c:cleanup_textline"}
!206 = distinct !{!206, !44}
!207 = !{!"text.c:txt_undo_store_uint32"}
!208 = !{!"text.c:txt_undo_store_cur"}
!209 = !{!"text.c:txt_undo_store_sel"}
!210 = !{!"text.c:txt_undo_store_uint16"}
!211 = !{!"text.c:txt_undo_read_uint16"}
!212 = !{!"text.c:txt_undo_read_sel"}
!213 = !{!"text.c:txt_redo_read_uint16"}
!214 = !{!"text.c:txt_redo_read_sel"}
!215 = !{!"text.c:txt_convert_tab_to_spaces"}
