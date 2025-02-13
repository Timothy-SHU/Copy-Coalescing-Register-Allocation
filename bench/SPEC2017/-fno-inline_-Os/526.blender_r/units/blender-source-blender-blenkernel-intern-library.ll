; ModuleID = 'blender/source/blender/blenkernel/intern/library.c'
source_filename = "blender/source/blender/blenkernel/intern/library.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.IdAdtTemplate = type { %struct.ID, ptr }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }
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
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }

@.str = private unnamed_addr constant [29 x i8] c"ID user decrement error: %s\0A\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@free_windowmanager_cb = internal unnamed_addr global ptr null, align 8
@free_notifier_reference_cb = internal unnamed_addr global ptr null, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"ERROR block %s %s users %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"ERROR block %s users %d\0A\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"new main\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"EvaluationContext\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"main lock\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Untitled\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"library\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"mesh\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"curve\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"mball\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"mat\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"latt\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"lamp\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"camera\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"ipo\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"screen\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"vfont\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"speaker\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"sound\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"armature\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"nodetree\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"brush\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"ParticleSettings\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"Window manager\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"Grease Pencil\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"Movie Clip\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"Freestyle Line Style\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"Palette\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"Paint Curve\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"%s.%.3d\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_id_lib_local_paths(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  store ptr %5, ptr %4, align 16, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %4, i64 1
  %7 = getelementptr inbounds %struct.Library, ptr %1, i64 0, i32 4
  store ptr %7, ptr %6, align 8, !tbaa !34
  call void @BKE_bpath_traverse_id(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @BKE_bpath_relocate_visitor, i32 noundef 16, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BKE_bpath_traverse_id(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_bpath_relocate_visitor(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @id_lib_extern(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !38
  %6 = and i16 %5, 2
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = or i16 %5, 1
  %10 = add nsw i16 %9, -2
  store i16 %10, ptr %4, align 2, !tbaa !38
  br label %11

11:                                               ; preds = %3, %8, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @id_us_ensure_real(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !42
  %6 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 5
  %7 = load i16, ptr %6, align 2, !tbaa !38
  %8 = lshr i16 %7, 9
  %9 = and i16 %8, 1
  %10 = zext nneg i16 %9 to i32
  %11 = icmp sgt i32 %5, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = add nuw nsw i32 %5, 1
  %14 = icmp slt i32 %5, 1
  %15 = select i1 %14, i32 1, i32 %13
  store i32 %15, ptr %4, align 4, !tbaa !42
  br label %16

16:                                               ; preds = %3, %12, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @id_us_plus(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !42
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 4, !tbaa !42
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 5
  %8 = load i16, ptr %7, align 2, !tbaa !38
  %9 = and i16 %8, 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = or i16 %8, 1
  %13 = add nsw i16 %12, -2
  store i16 %13, ptr %7, align 2, !tbaa !38
  br label %14

14:                                               ; preds = %3, %11, %1
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @id_us_min(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !42
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !38
  %10 = and i16 %9, 512
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  store i32 1, ptr %4, align 4, !tbaa !42
  br label %20

13:                                               ; preds = %7
  %14 = icmp eq i32 %5, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %16) #19
  br label %20

18:                                               ; preds = %3, %13
  %19 = add nsw i32 %5, -1
  store i32 %19, ptr %4, align 4, !tbaa !42
  br label %20

20:                                               ; preds = %12, %18, %15, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @id_make_local(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 5
  %4 = load i16, ptr %3, align 2, !tbaa !38
  %5 = and i16 %4, 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %70

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %9 = load i16, ptr %8, align 8, !tbaa !43
  switch i16 %9, label %70 [
    i16 16720, label %67
    i16 21058, label %64
    i16 16975, label %10
    i16 17741, label %13
    i16 21827, label %18
    i16 16973, label %23
    i16 16717, label %26
    i16 17748, label %29
    i16 19785, label %32
    i16 21580, label %35
    i16 16716, label %40
    i16 16707, label %43
    i16 19283, label %46
    i16 21582, label %61
    i16 17739, label %49
    i16 20311, label %52
    i16 17217, label %58
    i16 21057, label %55
  ]

10:                                               ; preds = %7
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %12, label %70

12:                                               ; preds = %10
  tail call void @BKE_object_make_local(ptr noundef nonnull %0) #18
  br label %70

13:                                               ; preds = %7
  %14 = icmp eq i8 %1, 0
  br i1 %14, label %15, label %70

15:                                               ; preds = %13
  tail call void @BKE_mesh_make_local(ptr noundef nonnull %0) #18
  %16 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  tail call void @BKE_key_make_local(ptr noundef %17) #18
  br label %70

18:                                               ; preds = %7
  %19 = icmp eq i8 %1, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %18
  tail call void @BKE_curve_make_local(ptr noundef nonnull %0) #18
  %21 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  tail call void @BKE_key_make_local(ptr noundef %22) #18
  br label %70

23:                                               ; preds = %7
  %24 = icmp eq i8 %1, 0
  br i1 %24, label %25, label %70

25:                                               ; preds = %23
  tail call void @BKE_mball_make_local(ptr noundef nonnull %0) #18
  br label %70

26:                                               ; preds = %7
  %27 = icmp eq i8 %1, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %26
  tail call void @BKE_material_make_local(ptr noundef nonnull %0) #18
  br label %70

29:                                               ; preds = %7
  %30 = icmp eq i8 %1, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %29
  tail call void @BKE_texture_make_local(ptr noundef nonnull %0) #18
  br label %70

32:                                               ; preds = %7
  %33 = icmp eq i8 %1, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %32
  tail call void @BKE_image_make_local(ptr noundef nonnull %0) #18
  br label %70

35:                                               ; preds = %7
  %36 = icmp eq i8 %1, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %35
  tail call void @BKE_lattice_make_local(ptr noundef nonnull %0) #18
  %38 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 23
  %39 = load ptr, ptr %38, align 8, !tbaa !52
  tail call void @BKE_key_make_local(ptr noundef %39) #18
  br label %70

40:                                               ; preds = %7
  %41 = icmp eq i8 %1, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %40
  tail call void @BKE_lamp_make_local(ptr noundef nonnull %0) #18
  br label %70

43:                                               ; preds = %7
  %44 = icmp eq i8 %1, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %43
  tail call void @BKE_camera_make_local(ptr noundef nonnull %0) #18
  br label %70

46:                                               ; preds = %7
  %47 = icmp eq i8 %1, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %46
  tail call void @BKE_speaker_make_local(ptr noundef nonnull %0) #18
  br label %70

49:                                               ; preds = %7
  %50 = icmp eq i8 %1, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %49
  tail call void @BKE_key_make_local(ptr noundef nonnull %0) #18
  br label %70

52:                                               ; preds = %7
  %53 = icmp eq i8 %1, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %52
  tail call void @BKE_world_make_local(ptr noundef nonnull %0) #18
  br label %70

55:                                               ; preds = %7
  %56 = icmp eq i8 %1, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %55
  tail call void @BKE_armature_make_local(ptr noundef nonnull %0) #18
  br label %70

58:                                               ; preds = %7
  %59 = icmp eq i8 %1, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %58
  tail call void @BKE_action_make_local(ptr noundef nonnull %0) #18
  br label %70

61:                                               ; preds = %7
  %62 = icmp eq i8 %1, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %61
  tail call void @ntreeMakeLocal(ptr noundef nonnull %0) #18
  br label %70

64:                                               ; preds = %7
  %65 = icmp eq i8 %1, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  tail call void @BKE_brush_make_local(ptr noundef nonnull %0) #18
  br label %70

67:                                               ; preds = %7
  %68 = icmp eq i8 %1, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  tail call void @BKE_particlesettings_make_local(ptr noundef nonnull %0) #18
  br label %70

70:                                               ; preds = %7, %67, %69, %64, %66, %61, %63, %58, %60, %55, %57, %52, %54, %49, %51, %46, %48, %43, %45, %40, %42, %35, %37, %32, %34, %29, %31, %26, %28, %23, %25, %18, %20, %13, %15, %10, %12, %2
  %71 = phi i8 [ 0, %2 ], [ 1, %12 ], [ 1, %10 ], [ 1, %15 ], [ 1, %13 ], [ 1, %20 ], [ 1, %18 ], [ 1, %25 ], [ 1, %23 ], [ 1, %28 ], [ 1, %26 ], [ 1, %31 ], [ 1, %29 ], [ 1, %34 ], [ 1, %32 ], [ 1, %37 ], [ 1, %35 ], [ 1, %42 ], [ 1, %40 ], [ 1, %45 ], [ 1, %43 ], [ 1, %48 ], [ 1, %46 ], [ 1, %51 ], [ 1, %49 ], [ 1, %54 ], [ 1, %52 ], [ 1, %57 ], [ 1, %55 ], [ 1, %60 ], [ 1, %58 ], [ 1, %63 ], [ 1, %61 ], [ 1, %66 ], [ 1, %64 ], [ 1, %69 ], [ 1, %67 ], [ 0, %7 ]
  ret i8 %71
}

; Function Attrs: optsize
declare void @BKE_object_make_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_make_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_key_make_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_curve_make_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mball_make_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_material_make_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_texture_make_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_make_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_lattice_make_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_lamp_make_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_camera_make_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_speaker_make_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_world_make_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_armature_make_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_action_make_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ntreeMakeLocal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_brush_make_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_particlesettings_make_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @id_copy(ptr noundef %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  store ptr null, ptr %1, align 8, !tbaa !34
  br label %6

6:                                                ; preds = %5, %3
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !43
  switch i16 %8, label %78 [
    i16 21324, label %73
    i16 21325, label %70
    i16 16975, label %9
    i16 17741, label %12
    i16 21827, label %15
    i16 16973, label %18
    i16 16717, label %21
    i16 17748, label %24
    i16 19785, label %27
    i16 21580, label %31
    i16 16716, label %34
    i16 19283, label %37
    i16 16707, label %40
    i16 16720, label %67
    i16 17739, label %43
    i16 20311, label %46
    i16 21058, label %64
    i16 21582, label %61
    i16 22612, label %49
    i16 17217, label %58
    i16 21057, label %55
    i16 21063, label %52
  ]

9:                                                ; preds = %6
  br i1 %4, label %10, label %78

10:                                               ; preds = %9
  %11 = tail call ptr @BKE_object_copy(ptr noundef nonnull %0) #18
  br label %76

12:                                               ; preds = %6
  br i1 %4, label %13, label %78

13:                                               ; preds = %12
  %14 = tail call ptr @BKE_mesh_copy(ptr noundef nonnull %0) #18
  br label %76

15:                                               ; preds = %6
  br i1 %4, label %16, label %78

16:                                               ; preds = %15
  %17 = tail call ptr @BKE_curve_copy(ptr noundef nonnull %0) #18
  br label %76

18:                                               ; preds = %6
  br i1 %4, label %19, label %78

19:                                               ; preds = %18
  %20 = tail call ptr @BKE_mball_copy(ptr noundef nonnull %0) #18
  br label %76

21:                                               ; preds = %6
  br i1 %4, label %22, label %78

22:                                               ; preds = %21
  %23 = tail call ptr @BKE_material_copy(ptr noundef nonnull %0) #18
  br label %76

24:                                               ; preds = %6
  br i1 %4, label %25, label %78

25:                                               ; preds = %24
  %26 = tail call ptr @BKE_texture_copy(ptr noundef nonnull %0) #18
  br label %76

27:                                               ; preds = %6
  br i1 %4, label %28, label %78

28:                                               ; preds = %27
  %29 = load ptr, ptr @G, align 8, !tbaa !54
  %30 = tail call ptr @BKE_image_copy(ptr noundef %29, ptr noundef nonnull %0) #18
  br label %76

31:                                               ; preds = %6
  br i1 %4, label %32, label %78

32:                                               ; preds = %31
  %33 = tail call ptr @BKE_lattice_copy(ptr noundef nonnull %0) #18
  br label %76

34:                                               ; preds = %6
  br i1 %4, label %35, label %78

35:                                               ; preds = %34
  %36 = tail call ptr @BKE_lamp_copy(ptr noundef nonnull %0) #18
  br label %76

37:                                               ; preds = %6
  br i1 %4, label %38, label %78

38:                                               ; preds = %37
  %39 = tail call ptr @BKE_speaker_copy(ptr noundef nonnull %0) #18
  br label %76

40:                                               ; preds = %6
  br i1 %4, label %41, label %78

41:                                               ; preds = %40
  %42 = tail call ptr @BKE_camera_copy(ptr noundef nonnull %0) #18
  br label %76

43:                                               ; preds = %6
  br i1 %4, label %44, label %78

44:                                               ; preds = %43
  %45 = tail call ptr @BKE_key_copy(ptr noundef nonnull %0) #18
  br label %76

46:                                               ; preds = %6
  br i1 %4, label %47, label %78

47:                                               ; preds = %46
  %48 = tail call ptr @BKE_world_copy(ptr noundef nonnull %0) #18
  br label %76

49:                                               ; preds = %6
  br i1 %4, label %50, label %78

50:                                               ; preds = %49
  %51 = tail call ptr @BKE_text_copy(ptr noundef nonnull %0) #18
  br label %76

52:                                               ; preds = %6
  br i1 %4, label %53, label %78

53:                                               ; preds = %52
  %54 = tail call ptr @BKE_group_copy(ptr noundef nonnull %0) #18
  br label %76

55:                                               ; preds = %6
  br i1 %4, label %56, label %78

56:                                               ; preds = %55
  %57 = tail call ptr @BKE_armature_copy(ptr noundef nonnull %0) #18
  br label %76

58:                                               ; preds = %6
  br i1 %4, label %59, label %78

59:                                               ; preds = %58
  %60 = tail call ptr @BKE_action_copy(ptr noundef nonnull %0) #18
  br label %76

61:                                               ; preds = %6
  br i1 %4, label %62, label %78

62:                                               ; preds = %61
  %63 = tail call ptr @ntreeCopyTree(ptr noundef nonnull %0) #18
  br label %76

64:                                               ; preds = %6
  br i1 %4, label %65, label %78

65:                                               ; preds = %64
  %66 = tail call ptr @BKE_brush_copy(ptr noundef nonnull %0) #18
  br label %76

67:                                               ; preds = %6
  br i1 %4, label %68, label %78

68:                                               ; preds = %67
  %69 = tail call ptr @BKE_particlesettings_copy(ptr noundef nonnull %0) #18
  br label %76

70:                                               ; preds = %6
  br i1 %4, label %71, label %78

71:                                               ; preds = %70
  %72 = tail call ptr @BKE_mask_copy(ptr noundef nonnull %0) #18
  br label %76

73:                                               ; preds = %6
  br i1 %4, label %74, label %78

74:                                               ; preds = %73
  %75 = tail call ptr @BKE_linestyle_copy(ptr noundef nonnull %0) #18
  br label %76

76:                                               ; preds = %10, %13, %16, %19, %22, %25, %28, %32, %35, %38, %41, %44, %47, %50, %53, %56, %59, %62, %65, %68, %71, %74
  %77 = phi ptr [ %75, %74 ], [ %72, %71 ], [ %69, %68 ], [ %66, %65 ], [ %63, %62 ], [ %60, %59 ], [ %57, %56 ], [ %54, %53 ], [ %51, %50 ], [ %48, %47 ], [ %45, %44 ], [ %42, %41 ], [ %39, %38 ], [ %36, %35 ], [ %33, %32 ], [ %30, %28 ], [ %26, %25 ], [ %23, %22 ], [ %20, %19 ], [ %17, %16 ], [ %14, %13 ], [ %11, %10 ]
  store ptr %77, ptr %1, align 8, !tbaa !34
  br label %78

78:                                               ; preds = %76, %6, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %27, %24, %21, %18, %15, %12, %9
  %79 = phi i8 [ 1, %9 ], [ 1, %12 ], [ 1, %15 ], [ 1, %18 ], [ 1, %21 ], [ 1, %24 ], [ 1, %27 ], [ 1, %31 ], [ 1, %34 ], [ 1, %37 ], [ 1, %40 ], [ 1, %43 ], [ 1, %46 ], [ 1, %49 ], [ 1, %52 ], [ 1, %55 ], [ 1, %58 ], [ 1, %61 ], [ 1, %64 ], [ 1, %67 ], [ 1, %70 ], [ 1, %73 ], [ 0, %6 ], [ 1, %76 ]
  ret i8 %79
}

; Function Attrs: optsize
declare ptr @BKE_object_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mesh_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_curve_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mball_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_material_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_texture_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_lattice_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_lamp_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_speaker_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_camera_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_key_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_world_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_text_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_group_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_armature_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_action_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ntreeCopyTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_brush_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_particlesettings_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mask_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_linestyle_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @id_unlink(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @G, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !43
  switch i16 %5, label %15 [
    i16 22612, label %6
    i16 21063, label %9
    i16 16975, label %12
  ]

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %6
  tail call void @BKE_text_unlink(ptr noundef %3, ptr noundef nonnull %0) #18
  br label %15

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %9
  tail call void @BKE_group_unlink(ptr noundef nonnull %0) #18
  br label %15

12:                                               ; preds = %2
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  tail call void @BKE_object_unlink(ptr noundef nonnull %0) #18
  br label %15

15:                                               ; preds = %2, %14, %11, %8
  %16 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !42
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = icmp eq i32 %1, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  tail call void @BKE_libblock_free(ptr noundef %3, ptr noundef nonnull %0) #19
  br label %22

22:                                               ; preds = %15, %19, %12, %9, %6, %21
  %23 = phi i8 [ 1, %21 ], [ 1, %6 ], [ 1, %9 ], [ 1, %12 ], [ 1, %19 ], [ 0, %15 ]
  ret i8 %23
}

; Function Attrs: optsize
declare void @BKE_text_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_group_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_libblock_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @BKE_libblock_free_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @id_single_user(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  store ptr null, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #17
  %7 = icmp eq ptr %1, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = tail call zeroext i8 @RNA_property_editable(ptr noundef %2, ptr noundef %3) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = call zeroext i8 @id_copy(ptr noundef nonnull %1, ptr noundef nonnull %5, i8 noundef zeroext 0) #19, !range !56
  %13 = icmp ne i8 %12, 0
  %14 = load ptr, ptr %5, align 8
  %15 = icmp ne ptr %14, null
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  tail call void @BKE_copy_animdata_id_action(ptr noundef nonnull %1) #18
  %18 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 6
  store i32 0, ptr %18, align 4, !tbaa !42
  call void @RNA_id_pointer_create(ptr noundef nonnull %14, ptr noundef nonnull %6) #18
  call void @RNA_property_pointer_set(ptr noundef %2, ptr noundef %3, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %6) #18
  call void @RNA_property_update(ptr noundef %0, ptr noundef %2, ptr noundef %3) #18
  br label %19

19:                                               ; preds = %4, %11, %8, %17
  %20 = phi i8 [ 1, %17 ], [ 0, %8 ], [ 0, %11 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret i8 %20
}

; Function Attrs: optsize
declare zeroext i8 @RNA_property_editable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_copy_animdata_id_action(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local ptr @which_libbase(ptr noundef readnone %0, i16 noundef signext %1) local_unnamed_addr #6 {
  switch i16 %1, label %71 [
    i16 17235, label %3
    i16 18764, label %5
    i16 16975, label %7
    i16 17741, label %9
    i16 21827, label %11
    i16 16973, label %13
    i16 16717, label %15
    i16 17748, label %17
    i16 19785, label %19
    i16 21580, label %21
    i16 16716, label %23
    i16 16707, label %25
    i16 20553, label %27
    i16 17739, label %29
    i16 20311, label %31
    i16 21075, label %33
    i16 18006, label %35
    i16 22612, label %37
    i16 22864, label %39
    i16 19283, label %41
    i16 20307, label %43
    i16 21063, label %45
    i16 21057, label %47
    i16 17217, label %49
    i16 21582, label %51
    i16 21058, label %53
    i16 16720, label %55
    i16 19799, label %57
    i16 17479, label %59
    i16 17229, label %61
    i16 21325, label %63
    i16 21324, label %65
    i16 19536, label %67
    i16 17232, label %69
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  br label %71

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 12
  br label %71

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  br label %71

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 14
  br label %71

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 15
  br label %71

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 16
  br label %71

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  br label %71

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  br label %71

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 19
  br label %71

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 20
  br label %71

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 21
  br label %71

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 22
  br label %71

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 23
  br label %71

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 24
  br label %71

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 25
  br label %71

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  br label %71

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 28
  br label %71

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 29
  br label %71

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 27
  br label %71

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 30
  br label %71

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 31
  br label %71

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 32
  br label %71

47:                                               ; preds = %2
  %48 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 33
  br label %71

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 34
  br label %71

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 35
  br label %71

53:                                               ; preds = %2
  %54 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 36
  br label %71

55:                                               ; preds = %2
  %56 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 37
  br label %71

57:                                               ; preds = %2
  %58 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  br label %71

59:                                               ; preds = %2
  %60 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 41
  br label %71

61:                                               ; preds = %2
  %62 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 42
  br label %71

63:                                               ; preds = %2
  %64 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 43
  br label %71

65:                                               ; preds = %2
  %66 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 44
  br label %71

67:                                               ; preds = %2
  %68 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 38
  br label %71

69:                                               ; preds = %2
  %70 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 39
  br label %71

71:                                               ; preds = %2, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5, %3
  %72 = phi ptr [ %70, %69 ], [ %68, %67 ], [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], [ %60, %59 ], [ %58, %57 ], [ %56, %55 ], [ %54, %53 ], [ %52, %51 ], [ %50, %49 ], [ %48, %47 ], [ %46, %45 ], [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ %4, %3 ], [ null, %2 ]
  ret ptr %72
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_main_id_flag_listbase(ptr nocapture noundef readonly %0, i16 noundef signext %1, i8 noundef zeroext %2) local_unnamed_addr #7 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 5
  %11 = load i16, ptr %10, align 2, !tbaa !38
  %12 = or i16 %11, %1
  store i16 %12, ptr %10, align 2, !tbaa !38
  %13 = load ptr, ptr %9, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %8, !llvm.loop !57

15:                                               ; preds = %3
  %16 = xor i16 %1, -1
  %17 = load ptr, ptr %0, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %24, %19 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 5
  %22 = load i16, ptr %21, align 2, !tbaa !38
  %23 = and i16 %22, %16
  store i16 %23, ptr %21, align 2, !tbaa !38
  %24 = load ptr, ptr %20, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %19, !llvm.loop !59

26:                                               ; preds = %8, %19, %5, %15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_main_id_flag_all(ptr noundef %0, i16 noundef signext %1, i8 noundef zeroext %2) local_unnamed_addr #7 {
  %4 = alloca [35 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %4) #17
  %5 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %4) #19
  br label %6

6:                                                ; preds = %3, %6
  %7 = phi i64 [ 34, %3 ], [ %8, %6 ]
  %8 = add nsw i64 %7, -1
  %9 = getelementptr inbounds [35 x ptr], ptr %4, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  tail call void @BKE_main_id_flag_listbase(ptr noundef %10, i16 noundef signext %1, i8 noundef zeroext %2) #19
  %11 = icmp eq i64 %8, 0
  br i1 %11, label %12, label %6, !llvm.loop !60

12:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @set_listbasepointers(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 23
  store ptr %3, ptr %1, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 34
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr %4, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 24
  %7 = getelementptr inbounds ptr, ptr %1, i64 2
  store ptr %6, ptr %7, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 41
  %9 = getelementptr inbounds ptr, ptr %1, i64 3
  store ptr %8, ptr %9, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 35
  %11 = getelementptr inbounds ptr, ptr %1, i64 4
  store ptr %10, ptr %11, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 19
  %13 = getelementptr inbounds ptr, ptr %1, i64 5
  store ptr %12, ptr %13, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %15 = getelementptr inbounds ptr, ptr %1, i64 6
  store ptr %14, ptr %15, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %17 = getelementptr inbounds ptr, ptr %1, i64 7
  store ptr %16, ptr %17, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 28
  %19 = getelementptr inbounds ptr, ptr %1, i64 8
  store ptr %18, ptr %19, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 33
  %21 = getelementptr inbounds ptr, ptr %1, i64 9
  store ptr %20, ptr %21, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 14
  %23 = getelementptr inbounds ptr, ptr %1, i64 10
  store ptr %22, ptr %23, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 15
  %25 = getelementptr inbounds ptr, ptr %1, i64 11
  store ptr %24, ptr %25, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 16
  %27 = getelementptr inbounds ptr, ptr %1, i64 12
  store ptr %26, ptr %27, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 20
  %29 = getelementptr inbounds ptr, ptr %1, i64 13
  store ptr %28, ptr %29, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 21
  %31 = getelementptr inbounds ptr, ptr %1, i64 14
  store ptr %30, ptr %31, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 22
  %33 = getelementptr inbounds ptr, ptr %1, i64 15
  store ptr %32, ptr %33, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 29
  %35 = getelementptr inbounds ptr, ptr %1, i64 16
  store ptr %34, ptr %35, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 31
  %37 = getelementptr inbounds ptr, ptr %1, i64 17
  store ptr %36, ptr %37, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 32
  %39 = getelementptr inbounds ptr, ptr %1, i64 18
  store ptr %38, ptr %39, align 8, !tbaa !34
  %40 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 38
  %41 = getelementptr inbounds ptr, ptr %1, i64 19
  store ptr %40, ptr %41, align 8, !tbaa !34
  %42 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 39
  %43 = getelementptr inbounds ptr, ptr %1, i64 20
  store ptr %42, ptr %43, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 36
  %45 = getelementptr inbounds ptr, ptr %1, i64 21
  store ptr %44, ptr %45, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 27
  %47 = getelementptr inbounds ptr, ptr %1, i64 22
  store ptr %46, ptr %47, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 37
  %49 = getelementptr inbounds ptr, ptr %1, i64 23
  store ptr %48, ptr %49, align 8, !tbaa !34
  %50 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 30
  %51 = getelementptr inbounds ptr, ptr %1, i64 24
  store ptr %50, ptr %51, align 8, !tbaa !34
  %52 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 25
  %53 = getelementptr inbounds ptr, ptr %1, i64 25
  store ptr %52, ptr %53, align 8, !tbaa !34
  %54 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  %55 = getelementptr inbounds ptr, ptr %1, i64 26
  store ptr %54, ptr %55, align 8, !tbaa !34
  %56 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %57 = getelementptr inbounds ptr, ptr %1, i64 27
  store ptr %56, ptr %57, align 8, !tbaa !34
  %58 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 44
  %59 = getelementptr inbounds ptr, ptr %1, i64 28
  store ptr %58, ptr %59, align 8, !tbaa !34
  %60 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %61 = getelementptr inbounds ptr, ptr %1, i64 29
  store ptr %60, ptr %61, align 8, !tbaa !34
  %62 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 12
  %63 = getelementptr inbounds ptr, ptr %1, i64 30
  store ptr %62, ptr %63, align 8, !tbaa !34
  %64 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  %65 = getelementptr inbounds ptr, ptr %1, i64 31
  store ptr %64, ptr %65, align 8, !tbaa !34
  %66 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 42
  %67 = getelementptr inbounds ptr, ptr %1, i64 32
  store ptr %66, ptr %67, align 8, !tbaa !34
  %68 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 43
  %69 = getelementptr inbounds ptr, ptr %1, i64 33
  store ptr %68, ptr %69, align 8, !tbaa !34
  %70 = getelementptr inbounds ptr, ptr %1, i64 34
  store ptr null, ptr %70, align 8, !tbaa !34
  ret i32 34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_main_lib_objects_recalc_all(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1, %14
  %6 = phi ptr [ %15, %14 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 103
  %12 = load i8, ptr %11, align 1, !tbaa !65
  %13 = or i8 %12, 7
  store i8 %13, ptr %11, align 1, !tbaa !65
  br label %14

14:                                               ; preds = %5, %10
  %15 = load ptr, ptr %6, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %5, !llvm.loop !66

17:                                               ; preds = %14, %1
  tail call void @DAG_id_type_tag(ptr noundef %0, i16 noundef signext 16975) #18
  ret void
}

; Function Attrs: optsize
declare void @DAG_id_type_tag(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @alloc_libblock_notest(i16 noundef signext %1) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @which_libbase(ptr noundef %0, i16 noundef signext %1) #19
  tail call void @BKE_main_lock(ptr noundef %0) #19
  tail call void @BLI_addtail(ptr noundef %7, ptr noundef nonnull %4) #18
  %8 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 6
  store i32 1, ptr %8, align 4, !tbaa !42
  %9 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 7
  store i32 0, ptr %9, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  store i16 %1, ptr %10, align 8, !tbaa !43
  %11 = tail call zeroext i8 @new_id(ptr noundef %7, ptr noundef nonnull %4, ptr noundef %2) #19
  tail call void @BKE_main_unlock(ptr noundef %0) #19
  br label %12

12:                                               ; preds = %6, %3
  tail call void @DAG_id_type_tag(ptr noundef %0, i16 noundef signext %1) #18
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alloc_libblock_notest(i16 noundef signext %0) unnamed_addr #0 !PGOFuncName !68 {
  switch i16 %0, label %101 [
    i16 17235, label %2
    i16 18764, label %5
    i16 16975, label %8
    i16 17741, label %11
    i16 21827, label %14
    i16 16973, label %17
    i16 16717, label %20
    i16 17748, label %23
    i16 19785, label %26
    i16 21580, label %29
    i16 16716, label %32
    i16 16707, label %35
    i16 20553, label %38
    i16 17739, label %41
    i16 20311, label %44
    i16 21075, label %47
    i16 18006, label %50
    i16 22612, label %53
    i16 17232, label %98
    i16 19283, label %56
    i16 20307, label %59
    i16 21063, label %62
    i16 21057, label %65
    i16 17217, label %68
    i16 21582, label %71
    i16 21058, label %74
    i16 16720, label %77
    i16 19799, label %80
    i16 17479, label %83
    i16 17229, label %86
    i16 21325, label %89
    i16 21324, label %92
    i16 19536, label %95
  ]

2:                                                ; preds = %1
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 4960, ptr noundef nonnull @.str.7) #18
  br label %101

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 2200, ptr noundef nonnull @.str.8) #18
  br label %101

8:                                                ; preds = %1
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 1424, ptr noundef nonnull @.str.9) #18
  br label %101

11:                                               ; preds = %1
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = tail call ptr %12(i64 noundef 1376, ptr noundef nonnull @.str.10) #18
  br label %101

14:                                               ; preds = %1
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %16 = tail call ptr %15(i64 noundef 528, ptr noundef nonnull @.str.11) #18
  br label %101

17:                                               ; preds = %1
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %19 = tail call ptr %18(i64 noundef 248, ptr noundef nonnull @.str.12) #18
  br label %101

20:                                               ; preds = %1
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %22 = tail call ptr %21(i64 noundef 944, ptr noundef nonnull @.str.13) #18
  br label %101

23:                                               ; preds = %1
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %25 = tail call ptr %24(i64 noundef 416, ptr noundef nonnull @.str.14) #18
  br label %101

26:                                               ; preds = %1
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %28 = tail call ptr %27(i64 noundef 1928, ptr noundef nonnull @.str.15) #18
  br label %101

29:                                               ; preds = %1
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %31 = tail call ptr %30(i64 noundef 280, ptr noundef nonnull @.str.16) #18
  br label %101

32:                                               ; preds = %1
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %34 = tail call ptr %33(i64 noundef 520, ptr noundef nonnull @.str.17) #18
  br label %101

35:                                               ; preds = %1
  %36 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %37 = tail call ptr %36(i64 noundef 200, ptr noundef nonnull @.str.18) #18
  br label %101

38:                                               ; preds = %1
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %40 = tail call ptr %39(i64 noundef 160, ptr noundef nonnull @.str.19) #18
  br label %101

41:                                               ; preds = %1
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %43 = tail call ptr %42(i64 noundef 224, ptr noundef nonnull @.str.20) #18
  br label %101

44:                                               ; preds = %1
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %46 = tail call ptr %45(i64 noundef 528, ptr noundef nonnull @.str.21) #18
  br label %101

47:                                               ; preds = %1
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %49 = tail call ptr %48(i64 noundef 248, ptr noundef nonnull @.str.22) #18
  br label %101

50:                                               ; preds = %1
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %52 = tail call ptr %51(i64 noundef 1168, ptr noundef nonnull @.str.23) #18
  br label %101

53:                                               ; preds = %1
  %54 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %55 = tail call ptr %54(i64 noundef 208, ptr noundef nonnull @.str.24) #18
  br label %101

56:                                               ; preds = %1
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %58 = tail call ptr %57(i64 noundef 184, ptr noundef nonnull @.str.25) #18
  br label %101

59:                                               ; preds = %1
  %60 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %61 = tail call ptr %60(i64 noundef 1232, ptr noundef nonnull @.str.26) #18
  br label %101

62:                                               ; preds = %1
  %63 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %64 = tail call ptr %63(i64 noundef 152, ptr noundef nonnull @.str.27) #18
  br label %101

65:                                               ; preds = %1
  %66 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %67 = tail call ptr %66(i64 noundef 256, ptr noundef nonnull @.str.28) #18
  br label %101

68:                                               ; preds = %1
  %69 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %70 = tail call ptr %69(i64 noundef 200, ptr noundef nonnull @.str.29) #18
  br label %101

71:                                               ; preds = %1
  %72 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %73 = tail call ptr %72(i64 noundef 432, ptr noundef nonnull @.str.30) #18
  br label %101

74:                                               ; preds = %1
  %75 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %76 = tail call ptr %75(i64 noundef 2056, ptr noundef nonnull @.str.31) #18
  br label %101

77:                                               ; preds = %1
  %78 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %79 = tail call ptr %78(i64 noundef 800, ptr noundef nonnull @.str.32) #18
  br label %101

80:                                               ; preds = %1
  %81 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %82 = tail call ptr %81(i64 noundef 352, ptr noundef nonnull @.str.33) #18
  br label %101

83:                                               ; preds = %1
  %84 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %85 = tail call ptr %84(i64 noundef 152, ptr noundef nonnull @.str.34) #18
  br label %101

86:                                               ; preds = %1
  %87 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %88 = tail call ptr %87(i64 noundef 2392, ptr noundef nonnull @.str.35) #18
  br label %101

89:                                               ; preds = %1
  %90 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %91 = tail call ptr %90(i64 noundef 168, ptr noundef nonnull @.str.36) #18
  br label %101

92:                                               ; preds = %1
  %93 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %94 = tail call ptr %93(i64 noundef 464, ptr noundef nonnull @.str.37) #18
  br label %101

95:                                               ; preds = %1
  %96 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %97 = tail call ptr %96(i64 noundef 160, ptr noundef nonnull @.str.38) #18
  br label %101

98:                                               ; preds = %1
  %99 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %100 = tail call ptr %99(i64 noundef 136, ptr noundef nonnull @.str.39) #18
  br label %101

101:                                              ; preds = %1, %98, %95, %92, %89, %86, %83, %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %5, %2
  %102 = phi ptr [ null, %1 ], [ %97, %95 ], [ %94, %92 ], [ %91, %89 ], [ %88, %86 ], [ %85, %83 ], [ %82, %80 ], [ %79, %77 ], [ %76, %74 ], [ %73, %71 ], [ %70, %68 ], [ %67, %65 ], [ %64, %62 ], [ %61, %59 ], [ %58, %56 ], [ %100, %98 ], [ %55, %53 ], [ %52, %50 ], [ %49, %47 ], [ %46, %44 ], [ %43, %41 ], [ %40, %38 ], [ %37, %35 ], [ %34, %32 ], [ %31, %29 ], [ %28, %26 ], [ %25, %23 ], [ %22, %20 ], [ %19, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ], [ %7, %5 ], [ %4, %2 ]
  ret ptr %102
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_main_lock(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 47
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  tail call void @BLI_spin_lock(ptr noundef %3) #18
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @new_id(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %32

8:                                                ; preds = %3
  %9 = icmp eq ptr %0, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = load ptr, ptr @G, align 8, !tbaa !54
  %12 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %13 = load i16, ptr %12, align 8, !tbaa !43
  %14 = tail call ptr @which_libbase(ptr noundef %11, i16 noundef signext %13) #19
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi ptr [ %14, %10 ], [ %0, %8 ]
  %17 = icmp eq ptr %2, null
  %18 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %19 = select i1 %17, ptr %18, ptr %2
  %20 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %19, i64 noundef 64) #18
  %21 = load i8, ptr %4, align 16, !tbaa !72
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull @.str.6, i64 noundef 64) #18
  br label %29

25:                                               ; preds = %15
  %26 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #20
  %27 = trunc i64 %26 to i32
  %28 = call i32 @BLI_utf8_invalid_strip(ptr noundef nonnull %4, i32 noundef %27) #18
  br label %29

29:                                               ; preds = %25, %23
  %30 = call fastcc zeroext i8 @check_for_dupid(ptr noundef %16, ptr noundef nonnull %1, ptr noundef nonnull %4) #19
  %31 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) %4) #18
  call void @id_sort_by_name(ptr noundef %16, ptr noundef nonnull %1) #19
  br label %32

32:                                               ; preds = %3, %29
  %33 = phi i8 [ %30, %29 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_main_unlock(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 47
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  tail call void @BLI_spin_unlock(ptr noundef %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_libblock_copy_data(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %5) #18
  %9 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 9
  store ptr %8, ptr %9, align 8, !tbaa !73
  br label %10

10:                                               ; preds = %7, %3
  tail call fastcc void @id_copy_animdata(ptr noundef %0, i8 noundef zeroext %2) #19
  ret void
}

; Function Attrs: optsize
declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @id_copy_animdata(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !74 {
  %3 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.IdAdtTemplate, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = tail call ptr @BKE_copy_animdata(ptr noundef %7, i8 noundef zeroext %1) #18
  store ptr %8, ptr %6, align 8, !tbaa !75
  br label %9

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_libblock_copy_ex(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %4 = load i16, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %6 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext %4, ptr noundef nonnull %5) #19
  %7 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %8 = tail call i64 %7(ptr noundef %6) #18
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %9, 120
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, ptr %6, i64 120
  %13 = getelementptr inbounds i8, ptr %1, i64 120
  %14 = add i64 %8, -120
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %12, ptr nonnull align 1 %13, i64 %14, i1 false)
  br label %15

15:                                               ; preds = %11, %2
  %16 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 2
  store ptr %6, ptr %16, align 8, !tbaa !77
  %17 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 5
  %18 = load i16, ptr %17, align 2, !tbaa !38
  %19 = or i16 %18, 256
  store i16 %19, ptr %17, align 2, !tbaa !38
  tail call void @BKE_libblock_copy_data(ptr noundef %6, ptr noundef nonnull %1, i8 noundef zeroext 0) #19
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_libblock_copy_nolib(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %4 = load i16, ptr %3, align 8, !tbaa !43
  %5 = tail call fastcc ptr @alloc_libblock_notest(i16 noundef signext %4) #19
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %3, i64 noundef 66) #18
  %8 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %9 = tail call i64 %8(ptr noundef %5) #18
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %10, 120
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds i8, ptr %5, i64 120
  %14 = getelementptr inbounds i8, ptr %0, i64 120
  %15 = add i64 %9, -120
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %13, ptr nonnull align 1 %14, i64 %15, i1 false)
  br label %16

16:                                               ; preds = %12, %2
  %17 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 2
  store ptr %5, ptr %17, align 8, !tbaa !77
  %18 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 5
  %19 = load i16, ptr %18, align 2, !tbaa !38
  %20 = or i16 %19, 256
  store i16 %20, ptr %18, align 2, !tbaa !38
  %21 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 6
  store i32 1, ptr %21, align 4, !tbaa !42
  tail call void @BKE_libblock_copy_data(ptr noundef %5, ptr noundef nonnull %0, i8 noundef zeroext %1) #19
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_libblock_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !54
  %3 = tail call ptr @BKE_libblock_copy_ex(ptr noundef %2, ptr noundef %0) #19
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_free_windowmanager_cb(ptr noundef %0) local_unnamed_addr #10 {
  store ptr %0, ptr @free_windowmanager_cb, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_free_notifier_reference_cb(ptr noundef %0) local_unnamed_addr #10 {
  store ptr %0, ptr @free_notifier_reference_cb, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_libblock_free_data(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  tail call void @IDP_FreeProperty(ptr noundef nonnull %4) #18
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %8 = load ptr, ptr %3, align 8, !tbaa !73
  tail call void %7(ptr noundef %8) #18
  br label %9

9:                                                ; preds = %6, %2
  tail call void @BKE_animdata_main_cb(ptr noundef %0, ptr noundef nonnull @animdata_dtar_clear_cb, ptr noundef nonnull %1) #18
  ret void
}

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_animdata_main_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @animdata_dtar_clear_cb(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) #7 !PGOFuncName !78 {
  %4 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %3, %36
  %8 = phi ptr [ %37, %36 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.FCurve, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = icmp eq ptr %10, null
  br i1 %11, label %36, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %10, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %36, label %18

15:                                               ; preds = %32, %18
  %16 = load ptr, ptr %19, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18, !llvm.loop !81

18:                                               ; preds = %12, %15
  %19 = phi ptr [ %16, %15 ], [ %13, %12 ]
  %20 = getelementptr inbounds %struct.DriverVar, ptr %19, i64 0, i32 4
  %21 = load i16, ptr %20, align 8, !tbaa !82
  %22 = sext i16 %21 to i32
  %23 = icmp sgt i16 %21, 0
  br i1 %23, label %24, label %15

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.DriverVar, ptr %19, i64 0, i32 3
  br label %26

26:                                               ; preds = %24, %32
  %27 = phi i32 [ %33, %32 ], [ 0, %24 ]
  %28 = phi ptr [ %34, %32 ], [ %25, %24 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !84
  %30 = icmp eq ptr %29, %2
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store ptr null, ptr %28, align 8, !tbaa !84
  br label %32

32:                                               ; preds = %26, %31
  %33 = add nuw nsw i32 %27, 1
  %34 = getelementptr inbounds %struct.DriverTarget, ptr %28, i64 1
  %35 = icmp eq i32 %33, %22
  br i1 %35, label %15, label %26, !llvm.loop !86

36:                                               ; preds = %15, %12, %7
  %37 = load ptr, ptr %8, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %7, !llvm.loop !87

39:                                               ; preds = %36, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_libblock_free_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %5 = load i16, ptr %4, align 8, !tbaa !43
  tail call void @DAG_id_type_tag(ptr noundef %0, i16 noundef signext %5) #18
  switch i16 %5, label %42 [
    i16 17235, label %6
    i16 18764, label %7
    i16 16975, label %8
    i16 17741, label %9
    i16 21827, label %10
    i16 16973, label %11
    i16 16717, label %12
    i16 17748, label %13
    i16 19785, label %14
    i16 21580, label %15
    i16 16716, label %16
    i16 16707, label %17
    i16 20553, label %18
    i16 17739, label %19
    i16 20311, label %20
    i16 21075, label %21
    i16 18006, label %22
    i16 22612, label %23
    i16 17232, label %41
    i16 19283, label %24
    i16 20307, label %25
    i16 21063, label %26
    i16 21057, label %27
    i16 17217, label %28
    i16 21582, label %29
    i16 21058, label %30
    i16 16720, label %31
    i16 19799, label %32
    i16 17479, label %36
    i16 17229, label %37
    i16 21325, label %38
    i16 21324, label %39
    i16 19536, label %40
  ]

6:                                                ; preds = %3
  tail call void @BKE_scene_free(ptr noundef nonnull %1) #18
  br label %42

7:                                                ; preds = %3
  tail call fastcc void @BKE_library_free(ptr noundef nonnull %1) #19
  br label %42

8:                                                ; preds = %3
  tail call void @BKE_object_free_ex(ptr noundef nonnull %1, i8 noundef zeroext %2) #18
  br label %42

9:                                                ; preds = %3
  tail call void @BKE_mesh_free(ptr noundef nonnull %1, i32 noundef 1) #18
  br label %42

10:                                               ; preds = %3
  tail call void @BKE_curve_free(ptr noundef nonnull %1) #18
  br label %42

11:                                               ; preds = %3
  tail call void @BKE_mball_free(ptr noundef nonnull %1) #18
  br label %42

12:                                               ; preds = %3
  tail call void @BKE_material_free(ptr noundef nonnull %1) #18
  br label %42

13:                                               ; preds = %3
  tail call void @BKE_texture_free(ptr noundef nonnull %1) #18
  br label %42

14:                                               ; preds = %3
  tail call void @BKE_image_free(ptr noundef nonnull %1) #18
  br label %42

15:                                               ; preds = %3
  tail call void @BKE_lattice_free(ptr noundef nonnull %1) #18
  br label %42

16:                                               ; preds = %3
  tail call void @BKE_lamp_free(ptr noundef nonnull %1) #18
  br label %42

17:                                               ; preds = %3
  tail call void @BKE_camera_free(ptr noundef nonnull %1) #18
  br label %42

18:                                               ; preds = %3
  tail call void @BKE_ipo_free(ptr noundef nonnull %1) #18
  br label %42

19:                                               ; preds = %3
  tail call void @BKE_key_free(ptr noundef nonnull %1) #18
  br label %42

20:                                               ; preds = %3
  tail call void @BKE_world_free(ptr noundef nonnull %1) #18
  br label %42

21:                                               ; preds = %3
  tail call void @BKE_screen_free(ptr noundef nonnull %1) #18
  br label %42

22:                                               ; preds = %3
  tail call void @BKE_vfont_free(ptr noundef nonnull %1) #18
  br label %42

23:                                               ; preds = %3
  tail call void @BKE_text_free(ptr noundef nonnull %1) #18
  br label %42

24:                                               ; preds = %3
  tail call void @BKE_speaker_free(ptr noundef nonnull %1) #18
  br label %42

25:                                               ; preds = %3
  tail call void @BKE_sound_free(ptr noundef nonnull %1) #18
  br label %42

26:                                               ; preds = %3
  tail call void @BKE_group_free(ptr noundef nonnull %1) #18
  br label %42

27:                                               ; preds = %3
  tail call void @BKE_armature_free(ptr noundef nonnull %1) #18
  br label %42

28:                                               ; preds = %3
  tail call void @BKE_action_free(ptr noundef nonnull %1) #18
  br label %42

29:                                               ; preds = %3
  tail call void @ntreeFreeTree_ex(ptr noundef nonnull %1, i8 noundef zeroext %2) #18
  br label %42

30:                                               ; preds = %3
  tail call void @BKE_brush_free(ptr noundef nonnull %1) #18
  br label %42

31:                                               ; preds = %3
  tail call void @BKE_particlesettings_free(ptr noundef nonnull %1) #18
  br label %42

32:                                               ; preds = %3
  %33 = load ptr, ptr @free_windowmanager_cb, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  tail call void %33(ptr noundef null, ptr noundef nonnull %1) #18
  br label %42

36:                                               ; preds = %3
  tail call void @BKE_gpencil_free(ptr noundef nonnull %1) #18
  br label %42

37:                                               ; preds = %3
  tail call void @BKE_movieclip_free(ptr noundef nonnull %1) #18
  br label %42

38:                                               ; preds = %3
  tail call void @BKE_mask_free(ptr noundef %0, ptr noundef nonnull %1) #18
  br label %42

39:                                               ; preds = %3
  tail call void @BKE_linestyle_free(ptr noundef nonnull %1) #18
  br label %42

40:                                               ; preds = %3
  tail call void @BKE_palette_free(ptr noundef nonnull %1) #18
  br label %42

41:                                               ; preds = %3
  tail call void @BKE_paint_curve_free(ptr noundef nonnull %1) #18
  br label %42

42:                                               ; preds = %32, %35, %3, %41, %40, %39, %38, %37, %36, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  tail call void @BKE_main_lock(ptr noundef %0) #19
  %43 = load ptr, ptr @free_notifier_reference_cb, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void %43(ptr noundef nonnull %1) #18
  br label %46

46:                                               ; preds = %45, %42
  %47 = tail call ptr @which_libbase(ptr noundef %0, i16 noundef signext %5) #19
  tail call void @BLI_remlink(ptr noundef %47, ptr noundef nonnull %1) #18
  tail call void @BKE_libblock_free_data(ptr noundef %0, ptr noundef nonnull %1) #19
  tail call void @BKE_main_unlock(ptr noundef %0) #19
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %48(ptr noundef nonnull %1) #18
  ret void
}

; Function Attrs: optsize
declare void @BKE_scene_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BKE_library_free(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !88 {
  %2 = getelementptr inbounds %struct.Library, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @freePackedFile(ptr noundef nonnull %3) #18
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_object_free_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_curve_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mball_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_material_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_texture_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_lattice_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_lamp_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_camera_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_ipo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_key_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_world_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_screen_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_vfont_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_text_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_speaker_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sound_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_group_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_armature_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_action_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ntreeFreeTree_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_brush_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_particlesettings_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_gpencil_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_movieclip_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_linestyle_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_palette_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_paint_curve_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_libblock_free_us(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !42
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %3, align 4, !tbaa !42
  %6 = icmp slt i32 %4, 1
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Library, ptr %9, i64 0, i32 3
  %13 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %5) #19
  br label %18

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %16, i32 noundef %5) #19
  br label %18

18:                                               ; preds = %15, %11
  %19 = load i32, ptr %3, align 4, !tbaa !42
  br label %20

20:                                               ; preds = %18, %2
  %21 = phi i32 [ %19, %18 ], [ %5, %2 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %25 = load i16, ptr %24, align 8, !tbaa !43
  %26 = icmp eq i16 %25, 16975
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void @BKE_object_unlink(ptr noundef nonnull %1) #18
  br label %28

28:                                               ; preds = %27, %23
  tail call void @BKE_libblock_free(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %29

29:                                               ; preds = %28, %20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_main_new() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 1904, ptr noundef nonnull @.str.3) #18
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 4, ptr noundef nonnull @.str.4) #18
  %5 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 46
  store ptr %4, ptr %5, align 8, !tbaa !91
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %7 = tail call ptr %6(i64 noundef 4, ptr noundef nonnull @.str.5) #18
  %8 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 47
  store ptr %7, ptr %8, align 8, !tbaa !69
  tail call void @BLI_spin_init(ptr noundef %7) #18
  ret ptr %2
}

; Function Attrs: optsize
declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_main_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [35 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %2) #17
  %3 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %2) #19
  br label %7

4:                                                ; preds = %13, %7
  %5 = add nsw i64 %8, -1
  %6 = icmp eq i64 %8, 0
  br i1 %6, label %17, label %7, !llvm.loop !92

7:                                                ; preds = %1, %4
  %8 = phi i64 [ 33, %1 ], [ %5, %4 ]
  %9 = getelementptr inbounds [35 x ptr], ptr %2, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = icmp eq ptr %11, null
  br i1 %12, label %4, label %13

13:                                               ; preds = %7, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %7 ]
  tail call void @BKE_libblock_free_ex(ptr noundef %0, ptr noundef nonnull %14, i8 noundef zeroext 0) #19
  %15 = load ptr, ptr %10, align 8, !tbaa !93
  %16 = icmp eq ptr %15, null
  br i1 %16, label %4, label %13, !llvm.loop !94

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 47
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  tail call void @BLI_spin_end(ptr noundef %19) #18
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %21 = load ptr, ptr %18, align 8, !tbaa !69
  tail call void %20(ptr noundef %21) #18
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 46
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  tail call void %22(ptr noundef %24) #18
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef %0) #18
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_libblock_find_name_ex(ptr noundef %0, i16 noundef signext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @which_libbase(ptr noundef %0, i16 noundef signext %1) #19
  %5 = tail call ptr @BLI_findstring(ptr noundef %4, ptr noundef %2, i32 noundef 34) #18
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_libblock_find_name(i16 noundef signext %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @G, align 8, !tbaa !54
  %4 = tail call ptr @BKE_libblock_find_name_ex(ptr noundef %3, i16 noundef signext %0, ptr noundef %1) #19
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @id_sort_by_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !95
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  tail call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef %1) #18
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %12 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  br label %13

13:                                               ; preds = %10, %27
  %14 = phi ptr [ %8, %10 ], [ %28, %27 ]
  %15 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 4
  %16 = tail call i32 @BLI_strcasecmp(ptr noundef nonnull %15, ptr noundef nonnull %11) #18
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %12, align 8, !tbaa !71
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef nonnull %1) #18
  br label %31

26:                                               ; preds = %13
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef %1) #18
  br label %31

27:                                               ; preds = %22, %18
  %28 = load ptr, ptr %14, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !96

30:                                               ; preds = %27, %7
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %1) #18
  br label %31

31:                                               ; preds = %26, %25, %30, %2
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_utf8_invalid_strip(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_for_dupid(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !97 {
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca [74 x i8], align 16
  %7 = alloca [74 x i8], align 16
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 74, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 74, ptr nonnull %7) #17
  %9 = tail call fastcc ptr @is_dupid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %117, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds [74 x i8], ptr %6, i64 0, i64 59
  %13 = getelementptr inbounds [74 x i8], ptr %6, i64 0, i64 58
  br label %14

14:                                               ; preds = %11, %112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %15 = call i32 @BLI_split_name_num(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef %2, i8 noundef zeroext 46) #18
  %16 = load i32, ptr %4, align 4
  %17 = icmp sgt i32 %16, 999
  %18 = icmp sgt i32 %15, 58
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i8 0, ptr %13, align 2, !tbaa !72
  br label %24

21:                                               ; preds = %14
  %22 = icmp sgt i32 %15, 59
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  store i8 0, ptr %12, align 1, !tbaa !72
  br label %24

24:                                               ; preds = %21, %23, %20
  %25 = phi i32 [ 58, %20 ], [ 59, %23 ], [ %15, %21 ]
  %26 = load ptr, ptr %0, align 8, !tbaa !34
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = sext i32 %25 to i64
  br label %40

30:                                               ; preds = %69
  %31 = load i32, ptr %4, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi i32 [ %31, %30 ], [ %16, %24 ]
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %82

35:                                               ; preds = %32
  %36 = add nsw i32 %33, -1
  %37 = call i32 @llvm.umin.i32(i32 %36, i32 63)
  %38 = add nuw nsw i32 %37, 1
  %39 = zext nneg i32 %38 to i64
  br label %72

40:                                               ; preds = %28, %69
  %41 = phi ptr [ %26, %28 ], [ %70, %69 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  %42 = icmp eq ptr %41, %1
  br i1 %42, label %69, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !71
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %69

47:                                               ; preds = %43
  %48 = load i8, ptr %2, align 1, !tbaa !72
  %49 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 4, i64 2
  %50 = load i8, ptr %49, align 1, !tbaa !72
  %51 = icmp eq i8 %48, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = call i32 @strncmp(ptr noundef nonnull %2, ptr noundef nonnull %49, i64 noundef %29) #20
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = call i32 @BLI_split_name_num(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %49, i8 noundef zeroext 46) #18
  %57 = icmp eq i32 %56, %25
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load i32, ptr %8, align 4, !tbaa !98
  %60 = icmp slt i32 %59, 64
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = sext i32 %59 to i64
  %63 = getelementptr inbounds [64 x i8], ptr %5, i64 0, i64 %62
  store i8 1, ptr %63, align 1, !tbaa !72
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, ptr %4, align 4
  %66 = icmp sgt i32 %65, %59
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = add nsw i32 %59, 1
  store i32 %68, ptr %4, align 4, !tbaa !98
  br label %69

69:                                               ; preds = %64, %67, %55, %52, %47, %43, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  %70 = load ptr, ptr %41, align 8, !tbaa !34
  %71 = icmp eq ptr %70, null
  br i1 %71, label %30, label %40, !llvm.loop !99

72:                                               ; preds = %35, %79
  %73 = phi i64 [ 0, %35 ], [ %80, %79 ]
  %74 = getelementptr inbounds [64 x i8], ptr %5, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !72
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = trunc i64 %73 to i32
  store i32 %78, ptr %4, align 4, !tbaa !98
  br label %82

79:                                               ; preds = %72
  %80 = add nuw nsw i64 %73, 1
  %81 = icmp eq i64 %80, %39
  br i1 %81, label %82, label %72, !llvm.loop !100

82:                                               ; preds = %79, %32, %77
  %83 = phi i32 [ %78, %77 ], [ %33, %32 ], [ %33, %79 ]
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %82
  %86 = sext i32 %25 to i64
  %87 = getelementptr inbounds i8, ptr %2, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !72
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %85
  %91 = call fastcc ptr @is_dupid(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) #19
  %92 = icmp ne ptr %91, null
  %93 = icmp sgt i32 %25, 2
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = zext nneg i32 %25 to i64
  br label %97

97:                                               ; preds = %95, %97
  %98 = phi i64 [ %96, %95 ], [ %99, %97 ]
  %99 = add nsw i64 %98, -1
  %100 = getelementptr inbounds i8, ptr %2, i64 %99
  store i8 0, ptr %100, align 1, !tbaa !72
  %101 = call fastcc ptr @is_dupid(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) #19
  %102 = icmp ne ptr %101, null
  %103 = icmp ugt i64 %98, 3
  %104 = and i1 %102, %103
  br i1 %104, label %97, label %105, !llvm.loop !101

105:                                              ; preds = %97, %90
  %106 = phi ptr [ %91, %90 ], [ %101, %97 ]
  %107 = icmp eq ptr %106, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %105, %82
  %109 = icmp sgt i32 %83, 999
  %110 = icmp sgt i32 %25, 58
  %111 = select i1 %109, i1 %110, i1 false
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  store i8 0, ptr %13, align 2, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %2, ptr noundef nonnull align 16 dereferenceable(59) %6, i64 59, i1 false)
  %113 = call fastcc ptr @is_dupid(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #19
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %14

115:                                              ; preds = %85, %108
  %116 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %2, i64 noundef 64, ptr noundef nonnull @.str.40, ptr noundef nonnull %6, i32 noundef %83) #18
  br label %117

117:                                              ; preds = %105, %112, %3, %115
  %118 = phi i8 [ 1, %115 ], [ 0, %3 ], [ 1, %105 ], [ 0, %112 ]
  call void @llvm.lifetime.end.p0(i64 74, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 74, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret i8 %118
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @id_clear_lib_data(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @BKE_id_lib_local_paths(ptr noundef %0, ptr noundef %4, ptr noundef %1) #19
  %5 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 5
  %6 = load i16, ptr %5, align 2, !tbaa !38
  %7 = and i16 %6, 512
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !42
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %10, align 4, !tbaa !42
  br label %13

13:                                               ; preds = %9, %2
  store ptr null, ptr %3, align 8, !tbaa !71
  store i16 0, ptr %5, align 2, !tbaa !38
  %14 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !43
  %16 = tail call ptr @which_libbase(ptr noundef %0, i16 noundef signext %15) #19
  %17 = tail call zeroext i8 @new_id(ptr noundef %16, ptr noundef nonnull %1, ptr noundef null) #19
  %18 = load i16, ptr %14, align 8, !tbaa !43
  switch i16 %18, label %37 [
    i16 17235, label %19
    i16 16717, label %21
    i16 16716, label %23
    i16 20311, label %25
    i16 17748, label %27
    i16 21324, label %29
  ]

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 18
  br label %31

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 103
  br label %31

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.Lamp, ptr %1, i64 0, i32 74
  br label %31

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.World, ptr %1, i64 0, i32 75
  br label %31

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 52
  br label %31

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %1, i64 0, i32 40
  br label %31

31:                                               ; preds = %29, %27, %25, %23, %21, %19
  %32 = phi ptr [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ %22, %21 ], [ %20, %19 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ID, ptr %33, i64 0, i32 3
  store ptr null, ptr %36, align 8, !tbaa !102
  br label %37

37:                                               ; preds = %13, %35, %31
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_main_id_clear_newpoins(ptr noundef %0) local_unnamed_addr #7 {
  %2 = alloca [35 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %2) #17
  %3 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %2) #19
  br label %7

4:                                                ; preds = %13, %7
  %5 = add nsw i64 %8, -1
  %6 = icmp eq i64 %8, 0
  br i1 %6, label %21, label %7, !llvm.loop !106

7:                                                ; preds = %1, %4
  %8 = phi i64 [ 33, %1 ], [ %5, %4 ]
  %9 = getelementptr inbounds [35 x ptr], ptr %2, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %4, label %13

13:                                               ; preds = %7, %13
  %14 = phi ptr [ %19, %13 ], [ %11, %7 ]
  %15 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !77
  %16 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 5
  %17 = load i16, ptr %16, align 2, !tbaa !38
  %18 = and i16 %17, -257
  store i16 %18, ptr %16, align 2, !tbaa !38
  %19 = load ptr, ptr %14, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %4, label %13, !llvm.loop !107

21:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %2) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_main_id_tag_listbase(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #7 {
  %3 = icmp eq i8 %1, 0
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %3, label %7, label %6

6:                                                ; preds = %2
  br i1 %5, label %22, label %8

7:                                                ; preds = %2
  br i1 %5, label %22, label %15

8:                                                ; preds = %6, %8
  %9 = phi ptr [ %13, %8 ], [ %4, %6 ]
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 5
  %11 = load i16, ptr %10, align 2, !tbaa !38
  %12 = or i16 %11, 1024
  store i16 %12, ptr %10, align 2, !tbaa !38
  %13 = load ptr, ptr %9, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %8, !llvm.loop !108

15:                                               ; preds = %7, %15
  %16 = phi ptr [ %20, %15 ], [ %4, %7 ]
  %17 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 5
  %18 = load i16, ptr %17, align 2, !tbaa !38
  %19 = and i16 %18, -1025
  store i16 %19, ptr %17, align 2, !tbaa !38
  %20 = load ptr, ptr %16, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %15, !llvm.loop !109

22:                                               ; preds = %8, %15, %6, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_main_id_tag_idcode(ptr noundef readonly %0, i16 noundef signext %1, i8 noundef zeroext %2) local_unnamed_addr #7 {
  %4 = tail call ptr @which_libbase(ptr noundef %0, i16 noundef signext %1) #19
  tail call void @BKE_main_id_tag_listbase(ptr noundef %4, i8 noundef zeroext %2) #19
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_main_id_tag_all(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #7 {
  %3 = alloca [35 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %3) #17
  %4 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %3) #19
  br label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ 34, %2 ], [ %7, %5 ]
  %7 = add nsw i64 %6, -1
  %8 = getelementptr inbounds [35 x ptr], ptr %3, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  tail call void @BKE_main_id_tag_listbase(ptr noundef %9, i8 noundef zeroext %1) #19
  %10 = icmp eq i64 %7, 0
  br i1 %10, label %11, label %5, !llvm.loop !110

11:                                               ; preds = %5
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_library_make_local(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [35 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %4) #17
  %5 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %4) #19
  %6 = icmp eq i8 %2, 0
  %7 = icmp eq ptr %1, null
  br label %11

8:                                                ; preds = %40, %11
  %9 = add nsw i64 %12, -1
  %10 = icmp eq i64 %12, 0
  br i1 %10, label %42, label %11, !llvm.loop !111

11:                                               ; preds = %3, %8
  %12 = phi i64 [ 33, %3 ], [ %9, %8 ]
  %13 = getelementptr inbounds [35 x ptr], ptr %4, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = icmp eq ptr %15, null
  br i1 %16, label %8, label %17

17:                                               ; preds = %11, %40
  %18 = phi ptr [ %20, %40 ], [ %15, %11 ]
  %19 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 2
  store ptr null, ptr %19, align 8, !tbaa !77
  %20 = load ptr, ptr %18, align 8, !tbaa !112
  %21 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 5
  %22 = load i16, ptr %21, align 2, !tbaa !38
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 259
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %17
  %27 = and i32 %23, 2048
  %28 = icmp eq i32 %27, 0
  %29 = or i1 %6, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !71
  br i1 %7, label %35, label %33

33:                                               ; preds = %30
  %34 = icmp eq ptr %32, %1
  br i1 %34, label %37, label %40

35:                                               ; preds = %30
  %36 = icmp eq ptr %32, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %35
  tail call void @id_clear_lib_data(ptr noundef %0, ptr noundef nonnull %18) #19
  tail call void @id_sort_by_name(ptr noundef nonnull %14, ptr noundef nonnull %18) #19
  br label %40

38:                                               ; preds = %35
  %39 = and i16 %22, -260
  store i16 %39, ptr %21, align 2, !tbaa !38
  br label %40

40:                                               ; preds = %26, %33, %38, %37, %17
  %41 = icmp eq ptr %20, null
  br i1 %41, label %8, label %17, !llvm.loop !113

42:                                               ; preds = %8
  %43 = call i32 @set_listbasepointers(ptr noundef %0, ptr noundef nonnull %4) #19
  br label %47

44:                                               ; preds = %53, %47
  %45 = add nsw i64 %48, -1
  %46 = icmp eq i64 %48, 0
  br i1 %46, label %57, label %47, !llvm.loop !114

47:                                               ; preds = %42, %44
  %48 = phi i64 [ 33, %42 ], [ %45, %44 ]
  %49 = getelementptr inbounds [35 x ptr], ptr %4, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  %52 = icmp eq ptr %51, null
  br i1 %52, label %44, label %53

53:                                               ; preds = %47, %53
  %54 = phi ptr [ %55, %53 ], [ %51, %47 ]
  tail call fastcc void @lib_indirect_test_id(ptr noundef nonnull %54, ptr noundef %1) #19
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %44, label %53, !llvm.loop !115

57:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @lib_indirect_test_id(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #7 !PGOFuncName !116 {
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %81, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Library, ptr %4, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !117
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %81

12:                                               ; preds = %8
  tail call void @id_lib_extern(ptr noundef nonnull %0) #19
  br label %81

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !43
  %16 = icmp eq i16 %15, 16975
  br i1 %16, label %17, label %81

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %19 = load i32, ptr %18, align 8, !tbaa !118
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %23 = load ptr, ptr %22, align 8, !tbaa !119
  %24 = zext nneg i32 %19 to i64
  br label %25

25:                                               ; preds = %21, %39
  %26 = phi i64 [ 0, %21 ], [ %40, %39 ]
  %27 = getelementptr inbounds ptr, ptr %23, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !120
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 5
  %36 = load i16, ptr %35, align 2, !tbaa !124
  %37 = and i16 %36, -4
  %38 = or disjoint i16 %37, 1
  store i16 %38, ptr %35, align 2, !tbaa !124
  br label %39

39:                                               ; preds = %25, %30, %34
  %40 = add nuw nsw i64 %26, 1
  %41 = icmp eq i64 %40, %24
  br i1 %41, label %42, label %25, !llvm.loop !125

42:                                               ; preds = %39, %17
  %43 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 112
  %44 = load ptr, ptr %43, align 8, !tbaa !126
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ID, ptr %44, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !127
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ID, ptr %44, i64 0, i32 5
  %52 = load i16, ptr %51, align 2, !tbaa !129
  %53 = and i16 %52, -4
  %54 = or disjoint i16 %53, 1
  store i16 %54, ptr %51, align 2, !tbaa !129
  br label %55

55:                                               ; preds = %50, %46, %42
  %56 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 11
  %57 = load ptr, ptr %56, align 8, !tbaa !130
  %58 = icmp eq ptr %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !61
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 5
  %65 = load i16, ptr %64, align 2, !tbaa !131
  %66 = and i16 %65, -4
  %67 = or disjoint i16 %66, 1
  store i16 %67, ptr %64, align 2, !tbaa !131
  br label %68

68:                                               ; preds = %63, %59, %55
  %69 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %70 = load ptr, ptr %69, align 8, !tbaa !132
  %71 = icmp eq ptr %70, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.ID, ptr %70, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !133
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.ID, ptr %70, i64 0, i32 5
  %78 = load i16, ptr %77, align 2, !tbaa !134
  %79 = and i16 %78, -4
  %80 = or disjoint i16 %79, 1
  store i16 %80, ptr %77, align 2, !tbaa !134
  br label %81

81:                                               ; preds = %68, %72, %76, %6, %8, %12, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @test_idbutton(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !54
  %3 = load i16, ptr %0, align 2, !tbaa !43
  %4 = tail call ptr @which_libbase(ptr noundef %2, i16 noundef signext %3) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 2
  %8 = tail call ptr @BLI_findstring(ptr noundef nonnull %4, ptr noundef nonnull %7, i32 noundef 34) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = tail call zeroext i8 @new_id(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %7) #19
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @id_sort_by_name(ptr noundef nonnull %4, ptr noundef nonnull %8) #19
  br label %14

14:                                               ; preds = %6, %10, %13, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @rename_id(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %5 = tail call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %1, i64 noundef 64) #18
  %6 = load ptr, ptr @G, align 8, !tbaa !54
  %7 = load i16, ptr %3, align 8, !tbaa !43
  %8 = tail call ptr @which_libbase(ptr noundef %6, i16 noundef signext %7) #19
  %9 = tail call zeroext i8 @new_id(ptr noundef %8, ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @name_uiprefix_id(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i8 32, i8 76
  store i8 %6, ptr %0, align 1, !tbaa !72
  %7 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 5
  %8 = load i16, ptr %7, align 2, !tbaa !38
  %9 = and i16 %8, 512
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !42
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i8 48, i8 32
  br label %16

16:                                               ; preds = %2, %11
  %17 = phi i8 [ %15, %11 ], [ 70, %2 ]
  %18 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %17, ptr %18, align 1, !tbaa !72
  %19 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 32, ptr %19, align 1, !tbaa !72
  %20 = getelementptr inbounds i8, ptr %0, i64 3
  %21 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %22 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %21) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_library_filepath_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Library, ptr %0, i64 0, i32 3
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 1024) #18
  br label %7

7:                                                ; preds = %5, %2
  %8 = getelementptr inbounds %struct.Library, ptr %0, i64 0, i32 4
  %9 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef %1, i64 noundef 1024) #18
  %10 = tail call zeroext i8 @BLI_path_is_rel(ptr noundef nonnull %8) #18
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Library, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !117
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.Library, ptr %14, i64 0, i32 4
  %17 = load ptr, ptr @G, align 8
  %18 = getelementptr inbounds %struct.Main, ptr %17, i64 0, i32 2
  %19 = select i1 %15, ptr %18, ptr %16
  %20 = tail call zeroext i8 @BLI_path_abs(ptr noundef nonnull %8, ptr noundef nonnull %19) #18
  br label %21

21:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_path_is_rel(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_copy_animdata(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @freePackedFile(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @is_dupid(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2) unnamed_addr #14 !PGOFuncName !135 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %3, %21
  %7 = phi ptr [ %22, %21 ], [ %4, %3 ]
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4, i64 2
  %15 = load i8, ptr %14, align 2, !tbaa !72
  %16 = load i8, ptr %2, align 1, !tbaa !72
  %17 = icmp eq i8 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %14) #20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %6, %9, %18, %13
  %22 = load ptr, ptr %7, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %6, !llvm.loop !136

24:                                               ; preds = %21, %18, %3
  %25 = phi ptr [ null, %3 ], [ %7, %18 ], [ null, %21 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: optsize
declare i32 @BLI_split_name_num(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize willreturn memory(read) }

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
!38 = !{!39, !40, i64 98}
!39 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !35, i64 112}
!40 = !{!"short", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!39, !41, i64 100}
!43 = !{!40, !40, i64 0}
!44 = !{!45, !35, i64 144}
!45 = !{!"Mesh", !39, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !46, i64 280, !46, i64 480, !46, i64 680, !46, i64 880, !46, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !47, i64 1352, !41, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !40, i64 1366, !35, i64 1368}
!46 = !{!"CustomData", !35, i64 0, !36, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !35, i64 184, !35, i64 192}
!47 = !{!"float", !36, i64 0}
!48 = !{!49, !35, i64 192}
!49 = !{!"Curve", !39, i64 0, !35, i64 120, !35, i64 128, !50, i64 136, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !36, i64 220, !36, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !47, i64 252, !47, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !47, i64 272, !47, i64 276, !47, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !36, i64 300, !40, i64 304, !36, i64 306, !36, i64 307, !47, i64 308, !47, i64 312, !47, i64 316, !47, i64 320, !47, i64 324, !47, i64 328, !47, i64 332, !47, i64 336, !47, i64 340, !47, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !35, i64 368, !35, i64 376, !36, i64 384, !35, i64 448, !35, i64 456, !35, i64 464, !35, i64 472, !35, i64 480, !41, i64 488, !41, i64 492, !35, i64 496, !51, i64 504, !47, i64 512, !47, i64 516, !47, i64 520, !36, i64 524, !36, i64 525, !36, i64 526}
!50 = !{!"ListBase", !35, i64 0, !35, i64 8}
!51 = !{!"CharInfo", !40, i64 0, !40, i64 2, !36, i64 4, !36, i64 5, !40, i64 6}
!52 = !{!53, !35, i64 192}
!53 = !{!"Lattice", !39, i64 0, !35, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !40, i64 136, !40, i64 138, !40, i64 140, !40, i64 142, !36, i64 144, !36, i64 145, !36, i64 146, !36, i64 147, !41, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !36, i64 208, !35, i64 272}
!54 = !{!55, !35, i64 0}
!55 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !50, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !36, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !36, i64 2104, !41, i64 2108, !41, i64 2112, !36, i64 2116}
!56 = !{i8 0, i8 2}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = distinct !{!59, !58}
!60 = distinct !{!60, !58}
!61 = !{!62, !35, i64 24}
!62 = !{!"Object", !39, i64 0, !35, i64 120, !35, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !63, i64 312, !35, i64 360, !50, i64 368, !50, i64 384, !50, i64 400, !50, i64 416, !41, i64 432, !41, i64 436, !35, i64 440, !35, i64 448, !41, i64 456, !41, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !47, i64 616, !47, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !36, i64 966, !36, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !47, i64 988, !47, i64 992, !47, i64 996, !47, i64 1000, !47, i64 1004, !47, i64 1008, !47, i64 1012, !47, i64 1016, !47, i64 1020, !47, i64 1024, !47, i64 1028, !47, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !36, i64 1042, !36, i64 1043, !40, i64 1044, !36, i64 1046, !36, i64 1047, !47, i64 1048, !47, i64 1052, !50, i64 1056, !50, i64 1072, !50, i64 1088, !50, i64 1104, !47, i64 1120, !40, i64 1124, !40, i64 1126, !36, i64 1128, !41, i64 1144, !41, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !40, i64 1162, !36, i64 1164, !50, i64 1176, !50, i64 1192, !50, i64 1208, !50, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !40, i64 1266, !47, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !64, i64 1304, !64, i64 1312, !41, i64 1320, !41, i64 1324, !50, i64 1328, !50, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !50, i64 1400, !35, i64 1416}
!63 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!64 = !{!"long", !36, i64 0}
!65 = !{!62, !36, i64 1161}
!66 = distinct !{!66, !58}
!67 = !{!39, !41, i64 104}
!68 = !{!"library.c:alloc_libblock_notest"}
!69 = !{!70, !35, i64 1896}
!70 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !64, i64 1048, !36, i64 1056, !40, i64 1072, !35, i64 1080, !50, i64 1088, !50, i64 1104, !50, i64 1120, !50, i64 1136, !50, i64 1152, !50, i64 1168, !50, i64 1184, !50, i64 1200, !50, i64 1216, !50, i64 1232, !50, i64 1248, !50, i64 1264, !50, i64 1280, !50, i64 1296, !50, i64 1312, !50, i64 1328, !50, i64 1344, !50, i64 1360, !50, i64 1376, !50, i64 1392, !50, i64 1408, !50, i64 1424, !50, i64 1440, !50, i64 1456, !50, i64 1472, !50, i64 1488, !50, i64 1504, !50, i64 1520, !50, i64 1536, !50, i64 1552, !50, i64 1568, !50, i64 1584, !50, i64 1600, !50, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!71 = !{!39, !35, i64 24}
!72 = !{!36, !36, i64 0}
!73 = !{!39, !35, i64 112}
!74 = !{!"library.c:id_copy_animdata"}
!75 = !{!76, !35, i64 120}
!76 = !{!"IdAdtTemplate", !39, i64 0, !35, i64 120}
!77 = !{!39, !35, i64 16}
!78 = !{!"library.c:animdata_dtar_clear_cb"}
!79 = !{!80, !35, i64 24}
!80 = !{!"FCurve", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !50, i64 32, !35, i64 48, !35, i64 56, !41, i64 64, !47, i64 68, !40, i64 72, !40, i64 74, !41, i64 76, !35, i64 80, !41, i64 88, !36, i64 92, !47, i64 104, !47, i64 108}
!81 = distinct !{!81, !58}
!82 = !{!83, !40, i64 528}
!83 = !{!"DriverVar", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 80, !40, i64 528, !40, i64 530, !47, i64 532}
!84 = !{!85, !35, i64 0}
!85 = !{!"DriverTarget", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 48, !40, i64 50, !41, i64 52}
!86 = distinct !{!86, !58}
!87 = distinct !{!87, !58}
!88 = !{!"library.c:BKE_library_free"}
!89 = !{!90, !35, i64 2192}
!90 = !{!"Library", !39, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !36, i64 1160, !35, i64 2184, !35, i64 2192}
!91 = !{!70, !35, i64 1888}
!92 = distinct !{!92, !58}
!93 = !{!50, !35, i64 0}
!94 = distinct !{!94, !58}
!95 = !{!50, !35, i64 8}
!96 = distinct !{!96, !58}
!97 = !{!"library.c:check_for_dupid"}
!98 = !{!41, !41, i64 0}
!99 = distinct !{!99, !58}
!100 = distinct !{!100, !58}
!101 = distinct !{!101, !58}
!102 = !{!103, !35, i64 24}
!103 = !{!"bNodeTree", !39, i64 0, !35, i64 120, !35, i64 128, !36, i64 136, !35, i64 200, !35, i64 208, !36, i64 216, !50, i64 224, !50, i64 240, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !40, i64 276, !40, i64 278, !41, i64 280, !41, i64 284, !40, i64 288, !40, i64 290, !41, i64 292, !104, i64 296, !50, i64 312, !50, i64 328, !35, i64 344, !105, i64 352, !41, i64 356, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !35, i64 424}
!104 = !{!"rctf", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!105 = !{!"bNodeInstanceKey", !41, i64 0}
!106 = distinct !{!106, !58}
!107 = distinct !{!107, !58}
!108 = distinct !{!108, !58}
!109 = distinct !{!109, !58}
!110 = distinct !{!110, !58}
!111 = distinct !{!111, !58}
!112 = !{!39, !35, i64 0}
!113 = distinct !{!113, !58}
!114 = distinct !{!114, !58}
!115 = distinct !{!115, !58}
!116 = !{!"library.c:lib_indirect_test_id"}
!117 = !{!90, !35, i64 2184}
!118 = !{!62, !41, i64 456}
!119 = !{!62, !35, i64 440}
!120 = !{!121, !35, i64 24}
!121 = !{!"Material", !39, i64 0, !35, i64 120, !40, i64 128, !40, i64 130, !47, i64 132, !47, i64 136, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180, !47, i64 184, !47, i64 188, !47, i64 192, !47, i64 196, !47, i64 200, !47, i64 204, !47, i64 208, !47, i64 212, !47, i64 216, !47, i64 220, !122, i64 224, !123, i64 312, !47, i64 328, !47, i64 332, !47, i64 336, !47, i64 340, !47, i64 344, !47, i64 348, !47, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !36, i64 362, !36, i64 363, !47, i64 364, !47, i64 368, !40, i64 372, !40, i64 374, !47, i64 376, !47, i64 380, !47, i64 384, !47, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !47, i64 420, !47, i64 424, !47, i64 428, !47, i64 432, !47, i64 436, !47, i64 440, !47, i64 444, !47, i64 448, !47, i64 452, !47, i64 456, !36, i64 460, !47, i64 524, !47, i64 528, !47, i64 532, !41, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !36, i64 550, !36, i64 551, !40, i64 552, !40, i64 554, !47, i64 556, !47, i64 560, !36, i64 564, !47, i64 580, !47, i64 584, !40, i64 588, !40, i64 590, !35, i64 592, !35, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !40, i64 612, !40, i64 614, !47, i64 616, !47, i64 620, !36, i64 624, !35, i64 768, !35, i64 776, !35, i64 784, !35, i64 792, !47, i64 800, !47, i64 804, !47, i64 808, !47, i64 812, !47, i64 816, !40, i64 820, !40, i64 822, !36, i64 824, !36, i64 836, !47, i64 848, !47, i64 852, !47, i64 856, !47, i64 860, !47, i64 864, !47, i64 868, !47, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !36, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !36, i64 914, !35, i64 920, !50, i64 928}
!122 = !{!"VolumeSettings", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !47, i64 52, !47, i64 56, !47, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !47, i64 72, !47, i64 76, !47, i64 80, !47, i64 84}
!123 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!124 = !{!121, !40, i64 98}
!125 = distinct !{!125, !58}
!126 = !{!62, !35, i64 1256}
!127 = !{!128, !35, i64 24}
!128 = !{!"Group", !39, i64 0, !50, i64 120, !41, i64 136, !36, i64 140}
!129 = !{!128, !40, i64 98}
!130 = !{!62, !35, i64 232}
!131 = !{!62, !40, i64 98}
!132 = !{!62, !35, i64 296}
!133 = !{!45, !35, i64 24}
!134 = !{!45, !40, i64 98}
!135 = !{!"library.c:is_dupid"}
!136 = distinct !{!136, !58}
