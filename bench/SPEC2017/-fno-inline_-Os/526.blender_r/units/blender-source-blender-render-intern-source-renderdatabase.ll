; ModuleID = 'blender/source/blender/render/intern/source/renderdatabase.c'
source_filename = "blender/source/blender/render/intern/source/renderdatabase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.VertRen = type { [3 x float], [3 x float], ptr, i32, float, i32 }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.VertTableNode = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }
%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
%struct.VlakTableNode = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.MTFace = type { [4 x [2 x float]], ptr, i8, i8, i16, i16, i16 }
%struct.MCol = type { i8, i8, i8, i8 }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.StrandRen = type { ptr, ptr, i32, i32, i32, i32, [3 x float] }
%struct.StrandTableNode = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.StrandBuffer = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, float, float, float, float, [4 x [4 x float]], i32, i32 }
%struct.Render = type { ptr, ptr, [74 x i8], i32, i16, i16, i16, i16, i8, ptr, ptr, %struct.ListBase, i32, i32, i32, %struct.rcti, %struct.rctf, float, float, float, i32, i32, i32, i32, float, float, float, float, float, float, [3 x float], [3 x [3 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], float, float, ptr, [32 x [2 x float]], [32 x [2 x float]], ptr, [1 x i32], ptr, ptr, %struct.RenderData, %struct.World, ptr, i32, i32, %struct.ListBase, ptr, ptr, ptr, ptr, float, ptr, %struct.ListBase, float, float, i32, i32, i32, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, i32, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.RenderStats, ptr, ptr, ptr }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.rctf = type { float, float, float, float }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.HaloRen = type { i16, i16, float, float, float, float, float, float, float, [3 x float], [3 x float], float, float, float, float, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, float, i32, i32, ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Isect = type { [3 x float], [3 x float], float, [3 x float], [3 x float], [6 x i32], [3 x float], i32, i32, i32, i32, ptr, float, float, i32, %struct.anon, %struct.anon, ptr, ptr }
%struct.anon = type { ptr, ptr }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"stress table\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"rad table\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"strand table\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"tangent table\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"winspeed table\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"origindex table\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"error in findOrAddVert: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"vertnodes\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"findOrAddVert\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Vlak mtface\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Vlak mcol\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"surfnor table\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"radface table\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"mtfacenames\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"mcolnames\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"error in findOrAddVlak: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"vlaknodes\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"findOrAddVlak\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"surfnor strand table\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"strand uv table\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"strand mcol table\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"simplify strand table\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"face strand table\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"winspeed strand table\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"error in findOrAddStrand: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"strandnodes\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"findOrAddStrand\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"StrandBuffer\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"StrandVert\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"object render struct\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"error in findOrAddHalo: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Bloha\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"findOrAdHalo\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"ObjectInstanceRen\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"ObjectInstance\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_vertren_get_stress(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.VertRen, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = ashr i32 %5, 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.VertTableNode, ptr %8, i64 %9, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 1024, ptr noundef nonnull @.str) #13
  %18 = load ptr, ptr %7, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.VertTableNode, ptr %18, i64 %9, i32 4
  store ptr %17, ptr %19, align 8, !tbaa !43
  %20 = load i32, ptr %4, align 8, !tbaa !34
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i32 [ %20, %15 ], [ %5, %3 ]
  %23 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %24 = and i32 %22, 255
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds float, ptr %23, i64 %25
  br label %27

27:                                               ; preds = %13, %21
  %28 = phi ptr [ %26, %21 ], [ null, %13 ]
  ret ptr %28
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_vertren_get_rad(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.VertRen, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = ashr i32 %5, 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.VertTableNode, ptr %8, i64 %9, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 4096, ptr noundef nonnull @.str.1) #13
  %18 = load ptr, ptr %7, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.VertTableNode, ptr %18, i64 %9, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !46
  %20 = load i32, ptr %4, align 8, !tbaa !34
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i32 [ %20, %15 ], [ %5, %3 ]
  %23 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %24 = shl i32 %22, 2
  %25 = and i32 %24, 1020
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds float, ptr %23, i64 %26
  br label %28

28:                                               ; preds = %13, %21
  %29 = phi ptr [ %27, %21 ], [ null, %13 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_vertren_get_strand(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.VertRen, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = ashr i32 %5, 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.VertTableNode, ptr %8, i64 %9, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 1024, ptr noundef nonnull @.str.2) #13
  %18 = load ptr, ptr %7, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.VertTableNode, ptr %18, i64 %9, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !47
  %20 = load i32, ptr %4, align 8, !tbaa !34
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i32 [ %20, %15 ], [ %5, %3 ]
  %23 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %24 = and i32 %22, 255
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds float, ptr %23, i64 %25
  br label %27

27:                                               ; preds = %13, %21
  %28 = phi ptr [ %26, %21 ], [ null, %13 ]
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_vertren_get_tangent(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.VertRen, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = ashr i32 %5, 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.VertTableNode, ptr %8, i64 %9, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 3072, ptr noundef nonnull @.str.3) #13
  %18 = load ptr, ptr %7, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.VertTableNode, ptr %18, i64 %9, i32 3
  store ptr %17, ptr %19, align 8, !tbaa !48
  %20 = load i32, ptr %4, align 8, !tbaa !34
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i32 [ %20, %15 ], [ %5, %3 ]
  %23 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %24 = and i32 %22, 255
  %25 = mul nuw nsw i32 %24, 3
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds float, ptr %23, i64 %26
  br label %28

28:                                               ; preds = %13, %21
  %29 = phi ptr [ %27, %21 ], [ null, %13 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_vertren_get_winspeed(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = getelementptr inbounds %struct.ObjectRen, ptr %11, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.ObjectRen, ptr %11, i64 0, i32 12
  %15 = load i32, ptr %14, align 8, !tbaa !54
  %16 = add nsw i32 %15, %13
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %18 = shl nsw i32 %16, 2
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 2
  %21 = tail call ptr %17(i64 noundef %20, ptr noundef nonnull @.str.4) #13
  store ptr %21, ptr %4, align 8, !tbaa !49
  br label %22

22:                                               ; preds = %9, %3
  %23 = phi ptr [ %21, %9 ], [ %5, %3 ]
  %24 = getelementptr inbounds %struct.VertRen, ptr %1, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !34
  %26 = shl nsw i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, ptr %23, i64 %27
  br label %29

29:                                               ; preds = %7, %22
  %30 = phi ptr [ %28, %22 ], [ null, %7 ]
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_vertren_get_origindex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.VertRen, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !34
  %6 = ashr i32 %5, 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.VertTableNode, ptr %8, i64 %9, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 1024, ptr noundef nonnull @.str.5) #13
  %18 = load ptr, ptr %7, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.VertTableNode, ptr %18, i64 %9, i32 6
  store ptr %17, ptr %19, align 8, !tbaa !55
  %20 = load i32, ptr %4, align 8, !tbaa !34
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i32 [ %20, %15 ], [ %5, %3 ]
  %23 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %24 = and i32 %22, 255
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %23, i64 %25
  br label %27

27:                                               ; preds = %13, %21
  %28 = phi ptr [ %26, %21 ], [ null, %13 ]
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RE_vertren_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !53
  %6 = tail call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %4) #14
  %7 = getelementptr inbounds %struct.VertRen, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !56
  store i32 %8, ptr %7, align 8, !tbaa !34
  %9 = tail call ptr @RE_vertren_get_stress(ptr noundef %0, ptr noundef %1, i32 noundef 0) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @RE_vertren_get_stress(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 1) #14
  %13 = load i32, ptr %9, align 4
  store i32 %13, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = tail call ptr @RE_vertren_get_rad(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @RE_vertren_get_rad(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 1) #14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %18, ptr noundef nonnull align 4 dereferenceable(16) %15, i64 16, i1 false)
  br label %19

19:                                               ; preds = %17, %14
  %20 = tail call ptr @RE_vertren_get_strand(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @RE_vertren_get_strand(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 1) #14
  %24 = load i32, ptr %20, align 4
  store i32 %24, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = tail call ptr @RE_vertren_get_tangent(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @RE_vertren_get_tangent(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 1) #14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %29, ptr noundef nonnull align 4 dereferenceable(12) %26, i64 12, i1 false)
  br label %30

30:                                               ; preds = %28, %25
  %31 = tail call ptr @RE_vertren_get_origindex(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #14
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @RE_vertren_get_origindex(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 1) #14
  %35 = load i32, ptr %31, align 4
  store i32 %35, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %30
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_findOrAddVert(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %1) #14
  br label %61

6:                                                ; preds = %2
  %7 = lshr i32 %1, 8
  %8 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !60
  %10 = add nsw i32 %9, -1
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %36, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %16 = add nsw i32 %9, 1024
  %17 = sext i32 %16 to i64
  %18 = mul nsw i64 %17, 56
  %19 = tail call ptr %15(i64 noundef %18, ptr noundef nonnull @.str.7) #13
  store ptr %19, ptr %13, align 8, !tbaa !41
  %20 = icmp eq ptr %14, null
  %21 = load i32, ptr %8, align 8, !tbaa !60
  %22 = sext i32 %21 to i64
  br i1 %20, label %32, label %23

23:                                               ; preds = %12
  %24 = mul nsw i64 %22, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr nonnull align 8 %14, i64 %24, i1 false)
  %25 = load ptr, ptr %13, align 8, !tbaa !41
  %26 = load i32, ptr %8, align 8, !tbaa !60
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.VertTableNode, ptr %25, i64 %27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57344) %28, i8 0, i64 57344, i1 false)
  %29 = load i32, ptr %8, align 8, !tbaa !60
  %30 = add nsw i32 %29, 1024
  store i32 %30, ptr %8, align 8, !tbaa !60
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %31(ptr noundef nonnull %14) #13
  br label %36

32:                                               ; preds = %12
  %33 = getelementptr inbounds %struct.VertTableNode, ptr %19, i64 %22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57344) %33, i8 0, i64 57344, i1 false)
  %34 = load i32, ptr %8, align 8, !tbaa !60
  %35 = add nsw i32 %34, 1024
  store i32 %35, ptr %8, align 8, !tbaa !60
  br label %36

36:                                               ; preds = %32, %23, %6
  %37 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 18
  %38 = load ptr, ptr %37, align 8, !tbaa !41
  %39 = zext nneg i32 %7 to i64
  %40 = getelementptr inbounds %struct.VertTableNode, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !61
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %36
  %44 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %45 = tail call ptr %44(i64 noundef 12288, ptr noundef nonnull @.str.8) #13
  %46 = load ptr, ptr %37, align 8, !tbaa !41
  %47 = getelementptr inbounds %struct.VertTableNode, ptr %46, i64 %39
  store ptr %45, ptr %47, align 8, !tbaa !61
  %48 = and i32 %1, 2147483392
  br label %49

49:                                               ; preds = %43, %49
  %50 = phi i64 [ 0, %43 ], [ %53, %49 ]
  %51 = phi i32 [ %48, %43 ], [ %54, %49 ]
  %52 = getelementptr inbounds %struct.VertRen, ptr %45, i64 %50, i32 5
  store i32 %51, ptr %52, align 8, !tbaa !34
  %53 = add nuw nsw i64 %50, 1
  %54 = add nuw nsw i32 %51, 1
  %55 = icmp eq i64 %53, 256
  br i1 %55, label %56, label %49, !llvm.loop !62

56:                                               ; preds = %49, %36
  %57 = phi ptr [ %41, %36 ], [ %45, %49 ]
  %58 = and i32 %1, 255
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds %struct.VertRen, ptr %57, i64 %59
  br label %61

61:                                               ; preds = %56, %4
  %62 = phi ptr [ null, %4 ], [ %60, %56 ]
  ret ptr %62
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_vlakren_get_tface(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !64
  %8 = ashr i32 %7, 8
  %9 = and i32 %7, 255
  %10 = shl i32 %2, 8
  %11 = or disjoint i32 %9, %10
  %12 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = sext i32 %8 to i64
  %15 = icmp eq i32 %4, 0
  %16 = getelementptr inbounds %struct.VlakTableNode, ptr %13, i64 %14, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !67
  %18 = icmp sgt i32 %17, %2
  br i1 %15, label %37, label %19

19:                                               ; preds = %5
  br i1 %18, label %45, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.VlakTableNode, ptr %13, i64 %14, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  %23 = add nsw i32 %2, 1
  %24 = shl nsw i32 %23, 8
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %26 = sext i32 %24 to i64
  %27 = mul nsw i64 %26, 48
  %28 = tail call ptr %25(i64 noundef %27, ptr noundef nonnull @.str.9) #13
  store ptr %28, ptr %21, align 8, !tbaa !69
  %29 = icmp eq ptr %22, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %20
  %31 = load i32, ptr %16, align 8, !tbaa !67
  %32 = shl nsw i32 %31, 8
  %33 = sext i32 %32 to i64
  %34 = mul nsw i64 %33, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %28, ptr nonnull align 8 %22, i64 %34, i1 false)
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %35(ptr noundef nonnull %22) #13
  br label %36

36:                                               ; preds = %30, %20
  store i32 %23, ptr %16, align 8, !tbaa !67
  br label %45

37:                                               ; preds = %5
  br i1 %18, label %38, label %50

38:                                               ; preds = %37
  %39 = icmp eq ptr %3, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 23
  %42 = load ptr, ptr %41, align 8, !tbaa !70
  %43 = sext i32 %2 to i64
  %44 = getelementptr inbounds [64 x i8], ptr %42, i64 %43
  store ptr %44, ptr %3, align 8, !tbaa !45
  br label %45

45:                                               ; preds = %38, %40, %19, %36
  %46 = getelementptr inbounds %struct.VlakTableNode, ptr %13, i64 %14, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !69
  %48 = sext i32 %11 to i64
  %49 = getelementptr inbounds %struct.MTFace, ptr %47, i64 %48
  br label %50

50:                                               ; preds = %37, %45
  %51 = phi ptr [ %49, %45 ], [ null, %37 ]
  ret ptr %51
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_vlakren_get_mcol(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !64
  %8 = ashr i32 %7, 8
  %9 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = sext i32 %8 to i64
  %12 = icmp eq i32 %4, 0
  %13 = getelementptr inbounds %struct.VlakTableNode, ptr %10, i64 %11, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !71
  %15 = icmp sgt i32 %14, %2
  br i1 %12, label %34, label %16

16:                                               ; preds = %5
  br i1 %15, label %42, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.VlakTableNode, ptr %10, i64 %11, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = add nsw i32 %2, 1
  %21 = shl nsw i32 %20, 8
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %23 = sext i32 %21 to i64
  %24 = shl nsw i64 %23, 4
  %25 = tail call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.10) #13
  store ptr %25, ptr %18, align 8, !tbaa !72
  %26 = icmp eq ptr %19, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load i32, ptr %13, align 4, !tbaa !71
  %29 = shl nsw i32 %28, 8
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr nonnull align 1 %19, i64 %31, i1 false)
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %32(ptr noundef nonnull %19) #13
  br label %33

33:                                               ; preds = %27, %17
  store i32 %20, ptr %13, align 4, !tbaa !71
  br label %42

34:                                               ; preds = %5
  br i1 %15, label %35, label %51

35:                                               ; preds = %34
  %36 = icmp eq ptr %3, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 24
  %39 = load ptr, ptr %38, align 8, !tbaa !73
  %40 = sext i32 %2 to i64
  %41 = getelementptr inbounds [64 x i8], ptr %39, i64 %40
  store ptr %41, ptr %3, align 8, !tbaa !45
  br label %42

42:                                               ; preds = %35, %37, %16, %33
  %43 = getelementptr inbounds %struct.VlakTableNode, ptr %10, i64 %11, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !72
  %45 = shl i32 %2, 10
  %46 = shl i32 %7, 2
  %47 = and i32 %46, 1020
  %48 = or disjoint i32 %47, %45
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.MCol, ptr %44, i64 %49
  br label %51

51:                                               ; preds = %34, %42
  %52 = phi ptr [ %50, %42 ], [ null, %34 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_vlakren_get_origindex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !64
  %6 = ashr i32 %5, 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.VlakTableNode, ptr %8, i64 %9, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 1024, ptr noundef nonnull @.str.5) #13
  %18 = load ptr, ptr %7, align 8, !tbaa !66
  %19 = getelementptr inbounds %struct.VlakTableNode, ptr %18, i64 %9, i32 3
  store ptr %17, ptr %19, align 8, !tbaa !74
  %20 = load i32, ptr %4, align 4, !tbaa !64
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i32 [ %20, %15 ], [ %5, %3 ]
  %23 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %24 = and i32 %22, 255
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %23, i64 %25
  br label %27

27:                                               ; preds = %13, %21
  %28 = phi ptr [ %26, %21 ], [ null, %13 ]
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_vlakren_get_surfnor(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !64
  %6 = ashr i32 %5, 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.VlakTableNode, ptr %8, i64 %9, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 3072, ptr noundef nonnull @.str.11) #13
  %18 = load ptr, ptr %7, align 8, !tbaa !66
  %19 = getelementptr inbounds %struct.VlakTableNode, ptr %18, i64 %9, i32 6
  store ptr %17, ptr %19, align 8, !tbaa !75
  %20 = load i32, ptr %4, align 4, !tbaa !64
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i32 [ %20, %15 ], [ %5, %3 ]
  %23 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %24 = and i32 %22, 255
  %25 = mul nuw nsw i32 %24, 3
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds float, ptr %23, i64 %26
  br label %28

28:                                               ; preds = %13, %21
  %29 = phi ptr [ %27, %21 ], [ null, %13 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_vlakren_get_nmap_tangent(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !64
  %6 = ashr i32 %5, 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.VlakTableNode, ptr %8, i64 %9, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 16384, ptr noundef nonnull @.str.3) #13
  %18 = load ptr, ptr %7, align 8, !tbaa !66
  %19 = getelementptr inbounds %struct.VlakTableNode, ptr %18, i64 %9, i32 7
  store ptr %17, ptr %19, align 8, !tbaa !76
  %20 = load i32, ptr %4, align 4, !tbaa !64
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i32 [ %20, %15 ], [ %5, %3 ]
  %23 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %24 = shl i32 %22, 4
  %25 = and i32 %24, 4080
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds float, ptr %23, i64 %26
  br label %28

28:                                               ; preds = %13, %21
  %29 = phi ptr [ %27, %21 ], [ null, %13 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_vlakren_get_radface(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !64
  %6 = ashr i32 %5, 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.VlakTableNode, ptr %8, i64 %9, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 2048, ptr noundef nonnull @.str.12) #13
  %18 = load ptr, ptr %7, align 8, !tbaa !66
  %19 = getelementptr inbounds %struct.VlakTableNode, ptr %18, i64 %9, i32 8
  store ptr %17, ptr %19, align 8, !tbaa !77
  %20 = load i32, ptr %4, align 4, !tbaa !64
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i32 [ %20, %15 ], [ %5, %3 ]
  %23 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %24 = and i32 %22, 255
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  br label %27

27:                                               ; preds = %13, %21
  %28 = phi ptr [ %26, %21 ], [ null, %13 ]
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RE_vlakren_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !78
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 4, !tbaa !78
  %7 = tail call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %5) #14
  %8 = getelementptr inbounds %struct.VlakRen, ptr %7, i64 0, i32 9
  %9 = load i32, ptr %8, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !79
  store i32 %9, ptr %8, align 4, !tbaa !64
  %10 = call ptr @RE_vlakren_get_tface(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 0) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %15, %2
  %13 = call ptr @RE_vlakren_get_mcol(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 0) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %22

15:                                               ; preds = %2, %15
  %16 = phi ptr [ %20, %15 ], [ %10, %2 ]
  %17 = phi i32 [ %19, %15 ], [ 0, %2 ]
  %18 = call ptr @RE_vlakren_get_tface(ptr noundef %0, ptr noundef %7, i32 noundef %17, ptr noundef nonnull %3, i32 noundef 1) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull align 8 dereferenceable(48) %16, i64 48, i1 false)
  %19 = add nuw nsw i32 %17, 1
  %20 = call ptr @RE_vlakren_get_tface(ptr noundef %0, ptr noundef %1, i32 noundef %19, ptr noundef nonnull %3, i32 noundef 0) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %12, label %15, !llvm.loop !80

22:                                               ; preds = %12, %22
  %23 = phi ptr [ %27, %22 ], [ %13, %12 ]
  %24 = phi i32 [ %26, %22 ], [ 0, %12 ]
  %25 = call ptr @RE_vlakren_get_mcol(ptr noundef %0, ptr noundef %7, i32 noundef %24, ptr noundef nonnull %3, i32 noundef 1) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %25, ptr noundef nonnull align 1 dereferenceable(16) %23, i64 16, i1 false)
  %26 = add nuw nsw i32 %24, 1
  %27 = call ptr @RE_vlakren_get_mcol(ptr noundef %0, ptr noundef %1, i32 noundef %26, ptr noundef nonnull %3, i32 noundef 0) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %22, !llvm.loop !81

29:                                               ; preds = %22, %12
  %30 = call ptr @RE_vlakren_get_origindex(ptr noundef %0, ptr noundef %1, i32 noundef 0) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = call ptr @RE_vlakren_get_origindex(ptr noundef %0, ptr noundef %7, i32 noundef 1) #14
  %34 = load i32, ptr %30, align 4
  store i32 %34, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = call ptr @RE_vlakren_get_surfnor(ptr noundef %0, ptr noundef %1, i32 noundef 0) #14
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = call ptr @RE_vlakren_get_surfnor(ptr noundef %0, ptr noundef %7, i32 noundef 1) #14
  call fastcc void @copy_v3_v3(ptr noundef %39, ptr noundef nonnull %36) #14
  br label %40

40:                                               ; preds = %38, %35
  %41 = call ptr @RE_vlakren_get_nmap_tangent(ptr noundef %0, ptr noundef %1, i32 noundef 0) #14
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call ptr @RE_vlakren_get_nmap_tangent(ptr noundef %0, ptr noundef %7, i32 noundef 1) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %44, ptr noundef nonnull align 4 dereferenceable(64) %41, i64 64, i1 false)
  br label %45

45:                                               ; preds = %43, %40
  %46 = call ptr @RE_vlakren_get_radface(ptr noundef %0, ptr noundef %1, i32 noundef 0) #14
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = call ptr @RE_vlakren_get_radface(ptr noundef %0, ptr noundef %7, i32 noundef 1) #14
  %50 = load ptr, ptr %46, align 8, !tbaa !45
  store ptr %50, ptr %49, align 8, !tbaa !45
  br label %51

51:                                               ; preds = %48, %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_findOrAddVlak(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %1) #14
  %6 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  br label %64

9:                                                ; preds = %2
  %10 = lshr i32 %1, 8
  %11 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 15
  %12 = load i32, ptr %11, align 4, !tbaa !83
  %13 = add nsw i32 %12, -1
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %39, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %19 = add nsw i32 %12, 1024
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 6
  %22 = tail call ptr %18(i64 noundef %21, ptr noundef nonnull @.str.16) #13
  store ptr %22, ptr %16, align 8, !tbaa !66
  %23 = icmp eq ptr %17, null
  %24 = load i32, ptr %11, align 4, !tbaa !83
  %25 = sext i32 %24 to i64
  br i1 %23, label %35, label %26

26:                                               ; preds = %15
  %27 = shl nsw i64 %25, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr nonnull align 8 %17, i64 %27, i1 false)
  %28 = load ptr, ptr %16, align 8, !tbaa !66
  %29 = load i32, ptr %11, align 4, !tbaa !83
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.VlakTableNode, ptr %28, i64 %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %31, i8 0, i64 65536, i1 false)
  %32 = load i32, ptr %11, align 4, !tbaa !83
  %33 = add nsw i32 %32, 1024
  store i32 %33, ptr %11, align 4, !tbaa !83
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %34(ptr noundef nonnull %17) #13
  br label %39

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.VlakTableNode, ptr %22, i64 %25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %36, i8 0, i64 65536, i1 false)
  %37 = load i32, ptr %11, align 4, !tbaa !83
  %38 = add nsw i32 %37, 1024
  store i32 %38, ptr %11, align 4, !tbaa !83
  br label %39

39:                                               ; preds = %35, %26, %9
  %40 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !66
  %42 = zext nneg i32 %10 to i64
  %43 = getelementptr inbounds %struct.VlakTableNode, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !82
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %48 = tail call ptr %47(i64 noundef 16384, ptr noundef nonnull @.str.17) #13
  %49 = load ptr, ptr %40, align 8, !tbaa !66
  %50 = getelementptr inbounds %struct.VlakTableNode, ptr %49, i64 %42
  store ptr %48, ptr %50, align 8, !tbaa !82
  %51 = and i32 %1, 2147483392
  br label %52

52:                                               ; preds = %46, %52
  %53 = phi i64 [ 0, %46 ], [ %56, %52 ]
  %54 = phi i32 [ %51, %46 ], [ %57, %52 ]
  %55 = getelementptr inbounds %struct.VlakRen, ptr %48, i64 %53, i32 9
  store i32 %54, ptr %55, align 4, !tbaa !64
  %56 = add nuw nsw i64 %53, 1
  %57 = add nuw nsw i32 %54, 1
  %58 = icmp eq i64 %56, 256
  br i1 %58, label %59, label %52, !llvm.loop !84

59:                                               ; preds = %52, %39
  %60 = phi ptr [ %44, %39 ], [ %48, %52 ]
  %61 = and i32 %1, 255
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds %struct.VlakRen, ptr %60, i64 %62
  br label %64

64:                                               ; preds = %59, %4
  %65 = phi ptr [ %8, %4 ], [ %63, %59 ]
  ret ptr %65
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !85 {
  %3 = load float, ptr %1, align 4, !tbaa !59
  store float %3, ptr %0, align 4, !tbaa !59
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !59
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_vlakren_get_normal(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 11
  %6 = load i16, ptr %5, align 8, !tbaa !86
  %7 = and i16 %6, 3
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 10
  %11 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 4
  tail call void @mul_v3_m3v3(ptr noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %11) #13
  tail call fastcc void @normalize_v3(ptr noundef %3) #14
  br label %14

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef nonnull %13) #14
  br label %14

14:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: optsize
declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !87 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_set_customdata_names(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 5) #13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @CustomData_number_of_layers(ptr noundef %1, i32 noundef 5) #13
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %8 = sext i32 %6 to i64
  %9 = shl nsw i64 %8, 6
  %10 = tail call ptr %7(i64 noundef %9, ptr noundef nonnull @.str.13) #13
  %11 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 23
  store ptr %10, ptr %11, align 8, !tbaa !70
  br label %12

12:                                               ; preds = %5, %2
  %13 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %14 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 6) #13
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @CustomData_number_of_layers(ptr noundef %1, i32 noundef 6) #13
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %19 = sext i32 %17 to i64
  %20 = shl nsw i64 %19, 6
  %21 = tail call ptr %18(i64 noundef %20, ptr noundef nonnull @.str.14) #13
  %22 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 24
  store ptr %21, ptr %22, align 8, !tbaa !73
  br label %23

23:                                               ; preds = %16, %12
  %24 = phi i32 [ %17, %16 ], [ 0, %12 ]
  %25 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !88
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %74

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 24
  %30 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 26
  %31 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 23
  %32 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 25
  %33 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 27
  br label %34

34:                                               ; preds = %28, %67
  %35 = phi i64 [ 0, %28 ], [ %70, %67 ]
  %36 = phi i32 [ 0, %28 ], [ %69, %67 ]
  %37 = phi i32 [ 0, %28 ], [ %68, %67 ]
  %38 = load ptr, ptr %1, align 8, !tbaa !90
  %39 = getelementptr inbounds %struct.CustomDataLayer, ptr %38, i64 %35
  %40 = load i32, ptr %39, align 8, !tbaa !91
  switch i32 %40, label %67 [
    i32 5, label %41
    i32 6, label %55
  ]

41:                                               ; preds = %34
  %42 = load ptr, ptr %31, align 8, !tbaa !70
  %43 = add nsw i32 %37, 1
  %44 = sext i32 %37 to i64
  %45 = getelementptr inbounds [64 x i8], ptr %42, i64 %44
  %46 = getelementptr inbounds %struct.CustomDataLayer, ptr %38, i64 %35, i32 8
  %47 = tail call ptr @BLI_strncpy(ptr noundef %45, ptr noundef nonnull %46, i64 noundef 64) #13
  %48 = getelementptr inbounds %struct.CustomDataLayer, ptr %38, i64 %35, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !93
  %50 = icmp slt i32 %49, 0
  %51 = tail call i32 @llvm.smin.i32(i32 %49, i32 %13)
  %52 = select i1 %50, i32 0, i32 %51
  store i32 %52, ptr %32, align 8, !tbaa !94
  %53 = getelementptr inbounds %struct.CustomDataLayer, ptr %38, i64 %35, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !95
  store i32 %54, ptr %33, align 8, !tbaa !96
  br label %67

55:                                               ; preds = %34
  %56 = load ptr, ptr %29, align 8, !tbaa !73
  %57 = add nsw i32 %36, 1
  %58 = sext i32 %36 to i64
  %59 = getelementptr inbounds [64 x i8], ptr %56, i64 %58
  %60 = getelementptr inbounds %struct.CustomDataLayer, ptr %38, i64 %35, i32 8
  %61 = tail call ptr @BLI_strncpy(ptr noundef %59, ptr noundef nonnull %60, i64 noundef 64) #13
  %62 = getelementptr inbounds %struct.CustomDataLayer, ptr %38, i64 %35, i32 4
  %63 = load i32, ptr %62, align 8, !tbaa !93
  %64 = icmp slt i32 %63, 0
  %65 = tail call i32 @llvm.smin.i32(i32 %63, i32 %24)
  %66 = select i1 %64, i32 0, i32 %65
  store i32 %66, ptr %30, align 4, !tbaa !97
  br label %67

67:                                               ; preds = %34, %41, %55
  %68 = phi i32 [ %43, %41 ], [ %37, %55 ], [ %37, %34 ]
  %69 = phi i32 [ %36, %41 ], [ %57, %55 ], [ %36, %34 ]
  %70 = add nuw nsw i64 %35, 1
  %71 = load i32, ptr %25, align 4, !tbaa !88
  %72 = sext i32 %71 to i64
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %34, label %74, !llvm.loop !98

74:                                               ; preds = %67, %23
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_strandren_get_surfnor(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = ashr i32 %5, 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.StrandTableNode, ptr %8, i64 %9, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !102
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 3072, ptr noundef nonnull @.str.18) #13
  %18 = load ptr, ptr %7, align 8, !tbaa !101
  %19 = getelementptr inbounds %struct.StrandTableNode, ptr %18, i64 %9, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !102
  %20 = load i32, ptr %4, align 4, !tbaa !99
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i32 [ %20, %15 ], [ %5, %3 ]
  %23 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %24 = and i32 %22, 255
  %25 = mul nuw nsw i32 %24, 3
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds float, ptr %23, i64 %26
  br label %28

28:                                               ; preds = %13, %21
  %29 = phi ptr [ %27, %21 ], [ null, %13 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_strandren_get_uv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = ashr i32 %7, 8
  %9 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = sext i32 %8 to i64
  %12 = icmp eq i32 %4, 0
  %13 = getelementptr inbounds %struct.StrandTableNode, ptr %10, i64 %11, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !104
  %15 = icmp sgt i32 %14, %2
  br i1 %12, label %34, label %16

16:                                               ; preds = %5
  br i1 %15, label %42, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.StrandTableNode, ptr %10, i64 %11, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !105
  %20 = add nsw i32 %2, 1
  %21 = shl nsw i32 %20, 8
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %23 = sext i32 %21 to i64
  %24 = shl nsw i64 %23, 3
  %25 = tail call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.19) #13
  store ptr %25, ptr %18, align 8, !tbaa !105
  %26 = icmp eq ptr %19, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load i32, ptr %13, align 8, !tbaa !104
  %29 = shl nsw i32 %28, 8
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %25, ptr nonnull align 4 %19, i64 %31, i1 false)
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %32(ptr noundef nonnull %19) #13
  br label %33

33:                                               ; preds = %27, %17
  store i32 %20, ptr %13, align 8, !tbaa !104
  br label %42

34:                                               ; preds = %5
  br i1 %15, label %35, label %51

35:                                               ; preds = %34
  %36 = icmp eq ptr %3, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 23
  %39 = load ptr, ptr %38, align 8, !tbaa !70
  %40 = sext i32 %2 to i64
  %41 = getelementptr inbounds [64 x i8], ptr %39, i64 %40
  store ptr %41, ptr %3, align 8, !tbaa !45
  br label %42

42:                                               ; preds = %35, %37, %16, %33
  %43 = getelementptr inbounds %struct.StrandTableNode, ptr %10, i64 %11, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !105
  %45 = shl i32 %2, 9
  %46 = shl i32 %7, 1
  %47 = and i32 %46, 510
  %48 = or disjoint i32 %47, %45
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, ptr %44, i64 %49
  br label %51

51:                                               ; preds = %34, %42
  %52 = phi ptr [ %50, %42 ], [ null, %34 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_strandren_get_mcol(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !99
  %8 = ashr i32 %7, 8
  %9 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = sext i32 %8 to i64
  %12 = icmp eq i32 %4, 0
  %13 = getelementptr inbounds %struct.StrandTableNode, ptr %10, i64 %11, i32 8
  %14 = load i32, ptr %13, align 4, !tbaa !106
  %15 = icmp sgt i32 %14, %2
  br i1 %12, label %34, label %16

16:                                               ; preds = %5
  br i1 %15, label %42, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.StrandTableNode, ptr %10, i64 %11, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !107
  %20 = add nsw i32 %2, 1
  %21 = shl nsw i32 %20, 8
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %23 = sext i32 %21 to i64
  %24 = shl nsw i64 %23, 4
  %25 = tail call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.20) #13
  store ptr %25, ptr %18, align 8, !tbaa !107
  %26 = icmp eq ptr %19, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load i32, ptr %13, align 4, !tbaa !106
  %29 = shl nsw i32 %28, 8
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr nonnull align 1 %19, i64 %31, i1 false)
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %32(ptr noundef nonnull %19) #13
  br label %33

33:                                               ; preds = %27, %17
  store i32 %20, ptr %13, align 4, !tbaa !106
  br label %42

34:                                               ; preds = %5
  br i1 %15, label %35, label %51

35:                                               ; preds = %34
  %36 = icmp eq ptr %3, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 24
  %39 = load ptr, ptr %38, align 8, !tbaa !73
  %40 = sext i32 %2 to i64
  %41 = getelementptr inbounds [64 x i8], ptr %39, i64 %40
  store ptr %41, ptr %3, align 8, !tbaa !45
  br label %42

42:                                               ; preds = %35, %37, %16, %33
  %43 = getelementptr inbounds %struct.StrandTableNode, ptr %10, i64 %11, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !107
  %45 = shl i32 %2, 10
  %46 = shl i32 %7, 2
  %47 = and i32 %46, 1020
  %48 = or disjoint i32 %47, %45
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.MCol, ptr %44, i64 %49
  br label %51

51:                                               ; preds = %34, %42
  %52 = phi ptr [ %50, %42 ], [ null, %34 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_strandren_get_simplify(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = ashr i32 %5, 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.StrandTableNode, ptr %8, i64 %9, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !108
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 2048, ptr noundef nonnull @.str.21) #13
  %18 = load ptr, ptr %7, align 8, !tbaa !101
  %19 = getelementptr inbounds %struct.StrandTableNode, ptr %18, i64 %9, i32 3
  store ptr %17, ptr %19, align 8, !tbaa !108
  %20 = load i32, ptr %4, align 4, !tbaa !99
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i32 [ %20, %15 ], [ %5, %3 ]
  %23 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %24 = shl i32 %22, 1
  %25 = and i32 %24, 510
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds float, ptr %23, i64 %26
  br label %28

28:                                               ; preds = %13, %21
  %29 = phi ptr [ %27, %21 ], [ null, %13 ]
  ret ptr %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_strandren_get_face(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !99
  %6 = ashr i32 %5, 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.StrandTableNode, ptr %8, i64 %9, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !109
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 1024, ptr noundef nonnull @.str.22) #13
  %18 = load ptr, ptr %7, align 8, !tbaa !101
  %19 = getelementptr inbounds %struct.StrandTableNode, ptr %18, i64 %9, i32 4
  store ptr %17, ptr %19, align 8, !tbaa !109
  %20 = load i32, ptr %4, align 4, !tbaa !99
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i32 [ %20, %15 ], [ %5, %3 ]
  %23 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %24 = and i32 %22, 255
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %23, i64 %25
  br label %27

27:                                               ; preds = %13, %21
  %28 = phi ptr [ %26, %21 ], [ null, %13 ]
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_strandren_get_winspeed(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = getelementptr inbounds %struct.ObjectRen, ptr %11, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.ObjectRen, ptr %11, i64 0, i32 12
  %15 = load i32, ptr %14, align 8, !tbaa !54
  %16 = add nsw i32 %15, %13
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %18 = shl nsw i32 %16, 2
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 2
  %21 = tail call ptr %17(i64 noundef %20, ptr noundef nonnull @.str.23) #13
  store ptr %21, ptr %4, align 8, !tbaa !49
  br label %22

22:                                               ; preds = %9, %3
  %23 = phi ptr [ %21, %9 ], [ %5, %3 ]
  %24 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.ObjectRen, ptr %25, i64 0, i32 10
  %27 = load i32, ptr %26, align 8, !tbaa !53
  %28 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !99
  %30 = add nsw i32 %29, %27
  %31 = shl nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, ptr %23, i64 %32
  br label %34

34:                                               ; preds = %7, %22
  %35 = phi ptr [ %33, %22 ], [ null, %7 ]
  ret ptr %35
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_findOrAddStrand(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %1) #14
  %6 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !101
  %8 = load ptr, ptr %7, align 8, !tbaa !110
  br label %64

9:                                                ; preds = %2
  %10 = lshr i32 %1, 8
  %11 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 16
  %12 = load i32, ptr %11, align 8, !tbaa !111
  %13 = add nsw i32 %12, -1
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %39, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !101
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %19 = add nsw i32 %12, 1024
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 6
  %22 = tail call ptr %18(i64 noundef %21, ptr noundef nonnull @.str.25) #13
  store ptr %22, ptr %16, align 8, !tbaa !101
  %23 = icmp eq ptr %17, null
  %24 = load i32, ptr %11, align 8, !tbaa !111
  %25 = sext i32 %24 to i64
  br i1 %23, label %35, label %26

26:                                               ; preds = %15
  %27 = shl nsw i64 %25, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr nonnull align 8 %17, i64 %27, i1 false)
  %28 = load ptr, ptr %16, align 8, !tbaa !101
  %29 = load i32, ptr %11, align 8, !tbaa !111
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.StrandTableNode, ptr %28, i64 %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %31, i8 0, i64 65536, i1 false)
  %32 = load i32, ptr %11, align 8, !tbaa !111
  %33 = add nsw i32 %32, 1024
  store i32 %33, ptr %11, align 8, !tbaa !111
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %34(ptr noundef nonnull %17) #13
  br label %39

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.StrandTableNode, ptr %22, i64 %25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %36, i8 0, i64 65536, i1 false)
  %37 = load i32, ptr %11, align 8, !tbaa !111
  %38 = add nsw i32 %37, 1024
  store i32 %38, ptr %11, align 8, !tbaa !111
  br label %39

39:                                               ; preds = %35, %26, %9
  %40 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 20
  %41 = load ptr, ptr %40, align 8, !tbaa !101
  %42 = zext nneg i32 %10 to i64
  %43 = getelementptr inbounds %struct.StrandTableNode, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !110
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %48 = tail call ptr %47(i64 noundef 12288, ptr noundef nonnull @.str.26) #13
  %49 = load ptr, ptr %40, align 8, !tbaa !101
  %50 = getelementptr inbounds %struct.StrandTableNode, ptr %49, i64 %42
  store ptr %48, ptr %50, align 8, !tbaa !110
  %51 = and i32 %1, 2147483392
  br label %52

52:                                               ; preds = %46, %52
  %53 = phi i64 [ 0, %46 ], [ %56, %52 ]
  %54 = phi i32 [ %51, %46 ], [ %57, %52 ]
  %55 = getelementptr inbounds %struct.StrandRen, ptr %48, i64 %53, i32 5
  store i32 %54, ptr %55, align 4, !tbaa !99
  %56 = add nuw nsw i64 %53, 1
  %57 = add nuw nsw i32 %54, 1
  %58 = icmp eq i64 %56, 256
  br i1 %58, label %59, label %52, !llvm.loop !112

59:                                               ; preds = %52, %39
  %60 = phi ptr [ %44, %39 ], [ %48, %52 ]
  %61 = and i32 %1, 255
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds %struct.StrandRen, ptr %60, i64 %62
  br label %64

64:                                               ; preds = %59, %4
  %65 = phi ptr [ %8, %4 ], [ %63, %59 ]
  ret ptr %65
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_addStrandBuffer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %4 = tail call ptr %3(i64 noundef 168, ptr noundef nonnull @.str.27) #13
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 4
  %8 = tail call ptr %5(i64 noundef %7, ptr noundef nonnull @.str.28) #13
  %9 = getelementptr inbounds %struct.StrandBuffer, ptr %4, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !113
  %10 = getelementptr inbounds %struct.StrandBuffer, ptr %4, i64 0, i32 4
  store i32 %1, ptr %10, align 8, !tbaa !115
  %11 = getelementptr inbounds %struct.StrandBuffer, ptr %4, i64 0, i32 6
  store ptr %0, ptr %11, align 8, !tbaa !116
  %12 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 22
  store ptr %4, ptr %12, align 8, !tbaa !117
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @RE_addRenderObject(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %8 = tail call ptr %7(i64 noundef 280, ptr noundef nonnull @.str.29) #13
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %8) #13
  %10 = getelementptr inbounds %struct.ObjectRen, ptr %8, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !118
  %11 = getelementptr inbounds %struct.ObjectRen, ptr %8, i64 0, i32 3
  store ptr %2, ptr %11, align 8, !tbaa !119
  %12 = getelementptr inbounds %struct.ObjectRen, ptr %8, i64 0, i32 5
  store i32 %3, ptr %12, align 8, !tbaa !120
  %13 = getelementptr inbounds %struct.ObjectRen, ptr %8, i64 0, i32 6
  store i32 %4, ptr %13, align 4, !tbaa !121
  %14 = getelementptr inbounds %struct.ObjectRen, ptr %8, i64 0, i32 8
  store i32 %5, ptr %14, align 4, !tbaa !122
  ret ptr %8
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_renderdata_vertnodes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %52, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !61
  %5 = icmp eq ptr %4, null
  br i1 %5, label %50, label %6

6:                                                ; preds = %3, %45
  %7 = phi i64 [ %46, %45 ], [ 0, %3 ]
  %8 = phi ptr [ %48, %45 ], [ %4, %3 ]
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %9(ptr noundef nonnull %8) #13
  %10 = getelementptr inbounds %struct.VertTableNode, ptr %0, i64 %7, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %14(ptr noundef nonnull %11) #13
  br label %15

15:                                               ; preds = %13, %6
  %16 = getelementptr inbounds %struct.VertTableNode, ptr %0, i64 %7, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %20(ptr noundef nonnull %17) #13
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.VertTableNode, ptr %0, i64 %7, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %26(ptr noundef nonnull %23) #13
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct.VertTableNode, ptr %0, i64 %7, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %32(ptr noundef nonnull %29) #13
  br label %33

33:                                               ; preds = %31, %27
  %34 = getelementptr inbounds %struct.VertTableNode, ptr %0, i64 %7, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !123
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %38(ptr noundef nonnull %35) #13
  br label %39

39:                                               ; preds = %37, %33
  %40 = getelementptr inbounds %struct.VertTableNode, ptr %0, i64 %7, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !55
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %44(ptr noundef nonnull %41) #13
  br label %45

45:                                               ; preds = %39, %43
  %46 = add nuw i64 %7, 1
  %47 = getelementptr inbounds %struct.VertTableNode, ptr %0, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !61
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %6, !llvm.loop !124

50:                                               ; preds = %45, %3
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %51(ptr noundef nonnull %0) #13
  br label %52

52:                                               ; preds = %1, %50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_renderdata_vlaknodes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %52, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !82
  %5 = icmp eq ptr %4, null
  br i1 %5, label %50, label %6

6:                                                ; preds = %3, %45
  %7 = phi i64 [ %46, %45 ], [ 0, %3 ]
  %8 = phi ptr [ %48, %45 ], [ %4, %3 ]
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %9(ptr noundef nonnull %8) #13
  %10 = getelementptr inbounds %struct.VlakTableNode, ptr %0, i64 %7, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %14(ptr noundef nonnull %11) #13
  br label %15

15:                                               ; preds = %13, %6
  %16 = getelementptr inbounds %struct.VlakTableNode, ptr %0, i64 %7, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %20(ptr noundef nonnull %17) #13
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.VlakTableNode, ptr %0, i64 %7, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !74
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %26(ptr noundef nonnull %23) #13
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct.VlakTableNode, ptr %0, i64 %7, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !75
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %32(ptr noundef nonnull %29) #13
  br label %33

33:                                               ; preds = %31, %27
  %34 = getelementptr inbounds %struct.VlakTableNode, ptr %0, i64 %7, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !76
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %38(ptr noundef nonnull %35) #13
  br label %39

39:                                               ; preds = %37, %33
  %40 = getelementptr inbounds %struct.VlakTableNode, ptr %0, i64 %7, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !77
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %44(ptr noundef nonnull %41) #13
  br label %45

45:                                               ; preds = %39, %43
  %46 = add nuw i64 %7, 1
  %47 = getelementptr inbounds %struct.VlakTableNode, ptr %0, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !82
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %6, !llvm.loop !125

50:                                               ; preds = %45, %3
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %51(ptr noundef nonnull %0) #13
  br label %52

52:                                               ; preds = %1, %50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_renderdata_tables(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %95, label %5

5:                                                ; preds = %1, %92
  %6 = phi ptr [ %93, %92 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  tail call void @free_renderdata_vertnodes(ptr noundef nonnull %8) #14
  store ptr null, ptr %7, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 14
  store i32 0, ptr %11, align 8, !tbaa !60
  br label %12

12:                                               ; preds = %10, %5
  %13 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  tail call void @free_renderdata_vlaknodes(ptr noundef nonnull %14) #14
  store ptr null, ptr %13, align 8, !tbaa !66
  %17 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 15
  store i32 0, ptr %17, align 4, !tbaa !83
  %18 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 11
  store i32 0, ptr %18, align 4, !tbaa !78
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 21
  %21 = load ptr, ptr %20, align 8, !tbaa !126
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %21, align 8, !tbaa !45
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %23, %26
  %27 = phi i64 [ %30, %26 ], [ 0, %23 ]
  %28 = phi ptr [ %33, %26 ], [ %24, %23 ]
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %29(ptr noundef nonnull %28) #13
  %30 = add nuw i64 %27, 1
  %31 = load ptr, ptr %20, align 8, !tbaa !126
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !45
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %26, !llvm.loop !127

35:                                               ; preds = %26, %23
  %36 = phi ptr [ %21, %23 ], [ %31, %26 ]
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %37(ptr noundef nonnull %36) #13
  store ptr null, ptr %20, align 8, !tbaa !126
  %38 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 17
  store i32 0, ptr %38, align 4, !tbaa !128
  br label %39

39:                                               ; preds = %35, %19
  %40 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 20
  %41 = load ptr, ptr %40, align 8, !tbaa !101
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  tail call fastcc void @free_renderdata_strandnodes(ptr noundef nonnull %41) #14
  store ptr null, ptr %40, align 8, !tbaa !101
  %44 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 16
  store i32 0, ptr %44, align 8, !tbaa !111
  br label %45

45:                                               ; preds = %43, %39
  %46 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 22
  %47 = load ptr, ptr %46, align 8, !tbaa !117
  %48 = icmp eq ptr %47, null
  br i1 %48, label %63, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.StrandBuffer, ptr %47, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !113
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %54(ptr noundef nonnull %51) #13
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %struct.StrandBuffer, ptr %47, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !129
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %60(ptr noundef nonnull %57) #13
  br label %61

61:                                               ; preds = %59, %55
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %62(ptr noundef nonnull %47) #13
  br label %63

63:                                               ; preds = %61, %45
  %64 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 23
  %65 = load ptr, ptr %64, align 8, !tbaa !70
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %68(ptr noundef nonnull %65) #13
  br label %69

69:                                               ; preds = %67, %63
  %70 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 24
  %71 = load ptr, ptr %70, align 8, !tbaa !73
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %74(ptr noundef nonnull %71) #13
  br label %75

75:                                               ; preds = %73, %69
  %76 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 30
  %77 = load ptr, ptr %76, align 8, !tbaa !130
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %80(ptr noundef nonnull %77) #13
  store ptr null, ptr %76, align 8, !tbaa !130
  br label %81

81:                                               ; preds = %79, %75
  %82 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 31
  %83 = load ptr, ptr %82, align 8, !tbaa !131
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %86(ptr noundef nonnull %83) #13
  store ptr null, ptr %82, align 8, !tbaa !131
  br label %87

87:                                               ; preds = %85, %81
  %88 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 29
  %89 = load ptr, ptr %88, align 8, !tbaa !132
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  tail call void @RE_rayobject_free(ptr noundef nonnull %89) #13
  store ptr null, ptr %88, align 8, !tbaa !132
  br label %92

92:                                               ; preds = %87, %91
  %93 = load ptr, ptr %6, align 8, !tbaa !45
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %5, !llvm.loop !133

95:                                               ; preds = %92, %1
  %96 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 69
  %97 = load ptr, ptr %96, align 8, !tbaa !134
  %98 = icmp eq ptr %97, null
  br i1 %98, label %123, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %101 = load ptr, ptr %100, align 8, !tbaa !45
  %102 = icmp eq ptr %101, null
  br i1 %102, label %120, label %103

103:                                              ; preds = %99, %115
  %104 = phi ptr [ %116, %115 ], [ %101, %99 ]
  %105 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %104, i64 0, i32 16
  %106 = load ptr, ptr %105, align 8, !tbaa !49
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %109(ptr noundef nonnull %106) #13
  br label %110

110:                                              ; preds = %108, %103
  %111 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %104, i64 0, i32 18
  %112 = load ptr, ptr %111, align 8, !tbaa !150
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  tail call void @RE_rayobject_free(ptr noundef nonnull %112) #13
  br label %115

115:                                              ; preds = %110, %114
  %116 = load ptr, ptr %104, align 8, !tbaa !45
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %103, !llvm.loop !151

118:                                              ; preds = %115
  %119 = load ptr, ptr %96, align 8, !tbaa !134
  br label %120

120:                                              ; preds = %118, %99
  %121 = phi ptr [ %119, %118 ], [ %97, %99 ]
  %122 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %122(ptr noundef %121) #13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %96, i8 0, i64 28, i1 false)
  br label %123

123:                                              ; preds = %120, %95
  %124 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 65
  %125 = load ptr, ptr %124, align 8, !tbaa !152
  %126 = icmp eq ptr %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %128(ptr noundef nonnull %125) #13
  store ptr null, ptr %124, align 8, !tbaa !152
  br label %129

129:                                              ; preds = %127, %123
  %130 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 77
  tail call void @BLI_freelistN(ptr noundef nonnull %130) #13
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #13
  %131 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  tail call void @BLI_freelistN(ptr noundef nonnull %131) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_renderdata_strandnodes(ptr noundef %0) unnamed_addr #0 !PGOFuncName !153 {
  %2 = load ptr, ptr %0, align 8, !tbaa !110
  %3 = icmp eq ptr %2, null
  br i1 %3, label %48, label %4

4:                                                ; preds = %1, %43
  %5 = phi i64 [ %44, %43 ], [ 0, %1 ]
  %6 = phi ptr [ %46, %43 ], [ %2, %1 ]
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %7(ptr noundef nonnull %6) #13
  %8 = getelementptr inbounds %struct.StrandTableNode, ptr %0, i64 %5, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %12(ptr noundef nonnull %9) #13
  br label %13

13:                                               ; preds = %11, %4
  %14 = getelementptr inbounds %struct.StrandTableNode, ptr %0, i64 %5, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !107
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %18(ptr noundef nonnull %15) #13
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.StrandTableNode, ptr %0, i64 %5, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !154
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %24(ptr noundef nonnull %21) #13
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.StrandTableNode, ptr %0, i64 %5, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !102
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %30(ptr noundef nonnull %27) #13
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr inbounds %struct.StrandTableNode, ptr %0, i64 %5, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !108
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %36(ptr noundef nonnull %33) #13
  br label %37

37:                                               ; preds = %35, %31
  %38 = getelementptr inbounds %struct.StrandTableNode, ptr %0, i64 %5, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !109
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %42(ptr noundef nonnull %39) #13
  br label %43

43:                                               ; preds = %37, %41
  %44 = add nuw i64 %5, 1
  %45 = getelementptr inbounds %struct.StrandTableNode, ptr %0, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !110
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %4, !llvm.loop !155

48:                                               ; preds = %43, %1
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %49(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: optsize
declare void @RE_rayobject_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_findOrAddHalo(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %1) #14
  br label %53

6:                                                ; preds = %2
  %7 = lshr i32 %1, 8
  %8 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 17
  %9 = load i32, ptr %8, align 4, !tbaa !128
  %10 = add nsw i32 %9, -1
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %36, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !126
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %16 = add nsw i32 %9, 1024
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 3
  %19 = tail call ptr %15(i64 noundef %18, ptr noundef nonnull @.str.31) #13
  store ptr %19, ptr %13, align 8, !tbaa !126
  %20 = icmp eq ptr %14, null
  %21 = load i32, ptr %8, align 4, !tbaa !128
  %22 = sext i32 %21 to i64
  br i1 %20, label %32, label %23

23:                                               ; preds = %12
  %24 = shl nsw i64 %22, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr nonnull align 8 %14, i64 %24, i1 false)
  %25 = load ptr, ptr %13, align 8, !tbaa !126
  %26 = load i32, ptr %8, align 4, !tbaa !128
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %28, i8 0, i64 8192, i1 false)
  %29 = load i32, ptr %8, align 4, !tbaa !128
  %30 = add nsw i32 %29, 1024
  store i32 %30, ptr %8, align 4, !tbaa !128
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %31(ptr noundef nonnull %14) #13
  br label %36

32:                                               ; preds = %12
  %33 = getelementptr inbounds ptr, ptr %19, i64 %22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %33, i8 0, i64 8192, i1 false)
  %34 = load i32, ptr %8, align 4, !tbaa !128
  %35 = add nsw i32 %34, 1024
  store i32 %35, ptr %8, align 4, !tbaa !128
  br label %36

36:                                               ; preds = %32, %23, %6
  %37 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 21
  %38 = load ptr, ptr %37, align 8, !tbaa !126
  %39 = zext nneg i32 %7 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !45
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %45 = tail call ptr %44(i64 noundef 32768, ptr noundef nonnull @.str.32) #13
  %46 = load ptr, ptr %37, align 8, !tbaa !126
  %47 = getelementptr inbounds ptr, ptr %46, i64 %39
  store ptr %45, ptr %47, align 8, !tbaa !45
  br label %48

48:                                               ; preds = %43, %36
  %49 = phi ptr [ %45, %43 ], [ %41, %36 ]
  %50 = and i32 %1, 255
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds %struct.HaloRen, ptr %49, i64 %51
  br label %53

53:                                               ; preds = %48, %4
  %54 = phi ptr [ null, %4 ], [ %52, %48 ]
  ret ptr %54
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_inithalo(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef readonly %5, float noundef %6, float noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [4 x float], align 16
  %17 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #15
  %18 = fcmp oeq float %6, 0.000000e+00
  br i1 %18, label %222, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  call void @projectverto(ptr noundef %3, ptr noundef nonnull %20, ptr noundef nonnull %16) #13
  %21 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 3
  %22 = load float, ptr %21, align 4, !tbaa !59
  %23 = fcmp oeq float %22, 0.000000e+00
  br i1 %23, label %222, label %24

24:                                               ; preds = %19
  %25 = icmp eq ptr %4, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %24
  call void @projectverto(ptr noundef nonnull %4, ptr noundef nonnull %20, ptr noundef nonnull %17) #13
  %27 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 3
  %28 = load float, ptr %27, align 4, !tbaa !59
  %29 = fcmp oeq float %28, 0.000000e+00
  br i1 %29, label %222, label %30

30:                                               ; preds = %26, %24
  %31 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 13
  %32 = load i32, ptr %31, align 4, !tbaa !156
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %31, align 4, !tbaa !156
  %34 = call ptr @RE_findOrAddHalo(ptr noundef %1, i32 noundef %32) #14
  %35 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %35, ptr noundef %3) #14
  %36 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 26
  store float %6, ptr %36, align 8, !tbaa !157
  %37 = load float, ptr %21, align 4, !tbaa !59
  %38 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %39 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 3
  %40 = load <2 x i32>, ptr %38, align 4, !tbaa !58
  %41 = sitofp <2 x i32> %40 to <2 x float>
  %42 = fmul <2 x float> %41, <float 5.000000e-01, float 5.000000e-01>
  %43 = load <2 x float>, ptr %16, align 16, !tbaa !59
  %44 = insertelement <2 x float> poison, float %37, i64 0
  %45 = shufflevector <2 x float> %44, <2 x float> poison, <2 x i32> zeroinitializer
  %46 = fdiv <2 x float> %43, %45
  %47 = fmul <2 x float> %42, %46
  store <2 x float> %47, ptr %39, align 8, !tbaa !59
  %48 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 2
  %49 = load float, ptr %48, align 8, !tbaa !59
  %50 = fdiv float %49, %37
  %51 = fmul float %50, 0x415FFFFFC0000000
  %52 = fptosi float %51 to i32
  %53 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 15
  store i32 %52, ptr %53, align 8, !tbaa !159
  %54 = fmul float %50, 0x41E0000000000000
  %55 = fptosi float %54 to i32
  %56 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 17
  store i32 %55, ptr %56, align 8, !tbaa !160
  br i1 %25, label %90, label %57

57:                                               ; preds = %30
  %58 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 19
  %59 = load i8, ptr %58, align 1, !tbaa !161
  %60 = or i8 %59, 2
  store i8 %60, ptr %58, align 1, !tbaa !161
  %61 = load float, ptr %17, align 16, !tbaa !59
  %62 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 3
  %63 = load float, ptr %62, align 4, !tbaa !59
  %64 = fdiv float %61, %63
  %65 = extractelement <2 x float> %41, i64 0
  %66 = fmul float %65, -5.000000e-01
  %67 = extractelement <2 x float> %47, i64 0
  %68 = call float @llvm.fmuladd.f32(float %66, float %64, float %67)
  %69 = fcmp oeq float %68, 0.000000e+00
  br i1 %69, label %79, label %70

70:                                               ; preds = %57
  %71 = extractelement <2 x float> %41, i64 1
  %72 = fmul float %71, -5.000000e-01
  %73 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !59
  %75 = fdiv float %74, %63
  %76 = extractelement <2 x float> %47, i64 1
  %77 = call float @llvm.fmuladd.f32(float %72, float %75, float %76)
  %78 = call float @atan2f(float noundef %77, float noundef %68) #13
  br label %79

79:                                               ; preds = %57, %70
  %80 = phi float [ %78, %70 ], [ 0.000000e+00, %57 ]
  %81 = call float @sinf(float noundef %80) #13
  %82 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 7
  store float %81, ptr %82, align 8, !tbaa !162
  %83 = call float @cosf(float noundef %80) #13
  %84 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 8
  store float %83, ptr %84, align 4, !tbaa !163
  %85 = call fastcc float @len_v3v3(ptr noundef nonnull %4, ptr noundef %3) #14
  %86 = fsub float 1.000000e+00, %7
  %87 = fmul float %86, %6
  %88 = call float @llvm.fmuladd.f32(float %7, float %85, float %87)
  store float %88, ptr %36, align 8, !tbaa !157
  %89 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 10
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %89, ptr noundef %3, ptr noundef nonnull %4) #14
  call fastcc void @normalize_v3(ptr noundef nonnull %89) #14
  br label %90

90:                                               ; preds = %79, %30
  %91 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 51
  %92 = load i32, ptr %91, align 4, !tbaa !164
  %93 = and i32 %92, 1024
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 19
  %97 = load i8, ptr %96, align 1, !tbaa !161
  %98 = or i8 %97, 4
  store i8 %98, ptr %96, align 1, !tbaa !161
  br label %99

99:                                               ; preds = %95, %90
  %100 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 21
  %101 = load float, ptr %100, align 8, !tbaa !168
  %102 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 2
  store float %101, ptr %102, align 4, !tbaa !169
  %103 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 4
  %104 = load float, ptr %103, align 4, !tbaa !170
  %105 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 14
  store float %104, ptr %105, align 4, !tbaa !171
  %106 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 5
  %107 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 12
  %108 = load <2 x float>, ptr %106, align 8, !tbaa !59
  %109 = shufflevector <2 x float> %108, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %109, ptr %107, align 4, !tbaa !59
  %110 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 25
  %111 = load float, ptr %110, align 8, !tbaa !172
  %112 = fmul float %111, 2.550000e+02
  %113 = fptoui float %112 to i8
  %114 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 20
  store i8 %113, ptr %114, align 2, !tbaa !173
  %115 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 29
  store ptr %2, ptr %115, align 8, !tbaa !174
  %116 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 38
  %117 = load i16, ptr %116, align 8, !tbaa !175
  %118 = sitofp i16 %117 to float
  %119 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 11
  store float %118, ptr %119, align 8, !tbaa !176
  %120 = trunc i32 %8 to i8
  %121 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 24
  store i8 %120, ptr %121, align 2, !tbaa !177
  %122 = and i32 %92, 2048
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %99
  %125 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 56
  %126 = load i16, ptr %125, align 2, !tbaa !178
  %127 = trunc i16 %126 to i8
  %128 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 18
  store i8 %127, ptr %128, align 4, !tbaa !179
  br label %129

129:                                              ; preds = %124, %99
  %130 = and i32 %92, 512
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 57
  %134 = load i16, ptr %133, align 8, !tbaa !180
  %135 = trunc i16 %134 to i8
  %136 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 22
  store i8 %135, ptr %136, align 8, !tbaa !181
  br label %137

137:                                              ; preds = %132, %129
  %138 = and i32 %92, 256
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 58
  %142 = load i16, ptr %141, align 2, !tbaa !182
  %143 = trunc i16 %142 to i8
  %144 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 23
  store i8 %143, ptr %144, align 1, !tbaa !183
  br label %145

145:                                              ; preds = %140, %137
  %146 = and i32 %92, 32768
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 55
  %150 = load i16, ptr %149, align 4, !tbaa !184
  %151 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 25
  store i16 %150, ptr %151, align 4, !tbaa !185
  br label %152

152:                                              ; preds = %148, %145
  %153 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 102
  %154 = load ptr, ptr %153, align 8, !tbaa !45
  %155 = icmp eq ptr %154, null
  br i1 %155, label %218, label %156

156:                                              ; preds = %152
  %157 = and i32 %92, 4096
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 21
  store i8 1, ptr %160, align 1, !tbaa !186
  br label %218

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 73
  %163 = load i32, ptr %162, align 8, !tbaa !187
  %164 = and i32 %163, 1
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %218

166:                                              ; preds = %161
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef %3) #14
  %167 = load i16, ptr %154, align 8, !tbaa !188
  %168 = zext i16 %167 to i32
  %169 = and i32 %168, 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = and i32 %168, 32
  %173 = icmp eq i32 %172, 0
  %174 = icmp ne ptr %5, null
  %175 = and i1 %174, %173
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %5) #14
  br label %177

177:                                              ; preds = %171, %176, %166
  %178 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 100
  %179 = load ptr, ptr %178, align 8, !tbaa !190
  %180 = call i32 @externtex(ptr noundef nonnull %154, ptr noundef nonnull %15, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, i32 noundef 0, ptr noundef %179) #13
  %181 = getelementptr inbounds %struct.MTex, ptr %154, i64 0, i32 1
  %182 = load i16, ptr %181, align 2, !tbaa !191
  %183 = and i16 %182, 1
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %207, label %185

185:                                              ; preds = %177
  %186 = load float, ptr %10, align 4, !tbaa !59
  %187 = getelementptr inbounds %struct.MTex, ptr %154, i64 0, i32 28
  %188 = load float, ptr %187, align 4, !tbaa !192
  %189 = fmul float %186, %188
  %190 = fsub float 1.000000e+00, %189
  %191 = load float, ptr %11, align 4, !tbaa !59
  %192 = load float, ptr %103, align 4, !tbaa !170
  %193 = fmul float %190, %192
  %194 = call float @llvm.fmuladd.f32(float %189, float %191, float %193)
  store float %194, ptr %105, align 4, !tbaa !171
  %195 = load float, ptr %12, align 4, !tbaa !59
  %196 = load float, ptr %13, align 4, !tbaa !59
  %197 = load <2 x float>, ptr %106, align 8, !tbaa !59
  %198 = insertelement <2 x float> poison, float %190, i64 0
  %199 = shufflevector <2 x float> %198, <2 x float> poison, <2 x i32> zeroinitializer
  %200 = fmul <2 x float> %199, %197
  %201 = insertelement <2 x float> poison, float %189, i64 0
  %202 = shufflevector <2 x float> %201, <2 x float> poison, <2 x i32> zeroinitializer
  %203 = insertelement <2 x float> poison, float %195, i64 0
  %204 = insertelement <2 x float> %203, float %196, i64 1
  %205 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %202, <2 x float> %204, <2 x float> %200)
  %206 = shufflevector <2 x float> %205, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %206, ptr %107, align 4, !tbaa !59
  br label %207

207:                                              ; preds = %185, %177
  %208 = load i16, ptr %154, align 8, !tbaa !188
  %209 = and i16 %208, 16
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %207
  %212 = load float, ptr %10, align 4, !tbaa !59
  store float %212, ptr %102, align 4, !tbaa !169
  br label %213

213:                                              ; preds = %211, %207
  %214 = and i16 %182, 128
  %215 = icmp eq i16 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %213
  %217 = load float, ptr %10, align 4, !tbaa !59
  store float %217, ptr %102, align 4, !tbaa !169
  br label %218

218:                                              ; preds = %159, %213, %216, %161, %152
  %219 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 100
  %220 = load ptr, ptr %219, align 8, !tbaa !190
  %221 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 30
  store ptr %220, ptr %221, align 8, !tbaa !193
  br label %222

222:                                              ; preds = %26, %19, %9, %218
  %223 = phi ptr [ %34, %218 ], [ null, %9 ], [ null, %19 ], [ null, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  ret ptr %223
}

; Function Attrs: optsize
declare void @projectverto(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !194 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #14
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !195 {
  %4 = load float, ptr %1, align 4, !tbaa !59
  %5 = load float, ptr %2, align 4, !tbaa !59
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !59
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !59
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !59
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare i32 @externtex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_inithalo_particle(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef readonly %6, ptr noundef readonly %7, float noundef %8, float noundef %9, i32 noundef %10, ptr nocapture noundef readonly %11) local_unnamed_addr #0 {
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca [3 x float], align 8
  %19 = alloca [4 x float], align 16
  %20 = alloca [4 x float], align 16
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #15
  %24 = fcmp oeq float %8, 0.000000e+00
  br i1 %24, label %347, label %25

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  call void @projectverto(ptr noundef %4, ptr noundef nonnull %26, ptr noundef nonnull %19) #13
  %27 = getelementptr inbounds [4 x float], ptr %19, i64 0, i64 3
  %28 = load float, ptr %27, align 4, !tbaa !59
  %29 = fcmp oeq float %28, 0.000000e+00
  br i1 %29, label %347, label %30

30:                                               ; preds = %25
  %31 = icmp eq ptr %5, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  call void @projectverto(ptr noundef nonnull %5, ptr noundef nonnull %26, ptr noundef nonnull %20) #13
  %33 = getelementptr inbounds [4 x float], ptr %20, i64 0, i64 3
  %34 = load float, ptr %33, align 4, !tbaa !59
  %35 = fcmp oeq float %34, 0.000000e+00
  br i1 %35, label %347, label %36

36:                                               ; preds = %32, %30
  %37 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 13
  %38 = load i32, ptr %37, align 4, !tbaa !156
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %37, align 4, !tbaa !156
  %40 = call ptr @RE_findOrAddHalo(ptr noundef %1, i32 noundef %38) #14
  %41 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %41, ptr noundef %4) #14
  %42 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 26
  store float %8, ptr %42, align 8, !tbaa !157
  %43 = load float, ptr %27, align 4, !tbaa !59
  %44 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %45 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 3
  %46 = load <2 x i32>, ptr %44, align 4, !tbaa !58
  %47 = sitofp <2 x i32> %46 to <2 x float>
  %48 = fmul <2 x float> %47, <float 5.000000e-01, float 5.000000e-01>
  %49 = load <2 x float>, ptr %19, align 16, !tbaa !59
  %50 = insertelement <2 x float> poison, float %43, i64 0
  %51 = shufflevector <2 x float> %50, <2 x float> poison, <2 x i32> zeroinitializer
  %52 = fdiv <2 x float> %49, %51
  %53 = fmul <2 x float> %48, %52
  store <2 x float> %53, ptr %45, align 8, !tbaa !59
  %54 = getelementptr inbounds [4 x float], ptr %19, i64 0, i64 2
  %55 = load float, ptr %54, align 8, !tbaa !59
  %56 = fdiv float %55, %43
  %57 = fmul float %56, 0x415FFFFFC0000000
  %58 = fptosi float %57 to i32
  %59 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 15
  store i32 %58, ptr %59, align 8, !tbaa !159
  %60 = fmul float %56, 0x41E0000000000000
  %61 = fptosi float %60 to i32
  %62 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 17
  store i32 %61, ptr %62, align 8, !tbaa !160
  br i1 %31, label %97, label %63

63:                                               ; preds = %36
  %64 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 19
  %65 = load i8, ptr %64, align 1, !tbaa !161
  %66 = or i8 %65, 2
  store i8 %66, ptr %64, align 1, !tbaa !161
  %67 = load float, ptr %20, align 16, !tbaa !59
  %68 = getelementptr inbounds [4 x float], ptr %20, i64 0, i64 3
  %69 = load float, ptr %68, align 4, !tbaa !59
  %70 = fdiv float %67, %69
  %71 = extractelement <2 x float> %47, i64 0
  %72 = fmul float %71, -5.000000e-01
  %73 = extractelement <2 x float> %53, i64 0
  %74 = call float @llvm.fmuladd.f32(float %72, float %70, float %73)
  %75 = fcmp oeq float %74, 0.000000e+00
  br i1 %75, label %85, label %76

76:                                               ; preds = %63
  %77 = extractelement <2 x float> %47, i64 1
  %78 = fmul float %77, -5.000000e-01
  %79 = getelementptr inbounds [4 x float], ptr %20, i64 0, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !59
  %81 = fdiv float %80, %69
  %82 = extractelement <2 x float> %53, i64 1
  %83 = call float @llvm.fmuladd.f32(float %78, float %81, float %82)
  %84 = call float @atan2f(float noundef %83, float noundef %74) #13
  br label %85

85:                                               ; preds = %63, %76
  %86 = phi float [ %84, %76 ], [ 0.000000e+00, %63 ]
  %87 = call float @sinf(float noundef %86) #13
  %88 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 7
  store float %87, ptr %88, align 8, !tbaa !162
  %89 = call float @cosf(float noundef %86) #13
  %90 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 8
  store float %89, ptr %90, align 4, !tbaa !163
  %91 = call fastcc float @len_v3v3(ptr noundef nonnull %5, ptr noundef %4) #14
  %92 = fmul float %91, 5.000000e-01
  %93 = fsub float 1.000000e+00, %9
  %94 = fmul float %93, %8
  %95 = call float @llvm.fmuladd.f32(float %9, float %92, float %94)
  store float %95, ptr %42, align 8, !tbaa !157
  %96 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 10
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %96, ptr noundef %4, ptr noundef nonnull %5) #14
  call fastcc void @normalize_v3(ptr noundef nonnull %96) #14
  br label %97

97:                                               ; preds = %85, %36
  %98 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %99 = load i32, ptr %98, align 4, !tbaa !164
  %100 = and i32 %99, 1024
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 19
  %104 = load i8, ptr %103, align 1, !tbaa !161
  %105 = or i8 %104, 4
  store i8 %105, ptr %103, align 1, !tbaa !161
  br label %106

106:                                              ; preds = %102, %97
  %107 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 21
  %108 = load float, ptr %107, align 8, !tbaa !168
  %109 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 2
  store float %108, ptr %109, align 4, !tbaa !169
  %110 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 4
  %111 = load float, ptr %110, align 4, !tbaa !170
  %112 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 14
  store float %111, ptr %112, align 4, !tbaa !171
  %113 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 5
  %114 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 13
  %115 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 12
  %116 = load <2 x float>, ptr %113, align 8, !tbaa !59
  %117 = shufflevector <2 x float> %116, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %117, ptr %115, align 4, !tbaa !59
  %118 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 25
  %119 = load float, ptr %118, align 8, !tbaa !172
  %120 = fmul float %119, 2.550000e+02
  %121 = fptoui float %120 to i8
  %122 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 20
  store i8 %121, ptr %122, align 2, !tbaa !173
  %123 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 29
  store ptr %3, ptr %123, align 8, !tbaa !174
  %124 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 38
  %125 = load i16, ptr %124, align 8, !tbaa !175
  %126 = sitofp i16 %125 to float
  %127 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 11
  store float %126, ptr %127, align 8, !tbaa !176
  %128 = trunc i32 %10 to i8
  %129 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 24
  store i8 %128, ptr %129, align 2, !tbaa !177
  %130 = and i32 %99, 2048
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %106
  %133 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 56
  %134 = load i16, ptr %133, align 2, !tbaa !178
  %135 = trunc i16 %134 to i8
  %136 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 18
  store i8 %135, ptr %136, align 4, !tbaa !179
  br label %137

137:                                              ; preds = %132, %106
  %138 = and i32 %99, 512
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 57
  %142 = load i16, ptr %141, align 8, !tbaa !180
  %143 = trunc i16 %142 to i8
  %144 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 22
  store i8 %143, ptr %144, align 8, !tbaa !181
  br label %145

145:                                              ; preds = %140, %137
  %146 = and i32 %99, 256
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 58
  %150 = load i16, ptr %149, align 2, !tbaa !182
  %151 = trunc i16 %150 to i8
  %152 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 23
  store i8 %151, ptr %152, align 1, !tbaa !183
  br label %153

153:                                              ; preds = %148, %145
  %154 = and i32 %99, 32768
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 55
  %158 = load i16, ptr %157, align 4, !tbaa !184
  %159 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 25
  store i16 %158, ptr %159, align 4, !tbaa !185
  br label %160

160:                                              ; preds = %156, %153
  %161 = and i32 %99, 4096
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 102
  %165 = load ptr, ptr %164, align 8, !tbaa !45
  %166 = icmp eq ptr %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 21
  store i8 1, ptr %168, align 1, !tbaa !186
  br label %169

169:                                              ; preds = %167, %163, %160
  %170 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 73
  %171 = icmp ne ptr %7, null
  %172 = getelementptr inbounds float, ptr %11, i64 2
  %173 = getelementptr inbounds [3 x float], ptr %18, i64 0, i64 2
  %174 = icmp eq ptr %6, null
  %175 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 2
  %176 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 100
  %177 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 1
  %178 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 2
  %179 = getelementptr inbounds [3 x float], ptr %23, i64 0, i64 2
  %180 = getelementptr inbounds [3 x float], ptr %21, i64 0, i64 1
  br label %181

181:                                              ; preds = %169, %341
  %182 = phi i64 [ 0, %169 ], [ %342, %341 ]
  %183 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 102, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !45
  %185 = icmp eq ptr %184, null
  br i1 %185, label %341, label %186

186:                                              ; preds = %181
  %187 = load i32, ptr %170, align 8, !tbaa !187
  %188 = trunc i64 %182 to i32
  %189 = shl nuw nsw i32 1, %188
  %190 = and i32 %187, %189
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %341

192:                                              ; preds = %186
  call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef %4) #14
  %193 = load i16, ptr %184, align 8, !tbaa !188
  %194 = zext i16 %193 to i32
  %195 = and i32 %194, 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %237

197:                                              ; preds = %192
  %198 = and i32 %194, 32
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.MTex, ptr %184, i64 0, i32 4
  %202 = load ptr, ptr %201, align 8, !tbaa !196
  %203 = icmp eq ptr %202, null
  br i1 %203, label %237, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.Object, ptr %202, i64 0, i32 51
  call void @mul_m4_v3(ptr noundef nonnull %205, ptr noundef nonnull %18) #13
  br label %237

206:                                              ; preds = %197
  %207 = and i32 %194, 8
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %237

209:                                              ; preds = %206
  %210 = and i32 %194, 16
  %211 = icmp ne i32 %210, 0
  %212 = and i1 %171, %211
  br i1 %212, label %213, label %228

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.MTex, ptr %184, i64 0, i32 6
  %215 = call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %175, i32 noundef 5, ptr noundef nonnull %214) #13
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = call i32 @CustomData_get_active_layer_index(ptr noundef nonnull %175, i32 noundef 5) #13
  br label %219

219:                                              ; preds = %217, %213
  %220 = phi i32 [ %218, %217 ], [ %215, %213 ]
  %221 = call i32 @CustomData_get_layer_index(ptr noundef nonnull %175, i32 noundef 5) #13
  %222 = sub nsw i32 %220, %221
  %223 = shl nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds float, ptr %7, i64 %224
  %226 = load <2 x float>, ptr %225, align 4, !tbaa !59
  %227 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %226, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> <float -1.000000e+00, float -1.000000e+00>)
  store <2 x float> %227, ptr %18, align 8, !tbaa !59
  store float 0.000000e+00, ptr %173, align 8, !tbaa !59
  br label %237

228:                                              ; preds = %209
  %229 = and i32 %194, 8192
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %235, label %231

231:                                              ; preds = %228
  %232 = load <2 x float>, ptr %11, align 4, !tbaa !59
  %233 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %232, <2 x float> <float 2.000000e+00, float 2.000000e+00>, <2 x float> <float -1.000000e+00, float -1.000000e+00>)
  store <2 x float> %233, ptr %18, align 8, !tbaa !59
  %234 = load float, ptr %172, align 4, !tbaa !59
  store float %234, ptr %173, align 8, !tbaa !59
  br label %237

235:                                              ; preds = %228
  br i1 %174, label %237, label %236

236:                                              ; preds = %235
  call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef nonnull %6) #14
  br label %237

237:                                              ; preds = %206, %204, %200, %219, %235, %236, %231, %192
  %238 = load ptr, ptr %176, align 8, !tbaa !190
  %239 = call i32 @externtex(ptr noundef nonnull %184, ptr noundef nonnull %18, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17, i32 noundef 0, ptr noundef %238) #13
  %240 = getelementptr inbounds %struct.MTex, ptr %184, i64 0, i32 1
  %241 = load i16, ptr %240, align 2, !tbaa !191
  %242 = and i16 %241, 1
  %243 = icmp eq i16 %242, 0
  br i1 %243, label %260, label %244

244:                                              ; preds = %237
  %245 = load float, ptr %14, align 4, !tbaa !59
  store float %245, ptr %22, align 4, !tbaa !59
  %246 = load float, ptr %15, align 4, !tbaa !59
  store float %246, ptr %177, align 4, !tbaa !59
  %247 = load float, ptr %16, align 4, !tbaa !59
  store float %247, ptr %178, align 4, !tbaa !59
  %248 = load <2 x float>, ptr %114, align 8, !tbaa !59
  %249 = shufflevector <2 x float> %248, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %249, ptr %23, align 8, !tbaa !59
  %250 = load float, ptr %115, align 4, !tbaa !197
  store float %250, ptr %179, align 8, !tbaa !59
  %251 = load float, ptr %13, align 4, !tbaa !59
  %252 = getelementptr inbounds %struct.MTex, ptr %184, i64 0, i32 28
  %253 = load float, ptr %252, align 4, !tbaa !192
  %254 = getelementptr inbounds %struct.MTex, ptr %184, i64 0, i32 3
  %255 = load i16, ptr %254, align 2, !tbaa !198
  %256 = sext i16 %255 to i32
  call void @texture_rgb_blend(ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23, float noundef %251, float noundef %253, i32 noundef %256) #13
  %257 = load float, ptr %21, align 4, !tbaa !59
  store float %257, ptr %112, align 4, !tbaa !171
  %258 = load <2 x float>, ptr %180, align 4, !tbaa !59
  %259 = shufflevector <2 x float> %258, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %259, ptr %115, align 4, !tbaa !59
  br label %260

260:                                              ; preds = %244, %237
  %261 = icmp eq i32 %239, 0
  br i1 %261, label %264, label %262

262:                                              ; preds = %260
  %263 = load float, ptr %17, align 4, !tbaa !59
  store float %263, ptr %13, align 4, !tbaa !59
  br label %264

264:                                              ; preds = %262, %260
  %265 = load i16, ptr %240, align 2, !tbaa !191
  %266 = and i16 %265, 128
  %267 = icmp eq i16 %266, 0
  br i1 %267, label %280, label %268

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.MTex, ptr %184, i64 0, i32 26
  %270 = load float, ptr %269, align 4, !tbaa !199
  %271 = load float, ptr %109, align 4, !tbaa !169
  %272 = load float, ptr %13, align 4, !tbaa !59
  %273 = getelementptr inbounds %struct.MTex, ptr %184, i64 0, i32 35
  %274 = load float, ptr %273, align 8, !tbaa !200
  %275 = getelementptr inbounds %struct.MTex, ptr %184, i64 0, i32 3
  %276 = load i16, ptr %275, align 2, !tbaa !198
  %277 = sext i16 %276 to i32
  %278 = call float @texture_value_blend(float noundef %270, float noundef %271, float noundef %272, float noundef %274, i32 noundef %277) #13
  store float %278, ptr %109, align 4, !tbaa !169
  %279 = load i16, ptr %240, align 2, !tbaa !191
  br label %280

280:                                              ; preds = %268, %264
  %281 = phi i16 [ %279, %268 ], [ %265, %264 ]
  %282 = and i16 %281, 256
  %283 = icmp eq i16 %282, 0
  br i1 %283, label %298, label %284

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.MTex, ptr %184, i64 0, i32 26
  %286 = load float, ptr %285, align 4, !tbaa !199
  %287 = load float, ptr %127, align 8, !tbaa !176
  %288 = fdiv float %287, 1.270000e+02
  %289 = load float, ptr %13, align 4, !tbaa !59
  %290 = getelementptr inbounds %struct.MTex, ptr %184, i64 0, i32 39
  %291 = load float, ptr %290, align 8, !tbaa !201
  %292 = getelementptr inbounds %struct.MTex, ptr %184, i64 0, i32 3
  %293 = load i16, ptr %292, align 2, !tbaa !198
  %294 = sext i16 %293 to i32
  %295 = call float @texture_value_blend(float noundef %286, float noundef %288, float noundef %289, float noundef %291, i32 noundef %294) #13
  %296 = call float @llvm.fmuladd.f32(float %295, float 1.260000e+02, float 1.000000e+00)
  store float %296, ptr %127, align 8, !tbaa !176
  %297 = load i16, ptr %240, align 2, !tbaa !191
  br label %298

298:                                              ; preds = %284, %280
  %299 = phi i16 [ %297, %284 ], [ %281, %280 ]
  %300 = and i16 %299, 512
  %301 = icmp eq i16 %300, 0
  br i1 %301, label %316, label %302

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.MTex, ptr %184, i64 0, i32 26
  %304 = load float, ptr %303, align 4, !tbaa !199
  %305 = load float, ptr %42, align 8, !tbaa !157
  %306 = fdiv float %305, 1.000000e+02
  %307 = load float, ptr %13, align 4, !tbaa !59
  %308 = getelementptr inbounds %struct.MTex, ptr %184, i64 0, i32 40
  %309 = load float, ptr %308, align 4, !tbaa !202
  %310 = getelementptr inbounds %struct.MTex, ptr %184, i64 0, i32 3
  %311 = load i16, ptr %310, align 2, !tbaa !198
  %312 = sext i16 %311 to i32
  %313 = call float @texture_value_blend(float noundef %304, float noundef %306, float noundef %307, float noundef %309, i32 noundef %312) #13
  %314 = fmul float %313, 1.000000e+02
  store float %314, ptr %42, align 8, !tbaa !157
  %315 = load i16, ptr %240, align 2, !tbaa !191
  br label %316

316:                                              ; preds = %302, %298
  %317 = phi i16 [ %315, %302 ], [ %299, %298 ]
  %318 = and i16 %317, 1024
  %319 = icmp eq i16 %318, 0
  br i1 %319, label %341, label %320

320:                                              ; preds = %316
  %321 = getelementptr inbounds %struct.MTex, ptr %184, i64 0, i32 26
  %322 = load float, ptr %321, align 4, !tbaa !199
  %323 = load i8, ptr %122, align 2, !tbaa !173
  %324 = uitofp i8 %323 to float
  %325 = fdiv float %324, 2.550000e+02
  %326 = load float, ptr %13, align 4, !tbaa !59
  %327 = getelementptr inbounds %struct.MTex, ptr %184, i64 0, i32 41
  %328 = load float, ptr %327, align 8, !tbaa !203
  %329 = getelementptr inbounds %struct.MTex, ptr %184, i64 0, i32 3
  %330 = load i16, ptr %329, align 2, !tbaa !198
  %331 = sext i16 %330 to i32
  %332 = call float @texture_value_blend(float noundef %322, float noundef %325, float noundef %326, float noundef %328, i32 noundef %331) #13
  %333 = fcmp olt float %332, 0.000000e+00
  br i1 %333, label %337, label %334

334:                                              ; preds = %320
  %335 = fcmp ogt float %332, 1.000000e+00
  br i1 %335, label %336, label %337

336:                                              ; preds = %334
  br label %337

337:                                              ; preds = %320, %334, %336
  %338 = phi float [ 1.000000e+00, %336 ], [ %332, %334 ], [ 0.000000e+00, %320 ]
  %339 = fmul float %338, 2.550000e+02
  %340 = fptoui float %339 to i8
  store i8 %340, ptr %122, align 2, !tbaa !173
  br label %341

341:                                              ; preds = %181, %186, %337, %316
  %342 = add nuw nsw i64 %182, 1
  %343 = icmp eq i64 %342, 18
  br i1 %343, label %344, label %181, !llvm.loop !204

344:                                              ; preds = %341
  %345 = load ptr, ptr %176, align 8, !tbaa !190
  %346 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 30
  store ptr %345, ptr %346, align 8, !tbaa !193
  br label %347

347:                                              ; preds = %32, %25, %12, %344
  %348 = phi ptr [ %40, %344 ], [ null, %12 ], [ null, %25 ], [ null, %32 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  ret ptr %348
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @CustomData_get_named_layer_index(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @CustomData_get_active_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @texture_rgb_blend(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare float @texture_value_blend(float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @project_renderdata(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, float noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = tail call float @sinf(float noundef %3) #13
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 26
  store float %10, ptr %11, align 8, !tbaa !205
  %12 = tail call float @cosf(float noundef %3) #13
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 27
  store float %12, ptr %13, align 4, !tbaa !206
  br label %14

14:                                               ; preds = %9, %5
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %156, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 27
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 26
  %21 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %22 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %23 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %24 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %26 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 24
  br label %32

28:                                               ; preds = %152, %32
  %29 = phi ptr [ %34, %32 ], [ %54, %152 ]
  %30 = load ptr, ptr %33, align 8, !tbaa !45
  %31 = icmp eq ptr %30, null
  br i1 %31, label %156, label %32, !llvm.loop !207

32:                                               ; preds = %18, %28
  %33 = phi ptr [ %16, %18 ], [ %30, %28 ]
  %34 = phi ptr [ null, %18 ], [ %29, %28 ]
  %35 = getelementptr inbounds %struct.ObjectRen, ptr %33, i64 0, i32 13
  %36 = load i32, ptr %35, align 4, !tbaa !156
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %28

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ObjectRen, ptr %33, i64 0, i32 21
  br label %40

40:                                               ; preds = %38, %152
  %41 = phi i32 [ 0, %38 ], [ %153, %152 ]
  %42 = phi ptr [ %34, %38 ], [ %54, %152 ]
  %43 = and i32 %41, 255
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load ptr, ptr %39, align 8, !tbaa !126
  %47 = lshr exact i32 %41, 8
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !45
  br label %53

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.HaloRen, ptr %42, i64 1
  br label %53

53:                                               ; preds = %51, %45
  %54 = phi ptr [ %50, %45 ], [ %52, %51 ]
  br i1 %8, label %69, label %55

55:                                               ; preds = %53
  %56 = load float, ptr %19, align 4, !tbaa !206
  %57 = getelementptr inbounds %struct.HaloRen, ptr %54, i64 0, i32 9
  %58 = load float, ptr %57, align 8, !tbaa !59
  %59 = load float, ptr %20, align 8, !tbaa !205
  %60 = getelementptr inbounds %struct.HaloRen, ptr %54, i64 0, i32 9, i64 2
  %61 = load float, ptr %60, align 8, !tbaa !59
  %62 = fmul float %59, %61
  %63 = call float @llvm.fmuladd.f32(float %56, float %58, float %62)
  store float %63, ptr %6, align 4, !tbaa !59
  %64 = getelementptr inbounds %struct.HaloRen, ptr %54, i64 0, i32 9, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !59
  store float %65, ptr %21, align 4, !tbaa !59
  %66 = fneg float %59
  %67 = fmul float %56, %61
  %68 = call float @llvm.fmuladd.f32(float %66, float %58, float %67)
  store float %68, ptr %22, align 4, !tbaa !59
  br label %71

69:                                               ; preds = %53
  %70 = getelementptr inbounds %struct.HaloRen, ptr %54, i64 0, i32 9
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %70) #14
  br label %71

71:                                               ; preds = %69, %55
  call void %1(ptr noundef nonnull %6, ptr noundef nonnull %23, ptr noundef nonnull %7) #13
  %72 = load <2 x float>, ptr %7, align 16, !tbaa !59
  %73 = fmul <2 x float> %72, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %73, ptr %7, align 16, !tbaa !59
  %74 = call fastcc i32 @panotestclip(ptr noundef %0, i8 noundef zeroext %2, ptr noundef nonnull %7) #14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.HaloRen, ptr %54, i64 0, i32 1
  store i16 -10000, ptr %77, align 2, !tbaa !208
  store i16 -10000, ptr %54, align 8, !tbaa !209
  br label %152

78:                                               ; preds = %71
  %79 = load float, ptr %24, align 4, !tbaa !59
  %80 = fcmp olt float %79, 0.000000e+00
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.HaloRen, ptr %54, i64 0, i32 1
  store i16 -10000, ptr %82, align 2, !tbaa !208
  store i16 -10000, ptr %54, align 8, !tbaa !209
  br label %152

83:                                               ; preds = %78
  %84 = load <2 x float>, ptr %7, align 16, !tbaa !59
  %85 = fmul <2 x float> %84, <float 2.000000e+00, float 2.000000e+00>
  store <2 x float> %85, ptr %7, align 16, !tbaa !59
  %86 = getelementptr inbounds %struct.HaloRen, ptr %54, i64 0, i32 3
  %87 = getelementptr inbounds %struct.HaloRen, ptr %54, i64 0, i32 4
  %88 = load <2 x i32>, ptr %25, align 4, !tbaa !58
  %89 = sitofp <2 x i32> %88 to <2 x float>
  %90 = fmul <2 x float> %89, <float 5.000000e-01, float 5.000000e-01>
  %91 = insertelement <2 x float> poison, float %79, i64 0
  %92 = shufflevector <2 x float> %91, <2 x float> poison, <2 x i32> zeroinitializer
  %93 = fdiv <2 x float> %85, %92
  %94 = fadd <2 x float> %93, <float 1.000000e+00, float 1.000000e+00>
  %95 = fmul <2 x float> %94, %90
  store <2 x float> %95, ptr %86, align 8, !tbaa !59
  %96 = load float, ptr %26, align 8, !tbaa !59
  %97 = fdiv float %96, %79
  %98 = fmul float %97, 0x415FFFFFC0000000
  %99 = fptosi float %98 to i32
  %100 = getelementptr inbounds %struct.HaloRen, ptr %54, i64 0, i32 15
  store i32 %99, ptr %100, align 8, !tbaa !159
  %101 = fmul float %97, 0x41E0000000000000
  %102 = fptosi float %101 to i32
  %103 = getelementptr inbounds %struct.HaloRen, ptr %54, i64 0, i32 17
  store i32 %102, ptr %103, align 8, !tbaa !160
  %104 = getelementptr inbounds %struct.HaloRen, ptr %54, i64 0, i32 26
  %105 = load float, ptr %104, align 8, !tbaa !157
  %106 = load float, ptr %6, align 4, !tbaa !59
  %107 = fadd float %105, %106
  store float %107, ptr %6, align 4, !tbaa !59
  call void %1(ptr noundef nonnull %6, ptr noundef nonnull %23, ptr noundef nonnull %7) #13
  %108 = load float, ptr %104, align 8, !tbaa !157
  %109 = load float, ptr %6, align 4, !tbaa !59
  %110 = fsub float %109, %108
  store float %110, ptr %6, align 4, !tbaa !59
  %111 = load float, ptr %24, align 4, !tbaa !59
  %112 = load float, ptr %86, align 8, !tbaa !210
  %113 = load i32, ptr %25, align 4, !tbaa !211
  %114 = sitofp i32 %113 to float
  %115 = load float, ptr %7, align 16, !tbaa !59
  %116 = fdiv float %115, %111
  %117 = fadd float %116, 1.000000e+00
  %118 = fmul float %114, -5.000000e-01
  %119 = call float @llvm.fmuladd.f32(float %118, float %117, float %112)
  %120 = call float @llvm.fabs.f32(float %119)
  %121 = getelementptr inbounds %struct.HaloRen, ptr %54, i64 0, i32 5
  %122 = getelementptr inbounds %struct.HaloRen, ptr %54, i64 0, i32 19
  %123 = load i8, ptr %122, align 1, !tbaa !161
  %124 = and i8 %123, 1
  %125 = icmp ne i8 %124, 0
  %126 = fcmp ogt float %120, 3.000000e+00
  %127 = select i1 %125, i1 %126, i1 false
  %128 = select i1 %127, float 3.000000e+00, float %120
  store float %128, ptr %121, align 8
  %129 = fmul float %128, %128
  %130 = getelementptr inbounds %struct.HaloRen, ptr %54, i64 0, i32 6
  store float %129, ptr %130, align 4, !tbaa !212
  %131 = load float, ptr %87, align 4, !tbaa !213
  %132 = load float, ptr %27, align 8, !tbaa !214
  %133 = fdiv float %128, %132
  %134 = fsub float %131, %133
  %135 = fptosi float %134 to i16
  store i16 %135, ptr %54, align 8, !tbaa !209
  %136 = fadd float %131, %133
  %137 = fptosi float %136 to i16
  %138 = getelementptr inbounds %struct.HaloRen, ptr %54, i64 0, i32 1
  store i16 %137, ptr %138, align 2, !tbaa !208
  %139 = load float, ptr %22, align 4, !tbaa !59
  %140 = fsub float %139, %108
  store float %140, ptr %22, align 4, !tbaa !59
  call void %1(ptr noundef nonnull %6, ptr noundef nonnull %23, ptr noundef nonnull %7) #13
  %141 = load float, ptr %26, align 8, !tbaa !59
  %142 = load float, ptr %24, align 4, !tbaa !59
  %143 = fdiv float %141, %142
  %144 = load i32, ptr %100, align 8, !tbaa !159
  %145 = sitofp i32 %144 to float
  %146 = call float @llvm.fmuladd.f32(float %143, float 0xC15FFFFFC0000000, float %145)
  %147 = call float @llvm.fabs.f32(float %146)
  %148 = fcmp ogt float %147, 0x41E0000000000000
  %149 = select i1 %148, float 0x41E0000000000000, float %147
  %150 = fptosi float %149 to i32
  %151 = getelementptr inbounds %struct.HaloRen, ptr %54, i64 0, i32 16
  store i32 %150, ptr %151, align 4, !tbaa !215
  br label %152

152:                                              ; preds = %76, %83, %81
  %153 = add nuw nsw i32 %41, 1
  %154 = load i32, ptr %35, align 4, !tbaa !156
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %40, label %28, !llvm.loop !216

156:                                              ; preds = %28, %14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @panotestclip(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !217 {
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @testclip(ptr noundef %2) #13
  br label %52

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %9 = load i32, ptr %8, align 8, !tbaa !218
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 22
  %11 = load i32, ptr %10, align 8, !tbaa !219
  %12 = add i32 %9, -1
  %13 = add i32 %12, %11
  %14 = sdiv i32 %13, %11
  %15 = getelementptr inbounds float, ptr %2, i64 3
  %16 = load float, ptr %15, align 4, !tbaa !59
  %17 = tail call float @llvm.fabs.f32(float %16)
  %18 = getelementptr inbounds float, ptr %2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !59
  %20 = fneg float %17
  %21 = fcmp olt float %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %7
  %23 = fcmp ogt float %19, %17
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %7, %22, %24
  %26 = phi i16 [ 32, %24 ], [ 0, %22 ], [ 16, %7 ]
  %27 = getelementptr inbounds float, ptr %2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !59
  %29 = fcmp ogt float %28, %17
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = or disjoint i16 %26, 4
  br label %36

32:                                               ; preds = %25
  %33 = fcmp olt float %28, %20
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = or disjoint i16 %26, 8
  br label %36

36:                                               ; preds = %32, %34, %30
  %37 = phi i16 [ %31, %30 ], [ %35, %34 ], [ %26, %32 ]
  %38 = sitofp i32 %14 to float
  %39 = fmul float %17, %38
  %40 = load float, ptr %2, align 4, !tbaa !59
  %41 = fcmp ogt float %40, %39
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = add nuw nsw i16 %37, 2
  br label %49

44:                                               ; preds = %36
  %45 = fneg float %39
  %46 = fcmp olt float %40, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = add nuw nsw i16 %37, 1
  br label %49

49:                                               ; preds = %44, %47, %42
  %50 = phi i16 [ %43, %42 ], [ %48, %47 ], [ %37, %44 ]
  %51 = zext nneg i16 %50 to i32
  br label %52

52:                                               ; preds = %49, %5
  %53 = phi i32 [ %6, %5 ], [ %51, %49 ]
  ret i32 %53
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @RE_addRenderInstance(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #15
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %11 = tail call ptr %10(i64 noundef 288, ptr noundef nonnull @.str.33) #13
  %12 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %11, i64 0, i32 2
  store ptr %1, ptr %12, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %11, i64 0, i32 3
  store ptr %2, ptr %13, align 8, !tbaa !220
  %14 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %11, i64 0, i32 4
  store ptr %3, ptr %14, align 8, !tbaa !221
  %15 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %11, i64 0, i32 5
  store i32 %4, ptr %15, align 8, !tbaa !222
  %16 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %11, i64 0, i32 6
  store i32 %5, ptr %16, align 4, !tbaa !223
  %17 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %11, i64 0, i32 7
  store i32 %7, ptr %17, align 8, !tbaa !224
  %18 = icmp eq ptr %6, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %11, i64 0, i32 8
  tail call void @copy_m4_m4(ptr noundef nonnull %20, ptr noundef nonnull %6) #13
  call void @copy_m3_m4(ptr noundef nonnull %9, ptr noundef nonnull %6) #13
  %21 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %11, i64 0, i32 10
  %22 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %21, ptr noundef nonnull %9) #13
  call void @transpose_m3(ptr noundef nonnull %21) #13
  %23 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %11, i64 0, i32 11
  %24 = load i16, ptr %23, align 8, !tbaa !86
  %25 = or i16 %24, 1
  store i16 %25, ptr %23, align 8, !tbaa !86
  br label %26

26:                                               ; preds = %19, %8
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  call void @BLI_addtail(ptr noundef nonnull %27, ptr noundef nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #15
  ret ptr %11
}

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @transpose_m3(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_makeRenderInstances(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %4 = tail call i32 @BLI_countlist(ptr noundef nonnull %3) #13
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %6 = sext i32 %4 to i64
  %7 = mul nsw i64 %6, 288
  %8 = tail call ptr %5(i64 noundef %7, ptr noundef nonnull @.str.34) #13
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 69
  store ptr %8, ptr %9, align 8, !tbaa !134
  %10 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 71
  store i32 %4, ptr %10, align 8, !tbaa !225
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %11 = load ptr, ptr %3, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %1, %24
  %14 = phi ptr [ %26, %24 ], [ %11, %1 ]
  %15 = phi ptr [ %25, %24 ], [ %8, %1 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %15, ptr noundef nonnull align 8 dereferenceable(288) %14, i64 288, i1 false), !tbaa.struct !226
  %16 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  call void @BLI_addtail(ptr noundef nonnull %2, ptr noundef nonnull %15) #13
  %20 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %15, i64 1
  br label %24

21:                                               ; preds = %13
  %22 = load i32, ptr %10, align 8, !tbaa !225
  %23 = add nsw i32 %22, -1
  store i32 %23, ptr %10, align 8, !tbaa !225
  br label %24

24:                                               ; preds = %19, %21
  %25 = phi ptr [ %20, %19 ], [ %15, %21 ]
  %26 = load ptr, ptr %14, align 8, !tbaa !45
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13, !llvm.loop !228

28:                                               ; preds = %24, %1
  call void @BLI_freelistN(ptr noundef nonnull %3) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !229
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_instance_rotate_ray_start(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 11
  %6 = load i16, ptr %5, align 8, !tbaa !86
  %7 = and i16 %6, 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %1) #14
  %11 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 9
  tail call void @mul_m4_v3(ptr noundef nonnull %11, ptr noundef %1) #13
  br label %12

12:                                               ; preds = %9, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_instance_rotate_ray_dir(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 11
  %7 = load i16, ptr %6, align 8, !tbaa !86
  %8 = and i16 %7, 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  %11 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 4
  %12 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #14
  %13 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 3
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %13, ptr noundef nonnull %12) #14
  %14 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 9
  call void @mul_m4_v3(ptr noundef nonnull %14, ptr noundef nonnull %3) #13
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %3, ptr noundef %1) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  br label %15

15:                                               ; preds = %10, %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !230 {
  %4 = load float, ptr %1, align 4, !tbaa !59
  %5 = load float, ptr %2, align 4, !tbaa !59
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !59
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !59
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !59
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !59
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !59
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_instance_rotate_ray(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @RE_instance_rotate_ray_start(ptr noundef %0, ptr noundef %1) #14
  tail call void @RE_instance_rotate_ray_dir(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @RE_instance_rotate_ray_restore(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 11
  %6 = load i16, ptr %5, align 8, !tbaa !86
  %7 = and i16 %6, 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %10) #14
  %11 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1
  %12 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #14
  br label %13

13:                                               ; preds = %9, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @clip_render_object(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef %2) #13
  %6 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  %8 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %10 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  %11 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  %12 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  %13 = icmp eq ptr %1, null
  %14 = getelementptr inbounds float, ptr %1, i64 1
  %15 = getelementptr inbounds float, ptr %1, i64 3
  %16 = getelementptr inbounds float, ptr %1, i64 2
  br label %17

17:                                               ; preds = %86, %3
  %18 = phi i32 [ -1, %3 ], [ %88, %86 ]
  %19 = phi i32 [ 0, %3 ], [ %90, %86 ]
  %20 = and i32 %19, 1
  %21 = xor i32 %20, 1
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds [3 x float], ptr %0, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !59
  store float %24, ptr %5, align 16, !tbaa !59
  %25 = and i32 %19, 2
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr %7, ptr %6
  %28 = load float, ptr %27, align 4, !tbaa !59
  store float %28, ptr %8, align 4, !tbaa !59
  %29 = icmp ult i32 %19, 4
  %30 = select i1 %29, ptr %10, ptr %9
  %31 = load float, ptr %30, align 4, !tbaa !59
  store float %31, ptr %11, align 8, !tbaa !59
  store float 1.000000e+00, ptr %12, align 4, !tbaa !59
  call void @mul_m4_v4(ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %32 = load float, ptr %5, align 16, !tbaa !59
  br i1 %13, label %57, label %33

33:                                               ; preds = %17
  %34 = load float, ptr %1, align 4, !tbaa !59
  %35 = load float, ptr %12, align 4, !tbaa !59
  %36 = fmul float %34, %35
  %37 = fcmp olt float %32, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load float, ptr %14, align 4, !tbaa !59
  %40 = fmul float %35, %39
  %41 = fcmp ogt float %32, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %33, %38, %42
  %44 = phi i32 [ 2, %42 ], [ 0, %38 ], [ 1, %33 ]
  %45 = load float, ptr %8, align 4, !tbaa !59
  %46 = load float, ptr %15, align 4, !tbaa !59
  %47 = fmul float %35, %46
  %48 = fcmp ogt float %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = or disjoint i32 %44, 4
  br label %74

51:                                               ; preds = %43
  %52 = load float, ptr %16, align 4, !tbaa !59
  %53 = fmul float %35, %52
  %54 = fcmp olt float %45, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %51
  %56 = or disjoint i32 %44, 8
  br label %74

57:                                               ; preds = %17
  %58 = load float, ptr %12, align 4, !tbaa !59
  %59 = fneg float %58
  %60 = fcmp olt float %32, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = fcmp ogt float %32, %58
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %57, %61, %63
  %65 = phi i32 [ 2, %63 ], [ 0, %61 ], [ 1, %57 ]
  %66 = load float, ptr %8, align 4, !tbaa !59
  %67 = fcmp ogt float %66, %58
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = or disjoint i32 %65, 4
  br label %74

70:                                               ; preds = %64
  %71 = fcmp olt float %66, %59
  br i1 %71, label %72, label %74

72:                                               ; preds = %70
  %73 = or disjoint i32 %65, 8
  br label %74

74:                                               ; preds = %68, %72, %70, %49, %55, %51
  %75 = phi float [ %35, %49 ], [ %35, %55 ], [ %35, %51 ], [ %58, %68 ], [ %58, %72 ], [ %58, %70 ]
  %76 = phi i32 [ %50, %49 ], [ %56, %55 ], [ %44, %51 ], [ %69, %68 ], [ %73, %72 ], [ %65, %70 ]
  %77 = load float, ptr %11, align 8, !tbaa !59
  %78 = fneg float %75
  %79 = fcmp olt float %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = or i32 %76, 16
  br label %86

82:                                               ; preds = %74
  %83 = fcmp ogt float %77, %75
  br i1 %83, label %84, label %86

84:                                               ; preds = %82
  %85 = or i32 %76, 32
  br label %86

86:                                               ; preds = %82, %84, %80
  %87 = phi i32 [ %81, %80 ], [ %85, %84 ], [ %76, %82 ]
  %88 = and i32 %87, %18
  %89 = icmp eq i32 %88, 0
  %90 = add nuw nsw i32 %19, 1
  %91 = icmp eq i32 %90, 8
  %92 = select i1 %89, i1 true, i1 %91
  br i1 %92, label %93, label %17, !llvm.loop !231

93:                                               ; preds = %86
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  ret i32 %88
}

; Function Attrs: optsize
declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !232 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #14
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #13
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #14
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #14
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !233 {
  %3 = load float, ptr %0, align 4, !tbaa !59
  %4 = load float, ptr %1, align 4, !tbaa !59
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !59
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !59
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !59
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !59
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !234 {
  %4 = load float, ptr %1, align 4, !tbaa !59
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !59
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !59
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !59
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !59
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #11 !PGOFuncName !235 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !59
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !236 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #14
  %3 = tail call float @sqrtf(float noundef %2) #13
  ret float %3
}

; Function Attrs: optsize
declare i32 @testclip(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }

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
!34 = !{!35, !39, i64 40}
!35 = !{!"VertRen", !36, i64 0, !36, i64 12, !38, i64 24, !39, i64 32, !40, i64 36, !39, i64 40}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!"float", !36, i64 0}
!41 = !{!42, !38, i64 112}
!42 = !{!"ObjectRen", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !36, i64 56, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !38, i64 112, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !38, i64 152, !38, i64 160, !39, i64 168, !39, i64 172, !39, i64 176, !36, i64 180, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272}
!43 = !{!44, !38, i64 32}
!44 = !{!"VertTableNode", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48}
!45 = !{!38, !38, i64 0}
!46 = !{!44, !38, i64 8}
!47 = !{!44, !38, i64 16}
!48 = !{!44, !38, i64 24}
!49 = !{!50, !38, i64 256}
!50 = !{!"ObjectInstanceRen", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !39, i64 40, !39, i64 44, !39, i64 48, !36, i64 52, !36, i64 116, !36, i64 180, !51, i64 216, !36, i64 220, !36, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !39, i64 264, !38, i64 272, !39, i64 280}
!51 = !{!"short", !36, i64 0}
!52 = !{!50, !38, i64 16}
!53 = !{!42, !39, i64 80}
!54 = !{!42, !39, i64 88}
!55 = !{!44, !38, i64 48}
!56 = !{i64 0, i64 12, !57, i64 12, i64 12, !57, i64 24, i64 8, !45, i64 32, i64 4, !58, i64 36, i64 4, !59, i64 40, i64 4, !58}
!57 = !{!36, !36, i64 0}
!58 = !{!39, !39, i64 0}
!59 = !{!40, !40, i64 0}
!60 = !{!42, !39, i64 96}
!61 = !{!44, !38, i64 0}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!65, !39, i64 60}
!65 = !{!"VlakRen", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !36, i64 32, !38, i64 48, !36, i64 56, !36, i64 57, !36, i64 58, !39, i64 60}
!66 = !{!42, !38, i64 120}
!67 = !{!68, !39, i64 32}
!68 = !{!"VlakTableNode", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !39, i64 36, !38, i64 40, !38, i64 48, !38, i64 56}
!69 = !{!68, !38, i64 8}
!70 = !{!42, !38, i64 152}
!71 = !{!68, !39, i64 36}
!72 = !{!68, !38, i64 16}
!73 = !{!42, !38, i64 160}
!74 = !{!68, !38, i64 24}
!75 = !{!68, !38, i64 40}
!76 = !{!68, !38, i64 48}
!77 = !{!68, !38, i64 56}
!78 = !{!42, !39, i64 84}
!79 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45, i64 24, i64 8, !45, i64 32, i64 12, !57, i64 48, i64 8, !45, i64 56, i64 1, !57, i64 57, i64 1, !57, i64 58, i64 1, !57, i64 60, i64 4, !58}
!80 = distinct !{!80, !63}
!81 = distinct !{!81, !63}
!82 = !{!68, !38, i64 0}
!83 = !{!42, !39, i64 100}
!84 = distinct !{!84, !63}
!85 = !{!"renderdatabase.c:copy_v3_v3"}
!86 = !{!50, !51, i64 216}
!87 = !{!"renderdatabase.c:normalize_v3"}
!88 = !{!89, !39, i64 172}
!89 = !{!"CustomData", !38, i64 0, !36, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !38, i64 184, !38, i64 192}
!90 = !{!89, !38, i64 0}
!91 = !{!92, !39, i64 0}
!92 = !{!"CustomDataLayer", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !36, i64 32, !38, i64 96}
!93 = !{!92, !39, i64 16}
!94 = !{!42, !39, i64 168}
!95 = !{!92, !39, i64 12}
!96 = !{!42, !39, i64 176}
!97 = !{!42, !39, i64 172}
!98 = distinct !{!98, !63}
!99 = !{!100, !39, i64 28}
!100 = !{!"StrandRen", !38, i64 0, !38, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !36, i64 32}
!101 = !{!42, !38, i64 128}
!102 = !{!103, !38, i64 16}
!103 = !{!"StrandTableNode", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !39, i64 56, !39, i64 60}
!104 = !{!103, !39, i64 56}
!105 = !{!103, !38, i64 48}
!106 = !{!103, !39, i64 60}
!107 = !{!103, !38, i64 40}
!108 = !{!103, !38, i64 24}
!109 = !{!103, !38, i64 32}
!110 = !{!103, !38, i64 0}
!111 = !{!42, !39, i64 104}
!112 = distinct !{!112, !63}
!113 = !{!114, !38, i64 16}
!114 = !{!"StrandBuffer", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !39, i64 36, !38, i64 40, !38, i64 48, !38, i64 56, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !36, i64 96, !39, i64 160, !39, i64 164}
!115 = !{!114, !39, i64 32}
!116 = !{!114, !38, i64 40}
!117 = !{!42, !38, i64 144}
!118 = !{!42, !38, i64 16}
!119 = !{!42, !38, i64 24}
!120 = !{!42, !39, i64 40}
!121 = !{!42, !39, i64 44}
!122 = !{!42, !39, i64 52}
!123 = !{!44, !38, i64 40}
!124 = distinct !{!124, !63}
!125 = distinct !{!125, !63}
!126 = !{!42, !38, i64 136}
!127 = distinct !{!127, !63}
!128 = !{!42, !39, i64 108}
!129 = !{!114, !38, i64 24}
!130 = !{!42, !38, i64 256}
!131 = !{!42, !38, i64 264}
!132 = !{!42, !38, i64 248}
!133 = distinct !{!133, !63}
!134 = !{!135, !38, i64 5800}
!135 = !{!"Render", !38, i64 0, !38, i64 8, !36, i64 16, !39, i64 92, !51, i64 96, !51, i64 98, !51, i64 100, !51, i64 102, !36, i64 104, !38, i64 112, !38, i64 120, !136, i64 128, !39, i64 144, !39, i64 148, !39, i64 152, !137, i64 156, !138, i64 172, !40, i64 188, !40, i64 192, !40, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !36, i64 240, !36, i64 252, !36, i64 288, !36, i64 352, !36, i64 416, !36, i64 480, !40, i64 544, !40, i64 548, !38, i64 552, !36, i64 560, !36, i64 816, !38, i64 1072, !36, i64 1080, !38, i64 1088, !38, i64 1096, !139, i64 1104, !146, i64 5088, !38, i64 5616, !39, i64 5624, !39, i64 5628, !136, i64 5632, !38, i64 5648, !38, i64 5656, !38, i64 5664, !38, i64 5672, !40, i64 5680, !38, i64 5688, !136, i64 5696, !40, i64 5712, !40, i64 5716, !39, i64 5720, !39, i64 5724, !39, i64 5728, !39, i64 5732, !39, i64 5736, !38, i64 5744, !136, i64 5752, !136, i64 5768, !136, i64 5784, !38, i64 5800, !136, i64 5808, !39, i64 5824, !38, i64 5832, !38, i64 5840, !38, i64 5848, !38, i64 5856, !38, i64 5864, !136, i64 5872, !38, i64 5888, !136, i64 5896, !136, i64 5912, !38, i64 5928, !38, i64 5936, !38, i64 5944, !38, i64 5952, !38, i64 5960, !38, i64 5968, !38, i64 5976, !38, i64 5984, !38, i64 5992, !38, i64 6000, !38, i64 6008, !38, i64 6016, !38, i64 6024, !38, i64 6032, !38, i64 6040, !38, i64 6048, !38, i64 6056, !148, i64 6064, !38, i64 6216, !38, i64 6224, !38, i64 6232}
!136 = !{!"ListBase", !38, i64 0, !38, i64 8}
!137 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!138 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!139 = !{!"RenderData", !140, i64 0, !38, i64 248, !38, i64 256, !143, i64 264, !144, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !51, i64 432, !51, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !51, i64 456, !51, i64 458, !51, i64 460, !51, i64 462, !51, i64 464, !51, i64 466, !39, i64 468, !51, i64 472, !51, i64 474, !51, i64 476, !51, i64 478, !51, i64 480, !51, i64 482, !39, i64 484, !39, i64 488, !51, i64 492, !51, i64 494, !39, i64 496, !39, i64 500, !51, i64 504, !51, i64 506, !51, i64 508, !51, i64 510, !51, i64 512, !36, i64 514, !36, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !51, i64 528, !51, i64 530, !51, i64 532, !51, i64 534, !51, i64 536, !51, i64 538, !51, i64 540, !51, i64 542, !138, i64 544, !138, i64 560, !137, i64 576, !136, i64 592, !51, i64 608, !51, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !39, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !51, i64 648, !51, i64 650, !51, i64 652, !51, i64 654, !51, i64 656, !51, i64 658, !40, i64 660, !40, i64 664, !51, i64 668, !51, i64 670, !40, i64 672, !40, i64 676, !36, i64 680, !39, i64 1704, !51, i64 1708, !51, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !39, i64 2520, !51, i64 2524, !51, i64 2526, !40, i64 2528, !40, i64 2532, !51, i64 2536, !51, i64 2538, !40, i64 2540, !51, i64 2544, !51, i64 2546, !39, i64 2548, !51, i64 2552, !51, i64 2554, !51, i64 2556, !51, i64 2558, !40, i64 2560, !40, i64 2564, !38, i64 2568, !39, i64 2576, !40, i64 2580, !36, i64 2584, !145, i64 2616, !39, i64 3976, !39, i64 3980}
!140 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !51, i64 8, !51, i64 10, !40, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !141, i64 24, !142, i64 184}
!141 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !36, i64 8, !36, i64 72, !40, i64 136, !40, i64 140, !38, i64 144, !38, i64 152}
!142 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!143 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !51, i64 48, !51, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!144 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !40, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !38, i64 64}
!145 = !{!"BakeData", !140, i64 0, !36, i64 248, !51, i64 1272, !51, i64 1274, !51, i64 1276, !51, i64 1278, !40, i64 1280, !40, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!146 = !{!"World", !147, i64 0, !38, i64 120, !51, i64 128, !51, i64 130, !51, i64 132, !51, i64 134, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !51, i64 200, !51, i64 202, !51, i64 204, !51, i64 206, !51, i64 208, !51, i64 210, !51, i64 212, !51, i64 214, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !51, i64 264, !51, i64 266, !51, i64 268, !51, i64 270, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !51, i64 288, !51, i64 290, !51, i64 292, !51, i64 294, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !51, i64 324, !51, i64 326, !51, i64 328, !51, i64 330, !51, i64 332, !51, i64 334, !38, i64 336, !38, i64 344, !38, i64 352, !36, i64 360, !51, i64 504, !51, i64 506, !36, i64 508, !38, i64 512, !38, i64 520}
!147 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !36, i64 32, !51, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !38, i64 112}
!148 = !{!"RenderStats", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !51, i64 28, !51, i64 30, !51, i64 32, !51, i64 34, !51, i64 36, !51, i64 38, !36, i64 40, !149, i64 48, !149, i64 56, !38, i64 64, !38, i64 72, !36, i64 80, !40, i64 144, !40, i64 148}
!149 = !{!"double", !36, i64 0}
!150 = !{!50, !38, i64 272}
!151 = distinct !{!151, !63}
!152 = !{!135, !38, i64 5744}
!153 = !{!"renderdatabase.c:free_renderdata_strandnodes"}
!154 = !{!103, !38, i64 8}
!155 = distinct !{!155, !63}
!156 = !{!42, !39, i64 92}
!157 = !{!158, !40, i64 96}
!158 = !{!"HaloRen", !51, i64 0, !51, i64 2, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32, !36, i64 44, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !36, i64 84, !36, i64 85, !36, i64 86, !36, i64 87, !36, i64 88, !36, i64 89, !36, i64 90, !51, i64 92, !40, i64 96, !39, i64 100, !39, i64 104, !38, i64 112, !38, i64 120}
!159 = !{!158, !39, i64 72}
!160 = !{!158, !39, i64 80}
!161 = !{!158, !36, i64 85}
!162 = !{!158, !40, i64 24}
!163 = !{!158, !40, i64 28}
!164 = !{!165, !39, i64 396}
!165 = !{!"Material", !147, i64 0, !38, i64 120, !51, i64 128, !51, i64 130, !40, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !166, i64 224, !167, i64 312, !40, i64 328, !40, i64 332, !40, i64 336, !40, i64 340, !40, i64 344, !40, i64 348, !40, i64 352, !51, i64 356, !51, i64 358, !51, i64 360, !36, i64 362, !36, i64 363, !40, i64 364, !40, i64 368, !51, i64 372, !51, i64 374, !40, i64 376, !40, i64 380, !40, i64 384, !40, i64 388, !51, i64 392, !51, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !51, i64 412, !51, i64 414, !51, i64 416, !51, i64 418, !40, i64 420, !40, i64 424, !40, i64 428, !40, i64 432, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !40, i64 456, !36, i64 460, !40, i64 524, !40, i64 528, !40, i64 532, !39, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !51, i64 544, !51, i64 546, !51, i64 548, !36, i64 550, !36, i64 551, !51, i64 552, !51, i64 554, !40, i64 556, !40, i64 560, !36, i64 564, !40, i64 580, !40, i64 584, !51, i64 588, !51, i64 590, !38, i64 592, !38, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !51, i64 612, !51, i64 614, !40, i64 616, !40, i64 620, !36, i64 624, !38, i64 768, !38, i64 776, !38, i64 784, !38, i64 792, !40, i64 800, !40, i64 804, !40, i64 808, !40, i64 812, !40, i64 816, !51, i64 820, !51, i64 822, !36, i64 824, !36, i64 836, !40, i64 848, !40, i64 852, !40, i64 856, !40, i64 860, !40, i64 864, !40, i64 868, !40, i64 872, !51, i64 876, !51, i64 878, !39, i64 880, !51, i64 884, !51, i64 886, !36, i64 888, !51, i64 904, !51, i64 906, !51, i64 908, !51, i64 910, !51, i64 912, !36, i64 914, !38, i64 920, !136, i64 928}
!166 = !{!"VolumeSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !40, i64 52, !40, i64 56, !40, i64 60, !51, i64 64, !51, i64 66, !51, i64 68, !51, i64 70, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84}
!167 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!168 = !{!165, !40, i64 200}
!169 = !{!158, !40, i64 4}
!170 = !{!165, !40, i64 132}
!171 = !{!158, !40, i64 68}
!172 = !{!165, !40, i64 216}
!173 = !{!158, !36, i64 86}
!174 = !{!158, !38, i64 112}
!175 = !{!165, !51, i64 360}
!176 = !{!158, !40, i64 56}
!177 = !{!158, !36, i64 90}
!178 = !{!165, !51, i64 414}
!179 = !{!158, !36, i64 84}
!180 = !{!165, !51, i64 416}
!181 = !{!158, !36, i64 88}
!182 = !{!165, !51, i64 418}
!183 = !{!158, !36, i64 89}
!184 = !{!165, !51, i64 412}
!185 = !{!158, !51, i64 92}
!186 = !{!158, !36, i64 87}
!187 = !{!165, !39, i64 536}
!188 = !{!189, !51, i64 0}
!189 = !{!"MTex", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !38, i64 8, !38, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !40, i64 116, !51, i64 120, !51, i64 122, !51, i64 124, !51, i64 126, !51, i64 128, !51, i64 130, !36, i64 132, !36, i64 133, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308}
!190 = !{!135, !38, i64 6224}
!191 = !{!189, !51, i64 2}
!192 = !{!189, !40, i64 164}
!193 = !{!158, !38, i64 120}
!194 = !{!"renderdatabase.c:len_v3v3"}
!195 = !{!"renderdatabase.c:sub_v3_v3v3"}
!196 = !{!189, !38, i64 8}
!197 = !{!158, !40, i64 60}
!198 = !{!189, !51, i64 6}
!199 = !{!189, !40, i64 156}
!200 = !{!189, !40, i64 192}
!201 = !{!189, !40, i64 208}
!202 = !{!189, !40, i64 212}
!203 = !{!189, !40, i64 216}
!204 = distinct !{!204, !63}
!205 = !{!135, !40, i64 224}
!206 = !{!135, !40, i64 228}
!207 = distinct !{!207, !63}
!208 = !{!158, !51, i64 2}
!209 = !{!158, !51, i64 0}
!210 = !{!158, !40, i64 8}
!211 = !{!135, !39, i64 148}
!212 = !{!158, !40, i64 20}
!213 = !{!158, !40, i64 12}
!214 = !{!135, !40, i64 216}
!215 = !{!158, !39, i64 76}
!216 = distinct !{!216, !63}
!217 = !{!"renderdatabase.c:panotestclip"}
!218 = !{!135, !39, i64 200}
!219 = !{!135, !39, i64 208}
!220 = !{!50, !38, i64 24}
!221 = !{!50, !38, i64 32}
!222 = !{!50, !39, i64 40}
!223 = !{!50, !39, i64 44}
!224 = !{!50, !39, i64 48}
!225 = !{!135, !39, i64 5824}
!226 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45, i64 24, i64 8, !45, i64 32, i64 8, !45, i64 40, i64 4, !58, i64 44, i64 4, !58, i64 48, i64 4, !58, i64 52, i64 64, !57, i64 116, i64 64, !57, i64 180, i64 36, !57, i64 216, i64 2, !227, i64 220, i64 12, !57, i64 232, i64 8, !57, i64 240, i64 8, !45, i64 248, i64 8, !45, i64 256, i64 8, !45, i64 264, i64 4, !58, i64 272, i64 8, !45, i64 280, i64 4, !58}
!227 = !{!51, !51, i64 0}
!228 = distinct !{!228, !63}
!229 = !{i64 0, i64 8, !45, i64 8, i64 8, !45}
!230 = !{!"renderdatabase.c:add_v3_v3v3"}
!231 = distinct !{!231, !63}
!232 = !{!"renderdatabase.c:normalize_v3_v3"}
!233 = !{!"renderdatabase.c:dot_v3v3"}
!234 = !{!"renderdatabase.c:mul_v3_v3fl"}
!235 = !{!"renderdatabase.c:zero_v3"}
!236 = !{!"renderdatabase.c:len_v3"}
