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

; Function Attrs: nounwind uwtable
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
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 1024, ptr noundef nonnull @.str) #10
  %18 = load ptr, ptr %7, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.VertTableNode, ptr %18, i64 %9, i32 4
  store ptr %17, ptr %19, align 8, !tbaa !43
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %22 = load i32, ptr %4, align 8, !tbaa !34
  %23 = and i32 %22, 255
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds float, ptr %21, i64 %24
  br label %26

26:                                               ; preds = %13, %20
  %27 = phi ptr [ %25, %20 ], [ null, %13 ]
  ret ptr %27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
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
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 4096, ptr noundef nonnull @.str.1) #10
  %18 = load ptr, ptr %7, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.VertTableNode, ptr %18, i64 %9, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !46
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %22 = load i32, ptr %4, align 8, !tbaa !34
  %23 = shl i32 %22, 2
  %24 = and i32 %23, 1020
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds float, ptr %21, i64 %25
  br label %27

27:                                               ; preds = %13, %20
  %28 = phi ptr [ %26, %20 ], [ null, %13 ]
  ret ptr %28
}

; Function Attrs: nounwind uwtable
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
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 1024, ptr noundef nonnull @.str.2) #10
  %18 = load ptr, ptr %7, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.VertTableNode, ptr %18, i64 %9, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !47
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %22 = load i32, ptr %4, align 8, !tbaa !34
  %23 = and i32 %22, 255
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds float, ptr %21, i64 %24
  br label %26

26:                                               ; preds = %13, %20
  %27 = phi ptr [ %25, %20 ], [ null, %13 ]
  ret ptr %27
}

; Function Attrs: nounwind uwtable
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
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 3072, ptr noundef nonnull @.str.3) #10
  %18 = load ptr, ptr %7, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.VertTableNode, ptr %18, i64 %9, i32 3
  store ptr %17, ptr %19, align 8, !tbaa !48
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %22 = load i32, ptr %4, align 8, !tbaa !34
  %23 = and i32 %22, 255
  %24 = mul nuw nsw i32 %23, 3
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds float, ptr %21, i64 %25
  br label %27

27:                                               ; preds = %13, %20
  %28 = phi ptr [ %26, %20 ], [ null, %13 ]
  ret ptr %28
}

; Function Attrs: nounwind uwtable
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
  %21 = tail call ptr %17(i64 noundef %20, ptr noundef nonnull @.str.4) #10
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

; Function Attrs: nounwind uwtable
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
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 1024, ptr noundef nonnull @.str.5) #10
  %18 = load ptr, ptr %7, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.VertTableNode, ptr %18, i64 %9, i32 6
  store ptr %17, ptr %19, align 8, !tbaa !55
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %22 = load i32, ptr %4, align 8, !tbaa !34
  %23 = and i32 %22, 255
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %21, i64 %24
  br label %26

26:                                               ; preds = %13, %20
  %27 = phi ptr [ %25, %20 ], [ null, %13 ]
  ret ptr %27
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @RE_vertren_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !53
  %6 = tail call ptr @RE_findOrAddVert(ptr noundef %0, i32 noundef %4)
  %7 = getelementptr inbounds %struct.VertRen, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !56
  store i32 %8, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.VertRen, ptr %1, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !34
  %11 = ashr i32 %10, 8
  %12 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds %struct.VertTableNode, ptr %13, i64 %14, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = and i32 %10, 255
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds float, ptr %16, i64 %18
  %20 = icmp eq ptr %16, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %2
  %22 = ashr i32 %8, 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.VertTableNode, ptr %13, i64 %23, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %29 = tail call ptr %28(i64 noundef 1024, ptr noundef nonnull @.str) #10
  %30 = load ptr, ptr %12, align 8, !tbaa !41
  %31 = getelementptr inbounds %struct.VertTableNode, ptr %30, i64 %23, i32 4
  store ptr %29, ptr %31, align 8, !tbaa !43
  br label %32

32:                                               ; preds = %21, %27
  %33 = phi ptr [ %29, %27 ], [ %25, %21 ]
  %34 = load i32, ptr %7, align 8, !tbaa !34
  %35 = and i32 %34, 255
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds float, ptr %33, i64 %36
  %38 = load i32, ptr %19, align 4
  store i32 %38, ptr %37, align 4
  br label %39

39:                                               ; preds = %32, %2
  %40 = load i32, ptr %9, align 8, !tbaa !34
  %41 = ashr i32 %40, 8
  %42 = load ptr, ptr %12, align 8, !tbaa !41
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds %struct.VertTableNode, ptr %42, i64 %43, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = shl i32 %40, 2
  %47 = and i32 %46, 1020
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds float, ptr %45, i64 %48
  %50 = icmp eq ptr %45, null
  br i1 %50, label %70, label %51

51:                                               ; preds = %39
  %52 = load i32, ptr %7, align 8, !tbaa !34
  %53 = ashr i32 %52, 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.VertTableNode, ptr %42, i64 %54, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %60 = tail call ptr %59(i64 noundef 4096, ptr noundef nonnull @.str.1) #10
  %61 = load ptr, ptr %12, align 8, !tbaa !41
  %62 = getelementptr inbounds %struct.VertTableNode, ptr %61, i64 %54, i32 1
  store ptr %60, ptr %62, align 8, !tbaa !46
  br label %63

63:                                               ; preds = %51, %58
  %64 = phi ptr [ %60, %58 ], [ %56, %51 ]
  %65 = load i32, ptr %7, align 8, !tbaa !34
  %66 = shl i32 %65, 2
  %67 = and i32 %66, 1020
  %68 = zext nneg i32 %67 to i64
  %69 = getelementptr inbounds float, ptr %64, i64 %68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %69, ptr noundef nonnull align 4 dereferenceable(16) %49, i64 16, i1 false)
  br label %70

70:                                               ; preds = %63, %39
  %71 = load i32, ptr %9, align 8, !tbaa !34
  %72 = ashr i32 %71, 8
  %73 = load ptr, ptr %12, align 8, !tbaa !41
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds %struct.VertTableNode, ptr %73, i64 %74, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !47
  %77 = and i32 %71, 255
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds float, ptr %76, i64 %78
  %80 = icmp eq ptr %76, null
  br i1 %80, label %100, label %81

81:                                               ; preds = %70
  %82 = load i32, ptr %7, align 8, !tbaa !34
  %83 = ashr i32 %82, 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.VertTableNode, ptr %73, i64 %84, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !47
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %90 = tail call ptr %89(i64 noundef 1024, ptr noundef nonnull @.str.2) #10
  %91 = load ptr, ptr %12, align 8, !tbaa !41
  %92 = getelementptr inbounds %struct.VertTableNode, ptr %91, i64 %84, i32 2
  store ptr %90, ptr %92, align 8, !tbaa !47
  br label %93

93:                                               ; preds = %81, %88
  %94 = phi ptr [ %90, %88 ], [ %86, %81 ]
  %95 = load i32, ptr %7, align 8, !tbaa !34
  %96 = and i32 %95, 255
  %97 = zext nneg i32 %96 to i64
  %98 = getelementptr inbounds float, ptr %94, i64 %97
  %99 = load i32, ptr %79, align 4
  store i32 %99, ptr %98, align 4
  br label %100

100:                                              ; preds = %93, %70
  %101 = load i32, ptr %9, align 8, !tbaa !34
  %102 = ashr i32 %101, 8
  %103 = load ptr, ptr %12, align 8, !tbaa !41
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds %struct.VertTableNode, ptr %103, i64 %104, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !48
  %107 = and i32 %101, 255
  %108 = mul nuw nsw i32 %107, 3
  %109 = zext nneg i32 %108 to i64
  %110 = getelementptr inbounds float, ptr %106, i64 %109
  %111 = icmp eq ptr %106, null
  br i1 %111, label %131, label %112

112:                                              ; preds = %100
  %113 = load i32, ptr %7, align 8, !tbaa !34
  %114 = ashr i32 %113, 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.VertTableNode, ptr %103, i64 %115, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !48
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %121 = tail call ptr %120(i64 noundef 3072, ptr noundef nonnull @.str.3) #10
  %122 = load ptr, ptr %12, align 8, !tbaa !41
  %123 = getelementptr inbounds %struct.VertTableNode, ptr %122, i64 %115, i32 3
  store ptr %121, ptr %123, align 8, !tbaa !48
  br label %124

124:                                              ; preds = %112, %119
  %125 = phi ptr [ %121, %119 ], [ %117, %112 ]
  %126 = load i32, ptr %7, align 8, !tbaa !34
  %127 = and i32 %126, 255
  %128 = mul nuw nsw i32 %127, 3
  %129 = zext nneg i32 %128 to i64
  %130 = getelementptr inbounds float, ptr %125, i64 %129
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %130, ptr noundef nonnull align 4 dereferenceable(12) %110, i64 12, i1 false)
  br label %131

131:                                              ; preds = %124, %100
  %132 = load i32, ptr %9, align 8, !tbaa !34
  %133 = ashr i32 %132, 8
  %134 = load ptr, ptr %12, align 8, !tbaa !41
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds %struct.VertTableNode, ptr %134, i64 %135, i32 6
  %137 = load ptr, ptr %136, align 8, !tbaa !55
  %138 = and i32 %132, 255
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds i32, ptr %137, i64 %139
  %141 = icmp eq ptr %137, null
  br i1 %141, label %161, label %142

142:                                              ; preds = %131
  %143 = load i32, ptr %7, align 8, !tbaa !34
  %144 = ashr i32 %143, 8
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.VertTableNode, ptr %134, i64 %145, i32 6
  %147 = load ptr, ptr %146, align 8, !tbaa !55
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %142
  %150 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %151 = tail call ptr %150(i64 noundef 1024, ptr noundef nonnull @.str.5) #10
  %152 = load ptr, ptr %12, align 8, !tbaa !41
  %153 = getelementptr inbounds %struct.VertTableNode, ptr %152, i64 %145, i32 6
  store ptr %151, ptr %153, align 8, !tbaa !55
  br label %154

154:                                              ; preds = %142, %149
  %155 = phi ptr [ %151, %149 ], [ %147, %142 ]
  %156 = load i32, ptr %7, align 8, !tbaa !34
  %157 = and i32 %156, 255
  %158 = zext nneg i32 %157 to i64
  %159 = getelementptr inbounds i32, ptr %155, i64 %158
  %160 = load i32, ptr %140, align 4
  store i32 %160, ptr %159, align 4
  br label %161

161:                                              ; preds = %154, %131
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_findOrAddVert(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %1)
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
  %19 = tail call ptr %15(i64 noundef %18, ptr noundef nonnull @.str.7) #10
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
  tail call void %31(ptr noundef nonnull %14) #10
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
  %45 = tail call ptr %44(i64 noundef 12288, ptr noundef nonnull @.str.8) #10
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

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_vlakren_get_tface(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !65
  %8 = ashr i32 %7, 8
  %9 = and i32 %7, 255
  %10 = shl i32 %2, 8
  %11 = or disjoint i32 %9, %10
  %12 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = sext i32 %8 to i64
  %15 = icmp eq i32 %4, 0
  %16 = getelementptr inbounds %struct.VlakTableNode, ptr %13, i64 %14, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !68
  %18 = icmp sgt i32 %17, %2
  br i1 %15, label %37, label %19

19:                                               ; preds = %5
  br i1 %18, label %45, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.VlakTableNode, ptr %13, i64 %14, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !70
  %23 = add nsw i32 %2, 1
  %24 = shl nsw i32 %23, 8
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %26 = sext i32 %24 to i64
  %27 = mul nsw i64 %26, 48
  %28 = tail call ptr %25(i64 noundef %27, ptr noundef nonnull @.str.9) #10
  store ptr %28, ptr %21, align 8, !tbaa !70
  %29 = icmp eq ptr %22, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %20
  %31 = load i32, ptr %16, align 8, !tbaa !68
  %32 = shl nsw i32 %31, 8
  %33 = sext i32 %32 to i64
  %34 = mul nsw i64 %33, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %28, ptr nonnull align 8 %22, i64 %34, i1 false)
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %35(ptr noundef nonnull %22) #10
  br label %36

36:                                               ; preds = %30, %20
  store i32 %23, ptr %16, align 8, !tbaa !68
  br label %45

37:                                               ; preds = %5
  br i1 %18, label %38, label %50

38:                                               ; preds = %37
  %39 = icmp eq ptr %3, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 23
  %42 = load ptr, ptr %41, align 8, !tbaa !71
  %43 = sext i32 %2 to i64
  %44 = getelementptr inbounds [64 x i8], ptr %42, i64 %43
  store ptr %44, ptr %3, align 8, !tbaa !45
  br label %45

45:                                               ; preds = %38, %40, %19, %36
  %46 = getelementptr inbounds %struct.VlakTableNode, ptr %13, i64 %14, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !70
  %48 = sext i32 %11 to i64
  %49 = getelementptr inbounds %struct.MTFace, ptr %47, i64 %48
  br label %50

50:                                               ; preds = %37, %45
  %51 = phi ptr [ %49, %45 ], [ null, %37 ]
  ret ptr %51
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_vlakren_get_mcol(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !65
  %8 = ashr i32 %7, 8
  %9 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = sext i32 %8 to i64
  %12 = icmp eq i32 %4, 0
  %13 = getelementptr inbounds %struct.VlakTableNode, ptr %10, i64 %11, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !72
  %15 = icmp sgt i32 %14, %2
  br i1 %12, label %34, label %16

16:                                               ; preds = %5
  br i1 %15, label %42, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.VlakTableNode, ptr %10, i64 %11, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  %20 = add nsw i32 %2, 1
  %21 = shl nsw i32 %20, 8
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %23 = sext i32 %21 to i64
  %24 = shl nsw i64 %23, 4
  %25 = tail call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.10) #10
  store ptr %25, ptr %18, align 8, !tbaa !73
  %26 = icmp eq ptr %19, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load i32, ptr %13, align 4, !tbaa !72
  %29 = shl nsw i32 %28, 8
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr nonnull align 1 %19, i64 %31, i1 false)
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %32(ptr noundef nonnull %19) #10
  br label %33

33:                                               ; preds = %27, %17
  store i32 %20, ptr %13, align 4, !tbaa !72
  br label %42

34:                                               ; preds = %5
  br i1 %15, label %35, label %51

35:                                               ; preds = %34
  %36 = icmp eq ptr %3, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 24
  %39 = load ptr, ptr %38, align 8, !tbaa !74
  %40 = sext i32 %2 to i64
  %41 = getelementptr inbounds [64 x i8], ptr %39, i64 %40
  store ptr %41, ptr %3, align 8, !tbaa !45
  br label %42

42:                                               ; preds = %35, %37, %16, %33
  %43 = getelementptr inbounds %struct.VlakTableNode, ptr %10, i64 %11, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !73
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

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_vlakren_get_origindex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !65
  %6 = ashr i32 %5, 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.VlakTableNode, ptr %8, i64 %9, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 1024, ptr noundef nonnull @.str.5) #10
  %18 = load ptr, ptr %7, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.VlakTableNode, ptr %18, i64 %9, i32 3
  store ptr %17, ptr %19, align 8, !tbaa !75
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %22 = load i32, ptr %4, align 4, !tbaa !65
  %23 = and i32 %22, 255
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %21, i64 %24
  br label %26

26:                                               ; preds = %13, %20
  %27 = phi ptr [ %25, %20 ], [ null, %13 ]
  ret ptr %27
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_vlakren_get_surfnor(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !65
  %6 = ashr i32 %5, 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.VlakTableNode, ptr %8, i64 %9, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 3072, ptr noundef nonnull @.str.11) #10
  %18 = load ptr, ptr %7, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.VlakTableNode, ptr %18, i64 %9, i32 6
  store ptr %17, ptr %19, align 8, !tbaa !76
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %22 = load i32, ptr %4, align 4, !tbaa !65
  %23 = and i32 %22, 255
  %24 = mul nuw nsw i32 %23, 3
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds float, ptr %21, i64 %25
  br label %27

27:                                               ; preds = %13, %20
  %28 = phi ptr [ %26, %20 ], [ null, %13 ]
  ret ptr %28
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_vlakren_get_nmap_tangent(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !65
  %6 = ashr i32 %5, 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.VlakTableNode, ptr %8, i64 %9, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 16384, ptr noundef nonnull @.str.3) #10
  %18 = load ptr, ptr %7, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.VlakTableNode, ptr %18, i64 %9, i32 7
  store ptr %17, ptr %19, align 8, !tbaa !77
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %22 = load i32, ptr %4, align 4, !tbaa !65
  %23 = shl i32 %22, 4
  %24 = and i32 %23, 4080
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds float, ptr %21, i64 %25
  br label %27

27:                                               ; preds = %13, %20
  %28 = phi ptr [ %26, %20 ], [ null, %13 ]
  ret ptr %28
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_vlakren_get_radface(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !65
  %6 = ashr i32 %5, 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.VlakTableNode, ptr %8, i64 %9, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 2048, ptr noundef nonnull @.str.12) #10
  %18 = load ptr, ptr %7, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.VlakTableNode, ptr %18, i64 %9, i32 8
  store ptr %17, ptr %19, align 8, !tbaa !78
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %22 = load i32, ptr %4, align 4, !tbaa !65
  %23 = and i32 %22, 255
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %21, i64 %24
  br label %26

26:                                               ; preds = %13, %20
  %27 = phi ptr [ %25, %20 ], [ null, %13 ]
  ret ptr %27
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @RE_vlakren_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 11
  %4 = load i32, ptr %3, align 4, !tbaa !79
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 4, !tbaa !79
  %6 = tail call ptr @RE_findOrAddVlak(ptr noundef %0, i32 noundef %4)
  %7 = getelementptr inbounds %struct.VlakRen, ptr %6, i64 0, i32 9
  %8 = load i32, ptr %7, align 4, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !80
  store i32 %8, ptr %7, align 4, !tbaa !65
  %9 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 9
  %10 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  br label %11

11:                                               ; preds = %66, %2
  %12 = phi i64 [ %71, %66 ], [ 0, %2 ]
  %13 = load i32, ptr %9, align 4, !tbaa !65
  %14 = ashr i32 %13, 8
  %15 = load ptr, ptr %10, align 8, !tbaa !67
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds %struct.VlakTableNode, ptr %15, i64 %16, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !68
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %12, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %11
  %22 = trunc i64 %12 to i32
  %23 = shl i32 %22, 8
  %24 = and i32 %13, 255
  %25 = or disjoint i32 %24, %23
  %26 = getelementptr inbounds %struct.VlakTableNode, ptr %15, i64 %16, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !70
  %28 = sext i32 %25 to i64
  %29 = getelementptr inbounds %struct.MTFace, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %11, %21
  %31 = phi ptr [ %29, %21 ], [ null, %11 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.VlakRen, ptr %1, i64 0, i32 9
  %35 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  br label %72

36:                                               ; preds = %30
  %37 = load i32, ptr %7, align 4, !tbaa !65
  %38 = ashr i32 %37, 8
  %39 = and i32 %37, 255
  %40 = trunc i64 %12 to i32
  %41 = shl i32 %40, 8
  %42 = or disjoint i32 %39, %41
  %43 = sext i32 %38 to i64
  %44 = getelementptr inbounds %struct.VlakTableNode, ptr %15, i64 %43, i32 4
  %45 = load i32, ptr %44, align 8, !tbaa !68
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %12, %46
  br i1 %47, label %66, label %48

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.VlakTableNode, ptr %15, i64 %43, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !70
  %51 = add nuw nsw i64 %12, 1
  %52 = shl i64 %51, 8
  %53 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %54 = and i64 %52, 4294967040
  %55 = mul nuw nsw i64 %54, 48
  %56 = tail call ptr %53(i64 noundef %55, ptr noundef nonnull @.str.9) #10
  store ptr %56, ptr %49, align 8, !tbaa !70
  %57 = icmp eq ptr %50, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %48
  %59 = load i32, ptr %44, align 8, !tbaa !68
  %60 = shl nsw i32 %59, 8
  %61 = sext i32 %60 to i64
  %62 = mul nsw i64 %61, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %56, ptr nonnull align 8 %50, i64 %62, i1 false)
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %63(ptr noundef nonnull %50) #10
  br label %64

64:                                               ; preds = %58, %48
  %65 = trunc i64 %51 to i32
  store i32 %65, ptr %44, align 8, !tbaa !68
  br label %66

66:                                               ; preds = %36, %64
  %67 = getelementptr inbounds %struct.VlakTableNode, ptr %15, i64 %43, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !70
  %69 = sext i32 %42 to i64
  %70 = getelementptr inbounds %struct.MTFace, ptr %68, i64 %69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %70, ptr noundef nonnull align 8 dereferenceable(48) %31, i64 48, i1 false)
  %71 = add nuw i64 %12, 1
  br label %11, !llvm.loop !81

72:                                               ; preds = %33, %120
  %73 = phi i64 [ 0, %33 ], [ %130, %120 ]
  %74 = load i32, ptr %34, align 4, !tbaa !65
  %75 = ashr i32 %74, 8
  %76 = load ptr, ptr %35, align 8, !tbaa !67
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds %struct.VlakTableNode, ptr %76, i64 %77, i32 5
  %79 = load i32, ptr %78, align 4, !tbaa !72
  %80 = sext i32 %79 to i64
  %81 = icmp slt i64 %73, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.VlakTableNode, ptr %76, i64 %77, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !73
  %85 = trunc i64 %73 to i32
  %86 = shl i32 %85, 10
  %87 = shl i32 %74, 2
  %88 = and i32 %87, 1020
  %89 = or disjoint i32 %88, %86
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.MCol, ptr %84, i64 %90
  br label %92

92:                                               ; preds = %72, %82
  %93 = phi ptr [ %91, %82 ], [ null, %72 ]
  %94 = icmp eq ptr %93, null
  br i1 %94, label %131, label %95

95:                                               ; preds = %92
  %96 = load i32, ptr %7, align 4, !tbaa !65
  %97 = ashr i32 %96, 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.VlakTableNode, ptr %76, i64 %98, i32 5
  %100 = load i32, ptr %99, align 4, !tbaa !72
  %101 = sext i32 %100 to i64
  %102 = icmp slt i64 %73, %101
  br i1 %102, label %120, label %103

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.VlakTableNode, ptr %76, i64 %98, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !73
  %106 = add nuw nsw i64 %73, 1
  %107 = shl i64 %106, 12
  %108 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %109 = and i64 %107, 68719472640
  %110 = tail call ptr %108(i64 noundef %109, ptr noundef nonnull @.str.10) #10
  store ptr %110, ptr %104, align 8, !tbaa !73
  %111 = icmp eq ptr %105, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %103
  %113 = load i32, ptr %99, align 4, !tbaa !72
  %114 = shl nsw i32 %113, 8
  %115 = sext i32 %114 to i64
  %116 = shl nsw i64 %115, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %110, ptr nonnull align 1 %105, i64 %116, i1 false)
  %117 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %117(ptr noundef nonnull %105) #10
  br label %118

118:                                              ; preds = %112, %103
  %119 = trunc i64 %106 to i32
  store i32 %119, ptr %99, align 4, !tbaa !72
  br label %120

120:                                              ; preds = %95, %118
  %121 = getelementptr inbounds %struct.VlakTableNode, ptr %76, i64 %98, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !73
  %123 = trunc i64 %73 to i32
  %124 = shl i32 %123, 10
  %125 = shl i32 %96, 2
  %126 = and i32 %125, 1020
  %127 = or disjoint i32 %126, %124
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.MCol, ptr %122, i64 %128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %129, ptr noundef nonnull align 1 dereferenceable(16) %93, i64 16, i1 false)
  %130 = add nuw i64 %73, 1
  br label %72, !llvm.loop !82

131:                                              ; preds = %92
  %132 = getelementptr inbounds %struct.VlakTableNode, ptr %76, i64 %77, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !75
  %134 = and i32 %74, 255
  %135 = zext nneg i32 %134 to i64
  %136 = getelementptr inbounds i32, ptr %133, i64 %135
  %137 = icmp eq ptr %133, null
  br i1 %137, label %157, label %138

138:                                              ; preds = %131
  %139 = load i32, ptr %7, align 4, !tbaa !65
  %140 = ashr i32 %139, 8
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.VlakTableNode, ptr %76, i64 %141, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !75
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %138
  %146 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %147 = tail call ptr %146(i64 noundef 1024, ptr noundef nonnull @.str.5) #10
  %148 = load ptr, ptr %35, align 8, !tbaa !67
  %149 = getelementptr inbounds %struct.VlakTableNode, ptr %148, i64 %141, i32 3
  store ptr %147, ptr %149, align 8, !tbaa !75
  br label %150

150:                                              ; preds = %138, %145
  %151 = phi ptr [ %147, %145 ], [ %143, %138 ]
  %152 = load i32, ptr %7, align 4, !tbaa !65
  %153 = and i32 %152, 255
  %154 = zext nneg i32 %153 to i64
  %155 = getelementptr inbounds i32, ptr %151, i64 %154
  %156 = load i32, ptr %136, align 4
  store i32 %156, ptr %155, align 4
  br label %157

157:                                              ; preds = %150, %131
  %158 = load i32, ptr %34, align 4, !tbaa !65
  %159 = ashr i32 %158, 8
  %160 = load ptr, ptr %35, align 8, !tbaa !67
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds %struct.VlakTableNode, ptr %160, i64 %161, i32 6
  %163 = load ptr, ptr %162, align 8, !tbaa !76
  %164 = and i32 %158, 255
  %165 = mul nuw nsw i32 %164, 3
  %166 = zext nneg i32 %165 to i64
  %167 = getelementptr inbounds float, ptr %163, i64 %166
  %168 = icmp eq ptr %163, null
  br i1 %168, label %195, label %169

169:                                              ; preds = %157
  %170 = load i32, ptr %7, align 4, !tbaa !65
  %171 = ashr i32 %170, 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.VlakTableNode, ptr %160, i64 %172, i32 6
  %174 = load ptr, ptr %173, align 8, !tbaa !76
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %169
  %177 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %178 = tail call ptr %177(i64 noundef 3072, ptr noundef nonnull @.str.11) #10
  %179 = load ptr, ptr %35, align 8, !tbaa !67
  %180 = getelementptr inbounds %struct.VlakTableNode, ptr %179, i64 %172, i32 6
  store ptr %178, ptr %180, align 8, !tbaa !76
  br label %181

181:                                              ; preds = %169, %176
  %182 = phi ptr [ %178, %176 ], [ %174, %169 ]
  %183 = load i32, ptr %7, align 4, !tbaa !65
  %184 = and i32 %183, 255
  %185 = mul nuw nsw i32 %184, 3
  %186 = zext nneg i32 %185 to i64
  %187 = getelementptr inbounds float, ptr %182, i64 %186
  %188 = load float, ptr %167, align 4, !tbaa !59
  store float %188, ptr %187, align 4, !tbaa !59
  %189 = getelementptr inbounds float, ptr %167, i64 1
  %190 = load float, ptr %189, align 4, !tbaa !59
  %191 = getelementptr inbounds float, ptr %187, i64 1
  store float %190, ptr %191, align 4, !tbaa !59
  %192 = getelementptr inbounds float, ptr %167, i64 2
  %193 = load float, ptr %192, align 4, !tbaa !59
  %194 = getelementptr inbounds float, ptr %187, i64 2
  store float %193, ptr %194, align 4, !tbaa !59
  br label %195

195:                                              ; preds = %181, %157
  %196 = load i32, ptr %34, align 4, !tbaa !65
  %197 = ashr i32 %196, 8
  %198 = load ptr, ptr %35, align 8, !tbaa !67
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds %struct.VlakTableNode, ptr %198, i64 %199, i32 7
  %201 = load ptr, ptr %200, align 8, !tbaa !77
  %202 = shl i32 %196, 4
  %203 = and i32 %202, 4080
  %204 = zext nneg i32 %203 to i64
  %205 = getelementptr inbounds float, ptr %201, i64 %204
  %206 = icmp eq ptr %201, null
  br i1 %206, label %226, label %207

207:                                              ; preds = %195
  %208 = load i32, ptr %7, align 4, !tbaa !65
  %209 = ashr i32 %208, 8
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.VlakTableNode, ptr %198, i64 %210, i32 7
  %212 = load ptr, ptr %211, align 8, !tbaa !77
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %219

214:                                              ; preds = %207
  %215 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %216 = tail call ptr %215(i64 noundef 16384, ptr noundef nonnull @.str.3) #10
  %217 = load ptr, ptr %35, align 8, !tbaa !67
  %218 = getelementptr inbounds %struct.VlakTableNode, ptr %217, i64 %210, i32 7
  store ptr %216, ptr %218, align 8, !tbaa !77
  br label %219

219:                                              ; preds = %207, %214
  %220 = phi ptr [ %216, %214 ], [ %212, %207 ]
  %221 = load i32, ptr %7, align 4, !tbaa !65
  %222 = shl i32 %221, 4
  %223 = and i32 %222, 4080
  %224 = zext nneg i32 %223 to i64
  %225 = getelementptr inbounds float, ptr %220, i64 %224
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %225, ptr noundef nonnull align 4 dereferenceable(64) %205, i64 64, i1 false)
  br label %226

226:                                              ; preds = %219, %195
  %227 = load i32, ptr %34, align 4, !tbaa !65
  %228 = ashr i32 %227, 8
  %229 = load ptr, ptr %35, align 8, !tbaa !67
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds %struct.VlakTableNode, ptr %229, i64 %230, i32 8
  %232 = load ptr, ptr %231, align 8, !tbaa !78
  %233 = and i32 %227, 255
  %234 = zext nneg i32 %233 to i64
  %235 = getelementptr inbounds ptr, ptr %232, i64 %234
  %236 = icmp eq ptr %232, null
  br i1 %236, label %256, label %237

237:                                              ; preds = %226
  %238 = load i32, ptr %7, align 4, !tbaa !65
  %239 = ashr i32 %238, 8
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.VlakTableNode, ptr %229, i64 %240, i32 8
  %242 = load ptr, ptr %241, align 8, !tbaa !78
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %249

244:                                              ; preds = %237
  %245 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %246 = tail call ptr %245(i64 noundef 2048, ptr noundef nonnull @.str.12) #10
  %247 = load ptr, ptr %35, align 8, !tbaa !67
  %248 = getelementptr inbounds %struct.VlakTableNode, ptr %247, i64 %240, i32 8
  store ptr %246, ptr %248, align 8, !tbaa !78
  br label %249

249:                                              ; preds = %237, %244
  %250 = phi ptr [ %246, %244 ], [ %242, %237 ]
  %251 = load i32, ptr %7, align 4, !tbaa !65
  %252 = and i32 %251, 255
  %253 = zext nneg i32 %252 to i64
  %254 = getelementptr inbounds ptr, ptr %250, i64 %253
  %255 = load ptr, ptr %235, align 8, !tbaa !45
  store ptr %255, ptr %254, align 8, !tbaa !45
  br label %256

256:                                              ; preds = %249, %226
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_findOrAddVlak(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %1)
  %6 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = load ptr, ptr %7, align 8, !tbaa !83
  br label %64

9:                                                ; preds = %2
  %10 = lshr i32 %1, 8
  %11 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 15
  %12 = load i32, ptr %11, align 4, !tbaa !84
  %13 = add nsw i32 %12, -1
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %39, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %19 = add nsw i32 %12, 1024
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 6
  %22 = tail call ptr %18(i64 noundef %21, ptr noundef nonnull @.str.16) #10
  store ptr %22, ptr %16, align 8, !tbaa !67
  %23 = icmp eq ptr %17, null
  %24 = load i32, ptr %11, align 4, !tbaa !84
  %25 = sext i32 %24 to i64
  br i1 %23, label %35, label %26

26:                                               ; preds = %15
  %27 = shl nsw i64 %25, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr nonnull align 8 %17, i64 %27, i1 false)
  %28 = load ptr, ptr %16, align 8, !tbaa !67
  %29 = load i32, ptr %11, align 4, !tbaa !84
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.VlakTableNode, ptr %28, i64 %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %31, i8 0, i64 65536, i1 false)
  %32 = load i32, ptr %11, align 4, !tbaa !84
  %33 = add nsw i32 %32, 1024
  store i32 %33, ptr %11, align 4, !tbaa !84
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %34(ptr noundef nonnull %17) #10
  br label %39

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.VlakTableNode, ptr %22, i64 %25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %36, i8 0, i64 65536, i1 false)
  %37 = load i32, ptr %11, align 4, !tbaa !84
  %38 = add nsw i32 %37, 1024
  store i32 %38, ptr %11, align 4, !tbaa !84
  br label %39

39:                                               ; preds = %35, %26, %9
  %40 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !67
  %42 = zext nneg i32 %10 to i64
  %43 = getelementptr inbounds %struct.VlakTableNode, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !83
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %48 = tail call ptr %47(i64 noundef 16384, ptr noundef nonnull @.str.17) #10
  %49 = load ptr, ptr %40, align 8, !tbaa !67
  %50 = getelementptr inbounds %struct.VlakTableNode, ptr %49, i64 %42
  store ptr %48, ptr %50, align 8, !tbaa !83
  %51 = and i32 %1, 2147483392
  br label %52

52:                                               ; preds = %46, %52
  %53 = phi i64 [ 0, %46 ], [ %56, %52 ]
  %54 = phi i32 [ %51, %46 ], [ %57, %52 ]
  %55 = getelementptr inbounds %struct.VlakRen, ptr %48, i64 %53, i32 9
  store i32 %54, ptr %55, align 4, !tbaa !65
  %56 = add nuw nsw i64 %53, 1
  %57 = add nuw nsw i32 %54, 1
  %58 = icmp eq i64 %56, 256
  br i1 %58, label %59, label %52, !llvm.loop !85

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

; Function Attrs: nounwind uwtable
define dso_local void @RE_vlakren_get_normal(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 11
  %6 = load i16, ptr %5, align 8, !tbaa !86
  %7 = and i16 %6, 3
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 10
  %11 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 4
  tail call void @mul_v3_m3v3(ptr noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %11) #10
  %12 = load float, ptr %3, align 4, !tbaa !59
  %13 = getelementptr inbounds float, ptr %3, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !59
  %15 = fmul float %14, %14
  %16 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %15)
  %17 = getelementptr inbounds float, ptr %3, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !59
  %19 = tail call float @llvm.fmuladd.f32(float %18, float %18, float %16)
  %20 = fcmp ogt float %19, 0x38AA95A5C0000000
  br i1 %20, label %21, label %30

21:                                               ; preds = %9
  %22 = tail call float @sqrtf(float noundef %19) #10
  %23 = fdiv float 1.000000e+00, %22
  %24 = load float, ptr %3, align 4, !tbaa !59
  %25 = fmul float %24, %23
  store float %25, ptr %3, align 4, !tbaa !59
  %26 = load float, ptr %13, align 4, !tbaa !59
  %27 = fmul float %23, %26
  store float %27, ptr %13, align 4, !tbaa !59
  %28 = load float, ptr %17, align 4, !tbaa !59
  %29 = fmul float %23, %28
  br label %31

30:                                               ; preds = %9
  store float 0.000000e+00, ptr %3, align 4, !tbaa !59
  store float 0.000000e+00, ptr %13, align 4, !tbaa !59
  br label %31

31:                                               ; preds = %21, %30
  %32 = phi float [ 0.000000e+00, %30 ], [ %29, %21 ]
  store float %32, ptr %17, align 4, !tbaa !59
  br label %42

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 4
  %35 = load float, ptr %34, align 4, !tbaa !59
  store float %35, ptr %3, align 4, !tbaa !59
  %36 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 4, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !59
  %38 = getelementptr inbounds float, ptr %3, i64 1
  store float %37, ptr %38, align 4, !tbaa !59
  %39 = getelementptr inbounds %struct.VlakRen, ptr %2, i64 0, i32 4, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !59
  %41 = getelementptr inbounds float, ptr %3, i64 2
  store float %40, ptr %41, align 4, !tbaa !59
  br label %42

42:                                               ; preds = %33, %31
  ret void
}

declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @RE_set_customdata_names(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 5) #10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @CustomData_number_of_layers(ptr noundef %1, i32 noundef 5) #10
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %8 = sext i32 %6 to i64
  %9 = shl nsw i64 %8, 6
  %10 = tail call ptr %7(i64 noundef %9, ptr noundef nonnull @.str.13) #10
  %11 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 23
  store ptr %10, ptr %11, align 8, !tbaa !71
  br label %12

12:                                               ; preds = %5, %2
  %13 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %14 = tail call zeroext i8 @CustomData_has_layer(ptr noundef %1, i32 noundef 6) #10
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @CustomData_number_of_layers(ptr noundef %1, i32 noundef 6) #10
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %19 = sext i32 %17 to i64
  %20 = shl nsw i64 %19, 6
  %21 = tail call ptr %18(i64 noundef %20, ptr noundef nonnull @.str.14) #10
  %22 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 24
  store ptr %21, ptr %22, align 8, !tbaa !74
  br label %23

23:                                               ; preds = %16, %12
  %24 = phi i32 [ %17, %16 ], [ 0, %12 ]
  %25 = getelementptr inbounds %struct.CustomData, ptr %1, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !87
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
  %38 = load ptr, ptr %1, align 8, !tbaa !89
  %39 = getelementptr inbounds %struct.CustomDataLayer, ptr %38, i64 %35
  %40 = load i32, ptr %39, align 8, !tbaa !90
  switch i32 %40, label %67 [
    i32 5, label %41
    i32 6, label %55
  ]

41:                                               ; preds = %34
  %42 = load ptr, ptr %31, align 8, !tbaa !71
  %43 = add nsw i32 %37, 1
  %44 = sext i32 %37 to i64
  %45 = getelementptr inbounds [64 x i8], ptr %42, i64 %44
  %46 = getelementptr inbounds %struct.CustomDataLayer, ptr %38, i64 %35, i32 8
  %47 = tail call ptr @BLI_strncpy(ptr noundef %45, ptr noundef nonnull %46, i64 noundef 64) #10
  %48 = getelementptr inbounds %struct.CustomDataLayer, ptr %38, i64 %35, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !92
  %50 = icmp slt i32 %49, 0
  %51 = tail call i32 @llvm.smin.i32(i32 %49, i32 %13)
  %52 = select i1 %50, i32 0, i32 %51
  store i32 %52, ptr %32, align 8, !tbaa !93
  %53 = getelementptr inbounds %struct.CustomDataLayer, ptr %38, i64 %35, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !94
  store i32 %54, ptr %33, align 8, !tbaa !95
  br label %67

55:                                               ; preds = %34
  %56 = load ptr, ptr %29, align 8, !tbaa !74
  %57 = add nsw i32 %36, 1
  %58 = sext i32 %36 to i64
  %59 = getelementptr inbounds [64 x i8], ptr %56, i64 %58
  %60 = getelementptr inbounds %struct.CustomDataLayer, ptr %38, i64 %35, i32 8
  %61 = tail call ptr @BLI_strncpy(ptr noundef %59, ptr noundef nonnull %60, i64 noundef 64) #10
  %62 = getelementptr inbounds %struct.CustomDataLayer, ptr %38, i64 %35, i32 4
  %63 = load i32, ptr %62, align 8, !tbaa !92
  %64 = icmp slt i32 %63, 0
  %65 = tail call i32 @llvm.smin.i32(i32 %63, i32 %24)
  %66 = select i1 %64, i32 0, i32 %65
  store i32 %66, ptr %30, align 4, !tbaa !96
  br label %67

67:                                               ; preds = %34, %41, %55
  %68 = phi i32 [ %43, %41 ], [ %37, %55 ], [ %37, %34 ]
  %69 = phi i32 [ %36, %41 ], [ %57, %55 ], [ %36, %34 ]
  %70 = add nuw nsw i64 %35, 1
  %71 = load i32, ptr %25, align 4, !tbaa !87
  %72 = sext i32 %71 to i64
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %34, label %74, !llvm.loop !97

74:                                               ; preds = %67, %23
  ret void
}

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_strandren_get_surfnor(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !98
  %6 = ashr i32 %5, 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.StrandTableNode, ptr %8, i64 %9, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 3072, ptr noundef nonnull @.str.18) #10
  %18 = load ptr, ptr %7, align 8, !tbaa !100
  %19 = getelementptr inbounds %struct.StrandTableNode, ptr %18, i64 %9, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !101
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %22 = load i32, ptr %4, align 4, !tbaa !98
  %23 = and i32 %22, 255
  %24 = mul nuw nsw i32 %23, 3
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds float, ptr %21, i64 %25
  br label %27

27:                                               ; preds = %13, %20
  %28 = phi ptr [ %26, %20 ], [ null, %13 ]
  ret ptr %28
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_strandren_get_uv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !98
  %8 = ashr i32 %7, 8
  %9 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !100
  %11 = sext i32 %8 to i64
  %12 = icmp eq i32 %4, 0
  %13 = getelementptr inbounds %struct.StrandTableNode, ptr %10, i64 %11, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !103
  %15 = icmp sgt i32 %14, %2
  br i1 %12, label %34, label %16

16:                                               ; preds = %5
  br i1 %15, label %42, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.StrandTableNode, ptr %10, i64 %11, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !104
  %20 = add nsw i32 %2, 1
  %21 = shl nsw i32 %20, 8
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %23 = sext i32 %21 to i64
  %24 = shl nsw i64 %23, 3
  %25 = tail call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.19) #10
  store ptr %25, ptr %18, align 8, !tbaa !104
  %26 = icmp eq ptr %19, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load i32, ptr %13, align 8, !tbaa !103
  %29 = shl nsw i32 %28, 8
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %25, ptr nonnull align 4 %19, i64 %31, i1 false)
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %32(ptr noundef nonnull %19) #10
  br label %33

33:                                               ; preds = %27, %17
  store i32 %20, ptr %13, align 8, !tbaa !103
  br label %42

34:                                               ; preds = %5
  br i1 %15, label %35, label %51

35:                                               ; preds = %34
  %36 = icmp eq ptr %3, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 23
  %39 = load ptr, ptr %38, align 8, !tbaa !71
  %40 = sext i32 %2 to i64
  %41 = getelementptr inbounds [64 x i8], ptr %39, i64 %40
  store ptr %41, ptr %3, align 8, !tbaa !45
  br label %42

42:                                               ; preds = %35, %37, %16, %33
  %43 = getelementptr inbounds %struct.StrandTableNode, ptr %10, i64 %11, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !104
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

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_strandren_get_mcol(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !98
  %8 = ashr i32 %7, 8
  %9 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !100
  %11 = sext i32 %8 to i64
  %12 = icmp eq i32 %4, 0
  %13 = getelementptr inbounds %struct.StrandTableNode, ptr %10, i64 %11, i32 8
  %14 = load i32, ptr %13, align 4, !tbaa !105
  %15 = icmp sgt i32 %14, %2
  br i1 %12, label %34, label %16

16:                                               ; preds = %5
  br i1 %15, label %42, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.StrandTableNode, ptr %10, i64 %11, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !106
  %20 = add nsw i32 %2, 1
  %21 = shl nsw i32 %20, 8
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %23 = sext i32 %21 to i64
  %24 = shl nsw i64 %23, 4
  %25 = tail call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.20) #10
  store ptr %25, ptr %18, align 8, !tbaa !106
  %26 = icmp eq ptr %19, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load i32, ptr %13, align 4, !tbaa !105
  %29 = shl nsw i32 %28, 8
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr nonnull align 1 %19, i64 %31, i1 false)
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %32(ptr noundef nonnull %19) #10
  br label %33

33:                                               ; preds = %27, %17
  store i32 %20, ptr %13, align 4, !tbaa !105
  br label %42

34:                                               ; preds = %5
  br i1 %15, label %35, label %51

35:                                               ; preds = %34
  %36 = icmp eq ptr %3, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 24
  %39 = load ptr, ptr %38, align 8, !tbaa !74
  %40 = sext i32 %2 to i64
  %41 = getelementptr inbounds [64 x i8], ptr %39, i64 %40
  store ptr %41, ptr %3, align 8, !tbaa !45
  br label %42

42:                                               ; preds = %35, %37, %16, %33
  %43 = getelementptr inbounds %struct.StrandTableNode, ptr %10, i64 %11, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !106
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

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_strandren_get_simplify(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !98
  %6 = ashr i32 %5, 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.StrandTableNode, ptr %8, i64 %9, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !107
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 2048, ptr noundef nonnull @.str.21) #10
  %18 = load ptr, ptr %7, align 8, !tbaa !100
  %19 = getelementptr inbounds %struct.StrandTableNode, ptr %18, i64 %9, i32 3
  store ptr %17, ptr %19, align 8, !tbaa !107
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %22 = load i32, ptr %4, align 4, !tbaa !98
  %23 = shl i32 %22, 1
  %24 = and i32 %23, 510
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds float, ptr %21, i64 %25
  br label %27

27:                                               ; preds = %13, %20
  %28 = phi ptr [ %26, %20 ], [ null, %13 ]
  ret ptr %28
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_strandren_get_face(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !98
  %6 = ashr i32 %5, 8
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.StrandTableNode, ptr %8, i64 %9, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !108
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %17 = tail call ptr %16(i64 noundef 1024, ptr noundef nonnull @.str.22) #10
  %18 = load ptr, ptr %7, align 8, !tbaa !100
  %19 = getelementptr inbounds %struct.StrandTableNode, ptr %18, i64 %9, i32 4
  store ptr %17, ptr %19, align 8, !tbaa !108
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi ptr [ %17, %15 ], [ %11, %3 ]
  %22 = load i32, ptr %4, align 4, !tbaa !98
  %23 = and i32 %22, 255
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %21, i64 %24
  br label %26

26:                                               ; preds = %13, %20
  %27 = phi ptr [ %25, %20 ], [ null, %13 ]
  ret ptr %27
}

; Function Attrs: nounwind uwtable
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
  %21 = tail call ptr %17(i64 noundef %20, ptr noundef nonnull @.str.23) #10
  store ptr %21, ptr %4, align 8, !tbaa !49
  br label %22

22:                                               ; preds = %9, %3
  %23 = phi ptr [ %21, %9 ], [ %5, %3 ]
  %24 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.ObjectRen, ptr %25, i64 0, i32 10
  %27 = load i32, ptr %26, align 8, !tbaa !53
  %28 = getelementptr inbounds %struct.StrandRen, ptr %1, i64 0, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !98
  %30 = add nsw i32 %29, %27
  %31 = shl nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, ptr %23, i64 %32
  br label %34

34:                                               ; preds = %7, %22
  %35 = phi ptr [ %33, %22 ], [ null, %7 ]
  ret ptr %35
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_findOrAddStrand(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %1)
  %6 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  br label %64

9:                                                ; preds = %2
  %10 = lshr i32 %1, 8
  %11 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 16
  %12 = load i32, ptr %11, align 8, !tbaa !110
  %13 = add nsw i32 %12, -1
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %39, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %19 = add nsw i32 %12, 1024
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 6
  %22 = tail call ptr %18(i64 noundef %21, ptr noundef nonnull @.str.25) #10
  store ptr %22, ptr %16, align 8, !tbaa !100
  %23 = icmp eq ptr %17, null
  %24 = load i32, ptr %11, align 8, !tbaa !110
  %25 = sext i32 %24 to i64
  br i1 %23, label %35, label %26

26:                                               ; preds = %15
  %27 = shl nsw i64 %25, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr nonnull align 8 %17, i64 %27, i1 false)
  %28 = load ptr, ptr %16, align 8, !tbaa !100
  %29 = load i32, ptr %11, align 8, !tbaa !110
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.StrandTableNode, ptr %28, i64 %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %31, i8 0, i64 65536, i1 false)
  %32 = load i32, ptr %11, align 8, !tbaa !110
  %33 = add nsw i32 %32, 1024
  store i32 %33, ptr %11, align 8, !tbaa !110
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %34(ptr noundef nonnull %17) #10
  br label %39

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.StrandTableNode, ptr %22, i64 %25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %36, i8 0, i64 65536, i1 false)
  %37 = load i32, ptr %11, align 8, !tbaa !110
  %38 = add nsw i32 %37, 1024
  store i32 %38, ptr %11, align 8, !tbaa !110
  br label %39

39:                                               ; preds = %35, %26, %9
  %40 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 20
  %41 = load ptr, ptr %40, align 8, !tbaa !100
  %42 = zext nneg i32 %10 to i64
  %43 = getelementptr inbounds %struct.StrandTableNode, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !109
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %48 = tail call ptr %47(i64 noundef 12288, ptr noundef nonnull @.str.26) #10
  %49 = load ptr, ptr %40, align 8, !tbaa !100
  %50 = getelementptr inbounds %struct.StrandTableNode, ptr %49, i64 %42
  store ptr %48, ptr %50, align 8, !tbaa !109
  %51 = and i32 %1, 2147483392
  br label %52

52:                                               ; preds = %46, %52
  %53 = phi i64 [ 0, %46 ], [ %56, %52 ]
  %54 = phi i32 [ %51, %46 ], [ %57, %52 ]
  %55 = getelementptr inbounds %struct.StrandRen, ptr %48, i64 %53, i32 5
  store i32 %54, ptr %55, align 4, !tbaa !98
  %56 = add nuw nsw i64 %53, 1
  %57 = add nuw nsw i32 %54, 1
  %58 = icmp eq i64 %56, 256
  br i1 %58, label %59, label %52, !llvm.loop !111

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

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_addStrandBuffer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %4 = tail call ptr %3(i64 noundef 168, ptr noundef nonnull @.str.27) #10
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 4
  %8 = tail call ptr %5(i64 noundef %7, ptr noundef nonnull @.str.28) #10
  %9 = getelementptr inbounds %struct.StrandBuffer, ptr %4, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !112
  %10 = getelementptr inbounds %struct.StrandBuffer, ptr %4, i64 0, i32 4
  store i32 %1, ptr %10, align 8, !tbaa !114
  %11 = getelementptr inbounds %struct.StrandBuffer, ptr %4, i64 0, i32 6
  store ptr %0, ptr %11, align 8, !tbaa !115
  %12 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 22
  store ptr %4, ptr %12, align 8, !tbaa !116
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @RE_addRenderObject(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %8 = tail call ptr %7(i64 noundef 280, ptr noundef nonnull @.str.29) #10
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %8) #10
  %10 = getelementptr inbounds %struct.ObjectRen, ptr %8, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !117
  %11 = getelementptr inbounds %struct.ObjectRen, ptr %8, i64 0, i32 3
  store ptr %2, ptr %11, align 8, !tbaa !118
  %12 = getelementptr inbounds %struct.ObjectRen, ptr %8, i64 0, i32 5
  store i32 %3, ptr %12, align 8, !tbaa !119
  %13 = getelementptr inbounds %struct.ObjectRen, ptr %8, i64 0, i32 6
  store i32 %4, ptr %13, align 4, !tbaa !120
  %14 = getelementptr inbounds %struct.ObjectRen, ptr %8, i64 0, i32 8
  store i32 %5, ptr %14, align 4, !tbaa !121
  ret ptr %8
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
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
  tail call void %9(ptr noundef nonnull %8) #10
  %10 = getelementptr inbounds %struct.VertTableNode, ptr %0, i64 %7, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %14(ptr noundef nonnull %11) #10
  br label %15

15:                                               ; preds = %13, %6
  %16 = getelementptr inbounds %struct.VertTableNode, ptr %0, i64 %7, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %20(ptr noundef nonnull %17) #10
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.VertTableNode, ptr %0, i64 %7, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %26(ptr noundef nonnull %23) #10
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct.VertTableNode, ptr %0, i64 %7, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %32(ptr noundef nonnull %29) #10
  br label %33

33:                                               ; preds = %31, %27
  %34 = getelementptr inbounds %struct.VertTableNode, ptr %0, i64 %7, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !122
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %38(ptr noundef nonnull %35) #10
  br label %39

39:                                               ; preds = %37, %33
  %40 = getelementptr inbounds %struct.VertTableNode, ptr %0, i64 %7, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !55
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %44(ptr noundef nonnull %41) #10
  br label %45

45:                                               ; preds = %39, %43
  %46 = add nuw i64 %7, 1
  %47 = getelementptr inbounds %struct.VertTableNode, ptr %0, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !61
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %6, !llvm.loop !123

50:                                               ; preds = %45, %3
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %51(ptr noundef nonnull %0) #10
  br label %52

52:                                               ; preds = %1, %50
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_renderdata_vlaknodes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %52, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !83
  %5 = icmp eq ptr %4, null
  br i1 %5, label %50, label %6

6:                                                ; preds = %3, %45
  %7 = phi i64 [ %46, %45 ], [ 0, %3 ]
  %8 = phi ptr [ %48, %45 ], [ %4, %3 ]
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %9(ptr noundef nonnull %8) #10
  %10 = getelementptr inbounds %struct.VlakTableNode, ptr %0, i64 %7, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %14(ptr noundef nonnull %11) #10
  br label %15

15:                                               ; preds = %13, %6
  %16 = getelementptr inbounds %struct.VlakTableNode, ptr %0, i64 %7, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %20(ptr noundef nonnull %17) #10
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.VlakTableNode, ptr %0, i64 %7, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %26(ptr noundef nonnull %23) #10
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct.VlakTableNode, ptr %0, i64 %7, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !76
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %32(ptr noundef nonnull %29) #10
  br label %33

33:                                               ; preds = %31, %27
  %34 = getelementptr inbounds %struct.VlakTableNode, ptr %0, i64 %7, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !77
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %38(ptr noundef nonnull %35) #10
  br label %39

39:                                               ; preds = %37, %33
  %40 = getelementptr inbounds %struct.VlakTableNode, ptr %0, i64 %7, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !78
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %44(ptr noundef nonnull %41) #10
  br label %45

45:                                               ; preds = %39, %43
  %46 = add nuw i64 %7, 1
  %47 = getelementptr inbounds %struct.VlakTableNode, ptr %0, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !83
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %6, !llvm.loop !124

50:                                               ; preds = %45, %3
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %51(ptr noundef nonnull %0) #10
  br label %52

52:                                               ; preds = %1, %50
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_renderdata_tables(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %144, label %5

5:                                                ; preds = %1, %141
  %6 = phi ptr [ %142, %141 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  tail call void @free_renderdata_vertnodes(ptr noundef nonnull %8)
  store ptr null, ptr %7, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 14
  store i32 0, ptr %11, align 8, !tbaa !60
  br label %12

12:                                               ; preds = %10, %5
  %13 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  tail call void @free_renderdata_vlaknodes(ptr noundef nonnull %14)
  store ptr null, ptr %13, align 8, !tbaa !67
  %17 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 15
  store i32 0, ptr %17, align 4, !tbaa !84
  %18 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 11
  store i32 0, ptr %18, align 4, !tbaa !79
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 21
  %21 = load ptr, ptr %20, align 8, !tbaa !125
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %20, align 8, !tbaa !125
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %23, %27
  %28 = phi i64 [ %31, %27 ], [ 0, %23 ]
  %29 = phi ptr [ %34, %27 ], [ %25, %23 ]
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %30(ptr noundef nonnull %29) #10
  %31 = add nuw i64 %28, 1
  %32 = load ptr, ptr %20, align 8, !tbaa !125
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  %34 = load ptr, ptr %33, align 8, !tbaa !45
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %27, !llvm.loop !126

36:                                               ; preds = %27, %23
  %37 = phi ptr [ %24, %23 ], [ %32, %27 ]
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %38(ptr noundef %37) #10
  store ptr null, ptr %20, align 8, !tbaa !125
  %39 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 17
  store i32 0, ptr %39, align 4, !tbaa !127
  br label %40

40:                                               ; preds = %36, %19
  %41 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 20
  %42 = load ptr, ptr %41, align 8, !tbaa !100
  %43 = icmp eq ptr %42, null
  br i1 %43, label %94, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %42, align 8, !tbaa !109
  %46 = icmp eq ptr %45, null
  br i1 %46, label %91, label %47

47:                                               ; preds = %44, %86
  %48 = phi i64 [ %87, %86 ], [ 0, %44 ]
  %49 = phi ptr [ %89, %86 ], [ %45, %44 ]
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %50(ptr noundef nonnull %49) #10
  %51 = getelementptr inbounds %struct.StrandTableNode, ptr %42, i64 %48, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !104
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %55(ptr noundef nonnull %52) #10
  br label %56

56:                                               ; preds = %54, %47
  %57 = getelementptr inbounds %struct.StrandTableNode, ptr %42, i64 %48, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !106
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %61(ptr noundef nonnull %58) #10
  br label %62

62:                                               ; preds = %60, %56
  %63 = getelementptr inbounds %struct.StrandTableNode, ptr %42, i64 %48, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !128
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %67(ptr noundef nonnull %64) #10
  br label %68

68:                                               ; preds = %66, %62
  %69 = getelementptr inbounds %struct.StrandTableNode, ptr %42, i64 %48, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !101
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %73(ptr noundef nonnull %70) #10
  br label %74

74:                                               ; preds = %72, %68
  %75 = getelementptr inbounds %struct.StrandTableNode, ptr %42, i64 %48, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !107
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %79(ptr noundef nonnull %76) #10
  br label %80

80:                                               ; preds = %78, %74
  %81 = getelementptr inbounds %struct.StrandTableNode, ptr %42, i64 %48, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !108
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %85(ptr noundef nonnull %82) #10
  br label %86

86:                                               ; preds = %84, %80
  %87 = add nuw i64 %48, 1
  %88 = getelementptr inbounds %struct.StrandTableNode, ptr %42, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !109
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %47, !llvm.loop !129

91:                                               ; preds = %86, %44
  %92 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %92(ptr noundef nonnull %42) #10
  store ptr null, ptr %41, align 8, !tbaa !100
  %93 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 16
  store i32 0, ptr %93, align 8, !tbaa !110
  br label %94

94:                                               ; preds = %91, %40
  %95 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 22
  %96 = load ptr, ptr %95, align 8, !tbaa !116
  %97 = icmp eq ptr %96, null
  br i1 %97, label %112, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.StrandBuffer, ptr %96, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !112
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %103(ptr noundef nonnull %100) #10
  br label %104

104:                                              ; preds = %102, %98
  %105 = getelementptr inbounds %struct.StrandBuffer, ptr %96, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !130
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %109(ptr noundef nonnull %106) #10
  br label %110

110:                                              ; preds = %108, %104
  %111 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %111(ptr noundef nonnull %96) #10
  br label %112

112:                                              ; preds = %110, %94
  %113 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 23
  %114 = load ptr, ptr %113, align 8, !tbaa !71
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %117(ptr noundef nonnull %114) #10
  br label %118

118:                                              ; preds = %116, %112
  %119 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 24
  %120 = load ptr, ptr %119, align 8, !tbaa !74
  %121 = icmp eq ptr %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %123(ptr noundef nonnull %120) #10
  br label %124

124:                                              ; preds = %122, %118
  %125 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 30
  %126 = load ptr, ptr %125, align 8, !tbaa !131
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %129(ptr noundef nonnull %126) #10
  store ptr null, ptr %125, align 8, !tbaa !131
  br label %130

130:                                              ; preds = %128, %124
  %131 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 31
  %132 = load ptr, ptr %131, align 8, !tbaa !132
  %133 = icmp eq ptr %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %135(ptr noundef nonnull %132) #10
  store ptr null, ptr %131, align 8, !tbaa !132
  br label %136

136:                                              ; preds = %134, %130
  %137 = getelementptr inbounds %struct.ObjectRen, ptr %6, i64 0, i32 29
  %138 = load ptr, ptr %137, align 8, !tbaa !133
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  tail call void @RE_rayobject_free(ptr noundef nonnull %138) #10
  store ptr null, ptr %137, align 8, !tbaa !133
  br label %141

141:                                              ; preds = %136, %140
  %142 = load ptr, ptr %6, align 8, !tbaa !45
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %5, !llvm.loop !134

144:                                              ; preds = %141, %1
  %145 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 69
  %146 = load ptr, ptr %145, align 8, !tbaa !135
  %147 = icmp eq ptr %146, null
  br i1 %147, label %170, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %150 = load ptr, ptr %149, align 8, !tbaa !45
  %151 = icmp eq ptr %150, null
  br i1 %151, label %167, label %152

152:                                              ; preds = %148, %164
  %153 = phi ptr [ %165, %164 ], [ %150, %148 ]
  %154 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %153, i64 0, i32 16
  %155 = load ptr, ptr %154, align 8, !tbaa !49
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %157

157:                                              ; preds = %152
  %158 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %158(ptr noundef nonnull %155) #10
  br label %159

159:                                              ; preds = %157, %152
  %160 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %153, i64 0, i32 18
  %161 = load ptr, ptr %160, align 8, !tbaa !151
  %162 = icmp eq ptr %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  tail call void @RE_rayobject_free(ptr noundef nonnull %161) #10
  br label %164

164:                                              ; preds = %159, %163
  %165 = load ptr, ptr %153, align 8, !tbaa !45
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %152, !llvm.loop !152

167:                                              ; preds = %164, %148
  %168 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %169 = load ptr, ptr %145, align 8, !tbaa !135
  tail call void %168(ptr noundef %169) #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %145, i8 0, i64 28, i1 false)
  br label %170

170:                                              ; preds = %167, %144
  %171 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 65
  %172 = load ptr, ptr %171, align 8, !tbaa !153
  %173 = icmp eq ptr %172, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %170
  %175 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %175(ptr noundef nonnull %172) #10
  store ptr null, ptr %171, align 8, !tbaa !153
  br label %176

176:                                              ; preds = %174, %170
  %177 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 77
  tail call void @BLI_freelistN(ptr noundef nonnull %177) #10
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #10
  %178 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  tail call void @BLI_freelistN(ptr noundef nonnull %178) #10
  ret void
}

declare void @RE_rayobject_free(ptr noundef) local_unnamed_addr #5

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_findOrAddHalo(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %1)
  br label %53

6:                                                ; preds = %2
  %7 = lshr i32 %1, 8
  %8 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 17
  %9 = load i32, ptr %8, align 4, !tbaa !127
  %10 = add nsw i32 %9, -1
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %36, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !125
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %16 = add nsw i32 %9, 1024
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 3
  %19 = tail call ptr %15(i64 noundef %18, ptr noundef nonnull @.str.31) #10
  store ptr %19, ptr %13, align 8, !tbaa !125
  %20 = icmp eq ptr %14, null
  %21 = load i32, ptr %8, align 4, !tbaa !127
  %22 = sext i32 %21 to i64
  br i1 %20, label %32, label %23

23:                                               ; preds = %12
  %24 = shl nsw i64 %22, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr nonnull align 8 %14, i64 %24, i1 false)
  %25 = load ptr, ptr %13, align 8, !tbaa !125
  %26 = load i32, ptr %8, align 4, !tbaa !127
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %28, i8 0, i64 8192, i1 false)
  %29 = load i32, ptr %8, align 4, !tbaa !127
  %30 = add nsw i32 %29, 1024
  store i32 %30, ptr %8, align 4, !tbaa !127
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %31(ptr noundef nonnull %14) #10
  br label %36

32:                                               ; preds = %12
  %33 = getelementptr inbounds ptr, ptr %19, i64 %22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8192) %33, i8 0, i64 8192, i1 false)
  %34 = load i32, ptr %8, align 4, !tbaa !127
  %35 = add nsw i32 %34, 1024
  store i32 %35, ptr %8, align 4, !tbaa !127
  br label %36

36:                                               ; preds = %32, %23, %6
  %37 = getelementptr inbounds %struct.ObjectRen, ptr %0, i64 0, i32 21
  %38 = load ptr, ptr %37, align 8, !tbaa !125
  %39 = zext nneg i32 %7 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !45
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %45 = tail call ptr %44(i64 noundef 32768, ptr noundef nonnull @.str.32) #10
  %46 = load ptr, ptr %37, align 8, !tbaa !125
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

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_inithalo(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef readonly %5, float noundef %6, float noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [4 x float], align 16
  %17 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #10
  %18 = fcmp oeq float %6, 0.000000e+00
  br i1 %18, label %281, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  call void @projectverto(ptr noundef %3, ptr noundef nonnull %20, ptr noundef nonnull %16) #10
  %21 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 3
  %22 = load float, ptr %21, align 4, !tbaa !59
  %23 = fcmp oeq float %22, 0.000000e+00
  br i1 %23, label %281, label %24

24:                                               ; preds = %19
  %25 = icmp eq ptr %4, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %24
  call void @projectverto(ptr noundef nonnull %4, ptr noundef nonnull %20, ptr noundef nonnull %17) #10
  %27 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 3
  %28 = load float, ptr %27, align 4, !tbaa !59
  %29 = fcmp oeq float %28, 0.000000e+00
  br i1 %29, label %281, label %30

30:                                               ; preds = %26, %24
  %31 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 13
  %32 = load i32, ptr %31, align 4, !tbaa !154
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %31, align 4, !tbaa !154
  %34 = call ptr @RE_findOrAddHalo(ptr noundef %1, i32 noundef %32)
  %35 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 9
  %36 = load float, ptr %3, align 4, !tbaa !59
  store float %36, ptr %35, align 4, !tbaa !59
  %37 = getelementptr inbounds float, ptr %3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !59
  %39 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 9, i64 1
  store float %38, ptr %39, align 4, !tbaa !59
  %40 = getelementptr inbounds float, ptr %3, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !59
  %42 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 9, i64 2
  store float %41, ptr %42, align 4, !tbaa !59
  %43 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 26
  store float %6, ptr %43, align 8, !tbaa !155
  %44 = load float, ptr %21, align 4, !tbaa !59
  %45 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %46 = load i32, ptr %45, align 4, !tbaa !157
  %47 = sitofp i32 %46 to float
  %48 = fmul float %47, 5.000000e-01
  %49 = load float, ptr %16, align 16, !tbaa !59
  %50 = fdiv float %49, %44
  %51 = fmul float %48, %50
  %52 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 3
  store float %51, ptr %52, align 8, !tbaa !158
  %53 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %54 = load i32, ptr %53, align 8, !tbaa !159
  %55 = sitofp i32 %54 to float
  %56 = fmul float %55, 5.000000e-01
  %57 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !59
  %59 = fdiv float %58, %44
  %60 = fmul float %56, %59
  %61 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 4
  store float %60, ptr %61, align 4, !tbaa !160
  %62 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 2
  %63 = load float, ptr %62, align 8, !tbaa !59
  %64 = fdiv float %63, %44
  %65 = fmul float %64, 0x415FFFFFC0000000
  %66 = fptosi float %65 to i32
  %67 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 15
  store i32 %66, ptr %67, align 8, !tbaa !161
  %68 = fmul float %64, 0x41E0000000000000
  %69 = fptosi float %68 to i32
  %70 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 17
  store i32 %69, ptr %70, align 8, !tbaa !162
  br i1 %25, label %141, label %71

71:                                               ; preds = %30
  %72 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 19
  %73 = load i8, ptr %72, align 1, !tbaa !163
  %74 = or i8 %73, 2
  store i8 %74, ptr %72, align 1, !tbaa !163
  %75 = load float, ptr %17, align 16, !tbaa !59
  %76 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 3
  %77 = load float, ptr %76, align 4, !tbaa !59
  %78 = fdiv float %75, %77
  %79 = fmul float %47, -5.000000e-01
  %80 = call float @llvm.fmuladd.f32(float %79, float %78, float %51)
  %81 = fcmp oeq float %80, 0.000000e+00
  br i1 %81, label %89, label %82

82:                                               ; preds = %71
  %83 = fmul float %55, -5.000000e-01
  %84 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !59
  %86 = fdiv float %85, %77
  %87 = call float @llvm.fmuladd.f32(float %83, float %86, float %60)
  %88 = call float @atan2f(float noundef %87, float noundef %80) #10
  br label %89

89:                                               ; preds = %71, %82
  %90 = phi float [ %88, %82 ], [ 0.000000e+00, %71 ]
  %91 = call float @sinf(float noundef %90) #10
  %92 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 7
  store float %91, ptr %92, align 8, !tbaa !164
  %93 = call float @cosf(float noundef %90) #10
  %94 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 8
  store float %93, ptr %94, align 4, !tbaa !165
  %95 = load float, ptr %3, align 4, !tbaa !59
  %96 = load float, ptr %4, align 4, !tbaa !59
  %97 = fsub float %95, %96
  %98 = load float, ptr %37, align 4, !tbaa !59
  %99 = getelementptr inbounds float, ptr %4, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !59
  %101 = fsub float %98, %100
  %102 = load float, ptr %40, align 4, !tbaa !59
  %103 = getelementptr inbounds float, ptr %4, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !59
  %105 = fsub float %102, %104
  %106 = fmul float %101, %101
  %107 = call float @llvm.fmuladd.f32(float %97, float %97, float %106)
  %108 = call float @llvm.fmuladd.f32(float %105, float %105, float %107)
  %109 = call float @sqrtf(float noundef %108) #10
  %110 = fsub float 1.000000e+00, %7
  %111 = fmul float %110, %6
  %112 = call float @llvm.fmuladd.f32(float %7, float %109, float %111)
  store float %112, ptr %43, align 8, !tbaa !155
  %113 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 10
  %114 = load float, ptr %3, align 4, !tbaa !59
  %115 = load float, ptr %4, align 4, !tbaa !59
  %116 = fsub float %114, %115
  store float %116, ptr %113, align 4, !tbaa !59
  %117 = load float, ptr %37, align 4, !tbaa !59
  %118 = load float, ptr %99, align 4, !tbaa !59
  %119 = fsub float %117, %118
  %120 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 10, i64 1
  store float %119, ptr %120, align 4, !tbaa !59
  %121 = load float, ptr %40, align 4, !tbaa !59
  %122 = load float, ptr %103, align 4, !tbaa !59
  %123 = fsub float %121, %122
  %124 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 10, i64 2
  store float %123, ptr %124, align 4, !tbaa !59
  %125 = fmul float %119, %119
  %126 = call float @llvm.fmuladd.f32(float %116, float %116, float %125)
  %127 = call float @llvm.fmuladd.f32(float %123, float %123, float %126)
  %128 = fcmp ogt float %127, 0x38AA95A5C0000000
  br i1 %128, label %129, label %138

129:                                              ; preds = %89
  %130 = call float @sqrtf(float noundef %127) #10
  %131 = fdiv float 1.000000e+00, %130
  %132 = load float, ptr %113, align 4, !tbaa !59
  %133 = fmul float %132, %131
  store float %133, ptr %113, align 4, !tbaa !59
  %134 = load float, ptr %120, align 4, !tbaa !59
  %135 = fmul float %131, %134
  store float %135, ptr %120, align 4, !tbaa !59
  %136 = load float, ptr %124, align 4, !tbaa !59
  %137 = fmul float %131, %136
  br label %139

138:                                              ; preds = %89
  store float 0.000000e+00, ptr %113, align 4, !tbaa !59
  store float 0.000000e+00, ptr %120, align 4, !tbaa !59
  br label %139

139:                                              ; preds = %129, %138
  %140 = phi float [ 0.000000e+00, %138 ], [ %137, %129 ]
  store float %140, ptr %124, align 4, !tbaa !59
  br label %141

141:                                              ; preds = %139, %30
  %142 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 51
  %143 = load i32, ptr %142, align 4, !tbaa !166
  %144 = and i32 %143, 1024
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 19
  %148 = load i8, ptr %147, align 1, !tbaa !163
  %149 = or i8 %148, 4
  store i8 %149, ptr %147, align 1, !tbaa !163
  br label %150

150:                                              ; preds = %146, %141
  %151 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 21
  %152 = load float, ptr %151, align 8, !tbaa !170
  %153 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 2
  store float %152, ptr %153, align 4, !tbaa !171
  %154 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 4
  %155 = load float, ptr %154, align 4, !tbaa !172
  %156 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 14
  store float %155, ptr %156, align 4, !tbaa !173
  %157 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 5
  %158 = load float, ptr %157, align 8, !tbaa !174
  %159 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 13
  store float %158, ptr %159, align 8, !tbaa !175
  %160 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 6
  %161 = load float, ptr %160, align 4, !tbaa !176
  %162 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 12
  store float %161, ptr %162, align 4, !tbaa !177
  %163 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 25
  %164 = load float, ptr %163, align 8, !tbaa !178
  %165 = fmul float %164, 2.550000e+02
  %166 = fptoui float %165 to i8
  %167 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 20
  store i8 %166, ptr %167, align 2, !tbaa !179
  %168 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 29
  store ptr %2, ptr %168, align 8, !tbaa !180
  %169 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 38
  %170 = load i16, ptr %169, align 8, !tbaa !181
  %171 = sitofp i16 %170 to float
  %172 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 11
  store float %171, ptr %172, align 8, !tbaa !182
  %173 = trunc i32 %8 to i8
  %174 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 24
  store i8 %173, ptr %174, align 2, !tbaa !183
  %175 = and i32 %143, 2048
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %150
  %178 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 56
  %179 = load i16, ptr %178, align 2, !tbaa !184
  %180 = trunc i16 %179 to i8
  %181 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 18
  store i8 %180, ptr %181, align 4, !tbaa !185
  br label %182

182:                                              ; preds = %177, %150
  %183 = and i32 %143, 512
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 57
  %187 = load i16, ptr %186, align 8, !tbaa !186
  %188 = trunc i16 %187 to i8
  %189 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 22
  store i8 %188, ptr %189, align 8, !tbaa !187
  br label %190

190:                                              ; preds = %185, %182
  %191 = and i32 %143, 256
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 58
  %195 = load i16, ptr %194, align 2, !tbaa !188
  %196 = trunc i16 %195 to i8
  %197 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 23
  store i8 %196, ptr %197, align 1, !tbaa !189
  br label %198

198:                                              ; preds = %193, %190
  %199 = and i32 %143, 32768
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 55
  %203 = load i16, ptr %202, align 4, !tbaa !190
  %204 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 25
  store i16 %203, ptr %204, align 4, !tbaa !191
  br label %205

205:                                              ; preds = %201, %198
  %206 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 102
  %207 = load ptr, ptr %206, align 8, !tbaa !45
  %208 = icmp eq ptr %207, null
  br i1 %208, label %277, label %209

209:                                              ; preds = %205
  %210 = and i32 %143, 4096
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 21
  store i8 1, ptr %213, align 1, !tbaa !192
  br label %277

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 73
  %216 = load i32, ptr %215, align 8, !tbaa !193
  %217 = and i32 %216, 1
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %277

219:                                              ; preds = %214
  %220 = load float, ptr %3, align 4, !tbaa !59
  store float %220, ptr %15, align 4, !tbaa !59
  %221 = load float, ptr %37, align 4, !tbaa !59
  %222 = getelementptr inbounds float, ptr %15, i64 1
  store float %221, ptr %222, align 4, !tbaa !59
  %223 = load float, ptr %40, align 4, !tbaa !59
  %224 = getelementptr inbounds float, ptr %15, i64 2
  store float %223, ptr %224, align 4, !tbaa !59
  %225 = load i16, ptr %207, align 8, !tbaa !194
  %226 = zext i16 %225 to i32
  %227 = and i32 %226, 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %219
  %230 = and i32 %226, 32
  %231 = icmp eq i32 %230, 0
  %232 = icmp ne ptr %5, null
  %233 = and i1 %232, %231
  br i1 %233, label %234, label %240

234:                                              ; preds = %229
  %235 = load float, ptr %5, align 4, !tbaa !59
  store float %235, ptr %15, align 4, !tbaa !59
  %236 = getelementptr inbounds float, ptr %5, i64 1
  %237 = load float, ptr %236, align 4, !tbaa !59
  store float %237, ptr %222, align 4, !tbaa !59
  %238 = getelementptr inbounds float, ptr %5, i64 2
  %239 = load float, ptr %238, align 4, !tbaa !59
  store float %239, ptr %224, align 4, !tbaa !59
  br label %240

240:                                              ; preds = %229, %234, %219
  %241 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 100
  %242 = load ptr, ptr %241, align 8, !tbaa !196
  %243 = call i32 @externtex(ptr noundef nonnull %207, ptr noundef nonnull %15, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, i32 noundef 0, ptr noundef %242) #10
  %244 = getelementptr inbounds %struct.MTex, ptr %207, i64 0, i32 1
  %245 = load i16, ptr %244, align 2, !tbaa !197
  %246 = and i16 %245, 1
  %247 = icmp eq i16 %246, 0
  br i1 %247, label %266, label %248

248:                                              ; preds = %240
  %249 = load float, ptr %10, align 4, !tbaa !59
  %250 = getelementptr inbounds %struct.MTex, ptr %207, i64 0, i32 28
  %251 = load float, ptr %250, align 4, !tbaa !198
  %252 = fmul float %249, %251
  %253 = fsub float 1.000000e+00, %252
  %254 = load float, ptr %11, align 4, !tbaa !59
  %255 = load float, ptr %154, align 4, !tbaa !172
  %256 = fmul float %253, %255
  %257 = call float @llvm.fmuladd.f32(float %252, float %254, float %256)
  store float %257, ptr %156, align 4, !tbaa !173
  %258 = load float, ptr %12, align 4, !tbaa !59
  %259 = load float, ptr %157, align 8, !tbaa !174
  %260 = fmul float %253, %259
  %261 = call float @llvm.fmuladd.f32(float %252, float %258, float %260)
  store float %261, ptr %159, align 8, !tbaa !175
  %262 = load float, ptr %13, align 4, !tbaa !59
  %263 = load float, ptr %160, align 4, !tbaa !176
  %264 = fmul float %253, %263
  %265 = call float @llvm.fmuladd.f32(float %252, float %262, float %264)
  store float %265, ptr %162, align 4, !tbaa !177
  br label %266

266:                                              ; preds = %248, %240
  %267 = load i16, ptr %207, align 8, !tbaa !194
  %268 = and i16 %267, 16
  %269 = icmp eq i16 %268, 0
  br i1 %269, label %272, label %270

270:                                              ; preds = %266
  %271 = load float, ptr %10, align 4, !tbaa !59
  store float %271, ptr %153, align 4, !tbaa !171
  br label %272

272:                                              ; preds = %270, %266
  %273 = and i16 %245, 128
  %274 = icmp eq i16 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %272
  %276 = load float, ptr %10, align 4, !tbaa !59
  store float %276, ptr %153, align 4, !tbaa !171
  br label %277

277:                                              ; preds = %212, %272, %275, %214, %205
  %278 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 100
  %279 = load ptr, ptr %278, align 8, !tbaa !196
  %280 = getelementptr inbounds %struct.HaloRen, ptr %34, i64 0, i32 30
  store ptr %279, ptr %280, align 8, !tbaa !199
  br label %281

281:                                              ; preds = %26, %19, %9, %277
  %282 = phi ptr [ %34, %277 ], [ null, %9 ], [ null, %19 ], [ null, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  ret ptr %282
}

declare void @projectverto(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #7

declare i32 @externtex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_inithalo_particle(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef readonly %6, ptr noundef readonly %7, float noundef %8, float noundef %9, i32 noundef %10, ptr nocapture noundef readonly %11) local_unnamed_addr #0 {
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [4 x float], align 16
  %20 = alloca [4 x float], align 16
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  %24 = fcmp oeq float %8, 0.000000e+00
  br i1 %24, label %417, label %25

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  call void @projectverto(ptr noundef %4, ptr noundef nonnull %26, ptr noundef nonnull %19) #10
  %27 = getelementptr inbounds [4 x float], ptr %19, i64 0, i64 3
  %28 = load float, ptr %27, align 4, !tbaa !59
  %29 = fcmp oeq float %28, 0.000000e+00
  br i1 %29, label %417, label %30

30:                                               ; preds = %25
  %31 = icmp eq ptr %5, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  call void @projectverto(ptr noundef nonnull %5, ptr noundef nonnull %26, ptr noundef nonnull %20) #10
  %33 = getelementptr inbounds [4 x float], ptr %20, i64 0, i64 3
  %34 = load float, ptr %33, align 4, !tbaa !59
  %35 = fcmp oeq float %34, 0.000000e+00
  br i1 %35, label %417, label %36

36:                                               ; preds = %32, %30
  %37 = getelementptr inbounds %struct.ObjectRen, ptr %1, i64 0, i32 13
  %38 = load i32, ptr %37, align 4, !tbaa !154
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %37, align 4, !tbaa !154
  %40 = call ptr @RE_findOrAddHalo(ptr noundef %1, i32 noundef %38)
  %41 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 9
  %42 = load float, ptr %4, align 4, !tbaa !59
  store float %42, ptr %41, align 4, !tbaa !59
  %43 = getelementptr inbounds float, ptr %4, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !59
  %45 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 9, i64 1
  store float %44, ptr %45, align 4, !tbaa !59
  %46 = getelementptr inbounds float, ptr %4, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !59
  %48 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 9, i64 2
  store float %47, ptr %48, align 4, !tbaa !59
  %49 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 26
  store float %8, ptr %49, align 8, !tbaa !155
  %50 = load float, ptr %27, align 4, !tbaa !59
  %51 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %52 = load i32, ptr %51, align 4, !tbaa !157
  %53 = sitofp i32 %52 to float
  %54 = fmul float %53, 5.000000e-01
  %55 = load float, ptr %19, align 16, !tbaa !59
  %56 = fdiv float %55, %50
  %57 = fmul float %54, %56
  %58 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 3
  store float %57, ptr %58, align 8, !tbaa !158
  %59 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %60 = load i32, ptr %59, align 8, !tbaa !159
  %61 = sitofp i32 %60 to float
  %62 = fmul float %61, 5.000000e-01
  %63 = getelementptr inbounds [4 x float], ptr %19, i64 0, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !59
  %65 = fdiv float %64, %50
  %66 = fmul float %62, %65
  %67 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 4
  store float %66, ptr %67, align 4, !tbaa !160
  %68 = getelementptr inbounds [4 x float], ptr %19, i64 0, i64 2
  %69 = load float, ptr %68, align 8, !tbaa !59
  %70 = fdiv float %69, %50
  %71 = fmul float %70, 0x415FFFFFC0000000
  %72 = fptosi float %71 to i32
  %73 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 15
  store i32 %72, ptr %73, align 8, !tbaa !161
  %74 = fmul float %70, 0x41E0000000000000
  %75 = fptosi float %74 to i32
  %76 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 17
  store i32 %75, ptr %76, align 8, !tbaa !162
  br i1 %31, label %148, label %77

77:                                               ; preds = %36
  %78 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 19
  %79 = load i8, ptr %78, align 1, !tbaa !163
  %80 = or i8 %79, 2
  store i8 %80, ptr %78, align 1, !tbaa !163
  %81 = load float, ptr %20, align 16, !tbaa !59
  %82 = getelementptr inbounds [4 x float], ptr %20, i64 0, i64 3
  %83 = load float, ptr %82, align 4, !tbaa !59
  %84 = fdiv float %81, %83
  %85 = fmul float %53, -5.000000e-01
  %86 = call float @llvm.fmuladd.f32(float %85, float %84, float %57)
  %87 = fcmp oeq float %86, 0.000000e+00
  br i1 %87, label %95, label %88

88:                                               ; preds = %77
  %89 = fmul float %61, -5.000000e-01
  %90 = getelementptr inbounds [4 x float], ptr %20, i64 0, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !59
  %92 = fdiv float %91, %83
  %93 = call float @llvm.fmuladd.f32(float %89, float %92, float %66)
  %94 = call float @atan2f(float noundef %93, float noundef %86) #10
  br label %95

95:                                               ; preds = %77, %88
  %96 = phi float [ %94, %88 ], [ 0.000000e+00, %77 ]
  %97 = call float @sinf(float noundef %96) #10
  %98 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 7
  store float %97, ptr %98, align 8, !tbaa !164
  %99 = call float @cosf(float noundef %96) #10
  %100 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 8
  store float %99, ptr %100, align 4, !tbaa !165
  %101 = load float, ptr %4, align 4, !tbaa !59
  %102 = load float, ptr %5, align 4, !tbaa !59
  %103 = fsub float %101, %102
  %104 = load float, ptr %43, align 4, !tbaa !59
  %105 = getelementptr inbounds float, ptr %5, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !59
  %107 = fsub float %104, %106
  %108 = load float, ptr %46, align 4, !tbaa !59
  %109 = getelementptr inbounds float, ptr %5, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !59
  %111 = fsub float %108, %110
  %112 = fmul float %107, %107
  %113 = call float @llvm.fmuladd.f32(float %103, float %103, float %112)
  %114 = call float @llvm.fmuladd.f32(float %111, float %111, float %113)
  %115 = call float @sqrtf(float noundef %114) #10
  %116 = fmul float %115, 5.000000e-01
  %117 = fsub float 1.000000e+00, %9
  %118 = fmul float %117, %8
  %119 = call float @llvm.fmuladd.f32(float %9, float %116, float %118)
  store float %119, ptr %49, align 8, !tbaa !155
  %120 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 10
  %121 = load float, ptr %4, align 4, !tbaa !59
  %122 = load float, ptr %5, align 4, !tbaa !59
  %123 = fsub float %121, %122
  store float %123, ptr %120, align 4, !tbaa !59
  %124 = load float, ptr %43, align 4, !tbaa !59
  %125 = load float, ptr %105, align 4, !tbaa !59
  %126 = fsub float %124, %125
  %127 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 10, i64 1
  store float %126, ptr %127, align 4, !tbaa !59
  %128 = load float, ptr %46, align 4, !tbaa !59
  %129 = load float, ptr %109, align 4, !tbaa !59
  %130 = fsub float %128, %129
  %131 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 10, i64 2
  store float %130, ptr %131, align 4, !tbaa !59
  %132 = fmul float %126, %126
  %133 = call float @llvm.fmuladd.f32(float %123, float %123, float %132)
  %134 = call float @llvm.fmuladd.f32(float %130, float %130, float %133)
  %135 = fcmp ogt float %134, 0x38AA95A5C0000000
  br i1 %135, label %136, label %145

136:                                              ; preds = %95
  %137 = call float @sqrtf(float noundef %134) #10
  %138 = fdiv float 1.000000e+00, %137
  %139 = load float, ptr %120, align 4, !tbaa !59
  %140 = fmul float %139, %138
  store float %140, ptr %120, align 4, !tbaa !59
  %141 = load float, ptr %127, align 4, !tbaa !59
  %142 = fmul float %138, %141
  store float %142, ptr %127, align 4, !tbaa !59
  %143 = load float, ptr %131, align 4, !tbaa !59
  %144 = fmul float %138, %143
  br label %146

145:                                              ; preds = %95
  store float 0.000000e+00, ptr %120, align 4, !tbaa !59
  store float 0.000000e+00, ptr %127, align 4, !tbaa !59
  br label %146

146:                                              ; preds = %136, %145
  %147 = phi float [ 0.000000e+00, %145 ], [ %144, %136 ]
  store float %147, ptr %131, align 4, !tbaa !59
  br label %148

148:                                              ; preds = %146, %36
  %149 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 51
  %150 = load i32, ptr %149, align 4, !tbaa !166
  %151 = and i32 %150, 1024
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 19
  %155 = load i8, ptr %154, align 1, !tbaa !163
  %156 = or i8 %155, 4
  store i8 %156, ptr %154, align 1, !tbaa !163
  br label %157

157:                                              ; preds = %153, %148
  %158 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 21
  %159 = load float, ptr %158, align 8, !tbaa !170
  %160 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 2
  store float %159, ptr %160, align 4, !tbaa !171
  %161 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 4
  %162 = load float, ptr %161, align 4, !tbaa !172
  %163 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 14
  store float %162, ptr %163, align 4, !tbaa !173
  %164 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 5
  %165 = load float, ptr %164, align 8, !tbaa !174
  %166 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 13
  store float %165, ptr %166, align 8, !tbaa !175
  %167 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 6
  %168 = load float, ptr %167, align 4, !tbaa !176
  %169 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 12
  store float %168, ptr %169, align 4, !tbaa !177
  %170 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 25
  %171 = load float, ptr %170, align 8, !tbaa !178
  %172 = fmul float %171, 2.550000e+02
  %173 = fptoui float %172 to i8
  %174 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 20
  store i8 %173, ptr %174, align 2, !tbaa !179
  %175 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 29
  store ptr %3, ptr %175, align 8, !tbaa !180
  %176 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 38
  %177 = load i16, ptr %176, align 8, !tbaa !181
  %178 = sitofp i16 %177 to float
  %179 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 11
  store float %178, ptr %179, align 8, !tbaa !182
  %180 = trunc i32 %10 to i8
  %181 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 24
  store i8 %180, ptr %181, align 2, !tbaa !183
  %182 = and i32 %150, 2048
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %157
  %185 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 56
  %186 = load i16, ptr %185, align 2, !tbaa !184
  %187 = trunc i16 %186 to i8
  %188 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 18
  store i8 %187, ptr %188, align 4, !tbaa !185
  br label %189

189:                                              ; preds = %184, %157
  %190 = and i32 %150, 512
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %197, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 57
  %194 = load i16, ptr %193, align 8, !tbaa !186
  %195 = trunc i16 %194 to i8
  %196 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 22
  store i8 %195, ptr %196, align 8, !tbaa !187
  br label %197

197:                                              ; preds = %192, %189
  %198 = and i32 %150, 256
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 58
  %202 = load i16, ptr %201, align 2, !tbaa !188
  %203 = trunc i16 %202 to i8
  %204 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 23
  store i8 %203, ptr %204, align 1, !tbaa !189
  br label %205

205:                                              ; preds = %200, %197
  %206 = and i32 %150, 32768
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 55
  %210 = load i16, ptr %209, align 4, !tbaa !190
  %211 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 25
  store i16 %210, ptr %211, align 4, !tbaa !191
  br label %212

212:                                              ; preds = %208, %205
  %213 = and i32 %150, 4096
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 102
  %217 = load ptr, ptr %216, align 8, !tbaa !45
  %218 = icmp eq ptr %217, null
  br i1 %218, label %221, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 21
  store i8 1, ptr %220, align 1, !tbaa !192
  br label %221

221:                                              ; preds = %219, %215, %212
  %222 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 73
  %223 = getelementptr inbounds float, ptr %18, i64 1
  %224 = getelementptr inbounds float, ptr %18, i64 2
  %225 = icmp ne ptr %7, null
  %226 = getelementptr inbounds float, ptr %11, i64 1
  %227 = getelementptr inbounds float, ptr %11, i64 2
  %228 = icmp eq ptr %6, null
  %229 = getelementptr inbounds float, ptr %6, i64 1
  %230 = getelementptr inbounds float, ptr %6, i64 2
  %231 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 2
  %232 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 100
  %233 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 1
  %234 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 2
  %235 = getelementptr inbounds [3 x float], ptr %23, i64 0, i64 1
  %236 = getelementptr inbounds [3 x float], ptr %23, i64 0, i64 2
  %237 = getelementptr inbounds [3 x float], ptr %21, i64 0, i64 1
  %238 = getelementptr inbounds [3 x float], ptr %21, i64 0, i64 2
  br label %239

239:                                              ; preds = %221, %410
  %240 = phi i64 [ 0, %221 ], [ %411, %410 ]
  %241 = getelementptr inbounds %struct.Material, ptr %3, i64 0, i32 102, i64 %240
  %242 = load ptr, ptr %241, align 8, !tbaa !45
  %243 = icmp eq ptr %242, null
  br i1 %243, label %410, label %244

244:                                              ; preds = %239
  %245 = load i32, ptr %222, align 8, !tbaa !193
  %246 = trunc i64 %240 to i32
  %247 = shl nuw nsw i32 1, %246
  %248 = and i32 %245, %247
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %410

250:                                              ; preds = %244
  %251 = load float, ptr %4, align 4, !tbaa !59
  store float %251, ptr %18, align 4, !tbaa !59
  %252 = load float, ptr %43, align 4, !tbaa !59
  store float %252, ptr %223, align 4, !tbaa !59
  %253 = load float, ptr %46, align 4, !tbaa !59
  store float %253, ptr %224, align 4, !tbaa !59
  %254 = load i16, ptr %242, align 8, !tbaa !194
  %255 = zext i16 %254 to i32
  %256 = and i32 %255, 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %309

258:                                              ; preds = %250
  %259 = and i32 %255, 32
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %267, label %261

261:                                              ; preds = %258
  %262 = getelementptr inbounds %struct.MTex, ptr %242, i64 0, i32 4
  %263 = load ptr, ptr %262, align 8, !tbaa !200
  %264 = icmp eq ptr %263, null
  br i1 %264, label %309, label %265

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.Object, ptr %263, i64 0, i32 51
  call void @mul_m4_v3(ptr noundef nonnull %266, ptr noundef nonnull %18) #10
  br label %309

267:                                              ; preds = %258
  %268 = and i32 %255, 8
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %267
  store float %251, ptr %18, align 4, !tbaa !59
  store float %252, ptr %223, align 4, !tbaa !59
  store float %253, ptr %224, align 4, !tbaa !59
  br label %309

271:                                              ; preds = %267
  %272 = and i32 %255, 16
  %273 = icmp ne i32 %272, 0
  %274 = and i1 %225, %273
  br i1 %274, label %275, label %295

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.MTex, ptr %242, i64 0, i32 6
  %277 = call i32 @CustomData_get_named_layer_index(ptr noundef nonnull %231, i32 noundef 5, ptr noundef nonnull %276) #10
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %275
  %280 = call i32 @CustomData_get_active_layer_index(ptr noundef nonnull %231, i32 noundef 5) #10
  br label %281

281:                                              ; preds = %279, %275
  %282 = phi i32 [ %280, %279 ], [ %277, %275 ]
  %283 = call i32 @CustomData_get_layer_index(ptr noundef nonnull %231, i32 noundef 5) #10
  %284 = sub nsw i32 %282, %283
  %285 = shl nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds float, ptr %7, i64 %286
  %288 = load float, ptr %287, align 4, !tbaa !59
  %289 = call float @llvm.fmuladd.f32(float %288, float 2.000000e+00, float -1.000000e+00)
  store float %289, ptr %18, align 4, !tbaa !59
  %290 = or disjoint i32 %285, 1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds float, ptr %7, i64 %291
  %293 = load float, ptr %292, align 4, !tbaa !59
  %294 = call float @llvm.fmuladd.f32(float %293, float 2.000000e+00, float -1.000000e+00)
  store float %294, ptr %223, align 4, !tbaa !59
  store float 0.000000e+00, ptr %224, align 4, !tbaa !59
  br label %309

295:                                              ; preds = %271
  %296 = and i32 %255, 8192
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %304, label %298

298:                                              ; preds = %295
  %299 = load float, ptr %11, align 4, !tbaa !59
  %300 = call float @llvm.fmuladd.f32(float %299, float 2.000000e+00, float -1.000000e+00)
  store float %300, ptr %18, align 4, !tbaa !59
  %301 = load float, ptr %226, align 4, !tbaa !59
  %302 = call float @llvm.fmuladd.f32(float %301, float 2.000000e+00, float -1.000000e+00)
  store float %302, ptr %223, align 4, !tbaa !59
  %303 = load float, ptr %227, align 4, !tbaa !59
  store float %303, ptr %224, align 4, !tbaa !59
  br label %309

304:                                              ; preds = %295
  br i1 %228, label %309, label %305

305:                                              ; preds = %304
  %306 = load float, ptr %6, align 4, !tbaa !59
  store float %306, ptr %18, align 4, !tbaa !59
  %307 = load float, ptr %229, align 4, !tbaa !59
  store float %307, ptr %223, align 4, !tbaa !59
  %308 = load float, ptr %230, align 4, !tbaa !59
  store float %308, ptr %224, align 4, !tbaa !59
  br label %309

309:                                              ; preds = %265, %261, %281, %304, %305, %298, %270, %250
  %310 = load ptr, ptr %232, align 8, !tbaa !196
  %311 = call i32 @externtex(ptr noundef nonnull %242, ptr noundef nonnull %18, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17, i32 noundef 0, ptr noundef %310) #10
  %312 = getelementptr inbounds %struct.MTex, ptr %242, i64 0, i32 1
  %313 = load i16, ptr %312, align 2, !tbaa !197
  %314 = and i16 %313, 1
  %315 = icmp eq i16 %314, 0
  br i1 %315, label %332, label %316

316:                                              ; preds = %309
  %317 = load float, ptr %14, align 4, !tbaa !59
  store float %317, ptr %22, align 4, !tbaa !59
  %318 = load float, ptr %15, align 4, !tbaa !59
  store float %318, ptr %233, align 4, !tbaa !59
  %319 = load float, ptr %16, align 4, !tbaa !59
  store float %319, ptr %234, align 4, !tbaa !59
  %320 = load float, ptr %163, align 4, !tbaa !173
  store float %320, ptr %23, align 4, !tbaa !59
  %321 = load float, ptr %166, align 8, !tbaa !175
  store float %321, ptr %235, align 4, !tbaa !59
  %322 = load float, ptr %169, align 4, !tbaa !177
  store float %322, ptr %236, align 4, !tbaa !59
  %323 = load float, ptr %13, align 4, !tbaa !59
  %324 = getelementptr inbounds %struct.MTex, ptr %242, i64 0, i32 28
  %325 = load float, ptr %324, align 4, !tbaa !198
  %326 = getelementptr inbounds %struct.MTex, ptr %242, i64 0, i32 3
  %327 = load i16, ptr %326, align 2, !tbaa !201
  %328 = sext i16 %327 to i32
  call void @texture_rgb_blend(ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23, float noundef %323, float noundef %325, i32 noundef %328) #10
  %329 = load float, ptr %21, align 4, !tbaa !59
  store float %329, ptr %163, align 4, !tbaa !173
  %330 = load float, ptr %237, align 4, !tbaa !59
  store float %330, ptr %166, align 8, !tbaa !175
  %331 = load float, ptr %238, align 4, !tbaa !59
  store float %331, ptr %169, align 4, !tbaa !177
  br label %332

332:                                              ; preds = %316, %309
  %333 = icmp eq i32 %311, 0
  br i1 %333, label %336, label %334

334:                                              ; preds = %332
  %335 = load float, ptr %17, align 4, !tbaa !59
  store float %335, ptr %13, align 4, !tbaa !59
  br label %336

336:                                              ; preds = %334, %332
  %337 = load i16, ptr %312, align 2, !tbaa !197
  %338 = and i16 %337, 128
  %339 = icmp eq i16 %338, 0
  br i1 %339, label %351, label %340

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.MTex, ptr %242, i64 0, i32 26
  %342 = load float, ptr %341, align 4, !tbaa !202
  %343 = load float, ptr %160, align 4, !tbaa !171
  %344 = load float, ptr %13, align 4, !tbaa !59
  %345 = getelementptr inbounds %struct.MTex, ptr %242, i64 0, i32 35
  %346 = load float, ptr %345, align 8, !tbaa !203
  %347 = getelementptr inbounds %struct.MTex, ptr %242, i64 0, i32 3
  %348 = load i16, ptr %347, align 2, !tbaa !201
  %349 = sext i16 %348 to i32
  %350 = call float @texture_value_blend(float noundef %342, float noundef %343, float noundef %344, float noundef %346, i32 noundef %349) #10
  store float %350, ptr %160, align 4, !tbaa !171
  br label %351

351:                                              ; preds = %340, %336
  %352 = load i16, ptr %312, align 2, !tbaa !197
  %353 = and i16 %352, 256
  %354 = icmp eq i16 %353, 0
  br i1 %354, label %368, label %355

355:                                              ; preds = %351
  %356 = getelementptr inbounds %struct.MTex, ptr %242, i64 0, i32 26
  %357 = load float, ptr %356, align 4, !tbaa !202
  %358 = load float, ptr %179, align 8, !tbaa !182
  %359 = fdiv float %358, 1.270000e+02
  %360 = load float, ptr %13, align 4, !tbaa !59
  %361 = getelementptr inbounds %struct.MTex, ptr %242, i64 0, i32 39
  %362 = load float, ptr %361, align 8, !tbaa !204
  %363 = getelementptr inbounds %struct.MTex, ptr %242, i64 0, i32 3
  %364 = load i16, ptr %363, align 2, !tbaa !201
  %365 = sext i16 %364 to i32
  %366 = call float @texture_value_blend(float noundef %357, float noundef %359, float noundef %360, float noundef %362, i32 noundef %365) #10
  %367 = call float @llvm.fmuladd.f32(float %366, float 1.260000e+02, float 1.000000e+00)
  store float %367, ptr %179, align 8, !tbaa !182
  br label %368

368:                                              ; preds = %355, %351
  %369 = load i16, ptr %312, align 2, !tbaa !197
  %370 = and i16 %369, 512
  %371 = icmp eq i16 %370, 0
  br i1 %371, label %385, label %372

372:                                              ; preds = %368
  %373 = getelementptr inbounds %struct.MTex, ptr %242, i64 0, i32 26
  %374 = load float, ptr %373, align 4, !tbaa !202
  %375 = load float, ptr %49, align 8, !tbaa !155
  %376 = fdiv float %375, 1.000000e+02
  %377 = load float, ptr %13, align 4, !tbaa !59
  %378 = getelementptr inbounds %struct.MTex, ptr %242, i64 0, i32 40
  %379 = load float, ptr %378, align 4, !tbaa !205
  %380 = getelementptr inbounds %struct.MTex, ptr %242, i64 0, i32 3
  %381 = load i16, ptr %380, align 2, !tbaa !201
  %382 = sext i16 %381 to i32
  %383 = call float @texture_value_blend(float noundef %374, float noundef %376, float noundef %377, float noundef %379, i32 noundef %382) #10
  %384 = fmul float %383, 1.000000e+02
  store float %384, ptr %49, align 8, !tbaa !155
  br label %385

385:                                              ; preds = %372, %368
  %386 = load i16, ptr %312, align 2, !tbaa !197
  %387 = and i16 %386, 1024
  %388 = icmp eq i16 %387, 0
  br i1 %388, label %410, label %389

389:                                              ; preds = %385
  %390 = getelementptr inbounds %struct.MTex, ptr %242, i64 0, i32 26
  %391 = load float, ptr %390, align 4, !tbaa !202
  %392 = load i8, ptr %174, align 2, !tbaa !179
  %393 = uitofp i8 %392 to float
  %394 = fdiv float %393, 2.550000e+02
  %395 = load float, ptr %13, align 4, !tbaa !59
  %396 = getelementptr inbounds %struct.MTex, ptr %242, i64 0, i32 41
  %397 = load float, ptr %396, align 8, !tbaa !206
  %398 = getelementptr inbounds %struct.MTex, ptr %242, i64 0, i32 3
  %399 = load i16, ptr %398, align 2, !tbaa !201
  %400 = sext i16 %399 to i32
  %401 = call float @texture_value_blend(float noundef %391, float noundef %394, float noundef %395, float noundef %397, i32 noundef %400) #10
  %402 = fcmp olt float %401, 0.000000e+00
  br i1 %402, label %406, label %403

403:                                              ; preds = %389
  %404 = fcmp ogt float %401, 1.000000e+00
  br i1 %404, label %405, label %406

405:                                              ; preds = %403
  br label %406

406:                                              ; preds = %389, %403, %405
  %407 = phi float [ 1.000000e+00, %405 ], [ %401, %403 ], [ 0.000000e+00, %389 ]
  %408 = fmul float %407, 2.550000e+02
  %409 = fptoui float %408 to i8
  store i8 %409, ptr %174, align 2, !tbaa !179
  br label %410

410:                                              ; preds = %239, %244, %406, %385
  %411 = add nuw nsw i64 %240, 1
  %412 = icmp eq i64 %411, 18
  br i1 %412, label %413, label %239, !llvm.loop !207

413:                                              ; preds = %410
  %414 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 100
  %415 = load ptr, ptr %414, align 8, !tbaa !196
  %416 = getelementptr inbounds %struct.HaloRen, ptr %40, i64 0, i32 30
  store ptr %415, ptr %416, align 8, !tbaa !199
  br label %417

417:                                              ; preds = %32, %25, %12, %413
  %418 = phi ptr [ %40, %413 ], [ null, %12 ], [ null, %25 ], [ null, %32 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #10
  ret ptr %418
}

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @CustomData_get_named_layer_index(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @CustomData_get_active_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @CustomData_get_layer_index(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @texture_rgb_blend(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #5

declare float @texture_value_blend(float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @project_renderdata(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, float noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = tail call float @sinf(float noundef %3) #10
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 26
  store float %10, ptr %11, align 8, !tbaa !208
  %12 = tail call float @cosf(float noundef %3) #10
  %13 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 27
  store float %12, ptr %13, align 4, !tbaa !209
  br label %14

14:                                               ; preds = %9, %5
  %15 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %219, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 27
  %20 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 26
  %21 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %22 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %23 = getelementptr inbounds float, ptr %6, i64 1
  %24 = getelementptr inbounds float, ptr %6, i64 2
  %25 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  %26 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 20
  %28 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 22
  %29 = getelementptr inbounds float, ptr %7, i64 3
  %30 = getelementptr inbounds float, ptr %7, i64 2
  %31 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %32 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 13
  %33 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 14
  %34 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %35 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 24
  %36 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  br label %41

37:                                               ; preds = %215, %41
  %38 = phi ptr [ %43, %41 ], [ %63, %215 ]
  %39 = load ptr, ptr %42, align 8, !tbaa !45
  %40 = icmp eq ptr %39, null
  br i1 %40, label %219, label %41, !llvm.loop !210

41:                                               ; preds = %18, %37
  %42 = phi ptr [ %16, %18 ], [ %39, %37 ]
  %43 = phi ptr [ null, %18 ], [ %38, %37 ]
  %44 = getelementptr inbounds %struct.ObjectRen, ptr %42, i64 0, i32 13
  %45 = load i32, ptr %44, align 4, !tbaa !154
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %37

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.ObjectRen, ptr %42, i64 0, i32 21
  br label %49

49:                                               ; preds = %47, %215
  %50 = phi i32 [ 0, %47 ], [ %216, %215 ]
  %51 = phi ptr [ %43, %47 ], [ %63, %215 ]
  %52 = and i32 %50, 255
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load ptr, ptr %48, align 8, !tbaa !125
  %56 = lshr exact i32 %50, 8
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !45
  br label %62

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.HaloRen, ptr %51, i64 1
  br label %62

62:                                               ; preds = %60, %54
  %63 = phi ptr [ %59, %54 ], [ %61, %60 ]
  br i1 %8, label %78, label %64

64:                                               ; preds = %62
  %65 = load float, ptr %19, align 4, !tbaa !209
  %66 = getelementptr inbounds %struct.HaloRen, ptr %63, i64 0, i32 9
  %67 = load float, ptr %66, align 8, !tbaa !59
  %68 = load float, ptr %20, align 8, !tbaa !208
  %69 = getelementptr inbounds %struct.HaloRen, ptr %63, i64 0, i32 9, i64 2
  %70 = load float, ptr %69, align 8, !tbaa !59
  %71 = fmul float %68, %70
  %72 = call float @llvm.fmuladd.f32(float %65, float %67, float %71)
  store float %72, ptr %6, align 4, !tbaa !59
  %73 = getelementptr inbounds %struct.HaloRen, ptr %63, i64 0, i32 9, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !59
  store float %74, ptr %21, align 4, !tbaa !59
  %75 = fneg float %68
  %76 = fmul float %65, %70
  %77 = call float @llvm.fmuladd.f32(float %75, float %67, float %76)
  store float %77, ptr %22, align 4, !tbaa !59
  br label %85

78:                                               ; preds = %62
  %79 = getelementptr inbounds %struct.HaloRen, ptr %63, i64 0, i32 9
  %80 = load float, ptr %79, align 4, !tbaa !59
  store float %80, ptr %6, align 4, !tbaa !59
  %81 = getelementptr inbounds %struct.HaloRen, ptr %63, i64 0, i32 9, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !59
  store float %82, ptr %23, align 4, !tbaa !59
  %83 = getelementptr inbounds %struct.HaloRen, ptr %63, i64 0, i32 9, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !59
  store float %84, ptr %24, align 4, !tbaa !59
  br label %85

85:                                               ; preds = %78, %64
  call void %1(ptr noundef nonnull %6, ptr noundef nonnull %25, ptr noundef nonnull %7) #10
  %86 = load float, ptr %7, align 16, !tbaa !59
  %87 = fmul float %86, 5.000000e-01
  store float %87, ptr %7, align 16, !tbaa !59
  %88 = load float, ptr %26, align 4, !tbaa !59
  %89 = fmul float %88, 5.000000e-01
  store float %89, ptr %26, align 4, !tbaa !59
  br i1 %8, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 @testclip(ptr noundef nonnull %7) #10
  br label %130

92:                                               ; preds = %85
  %93 = load i32, ptr %27, align 8, !tbaa !211
  %94 = load i32, ptr %28, align 8, !tbaa !212
  %95 = add i32 %93, -1
  %96 = add i32 %95, %94
  %97 = sdiv i32 %96, %94
  %98 = load float, ptr %29, align 4, !tbaa !59
  %99 = call float @llvm.fabs.f32(float %98)
  %100 = load float, ptr %30, align 8, !tbaa !59
  %101 = fneg float %99
  %102 = fcmp olt float %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %92
  %104 = fcmp ogt float %100, %99
  br i1 %104, label %105, label %106

105:                                              ; preds = %103
  br label %106

106:                                              ; preds = %105, %103, %92
  %107 = phi i16 [ 32, %105 ], [ 0, %103 ], [ 16, %92 ]
  %108 = fcmp ogt float %89, %99
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = or disjoint i16 %107, 4
  br label %115

111:                                              ; preds = %106
  %112 = fcmp olt float %89, %101
  br i1 %112, label %113, label %115

113:                                              ; preds = %111
  %114 = or disjoint i16 %107, 8
  br label %115

115:                                              ; preds = %113, %111, %109
  %116 = phi i16 [ %110, %109 ], [ %114, %113 ], [ %107, %111 ]
  %117 = sitofp i32 %97 to float
  %118 = fmul float %99, %117
  %119 = fcmp ogt float %87, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = add nsw i16 %116, 2
  br label %127

122:                                              ; preds = %115
  %123 = fneg float %118
  %124 = fcmp olt float %87, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = add nsw i16 %116, 1
  br label %127

127:                                              ; preds = %125, %122, %120
  %128 = phi i16 [ %121, %120 ], [ %126, %125 ], [ %116, %122 ]
  %129 = sext i16 %128 to i32
  br label %130

130:                                              ; preds = %90, %127
  %131 = phi i32 [ %91, %90 ], [ %129, %127 ]
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.HaloRen, ptr %63, i64 0, i32 1
  store i16 -10000, ptr %134, align 2, !tbaa !213
  store i16 -10000, ptr %63, align 8, !tbaa !214
  br label %215

135:                                              ; preds = %130
  %136 = load float, ptr %31, align 4, !tbaa !59
  %137 = fcmp olt float %136, 0.000000e+00
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.HaloRen, ptr %63, i64 0, i32 1
  store i16 -10000, ptr %139, align 2, !tbaa !213
  store i16 -10000, ptr %63, align 8, !tbaa !214
  br label %215

140:                                              ; preds = %135
  %141 = load float, ptr %7, align 16, !tbaa !59
  %142 = fmul float %141, 2.000000e+00
  store float %142, ptr %7, align 16, !tbaa !59
  %143 = load float, ptr %26, align 4, !tbaa !59
  %144 = fmul float %143, 2.000000e+00
  store float %144, ptr %26, align 4, !tbaa !59
  %145 = load i32, ptr %32, align 4, !tbaa !157
  %146 = sitofp i32 %145 to float
  %147 = fmul float %146, 5.000000e-01
  %148 = fdiv float %142, %136
  %149 = fadd float %148, 1.000000e+00
  %150 = fmul float %149, %147
  %151 = getelementptr inbounds %struct.HaloRen, ptr %63, i64 0, i32 3
  store float %150, ptr %151, align 8, !tbaa !158
  %152 = load i32, ptr %33, align 8, !tbaa !159
  %153 = sitofp i32 %152 to float
  %154 = fmul float %153, 5.000000e-01
  %155 = fdiv float %144, %136
  %156 = fadd float %155, 1.000000e+00
  %157 = fmul float %156, %154
  %158 = getelementptr inbounds %struct.HaloRen, ptr %63, i64 0, i32 4
  store float %157, ptr %158, align 4, !tbaa !160
  %159 = load float, ptr %34, align 8, !tbaa !59
  %160 = fdiv float %159, %136
  %161 = fmul float %160, 0x415FFFFFC0000000
  %162 = fptosi float %161 to i32
  %163 = getelementptr inbounds %struct.HaloRen, ptr %63, i64 0, i32 15
  store i32 %162, ptr %163, align 8, !tbaa !161
  %164 = fmul float %160, 0x41E0000000000000
  %165 = fptosi float %164 to i32
  %166 = getelementptr inbounds %struct.HaloRen, ptr %63, i64 0, i32 17
  store i32 %165, ptr %166, align 8, !tbaa !162
  %167 = getelementptr inbounds %struct.HaloRen, ptr %63, i64 0, i32 26
  %168 = load float, ptr %167, align 8, !tbaa !155
  %169 = load float, ptr %6, align 4, !tbaa !59
  %170 = fadd float %168, %169
  store float %170, ptr %6, align 4, !tbaa !59
  call void %1(ptr noundef nonnull %6, ptr noundef nonnull %25, ptr noundef nonnull %7) #10
  %171 = load float, ptr %167, align 8, !tbaa !155
  %172 = load float, ptr %6, align 4, !tbaa !59
  %173 = fsub float %172, %171
  store float %173, ptr %6, align 4, !tbaa !59
  %174 = load float, ptr %31, align 4, !tbaa !59
  %175 = load float, ptr %151, align 8, !tbaa !158
  %176 = load i32, ptr %32, align 4, !tbaa !157
  %177 = sitofp i32 %176 to float
  %178 = load float, ptr %7, align 16, !tbaa !59
  %179 = fdiv float %178, %174
  %180 = fadd float %179, 1.000000e+00
  %181 = fmul float %177, -5.000000e-01
  %182 = call float @llvm.fmuladd.f32(float %181, float %180, float %175)
  %183 = call float @llvm.fabs.f32(float %182)
  %184 = getelementptr inbounds %struct.HaloRen, ptr %63, i64 0, i32 5
  store float %183, ptr %184, align 8, !tbaa !215
  %185 = getelementptr inbounds %struct.HaloRen, ptr %63, i64 0, i32 19
  %186 = load i8, ptr %185, align 1, !tbaa !163
  %187 = and i8 %186, 1
  %188 = icmp ne i8 %187, 0
  %189 = fcmp ogt float %183, 3.000000e+00
  %190 = select i1 %188, i1 %189, i1 false
  %191 = select i1 %190, float 3.000000e+00, float %183
  store float %191, ptr %184, align 8
  %192 = fmul float %191, %191
  %193 = getelementptr inbounds %struct.HaloRen, ptr %63, i64 0, i32 6
  store float %192, ptr %193, align 4, !tbaa !216
  %194 = load float, ptr %158, align 4, !tbaa !160
  %195 = load float, ptr %35, align 8, !tbaa !217
  %196 = fdiv float %191, %195
  %197 = fsub float %194, %196
  %198 = fptosi float %197 to i16
  store i16 %198, ptr %63, align 8, !tbaa !214
  %199 = fadd float %194, %196
  %200 = fptosi float %199 to i16
  %201 = getelementptr inbounds %struct.HaloRen, ptr %63, i64 0, i32 1
  store i16 %200, ptr %201, align 2, !tbaa !213
  %202 = load float, ptr %36, align 4, !tbaa !59
  %203 = fsub float %202, %171
  store float %203, ptr %36, align 4, !tbaa !59
  call void %1(ptr noundef nonnull %6, ptr noundef nonnull %25, ptr noundef nonnull %7) #10
  %204 = load float, ptr %34, align 8, !tbaa !59
  %205 = load float, ptr %31, align 4, !tbaa !59
  %206 = fdiv float %204, %205
  %207 = load i32, ptr %163, align 8, !tbaa !161
  %208 = sitofp i32 %207 to float
  %209 = call float @llvm.fmuladd.f32(float %206, float 0xC15FFFFFC0000000, float %208)
  %210 = call float @llvm.fabs.f32(float %209)
  %211 = fcmp ogt float %210, 0x41E0000000000000
  %212 = select i1 %211, float 0x41E0000000000000, float %210
  %213 = fptosi float %212 to i32
  %214 = getelementptr inbounds %struct.HaloRen, ptr %63, i64 0, i32 16
  store i32 %213, ptr %214, align 4, !tbaa !218
  br label %215

215:                                              ; preds = %133, %140, %138
  %216 = add nuw nsw i32 %50, 1
  %217 = load i32, ptr %44, align 4, !tbaa !154
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %49, label %37, !llvm.loop !219

219:                                              ; preds = %37, %14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nounwind uwtable
define dso_local ptr @RE_addRenderInstance(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #10
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %11 = tail call ptr %10(i64 noundef 288, ptr noundef nonnull @.str.33) #10
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
  tail call void @copy_m4_m4(ptr noundef nonnull %20, ptr noundef nonnull %6) #10
  call void @copy_m3_m4(ptr noundef nonnull %9, ptr noundef nonnull %6) #10
  %21 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %11, i64 0, i32 10
  %22 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %21, ptr noundef nonnull %9) #10
  call void @transpose_m3(ptr noundef nonnull %21) #10
  %23 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %11, i64 0, i32 11
  %24 = load i16, ptr %23, align 8, !tbaa !86
  %25 = or i16 %24, 1
  store i16 %25, ptr %23, align 8, !tbaa !86
  br label %26

26:                                               ; preds = %19, %8
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  call void @BLI_addtail(ptr noundef nonnull %27, ptr noundef %11) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #10
  ret ptr %11
}

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @transpose_m3(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @RE_makeRenderInstances(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %4 = tail call i32 @BLI_countlist(ptr noundef nonnull %3) #10
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %6 = sext i32 %4 to i64
  %7 = mul nsw i64 %6, 288
  %8 = tail call ptr %5(i64 noundef %7, ptr noundef nonnull @.str.34) #10
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 69
  store ptr %8, ptr %9, align 8, !tbaa !135
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
  call void @BLI_addtail(ptr noundef nonnull %2, ptr noundef nonnull %15) #10
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
  call void @BLI_freelistN(ptr noundef nonnull %3) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !229
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret void
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @RE_instance_rotate_ray_start(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 11
  %6 = load i16, ptr %5, align 8, !tbaa !86
  %7 = and i16 %6, 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 3
  %11 = load float, ptr %1, align 4, !tbaa !59
  store float %11, ptr %10, align 4, !tbaa !59
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !59
  %14 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 3, i64 1
  store float %13, ptr %14, align 4, !tbaa !59
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !59
  %17 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 3, i64 2
  store float %16, ptr %17, align 4, !tbaa !59
  %18 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 9
  tail call void @mul_m4_v3(ptr noundef nonnull %18, ptr noundef nonnull %1) #10
  br label %19

19:                                               ; preds = %9, %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_instance_rotate_ray_dir(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %43, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 11
  %7 = load i16, ptr %6, align 8, !tbaa !86
  %8 = and i16 %7, 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %43, label %10

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %11 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 4
  %12 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1
  %13 = load float, ptr %12, align 4, !tbaa !59
  store float %13, ptr %11, align 4, !tbaa !59
  %14 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !59
  %16 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 4, i64 1
  store float %15, ptr %16, align 4, !tbaa !59
  %17 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !59
  %19 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 4, i64 2
  store float %18, ptr %19, align 4, !tbaa !59
  %20 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 3
  %21 = load float, ptr %20, align 4, !tbaa !59
  %22 = fadd float %13, %21
  store float %22, ptr %3, align 4, !tbaa !59
  %23 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 3, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !59
  %25 = fadd float %15, %24
  %26 = getelementptr inbounds float, ptr %3, i64 1
  store float %25, ptr %26, align 4, !tbaa !59
  %27 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 3, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !59
  %29 = fadd float %18, %28
  %30 = getelementptr inbounds float, ptr %3, i64 2
  store float %29, ptr %30, align 4, !tbaa !59
  %31 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 9
  call void @mul_m4_v3(ptr noundef nonnull %31, ptr noundef nonnull %3) #10
  %32 = load float, ptr %3, align 4, !tbaa !59
  %33 = load float, ptr %1, align 4, !tbaa !59
  %34 = fsub float %32, %33
  store float %34, ptr %12, align 4, !tbaa !59
  %35 = load float, ptr %26, align 4, !tbaa !59
  %36 = getelementptr inbounds float, ptr %1, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !59
  %38 = fsub float %35, %37
  store float %38, ptr %14, align 4, !tbaa !59
  %39 = load float, ptr %30, align 4, !tbaa !59
  %40 = getelementptr inbounds float, ptr %1, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !59
  %42 = fsub float %39, %41
  store float %42, ptr %17, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  br label %43

43:                                               ; preds = %10, %5, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_instance_rotate_ray(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 11
  %7 = load i16, ptr %6, align 8, !tbaa !86
  %8 = and i16 %7, 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 3
  %12 = load float, ptr %1, align 4, !tbaa !59
  store float %12, ptr %11, align 4, !tbaa !59
  %13 = getelementptr inbounds float, ptr %1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !59
  %15 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 3, i64 1
  store float %14, ptr %15, align 4, !tbaa !59
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !59
  %18 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 3, i64 2
  store float %17, ptr %18, align 4, !tbaa !59
  %19 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 9
  tail call void @mul_m4_v3(ptr noundef nonnull %19, ptr noundef nonnull %1) #10
  br label %20

20:                                               ; preds = %5, %10
  br i1 %4, label %59, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 11
  %23 = load i16, ptr %22, align 8, !tbaa !86
  %24 = and i16 %23, 2
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %59, label %26

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %27 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 4
  %28 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1
  %29 = load float, ptr %28, align 4, !tbaa !59
  store float %29, ptr %27, align 4, !tbaa !59
  %30 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !59
  %32 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 4, i64 1
  store float %31, ptr %32, align 4, !tbaa !59
  %33 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !59
  %35 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 4, i64 2
  store float %34, ptr %35, align 4, !tbaa !59
  %36 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 3
  %37 = load float, ptr %36, align 4, !tbaa !59
  %38 = fadd float %29, %37
  store float %38, ptr %3, align 4, !tbaa !59
  %39 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 3, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !59
  %41 = fadd float %31, %40
  %42 = getelementptr inbounds float, ptr %3, i64 1
  store float %41, ptr %42, align 4, !tbaa !59
  %43 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 3, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !59
  %45 = fadd float %34, %44
  %46 = getelementptr inbounds float, ptr %3, i64 2
  store float %45, ptr %46, align 4, !tbaa !59
  %47 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 9
  call void @mul_m4_v3(ptr noundef nonnull %47, ptr noundef nonnull %3) #10
  %48 = load float, ptr %3, align 4, !tbaa !59
  %49 = load float, ptr %1, align 4, !tbaa !59
  %50 = fsub float %48, %49
  store float %50, ptr %28, align 4, !tbaa !59
  %51 = load float, ptr %42, align 4, !tbaa !59
  %52 = getelementptr inbounds float, ptr %1, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !59
  %54 = fsub float %51, %53
  store float %54, ptr %30, align 4, !tbaa !59
  %55 = load float, ptr %46, align 4, !tbaa !59
  %56 = getelementptr inbounds float, ptr %1, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !59
  %58 = fsub float %55, %57
  store float %58, ptr %33, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  br label %59

59:                                               ; preds = %2, %20, %21, %26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RE_instance_rotate_ray_restore(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %0, i64 0, i32 11
  %6 = load i16, ptr %5, align 8, !tbaa !86
  %7 = and i16 %6, 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 3
  %11 = load float, ptr %10, align 4, !tbaa !59
  store float %11, ptr %1, align 4, !tbaa !59
  %12 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 3, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !59
  %14 = getelementptr inbounds float, ptr %1, i64 1
  store float %13, ptr %14, align 4, !tbaa !59
  %15 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 3, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !59
  %17 = getelementptr inbounds float, ptr %1, i64 2
  store float %16, ptr %17, align 4, !tbaa !59
  %18 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1
  %19 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 4
  %20 = load float, ptr %19, align 4, !tbaa !59
  store float %20, ptr %18, align 4, !tbaa !59
  %21 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 4, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !59
  %23 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 1
  store float %22, ptr %23, align 4, !tbaa !59
  %24 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 4, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !59
  %26 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 1, i64 2
  store float %25, ptr %26, align 4, !tbaa !59
  br label %27

27:                                               ; preds = %9, %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @clip_render_object(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @copy_m4_m4(ptr noundef nonnull %4, ptr noundef %2) #10
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
  br label %20

17:                                               ; preds = %89
  %18 = add nuw nsw i32 %22, 1
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %93, label %20, !llvm.loop !230

20:                                               ; preds = %3, %17
  %21 = phi i32 [ -1, %3 ], [ %91, %17 ]
  %22 = phi i32 [ 0, %3 ], [ %18, %17 ]
  %23 = and i32 %22, 1
  %24 = xor i32 %23, 1
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds [3 x float], ptr %0, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !59
  store float %27, ptr %5, align 16, !tbaa !59
  %28 = and i32 %22, 2
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr %7, ptr %6
  %31 = load float, ptr %30, align 4, !tbaa !59
  store float %31, ptr %8, align 4, !tbaa !59
  %32 = icmp ult i32 %22, 4
  %33 = select i1 %32, ptr %10, ptr %9
  %34 = load float, ptr %33, align 4, !tbaa !59
  store float %34, ptr %11, align 8, !tbaa !59
  store float 1.000000e+00, ptr %12, align 4, !tbaa !59
  call void @mul_m4_v4(ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %35 = load float, ptr %5, align 16, !tbaa !59
  br i1 %13, label %60, label %36

36:                                               ; preds = %20
  %37 = load float, ptr %1, align 4, !tbaa !59
  %38 = load float, ptr %12, align 4, !tbaa !59
  %39 = fmul float %37, %38
  %40 = fcmp olt float %35, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load float, ptr %14, align 4, !tbaa !59
  %43 = fmul float %38, %42
  %44 = fcmp ogt float %35, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %36, %41, %45
  %47 = phi i32 [ 2, %45 ], [ 0, %41 ], [ 1, %36 ]
  %48 = load float, ptr %8, align 4, !tbaa !59
  %49 = load float, ptr %15, align 4, !tbaa !59
  %50 = fmul float %38, %49
  %51 = fcmp ogt float %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = or disjoint i32 %47, 4
  br label %77

54:                                               ; preds = %46
  %55 = load float, ptr %16, align 4, !tbaa !59
  %56 = fmul float %38, %55
  %57 = fcmp olt float %48, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = or disjoint i32 %47, 8
  br label %77

60:                                               ; preds = %20
  %61 = load float, ptr %12, align 4, !tbaa !59
  %62 = fneg float %61
  %63 = fcmp olt float %35, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = fcmp ogt float %35, %61
  br i1 %65, label %66, label %67

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %60, %64, %66
  %68 = phi i32 [ 2, %66 ], [ 0, %64 ], [ 1, %60 ]
  %69 = load float, ptr %8, align 4, !tbaa !59
  %70 = fcmp ogt float %69, %61
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = or disjoint i32 %68, 4
  br label %77

73:                                               ; preds = %67
  %74 = fcmp olt float %69, %62
  br i1 %74, label %75, label %77

75:                                               ; preds = %73
  %76 = or disjoint i32 %68, 8
  br label %77

77:                                               ; preds = %71, %75, %73, %52, %58, %54
  %78 = phi i32 [ %53, %52 ], [ %59, %58 ], [ %47, %54 ], [ %72, %71 ], [ %76, %75 ], [ %68, %73 ]
  %79 = load float, ptr %11, align 8, !tbaa !59
  %80 = load float, ptr %12, align 4, !tbaa !59
  %81 = fneg float %80
  %82 = fcmp olt float %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = or i32 %78, 16
  br label %89

85:                                               ; preds = %77
  %86 = fcmp ogt float %79, %80
  br i1 %86, label %87, label %89

87:                                               ; preds = %85
  %88 = or i32 %78, 32
  br label %89

89:                                               ; preds = %85, %87, %83
  %90 = phi i32 [ %84, %83 ], [ %88, %87 ], [ %78, %85 ]
  %91 = and i32 %90, %21
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %17

93:                                               ; preds = %17, %89
  %94 = phi i32 [ 0, %89 ], [ %91, %17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  ret i32 %94
}

declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

declare i32 @testclip(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

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
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !{!66, !39, i64 60}
!66 = !{!"VlakRen", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !36, i64 32, !38, i64 48, !36, i64 56, !36, i64 57, !36, i64 58, !39, i64 60}
!67 = !{!42, !38, i64 120}
!68 = !{!69, !39, i64 32}
!69 = !{!"VlakTableNode", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !39, i64 36, !38, i64 40, !38, i64 48, !38, i64 56}
!70 = !{!69, !38, i64 8}
!71 = !{!42, !38, i64 152}
!72 = !{!69, !39, i64 36}
!73 = !{!69, !38, i64 16}
!74 = !{!42, !38, i64 160}
!75 = !{!69, !38, i64 24}
!76 = !{!69, !38, i64 40}
!77 = !{!69, !38, i64 48}
!78 = !{!69, !38, i64 56}
!79 = !{!42, !39, i64 84}
!80 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45, i64 24, i64 8, !45, i64 32, i64 12, !57, i64 48, i64 8, !45, i64 56, i64 1, !57, i64 57, i64 1, !57, i64 58, i64 1, !57, i64 60, i64 4, !58}
!81 = distinct !{!81, !63, !64}
!82 = distinct !{!82, !63, !64}
!83 = !{!69, !38, i64 0}
!84 = !{!42, !39, i64 100}
!85 = distinct !{!85, !63, !64}
!86 = !{!50, !51, i64 216}
!87 = !{!88, !39, i64 172}
!88 = !{!"CustomData", !38, i64 0, !36, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !38, i64 184, !38, i64 192}
!89 = !{!88, !38, i64 0}
!90 = !{!91, !39, i64 0}
!91 = !{!"CustomDataLayer", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !36, i64 32, !38, i64 96}
!92 = !{!91, !39, i64 16}
!93 = !{!42, !39, i64 168}
!94 = !{!91, !39, i64 12}
!95 = !{!42, !39, i64 176}
!96 = !{!42, !39, i64 172}
!97 = distinct !{!97, !63, !64}
!98 = !{!99, !39, i64 28}
!99 = !{!"StrandRen", !38, i64 0, !38, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !36, i64 32}
!100 = !{!42, !38, i64 128}
!101 = !{!102, !38, i64 16}
!102 = !{!"StrandTableNode", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !39, i64 56, !39, i64 60}
!103 = !{!102, !39, i64 56}
!104 = !{!102, !38, i64 48}
!105 = !{!102, !39, i64 60}
!106 = !{!102, !38, i64 40}
!107 = !{!102, !38, i64 24}
!108 = !{!102, !38, i64 32}
!109 = !{!102, !38, i64 0}
!110 = !{!42, !39, i64 104}
!111 = distinct !{!111, !63, !64}
!112 = !{!113, !38, i64 16}
!113 = !{!"StrandBuffer", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !39, i64 32, !39, i64 36, !38, i64 40, !38, i64 48, !38, i64 56, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !36, i64 96, !39, i64 160, !39, i64 164}
!114 = !{!113, !39, i64 32}
!115 = !{!113, !38, i64 40}
!116 = !{!42, !38, i64 144}
!117 = !{!42, !38, i64 16}
!118 = !{!42, !38, i64 24}
!119 = !{!42, !39, i64 40}
!120 = !{!42, !39, i64 44}
!121 = !{!42, !39, i64 52}
!122 = !{!44, !38, i64 40}
!123 = distinct !{!123, !63, !64}
!124 = distinct !{!124, !63, !64}
!125 = !{!42, !38, i64 136}
!126 = distinct !{!126, !63, !64}
!127 = !{!42, !39, i64 108}
!128 = !{!102, !38, i64 8}
!129 = distinct !{!129, !63, !64}
!130 = !{!113, !38, i64 24}
!131 = !{!42, !38, i64 256}
!132 = !{!42, !38, i64 264}
!133 = !{!42, !38, i64 248}
!134 = distinct !{!134, !63, !64}
!135 = !{!136, !38, i64 5800}
!136 = !{!"Render", !38, i64 0, !38, i64 8, !36, i64 16, !39, i64 92, !51, i64 96, !51, i64 98, !51, i64 100, !51, i64 102, !36, i64 104, !38, i64 112, !38, i64 120, !137, i64 128, !39, i64 144, !39, i64 148, !39, i64 152, !138, i64 156, !139, i64 172, !40, i64 188, !40, i64 192, !40, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !36, i64 240, !36, i64 252, !36, i64 288, !36, i64 352, !36, i64 416, !36, i64 480, !40, i64 544, !40, i64 548, !38, i64 552, !36, i64 560, !36, i64 816, !38, i64 1072, !36, i64 1080, !38, i64 1088, !38, i64 1096, !140, i64 1104, !147, i64 5088, !38, i64 5616, !39, i64 5624, !39, i64 5628, !137, i64 5632, !38, i64 5648, !38, i64 5656, !38, i64 5664, !38, i64 5672, !40, i64 5680, !38, i64 5688, !137, i64 5696, !40, i64 5712, !40, i64 5716, !39, i64 5720, !39, i64 5724, !39, i64 5728, !39, i64 5732, !39, i64 5736, !38, i64 5744, !137, i64 5752, !137, i64 5768, !137, i64 5784, !38, i64 5800, !137, i64 5808, !39, i64 5824, !38, i64 5832, !38, i64 5840, !38, i64 5848, !38, i64 5856, !38, i64 5864, !137, i64 5872, !38, i64 5888, !137, i64 5896, !137, i64 5912, !38, i64 5928, !38, i64 5936, !38, i64 5944, !38, i64 5952, !38, i64 5960, !38, i64 5968, !38, i64 5976, !38, i64 5984, !38, i64 5992, !38, i64 6000, !38, i64 6008, !38, i64 6016, !38, i64 6024, !38, i64 6032, !38, i64 6040, !38, i64 6048, !38, i64 6056, !149, i64 6064, !38, i64 6216, !38, i64 6224, !38, i64 6232}
!137 = !{!"ListBase", !38, i64 0, !38, i64 8}
!138 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!139 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!140 = !{!"RenderData", !141, i64 0, !38, i64 248, !38, i64 256, !144, i64 264, !145, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !40, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !51, i64 432, !51, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !51, i64 456, !51, i64 458, !51, i64 460, !51, i64 462, !51, i64 464, !51, i64 466, !39, i64 468, !51, i64 472, !51, i64 474, !51, i64 476, !51, i64 478, !51, i64 480, !51, i64 482, !39, i64 484, !39, i64 488, !51, i64 492, !51, i64 494, !39, i64 496, !39, i64 500, !51, i64 504, !51, i64 506, !51, i64 508, !51, i64 510, !51, i64 512, !36, i64 514, !36, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !51, i64 528, !51, i64 530, !51, i64 532, !51, i64 534, !51, i64 536, !51, i64 538, !51, i64 540, !51, i64 542, !139, i64 544, !139, i64 560, !138, i64 576, !137, i64 592, !51, i64 608, !51, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !39, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !51, i64 648, !51, i64 650, !51, i64 652, !51, i64 654, !51, i64 656, !51, i64 658, !40, i64 660, !40, i64 664, !51, i64 668, !51, i64 670, !40, i64 672, !40, i64 676, !36, i64 680, !39, i64 1704, !51, i64 1708, !51, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !39, i64 2520, !51, i64 2524, !51, i64 2526, !40, i64 2528, !40, i64 2532, !51, i64 2536, !51, i64 2538, !40, i64 2540, !51, i64 2544, !51, i64 2546, !39, i64 2548, !51, i64 2552, !51, i64 2554, !51, i64 2556, !51, i64 2558, !40, i64 2560, !40, i64 2564, !38, i64 2568, !39, i64 2576, !40, i64 2580, !36, i64 2584, !146, i64 2616, !39, i64 3976, !39, i64 3980}
!141 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !51, i64 8, !51, i64 10, !40, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !142, i64 24, !143, i64 184}
!142 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !36, i64 8, !36, i64 72, !40, i64 136, !40, i64 140, !38, i64 144, !38, i64 152}
!143 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!144 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !51, i64 48, !51, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!145 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !40, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !38, i64 64}
!146 = !{!"BakeData", !141, i64 0, !36, i64 248, !51, i64 1272, !51, i64 1274, !51, i64 1276, !51, i64 1278, !40, i64 1280, !40, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!147 = !{!"World", !148, i64 0, !38, i64 120, !51, i64 128, !51, i64 130, !51, i64 132, !51, i64 134, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !51, i64 200, !51, i64 202, !51, i64 204, !51, i64 206, !51, i64 208, !51, i64 210, !51, i64 212, !51, i64 214, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !51, i64 264, !51, i64 266, !51, i64 268, !51, i64 270, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !51, i64 288, !51, i64 290, !51, i64 292, !51, i64 294, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !51, i64 324, !51, i64 326, !51, i64 328, !51, i64 330, !51, i64 332, !51, i64 334, !38, i64 336, !38, i64 344, !38, i64 352, !36, i64 360, !51, i64 504, !51, i64 506, !36, i64 508, !38, i64 512, !38, i64 520}
!148 = !{!"ID", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !36, i64 32, !51, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !38, i64 112}
!149 = !{!"RenderStats", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !51, i64 28, !51, i64 30, !51, i64 32, !51, i64 34, !51, i64 36, !51, i64 38, !36, i64 40, !150, i64 48, !150, i64 56, !38, i64 64, !38, i64 72, !36, i64 80, !40, i64 144, !40, i64 148}
!150 = !{!"double", !36, i64 0}
!151 = !{!50, !38, i64 272}
!152 = distinct !{!152, !63, !64}
!153 = !{!136, !38, i64 5744}
!154 = !{!42, !39, i64 92}
!155 = !{!156, !40, i64 96}
!156 = !{!"HaloRen", !51, i64 0, !51, i64 2, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32, !36, i64 44, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !36, i64 84, !36, i64 85, !36, i64 86, !36, i64 87, !36, i64 88, !36, i64 89, !36, i64 90, !51, i64 92, !40, i64 96, !39, i64 100, !39, i64 104, !38, i64 112, !38, i64 120}
!157 = !{!136, !39, i64 148}
!158 = !{!156, !40, i64 8}
!159 = !{!136, !39, i64 152}
!160 = !{!156, !40, i64 12}
!161 = !{!156, !39, i64 72}
!162 = !{!156, !39, i64 80}
!163 = !{!156, !36, i64 85}
!164 = !{!156, !40, i64 24}
!165 = !{!156, !40, i64 28}
!166 = !{!167, !39, i64 396}
!167 = !{!"Material", !148, i64 0, !38, i64 120, !51, i64 128, !51, i64 130, !40, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !168, i64 224, !169, i64 312, !40, i64 328, !40, i64 332, !40, i64 336, !40, i64 340, !40, i64 344, !40, i64 348, !40, i64 352, !51, i64 356, !51, i64 358, !51, i64 360, !36, i64 362, !36, i64 363, !40, i64 364, !40, i64 368, !51, i64 372, !51, i64 374, !40, i64 376, !40, i64 380, !40, i64 384, !40, i64 388, !51, i64 392, !51, i64 394, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !51, i64 412, !51, i64 414, !51, i64 416, !51, i64 418, !40, i64 420, !40, i64 424, !40, i64 428, !40, i64 432, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !40, i64 456, !36, i64 460, !40, i64 524, !40, i64 528, !40, i64 532, !39, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !51, i64 544, !51, i64 546, !51, i64 548, !36, i64 550, !36, i64 551, !51, i64 552, !51, i64 554, !40, i64 556, !40, i64 560, !36, i64 564, !40, i64 580, !40, i64 584, !51, i64 588, !51, i64 590, !38, i64 592, !38, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !51, i64 612, !51, i64 614, !40, i64 616, !40, i64 620, !36, i64 624, !38, i64 768, !38, i64 776, !38, i64 784, !38, i64 792, !40, i64 800, !40, i64 804, !40, i64 808, !40, i64 812, !40, i64 816, !51, i64 820, !51, i64 822, !36, i64 824, !36, i64 836, !40, i64 848, !40, i64 852, !40, i64 856, !40, i64 860, !40, i64 864, !40, i64 868, !40, i64 872, !51, i64 876, !51, i64 878, !39, i64 880, !51, i64 884, !51, i64 886, !36, i64 888, !51, i64 904, !51, i64 906, !51, i64 908, !51, i64 910, !51, i64 912, !36, i64 914, !38, i64 920, !137, i64 928}
!168 = !{!"VolumeSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !40, i64 52, !40, i64 56, !40, i64 60, !51, i64 64, !51, i64 66, !51, i64 68, !51, i64 70, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84}
!169 = !{!"GameSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!170 = !{!167, !40, i64 200}
!171 = !{!156, !40, i64 4}
!172 = !{!167, !40, i64 132}
!173 = !{!156, !40, i64 68}
!174 = !{!167, !40, i64 136}
!175 = !{!156, !40, i64 64}
!176 = !{!167, !40, i64 140}
!177 = !{!156, !40, i64 60}
!178 = !{!167, !40, i64 216}
!179 = !{!156, !36, i64 86}
!180 = !{!156, !38, i64 112}
!181 = !{!167, !51, i64 360}
!182 = !{!156, !40, i64 56}
!183 = !{!156, !36, i64 90}
!184 = !{!167, !51, i64 414}
!185 = !{!156, !36, i64 84}
!186 = !{!167, !51, i64 416}
!187 = !{!156, !36, i64 88}
!188 = !{!167, !51, i64 418}
!189 = !{!156, !36, i64 89}
!190 = !{!167, !51, i64 412}
!191 = !{!156, !51, i64 92}
!192 = !{!156, !36, i64 87}
!193 = !{!167, !39, i64 536}
!194 = !{!195, !51, i64 0}
!195 = !{!"MTex", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6, !38, i64 8, !38, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !40, i64 116, !51, i64 120, !51, i64 122, !51, i64 124, !51, i64 126, !51, i64 128, !51, i64 130, !36, i64 132, !36, i64 133, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308}
!196 = !{!136, !38, i64 6224}
!197 = !{!195, !51, i64 2}
!198 = !{!195, !40, i64 164}
!199 = !{!156, !38, i64 120}
!200 = !{!195, !38, i64 8}
!201 = !{!195, !51, i64 6}
!202 = !{!195, !40, i64 156}
!203 = !{!195, !40, i64 192}
!204 = !{!195, !40, i64 208}
!205 = !{!195, !40, i64 212}
!206 = !{!195, !40, i64 216}
!207 = distinct !{!207, !63, !64}
!208 = !{!136, !40, i64 224}
!209 = !{!136, !40, i64 228}
!210 = distinct !{!210, !63, !64}
!211 = !{!136, !39, i64 200}
!212 = !{!136, !39, i64 208}
!213 = !{!156, !51, i64 2}
!214 = !{!156, !51, i64 0}
!215 = !{!156, !40, i64 16}
!216 = !{!156, !40, i64 20}
!217 = !{!136, !40, i64 216}
!218 = !{!156, !39, i64 76}
!219 = distinct !{!219, !63, !64}
!220 = !{!50, !38, i64 24}
!221 = !{!50, !38, i64 32}
!222 = !{!50, !39, i64 40}
!223 = !{!50, !39, i64 44}
!224 = !{!50, !39, i64 48}
!225 = !{!136, !39, i64 5824}
!226 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45, i64 24, i64 8, !45, i64 32, i64 8, !45, i64 40, i64 4, !58, i64 44, i64 4, !58, i64 48, i64 4, !58, i64 52, i64 64, !57, i64 116, i64 64, !57, i64 180, i64 36, !57, i64 216, i64 2, !227, i64 220, i64 12, !57, i64 232, i64 8, !57, i64 240, i64 8, !45, i64 248, i64 8, !45, i64 256, i64 8, !45, i64 264, i64 4, !58, i64 272, i64 8, !45, i64 280, i64 4, !58}
!227 = !{!51, !51, i64 0}
!228 = distinct !{!228, !63, !64}
!229 = !{i64 0, i64 8, !45, i64 8, i64 8, !45}
!230 = distinct !{!230, !63, !64}
