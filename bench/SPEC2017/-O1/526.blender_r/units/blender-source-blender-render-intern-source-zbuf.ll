; ModuleID = 'blender/source/blender/render/intern/source/zbuf.c'
source_filename = "blender/source/blender/render/intern/source/zbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ZSpan = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, float, i32, i32, i32, float, ptr, ptr, ptr, ptr }
%struct.APixstrMain = type { ptr, ptr, ptr }
%struct.ZbufProjectCache = type { i32, i32, [4 x float] }
%struct.RenderLayer = type { ptr, ptr, [74 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase }
%struct.RenderPart = type { ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i32, i32, i32, i16, i16, i16, i16, ptr }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.VlakTableNode = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.VertRen = type { [3 x float], [3 x float], ptr, i32, float, i32 }
%struct.StrandSegment = type { [4 x ptr], ptr, ptr, ptr, float, %struct.StrandPoint, %struct.StrandPoint, i32 }
%struct.StrandPoint = type { float, [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], i32, i32, [4 x float], float, float, float }
%struct.LampRen = type { ptr, ptr, float, float, float, [3 x float], i16, i32, float, float, float, float, float, float, float, float, float, i32, float, float, [3 x float], float, float, float, float, float, float, i16, float, float, ptr, i16, i16, float, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, [1 x i16], [1 x i16], float, float, float, float, ptr, ptr, ptr, [3 x [3 x float]], float, [3 x float], float, [4 x [4 x float]], [3 x [3 x float]], [8 x [3 x float]], float, ptr, [1 x ptr], [18 x ptr], i32, i32 }
%struct.StrandBuffer = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, float, float, float, float, [4 x [4 x float]], i32, i32 }
%struct.StrandBound = type { i32, i32, [2 x [3 x float]] }
%struct.StrandRen = type { ptr, ptr, i32, i32, i32, i32, [3 x float] }
%struct.StrandVert = type { [3 x float], float }
%struct.NodeBlurData = type { i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, i16, i8, i8, i32, i32 }
%struct.DrawBufPixel = type { ptr, float }
%struct.PixStr = type { ptr, i32, i32, i32, i32, i16, i16 }
%struct.ShadeSample = type { i32, [16 x ptr], [16 x %struct.ShadeInput], [16 x %struct.ShadeResult] }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.ShadeResult = type { [4 x float], [4 x float], float, float, float, [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float] }
%struct.ZTranspRow = type { i32, i32, i32, i32, i32, float, float }
%struct.APixstr = type { [4 x i16], [4 x i32], [4 x i32], [4 x i32], [4 x i16], ptr }
%struct.APixstrand = type { [4 x i16], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x float], [4 x float], ptr }
%struct.RenderResult = type { ptr, ptr, i32, i32, i16, i16, ptr, ptr, ptr, %struct.rcti, i32, i32, %struct.ListBase, %struct.rcti, ptr, i32, i32, i32, ptr }
%struct.RenderPass = type { ptr, ptr, i32, i32, [64 x i8], [8 x i8], ptr, i32, i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.SampleTables = type { [16 x float], [9 x ptr], [9 x ptr], [256 x i8], ptr }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"zspan\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@R = external global %struct.Render, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"recto\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"rectp\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"rectz\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"seconday z buffer\00", align 1
@RE_zbuf_accumulate_vecblur.jit = internal global [256 x [2 x float]] zeroinitializer, align 16
@RE_zbuf_accumulate_vecblur.firsttime = internal unnamed_addr global i1 false, align 4
@MEM_mapallocN = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"zbuf accum\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"rectmove\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"rect draw\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"rect weight\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"rect max\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"minspeed buf\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"vertices\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [8 x i8] c"APixbuf\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"APixbufstrand\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"ztramask\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"Arectz\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"Arectmask\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"addpsmainA\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"pixstr\00", align 1
@str = private unnamed_addr constant [53 x i8] c"Found uninitialized speed in vector buffer... fixed.\00", align 1
@str.21 = private unnamed_addr constant [36 x i8] c"zbuffer_transp_shade: osa too large\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @zbuf_alloc_span(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %0, i8 0, i64 224, i1 false)
  store i32 %1, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  store i32 %2, ptr %5, align 4, !tbaa !41
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %7 = sext i32 %2 to i64
  %8 = shl nsw i64 %7, 2
  %9 = tail call ptr %6(i64 noundef %8, ptr noundef nonnull @.str) #14
  %10 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  store ptr %9, ptr %10, align 8, !tbaa !43
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %12 = tail call ptr %11(i64 noundef %8, ptr noundef nonnull @.str) #14
  %13 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  store ptr %12, ptr %13, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 31
  store float %3, ptr %14, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @zbuf_free_span(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %8(ptr noundef nonnull %5) #14
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %14(ptr noundef nonnull %11) #14
  br label %15

15:                                               ; preds = %13, %9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local void @fillrect(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = mul nsw i32 %2, %1
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %11, %7 ], [ %0, %4 ]
  %9 = phi i32 [ %10, %7 ], [ %5, %4 ]
  %10 = add nsw i32 %9, -1
  store i32 %3, ptr %8, align 4, !tbaa !46
  %11 = getelementptr inbounds i32, ptr %8, i64 1
  %12 = icmp sgt i32 %9, 1
  br i1 %12, label %7, label %13, !llvm.loop !47

13:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @testclip(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds float, ptr %0, i64 3
  %3 = load float, ptr %2, align 4, !tbaa !50
  %4 = tail call float @llvm.fabs.f32(float %3)
  %5 = fadd float %4, 0x3E80000000000000
  %6 = load float, ptr %0, align 4, !tbaa !50
  %7 = fneg float %5
  %8 = fcmp olt float %6, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = fcmp ogt float %6, %5
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %1, %9, %11
  %13 = phi i16 [ 2, %11 ], [ 0, %9 ], [ 1, %1 ]
  %14 = getelementptr inbounds float, ptr %0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !50
  %16 = fcmp ogt float %15, %5
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = or disjoint i16 %13, 4
  br label %23

19:                                               ; preds = %12
  %20 = fcmp olt float %15, %7
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = or disjoint i16 %13, 8
  br label %23

23:                                               ; preds = %19, %21, %17
  %24 = phi i16 [ %18, %17 ], [ %22, %21 ], [ %13, %19 ]
  %25 = getelementptr inbounds float, ptr %0, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !50
  %27 = fcmp olt float %26, %7
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = add nsw i16 %24, 16
  br label %34

30:                                               ; preds = %23
  %31 = fcmp ogt float %26, %5
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = add nsw i16 %24, 32
  br label %34

34:                                               ; preds = %30, %32, %28
  %35 = phi i16 [ %29, %28 ], [ %33, %32 ], [ %24, %30 ]
  %36 = zext nneg i16 %35 to i32
  ret i32 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nounwind uwtable
define dso_local void @freepsA(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !51
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1, %12
  %5 = phi ptr [ %6, %12 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.APixstrMain, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %11(ptr noundef nonnull %8) #14
  br label %12

12:                                               ; preds = %10, %4
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %13(ptr noundef nonnull %5) #14
  %14 = icmp eq ptr %6, null
  br i1 %14, label %15, label %4, !llvm.loop !56

15:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @hoco_to_zco(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !50
  %6 = fdiv float 1.000000e+00, %5
  %7 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 12
  %8 = load float, ptr %7, align 8, !tbaa !57
  %9 = load float, ptr %2, align 4, !tbaa !50
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %6, float 1.000000e+00)
  %11 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 14
  %12 = load float, ptr %11, align 8, !tbaa !58
  %13 = tail call float @llvm.fmuladd.f32(float %8, float %10, float %12)
  store float %13, ptr %1, align 4, !tbaa !50
  %14 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 13
  %15 = load float, ptr %14, align 4, !tbaa !59
  %16 = getelementptr inbounds float, ptr %2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !50
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %6, float 1.000000e+00)
  %19 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 15
  %20 = load float, ptr %19, align 4, !tbaa !60
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %18, float %20)
  %22 = getelementptr inbounds float, ptr %1, i64 1
  store float %21, ptr %22, align 4, !tbaa !50
  %23 = getelementptr inbounds float, ptr %2, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !50
  %25 = fmul float %6, %24
  %26 = fmul float %25, 0x41E0000000000000
  %27 = getelementptr inbounds float, ptr %1, i64 2
  store float %26, ptr %27, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nounwind uwtable
define dso_local void @zbufclipwire(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr noundef readonly %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #0 {
  %13 = alloca [20 x float], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %13) #14
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %436, label %15

15:                                               ; preds = %12
  %16 = icmp eq ptr %7, null
  %17 = and i32 %9, %8
  %18 = and i32 %17, %10
  br i1 %16, label %24, label %19

19:                                               ; preds = %15
  %20 = and i32 %18, %11
  %21 = or i32 %9, %8
  %22 = or i32 %21, %10
  %23 = or i32 %22, %11
  br label %27

24:                                               ; preds = %15
  %25 = or i32 %9, %8
  %26 = or i32 %25, %10
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i32 [ %20, %19 ], [ %18, %24 ]
  %29 = phi i32 [ %23, %19 ], [ %26, %24 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %332, label %31

31:                                               ; preds = %27
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %33, label %436

33:                                               ; preds = %31
  %34 = and i32 %3, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %93, label %36

36:                                               ; preds = %33
  %37 = load float, ptr %4, align 4, !tbaa !50
  store float %37, ptr %13, align 16, !tbaa !50
  %38 = getelementptr inbounds float, ptr %4, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !50
  %40 = getelementptr inbounds float, ptr %13, i64 1
  store float %39, ptr %40, align 4, !tbaa !50
  %41 = getelementptr inbounds float, ptr %4, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !50
  %43 = getelementptr inbounds float, ptr %13, i64 2
  store float %42, ptr %43, align 8, !tbaa !50
  %44 = getelementptr inbounds float, ptr %4, i64 3
  %45 = load float, ptr %44, align 4, !tbaa !50
  %46 = getelementptr inbounds float, ptr %13, i64 3
  store float %45, ptr %46, align 4, !tbaa !50
  %47 = getelementptr inbounds float, ptr %13, i64 4
  %48 = load float, ptr %5, align 4, !tbaa !50
  store float %48, ptr %47, align 16, !tbaa !50
  %49 = getelementptr inbounds float, ptr %5, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !50
  %51 = getelementptr inbounds float, ptr %13, i64 5
  store float %50, ptr %51, align 4, !tbaa !50
  %52 = getelementptr inbounds float, ptr %5, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !50
  %54 = getelementptr inbounds float, ptr %13, i64 6
  store float %53, ptr %54, align 8, !tbaa !50
  %55 = getelementptr inbounds float, ptr %5, i64 3
  %56 = load float, ptr %55, align 4, !tbaa !50
  %57 = getelementptr inbounds float, ptr %13, i64 7
  store float %56, ptr %57, align 4, !tbaa !50
  %58 = call fastcc i32 @clipline(ptr noundef nonnull %13, ptr noundef nonnull %47), !range !61
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %93, label %60

60:                                               ; preds = %36
  %61 = load float, ptr %46, align 4, !tbaa !50
  %62 = fdiv float 1.000000e+00, %61
  %63 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 12
  %64 = load float, ptr %63, align 8, !tbaa !57
  %65 = load float, ptr %13, align 16, !tbaa !50
  %66 = tail call float @llvm.fmuladd.f32(float %65, float %62, float 1.000000e+00)
  %67 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 14
  %68 = load float, ptr %67, align 8, !tbaa !58
  %69 = tail call float @llvm.fmuladd.f32(float %64, float %66, float %68)
  store float %69, ptr %13, align 16, !tbaa !50
  %70 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 13
  %71 = load float, ptr %70, align 4, !tbaa !59
  %72 = load float, ptr %40, align 4, !tbaa !50
  %73 = tail call float @llvm.fmuladd.f32(float %72, float %62, float 1.000000e+00)
  %74 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 15
  %75 = load float, ptr %74, align 4, !tbaa !60
  %76 = tail call float @llvm.fmuladd.f32(float %71, float %73, float %75)
  store float %76, ptr %40, align 4, !tbaa !50
  %77 = load float, ptr %43, align 8, !tbaa !50
  %78 = fmul float %62, %77
  %79 = fmul float %78, 0x41E0000000000000
  store float %79, ptr %43, align 8, !tbaa !50
  %80 = load float, ptr %57, align 4, !tbaa !50
  %81 = fdiv float 1.000000e+00, %80
  %82 = load float, ptr %47, align 16, !tbaa !50
  %83 = tail call float @llvm.fmuladd.f32(float %82, float %81, float 1.000000e+00)
  %84 = tail call float @llvm.fmuladd.f32(float %64, float %83, float %68)
  store float %84, ptr %47, align 16, !tbaa !50
  %85 = load float, ptr %51, align 4, !tbaa !50
  %86 = tail call float @llvm.fmuladd.f32(float %85, float %81, float 1.000000e+00)
  %87 = tail call float @llvm.fmuladd.f32(float %71, float %86, float %75)
  store float %87, ptr %51, align 4, !tbaa !50
  %88 = load float, ptr %54, align 8, !tbaa !50
  %89 = fmul float %81, %88
  %90 = fmul float %89, 0x41E0000000000000
  store float %90, ptr %54, align 8, !tbaa !50
  %91 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %92 = load ptr, ptr %91, align 8, !tbaa !62
  call void %92(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %47) #14
  br label %93

93:                                               ; preds = %36, %60, %33
  %94 = and i32 %3, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %153, label %96

96:                                               ; preds = %93
  %97 = load float, ptr %5, align 4, !tbaa !50
  store float %97, ptr %13, align 16, !tbaa !50
  %98 = getelementptr inbounds float, ptr %5, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !50
  %100 = getelementptr inbounds float, ptr %13, i64 1
  store float %99, ptr %100, align 4, !tbaa !50
  %101 = getelementptr inbounds float, ptr %5, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !50
  %103 = getelementptr inbounds float, ptr %13, i64 2
  store float %102, ptr %103, align 8, !tbaa !50
  %104 = getelementptr inbounds float, ptr %5, i64 3
  %105 = load float, ptr %104, align 4, !tbaa !50
  %106 = getelementptr inbounds float, ptr %13, i64 3
  store float %105, ptr %106, align 4, !tbaa !50
  %107 = getelementptr inbounds float, ptr %13, i64 4
  %108 = load float, ptr %6, align 4, !tbaa !50
  store float %108, ptr %107, align 16, !tbaa !50
  %109 = getelementptr inbounds float, ptr %6, i64 1
  %110 = load float, ptr %109, align 4, !tbaa !50
  %111 = getelementptr inbounds float, ptr %13, i64 5
  store float %110, ptr %111, align 4, !tbaa !50
  %112 = getelementptr inbounds float, ptr %6, i64 2
  %113 = load float, ptr %112, align 4, !tbaa !50
  %114 = getelementptr inbounds float, ptr %13, i64 6
  store float %113, ptr %114, align 8, !tbaa !50
  %115 = getelementptr inbounds float, ptr %6, i64 3
  %116 = load float, ptr %115, align 4, !tbaa !50
  %117 = getelementptr inbounds float, ptr %13, i64 7
  store float %116, ptr %117, align 4, !tbaa !50
  %118 = call fastcc i32 @clipline(ptr noundef nonnull %13, ptr noundef nonnull %107), !range !61
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %153, label %120

120:                                              ; preds = %96
  %121 = load float, ptr %106, align 4, !tbaa !50
  %122 = fdiv float 1.000000e+00, %121
  %123 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 12
  %124 = load float, ptr %123, align 8, !tbaa !57
  %125 = load float, ptr %13, align 16, !tbaa !50
  %126 = call float @llvm.fmuladd.f32(float %125, float %122, float 1.000000e+00)
  %127 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 14
  %128 = load float, ptr %127, align 8, !tbaa !58
  %129 = call float @llvm.fmuladd.f32(float %124, float %126, float %128)
  store float %129, ptr %13, align 16, !tbaa !50
  %130 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 13
  %131 = load float, ptr %130, align 4, !tbaa !59
  %132 = load float, ptr %100, align 4, !tbaa !50
  %133 = call float @llvm.fmuladd.f32(float %132, float %122, float 1.000000e+00)
  %134 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 15
  %135 = load float, ptr %134, align 4, !tbaa !60
  %136 = call float @llvm.fmuladd.f32(float %131, float %133, float %135)
  store float %136, ptr %100, align 4, !tbaa !50
  %137 = load float, ptr %103, align 8, !tbaa !50
  %138 = fmul float %122, %137
  %139 = fmul float %138, 0x41E0000000000000
  store float %139, ptr %103, align 8, !tbaa !50
  %140 = load float, ptr %117, align 4, !tbaa !50
  %141 = fdiv float 1.000000e+00, %140
  %142 = load float, ptr %107, align 16, !tbaa !50
  %143 = call float @llvm.fmuladd.f32(float %142, float %141, float 1.000000e+00)
  %144 = call float @llvm.fmuladd.f32(float %124, float %143, float %128)
  store float %144, ptr %107, align 16, !tbaa !50
  %145 = load float, ptr %111, align 4, !tbaa !50
  %146 = call float @llvm.fmuladd.f32(float %145, float %141, float 1.000000e+00)
  %147 = call float @llvm.fmuladd.f32(float %131, float %146, float %135)
  store float %147, ptr %111, align 4, !tbaa !50
  %148 = load float, ptr %114, align 8, !tbaa !50
  %149 = fmul float %141, %148
  %150 = fmul float %149, 0x41E0000000000000
  store float %150, ptr %114, align 8, !tbaa !50
  %151 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %152 = load ptr, ptr %151, align 8, !tbaa !62
  call void %152(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %107) #14
  br label %153

153:                                              ; preds = %96, %120, %93
  %154 = and i32 %3, 4
  %155 = icmp eq i32 %154, 0
  br i1 %16, label %274, label %156

156:                                              ; preds = %153
  br i1 %155, label %214, label %157

157:                                              ; preds = %156
  %158 = load float, ptr %6, align 4, !tbaa !50
  store float %158, ptr %13, align 16, !tbaa !50
  %159 = getelementptr inbounds float, ptr %6, i64 1
  %160 = load float, ptr %159, align 4, !tbaa !50
  %161 = getelementptr inbounds float, ptr %13, i64 1
  store float %160, ptr %161, align 4, !tbaa !50
  %162 = getelementptr inbounds float, ptr %6, i64 2
  %163 = load float, ptr %162, align 4, !tbaa !50
  %164 = getelementptr inbounds float, ptr %13, i64 2
  store float %163, ptr %164, align 8, !tbaa !50
  %165 = getelementptr inbounds float, ptr %6, i64 3
  %166 = load float, ptr %165, align 4, !tbaa !50
  %167 = getelementptr inbounds float, ptr %13, i64 3
  store float %166, ptr %167, align 4, !tbaa !50
  %168 = getelementptr inbounds float, ptr %13, i64 4
  %169 = load float, ptr %7, align 4, !tbaa !50
  store float %169, ptr %168, align 16, !tbaa !50
  %170 = getelementptr inbounds float, ptr %7, i64 1
  %171 = load float, ptr %170, align 4, !tbaa !50
  %172 = getelementptr inbounds float, ptr %13, i64 5
  store float %171, ptr %172, align 4, !tbaa !50
  %173 = getelementptr inbounds float, ptr %7, i64 2
  %174 = load float, ptr %173, align 4, !tbaa !50
  %175 = getelementptr inbounds float, ptr %13, i64 6
  store float %174, ptr %175, align 8, !tbaa !50
  %176 = getelementptr inbounds float, ptr %7, i64 3
  %177 = load float, ptr %176, align 4, !tbaa !50
  %178 = getelementptr inbounds float, ptr %13, i64 7
  store float %177, ptr %178, align 4, !tbaa !50
  %179 = call fastcc i32 @clipline(ptr noundef nonnull %13, ptr noundef nonnull %168), !range !61
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %214, label %181

181:                                              ; preds = %157
  %182 = load float, ptr %167, align 4, !tbaa !50
  %183 = fdiv float 1.000000e+00, %182
  %184 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 12
  %185 = load float, ptr %184, align 8, !tbaa !57
  %186 = load float, ptr %13, align 16, !tbaa !50
  %187 = call float @llvm.fmuladd.f32(float %186, float %183, float 1.000000e+00)
  %188 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 14
  %189 = load float, ptr %188, align 8, !tbaa !58
  %190 = call float @llvm.fmuladd.f32(float %185, float %187, float %189)
  store float %190, ptr %13, align 16, !tbaa !50
  %191 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 13
  %192 = load float, ptr %191, align 4, !tbaa !59
  %193 = load float, ptr %161, align 4, !tbaa !50
  %194 = call float @llvm.fmuladd.f32(float %193, float %183, float 1.000000e+00)
  %195 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 15
  %196 = load float, ptr %195, align 4, !tbaa !60
  %197 = call float @llvm.fmuladd.f32(float %192, float %194, float %196)
  store float %197, ptr %161, align 4, !tbaa !50
  %198 = load float, ptr %164, align 8, !tbaa !50
  %199 = fmul float %183, %198
  %200 = fmul float %199, 0x41E0000000000000
  store float %200, ptr %164, align 8, !tbaa !50
  %201 = load float, ptr %178, align 4, !tbaa !50
  %202 = fdiv float 1.000000e+00, %201
  %203 = load float, ptr %168, align 16, !tbaa !50
  %204 = call float @llvm.fmuladd.f32(float %203, float %202, float 1.000000e+00)
  %205 = call float @llvm.fmuladd.f32(float %185, float %204, float %189)
  store float %205, ptr %168, align 16, !tbaa !50
  %206 = load float, ptr %172, align 4, !tbaa !50
  %207 = call float @llvm.fmuladd.f32(float %206, float %202, float 1.000000e+00)
  %208 = call float @llvm.fmuladd.f32(float %192, float %207, float %196)
  store float %208, ptr %172, align 4, !tbaa !50
  %209 = load float, ptr %175, align 8, !tbaa !50
  %210 = fmul float %202, %209
  %211 = fmul float %210, 0x41E0000000000000
  store float %211, ptr %175, align 8, !tbaa !50
  %212 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %213 = load ptr, ptr %212, align 8, !tbaa !62
  call void %213(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %168) #14
  br label %214

214:                                              ; preds = %157, %181, %156
  %215 = and i32 %3, 8
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %436, label %217

217:                                              ; preds = %214
  %218 = load float, ptr %7, align 4, !tbaa !50
  store float %218, ptr %13, align 16, !tbaa !50
  %219 = getelementptr inbounds float, ptr %7, i64 1
  %220 = load float, ptr %219, align 4, !tbaa !50
  %221 = getelementptr inbounds float, ptr %13, i64 1
  store float %220, ptr %221, align 4, !tbaa !50
  %222 = getelementptr inbounds float, ptr %7, i64 2
  %223 = load float, ptr %222, align 4, !tbaa !50
  %224 = getelementptr inbounds float, ptr %13, i64 2
  store float %223, ptr %224, align 8, !tbaa !50
  %225 = getelementptr inbounds float, ptr %7, i64 3
  %226 = load float, ptr %225, align 4, !tbaa !50
  %227 = getelementptr inbounds float, ptr %13, i64 3
  store float %226, ptr %227, align 4, !tbaa !50
  %228 = getelementptr inbounds float, ptr %13, i64 4
  %229 = load float, ptr %4, align 4, !tbaa !50
  store float %229, ptr %228, align 16, !tbaa !50
  %230 = getelementptr inbounds float, ptr %4, i64 1
  %231 = load float, ptr %230, align 4, !tbaa !50
  %232 = getelementptr inbounds float, ptr %13, i64 5
  store float %231, ptr %232, align 4, !tbaa !50
  %233 = getelementptr inbounds float, ptr %4, i64 2
  %234 = load float, ptr %233, align 4, !tbaa !50
  %235 = getelementptr inbounds float, ptr %13, i64 6
  store float %234, ptr %235, align 8, !tbaa !50
  %236 = getelementptr inbounds float, ptr %4, i64 3
  %237 = load float, ptr %236, align 4, !tbaa !50
  %238 = getelementptr inbounds float, ptr %13, i64 7
  store float %237, ptr %238, align 4, !tbaa !50
  %239 = call fastcc i32 @clipline(ptr noundef nonnull %13, ptr noundef nonnull %228), !range !61
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %436, label %241

241:                                              ; preds = %217
  %242 = load float, ptr %227, align 4, !tbaa !50
  %243 = fdiv float 1.000000e+00, %242
  %244 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 12
  %245 = load float, ptr %244, align 8, !tbaa !57
  %246 = load float, ptr %13, align 16, !tbaa !50
  %247 = call float @llvm.fmuladd.f32(float %246, float %243, float 1.000000e+00)
  %248 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 14
  %249 = load float, ptr %248, align 8, !tbaa !58
  %250 = call float @llvm.fmuladd.f32(float %245, float %247, float %249)
  store float %250, ptr %13, align 16, !tbaa !50
  %251 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 13
  %252 = load float, ptr %251, align 4, !tbaa !59
  %253 = load float, ptr %221, align 4, !tbaa !50
  %254 = call float @llvm.fmuladd.f32(float %253, float %243, float 1.000000e+00)
  %255 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 15
  %256 = load float, ptr %255, align 4, !tbaa !60
  %257 = call float @llvm.fmuladd.f32(float %252, float %254, float %256)
  store float %257, ptr %221, align 4, !tbaa !50
  %258 = load float, ptr %224, align 8, !tbaa !50
  %259 = fmul float %243, %258
  %260 = fmul float %259, 0x41E0000000000000
  store float %260, ptr %224, align 8, !tbaa !50
  %261 = load float, ptr %238, align 4, !tbaa !50
  %262 = fdiv float 1.000000e+00, %261
  %263 = load float, ptr %228, align 16, !tbaa !50
  %264 = call float @llvm.fmuladd.f32(float %263, float %262, float 1.000000e+00)
  %265 = call float @llvm.fmuladd.f32(float %245, float %264, float %249)
  store float %265, ptr %228, align 16, !tbaa !50
  %266 = load float, ptr %232, align 4, !tbaa !50
  %267 = call float @llvm.fmuladd.f32(float %266, float %262, float 1.000000e+00)
  %268 = call float @llvm.fmuladd.f32(float %252, float %267, float %256)
  store float %268, ptr %232, align 4, !tbaa !50
  %269 = load float, ptr %235, align 8, !tbaa !50
  %270 = fmul float %262, %269
  %271 = fmul float %270, 0x41E0000000000000
  store float %271, ptr %235, align 8, !tbaa !50
  %272 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %273 = load ptr, ptr %272, align 8, !tbaa !62
  call void %273(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %228) #14
  br label %436

274:                                              ; preds = %153
  br i1 %155, label %436, label %275

275:                                              ; preds = %274
  %276 = load float, ptr %6, align 4, !tbaa !50
  store float %276, ptr %13, align 16, !tbaa !50
  %277 = getelementptr inbounds float, ptr %6, i64 1
  %278 = load float, ptr %277, align 4, !tbaa !50
  %279 = getelementptr inbounds float, ptr %13, i64 1
  store float %278, ptr %279, align 4, !tbaa !50
  %280 = getelementptr inbounds float, ptr %6, i64 2
  %281 = load float, ptr %280, align 4, !tbaa !50
  %282 = getelementptr inbounds float, ptr %13, i64 2
  store float %281, ptr %282, align 8, !tbaa !50
  %283 = getelementptr inbounds float, ptr %6, i64 3
  %284 = load float, ptr %283, align 4, !tbaa !50
  %285 = getelementptr inbounds float, ptr %13, i64 3
  store float %284, ptr %285, align 4, !tbaa !50
  %286 = getelementptr inbounds float, ptr %13, i64 4
  %287 = load float, ptr %4, align 4, !tbaa !50
  store float %287, ptr %286, align 16, !tbaa !50
  %288 = getelementptr inbounds float, ptr %4, i64 1
  %289 = load float, ptr %288, align 4, !tbaa !50
  %290 = getelementptr inbounds float, ptr %13, i64 5
  store float %289, ptr %290, align 4, !tbaa !50
  %291 = getelementptr inbounds float, ptr %4, i64 2
  %292 = load float, ptr %291, align 4, !tbaa !50
  %293 = getelementptr inbounds float, ptr %13, i64 6
  store float %292, ptr %293, align 8, !tbaa !50
  %294 = getelementptr inbounds float, ptr %4, i64 3
  %295 = load float, ptr %294, align 4, !tbaa !50
  %296 = getelementptr inbounds float, ptr %13, i64 7
  store float %295, ptr %296, align 4, !tbaa !50
  %297 = call fastcc i32 @clipline(ptr noundef nonnull %13, ptr noundef nonnull %286), !range !61
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %436, label %299

299:                                              ; preds = %275
  %300 = load float, ptr %285, align 4, !tbaa !50
  %301 = fdiv float 1.000000e+00, %300
  %302 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 12
  %303 = load float, ptr %302, align 8, !tbaa !57
  %304 = load float, ptr %13, align 16, !tbaa !50
  %305 = call float @llvm.fmuladd.f32(float %304, float %301, float 1.000000e+00)
  %306 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 14
  %307 = load float, ptr %306, align 8, !tbaa !58
  %308 = call float @llvm.fmuladd.f32(float %303, float %305, float %307)
  store float %308, ptr %13, align 16, !tbaa !50
  %309 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 13
  %310 = load float, ptr %309, align 4, !tbaa !59
  %311 = load float, ptr %279, align 4, !tbaa !50
  %312 = call float @llvm.fmuladd.f32(float %311, float %301, float 1.000000e+00)
  %313 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 15
  %314 = load float, ptr %313, align 4, !tbaa !60
  %315 = call float @llvm.fmuladd.f32(float %310, float %312, float %314)
  store float %315, ptr %279, align 4, !tbaa !50
  %316 = load float, ptr %282, align 8, !tbaa !50
  %317 = fmul float %301, %316
  %318 = fmul float %317, 0x41E0000000000000
  store float %318, ptr %282, align 8, !tbaa !50
  %319 = load float, ptr %296, align 4, !tbaa !50
  %320 = fdiv float 1.000000e+00, %319
  %321 = load float, ptr %286, align 16, !tbaa !50
  %322 = call float @llvm.fmuladd.f32(float %321, float %320, float 1.000000e+00)
  %323 = call float @llvm.fmuladd.f32(float %303, float %322, float %307)
  store float %323, ptr %286, align 16, !tbaa !50
  %324 = load float, ptr %290, align 4, !tbaa !50
  %325 = call float @llvm.fmuladd.f32(float %324, float %320, float 1.000000e+00)
  %326 = call float @llvm.fmuladd.f32(float %310, float %325, float %314)
  store float %326, ptr %290, align 4, !tbaa !50
  %327 = load float, ptr %293, align 8, !tbaa !50
  %328 = fmul float %320, %327
  %329 = fmul float %328, 0x41E0000000000000
  store float %329, ptr %293, align 8, !tbaa !50
  %330 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %331 = load ptr, ptr %330, align 8, !tbaa !62
  call void %331(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %286) #14
  br label %436

332:                                              ; preds = %27
  %333 = getelementptr inbounds float, ptr %4, i64 3
  %334 = load float, ptr %333, align 4, !tbaa !50
  %335 = fdiv float 1.000000e+00, %334
  %336 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 12
  %337 = load float, ptr %336, align 8, !tbaa !57
  %338 = load float, ptr %4, align 4, !tbaa !50
  %339 = tail call float @llvm.fmuladd.f32(float %338, float %335, float 1.000000e+00)
  %340 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 14
  %341 = load float, ptr %340, align 8, !tbaa !58
  %342 = tail call float @llvm.fmuladd.f32(float %337, float %339, float %341)
  store float %342, ptr %13, align 16, !tbaa !50
  %343 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 13
  %344 = load float, ptr %343, align 4, !tbaa !59
  %345 = getelementptr inbounds float, ptr %4, i64 1
  %346 = load float, ptr %345, align 4, !tbaa !50
  %347 = tail call float @llvm.fmuladd.f32(float %346, float %335, float 1.000000e+00)
  %348 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 15
  %349 = load float, ptr %348, align 4, !tbaa !60
  %350 = tail call float @llvm.fmuladd.f32(float %344, float %347, float %349)
  %351 = getelementptr inbounds float, ptr %13, i64 1
  store float %350, ptr %351, align 4, !tbaa !50
  %352 = getelementptr inbounds float, ptr %4, i64 2
  %353 = load float, ptr %352, align 4, !tbaa !50
  %354 = fmul float %335, %353
  %355 = fmul float %354, 0x41E0000000000000
  %356 = getelementptr inbounds float, ptr %13, i64 2
  store float %355, ptr %356, align 8, !tbaa !50
  %357 = getelementptr inbounds float, ptr %13, i64 4
  %358 = getelementptr inbounds float, ptr %5, i64 3
  %359 = load float, ptr %358, align 4, !tbaa !50
  %360 = fdiv float 1.000000e+00, %359
  %361 = load float, ptr %5, align 4, !tbaa !50
  %362 = tail call float @llvm.fmuladd.f32(float %361, float %360, float 1.000000e+00)
  %363 = tail call float @llvm.fmuladd.f32(float %337, float %362, float %341)
  store float %363, ptr %357, align 16, !tbaa !50
  %364 = getelementptr inbounds float, ptr %5, i64 1
  %365 = load float, ptr %364, align 4, !tbaa !50
  %366 = tail call float @llvm.fmuladd.f32(float %365, float %360, float 1.000000e+00)
  %367 = tail call float @llvm.fmuladd.f32(float %344, float %366, float %349)
  %368 = getelementptr inbounds float, ptr %13, i64 5
  store float %367, ptr %368, align 4, !tbaa !50
  %369 = getelementptr inbounds float, ptr %5, i64 2
  %370 = load float, ptr %369, align 4, !tbaa !50
  %371 = fmul float %360, %370
  %372 = fmul float %371, 0x41E0000000000000
  %373 = getelementptr inbounds float, ptr %13, i64 6
  store float %372, ptr %373, align 8, !tbaa !50
  %374 = getelementptr inbounds float, ptr %13, i64 8
  %375 = getelementptr inbounds float, ptr %6, i64 3
  %376 = load float, ptr %375, align 4, !tbaa !50
  %377 = fdiv float 1.000000e+00, %376
  %378 = load float, ptr %6, align 4, !tbaa !50
  %379 = tail call float @llvm.fmuladd.f32(float %378, float %377, float 1.000000e+00)
  %380 = tail call float @llvm.fmuladd.f32(float %337, float %379, float %341)
  store float %380, ptr %374, align 16, !tbaa !50
  %381 = getelementptr inbounds float, ptr %6, i64 1
  %382 = load float, ptr %381, align 4, !tbaa !50
  %383 = tail call float @llvm.fmuladd.f32(float %382, float %377, float 1.000000e+00)
  %384 = tail call float @llvm.fmuladd.f32(float %344, float %383, float %349)
  %385 = getelementptr inbounds float, ptr %13, i64 9
  store float %384, ptr %385, align 4, !tbaa !50
  %386 = getelementptr inbounds float, ptr %6, i64 2
  %387 = load float, ptr %386, align 4, !tbaa !50
  %388 = fmul float %377, %387
  %389 = fmul float %388, 0x41E0000000000000
  %390 = getelementptr inbounds float, ptr %13, i64 10
  store float %389, ptr %390, align 8, !tbaa !50
  br i1 %16, label %417, label %391

391:                                              ; preds = %332
  %392 = getelementptr inbounds float, ptr %13, i64 12
  %393 = getelementptr inbounds float, ptr %7, i64 3
  %394 = load float, ptr %393, align 4, !tbaa !50
  %395 = fdiv float 1.000000e+00, %394
  %396 = load float, ptr %7, align 4, !tbaa !50
  %397 = tail call float @llvm.fmuladd.f32(float %396, float %395, float 1.000000e+00)
  %398 = tail call float @llvm.fmuladd.f32(float %337, float %397, float %341)
  store float %398, ptr %392, align 16, !tbaa !50
  %399 = getelementptr inbounds float, ptr %7, i64 1
  %400 = load float, ptr %399, align 4, !tbaa !50
  %401 = tail call float @llvm.fmuladd.f32(float %400, float %395, float 1.000000e+00)
  %402 = tail call float @llvm.fmuladd.f32(float %344, float %401, float %349)
  %403 = getelementptr inbounds float, ptr %13, i64 13
  store float %402, ptr %403, align 4, !tbaa !50
  %404 = getelementptr inbounds float, ptr %7, i64 2
  %405 = load float, ptr %404, align 4, !tbaa !50
  %406 = fmul float %395, %405
  %407 = fmul float %406, 0x41E0000000000000
  %408 = getelementptr inbounds float, ptr %13, i64 14
  store float %407, ptr %408, align 8, !tbaa !50
  %409 = and i32 %3, 4
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %414, label %411

411:                                              ; preds = %391
  %412 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %413 = load ptr, ptr %412, align 8, !tbaa !62
  call void %413(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %374, ptr noundef nonnull %392) #14
  br label %414

414:                                              ; preds = %411, %391
  %415 = and i32 %3, 8
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %424, label %420

417:                                              ; preds = %332
  %418 = and i32 %3, 4
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %424, label %420

420:                                              ; preds = %417, %414
  %421 = phi ptr [ %392, %414 ], [ %374, %417 ]
  %422 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %423 = load ptr, ptr %422, align 8, !tbaa !62
  call void %423(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %421, ptr noundef nonnull %13) #14
  br label %424

424:                                              ; preds = %420, %417, %414
  %425 = and i32 %3, 1
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %430, label %427

427:                                              ; preds = %424
  %428 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %429 = load ptr, ptr %428, align 8, !tbaa !62
  call void %429(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %357) #14
  br label %430

430:                                              ; preds = %427, %424
  %431 = and i32 %3, 2
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %436, label %433

433:                                              ; preds = %430
  %434 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %435 = load ptr, ptr %434, align 8, !tbaa !62
  call void %435(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %357, ptr noundef nonnull %374) #14
  br label %436

436:                                              ; preds = %430, %433, %217, %241, %214, %275, %299, %274, %31, %12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %13) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @clipline(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds float, ptr %1, i64 2
  %4 = load float, ptr %3, align 4, !tbaa !50
  %5 = getelementptr inbounds float, ptr %0, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !50
  %7 = fsub float %4, %6
  %8 = getelementptr inbounds float, ptr %1, i64 3
  %9 = load float, ptr %8, align 4, !tbaa !50
  %10 = getelementptr inbounds float, ptr %0, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !50
  %12 = fsub float %9, %11
  %13 = fneg float %12
  %14 = fsub float %13, %7
  %15 = fadd float %6, %11
  %16 = fcmp olt float %14, 0.000000e+00
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = fcmp olt float %15, %14
  br i1 %18, label %41, label %19

19:                                               ; preds = %17
  %20 = fcmp olt float %15, 0.000000e+00
  br i1 %20, label %21, label %41

21:                                               ; preds = %19
  %22 = fdiv float %15, %14
  %23 = fcmp ogt float %22, 1.000000e+00
  br i1 %23, label %41, label %24

24:                                               ; preds = %21
  %25 = fcmp ogt float %22, 0.000000e+00
  br i1 %25, label %26, label %41

26:                                               ; preds = %24
  br label %41

27:                                               ; preds = %2
  %28 = fcmp ogt float %14, 0.000000e+00
  %29 = fcmp olt float %15, 0.000000e+00
  br i1 %28, label %30, label %39

30:                                               ; preds = %27
  br i1 %29, label %41, label %31

31:                                               ; preds = %30
  %32 = fcmp olt float %15, %14
  br i1 %32, label %33, label %41

33:                                               ; preds = %31
  %34 = fdiv float %15, %14
  %35 = fcmp olt float %34, 0.000000e+00
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = fcmp olt float %34, 1.000000e+00
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  br label %41

39:                                               ; preds = %27
  br i1 %29, label %41, label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %19, %24, %26, %31, %36, %38, %17, %21, %30, %33, %39, %40
  %42 = phi float [ 0.000000e+00, %17 ], [ 0.000000e+00, %21 ], [ 0.000000e+00, %30 ], [ 0.000000e+00, %33 ], [ 0.000000e+00, %39 ], [ %22, %26 ], [ 0.000000e+00, %24 ], [ 0.000000e+00, %19 ], [ 0.000000e+00, %38 ], [ 0.000000e+00, %36 ], [ 0.000000e+00, %31 ], [ 0.000000e+00, %40 ]
  %43 = phi float [ 1.000000e+00, %17 ], [ 1.000000e+00, %21 ], [ 1.000000e+00, %30 ], [ 1.000000e+00, %33 ], [ 1.000000e+00, %39 ], [ 1.000000e+00, %26 ], [ 1.000000e+00, %24 ], [ 1.000000e+00, %19 ], [ %34, %38 ], [ 1.000000e+00, %36 ], [ 1.000000e+00, %31 ], [ 1.000000e+00, %40 ]
  %44 = phi i1 [ true, %17 ], [ true, %21 ], [ true, %30 ], [ true, %33 ], [ true, %39 ], [ false, %26 ], [ false, %24 ], [ false, %19 ], [ false, %38 ], [ false, %36 ], [ false, %31 ], [ false, %40 ]
  br i1 %44, label %237, label %45

45:                                               ; preds = %41
  %46 = fsub float %7, %12
  %47 = fsub float %11, %6
  %48 = fcmp olt float %46, 0.000000e+00
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = fcmp olt float %47, %46
  br i1 %50, label %73, label %51

51:                                               ; preds = %49
  %52 = fcmp olt float %47, 0.000000e+00
  br i1 %52, label %53, label %73

53:                                               ; preds = %51
  %54 = fdiv float %47, %46
  %55 = fcmp ogt float %54, %43
  br i1 %55, label %73, label %56

56:                                               ; preds = %53
  %57 = fcmp ogt float %54, %42
  br i1 %57, label %58, label %73

58:                                               ; preds = %56
  br label %73

59:                                               ; preds = %45
  %60 = fcmp ogt float %46, 0.000000e+00
  %61 = fcmp olt float %47, 0.000000e+00
  br i1 %60, label %62, label %71

62:                                               ; preds = %59
  br i1 %61, label %73, label %63

63:                                               ; preds = %62
  %64 = fcmp olt float %47, %46
  br i1 %64, label %65, label %73

65:                                               ; preds = %63
  %66 = fdiv float %47, %46
  %67 = fcmp olt float %66, %42
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = fcmp olt float %66, %43
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  br label %73

71:                                               ; preds = %59
  br i1 %61, label %73, label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %51, %56, %58, %63, %68, %70, %49, %53, %62, %65, %71, %72
  %74 = phi float [ %42, %49 ], [ %42, %53 ], [ %42, %62 ], [ %42, %65 ], [ %42, %71 ], [ %54, %58 ], [ %42, %56 ], [ %42, %51 ], [ %42, %70 ], [ %42, %68 ], [ %42, %63 ], [ %42, %72 ]
  %75 = phi float [ %43, %49 ], [ %43, %53 ], [ %43, %62 ], [ %43, %65 ], [ %43, %71 ], [ %43, %58 ], [ %43, %56 ], [ %43, %51 ], [ %66, %70 ], [ %43, %68 ], [ %43, %63 ], [ %43, %72 ]
  %76 = phi i1 [ true, %49 ], [ true, %53 ], [ true, %62 ], [ true, %65 ], [ true, %71 ], [ false, %58 ], [ false, %56 ], [ false, %51 ], [ false, %70 ], [ false, %68 ], [ false, %63 ], [ false, %72 ]
  br i1 %76, label %237, label %77

77:                                               ; preds = %73
  %78 = load float, ptr %1, align 4, !tbaa !50
  %79 = load float, ptr %0, align 4, !tbaa !50
  %80 = fsub float %78, %79
  %81 = fmul float %12, 0x3FF028F5C0000000
  %82 = fmul float %11, 0x3FF028F5C0000000
  %83 = fneg float %81
  %84 = fsub float %83, %80
  %85 = fadd float %82, %79
  %86 = fcmp olt float %84, 0.000000e+00
  br i1 %86, label %87, label %97

87:                                               ; preds = %77
  %88 = fcmp olt float %85, %84
  br i1 %88, label %111, label %89

89:                                               ; preds = %87
  %90 = fcmp olt float %85, 0.000000e+00
  br i1 %90, label %91, label %111

91:                                               ; preds = %89
  %92 = fdiv float %85, %84
  %93 = fcmp ogt float %92, %75
  br i1 %93, label %111, label %94

94:                                               ; preds = %91
  %95 = fcmp ogt float %92, %74
  br i1 %95, label %96, label %111

96:                                               ; preds = %94
  br label %111

97:                                               ; preds = %77
  %98 = fcmp ogt float %84, 0.000000e+00
  %99 = fcmp olt float %85, 0.000000e+00
  br i1 %98, label %100, label %109

100:                                              ; preds = %97
  br i1 %99, label %111, label %101

101:                                              ; preds = %100
  %102 = fcmp olt float %85, %84
  br i1 %102, label %103, label %111

103:                                              ; preds = %101
  %104 = fdiv float %85, %84
  %105 = fcmp olt float %104, %74
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = fcmp olt float %104, %75
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  br label %111

109:                                              ; preds = %97
  br i1 %99, label %111, label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %89, %94, %96, %101, %106, %108, %87, %91, %100, %103, %109, %110
  %112 = phi float [ %74, %87 ], [ %74, %91 ], [ %74, %100 ], [ %74, %103 ], [ %74, %109 ], [ %92, %96 ], [ %74, %94 ], [ %74, %89 ], [ %74, %108 ], [ %74, %106 ], [ %74, %101 ], [ %74, %110 ]
  %113 = phi float [ %75, %87 ], [ %75, %91 ], [ %75, %100 ], [ %75, %103 ], [ %75, %109 ], [ %75, %96 ], [ %75, %94 ], [ %75, %89 ], [ %104, %108 ], [ %75, %106 ], [ %75, %101 ], [ %75, %110 ]
  %114 = phi i1 [ true, %87 ], [ true, %91 ], [ true, %100 ], [ true, %103 ], [ true, %109 ], [ false, %96 ], [ false, %94 ], [ false, %89 ], [ false, %108 ], [ false, %106 ], [ false, %101 ], [ false, %110 ]
  br i1 %114, label %237, label %115

115:                                              ; preds = %111
  %116 = fsub float %80, %81
  %117 = fsub float %82, %79
  %118 = fcmp olt float %116, 0.000000e+00
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = fcmp olt float %117, %116
  br i1 %120, label %143, label %121

121:                                              ; preds = %119
  %122 = fcmp olt float %117, 0.000000e+00
  br i1 %122, label %123, label %143

123:                                              ; preds = %121
  %124 = fdiv float %117, %116
  %125 = fcmp ogt float %124, %113
  br i1 %125, label %143, label %126

126:                                              ; preds = %123
  %127 = fcmp ogt float %124, %112
  br i1 %127, label %128, label %143

128:                                              ; preds = %126
  br label %143

129:                                              ; preds = %115
  %130 = fcmp ogt float %116, 0.000000e+00
  %131 = fcmp olt float %117, 0.000000e+00
  br i1 %130, label %132, label %141

132:                                              ; preds = %129
  br i1 %131, label %143, label %133

133:                                              ; preds = %132
  %134 = fcmp olt float %117, %116
  br i1 %134, label %135, label %143

135:                                              ; preds = %133
  %136 = fdiv float %117, %116
  %137 = fcmp olt float %136, %112
  br i1 %137, label %143, label %138

138:                                              ; preds = %135
  %139 = fcmp olt float %136, %113
  br i1 %139, label %140, label %143

140:                                              ; preds = %138
  br label %143

141:                                              ; preds = %129
  br i1 %131, label %143, label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %121, %126, %128, %133, %138, %140, %119, %123, %132, %135, %141, %142
  %144 = phi float [ %112, %119 ], [ %112, %123 ], [ %112, %132 ], [ %112, %135 ], [ %112, %141 ], [ %124, %128 ], [ %112, %126 ], [ %112, %121 ], [ %112, %140 ], [ %112, %138 ], [ %112, %133 ], [ %112, %142 ]
  %145 = phi float [ %113, %119 ], [ %113, %123 ], [ %113, %132 ], [ %113, %135 ], [ %113, %141 ], [ %113, %128 ], [ %113, %126 ], [ %113, %121 ], [ %136, %140 ], [ %113, %138 ], [ %113, %133 ], [ %113, %142 ]
  %146 = phi i1 [ true, %119 ], [ true, %123 ], [ true, %132 ], [ true, %135 ], [ true, %141 ], [ false, %128 ], [ false, %126 ], [ false, %121 ], [ false, %140 ], [ false, %138 ], [ false, %133 ], [ false, %142 ]
  br i1 %146, label %237, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds float, ptr %1, i64 1
  %149 = load float, ptr %148, align 4, !tbaa !50
  %150 = getelementptr inbounds float, ptr %0, i64 1
  %151 = load float, ptr %150, align 4, !tbaa !50
  %152 = fsub float %149, %151
  %153 = fsub float %83, %152
  %154 = fadd float %82, %151
  %155 = fcmp olt float %153, 0.000000e+00
  br i1 %155, label %156, label %166

156:                                              ; preds = %147
  %157 = fcmp olt float %154, %153
  br i1 %157, label %180, label %158

158:                                              ; preds = %156
  %159 = fcmp olt float %154, 0.000000e+00
  br i1 %159, label %160, label %180

160:                                              ; preds = %158
  %161 = fdiv float %154, %153
  %162 = fcmp ogt float %161, %145
  br i1 %162, label %180, label %163

163:                                              ; preds = %160
  %164 = fcmp ogt float %161, %144
  br i1 %164, label %165, label %180

165:                                              ; preds = %163
  br label %180

166:                                              ; preds = %147
  %167 = fcmp ogt float %153, 0.000000e+00
  %168 = fcmp olt float %154, 0.000000e+00
  br i1 %167, label %169, label %178

169:                                              ; preds = %166
  br i1 %168, label %180, label %170

170:                                              ; preds = %169
  %171 = fcmp olt float %154, %153
  br i1 %171, label %172, label %180

172:                                              ; preds = %170
  %173 = fdiv float %154, %153
  %174 = fcmp olt float %173, %144
  br i1 %174, label %180, label %175

175:                                              ; preds = %172
  %176 = fcmp olt float %173, %145
  br i1 %176, label %177, label %180

177:                                              ; preds = %175
  br label %180

178:                                              ; preds = %166
  br i1 %168, label %180, label %179

179:                                              ; preds = %178
  br label %180

180:                                              ; preds = %158, %163, %165, %170, %175, %177, %156, %160, %169, %172, %178, %179
  %181 = phi float [ %144, %156 ], [ %144, %160 ], [ %144, %169 ], [ %144, %172 ], [ %144, %178 ], [ %161, %165 ], [ %144, %163 ], [ %144, %158 ], [ %144, %177 ], [ %144, %175 ], [ %144, %170 ], [ %144, %179 ]
  %182 = phi float [ %145, %156 ], [ %145, %160 ], [ %145, %169 ], [ %145, %172 ], [ %145, %178 ], [ %145, %165 ], [ %145, %163 ], [ %145, %158 ], [ %173, %177 ], [ %145, %175 ], [ %145, %170 ], [ %145, %179 ]
  %183 = phi i1 [ true, %156 ], [ true, %160 ], [ true, %169 ], [ true, %172 ], [ true, %178 ], [ false, %165 ], [ false, %163 ], [ false, %158 ], [ false, %177 ], [ false, %175 ], [ false, %170 ], [ false, %179 ]
  br i1 %183, label %237, label %184

184:                                              ; preds = %180
  %185 = fsub float %152, %81
  %186 = fsub float %82, %151
  %187 = fcmp olt float %185, 0.000000e+00
  br i1 %187, label %188, label %198

188:                                              ; preds = %184
  %189 = fcmp olt float %186, %185
  br i1 %189, label %212, label %190

190:                                              ; preds = %188
  %191 = fcmp olt float %186, 0.000000e+00
  br i1 %191, label %192, label %212

192:                                              ; preds = %190
  %193 = fdiv float %186, %185
  %194 = fcmp ogt float %193, %182
  br i1 %194, label %212, label %195

195:                                              ; preds = %192
  %196 = fcmp ogt float %193, %181
  br i1 %196, label %197, label %212

197:                                              ; preds = %195
  br label %212

198:                                              ; preds = %184
  %199 = fcmp ogt float %185, 0.000000e+00
  %200 = fcmp olt float %186, 0.000000e+00
  br i1 %199, label %201, label %210

201:                                              ; preds = %198
  br i1 %200, label %212, label %202

202:                                              ; preds = %201
  %203 = fcmp olt float %186, %185
  br i1 %203, label %204, label %212

204:                                              ; preds = %202
  %205 = fdiv float %186, %185
  %206 = fcmp olt float %205, %181
  br i1 %206, label %212, label %207

207:                                              ; preds = %204
  %208 = fcmp olt float %205, %182
  br i1 %208, label %209, label %212

209:                                              ; preds = %207
  br label %212

210:                                              ; preds = %198
  br i1 %200, label %212, label %211

211:                                              ; preds = %210
  br label %212

212:                                              ; preds = %190, %195, %197, %202, %207, %209, %188, %192, %201, %204, %210, %211
  %213 = phi float [ %181, %188 ], [ %181, %192 ], [ %181, %201 ], [ %181, %204 ], [ %181, %210 ], [ %193, %197 ], [ %181, %195 ], [ %181, %190 ], [ %181, %209 ], [ %181, %207 ], [ %181, %202 ], [ %181, %211 ]
  %214 = phi float [ %182, %188 ], [ %182, %192 ], [ %182, %201 ], [ %182, %204 ], [ %182, %210 ], [ %182, %197 ], [ %182, %195 ], [ %182, %190 ], [ %205, %209 ], [ %182, %207 ], [ %182, %202 ], [ %182, %211 ]
  %215 = phi i1 [ true, %188 ], [ true, %192 ], [ true, %201 ], [ true, %204 ], [ true, %210 ], [ false, %197 ], [ false, %195 ], [ false, %190 ], [ false, %209 ], [ false, %207 ], [ false, %202 ], [ false, %211 ]
  br i1 %215, label %237, label %216

216:                                              ; preds = %212
  %217 = fcmp olt float %214, 1.000000e+00
  br i1 %217, label %218, label %226

218:                                              ; preds = %216
  %219 = tail call float @llvm.fmuladd.f32(float %214, float %80, float %79)
  store float %219, ptr %1, align 4, !tbaa !50
  %220 = load float, ptr %150, align 4, !tbaa !50
  %221 = tail call float @llvm.fmuladd.f32(float %214, float %152, float %220)
  store float %221, ptr %148, align 4, !tbaa !50
  %222 = load float, ptr %5, align 4, !tbaa !50
  %223 = tail call float @llvm.fmuladd.f32(float %214, float %81, float %222)
  store float %223, ptr %3, align 4, !tbaa !50
  %224 = load float, ptr %10, align 4, !tbaa !50
  %225 = tail call float @llvm.fmuladd.f32(float %214, float %12, float %224)
  store float %225, ptr %8, align 4, !tbaa !50
  br label %226

226:                                              ; preds = %218, %216
  %227 = fcmp ogt float %213, 0.000000e+00
  br i1 %227, label %228, label %237

228:                                              ; preds = %226
  %229 = load float, ptr %0, align 4, !tbaa !50
  %230 = tail call float @llvm.fmuladd.f32(float %213, float %80, float %229)
  store float %230, ptr %0, align 4, !tbaa !50
  %231 = load float, ptr %150, align 4, !tbaa !50
  %232 = tail call float @llvm.fmuladd.f32(float %213, float %152, float %231)
  store float %232, ptr %150, align 4, !tbaa !50
  %233 = load float, ptr %5, align 4, !tbaa !50
  %234 = tail call float @llvm.fmuladd.f32(float %213, float %81, float %233)
  store float %234, ptr %5, align 4, !tbaa !50
  %235 = load float, ptr %10, align 4, !tbaa !50
  %236 = tail call float @llvm.fmuladd.f32(float %213, float %12, float %235)
  store float %236, ptr %10, align 4, !tbaa !50
  br label %237

237:                                              ; preds = %41, %111, %180, %212, %143, %73, %226, %228
  %238 = phi i32 [ 1, %228 ], [ 1, %226 ], [ 0, %73 ], [ 0, %143 ], [ 0, %212 ], [ 0, %180 ], [ 0, %111 ], [ 0, %41 ]
  ret i32 %238
}

; Function Attrs: nounwind uwtable
define dso_local void @zbufsinglewire(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  %8 = getelementptr inbounds float, ptr %3, i64 3
  %9 = load float, ptr %8, align 4, !tbaa !50
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = fadd float %10, 0x3E80000000000000
  %12 = load float, ptr %3, align 4, !tbaa !50
  %13 = fneg float %11
  %14 = fcmp olt float %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = fcmp ogt float %12, %11
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17, %15, %5
  %19 = phi i16 [ 2, %17 ], [ 0, %15 ], [ 1, %5 ]
  %20 = getelementptr inbounds float, ptr %3, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !50
  %22 = fcmp ogt float %21, %11
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = or disjoint i16 %19, 4
  br label %29

25:                                               ; preds = %18
  %26 = fcmp olt float %21, %13
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = or disjoint i16 %19, 8
  br label %29

29:                                               ; preds = %27, %25, %23
  %30 = phi i16 [ %24, %23 ], [ %28, %27 ], [ %19, %25 ]
  %31 = getelementptr inbounds float, ptr %3, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !50
  %33 = fcmp olt float %32, %13
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = add nsw i16 %30, 16
  br label %40

36:                                               ; preds = %29
  %37 = fcmp ogt float %32, %11
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  %39 = add nsw i16 %30, 32
  br label %40

40:                                               ; preds = %34, %36, %38
  %41 = phi i16 [ %35, %34 ], [ %39, %38 ], [ %30, %36 ]
  %42 = zext nneg i16 %41 to i32
  %43 = getelementptr inbounds float, ptr %4, i64 3
  %44 = load float, ptr %43, align 4, !tbaa !50
  %45 = tail call float @llvm.fabs.f32(float %44)
  %46 = fadd float %45, 0x3E80000000000000
  %47 = load float, ptr %4, align 4, !tbaa !50
  %48 = fneg float %46
  %49 = fcmp olt float %47, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = fcmp ogt float %47, %46
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52, %50, %40
  %54 = phi i16 [ 2, %52 ], [ 0, %50 ], [ 1, %40 ]
  %55 = getelementptr inbounds float, ptr %4, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !50
  %57 = fcmp ogt float %56, %46
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = or disjoint i16 %54, 4
  br label %64

60:                                               ; preds = %53
  %61 = fcmp olt float %56, %48
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  %63 = or disjoint i16 %54, 8
  br label %64

64:                                               ; preds = %62, %60, %58
  %65 = phi i16 [ %59, %58 ], [ %63, %62 ], [ %54, %60 ]
  %66 = getelementptr inbounds float, ptr %4, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !50
  %68 = fcmp olt float %67, %48
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = add nsw i16 %65, 16
  br label %75

71:                                               ; preds = %64
  %72 = fcmp ogt float %67, %46
  br i1 %72, label %73, label %75

73:                                               ; preds = %71
  %74 = add nsw i16 %65, 32
  br label %75

75:                                               ; preds = %69, %71, %73
  %76 = phi i16 [ %70, %69 ], [ %74, %73 ], [ %65, %71 ]
  %77 = zext nneg i16 %76 to i32
  %78 = or i32 %77, %42
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %123, label %80

80:                                               ; preds = %75
  %81 = and i32 %77, %42
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %153

83:                                               ; preds = %80
  store float %12, ptr %6, align 16, !tbaa !50
  %84 = getelementptr inbounds float, ptr %6, i64 1
  store float %21, ptr %84, align 4, !tbaa !50
  %85 = getelementptr inbounds float, ptr %6, i64 2
  store float %32, ptr %85, align 8, !tbaa !50
  %86 = getelementptr inbounds float, ptr %6, i64 3
  store float %9, ptr %86, align 4, !tbaa !50
  store float %47, ptr %7, align 16, !tbaa !50
  %87 = getelementptr inbounds float, ptr %7, i64 1
  store float %56, ptr %87, align 4, !tbaa !50
  %88 = getelementptr inbounds float, ptr %7, i64 2
  store float %67, ptr %88, align 8, !tbaa !50
  %89 = getelementptr inbounds float, ptr %7, i64 3
  store float %44, ptr %89, align 4, !tbaa !50
  %90 = call fastcc i32 @clipline(ptr noundef nonnull %6, ptr noundef nonnull %7), !range !61
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %153, label %92

92:                                               ; preds = %83
  %93 = load float, ptr %86, align 4, !tbaa !50
  %94 = fdiv float 1.000000e+00, %93
  %95 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 12
  %96 = load float, ptr %95, align 8, !tbaa !57
  %97 = load float, ptr %6, align 16, !tbaa !50
  %98 = tail call float @llvm.fmuladd.f32(float %97, float %94, float 1.000000e+00)
  %99 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 14
  %100 = load float, ptr %99, align 8, !tbaa !58
  %101 = tail call float @llvm.fmuladd.f32(float %96, float %98, float %100)
  store float %101, ptr %6, align 16, !tbaa !50
  %102 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 13
  %103 = load float, ptr %102, align 4, !tbaa !59
  %104 = load float, ptr %84, align 4, !tbaa !50
  %105 = tail call float @llvm.fmuladd.f32(float %104, float %94, float 1.000000e+00)
  %106 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 15
  %107 = load float, ptr %106, align 4, !tbaa !60
  %108 = tail call float @llvm.fmuladd.f32(float %103, float %105, float %107)
  store float %108, ptr %84, align 4, !tbaa !50
  %109 = load float, ptr %85, align 8, !tbaa !50
  %110 = fmul float %94, %109
  %111 = fmul float %110, 0x41E0000000000000
  store float %111, ptr %85, align 8, !tbaa !50
  %112 = load float, ptr %89, align 4, !tbaa !50
  %113 = fdiv float 1.000000e+00, %112
  %114 = load float, ptr %7, align 16, !tbaa !50
  %115 = tail call float @llvm.fmuladd.f32(float %114, float %113, float 1.000000e+00)
  %116 = tail call float @llvm.fmuladd.f32(float %96, float %115, float %100)
  store float %116, ptr %7, align 16, !tbaa !50
  %117 = load float, ptr %87, align 4, !tbaa !50
  %118 = tail call float @llvm.fmuladd.f32(float %117, float %113, float 1.000000e+00)
  %119 = tail call float @llvm.fmuladd.f32(float %103, float %118, float %107)
  store float %119, ptr %87, align 4, !tbaa !50
  %120 = load float, ptr %88, align 8, !tbaa !50
  %121 = fmul float %113, %120
  %122 = fmul float %121, 0x41E0000000000000
  store float %122, ptr %88, align 8, !tbaa !50
  br label %150

123:                                              ; preds = %75
  %124 = fdiv float 1.000000e+00, %9
  %125 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 12
  %126 = load float, ptr %125, align 8, !tbaa !57
  %127 = tail call float @llvm.fmuladd.f32(float %12, float %124, float 1.000000e+00)
  %128 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 14
  %129 = load float, ptr %128, align 8, !tbaa !58
  %130 = tail call float @llvm.fmuladd.f32(float %126, float %127, float %129)
  store float %130, ptr %6, align 16, !tbaa !50
  %131 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 13
  %132 = load float, ptr %131, align 4, !tbaa !59
  %133 = tail call float @llvm.fmuladd.f32(float %21, float %124, float 1.000000e+00)
  %134 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 15
  %135 = load float, ptr %134, align 4, !tbaa !60
  %136 = tail call float @llvm.fmuladd.f32(float %132, float %133, float %135)
  %137 = getelementptr inbounds float, ptr %6, i64 1
  store float %136, ptr %137, align 4, !tbaa !50
  %138 = fmul float %124, %32
  %139 = fmul float %138, 0x41E0000000000000
  %140 = getelementptr inbounds float, ptr %6, i64 2
  store float %139, ptr %140, align 8, !tbaa !50
  %141 = fdiv float 1.000000e+00, %44
  %142 = tail call float @llvm.fmuladd.f32(float %47, float %141, float 1.000000e+00)
  %143 = tail call float @llvm.fmuladd.f32(float %126, float %142, float %129)
  store float %143, ptr %7, align 16, !tbaa !50
  %144 = tail call float @llvm.fmuladd.f32(float %56, float %141, float 1.000000e+00)
  %145 = tail call float @llvm.fmuladd.f32(float %132, float %144, float %135)
  %146 = getelementptr inbounds float, ptr %7, i64 1
  store float %145, ptr %146, align 4, !tbaa !50
  %147 = fmul float %141, %67
  %148 = fmul float %147, 0x41E0000000000000
  %149 = getelementptr inbounds float, ptr %7, i64 2
  store float %148, ptr %149, align 8, !tbaa !50
  br label %150

150:                                              ; preds = %123, %92
  %151 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %152 = load ptr, ptr %151, align 8, !tbaa !62
  call void %152(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  br label %153

153:                                              ; preds = %150, %80, %83
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zspan_scanconvert_strand(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = load i32, ptr %0, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = add nsw i32 %9, 1
  %11 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 4
  store i32 %10, ptr %11, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 2
  store i32 %10, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 5
  store i32 -1, ptr %13, align 4, !tbaa !65
  %14 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 3
  store i32 -1, ptr %14, align 4, !tbaa !66
  %15 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 8
  %16 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3)
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4)
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %2)
  %17 = load ptr, ptr %15, align 8, !tbaa !67
  %18 = icmp eq ptr %17, null
  br i1 %18, label %189, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = icmp eq ptr %21, null
  br i1 %22, label %189, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %12, align 8, !tbaa !64
  %25 = load i32, ptr %11, align 8, !tbaa !63
  %26 = tail call i32 @llvm.smax.i32(i32 %24, i32 %25)
  %27 = load i32, ptr %14, align 4, !tbaa !66
  %28 = load i32, ptr %13, align 4, !tbaa !65
  %29 = tail call i32 @llvm.smin.i32(i32 %27, i32 %28)
  %30 = icmp slt i32 %29, %26
  br i1 %30, label %189, label %31

31:                                               ; preds = %23
  %32 = load float, ptr %2, align 4, !tbaa !50
  %33 = load float, ptr %3, align 4, !tbaa !50
  %34 = fsub float %32, %33
  %35 = load float, ptr %4, align 4, !tbaa !50
  %36 = fsub float %33, %35
  %37 = getelementptr inbounds float, ptr %2, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !50
  %39 = getelementptr inbounds float, ptr %3, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !50
  %41 = fsub float %38, %40
  %42 = getelementptr inbounds float, ptr %4, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !50
  %44 = fsub float %40, %43
  %45 = fneg float %41
  %46 = fmul float %36, %45
  %47 = tail call float @llvm.fmuladd.f32(float %34, float %44, float %46)
  %48 = fcmp oeq float %47, 0.000000e+00
  br i1 %48, label %189, label %49

49:                                               ; preds = %31
  %50 = getelementptr inbounds float, ptr %2, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !50
  %52 = getelementptr inbounds float, ptr %3, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !50
  %54 = fsub float %51, %53
  %55 = getelementptr inbounds float, ptr %4, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !50
  %57 = fsub float %53, %56
  %58 = fneg float %34
  %59 = fmul float %57, %58
  %60 = tail call float @llvm.fmuladd.f32(float %54, float %36, float %59)
  %61 = fneg float %54
  %62 = fmul float %44, %61
  %63 = tail call float @llvm.fmuladd.f32(float %41, float %57, float %62)
  %64 = fpext float %63 to double
  %65 = fneg double %64
  %66 = fpext float %47 to double
  %67 = fdiv double %65, %66
  %68 = fptrunc double %67 to float
  %69 = fpext float %60 to double
  %70 = fneg double %69
  %71 = fdiv double %70, %66
  %72 = fptrunc double %71 to float
  %73 = fneg float %44
  %74 = tail call float @llvm.fmuladd.f32(float %41, float 0.000000e+00, float %73)
  %75 = fmul float %34, 0.000000e+00
  %76 = fsub float %36, %75
  %77 = fpext float %74 to double
  %78 = fneg double %77
  %79 = fdiv double %78, %66
  %80 = fptrunc double %79 to float
  %81 = fpext float %76 to double
  %82 = fneg double %81
  %83 = fdiv double %82, %66
  %84 = fptrunc double %83 to float
  %85 = fadd float %41, %44
  %86 = tail call float @llvm.fmuladd.f32(float %36, float -1.000000e+00, float %58)
  %87 = fpext float %85 to double
  %88 = fneg double %87
  %89 = fdiv double %88, %66
  %90 = fptrunc double %89 to float
  %91 = fpext float %86 to double
  %92 = fneg double %91
  %93 = fdiv double %92, %66
  %94 = fptrunc double %93 to float
  %95 = icmp slt i32 %29, %26
  br i1 %95, label %189, label %96

96:                                               ; preds = %49
  %97 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  %98 = load ptr, ptr %97, align 8, !tbaa !43
  %99 = add nsw i32 %29, %26
  %100 = sdiv i32 %99, 2
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, ptr %98, i64 %101
  %103 = load float, ptr %102, align 4, !tbaa !50
  %104 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  %105 = load ptr, ptr %104, align 8, !tbaa !44
  %106 = getelementptr inbounds float, ptr %105, i64 %101
  %107 = load float, ptr %106, align 4, !tbaa !50
  %108 = fcmp olt float %103, %107
  %109 = sext i32 %29 to i64
  %110 = getelementptr inbounds float, ptr %105, i64 %109
  %111 = getelementptr inbounds float, ptr %98, i64 %109
  %112 = select i1 %108, ptr %110, ptr %111
  %113 = select i1 %108, ptr %111, ptr %110
  %114 = sitofp i32 %29 to double
  %115 = fpext float %94 to double
  %116 = fmul float %38, %86
  %117 = tail call float @llvm.fmuladd.f32(float %85, float %32, float %116)
  %118 = fdiv float %117, %47
  %119 = fpext float %118 to double
  %120 = tail call double @llvm.fmuladd.f64(double %114, double %115, double %119)
  %121 = fptrunc double %120 to float
  %122 = fpext float %84 to double
  %123 = fmul float %38, %76
  %124 = tail call float @llvm.fmuladd.f32(float %74, float %32, float %123)
  %125 = fdiv float %124, %47
  %126 = fadd float %125, 1.000000e+00
  %127 = fpext float %126 to double
  %128 = tail call double @llvm.fmuladd.f64(double %114, double %122, double %127)
  %129 = fptrunc double %128 to float
  %130 = fpext float %72 to double
  %131 = fmul float %38, %60
  %132 = tail call float @llvm.fmuladd.f32(float %63, float %32, float %131)
  %133 = fdiv float %132, %47
  %134 = fadd float %51, %133
  %135 = fpext float %134 to double
  %136 = tail call double @llvm.fmuladd.f64(double %114, double %130, double %135)
  %137 = fptrunc double %136 to float
  %138 = add nsw i32 %7, -1
  %139 = fpext float %80 to double
  %140 = fpext float %90 to double
  %141 = fpext float %68 to double
  br label %142

142:                                              ; preds = %96, %181
  %143 = phi i32 [ %29, %96 ], [ %185, %181 ]
  %144 = phi ptr [ %112, %96 ], [ %187, %181 ]
  %145 = phi ptr [ %113, %96 ], [ %186, %181 ]
  %146 = phi float [ %137, %96 ], [ %184, %181 ]
  %147 = phi float [ %121, %96 ], [ %183, %181 ]
  %148 = phi float [ %129, %96 ], [ %182, %181 ]
  %149 = load float, ptr %145, align 4, !tbaa !50
  %150 = tail call float @llvm.floor.f32(float %149)
  %151 = fptosi float %150 to i32
  %152 = load float, ptr %144, align 4, !tbaa !50
  %153 = tail call float @llvm.floor.f32(float %152)
  %154 = fptosi float %153 to i32
  %155 = icmp sgt i32 %7, %154
  %156 = select i1 %155, i32 %154, i32 %138
  %157 = tail call i32 @llvm.smax.i32(i32 %151, i32 -1)
  %158 = icmp slt i32 %157, %156
  br i1 %158, label %159, label %181

159:                                              ; preds = %142
  %160 = add nsw i32 %157, 1
  %161 = sitofp i32 %160 to double
  %162 = fpext float %146 to double
  %163 = tail call double @llvm.fmuladd.f64(double %161, double %141, double %162)
  %164 = fptrunc double %163 to float
  %165 = fpext float %147 to double
  %166 = tail call double @llvm.fmuladd.f64(double %161, double %140, double %165)
  %167 = fptrunc double %166 to float
  %168 = fpext float %148 to double
  %169 = tail call double @llvm.fmuladd.f64(double %161, double %139, double %168)
  %170 = fptrunc double %169 to float
  br label %171

171:                                              ; preds = %159, %171
  %172 = phi i32 [ %176, %171 ], [ %160, %159 ]
  %173 = phi float [ %179, %171 ], [ %164, %159 ]
  %174 = phi float [ %177, %171 ], [ %170, %159 ]
  %175 = phi float [ %178, %171 ], [ %167, %159 ]
  tail call void %5(ptr noundef %1, i32 noundef %172, i32 noundef %143, float noundef %174, float noundef %175, float noundef %173) #14
  %176 = add i32 %172, 1
  %177 = fadd float %174, %80
  %178 = fadd float %175, %90
  %179 = fadd float %173, %68
  %180 = icmp eq i32 %172, %156
  br i1 %180, label %181, label %171, !llvm.loop !69

181:                                              ; preds = %171, %142
  %182 = fsub float %148, %84
  %183 = fsub float %147, %94
  %184 = fsub float %146, %72
  %185 = add nsw i32 %143, -1
  %186 = getelementptr inbounds float, ptr %145, i64 -1
  %187 = getelementptr inbounds float, ptr %144, i64 -1
  %188 = icmp sgt i32 %143, %26
  br i1 %188, label %142, label %189, !llvm.loop !70

189:                                              ; preds = %181, %49, %31, %23, %6, %19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @zbuf_add_to_span(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #7 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !50
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !50
  %8 = fcmp olt float %5, %7
  %9 = select i1 %8, ptr %2, ptr %1
  %10 = select i1 %8, ptr %1, ptr %2
  %11 = getelementptr inbounds float, ptr %10, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !50
  %13 = tail call float @llvm.ceil.f32(float %12)
  %14 = fptosi float %13 to i32
  %15 = getelementptr inbounds float, ptr %9, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !50
  %17 = tail call float @llvm.floor.f32(float %16)
  %18 = fptosi float %17 to i32
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %133, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !41
  %23 = icmp sgt i32 %22, %14
  br i1 %23, label %24, label %133

24:                                               ; preds = %20
  %25 = icmp sgt i32 %22, %18
  %26 = add nsw i32 %22, -1
  %27 = select i1 %25, i32 %18, i32 %26
  %28 = tail call i32 @llvm.smax.i32(i32 %14, i32 0)
  %29 = icmp sgt i32 %28, %27
  br i1 %29, label %133, label %30

30:                                               ; preds = %24
  %31 = fsub float %16, %12
  %32 = fcmp ogt float %31, 0x3E80000000000000
  %33 = load float, ptr %10, align 4, !tbaa !50
  %34 = load float, ptr %9, align 4, !tbaa !50
  br i1 %32, label %35, label %41

35:                                               ; preds = %30
  %36 = fsub float %33, %34
  %37 = fdiv float %36, %31
  %38 = sitofp i32 %27 to float
  %39 = fsub float %12, %38
  %40 = tail call float @llvm.fmuladd.f32(float %37, float %39, float %33)
  br label %44

41:                                               ; preds = %30
  %42 = fcmp olt float %33, %34
  %43 = select i1 %42, float %33, float %34
  br label %44

44:                                               ; preds = %41, %35
  %45 = phi float [ %37, %35 ], [ 0.000000e+00, %41 ]
  %46 = phi float [ %40, %35 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !71
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  br label %62

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !72
  %55 = icmp eq ptr %9, %54
  %56 = icmp eq ptr %10, %48
  %57 = or i1 %56, %55
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  br label %62

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  br label %62

62:                                               ; preds = %58, %60, %50
  %63 = phi ptr [ %51, %50 ], [ %59, %58 ], [ %61, %60 ]
  %64 = load ptr, ptr %63, align 8, !tbaa !42
  %65 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  %66 = load ptr, ptr %65, align 8, !tbaa !43
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !72
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds float, ptr %70, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !50
  %75 = fcmp ogt float %74, %12
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %68
  store ptr %10, ptr %69, align 8, !tbaa !72
  br label %77

77:                                               ; preds = %76, %72
  br i1 %49, label %82, label %78

78:                                               ; preds = %77
  %79 = getelementptr inbounds float, ptr %48, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !50
  %81 = fcmp olt float %80, %16
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %77
  store ptr %9, ptr %47, align 8, !tbaa !71
  br label %83

83:                                               ; preds = %82, %78
  %84 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !64
  %86 = icmp slt i32 %28, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 %28, ptr %84, align 8, !tbaa !64
  br label %88

88:                                               ; preds = %87, %83
  %89 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !66
  %91 = icmp sgt i32 %27, %90
  br i1 %91, label %119, label %121

92:                                               ; preds = %62
  %93 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 8
  %94 = load ptr, ptr %93, align 8, !tbaa !67
  %95 = icmp eq ptr %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds float, ptr %94, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !50
  %99 = fcmp ogt float %98, %12
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %92
  store ptr %10, ptr %93, align 8, !tbaa !67
  br label %101

101:                                              ; preds = %100, %96
  %102 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 9
  %103 = load ptr, ptr %102, align 8, !tbaa !68
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds float, ptr %103, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !50
  %108 = fcmp olt float %107, %16
  br i1 %108, label %109, label %110

109:                                              ; preds = %105, %101
  store ptr %9, ptr %102, align 8, !tbaa !68
  br label %110

110:                                              ; preds = %109, %105
  %111 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 4
  %112 = load i32, ptr %111, align 8, !tbaa !63
  %113 = icmp slt i32 %28, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i32 %28, ptr %111, align 8, !tbaa !63
  br label %115

115:                                              ; preds = %114, %110
  %116 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 5
  %117 = load i32, ptr %116, align 4, !tbaa !65
  %118 = icmp sgt i32 %27, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115, %88
  %120 = phi ptr [ %89, %88 ], [ %116, %115 ]
  store i32 %27, ptr %120, align 4, !tbaa !46
  br label %121

121:                                              ; preds = %119, %115, %88
  %122 = icmp slt i32 %27, %28
  br i1 %122, label %133, label %123

123:                                              ; preds = %121
  %124 = sext i32 %27 to i64
  %125 = zext nneg i32 %28 to i64
  br label %126

126:                                              ; preds = %123, %126
  %127 = phi i64 [ %124, %123 ], [ %130, %126 ]
  %128 = phi float [ %46, %123 ], [ %131, %126 ]
  %129 = getelementptr inbounds float, ptr %64, i64 %127
  store float %128, ptr %129, align 4, !tbaa !50
  %130 = add nsw i64 %127, -1
  %131 = fadd float %45, %128
  %132 = icmp sgt i64 %127, %125
  br i1 %132, label %126, label %133, !llvm.loop !73

133:                                              ; preds = %126, %121, %24, %3, %20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind uwtable
define dso_local void @zspan_scanconvert(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = load i32, ptr %0, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = add nsw i32 %9, 1
  %11 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 4
  store i32 %10, ptr %11, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 2
  store i32 %10, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 5
  store i32 -1, ptr %13, align 4, !tbaa !65
  %14 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 3
  store i32 -1, ptr %14, align 4, !tbaa !66
  %15 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 8
  %16 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3)
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4)
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %2)
  %17 = load ptr, ptr %15, align 8, !tbaa !67
  %18 = icmp eq ptr %17, null
  br i1 %18, label %152, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !68
  %22 = icmp eq ptr %21, null
  br i1 %22, label %152, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %12, align 8, !tbaa !64
  %25 = load i32, ptr %11, align 8, !tbaa !63
  %26 = tail call i32 @llvm.smax.i32(i32 %24, i32 %25)
  %27 = load i32, ptr %14, align 4, !tbaa !66
  %28 = load i32, ptr %13, align 4, !tbaa !65
  %29 = tail call i32 @llvm.smin.i32(i32 %27, i32 %28)
  %30 = icmp slt i32 %29, %26
  br i1 %30, label %152, label %31

31:                                               ; preds = %23
  %32 = load float, ptr %2, align 4, !tbaa !50
  %33 = load float, ptr %3, align 4, !tbaa !50
  %34 = fsub float %32, %33
  %35 = load float, ptr %4, align 4, !tbaa !50
  %36 = fsub float %33, %35
  %37 = getelementptr inbounds float, ptr %2, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !50
  %39 = getelementptr inbounds float, ptr %3, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !50
  %41 = fsub float %38, %40
  %42 = getelementptr inbounds float, ptr %4, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !50
  %44 = fsub float %40, %43
  %45 = fneg float %41
  %46 = fmul float %36, %45
  %47 = tail call float @llvm.fmuladd.f32(float %34, float %44, float %46)
  %48 = fcmp oeq float %47, 0.000000e+00
  br i1 %48, label %152, label %49

49:                                               ; preds = %31
  %50 = fmul float %34, 0.000000e+00
  %51 = fsub float %36, %50
  %52 = fneg float %44
  %53 = tail call float @llvm.fmuladd.f32(float %41, float 0.000000e+00, float %52)
  %54 = fpext float %53 to double
  %55 = fneg double %54
  %56 = fpext float %47 to double
  %57 = fdiv double %55, %56
  %58 = fptrunc double %57 to float
  %59 = fpext float %51 to double
  %60 = fneg double %59
  %61 = fdiv double %60, %56
  %62 = fptrunc double %61 to float
  %63 = fadd float %41, %44
  %64 = fneg float %34
  %65 = tail call float @llvm.fmuladd.f32(float %36, float -1.000000e+00, float %64)
  %66 = fpext float %63 to double
  %67 = fneg double %66
  %68 = fdiv double %67, %56
  %69 = fptrunc double %68 to float
  %70 = fpext float %65 to double
  %71 = fneg double %70
  %72 = fdiv double %71, %56
  %73 = fptrunc double %72 to float
  %74 = icmp slt i32 %29, %26
  br i1 %74, label %152, label %75

75:                                               ; preds = %49
  %76 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  %77 = load ptr, ptr %76, align 8, !tbaa !43
  %78 = add nsw i32 %29, %26
  %79 = sdiv i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, ptr %77, i64 %80
  %82 = load float, ptr %81, align 4, !tbaa !50
  %83 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  %84 = load ptr, ptr %83, align 8, !tbaa !44
  %85 = getelementptr inbounds float, ptr %84, i64 %80
  %86 = load float, ptr %85, align 4, !tbaa !50
  %87 = fcmp olt float %82, %86
  %88 = sext i32 %29 to i64
  %89 = getelementptr inbounds float, ptr %84, i64 %88
  %90 = getelementptr inbounds float, ptr %77, i64 %88
  %91 = select i1 %87, ptr %89, ptr %90
  %92 = select i1 %87, ptr %90, ptr %89
  %93 = sitofp i32 %29 to double
  %94 = fpext float %73 to double
  %95 = fmul float %38, %65
  %96 = tail call float @llvm.fmuladd.f32(float %63, float %32, float %95)
  %97 = fdiv float %96, %47
  %98 = fpext float %97 to double
  %99 = tail call double @llvm.fmuladd.f64(double %93, double %94, double %98)
  %100 = fptrunc double %99 to float
  %101 = fpext float %62 to double
  %102 = fmul float %38, %51
  %103 = tail call float @llvm.fmuladd.f32(float %53, float %32, float %102)
  %104 = fdiv float %103, %47
  %105 = fadd float %104, 1.000000e+00
  %106 = fpext float %105 to double
  %107 = tail call double @llvm.fmuladd.f64(double %93, double %101, double %106)
  %108 = fptrunc double %107 to float
  %109 = add nsw i32 %7, -1
  %110 = fpext float %58 to double
  %111 = fpext float %69 to double
  br label %112

112:                                              ; preds = %75, %145
  %113 = phi i32 [ %29, %75 ], [ %148, %145 ]
  %114 = phi ptr [ %91, %75 ], [ %150, %145 ]
  %115 = phi ptr [ %92, %75 ], [ %149, %145 ]
  %116 = phi float [ %100, %75 ], [ %147, %145 ]
  %117 = phi float [ %108, %75 ], [ %146, %145 ]
  %118 = load float, ptr %115, align 4, !tbaa !50
  %119 = tail call float @llvm.floor.f32(float %118)
  %120 = fptosi float %119 to i32
  %121 = load float, ptr %114, align 4, !tbaa !50
  %122 = tail call float @llvm.floor.f32(float %121)
  %123 = fptosi float %122 to i32
  %124 = icmp sgt i32 %7, %123
  %125 = select i1 %124, i32 %123, i32 %109
  %126 = tail call i32 @llvm.smax.i32(i32 %120, i32 -1)
  %127 = icmp slt i32 %126, %125
  br i1 %127, label %128, label %145

128:                                              ; preds = %112
  %129 = add nsw i32 %126, 1
  %130 = sitofp i32 %129 to double
  %131 = fpext float %116 to double
  %132 = tail call double @llvm.fmuladd.f64(double %130, double %111, double %131)
  %133 = fptrunc double %132 to float
  %134 = fpext float %117 to double
  %135 = tail call double @llvm.fmuladd.f64(double %130, double %110, double %134)
  %136 = fptrunc double %135 to float
  br label %137

137:                                              ; preds = %128, %137
  %138 = phi i32 [ %141, %137 ], [ %129, %128 ]
  %139 = phi float [ %142, %137 ], [ %136, %128 ]
  %140 = phi float [ %143, %137 ], [ %133, %128 ]
  tail call void %5(ptr noundef %1, i32 noundef %138, i32 noundef %113, float noundef %139, float noundef %140) #14
  %141 = add i32 %138, 1
  %142 = fadd float %139, %58
  %143 = fadd float %140, %69
  %144 = icmp eq i32 %138, %125
  br i1 %144, label %145, label %137, !llvm.loop !74

145:                                              ; preds = %137, %112
  %146 = fsub float %117, %62
  %147 = fsub float %116, %73
  %148 = add nsw i32 %113, -1
  %149 = getelementptr inbounds float, ptr %115, i64 -1
  %150 = getelementptr inbounds float, ptr %114, i64 -1
  %151 = icmp sgt i32 %113, %26
  br i1 %151, label %112, label %152, !llvm.loop !75

152:                                              ; preds = %145, %49, %31, %23, %6, %19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @projectverto(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = load float, ptr %0, align 4, !tbaa !50
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !50
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !50
  %9 = load float, ptr %1, align 4, !tbaa !50
  %10 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !50
  %12 = fmul float %8, %11
  %13 = tail call float @llvm.fmuladd.f32(float %4, float %9, float %12)
  %14 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %15 = load float, ptr %14, align 4, !tbaa !50
  %16 = fadd float %15, %13
  store float %16, ptr %2, align 4, !tbaa !50
  %17 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !50
  %19 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !50
  %21 = fmul float %8, %20
  %22 = tail call float @llvm.fmuladd.f32(float %6, float %18, float %21)
  %23 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !50
  %25 = fadd float %24, %22
  %26 = getelementptr inbounds float, ptr %2, i64 1
  store float %25, ptr %26, align 4, !tbaa !50
  %27 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !50
  %29 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !50
  %31 = tail call float @llvm.fmuladd.f32(float %8, float %28, float %30)
  %32 = getelementptr inbounds float, ptr %2, i64 2
  store float %31, ptr %32, align 4, !tbaa !50
  %33 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 3
  %34 = load float, ptr %33, align 4, !tbaa !50
  %35 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 3
  %36 = load float, ptr %35, align 4, !tbaa !50
  %37 = tail call float @llvm.fmuladd.f32(float %8, float %34, float %36)
  %38 = getelementptr inbounds float, ptr %2, i64 3
  store float %37, ptr %38, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @projectvert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = load float, ptr %0, align 4, !tbaa !50
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !50
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !50
  %9 = load float, ptr %1, align 4, !tbaa !50
  %10 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !50
  %12 = fmul float %6, %11
  %13 = tail call float @llvm.fmuladd.f32(float %4, float %9, float %12)
  %14 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !50
  %16 = tail call float @llvm.fmuladd.f32(float %8, float %15, float %13)
  %17 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !50
  %19 = fadd float %18, %16
  store float %19, ptr %2, align 4, !tbaa !50
  %20 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !50
  %22 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !50
  %24 = fmul float %6, %23
  %25 = tail call float @llvm.fmuladd.f32(float %4, float %21, float %24)
  %26 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !50
  %28 = tail call float @llvm.fmuladd.f32(float %8, float %27, float %25)
  %29 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !50
  %31 = fadd float %30, %28
  %32 = getelementptr inbounds float, ptr %2, i64 1
  store float %31, ptr %32, align 4, !tbaa !50
  %33 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !50
  %35 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !50
  %37 = fmul float %6, %36
  %38 = tail call float @llvm.fmuladd.f32(float %4, float %34, float %37)
  %39 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !50
  %41 = tail call float @llvm.fmuladd.f32(float %8, float %40, float %38)
  %42 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !50
  %44 = fadd float %43, %41
  %45 = getelementptr inbounds float, ptr %2, i64 2
  store float %44, ptr %45, align 4, !tbaa !50
  %46 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  %47 = load float, ptr %46, align 4, !tbaa !50
  %48 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 3
  %49 = load float, ptr %48, align 4, !tbaa !50
  %50 = fmul float %6, %49
  %51 = tail call float @llvm.fmuladd.f32(float %4, float %47, float %50)
  %52 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 3
  %53 = load float, ptr %52, align 4, !tbaa !50
  %54 = tail call float @llvm.fmuladd.f32(float %8, float %53, float %51)
  %55 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 3
  %56 = load float, ptr %55, align 4, !tbaa !50
  %57 = fadd float %56, %54
  %58 = getelementptr inbounds float, ptr %2, i64 3
  store float %57, ptr %58, align 4, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @zbuf_render_project(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = load float, ptr %1, align 4, !tbaa !50
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !50
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !50
  %9 = load float, ptr %0, align 4, !tbaa !50
  %10 = getelementptr inbounds [4 x float], ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !50
  %12 = fmul float %6, %11
  %13 = tail call float @llvm.fmuladd.f32(float %4, float %9, float %12)
  %14 = getelementptr inbounds [4 x float], ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !50
  %16 = tail call float @llvm.fmuladd.f32(float %8, float %15, float %13)
  %17 = getelementptr inbounds [4 x float], ptr %0, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !50
  %19 = fadd float %18, %16
  store float %19, ptr %2, align 4, !tbaa !50
  %20 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !50
  %22 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !50
  %24 = fmul float %6, %23
  %25 = tail call float @llvm.fmuladd.f32(float %4, float %21, float %24)
  %26 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !50
  %28 = tail call float @llvm.fmuladd.f32(float %8, float %27, float %25)
  %29 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !50
  %31 = fadd float %30, %28
  %32 = getelementptr inbounds float, ptr %2, i64 1
  store float %31, ptr %32, align 4, !tbaa !50
  %33 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !50
  %35 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !50
  %37 = fmul float %6, %36
  %38 = tail call float @llvm.fmuladd.f32(float %4, float %34, float %37)
  %39 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !50
  %41 = tail call float @llvm.fmuladd.f32(float %8, float %40, float %38)
  %42 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !50
  %44 = fadd float %43, %41
  %45 = getelementptr inbounds float, ptr %2, i64 2
  store float %44, ptr %45, align 4, !tbaa !50
  %46 = getelementptr inbounds [4 x float], ptr %0, i64 0, i64 3
  %47 = load float, ptr %46, align 4, !tbaa !50
  %48 = getelementptr inbounds [4 x float], ptr %0, i64 1, i64 3
  %49 = load float, ptr %48, align 4, !tbaa !50
  %50 = fmul float %6, %49
  %51 = tail call float @llvm.fmuladd.f32(float %4, float %47, float %50)
  %52 = getelementptr inbounds [4 x float], ptr %0, i64 2, i64 3
  %53 = load float, ptr %52, align 4, !tbaa !50
  %54 = tail call float @llvm.fmuladd.f32(float %8, float %53, float %51)
  %55 = getelementptr inbounds [4 x float], ptr %0, i64 3, i64 3
  %56 = load float, ptr %55, align 4, !tbaa !50
  %57 = fadd float %56, %54
  %58 = getelementptr inbounds float, ptr %2, i64 3
  store float %57, ptr %58, align 4, !tbaa !50
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zbuf_make_winmat(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %5 = load i32, ptr %4, align 8, !tbaa !76
  %6 = and i32 %5, 1024
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  call void @unit_m4(ptr noundef nonnull %3) #14
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 27
  %10 = load float, ptr %9, align 4, !tbaa !92
  store float %10, ptr %3, align 16, !tbaa !50
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 26
  %12 = load float, ptr %11, align 8, !tbaa !93
  %13 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  store float %12, ptr %13, align 8, !tbaa !50
  %14 = fneg float %12
  %15 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 2
  store float %14, ptr %15, align 16, !tbaa !50
  %16 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 2, i64 2
  store float %10, ptr %16, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  call void @mul_m4_m4m4(ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  br label %20

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  tail call void @copy_m4_m4(ptr noundef %1, ptr noundef nonnull %19) #14
  br label %20

20:                                               ; preds = %18, %8
  ret void
}

declare void @unit_m4(ptr noundef) local_unnamed_addr #8

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @zbufclip(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca [32 x [3 x ptr]], align 16
  %11 = alloca [3 x [2 x float]], align 16
  %12 = alloca [400 x float], align 16
  %13 = alloca [40 x ptr], align 16
  %14 = alloca [3 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %13) #14
  %19 = or i32 %7, %6
  %20 = or i32 %19, %8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %272, label %22

22:                                               ; preds = %9
  %23 = and i32 %7, %6
  %24 = and i32 %23, %8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %333

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #14
  store i32 3, ptr %18, align 4, !tbaa !46
  %27 = load float, ptr %3, align 4, !tbaa !50
  store float %27, ptr %12, align 16, !tbaa !50
  %28 = getelementptr inbounds float, ptr %3, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !50
  %30 = getelementptr inbounds [400 x float], ptr %12, i64 0, i64 1
  store float %29, ptr %30, align 4, !tbaa !50
  %31 = getelementptr inbounds float, ptr %3, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !50
  %33 = getelementptr inbounds [400 x float], ptr %12, i64 0, i64 2
  store float %32, ptr %33, align 8, !tbaa !50
  %34 = getelementptr inbounds float, ptr %3, i64 3
  %35 = load float, ptr %34, align 4, !tbaa !50
  %36 = getelementptr inbounds [400 x float], ptr %12, i64 0, i64 3
  store float %35, ptr %36, align 4, !tbaa !50
  %37 = load float, ptr %4, align 4, !tbaa !50
  %38 = getelementptr inbounds [400 x float], ptr %12, i64 0, i64 4
  store float %37, ptr %38, align 16, !tbaa !50
  %39 = getelementptr inbounds float, ptr %4, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !50
  %41 = getelementptr inbounds [400 x float], ptr %12, i64 0, i64 5
  store float %40, ptr %41, align 4, !tbaa !50
  %42 = getelementptr inbounds float, ptr %4, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !50
  %44 = getelementptr inbounds [400 x float], ptr %12, i64 0, i64 6
  store float %43, ptr %44, align 8, !tbaa !50
  %45 = getelementptr inbounds float, ptr %4, i64 3
  %46 = load float, ptr %45, align 4, !tbaa !50
  %47 = getelementptr inbounds [400 x float], ptr %12, i64 0, i64 7
  store float %46, ptr %47, align 4, !tbaa !50
  %48 = load float, ptr %5, align 4, !tbaa !50
  %49 = getelementptr inbounds [400 x float], ptr %12, i64 0, i64 8
  store float %48, ptr %49, align 16, !tbaa !50
  %50 = getelementptr inbounds float, ptr %5, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !50
  %52 = getelementptr inbounds [400 x float], ptr %12, i64 0, i64 9
  store float %51, ptr %52, align 4, !tbaa !50
  %53 = getelementptr inbounds float, ptr %5, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !50
  %55 = getelementptr inbounds [400 x float], ptr %12, i64 0, i64 10
  store float %54, ptr %55, align 8, !tbaa !50
  %56 = getelementptr inbounds float, ptr %5, i64 3
  %57 = load float, ptr %56, align 4, !tbaa !50
  %58 = getelementptr inbounds [400 x float], ptr %12, i64 0, i64 11
  store float %57, ptr %58, align 4, !tbaa !50
  store ptr %12, ptr %10, align 16, !tbaa !42
  %59 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 1
  store ptr %38, ptr %59, align 8, !tbaa !42
  %60 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 2
  store ptr %49, ptr %60, align 16, !tbaa !42
  %61 = and i32 %20, 48
  store i32 %61, ptr %14, align 4, !tbaa !46
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %26
  %64 = and i32 %20, 3
  %65 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 1
  store i32 %64, ptr %65, align 4, !tbaa !46
  %66 = and i32 %20, 12
  br label %69

67:                                               ; preds = %26
  %68 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 2
  store i32 0, ptr %68, align 4, !tbaa !46
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi i64 [ 1, %67 ], [ 2, %63 ]
  %71 = phi i32 [ 0, %67 ], [ %66, %63 ]
  %72 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 %70
  store i32 %71, ptr %72, align 4, !tbaa !46
  %73 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 31
  %74 = getelementptr inbounds [3 x [2 x float]], ptr %11, i64 0, i64 1
  %75 = getelementptr inbounds [3 x [2 x float]], ptr %11, i64 0, i64 2
  %76 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 2
  %77 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 1
  %78 = load i32, ptr %76, align 4, !tbaa !46
  %79 = load i32, ptr %77, align 4, !tbaa !46
  br label %92

80:                                               ; preds = %226
  %81 = load i32, ptr %18, align 4, !tbaa !46
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %232

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 12
  %85 = load float, ptr %84, align 8, !tbaa !57
  %86 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 14
  %87 = load float, ptr %86, align 8, !tbaa !58
  %88 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 13
  %89 = load float, ptr %88, align 4, !tbaa !59
  %90 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 15
  %91 = load float, ptr %90, align 4, !tbaa !60
  br label %237

92:                                               ; preds = %69, %226
  %93 = phi i64 [ 0, %69 ], [ %230, %226 ]
  %94 = phi i32 [ %79, %69 ], [ %227, %226 ]
  %95 = phi i32 [ %78, %69 ], [ %228, %226 ]
  %96 = phi i32 [ 1, %69 ], [ %229, %226 ]
  %97 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 %93
  %98 = load i32, ptr %97, align 4, !tbaa !46
  %99 = icmp ne i32 %98, 0
  %100 = icmp sgt i32 %96, 0
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %102, label %226

102:                                              ; preds = %92
  %103 = icmp eq i64 %93, 0
  %104 = icmp ne i64 %93, 1
  %105 = zext i1 %104 to i32
  %106 = select i1 %103, i32 2, i32 %105
  %107 = zext i32 %96 to i64
  br label %108

108:                                              ; preds = %102, %219
  %109 = phi i64 [ 0, %102 ], [ %223, %219 ]
  %110 = phi i32 [ %94, %102 ], [ %220, %219 ]
  %111 = phi i32 [ %95, %102 ], [ %221, %219 ]
  %112 = phi i32 [ %96, %102 ], [ %222, %219 ]
  %113 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %109
  %114 = load ptr, ptr %113, align 8, !tbaa !42
  %115 = icmp eq ptr %114, null
  br i1 %115, label %219, label %116

116:                                              ; preds = %108
  store i32 0, ptr %17, align 4, !tbaa !46
  store i32 0, ptr %16, align 4, !tbaa !46
  %117 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %109, i64 1
  %118 = load ptr, ptr %117, align 8, !tbaa !42
  %119 = load float, ptr %73, align 4, !tbaa !45
  call fastcc void @clippyra(ptr noundef nonnull %11, ptr noundef nonnull %114, ptr noundef %118, ptr noundef nonnull %16, ptr noundef nonnull %17, i32 noundef %106, float noundef %119)
  %120 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %109, i64 2
  %121 = load ptr, ptr %120, align 8, !tbaa !42
  call fastcc void @clippyra(ptr noundef nonnull %74, ptr noundef %118, ptr noundef %121, ptr noundef nonnull %16, ptr noundef nonnull %17, i32 noundef %106, float noundef %119)
  call fastcc void @clippyra(ptr noundef nonnull %75, ptr noundef %121, ptr noundef nonnull %114, ptr noundef nonnull %16, ptr noundef nonnull %17, i32 noundef %106, float noundef %119)
  %122 = load i32, ptr %16, align 4, !tbaa !46
  %123 = icmp eq i32 %122, 0
  %124 = load i32, ptr %17, align 4
  %125 = icmp eq i32 %124, 1
  %126 = select i1 %123, i1 %125, i1 false
  br i1 %126, label %127, label %133

127:                                              ; preds = %116
  %128 = sext i32 %112 to i64
  %129 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %128
  store ptr %114, ptr %129, align 8, !tbaa !42
  %130 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %128, i64 1
  store ptr %118, ptr %130, align 8, !tbaa !42
  %131 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %128, i64 2
  store ptr %121, ptr %131, align 8, !tbaa !42
  store ptr null, ptr %113, align 8, !tbaa !42
  %132 = add nsw i32 %112, 1
  br label %219

133:                                              ; preds = %116
  %134 = icmp eq i32 %124, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %133
  store ptr null, ptr %113, align 8, !tbaa !42
  br label %219

136:                                              ; preds = %133
  store i32 0, ptr %15, align 4, !tbaa !46
  call fastcc void @makevertpyra(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %114, ptr noundef %118, ptr noundef nonnull %15, ptr noundef nonnull %18)
  call fastcc void @makevertpyra(ptr noundef nonnull %12, ptr noundef nonnull %74, ptr noundef nonnull %13, ptr noundef %118, ptr noundef %121, ptr noundef nonnull %15, ptr noundef nonnull %18)
  call fastcc void @makevertpyra(ptr noundef nonnull %12, ptr noundef nonnull %75, ptr noundef nonnull %13, ptr noundef %121, ptr noundef nonnull %114, ptr noundef nonnull %15, ptr noundef nonnull %18)
  br i1 %103, label %137, label %191

137:                                              ; preds = %136
  %138 = load i32, ptr %18, align 4, !tbaa !46
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %187

140:                                              ; preds = %137, %177
  %141 = phi ptr [ %184, %177 ], [ %12, %137 ]
  %142 = phi i32 [ %185, %177 ], [ 0, %137 ]
  %143 = phi i32 [ %181, %177 ], [ 0, %137 ]
  %144 = phi i32 [ %183, %177 ], [ 0, %137 ]
  %145 = getelementptr inbounds float, ptr %141, i64 3
  %146 = load float, ptr %145, align 4, !tbaa !50
  %147 = call float @llvm.fabs.f32(float %146)
  %148 = fadd float %147, 0x3E80000000000000
  %149 = load float, ptr %141, align 4, !tbaa !50
  %150 = fneg float %148
  %151 = fcmp olt float %149, %150
  br i1 %151, label %155, label %152

152:                                              ; preds = %140
  %153 = fcmp ogt float %149, %148
  br i1 %153, label %154, label %155

154:                                              ; preds = %152
  br label %155

155:                                              ; preds = %154, %152, %140
  %156 = phi i16 [ 2, %154 ], [ 0, %152 ], [ 1, %140 ]
  %157 = getelementptr inbounds float, ptr %141, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !50
  %159 = fcmp ogt float %158, %148
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = or disjoint i16 %156, 4
  br label %166

162:                                              ; preds = %155
  %163 = fcmp olt float %158, %150
  br i1 %163, label %164, label %166

164:                                              ; preds = %162
  %165 = or disjoint i16 %156, 8
  br label %166

166:                                              ; preds = %164, %162, %160
  %167 = phi i16 [ %161, %160 ], [ %165, %164 ], [ %156, %162 ]
  %168 = getelementptr inbounds float, ptr %141, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !50
  %170 = fcmp olt float %169, %150
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = add nsw i16 %167, 16
  br label %177

173:                                              ; preds = %166
  %174 = fcmp ogt float %169, %148
  br i1 %174, label %175, label %177

175:                                              ; preds = %173
  %176 = add nsw i16 %167, 32
  br label %177

177:                                              ; preds = %171, %173, %175
  %178 = phi i16 [ %172, %171 ], [ %176, %175 ], [ %167, %173 ]
  %179 = zext nneg i16 %178 to i32
  %180 = and i32 %179, 3
  %181 = or i32 %180, %143
  %182 = and i32 %179, 12
  %183 = or i32 %144, %182
  %184 = getelementptr inbounds float, ptr %141, i64 4
  %185 = add nuw nsw i32 %142, 1
  %186 = icmp eq i32 %185, %138
  br i1 %186, label %187, label %140, !llvm.loop !94

187:                                              ; preds = %177, %137
  %188 = phi i32 [ 0, %137 ], [ %183, %177 ]
  %189 = phi i32 [ 0, %137 ], [ %181, %177 ]
  %190 = phi i32 [ 0, %137 ], [ %138, %177 ]
  store i32 %190, ptr %17, align 4, !tbaa !46
  br label %191

191:                                              ; preds = %187, %136
  %192 = phi i32 [ %189, %187 ], [ %110, %136 ]
  %193 = phi i32 [ %188, %187 ], [ %111, %136 ]
  store ptr null, ptr %113, align 8, !tbaa !42
  %194 = load i32, ptr %15, align 4, !tbaa !46
  %195 = icmp sgt i32 %194, 2
  br i1 %195, label %196, label %219

196:                                              ; preds = %191
  %197 = load ptr, ptr %13, align 16, !tbaa !42
  %198 = sext i32 %112 to i64
  %199 = add nuw i32 %194, 1
  %200 = zext i32 %199 to i64
  br label %201

201:                                              ; preds = %196, %201
  %202 = phi i64 [ 3, %196 ], [ %214, %201 ]
  %203 = phi i64 [ %198, %196 ], [ %213, %201 ]
  %204 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %203
  store ptr %197, ptr %204, align 8, !tbaa !42
  %205 = add nsw i64 %202, -2
  %206 = getelementptr inbounds [40 x ptr], ptr %13, i64 0, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !42
  %208 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %203, i64 1
  store ptr %207, ptr %208, align 8, !tbaa !42
  %209 = add nsw i64 %202, -1
  %210 = getelementptr inbounds [40 x ptr], ptr %13, i64 0, i64 %209
  %211 = load ptr, ptr %210, align 8, !tbaa !42
  %212 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %203, i64 2
  store ptr %211, ptr %212, align 8, !tbaa !42
  %213 = add nsw i64 %203, 1
  %214 = add nuw nsw i64 %202, 1
  %215 = icmp eq i64 %214, %200
  br i1 %215, label %216, label %201, !llvm.loop !95

216:                                              ; preds = %201
  %217 = trunc i64 %214 to i32
  %218 = trunc i64 %213 to i32
  store i32 %217, ptr %17, align 4, !tbaa !46
  br label %219

219:                                              ; preds = %216, %108, %135, %191, %127
  %220 = phi i32 [ %110, %127 ], [ %110, %135 ], [ %192, %191 ], [ %110, %108 ], [ %192, %216 ]
  %221 = phi i32 [ %111, %127 ], [ %111, %135 ], [ %193, %191 ], [ %111, %108 ], [ %193, %216 ]
  %222 = phi i32 [ %132, %127 ], [ %112, %135 ], [ %112, %191 ], [ %112, %108 ], [ %218, %216 ]
  %223 = add nuw nsw i64 %109, 1
  %224 = icmp eq i64 %223, %107
  br i1 %224, label %225, label %108, !llvm.loop !96

225:                                              ; preds = %219
  store i32 %221, ptr %76, align 4, !tbaa !46
  store i32 %220, ptr %77, align 4, !tbaa !46
  br label %226

226:                                              ; preds = %225, %92
  %227 = phi i32 [ %94, %92 ], [ %220, %225 ]
  %228 = phi i32 [ %95, %92 ], [ %221, %225 ]
  %229 = phi i32 [ %96, %92 ], [ %222, %225 ]
  %230 = add nuw nsw i64 %93, 1
  %231 = icmp eq i64 %230, 3
  br i1 %231, label %80, label %92, !llvm.loop !97

232:                                              ; preds = %237, %80
  %233 = icmp sgt i32 %229, 1
  br i1 %233, label %234, label %271

234:                                              ; preds = %232
  %235 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 34
  %236 = zext nneg i32 %229 to i64
  br label %257

237:                                              ; preds = %83, %237
  %238 = phi ptr [ %12, %83 ], [ %254, %237 ]
  %239 = phi i32 [ 0, %83 ], [ %255, %237 ]
  %240 = getelementptr inbounds float, ptr %238, i64 3
  %241 = load float, ptr %240, align 4, !tbaa !50
  %242 = fdiv float 1.000000e+00, %241
  %243 = load float, ptr %238, align 4, !tbaa !50
  %244 = call float @llvm.fmuladd.f32(float %243, float %242, float 1.000000e+00)
  %245 = call float @llvm.fmuladd.f32(float %85, float %244, float %87)
  store float %245, ptr %238, align 4, !tbaa !50
  %246 = getelementptr inbounds float, ptr %238, i64 1
  %247 = load float, ptr %246, align 4, !tbaa !50
  %248 = call float @llvm.fmuladd.f32(float %247, float %242, float 1.000000e+00)
  %249 = call float @llvm.fmuladd.f32(float %89, float %248, float %91)
  store float %249, ptr %246, align 4, !tbaa !50
  %250 = getelementptr inbounds float, ptr %238, i64 2
  %251 = load float, ptr %250, align 4, !tbaa !50
  %252 = fmul float %242, %251
  %253 = fmul float %252, 0x41E0000000000000
  store float %253, ptr %250, align 4, !tbaa !50
  %254 = getelementptr inbounds float, ptr %238, i64 4
  %255 = add nuw nsw i32 %239, 1
  %256 = icmp eq i32 %255, %81
  br i1 %256, label %232, label %237, !llvm.loop !98

257:                                              ; preds = %234, %268
  %258 = phi i64 [ 1, %234 ], [ %269, %268 ]
  %259 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %258
  %260 = load ptr, ptr %259, align 8, !tbaa !42
  %261 = icmp eq ptr %260, null
  br i1 %261, label %268, label %262

262:                                              ; preds = %257
  %263 = load ptr, ptr %235, align 8, !tbaa !99
  %264 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %258, i64 1
  %265 = load ptr, ptr %264, align 8, !tbaa !42
  %266 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %258, i64 2
  %267 = load ptr, ptr %266, align 8, !tbaa !42
  call void %263(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %260, ptr noundef %265, ptr noundef %267, ptr noundef null) #14
  br label %268

268:                                              ; preds = %257, %262
  %269 = add nuw nsw i64 %258, 1
  %270 = icmp eq i64 %269, %236
  br i1 %270, label %271, label %257, !llvm.loop !100

271:                                              ; preds = %268, %232
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #14
  br label %333

272:                                              ; preds = %9
  %273 = getelementptr inbounds float, ptr %3, i64 3
  %274 = load float, ptr %273, align 4, !tbaa !50
  %275 = fdiv float 1.000000e+00, %274
  %276 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 12
  %277 = load float, ptr %276, align 8, !tbaa !57
  %278 = load float, ptr %3, align 4, !tbaa !50
  %279 = tail call float @llvm.fmuladd.f32(float %278, float %275, float 1.000000e+00)
  %280 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 14
  %281 = load float, ptr %280, align 8, !tbaa !58
  %282 = tail call float @llvm.fmuladd.f32(float %277, float %279, float %281)
  store float %282, ptr %12, align 16, !tbaa !50
  %283 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 13
  %284 = load float, ptr %283, align 4, !tbaa !59
  %285 = getelementptr inbounds float, ptr %3, i64 1
  %286 = load float, ptr %285, align 4, !tbaa !50
  %287 = tail call float @llvm.fmuladd.f32(float %286, float %275, float 1.000000e+00)
  %288 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 15
  %289 = load float, ptr %288, align 4, !tbaa !60
  %290 = tail call float @llvm.fmuladd.f32(float %284, float %287, float %289)
  %291 = getelementptr inbounds float, ptr %12, i64 1
  store float %290, ptr %291, align 4, !tbaa !50
  %292 = getelementptr inbounds float, ptr %3, i64 2
  %293 = load float, ptr %292, align 4, !tbaa !50
  %294 = fmul float %275, %293
  %295 = fmul float %294, 0x41E0000000000000
  %296 = getelementptr inbounds float, ptr %12, i64 2
  store float %295, ptr %296, align 8, !tbaa !50
  %297 = getelementptr inbounds float, ptr %12, i64 4
  %298 = getelementptr inbounds float, ptr %4, i64 3
  %299 = load float, ptr %298, align 4, !tbaa !50
  %300 = fdiv float 1.000000e+00, %299
  %301 = load float, ptr %4, align 4, !tbaa !50
  %302 = tail call float @llvm.fmuladd.f32(float %301, float %300, float 1.000000e+00)
  %303 = tail call float @llvm.fmuladd.f32(float %277, float %302, float %281)
  store float %303, ptr %297, align 16, !tbaa !50
  %304 = getelementptr inbounds float, ptr %4, i64 1
  %305 = load float, ptr %304, align 4, !tbaa !50
  %306 = tail call float @llvm.fmuladd.f32(float %305, float %300, float 1.000000e+00)
  %307 = tail call float @llvm.fmuladd.f32(float %284, float %306, float %289)
  %308 = getelementptr inbounds float, ptr %12, i64 5
  store float %307, ptr %308, align 4, !tbaa !50
  %309 = getelementptr inbounds float, ptr %4, i64 2
  %310 = load float, ptr %309, align 4, !tbaa !50
  %311 = fmul float %300, %310
  %312 = fmul float %311, 0x41E0000000000000
  %313 = getelementptr inbounds float, ptr %12, i64 6
  store float %312, ptr %313, align 8, !tbaa !50
  %314 = getelementptr inbounds float, ptr %12, i64 8
  %315 = getelementptr inbounds float, ptr %5, i64 3
  %316 = load float, ptr %315, align 4, !tbaa !50
  %317 = fdiv float 1.000000e+00, %316
  %318 = load float, ptr %5, align 4, !tbaa !50
  %319 = tail call float @llvm.fmuladd.f32(float %318, float %317, float 1.000000e+00)
  %320 = tail call float @llvm.fmuladd.f32(float %277, float %319, float %281)
  store float %320, ptr %314, align 16, !tbaa !50
  %321 = getelementptr inbounds float, ptr %5, i64 1
  %322 = load float, ptr %321, align 4, !tbaa !50
  %323 = tail call float @llvm.fmuladd.f32(float %322, float %317, float 1.000000e+00)
  %324 = tail call float @llvm.fmuladd.f32(float %284, float %323, float %289)
  %325 = getelementptr inbounds float, ptr %12, i64 9
  store float %324, ptr %325, align 4, !tbaa !50
  %326 = getelementptr inbounds float, ptr %5, i64 2
  %327 = load float, ptr %326, align 4, !tbaa !50
  %328 = fmul float %317, %327
  %329 = fmul float %328, 0x41E0000000000000
  %330 = getelementptr inbounds float, ptr %12, i64 10
  store float %329, ptr %330, align 8, !tbaa !50
  %331 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 34
  %332 = load ptr, ptr %331, align 8, !tbaa !99
  call void %332(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %297, ptr noundef nonnull %314, ptr noundef null) #14
  br label %333

333:                                              ; preds = %22, %272, %271
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %10) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @clippyra(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, i32 noundef %5, float noundef %6) unnamed_addr #6 {
  store float -1.000000e+00, ptr %0, align 4, !tbaa !50
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float -1.000000e+00, ptr %8, align 4, !tbaa !50
  %9 = zext nneg i32 %5 to i64
  %10 = getelementptr inbounds float, ptr %2, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !50
  %12 = getelementptr inbounds float, ptr %1, i64 %9
  %13 = load float, ptr %12, align 4, !tbaa !50
  %14 = fsub float %11, %13
  %15 = icmp eq i32 %5, 2
  %16 = getelementptr inbounds float, ptr %2, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !50
  %18 = getelementptr inbounds float, ptr %1, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !50
  %20 = fsub float %17, %19
  %21 = select i1 %15, float 1.000000e+00, float %6
  %22 = fmul float %20, %21
  %23 = select i1 %15, float 1.000000e+00, float %6
  %24 = fmul float %19, %23
  %25 = fneg float %22
  %26 = fsub float %25, %14
  %27 = fadd float %13, %24
  %28 = fcmp olt float %26, 0.000000e+00
  br i1 %28, label %29, label %39

29:                                               ; preds = %7
  %30 = fcmp olt float %27, %26
  br i1 %30, label %53, label %31

31:                                               ; preds = %29
  %32 = fcmp olt float %27, 0.000000e+00
  br i1 %32, label %33, label %53

33:                                               ; preds = %31
  %34 = fdiv float %27, %26
  %35 = fcmp ogt float %34, 1.000000e+00
  br i1 %35, label %53, label %36

36:                                               ; preds = %33
  %37 = fcmp ogt float %34, 0.000000e+00
  br i1 %37, label %38, label %53

38:                                               ; preds = %36
  br label %53

39:                                               ; preds = %7
  %40 = fcmp ogt float %26, 0.000000e+00
  %41 = fcmp olt float %27, 0.000000e+00
  br i1 %40, label %42, label %51

42:                                               ; preds = %39
  br i1 %41, label %53, label %43

43:                                               ; preds = %42
  %44 = fcmp olt float %27, %26
  br i1 %44, label %45, label %53

45:                                               ; preds = %43
  %46 = fdiv float %27, %26
  %47 = fcmp olt float %46, 0.000000e+00
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = fcmp olt float %46, 1.000000e+00
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  br label %53

51:                                               ; preds = %39
  br i1 %41, label %53, label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %31, %36, %38, %43, %48, %50, %29, %33, %42, %45, %51, %52
  %54 = phi float [ 0.000000e+00, %29 ], [ 0.000000e+00, %33 ], [ 0.000000e+00, %42 ], [ 0.000000e+00, %45 ], [ 0.000000e+00, %51 ], [ %34, %38 ], [ 0.000000e+00, %36 ], [ 0.000000e+00, %31 ], [ 0.000000e+00, %50 ], [ 0.000000e+00, %48 ], [ 0.000000e+00, %43 ], [ 0.000000e+00, %52 ]
  %55 = phi float [ 1.000000e+00, %29 ], [ 1.000000e+00, %33 ], [ 1.000000e+00, %42 ], [ 1.000000e+00, %45 ], [ 1.000000e+00, %51 ], [ 1.000000e+00, %38 ], [ 1.000000e+00, %36 ], [ 1.000000e+00, %31 ], [ %46, %50 ], [ 1.000000e+00, %48 ], [ 1.000000e+00, %43 ], [ 1.000000e+00, %52 ]
  %56 = phi i1 [ true, %29 ], [ true, %33 ], [ true, %42 ], [ true, %45 ], [ true, %51 ], [ false, %38 ], [ false, %36 ], [ false, %31 ], [ false, %50 ], [ false, %48 ], [ false, %43 ], [ false, %52 ]
  br i1 %56, label %97, label %57

57:                                               ; preds = %53
  %58 = fsub float %14, %22
  %59 = fsub float %24, %13
  %60 = fcmp olt float %58, 0.000000e+00
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = fcmp olt float %59, %58
  br i1 %62, label %85, label %63

63:                                               ; preds = %61
  %64 = fcmp olt float %59, 0.000000e+00
  br i1 %64, label %65, label %85

65:                                               ; preds = %63
  %66 = fdiv float %59, %58
  %67 = fcmp ogt float %66, %55
  br i1 %67, label %85, label %68

68:                                               ; preds = %65
  %69 = fcmp ogt float %66, %54
  br i1 %69, label %70, label %85

70:                                               ; preds = %68
  br label %85

71:                                               ; preds = %57
  %72 = fcmp ogt float %58, 0.000000e+00
  %73 = fcmp olt float %59, 0.000000e+00
  br i1 %72, label %74, label %83

74:                                               ; preds = %71
  br i1 %73, label %85, label %75

75:                                               ; preds = %74
  %76 = fcmp olt float %59, %58
  br i1 %76, label %77, label %85

77:                                               ; preds = %75
  %78 = fdiv float %59, %58
  %79 = fcmp olt float %78, %54
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = fcmp olt float %78, %55
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  br label %85

83:                                               ; preds = %71
  br i1 %73, label %85, label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %63, %68, %70, %75, %80, %82, %61, %65, %74, %77, %83, %84
  %86 = phi float [ %54, %61 ], [ %54, %65 ], [ %54, %74 ], [ %54, %77 ], [ %54, %83 ], [ %66, %70 ], [ %54, %68 ], [ %54, %63 ], [ %54, %82 ], [ %54, %80 ], [ %54, %75 ], [ %54, %84 ]
  %87 = phi float [ %55, %61 ], [ %55, %65 ], [ %55, %74 ], [ %55, %77 ], [ %55, %83 ], [ %55, %70 ], [ %55, %68 ], [ %55, %63 ], [ %78, %82 ], [ %55, %80 ], [ %55, %75 ], [ %55, %84 ]
  %88 = phi i1 [ true, %61 ], [ true, %65 ], [ true, %74 ], [ true, %77 ], [ true, %83 ], [ false, %70 ], [ false, %68 ], [ false, %63 ], [ false, %82 ], [ false, %80 ], [ false, %75 ], [ false, %84 ]
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  store i32 1, ptr %4, align 4, !tbaa !46
  %90 = fcmp olt float %87, 1.000000e+00
  br i1 %90, label %91, label %92

91:                                               ; preds = %89
  store float %87, ptr %8, align 4, !tbaa !50
  store i32 1, ptr %3, align 4, !tbaa !46
  br label %93

92:                                               ; preds = %89
  store float 1.000000e+00, ptr %8, align 4, !tbaa !50
  br label %93

93:                                               ; preds = %92, %91
  %94 = fcmp ogt float %86, 0.000000e+00
  br i1 %94, label %95, label %96

95:                                               ; preds = %93
  store float %86, ptr %0, align 4, !tbaa !50
  store i32 1, ptr %3, align 4, !tbaa !46
  br label %97

96:                                               ; preds = %93
  store float 0.000000e+00, ptr %0, align 4, !tbaa !50
  br label %97

97:                                               ; preds = %85, %96, %95, %53
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @makevertpyra(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr nocapture noundef %6) unnamed_addr #6 {
  %8 = load float, ptr %1, align 4, !tbaa !50
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !50
  %11 = fcmp une float %8, -1.000000e+00
  br i1 %11, label %12, label %55

12:                                               ; preds = %7
  %13 = fcmp une float %8, 0.000000e+00
  br i1 %13, label %14, label %48

14:                                               ; preds = %12
  %15 = load i32, ptr %6, align 4, !tbaa !46
  %16 = shl nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, ptr %0, i64 %17
  %19 = load i32, ptr %5, align 4, !tbaa !46
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %2, i64 %20
  store ptr %18, ptr %21, align 8, !tbaa !42
  %22 = add nsw i32 %15, 1
  store i32 %22, ptr %6, align 4, !tbaa !46
  %23 = load float, ptr %3, align 4, !tbaa !50
  %24 = load float, ptr %4, align 4, !tbaa !50
  %25 = fsub float %24, %23
  %26 = tail call float @llvm.fmuladd.f32(float %8, float %25, float %23)
  store float %26, ptr %18, align 4, !tbaa !50
  %27 = getelementptr inbounds float, ptr %3, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !50
  %29 = getelementptr inbounds float, ptr %4, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !50
  %31 = fsub float %30, %28
  %32 = tail call float @llvm.fmuladd.f32(float %8, float %31, float %28)
  %33 = getelementptr inbounds float, ptr %18, i64 1
  store float %32, ptr %33, align 4, !tbaa !50
  %34 = getelementptr inbounds float, ptr %3, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !50
  %36 = getelementptr inbounds float, ptr %4, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !50
  %38 = fsub float %37, %35
  %39 = tail call float @llvm.fmuladd.f32(float %8, float %38, float %35)
  %40 = getelementptr inbounds float, ptr %18, i64 2
  store float %39, ptr %40, align 4, !tbaa !50
  %41 = getelementptr inbounds float, ptr %3, i64 3
  %42 = load float, ptr %41, align 4, !tbaa !50
  %43 = getelementptr inbounds float, ptr %4, i64 3
  %44 = load float, ptr %43, align 4, !tbaa !50
  %45 = fsub float %44, %42
  %46 = tail call float @llvm.fmuladd.f32(float %8, float %45, float %42)
  %47 = getelementptr inbounds float, ptr %18, i64 3
  store float %46, ptr %47, align 4, !tbaa !50
  br label %52

48:                                               ; preds = %12
  %49 = load i32, ptr %5, align 4, !tbaa !46
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %2, i64 %50
  store ptr %3, ptr %51, align 8, !tbaa !42
  br label %52

52:                                               ; preds = %48, %14
  %53 = load i32, ptr %5, align 4, !tbaa !46
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %5, align 4, !tbaa !46
  br label %55

55:                                               ; preds = %52, %7
  %56 = fcmp une float %10, -1.000000e+00
  %57 = fcmp une float %10, 1.000000e+00
  %58 = and i1 %56, %57
  br i1 %58, label %59, label %95

59:                                               ; preds = %55
  %60 = load i32, ptr %6, align 4, !tbaa !46
  %61 = shl nsw i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, ptr %0, i64 %62
  %64 = load i32, ptr %5, align 4, !tbaa !46
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %2, i64 %65
  store ptr %63, ptr %66, align 8, !tbaa !42
  %67 = add nsw i32 %60, 1
  store i32 %67, ptr %6, align 4, !tbaa !46
  %68 = load float, ptr %3, align 4, !tbaa !50
  %69 = load float, ptr %4, align 4, !tbaa !50
  %70 = fsub float %69, %68
  %71 = tail call float @llvm.fmuladd.f32(float %10, float %70, float %68)
  store float %71, ptr %63, align 4, !tbaa !50
  %72 = getelementptr inbounds float, ptr %3, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !50
  %74 = getelementptr inbounds float, ptr %4, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !50
  %76 = fsub float %75, %73
  %77 = tail call float @llvm.fmuladd.f32(float %10, float %76, float %73)
  %78 = getelementptr inbounds float, ptr %63, i64 1
  store float %77, ptr %78, align 4, !tbaa !50
  %79 = getelementptr inbounds float, ptr %3, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !50
  %81 = getelementptr inbounds float, ptr %4, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !50
  %83 = fsub float %82, %80
  %84 = tail call float @llvm.fmuladd.f32(float %10, float %83, float %80)
  %85 = getelementptr inbounds float, ptr %63, i64 2
  store float %84, ptr %85, align 4, !tbaa !50
  %86 = getelementptr inbounds float, ptr %3, i64 3
  %87 = load float, ptr %86, align 4, !tbaa !50
  %88 = getelementptr inbounds float, ptr %4, i64 3
  %89 = load float, ptr %88, align 4, !tbaa !50
  %90 = fsub float %89, %87
  %91 = tail call float @llvm.fmuladd.f32(float %10, float %90, float %87)
  %92 = getelementptr inbounds float, ptr %63, i64 3
  store float %91, ptr %92, align 4, !tbaa !50
  %93 = load i32, ptr %5, align 4, !tbaa !46
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %5, align 4, !tbaa !46
  br label %95

95:                                               ; preds = %59, %55
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zbufclip4(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
  %12 = alloca [16 x float], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #14
  %13 = or i32 %8, %7
  %14 = or i32 %13, %9
  %15 = or i32 %14, %10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = and i32 %8, %7
  %19 = and i32 %18, %9
  %20 = and i32 %19, %10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %101

22:                                               ; preds = %17
  tail call void @zbufclip(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %7, i32 noundef %8, i32 noundef %9)
  tail call void @zbufclip(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %9, i32 noundef %10)
  br label %101

23:                                               ; preds = %11
  %24 = getelementptr inbounds float, ptr %3, i64 3
  %25 = load float, ptr %24, align 4, !tbaa !50
  %26 = fdiv float 1.000000e+00, %25
  %27 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 12
  %28 = load float, ptr %27, align 8, !tbaa !57
  %29 = load float, ptr %3, align 4, !tbaa !50
  %30 = tail call float @llvm.fmuladd.f32(float %29, float %26, float 1.000000e+00)
  %31 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 14
  %32 = load float, ptr %31, align 8, !tbaa !58
  %33 = tail call float @llvm.fmuladd.f32(float %28, float %30, float %32)
  store float %33, ptr %12, align 16, !tbaa !50
  %34 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 13
  %35 = load float, ptr %34, align 4, !tbaa !59
  %36 = getelementptr inbounds float, ptr %3, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !50
  %38 = tail call float @llvm.fmuladd.f32(float %37, float %26, float 1.000000e+00)
  %39 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 15
  %40 = load float, ptr %39, align 4, !tbaa !60
  %41 = tail call float @llvm.fmuladd.f32(float %35, float %38, float %40)
  %42 = getelementptr inbounds float, ptr %12, i64 1
  store float %41, ptr %42, align 4, !tbaa !50
  %43 = getelementptr inbounds float, ptr %3, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !50
  %45 = fmul float %26, %44
  %46 = fmul float %45, 0x41E0000000000000
  %47 = getelementptr inbounds float, ptr %12, i64 2
  store float %46, ptr %47, align 8, !tbaa !50
  %48 = getelementptr inbounds float, ptr %12, i64 4
  %49 = getelementptr inbounds float, ptr %4, i64 3
  %50 = load float, ptr %49, align 4, !tbaa !50
  %51 = fdiv float 1.000000e+00, %50
  %52 = load float, ptr %4, align 4, !tbaa !50
  %53 = tail call float @llvm.fmuladd.f32(float %52, float %51, float 1.000000e+00)
  %54 = tail call float @llvm.fmuladd.f32(float %28, float %53, float %32)
  store float %54, ptr %48, align 16, !tbaa !50
  %55 = getelementptr inbounds float, ptr %4, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !50
  %57 = tail call float @llvm.fmuladd.f32(float %56, float %51, float 1.000000e+00)
  %58 = tail call float @llvm.fmuladd.f32(float %35, float %57, float %40)
  %59 = getelementptr inbounds float, ptr %12, i64 5
  store float %58, ptr %59, align 4, !tbaa !50
  %60 = getelementptr inbounds float, ptr %4, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !50
  %62 = fmul float %51, %61
  %63 = fmul float %62, 0x41E0000000000000
  %64 = getelementptr inbounds float, ptr %12, i64 6
  store float %63, ptr %64, align 8, !tbaa !50
  %65 = getelementptr inbounds float, ptr %12, i64 8
  %66 = getelementptr inbounds float, ptr %5, i64 3
  %67 = load float, ptr %66, align 4, !tbaa !50
  %68 = fdiv float 1.000000e+00, %67
  %69 = load float, ptr %5, align 4, !tbaa !50
  %70 = tail call float @llvm.fmuladd.f32(float %69, float %68, float 1.000000e+00)
  %71 = tail call float @llvm.fmuladd.f32(float %28, float %70, float %32)
  store float %71, ptr %65, align 16, !tbaa !50
  %72 = getelementptr inbounds float, ptr %5, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !50
  %74 = tail call float @llvm.fmuladd.f32(float %73, float %68, float 1.000000e+00)
  %75 = tail call float @llvm.fmuladd.f32(float %35, float %74, float %40)
  %76 = getelementptr inbounds float, ptr %12, i64 9
  store float %75, ptr %76, align 4, !tbaa !50
  %77 = getelementptr inbounds float, ptr %5, i64 2
  %78 = load float, ptr %77, align 4, !tbaa !50
  %79 = fmul float %68, %78
  %80 = fmul float %79, 0x41E0000000000000
  %81 = getelementptr inbounds float, ptr %12, i64 10
  store float %80, ptr %81, align 8, !tbaa !50
  %82 = getelementptr inbounds float, ptr %12, i64 12
  %83 = getelementptr inbounds float, ptr %6, i64 3
  %84 = load float, ptr %83, align 4, !tbaa !50
  %85 = fdiv float 1.000000e+00, %84
  %86 = load float, ptr %6, align 4, !tbaa !50
  %87 = tail call float @llvm.fmuladd.f32(float %86, float %85, float 1.000000e+00)
  %88 = tail call float @llvm.fmuladd.f32(float %28, float %87, float %32)
  store float %88, ptr %82, align 16, !tbaa !50
  %89 = getelementptr inbounds float, ptr %6, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !50
  %91 = tail call float @llvm.fmuladd.f32(float %90, float %85, float 1.000000e+00)
  %92 = tail call float @llvm.fmuladd.f32(float %35, float %91, float %40)
  %93 = getelementptr inbounds float, ptr %12, i64 13
  store float %92, ptr %93, align 4, !tbaa !50
  %94 = getelementptr inbounds float, ptr %6, i64 2
  %95 = load float, ptr %94, align 4, !tbaa !50
  %96 = fmul float %85, %95
  %97 = fmul float %96, 0x41E0000000000000
  %98 = getelementptr inbounds float, ptr %12, i64 14
  store float %97, ptr %98, align 8, !tbaa !50
  %99 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 34
  %100 = load ptr, ptr %99, align 8, !tbaa !99
  call void %100(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %48, ptr noundef nonnull %65, ptr noundef nonnull %82) #14
  br label %101

101:                                              ; preds = %17, %23, %22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zbuffer_solid(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [256 x %struct.ZbufProjectCache], align 16
  %7 = alloca [16 x %struct.ZSpan], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [4 x float], align 16
  %12 = alloca [4 x float], align 16
  %13 = alloca [4 x float], align 16
  %14 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 6144, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 3584, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !101
  %17 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !103
  %19 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !104
  %21 = and i32 %20, 294912
  %22 = icmp ne i32 %21, 32768
  %23 = and i32 %20, 786432
  %24 = icmp eq i32 %23, 786432
  %25 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !76
  %26 = and i32 %25, 1024
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  call void @unit_m4(ptr noundef nonnull %5) #14
  %29 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 27), align 4, !tbaa !92
  store float %29, ptr %5, align 16, !tbaa !50
  %30 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 26), align 8, !tbaa !93
  %31 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  store float %30, ptr %31, align 8, !tbaa !50
  %32 = fneg float %30
  %33 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2
  store float %32, ptr %33, align 16, !tbaa !50
  %34 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2, i64 2
  store float %29, ptr %34, align 8, !tbaa !50
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35), ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  br label %36

35:                                               ; preds = %4
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35)) #14
  br label %36

36:                                               ; preds = %28, %35
  %37 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %38 = call i16 @llvm.umax.i16(i16 %37, i16 1)
  %39 = sext i16 %38 to i32
  %40 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 19
  %41 = load i16, ptr %40, align 8, !tbaa !105
  %42 = sext i16 %41 to i32
  %43 = sub nsw i32 %39, %42
  %44 = call i32 @llvm.smin.i32(i32 %43, i32 4)
  %45 = icmp sgt i32 %43, 0
  br i1 %45, label %46, label %245

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %48 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 1
  %49 = getelementptr inbounds float, ptr %10, i64 1
  %50 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %51 = getelementptr inbounds float, ptr %10, i64 2
  %52 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 3
  %53 = getelementptr inbounds float, ptr %10, i64 3
  %54 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %55 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %56 = add nsw i32 %44, -1
  %57 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 5
  %58 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 4
  %59 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  %60 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 7
  %61 = zext i32 %56 to i64
  %62 = call i32 @llvm.smax.i32(i32 %44, i32 1)
  %63 = zext nneg i32 %62 to i64
  br label %64

64:                                               ; preds = %46, %242
  %65 = phi i64 [ 0, %46 ], [ %243, %242 ]
  %66 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65
  %67 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !107
  %68 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !108
  %69 = load i32, ptr %47, align 8, !tbaa !109
  %70 = shl nsw i32 %69, 1
  %71 = xor i32 %67, -1
  %72 = add i32 %70, %71
  %73 = sitofp i32 %72 to float
  %74 = sitofp i32 %67 to float
  %75 = fdiv float %73, %74
  store float %75, ptr %10, align 16, !tbaa !50
  %76 = load i32, ptr %48, align 4, !tbaa !110
  %77 = shl nsw i32 %76, 1
  %78 = sub i32 %77, %67
  %79 = add i32 %78, 1
  %80 = sitofp i32 %79 to float
  %81 = fdiv float %80, %74
  store float %81, ptr %49, align 4, !tbaa !50
  %82 = load i32, ptr %50, align 8, !tbaa !111
  %83 = shl nsw i32 %82, 1
  %84 = xor i32 %68, -1
  %85 = add i32 %83, %84
  %86 = sitofp i32 %85 to float
  %87 = sitofp i32 %68 to float
  %88 = fdiv float %86, %87
  store float %88, ptr %51, align 8, !tbaa !50
  %89 = load i32, ptr %52, align 4, !tbaa !112
  %90 = shl nsw i32 %89, 1
  %91 = sub i32 %90, %68
  %92 = add i32 %91, 1
  %93 = sitofp i32 %92 to float
  %94 = fdiv float %93, %87
  store float %94, ptr %53, align 4, !tbaa !50
  %95 = load i32, ptr %54, align 8, !tbaa !113
  %96 = load i32, ptr %55, align 4, !tbaa !114
  %97 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 19), align 4, !tbaa !115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %66, i8 0, i64 224, i1 false)
  store i32 %95, ptr %66, align 16, !tbaa !34
  %98 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 1
  store i32 %96, ptr %98, align 4, !tbaa !41
  %99 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %100 = sext i32 %96 to i64
  %101 = shl nsw i64 %100, 2
  %102 = call ptr %99(i64 noundef %101, ptr noundef nonnull @.str) #14
  %103 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 10
  store ptr %102, ptr %103, align 8, !tbaa !43
  %104 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %105 = call ptr %104(i64 noundef %101, ptr noundef nonnull @.str) #14
  %106 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 11
  store ptr %105, ptr %106, align 16, !tbaa !44
  %107 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 31
  store float %97, ptr %107, align 4, !tbaa !45
  %108 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !107
  %109 = sitofp i32 %108 to float
  %110 = fmul float %109, 5.000000e-01
  %111 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 12
  store float %110, ptr %111, align 8, !tbaa !57
  %112 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !108
  %113 = sitofp i32 %112 to float
  %114 = fmul float %113, 5.000000e-01
  %115 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 13
  store float %114, ptr %115, align 4, !tbaa !59
  %116 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !116
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %137, label %118

118:                                              ; preds = %64
  %119 = load i32, ptr %47, align 8, !tbaa !109
  %120 = sub nsw i32 0, %119
  %121 = sitofp i32 %120 to float
  %122 = load i16, ptr %40, align 8, !tbaa !105
  %123 = sext i16 %122 to i64
  %124 = add i64 %65, %123
  %125 = shl i64 %124, 32
  %126 = ashr exact i64 %125, 32
  %127 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %126
  %128 = load float, ptr %127, align 8, !tbaa !50
  %129 = fsub float %121, %128
  %130 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 14
  store float %129, ptr %130, align 16, !tbaa !58
  %131 = load i32, ptr %50, align 8, !tbaa !111
  %132 = sub nsw i32 0, %131
  %133 = sitofp i32 %132 to float
  %134 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %126, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !50
  %136 = fsub float %133, %135
  br label %161

137:                                              ; preds = %64
  %138 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 98, i32 8), align 2, !tbaa !117
  %139 = icmp eq i16 %138, 0
  %140 = load i32, ptr %47, align 8, !tbaa !109
  %141 = sub nsw i32 0, %140
  %142 = sitofp i32 %141 to float
  br i1 %139, label %156, label %143

143:                                              ; preds = %137
  %144 = sext i16 %138 to i64
  %145 = add nsw i64 %144, -1
  %146 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 40, i64 %145
  %147 = load float, ptr %146, align 8, !tbaa !50
  %148 = fsub float %142, %147
  %149 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 14
  store float %148, ptr %149, align 16, !tbaa !58
  %150 = load i32, ptr %50, align 8, !tbaa !111
  %151 = sub nsw i32 0, %150
  %152 = sitofp i32 %151 to float
  %153 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 40, i64 %145, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !50
  %155 = fsub float %152, %154
  br label %161

156:                                              ; preds = %137
  %157 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 14
  store float %142, ptr %157, align 16, !tbaa !58
  %158 = load i32, ptr %50, align 8, !tbaa !111
  %159 = sub nsw i32 0, %158
  %160 = sitofp i32 %159 to float
  br label %161

161:                                              ; preds = %143, %156, %118
  %162 = phi float [ %155, %143 ], [ %160, %156 ], [ %136, %118 ]
  %163 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 15
  store float %162, ptr %163, align 4, !tbaa !60
  %164 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 14
  %165 = load float, ptr %164, align 16, !tbaa !58
  %166 = fadd float %165, -5.000000e-01
  store float %166, ptr %164, align 16, !tbaa !58
  %167 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 15
  %168 = fadd float %162, -5.000000e-01
  store float %168, ptr %167, align 4, !tbaa !60
  %169 = icmp eq i64 %65, %61
  br i1 %169, label %170, label %180

170:                                              ; preds = %161
  %171 = load ptr, ptr %57, align 8, !tbaa !118
  %172 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 19
  store ptr %171, ptr %172, align 16, !tbaa !119
  %173 = load ptr, ptr %58, align 8, !tbaa !120
  %174 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 20
  store ptr %173, ptr %174, align 8, !tbaa !121
  %175 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 16
  br i1 %24, label %176, label %178

176:                                              ; preds = %170
  %177 = load ptr, ptr %60, align 8, !tbaa !122
  store ptr %177, ptr %175, align 8, !tbaa !123
  br label %208

178:                                              ; preds = %170
  %179 = load ptr, ptr %59, align 8, !tbaa !124
  store ptr %179, ptr %175, align 8, !tbaa !123
  br label %208

180:                                              ; preds = %161
  %181 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %182 = load i32, ptr %54, align 8, !tbaa !113
  %183 = sext i32 %182 to i64
  %184 = shl nsw i64 %183, 2
  %185 = load i32, ptr %55, align 4, !tbaa !114
  %186 = sext i32 %185 to i64
  %187 = mul i64 %184, %186
  %188 = call ptr %181(i64 noundef %187, ptr noundef nonnull @.str.1) #14
  %189 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 20
  store ptr %188, ptr %189, align 8, !tbaa !121
  %190 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %191 = load i32, ptr %54, align 8, !tbaa !113
  %192 = sext i32 %191 to i64
  %193 = shl nsw i64 %192, 2
  %194 = load i32, ptr %55, align 4, !tbaa !114
  %195 = sext i32 %194 to i64
  %196 = mul i64 %193, %195
  %197 = call ptr %190(i64 noundef %196, ptr noundef nonnull @.str.2) #14
  %198 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 19
  store ptr %197, ptr %198, align 16, !tbaa !119
  %199 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %200 = load i32, ptr %54, align 8, !tbaa !113
  %201 = sext i32 %200 to i64
  %202 = shl nsw i64 %201, 2
  %203 = load i32, ptr %55, align 4, !tbaa !114
  %204 = sext i32 %203 to i64
  %205 = mul i64 %202, %204
  %206 = call ptr %199(i64 noundef %205, ptr noundef nonnull @.str.3) #14
  %207 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 16
  store ptr %206, ptr %207, align 8, !tbaa !123
  br label %208

208:                                              ; preds = %176, %178, %180
  %209 = load i32, ptr %54, align 8, !tbaa !113
  %210 = load i32, ptr %55, align 4, !tbaa !114
  %211 = mul nsw i32 %210, %209
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %208
  %214 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 16
  %215 = load ptr, ptr %214, align 8, !tbaa !123
  br label %216

216:                                              ; preds = %213, %216
  %217 = phi ptr [ %220, %216 ], [ %215, %213 ]
  %218 = phi i32 [ %219, %216 ], [ %211, %213 ]
  %219 = add nsw i32 %218, -1
  store i32 2147483647, ptr %217, align 4, !tbaa !46
  %220 = getelementptr inbounds i32, ptr %217, i64 1
  %221 = icmp sgt i32 %218, 1
  br i1 %221, label %216, label %222, !llvm.loop !47

222:                                              ; preds = %216, %208
  %223 = load i32, ptr %54, align 8, !tbaa !113
  %224 = load i32, ptr %55, align 4, !tbaa !114
  %225 = mul nsw i32 %224, %223
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %222
  %228 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 19
  %229 = load ptr, ptr %228, align 16, !tbaa !119
  %230 = zext nneg i32 %225 to i64
  %231 = shl nuw nsw i64 %230, 2
  call void @llvm.memset.p0.i64(ptr align 4 %229, i8 0, i64 %231, i1 false), !tbaa !46
  br label %232

232:                                              ; preds = %227, %222
  %233 = load i32, ptr %54, align 8, !tbaa !113
  %234 = load i32, ptr %55, align 4, !tbaa !114
  %235 = mul nsw i32 %234, %233
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %232
  %238 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %65, i32 20
  %239 = load ptr, ptr %238, align 8, !tbaa !121
  %240 = zext nneg i32 %235 to i64
  %241 = shl nuw nsw i64 %240, 2
  call void @llvm.memset.p0.i64(ptr align 4 %239, i8 0, i64 %241, i1 false), !tbaa !46
  br label %242

242:                                              ; preds = %237, %232
  %243 = add nuw nsw i64 %65, 1
  %244 = icmp eq i64 %243, %63
  br i1 %244, label %245, label %64, !llvm.loop !125

245:                                              ; preds = %242, %36
  %246 = load i32, ptr %19, align 8, !tbaa !104
  %247 = lshr i32 %246, 18
  %248 = trunc i32 %247 to i16
  %249 = and i16 %248, 1
  %250 = icmp sgt i32 %43, 0
  %251 = or i32 %18, %16
  %252 = icmp sgt i32 %43, 0
  %253 = getelementptr inbounds [4 x float], ptr %8, i64 1
  %254 = getelementptr inbounds [4 x float], ptr %8, i64 2
  %255 = getelementptr inbounds [4 x float], ptr %8, i64 3
  %256 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  %257 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 1
  %258 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 1
  %259 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 1
  %260 = getelementptr inbounds float, ptr %11, i64 1
  %261 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  %262 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 2
  %263 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 2
  %264 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 2
  %265 = getelementptr inbounds float, ptr %11, i64 2
  %266 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %267 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 3
  %268 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 3
  %269 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 3
  %270 = getelementptr inbounds float, ptr %11, i64 3
  %271 = getelementptr inbounds float, ptr %10, i64 1
  %272 = getelementptr inbounds float, ptr %10, i64 3
  %273 = getelementptr inbounds float, ptr %10, i64 2
  %274 = getelementptr inbounds float, ptr %11, i64 1
  %275 = getelementptr inbounds float, ptr %11, i64 2
  %276 = getelementptr inbounds float, ptr %11, i64 3
  %277 = getelementptr inbounds [4 x float], ptr %8, i64 1
  %278 = getelementptr inbounds [4 x float], ptr %8, i64 2
  %279 = getelementptr inbounds [4 x float], ptr %8, i64 3
  %280 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  %281 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 1
  %282 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 1
  %283 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 1
  %284 = getelementptr inbounds float, ptr %12, i64 1
  %285 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  %286 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 2
  %287 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 2
  %288 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 2
  %289 = getelementptr inbounds float, ptr %12, i64 2
  %290 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %291 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 3
  %292 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 3
  %293 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 3
  %294 = getelementptr inbounds float, ptr %12, i64 3
  %295 = getelementptr inbounds float, ptr %10, i64 1
  %296 = getelementptr inbounds float, ptr %10, i64 3
  %297 = getelementptr inbounds float, ptr %10, i64 2
  %298 = getelementptr inbounds float, ptr %12, i64 1
  %299 = getelementptr inbounds float, ptr %12, i64 2
  %300 = getelementptr inbounds float, ptr %12, i64 3
  %301 = getelementptr inbounds [4 x float], ptr %8, i64 1
  %302 = getelementptr inbounds [4 x float], ptr %8, i64 2
  %303 = getelementptr inbounds [4 x float], ptr %8, i64 3
  %304 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  %305 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 1
  %306 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 1
  %307 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 1
  %308 = getelementptr inbounds float, ptr %13, i64 1
  %309 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  %310 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 2
  %311 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 2
  %312 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 2
  %313 = getelementptr inbounds float, ptr %13, i64 2
  %314 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %315 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 3
  %316 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 3
  %317 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 3
  %318 = getelementptr inbounds float, ptr %13, i64 3
  %319 = getelementptr inbounds float, ptr %10, i64 1
  %320 = getelementptr inbounds float, ptr %10, i64 3
  %321 = getelementptr inbounds float, ptr %10, i64 2
  %322 = getelementptr inbounds float, ptr %13, i64 1
  %323 = getelementptr inbounds float, ptr %13, i64 2
  %324 = getelementptr inbounds float, ptr %13, i64 3
  %325 = getelementptr inbounds [4 x float], ptr %8, i64 1
  %326 = getelementptr inbounds [4 x float], ptr %8, i64 2
  %327 = getelementptr inbounds [4 x float], ptr %8, i64 3
  %328 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  %329 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 1
  %330 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 1
  %331 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 1
  %332 = getelementptr inbounds float, ptr %14, i64 1
  %333 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  %334 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 2
  %335 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 2
  %336 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 2
  %337 = getelementptr inbounds float, ptr %14, i64 2
  %338 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %339 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 3
  %340 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 3
  %341 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 3
  %342 = getelementptr inbounds float, ptr %14, i64 3
  %343 = getelementptr inbounds float, ptr %10, i64 1
  %344 = getelementptr inbounds float, ptr %10, i64 3
  %345 = getelementptr inbounds float, ptr %10, i64 2
  %346 = getelementptr inbounds float, ptr %14, i64 1
  %347 = getelementptr inbounds float, ptr %14, i64 2
  %348 = getelementptr inbounds float, ptr %14, i64 3
  %349 = getelementptr inbounds float, ptr %14, i64 3
  %350 = getelementptr inbounds float, ptr %14, i64 1
  %351 = getelementptr inbounds float, ptr %14, i64 2
  %352 = icmp sgt i32 %43, 0
  %353 = icmp slt i32 %43, 1
  %354 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %355 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %356 = add nsw i32 %44, -1
  %357 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %358 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %359 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  %360 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %361 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %362 = call i32 @llvm.smax.i32(i32 %44, i32 1)
  %363 = call i32 @llvm.smax.i32(i32 %44, i32 1)
  %364 = call i32 @llvm.smax.i32(i32 %44, i32 1)
  %365 = zext i32 %356 to i64
  %366 = call i32 @llvm.smax.i32(i32 %44, i32 1)
  %367 = zext nneg i32 %362 to i64
  %368 = zext nneg i32 %363 to i64
  %369 = zext nneg i32 %364 to i64
  %370 = zext nneg i32 %366 to i64
  br label %371

371:                                              ; preds = %245, %1124
  %372 = phi ptr [ null, %245 ], [ %1077, %1124 ]
  %373 = phi i16 [ %249, %245 ], [ %1125, %1124 ]
  %374 = phi i16 [ 0, %245 ], [ %1076, %1124 ]
  %375 = phi i16 [ 0, %245 ], [ %1075, %1124 ]
  %376 = phi i16 [ 0, %245 ], [ %1074, %1124 ]
  %377 = phi i32 [ 0, %245 ], [ %1073, %1124 ]
  br i1 %250, label %378, label %390

378:                                              ; preds = %371
  %379 = icmp ne i16 %373, 0
  %380 = and i1 %24, %379
  %381 = select i1 %380, ptr @zbuffillGLinv4, ptr @zbuffillGL4
  br label %397

382:                                              ; preds = %1124
  %383 = icmp sgt i32 %43, 0
  br i1 %383, label %384, label %1167

384:                                              ; preds = %382
  %385 = icmp eq ptr %2, null
  %386 = add nsw i32 %44, -1
  %387 = zext i32 %386 to i64
  %388 = call i32 @llvm.smax.i32(i32 %44, i32 1)
  %389 = zext nneg i32 %388 to i64
  br label %1127

390:                                              ; preds = %397, %371
  %391 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 70), align 8, !tbaa !42
  %392 = icmp eq ptr %391, null
  br i1 %392, label %1072, label %393

393:                                              ; preds = %390
  %394 = icmp eq i16 %373, 0
  %395 = icmp ne i16 %373, 0
  %396 = and i1 %24, %395
  br label %403

397:                                              ; preds = %378, %397
  %398 = phi i64 [ 0, %378 ], [ %401, %397 ]
  %399 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %398, i32 34
  store ptr %381, ptr %399, align 16, !tbaa !99
  %400 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %398, i32 35
  store ptr @zbufline, ptr %400, align 8, !tbaa !62
  %401 = add nuw nsw i64 %398, 1
  %402 = icmp eq i64 %401, %367
  br i1 %402, label %390, label %397, !llvm.loop !126

403:                                              ; preds = %393, %1062
  %404 = phi ptr [ %391, %393 ], [ %1070, %1062 ]
  %405 = phi ptr [ %372, %393 ], [ %1068, %1062 ]
  %406 = phi i16 [ %374, %393 ], [ %1067, %1062 ]
  %407 = phi i16 [ %375, %393 ], [ %1066, %1062 ]
  %408 = phi i16 [ %376, %393 ], [ %1065, %1062 ]
  %409 = phi i32 [ %377, %393 ], [ %1064, %1062 ]
  %410 = phi i32 [ 0, %393 ], [ %1069, %1062 ]
  %411 = phi ptr [ null, %393 ], [ %1063, %1062 ]
  %412 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %404, i64 0, i32 2
  %413 = load ptr, ptr %412, align 8, !tbaa !127
  br i1 %394, label %419, label %414

414:                                              ; preds = %403
  %415 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %404, i64 0, i32 7
  %416 = load i32, ptr %415, align 8, !tbaa !129
  %417 = and i32 %416, %18
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %1062, label %425

419:                                              ; preds = %403
  br i1 %22, label %420, label %425

420:                                              ; preds = %419
  %421 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %404, i64 0, i32 7
  %422 = load i32, ptr %421, align 8, !tbaa !129
  %423 = and i32 %422, %251
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %1062, label %425

425:                                              ; preds = %419, %420, %414
  %426 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %404, i64 0, i32 11
  %427 = load i16, ptr %426, align 8, !tbaa !130
  %428 = and i16 %427, 3
  %429 = icmp eq i16 %428, 0
  br i1 %429, label %432, label %430

430:                                              ; preds = %425
  %431 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %404, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %431) #14
  br label %433

432:                                              ; preds = %425
  call void @copy_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  br label %433

433:                                              ; preds = %432, %430
  %434 = load ptr, ptr %412, align 8, !tbaa !127
  %435 = getelementptr inbounds %struct.ObjectRen, ptr %434, i64 0, i32 9
  %436 = call i32 @clip_render_object(ptr noundef nonnull %435, ptr noundef nonnull %10, ptr noundef nonnull %8) #14
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %1062

438:                                              ; preds = %433
  %439 = getelementptr inbounds %struct.ObjectRen, ptr %413, i64 0, i32 10
  %440 = load i32, ptr %439, align 8, !tbaa !131
  %441 = call i32 @llvm.smin.i32(i32 %440, i32 256)
  %442 = sext i32 %441 to i64
  %443 = mul nsw i64 %442, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %6, i8 0, i64 %443, i1 false)
  %444 = icmp sgt i32 %440, 0
  br i1 %444, label %445, label %447

445:                                              ; preds = %438
  %446 = zext nneg i32 %441 to i64
  br label %454

447:                                              ; preds = %454, %438
  %448 = getelementptr inbounds %struct.ObjectRen, ptr %413, i64 0, i32 11
  %449 = load i32, ptr %448, align 4, !tbaa !133
  %450 = icmp sgt i32 %449, 0
  br i1 %450, label %451, label %1062

451:                                              ; preds = %447
  %452 = getelementptr inbounds %struct.ObjectRen, ptr %413, i64 0, i32 19
  %453 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %404, i64 0, i32 7
  br label %459

454:                                              ; preds = %445, %454
  %455 = phi i64 [ 0, %445 ], [ %457, %454 ]
  %456 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %455
  store i32 -1, ptr %456, align 8, !tbaa !134
  %457 = add nuw nsw i64 %455, 1
  %458 = icmp eq i64 %457, %446
  br i1 %458, label %447, label %454, !llvm.loop !136

459:                                              ; preds = %451, %1057
  %460 = phi ptr [ %405, %451 ], [ %478, %1057 ]
  %461 = phi i16 [ %406, %451 ], [ %526, %1057 ]
  %462 = phi i16 [ %407, %451 ], [ %525, %1057 ]
  %463 = phi i16 [ %408, %451 ], [ %524, %1057 ]
  %464 = phi i32 [ %409, %451 ], [ %1058, %1057 ]
  %465 = phi i32 [ 0, %451 ], [ %1059, %1057 ]
  %466 = phi ptr [ %411, %451 ], [ %523, %1057 ]
  %467 = and i32 %465, 255
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %475

469:                                              ; preds = %459
  %470 = load ptr, ptr %452, align 8, !tbaa !137
  %471 = lshr exact i32 %465, 8
  %472 = zext nneg i32 %471 to i64
  %473 = getelementptr inbounds %struct.VlakTableNode, ptr %470, i64 %472
  %474 = load ptr, ptr %473, align 8, !tbaa !138
  br label %477

475:                                              ; preds = %459
  %476 = getelementptr inbounds %struct.VlakRen, ptr %460, i64 1
  br label %477

477:                                              ; preds = %475, %469
  %478 = phi ptr [ %474, %469 ], [ %476, %475 ]
  %479 = load i32, ptr %453, align 8, !tbaa !129
  %480 = and i32 %479, %16
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %516, label %482

482:                                              ; preds = %477
  %483 = getelementptr inbounds %struct.VlakRen, ptr %478, i64 0, i32 5
  %484 = load ptr, ptr %483, align 8, !tbaa !140
  %485 = icmp eq ptr %484, %466
  br i1 %485, label %522, label %486

486:                                              ; preds = %482
  %487 = getelementptr inbounds %struct.Material, ptr %484, i64 0, i32 51
  %488 = load i32, ptr %487, align 4, !tbaa !142
  %489 = and i32 %488, 8192
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %497

491:                                              ; preds = %486
  %492 = and i32 %488, 65536
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %497, label %494

494:                                              ; preds = %491
  %495 = and i32 %488, 64
  %496 = icmp ne i32 %495, 0
  br label %497

497:                                              ; preds = %491, %494, %486
  %498 = phi i1 [ true, %486 ], [ false, %491 ], [ %496, %494 ]
  %499 = zext i1 %498 to i16
  %500 = trunc i32 %488 to i16
  %501 = and i16 %500, 512
  %502 = getelementptr inbounds %struct.Material, ptr %484, i64 0, i32 2
  %503 = load i16, ptr %502, align 8, !tbaa !146
  %504 = icmp eq i16 %503, 3
  %505 = zext i1 %504 to i16
  br i1 %252, label %506, label %522

506:                                              ; preds = %497
  %507 = and i32 %488, 256
  %508 = icmp ne i32 %507, 0
  %509 = select i1 %508, i1 true, i1 %396
  %510 = select i1 %509, ptr @zbuffillGLinv4, ptr @zbuffillGL4
  br label %511

511:                                              ; preds = %506, %511
  %512 = phi i64 [ 0, %506 ], [ %514, %511 ]
  %513 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %512, i32 34
  store ptr %510, ptr %513, align 16, !tbaa !99
  %514 = add nuw nsw i64 %512, 1
  %515 = icmp eq i64 %514, %368
  br i1 %515, label %522, label %511, !llvm.loop !147

516:                                              ; preds = %477
  %517 = and i32 %479, %18
  %518 = icmp eq i32 %517, 0
  %519 = select i1 %22, i1 %518, i1 false
  %520 = zext i1 %519 to i16
  %521 = select i1 %519, i16 %462, i16 1
  br label %522

522:                                              ; preds = %511, %497, %516, %482
  %523 = phi ptr [ %466, %482 ], [ null, %516 ], [ %484, %497 ], [ %484, %511 ]
  %524 = phi i16 [ %463, %482 ], [ %520, %516 ], [ %499, %497 ], [ %499, %511 ]
  %525 = phi i16 [ %462, %482 ], [ %521, %516 ], [ %501, %497 ], [ %501, %511 ]
  %526 = phi i16 [ %461, %482 ], [ %461, %516 ], [ %505, %497 ], [ %505, %511 ]
  %527 = getelementptr inbounds %struct.VlakRen, ptr %478, i64 0, i32 7
  %528 = load i8, ptr %527, align 1, !tbaa !148
  %529 = and i8 %528, 2
  %530 = icmp eq i8 %529, 0
  %531 = icmp eq i16 %524, 0
  %532 = select i1 %530, i1 %531, i1 false
  br i1 %532, label %533, label %1057

533:                                              ; preds = %522
  %534 = load ptr, ptr %478, align 8, !tbaa !149
  %535 = getelementptr inbounds %struct.VlakRen, ptr %478, i64 0, i32 1
  %536 = load ptr, ptr %535, align 8, !tbaa !150
  %537 = getelementptr inbounds %struct.VlakRen, ptr %478, i64 0, i32 2
  %538 = load ptr, ptr %537, align 8, !tbaa !151
  %539 = getelementptr inbounds %struct.VlakRen, ptr %478, i64 0, i32 3
  %540 = load ptr, ptr %539, align 8, !tbaa !152
  %541 = getelementptr inbounds %struct.VertRen, ptr %534, i64 0, i32 5
  %542 = load i32, ptr %541, align 8, !tbaa !153
  %543 = and i32 %542, 255
  %544 = zext nneg i32 %543 to i64
  %545 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %544
  %546 = load i32, ptr %545, align 8, !tbaa !134
  %547 = icmp eq i32 %546, %542
  br i1 %547, label %548, label %559

548:                                              ; preds = %533
  %549 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %544, i32 2
  %550 = load float, ptr %549, align 8, !tbaa !50
  store float %550, ptr %11, align 16, !tbaa !50
  %551 = getelementptr inbounds float, ptr %549, i64 1
  %552 = load float, ptr %551, align 4, !tbaa !50
  store float %552, ptr %274, align 4, !tbaa !50
  %553 = getelementptr inbounds float, ptr %549, i64 2
  %554 = load float, ptr %553, align 8, !tbaa !50
  store float %554, ptr %275, align 8, !tbaa !50
  %555 = getelementptr inbounds float, ptr %549, i64 3
  %556 = load float, ptr %555, align 4, !tbaa !50
  store float %556, ptr %276, align 4, !tbaa !50
  %557 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %544, i32 1
  %558 = load i32, ptr %557, align 4, !tbaa !155
  br label %625

559:                                              ; preds = %533
  %560 = load float, ptr %534, align 4, !tbaa !50
  %561 = getelementptr inbounds float, ptr %534, i64 1
  %562 = load float, ptr %561, align 4, !tbaa !50
  %563 = getelementptr inbounds float, ptr %534, i64 2
  %564 = load float, ptr %563, align 4, !tbaa !50
  %565 = load float, ptr %8, align 16, !tbaa !50
  %566 = load float, ptr %253, align 16, !tbaa !50
  %567 = fmul float %562, %566
  %568 = call float @llvm.fmuladd.f32(float %560, float %565, float %567)
  %569 = load float, ptr %254, align 16, !tbaa !50
  %570 = call float @llvm.fmuladd.f32(float %564, float %569, float %568)
  %571 = load float, ptr %255, align 16, !tbaa !50
  %572 = fadd float %571, %570
  store float %572, ptr %11, align 16, !tbaa !50
  %573 = load float, ptr %256, align 4, !tbaa !50
  %574 = load float, ptr %257, align 4, !tbaa !50
  %575 = fmul float %562, %574
  %576 = call float @llvm.fmuladd.f32(float %560, float %573, float %575)
  %577 = load float, ptr %258, align 4, !tbaa !50
  %578 = call float @llvm.fmuladd.f32(float %564, float %577, float %576)
  %579 = load float, ptr %259, align 4, !tbaa !50
  %580 = fadd float %579, %578
  store float %580, ptr %260, align 4, !tbaa !50
  %581 = load float, ptr %261, align 8, !tbaa !50
  %582 = load float, ptr %262, align 8, !tbaa !50
  %583 = fmul float %562, %582
  %584 = call float @llvm.fmuladd.f32(float %560, float %581, float %583)
  %585 = load float, ptr %263, align 8, !tbaa !50
  %586 = call float @llvm.fmuladd.f32(float %564, float %585, float %584)
  %587 = load float, ptr %264, align 8, !tbaa !50
  %588 = fadd float %587, %586
  store float %588, ptr %265, align 8, !tbaa !50
  %589 = load float, ptr %266, align 4, !tbaa !50
  %590 = load float, ptr %267, align 4, !tbaa !50
  %591 = fmul float %562, %590
  %592 = call float @llvm.fmuladd.f32(float %560, float %589, float %591)
  %593 = load float, ptr %268, align 4, !tbaa !50
  %594 = call float @llvm.fmuladd.f32(float %564, float %593, float %592)
  %595 = load float, ptr %269, align 4, !tbaa !50
  %596 = fadd float %595, %594
  store float %596, ptr %270, align 4, !tbaa !50
  %597 = load float, ptr %10, align 16, !tbaa !50
  %598 = fmul float %596, %597
  %599 = fcmp olt float %572, %598
  br i1 %599, label %605, label %600

600:                                              ; preds = %559
  %601 = load float, ptr %271, align 4, !tbaa !50
  %602 = fmul float %596, %601
  %603 = fcmp ogt float %572, %602
  br i1 %603, label %604, label %605

604:                                              ; preds = %600
  br label %605

605:                                              ; preds = %604, %600, %559
  %606 = phi i32 [ 2, %604 ], [ 0, %600 ], [ 1, %559 ]
  %607 = load float, ptr %272, align 4, !tbaa !50
  %608 = fmul float %596, %607
  %609 = fcmp ogt float %580, %608
  br i1 %609, label %610, label %612

610:                                              ; preds = %605
  %611 = or disjoint i32 %606, 4
  br label %618

612:                                              ; preds = %605
  %613 = load float, ptr %273, align 8, !tbaa !50
  %614 = fmul float %596, %613
  %615 = fcmp olt float %580, %614
  br i1 %615, label %616, label %618

616:                                              ; preds = %612
  %617 = or disjoint i32 %606, 8
  br label %618

618:                                              ; preds = %616, %612, %610
  %619 = phi i32 [ %611, %610 ], [ %617, %616 ], [ %606, %612 ]
  %620 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %544, i32 2
  store float %572, ptr %620, align 8, !tbaa !50
  %621 = getelementptr inbounds float, ptr %620, i64 1
  store float %580, ptr %621, align 4, !tbaa !50
  %622 = getelementptr inbounds float, ptr %620, i64 2
  store float %588, ptr %622, align 8, !tbaa !50
  %623 = getelementptr inbounds float, ptr %620, i64 3
  store float %596, ptr %623, align 4, !tbaa !50
  %624 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %544, i32 1
  store i32 %619, ptr %624, align 4, !tbaa !155
  store i32 %542, ptr %545, align 8, !tbaa !134
  br label %625

625:                                              ; preds = %548, %618
  %626 = phi float [ %556, %548 ], [ %596, %618 ]
  %627 = phi float [ %554, %548 ], [ %588, %618 ]
  %628 = phi float [ %552, %548 ], [ %580, %618 ]
  %629 = phi float [ %550, %548 ], [ %572, %618 ]
  %630 = phi i32 [ %558, %548 ], [ %619, %618 ]
  %631 = getelementptr inbounds %struct.VertRen, ptr %536, i64 0, i32 5
  %632 = load i32, ptr %631, align 8, !tbaa !153
  %633 = and i32 %632, 255
  %634 = zext nneg i32 %633 to i64
  %635 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %634
  %636 = load i32, ptr %635, align 8, !tbaa !134
  %637 = icmp eq i32 %636, %632
  br i1 %637, label %638, label %649

638:                                              ; preds = %625
  %639 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %634, i32 2
  %640 = load float, ptr %639, align 8, !tbaa !50
  store float %640, ptr %12, align 16, !tbaa !50
  %641 = getelementptr inbounds float, ptr %639, i64 1
  %642 = load float, ptr %641, align 4, !tbaa !50
  store float %642, ptr %298, align 4, !tbaa !50
  %643 = getelementptr inbounds float, ptr %639, i64 2
  %644 = load float, ptr %643, align 8, !tbaa !50
  store float %644, ptr %299, align 8, !tbaa !50
  %645 = getelementptr inbounds float, ptr %639, i64 3
  %646 = load float, ptr %645, align 4, !tbaa !50
  store float %646, ptr %300, align 4, !tbaa !50
  %647 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %634, i32 1
  %648 = load i32, ptr %647, align 4, !tbaa !155
  br label %715

649:                                              ; preds = %625
  %650 = load float, ptr %536, align 4, !tbaa !50
  %651 = getelementptr inbounds float, ptr %536, i64 1
  %652 = load float, ptr %651, align 4, !tbaa !50
  %653 = getelementptr inbounds float, ptr %536, i64 2
  %654 = load float, ptr %653, align 4, !tbaa !50
  %655 = load float, ptr %8, align 16, !tbaa !50
  %656 = load float, ptr %277, align 16, !tbaa !50
  %657 = fmul float %652, %656
  %658 = call float @llvm.fmuladd.f32(float %650, float %655, float %657)
  %659 = load float, ptr %278, align 16, !tbaa !50
  %660 = call float @llvm.fmuladd.f32(float %654, float %659, float %658)
  %661 = load float, ptr %279, align 16, !tbaa !50
  %662 = fadd float %661, %660
  store float %662, ptr %12, align 16, !tbaa !50
  %663 = load float, ptr %280, align 4, !tbaa !50
  %664 = load float, ptr %281, align 4, !tbaa !50
  %665 = fmul float %652, %664
  %666 = call float @llvm.fmuladd.f32(float %650, float %663, float %665)
  %667 = load float, ptr %282, align 4, !tbaa !50
  %668 = call float @llvm.fmuladd.f32(float %654, float %667, float %666)
  %669 = load float, ptr %283, align 4, !tbaa !50
  %670 = fadd float %669, %668
  store float %670, ptr %284, align 4, !tbaa !50
  %671 = load float, ptr %285, align 8, !tbaa !50
  %672 = load float, ptr %286, align 8, !tbaa !50
  %673 = fmul float %652, %672
  %674 = call float @llvm.fmuladd.f32(float %650, float %671, float %673)
  %675 = load float, ptr %287, align 8, !tbaa !50
  %676 = call float @llvm.fmuladd.f32(float %654, float %675, float %674)
  %677 = load float, ptr %288, align 8, !tbaa !50
  %678 = fadd float %677, %676
  store float %678, ptr %289, align 8, !tbaa !50
  %679 = load float, ptr %290, align 4, !tbaa !50
  %680 = load float, ptr %291, align 4, !tbaa !50
  %681 = fmul float %652, %680
  %682 = call float @llvm.fmuladd.f32(float %650, float %679, float %681)
  %683 = load float, ptr %292, align 4, !tbaa !50
  %684 = call float @llvm.fmuladd.f32(float %654, float %683, float %682)
  %685 = load float, ptr %293, align 4, !tbaa !50
  %686 = fadd float %685, %684
  store float %686, ptr %294, align 4, !tbaa !50
  %687 = load float, ptr %10, align 16, !tbaa !50
  %688 = fmul float %686, %687
  %689 = fcmp olt float %662, %688
  br i1 %689, label %695, label %690

690:                                              ; preds = %649
  %691 = load float, ptr %295, align 4, !tbaa !50
  %692 = fmul float %686, %691
  %693 = fcmp ogt float %662, %692
  br i1 %693, label %694, label %695

694:                                              ; preds = %690
  br label %695

695:                                              ; preds = %694, %690, %649
  %696 = phi i32 [ 2, %694 ], [ 0, %690 ], [ 1, %649 ]
  %697 = load float, ptr %296, align 4, !tbaa !50
  %698 = fmul float %686, %697
  %699 = fcmp ogt float %670, %698
  br i1 %699, label %700, label %702

700:                                              ; preds = %695
  %701 = or disjoint i32 %696, 4
  br label %708

702:                                              ; preds = %695
  %703 = load float, ptr %297, align 8, !tbaa !50
  %704 = fmul float %686, %703
  %705 = fcmp olt float %670, %704
  br i1 %705, label %706, label %708

706:                                              ; preds = %702
  %707 = or disjoint i32 %696, 8
  br label %708

708:                                              ; preds = %706, %702, %700
  %709 = phi i32 [ %701, %700 ], [ %707, %706 ], [ %696, %702 ]
  %710 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %634, i32 2
  store float %662, ptr %710, align 8, !tbaa !50
  %711 = getelementptr inbounds float, ptr %710, i64 1
  store float %670, ptr %711, align 4, !tbaa !50
  %712 = getelementptr inbounds float, ptr %710, i64 2
  store float %678, ptr %712, align 8, !tbaa !50
  %713 = getelementptr inbounds float, ptr %710, i64 3
  store float %686, ptr %713, align 4, !tbaa !50
  %714 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %634, i32 1
  store i32 %709, ptr %714, align 4, !tbaa !155
  store i32 %632, ptr %635, align 8, !tbaa !134
  br label %715

715:                                              ; preds = %638, %708
  %716 = phi float [ %646, %638 ], [ %686, %708 ]
  %717 = phi float [ %644, %638 ], [ %678, %708 ]
  %718 = phi float [ %642, %638 ], [ %670, %708 ]
  %719 = phi float [ %640, %638 ], [ %662, %708 ]
  %720 = phi i32 [ %648, %638 ], [ %709, %708 ]
  %721 = getelementptr inbounds %struct.VertRen, ptr %538, i64 0, i32 5
  %722 = load i32, ptr %721, align 8, !tbaa !153
  %723 = and i32 %722, 255
  %724 = zext nneg i32 %723 to i64
  %725 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %724
  %726 = load i32, ptr %725, align 8, !tbaa !134
  %727 = icmp eq i32 %726, %722
  br i1 %727, label %728, label %739

728:                                              ; preds = %715
  %729 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %724, i32 2
  %730 = load float, ptr %729, align 8, !tbaa !50
  store float %730, ptr %13, align 16, !tbaa !50
  %731 = getelementptr inbounds float, ptr %729, i64 1
  %732 = load float, ptr %731, align 4, !tbaa !50
  store float %732, ptr %322, align 4, !tbaa !50
  %733 = getelementptr inbounds float, ptr %729, i64 2
  %734 = load float, ptr %733, align 8, !tbaa !50
  store float %734, ptr %323, align 8, !tbaa !50
  %735 = getelementptr inbounds float, ptr %729, i64 3
  %736 = load float, ptr %735, align 4, !tbaa !50
  store float %736, ptr %324, align 4, !tbaa !50
  %737 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %724, i32 1
  %738 = load i32, ptr %737, align 4, !tbaa !155
  br label %805

739:                                              ; preds = %715
  %740 = load float, ptr %538, align 4, !tbaa !50
  %741 = getelementptr inbounds float, ptr %538, i64 1
  %742 = load float, ptr %741, align 4, !tbaa !50
  %743 = getelementptr inbounds float, ptr %538, i64 2
  %744 = load float, ptr %743, align 4, !tbaa !50
  %745 = load float, ptr %8, align 16, !tbaa !50
  %746 = load float, ptr %301, align 16, !tbaa !50
  %747 = fmul float %742, %746
  %748 = call float @llvm.fmuladd.f32(float %740, float %745, float %747)
  %749 = load float, ptr %302, align 16, !tbaa !50
  %750 = call float @llvm.fmuladd.f32(float %744, float %749, float %748)
  %751 = load float, ptr %303, align 16, !tbaa !50
  %752 = fadd float %751, %750
  store float %752, ptr %13, align 16, !tbaa !50
  %753 = load float, ptr %304, align 4, !tbaa !50
  %754 = load float, ptr %305, align 4, !tbaa !50
  %755 = fmul float %742, %754
  %756 = call float @llvm.fmuladd.f32(float %740, float %753, float %755)
  %757 = load float, ptr %306, align 4, !tbaa !50
  %758 = call float @llvm.fmuladd.f32(float %744, float %757, float %756)
  %759 = load float, ptr %307, align 4, !tbaa !50
  %760 = fadd float %759, %758
  store float %760, ptr %308, align 4, !tbaa !50
  %761 = load float, ptr %309, align 8, !tbaa !50
  %762 = load float, ptr %310, align 8, !tbaa !50
  %763 = fmul float %742, %762
  %764 = call float @llvm.fmuladd.f32(float %740, float %761, float %763)
  %765 = load float, ptr %311, align 8, !tbaa !50
  %766 = call float @llvm.fmuladd.f32(float %744, float %765, float %764)
  %767 = load float, ptr %312, align 8, !tbaa !50
  %768 = fadd float %767, %766
  store float %768, ptr %313, align 8, !tbaa !50
  %769 = load float, ptr %314, align 4, !tbaa !50
  %770 = load float, ptr %315, align 4, !tbaa !50
  %771 = fmul float %742, %770
  %772 = call float @llvm.fmuladd.f32(float %740, float %769, float %771)
  %773 = load float, ptr %316, align 4, !tbaa !50
  %774 = call float @llvm.fmuladd.f32(float %744, float %773, float %772)
  %775 = load float, ptr %317, align 4, !tbaa !50
  %776 = fadd float %775, %774
  store float %776, ptr %318, align 4, !tbaa !50
  %777 = load float, ptr %10, align 16, !tbaa !50
  %778 = fmul float %776, %777
  %779 = fcmp olt float %752, %778
  br i1 %779, label %785, label %780

780:                                              ; preds = %739
  %781 = load float, ptr %319, align 4, !tbaa !50
  %782 = fmul float %776, %781
  %783 = fcmp ogt float %752, %782
  br i1 %783, label %784, label %785

784:                                              ; preds = %780
  br label %785

785:                                              ; preds = %784, %780, %739
  %786 = phi i32 [ 2, %784 ], [ 0, %780 ], [ 1, %739 ]
  %787 = load float, ptr %320, align 4, !tbaa !50
  %788 = fmul float %776, %787
  %789 = fcmp ogt float %760, %788
  br i1 %789, label %790, label %792

790:                                              ; preds = %785
  %791 = or disjoint i32 %786, 4
  br label %798

792:                                              ; preds = %785
  %793 = load float, ptr %321, align 8, !tbaa !50
  %794 = fmul float %776, %793
  %795 = fcmp olt float %760, %794
  br i1 %795, label %796, label %798

796:                                              ; preds = %792
  %797 = or disjoint i32 %786, 8
  br label %798

798:                                              ; preds = %796, %792, %790
  %799 = phi i32 [ %791, %790 ], [ %797, %796 ], [ %786, %792 ]
  %800 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %724, i32 2
  store float %752, ptr %800, align 8, !tbaa !50
  %801 = getelementptr inbounds float, ptr %800, i64 1
  store float %760, ptr %801, align 4, !tbaa !50
  %802 = getelementptr inbounds float, ptr %800, i64 2
  store float %768, ptr %802, align 8, !tbaa !50
  %803 = getelementptr inbounds float, ptr %800, i64 3
  store float %776, ptr %803, align 4, !tbaa !50
  %804 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %724, i32 1
  store i32 %799, ptr %804, align 4, !tbaa !155
  store i32 %722, ptr %725, align 8, !tbaa !134
  br label %805

805:                                              ; preds = %728, %798
  %806 = phi float [ %736, %728 ], [ %776, %798 ]
  %807 = phi float [ %734, %728 ], [ %768, %798 ]
  %808 = phi float [ %732, %728 ], [ %760, %798 ]
  %809 = phi float [ %730, %728 ], [ %752, %798 ]
  %810 = phi i32 [ %738, %728 ], [ %799, %798 ]
  %811 = and i32 %720, %630
  %812 = and i32 %811, %810
  %813 = icmp eq ptr %540, null
  br i1 %813, label %902, label %814

814:                                              ; preds = %805
  %815 = getelementptr inbounds %struct.VertRen, ptr %540, i64 0, i32 5
  %816 = load i32, ptr %815, align 8, !tbaa !153
  %817 = and i32 %816, 255
  %818 = zext nneg i32 %817 to i64
  %819 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %818
  %820 = load i32, ptr %819, align 8, !tbaa !134
  %821 = icmp eq i32 %820, %816
  br i1 %821, label %822, label %833

822:                                              ; preds = %814
  %823 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %818, i32 2
  %824 = load float, ptr %823, align 8, !tbaa !50
  store float %824, ptr %14, align 16, !tbaa !50
  %825 = getelementptr inbounds float, ptr %823, i64 1
  %826 = load float, ptr %825, align 4, !tbaa !50
  store float %826, ptr %346, align 4, !tbaa !50
  %827 = getelementptr inbounds float, ptr %823, i64 2
  %828 = load float, ptr %827, align 8, !tbaa !50
  store float %828, ptr %347, align 8, !tbaa !50
  %829 = getelementptr inbounds float, ptr %823, i64 3
  %830 = load float, ptr %829, align 4, !tbaa !50
  store float %830, ptr %348, align 4, !tbaa !50
  %831 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %818, i32 1
  %832 = load i32, ptr %831, align 4, !tbaa !155
  br label %899

833:                                              ; preds = %814
  %834 = load float, ptr %540, align 4, !tbaa !50
  %835 = getelementptr inbounds float, ptr %540, i64 1
  %836 = load float, ptr %835, align 4, !tbaa !50
  %837 = getelementptr inbounds float, ptr %540, i64 2
  %838 = load float, ptr %837, align 4, !tbaa !50
  %839 = load float, ptr %8, align 16, !tbaa !50
  %840 = load float, ptr %325, align 16, !tbaa !50
  %841 = fmul float %836, %840
  %842 = call float @llvm.fmuladd.f32(float %834, float %839, float %841)
  %843 = load float, ptr %326, align 16, !tbaa !50
  %844 = call float @llvm.fmuladd.f32(float %838, float %843, float %842)
  %845 = load float, ptr %327, align 16, !tbaa !50
  %846 = fadd float %845, %844
  store float %846, ptr %14, align 16, !tbaa !50
  %847 = load float, ptr %328, align 4, !tbaa !50
  %848 = load float, ptr %329, align 4, !tbaa !50
  %849 = fmul float %836, %848
  %850 = call float @llvm.fmuladd.f32(float %834, float %847, float %849)
  %851 = load float, ptr %330, align 4, !tbaa !50
  %852 = call float @llvm.fmuladd.f32(float %838, float %851, float %850)
  %853 = load float, ptr %331, align 4, !tbaa !50
  %854 = fadd float %853, %852
  store float %854, ptr %332, align 4, !tbaa !50
  %855 = load float, ptr %333, align 8, !tbaa !50
  %856 = load float, ptr %334, align 8, !tbaa !50
  %857 = fmul float %836, %856
  %858 = call float @llvm.fmuladd.f32(float %834, float %855, float %857)
  %859 = load float, ptr %335, align 8, !tbaa !50
  %860 = call float @llvm.fmuladd.f32(float %838, float %859, float %858)
  %861 = load float, ptr %336, align 8, !tbaa !50
  %862 = fadd float %861, %860
  store float %862, ptr %337, align 8, !tbaa !50
  %863 = load float, ptr %338, align 4, !tbaa !50
  %864 = load float, ptr %339, align 4, !tbaa !50
  %865 = fmul float %836, %864
  %866 = call float @llvm.fmuladd.f32(float %834, float %863, float %865)
  %867 = load float, ptr %340, align 4, !tbaa !50
  %868 = call float @llvm.fmuladd.f32(float %838, float %867, float %866)
  %869 = load float, ptr %341, align 4, !tbaa !50
  %870 = fadd float %869, %868
  store float %870, ptr %342, align 4, !tbaa !50
  %871 = load float, ptr %10, align 16, !tbaa !50
  %872 = fmul float %870, %871
  %873 = fcmp olt float %846, %872
  br i1 %873, label %879, label %874

874:                                              ; preds = %833
  %875 = load float, ptr %343, align 4, !tbaa !50
  %876 = fmul float %870, %875
  %877 = fcmp ogt float %846, %876
  br i1 %877, label %878, label %879

878:                                              ; preds = %874
  br label %879

879:                                              ; preds = %878, %874, %833
  %880 = phi i32 [ 2, %878 ], [ 0, %874 ], [ 1, %833 ]
  %881 = load float, ptr %344, align 4, !tbaa !50
  %882 = fmul float %870, %881
  %883 = fcmp ogt float %854, %882
  br i1 %883, label %884, label %886

884:                                              ; preds = %879
  %885 = or disjoint i32 %880, 4
  br label %892

886:                                              ; preds = %879
  %887 = load float, ptr %345, align 8, !tbaa !50
  %888 = fmul float %870, %887
  %889 = fcmp olt float %854, %888
  br i1 %889, label %890, label %892

890:                                              ; preds = %886
  %891 = or disjoint i32 %880, 8
  br label %892

892:                                              ; preds = %890, %886, %884
  %893 = phi i32 [ %885, %884 ], [ %891, %890 ], [ %880, %886 ]
  %894 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %818, i32 2
  store float %846, ptr %894, align 8, !tbaa !50
  %895 = getelementptr inbounds float, ptr %894, i64 1
  store float %854, ptr %895, align 4, !tbaa !50
  %896 = getelementptr inbounds float, ptr %894, i64 2
  store float %862, ptr %896, align 8, !tbaa !50
  %897 = getelementptr inbounds float, ptr %894, i64 3
  store float %870, ptr %897, align 4, !tbaa !50
  %898 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %818, i32 1
  store i32 %893, ptr %898, align 4, !tbaa !155
  store i32 %816, ptr %819, align 8, !tbaa !134
  br label %899

899:                                              ; preds = %822, %892
  %900 = phi i32 [ %832, %822 ], [ %893, %892 ]
  %901 = and i32 %900, %812
  br label %902

902:                                              ; preds = %899, %805
  %903 = phi i32 [ %900, %899 ], [ %464, %805 ]
  %904 = phi i32 [ %901, %899 ], [ %812, %805 ]
  %905 = and i32 %904, 65535
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %907, label %1057

907:                                              ; preds = %902
  %908 = icmp eq i16 %525, 0
  %909 = add nuw nsw i32 %465, 1
  %910 = select i1 %908, i32 %909, i32 -1
  %911 = call float @llvm.fabs.f32(float %626)
  %912 = fadd float %911, 0x3E80000000000000
  %913 = fneg float %912
  %914 = fcmp olt float %629, %913
  br i1 %914, label %918, label %915

915:                                              ; preds = %907
  %916 = fcmp ogt float %629, %912
  br i1 %916, label %917, label %918

917:                                              ; preds = %915
  br label %918

918:                                              ; preds = %917, %915, %907
  %919 = phi i16 [ 2, %917 ], [ 0, %915 ], [ 1, %907 ]
  %920 = fcmp ogt float %628, %912
  br i1 %920, label %921, label %923

921:                                              ; preds = %918
  %922 = or disjoint i16 %919, 4
  br label %927

923:                                              ; preds = %918
  %924 = fcmp olt float %628, %913
  br i1 %924, label %925, label %927

925:                                              ; preds = %923
  %926 = or disjoint i16 %919, 8
  br label %927

927:                                              ; preds = %925, %923, %921
  %928 = phi i16 [ %922, %921 ], [ %926, %925 ], [ %919, %923 ]
  %929 = fcmp olt float %627, %913
  br i1 %929, label %930, label %932

930:                                              ; preds = %927
  %931 = add nsw i16 %928, 16
  br label %936

932:                                              ; preds = %927
  %933 = fcmp ogt float %627, %912
  br i1 %933, label %934, label %936

934:                                              ; preds = %932
  %935 = add nsw i16 %928, 32
  br label %936

936:                                              ; preds = %930, %932, %934
  %937 = phi i16 [ %931, %930 ], [ %935, %934 ], [ %928, %932 ]
  %938 = zext nneg i16 %937 to i32
  %939 = call float @llvm.fabs.f32(float %716)
  %940 = fadd float %939, 0x3E80000000000000
  %941 = fneg float %940
  %942 = fcmp olt float %719, %941
  br i1 %942, label %946, label %943

943:                                              ; preds = %936
  %944 = fcmp ogt float %719, %940
  br i1 %944, label %945, label %946

945:                                              ; preds = %943
  br label %946

946:                                              ; preds = %945, %943, %936
  %947 = phi i16 [ 2, %945 ], [ 0, %943 ], [ 1, %936 ]
  %948 = fcmp ogt float %718, %940
  br i1 %948, label %949, label %951

949:                                              ; preds = %946
  %950 = or disjoint i16 %947, 4
  br label %955

951:                                              ; preds = %946
  %952 = fcmp olt float %718, %941
  br i1 %952, label %953, label %955

953:                                              ; preds = %951
  %954 = or disjoint i16 %947, 8
  br label %955

955:                                              ; preds = %953, %951, %949
  %956 = phi i16 [ %950, %949 ], [ %954, %953 ], [ %947, %951 ]
  %957 = fcmp olt float %717, %941
  br i1 %957, label %958, label %960

958:                                              ; preds = %955
  %959 = add nsw i16 %956, 16
  br label %964

960:                                              ; preds = %955
  %961 = fcmp ogt float %717, %940
  br i1 %961, label %962, label %964

962:                                              ; preds = %960
  %963 = add nsw i16 %956, 32
  br label %964

964:                                              ; preds = %958, %960, %962
  %965 = phi i16 [ %959, %958 ], [ %963, %962 ], [ %956, %960 ]
  %966 = zext nneg i16 %965 to i32
  %967 = call float @llvm.fabs.f32(float %806)
  %968 = fadd float %967, 0x3E80000000000000
  %969 = fneg float %968
  %970 = fcmp olt float %809, %969
  br i1 %970, label %974, label %971

971:                                              ; preds = %964
  %972 = fcmp ogt float %809, %968
  br i1 %972, label %973, label %974

973:                                              ; preds = %971
  br label %974

974:                                              ; preds = %973, %971, %964
  %975 = phi i16 [ 2, %973 ], [ 0, %971 ], [ 1, %964 ]
  %976 = fcmp ogt float %808, %968
  br i1 %976, label %977, label %979

977:                                              ; preds = %974
  %978 = or disjoint i16 %975, 4
  br label %983

979:                                              ; preds = %974
  %980 = fcmp olt float %808, %969
  br i1 %980, label %981, label %983

981:                                              ; preds = %979
  %982 = or disjoint i16 %975, 8
  br label %983

983:                                              ; preds = %981, %979, %977
  %984 = phi i16 [ %978, %977 ], [ %982, %981 ], [ %975, %979 ]
  %985 = fcmp olt float %807, %969
  br i1 %985, label %986, label %988

986:                                              ; preds = %983
  %987 = add nsw i16 %984, 16
  br label %992

988:                                              ; preds = %983
  %989 = fcmp ogt float %807, %968
  br i1 %989, label %990, label %992

990:                                              ; preds = %988
  %991 = add nsw i16 %984, 32
  br label %992

992:                                              ; preds = %986, %988, %990
  %993 = phi i16 [ %987, %986 ], [ %991, %990 ], [ %984, %988 ]
  %994 = zext nneg i16 %993 to i32
  br i1 %813, label %1028, label %995

995:                                              ; preds = %992
  %996 = load float, ptr %349, align 4, !tbaa !50
  %997 = call float @llvm.fabs.f32(float %996)
  %998 = fadd float %997, 0x3E80000000000000
  %999 = load float, ptr %14, align 16, !tbaa !50
  %1000 = fneg float %998
  %1001 = fcmp olt float %999, %1000
  br i1 %1001, label %1005, label %1002

1002:                                             ; preds = %995
  %1003 = fcmp ogt float %999, %998
  br i1 %1003, label %1004, label %1005

1004:                                             ; preds = %1002
  br label %1005

1005:                                             ; preds = %1004, %1002, %995
  %1006 = phi i16 [ 2, %1004 ], [ 0, %1002 ], [ 1, %995 ]
  %1007 = load float, ptr %350, align 4, !tbaa !50
  %1008 = fcmp ogt float %1007, %998
  br i1 %1008, label %1009, label %1011

1009:                                             ; preds = %1005
  %1010 = or disjoint i16 %1006, 4
  br label %1015

1011:                                             ; preds = %1005
  %1012 = fcmp olt float %1007, %1000
  br i1 %1012, label %1013, label %1015

1013:                                             ; preds = %1011
  %1014 = or disjoint i16 %1006, 8
  br label %1015

1015:                                             ; preds = %1013, %1011, %1009
  %1016 = phi i16 [ %1010, %1009 ], [ %1014, %1013 ], [ %1006, %1011 ]
  %1017 = load float, ptr %351, align 8, !tbaa !50
  %1018 = fcmp olt float %1017, %1000
  br i1 %1018, label %1019, label %1021

1019:                                             ; preds = %1015
  %1020 = add nsw i16 %1016, 16
  br label %1025

1021:                                             ; preds = %1015
  %1022 = fcmp ogt float %1017, %998
  br i1 %1022, label %1023, label %1025

1023:                                             ; preds = %1021
  %1024 = add nsw i16 %1016, 32
  br label %1025

1025:                                             ; preds = %1019, %1021, %1023
  %1026 = phi i16 [ %1020, %1019 ], [ %1024, %1023 ], [ %1016, %1021 ]
  %1027 = zext nneg i16 %1026 to i32
  br label %1028

1028:                                             ; preds = %1025, %992
  %1029 = phi i32 [ %1027, %1025 ], [ %903, %992 ]
  br i1 %352, label %1030, label %1057

1030:                                             ; preds = %1028
  %1031 = icmp eq i16 %526, 0
  %1032 = getelementptr inbounds %struct.VlakRen, ptr %478, i64 0, i32 8
  %1033 = getelementptr inbounds %struct.VlakRen, ptr %478, i64 0, i32 8
  %1034 = add nuw nsw i32 %465, 134217729
  %1035 = select i1 %908, i32 %1034, i32 -1
  br label %1036

1036:                                             ; preds = %1030, %1054
  %1037 = phi i64 [ 0, %1030 ], [ %1055, %1054 ]
  %1038 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %1037
  br i1 %1031, label %1046, label %1039

1039:                                             ; preds = %1036
  br i1 %813, label %1043, label %1040

1040:                                             ; preds = %1039
  %1041 = load i8, ptr %1032, align 2, !tbaa !156
  %1042 = zext i8 %1041 to i32
  call void @zbufclipwire(ptr noundef nonnull %1038, i32 noundef %410, i32 noundef %910, i32 noundef %1042, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, i32 noundef %938, i32 noundef %966, i32 noundef %994, i32 noundef %1029)
  br label %1054

1043:                                             ; preds = %1039
  %1044 = load i8, ptr %1033, align 2, !tbaa !156
  %1045 = zext i8 %1044 to i32
  call void @zbufclipwire(ptr noundef nonnull %1038, i32 noundef %410, i32 noundef %910, i32 noundef %1045, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef null, i32 noundef %938, i32 noundef %966, i32 noundef %994, i32 noundef 0)
  br label %1054

1046:                                             ; preds = %1036
  br i1 %813, label %1053, label %1047

1047:                                             ; preds = %1046
  %1048 = load i8, ptr %527, align 1, !tbaa !148
  %1049 = and i8 %1048, 4
  %1050 = icmp eq i8 %1049, 0
  br i1 %1050, label %1052, label %1051

1051:                                             ; preds = %1047
  call void @zbufclip4(ptr noundef nonnull %1038, i32 noundef %410, i32 noundef %910, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, i32 noundef %938, i32 noundef %966, i32 noundef %994, i32 noundef %1029)
  br label %1054

1052:                                             ; preds = %1047
  call void @zbufclip(ptr noundef nonnull %1038, i32 noundef %410, i32 noundef %910, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %938, i32 noundef %966, i32 noundef %994)
  call void @zbufclip(ptr noundef nonnull %1038, i32 noundef %410, i32 noundef %1035, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %14, i32 noundef %938, i32 noundef %994, i32 noundef %1029)
  br label %1054

1053:                                             ; preds = %1046
  call void @zbufclip(ptr noundef nonnull %1038, i32 noundef %410, i32 noundef %910, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %938, i32 noundef %966, i32 noundef %994)
  br label %1054

1054:                                             ; preds = %1053, %1043, %1040, %1052, %1051
  %1055 = add nuw nsw i64 %1037, 1
  %1056 = icmp eq i64 %1055, %369
  br i1 %1056, label %1057, label %1036, !llvm.loop !157

1057:                                             ; preds = %1054, %1028, %902, %522
  %1058 = phi i32 [ %464, %522 ], [ %903, %902 ], [ %1029, %1028 ], [ %1029, %1054 ]
  %1059 = add nuw nsw i32 %465, 1
  %1060 = load i32, ptr %448, align 4, !tbaa !133
  %1061 = icmp slt i32 %1059, %1060
  br i1 %1061, label %459, label %1062, !llvm.loop !158

1062:                                             ; preds = %1057, %447, %433, %420, %414
  %1063 = phi ptr [ %411, %414 ], [ %411, %433 ], [ %411, %420 ], [ %411, %447 ], [ %523, %1057 ]
  %1064 = phi i32 [ %409, %414 ], [ %409, %433 ], [ %409, %420 ], [ %409, %447 ], [ %1058, %1057 ]
  %1065 = phi i16 [ %408, %414 ], [ %408, %433 ], [ %408, %420 ], [ %408, %447 ], [ %524, %1057 ]
  %1066 = phi i16 [ %407, %414 ], [ %407, %433 ], [ %407, %420 ], [ %407, %447 ], [ %525, %1057 ]
  %1067 = phi i16 [ %406, %414 ], [ %406, %433 ], [ %406, %420 ], [ %406, %447 ], [ %526, %1057 ]
  %1068 = phi ptr [ %405, %414 ], [ %405, %433 ], [ %405, %420 ], [ %405, %447 ], [ %478, %1057 ]
  %1069 = add nuw nsw i32 %410, 1
  %1070 = load ptr, ptr %404, align 8, !tbaa !42
  %1071 = icmp eq ptr %1070, null
  br i1 %1071, label %1072, label %403, !llvm.loop !159

1072:                                             ; preds = %1062, %390
  %1073 = phi i32 [ %377, %390 ], [ %1064, %1062 ]
  %1074 = phi i16 [ %376, %390 ], [ %1065, %1062 ]
  %1075 = phi i16 [ %375, %390 ], [ %1066, %1062 ]
  %1076 = phi i16 [ %374, %390 ], [ %1067, %1062 ]
  %1077 = phi ptr [ %372, %390 ], [ %1068, %1062 ]
  %1078 = icmp eq i16 %373, 0
  %1079 = or i1 %1078, %353
  br i1 %1079, label %1124, label %1080

1080:                                             ; preds = %1072, %1121
  %1081 = phi i64 [ %1122, %1121 ], [ 0, %1072 ]
  %1082 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %1081, i32 16
  %1083 = load ptr, ptr %1082, align 8, !tbaa !123
  br i1 %24, label %1084, label %1116

1084:                                             ; preds = %1080
  %1085 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %1081, i32 21
  store ptr %1083, ptr %1085, align 16, !tbaa !160
  %1086 = icmp eq i64 %1081, %365
  br i1 %1086, label %1087, label %1089

1087:                                             ; preds = %1084
  %1088 = load ptr, ptr %359, align 8, !tbaa !124
  br label %1098

1089:                                             ; preds = %1084
  %1090 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %1091 = load i32, ptr %357, align 8, !tbaa !113
  %1092 = sext i32 %1091 to i64
  %1093 = shl nsw i64 %1092, 2
  %1094 = load i32, ptr %358, align 4, !tbaa !114
  %1095 = sext i32 %1094 to i64
  %1096 = mul i64 %1093, %1095
  %1097 = call ptr %1090(i64 noundef %1096, ptr noundef nonnull @.str.3) #14
  br label %1098

1098:                                             ; preds = %1089, %1087
  %1099 = phi ptr [ %1097, %1089 ], [ %1088, %1087 ]
  store ptr %1099, ptr %1082, align 8, !tbaa !123
  %1100 = load i32, ptr %360, align 8, !tbaa !113
  %1101 = load i32, ptr %361, align 4, !tbaa !114
  %1102 = mul nsw i32 %1101, %1100
  %1103 = icmp sgt i32 %1102, 0
  br i1 %1103, label %1104, label %1110

1104:                                             ; preds = %1098, %1104
  %1105 = phi ptr [ %1108, %1104 ], [ %1099, %1098 ]
  %1106 = phi i32 [ %1107, %1104 ], [ %1102, %1098 ]
  %1107 = add nsw i32 %1106, -1
  store i32 2147483647, ptr %1105, align 4, !tbaa !46
  %1108 = getelementptr inbounds i32, ptr %1105, i64 1
  %1109 = icmp sgt i32 %1106, 1
  br i1 %1109, label %1104, label %1110, !llvm.loop !47

1110:                                             ; preds = %1104, %1098
  %1111 = load ptr, ptr %1085, align 16, !tbaa !160
  %1112 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %1081, i32 19
  %1113 = load ptr, ptr %1112, align 16, !tbaa !119
  %1114 = load i32, ptr %360, align 8, !tbaa !113
  %1115 = load i32, ptr %361, align 4, !tbaa !114
  call fastcc void @zmask_rect(ptr noundef %1111, ptr noundef %1113, i32 noundef %1114, i32 noundef %1115, i32 noundef 1)
  br label %1121

1116:                                             ; preds = %1080
  %1117 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %1081, i32 19
  %1118 = load ptr, ptr %1117, align 16, !tbaa !119
  %1119 = load i32, ptr %354, align 8, !tbaa !113
  %1120 = load i32, ptr %355, align 4, !tbaa !114
  call fastcc void @zmask_rect(ptr noundef %1083, ptr noundef %1118, i32 noundef %1119, i32 noundef %1120, i32 noundef 0)
  br label %1121

1121:                                             ; preds = %1110, %1116
  %1122 = add nuw nsw i64 %1081, 1
  %1123 = icmp eq i64 %1122, %370
  br i1 %1123, label %1124, label %1080, !llvm.loop !161

1124:                                             ; preds = %1121, %1072
  %1125 = add nsw i16 %373, -1
  %1126 = icmp sgt i16 %373, 0
  br i1 %1126, label %371, label %382, !llvm.loop !162

1127:                                             ; preds = %384, %1164
  %1128 = phi i64 [ 0, %384 ], [ %1165, %1164 ]
  br i1 %385, label %1135, label %1129

1129:                                             ; preds = %1127
  %1130 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %1128
  %1131 = load i16, ptr %40, align 8, !tbaa !105
  %1132 = sext i16 %1131 to i32
  %1133 = trunc i64 %1128 to i32
  %1134 = add nsw i32 %1133, %1132
  call void %2(ptr noundef %0, ptr noundef nonnull %1130, i32 noundef %1134, ptr noundef %3) #14
  br label %1135

1135:                                             ; preds = %1129, %1127
  %1136 = icmp eq i64 %1128, %387
  br i1 %1136, label %1152, label %1137

1137:                                             ; preds = %1135
  %1138 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  %1139 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %1128, i32 16
  %1140 = load ptr, ptr %1139, align 8, !tbaa !123
  call void %1138(ptr noundef %1140) #14
  %1141 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  %1142 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %1128, i32 19
  %1143 = load ptr, ptr %1142, align 16, !tbaa !119
  call void %1141(ptr noundef %1143) #14
  %1144 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  %1145 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %1128, i32 20
  %1146 = load ptr, ptr %1145, align 8, !tbaa !121
  call void %1144(ptr noundef %1146) #14
  %1147 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %1128, i32 21
  %1148 = load ptr, ptr %1147, align 16, !tbaa !160
  %1149 = icmp eq ptr %1148, null
  br i1 %1149, label %1152, label %1150

1150:                                             ; preds = %1137
  %1151 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %1151(ptr noundef nonnull %1148) #14
  br label %1152

1152:                                             ; preds = %1137, %1150, %1135
  %1153 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %1128, i32 10
  %1154 = load ptr, ptr %1153, align 8, !tbaa !43
  %1155 = icmp eq ptr %1154, null
  br i1 %1155, label %1158, label %1156

1156:                                             ; preds = %1152
  %1157 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %1157(ptr noundef nonnull %1154) #14
  br label %1158

1158:                                             ; preds = %1156, %1152
  %1159 = getelementptr inbounds [16 x %struct.ZSpan], ptr %7, i64 0, i64 %1128, i32 11
  %1160 = load ptr, ptr %1159, align 16, !tbaa !44
  %1161 = icmp eq ptr %1160, null
  br i1 %1161, label %1164, label %1162

1162:                                             ; preds = %1158
  %1163 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %1163(ptr noundef nonnull %1160) #14
  br label %1164

1164:                                             ; preds = %1158, %1162
  %1165 = add nuw nsw i64 %1128, 1
  %1166 = icmp eq i64 %1165, %389
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1153, i8 0, i64 16, i1 false)
  br i1 %1166, label %1167, label %1127, !llvm.loop !163

1167:                                             ; preds = %1164, %382
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 3584, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 6144, ptr nonnull %6) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @zbuffillGLinv4(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #7 {
  %8 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = add nsw i32 %9, 1
  %11 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 4
  store i32 %10, ptr %11, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 2
  store i32 %10, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 5
  store i32 -1, ptr %13, align 4, !tbaa !65
  %14 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 3
  store i32 -1, ptr %14, align 4, !tbaa !66
  %15 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 9
  %16 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 8
  %17 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 32, i1 false)
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %3, ptr noundef %4)
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %4, ptr noundef %5)
  %18 = icmp eq ptr %6, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %6)
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %3)
  br label %21

20:                                               ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %5, ptr noundef %3)
  br label %21

21:                                               ; preds = %20, %19
  %22 = load ptr, ptr %16, align 8, !tbaa !67
  %23 = icmp eq ptr %22, null
  br i1 %23, label %190, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %15, align 8, !tbaa !68
  %26 = icmp eq ptr %25, null
  br i1 %26, label %190, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %12, align 8, !tbaa !64
  %29 = load i32, ptr %11, align 8, !tbaa !63
  %30 = tail call i32 @llvm.smax.i32(i32 %28, i32 %29)
  %31 = load i32, ptr %14, align 4, !tbaa !66
  %32 = load i32, ptr %13, align 4, !tbaa !65
  %33 = tail call i32 @llvm.smin.i32(i32 %31, i32 %32)
  %34 = icmp slt i32 %33, %30
  br i1 %34, label %190, label %35

35:                                               ; preds = %27
  %36 = load float, ptr %3, align 4, !tbaa !50
  %37 = load float, ptr %4, align 4, !tbaa !50
  %38 = fsub float %36, %37
  %39 = load float, ptr %5, align 4, !tbaa !50
  %40 = fsub float %37, %39
  %41 = getelementptr inbounds float, ptr %3, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !50
  %43 = getelementptr inbounds float, ptr %4, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !50
  %45 = fsub float %42, %44
  %46 = getelementptr inbounds float, ptr %5, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !50
  %48 = fsub float %44, %47
  %49 = fneg float %45
  %50 = fmul float %40, %49
  %51 = tail call float @llvm.fmuladd.f32(float %38, float %48, float %50)
  %52 = fcmp oeq float %51, 0.000000e+00
  br i1 %52, label %190, label %53

53:                                               ; preds = %35
  %54 = getelementptr inbounds float, ptr %3, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !50
  %56 = getelementptr inbounds float, ptr %4, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !50
  %58 = fsub float %55, %57
  %59 = getelementptr inbounds float, ptr %5, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !50
  %61 = fsub float %57, %60
  %62 = fneg float %38
  %63 = fmul float %61, %62
  %64 = tail call float @llvm.fmuladd.f32(float %58, float %40, float %63)
  %65 = fneg float %58
  %66 = fmul float %48, %65
  %67 = tail call float @llvm.fmuladd.f32(float %45, float %61, float %66)
  %68 = fpext float %67 to double
  %69 = fneg double %68
  %70 = fpext float %51 to double
  %71 = fdiv double %69, %70
  %72 = fpext float %64 to double
  %73 = fneg double %72
  %74 = fdiv double %73, %70
  %75 = load i32, ptr %0, align 8, !tbaa !34
  %76 = icmp slt i32 %33, %30
  br i1 %76, label %190, label %77

77:                                               ; preds = %53
  %78 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  %79 = load ptr, ptr %78, align 8, !tbaa !43
  %80 = add nsw i32 %33, %30
  %81 = sdiv i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, ptr %79, i64 %82
  %84 = load float, ptr %83, align 4, !tbaa !50
  %85 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  %86 = load ptr, ptr %85, align 8, !tbaa !44
  %87 = getelementptr inbounds float, ptr %86, i64 %82
  %88 = load float, ptr %87, align 4, !tbaa !50
  %89 = fcmp olt float %84, %88
  %90 = sext i32 %33 to i64
  %91 = getelementptr inbounds float, ptr %86, i64 %90
  %92 = getelementptr inbounds float, ptr %79, i64 %90
  %93 = select i1 %89, ptr %91, ptr %92
  %94 = select i1 %89, ptr %92, ptr %91
  %95 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 21
  %96 = load ptr, ptr %95, align 8, !tbaa !160
  %97 = mul nsw i32 %75, %33
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, ptr %96, i64 %98
  %100 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 20
  %101 = load ptr, ptr %100, align 8, !tbaa !121
  %102 = getelementptr inbounds i32, ptr %101, i64 %98
  %103 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 19
  %104 = load ptr, ptr %103, align 8, !tbaa !119
  %105 = getelementptr inbounds i32, ptr %104, i64 %98
  %106 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 16
  %107 = load ptr, ptr %106, align 8, !tbaa !123
  %108 = getelementptr inbounds i32, ptr %107, i64 %98
  %109 = sitofp i32 %33 to double
  %110 = fmul float %42, %64
  %111 = tail call float @llvm.fmuladd.f32(float %67, float %36, float %110)
  %112 = fdiv float %111, %51
  %113 = fadd float %55, %112
  %114 = fpext float %113 to double
  %115 = tail call double @llvm.fmuladd.f64(double %109, double %74, double %114)
  %116 = add nsw i32 %75, -1
  %117 = icmp eq ptr %96, null
  %118 = sext i32 %75 to i64
  %119 = sub nsw i64 0, %118
  br label %120

120:                                              ; preds = %77, %180
  %121 = phi double [ %115, %77 ], [ %181, %180 ]
  %122 = phi ptr [ %108, %77 ], [ %182, %180 ]
  %123 = phi i32 [ %33, %77 ], [ %186, %180 ]
  %124 = phi ptr [ %99, %77 ], [ %185, %180 ]
  %125 = phi ptr [ %105, %77 ], [ %183, %180 ]
  %126 = phi ptr [ %102, %77 ], [ %184, %180 ]
  %127 = phi ptr [ %93, %77 ], [ %188, %180 ]
  %128 = phi ptr [ %94, %77 ], [ %187, %180 ]
  %129 = load float, ptr %128, align 4, !tbaa !50
  %130 = tail call float @llvm.floor.f32(float %129)
  %131 = fptosi float %130 to i32
  %132 = load float, ptr %127, align 4, !tbaa !50
  %133 = tail call float @llvm.floor.f32(float %132)
  %134 = fptosi float %133 to i32
  %135 = icmp sgt i32 %75, %134
  %136 = select i1 %135, i32 %134, i32 %116
  %137 = tail call i32 @llvm.smax.i32(i32 %131, i32 -1)
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %180

139:                                              ; preds = %120
  %140 = add nsw i32 %137, 1
  %141 = sub nsw i32 %136, %140
  %142 = icmp sgt i32 %141, -1
  br i1 %142, label %143, label %180

143:                                              ; preds = %139
  %144 = sext i32 %140 to i64
  %145 = getelementptr inbounds i32, ptr %124, i64 %144
  %146 = getelementptr inbounds i32, ptr %126, i64 %144
  %147 = getelementptr inbounds i32, ptr %125, i64 %144
  %148 = getelementptr inbounds i32, ptr %122, i64 %144
  %149 = sitofp i32 %140 to double
  %150 = tail call double @llvm.fmuladd.f64(double %149, double %71, double %121)
  br label %151

151:                                              ; preds = %143, %172
  %152 = phi double [ %173, %172 ], [ %150, %143 ]
  %153 = phi i32 [ %178, %172 ], [ %141, %143 ]
  %154 = phi ptr [ %174, %172 ], [ %148, %143 ]
  %155 = phi ptr [ %177, %172 ], [ %145, %143 ]
  %156 = phi ptr [ %175, %172 ], [ %147, %143 ]
  %157 = phi ptr [ %176, %172 ], [ %146, %143 ]
  %158 = fcmp olt double %152, 0xC1E0000000000000
  %159 = fcmp ogt double %152, 0x41DFFFFFFFC00000
  %160 = select i1 %159, double 0x41DFFFFFFFC00000, double %152
  %161 = select i1 %158, double 0xC1E0000000000000, double %160
  %162 = fptosi double %161 to i32
  %163 = load i32, ptr %154, align 4, !tbaa !46
  %164 = icmp slt i32 %163, %162
  %165 = icmp eq i32 %163, 2147483647
  %166 = or i1 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %151
  br i1 %117, label %171, label %168

168:                                              ; preds = %167
  %169 = load i32, ptr %155, align 4, !tbaa !46
  %170 = icmp slt i32 %169, %162
  br i1 %170, label %171, label %172

171:                                              ; preds = %168, %167
  store i32 %1, ptr %157, align 4, !tbaa !46
  store i32 %162, ptr %154, align 4, !tbaa !46
  store i32 %2, ptr %156, align 4, !tbaa !46
  br label %172

172:                                              ; preds = %151, %168, %171
  %173 = fadd double %71, %152
  %174 = getelementptr inbounds i32, ptr %154, i64 1
  %175 = getelementptr inbounds i32, ptr %156, i64 1
  %176 = getelementptr inbounds i32, ptr %157, i64 1
  %177 = getelementptr inbounds i32, ptr %155, i64 1
  %178 = add nsw i32 %153, -1
  %179 = icmp sgt i32 %153, 0
  br i1 %179, label %151, label %180, !llvm.loop !164

180:                                              ; preds = %172, %139, %120
  %181 = fsub double %121, %74
  %182 = getelementptr inbounds i32, ptr %122, i64 %119
  %183 = getelementptr inbounds i32, ptr %125, i64 %119
  %184 = getelementptr inbounds i32, ptr %126, i64 %119
  %185 = getelementptr inbounds i32, ptr %124, i64 %119
  %186 = add nsw i32 %123, -1
  %187 = getelementptr inbounds float, ptr %128, i64 -1
  %188 = getelementptr inbounds float, ptr %127, i64 -1
  %189 = icmp sgt i32 %123, %30
  br i1 %189, label %120, label %190, !llvm.loop !165

190:                                              ; preds = %180, %53, %35, %27, %21, %24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @zbuffillGL4(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #7 {
  %8 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = add nsw i32 %9, 1
  %11 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 4
  store i32 %10, ptr %11, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 2
  store i32 %10, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 5
  store i32 -1, ptr %13, align 4, !tbaa !65
  %14 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 3
  store i32 -1, ptr %14, align 4, !tbaa !66
  %15 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 9
  %16 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 8
  %17 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 32, i1 false)
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %3, ptr noundef %4)
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %4, ptr noundef %5)
  %18 = icmp eq ptr %6, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %6)
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %3)
  br label %21

20:                                               ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %5, ptr noundef %3)
  br label %21

21:                                               ; preds = %20, %19
  %22 = load ptr, ptr %16, align 8, !tbaa !67
  %23 = icmp eq ptr %22, null
  br i1 %23, label %188, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %15, align 8, !tbaa !68
  %26 = icmp eq ptr %25, null
  br i1 %26, label %188, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %12, align 8, !tbaa !64
  %29 = load i32, ptr %11, align 8, !tbaa !63
  %30 = tail call i32 @llvm.smax.i32(i32 %28, i32 %29)
  %31 = load i32, ptr %14, align 4, !tbaa !66
  %32 = load i32, ptr %13, align 4, !tbaa !65
  %33 = tail call i32 @llvm.smin.i32(i32 %31, i32 %32)
  %34 = icmp slt i32 %33, %30
  br i1 %34, label %188, label %35

35:                                               ; preds = %27
  %36 = load float, ptr %3, align 4, !tbaa !50
  %37 = load float, ptr %4, align 4, !tbaa !50
  %38 = fsub float %36, %37
  %39 = load float, ptr %5, align 4, !tbaa !50
  %40 = fsub float %37, %39
  %41 = getelementptr inbounds float, ptr %3, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !50
  %43 = getelementptr inbounds float, ptr %4, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !50
  %45 = fsub float %42, %44
  %46 = getelementptr inbounds float, ptr %5, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !50
  %48 = fsub float %44, %47
  %49 = fneg float %45
  %50 = fmul float %40, %49
  %51 = tail call float @llvm.fmuladd.f32(float %38, float %48, float %50)
  %52 = fcmp oeq float %51, 0.000000e+00
  br i1 %52, label %188, label %53

53:                                               ; preds = %35
  %54 = getelementptr inbounds float, ptr %3, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !50
  %56 = getelementptr inbounds float, ptr %4, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !50
  %58 = fsub float %55, %57
  %59 = getelementptr inbounds float, ptr %5, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !50
  %61 = fsub float %57, %60
  %62 = fneg float %38
  %63 = fmul float %61, %62
  %64 = tail call float @llvm.fmuladd.f32(float %58, float %40, float %63)
  %65 = fneg float %58
  %66 = fmul float %48, %65
  %67 = tail call float @llvm.fmuladd.f32(float %45, float %61, float %66)
  %68 = fpext float %67 to double
  %69 = fneg double %68
  %70 = fpext float %51 to double
  %71 = fdiv double %69, %70
  %72 = fpext float %64 to double
  %73 = fneg double %72
  %74 = fdiv double %73, %70
  %75 = load i32, ptr %0, align 8, !tbaa !34
  %76 = icmp slt i32 %33, %30
  br i1 %76, label %188, label %77

77:                                               ; preds = %53
  %78 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  %79 = load ptr, ptr %78, align 8, !tbaa !43
  %80 = add nsw i32 %33, %30
  %81 = sdiv i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, ptr %79, i64 %82
  %84 = load float, ptr %83, align 4, !tbaa !50
  %85 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  %86 = load ptr, ptr %85, align 8, !tbaa !44
  %87 = getelementptr inbounds float, ptr %86, i64 %82
  %88 = load float, ptr %87, align 4, !tbaa !50
  %89 = fcmp olt float %84, %88
  %90 = sext i32 %33 to i64
  %91 = getelementptr inbounds float, ptr %86, i64 %90
  %92 = getelementptr inbounds float, ptr %79, i64 %90
  %93 = select i1 %89, ptr %91, ptr %92
  %94 = select i1 %89, ptr %92, ptr %91
  %95 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 21
  %96 = load ptr, ptr %95, align 8, !tbaa !160
  %97 = mul nsw i32 %75, %33
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, ptr %96, i64 %98
  %100 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 20
  %101 = load ptr, ptr %100, align 8, !tbaa !121
  %102 = getelementptr inbounds i32, ptr %101, i64 %98
  %103 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 19
  %104 = load ptr, ptr %103, align 8, !tbaa !119
  %105 = getelementptr inbounds i32, ptr %104, i64 %98
  %106 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 16
  %107 = load ptr, ptr %106, align 8, !tbaa !123
  %108 = getelementptr inbounds i32, ptr %107, i64 %98
  %109 = sitofp i32 %33 to double
  %110 = fmul float %42, %64
  %111 = tail call float @llvm.fmuladd.f32(float %67, float %36, float %110)
  %112 = fdiv float %111, %51
  %113 = fadd float %55, %112
  %114 = fpext float %113 to double
  %115 = tail call double @llvm.fmuladd.f64(double %109, double %74, double %114)
  %116 = add nsw i32 %75, -1
  %117 = icmp eq ptr %96, null
  %118 = sext i32 %75 to i64
  %119 = sub nsw i64 0, %118
  br label %120

120:                                              ; preds = %77, %178
  %121 = phi double [ %115, %77 ], [ %179, %178 ]
  %122 = phi ptr [ %108, %77 ], [ %180, %178 ]
  %123 = phi i32 [ %33, %77 ], [ %184, %178 ]
  %124 = phi ptr [ %99, %77 ], [ %183, %178 ]
  %125 = phi ptr [ %105, %77 ], [ %181, %178 ]
  %126 = phi ptr [ %102, %77 ], [ %182, %178 ]
  %127 = phi ptr [ %93, %77 ], [ %186, %178 ]
  %128 = phi ptr [ %94, %77 ], [ %185, %178 ]
  %129 = load float, ptr %128, align 4, !tbaa !50
  %130 = tail call float @llvm.floor.f32(float %129)
  %131 = fptosi float %130 to i32
  %132 = load float, ptr %127, align 4, !tbaa !50
  %133 = tail call float @llvm.floor.f32(float %132)
  %134 = fptosi float %133 to i32
  %135 = icmp sgt i32 %75, %134
  %136 = select i1 %135, i32 %134, i32 %116
  %137 = tail call i32 @llvm.smax.i32(i32 %131, i32 -1)
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %178

139:                                              ; preds = %120
  %140 = add nsw i32 %137, 1
  %141 = sub nsw i32 %136, %140
  %142 = icmp sgt i32 %141, -1
  br i1 %142, label %143, label %178

143:                                              ; preds = %139
  %144 = sext i32 %140 to i64
  %145 = getelementptr inbounds i32, ptr %124, i64 %144
  %146 = getelementptr inbounds i32, ptr %126, i64 %144
  %147 = getelementptr inbounds i32, ptr %125, i64 %144
  %148 = getelementptr inbounds i32, ptr %122, i64 %144
  %149 = sitofp i32 %140 to double
  %150 = tail call double @llvm.fmuladd.f64(double %149, double %71, double %121)
  br label %151

151:                                              ; preds = %143, %170
  %152 = phi double [ %171, %170 ], [ %150, %143 ]
  %153 = phi i32 [ %176, %170 ], [ %141, %143 ]
  %154 = phi ptr [ %172, %170 ], [ %148, %143 ]
  %155 = phi ptr [ %175, %170 ], [ %145, %143 ]
  %156 = phi ptr [ %173, %170 ], [ %147, %143 ]
  %157 = phi ptr [ %174, %170 ], [ %146, %143 ]
  %158 = fcmp olt double %152, 0xC1E0000000000000
  %159 = fcmp ogt double %152, 0x41DFFFFFFFC00000
  %160 = select i1 %159, double 0x41DFFFFFFFC00000, double %152
  %161 = select i1 %158, double 0xC1E0000000000000, double %160
  %162 = fptosi double %161 to i32
  %163 = load i32, ptr %154, align 4, !tbaa !46
  %164 = icmp sgt i32 %163, %162
  br i1 %164, label %165, label %170

165:                                              ; preds = %151
  br i1 %117, label %169, label %166

166:                                              ; preds = %165
  %167 = load i32, ptr %155, align 4, !tbaa !46
  %168 = icmp slt i32 %167, %162
  br i1 %168, label %169, label %170

169:                                              ; preds = %166, %165
  store i32 %162, ptr %154, align 4, !tbaa !46
  store i32 %2, ptr %156, align 4, !tbaa !46
  store i32 %1, ptr %157, align 4, !tbaa !46
  br label %170

170:                                              ; preds = %166, %169, %151
  %171 = fadd double %71, %152
  %172 = getelementptr inbounds i32, ptr %154, i64 1
  %173 = getelementptr inbounds i32, ptr %156, i64 1
  %174 = getelementptr inbounds i32, ptr %157, i64 1
  %175 = getelementptr inbounds i32, ptr %155, i64 1
  %176 = add nsw i32 %153, -1
  %177 = icmp sgt i32 %153, 0
  br i1 %177, label %151, label %178, !llvm.loop !166

178:                                              ; preds = %170, %139, %120
  %179 = fsub double %121, %74
  %180 = getelementptr inbounds i32, ptr %122, i64 %119
  %181 = getelementptr inbounds i32, ptr %125, i64 %119
  %182 = getelementptr inbounds i32, ptr %126, i64 %119
  %183 = getelementptr inbounds i32, ptr %124, i64 %119
  %184 = add nsw i32 %123, -1
  %185 = getelementptr inbounds float, ptr %128, i64 -1
  %186 = getelementptr inbounds float, ptr %127, i64 -1
  %187 = icmp sgt i32 %123, %30
  br i1 %187, label %120, label %188, !llvm.loop !167

188:                                              ; preds = %178, %53, %35, %27, %21, %24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @zbufline(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #7 {
  %6 = load float, ptr %4, align 4, !tbaa !50
  %7 = load float, ptr %3, align 4, !tbaa !50
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %4, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !50
  %11 = getelementptr inbounds float, ptr %3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !50
  %13 = fsub float %10, %12
  %14 = tail call float @llvm.fabs.f32(float %8)
  %15 = tail call float @llvm.fabs.f32(float %13)
  %16 = fcmp ogt float %14, %15
  br i1 %16, label %17, label %132

17:                                               ; preds = %5
  %18 = fcmp olt float %7, %6
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = fneg float %8
  %21 = fneg float %13
  br label %22

22:                                               ; preds = %17, %19
  %23 = phi ptr [ %4, %19 ], [ %3, %17 ]
  %24 = phi float [ %10, %19 ], [ %12, %17 ]
  %25 = phi float [ %6, %19 ], [ %7, %17 ]
  %26 = phi ptr [ %3, %19 ], [ %4, %17 ]
  %27 = phi float [ %20, %19 ], [ %8, %17 ]
  %28 = phi float [ %21, %19 ], [ %13, %17 ]
  %29 = getelementptr inbounds float, ptr %26, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !50
  %31 = getelementptr inbounds float, ptr %23, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !50
  %33 = tail call float @llvm.floor.f32(float %25)
  %34 = fptosi float %33 to i32
  %35 = sitofp i32 %34 to double
  %36 = tail call float @llvm.floor.f32(float %27)
  %37 = fpext float %36 to double
  %38 = fadd double %35, %37
  %39 = fptosi double %38 to i32
  %40 = load i32, ptr %0, align 8, !tbaa !34
  %41 = icmp sgt i32 %40, %39
  %42 = add nsw i32 %40, -1
  %43 = select i1 %41, i32 %39, i32 %42
  %44 = fdiv float %28, %27
  %45 = tail call float @llvm.floor.f32(float %32)
  %46 = fptosi float %45 to i32
  %47 = fsub float %30, %32
  %48 = fdiv float %47, %27
  %49 = tail call float @llvm.floor.f32(float %48)
  %50 = fptosi float %49 to i32
  %51 = icmp sgt i32 %46, 1342177280
  %52 = icmp sgt i32 %50, 0
  %53 = select i1 %51, i1 %52, i1 false
  %54 = icmp slt i32 %43, %34
  br i1 %54, label %248, label %55

55:                                               ; preds = %22
  %56 = fcmp olt float %44, 0.000000e+00
  %57 = sub nsw i32 0, %40
  %58 = select i1 %56, i32 %57, i32 %40
  %59 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 21
  %60 = load ptr, ptr %59, align 8, !tbaa !160
  %61 = tail call float @llvm.floor.f32(float %24)
  %62 = fptosi float %61 to i32
  %63 = mul nsw i32 %40, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %60, i64 %64
  %66 = sext i32 %34 to i64
  %67 = getelementptr inbounds i32, ptr %65, i64 %66
  %68 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 20
  %69 = load ptr, ptr %68, align 8, !tbaa !121
  %70 = getelementptr inbounds i32, ptr %69, i64 %64
  %71 = getelementptr inbounds i32, ptr %70, i64 %66
  %72 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 19
  %73 = load ptr, ptr %72, align 8, !tbaa !119
  %74 = getelementptr inbounds i32, ptr %73, i64 %64
  %75 = getelementptr inbounds i32, ptr %74, i64 %66
  %76 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 16
  %77 = load ptr, ptr %76, align 8, !tbaa !123
  %78 = getelementptr inbounds i32, ptr %77, i64 %64
  %79 = getelementptr inbounds i32, ptr %78, i64 %66
  %80 = sext i32 %58 to i64
  %81 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %82 = icmp eq ptr %60, null
  %83 = sub nsw i32 2147483632, %50
  br label %84

84:                                               ; preds = %55, %120
  %85 = phi i32 [ %46, %55 ], [ %125, %120 ]
  %86 = phi i32 [ %62, %55 ], [ %106, %120 ]
  %87 = phi i32 [ %34, %55 ], [ %126, %120 ]
  %88 = phi ptr [ %67, %55 ], [ %130, %120 ]
  %89 = phi ptr [ %71, %55 ], [ %129, %120 ]
  %90 = phi ptr [ %75, %55 ], [ %128, %120 ]
  %91 = phi ptr [ %79, %55 ], [ %127, %120 ]
  %92 = phi float [ %24, %55 ], [ %121, %120 ]
  %93 = tail call float @llvm.floor.f32(float %92)
  %94 = fptosi float %93 to i32
  %95 = icmp eq i32 %86, %94
  br i1 %95, label %101, label %96

96:                                               ; preds = %84
  %97 = getelementptr inbounds i32, ptr %91, i64 %80
  %98 = getelementptr inbounds i32, ptr %90, i64 %80
  %99 = getelementptr inbounds i32, ptr %89, i64 %80
  %100 = getelementptr inbounds i32, ptr %88, i64 %80
  br label %101

101:                                              ; preds = %96, %84
  %102 = phi ptr [ %97, %96 ], [ %91, %84 ]
  %103 = phi ptr [ %98, %96 ], [ %90, %84 ]
  %104 = phi ptr [ %99, %96 ], [ %89, %84 ]
  %105 = phi ptr [ %100, %96 ], [ %88, %84 ]
  %106 = phi i32 [ %94, %96 ], [ %86, %84 ]
  %107 = or i32 %87, %94
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %109, label %120

109:                                              ; preds = %101
  %110 = load i32, ptr %81, align 4, !tbaa !41
  %111 = icmp sgt i32 %110, %94
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load i32, ptr %102, align 4, !tbaa !46
  %114 = icmp slt i32 %85, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  br i1 %82, label %119, label %116

116:                                              ; preds = %115
  %117 = load i32, ptr %105, align 4, !tbaa !46
  %118 = icmp sgt i32 %85, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %116, %115
  store i32 %1, ptr %104, align 4, !tbaa !46
  store i32 %85, ptr %102, align 4, !tbaa !46
  store i32 %2, ptr %103, align 4, !tbaa !46
  br label %120

120:                                              ; preds = %112, %119, %116, %109, %101
  %121 = fadd float %44, %92
  %122 = icmp sgt i32 %85, %83
  %123 = select i1 %53, i1 %122, i1 false
  %124 = add nsw i32 %85, %50
  %125 = select i1 %123, i32 2147483632, i32 %124
  %126 = add i32 %87, 1
  %127 = getelementptr inbounds i32, ptr %102, i64 1
  %128 = getelementptr inbounds i32, ptr %103, i64 1
  %129 = getelementptr inbounds i32, ptr %104, i64 1
  %130 = getelementptr inbounds i32, ptr %105, i64 1
  %131 = icmp eq i32 %87, %43
  br i1 %131, label %248, label %84, !llvm.loop !168

132:                                              ; preds = %5
  %133 = fcmp olt float %12, %10
  br i1 %133, label %137, label %134

134:                                              ; preds = %132
  %135 = fneg float %8
  %136 = fneg float %13
  br label %137

137:                                              ; preds = %132, %134
  %138 = phi ptr [ %4, %134 ], [ %3, %132 ]
  %139 = phi float [ %10, %134 ], [ %12, %132 ]
  %140 = phi float [ %6, %134 ], [ %7, %132 ]
  %141 = phi ptr [ %3, %134 ], [ %4, %132 ]
  %142 = phi float [ %135, %134 ], [ %8, %132 ]
  %143 = phi float [ %136, %134 ], [ %13, %132 ]
  %144 = getelementptr inbounds float, ptr %141, i64 2
  %145 = load float, ptr %144, align 4, !tbaa !50
  %146 = getelementptr inbounds float, ptr %138, i64 2
  %147 = load float, ptr %146, align 4, !tbaa !50
  %148 = tail call float @llvm.floor.f32(float %139)
  %149 = fptosi float %148 to i32
  %150 = sitofp i32 %149 to double
  %151 = tail call float @llvm.floor.f32(float %143)
  %152 = fpext float %151 to double
  %153 = fadd double %150, %152
  %154 = fptosi double %153 to i32
  %155 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %156 = load i32, ptr %155, align 4, !tbaa !41
  %157 = icmp sgt i32 %156, %154
  %158 = add nsw i32 %156, -1
  %159 = select i1 %157, i32 %154, i32 %158
  %160 = fdiv float %142, %143
  %161 = tail call float @llvm.floor.f32(float %147)
  %162 = fptosi float %161 to i32
  %163 = fsub float %145, %147
  %164 = fdiv float %163, %143
  %165 = tail call float @llvm.floor.f32(float %164)
  %166 = fptosi float %165 to i32
  %167 = icmp sgt i32 %162, 1342177280
  %168 = icmp sgt i32 %166, 0
  %169 = select i1 %167, i1 %168, i1 false
  %170 = fcmp olt float %160, 0.000000e+00
  %171 = select i1 %170, i64 -1, i64 1
  %172 = icmp slt i32 %159, %149
  br i1 %172, label %248, label %173

173:                                              ; preds = %137
  %174 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 21
  %175 = load ptr, ptr %174, align 8, !tbaa !160
  %176 = load i32, ptr %0, align 8, !tbaa !34
  %177 = mul nsw i32 %176, %149
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, ptr %175, i64 %178
  %180 = tail call float @llvm.floor.f32(float %140)
  %181 = fptosi float %180 to i32
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, ptr %179, i64 %182
  %184 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 20
  %185 = load ptr, ptr %184, align 8, !tbaa !121
  %186 = getelementptr inbounds i32, ptr %185, i64 %178
  %187 = getelementptr inbounds i32, ptr %186, i64 %182
  %188 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 19
  %189 = load ptr, ptr %188, align 8, !tbaa !119
  %190 = getelementptr inbounds i32, ptr %189, i64 %178
  %191 = getelementptr inbounds i32, ptr %190, i64 %182
  %192 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 16
  %193 = load ptr, ptr %192, align 8, !tbaa !123
  %194 = getelementptr inbounds i32, ptr %193, i64 %178
  %195 = getelementptr inbounds i32, ptr %194, i64 %182
  %196 = icmp eq ptr %175, null
  %197 = sub nsw i32 2147483632, %166
  br label %198

198:                                              ; preds = %173, %234
  %199 = phi i32 [ %162, %173 ], [ %239, %234 ]
  %200 = phi i32 [ %181, %173 ], [ %220, %234 ]
  %201 = phi i32 [ %149, %173 ], [ %240, %234 ]
  %202 = phi ptr [ %183, %173 ], [ %246, %234 ]
  %203 = phi ptr [ %187, %173 ], [ %245, %234 ]
  %204 = phi ptr [ %191, %173 ], [ %244, %234 ]
  %205 = phi ptr [ %195, %173 ], [ %243, %234 ]
  %206 = phi float [ %140, %173 ], [ %235, %234 ]
  %207 = tail call float @llvm.floor.f32(float %206)
  %208 = fptosi float %207 to i32
  %209 = icmp eq i32 %200, %208
  br i1 %209, label %215, label %210

210:                                              ; preds = %198
  %211 = getelementptr inbounds i32, ptr %205, i64 %171
  %212 = getelementptr inbounds i32, ptr %204, i64 %171
  %213 = getelementptr inbounds i32, ptr %203, i64 %171
  %214 = getelementptr inbounds i32, ptr %202, i64 %171
  br label %215

215:                                              ; preds = %210, %198
  %216 = phi ptr [ %211, %210 ], [ %205, %198 ]
  %217 = phi ptr [ %212, %210 ], [ %204, %198 ]
  %218 = phi ptr [ %213, %210 ], [ %203, %198 ]
  %219 = phi ptr [ %214, %210 ], [ %202, %198 ]
  %220 = phi i32 [ %208, %210 ], [ %200, %198 ]
  %221 = or i32 %201, %208
  %222 = icmp sgt i32 %221, -1
  br i1 %222, label %223, label %234

223:                                              ; preds = %215
  %224 = load i32, ptr %0, align 8, !tbaa !34
  %225 = icmp sgt i32 %224, %208
  br i1 %225, label %226, label %234

226:                                              ; preds = %223
  %227 = load i32, ptr %216, align 4, !tbaa !46
  %228 = icmp slt i32 %199, %227
  br i1 %228, label %229, label %234

229:                                              ; preds = %226
  br i1 %196, label %233, label %230

230:                                              ; preds = %229
  %231 = load i32, ptr %219, align 4, !tbaa !46
  %232 = icmp sgt i32 %199, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %230, %229
  store i32 %199, ptr %216, align 4, !tbaa !46
  store i32 %2, ptr %217, align 4, !tbaa !46
  store i32 %1, ptr %218, align 4, !tbaa !46
  br label %234

234:                                              ; preds = %226, %233, %230, %223, %215
  %235 = fadd float %160, %206
  %236 = icmp sgt i32 %199, %197
  %237 = select i1 %169, i1 %236, i1 false
  %238 = add nsw i32 %199, %166
  %239 = select i1 %237, i32 2147483632, i32 %238
  %240 = add i32 %201, 1
  %241 = load i32, ptr %0, align 8, !tbaa !34
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, ptr %216, i64 %242
  %244 = getelementptr inbounds i32, ptr %217, i64 %242
  %245 = getelementptr inbounds i32, ptr %218, i64 %242
  %246 = getelementptr inbounds i32, ptr %219, i64 %242
  %247 = icmp eq i32 %201, %159
  br i1 %247, label %248, label %198, !llvm.loop !169

248:                                              ; preds = %234, %120, %137, %22
  ret void
}

declare i32 @clip_render_object(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @zmask_rect(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !42
  %7 = tail call ptr %6(ptr noundef %1) #14
  %8 = icmp slt i32 %3, 1
  br i1 %8, label %177, label %9

9:                                                ; preds = %5
  %10 = icmp sgt i32 %2, 0
  %11 = add nsw i32 %2, -1
  %12 = sext i32 %2 to i64
  %13 = zext i32 %2 to i64
  %14 = zext i32 %2 to i64
  %15 = zext nneg i32 %3 to i64
  %16 = add nuw i32 %3, 1
  %17 = zext i32 %16 to i64
  br label %18

18:                                               ; preds = %9, %174
  %19 = phi i64 [ 1, %9 ], [ %175, %174 ]
  br i1 %10, label %20, label %174

20:                                               ; preds = %18
  %21 = add nsw i64 %19, -1
  %22 = mul nsw i64 %21, %12
  %23 = getelementptr inbounds i32, ptr %0, i64 %22
  %24 = getelementptr inbounds i32, ptr %1, i64 %22
  %25 = icmp eq i64 %19, 1
  %26 = add nsw i64 %19, -2
  %27 = mul i64 %26, %13
  %28 = add i64 %27, %14
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, %2
  %31 = icmp eq i64 %19, %15
  %32 = trunc i64 %28 to i32
  %33 = trunc i64 %19 to i32
  %34 = mul i32 %33, %2
  %35 = select i1 %31, i32 %32, i32 %34
  %36 = select i1 %25, i32 %30, i32 %35
  %37 = trunc i64 %27 to i32
  %38 = select i1 %25, i32 0, i32 %37
  %39 = trunc i64 %28 to i32
  br label %40

40:                                               ; preds = %20, %164
  %41 = phi ptr [ %172, %164 ], [ %23, %20 ]
  %42 = phi ptr [ %171, %164 ], [ %24, %20 ]
  %43 = phi i32 [ %169, %164 ], [ %36, %20 ]
  %44 = phi i32 [ %168, %164 ], [ %39, %20 ]
  %45 = phi i32 [ %167, %164 ], [ %38, %20 ]
  %46 = phi i32 [ %170, %164 ], [ 0, %20 ]
  %47 = load i32, ptr %42, align 4, !tbaa !46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %164

49:                                               ; preds = %40
  %50 = sext i32 %45 to i64
  %51 = getelementptr inbounds i32, ptr %7, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !46
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds i32, ptr %0, i64 %50
  %56 = load i32, ptr %55, align 4, !tbaa !46
  %57 = sitofp i32 %56 to float
  br label %58

58:                                               ; preds = %54, %49
  %59 = phi i32 [ 1, %54 ], [ 0, %49 ]
  %60 = phi float [ %57, %54 ], [ 0.000000e+00, %49 ]
  %61 = sext i32 %44 to i64
  %62 = getelementptr inbounds i32, ptr %7, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !46
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds i32, ptr %0, i64 %61
  %67 = load i32, ptr %66, align 4, !tbaa !46
  %68 = sitofp i32 %67 to float
  %69 = fadd float %60, %68
  %70 = add nuw nsw i32 %59, 1
  br label %71

71:                                               ; preds = %65, %58
  %72 = phi i32 [ %70, %65 ], [ %59, %58 ]
  %73 = phi float [ %69, %65 ], [ %60, %58 ]
  %74 = sext i32 %43 to i64
  %75 = getelementptr inbounds i32, ptr %7, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !46
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds i32, ptr %0, i64 %74
  %80 = load i32, ptr %79, align 4, !tbaa !46
  %81 = sitofp i32 %80 to float
  %82 = fadd float %73, %81
  %83 = add nuw nsw i32 %72, 1
  br label %84

84:                                               ; preds = %78, %71
  %85 = phi i32 [ %83, %78 ], [ %72, %71 ]
  %86 = phi float [ %82, %78 ], [ %73, %71 ]
  %87 = add nsw i32 %45, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, ptr %7, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !46
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %84
  %93 = getelementptr inbounds i32, ptr %0, i64 %88
  %94 = load i32, ptr %93, align 4, !tbaa !46
  %95 = sitofp i32 %94 to float
  %96 = fadd float %86, %95
  %97 = add nuw nsw i32 %85, 1
  br label %98

98:                                               ; preds = %92, %84
  %99 = phi i32 [ %97, %92 ], [ %85, %84 ]
  %100 = phi float [ %96, %92 ], [ %86, %84 ]
  %101 = add nsw i32 %43, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, ptr %7, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !46
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %98
  %107 = getelementptr inbounds i32, ptr %0, i64 %102
  %108 = load i32, ptr %107, align 4, !tbaa !46
  %109 = sitofp i32 %108 to float
  %110 = fadd float %100, %109
  %111 = add nuw nsw i32 %99, 1
  br label %112

112:                                              ; preds = %106, %98
  %113 = phi i32 [ %111, %106 ], [ %99, %98 ]
  %114 = phi float [ %110, %106 ], [ %100, %98 ]
  %115 = icmp eq i32 %46, %11
  br i1 %115, label %156, label %116

116:                                              ; preds = %112
  %117 = add nsw i32 %45, 2
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %7, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !46
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds i32, ptr %0, i64 %118
  %124 = load i32, ptr %123, align 4, !tbaa !46
  %125 = sitofp i32 %124 to float
  %126 = fadd float %114, %125
  %127 = add nuw nsw i32 %113, 1
  br label %128

128:                                              ; preds = %122, %116
  %129 = phi i32 [ %127, %122 ], [ %113, %116 ]
  %130 = phi float [ %126, %122 ], [ %114, %116 ]
  %131 = add nsw i32 %44, 2
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %7, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !46
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %128
  %137 = getelementptr inbounds i32, ptr %0, i64 %132
  %138 = load i32, ptr %137, align 4, !tbaa !46
  %139 = sitofp i32 %138 to float
  %140 = fadd float %130, %139
  %141 = add nuw nsw i32 %129, 1
  br label %142

142:                                              ; preds = %136, %128
  %143 = phi i32 [ %141, %136 ], [ %129, %128 ]
  %144 = phi float [ %140, %136 ], [ %130, %128 ]
  %145 = add nsw i32 %43, 2
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, ptr %7, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !46
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %142
  %151 = getelementptr inbounds i32, ptr %0, i64 %146
  %152 = load i32, ptr %151, align 4, !tbaa !46
  %153 = sitofp i32 %152 to float
  %154 = fadd float %144, %153
  %155 = add nuw nsw i32 %143, 1
  br label %156

156:                                              ; preds = %142, %150, %112
  %157 = phi i32 [ %155, %150 ], [ %143, %142 ], [ %113, %112 ]
  %158 = phi float [ %154, %150 ], [ %144, %142 ], [ %114, %112 ]
  %159 = icmp eq i32 %157, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = sitofp i32 %157 to float
  %162 = fdiv float %158, %161
  %163 = fptosi float %162 to i32
  store i32 %163, ptr %41, align 4, !tbaa !46
  store i32 -1, ptr %42, align 4, !tbaa !46
  br label %164

164:                                              ; preds = %156, %160, %40
  %165 = icmp ne i32 %46, 0
  %166 = zext i1 %165 to i32
  %167 = add nsw i32 %45, %166
  %168 = add nsw i32 %44, %166
  %169 = add nsw i32 %43, %166
  %170 = add nuw nsw i32 %46, 1
  %171 = getelementptr inbounds i32, ptr %42, i64 1
  %172 = getelementptr inbounds i32, ptr %41, i64 1
  %173 = icmp eq i32 %170, %2
  br i1 %173, label %174, label %40, !llvm.loop !170

174:                                              ; preds = %164, %18
  %175 = add nuw nsw i64 %19, 1
  %176 = icmp eq i64 %175, %17
  br i1 %176, label %177, label %18, !llvm.loop !171

177:                                              ; preds = %174, %5
  %178 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %178(ptr noundef %7) #14
  %179 = icmp eq i32 %4, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %177
  %181 = mul nsw i32 %3, %2
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %180
  %184 = zext nneg i32 %181 to i64
  br label %185

185:                                              ; preds = %183, %193
  %186 = phi i64 [ %184, %183 ], [ %187, %193 ]
  %187 = add nsw i64 %186, -1
  %188 = getelementptr inbounds i32, ptr %1, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !46
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = getelementptr inbounds i32, ptr %0, i64 %187
  store i32 -2147483647, ptr %192, align 4, !tbaa !46
  store i32 -1, ptr %188, align 4, !tbaa !46
  br label %193

193:                                              ; preds = %185, %191
  %194 = icmp sgt i64 %186, 1
  br i1 %194, label %185, label %195, !llvm.loop !172

195:                                              ; preds = %193, %180, %177
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @zbuffer_shadow(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #0 {
  %8 = alloca [256 x %struct.ZbufProjectCache], align 16
  %9 = alloca %struct.ZSpan, align 8
  %10 = alloca %struct.StrandSegment, align 8
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x float], align 16
  %13 = alloca [4 x float], align 16
  %14 = alloca [4 x float], align 16
  %15 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 6144, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #14
  %16 = getelementptr inbounds %struct.LampRen, ptr %2, i64 0, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !173
  %18 = and i32 %17, 32772
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.LampRen, ptr %2, i64 0, i32 17
  %22 = load i32, ptr %21, align 4, !tbaa !175
  br label %23

23:                                               ; preds = %20, %7
  %24 = phi i32 [ %22, %20 ], [ -1, %7 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %9, i8 0, i64 224, i1 false)
  store i32 %4, ptr %9, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 1
  store i32 %4, ptr %25, align 4, !tbaa !41
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %27 = sext i32 %4 to i64
  %28 = shl nsw i64 %27, 2
  %29 = tail call ptr %26(i64 noundef %28, ptr noundef nonnull @.str) #14
  %30 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 10
  store ptr %29, ptr %30, align 8, !tbaa !43
  %31 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %32 = tail call ptr %31(i64 noundef %28, ptr noundef nonnull @.str) #14
  %33 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 11
  store ptr %32, ptr %33, align 8, !tbaa !44
  %34 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 31
  store float 1.000000e+00, ptr %34, align 4, !tbaa !45
  %35 = sitofp i32 %4 to float
  %36 = fmul float %35, 5.000000e-01
  %37 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 12
  store float %36, ptr %37, align 8, !tbaa !57
  %38 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 13
  store float %36, ptr %38, align 4, !tbaa !59
  %39 = fadd float %5, -5.000000e-01
  %40 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 14
  store float %39, ptr %40, align 8, !tbaa !58
  %41 = fadd float %6, -5.000000e-01
  %42 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 15
  store float %41, ptr %42, align 4, !tbaa !60
  %43 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 16
  store ptr %3, ptr %43, align 8, !tbaa !123
  %44 = mul i32 %4, %4
  %45 = icmp eq i32 %4, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %23, %46
  %47 = phi ptr [ %50, %46 ], [ %3, %23 ]
  %48 = phi i32 [ %49, %46 ], [ %44, %23 ]
  %49 = add nsw i32 %48, -1
  store i32 2147483646, ptr %47, align 4, !tbaa !46
  %50 = getelementptr inbounds i32, ptr %47, i64 1
  %51 = icmp sgt i32 %48, 1
  br i1 %51, label %46, label %52, !llvm.loop !47

52:                                               ; preds = %46, %23
  %53 = getelementptr inbounds %struct.LampRen, ptr %2, i64 0, i32 36
  %54 = load i16, ptr %53, align 4, !tbaa !176
  %55 = icmp eq i16 %54, 2
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %58 = zext nneg i32 %44 to i64
  %59 = shl nuw nsw i64 %58, 2
  %60 = tail call ptr %57(i64 noundef %59, ptr noundef nonnull @.str.4) #14
  %61 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 18
  store ptr %60, ptr %61, align 8, !tbaa !177
  %62 = icmp eq i32 %4, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %56, %63
  %64 = phi ptr [ %67, %63 ], [ %60, %56 ]
  %65 = phi i32 [ %66, %63 ], [ %44, %56 ]
  %66 = add nsw i32 %65, -1
  store i32 2147483646, ptr %64, align 4, !tbaa !46
  %67 = getelementptr inbounds i32, ptr %64, i64 1
  %68 = icmp sgt i32 %65, 1
  br i1 %68, label %63, label %69, !llvm.loop !47

69:                                               ; preds = %63, %56, %52
  %70 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 35
  store ptr @zbufline_onlyZ, ptr %70, align 8, !tbaa !62
  %71 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 34
  store ptr @zbuffillGL_onlyZ, ptr %71, align 8, !tbaa !99
  %72 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %73 = load ptr, ptr %72, align 8, !tbaa !42
  %74 = icmp eq ptr %73, null
  br i1 %74, label %1401, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 78
  %77 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %78 = getelementptr inbounds [4 x float], ptr %11, i64 1
  %79 = getelementptr inbounds [4 x float], ptr %11, i64 2
  %80 = getelementptr inbounds [4 x float], ptr %11, i64 3
  %81 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 1
  %82 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 1
  %83 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 1
  %84 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 1
  %85 = getelementptr inbounds float, ptr %12, i64 1
  %86 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 2
  %87 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 2
  %88 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 2
  %89 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 2
  %90 = getelementptr inbounds float, ptr %12, i64 2
  %91 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 3
  %92 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 3
  %93 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 3
  %94 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 3
  %95 = getelementptr inbounds float, ptr %12, i64 3
  %96 = getelementptr inbounds float, ptr %12, i64 1
  %97 = getelementptr inbounds float, ptr %12, i64 2
  %98 = getelementptr inbounds float, ptr %12, i64 3
  %99 = getelementptr inbounds [4 x float], ptr %11, i64 1
  %100 = getelementptr inbounds [4 x float], ptr %11, i64 2
  %101 = getelementptr inbounds [4 x float], ptr %11, i64 3
  %102 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 1
  %103 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 1
  %104 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 1
  %105 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 1
  %106 = getelementptr inbounds float, ptr %13, i64 1
  %107 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 2
  %108 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 2
  %109 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 2
  %110 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 2
  %111 = getelementptr inbounds float, ptr %13, i64 2
  %112 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 3
  %113 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 3
  %114 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 3
  %115 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 3
  %116 = getelementptr inbounds float, ptr %13, i64 3
  %117 = getelementptr inbounds float, ptr %13, i64 1
  %118 = getelementptr inbounds float, ptr %13, i64 2
  %119 = getelementptr inbounds float, ptr %13, i64 3
  %120 = getelementptr inbounds [4 x float], ptr %11, i64 1
  %121 = getelementptr inbounds [4 x float], ptr %11, i64 2
  %122 = getelementptr inbounds [4 x float], ptr %11, i64 3
  %123 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 1
  %124 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 1
  %125 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 1
  %126 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 1
  %127 = getelementptr inbounds float, ptr %14, i64 1
  %128 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 2
  %129 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 2
  %130 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 2
  %131 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 2
  %132 = getelementptr inbounds float, ptr %14, i64 2
  %133 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 3
  %134 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 3
  %135 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 3
  %136 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 3
  %137 = getelementptr inbounds float, ptr %14, i64 3
  %138 = getelementptr inbounds float, ptr %14, i64 1
  %139 = getelementptr inbounds float, ptr %14, i64 2
  %140 = getelementptr inbounds float, ptr %14, i64 3
  %141 = getelementptr inbounds [4 x float], ptr %11, i64 1
  %142 = getelementptr inbounds [4 x float], ptr %11, i64 2
  %143 = getelementptr inbounds [4 x float], ptr %11, i64 3
  %144 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 1
  %145 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 1
  %146 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 1
  %147 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 1
  %148 = getelementptr inbounds float, ptr %15, i64 1
  %149 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 2
  %150 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 2
  %151 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 2
  %152 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 2
  %153 = getelementptr inbounds float, ptr %15, i64 2
  %154 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 3
  %155 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 3
  %156 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 3
  %157 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 3
  %158 = getelementptr inbounds float, ptr %15, i64 3
  %159 = getelementptr inbounds float, ptr %15, i64 1
  %160 = getelementptr inbounds float, ptr %15, i64 2
  %161 = getelementptr inbounds float, ptr %15, i64 3
  %162 = getelementptr inbounds [4 x float], ptr %11, i64 1
  %163 = getelementptr inbounds [4 x float], ptr %11, i64 2
  %164 = getelementptr inbounds [4 x float], ptr %11, i64 3
  %165 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 1
  %166 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 1
  %167 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 1
  %168 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 1
  %169 = getelementptr inbounds float, ptr %15, i64 1
  %170 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 2
  %171 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 2
  %172 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 2
  %173 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 2
  %174 = getelementptr inbounds float, ptr %15, i64 2
  %175 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 3
  %176 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 3
  %177 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 3
  %178 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 3
  %179 = getelementptr inbounds float, ptr %15, i64 3
  %180 = getelementptr inbounds float, ptr %15, i64 1
  %181 = getelementptr inbounds float, ptr %15, i64 2
  %182 = getelementptr inbounds float, ptr %15, i64 3
  %183 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %184 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %185 = getelementptr inbounds %struct.StrandSegment, ptr %10, i64 0, i32 3
  %186 = getelementptr inbounds %struct.StrandSegment, ptr %10, i64 0, i32 2
  %187 = getelementptr inbounds %struct.StrandSegment, ptr %10, i64 0, i32 4
  %188 = getelementptr inbounds %struct.StrandSegment, ptr %10, i64 0, i32 1
  %189 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 1
  %190 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 2
  %191 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 3
  %192 = getelementptr inbounds [4 x float], ptr %11, i64 1
  %193 = getelementptr inbounds [4 x float], ptr %11, i64 2
  %194 = getelementptr inbounds [4 x float], ptr %11, i64 3
  %195 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 1
  %196 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 1
  %197 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 1
  %198 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 1
  %199 = getelementptr inbounds float, ptr %12, i64 1
  %200 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 2
  %201 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 2
  %202 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 2
  %203 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 2
  %204 = getelementptr inbounds float, ptr %12, i64 2
  %205 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 3
  %206 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 3
  %207 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 3
  %208 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 3
  %209 = getelementptr inbounds float, ptr %12, i64 3
  %210 = getelementptr inbounds float, ptr %12, i64 2
  %211 = getelementptr inbounds float, ptr %12, i64 3
  %212 = getelementptr inbounds [4 x float], ptr %11, i64 1
  %213 = getelementptr inbounds [4 x float], ptr %11, i64 2
  %214 = getelementptr inbounds [4 x float], ptr %11, i64 3
  %215 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 1
  %216 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 1
  %217 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 1
  %218 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 1
  %219 = getelementptr inbounds float, ptr %13, i64 1
  %220 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 2
  %221 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 2
  %222 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 2
  %223 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 2
  %224 = getelementptr inbounds float, ptr %13, i64 2
  %225 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 3
  %226 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 3
  %227 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 3
  %228 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 3
  %229 = getelementptr inbounds float, ptr %13, i64 3
  %230 = getelementptr inbounds float, ptr %13, i64 2
  %231 = getelementptr inbounds float, ptr %13, i64 3
  %232 = getelementptr inbounds [4 x float], ptr %11, i64 1
  %233 = getelementptr inbounds [4 x float], ptr %11, i64 2
  %234 = getelementptr inbounds [4 x float], ptr %11, i64 3
  %235 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 1
  %236 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 1
  %237 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 1
  %238 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 1
  %239 = getelementptr inbounds float, ptr %14, i64 1
  %240 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 2
  %241 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 2
  %242 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 2
  %243 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 2
  %244 = getelementptr inbounds float, ptr %14, i64 2
  %245 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 3
  %246 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 3
  %247 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 3
  %248 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 3
  %249 = getelementptr inbounds float, ptr %14, i64 3
  %250 = getelementptr inbounds float, ptr %14, i64 2
  %251 = getelementptr inbounds float, ptr %14, i64 3
  %252 = getelementptr inbounds [4 x float], ptr %11, i64 1
  %253 = getelementptr inbounds [4 x float], ptr %11, i64 2
  %254 = getelementptr inbounds [4 x float], ptr %11, i64 3
  %255 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 1
  %256 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 1
  %257 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 1
  %258 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 1
  %259 = getelementptr inbounds float, ptr %15, i64 1
  %260 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 2
  %261 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 2
  %262 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 2
  %263 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 2
  %264 = getelementptr inbounds float, ptr %15, i64 2
  %265 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 3
  %266 = getelementptr inbounds [4 x float], ptr %11, i64 1, i64 3
  %267 = getelementptr inbounds [4 x float], ptr %11, i64 2, i64 3
  %268 = getelementptr inbounds [4 x float], ptr %11, i64 3, i64 3
  %269 = getelementptr inbounds float, ptr %15, i64 3
  %270 = getelementptr inbounds float, ptr %15, i64 1
  %271 = getelementptr inbounds float, ptr %15, i64 2
  %272 = getelementptr inbounds float, ptr %15, i64 3
  %273 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %274 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %275 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %276

276:                                              ; preds = %75, %1395
  %277 = phi ptr [ %73, %75 ], [ %1399, %1395 ]
  %278 = phi i32 [ 1, %75 ], [ %1398, %1395 ]
  %279 = phi ptr [ null, %75 ], [ %1397, %1395 ]
  %280 = phi ptr [ null, %75 ], [ %1396, %1395 ]
  %281 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %277, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !127
  %283 = getelementptr inbounds %struct.ObjectRen, ptr %282, i64 0, i32 2
  %284 = load ptr, ptr %283, align 8, !tbaa !178
  %285 = load ptr, ptr %76, align 8, !tbaa !179
  %286 = icmp eq ptr %284, %285
  br i1 %286, label %1395, label %287

287:                                              ; preds = %276
  %288 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %277, i64 0, i32 7
  %289 = load i32, ptr %288, align 8, !tbaa !129
  %290 = and i32 %289, %24
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %1395, label %292

292:                                              ; preds = %287
  %293 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %277, i64 0, i32 11
  %294 = load i16, ptr %293, align 8, !tbaa !130
  %295 = and i16 %294, 3
  %296 = icmp eq i16 %295, 0
  br i1 %296, label %299, label %297

297:                                              ; preds = %292
  %298 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %277, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef %1, ptr noundef nonnull %298) #14
  br label %300

299:                                              ; preds = %292
  call void @copy_m4_m4(ptr noundef nonnull %11, ptr noundef %1) #14
  br label %300

300:                                              ; preds = %299, %297
  %301 = load ptr, ptr %281, align 8, !tbaa !127
  %302 = getelementptr inbounds %struct.ObjectRen, ptr %301, i64 0, i32 9
  %303 = call i32 @clip_render_object(ptr noundef nonnull %302, ptr noundef null, ptr noundef nonnull %11) #14
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %1395

305:                                              ; preds = %300
  %306 = getelementptr inbounds %struct.ObjectRen, ptr %282, i64 0, i32 10
  %307 = load i32, ptr %306, align 8, !tbaa !131
  %308 = call i32 @llvm.smin.i32(i32 %307, i32 256)
  %309 = sext i32 %308 to i64
  %310 = mul nsw i64 %309, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %8, i8 0, i64 %310, i1 false)
  %311 = icmp sgt i32 %307, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %305
  %313 = zext nneg i32 %308 to i64
  br label %320

314:                                              ; preds = %320, %305
  %315 = getelementptr inbounds %struct.ObjectRen, ptr %282, i64 0, i32 11
  %316 = load i32, ptr %315, align 4, !tbaa !133
  %317 = icmp sgt i32 %316, 0
  br i1 %317, label %318, label %864

318:                                              ; preds = %314
  %319 = getelementptr inbounds %struct.ObjectRen, ptr %282, i64 0, i32 19
  br label %325

320:                                              ; preds = %312, %320
  %321 = phi i64 [ 0, %312 ], [ %323, %320 ]
  %322 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %321
  store i32 -1, ptr %322, align 8, !tbaa !134
  %323 = add nuw nsw i64 %321, 1
  %324 = icmp eq i64 %323, %313
  br i1 %324, label %314, label %320, !llvm.loop !136

325:                                              ; preds = %318, %860
  %326 = phi i32 [ %278, %318 ], [ %358, %860 ]
  %327 = phi i32 [ 0, %318 ], [ %861, %860 ]
  %328 = phi ptr [ %279, %318 ], [ %357, %860 ]
  %329 = phi ptr [ %280, %318 ], [ %341, %860 ]
  %330 = and i32 %327, 255
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %338

332:                                              ; preds = %325
  %333 = load ptr, ptr %319, align 8, !tbaa !137
  %334 = lshr exact i32 %327, 8
  %335 = zext nneg i32 %334 to i64
  %336 = getelementptr inbounds %struct.VlakTableNode, ptr %333, i64 %335
  %337 = load ptr, ptr %336, align 8, !tbaa !138
  br label %340

338:                                              ; preds = %325
  %339 = getelementptr inbounds %struct.VlakRen, ptr %329, i64 1
  br label %340

340:                                              ; preds = %338, %332
  %341 = phi ptr [ %337, %332 ], [ %339, %338 ]
  %342 = getelementptr inbounds %struct.VlakRen, ptr %341, i64 0, i32 5
  %343 = load ptr, ptr %342, align 8, !tbaa !140
  %344 = icmp eq ptr %343, %328
  br i1 %344, label %356, label %345

345:                                              ; preds = %340
  %346 = getelementptr inbounds %struct.Material, ptr %343, i64 0, i32 53
  %347 = load i32, ptr %346, align 4, !tbaa !180
  %348 = and i32 %347, 1
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %355, label %350

350:                                              ; preds = %345
  %351 = getelementptr inbounds %struct.Material, ptr %343, i64 0, i32 51
  %352 = load i32, ptr %351, align 4, !tbaa !142
  %353 = and i32 %352, 33554432
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %350, %345
  br label %356

356:                                              ; preds = %350, %355, %340
  %357 = phi ptr [ %343, %355 ], [ %343, %350 ], [ %328, %340 ]
  %358 = phi i32 [ 0, %355 ], [ 1, %350 ], [ %326, %340 ]
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %853, label %360

360:                                              ; preds = %356
  %361 = load i32, ptr %288, align 8, !tbaa !129
  %362 = and i32 %361, %24
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %853, label %364

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.VlakRen, ptr %341, i64 0, i32 7
  %366 = load i8, ptr %365, align 1, !tbaa !148
  %367 = and i8 %366, 2
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %369, label %853

369:                                              ; preds = %364
  %370 = load ptr, ptr %341, align 8, !tbaa !149
  %371 = getelementptr inbounds %struct.VertRen, ptr %370, i64 0, i32 5
  %372 = load i32, ptr %371, align 8, !tbaa !153
  %373 = and i32 %372, 255
  %374 = zext nneg i32 %373 to i64
  %375 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %374
  %376 = load i32, ptr %375, align 8, !tbaa !134
  %377 = icmp eq i32 %376, %372
  br i1 %377, label %378, label %389

378:                                              ; preds = %369
  %379 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %374, i32 2
  %380 = load float, ptr %379, align 8, !tbaa !50
  store float %380, ptr %12, align 16, !tbaa !50
  %381 = getelementptr inbounds float, ptr %379, i64 1
  %382 = load float, ptr %381, align 4, !tbaa !50
  store float %382, ptr %96, align 4, !tbaa !50
  %383 = getelementptr inbounds float, ptr %379, i64 2
  %384 = load float, ptr %383, align 8, !tbaa !50
  store float %384, ptr %97, align 8, !tbaa !50
  %385 = getelementptr inbounds float, ptr %379, i64 3
  %386 = load float, ptr %385, align 4, !tbaa !50
  store float %386, ptr %98, align 4, !tbaa !50
  %387 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %374, i32 1
  %388 = load i32, ptr %387, align 4, !tbaa !155
  br label %460

389:                                              ; preds = %369
  %390 = load float, ptr %370, align 4, !tbaa !50
  %391 = getelementptr inbounds float, ptr %370, i64 1
  %392 = load float, ptr %391, align 4, !tbaa !50
  %393 = getelementptr inbounds float, ptr %370, i64 2
  %394 = load float, ptr %393, align 4, !tbaa !50
  %395 = load float, ptr %11, align 16, !tbaa !50
  %396 = load float, ptr %78, align 16, !tbaa !50
  %397 = fmul float %392, %396
  %398 = call float @llvm.fmuladd.f32(float %390, float %395, float %397)
  %399 = load float, ptr %79, align 16, !tbaa !50
  %400 = call float @llvm.fmuladd.f32(float %394, float %399, float %398)
  %401 = load float, ptr %80, align 16, !tbaa !50
  %402 = fadd float %401, %400
  store float %402, ptr %12, align 16, !tbaa !50
  %403 = load float, ptr %81, align 4, !tbaa !50
  %404 = load float, ptr %82, align 4, !tbaa !50
  %405 = fmul float %392, %404
  %406 = call float @llvm.fmuladd.f32(float %390, float %403, float %405)
  %407 = load float, ptr %83, align 4, !tbaa !50
  %408 = call float @llvm.fmuladd.f32(float %394, float %407, float %406)
  %409 = load float, ptr %84, align 4, !tbaa !50
  %410 = fadd float %409, %408
  store float %410, ptr %85, align 4, !tbaa !50
  %411 = load float, ptr %86, align 8, !tbaa !50
  %412 = load float, ptr %87, align 8, !tbaa !50
  %413 = fmul float %392, %412
  %414 = call float @llvm.fmuladd.f32(float %390, float %411, float %413)
  %415 = load float, ptr %88, align 8, !tbaa !50
  %416 = call float @llvm.fmuladd.f32(float %394, float %415, float %414)
  %417 = load float, ptr %89, align 8, !tbaa !50
  %418 = fadd float %417, %416
  store float %418, ptr %90, align 8, !tbaa !50
  %419 = load float, ptr %91, align 4, !tbaa !50
  %420 = load float, ptr %92, align 4, !tbaa !50
  %421 = fmul float %392, %420
  %422 = call float @llvm.fmuladd.f32(float %390, float %419, float %421)
  %423 = load float, ptr %93, align 4, !tbaa !50
  %424 = call float @llvm.fmuladd.f32(float %394, float %423, float %422)
  %425 = load float, ptr %94, align 4, !tbaa !50
  %426 = fadd float %425, %424
  store float %426, ptr %95, align 4, !tbaa !50
  %427 = call float @llvm.fabs.f32(float %426)
  %428 = fadd float %427, 0x3E80000000000000
  %429 = fneg float %428
  %430 = fcmp olt float %402, %429
  br i1 %430, label %434, label %431

431:                                              ; preds = %389
  %432 = fcmp ogt float %402, %428
  br i1 %432, label %433, label %434

433:                                              ; preds = %431
  br label %434

434:                                              ; preds = %433, %431, %389
  %435 = phi i16 [ 2, %433 ], [ 0, %431 ], [ 1, %389 ]
  %436 = fcmp ogt float %410, %428
  br i1 %436, label %437, label %439

437:                                              ; preds = %434
  %438 = or disjoint i16 %435, 4
  br label %443

439:                                              ; preds = %434
  %440 = fcmp olt float %410, %429
  br i1 %440, label %441, label %443

441:                                              ; preds = %439
  %442 = or disjoint i16 %435, 8
  br label %443

443:                                              ; preds = %441, %439, %437
  %444 = phi i16 [ %438, %437 ], [ %442, %441 ], [ %435, %439 ]
  %445 = fcmp olt float %418, %429
  br i1 %445, label %446, label %448

446:                                              ; preds = %443
  %447 = add nsw i16 %444, 16
  br label %452

448:                                              ; preds = %443
  %449 = fcmp ogt float %418, %428
  br i1 %449, label %450, label %452

450:                                              ; preds = %448
  %451 = add nsw i16 %444, 32
  br label %452

452:                                              ; preds = %446, %448, %450
  %453 = phi i16 [ %447, %446 ], [ %451, %450 ], [ %444, %448 ]
  %454 = zext nneg i16 %453 to i32
  %455 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %374, i32 2
  store float %402, ptr %455, align 8, !tbaa !50
  %456 = getelementptr inbounds float, ptr %455, i64 1
  store float %410, ptr %456, align 4, !tbaa !50
  %457 = getelementptr inbounds float, ptr %455, i64 2
  store float %418, ptr %457, align 8, !tbaa !50
  %458 = getelementptr inbounds float, ptr %455, i64 3
  store float %426, ptr %458, align 4, !tbaa !50
  %459 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %374, i32 1
  store i32 %454, ptr %459, align 4, !tbaa !155
  store i32 %372, ptr %375, align 8, !tbaa !134
  br label %460

460:                                              ; preds = %378, %452
  %461 = phi i32 [ %388, %378 ], [ %454, %452 ]
  %462 = getelementptr inbounds %struct.VlakRen, ptr %341, i64 0, i32 1
  %463 = load ptr, ptr %462, align 8, !tbaa !150
  %464 = getelementptr inbounds %struct.VertRen, ptr %463, i64 0, i32 5
  %465 = load i32, ptr %464, align 8, !tbaa !153
  %466 = and i32 %465, 255
  %467 = zext nneg i32 %466 to i64
  %468 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %467
  %469 = load i32, ptr %468, align 8, !tbaa !134
  %470 = icmp eq i32 %469, %465
  br i1 %470, label %471, label %482

471:                                              ; preds = %460
  %472 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %467, i32 2
  %473 = load float, ptr %472, align 8, !tbaa !50
  store float %473, ptr %13, align 16, !tbaa !50
  %474 = getelementptr inbounds float, ptr %472, i64 1
  %475 = load float, ptr %474, align 4, !tbaa !50
  store float %475, ptr %117, align 4, !tbaa !50
  %476 = getelementptr inbounds float, ptr %472, i64 2
  %477 = load float, ptr %476, align 8, !tbaa !50
  store float %477, ptr %118, align 8, !tbaa !50
  %478 = getelementptr inbounds float, ptr %472, i64 3
  %479 = load float, ptr %478, align 4, !tbaa !50
  store float %479, ptr %119, align 4, !tbaa !50
  %480 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %467, i32 1
  %481 = load i32, ptr %480, align 4, !tbaa !155
  br label %553

482:                                              ; preds = %460
  %483 = load float, ptr %463, align 4, !tbaa !50
  %484 = getelementptr inbounds float, ptr %463, i64 1
  %485 = load float, ptr %484, align 4, !tbaa !50
  %486 = getelementptr inbounds float, ptr %463, i64 2
  %487 = load float, ptr %486, align 4, !tbaa !50
  %488 = load float, ptr %11, align 16, !tbaa !50
  %489 = load float, ptr %99, align 16, !tbaa !50
  %490 = fmul float %485, %489
  %491 = call float @llvm.fmuladd.f32(float %483, float %488, float %490)
  %492 = load float, ptr %100, align 16, !tbaa !50
  %493 = call float @llvm.fmuladd.f32(float %487, float %492, float %491)
  %494 = load float, ptr %101, align 16, !tbaa !50
  %495 = fadd float %494, %493
  store float %495, ptr %13, align 16, !tbaa !50
  %496 = load float, ptr %102, align 4, !tbaa !50
  %497 = load float, ptr %103, align 4, !tbaa !50
  %498 = fmul float %485, %497
  %499 = call float @llvm.fmuladd.f32(float %483, float %496, float %498)
  %500 = load float, ptr %104, align 4, !tbaa !50
  %501 = call float @llvm.fmuladd.f32(float %487, float %500, float %499)
  %502 = load float, ptr %105, align 4, !tbaa !50
  %503 = fadd float %502, %501
  store float %503, ptr %106, align 4, !tbaa !50
  %504 = load float, ptr %107, align 8, !tbaa !50
  %505 = load float, ptr %108, align 8, !tbaa !50
  %506 = fmul float %485, %505
  %507 = call float @llvm.fmuladd.f32(float %483, float %504, float %506)
  %508 = load float, ptr %109, align 8, !tbaa !50
  %509 = call float @llvm.fmuladd.f32(float %487, float %508, float %507)
  %510 = load float, ptr %110, align 8, !tbaa !50
  %511 = fadd float %510, %509
  store float %511, ptr %111, align 8, !tbaa !50
  %512 = load float, ptr %112, align 4, !tbaa !50
  %513 = load float, ptr %113, align 4, !tbaa !50
  %514 = fmul float %485, %513
  %515 = call float @llvm.fmuladd.f32(float %483, float %512, float %514)
  %516 = load float, ptr %114, align 4, !tbaa !50
  %517 = call float @llvm.fmuladd.f32(float %487, float %516, float %515)
  %518 = load float, ptr %115, align 4, !tbaa !50
  %519 = fadd float %518, %517
  store float %519, ptr %116, align 4, !tbaa !50
  %520 = call float @llvm.fabs.f32(float %519)
  %521 = fadd float %520, 0x3E80000000000000
  %522 = fneg float %521
  %523 = fcmp olt float %495, %522
  br i1 %523, label %527, label %524

524:                                              ; preds = %482
  %525 = fcmp ogt float %495, %521
  br i1 %525, label %526, label %527

526:                                              ; preds = %524
  br label %527

527:                                              ; preds = %526, %524, %482
  %528 = phi i16 [ 2, %526 ], [ 0, %524 ], [ 1, %482 ]
  %529 = fcmp ogt float %503, %521
  br i1 %529, label %530, label %532

530:                                              ; preds = %527
  %531 = or disjoint i16 %528, 4
  br label %536

532:                                              ; preds = %527
  %533 = fcmp olt float %503, %522
  br i1 %533, label %534, label %536

534:                                              ; preds = %532
  %535 = or disjoint i16 %528, 8
  br label %536

536:                                              ; preds = %534, %532, %530
  %537 = phi i16 [ %531, %530 ], [ %535, %534 ], [ %528, %532 ]
  %538 = fcmp olt float %511, %522
  br i1 %538, label %539, label %541

539:                                              ; preds = %536
  %540 = add nsw i16 %537, 16
  br label %545

541:                                              ; preds = %536
  %542 = fcmp ogt float %511, %521
  br i1 %542, label %543, label %545

543:                                              ; preds = %541
  %544 = add nsw i16 %537, 32
  br label %545

545:                                              ; preds = %539, %541, %543
  %546 = phi i16 [ %540, %539 ], [ %544, %543 ], [ %537, %541 ]
  %547 = zext nneg i16 %546 to i32
  %548 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %467, i32 2
  store float %495, ptr %548, align 8, !tbaa !50
  %549 = getelementptr inbounds float, ptr %548, i64 1
  store float %503, ptr %549, align 4, !tbaa !50
  %550 = getelementptr inbounds float, ptr %548, i64 2
  store float %511, ptr %550, align 8, !tbaa !50
  %551 = getelementptr inbounds float, ptr %548, i64 3
  store float %519, ptr %551, align 4, !tbaa !50
  %552 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %467, i32 1
  store i32 %547, ptr %552, align 4, !tbaa !155
  store i32 %465, ptr %468, align 8, !tbaa !134
  br label %553

553:                                              ; preds = %471, %545
  %554 = phi i32 [ %481, %471 ], [ %547, %545 ]
  %555 = getelementptr inbounds %struct.VlakRen, ptr %341, i64 0, i32 2
  %556 = load ptr, ptr %555, align 8, !tbaa !151
  %557 = getelementptr inbounds %struct.VertRen, ptr %556, i64 0, i32 5
  %558 = load i32, ptr %557, align 8, !tbaa !153
  %559 = and i32 %558, 255
  %560 = zext nneg i32 %559 to i64
  %561 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %560
  %562 = load i32, ptr %561, align 8, !tbaa !134
  %563 = icmp eq i32 %562, %558
  br i1 %563, label %564, label %575

564:                                              ; preds = %553
  %565 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %560, i32 2
  %566 = load float, ptr %565, align 8, !tbaa !50
  store float %566, ptr %14, align 16, !tbaa !50
  %567 = getelementptr inbounds float, ptr %565, i64 1
  %568 = load float, ptr %567, align 4, !tbaa !50
  store float %568, ptr %138, align 4, !tbaa !50
  %569 = getelementptr inbounds float, ptr %565, i64 2
  %570 = load float, ptr %569, align 8, !tbaa !50
  store float %570, ptr %139, align 8, !tbaa !50
  %571 = getelementptr inbounds float, ptr %565, i64 3
  %572 = load float, ptr %571, align 4, !tbaa !50
  store float %572, ptr %140, align 4, !tbaa !50
  %573 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %560, i32 1
  %574 = load i32, ptr %573, align 4, !tbaa !155
  br label %646

575:                                              ; preds = %553
  %576 = load float, ptr %556, align 4, !tbaa !50
  %577 = getelementptr inbounds float, ptr %556, i64 1
  %578 = load float, ptr %577, align 4, !tbaa !50
  %579 = getelementptr inbounds float, ptr %556, i64 2
  %580 = load float, ptr %579, align 4, !tbaa !50
  %581 = load float, ptr %11, align 16, !tbaa !50
  %582 = load float, ptr %120, align 16, !tbaa !50
  %583 = fmul float %578, %582
  %584 = call float @llvm.fmuladd.f32(float %576, float %581, float %583)
  %585 = load float, ptr %121, align 16, !tbaa !50
  %586 = call float @llvm.fmuladd.f32(float %580, float %585, float %584)
  %587 = load float, ptr %122, align 16, !tbaa !50
  %588 = fadd float %587, %586
  store float %588, ptr %14, align 16, !tbaa !50
  %589 = load float, ptr %123, align 4, !tbaa !50
  %590 = load float, ptr %124, align 4, !tbaa !50
  %591 = fmul float %578, %590
  %592 = call float @llvm.fmuladd.f32(float %576, float %589, float %591)
  %593 = load float, ptr %125, align 4, !tbaa !50
  %594 = call float @llvm.fmuladd.f32(float %580, float %593, float %592)
  %595 = load float, ptr %126, align 4, !tbaa !50
  %596 = fadd float %595, %594
  store float %596, ptr %127, align 4, !tbaa !50
  %597 = load float, ptr %128, align 8, !tbaa !50
  %598 = load float, ptr %129, align 8, !tbaa !50
  %599 = fmul float %578, %598
  %600 = call float @llvm.fmuladd.f32(float %576, float %597, float %599)
  %601 = load float, ptr %130, align 8, !tbaa !50
  %602 = call float @llvm.fmuladd.f32(float %580, float %601, float %600)
  %603 = load float, ptr %131, align 8, !tbaa !50
  %604 = fadd float %603, %602
  store float %604, ptr %132, align 8, !tbaa !50
  %605 = load float, ptr %133, align 4, !tbaa !50
  %606 = load float, ptr %134, align 4, !tbaa !50
  %607 = fmul float %578, %606
  %608 = call float @llvm.fmuladd.f32(float %576, float %605, float %607)
  %609 = load float, ptr %135, align 4, !tbaa !50
  %610 = call float @llvm.fmuladd.f32(float %580, float %609, float %608)
  %611 = load float, ptr %136, align 4, !tbaa !50
  %612 = fadd float %611, %610
  store float %612, ptr %137, align 4, !tbaa !50
  %613 = call float @llvm.fabs.f32(float %612)
  %614 = fadd float %613, 0x3E80000000000000
  %615 = fneg float %614
  %616 = fcmp olt float %588, %615
  br i1 %616, label %620, label %617

617:                                              ; preds = %575
  %618 = fcmp ogt float %588, %614
  br i1 %618, label %619, label %620

619:                                              ; preds = %617
  br label %620

620:                                              ; preds = %619, %617, %575
  %621 = phi i16 [ 2, %619 ], [ 0, %617 ], [ 1, %575 ]
  %622 = fcmp ogt float %596, %614
  br i1 %622, label %623, label %625

623:                                              ; preds = %620
  %624 = or disjoint i16 %621, 4
  br label %629

625:                                              ; preds = %620
  %626 = fcmp olt float %596, %615
  br i1 %626, label %627, label %629

627:                                              ; preds = %625
  %628 = or disjoint i16 %621, 8
  br label %629

629:                                              ; preds = %627, %625, %623
  %630 = phi i16 [ %624, %623 ], [ %628, %627 ], [ %621, %625 ]
  %631 = fcmp olt float %604, %615
  br i1 %631, label %632, label %634

632:                                              ; preds = %629
  %633 = add nsw i16 %630, 16
  br label %638

634:                                              ; preds = %629
  %635 = fcmp ogt float %604, %614
  br i1 %635, label %636, label %638

636:                                              ; preds = %634
  %637 = add nsw i16 %630, 32
  br label %638

638:                                              ; preds = %632, %634, %636
  %639 = phi i16 [ %633, %632 ], [ %637, %636 ], [ %630, %634 ]
  %640 = zext nneg i16 %639 to i32
  %641 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %560, i32 2
  store float %588, ptr %641, align 8, !tbaa !50
  %642 = getelementptr inbounds float, ptr %641, i64 1
  store float %596, ptr %642, align 4, !tbaa !50
  %643 = getelementptr inbounds float, ptr %641, i64 2
  store float %604, ptr %643, align 8, !tbaa !50
  %644 = getelementptr inbounds float, ptr %641, i64 3
  store float %612, ptr %644, align 4, !tbaa !50
  %645 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %560, i32 1
  store i32 %640, ptr %645, align 4, !tbaa !155
  store i32 %558, ptr %561, align 8, !tbaa !134
  br label %646

646:                                              ; preds = %564, %638
  %647 = phi i32 [ %574, %564 ], [ %640, %638 ]
  %648 = getelementptr inbounds %struct.Material, ptr %357, i64 0, i32 2
  %649 = load i16, ptr %648, align 8, !tbaa !146
  %650 = icmp ne i16 %649, 3
  %651 = and i8 %366, 4
  %652 = icmp eq i8 %651, 0
  %653 = and i1 %652, %650
  %654 = getelementptr inbounds %struct.VlakRen, ptr %341, i64 0, i32 3
  %655 = load ptr, ptr %654, align 8, !tbaa !152
  %656 = icmp eq ptr %655, null
  br i1 %653, label %759, label %657

657:                                              ; preds = %646
  br i1 %656, label %754, label %658

658:                                              ; preds = %657
  %659 = getelementptr inbounds %struct.VertRen, ptr %655, i64 0, i32 5
  %660 = load i32, ptr %659, align 8, !tbaa !153
  %661 = and i32 %660, 255
  %662 = zext nneg i32 %661 to i64
  %663 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %662
  %664 = load i32, ptr %663, align 8, !tbaa !134
  %665 = icmp eq i32 %664, %660
  br i1 %665, label %666, label %677

666:                                              ; preds = %658
  %667 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %662, i32 2
  %668 = load float, ptr %667, align 8, !tbaa !50
  store float %668, ptr %15, align 16, !tbaa !50
  %669 = getelementptr inbounds float, ptr %667, i64 1
  %670 = load float, ptr %669, align 4, !tbaa !50
  store float %670, ptr %159, align 4, !tbaa !50
  %671 = getelementptr inbounds float, ptr %667, i64 2
  %672 = load float, ptr %671, align 8, !tbaa !50
  store float %672, ptr %160, align 8, !tbaa !50
  %673 = getelementptr inbounds float, ptr %667, i64 3
  %674 = load float, ptr %673, align 4, !tbaa !50
  store float %674, ptr %161, align 4, !tbaa !50
  %675 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %662, i32 1
  %676 = load i32, ptr %675, align 4, !tbaa !155
  br label %748

677:                                              ; preds = %658
  %678 = load float, ptr %655, align 4, !tbaa !50
  %679 = getelementptr inbounds float, ptr %655, i64 1
  %680 = load float, ptr %679, align 4, !tbaa !50
  %681 = getelementptr inbounds float, ptr %655, i64 2
  %682 = load float, ptr %681, align 4, !tbaa !50
  %683 = load float, ptr %11, align 16, !tbaa !50
  %684 = load float, ptr %141, align 16, !tbaa !50
  %685 = fmul float %680, %684
  %686 = call float @llvm.fmuladd.f32(float %678, float %683, float %685)
  %687 = load float, ptr %142, align 16, !tbaa !50
  %688 = call float @llvm.fmuladd.f32(float %682, float %687, float %686)
  %689 = load float, ptr %143, align 16, !tbaa !50
  %690 = fadd float %689, %688
  store float %690, ptr %15, align 16, !tbaa !50
  %691 = load float, ptr %144, align 4, !tbaa !50
  %692 = load float, ptr %145, align 4, !tbaa !50
  %693 = fmul float %680, %692
  %694 = call float @llvm.fmuladd.f32(float %678, float %691, float %693)
  %695 = load float, ptr %146, align 4, !tbaa !50
  %696 = call float @llvm.fmuladd.f32(float %682, float %695, float %694)
  %697 = load float, ptr %147, align 4, !tbaa !50
  %698 = fadd float %697, %696
  store float %698, ptr %148, align 4, !tbaa !50
  %699 = load float, ptr %149, align 8, !tbaa !50
  %700 = load float, ptr %150, align 8, !tbaa !50
  %701 = fmul float %680, %700
  %702 = call float @llvm.fmuladd.f32(float %678, float %699, float %701)
  %703 = load float, ptr %151, align 8, !tbaa !50
  %704 = call float @llvm.fmuladd.f32(float %682, float %703, float %702)
  %705 = load float, ptr %152, align 8, !tbaa !50
  %706 = fadd float %705, %704
  store float %706, ptr %153, align 8, !tbaa !50
  %707 = load float, ptr %154, align 4, !tbaa !50
  %708 = load float, ptr %155, align 4, !tbaa !50
  %709 = fmul float %680, %708
  %710 = call float @llvm.fmuladd.f32(float %678, float %707, float %709)
  %711 = load float, ptr %156, align 4, !tbaa !50
  %712 = call float @llvm.fmuladd.f32(float %682, float %711, float %710)
  %713 = load float, ptr %157, align 4, !tbaa !50
  %714 = fadd float %713, %712
  store float %714, ptr %158, align 4, !tbaa !50
  %715 = call float @llvm.fabs.f32(float %714)
  %716 = fadd float %715, 0x3E80000000000000
  %717 = fneg float %716
  %718 = fcmp olt float %690, %717
  br i1 %718, label %722, label %719

719:                                              ; preds = %677
  %720 = fcmp ogt float %690, %716
  br i1 %720, label %721, label %722

721:                                              ; preds = %719
  br label %722

722:                                              ; preds = %721, %719, %677
  %723 = phi i16 [ 2, %721 ], [ 0, %719 ], [ 1, %677 ]
  %724 = fcmp ogt float %698, %716
  br i1 %724, label %725, label %727

725:                                              ; preds = %722
  %726 = or disjoint i16 %723, 4
  br label %731

727:                                              ; preds = %722
  %728 = fcmp olt float %698, %717
  br i1 %728, label %729, label %731

729:                                              ; preds = %727
  %730 = or disjoint i16 %723, 8
  br label %731

731:                                              ; preds = %729, %727, %725
  %732 = phi i16 [ %726, %725 ], [ %730, %729 ], [ %723, %727 ]
  %733 = fcmp olt float %706, %717
  br i1 %733, label %734, label %736

734:                                              ; preds = %731
  %735 = add nsw i16 %732, 16
  br label %740

736:                                              ; preds = %731
  %737 = fcmp ogt float %706, %716
  br i1 %737, label %738, label %740

738:                                              ; preds = %736
  %739 = add nsw i16 %732, 32
  br label %740

740:                                              ; preds = %734, %736, %738
  %741 = phi i16 [ %735, %734 ], [ %739, %738 ], [ %732, %736 ]
  %742 = zext nneg i16 %741 to i32
  %743 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %662, i32 2
  store float %690, ptr %743, align 8, !tbaa !50
  %744 = getelementptr inbounds float, ptr %743, i64 1
  store float %698, ptr %744, align 4, !tbaa !50
  %745 = getelementptr inbounds float, ptr %743, i64 2
  store float %706, ptr %745, align 8, !tbaa !50
  %746 = getelementptr inbounds float, ptr %743, i64 3
  store float %714, ptr %746, align 4, !tbaa !50
  %747 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %662, i32 1
  store i32 %742, ptr %747, align 4, !tbaa !155
  store i32 %660, ptr %663, align 8, !tbaa !134
  br label %748

748:                                              ; preds = %666, %740
  %749 = phi i32 [ %676, %666 ], [ %742, %740 ]
  %750 = add nuw nsw i32 %327, 1
  %751 = getelementptr inbounds %struct.VlakRen, ptr %341, i64 0, i32 8
  %752 = load i8, ptr %751, align 2, !tbaa !156
  %753 = zext i8 %752 to i32
  call void @zbufclipwire(ptr noundef nonnull %9, i32 noundef 0, i32 noundef %750, i32 noundef %753, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef %461, i32 noundef %554, i32 noundef %647, i32 noundef %749)
  br label %853

754:                                              ; preds = %657
  %755 = add nuw nsw i32 %327, 1
  %756 = getelementptr inbounds %struct.VlakRen, ptr %341, i64 0, i32 8
  %757 = load i8, ptr %756, align 2, !tbaa !156
  %758 = zext i8 %757 to i32
  call void @zbufclipwire(ptr noundef nonnull %9, i32 noundef 0, i32 noundef %755, i32 noundef %758, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef null, i32 noundef %461, i32 noundef %554, i32 noundef %647, i32 noundef 0)
  br label %853

759:                                              ; preds = %646
  br i1 %656, label %852, label %760

760:                                              ; preds = %759
  %761 = getelementptr inbounds %struct.VertRen, ptr %655, i64 0, i32 5
  %762 = load i32, ptr %761, align 8, !tbaa !153
  %763 = and i32 %762, 255
  %764 = zext nneg i32 %763 to i64
  %765 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %764
  %766 = load i32, ptr %765, align 8, !tbaa !134
  %767 = icmp eq i32 %766, %762
  br i1 %767, label %768, label %779

768:                                              ; preds = %760
  %769 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %764, i32 2
  %770 = load float, ptr %769, align 8, !tbaa !50
  store float %770, ptr %15, align 16, !tbaa !50
  %771 = getelementptr inbounds float, ptr %769, i64 1
  %772 = load float, ptr %771, align 4, !tbaa !50
  store float %772, ptr %180, align 4, !tbaa !50
  %773 = getelementptr inbounds float, ptr %769, i64 2
  %774 = load float, ptr %773, align 8, !tbaa !50
  store float %774, ptr %181, align 8, !tbaa !50
  %775 = getelementptr inbounds float, ptr %769, i64 3
  %776 = load float, ptr %775, align 4, !tbaa !50
  store float %776, ptr %182, align 4, !tbaa !50
  %777 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %764, i32 1
  %778 = load i32, ptr %777, align 4, !tbaa !155
  br label %850

779:                                              ; preds = %760
  %780 = load float, ptr %655, align 4, !tbaa !50
  %781 = getelementptr inbounds float, ptr %655, i64 1
  %782 = load float, ptr %781, align 4, !tbaa !50
  %783 = getelementptr inbounds float, ptr %655, i64 2
  %784 = load float, ptr %783, align 4, !tbaa !50
  %785 = load float, ptr %11, align 16, !tbaa !50
  %786 = load float, ptr %162, align 16, !tbaa !50
  %787 = fmul float %782, %786
  %788 = call float @llvm.fmuladd.f32(float %780, float %785, float %787)
  %789 = load float, ptr %163, align 16, !tbaa !50
  %790 = call float @llvm.fmuladd.f32(float %784, float %789, float %788)
  %791 = load float, ptr %164, align 16, !tbaa !50
  %792 = fadd float %791, %790
  store float %792, ptr %15, align 16, !tbaa !50
  %793 = load float, ptr %165, align 4, !tbaa !50
  %794 = load float, ptr %166, align 4, !tbaa !50
  %795 = fmul float %782, %794
  %796 = call float @llvm.fmuladd.f32(float %780, float %793, float %795)
  %797 = load float, ptr %167, align 4, !tbaa !50
  %798 = call float @llvm.fmuladd.f32(float %784, float %797, float %796)
  %799 = load float, ptr %168, align 4, !tbaa !50
  %800 = fadd float %799, %798
  store float %800, ptr %169, align 4, !tbaa !50
  %801 = load float, ptr %170, align 8, !tbaa !50
  %802 = load float, ptr %171, align 8, !tbaa !50
  %803 = fmul float %782, %802
  %804 = call float @llvm.fmuladd.f32(float %780, float %801, float %803)
  %805 = load float, ptr %172, align 8, !tbaa !50
  %806 = call float @llvm.fmuladd.f32(float %784, float %805, float %804)
  %807 = load float, ptr %173, align 8, !tbaa !50
  %808 = fadd float %807, %806
  store float %808, ptr %174, align 8, !tbaa !50
  %809 = load float, ptr %175, align 4, !tbaa !50
  %810 = load float, ptr %176, align 4, !tbaa !50
  %811 = fmul float %782, %810
  %812 = call float @llvm.fmuladd.f32(float %780, float %809, float %811)
  %813 = load float, ptr %177, align 4, !tbaa !50
  %814 = call float @llvm.fmuladd.f32(float %784, float %813, float %812)
  %815 = load float, ptr %178, align 4, !tbaa !50
  %816 = fadd float %815, %814
  store float %816, ptr %179, align 4, !tbaa !50
  %817 = call float @llvm.fabs.f32(float %816)
  %818 = fadd float %817, 0x3E80000000000000
  %819 = fneg float %818
  %820 = fcmp olt float %792, %819
  br i1 %820, label %824, label %821

821:                                              ; preds = %779
  %822 = fcmp ogt float %792, %818
  br i1 %822, label %823, label %824

823:                                              ; preds = %821
  br label %824

824:                                              ; preds = %823, %821, %779
  %825 = phi i16 [ 2, %823 ], [ 0, %821 ], [ 1, %779 ]
  %826 = fcmp ogt float %800, %818
  br i1 %826, label %827, label %829

827:                                              ; preds = %824
  %828 = or disjoint i16 %825, 4
  br label %833

829:                                              ; preds = %824
  %830 = fcmp olt float %800, %819
  br i1 %830, label %831, label %833

831:                                              ; preds = %829
  %832 = or disjoint i16 %825, 8
  br label %833

833:                                              ; preds = %831, %829, %827
  %834 = phi i16 [ %828, %827 ], [ %832, %831 ], [ %825, %829 ]
  %835 = fcmp olt float %808, %819
  br i1 %835, label %836, label %838

836:                                              ; preds = %833
  %837 = add nsw i16 %834, 16
  br label %842

838:                                              ; preds = %833
  %839 = fcmp ogt float %808, %818
  br i1 %839, label %840, label %842

840:                                              ; preds = %838
  %841 = add nsw i16 %834, 32
  br label %842

842:                                              ; preds = %836, %838, %840
  %843 = phi i16 [ %837, %836 ], [ %841, %840 ], [ %834, %838 ]
  %844 = zext nneg i16 %843 to i32
  %845 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %764, i32 2
  store float %792, ptr %845, align 8, !tbaa !50
  %846 = getelementptr inbounds float, ptr %845, i64 1
  store float %800, ptr %846, align 4, !tbaa !50
  %847 = getelementptr inbounds float, ptr %845, i64 2
  store float %808, ptr %847, align 8, !tbaa !50
  %848 = getelementptr inbounds float, ptr %845, i64 3
  store float %816, ptr %848, align 4, !tbaa !50
  %849 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %764, i32 1
  store i32 %844, ptr %849, align 4, !tbaa !155
  store i32 %762, ptr %765, align 8, !tbaa !134
  br label %850

850:                                              ; preds = %768, %842
  %851 = phi i32 [ %778, %768 ], [ %844, %842 ]
  call void @zbufclip4(ptr noundef nonnull %9, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef %461, i32 noundef %554, i32 noundef %647, i32 noundef %851)
  br label %853

852:                                              ; preds = %759
  call void @zbufclip(ptr noundef nonnull %9, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, i32 noundef %461, i32 noundef %554, i32 noundef %647)
  br label %853

853:                                              ; preds = %754, %748, %852, %850, %364, %360, %356
  %854 = icmp eq i32 %330, 255
  br i1 %854, label %855, label %860

855:                                              ; preds = %853
  %856 = load ptr, ptr %77, align 8, !tbaa !181
  %857 = load ptr, ptr %183, align 8, !tbaa !182
  %858 = call i32 %856(ptr noundef %857) #14
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %860, label %864

860:                                              ; preds = %853, %855
  %861 = add nuw nsw i32 %327, 1
  %862 = load i32, ptr %315, align 4, !tbaa !133
  %863 = icmp slt i32 %861, %862
  br i1 %863, label %325, label %864, !llvm.loop !183

864:                                              ; preds = %860, %855, %314
  %865 = phi ptr [ %280, %314 ], [ %341, %855 ], [ %341, %860 ]
  %866 = phi ptr [ %279, %314 ], [ %357, %855 ], [ %357, %860 ]
  %867 = phi i32 [ %278, %314 ], [ %358, %855 ], [ %358, %860 ]
  %868 = getelementptr inbounds %struct.ObjectRen, ptr %282, i64 0, i32 22
  %869 = load ptr, ptr %868, align 8, !tbaa !184
  %870 = icmp eq ptr %869, null
  br i1 %870, label %1388, label %871

871:                                              ; preds = %864
  %872 = load ptr, ptr %868, align 8, !tbaa !184
  %873 = getelementptr inbounds %struct.StrandBuffer, ptr %872, i64 0, i32 5
  %874 = load i32, ptr %873, align 4, !tbaa !185
  %875 = icmp sgt i32 %874, 0
  br i1 %875, label %876, label %1388

876:                                              ; preds = %871
  %877 = getelementptr inbounds %struct.StrandBuffer, ptr %869, i64 0, i32 3
  %878 = load ptr, ptr %877, align 8, !tbaa !187
  br label %879

879:                                              ; preds = %876, %1379
  %880 = phi i32 [ %1381, %1379 ], [ %867, %876 ]
  %881 = phi i32 [ %1382, %1379 ], [ 0, %876 ]
  %882 = phi ptr [ %1383, %1379 ], [ %878, %876 ]
  %883 = phi ptr [ %1380, %1379 ], [ %866, %876 ]
  %884 = getelementptr inbounds %struct.StrandBound, ptr %882, i64 0, i32 2
  %885 = call i32 @clip_render_object(ptr noundef nonnull %884, ptr noundef null, ptr noundef nonnull %11) #14
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %887, label %1379

887:                                              ; preds = %879
  %888 = load i32, ptr %882, align 4, !tbaa !188
  %889 = getelementptr inbounds %struct.StrandBound, ptr %882, i64 0, i32 1
  %890 = load float, ptr %12, align 16, !tbaa !50
  %891 = load float, ptr %13, align 16, !tbaa !50
  %892 = load float, ptr %14, align 16, !tbaa !50
  %893 = load i32, ptr %889, align 4, !tbaa !190
  %894 = icmp slt i32 %888, %893
  br i1 %894, label %895, label %1373

895:                                              ; preds = %887
  %896 = load float, ptr %199, align 4, !tbaa !50
  %897 = load float, ptr %219, align 4, !tbaa !50
  %898 = load float, ptr %239, align 4, !tbaa !50
  br label %899

899:                                              ; preds = %895, %1368
  %900 = phi float [ %898, %895 ], [ %1355, %1368 ]
  %901 = phi float [ %897, %895 ], [ %1356, %1368 ]
  %902 = phi float [ %896, %895 ], [ %1357, %1368 ]
  %903 = phi i32 [ %880, %895 ], [ %932, %1368 ]
  %904 = phi i32 [ %888, %895 ], [ %1369, %1368 ]
  %905 = phi ptr [ %883, %895 ], [ %931, %1368 ]
  %906 = phi float [ %890, %895 ], [ %1360, %1368 ]
  %907 = phi float [ %891, %895 ], [ %1359, %1368 ]
  %908 = phi float [ %892, %895 ], [ %1358, %1368 ]
  %909 = call ptr @RE_findOrAddStrand(ptr noundef %282, i32 noundef %904) #14
  store ptr %277, ptr %185, align 8, !tbaa !191
  %910 = getelementptr inbounds %struct.StrandRen, ptr %909, i64 0, i32 1
  %911 = load ptr, ptr %910, align 8, !tbaa !194
  store ptr %911, ptr %186, align 8, !tbaa !196
  %912 = getelementptr inbounds %struct.StrandBuffer, ptr %911, i64 0, i32 13
  %913 = load float, ptr %912, align 8, !tbaa !197
  %914 = fmul float %913, %913
  store float %914, ptr %187, align 8, !tbaa !198
  store ptr %909, ptr %188, align 8, !tbaa !199
  %915 = load ptr, ptr %909, align 8, !tbaa !200
  %916 = getelementptr inbounds %struct.StrandBuffer, ptr %911, i64 0, i32 7
  %917 = load ptr, ptr %916, align 8, !tbaa !201
  %918 = icmp eq ptr %917, %905
  br i1 %918, label %930, label %919

919:                                              ; preds = %899
  %920 = getelementptr inbounds %struct.Material, ptr %917, i64 0, i32 53
  %921 = load i32, ptr %920, align 4, !tbaa !180
  %922 = and i32 %921, 1
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %929, label %924

924:                                              ; preds = %919
  %925 = getelementptr inbounds %struct.Material, ptr %917, i64 0, i32 51
  %926 = load i32, ptr %925, align 4, !tbaa !142
  %927 = and i32 %926, 33554432
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %929, label %930

929:                                              ; preds = %924, %919
  br label %930

930:                                              ; preds = %924, %929, %899
  %931 = phi ptr [ %917, %929 ], [ %917, %924 ], [ %905, %899 ]
  %932 = phi i32 [ 0, %929 ], [ 1, %924 ], [ %903, %899 ]
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %1354, label %934

934:                                              ; preds = %930
  %935 = getelementptr inbounds %struct.StrandBuffer, ptr %911, i64 0, i32 9
  %936 = load i32, ptr %935, align 8, !tbaa !202
  %937 = and i32 %936, %24
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %1354, label %939

939:                                              ; preds = %934
  %940 = getelementptr inbounds %struct.StrandRen, ptr %909, i64 0, i32 2
  %941 = load i32, ptr %940, align 8, !tbaa !203
  %942 = call i32 @llvm.smin.i32(i32 %941, i32 256)
  %943 = sext i32 %942 to i64
  %944 = mul nsw i64 %943, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %8, i8 0, i64 %944, i1 false)
  %945 = icmp sgt i32 %941, 0
  br i1 %945, label %946, label %948

946:                                              ; preds = %939
  %947 = zext nneg i32 %942 to i64
  br label %951

948:                                              ; preds = %951, %939
  %949 = load i32, ptr %940, align 8, !tbaa !203
  %950 = icmp sgt i32 %949, 1
  br i1 %950, label %956, label %1354

951:                                              ; preds = %946, %951
  %952 = phi i64 [ 0, %946 ], [ %954, %951 ]
  %953 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %952
  store i32 -1, ptr %953, align 8, !tbaa !134
  %954 = add nuw nsw i64 %952, 1
  %955 = icmp eq i64 %954, %947
  br i1 %955, label %948, label %951, !llvm.loop !136

956:                                              ; preds = %948, %1349
  %957 = phi i32 [ %1351, %1349 ], [ %949, %948 ]
  %958 = phi i32 [ %1350, %1349 ], [ 0, %948 ]
  %959 = phi ptr [ %963, %1349 ], [ %915, %948 ]
  %960 = icmp ne i32 %958, 0
  %961 = sext i1 %960 to i64
  %962 = getelementptr inbounds %struct.StrandVert, ptr %959, i64 %961
  store ptr %962, ptr %10, align 8, !tbaa !42
  store ptr %959, ptr %189, align 8, !tbaa !42
  %963 = getelementptr inbounds %struct.StrandVert, ptr %959, i64 1
  store ptr %963, ptr %190, align 8, !tbaa !42
  %964 = add nsw i32 %957, -2
  %965 = icmp slt i32 %958, %964
  %966 = getelementptr inbounds %struct.StrandVert, ptr %959, i64 2
  %967 = select i1 %965, ptr %966, ptr %963
  store ptr %967, ptr %191, align 8, !tbaa !42
  %968 = load ptr, ptr %909, align 8, !tbaa !200
  %969 = ptrtoint ptr %962 to i64
  %970 = ptrtoint ptr %968 to i64
  %971 = sub i64 %969, %970
  %972 = lshr exact i64 %971, 4
  %973 = trunc i64 %972 to i32
  %974 = and i64 %972, 255
  %975 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %974
  %976 = load i32, ptr %975, align 8, !tbaa !134
  %977 = icmp eq i32 %976, %973
  br i1 %977, label %978, label %989

978:                                              ; preds = %956
  %979 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %974, i32 2
  %980 = load float, ptr %979, align 8, !tbaa !50
  %981 = getelementptr inbounds float, ptr %979, i64 1
  %982 = load float, ptr %981, align 4, !tbaa !50
  %983 = getelementptr inbounds float, ptr %979, i64 2
  %984 = load float, ptr %983, align 8, !tbaa !50
  store float %984, ptr %210, align 8, !tbaa !50
  %985 = getelementptr inbounds float, ptr %979, i64 3
  %986 = load float, ptr %985, align 4, !tbaa !50
  store float %986, ptr %211, align 4, !tbaa !50
  %987 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %974, i32 1
  %988 = load i32, ptr %987, align 4, !tbaa !155
  br label %1060

989:                                              ; preds = %956
  %990 = load float, ptr %962, align 4, !tbaa !50
  %991 = getelementptr inbounds float, ptr %962, i64 1
  %992 = load float, ptr %991, align 4, !tbaa !50
  %993 = getelementptr inbounds float, ptr %962, i64 2
  %994 = load float, ptr %993, align 4, !tbaa !50
  %995 = load float, ptr %11, align 16, !tbaa !50
  %996 = load float, ptr %192, align 16, !tbaa !50
  %997 = fmul float %992, %996
  %998 = call float @llvm.fmuladd.f32(float %990, float %995, float %997)
  %999 = load float, ptr %193, align 16, !tbaa !50
  %1000 = call float @llvm.fmuladd.f32(float %994, float %999, float %998)
  %1001 = load float, ptr %194, align 16, !tbaa !50
  %1002 = fadd float %1001, %1000
  %1003 = load float, ptr %195, align 4, !tbaa !50
  %1004 = load float, ptr %196, align 4, !tbaa !50
  %1005 = fmul float %992, %1004
  %1006 = call float @llvm.fmuladd.f32(float %990, float %1003, float %1005)
  %1007 = load float, ptr %197, align 4, !tbaa !50
  %1008 = call float @llvm.fmuladd.f32(float %994, float %1007, float %1006)
  %1009 = load float, ptr %198, align 4, !tbaa !50
  %1010 = fadd float %1009, %1008
  %1011 = load float, ptr %200, align 8, !tbaa !50
  %1012 = load float, ptr %201, align 8, !tbaa !50
  %1013 = fmul float %992, %1012
  %1014 = call float @llvm.fmuladd.f32(float %990, float %1011, float %1013)
  %1015 = load float, ptr %202, align 8, !tbaa !50
  %1016 = call float @llvm.fmuladd.f32(float %994, float %1015, float %1014)
  %1017 = load float, ptr %203, align 8, !tbaa !50
  %1018 = fadd float %1017, %1016
  store float %1018, ptr %204, align 8, !tbaa !50
  %1019 = load float, ptr %205, align 4, !tbaa !50
  %1020 = load float, ptr %206, align 4, !tbaa !50
  %1021 = fmul float %992, %1020
  %1022 = call float @llvm.fmuladd.f32(float %990, float %1019, float %1021)
  %1023 = load float, ptr %207, align 4, !tbaa !50
  %1024 = call float @llvm.fmuladd.f32(float %994, float %1023, float %1022)
  %1025 = load float, ptr %208, align 4, !tbaa !50
  %1026 = fadd float %1025, %1024
  store float %1026, ptr %209, align 4, !tbaa !50
  %1027 = call float @llvm.fabs.f32(float %1026)
  %1028 = fadd float %1027, 0x3E80000000000000
  %1029 = fneg float %1028
  %1030 = fcmp olt float %1002, %1029
  br i1 %1030, label %1034, label %1031

1031:                                             ; preds = %989
  %1032 = fcmp ogt float %1002, %1028
  br i1 %1032, label %1033, label %1034

1033:                                             ; preds = %1031
  br label %1034

1034:                                             ; preds = %1033, %1031, %989
  %1035 = phi i16 [ 2, %1033 ], [ 0, %1031 ], [ 1, %989 ]
  %1036 = fcmp ogt float %1010, %1028
  br i1 %1036, label %1037, label %1039

1037:                                             ; preds = %1034
  %1038 = or disjoint i16 %1035, 4
  br label %1043

1039:                                             ; preds = %1034
  %1040 = fcmp olt float %1010, %1029
  br i1 %1040, label %1041, label %1043

1041:                                             ; preds = %1039
  %1042 = or disjoint i16 %1035, 8
  br label %1043

1043:                                             ; preds = %1041, %1039, %1037
  %1044 = phi i16 [ %1038, %1037 ], [ %1042, %1041 ], [ %1035, %1039 ]
  %1045 = fcmp olt float %1018, %1029
  br i1 %1045, label %1046, label %1048

1046:                                             ; preds = %1043
  %1047 = add nsw i16 %1044, 16
  br label %1052

1048:                                             ; preds = %1043
  %1049 = fcmp ogt float %1018, %1028
  br i1 %1049, label %1050, label %1052

1050:                                             ; preds = %1048
  %1051 = add nsw i16 %1044, 32
  br label %1052

1052:                                             ; preds = %1046, %1048, %1050
  %1053 = phi i16 [ %1047, %1046 ], [ %1051, %1050 ], [ %1044, %1048 ]
  %1054 = zext nneg i16 %1053 to i32
  %1055 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %974, i32 2
  store float %1002, ptr %1055, align 8, !tbaa !50
  %1056 = getelementptr inbounds float, ptr %1055, i64 1
  store float %1010, ptr %1056, align 4, !tbaa !50
  %1057 = getelementptr inbounds float, ptr %1055, i64 2
  store float %1018, ptr %1057, align 8, !tbaa !50
  %1058 = getelementptr inbounds float, ptr %1055, i64 3
  store float %1026, ptr %1058, align 4, !tbaa !50
  %1059 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %974, i32 1
  store i32 %1054, ptr %1059, align 4, !tbaa !155
  store i32 %973, ptr %975, align 8, !tbaa !134
  br label %1060

1060:                                             ; preds = %978, %1052
  %1061 = phi float [ %982, %978 ], [ %1010, %1052 ]
  %1062 = phi float [ %980, %978 ], [ %1002, %1052 ]
  %1063 = phi i32 [ %988, %978 ], [ %1054, %1052 ]
  %1064 = ptrtoint ptr %959 to i64
  %1065 = sub i64 %1064, %970
  %1066 = lshr exact i64 %1065, 4
  %1067 = trunc i64 %1066 to i32
  %1068 = and i64 %1066, 255
  %1069 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %1068
  %1070 = load i32, ptr %1069, align 8, !tbaa !134
  %1071 = icmp eq i32 %1070, %1067
  br i1 %1071, label %1072, label %1083

1072:                                             ; preds = %1060
  %1073 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %1068, i32 2
  %1074 = load float, ptr %1073, align 8, !tbaa !50
  %1075 = getelementptr inbounds float, ptr %1073, i64 1
  %1076 = load float, ptr %1075, align 4, !tbaa !50
  %1077 = getelementptr inbounds float, ptr %1073, i64 2
  %1078 = load float, ptr %1077, align 8, !tbaa !50
  store float %1078, ptr %230, align 8, !tbaa !50
  %1079 = getelementptr inbounds float, ptr %1073, i64 3
  %1080 = load float, ptr %1079, align 4, !tbaa !50
  store float %1080, ptr %231, align 4, !tbaa !50
  %1081 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %1068, i32 1
  %1082 = load i32, ptr %1081, align 4, !tbaa !155
  br label %1154

1083:                                             ; preds = %1060
  %1084 = load float, ptr %959, align 4, !tbaa !50
  %1085 = getelementptr inbounds float, ptr %959, i64 1
  %1086 = load float, ptr %1085, align 4, !tbaa !50
  %1087 = getelementptr inbounds float, ptr %959, i64 2
  %1088 = load float, ptr %1087, align 4, !tbaa !50
  %1089 = load float, ptr %11, align 16, !tbaa !50
  %1090 = load float, ptr %212, align 16, !tbaa !50
  %1091 = fmul float %1086, %1090
  %1092 = call float @llvm.fmuladd.f32(float %1084, float %1089, float %1091)
  %1093 = load float, ptr %213, align 16, !tbaa !50
  %1094 = call float @llvm.fmuladd.f32(float %1088, float %1093, float %1092)
  %1095 = load float, ptr %214, align 16, !tbaa !50
  %1096 = fadd float %1095, %1094
  %1097 = load float, ptr %215, align 4, !tbaa !50
  %1098 = load float, ptr %216, align 4, !tbaa !50
  %1099 = fmul float %1086, %1098
  %1100 = call float @llvm.fmuladd.f32(float %1084, float %1097, float %1099)
  %1101 = load float, ptr %217, align 4, !tbaa !50
  %1102 = call float @llvm.fmuladd.f32(float %1088, float %1101, float %1100)
  %1103 = load float, ptr %218, align 4, !tbaa !50
  %1104 = fadd float %1103, %1102
  %1105 = load float, ptr %220, align 8, !tbaa !50
  %1106 = load float, ptr %221, align 8, !tbaa !50
  %1107 = fmul float %1086, %1106
  %1108 = call float @llvm.fmuladd.f32(float %1084, float %1105, float %1107)
  %1109 = load float, ptr %222, align 8, !tbaa !50
  %1110 = call float @llvm.fmuladd.f32(float %1088, float %1109, float %1108)
  %1111 = load float, ptr %223, align 8, !tbaa !50
  %1112 = fadd float %1111, %1110
  store float %1112, ptr %224, align 8, !tbaa !50
  %1113 = load float, ptr %225, align 4, !tbaa !50
  %1114 = load float, ptr %226, align 4, !tbaa !50
  %1115 = fmul float %1086, %1114
  %1116 = call float @llvm.fmuladd.f32(float %1084, float %1113, float %1115)
  %1117 = load float, ptr %227, align 4, !tbaa !50
  %1118 = call float @llvm.fmuladd.f32(float %1088, float %1117, float %1116)
  %1119 = load float, ptr %228, align 4, !tbaa !50
  %1120 = fadd float %1119, %1118
  store float %1120, ptr %229, align 4, !tbaa !50
  %1121 = call float @llvm.fabs.f32(float %1120)
  %1122 = fadd float %1121, 0x3E80000000000000
  %1123 = fneg float %1122
  %1124 = fcmp olt float %1096, %1123
  br i1 %1124, label %1128, label %1125

1125:                                             ; preds = %1083
  %1126 = fcmp ogt float %1096, %1122
  br i1 %1126, label %1127, label %1128

1127:                                             ; preds = %1125
  br label %1128

1128:                                             ; preds = %1127, %1125, %1083
  %1129 = phi i16 [ 2, %1127 ], [ 0, %1125 ], [ 1, %1083 ]
  %1130 = fcmp ogt float %1104, %1122
  br i1 %1130, label %1131, label %1133

1131:                                             ; preds = %1128
  %1132 = or disjoint i16 %1129, 4
  br label %1137

1133:                                             ; preds = %1128
  %1134 = fcmp olt float %1104, %1123
  br i1 %1134, label %1135, label %1137

1135:                                             ; preds = %1133
  %1136 = or disjoint i16 %1129, 8
  br label %1137

1137:                                             ; preds = %1135, %1133, %1131
  %1138 = phi i16 [ %1132, %1131 ], [ %1136, %1135 ], [ %1129, %1133 ]
  %1139 = fcmp olt float %1112, %1123
  br i1 %1139, label %1140, label %1142

1140:                                             ; preds = %1137
  %1141 = add nsw i16 %1138, 16
  br label %1146

1142:                                             ; preds = %1137
  %1143 = fcmp ogt float %1112, %1122
  br i1 %1143, label %1144, label %1146

1144:                                             ; preds = %1142
  %1145 = add nsw i16 %1138, 32
  br label %1146

1146:                                             ; preds = %1140, %1142, %1144
  %1147 = phi i16 [ %1141, %1140 ], [ %1145, %1144 ], [ %1138, %1142 ]
  %1148 = zext nneg i16 %1147 to i32
  %1149 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %1068, i32 2
  store float %1096, ptr %1149, align 8, !tbaa !50
  %1150 = getelementptr inbounds float, ptr %1149, i64 1
  store float %1104, ptr %1150, align 4, !tbaa !50
  %1151 = getelementptr inbounds float, ptr %1149, i64 2
  store float %1112, ptr %1151, align 8, !tbaa !50
  %1152 = getelementptr inbounds float, ptr %1149, i64 3
  store float %1120, ptr %1152, align 4, !tbaa !50
  %1153 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %1068, i32 1
  store i32 %1148, ptr %1153, align 4, !tbaa !155
  store i32 %1067, ptr %1069, align 8, !tbaa !134
  br label %1154

1154:                                             ; preds = %1072, %1146
  %1155 = phi float [ %1076, %1072 ], [ %1104, %1146 ]
  %1156 = phi float [ %1074, %1072 ], [ %1096, %1146 ]
  %1157 = phi i32 [ %1082, %1072 ], [ %1148, %1146 ]
  %1158 = ptrtoint ptr %963 to i64
  %1159 = sub i64 %1158, %970
  %1160 = lshr exact i64 %1159, 4
  %1161 = trunc i64 %1160 to i32
  %1162 = and i64 %1160, 255
  %1163 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %1162
  %1164 = load i32, ptr %1163, align 8, !tbaa !134
  %1165 = icmp eq i32 %1164, %1161
  br i1 %1165, label %1166, label %1177

1166:                                             ; preds = %1154
  %1167 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %1162, i32 2
  %1168 = load float, ptr %1167, align 8, !tbaa !50
  %1169 = getelementptr inbounds float, ptr %1167, i64 1
  %1170 = load float, ptr %1169, align 4, !tbaa !50
  %1171 = getelementptr inbounds float, ptr %1167, i64 2
  %1172 = load float, ptr %1171, align 8, !tbaa !50
  store float %1172, ptr %250, align 8, !tbaa !50
  %1173 = getelementptr inbounds float, ptr %1167, i64 3
  %1174 = load float, ptr %1173, align 4, !tbaa !50
  store float %1174, ptr %251, align 4, !tbaa !50
  %1175 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %1162, i32 1
  %1176 = load i32, ptr %1175, align 4, !tbaa !155
  br label %1248

1177:                                             ; preds = %1154
  %1178 = load float, ptr %963, align 4, !tbaa !50
  %1179 = getelementptr inbounds %struct.StrandVert, ptr %959, i64 1, i32 0, i64 1
  %1180 = load float, ptr %1179, align 4, !tbaa !50
  %1181 = getelementptr inbounds %struct.StrandVert, ptr %959, i64 1, i32 0, i64 2
  %1182 = load float, ptr %1181, align 4, !tbaa !50
  %1183 = load float, ptr %11, align 16, !tbaa !50
  %1184 = load float, ptr %232, align 16, !tbaa !50
  %1185 = fmul float %1180, %1184
  %1186 = call float @llvm.fmuladd.f32(float %1178, float %1183, float %1185)
  %1187 = load float, ptr %233, align 16, !tbaa !50
  %1188 = call float @llvm.fmuladd.f32(float %1182, float %1187, float %1186)
  %1189 = load float, ptr %234, align 16, !tbaa !50
  %1190 = fadd float %1189, %1188
  %1191 = load float, ptr %235, align 4, !tbaa !50
  %1192 = load float, ptr %236, align 4, !tbaa !50
  %1193 = fmul float %1180, %1192
  %1194 = call float @llvm.fmuladd.f32(float %1178, float %1191, float %1193)
  %1195 = load float, ptr %237, align 4, !tbaa !50
  %1196 = call float @llvm.fmuladd.f32(float %1182, float %1195, float %1194)
  %1197 = load float, ptr %238, align 4, !tbaa !50
  %1198 = fadd float %1197, %1196
  %1199 = load float, ptr %240, align 8, !tbaa !50
  %1200 = load float, ptr %241, align 8, !tbaa !50
  %1201 = fmul float %1180, %1200
  %1202 = call float @llvm.fmuladd.f32(float %1178, float %1199, float %1201)
  %1203 = load float, ptr %242, align 8, !tbaa !50
  %1204 = call float @llvm.fmuladd.f32(float %1182, float %1203, float %1202)
  %1205 = load float, ptr %243, align 8, !tbaa !50
  %1206 = fadd float %1205, %1204
  store float %1206, ptr %244, align 8, !tbaa !50
  %1207 = load float, ptr %245, align 4, !tbaa !50
  %1208 = load float, ptr %246, align 4, !tbaa !50
  %1209 = fmul float %1180, %1208
  %1210 = call float @llvm.fmuladd.f32(float %1178, float %1207, float %1209)
  %1211 = load float, ptr %247, align 4, !tbaa !50
  %1212 = call float @llvm.fmuladd.f32(float %1182, float %1211, float %1210)
  %1213 = load float, ptr %248, align 4, !tbaa !50
  %1214 = fadd float %1213, %1212
  store float %1214, ptr %249, align 4, !tbaa !50
  %1215 = call float @llvm.fabs.f32(float %1214)
  %1216 = fadd float %1215, 0x3E80000000000000
  %1217 = fneg float %1216
  %1218 = fcmp olt float %1190, %1217
  br i1 %1218, label %1222, label %1219

1219:                                             ; preds = %1177
  %1220 = fcmp ogt float %1190, %1216
  br i1 %1220, label %1221, label %1222

1221:                                             ; preds = %1219
  br label %1222

1222:                                             ; preds = %1221, %1219, %1177
  %1223 = phi i16 [ 2, %1221 ], [ 0, %1219 ], [ 1, %1177 ]
  %1224 = fcmp ogt float %1198, %1216
  br i1 %1224, label %1225, label %1227

1225:                                             ; preds = %1222
  %1226 = or disjoint i16 %1223, 4
  br label %1231

1227:                                             ; preds = %1222
  %1228 = fcmp olt float %1198, %1217
  br i1 %1228, label %1229, label %1231

1229:                                             ; preds = %1227
  %1230 = or disjoint i16 %1223, 8
  br label %1231

1231:                                             ; preds = %1229, %1227, %1225
  %1232 = phi i16 [ %1226, %1225 ], [ %1230, %1229 ], [ %1223, %1227 ]
  %1233 = fcmp olt float %1206, %1217
  br i1 %1233, label %1234, label %1236

1234:                                             ; preds = %1231
  %1235 = add nsw i16 %1232, 16
  br label %1240

1236:                                             ; preds = %1231
  %1237 = fcmp ogt float %1206, %1216
  br i1 %1237, label %1238, label %1240

1238:                                             ; preds = %1236
  %1239 = add nsw i16 %1232, 32
  br label %1240

1240:                                             ; preds = %1234, %1236, %1238
  %1241 = phi i16 [ %1235, %1234 ], [ %1239, %1238 ], [ %1232, %1236 ]
  %1242 = zext nneg i16 %1241 to i32
  %1243 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %1162, i32 2
  store float %1190, ptr %1243, align 8, !tbaa !50
  %1244 = getelementptr inbounds float, ptr %1243, i64 1
  store float %1198, ptr %1244, align 4, !tbaa !50
  %1245 = getelementptr inbounds float, ptr %1243, i64 2
  store float %1206, ptr %1245, align 8, !tbaa !50
  %1246 = getelementptr inbounds float, ptr %1243, i64 3
  store float %1214, ptr %1246, align 4, !tbaa !50
  %1247 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %1162, i32 1
  store i32 %1242, ptr %1247, align 4, !tbaa !155
  store i32 %1161, ptr %1163, align 8, !tbaa !134
  br label %1248

1248:                                             ; preds = %1166, %1240
  %1249 = phi float [ %1170, %1166 ], [ %1198, %1240 ]
  %1250 = phi float [ %1168, %1166 ], [ %1190, %1240 ]
  %1251 = phi i32 [ %1176, %1166 ], [ %1242, %1240 ]
  %1252 = ptrtoint ptr %967 to i64
  %1253 = sub i64 %1252, %970
  %1254 = lshr exact i64 %1253, 4
  %1255 = trunc i64 %1254 to i32
  %1256 = and i64 %1254, 255
  %1257 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %1256
  %1258 = load i32, ptr %1257, align 8, !tbaa !134
  %1259 = icmp eq i32 %1258, %1255
  br i1 %1259, label %1260, label %1271

1260:                                             ; preds = %1248
  %1261 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %1256, i32 2
  %1262 = load float, ptr %1261, align 8, !tbaa !50
  store float %1262, ptr %15, align 16, !tbaa !50
  %1263 = getelementptr inbounds float, ptr %1261, i64 1
  %1264 = load float, ptr %1263, align 4, !tbaa !50
  store float %1264, ptr %270, align 4, !tbaa !50
  %1265 = getelementptr inbounds float, ptr %1261, i64 2
  %1266 = load float, ptr %1265, align 8, !tbaa !50
  store float %1266, ptr %271, align 8, !tbaa !50
  %1267 = getelementptr inbounds float, ptr %1261, i64 3
  %1268 = load float, ptr %1267, align 4, !tbaa !50
  store float %1268, ptr %272, align 4, !tbaa !50
  %1269 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %1256, i32 1
  %1270 = load i32, ptr %1269, align 4, !tbaa !155
  br label %1342

1271:                                             ; preds = %1248
  %1272 = load float, ptr %967, align 4, !tbaa !50
  %1273 = getelementptr inbounds float, ptr %967, i64 1
  %1274 = load float, ptr %1273, align 4, !tbaa !50
  %1275 = getelementptr inbounds float, ptr %967, i64 2
  %1276 = load float, ptr %1275, align 4, !tbaa !50
  %1277 = load float, ptr %11, align 16, !tbaa !50
  %1278 = load float, ptr %252, align 16, !tbaa !50
  %1279 = fmul float %1274, %1278
  %1280 = call float @llvm.fmuladd.f32(float %1272, float %1277, float %1279)
  %1281 = load float, ptr %253, align 16, !tbaa !50
  %1282 = call float @llvm.fmuladd.f32(float %1276, float %1281, float %1280)
  %1283 = load float, ptr %254, align 16, !tbaa !50
  %1284 = fadd float %1283, %1282
  store float %1284, ptr %15, align 16, !tbaa !50
  %1285 = load float, ptr %255, align 4, !tbaa !50
  %1286 = load float, ptr %256, align 4, !tbaa !50
  %1287 = fmul float %1274, %1286
  %1288 = call float @llvm.fmuladd.f32(float %1272, float %1285, float %1287)
  %1289 = load float, ptr %257, align 4, !tbaa !50
  %1290 = call float @llvm.fmuladd.f32(float %1276, float %1289, float %1288)
  %1291 = load float, ptr %258, align 4, !tbaa !50
  %1292 = fadd float %1291, %1290
  store float %1292, ptr %259, align 4, !tbaa !50
  %1293 = load float, ptr %260, align 8, !tbaa !50
  %1294 = load float, ptr %261, align 8, !tbaa !50
  %1295 = fmul float %1274, %1294
  %1296 = call float @llvm.fmuladd.f32(float %1272, float %1293, float %1295)
  %1297 = load float, ptr %262, align 8, !tbaa !50
  %1298 = call float @llvm.fmuladd.f32(float %1276, float %1297, float %1296)
  %1299 = load float, ptr %263, align 8, !tbaa !50
  %1300 = fadd float %1299, %1298
  store float %1300, ptr %264, align 8, !tbaa !50
  %1301 = load float, ptr %265, align 4, !tbaa !50
  %1302 = load float, ptr %266, align 4, !tbaa !50
  %1303 = fmul float %1274, %1302
  %1304 = call float @llvm.fmuladd.f32(float %1272, float %1301, float %1303)
  %1305 = load float, ptr %267, align 4, !tbaa !50
  %1306 = call float @llvm.fmuladd.f32(float %1276, float %1305, float %1304)
  %1307 = load float, ptr %268, align 4, !tbaa !50
  %1308 = fadd float %1307, %1306
  store float %1308, ptr %269, align 4, !tbaa !50
  %1309 = call float @llvm.fabs.f32(float %1308)
  %1310 = fadd float %1309, 0x3E80000000000000
  %1311 = fneg float %1310
  %1312 = fcmp olt float %1284, %1311
  br i1 %1312, label %1316, label %1313

1313:                                             ; preds = %1271
  %1314 = fcmp ogt float %1284, %1310
  br i1 %1314, label %1315, label %1316

1315:                                             ; preds = %1313
  br label %1316

1316:                                             ; preds = %1315, %1313, %1271
  %1317 = phi i16 [ 2, %1315 ], [ 0, %1313 ], [ 1, %1271 ]
  %1318 = fcmp ogt float %1292, %1310
  br i1 %1318, label %1319, label %1321

1319:                                             ; preds = %1316
  %1320 = or disjoint i16 %1317, 4
  br label %1325

1321:                                             ; preds = %1316
  %1322 = fcmp olt float %1292, %1311
  br i1 %1322, label %1323, label %1325

1323:                                             ; preds = %1321
  %1324 = or disjoint i16 %1317, 8
  br label %1325

1325:                                             ; preds = %1323, %1321, %1319
  %1326 = phi i16 [ %1320, %1319 ], [ %1324, %1323 ], [ %1317, %1321 ]
  %1327 = fcmp olt float %1300, %1311
  br i1 %1327, label %1328, label %1330

1328:                                             ; preds = %1325
  %1329 = add nsw i16 %1326, 16
  br label %1334

1330:                                             ; preds = %1325
  %1331 = fcmp ogt float %1300, %1310
  br i1 %1331, label %1332, label %1334

1332:                                             ; preds = %1330
  %1333 = add nsw i16 %1326, 32
  br label %1334

1334:                                             ; preds = %1328, %1330, %1332
  %1335 = phi i16 [ %1329, %1328 ], [ %1333, %1332 ], [ %1326, %1330 ]
  %1336 = zext nneg i16 %1335 to i32
  %1337 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %1256, i32 2
  store float %1284, ptr %1337, align 8, !tbaa !50
  %1338 = getelementptr inbounds float, ptr %1337, i64 1
  store float %1292, ptr %1338, align 4, !tbaa !50
  %1339 = getelementptr inbounds float, ptr %1337, i64 2
  store float %1300, ptr %1339, align 8, !tbaa !50
  %1340 = getelementptr inbounds float, ptr %1337, i64 3
  store float %1308, ptr %1340, align 4, !tbaa !50
  %1341 = getelementptr inbounds %struct.ZbufProjectCache, ptr %8, i64 %1256, i32 1
  store i32 %1336, ptr %1341, align 4, !tbaa !155
  store i32 %1255, ptr %1257, align 8, !tbaa !134
  br label %1342

1342:                                             ; preds = %1260, %1334
  %1343 = phi i32 [ %1270, %1260 ], [ %1336, %1334 ]
  %1344 = and i32 %1157, %1063
  %1345 = and i32 %1344, %1251
  %1346 = and i32 %1345, %1343
  %1347 = icmp eq i32 %1346, 0
  br i1 %1347, label %1348, label %1349

1348:                                             ; preds = %1342
  call void @render_strand_segment(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %9, i32 noundef 1, ptr noundef nonnull %10) #14
  br label %1349

1349:                                             ; preds = %1342, %1348
  %1350 = add nuw nsw i32 %958, 1
  %1351 = load i32, ptr %940, align 8, !tbaa !203
  %1352 = add nsw i32 %1351, -1
  %1353 = icmp slt i32 %1350, %1352
  br i1 %1353, label %956, label %1354, !llvm.loop !204

1354:                                             ; preds = %1349, %948, %934, %930
  %1355 = phi float [ %900, %934 ], [ %900, %930 ], [ %900, %948 ], [ %1249, %1349 ]
  %1356 = phi float [ %901, %934 ], [ %901, %930 ], [ %901, %948 ], [ %1155, %1349 ]
  %1357 = phi float [ %902, %934 ], [ %902, %930 ], [ %902, %948 ], [ %1061, %1349 ]
  %1358 = phi float [ %908, %934 ], [ %908, %930 ], [ %908, %948 ], [ %1250, %1349 ]
  %1359 = phi float [ %907, %934 ], [ %907, %930 ], [ %907, %948 ], [ %1156, %1349 ]
  %1360 = phi float [ %906, %934 ], [ %906, %930 ], [ %906, %948 ], [ %1062, %1349 ]
  %1361 = and i32 %904, 255
  %1362 = icmp eq i32 %1361, 255
  br i1 %1362, label %1363, label %1368

1363:                                             ; preds = %1354
  %1364 = load ptr, ptr %184, align 8, !tbaa !181
  %1365 = load ptr, ptr %273, align 8, !tbaa !182
  %1366 = call i32 %1364(ptr noundef %1365) #14
  %1367 = icmp eq i32 %1366, 0
  br i1 %1367, label %1368, label %1372

1368:                                             ; preds = %1354, %1363
  %1369 = add nsw i32 %904, 1
  %1370 = load i32, ptr %889, align 4, !tbaa !190
  %1371 = icmp slt i32 %1369, %1370
  br i1 %1371, label %899, label %1372, !llvm.loop !205

1372:                                             ; preds = %1368, %1363
  store float %1357, ptr %199, align 4, !tbaa !50
  store float %1356, ptr %219, align 4, !tbaa !50
  store float %1355, ptr %239, align 4, !tbaa !50
  br label %1373

1373:                                             ; preds = %1372, %887
  %1374 = phi float [ %892, %887 ], [ %1358, %1372 ]
  %1375 = phi float [ %891, %887 ], [ %1359, %1372 ]
  %1376 = phi float [ %890, %887 ], [ %1360, %1372 ]
  %1377 = phi ptr [ %883, %887 ], [ %931, %1372 ]
  %1378 = phi i32 [ %880, %887 ], [ %932, %1372 ]
  store float %1376, ptr %12, align 16, !tbaa !50
  store float %1375, ptr %13, align 16, !tbaa !50
  store float %1374, ptr %14, align 16, !tbaa !50
  br label %1379

1379:                                             ; preds = %1373, %879
  %1380 = phi ptr [ %883, %879 ], [ %1377, %1373 ]
  %1381 = phi i32 [ %880, %879 ], [ %1378, %1373 ]
  %1382 = add nuw nsw i32 %881, 1
  %1383 = getelementptr inbounds %struct.StrandBound, ptr %882, i64 1
  %1384 = load ptr, ptr %868, align 8, !tbaa !184
  %1385 = getelementptr inbounds %struct.StrandBuffer, ptr %1384, i64 0, i32 5
  %1386 = load i32, ptr %1385, align 4, !tbaa !185
  %1387 = icmp slt i32 %1382, %1386
  br i1 %1387, label %879, label %1388, !llvm.loop !206

1388:                                             ; preds = %1379, %871, %864
  %1389 = phi ptr [ %866, %864 ], [ %866, %871 ], [ %1380, %1379 ]
  %1390 = phi i32 [ %867, %864 ], [ %867, %871 ], [ %1381, %1379 ]
  %1391 = load ptr, ptr %274, align 8, !tbaa !181
  %1392 = load ptr, ptr %275, align 8, !tbaa !182
  %1393 = call i32 %1391(ptr noundef %1392) #14
  %1394 = icmp eq i32 %1393, 0
  br i1 %1394, label %1395, label %1401

1395:                                             ; preds = %1388, %300, %287, %276
  %1396 = phi ptr [ %280, %276 ], [ %280, %300 ], [ %865, %1388 ], [ %280, %287 ]
  %1397 = phi ptr [ %279, %276 ], [ %279, %300 ], [ %1389, %1388 ], [ %279, %287 ]
  %1398 = phi i32 [ %278, %276 ], [ %278, %300 ], [ %1390, %1388 ], [ %278, %287 ]
  %1399 = load ptr, ptr %277, align 8, !tbaa !42
  %1400 = icmp eq ptr %1399, null
  br i1 %1400, label %1401, label %276, !llvm.loop !207

1401:                                             ; preds = %1395, %1388, %69
  %1402 = load i16, ptr %53, align 4, !tbaa !176
  %1403 = icmp eq i16 %1402, 2
  br i1 %1403, label %1404, label %1427

1404:                                             ; preds = %1401
  %1405 = icmp eq i32 %4, 0
  br i1 %1405, label %1423, label %1406

1406:                                             ; preds = %1404
  %1407 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 18
  %1408 = load ptr, ptr %1407, align 8, !tbaa !177
  %1409 = zext i32 %44 to i64
  br label %1410

1410:                                             ; preds = %1406, %1410
  %1411 = phi i64 [ %1409, %1406 ], [ %1412, %1410 ]
  %1412 = add nsw i64 %1411, -1
  %1413 = and i64 %1412, 4294967295
  %1414 = getelementptr inbounds i32, ptr %3, i64 %1413
  %1415 = load i32, ptr %1414, align 4, !tbaa !46
  %1416 = ashr i32 %1415, 1
  %1417 = getelementptr inbounds i32, ptr %1408, i64 %1413
  %1418 = load i32, ptr %1417, align 4, !tbaa !46
  %1419 = ashr i32 %1418, 1
  %1420 = add nsw i32 %1419, %1416
  store i32 %1420, ptr %1414, align 4, !tbaa !46
  %1421 = trunc i64 %1411 to i32
  %1422 = icmp sgt i32 %1421, 1
  br i1 %1422, label %1410, label %1423, !llvm.loop !208

1423:                                             ; preds = %1410, %1404
  %1424 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  %1425 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 18
  %1426 = load ptr, ptr %1425, align 8, !tbaa !177
  call void %1424(ptr noundef %1426) #14
  br label %1427

1427:                                             ; preds = %1423, %1401
  %1428 = load ptr, ptr %30, align 8, !tbaa !43
  %1429 = icmp eq ptr %1428, null
  br i1 %1429, label %1432, label %1430

1430:                                             ; preds = %1427
  %1431 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %1431(ptr noundef nonnull %1428) #14
  br label %1432

1432:                                             ; preds = %1430, %1427
  %1433 = load ptr, ptr %33, align 8, !tbaa !44
  %1434 = icmp eq ptr %1433, null
  br i1 %1434, label %1437, label %1435

1435:                                             ; preds = %1432
  %1436 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %1436(ptr noundef nonnull %1433) #14
  br label %1437

1437:                                             ; preds = %1432, %1435
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 6144, ptr nonnull %8) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @zbufline_onlyZ(ptr nocapture noundef readonly %0, i32 %1, i32 %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #7 {
  %6 = load float, ptr %4, align 4, !tbaa !50
  %7 = load float, ptr %3, align 4, !tbaa !50
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %4, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !50
  %11 = getelementptr inbounds float, ptr %3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !50
  %13 = fsub float %10, %12
  %14 = tail call float @llvm.fabs.f32(float %8)
  %15 = tail call float @llvm.fabs.f32(float %13)
  %16 = fcmp ogt float %14, %15
  br i1 %16, label %17, label %122

17:                                               ; preds = %5
  %18 = fcmp olt float %7, %6
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = fneg float %8
  %21 = fneg float %13
  br label %22

22:                                               ; preds = %17, %19
  %23 = phi ptr [ %4, %19 ], [ %3, %17 ]
  %24 = phi float [ %10, %19 ], [ %12, %17 ]
  %25 = phi float [ %6, %19 ], [ %7, %17 ]
  %26 = phi ptr [ %3, %19 ], [ %4, %17 ]
  %27 = phi float [ %20, %19 ], [ %8, %17 ]
  %28 = phi float [ %21, %19 ], [ %13, %17 ]
  %29 = getelementptr inbounds float, ptr %26, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !50
  %31 = getelementptr inbounds float, ptr %23, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !50
  %33 = tail call float @llvm.floor.f32(float %25)
  %34 = fptosi float %33 to i32
  %35 = sitofp i32 %34 to double
  %36 = tail call float @llvm.floor.f32(float %27)
  %37 = fpext float %36 to double
  %38 = fadd double %35, %37
  %39 = fptosi double %38 to i32
  %40 = load i32, ptr %0, align 8, !tbaa !34
  %41 = icmp sgt i32 %40, %39
  %42 = add nsw i32 %40, -1
  %43 = select i1 %41, i32 %39, i32 %42
  %44 = fdiv float %28, %27
  %45 = tail call float @llvm.floor.f32(float %32)
  %46 = fptosi float %45 to i32
  %47 = fsub float %30, %32
  %48 = fdiv float %47, %27
  %49 = tail call float @llvm.floor.f32(float %48)
  %50 = fptosi float %49 to i32
  %51 = icmp sgt i32 %46, 1342177280
  %52 = icmp sgt i32 %50, 0
  %53 = select i1 %51, i1 %52, i1 false
  %54 = icmp slt i32 %43, %34
  br i1 %54, label %232, label %55

55:                                               ; preds = %22
  %56 = fcmp olt float %44, 0.000000e+00
  %57 = sub nsw i32 0, %40
  %58 = select i1 %56, i32 %57, i32 %40
  %59 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 18
  %60 = load ptr, ptr %59, align 8, !tbaa !177
  %61 = icmp eq ptr %60, null
  %62 = tail call float @llvm.floor.f32(float %24)
  %63 = fptosi float %62 to i32
  %64 = mul nsw i32 %40, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %60, i64 %65
  %67 = sext i32 %34 to i64
  %68 = getelementptr inbounds i32, ptr %66, i64 %67
  %69 = select i1 %61, ptr null, ptr %68
  %70 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 16
  %71 = load ptr, ptr %70, align 8, !tbaa !123
  %72 = getelementptr inbounds i32, ptr %71, i64 %65
  %73 = getelementptr inbounds i32, ptr %72, i64 %67
  %74 = sext i32 %58 to i64
  %75 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %76 = sub nsw i32 2147483632, %50
  br label %77

77:                                               ; preds = %55, %110
  %78 = phi i32 [ %46, %55 ], [ %115, %110 ]
  %79 = phi i32 [ %63, %55 ], [ %85, %110 ]
  %80 = phi i32 [ %34, %55 ], [ %119, %110 ]
  %81 = phi ptr [ %69, %55 ], [ %118, %110 ]
  %82 = phi ptr [ %73, %55 ], [ %120, %110 ]
  %83 = phi float [ %24, %55 ], [ %111, %110 ]
  %84 = tail call float @llvm.floor.f32(float %83)
  %85 = fptosi float %84 to i32
  %86 = icmp eq i32 %79, %85
  %87 = icmp eq ptr %81, null
  %88 = getelementptr inbounds i32, ptr %81, i64 %74
  %89 = select i1 %87, ptr null, ptr %88
  %90 = select i1 %86, i64 0, i64 %74
  %91 = getelementptr inbounds i32, ptr %82, i64 %90
  %92 = select i1 %86, ptr %81, ptr %89
  %93 = or i32 %80, %85
  %94 = icmp sgt i32 %93, -1
  br i1 %94, label %95, label %110

95:                                               ; preds = %77
  %96 = load i32, ptr %75, align 4, !tbaa !41
  %97 = icmp sgt i32 %96, %85
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i32, ptr %91, align 4, !tbaa !46
  %100 = icmp slt i32 %78, %99
  %101 = icmp eq ptr %92, null
  br i1 %100, label %102, label %104

102:                                              ; preds = %98
  br i1 %101, label %108, label %103

103:                                              ; preds = %102
  store i32 %99, ptr %92, align 4, !tbaa !46
  br label %108

104:                                              ; preds = %98
  br i1 %101, label %110, label %105

105:                                              ; preds = %104
  %106 = load i32, ptr %92, align 4, !tbaa !46
  %107 = icmp slt i32 %78, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %105, %102, %103
  %109 = phi ptr [ %91, %103 ], [ %91, %102 ], [ %92, %105 ]
  store i32 %78, ptr %109, align 4, !tbaa !46
  br label %110

110:                                              ; preds = %108, %105, %104, %95, %77
  %111 = fadd float %44, %83
  %112 = icmp sgt i32 %78, %76
  %113 = select i1 %53, i1 %112, i1 false
  %114 = add nsw i32 %78, %50
  %115 = select i1 %113, i32 2147483632, i32 %114
  %116 = icmp eq ptr %92, null
  %117 = getelementptr inbounds i32, ptr %92, i64 1
  %118 = select i1 %116, ptr null, ptr %117
  %119 = add i32 %80, 1
  %120 = getelementptr inbounds i32, ptr %91, i64 1
  %121 = icmp eq i32 %80, %43
  br i1 %121, label %232, label %77, !llvm.loop !209

122:                                              ; preds = %5
  %123 = fcmp olt float %12, %10
  br i1 %123, label %127, label %124

124:                                              ; preds = %122
  %125 = fneg float %8
  %126 = fneg float %13
  br label %127

127:                                              ; preds = %122, %124
  %128 = phi ptr [ %4, %124 ], [ %3, %122 ]
  %129 = phi float [ %10, %124 ], [ %12, %122 ]
  %130 = phi float [ %6, %124 ], [ %7, %122 ]
  %131 = phi ptr [ %3, %124 ], [ %4, %122 ]
  %132 = phi float [ %125, %124 ], [ %8, %122 ]
  %133 = phi float [ %126, %124 ], [ %13, %122 ]
  %134 = getelementptr inbounds float, ptr %131, i64 2
  %135 = load float, ptr %134, align 4, !tbaa !50
  %136 = getelementptr inbounds float, ptr %128, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !50
  %138 = tail call float @llvm.floor.f32(float %129)
  %139 = fptosi float %138 to i32
  %140 = sitofp i32 %139 to double
  %141 = tail call float @llvm.floor.f32(float %133)
  %142 = fpext float %141 to double
  %143 = fadd double %140, %142
  %144 = fptosi double %143 to i32
  %145 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %146 = load i32, ptr %145, align 4, !tbaa !41
  %147 = icmp sgt i32 %146, %144
  %148 = add nsw i32 %146, -1
  %149 = select i1 %147, i32 %144, i32 %148
  %150 = fdiv float %132, %133
  %151 = tail call float @llvm.floor.f32(float %137)
  %152 = fptosi float %151 to i32
  %153 = fsub float %135, %137
  %154 = fdiv float %153, %133
  %155 = tail call float @llvm.floor.f32(float %154)
  %156 = fptosi float %155 to i32
  %157 = icmp sgt i32 %152, 1342177280
  %158 = icmp sgt i32 %156, 0
  %159 = select i1 %157, i1 %158, i1 false
  %160 = fcmp olt float %150, 0.000000e+00
  %161 = select i1 %160, i64 -1, i64 1
  %162 = icmp slt i32 %149, %139
  br i1 %162, label %232, label %163

163:                                              ; preds = %127
  %164 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 18
  %165 = load ptr, ptr %164, align 8, !tbaa !177
  %166 = icmp eq ptr %165, null
  %167 = load i32, ptr %0, align 8, !tbaa !34
  %168 = mul nsw i32 %167, %139
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, ptr %165, i64 %169
  %171 = tail call float @llvm.floor.f32(float %130)
  %172 = fptosi float %171 to i32
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, ptr %170, i64 %173
  %175 = select i1 %166, ptr null, ptr %174
  %176 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 16
  %177 = load ptr, ptr %176, align 8, !tbaa !123
  %178 = getelementptr inbounds i32, ptr %177, i64 %169
  %179 = getelementptr inbounds i32, ptr %178, i64 %173
  %180 = sub nsw i32 2147483632, %156
  br label %181

181:                                              ; preds = %163, %225
  %182 = phi i32 [ %152, %163 ], [ %219, %225 ]
  %183 = phi i32 [ %172, %163 ], [ %189, %225 ]
  %184 = phi i32 [ %139, %163 ], [ %227, %225 ]
  %185 = phi ptr [ %175, %163 ], [ %226, %225 ]
  %186 = phi ptr [ %179, %163 ], [ %230, %225 ]
  %187 = phi float [ %130, %163 ], [ %215, %225 ]
  %188 = tail call float @llvm.floor.f32(float %187)
  %189 = fptosi float %188 to i32
  %190 = icmp eq i32 %183, %189
  %191 = icmp eq ptr %185, null
  %192 = getelementptr inbounds i32, ptr %185, i64 %161
  %193 = select i1 %191, ptr null, ptr %192
  %194 = select i1 %190, i64 0, i64 %161
  %195 = getelementptr inbounds i32, ptr %186, i64 %194
  %196 = select i1 %190, ptr %185, ptr %193
  %197 = or i32 %184, %189
  %198 = icmp sgt i32 %197, -1
  br i1 %198, label %199, label %214

199:                                              ; preds = %181
  %200 = load i32, ptr %0, align 8, !tbaa !34
  %201 = icmp sgt i32 %200, %189
  br i1 %201, label %202, label %214

202:                                              ; preds = %199
  %203 = load i32, ptr %195, align 4, !tbaa !46
  %204 = icmp slt i32 %182, %203
  %205 = icmp eq ptr %196, null
  br i1 %204, label %206, label %208

206:                                              ; preds = %202
  br i1 %205, label %212, label %207

207:                                              ; preds = %206
  store i32 %203, ptr %196, align 4, !tbaa !46
  br label %212

208:                                              ; preds = %202
  br i1 %205, label %214, label %209

209:                                              ; preds = %208
  %210 = load i32, ptr %196, align 4, !tbaa !46
  %211 = icmp slt i32 %182, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %209, %206, %207
  %213 = phi ptr [ %195, %207 ], [ %195, %206 ], [ %196, %209 ]
  store i32 %182, ptr %213, align 4, !tbaa !46
  br label %214

214:                                              ; preds = %212, %209, %208, %199, %181
  %215 = fadd float %150, %187
  %216 = icmp sgt i32 %182, %180
  %217 = select i1 %159, i1 %216, i1 false
  %218 = add nsw i32 %182, %156
  %219 = select i1 %217, i32 2147483632, i32 %218
  %220 = icmp eq ptr %196, null
  br i1 %220, label %225, label %221

221:                                              ; preds = %214
  %222 = load i32, ptr %0, align 8, !tbaa !34
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, ptr %196, i64 %223
  br label %225

225:                                              ; preds = %214, %221
  %226 = phi ptr [ %224, %221 ], [ null, %214 ]
  %227 = add i32 %184, 1
  %228 = load i32, ptr %0, align 8, !tbaa !34
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, ptr %195, i64 %229
  %231 = icmp eq i32 %184, %149
  br i1 %231, label %232, label %181, !llvm.loop !210

232:                                              ; preds = %225, %110, %127, %22
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @zbuffillGL_onlyZ(ptr nocapture noundef %0, i32 %1, i32 %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #7 {
  %8 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = add nsw i32 %9, 1
  %11 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 4
  store i32 %10, ptr %11, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 2
  store i32 %10, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 5
  store i32 -1, ptr %13, align 4, !tbaa !65
  %14 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 3
  store i32 -1, ptr %14, align 4, !tbaa !66
  %15 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 9
  %16 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 8
  %17 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 32, i1 false)
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %3, ptr noundef %4)
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %4, ptr noundef %5)
  %18 = icmp eq ptr %6, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %6)
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %3)
  br label %21

20:                                               ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %5, ptr noundef %3)
  br label %21

21:                                               ; preds = %20, %19
  %22 = load ptr, ptr %16, align 8, !tbaa !67
  %23 = icmp eq ptr %22, null
  br i1 %23, label %180, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %15, align 8, !tbaa !68
  %26 = icmp eq ptr %25, null
  br i1 %26, label %180, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %12, align 8, !tbaa !64
  %29 = load i32, ptr %11, align 8, !tbaa !63
  %30 = tail call i32 @llvm.smax.i32(i32 %28, i32 %29)
  %31 = load i32, ptr %14, align 4, !tbaa !66
  %32 = load i32, ptr %13, align 4, !tbaa !65
  %33 = tail call i32 @llvm.smin.i32(i32 %31, i32 %32)
  %34 = icmp slt i32 %33, %30
  br i1 %34, label %180, label %35

35:                                               ; preds = %27
  %36 = load float, ptr %3, align 4, !tbaa !50
  %37 = load float, ptr %4, align 4, !tbaa !50
  %38 = fsub float %36, %37
  %39 = load float, ptr %5, align 4, !tbaa !50
  %40 = fsub float %37, %39
  %41 = getelementptr inbounds float, ptr %3, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !50
  %43 = getelementptr inbounds float, ptr %4, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !50
  %45 = fsub float %42, %44
  %46 = getelementptr inbounds float, ptr %5, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !50
  %48 = fsub float %44, %47
  %49 = fneg float %45
  %50 = fmul float %40, %49
  %51 = tail call float @llvm.fmuladd.f32(float %38, float %48, float %50)
  %52 = fcmp oeq float %51, 0.000000e+00
  br i1 %52, label %180, label %53

53:                                               ; preds = %35
  %54 = getelementptr inbounds float, ptr %3, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !50
  %56 = getelementptr inbounds float, ptr %4, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !50
  %58 = fsub float %55, %57
  %59 = getelementptr inbounds float, ptr %5, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !50
  %61 = fsub float %57, %60
  %62 = fneg float %38
  %63 = fmul float %61, %62
  %64 = tail call float @llvm.fmuladd.f32(float %58, float %40, float %63)
  %65 = fneg float %58
  %66 = fmul float %48, %65
  %67 = tail call float @llvm.fmuladd.f32(float %45, float %61, float %66)
  %68 = fpext float %67 to double
  %69 = fneg double %68
  %70 = fpext float %51 to double
  %71 = fdiv double %69, %70
  %72 = fpext float %64 to double
  %73 = fneg double %72
  %74 = fdiv double %73, %70
  %75 = load i32, ptr %0, align 8, !tbaa !34
  %76 = icmp slt i32 %33, %30
  br i1 %76, label %180, label %77

77:                                               ; preds = %53
  %78 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  %79 = load ptr, ptr %78, align 8, !tbaa !43
  %80 = add nsw i32 %33, %30
  %81 = sdiv i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, ptr %79, i64 %82
  %84 = load float, ptr %83, align 4, !tbaa !50
  %85 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  %86 = load ptr, ptr %85, align 8, !tbaa !44
  %87 = getelementptr inbounds float, ptr %86, i64 %82
  %88 = load float, ptr %87, align 4, !tbaa !50
  %89 = fcmp olt float %84, %88
  %90 = sext i32 %33 to i64
  %91 = getelementptr inbounds float, ptr %86, i64 %90
  %92 = getelementptr inbounds float, ptr %79, i64 %90
  %93 = select i1 %89, ptr %91, ptr %92
  %94 = select i1 %89, ptr %92, ptr %91
  %95 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 18
  %96 = load ptr, ptr %95, align 8, !tbaa !177
  %97 = icmp eq ptr %96, null
  %98 = mul nsw i32 %75, %33
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %96, i64 %99
  %101 = select i1 %97, ptr null, ptr %100
  %102 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 16
  %103 = load ptr, ptr %102, align 8, !tbaa !123
  %104 = getelementptr inbounds i32, ptr %103, i64 %99
  %105 = sitofp i32 %33 to double
  %106 = fmul float %42, %64
  %107 = tail call float @llvm.fmuladd.f32(float %67, float %36, float %106)
  %108 = fdiv float %107, %51
  %109 = fadd float %55, %108
  %110 = fpext float %109 to double
  %111 = tail call double @llvm.fmuladd.f64(double %105, double %74, double %110)
  %112 = add nsw i32 %75, -1
  %113 = sext i32 %75 to i64
  %114 = sub nsw i64 0, %113
  br label %115

115:                                              ; preds = %77, %170
  %116 = phi double [ %111, %77 ], [ %171, %170 ]
  %117 = phi ptr [ %101, %77 ], [ %175, %170 ]
  %118 = phi ptr [ %104, %77 ], [ %172, %170 ]
  %119 = phi i32 [ %33, %77 ], [ %176, %170 ]
  %120 = phi ptr [ %93, %77 ], [ %178, %170 ]
  %121 = phi ptr [ %94, %77 ], [ %177, %170 ]
  %122 = load float, ptr %121, align 4, !tbaa !50
  %123 = tail call float @llvm.floor.f32(float %122)
  %124 = fptosi float %123 to i32
  %125 = load float, ptr %120, align 4, !tbaa !50
  %126 = tail call float @llvm.floor.f32(float %125)
  %127 = fptosi float %126 to i32
  %128 = icmp sgt i32 %75, %127
  %129 = select i1 %128, i32 %127, i32 %112
  %130 = tail call i32 @llvm.smax.i32(i32 %124, i32 -1)
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %170

132:                                              ; preds = %115
  %133 = add nsw i32 %130, 1
  %134 = sub nsw i32 %129, %133
  %135 = icmp sgt i32 %134, -1
  br i1 %135, label %136, label %170

136:                                              ; preds = %132
  %137 = sext i32 %133 to i64
  %138 = getelementptr inbounds i32, ptr %117, i64 %137
  %139 = getelementptr inbounds i32, ptr %118, i64 %137
  %140 = sitofp i32 %133 to double
  %141 = tail call double @llvm.fmuladd.f64(double %140, double %71, double %116)
  %142 = icmp eq ptr %117, null
  %143 = icmp eq ptr %117, null
  br label %144

144:                                              ; preds = %136, %164
  %145 = phi double [ %141, %136 ], [ %165, %164 ]
  %146 = phi i32 [ %134, %136 ], [ %168, %164 ]
  %147 = phi ptr [ %138, %136 ], [ %167, %164 ]
  %148 = phi ptr [ %139, %136 ], [ %166, %164 ]
  %149 = fcmp olt double %145, 0xC1E0000000000000
  %150 = fcmp ogt double %145, 0x41DFFFFFFFC00000
  %151 = select i1 %150, double 0x41DFFFFFFFC00000, double %145
  %152 = select i1 %149, double 0xC1E0000000000000, double %151
  %153 = fptosi double %152 to i32
  %154 = load i32, ptr %148, align 4, !tbaa !46
  %155 = icmp sgt i32 %154, %153
  br i1 %155, label %156, label %158

156:                                              ; preds = %144
  br i1 %143, label %162, label %157

157:                                              ; preds = %156
  store i32 %154, ptr %147, align 4, !tbaa !46
  br label %162

158:                                              ; preds = %144
  br i1 %142, label %164, label %159

159:                                              ; preds = %158
  %160 = load i32, ptr %147, align 4, !tbaa !46
  %161 = icmp sgt i32 %160, %153
  br i1 %161, label %162, label %164

162:                                              ; preds = %159, %156, %157
  %163 = phi ptr [ %148, %157 ], [ %148, %156 ], [ %147, %159 ]
  store i32 %153, ptr %163, align 4, !tbaa !46
  br label %164

164:                                              ; preds = %162, %158, %159
  %165 = fadd double %71, %145
  %166 = getelementptr inbounds i32, ptr %148, i64 1
  %167 = getelementptr inbounds i32, ptr %147, i64 1
  %168 = add nsw i32 %146, -1
  %169 = icmp sgt i32 %146, 0
  br i1 %169, label %144, label %170, !llvm.loop !211

170:                                              ; preds = %164, %132, %115
  %171 = fsub double %116, %74
  %172 = getelementptr inbounds i32, ptr %118, i64 %114
  %173 = icmp eq ptr %117, null
  %174 = getelementptr inbounds i32, ptr %117, i64 %114
  %175 = select i1 %173, ptr null, ptr %174
  %176 = add nsw i32 %119, -1
  %177 = getelementptr inbounds float, ptr %121, i64 -1
  %178 = getelementptr inbounds float, ptr %120, i64 -1
  %179 = icmp sgt i32 %119, %30
  br i1 %179, label %115, label %180, !llvm.loop !212

180:                                              ; preds = %170, %53, %35, %27, %21, %24
  ret void
}

declare ptr @RE_findOrAddStrand(ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @render_strand_segment(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @zbuffer_sss(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [256 x %struct.ZbufProjectCache], align 16
  %7 = alloca %struct.ZSpan, align 8
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [4 x float], align 16
  %12 = alloca [4 x float], align 16
  %13 = alloca [4 x float], align 16
  %14 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 6144, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %7) #14
  %15 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 76), align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %16 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !76
  %17 = and i32 %16, 1024
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  call void @unit_m4(ptr noundef nonnull %5) #14
  %20 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 27), align 4, !tbaa !92
  store float %20, ptr %5, align 16, !tbaa !50
  %21 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 26), align 8, !tbaa !93
  %22 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  store float %21, ptr %22, align 8, !tbaa !50
  %23 = fneg float %21
  %24 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2
  store float %23, ptr %24, align 16, !tbaa !50
  %25 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2, i64 2
  store float %20, ptr %25, align 8, !tbaa !50
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35), ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  br label %27

26:                                               ; preds = %4
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35)) #14
  br label %27

27:                                               ; preds = %19, %26
  %28 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !107
  %29 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !108
  %30 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !109
  %32 = shl nsw i32 %31, 1
  %33 = xor i32 %28, -1
  %34 = add i32 %32, %33
  %35 = sitofp i32 %34 to float
  %36 = sitofp i32 %28 to float
  %37 = fdiv float %35, %36
  store float %37, ptr %10, align 16, !tbaa !50
  %38 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !110
  %40 = shl nsw i32 %39, 1
  %41 = sub i32 %40, %28
  %42 = add i32 %41, 1
  %43 = sitofp i32 %42 to float
  %44 = fdiv float %43, %36
  %45 = getelementptr inbounds float, ptr %10, i64 1
  store float %44, ptr %45, align 4, !tbaa !50
  %46 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !111
  %48 = shl nsw i32 %47, 1
  %49 = xor i32 %29, -1
  %50 = add i32 %48, %49
  %51 = sitofp i32 %50 to float
  %52 = sitofp i32 %29 to float
  %53 = fdiv float %51, %52
  %54 = getelementptr inbounds float, ptr %10, i64 2
  store float %53, ptr %54, align 8, !tbaa !50
  %55 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !112
  %57 = shl nsw i32 %56, 1
  %58 = sub i32 %57, %29
  %59 = add i32 %58, 1
  %60 = sitofp i32 %59 to float
  %61 = fdiv float %60, %52
  %62 = getelementptr inbounds float, ptr %10, i64 3
  store float %61, ptr %62, align 4, !tbaa !50
  %63 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %64 = load i32, ptr %63, align 8, !tbaa !113
  %65 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %66 = load i32, ptr %65, align 4, !tbaa !114
  %67 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 19), align 4, !tbaa !115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %7, i8 0, i64 224, i1 false)
  store i32 %64, ptr %7, align 8, !tbaa !34
  %68 = getelementptr inbounds %struct.ZSpan, ptr %7, i64 0, i32 1
  store i32 %66, ptr %68, align 4, !tbaa !41
  %69 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %70 = sext i32 %66 to i64
  %71 = shl nsw i64 %70, 2
  %72 = call ptr %69(i64 noundef %71, ptr noundef nonnull @.str) #14
  %73 = getelementptr inbounds %struct.ZSpan, ptr %7, i64 0, i32 10
  store ptr %72, ptr %73, align 8, !tbaa !43
  %74 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %75 = call ptr %74(i64 noundef %71, ptr noundef nonnull @.str) #14
  %76 = getelementptr inbounds %struct.ZSpan, ptr %7, i64 0, i32 11
  store ptr %75, ptr %76, align 8, !tbaa !44
  %77 = getelementptr inbounds %struct.ZSpan, ptr %7, i64 0, i32 31
  store float %67, ptr %77, align 4, !tbaa !45
  %78 = getelementptr inbounds %struct.ZSpan, ptr %7, i64 0, i32 32
  store ptr %2, ptr %78, align 8, !tbaa !214
  %79 = getelementptr inbounds %struct.ZSpan, ptr %7, i64 0, i32 33
  store ptr %3, ptr %79, align 8, !tbaa !215
  %80 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !107
  %81 = sitofp i32 %80 to float
  %82 = fmul float %81, 5.000000e-01
  %83 = getelementptr inbounds %struct.ZSpan, ptr %7, i64 0, i32 12
  store float %82, ptr %83, align 8, !tbaa !57
  %84 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !108
  %85 = sitofp i32 %84 to float
  %86 = fmul float %85, 5.000000e-01
  %87 = getelementptr inbounds %struct.ZSpan, ptr %7, i64 0, i32 13
  store float %86, ptr %87, align 4, !tbaa !59
  %88 = load i32, ptr %30, align 8, !tbaa !109
  %89 = sub nsw i32 0, %88
  %90 = sitofp i32 %89 to float
  %91 = fadd float %90, -5.000000e-01
  %92 = getelementptr inbounds %struct.ZSpan, ptr %7, i64 0, i32 14
  store float %91, ptr %92, align 8, !tbaa !58
  %93 = load i32, ptr %46, align 8, !tbaa !111
  %94 = sub nsw i32 0, %93
  %95 = sitofp i32 %94 to float
  %96 = fadd float %95, -5.000000e-01
  %97 = getelementptr inbounds %struct.ZSpan, ptr %7, i64 0, i32 15
  store float %96, ptr %97, align 4, !tbaa !60
  %98 = getelementptr inbounds %struct.ZSpan, ptr %7, i64 0, i32 34
  store ptr @zbuffill_sss, ptr %98, align 8, !tbaa !99
  %99 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  %100 = load ptr, ptr %99, align 8, !tbaa !124
  %101 = icmp eq ptr %100, null
  br i1 %101, label %133, label %102

102:                                              ; preds = %27
  %103 = load i32, ptr %63, align 8, !tbaa !113
  %104 = load i32, ptr %65, align 4, !tbaa !114
  %105 = mul nsw i32 %104, %103
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !120
  %110 = zext nneg i32 %105 to i64
  %111 = shl nuw nsw i64 %110, 2
  call void @llvm.memset.p0.i64(ptr align 4 %109, i8 0, i64 %111, i1 false), !tbaa !46
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i32, ptr %63, align 8, !tbaa !113
  %114 = load i32, ptr %65, align 4, !tbaa !114
  %115 = mul nsw i32 %114, %113
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 5
  %119 = load ptr, ptr %118, align 8, !tbaa !118
  %120 = zext nneg i32 %115 to i64
  %121 = shl nuw nsw i64 %120, 2
  call void @llvm.memset.p0.i64(ptr align 4 %119, i8 0, i64 %121, i1 false), !tbaa !46
  br label %122

122:                                              ; preds = %117, %112
  %123 = load i32, ptr %63, align 8, !tbaa !113
  %124 = load i32, ptr %65, align 4, !tbaa !114
  %125 = mul nsw i32 %124, %123
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122, %127
  %128 = phi ptr [ %131, %127 ], [ %100, %122 ]
  %129 = phi i32 [ %130, %127 ], [ %125, %122 ]
  %130 = add nsw i32 %129, -1
  store i32 2147483647, ptr %128, align 4, !tbaa !46
  %131 = getelementptr inbounds i32, ptr %128, i64 1
  %132 = icmp sgt i32 %129, 1
  br i1 %132, label %127, label %133, !llvm.loop !47

133:                                              ; preds = %127, %122, %27
  %134 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 11
  %135 = load ptr, ptr %134, align 8, !tbaa !216
  %136 = icmp eq ptr %135, null
  br i1 %136, label %168, label %137

137:                                              ; preds = %133
  %138 = load i32, ptr %63, align 8, !tbaa !113
  %139 = load i32, ptr %65, align 4, !tbaa !114
  %140 = mul nsw i32 %139, %138
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 9
  %144 = load ptr, ptr %143, align 8, !tbaa !217
  %145 = zext nneg i32 %140 to i64
  %146 = shl nuw nsw i64 %145, 2
  call void @llvm.memset.p0.i64(ptr align 4 %144, i8 0, i64 %146, i1 false), !tbaa !46
  br label %147

147:                                              ; preds = %142, %137
  %148 = load i32, ptr %63, align 8, !tbaa !113
  %149 = load i32, ptr %65, align 4, !tbaa !114
  %150 = mul nsw i32 %149, %148
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 10
  %154 = load ptr, ptr %153, align 8, !tbaa !218
  %155 = zext nneg i32 %150 to i64
  %156 = shl nuw nsw i64 %155, 2
  call void @llvm.memset.p0.i64(ptr align 4 %154, i8 0, i64 %156, i1 false), !tbaa !46
  br label %157

157:                                              ; preds = %152, %147
  %158 = load i32, ptr %63, align 8, !tbaa !113
  %159 = load i32, ptr %65, align 4, !tbaa !114
  %160 = mul nsw i32 %159, %158
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157, %162
  %163 = phi ptr [ %166, %162 ], [ %135, %157 ]
  %164 = phi i32 [ %165, %162 ], [ %160, %157 ]
  %165 = add nsw i32 %164, -1
  store i32 -2147483647, ptr %163, align 4, !tbaa !46
  %166 = getelementptr inbounds i32, ptr %163, i64 1
  %167 = icmp sgt i32 %164, 1
  br i1 %167, label %162, label %168, !llvm.loop !47

168:                                              ; preds = %162, %157, %133
  %169 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 70), align 8, !tbaa !42
  %170 = icmp eq ptr %169, null
  br i1 %170, label %884, label %171

171:                                              ; preds = %168
  %172 = load float, ptr %14, align 16, !tbaa !50
  %173 = getelementptr inbounds [4 x float], ptr %8, i64 1
  %174 = getelementptr inbounds [4 x float], ptr %8, i64 2
  %175 = getelementptr inbounds [4 x float], ptr %8, i64 3
  %176 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  %177 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 1
  %178 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 1
  %179 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 1
  %180 = getelementptr inbounds float, ptr %11, i64 1
  %181 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  %182 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 2
  %183 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 2
  %184 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 2
  %185 = getelementptr inbounds float, ptr %11, i64 2
  %186 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %187 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 3
  %188 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 3
  %189 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 3
  %190 = getelementptr inbounds float, ptr %11, i64 3
  %191 = getelementptr inbounds float, ptr %11, i64 1
  %192 = getelementptr inbounds float, ptr %11, i64 2
  %193 = getelementptr inbounds float, ptr %11, i64 3
  %194 = getelementptr inbounds [4 x float], ptr %8, i64 1
  %195 = getelementptr inbounds [4 x float], ptr %8, i64 2
  %196 = getelementptr inbounds [4 x float], ptr %8, i64 3
  %197 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  %198 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 1
  %199 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 1
  %200 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 1
  %201 = getelementptr inbounds float, ptr %12, i64 1
  %202 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  %203 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 2
  %204 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 2
  %205 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 2
  %206 = getelementptr inbounds float, ptr %12, i64 2
  %207 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %208 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 3
  %209 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 3
  %210 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 3
  %211 = getelementptr inbounds float, ptr %12, i64 3
  %212 = getelementptr inbounds float, ptr %12, i64 1
  %213 = getelementptr inbounds float, ptr %12, i64 2
  %214 = getelementptr inbounds float, ptr %12, i64 3
  %215 = getelementptr inbounds [4 x float], ptr %8, i64 1
  %216 = getelementptr inbounds [4 x float], ptr %8, i64 2
  %217 = getelementptr inbounds [4 x float], ptr %8, i64 3
  %218 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  %219 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 1
  %220 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 1
  %221 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 1
  %222 = getelementptr inbounds float, ptr %13, i64 1
  %223 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  %224 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 2
  %225 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 2
  %226 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 2
  %227 = getelementptr inbounds float, ptr %13, i64 2
  %228 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %229 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 3
  %230 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 3
  %231 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 3
  %232 = getelementptr inbounds float, ptr %13, i64 3
  %233 = getelementptr inbounds float, ptr %13, i64 1
  %234 = getelementptr inbounds float, ptr %13, i64 2
  %235 = getelementptr inbounds float, ptr %13, i64 3
  %236 = getelementptr inbounds [4 x float], ptr %8, i64 1
  %237 = getelementptr inbounds [4 x float], ptr %8, i64 2
  %238 = getelementptr inbounds [4 x float], ptr %8, i64 3
  %239 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  %240 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 1
  %241 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 1
  %242 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 1
  %243 = getelementptr inbounds float, ptr %14, i64 1
  %244 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  %245 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 2
  %246 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 2
  %247 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 2
  %248 = getelementptr inbounds float, ptr %14, i64 2
  %249 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %250 = getelementptr inbounds [4 x float], ptr %8, i64 1, i64 3
  %251 = getelementptr inbounds [4 x float], ptr %8, i64 2, i64 3
  %252 = getelementptr inbounds [4 x float], ptr %8, i64 3, i64 3
  %253 = getelementptr inbounds float, ptr %14, i64 3
  %254 = getelementptr inbounds float, ptr %14, i64 1
  %255 = getelementptr inbounds float, ptr %14, i64 2
  %256 = getelementptr inbounds float, ptr %14, i64 3
  br label %257

257:                                              ; preds = %171, %874
  %258 = phi ptr [ %169, %171 ], [ %882, %874 ]
  %259 = phi i16 [ 0, %171 ], [ %880, %874 ]
  %260 = phi i16 [ 0, %171 ], [ %879, %874 ]
  %261 = phi i16 [ 0, %171 ], [ %878, %874 ]
  %262 = phi i32 [ 0, %171 ], [ %881, %874 ]
  %263 = phi ptr [ null, %171 ], [ %877, %874 ]
  %264 = phi ptr [ null, %171 ], [ %876, %874 ]
  %265 = phi float [ %172, %171 ], [ %875, %874 ]
  %266 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %258, i64 0, i32 2
  %267 = load ptr, ptr %266, align 8, !tbaa !127
  %268 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %258, i64 0, i32 7
  %269 = load i32, ptr %268, align 8, !tbaa !129
  %270 = and i32 %269, %1
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %874, label %272

272:                                              ; preds = %257
  %273 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %258, i64 0, i32 11
  %274 = load i16, ptr %273, align 8, !tbaa !130
  %275 = and i16 %274, 3
  %276 = icmp eq i16 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %272
  %278 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %258, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %278) #14
  br label %280

279:                                              ; preds = %272
  call void @copy_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  br label %280

280:                                              ; preds = %279, %277
  %281 = load ptr, ptr %266, align 8, !tbaa !127
  %282 = getelementptr inbounds %struct.ObjectRen, ptr %281, i64 0, i32 9
  %283 = call i32 @clip_render_object(ptr noundef nonnull %282, ptr noundef nonnull %10, ptr noundef nonnull %8) #14
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %874

285:                                              ; preds = %280
  %286 = getelementptr inbounds %struct.ObjectRen, ptr %267, i64 0, i32 10
  %287 = load i32, ptr %286, align 8, !tbaa !131
  %288 = call i32 @llvm.smin.i32(i32 %287, i32 256)
  %289 = sext i32 %288 to i64
  %290 = mul nsw i64 %289, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %6, i8 0, i64 %290, i1 false)
  %291 = icmp sgt i32 %287, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %285
  %293 = zext nneg i32 %288 to i64
  br label %303

294:                                              ; preds = %303, %285
  %295 = getelementptr inbounds %struct.ObjectRen, ptr %267, i64 0, i32 11
  %296 = load i32, ptr %295, align 4, !tbaa !133
  %297 = icmp sgt i32 %296, 0
  br i1 %297, label %298, label %874

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.ObjectRen, ptr %267, i64 0, i32 19
  %300 = load float, ptr %243, align 4, !tbaa !50
  %301 = load float, ptr %248, align 8, !tbaa !50
  %302 = load float, ptr %253, align 4, !tbaa !50
  br label %308

303:                                              ; preds = %292, %303
  %304 = phi i64 [ 0, %292 ], [ %306, %303 ]
  %305 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %304
  store i32 -1, ptr %305, align 8, !tbaa !134
  %306 = add nuw nsw i64 %304, 1
  %307 = icmp eq i64 %306, %293
  br i1 %307, label %294, label %303, !llvm.loop !136

308:                                              ; preds = %298, %861
  %309 = phi float [ %265, %298 ], [ %862, %861 ]
  %310 = phi float [ %302, %298 ], [ %863, %861 ]
  %311 = phi float [ %301, %298 ], [ %864, %861 ]
  %312 = phi float [ %300, %298 ], [ %865, %861 ]
  %313 = phi i16 [ %259, %298 ], [ %870, %861 ]
  %314 = phi i16 [ %260, %298 ], [ %869, %861 ]
  %315 = phi i16 [ %261, %298 ], [ %868, %861 ]
  %316 = phi i32 [ 0, %298 ], [ %871, %861 ]
  %317 = phi ptr [ %263, %298 ], [ %331, %861 ]
  %318 = phi ptr [ %264, %298 ], [ %867, %861 ]
  %319 = phi float [ %265, %298 ], [ %866, %861 ]
  %320 = and i32 %316, 255
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %328

322:                                              ; preds = %308
  %323 = load ptr, ptr %299, align 8, !tbaa !137
  %324 = lshr exact i32 %316, 8
  %325 = zext nneg i32 %324 to i64
  %326 = getelementptr inbounds %struct.VlakTableNode, ptr %323, i64 %325
  %327 = load ptr, ptr %326, align 8, !tbaa !138
  br label %330

328:                                              ; preds = %308
  %329 = getelementptr inbounds %struct.VlakRen, ptr %317, i64 1
  br label %330

330:                                              ; preds = %328, %322
  %331 = phi ptr [ %327, %322 ], [ %329, %328 ]
  %332 = getelementptr inbounds %struct.VlakRen, ptr %331, i64 0, i32 5
  %333 = load ptr, ptr %332, align 8, !tbaa !140
  %334 = call zeroext i8 @material_in_material(ptr noundef %333, ptr noundef %15) #14
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %861, label %336

336:                                              ; preds = %330
  %337 = load i32, ptr %268, align 8, !tbaa !129
  %338 = and i32 %337, %1
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %353, label %340

340:                                              ; preds = %336
  %341 = load ptr, ptr %332, align 8, !tbaa !140
  %342 = icmp eq ptr %341, %318
  br i1 %342, label %353, label %343

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.Material, ptr %341, i64 0, i32 51
  %345 = load i32, ptr %344, align 4, !tbaa !142
  %346 = trunc i32 %345 to i16
  %347 = and i16 %346, 8192
  %348 = and i16 %346, 512
  %349 = getelementptr inbounds %struct.Material, ptr %341, i64 0, i32 2
  %350 = load i16, ptr %349, align 8, !tbaa !146
  %351 = icmp eq i16 %350, 3
  %352 = zext i1 %351 to i16
  br label %353

353:                                              ; preds = %336, %340, %343
  %354 = phi ptr [ %341, %343 ], [ %318, %340 ], [ null, %336 ]
  %355 = phi i16 [ %347, %343 ], [ %315, %340 ], [ 1, %336 ]
  %356 = phi i16 [ %348, %343 ], [ %314, %340 ], [ %314, %336 ]
  %357 = phi i16 [ %352, %343 ], [ %313, %340 ], [ %313, %336 ]
  %358 = icmp eq i16 %355, 0
  %359 = icmp eq i16 %357, 0
  %360 = select i1 %358, i1 %359, i1 false
  %361 = icmp eq i16 %356, 0
  %362 = select i1 %360, i1 %361, i1 false
  br i1 %362, label %363, label %861

363:                                              ; preds = %353
  %364 = load ptr, ptr %331, align 8, !tbaa !149
  %365 = getelementptr inbounds %struct.VlakRen, ptr %331, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !150
  %367 = getelementptr inbounds %struct.VlakRen, ptr %331, i64 0, i32 2
  %368 = load ptr, ptr %367, align 8, !tbaa !151
  %369 = getelementptr inbounds %struct.VlakRen, ptr %331, i64 0, i32 3
  %370 = load ptr, ptr %369, align 8, !tbaa !152
  %371 = getelementptr inbounds %struct.VertRen, ptr %364, i64 0, i32 5
  %372 = load i32, ptr %371, align 8, !tbaa !153
  %373 = and i32 %372, 255
  %374 = zext nneg i32 %373 to i64
  %375 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %374
  %376 = load i32, ptr %375, align 8, !tbaa !134
  %377 = icmp eq i32 %376, %372
  br i1 %377, label %378, label %389

378:                                              ; preds = %363
  %379 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %374, i32 2
  %380 = load float, ptr %379, align 8, !tbaa !50
  store float %380, ptr %11, align 16, !tbaa !50
  %381 = getelementptr inbounds float, ptr %379, i64 1
  %382 = load float, ptr %381, align 4, !tbaa !50
  store float %382, ptr %191, align 4, !tbaa !50
  %383 = getelementptr inbounds float, ptr %379, i64 2
  %384 = load float, ptr %383, align 8, !tbaa !50
  store float %384, ptr %192, align 8, !tbaa !50
  %385 = getelementptr inbounds float, ptr %379, i64 3
  %386 = load float, ptr %385, align 4, !tbaa !50
  store float %386, ptr %193, align 4, !tbaa !50
  %387 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %374, i32 1
  %388 = load i32, ptr %387, align 4, !tbaa !155
  br label %455

389:                                              ; preds = %363
  %390 = load float, ptr %364, align 4, !tbaa !50
  %391 = getelementptr inbounds float, ptr %364, i64 1
  %392 = load float, ptr %391, align 4, !tbaa !50
  %393 = getelementptr inbounds float, ptr %364, i64 2
  %394 = load float, ptr %393, align 4, !tbaa !50
  %395 = load float, ptr %8, align 16, !tbaa !50
  %396 = load float, ptr %173, align 16, !tbaa !50
  %397 = fmul float %392, %396
  %398 = call float @llvm.fmuladd.f32(float %390, float %395, float %397)
  %399 = load float, ptr %174, align 16, !tbaa !50
  %400 = call float @llvm.fmuladd.f32(float %394, float %399, float %398)
  %401 = load float, ptr %175, align 16, !tbaa !50
  %402 = fadd float %401, %400
  store float %402, ptr %11, align 16, !tbaa !50
  %403 = load float, ptr %176, align 4, !tbaa !50
  %404 = load float, ptr %177, align 4, !tbaa !50
  %405 = fmul float %392, %404
  %406 = call float @llvm.fmuladd.f32(float %390, float %403, float %405)
  %407 = load float, ptr %178, align 4, !tbaa !50
  %408 = call float @llvm.fmuladd.f32(float %394, float %407, float %406)
  %409 = load float, ptr %179, align 4, !tbaa !50
  %410 = fadd float %409, %408
  store float %410, ptr %180, align 4, !tbaa !50
  %411 = load float, ptr %181, align 8, !tbaa !50
  %412 = load float, ptr %182, align 8, !tbaa !50
  %413 = fmul float %392, %412
  %414 = call float @llvm.fmuladd.f32(float %390, float %411, float %413)
  %415 = load float, ptr %183, align 8, !tbaa !50
  %416 = call float @llvm.fmuladd.f32(float %394, float %415, float %414)
  %417 = load float, ptr %184, align 8, !tbaa !50
  %418 = fadd float %417, %416
  store float %418, ptr %185, align 8, !tbaa !50
  %419 = load float, ptr %186, align 4, !tbaa !50
  %420 = load float, ptr %187, align 4, !tbaa !50
  %421 = fmul float %392, %420
  %422 = call float @llvm.fmuladd.f32(float %390, float %419, float %421)
  %423 = load float, ptr %188, align 4, !tbaa !50
  %424 = call float @llvm.fmuladd.f32(float %394, float %423, float %422)
  %425 = load float, ptr %189, align 4, !tbaa !50
  %426 = fadd float %425, %424
  store float %426, ptr %190, align 4, !tbaa !50
  %427 = load float, ptr %10, align 16, !tbaa !50
  %428 = fmul float %426, %427
  %429 = fcmp olt float %402, %428
  br i1 %429, label %435, label %430

430:                                              ; preds = %389
  %431 = load float, ptr %45, align 4, !tbaa !50
  %432 = fmul float %426, %431
  %433 = fcmp ogt float %402, %432
  br i1 %433, label %434, label %435

434:                                              ; preds = %430
  br label %435

435:                                              ; preds = %434, %430, %389
  %436 = phi i32 [ 2, %434 ], [ 0, %430 ], [ 1, %389 ]
  %437 = load float, ptr %62, align 4, !tbaa !50
  %438 = fmul float %426, %437
  %439 = fcmp ogt float %410, %438
  br i1 %439, label %440, label %442

440:                                              ; preds = %435
  %441 = or disjoint i32 %436, 4
  br label %448

442:                                              ; preds = %435
  %443 = load float, ptr %54, align 8, !tbaa !50
  %444 = fmul float %426, %443
  %445 = fcmp olt float %410, %444
  br i1 %445, label %446, label %448

446:                                              ; preds = %442
  %447 = or disjoint i32 %436, 8
  br label %448

448:                                              ; preds = %446, %442, %440
  %449 = phi i32 [ %441, %440 ], [ %447, %446 ], [ %436, %442 ]
  %450 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %374, i32 2
  store float %402, ptr %450, align 8, !tbaa !50
  %451 = getelementptr inbounds float, ptr %450, i64 1
  store float %410, ptr %451, align 4, !tbaa !50
  %452 = getelementptr inbounds float, ptr %450, i64 2
  store float %418, ptr %452, align 8, !tbaa !50
  %453 = getelementptr inbounds float, ptr %450, i64 3
  store float %426, ptr %453, align 4, !tbaa !50
  %454 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %374, i32 1
  store i32 %449, ptr %454, align 4, !tbaa !155
  store i32 %372, ptr %375, align 8, !tbaa !134
  br label %455

455:                                              ; preds = %378, %448
  %456 = phi float [ %386, %378 ], [ %426, %448 ]
  %457 = phi float [ %384, %378 ], [ %418, %448 ]
  %458 = phi float [ %382, %378 ], [ %410, %448 ]
  %459 = phi float [ %380, %378 ], [ %402, %448 ]
  %460 = phi i32 [ %388, %378 ], [ %449, %448 ]
  %461 = getelementptr inbounds %struct.VertRen, ptr %366, i64 0, i32 5
  %462 = load i32, ptr %461, align 8, !tbaa !153
  %463 = and i32 %462, 255
  %464 = zext nneg i32 %463 to i64
  %465 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %464
  %466 = load i32, ptr %465, align 8, !tbaa !134
  %467 = icmp eq i32 %466, %462
  br i1 %467, label %468, label %479

468:                                              ; preds = %455
  %469 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %464, i32 2
  %470 = load float, ptr %469, align 8, !tbaa !50
  store float %470, ptr %12, align 16, !tbaa !50
  %471 = getelementptr inbounds float, ptr %469, i64 1
  %472 = load float, ptr %471, align 4, !tbaa !50
  store float %472, ptr %212, align 4, !tbaa !50
  %473 = getelementptr inbounds float, ptr %469, i64 2
  %474 = load float, ptr %473, align 8, !tbaa !50
  store float %474, ptr %213, align 8, !tbaa !50
  %475 = getelementptr inbounds float, ptr %469, i64 3
  %476 = load float, ptr %475, align 4, !tbaa !50
  store float %476, ptr %214, align 4, !tbaa !50
  %477 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %464, i32 1
  %478 = load i32, ptr %477, align 4, !tbaa !155
  br label %545

479:                                              ; preds = %455
  %480 = load float, ptr %366, align 4, !tbaa !50
  %481 = getelementptr inbounds float, ptr %366, i64 1
  %482 = load float, ptr %481, align 4, !tbaa !50
  %483 = getelementptr inbounds float, ptr %366, i64 2
  %484 = load float, ptr %483, align 4, !tbaa !50
  %485 = load float, ptr %8, align 16, !tbaa !50
  %486 = load float, ptr %194, align 16, !tbaa !50
  %487 = fmul float %482, %486
  %488 = call float @llvm.fmuladd.f32(float %480, float %485, float %487)
  %489 = load float, ptr %195, align 16, !tbaa !50
  %490 = call float @llvm.fmuladd.f32(float %484, float %489, float %488)
  %491 = load float, ptr %196, align 16, !tbaa !50
  %492 = fadd float %491, %490
  store float %492, ptr %12, align 16, !tbaa !50
  %493 = load float, ptr %197, align 4, !tbaa !50
  %494 = load float, ptr %198, align 4, !tbaa !50
  %495 = fmul float %482, %494
  %496 = call float @llvm.fmuladd.f32(float %480, float %493, float %495)
  %497 = load float, ptr %199, align 4, !tbaa !50
  %498 = call float @llvm.fmuladd.f32(float %484, float %497, float %496)
  %499 = load float, ptr %200, align 4, !tbaa !50
  %500 = fadd float %499, %498
  store float %500, ptr %201, align 4, !tbaa !50
  %501 = load float, ptr %202, align 8, !tbaa !50
  %502 = load float, ptr %203, align 8, !tbaa !50
  %503 = fmul float %482, %502
  %504 = call float @llvm.fmuladd.f32(float %480, float %501, float %503)
  %505 = load float, ptr %204, align 8, !tbaa !50
  %506 = call float @llvm.fmuladd.f32(float %484, float %505, float %504)
  %507 = load float, ptr %205, align 8, !tbaa !50
  %508 = fadd float %507, %506
  store float %508, ptr %206, align 8, !tbaa !50
  %509 = load float, ptr %207, align 4, !tbaa !50
  %510 = load float, ptr %208, align 4, !tbaa !50
  %511 = fmul float %482, %510
  %512 = call float @llvm.fmuladd.f32(float %480, float %509, float %511)
  %513 = load float, ptr %209, align 4, !tbaa !50
  %514 = call float @llvm.fmuladd.f32(float %484, float %513, float %512)
  %515 = load float, ptr %210, align 4, !tbaa !50
  %516 = fadd float %515, %514
  store float %516, ptr %211, align 4, !tbaa !50
  %517 = load float, ptr %10, align 16, !tbaa !50
  %518 = fmul float %516, %517
  %519 = fcmp olt float %492, %518
  br i1 %519, label %525, label %520

520:                                              ; preds = %479
  %521 = load float, ptr %45, align 4, !tbaa !50
  %522 = fmul float %516, %521
  %523 = fcmp ogt float %492, %522
  br i1 %523, label %524, label %525

524:                                              ; preds = %520
  br label %525

525:                                              ; preds = %524, %520, %479
  %526 = phi i32 [ 2, %524 ], [ 0, %520 ], [ 1, %479 ]
  %527 = load float, ptr %62, align 4, !tbaa !50
  %528 = fmul float %516, %527
  %529 = fcmp ogt float %500, %528
  br i1 %529, label %530, label %532

530:                                              ; preds = %525
  %531 = or disjoint i32 %526, 4
  br label %538

532:                                              ; preds = %525
  %533 = load float, ptr %54, align 8, !tbaa !50
  %534 = fmul float %516, %533
  %535 = fcmp olt float %500, %534
  br i1 %535, label %536, label %538

536:                                              ; preds = %532
  %537 = or disjoint i32 %526, 8
  br label %538

538:                                              ; preds = %536, %532, %530
  %539 = phi i32 [ %531, %530 ], [ %537, %536 ], [ %526, %532 ]
  %540 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %464, i32 2
  store float %492, ptr %540, align 8, !tbaa !50
  %541 = getelementptr inbounds float, ptr %540, i64 1
  store float %500, ptr %541, align 4, !tbaa !50
  %542 = getelementptr inbounds float, ptr %540, i64 2
  store float %508, ptr %542, align 8, !tbaa !50
  %543 = getelementptr inbounds float, ptr %540, i64 3
  store float %516, ptr %543, align 4, !tbaa !50
  %544 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %464, i32 1
  store i32 %539, ptr %544, align 4, !tbaa !155
  store i32 %462, ptr %465, align 8, !tbaa !134
  br label %545

545:                                              ; preds = %468, %538
  %546 = phi float [ %476, %468 ], [ %516, %538 ]
  %547 = phi float [ %474, %468 ], [ %508, %538 ]
  %548 = phi float [ %472, %468 ], [ %500, %538 ]
  %549 = phi float [ %470, %468 ], [ %492, %538 ]
  %550 = phi i32 [ %478, %468 ], [ %539, %538 ]
  %551 = getelementptr inbounds %struct.VertRen, ptr %368, i64 0, i32 5
  %552 = load i32, ptr %551, align 8, !tbaa !153
  %553 = and i32 %552, 255
  %554 = zext nneg i32 %553 to i64
  %555 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %554
  %556 = load i32, ptr %555, align 8, !tbaa !134
  %557 = icmp eq i32 %556, %552
  br i1 %557, label %558, label %569

558:                                              ; preds = %545
  %559 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %554, i32 2
  %560 = load float, ptr %559, align 8, !tbaa !50
  store float %560, ptr %13, align 16, !tbaa !50
  %561 = getelementptr inbounds float, ptr %559, i64 1
  %562 = load float, ptr %561, align 4, !tbaa !50
  store float %562, ptr %233, align 4, !tbaa !50
  %563 = getelementptr inbounds float, ptr %559, i64 2
  %564 = load float, ptr %563, align 8, !tbaa !50
  store float %564, ptr %234, align 8, !tbaa !50
  %565 = getelementptr inbounds float, ptr %559, i64 3
  %566 = load float, ptr %565, align 4, !tbaa !50
  store float %566, ptr %235, align 4, !tbaa !50
  %567 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %554, i32 1
  %568 = load i32, ptr %567, align 4, !tbaa !155
  br label %635

569:                                              ; preds = %545
  %570 = load float, ptr %368, align 4, !tbaa !50
  %571 = getelementptr inbounds float, ptr %368, i64 1
  %572 = load float, ptr %571, align 4, !tbaa !50
  %573 = getelementptr inbounds float, ptr %368, i64 2
  %574 = load float, ptr %573, align 4, !tbaa !50
  %575 = load float, ptr %8, align 16, !tbaa !50
  %576 = load float, ptr %215, align 16, !tbaa !50
  %577 = fmul float %572, %576
  %578 = call float @llvm.fmuladd.f32(float %570, float %575, float %577)
  %579 = load float, ptr %216, align 16, !tbaa !50
  %580 = call float @llvm.fmuladd.f32(float %574, float %579, float %578)
  %581 = load float, ptr %217, align 16, !tbaa !50
  %582 = fadd float %581, %580
  store float %582, ptr %13, align 16, !tbaa !50
  %583 = load float, ptr %218, align 4, !tbaa !50
  %584 = load float, ptr %219, align 4, !tbaa !50
  %585 = fmul float %572, %584
  %586 = call float @llvm.fmuladd.f32(float %570, float %583, float %585)
  %587 = load float, ptr %220, align 4, !tbaa !50
  %588 = call float @llvm.fmuladd.f32(float %574, float %587, float %586)
  %589 = load float, ptr %221, align 4, !tbaa !50
  %590 = fadd float %589, %588
  store float %590, ptr %222, align 4, !tbaa !50
  %591 = load float, ptr %223, align 8, !tbaa !50
  %592 = load float, ptr %224, align 8, !tbaa !50
  %593 = fmul float %572, %592
  %594 = call float @llvm.fmuladd.f32(float %570, float %591, float %593)
  %595 = load float, ptr %225, align 8, !tbaa !50
  %596 = call float @llvm.fmuladd.f32(float %574, float %595, float %594)
  %597 = load float, ptr %226, align 8, !tbaa !50
  %598 = fadd float %597, %596
  store float %598, ptr %227, align 8, !tbaa !50
  %599 = load float, ptr %228, align 4, !tbaa !50
  %600 = load float, ptr %229, align 4, !tbaa !50
  %601 = fmul float %572, %600
  %602 = call float @llvm.fmuladd.f32(float %570, float %599, float %601)
  %603 = load float, ptr %230, align 4, !tbaa !50
  %604 = call float @llvm.fmuladd.f32(float %574, float %603, float %602)
  %605 = load float, ptr %231, align 4, !tbaa !50
  %606 = fadd float %605, %604
  store float %606, ptr %232, align 4, !tbaa !50
  %607 = load float, ptr %10, align 16, !tbaa !50
  %608 = fmul float %606, %607
  %609 = fcmp olt float %582, %608
  br i1 %609, label %615, label %610

610:                                              ; preds = %569
  %611 = load float, ptr %45, align 4, !tbaa !50
  %612 = fmul float %606, %611
  %613 = fcmp ogt float %582, %612
  br i1 %613, label %614, label %615

614:                                              ; preds = %610
  br label %615

615:                                              ; preds = %614, %610, %569
  %616 = phi i32 [ 2, %614 ], [ 0, %610 ], [ 1, %569 ]
  %617 = load float, ptr %62, align 4, !tbaa !50
  %618 = fmul float %606, %617
  %619 = fcmp ogt float %590, %618
  br i1 %619, label %620, label %622

620:                                              ; preds = %615
  %621 = or disjoint i32 %616, 4
  br label %628

622:                                              ; preds = %615
  %623 = load float, ptr %54, align 8, !tbaa !50
  %624 = fmul float %606, %623
  %625 = fcmp olt float %590, %624
  br i1 %625, label %626, label %628

626:                                              ; preds = %622
  %627 = or disjoint i32 %616, 8
  br label %628

628:                                              ; preds = %626, %622, %620
  %629 = phi i32 [ %621, %620 ], [ %627, %626 ], [ %616, %622 ]
  %630 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %554, i32 2
  store float %582, ptr %630, align 8, !tbaa !50
  %631 = getelementptr inbounds float, ptr %630, i64 1
  store float %590, ptr %631, align 4, !tbaa !50
  %632 = getelementptr inbounds float, ptr %630, i64 2
  store float %598, ptr %632, align 8, !tbaa !50
  %633 = getelementptr inbounds float, ptr %630, i64 3
  store float %606, ptr %633, align 4, !tbaa !50
  %634 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %554, i32 1
  store i32 %629, ptr %634, align 4, !tbaa !155
  store i32 %552, ptr %555, align 8, !tbaa !134
  br label %635

635:                                              ; preds = %558, %628
  %636 = phi float [ %566, %558 ], [ %606, %628 ]
  %637 = phi float [ %564, %558 ], [ %598, %628 ]
  %638 = phi float [ %562, %558 ], [ %590, %628 ]
  %639 = phi float [ %560, %558 ], [ %582, %628 ]
  %640 = phi i32 [ %568, %558 ], [ %629, %628 ]
  %641 = and i32 %550, %460
  %642 = and i32 %641, %640
  %643 = icmp eq ptr %370, null
  br i1 %643, label %736, label %644

644:                                              ; preds = %635
  %645 = getelementptr inbounds %struct.VertRen, ptr %370, i64 0, i32 5
  %646 = load i32, ptr %645, align 8, !tbaa !153
  %647 = and i32 %646, 255
  %648 = zext nneg i32 %647 to i64
  %649 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %648
  %650 = load i32, ptr %649, align 8, !tbaa !134
  %651 = icmp eq i32 %650, %646
  br i1 %651, label %652, label %663

652:                                              ; preds = %644
  %653 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %648, i32 2
  %654 = load float, ptr %653, align 8, !tbaa !50
  store float %654, ptr %14, align 16, !tbaa !50
  %655 = getelementptr inbounds float, ptr %653, i64 1
  %656 = load float, ptr %655, align 4, !tbaa !50
  store float %656, ptr %254, align 4, !tbaa !50
  %657 = getelementptr inbounds float, ptr %653, i64 2
  %658 = load float, ptr %657, align 8, !tbaa !50
  store float %658, ptr %255, align 8, !tbaa !50
  %659 = getelementptr inbounds float, ptr %653, i64 3
  %660 = load float, ptr %659, align 4, !tbaa !50
  store float %660, ptr %256, align 4, !tbaa !50
  %661 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %648, i32 1
  %662 = load i32, ptr %661, align 4, !tbaa !155
  br label %729

663:                                              ; preds = %644
  %664 = load float, ptr %370, align 4, !tbaa !50
  %665 = getelementptr inbounds float, ptr %370, i64 1
  %666 = load float, ptr %665, align 4, !tbaa !50
  %667 = getelementptr inbounds float, ptr %370, i64 2
  %668 = load float, ptr %667, align 4, !tbaa !50
  %669 = load float, ptr %8, align 16, !tbaa !50
  %670 = load float, ptr %236, align 16, !tbaa !50
  %671 = fmul float %666, %670
  %672 = call float @llvm.fmuladd.f32(float %664, float %669, float %671)
  %673 = load float, ptr %237, align 16, !tbaa !50
  %674 = call float @llvm.fmuladd.f32(float %668, float %673, float %672)
  %675 = load float, ptr %238, align 16, !tbaa !50
  %676 = fadd float %675, %674
  store float %676, ptr %14, align 16, !tbaa !50
  %677 = load float, ptr %239, align 4, !tbaa !50
  %678 = load float, ptr %240, align 4, !tbaa !50
  %679 = fmul float %666, %678
  %680 = call float @llvm.fmuladd.f32(float %664, float %677, float %679)
  %681 = load float, ptr %241, align 4, !tbaa !50
  %682 = call float @llvm.fmuladd.f32(float %668, float %681, float %680)
  %683 = load float, ptr %242, align 4, !tbaa !50
  %684 = fadd float %683, %682
  store float %684, ptr %243, align 4, !tbaa !50
  %685 = load float, ptr %244, align 8, !tbaa !50
  %686 = load float, ptr %245, align 8, !tbaa !50
  %687 = fmul float %666, %686
  %688 = call float @llvm.fmuladd.f32(float %664, float %685, float %687)
  %689 = load float, ptr %246, align 8, !tbaa !50
  %690 = call float @llvm.fmuladd.f32(float %668, float %689, float %688)
  %691 = load float, ptr %247, align 8, !tbaa !50
  %692 = fadd float %691, %690
  store float %692, ptr %248, align 8, !tbaa !50
  %693 = load float, ptr %249, align 4, !tbaa !50
  %694 = load float, ptr %250, align 4, !tbaa !50
  %695 = fmul float %666, %694
  %696 = call float @llvm.fmuladd.f32(float %664, float %693, float %695)
  %697 = load float, ptr %251, align 4, !tbaa !50
  %698 = call float @llvm.fmuladd.f32(float %668, float %697, float %696)
  %699 = load float, ptr %252, align 4, !tbaa !50
  %700 = fadd float %699, %698
  store float %700, ptr %253, align 4, !tbaa !50
  %701 = load float, ptr %10, align 16, !tbaa !50
  %702 = fmul float %700, %701
  %703 = fcmp olt float %676, %702
  br i1 %703, label %709, label %704

704:                                              ; preds = %663
  %705 = load float, ptr %45, align 4, !tbaa !50
  %706 = fmul float %700, %705
  %707 = fcmp ogt float %676, %706
  br i1 %707, label %708, label %709

708:                                              ; preds = %704
  br label %709

709:                                              ; preds = %708, %704, %663
  %710 = phi i32 [ 2, %708 ], [ 0, %704 ], [ 1, %663 ]
  %711 = load float, ptr %62, align 4, !tbaa !50
  %712 = fmul float %700, %711
  %713 = fcmp ogt float %684, %712
  br i1 %713, label %714, label %716

714:                                              ; preds = %709
  %715 = or disjoint i32 %710, 4
  br label %722

716:                                              ; preds = %709
  %717 = load float, ptr %54, align 8, !tbaa !50
  %718 = fmul float %700, %717
  %719 = fcmp olt float %684, %718
  br i1 %719, label %720, label %722

720:                                              ; preds = %716
  %721 = or disjoint i32 %710, 8
  br label %722

722:                                              ; preds = %720, %716, %714
  %723 = phi i32 [ %715, %714 ], [ %721, %720 ], [ %710, %716 ]
  %724 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %648, i32 2
  store float %676, ptr %724, align 8, !tbaa !50
  %725 = getelementptr inbounds float, ptr %724, i64 1
  store float %684, ptr %725, align 4, !tbaa !50
  %726 = getelementptr inbounds float, ptr %724, i64 2
  store float %692, ptr %726, align 8, !tbaa !50
  %727 = getelementptr inbounds float, ptr %724, i64 3
  store float %700, ptr %727, align 4, !tbaa !50
  %728 = getelementptr inbounds %struct.ZbufProjectCache, ptr %6, i64 %648, i32 1
  store i32 %723, ptr %728, align 4, !tbaa !155
  store i32 %646, ptr %649, align 8, !tbaa !134
  br label %729

729:                                              ; preds = %652, %722
  %730 = phi float [ %660, %652 ], [ %700, %722 ]
  %731 = phi float [ %658, %652 ], [ %692, %722 ]
  %732 = phi float [ %656, %652 ], [ %684, %722 ]
  %733 = phi float [ %654, %652 ], [ %676, %722 ]
  %734 = phi i32 [ %662, %652 ], [ %723, %722 ]
  %735 = and i32 %734, %642
  br label %736

736:                                              ; preds = %729, %635
  %737 = phi float [ %733, %729 ], [ %309, %635 ]
  %738 = phi float [ %730, %729 ], [ %310, %635 ]
  %739 = phi float [ %731, %729 ], [ %311, %635 ]
  %740 = phi float [ %732, %729 ], [ %312, %635 ]
  %741 = phi float [ %733, %729 ], [ %319, %635 ]
  %742 = phi i32 [ %735, %729 ], [ %642, %635 ]
  %743 = and i32 %742, 65535
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %745, label %861

745:                                              ; preds = %736
  %746 = call float @llvm.fabs.f32(float %456)
  %747 = fadd float %746, 0x3E80000000000000
  %748 = fneg float %747
  %749 = fcmp olt float %459, %748
  br i1 %749, label %753, label %750

750:                                              ; preds = %745
  %751 = fcmp ogt float %459, %747
  br i1 %751, label %752, label %753

752:                                              ; preds = %750
  br label %753

753:                                              ; preds = %752, %750, %745
  %754 = phi i16 [ 2, %752 ], [ 0, %750 ], [ 1, %745 ]
  %755 = fcmp ogt float %458, %747
  br i1 %755, label %756, label %758

756:                                              ; preds = %753
  %757 = or disjoint i16 %754, 4
  br label %762

758:                                              ; preds = %753
  %759 = fcmp olt float %458, %748
  br i1 %759, label %760, label %762

760:                                              ; preds = %758
  %761 = or disjoint i16 %754, 8
  br label %762

762:                                              ; preds = %760, %758, %756
  %763 = phi i16 [ %757, %756 ], [ %761, %760 ], [ %754, %758 ]
  %764 = fcmp olt float %457, %748
  br i1 %764, label %765, label %767

765:                                              ; preds = %762
  %766 = add nsw i16 %763, 16
  br label %771

767:                                              ; preds = %762
  %768 = fcmp ogt float %457, %747
  br i1 %768, label %769, label %771

769:                                              ; preds = %767
  %770 = add nsw i16 %763, 32
  br label %771

771:                                              ; preds = %765, %767, %769
  %772 = phi i16 [ %766, %765 ], [ %770, %769 ], [ %763, %767 ]
  %773 = zext nneg i16 %772 to i32
  %774 = call float @llvm.fabs.f32(float %546)
  %775 = fadd float %774, 0x3E80000000000000
  %776 = fneg float %775
  %777 = fcmp olt float %549, %776
  br i1 %777, label %781, label %778

778:                                              ; preds = %771
  %779 = fcmp ogt float %549, %775
  br i1 %779, label %780, label %781

780:                                              ; preds = %778
  br label %781

781:                                              ; preds = %780, %778, %771
  %782 = phi i16 [ 2, %780 ], [ 0, %778 ], [ 1, %771 ]
  %783 = fcmp ogt float %548, %775
  br i1 %783, label %784, label %786

784:                                              ; preds = %781
  %785 = or disjoint i16 %782, 4
  br label %790

786:                                              ; preds = %781
  %787 = fcmp olt float %548, %776
  br i1 %787, label %788, label %790

788:                                              ; preds = %786
  %789 = or disjoint i16 %782, 8
  br label %790

790:                                              ; preds = %788, %786, %784
  %791 = phi i16 [ %785, %784 ], [ %789, %788 ], [ %782, %786 ]
  %792 = fcmp olt float %547, %776
  br i1 %792, label %793, label %795

793:                                              ; preds = %790
  %794 = add nsw i16 %791, 16
  br label %799

795:                                              ; preds = %790
  %796 = fcmp ogt float %547, %775
  br i1 %796, label %797, label %799

797:                                              ; preds = %795
  %798 = add nsw i16 %791, 32
  br label %799

799:                                              ; preds = %793, %795, %797
  %800 = phi i16 [ %794, %793 ], [ %798, %797 ], [ %791, %795 ]
  %801 = zext nneg i16 %800 to i32
  %802 = call float @llvm.fabs.f32(float %636)
  %803 = fadd float %802, 0x3E80000000000000
  %804 = fneg float %803
  %805 = fcmp olt float %639, %804
  br i1 %805, label %809, label %806

806:                                              ; preds = %799
  %807 = fcmp ogt float %639, %803
  br i1 %807, label %808, label %809

808:                                              ; preds = %806
  br label %809

809:                                              ; preds = %808, %806, %799
  %810 = phi i16 [ 2, %808 ], [ 0, %806 ], [ 1, %799 ]
  %811 = fcmp ogt float %638, %803
  br i1 %811, label %812, label %814

812:                                              ; preds = %809
  %813 = or disjoint i16 %810, 4
  br label %818

814:                                              ; preds = %809
  %815 = fcmp olt float %638, %804
  br i1 %815, label %816, label %818

816:                                              ; preds = %814
  %817 = or disjoint i16 %810, 8
  br label %818

818:                                              ; preds = %816, %814, %812
  %819 = phi i16 [ %813, %812 ], [ %817, %816 ], [ %810, %814 ]
  %820 = fcmp olt float %637, %804
  br i1 %820, label %821, label %823

821:                                              ; preds = %818
  %822 = add nsw i16 %819, 16
  br label %827

823:                                              ; preds = %818
  %824 = fcmp ogt float %637, %803
  br i1 %824, label %825, label %827

825:                                              ; preds = %823
  %826 = add nsw i16 %819, 32
  br label %827

827:                                              ; preds = %821, %823, %825
  %828 = phi i16 [ %822, %821 ], [ %826, %825 ], [ %819, %823 ]
  %829 = zext nneg i16 %828 to i32
  %830 = add nuw nsw i32 %316, 1
  call void @zbufclip(ptr noundef nonnull %7, i32 noundef %262, i32 noundef %830, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %773, i32 noundef %801, i32 noundef %829)
  br i1 %643, label %861, label %831

831:                                              ; preds = %827
  %832 = call float @llvm.fabs.f32(float %738)
  %833 = fadd float %832, 0x3E80000000000000
  %834 = fneg float %833
  %835 = fcmp olt float %741, %834
  br i1 %835, label %839, label %836

836:                                              ; preds = %831
  %837 = fcmp ogt float %741, %833
  br i1 %837, label %838, label %839

838:                                              ; preds = %836
  br label %839

839:                                              ; preds = %838, %836, %831
  %840 = phi i16 [ 2, %838 ], [ 0, %836 ], [ 1, %831 ]
  %841 = fcmp ogt float %740, %833
  br i1 %841, label %842, label %844

842:                                              ; preds = %839
  %843 = or disjoint i16 %840, 4
  br label %848

844:                                              ; preds = %839
  %845 = fcmp olt float %740, %834
  br i1 %845, label %846, label %848

846:                                              ; preds = %844
  %847 = or disjoint i16 %840, 8
  br label %848

848:                                              ; preds = %846, %844, %842
  %849 = phi i16 [ %843, %842 ], [ %847, %846 ], [ %840, %844 ]
  %850 = fcmp olt float %739, %834
  br i1 %850, label %851, label %853

851:                                              ; preds = %848
  %852 = add nsw i16 %849, 16
  br label %857

853:                                              ; preds = %848
  %854 = fcmp ogt float %739, %833
  br i1 %854, label %855, label %857

855:                                              ; preds = %853
  %856 = add nsw i16 %849, 32
  br label %857

857:                                              ; preds = %851, %853, %855
  %858 = phi i16 [ %852, %851 ], [ %856, %855 ], [ %849, %853 ]
  %859 = zext nneg i16 %858 to i32
  %860 = add nuw nsw i32 %316, 134217729
  call void @zbufclip(ptr noundef nonnull %7, i32 noundef %262, i32 noundef %860, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %14, i32 noundef %773, i32 noundef %829, i32 noundef %859)
  br label %861

861:                                              ; preds = %736, %857, %827, %330, %353
  %862 = phi float [ %309, %353 ], [ %309, %330 ], [ %737, %827 ], [ %737, %857 ], [ %737, %736 ]
  %863 = phi float [ %310, %353 ], [ %310, %330 ], [ %738, %827 ], [ %738, %857 ], [ %738, %736 ]
  %864 = phi float [ %311, %353 ], [ %311, %330 ], [ %739, %827 ], [ %739, %857 ], [ %739, %736 ]
  %865 = phi float [ %312, %353 ], [ %312, %330 ], [ %740, %827 ], [ %740, %857 ], [ %740, %736 ]
  %866 = phi float [ %319, %353 ], [ %319, %330 ], [ %741, %827 ], [ %741, %857 ], [ %741, %736 ]
  %867 = phi ptr [ %354, %353 ], [ %318, %330 ], [ %354, %827 ], [ %354, %857 ], [ %354, %736 ]
  %868 = phi i16 [ %355, %353 ], [ %315, %330 ], [ %355, %827 ], [ %355, %857 ], [ %355, %736 ]
  %869 = phi i16 [ %356, %353 ], [ %314, %330 ], [ %356, %827 ], [ %356, %857 ], [ %356, %736 ]
  %870 = phi i16 [ %357, %353 ], [ %313, %330 ], [ %357, %827 ], [ %357, %857 ], [ %357, %736 ]
  %871 = add nuw nsw i32 %316, 1
  %872 = load i32, ptr %295, align 4, !tbaa !133
  %873 = icmp slt i32 %871, %872
  br i1 %873, label %308, label %874, !llvm.loop !219

874:                                              ; preds = %861, %294, %280, %257
  %875 = phi float [ %265, %280 ], [ %265, %257 ], [ %265, %294 ], [ %862, %861 ]
  %876 = phi ptr [ %264, %280 ], [ %264, %257 ], [ %264, %294 ], [ %867, %861 ]
  %877 = phi ptr [ %263, %280 ], [ %263, %257 ], [ %263, %294 ], [ %331, %861 ]
  %878 = phi i16 [ %261, %280 ], [ %261, %257 ], [ %261, %294 ], [ %868, %861 ]
  %879 = phi i16 [ %260, %280 ], [ %260, %257 ], [ %260, %294 ], [ %869, %861 ]
  %880 = phi i16 [ %259, %280 ], [ %259, %257 ], [ %259, %294 ], [ %870, %861 ]
  %881 = add nuw nsw i32 %262, 1
  %882 = load ptr, ptr %258, align 8, !tbaa !42
  %883 = icmp eq ptr %882, null
  br i1 %883, label %884, label %257, !llvm.loop !220

884:                                              ; preds = %874, %168
  %885 = load ptr, ptr %73, align 8, !tbaa !43
  %886 = icmp eq ptr %885, null
  br i1 %886, label %889, label %887

887:                                              ; preds = %884
  %888 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %888(ptr noundef nonnull %885) #14
  br label %889

889:                                              ; preds = %887, %884
  %890 = load ptr, ptr %76, align 8, !tbaa !44
  %891 = icmp eq ptr %890, null
  br i1 %891, label %894, label %892

892:                                              ; preds = %889
  %893 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %893(ptr noundef nonnull %890) #14
  br label %894

894:                                              ; preds = %889, %892
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %73, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 6144, ptr nonnull %6) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @zbuffill_sss(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = load i32, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !41
  %11 = add nsw i32 %10, 1
  %12 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 4
  store i32 %11, ptr %12, align 8, !tbaa !63
  %13 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 2
  store i32 %11, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 5
  store i32 -1, ptr %14, align 4, !tbaa !65
  %15 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 3
  store i32 -1, ptr %15, align 4, !tbaa !66
  %16 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 9
  %17 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 8
  %18 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false)
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4)
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5)
  %19 = icmp eq ptr %6, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %5, ptr noundef nonnull %6)
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %3)
  br label %22

21:                                               ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %3)
  br label %22

22:                                               ; preds = %21, %20
  %23 = load ptr, ptr %17, align 8, !tbaa !67
  %24 = icmp eq ptr %23, null
  br i1 %24, label %139, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %16, align 8, !tbaa !68
  %27 = icmp eq ptr %26, null
  br i1 %27, label %139, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %13, align 8, !tbaa !64
  %30 = load i32, ptr %12, align 8, !tbaa !63
  %31 = tail call i32 @llvm.smax.i32(i32 %29, i32 %30)
  %32 = load i32, ptr %15, align 4, !tbaa !66
  %33 = load i32, ptr %14, align 4, !tbaa !65
  %34 = tail call i32 @llvm.smin.i32(i32 %32, i32 %33)
  %35 = icmp slt i32 %34, %31
  br i1 %35, label %139, label %36

36:                                               ; preds = %28
  %37 = load float, ptr %3, align 4, !tbaa !50
  %38 = load float, ptr %4, align 4, !tbaa !50
  %39 = fsub float %37, %38
  %40 = load float, ptr %5, align 4, !tbaa !50
  %41 = fsub float %38, %40
  %42 = getelementptr inbounds float, ptr %3, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !50
  %44 = getelementptr inbounds float, ptr %4, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !50
  %46 = fsub float %43, %45
  %47 = getelementptr inbounds float, ptr %5, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !50
  %49 = fsub float %45, %48
  %50 = fneg float %46
  %51 = fmul float %41, %50
  %52 = tail call float @llvm.fmuladd.f32(float %39, float %49, float %51)
  %53 = fcmp oeq float %52, 0.000000e+00
  br i1 %53, label %139, label %54

54:                                               ; preds = %36
  %55 = getelementptr inbounds float, ptr %3, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !50
  %57 = getelementptr inbounds float, ptr %4, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !50
  %59 = fsub float %56, %58
  %60 = getelementptr inbounds float, ptr %5, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !50
  %62 = fsub float %58, %61
  %63 = fneg float %39
  %64 = fmul float %62, %63
  %65 = tail call float @llvm.fmuladd.f32(float %59, float %41, float %64)
  %66 = fneg float %59
  %67 = fmul float %49, %66
  %68 = tail call float @llvm.fmuladd.f32(float %46, float %62, float %67)
  %69 = fpext float %68 to double
  %70 = fneg double %69
  %71 = fpext float %52 to double
  %72 = fdiv double %70, %71
  %73 = fpext float %65 to double
  %74 = fneg double %73
  %75 = fdiv double %74, %71
  %76 = icmp slt i32 %34, %31
  br i1 %76, label %139, label %77

77:                                               ; preds = %54
  %78 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  %79 = load ptr, ptr %78, align 8, !tbaa !43
  %80 = add nsw i32 %34, %31
  %81 = sdiv i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, ptr %79, i64 %82
  %84 = load float, ptr %83, align 4, !tbaa !50
  %85 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  %86 = load ptr, ptr %85, align 8, !tbaa !44
  %87 = getelementptr inbounds float, ptr %86, i64 %82
  %88 = load float, ptr %87, align 4, !tbaa !50
  %89 = fcmp olt float %84, %88
  %90 = sext i32 %34 to i64
  %91 = getelementptr inbounds float, ptr %86, i64 %90
  %92 = getelementptr inbounds float, ptr %79, i64 %90
  %93 = select i1 %89, ptr %91, ptr %92
  %94 = select i1 %89, ptr %92, ptr %91
  %95 = sitofp i32 %34 to double
  %96 = fmul float %43, %65
  %97 = tail call float @llvm.fmuladd.f32(float %68, float %37, float %96)
  %98 = fdiv float %97, %52
  %99 = fadd float %56, %98
  %100 = fpext float %99 to double
  %101 = tail call double @llvm.fmuladd.f64(double %95, double %75, double %100)
  %102 = add nsw i32 %8, -1
  %103 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 33
  %104 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 32
  br label %105

105:                                              ; preds = %77, %133
  %106 = phi double [ %101, %77 ], [ %134, %133 ]
  %107 = phi i32 [ %34, %77 ], [ %135, %133 ]
  %108 = phi ptr [ %93, %77 ], [ %137, %133 ]
  %109 = phi ptr [ %94, %77 ], [ %136, %133 ]
  %110 = load float, ptr %109, align 4, !tbaa !50
  %111 = tail call float @llvm.floor.f32(float %110)
  %112 = fptosi float %111 to i32
  %113 = load float, ptr %108, align 4, !tbaa !50
  %114 = tail call float @llvm.floor.f32(float %113)
  %115 = fptosi float %114 to i32
  %116 = icmp sgt i32 %8, %115
  %117 = select i1 %116, i32 %115, i32 %102
  %118 = tail call i32 @llvm.smax.i32(i32 %112, i32 -1)
  %119 = icmp slt i32 %118, %117
  br i1 %119, label %120, label %133

120:                                              ; preds = %105
  %121 = add nsw i32 %118, 1
  %122 = sitofp i32 %121 to double
  %123 = tail call double @llvm.fmuladd.f64(double %122, double %72, double %106)
  br label %124

124:                                              ; preds = %120, %124
  %125 = phi i32 [ %130, %124 ], [ %121, %120 ]
  %126 = phi double [ %131, %124 ], [ %123, %120 ]
  %127 = load ptr, ptr %103, align 8, !tbaa !215
  %128 = load ptr, ptr %104, align 8, !tbaa !214
  %129 = fptosi double %126 to i32
  tail call void %127(ptr noundef %128, i32 noundef %1, i32 noundef %2, i32 noundef %125, i32 noundef %107, i32 noundef %129) #14
  %130 = add i32 %125, 1
  %131 = fadd double %72, %126
  %132 = icmp eq i32 %125, %117
  br i1 %132, label %133, label %124, !llvm.loop !221

133:                                              ; preds = %124, %105
  %134 = fsub double %106, %75
  %135 = add nsw i32 %107, -1
  %136 = getelementptr inbounds float, ptr %109, i64 -1
  %137 = getelementptr inbounds float, ptr %108, i64 -1
  %138 = icmp sgt i32 %107, %31
  br i1 %138, label %105, label %139, !llvm.loop !222

139:                                              ; preds = %133, %54, %36, %28, %22, %25
  ret void
}

declare zeroext i8 @material_in_material(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @antialias_tagbuf(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #7 {
  %4 = icmp sgt i32 %1, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = sext i32 %0 to i64
  %7 = icmp sgt i32 %0, 2
  %8 = sext i32 %0 to i64
  %9 = zext nneg i32 %1 to i64
  br label %16

10:                                               ; preds = %53, %3
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %10
  %13 = icmp sgt i32 %0, 1
  %14 = sext i32 %0 to i64
  %15 = zext nneg i32 %0 to i64
  br label %56

16:                                               ; preds = %5, %53
  %17 = phi i64 [ 2, %5 ], [ %54, %53 ]
  br i1 %7, label %18, label %53

18:                                               ; preds = %16
  %19 = add nsw i64 %17, -2
  %20 = mul nsw i64 %19, %8
  %21 = getelementptr inbounds i8, ptr %2, i64 %20
  %22 = getelementptr inbounds i8, ptr %21, i64 %6
  %23 = getelementptr inbounds i8, ptr %22, i64 %6
  br label %24

24:                                               ; preds = %18, %48
  %25 = phi ptr [ %50, %48 ], [ %21, %18 ]
  %26 = phi ptr [ %29, %48 ], [ %22, %18 ]
  %27 = phi ptr [ %51, %48 ], [ %23, %18 ]
  %28 = phi i32 [ %49, %48 ], [ 2, %18 ]
  %29 = getelementptr inbounds i8, ptr %26, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !223
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %24
  %33 = load i8, ptr %26, align 1, !tbaa !223
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, ptr %26, i64 2
  %37 = load i8, ptr %36, align 1, !tbaa !223
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %25, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !223
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %27, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !223
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %39, %35, %32
  store i8 -128, ptr %29, align 1, !tbaa !223
  br label %48

48:                                               ; preds = %24, %47, %43
  %49 = add nuw nsw i32 %28, 1
  %50 = getelementptr inbounds i8, ptr %25, i64 1
  %51 = getelementptr inbounds i8, ptr %27, i64 1
  %52 = icmp eq i32 %49, %0
  br i1 %52, label %53, label %24, !llvm.loop !224

53:                                               ; preds = %48, %16
  %54 = add nuw nsw i64 %17, 1
  %55 = icmp eq i64 %54, %9
  br i1 %55, label %10, label %16, !llvm.loop !225

56:                                               ; preds = %12, %136
  %57 = phi ptr [ %2, %12 ], [ %137, %136 ]
  %58 = phi i32 [ 0, %12 ], [ %138, %136 ]
  %59 = getelementptr inbounds i8, ptr %57, i64 1
  br i1 %13, label %73, label %136

60:                                               ; preds = %136, %10
  %61 = icmp sgt i32 %0, 0
  br i1 %61, label %62, label %140

62:                                               ; preds = %60
  %63 = zext nneg i32 %0 to i64
  %64 = getelementptr i8, ptr %2, i64 %63
  %65 = icmp sgt i32 %1, 1
  %66 = sub nsw i32 0, %0
  %67 = sext i32 %66 to i64
  %68 = zext nneg i32 %0 to i64
  %69 = zext nneg i32 %0 to i64
  %70 = sext i32 %1 to i64
  %71 = zext nneg i32 %0 to i64
  %72 = zext nneg i32 %1 to i64
  br label %147

73:                                               ; preds = %56, %132
  %74 = phi i64 [ %133, %132 ], [ 1, %56 ]
  %75 = phi i32 [ %78, %132 ], [ %0, %56 ]
  %76 = phi ptr [ %134, %132 ], [ %59, %56 ]
  %77 = phi ptr [ %76, %132 ], [ %57, %56 ]
  %78 = add i32 %75, -1
  %79 = load i8, ptr %76, align 1, !tbaa !223
  %80 = icmp eq i8 %79, -128
  br i1 %80, label %81, label %132

81:                                               ; preds = %73
  %82 = getelementptr inbounds i8, ptr %77, i64 2
  %83 = load i8, ptr %82, align 1, !tbaa !223
  %84 = icmp eq i8 %83, -128
  br i1 %84, label %85, label %132

85:                                               ; preds = %81
  %86 = load i8, ptr %77, align 1, !tbaa !223
  %87 = add nuw nsw i64 %74, 1
  %88 = icmp slt i64 %87, %14
  %89 = trunc i64 %87 to i32
  br i1 %88, label %90, label %105

90:                                               ; preds = %85
  %91 = zext i32 %78 to i64
  br label %92

92:                                               ; preds = %90, %98
  %93 = phi i64 [ 1, %90 ], [ %99, %98 ]
  %94 = phi i64 [ %87, %90 ], [ %100, %98 ]
  %95 = getelementptr inbounds i8, ptr %76, i64 %93
  %96 = load i8, ptr %95, align 1, !tbaa !223
  %97 = icmp eq i8 %96, -128
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = add nuw nsw i64 %93, 1
  %100 = add nuw nsw i64 %99, %74
  %101 = icmp eq i64 %99, %91
  br i1 %101, label %105, label %92, !llvm.loop !226

102:                                              ; preds = %92
  %103 = trunc i64 %94 to i32
  %104 = trunc i64 %93 to i32
  br label %105

105:                                              ; preds = %102, %98, %85
  %106 = phi i32 [ 1, %85 ], [ %104, %102 ], [ %78, %98 ]
  %107 = phi i32 [ %89, %85 ], [ %103, %102 ], [ %0, %98 ]
  %108 = icmp eq i32 %107, %0
  br i1 %108, label %132, label %109

109:                                              ; preds = %105
  %110 = zext nneg i32 %106 to i64
  %111 = getelementptr inbounds i8, ptr %76, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !223
  %113 = add nuw nsw i32 %106, 1
  %114 = zext i8 %86 to i32
  %115 = zext i8 %112 to i32
  %116 = tail call i32 @llvm.umax.i32(i32 %106, i32 1)
  %117 = zext i32 %116 to i64
  br label %118

118:                                              ; preds = %109, %118
  %119 = phi i64 [ 0, %109 ], [ %120, %118 ]
  %120 = add nuw nsw i64 %119, 1
  %121 = trunc i64 %120 to i32
  %122 = shl i32 %121, 8
  %123 = sdiv i32 %122, %113
  %124 = sub nsw i32 255, %123
  %125 = mul nsw i32 %124, %114
  %126 = mul nsw i32 %123, %115
  %127 = add nsw i32 %125, %126
  %128 = lshr i32 %127, 8
  %129 = trunc i32 %128 to i8
  %130 = getelementptr inbounds i8, ptr %76, i64 %119
  store i8 %129, ptr %130, align 1, !tbaa !223
  %131 = icmp eq i64 %120, %117
  br i1 %131, label %132, label %118, !llvm.loop !227

132:                                              ; preds = %118, %73, %81, %105
  %133 = add nuw nsw i64 %74, 1
  %134 = getelementptr inbounds i8, ptr %76, i64 1
  %135 = icmp eq i64 %133, %15
  br i1 %135, label %136, label %73, !llvm.loop !228

136:                                              ; preds = %132, %56
  %137 = phi ptr [ %59, %56 ], [ %134, %132 ]
  %138 = add nuw nsw i32 %58, 1
  %139 = icmp eq i32 %138, %1
  br i1 %139, label %60, label %56, !llvm.loop !229

140:                                              ; preds = %217, %60
  %141 = icmp sgt i32 %1, 2
  br i1 %141, label %142, label %260

142:                                              ; preds = %140
  %143 = sext i32 %0 to i64
  %144 = icmp sgt i32 %0, 2
  %145 = sext i32 %0 to i64
  %146 = zext nneg i32 %1 to i64
  br label %220

147:                                              ; preds = %62, %217
  %148 = phi i64 [ 0, %62 ], [ %218, %217 ]
  br i1 %65, label %149, label %217

149:                                              ; preds = %147
  %150 = getelementptr i8, ptr %64, i64 %148
  br label %151

151:                                              ; preds = %149, %213
  %152 = phi i64 [ 1, %149 ], [ %214, %213 ]
  %153 = phi i32 [ %1, %149 ], [ %155, %213 ]
  %154 = phi ptr [ %150, %149 ], [ %215, %213 ]
  %155 = add i32 %153, -1
  %156 = load i8, ptr %154, align 1, !tbaa !223
  %157 = icmp eq i8 %156, -128
  br i1 %157, label %158, label %213

158:                                              ; preds = %151
  %159 = getelementptr inbounds i8, ptr %154, i64 %63
  %160 = load i8, ptr %159, align 1, !tbaa !223
  %161 = icmp eq i8 %160, -128
  br i1 %161, label %162, label %213

162:                                              ; preds = %158
  %163 = getelementptr inbounds i8, ptr %154, i64 %67
  %164 = load i8, ptr %163, align 1, !tbaa !223
  %165 = add nuw nsw i64 %152, 1
  %166 = icmp slt i64 %165, %70
  %167 = trunc i64 %165 to i32
  br i1 %166, label %168, label %184

168:                                              ; preds = %162
  %169 = zext i32 %155 to i64
  br label %170

170:                                              ; preds = %168, %177
  %171 = phi i64 [ 1, %168 ], [ %178, %177 ]
  %172 = phi i64 [ %165, %168 ], [ %179, %177 ]
  %173 = mul nsw i64 %171, %68
  %174 = getelementptr inbounds i8, ptr %154, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !223
  %176 = icmp eq i8 %175, -128
  br i1 %176, label %177, label %181

177:                                              ; preds = %170
  %178 = add nuw nsw i64 %171, 1
  %179 = add nuw nsw i64 %178, %152
  %180 = icmp eq i64 %178, %169
  br i1 %180, label %184, label %170, !llvm.loop !230

181:                                              ; preds = %170
  %182 = trunc i64 %172 to i32
  %183 = trunc i64 %171 to i32
  br label %184

184:                                              ; preds = %181, %177, %162
  %185 = phi i32 [ 1, %162 ], [ %183, %181 ], [ %155, %177 ]
  %186 = phi i32 [ %167, %162 ], [ %182, %181 ], [ %1, %177 ]
  %187 = icmp eq i32 %186, %1
  br i1 %187, label %213, label %188

188:                                              ; preds = %184
  %189 = mul nsw i32 %185, %0
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, ptr %154, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !223
  %193 = add nuw nsw i32 %185, 1
  %194 = zext i8 %164 to i32
  %195 = zext i8 %192 to i32
  %196 = tail call i32 @llvm.umax.i32(i32 %185, i32 1)
  %197 = zext i32 %196 to i64
  br label %198

198:                                              ; preds = %188, %198
  %199 = phi i64 [ 0, %188 ], [ %200, %198 ]
  %200 = add nuw nsw i64 %199, 1
  %201 = trunc i64 %200 to i32
  %202 = shl i32 %201, 8
  %203 = sdiv i32 %202, %193
  %204 = sub nsw i32 255, %203
  %205 = mul nsw i32 %204, %194
  %206 = mul nsw i32 %203, %195
  %207 = add nsw i32 %205, %206
  %208 = lshr i32 %207, 8
  %209 = trunc i32 %208 to i8
  %210 = mul nsw i64 %199, %69
  %211 = getelementptr inbounds i8, ptr %154, i64 %210
  store i8 %209, ptr %211, align 1, !tbaa !223
  %212 = icmp eq i64 %200, %197
  br i1 %212, label %213, label %198, !llvm.loop !231

213:                                              ; preds = %198, %151, %158, %184
  %214 = add nuw nsw i64 %152, 1
  %215 = getelementptr inbounds i8, ptr %154, i64 %63
  %216 = icmp eq i64 %214, %72
  br i1 %216, label %217, label %151, !llvm.loop !232

217:                                              ; preds = %213, %147
  %218 = add nuw nsw i64 %148, 1
  %219 = icmp eq i64 %218, %71
  br i1 %219, label %140, label %147, !llvm.loop !233

220:                                              ; preds = %142, %257
  %221 = phi i64 [ 2, %142 ], [ %258, %257 ]
  br i1 %144, label %222, label %257

222:                                              ; preds = %220
  %223 = add nsw i64 %221, -2
  %224 = mul nsw i64 %223, %145
  %225 = getelementptr inbounds i8, ptr %2, i64 %224
  %226 = getelementptr inbounds i8, ptr %225, i64 %143
  %227 = getelementptr inbounds i8, ptr %226, i64 %143
  br label %228

228:                                              ; preds = %222, %252
  %229 = phi ptr [ %254, %252 ], [ %225, %222 ]
  %230 = phi ptr [ %233, %252 ], [ %226, %222 ]
  %231 = phi ptr [ %255, %252 ], [ %227, %222 ]
  %232 = phi i32 [ %253, %252 ], [ 2, %222 ]
  %233 = getelementptr inbounds i8, ptr %230, i64 1
  %234 = load i8, ptr %233, align 1, !tbaa !223
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %236, label %252

236:                                              ; preds = %228
  %237 = load i8, ptr %230, align 1, !tbaa !223
  %238 = icmp ugt i8 %237, 1
  br i1 %238, label %251, label %239

239:                                              ; preds = %236
  %240 = getelementptr inbounds i8, ptr %230, i64 2
  %241 = load i8, ptr %240, align 1, !tbaa !223
  %242 = icmp ugt i8 %241, 1
  br i1 %242, label %251, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds i8, ptr %229, i64 1
  %245 = load i8, ptr %244, align 1, !tbaa !223
  %246 = icmp ugt i8 %245, 1
  br i1 %246, label %251, label %247

247:                                              ; preds = %243
  %248 = getelementptr inbounds i8, ptr %231, i64 1
  %249 = load i8, ptr %248, align 1, !tbaa !223
  %250 = icmp ugt i8 %249, 1
  br i1 %250, label %251, label %252

251:                                              ; preds = %247, %243, %239, %236
  store i8 1, ptr %233, align 1, !tbaa !223
  br label %252

252:                                              ; preds = %228, %251, %247
  %253 = add nuw nsw i32 %232, 1
  %254 = getelementptr inbounds i8, ptr %229, i64 1
  %255 = getelementptr inbounds i8, ptr %231, i64 1
  %256 = icmp eq i32 %253, %0
  br i1 %256, label %257, label %228, !llvm.loop !234

257:                                              ; preds = %252, %220
  %258 = add nuw nsw i64 %221, 1
  %259 = icmp eq i64 %258, %146
  br i1 %259, label %260, label %220, !llvm.loop !235

260:                                              ; preds = %257, %140
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RE_zbuf_accumulate_vecblur(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.ZSpan, align 8
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #14
  %13 = getelementptr inbounds %struct.NodeBlurData, ptr %0, i64 0, i32 3
  %14 = load i16, ptr %13, align 2, !tbaa !236
  %15 = sitofp i16 %14 to float
  %16 = fmul float %15, %15
  %17 = getelementptr inbounds %struct.NodeBlurData, ptr %0, i64 0, i32 2
  %18 = load i16, ptr %17, align 4, !tbaa !238
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %8, i8 0, i64 224, i1 false)
  store i32 %1, ptr %8, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 1
  store i32 %2, ptr %19, align 4, !tbaa !41
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %21 = sext i32 %2 to i64
  %22 = shl nsw i64 %21, 2
  %23 = tail call ptr %20(i64 noundef %22, ptr noundef nonnull @.str) #14
  %24 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 10
  store ptr %23, ptr %24, align 8, !tbaa !43
  %25 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %26 = tail call ptr %25(i64 noundef %22, ptr noundef nonnull @.str) #14
  %27 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 11
  store ptr %26, ptr %27, align 8, !tbaa !44
  %28 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 31
  store float 1.000000e+00, ptr %28, align 4, !tbaa !45
  %29 = sitofp i32 %1 to float
  %30 = fmul float %29, 5.000000e-01
  %31 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 12
  store float %30, ptr %31, align 8, !tbaa !57
  %32 = sitofp i32 %2 to float
  %33 = fmul float %32, 5.000000e-01
  %34 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 13
  store float %33, ptr %34, align 4, !tbaa !59
  %35 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 14
  store float 0.000000e+00, ptr %35, align 8, !tbaa !58
  %36 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 15
  store float 0.000000e+00, ptr %36, align 4, !tbaa !60
  %37 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !42
  %38 = sext i32 %1 to i64
  %39 = shl nsw i64 %38, 2
  %40 = mul i64 %39, %21
  %41 = tail call ptr %37(i64 noundef %40, ptr noundef nonnull @.str.5) #14
  %42 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 16
  store ptr %41, ptr %42, align 8, !tbaa !123
  %43 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !42
  %44 = mul nsw i32 %2, %1
  %45 = sext i32 %44 to i64
  %46 = tail call ptr %43(i64 noundef %45, ptr noundef nonnull @.str.6) #14
  %47 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !42
  %48 = shl nsw i64 %38, 4
  %49 = mul i64 %48, %21
  %50 = tail call ptr %47(i64 noundef %49, ptr noundef nonnull @.str.7) #14
  %51 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 19
  store ptr %50, ptr %51, align 8, !tbaa !119
  %52 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !42
  %53 = tail call ptr %52(i64 noundef %40, ptr noundef nonnull @.str.8) #14
  %54 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !42
  %55 = tail call ptr %54(i64 noundef %40, ptr noundef nonnull @.str.9) #14
  %56 = shl nsw i32 %1, 2
  %57 = mul nsw i32 %56, %2
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %7, %66
  %60 = phi ptr [ %69, %66 ], [ %5, %7 ]
  %61 = phi i32 [ %67, %66 ], [ 0, %7 ]
  %62 = phi i32 [ %68, %66 ], [ %57, %7 ]
  %63 = load float, ptr %60, align 4, !tbaa !50
  %64 = fcmp oeq float %63, 1.000000e+04
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store float 0.000000e+00, ptr %60, align 4, !tbaa !50
  br label %66

66:                                               ; preds = %59, %65
  %67 = phi i32 [ 1, %65 ], [ %61, %59 ]
  %68 = add nsw i32 %62, -1
  %69 = getelementptr inbounds float, ptr %60, i64 1
  %70 = icmp sgt i32 %62, 1
  br i1 %70, label %59, label %71, !llvm.loop !239

71:                                               ; preds = %66, %7
  %72 = phi i32 [ 0, %7 ], [ %67, %66 ]
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %76

76:                                               ; preds = %74, %71
  %77 = getelementptr inbounds %struct.NodeBlurData, ptr %0, i64 0, i32 4
  %78 = load i16, ptr %77, align 4, !tbaa !240
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %122, label %80

80:                                               ; preds = %76
  %81 = sitofp i16 %78 to float
  %82 = fmul float %81, %81
  %83 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !42
  %84 = tail call ptr %83(i64 noundef %49, ptr noundef nonnull @.str.11) #14
  %85 = shl nsw i32 %1, 1
  %86 = mul nsw i32 %85, %2
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %122

88:                                               ; preds = %80, %115
  %89 = phi ptr [ %119, %115 ], [ %5, %80 ]
  %90 = phi ptr [ %120, %115 ], [ %84, %80 ]
  %91 = phi i32 [ %118, %115 ], [ %86, %80 ]
  %92 = load float, ptr %89, align 4, !tbaa !50
  %93 = fcmp oeq float %92, 0.000000e+00
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = getelementptr inbounds float, ptr %89, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !50
  %97 = fcmp oeq float %96, 0.000000e+00
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  store float %92, ptr %90, align 4, !tbaa !50
  %99 = load float, ptr %95, align 4, !tbaa !50
  br label %115

100:                                              ; preds = %94, %88
  %101 = getelementptr inbounds float, ptr %89, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !50
  %103 = fmul float %102, %102
  %104 = tail call float @llvm.fmuladd.f32(float %92, float %92, float %103)
  %105 = fcmp ugt float %104, %82
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  store float 0.000000e+00, ptr %90, align 4, !tbaa !50
  br label %115

107:                                              ; preds = %100
  %108 = tail call float @sqrtf(float noundef %104) #14
  %109 = fdiv float %81, %108
  %110 = fsub float 1.000000e+00, %109
  %111 = load float, ptr %89, align 4, !tbaa !50
  %112 = fmul float %111, %110
  store float %112, ptr %90, align 4, !tbaa !50
  %113 = load float, ptr %101, align 4, !tbaa !50
  %114 = fmul float %110, %113
  br label %115

115:                                              ; preds = %106, %107, %98
  %116 = phi float [ 0.000000e+00, %106 ], [ %114, %107 ], [ %99, %98 ]
  %117 = getelementptr inbounds float, ptr %90, i64 1
  store float %116, ptr %117, align 4, !tbaa !50
  %118 = add nsw i32 %91, -1
  %119 = getelementptr inbounds float, ptr %89, i64 2
  %120 = getelementptr inbounds float, ptr %90, i64 2
  %121 = icmp sgt i32 %91, 1
  br i1 %121, label %88, label %122, !llvm.loop !241

122:                                              ; preds = %115, %80, %76
  %123 = phi ptr [ null, %76 ], [ %5, %80 ], [ %5, %115 ]
  %124 = phi ptr [ %5, %76 ], [ %84, %80 ], [ %84, %115 ]
  %125 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !42
  %126 = add nsw i32 %1, 1
  %127 = sext i32 %126 to i64
  %128 = shl nsw i64 %127, 4
  %129 = add nsw i32 %2, 1
  %130 = sext i32 %129 to i64
  %131 = mul i64 %128, %130
  %132 = tail call ptr %125(i64 noundef %131, ptr noundef nonnull @.str.12) #14
  %133 = icmp slt i32 %2, 0
  br i1 %133, label %318, label %134

134:                                              ; preds = %122
  %135 = icmp slt i32 %1, 0
  %136 = icmp eq i16 %14, 0
  br label %137

137:                                              ; preds = %134, %314
  %138 = phi ptr [ %132, %134 ], [ %315, %314 ]
  %139 = phi i32 [ 0, %134 ], [ %316, %314 ]
  br i1 %135, label %314, label %140

140:                                              ; preds = %137
  %141 = icmp eq i32 %139, %2
  %142 = shl i32 %139, 2
  %143 = add i32 %142, -4
  %144 = select i1 %141, i32 %143, i32 %142
  %145 = mul nsw i32 %144, %1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, ptr %124, i64 %146
  %148 = icmp eq i32 %139, 0
  %149 = mul nsw i32 %143, %1
  %150 = select i1 %148, i32 0, i32 %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, ptr %124, i64 %151
  br label %153

153:                                              ; preds = %140, %311
  %154 = phi ptr [ %309, %311 ], [ %138, %140 ]
  %155 = phi ptr [ %307, %311 ], [ %152, %140 ]
  %156 = phi ptr [ %308, %311 ], [ %147, %140 ]
  %157 = phi i32 [ %312, %311 ], [ 0, %140 ]
  %158 = icmp eq i32 %157, 0
  %159 = icmp eq i32 %157, %1
  br label %160

160:                                              ; preds = %153, %305
  %161 = phi ptr [ %154, %153 ], [ %309, %305 ]
  %162 = phi ptr [ %155, %153 ], [ %307, %305 ]
  %163 = phi ptr [ %156, %153 ], [ %308, %305 ]
  %164 = phi i32 [ 0, %153 ], [ %306, %305 ]
  br i1 %158, label %215, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds float, ptr %162, i64 -4
  %167 = load float, ptr %166, align 4, !tbaa !50
  %168 = fcmp une float %167, 0.000000e+00
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds float, ptr %162, i64 -3
  %171 = load float, ptr %170, align 4, !tbaa !50
  %172 = fcmp une float %171, 0.000000e+00
  br i1 %172, label %173, label %177

173:                                              ; preds = %169, %165
  store float %167, ptr %161, align 4, !tbaa !50
  %174 = getelementptr inbounds float, ptr %162, i64 -3
  %175 = load float, ptr %174, align 4, !tbaa !50
  %176 = getelementptr inbounds float, ptr %161, i64 1
  store float %175, ptr %176, align 4, !tbaa !50
  br label %177

177:                                              ; preds = %173, %169
  %178 = phi i1 [ false, %173 ], [ true, %169 ]
  %179 = phi i32 [ 1, %173 ], [ 0, %169 ]
  %180 = getelementptr inbounds float, ptr %163, i64 -4
  %181 = load float, ptr %180, align 4, !tbaa !50
  %182 = fcmp une float %181, 0.000000e+00
  br i1 %182, label %187, label %183

183:                                              ; preds = %177
  %184 = getelementptr inbounds float, ptr %163, i64 -3
  %185 = load float, ptr %184, align 4, !tbaa !50
  %186 = fcmp une float %185, 0.000000e+00
  br i1 %186, label %187, label %215

187:                                              ; preds = %183, %177
  br i1 %178, label %188, label %192

188:                                              ; preds = %187
  store float %181, ptr %161, align 4, !tbaa !50
  %189 = getelementptr inbounds float, ptr %163, i64 -3
  %190 = load float, ptr %189, align 4, !tbaa !50
  %191 = getelementptr inbounds float, ptr %161, i64 1
  store float %190, ptr %191, align 4, !tbaa !50
  br label %215

192:                                              ; preds = %187
  %193 = fcmp olt float %181, 0.000000e+00
  %194 = fneg float %181
  %195 = select i1 %193, float %194, float %181
  %196 = getelementptr inbounds float, ptr %163, i64 -3
  %197 = load float, ptr %196, align 4, !tbaa !50
  %198 = fcmp olt float %197, 0.000000e+00
  %199 = fneg float %197
  %200 = select i1 %198, float %199, float %197
  %201 = fadd float %195, %200
  %202 = load float, ptr %161, align 4, !tbaa !50
  %203 = fcmp olt float %202, 0.000000e+00
  %204 = fneg float %202
  %205 = select i1 %203, float %204, float %202
  %206 = getelementptr inbounds float, ptr %161, i64 1
  %207 = load float, ptr %206, align 4, !tbaa !50
  %208 = fcmp olt float %207, 0.000000e+00
  %209 = fneg float %207
  %210 = select i1 %208, float %209, float %207
  %211 = fadd float %205, %210
  %212 = fcmp olt float %201, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %192
  store float %181, ptr %161, align 4, !tbaa !50
  %214 = load float, ptr %196, align 4, !tbaa !50
  store float %214, ptr %206, align 4, !tbaa !50
  br label %215

215:                                              ; preds = %183, %192, %213, %188, %160
  %216 = phi i32 [ 1, %188 ], [ 1, %213 ], [ 1, %192 ], [ %179, %183 ], [ 0, %160 ]
  br i1 %159, label %290, label %217

217:                                              ; preds = %215
  %218 = load float, ptr %162, align 4, !tbaa !50
  %219 = fcmp une float %218, 0.000000e+00
  br i1 %219, label %224, label %220

220:                                              ; preds = %217
  %221 = getelementptr inbounds float, ptr %162, i64 1
  %222 = load float, ptr %221, align 4, !tbaa !50
  %223 = fcmp une float %222, 0.000000e+00
  br i1 %223, label %224, label %253

224:                                              ; preds = %220, %217
  %225 = icmp eq i32 %216, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %224
  store float %218, ptr %161, align 4, !tbaa !50
  %227 = getelementptr inbounds float, ptr %162, i64 1
  %228 = load float, ptr %227, align 4, !tbaa !50
  %229 = getelementptr inbounds float, ptr %161, i64 1
  store float %228, ptr %229, align 4, !tbaa !50
  br label %253

230:                                              ; preds = %224
  %231 = fcmp olt float %218, 0.000000e+00
  %232 = fneg float %218
  %233 = select i1 %231, float %232, float %218
  %234 = getelementptr inbounds float, ptr %162, i64 1
  %235 = load float, ptr %234, align 4, !tbaa !50
  %236 = fcmp olt float %235, 0.000000e+00
  %237 = fneg float %235
  %238 = select i1 %236, float %237, float %235
  %239 = fadd float %233, %238
  %240 = load float, ptr %161, align 4, !tbaa !50
  %241 = fcmp olt float %240, 0.000000e+00
  %242 = fneg float %240
  %243 = select i1 %241, float %242, float %240
  %244 = getelementptr inbounds float, ptr %161, i64 1
  %245 = load float, ptr %244, align 4, !tbaa !50
  %246 = fcmp olt float %245, 0.000000e+00
  %247 = fneg float %245
  %248 = select i1 %246, float %247, float %245
  %249 = fadd float %243, %248
  %250 = fcmp olt float %239, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %230
  store float %218, ptr %161, align 4, !tbaa !50
  %252 = load float, ptr %234, align 4, !tbaa !50
  store float %252, ptr %244, align 4, !tbaa !50
  br label %253

253:                                              ; preds = %226, %251, %230, %220
  %254 = phi i32 [ 1, %226 ], [ 1, %251 ], [ 1, %230 ], [ %216, %220 ]
  %255 = load float, ptr %163, align 4, !tbaa !50
  %256 = fcmp une float %255, 0.000000e+00
  br i1 %256, label %261, label %257

257:                                              ; preds = %253
  %258 = getelementptr inbounds float, ptr %163, i64 1
  %259 = load float, ptr %258, align 4, !tbaa !50
  %260 = fcmp une float %259, 0.000000e+00
  br i1 %260, label %261, label %290

261:                                              ; preds = %257, %253
  %262 = icmp eq i32 %254, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %261
  store float %255, ptr %161, align 4, !tbaa !50
  %264 = getelementptr inbounds float, ptr %163, i64 1
  %265 = load float, ptr %264, align 4, !tbaa !50
  %266 = getelementptr inbounds float, ptr %161, i64 1
  store float %265, ptr %266, align 4, !tbaa !50
  br label %290

267:                                              ; preds = %261
  %268 = fcmp olt float %255, 0.000000e+00
  %269 = fneg float %255
  %270 = select i1 %268, float %269, float %255
  %271 = getelementptr inbounds float, ptr %163, i64 1
  %272 = load float, ptr %271, align 4, !tbaa !50
  %273 = fcmp olt float %272, 0.000000e+00
  %274 = fneg float %272
  %275 = select i1 %273, float %274, float %272
  %276 = fadd float %270, %275
  %277 = load float, ptr %161, align 4, !tbaa !50
  %278 = fcmp olt float %277, 0.000000e+00
  %279 = fneg float %277
  %280 = select i1 %278, float %279, float %277
  %281 = getelementptr inbounds float, ptr %161, i64 1
  %282 = load float, ptr %281, align 4, !tbaa !50
  %283 = fcmp olt float %282, 0.000000e+00
  %284 = fneg float %282
  %285 = select i1 %283, float %284, float %282
  %286 = fadd float %280, %285
  %287 = fcmp olt float %276, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %267
  store float %255, ptr %161, align 4, !tbaa !50
  %289 = load float, ptr %271, align 4, !tbaa !50
  store float %289, ptr %281, align 4, !tbaa !50
  br label %290

290:                                              ; preds = %257, %267, %288, %263, %215
  br i1 %136, label %305, label %291

291:                                              ; preds = %290
  %292 = load float, ptr %161, align 4, !tbaa !50
  %293 = getelementptr inbounds float, ptr %161, i64 1
  %294 = load float, ptr %293, align 4, !tbaa !50
  %295 = fmul float %294, %294
  %296 = tail call float @llvm.fmuladd.f32(float %292, float %292, float %295)
  %297 = fcmp ogt float %296, %16
  br i1 %297, label %298, label %305

298:                                              ; preds = %291
  %299 = tail call float @sqrtf(float noundef %296) #14
  %300 = fdiv float %15, %299
  %301 = load float, ptr %161, align 4, !tbaa !50
  %302 = fmul float %301, %300
  store float %302, ptr %161, align 4, !tbaa !50
  %303 = load float, ptr %293, align 4, !tbaa !50
  %304 = fmul float %300, %303
  store float %304, ptr %293, align 4, !tbaa !50
  br label %305

305:                                              ; preds = %291, %298, %290
  %306 = add nuw nsw i32 %164, 1
  %307 = getelementptr inbounds float, ptr %162, i64 2
  %308 = getelementptr inbounds float, ptr %163, i64 2
  %309 = getelementptr inbounds float, ptr %161, i64 2
  %310 = icmp eq i32 %164, 0
  br i1 %310, label %160, label %311, !llvm.loop !242

311:                                              ; preds = %305
  %312 = add nuw i32 %157, 1
  %313 = icmp eq i32 %157, %1
  br i1 %313, label %314, label %153, !llvm.loop !243

314:                                              ; preds = %311, %137
  %315 = phi ptr [ %138, %137 ], [ %309, %311 ]
  %316 = add nuw i32 %139, 1
  %317 = icmp eq i32 %139, %2
  br i1 %317, label %318, label %137, !llvm.loop !244

318:                                              ; preds = %314, %122
  %319 = icmp slt i32 %1, 0
  br i1 %319, label %337, label %320

320:                                              ; preds = %318
  %321 = shl nsw i32 %2, 2
  %322 = mul nsw i32 %321, %126
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds float, ptr %132, i64 %323
  br label %325

325:                                              ; preds = %320, %325
  %326 = phi ptr [ %334, %325 ], [ %132, %320 ]
  %327 = phi ptr [ %335, %325 ], [ %324, %320 ]
  %328 = phi i32 [ %333, %325 ], [ 0, %320 ]
  %329 = getelementptr inbounds float, ptr %326, i64 1
  store float 0.000000e+00, ptr %329, align 4, !tbaa !50
  %330 = getelementptr inbounds float, ptr %327, i64 1
  store float 0.000000e+00, ptr %330, align 4, !tbaa !50
  %331 = getelementptr inbounds float, ptr %326, i64 3
  store float 0.000000e+00, ptr %331, align 4, !tbaa !50
  %332 = getelementptr inbounds float, ptr %327, i64 3
  store float 0.000000e+00, ptr %332, align 4, !tbaa !50
  %333 = add nuw i32 %328, 1
  %334 = getelementptr inbounds float, ptr %326, i64 4
  %335 = getelementptr inbounds float, ptr %327, i64 4
  %336 = icmp eq i32 %328, %1
  br i1 %336, label %337, label %325, !llvm.loop !245

337:                                              ; preds = %325, %318
  %338 = icmp slt i32 %2, 0
  br i1 %338, label %344, label %339

339:                                              ; preds = %337
  %340 = sext i32 %56 to i64
  %341 = getelementptr inbounds float, ptr %132, i64 %340
  %342 = shl nsw i32 %126, 2
  %343 = sext i32 %342 to i64
  br label %346

344:                                              ; preds = %346, %337
  %345 = icmp sgt i32 %44, 0
  br i1 %345, label %356, label %380

346:                                              ; preds = %339, %346
  %347 = phi ptr [ %132, %339 ], [ %353, %346 ]
  %348 = phi ptr [ %341, %339 ], [ %354, %346 ]
  %349 = phi i32 [ 0, %339 ], [ %352, %346 ]
  store float 0.000000e+00, ptr %347, align 4, !tbaa !50
  store float 0.000000e+00, ptr %348, align 4, !tbaa !50
  %350 = getelementptr inbounds float, ptr %347, i64 2
  store float 0.000000e+00, ptr %350, align 4, !tbaa !50
  %351 = getelementptr inbounds float, ptr %348, i64 2
  store float 0.000000e+00, ptr %351, align 4, !tbaa !50
  %352 = add nuw i32 %349, 1
  %353 = getelementptr inbounds float, ptr %347, i64 %343
  %354 = getelementptr inbounds float, ptr %348, i64 %343
  %355 = icmp eq i32 %349, %2
  br i1 %355, label %344, label %346, !llvm.loop !246

356:                                              ; preds = %344, %375
  %357 = phi ptr [ %378, %375 ], [ %124, %344 ]
  %358 = phi ptr [ %377, %375 ], [ %46, %344 ]
  %359 = phi i32 [ %376, %375 ], [ %44, %344 ]
  %360 = load float, ptr %357, align 4, !tbaa !50
  %361 = fcmp une float %360, 0.000000e+00
  br i1 %361, label %374, label %362

362:                                              ; preds = %356
  %363 = getelementptr inbounds float, ptr %357, i64 1
  %364 = load float, ptr %363, align 4, !tbaa !50
  %365 = fcmp une float %364, 0.000000e+00
  br i1 %365, label %374, label %366

366:                                              ; preds = %362
  %367 = getelementptr inbounds float, ptr %357, i64 2
  %368 = load float, ptr %367, align 4, !tbaa !50
  %369 = fcmp une float %368, 0.000000e+00
  br i1 %369, label %374, label %370

370:                                              ; preds = %366
  %371 = getelementptr inbounds float, ptr %357, i64 3
  %372 = load float, ptr %371, align 4, !tbaa !50
  %373 = fcmp une float %372, 0.000000e+00
  br i1 %373, label %374, label %375

374:                                              ; preds = %370, %366, %362, %356
  store i8 -1, ptr %358, align 1, !tbaa !223
  br label %375

375:                                              ; preds = %370, %374
  %376 = add nsw i32 %359, -1
  %377 = getelementptr inbounds i8, ptr %358, i64 1
  %378 = getelementptr inbounds float, ptr %357, i64 4
  %379 = icmp sgt i32 %359, 1
  br i1 %379, label %356, label %380, !llvm.loop !247

380:                                              ; preds = %375, %344
  tail call void @antialias_tagbuf(i32 noundef %1, i32 noundef %2, ptr noundef %46)
  %381 = load i1, ptr @RE_zbuf_accumulate_vecblur.firsttime, align 4
  br i1 %381, label %383, label %382

382:                                              ; preds = %380
  store i1 true, ptr @RE_zbuf_accumulate_vecblur.firsttime, align 4
  tail call void @BLI_jitter_init(ptr noundef nonnull @RE_zbuf_accumulate_vecblur.jit, i32 noundef 256) #14
  br label %383

383:                                              ; preds = %382, %380
  %384 = shl i64 %40, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %384, i1 false)
  %385 = sdiv i16 %18, 2
  %386 = sext i16 %385 to i32
  %387 = icmp slt i16 %18, 2
  br i1 %387, label %434, label %388

388:                                              ; preds = %383
  %389 = getelementptr inbounds %struct.NodeBlurData, ptr %0, i64 0, i32 8
  %390 = add nuw nsw i32 %386, 1
  %391 = sitofp i32 %390 to float
  %392 = add i32 %44, -1
  %393 = icmp sgt i32 %44, 0
  %394 = icmp sgt i32 %44, 0
  %395 = shl nsw i32 %126, 2
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds float, ptr %132, i64 %396
  %398 = icmp sgt i32 %2, 0
  %399 = getelementptr inbounds %struct.NodeBlurData, ptr %0, i64 0, i32 7
  %400 = icmp sgt i32 %1, 0
  %401 = getelementptr inbounds %struct.NodeBlurData, ptr %0, i64 0, i32 7
  %402 = getelementptr inbounds float, ptr %9, i64 1
  %403 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %404 = getelementptr inbounds float, ptr %10, i64 1
  %405 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %406 = getelementptr inbounds float, ptr %11, i64 1
  %407 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %408 = getelementptr inbounds float, ptr %12, i64 1
  %409 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %410 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %411 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %412 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %413 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %414 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %415 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %416 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %417 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %418 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 4
  %419 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 2
  %420 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 5
  %421 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 3
  %422 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 9
  %423 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 8
  %424 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 6
  %425 = getelementptr inbounds float, ptr %9, i64 1
  %426 = getelementptr inbounds float, ptr %10, i64 1
  %427 = getelementptr inbounds float, ptr %11, i64 1
  %428 = getelementptr inbounds float, ptr %9, i64 2
  %429 = getelementptr inbounds float, ptr %10, i64 2
  %430 = getelementptr inbounds float, ptr %11, i64 2
  %431 = sitofp i16 %385 to float
  %432 = icmp sgt i32 %44, 0
  %433 = zext i32 %392 to i64
  br label %436

434:                                              ; preds = %861, %383
  %435 = icmp sgt i32 %44, 0
  br i1 %435, label %864, label %904

436:                                              ; preds = %388, %861
  %437 = phi i32 [ 1, %388 ], [ %862, %861 ]
  %438 = load float, ptr %389, align 4, !tbaa !248
  %439 = fmul float %438, 5.000000e-01
  %440 = sitofp i32 %437 to float
  %441 = fmul float %439, %440
  %442 = fdiv float %441, %391
  %443 = and i32 %437, 255
  %444 = zext nneg i32 %443 to i64
  %445 = getelementptr inbounds [256 x [2 x float]], ptr @RE_zbuf_accumulate_vecblur.jit, i64 0, i64 %444
  %446 = getelementptr inbounds [256 x [2 x float]], ptr @RE_zbuf_accumulate_vecblur.jit, i64 0, i64 %444, i64 1
  %447 = sub nsw i32 %386, %437
  %448 = sitofp i32 %447 to float
  %449 = fdiv float %448, %431
  %450 = fpext float %449 to double
  %451 = fmul double %450, %450
  br label %452

452:                                              ; preds = %436, %858
  %453 = phi i32 [ 0, %436 ], [ %859, %858 ]
  %454 = phi float [ %442, %436 ], [ %486, %858 ]
  br i1 %393, label %456, label %455

455:                                              ; preds = %464, %452
  br i1 %394, label %469, label %474

456:                                              ; preds = %452, %464
  %457 = phi i64 [ %467, %464 ], [ %433, %452 ]
  %458 = getelementptr inbounds i8, ptr %46, i64 %457
  %459 = load i8, ptr %458, align 1, !tbaa !223
  %460 = icmp eq i8 %459, 0
  br i1 %460, label %461, label %464

461:                                              ; preds = %456
  %462 = getelementptr inbounds float, ptr %6, i64 %457
  %463 = load float, ptr %462, align 4, !tbaa !50
  br label %464

464:                                              ; preds = %456, %461
  %465 = phi float [ %463, %461 ], [ 0x4376345780000000, %456 ]
  %466 = getelementptr inbounds float, ptr %41, i64 %457
  store float %465, ptr %466, align 4, !tbaa !50
  %467 = add nsw i64 %457, -1
  %468 = icmp sgt i64 %457, 0
  br i1 %468, label %456, label %455, !llvm.loop !249

469:                                              ; preds = %455, %469
  %470 = phi i64 [ %472, %469 ], [ %433, %455 ]
  %471 = getelementptr inbounds %struct.DrawBufPixel, ptr %50, i64 %470
  store ptr null, ptr %471, align 8, !tbaa !250
  %472 = add nsw i64 %470, -1
  %473 = icmp sgt i64 %470, 0
  br i1 %473, label %469, label %474, !llvm.loop !252

474:                                              ; preds = %469, %455
  %475 = icmp eq i32 %453, 0
  br i1 %475, label %483, label %476

476:                                              ; preds = %474
  %477 = load i16, ptr %399, align 2, !tbaa !253
  %478 = icmp eq i16 %477, 0
  %479 = select i1 %478, i64 2, i64 0
  %480 = getelementptr inbounds float, ptr %397, i64 %479
  %481 = getelementptr inbounds float, ptr %132, i64 %479
  %482 = fneg float %454
  br label %483

483:                                              ; preds = %476, %474
  %484 = phi ptr [ %480, %476 ], [ %397, %474 ]
  %485 = phi ptr [ %481, %476 ], [ %132, %474 ]
  %486 = phi float [ %482, %476 ], [ %454, %474 ]
  %487 = call float @llvm.fmuladd.f32(float %486, float 5.000000e-01, float 5.000000e-01)
  %488 = fsub float 1.000000e+00, %487
  %489 = fmul float %488, %488
  %490 = fmul float %488, 2.000000e+00
  %491 = fmul float %487, %490
  %492 = fmul float %487, %487
  br i1 %398, label %493, label %811

493:                                              ; preds = %483
  %494 = load float, ptr %445, align 8, !tbaa !50
  %495 = fadd float %494, -5.000000e-01
  br label %496

496:                                              ; preds = %493, %800
  %497 = phi float [ %809, %800 ], [ %495, %493 ]
  %498 = phi ptr [ %805, %800 ], [ %4, %493 ]
  %499 = phi ptr [ %804, %800 ], [ %6, %493 ]
  %500 = phi ptr [ %803, %800 ], [ %46, %493 ]
  %501 = phi ptr [ %806, %800 ], [ %485, %493 ]
  %502 = phi ptr [ %807, %800 ], [ %484, %493 ]
  %503 = phi i32 [ %808, %800 ], [ 0, %493 ]
  br i1 %400, label %504, label %800

504:                                              ; preds = %496
  %505 = load float, ptr %446, align 4, !tbaa !50
  %506 = fadd float %505, -5.000000e-01
  %507 = fadd float %497, 5.000000e-01
  %508 = fadd float %507, 1.000000e+00
  br label %509

509:                                              ; preds = %504, %791
  %510 = phi float [ %506, %504 ], [ %793, %791 ]
  %511 = phi ptr [ %498, %504 ], [ %794, %791 ]
  %512 = phi ptr [ %499, %504 ], [ %798, %791 ]
  %513 = phi ptr [ %500, %504 ], [ %797, %791 ]
  %514 = phi ptr [ %501, %504 ], [ %795, %791 ]
  %515 = phi ptr [ %502, %504 ], [ %796, %791 ]
  %516 = phi i32 [ 0, %504 ], [ %792, %791 ]
  %517 = load i8, ptr %513, align 1, !tbaa !223
  %518 = icmp ugt i8 %517, 1
  br i1 %518, label %519, label %791

519:                                              ; preds = %509
  %520 = fadd float %510, 5.000000e-01
  %521 = load i16, ptr %401, align 2, !tbaa !253
  %522 = icmp eq i16 %521, 0
  br i1 %522, label %614, label %523

523:                                              ; preds = %519
  %524 = getelementptr inbounds float, ptr %514, i64 2
  %525 = load float, ptr %524, align 4, !tbaa !50
  %526 = fneg float %525
  %527 = getelementptr inbounds float, ptr %514, i64 3
  %528 = load float, ptr %527, align 4, !tbaa !50
  %529 = fneg float %528
  %530 = load float, ptr %514, align 4, !tbaa !50
  %531 = getelementptr inbounds float, ptr %514, i64 1
  %532 = load float, ptr %531, align 4, !tbaa !50
  %533 = fmul float %525, 5.000000e-01
  %534 = call float @llvm.fmuladd.f32(float %530, float -5.000000e-01, float %533)
  %535 = fmul float %528, 5.000000e-01
  %536 = call float @llvm.fmuladd.f32(float %532, float -5.000000e-01, float %535)
  %537 = fmul float %491, %534
  %538 = call float @llvm.fmuladd.f32(float %489, float %530, float %537)
  %539 = call float @llvm.fmuladd.f32(float %492, float %526, float %538)
  store float %539, ptr %9, align 4, !tbaa !50
  %540 = fmul float %491, %536
  %541 = call float @llvm.fmuladd.f32(float %489, float %532, float %540)
  %542 = call float @llvm.fmuladd.f32(float %492, float %529, float %541)
  store float %542, ptr %402, align 4, !tbaa !50
  %543 = fadd float %520, %539
  store float %543, ptr %9, align 4, !tbaa !50
  %544 = fadd float %507, %542
  store float %544, ptr %402, align 4, !tbaa !50
  %545 = load float, ptr %512, align 4, !tbaa !50
  store float %545, ptr %403, align 4, !tbaa !50
  %546 = getelementptr inbounds float, ptr %514, i64 4
  %547 = getelementptr inbounds float, ptr %514, i64 6
  %548 = load float, ptr %547, align 4, !tbaa !50
  %549 = fneg float %548
  %550 = getelementptr inbounds float, ptr %514, i64 7
  %551 = load float, ptr %550, align 4, !tbaa !50
  %552 = fneg float %551
  %553 = load float, ptr %546, align 4, !tbaa !50
  %554 = getelementptr inbounds float, ptr %514, i64 5
  %555 = load float, ptr %554, align 4, !tbaa !50
  %556 = fmul float %548, 5.000000e-01
  %557 = call float @llvm.fmuladd.f32(float %553, float -5.000000e-01, float %556)
  %558 = fmul float %551, 5.000000e-01
  %559 = call float @llvm.fmuladd.f32(float %555, float -5.000000e-01, float %558)
  %560 = fmul float %491, %557
  %561 = call float @llvm.fmuladd.f32(float %489, float %553, float %560)
  %562 = call float @llvm.fmuladd.f32(float %492, float %549, float %561)
  store float %562, ptr %10, align 4, !tbaa !50
  %563 = fmul float %491, %559
  %564 = call float @llvm.fmuladd.f32(float %489, float %555, float %563)
  %565 = call float @llvm.fmuladd.f32(float %492, float %552, float %564)
  store float %565, ptr %404, align 4, !tbaa !50
  %566 = fadd float %520, 1.000000e+00
  %567 = fadd float %566, %562
  store float %567, ptr %10, align 4, !tbaa !50
  %568 = fadd float %507, %565
  store float %568, ptr %404, align 4, !tbaa !50
  %569 = load float, ptr %512, align 4, !tbaa !50
  store float %569, ptr %405, align 4, !tbaa !50
  %570 = getelementptr inbounds float, ptr %515, i64 4
  %571 = getelementptr inbounds float, ptr %515, i64 6
  %572 = load float, ptr %571, align 4, !tbaa !50
  %573 = fneg float %572
  %574 = getelementptr inbounds float, ptr %515, i64 7
  %575 = load float, ptr %574, align 4, !tbaa !50
  %576 = fneg float %575
  %577 = load float, ptr %570, align 4, !tbaa !50
  %578 = getelementptr inbounds float, ptr %515, i64 5
  %579 = load float, ptr %578, align 4, !tbaa !50
  %580 = fmul float %572, 5.000000e-01
  %581 = call float @llvm.fmuladd.f32(float %577, float -5.000000e-01, float %580)
  %582 = fmul float %575, 5.000000e-01
  %583 = call float @llvm.fmuladd.f32(float %579, float -5.000000e-01, float %582)
  %584 = fmul float %491, %581
  %585 = call float @llvm.fmuladd.f32(float %489, float %577, float %584)
  %586 = call float @llvm.fmuladd.f32(float %492, float %573, float %585)
  store float %586, ptr %11, align 4, !tbaa !50
  %587 = fmul float %491, %583
  %588 = call float @llvm.fmuladd.f32(float %489, float %579, float %587)
  %589 = call float @llvm.fmuladd.f32(float %492, float %576, float %588)
  store float %589, ptr %406, align 4, !tbaa !50
  %590 = fadd float %566, %586
  store float %590, ptr %11, align 4, !tbaa !50
  %591 = fadd float %508, %589
  store float %591, ptr %406, align 4, !tbaa !50
  %592 = load float, ptr %512, align 4, !tbaa !50
  store float %592, ptr %407, align 4, !tbaa !50
  %593 = getelementptr inbounds float, ptr %515, i64 2
  %594 = load float, ptr %593, align 4, !tbaa !50
  %595 = fneg float %594
  %596 = getelementptr inbounds float, ptr %515, i64 3
  %597 = load float, ptr %596, align 4, !tbaa !50
  %598 = fneg float %597
  %599 = load float, ptr %515, align 4, !tbaa !50
  %600 = getelementptr inbounds float, ptr %515, i64 1
  %601 = load float, ptr %600, align 4, !tbaa !50
  %602 = fmul float %594, 5.000000e-01
  %603 = call float @llvm.fmuladd.f32(float %599, float -5.000000e-01, float %602)
  %604 = fmul float %597, 5.000000e-01
  %605 = call float @llvm.fmuladd.f32(float %601, float -5.000000e-01, float %604)
  %606 = fmul float %491, %603
  %607 = call float @llvm.fmuladd.f32(float %489, float %599, float %606)
  %608 = call float @llvm.fmuladd.f32(float %492, float %595, float %607)
  store float %608, ptr %12, align 4, !tbaa !50
  %609 = fmul float %491, %605
  %610 = call float @llvm.fmuladd.f32(float %489, float %601, float %609)
  %611 = call float @llvm.fmuladd.f32(float %492, float %598, float %610)
  store float %611, ptr %408, align 4, !tbaa !50
  %612 = fadd float %520, %608
  store float %612, ptr %12, align 4, !tbaa !50
  %613 = fadd float %508, %611
  store float %613, ptr %408, align 4, !tbaa !50
  br label %644

614:                                              ; preds = %519
  %615 = load float, ptr %514, align 4, !tbaa !50
  %616 = call float @llvm.fmuladd.f32(float %486, float %615, float %520)
  store float %616, ptr %9, align 4, !tbaa !50
  %617 = getelementptr inbounds float, ptr %514, i64 1
  %618 = load float, ptr %617, align 4, !tbaa !50
  %619 = call float @llvm.fmuladd.f32(float %486, float %618, float %507)
  store float %619, ptr %410, align 4, !tbaa !50
  %620 = load float, ptr %512, align 4, !tbaa !50
  store float %620, ptr %411, align 4, !tbaa !50
  %621 = getelementptr inbounds float, ptr %514, i64 4
  %622 = load float, ptr %621, align 4, !tbaa !50
  %623 = call float @llvm.fmuladd.f32(float %486, float %622, float %520)
  %624 = fadd float %623, 1.000000e+00
  store float %624, ptr %10, align 4, !tbaa !50
  %625 = getelementptr inbounds float, ptr %514, i64 5
  %626 = load float, ptr %625, align 4, !tbaa !50
  %627 = call float @llvm.fmuladd.f32(float %486, float %626, float %507)
  store float %627, ptr %412, align 4, !tbaa !50
  %628 = load float, ptr %512, align 4, !tbaa !50
  store float %628, ptr %413, align 4, !tbaa !50
  %629 = getelementptr inbounds float, ptr %515, i64 4
  %630 = load float, ptr %629, align 4, !tbaa !50
  %631 = call float @llvm.fmuladd.f32(float %486, float %630, float %520)
  %632 = fadd float %631, 1.000000e+00
  store float %632, ptr %11, align 4, !tbaa !50
  %633 = getelementptr inbounds float, ptr %515, i64 5
  %634 = load float, ptr %633, align 4, !tbaa !50
  %635 = call float @llvm.fmuladd.f32(float %486, float %634, float %507)
  %636 = fadd float %635, 1.000000e+00
  store float %636, ptr %414, align 4, !tbaa !50
  %637 = load float, ptr %512, align 4, !tbaa !50
  store float %637, ptr %415, align 4, !tbaa !50
  %638 = load float, ptr %515, align 4, !tbaa !50
  %639 = call float @llvm.fmuladd.f32(float %486, float %638, float %520)
  store float %639, ptr %12, align 4, !tbaa !50
  %640 = getelementptr inbounds float, ptr %515, i64 1
  %641 = load float, ptr %640, align 4, !tbaa !50
  %642 = call float @llvm.fmuladd.f32(float %486, float %641, float %507)
  %643 = fadd float %642, 1.000000e+00
  store float %643, ptr %416, align 4, !tbaa !50
  br label %644

644:                                              ; preds = %614, %523
  %645 = phi ptr [ %417, %614 ], [ %409, %523 ]
  %646 = load float, ptr %512, align 4, !tbaa !50
  store float %646, ptr %645, align 4, !tbaa !50
  %647 = load i8, ptr %513, align 1, !tbaa !223
  %648 = icmp eq i8 %647, -1
  br i1 %648, label %654, label %649

649:                                              ; preds = %644
  %650 = icmp ult i8 %647, 2
  br i1 %650, label %654, label %651

651:                                              ; preds = %649
  %652 = uitofp i8 %647 to float
  %653 = fdiv float %652, 2.550000e+02
  br label %654

654:                                              ; preds = %649, %644, %651
  %655 = phi float [ %653, %651 ], [ 1.000000e+00, %644 ], [ 0.000000e+00, %649 ]
  %656 = load i32, ptr %19, align 4, !tbaa !41
  %657 = add nsw i32 %656, 1
  store i32 %657, ptr %418, align 8, !tbaa !63
  store i32 %657, ptr %419, align 8, !tbaa !64
  store i32 -1, ptr %420, align 4, !tbaa !65
  store i32 -1, ptr %421, align 4, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %424, i8 0, i64 32, i1 false)
  call fastcc void @zbuf_add_to_span(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10)
  call fastcc void @zbuf_add_to_span(ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %11)
  call fastcc void @zbuf_add_to_span(ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %12)
  call fastcc void @zbuf_add_to_span(ptr noundef nonnull %8, ptr noundef nonnull %12, ptr noundef nonnull %9)
  %658 = load ptr, ptr %423, align 8, !tbaa !67
  %659 = icmp eq ptr %658, null
  %660 = load ptr, ptr %422, align 8
  %661 = icmp eq ptr %660, null
  %662 = select i1 %659, i1 true, i1 %661
  br i1 %662, label %791, label %663

663:                                              ; preds = %654
  %664 = load i32, ptr %419, align 8, !tbaa !64
  %665 = load i32, ptr %418, align 8, !tbaa !63
  %666 = call i32 @llvm.smax.i32(i32 %664, i32 %665)
  %667 = load i32, ptr %421, align 4, !tbaa !66
  %668 = load i32, ptr %420, align 4, !tbaa !65
  %669 = call i32 @llvm.smin.i32(i32 %667, i32 %668)
  %670 = icmp slt i32 %669, %666
  br i1 %670, label %791, label %671

671:                                              ; preds = %663
  %672 = load float, ptr %9, align 4, !tbaa !50
  %673 = load float, ptr %10, align 4, !tbaa !50
  %674 = fsub float %672, %673
  %675 = load float, ptr %11, align 4, !tbaa !50
  %676 = fsub float %673, %675
  %677 = load float, ptr %425, align 4, !tbaa !50
  %678 = load float, ptr %426, align 4, !tbaa !50
  %679 = fsub float %677, %678
  %680 = load float, ptr %427, align 4, !tbaa !50
  %681 = fsub float %678, %680
  %682 = fneg float %679
  %683 = fmul float %676, %682
  %684 = call float @llvm.fmuladd.f32(float %674, float %681, float %683)
  %685 = fcmp oeq float %684, 0.000000e+00
  br i1 %685, label %791, label %686

686:                                              ; preds = %671
  %687 = load float, ptr %428, align 4, !tbaa !50
  %688 = load float, ptr %429, align 4, !tbaa !50
  %689 = fsub float %687, %688
  %690 = load float, ptr %430, align 4, !tbaa !50
  %691 = fsub float %688, %690
  %692 = fneg float %674
  %693 = fmul float %691, %692
  %694 = call float @llvm.fmuladd.f32(float %689, float %676, float %693)
  %695 = fneg float %689
  %696 = fmul float %681, %695
  %697 = call float @llvm.fmuladd.f32(float %679, float %691, float %696)
  %698 = fpext float %697 to double
  %699 = fneg double %698
  %700 = fpext float %684 to double
  %701 = fdiv double %699, %700
  %702 = fpext float %694 to double
  %703 = fneg double %702
  %704 = fdiv double %703, %700
  %705 = load i32, ptr %8, align 8, !tbaa !34
  %706 = icmp slt i32 %669, %666
  br i1 %706, label %791, label %707

707:                                              ; preds = %686
  %708 = load ptr, ptr %24, align 8, !tbaa !43
  %709 = add nsw i32 %669, %666
  %710 = sdiv i32 %709, 2
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds float, ptr %708, i64 %711
  %713 = load float, ptr %712, align 4, !tbaa !50
  %714 = load ptr, ptr %27, align 8, !tbaa !44
  %715 = getelementptr inbounds float, ptr %714, i64 %711
  %716 = load float, ptr %715, align 4, !tbaa !50
  %717 = fcmp olt float %713, %716
  %718 = sext i32 %669 to i64
  %719 = getelementptr inbounds float, ptr %714, i64 %718
  %720 = getelementptr inbounds float, ptr %708, i64 %718
  %721 = select i1 %717, ptr %719, ptr %720
  %722 = select i1 %717, ptr %720, ptr %719
  %723 = load ptr, ptr %51, align 8, !tbaa !119
  %724 = mul nsw i32 %705, %669
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds %struct.DrawBufPixel, ptr %723, i64 %725
  %727 = load ptr, ptr %42, align 8, !tbaa !123
  %728 = getelementptr inbounds i32, ptr %727, i64 %725
  %729 = sitofp i32 %669 to double
  %730 = fmul float %677, %694
  %731 = call float @llvm.fmuladd.f32(float %697, float %672, float %730)
  %732 = fdiv float %731, %684
  %733 = fadd float %687, %732
  %734 = fpext float %733 to double
  %735 = call double @llvm.fmuladd.f64(double %729, double %704, double %734)
  %736 = add nsw i32 %705, -1
  %737 = sext i32 %705 to i64
  %738 = sub nsw i64 0, %737
  br label %739

739:                                              ; preds = %707, %783
  %740 = phi ptr [ %726, %707 ], [ %786, %783 ]
  %741 = phi i32 [ %669, %707 ], [ %787, %783 ]
  %742 = phi ptr [ %728, %707 ], [ %785, %783 ]
  %743 = phi ptr [ %721, %707 ], [ %789, %783 ]
  %744 = phi ptr [ %722, %707 ], [ %788, %783 ]
  %745 = phi double [ %735, %707 ], [ %784, %783 ]
  %746 = load float, ptr %744, align 4, !tbaa !50
  %747 = call float @llvm.floor.f32(float %746)
  %748 = fptosi float %747 to i32
  %749 = load float, ptr %743, align 4, !tbaa !50
  %750 = call float @llvm.floor.f32(float %749)
  %751 = fptosi float %750 to i32
  %752 = icmp sgt i32 %705, %751
  %753 = select i1 %752, i32 %751, i32 %736
  %754 = call i32 @llvm.smax.i32(i32 %748, i32 -1)
  %755 = icmp sgt i32 %753, %754
  br i1 %755, label %756, label %783

756:                                              ; preds = %739
  %757 = add nsw i32 %754, 1
  %758 = sub nsw i32 %753, %757
  %759 = icmp sgt i32 %758, -1
  br i1 %759, label %760, label %783

760:                                              ; preds = %756
  %761 = sext i32 %757 to i64
  %762 = getelementptr inbounds %struct.DrawBufPixel, ptr %740, i64 %761
  %763 = getelementptr inbounds float, ptr %742, i64 %761
  %764 = sitofp i32 %757 to double
  %765 = call double @llvm.fmuladd.f64(double %764, double %701, double %745)
  br label %766

766:                                              ; preds = %760, %777
  %767 = phi i32 [ %781, %777 ], [ %758, %760 ]
  %768 = phi ptr [ %779, %777 ], [ %763, %760 ]
  %769 = phi ptr [ %780, %777 ], [ %762, %760 ]
  %770 = phi double [ %778, %777 ], [ %765, %760 ]
  %771 = load float, ptr %768, align 4, !tbaa !50
  %772 = fpext float %771 to double
  %773 = fcmp olt double %770, %772
  br i1 %773, label %774, label %777

774:                                              ; preds = %766
  %775 = fptrunc double %770 to float
  store float %775, ptr %768, align 4, !tbaa !50
  store ptr %511, ptr %769, align 8, !tbaa.struct !254
  %776 = getelementptr inbounds i8, ptr %769, i64 8
  store float %655, ptr %776, align 8, !tbaa.struct !255
  br label %777

777:                                              ; preds = %774, %766
  %778 = fadd double %701, %770
  %779 = getelementptr inbounds float, ptr %768, i64 1
  %780 = getelementptr inbounds %struct.DrawBufPixel, ptr %769, i64 1
  %781 = add nsw i32 %767, -1
  %782 = icmp sgt i32 %767, 0
  br i1 %782, label %766, label %783, !llvm.loop !256

783:                                              ; preds = %777, %756, %739
  %784 = fsub double %745, %704
  %785 = getelementptr inbounds float, ptr %742, i64 %738
  %786 = getelementptr inbounds %struct.DrawBufPixel, ptr %740, i64 %738
  %787 = add nsw i32 %741, -1
  %788 = getelementptr inbounds float, ptr %744, i64 -1
  %789 = getelementptr inbounds float, ptr %743, i64 -1
  %790 = icmp sgt i32 %741, %666
  br i1 %790, label %739, label %791, !llvm.loop !257

791:                                              ; preds = %783, %686, %671, %663, %654, %509
  %792 = add nuw nsw i32 %516, 1
  %793 = fadd float %510, 1.000000e+00
  %794 = getelementptr inbounds float, ptr %511, i64 4
  %795 = getelementptr inbounds float, ptr %514, i64 4
  %796 = getelementptr inbounds float, ptr %515, i64 4
  %797 = getelementptr inbounds i8, ptr %513, i64 1
  %798 = getelementptr inbounds float, ptr %512, i64 1
  %799 = icmp eq i32 %792, %1
  br i1 %799, label %800, label %509, !llvm.loop !258

800:                                              ; preds = %791, %496
  %801 = phi ptr [ %502, %496 ], [ %796, %791 ]
  %802 = phi ptr [ %501, %496 ], [ %795, %791 ]
  %803 = phi ptr [ %500, %496 ], [ %797, %791 ]
  %804 = phi ptr [ %499, %496 ], [ %798, %791 ]
  %805 = phi ptr [ %498, %496 ], [ %794, %791 ]
  %806 = getelementptr inbounds float, ptr %802, i64 4
  %807 = getelementptr inbounds float, ptr %801, i64 4
  %808 = add nuw nsw i32 %503, 1
  %809 = fadd float %497, 1.000000e+00
  %810 = icmp eq i32 %808, %2
  br i1 %810, label %811, label %496, !llvm.loop !259

811:                                              ; preds = %800, %483
  %812 = call double @pow(double noundef %450, double noundef 3.000000e+00) #14
  %813 = fmul double %812, -2.000000e+00
  %814 = call double @llvm.fmuladd.f64(double %451, double 3.000000e+00, double %813)
  %815 = fptrunc double %814 to float
  br i1 %432, label %816, label %858

816:                                              ; preds = %811, %851
  %817 = phi ptr [ %853, %851 ], [ %50, %811 ]
  %818 = phi ptr [ %854, %851 ], [ %3, %811 ]
  %819 = phi i32 [ %852, %851 ], [ %392, %811 ]
  %820 = phi ptr [ %856, %851 ], [ %55, %811 ]
  %821 = phi ptr [ %855, %851 ], [ %53, %811 ]
  %822 = load ptr, ptr %817, align 8, !tbaa !250
  %823 = icmp eq ptr %822, null
  br i1 %823, label %851, label %824

824:                                              ; preds = %816
  %825 = getelementptr inbounds %struct.DrawBufPixel, ptr %817, i64 0, i32 1
  %826 = load float, ptr %825, align 8, !tbaa !260
  %827 = fmul float %826, %815
  %828 = load float, ptr %822, align 4, !tbaa !50
  %829 = load float, ptr %818, align 4, !tbaa !50
  %830 = call float @llvm.fmuladd.f32(float %827, float %828, float %829)
  store float %830, ptr %818, align 4, !tbaa !50
  %831 = getelementptr inbounds float, ptr %822, i64 1
  %832 = load float, ptr %831, align 4, !tbaa !50
  %833 = getelementptr inbounds float, ptr %818, i64 1
  %834 = load float, ptr %833, align 4, !tbaa !50
  %835 = call float @llvm.fmuladd.f32(float %827, float %832, float %834)
  store float %835, ptr %833, align 4, !tbaa !50
  %836 = getelementptr inbounds float, ptr %822, i64 2
  %837 = load float, ptr %836, align 4, !tbaa !50
  %838 = getelementptr inbounds float, ptr %818, i64 2
  %839 = load float, ptr %838, align 4, !tbaa !50
  %840 = call float @llvm.fmuladd.f32(float %827, float %837, float %839)
  store float %840, ptr %838, align 4, !tbaa !50
  %841 = getelementptr inbounds float, ptr %822, i64 3
  %842 = load float, ptr %841, align 4, !tbaa !50
  %843 = getelementptr inbounds float, ptr %818, i64 3
  %844 = load float, ptr %843, align 4, !tbaa !50
  %845 = call float @llvm.fmuladd.f32(float %827, float %842, float %844)
  store float %845, ptr %843, align 4, !tbaa !50
  %846 = load float, ptr %821, align 4, !tbaa !50
  %847 = fadd float %827, %846
  store float %847, ptr %821, align 4, !tbaa !50
  %848 = load float, ptr %820, align 4, !tbaa !50
  %849 = fcmp ogt float %848, %827
  %850 = select i1 %849, float %848, float %827
  store float %850, ptr %820, align 4, !tbaa !50
  br label %851

851:                                              ; preds = %816, %824
  %852 = add nsw i32 %819, -1
  %853 = getelementptr inbounds %struct.DrawBufPixel, ptr %817, i64 1
  %854 = getelementptr inbounds float, ptr %818, i64 4
  %855 = getelementptr inbounds float, ptr %821, i64 1
  %856 = getelementptr inbounds float, ptr %820, i64 1
  %857 = icmp sgt i32 %819, 0
  br i1 %857, label %816, label %858, !llvm.loop !261

858:                                              ; preds = %851, %811
  %859 = add nuw nsw i32 %453, 1
  %860 = icmp eq i32 %453, 0
  br i1 %860, label %452, label %861, !llvm.loop !262

861:                                              ; preds = %858
  %862 = add nuw nsw i32 %437, 1
  %863 = icmp eq i32 %437, %386
  br i1 %863, label %434, label %436, !llvm.loop !263

864:                                              ; preds = %434, %864
  %865 = phi ptr [ %899, %864 ], [ %3, %434 ]
  %866 = phi i32 [ %870, %864 ], [ %44, %434 ]
  %867 = phi ptr [ %900, %864 ], [ %4, %434 ]
  %868 = phi ptr [ %902, %864 ], [ %55, %434 ]
  %869 = phi ptr [ %901, %864 ], [ %53, %434 ]
  %870 = add nsw i32 %866, -1
  %871 = load float, ptr %868, align 4, !tbaa !50
  %872 = load float, ptr %869, align 4, !tbaa !50
  %873 = fcmp oeq float %872, 0.000000e+00
  %874 = fdiv float %871, %872
  %875 = select i1 %873, float 0.000000e+00, float %874
  %876 = fsub float 1.000000e+00, %871
  %877 = load float, ptr %865, align 4, !tbaa !50
  %878 = load float, ptr %867, align 4, !tbaa !50
  %879 = fmul float %876, %878
  %880 = call float @llvm.fmuladd.f32(float %875, float %877, float %879)
  store float %880, ptr %865, align 4, !tbaa !50
  %881 = getelementptr inbounds float, ptr %865, i64 1
  %882 = load float, ptr %881, align 4, !tbaa !50
  %883 = getelementptr inbounds float, ptr %867, i64 1
  %884 = load float, ptr %883, align 4, !tbaa !50
  %885 = fmul float %876, %884
  %886 = call float @llvm.fmuladd.f32(float %875, float %882, float %885)
  store float %886, ptr %881, align 4, !tbaa !50
  %887 = getelementptr inbounds float, ptr %865, i64 2
  %888 = load float, ptr %887, align 4, !tbaa !50
  %889 = getelementptr inbounds float, ptr %867, i64 2
  %890 = load float, ptr %889, align 4, !tbaa !50
  %891 = fmul float %876, %890
  %892 = call float @llvm.fmuladd.f32(float %875, float %888, float %891)
  store float %892, ptr %887, align 4, !tbaa !50
  %893 = getelementptr inbounds float, ptr %865, i64 3
  %894 = load float, ptr %893, align 4, !tbaa !50
  %895 = getelementptr inbounds float, ptr %867, i64 3
  %896 = load float, ptr %895, align 4, !tbaa !50
  %897 = fmul float %876, %896
  %898 = call float @llvm.fmuladd.f32(float %875, float %894, float %897)
  store float %898, ptr %893, align 4, !tbaa !50
  %899 = getelementptr inbounds float, ptr %865, i64 4
  %900 = getelementptr inbounds float, ptr %867, i64 4
  %901 = getelementptr inbounds float, ptr %869, i64 1
  %902 = getelementptr inbounds float, ptr %868, i64 1
  %903 = icmp sgt i32 %866, 1
  br i1 %903, label %864, label %904, !llvm.loop !264

904:                                              ; preds = %864, %434
  %905 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %905(ptr noundef %41) #14
  %906 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %906(ptr noundef %46) #14
  %907 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %907(ptr noundef %50) #14
  %908 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %908(ptr noundef %132) #14
  %909 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %909(ptr noundef %53) #14
  %910 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %910(ptr noundef %55) #14
  %911 = icmp eq ptr %123, null
  br i1 %911, label %914, label %912

912:                                              ; preds = %904
  %913 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %913(ptr noundef %124) #14
  br label %914

914:                                              ; preds = %912, %904
  %915 = load ptr, ptr %24, align 8, !tbaa !43
  %916 = icmp eq ptr %915, null
  br i1 %916, label %919, label %917

917:                                              ; preds = %914
  %918 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %918(ptr noundef nonnull %915) #14
  br label %919

919:                                              ; preds = %917, %914
  %920 = load ptr, ptr %27, align 8, !tbaa !44
  %921 = icmp eq ptr %920, null
  br i1 %921, label %924, label %922

922:                                              ; preds = %919
  %923 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %923(ptr noundef nonnull %920) #14
  br label %924

924:                                              ; preds = %919, %922
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

declare void @BLI_jitter_init(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @zbuffer_abuf_shadow(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca %struct.RenderPart, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %10) #14
  %11 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !173
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 17
  %17 = load i32, ptr %16, align 4, !tbaa !175
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i32 [ %17, %15 ], [ -1, %9 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %10, i8 0, i64 160, i1 false)
  %20 = getelementptr inbounds %struct.RenderPart, ptr %10, i64 0, i32 14
  store i32 %6, ptr %20, align 8, !tbaa !113
  %21 = getelementptr inbounds %struct.RenderPart, ptr %10, i64 0, i32 15
  store i32 %6, ptr %21, align 4, !tbaa !114
  %22 = getelementptr inbounds %struct.RenderPart, ptr %10, i64 0, i32 13
  store i32 0, ptr %22, align 8, !tbaa !109
  %23 = getelementptr inbounds %struct.RenderPart, ptr %10, i64 0, i32 13, i32 2
  store i32 0, ptr %23, align 8, !tbaa !111
  %24 = getelementptr inbounds %struct.RenderPart, ptr %10, i64 0, i32 13, i32 1
  store i32 %6, ptr %24, align 4, !tbaa !110
  %25 = getelementptr inbounds %struct.RenderPart, ptr %10, i64 0, i32 13, i32 3
  store i32 %6, ptr %25, align 4, !tbaa !112
  %26 = call fastcc i32 @zbuffer_abuf(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %3, ptr noundef %5, i32 noundef %19, i32 noundef 0, ptr noundef %2, i32 noundef %6, i32 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef 1)
  %27 = icmp eq ptr %4, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  %29 = call i32 @zbuffer_strands_abuf(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %4, ptr noundef %5, i32 noundef %19, i32 noundef 0, ptr noundef %2, i32 noundef %6, i32 noundef %6, i32 noundef %7, ptr noundef %8, float noundef 1.000000e+00, i32 noundef 1, ptr noundef null) #14
  br label %30

30:                                               ; preds = %28, %18
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %10) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @zbuffer_abuf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef readonly %10, i32 noundef %11) unnamed_addr #0 {
  %13 = alloca [256 x %struct.ZbufProjectCache], align 16
  %14 = alloca [16 x %struct.ZSpan], align 16
  %15 = alloca [4 x [4 x float]], align 16
  %16 = alloca [4 x float], align 16
  %17 = alloca [4 x float], align 16
  %18 = alloca [4 x float], align 16
  %19 = alloca [4 x float], align 16
  %20 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 6144, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 3584, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %21 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !109
  %23 = shl nsw i32 %22, 1
  %24 = xor i32 %7, -1
  %25 = add i32 %23, %24
  %26 = sitofp i32 %25 to float
  %27 = sitofp i32 %7 to float
  %28 = fdiv float %26, %27
  store float %28, ptr %16, align 16, !tbaa !50
  %29 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !110
  %31 = shl nsw i32 %30, 1
  %32 = sub i32 %31, %7
  %33 = add i32 %32, 1
  %34 = sitofp i32 %33 to float
  %35 = fdiv float %34, %27
  %36 = getelementptr inbounds float, ptr %16, i64 1
  store float %35, ptr %36, align 4, !tbaa !50
  %37 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !111
  %39 = shl nsw i32 %38, 1
  %40 = xor i32 %8, -1
  %41 = add i32 %39, %40
  %42 = sitofp i32 %41 to float
  %43 = sitofp i32 %8 to float
  %44 = fdiv float %42, %43
  %45 = getelementptr inbounds float, ptr %16, i64 2
  store float %44, ptr %45, align 8, !tbaa !50
  %46 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !112
  %48 = shl nsw i32 %47, 1
  %49 = sub i32 %48, %8
  %50 = add i32 %49, 1
  %51 = sitofp i32 %50 to float
  %52 = fdiv float %51, %43
  %53 = getelementptr inbounds float, ptr %16, i64 3
  store float %52, ptr %53, align 4, !tbaa !50
  %54 = icmp sgt i32 %9, 0
  br i1 %54, label %55, label %248

55:                                               ; preds = %12
  %56 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 14
  %57 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 15
  %58 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 19
  %59 = fmul float %27, 5.000000e-01
  %60 = fmul float %43, 5.000000e-01
  %61 = icmp eq i32 %5, 0
  %62 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 8
  %63 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 6
  %64 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 7
  %65 = icmp eq ptr %10, null
  %66 = zext nneg i32 %9 to i64
  br label %67

67:                                               ; preds = %55, %238
  %68 = phi i64 [ 0, %55 ], [ %246, %238 ]
  %69 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68
  %70 = load i32, ptr %56, align 8, !tbaa !113
  %71 = load i32, ptr %57, align 4, !tbaa !114
  %72 = load float, ptr %58, align 4, !tbaa !115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %69, i8 0, i64 224, i1 false)
  store i32 %70, ptr %69, align 16, !tbaa !34
  %73 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68, i32 1
  store i32 %71, ptr %73, align 4, !tbaa !41
  %74 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %75 = sext i32 %71 to i64
  %76 = shl nsw i64 %75, 2
  %77 = tail call ptr %74(i64 noundef %76, ptr noundef nonnull @.str) #14
  %78 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68, i32 10
  store ptr %77, ptr %78, align 8, !tbaa !43
  %79 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %80 = tail call ptr %79(i64 noundef %76, ptr noundef nonnull @.str) #14
  %81 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68, i32 11
  store ptr %80, ptr %81, align 16, !tbaa !44
  %82 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68, i32 31
  store float %72, ptr %82, align 4, !tbaa !45
  %83 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68, i32 12
  store float %59, ptr %83, align 8, !tbaa !57
  %84 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68, i32 13
  store float %60, ptr %84, align 4, !tbaa !59
  %85 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %86 = load i32, ptr %56, align 8, !tbaa !113
  %87 = sext i32 %86 to i64
  %88 = shl nsw i64 %87, 2
  %89 = load i32, ptr %57, align 4, !tbaa !114
  %90 = sext i32 %89 to i64
  %91 = mul i64 %88, %90
  %92 = tail call ptr %85(i64 noundef %91, ptr noundef nonnull @.str.17) #14
  %93 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68, i32 17
  store ptr %92, ptr %93, align 16, !tbaa !265
  %94 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68, i32 22
  store ptr %2, ptr %94, align 8, !tbaa !266
  %95 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68, i32 25
  store ptr %3, ptr %95, align 16, !tbaa !267
  br i1 %61, label %106, label %96

96:                                               ; preds = %67
  %97 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %98 = load i32, ptr %56, align 8, !tbaa !113
  %99 = sext i32 %98 to i64
  %100 = shl nsw i64 %99, 2
  %101 = load i32, ptr %57, align 4, !tbaa !114
  %102 = sext i32 %101 to i64
  %103 = mul i64 %100, %102
  %104 = tail call ptr %97(i64 noundef %103, ptr noundef nonnull @.str.18) #14
  %105 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68, i32 21
  store ptr %104, ptr %105, align 16, !tbaa !160
  br label %106

106:                                              ; preds = %96, %67
  %107 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68, i32 34
  store ptr @zbuffillAc4, ptr %107, align 16, !tbaa !99
  %108 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68, i32 35
  store ptr @zbuflineAc, ptr %108, align 8, !tbaa !62
  %109 = load ptr, ptr %93, align 16, !tbaa !265
  %110 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68, i32 21
  %111 = load ptr, ptr %110, align 16, !tbaa !160
  %112 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !116
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %146

114:                                              ; preds = %106
  %115 = load ptr, ptr %63, align 8, !tbaa !124
  %116 = icmp eq ptr %115, null
  %117 = load i32, ptr %56, align 8, !tbaa !113
  br i1 %116, label %118, label %128

118:                                              ; preds = %114
  %119 = load i32, ptr %57, align 4, !tbaa !114
  %120 = mul nsw i32 %119, %117
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %118, %122
  %123 = phi ptr [ %126, %122 ], [ %109, %118 ]
  %124 = phi i32 [ %125, %122 ], [ %120, %118 ]
  %125 = add nsw i32 %124, -1
  store i32 2147483646, ptr %123, align 4, !tbaa !46
  %126 = getelementptr inbounds i32, ptr %123, i64 1
  %127 = icmp sgt i32 %124, 1
  br i1 %127, label %122, label %134, !llvm.loop !47

128:                                              ; preds = %114
  %129 = sext i32 %117 to i64
  %130 = shl nsw i64 %129, 2
  %131 = load i32, ptr %57, align 4, !tbaa !114
  %132 = sext i32 %131 to i64
  %133 = mul i64 %130, %132
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %109, ptr nonnull align 4 %115, i64 %133, i1 false)
  br label %134

134:                                              ; preds = %122, %118, %128
  %135 = icmp eq ptr %111, null
  br i1 %135, label %215, label %136

136:                                              ; preds = %134
  %137 = load ptr, ptr %64, align 8, !tbaa !122
  %138 = icmp eq ptr %137, null
  br i1 %138, label %215, label %139

139:                                              ; preds = %136
  %140 = load i32, ptr %56, align 8, !tbaa !113
  %141 = sext i32 %140 to i64
  %142 = shl nsw i64 %141, 2
  %143 = load i32, ptr %57, align 4, !tbaa !114
  %144 = sext i32 %143 to i64
  %145 = mul i64 %142, %144
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %111, ptr nonnull align 4 %137, i64 %145, i1 false)
  br label %215

146:                                              ; preds = %106
  %147 = load ptr, ptr %62, align 8, !tbaa !268
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %160

149:                                              ; preds = %146
  %150 = load i32, ptr %56, align 8, !tbaa !113
  %151 = load i32, ptr %57, align 4, !tbaa !114
  %152 = mul nsw i32 %151, %150
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %215

154:                                              ; preds = %149, %154
  %155 = phi ptr [ %158, %154 ], [ %109, %149 ]
  %156 = phi i32 [ %157, %154 ], [ %152, %149 ]
  %157 = add nsw i32 %156, -1
  store i32 2147483646, ptr %155, align 4, !tbaa !46
  %158 = getelementptr inbounds i32, ptr %155, i64 1
  %159 = icmp sgt i32 %156, 1
  br i1 %159, label %154, label %215, !llvm.loop !47

160:                                              ; preds = %146
  %161 = trunc i64 %68 to i32
  %162 = shl nuw i32 1, %161
  %163 = load i32, ptr %57, align 4, !tbaa !114
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %215

165:                                              ; preds = %160
  %166 = icmp eq ptr %111, null
  br label %167

167:                                              ; preds = %165, %208
  %168 = phi ptr [ %147, %165 ], [ %211, %208 ]
  %169 = phi ptr [ %111, %165 ], [ %210, %208 ]
  %170 = phi ptr [ %109, %165 ], [ %209, %208 ]
  %171 = phi i32 [ 0, %165 ], [ %212, %208 ]
  %172 = load i32, ptr %56, align 8, !tbaa !113
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %208

174:                                              ; preds = %167, %201
  %175 = phi ptr [ %202, %201 ], [ %168, %167 ]
  %176 = phi ptr [ %204, %201 ], [ %169, %167 ]
  %177 = phi ptr [ %203, %201 ], [ %170, %167 ]
  %178 = phi i32 [ %205, %201 ], [ 0, %167 ]
  store i32 2147483647, ptr %177, align 4, !tbaa !46
  br i1 %166, label %180, label %179

179:                                              ; preds = %174
  store i32 2147483647, ptr %176, align 4, !tbaa !46
  br label %180

180:                                              ; preds = %179, %174
  %181 = load i64, ptr %175, align 8, !tbaa !269
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %201, label %183

183:                                              ; preds = %180
  %184 = inttoptr i64 %181 to ptr
  br label %185

185:                                              ; preds = %183, %198
  %186 = phi ptr [ %184, %183 ], [ %199, %198 ]
  %187 = getelementptr inbounds %struct.PixStr, ptr %186, i64 0, i32 5
  %188 = load i16, ptr %187, align 8, !tbaa !271
  %189 = zext i16 %188 to i32
  %190 = and i32 %162, %189
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %185
  %193 = getelementptr inbounds %struct.PixStr, ptr %186, i64 0, i32 3
  %194 = load i32, ptr %193, align 8, !tbaa !273
  store i32 %194, ptr %177, align 4, !tbaa !46
  br i1 %166, label %201, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.PixStr, ptr %186, i64 0, i32 4
  %197 = load i32, ptr %196, align 4, !tbaa !274
  store i32 %197, ptr %176, align 4, !tbaa !46
  br label %201

198:                                              ; preds = %185
  %199 = load ptr, ptr %186, align 8, !tbaa !275
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %185, !llvm.loop !276

201:                                              ; preds = %198, %195, %192, %180
  %202 = getelementptr inbounds i64, ptr %175, i64 1
  %203 = getelementptr inbounds i32, ptr %177, i64 1
  %204 = getelementptr inbounds i32, ptr %176, i64 1
  %205 = add nuw nsw i32 %178, 1
  %206 = load i32, ptr %56, align 8, !tbaa !113
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %174, label %208, !llvm.loop !277

208:                                              ; preds = %201, %167
  %209 = phi ptr [ %170, %167 ], [ %203, %201 ]
  %210 = phi ptr [ %169, %167 ], [ %204, %201 ]
  %211 = phi ptr [ %168, %167 ], [ %202, %201 ]
  %212 = add nuw nsw i32 %171, 1
  %213 = load i32, ptr %57, align 4, !tbaa !114
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %167, label %215, !llvm.loop !278

215:                                              ; preds = %208, %154, %160, %149, %134, %136, %139
  %216 = trunc i64 %68 to i32
  %217 = shl nuw i32 1, %216
  %218 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68, i32 28
  store i32 %217, ptr %218, align 16, !tbaa !279
  %219 = load i32, ptr %21, align 8, !tbaa !109
  %220 = sub nsw i32 0, %219
  %221 = sitofp i32 %220 to float
  br i1 %65, label %233, label %222

222:                                              ; preds = %215
  %223 = getelementptr inbounds [2 x float], ptr %10, i64 %68
  %224 = load float, ptr %223, align 4, !tbaa !50
  %225 = fsub float %221, %224
  %226 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68, i32 14
  store float %225, ptr %226, align 16, !tbaa !58
  %227 = load i32, ptr %37, align 8, !tbaa !111
  %228 = sub nsw i32 0, %227
  %229 = sitofp i32 %228 to float
  %230 = getelementptr inbounds [2 x float], ptr %10, i64 %68, i64 1
  %231 = load float, ptr %230, align 4, !tbaa !50
  %232 = fsub float %229, %231
  br label %238

233:                                              ; preds = %215
  %234 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68, i32 14
  store float %221, ptr %234, align 16, !tbaa !58
  %235 = load i32, ptr %37, align 8, !tbaa !111
  %236 = sub nsw i32 0, %235
  %237 = sitofp i32 %236 to float
  br label %238

238:                                              ; preds = %233, %222
  %239 = phi float [ %237, %233 ], [ %232, %222 ]
  %240 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68, i32 15
  store float %239, ptr %240, align 4, !tbaa !60
  %241 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68, i32 14
  %242 = load float, ptr %241, align 16, !tbaa !58
  %243 = fadd float %242, -5.000000e-01
  store float %243, ptr %241, align 16, !tbaa !58
  %244 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %68, i32 15
  %245 = fadd float %239, -5.000000e-01
  store float %245, ptr %244, align 4, !tbaa !60
  %246 = add nuw nsw i64 %68, 1
  %247 = icmp eq i64 %246, %66
  br i1 %247, label %248, label %67, !llvm.loop !280

248:                                              ; preds = %238, %12
  %249 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %250 = load ptr, ptr %249, align 8, !tbaa !42
  %251 = icmp eq ptr %250, null
  br i1 %251, label %1037, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %254 = icmp eq i32 %11, 0
  %255 = getelementptr inbounds [4 x float], ptr %15, i64 1
  %256 = getelementptr inbounds [4 x float], ptr %15, i64 2
  %257 = getelementptr inbounds [4 x float], ptr %15, i64 3
  %258 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 1
  %259 = getelementptr inbounds [4 x float], ptr %15, i64 1, i64 1
  %260 = getelementptr inbounds [4 x float], ptr %15, i64 2, i64 1
  %261 = getelementptr inbounds [4 x float], ptr %15, i64 3, i64 1
  %262 = getelementptr inbounds float, ptr %17, i64 1
  %263 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 2
  %264 = getelementptr inbounds [4 x float], ptr %15, i64 1, i64 2
  %265 = getelementptr inbounds [4 x float], ptr %15, i64 2, i64 2
  %266 = getelementptr inbounds [4 x float], ptr %15, i64 3, i64 2
  %267 = getelementptr inbounds float, ptr %17, i64 2
  %268 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 3
  %269 = getelementptr inbounds [4 x float], ptr %15, i64 1, i64 3
  %270 = getelementptr inbounds [4 x float], ptr %15, i64 2, i64 3
  %271 = getelementptr inbounds [4 x float], ptr %15, i64 3, i64 3
  %272 = getelementptr inbounds float, ptr %17, i64 3
  %273 = getelementptr inbounds float, ptr %17, i64 1
  %274 = getelementptr inbounds float, ptr %17, i64 2
  %275 = getelementptr inbounds float, ptr %17, i64 3
  %276 = getelementptr inbounds [4 x float], ptr %15, i64 1
  %277 = getelementptr inbounds [4 x float], ptr %15, i64 2
  %278 = getelementptr inbounds [4 x float], ptr %15, i64 3
  %279 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 1
  %280 = getelementptr inbounds [4 x float], ptr %15, i64 1, i64 1
  %281 = getelementptr inbounds [4 x float], ptr %15, i64 2, i64 1
  %282 = getelementptr inbounds [4 x float], ptr %15, i64 3, i64 1
  %283 = getelementptr inbounds float, ptr %18, i64 1
  %284 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 2
  %285 = getelementptr inbounds [4 x float], ptr %15, i64 1, i64 2
  %286 = getelementptr inbounds [4 x float], ptr %15, i64 2, i64 2
  %287 = getelementptr inbounds [4 x float], ptr %15, i64 3, i64 2
  %288 = getelementptr inbounds float, ptr %18, i64 2
  %289 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 3
  %290 = getelementptr inbounds [4 x float], ptr %15, i64 1, i64 3
  %291 = getelementptr inbounds [4 x float], ptr %15, i64 2, i64 3
  %292 = getelementptr inbounds [4 x float], ptr %15, i64 3, i64 3
  %293 = getelementptr inbounds float, ptr %18, i64 3
  %294 = getelementptr inbounds float, ptr %18, i64 1
  %295 = getelementptr inbounds float, ptr %18, i64 2
  %296 = getelementptr inbounds float, ptr %18, i64 3
  %297 = getelementptr inbounds [4 x float], ptr %15, i64 1
  %298 = getelementptr inbounds [4 x float], ptr %15, i64 2
  %299 = getelementptr inbounds [4 x float], ptr %15, i64 3
  %300 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 1
  %301 = getelementptr inbounds [4 x float], ptr %15, i64 1, i64 1
  %302 = getelementptr inbounds [4 x float], ptr %15, i64 2, i64 1
  %303 = getelementptr inbounds [4 x float], ptr %15, i64 3, i64 1
  %304 = getelementptr inbounds float, ptr %19, i64 1
  %305 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 2
  %306 = getelementptr inbounds [4 x float], ptr %15, i64 1, i64 2
  %307 = getelementptr inbounds [4 x float], ptr %15, i64 2, i64 2
  %308 = getelementptr inbounds [4 x float], ptr %15, i64 3, i64 2
  %309 = getelementptr inbounds float, ptr %19, i64 2
  %310 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 3
  %311 = getelementptr inbounds [4 x float], ptr %15, i64 1, i64 3
  %312 = getelementptr inbounds [4 x float], ptr %15, i64 2, i64 3
  %313 = getelementptr inbounds [4 x float], ptr %15, i64 3, i64 3
  %314 = getelementptr inbounds float, ptr %19, i64 3
  %315 = getelementptr inbounds float, ptr %19, i64 1
  %316 = getelementptr inbounds float, ptr %19, i64 2
  %317 = getelementptr inbounds float, ptr %19, i64 3
  %318 = getelementptr inbounds [4 x float], ptr %15, i64 1
  %319 = getelementptr inbounds [4 x float], ptr %15, i64 2
  %320 = getelementptr inbounds [4 x float], ptr %15, i64 3
  %321 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 1
  %322 = getelementptr inbounds [4 x float], ptr %15, i64 1, i64 1
  %323 = getelementptr inbounds [4 x float], ptr %15, i64 2, i64 1
  %324 = getelementptr inbounds [4 x float], ptr %15, i64 3, i64 1
  %325 = getelementptr inbounds float, ptr %20, i64 1
  %326 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 2
  %327 = getelementptr inbounds [4 x float], ptr %15, i64 1, i64 2
  %328 = getelementptr inbounds [4 x float], ptr %15, i64 2, i64 2
  %329 = getelementptr inbounds [4 x float], ptr %15, i64 3, i64 2
  %330 = getelementptr inbounds float, ptr %20, i64 2
  %331 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 3
  %332 = getelementptr inbounds [4 x float], ptr %15, i64 1, i64 3
  %333 = getelementptr inbounds [4 x float], ptr %15, i64 2, i64 3
  %334 = getelementptr inbounds [4 x float], ptr %15, i64 3, i64 3
  %335 = getelementptr inbounds float, ptr %20, i64 3
  %336 = getelementptr inbounds float, ptr %20, i64 1
  %337 = getelementptr inbounds float, ptr %20, i64 2
  %338 = getelementptr inbounds float, ptr %20, i64 3
  %339 = icmp eq i32 %11, 0
  %340 = getelementptr inbounds [4 x float], ptr %15, i64 2, i64 2
  %341 = getelementptr inbounds [4 x float], ptr %15, i64 3, i64 2
  %342 = getelementptr inbounds [4 x float], ptr %15, i64 2, i64 3
  %343 = getelementptr inbounds [4 x float], ptr %15, i64 3, i64 3
  %344 = getelementptr inbounds float, ptr %20, i64 3
  %345 = getelementptr inbounds float, ptr %20, i64 1
  %346 = getelementptr inbounds float, ptr %20, i64 2
  %347 = icmp sgt i32 %9, 0
  %348 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %349 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %350 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %351 = zext nneg i32 %9 to i64
  br label %352

352:                                              ; preds = %252, %1028
  %353 = phi ptr [ %250, %252 ], [ %1035, %1028 ]
  %354 = phi i32 [ 0, %252 ], [ %1033, %1028 ]
  %355 = phi i32 [ 0, %252 ], [ %1032, %1028 ]
  %356 = phi i32 [ 0, %252 ], [ %1031, %1028 ]
  %357 = phi i32 [ 0, %252 ], [ %1034, %1028 ]
  %358 = phi ptr [ null, %252 ], [ %1030, %1028 ]
  %359 = phi ptr [ null, %252 ], [ %1029, %1028 ]
  %360 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %353, i64 0, i32 2
  %361 = load ptr, ptr %360, align 8, !tbaa !127
  %362 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %353, i64 0, i32 7
  %363 = load i32, ptr %362, align 8, !tbaa !129
  %364 = and i32 %363, %4
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %1028, label %366

366:                                              ; preds = %352
  %367 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %353, i64 0, i32 11
  %368 = load i16, ptr %367, align 8, !tbaa !130
  %369 = and i16 %368, 3
  %370 = icmp eq i16 %369, 0
  br i1 %370, label %373, label %371

371:                                              ; preds = %366
  %372 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %353, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %15, ptr noundef %6, ptr noundef nonnull %372) #14
  br label %374

373:                                              ; preds = %366
  call void @copy_m4_m4(ptr noundef nonnull %15, ptr noundef %6) #14
  br label %374

374:                                              ; preds = %373, %371
  %375 = load ptr, ptr %360, align 8, !tbaa !127
  %376 = getelementptr inbounds %struct.ObjectRen, ptr %375, i64 0, i32 9
  %377 = call i32 @clip_render_object(ptr noundef nonnull %376, ptr noundef nonnull %16, ptr noundef nonnull %15) #14
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %1028

379:                                              ; preds = %374
  %380 = getelementptr inbounds %struct.ObjectRen, ptr %361, i64 0, i32 10
  %381 = load i32, ptr %380, align 8, !tbaa !131
  %382 = call i32 @llvm.smin.i32(i32 %381, i32 256)
  %383 = sext i32 %382 to i64
  %384 = mul nsw i64 %383, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %13, i8 0, i64 %384, i1 false)
  %385 = icmp sgt i32 %381, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %379
  %387 = zext nneg i32 %382 to i64
  br label %394

388:                                              ; preds = %394, %379
  %389 = getelementptr inbounds %struct.ObjectRen, ptr %361, i64 0, i32 11
  %390 = load i32, ptr %389, align 4, !tbaa !133
  %391 = icmp sgt i32 %390, 0
  br i1 %391, label %392, label %1018

392:                                              ; preds = %388
  %393 = getelementptr inbounds %struct.ObjectRen, ptr %361, i64 0, i32 19
  br label %399

394:                                              ; preds = %386, %394
  %395 = phi i64 [ 0, %386 ], [ %397, %394 ]
  %396 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %395
  store i32 -1, ptr %396, align 8, !tbaa !134
  %397 = add nuw nsw i64 %395, 1
  %398 = icmp eq i64 %397, %387
  br i1 %398, label %388, label %394, !llvm.loop !136

399:                                              ; preds = %392, %1012
  %400 = phi i32 [ %354, %392 ], [ %443, %1012 ]
  %401 = phi i32 [ %355, %392 ], [ %1014, %1012 ]
  %402 = phi i32 [ %356, %392 ], [ %1013, %1012 ]
  %403 = phi i32 [ 0, %392 ], [ %1015, %1012 ]
  %404 = phi ptr [ %358, %392 ], [ %442, %1012 ]
  %405 = phi ptr [ %359, %392 ], [ %417, %1012 ]
  %406 = and i32 %403, 255
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %414

408:                                              ; preds = %399
  %409 = load ptr, ptr %393, align 8, !tbaa !137
  %410 = lshr exact i32 %403, 8
  %411 = zext nneg i32 %410 to i64
  %412 = getelementptr inbounds %struct.VlakTableNode, ptr %409, i64 %411
  %413 = load ptr, ptr %412, align 8, !tbaa !138
  br label %416

414:                                              ; preds = %399
  %415 = getelementptr inbounds %struct.VlakRen, ptr %405, i64 1
  br label %416

416:                                              ; preds = %414, %408
  %417 = phi ptr [ %413, %408 ], [ %415, %414 ]
  %418 = getelementptr inbounds %struct.VlakRen, ptr %417, i64 0, i32 5
  %419 = load ptr, ptr %418, align 8, !tbaa !140
  %420 = icmp eq ptr %419, %404
  br i1 %420, label %441, label %421

421:                                              ; preds = %416
  br i1 %254, label %435, label %422

422:                                              ; preds = %421
  %423 = getelementptr inbounds %struct.Material, ptr %419, i64 0, i32 53
  %424 = load i32, ptr %423, align 4, !tbaa !180
  %425 = and i32 %424, 1
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %432, label %427

427:                                              ; preds = %422
  %428 = getelementptr inbounds %struct.Material, ptr %419, i64 0, i32 51
  %429 = load i32, ptr %428, align 4, !tbaa !142
  %430 = and i32 %429, 33554432
  %431 = icmp ne i32 %430, 0
  br label %432

432:                                              ; preds = %427, %422
  %433 = phi i1 [ false, %422 ], [ %431, %427 ]
  %434 = zext i1 %433 to i32
  br label %441

435:                                              ; preds = %421
  %436 = getelementptr inbounds %struct.Material, ptr %419, i64 0, i32 51
  %437 = load i32, ptr %436, align 4, !tbaa !142
  %438 = and i32 %437, 73792
  %439 = icmp eq i32 %438, 65600
  %440 = zext i1 %439 to i32
  br label %441

441:                                              ; preds = %432, %435, %416
  %442 = phi ptr [ %419, %432 ], [ %419, %435 ], [ %404, %416 ]
  %443 = phi i32 [ %434, %432 ], [ %440, %435 ], [ %400, %416 ]
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %1012, label %445

445:                                              ; preds = %441
  %446 = getelementptr inbounds %struct.VlakRen, ptr %417, i64 0, i32 7
  %447 = load i8, ptr %446, align 1, !tbaa !148
  %448 = and i8 %447, 2
  %449 = icmp eq i8 %448, 0
  br i1 %449, label %450, label %1012

450:                                              ; preds = %445
  %451 = load i32, ptr %362, align 8, !tbaa !129
  %452 = and i32 %451, %4
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %1012, label %454

454:                                              ; preds = %450
  %455 = load ptr, ptr %417, align 8, !tbaa !149
  %456 = getelementptr inbounds %struct.VlakRen, ptr %417, i64 0, i32 1
  %457 = load ptr, ptr %456, align 8, !tbaa !150
  %458 = getelementptr inbounds %struct.VlakRen, ptr %417, i64 0, i32 2
  %459 = load ptr, ptr %458, align 8, !tbaa !151
  %460 = getelementptr inbounds %struct.VlakRen, ptr %417, i64 0, i32 3
  %461 = load ptr, ptr %460, align 8, !tbaa !152
  %462 = getelementptr inbounds %struct.VertRen, ptr %455, i64 0, i32 5
  %463 = load i32, ptr %462, align 8, !tbaa !153
  %464 = and i32 %463, 255
  %465 = zext nneg i32 %464 to i64
  %466 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %465
  %467 = load i32, ptr %466, align 8, !tbaa !134
  %468 = icmp eq i32 %467, %463
  br i1 %468, label %469, label %480

469:                                              ; preds = %454
  %470 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %465, i32 2
  %471 = load float, ptr %470, align 8, !tbaa !50
  store float %471, ptr %17, align 16, !tbaa !50
  %472 = getelementptr inbounds float, ptr %470, i64 1
  %473 = load float, ptr %472, align 4, !tbaa !50
  store float %473, ptr %273, align 4, !tbaa !50
  %474 = getelementptr inbounds float, ptr %470, i64 2
  %475 = load float, ptr %474, align 8, !tbaa !50
  store float %475, ptr %274, align 8, !tbaa !50
  %476 = getelementptr inbounds float, ptr %470, i64 3
  %477 = load float, ptr %476, align 4, !tbaa !50
  store float %477, ptr %275, align 4, !tbaa !50
  %478 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %465, i32 1
  %479 = load i32, ptr %478, align 4, !tbaa !155
  br label %546

480:                                              ; preds = %454
  %481 = load float, ptr %455, align 4, !tbaa !50
  %482 = getelementptr inbounds float, ptr %455, i64 1
  %483 = load float, ptr %482, align 4, !tbaa !50
  %484 = getelementptr inbounds float, ptr %455, i64 2
  %485 = load float, ptr %484, align 4, !tbaa !50
  %486 = load float, ptr %15, align 16, !tbaa !50
  %487 = load float, ptr %255, align 16, !tbaa !50
  %488 = fmul float %483, %487
  %489 = call float @llvm.fmuladd.f32(float %481, float %486, float %488)
  %490 = load float, ptr %256, align 16, !tbaa !50
  %491 = call float @llvm.fmuladd.f32(float %485, float %490, float %489)
  %492 = load float, ptr %257, align 16, !tbaa !50
  %493 = fadd float %492, %491
  store float %493, ptr %17, align 16, !tbaa !50
  %494 = load float, ptr %258, align 4, !tbaa !50
  %495 = load float, ptr %259, align 4, !tbaa !50
  %496 = fmul float %483, %495
  %497 = call float @llvm.fmuladd.f32(float %481, float %494, float %496)
  %498 = load float, ptr %260, align 4, !tbaa !50
  %499 = call float @llvm.fmuladd.f32(float %485, float %498, float %497)
  %500 = load float, ptr %261, align 4, !tbaa !50
  %501 = fadd float %500, %499
  store float %501, ptr %262, align 4, !tbaa !50
  %502 = load float, ptr %263, align 8, !tbaa !50
  %503 = load float, ptr %264, align 8, !tbaa !50
  %504 = fmul float %483, %503
  %505 = call float @llvm.fmuladd.f32(float %481, float %502, float %504)
  %506 = load float, ptr %265, align 8, !tbaa !50
  %507 = call float @llvm.fmuladd.f32(float %485, float %506, float %505)
  %508 = load float, ptr %266, align 8, !tbaa !50
  %509 = fadd float %508, %507
  store float %509, ptr %267, align 8, !tbaa !50
  %510 = load float, ptr %268, align 4, !tbaa !50
  %511 = load float, ptr %269, align 4, !tbaa !50
  %512 = fmul float %483, %511
  %513 = call float @llvm.fmuladd.f32(float %481, float %510, float %512)
  %514 = load float, ptr %270, align 4, !tbaa !50
  %515 = call float @llvm.fmuladd.f32(float %485, float %514, float %513)
  %516 = load float, ptr %271, align 4, !tbaa !50
  %517 = fadd float %516, %515
  store float %517, ptr %272, align 4, !tbaa !50
  %518 = load float, ptr %16, align 16, !tbaa !50
  %519 = fmul float %517, %518
  %520 = fcmp olt float %493, %519
  br i1 %520, label %526, label %521

521:                                              ; preds = %480
  %522 = load float, ptr %36, align 4, !tbaa !50
  %523 = fmul float %517, %522
  %524 = fcmp ogt float %493, %523
  br i1 %524, label %525, label %526

525:                                              ; preds = %521
  br label %526

526:                                              ; preds = %525, %521, %480
  %527 = phi i32 [ 2, %525 ], [ 0, %521 ], [ 1, %480 ]
  %528 = load float, ptr %53, align 4, !tbaa !50
  %529 = fmul float %517, %528
  %530 = fcmp ogt float %501, %529
  br i1 %530, label %531, label %533

531:                                              ; preds = %526
  %532 = or disjoint i32 %527, 4
  br label %539

533:                                              ; preds = %526
  %534 = load float, ptr %45, align 8, !tbaa !50
  %535 = fmul float %517, %534
  %536 = fcmp olt float %501, %535
  br i1 %536, label %537, label %539

537:                                              ; preds = %533
  %538 = or disjoint i32 %527, 8
  br label %539

539:                                              ; preds = %537, %533, %531
  %540 = phi i32 [ %532, %531 ], [ %538, %537 ], [ %527, %533 ]
  %541 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %465, i32 2
  store float %493, ptr %541, align 8, !tbaa !50
  %542 = getelementptr inbounds float, ptr %541, i64 1
  store float %501, ptr %542, align 4, !tbaa !50
  %543 = getelementptr inbounds float, ptr %541, i64 2
  store float %509, ptr %543, align 8, !tbaa !50
  %544 = getelementptr inbounds float, ptr %541, i64 3
  store float %517, ptr %544, align 4, !tbaa !50
  %545 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %465, i32 1
  store i32 %540, ptr %545, align 4, !tbaa !155
  store i32 %463, ptr %466, align 8, !tbaa !134
  br label %546

546:                                              ; preds = %469, %539
  %547 = phi float [ %477, %469 ], [ %517, %539 ]
  %548 = phi float [ %475, %469 ], [ %509, %539 ]
  %549 = phi float [ %473, %469 ], [ %501, %539 ]
  %550 = phi float [ %471, %469 ], [ %493, %539 ]
  %551 = phi i32 [ %479, %469 ], [ %540, %539 ]
  %552 = getelementptr inbounds %struct.VertRen, ptr %457, i64 0, i32 5
  %553 = load i32, ptr %552, align 8, !tbaa !153
  %554 = and i32 %553, 255
  %555 = zext nneg i32 %554 to i64
  %556 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %555
  %557 = load i32, ptr %556, align 8, !tbaa !134
  %558 = icmp eq i32 %557, %553
  br i1 %558, label %559, label %570

559:                                              ; preds = %546
  %560 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %555, i32 2
  %561 = load float, ptr %560, align 8, !tbaa !50
  store float %561, ptr %18, align 16, !tbaa !50
  %562 = getelementptr inbounds float, ptr %560, i64 1
  %563 = load float, ptr %562, align 4, !tbaa !50
  store float %563, ptr %294, align 4, !tbaa !50
  %564 = getelementptr inbounds float, ptr %560, i64 2
  %565 = load float, ptr %564, align 8, !tbaa !50
  store float %565, ptr %295, align 8, !tbaa !50
  %566 = getelementptr inbounds float, ptr %560, i64 3
  %567 = load float, ptr %566, align 4, !tbaa !50
  store float %567, ptr %296, align 4, !tbaa !50
  %568 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %555, i32 1
  %569 = load i32, ptr %568, align 4, !tbaa !155
  br label %636

570:                                              ; preds = %546
  %571 = load float, ptr %457, align 4, !tbaa !50
  %572 = getelementptr inbounds float, ptr %457, i64 1
  %573 = load float, ptr %572, align 4, !tbaa !50
  %574 = getelementptr inbounds float, ptr %457, i64 2
  %575 = load float, ptr %574, align 4, !tbaa !50
  %576 = load float, ptr %15, align 16, !tbaa !50
  %577 = load float, ptr %276, align 16, !tbaa !50
  %578 = fmul float %573, %577
  %579 = call float @llvm.fmuladd.f32(float %571, float %576, float %578)
  %580 = load float, ptr %277, align 16, !tbaa !50
  %581 = call float @llvm.fmuladd.f32(float %575, float %580, float %579)
  %582 = load float, ptr %278, align 16, !tbaa !50
  %583 = fadd float %582, %581
  store float %583, ptr %18, align 16, !tbaa !50
  %584 = load float, ptr %279, align 4, !tbaa !50
  %585 = load float, ptr %280, align 4, !tbaa !50
  %586 = fmul float %573, %585
  %587 = call float @llvm.fmuladd.f32(float %571, float %584, float %586)
  %588 = load float, ptr %281, align 4, !tbaa !50
  %589 = call float @llvm.fmuladd.f32(float %575, float %588, float %587)
  %590 = load float, ptr %282, align 4, !tbaa !50
  %591 = fadd float %590, %589
  store float %591, ptr %283, align 4, !tbaa !50
  %592 = load float, ptr %284, align 8, !tbaa !50
  %593 = load float, ptr %285, align 8, !tbaa !50
  %594 = fmul float %573, %593
  %595 = call float @llvm.fmuladd.f32(float %571, float %592, float %594)
  %596 = load float, ptr %286, align 8, !tbaa !50
  %597 = call float @llvm.fmuladd.f32(float %575, float %596, float %595)
  %598 = load float, ptr %287, align 8, !tbaa !50
  %599 = fadd float %598, %597
  store float %599, ptr %288, align 8, !tbaa !50
  %600 = load float, ptr %289, align 4, !tbaa !50
  %601 = load float, ptr %290, align 4, !tbaa !50
  %602 = fmul float %573, %601
  %603 = call float @llvm.fmuladd.f32(float %571, float %600, float %602)
  %604 = load float, ptr %291, align 4, !tbaa !50
  %605 = call float @llvm.fmuladd.f32(float %575, float %604, float %603)
  %606 = load float, ptr %292, align 4, !tbaa !50
  %607 = fadd float %606, %605
  store float %607, ptr %293, align 4, !tbaa !50
  %608 = load float, ptr %16, align 16, !tbaa !50
  %609 = fmul float %607, %608
  %610 = fcmp olt float %583, %609
  br i1 %610, label %616, label %611

611:                                              ; preds = %570
  %612 = load float, ptr %36, align 4, !tbaa !50
  %613 = fmul float %607, %612
  %614 = fcmp ogt float %583, %613
  br i1 %614, label %615, label %616

615:                                              ; preds = %611
  br label %616

616:                                              ; preds = %615, %611, %570
  %617 = phi i32 [ 2, %615 ], [ 0, %611 ], [ 1, %570 ]
  %618 = load float, ptr %53, align 4, !tbaa !50
  %619 = fmul float %607, %618
  %620 = fcmp ogt float %591, %619
  br i1 %620, label %621, label %623

621:                                              ; preds = %616
  %622 = or disjoint i32 %617, 4
  br label %629

623:                                              ; preds = %616
  %624 = load float, ptr %45, align 8, !tbaa !50
  %625 = fmul float %607, %624
  %626 = fcmp olt float %591, %625
  br i1 %626, label %627, label %629

627:                                              ; preds = %623
  %628 = or disjoint i32 %617, 8
  br label %629

629:                                              ; preds = %627, %623, %621
  %630 = phi i32 [ %622, %621 ], [ %628, %627 ], [ %617, %623 ]
  %631 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %555, i32 2
  store float %583, ptr %631, align 8, !tbaa !50
  %632 = getelementptr inbounds float, ptr %631, i64 1
  store float %591, ptr %632, align 4, !tbaa !50
  %633 = getelementptr inbounds float, ptr %631, i64 2
  store float %599, ptr %633, align 8, !tbaa !50
  %634 = getelementptr inbounds float, ptr %631, i64 3
  store float %607, ptr %634, align 4, !tbaa !50
  %635 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %555, i32 1
  store i32 %630, ptr %635, align 4, !tbaa !155
  store i32 %553, ptr %556, align 8, !tbaa !134
  br label %636

636:                                              ; preds = %559, %629
  %637 = phi float [ %567, %559 ], [ %607, %629 ]
  %638 = phi float [ %565, %559 ], [ %599, %629 ]
  %639 = phi float [ %563, %559 ], [ %591, %629 ]
  %640 = phi float [ %561, %559 ], [ %583, %629 ]
  %641 = phi i32 [ %569, %559 ], [ %630, %629 ]
  %642 = getelementptr inbounds %struct.VertRen, ptr %459, i64 0, i32 5
  %643 = load i32, ptr %642, align 8, !tbaa !153
  %644 = and i32 %643, 255
  %645 = zext nneg i32 %644 to i64
  %646 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %645
  %647 = load i32, ptr %646, align 8, !tbaa !134
  %648 = icmp eq i32 %647, %643
  br i1 %648, label %649, label %660

649:                                              ; preds = %636
  %650 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %645, i32 2
  %651 = load float, ptr %650, align 8, !tbaa !50
  store float %651, ptr %19, align 16, !tbaa !50
  %652 = getelementptr inbounds float, ptr %650, i64 1
  %653 = load float, ptr %652, align 4, !tbaa !50
  store float %653, ptr %315, align 4, !tbaa !50
  %654 = getelementptr inbounds float, ptr %650, i64 2
  %655 = load float, ptr %654, align 8, !tbaa !50
  store float %655, ptr %316, align 8, !tbaa !50
  %656 = getelementptr inbounds float, ptr %650, i64 3
  %657 = load float, ptr %656, align 4, !tbaa !50
  store float %657, ptr %317, align 4, !tbaa !50
  %658 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %645, i32 1
  %659 = load i32, ptr %658, align 4, !tbaa !155
  br label %726

660:                                              ; preds = %636
  %661 = load float, ptr %459, align 4, !tbaa !50
  %662 = getelementptr inbounds float, ptr %459, i64 1
  %663 = load float, ptr %662, align 4, !tbaa !50
  %664 = getelementptr inbounds float, ptr %459, i64 2
  %665 = load float, ptr %664, align 4, !tbaa !50
  %666 = load float, ptr %15, align 16, !tbaa !50
  %667 = load float, ptr %297, align 16, !tbaa !50
  %668 = fmul float %663, %667
  %669 = call float @llvm.fmuladd.f32(float %661, float %666, float %668)
  %670 = load float, ptr %298, align 16, !tbaa !50
  %671 = call float @llvm.fmuladd.f32(float %665, float %670, float %669)
  %672 = load float, ptr %299, align 16, !tbaa !50
  %673 = fadd float %672, %671
  store float %673, ptr %19, align 16, !tbaa !50
  %674 = load float, ptr %300, align 4, !tbaa !50
  %675 = load float, ptr %301, align 4, !tbaa !50
  %676 = fmul float %663, %675
  %677 = call float @llvm.fmuladd.f32(float %661, float %674, float %676)
  %678 = load float, ptr %302, align 4, !tbaa !50
  %679 = call float @llvm.fmuladd.f32(float %665, float %678, float %677)
  %680 = load float, ptr %303, align 4, !tbaa !50
  %681 = fadd float %680, %679
  store float %681, ptr %304, align 4, !tbaa !50
  %682 = load float, ptr %305, align 8, !tbaa !50
  %683 = load float, ptr %306, align 8, !tbaa !50
  %684 = fmul float %663, %683
  %685 = call float @llvm.fmuladd.f32(float %661, float %682, float %684)
  %686 = load float, ptr %307, align 8, !tbaa !50
  %687 = call float @llvm.fmuladd.f32(float %665, float %686, float %685)
  %688 = load float, ptr %308, align 8, !tbaa !50
  %689 = fadd float %688, %687
  store float %689, ptr %309, align 8, !tbaa !50
  %690 = load float, ptr %310, align 4, !tbaa !50
  %691 = load float, ptr %311, align 4, !tbaa !50
  %692 = fmul float %663, %691
  %693 = call float @llvm.fmuladd.f32(float %661, float %690, float %692)
  %694 = load float, ptr %312, align 4, !tbaa !50
  %695 = call float @llvm.fmuladd.f32(float %665, float %694, float %693)
  %696 = load float, ptr %313, align 4, !tbaa !50
  %697 = fadd float %696, %695
  store float %697, ptr %314, align 4, !tbaa !50
  %698 = load float, ptr %16, align 16, !tbaa !50
  %699 = fmul float %697, %698
  %700 = fcmp olt float %673, %699
  br i1 %700, label %706, label %701

701:                                              ; preds = %660
  %702 = load float, ptr %36, align 4, !tbaa !50
  %703 = fmul float %697, %702
  %704 = fcmp ogt float %673, %703
  br i1 %704, label %705, label %706

705:                                              ; preds = %701
  br label %706

706:                                              ; preds = %705, %701, %660
  %707 = phi i32 [ 2, %705 ], [ 0, %701 ], [ 1, %660 ]
  %708 = load float, ptr %53, align 4, !tbaa !50
  %709 = fmul float %697, %708
  %710 = fcmp ogt float %681, %709
  br i1 %710, label %711, label %713

711:                                              ; preds = %706
  %712 = or disjoint i32 %707, 4
  br label %719

713:                                              ; preds = %706
  %714 = load float, ptr %45, align 8, !tbaa !50
  %715 = fmul float %697, %714
  %716 = fcmp olt float %681, %715
  br i1 %716, label %717, label %719

717:                                              ; preds = %713
  %718 = or disjoint i32 %707, 8
  br label %719

719:                                              ; preds = %717, %713, %711
  %720 = phi i32 [ %712, %711 ], [ %718, %717 ], [ %707, %713 ]
  %721 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %645, i32 2
  store float %673, ptr %721, align 8, !tbaa !50
  %722 = getelementptr inbounds float, ptr %721, i64 1
  store float %681, ptr %722, align 4, !tbaa !50
  %723 = getelementptr inbounds float, ptr %721, i64 2
  store float %689, ptr %723, align 8, !tbaa !50
  %724 = getelementptr inbounds float, ptr %721, i64 3
  store float %697, ptr %724, align 4, !tbaa !50
  %725 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %645, i32 1
  store i32 %720, ptr %725, align 4, !tbaa !155
  store i32 %643, ptr %646, align 8, !tbaa !134
  br label %726

726:                                              ; preds = %649, %719
  %727 = phi float [ %657, %649 ], [ %697, %719 ]
  %728 = phi float [ %655, %649 ], [ %689, %719 ]
  %729 = phi float [ %653, %649 ], [ %681, %719 ]
  %730 = phi float [ %651, %649 ], [ %673, %719 ]
  %731 = phi i32 [ %659, %649 ], [ %720, %719 ]
  %732 = and i32 %641, %551
  %733 = and i32 %732, %731
  %734 = icmp eq ptr %461, null
  br i1 %734, label %823, label %735

735:                                              ; preds = %726
  %736 = getelementptr inbounds %struct.VertRen, ptr %461, i64 0, i32 5
  %737 = load i32, ptr %736, align 8, !tbaa !153
  %738 = and i32 %737, 255
  %739 = zext nneg i32 %738 to i64
  %740 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %739
  %741 = load i32, ptr %740, align 8, !tbaa !134
  %742 = icmp eq i32 %741, %737
  br i1 %742, label %743, label %754

743:                                              ; preds = %735
  %744 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %739, i32 2
  %745 = load float, ptr %744, align 8, !tbaa !50
  store float %745, ptr %20, align 16, !tbaa !50
  %746 = getelementptr inbounds float, ptr %744, i64 1
  %747 = load float, ptr %746, align 4, !tbaa !50
  store float %747, ptr %336, align 4, !tbaa !50
  %748 = getelementptr inbounds float, ptr %744, i64 2
  %749 = load float, ptr %748, align 8, !tbaa !50
  store float %749, ptr %337, align 8, !tbaa !50
  %750 = getelementptr inbounds float, ptr %744, i64 3
  %751 = load float, ptr %750, align 4, !tbaa !50
  store float %751, ptr %338, align 4, !tbaa !50
  %752 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %739, i32 1
  %753 = load i32, ptr %752, align 4, !tbaa !155
  br label %820

754:                                              ; preds = %735
  %755 = load float, ptr %461, align 4, !tbaa !50
  %756 = getelementptr inbounds float, ptr %461, i64 1
  %757 = load float, ptr %756, align 4, !tbaa !50
  %758 = getelementptr inbounds float, ptr %461, i64 2
  %759 = load float, ptr %758, align 4, !tbaa !50
  %760 = load float, ptr %15, align 16, !tbaa !50
  %761 = load float, ptr %318, align 16, !tbaa !50
  %762 = fmul float %757, %761
  %763 = call float @llvm.fmuladd.f32(float %755, float %760, float %762)
  %764 = load float, ptr %319, align 16, !tbaa !50
  %765 = call float @llvm.fmuladd.f32(float %759, float %764, float %763)
  %766 = load float, ptr %320, align 16, !tbaa !50
  %767 = fadd float %766, %765
  store float %767, ptr %20, align 16, !tbaa !50
  %768 = load float, ptr %321, align 4, !tbaa !50
  %769 = load float, ptr %322, align 4, !tbaa !50
  %770 = fmul float %757, %769
  %771 = call float @llvm.fmuladd.f32(float %755, float %768, float %770)
  %772 = load float, ptr %323, align 4, !tbaa !50
  %773 = call float @llvm.fmuladd.f32(float %759, float %772, float %771)
  %774 = load float, ptr %324, align 4, !tbaa !50
  %775 = fadd float %774, %773
  store float %775, ptr %325, align 4, !tbaa !50
  %776 = load float, ptr %326, align 8, !tbaa !50
  %777 = load float, ptr %327, align 8, !tbaa !50
  %778 = fmul float %757, %777
  %779 = call float @llvm.fmuladd.f32(float %755, float %776, float %778)
  %780 = load float, ptr %328, align 8, !tbaa !50
  %781 = call float @llvm.fmuladd.f32(float %759, float %780, float %779)
  %782 = load float, ptr %329, align 8, !tbaa !50
  %783 = fadd float %782, %781
  store float %783, ptr %330, align 8, !tbaa !50
  %784 = load float, ptr %331, align 4, !tbaa !50
  %785 = load float, ptr %332, align 4, !tbaa !50
  %786 = fmul float %757, %785
  %787 = call float @llvm.fmuladd.f32(float %755, float %784, float %786)
  %788 = load float, ptr %333, align 4, !tbaa !50
  %789 = call float @llvm.fmuladd.f32(float %759, float %788, float %787)
  %790 = load float, ptr %334, align 4, !tbaa !50
  %791 = fadd float %790, %789
  store float %791, ptr %335, align 4, !tbaa !50
  %792 = load float, ptr %16, align 16, !tbaa !50
  %793 = fmul float %791, %792
  %794 = fcmp olt float %767, %793
  br i1 %794, label %800, label %795

795:                                              ; preds = %754
  %796 = load float, ptr %36, align 4, !tbaa !50
  %797 = fmul float %791, %796
  %798 = fcmp ogt float %767, %797
  br i1 %798, label %799, label %800

799:                                              ; preds = %795
  br label %800

800:                                              ; preds = %799, %795, %754
  %801 = phi i32 [ 2, %799 ], [ 0, %795 ], [ 1, %754 ]
  %802 = load float, ptr %53, align 4, !tbaa !50
  %803 = fmul float %791, %802
  %804 = fcmp ogt float %775, %803
  br i1 %804, label %805, label %807

805:                                              ; preds = %800
  %806 = or disjoint i32 %801, 4
  br label %813

807:                                              ; preds = %800
  %808 = load float, ptr %45, align 8, !tbaa !50
  %809 = fmul float %791, %808
  %810 = fcmp olt float %775, %809
  br i1 %810, label %811, label %813

811:                                              ; preds = %807
  %812 = or disjoint i32 %801, 8
  br label %813

813:                                              ; preds = %811, %807, %805
  %814 = phi i32 [ %806, %805 ], [ %812, %811 ], [ %801, %807 ]
  %815 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %739, i32 2
  store float %767, ptr %815, align 8, !tbaa !50
  %816 = getelementptr inbounds float, ptr %815, i64 1
  store float %775, ptr %816, align 4, !tbaa !50
  %817 = getelementptr inbounds float, ptr %815, i64 2
  store float %783, ptr %817, align 8, !tbaa !50
  %818 = getelementptr inbounds float, ptr %815, i64 3
  store float %791, ptr %818, align 4, !tbaa !50
  %819 = getelementptr inbounds %struct.ZbufProjectCache, ptr %13, i64 %739, i32 1
  store i32 %814, ptr %819, align 4, !tbaa !155
  store i32 %737, ptr %740, align 8, !tbaa !134
  br label %820

820:                                              ; preds = %743, %813
  %821 = phi i32 [ %753, %743 ], [ %814, %813 ]
  %822 = and i32 %821, %733
  br label %823

823:                                              ; preds = %820, %726
  %824 = phi i32 [ %821, %820 ], [ %401, %726 ]
  %825 = phi i32 [ %822, %820 ], [ %733, %726 ]
  %826 = and i32 %825, 65535
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %828, label %1003

828:                                              ; preds = %823
  br i1 %339, label %829, label %852

829:                                              ; preds = %828
  %830 = getelementptr inbounds %struct.Material, ptr %442, i64 0, i32 24
  %831 = load float, ptr %830, align 4, !tbaa !281
  %832 = fcmp une float %831, 0.000000e+00
  br i1 %832, label %833, label %852

833:                                              ; preds = %829
  %834 = fdiv float %548, %547
  %835 = fadd float %834, 1.000000e+00
  %836 = fmul float %835, 0x41E0000000000000
  %837 = getelementptr inbounds float, ptr %455, i64 2
  %838 = load float, ptr %837, align 4, !tbaa !50
  %839 = fsub float %838, %831
  %840 = load float, ptr %340, align 8, !tbaa !50
  %841 = load float, ptr %341, align 8, !tbaa !50
  %842 = call float @llvm.fmuladd.f32(float %839, float %840, float %841)
  %843 = load float, ptr %342, align 4, !tbaa !50
  %844 = load float, ptr %343, align 4, !tbaa !50
  %845 = call float @llvm.fmuladd.f32(float %839, float %843, float %844)
  %846 = fdiv float %842, %845
  %847 = fadd float %846, 1.000000e+00
  %848 = fmul float %847, 0x41E0000000000000
  %849 = fsub float %836, %848
  %850 = call float @llvm.fabs.f32(float %849)
  %851 = fptosi float %850 to i32
  br label %852

852:                                              ; preds = %828, %829, %833
  %853 = phi i32 [ %851, %833 ], [ 0, %829 ], [ 0, %828 ]
  %854 = add nuw nsw i32 %403, 1
  %855 = call float @llvm.fabs.f32(float %547)
  %856 = fadd float %855, 0x3E80000000000000
  %857 = fneg float %856
  %858 = fcmp olt float %550, %857
  br i1 %858, label %862, label %859

859:                                              ; preds = %852
  %860 = fcmp ogt float %550, %856
  br i1 %860, label %861, label %862

861:                                              ; preds = %859
  br label %862

862:                                              ; preds = %861, %859, %852
  %863 = phi i16 [ 2, %861 ], [ 0, %859 ], [ 1, %852 ]
  %864 = fcmp ogt float %549, %856
  br i1 %864, label %865, label %867

865:                                              ; preds = %862
  %866 = or disjoint i16 %863, 4
  br label %871

867:                                              ; preds = %862
  %868 = fcmp olt float %549, %857
  br i1 %868, label %869, label %871

869:                                              ; preds = %867
  %870 = or disjoint i16 %863, 8
  br label %871

871:                                              ; preds = %869, %867, %865
  %872 = phi i16 [ %866, %865 ], [ %870, %869 ], [ %863, %867 ]
  %873 = fcmp olt float %548, %857
  br i1 %873, label %874, label %876

874:                                              ; preds = %871
  %875 = add nsw i16 %872, 16
  br label %880

876:                                              ; preds = %871
  %877 = fcmp ogt float %548, %856
  br i1 %877, label %878, label %880

878:                                              ; preds = %876
  %879 = add nsw i16 %872, 32
  br label %880

880:                                              ; preds = %874, %876, %878
  %881 = phi i16 [ %875, %874 ], [ %879, %878 ], [ %872, %876 ]
  %882 = zext nneg i16 %881 to i32
  %883 = call float @llvm.fabs.f32(float %637)
  %884 = fadd float %883, 0x3E80000000000000
  %885 = fneg float %884
  %886 = fcmp olt float %640, %885
  br i1 %886, label %890, label %887

887:                                              ; preds = %880
  %888 = fcmp ogt float %640, %884
  br i1 %888, label %889, label %890

889:                                              ; preds = %887
  br label %890

890:                                              ; preds = %889, %887, %880
  %891 = phi i16 [ 2, %889 ], [ 0, %887 ], [ 1, %880 ]
  %892 = fcmp ogt float %639, %884
  br i1 %892, label %893, label %895

893:                                              ; preds = %890
  %894 = or disjoint i16 %891, 4
  br label %899

895:                                              ; preds = %890
  %896 = fcmp olt float %639, %885
  br i1 %896, label %897, label %899

897:                                              ; preds = %895
  %898 = or disjoint i16 %891, 8
  br label %899

899:                                              ; preds = %897, %895, %893
  %900 = phi i16 [ %894, %893 ], [ %898, %897 ], [ %891, %895 ]
  %901 = fcmp olt float %638, %885
  br i1 %901, label %902, label %904

902:                                              ; preds = %899
  %903 = add nsw i16 %900, 16
  br label %908

904:                                              ; preds = %899
  %905 = fcmp ogt float %638, %884
  br i1 %905, label %906, label %908

906:                                              ; preds = %904
  %907 = add nsw i16 %900, 32
  br label %908

908:                                              ; preds = %902, %904, %906
  %909 = phi i16 [ %903, %902 ], [ %907, %906 ], [ %900, %904 ]
  %910 = zext nneg i16 %909 to i32
  %911 = call float @llvm.fabs.f32(float %727)
  %912 = fadd float %911, 0x3E80000000000000
  %913 = fneg float %912
  %914 = fcmp olt float %730, %913
  br i1 %914, label %918, label %915

915:                                              ; preds = %908
  %916 = fcmp ogt float %730, %912
  br i1 %916, label %917, label %918

917:                                              ; preds = %915
  br label %918

918:                                              ; preds = %917, %915, %908
  %919 = phi i16 [ 2, %917 ], [ 0, %915 ], [ 1, %908 ]
  %920 = fcmp ogt float %729, %912
  br i1 %920, label %921, label %923

921:                                              ; preds = %918
  %922 = or disjoint i16 %919, 4
  br label %927

923:                                              ; preds = %918
  %924 = fcmp olt float %729, %913
  br i1 %924, label %925, label %927

925:                                              ; preds = %923
  %926 = or disjoint i16 %919, 8
  br label %927

927:                                              ; preds = %925, %923, %921
  %928 = phi i16 [ %922, %921 ], [ %926, %925 ], [ %919, %923 ]
  %929 = fcmp olt float %728, %913
  br i1 %929, label %930, label %932

930:                                              ; preds = %927
  %931 = add nsw i16 %928, 16
  br label %936

932:                                              ; preds = %927
  %933 = fcmp ogt float %728, %912
  br i1 %933, label %934, label %936

934:                                              ; preds = %932
  %935 = add nsw i16 %928, 32
  br label %936

936:                                              ; preds = %930, %932, %934
  %937 = phi i16 [ %931, %930 ], [ %935, %934 ], [ %928, %932 ]
  %938 = zext nneg i16 %937 to i32
  br i1 %734, label %972, label %939

939:                                              ; preds = %936
  %940 = load float, ptr %344, align 4, !tbaa !50
  %941 = call float @llvm.fabs.f32(float %940)
  %942 = fadd float %941, 0x3E80000000000000
  %943 = load float, ptr %20, align 16, !tbaa !50
  %944 = fneg float %942
  %945 = fcmp olt float %943, %944
  br i1 %945, label %949, label %946

946:                                              ; preds = %939
  %947 = fcmp ogt float %943, %942
  br i1 %947, label %948, label %949

948:                                              ; preds = %946
  br label %949

949:                                              ; preds = %948, %946, %939
  %950 = phi i16 [ 2, %948 ], [ 0, %946 ], [ 1, %939 ]
  %951 = load float, ptr %345, align 4, !tbaa !50
  %952 = fcmp ogt float %951, %942
  br i1 %952, label %953, label %955

953:                                              ; preds = %949
  %954 = or disjoint i16 %950, 4
  br label %959

955:                                              ; preds = %949
  %956 = fcmp olt float %951, %944
  br i1 %956, label %957, label %959

957:                                              ; preds = %955
  %958 = or disjoint i16 %950, 8
  br label %959

959:                                              ; preds = %957, %955, %953
  %960 = phi i16 [ %954, %953 ], [ %958, %957 ], [ %950, %955 ]
  %961 = load float, ptr %346, align 8, !tbaa !50
  %962 = fcmp olt float %961, %944
  br i1 %962, label %963, label %965

963:                                              ; preds = %959
  %964 = add nsw i16 %960, 16
  br label %969

965:                                              ; preds = %959
  %966 = fcmp ogt float %961, %942
  br i1 %966, label %967, label %969

967:                                              ; preds = %965
  %968 = add nsw i16 %960, 32
  br label %969

969:                                              ; preds = %963, %965, %967
  %970 = phi i16 [ %964, %963 ], [ %968, %967 ], [ %960, %965 ]
  %971 = zext nneg i16 %970 to i32
  br label %972

972:                                              ; preds = %969, %936
  %973 = phi i32 [ %971, %969 ], [ %824, %936 ]
  br i1 %347, label %974, label %1003

974:                                              ; preds = %972
  %975 = getelementptr inbounds %struct.Material, ptr %442, i64 0, i32 2
  %976 = add nuw nsw i32 %403, 134217729
  %977 = getelementptr inbounds %struct.VlakRen, ptr %417, i64 0, i32 8
  %978 = getelementptr inbounds %struct.VlakRen, ptr %417, i64 0, i32 8
  br label %979

979:                                              ; preds = %974, %1000
  %980 = phi i64 [ 0, %974 ], [ %1001, %1000 ]
  %981 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %980
  %982 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %980, i32 26
  store i32 %853, ptr %982, align 8, !tbaa !282
  %983 = load i16, ptr %975, align 8, !tbaa !146
  %984 = icmp eq i16 %983, 3
  br i1 %984, label %985, label %992

985:                                              ; preds = %979
  br i1 %734, label %989, label %986

986:                                              ; preds = %985
  %987 = load i8, ptr %977, align 2, !tbaa !156
  %988 = zext i8 %987 to i32
  call void @zbufclipwire(ptr noundef nonnull %981, i32 noundef %357, i32 noundef %854, i32 noundef %988, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20, i32 noundef %882, i32 noundef %910, i32 noundef %938, i32 noundef %973)
  br label %1000

989:                                              ; preds = %985
  %990 = load i8, ptr %978, align 2, !tbaa !156
  %991 = zext i8 %990 to i32
  call void @zbufclipwire(ptr noundef nonnull %981, i32 noundef %357, i32 noundef %854, i32 noundef %991, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef null, i32 noundef %882, i32 noundef %910, i32 noundef %938, i32 noundef 0)
  br label %1000

992:                                              ; preds = %979
  br i1 %734, label %999, label %993

993:                                              ; preds = %992
  %994 = load i8, ptr %446, align 1, !tbaa !148
  %995 = and i8 %994, 4
  %996 = icmp eq i8 %995, 0
  br i1 %996, label %998, label %997

997:                                              ; preds = %993
  call void @zbufclip4(ptr noundef nonnull %981, i32 noundef %357, i32 noundef %854, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20, i32 noundef %882, i32 noundef %910, i32 noundef %938, i32 noundef %973)
  br label %1000

998:                                              ; preds = %993
  call void @zbufclip(ptr noundef nonnull %981, i32 noundef %357, i32 noundef %854, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, i32 noundef %882, i32 noundef %910, i32 noundef %938)
  call void @zbufclip(ptr noundef nonnull %981, i32 noundef %357, i32 noundef %976, ptr noundef nonnull %17, ptr noundef nonnull %19, ptr noundef nonnull %20, i32 noundef %882, i32 noundef %938, i32 noundef %973)
  br label %1000

999:                                              ; preds = %992
  call void @zbufclip(ptr noundef nonnull %981, i32 noundef %357, i32 noundef %854, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, i32 noundef %882, i32 noundef %910, i32 noundef %938)
  br label %1000

1000:                                             ; preds = %999, %989, %986, %998, %997
  %1001 = add nuw nsw i64 %980, 1
  %1002 = icmp eq i64 %1001, %351
  br i1 %1002, label %1003, label %979, !llvm.loop !283

1003:                                             ; preds = %1000, %972, %823
  %1004 = phi i32 [ %402, %823 ], [ %854, %972 ], [ %854, %1000 ]
  %1005 = phi i32 [ %824, %823 ], [ %973, %972 ], [ %973, %1000 ]
  %1006 = icmp eq i32 %406, 255
  br i1 %1006, label %1007, label %1012

1007:                                             ; preds = %1003
  %1008 = load ptr, ptr %253, align 8, !tbaa !181
  %1009 = load ptr, ptr %348, align 8, !tbaa !182
  %1010 = call i32 %1008(ptr noundef %1009) #14
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1012, label %1018

1012:                                             ; preds = %1003, %1007, %441, %450, %445
  %1013 = phi i32 [ %402, %445 ], [ %402, %450 ], [ %402, %441 ], [ %1004, %1007 ], [ %1004, %1003 ]
  %1014 = phi i32 [ %401, %445 ], [ %401, %450 ], [ %401, %441 ], [ %1005, %1007 ], [ %1005, %1003 ]
  %1015 = add nuw nsw i32 %403, 1
  %1016 = load i32, ptr %389, align 4, !tbaa !133
  %1017 = icmp slt i32 %1015, %1016
  br i1 %1017, label %399, label %1018, !llvm.loop !284

1018:                                             ; preds = %1012, %1007, %388
  %1019 = phi ptr [ %359, %388 ], [ %417, %1007 ], [ %417, %1012 ]
  %1020 = phi ptr [ %358, %388 ], [ %442, %1007 ], [ %442, %1012 ]
  %1021 = phi i32 [ %356, %388 ], [ %1013, %1012 ], [ %1004, %1007 ]
  %1022 = phi i32 [ %355, %388 ], [ %1014, %1012 ], [ %1005, %1007 ]
  %1023 = phi i32 [ %354, %388 ], [ %443, %1007 ], [ %443, %1012 ]
  %1024 = load ptr, ptr %349, align 8, !tbaa !181
  %1025 = load ptr, ptr %350, align 8, !tbaa !182
  %1026 = call i32 %1024(ptr noundef %1025) #14
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1028, label %1037

1028:                                             ; preds = %1018, %374, %352
  %1029 = phi ptr [ %359, %374 ], [ %1019, %1018 ], [ %359, %352 ]
  %1030 = phi ptr [ %358, %374 ], [ %1020, %1018 ], [ %358, %352 ]
  %1031 = phi i32 [ %356, %374 ], [ %1021, %1018 ], [ %356, %352 ]
  %1032 = phi i32 [ %355, %374 ], [ %1022, %1018 ], [ %355, %352 ]
  %1033 = phi i32 [ %354, %374 ], [ %1023, %1018 ], [ %354, %352 ]
  %1034 = add nuw nsw i32 %357, 1
  %1035 = load ptr, ptr %353, align 8, !tbaa !42
  %1036 = icmp eq ptr %1035, null
  br i1 %1036, label %1037, label %352, !llvm.loop !285

1037:                                             ; preds = %1028, %1018, %248
  %1038 = phi i32 [ 0, %248 ], [ %1031, %1028 ], [ %1021, %1018 ]
  %1039 = icmp sgt i32 %9, 0
  br i1 %1039, label %1040, label %1067

1040:                                             ; preds = %1037
  %1041 = zext nneg i32 %9 to i64
  br label %1042

1042:                                             ; preds = %1040, %1064
  %1043 = phi i64 [ 0, %1040 ], [ %1065, %1064 ]
  %1044 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  %1045 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %1043, i32 17
  %1046 = load ptr, ptr %1045, align 16, !tbaa !265
  call void %1044(ptr noundef %1046) #14
  %1047 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %1043, i32 21
  %1048 = load ptr, ptr %1047, align 16, !tbaa !160
  %1049 = icmp eq ptr %1048, null
  br i1 %1049, label %1052, label %1050

1050:                                             ; preds = %1042
  %1051 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %1051(ptr noundef nonnull %1048) #14
  br label %1052

1052:                                             ; preds = %1050, %1042
  %1053 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %1043, i32 10
  %1054 = load ptr, ptr %1053, align 8, !tbaa !43
  %1055 = icmp eq ptr %1054, null
  br i1 %1055, label %1058, label %1056

1056:                                             ; preds = %1052
  %1057 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %1057(ptr noundef nonnull %1054) #14
  br label %1058

1058:                                             ; preds = %1056, %1052
  %1059 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %1043, i32 11
  %1060 = load ptr, ptr %1059, align 16, !tbaa !44
  %1061 = icmp eq ptr %1060, null
  br i1 %1061, label %1064, label %1062

1062:                                             ; preds = %1058
  %1063 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %1063(ptr noundef nonnull %1060) #14
  br label %1064

1064:                                             ; preds = %1058, %1062
  %1065 = add nuw nsw i64 %1043, 1
  %1066 = icmp eq i64 %1065, %1041
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1053, i8 0, i64 16, i1 false)
  br i1 %1066, label %1067, label %1042, !llvm.loop !286

1067:                                             ; preds = %1064, %1037
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 3584, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 6144, ptr nonnull %13) #14
  ret i32 %1038
}

declare i32 @zbuffer_strands_abuf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local ptr @zbuffer_transp_shade(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca %struct.ShadeSample, align 8
  %8 = alloca %struct.ListBase, align 8
  %9 = alloca [16 x %struct.ShadeResult], align 16
  %10 = alloca [2000 x %struct.ZTranspRow], align 16
  %11 = alloca [16 x ptr], align 16
  %12 = alloca %struct.ZTranspRow, align 4
  %13 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(i64 27080, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 3392, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 56000, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %11) #14
  %15 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %16 = tail call i16 @llvm.umax.i16(i16 %15, i16 1)
  %17 = sext i16 %16 to i64
  %18 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !181
  %19 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !182
  %20 = tail call i32 %18(ptr noundef %19) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %951

22:                                               ; preds = %4
  %23 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !116
  %24 = icmp sgt i16 %23, 16
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !288
  br label %951

27:                                               ; preds = %22
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %29 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %30 = load i32, ptr %29, align 8, !tbaa !113
  %31 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %32 = load i32, ptr %31, align 4, !tbaa !114
  %33 = mul nsw i32 %32, %30
  %34 = sext i32 %33 to i64
  %35 = mul nsw i64 %34, 72
  %36 = tail call ptr %28(i64 noundef %35, ptr noundef nonnull @.str.14) #14
  %37 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 63), align 4, !tbaa !290
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !104
  %42 = and i32 %41, 32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %46 = load i32, ptr %29, align 8, !tbaa !113
  %47 = load i32, ptr %31, align 4, !tbaa !114
  %48 = mul nsw i32 %47, %46
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %49, 112
  %51 = tail call ptr %45(i64 noundef %50, ptr noundef nonnull @.str.15) #14
  %52 = tail call ptr @strand_shade_cache_create() #14
  br label %53

53:                                               ; preds = %44, %39, %27
  %54 = phi ptr [ %52, %44 ], [ null, %39 ], [ null, %27 ]
  %55 = phi ptr [ %51, %44 ], [ null, %39 ], [ null, %27 ]
  call void @shade_sample_initialize(ptr noundef nonnull %7, ptr noundef %0, ptr noundef %1) #14
  %56 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 7
  %57 = load i32, ptr %56, align 4, !tbaa !291
  %58 = and i32 %57, -2
  %59 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %60 = icmp eq i16 %59, 0
  %61 = sitofp i16 %59 to float
  %62 = fdiv float 1.000000e+00, %61
  %63 = select i1 %60, float 1.000000e+00, float %62
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #14
  %64 = call i16 @llvm.umax.i16(i16 %59, i16 1)
  %65 = sext i16 %64 to i32
  %66 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 6
  %67 = load i32, ptr %66, align 8, !tbaa !104
  %68 = and i32 %67, 262144
  %69 = icmp eq i32 %68, 0
  %70 = lshr i32 %67, 19
  %71 = and i32 %70, 1
  %72 = select i1 %69, i32 0, i32 %71
  br i1 %60, label %73, label %80

73:                                               ; preds = %53
  %74 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 98, i32 8), align 2, !tbaa !117
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = sext i16 %74 to i64
  %78 = add nsw i64 %77, -1
  %79 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 40, i64 %78
  br label %80

80:                                               ; preds = %76, %73, %53
  %81 = phi ptr [ %79, %76 ], [ getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 39), %53 ], [ null, %73 ]
  %82 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !76
  %83 = and i32 %82, 1024
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  call void @unit_m4(ptr noundef nonnull %5) #14
  %86 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 27), align 4, !tbaa !92
  store float %86, ptr %5, align 16, !tbaa !50
  %87 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 26), align 8, !tbaa !93
  %88 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 2
  store float %87, ptr %88, align 8, !tbaa !50
  %89 = fneg float %87
  %90 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2
  store float %89, ptr %90, align 16, !tbaa !50
  %91 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2, i64 2
  store float %86, ptr %91, align 8, !tbaa !50
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35), ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  br label %93

92:                                               ; preds = %80
  call void @copy_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35)) #14
  br label %93

93:                                               ; preds = %85, %92
  %94 = load i32, ptr %66, align 8, !tbaa !104
  %95 = and i32 %94, 2
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 3
  %99 = load i32, ptr %98, align 4, !tbaa !101
  %100 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !107
  %101 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !108
  %102 = call fastcc i32 @zbuffer_abuf(ptr noundef nonnull @R, ptr noundef %0, ptr noundef %36, ptr noundef nonnull %8, i32 noundef %99, i32 noundef %72, ptr noundef nonnull %6, i32 noundef %100, i32 noundef %101, i32 noundef %65, ptr noundef %81, i32 noundef 0)
  br label %103

103:                                              ; preds = %97, %93
  %104 = phi i32 [ %102, %97 ], [ 0, %93 ]
  %105 = load i32, ptr %66, align 8, !tbaa !104
  %106 = and i32 %105, 32
  %107 = icmp ne i32 %106, 0
  %108 = icmp ne ptr %55, null
  %109 = and i1 %108, %107
  br i1 %109, label %110, label %118

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 3
  %112 = load i32, ptr %111, align 4, !tbaa !101
  %113 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !107
  %114 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !108
  %115 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 19), align 4, !tbaa !115
  %116 = call i32 @zbuffer_strands_abuf(ptr noundef nonnull @R, ptr noundef %0, ptr noundef nonnull %55, ptr noundef nonnull %8, i32 noundef %112, i32 noundef %72, ptr noundef nonnull %6, i32 noundef %113, i32 noundef %114, i32 noundef %65, ptr noundef %81, float noundef %115, i32 noundef 0, ptr noundef %54) #14
  %117 = add nsw i32 %116, %104
  br label %118

118:                                              ; preds = %103, %110
  %119 = phi i32 [ %117, %110 ], [ %104, %103 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #14
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %118
  %122 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %122(ptr noundef %36) #14
  %123 = icmp eq ptr %55, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %125(ptr noundef nonnull %55) #14
  br label %126

126:                                              ; preds = %124, %121
  %127 = icmp eq ptr %54, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %126
  call void @strand_shade_cache_free(ptr noundef nonnull %54) #14
  br label %129

129:                                              ; preds = %128, %126
  %130 = load ptr, ptr %8, align 8, !tbaa !51
  %131 = icmp eq ptr %130, null
  br i1 %131, label %951, label %132

132:                                              ; preds = %129, %140
  %133 = phi ptr [ %134, %140 ], [ %130, %129 ]
  %134 = load ptr, ptr %133, align 8, !tbaa !53
  %135 = getelementptr inbounds %struct.APixstrMain, ptr %133, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !55
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %132
  %139 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %139(ptr noundef nonnull %136) #14
  br label %140

140:                                              ; preds = %138, %132
  %141 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %141(ptr noundef nonnull %133) #14
  %142 = icmp eq ptr %134, null
  br i1 %142, label %951, label %132, !llvm.loop !56

143:                                              ; preds = %118
  %144 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 8
  %145 = load ptr, ptr %144, align 8, !tbaa !268
  %146 = call i32 @get_sample_layers(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11) #14
  %147 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !76
  %148 = and i32 %147, 2
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %143
  call void @ISB_create(ptr noundef %0, ptr noundef %36) #14
  br label %151

151:                                              ; preds = %150, %143
  %152 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !116
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %170, label %154

154:                                              ; preds = %151
  %155 = load i32, ptr %66, align 8, !tbaa !104
  %156 = and i32 %155, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %170, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !292
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %170

162:                                              ; preds = %158
  %163 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %164 = load i32, ptr %29, align 8, !tbaa !113
  %165 = load i32, ptr %31, align 4, !tbaa !114
  %166 = mul nsw i32 %165, %164
  %167 = sext i32 %166 to i64
  %168 = shl nsw i64 %167, 1
  %169 = call ptr %163(i64 noundef %168, ptr noundef nonnull @.str.16) #14
  br label %170

170:                                              ; preds = %162, %158, %154, %151
  %171 = phi ptr [ %169, %162 ], [ null, %158 ], [ null, %154 ], [ null, %151 ]
  %172 = and i32 %57, 512
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %217, label %174

174:                                              ; preds = %170
  %175 = load i32, ptr %66, align 8, !tbaa !104
  %176 = and i32 %175, 1
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %217, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 12
  %180 = load ptr, ptr %179, align 8, !tbaa !293
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 11
  %184 = load ptr, ptr %183, align 8, !tbaa !294
  br label %185

185:                                              ; preds = %178, %182
  %186 = phi ptr [ %184, %182 ], [ %180, %178 ]
  %187 = call ptr @RE_RenderLayerGetPass(ptr noundef %1, i32 noundef 512) #14
  %188 = icmp eq ptr %187, null
  br i1 %188, label %217, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds float, ptr %186, i64 3
  %191 = load i32, ptr %29, align 8, !tbaa !113
  %192 = shl nsw i32 %191, 2
  %193 = load i32, ptr %31, align 4, !tbaa !114
  %194 = mul nsw i32 %192, %193
  %195 = icmp sgt i32 %194, 3
  br i1 %195, label %196, label %217

196:                                              ; preds = %189
  %197 = zext nneg i32 %194 to i64
  br label %198

198:                                              ; preds = %196, %215
  %199 = phi i64 [ %197, %196 ], [ %200, %215 ]
  %200 = add nsw i64 %199, -4
  %201 = getelementptr inbounds float, ptr %190, i64 %200
  %202 = load float, ptr %201, align 4, !tbaa !50
  %203 = fcmp oeq float %202, 0.000000e+00
  br i1 %203, label %204, label %215

204:                                              ; preds = %198
  %205 = getelementptr inbounds float, ptr %187, i64 %200
  store float 1.000000e+04, ptr %205, align 4, !tbaa !50
  %206 = and i64 %200, 4294967292
  %207 = or disjoint i64 %206, 1
  %208 = getelementptr inbounds float, ptr %187, i64 %207
  store float 1.000000e+04, ptr %208, align 4, !tbaa !50
  %209 = and i64 %200, 4294967292
  %210 = or disjoint i64 %209, 2
  %211 = getelementptr inbounds float, ptr %187, i64 %210
  store float 1.000000e+04, ptr %211, align 4, !tbaa !50
  %212 = and i64 %200, 4294967292
  %213 = or disjoint i64 %212, 3
  %214 = getelementptr inbounds float, ptr %187, i64 %213
  store float 1.000000e+04, ptr %214, align 4, !tbaa !50
  br label %215

215:                                              ; preds = %204, %198
  %216 = icmp sgt i64 %199, 7
  br i1 %216, label %198, label %217, !llvm.loop !295

217:                                              ; preds = %215, %189, %185, %174, %170
  %218 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 17
  %219 = load i16, ptr %218, align 4, !tbaa !296
  %220 = icmp eq i16 %219, 0
  br i1 %220, label %230, label %221

221:                                              ; preds = %217
  %222 = load i32, ptr %29, align 8, !tbaa !113
  %223 = add nsw i32 %222, 1
  %224 = shl nsw i32 %223, 2
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, ptr %2, i64 %225
  %227 = sext i32 %223 to i64
  %228 = getelementptr inbounds %struct.APixstr, ptr %36, i64 %227
  %229 = getelementptr inbounds %struct.APixstrand, ptr %55, i64 %227
  br label %230

230:                                              ; preds = %221, %217
  %231 = phi ptr [ %226, %221 ], [ %2, %217 ]
  %232 = phi i32 [ 1, %221 ], [ 0, %217 ]
  %233 = phi i32 [ %223, %221 ], [ 0, %217 ]
  %234 = phi ptr [ %229, %221 ], [ %55, %217 ]
  %235 = phi ptr [ %228, %221 ], [ %36, %217 ]
  %236 = getelementptr inbounds %struct.RenderResult, ptr %14, i64 0, i32 13, i32 2
  store volatile i32 0, ptr %236, align 8, !tbaa !297
  %237 = sext i16 %219 to i32
  %238 = sub nsw i32 0, %237
  %239 = getelementptr inbounds %struct.RenderResult, ptr %14, i64 0, i32 13, i32 3
  store volatile i32 %238, ptr %239, align 4, !tbaa !299
  %240 = getelementptr inbounds %struct.RenderResult, ptr %14, i64 0, i32 14
  store ptr %1, ptr %240, align 8, !tbaa !300
  %241 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %242 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %243 = load i32, ptr %242, align 8, !tbaa !111
  %244 = add nsw i32 %243, %232
  %245 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 3
  %246 = load i32, ptr %245, align 4, !tbaa !112
  %247 = sub nsw i32 %246, %232
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %249, label %924

249:                                              ; preds = %230
  %250 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 1
  %251 = icmp eq ptr %55, null
  %252 = icmp eq ptr %55, null
  %253 = getelementptr inbounds %struct.ZTranspRow, ptr %10, i64 0, i32 1
  %254 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 1, i32 1
  %255 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 1
  %256 = and i32 %57, 2048
  %257 = icmp eq i32 %256, 0
  %258 = icmp slt i32 %146, 1
  %259 = and i32 %57, 262144
  %260 = icmp eq i32 %259, 0
  %261 = icmp slt i32 %146, 1
  %262 = sext i16 %16 to i64
  %263 = mul nsw i64 %262, 212
  %264 = icmp sgt i16 %16, 0
  %265 = icmp eq ptr %171, null
  %266 = icmp ne ptr %54, null
  %267 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 3
  %268 = getelementptr inbounds %struct.RenderResult, ptr %14, i64 0, i32 2
  %269 = icmp eq i32 %58, 0
  %270 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 18
  %271 = getelementptr inbounds %struct.ShadeResult, ptr %9, i64 0, i32 16
  %272 = getelementptr inbounds %struct.ShadeResult, ptr %9, i64 0, i32 16, i64 1
  %273 = getelementptr inbounds %struct.ShadeResult, ptr %9, i64 0, i32 16, i64 2
  %274 = getelementptr inbounds %struct.ShadeResult, ptr %9, i64 0, i32 16, i64 3
  %275 = getelementptr inbounds %struct.ShadeResult, ptr %9, i64 0, i32 4
  %276 = getelementptr inbounds %struct.ShadeResult, ptr %9, i64 0, i32 3
  %277 = getelementptr inbounds %struct.ShadeResult, ptr %9, i64 0, i32 15
  %278 = getelementptr inbounds %struct.ShadeResult, ptr %9, i64 0, i32 14
  %279 = getelementptr inbounds %struct.ShadeResult, ptr %9, i64 0, i32 13
  %280 = getelementptr inbounds %struct.ShadeResult, ptr %9, i64 0, i32 12
  %281 = getelementptr inbounds %struct.ShadeResult, ptr %9, i64 0, i32 11
  %282 = getelementptr inbounds %struct.ShadeResult, ptr %9, i64 0, i32 10
  %283 = getelementptr inbounds %struct.ShadeResult, ptr %9, i64 0, i32 9
  %284 = getelementptr inbounds %struct.ShadeResult, ptr %9, i64 0, i32 8
  %285 = getelementptr inbounds %struct.ShadeResult, ptr %9, i64 0, i32 6
  %286 = getelementptr inbounds %struct.ShadeResult, ptr %9, i64 0, i32 5
  %287 = getelementptr inbounds %struct.ShadeResult, ptr %9, i64 0, i32 1
  %288 = getelementptr inbounds %struct.ShadeResult, ptr %9, i64 0, i32 16
  %289 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 3
  %290 = icmp ne ptr %54, null
  %291 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  %292 = getelementptr inbounds %struct.ShadeResult, ptr %9, i64 0, i32 16
  %293 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 18
  %294 = zext i32 %146 to i64
  %295 = zext i32 %146 to i64
  br label %296

296:                                              ; preds = %249, %909
  %297 = phi ptr [ %235, %249 ], [ %912, %909 ]
  %298 = phi ptr [ %234, %249 ], [ %913, %909 ]
  %299 = phi i32 [ %233, %249 ], [ %917, %909 ]
  %300 = phi i32 [ %244, %249 ], [ %918, %909 ]
  %301 = phi ptr [ %231, %249 ], [ %916, %909 ]
  %302 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !181
  %303 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !182
  %304 = call i32 %302(ptr noundef %303) #14
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %924

306:                                              ; preds = %296
  %307 = load i32, ptr %241, align 8, !tbaa !109
  %308 = add nsw i32 %307, %232
  %309 = load i32, ptr %250, align 4, !tbaa !110
  %310 = sub nsw i32 %309, %232
  %311 = icmp slt i32 %308, %310
  br i1 %311, label %312, label %909

312:                                              ; preds = %306
  %313 = sext i32 %299 to i64
  br label %314

314:                                              ; preds = %312, %900
  %315 = phi i64 [ %313, %312 ], [ %905, %900 ]
  %316 = phi ptr [ %301, %312 ], [ %904, %900 ]
  %317 = phi ptr [ %297, %312 ], [ %902, %900 ]
  %318 = phi ptr [ %298, %312 ], [ %903, %900 ]
  %319 = phi i32 [ %308, %312 ], [ %901, %900 ]
  %320 = getelementptr inbounds %struct.APixstr, ptr %317, i64 0, i32 2
  %321 = load i32, ptr %320, align 8, !tbaa !46
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %362

323:                                              ; preds = %314
  br i1 %251, label %328, label %324

324:                                              ; preds = %323
  %325 = getelementptr inbounds %struct.APixstrand, ptr %318, i64 0, i32 2
  %326 = load i32, ptr %325, align 8, !tbaa !46
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %362

328:                                              ; preds = %324, %323
  br i1 %173, label %900, label %329

329:                                              ; preds = %328, %333
  %330 = phi ptr [ %331, %333 ], [ %293, %328 ]
  %331 = load ptr, ptr %330, align 8, !tbaa !42
  %332 = icmp eq ptr %331, null
  br i1 %332, label %900, label %333

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.RenderPass, ptr %331, i64 0, i32 2
  %335 = load i32, ptr %334, align 8, !tbaa !301
  %336 = icmp eq i32 %335, 512
  br i1 %336, label %337, label %329, !llvm.loop !303

337:                                              ; preds = %333
  %338 = getelementptr inbounds %struct.RenderPass, ptr %331, i64 0, i32 6
  %339 = load ptr, ptr %338, align 8, !tbaa !304
  %340 = trunc i64 %315 to i32
  %341 = shl nsw i32 %340, 2
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds float, ptr %339, i64 %342
  %344 = load float, ptr %343, align 4, !tbaa !50
  %345 = fcmp oeq float %344, 1.000000e+04
  br i1 %345, label %346, label %347

346:                                              ; preds = %337
  store float 0.000000e+00, ptr %343, align 4, !tbaa !50
  br label %347

347:                                              ; preds = %346, %337
  %348 = getelementptr inbounds float, ptr %343, i64 1
  %349 = load float, ptr %348, align 4, !tbaa !50
  %350 = fcmp oeq float %349, 1.000000e+04
  br i1 %350, label %351, label %352

351:                                              ; preds = %347
  store float 0.000000e+00, ptr %348, align 4, !tbaa !50
  br label %352

352:                                              ; preds = %351, %347
  %353 = getelementptr inbounds float, ptr %343, i64 2
  %354 = load float, ptr %353, align 4, !tbaa !50
  %355 = fcmp oeq float %354, 1.000000e+04
  br i1 %355, label %356, label %357

356:                                              ; preds = %352
  store float 0.000000e+00, ptr %353, align 4, !tbaa !50
  br label %357

357:                                              ; preds = %356, %352
  %358 = getelementptr inbounds float, ptr %343, i64 3
  %359 = load float, ptr %358, align 4, !tbaa !50
  %360 = fcmp oeq float %359, 1.000000e+04
  br i1 %360, label %361, label %900

361:                                              ; preds = %357
  store float 0.000000e+00, ptr %358, align 4, !tbaa !50
  br label %900

362:                                              ; preds = %324, %314
  %363 = icmp eq ptr %317, null
  br i1 %363, label %397, label %364

364:                                              ; preds = %362, %392
  %365 = phi ptr [ %395, %392 ], [ %317, %362 ]
  %366 = phi i32 [ %393, %392 ], [ 0, %362 ]
  br label %367

367:                                              ; preds = %364, %373
  %368 = phi i64 [ 0, %364 ], [ %390, %373 ]
  %369 = phi i32 [ %366, %364 ], [ %389, %373 ]
  %370 = getelementptr inbounds %struct.APixstr, ptr %365, i64 0, i32 2, i64 %368
  %371 = load i32, ptr %370, align 4, !tbaa !46
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %392, label %373

373:                                              ; preds = %367
  %374 = getelementptr inbounds %struct.APixstr, ptr %365, i64 0, i32 3, i64 %368
  %375 = load i32, ptr %374, align 4, !tbaa !46
  %376 = sext i32 %369 to i64
  %377 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 %376
  store i32 %375, ptr %377, align 4, !tbaa !305
  %378 = getelementptr inbounds %struct.APixstr, ptr %365, i64 0, i32 1, i64 %368
  %379 = load i32, ptr %378, align 4, !tbaa !46
  %380 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 %376, i32 1
  store i32 %379, ptr %380, align 4, !tbaa !307
  %381 = load i32, ptr %370, align 4, !tbaa !46
  %382 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 %376, i32 2
  store i32 %381, ptr %382, align 4, !tbaa !308
  %383 = getelementptr inbounds [4 x i16], ptr %365, i64 0, i64 %368
  %384 = load i16, ptr %383, align 2, !tbaa !309
  %385 = zext i16 %384 to i32
  %386 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 %376, i32 3
  store i32 %385, ptr %386, align 4, !tbaa !310
  %387 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 %376, i32 4
  store i32 -1, ptr %387, align 4, !tbaa !311
  %388 = call i32 @llvm.smin.i32(i32 %369, i32 1998)
  %389 = add nsw i32 %388, 1
  %390 = add nuw nsw i64 %368, 1
  %391 = icmp eq i64 %390, 4
  br i1 %391, label %392, label %367, !llvm.loop !312

392:                                              ; preds = %367, %373
  %393 = phi i32 [ %369, %367 ], [ %389, %373 ]
  %394 = getelementptr inbounds %struct.APixstr, ptr %365, i64 0, i32 5
  %395 = load ptr, ptr %394, align 8, !tbaa !313
  %396 = icmp eq ptr %395, null
  br i1 %396, label %397, label %364, !llvm.loop !315

397:                                              ; preds = %392, %362
  %398 = phi i32 [ 0, %362 ], [ %393, %392 ]
  %399 = icmp eq ptr %318, null
  %400 = select i1 %252, i1 true, i1 %399
  br i1 %400, label %462, label %401

401:                                              ; preds = %397
  %402 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %403 = icmp eq i16 %402, 0
  %404 = sext i16 %402 to i32
  %405 = icmp slt i16 %402, 1
  %406 = zext i1 %403 to i32
  br label %407

407:                                              ; preds = %401, %458
  %408 = phi ptr [ %318, %401 ], [ %460, %458 ]
  %409 = phi i32 [ %398, %401 ], [ %455, %458 ]
  br label %410

410:                                              ; preds = %407, %454
  %411 = phi i64 [ 0, %407 ], [ %456, %454 ]
  %412 = phi i32 [ %409, %407 ], [ %455, %454 ]
  %413 = getelementptr inbounds %struct.APixstrand, ptr %408, i64 0, i32 2, i64 %411
  %414 = load i32, ptr %413, align 4, !tbaa !46
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %454, label %416

416:                                              ; preds = %410
  %417 = getelementptr inbounds %struct.APixstrand, ptr %408, i64 0, i32 3, i64 %411
  %418 = load i32, ptr %417, align 4, !tbaa !46
  %419 = sext i32 %412 to i64
  %420 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 %419
  store i32 %418, ptr %420, align 4, !tbaa !305
  %421 = getelementptr inbounds %struct.APixstrand, ptr %408, i64 0, i32 1, i64 %411
  %422 = load i32, ptr %421, align 4, !tbaa !46
  %423 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 %419, i32 1
  store i32 %422, ptr %423, align 4, !tbaa !307
  %424 = load i32, ptr %413, align 4, !tbaa !46
  %425 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 %419, i32 2
  store i32 %424, ptr %425, align 4, !tbaa !308
  %426 = getelementptr inbounds [4 x i16], ptr %408, i64 0, i64 %411
  %427 = load i16, ptr %426, align 2, !tbaa !309
  %428 = zext i16 %427 to i32
  %429 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 %419, i32 3
  store i32 %428, ptr %429, align 4, !tbaa !310
  %430 = getelementptr inbounds %struct.APixstrand, ptr %408, i64 0, i32 4, i64 %411
  %431 = load i32, ptr %430, align 4, !tbaa !46
  %432 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 %419, i32 4
  store i32 %431, ptr %432, align 4, !tbaa !311
  br i1 %405, label %441, label %433

433:                                              ; preds = %416, %433
  %434 = phi i32 [ %438, %433 ], [ 0, %416 ]
  %435 = phi i32 [ %439, %433 ], [ 0, %416 ]
  %436 = lshr i32 %428, %435
  %437 = and i32 %436, 1
  %438 = add nuw nsw i32 %437, %434
  %439 = add nuw nsw i32 %435, 1
  %440 = icmp eq i32 %439, %404
  br i1 %440, label %441, label %433, !llvm.loop !316

441:                                              ; preds = %433, %416
  %442 = phi i32 [ %406, %416 ], [ %438, %433 ]
  %443 = getelementptr inbounds %struct.APixstrand, ptr %408, i64 0, i32 5, i64 %411
  %444 = load float, ptr %443, align 4, !tbaa !50
  %445 = sitofp i32 %442 to float
  %446 = fdiv float %444, %445
  %447 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 %419, i32 5
  store float %446, ptr %447, align 4, !tbaa !317
  %448 = getelementptr inbounds %struct.APixstrand, ptr %408, i64 0, i32 6, i64 %411
  %449 = load float, ptr %448, align 4, !tbaa !50
  %450 = fdiv float %449, %445
  %451 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 %419, i32 6
  store float %450, ptr %451, align 4, !tbaa !318
  %452 = call i32 @llvm.smin.i32(i32 %412, i32 1998)
  %453 = add nsw i32 %452, 1
  br label %454

454:                                              ; preds = %410, %441
  %455 = phi i32 [ %453, %441 ], [ %412, %410 ]
  %456 = add nuw nsw i64 %411, 1
  %457 = icmp eq i64 %456, 4
  br i1 %457, label %458, label %410, !llvm.loop !319

458:                                              ; preds = %454
  %459 = getelementptr inbounds %struct.APixstrand, ptr %408, i64 0, i32 7
  %460 = load ptr, ptr %459, align 8, !tbaa !320
  %461 = icmp eq ptr %460, null
  br i1 %461, label %462, label %407, !llvm.loop !322

462:                                              ; preds = %458, %397
  %463 = phi i32 [ %398, %397 ], [ %455, %458 ]
  %464 = icmp eq i32 %463, 2
  br i1 %464, label %465, label %470

465:                                              ; preds = %462
  %466 = load i32, ptr %253, align 4, !tbaa !307
  %467 = load i32, ptr %254, align 16, !tbaa !307
  %468 = icmp slt i32 %466, %467
  br i1 %468, label %469, label %474

469:                                              ; preds = %465
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %12, ptr noundef nonnull align 16 dereferenceable(28) %10, i64 28, i1 false), !tbaa.struct !323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %10, ptr noundef nonnull align 4 dereferenceable(28) %255, i64 28, i1 false), !tbaa.struct !323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %255, ptr noundef nonnull align 4 dereferenceable(28) %12, i64 28, i1 false), !tbaa.struct !323
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %12)
  br label %474

470:                                              ; preds = %462
  %471 = icmp sgt i32 %463, 2
  br i1 %471, label %472, label %474

472:                                              ; preds = %470
  %473 = zext nneg i32 %463 to i64
  call void @qsort(ptr noundef nonnull %10, i64 noundef %473, i64 noundef 28, ptr noundef nonnull @vergzvlak) #14
  br label %474

474:                                              ; preds = %470, %472, %465, %469
  br i1 %257, label %512, label %475

475:                                              ; preds = %474
  %476 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !324
  %477 = add nsw i32 %463, -1
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 %478
  %480 = load i32, ptr %479, align 4, !tbaa !305
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %476, i64 %481, i32 2
  %483 = load ptr, ptr %482, align 8, !tbaa !127
  %484 = getelementptr inbounds %struct.ObjectRen, ptr %483, i64 0, i32 2
  %485 = load ptr, ptr %484, align 8, !tbaa !178
  %486 = icmp eq ptr %485, null
  %487 = select i1 %486, i1 true, i1 %258
  br i1 %487, label %512, label %488

488:                                              ; preds = %475
  %489 = getelementptr inbounds %struct.Object, ptr %485, i64 0, i32 96
  br label %490

490:                                              ; preds = %488, %509
  %491 = phi i64 [ 0, %488 ], [ %510, %509 ]
  %492 = getelementptr inbounds [16 x ptr], ptr %11, i64 0, i64 %491
  %493 = load ptr, ptr %492, align 8, !tbaa !42
  %494 = getelementptr inbounds %struct.RenderLayer, ptr %493, i64 0, i32 18
  br label %495

495:                                              ; preds = %499, %490
  %496 = phi ptr [ %494, %490 ], [ %497, %499 ]
  %497 = load ptr, ptr %496, align 8, !tbaa !42
  %498 = icmp eq ptr %497, null
  br i1 %498, label %509, label %499

499:                                              ; preds = %495
  %500 = getelementptr inbounds %struct.RenderPass, ptr %497, i64 0, i32 2
  %501 = load i32, ptr %500, align 8, !tbaa !301
  %502 = icmp eq i32 %501, 2048
  br i1 %502, label %503, label %495, !llvm.loop !325

503:                                              ; preds = %499
  %504 = getelementptr inbounds %struct.RenderPass, ptr %497, i64 0, i32 6
  %505 = load ptr, ptr %504, align 8, !tbaa !304
  %506 = getelementptr inbounds float, ptr %505, i64 %315
  %507 = load i16, ptr %489, align 4, !tbaa !326
  %508 = sitofp i16 %507 to float
  store float %508, ptr %506, align 4, !tbaa !50
  br label %509

509:                                              ; preds = %495, %503
  %510 = add nuw nsw i64 %491, 1
  %511 = icmp eq i64 %510, %294
  br i1 %511, label %512, label %490, !llvm.loop !329

512:                                              ; preds = %509, %475, %474
  br i1 %260, label %579, label %513

513:                                              ; preds = %512
  %514 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !324
  %515 = add nsw i32 %463, -1
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 %516
  %518 = load i32, ptr %517, align 4, !tbaa !305
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %514, i64 %519, i32 2
  %521 = load ptr, ptr %520, align 8, !tbaa !127
  %522 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 %516, i32 2
  %523 = load i32, ptr %522, align 4, !tbaa !308
  %524 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 %516, i32 4
  %525 = load i32, ptr %524, align 4, !tbaa !311
  %526 = icmp eq i32 %525, -1
  br i1 %526, label %527, label %540

527:                                              ; preds = %513
  %528 = add i32 %523, 134217727
  %529 = and i32 %528, 134217727
  %530 = getelementptr inbounds %struct.ObjectRen, ptr %521, i64 0, i32 11
  %531 = load i32, ptr %530, align 4, !tbaa !133
  %532 = icmp slt i32 %529, %531
  br i1 %532, label %533, label %535

533:                                              ; preds = %527
  %534 = call ptr @RE_findOrAddVlak(ptr noundef %521, i32 noundef %529) #14
  br label %535

535:                                              ; preds = %533, %527
  %536 = phi ptr [ %534, %533 ], [ null, %527 ]
  %537 = icmp eq ptr %536, null
  br i1 %537, label %551, label %538

538:                                              ; preds = %535
  %539 = getelementptr inbounds %struct.VlakRen, ptr %536, i64 0, i32 5
  br label %548

540:                                              ; preds = %513
  %541 = add nsw i32 %523, -1
  %542 = call ptr @RE_findOrAddStrand(ptr noundef %521, i32 noundef %541) #14
  %543 = icmp eq ptr %542, null
  br i1 %543, label %551, label %544

544:                                              ; preds = %540
  %545 = getelementptr inbounds %struct.StrandRen, ptr %542, i64 0, i32 1
  %546 = load ptr, ptr %545, align 8, !tbaa !194
  %547 = getelementptr inbounds %struct.StrandBuffer, ptr %546, i64 0, i32 7
  br label %548

548:                                              ; preds = %538, %544
  %549 = phi ptr [ %547, %544 ], [ %539, %538 ]
  %550 = load ptr, ptr %549, align 8, !tbaa !42
  br label %551

551:                                              ; preds = %548, %540, %535
  %552 = phi ptr [ null, %535 ], [ null, %540 ], [ %550, %548 ]
  %553 = icmp eq ptr %552, null
  %554 = select i1 %553, i1 true, i1 %261
  br i1 %554, label %579, label %555

555:                                              ; preds = %551
  %556 = getelementptr inbounds %struct.Material, ptr %552, i64 0, i32 127
  br label %557

557:                                              ; preds = %555, %576
  %558 = phi i64 [ 0, %555 ], [ %577, %576 ]
  %559 = getelementptr inbounds [16 x ptr], ptr %11, i64 0, i64 %558
  %560 = load ptr, ptr %559, align 8, !tbaa !42
  %561 = getelementptr inbounds %struct.RenderLayer, ptr %560, i64 0, i32 18
  br label %562

562:                                              ; preds = %566, %557
  %563 = phi ptr [ %561, %557 ], [ %564, %566 ]
  %564 = load ptr, ptr %563, align 8, !tbaa !42
  %565 = icmp eq ptr %564, null
  br i1 %565, label %576, label %566

566:                                              ; preds = %562
  %567 = getelementptr inbounds %struct.RenderPass, ptr %564, i64 0, i32 2
  %568 = load i32, ptr %567, align 8, !tbaa !301
  %569 = icmp eq i32 %568, 262144
  br i1 %569, label %570, label %562, !llvm.loop !330

570:                                              ; preds = %566
  %571 = getelementptr inbounds %struct.RenderPass, ptr %564, i64 0, i32 6
  %572 = load ptr, ptr %571, align 8, !tbaa !304
  %573 = getelementptr inbounds float, ptr %572, i64 %315
  %574 = load i16, ptr %556, align 2, !tbaa !331
  %575 = sitofp i16 %574 to float
  store float %575, ptr %573, align 4, !tbaa !50
  br label %576

576:                                              ; preds = %562, %570
  %577 = add nuw nsw i64 %558, 1
  %578 = icmp eq i64 %577, %295
  br i1 %578, label %579, label %557, !llvm.loop !332

579:                                              ; preds = %576, %551, %512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %9, i8 0, i64 %263, i1 false)
  br i1 %264, label %580, label %591

580:                                              ; preds = %579, %588
  %581 = phi i64 [ %589, %588 ], [ 0, %579 ]
  %582 = getelementptr inbounds [16 x %struct.ShadeResult], ptr %9, i64 0, i64 %581, i32 4
  store float 0x42374876E0000000, ptr %582, align 4, !tbaa !333
  br i1 %173, label %588, label %583

583:                                              ; preds = %580
  %584 = getelementptr inbounds [16 x %struct.ShadeResult], ptr %9, i64 0, i64 %581, i32 16
  store float 1.000000e+04, ptr %584, align 4, !tbaa !50
  %585 = getelementptr inbounds [16 x %struct.ShadeResult], ptr %9, i64 0, i64 %581, i32 16, i64 1
  store float 1.000000e+04, ptr %585, align 4, !tbaa !50
  %586 = getelementptr inbounds [16 x %struct.ShadeResult], ptr %9, i64 0, i64 %581, i32 16, i64 2
  store float 1.000000e+04, ptr %586, align 4, !tbaa !50
  %587 = getelementptr inbounds [16 x %struct.ShadeResult], ptr %9, i64 0, i64 %581, i32 16, i64 3
  store float 1.000000e+04, ptr %587, align 4, !tbaa !50
  br label %588

588:                                              ; preds = %580, %583
  %589 = add nuw nsw i64 %581, 1
  %590 = icmp eq i64 %589, %17
  br i1 %590, label %591, label %580, !llvm.loop !335

591:                                              ; preds = %588, %579
  %592 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !116
  %593 = icmp eq i16 %592, 0
  br i1 %593, label %594, label %646

594:                                              ; preds = %591
  %595 = icmp sgt i32 %463, 0
  br i1 %595, label %596, label %639

596:                                              ; preds = %594
  %597 = zext nneg i32 %463 to i64
  br label %598

598:                                              ; preds = %596, %637
  %599 = phi i64 [ %597, %596 ], [ %600, %637 ]
  %600 = add nsw i64 %599, -1
  %601 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 %600
  %602 = call fastcc i32 @shade_tra_samples(ptr noundef nonnull %7, ptr noundef %54, i32 noundef %319, i32 noundef %300, ptr noundef nonnull %601, i32 noundef %58), !range !61
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %637, label %604

604:                                              ; preds = %598
  %605 = call fastcc i32 @addtosamp_shr(ptr noundef nonnull %9, ptr noundef nonnull %7, i32 noundef %58)
  call void @addAlphaUnderFloat(ptr noundef %316, ptr noundef nonnull %289) #14
  %606 = and i32 %605, 65535
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %608, label %637

608:                                              ; preds = %604
  %609 = and i64 %599, 4294967295
  %610 = icmp ne i64 %609, 1
  %611 = and i1 %290, %610
  br i1 %611, label %612, label %639

612:                                              ; preds = %608, %635
  %613 = phi i64 [ %614, %635 ], [ %600, %608 ]
  %614 = add nsw i64 %613, -1
  %615 = getelementptr inbounds %struct.ZTranspRow, ptr %10, i64 %614, i32 4
  %616 = load i32, ptr %615, align 4, !tbaa !311
  %617 = icmp eq i32 %616, -1
  br i1 %617, label %635, label %618

618:                                              ; preds = %612
  %619 = getelementptr inbounds %struct.ZTranspRow, ptr %10, i64 %614
  %620 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !324
  %621 = load i32, ptr %619, align 4, !tbaa !305
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %620, i64 %622
  %624 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %620, i64 %622, i32 2
  %625 = load ptr, ptr %624, align 8, !tbaa !127
  %626 = getelementptr inbounds %struct.ZTranspRow, ptr %10, i64 %614, i32 2
  %627 = load i32, ptr %626, align 4, !tbaa !308
  %628 = add nsw i32 %627, -1
  %629 = call ptr @RE_findOrAddStrand(ptr noundef %625, i32 noundef %628) #14
  %630 = load ptr, ptr %629, align 8, !tbaa !200
  %631 = load i32, ptr %615, align 4, !tbaa !311
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds %struct.StrandVert, ptr %630, i64 %632
  call void @strand_shade_unref(ptr noundef nonnull %54, ptr noundef %623, ptr noundef %633) #14
  %634 = getelementptr inbounds %struct.StrandVert, ptr %633, i64 1
  call void @strand_shade_unref(ptr noundef nonnull %54, ptr noundef %623, ptr noundef nonnull %634) #14
  br label %635

635:                                              ; preds = %618, %612
  %636 = icmp sgt i64 %613, 1
  br i1 %636, label %612, label %639, !llvm.loop !336

637:                                              ; preds = %604, %598
  %638 = icmp sgt i64 %599, 1
  br i1 %638, label %598, label %639, !llvm.loop !337

639:                                              ; preds = %637, %635, %594, %608
  %640 = load float, ptr %291, align 4, !tbaa !50
  %641 = fcmp une float %640, 0.000000e+00
  br i1 %641, label %642, label %900

642:                                              ; preds = %639
  %643 = trunc i64 %315 to i32
  call fastcc void @add_transp_passes(ptr noundef %1, i32 noundef %643, ptr noundef nonnull %9, float noundef %640)
  br i1 %173, label %900, label %644

644:                                              ; preds = %642
  %645 = trunc i64 %315 to i32
  call fastcc void @add_transp_speed(ptr noundef %1, i32 noundef %645, ptr noundef nonnull %292, float noundef %640, ptr noundef %145)
  br label %900

646:                                              ; preds = %591
  %647 = getelementptr inbounds i16, ptr %171, i64 %315
  %648 = icmp sgt i32 %463, 0
  br i1 %648, label %649, label %699

649:                                              ; preds = %646
  %650 = zext nneg i32 %463 to i64
  br label %651

651:                                              ; preds = %649, %697
  %652 = phi i64 [ %650, %649 ], [ %653, %697 ]
  %653 = add nsw i64 %652, -1
  %654 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 %653
  %655 = call fastcc i32 @shade_tra_samples(ptr noundef nonnull %7, ptr noundef %54, i32 noundef %319, i32 noundef %300, ptr noundef nonnull %654, i32 noundef %58), !range !61
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %697, label %657

657:                                              ; preds = %651
  %658 = call fastcc i32 @addtosamp_shr(ptr noundef nonnull %9, ptr noundef nonnull %7, i32 noundef %58)
  br i1 %265, label %665, label %659

659:                                              ; preds = %657
  %660 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %10, i64 0, i64 %653, i32 3
  %661 = load i32, ptr %660, align 4, !tbaa !310
  %662 = load i16, ptr %647, align 2, !tbaa !309
  %663 = trunc i32 %661 to i16
  %664 = or i16 %662, %663
  store i16 %664, ptr %647, align 2, !tbaa !309
  br label %665

665:                                              ; preds = %659, %657
  %666 = and i32 %658, 65535
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %668, label %697

668:                                              ; preds = %665
  %669 = and i64 %652, 4294967295
  %670 = icmp ne i64 %669, 1
  %671 = and i1 %266, %670
  br i1 %671, label %672, label %699

672:                                              ; preds = %668, %695
  %673 = phi i64 [ %674, %695 ], [ %653, %668 ]
  %674 = add nsw i64 %673, -1
  %675 = getelementptr inbounds %struct.ZTranspRow, ptr %10, i64 %674, i32 4
  %676 = load i32, ptr %675, align 4, !tbaa !311
  %677 = icmp eq i32 %676, -1
  br i1 %677, label %695, label %678

678:                                              ; preds = %672
  %679 = getelementptr inbounds %struct.ZTranspRow, ptr %10, i64 %674
  %680 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !324
  %681 = load i32, ptr %679, align 4, !tbaa !305
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %680, i64 %682
  %684 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %680, i64 %682, i32 2
  %685 = load ptr, ptr %684, align 8, !tbaa !127
  %686 = getelementptr inbounds %struct.ZTranspRow, ptr %10, i64 %674, i32 2
  %687 = load i32, ptr %686, align 4, !tbaa !308
  %688 = add nsw i32 %687, -1
  %689 = call ptr @RE_findOrAddStrand(ptr noundef %685, i32 noundef %688) #14
  %690 = load ptr, ptr %689, align 8, !tbaa !200
  %691 = load i32, ptr %675, align 4, !tbaa !311
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds %struct.StrandVert, ptr %690, i64 %692
  call void @strand_shade_unref(ptr noundef nonnull %54, ptr noundef %683, ptr noundef %693) #14
  %694 = getelementptr inbounds %struct.StrandVert, ptr %693, i64 1
  call void @strand_shade_unref(ptr noundef nonnull %54, ptr noundef %683, ptr noundef nonnull %694) #14
  br label %695

695:                                              ; preds = %678, %672
  %696 = icmp sgt i64 %673, 1
  br i1 %696, label %672, label %699, !llvm.loop !336

697:                                              ; preds = %665, %651
  %698 = icmp sgt i64 %652, 1
  br i1 %698, label %651, label %699, !llvm.loop !338

699:                                              ; preds = %697, %695, %646, %668
  %700 = load ptr, ptr %267, align 8, !tbaa !292
  %701 = icmp eq ptr %700, null
  %702 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !116
  %703 = icmp sgt i16 %702, 0
  br i1 %701, label %711, label %704

704:                                              ; preds = %699
  br i1 %703, label %705, label %900

705:                                              ; preds = %704
  %706 = trunc i64 %315 to i32
  %707 = shl nsw i32 %706, 2
  %708 = sext i32 %707 to i64
  %709 = trunc i64 %315 to i32
  %710 = trunc i64 %315 to i32
  br label %712

711:                                              ; preds = %699
  br i1 %703, label %731, label %745

712:                                              ; preds = %705, %726
  %713 = phi i64 [ 0, %705 ], [ %727, %726 ]
  %714 = getelementptr inbounds [16 x %struct.ShadeResult], ptr %9, i64 0, i64 %713
  %715 = getelementptr inbounds [4 x float], ptr %714, i64 0, i64 3
  %716 = load float, ptr %715, align 4, !tbaa !50
  %717 = fcmp une float %716, 0.000000e+00
  br i1 %717, label %718, label %726

718:                                              ; preds = %712
  %719 = getelementptr inbounds %struct.ShadeSample, ptr %7, i64 0, i32 1, i64 %713
  %720 = load ptr, ptr %719, align 8, !tbaa !42
  %721 = getelementptr inbounds %struct.RenderLayer, ptr %720, i64 0, i32 11
  %722 = load ptr, ptr %721, align 8, !tbaa !294
  %723 = getelementptr inbounds float, ptr %722, i64 %708
  call void @addAlphaOverFloat(ptr noundef %723, ptr noundef nonnull %714) #14
  call fastcc void @add_transp_passes(ptr noundef %720, i32 noundef %709, ptr noundef nonnull %714, float noundef %716)
  br i1 %173, label %726, label %724

724:                                              ; preds = %718
  %725 = getelementptr inbounds [16 x %struct.ShadeResult], ptr %9, i64 0, i64 %713, i32 16
  call fastcc void @add_transp_speed(ptr noundef %720, i32 noundef %710, ptr noundef nonnull %725, float noundef %716, ptr noundef %145)
  br label %726

726:                                              ; preds = %718, %724, %712
  %727 = add nuw nsw i64 %713, 1
  %728 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !116
  %729 = sext i16 %728 to i64
  %730 = icmp slt i64 %727, %729
  br i1 %730, label %712, label %900, !llvm.loop !339

731:                                              ; preds = %711, %731
  %732 = phi i64 [ %741, %731 ], [ 0, %711 ]
  %733 = phi float [ %740, %731 ], [ 0.000000e+00, %711 ]
  %734 = trunc i64 %732 to i32
  %735 = shl nuw i32 1, %734
  %736 = getelementptr inbounds [16 x %struct.ShadeResult], ptr %9, i64 0, i64 %732
  %737 = load i32, ptr %268, align 8, !tbaa !340
  call void @add_filt_fmask(i32 noundef %735, ptr noundef nonnull %736, ptr noundef %316, i32 noundef %737) #14
  %738 = getelementptr inbounds [4 x float], ptr %736, i64 0, i64 3
  %739 = load float, ptr %738, align 4, !tbaa !50
  %740 = fadd float %733, %739
  %741 = add nuw nsw i64 %732, 1
  %742 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !116
  %743 = sext i16 %742 to i64
  %744 = icmp slt i64 %741, %743
  br i1 %744, label %731, label %745, !llvm.loop !341

745:                                              ; preds = %731, %711
  %746 = phi float [ 0.000000e+00, %711 ], [ %740, %731 ]
  %747 = phi i16 [ %702, %711 ], [ %742, %731 ]
  %748 = sext i16 %747 to i32
  br i1 %269, label %900, label %749

749:                                              ; preds = %745
  %750 = fmul float %63, %746
  %751 = sitofp i16 %747 to float
  %752 = fdiv float 1.000000e+00, %751
  %753 = load ptr, ptr %270, align 8, !tbaa !42
  %754 = icmp eq ptr %753, null
  br i1 %754, label %896, label %755

755:                                              ; preds = %749
  %756 = icmp sgt i16 %747, 1
  %757 = icmp sgt i16 %747, 1
  br label %758

758:                                              ; preds = %755, %893
  %759 = phi ptr [ %753, %755 ], [ %894, %893 ]
  %760 = getelementptr inbounds %struct.RenderPass, ptr %759, i64 0, i32 2
  %761 = load i32, ptr %760, align 8, !tbaa !301
  switch i32 %761, label %843 [
    i32 4, label %762
    i32 65536, label %763
    i32 8, label %764
    i32 16, label %765
    i32 32, label %766
    i32 64, label %767
    i32 131072, label %768
    i32 8192, label %769
    i32 128, label %770
    i32 1024, label %771
    i32 256, label %772
    i32 16384, label %773
    i32 2, label %774
    i32 512, label %775
  ]

762:                                              ; preds = %758
  br label %843

763:                                              ; preds = %758
  br label %843

764:                                              ; preds = %758
  br label %843

765:                                              ; preds = %758
  br label %843

766:                                              ; preds = %758
  br label %843

767:                                              ; preds = %758
  br label %843

768:                                              ; preds = %758
  br label %843

769:                                              ; preds = %758
  br label %843

770:                                              ; preds = %758
  br label %843

771:                                              ; preds = %758
  br label %843

772:                                              ; preds = %758
  br label %843

773:                                              ; preds = %758
  br label %843

774:                                              ; preds = %758
  br label %843

775:                                              ; preds = %758
  br i1 %756, label %776, label %843

776:                                              ; preds = %775
  %777 = load float, ptr %271, align 4, !tbaa !50
  %778 = load float, ptr %272, align 8, !tbaa !50
  %779 = load float, ptr %273, align 4, !tbaa !50
  %780 = load float, ptr %274, align 16, !tbaa !50
  br label %781

781:                                              ; preds = %776, %836
  %782 = phi float [ %780, %776 ], [ %837, %836 ]
  %783 = phi float [ %779, %776 ], [ %838, %836 ]
  %784 = phi float [ %778, %776 ], [ %839, %836 ]
  %785 = phi i32 [ 1, %776 ], [ %841, %836 ]
  %786 = phi ptr [ %9, %776 ], [ %788, %836 ]
  %787 = phi float [ %777, %776 ], [ %840, %836 ]
  %788 = getelementptr inbounds %struct.ShadeResult, ptr %786, i64 1
  %789 = getelementptr inbounds %struct.ShadeResult, ptr %786, i64 1, i32 0, i64 3
  %790 = load float, ptr %789, align 4, !tbaa !50
  %791 = fcmp ogt float %790, 0.000000e+00
  br i1 %791, label %792, label %836

792:                                              ; preds = %781
  %793 = getelementptr inbounds %struct.ShadeResult, ptr %786, i64 1, i32 16
  %794 = load float, ptr %793, align 4, !tbaa !50
  %795 = fcmp olt float %794, 0.000000e+00
  %796 = fneg float %794
  %797 = select i1 %795, float %796, float %794
  %798 = getelementptr inbounds %struct.ShadeResult, ptr %786, i64 1, i32 16, i64 1
  %799 = load float, ptr %798, align 4, !tbaa !50
  %800 = fcmp olt float %799, 0.000000e+00
  %801 = fneg float %799
  %802 = select i1 %800, float %801, float %799
  %803 = fadd float %797, %802
  %804 = fcmp olt float %787, 0.000000e+00
  %805 = fneg float %787
  %806 = select i1 %804, float %805, float %787
  %807 = fcmp olt float %784, 0.000000e+00
  %808 = fneg float %784
  %809 = select i1 %807, float %808, float %784
  %810 = fadd float %806, %809
  %811 = fcmp olt float %803, %810
  br i1 %811, label %812, label %813

812:                                              ; preds = %792
  store float %794, ptr %271, align 4, !tbaa !50
  store float %799, ptr %272, align 8, !tbaa !50
  br label %813

813:                                              ; preds = %812, %792
  %814 = phi float [ %799, %812 ], [ %784, %792 ]
  %815 = phi float [ %794, %812 ], [ %787, %792 ]
  %816 = getelementptr inbounds %struct.ShadeResult, ptr %786, i64 1, i32 16, i64 2
  %817 = load float, ptr %816, align 4, !tbaa !50
  %818 = fcmp olt float %817, 0.000000e+00
  %819 = fneg float %817
  %820 = select i1 %818, float %819, float %817
  %821 = getelementptr inbounds %struct.ShadeResult, ptr %786, i64 1, i32 16, i64 3
  %822 = load float, ptr %821, align 4, !tbaa !50
  %823 = fcmp olt float %822, 0.000000e+00
  %824 = fneg float %822
  %825 = select i1 %823, float %824, float %822
  %826 = fadd float %820, %825
  %827 = fcmp olt float %783, 0.000000e+00
  %828 = fneg float %783
  %829 = select i1 %827, float %828, float %783
  %830 = fcmp olt float %782, 0.000000e+00
  %831 = fneg float %782
  %832 = select i1 %830, float %831, float %782
  %833 = fadd float %829, %832
  %834 = fcmp olt float %826, %833
  br i1 %834, label %835, label %836

835:                                              ; preds = %813
  store float %817, ptr %273, align 4, !tbaa !50
  store float %822, ptr %274, align 16, !tbaa !50
  br label %836

836:                                              ; preds = %835, %813, %781
  %837 = phi float [ %822, %835 ], [ %782, %813 ], [ %782, %781 ]
  %838 = phi float [ %817, %835 ], [ %783, %813 ], [ %783, %781 ]
  %839 = phi float [ %814, %835 ], [ %814, %813 ], [ %784, %781 ]
  %840 = phi float [ %815, %835 ], [ %815, %813 ], [ %787, %781 ]
  %841 = add nuw nsw i32 %785, 1
  %842 = icmp eq i32 %841, %748
  br i1 %842, label %843, label %781, !llvm.loop !342

843:                                              ; preds = %836, %775, %774, %773, %772, %771, %770, %769, %768, %767, %766, %765, %764, %763, %762, %758
  %844 = phi i1 [ true, %758 ], [ false, %774 ], [ false, %773 ], [ true, %772 ], [ true, %771 ], [ true, %770 ], [ true, %769 ], [ true, %768 ], [ true, %767 ], [ true, %766 ], [ true, %765 ], [ true, %764 ], [ true, %763 ], [ true, %762 ], [ true, %775 ], [ true, %836 ]
  %845 = phi i1 [ false, %758 ], [ false, %774 ], [ false, %773 ], [ false, %772 ], [ false, %771 ], [ false, %770 ], [ false, %769 ], [ false, %768 ], [ false, %767 ], [ false, %766 ], [ false, %765 ], [ false, %764 ], [ false, %763 ], [ true, %762 ], [ false, %775 ], [ false, %836 ]
  %846 = phi ptr [ null, %758 ], [ %275, %774 ], [ %276, %773 ], [ %277, %772 ], [ %278, %771 ], [ %279, %770 ], [ %280, %769 ], [ %281, %768 ], [ %282, %767 ], [ %283, %766 ], [ %284, %765 ], [ %285, %764 ], [ %286, %763 ], [ %287, %762 ], [ null, %775 ], [ null, %836 ]
  %847 = icmp eq ptr %846, null
  br i1 %847, label %893, label %848

848:                                              ; preds = %843
  br i1 %757, label %849, label %879

849:                                              ; preds = %848
  %850 = getelementptr inbounds float, ptr %846, i64 1
  %851 = getelementptr inbounds float, ptr %846, i64 2
  %852 = getelementptr inbounds float, ptr %846, i64 3
  %853 = load float, ptr %846, align 4, !tbaa !50
  br label %854

854:                                              ; preds = %849, %875
  %855 = phi float [ %853, %849 ], [ %860, %875 ]
  %856 = phi i32 [ 1, %849 ], [ %876, %875 ]
  %857 = phi ptr [ %846, %849 ], [ %858, %875 ]
  %858 = getelementptr inbounds float, ptr %857, i64 53
  %859 = load float, ptr %858, align 4, !tbaa !50
  %860 = fadd float %859, %855
  br i1 %844, label %861, label %875

861:                                              ; preds = %854
  %862 = getelementptr inbounds float, ptr %857, i64 54
  %863 = load float, ptr %862, align 4, !tbaa !50
  %864 = load float, ptr %850, align 4, !tbaa !50
  %865 = fadd float %863, %864
  store float %865, ptr %850, align 4, !tbaa !50
  %866 = getelementptr inbounds float, ptr %857, i64 55
  %867 = load float, ptr %866, align 4, !tbaa !50
  %868 = load float, ptr %851, align 4, !tbaa !50
  %869 = fadd float %867, %868
  store float %869, ptr %851, align 4, !tbaa !50
  br i1 %845, label %870, label %875

870:                                              ; preds = %861
  %871 = getelementptr inbounds float, ptr %857, i64 56
  %872 = load float, ptr %871, align 4, !tbaa !50
  %873 = load float, ptr %852, align 4, !tbaa !50
  %874 = fadd float %872, %873
  store float %874, ptr %852, align 4, !tbaa !50
  br label %875

875:                                              ; preds = %870, %861, %854
  %876 = add nuw nsw i32 %856, 1
  %877 = icmp eq i32 %876, %748
  br i1 %877, label %878, label %854, !llvm.loop !343

878:                                              ; preds = %875
  store float %860, ptr %846, align 4, !tbaa !50
  br label %879

879:                                              ; preds = %878, %848
  %880 = load float, ptr %846, align 4, !tbaa !50
  %881 = fmul float %752, %880
  store float %881, ptr %846, align 4, !tbaa !50
  br i1 %844, label %882, label %893

882:                                              ; preds = %879
  %883 = getelementptr inbounds float, ptr %846, i64 1
  %884 = load float, ptr %883, align 4, !tbaa !50
  %885 = fmul float %752, %884
  store float %885, ptr %883, align 4, !tbaa !50
  %886 = getelementptr inbounds float, ptr %846, i64 2
  %887 = load float, ptr %886, align 4, !tbaa !50
  %888 = fmul float %752, %887
  store float %888, ptr %886, align 4, !tbaa !50
  br i1 %845, label %889, label %893

889:                                              ; preds = %882
  %890 = getelementptr inbounds float, ptr %846, i64 3
  %891 = load float, ptr %890, align 4, !tbaa !50
  %892 = fmul float %752, %891
  store float %892, ptr %890, align 4, !tbaa !50
  br label %893

893:                                              ; preds = %889, %882, %879, %843
  %894 = load ptr, ptr %759, align 8, !tbaa !42
  %895 = icmp eq ptr %894, null
  br i1 %895, label %896, label %758, !llvm.loop !344

896:                                              ; preds = %893, %749
  %897 = trunc i64 %315 to i32
  call fastcc void @add_transp_passes(ptr noundef %1, i32 noundef %897, ptr noundef nonnull %9, float noundef %750)
  br i1 %173, label %900, label %898

898:                                              ; preds = %896
  %899 = trunc i64 %315 to i32
  call fastcc void @add_transp_speed(ptr noundef %1, i32 noundef %899, ptr noundef nonnull %288, float noundef %750, ptr noundef %145)
  br label %900

900:                                              ; preds = %726, %329, %704, %361, %357, %896, %898, %745, %328, %639, %644, %642
  %901 = add nsw i32 %319, 1
  %902 = getelementptr inbounds %struct.APixstr, ptr %317, i64 1
  %903 = getelementptr inbounds %struct.APixstrand, ptr %318, i64 1
  %904 = getelementptr inbounds float, ptr %316, i64 4
  %905 = add nsw i64 %315, 1
  %906 = load i32, ptr %250, align 4, !tbaa !110
  %907 = sub nsw i32 %906, %232
  %908 = icmp slt i32 %901, %907
  br i1 %908, label %314, label %909, !llvm.loop !345

909:                                              ; preds = %900, %306
  %910 = load i32, ptr %29, align 8, !tbaa !113
  %911 = sext i32 %910 to i64
  %912 = getelementptr inbounds %struct.APixstr, ptr %297, i64 %911
  %913 = getelementptr inbounds %struct.APixstrand, ptr %298, i64 %911
  %914 = shl nsw i32 %910, 2
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds float, ptr %301, i64 %915
  %917 = add nsw i32 %910, %299
  %918 = add nsw i32 %300, 1
  %919 = load volatile i32, ptr %239, align 4, !tbaa !299
  %920 = add nsw i32 %919, 1
  store volatile i32 %920, ptr %239, align 4, !tbaa !299
  %921 = load i32, ptr %245, align 4, !tbaa !112
  %922 = sub nsw i32 %921, %232
  %923 = icmp slt i32 %918, %922
  br i1 %923, label %296, label %924, !llvm.loop !346

924:                                              ; preds = %909, %296, %230
  store ptr null, ptr %240, align 8, !tbaa !300
  %925 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %925(ptr noundef %36) #14
  %926 = icmp eq ptr %55, null
  br i1 %926, label %929, label %927

927:                                              ; preds = %924
  %928 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %928(ptr noundef nonnull %55) #14
  br label %929

929:                                              ; preds = %927, %924
  %930 = icmp eq ptr %54, null
  br i1 %930, label %932, label %931

931:                                              ; preds = %929
  call void @strand_shade_cache_free(ptr noundef nonnull %54) #14
  br label %932

932:                                              ; preds = %931, %929
  %933 = load ptr, ptr %8, align 8, !tbaa !51
  %934 = icmp eq ptr %933, null
  br i1 %934, label %946, label %935

935:                                              ; preds = %932, %943
  %936 = phi ptr [ %937, %943 ], [ %933, %932 ]
  %937 = load ptr, ptr %936, align 8, !tbaa !53
  %938 = getelementptr inbounds %struct.APixstrMain, ptr %936, i64 0, i32 2
  %939 = load ptr, ptr %938, align 8, !tbaa !55
  %940 = icmp eq ptr %939, null
  br i1 %940, label %943, label %941

941:                                              ; preds = %935
  %942 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %942(ptr noundef nonnull %939) #14
  br label %943

943:                                              ; preds = %941, %935
  %944 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %944(ptr noundef nonnull %936) #14
  %945 = icmp eq ptr %937, null
  br i1 %945, label %946, label %935, !llvm.loop !56

946:                                              ; preds = %943, %932
  %947 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !76
  %948 = and i32 %947, 2
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %951, label %950

950:                                              ; preds = %946
  call void @ISB_free(ptr noundef %0) #14
  br label %951

951:                                              ; preds = %140, %129, %946, %950, %4, %25
  %952 = phi ptr [ null, %25 ], [ null, %4 ], [ %171, %950 ], [ %171, %946 ], [ null, %129 ], [ null, %140 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 56000, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 3392, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 27080, ptr nonnull %7) #14
  ret ptr %952
}

declare ptr @strand_shade_cache_create() local_unnamed_addr #8

declare void @shade_sample_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @strand_shade_cache_free(ptr noundef) local_unnamed_addr #8

declare i32 @get_sample_layers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @ISB_create(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_transp_speed(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, float noundef %3, ptr noundef readonly %4) unnamed_addr #7 {
  %6 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 18
  br label %7

7:                                                ; preds = %11, %5
  %8 = phi ptr [ %6, %5 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %111, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.RenderPass, ptr %9, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !301
  %14 = icmp eq i32 %13, 512
  br i1 %14, label %15, label %7, !llvm.loop !303

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.RenderPass, ptr %9, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !304
  %18 = shl nsw i32 %1, 2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float, ptr %17, i64 %19
  %21 = icmp eq ptr %2, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %15
  %23 = load float, ptr %20, align 4, !tbaa !50
  %24 = fcmp oeq float %23, 1.000000e+04
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store float 0.000000e+00, ptr %20, align 4, !tbaa !50
  br label %26

26:                                               ; preds = %25, %22
  %27 = getelementptr inbounds float, ptr %20, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !50
  %29 = fcmp oeq float %28, 1.000000e+04
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store float 0.000000e+00, ptr %27, align 4, !tbaa !50
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds float, ptr %20, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !50
  %34 = fcmp oeq float %33, 1.000000e+04
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store float 0.000000e+00, ptr %32, align 4, !tbaa !50
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds float, ptr %20, i64 3
  %38 = load float, ptr %37, align 4, !tbaa !50
  %39 = fcmp oeq float %38, 1.000000e+04
  br i1 %39, label %40, label %111

40:                                               ; preds = %36
  store float 0.000000e+00, ptr %37, align 4, !tbaa !50
  br label %111

41:                                               ; preds = %15
  %42 = icmp eq ptr %4, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %41
  %44 = sext i32 %1 to i64
  %45 = getelementptr inbounds i64, ptr %4, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !269
  %47 = icmp eq i64 %46, 0
  %48 = fcmp ogt float %3, 0x3FEE666660000000
  %49 = or i1 %48, %47
  br i1 %49, label %50, label %61

50:                                               ; preds = %43, %41
  %51 = load float, ptr %2, align 4, !tbaa !50
  store float %51, ptr %20, align 4, !tbaa !50
  %52 = getelementptr inbounds float, ptr %2, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !50
  %54 = getelementptr inbounds float, ptr %20, i64 1
  store float %53, ptr %54, align 4, !tbaa !50
  %55 = getelementptr inbounds float, ptr %2, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !50
  %57 = getelementptr inbounds float, ptr %20, i64 2
  store float %56, ptr %57, align 4, !tbaa !50
  %58 = getelementptr inbounds float, ptr %2, i64 3
  %59 = load float, ptr %58, align 4, !tbaa !50
  %60 = getelementptr inbounds float, ptr %20, i64 3
  store float %59, ptr %60, align 4, !tbaa !50
  br label %111

61:                                               ; preds = %43
  %62 = load float, ptr %2, align 4, !tbaa !50
  %63 = fcmp olt float %62, 0.000000e+00
  %64 = fneg float %62
  %65 = select i1 %63, float %64, float %62
  %66 = getelementptr inbounds float, ptr %2, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !50
  %68 = fcmp olt float %67, 0.000000e+00
  %69 = fneg float %67
  %70 = select i1 %68, float %69, float %67
  %71 = fadd float %65, %70
  %72 = load float, ptr %20, align 4, !tbaa !50
  %73 = fcmp olt float %72, 0.000000e+00
  %74 = fneg float %72
  %75 = select i1 %73, float %74, float %72
  %76 = getelementptr inbounds float, ptr %20, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !50
  %78 = fcmp olt float %77, 0.000000e+00
  %79 = fneg float %77
  %80 = select i1 %78, float %79, float %77
  %81 = fadd float %75, %80
  %82 = fcmp olt float %71, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %61
  store float %62, ptr %20, align 4, !tbaa !50
  %84 = load float, ptr %66, align 4, !tbaa !50
  store float %84, ptr %76, align 4, !tbaa !50
  br label %85

85:                                               ; preds = %83, %61
  %86 = getelementptr inbounds float, ptr %2, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !50
  %88 = fcmp olt float %87, 0.000000e+00
  %89 = fneg float %87
  %90 = select i1 %88, float %89, float %87
  %91 = getelementptr inbounds float, ptr %2, i64 3
  %92 = load float, ptr %91, align 4, !tbaa !50
  %93 = fcmp olt float %92, 0.000000e+00
  %94 = fneg float %92
  %95 = select i1 %93, float %94, float %92
  %96 = fadd float %90, %95
  %97 = getelementptr inbounds float, ptr %20, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !50
  %99 = fcmp olt float %98, 0.000000e+00
  %100 = fneg float %98
  %101 = select i1 %99, float %100, float %98
  %102 = getelementptr inbounds float, ptr %20, i64 3
  %103 = load float, ptr %102, align 4, !tbaa !50
  %104 = fcmp olt float %103, 0.000000e+00
  %105 = fneg float %103
  %106 = select i1 %104, float %105, float %103
  %107 = fadd float %101, %106
  %108 = fcmp olt float %96, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %85
  store float %87, ptr %97, align 4, !tbaa !50
  %110 = load float, ptr %91, align 4, !tbaa !50
  store float %110, ptr %102, align 4, !tbaa !50
  br label %111

111:                                              ; preds = %7, %40, %36, %85, %109, %50
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @vergzvlak(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.ZTranspRow, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !307
  %5 = getelementptr inbounds %struct.ZTranspRow, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !307
  %7 = icmp slt i32 %4, %6
  %8 = icmp sgt i32 %4, %6
  %9 = sext i1 %8 to i32
  %10 = select i1 %7, i32 1, i32 %9
  ret i32 %10
}

declare ptr @RE_findOrAddVlak(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @shade_tra_samples(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.StrandSegment, align 8
  %8 = getelementptr inbounds %struct.ZTranspRow, ptr %4, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !311
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %51, label %11

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %7) #14
  %12 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !324
  %13 = load i32, ptr %4, align 4, !tbaa !305
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 %14
  %16 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %12, i64 %14, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !127
  %18 = getelementptr inbounds %struct.StrandSegment, ptr %7, i64 0, i32 3
  store ptr %15, ptr %18, align 8, !tbaa !191
  %19 = getelementptr inbounds %struct.ZTranspRow, ptr %4, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !308
  %21 = add nsw i32 %20, -1
  %22 = tail call ptr @RE_findOrAddStrand(ptr noundef %17, i32 noundef %21) #14
  %23 = getelementptr inbounds %struct.StrandSegment, ptr %7, i64 0, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !199
  %24 = getelementptr inbounds %struct.StrandRen, ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !194
  %26 = getelementptr inbounds %struct.StrandSegment, ptr %7, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !196
  %27 = load ptr, ptr %22, align 8, !tbaa !200
  %28 = load i32, ptr %8, align 4, !tbaa !311
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.StrandVert, ptr %27, i64 %29
  %31 = icmp sgt i32 %28, 0
  %32 = sext i1 %31 to i64
  %33 = getelementptr inbounds %struct.StrandVert, ptr %30, i64 %32
  store ptr %33, ptr %7, align 8, !tbaa !42
  %34 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 1
  store ptr %30, ptr %34, align 8, !tbaa !42
  %35 = getelementptr inbounds %struct.StrandVert, ptr %30, i64 1
  %36 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 2
  store ptr %35, ptr %36, align 8, !tbaa !42
  %37 = getelementptr inbounds %struct.StrandRen, ptr %22, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !203
  %39 = add nsw i32 %38, -2
  %40 = icmp slt i32 %28, %39
  %41 = getelementptr inbounds %struct.StrandVert, ptr %30, i64 2
  %42 = select i1 %40, ptr %41, ptr %35
  %43 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 3
  store ptr %42, ptr %43, align 8, !tbaa !42
  store i32 1, ptr %0, align 8, !tbaa !347
  %44 = getelementptr inbounds %struct.ZTranspRow, ptr %4, i64 0, i32 6
  %45 = load float, ptr %44, align 4, !tbaa !318
  %46 = getelementptr inbounds %struct.ZTranspRow, ptr %4, i64 0, i32 5
  %47 = load float, ptr %46, align 4, !tbaa !317
  call void @strand_shade_segment(ptr noundef nonnull @R, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %0, float noundef %45, float noundef %47, i32 noundef %5) #14
  %48 = getelementptr inbounds %struct.ZTranspRow, ptr %4, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !310
  %50 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 105
  store i32 %49, ptr %50, align 4, !tbaa !349
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %7) #14
  br label %225

51:                                               ; preds = %6
  %52 = getelementptr inbounds %struct.ZTranspRow, ptr %4, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !307
  %54 = load i32, ptr %4, align 4, !tbaa !305
  %55 = getelementptr inbounds %struct.ZTranspRow, ptr %4, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !308
  %57 = getelementptr inbounds %struct.ZTranspRow, ptr %4, i64 0, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !310
  %59 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2
  store i32 0, ptr %0, align 8, !tbaa !347
  tail call void @shade_input_set_triangle(ptr noundef nonnull %59, i32 noundef %54, i32 noundef %56, i32 noundef 1) #14
  %60 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !351
  %62 = icmp eq ptr %61, null
  br i1 %62, label %174, label %63

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.VlakRen, ptr %61, i64 0, i32 7
  %65 = load i8, ptr %64, align 1, !tbaa !148
  %66 = and i8 %65, 8
  %67 = icmp eq i8 %66, 0
  %68 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !116
  br i1 %67, label %114, label %69

69:                                               ; preds = %63
  %70 = icmp sgt i16 %68, 0
  br i1 %70, label %71, label %168

71:                                               ; preds = %69
  %72 = sitofp i32 %2 to float
  %73 = sitofp i32 %3 to float
  %74 = sitofp i32 %53 to float
  br label %75

75:                                               ; preds = %71, %107
  %76 = phi i64 [ 0, %71 ], [ %110, %107 ]
  %77 = phi ptr [ %59, %71 ], [ %109, %107 ]
  %78 = phi i16 [ 0, %71 ], [ %108, %107 ]
  %79 = trunc i64 %76 to i32
  %80 = shl nuw i32 1, %79
  %81 = and i32 %80, %58
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %107, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %76
  %85 = load float, ptr %84, align 8, !tbaa !50
  %86 = fadd float %85, %72
  %87 = fadd float %86, 5.000000e-01
  %88 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %76, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !50
  %90 = fadd float %89, %73
  %91 = fadd float %90, 5.000000e-01
  %92 = icmp eq i16 %78, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.ShadeInput, ptr %77, i64 1
  tail call void @shade_input_copy_triangle(ptr noundef nonnull %94, ptr noundef %77) #14
  br label %95

95:                                               ; preds = %93, %83
  %96 = phi ptr [ %94, %93 ], [ %77, %83 ]
  %97 = getelementptr inbounds %struct.ShadeInput, ptr %96, i64 0, i32 105
  store i32 %80, ptr %97, align 4, !tbaa !349
  %98 = getelementptr inbounds %struct.ShadeInput, ptr %96, i64 0, i32 114
  %99 = load i16, ptr %98, align 2, !tbaa !352
  %100 = sext i16 %99 to i64
  %101 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 42, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !46
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %101, align 4, !tbaa !46
  %104 = getelementptr inbounds %struct.ShadeInput, ptr %96, i64 0, i32 107
  store i32 %102, ptr %104, align 4, !tbaa !353
  tail call void @shade_input_set_viewco(ptr noundef %96, float noundef %72, float noundef %73, float noundef %87, float noundef %91, float noundef %74) #14
  tail call void @shade_input_set_uv(ptr noundef %96) #14
  br i1 %92, label %105, label %106

105:                                              ; preds = %95
  tail call void @shade_input_set_normals(ptr noundef %96) #14
  br label %107

106:                                              ; preds = %95
  tail call void @shade_input_set_vertex_normals(ptr noundef %96) #14
  br label %107

107:                                              ; preds = %106, %105, %75
  %108 = phi i16 [ %78, %75 ], [ 1, %106 ], [ 1, %105 ]
  %109 = phi ptr [ %77, %75 ], [ %96, %106 ], [ %96, %105 ]
  %110 = add nuw nsw i64 %76, 1
  %111 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !116
  %112 = sext i16 %111 to i64
  %113 = icmp slt i64 %110, %112
  br i1 %113, label %75, label %168, !llvm.loop !354

114:                                              ; preds = %63
  %115 = icmp eq i16 %68, 0
  br i1 %115, label %136, label %116

116:                                              ; preds = %114
  %117 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 38), align 8, !tbaa !355
  %118 = getelementptr inbounds %struct.SampleTables, ptr %117, i64 0, i32 4
  %119 = load ptr, ptr %118, align 8, !tbaa !356
  %120 = sext i32 %58 to i64
  %121 = getelementptr inbounds i8, ptr %119, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !223
  %123 = sitofp i32 %2 to float
  %124 = zext i8 %122 to i32
  %125 = and i32 %124, 15
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds [16 x float], ptr %117, i64 0, i64 %126
  %128 = load float, ptr %127, align 4, !tbaa !50
  %129 = fadd float %128, %123
  %130 = sitofp i32 %3 to float
  %131 = lshr i32 %124, 4
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds [16 x float], ptr %117, i64 0, i64 %132
  %134 = load float, ptr %133, align 4, !tbaa !50
  %135 = fadd float %134, %130
  br label %152

136:                                              ; preds = %114
  %137 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 98, i32 8), align 2, !tbaa !117
  %138 = icmp eq i16 %137, 0
  %139 = sitofp i32 %2 to float
  br i1 %138, label %150, label %140

140:                                              ; preds = %136
  %141 = sext i16 %137 to i64
  %142 = add nsw i64 %141, -1
  %143 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 40, i64 %142
  %144 = load float, ptr %143, align 8, !tbaa !50
  %145 = fadd float %144, %139
  %146 = sitofp i32 %3 to float
  %147 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 40, i64 %142, i64 1
  %148 = load float, ptr %147, align 4, !tbaa !50
  %149 = fadd float %148, %146
  br label %152

150:                                              ; preds = %136
  %151 = sitofp i32 %3 to float
  br label %152

152:                                              ; preds = %150, %140, %116
  %153 = phi float [ %129, %116 ], [ %145, %140 ], [ %139, %150 ]
  %154 = phi float [ %135, %116 ], [ %149, %140 ], [ %151, %150 ]
  %155 = fadd float %154, 5.000000e-01
  %156 = fadd float %153, 5.000000e-01
  %157 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 105
  store i32 %58, ptr %157, align 4, !tbaa !349
  %158 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 114
  %159 = load i16, ptr %158, align 2, !tbaa !352
  %160 = sext i16 %159 to i64
  %161 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 42, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !46
  %163 = add nsw i32 %162, 1
  store i32 %163, ptr %161, align 4, !tbaa !46
  %164 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 107
  store i32 %162, ptr %164, align 4, !tbaa !353
  %165 = sitofp i32 %2 to float
  %166 = sitofp i32 %3 to float
  %167 = sitofp i32 %53 to float
  tail call void @shade_input_set_viewco(ptr noundef nonnull %59, float noundef %165, float noundef %166, float noundef %156, float noundef %155, float noundef %167) #14
  tail call void @shade_input_set_uv(ptr noundef nonnull %59) #14
  tail call void @shade_input_set_normals(ptr noundef nonnull %59) #14
  br label %168

168:                                              ; preds = %107, %69, %152
  %169 = phi ptr [ %59, %152 ], [ %59, %69 ], [ %109, %107 ]
  %170 = getelementptr inbounds %struct.ShadeInput, ptr %169, i64 0, i32 115
  %171 = load i16, ptr %170, align 4, !tbaa !358
  %172 = sext i16 %171 to i32
  %173 = add nsw i32 %172, 1
  store i32 %173, ptr %0, align 8, !tbaa !347
  br label %174

174:                                              ; preds = %51, %168
  %175 = load i32, ptr %0, align 8, !tbaa !347
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %225, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 3
  tail call void @shade_samples_do_AO(ptr noundef nonnull %0) #14
  %179 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 119
  %180 = load i32, ptr %179, align 8, !tbaa !359
  %181 = and i32 %180, -264195
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %207, label %183

183:                                              ; preds = %177
  %184 = load i32, ptr %0, align 8, !tbaa !347
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %225

186:                                              ; preds = %183, %201
  %187 = phi i32 [ %202, %201 ], [ 0, %183 ]
  %188 = phi ptr [ %204, %201 ], [ %178, %183 ]
  %189 = phi ptr [ %203, %201 ], [ %59, %183 ]
  tail call void @shade_input_set_shade_texco(ptr noundef nonnull %189) #14
  tail call void @shade_input_do_shade(ptr noundef nonnull %189, ptr noundef nonnull %188) #14
  %190 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !360
  %191 = and i16 %190, 8
  %192 = icmp eq i16 %191, 0
  br i1 %192, label %201, label %193

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.ShadeInput, ptr %189, i64 0, i32 118
  %195 = load i32, ptr %194, align 4, !tbaa !361
  %196 = and i32 %195, 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds [4 x float], ptr %188, i64 0, i64 3
  %200 = load float, ptr %199, align 4, !tbaa !50
  tail call void @renderspothalo(ptr noundef nonnull %189, ptr noundef nonnull %188, float noundef %200) #14
  br label %201

201:                                              ; preds = %186, %198, %193
  %202 = add nuw nsw i32 %187, 1
  %203 = getelementptr inbounds %struct.ShadeInput, ptr %189, i64 1
  %204 = getelementptr inbounds %struct.ShadeResult, ptr %188, i64 1
  %205 = load i32, ptr %0, align 8, !tbaa !347
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %186, label %225, !llvm.loop !362

207:                                              ; preds = %177
  %208 = and i32 %180, 2
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %225, label %210

210:                                              ; preds = %207
  %211 = load i32, ptr %0, align 8, !tbaa !347
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %225

213:                                              ; preds = %210, %213
  %214 = phi i32 [ %221, %213 ], [ 0, %210 ]
  %215 = phi ptr [ %223, %213 ], [ %178, %210 ]
  %216 = phi ptr [ %222, %213 ], [ %59, %210 ]
  %217 = getelementptr inbounds %struct.ShadeInput, ptr %216, i64 0, i32 29, i64 2
  %218 = load float, ptr %217, align 8, !tbaa !50
  %219 = fneg float %218
  %220 = getelementptr inbounds %struct.ShadeResult, ptr %215, i64 0, i32 4
  store float %219, ptr %220, align 4, !tbaa !333
  %221 = add nuw nsw i32 %214, 1
  %222 = getelementptr inbounds %struct.ShadeInput, ptr %216, i64 1
  %223 = getelementptr inbounds %struct.ShadeResult, ptr %215, i64 1
  %224 = icmp eq i32 %221, %211
  br i1 %224, label %225, label %213, !llvm.loop !363

225:                                              ; preds = %201, %213, %183, %210, %174, %207, %11
  %226 = phi i32 [ 1, %11 ], [ 1, %207 ], [ 0, %174 ], [ 1, %210 ], [ 1, %183 ], [ 1, %213 ], [ 1, %201 ]
  ret i32 %226
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @addtosamp_shr(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %5 = tail call i16 @llvm.umax.i16(i16 %4, i16 1)
  %6 = sext i16 %5 to i32
  %7 = icmp sgt i16 %5, 0
  br i1 %7, label %8, label %278

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ShadeSample, ptr %1, i64 0, i32 2
  %10 = getelementptr inbounds %struct.ShadeSample, ptr %1, i64 0, i32 3
  %11 = and i32 %2, 512
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %2, -513
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %2, 4
  %16 = icmp eq i32 %15, 0
  %17 = and i32 %2, 256
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %2, 65536
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %2, 8
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %2, 16
  %24 = icmp eq i32 %23, 0
  %25 = and i32 %2, 32
  %26 = icmp eq i32 %25, 0
  %27 = and i32 %2, 64
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %2, 131072
  %30 = icmp eq i32 %29, 0
  %31 = and i32 %2, 8192
  %32 = icmp eq i32 %31, 0
  %33 = and i32 %2, 128
  %34 = icmp eq i32 %33, 0
  %35 = and i32 %2, 1024
  %36 = icmp eq i32 %35, 0
  %37 = and i32 %2, 16384
  %38 = icmp eq i32 %37, 0
  br label %39

39:                                               ; preds = %8, %269
  %40 = phi ptr [ %0, %8 ], [ %276, %269 ]
  %41 = phi i32 [ %6, %8 ], [ %274, %269 ]
  %42 = phi i32 [ 0, %8 ], [ %275, %269 ]
  %43 = load i32, ptr %1, align 8, !tbaa !347
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %269

45:                                               ; preds = %39
  %46 = shl nuw i32 1, %42
  %47 = getelementptr inbounds [4 x float], ptr %40, i64 0, i64 3
  %48 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 4
  %49 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 16
  %50 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 16, i64 1
  %51 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 16, i64 2
  %52 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 16, i64 3
  %53 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 1
  %54 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 15
  %55 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 15, i64 1
  %56 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 15, i64 2
  %57 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 5
  %58 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 5, i64 1
  %59 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 5, i64 2
  %60 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 6
  %61 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 6, i64 1
  %62 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 6, i64 2
  %63 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 8
  %64 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 8, i64 1
  %65 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 8, i64 2
  %66 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 9
  %67 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 9, i64 1
  %68 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 9, i64 2
  %69 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 10
  %70 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 10, i64 1
  %71 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 10, i64 2
  %72 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 11
  %73 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 11, i64 1
  %74 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 11, i64 2
  %75 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 12
  %76 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 12, i64 1
  %77 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 12, i64 2
  %78 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 13
  %79 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 13, i64 1
  %80 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 13, i64 2
  %81 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 14
  %82 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 14, i64 1
  %83 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 14, i64 2
  %84 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 0, i32 3
  br label %85

85:                                               ; preds = %45, %263
  %86 = phi ptr [ %10, %45 ], [ %266, %263 ]
  %87 = phi ptr [ %9, %45 ], [ %265, %263 ]
  %88 = phi i32 [ 0, %45 ], [ %264, %263 ]
  %89 = getelementptr inbounds %struct.ShadeInput, ptr %87, i64 0, i32 105
  %90 = load i32, ptr %89, align 4, !tbaa !349
  %91 = and i32 %90, %46
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %263, label %93

93:                                               ; preds = %85
  %94 = load float, ptr %47, align 4, !tbaa !50
  %95 = fsub float 1.000000e+00, %94
  %96 = getelementptr inbounds [4 x float], ptr %86, i64 0, i64 3
  %97 = load float, ptr %96, align 4, !tbaa !50
  %98 = fmul float %95, %97
  tail call void @addAlphaUnderFloat(ptr noundef %40, ptr noundef nonnull %86) #14
  %99 = load float, ptr %48, align 4, !tbaa !333
  %100 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 4
  %101 = load float, ptr %100, align 4, !tbaa !333
  %102 = fcmp olt float %99, %101
  %103 = select i1 %102, float %99, float %101
  store float %103, ptr %48, align 4, !tbaa !333
  br i1 %12, label %113, label %104

104:                                              ; preds = %93
  %105 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 16
  %106 = load float, ptr %105, align 4, !tbaa !50
  store float %106, ptr %49, align 4, !tbaa !50
  %107 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 16, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !50
  store float %108, ptr %50, align 4, !tbaa !50
  %109 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 16, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !50
  store float %110, ptr %51, align 4, !tbaa !50
  %111 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 16, i64 3
  %112 = load float, ptr %111, align 4, !tbaa !50
  store float %112, ptr %52, align 4, !tbaa !50
  br label %113

113:                                              ; preds = %104, %93
  br i1 %14, label %263, label %114

114:                                              ; preds = %113
  br i1 %16, label %117, label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 1
  tail call void @addAlphaUnderFloat(ptr noundef nonnull %53, ptr noundef nonnull %116) #14
  br label %117

117:                                              ; preds = %115, %114
  br i1 %18, label %131, label %118

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 15
  %120 = load float, ptr %119, align 4, !tbaa !50
  %121 = load float, ptr %54, align 4, !tbaa !50
  %122 = tail call float @llvm.fmuladd.f32(float %120, float %98, float %121)
  store float %122, ptr %54, align 4, !tbaa !50
  %123 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 15, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !50
  %125 = load float, ptr %55, align 4, !tbaa !50
  %126 = tail call float @llvm.fmuladd.f32(float %124, float %98, float %125)
  store float %126, ptr %55, align 4, !tbaa !50
  %127 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 15, i64 2
  %128 = load float, ptr %127, align 4, !tbaa !50
  %129 = load float, ptr %56, align 4, !tbaa !50
  %130 = tail call float @llvm.fmuladd.f32(float %128, float %98, float %129)
  store float %130, ptr %56, align 4, !tbaa !50
  br label %131

131:                                              ; preds = %118, %117
  br i1 %20, label %145, label %132

132:                                              ; preds = %131
  %133 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 5
  %134 = load float, ptr %133, align 4, !tbaa !50
  %135 = load float, ptr %57, align 4, !tbaa !50
  %136 = tail call float @llvm.fmuladd.f32(float %134, float %98, float %135)
  store float %136, ptr %57, align 4, !tbaa !50
  %137 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 5, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !50
  %139 = load float, ptr %58, align 4, !tbaa !50
  %140 = tail call float @llvm.fmuladd.f32(float %138, float %98, float %139)
  store float %140, ptr %58, align 4, !tbaa !50
  %141 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 5, i64 2
  %142 = load float, ptr %141, align 4, !tbaa !50
  %143 = load float, ptr %59, align 4, !tbaa !50
  %144 = tail call float @llvm.fmuladd.f32(float %142, float %98, float %143)
  store float %144, ptr %59, align 4, !tbaa !50
  br label %145

145:                                              ; preds = %132, %131
  br i1 %22, label %159, label %146

146:                                              ; preds = %145
  %147 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 6
  %148 = load float, ptr %147, align 4, !tbaa !50
  %149 = load float, ptr %60, align 4, !tbaa !50
  %150 = tail call float @llvm.fmuladd.f32(float %148, float %98, float %149)
  store float %150, ptr %60, align 4, !tbaa !50
  %151 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 6, i64 1
  %152 = load float, ptr %151, align 4, !tbaa !50
  %153 = load float, ptr %61, align 4, !tbaa !50
  %154 = tail call float @llvm.fmuladd.f32(float %152, float %98, float %153)
  store float %154, ptr %61, align 4, !tbaa !50
  %155 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 6, i64 2
  %156 = load float, ptr %155, align 4, !tbaa !50
  %157 = load float, ptr %62, align 4, !tbaa !50
  %158 = tail call float @llvm.fmuladd.f32(float %156, float %98, float %157)
  store float %158, ptr %62, align 4, !tbaa !50
  br label %159

159:                                              ; preds = %146, %145
  br i1 %24, label %173, label %160

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 8
  %162 = load float, ptr %161, align 4, !tbaa !50
  %163 = load float, ptr %63, align 4, !tbaa !50
  %164 = tail call float @llvm.fmuladd.f32(float %162, float %98, float %163)
  store float %164, ptr %63, align 4, !tbaa !50
  %165 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 8, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !50
  %167 = load float, ptr %64, align 4, !tbaa !50
  %168 = tail call float @llvm.fmuladd.f32(float %166, float %98, float %167)
  store float %168, ptr %64, align 4, !tbaa !50
  %169 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 8, i64 2
  %170 = load float, ptr %169, align 4, !tbaa !50
  %171 = load float, ptr %65, align 4, !tbaa !50
  %172 = tail call float @llvm.fmuladd.f32(float %170, float %98, float %171)
  store float %172, ptr %65, align 4, !tbaa !50
  br label %173

173:                                              ; preds = %160, %159
  br i1 %26, label %187, label %174

174:                                              ; preds = %173
  %175 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 9
  %176 = load float, ptr %175, align 4, !tbaa !50
  %177 = load float, ptr %66, align 4, !tbaa !50
  %178 = tail call float @llvm.fmuladd.f32(float %176, float %98, float %177)
  store float %178, ptr %66, align 4, !tbaa !50
  %179 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 9, i64 1
  %180 = load float, ptr %179, align 4, !tbaa !50
  %181 = load float, ptr %67, align 4, !tbaa !50
  %182 = tail call float @llvm.fmuladd.f32(float %180, float %98, float %181)
  store float %182, ptr %67, align 4, !tbaa !50
  %183 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 9, i64 2
  %184 = load float, ptr %183, align 4, !tbaa !50
  %185 = load float, ptr %68, align 4, !tbaa !50
  %186 = tail call float @llvm.fmuladd.f32(float %184, float %98, float %185)
  store float %186, ptr %68, align 4, !tbaa !50
  br label %187

187:                                              ; preds = %174, %173
  br i1 %28, label %201, label %188

188:                                              ; preds = %187
  %189 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 10
  %190 = load float, ptr %189, align 4, !tbaa !50
  %191 = load float, ptr %69, align 4, !tbaa !50
  %192 = tail call float @llvm.fmuladd.f32(float %190, float %98, float %191)
  store float %192, ptr %69, align 4, !tbaa !50
  %193 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 10, i64 1
  %194 = load float, ptr %193, align 4, !tbaa !50
  %195 = load float, ptr %70, align 4, !tbaa !50
  %196 = tail call float @llvm.fmuladd.f32(float %194, float %98, float %195)
  store float %196, ptr %70, align 4, !tbaa !50
  %197 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 10, i64 2
  %198 = load float, ptr %197, align 4, !tbaa !50
  %199 = load float, ptr %71, align 4, !tbaa !50
  %200 = tail call float @llvm.fmuladd.f32(float %198, float %98, float %199)
  store float %200, ptr %71, align 4, !tbaa !50
  br label %201

201:                                              ; preds = %188, %187
  br i1 %30, label %215, label %202

202:                                              ; preds = %201
  %203 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 11
  %204 = load float, ptr %203, align 4, !tbaa !50
  %205 = load float, ptr %72, align 4, !tbaa !50
  %206 = tail call float @llvm.fmuladd.f32(float %204, float %98, float %205)
  store float %206, ptr %72, align 4, !tbaa !50
  %207 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 11, i64 1
  %208 = load float, ptr %207, align 4, !tbaa !50
  %209 = load float, ptr %73, align 4, !tbaa !50
  %210 = tail call float @llvm.fmuladd.f32(float %208, float %98, float %209)
  store float %210, ptr %73, align 4, !tbaa !50
  %211 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 11, i64 2
  %212 = load float, ptr %211, align 4, !tbaa !50
  %213 = load float, ptr %74, align 4, !tbaa !50
  %214 = tail call float @llvm.fmuladd.f32(float %212, float %98, float %213)
  store float %214, ptr %74, align 4, !tbaa !50
  br label %215

215:                                              ; preds = %202, %201
  br i1 %32, label %229, label %216

216:                                              ; preds = %215
  %217 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 12
  %218 = load float, ptr %217, align 4, !tbaa !50
  %219 = load float, ptr %75, align 4, !tbaa !50
  %220 = tail call float @llvm.fmuladd.f32(float %218, float %98, float %219)
  store float %220, ptr %75, align 4, !tbaa !50
  %221 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 12, i64 1
  %222 = load float, ptr %221, align 4, !tbaa !50
  %223 = load float, ptr %76, align 4, !tbaa !50
  %224 = tail call float @llvm.fmuladd.f32(float %222, float %98, float %223)
  store float %224, ptr %76, align 4, !tbaa !50
  %225 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 12, i64 2
  %226 = load float, ptr %225, align 4, !tbaa !50
  %227 = load float, ptr %77, align 4, !tbaa !50
  %228 = tail call float @llvm.fmuladd.f32(float %226, float %98, float %227)
  store float %228, ptr %77, align 4, !tbaa !50
  br label %229

229:                                              ; preds = %216, %215
  br i1 %34, label %243, label %230

230:                                              ; preds = %229
  %231 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 13
  %232 = load float, ptr %231, align 4, !tbaa !50
  %233 = load float, ptr %78, align 4, !tbaa !50
  %234 = tail call float @llvm.fmuladd.f32(float %232, float %98, float %233)
  store float %234, ptr %78, align 4, !tbaa !50
  %235 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 13, i64 1
  %236 = load float, ptr %235, align 4, !tbaa !50
  %237 = load float, ptr %79, align 4, !tbaa !50
  %238 = tail call float @llvm.fmuladd.f32(float %236, float %98, float %237)
  store float %238, ptr %79, align 4, !tbaa !50
  %239 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 13, i64 2
  %240 = load float, ptr %239, align 4, !tbaa !50
  %241 = load float, ptr %80, align 4, !tbaa !50
  %242 = tail call float @llvm.fmuladd.f32(float %240, float %98, float %241)
  store float %242, ptr %80, align 4, !tbaa !50
  br label %243

243:                                              ; preds = %230, %229
  br i1 %36, label %257, label %244

244:                                              ; preds = %243
  %245 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 14
  %246 = load float, ptr %245, align 4, !tbaa !50
  %247 = load float, ptr %81, align 4, !tbaa !50
  %248 = tail call float @llvm.fmuladd.f32(float %246, float %98, float %247)
  store float %248, ptr %81, align 4, !tbaa !50
  %249 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 14, i64 1
  %250 = load float, ptr %249, align 4, !tbaa !50
  %251 = load float, ptr %82, align 4, !tbaa !50
  %252 = tail call float @llvm.fmuladd.f32(float %250, float %98, float %251)
  store float %252, ptr %82, align 4, !tbaa !50
  %253 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 14, i64 2
  %254 = load float, ptr %253, align 4, !tbaa !50
  %255 = load float, ptr %83, align 4, !tbaa !50
  %256 = tail call float @llvm.fmuladd.f32(float %254, float %98, float %255)
  store float %256, ptr %83, align 4, !tbaa !50
  br label %257

257:                                              ; preds = %244, %243
  br i1 %38, label %263, label %258

258:                                              ; preds = %257
  %259 = load float, ptr %84, align 4, !tbaa !364
  %260 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 0, i32 3
  %261 = load float, ptr %260, align 4, !tbaa !364
  %262 = tail call float @llvm.fmuladd.f32(float %98, float %261, float %259)
  store float %262, ptr %84, align 4, !tbaa !364
  br label %263

263:                                              ; preds = %113, %258, %257, %85
  %264 = add nuw nsw i32 %88, 1
  %265 = getelementptr inbounds %struct.ShadeInput, ptr %87, i64 1
  %266 = getelementptr inbounds %struct.ShadeResult, ptr %86, i64 1
  %267 = load i32, ptr %1, align 8, !tbaa !347
  %268 = icmp slt i32 %264, %267
  br i1 %268, label %85, label %269, !llvm.loop !365

269:                                              ; preds = %263, %39
  %270 = getelementptr inbounds [4 x float], ptr %40, i64 0, i64 3
  %271 = load float, ptr %270, align 4, !tbaa !50
  %272 = fcmp ogt float %271, 0x3FEFF7CEE0000000
  %273 = sext i1 %272 to i32
  %274 = add nsw i32 %41, %273
  %275 = add nuw nsw i32 %42, 1
  %276 = getelementptr inbounds %struct.ShadeResult, ptr %40, i64 1
  %277 = icmp eq i32 %275, %6
  br i1 %277, label %278, label %39, !llvm.loop !366

278:                                              ; preds = %269, %3
  %279 = phi i32 [ %6, %3 ], [ %274, %269 ]
  ret i32 %279
}

declare void @addAlphaUnderFloat(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @add_transp_passes(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, float noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %81, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 3
  %10 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 15
  %11 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 14
  %12 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 13
  %13 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 12
  %14 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 11
  %15 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 10
  %16 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 9
  %17 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 8
  %18 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 6
  %19 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 5
  %20 = shl nsw i32 %1, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 1
  %23 = sext i32 %1 to i64
  %24 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 4
  %25 = fsub float 1.000000e+00, %3
  br label %26

26:                                               ; preds = %8, %78
  %27 = phi ptr [ %6, %8 ], [ %79, %78 ]
  %28 = getelementptr inbounds %struct.RenderPass, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !301
  switch i32 %29, label %53 [
    i32 2, label %30
    i32 4, label %38
    i32 65536, label %42
    i32 8, label %43
    i32 16, label %44
    i32 32, label %45
    i32 64, label %46
    i32 131072, label %47
    i32 8192, label %48
    i32 128, label %49
    i32 1024, label %50
    i32 256, label %51
    i32 16384, label %52
  ]

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.RenderPass, ptr %27, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !304
  %33 = getelementptr inbounds float, ptr %32, i64 %23
  %34 = load float, ptr %24, align 4, !tbaa !333
  %35 = load float, ptr %33, align 4, !tbaa !50
  %36 = fcmp olt float %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %30
  store float %34, ptr %33, align 4, !tbaa !50
  br label %53

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.RenderPass, ptr %27, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !304
  %41 = getelementptr inbounds float, ptr %40, i64 %21
  tail call void @addAlphaOverFloat(ptr noundef %41, ptr noundef nonnull %22) #14
  br label %53

42:                                               ; preds = %26
  br label %53

43:                                               ; preds = %26
  br label %53

44:                                               ; preds = %26
  br label %53

45:                                               ; preds = %26
  br label %53

46:                                               ; preds = %26
  br label %53

47:                                               ; preds = %26
  br label %53

48:                                               ; preds = %26
  br label %53

49:                                               ; preds = %26
  br label %53

50:                                               ; preds = %26
  br label %53

51:                                               ; preds = %26
  br label %53

52:                                               ; preds = %26
  br label %53

53:                                               ; preds = %30, %37, %26, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %38
  %54 = phi ptr [ null, %26 ], [ %9, %52 ], [ %10, %51 ], [ %11, %50 ], [ %12, %49 ], [ %13, %48 ], [ %14, %47 ], [ %15, %46 ], [ %16, %45 ], [ %17, %44 ], [ %18, %43 ], [ %19, %42 ], [ null, %38 ], [ null, %37 ], [ null, %30 ]
  %55 = phi i1 [ true, %26 ], [ false, %52 ], [ true, %51 ], [ true, %50 ], [ true, %49 ], [ true, %48 ], [ true, %47 ], [ true, %46 ], [ true, %45 ], [ true, %44 ], [ true, %43 ], [ true, %42 ], [ true, %38 ], [ true, %37 ], [ true, %30 ]
  %56 = phi i32 [ 3, %26 ], [ 1, %52 ], [ 3, %51 ], [ 3, %50 ], [ 3, %49 ], [ 3, %48 ], [ 3, %47 ], [ 3, %46 ], [ 3, %45 ], [ 3, %44 ], [ 3, %43 ], [ 3, %42 ], [ 3, %38 ], [ 3, %37 ], [ 3, %30 ]
  %57 = icmp eq ptr %54, null
  br i1 %57, label %78, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.RenderPass, ptr %27, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !304
  %61 = mul nsw i32 %56, %1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, ptr %60, i64 %62
  %64 = load float, ptr %54, align 4, !tbaa !50
  %65 = load float, ptr %63, align 4, !tbaa !50
  %66 = tail call float @llvm.fmuladd.f32(float %25, float %65, float %64)
  store float %66, ptr %63, align 4, !tbaa !50
  br i1 %55, label %67, label %78

67:                                               ; preds = %58
  %68 = getelementptr inbounds float, ptr %54, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !50
  %70 = getelementptr inbounds float, ptr %63, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !50
  %72 = tail call float @llvm.fmuladd.f32(float %25, float %71, float %69)
  store float %72, ptr %70, align 4, !tbaa !50
  %73 = getelementptr inbounds float, ptr %54, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !50
  %75 = getelementptr inbounds float, ptr %63, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !50
  %77 = tail call float @llvm.fmuladd.f32(float %25, float %76, float %74)
  store float %77, ptr %75, align 4, !tbaa !50
  br label %78

78:                                               ; preds = %58, %67, %53
  %79 = load ptr, ptr %27, align 8, !tbaa !42
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %26, !llvm.loop !367

81:                                               ; preds = %78, %4
  ret void
}

declare void @addAlphaOverFloat(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @add_filt_fmask(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @ISB_free(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal void @zbuffillAc4(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = add nsw i32 %9, 1
  %11 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 4
  store i32 %10, ptr %11, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 2
  store i32 %10, ptr %12, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 5
  store i32 -1, ptr %13, align 4, !tbaa !65
  %14 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 3
  store i32 -1, ptr %14, align 4, !tbaa !66
  %15 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 9
  %16 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 8
  %17 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 32, i1 false)
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %3, ptr noundef %4)
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %4, ptr noundef %5)
  %18 = icmp eq ptr %6, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %6)
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %3)
  br label %21

20:                                               ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %5, ptr noundef %3)
  br label %21

21:                                               ; preds = %20, %19
  %22 = load ptr, ptr %16, align 8, !tbaa !67
  %23 = icmp eq ptr %22, null
  br i1 %23, label %303, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %15, align 8, !tbaa !68
  %26 = icmp eq ptr %25, null
  br i1 %26, label %303, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %12, align 8, !tbaa !64
  %29 = load i32, ptr %11, align 8, !tbaa !63
  %30 = tail call i32 @llvm.smax.i32(i32 %28, i32 %29)
  %31 = load i32, ptr %14, align 4, !tbaa !66
  %32 = load i32, ptr %13, align 4, !tbaa !65
  %33 = tail call i32 @llvm.smin.i32(i32 %31, i32 %32)
  %34 = icmp slt i32 %33, %30
  br i1 %34, label %303, label %35

35:                                               ; preds = %27
  %36 = load float, ptr %3, align 4, !tbaa !50
  %37 = load float, ptr %4, align 4, !tbaa !50
  %38 = fsub float %36, %37
  %39 = load float, ptr %5, align 4, !tbaa !50
  %40 = fsub float %37, %39
  %41 = getelementptr inbounds float, ptr %3, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !50
  %43 = getelementptr inbounds float, ptr %4, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !50
  %45 = fsub float %42, %44
  %46 = getelementptr inbounds float, ptr %5, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !50
  %48 = fsub float %44, %47
  %49 = fneg float %45
  %50 = fmul float %40, %49
  %51 = tail call float @llvm.fmuladd.f32(float %38, float %48, float %50)
  %52 = fcmp oeq float %51, 0.000000e+00
  br i1 %52, label %303, label %53

53:                                               ; preds = %35
  %54 = getelementptr inbounds float, ptr %3, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !50
  %56 = getelementptr inbounds float, ptr %4, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !50
  %58 = fsub float %55, %57
  %59 = getelementptr inbounds float, ptr %5, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !50
  %61 = fsub float %57, %60
  %62 = fneg float %38
  %63 = fmul float %61, %62
  %64 = tail call float @llvm.fmuladd.f32(float %58, float %40, float %63)
  %65 = fneg float %58
  %66 = fmul float %48, %65
  %67 = tail call float @llvm.fmuladd.f32(float %45, float %61, float %66)
  %68 = fpext float %67 to double
  %69 = fneg double %68
  %70 = fpext float %51 to double
  %71 = fdiv double %69, %70
  %72 = fpext float %64 to double
  %73 = fneg double %72
  %74 = fdiv double %73, %70
  %75 = load i32, ptr %0, align 8, !tbaa !34
  %76 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 21
  %77 = icmp slt i32 %33, %30
  br i1 %77, label %303, label %78

78:                                               ; preds = %53
  %79 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  %80 = load ptr, ptr %79, align 8, !tbaa !43
  %81 = add nsw i32 %33, %30
  %82 = sdiv i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, ptr %80, i64 %83
  %85 = load float, ptr %84, align 4, !tbaa !50
  %86 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  %87 = load ptr, ptr %86, align 8, !tbaa !44
  %88 = getelementptr inbounds float, ptr %87, i64 %83
  %89 = load float, ptr %88, align 4, !tbaa !50
  %90 = fcmp olt float %85, %89
  %91 = sext i32 %33 to i64
  %92 = getelementptr inbounds float, ptr %87, i64 %91
  %93 = getelementptr inbounds float, ptr %80, i64 %91
  %94 = select i1 %90, ptr %92, ptr %93
  %95 = select i1 %90, ptr %93, ptr %92
  %96 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 28
  %97 = load i32, ptr %96, align 8, !tbaa !279
  %98 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 22
  %99 = load ptr, ptr %98, align 8, !tbaa !266
  %100 = mul nsw i32 %75, %33
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.APixstr, ptr %99, i64 %101
  %103 = load ptr, ptr %76, align 8, !tbaa !160
  %104 = getelementptr inbounds i32, ptr %103, i64 %101
  %105 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 17
  %106 = load ptr, ptr %105, align 8, !tbaa !265
  %107 = getelementptr inbounds i32, ptr %106, i64 %101
  %108 = sitofp i32 %33 to double
  %109 = fmul float %42, %64
  %110 = tail call float @llvm.fmuladd.f32(float %67, float %36, float %109)
  %111 = fdiv float %110, %51
  %112 = fadd float %55, %111
  %113 = fpext float %112 to double
  %114 = tail call double @llvm.fmuladd.f64(double %108, double %74, double %113)
  %115 = add nsw i32 %75, -1
  %116 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 26
  %117 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 29
  %118 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 23
  %119 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 25
  %120 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 23
  %121 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 23
  %122 = trunc i32 %97 to i16
  %123 = trunc i32 %97 to i16
  %124 = trunc i32 %97 to i16
  %125 = trunc i32 %97 to i16
  %126 = trunc i32 %97 to i16
  %127 = trunc i32 %97 to i16
  %128 = trunc i32 %97 to i16
  %129 = trunc i32 %97 to i16
  %130 = sext i32 %75 to i64
  %131 = sub nsw i64 0, %130
  br label %132

132:                                              ; preds = %78, %294
  %133 = phi ptr [ %102, %78 ], [ %298, %294 ]
  %134 = phi ptr [ %104, %78 ], [ %297, %294 ]
  %135 = phi ptr [ %107, %78 ], [ %296, %294 ]
  %136 = phi i32 [ %33, %78 ], [ %299, %294 ]
  %137 = phi ptr [ %94, %78 ], [ %301, %294 ]
  %138 = phi ptr [ %95, %78 ], [ %300, %294 ]
  %139 = phi double [ %114, %78 ], [ %295, %294 ]
  %140 = load float, ptr %138, align 4, !tbaa !50
  %141 = tail call float @llvm.floor.f32(float %140)
  %142 = fptosi float %141 to i32
  %143 = load float, ptr %137, align 4, !tbaa !50
  %144 = tail call float @llvm.floor.f32(float %143)
  %145 = fptosi float %144 to i32
  %146 = icmp sgt i32 %75, %145
  %147 = select i1 %146, i32 %145, i32 %115
  %148 = tail call i32 @llvm.smax.i32(i32 %142, i32 -1)
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %294

150:                                              ; preds = %132
  %151 = add nsw i32 %148, 1
  %152 = sub nsw i32 %147, %151
  %153 = icmp sgt i32 %152, -1
  br i1 %153, label %154, label %294

154:                                              ; preds = %150
  %155 = sitofp i32 %151 to double
  %156 = tail call double @llvm.fmuladd.f64(double %155, double %71, double %139)
  %157 = load i32, ptr %116, align 8, !tbaa !282
  %158 = sitofp i32 %157 to double
  %159 = fsub double %156, %158
  %160 = sext i32 %151 to i64
  %161 = getelementptr inbounds %struct.APixstr, ptr %133, i64 %160
  %162 = getelementptr inbounds i32, ptr %134, i64 %160
  %163 = getelementptr inbounds i32, ptr %135, i64 %160
  br label %164

164:                                              ; preds = %154, %287
  %165 = phi ptr [ %291, %287 ], [ %161, %154 ]
  %166 = phi i32 [ %292, %287 ], [ %152, %154 ]
  %167 = phi ptr [ %290, %287 ], [ %162, %154 ]
  %168 = phi ptr [ %289, %287 ], [ %163, %154 ]
  %169 = phi double [ %288, %287 ], [ %159, %154 ]
  %170 = fcmp olt double %169, 0xC1E0000000000000
  %171 = fcmp ogt double %169, 0x41DFFFFFFFC00000
  %172 = select i1 %171, double 0x41DFFFFFFFC00000, double %169
  %173 = select i1 %170, double 0xC1E0000000000000, double %172
  %174 = fptosi double %173 to i32
  %175 = load i32, ptr %168, align 4, !tbaa !46
  %176 = icmp sgt i32 %175, %174
  br i1 %176, label %177, label %287

177:                                              ; preds = %164
  %178 = load ptr, ptr %76, align 8, !tbaa !160
  %179 = icmp eq ptr %178, null
  br i1 %179, label %185, label %180

180:                                              ; preds = %177
  %181 = load i32, ptr %167, align 4, !tbaa !46
  %182 = icmp sge i32 %181, %174
  %183 = icmp eq ptr %165, null
  %184 = select i1 %182, i1 true, i1 %183
  br i1 %184, label %287, label %187

185:                                              ; preds = %177
  %186 = icmp eq ptr %165, null
  br i1 %186, label %287, label %187

187:                                              ; preds = %185, %180
  br label %188

188:                                              ; preds = %187, %284
  %189 = phi ptr [ %285, %284 ], [ %165, %187 ]
  %190 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 2
  %191 = load i32, ptr %190, align 8, !tbaa !46
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 2
  %195 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 3
  store i32 %1, ptr %195, align 8, !tbaa !46
  store i32 %2, ptr %194, align 8, !tbaa !46
  %196 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 1
  store i32 %174, ptr %196, align 8, !tbaa !46
  store i16 %129, ptr %189, align 8, !tbaa !309
  br label %287

197:                                              ; preds = %188
  %198 = icmp eq i32 %191, %2
  br i1 %198, label %199, label %206

199:                                              ; preds = %197
  %200 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 3
  %201 = load i32, ptr %200, align 8, !tbaa !46
  %202 = icmp eq i32 %201, %1
  br i1 %202, label %203, label %206

203:                                              ; preds = %199
  %204 = load i16, ptr %189, align 8, !tbaa !309
  %205 = or i16 %204, %128
  store i16 %205, ptr %189, align 8, !tbaa !309
  br label %287

206:                                              ; preds = %199, %197
  %207 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 2, i64 1
  %208 = load i32, ptr %207, align 4, !tbaa !46
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 2, i64 1
  %212 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 3, i64 1
  store i32 %1, ptr %212, align 4, !tbaa !46
  store i32 %2, ptr %211, align 4, !tbaa !46
  %213 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 1, i64 1
  store i32 %174, ptr %213, align 4, !tbaa !46
  %214 = getelementptr inbounds [4 x i16], ptr %189, i64 0, i64 1
  store i16 %127, ptr %214, align 2, !tbaa !309
  br label %287

215:                                              ; preds = %206
  %216 = icmp eq i32 %208, %2
  br i1 %216, label %217, label %225

217:                                              ; preds = %215
  %218 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 3, i64 1
  %219 = load i32, ptr %218, align 4, !tbaa !46
  %220 = icmp eq i32 %219, %1
  br i1 %220, label %221, label %225

221:                                              ; preds = %217
  %222 = getelementptr inbounds [4 x i16], ptr %189, i64 0, i64 1
  %223 = load i16, ptr %222, align 2, !tbaa !309
  %224 = or i16 %223, %126
  store i16 %224, ptr %222, align 2, !tbaa !309
  br label %287

225:                                              ; preds = %217, %215
  %226 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 2, i64 2
  %227 = load i32, ptr %226, align 8, !tbaa !46
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 2, i64 2
  %231 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 3, i64 2
  store i32 %1, ptr %231, align 8, !tbaa !46
  store i32 %2, ptr %230, align 8, !tbaa !46
  %232 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 1, i64 2
  store i32 %174, ptr %232, align 8, !tbaa !46
  %233 = getelementptr inbounds [4 x i16], ptr %189, i64 0, i64 2
  store i16 %125, ptr %233, align 4, !tbaa !309
  br label %287

234:                                              ; preds = %225
  %235 = icmp eq i32 %227, %2
  br i1 %235, label %236, label %244

236:                                              ; preds = %234
  %237 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 3, i64 2
  %238 = load i32, ptr %237, align 8, !tbaa !46
  %239 = icmp eq i32 %238, %1
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = getelementptr inbounds [4 x i16], ptr %189, i64 0, i64 2
  %242 = load i16, ptr %241, align 4, !tbaa !309
  %243 = or i16 %242, %124
  store i16 %243, ptr %241, align 4, !tbaa !309
  br label %287

244:                                              ; preds = %236, %234
  %245 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 2, i64 3
  %246 = load i32, ptr %245, align 4, !tbaa !46
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 2, i64 3
  %250 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 3, i64 3
  store i32 %1, ptr %250, align 4, !tbaa !46
  store i32 %2, ptr %249, align 4, !tbaa !46
  %251 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 1, i64 3
  store i32 %174, ptr %251, align 4, !tbaa !46
  %252 = getelementptr inbounds [4 x i16], ptr %189, i64 0, i64 3
  store i16 %123, ptr %252, align 2, !tbaa !309
  br label %287

253:                                              ; preds = %244
  %254 = icmp eq i32 %246, %2
  br i1 %254, label %255, label %263

255:                                              ; preds = %253
  %256 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 3, i64 3
  %257 = load i32, ptr %256, align 4, !tbaa !46
  %258 = icmp eq i32 %257, %1
  br i1 %258, label %259, label %263

259:                                              ; preds = %255
  %260 = getelementptr inbounds [4 x i16], ptr %189, i64 0, i64 3
  %261 = load i16, ptr %260, align 2, !tbaa !309
  %262 = or i16 %261, %122
  store i16 %262, ptr %260, align 2, !tbaa !309
  br label %287

263:                                              ; preds = %255, %253
  %264 = getelementptr inbounds %struct.APixstr, ptr %189, i64 0, i32 5
  %265 = load ptr, ptr %264, align 8, !tbaa !313
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %284

267:                                              ; preds = %263
  %268 = load i32, ptr %117, align 4, !tbaa !368
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %267
  %271 = load ptr, ptr %119, align 8, !tbaa !267
  %272 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %273 = tail call ptr %272(i64 noundef 24, ptr noundef nonnull @.str.19) #14
  tail call void @BLI_addtail(ptr noundef %271, ptr noundef %273) #14
  %274 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %275 = tail call ptr %274(i64 noundef 294912, ptr noundef nonnull @.str.20) #14
  %276 = getelementptr inbounds %struct.APixstrMain, ptr %273, i64 0, i32 2
  store ptr %275, ptr %276, align 8, !tbaa !55
  store ptr %275, ptr %120, align 8, !tbaa !369
  br label %281

277:                                              ; preds = %267
  %278 = load ptr, ptr %118, align 8, !tbaa !369
  %279 = getelementptr inbounds %struct.APixstr, ptr %278, i64 1
  store ptr %279, ptr %118, align 8, !tbaa !369
  %280 = add nsw i32 %268, -1
  br label %281

281:                                              ; preds = %270, %277
  %282 = phi i32 [ %280, %277 ], [ 4095, %270 ]
  store i32 %282, ptr %117, align 4, !tbaa !368
  %283 = load ptr, ptr %121, align 8, !tbaa !369
  store ptr %283, ptr %264, align 8, !tbaa !313
  br label %284

284:                                              ; preds = %281, %263
  %285 = load ptr, ptr %264, align 8, !tbaa !313
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %188, !llvm.loop !370

287:                                              ; preds = %284, %185, %180, %259, %248, %240, %229, %221, %210, %203, %193, %164
  %288 = fadd double %71, %169
  %289 = getelementptr inbounds i32, ptr %168, i64 1
  %290 = getelementptr inbounds i32, ptr %167, i64 1
  %291 = getelementptr inbounds %struct.APixstr, ptr %165, i64 1
  %292 = add nsw i32 %166, -1
  %293 = icmp sgt i32 %166, 0
  br i1 %293, label %164, label %294, !llvm.loop !371

294:                                              ; preds = %287, %150, %132
  %295 = fsub double %139, %74
  %296 = getelementptr inbounds i32, ptr %135, i64 %131
  %297 = getelementptr inbounds i32, ptr %134, i64 %131
  %298 = getelementptr inbounds %struct.APixstr, ptr %133, i64 %131
  %299 = add nsw i32 %136, -1
  %300 = getelementptr inbounds float, ptr %138, i64 -1
  %301 = getelementptr inbounds float, ptr %137, i64 -1
  %302 = icmp sgt i32 %136, %30
  br i1 %302, label %132, label %303, !llvm.loop !372

303:                                              ; preds = %294, %53, %35, %27, %21, %24
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @zbuflineAc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #0 {
  %6 = load float, ptr %4, align 4, !tbaa !50
  %7 = load float, ptr %3, align 4, !tbaa !50
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds float, ptr %4, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !50
  %11 = getelementptr inbounds float, ptr %3, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !50
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 28
  %15 = load i32, ptr %14, align 8, !tbaa !279
  %16 = tail call float @llvm.fabs.f32(float %8)
  %17 = tail call float @llvm.fabs.f32(float %13)
  %18 = fcmp ogt float %16, %17
  br i1 %18, label %19, label %244

19:                                               ; preds = %5
  %20 = fcmp olt float %7, %6
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = fneg float %8
  %23 = fneg float %13
  br label %24

24:                                               ; preds = %19, %21
  %25 = phi ptr [ %4, %21 ], [ %3, %19 ]
  %26 = phi float [ %10, %21 ], [ %12, %19 ]
  %27 = phi float [ %6, %21 ], [ %7, %19 ]
  %28 = phi ptr [ %3, %21 ], [ %4, %19 ]
  %29 = phi float [ %22, %21 ], [ %8, %19 ]
  %30 = phi float [ %23, %21 ], [ %13, %19 ]
  %31 = getelementptr inbounds float, ptr %28, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !50
  %33 = getelementptr inbounds float, ptr %25, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !50
  %35 = tail call float @llvm.floor.f32(float %27)
  %36 = fptosi float %35 to i32
  %37 = sitofp i32 %36 to double
  %38 = tail call float @llvm.floor.f32(float %29)
  %39 = fpext float %38 to double
  %40 = fadd double %37, %39
  %41 = fptosi double %40 to i32
  %42 = load i32, ptr %0, align 8, !tbaa !34
  %43 = icmp sgt i32 %42, %41
  %44 = add nsw i32 %42, -1
  %45 = select i1 %43, i32 %41, i32 %44
  %46 = fdiv float %30, %29
  %47 = fptosi float %34 to i32
  %48 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 26
  %49 = load i32, ptr %48, align 8, !tbaa !282
  %50 = sub nsw i32 %47, %49
  %51 = fsub float %32, %34
  %52 = fdiv float %51, %29
  %53 = fptosi float %52 to i32
  %54 = icmp sgt i32 %50, 1342177280
  %55 = icmp sgt i32 %53, 0
  %56 = select i1 %54, i1 %55, i1 false
  %57 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 21
  %58 = icmp slt i32 %45, %36
  br i1 %58, label %458, label %59

59:                                               ; preds = %24
  %60 = fcmp olt float %46, 0.000000e+00
  %61 = sub nsw i32 0, %42
  %62 = select i1 %60, i32 %61, i32 %42
  %63 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 22
  %64 = load ptr, ptr %63, align 8, !tbaa !266
  %65 = tail call float @llvm.floor.f32(float %26)
  %66 = fptosi float %65 to i32
  %67 = mul nsw i32 %42, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.APixstr, ptr %64, i64 %68
  %70 = sext i32 %36 to i64
  %71 = getelementptr inbounds %struct.APixstr, ptr %69, i64 %70
  %72 = load ptr, ptr %57, align 8, !tbaa !160
  %73 = getelementptr inbounds i32, ptr %72, i64 %68
  %74 = getelementptr inbounds i32, ptr %73, i64 %70
  %75 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 17
  %76 = load ptr, ptr %75, align 8, !tbaa !265
  %77 = getelementptr inbounds i32, ptr %76, i64 %68
  %78 = getelementptr inbounds i32, ptr %77, i64 %70
  %79 = sext i32 %62 to i64
  %80 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %81 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 29
  %82 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 23
  %83 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 25
  %84 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 23
  %85 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 23
  %86 = trunc i32 %15 to i16
  %87 = trunc i32 %15 to i16
  %88 = trunc i32 %15 to i16
  %89 = trunc i32 %15 to i16
  %90 = trunc i32 %15 to i16
  %91 = trunc i32 %15 to i16
  %92 = trunc i32 %15 to i16
  %93 = trunc i32 %15 to i16
  %94 = sub nsw i32 2147483632, %53
  br label %95

95:                                               ; preds = %59, %233
  %96 = phi ptr [ %71, %59 ], [ %242, %233 ]
  %97 = phi i32 [ %50, %59 ], [ %238, %233 ]
  %98 = phi i32 [ %66, %59 ], [ %113, %233 ]
  %99 = phi i32 [ %36, %59 ], [ %239, %233 ]
  %100 = phi ptr [ %74, %59 ], [ %241, %233 ]
  %101 = phi ptr [ %78, %59 ], [ %240, %233 ]
  %102 = phi float [ %26, %59 ], [ %234, %233 ]
  %103 = tail call float @llvm.floor.f32(float %102)
  %104 = fptosi float %103 to i32
  %105 = icmp eq i32 %98, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %95
  %107 = getelementptr inbounds i32, ptr %101, i64 %79
  %108 = getelementptr inbounds i32, ptr %100, i64 %79
  %109 = getelementptr inbounds %struct.APixstr, ptr %96, i64 %79
  br label %110

110:                                              ; preds = %106, %95
  %111 = phi ptr [ %107, %106 ], [ %101, %95 ]
  %112 = phi ptr [ %108, %106 ], [ %100, %95 ]
  %113 = phi i32 [ %104, %106 ], [ %98, %95 ]
  %114 = phi ptr [ %109, %106 ], [ %96, %95 ]
  %115 = or i32 %99, %104
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %117, label %233

117:                                              ; preds = %110
  %118 = load i32, ptr %80, align 4, !tbaa !41
  %119 = icmp sgt i32 %118, %104
  br i1 %119, label %120, label %233

120:                                              ; preds = %117
  %121 = load i32, ptr %111, align 4, !tbaa !46
  %122 = icmp slt i32 %97, %121
  br i1 %122, label %123, label %233

123:                                              ; preds = %120
  %124 = load ptr, ptr %57, align 8, !tbaa !160
  %125 = icmp eq ptr %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = load i32, ptr %112, align 4, !tbaa !46
  %128 = icmp sle i32 %97, %127
  %129 = icmp eq ptr %114, null
  %130 = select i1 %128, i1 true, i1 %129
  br i1 %130, label %233, label %133

131:                                              ; preds = %123
  %132 = icmp eq ptr %114, null
  br i1 %132, label %233, label %133

133:                                              ; preds = %131, %126
  br label %134

134:                                              ; preds = %133, %230
  %135 = phi ptr [ %231, %230 ], [ %114, %133 ]
  %136 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 2
  %137 = load i32, ptr %136, align 8, !tbaa !46
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 2
  %141 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 3
  store i32 %1, ptr %141, align 8, !tbaa !46
  store i32 %2, ptr %140, align 8, !tbaa !46
  %142 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 1
  store i32 %97, ptr %142, align 8, !tbaa !46
  store i16 %93, ptr %135, align 8, !tbaa !309
  br label %233

143:                                              ; preds = %134
  %144 = icmp eq i32 %137, %2
  br i1 %144, label %145, label %152

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 3
  %147 = load i32, ptr %146, align 8, !tbaa !46
  %148 = icmp eq i32 %147, %1
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i16, ptr %135, align 8, !tbaa !309
  %151 = or i16 %150, %92
  store i16 %151, ptr %135, align 8, !tbaa !309
  br label %233

152:                                              ; preds = %145, %143
  %153 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 2, i64 1
  %154 = load i32, ptr %153, align 4, !tbaa !46
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 2, i64 1
  %158 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 3, i64 1
  store i32 %1, ptr %158, align 4, !tbaa !46
  store i32 %2, ptr %157, align 4, !tbaa !46
  %159 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 1, i64 1
  store i32 %97, ptr %159, align 4, !tbaa !46
  %160 = getelementptr inbounds [4 x i16], ptr %135, i64 0, i64 1
  store i16 %91, ptr %160, align 2, !tbaa !309
  br label %233

161:                                              ; preds = %152
  %162 = icmp eq i32 %154, %2
  br i1 %162, label %163, label %171

163:                                              ; preds = %161
  %164 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 3, i64 1
  %165 = load i32, ptr %164, align 4, !tbaa !46
  %166 = icmp eq i32 %165, %1
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = getelementptr inbounds [4 x i16], ptr %135, i64 0, i64 1
  %169 = load i16, ptr %168, align 2, !tbaa !309
  %170 = or i16 %169, %90
  store i16 %170, ptr %168, align 2, !tbaa !309
  br label %233

171:                                              ; preds = %163, %161
  %172 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 2, i64 2
  %173 = load i32, ptr %172, align 8, !tbaa !46
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 2, i64 2
  %177 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 3, i64 2
  store i32 %1, ptr %177, align 8, !tbaa !46
  store i32 %2, ptr %176, align 8, !tbaa !46
  %178 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 1, i64 2
  store i32 %97, ptr %178, align 8, !tbaa !46
  %179 = getelementptr inbounds [4 x i16], ptr %135, i64 0, i64 2
  store i16 %89, ptr %179, align 4, !tbaa !309
  br label %233

180:                                              ; preds = %171
  %181 = icmp eq i32 %173, %2
  br i1 %181, label %182, label %190

182:                                              ; preds = %180
  %183 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 3, i64 2
  %184 = load i32, ptr %183, align 8, !tbaa !46
  %185 = icmp eq i32 %184, %1
  br i1 %185, label %186, label %190

186:                                              ; preds = %182
  %187 = getelementptr inbounds [4 x i16], ptr %135, i64 0, i64 2
  %188 = load i16, ptr %187, align 4, !tbaa !309
  %189 = or i16 %188, %88
  store i16 %189, ptr %187, align 4, !tbaa !309
  br label %233

190:                                              ; preds = %182, %180
  %191 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 2, i64 3
  %192 = load i32, ptr %191, align 4, !tbaa !46
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 2, i64 3
  %196 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 3, i64 3
  store i32 %1, ptr %196, align 4, !tbaa !46
  store i32 %2, ptr %195, align 4, !tbaa !46
  %197 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 1, i64 3
  store i32 %97, ptr %197, align 4, !tbaa !46
  %198 = getelementptr inbounds [4 x i16], ptr %135, i64 0, i64 3
  store i16 %87, ptr %198, align 2, !tbaa !309
  br label %233

199:                                              ; preds = %190
  %200 = icmp eq i32 %192, %2
  br i1 %200, label %201, label %209

201:                                              ; preds = %199
  %202 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 3, i64 3
  %203 = load i32, ptr %202, align 4, !tbaa !46
  %204 = icmp eq i32 %203, %1
  br i1 %204, label %205, label %209

205:                                              ; preds = %201
  %206 = getelementptr inbounds [4 x i16], ptr %135, i64 0, i64 3
  %207 = load i16, ptr %206, align 2, !tbaa !309
  %208 = or i16 %207, %86
  store i16 %208, ptr %206, align 2, !tbaa !309
  br label %233

209:                                              ; preds = %201, %199
  %210 = getelementptr inbounds %struct.APixstr, ptr %135, i64 0, i32 5
  %211 = load ptr, ptr %210, align 8, !tbaa !313
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %230

213:                                              ; preds = %209
  %214 = load i32, ptr %81, align 4, !tbaa !368
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %213
  %217 = load ptr, ptr %83, align 8, !tbaa !267
  %218 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %219 = tail call ptr %218(i64 noundef 24, ptr noundef nonnull @.str.19) #14
  tail call void @BLI_addtail(ptr noundef %217, ptr noundef %219) #14
  %220 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %221 = tail call ptr %220(i64 noundef 294912, ptr noundef nonnull @.str.20) #14
  %222 = getelementptr inbounds %struct.APixstrMain, ptr %219, i64 0, i32 2
  store ptr %221, ptr %222, align 8, !tbaa !55
  store ptr %221, ptr %84, align 8, !tbaa !369
  br label %227

223:                                              ; preds = %213
  %224 = load ptr, ptr %82, align 8, !tbaa !369
  %225 = getelementptr inbounds %struct.APixstr, ptr %224, i64 1
  store ptr %225, ptr %82, align 8, !tbaa !369
  %226 = add nsw i32 %214, -1
  br label %227

227:                                              ; preds = %216, %223
  %228 = phi i32 [ %226, %223 ], [ 4095, %216 ]
  store i32 %228, ptr %81, align 4, !tbaa !368
  %229 = load ptr, ptr %85, align 8, !tbaa !369
  store ptr %229, ptr %210, align 8, !tbaa !313
  br label %230

230:                                              ; preds = %227, %209
  %231 = load ptr, ptr %210, align 8, !tbaa !313
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %134, !llvm.loop !373

233:                                              ; preds = %230, %131, %120, %139, %149, %156, %167, %175, %186, %194, %205, %126, %117, %110
  %234 = fadd float %46, %102
  %235 = icmp sgt i32 %97, %94
  %236 = select i1 %56, i1 %235, i1 false
  %237 = add nsw i32 %97, %53
  %238 = select i1 %236, i32 2147483632, i32 %237
  %239 = add i32 %99, 1
  %240 = getelementptr inbounds i32, ptr %111, i64 1
  %241 = getelementptr inbounds i32, ptr %112, i64 1
  %242 = getelementptr inbounds %struct.APixstr, ptr %114, i64 1
  %243 = icmp eq i32 %99, %45
  br i1 %243, label %458, label %95, !llvm.loop !374

244:                                              ; preds = %5
  %245 = fcmp olt float %12, %10
  br i1 %245, label %249, label %246

246:                                              ; preds = %244
  %247 = fneg float %8
  %248 = fneg float %13
  br label %249

249:                                              ; preds = %244, %246
  %250 = phi ptr [ %4, %246 ], [ %3, %244 ]
  %251 = phi float [ %10, %246 ], [ %12, %244 ]
  %252 = phi float [ %6, %246 ], [ %7, %244 ]
  %253 = phi ptr [ %3, %246 ], [ %4, %244 ]
  %254 = phi float [ %247, %246 ], [ %8, %244 ]
  %255 = phi float [ %248, %246 ], [ %13, %244 ]
  %256 = tail call float @llvm.floor.f32(float %251)
  %257 = fptosi float %256 to i32
  %258 = sitofp i32 %257 to double
  %259 = tail call float @llvm.floor.f32(float %255)
  %260 = fpext float %259 to double
  %261 = fadd double %258, %260
  %262 = fptosi double %261 to i32
  %263 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %264 = load i32, ptr %263, align 4, !tbaa !41
  %265 = icmp sle i32 %264, %257
  %266 = icmp slt i32 %262, 0
  %267 = select i1 %265, i1 true, i1 %266
  br i1 %267, label %458, label %268

268:                                              ; preds = %249
  %269 = getelementptr inbounds float, ptr %253, i64 2
  %270 = load float, ptr %269, align 4, !tbaa !50
  %271 = getelementptr inbounds float, ptr %250, i64 2
  %272 = load float, ptr %271, align 4, !tbaa !50
  %273 = icmp sgt i32 %264, %262
  %274 = add nsw i32 %264, -1
  %275 = select i1 %273, i32 %262, i32 %274
  %276 = fdiv float %254, %255
  %277 = fptosi float %272 to i32
  %278 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 26
  %279 = load i32, ptr %278, align 8, !tbaa !282
  %280 = sub nsw i32 %277, %279
  %281 = fsub float %270, %272
  %282 = fdiv float %281, %255
  %283 = fptosi float %282 to i32
  %284 = icmp sgt i32 %280, 1342177280
  %285 = icmp sgt i32 %283, 0
  %286 = select i1 %284, i1 %285, i1 false
  %287 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 21
  %288 = fcmp olt float %276, 0.000000e+00
  %289 = select i1 %288, i64 -1, i64 1
  %290 = icmp slt i32 %275, %257
  br i1 %290, label %458, label %291

291:                                              ; preds = %268
  %292 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 22
  %293 = load ptr, ptr %292, align 8, !tbaa !266
  %294 = load i32, ptr %0, align 8, !tbaa !34
  %295 = mul nsw i32 %294, %257
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.APixstr, ptr %293, i64 %296
  %298 = tail call float @llvm.floor.f32(float %252)
  %299 = fptosi float %298 to i32
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.APixstr, ptr %297, i64 %300
  %302 = load ptr, ptr %287, align 8, !tbaa !160
  %303 = getelementptr inbounds i32, ptr %302, i64 %296
  %304 = getelementptr inbounds i32, ptr %303, i64 %300
  %305 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 17
  %306 = load ptr, ptr %305, align 8, !tbaa !265
  %307 = getelementptr inbounds i32, ptr %306, i64 %296
  %308 = getelementptr inbounds i32, ptr %307, i64 %300
  %309 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 29
  %310 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 23
  %311 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 25
  %312 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 23
  %313 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 23
  %314 = trunc i32 %15 to i16
  %315 = trunc i32 %15 to i16
  %316 = trunc i32 %15 to i16
  %317 = trunc i32 %15 to i16
  %318 = trunc i32 %15 to i16
  %319 = trunc i32 %15 to i16
  %320 = trunc i32 %15 to i16
  %321 = trunc i32 %15 to i16
  %322 = sub nsw i32 2147483632, %283
  br label %323

323:                                              ; preds = %291, %445
  %324 = phi ptr [ %301, %291 ], [ %456, %445 ]
  %325 = phi i32 [ %280, %291 ], [ %450, %445 ]
  %326 = phi i32 [ %299, %291 ], [ %341, %445 ]
  %327 = phi i32 [ %257, %291 ], [ %451, %445 ]
  %328 = phi ptr [ %304, %291 ], [ %455, %445 ]
  %329 = phi ptr [ %308, %291 ], [ %454, %445 ]
  %330 = phi float [ %252, %291 ], [ %446, %445 ]
  %331 = tail call float @llvm.floor.f32(float %330)
  %332 = fptosi float %331 to i32
  %333 = icmp eq i32 %326, %332
  br i1 %333, label %338, label %334

334:                                              ; preds = %323
  %335 = getelementptr inbounds i32, ptr %329, i64 %289
  %336 = getelementptr inbounds i32, ptr %328, i64 %289
  %337 = getelementptr inbounds %struct.APixstr, ptr %324, i64 %289
  br label %338

338:                                              ; preds = %334, %323
  %339 = phi ptr [ %335, %334 ], [ %329, %323 ]
  %340 = phi ptr [ %336, %334 ], [ %328, %323 ]
  %341 = phi i32 [ %332, %334 ], [ %326, %323 ]
  %342 = phi ptr [ %337, %334 ], [ %324, %323 ]
  %343 = or i32 %327, %332
  %344 = icmp sgt i32 %343, -1
  br i1 %344, label %345, label %445

345:                                              ; preds = %338
  %346 = load i32, ptr %0, align 8, !tbaa !34
  %347 = icmp sgt i32 %346, %332
  br i1 %347, label %348, label %445

348:                                              ; preds = %345
  %349 = load i32, ptr %339, align 4, !tbaa !46
  %350 = icmp slt i32 %325, %349
  br i1 %350, label %351, label %445

351:                                              ; preds = %348
  %352 = load ptr, ptr %287, align 8, !tbaa !160
  %353 = icmp eq ptr %352, null
  br i1 %353, label %359, label %354

354:                                              ; preds = %351
  %355 = load i32, ptr %340, align 4, !tbaa !46
  %356 = icmp sle i32 %325, %355
  %357 = icmp eq ptr %342, null
  %358 = select i1 %356, i1 true, i1 %357
  br i1 %358, label %445, label %361

359:                                              ; preds = %351
  %360 = icmp eq ptr %342, null
  br i1 %360, label %445, label %361

361:                                              ; preds = %359, %354
  br label %362

362:                                              ; preds = %361, %442
  %363 = phi ptr [ %443, %442 ], [ %342, %361 ]
  %364 = getelementptr inbounds %struct.APixstr, ptr %363, i64 0, i32 2
  %365 = load i32, ptr %364, align 8, !tbaa !46
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %371

367:                                              ; preds = %362
  %368 = getelementptr inbounds %struct.APixstr, ptr %363, i64 0, i32 2
  %369 = getelementptr inbounds %struct.APixstr, ptr %363, i64 0, i32 3
  store i32 %1, ptr %369, align 8, !tbaa !46
  store i32 %2, ptr %368, align 8, !tbaa !46
  %370 = getelementptr inbounds %struct.APixstr, ptr %363, i64 0, i32 1
  store i32 %325, ptr %370, align 8, !tbaa !46
  store i16 %321, ptr %363, align 8, !tbaa !309
  br label %445

371:                                              ; preds = %362
  %372 = icmp eq i32 %365, %2
  br i1 %372, label %373, label %376

373:                                              ; preds = %371
  %374 = load i16, ptr %363, align 8, !tbaa !309
  %375 = or i16 %374, %320
  store i16 %375, ptr %363, align 8, !tbaa !309
  br label %445

376:                                              ; preds = %371
  %377 = getelementptr inbounds %struct.APixstr, ptr %363, i64 0, i32 2, i64 1
  %378 = load i32, ptr %377, align 4, !tbaa !46
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %385

380:                                              ; preds = %376
  %381 = getelementptr inbounds %struct.APixstr, ptr %363, i64 0, i32 2, i64 1
  %382 = getelementptr inbounds %struct.APixstr, ptr %363, i64 0, i32 3, i64 1
  store i32 %1, ptr %382, align 4, !tbaa !46
  store i32 %2, ptr %381, align 4, !tbaa !46
  %383 = getelementptr inbounds %struct.APixstr, ptr %363, i64 0, i32 1, i64 1
  store i32 %325, ptr %383, align 4, !tbaa !46
  %384 = getelementptr inbounds [4 x i16], ptr %363, i64 0, i64 1
  store i16 %319, ptr %384, align 2, !tbaa !309
  br label %445

385:                                              ; preds = %376
  %386 = icmp eq i32 %378, %2
  br i1 %386, label %387, label %391

387:                                              ; preds = %385
  %388 = getelementptr inbounds [4 x i16], ptr %363, i64 0, i64 1
  %389 = load i16, ptr %388, align 2, !tbaa !309
  %390 = or i16 %389, %318
  store i16 %390, ptr %388, align 2, !tbaa !309
  br label %445

391:                                              ; preds = %385
  %392 = getelementptr inbounds %struct.APixstr, ptr %363, i64 0, i32 2, i64 2
  %393 = load i32, ptr %392, align 8, !tbaa !46
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %400

395:                                              ; preds = %391
  %396 = getelementptr inbounds %struct.APixstr, ptr %363, i64 0, i32 2, i64 2
  %397 = getelementptr inbounds %struct.APixstr, ptr %363, i64 0, i32 3, i64 2
  store i32 %1, ptr %397, align 8, !tbaa !46
  store i32 %2, ptr %396, align 8, !tbaa !46
  %398 = getelementptr inbounds %struct.APixstr, ptr %363, i64 0, i32 1, i64 2
  store i32 %325, ptr %398, align 8, !tbaa !46
  %399 = getelementptr inbounds [4 x i16], ptr %363, i64 0, i64 2
  store i16 %317, ptr %399, align 4, !tbaa !309
  br label %445

400:                                              ; preds = %391
  %401 = icmp eq i32 %393, %2
  br i1 %401, label %402, label %406

402:                                              ; preds = %400
  %403 = getelementptr inbounds [4 x i16], ptr %363, i64 0, i64 2
  %404 = load i16, ptr %403, align 4, !tbaa !309
  %405 = or i16 %404, %316
  store i16 %405, ptr %403, align 4, !tbaa !309
  br label %445

406:                                              ; preds = %400
  %407 = getelementptr inbounds %struct.APixstr, ptr %363, i64 0, i32 2, i64 3
  %408 = load i32, ptr %407, align 4, !tbaa !46
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %415

410:                                              ; preds = %406
  %411 = getelementptr inbounds %struct.APixstr, ptr %363, i64 0, i32 2, i64 3
  %412 = getelementptr inbounds %struct.APixstr, ptr %363, i64 0, i32 3, i64 3
  store i32 %1, ptr %412, align 4, !tbaa !46
  store i32 %2, ptr %411, align 4, !tbaa !46
  %413 = getelementptr inbounds %struct.APixstr, ptr %363, i64 0, i32 1, i64 3
  store i32 %325, ptr %413, align 4, !tbaa !46
  %414 = getelementptr inbounds [4 x i16], ptr %363, i64 0, i64 3
  store i16 %315, ptr %414, align 2, !tbaa !309
  br label %445

415:                                              ; preds = %406
  %416 = icmp eq i32 %408, %2
  br i1 %416, label %417, label %421

417:                                              ; preds = %415
  %418 = getelementptr inbounds [4 x i16], ptr %363, i64 0, i64 3
  %419 = load i16, ptr %418, align 2, !tbaa !309
  %420 = or i16 %419, %314
  store i16 %420, ptr %418, align 2, !tbaa !309
  br label %445

421:                                              ; preds = %415
  %422 = getelementptr inbounds %struct.APixstr, ptr %363, i64 0, i32 5
  %423 = load ptr, ptr %422, align 8, !tbaa !313
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %442

425:                                              ; preds = %421
  %426 = load i32, ptr %309, align 4, !tbaa !368
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %435

428:                                              ; preds = %425
  %429 = load ptr, ptr %311, align 8, !tbaa !267
  %430 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %431 = tail call ptr %430(i64 noundef 24, ptr noundef nonnull @.str.19) #14
  tail call void @BLI_addtail(ptr noundef %429, ptr noundef %431) #14
  %432 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %433 = tail call ptr %432(i64 noundef 294912, ptr noundef nonnull @.str.20) #14
  %434 = getelementptr inbounds %struct.APixstrMain, ptr %431, i64 0, i32 2
  store ptr %433, ptr %434, align 8, !tbaa !55
  store ptr %433, ptr %312, align 8, !tbaa !369
  br label %439

435:                                              ; preds = %425
  %436 = load ptr, ptr %310, align 8, !tbaa !369
  %437 = getelementptr inbounds %struct.APixstr, ptr %436, i64 1
  store ptr %437, ptr %310, align 8, !tbaa !369
  %438 = add nsw i32 %426, -1
  br label %439

439:                                              ; preds = %428, %435
  %440 = phi i32 [ %438, %435 ], [ 4095, %428 ]
  store i32 %440, ptr %309, align 4, !tbaa !368
  %441 = load ptr, ptr %313, align 8, !tbaa !369
  store ptr %441, ptr %422, align 8, !tbaa !313
  br label %442

442:                                              ; preds = %439, %421
  %443 = load ptr, ptr %422, align 8, !tbaa !313
  %444 = icmp eq ptr %443, null
  br i1 %444, label %445, label %362, !llvm.loop !375

445:                                              ; preds = %442, %359, %348, %367, %373, %380, %387, %395, %402, %410, %417, %354, %345, %338
  %446 = fadd float %276, %330
  %447 = icmp sgt i32 %325, %322
  %448 = select i1 %286, i1 %447, i1 false
  %449 = add nsw i32 %325, %283
  %450 = select i1 %448, i32 2147483632, i32 %449
  %451 = add i32 %327, 1
  %452 = load i32, ptr %0, align 8, !tbaa !34
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, ptr %339, i64 %453
  %455 = getelementptr inbounds i32, ptr %340, i64 %453
  %456 = getelementptr inbounds %struct.APixstr, ptr %342, i64 %453
  %457 = icmp eq i32 %327, %275
  br i1 %457, label %458, label %323, !llvm.loop !376

458:                                              ; preds = %445, %233, %268, %24, %249
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #8

declare ptr @RE_RenderLayerGetPass(ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @shade_samples_do_AO(ptr noundef) local_unnamed_addr #8

declare void @shade_input_set_shade_texco(ptr noundef) local_unnamed_addr #8

declare void @shade_input_do_shade(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @renderspothalo(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #8

declare void @strand_shade_segment(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #8

declare void @shade_input_set_triangle(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

declare void @shade_input_copy_triangle(ptr noundef, ptr noundef) local_unnamed_addr #8

declare void @shade_input_set_viewco(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #8

declare void @shade_input_set_uv(ptr noundef) local_unnamed_addr #8

declare void @shade_input_set_normals(ptr noundef) local_unnamed_addr #8

declare void @shade_input_set_vertex_normals(ptr noundef) local_unnamed_addr #8

declare void @strand_shade_unref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind }

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
!35 = !{!"ZSpan", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !36, i64 168, !40, i64 172, !36, i64 176, !36, i64 180, !36, i64 184, !40, i64 188, !39, i64 192, !39, i64 200, !39, i64 208, !39, i64 216}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!35, !36, i64 4}
!42 = !{!39, !39, i64 0}
!43 = !{!35, !39, i64 56}
!44 = !{!35, !39, i64 64}
!45 = !{!35, !40, i64 188}
!46 = !{!36, !36, i64 0}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!40, !40, i64 0}
!51 = !{!52, !39, i64 0}
!52 = !{!"ListBase", !39, i64 0, !39, i64 8}
!53 = !{!54, !39, i64 0}
!54 = !{!"APixstrMain", !39, i64 0, !39, i64 8, !39, i64 16}
!55 = !{!54, !39, i64 16}
!56 = distinct !{!56, !48, !49}
!57 = !{!35, !40, i64 72}
!58 = !{!35, !40, i64 80}
!59 = !{!35, !40, i64 76}
!60 = !{!35, !40, i64 84}
!61 = !{i32 0, i32 2}
!62 = !{!35, !39, i64 216}
!63 = !{!35, !36, i64 16}
!64 = !{!35, !36, i64 8}
!65 = !{!35, !36, i64 20}
!66 = !{!35, !36, i64 12}
!67 = !{!35, !39, i64 40}
!68 = !{!35, !39, i64 48}
!69 = distinct !{!69, !48, !49}
!70 = distinct !{!70, !48, !49}
!71 = !{!35, !39, i64 32}
!72 = !{!35, !39, i64 24}
!73 = distinct !{!73, !48, !49}
!74 = distinct !{!74, !48, !49}
!75 = distinct !{!75, !48, !49}
!76 = !{!77, !36, i64 1624}
!77 = !{!"Render", !39, i64 0, !39, i64 8, !37, i64 16, !36, i64 92, !78, i64 96, !78, i64 98, !78, i64 100, !78, i64 102, !37, i64 104, !39, i64 112, !39, i64 120, !52, i64 128, !36, i64 144, !36, i64 148, !36, i64 152, !79, i64 156, !80, i64 172, !40, i64 188, !40, i64 192, !40, i64 196, !36, i64 200, !36, i64 204, !36, i64 208, !36, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !40, i64 544, !40, i64 548, !39, i64 552, !37, i64 560, !37, i64 816, !39, i64 1072, !37, i64 1080, !39, i64 1088, !39, i64 1096, !81, i64 1104, !88, i64 5088, !39, i64 5616, !36, i64 5624, !36, i64 5628, !52, i64 5632, !39, i64 5648, !39, i64 5656, !39, i64 5664, !39, i64 5672, !40, i64 5680, !39, i64 5688, !52, i64 5696, !40, i64 5712, !40, i64 5716, !36, i64 5720, !36, i64 5724, !36, i64 5728, !36, i64 5732, !36, i64 5736, !39, i64 5744, !52, i64 5752, !52, i64 5768, !52, i64 5784, !39, i64 5800, !52, i64 5808, !36, i64 5824, !39, i64 5832, !39, i64 5840, !39, i64 5848, !39, i64 5856, !39, i64 5864, !52, i64 5872, !39, i64 5888, !52, i64 5896, !52, i64 5912, !39, i64 5928, !39, i64 5936, !39, i64 5944, !39, i64 5952, !39, i64 5960, !39, i64 5968, !39, i64 5976, !39, i64 5984, !39, i64 5992, !39, i64 6000, !39, i64 6008, !39, i64 6016, !39, i64 6024, !39, i64 6032, !39, i64 6040, !39, i64 6048, !39, i64 6056, !90, i64 6064, !39, i64 6216, !39, i64 6224, !39, i64 6232}
!78 = !{!"short", !37, i64 0}
!79 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!80 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!81 = !{!"RenderData", !82, i64 0, !39, i64 248, !39, i64 256, !85, i64 264, !86, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !40, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !78, i64 432, !78, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !78, i64 456, !78, i64 458, !78, i64 460, !78, i64 462, !78, i64 464, !78, i64 466, !36, i64 468, !78, i64 472, !78, i64 474, !78, i64 476, !78, i64 478, !78, i64 480, !78, i64 482, !36, i64 484, !36, i64 488, !78, i64 492, !78, i64 494, !36, i64 496, !36, i64 500, !78, i64 504, !78, i64 506, !78, i64 508, !78, i64 510, !78, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !78, i64 528, !78, i64 530, !78, i64 532, !78, i64 534, !78, i64 536, !78, i64 538, !78, i64 540, !78, i64 542, !80, i64 544, !80, i64 560, !79, i64 576, !52, i64 592, !78, i64 608, !78, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !36, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !78, i64 648, !78, i64 650, !78, i64 652, !78, i64 654, !78, i64 656, !78, i64 658, !40, i64 660, !40, i64 664, !78, i64 668, !78, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !36, i64 1704, !78, i64 1708, !78, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !78, i64 2524, !78, i64 2526, !40, i64 2528, !40, i64 2532, !78, i64 2536, !78, i64 2538, !40, i64 2540, !78, i64 2544, !78, i64 2546, !36, i64 2548, !78, i64 2552, !78, i64 2554, !78, i64 2556, !78, i64 2558, !40, i64 2560, !40, i64 2564, !39, i64 2568, !36, i64 2576, !40, i64 2580, !37, i64 2584, !87, i64 2616, !36, i64 3976, !36, i64 3980}
!82 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !78, i64 8, !78, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !83, i64 24, !84, i64 184}
!83 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !39, i64 144, !39, i64 152}
!84 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!85 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !78, i64 48, !78, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!86 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !40, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !39, i64 64}
!87 = !{!"BakeData", !82, i64 0, !37, i64 248, !78, i64 1272, !78, i64 1274, !78, i64 1276, !78, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!88 = !{!"World", !89, i64 0, !39, i64 120, !78, i64 128, !78, i64 130, !78, i64 132, !78, i64 134, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !78, i64 200, !78, i64 202, !78, i64 204, !78, i64 206, !78, i64 208, !78, i64 210, !78, i64 212, !78, i64 214, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !78, i64 264, !78, i64 266, !78, i64 268, !78, i64 270, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !78, i64 288, !78, i64 290, !78, i64 292, !78, i64 294, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !78, i64 324, !78, i64 326, !78, i64 328, !78, i64 330, !78, i64 332, !78, i64 334, !39, i64 336, !39, i64 344, !39, i64 352, !37, i64 360, !78, i64 504, !78, i64 506, !37, i64 508, !39, i64 512, !39, i64 520}
!89 = !{!"ID", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !37, i64 32, !78, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !39, i64 112}
!90 = !{!"RenderStats", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !78, i64 28, !78, i64 30, !78, i64 32, !78, i64 34, !78, i64 36, !78, i64 38, !37, i64 40, !91, i64 48, !91, i64 56, !39, i64 64, !39, i64 72, !37, i64 80, !40, i64 144, !40, i64 148}
!91 = !{!"double", !37, i64 0}
!92 = !{!77, !40, i64 228}
!93 = !{!77, !40, i64 224}
!94 = distinct !{!94, !48, !49}
!95 = distinct !{!95, !48, !49}
!96 = distinct !{!96, !48, !49}
!97 = distinct !{!97, !48, !49}
!98 = distinct !{!98, !48, !49}
!99 = !{!35, !39, i64 208}
!100 = distinct !{!100, !48, !49}
!101 = !{!102, !36, i64 92}
!102 = !{!"RenderLayer", !39, i64 0, !39, i64 8, !37, i64 16, !36, i64 92, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !36, i64 168, !36, i64 172, !39, i64 176, !52, i64 184}
!103 = !{!102, !36, i64 96}
!104 = !{!102, !36, i64 104}
!105 = !{!106, !78, i64 144}
!106 = !{!"RenderPart", !39, i64 0, !39, i64 8, !39, i64 16, !52, i64 24, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !79, i64 112, !36, i64 128, !36, i64 132, !36, i64 136, !78, i64 140, !78, i64 142, !78, i64 144, !78, i64 146, !39, i64 152}
!107 = !{!77, !36, i64 148}
!108 = !{!77, !36, i64 152}
!109 = !{!106, !36, i64 112}
!110 = !{!106, !36, i64 116}
!111 = !{!106, !36, i64 120}
!112 = !{!106, !36, i64 124}
!113 = !{!106, !36, i64 128}
!114 = !{!106, !36, i64 132}
!115 = !{!77, !40, i64 196}
!116 = !{!77, !78, i64 98}
!117 = !{!77, !78, i64 6094}
!118 = !{!106, !39, i64 48}
!119 = !{!35, !39, i64 112}
!120 = !{!106, !39, i64 40}
!121 = !{!35, !39, i64 120}
!122 = !{!106, !39, i64 64}
!123 = !{!35, !39, i64 88}
!124 = !{!106, !39, i64 56}
!125 = distinct !{!125, !48, !49}
!126 = distinct !{!126, !48, !49}
!127 = !{!128, !39, i64 16}
!128 = !{!"ObjectInstanceRen", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !36, i64 40, !36, i64 44, !36, i64 48, !37, i64 52, !37, i64 116, !37, i64 180, !78, i64 216, !37, i64 220, !37, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !36, i64 264, !39, i64 272, !36, i64 280}
!129 = !{!128, !36, i64 48}
!130 = !{!128, !78, i64 216}
!131 = !{!132, !36, i64 80}
!132 = !{!"ObjectRen", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !37, i64 56, !36, i64 80, !36, i64 84, !36, i64 88, !36, i64 92, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !36, i64 168, !36, i64 172, !36, i64 176, !37, i64 180, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272}
!133 = !{!132, !36, i64 84}
!134 = !{!135, !36, i64 0}
!135 = !{!"ZbufProjectCache", !36, i64 0, !36, i64 4, !37, i64 8}
!136 = distinct !{!136, !48, !49}
!137 = !{!132, !39, i64 120}
!138 = !{!139, !39, i64 0}
!139 = !{!"VlakTableNode", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !36, i64 32, !36, i64 36, !39, i64 40, !39, i64 48, !39, i64 56}
!140 = !{!141, !39, i64 48}
!141 = !{!"VlakRen", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !37, i64 32, !39, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !36, i64 60}
!142 = !{!143, !36, i64 396}
!143 = !{!"Material", !89, i64 0, !39, i64 120, !78, i64 128, !78, i64 130, !40, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !144, i64 224, !145, i64 312, !40, i64 328, !40, i64 332, !40, i64 336, !40, i64 340, !40, i64 344, !40, i64 348, !40, i64 352, !78, i64 356, !78, i64 358, !78, i64 360, !37, i64 362, !37, i64 363, !40, i64 364, !40, i64 368, !78, i64 372, !78, i64 374, !40, i64 376, !40, i64 380, !40, i64 384, !40, i64 388, !78, i64 392, !78, i64 394, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408, !78, i64 412, !78, i64 414, !78, i64 416, !78, i64 418, !40, i64 420, !40, i64 424, !40, i64 428, !40, i64 432, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !40, i64 456, !37, i64 460, !40, i64 524, !40, i64 528, !40, i64 532, !36, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !78, i64 544, !78, i64 546, !78, i64 548, !37, i64 550, !37, i64 551, !78, i64 552, !78, i64 554, !40, i64 556, !40, i64 560, !37, i64 564, !40, i64 580, !40, i64 584, !78, i64 588, !78, i64 590, !39, i64 592, !39, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !78, i64 612, !78, i64 614, !40, i64 616, !40, i64 620, !37, i64 624, !39, i64 768, !39, i64 776, !39, i64 784, !39, i64 792, !40, i64 800, !40, i64 804, !40, i64 808, !40, i64 812, !40, i64 816, !78, i64 820, !78, i64 822, !37, i64 824, !37, i64 836, !40, i64 848, !40, i64 852, !40, i64 856, !40, i64 860, !40, i64 864, !40, i64 868, !40, i64 872, !78, i64 876, !78, i64 878, !36, i64 880, !78, i64 884, !78, i64 886, !37, i64 888, !78, i64 904, !78, i64 906, !78, i64 908, !78, i64 910, !78, i64 912, !37, i64 914, !39, i64 920, !52, i64 928}
!144 = !{!"VolumeSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !40, i64 52, !40, i64 56, !40, i64 60, !78, i64 64, !78, i64 66, !78, i64 68, !78, i64 70, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84}
!145 = !{!"GameSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!146 = !{!143, !78, i64 128}
!147 = distinct !{!147, !48, !49}
!148 = !{!141, !37, i64 57}
!149 = !{!141, !39, i64 0}
!150 = !{!141, !39, i64 8}
!151 = !{!141, !39, i64 16}
!152 = !{!141, !39, i64 24}
!153 = !{!154, !36, i64 40}
!154 = !{!"VertRen", !37, i64 0, !37, i64 12, !39, i64 24, !36, i64 32, !40, i64 36, !36, i64 40}
!155 = !{!135, !36, i64 4}
!156 = !{!141, !37, i64 58}
!157 = distinct !{!157, !48, !49}
!158 = distinct !{!158, !48, !49}
!159 = distinct !{!159, !48, !49}
!160 = !{!35, !39, i64 128}
!161 = distinct !{!161, !48, !49}
!162 = distinct !{!162, !48, !49}
!163 = distinct !{!163, !48, !49}
!164 = distinct !{!164, !48, !49}
!165 = distinct !{!165, !48, !49}
!166 = distinct !{!166, !48, !49}
!167 = distinct !{!167, !48, !49}
!168 = distinct !{!168, !48, !49}
!169 = distinct !{!169, !48, !49}
!170 = distinct !{!170, !48, !49}
!171 = distinct !{!171, !48, !49}
!172 = distinct !{!172, !48, !49}
!173 = !{!174, !36, i64 44}
!174 = !{!"LampRen", !39, i64 0, !39, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !37, i64 28, !78, i64 40, !36, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !36, i64 84, !40, i64 88, !40, i64 92, !37, i64 96, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !78, i64 132, !40, i64 136, !40, i64 140, !39, i64 144, !78, i64 152, !78, i64 154, !40, i64 156, !78, i64 160, !78, i64 162, !78, i64 164, !78, i64 166, !78, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !78, i64 188, !78, i64 190, !78, i64 192, !78, i64 194, !78, i64 196, !78, i64 198, !78, i64 200, !37, i64 202, !37, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !39, i64 224, !39, i64 232, !39, i64 240, !37, i64 248, !40, i64 284, !37, i64 288, !40, i64 300, !37, i64 304, !37, i64 368, !37, i64 404, !40, i64 500, !39, i64 504, !37, i64 512, !37, i64 520, !36, i64 664, !36, i64 668}
!175 = !{!174, !36, i64 84}
!176 = !{!174, !78, i64 164}
!177 = !{!35, !39, i64 104}
!178 = !{!132, !39, i64 16}
!179 = !{!77, !39, i64 5888}
!180 = !{!143, !36, i64 404}
!181 = !{!77, !39, i64 6048}
!182 = !{!77, !39, i64 6056}
!183 = distinct !{!183, !48, !49}
!184 = !{!132, !39, i64 144}
!185 = !{!186, !36, i64 36}
!186 = !{!"StrandBuffer", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !36, i64 32, !36, i64 36, !39, i64 40, !39, i64 48, !39, i64 56, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !37, i64 96, !36, i64 160, !36, i64 164}
!187 = !{!186, !39, i64 24}
!188 = !{!189, !36, i64 0}
!189 = !{!"StrandBound", !36, i64 0, !36, i64 4, !37, i64 8}
!190 = !{!189, !36, i64 4}
!191 = !{!192, !39, i64 48}
!192 = !{!"StrandSegment", !37, i64 0, !39, i64 32, !39, i64 40, !39, i64 48, !40, i64 56, !193, i64 60, !193, i64 252, !36, i64 444}
!193 = !{!"StrandPoint", !40, i64 0, !37, i64 4, !37, i64 16, !37, i64 28, !40, i64 40, !40, i64 44, !37, i64 48, !37, i64 60, !40, i64 72, !37, i64 76, !37, i64 88, !37, i64 100, !37, i64 116, !37, i64 132, !37, i64 144, !36, i64 156, !36, i64 160, !37, i64 164, !40, i64 180, !40, i64 184, !40, i64 188}
!194 = !{!195, !39, i64 8}
!195 = !{!"StrandRen", !39, i64 0, !39, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !37, i64 32}
!196 = !{!192, !39, i64 40}
!197 = !{!186, !40, i64 80}
!198 = !{!192, !40, i64 56}
!199 = !{!192, !39, i64 32}
!200 = !{!195, !39, i64 0}
!201 = !{!186, !39, i64 48}
!202 = !{!186, !36, i64 64}
!203 = !{!195, !36, i64 16}
!204 = distinct !{!204, !48, !49}
!205 = distinct !{!205, !48, !49}
!206 = distinct !{!206, !48, !49}
!207 = distinct !{!207, !48, !49}
!208 = distinct !{!208, !48, !49}
!209 = distinct !{!209, !48, !49}
!210 = distinct !{!210, !48, !49}
!211 = distinct !{!211, !48, !49}
!212 = distinct !{!212, !48, !49}
!213 = !{!77, !39, i64 5864}
!214 = !{!35, !39, i64 192}
!215 = !{!35, !39, i64 200}
!216 = !{!106, !39, i64 96}
!217 = !{!106, !39, i64 80}
!218 = !{!106, !39, i64 88}
!219 = distinct !{!219, !48, !49}
!220 = distinct !{!220, !48, !49}
!221 = distinct !{!221, !48, !49}
!222 = distinct !{!222, !48, !49}
!223 = !{!37, !37, i64 0}
!224 = distinct !{!224, !48, !49}
!225 = distinct !{!225, !48, !49}
!226 = distinct !{!226, !48, !49}
!227 = distinct !{!227, !48, !49}
!228 = distinct !{!228, !48, !49}
!229 = distinct !{!229, !48, !49}
!230 = distinct !{!230, !48, !49}
!231 = distinct !{!231, !48, !49}
!232 = distinct !{!232, !48, !49}
!233 = distinct !{!233, !48, !49}
!234 = distinct !{!234, !48, !49}
!235 = distinct !{!235, !48, !49}
!236 = !{!237, !78, i64 6}
!237 = !{!"NodeBlurData", !78, i64 0, !78, i64 2, !78, i64 4, !78, i64 6, !78, i64 8, !78, i64 10, !78, i64 12, !78, i64 14, !40, i64 16, !40, i64 20, !40, i64 24, !78, i64 28, !37, i64 30, !37, i64 31, !36, i64 32, !36, i64 36}
!238 = !{!237, !78, i64 4}
!239 = distinct !{!239, !48, !49}
!240 = !{!237, !78, i64 8}
!241 = distinct !{!241, !48, !49}
!242 = distinct !{!242, !48, !49}
!243 = distinct !{!243, !48, !49}
!244 = distinct !{!244, !48, !49}
!245 = distinct !{!245, !48, !49}
!246 = distinct !{!246, !48, !49}
!247 = distinct !{!247, !48, !49}
!248 = !{!237, !40, i64 16}
!249 = distinct !{!249, !48, !49}
!250 = !{!251, !39, i64 0}
!251 = !{!"DrawBufPixel", !39, i64 0, !40, i64 8}
!252 = distinct !{!252, !48, !49}
!253 = !{!237, !78, i64 14}
!254 = !{i64 0, i64 8, !42, i64 8, i64 4, !50}
!255 = !{i64 0, i64 4, !50}
!256 = distinct !{!256, !48, !49}
!257 = distinct !{!257, !48, !49}
!258 = distinct !{!258, !48, !49}
!259 = distinct !{!259, !48, !49}
!260 = !{!251, !40, i64 8}
!261 = distinct !{!261, !48, !49}
!262 = distinct !{!262, !48, !49}
!263 = distinct !{!263, !48, !49}
!264 = distinct !{!264, !48, !49}
!265 = !{!35, !39, i64 96}
!266 = !{!35, !39, i64 136}
!267 = !{!35, !39, i64 160}
!268 = !{!106, !39, i64 72}
!269 = !{!270, !270, i64 0}
!270 = !{!"long", !37, i64 0}
!271 = !{!272, !78, i64 24}
!272 = !{!"PixStr", !39, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !78, i64 24, !78, i64 26}
!273 = !{!272, !36, i64 16}
!274 = !{!272, !36, i64 20}
!275 = !{!272, !39, i64 0}
!276 = distinct !{!276, !48, !49}
!277 = distinct !{!277, !48, !49}
!278 = distinct !{!278, !48, !49}
!279 = !{!35, !36, i64 176}
!280 = distinct !{!280, !48, !49}
!281 = !{!143, !40, i64 212}
!282 = !{!35, !36, i64 168}
!283 = distinct !{!283, !48, !49}
!284 = distinct !{!284, !48, !49}
!285 = distinct !{!285, !48, !49}
!286 = distinct !{!286, !48, !49}
!287 = !{!106, !39, i64 16}
!288 = !{!289, !37, i64 2080}
!289 = !{!"Global", !39, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !52, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !78, i64 2084, !78, i64 2086, !78, i64 2088, !37, i64 2090, !78, i64 2092, !36, i64 2096, !36, i64 2100, !37, i64 2104, !36, i64 2108, !36, i64 2112, !37, i64 2116}
!290 = !{!77, !36, i64 5732}
!291 = !{!102, !36, i64 108}
!292 = !{!106, !39, i64 24}
!293 = !{!102, !39, i64 144}
!294 = !{!102, !39, i64 136}
!295 = distinct !{!295, !48, !49}
!296 = !{!106, !78, i64 140}
!297 = !{!298, !36, i64 104}
!298 = !{!"RenderResult", !39, i64 0, !39, i64 8, !36, i64 16, !36, i64 20, !78, i64 24, !78, i64 26, !39, i64 32, !39, i64 40, !39, i64 48, !79, i64 56, !36, i64 72, !36, i64 76, !52, i64 80, !79, i64 96, !39, i64 112, !36, i64 120, !36, i64 124, !36, i64 128, !39, i64 136}
!299 = !{!298, !36, i64 108}
!300 = !{!298, !39, i64 112}
!301 = !{!302, !36, i64 16}
!302 = !{!"RenderPass", !39, i64 0, !39, i64 8, !36, i64 16, !36, i64 20, !37, i64 24, !37, i64 88, !39, i64 96, !36, i64 104, !36, i64 108, !36, i64 112}
!303 = distinct !{!303, !48, !49}
!304 = !{!302, !39, i64 96}
!305 = !{!306, !36, i64 0}
!306 = !{!"ZTranspRow", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !40, i64 20, !40, i64 24}
!307 = !{!306, !36, i64 4}
!308 = !{!306, !36, i64 8}
!309 = !{!78, !78, i64 0}
!310 = !{!306, !36, i64 12}
!311 = !{!306, !36, i64 16}
!312 = distinct !{!312, !48, !49}
!313 = !{!314, !39, i64 64}
!314 = !{!"APixstr", !37, i64 0, !37, i64 8, !37, i64 24, !37, i64 40, !37, i64 56, !39, i64 64}
!315 = distinct !{!315, !48, !49}
!316 = distinct !{!316, !48, !49}
!317 = !{!306, !40, i64 20}
!318 = !{!306, !40, i64 24}
!319 = distinct !{!319, !48, !49}
!320 = !{!321, !39, i64 104}
!321 = !{!"APixstrand", !37, i64 0, !37, i64 8, !37, i64 24, !37, i64 40, !37, i64 56, !37, i64 72, !37, i64 88, !39, i64 104}
!322 = distinct !{!322, !48, !49}
!323 = !{i64 0, i64 4, !46, i64 4, i64 4, !46, i64 8, i64 4, !46, i64 12, i64 4, !46, i64 16, i64 4, !46, i64 20, i64 4, !50, i64 24, i64 4, !50}
!324 = !{!77, !39, i64 5800}
!325 = distinct !{!325, !48, !49}
!326 = !{!327, !78, i64 1124}
!327 = !{!"Object", !89, i64 0, !39, i64 120, !39, i64 128, !78, i64 136, !78, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !39, i64 304, !328, i64 312, !39, i64 360, !52, i64 368, !52, i64 384, !52, i64 400, !52, i64 416, !36, i64 432, !36, i64 436, !39, i64 440, !39, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !40, i64 616, !40, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !78, i64 948, !78, i64 950, !78, i64 952, !78, i64 954, !78, i64 956, !78, i64 958, !78, i64 960, !78, i64 962, !78, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !40, i64 988, !40, i64 992, !40, i64 996, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !40, i64 1028, !40, i64 1032, !78, i64 1036, !78, i64 1038, !78, i64 1040, !37, i64 1042, !37, i64 1043, !78, i64 1044, !37, i64 1046, !37, i64 1047, !40, i64 1048, !40, i64 1052, !52, i64 1056, !52, i64 1072, !52, i64 1088, !52, i64 1104, !40, i64 1120, !78, i64 1124, !78, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !39, i64 1152, !37, i64 1160, !37, i64 1161, !78, i64 1162, !37, i64 1164, !52, i64 1176, !52, i64 1192, !52, i64 1208, !52, i64 1224, !39, i64 1240, !39, i64 1248, !39, i64 1256, !37, i64 1264, !37, i64 1265, !78, i64 1266, !40, i64 1268, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !270, i64 1304, !270, i64 1312, !36, i64 1320, !36, i64 1324, !52, i64 1328, !52, i64 1344, !39, i64 1360, !39, i64 1368, !39, i64 1376, !37, i64 1384, !39, i64 1392, !52, i64 1400, !39, i64 1416}
!328 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !78, i64 16, !78, i64 18, !78, i64 20, !78, i64 22, !78, i64 24, !78, i64 26, !78, i64 28, !78, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!329 = distinct !{!329, !48, !49}
!330 = distinct !{!330, !48, !49}
!331 = !{!143, !78, i64 886}
!332 = distinct !{!332, !48, !49}
!333 = !{!334, !40, i64 40}
!334 = !{!"ShadeResult", !37, i64 0, !37, i64 16, !40, i64 32, !40, i64 36, !40, i64 40, !37, i64 44, !37, i64 56, !37, i64 68, !37, i64 80, !37, i64 92, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 196}
!335 = distinct !{!335, !48, !49}
!336 = distinct !{!336, !48, !49}
!337 = distinct !{!337, !48, !49}
!338 = distinct !{!338, !48, !49}
!339 = distinct !{!339, !48, !49}
!340 = !{!298, !36, i64 16}
!341 = distinct !{!341, !48, !49}
!342 = distinct !{!342, !48, !49}
!343 = distinct !{!343, !48, !49}
!344 = distinct !{!344, !48, !49}
!345 = distinct !{!345, !48, !49}
!346 = distinct !{!346, !48, !49}
!347 = !{!348, !36, i64 0}
!348 = !{!"ShadeSample", !36, i64 0, !37, i64 8, !37, i64 136, !37, i64 23688}
!349 = !{!350, !36, i64 1388}
!350 = !{!"ShadeInput", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !36, i64 40, !37, i64 44, !78, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !78, i64 88, !78, i64 90, !78, i64 92, !78, i64 94, !78, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !36, i64 160, !36, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !36, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !40, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !40, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !36, i64 1096, !36, i64 1100, !36, i64 1104, !36, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !40, i64 1256, !40, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !40, i64 1336, !40, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !36, i64 1380, !36, i64 1384, !36, i64 1388, !37, i64 1392, !36, i64 1404, !36, i64 1408, !36, i64 1412, !37, i64 1416, !40, i64 1428, !37, i64 1432, !37, i64 1433, !78, i64 1434, !78, i64 1436, !78, i64 1438, !36, i64 1440, !36, i64 1444, !36, i64 1448, !36, i64 1452, !39, i64 1456, !39, i64 1464}
!351 = !{!350, !39, i64 8}
!352 = !{!350, !78, i64 1434}
!353 = !{!350, !36, i64 1404}
!354 = distinct !{!354, !48, !49}
!355 = !{!77, !39, i64 552}
!356 = !{!357, !39, i64 464}
!357 = !{!"SampleTables", !37, i64 0, !37, i64 64, !37, i64 136, !37, i64 208, !39, i64 464}
!358 = !{!350, !78, i64 1436}
!359 = !{!350, !36, i64 1448}
!360 = !{!77, !78, i64 96}
!361 = !{!350, !36, i64 1444}
!362 = distinct !{!362, !48, !49}
!363 = distinct !{!363, !48, !49}
!364 = !{!334, !40, i64 36}
!365 = distinct !{!365, !48, !49}
!366 = distinct !{!366, !48, !49}
!367 = distinct !{!367, !48, !49}
!368 = !{!35, !36, i64 180}
!369 = !{!35, !39, i64 144}
!370 = distinct !{!370, !48, !49}
!371 = distinct !{!371, !48, !49}
!372 = distinct !{!372, !48, !49}
!373 = distinct !{!373, !48, !49}
!374 = distinct !{!374, !48, !49}
!375 = distinct !{!375, !48, !49}
!376 = distinct !{!376, !48, !49}
