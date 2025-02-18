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

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_create() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 104, ptr noundef nonnull @.str) #13
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #13
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @CTX_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
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
  %13 = tail call ptr %12(ptr noundef nonnull %5) #13
  %14 = getelementptr inbounds %struct.bContextStore, ptr %13, i64 0, i32 2
  %15 = getelementptr inbounds %struct.bContextStore, ptr %5, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %14, ptr noundef nonnull %15) #13
  br label %19

16:                                               ; preds = %3
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %18 = tail call ptr %17(i64 noundef 40, ptr noundef nonnull @.str.1) #13
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi ptr [ %13, %11 ], [ %18, %16 ]
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %20) #13
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi ptr [ %20, %19 ], [ %5, %7 ]
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %24 = tail call ptr %23(i64 noundef 168, ptr noundef nonnull @.str.2) #13
  %25 = getelementptr inbounds %struct.bContextStoreEntry, ptr %24, i64 0, i32 2
  %26 = tail call ptr @BLI_strncpy(ptr noundef nonnull %25, ptr noundef %1, i64 noundef 128) #13
  %27 = getelementptr inbounds %struct.bContextStoreEntry, ptr %24, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !42
  %28 = getelementptr inbounds %struct.bContextStore, ptr %22, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %28, ptr noundef %24) #13
  ret ptr %22
}

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
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
  %12 = tail call ptr %11(ptr noundef nonnull %4) #13
  %13 = getelementptr inbounds %struct.bContextStore, ptr %12, i64 0, i32 2
  %14 = getelementptr inbounds %struct.bContextStore, ptr %4, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %13, ptr noundef nonnull %14) #13
  br label %18

15:                                               ; preds = %2
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %17 = tail call ptr %16(i64 noundef 40, ptr noundef nonnull @.str.1) #13
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi ptr [ %12, %10 ], [ %17, %15 ]
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %19) #13
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
  %30 = tail call ptr %29(ptr noundef nonnull %28) #13
  tail call void @BLI_addtail(ptr noundef nonnull %26, ptr noundef %30) #13
  %31 = load ptr, ptr %28, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %27, !llvm.loop !43

33:                                               ; preds = %27, %20
  ret ptr %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CTX_store_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_store_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.bContextStore, ptr %3, i64 0, i32 2
  %5 = getelementptr inbounds %struct.bContextStore, ptr %0, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @CTX_store_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContextStore, ptr %0, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #13
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %3(ptr noundef %0) #13
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CTX_store_free_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %8, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.bContextStore, ptr %5, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %6) #13
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %7(ptr noundef nonnull %5) #13
  %8 = tail call ptr @BLI_pophead(ptr noundef %0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4, !llvm.loop !51

10:                                               ; preds = %4, %1
  ret void
}

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @CTX_py_init_get(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !52
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CTX_py_init_set(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2, i32 3
  store i32 %1, ptr %3, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @CTX_py_dict_get(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CTX_py_dict_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !53
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CTX_data_pointer_get(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #13
  %5 = call fastcc i32 @ctx_data_get(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !42
  br label %9

8:                                                ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @PointerRNA_NULL, i64 24, i1 false), !tbaa.struct !42
  br label %9

9:                                                ; preds = %8, %7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !54
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %6 = tail call i32 @BLI_thread_is_main() #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %96, label %8

8:                                                ; preds = %3
  %9 = icmp slt i32 %5, 1
  br i1 %9, label %10, label %20

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  store i32 1, ptr %4, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.bContextStore, ptr %12, i64 0, i32 2
  %16 = tail call ptr @BLI_rfindstring(ptr noundef nonnull %15, ptr noundef %1, i32 noundef 16) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bContextStoreEntry, ptr %16, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %19, i64 24, i1 false), !tbaa.struct !42
  br label %20

20:                                               ; preds = %14, %18, %10, %8
  %21 = phi i1 [ true, %10 ], [ true, %8 ], [ false, %18 ], [ true, %14 ]
  %22 = phi i32 [ 0, %10 ], [ 0, %8 ], [ 1, %18 ], [ 0, %14 ]
  %23 = icmp slt i32 %5, 2
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !55
  %28 = tail call i32 @BLI_thread_is_main() #13
  %29 = icmp eq i32 %28, 0
  %30 = icmp eq ptr %27, null
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %25
  store i32 2, ptr %4, align 8, !tbaa !54
  %33 = getelementptr inbounds %struct.ARegion, ptr %27, i64 0, i32 20
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ARegionType, ptr %34, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !63
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call i32 %38(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  br label %42

42:                                               ; preds = %40, %32, %36, %25, %20
  %43 = phi i32 [ 0, %36 ], [ 0, %32 ], [ 0, %25 ], [ %22, %20 ], [ %41, %40 ]
  %44 = icmp ne i32 %43, 1
  %45 = icmp slt i32 %5, 3
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %70

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !65
  %50 = tail call i32 @BLI_thread_is_main() #13
  %51 = icmp eq i32 %50, 0
  %52 = icmp eq ptr %49, null
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %70, label %54

54:                                               ; preds = %47
  store i32 3, ptr %4, align 8, !tbaa !54
  %55 = getelementptr inbounds %struct.ScrArea, ptr %49, i64 0, i32 18
  %56 = load ptr, ptr %55, align 8, !tbaa !66
  %57 = icmp eq ptr %56, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.SpaceType, ptr %56, i64 0, i32 15
  %60 = load ptr, ptr %59, align 8, !tbaa !68
  %61 = icmp eq ptr %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = tail call i32 %60(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = sub nsw i32 0, %63
  %67 = sub nsw i32 0, %43
  %68 = or i32 %66, %67
  %69 = sub nsw i32 0, %68
  br label %70

70:                                               ; preds = %54, %58, %65, %62, %47, %42
  %71 = phi i32 [ %69, %65 ], [ %43, %62 ], [ %43, %58 ], [ %43, %54 ], [ %43, %47 ], [ %43, %42 ]
  %72 = icmp ne i32 %71, 1
  %73 = icmp slt i32 %5, 4
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %75, label %94

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !70
  %78 = tail call i32 @BLI_thread_is_main() #13
  %79 = icmp eq i32 %78, 0
  %80 = icmp eq ptr %77, null
  %81 = select i1 %79, i1 true, i1 %80
  br i1 %81, label %94, label %82

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.bScreen, ptr %77, i64 0, i32 22
  %84 = load ptr, ptr %83, align 8, !tbaa !71
  store i32 4, ptr %4, align 8, !tbaa !54
  %85 = icmp eq ptr %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = tail call i32 %84(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = sub nsw i32 0, %87
  %91 = sub nsw i32 0, %71
  %92 = or i32 %90, %91
  %93 = sub nsw i32 0, %92
  br label %94

94:                                               ; preds = %82, %89, %86, %75, %70
  %95 = phi i32 [ %71, %75 ], [ %71, %70 ], [ %93, %89 ], [ %71, %86 ], [ %71, %82 ]
  store i32 %5, ptr %4, align 8, !tbaa !54
  br label %96

96:                                               ; preds = %3, %94
  %97 = phi i32 [ %95, %94 ], [ 0, %3 ]
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define dso_local void @CTX_data_pointer_get_type(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #13, !noalias !74
  %6 = call fastcc i32 @ctx_data_get(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5), !noalias !74
  %7 = icmp eq i32 %6, 1
  %8 = getelementptr inbounds i8, ptr %5, i64 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds i8, ptr %5, i64 16
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr getelementptr inbounds (%struct.PointerRNA, ptr @PointerRNA_NULL, i64 0, i32 1), align 8
  %13 = load ptr, ptr getelementptr inbounds (%struct.PointerRNA, ptr @PointerRNA_NULL, i64 0, i32 2), align 8
  %14 = select i1 %7, ptr %11, ptr %13
  %15 = select i1 %7, ptr %9, ptr %12
  %16 = load ptr, ptr %5, align 8
  %17 = load ptr, ptr @PointerRNA_NULL, align 8
  %18 = select i1 %7, ptr %16, ptr %17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #13, !noalias !74
  %19 = icmp eq ptr %14, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %4
  %21 = call zeroext i8 @RNA_struct_is_a(ptr noundef %15, ptr noundef %3) #13
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  store ptr %18, ptr %0, align 8, !tbaa.struct !42
  %24 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %15, ptr %24, align 8, !tbaa.struct !77
  %25 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %14, ptr %25, align 8, !tbaa.struct !78
  br label %31

26:                                               ; preds = %20
  %27 = call ptr @RNA_struct_identifier(ptr noundef %15) #13
  %28 = call ptr @RNA_struct_identifier(ptr noundef %3) #13
  %29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @__func__.CTX_data_pointer_get_type, ptr noundef %2, ptr noundef %27, ptr noundef %28)
  br label %30

30:                                               ; preds = %26, %4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @PointerRNA_NULL, i64 24, i1 false), !tbaa.struct !42
  br label %31

31:                                               ; preds = %30, %23
  ret void
}

declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare ptr @RNA_struct_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local { ptr, ptr } @CTX_data_collection_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  %4 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 1
  %6 = getelementptr inbounds %struct.bContextDataResult, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.bContextDataResult, ptr %3, i64 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = select i1 %5, ptr %9, ptr null
  %11 = select i1 %5, ptr %7, ptr null
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  %12 = insertvalue { ptr, ptr } poison, ptr %11, 0
  %13 = insertvalue { ptr, ptr } %12, ptr %10, 1
  ret { ptr, ptr } %13
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local i32 @CTX_data_get(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #13
  %7 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6)
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !42
  %10 = getelementptr inbounds %struct.bContextDataResult, ptr %6, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !77
  %11 = getelementptr inbounds %struct.bContextDataResult, ptr %6, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !79
  br label %14

13:                                               ; preds = %5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i16 [ 0, %13 ], [ %12, %9 ]
  store i16 %15, ptr %4, align 2, !tbaa !83
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #13
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local { ptr, ptr } @CTX_data_dir_get_ex(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.bContextDataResult, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca %struct.CollectionPropertyIterator, align 8
  %11 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %12 = icmp eq i8 %2, 0
  br i1 %12, label %45, label %13

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_Context, ptr noundef %0, ptr noundef nonnull %9) #13
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !84
  %16 = call ptr @RNA_struct_iterator_property(ptr noundef %15) #13
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %10) #13
  call void @RNA_property_collection_begin(ptr noundef nonnull %9, ptr noundef %16, ptr noundef nonnull %10) #13
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %10, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !85
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %10, i64 0, i32 6
  %22 = icmp eq i8 %3, 0
  br label %23

23:                                               ; preds = %20, %41
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false), !tbaa.struct !42
  %24 = call ptr @RNA_struct_name_get_alloc(ptr noundef nonnull %11, ptr noundef nonnull %7, i32 noundef 256, ptr noundef nonnull %8) #13
  br i1 %22, label %25, label %28

25:                                               ; preds = %23
  %26 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %7, ptr noundef nonnull dereferenceable(6) @.str.12, i64 6)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25, %23
  %29 = call ptr @BLI_findstring(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 16) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %33 = call ptr %32(i64 noundef 24, ptr noundef nonnull @.str.37) #13
  %34 = getelementptr inbounds %struct.LinkData, ptr %33, i64 0, i32 2
  store ptr %7, ptr %34, align 8, !tbaa !87
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %33) #13
  br label %35

35:                                               ; preds = %25, %28, %31
  %36 = icmp ne ptr %24, null
  %37 = icmp ne ptr %7, %24
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %40(ptr noundef nonnull %24) #13
  br label %41

41:                                               ; preds = %39, %35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #13
  call void @RNA_property_collection_next(ptr noundef nonnull %10) #13
  %42 = load i32, ptr %17, align 8, !tbaa !85
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %23, !llvm.loop !89

44:                                               ; preds = %41, %13
  call void @RNA_property_collection_end(ptr noundef nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #13
  br label %45

45:                                               ; preds = %44, %4
  %46 = icmp eq i8 %1, 0
  br i1 %46, label %73, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = icmp eq ptr %49, null
  br i1 %50, label %73, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.bContextStore, ptr %49, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = icmp eq ptr %53, null
  br i1 %54, label %73, label %55

55:                                               ; preds = %51
  %56 = icmp eq i8 %3, 0
  br label %57

57:                                               ; preds = %55, %70
  %58 = phi ptr [ %53, %55 ], [ %71, %70 ]
  %59 = getelementptr inbounds %struct.bContextStoreEntry, ptr %58, i64 0, i32 2
  br i1 %56, label %60, label %63

60:                                               ; preds = %57
  %61 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(6) @.str.12) #14
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %60, %57
  %64 = call ptr @BLI_findstring(ptr noundef nonnull %5, ptr noundef nonnull %59, i32 noundef 16) #13
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %68 = call ptr %67(i64 noundef 24, ptr noundef nonnull @.str.37) #13
  %69 = getelementptr inbounds %struct.LinkData, ptr %68, i64 0, i32 2
  store ptr %59, ptr %69, align 8, !tbaa !87
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %68) #13
  br label %70

70:                                               ; preds = %60, %63, %66
  %71 = load ptr, ptr %58, align 8, !tbaa !34
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %57, !llvm.loop !90

73:                                               ; preds = %70, %51, %47, %45
  %74 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !55
  %76 = call i32 @BLI_thread_is_main() #13
  %77 = icmp eq i32 %76, 0
  %78 = icmp eq ptr %75, null
  %79 = select i1 %77, i1 true, i1 %78
  br i1 %79, label %118, label %80

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.ARegion, ptr %75, i64 0, i32 20
  %82 = load ptr, ptr %81, align 8, !tbaa !56
  %83 = icmp eq ptr %82, null
  br i1 %83, label %118, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.ARegionType, ptr %82, i64 0, i32 12
  %86 = load ptr, ptr %85, align 8, !tbaa !63
  %87 = icmp eq ptr %86, null
  br i1 %87, label %118, label %88

88:                                               ; preds = %84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %89 = call i32 %86(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %6) #13
  %90 = getelementptr inbounds %struct.bContextDataResult, ptr %6, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !91
  %92 = icmp eq ptr %91, null
  br i1 %92, label %118, label %93

93:                                               ; preds = %88
  %94 = load ptr, ptr %90, align 8, !tbaa !91
  %95 = load ptr, ptr %94, align 8, !tbaa !34
  %96 = icmp eq ptr %95, null
  br i1 %96, label %118, label %97

97:                                               ; preds = %93
  %98 = icmp eq i8 %3, 0
  br label %99

99:                                               ; preds = %97, %112
  %100 = phi i64 [ 0, %97 ], [ %113, %112 ]
  %101 = phi ptr [ %95, %97 ], [ %116, %112 ]
  br i1 %98, label %102, label %105

102:                                              ; preds = %99
  %103 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %101, ptr noundef nonnull dereferenceable(6) @.str.12) #14
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %102, %99
  %106 = call ptr @BLI_findstring(ptr noundef nonnull %5, ptr noundef nonnull %101, i32 noundef 16) #13
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %110 = call ptr %109(i64 noundef 24, ptr noundef nonnull @.str.37) #13
  %111 = getelementptr inbounds %struct.LinkData, ptr %110, i64 0, i32 2
  store ptr %101, ptr %111, align 8, !tbaa !87
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %110) #13
  br label %112

112:                                              ; preds = %102, %105, %108
  %113 = add nuw i64 %100, 1
  %114 = load ptr, ptr %90, align 8, !tbaa !91
  %115 = getelementptr inbounds ptr, ptr %114, i64 %113
  %116 = load ptr, ptr %115, align 8, !tbaa !34
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %99, !llvm.loop !92

118:                                              ; preds = %112, %93, %88, %84, %80, %73
  %119 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !65
  %121 = call i32 @BLI_thread_is_main() #13
  %122 = icmp eq i32 %121, 0
  %123 = icmp eq ptr %120, null
  %124 = select i1 %122, i1 true, i1 %123
  br i1 %124, label %163, label %125

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.ScrArea, ptr %120, i64 0, i32 18
  %127 = load ptr, ptr %126, align 8, !tbaa !66
  %128 = icmp eq ptr %127, null
  br i1 %128, label %163, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.SpaceType, ptr %127, i64 0, i32 15
  %131 = load ptr, ptr %130, align 8, !tbaa !68
  %132 = icmp eq ptr %131, null
  br i1 %132, label %163, label %133

133:                                              ; preds = %129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %134 = call i32 %131(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %6) #13
  %135 = getelementptr inbounds %struct.bContextDataResult, ptr %6, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !91
  %137 = icmp eq ptr %136, null
  br i1 %137, label %163, label %138

138:                                              ; preds = %133
  %139 = load ptr, ptr %135, align 8, !tbaa !91
  %140 = load ptr, ptr %139, align 8, !tbaa !34
  %141 = icmp eq ptr %140, null
  br i1 %141, label %163, label %142

142:                                              ; preds = %138
  %143 = icmp eq i8 %3, 0
  br label %144

144:                                              ; preds = %142, %157
  %145 = phi i64 [ 0, %142 ], [ %158, %157 ]
  %146 = phi ptr [ %140, %142 ], [ %161, %157 ]
  br i1 %143, label %147, label %150

147:                                              ; preds = %144
  %148 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %146, ptr noundef nonnull dereferenceable(6) @.str.12) #14
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %147, %144
  %151 = call ptr @BLI_findstring(ptr noundef nonnull %5, ptr noundef nonnull %146, i32 noundef 16) #13
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %155 = call ptr %154(i64 noundef 24, ptr noundef nonnull @.str.37) #13
  %156 = getelementptr inbounds %struct.LinkData, ptr %155, i64 0, i32 2
  store ptr %146, ptr %156, align 8, !tbaa !87
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %155) #13
  br label %157

157:                                              ; preds = %147, %150, %153
  %158 = add nuw i64 %145, 1
  %159 = load ptr, ptr %135, align 8, !tbaa !91
  %160 = getelementptr inbounds ptr, ptr %159, i64 %158
  %161 = load ptr, ptr %160, align 8, !tbaa !34
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %144, !llvm.loop !93

163:                                              ; preds = %157, %138, %133, %129, %125, %118
  %164 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !70
  %166 = call i32 @BLI_thread_is_main() #13
  %167 = icmp eq i32 %166, 0
  %168 = icmp eq ptr %165, null
  %169 = select i1 %167, i1 true, i1 %168
  br i1 %169, label %204, label %170

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.bScreen, ptr %165, i64 0, i32 22
  %172 = load ptr, ptr %171, align 8, !tbaa !71
  %173 = icmp eq ptr %172, null
  br i1 %173, label %204, label %174

174:                                              ; preds = %170
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %175 = call i32 %172(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %6) #13
  %176 = getelementptr inbounds %struct.bContextDataResult, ptr %6, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !91
  %178 = icmp eq ptr %177, null
  br i1 %178, label %204, label %179

179:                                              ; preds = %174
  %180 = load ptr, ptr %176, align 8, !tbaa !91
  %181 = load ptr, ptr %180, align 8, !tbaa !34
  %182 = icmp eq ptr %181, null
  br i1 %182, label %204, label %183

183:                                              ; preds = %179
  %184 = icmp eq i8 %3, 0
  br label %185

185:                                              ; preds = %183, %198
  %186 = phi i64 [ 0, %183 ], [ %199, %198 ]
  %187 = phi ptr [ %181, %183 ], [ %202, %198 ]
  br i1 %184, label %188, label %191

188:                                              ; preds = %185
  %189 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %187, ptr noundef nonnull dereferenceable(6) @.str.12) #14
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %198, label %191

191:                                              ; preds = %188, %185
  %192 = call ptr @BLI_findstring(ptr noundef nonnull %5, ptr noundef nonnull %187, i32 noundef 16) #13
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %196 = call ptr %195(i64 noundef 24, ptr noundef nonnull @.str.37) #13
  %197 = getelementptr inbounds %struct.LinkData, ptr %196, i64 0, i32 2
  store ptr %187, ptr %197, align 8, !tbaa !87
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %196) #13
  br label %198

198:                                              ; preds = %188, %191, %194
  %199 = add nuw i64 %186, 1
  %200 = load ptr, ptr %176, align 8, !tbaa !91
  %201 = getelementptr inbounds ptr, ptr %200, i64 %199
  %202 = load ptr, ptr %201, align 8, !tbaa !34
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %185, !llvm.loop !94

204:                                              ; preds = %198, %179, %174, %170, %163
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #13
  %205 = load ptr, ptr %5, align 8
  %206 = insertvalue { ptr, ptr } poison, ptr %205, 0
  %207 = getelementptr inbounds { ptr, ptr }, ptr %5, i64 0, i32 1
  %208 = load ptr, ptr %207, align 8
  %209 = insertvalue { ptr, ptr } %206, ptr %208, 1
  ret { ptr, ptr } %209
}

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_iterator_property(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_name_get_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_region(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, ptr null, ptr %3
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_area(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, ptr null, ptr %3
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_screen(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, ptr null, ptr %3
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local { ptr, ptr } @CTX_data_dir_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call { ptr, ptr } @CTX_data_dir_get_ex(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0)
  ret { ptr, ptr } %2
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @CTX_data_equals(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #14
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @CTX_data_dir(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load i8, ptr %0, align 1, !tbaa !95
  %3 = icmp eq i8 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @CTX_data_id_pointer_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @RNA_id_pointer_create(ptr noundef %1, ptr noundef %0) #13
  ret void
}

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CTX_data_pointer_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call void @RNA_pointer_create(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CTX_data_id_list_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 40, ptr noundef nonnull @.str.5) #13
  %5 = getelementptr inbounds %struct.CollectionPointerLink, ptr %4, i64 0, i32 2
  tail call void @RNA_id_pointer_create(ptr noundef %1, ptr noundef nonnull %5) #13
  %6 = getelementptr inbounds %struct.bContextDataResult, ptr %0, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @CTX_data_list_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 40, ptr noundef nonnull @.str.6) #13
  %7 = getelementptr inbounds %struct.CollectionPointerLink, ptr %6, i64 0, i32 2
  tail call void @RNA_pointer_create(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7) #13
  %8 = getelementptr inbounds %struct.bContextDataResult, ptr %0, i64 0, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %6) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ctx_data_list_count(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %4 = call i32 %1(ptr noundef %0, ptr noundef nonnull %3) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = call i32 @BLI_countlist(ptr noundef nonnull %3) #13
  call void @BLI_freelistN(ptr noundef nonnull %3) #13
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret i32 %9
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CTX_data_dir_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContextDataResult, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CTX_data_type_set(ptr nocapture noundef writeonly %0, i16 noundef signext %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContextDataResult, ptr %0, i64 0, i32 3
  store i16 %1, ptr %3, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext i16 @CTX_data_type_get(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bContextDataResult, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !79
  ret i16 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @CTX_wm_manager(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_window(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, ptr null, ptr %3
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_space_data(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %10, %8 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_region_data(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ARegion, ptr %3, i64 0, i32 30
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %10, %8 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @CTX_wm_menu(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @CTX_wm_reports(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 9
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_view3d(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %1, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_region_view3d(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = tail call i32 @BLI_thread_is_main() #13
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr null, ptr %7
  %11 = icmp eq ptr %3, null
  %12 = select i1 %5, i1 true, i1 %11
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %15 = load i8, ptr %14, align 8, !tbaa !101
  %16 = icmp eq i8 %15, 1
  %17 = icmp ne ptr %10, null
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 30
  %21 = load ptr, ptr %20, align 8, !tbaa !99
  br label %22

22:                                               ; preds = %1, %13, %19
  %23 = phi ptr [ %21, %19 ], [ null, %13 ], [ null, %1 ]
  ret ptr %23
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_space_text(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i8 %10, 9
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %1, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_space_console(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i8 %10, 18
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %1, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_space_image(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i8 %10, 6
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %1, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_space_buts(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i8 %10, 4
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %1, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_space_file(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i8 %10, 5
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %1, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_space_seq(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i8 %10, 8
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %1, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_space_outliner(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i8 %10, 3
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %1, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_space_nla(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i8 %10, 13
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %1, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_space_time(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i8 %10, 15
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %1, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_space_node(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i8 %10, 16
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %1, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_space_logic(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i8 %10, 17
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %1, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_space_graph(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i8 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %1, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_space_action(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i8 %10, 12
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %1, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_space_info(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i8 %10, 7
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %1, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_space_userpref(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i8 %10, 19
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %1, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_wm_space_clip(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call i32 @BLI_thread_is_main() #13
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !101
  %11 = icmp eq i8 %10, 20
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ScrArea, ptr %3, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  br label %15

15:                                               ; preds = %1, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CTX_wm_manager_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CTX_wm_window_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !97
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  %10 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !70
  %11 = icmp eq ptr %9, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bScreen, ptr %9, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !104
  %15 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !105
  br label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @CTX_wm_screen_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !70
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  %8 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !105
  br label %9

9:                                                ; preds = %5, %2
  %10 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CTX_wm_area_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 4
  store ptr null, ptr %4, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CTX_wm_region_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CTX_wm_menu_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CTX_wm_operator_poll_msg_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 7
  store ptr %1, ptr %3, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @CTX_wm_operator_poll_msg_get(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 1, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_data_main(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = call fastcc i32 @ctx_data_get(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %2)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  br label %10

10:                                               ; preds = %4, %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ], [ null, %4 ]
  %12 = phi i1 [ false, %7 ], [ false, %1 ], [ true, %4 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #13
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %10, %13
  %17 = phi ptr [ %15, %13 ], [ %11, %10 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CTX_data_main_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_data_scene(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = call fastcc i32 @ctx_data_get(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %2)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  br label %10

10:                                               ; preds = %4, %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ], [ null, %4 ]
  %12 = phi i1 [ false, %7 ], [ false, %1 ], [ true, %4 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #13
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %10, %13
  %17 = phi ptr [ %15, %13 ], [ %11, %10 ]
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local i32 @CTX_data_mode_enum(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bContextDataResult, align 8
  %3 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = call fastcc i32 @ctx_data_get(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, ptr noundef nonnull %3)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !107
  br label %11

11:                                               ; preds = %1, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !109
  switch i16 %16, label %57 [
    i16 1, label %58
    i16 2, label %17
    i16 3, label %18
    i16 4, label %19
    i16 25, label %20
    i16 5, label %21
    i16 22, label %22
  ]

17:                                               ; preds = %14
  br label %58

18:                                               ; preds = %14
  br label %58

19:                                               ; preds = %14
  br label %58

20:                                               ; preds = %14
  br label %58

21:                                               ; preds = %14
  br label %58

22:                                               ; preds = %14
  br label %58

23:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  br i1 %4, label %30, label %24

24:                                               ; preds = %23
  %25 = call fastcc i32 @ctx_data_get(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef nonnull %2)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !107
  br label %30

30:                                               ; preds = %23, %24, %27
  %31 = phi ptr [ %29, %27 ], [ null, %24 ], [ null, %23 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %53, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 27
  %35 = load i32, ptr %34, align 8, !tbaa !113
  %36 = and i32 %35, 64
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = and i32 %35, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = and i32 %35, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = and i32 %35, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = and i32 %35, 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = and i32 %35, 32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %30
  br label %54

54:                                               ; preds = %50, %47, %44, %41, %38, %33, %53
  %55 = phi i1 [ true, %53 ], [ false, %33 ], [ false, %38 ], [ false, %41 ], [ false, %44 ], [ false, %47 ], [ false, %50 ]
  %56 = phi i32 [ undef, %53 ], [ 7, %33 ], [ 8, %38 ], [ 9, %41 ], [ 10, %44 ], [ 11, %47 ], [ 12, %50 ]
  br i1 %55, label %57, label %58

57:                                               ; preds = %54, %14
  br label %58

58:                                               ; preds = %14, %54, %57, %22, %21, %20, %19, %18, %17
  %59 = phi i32 [ 13, %57 ], [ 6, %22 ], [ 5, %21 ], [ 4, %20 ], [ 3, %19 ], [ 2, %18 ], [ 1, %17 ], [ %56, %54 ], [ 0, %14 ]
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_data_edit_object(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = call fastcc i32 @ctx_data_get(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, ptr noundef nonnull %2)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  br label %10

10:                                               ; preds = %1, %4, %7
  %11 = phi ptr [ %9, %7 ], [ null, %4 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #13
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_data_active_object(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = call fastcc i32 @ctx_data_get(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef nonnull %2)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  br label %10

10:                                               ; preds = %1, %4, %7
  %11 = phi ptr [ %9, %7 ], [ null, %4 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #13
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_data_mode_string(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @CTX_data_mode_enum(ptr noundef %0)
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [15 x ptr], ptr @data_mode_strings, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CTX_data_scene_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !105
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_data_tool_settings(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = call fastcc i32 @ctx_data_get(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %2)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  br label %10

10:                                               ; preds = %7, %4, %1
  %11 = phi ptr [ %9, %7 ], [ null, %1 ], [ null, %4 ]
  %12 = phi i1 [ false, %7 ], [ false, %1 ], [ true, %4 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #13
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bContext, ptr %0, i64 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %10, %13
  %17 = phi ptr [ %15, %13 ], [ %11, %10 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 20
  %21 = load ptr, ptr %20, align 8, !tbaa !114
  br label %22

22:                                               ; preds = %16, %19
  %23 = phi ptr [ %21, %19 ], [ null, %16 ]
  ret ptr %23
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CTX_data_selected_nodes(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  %4 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bContextDataResult, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !77
  br label %9

8:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %9

9:                                                ; preds = %6, %8
  %10 = phi i32 [ 1, %6 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  %4 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bContextDataResult, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !77
  br label %9

8:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %9

9:                                                ; preds = %6, %8
  %10 = phi i32 [ 1, %6 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CTX_data_selected_editable_bases(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  %4 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bContextDataResult, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !77
  br label %9

8:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %9

9:                                                ; preds = %6, %8
  %10 = phi i32 [ 1, %6 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CTX_data_selected_objects(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  %4 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bContextDataResult, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !77
  br label %9

8:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %9

9:                                                ; preds = %6, %8
  %10 = phi i32 [ 1, %6 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CTX_data_selected_bases(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  %4 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bContextDataResult, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !77
  br label %9

8:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %9

9:                                                ; preds = %6, %8
  %10 = phi i32 [ 1, %6 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CTX_data_visible_objects(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  %4 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bContextDataResult, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !77
  br label %9

8:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %9

9:                                                ; preds = %6, %8
  %10 = phi i32 [ 1, %6 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CTX_data_visible_bases(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  %4 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bContextDataResult, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !77
  br label %9

8:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %9

9:                                                ; preds = %6, %8
  %10 = phi i32 [ 1, %6 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CTX_data_selectable_objects(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  %4 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bContextDataResult, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !77
  br label %9

8:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %9

9:                                                ; preds = %6, %8
  %10 = phi i32 [ 1, %6 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CTX_data_selectable_bases(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  %4 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bContextDataResult, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !77
  br label %9

8:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %9

9:                                                ; preds = %6, %8
  %10 = phi i32 [ 1, %6 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_data_active_base(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = call fastcc i32 @ctx_data_get(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %2)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  br label %10

10:                                               ; preds = %1, %4, %7
  %11 = phi ptr [ %9, %7 ], [ null, %4 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #13
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_data_edit_image(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = call fastcc i32 @ctx_data_get(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef nonnull %2)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  br label %10

10:                                               ; preds = %1, %4, %7
  %11 = phi ptr [ %9, %7 ], [ null, %4 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #13
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_data_edit_text(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = call fastcc i32 @ctx_data_get(ptr noundef nonnull %0, ptr noundef nonnull @.str.26, ptr noundef nonnull %2)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  br label %10

10:                                               ; preds = %1, %4, %7
  %11 = phi ptr [ %9, %7 ], [ null, %4 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #13
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_data_edit_movieclip(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = call fastcc i32 @ctx_data_get(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef nonnull %2)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  br label %10

10:                                               ; preds = %1, %4, %7
  %11 = phi ptr [ %9, %7 ], [ null, %4 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #13
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_data_edit_mask(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = call fastcc i32 @ctx_data_get(ptr noundef nonnull %0, ptr noundef nonnull @.str.28, ptr noundef nonnull %2)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  br label %10

10:                                               ; preds = %1, %4, %7
  %11 = phi ptr [ %9, %7 ], [ null, %4 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #13
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_data_active_bone(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = call fastcc i32 @ctx_data_get(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, ptr noundef nonnull %2)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  br label %10

10:                                               ; preds = %1, %4, %7
  %11 = phi ptr [ %9, %7 ], [ null, %4 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #13
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CTX_data_selected_bones(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  %4 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bContextDataResult, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !77
  br label %9

8:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %9

9:                                                ; preds = %6, %8
  %10 = phi i32 [ 1, %6 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  %4 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bContextDataResult, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !77
  br label %9

8:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %9

9:                                                ; preds = %6, %8
  %10 = phi i32 [ 1, %6 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CTX_data_visible_bones(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  %4 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bContextDataResult, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !77
  br label %9

8:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %9

9:                                                ; preds = %6, %8
  %10 = phi i32 [ 1, %6 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CTX_data_editable_bones(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  %4 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bContextDataResult, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !77
  br label %9

8:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %9

9:                                                ; preds = %6, %8
  %10 = phi i32 [ 1, %6 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @CTX_data_active_pose_bone(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = call fastcc i32 @ctx_data_get(ptr noundef nonnull %0, ptr noundef nonnull @.str.34, ptr noundef nonnull %2)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  br label %10

10:                                               ; preds = %1, %4, %7
  %11 = phi ptr [ %9, %7 ], [ null, %4 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #13
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  %4 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bContextDataResult, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !77
  br label %9

8:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %9

9:                                                ; preds = %6, %8
  %10 = phi i32 [ 1, %6 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bContextDataResult, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  %4 = call fastcc i32 @ctx_data_get(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bContextDataResult, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !77
  br label %9

8:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %9

9:                                                ; preds = %6, %8
  %10 = phi i32 [ 1, %6 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret i32 %10
}

declare i32 @BLI_thread_is_main() local_unnamed_addr #2

declare ptr @BLI_rfindstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind willreturn memory(argmem: read) }
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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 8}
!39 = !{!"ListBase", !35, i64 0, !35, i64 8}
!40 = !{!41, !36, i64 32}
!41 = !{!"bContextStore", !35, i64 0, !35, i64 8, !39, i64 16, !36, i64 32}
!42 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!47, !35, i64 56}
!47 = !{!"bContext", !48, i64 0, !49, i64 8, !50, i64 72}
!48 = !{!"int", !36, i64 0}
!49 = !{!"", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56}
!50 = !{!"", !35, i64 0, !35, i64 8, !48, i64 16, !48, i64 20, !35, i64 24}
!51 = distinct !{!51, !44, !45}
!52 = !{!47, !48, i64 92}
!53 = !{!47, !35, i64 96}
!54 = !{!47, !48, i64 88}
!55 = !{!47, !35, i64 40}
!56 = !{!57, !35, i64 240}
!57 = !{!"ARegion", !35, i64 0, !35, i64 8, !58, i64 16, !61, i64 176, !61, i64 192, !62, i64 208, !62, i64 210, !62, i64 212, !62, i64 214, !62, i64 216, !62, i64 218, !60, i64 220, !62, i64 224, !62, i64 226, !62, i64 228, !62, i64 230, !62, i64 232, !62, i64 234, !62, i64 236, !62, i64 238, !35, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!58 = !{!"View2D", !59, i64 0, !59, i64 16, !61, i64 32, !61, i64 48, !61, i64 64, !36, i64 80, !36, i64 88, !60, i64 96, !60, i64 100, !62, i64 104, !62, i64 106, !62, i64 108, !62, i64 110, !62, i64 112, !62, i64 114, !62, i64 116, !62, i64 118, !62, i64 120, !62, i64 122, !62, i64 124, !62, i64 126, !35, i64 128, !48, i64 136, !48, i64 140, !35, i64 144, !35, i64 152}
!59 = !{!"rctf", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12}
!60 = !{!"float", !36, i64 0}
!61 = !{!"rcti", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!62 = !{!"short", !36, i64 0}
!63 = !{!64, !35, i64 96}
!64 = !{!"ARegionType", !35, i64 0, !35, i64 8, !48, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !39, i64 104, !39, i64 120, !39, i64 136, !48, i64 152, !48, i64 156, !48, i64 160, !48, i64 164, !48, i64 168, !62, i64 172, !62, i64 174, !62, i64 176}
!65 = !{!47, !35, i64 32}
!66 = !{!67, !35, i64 88}
!67 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !61, i64 56, !36, i64 72, !36, i64 73, !62, i64 74, !62, i64 76, !62, i64 78, !62, i64 80, !62, i64 82, !62, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!68 = !{!69, !35, i64 168}
!69 = !{!"SpaceType", !35, i64 0, !35, i64 8, !36, i64 16, !48, i64 80, !48, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !39, i64 176, !39, i64 192, !48, i64 208}
!70 = !{!47, !35, i64 24}
!71 = !{!72, !35, i64 240}
!72 = !{!"bScreen", !73, i64 0, !39, i64 120, !39, i64 136, !39, i64 152, !39, i64 168, !35, i64 184, !35, i64 192, !48, i64 200, !48, i64 204, !62, i64 208, !62, i64 210, !62, i64 212, !62, i64 214, !62, i64 216, !62, i64 218, !62, i64 220, !62, i64 222, !62, i64 224, !62, i64 226, !62, i64 228, !62, i64 230, !35, i64 232, !35, i64 240}
!73 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !62, i64 98, !48, i64 100, !48, i64 104, !48, i64 108, !35, i64 112}
!74 = !{!75}
!75 = distinct !{!75, !76, !"CTX_data_pointer_get: argument 0"}
!76 = distinct !{!76, !"CTX_data_pointer_get"}
!77 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!78 = !{i64 0, i64 8, !34}
!79 = !{!80, !62, i64 48}
!80 = !{!"bContextDataResult", !81, i64 0, !39, i64 24, !35, i64 40, !62, i64 48}
!81 = !{!"PointerRNA", !82, i64 0, !35, i64 8, !35, i64 16}
!82 = !{!"", !35, i64 0}
!83 = !{!62, !62, i64 0}
!84 = !{!81, !35, i64 8}
!85 = !{!86, !48, i64 128}
!86 = !{!"CollectionPropertyIterator", !81, i64 0, !81, i64 24, !35, i64 48, !36, i64 56, !48, i64 96, !48, i64 100, !81, i64 104, !48, i64 128}
!87 = !{!88, !35, i64 16}
!88 = !{!"LinkData", !35, i64 0, !35, i64 8, !35, i64 16}
!89 = distinct !{!89, !44, !45}
!90 = distinct !{!90, !44, !45}
!91 = !{!80, !35, i64 40}
!92 = distinct !{!92, !44, !45}
!93 = distinct !{!93, !44, !45}
!94 = distinct !{!94, !44, !45}
!95 = !{!36, !36, i64 0}
!96 = !{!47, !35, i64 8}
!97 = !{!47, !35, i64 16}
!98 = !{!67, !35, i64 96}
!99 = !{!57, !35, i64 376}
!100 = !{!47, !35, i64 48}
!101 = !{!67, !36, i64 72}
!102 = !{!103, !35, i64 24}
!103 = !{!"wmWindow", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !62, i64 104, !62, i64 106, !62, i64 108, !62, i64 110, !62, i64 112, !62, i64 114, !62, i64 116, !62, i64 118, !62, i64 120, !62, i64 122, !62, i64 124, !62, i64 126, !48, i64 128, !62, i64 132, !62, i64 134, !35, i64 136, !35, i64 144, !35, i64 152, !48, i64 160, !48, i64 164, !35, i64 168, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 240}
!104 = !{!72, !35, i64 184}
!105 = !{!47, !35, i64 80}
!106 = !{!47, !35, i64 64}
!107 = !{!80, !35, i64 16}
!108 = !{!47, !35, i64 72}
!109 = !{!110, !62, i64 136}
!110 = !{!"Object", !73, i64 0, !35, i64 120, !35, i64 128, !62, i64 136, !62, i64 138, !48, i64 140, !48, i64 144, !48, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !111, i64 312, !35, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !48, i64 432, !48, i64 436, !35, i64 440, !35, i64 448, !48, i64 456, !48, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !60, i64 616, !60, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !48, i64 944, !62, i64 948, !62, i64 950, !62, i64 952, !62, i64 954, !62, i64 956, !62, i64 958, !62, i64 960, !62, i64 962, !62, i64 964, !36, i64 966, !36, i64 967, !48, i64 968, !48, i64 972, !48, i64 976, !48, i64 980, !48, i64 984, !60, i64 988, !60, i64 992, !60, i64 996, !60, i64 1000, !60, i64 1004, !60, i64 1008, !60, i64 1012, !60, i64 1016, !60, i64 1020, !60, i64 1024, !60, i64 1028, !60, i64 1032, !62, i64 1036, !62, i64 1038, !62, i64 1040, !36, i64 1042, !36, i64 1043, !62, i64 1044, !36, i64 1046, !36, i64 1047, !60, i64 1048, !60, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !60, i64 1120, !62, i64 1124, !62, i64 1126, !36, i64 1128, !48, i64 1144, !48, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !62, i64 1162, !36, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !62, i64 1266, !60, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !112, i64 1304, !112, i64 1312, !48, i64 1320, !48, i64 1324, !39, i64 1328, !39, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !39, i64 1400, !35, i64 1416}
!111 = !{!"bAnimVizSettings", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !62, i64 16, !62, i64 18, !62, i64 20, !62, i64 22, !62, i64 24, !62, i64 26, !62, i64 28, !62, i64 30, !48, i64 32, !48, i64 36, !48, i64 40, !48, i64 44}
!112 = !{!"long", !36, i64 0}
!113 = !{!110, !48, i64 432}
!114 = !{!115, !35, i64 264}
!115 = !{!"Scene", !73, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !39, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !48, i64 232, !48, i64 236, !48, i64 240, !62, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !116, i64 280, !123, i64 4264, !39, i64 4296, !39, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !62, i64 4376, !62, i64 4378, !48, i64 4380, !39, i64 4384, !124, i64 4400, !125, i64 4416, !128, i64 4600, !35, i64 4608, !129, i64 4616, !35, i64 4640, !112, i64 4648, !112, i64 4656, !118, i64 4664, !119, i64 4824, !130, i64 4888, !35, i64 4952}
!116 = !{!"RenderData", !117, i64 0, !35, i64 248, !35, i64 256, !120, i64 264, !121, i64 328, !48, i64 400, !48, i64 404, !48, i64 408, !60, i64 412, !48, i64 416, !48, i64 420, !48, i64 424, !48, i64 428, !62, i64 432, !62, i64 434, !60, i64 436, !60, i64 440, !60, i64 444, !60, i64 448, !60, i64 452, !62, i64 456, !62, i64 458, !62, i64 460, !62, i64 462, !62, i64 464, !62, i64 466, !48, i64 468, !62, i64 472, !62, i64 474, !62, i64 476, !62, i64 478, !62, i64 480, !62, i64 482, !48, i64 484, !48, i64 488, !62, i64 492, !62, i64 494, !48, i64 496, !48, i64 500, !62, i64 504, !62, i64 506, !62, i64 508, !62, i64 510, !62, i64 512, !36, i64 514, !36, i64 515, !48, i64 516, !48, i64 520, !48, i64 524, !62, i64 528, !62, i64 530, !62, i64 532, !62, i64 534, !62, i64 536, !62, i64 538, !62, i64 540, !62, i64 542, !59, i64 544, !59, i64 560, !61, i64 576, !39, i64 592, !62, i64 608, !62, i64 610, !60, i64 612, !60, i64 616, !60, i64 620, !60, i64 624, !48, i64 628, !60, i64 632, !60, i64 636, !60, i64 640, !60, i64 644, !62, i64 648, !62, i64 650, !62, i64 652, !62, i64 654, !62, i64 656, !62, i64 658, !60, i64 660, !60, i64 664, !62, i64 668, !62, i64 670, !60, i64 672, !60, i64 676, !36, i64 680, !48, i64 1704, !62, i64 1708, !62, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !48, i64 2520, !62, i64 2524, !62, i64 2526, !60, i64 2528, !60, i64 2532, !62, i64 2536, !62, i64 2538, !60, i64 2540, !62, i64 2544, !62, i64 2546, !48, i64 2548, !62, i64 2552, !62, i64 2554, !62, i64 2556, !62, i64 2558, !60, i64 2560, !60, i64 2564, !35, i64 2568, !48, i64 2576, !60, i64 2580, !36, i64 2584, !122, i64 2616, !48, i64 3976, !48, i64 3980}
!117 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !62, i64 8, !62, i64 10, !60, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !118, i64 24, !119, i64 184}
!118 = !{!"ColorManagedViewSettings", !48, i64 0, !48, i64 4, !36, i64 8, !36, i64 72, !60, i64 136, !60, i64 140, !35, i64 144, !35, i64 152}
!119 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!120 = !{!"QuicktimeCodecSettings", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !48, i64 40, !48, i64 44, !62, i64 48, !62, i64 50, !48, i64 52, !48, i64 56, !48, i64 60}
!121 = !{!"FFMpegCodecData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !60, i64 32, !48, i64 36, !48, i64 40, !48, i64 44, !48, i64 48, !48, i64 52, !48, i64 56, !48, i64 60, !35, i64 64}
!122 = !{!"BakeData", !117, i64 0, !36, i64 248, !62, i64 1272, !62, i64 1274, !62, i64 1276, !62, i64 1278, !60, i64 1280, !60, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!123 = !{!"AudioData", !48, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !48, i64 16, !62, i64 20, !62, i64 22, !60, i64 24, !60, i64 28}
!124 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!125 = !{!"GameData", !124, i64 0, !62, i64 16, !62, i64 18, !62, i64 20, !62, i64 22, !62, i64 24, !62, i64 26, !62, i64 28, !62, i64 30, !62, i64 32, !36, i64 34, !126, i64 40, !62, i64 64, !62, i64 66, !60, i64 68, !127, i64 72, !60, i64 128, !60, i64 132, !48, i64 136, !62, i64 140, !62, i64 142, !62, i64 144, !62, i64 146, !62, i64 148, !62, i64 150, !62, i64 152, !62, i64 154, !62, i64 156, !62, i64 158, !62, i64 160, !62, i64 162, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180}
!126 = !{!"GameDome", !62, i64 0, !62, i64 2, !62, i64 4, !62, i64 6, !60, i64 8, !60, i64 12, !35, i64 16}
!127 = !{!"RecastData", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !60, i64 24, !60, i64 28, !60, i64 32, !60, i64 36, !48, i64 40, !60, i64 44, !60, i64 48, !62, i64 52, !62, i64 54}
!128 = !{!"UnitSettings", !60, i64 0, !36, i64 4, !36, i64 5, !62, i64 6}
!129 = !{!"PhysicsSettings", !36, i64 0, !48, i64 12, !48, i64 16, !48, i64 20}
!130 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
