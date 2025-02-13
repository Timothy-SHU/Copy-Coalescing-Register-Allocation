; ModuleID = 'blender/source/blender/blenkernel/intern/context.c'
source_filename = "blender/source/blender/blenkernel/intern/context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.StructRNA = type opaque
%struct.ListBase = type { ptr, ptr }
%struct.bContextStore = type { ptr, ptr, %struct.ListBase, i8 }
%struct.bContextStoreEntry = type { ptr, ptr, [128 x i8], %struct.PointerRNA }
%struct.bContext = type { i32, %struct.anon.0, %struct.anon.1 }
%struct.anon.0 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.1 = type { ptr, ptr, i32, i32, ptr }
%struct.bContextDataResult = type { %struct.PointerRNA, %struct.ListBase, ptr, i16 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
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

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"bContext\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"bContextStore\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"bContextStoreEntry\00", align 1
@PointerRNA_NULL = external local_unnamed_addr constant %struct.PointerRNA, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"%s: warning, member '%s' is '%s', not '%s'\0A\00", align 1
@__func__.CTX_data_pointer_get_type = private unnamed_addr constant [26 x i8] c"CTX_data_pointer_get_type\00", align 1
@RNA_Context = external global %struct.StructRNA, align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"CTX_data_id_list_add\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"CTX_data_list_add\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"blend_data\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@data_mode_strings = internal unnamed_addr constant [15 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr null], align 16
@.str.13 = private unnamed_addr constant [15 x i8] c"selected_nodes\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"selected_editable_objects\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"selected_editable_bases\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"selected_objects\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"selected_bases\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"visible_objects\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"visible_bases\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"selectable_objects\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"selectable_bases\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"active_object\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"active_base\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"edit_object\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"edit_image\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"edit_text\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"edit_movieclip\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"edit_mask\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"active_bone\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"selected_bones\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"selected_editable_bones\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"visible_bones\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"editable_bones\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"active_pose_bone\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"selected_pose_bones\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"visible_pose_bones\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"LinkData\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"mesh_edit\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"curve_edit\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"surface_edit\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"text_edit\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"armature_edit\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"mball_edit\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"lattice_edit\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"posemode\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"sculpt_mode\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"weightpaint\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"vertexpaint\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"imagepaint\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"particlemode\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"objectmode\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_create() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 104, ptr noundef nonnull @.str) #12
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CTX_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_store_add(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bContextStore, ptr %5, i64 0, i32 3
  %9 = load i8, ptr %8, align 8, !tbaa !40
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %13 = tail call ptr %12(ptr noundef nonnull %5) #12
  %14 = getelementptr inbounds %struct.bContextStore, ptr %13, i64 0, i32 2
  %15 = getelementptr inbounds %struct.bContextStore, ptr %5, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %14, ptr noundef nonnull %15) #12
  br label %19

16:                                               ; preds = %3
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %18 = tail call ptr %17(i64 noundef 40, ptr noundef nonnull @.str.1) #12
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi ptr [ %13, %11 ], [ %18, %16 ]
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %20) #12
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi ptr [ %20, %19 ], [ %5, %7 ]
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %24 = tail call ptr %23(i64 noundef 168, ptr noundef nonnull @.str.2) #12
  %25 = getelementptr inbounds %struct.bContextStoreEntry, ptr %24, i64 0, i32 2
  %26 = tail call ptr @BLI_strncpy(ptr noundef nonnull %25, ptr noundef %1, i64 noundef 128) #12
  %27 = getelementptr inbounds %struct.bContextStoreEntry, ptr %24, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !42
  %28 = getelementptr inbounds %struct.bContextStore, ptr %22, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %28, ptr noundef %24) #12
  ret ptr %22
}

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_store_add_all(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bContextStore, ptr %4, i64 0, i32 3
  %8 = load i8, ptr %7, align 8, !tbaa !40
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %12 = tail call ptr %11(ptr noundef nonnull %4) #12
  %13 = getelementptr inbounds %struct.bContextStore, ptr %12, i64 0, i32 2
  %14 = getelementptr inbounds %struct.bContextStore, ptr %4, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %13, ptr noundef nonnull %14) #12
  br label %18

15:                                               ; preds = %2
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %17 = tail call ptr %16(i64 noundef 40, ptr noundef nonnull @.str.1) #12
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi ptr [ %12, %10 ], [ %17, %15 ]
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %19) #12
  br label %20

20:                                               ; preds = %18, %6
  %21 = phi ptr [ %19, %18 ], [ %4, %6 ]
  %22 = getelementptr inbounds %struct.bContextStore, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bContextStore, ptr %21, i64 0, i32 2
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi ptr [ %23, %25 ], [ %31, %27 ]
  %29 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %30 = tail call ptr %29(ptr noundef nonnull %28) #12
  tail call void @BLI_addtail(ptr noundef nonnull %26, ptr noundef %30) #12
  %31 = load ptr, ptr %28, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %27, !llvm.loop !43

33:                                               ; preds = %27, %20
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CTX_store_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_store_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.bContextStore, ptr %3, i64 0, i32 2
  %5 = getelementptr inbounds %struct.bContextStore, ptr %0, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CTX_store_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContextStore, ptr %0, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #12
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %3(ptr noundef %0) #12
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CTX_store_free_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call void @CTX_store_free(ptr noundef nonnull %5) #13
  %6 = tail call ptr @BLI_pophead(ptr noundef %0) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !50

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @CTX_py_init_get(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !51
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CTX_py_init_set(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2, i32 3
  store i32 %1, ptr %3, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @CTX_py_dict_get(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CTX_py_dict_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CTX_data_pointer_get(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  %5 = call fastcc i32 @ctx_data_get(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #13
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !42
  br label %9

8:                                                ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @PointerRNA_NULL, i64 24, i1 false), !tbaa.struct !42
  br label %9

9:                                                ; preds = %8, %7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !53 {
  %4 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %6 = tail call i32 @BLI_thread_is_main() #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %81, label %8

8:                                                ; preds = %3
  %9 = icmp slt i32 %5, 1
  br i1 %9, label %10, label %20

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  store i32 1, ptr %4, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.bContextStore, ptr %12, i64 0, i32 2
  %16 = tail call ptr @BLI_rfindstring(ptr noundef nonnull %15, ptr noundef %1, i32 noundef 16) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bContextStoreEntry, ptr %16, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %19, i64 24, i1 false), !tbaa.struct !42
  br label %79

20:                                               ; preds = %8
  %21 = icmp eq i32 %5, 1
  br i1 %21, label %22, label %35

22:                                               ; preds = %10, %14, %20
  %23 = tail call ptr @CTX_wm_region(ptr noundef nonnull %0) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  store i32 2, ptr %4, align 8, !tbaa !54
  %26 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !55
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ARegionType, ptr %27, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !62
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 %31(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) #12
  br label %35

35:                                               ; preds = %33, %25, %29, %22, %20
  %36 = phi i32 [ 0, %29 ], [ 0, %25 ], [ 0, %22 ], [ 0, %20 ], [ %34, %33 ]
  %37 = icmp ne i32 %36, 1
  %38 = icmp slt i32 %5, 3
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = tail call ptr @CTX_wm_area(ptr noundef nonnull %0) #13
  %42 = icmp eq ptr %41, null
  br i1 %42, label %59, label %43

43:                                               ; preds = %40
  store i32 3, ptr %4, align 8, !tbaa !54
  %44 = getelementptr inbounds %struct.ScrArea, ptr %41, i64 0, i32 18
  %45 = load ptr, ptr %44, align 8, !tbaa !64
  %46 = icmp eq ptr %45, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.SpaceType, ptr %45, i64 0, i32 15
  %49 = load ptr, ptr %48, align 8, !tbaa !66
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = tail call i32 %49(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) #12
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = sub nsw i32 0, %52
  %56 = sub nsw i32 0, %36
  %57 = or i32 %55, %56
  %58 = sub nsw i32 0, %57
  br label %59

59:                                               ; preds = %43, %47, %54, %51, %40, %35
  %60 = phi i32 [ %58, %54 ], [ %36, %51 ], [ %36, %47 ], [ %36, %43 ], [ %36, %40 ], [ %36, %35 ]
  %61 = icmp ne i32 %60, 1
  %62 = icmp slt i32 %5, 4
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = tail call ptr @CTX_wm_screen(ptr noundef nonnull %0) #13
  %66 = icmp eq ptr %65, null
  br i1 %66, label %79, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.bScreen, ptr %65, i64 0, i32 22
  %69 = load ptr, ptr %68, align 8, !tbaa !68
  store i32 4, ptr %4, align 8, !tbaa !54
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = tail call i32 %69(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) #12
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = sub nsw i32 0, %72
  %76 = sub nsw i32 0, %60
  %77 = or i32 %75, %76
  %78 = sub nsw i32 0, %77
  br label %79

79:                                               ; preds = %18, %67, %74, %71, %64, %59
  %80 = phi i32 [ %60, %64 ], [ %60, %59 ], [ %78, %74 ], [ %60, %71 ], [ %60, %67 ], [ 1, %18 ]
  store i32 %5, ptr %4, align 8, !tbaa !54
  br label %81

81:                                               ; preds = %3, %79
  %82 = phi i32 [ %80, %79 ], [ 0, %3 ]
  ret i32 %82
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CTX_data_pointer_get_type(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %1, ptr noundef %2) #13
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  %12 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %11, ptr noundef %3) #12
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !42
  br label %20

15:                                               ; preds = %9
  %16 = tail call ptr @RNA_struct_identifier(ptr noundef %11) #12
  %17 = tail call ptr @RNA_struct_identifier(ptr noundef %3) #12
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @__func__.CTX_data_pointer_get_type, ptr noundef %2, ptr noundef %16, ptr noundef %17) #13
  br label %19

19:                                               ; preds = %15, %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @PointerRNA_NULL, i64 24, i1 false), !tbaa.struct !42
  br label %20

20:                                               ; preds = %19, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @RNA_struct_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { ptr, ptr } @CTX_data_collection_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  %4 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #13
  %5 = icmp eq i32 %4, 1
  %6 = getelementptr inbounds %struct.bContextDataResult, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.bContextDataResult, ptr %3, i64 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = select i1 %5, ptr %9, ptr null
  %11 = select i1 %5, ptr %7, ptr null
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #14
  %12 = insertvalue { ptr, ptr } poison, ptr %11, 0
  %13 = insertvalue { ptr, ptr } %12, ptr %10, 1
  ret { ptr, ptr } %13
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @CTX_data_get(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #14
  %7 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #13
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !42
  %10 = getelementptr inbounds %struct.bContextDataResult, ptr %6, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !75
  %11 = getelementptr inbounds %struct.bContextDataResult, ptr %6, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !76
  br label %14

13:                                               ; preds = %5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i16 [ 0, %13 ], [ %12, %9 ]
  store i16 %15, ptr %4, align 2, !tbaa !78
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #14
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { ptr, ptr } @CTX_data_dir_get_ex(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.bContextDataResult, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.CollectionPropertyIterator, align 8
  %11 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %12 = icmp eq i8 %2, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #14
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_Context, ptr noundef %0, ptr noundef nonnull %9) #12
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  %16 = call ptr @RNA_struct_iterator_property(ptr noundef %15) #12
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %10) #14
  call void @RNA_property_collection_begin(ptr noundef nonnull %9, ptr noundef %16, ptr noundef nonnull %10) #12
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %10, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !79
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %10, i64 0, i32 6
  br label %22

22:                                               ; preds = %20, %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false), !tbaa.struct !42
  %23 = call ptr @RNA_struct_name_get_alloc(ptr noundef nonnull %11, ptr noundef nonnull %7, i32 noundef 256, ptr noundef nonnull %8) #12
  call fastcc void @data_dir_add(ptr noundef nonnull %5, ptr noundef nonnull %7, i8 noundef zeroext %3) #13
  %24 = icmp ne ptr %23, null
  %25 = icmp ne ptr %7, %23
  %26 = and i1 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %28(ptr noundef nonnull %23) #12
  br label %29

29:                                               ; preds = %27, %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #14
  call void @RNA_property_collection_next(ptr noundef nonnull %10) #12
  %30 = load i32, ptr %17, align 8, !tbaa !79
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %22, !llvm.loop !81

32:                                               ; preds = %29, %13
  call void @RNA_property_collection_end(ptr noundef nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #14
  br label %33

33:                                               ; preds = %32, %4
  %34 = icmp eq i8 %1, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.bContextStore, ptr %37, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %39, %43
  %44 = phi ptr [ %46, %43 ], [ %41, %39 ]
  %45 = getelementptr inbounds %struct.bContextStoreEntry, ptr %44, i64 0, i32 2
  call fastcc void @data_dir_add(ptr noundef nonnull %5, ptr noundef nonnull %45, i8 noundef zeroext %3) #13
  %46 = load ptr, ptr %44, align 8, !tbaa !34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %43, !llvm.loop !82

48:                                               ; preds = %43, %39, %35, %33
  %49 = call ptr @CTX_wm_region(ptr noundef %0) #13
  %50 = icmp eq ptr %49, null
  br i1 %50, label %75, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.ARegion, ptr %49, i64 0, i32 20
  %53 = load ptr, ptr %52, align 8, !tbaa !55
  %54 = icmp eq ptr %53, null
  br i1 %54, label %75, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ARegionType, ptr %53, i64 0, i32 12
  %57 = load ptr, ptr %56, align 8, !tbaa !62
  %58 = icmp eq ptr %57, null
  br i1 %58, label %75, label %59

59:                                               ; preds = %55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %60 = call i32 %57(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %6) #12
  %61 = getelementptr inbounds %struct.bContextDataResult, ptr %6, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !83
  %63 = icmp eq ptr %62, null
  br i1 %63, label %75, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %62, align 8, !tbaa !34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %64, %67
  %68 = phi i64 [ %70, %67 ], [ 0, %64 ]
  %69 = phi ptr [ %73, %67 ], [ %65, %64 ]
  call fastcc void @data_dir_add(ptr noundef nonnull %5, ptr noundef nonnull %69, i8 noundef zeroext %3) #13
  %70 = add nuw i64 %68, 1
  %71 = load ptr, ptr %61, align 8, !tbaa !83
  %72 = getelementptr inbounds ptr, ptr %71, i64 %70
  %73 = load ptr, ptr %72, align 8, !tbaa !34
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %67, !llvm.loop !84

75:                                               ; preds = %67, %64, %59, %55, %51, %48
  %76 = call ptr @CTX_wm_area(ptr noundef %0) #13
  %77 = icmp eq ptr %76, null
  br i1 %77, label %102, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.ScrArea, ptr %76, i64 0, i32 18
  %80 = load ptr, ptr %79, align 8, !tbaa !64
  %81 = icmp eq ptr %80, null
  br i1 %81, label %102, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.SpaceType, ptr %80, i64 0, i32 15
  %84 = load ptr, ptr %83, align 8, !tbaa !66
  %85 = icmp eq ptr %84, null
  br i1 %85, label %102, label %86

86:                                               ; preds = %82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %87 = call i32 %84(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %6) #12
  %88 = getelementptr inbounds %struct.bContextDataResult, ptr %6, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !83
  %90 = icmp eq ptr %89, null
  br i1 %90, label %102, label %91

91:                                               ; preds = %86
  %92 = load ptr, ptr %89, align 8, !tbaa !34
  %93 = icmp eq ptr %92, null
  br i1 %93, label %102, label %94

94:                                               ; preds = %91, %94
  %95 = phi i64 [ %97, %94 ], [ 0, %91 ]
  %96 = phi ptr [ %100, %94 ], [ %92, %91 ]
  call fastcc void @data_dir_add(ptr noundef nonnull %5, ptr noundef nonnull %96, i8 noundef zeroext %3) #13
  %97 = add nuw i64 %95, 1
  %98 = load ptr, ptr %88, align 8, !tbaa !83
  %99 = getelementptr inbounds ptr, ptr %98, i64 %97
  %100 = load ptr, ptr %99, align 8, !tbaa !34
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %94, !llvm.loop !85

102:                                              ; preds = %94, %91, %86, %82, %78, %75
  %103 = call ptr @CTX_wm_screen(ptr noundef %0) #13
  %104 = icmp eq ptr %103, null
  br i1 %104, label %125, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.bScreen, ptr %103, i64 0, i32 22
  %107 = load ptr, ptr %106, align 8, !tbaa !68
  %108 = icmp eq ptr %107, null
  br i1 %108, label %125, label %109

109:                                              ; preds = %105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %110 = call i32 %107(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %6) #12
  %111 = getelementptr inbounds %struct.bContextDataResult, ptr %6, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !83
  %113 = icmp eq ptr %112, null
  br i1 %113, label %125, label %114

114:                                              ; preds = %109
  %115 = load ptr, ptr %112, align 8, !tbaa !34
  %116 = icmp eq ptr %115, null
  br i1 %116, label %125, label %117

117:                                              ; preds = %114, %117
  %118 = phi i64 [ %120, %117 ], [ 0, %114 ]
  %119 = phi ptr [ %123, %117 ], [ %115, %114 ]
  call fastcc void @data_dir_add(ptr noundef nonnull %5, ptr noundef nonnull %119, i8 noundef zeroext %3) #13
  %120 = add nuw i64 %118, 1
  %121 = load ptr, ptr %111, align 8, !tbaa !83
  %122 = getelementptr inbounds ptr, ptr %121, i64 %120
  %123 = load ptr, ptr %122, align 8, !tbaa !34
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %117, !llvm.loop !86

125:                                              ; preds = %117, %114, %109, %105, %102
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #14
  %126 = load ptr, ptr %5, align 8
  %127 = insertvalue { ptr, ptr } poison, ptr %126, 0
  %128 = getelementptr inbounds { ptr, ptr }, ptr %5, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8
  %130 = insertvalue { ptr, ptr } %127, ptr %129, 1
  ret { ptr, ptr } %130
}

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_iterator_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_name_get_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @data_dir_add(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !87 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.12) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %5, %3
  %9 = tail call ptr @BLI_findstring(ptr noundef %0, ptr noundef %1, i32 noundef 16) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = tail call ptr %12(i64 noundef 24, ptr noundef nonnull @.str.37) #12
  %14 = getelementptr inbounds %struct.LinkData, ptr %13, i64 0, i32 2
  store ptr %1, ptr %14, align 8, !tbaa !88
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %13) #12
  br label %15

15:                                               ; preds = %8, %5, %11
  ret void
}

; Function Attrs: optsize
declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_region(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = tail call fastcc ptr @ctx_wm_python_context_get(ptr noundef %3) #13
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_area(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = tail call fastcc ptr @ctx_wm_python_context_get(ptr noundef %3) #13
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_screen(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = tail call fastcc ptr @ctx_wm_python_context_get(ptr noundef %3) #13
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local { ptr, ptr } @CTX_data_dir_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call { ptr, ptr } @CTX_data_dir_get_ex(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  ret { ptr, ptr } %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @CTX_data_equals(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #15
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @CTX_data_dir(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load i8, ptr %0, align 1, !tbaa !93
  %3 = icmp eq i8 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CTX_data_id_pointer_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @RNA_id_pointer_create(ptr noundef %1, ptr noundef %0) #12
  ret void
}

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CTX_data_pointer_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void @RNA_pointer_create(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CTX_data_id_list_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 40, ptr noundef nonnull @.str.5) #12
  %5 = getelementptr inbounds %struct.CollectionPointerLink, ptr %4, i64 0, i32 2
  tail call void @RNA_id_pointer_create(ptr noundef %1, ptr noundef nonnull %5) #12
  %6 = getelementptr inbounds %struct.bContextDataResult, ptr %0, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %4) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CTX_data_list_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 40, ptr noundef nonnull @.str.6) #12
  %7 = getelementptr inbounds %struct.CollectionPointerLink, ptr %6, i64 0, i32 2
  tail call void @RNA_pointer_create(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7) #12
  %8 = getelementptr inbounds %struct.bContextDataResult, ptr %0, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %6) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ctx_data_list_count(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %4 = call i32 %1(ptr noundef %0, ptr noundef nonnull %3) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = call i32 @BLI_countlist(ptr noundef nonnull %3) #12
  call void @BLI_freelistN(ptr noundef nonnull %3) #12
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret i32 %9
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CTX_data_dir_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContextDataResult, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CTX_data_type_set(ptr nocapture noundef writeonly %0, i16 noundef signext %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContextDataResult, ptr %0, i64 0, i32 3
  store i16 %1, ptr %3, align 8, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local signext i16 @CTX_data_type_get(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bContextDataResult, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !76
  ret i16 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @CTX_wm_manager(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_window(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = tail call fastcc ptr @ctx_wm_python_context_get(ptr noundef %3) #13
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ctx_wm_python_context_get(ptr noundef readnone %0) unnamed_addr #0 !PGOFuncName !96 {
  %2 = tail call i32 @BLI_thread_is_main() #12
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, ptr null, ptr %0
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_space_data(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !97
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_region_data(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @CTX_wm_menu(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @CTX_wm_reports(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 9
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_view3d(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_region_view3d(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %4 = icmp eq ptr %2, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %7 = load i8, ptr %6, align 8, !tbaa !100
  %8 = icmp eq i8 %7, 1
  %9 = icmp ne ptr %3, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 30
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  br label %14

14:                                               ; preds = %1, %5, %11
  %15 = phi ptr [ %13, %11 ], [ null, %5 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_space_text(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i8 %6, 9
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_space_console(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i8 %6, 18
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_space_image(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i8 %6, 6
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_space_buts(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i8 %6, 4
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_space_file(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i8 %6, 5
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_space_seq(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i8 %6, 8
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_space_outliner(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i8 %6, 3
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_space_nla(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i8 %6, 13
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_space_time(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i8 %6, 15
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_space_node(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i8 %6, 16
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_space_logic(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i8 %6, 17
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_space_graph(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_space_action(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i8 %6, 12
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_space_info(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i8 %6, 7
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_space_userpref(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i8 %6, 19
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_wm_space_clip(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !100
  %7 = icmp eq i8 %6, 20
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CTX_wm_manager_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !94
  %4 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CTX_wm_window_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !95
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 2
  store ptr null, ptr %6, align 8, !tbaa !92
  br label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !92
  %11 = icmp eq ptr %9, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.bScreen, ptr %9, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !103
  %15 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !104
  br label %16

16:                                               ; preds = %5, %12, %7
  %17 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @CTX_wm_screen_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !92
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !104
  br label %9

9:                                                ; preds = %5, %2
  %10 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CTX_wm_area_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 4
  store ptr null, ptr %4, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CTX_wm_region_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CTX_wm_menu_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CTX_wm_operator_poll_msg_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 7
  store ptr %1, ptr %3, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @CTX_wm_operator_poll_msg_get(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_data_main(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %3 = call fastcc i32 @ctx_data_pointer_verify(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %2) #13, !range !106
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2
  %6 = select i1 %4, ptr %5, ptr %2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ctx_data_pointer_verify(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !107 {
  %4 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  %5 = icmp eq ptr %0, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = call fastcc i32 @ctx_data_get(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4) #13
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !108
  br label %12

12:                                               ; preds = %6, %3, %9
  %13 = phi ptr [ %11, %9 ], [ null, %3 ], [ null, %6 ]
  %14 = phi i32 [ 1, %9 ], [ 1, %3 ], [ 0, %6 ]
  store ptr %13, ptr %2, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CTX_data_main_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_data_scene(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %3 = call fastcc i32 @ctx_data_pointer_verify(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %2) #13, !range !106
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2, i32 1
  %6 = select i1 %4, ptr %5, ptr %2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CTX_data_mode_enum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !110
  switch i16 %6, label %36 [
    i16 1, label %37
    i16 2, label %7
    i16 3, label %8
    i16 4, label %9
    i16 25, label %10
    i16 5, label %11
    i16 22, label %12
  ]

7:                                                ; preds = %4
  br label %37

8:                                                ; preds = %4
  br label %37

9:                                                ; preds = %4
  br label %37

10:                                               ; preds = %4
  br label %37

11:                                               ; preds = %4
  br label %37

12:                                               ; preds = %4
  br label %37

13:                                               ; preds = %1
  %14 = tail call ptr @CTX_data_active_object(ptr noundef %0) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %36, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 27
  %18 = load i32, ptr %17, align 8, !tbaa !114
  %19 = and i32 %18, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = and i32 %18, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = and i32 %18, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = and i32 %18, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = and i32 %18, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = and i32 %18, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %13, %4
  br label %37

37:                                               ; preds = %33, %30, %27, %24, %21, %16, %4, %36, %12, %11, %10, %9, %8, %7
  %38 = phi i32 [ 13, %36 ], [ 6, %12 ], [ 5, %11 ], [ 4, %10 ], [ 3, %9 ], [ 2, %8 ], [ 1, %7 ], [ 0, %4 ], [ 12, %33 ], [ 11, %30 ], [ 10, %27 ], [ 9, %24 ], [ 8, %21 ], [ 7, %16 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_data_edit_object(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @ctx_data_pointer_get(ptr noundef %0, ptr noundef nonnull @.str.24) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_data_active_object(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @ctx_data_pointer_get(ptr noundef %0, ptr noundef nonnull @.str.22) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_data_mode_string(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @CTX_data_mode_enum(ptr noundef %0) #13
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [15 x ptr], ptr @data_mode_strings, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CTX_data_scene_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !104
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_data_tool_settings(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CTX_data_selected_nodes(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @ctx_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %1) #13, !range !106
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @ctx_data_collection_get(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !132 {
  %4 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  %5 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #13
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bContextDataResult, ptr %4, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !75
  br label %10

9:                                                ; preds = %3
  call fastcc void @BLI_listbase_clear(ptr noundef %2) #13
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i32 [ 1, %7 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @ctx_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %1) #13, !range !106
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @ctx_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef %1) #13, !range !106
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CTX_data_selected_objects(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @ctx_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %1) #13, !range !106
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CTX_data_selected_bases(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @ctx_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef %1) #13, !range !106
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CTX_data_visible_objects(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @ctx_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %1) #13, !range !106
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CTX_data_visible_bases(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @ctx_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %1) #13, !range !106
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CTX_data_selectable_objects(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @ctx_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %1) #13, !range !106
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CTX_data_selectable_bases(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @ctx_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %1) #13, !range !106
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ctx_data_pointer_get(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !133 {
  %3 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = call fastcc i32 @ctx_data_get(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !108
  br label %11

11:                                               ; preds = %2, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #14
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_data_active_base(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @ctx_data_pointer_get(ptr noundef %0, ptr noundef nonnull @.str.23) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_data_edit_image(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @ctx_data_pointer_get(ptr noundef %0, ptr noundef nonnull @.str.25) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_data_edit_text(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @ctx_data_pointer_get(ptr noundef %0, ptr noundef nonnull @.str.26) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_data_edit_movieclip(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @ctx_data_pointer_get(ptr noundef %0, ptr noundef nonnull @.str.27) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_data_edit_mask(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @ctx_data_pointer_get(ptr noundef %0, ptr noundef nonnull @.str.28) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_data_active_bone(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @ctx_data_pointer_get(ptr noundef %0, ptr noundef nonnull @.str.29) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CTX_data_selected_bones(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @ctx_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %1) #13, !range !106
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @ctx_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %1) #13, !range !106
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CTX_data_visible_bones(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @ctx_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef %1) #13, !range !106
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CTX_data_editable_bones(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @ctx_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef %1) #13, !range !106
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @CTX_data_active_pose_bone(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @ctx_data_pointer_get(ptr noundef %0, ptr noundef nonnull @.str.34) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @ctx_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef %1) #13, !range !106
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @ctx_data_collection_get(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef %1) #13, !range !106
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @BLI_thread_is_main() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_rfindstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !134 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize willreturn memory(read) }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 8}
!39 = !{!"ListBase", !35, i64 0, !35, i64 8}
!40 = !{!41, !36, i64 32}
!41 = !{!"bContextStore", !35, i64 0, !35, i64 8, !39, i64 16, !36, i64 32}
!42 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!46, !35, i64 56}
!46 = !{!"bContext", !47, i64 0, !48, i64 8, !49, i64 72}
!47 = !{!"int", !36, i64 0}
!48 = !{!"", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56}
!49 = !{!"", !35, i64 0, !35, i64 8, !47, i64 16, !47, i64 20, !35, i64 24}
!50 = distinct !{!50, !44}
!51 = !{!46, !47, i64 92}
!52 = !{!46, !35, i64 96}
!53 = !{!"context.c:ctx_data_get"}
!54 = !{!46, !47, i64 88}
!55 = !{!56, !35, i64 240}
!56 = !{!"ARegion", !35, i64 0, !35, i64 8, !57, i64 16, !60, i64 176, !60, i64 192, !61, i64 208, !61, i64 210, !61, i64 212, !61, i64 214, !61, i64 216, !61, i64 218, !59, i64 220, !61, i64 224, !61, i64 226, !61, i64 228, !61, i64 230, !61, i64 232, !61, i64 234, !61, i64 236, !61, i64 238, !35, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!57 = !{!"View2D", !58, i64 0, !58, i64 16, !60, i64 32, !60, i64 48, !60, i64 64, !36, i64 80, !36, i64 88, !59, i64 96, !59, i64 100, !61, i64 104, !61, i64 106, !61, i64 108, !61, i64 110, !61, i64 112, !61, i64 114, !61, i64 116, !61, i64 118, !61, i64 120, !61, i64 122, !61, i64 124, !61, i64 126, !35, i64 128, !47, i64 136, !47, i64 140, !35, i64 144, !35, i64 152}
!58 = !{!"rctf", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12}
!59 = !{!"float", !36, i64 0}
!60 = !{!"rcti", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!61 = !{!"short", !36, i64 0}
!62 = !{!63, !35, i64 96}
!63 = !{!"ARegionType", !35, i64 0, !35, i64 8, !47, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !39, i64 104, !39, i64 120, !39, i64 136, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !61, i64 172, !61, i64 174, !61, i64 176}
!64 = !{!65, !35, i64 88}
!65 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !60, i64 56, !36, i64 72, !36, i64 73, !61, i64 74, !61, i64 76, !61, i64 78, !61, i64 80, !61, i64 82, !61, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!66 = !{!67, !35, i64 168}
!67 = !{!"SpaceType", !35, i64 0, !35, i64 8, !36, i64 16, !47, i64 80, !47, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !39, i64 176, !39, i64 192, !47, i64 208}
!68 = !{!69, !35, i64 240}
!69 = !{!"bScreen", !70, i64 0, !39, i64 120, !39, i64 136, !39, i64 152, !39, i64 168, !35, i64 184, !35, i64 192, !47, i64 200, !47, i64 204, !61, i64 208, !61, i64 210, !61, i64 212, !61, i64 214, !61, i64 216, !61, i64 218, !61, i64 220, !61, i64 222, !61, i64 224, !61, i64 226, !61, i64 228, !61, i64 230, !35, i64 232, !35, i64 240}
!70 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !61, i64 98, !47, i64 100, !47, i64 104, !47, i64 108, !35, i64 112}
!71 = !{!72, !35, i64 16}
!72 = !{!"PointerRNA", !73, i64 0, !35, i64 8, !35, i64 16}
!73 = !{!"", !35, i64 0}
!74 = !{!72, !35, i64 8}
!75 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!76 = !{!77, !61, i64 48}
!77 = !{!"bContextDataResult", !72, i64 0, !39, i64 24, !35, i64 40, !61, i64 48}
!78 = !{!61, !61, i64 0}
!79 = !{!80, !47, i64 128}
!80 = !{!"CollectionPropertyIterator", !72, i64 0, !72, i64 24, !35, i64 48, !36, i64 56, !47, i64 96, !47, i64 100, !72, i64 104, !47, i64 128}
!81 = distinct !{!81, !44}
!82 = distinct !{!82, !44}
!83 = !{!77, !35, i64 40}
!84 = distinct !{!84, !44}
!85 = distinct !{!85, !44}
!86 = distinct !{!86, !44}
!87 = !{!"context.c:data_dir_add"}
!88 = !{!89, !35, i64 16}
!89 = !{!"LinkData", !35, i64 0, !35, i64 8, !35, i64 16}
!90 = !{!46, !35, i64 40}
!91 = !{!46, !35, i64 32}
!92 = !{!46, !35, i64 24}
!93 = !{!36, !36, i64 0}
!94 = !{!46, !35, i64 8}
!95 = !{!46, !35, i64 16}
!96 = !{!"context.c:ctx_wm_python_context_get"}
!97 = !{!65, !35, i64 96}
!98 = !{!56, !35, i64 376}
!99 = !{!46, !35, i64 48}
!100 = !{!65, !36, i64 72}
!101 = !{!102, !35, i64 24}
!102 = !{!"wmWindow", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !61, i64 104, !61, i64 106, !61, i64 108, !61, i64 110, !61, i64 112, !61, i64 114, !61, i64 116, !61, i64 118, !61, i64 120, !61, i64 122, !61, i64 124, !61, i64 126, !47, i64 128, !61, i64 132, !61, i64 134, !35, i64 136, !35, i64 144, !35, i64 152, !47, i64 160, !47, i64 164, !35, i64 168, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 240}
!103 = !{!69, !35, i64 184}
!104 = !{!46, !35, i64 80}
!105 = !{!46, !35, i64 64}
!106 = !{i32 0, i32 2}
!107 = !{!"context.c:ctx_data_pointer_verify"}
!108 = !{!77, !35, i64 16}
!109 = !{!46, !35, i64 72}
!110 = !{!111, !61, i64 136}
!111 = !{!"Object", !70, i64 0, !35, i64 120, !35, i64 128, !61, i64 136, !61, i64 138, !47, i64 140, !47, i64 144, !47, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !112, i64 312, !35, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !47, i64 432, !47, i64 436, !35, i64 440, !35, i64 448, !47, i64 456, !47, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !59, i64 616, !59, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !47, i64 944, !61, i64 948, !61, i64 950, !61, i64 952, !61, i64 954, !61, i64 956, !61, i64 958, !61, i64 960, !61, i64 962, !61, i64 964, !36, i64 966, !36, i64 967, !47, i64 968, !47, i64 972, !47, i64 976, !47, i64 980, !47, i64 984, !59, i64 988, !59, i64 992, !59, i64 996, !59, i64 1000, !59, i64 1004, !59, i64 1008, !59, i64 1012, !59, i64 1016, !59, i64 1020, !59, i64 1024, !59, i64 1028, !59, i64 1032, !61, i64 1036, !61, i64 1038, !61, i64 1040, !36, i64 1042, !36, i64 1043, !61, i64 1044, !36, i64 1046, !36, i64 1047, !59, i64 1048, !59, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !59, i64 1120, !61, i64 1124, !61, i64 1126, !36, i64 1128, !47, i64 1144, !47, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !61, i64 1162, !36, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !61, i64 1266, !59, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !113, i64 1304, !113, i64 1312, !47, i64 1320, !47, i64 1324, !39, i64 1328, !39, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !39, i64 1400, !35, i64 1416}
!112 = !{!"bAnimVizSettings", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !61, i64 16, !61, i64 18, !61, i64 20, !61, i64 22, !61, i64 24, !61, i64 26, !61, i64 28, !61, i64 30, !47, i64 32, !47, i64 36, !47, i64 40, !47, i64 44}
!113 = !{!"long", !36, i64 0}
!114 = !{!111, !47, i64 432}
!115 = !{!116, !35, i64 264}
!116 = !{!"Scene", !70, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !39, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !47, i64 232, !47, i64 236, !47, i64 240, !61, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !117, i64 280, !124, i64 4264, !39, i64 4296, !39, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !61, i64 4376, !61, i64 4378, !47, i64 4380, !39, i64 4384, !125, i64 4400, !126, i64 4416, !129, i64 4600, !35, i64 4608, !130, i64 4616, !35, i64 4640, !113, i64 4648, !113, i64 4656, !119, i64 4664, !120, i64 4824, !131, i64 4888, !35, i64 4952}
!117 = !{!"RenderData", !118, i64 0, !35, i64 248, !35, i64 256, !121, i64 264, !122, i64 328, !47, i64 400, !47, i64 404, !47, i64 408, !59, i64 412, !47, i64 416, !47, i64 420, !47, i64 424, !47, i64 428, !61, i64 432, !61, i64 434, !59, i64 436, !59, i64 440, !59, i64 444, !59, i64 448, !59, i64 452, !61, i64 456, !61, i64 458, !61, i64 460, !61, i64 462, !61, i64 464, !61, i64 466, !47, i64 468, !61, i64 472, !61, i64 474, !61, i64 476, !61, i64 478, !61, i64 480, !61, i64 482, !47, i64 484, !47, i64 488, !61, i64 492, !61, i64 494, !47, i64 496, !47, i64 500, !61, i64 504, !61, i64 506, !61, i64 508, !61, i64 510, !61, i64 512, !36, i64 514, !36, i64 515, !47, i64 516, !47, i64 520, !47, i64 524, !61, i64 528, !61, i64 530, !61, i64 532, !61, i64 534, !61, i64 536, !61, i64 538, !61, i64 540, !61, i64 542, !58, i64 544, !58, i64 560, !60, i64 576, !39, i64 592, !61, i64 608, !61, i64 610, !59, i64 612, !59, i64 616, !59, i64 620, !59, i64 624, !47, i64 628, !59, i64 632, !59, i64 636, !59, i64 640, !59, i64 644, !61, i64 648, !61, i64 650, !61, i64 652, !61, i64 654, !61, i64 656, !61, i64 658, !59, i64 660, !59, i64 664, !61, i64 668, !61, i64 670, !59, i64 672, !59, i64 676, !36, i64 680, !47, i64 1704, !61, i64 1708, !61, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !47, i64 2520, !61, i64 2524, !61, i64 2526, !59, i64 2528, !59, i64 2532, !61, i64 2536, !61, i64 2538, !59, i64 2540, !61, i64 2544, !61, i64 2546, !47, i64 2548, !61, i64 2552, !61, i64 2554, !61, i64 2556, !61, i64 2558, !59, i64 2560, !59, i64 2564, !35, i64 2568, !47, i64 2576, !59, i64 2580, !36, i64 2584, !123, i64 2616, !47, i64 3976, !47, i64 3980}
!118 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !61, i64 8, !61, i64 10, !59, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !119, i64 24, !120, i64 184}
!119 = !{!"ColorManagedViewSettings", !47, i64 0, !47, i64 4, !36, i64 8, !36, i64 72, !59, i64 136, !59, i64 140, !35, i64 144, !35, i64 152}
!120 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!121 = !{!"QuicktimeCodecSettings", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !47, i64 40, !47, i64 44, !61, i64 48, !61, i64 50, !47, i64 52, !47, i64 56, !47, i64 60}
!122 = !{!"FFMpegCodecData", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !59, i64 32, !47, i64 36, !47, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !47, i64 56, !47, i64 60, !35, i64 64}
!123 = !{!"BakeData", !118, i64 0, !36, i64 248, !61, i64 1272, !61, i64 1274, !61, i64 1276, !61, i64 1278, !59, i64 1280, !59, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!124 = !{!"AudioData", !47, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !47, i64 16, !61, i64 20, !61, i64 22, !59, i64 24, !59, i64 28}
!125 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!126 = !{!"GameData", !125, i64 0, !61, i64 16, !61, i64 18, !61, i64 20, !61, i64 22, !61, i64 24, !61, i64 26, !61, i64 28, !61, i64 30, !61, i64 32, !36, i64 34, !127, i64 40, !61, i64 64, !61, i64 66, !59, i64 68, !128, i64 72, !59, i64 128, !59, i64 132, !47, i64 136, !61, i64 140, !61, i64 142, !61, i64 144, !61, i64 146, !61, i64 148, !61, i64 150, !61, i64 152, !61, i64 154, !61, i64 156, !61, i64 158, !61, i64 160, !61, i64 162, !59, i64 164, !59, i64 168, !59, i64 172, !59, i64 176, !59, i64 180}
!127 = !{!"GameDome", !61, i64 0, !61, i64 2, !61, i64 4, !61, i64 6, !59, i64 8, !59, i64 12, !35, i64 16}
!128 = !{!"RecastData", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !59, i64 36, !47, i64 40, !59, i64 44, !59, i64 48, !61, i64 52, !61, i64 54}
!129 = !{!"UnitSettings", !59, i64 0, !36, i64 4, !36, i64 5, !61, i64 6}
!130 = !{!"PhysicsSettings", !36, i64 0, !47, i64 12, !47, i64 16, !47, i64 20}
!131 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!132 = !{!"context.c:ctx_data_collection_get"}
!133 = !{!"context.c:ctx_data_pointer_get"}
!134 = !{!"context.c:BLI_listbase_clear"}
