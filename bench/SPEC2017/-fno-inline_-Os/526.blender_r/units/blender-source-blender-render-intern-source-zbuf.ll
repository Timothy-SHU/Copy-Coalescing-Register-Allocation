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
%struct.DrawBufPixel = type { ptr, float }
%struct.NodeBlurData = type { i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, i16, i8, i8, i32, i32 }
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
%struct.PixStr = type { ptr, i32, i32, i32, i32, i16, i16 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @zbuf_alloc_span(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %5, i8 0, i64 216, i1 false)
  store i32 %1, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  store i32 %2, ptr %6, align 4, !tbaa !41
  %7 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %8 = sext i32 %2 to i64
  %9 = shl nsw i64 %8, 2
  %10 = tail call ptr %7(i64 noundef %9, ptr noundef nonnull @.str) #17
  %11 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  store ptr %10, ptr %11, align 8, !tbaa !43
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %13 = tail call ptr %12(i64 noundef %9, ptr noundef nonnull @.str) #17
  %14 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  store ptr %13, ptr %14, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 31
  store float %3, ptr %15, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void %8(ptr noundef nonnull %5) #17
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %14(ptr noundef nonnull %11) #17
  br label %15

15:                                               ; preds = %13, %9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
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
  %12 = icmp ugt i32 %9, 1
  br i1 %12, label %7, label %13, !llvm.loop !47

13:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @testclip(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds float, ptr %0, i64 3
  %3 = load float, ptr %2, align 4, !tbaa !49
  %4 = tail call float @llvm.fabs.f32(float %3)
  %5 = fadd float %4, 0x3E80000000000000
  %6 = load float, ptr %0, align 4, !tbaa !49
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
  %15 = load float, ptr %14, align 4, !tbaa !49
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
  %26 = load float, ptr %25, align 4, !tbaa !49
  %27 = fcmp olt float %26, %7
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = add nuw nsw i16 %24, 16
  br label %34

30:                                               ; preds = %23
  %31 = fcmp ogt float %26, %5
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = add nuw nsw i16 %24, 32
  br label %34

34:                                               ; preds = %30, %32, %28
  %35 = phi i16 [ %29, %28 ], [ %33, %32 ], [ %24, %30 ]
  %36 = zext nneg i16 %35 to i32
  ret i32 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @freepsA(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !50
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1, %12
  %5 = phi ptr [ %6, %12 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.APixstrMain, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %11(ptr noundef nonnull %8) #17
  br label %12

12:                                               ; preds = %10, %4
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %13(ptr noundef nonnull %5) #17
  %14 = icmp eq ptr %6, null
  br i1 %14, label %15, label %4, !llvm.loop !55

15:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @hoco_to_zco(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds float, ptr %2, i64 3
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = fdiv float 1.000000e+00, %5
  %7 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 12
  %8 = load float, ptr %7, align 8, !tbaa !56
  %9 = load float, ptr %2, align 4, !tbaa !49
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %6, float 1.000000e+00)
  %11 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 14
  %12 = load float, ptr %11, align 8, !tbaa !57
  %13 = tail call float @llvm.fmuladd.f32(float %8, float %10, float %12)
  store float %13, ptr %1, align 4, !tbaa !49
  %14 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 13
  %15 = load float, ptr %14, align 4, !tbaa !58
  %16 = getelementptr inbounds float, ptr %2, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !49
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %6, float 1.000000e+00)
  %19 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 15
  %20 = load float, ptr %19, align 4, !tbaa !59
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %18, float %20)
  %22 = getelementptr inbounds float, ptr %1, i64 1
  store float %21, ptr %22, align 4, !tbaa !49
  %23 = getelementptr inbounds float, ptr %2, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !49
  %25 = fmul float %6, %24
  %26 = fmul float %25, 0x41E0000000000000
  %27 = getelementptr inbounds float, ptr %1, i64 2
  store float %26, ptr %27, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @zbufclipwire(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr noundef readonly %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #0 {
  %13 = alloca [20 x float], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %13) #18
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %114, label %15

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
  br i1 %30, label %82, label %31

31:                                               ; preds = %27
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %33, label %114

33:                                               ; preds = %31
  %34 = and i32 %3, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  call fastcc void @copy_v4_v4(ptr noundef nonnull %13, ptr noundef %4) #19
  %37 = getelementptr inbounds float, ptr %13, i64 4
  call fastcc void @copy_v4_v4(ptr noundef nonnull %37, ptr noundef %5) #19
  %38 = call fastcc i32 @clipline(ptr noundef nonnull %13, ptr noundef nonnull %37) #19, !range !60
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %13) #19
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %37, ptr noundef nonnull %37) #19
  %41 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %42 = load ptr, ptr %41, align 8, !tbaa !61
  call void %42(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %37) #17
  br label %43

43:                                               ; preds = %36, %40, %33
  %44 = and i32 %3, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  call fastcc void @copy_v4_v4(ptr noundef nonnull %13, ptr noundef %5) #19
  %47 = getelementptr inbounds float, ptr %13, i64 4
  call fastcc void @copy_v4_v4(ptr noundef nonnull %47, ptr noundef %6) #19
  %48 = call fastcc i32 @clipline(ptr noundef nonnull %13, ptr noundef nonnull %47) #19, !range !60
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %13) #19
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %47, ptr noundef nonnull %47) #19
  %51 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %52 = load ptr, ptr %51, align 8, !tbaa !61
  call void %52(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %47) #17
  br label %53

53:                                               ; preds = %46, %50, %43
  %54 = and i32 %3, 4
  %55 = icmp eq i32 %54, 0
  br i1 %16, label %74, label %56

56:                                               ; preds = %53
  br i1 %55, label %64, label %57

57:                                               ; preds = %56
  call fastcc void @copy_v4_v4(ptr noundef nonnull %13, ptr noundef %6) #19
  %58 = getelementptr inbounds float, ptr %13, i64 4
  call fastcc void @copy_v4_v4(ptr noundef nonnull %58, ptr noundef nonnull %7) #19
  %59 = call fastcc i32 @clipline(ptr noundef nonnull %13, ptr noundef nonnull %58) #19, !range !60
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %13) #19
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %58, ptr noundef nonnull %58) #19
  %62 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %63 = load ptr, ptr %62, align 8, !tbaa !61
  call void %63(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %58) #17
  br label %64

64:                                               ; preds = %57, %61, %56
  %65 = and i32 %3, 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %114, label %67

67:                                               ; preds = %64
  call fastcc void @copy_v4_v4(ptr noundef nonnull %13, ptr noundef nonnull %7) #19
  %68 = getelementptr inbounds float, ptr %13, i64 4
  call fastcc void @copy_v4_v4(ptr noundef nonnull %68, ptr noundef %4) #19
  %69 = call fastcc i32 @clipline(ptr noundef nonnull %13, ptr noundef nonnull %68) #19, !range !60
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %114, label %71

71:                                               ; preds = %67
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %13) #19
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %68, ptr noundef nonnull %68) #19
  %72 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %73 = load ptr, ptr %72, align 8, !tbaa !61
  call void %73(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %68) #17
  br label %114

74:                                               ; preds = %53
  br i1 %55, label %114, label %75

75:                                               ; preds = %74
  call fastcc void @copy_v4_v4(ptr noundef nonnull %13, ptr noundef %6) #19
  %76 = getelementptr inbounds float, ptr %13, i64 4
  call fastcc void @copy_v4_v4(ptr noundef nonnull %76, ptr noundef %4) #19
  %77 = call fastcc i32 @clipline(ptr noundef nonnull %13, ptr noundef nonnull %76) #19, !range !60
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %114, label %79

79:                                               ; preds = %75
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %13) #19
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %76, ptr noundef nonnull %76) #19
  %80 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %81 = load ptr, ptr %80, align 8, !tbaa !61
  call void %81(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %76) #17
  br label %114

82:                                               ; preds = %27
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %4) #19
  %83 = getelementptr inbounds float, ptr %13, i64 4
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %83, ptr noundef %5) #19
  %84 = getelementptr inbounds float, ptr %13, i64 8
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %84, ptr noundef %6) #19
  br i1 %16, label %95, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds float, ptr %13, i64 12
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %86, ptr noundef nonnull %7) #19
  %87 = and i32 %3, 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %91 = load ptr, ptr %90, align 8, !tbaa !61
  call void %91(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %84, ptr noundef nonnull %86) #17
  br label %92

92:                                               ; preds = %89, %85
  %93 = and i32 %3, 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %102, label %98

95:                                               ; preds = %82
  %96 = and i32 %3, 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95, %92
  %99 = phi ptr [ %86, %92 ], [ %84, %95 ]
  %100 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %101 = load ptr, ptr %100, align 8, !tbaa !61
  call void %101(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %99, ptr noundef nonnull %13) #17
  br label %102

102:                                              ; preds = %98, %95, %92
  %103 = and i32 %3, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %107 = load ptr, ptr %106, align 8, !tbaa !61
  call void %107(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %83) #17
  br label %108

108:                                              ; preds = %105, %102
  %109 = and i32 %3, 2
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %113 = load ptr, ptr %112, align 8, !tbaa !61
  call void %113(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %83, ptr noundef nonnull %84) #17
  br label %114

114:                                              ; preds = %108, %111, %67, %71, %64, %75, %79, %74, %31, %12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %13) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !62 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  store float %3, ptr %0, align 4, !tbaa !49
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !49
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !49
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @clipline(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 !PGOFuncName !63 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store float 0.000000e+00, ptr %3, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store float 1.000000e+00, ptr %4, align 4, !tbaa !49
  %5 = getelementptr inbounds float, ptr %1, i64 2
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = fsub float %6, %8
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !49
  %12 = getelementptr inbounds float, ptr %0, i64 3
  %13 = load float, ptr %12, align 4, !tbaa !49
  %14 = fsub float %11, %13
  %15 = fneg float %9
  %16 = fneg float %14
  %17 = call fastcc signext i16 @cliptestf(float noundef %15, float noundef %16, float noundef %13, float noundef %8, ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !64
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %73, label %19

19:                                               ; preds = %2
  %20 = fneg float %8
  %21 = call fastcc signext i16 @cliptestf(float noundef %9, float noundef %16, float noundef %13, float noundef %20, ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !64
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %73, label %23

23:                                               ; preds = %19
  %24 = load float, ptr %1, align 4, !tbaa !49
  %25 = load float, ptr %0, align 4, !tbaa !49
  %26 = fsub float %24, %25
  %27 = fmul float %14, 0x3FF028F5C0000000
  %28 = fmul float %13, 0x3FF028F5C0000000
  %29 = fneg float %26
  %30 = fneg float %27
  %31 = call fastcc signext i16 @cliptestf(float noundef %29, float noundef %30, float noundef %25, float noundef %28, ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !64
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %73, label %33

33:                                               ; preds = %23
  %34 = fneg float %25
  %35 = call fastcc signext i16 @cliptestf(float noundef %26, float noundef %30, float noundef %28, float noundef %34, ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !64
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %73, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds float, ptr %1, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !49
  %40 = getelementptr inbounds float, ptr %0, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !49
  %42 = fsub float %39, %41
  %43 = fneg float %42
  %44 = call fastcc signext i16 @cliptestf(float noundef %43, float noundef %30, float noundef %41, float noundef %28, ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !64
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %73, label %46

46:                                               ; preds = %37
  %47 = fneg float %41
  %48 = call fastcc signext i16 @cliptestf(float noundef %42, float noundef %30, float noundef %28, float noundef %47, ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !64
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %46
  %51 = load float, ptr %4, align 4, !tbaa !49
  %52 = fcmp olt float %51, 1.000000e+00
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = tail call float @llvm.fmuladd.f32(float %51, float %26, float %25)
  store float %54, ptr %1, align 4, !tbaa !49
  %55 = load float, ptr %40, align 4, !tbaa !49
  %56 = tail call float @llvm.fmuladd.f32(float %51, float %42, float %55)
  store float %56, ptr %38, align 4, !tbaa !49
  %57 = load float, ptr %7, align 4, !tbaa !49
  %58 = tail call float @llvm.fmuladd.f32(float %51, float %27, float %57)
  store float %58, ptr %5, align 4, !tbaa !49
  %59 = load float, ptr %12, align 4, !tbaa !49
  %60 = tail call float @llvm.fmuladd.f32(float %51, float %14, float %59)
  store float %60, ptr %10, align 4, !tbaa !49
  br label %61

61:                                               ; preds = %53, %50
  %62 = load float, ptr %3, align 4, !tbaa !49
  %63 = fcmp ogt float %62, 0.000000e+00
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load <4 x float>, ptr %0, align 4, !tbaa !49
  %66 = insertelement <4 x float> poison, float %62, i64 0
  %67 = shufflevector <4 x float> %66, <4 x float> poison, <4 x i32> zeroinitializer
  %68 = insertelement <4 x float> poison, float %26, i64 0
  %69 = insertelement <4 x float> %68, float %42, i64 1
  %70 = insertelement <4 x float> %69, float %27, i64 2
  %71 = insertelement <4 x float> %70, float %14, i64 3
  %72 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %67, <4 x float> %71, <4 x float> %65)
  store <4 x float> %72, ptr %0, align 4, !tbaa !49
  br label %73

73:                                               ; preds = %2, %23, %37, %46, %33, %19, %61, %64
  %74 = phi i32 [ 1, %64 ], [ 1, %61 ], [ 0, %19 ], [ 0, %33 ], [ 0, %46 ], [ 0, %37 ], [ 0, %23 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret i32 %74
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @zbufsinglewire(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  %8 = tail call i32 @testclip(ptr noundef %3) #19, !range !65
  %9 = tail call i32 @testclip(ptr noundef %4) #19, !range !65
  %10 = or i32 %9, %8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %5
  %13 = and i32 %9, %8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  call fastcc void @copy_v4_v4(ptr noundef nonnull %6, ptr noundef %3) #19
  call fastcc void @copy_v4_v4(ptr noundef nonnull %7, ptr noundef %4) #19
  %16 = call fastcc i32 @clipline(ptr noundef nonnull %6, ptr noundef nonnull %7) #19, !range !60
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %6) #19
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %7) #19
  br label %20

19:                                               ; preds = %5
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %3) #19
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %4) #19
  br label %20

20:                                               ; preds = %19, %18
  %21 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 35
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  call void %22(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  br label %23

23:                                               ; preds = %20, %12, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @zspan_scanconvert_strand(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = load i32, ptr %0, align 8, !tbaa !34
  tail call fastcc void @zbuf_init_span(ptr noundef nonnull %0) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %2) #19
  %8 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = icmp eq ptr %9, null
  br i1 %10, label %177, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = icmp eq ptr %13, null
  br i1 %14, label %177, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !69
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %19)
  %21 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !70
  %23 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !71
  %25 = tail call i32 @llvm.smin.i32(i32 %22, i32 %24)
  %26 = icmp slt i32 %25, %20
  br i1 %26, label %177, label %27

27:                                               ; preds = %15
  %28 = load float, ptr %2, align 4, !tbaa !49
  %29 = load float, ptr %3, align 4, !tbaa !49
  %30 = fsub float %28, %29
  %31 = load float, ptr %4, align 4, !tbaa !49
  %32 = fsub float %29, %31
  %33 = getelementptr inbounds float, ptr %2, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !49
  %35 = getelementptr inbounds float, ptr %3, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !49
  %37 = fsub float %34, %36
  %38 = getelementptr inbounds float, ptr %4, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !49
  %40 = fsub float %36, %39
  %41 = fneg float %37
  %42 = fmul float %32, %41
  %43 = tail call float @llvm.fmuladd.f32(float %30, float %40, float %42)
  %44 = fcmp oeq float %43, 0.000000e+00
  br i1 %44, label %177, label %45

45:                                               ; preds = %27
  %46 = getelementptr inbounds float, ptr %2, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !49
  %48 = getelementptr inbounds float, ptr %3, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !49
  %50 = fsub float %47, %49
  %51 = getelementptr inbounds float, ptr %4, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !49
  %53 = fsub float %49, %52
  %54 = fneg float %30
  %55 = fmul float %53, %54
  %56 = tail call float @llvm.fmuladd.f32(float %50, float %32, float %55)
  %57 = fneg float %50
  %58 = fmul float %40, %57
  %59 = tail call float @llvm.fmuladd.f32(float %37, float %53, float %58)
  %60 = fpext float %59 to double
  %61 = fneg double %60
  %62 = fpext float %43 to double
  %63 = fdiv double %61, %62
  %64 = fptrunc double %63 to float
  %65 = fpext float %56 to double
  %66 = fneg double %65
  %67 = fdiv double %66, %62
  %68 = fptrunc double %67 to float
  %69 = fneg float %40
  %70 = tail call float @llvm.fmuladd.f32(float %37, float 0.000000e+00, float %69)
  %71 = fmul float %30, 0.000000e+00
  %72 = fsub float %32, %71
  %73 = fadd float %37, %40
  %74 = tail call float @llvm.fmuladd.f32(float %32, float -1.000000e+00, float %54)
  %75 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  %76 = load ptr, ptr %75, align 8, !tbaa !43
  %77 = add nsw i32 %25, %20
  %78 = sdiv i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, ptr %76, i64 %79
  %81 = load float, ptr %80, align 4, !tbaa !49
  %82 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  %83 = load ptr, ptr %82, align 8, !tbaa !44
  %84 = getelementptr inbounds float, ptr %83, i64 %79
  %85 = load float, ptr %84, align 4, !tbaa !49
  %86 = fcmp olt float %81, %85
  %87 = sext i32 %25 to i64
  %88 = getelementptr inbounds float, ptr %83, i64 %87
  %89 = getelementptr inbounds float, ptr %76, i64 %87
  %90 = select i1 %86, ptr %88, ptr %89
  %91 = select i1 %86, ptr %89, ptr %88
  %92 = sitofp i32 %25 to double
  %93 = fmul float %34, %74
  %94 = tail call float @llvm.fmuladd.f32(float %73, float %28, float %93)
  %95 = fdiv float %94, %43
  %96 = fmul float %34, %72
  %97 = tail call float @llvm.fmuladd.f32(float %70, float %28, float %96)
  %98 = fdiv float %97, %43
  %99 = fadd float %98, 1.000000e+00
  %100 = insertelement <2 x float> poison, float %70, i64 0
  %101 = insertelement <2 x float> %100, float %73, i64 1
  %102 = fpext <2 x float> %101 to <2 x double>
  %103 = fneg <2 x double> %102
  %104 = insertelement <2 x double> poison, double %62, i64 0
  %105 = shufflevector <2 x double> %104, <2 x double> poison, <2 x i32> zeroinitializer
  %106 = fdiv <2 x double> %103, %105
  %107 = fptrunc <2 x double> %106 to <2 x float>
  %108 = insertelement <2 x float> poison, float %72, i64 0
  %109 = insertelement <2 x float> %108, float %74, i64 1
  %110 = fpext <2 x float> %109 to <2 x double>
  %111 = fneg <2 x double> %110
  %112 = fdiv <2 x double> %111, %105
  %113 = fptrunc <2 x double> %112 to <2 x float>
  %114 = fpext <2 x float> %113 to <2 x double>
  %115 = insertelement <2 x float> poison, float %99, i64 0
  %116 = insertelement <2 x float> %115, float %95, i64 1
  %117 = fpext <2 x float> %116 to <2 x double>
  %118 = insertelement <2 x double> poison, double %92, i64 0
  %119 = shufflevector <2 x double> %118, <2 x double> poison, <2 x i32> zeroinitializer
  %120 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %119, <2 x double> %114, <2 x double> %117)
  %121 = fptrunc <2 x double> %120 to <2 x float>
  %122 = fpext float %68 to double
  %123 = fmul float %34, %56
  %124 = tail call float @llvm.fmuladd.f32(float %59, float %28, float %123)
  %125 = fdiv float %124, %43
  %126 = fadd float %47, %125
  %127 = fpext float %126 to double
  %128 = tail call double @llvm.fmuladd.f64(double %92, double %122, double %127)
  %129 = fptrunc double %128 to float
  %130 = add nsw i32 %7, -1
  %131 = fpext <2 x float> %107 to <2 x double>
  %132 = fpext float %64 to double
  br label %133

133:                                              ; preds = %45, %170
  %134 = phi i32 [ %25, %45 ], [ %173, %170 ]
  %135 = phi ptr [ %90, %45 ], [ %175, %170 ]
  %136 = phi ptr [ %91, %45 ], [ %174, %170 ]
  %137 = phi float [ %129, %45 ], [ %172, %170 ]
  %138 = phi <2 x float> [ %121, %45 ], [ %171, %170 ]
  %139 = load float, ptr %136, align 4, !tbaa !49
  %140 = tail call float @llvm.floor.f32(float %139)
  %141 = fptosi float %140 to i32
  %142 = load float, ptr %135, align 4, !tbaa !49
  %143 = tail call float @llvm.floor.f32(float %142)
  %144 = fptosi float %143 to i32
  %145 = icmp sgt i32 %7, %144
  %146 = select i1 %145, i32 %144, i32 %130
  %147 = tail call i32 @llvm.smax.i32(i32 %141, i32 -1)
  %148 = icmp slt i32 %147, %146
  br i1 %148, label %149, label %170

149:                                              ; preds = %133
  %150 = add nsw i32 %147, 1
  %151 = sitofp i32 %150 to double
  %152 = fpext float %137 to double
  %153 = tail call double @llvm.fmuladd.f64(double %151, double %132, double %152)
  %154 = fptrunc double %153 to float
  %155 = fpext <2 x float> %138 to <2 x double>
  %156 = insertelement <2 x double> poison, double %151, i64 0
  %157 = shufflevector <2 x double> %156, <2 x double> poison, <2 x i32> zeroinitializer
  %158 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %157, <2 x double> %131, <2 x double> %155)
  %159 = fptrunc <2 x double> %158 to <2 x float>
  br label %160

160:                                              ; preds = %149, %160
  %161 = phi i32 [ %166, %160 ], [ %150, %149 ]
  %162 = phi float [ %168, %160 ], [ %154, %149 ]
  %163 = phi <2 x float> [ %167, %160 ], [ %159, %149 ]
  %164 = extractelement <2 x float> %163, i64 0
  %165 = extractelement <2 x float> %163, i64 1
  tail call void %5(ptr noundef %1, i32 noundef %161, i32 noundef %134, float noundef %164, float noundef %165, float noundef %162) #17
  %166 = add i32 %161, 1
  %167 = fadd <2 x float> %163, %107
  %168 = fadd float %162, %64
  %169 = icmp eq i32 %161, %146
  br i1 %169, label %170, label %160, !llvm.loop !72

170:                                              ; preds = %160, %133
  %171 = fsub <2 x float> %138, %113
  %172 = fsub float %137, %68
  %173 = add nsw i32 %134, -1
  %174 = getelementptr inbounds float, ptr %136, i64 -1
  %175 = getelementptr inbounds float, ptr %135, i64 -1
  %176 = icmp sgt i32 %134, %20
  br i1 %176, label %133, label %177, !llvm.loop !73

177:                                              ; preds = %170, %27, %15, %6, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @zbuf_init_span(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !74 {
  %2 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !41
  %4 = add nsw i32 %3, 1
  %5 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 4
  store i32 %4, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 2
  store i32 %4, ptr %6, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 5
  store i32 -1, ptr %7, align 4, !tbaa !71
  %8 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 4, !tbaa !70
  %9 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @zbuf_add_to_span(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #7 !PGOFuncName !75 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %2, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !49
  %8 = fcmp olt float %5, %7
  %9 = select i1 %8, ptr %2, ptr %1
  %10 = select i1 %8, ptr %1, ptr %2
  %11 = getelementptr inbounds float, ptr %10, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = tail call float @llvm.ceil.f32(float %12)
  %14 = fptosi float %13 to i32
  %15 = getelementptr inbounds float, ptr %9, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !49
  %17 = tail call float @llvm.floor.f32(float %16)
  %18 = fptosi float %17 to i32
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %130, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !41
  %23 = icmp sgt i32 %22, %14
  br i1 %23, label %24, label %130

24:                                               ; preds = %20
  %25 = icmp sgt i32 %22, %18
  %26 = add nsw i32 %22, -1
  %27 = select i1 %25, i32 %18, i32 %26
  %28 = tail call i32 @llvm.smax.i32(i32 %14, i32 0)
  %29 = icmp sgt i32 %28, %27
  br i1 %29, label %130, label %30

30:                                               ; preds = %24
  %31 = fsub float %16, %12
  %32 = fcmp ogt float %31, 0x3E80000000000000
  %33 = load float, ptr %10, align 4, !tbaa !49
  %34 = load float, ptr %9, align 4, !tbaa !49
  br i1 %32, label %35, label %41

35:                                               ; preds = %30
  %36 = fsub float %33, %34
  %37 = fdiv float %36, %31
  %38 = sitofp i32 %27 to float
  %39 = fsub float %12, %38
  %40 = tail call float @llvm.fmuladd.f32(float %37, float %39, float %33)
  br label %43

41:                                               ; preds = %30
  %42 = tail call fastcc float @min_ff(float noundef %33, float noundef %34) #19
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi float [ %37, %35 ], [ 0.000000e+00, %41 ]
  %45 = phi float [ %40, %35 ], [ %42, %41 ]
  %46 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !76
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  br label %61

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !77
  %54 = icmp eq ptr %9, %53
  %55 = icmp eq ptr %10, %47
  %56 = or i1 %55, %54
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  br label %61

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  br label %61

61:                                               ; preds = %57, %59, %49
  %62 = phi ptr [ %50, %49 ], [ %58, %57 ], [ %60, %59 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !42
  %64 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  %65 = load ptr, ptr %64, align 8, !tbaa !43
  %66 = icmp eq ptr %63, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !77
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds float, ptr %69, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !49
  %74 = fcmp ogt float %73, %12
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %67
  store ptr %10, ptr %68, align 8, !tbaa !77
  br label %76

76:                                               ; preds = %75, %71
  br i1 %48, label %81, label %77

77:                                               ; preds = %76
  %78 = getelementptr inbounds float, ptr %47, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !49
  %80 = fcmp olt float %79, %16
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %76
  store ptr %9, ptr %46, align 8, !tbaa !76
  br label %82

82:                                               ; preds = %81, %77
  %83 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !68
  %85 = icmp slt i32 %28, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 %28, ptr %83, align 8, !tbaa !68
  br label %87

87:                                               ; preds = %86, %82
  %88 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 3
  %89 = load i32, ptr %88, align 4, !tbaa !70
  %90 = icmp sgt i32 %27, %89
  br i1 %90, label %118, label %120

91:                                               ; preds = %61
  %92 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 8
  %93 = load ptr, ptr %92, align 8, !tbaa !66
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds float, ptr %93, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !49
  %98 = fcmp ogt float %97, %12
  br i1 %98, label %99, label %100

99:                                               ; preds = %95, %91
  store ptr %10, ptr %92, align 8, !tbaa !66
  br label %100

100:                                              ; preds = %99, %95
  %101 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 9
  %102 = load ptr, ptr %101, align 8, !tbaa !67
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds float, ptr %102, i64 1
  %106 = load float, ptr %105, align 4, !tbaa !49
  %107 = fcmp olt float %106, %16
  br i1 %107, label %108, label %109

108:                                              ; preds = %104, %100
  store ptr %9, ptr %101, align 8, !tbaa !67
  br label %109

109:                                              ; preds = %108, %104
  %110 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 4
  %111 = load i32, ptr %110, align 8, !tbaa !69
  %112 = icmp slt i32 %28, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 %28, ptr %110, align 8, !tbaa !69
  br label %114

114:                                              ; preds = %113, %109
  %115 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 5
  %116 = load i32, ptr %115, align 4, !tbaa !71
  %117 = icmp sgt i32 %27, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114, %87
  %119 = phi ptr [ %88, %87 ], [ %115, %114 ]
  store i32 %27, ptr %119, align 4, !tbaa !46
  br label %120

120:                                              ; preds = %118, %87, %114
  %121 = zext nneg i32 %27 to i64
  %122 = zext nneg i32 %28 to i64
  br label %123

123:                                              ; preds = %120, %123
  %124 = phi i64 [ %121, %120 ], [ %127, %123 ]
  %125 = phi float [ %45, %120 ], [ %128, %123 ]
  %126 = getelementptr inbounds float, ptr %63, i64 %124
  store float %125, ptr %126, align 4, !tbaa !49
  %127 = add nsw i64 %124, -1
  %128 = fadd float %44, %125
  %129 = icmp sgt i64 %124, %122
  br i1 %129, label %123, label %130, !llvm.loop !78

130:                                              ; preds = %123, %24, %3, %20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @zspan_scanconvert(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = load i32, ptr %0, align 8, !tbaa !34
  tail call fastcc void @zbuf_init_span(ptr noundef nonnull %0) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %2) #19
  %8 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = icmp eq ptr %9, null
  br i1 %10, label %140, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = icmp eq ptr %13, null
  br i1 %14, label %140, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !69
  %20 = tail call i32 @llvm.smax.i32(i32 %17, i32 %19)
  %21 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !70
  %23 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !71
  %25 = tail call i32 @llvm.smin.i32(i32 %22, i32 %24)
  %26 = icmp slt i32 %25, %20
  br i1 %26, label %140, label %27

27:                                               ; preds = %15
  %28 = load float, ptr %2, align 4, !tbaa !49
  %29 = load float, ptr %3, align 4, !tbaa !49
  %30 = fsub float %28, %29
  %31 = load float, ptr %4, align 4, !tbaa !49
  %32 = fsub float %29, %31
  %33 = getelementptr inbounds float, ptr %2, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !49
  %35 = getelementptr inbounds float, ptr %3, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !49
  %37 = fsub float %34, %36
  %38 = getelementptr inbounds float, ptr %4, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !49
  %40 = fsub float %36, %39
  %41 = fneg float %37
  %42 = fmul float %32, %41
  %43 = tail call float @llvm.fmuladd.f32(float %30, float %40, float %42)
  %44 = fcmp oeq float %43, 0.000000e+00
  br i1 %44, label %140, label %45

45:                                               ; preds = %27
  %46 = fmul float %30, 0.000000e+00
  %47 = fsub float %32, %46
  %48 = fneg float %40
  %49 = tail call float @llvm.fmuladd.f32(float %37, float 0.000000e+00, float %48)
  %50 = fpext float %43 to double
  %51 = fadd float %37, %40
  %52 = fneg float %30
  %53 = tail call float @llvm.fmuladd.f32(float %32, float -1.000000e+00, float %52)
  %54 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  %55 = load ptr, ptr %54, align 8, !tbaa !43
  %56 = add nsw i32 %25, %20
  %57 = sdiv i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, ptr %55, i64 %58
  %60 = load float, ptr %59, align 4, !tbaa !49
  %61 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  %62 = load ptr, ptr %61, align 8, !tbaa !44
  %63 = getelementptr inbounds float, ptr %62, i64 %58
  %64 = load float, ptr %63, align 4, !tbaa !49
  %65 = fcmp olt float %60, %64
  %66 = sext i32 %25 to i64
  %67 = getelementptr inbounds float, ptr %62, i64 %66
  %68 = getelementptr inbounds float, ptr %55, i64 %66
  %69 = select i1 %65, ptr %67, ptr %68
  %70 = select i1 %65, ptr %68, ptr %67
  %71 = sitofp i32 %25 to double
  %72 = fmul float %34, %53
  %73 = tail call float @llvm.fmuladd.f32(float %51, float %28, float %72)
  %74 = fdiv float %73, %43
  %75 = fmul float %34, %47
  %76 = tail call float @llvm.fmuladd.f32(float %49, float %28, float %75)
  %77 = fdiv float %76, %43
  %78 = fadd float %77, 1.000000e+00
  %79 = insertelement <2 x float> poison, float %49, i64 0
  %80 = insertelement <2 x float> %79, float %51, i64 1
  %81 = fpext <2 x float> %80 to <2 x double>
  %82 = fneg <2 x double> %81
  %83 = insertelement <2 x double> poison, double %50, i64 0
  %84 = shufflevector <2 x double> %83, <2 x double> poison, <2 x i32> zeroinitializer
  %85 = fdiv <2 x double> %82, %84
  %86 = fptrunc <2 x double> %85 to <2 x float>
  %87 = insertelement <2 x float> poison, float %47, i64 0
  %88 = insertelement <2 x float> %87, float %53, i64 1
  %89 = fpext <2 x float> %88 to <2 x double>
  %90 = fneg <2 x double> %89
  %91 = fdiv <2 x double> %90, %84
  %92 = fptrunc <2 x double> %91 to <2 x float>
  %93 = fpext <2 x float> %92 to <2 x double>
  %94 = insertelement <2 x float> poison, float %78, i64 0
  %95 = insertelement <2 x float> %94, float %74, i64 1
  %96 = fpext <2 x float> %95 to <2 x double>
  %97 = insertelement <2 x double> poison, double %71, i64 0
  %98 = shufflevector <2 x double> %97, <2 x double> poison, <2 x i32> zeroinitializer
  %99 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %98, <2 x double> %93, <2 x double> %96)
  %100 = fptrunc <2 x double> %99 to <2 x float>
  %101 = add nsw i32 %7, -1
  %102 = fpext <2 x float> %86 to <2 x double>
  br label %103

103:                                              ; preds = %45, %134
  %104 = phi i32 [ %25, %45 ], [ %136, %134 ]
  %105 = phi ptr [ %69, %45 ], [ %138, %134 ]
  %106 = phi ptr [ %70, %45 ], [ %137, %134 ]
  %107 = phi <2 x float> [ %100, %45 ], [ %135, %134 ]
  %108 = load float, ptr %106, align 4, !tbaa !49
  %109 = tail call float @llvm.floor.f32(float %108)
  %110 = fptosi float %109 to i32
  %111 = load float, ptr %105, align 4, !tbaa !49
  %112 = tail call float @llvm.floor.f32(float %111)
  %113 = fptosi float %112 to i32
  %114 = icmp sgt i32 %7, %113
  %115 = select i1 %114, i32 %113, i32 %101
  %116 = tail call i32 @llvm.smax.i32(i32 %110, i32 -1)
  %117 = icmp slt i32 %116, %115
  br i1 %117, label %118, label %134

118:                                              ; preds = %103
  %119 = add nsw i32 %116, 1
  %120 = sitofp i32 %119 to double
  %121 = fpext <2 x float> %107 to <2 x double>
  %122 = insertelement <2 x double> poison, double %120, i64 0
  %123 = shufflevector <2 x double> %122, <2 x double> poison, <2 x i32> zeroinitializer
  %124 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %123, <2 x double> %102, <2 x double> %121)
  %125 = fptrunc <2 x double> %124 to <2 x float>
  br label %126

126:                                              ; preds = %118, %126
  %127 = phi i32 [ %131, %126 ], [ %119, %118 ]
  %128 = phi <2 x float> [ %132, %126 ], [ %125, %118 ]
  %129 = extractelement <2 x float> %128, i64 0
  %130 = extractelement <2 x float> %128, i64 1
  tail call void %5(ptr noundef %1, i32 noundef %127, i32 noundef %104, float noundef %129, float noundef %130) #17
  %131 = add i32 %127, 1
  %132 = fadd <2 x float> %128, %86
  %133 = icmp eq i32 %127, %115
  br i1 %133, label %134, label %126, !llvm.loop !79

134:                                              ; preds = %126, %103
  %135 = fsub <2 x float> %107, %92
  %136 = add nsw i32 %104, -1
  %137 = getelementptr inbounds float, ptr %106, i64 -1
  %138 = getelementptr inbounds float, ptr %105, i64 -1
  %139 = icmp sgt i32 %104, %20
  br i1 %139, label %103, label %140, !llvm.loop !80

140:                                              ; preds = %134, %27, %15, %6, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @projectverto(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = load float, ptr %0, align 4, !tbaa !49
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = load float, ptr %1, align 4, !tbaa !49
  %10 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !49
  %12 = fmul float %8, %11
  %13 = tail call float @llvm.fmuladd.f32(float %4, float %9, float %12)
  %14 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %15 = load float, ptr %14, align 4, !tbaa !49
  %16 = fadd float %15, %13
  store float %16, ptr %2, align 4, !tbaa !49
  %17 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !49
  %19 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !49
  %21 = fmul float %8, %20
  %22 = tail call float @llvm.fmuladd.f32(float %6, float %18, float %21)
  %23 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !49
  %25 = fadd float %24, %22
  %26 = getelementptr inbounds float, ptr %2, i64 1
  store float %25, ptr %26, align 4, !tbaa !49
  %27 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !49
  %29 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !49
  %31 = tail call float @llvm.fmuladd.f32(float %8, float %28, float %30)
  %32 = getelementptr inbounds float, ptr %2, i64 2
  store float %31, ptr %32, align 4, !tbaa !49
  %33 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 3
  %34 = load float, ptr %33, align 4, !tbaa !49
  %35 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 3
  %36 = load float, ptr %35, align 4, !tbaa !49
  %37 = tail call float @llvm.fmuladd.f32(float %8, float %34, float %36)
  %38 = getelementptr inbounds float, ptr %2, i64 3
  store float %37, ptr %38, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @projectvert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = load float, ptr %0, align 4, !tbaa !49
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = load float, ptr %1, align 4, !tbaa !49
  %10 = getelementptr inbounds [4 x float], ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !49
  %12 = fmul float %6, %11
  %13 = tail call float @llvm.fmuladd.f32(float %4, float %9, float %12)
  %14 = getelementptr inbounds [4 x float], ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !49
  %16 = tail call float @llvm.fmuladd.f32(float %8, float %15, float %13)
  %17 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !49
  %19 = fadd float %18, %16
  store float %19, ptr %2, align 4, !tbaa !49
  %20 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !49
  %22 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !49
  %24 = fmul float %6, %23
  %25 = tail call float @llvm.fmuladd.f32(float %4, float %21, float %24)
  %26 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !49
  %28 = tail call float @llvm.fmuladd.f32(float %8, float %27, float %25)
  %29 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !49
  %31 = fadd float %30, %28
  %32 = getelementptr inbounds float, ptr %2, i64 1
  store float %31, ptr %32, align 4, !tbaa !49
  %33 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !49
  %35 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !49
  %37 = fmul float %6, %36
  %38 = tail call float @llvm.fmuladd.f32(float %4, float %34, float %37)
  %39 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !49
  %41 = tail call float @llvm.fmuladd.f32(float %8, float %40, float %38)
  %42 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !49
  %44 = fadd float %43, %41
  %45 = getelementptr inbounds float, ptr %2, i64 2
  store float %44, ptr %45, align 4, !tbaa !49
  %46 = getelementptr inbounds [4 x float], ptr %1, i64 0, i64 3
  %47 = load float, ptr %46, align 4, !tbaa !49
  %48 = getelementptr inbounds [4 x float], ptr %1, i64 1, i64 3
  %49 = load float, ptr %48, align 4, !tbaa !49
  %50 = fmul float %6, %49
  %51 = tail call float @llvm.fmuladd.f32(float %4, float %47, float %50)
  %52 = getelementptr inbounds [4 x float], ptr %1, i64 2, i64 3
  %53 = load float, ptr %52, align 4, !tbaa !49
  %54 = tail call float @llvm.fmuladd.f32(float %8, float %53, float %51)
  %55 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 3
  %56 = load float, ptr %55, align 4, !tbaa !49
  %57 = fadd float %56, %54
  %58 = getelementptr inbounds float, ptr %2, i64 3
  store float %57, ptr %58, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @zbuf_render_project(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %1) #19
  call void @projectvert(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %2) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !81 {
  %3 = load float, ptr %1, align 4, !tbaa !49
  store float %3, ptr %0, align 4, !tbaa !49
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @zbuf_make_winmat(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 47
  %5 = load i32, ptr %4, align 8, !tbaa !82
  %6 = and i32 %5, 1024
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  call void @unit_m4(ptr noundef nonnull %3) #17
  %9 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 27
  %10 = load float, ptr %9, align 4, !tbaa !98
  store float %10, ptr %3, align 16, !tbaa !49
  %11 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 26
  %12 = load float, ptr %11, align 8, !tbaa !99
  %13 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  store float %12, ptr %13, align 8, !tbaa !49
  %14 = fneg float %12
  %15 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 2
  store float %14, ptr %15, align 16, !tbaa !49
  %16 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 2, i64 2
  store float %10, ptr %16, align 8, !tbaa !49
  %17 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  call void @mul_m4_m4m4(ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  br label %20

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 35
  tail call void @copy_m4_m4(ptr noundef %1, ptr noundef nonnull %19) #17
  br label %20

20:                                               ; preds = %18, %8
  ret void
}

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %13) #18
  %19 = or i32 %7, %6
  %20 = or i32 %19, %8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %179, label %22

22:                                               ; preds = %9
  %23 = and i32 %7, %6
  %24 = and i32 %23, %8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %184

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #18
  store i32 3, ptr %18, align 4, !tbaa !46
  %27 = load <4 x float>, ptr %3, align 4, !tbaa !49
  store <4 x float> %27, ptr %12, align 16, !tbaa !49
  %28 = getelementptr inbounds [400 x float], ptr %12, i64 0, i64 4
  %29 = load <4 x float>, ptr %4, align 4, !tbaa !49
  store <4 x float> %29, ptr %28, align 16, !tbaa !49
  %30 = getelementptr inbounds [400 x float], ptr %12, i64 0, i64 8
  %31 = load <4 x float>, ptr %5, align 4, !tbaa !49
  store <4 x float> %31, ptr %30, align 16, !tbaa !49
  store ptr %12, ptr %10, align 16, !tbaa !42
  %32 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 1
  store ptr %28, ptr %32, align 8, !tbaa !42
  %33 = getelementptr inbounds [3 x ptr], ptr %10, i64 0, i64 2
  store ptr %30, ptr %33, align 16, !tbaa !42
  %34 = and i32 %20, 48
  store i32 %34, ptr %14, align 4, !tbaa !46
  %35 = icmp eq i32 %34, 0
  %36 = and i32 %20, 3
  %37 = and i32 %20, 12
  %38 = select i1 %35, i32 %36, i32 0
  %39 = select i1 %35, i32 %37, i32 0
  %40 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 1
  store i32 %38, ptr %40, align 4
  %41 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 2
  store i32 %39, ptr %41, align 4
  %42 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 31
  %43 = getelementptr inbounds [3 x [2 x float]], ptr %11, i64 0, i64 1
  %44 = getelementptr inbounds [3 x [2 x float]], ptr %11, i64 0, i64 2
  %45 = getelementptr inbounds [40 x ptr], ptr %13, i64 0, i64 1
  br label %49

46:                                               ; preds = %147
  %47 = load i32, ptr %18, align 4, !tbaa !46
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %158, label %153

49:                                               ; preds = %26, %147
  %50 = phi i64 [ 0, %26 ], [ %151, %147 ]
  %51 = phi i32 [ %38, %26 ], [ %148, %147 ]
  %52 = phi i32 [ %39, %26 ], [ %149, %147 ]
  %53 = phi i32 [ 1, %26 ], [ %150, %147 ]
  %54 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 %50
  %55 = load i32, ptr %54, align 4, !tbaa !46
  %56 = icmp ne i32 %55, 0
  %57 = icmp sgt i32 %53, 0
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %147

59:                                               ; preds = %49
  %60 = icmp eq i64 %50, 0
  %61 = icmp ne i64 %50, 1
  %62 = zext i1 %61 to i32
  %63 = select i1 %60, i32 2, i32 %62
  %64 = zext nneg i32 %53 to i64
  br label %65

65:                                               ; preds = %59, %140
  %66 = phi i64 [ 0, %59 ], [ %144, %140 ]
  %67 = phi i32 [ %51, %59 ], [ %141, %140 ]
  %68 = phi i32 [ %52, %59 ], [ %142, %140 ]
  %69 = phi i32 [ %53, %59 ], [ %143, %140 ]
  %70 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %66
  %71 = load ptr, ptr %70, align 8, !tbaa !42
  %72 = icmp eq ptr %71, null
  br i1 %72, label %140, label %73

73:                                               ; preds = %65
  store i32 0, ptr %17, align 4, !tbaa !46
  store i32 0, ptr %16, align 4, !tbaa !46
  %74 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %66, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !42
  %76 = load float, ptr %42, align 4, !tbaa !45
  call fastcc void @clippyra(ptr noundef nonnull %11, ptr noundef nonnull %71, ptr noundef %75, ptr noundef nonnull %16, ptr noundef nonnull %17, i32 noundef %63, float noundef %76) #19
  %77 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %66, i64 2
  %78 = load ptr, ptr %77, align 8, !tbaa !42
  call fastcc void @clippyra(ptr noundef nonnull %43, ptr noundef %75, ptr noundef %78, ptr noundef nonnull %16, ptr noundef nonnull %17, i32 noundef %63, float noundef %76) #19
  call fastcc void @clippyra(ptr noundef nonnull %44, ptr noundef %78, ptr noundef nonnull %71, ptr noundef nonnull %16, ptr noundef nonnull %17, i32 noundef %63, float noundef %76) #19
  %79 = load i32, ptr %16, align 4, !tbaa !46
  %80 = icmp eq i32 %79, 0
  %81 = load i32, ptr %17, align 4
  %82 = icmp eq i32 %81, 1
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %90

84:                                               ; preds = %73
  %85 = sext i32 %69 to i64
  %86 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %85
  store ptr %71, ptr %86, align 8, !tbaa !42
  %87 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %85, i64 1
  store ptr %75, ptr %87, align 8, !tbaa !42
  %88 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %85, i64 2
  store ptr %78, ptr %88, align 8, !tbaa !42
  store ptr null, ptr %70, align 8, !tbaa !42
  %89 = add nsw i32 %69, 1
  br label %140

90:                                               ; preds = %73
  %91 = icmp eq i32 %81, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %90
  store ptr null, ptr %70, align 8, !tbaa !42
  br label %140

93:                                               ; preds = %90
  store i32 0, ptr %15, align 4, !tbaa !46
  call fastcc void @makevertpyra(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %71, ptr noundef %75, ptr noundef nonnull %15, ptr noundef nonnull %18) #19
  call fastcc void @makevertpyra(ptr noundef nonnull %12, ptr noundef nonnull %43, ptr noundef nonnull %13, ptr noundef %75, ptr noundef %78, ptr noundef nonnull %15, ptr noundef nonnull %18) #19
  call fastcc void @makevertpyra(ptr noundef nonnull %12, ptr noundef nonnull %44, ptr noundef nonnull %13, ptr noundef %78, ptr noundef nonnull %71, ptr noundef nonnull %15, ptr noundef nonnull %18) #19
  br i1 %60, label %94, label %114

94:                                               ; preds = %93
  %95 = load i32, ptr %18, align 4, !tbaa !46
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %94, %97
  %98 = phi ptr [ %107, %97 ], [ %12, %94 ]
  %99 = phi i32 [ %108, %97 ], [ 0, %94 ]
  %100 = phi i32 [ %104, %97 ], [ 0, %94 ]
  %101 = phi i32 [ %106, %97 ], [ 0, %94 ]
  %102 = call i32 @testclip(ptr noundef nonnull %98) #19, !range !65
  %103 = and i32 %102, 3
  %104 = or i32 %100, %103
  %105 = and i32 %102, 12
  %106 = or i32 %101, %105
  %107 = getelementptr inbounds float, ptr %98, i64 4
  %108 = add nuw nsw i32 %99, 1
  %109 = icmp eq i32 %108, %95
  br i1 %109, label %110, label %97, !llvm.loop !100

110:                                              ; preds = %97, %94
  %111 = phi i32 [ 0, %94 ], [ %106, %97 ]
  %112 = phi i32 [ 0, %94 ], [ %104, %97 ]
  %113 = phi i32 [ 0, %94 ], [ %95, %97 ]
  store i32 %113, ptr %17, align 4, !tbaa !46
  br label %114

114:                                              ; preds = %110, %93
  %115 = phi i32 [ %112, %110 ], [ %67, %93 ]
  %116 = phi i32 [ %111, %110 ], [ %68, %93 ]
  store ptr null, ptr %70, align 8, !tbaa !42
  %117 = load i32, ptr %15, align 4, !tbaa !46
  %118 = icmp sgt i32 %117, 2
  br i1 %118, label %119, label %140

119:                                              ; preds = %114
  %120 = load ptr, ptr %13, align 16, !tbaa !42
  %121 = sext i32 %69 to i64
  %122 = add nuw i32 %117, 1
  %123 = zext i32 %122 to i64
  %124 = load ptr, ptr %45, align 8, !tbaa !42
  br label %125

125:                                              ; preds = %119, %125
  %126 = phi ptr [ %124, %119 ], [ %133, %125 ]
  %127 = phi i64 [ 3, %119 ], [ %136, %125 ]
  %128 = phi i64 [ %121, %119 ], [ %135, %125 ]
  %129 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %128
  store ptr %120, ptr %129, align 8, !tbaa !42
  %130 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %128, i64 1
  store ptr %126, ptr %130, align 8, !tbaa !42
  %131 = add nsw i64 %127, -1
  %132 = getelementptr inbounds [40 x ptr], ptr %13, i64 0, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !42
  %134 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %128, i64 2
  store ptr %133, ptr %134, align 8, !tbaa !42
  %135 = add nsw i64 %128, 1
  %136 = add nuw nsw i64 %127, 1
  %137 = icmp eq i64 %136, %123
  br i1 %137, label %138, label %125, !llvm.loop !101

138:                                              ; preds = %125
  %139 = trunc i64 %135 to i32
  store i32 %122, ptr %17, align 4, !tbaa !46
  br label %140

140:                                              ; preds = %138, %65, %92, %114, %84
  %141 = phi i32 [ %67, %84 ], [ %67, %92 ], [ %115, %114 ], [ %67, %65 ], [ %115, %138 ]
  %142 = phi i32 [ %68, %84 ], [ %68, %92 ], [ %116, %114 ], [ %68, %65 ], [ %116, %138 ]
  %143 = phi i32 [ %89, %84 ], [ %69, %92 ], [ %69, %114 ], [ %69, %65 ], [ %139, %138 ]
  %144 = add nuw nsw i64 %66, 1
  %145 = icmp eq i64 %144, %64
  br i1 %145, label %146, label %65, !llvm.loop !102

146:                                              ; preds = %140
  store i32 %142, ptr %41, align 4, !tbaa !46
  store i32 %141, ptr %40, align 4, !tbaa !46
  br label %147

147:                                              ; preds = %146, %49
  %148 = phi i32 [ %51, %49 ], [ %141, %146 ]
  %149 = phi i32 [ %52, %49 ], [ %142, %146 ]
  %150 = phi i32 [ %53, %49 ], [ %143, %146 ]
  %151 = add nuw nsw i64 %50, 1
  %152 = icmp eq i64 %151, 3
  br i1 %152, label %46, label %49, !llvm.loop !103

153:                                              ; preds = %158, %46
  %154 = icmp sgt i32 %150, 1
  br i1 %154, label %155, label %178

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 34
  %157 = zext nneg i32 %150 to i64
  br label %164

158:                                              ; preds = %46, %158
  %159 = phi ptr [ %161, %158 ], [ %12, %46 ]
  %160 = phi i32 [ %162, %158 ], [ 0, %46 ]
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %159, ptr noundef nonnull %159) #19
  %161 = getelementptr inbounds float, ptr %159, i64 4
  %162 = add nuw nsw i32 %160, 1
  %163 = icmp eq i32 %162, %47
  br i1 %163, label %153, label %158, !llvm.loop !104

164:                                              ; preds = %155, %175
  %165 = phi i64 [ 1, %155 ], [ %176, %175 ]
  %166 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !42
  %168 = icmp eq ptr %167, null
  br i1 %168, label %175, label %169

169:                                              ; preds = %164
  %170 = load ptr, ptr %156, align 8, !tbaa !105
  %171 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %165, i64 1
  %172 = load ptr, ptr %171, align 8, !tbaa !42
  %173 = getelementptr inbounds [32 x [3 x ptr]], ptr %10, i64 0, i64 %165, i64 2
  %174 = load ptr, ptr %173, align 8, !tbaa !42
  call void %170(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %167, ptr noundef %172, ptr noundef %174, ptr noundef null) #17
  br label %175

175:                                              ; preds = %164, %169
  %176 = add nuw nsw i64 %165, 1
  %177 = icmp eq i64 %176, %157
  br i1 %177, label %178, label %164, !llvm.loop !106

178:                                              ; preds = %175, %153
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #18
  br label %184

179:                                              ; preds = %9
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %3) #19
  %180 = getelementptr inbounds float, ptr %12, i64 4
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %180, ptr noundef %4) #19
  %181 = getelementptr inbounds float, ptr %12, i64 8
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %181, ptr noundef %5) #19
  %182 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 34
  %183 = load ptr, ptr %182, align 8, !tbaa !105
  call void %183(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %180, ptr noundef nonnull %181, ptr noundef null) #17
  br label %184

184:                                              ; preds = %22, %179, %178
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %10) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @clippyra(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, i32 noundef %5, float noundef %6) unnamed_addr #6 !PGOFuncName !107 {
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  store float 0.000000e+00, ptr %8, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  store float 1.000000e+00, ptr %9, align 4, !tbaa !49
  %10 = getelementptr inbounds float, ptr %0, i64 1
  store <2 x float> <float -1.000000e+00, float -1.000000e+00>, ptr %0, align 4, !tbaa !49
  %11 = zext nneg i32 %5 to i64
  %12 = getelementptr inbounds float, ptr %2, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !49
  %14 = getelementptr inbounds float, ptr %1, i64 %11
  %15 = load float, ptr %14, align 4, !tbaa !49
  %16 = fsub float %13, %15
  %17 = icmp eq i32 %5, 2
  %18 = getelementptr inbounds float, ptr %2, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !49
  %20 = getelementptr inbounds float, ptr %1, i64 3
  %21 = load float, ptr %20, align 4, !tbaa !49
  %22 = fsub float %19, %21
  %23 = select i1 %17, float 1.000000e+00, float %6
  %24 = select i1 %17, float 1.000000e+00, float %6
  %25 = fmul float %21, %24
  %26 = fneg float %16
  %27 = fneg float %22
  %28 = fmul float %23, %27
  %29 = call fastcc signext i16 @cliptestf(float noundef %26, float noundef %28, float noundef %25, float noundef %15, ptr noundef nonnull %8, ptr noundef nonnull %9) #19, !range !64
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %7
  %32 = fneg float %15
  %33 = call fastcc signext i16 @cliptestf(float noundef %16, float noundef %28, float noundef %25, float noundef %32, ptr noundef nonnull %8, ptr noundef nonnull %9) #19, !range !64
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  store i32 1, ptr %4, align 4, !tbaa !46
  %36 = load float, ptr %9, align 4, !tbaa !49
  %37 = fcmp olt float %36, 1.000000e+00
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, ptr %3, align 4, !tbaa !46
  br label %39

39:                                               ; preds = %35, %38
  %40 = phi float [ %36, %38 ], [ 1.000000e+00, %35 ]
  store float %40, ptr %10, align 4
  %41 = load float, ptr %8, align 4, !tbaa !49
  %42 = fcmp ogt float %41, 0.000000e+00
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store float %41, ptr %0, align 4, !tbaa !49
  store i32 1, ptr %3, align 4, !tbaa !46
  br label %45

44:                                               ; preds = %39
  store float 0.000000e+00, ptr %0, align 4, !tbaa !49
  br label %45

45:                                               ; preds = %31, %44, %43, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @makevertpyra(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5, ptr nocapture noundef %6) unnamed_addr #6 !PGOFuncName !108 {
  %8 = load float, ptr %1, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = fcmp une float %8, -1.000000e+00
  br i1 %11, label %12, label %56

12:                                               ; preds = %7
  %13 = fcmp une float %8, 0.000000e+00
  br i1 %13, label %14, label %49

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
  %23 = load float, ptr %3, align 4, !tbaa !49
  %24 = load float, ptr %4, align 4, !tbaa !49
  %25 = fsub float %24, %23
  %26 = tail call float @llvm.fmuladd.f32(float %8, float %25, float %23)
  store float %26, ptr %18, align 4, !tbaa !49
  %27 = getelementptr inbounds float, ptr %3, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !49
  %29 = getelementptr inbounds float, ptr %4, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !49
  %31 = fsub float %30, %28
  %32 = tail call float @llvm.fmuladd.f32(float %8, float %31, float %28)
  %33 = getelementptr inbounds float, ptr %18, i64 1
  store float %32, ptr %33, align 4, !tbaa !49
  %34 = getelementptr inbounds float, ptr %3, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !49
  %36 = getelementptr inbounds float, ptr %4, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !49
  %38 = fsub float %37, %35
  %39 = tail call float @llvm.fmuladd.f32(float %8, float %38, float %35)
  %40 = getelementptr inbounds float, ptr %18, i64 2
  store float %39, ptr %40, align 4, !tbaa !49
  %41 = getelementptr inbounds float, ptr %3, i64 3
  %42 = load float, ptr %41, align 4, !tbaa !49
  %43 = getelementptr inbounds float, ptr %4, i64 3
  %44 = load float, ptr %43, align 4, !tbaa !49
  %45 = fsub float %44, %42
  %46 = tail call float @llvm.fmuladd.f32(float %8, float %45, float %42)
  %47 = getelementptr inbounds float, ptr %18, i64 3
  store float %46, ptr %47, align 4, !tbaa !49
  %48 = load i32, ptr %5, align 4, !tbaa !46
  br label %53

49:                                               ; preds = %12
  %50 = load i32, ptr %5, align 4, !tbaa !46
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %2, i64 %51
  store ptr %3, ptr %52, align 8, !tbaa !42
  br label %53

53:                                               ; preds = %49, %14
  %54 = phi i32 [ %50, %49 ], [ %48, %14 ]
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %5, align 4, !tbaa !46
  br label %56

56:                                               ; preds = %53, %7
  %57 = fcmp une float %10, -1.000000e+00
  %58 = fcmp une float %10, 1.000000e+00
  %59 = and i1 %57, %58
  br i1 %59, label %60, label %96

60:                                               ; preds = %56
  %61 = load i32, ptr %6, align 4, !tbaa !46
  %62 = shl nsw i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, ptr %0, i64 %63
  %65 = load i32, ptr %5, align 4, !tbaa !46
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %2, i64 %66
  store ptr %64, ptr %67, align 8, !tbaa !42
  %68 = add nsw i32 %61, 1
  store i32 %68, ptr %6, align 4, !tbaa !46
  %69 = load float, ptr %3, align 4, !tbaa !49
  %70 = load float, ptr %4, align 4, !tbaa !49
  %71 = fsub float %70, %69
  %72 = tail call float @llvm.fmuladd.f32(float %10, float %71, float %69)
  store float %72, ptr %64, align 4, !tbaa !49
  %73 = getelementptr inbounds float, ptr %3, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !49
  %75 = getelementptr inbounds float, ptr %4, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !49
  %77 = fsub float %76, %74
  %78 = tail call float @llvm.fmuladd.f32(float %10, float %77, float %74)
  %79 = getelementptr inbounds float, ptr %64, i64 1
  store float %78, ptr %79, align 4, !tbaa !49
  %80 = getelementptr inbounds float, ptr %3, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !49
  %82 = getelementptr inbounds float, ptr %4, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !49
  %84 = fsub float %83, %81
  %85 = tail call float @llvm.fmuladd.f32(float %10, float %84, float %81)
  %86 = getelementptr inbounds float, ptr %64, i64 2
  store float %85, ptr %86, align 4, !tbaa !49
  %87 = getelementptr inbounds float, ptr %3, i64 3
  %88 = load float, ptr %87, align 4, !tbaa !49
  %89 = getelementptr inbounds float, ptr %4, i64 3
  %90 = load float, ptr %89, align 4, !tbaa !49
  %91 = fsub float %90, %88
  %92 = tail call float @llvm.fmuladd.f32(float %10, float %91, float %88)
  %93 = getelementptr inbounds float, ptr %64, i64 3
  store float %92, ptr %93, align 4, !tbaa !49
  %94 = load i32, ptr %5, align 4, !tbaa !46
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %5, align 4, !tbaa !46
  br label %96

96:                                               ; preds = %60, %56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @zbufclip4(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
  %12 = alloca [16 x float], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #18
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
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  tail call void @zbufclip(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %7, i32 noundef %8, i32 noundef %9) #19
  tail call void @zbufclip(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %9, i32 noundef %10) #19
  br label %29

23:                                               ; preds = %11
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %3) #19
  %24 = getelementptr inbounds float, ptr %12, i64 4
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %24, ptr noundef %4) #19
  %25 = getelementptr inbounds float, ptr %12, i64 8
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %25, ptr noundef %5) #19
  %26 = getelementptr inbounds float, ptr %12, i64 12
  call void @hoco_to_zco(ptr noundef %0, ptr noundef nonnull %26, ptr noundef %6) #19
  %27 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 34
  %28 = load ptr, ptr %27, align 8, !tbaa !105
  call void %28(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef nonnull %26) #17
  br label %29

29:                                               ; preds = %17, %23, %22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @zbuffer_solid(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [256 x %struct.ZbufProjectCache], align 16
  %6 = alloca [16 x %struct.ZSpan], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [4 x float], align 16
  %12 = alloca [4 x float], align 16
  %13 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 6144, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 3584, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %14 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !109
  %16 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !111
  %18 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !112
  %20 = and i32 %19, 294912
  %21 = icmp ne i32 %20, 32768
  %22 = and i32 %19, 786432
  %23 = icmp eq i32 %22, 786432
  call void @zbuf_make_winmat(ptr noundef nonnull @R, ptr noundef nonnull %8) #19
  %24 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %25 = call i16 @llvm.umax.i16(i16 %24, i16 1)
  %26 = sext i16 %25 to i32
  %27 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 19
  %28 = load i16, ptr %27, align 8, !tbaa !113
  %29 = sext i16 %28 to i32
  %30 = sub nsw i32 %26, %29
  %31 = call i32 @llvm.smin.i32(i32 %30, i32 4)
  %32 = icmp sgt i32 %30, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %4
  %34 = add nsw i32 %31, -1
  %35 = call i32 @llvm.smax.i32(i32 %31, i32 1)
  %36 = zext i32 %34 to i64
  br label %159

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %39 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %40 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %41 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %42 = add nsw i32 %31, -1
  %43 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 4
  %44 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  %45 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 7
  %46 = zext i32 %42 to i64
  %47 = call i32 @llvm.smax.i32(i32 %31, i32 1)
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %46, i32 19
  %50 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %46, i32 16
  %51 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %46, i32 16
  br label %52

52:                                               ; preds = %37, %144
  %53 = phi i64 [ 0, %37 ], [ %157, %144 ]
  %54 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %53
  %55 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !115
  %56 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !116
  call fastcc void @zbuffer_part_bounds(i32 noundef %55, i32 noundef %56, ptr noundef nonnull %0, ptr noundef nonnull %9) #19
  %57 = load i32, ptr %38, align 8, !tbaa !117
  %58 = load i32, ptr %39, align 4, !tbaa !118
  %59 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 19), align 4, !tbaa !119
  call void @zbuf_alloc_span(ptr noundef nonnull %54, i32 noundef %57, i32 noundef %58, float noundef %59) #19
  %60 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %53, i32 12
  %61 = load <2 x i32>, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !46
  %62 = sitofp <2 x i32> %61 to <2 x float>
  %63 = fmul <2 x float> %62, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %63, ptr %60, align 8, !tbaa !49
  %64 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !120
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %52
  %67 = load i32, ptr %40, align 8, !tbaa !121
  %68 = load i16, ptr %27, align 8, !tbaa !113
  %69 = sext i16 %68 to i64
  %70 = add i64 %53, %69
  %71 = shl i64 %70, 32
  %72 = ashr exact i64 %71, 32
  %73 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %72
  %74 = load i32, ptr %41, align 8, !tbaa !122
  %75 = insertelement <2 x i32> poison, i32 %67, i64 0
  %76 = insertelement <2 x i32> %75, i32 %74, i64 1
  %77 = sub nsw <2 x i32> zeroinitializer, %76
  %78 = sitofp <2 x i32> %77 to <2 x float>
  %79 = load <2 x float>, ptr %73, align 8, !tbaa !49
  %80 = fsub <2 x float> %78, %79
  br label %104

81:                                               ; preds = %52
  %82 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 98, i32 8), align 2, !tbaa !123
  %83 = icmp eq i16 %82, 0
  %84 = load i32, ptr %40, align 8, !tbaa !121
  %85 = sub nsw i32 0, %84
  %86 = sitofp i32 %85 to float
  br i1 %83, label %98, label %87

87:                                               ; preds = %81
  %88 = sext i16 %82 to i64
  %89 = add nsw i64 %88, -1
  %90 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 40, i64 %89
  %91 = load i32, ptr %41, align 8, !tbaa !122
  %92 = sub nsw i32 0, %91
  %93 = sitofp i32 %92 to float
  %94 = load <2 x float>, ptr %90, align 8, !tbaa !49
  %95 = insertelement <2 x float> poison, float %86, i64 0
  %96 = insertelement <2 x float> %95, float %93, i64 1
  %97 = fsub <2 x float> %96, %94
  br label %104

98:                                               ; preds = %81
  %99 = load i32, ptr %41, align 8, !tbaa !122
  %100 = sub nsw i32 0, %99
  %101 = sitofp i32 %100 to float
  %102 = insertelement <2 x float> poison, float %86, i64 0
  %103 = insertelement <2 x float> %102, float %101, i64 1
  br label %104

104:                                              ; preds = %87, %98, %66
  %105 = phi <2 x float> [ %97, %87 ], [ %103, %98 ], [ %80, %66 ]
  %106 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %53, i32 14
  %107 = fadd <2 x float> %105, <float -5.000000e-01, float -5.000000e-01>
  store <2 x float> %107, ptr %106, align 16, !tbaa !49
  %108 = icmp eq i64 %53, %46
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load <2 x ptr>, ptr %43, align 8, !tbaa !42
  %111 = shufflevector <2 x ptr> %110, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %111, ptr %49, align 16, !tbaa !42
  br i1 %23, label %112, label %114

112:                                              ; preds = %109
  %113 = load ptr, ptr %45, align 8, !tbaa !124
  store ptr %113, ptr %51, align 8, !tbaa !125
  br label %144

114:                                              ; preds = %109
  %115 = load ptr, ptr %44, align 8, !tbaa !126
  store ptr %115, ptr %50, align 8, !tbaa !125
  br label %144

116:                                              ; preds = %104
  %117 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %118 = load i32, ptr %38, align 8, !tbaa !117
  %119 = sext i32 %118 to i64
  %120 = shl nsw i64 %119, 2
  %121 = load i32, ptr %39, align 4, !tbaa !118
  %122 = sext i32 %121 to i64
  %123 = mul i64 %120, %122
  %124 = call ptr %117(i64 noundef %123, ptr noundef nonnull @.str.1) #17
  %125 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %53, i32 20
  store ptr %124, ptr %125, align 8, !tbaa !127
  %126 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %127 = load i32, ptr %38, align 8, !tbaa !117
  %128 = sext i32 %127 to i64
  %129 = shl nsw i64 %128, 2
  %130 = load i32, ptr %39, align 4, !tbaa !118
  %131 = sext i32 %130 to i64
  %132 = mul i64 %129, %131
  %133 = call ptr %126(i64 noundef %132, ptr noundef nonnull @.str.2) #17
  %134 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %53, i32 19
  store ptr %133, ptr %134, align 16, !tbaa !128
  %135 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %136 = load i32, ptr %38, align 8, !tbaa !117
  %137 = sext i32 %136 to i64
  %138 = shl nsw i64 %137, 2
  %139 = load i32, ptr %39, align 4, !tbaa !118
  %140 = sext i32 %139 to i64
  %141 = mul i64 %138, %140
  %142 = call ptr %135(i64 noundef %141, ptr noundef nonnull @.str.3) #17
  %143 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %53, i32 16
  store ptr %142, ptr %143, align 8, !tbaa !125
  br label %144

144:                                              ; preds = %112, %114, %116
  %145 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %53, i32 16
  %146 = load ptr, ptr %145, align 8, !tbaa !125
  %147 = load i32, ptr %38, align 8, !tbaa !117
  %148 = load i32, ptr %39, align 4, !tbaa !118
  call void @fillrect(ptr noundef %146, i32 noundef %147, i32 noundef %148, i32 noundef 2147483647) #19
  %149 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %53, i32 19
  %150 = load ptr, ptr %149, align 16, !tbaa !128
  %151 = load i32, ptr %38, align 8, !tbaa !117
  %152 = load i32, ptr %39, align 4, !tbaa !118
  call void @fillrect(ptr noundef %150, i32 noundef %151, i32 noundef %152, i32 noundef 0) #19
  %153 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %53, i32 20
  %154 = load ptr, ptr %153, align 8, !tbaa !127
  %155 = load i32, ptr %38, align 8, !tbaa !117
  %156 = load i32, ptr %39, align 4, !tbaa !118
  call void @fillrect(ptr noundef %154, i32 noundef %155, i32 noundef %156, i32 noundef 0) #19
  %157 = add nuw nsw i64 %53, 1
  %158 = icmp eq i64 %157, %48
  br i1 %158, label %159, label %52, !llvm.loop !129

159:                                              ; preds = %144, %33
  %160 = phi i64 [ %36, %33 ], [ %46, %144 ]
  %161 = phi i32 [ %35, %33 ], [ %47, %144 ]
  %162 = load i32, ptr %18, align 8, !tbaa !112
  %163 = lshr i32 %162, 18
  %164 = trunc i32 %163 to i16
  %165 = and i16 %164, 1
  %166 = or i32 %17, %15
  %167 = icmp slt i32 %30, 1
  %168 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %169 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %170 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  %171 = zext nneg i32 %161 to i64
  %172 = zext nneg i32 %161 to i64
  %173 = zext nneg i32 %161 to i64
  %174 = add nuw nsw i64 %171, 1
  %175 = and i64 %174, 4294967294
  %176 = add nsw i64 %171, -1
  %177 = insertelement <2 x i64> poison, i64 %176, i64 0
  %178 = shufflevector <2 x i64> %177, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %179

179:                                              ; preds = %159, %460
  %180 = phi ptr [ null, %159 ], [ %422, %460 ]
  %181 = phi i16 [ %165, %159 ], [ %461, %460 ]
  %182 = phi i16 [ 0, %159 ], [ %421, %460 ]
  %183 = phi i16 [ 0, %159 ], [ %420, %460 ]
  %184 = phi i16 [ 0, %159 ], [ %419, %460 ]
  %185 = phi i32 [ 0, %159 ], [ %418, %460 ]
  br i1 %32, label %186, label %194

186:                                              ; preds = %179
  %187 = icmp ne i16 %181, 0
  %188 = and i1 %23, %187
  %189 = select i1 %188, ptr @zbuffillGLinv4, ptr @zbuffillGL4
  br label %201

190:                                              ; preds = %460
  br i1 %32, label %191, label %491

191:                                              ; preds = %190
  %192 = icmp eq ptr %2, null
  %193 = zext nneg i32 %161 to i64
  br label %463

194:                                              ; preds = %201, %179
  %195 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 70), align 8, !tbaa !42
  %196 = icmp eq ptr %195, null
  br i1 %196, label %417, label %197

197:                                              ; preds = %194
  %198 = icmp eq i16 %181, 0
  %199 = icmp ne i16 %181, 0
  %200 = and i1 %23, %199
  br label %207

201:                                              ; preds = %186, %201
  %202 = phi i64 [ 0, %186 ], [ %205, %201 ]
  %203 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %202, i32 34
  store ptr %189, ptr %203, align 16
  %204 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %202, i32 35
  store ptr @zbufline, ptr %204, align 8, !tbaa !61
  %205 = add nuw nsw i64 %202, 1
  %206 = icmp eq i64 %205, %171
  br i1 %206, label %194, label %201, !llvm.loop !130

207:                                              ; preds = %197, %407
  %208 = phi ptr [ %195, %197 ], [ %415, %407 ]
  %209 = phi ptr [ %180, %197 ], [ %413, %407 ]
  %210 = phi i16 [ %182, %197 ], [ %412, %407 ]
  %211 = phi i16 [ %183, %197 ], [ %411, %407 ]
  %212 = phi i16 [ %184, %197 ], [ %410, %407 ]
  %213 = phi i32 [ %185, %197 ], [ %409, %407 ]
  %214 = phi i32 [ 0, %197 ], [ %414, %407 ]
  %215 = phi ptr [ null, %197 ], [ %408, %407 ]
  %216 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %208, i64 0, i32 2
  %217 = load ptr, ptr %216, align 8, !tbaa !131
  br i1 %198, label %223, label %218

218:                                              ; preds = %207
  %219 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %208, i64 0, i32 7
  %220 = load i32, ptr %219, align 8, !tbaa !133
  %221 = and i32 %220, %17
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %407, label %229

223:                                              ; preds = %207
  br i1 %21, label %224, label %229

224:                                              ; preds = %223
  %225 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %208, i64 0, i32 7
  %226 = load i32, ptr %225, align 8, !tbaa !133
  %227 = and i32 %226, %166
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %407, label %229

229:                                              ; preds = %223, %224, %218
  %230 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %208, i64 0, i32 11
  %231 = load i16, ptr %230, align 8, !tbaa !134
  %232 = and i16 %231, 3
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %208, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %235) #17
  br label %237

236:                                              ; preds = %229
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %8) #17
  br label %237

237:                                              ; preds = %236, %234
  %238 = load ptr, ptr %216, align 8, !tbaa !131
  %239 = getelementptr inbounds %struct.ObjectRen, ptr %238, i64 0, i32 9
  %240 = call i32 @clip_render_object(ptr noundef nonnull %239, ptr noundef nonnull %9, ptr noundef nonnull %7) #17
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %407

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.ObjectRen, ptr %217, i64 0, i32 10
  %244 = load i32, ptr %243, align 8, !tbaa !135
  call fastcc void @zbuf_project_cache_clear(ptr noundef nonnull %5, i32 noundef %244) #19
  %245 = getelementptr inbounds %struct.ObjectRen, ptr %217, i64 0, i32 11
  %246 = load i32, ptr %245, align 4, !tbaa !137
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %407

248:                                              ; preds = %242
  %249 = getelementptr inbounds %struct.ObjectRen, ptr %217, i64 0, i32 19
  %250 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %208, i64 0, i32 7
  br label %251

251:                                              ; preds = %248, %402
  %252 = phi ptr [ %209, %248 ], [ %270, %402 ]
  %253 = phi i16 [ %210, %248 ], [ %330, %402 ]
  %254 = phi i16 [ %211, %248 ], [ %329, %402 ]
  %255 = phi i16 [ %212, %248 ], [ %328, %402 ]
  %256 = phi i32 [ %213, %248 ], [ %403, %402 ]
  %257 = phi i32 [ 0, %248 ], [ %404, %402 ]
  %258 = phi ptr [ %215, %248 ], [ %327, %402 ]
  %259 = and i32 %257, 255
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %251
  %262 = load ptr, ptr %249, align 8, !tbaa !138
  %263 = lshr exact i32 %257, 8
  %264 = zext nneg i32 %263 to i64
  %265 = getelementptr inbounds %struct.VlakTableNode, ptr %262, i64 %264
  %266 = load ptr, ptr %265, align 8, !tbaa !139
  br label %269

267:                                              ; preds = %251
  %268 = getelementptr inbounds %struct.VlakRen, ptr %252, i64 1
  br label %269

269:                                              ; preds = %267, %261
  %270 = phi ptr [ %266, %261 ], [ %268, %267 ]
  %271 = load i32, ptr %250, align 8, !tbaa !133
  %272 = and i32 %271, %15
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %320, label %274

274:                                              ; preds = %269
  %275 = getelementptr inbounds %struct.VlakRen, ptr %270, i64 0, i32 5
  %276 = load ptr, ptr %275, align 8, !tbaa !141
  %277 = icmp eq ptr %276, %258
  br i1 %277, label %326, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.Material, ptr %276, i64 0, i32 51
  %280 = load i32, ptr %279, align 4, !tbaa !143
  %281 = and i32 %280, 8192
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %278
  %284 = and i32 %280, 65536
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %289, label %286

286:                                              ; preds = %283
  %287 = and i32 %280, 64
  %288 = icmp ne i32 %287, 0
  br label %289

289:                                              ; preds = %283, %286, %278
  %290 = phi i1 [ true, %278 ], [ false, %283 ], [ %288, %286 ]
  %291 = zext i1 %290 to i16
  %292 = trunc i32 %280 to i16
  %293 = and i16 %292, 512
  %294 = getelementptr inbounds %struct.Material, ptr %276, i64 0, i32 2
  %295 = load i16, ptr %294, align 8, !tbaa !147
  %296 = icmp eq i16 %295, 3
  %297 = zext i1 %296 to i16
  br i1 %32, label %298, label %326

298:                                              ; preds = %289
  %299 = and i32 %280, 256
  %300 = icmp ne i32 %299, 0
  %301 = select i1 %300, i1 true, i1 %200
  %302 = select i1 %301, ptr @zbuffillGLinv4, ptr @zbuffillGL4
  %303 = select i1 %301, ptr @zbuffillGLinv4, ptr @zbuffillGL4
  br label %304

304:                                              ; preds = %316, %298
  %305 = phi i64 [ 0, %298 ], [ %317, %316 ]
  %306 = phi <2 x i64> [ <i64 0, i64 1>, %298 ], [ %318, %316 ]
  %307 = icmp ule <2 x i64> %306, %178
  %308 = extractelement <2 x i1> %307, i64 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %304
  %310 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %305, i32 34
  store ptr %302, ptr %310, align 16
  br label %311

311:                                              ; preds = %309, %304
  %312 = extractelement <2 x i1> %307, i64 1
  br i1 %312, label %313, label %316

313:                                              ; preds = %311
  %314 = or disjoint i64 %305, 1
  %315 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %314, i32 34
  store ptr %303, ptr %315, align 16
  br label %316

316:                                              ; preds = %313, %311
  %317 = add i64 %305, 2
  %318 = add <2 x i64> %306, <i64 2, i64 2>
  %319 = icmp eq i64 %317, %175
  br i1 %319, label %326, label %304, !llvm.loop !148

320:                                              ; preds = %269
  %321 = and i32 %271, %17
  %322 = icmp eq i32 %321, 0
  %323 = select i1 %21, i1 %322, i1 false
  %324 = zext i1 %323 to i16
  %325 = select i1 %323, i16 %254, i16 1
  br label %326

326:                                              ; preds = %316, %289, %320, %274
  %327 = phi ptr [ %258, %274 ], [ null, %320 ], [ %276, %289 ], [ %276, %316 ]
  %328 = phi i16 [ %255, %274 ], [ %324, %320 ], [ %291, %289 ], [ %291, %316 ]
  %329 = phi i16 [ %254, %274 ], [ %325, %320 ], [ %293, %289 ], [ %293, %316 ]
  %330 = phi i16 [ %253, %274 ], [ %253, %320 ], [ %297, %289 ], [ %297, %316 ]
  %331 = getelementptr inbounds %struct.VlakRen, ptr %270, i64 0, i32 7
  %332 = load i8, ptr %331, align 1, !tbaa !151
  %333 = and i8 %332, 2
  %334 = icmp eq i8 %333, 0
  %335 = icmp eq i16 %328, 0
  %336 = select i1 %334, i1 %335, i1 false
  br i1 %336, label %337, label %402

337:                                              ; preds = %326
  %338 = load ptr, ptr %270, align 8, !tbaa !152
  %339 = getelementptr inbounds %struct.VlakRen, ptr %270, i64 0, i32 1
  %340 = load ptr, ptr %339, align 8, !tbaa !153
  %341 = getelementptr inbounds %struct.VlakRen, ptr %270, i64 0, i32 2
  %342 = load ptr, ptr %341, align 8, !tbaa !154
  %343 = getelementptr inbounds %struct.VlakRen, ptr %270, i64 0, i32 3
  %344 = load ptr, ptr %343, align 8, !tbaa !155
  %345 = getelementptr inbounds %struct.VertRen, ptr %338, i64 0, i32 5
  %346 = load i32, ptr %345, align 8, !tbaa !156
  %347 = call fastcc i32 @zbuf_part_project(ptr noundef nonnull %5, i32 noundef %346, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %338, ptr noundef nonnull %10) #19
  %348 = getelementptr inbounds %struct.VertRen, ptr %340, i64 0, i32 5
  %349 = load i32, ptr %348, align 8, !tbaa !156
  %350 = call fastcc i32 @zbuf_part_project(ptr noundef nonnull %5, i32 noundef %349, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %340, ptr noundef nonnull %11) #19
  %351 = getelementptr inbounds %struct.VertRen, ptr %342, i64 0, i32 5
  %352 = load i32, ptr %351, align 8, !tbaa !156
  %353 = call fastcc i32 @zbuf_part_project(ptr noundef nonnull %5, i32 noundef %352, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %342, ptr noundef nonnull %12) #19
  %354 = and i32 %350, %347
  %355 = and i32 %354, %353
  %356 = icmp eq ptr %344, null
  br i1 %356, label %362, label %357

357:                                              ; preds = %337
  %358 = getelementptr inbounds %struct.VertRen, ptr %344, i64 0, i32 5
  %359 = load i32, ptr %358, align 8, !tbaa !156
  %360 = call fastcc i32 @zbuf_part_project(ptr noundef nonnull %5, i32 noundef %359, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %344, ptr noundef nonnull %13) #19
  %361 = and i32 %360, %355
  br label %362

362:                                              ; preds = %357, %337
  %363 = phi i32 [ %360, %357 ], [ %256, %337 ]
  %364 = phi i32 [ %361, %357 ], [ %355, %337 ]
  %365 = and i32 %364, 65535
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %402

367:                                              ; preds = %362
  %368 = icmp eq i16 %329, 0
  %369 = add nuw nsw i32 %257, 1
  %370 = select i1 %368, i32 %369, i32 -1
  %371 = call i32 @testclip(ptr noundef nonnull %10) #19, !range !65
  %372 = call i32 @testclip(ptr noundef nonnull %11) #19, !range !65
  %373 = call i32 @testclip(ptr noundef nonnull %12) #19, !range !65
  br i1 %356, label %376, label %374

374:                                              ; preds = %367
  %375 = call i32 @testclip(ptr noundef nonnull %13) #19, !range !65
  br label %376

376:                                              ; preds = %374, %367
  %377 = phi i32 [ %375, %374 ], [ %363, %367 ]
  br i1 %32, label %378, label %402

378:                                              ; preds = %376
  %379 = icmp eq i16 %330, 0
  %380 = getelementptr inbounds %struct.VlakRen, ptr %270, i64 0, i32 8
  %381 = add nuw nsw i32 %257, 134217729
  %382 = select i1 %368, i32 %381, i32 -1
  br label %383

383:                                              ; preds = %378, %399
  %384 = phi i64 [ 0, %378 ], [ %400, %399 ]
  %385 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %384
  br i1 %379, label %391, label %386

386:                                              ; preds = %383
  %387 = load i8, ptr %380, align 2, !tbaa !158
  %388 = zext i8 %387 to i32
  br i1 %356, label %390, label %389

389:                                              ; preds = %386
  call void @zbufclipwire(ptr noundef nonnull %385, i32 noundef %214, i32 noundef %370, i32 noundef %388, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %371, i32 noundef %372, i32 noundef %373, i32 noundef %377) #19
  br label %399

390:                                              ; preds = %386
  call void @zbufclipwire(ptr noundef nonnull %385, i32 noundef %214, i32 noundef %370, i32 noundef %388, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef null, i32 noundef %371, i32 noundef %372, i32 noundef %373, i32 noundef 0) #19
  br label %399

391:                                              ; preds = %383
  br i1 %356, label %398, label %392

392:                                              ; preds = %391
  %393 = load i8, ptr %331, align 1, !tbaa !151
  %394 = and i8 %393, 4
  %395 = icmp eq i8 %394, 0
  br i1 %395, label %397, label %396

396:                                              ; preds = %392
  call void @zbufclip4(ptr noundef nonnull %385, i32 noundef %214, i32 noundef %370, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %371, i32 noundef %372, i32 noundef %373, i32 noundef %377) #19
  br label %399

397:                                              ; preds = %392
  call void @zbufclip(ptr noundef nonnull %385, i32 noundef %214, i32 noundef %370, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef %371, i32 noundef %372, i32 noundef %373) #19
  call void @zbufclip(ptr noundef nonnull %385, i32 noundef %214, i32 noundef %382, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %371, i32 noundef %373, i32 noundef %377) #19
  br label %399

398:                                              ; preds = %391
  call void @zbufclip(ptr noundef nonnull %385, i32 noundef %214, i32 noundef %370, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef %371, i32 noundef %372, i32 noundef %373) #19
  br label %399

399:                                              ; preds = %398, %390, %389, %397, %396
  %400 = add nuw nsw i64 %384, 1
  %401 = icmp eq i64 %400, %172
  br i1 %401, label %402, label %383, !llvm.loop !159

402:                                              ; preds = %399, %376, %362, %326
  %403 = phi i32 [ %256, %326 ], [ %363, %362 ], [ %377, %376 ], [ %377, %399 ]
  %404 = add nuw nsw i32 %257, 1
  %405 = load i32, ptr %245, align 4, !tbaa !137
  %406 = icmp slt i32 %404, %405
  br i1 %406, label %251, label %407, !llvm.loop !160

407:                                              ; preds = %402, %242, %237, %224, %218
  %408 = phi ptr [ %215, %218 ], [ %215, %237 ], [ %215, %224 ], [ %215, %242 ], [ %327, %402 ]
  %409 = phi i32 [ %213, %218 ], [ %213, %237 ], [ %213, %224 ], [ %213, %242 ], [ %403, %402 ]
  %410 = phi i16 [ %212, %218 ], [ %212, %237 ], [ %212, %224 ], [ %212, %242 ], [ %328, %402 ]
  %411 = phi i16 [ %211, %218 ], [ %211, %237 ], [ %211, %224 ], [ %211, %242 ], [ %329, %402 ]
  %412 = phi i16 [ %210, %218 ], [ %210, %237 ], [ %210, %224 ], [ %210, %242 ], [ %330, %402 ]
  %413 = phi ptr [ %209, %218 ], [ %209, %237 ], [ %209, %224 ], [ %209, %242 ], [ %270, %402 ]
  %414 = add nuw nsw i32 %214, 1
  %415 = load ptr, ptr %208, align 8, !tbaa !42
  %416 = icmp eq ptr %415, null
  br i1 %416, label %417, label %207, !llvm.loop !161

417:                                              ; preds = %407, %194
  %418 = phi i32 [ %185, %194 ], [ %409, %407 ]
  %419 = phi i16 [ %184, %194 ], [ %410, %407 ]
  %420 = phi i16 [ %183, %194 ], [ %411, %407 ]
  %421 = phi i16 [ %182, %194 ], [ %412, %407 ]
  %422 = phi ptr [ %180, %194 ], [ %413, %407 ]
  %423 = icmp eq i16 %181, 0
  %424 = or i1 %423, %167
  br i1 %424, label %460, label %425

425:                                              ; preds = %417, %457
  %426 = phi i64 [ %458, %457 ], [ 0, %417 ]
  %427 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %426, i32 16
  %428 = load ptr, ptr %427, align 8, !tbaa !125
  br i1 %23, label %429, label %452

429:                                              ; preds = %425
  %430 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %426, i32 21
  store ptr %428, ptr %430, align 16, !tbaa !162
  %431 = icmp eq i64 %426, %160
  br i1 %431, label %432, label %434

432:                                              ; preds = %429
  %433 = load ptr, ptr %170, align 8, !tbaa !126
  br label %443

434:                                              ; preds = %429
  %435 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %436 = load i32, ptr %168, align 8, !tbaa !117
  %437 = sext i32 %436 to i64
  %438 = shl nsw i64 %437, 2
  %439 = load i32, ptr %169, align 4, !tbaa !118
  %440 = sext i32 %439 to i64
  %441 = mul i64 %438, %440
  %442 = call ptr %435(i64 noundef %441, ptr noundef nonnull @.str.3) #17
  br label %443

443:                                              ; preds = %434, %432
  %444 = phi ptr [ %442, %434 ], [ %433, %432 ]
  store ptr %444, ptr %427, align 8, !tbaa !125
  %445 = load i32, ptr %168, align 8, !tbaa !117
  %446 = load i32, ptr %169, align 4, !tbaa !118
  call void @fillrect(ptr noundef %444, i32 noundef %445, i32 noundef %446, i32 noundef 2147483647) #19
  %447 = load ptr, ptr %430, align 16, !tbaa !162
  %448 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %426, i32 19
  %449 = load ptr, ptr %448, align 16, !tbaa !128
  %450 = load i32, ptr %168, align 8, !tbaa !117
  %451 = load i32, ptr %169, align 4, !tbaa !118
  call fastcc void @zmask_rect(ptr noundef %447, ptr noundef %449, i32 noundef %450, i32 noundef %451, i32 noundef 1) #19
  br label %457

452:                                              ; preds = %425
  %453 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %426, i32 19
  %454 = load ptr, ptr %453, align 16, !tbaa !128
  %455 = load i32, ptr %168, align 8, !tbaa !117
  %456 = load i32, ptr %169, align 4, !tbaa !118
  call fastcc void @zmask_rect(ptr noundef %428, ptr noundef %454, i32 noundef %455, i32 noundef %456, i32 noundef 0) #19
  br label %457

457:                                              ; preds = %443, %452
  %458 = add nuw nsw i64 %426, 1
  %459 = icmp eq i64 %458, %173
  br i1 %459, label %460, label %425, !llvm.loop !163

460:                                              ; preds = %457, %417
  %461 = add nsw i16 %181, -1
  %462 = icmp sgt i16 %181, 0
  br i1 %462, label %179, label %190, !llvm.loop !164

463:                                              ; preds = %191, %488
  %464 = phi i64 [ 0, %191 ], [ %489, %488 ]
  %465 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %464
  br i1 %192, label %471, label %466

466:                                              ; preds = %463
  %467 = load i16, ptr %27, align 8, !tbaa !113
  %468 = sext i16 %467 to i32
  %469 = trunc i64 %464 to i32
  %470 = add nsw i32 %469, %468
  call void %2(ptr noundef %0, ptr noundef nonnull %465, i32 noundef %470, ptr noundef %3) #17
  br label %471

471:                                              ; preds = %466, %463
  %472 = icmp eq i64 %464, %160
  br i1 %472, label %488, label %473

473:                                              ; preds = %471
  %474 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  %475 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %464, i32 16
  %476 = load ptr, ptr %475, align 8, !tbaa !125
  call void %474(ptr noundef %476) #17
  %477 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  %478 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %464, i32 19
  %479 = load ptr, ptr %478, align 16, !tbaa !128
  call void %477(ptr noundef %479) #17
  %480 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  %481 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %464, i32 20
  %482 = load ptr, ptr %481, align 8, !tbaa !127
  call void %480(ptr noundef %482) #17
  %483 = getelementptr inbounds [16 x %struct.ZSpan], ptr %6, i64 0, i64 %464, i32 21
  %484 = load ptr, ptr %483, align 16, !tbaa !162
  %485 = icmp eq ptr %484, null
  br i1 %485, label %488, label %486

486:                                              ; preds = %473
  %487 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %487(ptr noundef nonnull %484) #17
  br label %488

488:                                              ; preds = %473, %486, %471
  call void @zbuf_free_span(ptr noundef nonnull %465) #19
  %489 = add nuw nsw i64 %464, 1
  %490 = icmp eq i64 %489, %193
  br i1 %490, label %491, label %463, !llvm.loop !165

491:                                              ; preds = %488, %190
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 3584, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 6144, ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @zbuffer_part_bounds(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #6 !PGOFuncName !166 {
  %5 = getelementptr inbounds %struct.RenderPart, ptr %2, i64 0, i32 13
  %6 = load i32, ptr %5, align 8, !tbaa !121
  %7 = insertelement <2 x i32> poison, i32 %0, i64 0
  %8 = insertelement <2 x i32> %7, i32 %1, i64 1
  %9 = xor <2 x i32> %8, <i32 -1, i32 -1>
  %10 = sitofp <2 x i32> %8 to <2 x float>
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %12 = getelementptr inbounds %struct.RenderPart, ptr %2, i64 0, i32 13, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !167
  %14 = shl nsw i32 %13, 1
  %15 = getelementptr inbounds %struct.RenderPart, ptr %2, i64 0, i32 13, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !122
  %17 = getelementptr inbounds %struct.RenderPart, ptr %2, i64 0, i32 13, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !168
  %19 = shl nsw i32 %18, 1
  %20 = insertelement <4 x i32> poison, i32 %6, i64 0
  %21 = insertelement <4 x i32> %20, i32 %14, i64 1
  %22 = insertelement <4 x i32> %21, i32 %16, i64 2
  %23 = insertelement <4 x i32> %22, i32 %19, i64 3
  %24 = shufflevector <2 x i32> %8, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %25 = shufflevector <4 x i32> <i32 1, i32 poison, i32 1, i32 poison>, <4 x i32> %24, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %26 = shl nsw <4 x i32> %23, %25
  %27 = sub <4 x i32> %23, %25
  %28 = shufflevector <4 x i32> %26, <4 x i32> %27, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %29 = shufflevector <2 x i32> %9, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %30 = shufflevector <4 x i32> %29, <4 x i32> <i32 poison, i32 1, i32 poison, i32 1>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %31 = add <4 x i32> %28, %30
  %32 = sitofp <4 x i32> %31 to <4 x float>
  %33 = fdiv <4 x float> %32, %11
  store <4 x float> %33, ptr %3, align 4, !tbaa !49
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @zbuffillGLinv4(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #7 !PGOFuncName !169 {
  tail call fastcc void @zbuf_init_span(ptr noundef %0) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %3, ptr noundef %4) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %4, ptr noundef %5) #19
  %8 = icmp eq ptr %6, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %6) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %3) #19
  br label %11

10:                                               ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %5, ptr noundef %3) #19
  br label %11

11:                                               ; preds = %10, %9
  %12 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = icmp eq ptr %13, null
  br i1 %14, label %184, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = icmp eq ptr %17, null
  br i1 %18, label %184, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !68
  %22 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !69
  %24 = tail call i32 @llvm.smax.i32(i32 %21, i32 %23)
  %25 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !70
  %27 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 5
  %28 = load i32, ptr %27, align 4, !tbaa !71
  %29 = tail call i32 @llvm.smin.i32(i32 %26, i32 %28)
  %30 = icmp slt i32 %29, %24
  br i1 %30, label %184, label %31

31:                                               ; preds = %19
  %32 = load float, ptr %3, align 4, !tbaa !49
  %33 = load float, ptr %4, align 4, !tbaa !49
  %34 = fsub float %32, %33
  %35 = load float, ptr %5, align 4, !tbaa !49
  %36 = fsub float %33, %35
  %37 = getelementptr inbounds float, ptr %3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !49
  %39 = getelementptr inbounds float, ptr %4, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !49
  %41 = fsub float %38, %40
  %42 = getelementptr inbounds float, ptr %5, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !49
  %44 = fsub float %40, %43
  %45 = fneg float %41
  %46 = fmul float %36, %45
  %47 = tail call float @llvm.fmuladd.f32(float %34, float %44, float %46)
  %48 = fcmp oeq float %47, 0.000000e+00
  br i1 %48, label %184, label %49

49:                                               ; preds = %31
  %50 = getelementptr inbounds float, ptr %3, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !49
  %52 = getelementptr inbounds float, ptr %4, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !49
  %54 = fsub float %51, %53
  %55 = getelementptr inbounds float, ptr %5, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !49
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
  %68 = fpext float %60 to double
  %69 = fneg double %68
  %70 = fdiv double %69, %66
  %71 = load i32, ptr %0, align 8, !tbaa !34
  %72 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  %73 = load ptr, ptr %72, align 8, !tbaa !43
  %74 = add nsw i32 %29, %24
  %75 = sdiv i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, ptr %73, i64 %76
  %78 = load float, ptr %77, align 4, !tbaa !49
  %79 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  %80 = load ptr, ptr %79, align 8, !tbaa !44
  %81 = getelementptr inbounds float, ptr %80, i64 %76
  %82 = load float, ptr %81, align 4, !tbaa !49
  %83 = fcmp olt float %78, %82
  %84 = sext i32 %29 to i64
  %85 = getelementptr inbounds float, ptr %80, i64 %84
  %86 = getelementptr inbounds float, ptr %73, i64 %84
  %87 = select i1 %83, ptr %85, ptr %86
  %88 = select i1 %83, ptr %86, ptr %85
  %89 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 21
  %90 = load ptr, ptr %89, align 8, !tbaa !162
  %91 = mul nsw i32 %71, %29
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, ptr %90, i64 %92
  %94 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 20
  %95 = load ptr, ptr %94, align 8, !tbaa !127
  %96 = getelementptr inbounds i32, ptr %95, i64 %92
  %97 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 19
  %98 = load ptr, ptr %97, align 8, !tbaa !128
  %99 = getelementptr inbounds i32, ptr %98, i64 %92
  %100 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 16
  %101 = load ptr, ptr %100, align 8, !tbaa !125
  %102 = getelementptr inbounds i32, ptr %101, i64 %92
  %103 = sitofp i32 %29 to double
  %104 = fmul float %38, %60
  %105 = tail call float @llvm.fmuladd.f32(float %63, float %32, float %104)
  %106 = fdiv float %105, %47
  %107 = fadd float %51, %106
  %108 = fpext float %107 to double
  %109 = tail call double @llvm.fmuladd.f64(double %103, double %70, double %108)
  %110 = add nsw i32 %71, -1
  %111 = icmp eq ptr %90, null
  %112 = sext i32 %71 to i64
  %113 = sub nsw i64 0, %112
  br label %114

114:                                              ; preds = %49, %174
  %115 = phi double [ %109, %49 ], [ %175, %174 ]
  %116 = phi ptr [ %102, %49 ], [ %176, %174 ]
  %117 = phi i32 [ %29, %49 ], [ %180, %174 ]
  %118 = phi ptr [ %93, %49 ], [ %179, %174 ]
  %119 = phi ptr [ %99, %49 ], [ %177, %174 ]
  %120 = phi ptr [ %96, %49 ], [ %178, %174 ]
  %121 = phi ptr [ %87, %49 ], [ %182, %174 ]
  %122 = phi ptr [ %88, %49 ], [ %181, %174 ]
  %123 = load float, ptr %122, align 4, !tbaa !49
  %124 = tail call float @llvm.floor.f32(float %123)
  %125 = fptosi float %124 to i32
  %126 = load float, ptr %121, align 4, !tbaa !49
  %127 = tail call float @llvm.floor.f32(float %126)
  %128 = fptosi float %127 to i32
  %129 = icmp sgt i32 %71, %128
  %130 = select i1 %129, i32 %128, i32 %110
  %131 = tail call i32 @llvm.smax.i32(i32 %125, i32 -1)
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %174

133:                                              ; preds = %114
  %134 = add nsw i32 %131, 1
  %135 = sub nsw i32 %130, %134
  %136 = icmp sgt i32 %135, -1
  br i1 %136, label %137, label %174

137:                                              ; preds = %133
  %138 = zext nneg i32 %134 to i64
  %139 = getelementptr inbounds i32, ptr %118, i64 %138
  %140 = getelementptr inbounds i32, ptr %120, i64 %138
  %141 = getelementptr inbounds i32, ptr %119, i64 %138
  %142 = getelementptr inbounds i32, ptr %116, i64 %138
  %143 = sitofp i32 %134 to double
  %144 = tail call double @llvm.fmuladd.f64(double %143, double %67, double %115)
  br label %145

145:                                              ; preds = %137, %166
  %146 = phi double [ %167, %166 ], [ %144, %137 ]
  %147 = phi i32 [ %172, %166 ], [ %135, %137 ]
  %148 = phi ptr [ %168, %166 ], [ %142, %137 ]
  %149 = phi ptr [ %171, %166 ], [ %139, %137 ]
  %150 = phi ptr [ %169, %166 ], [ %141, %137 ]
  %151 = phi ptr [ %170, %166 ], [ %140, %137 ]
  %152 = fcmp olt double %146, 0xC1E0000000000000
  %153 = fcmp ogt double %146, 0x41DFFFFFFFC00000
  %154 = select i1 %153, double 0x41DFFFFFFFC00000, double %146
  %155 = select i1 %152, double 0xC1E0000000000000, double %154
  %156 = fptosi double %155 to i32
  %157 = load i32, ptr %148, align 4, !tbaa !46
  %158 = icmp slt i32 %157, %156
  %159 = icmp eq i32 %157, 2147483647
  %160 = or i1 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %145
  br i1 %111, label %165, label %162

162:                                              ; preds = %161
  %163 = load i32, ptr %149, align 4, !tbaa !46
  %164 = icmp slt i32 %163, %156
  br i1 %164, label %165, label %166

165:                                              ; preds = %162, %161
  store i32 %1, ptr %151, align 4, !tbaa !46
  store i32 %156, ptr %148, align 4, !tbaa !46
  store i32 %2, ptr %150, align 4, !tbaa !46
  br label %166

166:                                              ; preds = %145, %162, %165
  %167 = fadd double %67, %146
  %168 = getelementptr inbounds i32, ptr %148, i64 1
  %169 = getelementptr inbounds i32, ptr %150, i64 1
  %170 = getelementptr inbounds i32, ptr %151, i64 1
  %171 = getelementptr inbounds i32, ptr %149, i64 1
  %172 = add nsw i32 %147, -1
  %173 = icmp sgt i32 %147, 0
  br i1 %173, label %145, label %174, !llvm.loop !170

174:                                              ; preds = %166, %133, %114
  %175 = fsub double %115, %70
  %176 = getelementptr inbounds i32, ptr %116, i64 %113
  %177 = getelementptr inbounds i32, ptr %119, i64 %113
  %178 = getelementptr inbounds i32, ptr %120, i64 %113
  %179 = getelementptr inbounds i32, ptr %118, i64 %113
  %180 = add nsw i32 %117, -1
  %181 = getelementptr inbounds float, ptr %122, i64 -1
  %182 = getelementptr inbounds float, ptr %121, i64 -1
  %183 = icmp sgt i32 %117, %24
  br i1 %183, label %114, label %184, !llvm.loop !171

184:                                              ; preds = %174, %31, %19, %11, %15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @zbuffillGL4(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #7 !PGOFuncName !172 {
  tail call fastcc void @zbuf_init_span(ptr noundef %0) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %3, ptr noundef %4) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %4, ptr noundef %5) #19
  %8 = icmp eq ptr %6, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %6) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %3) #19
  br label %11

10:                                               ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %5, ptr noundef %3) #19
  br label %11

11:                                               ; preds = %10, %9
  %12 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = icmp eq ptr %13, null
  br i1 %14, label %182, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = icmp eq ptr %17, null
  br i1 %18, label %182, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !68
  %22 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !69
  %24 = tail call i32 @llvm.smax.i32(i32 %21, i32 %23)
  %25 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !70
  %27 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 5
  %28 = load i32, ptr %27, align 4, !tbaa !71
  %29 = tail call i32 @llvm.smin.i32(i32 %26, i32 %28)
  %30 = icmp slt i32 %29, %24
  br i1 %30, label %182, label %31

31:                                               ; preds = %19
  %32 = load float, ptr %3, align 4, !tbaa !49
  %33 = load float, ptr %4, align 4, !tbaa !49
  %34 = fsub float %32, %33
  %35 = load float, ptr %5, align 4, !tbaa !49
  %36 = fsub float %33, %35
  %37 = getelementptr inbounds float, ptr %3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !49
  %39 = getelementptr inbounds float, ptr %4, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !49
  %41 = fsub float %38, %40
  %42 = getelementptr inbounds float, ptr %5, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !49
  %44 = fsub float %40, %43
  %45 = fneg float %41
  %46 = fmul float %36, %45
  %47 = tail call float @llvm.fmuladd.f32(float %34, float %44, float %46)
  %48 = fcmp oeq float %47, 0.000000e+00
  br i1 %48, label %182, label %49

49:                                               ; preds = %31
  %50 = getelementptr inbounds float, ptr %3, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !49
  %52 = getelementptr inbounds float, ptr %4, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !49
  %54 = fsub float %51, %53
  %55 = getelementptr inbounds float, ptr %5, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !49
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
  %68 = fpext float %60 to double
  %69 = fneg double %68
  %70 = fdiv double %69, %66
  %71 = load i32, ptr %0, align 8, !tbaa !34
  %72 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  %73 = load ptr, ptr %72, align 8, !tbaa !43
  %74 = add nsw i32 %29, %24
  %75 = sdiv i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, ptr %73, i64 %76
  %78 = load float, ptr %77, align 4, !tbaa !49
  %79 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  %80 = load ptr, ptr %79, align 8, !tbaa !44
  %81 = getelementptr inbounds float, ptr %80, i64 %76
  %82 = load float, ptr %81, align 4, !tbaa !49
  %83 = fcmp olt float %78, %82
  %84 = sext i32 %29 to i64
  %85 = getelementptr inbounds float, ptr %80, i64 %84
  %86 = getelementptr inbounds float, ptr %73, i64 %84
  %87 = select i1 %83, ptr %85, ptr %86
  %88 = select i1 %83, ptr %86, ptr %85
  %89 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 21
  %90 = load ptr, ptr %89, align 8, !tbaa !162
  %91 = mul nsw i32 %71, %29
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, ptr %90, i64 %92
  %94 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 20
  %95 = load ptr, ptr %94, align 8, !tbaa !127
  %96 = getelementptr inbounds i32, ptr %95, i64 %92
  %97 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 19
  %98 = load ptr, ptr %97, align 8, !tbaa !128
  %99 = getelementptr inbounds i32, ptr %98, i64 %92
  %100 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 16
  %101 = load ptr, ptr %100, align 8, !tbaa !125
  %102 = getelementptr inbounds i32, ptr %101, i64 %92
  %103 = sitofp i32 %29 to double
  %104 = fmul float %38, %60
  %105 = tail call float @llvm.fmuladd.f32(float %63, float %32, float %104)
  %106 = fdiv float %105, %47
  %107 = fadd float %51, %106
  %108 = fpext float %107 to double
  %109 = tail call double @llvm.fmuladd.f64(double %103, double %70, double %108)
  %110 = add nsw i32 %71, -1
  %111 = icmp eq ptr %90, null
  %112 = sext i32 %71 to i64
  %113 = sub nsw i64 0, %112
  br label %114

114:                                              ; preds = %49, %172
  %115 = phi double [ %109, %49 ], [ %173, %172 ]
  %116 = phi ptr [ %102, %49 ], [ %174, %172 ]
  %117 = phi i32 [ %29, %49 ], [ %178, %172 ]
  %118 = phi ptr [ %93, %49 ], [ %177, %172 ]
  %119 = phi ptr [ %99, %49 ], [ %175, %172 ]
  %120 = phi ptr [ %96, %49 ], [ %176, %172 ]
  %121 = phi ptr [ %87, %49 ], [ %180, %172 ]
  %122 = phi ptr [ %88, %49 ], [ %179, %172 ]
  %123 = load float, ptr %122, align 4, !tbaa !49
  %124 = tail call float @llvm.floor.f32(float %123)
  %125 = fptosi float %124 to i32
  %126 = load float, ptr %121, align 4, !tbaa !49
  %127 = tail call float @llvm.floor.f32(float %126)
  %128 = fptosi float %127 to i32
  %129 = icmp sgt i32 %71, %128
  %130 = select i1 %129, i32 %128, i32 %110
  %131 = tail call i32 @llvm.smax.i32(i32 %125, i32 -1)
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %172

133:                                              ; preds = %114
  %134 = add nsw i32 %131, 1
  %135 = sub nsw i32 %130, %134
  %136 = icmp sgt i32 %135, -1
  br i1 %136, label %137, label %172

137:                                              ; preds = %133
  %138 = zext nneg i32 %134 to i64
  %139 = getelementptr inbounds i32, ptr %118, i64 %138
  %140 = getelementptr inbounds i32, ptr %120, i64 %138
  %141 = getelementptr inbounds i32, ptr %119, i64 %138
  %142 = getelementptr inbounds i32, ptr %116, i64 %138
  %143 = sitofp i32 %134 to double
  %144 = tail call double @llvm.fmuladd.f64(double %143, double %67, double %115)
  br label %145

145:                                              ; preds = %137, %164
  %146 = phi double [ %165, %164 ], [ %144, %137 ]
  %147 = phi i32 [ %170, %164 ], [ %135, %137 ]
  %148 = phi ptr [ %166, %164 ], [ %142, %137 ]
  %149 = phi ptr [ %169, %164 ], [ %139, %137 ]
  %150 = phi ptr [ %167, %164 ], [ %141, %137 ]
  %151 = phi ptr [ %168, %164 ], [ %140, %137 ]
  %152 = fcmp olt double %146, 0xC1E0000000000000
  %153 = fcmp ogt double %146, 0x41DFFFFFFFC00000
  %154 = select i1 %153, double 0x41DFFFFFFFC00000, double %146
  %155 = select i1 %152, double 0xC1E0000000000000, double %154
  %156 = fptosi double %155 to i32
  %157 = load i32, ptr %148, align 4, !tbaa !46
  %158 = icmp sgt i32 %157, %156
  br i1 %158, label %159, label %164

159:                                              ; preds = %145
  br i1 %111, label %163, label %160

160:                                              ; preds = %159
  %161 = load i32, ptr %149, align 4, !tbaa !46
  %162 = icmp slt i32 %161, %156
  br i1 %162, label %163, label %164

163:                                              ; preds = %160, %159
  store i32 %156, ptr %148, align 4, !tbaa !46
  store i32 %2, ptr %150, align 4, !tbaa !46
  store i32 %1, ptr %151, align 4, !tbaa !46
  br label %164

164:                                              ; preds = %160, %163, %145
  %165 = fadd double %67, %146
  %166 = getelementptr inbounds i32, ptr %148, i64 1
  %167 = getelementptr inbounds i32, ptr %150, i64 1
  %168 = getelementptr inbounds i32, ptr %151, i64 1
  %169 = getelementptr inbounds i32, ptr %149, i64 1
  %170 = add nsw i32 %147, -1
  %171 = icmp sgt i32 %147, 0
  br i1 %171, label %145, label %172, !llvm.loop !173

172:                                              ; preds = %164, %133, %114
  %173 = fsub double %115, %70
  %174 = getelementptr inbounds i32, ptr %116, i64 %113
  %175 = getelementptr inbounds i32, ptr %119, i64 %113
  %176 = getelementptr inbounds i32, ptr %120, i64 %113
  %177 = getelementptr inbounds i32, ptr %118, i64 %113
  %178 = add nsw i32 %117, -1
  %179 = getelementptr inbounds float, ptr %122, i64 -1
  %180 = getelementptr inbounds float, ptr %121, i64 -1
  %181 = icmp sgt i32 %117, %24
  br i1 %181, label %114, label %182, !llvm.loop !174

182:                                              ; preds = %172, %31, %19, %11, %15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @zbufline(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #7 !PGOFuncName !175 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  %8 = load <2 x float>, ptr %4, align 4, !tbaa !49
  %9 = load <2 x float>, ptr %3, align 4, !tbaa !49
  %10 = fsub <2 x float> %8, %9
  %11 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %10)
  %12 = extractelement <2 x float> %11, i64 0
  %13 = extractelement <2 x float> %11, i64 1
  %14 = fcmp ogt float %12, %13
  br i1 %14, label %15, label %132

15:                                               ; preds = %5
  %16 = extractelement <2 x float> %8, i64 0
  %17 = extractelement <2 x float> %9, i64 0
  %18 = fcmp olt float %17, %16
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %3) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %4) #19
  br label %22

20:                                               ; preds = %15
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %3) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %4) #19
  %21 = fneg <2 x float> %10
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi <2 x float> [ %10, %19 ], [ %21, %20 ]
  %24 = load float, ptr %6, align 4, !tbaa !49
  %25 = tail call float @llvm.floor.f32(float %24)
  %26 = fptosi float %25 to i32
  %27 = sitofp i32 %26 to double
  %28 = extractelement <2 x float> %23, i64 0
  %29 = tail call float @llvm.floor.f32(float %28)
  %30 = fpext float %29 to double
  %31 = fadd double %30, %27
  %32 = fptosi double %31 to i32
  %33 = load i32, ptr %0, align 8, !tbaa !34
  %34 = icmp sgt i32 %33, %32
  %35 = add nsw i32 %33, -1
  %36 = select i1 %34, i32 %32, i32 %35
  %37 = extractelement <2 x float> %23, i64 1
  %38 = fdiv float %37, %28
  %39 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !49
  %41 = tail call float @llvm.floor.f32(float %40)
  %42 = fptosi float %41 to i32
  %43 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !49
  %45 = fsub float %44, %40
  %46 = fdiv float %45, %28
  %47 = tail call float @llvm.floor.f32(float %46)
  %48 = fptosi float %47 to i32
  %49 = icmp sgt i32 %42, 1342177280
  %50 = icmp sgt i32 %48, 0
  %51 = select i1 %49, i1 %50, i1 false
  %52 = icmp slt i32 %36, %26
  br i1 %52, label %250, label %53

53:                                               ; preds = %22
  %54 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !49
  %56 = fcmp olt float %38, 0.000000e+00
  %57 = sub nsw i32 0, %33
  %58 = select i1 %56, i32 %57, i32 %33
  %59 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 21
  %60 = load ptr, ptr %59, align 8, !tbaa !162
  %61 = tail call float @llvm.floor.f32(float %55)
  %62 = fptosi float %61 to i32
  %63 = mul nsw i32 %33, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, ptr %60, i64 %64
  %66 = sext i32 %26 to i64
  %67 = getelementptr inbounds i32, ptr %65, i64 %66
  %68 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 20
  %69 = load ptr, ptr %68, align 8, !tbaa !127
  %70 = getelementptr inbounds i32, ptr %69, i64 %64
  %71 = getelementptr inbounds i32, ptr %70, i64 %66
  %72 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 19
  %73 = load ptr, ptr %72, align 8, !tbaa !128
  %74 = getelementptr inbounds i32, ptr %73, i64 %64
  %75 = getelementptr inbounds i32, ptr %74, i64 %66
  %76 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 16
  %77 = load ptr, ptr %76, align 8, !tbaa !125
  %78 = getelementptr inbounds i32, ptr %77, i64 %64
  %79 = getelementptr inbounds i32, ptr %78, i64 %66
  %80 = sext i32 %58 to i64
  %81 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %82 = icmp eq ptr %60, null
  %83 = sub nsw i32 2147483632, %48
  br label %84

84:                                               ; preds = %53, %120
  %85 = phi i32 [ %42, %53 ], [ %125, %120 ]
  %86 = phi i32 [ %62, %53 ], [ %106, %120 ]
  %87 = phi i32 [ %26, %53 ], [ %126, %120 ]
  %88 = phi ptr [ %67, %53 ], [ %130, %120 ]
  %89 = phi ptr [ %71, %53 ], [ %129, %120 ]
  %90 = phi ptr [ %75, %53 ], [ %128, %120 ]
  %91 = phi ptr [ %79, %53 ], [ %127, %120 ]
  %92 = phi float [ %55, %53 ], [ %121, %120 ]
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
  %121 = fadd float %38, %92
  %122 = icmp sgt i32 %85, %83
  %123 = select i1 %51, i1 %122, i1 false
  %124 = add nsw i32 %85, %48
  %125 = select i1 %123, i32 2147483632, i32 %124
  %126 = add i32 %87, 1
  %127 = getelementptr inbounds i32, ptr %102, i64 1
  %128 = getelementptr inbounds i32, ptr %103, i64 1
  %129 = getelementptr inbounds i32, ptr %104, i64 1
  %130 = getelementptr inbounds i32, ptr %105, i64 1
  %131 = icmp eq i32 %87, %36
  br i1 %131, label %250, label %84, !llvm.loop !176

132:                                              ; preds = %5
  %133 = fcmp olt <2 x float> %9, %8
  %134 = extractelement <2 x i1> %133, i64 1
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %3) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %4) #19
  br label %138

136:                                              ; preds = %132
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %3) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %4) #19
  %137 = fneg <2 x float> %10
  br label %138

138:                                              ; preds = %136, %135
  %139 = phi <2 x float> [ %10, %135 ], [ %137, %136 ]
  %140 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %141 = load float, ptr %140, align 4, !tbaa !49
  %142 = tail call float @llvm.floor.f32(float %141)
  %143 = fptosi float %142 to i32
  %144 = sitofp i32 %143 to double
  %145 = extractelement <2 x float> %139, i64 1
  %146 = tail call float @llvm.floor.f32(float %145)
  %147 = fpext float %146 to double
  %148 = fadd double %147, %144
  %149 = fptosi double %148 to i32
  %150 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %151 = load i32, ptr %150, align 4, !tbaa !41
  %152 = icmp sgt i32 %151, %149
  %153 = add nsw i32 %151, -1
  %154 = select i1 %152, i32 %149, i32 %153
  %155 = extractelement <2 x float> %139, i64 0
  %156 = fdiv float %155, %145
  %157 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %158 = load float, ptr %157, align 4, !tbaa !49
  %159 = tail call float @llvm.floor.f32(float %158)
  %160 = fptosi float %159 to i32
  %161 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %162 = load float, ptr %161, align 4, !tbaa !49
  %163 = fsub float %162, %158
  %164 = fdiv float %163, %145
  %165 = tail call float @llvm.floor.f32(float %164)
  %166 = fptosi float %165 to i32
  %167 = icmp sgt i32 %160, 1342177280
  %168 = icmp sgt i32 %166, 0
  %169 = select i1 %167, i1 %168, i1 false
  %170 = fcmp olt float %156, 0.000000e+00
  %171 = select i1 %170, i64 -1, i64 1
  %172 = icmp slt i32 %154, %143
  br i1 %172, label %250, label %173

173:                                              ; preds = %138
  %174 = load float, ptr %6, align 4, !tbaa !49
  %175 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 21
  %176 = load ptr, ptr %175, align 8, !tbaa !162
  %177 = load i32, ptr %0, align 8, !tbaa !34
  %178 = mul nsw i32 %177, %143
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, ptr %176, i64 %179
  %181 = tail call float @llvm.floor.f32(float %174)
  %182 = fptosi float %181 to i32
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, ptr %180, i64 %183
  %185 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 20
  %186 = load ptr, ptr %185, align 8, !tbaa !127
  %187 = getelementptr inbounds i32, ptr %186, i64 %179
  %188 = getelementptr inbounds i32, ptr %187, i64 %183
  %189 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 19
  %190 = load ptr, ptr %189, align 8, !tbaa !128
  %191 = getelementptr inbounds i32, ptr %190, i64 %179
  %192 = getelementptr inbounds i32, ptr %191, i64 %183
  %193 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 16
  %194 = load ptr, ptr %193, align 8, !tbaa !125
  %195 = getelementptr inbounds i32, ptr %194, i64 %179
  %196 = getelementptr inbounds i32, ptr %195, i64 %183
  %197 = icmp eq ptr %176, null
  %198 = sub nsw i32 2147483632, %166
  br label %199

199:                                              ; preds = %173, %236
  %200 = phi i32 [ %177, %173 ], [ %237, %236 ]
  %201 = phi i32 [ %160, %173 ], [ %242, %236 ]
  %202 = phi i32 [ %182, %173 ], [ %222, %236 ]
  %203 = phi i32 [ %143, %173 ], [ %243, %236 ]
  %204 = phi ptr [ %184, %173 ], [ %248, %236 ]
  %205 = phi ptr [ %188, %173 ], [ %247, %236 ]
  %206 = phi ptr [ %192, %173 ], [ %246, %236 ]
  %207 = phi ptr [ %196, %173 ], [ %245, %236 ]
  %208 = phi float [ %174, %173 ], [ %238, %236 ]
  %209 = tail call float @llvm.floor.f32(float %208)
  %210 = fptosi float %209 to i32
  %211 = icmp eq i32 %202, %210
  br i1 %211, label %217, label %212

212:                                              ; preds = %199
  %213 = getelementptr inbounds i32, ptr %207, i64 %171
  %214 = getelementptr inbounds i32, ptr %206, i64 %171
  %215 = getelementptr inbounds i32, ptr %205, i64 %171
  %216 = getelementptr inbounds i32, ptr %204, i64 %171
  br label %217

217:                                              ; preds = %212, %199
  %218 = phi ptr [ %213, %212 ], [ %207, %199 ]
  %219 = phi ptr [ %214, %212 ], [ %206, %199 ]
  %220 = phi ptr [ %215, %212 ], [ %205, %199 ]
  %221 = phi ptr [ %216, %212 ], [ %204, %199 ]
  %222 = phi i32 [ %210, %212 ], [ %202, %199 ]
  %223 = or i32 %203, %210
  %224 = icmp sgt i32 %223, -1
  %225 = icmp sgt i32 %200, %210
  %226 = select i1 %224, i1 %225, i1 false
  br i1 %226, label %227, label %236

227:                                              ; preds = %217
  %228 = load i32, ptr %218, align 4, !tbaa !46
  %229 = icmp slt i32 %201, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %227
  br i1 %197, label %234, label %231

231:                                              ; preds = %230
  %232 = load i32, ptr %221, align 4, !tbaa !46
  %233 = icmp sgt i32 %201, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %231, %230
  store i32 %201, ptr %218, align 4, !tbaa !46
  store i32 %2, ptr %219, align 4, !tbaa !46
  store i32 %1, ptr %220, align 4, !tbaa !46
  %235 = load i32, ptr %0, align 8, !tbaa !34
  br label %236

236:                                              ; preds = %227, %234, %231, %217
  %237 = phi i32 [ %200, %227 ], [ %235, %234 ], [ %200, %231 ], [ %200, %217 ]
  %238 = fadd float %156, %208
  %239 = icmp sgt i32 %201, %198
  %240 = select i1 %169, i1 %239, i1 false
  %241 = add nsw i32 %201, %166
  %242 = select i1 %240, i32 2147483632, i32 %241
  %243 = add i32 %203, 1
  %244 = sext i32 %237 to i64
  %245 = getelementptr inbounds i32, ptr %218, i64 %244
  %246 = getelementptr inbounds i32, ptr %219, i64 %244
  %247 = getelementptr inbounds i32, ptr %220, i64 %244
  %248 = getelementptr inbounds i32, ptr %221, i64 %244
  %249 = icmp eq i32 %203, %154
  br i1 %249, label %250, label %199, !llvm.loop !177

250:                                              ; preds = %236, %120, %138, %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  ret void
}

; Function Attrs: optsize
declare i32 @clip_render_object(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @zbuf_project_cache_clear(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #9 !PGOFuncName !178 {
  %3 = tail call i32 @llvm.smin.i32(i32 %1, i32 256)
  %4 = sext i32 %3 to i64
  %5 = mul nsw i64 %4, 24
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %5, i1 false)
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %2
  %8 = zext nneg i32 %3 to i64
  %9 = add nuw nsw i64 %8, 3
  %10 = and i64 %9, 1020
  %11 = add nsw i64 %8, -1
  %12 = insertelement <4 x i64> poison, i64 %11, i64 0
  %13 = shufflevector <4 x i64> %12, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %14

14:                                               ; preds = %36, %7
  %15 = phi i64 [ 0, %7 ], [ %37, %36 ]
  %16 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %7 ], [ %38, %36 ]
  %17 = icmp ule <4 x i64> %16, %13
  %18 = extractelement <4 x i1> %17, i64 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ZbufProjectCache, ptr %0, i64 %15
  store i32 -1, ptr %20, align 4, !tbaa !179
  br label %21

21:                                               ; preds = %19, %14
  %22 = extractelement <4 x i1> %17, i64 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = or disjoint i64 %15, 1
  %25 = getelementptr inbounds %struct.ZbufProjectCache, ptr %0, i64 %24
  store i32 -1, ptr %25, align 4, !tbaa !179
  br label %26

26:                                               ; preds = %23, %21
  %27 = extractelement <4 x i1> %17, i64 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = or disjoint i64 %15, 2
  %30 = getelementptr inbounds %struct.ZbufProjectCache, ptr %0, i64 %29
  store i32 -1, ptr %30, align 4, !tbaa !179
  br label %31

31:                                               ; preds = %28, %26
  %32 = extractelement <4 x i1> %17, i64 3
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = or disjoint i64 %15, 3
  %35 = getelementptr inbounds %struct.ZbufProjectCache, ptr %0, i64 %34
  store i32 -1, ptr %35, align 4, !tbaa !179
  br label %36

36:                                               ; preds = %33, %31
  %37 = add i64 %15, 4
  %38 = add <4 x i64> %16, <i64 4, i64 4, i64 4, i64 4>
  %39 = icmp eq i64 %37, %10
  br i1 %39, label %40, label %14, !llvm.loop !181

40:                                               ; preds = %36, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @zbuf_part_project(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef %5) unnamed_addr #6 !PGOFuncName !182 {
  %7 = and i32 %1, 255
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds %struct.ZbufProjectCache, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !179
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ZbufProjectCache, ptr %0, i64 %8, i32 2
  tail call fastcc void @copy_v4_v4(ptr noundef %5, ptr noundef nonnull %13) #19
  %14 = getelementptr inbounds %struct.ZbufProjectCache, ptr %0, i64 %8, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !183
  br label %50

16:                                               ; preds = %6
  tail call void @projectvert(ptr noundef %4, ptr noundef %2, ptr noundef %5) #19
  %17 = getelementptr inbounds float, ptr %5, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !49
  %19 = load float, ptr %5, align 4, !tbaa !49
  %20 = load float, ptr %3, align 4, !tbaa !49
  %21 = fmul float %18, %20
  %22 = fcmp olt float %19, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds float, ptr %3, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !49
  %26 = fmul float %18, %25
  %27 = fcmp ogt float %19, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %16, %23, %28
  %30 = phi i32 [ 2, %28 ], [ 0, %23 ], [ 1, %16 ]
  %31 = getelementptr inbounds float, ptr %5, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !49
  %33 = getelementptr inbounds float, ptr %3, i64 3
  %34 = load float, ptr %33, align 4, !tbaa !49
  %35 = fmul float %18, %34
  %36 = fcmp ogt float %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = or disjoint i32 %30, 4
  br label %46

39:                                               ; preds = %29
  %40 = getelementptr inbounds float, ptr %3, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !49
  %42 = fmul float %18, %41
  %43 = fcmp olt float %32, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = or disjoint i32 %30, 8
  br label %46

46:                                               ; preds = %39, %44, %37
  %47 = phi i32 [ %38, %37 ], [ %45, %44 ], [ %30, %39 ]
  %48 = getelementptr inbounds %struct.ZbufProjectCache, ptr %0, i64 %8, i32 2
  tail call fastcc void @copy_v4_v4(ptr noundef nonnull %48, ptr noundef nonnull %5) #19
  %49 = getelementptr inbounds %struct.ZbufProjectCache, ptr %0, i64 %8, i32 1
  store i32 %47, ptr %49, align 4, !tbaa !183
  store i32 %1, ptr %9, align 4, !tbaa !179
  br label %50

50:                                               ; preds = %46, %12
  %51 = phi i32 [ %15, %12 ], [ %47, %46 ]
  ret i32 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @zmask_rect(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !184 {
  %6 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !42
  %7 = tail call ptr %6(ptr noundef %1) #17
  %8 = icmp slt i32 %3, 1
  br i1 %8, label %176, label %9

9:                                                ; preds = %5
  %10 = icmp sgt i32 %2, 0
  %11 = add nsw i32 %2, -1
  %12 = sext i32 %2 to i64
  %13 = zext nneg i32 %3 to i64
  %14 = add nuw i32 %3, 1
  %15 = zext i32 %14 to i64
  br label %16

16:                                               ; preds = %9, %173
  %17 = phi i64 [ 1, %9 ], [ %174, %173 ]
  br i1 %10, label %18, label %173

18:                                               ; preds = %16
  %19 = add nsw i64 %17, -1
  %20 = mul nsw i64 %19, %12
  %21 = getelementptr inbounds i32, ptr %0, i64 %20
  %22 = getelementptr inbounds i32, ptr %1, i64 %20
  %23 = icmp eq i64 %17, 1
  %24 = add nsw i64 %17, -2
  %25 = mul nsw i64 %24, %12
  %26 = add nsw i64 %25, %12
  %27 = trunc i64 %26 to i32
  %28 = add i32 %27, %2
  %29 = icmp eq i64 %17, %13
  %30 = trunc i64 %26 to i32
  %31 = trunc i64 %17 to i32
  %32 = mul i32 %31, %2
  %33 = select i1 %29, i32 %30, i32 %32
  %34 = select i1 %23, i32 %28, i32 %33
  %35 = trunc i64 %25 to i32
  %36 = select i1 %23, i32 0, i32 %35
  br label %37

37:                                               ; preds = %18, %163
  %38 = phi ptr [ %171, %163 ], [ %21, %18 ]
  %39 = phi ptr [ %170, %163 ], [ %22, %18 ]
  %40 = phi i32 [ %168, %163 ], [ %34, %18 ]
  %41 = phi i32 [ %167, %163 ], [ %30, %18 ]
  %42 = phi i32 [ %166, %163 ], [ %36, %18 ]
  %43 = phi i32 [ %169, %163 ], [ 0, %18 ]
  %44 = load i32, ptr %39, align 4, !tbaa !46
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %163

46:                                               ; preds = %37
  %47 = sext i32 %42 to i64
  %48 = getelementptr inbounds i32, ptr %7, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds i32, ptr %0, i64 %47
  %53 = load i32, ptr %52, align 4, !tbaa !46
  %54 = sitofp i32 %53 to float
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi i32 [ 1, %51 ], [ 0, %46 ]
  %57 = phi float [ %54, %51 ], [ 0.000000e+00, %46 ]
  %58 = sext i32 %41 to i64
  %59 = getelementptr inbounds i32, ptr %7, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !46
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds i32, ptr %0, i64 %58
  %64 = load i32, ptr %63, align 4, !tbaa !46
  %65 = sitofp i32 %64 to float
  %66 = fadd float %57, %65
  %67 = add nuw nsw i32 %56, 1
  br label %68

68:                                               ; preds = %62, %55
  %69 = phi i32 [ %67, %62 ], [ %56, %55 ]
  %70 = phi float [ %66, %62 ], [ %57, %55 ]
  %71 = sext i32 %40 to i64
  %72 = getelementptr inbounds i32, ptr %7, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !46
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds i32, ptr %0, i64 %71
  %77 = load i32, ptr %76, align 4, !tbaa !46
  %78 = sitofp i32 %77 to float
  %79 = fadd float %70, %78
  %80 = add nuw nsw i32 %69, 1
  br label %81

81:                                               ; preds = %75, %68
  %82 = phi i32 [ %80, %75 ], [ %69, %68 ]
  %83 = phi float [ %79, %75 ], [ %70, %68 ]
  %84 = add nsw i32 %42, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, ptr %7, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !46
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %81
  %90 = getelementptr inbounds i32, ptr %0, i64 %85
  %91 = load i32, ptr %90, align 4, !tbaa !46
  %92 = sitofp i32 %91 to float
  %93 = fadd float %83, %92
  %94 = add nuw nsw i32 %82, 1
  br label %95

95:                                               ; preds = %89, %81
  %96 = phi i32 [ %94, %89 ], [ %82, %81 ]
  %97 = phi float [ %93, %89 ], [ %83, %81 ]
  %98 = add nsw i32 %40, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %7, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !46
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %95
  %104 = getelementptr inbounds i32, ptr %0, i64 %99
  %105 = load i32, ptr %104, align 4, !tbaa !46
  %106 = sitofp i32 %105 to float
  %107 = fadd float %97, %106
  %108 = add nuw nsw i32 %96, 1
  br label %109

109:                                              ; preds = %103, %95
  %110 = phi i32 [ %108, %103 ], [ %96, %95 ]
  %111 = phi float [ %107, %103 ], [ %97, %95 ]
  %112 = icmp eq i32 %43, %11
  br i1 %112, label %153, label %113

113:                                              ; preds = %109
  %114 = add nsw i32 %42, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, ptr %7, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !46
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds i32, ptr %0, i64 %115
  %121 = load i32, ptr %120, align 4, !tbaa !46
  %122 = sitofp i32 %121 to float
  %123 = fadd float %111, %122
  %124 = add nuw nsw i32 %110, 1
  br label %125

125:                                              ; preds = %119, %113
  %126 = phi i32 [ %124, %119 ], [ %110, %113 ]
  %127 = phi float [ %123, %119 ], [ %111, %113 ]
  %128 = add nsw i32 %41, 2
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, ptr %7, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !46
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %125
  %134 = getelementptr inbounds i32, ptr %0, i64 %129
  %135 = load i32, ptr %134, align 4, !tbaa !46
  %136 = sitofp i32 %135 to float
  %137 = fadd float %127, %136
  %138 = add nuw nsw i32 %126, 1
  br label %139

139:                                              ; preds = %133, %125
  %140 = phi i32 [ %138, %133 ], [ %126, %125 ]
  %141 = phi float [ %137, %133 ], [ %127, %125 ]
  %142 = add nsw i32 %40, 2
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, ptr %7, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !46
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %139
  %148 = getelementptr inbounds i32, ptr %0, i64 %143
  %149 = load i32, ptr %148, align 4, !tbaa !46
  %150 = sitofp i32 %149 to float
  %151 = fadd float %141, %150
  %152 = add nuw nsw i32 %140, 1
  br label %157

153:                                              ; preds = %139, %109
  %154 = phi i32 [ %140, %139 ], [ %110, %109 ]
  %155 = phi float [ %141, %139 ], [ %111, %109 ]
  %156 = icmp eq i32 %154, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %147, %153
  %158 = phi float [ %151, %147 ], [ %155, %153 ]
  %159 = phi i32 [ %152, %147 ], [ %154, %153 ]
  %160 = sitofp i32 %159 to float
  %161 = fdiv float %158, %160
  %162 = fptosi float %161 to i32
  store i32 %162, ptr %38, align 4, !tbaa !46
  store i32 -1, ptr %39, align 4, !tbaa !46
  br label %163

163:                                              ; preds = %153, %157, %37
  %164 = icmp ne i32 %43, 0
  %165 = zext i1 %164 to i32
  %166 = add nsw i32 %42, %165
  %167 = add nsw i32 %41, %165
  %168 = add nsw i32 %40, %165
  %169 = add nuw nsw i32 %43, 1
  %170 = getelementptr inbounds i32, ptr %39, i64 1
  %171 = getelementptr inbounds i32, ptr %38, i64 1
  %172 = icmp eq i32 %169, %2
  br i1 %172, label %173, label %37, !llvm.loop !185

173:                                              ; preds = %163, %16
  %174 = add nuw nsw i64 %17, 1
  %175 = icmp eq i64 %174, %15
  br i1 %175, label %176, label %16, !llvm.loop !186

176:                                              ; preds = %173, %5
  %177 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  tail call void %177(ptr noundef %7) #17
  %178 = icmp eq i32 %4, 0
  br i1 %178, label %179, label %194

179:                                              ; preds = %176
  %180 = mul nsw i32 %3, %2
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %179
  %183 = zext nneg i32 %180 to i64
  br label %184

184:                                              ; preds = %182, %192
  %185 = phi i64 [ %183, %182 ], [ %186, %192 ]
  %186 = add nsw i64 %185, -1
  %187 = getelementptr inbounds i32, ptr %1, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !46
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = getelementptr inbounds i32, ptr %0, i64 %186
  store i32 -2147483647, ptr %191, align 4, !tbaa !46
  store i32 -1, ptr %187, align 4, !tbaa !46
  br label %192

192:                                              ; preds = %184, %190
  %193 = icmp ugt i64 %185, 1
  br i1 %193, label %184, label %194, !llvm.loop !187

194:                                              ; preds = %192, %179, %176
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @zbuffer_shadow(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #0 {
  %8 = alloca [256 x %struct.ZbufProjectCache], align 16
  %9 = alloca %struct.ZSpan, align 8
  %10 = alloca %struct.StrandSegment, align 8
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x float], align 16
  %13 = alloca [4 x float], align 16
  %14 = alloca [4 x float], align 16
  %15 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 6144, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #18
  %16 = getelementptr inbounds %struct.LampRen, ptr %2, i64 0, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !188
  %18 = and i32 %17, 32772
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.LampRen, ptr %2, i64 0, i32 17
  %22 = load i32, ptr %21, align 4, !tbaa !190
  br label %23

23:                                               ; preds = %20, %7
  %24 = phi i32 [ %22, %20 ], [ -1, %7 ]
  call void @zbuf_alloc_span(ptr noundef nonnull %9, i32 noundef %4, i32 noundef %4, float noundef 1.000000e+00) #19
  %25 = sitofp i32 %4 to float
  %26 = fmul float %25, 5.000000e-01
  %27 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 12
  store float %26, ptr %27, align 8, !tbaa !56
  %28 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 13
  store float %26, ptr %28, align 4, !tbaa !58
  %29 = insertelement <2 x float> poison, float %5, i64 0
  %30 = insertelement <2 x float> %29, float %6, i64 1
  %31 = fadd <2 x float> %30, <float -5.000000e-01, float -5.000000e-01>
  %32 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 14
  store <2 x float> %31, ptr %32, align 8, !tbaa !49
  %33 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 16
  store ptr %3, ptr %33, align 8, !tbaa !125
  tail call void @fillrect(ptr noundef %3, i32 noundef %4, i32 noundef %4, i32 noundef 2147483646) #19
  %34 = getelementptr inbounds %struct.LampRen, ptr %2, i64 0, i32 36
  %35 = load i16, ptr %34, align 4, !tbaa !191
  %36 = icmp eq i16 %35, 2
  br i1 %36, label %37, label %44

37:                                               ; preds = %23
  %38 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %39 = mul nsw i32 %4, %4
  %40 = zext nneg i32 %39 to i64
  %41 = shl nuw nsw i64 %40, 2
  %42 = tail call ptr %38(i64 noundef %41, ptr noundef nonnull @.str.4) #17
  %43 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 18
  store ptr %42, ptr %43, align 8, !tbaa !192
  tail call void @fillrect(ptr noundef %42, i32 noundef %4, i32 noundef %4, i32 noundef 2147483646) #19
  br label %44

44:                                               ; preds = %37, %23
  %45 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 35
  store ptr @zbufline_onlyZ, ptr %45, align 8, !tbaa !61
  %46 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 34
  store ptr @zbuffillGL_onlyZ, ptr %46, align 8, !tbaa !105
  %47 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %48 = load ptr, ptr %47, align 8, !tbaa !42
  %49 = icmp eq ptr %48, null
  br i1 %49, label %346, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 78
  %52 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %53 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %54 = getelementptr inbounds %struct.StrandSegment, ptr %10, i64 0, i32 3
  %55 = getelementptr inbounds %struct.StrandSegment, ptr %10, i64 0, i32 2
  %56 = getelementptr inbounds %struct.StrandSegment, ptr %10, i64 0, i32 4
  %57 = getelementptr inbounds %struct.StrandSegment, ptr %10, i64 0, i32 1
  %58 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 1
  %59 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 2
  %60 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 3
  br label %61

61:                                               ; preds = %50, %340
  %62 = phi ptr [ %48, %50 ], [ %344, %340 ]
  %63 = phi i32 [ 1, %50 ], [ %343, %340 ]
  %64 = phi ptr [ null, %50 ], [ %342, %340 ]
  %65 = phi ptr [ null, %50 ], [ %341, %340 ]
  %66 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %62, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !131
  %68 = getelementptr inbounds %struct.ObjectRen, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !193
  %70 = load ptr, ptr %51, align 8, !tbaa !194
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %340, label %72

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %62, i64 0, i32 7
  %74 = load i32, ptr %73, align 8, !tbaa !133
  %75 = and i32 %74, %24
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %340, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %62, i64 0, i32 11
  %79 = load i16, ptr %78, align 8, !tbaa !134
  %80 = and i16 %79, 3
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %62, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %11, ptr noundef %1, ptr noundef nonnull %83) #17
  br label %85

84:                                               ; preds = %77
  call void @copy_m4_m4(ptr noundef nonnull %11, ptr noundef %1) #17
  br label %85

85:                                               ; preds = %84, %82
  %86 = load ptr, ptr %66, align 8, !tbaa !131
  %87 = getelementptr inbounds %struct.ObjectRen, ptr %86, i64 0, i32 9
  %88 = call i32 @clip_render_object(ptr noundef nonnull %87, ptr noundef null, ptr noundef nonnull %11) #17
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %340

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.ObjectRen, ptr %67, i64 0, i32 10
  %92 = load i32, ptr %91, align 8, !tbaa !135
  call fastcc void @zbuf_project_cache_clear(ptr noundef nonnull %8, i32 noundef %92) #19
  %93 = getelementptr inbounds %struct.ObjectRen, ptr %67, i64 0, i32 11
  %94 = load i32, ptr %93, align 4, !tbaa !137
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %202

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.ObjectRen, ptr %67, i64 0, i32 19
  br label %98

98:                                               ; preds = %96, %198
  %99 = phi i32 [ %63, %96 ], [ %190, %198 ]
  %100 = phi i32 [ 0, %96 ], [ %199, %198 ]
  %101 = phi ptr [ %64, %96 ], [ %191, %198 ]
  %102 = phi ptr [ %65, %96 ], [ %114, %198 ]
  %103 = and i32 %100, 255
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load ptr, ptr %97, align 8, !tbaa !138
  %107 = lshr exact i32 %100, 8
  %108 = zext nneg i32 %107 to i64
  %109 = getelementptr inbounds %struct.VlakTableNode, ptr %106, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !139
  br label %113

111:                                              ; preds = %98
  %112 = getelementptr inbounds %struct.VlakRen, ptr %102, i64 1
  br label %113

113:                                              ; preds = %111, %105
  %114 = phi ptr [ %110, %105 ], [ %112, %111 ]
  %115 = getelementptr inbounds %struct.VlakRen, ptr %114, i64 0, i32 5
  %116 = load ptr, ptr %115, align 8, !tbaa !141
  %117 = icmp eq ptr %116, %101
  br i1 %117, label %128, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.Material, ptr %116, i64 0, i32 53
  %120 = load i32, ptr %119, align 4, !tbaa !195
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %189, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.Material, ptr %116, i64 0, i32 51
  %125 = load i32, ptr %124, align 4, !tbaa !143
  %126 = and i32 %125, 33554432
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %189, label %130

128:                                              ; preds = %113
  %129 = icmp eq i32 %99, 0
  br i1 %129, label %189, label %130

130:                                              ; preds = %123, %128
  %131 = phi i32 [ %99, %128 ], [ 1, %123 ]
  %132 = phi ptr [ %101, %128 ], [ %116, %123 ]
  %133 = load i32, ptr %73, align 8, !tbaa !133
  %134 = and i32 %133, %24
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %189, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.VlakRen, ptr %114, i64 0, i32 7
  %138 = load i8, ptr %137, align 1, !tbaa !151
  %139 = and i8 %138, 2
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %189

141:                                              ; preds = %136
  %142 = load ptr, ptr %114, align 8, !tbaa !152
  %143 = getelementptr inbounds %struct.VertRen, ptr %142, i64 0, i32 5
  %144 = load i32, ptr %143, align 8, !tbaa !156
  %145 = call fastcc i32 @zbuf_shadow_project(ptr noundef nonnull %8, i32 noundef %144, ptr noundef nonnull %11, ptr noundef %142, ptr noundef nonnull %12) #19
  %146 = getelementptr inbounds %struct.VlakRen, ptr %114, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !153
  %148 = getelementptr inbounds %struct.VertRen, ptr %147, i64 0, i32 5
  %149 = load i32, ptr %148, align 8, !tbaa !156
  %150 = call fastcc i32 @zbuf_shadow_project(ptr noundef nonnull %8, i32 noundef %149, ptr noundef nonnull %11, ptr noundef %147, ptr noundef nonnull %13) #19
  %151 = getelementptr inbounds %struct.VlakRen, ptr %114, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !154
  %153 = getelementptr inbounds %struct.VertRen, ptr %152, i64 0, i32 5
  %154 = load i32, ptr %153, align 8, !tbaa !156
  %155 = call fastcc i32 @zbuf_shadow_project(ptr noundef nonnull %8, i32 noundef %154, ptr noundef nonnull %11, ptr noundef %152, ptr noundef nonnull %14) #19
  %156 = getelementptr inbounds %struct.Material, ptr %132, i64 0, i32 2
  %157 = load i16, ptr %156, align 8, !tbaa !147
  %158 = icmp eq i16 %157, 3
  br i1 %158, label %163, label %159

159:                                              ; preds = %141
  %160 = load i8, ptr %137, align 1, !tbaa !151
  %161 = and i8 %160, 4
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %180, label %163

163:                                              ; preds = %159, %141
  %164 = getelementptr inbounds %struct.VlakRen, ptr %114, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !155
  %166 = icmp eq ptr %165, null
  br i1 %166, label %175, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.VertRen, ptr %165, i64 0, i32 5
  %169 = load i32, ptr %168, align 8, !tbaa !156
  %170 = call fastcc i32 @zbuf_shadow_project(ptr noundef nonnull %8, i32 noundef %169, ptr noundef nonnull %11, ptr noundef nonnull %165, ptr noundef nonnull %15) #19
  %171 = add nuw nsw i32 %100, 1
  %172 = getelementptr inbounds %struct.VlakRen, ptr %114, i64 0, i32 8
  %173 = load i8, ptr %172, align 2, !tbaa !158
  %174 = zext i8 %173 to i32
  call void @zbufclipwire(ptr noundef nonnull %9, i32 noundef 0, i32 noundef %171, i32 noundef %174, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef %145, i32 noundef %150, i32 noundef %155, i32 noundef %170) #19
  br label %189

175:                                              ; preds = %163
  %176 = add nuw nsw i32 %100, 1
  %177 = getelementptr inbounds %struct.VlakRen, ptr %114, i64 0, i32 8
  %178 = load i8, ptr %177, align 2, !tbaa !158
  %179 = zext i8 %178 to i32
  call void @zbufclipwire(ptr noundef nonnull %9, i32 noundef 0, i32 noundef %176, i32 noundef %179, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef null, i32 noundef %145, i32 noundef %150, i32 noundef %155, i32 noundef 0) #19
  br label %189

180:                                              ; preds = %159
  %181 = getelementptr inbounds %struct.VlakRen, ptr %114, i64 0, i32 3
  %182 = load ptr, ptr %181, align 8, !tbaa !155
  %183 = icmp eq ptr %182, null
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.VertRen, ptr %182, i64 0, i32 5
  %186 = load i32, ptr %185, align 8, !tbaa !156
  %187 = call fastcc i32 @zbuf_shadow_project(ptr noundef nonnull %8, i32 noundef %186, ptr noundef nonnull %11, ptr noundef nonnull %182, ptr noundef nonnull %15) #19
  call void @zbufclip4(ptr noundef nonnull %9, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef %145, i32 noundef %150, i32 noundef %155, i32 noundef %187) #19
  br label %189

188:                                              ; preds = %180
  call void @zbufclip(ptr noundef nonnull %9, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, i32 noundef %145, i32 noundef %150, i32 noundef %155) #19
  br label %189

189:                                              ; preds = %123, %118, %175, %167, %188, %184, %136, %130, %128
  %190 = phi i32 [ %131, %175 ], [ %131, %167 ], [ %131, %188 ], [ %131, %184 ], [ %131, %136 ], [ %131, %130 ], [ 0, %128 ], [ 0, %118 ], [ 0, %123 ]
  %191 = phi ptr [ %132, %175 ], [ %132, %167 ], [ %132, %188 ], [ %132, %184 ], [ %132, %136 ], [ %132, %130 ], [ %101, %128 ], [ %116, %118 ], [ %116, %123 ]
  %192 = icmp eq i32 %103, 255
  br i1 %192, label %193, label %198

193:                                              ; preds = %189
  %194 = load ptr, ptr %52, align 8, !tbaa !196
  %195 = load ptr, ptr %53, align 8, !tbaa !197
  %196 = call i32 %194(ptr noundef %195) #17
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %189, %193
  %199 = add nuw nsw i32 %100, 1
  %200 = load i32, ptr %93, align 4, !tbaa !137
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %98, label %202, !llvm.loop !198

202:                                              ; preds = %198, %193, %90
  %203 = phi ptr [ %65, %90 ], [ %114, %193 ], [ %114, %198 ]
  %204 = phi ptr [ %64, %90 ], [ %191, %193 ], [ %191, %198 ]
  %205 = phi i32 [ %63, %90 ], [ %190, %193 ], [ %190, %198 ]
  %206 = getelementptr inbounds %struct.ObjectRen, ptr %67, i64 0, i32 22
  %207 = load ptr, ptr %206, align 8, !tbaa !199
  %208 = icmp eq ptr %207, null
  br i1 %208, label %333, label %209

209:                                              ; preds = %202
  %210 = getelementptr inbounds %struct.StrandBuffer, ptr %207, i64 0, i32 5
  %211 = load i32, ptr %210, align 4, !tbaa !200
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %333

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.StrandBuffer, ptr %207, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !202
  br label %216

216:                                              ; preds = %213, %324
  %217 = phi i32 [ %326, %324 ], [ %205, %213 ]
  %218 = phi i32 [ %327, %324 ], [ 0, %213 ]
  %219 = phi ptr [ %328, %324 ], [ %215, %213 ]
  %220 = phi ptr [ %325, %324 ], [ %204, %213 ]
  %221 = getelementptr inbounds %struct.StrandBound, ptr %219, i64 0, i32 2
  %222 = call i32 @clip_render_object(ptr noundef nonnull %221, ptr noundef null, ptr noundef nonnull %11) #17
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %324

224:                                              ; preds = %216
  %225 = load i32, ptr %219, align 4, !tbaa !203
  %226 = getelementptr inbounds %struct.StrandBound, ptr %219, i64 0, i32 1
  %227 = load i32, ptr %226, align 4, !tbaa !205
  %228 = icmp slt i32 %225, %227
  br i1 %228, label %229, label %324

229:                                              ; preds = %224, %320
  %230 = phi i32 [ %311, %320 ], [ %217, %224 ]
  %231 = phi i32 [ %321, %320 ], [ %225, %224 ]
  %232 = phi ptr [ %312, %320 ], [ %220, %224 ]
  %233 = call ptr @RE_findOrAddStrand(ptr noundef %67, i32 noundef %231) #17
  store ptr %62, ptr %54, align 8, !tbaa !206
  %234 = getelementptr inbounds %struct.StrandRen, ptr %233, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !209
  store ptr %235, ptr %55, align 8, !tbaa !211
  %236 = getelementptr inbounds %struct.StrandBuffer, ptr %235, i64 0, i32 13
  %237 = load float, ptr %236, align 8, !tbaa !212
  %238 = fmul float %237, %237
  store float %238, ptr %56, align 8, !tbaa !213
  store ptr %233, ptr %57, align 8, !tbaa !214
  %239 = load ptr, ptr %233, align 8, !tbaa !215
  %240 = getelementptr inbounds %struct.StrandBuffer, ptr %235, i64 0, i32 7
  %241 = load ptr, ptr %240, align 8, !tbaa !216
  %242 = icmp eq ptr %241, %232
  br i1 %242, label %253, label %243

243:                                              ; preds = %229
  %244 = getelementptr inbounds %struct.Material, ptr %241, i64 0, i32 53
  %245 = load i32, ptr %244, align 4, !tbaa !195
  %246 = and i32 %245, 1
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %310, label %248

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.Material, ptr %241, i64 0, i32 51
  %250 = load i32, ptr %249, align 4, !tbaa !143
  %251 = and i32 %250, 33554432
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %310, label %255

253:                                              ; preds = %229
  %254 = icmp eq i32 %230, 0
  br i1 %254, label %310, label %255

255:                                              ; preds = %248, %253
  %256 = phi i32 [ %230, %253 ], [ 1, %248 ]
  %257 = phi ptr [ %232, %253 ], [ %241, %248 ]
  %258 = getelementptr inbounds %struct.StrandBuffer, ptr %235, i64 0, i32 9
  %259 = load i32, ptr %258, align 8, !tbaa !217
  %260 = and i32 %259, %24
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %310, label %262

262:                                              ; preds = %255
  %263 = getelementptr inbounds %struct.StrandRen, ptr %233, i64 0, i32 2
  %264 = load i32, ptr %263, align 8, !tbaa !218
  call fastcc void @zbuf_project_cache_clear(ptr noundef nonnull %8, i32 noundef %264) #19
  %265 = icmp sgt i32 %264, 1
  br i1 %265, label %266, label %310

266:                                              ; preds = %262, %305
  %267 = phi i32 [ %307, %305 ], [ %264, %262 ]
  %268 = phi i32 [ %306, %305 ], [ 0, %262 ]
  %269 = phi ptr [ %273, %305 ], [ %239, %262 ]
  %270 = icmp ne i32 %268, 0
  %271 = sext i1 %270 to i64
  %272 = getelementptr inbounds %struct.StrandVert, ptr %269, i64 %271
  store ptr %272, ptr %10, align 8, !tbaa !42
  store ptr %269, ptr %58, align 8, !tbaa !42
  %273 = getelementptr inbounds %struct.StrandVert, ptr %269, i64 1
  store ptr %273, ptr %59, align 8, !tbaa !42
  %274 = add nsw i32 %267, -2
  %275 = icmp slt i32 %268, %274
  %276 = getelementptr inbounds %struct.StrandVert, ptr %269, i64 2
  %277 = select i1 %275, ptr %276, ptr %273
  store ptr %277, ptr %60, align 8, !tbaa !42
  %278 = load ptr, ptr %233, align 8, !tbaa !215
  %279 = ptrtoint ptr %272 to i64
  %280 = ptrtoint ptr %278 to i64
  %281 = sub i64 %279, %280
  %282 = lshr exact i64 %281, 4
  %283 = trunc i64 %282 to i32
  %284 = call fastcc i32 @zbuf_shadow_project(ptr noundef nonnull %8, i32 noundef %283, ptr noundef nonnull %11, ptr noundef %272, ptr noundef nonnull %12) #19
  %285 = ptrtoint ptr %269 to i64
  %286 = sub i64 %285, %280
  %287 = lshr exact i64 %286, 4
  %288 = trunc i64 %287 to i32
  %289 = call fastcc i32 @zbuf_shadow_project(ptr noundef nonnull %8, i32 noundef %288, ptr noundef nonnull %11, ptr noundef %269, ptr noundef nonnull %13) #19
  %290 = ptrtoint ptr %273 to i64
  %291 = sub i64 %290, %280
  %292 = lshr exact i64 %291, 4
  %293 = trunc i64 %292 to i32
  %294 = call fastcc i32 @zbuf_shadow_project(ptr noundef nonnull %8, i32 noundef %293, ptr noundef nonnull %11, ptr noundef nonnull %273, ptr noundef nonnull %14) #19
  %295 = ptrtoint ptr %277 to i64
  %296 = sub i64 %295, %280
  %297 = lshr exact i64 %296, 4
  %298 = trunc i64 %297 to i32
  %299 = call fastcc i32 @zbuf_shadow_project(ptr noundef nonnull %8, i32 noundef %298, ptr noundef nonnull %11, ptr noundef nonnull %277, ptr noundef nonnull %15) #19
  %300 = and i32 %289, %284
  %301 = and i32 %300, %294
  %302 = and i32 %301, %299
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %266
  call void @render_strand_segment(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %9, i32 noundef 1, ptr noundef nonnull %10) #17
  br label %305

305:                                              ; preds = %266, %304
  %306 = add nuw nsw i32 %268, 1
  %307 = load i32, ptr %263, align 8, !tbaa !218
  %308 = add nsw i32 %307, -1
  %309 = icmp slt i32 %306, %308
  br i1 %309, label %266, label %310, !llvm.loop !219

310:                                              ; preds = %305, %262, %248, %243, %255, %253
  %311 = phi i32 [ %256, %255 ], [ 0, %253 ], [ 0, %243 ], [ 0, %248 ], [ %256, %262 ], [ %256, %305 ]
  %312 = phi ptr [ %257, %255 ], [ %232, %253 ], [ %241, %243 ], [ %241, %248 ], [ %257, %262 ], [ %257, %305 ]
  %313 = and i32 %231, 255
  %314 = icmp eq i32 %313, 255
  br i1 %314, label %315, label %320

315:                                              ; preds = %310
  %316 = load ptr, ptr %52, align 8, !tbaa !196
  %317 = load ptr, ptr %53, align 8, !tbaa !197
  %318 = call i32 %316(ptr noundef %317) #17
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %310, %315
  %321 = add nsw i32 %231, 1
  %322 = load i32, ptr %226, align 4, !tbaa !205
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %229, label %324, !llvm.loop !220

324:                                              ; preds = %315, %320, %224, %216
  %325 = phi ptr [ %220, %216 ], [ %220, %224 ], [ %312, %320 ], [ %312, %315 ]
  %326 = phi i32 [ %217, %216 ], [ %217, %224 ], [ %311, %320 ], [ %311, %315 ]
  %327 = add nuw nsw i32 %218, 1
  %328 = getelementptr inbounds %struct.StrandBound, ptr %219, i64 1
  %329 = load ptr, ptr %206, align 8, !tbaa !199
  %330 = getelementptr inbounds %struct.StrandBuffer, ptr %329, i64 0, i32 5
  %331 = load i32, ptr %330, align 4, !tbaa !200
  %332 = icmp slt i32 %327, %331
  br i1 %332, label %216, label %333, !llvm.loop !221

333:                                              ; preds = %324, %209, %202
  %334 = phi ptr [ %204, %202 ], [ %204, %209 ], [ %325, %324 ]
  %335 = phi i32 [ %205, %202 ], [ %205, %209 ], [ %326, %324 ]
  %336 = load ptr, ptr %52, align 8, !tbaa !196
  %337 = load ptr, ptr %53, align 8, !tbaa !197
  %338 = call i32 %336(ptr noundef %337) #17
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %346

340:                                              ; preds = %333, %85, %72, %61
  %341 = phi ptr [ %65, %61 ], [ %65, %85 ], [ %203, %333 ], [ %65, %72 ]
  %342 = phi ptr [ %64, %61 ], [ %64, %85 ], [ %334, %333 ], [ %64, %72 ]
  %343 = phi i32 [ %63, %61 ], [ %63, %85 ], [ %335, %333 ], [ %63, %72 ]
  %344 = load ptr, ptr %62, align 8, !tbaa !42
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %61, !llvm.loop !222

346:                                              ; preds = %340, %333, %44
  %347 = load i16, ptr %34, align 4, !tbaa !191
  %348 = icmp eq i16 %347, 2
  br i1 %348, label %349, label %375

349:                                              ; preds = %346
  %350 = icmp eq i32 %4, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %349
  %352 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 18
  %353 = load ptr, ptr %352, align 8, !tbaa !192
  br label %372

354:                                              ; preds = %349
  %355 = mul i32 %4, %4
  %356 = getelementptr inbounds %struct.ZSpan, ptr %9, i64 0, i32 18
  %357 = load ptr, ptr %356, align 8, !tbaa !192
  %358 = zext i32 %355 to i64
  br label %359

359:                                              ; preds = %354, %359
  %360 = phi i64 [ %358, %354 ], [ %361, %359 ]
  %361 = add nsw i64 %360, -1
  %362 = and i64 %361, 4294967295
  %363 = getelementptr inbounds i32, ptr %3, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !46
  %365 = ashr i32 %364, 1
  %366 = getelementptr inbounds i32, ptr %357, i64 %362
  %367 = load i32, ptr %366, align 4, !tbaa !46
  %368 = ashr i32 %367, 1
  %369 = add nsw i32 %368, %365
  store i32 %369, ptr %363, align 4, !tbaa !46
  %370 = trunc i64 %360 to i32
  %371 = icmp sgt i32 %370, 1
  br i1 %371, label %359, label %372, !llvm.loop !223

372:                                              ; preds = %359, %351
  %373 = phi ptr [ %353, %351 ], [ %357, %359 ]
  %374 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %374(ptr noundef %373) #17
  br label %375

375:                                              ; preds = %372, %346
  call void @zbuf_free_span(ptr noundef nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 6144, ptr nonnull %8) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @zbufline_onlyZ(ptr nocapture noundef readonly %0, i32 %1, i32 %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #7 !PGOFuncName !224 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  %8 = load <2 x float>, ptr %4, align 4, !tbaa !49
  %9 = load <2 x float>, ptr %3, align 4, !tbaa !49
  %10 = fsub <2 x float> %8, %9
  %11 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %10)
  %12 = extractelement <2 x float> %11, i64 0
  %13 = extractelement <2 x float> %11, i64 1
  %14 = fcmp ogt float %12, %13
  br i1 %14, label %15, label %122

15:                                               ; preds = %5
  %16 = extractelement <2 x float> %8, i64 0
  %17 = extractelement <2 x float> %9, i64 0
  %18 = fcmp olt float %17, %16
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %3) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %4) #19
  br label %22

20:                                               ; preds = %15
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %3) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %4) #19
  %21 = fneg <2 x float> %10
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi <2 x float> [ %10, %19 ], [ %21, %20 ]
  %24 = load float, ptr %6, align 4, !tbaa !49
  %25 = tail call float @llvm.floor.f32(float %24)
  %26 = fptosi float %25 to i32
  %27 = sitofp i32 %26 to double
  %28 = extractelement <2 x float> %23, i64 0
  %29 = tail call float @llvm.floor.f32(float %28)
  %30 = fpext float %29 to double
  %31 = fadd double %30, %27
  %32 = fptosi double %31 to i32
  %33 = load i32, ptr %0, align 8, !tbaa !34
  %34 = icmp sgt i32 %33, %32
  %35 = add nsw i32 %33, -1
  %36 = select i1 %34, i32 %32, i32 %35
  %37 = extractelement <2 x float> %23, i64 1
  %38 = fdiv float %37, %28
  %39 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !49
  %41 = tail call float @llvm.floor.f32(float %40)
  %42 = fptosi float %41 to i32
  %43 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !49
  %45 = fsub float %44, %40
  %46 = fdiv float %45, %28
  %47 = tail call float @llvm.floor.f32(float %46)
  %48 = fptosi float %47 to i32
  %49 = icmp sgt i32 %42, 1342177280
  %50 = icmp sgt i32 %48, 0
  %51 = select i1 %49, i1 %50, i1 false
  %52 = icmp slt i32 %36, %26
  br i1 %52, label %231, label %53

53:                                               ; preds = %22
  %54 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !49
  %56 = fcmp olt float %38, 0.000000e+00
  %57 = sub nsw i32 0, %33
  %58 = select i1 %56, i32 %57, i32 %33
  %59 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 18
  %60 = load ptr, ptr %59, align 8, !tbaa !192
  %61 = icmp eq ptr %60, null
  %62 = tail call float @llvm.floor.f32(float %55)
  %63 = fptosi float %62 to i32
  %64 = mul nsw i32 %33, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %60, i64 %65
  %67 = sext i32 %26 to i64
  %68 = getelementptr inbounds i32, ptr %66, i64 %67
  %69 = select i1 %61, ptr null, ptr %68
  %70 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 16
  %71 = load ptr, ptr %70, align 8, !tbaa !125
  %72 = getelementptr inbounds i32, ptr %71, i64 %65
  %73 = getelementptr inbounds i32, ptr %72, i64 %67
  %74 = sext i32 %58 to i64
  %75 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %76 = sub nsw i32 2147483632, %48
  br label %77

77:                                               ; preds = %53, %110
  %78 = phi i32 [ %42, %53 ], [ %115, %110 ]
  %79 = phi i32 [ %63, %53 ], [ %85, %110 ]
  %80 = phi i32 [ %26, %53 ], [ %119, %110 ]
  %81 = phi ptr [ %69, %53 ], [ %118, %110 ]
  %82 = phi ptr [ %73, %53 ], [ %120, %110 ]
  %83 = phi float [ %55, %53 ], [ %111, %110 ]
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
  %111 = fadd float %38, %83
  %112 = icmp sgt i32 %78, %76
  %113 = select i1 %51, i1 %112, i1 false
  %114 = add nsw i32 %78, %48
  %115 = select i1 %113, i32 2147483632, i32 %114
  %116 = icmp eq ptr %92, null
  %117 = getelementptr inbounds i32, ptr %92, i64 1
  %118 = select i1 %116, ptr null, ptr %117
  %119 = add i32 %80, 1
  %120 = getelementptr inbounds i32, ptr %91, i64 1
  %121 = icmp eq i32 %80, %36
  br i1 %121, label %231, label %77, !llvm.loop !225

122:                                              ; preds = %5
  %123 = fcmp olt <2 x float> %9, %8
  %124 = extractelement <2 x i1> %123, i64 1
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %3) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %4) #19
  br label %128

126:                                              ; preds = %122
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %3) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %4) #19
  %127 = fneg <2 x float> %10
  br label %128

128:                                              ; preds = %126, %125
  %129 = phi <2 x float> [ %10, %125 ], [ %127, %126 ]
  %130 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !49
  %132 = tail call float @llvm.floor.f32(float %131)
  %133 = fptosi float %132 to i32
  %134 = sitofp i32 %133 to double
  %135 = extractelement <2 x float> %129, i64 1
  %136 = tail call float @llvm.floor.f32(float %135)
  %137 = fpext float %136 to double
  %138 = fadd double %137, %134
  %139 = fptosi double %138 to i32
  %140 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !41
  %142 = icmp sgt i32 %141, %139
  %143 = add nsw i32 %141, -1
  %144 = select i1 %142, i32 %139, i32 %143
  %145 = extractelement <2 x float> %129, i64 0
  %146 = fdiv float %145, %135
  %147 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %148 = load float, ptr %147, align 4, !tbaa !49
  %149 = tail call float @llvm.floor.f32(float %148)
  %150 = fptosi float %149 to i32
  %151 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %152 = load float, ptr %151, align 4, !tbaa !49
  %153 = fsub float %152, %148
  %154 = fdiv float %153, %135
  %155 = tail call float @llvm.floor.f32(float %154)
  %156 = fptosi float %155 to i32
  %157 = icmp sgt i32 %150, 1342177280
  %158 = icmp sgt i32 %156, 0
  %159 = select i1 %157, i1 %158, i1 false
  %160 = fcmp olt float %146, 0.000000e+00
  %161 = select i1 %160, i64 -1, i64 1
  %162 = icmp slt i32 %144, %133
  br i1 %162, label %231, label %163

163:                                              ; preds = %128
  %164 = load float, ptr %6, align 4, !tbaa !49
  %165 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 18
  %166 = load ptr, ptr %165, align 8, !tbaa !192
  %167 = icmp eq ptr %166, null
  %168 = load i32, ptr %0, align 8, !tbaa !34
  %169 = mul nsw i32 %168, %133
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, ptr %166, i64 %170
  %172 = tail call float @llvm.floor.f32(float %164)
  %173 = fptosi float %172 to i32
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, ptr %171, i64 %174
  %176 = select i1 %167, ptr null, ptr %175
  %177 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 16
  %178 = load ptr, ptr %177, align 8, !tbaa !125
  %179 = getelementptr inbounds i32, ptr %178, i64 %170
  %180 = getelementptr inbounds i32, ptr %179, i64 %174
  %181 = sub nsw i32 2147483632, %156
  br label %182

182:                                              ; preds = %163, %215
  %183 = phi i32 [ %168, %163 ], [ %222, %215 ]
  %184 = phi i32 [ %150, %163 ], [ %220, %215 ]
  %185 = phi i32 [ %173, %163 ], [ %191, %215 ]
  %186 = phi i32 [ %133, %163 ], [ %228, %215 ]
  %187 = phi ptr [ %176, %163 ], [ %227, %215 ]
  %188 = phi ptr [ %180, %163 ], [ %229, %215 ]
  %189 = phi float [ %164, %163 ], [ %216, %215 ]
  %190 = tail call float @llvm.floor.f32(float %189)
  %191 = fptosi float %190 to i32
  %192 = icmp eq i32 %185, %191
  %193 = icmp eq ptr %187, null
  %194 = getelementptr inbounds i32, ptr %187, i64 %161
  %195 = select i1 %193, ptr null, ptr %194
  %196 = select i1 %192, i64 0, i64 %161
  %197 = getelementptr inbounds i32, ptr %188, i64 %196
  %198 = select i1 %192, ptr %187, ptr %195
  %199 = or i32 %186, %191
  %200 = icmp sgt i32 %199, -1
  %201 = icmp sgt i32 %183, %191
  %202 = select i1 %200, i1 %201, i1 false
  br i1 %202, label %203, label %215

203:                                              ; preds = %182
  %204 = load i32, ptr %197, align 4, !tbaa !46
  %205 = icmp slt i32 %184, %204
  %206 = icmp eq ptr %198, null
  br i1 %205, label %207, label %209

207:                                              ; preds = %203
  br i1 %206, label %213, label %208

208:                                              ; preds = %207
  store i32 %204, ptr %198, align 4, !tbaa !46
  br label %213

209:                                              ; preds = %203
  br i1 %206, label %215, label %210

210:                                              ; preds = %209
  %211 = load i32, ptr %198, align 4, !tbaa !46
  %212 = icmp slt i32 %184, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %210, %207, %208
  %214 = phi ptr [ %197, %208 ], [ %197, %207 ], [ %198, %210 ]
  store i32 %184, ptr %214, align 4, !tbaa !46
  br label %215

215:                                              ; preds = %213, %210, %209, %182
  %216 = fadd float %146, %189
  %217 = icmp sgt i32 %184, %181
  %218 = select i1 %159, i1 %217, i1 false
  %219 = add nsw i32 %184, %156
  %220 = select i1 %218, i32 2147483632, i32 %219
  %221 = icmp eq ptr %198, null
  %222 = load i32, ptr %0, align 8, !tbaa !34
  %223 = sext i32 %222 to i64
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i32, ptr %198, i64 %224
  %226 = select i1 %221, i64 %223, i64 %224
  %227 = select i1 %221, ptr null, ptr %225
  %228 = add i32 %186, 1
  %229 = getelementptr inbounds i32, ptr %197, i64 %226
  %230 = icmp eq i32 %186, %144
  br i1 %230, label %231, label %182, !llvm.loop !226

231:                                              ; preds = %215, %110, %128, %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @zbuffillGL_onlyZ(ptr nocapture noundef %0, i32 %1, i32 %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #7 !PGOFuncName !227 {
  tail call fastcc void @zbuf_init_span(ptr noundef %0) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %3, ptr noundef %4) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %4, ptr noundef %5) #19
  %8 = icmp eq ptr %6, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %6) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %3) #19
  br label %11

10:                                               ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %5, ptr noundef %3) #19
  br label %11

11:                                               ; preds = %10, %9
  %12 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = icmp eq ptr %13, null
  br i1 %14, label %173, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = icmp eq ptr %17, null
  br i1 %18, label %173, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !68
  %22 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !69
  %24 = tail call i32 @llvm.smax.i32(i32 %21, i32 %23)
  %25 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !70
  %27 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 5
  %28 = load i32, ptr %27, align 4, !tbaa !71
  %29 = tail call i32 @llvm.smin.i32(i32 %26, i32 %28)
  %30 = icmp slt i32 %29, %24
  br i1 %30, label %173, label %31

31:                                               ; preds = %19
  %32 = load float, ptr %3, align 4, !tbaa !49
  %33 = load float, ptr %4, align 4, !tbaa !49
  %34 = fsub float %32, %33
  %35 = load float, ptr %5, align 4, !tbaa !49
  %36 = fsub float %33, %35
  %37 = getelementptr inbounds float, ptr %3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !49
  %39 = getelementptr inbounds float, ptr %4, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !49
  %41 = fsub float %38, %40
  %42 = getelementptr inbounds float, ptr %5, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !49
  %44 = fsub float %40, %43
  %45 = fneg float %41
  %46 = fmul float %36, %45
  %47 = tail call float @llvm.fmuladd.f32(float %34, float %44, float %46)
  %48 = fcmp oeq float %47, 0.000000e+00
  br i1 %48, label %173, label %49

49:                                               ; preds = %31
  %50 = getelementptr inbounds float, ptr %3, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !49
  %52 = getelementptr inbounds float, ptr %4, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !49
  %54 = fsub float %51, %53
  %55 = getelementptr inbounds float, ptr %5, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !49
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
  %68 = fpext float %60 to double
  %69 = fneg double %68
  %70 = fdiv double %69, %66
  %71 = load i32, ptr %0, align 8, !tbaa !34
  %72 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  %73 = load ptr, ptr %72, align 8, !tbaa !43
  %74 = add nsw i32 %29, %24
  %75 = sdiv i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, ptr %73, i64 %76
  %78 = load float, ptr %77, align 4, !tbaa !49
  %79 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  %80 = load ptr, ptr %79, align 8, !tbaa !44
  %81 = getelementptr inbounds float, ptr %80, i64 %76
  %82 = load float, ptr %81, align 4, !tbaa !49
  %83 = fcmp olt float %78, %82
  %84 = sext i32 %29 to i64
  %85 = getelementptr inbounds float, ptr %80, i64 %84
  %86 = getelementptr inbounds float, ptr %73, i64 %84
  %87 = select i1 %83, ptr %85, ptr %86
  %88 = select i1 %83, ptr %86, ptr %85
  %89 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 18
  %90 = load ptr, ptr %89, align 8, !tbaa !192
  %91 = icmp eq ptr %90, null
  %92 = mul nsw i32 %71, %29
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, ptr %90, i64 %93
  %95 = select i1 %91, ptr null, ptr %94
  %96 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 16
  %97 = load ptr, ptr %96, align 8, !tbaa !125
  %98 = getelementptr inbounds i32, ptr %97, i64 %93
  %99 = sitofp i32 %29 to double
  %100 = fmul float %38, %60
  %101 = tail call float @llvm.fmuladd.f32(float %63, float %32, float %100)
  %102 = fdiv float %101, %47
  %103 = fadd float %51, %102
  %104 = fpext float %103 to double
  %105 = tail call double @llvm.fmuladd.f64(double %99, double %70, double %104)
  %106 = add nsw i32 %71, -1
  %107 = sext i32 %71 to i64
  %108 = sub nsw i64 0, %107
  br label %109

109:                                              ; preds = %49, %163
  %110 = phi double [ %105, %49 ], [ %164, %163 ]
  %111 = phi ptr [ %95, %49 ], [ %168, %163 ]
  %112 = phi ptr [ %98, %49 ], [ %165, %163 ]
  %113 = phi i32 [ %29, %49 ], [ %169, %163 ]
  %114 = phi ptr [ %87, %49 ], [ %171, %163 ]
  %115 = phi ptr [ %88, %49 ], [ %170, %163 ]
  %116 = load float, ptr %115, align 4, !tbaa !49
  %117 = tail call float @llvm.floor.f32(float %116)
  %118 = fptosi float %117 to i32
  %119 = load float, ptr %114, align 4, !tbaa !49
  %120 = tail call float @llvm.floor.f32(float %119)
  %121 = fptosi float %120 to i32
  %122 = icmp sgt i32 %71, %121
  %123 = select i1 %122, i32 %121, i32 %106
  %124 = tail call i32 @llvm.smax.i32(i32 %118, i32 -1)
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %163

126:                                              ; preds = %109
  %127 = add nsw i32 %124, 1
  %128 = sub nsw i32 %123, %127
  %129 = icmp sgt i32 %128, -1
  br i1 %129, label %130, label %163

130:                                              ; preds = %126
  %131 = zext nneg i32 %127 to i64
  %132 = getelementptr inbounds i32, ptr %111, i64 %131
  %133 = getelementptr inbounds i32, ptr %112, i64 %131
  %134 = sitofp i32 %127 to double
  %135 = tail call double @llvm.fmuladd.f64(double %134, double %67, double %110)
  %136 = icmp eq ptr %111, null
  br label %137

137:                                              ; preds = %130, %157
  %138 = phi double [ %135, %130 ], [ %158, %157 ]
  %139 = phi i32 [ %128, %130 ], [ %161, %157 ]
  %140 = phi ptr [ %132, %130 ], [ %160, %157 ]
  %141 = phi ptr [ %133, %130 ], [ %159, %157 ]
  %142 = fcmp olt double %138, 0xC1E0000000000000
  %143 = fcmp ogt double %138, 0x41DFFFFFFFC00000
  %144 = select i1 %143, double 0x41DFFFFFFFC00000, double %138
  %145 = select i1 %142, double 0xC1E0000000000000, double %144
  %146 = fptosi double %145 to i32
  %147 = load i32, ptr %141, align 4, !tbaa !46
  %148 = icmp sgt i32 %147, %146
  br i1 %148, label %149, label %151

149:                                              ; preds = %137
  br i1 %136, label %155, label %150

150:                                              ; preds = %149
  store i32 %147, ptr %140, align 4, !tbaa !46
  br label %155

151:                                              ; preds = %137
  br i1 %136, label %157, label %152

152:                                              ; preds = %151
  %153 = load i32, ptr %140, align 4, !tbaa !46
  %154 = icmp sgt i32 %153, %146
  br i1 %154, label %155, label %157

155:                                              ; preds = %152, %149, %150
  %156 = phi ptr [ %141, %150 ], [ %141, %149 ], [ %140, %152 ]
  store i32 %146, ptr %156, align 4, !tbaa !46
  br label %157

157:                                              ; preds = %155, %151, %152
  %158 = fadd double %67, %138
  %159 = getelementptr inbounds i32, ptr %141, i64 1
  %160 = getelementptr inbounds i32, ptr %140, i64 1
  %161 = add nsw i32 %139, -1
  %162 = icmp sgt i32 %139, 0
  br i1 %162, label %137, label %163, !llvm.loop !228

163:                                              ; preds = %157, %126, %109
  %164 = fsub double %110, %70
  %165 = getelementptr inbounds i32, ptr %112, i64 %108
  %166 = icmp eq ptr %111, null
  %167 = getelementptr inbounds i32, ptr %111, i64 %108
  %168 = select i1 %166, ptr null, ptr %167
  %169 = add nsw i32 %113, -1
  %170 = getelementptr inbounds float, ptr %115, i64 -1
  %171 = getelementptr inbounds float, ptr %114, i64 -1
  %172 = icmp sgt i32 %113, %24
  br i1 %172, label %109, label %173, !llvm.loop !229

173:                                              ; preds = %163, %31, %19, %11, %15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @zbuf_shadow_project(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) unnamed_addr #6 !PGOFuncName !230 {
  %6 = and i32 %1, 255
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.ZbufProjectCache, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !179
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ZbufProjectCache, ptr %0, i64 %7, i32 2
  tail call fastcc void @copy_v4_v4(ptr noundef %4, ptr noundef nonnull %12) #19
  %13 = getelementptr inbounds %struct.ZbufProjectCache, ptr %0, i64 %7, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !183
  br label %19

15:                                               ; preds = %5
  tail call void @projectvert(ptr noundef %3, ptr noundef %2, ptr noundef %4) #19
  %16 = tail call i32 @testclip(ptr noundef %4) #19, !range !65
  %17 = getelementptr inbounds %struct.ZbufProjectCache, ptr %0, i64 %7, i32 2
  tail call fastcc void @copy_v4_v4(ptr noundef nonnull %17, ptr noundef %4) #19
  %18 = getelementptr inbounds %struct.ZbufProjectCache, ptr %0, i64 %7, i32 1
  store i32 %16, ptr %18, align 4, !tbaa !183
  store i32 %1, ptr %8, align 4, !tbaa !179
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %14, %11 ], [ %16, %15 ]
  ret i32 %20
}

; Function Attrs: optsize
declare ptr @RE_findOrAddStrand(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @render_strand_segment(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @zbuffer_sss(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [256 x %struct.ZbufProjectCache], align 16
  %6 = alloca %struct.ZSpan, align 8
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [4 x float], align 16
  %12 = alloca [4 x float], align 16
  %13 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 6144, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %6) #18
  %14 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 76), align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  call void @zbuf_make_winmat(ptr noundef nonnull @R, ptr noundef nonnull %8) #19
  %15 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !115
  %16 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !116
  call fastcc void @zbuffer_part_bounds(i32 noundef %15, i32 noundef %16, ptr noundef %0, ptr noundef nonnull %9) #19
  %17 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %18 = load i32, ptr %17, align 8, !tbaa !117
  %19 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %20 = load i32, ptr %19, align 4, !tbaa !118
  %21 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 19), align 4, !tbaa !119
  call void @zbuf_alloc_span(ptr noundef nonnull %6, i32 noundef %18, i32 noundef %20, float noundef %21) #19
  %22 = getelementptr inbounds %struct.ZSpan, ptr %6, i64 0, i32 32
  store ptr %2, ptr %22, align 8, !tbaa !232
  %23 = getelementptr inbounds %struct.ZSpan, ptr %6, i64 0, i32 33
  store ptr %3, ptr %23, align 8, !tbaa !233
  %24 = getelementptr inbounds %struct.ZSpan, ptr %6, i64 0, i32 12
  %25 = load <4 x i32>, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4
  %26 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %27 = load i32, ptr %26, align 8, !tbaa !121
  %28 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !122
  %30 = insertelement <2 x i32> poison, i32 %27, i64 0
  %31 = insertelement <2 x i32> %30, i32 %29, i64 1
  %32 = sub nsw <2 x i32> zeroinitializer, %31
  %33 = shufflevector <2 x i32> %32, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %34 = shufflevector <4 x i32> %25, <4 x i32> %33, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %35 = sitofp <4 x i32> %34 to <4 x float>
  %36 = fmul <4 x float> %35, <float 5.000000e-01, float 5.000000e-01, float poison, float poison>
  %37 = fadd <4 x float> %35, <float poison, float poison, float -5.000000e-01, float -5.000000e-01>
  %38 = shufflevector <4 x float> %36, <4 x float> %37, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %38, ptr %24, align 8, !tbaa !49
  %39 = getelementptr inbounds %struct.ZSpan, ptr %6, i64 0, i32 34
  store ptr @zbuffill_sss, ptr %39, align 8, !tbaa !105
  %40 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !126
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %4
  %44 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !234
  %46 = load i32, ptr %17, align 8, !tbaa !117
  %47 = load i32, ptr %19, align 4, !tbaa !118
  call void @fillrect(ptr noundef %45, i32 noundef %46, i32 noundef %47, i32 noundef 0) #19
  %48 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !235
  %50 = load i32, ptr %17, align 8, !tbaa !117
  %51 = load i32, ptr %19, align 4, !tbaa !118
  call void @fillrect(ptr noundef %49, i32 noundef %50, i32 noundef %51, i32 noundef 0) #19
  %52 = load ptr, ptr %40, align 8, !tbaa !126
  %53 = load i32, ptr %17, align 8, !tbaa !117
  %54 = load i32, ptr %19, align 4, !tbaa !118
  call void @fillrect(ptr noundef %52, i32 noundef %53, i32 noundef %54, i32 noundef 2147483647) #19
  br label %55

55:                                               ; preds = %43, %4
  %56 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 11
  %57 = load ptr, ptr %56, align 8, !tbaa !236
  %58 = icmp eq ptr %57, null
  br i1 %58, label %71, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 9
  %61 = load ptr, ptr %60, align 8, !tbaa !237
  %62 = load i32, ptr %17, align 8, !tbaa !117
  %63 = load i32, ptr %19, align 4, !tbaa !118
  call void @fillrect(ptr noundef %61, i32 noundef %62, i32 noundef %63, i32 noundef 0) #19
  %64 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 10
  %65 = load ptr, ptr %64, align 8, !tbaa !238
  %66 = load i32, ptr %17, align 8, !tbaa !117
  %67 = load i32, ptr %19, align 4, !tbaa !118
  call void @fillrect(ptr noundef %65, i32 noundef %66, i32 noundef %67, i32 noundef 0) #19
  %68 = load ptr, ptr %56, align 8, !tbaa !236
  %69 = load i32, ptr %17, align 8, !tbaa !117
  %70 = load i32, ptr %19, align 4, !tbaa !118
  call void @fillrect(ptr noundef %68, i32 noundef %69, i32 noundef %70, i32 noundef -2147483647) #19
  br label %71

71:                                               ; preds = %59, %55
  %72 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 70), align 8, !tbaa !42
  %73 = icmp eq ptr %72, null
  br i1 %73, label %213, label %74

74:                                               ; preds = %71, %204
  %75 = phi ptr [ %211, %204 ], [ %72, %71 ]
  %76 = phi i16 [ %209, %204 ], [ 0, %71 ]
  %77 = phi i16 [ %208, %204 ], [ 0, %71 ]
  %78 = phi i16 [ %207, %204 ], [ 0, %71 ]
  %79 = phi i32 [ %210, %204 ], [ 0, %71 ]
  %80 = phi ptr [ %206, %204 ], [ null, %71 ]
  %81 = phi ptr [ %205, %204 ], [ null, %71 ]
  %82 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %75, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !131
  %84 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %75, i64 0, i32 7
  %85 = load i32, ptr %84, align 8, !tbaa !133
  %86 = and i32 %85, %1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %204, label %88

88:                                               ; preds = %74
  %89 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %75, i64 0, i32 11
  %90 = load i16, ptr %89, align 8, !tbaa !134
  %91 = and i16 %90, 3
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %75, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %94) #17
  br label %96

95:                                               ; preds = %88
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %8) #17
  br label %96

96:                                               ; preds = %95, %93
  %97 = load ptr, ptr %82, align 8, !tbaa !131
  %98 = getelementptr inbounds %struct.ObjectRen, ptr %97, i64 0, i32 9
  %99 = call i32 @clip_render_object(ptr noundef nonnull %98, ptr noundef nonnull %9, ptr noundef nonnull %7) #17
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %204

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.ObjectRen, ptr %83, i64 0, i32 10
  %103 = load i32, ptr %102, align 8, !tbaa !135
  call fastcc void @zbuf_project_cache_clear(ptr noundef nonnull %5, i32 noundef %103) #19
  %104 = getelementptr inbounds %struct.ObjectRen, ptr %83, i64 0, i32 11
  %105 = load i32, ptr %104, align 4, !tbaa !137
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %204

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.ObjectRen, ptr %83, i64 0, i32 19
  br label %109

109:                                              ; preds = %107, %196
  %110 = phi i16 [ %76, %107 ], [ %200, %196 ]
  %111 = phi i16 [ %77, %107 ], [ %199, %196 ]
  %112 = phi i16 [ %78, %107 ], [ %198, %196 ]
  %113 = phi i32 [ 0, %107 ], [ %201, %196 ]
  %114 = phi ptr [ %80, %107 ], [ %127, %196 ]
  %115 = phi ptr [ %81, %107 ], [ %197, %196 ]
  %116 = and i32 %113, 255
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %109
  %119 = load ptr, ptr %108, align 8, !tbaa !138
  %120 = lshr exact i32 %113, 8
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds %struct.VlakTableNode, ptr %119, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !139
  br label %126

124:                                              ; preds = %109
  %125 = getelementptr inbounds %struct.VlakRen, ptr %114, i64 1
  br label %126

126:                                              ; preds = %124, %118
  %127 = phi ptr [ %123, %118 ], [ %125, %124 ]
  %128 = getelementptr inbounds %struct.VlakRen, ptr %127, i64 0, i32 5
  %129 = load ptr, ptr %128, align 8, !tbaa !141
  %130 = call zeroext i8 @material_in_material(ptr noundef %129, ptr noundef %14) #17
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %196, label %132

132:                                              ; preds = %126
  %133 = load i32, ptr %84, align 8, !tbaa !133
  %134 = and i32 %133, %1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %196, label %136

136:                                              ; preds = %132
  %137 = load ptr, ptr %128, align 8, !tbaa !141
  %138 = icmp eq ptr %137, %115
  br i1 %138, label %149, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.Material, ptr %137, i64 0, i32 51
  %141 = load i32, ptr %140, align 4, !tbaa !143
  %142 = trunc i32 %141 to i16
  %143 = and i16 %142, 8192
  %144 = and i16 %142, 512
  %145 = getelementptr inbounds %struct.Material, ptr %137, i64 0, i32 2
  %146 = load i16, ptr %145, align 8, !tbaa !147
  %147 = icmp eq i16 %146, 3
  %148 = zext i1 %147 to i16
  br label %149

149:                                              ; preds = %136, %139
  %150 = phi ptr [ %137, %139 ], [ %115, %136 ]
  %151 = phi i16 [ %143, %139 ], [ %112, %136 ]
  %152 = phi i16 [ %144, %139 ], [ %111, %136 ]
  %153 = phi i16 [ %148, %139 ], [ %110, %136 ]
  %154 = icmp eq i16 %151, 0
  %155 = icmp eq i16 %153, 0
  %156 = select i1 %154, i1 %155, i1 false
  %157 = icmp eq i16 %152, 0
  %158 = select i1 %156, i1 %157, i1 false
  br i1 %158, label %159, label %196

159:                                              ; preds = %149
  %160 = load ptr, ptr %127, align 8, !tbaa !152
  %161 = getelementptr inbounds %struct.VlakRen, ptr %127, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !153
  %163 = getelementptr inbounds %struct.VlakRen, ptr %127, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !154
  %165 = getelementptr inbounds %struct.VlakRen, ptr %127, i64 0, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !155
  %167 = getelementptr inbounds %struct.VertRen, ptr %160, i64 0, i32 5
  %168 = load i32, ptr %167, align 8, !tbaa !156
  %169 = call fastcc i32 @zbuf_part_project(ptr noundef nonnull %5, i32 noundef %168, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %160, ptr noundef nonnull %10) #19
  %170 = getelementptr inbounds %struct.VertRen, ptr %162, i64 0, i32 5
  %171 = load i32, ptr %170, align 8, !tbaa !156
  %172 = call fastcc i32 @zbuf_part_project(ptr noundef nonnull %5, i32 noundef %171, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %162, ptr noundef nonnull %11) #19
  %173 = getelementptr inbounds %struct.VertRen, ptr %164, i64 0, i32 5
  %174 = load i32, ptr %173, align 8, !tbaa !156
  %175 = call fastcc i32 @zbuf_part_project(ptr noundef nonnull %5, i32 noundef %174, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %164, ptr noundef nonnull %12) #19
  %176 = and i32 %172, %169
  %177 = and i32 %176, %175
  %178 = icmp eq ptr %166, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %159
  %180 = getelementptr inbounds %struct.VertRen, ptr %166, i64 0, i32 5
  %181 = load i32, ptr %180, align 8, !tbaa !156
  %182 = call fastcc i32 @zbuf_part_project(ptr noundef nonnull %5, i32 noundef %181, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %166, ptr noundef nonnull %13) #19
  %183 = and i32 %182, %177
  br label %184

184:                                              ; preds = %179, %159
  %185 = phi i32 [ %183, %179 ], [ %177, %159 ]
  %186 = and i32 %185, 65535
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %184
  %189 = call i32 @testclip(ptr noundef nonnull %10) #19, !range !65
  %190 = call i32 @testclip(ptr noundef nonnull %11) #19, !range !65
  %191 = call i32 @testclip(ptr noundef nonnull %12) #19, !range !65
  %192 = add nuw nsw i32 %113, 1
  call void @zbufclip(ptr noundef nonnull %6, i32 noundef %79, i32 noundef %192, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, i32 noundef %189, i32 noundef %190, i32 noundef %191) #19
  br i1 %178, label %196, label %193

193:                                              ; preds = %188
  %194 = call i32 @testclip(ptr noundef nonnull %13) #19, !range !65
  %195 = add nuw nsw i32 %113, 134217729
  call void @zbufclip(ptr noundef nonnull %6, i32 noundef %79, i32 noundef %195, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %189, i32 noundef %191, i32 noundef %194) #19
  br label %196

196:                                              ; preds = %132, %184, %193, %188, %126, %149
  %197 = phi ptr [ %150, %149 ], [ %115, %126 ], [ %150, %188 ], [ %150, %193 ], [ %150, %184 ], [ null, %132 ]
  %198 = phi i16 [ %151, %149 ], [ %112, %126 ], [ 0, %188 ], [ 0, %193 ], [ 0, %184 ], [ 1, %132 ]
  %199 = phi i16 [ %152, %149 ], [ %111, %126 ], [ 0, %188 ], [ 0, %193 ], [ 0, %184 ], [ %111, %132 ]
  %200 = phi i16 [ %153, %149 ], [ %110, %126 ], [ 0, %188 ], [ 0, %193 ], [ 0, %184 ], [ %110, %132 ]
  %201 = add nuw nsw i32 %113, 1
  %202 = load i32, ptr %104, align 4, !tbaa !137
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %109, label %204, !llvm.loop !239

204:                                              ; preds = %196, %101, %96, %74
  %205 = phi ptr [ %81, %96 ], [ %81, %74 ], [ %81, %101 ], [ %197, %196 ]
  %206 = phi ptr [ %80, %96 ], [ %80, %74 ], [ %80, %101 ], [ %127, %196 ]
  %207 = phi i16 [ %78, %96 ], [ %78, %74 ], [ %78, %101 ], [ %198, %196 ]
  %208 = phi i16 [ %77, %96 ], [ %77, %74 ], [ %77, %101 ], [ %199, %196 ]
  %209 = phi i16 [ %76, %96 ], [ %76, %74 ], [ %76, %101 ], [ %200, %196 ]
  %210 = add nuw nsw i32 %79, 1
  %211 = load ptr, ptr %75, align 8, !tbaa !42
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %74, !llvm.loop !240

213:                                              ; preds = %204, %71
  call void @zbuf_free_span(ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 6144, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @zbuffill_sss(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 !PGOFuncName !241 {
  %8 = load i32, ptr %0, align 8, !tbaa !34
  tail call fastcc void @zbuf_init_span(ptr noundef nonnull %0) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5) #19
  %9 = icmp eq ptr %6, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %5, ptr noundef nonnull %6) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %3) #19
  br label %12

11:                                               ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %3) #19
  br label %12

12:                                               ; preds = %11, %10
  %13 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %14, null
  br i1 %15, label %133, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  %19 = icmp eq ptr %18, null
  br i1 %19, label %133, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !68
  %23 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !69
  %25 = tail call i32 @llvm.smax.i32(i32 %22, i32 %24)
  %26 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !70
  %28 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !71
  %30 = tail call i32 @llvm.smin.i32(i32 %27, i32 %29)
  %31 = icmp slt i32 %30, %25
  br i1 %31, label %133, label %32

32:                                               ; preds = %20
  %33 = load float, ptr %3, align 4, !tbaa !49
  %34 = load float, ptr %4, align 4, !tbaa !49
  %35 = fsub float %33, %34
  %36 = load float, ptr %5, align 4, !tbaa !49
  %37 = fsub float %34, %36
  %38 = getelementptr inbounds float, ptr %3, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !49
  %40 = getelementptr inbounds float, ptr %4, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !49
  %42 = fsub float %39, %41
  %43 = getelementptr inbounds float, ptr %5, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !49
  %45 = fsub float %41, %44
  %46 = fneg float %42
  %47 = fmul float %37, %46
  %48 = tail call float @llvm.fmuladd.f32(float %35, float %45, float %47)
  %49 = fcmp oeq float %48, 0.000000e+00
  br i1 %49, label %133, label %50

50:                                               ; preds = %32
  %51 = getelementptr inbounds float, ptr %3, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !49
  %53 = getelementptr inbounds float, ptr %4, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !49
  %55 = fsub float %52, %54
  %56 = getelementptr inbounds float, ptr %5, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !49
  %58 = fsub float %54, %57
  %59 = fneg float %35
  %60 = fmul float %58, %59
  %61 = tail call float @llvm.fmuladd.f32(float %55, float %37, float %60)
  %62 = fneg float %55
  %63 = fmul float %45, %62
  %64 = tail call float @llvm.fmuladd.f32(float %42, float %58, float %63)
  %65 = fpext float %64 to double
  %66 = fneg double %65
  %67 = fpext float %48 to double
  %68 = fdiv double %66, %67
  %69 = fpext float %61 to double
  %70 = fneg double %69
  %71 = fdiv double %70, %67
  %72 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  %73 = load ptr, ptr %72, align 8, !tbaa !43
  %74 = add nsw i32 %30, %25
  %75 = sdiv i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, ptr %73, i64 %76
  %78 = load float, ptr %77, align 4, !tbaa !49
  %79 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  %80 = load ptr, ptr %79, align 8, !tbaa !44
  %81 = getelementptr inbounds float, ptr %80, i64 %76
  %82 = load float, ptr %81, align 4, !tbaa !49
  %83 = fcmp olt float %78, %82
  %84 = sext i32 %30 to i64
  %85 = getelementptr inbounds float, ptr %80, i64 %84
  %86 = getelementptr inbounds float, ptr %73, i64 %84
  %87 = select i1 %83, ptr %85, ptr %86
  %88 = select i1 %83, ptr %86, ptr %85
  %89 = sitofp i32 %30 to double
  %90 = fmul float %39, %61
  %91 = tail call float @llvm.fmuladd.f32(float %64, float %33, float %90)
  %92 = fdiv float %91, %48
  %93 = fadd float %52, %92
  %94 = fpext float %93 to double
  %95 = tail call double @llvm.fmuladd.f64(double %89, double %71, double %94)
  %96 = add nsw i32 %8, -1
  %97 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 33
  %98 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 32
  br label %99

99:                                               ; preds = %50, %127
  %100 = phi double [ %95, %50 ], [ %128, %127 ]
  %101 = phi i32 [ %30, %50 ], [ %129, %127 ]
  %102 = phi ptr [ %87, %50 ], [ %131, %127 ]
  %103 = phi ptr [ %88, %50 ], [ %130, %127 ]
  %104 = load float, ptr %103, align 4, !tbaa !49
  %105 = tail call float @llvm.floor.f32(float %104)
  %106 = fptosi float %105 to i32
  %107 = load float, ptr %102, align 4, !tbaa !49
  %108 = tail call float @llvm.floor.f32(float %107)
  %109 = fptosi float %108 to i32
  %110 = icmp sgt i32 %8, %109
  %111 = select i1 %110, i32 %109, i32 %96
  %112 = tail call i32 @llvm.smax.i32(i32 %106, i32 -1)
  %113 = icmp slt i32 %112, %111
  br i1 %113, label %114, label %127

114:                                              ; preds = %99
  %115 = add nsw i32 %112, 1
  %116 = sitofp i32 %115 to double
  %117 = tail call double @llvm.fmuladd.f64(double %116, double %68, double %100)
  br label %118

118:                                              ; preds = %114, %118
  %119 = phi i32 [ %124, %118 ], [ %115, %114 ]
  %120 = phi double [ %125, %118 ], [ %117, %114 ]
  %121 = load ptr, ptr %97, align 8, !tbaa !233
  %122 = load ptr, ptr %98, align 8, !tbaa !232
  %123 = fptosi double %120 to i32
  tail call void %121(ptr noundef %122, i32 noundef %1, i32 noundef %2, i32 noundef %119, i32 noundef %101, i32 noundef %123) #17
  %124 = add i32 %119, 1
  %125 = fadd double %68, %120
  %126 = icmp eq i32 %119, %111
  br i1 %126, label %127, label %118, !llvm.loop !242

127:                                              ; preds = %118, %99
  %128 = fsub double %100, %71
  %129 = add nsw i32 %101, -1
  %130 = getelementptr inbounds float, ptr %103, i64 -1
  %131 = getelementptr inbounds float, ptr %102, i64 -1
  %132 = icmp sgt i32 %101, %25
  br i1 %132, label %99, label %133, !llvm.loop !243

133:                                              ; preds = %127, %32, %20, %12, %16
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @material_in_material(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @antialias_tagbuf(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #7 {
  %4 = icmp sgt i32 %1, 2
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = sext i32 %0 to i64
  %7 = icmp sgt i32 %0, 2
  %8 = zext nneg i32 %1 to i64
  br label %15

9:                                                ; preds = %52, %3
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %59

11:                                               ; preds = %9
  %12 = icmp sgt i32 %0, 1
  %13 = sext i32 %0 to i64
  %14 = zext nneg i32 %0 to i64
  br label %55

15:                                               ; preds = %5, %52
  %16 = phi i64 [ 2, %5 ], [ %53, %52 ]
  br i1 %7, label %17, label %52

17:                                               ; preds = %15
  %18 = add nsw i64 %16, -2
  %19 = mul nsw i64 %18, %6
  %20 = getelementptr inbounds i8, ptr %2, i64 %19
  %21 = getelementptr inbounds i8, ptr %20, i64 %6
  %22 = getelementptr inbounds i8, ptr %21, i64 %6
  br label %23

23:                                               ; preds = %17, %47
  %24 = phi ptr [ %49, %47 ], [ %20, %17 ]
  %25 = phi ptr [ %28, %47 ], [ %21, %17 ]
  %26 = phi ptr [ %50, %47 ], [ %22, %17 ]
  %27 = phi i32 [ %48, %47 ], [ 2, %17 ]
  %28 = getelementptr inbounds i8, ptr %25, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !244
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %23
  %32 = load i8, ptr %25, align 1, !tbaa !244
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %25, i64 2
  %36 = load i8, ptr %35, align 1, !tbaa !244
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %24, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !244
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %26, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !244
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38, %34, %31
  store i8 -128, ptr %28, align 1, !tbaa !244
  br label %47

47:                                               ; preds = %23, %46, %42
  %48 = add nuw nsw i32 %27, 1
  %49 = getelementptr inbounds i8, ptr %24, i64 1
  %50 = getelementptr inbounds i8, ptr %26, i64 1
  %51 = icmp eq i32 %48, %0
  br i1 %51, label %52, label %23, !llvm.loop !245

52:                                               ; preds = %47, %15
  %53 = add nuw nsw i64 %16, 1
  %54 = icmp eq i64 %53, %8
  br i1 %54, label %9, label %15, !llvm.loop !246

55:                                               ; preds = %11, %166
  %56 = phi ptr [ %2, %11 ], [ %167, %166 ]
  %57 = phi i32 [ 0, %11 ], [ %168, %166 ]
  %58 = getelementptr inbounds i8, ptr %56, i64 1
  br i1 %12, label %70, label %166

59:                                               ; preds = %166, %9
  %60 = icmp sgt i32 %0, 0
  br i1 %60, label %61, label %170

61:                                               ; preds = %59
  %62 = zext nneg i32 %0 to i64
  %63 = getelementptr i8, ptr %2, i64 %62
  %64 = icmp sgt i32 %1, 1
  %65 = sub nsw i32 0, %0
  %66 = sext i32 %65 to i64
  %67 = zext nneg i32 %0 to i64
  %68 = sext i32 %1 to i64
  %69 = zext nneg i32 %1 to i64
  br label %175

70:                                               ; preds = %55, %162
  %71 = phi i64 [ %163, %162 ], [ 1, %55 ]
  %72 = phi i32 [ %75, %162 ], [ %0, %55 ]
  %73 = phi ptr [ %164, %162 ], [ %58, %55 ]
  %74 = phi ptr [ %73, %162 ], [ %56, %55 ]
  %75 = add i32 %72, -1
  %76 = load i8, ptr %73, align 1, !tbaa !244
  %77 = icmp eq i8 %76, -128
  br i1 %77, label %78, label %162

78:                                               ; preds = %70
  %79 = getelementptr inbounds i8, ptr %74, i64 2
  %80 = load i8, ptr %79, align 1, !tbaa !244
  %81 = icmp eq i8 %80, -128
  br i1 %81, label %82, label %162

82:                                               ; preds = %78
  %83 = load i8, ptr %74, align 1, !tbaa !244
  %84 = add nuw nsw i64 %71, 1
  %85 = icmp slt i64 %84, %13
  %86 = trunc i64 %84 to i32
  br i1 %85, label %87, label %107

87:                                               ; preds = %82
  %88 = zext i32 %75 to i64
  %89 = getelementptr inbounds i8, ptr %73, i64 1
  %90 = load i8, ptr %89, align 1, !tbaa !244
  %91 = icmp eq i8 %90, -128
  br i1 %91, label %96, label %103

92:                                               ; preds = %96
  %93 = getelementptr inbounds i8, ptr %73, i64 %98
  %94 = load i8, ptr %93, align 1, !tbaa !244
  %95 = icmp eq i8 %94, -128
  br i1 %95, label %96, label %100, !llvm.loop !247

96:                                               ; preds = %87, %92
  %97 = phi i64 [ %98, %92 ], [ 1, %87 ]
  %98 = add nuw nsw i64 %97, 1
  %99 = icmp eq i64 %98, %88
  br i1 %99, label %162, label %92, !llvm.loop !247

100:                                              ; preds = %92
  %101 = add nuw nsw i64 %98, %71
  %102 = trunc i64 %101 to i32
  br label %103

103:                                              ; preds = %100, %87
  %104 = phi i64 [ %98, %100 ], [ 1, %87 ]
  %105 = phi i32 [ %102, %100 ], [ %86, %87 ]
  %106 = trunc i64 %104 to i32
  br label %107

107:                                              ; preds = %103, %82
  %108 = phi i32 [ 1, %82 ], [ %106, %103 ]
  %109 = phi i32 [ %86, %82 ], [ %105, %103 ]
  %110 = icmp eq i32 %109, %0
  br i1 %110, label %162, label %111

111:                                              ; preds = %107
  %112 = zext nneg i32 %108 to i64
  %113 = getelementptr inbounds i8, ptr %73, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !244
  %115 = add nuw nsw i32 %108, 1
  %116 = zext i8 %83 to i32
  %117 = zext i8 %114 to i32
  %118 = tail call i32 @llvm.umax.i32(i32 %108, i32 1)
  %119 = zext i32 %118 to i64
  %120 = add nuw nsw i64 %119, 1
  %121 = and i64 %120, 8589934590
  %122 = add nsw i64 %119, -1
  %123 = insertelement <2 x i64> poison, i64 %122, i64 0
  %124 = shufflevector <2 x i64> %123, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %125

125:                                              ; preds = %158, %111
  %126 = phi i64 [ 0, %111 ], [ %159, %158 ]
  %127 = phi <2 x i64> [ <i64 0, i64 1>, %111 ], [ %160, %158 ]
  %128 = icmp ule <2 x i64> %127, %124
  %129 = add nuw nsw <2 x i64> %127, <i64 1, i64 1>
  %130 = extractelement <2 x i1> %128, i64 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %125
  %132 = bitcast <2 x i64> %129 to <4 x i32>
  %133 = extractelement <4 x i32> %132, i64 0
  %134 = shl i32 %133, 8
  %135 = sdiv i32 %134, %115
  %136 = sub nsw i32 255, %135
  %137 = mul nsw i32 %135, %117
  %138 = mul nsw i32 %136, %116
  %139 = add nsw i32 %138, %137
  %140 = lshr i32 %139, 8
  %141 = getelementptr inbounds i8, ptr %73, i64 %126
  %142 = trunc i32 %140 to i8
  store i8 %142, ptr %141, align 1, !tbaa !244
  br label %143

143:                                              ; preds = %131, %125
  %144 = extractelement <2 x i1> %128, i64 1
  br i1 %144, label %145, label %158

145:                                              ; preds = %143
  %146 = bitcast <2 x i64> %129 to <4 x i32>
  %147 = extractelement <4 x i32> %146, i64 2
  %148 = shl i32 %147, 8
  %149 = sdiv i32 %148, %115
  %150 = sub nsw i32 255, %149
  %151 = mul nsw i32 %149, %117
  %152 = mul nsw i32 %150, %116
  %153 = add nsw i32 %152, %151
  %154 = or disjoint i64 %126, 1
  %155 = lshr i32 %153, 8
  %156 = getelementptr inbounds i8, ptr %73, i64 %154
  %157 = trunc i32 %155 to i8
  store i8 %157, ptr %156, align 1, !tbaa !244
  br label %158

158:                                              ; preds = %145, %143
  %159 = add i64 %126, 2
  %160 = add <2 x i64> %127, <i64 2, i64 2>
  %161 = icmp eq i64 %159, %121
  br i1 %161, label %162, label %125, !llvm.loop !248

162:                                              ; preds = %96, %158, %70, %78, %107
  %163 = add nuw nsw i64 %71, 1
  %164 = getelementptr inbounds i8, ptr %73, i64 1
  %165 = icmp eq i64 %163, %14
  br i1 %165, label %166, label %70, !llvm.loop !249

166:                                              ; preds = %162, %55
  %167 = phi ptr [ %58, %55 ], [ %164, %162 ]
  %168 = add nuw nsw i32 %57, 1
  %169 = icmp eq i32 %168, %1
  br i1 %169, label %59, label %55, !llvm.loop !250

170:                                              ; preds = %279, %59
  br i1 %4, label %171, label %322

171:                                              ; preds = %170
  %172 = sext i32 %0 to i64
  %173 = icmp sgt i32 %0, 2
  %174 = zext nneg i32 %1 to i64
  br label %282

175:                                              ; preds = %61, %279
  %176 = phi i64 [ 0, %61 ], [ %280, %279 ]
  br i1 %64, label %177, label %279

177:                                              ; preds = %175
  %178 = getelementptr i8, ptr %63, i64 %176
  br label %179

179:                                              ; preds = %177, %275
  %180 = phi i64 [ 1, %177 ], [ %276, %275 ]
  %181 = phi i32 [ %1, %177 ], [ %183, %275 ]
  %182 = phi ptr [ %178, %177 ], [ %277, %275 ]
  %183 = add i32 %181, -1
  %184 = load i8, ptr %182, align 1, !tbaa !244
  %185 = icmp eq i8 %184, -128
  br i1 %185, label %186, label %275

186:                                              ; preds = %179
  %187 = getelementptr inbounds i8, ptr %182, i64 %62
  %188 = load i8, ptr %187, align 1, !tbaa !244
  %189 = icmp eq i8 %188, -128
  br i1 %189, label %190, label %275

190:                                              ; preds = %186
  %191 = getelementptr inbounds i8, ptr %182, i64 %66
  %192 = load i8, ptr %191, align 1, !tbaa !244
  %193 = add nuw nsw i64 %180, 1
  %194 = icmp slt i64 %193, %68
  %195 = trunc i64 %193 to i32
  br i1 %194, label %196, label %217

196:                                              ; preds = %190
  %197 = zext i32 %183 to i64
  %198 = getelementptr inbounds i8, ptr %182, i64 %67
  %199 = load i8, ptr %198, align 1, !tbaa !244
  %200 = icmp eq i8 %199, -128
  br i1 %200, label %206, label %213

201:                                              ; preds = %206
  %202 = mul nsw i64 %208, %67
  %203 = getelementptr inbounds i8, ptr %182, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !244
  %205 = icmp eq i8 %204, -128
  br i1 %205, label %206, label %210, !llvm.loop !251

206:                                              ; preds = %196, %201
  %207 = phi i64 [ %208, %201 ], [ 1, %196 ]
  %208 = add nuw nsw i64 %207, 1
  %209 = icmp eq i64 %208, %197
  br i1 %209, label %275, label %201, !llvm.loop !251

210:                                              ; preds = %201
  %211 = add nuw nsw i64 %208, %180
  %212 = trunc i64 %211 to i32
  br label %213

213:                                              ; preds = %210, %196
  %214 = phi i64 [ %208, %210 ], [ 1, %196 ]
  %215 = phi i32 [ %212, %210 ], [ %195, %196 ]
  %216 = trunc i64 %214 to i32
  br label %217

217:                                              ; preds = %213, %190
  %218 = phi i32 [ 1, %190 ], [ %216, %213 ]
  %219 = phi i32 [ %195, %190 ], [ %215, %213 ]
  %220 = icmp eq i32 %219, %1
  br i1 %220, label %275, label %221

221:                                              ; preds = %217
  %222 = mul nsw i32 %218, %0
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, ptr %182, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !244
  %226 = add nuw nsw i32 %218, 1
  %227 = zext i8 %192 to i32
  %228 = zext i8 %225 to i32
  %229 = tail call i32 @llvm.umax.i32(i32 %218, i32 1)
  %230 = zext i32 %229 to i64
  %231 = add nuw nsw i64 %230, 1
  %232 = and i64 %231, 8589934590
  %233 = add nsw i64 %230, -1
  %234 = insertelement <2 x i64> poison, i64 %233, i64 0
  %235 = shufflevector <2 x i64> %234, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %236

236:                                              ; preds = %271, %221
  %237 = phi i64 [ 0, %221 ], [ %272, %271 ]
  %238 = phi <2 x i64> [ <i64 0, i64 1>, %221 ], [ %273, %271 ]
  %239 = icmp ule <2 x i64> %238, %235
  %240 = add nuw nsw <2 x i64> %238, <i64 1, i64 1>
  %241 = extractelement <2 x i1> %239, i64 0
  br i1 %241, label %242, label %255

242:                                              ; preds = %236
  %243 = bitcast <2 x i64> %240 to <4 x i32>
  %244 = extractelement <4 x i32> %243, i64 0
  %245 = shl i32 %244, 8
  %246 = sdiv i32 %245, %226
  %247 = sub nsw i32 255, %246
  %248 = mul nsw i32 %246, %228
  %249 = mul nsw i32 %247, %227
  %250 = add nsw i32 %249, %248
  %251 = mul nsw i64 %237, %67
  %252 = lshr i32 %250, 8
  %253 = getelementptr inbounds i8, ptr %182, i64 %251
  %254 = trunc i32 %252 to i8
  store i8 %254, ptr %253, align 1, !tbaa !244
  br label %255

255:                                              ; preds = %242, %236
  %256 = extractelement <2 x i1> %239, i64 1
  br i1 %256, label %257, label %271

257:                                              ; preds = %255
  %258 = bitcast <2 x i64> %240 to <4 x i32>
  %259 = extractelement <4 x i32> %258, i64 2
  %260 = shl i32 %259, 8
  %261 = sdiv i32 %260, %226
  %262 = sub nsw i32 255, %261
  %263 = mul nsw i32 %261, %228
  %264 = mul nsw i32 %262, %227
  %265 = or disjoint i64 %237, 1
  %266 = add nsw i32 %264, %263
  %267 = mul nsw i64 %265, %67
  %268 = lshr i32 %266, 8
  %269 = getelementptr inbounds i8, ptr %182, i64 %267
  %270 = trunc i32 %268 to i8
  store i8 %270, ptr %269, align 1, !tbaa !244
  br label %271

271:                                              ; preds = %257, %255
  %272 = add i64 %237, 2
  %273 = add <2 x i64> %238, <i64 2, i64 2>
  %274 = icmp eq i64 %272, %232
  br i1 %274, label %275, label %236, !llvm.loop !252

275:                                              ; preds = %206, %271, %179, %186, %217
  %276 = add nuw nsw i64 %180, 1
  %277 = getelementptr inbounds i8, ptr %182, i64 %62
  %278 = icmp eq i64 %276, %69
  br i1 %278, label %279, label %179, !llvm.loop !253

279:                                              ; preds = %275, %175
  %280 = add nuw nsw i64 %176, 1
  %281 = icmp eq i64 %280, %62
  br i1 %281, label %170, label %175, !llvm.loop !254

282:                                              ; preds = %171, %319
  %283 = phi i64 [ 2, %171 ], [ %320, %319 ]
  br i1 %173, label %284, label %319

284:                                              ; preds = %282
  %285 = add nsw i64 %283, -2
  %286 = mul nsw i64 %285, %172
  %287 = getelementptr inbounds i8, ptr %2, i64 %286
  %288 = getelementptr inbounds i8, ptr %287, i64 %172
  %289 = getelementptr inbounds i8, ptr %288, i64 %172
  br label %290

290:                                              ; preds = %284, %314
  %291 = phi ptr [ %316, %314 ], [ %287, %284 ]
  %292 = phi ptr [ %295, %314 ], [ %288, %284 ]
  %293 = phi ptr [ %317, %314 ], [ %289, %284 ]
  %294 = phi i32 [ %315, %314 ], [ 2, %284 ]
  %295 = getelementptr inbounds i8, ptr %292, i64 1
  %296 = load i8, ptr %295, align 1, !tbaa !244
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %298, label %314

298:                                              ; preds = %290
  %299 = load i8, ptr %292, align 1, !tbaa !244
  %300 = icmp ugt i8 %299, 1
  br i1 %300, label %313, label %301

301:                                              ; preds = %298
  %302 = getelementptr inbounds i8, ptr %292, i64 2
  %303 = load i8, ptr %302, align 1, !tbaa !244
  %304 = icmp ugt i8 %303, 1
  br i1 %304, label %313, label %305

305:                                              ; preds = %301
  %306 = getelementptr inbounds i8, ptr %291, i64 1
  %307 = load i8, ptr %306, align 1, !tbaa !244
  %308 = icmp ugt i8 %307, 1
  br i1 %308, label %313, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds i8, ptr %293, i64 1
  %311 = load i8, ptr %310, align 1, !tbaa !244
  %312 = icmp ugt i8 %311, 1
  br i1 %312, label %313, label %314

313:                                              ; preds = %309, %305, %301, %298
  store i8 1, ptr %295, align 1, !tbaa !244
  br label %314

314:                                              ; preds = %290, %313, %309
  %315 = add nuw nsw i32 %294, 1
  %316 = getelementptr inbounds i8, ptr %291, i64 1
  %317 = getelementptr inbounds i8, ptr %293, i64 1
  %318 = icmp eq i32 %315, %0
  br i1 %318, label %319, label %290, !llvm.loop !255

319:                                              ; preds = %314, %282
  %320 = add nuw nsw i64 %283, 1
  %321 = icmp eq i64 %320, %174
  br i1 %321, label %322, label %282, !llvm.loop !256

322:                                              ; preds = %319, %170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @RE_zbuf_accumulate_vecblur(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.ZSpan, align 8
  %9 = alloca [3 x float], align 8
  %10 = alloca [3 x float], align 8
  %11 = alloca [3 x float], align 8
  %12 = alloca [3 x float], align 4
  %13 = alloca [4 x float], align 16
  %14 = alloca %struct.DrawBufPixel, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #18
  %15 = getelementptr inbounds %struct.NodeBlurData, ptr %0, i64 0, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !257
  %17 = sitofp i16 %16 to float
  %18 = fmul float %17, %17
  %19 = getelementptr inbounds %struct.NodeBlurData, ptr %0, i64 0, i32 2
  %20 = load i16, ptr %19, align 4, !tbaa !259
  call void @zbuf_alloc_span(ptr noundef nonnull %8, i32 noundef %1, i32 noundef %2, float noundef 1.000000e+00) #19
  %21 = insertelement <2 x i32> poison, i32 %1, i64 0
  %22 = insertelement <2 x i32> %21, i32 %2, i64 1
  %23 = sitofp <2 x i32> %22 to <2 x float>
  %24 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 12
  %25 = fmul <2 x float> %23, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %25, ptr %24, align 8, !tbaa !49
  %26 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 14
  store <2 x float> zeroinitializer, ptr %26, align 8, !tbaa !49
  %27 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !42
  %28 = sext i32 %1 to i64
  %29 = shl nsw i64 %28, 2
  %30 = sext i32 %2 to i64
  %31 = mul i64 %29, %30
  %32 = tail call ptr %27(i64 noundef %31, ptr noundef nonnull @.str.5) #17
  %33 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 16
  store ptr %32, ptr %33, align 8, !tbaa !125
  %34 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !42
  %35 = mul nsw i32 %2, %1
  %36 = sext i32 %35 to i64
  %37 = tail call ptr %34(i64 noundef %36, ptr noundef nonnull @.str.6) #17
  %38 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !42
  %39 = shl nsw i64 %28, 4
  %40 = mul i64 %39, %30
  %41 = tail call ptr %38(i64 noundef %40, ptr noundef nonnull @.str.7) #17
  %42 = getelementptr inbounds %struct.ZSpan, ptr %8, i64 0, i32 19
  store ptr %41, ptr %42, align 8, !tbaa !128
  %43 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !42
  %44 = tail call ptr %43(i64 noundef %31, ptr noundef nonnull @.str.8) #17
  %45 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !42
  %46 = tail call ptr %45(i64 noundef %31, ptr noundef nonnull @.str.9) #17
  %47 = shl nsw i32 %1, 2
  %48 = mul nsw i32 %47, %2
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %7, %57
  %51 = phi ptr [ %60, %57 ], [ %5, %7 ]
  %52 = phi i32 [ %58, %57 ], [ 0, %7 ]
  %53 = phi i32 [ %59, %57 ], [ %48, %7 ]
  %54 = load float, ptr %51, align 4, !tbaa !49
  %55 = fcmp oeq float %54, 1.000000e+04
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store float 0.000000e+00, ptr %51, align 4, !tbaa !49
  br label %57

57:                                               ; preds = %50, %56
  %58 = phi i32 [ 1, %56 ], [ %52, %50 ]
  %59 = add nsw i32 %53, -1
  %60 = getelementptr inbounds float, ptr %51, i64 1
  %61 = icmp sgt i32 %53, 1
  br i1 %61, label %50, label %62, !llvm.loop !260

62:                                               ; preds = %57
  %63 = icmp eq i32 %58, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %66

66:                                               ; preds = %7, %64, %62
  %67 = getelementptr inbounds %struct.NodeBlurData, ptr %0, i64 0, i32 4
  %68 = load i16, ptr %67, align 4, !tbaa !261
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %110, label %70

70:                                               ; preds = %66
  %71 = sitofp i16 %68 to float
  %72 = fmul float %71, %71
  %73 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !42
  %74 = tail call ptr %73(i64 noundef %40, ptr noundef nonnull @.str.11) #17
  %75 = shl nsw i32 %1, 1
  %76 = mul nsw i32 %75, %2
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %110

78:                                               ; preds = %70, %103
  %79 = phi ptr [ %107, %103 ], [ %5, %70 ]
  %80 = phi ptr [ %108, %103 ], [ %74, %70 ]
  %81 = phi i32 [ %106, %103 ], [ %76, %70 ]
  %82 = load float, ptr %79, align 4, !tbaa !49
  %83 = fcmp oeq float %82, 0.000000e+00
  %84 = getelementptr inbounds float, ptr %79, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !49
  %86 = fcmp oeq float %85, 0.000000e+00
  %87 = select i1 %83, i1 %86, i1 false
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  store float %82, ptr %80, align 4, !tbaa !49
  %89 = load float, ptr %84, align 4, !tbaa !49
  br label %103

90:                                               ; preds = %78
  %91 = fmul float %85, %85
  %92 = tail call float @llvm.fmuladd.f32(float %82, float %82, float %91)
  %93 = fcmp ugt float %92, %72
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  store float 0.000000e+00, ptr %80, align 4, !tbaa !49
  br label %103

95:                                               ; preds = %90
  %96 = getelementptr inbounds float, ptr %79, i64 1
  %97 = tail call float @llvm.sqrt.f32(float %92)
  %98 = fdiv float %71, %97
  %99 = fsub float 1.000000e+00, %98
  %100 = fmul float %99, %82
  store float %100, ptr %80, align 4, !tbaa !49
  %101 = load float, ptr %96, align 4, !tbaa !49
  %102 = fmul float %99, %101
  br label %103

103:                                              ; preds = %94, %95, %88
  %104 = phi float [ 0.000000e+00, %94 ], [ %102, %95 ], [ %89, %88 ]
  %105 = getelementptr inbounds float, ptr %80, i64 1
  store float %104, ptr %105, align 4, !tbaa !49
  %106 = add nsw i32 %81, -1
  %107 = getelementptr inbounds float, ptr %79, i64 2
  %108 = getelementptr inbounds float, ptr %80, i64 2
  %109 = icmp sgt i32 %81, 1
  br i1 %109, label %78, label %110, !llvm.loop !262

110:                                              ; preds = %103, %70, %66
  %111 = phi ptr [ null, %66 ], [ %5, %70 ], [ %5, %103 ]
  %112 = phi ptr [ %5, %66 ], [ %74, %70 ], [ %74, %103 ]
  %113 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !42
  %114 = add i32 %1, 1
  %115 = sext i32 %114 to i64
  %116 = shl nsw i64 %115, 4
  %117 = add i32 %2, 1
  %118 = sext i32 %117 to i64
  %119 = mul i64 %116, %118
  %120 = tail call ptr %113(i64 noundef %119, ptr noundef nonnull @.str.12) #17
  %121 = icmp slt i32 %2, 0
  br i1 %121, label %297, label %122

122:                                              ; preds = %110
  %123 = icmp slt i32 %1, 0
  %124 = icmp eq i16 %16, 0
  br label %125

125:                                              ; preds = %122, %293
  %126 = phi ptr [ %120, %122 ], [ %294, %293 ]
  %127 = phi i32 [ 0, %122 ], [ %295, %293 ]
  br i1 %123, label %293, label %128

128:                                              ; preds = %125
  %129 = icmp eq i32 %127, %2
  %130 = shl i32 %127, 2
  %131 = add i32 %130, -4
  %132 = select i1 %129, i32 %131, i32 %130
  %133 = mul nsw i32 %132, %1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, ptr %112, i64 %134
  %136 = icmp eq i32 %127, 0
  %137 = mul nsw i32 %131, %1
  %138 = select i1 %136, i32 0, i32 %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, ptr %112, i64 %139
  br label %141

141:                                              ; preds = %128, %290
  %142 = phi ptr [ %289, %290 ], [ %126, %128 ]
  %143 = phi ptr [ %287, %290 ], [ %140, %128 ]
  %144 = phi ptr [ %288, %290 ], [ %135, %128 ]
  %145 = phi i32 [ %291, %290 ], [ 0, %128 ]
  %146 = icmp eq i32 %145, 0
  %147 = icmp eq i32 %145, %1
  br label %148

148:                                              ; preds = %141, %286
  %149 = phi ptr [ %142, %141 ], [ %289, %286 ]
  %150 = phi ptr [ %143, %141 ], [ %287, %286 ]
  %151 = phi ptr [ %144, %141 ], [ %288, %286 ]
  %152 = phi i1 [ true, %141 ], [ false, %286 ]
  br i1 %146, label %201, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds float, ptr %150, i64 -4
  %155 = load float, ptr %154, align 4, !tbaa !49
  %156 = fcmp une float %155, 0.000000e+00
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds float, ptr %150, i64 -3
  %159 = load float, ptr %158, align 4, !tbaa !49
  %160 = fcmp une float %159, 0.000000e+00
  br i1 %160, label %161, label %165

161:                                              ; preds = %157, %153
  store float %155, ptr %149, align 4, !tbaa !49
  %162 = getelementptr inbounds float, ptr %150, i64 -3
  %163 = load float, ptr %162, align 4, !tbaa !49
  %164 = getelementptr inbounds float, ptr %149, i64 1
  store float %163, ptr %164, align 4, !tbaa !49
  br label %165

165:                                              ; preds = %161, %157
  %166 = phi i1 [ false, %161 ], [ true, %157 ]
  %167 = phi i32 [ 1, %161 ], [ 0, %157 ]
  %168 = getelementptr inbounds float, ptr %151, i64 -4
  %169 = load float, ptr %168, align 4, !tbaa !49
  %170 = fcmp une float %169, 0.000000e+00
  br i1 %170, label %175, label %171

171:                                              ; preds = %165
  %172 = getelementptr inbounds float, ptr %151, i64 -3
  %173 = load float, ptr %172, align 4, !tbaa !49
  %174 = fcmp une float %173, 0.000000e+00
  br i1 %174, label %175, label %201

175:                                              ; preds = %171, %165
  br i1 %166, label %176, label %180

176:                                              ; preds = %175
  store float %169, ptr %149, align 4, !tbaa !49
  %177 = getelementptr inbounds float, ptr %151, i64 -3
  %178 = load float, ptr %177, align 4, !tbaa !49
  %179 = getelementptr inbounds float, ptr %149, i64 1
  store float %178, ptr %179, align 4, !tbaa !49
  br label %201

180:                                              ; preds = %175
  %181 = fcmp olt float %169, 0.000000e+00
  %182 = fneg float %169
  %183 = select i1 %181, float %182, float %169
  %184 = getelementptr inbounds float, ptr %151, i64 -3
  %185 = load float, ptr %184, align 4, !tbaa !49
  %186 = fcmp olt float %185, 0.000000e+00
  %187 = fneg float %185
  %188 = select i1 %186, float %187, float %185
  %189 = fadd float %183, %188
  %190 = load <2 x float>, ptr %149, align 4, !tbaa !49
  %191 = fcmp olt <2 x float> %190, zeroinitializer
  %192 = fneg <2 x float> %190
  %193 = select <2 x i1> %191, <2 x float> %192, <2 x float> %190
  %194 = shufflevector <2 x float> %193, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %195 = fadd <2 x float> %193, %194
  %196 = extractelement <2 x float> %195, i64 0
  %197 = fcmp olt float %189, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %180
  %199 = getelementptr inbounds float, ptr %149, i64 1
  store float %169, ptr %149, align 4, !tbaa !49
  %200 = load float, ptr %184, align 4, !tbaa !49
  store float %200, ptr %199, align 4, !tbaa !49
  br label %201

201:                                              ; preds = %171, %180, %198, %176, %148
  %202 = phi i32 [ 1, %176 ], [ 1, %198 ], [ 1, %180 ], [ %167, %171 ], [ 0, %148 ]
  br i1 %147, label %272, label %203

203:                                              ; preds = %201
  %204 = load float, ptr %150, align 4, !tbaa !49
  %205 = fcmp une float %204, 0.000000e+00
  br i1 %205, label %210, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds float, ptr %150, i64 1
  %208 = load float, ptr %207, align 4, !tbaa !49
  %209 = fcmp une float %208, 0.000000e+00
  br i1 %209, label %210, label %237

210:                                              ; preds = %206, %203
  %211 = icmp eq i32 %202, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %210
  store float %204, ptr %149, align 4, !tbaa !49
  %213 = getelementptr inbounds float, ptr %150, i64 1
  %214 = load float, ptr %213, align 4, !tbaa !49
  %215 = getelementptr inbounds float, ptr %149, i64 1
  store float %214, ptr %215, align 4, !tbaa !49
  br label %237

216:                                              ; preds = %210
  %217 = fcmp olt float %204, 0.000000e+00
  %218 = fneg float %204
  %219 = select i1 %217, float %218, float %204
  %220 = getelementptr inbounds float, ptr %150, i64 1
  %221 = load float, ptr %220, align 4, !tbaa !49
  %222 = fcmp olt float %221, 0.000000e+00
  %223 = fneg float %221
  %224 = select i1 %222, float %223, float %221
  %225 = fadd float %219, %224
  %226 = load <2 x float>, ptr %149, align 4, !tbaa !49
  %227 = fcmp olt <2 x float> %226, zeroinitializer
  %228 = fneg <2 x float> %226
  %229 = select <2 x i1> %227, <2 x float> %228, <2 x float> %226
  %230 = shufflevector <2 x float> %229, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %231 = fadd <2 x float> %229, %230
  %232 = extractelement <2 x float> %231, i64 0
  %233 = fcmp olt float %225, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %216
  %235 = getelementptr inbounds float, ptr %149, i64 1
  store float %204, ptr %149, align 4, !tbaa !49
  %236 = load float, ptr %220, align 4, !tbaa !49
  store float %236, ptr %235, align 4, !tbaa !49
  br label %237

237:                                              ; preds = %212, %234, %216, %206
  %238 = phi i32 [ 1, %212 ], [ 1, %234 ], [ 1, %216 ], [ %202, %206 ]
  %239 = load float, ptr %151, align 4, !tbaa !49
  %240 = fcmp une float %239, 0.000000e+00
  br i1 %240, label %245, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds float, ptr %151, i64 1
  %243 = load float, ptr %242, align 4, !tbaa !49
  %244 = fcmp une float %243, 0.000000e+00
  br i1 %244, label %245, label %272

245:                                              ; preds = %241, %237
  %246 = icmp eq i32 %238, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %245
  store float %239, ptr %149, align 4, !tbaa !49
  %248 = getelementptr inbounds float, ptr %151, i64 1
  %249 = load float, ptr %248, align 4, !tbaa !49
  %250 = getelementptr inbounds float, ptr %149, i64 1
  store float %249, ptr %250, align 4, !tbaa !49
  br label %272

251:                                              ; preds = %245
  %252 = fcmp olt float %239, 0.000000e+00
  %253 = fneg float %239
  %254 = select i1 %252, float %253, float %239
  %255 = getelementptr inbounds float, ptr %151, i64 1
  %256 = load float, ptr %255, align 4, !tbaa !49
  %257 = fcmp olt float %256, 0.000000e+00
  %258 = fneg float %256
  %259 = select i1 %257, float %258, float %256
  %260 = fadd float %254, %259
  %261 = load <2 x float>, ptr %149, align 4, !tbaa !49
  %262 = fcmp olt <2 x float> %261, zeroinitializer
  %263 = fneg <2 x float> %261
  %264 = select <2 x i1> %262, <2 x float> %263, <2 x float> %261
  %265 = shufflevector <2 x float> %264, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %266 = fadd <2 x float> %264, %265
  %267 = extractelement <2 x float> %266, i64 0
  %268 = fcmp olt float %260, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %251
  %270 = getelementptr inbounds float, ptr %149, i64 1
  store float %239, ptr %149, align 4, !tbaa !49
  %271 = load float, ptr %255, align 4, !tbaa !49
  store float %271, ptr %270, align 4, !tbaa !49
  br label %272

272:                                              ; preds = %241, %251, %269, %247, %201
  br i1 %124, label %286, label %273

273:                                              ; preds = %272
  %274 = load <2 x float>, ptr %149, align 4, !tbaa !49
  %275 = fmul <2 x float> %274, %274
  %276 = extractelement <2 x float> %275, i64 1
  %277 = extractelement <2 x float> %274, i64 0
  %278 = tail call float @llvm.fmuladd.f32(float %277, float %277, float %276)
  %279 = fcmp ogt float %278, %18
  br i1 %279, label %280, label %286

280:                                              ; preds = %273
  %281 = tail call float @llvm.sqrt.f32(float %278)
  %282 = fdiv float %17, %281
  %283 = insertelement <2 x float> poison, float %282, i64 0
  %284 = shufflevector <2 x float> %283, <2 x float> poison, <2 x i32> zeroinitializer
  %285 = fmul <2 x float> %284, %274
  store <2 x float> %285, ptr %149, align 4, !tbaa !49
  br label %286

286:                                              ; preds = %273, %280, %272
  %287 = getelementptr inbounds float, ptr %150, i64 2
  %288 = getelementptr inbounds float, ptr %151, i64 2
  %289 = getelementptr inbounds float, ptr %149, i64 2
  br i1 %152, label %148, label %290, !llvm.loop !263

290:                                              ; preds = %286
  %291 = add nuw i32 %145, 1
  %292 = icmp eq i32 %145, %1
  br i1 %292, label %293, label %141, !llvm.loop !264

293:                                              ; preds = %290, %125
  %294 = phi ptr [ %126, %125 ], [ %289, %290 ]
  %295 = add nuw i32 %127, 1
  %296 = icmp eq i32 %127, %2
  br i1 %296, label %297, label %125, !llvm.loop !265

297:                                              ; preds = %293, %110
  %298 = icmp slt i32 %1, 0
  br i1 %298, label %316, label %299

299:                                              ; preds = %297
  %300 = shl nsw i32 %2, 2
  %301 = mul nsw i32 %300, %114
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds float, ptr %120, i64 %302
  br label %304

304:                                              ; preds = %299, %304
  %305 = phi ptr [ %313, %304 ], [ %120, %299 ]
  %306 = phi ptr [ %314, %304 ], [ %303, %299 ]
  %307 = phi i32 [ %312, %304 ], [ 0, %299 ]
  %308 = getelementptr inbounds float, ptr %305, i64 1
  store float 0.000000e+00, ptr %308, align 4, !tbaa !49
  %309 = getelementptr inbounds float, ptr %306, i64 1
  store float 0.000000e+00, ptr %309, align 4, !tbaa !49
  %310 = getelementptr inbounds float, ptr %305, i64 3
  store float 0.000000e+00, ptr %310, align 4, !tbaa !49
  %311 = getelementptr inbounds float, ptr %306, i64 3
  store float 0.000000e+00, ptr %311, align 4, !tbaa !49
  %312 = add nuw i32 %307, 1
  %313 = getelementptr inbounds float, ptr %305, i64 4
  %314 = getelementptr inbounds float, ptr %306, i64 4
  %315 = icmp eq i32 %307, %1
  br i1 %315, label %316, label %304, !llvm.loop !266

316:                                              ; preds = %304, %297
  br i1 %121, label %322, label %317

317:                                              ; preds = %316
  %318 = sext i32 %47 to i64
  %319 = getelementptr inbounds float, ptr %120, i64 %318
  %320 = shl nsw i32 %114, 2
  %321 = sext i32 %320 to i64
  br label %324

322:                                              ; preds = %324, %316
  %323 = icmp sgt i32 %35, 0
  br i1 %323, label %334, label %358

324:                                              ; preds = %317, %324
  %325 = phi ptr [ %120, %317 ], [ %331, %324 ]
  %326 = phi ptr [ %319, %317 ], [ %332, %324 ]
  %327 = phi i32 [ 0, %317 ], [ %330, %324 ]
  store float 0.000000e+00, ptr %325, align 4, !tbaa !49
  store float 0.000000e+00, ptr %326, align 4, !tbaa !49
  %328 = getelementptr inbounds float, ptr %325, i64 2
  store float 0.000000e+00, ptr %328, align 4, !tbaa !49
  %329 = getelementptr inbounds float, ptr %326, i64 2
  store float 0.000000e+00, ptr %329, align 4, !tbaa !49
  %330 = add nuw i32 %327, 1
  %331 = getelementptr inbounds float, ptr %325, i64 %321
  %332 = getelementptr inbounds float, ptr %326, i64 %321
  %333 = icmp eq i32 %327, %2
  br i1 %333, label %322, label %324, !llvm.loop !267

334:                                              ; preds = %322, %353
  %335 = phi ptr [ %356, %353 ], [ %112, %322 ]
  %336 = phi ptr [ %355, %353 ], [ %37, %322 ]
  %337 = phi i32 [ %354, %353 ], [ %35, %322 ]
  %338 = load float, ptr %335, align 4, !tbaa !49
  %339 = fcmp une float %338, 0.000000e+00
  br i1 %339, label %352, label %340

340:                                              ; preds = %334
  %341 = getelementptr inbounds float, ptr %335, i64 1
  %342 = load float, ptr %341, align 4, !tbaa !49
  %343 = fcmp une float %342, 0.000000e+00
  br i1 %343, label %352, label %344

344:                                              ; preds = %340
  %345 = getelementptr inbounds float, ptr %335, i64 2
  %346 = load float, ptr %345, align 4, !tbaa !49
  %347 = fcmp une float %346, 0.000000e+00
  br i1 %347, label %352, label %348

348:                                              ; preds = %344
  %349 = getelementptr inbounds float, ptr %335, i64 3
  %350 = load float, ptr %349, align 4, !tbaa !49
  %351 = fcmp une float %350, 0.000000e+00
  br i1 %351, label %352, label %353

352:                                              ; preds = %348, %344, %340, %334
  store i8 -1, ptr %336, align 1, !tbaa !244
  br label %353

353:                                              ; preds = %348, %352
  %354 = add nsw i32 %337, -1
  %355 = getelementptr inbounds i8, ptr %336, i64 1
  %356 = getelementptr inbounds float, ptr %335, i64 4
  %357 = icmp sgt i32 %337, 1
  br i1 %357, label %334, label %358, !llvm.loop !268

358:                                              ; preds = %353, %322
  tail call void @antialias_tagbuf(i32 noundef %1, i32 noundef %2, ptr noundef %37) #19
  %359 = load i1, ptr @RE_zbuf_accumulate_vecblur.firsttime, align 4
  br i1 %359, label %361, label %360

360:                                              ; preds = %358
  store i1 true, ptr @RE_zbuf_accumulate_vecblur.firsttime, align 4
  tail call void @BLI_jitter_init(ptr noundef nonnull @RE_zbuf_accumulate_vecblur.jit, i32 noundef 256) #17
  br label %361

361:                                              ; preds = %360, %358
  %362 = shl i64 %31, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %362, i1 false)
  %363 = sdiv i16 %20, 2
  %364 = sext i16 %363 to i32
  %365 = icmp slt i16 %20, 2
  br i1 %365, label %386, label %366

366:                                              ; preds = %361
  %367 = getelementptr inbounds %struct.NodeBlurData, ptr %0, i64 0, i32 8
  %368 = add nuw nsw i32 %364, 1
  %369 = sitofp i32 %368 to float
  %370 = add i32 %35, -1
  %371 = shl nsw i32 %114, 2
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds float, ptr %120, i64 %372
  %374 = icmp sgt i32 %2, 0
  %375 = getelementptr inbounds %struct.NodeBlurData, ptr %0, i64 0, i32 7
  %376 = icmp sgt i32 %1, 0
  %377 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %378 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %379 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %380 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %381 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %382 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %383 = getelementptr inbounds %struct.DrawBufPixel, ptr %14, i64 0, i32 1
  %384 = sitofp i16 %363 to float
  %385 = zext i32 %370 to i64
  br label %387

386:                                              ; preds = %600, %361
  br i1 %323, label %603, label %643

387:                                              ; preds = %366, %600
  %388 = phi i32 [ 1, %366 ], [ %601, %600 ]
  %389 = load float, ptr %367, align 4, !tbaa !269
  %390 = fmul float %389, 5.000000e-01
  %391 = sitofp i32 %388 to float
  %392 = fmul float %390, %391
  %393 = fdiv float %392, %369
  %394 = and i32 %388, 255
  %395 = zext nneg i32 %394 to i64
  %396 = getelementptr inbounds [256 x [2 x float]], ptr @RE_zbuf_accumulate_vecblur.jit, i64 0, i64 %395
  %397 = getelementptr inbounds [256 x [2 x float]], ptr @RE_zbuf_accumulate_vecblur.jit, i64 0, i64 %395, i64 1
  %398 = sub nsw i32 %364, %388
  %399 = sitofp i32 %398 to float
  %400 = fdiv float %399, %384
  %401 = fpext float %400 to double
  %402 = fmul double %401, %401
  br label %403

403:                                              ; preds = %387, %599
  %404 = phi i1 [ true, %387 ], [ false, %599 ]
  %405 = phi float [ %393, %387 ], [ %436, %599 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #18
  br i1 %323, label %407, label %425

406:                                              ; preds = %415
  br i1 %323, label %420, label %425

407:                                              ; preds = %403, %415
  %408 = phi i64 [ %418, %415 ], [ %385, %403 ]
  %409 = getelementptr inbounds i8, ptr %37, i64 %408
  %410 = load i8, ptr %409, align 1, !tbaa !244
  %411 = icmp eq i8 %410, 0
  br i1 %411, label %412, label %415

412:                                              ; preds = %407
  %413 = getelementptr inbounds float, ptr %6, i64 %408
  %414 = load float, ptr %413, align 4, !tbaa !49
  br label %415

415:                                              ; preds = %407, %412
  %416 = phi float [ %414, %412 ], [ 0x4376345780000000, %407 ]
  %417 = getelementptr inbounds float, ptr %32, i64 %408
  store float %416, ptr %417, align 4
  %418 = add nsw i64 %408, -1
  %419 = icmp sgt i64 %408, 0
  br i1 %419, label %407, label %406, !llvm.loop !270

420:                                              ; preds = %406, %420
  %421 = phi i64 [ %423, %420 ], [ %385, %406 ]
  %422 = getelementptr inbounds %struct.DrawBufPixel, ptr %41, i64 %421
  store ptr null, ptr %422, align 8, !tbaa !271
  %423 = add nsw i64 %421, -1
  %424 = icmp sgt i64 %421, 0
  br i1 %424, label %420, label %425, !llvm.loop !273

425:                                              ; preds = %420, %403, %406
  br i1 %404, label %433, label %426

426:                                              ; preds = %425
  %427 = load i16, ptr %375, align 2, !tbaa !274
  %428 = icmp eq i16 %427, 0
  %429 = select i1 %428, i64 2, i64 0
  %430 = getelementptr inbounds float, ptr %373, i64 %429
  %431 = getelementptr inbounds float, ptr %120, i64 %429
  %432 = fneg float %405
  br label %433

433:                                              ; preds = %426, %425
  %434 = phi ptr [ %430, %426 ], [ %373, %425 ]
  %435 = phi ptr [ %431, %426 ], [ %120, %425 ]
  %436 = phi float [ %432, %426 ], [ %405, %425 ]
  %437 = call float @llvm.fmuladd.f32(float %436, float 5.000000e-01, float 5.000000e-01)
  call fastcc void @set_quad_bezier_ipo(float noundef %437, ptr noundef nonnull %13) #19
  br i1 %374, label %438, label %552

438:                                              ; preds = %433
  %439 = load float, ptr %396, align 8, !tbaa !49
  %440 = fadd float %439, -5.000000e-01
  %441 = insertelement <2 x float> poison, float %436, i64 0
  %442 = shufflevector <2 x float> %441, <2 x float> poison, <2 x i32> zeroinitializer
  br label %443

443:                                              ; preds = %438, %541
  %444 = phi float [ %550, %541 ], [ %440, %438 ]
  %445 = phi ptr [ %546, %541 ], [ %4, %438 ]
  %446 = phi ptr [ %545, %541 ], [ %6, %438 ]
  %447 = phi ptr [ %544, %541 ], [ %37, %438 ]
  %448 = phi ptr [ %547, %541 ], [ %435, %438 ]
  %449 = phi ptr [ %548, %541 ], [ %434, %438 ]
  %450 = phi i32 [ %549, %541 ], [ 0, %438 ]
  br i1 %376, label %451, label %541

451:                                              ; preds = %443
  %452 = load float, ptr %397, align 4, !tbaa !49
  %453 = fadd float %452, -5.000000e-01
  %454 = fadd float %444, 5.000000e-01
  %455 = fadd float %454, 1.000000e+00
  %456 = insertelement <2 x float> poison, float %454, i64 1
  br label %457

457:                                              ; preds = %451, %532
  %458 = phi float [ %453, %451 ], [ %534, %532 ]
  %459 = phi ptr [ %445, %451 ], [ %535, %532 ]
  %460 = phi ptr [ %446, %451 ], [ %539, %532 ]
  %461 = phi ptr [ %447, %451 ], [ %538, %532 ]
  %462 = phi ptr [ %448, %451 ], [ %536, %532 ]
  %463 = phi ptr [ %449, %451 ], [ %537, %532 ]
  %464 = phi i32 [ 0, %451 ], [ %533, %532 ]
  %465 = load i8, ptr %461, align 1, !tbaa !244
  %466 = icmp ugt i8 %465, 1
  br i1 %466, label %467, label %532

467:                                              ; preds = %457
  %468 = fadd float %458, 5.000000e-01
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #18
  %469 = load i16, ptr %375, align 2, !tbaa !274
  %470 = icmp eq i16 %469, 0
  br i1 %470, label %496, label %471

471:                                              ; preds = %467
  %472 = getelementptr inbounds float, ptr %462, i64 2
  call fastcc void @quad_bezier_2d(ptr noundef nonnull %9, ptr noundef %462, ptr noundef nonnull %472, ptr noundef nonnull %13) #19
  %473 = load <2 x float>, ptr %9, align 8, !tbaa !49
  %474 = insertelement <2 x float> %456, float %468, i64 0
  %475 = fadd <2 x float> %474, %473
  store <2 x float> %475, ptr %9, align 8, !tbaa !49
  %476 = load float, ptr %460, align 4, !tbaa !49
  store float %476, ptr %377, align 8, !tbaa !49
  %477 = getelementptr inbounds float, ptr %462, i64 4
  %478 = getelementptr inbounds float, ptr %462, i64 6
  call fastcc void @quad_bezier_2d(ptr noundef nonnull %10, ptr noundef nonnull %477, ptr noundef nonnull %478, ptr noundef nonnull %13) #19
  %479 = fadd float %468, 1.000000e+00
  %480 = load <2 x float>, ptr %10, align 8, !tbaa !49
  %481 = insertelement <2 x float> %456, float %479, i64 0
  %482 = fadd <2 x float> %481, %480
  store <2 x float> %482, ptr %10, align 8, !tbaa !49
  %483 = load float, ptr %460, align 4, !tbaa !49
  store float %483, ptr %379, align 8, !tbaa !49
  %484 = getelementptr inbounds float, ptr %463, i64 4
  %485 = getelementptr inbounds float, ptr %463, i64 6
  call fastcc void @quad_bezier_2d(ptr noundef nonnull %11, ptr noundef nonnull %484, ptr noundef nonnull %485, ptr noundef nonnull %13) #19
  %486 = load <2 x float>, ptr %11, align 8, !tbaa !49
  %487 = insertelement <2 x float> poison, float %479, i64 0
  %488 = insertelement <2 x float> %487, float %455, i64 1
  %489 = fadd <2 x float> %488, %486
  store <2 x float> %489, ptr %11, align 8, !tbaa !49
  %490 = load float, ptr %460, align 4, !tbaa !49
  store float %490, ptr %380, align 8, !tbaa !49
  %491 = getelementptr inbounds float, ptr %463, i64 2
  call fastcc void @quad_bezier_2d(ptr noundef nonnull %12, ptr noundef %463, ptr noundef nonnull %491, ptr noundef nonnull %13) #19
  %492 = load float, ptr %12, align 4, !tbaa !49
  %493 = fadd float %468, %492
  store float %493, ptr %12, align 4, !tbaa !49
  %494 = load float, ptr %381, align 4, !tbaa !49
  %495 = fadd float %455, %494
  br label %520

496:                                              ; preds = %467
  %497 = load <2 x float>, ptr %462, align 4, !tbaa !49
  %498 = insertelement <2 x float> %456, float %468, i64 0
  %499 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %442, <2 x float> %497, <2 x float> %498)
  store <2 x float> %499, ptr %9, align 8, !tbaa !49
  %500 = load float, ptr %460, align 4, !tbaa !49
  store float %500, ptr %377, align 8, !tbaa !49
  %501 = getelementptr inbounds float, ptr %462, i64 4
  %502 = load float, ptr %501, align 4, !tbaa !49
  %503 = call float @llvm.fmuladd.f32(float %436, float %502, float %468)
  %504 = fadd float %503, 1.000000e+00
  store float %504, ptr %10, align 8, !tbaa !49
  %505 = getelementptr inbounds float, ptr %462, i64 5
  %506 = load float, ptr %505, align 4, !tbaa !49
  %507 = call float @llvm.fmuladd.f32(float %436, float %506, float %454)
  store float %507, ptr %378, align 4, !tbaa !49
  %508 = load float, ptr %460, align 4, !tbaa !49
  store float %508, ptr %379, align 8, !tbaa !49
  %509 = getelementptr inbounds float, ptr %463, i64 4
  %510 = load <2 x float>, ptr %509, align 4, !tbaa !49
  %511 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %442, <2 x float> %510, <2 x float> %498)
  %512 = fadd <2 x float> %511, <float 1.000000e+00, float 1.000000e+00>
  store <2 x float> %512, ptr %11, align 8, !tbaa !49
  %513 = load float, ptr %460, align 4, !tbaa !49
  store float %513, ptr %380, align 8, !tbaa !49
  %514 = load float, ptr %463, align 4, !tbaa !49
  %515 = call float @llvm.fmuladd.f32(float %436, float %514, float %468)
  store float %515, ptr %12, align 4, !tbaa !49
  %516 = getelementptr inbounds float, ptr %463, i64 1
  %517 = load float, ptr %516, align 4, !tbaa !49
  %518 = call float @llvm.fmuladd.f32(float %436, float %517, float %454)
  %519 = fadd float %518, 1.000000e+00
  br label %520

520:                                              ; preds = %496, %471
  %521 = phi float [ %495, %471 ], [ %519, %496 ]
  store float %521, ptr %381, align 4, !tbaa !49
  %522 = load float, ptr %460, align 4, !tbaa !49
  store float %522, ptr %382, align 4, !tbaa !49
  %523 = load i8, ptr %461, align 1, !tbaa !244
  %524 = icmp eq i8 %523, -1
  br i1 %524, label %530, label %525

525:                                              ; preds = %520
  %526 = icmp ult i8 %523, 2
  br i1 %526, label %530, label %527

527:                                              ; preds = %525
  %528 = uitofp i8 %523 to float
  %529 = fdiv float %528, 2.550000e+02
  br label %530

530:                                              ; preds = %525, %520, %527
  %531 = phi float [ %529, %527 ], [ 1.000000e+00, %520 ], [ 0.000000e+00, %525 ]
  store float %531, ptr %383, align 8, !tbaa !275
  store ptr %459, ptr %14, align 8, !tbaa !271
  call fastcc void @zbuf_fill_in_rgba(ptr noundef nonnull %8, ptr noundef nonnull %14, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #18
  br label %532

532:                                              ; preds = %457, %530
  %533 = add nuw nsw i32 %464, 1
  %534 = fadd float %458, 1.000000e+00
  %535 = getelementptr inbounds float, ptr %459, i64 4
  %536 = getelementptr inbounds float, ptr %462, i64 4
  %537 = getelementptr inbounds float, ptr %463, i64 4
  %538 = getelementptr inbounds i8, ptr %461, i64 1
  %539 = getelementptr inbounds float, ptr %460, i64 1
  %540 = icmp eq i32 %533, %1
  br i1 %540, label %541, label %457, !llvm.loop !276

541:                                              ; preds = %532, %443
  %542 = phi ptr [ %449, %443 ], [ %537, %532 ]
  %543 = phi ptr [ %448, %443 ], [ %536, %532 ]
  %544 = phi ptr [ %447, %443 ], [ %538, %532 ]
  %545 = phi ptr [ %446, %443 ], [ %539, %532 ]
  %546 = phi ptr [ %445, %443 ], [ %535, %532 ]
  %547 = getelementptr inbounds float, ptr %543, i64 4
  %548 = getelementptr inbounds float, ptr %542, i64 4
  %549 = add nuw nsw i32 %450, 1
  %550 = fadd float %444, 1.000000e+00
  %551 = icmp eq i32 %549, %2
  br i1 %551, label %552, label %443, !llvm.loop !277

552:                                              ; preds = %541, %433
  %553 = call double @pow(double noundef %401, double noundef 3.000000e+00) #17
  %554 = fmul double %553, -2.000000e+00
  %555 = call double @llvm.fmuladd.f64(double %402, double 3.000000e+00, double %554)
  %556 = fptrunc double %555 to float
  br i1 %323, label %557, label %599

557:                                              ; preds = %552, %592
  %558 = phi ptr [ %594, %592 ], [ %41, %552 ]
  %559 = phi ptr [ %595, %592 ], [ %3, %552 ]
  %560 = phi i32 [ %593, %592 ], [ %370, %552 ]
  %561 = phi ptr [ %597, %592 ], [ %46, %552 ]
  %562 = phi ptr [ %596, %592 ], [ %44, %552 ]
  %563 = load ptr, ptr %558, align 8, !tbaa !271
  %564 = icmp eq ptr %563, null
  br i1 %564, label %592, label %565

565:                                              ; preds = %557
  %566 = getelementptr inbounds %struct.DrawBufPixel, ptr %558, i64 0, i32 1
  %567 = load float, ptr %566, align 8, !tbaa !275
  %568 = fmul float %567, %556
  %569 = load float, ptr %563, align 4, !tbaa !49
  %570 = load float, ptr %559, align 4, !tbaa !49
  %571 = call float @llvm.fmuladd.f32(float %568, float %569, float %570)
  store float %571, ptr %559, align 4, !tbaa !49
  %572 = getelementptr inbounds float, ptr %563, i64 1
  %573 = load float, ptr %572, align 4, !tbaa !49
  %574 = getelementptr inbounds float, ptr %559, i64 1
  %575 = load float, ptr %574, align 4, !tbaa !49
  %576 = call float @llvm.fmuladd.f32(float %568, float %573, float %575)
  store float %576, ptr %574, align 4, !tbaa !49
  %577 = getelementptr inbounds float, ptr %563, i64 2
  %578 = load float, ptr %577, align 4, !tbaa !49
  %579 = getelementptr inbounds float, ptr %559, i64 2
  %580 = load float, ptr %579, align 4, !tbaa !49
  %581 = call float @llvm.fmuladd.f32(float %568, float %578, float %580)
  store float %581, ptr %579, align 4, !tbaa !49
  %582 = getelementptr inbounds float, ptr %563, i64 3
  %583 = load float, ptr %582, align 4, !tbaa !49
  %584 = getelementptr inbounds float, ptr %559, i64 3
  %585 = load float, ptr %584, align 4, !tbaa !49
  %586 = call float @llvm.fmuladd.f32(float %568, float %583, float %585)
  store float %586, ptr %584, align 4, !tbaa !49
  %587 = load float, ptr %562, align 4, !tbaa !49
  %588 = fadd float %568, %587
  store float %588, ptr %562, align 4, !tbaa !49
  %589 = load float, ptr %561, align 4, !tbaa !49
  %590 = fcmp ogt float %589, %568
  %591 = select i1 %590, float %589, float %568
  store float %591, ptr %561, align 4, !tbaa !49
  br label %592

592:                                              ; preds = %557, %565
  %593 = add nsw i32 %560, -1
  %594 = getelementptr inbounds %struct.DrawBufPixel, ptr %558, i64 1
  %595 = getelementptr inbounds float, ptr %559, i64 4
  %596 = getelementptr inbounds float, ptr %562, i64 1
  %597 = getelementptr inbounds float, ptr %561, i64 1
  %598 = icmp sgt i32 %560, 0
  br i1 %598, label %557, label %599, !llvm.loop !278

599:                                              ; preds = %592, %552
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #18
  br i1 %404, label %403, label %600, !llvm.loop !279

600:                                              ; preds = %599
  %601 = add nuw nsw i32 %388, 1
  %602 = icmp eq i32 %388, %364
  br i1 %602, label %386, label %387, !llvm.loop !280

603:                                              ; preds = %386, %603
  %604 = phi ptr [ %638, %603 ], [ %3, %386 ]
  %605 = phi i32 [ %609, %603 ], [ %35, %386 ]
  %606 = phi ptr [ %639, %603 ], [ %4, %386 ]
  %607 = phi ptr [ %641, %603 ], [ %46, %386 ]
  %608 = phi ptr [ %640, %603 ], [ %44, %386 ]
  %609 = add nsw i32 %605, -1
  %610 = load float, ptr %607, align 4, !tbaa !49
  %611 = load float, ptr %608, align 4, !tbaa !49
  %612 = fcmp oeq float %611, 0.000000e+00
  %613 = fdiv float %610, %611
  %614 = select i1 %612, float 0.000000e+00, float %613
  %615 = fsub float 1.000000e+00, %610
  %616 = load float, ptr %604, align 4, !tbaa !49
  %617 = load float, ptr %606, align 4, !tbaa !49
  %618 = fmul float %615, %617
  %619 = call float @llvm.fmuladd.f32(float %614, float %616, float %618)
  store float %619, ptr %604, align 4, !tbaa !49
  %620 = getelementptr inbounds float, ptr %604, i64 1
  %621 = load float, ptr %620, align 4, !tbaa !49
  %622 = getelementptr inbounds float, ptr %606, i64 1
  %623 = load float, ptr %622, align 4, !tbaa !49
  %624 = fmul float %615, %623
  %625 = call float @llvm.fmuladd.f32(float %614, float %621, float %624)
  store float %625, ptr %620, align 4, !tbaa !49
  %626 = getelementptr inbounds float, ptr %604, i64 2
  %627 = load float, ptr %626, align 4, !tbaa !49
  %628 = getelementptr inbounds float, ptr %606, i64 2
  %629 = load float, ptr %628, align 4, !tbaa !49
  %630 = fmul float %615, %629
  %631 = call float @llvm.fmuladd.f32(float %614, float %627, float %630)
  store float %631, ptr %626, align 4, !tbaa !49
  %632 = getelementptr inbounds float, ptr %604, i64 3
  %633 = load float, ptr %632, align 4, !tbaa !49
  %634 = getelementptr inbounds float, ptr %606, i64 3
  %635 = load float, ptr %634, align 4, !tbaa !49
  %636 = fmul float %615, %635
  %637 = call float @llvm.fmuladd.f32(float %614, float %633, float %636)
  store float %637, ptr %632, align 4, !tbaa !49
  %638 = getelementptr inbounds float, ptr %604, i64 4
  %639 = getelementptr inbounds float, ptr %606, i64 4
  %640 = getelementptr inbounds float, ptr %608, i64 1
  %641 = getelementptr inbounds float, ptr %607, i64 1
  %642 = icmp ugt i32 %605, 1
  br i1 %642, label %603, label %643, !llvm.loop !281

643:                                              ; preds = %603, %386
  %644 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %644(ptr noundef %32) #17
  %645 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %645(ptr noundef %37) #17
  %646 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %646(ptr noundef %41) #17
  %647 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %647(ptr noundef %120) #17
  %648 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %648(ptr noundef %44) #17
  %649 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %649(ptr noundef %46) #17
  %650 = icmp eq ptr %111, null
  br i1 %650, label %653, label %651

651:                                              ; preds = %643
  %652 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %652(ptr noundef %112) #17
  br label %653

653:                                              ; preds = %651, %643
  call void @zbuf_free_span(ptr noundef nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %8) #18
  ret void
}

; Function Attrs: optsize
declare void @BLI_jitter_init(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @set_quad_bezier_ipo(float noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 !PGOFuncName !282 {
  %3 = fsub float 1.000000e+00, %0
  %4 = fmul float %3, %3
  store float %4, ptr %1, align 4, !tbaa !49
  %5 = fmul float %3, 2.000000e+00
  %6 = fmul float %5, %0
  %7 = getelementptr inbounds float, ptr %1, i64 1
  store float %6, ptr %7, align 4, !tbaa !49
  %8 = fmul float %0, %0
  %9 = getelementptr inbounds float, ptr %1, i64 2
  store float %8, ptr %9, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @quad_bezier_2d(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #6 !PGOFuncName !283 {
  %5 = load float, ptr %2, align 4, !tbaa !49
  %6 = fneg float %5
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = fneg float %8
  %10 = load float, ptr %1, align 4, !tbaa !49
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = fmul float %5, 5.000000e-01
  %14 = tail call float @llvm.fmuladd.f32(float %10, float -5.000000e-01, float %13)
  %15 = fmul float %8, 5.000000e-01
  %16 = tail call float @llvm.fmuladd.f32(float %12, float -5.000000e-01, float %15)
  %17 = load float, ptr %3, align 4, !tbaa !49
  %18 = getelementptr inbounds float, ptr %3, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !49
  %20 = fmul float %14, %19
  %21 = tail call float @llvm.fmuladd.f32(float %17, float %10, float %20)
  %22 = getelementptr inbounds float, ptr %3, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !49
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %6, float %21)
  store float %24, ptr %0, align 4, !tbaa !49
  %25 = load float, ptr %3, align 4, !tbaa !49
  %26 = load float, ptr %18, align 4, !tbaa !49
  %27 = fmul float %16, %26
  %28 = tail call float @llvm.fmuladd.f32(float %25, float %12, float %27)
  %29 = load float, ptr %22, align 4, !tbaa !49
  %30 = tail call float @llvm.fmuladd.f32(float %29, float %9, float %28)
  %31 = getelementptr inbounds float, ptr %0, i64 1
  store float %30, ptr %31, align 4, !tbaa !49
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @zbuf_fill_in_rgba(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #7 !PGOFuncName !284 {
  tail call fastcc void @zbuf_init_span(ptr noundef %0) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %2, ptr noundef %3) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %3, ptr noundef %4) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %4, ptr noundef %5) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %5, ptr noundef %2) #19
  %7 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = icmp eq ptr %8, null
  br i1 %9, label %153, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = icmp eq ptr %12, null
  br i1 %13, label %153, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !68
  %17 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !69
  %19 = tail call i32 @llvm.smax.i32(i32 %16, i32 %18)
  %20 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !70
  %22 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !71
  %24 = tail call i32 @llvm.smin.i32(i32 %21, i32 %23)
  %25 = icmp slt i32 %24, %19
  br i1 %25, label %153, label %26

26:                                               ; preds = %14
  %27 = load float, ptr %2, align 4, !tbaa !49
  %28 = load float, ptr %3, align 4, !tbaa !49
  %29 = fsub float %27, %28
  %30 = load float, ptr %4, align 4, !tbaa !49
  %31 = fsub float %28, %30
  %32 = getelementptr inbounds float, ptr %2, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !49
  %34 = getelementptr inbounds float, ptr %3, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !49
  %36 = fsub float %33, %35
  %37 = getelementptr inbounds float, ptr %4, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !49
  %39 = fsub float %35, %38
  %40 = fneg float %36
  %41 = fmul float %31, %40
  %42 = tail call float @llvm.fmuladd.f32(float %29, float %39, float %41)
  %43 = fcmp oeq float %42, 0.000000e+00
  br i1 %43, label %153, label %44

44:                                               ; preds = %26
  %45 = getelementptr inbounds float, ptr %2, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !49
  %47 = getelementptr inbounds float, ptr %3, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !49
  %49 = fsub float %46, %48
  %50 = getelementptr inbounds float, ptr %4, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !49
  %52 = fsub float %48, %51
  %53 = fneg float %29
  %54 = fmul float %52, %53
  %55 = tail call float @llvm.fmuladd.f32(float %49, float %31, float %54)
  %56 = fneg float %49
  %57 = fmul float %39, %56
  %58 = tail call float @llvm.fmuladd.f32(float %36, float %52, float %57)
  %59 = fpext float %58 to double
  %60 = fneg double %59
  %61 = fpext float %42 to double
  %62 = fdiv double %60, %61
  %63 = fpext float %55 to double
  %64 = fneg double %63
  %65 = fdiv double %64, %61
  %66 = load i32, ptr %0, align 8, !tbaa !34
  %67 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  %68 = load ptr, ptr %67, align 8, !tbaa !43
  %69 = add nsw i32 %24, %19
  %70 = sdiv i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, ptr %68, i64 %71
  %73 = load float, ptr %72, align 4, !tbaa !49
  %74 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  %75 = load ptr, ptr %74, align 8, !tbaa !44
  %76 = getelementptr inbounds float, ptr %75, i64 %71
  %77 = load float, ptr %76, align 4, !tbaa !49
  %78 = fcmp olt float %73, %77
  %79 = sext i32 %24 to i64
  %80 = getelementptr inbounds float, ptr %75, i64 %79
  %81 = getelementptr inbounds float, ptr %68, i64 %79
  %82 = select i1 %78, ptr %80, ptr %81
  %83 = select i1 %78, ptr %81, ptr %80
  %84 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 19
  %85 = load ptr, ptr %84, align 8, !tbaa !128
  %86 = mul nsw i32 %66, %24
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.DrawBufPixel, ptr %85, i64 %87
  %89 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 16
  %90 = load ptr, ptr %89, align 8, !tbaa !125
  %91 = getelementptr inbounds i32, ptr %90, i64 %87
  %92 = sitofp i32 %24 to double
  %93 = fmul float %33, %55
  %94 = tail call float @llvm.fmuladd.f32(float %58, float %27, float %93)
  %95 = fdiv float %94, %42
  %96 = fadd float %46, %95
  %97 = fpext float %96 to double
  %98 = tail call double @llvm.fmuladd.f64(double %92, double %65, double %97)
  %99 = add nsw i32 %66, -1
  %100 = sext i32 %66 to i64
  %101 = sub nsw i64 0, %100
  br label %102

102:                                              ; preds = %44, %145
  %103 = phi ptr [ %88, %44 ], [ %148, %145 ]
  %104 = phi i32 [ %24, %44 ], [ %149, %145 ]
  %105 = phi ptr [ %91, %44 ], [ %147, %145 ]
  %106 = phi ptr [ %82, %44 ], [ %151, %145 ]
  %107 = phi ptr [ %83, %44 ], [ %150, %145 ]
  %108 = phi double [ %98, %44 ], [ %146, %145 ]
  %109 = load float, ptr %107, align 4, !tbaa !49
  %110 = tail call float @llvm.floor.f32(float %109)
  %111 = fptosi float %110 to i32
  %112 = load float, ptr %106, align 4, !tbaa !49
  %113 = tail call float @llvm.floor.f32(float %112)
  %114 = fptosi float %113 to i32
  %115 = icmp sgt i32 %66, %114
  %116 = select i1 %115, i32 %114, i32 %99
  %117 = tail call i32 @llvm.smax.i32(i32 %111, i32 -1)
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %145

119:                                              ; preds = %102
  %120 = add nsw i32 %117, 1
  %121 = sub nsw i32 %116, %120
  %122 = icmp sgt i32 %121, -1
  br i1 %122, label %123, label %145

123:                                              ; preds = %119
  %124 = zext nneg i32 %120 to i64
  %125 = getelementptr inbounds %struct.DrawBufPixel, ptr %103, i64 %124
  %126 = getelementptr inbounds float, ptr %105, i64 %124
  %127 = sitofp i32 %120 to double
  %128 = tail call double @llvm.fmuladd.f64(double %127, double %62, double %108)
  br label %129

129:                                              ; preds = %123, %139
  %130 = phi i32 [ %143, %139 ], [ %121, %123 ]
  %131 = phi ptr [ %141, %139 ], [ %126, %123 ]
  %132 = phi ptr [ %142, %139 ], [ %125, %123 ]
  %133 = phi double [ %140, %139 ], [ %128, %123 ]
  %134 = load float, ptr %131, align 4, !tbaa !49
  %135 = fpext float %134 to double
  %136 = fcmp olt double %133, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = fptrunc double %133 to float
  store float %138, ptr %131, align 4, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %132, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !285
  br label %139

139:                                              ; preds = %137, %129
  %140 = fadd double %62, %133
  %141 = getelementptr inbounds float, ptr %131, i64 1
  %142 = getelementptr inbounds %struct.DrawBufPixel, ptr %132, i64 1
  %143 = add nsw i32 %130, -1
  %144 = icmp sgt i32 %130, 0
  br i1 %144, label %129, label %145, !llvm.loop !286

145:                                              ; preds = %139, %119, %102
  %146 = fsub double %108, %65
  %147 = getelementptr inbounds float, ptr %105, i64 %101
  %148 = getelementptr inbounds %struct.DrawBufPixel, ptr %103, i64 %101
  %149 = add nsw i32 %104, -1
  %150 = getelementptr inbounds float, ptr %107, i64 -1
  %151 = getelementptr inbounds float, ptr %106, i64 -1
  %152 = icmp sgt i32 %104, %19
  br i1 %152, label %102, label %153, !llvm.loop !287

153:                                              ; preds = %145, %26, %14, %6, %10
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @zbuffer_abuf_shadow(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = alloca %struct.RenderPart, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %10) #18
  %11 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !188
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 17
  %17 = load i32, ptr %16, align 4, !tbaa !190
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i32 [ %17, %15 ], [ -1, %9 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %10, i8 0, i64 160, i1 false)
  %20 = getelementptr inbounds %struct.RenderPart, ptr %10, i64 0, i32 14
  store i32 %6, ptr %20, align 8, !tbaa !117
  %21 = getelementptr inbounds %struct.RenderPart, ptr %10, i64 0, i32 15
  store i32 %6, ptr %21, align 4, !tbaa !118
  %22 = getelementptr inbounds %struct.RenderPart, ptr %10, i64 0, i32 13, i32 2
  store i32 0, ptr %22, align 8, !tbaa !122
  %23 = getelementptr inbounds %struct.RenderPart, ptr %10, i64 0, i32 13, i32 1
  store i32 %6, ptr %23, align 4, !tbaa !167
  %24 = getelementptr inbounds %struct.RenderPart, ptr %10, i64 0, i32 13, i32 3
  store i32 %6, ptr %24, align 4, !tbaa !168
  %25 = call fastcc i32 @zbuffer_abuf(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %3, ptr noundef %5, i32 noundef %19, i32 noundef 0, ptr noundef %2, i32 noundef %6, i32 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef 1) #19
  %26 = icmp eq ptr %4, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = call i32 @zbuffer_strands_abuf(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %4, ptr noundef %5, i32 noundef %19, i32 noundef 0, ptr noundef %2, i32 noundef %6, i32 noundef %6, i32 noundef %7, ptr noundef %8, float noundef 1.000000e+00, i32 noundef 1, ptr noundef null) #17
  br label %29

29:                                               ; preds = %27, %18
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %10) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @zbuffer_abuf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef readonly %10, i32 noundef %11) unnamed_addr #0 !PGOFuncName !288 {
  %13 = alloca [256 x %struct.ZbufProjectCache], align 16
  %14 = alloca [16 x %struct.ZSpan], align 16
  %15 = alloca [3 x float], align 4
  %16 = alloca [4 x float], align 16
  %17 = alloca [4 x [4 x float]], align 16
  %18 = alloca [4 x float], align 16
  %19 = alloca [4 x float], align 16
  %20 = alloca [4 x float], align 16
  %21 = alloca [4 x float], align 16
  %22 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 6144, ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(i64 3584, ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  call fastcc void @zbuffer_part_bounds(i32 noundef %7, i32 noundef %8, ptr noundef %1, ptr noundef nonnull %18) #19
  %23 = icmp sgt i32 %9, 0
  br i1 %23, label %24, label %99

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 14
  %26 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 15
  %27 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 19
  %28 = insertelement <2 x i32> poison, i32 %7, i64 0
  %29 = insertelement <2 x i32> %28, i32 %8, i64 1
  %30 = sitofp <2 x i32> %29 to <2 x float>
  %31 = fmul <2 x float> %30, <float 5.000000e-01, float 5.000000e-01>
  %32 = icmp eq i32 %5, 0
  %33 = icmp eq ptr %10, null
  %34 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13
  %35 = getelementptr inbounds %struct.RenderPart, ptr %1, i64 0, i32 13, i32 2
  %36 = zext nneg i32 %9 to i64
  br label %37

37:                                               ; preds = %24, %93
  %38 = phi i64 [ 0, %24 ], [ %97, %93 ]
  %39 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %38
  %40 = load i32, ptr %25, align 8, !tbaa !117
  %41 = load i32, ptr %26, align 4, !tbaa !118
  %42 = load float, ptr %27, align 4, !tbaa !119
  call void @zbuf_alloc_span(ptr noundef nonnull %39, i32 noundef %40, i32 noundef %41, float noundef %42) #19
  %43 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %38, i32 12
  store <2 x float> %31, ptr %43, align 8, !tbaa !49
  %44 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %45 = load i32, ptr %25, align 8, !tbaa !117
  %46 = sext i32 %45 to i64
  %47 = shl nsw i64 %46, 2
  %48 = load i32, ptr %26, align 4, !tbaa !118
  %49 = sext i32 %48 to i64
  %50 = mul i64 %47, %49
  %51 = tail call ptr %44(i64 noundef %50, ptr noundef nonnull @.str.17) #17
  %52 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %38, i32 17
  store ptr %51, ptr %52, align 16, !tbaa !289
  %53 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %38, i32 22
  store ptr %2, ptr %53, align 8, !tbaa !290
  %54 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %38, i32 25
  store ptr %3, ptr %54, align 16, !tbaa !291
  br i1 %32, label %55, label %58

55:                                               ; preds = %37
  %56 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %38, i32 21
  %57 = load ptr, ptr %56, align 16, !tbaa !162
  br label %68

58:                                               ; preds = %37
  %59 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %60 = load i32, ptr %25, align 8, !tbaa !117
  %61 = sext i32 %60 to i64
  %62 = shl nsw i64 %61, 2
  %63 = load i32, ptr %26, align 4, !tbaa !118
  %64 = sext i32 %63 to i64
  %65 = mul i64 %62, %64
  %66 = tail call ptr %59(i64 noundef %65, ptr noundef nonnull @.str.18) #17
  %67 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %38, i32 21
  store ptr %66, ptr %67, align 16, !tbaa !162
  br label %68

68:                                               ; preds = %55, %58
  %69 = phi ptr [ %57, %55 ], [ %66, %58 ]
  %70 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %38, i32 34
  store ptr @zbuffillAc4, ptr %70, align 16, !tbaa !105
  %71 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %38, i32 35
  store ptr @zbuflineAc, ptr %71, align 8, !tbaa !61
  %72 = trunc i64 %38 to i32
  tail call fastcc void @copyto_abufz(ptr noundef nonnull %1, ptr noundef %51, ptr noundef %69, i32 noundef %72) #19
  %73 = shl nuw i32 1, %72
  %74 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %38, i32 28
  store i32 %73, ptr %74, align 16, !tbaa !292
  %75 = load i32, ptr %34, align 8, !tbaa !121
  %76 = sub nsw i32 0, %75
  %77 = sitofp i32 %76 to float
  br i1 %33, label %87, label %78

78:                                               ; preds = %68
  %79 = getelementptr inbounds [2 x float], ptr %10, i64 %38
  %80 = load i32, ptr %35, align 8, !tbaa !122
  %81 = sub nsw i32 0, %80
  %82 = sitofp i32 %81 to float
  %83 = load <2 x float>, ptr %79, align 4, !tbaa !49
  %84 = insertelement <2 x float> poison, float %77, i64 0
  %85 = insertelement <2 x float> %84, float %82, i64 1
  %86 = fsub <2 x float> %85, %83
  br label %93

87:                                               ; preds = %68
  %88 = load i32, ptr %35, align 8, !tbaa !122
  %89 = sub nsw i32 0, %88
  %90 = sitofp i32 %89 to float
  %91 = insertelement <2 x float> poison, float %77, i64 0
  %92 = insertelement <2 x float> %91, float %90, i64 1
  br label %93

93:                                               ; preds = %87, %78
  %94 = phi <2 x float> [ %92, %87 ], [ %86, %78 ]
  %95 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %38, i32 14
  %96 = fadd <2 x float> %94, <float -5.000000e-01, float -5.000000e-01>
  store <2 x float> %96, ptr %95, align 16, !tbaa !49
  %97 = add nuw nsw i64 %38, 1
  %98 = icmp eq i64 %97, %36
  br i1 %98, label %99, label %37, !llvm.loop !293

99:                                               ; preds = %93, %12
  %100 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %101 = load ptr, ptr %100, align 8, !tbaa !42
  %102 = icmp eq ptr %101, null
  br i1 %102, label %325, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %105 = icmp eq i32 %11, 0
  %106 = getelementptr inbounds [3 x float], ptr %15, i64 0, i64 2
  %107 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 2
  %108 = getelementptr inbounds [4 x float], ptr %16, i64 0, i64 3
  %109 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %110 = zext nneg i32 %9 to i64
  br label %111

111:                                              ; preds = %103, %316
  %112 = phi ptr [ %101, %103 ], [ %323, %316 ]
  %113 = phi i32 [ 0, %103 ], [ %321, %316 ]
  %114 = phi i32 [ 0, %103 ], [ %320, %316 ]
  %115 = phi i32 [ 0, %103 ], [ %319, %316 ]
  %116 = phi i32 [ 0, %103 ], [ %322, %316 ]
  %117 = phi ptr [ null, %103 ], [ %318, %316 ]
  %118 = phi ptr [ null, %103 ], [ %317, %316 ]
  %119 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %112, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !131
  %121 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %112, i64 0, i32 7
  %122 = load i32, ptr %121, align 8, !tbaa !133
  %123 = and i32 %122, %4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %316, label %125

125:                                              ; preds = %111
  %126 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %112, i64 0, i32 11
  %127 = load i16, ptr %126, align 8, !tbaa !134
  %128 = and i16 %127, 3
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %112, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %17, ptr noundef %6, ptr noundef nonnull %131) #17
  br label %133

132:                                              ; preds = %125
  call void @copy_m4_m4(ptr noundef nonnull %17, ptr noundef %6) #17
  br label %133

133:                                              ; preds = %132, %130
  %134 = load ptr, ptr %119, align 8, !tbaa !131
  %135 = getelementptr inbounds %struct.ObjectRen, ptr %134, i64 0, i32 9
  %136 = call i32 @clip_render_object(ptr noundef nonnull %135, ptr noundef nonnull %18, ptr noundef nonnull %17) #17
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %316

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.ObjectRen, ptr %120, i64 0, i32 10
  %140 = load i32, ptr %139, align 8, !tbaa !135
  call fastcc void @zbuf_project_cache_clear(ptr noundef nonnull %13, i32 noundef %140) #19
  %141 = getelementptr inbounds %struct.ObjectRen, ptr %120, i64 0, i32 11
  %142 = load i32, ptr %141, align 4, !tbaa !137
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %306

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.ObjectRen, ptr %120, i64 0, i32 19
  br label %146

146:                                              ; preds = %144, %300
  %147 = phi i32 [ %113, %144 ], [ %190, %300 ]
  %148 = phi i32 [ %114, %144 ], [ %302, %300 ]
  %149 = phi i32 [ %115, %144 ], [ %301, %300 ]
  %150 = phi i32 [ 0, %144 ], [ %303, %300 ]
  %151 = phi ptr [ %117, %144 ], [ %189, %300 ]
  %152 = phi ptr [ %118, %144 ], [ %164, %300 ]
  %153 = and i32 %150, 255
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %146
  %156 = load ptr, ptr %145, align 8, !tbaa !138
  %157 = lshr exact i32 %150, 8
  %158 = zext nneg i32 %157 to i64
  %159 = getelementptr inbounds %struct.VlakTableNode, ptr %156, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !139
  br label %163

161:                                              ; preds = %146
  %162 = getelementptr inbounds %struct.VlakRen, ptr %152, i64 1
  br label %163

163:                                              ; preds = %161, %155
  %164 = phi ptr [ %160, %155 ], [ %162, %161 ]
  %165 = getelementptr inbounds %struct.VlakRen, ptr %164, i64 0, i32 5
  %166 = load ptr, ptr %165, align 8, !tbaa !141
  %167 = icmp eq ptr %166, %151
  br i1 %167, label %188, label %168

168:                                              ; preds = %163
  br i1 %105, label %182, label %169

169:                                              ; preds = %168
  %170 = getelementptr inbounds %struct.Material, ptr %166, i64 0, i32 53
  %171 = load i32, ptr %170, align 4, !tbaa !195
  %172 = and i32 %171, 1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.Material, ptr %166, i64 0, i32 51
  %176 = load i32, ptr %175, align 4, !tbaa !143
  %177 = and i32 %176, 33554432
  %178 = icmp ne i32 %177, 0
  br label %179

179:                                              ; preds = %174, %169
  %180 = phi i1 [ false, %169 ], [ %178, %174 ]
  %181 = zext i1 %180 to i32
  br label %188

182:                                              ; preds = %168
  %183 = getelementptr inbounds %struct.Material, ptr %166, i64 0, i32 51
  %184 = load i32, ptr %183, align 4, !tbaa !143
  %185 = and i32 %184, 73792
  %186 = icmp eq i32 %185, 65600
  %187 = zext i1 %186 to i32
  br label %188

188:                                              ; preds = %179, %182, %163
  %189 = phi ptr [ %166, %179 ], [ %166, %182 ], [ %151, %163 ]
  %190 = phi i32 [ %181, %179 ], [ %187, %182 ], [ %147, %163 ]
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %300, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.VlakRen, ptr %164, i64 0, i32 7
  %194 = load i8, ptr %193, align 1, !tbaa !151
  %195 = and i8 %194, 2
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %300

197:                                              ; preds = %192
  %198 = load i32, ptr %121, align 8, !tbaa !133
  %199 = and i32 %198, %4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %300, label %201

201:                                              ; preds = %197
  %202 = load ptr, ptr %164, align 8, !tbaa !152
  %203 = getelementptr inbounds %struct.VlakRen, ptr %164, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !153
  %205 = getelementptr inbounds %struct.VlakRen, ptr %164, i64 0, i32 2
  %206 = load ptr, ptr %205, align 8, !tbaa !154
  %207 = getelementptr inbounds %struct.VlakRen, ptr %164, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !155
  %209 = getelementptr inbounds %struct.VertRen, ptr %202, i64 0, i32 5
  %210 = load i32, ptr %209, align 8, !tbaa !156
  %211 = call fastcc i32 @zbuf_part_project(ptr noundef nonnull %13, i32 noundef %210, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef %202, ptr noundef nonnull %19) #19
  %212 = getelementptr inbounds %struct.VertRen, ptr %204, i64 0, i32 5
  %213 = load i32, ptr %212, align 8, !tbaa !156
  %214 = call fastcc i32 @zbuf_part_project(ptr noundef nonnull %13, i32 noundef %213, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef %204, ptr noundef nonnull %20) #19
  %215 = getelementptr inbounds %struct.VertRen, ptr %206, i64 0, i32 5
  %216 = load i32, ptr %215, align 8, !tbaa !156
  %217 = call fastcc i32 @zbuf_part_project(ptr noundef nonnull %13, i32 noundef %216, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef %206, ptr noundef nonnull %21) #19
  %218 = and i32 %214, %211
  %219 = and i32 %218, %217
  %220 = icmp eq ptr %208, null
  br i1 %220, label %226, label %221

221:                                              ; preds = %201
  %222 = getelementptr inbounds %struct.VertRen, ptr %208, i64 0, i32 5
  %223 = load i32, ptr %222, align 8, !tbaa !156
  %224 = call fastcc i32 @zbuf_part_project(ptr noundef nonnull %13, i32 noundef %223, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %208, ptr noundef nonnull %22) #19
  %225 = and i32 %224, %219
  br label %226

226:                                              ; preds = %221, %201
  %227 = phi i32 [ %224, %221 ], [ %148, %201 ]
  %228 = phi i32 [ %225, %221 ], [ %219, %201 ]
  %229 = and i32 %228, 65535
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %291

231:                                              ; preds = %226
  br i1 %105, label %232, label %255

232:                                              ; preds = %231
  %233 = getelementptr inbounds %struct.Material, ptr %189, i64 0, i32 24
  %234 = load float, ptr %233, align 4, !tbaa !294
  %235 = fcmp une float %234, 0.000000e+00
  br i1 %235, label %236, label %255

236:                                              ; preds = %232
  %237 = load <4 x float>, ptr %19, align 16
  %238 = shufflevector <4 x float> %237, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %239 = shufflevector <4 x float> %237, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %202) #19
  %240 = load float, ptr %233, align 4, !tbaa !294
  %241 = load float, ptr %106, align 4, !tbaa !49
  %242 = fsub float %241, %240
  store float %242, ptr %106, align 4, !tbaa !49
  call void @projectverto(ptr noundef nonnull %15, ptr noundef nonnull %17, ptr noundef nonnull %16) #19
  %243 = load float, ptr %107, align 8, !tbaa !49
  %244 = load float, ptr %108, align 4, !tbaa !49
  %245 = insertelement <2 x float> %238, float %243, i64 1
  %246 = insertelement <2 x float> %239, float %244, i64 1
  %247 = fdiv <2 x float> %245, %246
  %248 = fadd <2 x float> %247, <float 1.000000e+00, float 1.000000e+00>
  %249 = fmul <2 x float> %248, <float 0x41E0000000000000, float 0x41E0000000000000>
  %250 = shufflevector <2 x float> %249, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %251 = fsub <2 x float> %249, %250
  %252 = extractelement <2 x float> %251, i64 0
  %253 = call float @llvm.fabs.f32(float %252)
  %254 = fptosi float %253 to i32
  br label %255

255:                                              ; preds = %231, %232, %236
  %256 = phi i32 [ %254, %236 ], [ 0, %232 ], [ 0, %231 ]
  %257 = add nuw nsw i32 %150, 1
  %258 = call i32 @testclip(ptr noundef nonnull %19) #19, !range !65
  %259 = call i32 @testclip(ptr noundef nonnull %20) #19, !range !65
  %260 = call i32 @testclip(ptr noundef nonnull %21) #19, !range !65
  br i1 %220, label %263, label %261

261:                                              ; preds = %255
  %262 = call i32 @testclip(ptr noundef nonnull %22) #19, !range !65
  br label %263

263:                                              ; preds = %261, %255
  %264 = phi i32 [ %262, %261 ], [ %227, %255 ]
  br i1 %23, label %265, label %291

265:                                              ; preds = %263
  %266 = getelementptr inbounds %struct.Material, ptr %189, i64 0, i32 2
  %267 = add nuw nsw i32 %150, 134217729
  %268 = getelementptr inbounds %struct.VlakRen, ptr %164, i64 0, i32 8
  br label %269

269:                                              ; preds = %265, %288
  %270 = phi i64 [ 0, %265 ], [ %289, %288 ]
  %271 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %270
  %272 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %270, i32 26
  store i32 %256, ptr %272, align 8, !tbaa !295
  %273 = load i16, ptr %266, align 8, !tbaa !147
  %274 = icmp eq i16 %273, 3
  br i1 %274, label %275, label %280

275:                                              ; preds = %269
  %276 = load i8, ptr %268, align 2, !tbaa !158
  %277 = zext i8 %276 to i32
  br i1 %220, label %279, label %278

278:                                              ; preds = %275
  call void @zbufclipwire(ptr noundef nonnull %271, i32 noundef %116, i32 noundef %257, i32 noundef %277, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22, i32 noundef %258, i32 noundef %259, i32 noundef %260, i32 noundef %264) #19
  br label %288

279:                                              ; preds = %275
  call void @zbufclipwire(ptr noundef nonnull %271, i32 noundef %116, i32 noundef %257, i32 noundef %277, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef null, i32 noundef %258, i32 noundef %259, i32 noundef %260, i32 noundef 0) #19
  br label %288

280:                                              ; preds = %269
  br i1 %220, label %287, label %281

281:                                              ; preds = %280
  %282 = load i8, ptr %193, align 1, !tbaa !151
  %283 = and i8 %282, 4
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %281
  call void @zbufclip4(ptr noundef nonnull %271, i32 noundef %116, i32 noundef %257, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22, i32 noundef %258, i32 noundef %259, i32 noundef %260, i32 noundef %264) #19
  br label %288

286:                                              ; preds = %281
  call void @zbufclip(ptr noundef nonnull %271, i32 noundef %116, i32 noundef %257, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21, i32 noundef %258, i32 noundef %259, i32 noundef %260) #19
  call void @zbufclip(ptr noundef nonnull %271, i32 noundef %116, i32 noundef %267, ptr noundef nonnull %19, ptr noundef nonnull %21, ptr noundef nonnull %22, i32 noundef %258, i32 noundef %260, i32 noundef %264) #19
  br label %288

287:                                              ; preds = %280
  call void @zbufclip(ptr noundef nonnull %271, i32 noundef %116, i32 noundef %257, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21, i32 noundef %258, i32 noundef %259, i32 noundef %260) #19
  br label %288

288:                                              ; preds = %287, %279, %278, %286, %285
  %289 = add nuw nsw i64 %270, 1
  %290 = icmp eq i64 %289, %110
  br i1 %290, label %291, label %269, !llvm.loop !296

291:                                              ; preds = %288, %263, %226
  %292 = phi i32 [ %149, %226 ], [ %257, %263 ], [ %257, %288 ]
  %293 = phi i32 [ %227, %226 ], [ %264, %263 ], [ %264, %288 ]
  %294 = icmp eq i32 %153, 255
  br i1 %294, label %295, label %300

295:                                              ; preds = %291
  %296 = load ptr, ptr %104, align 8, !tbaa !196
  %297 = load ptr, ptr %109, align 8, !tbaa !197
  %298 = call i32 %296(ptr noundef %297) #17
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %295, %291, %188, %197, %192
  %301 = phi i32 [ %149, %192 ], [ %149, %197 ], [ %149, %188 ], [ %292, %291 ], [ %292, %295 ]
  %302 = phi i32 [ %148, %192 ], [ %148, %197 ], [ %148, %188 ], [ %293, %291 ], [ %293, %295 ]
  %303 = add nuw nsw i32 %150, 1
  %304 = load i32, ptr %141, align 4, !tbaa !137
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %146, label %306, !llvm.loop !297

306:                                              ; preds = %300, %295, %138
  %307 = phi ptr [ %118, %138 ], [ %164, %295 ], [ %164, %300 ]
  %308 = phi ptr [ %117, %138 ], [ %189, %295 ], [ %189, %300 ]
  %309 = phi i32 [ %115, %138 ], [ %301, %300 ], [ %292, %295 ]
  %310 = phi i32 [ %114, %138 ], [ %302, %300 ], [ %293, %295 ]
  %311 = phi i32 [ %113, %138 ], [ %190, %295 ], [ %190, %300 ]
  %312 = load ptr, ptr %104, align 8, !tbaa !196
  %313 = load ptr, ptr %109, align 8, !tbaa !197
  %314 = call i32 %312(ptr noundef %313) #17
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %325

316:                                              ; preds = %306, %133, %111
  %317 = phi ptr [ %118, %133 ], [ %307, %306 ], [ %118, %111 ]
  %318 = phi ptr [ %117, %133 ], [ %308, %306 ], [ %117, %111 ]
  %319 = phi i32 [ %115, %133 ], [ %309, %306 ], [ %115, %111 ]
  %320 = phi i32 [ %114, %133 ], [ %310, %306 ], [ %114, %111 ]
  %321 = phi i32 [ %113, %133 ], [ %311, %306 ], [ %113, %111 ]
  %322 = add nuw nsw i32 %116, 1
  %323 = load ptr, ptr %112, align 8, !tbaa !42
  %324 = icmp eq ptr %323, null
  br i1 %324, label %325, label %111, !llvm.loop !298

325:                                              ; preds = %316, %306, %99
  %326 = phi i32 [ 0, %99 ], [ %309, %306 ], [ %319, %316 ]
  br i1 %23, label %327, label %343

327:                                              ; preds = %325
  %328 = zext nneg i32 %9 to i64
  br label %329

329:                                              ; preds = %327, %340
  %330 = phi i64 [ 0, %327 ], [ %341, %340 ]
  %331 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %330
  %332 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  %333 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %330, i32 17
  %334 = load ptr, ptr %333, align 16, !tbaa !289
  call void %332(ptr noundef %334) #17
  %335 = getelementptr inbounds [16 x %struct.ZSpan], ptr %14, i64 0, i64 %330, i32 21
  %336 = load ptr, ptr %335, align 16, !tbaa !162
  %337 = icmp eq ptr %336, null
  br i1 %337, label %340, label %338

338:                                              ; preds = %329
  %339 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %339(ptr noundef nonnull %336) #17
  br label %340

340:                                              ; preds = %338, %329
  call void @zbuf_free_span(ptr noundef nonnull %331) #19
  %341 = add nuw nsw i64 %330, 1
  %342 = icmp eq i64 %341, %328
  br i1 %342, label %343, label %329, !llvm.loop !299

343:                                              ; preds = %340, %325
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 3584, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 6144, ptr nonnull %13) #18
  ret i32 %326
}

; Function Attrs: optsize
declare i32 @zbuffer_strands_abuf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @zbuffer_transp_shade(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ShadeSample, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca [16 x %struct.ShadeResult], align 16
  %8 = alloca [2000 x %struct.ZTranspRow], align 16
  %9 = alloca [16 x ptr], align 16
  %10 = alloca %struct.ZTranspRow, align 4
  %11 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !300
  call void @llvm.lifetime.start.p0(i64 27080, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 3392, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 56000, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #18
  %13 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %14 = tail call i16 @llvm.umax.i16(i16 %13, i16 1)
  %15 = sext i16 %14 to i64
  %16 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !196
  %17 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !197
  %18 = tail call i32 %16(ptr noundef %17) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %555

20:                                               ; preds = %4
  %21 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !120
  %22 = icmp sgt i16 %21, 16
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !301
  br label %555

25:                                               ; preds = %20
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %27 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %28 = load i32, ptr %27, align 8, !tbaa !117
  %29 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %30 = load i32, ptr %29, align 4, !tbaa !118
  %31 = mul nsw i32 %30, %28
  %32 = sext i32 %31 to i64
  %33 = mul nsw i64 %32, 72
  %34 = tail call ptr %26(i64 noundef %33, ptr noundef nonnull @.str.14) #17
  %35 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 63), align 4, !tbaa !303
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !112
  %40 = and i32 %39, 32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %44 = load i32, ptr %27, align 8, !tbaa !117
  %45 = load i32, ptr %29, align 4, !tbaa !118
  %46 = mul nsw i32 %45, %44
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 %47, 112
  %49 = tail call ptr %43(i64 noundef %48, ptr noundef nonnull @.str.15) #17
  %50 = tail call ptr @strand_shade_cache_create() #17
  br label %51

51:                                               ; preds = %42, %37, %25
  %52 = phi ptr [ %50, %42 ], [ null, %37 ], [ null, %25 ]
  %53 = phi ptr [ %49, %42 ], [ null, %37 ], [ null, %25 ]
  call void @shade_sample_initialize(ptr noundef nonnull %5, ptr noundef nonnull %0, ptr noundef %1) #17
  %54 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 7
  %55 = load i32, ptr %54, align 4, !tbaa !304
  %56 = and i32 %55, -2
  %57 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !120
  %58 = icmp eq i16 %57, 0
  %59 = sitofp i16 %57 to float
  %60 = fdiv float 1.000000e+00, %59
  %61 = select i1 %58, float 1.000000e+00, float %60
  %62 = call fastcc i32 @zbuffer_abuf_render(ptr noundef nonnull %0, ptr noundef %34, ptr noundef %53, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %52) #19
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %51
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %65(ptr noundef %34) #17
  %66 = icmp eq ptr %53, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %68(ptr noundef nonnull %53) #17
  br label %69

69:                                               ; preds = %67, %64
  %70 = icmp eq ptr %52, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %69
  call void @strand_shade_cache_free(ptr noundef nonnull %52) #17
  br label %72

72:                                               ; preds = %71, %69
  call void @freepsA(ptr noundef nonnull %6) #19
  br label %555

73:                                               ; preds = %51
  %74 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 8
  %75 = load ptr, ptr %74, align 8, !tbaa !305
  %76 = call i32 @get_sample_layers(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %9) #17
  %77 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !82
  %78 = and i32 %77, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  call void @ISB_create(ptr noundef nonnull %0, ptr noundef %34) #17
  br label %81

81:                                               ; preds = %80, %73
  %82 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !120
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 6
  %86 = load i32, ptr %85, align 8, !tbaa !112
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !306
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %95 = load i32, ptr %27, align 8, !tbaa !117
  %96 = load i32, ptr %29, align 4, !tbaa !118
  %97 = mul nsw i32 %96, %95
  %98 = sext i32 %97 to i64
  %99 = shl nsw i64 %98, 1
  %100 = call ptr %94(i64 noundef %99, ptr noundef nonnull @.str.16) #17
  br label %101

101:                                              ; preds = %93, %89, %84, %81
  %102 = phi ptr [ %100, %93 ], [ null, %89 ], [ null, %84 ], [ null, %81 ]
  %103 = and i32 %55, 512
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %119, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 6
  %107 = load i32, ptr %106, align 8, !tbaa !112
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 12
  %112 = load ptr, ptr %111, align 8, !tbaa !307
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.RenderLayer, ptr %1, i64 0, i32 11
  %116 = load ptr, ptr %115, align 8, !tbaa !308
  br label %117

117:                                              ; preds = %110, %114
  %118 = phi ptr [ %116, %114 ], [ %112, %110 ]
  call fastcc void @reset_sky_speedvectors(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %118) #19
  br label %119

119:                                              ; preds = %105, %117, %101
  %120 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 17
  %121 = load i16, ptr %120, align 4, !tbaa !309
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %119
  %124 = load i32, ptr %27, align 8, !tbaa !117
  %125 = add nsw i32 %124, 1
  %126 = shl nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, ptr %2, i64 %127
  %129 = sext i32 %125 to i64
  %130 = getelementptr inbounds %struct.APixstr, ptr %34, i64 %129
  %131 = getelementptr inbounds %struct.APixstrand, ptr %53, i64 %129
  br label %132

132:                                              ; preds = %123, %119
  %133 = phi ptr [ %128, %123 ], [ %2, %119 ]
  %134 = phi i32 [ 1, %123 ], [ 0, %119 ]
  %135 = phi i32 [ %125, %123 ], [ 0, %119 ]
  %136 = phi ptr [ %131, %123 ], [ %53, %119 ]
  %137 = phi ptr [ %130, %123 ], [ %34, %119 ]
  %138 = getelementptr inbounds %struct.RenderResult, ptr %12, i64 0, i32 13, i32 2
  store volatile i32 0, ptr %138, align 8, !tbaa !310
  %139 = sext i16 %121 to i32
  %140 = sub nsw i32 0, %139
  %141 = getelementptr inbounds %struct.RenderResult, ptr %12, i64 0, i32 13, i32 3
  store volatile i32 %140, ptr %141, align 4, !tbaa !312
  %142 = getelementptr inbounds %struct.RenderResult, ptr %12, i64 0, i32 14
  store ptr %1, ptr %142, align 8, !tbaa !313
  %143 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %144 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %145 = load i32, ptr %144, align 8, !tbaa !122
  %146 = add nsw i32 %145, %134
  %147 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 3
  %148 = load i32, ptr %147, align 4, !tbaa !168
  %149 = sub nsw i32 %148, %134
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %542

151:                                              ; preds = %132
  %152 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 1
  %153 = icmp eq ptr %53, null
  %154 = getelementptr inbounds %struct.ZTranspRow, ptr %8, i64 0, i32 1
  %155 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 1, i32 1
  %156 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 1
  %157 = and i32 %55, 2048
  %158 = icmp eq i32 %157, 0
  %159 = icmp slt i32 %76, 1
  %160 = and i32 %55, 262144
  %161 = icmp eq i32 %160, 0
  %162 = sext i16 %14 to i64
  %163 = mul nsw i64 %162, 212
  %164 = icmp sgt i16 %14, 0
  %165 = icmp eq ptr %102, null
  %166 = icmp eq ptr %52, null
  %167 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 3
  %168 = getelementptr inbounds %struct.RenderResult, ptr %12, i64 0, i32 2
  %169 = icmp eq i32 %56, 0
  %170 = getelementptr inbounds %struct.ShadeResult, ptr %7, i64 0, i32 16
  %171 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 3
  %172 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %173 = zext nneg i32 %76 to i64
  %174 = zext nneg i32 %76 to i64
  br label %175

175:                                              ; preds = %151, %527
  %176 = phi ptr [ %137, %151 ], [ %530, %527 ]
  %177 = phi ptr [ %136, %151 ], [ %531, %527 ]
  %178 = phi i32 [ %135, %151 ], [ %535, %527 ]
  %179 = phi i32 [ %146, %151 ], [ %536, %527 ]
  %180 = phi ptr [ %133, %151 ], [ %534, %527 ]
  %181 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 96), align 8, !tbaa !196
  %182 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 97), align 8, !tbaa !197
  %183 = call i32 %181(ptr noundef %182) #17
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %542

185:                                              ; preds = %175
  %186 = load i32, ptr %143, align 8, !tbaa !121
  %187 = add nsw i32 %186, %134
  %188 = load i32, ptr %152, align 4, !tbaa !167
  %189 = sub nsw i32 %188, %134
  %190 = icmp slt i32 %187, %189
  br i1 %190, label %191, label %527

191:                                              ; preds = %185
  %192 = sext i32 %178 to i64
  br label %193

193:                                              ; preds = %191, %518
  %194 = phi i64 [ %192, %191 ], [ %523, %518 ]
  %195 = phi ptr [ %180, %191 ], [ %522, %518 ]
  %196 = phi ptr [ %176, %191 ], [ %520, %518 ]
  %197 = phi ptr [ %177, %191 ], [ %521, %518 ]
  %198 = phi i32 [ %187, %191 ], [ %519, %518 ]
  %199 = getelementptr inbounds %struct.APixstr, ptr %196, i64 0, i32 2
  %200 = load i32, ptr %199, align 8, !tbaa !46
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %193
  br i1 %153, label %208, label %203

203:                                              ; preds = %202
  %204 = getelementptr inbounds %struct.APixstrand, ptr %197, i64 0, i32 2
  %205 = load i32, ptr %204, align 8, !tbaa !46
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %193, %203
  br label %211

208:                                              ; preds = %203, %202
  br i1 %104, label %518, label %209

209:                                              ; preds = %208
  %210 = trunc i64 %194 to i32
  call fastcc void @add_transp_speed(ptr noundef %1, i32 noundef %210, ptr noundef null, float noundef 0.000000e+00, ptr noundef %75) #19
  br label %518

211:                                              ; preds = %207, %239
  %212 = phi ptr [ %242, %239 ], [ %196, %207 ]
  %213 = phi i32 [ %240, %239 ], [ 0, %207 ]
  br label %214

214:                                              ; preds = %211, %220
  %215 = phi i64 [ 0, %211 ], [ %237, %220 ]
  %216 = phi i32 [ %213, %211 ], [ %236, %220 ]
  %217 = getelementptr inbounds %struct.APixstr, ptr %212, i64 0, i32 2, i64 %215
  %218 = load i32, ptr %217, align 4, !tbaa !46
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %239, label %220

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.APixstr, ptr %212, i64 0, i32 3, i64 %215
  %222 = load i32, ptr %221, align 4, !tbaa !46
  %223 = sext i32 %216 to i64
  %224 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 %223
  store i32 %222, ptr %224, align 4, !tbaa !314
  %225 = getelementptr inbounds %struct.APixstr, ptr %212, i64 0, i32 1, i64 %215
  %226 = load i32, ptr %225, align 4, !tbaa !46
  %227 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 %223, i32 1
  store i32 %226, ptr %227, align 4, !tbaa !316
  %228 = load i32, ptr %217, align 4, !tbaa !46
  %229 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 %223, i32 2
  store i32 %228, ptr %229, align 4, !tbaa !317
  %230 = getelementptr inbounds [4 x i16], ptr %212, i64 0, i64 %215
  %231 = load i16, ptr %230, align 2, !tbaa !318
  %232 = zext i16 %231 to i32
  %233 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 %223, i32 3
  store i32 %232, ptr %233, align 4, !tbaa !319
  %234 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 %223, i32 4
  store i32 -1, ptr %234, align 4, !tbaa !320
  %235 = call i32 @llvm.smin.i32(i32 %216, i32 1998)
  %236 = add nsw i32 %235, 1
  %237 = add nuw nsw i64 %215, 1
  %238 = icmp eq i64 %237, 4
  br i1 %238, label %239, label %214, !llvm.loop !321

239:                                              ; preds = %214, %220
  %240 = phi i32 [ %216, %214 ], [ %236, %220 ]
  %241 = getelementptr inbounds %struct.APixstr, ptr %212, i64 0, i32 5
  %242 = load ptr, ptr %241, align 8, !tbaa !322
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %211, !llvm.loop !324

244:                                              ; preds = %239
  %245 = icmp eq ptr %197, null
  %246 = select i1 %153, i1 true, i1 %245
  br i1 %246, label %322, label %247

247:                                              ; preds = %244
  %248 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %249 = icmp eq i16 %248, 0
  %250 = sext i16 %248 to i32
  %251 = icmp slt i16 %248, 1
  %252 = zext i1 %249 to i32
  %253 = add nuw nsw i32 %250, 3
  %254 = and i32 %253, 65532
  %255 = add nsw i32 %250, -1
  %256 = insertelement <4 x i32> poison, i32 %255, i64 0
  %257 = shufflevector <4 x i32> %256, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %258

258:                                              ; preds = %247, %318
  %259 = phi ptr [ %197, %247 ], [ %320, %318 ]
  %260 = phi i32 [ %240, %247 ], [ %315, %318 ]
  br label %261

261:                                              ; preds = %258, %314
  %262 = phi i64 [ 0, %258 ], [ %316, %314 ]
  %263 = phi i32 [ %260, %258 ], [ %315, %314 ]
  %264 = getelementptr inbounds %struct.APixstrand, ptr %259, i64 0, i32 2, i64 %262
  %265 = load i32, ptr %264, align 4, !tbaa !46
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %314, label %267

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.APixstrand, ptr %259, i64 0, i32 3, i64 %262
  %269 = load i32, ptr %268, align 4, !tbaa !46
  %270 = sext i32 %263 to i64
  %271 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 %270
  store i32 %269, ptr %271, align 4, !tbaa !314
  %272 = getelementptr inbounds %struct.APixstrand, ptr %259, i64 0, i32 1, i64 %262
  %273 = load i32, ptr %272, align 4, !tbaa !46
  %274 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 %270, i32 1
  store i32 %273, ptr %274, align 4, !tbaa !316
  %275 = load i32, ptr %264, align 4, !tbaa !46
  %276 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 %270, i32 2
  store i32 %275, ptr %276, align 4, !tbaa !317
  %277 = getelementptr inbounds [4 x i16], ptr %259, i64 0, i64 %262
  %278 = load i16, ptr %277, align 2, !tbaa !318
  %279 = zext i16 %278 to i32
  %280 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 %270, i32 3
  store i32 %279, ptr %280, align 4, !tbaa !319
  %281 = getelementptr inbounds %struct.APixstrand, ptr %259, i64 0, i32 4, i64 %262
  %282 = load i32, ptr %281, align 4, !tbaa !46
  %283 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 %270, i32 4
  store i32 %282, ptr %283, align 4, !tbaa !320
  br i1 %251, label %301, label %284

284:                                              ; preds = %267
  %285 = insertelement <4 x i32> poison, i32 %279, i64 0
  %286 = shufflevector <4 x i32> %285, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %287

287:                                              ; preds = %287, %284
  %288 = phi i32 [ 0, %284 ], [ %294, %287 ]
  %289 = phi <4 x i32> [ zeroinitializer, %284 ], [ %293, %287 ]
  %290 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %284 ], [ %295, %287 ]
  %291 = lshr <4 x i32> %286, %290
  %292 = and <4 x i32> %291, <i32 1, i32 1, i32 1, i32 1>
  %293 = add <4 x i32> %292, %289
  %294 = add i32 %288, 4
  %295 = add <4 x i32> %290, <i32 4, i32 4, i32 4, i32 4>
  %296 = icmp eq i32 %294, %254
  br i1 %296, label %297, label %287, !llvm.loop !325

297:                                              ; preds = %287
  %298 = icmp ugt <4 x i32> %290, %257
  %299 = select <4 x i1> %298, <4 x i32> %289, <4 x i32> %293
  %300 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %299)
  br label %301

301:                                              ; preds = %297, %267
  %302 = phi i32 [ %252, %267 ], [ %300, %297 ]
  %303 = getelementptr inbounds %struct.APixstrand, ptr %259, i64 0, i32 5, i64 %262
  %304 = load float, ptr %303, align 4, !tbaa !49
  %305 = sitofp i32 %302 to float
  %306 = fdiv float %304, %305
  %307 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 %270, i32 5
  store float %306, ptr %307, align 4, !tbaa !326
  %308 = getelementptr inbounds %struct.APixstrand, ptr %259, i64 0, i32 6, i64 %262
  %309 = load float, ptr %308, align 4, !tbaa !49
  %310 = fdiv float %309, %305
  %311 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 %270, i32 6
  store float %310, ptr %311, align 4, !tbaa !327
  %312 = call i32 @llvm.smin.i32(i32 %263, i32 1998)
  %313 = add nsw i32 %312, 1
  br label %314

314:                                              ; preds = %261, %301
  %315 = phi i32 [ %313, %301 ], [ %263, %261 ]
  %316 = add nuw nsw i64 %262, 1
  %317 = icmp eq i64 %316, 4
  br i1 %317, label %318, label %261, !llvm.loop !328

318:                                              ; preds = %314
  %319 = getelementptr inbounds %struct.APixstrand, ptr %259, i64 0, i32 7
  %320 = load ptr, ptr %319, align 8, !tbaa !329
  %321 = icmp eq ptr %320, null
  br i1 %321, label %322, label %258, !llvm.loop !331

322:                                              ; preds = %318, %244
  %323 = phi i32 [ %240, %244 ], [ %315, %318 ]
  %324 = icmp eq i32 %323, 2
  br i1 %324, label %325, label %330

325:                                              ; preds = %322
  %326 = load i32, ptr %154, align 4, !tbaa !316
  %327 = load i32, ptr %155, align 16, !tbaa !316
  %328 = icmp slt i32 %326, %327
  br i1 %328, label %329, label %334

329:                                              ; preds = %325
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %10, ptr noundef nonnull align 16 dereferenceable(28) %8, i64 28, i1 false), !tbaa.struct !332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(28) %156, i64 28, i1 false), !tbaa.struct !332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %156, ptr noundef nonnull align 4 dereferenceable(28) %10, i64 28, i1 false), !tbaa.struct !332
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10)
  br label %334

330:                                              ; preds = %322
  %331 = icmp sgt i32 %323, 2
  br i1 %331, label %332, label %334

332:                                              ; preds = %330
  %333 = zext nneg i32 %323 to i64
  call void @qsort(ptr noundef nonnull %8, i64 noundef %333, i64 noundef 28, ptr noundef nonnull @vergzvlak) #17
  br label %334

334:                                              ; preds = %330, %332, %325, %329
  br i1 %158, label %357, label %335

335:                                              ; preds = %334
  %336 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !333
  %337 = add nsw i32 %323, -1
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !314
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %336, i64 %341, i32 2
  %343 = load ptr, ptr %342, align 8, !tbaa !131
  %344 = getelementptr inbounds %struct.ObjectRen, ptr %343, i64 0, i32 2
  %345 = load ptr, ptr %344, align 8, !tbaa !193
  %346 = icmp eq ptr %345, null
  %347 = select i1 %346, i1 true, i1 %159
  br i1 %347, label %357, label %348

348:                                              ; preds = %335
  %349 = trunc i64 %194 to i32
  br label %350

350:                                              ; preds = %348, %350
  %351 = phi i64 [ 0, %348 ], [ %355, %350 ]
  %352 = getelementptr inbounds [16 x ptr], ptr %9, i64 0, i64 %351
  %353 = load ptr, ptr %352, align 8, !tbaa !42
  %354 = load ptr, ptr %344, align 8, !tbaa !193
  call fastcc void @add_transp_obindex(ptr noundef %353, i32 noundef %349, ptr noundef %354) #19
  %355 = add nuw nsw i64 %351, 1
  %356 = icmp eq i64 %355, %173
  br i1 %356, label %357, label %350, !llvm.loop !334

357:                                              ; preds = %350, %335, %334
  br i1 %161, label %404, label %358

358:                                              ; preds = %357
  %359 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !333
  %360 = add nsw i32 %323, -1
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 %361
  %363 = load i32, ptr %362, align 4, !tbaa !314
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %359, i64 %364, i32 2
  %366 = load ptr, ptr %365, align 8, !tbaa !131
  %367 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 %361, i32 2
  %368 = load i32, ptr %367, align 4, !tbaa !317
  %369 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 %361, i32 4
  %370 = load i32, ptr %369, align 4, !tbaa !320
  %371 = icmp eq i32 %370, -1
  br i1 %371, label %372, label %383

372:                                              ; preds = %358
  %373 = add i32 %368, 134217727
  %374 = and i32 %373, 134217727
  %375 = getelementptr inbounds %struct.ObjectRen, ptr %366, i64 0, i32 11
  %376 = load i32, ptr %375, align 4, !tbaa !137
  %377 = icmp slt i32 %374, %376
  br i1 %377, label %378, label %404

378:                                              ; preds = %372
  %379 = call ptr @RE_findOrAddVlak(ptr noundef nonnull %366, i32 noundef %374) #17
  %380 = icmp eq ptr %379, null
  br i1 %380, label %404, label %381

381:                                              ; preds = %378
  %382 = getelementptr inbounds %struct.VlakRen, ptr %379, i64 0, i32 5
  br label %391

383:                                              ; preds = %358
  %384 = add nsw i32 %368, -1
  %385 = call ptr @RE_findOrAddStrand(ptr noundef %366, i32 noundef %384) #17
  %386 = icmp eq ptr %385, null
  br i1 %386, label %404, label %387

387:                                              ; preds = %383
  %388 = getelementptr inbounds %struct.StrandRen, ptr %385, i64 0, i32 1
  %389 = load ptr, ptr %388, align 8, !tbaa !209
  %390 = getelementptr inbounds %struct.StrandBuffer, ptr %389, i64 0, i32 7
  br label %391

391:                                              ; preds = %387, %381
  %392 = phi ptr [ %382, %381 ], [ %390, %387 ]
  %393 = load ptr, ptr %392, align 8, !tbaa !42
  %394 = icmp eq ptr %393, null
  %395 = select i1 %394, i1 true, i1 %159
  br i1 %395, label %404, label %396

396:                                              ; preds = %391
  %397 = trunc i64 %194 to i32
  br label %398

398:                                              ; preds = %396, %398
  %399 = phi i64 [ 0, %396 ], [ %402, %398 ]
  %400 = getelementptr inbounds [16 x ptr], ptr %9, i64 0, i64 %399
  %401 = load ptr, ptr %400, align 8, !tbaa !42
  call fastcc void @add_transp_material_index(ptr noundef %401, i32 noundef %397, ptr noundef nonnull %393) #19
  %402 = add nuw nsw i64 %399, 1
  %403 = icmp eq i64 %402, %174
  br i1 %403, label %404, label %398, !llvm.loop !335

404:                                              ; preds = %398, %391, %372, %383, %378, %357
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %7, i8 0, i64 %163, i1 false)
  br i1 %164, label %405, label %413

405:                                              ; preds = %404, %410
  %406 = phi i64 [ %411, %410 ], [ 0, %404 ]
  %407 = getelementptr inbounds [16 x %struct.ShadeResult], ptr %7, i64 0, i64 %406, i32 4
  store float 0x42374876E0000000, ptr %407, align 4, !tbaa !336
  br i1 %104, label %410, label %408

408:                                              ; preds = %405
  %409 = getelementptr inbounds [16 x %struct.ShadeResult], ptr %7, i64 0, i64 %406, i32 16
  store <4 x float> <float 1.000000e+04, float 1.000000e+04, float 1.000000e+04, float 1.000000e+04>, ptr %409, align 4, !tbaa !49
  br label %410

410:                                              ; preds = %405, %408
  %411 = add nuw nsw i64 %406, 1
  %412 = icmp eq i64 %411, %15
  br i1 %412, label %413, label %405, !llvm.loop !338

413:                                              ; preds = %410, %404
  %414 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !120
  %415 = icmp eq i16 %414, 0
  br i1 %415, label %416, label %441

416:                                              ; preds = %413
  %417 = icmp sgt i32 %323, 0
  br i1 %417, label %418, label %435

418:                                              ; preds = %416
  %419 = zext nneg i32 %323 to i64
  br label %420

420:                                              ; preds = %418, %433
  %421 = phi i64 [ %419, %418 ], [ %422, %433 ]
  %422 = add nsw i64 %421, -1
  %423 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 %422
  %424 = call fastcc i32 @shade_tra_samples(ptr noundef nonnull %5, ptr noundef %52, i32 noundef %198, i32 noundef %179, ptr noundef nonnull %423, i32 noundef %56) #19, !range !60
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %433, label %426

426:                                              ; preds = %420
  %427 = call fastcc i32 @addtosamp_shr(ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef %56) #19
  call void @addAlphaUnderFloat(ptr noundef %195, ptr noundef nonnull %171) #17
  %428 = and i32 %427, 65535
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %433

430:                                              ; preds = %426
  br i1 %166, label %435, label %431

431:                                              ; preds = %430
  %432 = trunc i64 %422 to i32
  call fastcc void @unref_strand_samples(ptr noundef nonnull %52, ptr noundef nonnull %8, i32 noundef %432) #19
  br label %435

433:                                              ; preds = %426, %420
  %434 = icmp ugt i64 %421, 1
  br i1 %434, label %420, label %435, !llvm.loop !339

435:                                              ; preds = %433, %416, %430, %431
  %436 = load float, ptr %172, align 4, !tbaa !49
  %437 = fcmp une float %436, 0.000000e+00
  br i1 %437, label %438, label %518

438:                                              ; preds = %435
  %439 = trunc i64 %194 to i32
  call fastcc void @add_transp_passes(ptr noundef %1, i32 noundef %439, ptr noundef nonnull %7, float noundef %436) #19
  br i1 %104, label %518, label %440

440:                                              ; preds = %438
  call fastcc void @add_transp_speed(ptr noundef %1, i32 noundef %439, ptr noundef nonnull %170, float noundef %436, ptr noundef %75) #19
  br label %518

441:                                              ; preds = %413
  %442 = getelementptr inbounds i16, ptr %102, i64 %194
  %443 = icmp sgt i32 %323, 0
  br i1 %443, label %444, label %468

444:                                              ; preds = %441
  %445 = zext nneg i32 %323 to i64
  br label %446

446:                                              ; preds = %444, %466
  %447 = phi i64 [ %445, %444 ], [ %448, %466 ]
  %448 = add nsw i64 %447, -1
  %449 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 %448
  %450 = call fastcc i32 @shade_tra_samples(ptr noundef nonnull %5, ptr noundef %52, i32 noundef %198, i32 noundef %179, ptr noundef nonnull %449, i32 noundef %56) #19, !range !60
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %466, label %452

452:                                              ; preds = %446
  %453 = call fastcc i32 @addtosamp_shr(ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef %56) #19
  br i1 %165, label %460, label %454

454:                                              ; preds = %452
  %455 = getelementptr inbounds [2000 x %struct.ZTranspRow], ptr %8, i64 0, i64 %448, i32 3
  %456 = load i32, ptr %455, align 4, !tbaa !319
  %457 = load i16, ptr %442, align 2, !tbaa !318
  %458 = trunc i32 %456 to i16
  %459 = or i16 %457, %458
  store i16 %459, ptr %442, align 2, !tbaa !318
  br label %460

460:                                              ; preds = %454, %452
  %461 = and i32 %453, 65535
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %466

463:                                              ; preds = %460
  br i1 %166, label %468, label %464

464:                                              ; preds = %463
  %465 = trunc i64 %448 to i32
  call fastcc void @unref_strand_samples(ptr noundef nonnull %52, ptr noundef nonnull %8, i32 noundef %465) #19
  br label %468

466:                                              ; preds = %460, %446
  %467 = icmp ugt i64 %447, 1
  br i1 %467, label %446, label %468, !llvm.loop !340

468:                                              ; preds = %466, %441, %463, %464
  %469 = load ptr, ptr %167, align 8, !tbaa !306
  %470 = icmp eq ptr %469, null
  %471 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !120
  %472 = icmp sgt i16 %471, 0
  br i1 %470, label %478, label %473

473:                                              ; preds = %468
  br i1 %472, label %474, label %518

474:                                              ; preds = %473
  %475 = trunc i64 %194 to i32
  %476 = shl nsw i32 %475, 2
  %477 = sext i32 %476 to i64
  br label %479

478:                                              ; preds = %468
  br i1 %472, label %498, label %512

479:                                              ; preds = %474, %493
  %480 = phi i64 [ 0, %474 ], [ %494, %493 ]
  %481 = getelementptr inbounds [16 x %struct.ShadeResult], ptr %7, i64 0, i64 %480
  %482 = getelementptr inbounds [4 x float], ptr %481, i64 0, i64 3
  %483 = load float, ptr %482, align 4, !tbaa !49
  %484 = fcmp une float %483, 0.000000e+00
  br i1 %484, label %485, label %493

485:                                              ; preds = %479
  %486 = getelementptr inbounds %struct.ShadeSample, ptr %5, i64 0, i32 1, i64 %480
  %487 = load ptr, ptr %486, align 8, !tbaa !42
  %488 = getelementptr inbounds %struct.RenderLayer, ptr %487, i64 0, i32 11
  %489 = load ptr, ptr %488, align 8, !tbaa !308
  %490 = getelementptr inbounds float, ptr %489, i64 %477
  call void @addAlphaOverFloat(ptr noundef %490, ptr noundef nonnull %481) #17
  call fastcc void @add_transp_passes(ptr noundef %487, i32 noundef %475, ptr noundef nonnull %481, float noundef %483) #19
  br i1 %104, label %493, label %491

491:                                              ; preds = %485
  %492 = getelementptr inbounds [16 x %struct.ShadeResult], ptr %7, i64 0, i64 %480, i32 16
  call fastcc void @add_transp_speed(ptr noundef nonnull %487, i32 noundef %475, ptr noundef nonnull %492, float noundef %483, ptr noundef %75) #19
  br label %493

493:                                              ; preds = %485, %491, %479
  %494 = add nuw nsw i64 %480, 1
  %495 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !120
  %496 = sext i16 %495 to i64
  %497 = icmp slt i64 %494, %496
  br i1 %497, label %479, label %518, !llvm.loop !341

498:                                              ; preds = %478, %498
  %499 = phi i64 [ %508, %498 ], [ 0, %478 ]
  %500 = phi float [ %507, %498 ], [ 0.000000e+00, %478 ]
  %501 = trunc i64 %499 to i32
  %502 = shl nuw i32 1, %501
  %503 = getelementptr inbounds [16 x %struct.ShadeResult], ptr %7, i64 0, i64 %499
  %504 = load i32, ptr %168, align 8, !tbaa !342
  call void @add_filt_fmask(i32 noundef %502, ptr noundef nonnull %503, ptr noundef %195, i32 noundef %504) #17
  %505 = getelementptr inbounds [4 x float], ptr %503, i64 0, i64 3
  %506 = load float, ptr %505, align 4, !tbaa !49
  %507 = fadd float %500, %506
  %508 = add nuw nsw i64 %499, 1
  %509 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !120
  %510 = sext i16 %509 to i64
  %511 = icmp slt i64 %508, %510
  br i1 %511, label %498, label %512, !llvm.loop !343

512:                                              ; preds = %498, %478
  %513 = phi float [ 0.000000e+00, %478 ], [ %507, %498 ]
  br i1 %169, label %518, label %514

514:                                              ; preds = %512
  %515 = fmul float %61, %513
  call fastcc void @merge_transp_passes(ptr noundef %1, ptr noundef nonnull %7) #19
  %516 = trunc i64 %194 to i32
  call fastcc void @add_transp_passes(ptr noundef %1, i32 noundef %516, ptr noundef nonnull %7, float noundef %515) #19
  br i1 %104, label %518, label %517

517:                                              ; preds = %514
  call fastcc void @add_transp_speed(ptr noundef %1, i32 noundef %516, ptr noundef nonnull %170, float noundef %515, ptr noundef %75) #19
  br label %518

518:                                              ; preds = %493, %473, %514, %517, %512, %209, %208, %435, %440, %438
  %519 = add nsw i32 %198, 1
  %520 = getelementptr inbounds %struct.APixstr, ptr %196, i64 1
  %521 = getelementptr inbounds %struct.APixstrand, ptr %197, i64 1
  %522 = getelementptr inbounds float, ptr %195, i64 4
  %523 = add nsw i64 %194, 1
  %524 = load i32, ptr %152, align 4, !tbaa !167
  %525 = sub nsw i32 %524, %134
  %526 = icmp slt i32 %519, %525
  br i1 %526, label %193, label %527, !llvm.loop !344

527:                                              ; preds = %518, %185
  %528 = load i32, ptr %27, align 8, !tbaa !117
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.APixstr, ptr %176, i64 %529
  %531 = getelementptr inbounds %struct.APixstrand, ptr %177, i64 %529
  %532 = shl nsw i32 %528, 2
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds float, ptr %180, i64 %533
  %535 = add nsw i32 %528, %178
  %536 = add nsw i32 %179, 1
  %537 = load volatile i32, ptr %141, align 4, !tbaa !312
  %538 = add nsw i32 %537, 1
  store volatile i32 %538, ptr %141, align 4, !tbaa !312
  %539 = load i32, ptr %147, align 4, !tbaa !168
  %540 = sub nsw i32 %539, %134
  %541 = icmp slt i32 %536, %540
  br i1 %541, label %175, label %542, !llvm.loop !345

542:                                              ; preds = %527, %175, %132
  store ptr null, ptr %142, align 8, !tbaa !313
  %543 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %543(ptr noundef %34) #17
  %544 = icmp eq ptr %53, null
  br i1 %544, label %547, label %545

545:                                              ; preds = %542
  %546 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %546(ptr noundef nonnull %53) #17
  br label %547

547:                                              ; preds = %545, %542
  %548 = icmp eq ptr %52, null
  br i1 %548, label %550, label %549

549:                                              ; preds = %547
  call void @strand_shade_cache_free(ptr noundef nonnull %52) #17
  br label %550

550:                                              ; preds = %549, %547
  call void @freepsA(ptr noundef nonnull %6) #19
  %551 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !82
  %552 = and i32 %551, 2
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %555, label %554

554:                                              ; preds = %550
  call void @ISB_free(ptr noundef nonnull %0) #17
  br label %555

555:                                              ; preds = %550, %554, %4, %72, %23
  %556 = phi ptr [ null, %23 ], [ null, %72 ], [ null, %4 ], [ %102, %554 ], [ %102, %550 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 56000, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 3392, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 27080, ptr nonnull %5) #18
  ret ptr %556
}

; Function Attrs: optsize
declare ptr @strand_shade_cache_create() local_unnamed_addr #8

; Function Attrs: optsize
declare void @shade_sample_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @zbuffer_abuf_render(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !346 {
  %7 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #18
  %8 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %9 = tail call i16 @llvm.umax.i16(i16 %8, i16 1)
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds %struct.RenderLayer, ptr %4, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !112
  %13 = and i32 %12, 262144
  %14 = icmp eq i32 %13, 0
  %15 = lshr i32 %12, 19
  %16 = and i32 %15, 1
  %17 = select i1 %14, i32 0, i32 %16
  %18 = icmp eq i16 %8, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %6
  %20 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 98, i32 8), align 2, !tbaa !123
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = sext i16 %20 to i64
  %24 = add nsw i64 %23, -1
  %25 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 40, i64 %24
  br label %26

26:                                               ; preds = %19, %6, %22
  %27 = phi ptr [ %25, %22 ], [ getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 39), %6 ], [ null, %19 ]
  call void @zbuf_make_winmat(ptr noundef nonnull @R, ptr noundef nonnull %7) #19
  %28 = load i32, ptr %11, align 8, !tbaa !112
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.RenderLayer, ptr %4, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !109
  %34 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !115
  %35 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !116
  %36 = call fastcc i32 @zbuffer_abuf(ptr noundef nonnull @R, ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef %33, i32 noundef %17, ptr noundef nonnull %7, i32 noundef %34, i32 noundef %35, i32 noundef %10, ptr noundef %27, i32 noundef 0) #19
  %37 = load i32, ptr %11, align 8, !tbaa !112
  br label %38

38:                                               ; preds = %31, %26
  %39 = phi i32 [ %37, %31 ], [ %28, %26 ]
  %40 = phi i32 [ %36, %31 ], [ 0, %26 ]
  %41 = and i32 %39, 32
  %42 = icmp ne i32 %41, 0
  %43 = icmp ne ptr %2, null
  %44 = and i1 %43, %42
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.RenderLayer, ptr %4, i64 0, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !109
  %48 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !115
  %49 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !116
  %50 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 19), align 4, !tbaa !119
  %51 = call i32 @zbuffer_strands_abuf(ptr noundef nonnull @R, ptr noundef %0, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %47, i32 noundef %17, ptr noundef nonnull %7, i32 noundef %48, i32 noundef %49, i32 noundef %10, ptr noundef %27, float noundef %50, i32 noundef 0, ptr noundef %5) #17
  %52 = add nsw i32 %51, %40
  br label %53

53:                                               ; preds = %45, %38
  %54 = phi i32 [ %52, %45 ], [ %40, %38 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #18
  ret i32 %54
}

; Function Attrs: optsize
declare void @strand_shade_cache_free(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @get_sample_layers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @ISB_create(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reset_sky_speedvectors(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !347 {
  %4 = tail call ptr @RE_RenderLayerGetPass(ptr noundef %1, i32 noundef 512) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds float, ptr %2, i64 3
  %8 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !117
  %10 = shl nsw i32 %9, 2
  %11 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %12 = load i32, ptr %11, align 4, !tbaa !118
  %13 = mul nsw i32 %10, %12
  %14 = icmp sgt i32 %13, 3
  br i1 %14, label %15, label %36

15:                                               ; preds = %6
  %16 = zext nneg i32 %13 to i64
  br label %17

17:                                               ; preds = %15, %34
  %18 = phi i64 [ %16, %15 ], [ %19, %34 ]
  %19 = add nsw i64 %18, -4
  %20 = getelementptr inbounds float, ptr %7, i64 %19
  %21 = load float, ptr %20, align 4, !tbaa !49
  %22 = fcmp oeq float %21, 0.000000e+00
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = getelementptr inbounds float, ptr %4, i64 %19
  store float 1.000000e+04, ptr %24, align 4, !tbaa !49
  %25 = and i64 %19, 4294967292
  %26 = or disjoint i64 %25, 1
  %27 = getelementptr inbounds float, ptr %4, i64 %26
  store float 1.000000e+04, ptr %27, align 4, !tbaa !49
  %28 = and i64 %19, 4294967292
  %29 = or disjoint i64 %28, 2
  %30 = getelementptr inbounds float, ptr %4, i64 %29
  store float 1.000000e+04, ptr %30, align 4, !tbaa !49
  %31 = and i64 %19, 4294967292
  %32 = or disjoint i64 %31, 3
  %33 = getelementptr inbounds float, ptr %4, i64 %32
  store float 1.000000e+04, ptr %33, align 4, !tbaa !49
  br label %34

34:                                               ; preds = %17, %23
  %35 = icmp ugt i64 %18, 7
  br i1 %35, label %17, label %36, !llvm.loop !348

36:                                               ; preds = %34, %6, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_transp_speed(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, float noundef %3, ptr noundef readonly %4) unnamed_addr #7 !PGOFuncName !349 {
  %6 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 18
  br label %7

7:                                                ; preds = %11, %5
  %8 = phi ptr [ %6, %5 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %95, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.RenderPass, ptr %9, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !350
  %14 = icmp eq i32 %13, 512
  br i1 %14, label %15, label %7, !llvm.loop !352

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.RenderPass, ptr %9, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !353
  %18 = shl nsw i32 %1, 2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float, ptr %17, i64 %19
  %21 = icmp eq ptr %2, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %15
  %23 = load float, ptr %20, align 4, !tbaa !49
  %24 = fcmp oeq float %23, 1.000000e+04
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store float 0.000000e+00, ptr %20, align 4, !tbaa !49
  br label %26

26:                                               ; preds = %25, %22
  %27 = getelementptr inbounds float, ptr %20, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !49
  %29 = fcmp oeq float %28, 1.000000e+04
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store float 0.000000e+00, ptr %27, align 4, !tbaa !49
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds float, ptr %20, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !49
  %34 = fcmp oeq float %33, 1.000000e+04
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store float 0.000000e+00, ptr %32, align 4, !tbaa !49
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds float, ptr %20, i64 3
  %38 = load float, ptr %37, align 4, !tbaa !49
  %39 = fcmp oeq float %38, 1.000000e+04
  br i1 %39, label %40, label %95

40:                                               ; preds = %36
  store float 0.000000e+00, ptr %37, align 4, !tbaa !49
  br label %95

41:                                               ; preds = %15
  %42 = icmp eq ptr %4, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %41
  %44 = sext i32 %1 to i64
  %45 = getelementptr inbounds i64, ptr %4, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !354
  %47 = icmp eq i64 %46, 0
  %48 = fcmp ogt float %3, 0x3FEE666660000000
  %49 = or i1 %48, %47
  br i1 %49, label %50, label %51

50:                                               ; preds = %43, %41
  tail call fastcc void @copy_v4_v4(ptr noundef %20, ptr noundef nonnull %2) #19
  br label %95

51:                                               ; preds = %43
  %52 = load <2 x float>, ptr %2, align 4, !tbaa !49
  %53 = fcmp olt <2 x float> %52, zeroinitializer
  %54 = fneg <2 x float> %52
  %55 = select <2 x i1> %53, <2 x float> %54, <2 x float> %52
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %57 = fadd <2 x float> %55, %56
  %58 = extractelement <2 x float> %57, i64 0
  %59 = load <2 x float>, ptr %20, align 4, !tbaa !49
  %60 = fcmp olt <2 x float> %59, zeroinitializer
  %61 = fneg <2 x float> %59
  %62 = select <2 x i1> %60, <2 x float> %61, <2 x float> %59
  %63 = shufflevector <2 x float> %62, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %64 = fadd <2 x float> %62, %63
  %65 = extractelement <2 x float> %64, i64 0
  %66 = fcmp olt float %58, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %51
  %68 = getelementptr inbounds float, ptr %20, i64 1
  %69 = getelementptr inbounds float, ptr %2, i64 1
  %70 = extractelement <2 x float> %52, i64 0
  store float %70, ptr %20, align 4, !tbaa !49
  %71 = load float, ptr %69, align 4, !tbaa !49
  store float %71, ptr %68, align 4, !tbaa !49
  br label %72

72:                                               ; preds = %67, %51
  %73 = getelementptr inbounds float, ptr %2, i64 2
  %74 = load <2 x float>, ptr %73, align 4, !tbaa !49
  %75 = fcmp olt <2 x float> %74, zeroinitializer
  %76 = fneg <2 x float> %74
  %77 = select <2 x i1> %75, <2 x float> %76, <2 x float> %74
  %78 = shufflevector <2 x float> %77, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %79 = fadd <2 x float> %77, %78
  %80 = extractelement <2 x float> %79, i64 0
  %81 = getelementptr inbounds float, ptr %20, i64 2
  %82 = load <2 x float>, ptr %81, align 4, !tbaa !49
  %83 = fcmp olt <2 x float> %82, zeroinitializer
  %84 = fneg <2 x float> %82
  %85 = select <2 x i1> %83, <2 x float> %84, <2 x float> %82
  %86 = shufflevector <2 x float> %85, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %87 = fadd <2 x float> %85, %86
  %88 = extractelement <2 x float> %87, i64 0
  %89 = fcmp olt float %80, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %72
  %91 = getelementptr inbounds float, ptr %20, i64 3
  %92 = getelementptr inbounds float, ptr %2, i64 3
  %93 = extractelement <2 x float> %74, i64 0
  store float %93, ptr %81, align 4, !tbaa !49
  %94 = load float, ptr %92, align 4, !tbaa !49
  store float %94, ptr %91, align 4, !tbaa !49
  br label %95

95:                                               ; preds = %7, %40, %36, %72, %90, %50
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @vergzvlak(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !356 {
  %3 = getelementptr inbounds %struct.ZTranspRow, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !316
  %5 = getelementptr inbounds %struct.ZTranspRow, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !316
  %7 = icmp slt i32 %4, %6
  %8 = icmp sgt i32 %4, %6
  %9 = sext i1 %8 to i32
  %10 = select i1 %7, i32 1, i32 %9
  ret i32 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_transp_obindex(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !357 {
  %4 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 18
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.RenderPass, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !350
  %12 = icmp eq i32 %11, 2048
  br i1 %12, label %13, label %5, !llvm.loop !358

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.RenderPass, ptr %7, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !353
  %16 = sext i32 %1 to i64
  %17 = getelementptr inbounds float, ptr %15, i64 %16
  %18 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 96
  %19 = load i16, ptr %18, align 4, !tbaa !359
  %20 = sitofp i16 %19 to float
  store float %20, ptr %17, align 4, !tbaa !49
  br label %21

21:                                               ; preds = %5, %13
  ret void
}

; Function Attrs: optsize
declare ptr @RE_findOrAddVlak(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_transp_material_index(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !362 {
  %4 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 18
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.RenderPass, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !350
  %12 = icmp eq i32 %11, 262144
  br i1 %12, label %13, label %5, !llvm.loop !363

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.RenderPass, ptr %7, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !353
  %16 = sext i32 %1 to i64
  %17 = getelementptr inbounds float, ptr %15, i64 %16
  %18 = getelementptr inbounds %struct.Material, ptr %2, i64 0, i32 127
  %19 = load i16, ptr %18, align 2, !tbaa !364
  %20 = sitofp i16 %19 to float
  store float %20, ptr %17, align 4, !tbaa !49
  br label %21

21:                                               ; preds = %5, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @shade_tra_samples(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !365 {
  %7 = getelementptr inbounds %struct.ZTranspRow, ptr %4, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !320
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call fastcc void @shade_strand_samples(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %4, i32 noundef %5) #19
  br label %70

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ZTranspRow, ptr %4, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !316
  %14 = load i32, ptr %4, align 4, !tbaa !314
  %15 = getelementptr inbounds %struct.ZTranspRow, ptr %4, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !317
  %17 = getelementptr inbounds %struct.ZTranspRow, ptr %4, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !319
  tail call fastcc void @shade_tra_samples_fill(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %13, i32 noundef %14, i32 noundef %16, i32 noundef %18) #19
  %19 = load i32, ptr %0, align 8, !tbaa !366
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %70, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 3
  tail call void @shade_samples_do_AO(ptr noundef nonnull %0) #17
  %24 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 119
  %25 = load i32, ptr %24, align 8, !tbaa !368
  %26 = and i32 %25, -264195
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %21
  %29 = load i32, ptr %0, align 8, !tbaa !366
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %28, %46
  %32 = phi i32 [ %47, %46 ], [ 0, %28 ]
  %33 = phi ptr [ %49, %46 ], [ %23, %28 ]
  %34 = phi ptr [ %48, %46 ], [ %22, %28 ]
  tail call void @shade_input_set_shade_texco(ptr noundef nonnull %34) #17
  tail call void @shade_input_do_shade(ptr noundef nonnull %34, ptr noundef nonnull %33) #17
  %35 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !370
  %36 = and i16 %35, 8
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.ShadeInput, ptr %34, i64 0, i32 118
  %40 = load i32, ptr %39, align 4, !tbaa !371
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds [4 x float], ptr %33, i64 0, i64 3
  %45 = load float, ptr %44, align 4, !tbaa !49
  tail call void @renderspothalo(ptr noundef nonnull %34, ptr noundef nonnull %33, float noundef %45) #17
  br label %46

46:                                               ; preds = %31, %43, %38
  %47 = add nuw nsw i32 %32, 1
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %34, i64 1
  %49 = getelementptr inbounds %struct.ShadeResult, ptr %33, i64 1
  %50 = load i32, ptr %0, align 8, !tbaa !366
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %31, label %70, !llvm.loop !372

52:                                               ; preds = %21
  %53 = and i32 %25, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %0, align 8, !tbaa !366
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %55, %58
  %59 = phi i32 [ %66, %58 ], [ 0, %55 ]
  %60 = phi ptr [ %68, %58 ], [ %23, %55 ]
  %61 = phi ptr [ %67, %58 ], [ %22, %55 ]
  %62 = getelementptr inbounds %struct.ShadeInput, ptr %61, i64 0, i32 29, i64 2
  %63 = load float, ptr %62, align 8, !tbaa !49
  %64 = fneg float %63
  %65 = getelementptr inbounds %struct.ShadeResult, ptr %60, i64 0, i32 4
  store float %64, ptr %65, align 4, !tbaa !336
  %66 = add nuw nsw i32 %59, 1
  %67 = getelementptr inbounds %struct.ShadeInput, ptr %61, i64 1
  %68 = getelementptr inbounds %struct.ShadeResult, ptr %60, i64 1
  %69 = icmp eq i32 %66, %56
  br i1 %69, label %70, label %58, !llvm.loop !373

70:                                               ; preds = %46, %58, %28, %55, %11, %52, %10
  %71 = phi i32 [ 1, %10 ], [ 1, %52 ], [ 0, %11 ], [ 1, %55 ], [ 1, %28 ], [ 1, %58 ], [ 1, %46 ]
  ret i32 %71
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @addtosamp_shr(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !374 {
  %4 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %5 = tail call i16 @llvm.umax.i16(i16 %4, i16 1)
  %6 = sext i16 %5 to i32
  %7 = icmp sgt i16 %5, 0
  br i1 %7, label %8, label %135

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
  %23 = insertelement <8 x i32> poison, i32 %2, i64 0
  %24 = shufflevector <8 x i32> %23, <8 x i32> poison, <8 x i32> zeroinitializer
  %25 = and <8 x i32> %24, <i32 16384, i32 1024, i32 128, i32 8192, i32 131072, i32 64, i32 32, i32 16>
  %26 = icmp eq <8 x i32> %25, zeroinitializer
  %27 = load i32, ptr %1, align 8, !tbaa !366
  %28 = extractelement <8 x i1> %26, i64 0
  %29 = extractelement <8 x i1> %26, i64 1
  %30 = extractelement <8 x i1> %26, i64 2
  %31 = extractelement <8 x i1> %26, i64 3
  %32 = extractelement <8 x i1> %26, i64 4
  %33 = extractelement <8 x i1> %26, i64 5
  %34 = extractelement <8 x i1> %26, i64 6
  %35 = extractelement <8 x i1> %26, i64 7
  br label %36

36:                                               ; preds = %8, %125
  %37 = phi i32 [ %27, %8 ], [ %126, %125 ]
  %38 = phi ptr [ %0, %8 ], [ %133, %125 ]
  %39 = phi i32 [ %6, %8 ], [ %131, %125 ]
  %40 = phi i32 [ 0, %8 ], [ %132, %125 ]
  %41 = icmp sgt i32 %37, 0
  br i1 %41, label %42, label %125

42:                                               ; preds = %36
  %43 = shl nuw i32 1, %40
  %44 = getelementptr inbounds [4 x float], ptr %38, i64 0, i64 3
  %45 = getelementptr inbounds %struct.ShadeResult, ptr %38, i64 0, i32 4
  %46 = getelementptr inbounds %struct.ShadeResult, ptr %38, i64 0, i32 16
  %47 = getelementptr inbounds %struct.ShadeResult, ptr %38, i64 0, i32 1
  %48 = getelementptr inbounds %struct.ShadeResult, ptr %38, i64 0, i32 15
  %49 = getelementptr inbounds %struct.ShadeResult, ptr %38, i64 0, i32 5
  %50 = getelementptr inbounds %struct.ShadeResult, ptr %38, i64 0, i32 6
  %51 = getelementptr inbounds %struct.ShadeResult, ptr %38, i64 0, i32 8
  %52 = getelementptr inbounds %struct.ShadeResult, ptr %38, i64 0, i32 9
  %53 = getelementptr inbounds %struct.ShadeResult, ptr %38, i64 0, i32 10
  %54 = getelementptr inbounds %struct.ShadeResult, ptr %38, i64 0, i32 11
  %55 = getelementptr inbounds %struct.ShadeResult, ptr %38, i64 0, i32 12
  %56 = getelementptr inbounds %struct.ShadeResult, ptr %38, i64 0, i32 13
  %57 = getelementptr inbounds %struct.ShadeResult, ptr %38, i64 0, i32 14
  %58 = getelementptr inbounds %struct.ShadeResult, ptr %38, i64 0, i32 3
  br label %59

59:                                               ; preds = %42, %119
  %60 = phi ptr [ %10, %42 ], [ %122, %119 ]
  %61 = phi ptr [ %9, %42 ], [ %121, %119 ]
  %62 = phi i32 [ 0, %42 ], [ %120, %119 ]
  %63 = getelementptr inbounds %struct.ShadeInput, ptr %61, i64 0, i32 105
  %64 = load i32, ptr %63, align 4, !tbaa !375
  %65 = and i32 %64, %43
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %119, label %67

67:                                               ; preds = %59
  %68 = load float, ptr %44, align 4, !tbaa !49
  %69 = fsub float 1.000000e+00, %68
  %70 = getelementptr inbounds [4 x float], ptr %60, i64 0, i64 3
  %71 = load float, ptr %70, align 4, !tbaa !49
  %72 = fmul float %69, %71
  tail call void @addAlphaUnderFloat(ptr noundef %38, ptr noundef nonnull %60) #17
  %73 = load float, ptr %45, align 4, !tbaa !336
  %74 = getelementptr inbounds %struct.ShadeResult, ptr %60, i64 0, i32 4
  %75 = load float, ptr %74, align 4, !tbaa !336
  %76 = tail call fastcc float @min_ff(float noundef %73, float noundef %75) #19
  store float %76, ptr %45, align 4, !tbaa !336
  br i1 %12, label %79, label %77

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.ShadeResult, ptr %60, i64 0, i32 16
  tail call fastcc void @copy_v4_v4(ptr noundef nonnull %46, ptr noundef nonnull %78) #19
  br label %79

79:                                               ; preds = %77, %67
  br i1 %14, label %119, label %80

80:                                               ; preds = %79
  br i1 %16, label %83, label %81

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.ShadeResult, ptr %60, i64 0, i32 1
  tail call void @addAlphaUnderFloat(ptr noundef nonnull %47, ptr noundef nonnull %82) #17
  br label %83

83:                                               ; preds = %81, %80
  br i1 %18, label %86, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.ShadeResult, ptr %60, i64 0, i32 15
  tail call fastcc void @madd_v3_v3fl(ptr noundef nonnull %48, ptr noundef nonnull %85, float noundef %72) #19
  br label %86

86:                                               ; preds = %84, %83
  br i1 %20, label %89, label %87

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.ShadeResult, ptr %60, i64 0, i32 5
  tail call fastcc void @madd_v3_v3fl(ptr noundef nonnull %49, ptr noundef nonnull %88, float noundef %72) #19
  br label %89

89:                                               ; preds = %87, %86
  br i1 %22, label %92, label %90

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.ShadeResult, ptr %60, i64 0, i32 6
  tail call fastcc void @madd_v3_v3fl(ptr noundef nonnull %50, ptr noundef nonnull %91, float noundef %72) #19
  br label %92

92:                                               ; preds = %90, %89
  br i1 %35, label %95, label %93

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.ShadeResult, ptr %60, i64 0, i32 8
  tail call fastcc void @madd_v3_v3fl(ptr noundef nonnull %51, ptr noundef nonnull %94, float noundef %72) #19
  br label %95

95:                                               ; preds = %93, %92
  br i1 %34, label %98, label %96

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.ShadeResult, ptr %60, i64 0, i32 9
  tail call fastcc void @madd_v3_v3fl(ptr noundef nonnull %52, ptr noundef nonnull %97, float noundef %72) #19
  br label %98

98:                                               ; preds = %96, %95
  br i1 %33, label %101, label %99

99:                                               ; preds = %98
  %100 = getelementptr inbounds %struct.ShadeResult, ptr %60, i64 0, i32 10
  tail call fastcc void @madd_v3_v3fl(ptr noundef nonnull %53, ptr noundef nonnull %100, float noundef %72) #19
  br label %101

101:                                              ; preds = %99, %98
  br i1 %32, label %104, label %102

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.ShadeResult, ptr %60, i64 0, i32 11
  tail call fastcc void @madd_v3_v3fl(ptr noundef nonnull %54, ptr noundef nonnull %103, float noundef %72) #19
  br label %104

104:                                              ; preds = %102, %101
  br i1 %31, label %107, label %105

105:                                              ; preds = %104
  %106 = getelementptr inbounds %struct.ShadeResult, ptr %60, i64 0, i32 12
  tail call fastcc void @madd_v3_v3fl(ptr noundef nonnull %55, ptr noundef nonnull %106, float noundef %72) #19
  br label %107

107:                                              ; preds = %105, %104
  br i1 %30, label %110, label %108

108:                                              ; preds = %107
  %109 = getelementptr inbounds %struct.ShadeResult, ptr %60, i64 0, i32 13
  tail call fastcc void @madd_v3_v3fl(ptr noundef nonnull %56, ptr noundef nonnull %109, float noundef %72) #19
  br label %110

110:                                              ; preds = %108, %107
  br i1 %29, label %113, label %111

111:                                              ; preds = %110
  %112 = getelementptr inbounds %struct.ShadeResult, ptr %60, i64 0, i32 14
  tail call fastcc void @madd_v3_v3fl(ptr noundef nonnull %57, ptr noundef nonnull %112, float noundef %72) #19
  br label %113

113:                                              ; preds = %111, %110
  br i1 %28, label %119, label %114

114:                                              ; preds = %113
  %115 = load float, ptr %58, align 4, !tbaa !376
  %116 = getelementptr inbounds %struct.ShadeResult, ptr %60, i64 0, i32 3
  %117 = load float, ptr %116, align 4, !tbaa !376
  %118 = tail call float @llvm.fmuladd.f32(float %72, float %117, float %115)
  store float %118, ptr %58, align 4, !tbaa !376
  br label %119

119:                                              ; preds = %79, %114, %113, %59
  %120 = add nuw nsw i32 %62, 1
  %121 = getelementptr inbounds %struct.ShadeInput, ptr %61, i64 1
  %122 = getelementptr inbounds %struct.ShadeResult, ptr %60, i64 1
  %123 = load i32, ptr %1, align 8, !tbaa !366
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %59, label %125, !llvm.loop !377

125:                                              ; preds = %119, %36
  %126 = phi i32 [ %37, %36 ], [ %123, %119 ]
  %127 = getelementptr inbounds [4 x float], ptr %38, i64 0, i64 3
  %128 = load float, ptr %127, align 4, !tbaa !49
  %129 = fcmp ogt float %128, 0x3FEFF7CEE0000000
  %130 = sext i1 %129 to i32
  %131 = add nsw i32 %39, %130
  %132 = add nuw nsw i32 %40, 1
  %133 = getelementptr inbounds %struct.ShadeResult, ptr %38, i64 1
  %134 = icmp eq i32 %132, %6
  br i1 %134, label %135, label %36, !llvm.loop !378

135:                                              ; preds = %125, %3
  %136 = phi i32 [ %6, %3 ], [ %131, %125 ]
  ret i32 %136
}

; Function Attrs: optsize
declare void @addAlphaUnderFloat(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unref_strand_samples(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !379 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %32

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %30
  %8 = phi i64 [ %6, %5 ], [ %9, %30 ]
  %9 = add nsw i64 %8, -1
  %10 = getelementptr inbounds %struct.ZTranspRow, ptr %1, i64 %9, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !320
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %30, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ZTranspRow, ptr %1, i64 %9
  %15 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !333
  %16 = load i32, ptr %14, align 4, !tbaa !314
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %15, i64 %17
  %19 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %15, i64 %17, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !131
  %21 = getelementptr inbounds %struct.ZTranspRow, ptr %1, i64 %9, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !317
  %23 = add nsw i32 %22, -1
  %24 = tail call ptr @RE_findOrAddStrand(ptr noundef %20, i32 noundef %23) #17
  %25 = load ptr, ptr %24, align 8, !tbaa !215
  %26 = load i32, ptr %10, align 4, !tbaa !320
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.StrandVert, ptr %25, i64 %27
  tail call void @strand_shade_unref(ptr noundef %0, ptr noundef %18, ptr noundef %28) #17
  %29 = getelementptr inbounds %struct.StrandVert, ptr %28, i64 1
  tail call void @strand_shade_unref(ptr noundef %0, ptr noundef %18, ptr noundef nonnull %29) #17
  br label %30

30:                                               ; preds = %13, %7
  %31 = icmp ugt i64 %8, 1
  br i1 %31, label %7, label %32, !llvm.loop !380

32:                                               ; preds = %30, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_transp_passes(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, float noundef %3) unnamed_addr #0 !PGOFuncName !381 {
  %5 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %78, label %8

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
  %20 = fsub float 1.000000e+00, %3
  %21 = shl nsw i32 %1, 2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 1
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds %struct.ShadeResult, ptr %2, i64 0, i32 4
  br label %26

26:                                               ; preds = %8, %75
  %27 = phi ptr [ %6, %8 ], [ %76, %75 ]
  %28 = getelementptr inbounds %struct.RenderPass, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !350
  switch i32 %29, label %75 [
    i32 2, label %30
    i32 4, label %38
    i32 65536, label %52
    i32 8, label %42
    i32 16, label %43
    i32 32, label %44
    i32 64, label %45
    i32 131072, label %46
    i32 8192, label %47
    i32 128, label %48
    i32 1024, label %49
    i32 256, label %50
    i32 16384, label %51
  ]

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.RenderPass, ptr %27, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !353
  %33 = getelementptr inbounds float, ptr %32, i64 %24
  %34 = load float, ptr %25, align 4, !tbaa !336
  %35 = load float, ptr %33, align 4, !tbaa !49
  %36 = fcmp olt float %34, %35
  br i1 %36, label %37, label %75

37:                                               ; preds = %30
  store float %34, ptr %33, align 4, !tbaa !49
  br label %75

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.RenderPass, ptr %27, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !353
  %41 = getelementptr inbounds float, ptr %40, i64 %22
  tail call void @addAlphaOverFloat(ptr noundef %41, ptr noundef nonnull %23) #17
  br label %75

42:                                               ; preds = %26
  br label %52

43:                                               ; preds = %26
  br label %52

44:                                               ; preds = %26
  br label %52

45:                                               ; preds = %26
  br label %52

46:                                               ; preds = %26
  br label %52

47:                                               ; preds = %26
  br label %52

48:                                               ; preds = %26
  br label %52

49:                                               ; preds = %26
  br label %52

50:                                               ; preds = %26
  br label %52

51:                                               ; preds = %26
  br label %52

52:                                               ; preds = %26, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42
  %53 = phi ptr [ %18, %42 ], [ %17, %43 ], [ %16, %44 ], [ %15, %45 ], [ %14, %46 ], [ %13, %47 ], [ %12, %48 ], [ %11, %49 ], [ %10, %50 ], [ %9, %51 ], [ %19, %26 ]
  %54 = phi i1 [ true, %42 ], [ true, %43 ], [ true, %44 ], [ true, %45 ], [ true, %46 ], [ true, %47 ], [ true, %48 ], [ true, %49 ], [ true, %50 ], [ false, %51 ], [ true, %26 ]
  %55 = phi i32 [ 3, %42 ], [ 3, %43 ], [ 3, %44 ], [ 3, %45 ], [ 3, %46 ], [ 3, %47 ], [ 3, %48 ], [ 3, %49 ], [ 3, %50 ], [ 1, %51 ], [ 3, %26 ]
  %56 = getelementptr inbounds %struct.RenderPass, ptr %27, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !353
  %58 = mul nsw i32 %55, %1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, ptr %57, i64 %59
  %61 = load float, ptr %53, align 4, !tbaa !49
  %62 = load float, ptr %60, align 4, !tbaa !49
  %63 = tail call float @llvm.fmuladd.f32(float %20, float %62, float %61)
  store float %63, ptr %60, align 4, !tbaa !49
  br i1 %54, label %64, label %75

64:                                               ; preds = %52
  %65 = getelementptr inbounds float, ptr %53, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !49
  %67 = getelementptr inbounds float, ptr %60, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !49
  %69 = tail call float @llvm.fmuladd.f32(float %20, float %68, float %66)
  store float %69, ptr %67, align 4, !tbaa !49
  %70 = getelementptr inbounds float, ptr %53, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !49
  %72 = getelementptr inbounds float, ptr %60, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !49
  %74 = tail call float @llvm.fmuladd.f32(float %20, float %73, float %71)
  store float %74, ptr %72, align 4, !tbaa !49
  br label %75

75:                                               ; preds = %38, %26, %37, %30, %52, %64
  %76 = load ptr, ptr %27, align 8, !tbaa !42
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %26, !llvm.loop !382

78:                                               ; preds = %75, %4
  ret void
}

; Function Attrs: optsize
declare void @addAlphaOverFloat(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @add_filt_fmask(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @merge_transp_passes(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #7 !PGOFuncName !383 {
  %3 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !120
  %4 = sitofp i16 %3 to float
  %5 = fdiv float 1.000000e+00, %4
  %6 = getelementptr inbounds %struct.RenderLayer, ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %147, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 16
  %11 = sext i16 %3 to i32
  %12 = icmp sgt i16 %3, 1
  %13 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 16, i64 1
  %14 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 16, i64 2
  %15 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 16, i64 3
  %16 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 4
  %17 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 3
  %18 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 15
  %19 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 14
  %20 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 13
  %21 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 12
  %22 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 11
  %23 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 10
  %24 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 9
  %25 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 8
  %26 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 6
  %27 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 5
  %28 = getelementptr inbounds %struct.ShadeResult, ptr %1, i64 0, i32 1
  %29 = insertelement <2 x float> poison, float %5, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  br label %31

31:                                               ; preds = %9, %144
  %32 = phi ptr [ %7, %9 ], [ %145, %144 ]
  %33 = getelementptr inbounds %struct.RenderPass, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !350
  switch i32 %34, label %144 [
    i32 4, label %100
    i32 65536, label %35
    i32 8, label %36
    i32 16, label %37
    i32 32, label %38
    i32 64, label %39
    i32 131072, label %40
    i32 8192, label %41
    i32 128, label %42
    i32 1024, label %43
    i32 256, label %44
    i32 16384, label %45
    i32 2, label %46
    i32 512, label %47
  ]

35:                                               ; preds = %31
  br label %100

36:                                               ; preds = %31
  br label %100

37:                                               ; preds = %31
  br label %100

38:                                               ; preds = %31
  br label %100

39:                                               ; preds = %31
  br label %100

40:                                               ; preds = %31
  br label %100

41:                                               ; preds = %31
  br label %100

42:                                               ; preds = %31
  br label %100

43:                                               ; preds = %31
  br label %100

44:                                               ; preds = %31
  br label %100

45:                                               ; preds = %31
  br label %100

46:                                               ; preds = %31
  br label %100

47:                                               ; preds = %31
  br i1 %12, label %48, label %144

48:                                               ; preds = %47, %97
  %49 = phi i32 [ %98, %97 ], [ 1, %47 ]
  %50 = phi ptr [ %51, %97 ], [ %1, %47 ]
  %51 = getelementptr inbounds %struct.ShadeResult, ptr %50, i64 1
  %52 = getelementptr inbounds %struct.ShadeResult, ptr %50, i64 1, i32 0, i64 3
  %53 = load float, ptr %52, align 4, !tbaa !49
  %54 = fcmp ogt float %53, 0.000000e+00
  br i1 %54, label %55, label %97

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.ShadeResult, ptr %50, i64 1, i32 16
  %57 = load <2 x float>, ptr %56, align 4, !tbaa !49
  %58 = fcmp olt <2 x float> %57, zeroinitializer
  %59 = fneg <2 x float> %57
  %60 = select <2 x i1> %58, <2 x float> %59, <2 x float> %57
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %62 = fadd <2 x float> %60, %61
  %63 = extractelement <2 x float> %62, i64 0
  %64 = load <2 x float>, ptr %10, align 4, !tbaa !49
  %65 = fcmp olt <2 x float> %64, zeroinitializer
  %66 = fneg <2 x float> %64
  %67 = select <2 x i1> %65, <2 x float> %66, <2 x float> %64
  %68 = shufflevector <2 x float> %67, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %69 = fadd <2 x float> %67, %68
  %70 = extractelement <2 x float> %69, i64 0
  %71 = fcmp olt float %63, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %55
  %73 = getelementptr inbounds %struct.ShadeResult, ptr %50, i64 1, i32 16, i64 1
  %74 = extractelement <2 x float> %57, i64 0
  store float %74, ptr %10, align 4, !tbaa !49
  %75 = load float, ptr %73, align 4, !tbaa !49
  store float %75, ptr %13, align 4, !tbaa !49
  br label %76

76:                                               ; preds = %72, %55
  %77 = getelementptr inbounds %struct.ShadeResult, ptr %50, i64 1, i32 16, i64 2
  %78 = load <2 x float>, ptr %77, align 4, !tbaa !49
  %79 = fcmp olt <2 x float> %78, zeroinitializer
  %80 = fneg <2 x float> %78
  %81 = select <2 x i1> %79, <2 x float> %80, <2 x float> %78
  %82 = shufflevector <2 x float> %81, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %83 = fadd <2 x float> %81, %82
  %84 = extractelement <2 x float> %83, i64 0
  %85 = load <2 x float>, ptr %14, align 4, !tbaa !49
  %86 = fcmp olt <2 x float> %85, zeroinitializer
  %87 = fneg <2 x float> %85
  %88 = select <2 x i1> %86, <2 x float> %87, <2 x float> %85
  %89 = shufflevector <2 x float> %88, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %90 = fadd <2 x float> %88, %89
  %91 = extractelement <2 x float> %90, i64 0
  %92 = fcmp olt float %84, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %76
  %94 = getelementptr inbounds %struct.ShadeResult, ptr %50, i64 1, i32 16, i64 3
  %95 = extractelement <2 x float> %78, i64 0
  store float %95, ptr %14, align 4, !tbaa !49
  %96 = load float, ptr %94, align 4, !tbaa !49
  store float %96, ptr %15, align 4, !tbaa !49
  br label %97

97:                                               ; preds = %76, %93, %48
  %98 = add nuw nsw i32 %49, 1
  %99 = icmp eq i32 %98, %11
  br i1 %99, label %144, label %48, !llvm.loop !384

100:                                              ; preds = %31, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35
  %101 = phi i1 [ false, %46 ], [ false, %45 ], [ true, %44 ], [ true, %43 ], [ true, %42 ], [ true, %41 ], [ true, %40 ], [ true, %39 ], [ true, %38 ], [ true, %37 ], [ true, %36 ], [ true, %35 ], [ true, %31 ]
  %102 = phi i1 [ false, %46 ], [ false, %45 ], [ false, %44 ], [ false, %43 ], [ false, %42 ], [ false, %41 ], [ false, %40 ], [ false, %39 ], [ false, %38 ], [ false, %37 ], [ false, %36 ], [ false, %35 ], [ true, %31 ]
  %103 = phi ptr [ %16, %46 ], [ %17, %45 ], [ %18, %44 ], [ %19, %43 ], [ %20, %42 ], [ %21, %41 ], [ %22, %40 ], [ %23, %39 ], [ %24, %38 ], [ %25, %37 ], [ %26, %36 ], [ %27, %35 ], [ %28, %31 ]
  %104 = load float, ptr %103, align 4, !tbaa !49
  br i1 %12, label %105, label %133

105:                                              ; preds = %100
  %106 = getelementptr inbounds float, ptr %103, i64 1
  %107 = getelementptr inbounds float, ptr %103, i64 2
  %108 = getelementptr inbounds float, ptr %103, i64 3
  br label %109

109:                                              ; preds = %105, %130
  %110 = phi float [ %104, %105 ], [ %115, %130 ]
  %111 = phi i32 [ 1, %105 ], [ %131, %130 ]
  %112 = phi ptr [ %103, %105 ], [ %113, %130 ]
  %113 = getelementptr inbounds float, ptr %112, i64 53
  %114 = load float, ptr %113, align 4, !tbaa !49
  %115 = fadd float %114, %110
  store float %115, ptr %103, align 4, !tbaa !49
  br i1 %101, label %116, label %130

116:                                              ; preds = %109
  %117 = getelementptr inbounds float, ptr %112, i64 54
  %118 = load float, ptr %117, align 4, !tbaa !49
  %119 = load float, ptr %106, align 4, !tbaa !49
  %120 = fadd float %118, %119
  store float %120, ptr %106, align 4, !tbaa !49
  %121 = getelementptr inbounds float, ptr %112, i64 55
  %122 = load float, ptr %121, align 4, !tbaa !49
  %123 = load float, ptr %107, align 4, !tbaa !49
  %124 = fadd float %122, %123
  store float %124, ptr %107, align 4, !tbaa !49
  br i1 %102, label %125, label %130

125:                                              ; preds = %116
  %126 = getelementptr inbounds float, ptr %112, i64 56
  %127 = load float, ptr %126, align 4, !tbaa !49
  %128 = load float, ptr %108, align 4, !tbaa !49
  %129 = fadd float %127, %128
  store float %129, ptr %108, align 4, !tbaa !49
  br label %130

130:                                              ; preds = %109, %125, %116
  %131 = add nuw nsw i32 %111, 1
  %132 = icmp eq i32 %131, %11
  br i1 %132, label %133, label %109, !llvm.loop !385

133:                                              ; preds = %130, %100
  %134 = phi float [ %104, %100 ], [ %115, %130 ]
  %135 = fmul float %5, %134
  store float %135, ptr %103, align 4, !tbaa !49
  br i1 %101, label %136, label %144

136:                                              ; preds = %133
  %137 = getelementptr inbounds float, ptr %103, i64 1
  %138 = load <2 x float>, ptr %137, align 4, !tbaa !49
  %139 = fmul <2 x float> %30, %138
  store <2 x float> %139, ptr %137, align 4, !tbaa !49
  br i1 %102, label %140, label %144

140:                                              ; preds = %136
  %141 = getelementptr inbounds float, ptr %103, i64 3
  %142 = load float, ptr %141, align 4, !tbaa !49
  %143 = fmul float %5, %142
  store float %143, ptr %141, align 4, !tbaa !49
  br label %144

144:                                              ; preds = %97, %47, %31, %133, %140, %136
  %145 = load ptr, ptr %32, align 8, !tbaa !42
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %31, !llvm.loop !386

147:                                              ; preds = %144, %2
  ret void
}

; Function Attrs: optsize
declare void @ISB_free(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef signext i16 @cliptestf(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) unnamed_addr #6 !PGOFuncName !387 {
  %7 = fadd float %0, %1
  %8 = fadd float %2, %3
  %9 = fcmp olt float %7, 0.000000e+00
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = fcmp olt float %8, %7
  br i1 %11, label %38, label %12

12:                                               ; preds = %10
  %13 = fcmp olt float %8, 0.000000e+00
  br i1 %13, label %14, label %37

14:                                               ; preds = %12
  %15 = fdiv float %8, %7
  %16 = load float, ptr %5, align 4, !tbaa !49
  %17 = fcmp ogt float %15, %16
  br i1 %17, label %38, label %18

18:                                               ; preds = %14
  %19 = load float, ptr %4, align 4, !tbaa !49
  %20 = fcmp ogt float %15, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  store float %15, ptr %4, align 4, !tbaa !49
  br label %37

22:                                               ; preds = %6
  %23 = fcmp ogt float %7, 0.000000e+00
  %24 = fcmp olt float %8, 0.000000e+00
  br i1 %23, label %25, label %36

25:                                               ; preds = %22
  br i1 %24, label %38, label %26

26:                                               ; preds = %25
  %27 = fcmp olt float %8, %7
  br i1 %27, label %28, label %37

28:                                               ; preds = %26
  %29 = fdiv float %8, %7
  %30 = load float, ptr %4, align 4, !tbaa !49
  %31 = fcmp olt float %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = load float, ptr %5, align 4, !tbaa !49
  %34 = fcmp olt float %29, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  store float %29, ptr %5, align 4, !tbaa !49
  br label %37

36:                                               ; preds = %22
  br i1 %24, label %38, label %37

37:                                               ; preds = %26, %32, %35, %36, %21, %18, %12
  br label %38

38:                                               ; preds = %36, %28, %25, %14, %10, %37
  %39 = phi i16 [ 1, %37 ], [ 0, %10 ], [ 0, %14 ], [ 0, %25 ], [ 0, %28 ], [ 0, %36 ]
  ret i16 %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #14 !PGOFuncName !388 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @zbuffillAc4(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 !PGOFuncName !389 {
  tail call fastcc void @zbuf_init_span(ptr noundef %0) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %3, ptr noundef %4) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %4, ptr noundef %5) #19
  %8 = icmp eq ptr %6, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %6) #19
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %3) #19
  br label %11

10:                                               ; preds = %7
  tail call fastcc void @zbuf_add_to_span(ptr noundef %0, ptr noundef %5, ptr noundef %3) #19
  br label %11

11:                                               ; preds = %10, %9
  %12 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = icmp eq ptr %13, null
  br i1 %14, label %270, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = icmp eq ptr %17, null
  br i1 %18, label %270, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !68
  %22 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !69
  %24 = tail call i32 @llvm.smax.i32(i32 %21, i32 %23)
  %25 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !70
  %27 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 5
  %28 = load i32, ptr %27, align 4, !tbaa !71
  %29 = tail call i32 @llvm.smin.i32(i32 %26, i32 %28)
  %30 = icmp slt i32 %29, %24
  br i1 %30, label %270, label %31

31:                                               ; preds = %19
  %32 = load float, ptr %3, align 4, !tbaa !49
  %33 = load float, ptr %4, align 4, !tbaa !49
  %34 = fsub float %32, %33
  %35 = load float, ptr %5, align 4, !tbaa !49
  %36 = fsub float %33, %35
  %37 = getelementptr inbounds float, ptr %3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !49
  %39 = getelementptr inbounds float, ptr %4, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !49
  %41 = fsub float %38, %40
  %42 = getelementptr inbounds float, ptr %5, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !49
  %44 = fsub float %40, %43
  %45 = fneg float %41
  %46 = fmul float %36, %45
  %47 = tail call float @llvm.fmuladd.f32(float %34, float %44, float %46)
  %48 = fcmp oeq float %47, 0.000000e+00
  br i1 %48, label %270, label %49

49:                                               ; preds = %31
  %50 = getelementptr inbounds float, ptr %3, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !49
  %52 = getelementptr inbounds float, ptr %4, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !49
  %54 = fsub float %51, %53
  %55 = getelementptr inbounds float, ptr %5, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !49
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
  %68 = fpext float %60 to double
  %69 = fneg double %68
  %70 = fdiv double %69, %66
  %71 = load i32, ptr %0, align 8, !tbaa !34
  %72 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 21
  %73 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 10
  %74 = load ptr, ptr %73, align 8, !tbaa !43
  %75 = add nsw i32 %29, %24
  %76 = sdiv i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, ptr %74, i64 %77
  %79 = load float, ptr %78, align 4, !tbaa !49
  %80 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 11
  %81 = load ptr, ptr %80, align 8, !tbaa !44
  %82 = getelementptr inbounds float, ptr %81, i64 %77
  %83 = load float, ptr %82, align 4, !tbaa !49
  %84 = fcmp olt float %79, %83
  %85 = sext i32 %29 to i64
  %86 = getelementptr inbounds float, ptr %81, i64 %85
  %87 = getelementptr inbounds float, ptr %74, i64 %85
  %88 = select i1 %84, ptr %86, ptr %87
  %89 = select i1 %84, ptr %87, ptr %86
  %90 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 28
  %91 = load i32, ptr %90, align 8, !tbaa !292
  %92 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 22
  %93 = load ptr, ptr %92, align 8, !tbaa !290
  %94 = mul nsw i32 %71, %29
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.APixstr, ptr %93, i64 %95
  %97 = load ptr, ptr %72, align 8, !tbaa !162
  %98 = getelementptr inbounds i32, ptr %97, i64 %95
  %99 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 17
  %100 = load ptr, ptr %99, align 8, !tbaa !289
  %101 = getelementptr inbounds i32, ptr %100, i64 %95
  %102 = sitofp i32 %29 to double
  %103 = fmul float %38, %60
  %104 = tail call float @llvm.fmuladd.f32(float %63, float %32, float %103)
  %105 = fdiv float %104, %47
  %106 = fadd float %51, %105
  %107 = fpext float %106 to double
  %108 = tail call double @llvm.fmuladd.f64(double %102, double %70, double %107)
  %109 = add nsw i32 %71, -1
  %110 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 26
  %111 = trunc i32 %91 to i16
  %112 = sext i32 %71 to i64
  %113 = sub nsw i64 0, %112
  br label %114

114:                                              ; preds = %49, %261
  %115 = phi ptr [ %96, %49 ], [ %265, %261 ]
  %116 = phi ptr [ %98, %49 ], [ %264, %261 ]
  %117 = phi ptr [ %101, %49 ], [ %263, %261 ]
  %118 = phi i32 [ %29, %49 ], [ %266, %261 ]
  %119 = phi ptr [ %88, %49 ], [ %268, %261 ]
  %120 = phi ptr [ %89, %49 ], [ %267, %261 ]
  %121 = phi double [ %108, %49 ], [ %262, %261 ]
  %122 = load float, ptr %120, align 4, !tbaa !49
  %123 = tail call float @llvm.floor.f32(float %122)
  %124 = fptosi float %123 to i32
  %125 = load float, ptr %119, align 4, !tbaa !49
  %126 = tail call float @llvm.floor.f32(float %125)
  %127 = fptosi float %126 to i32
  %128 = icmp sgt i32 %71, %127
  %129 = select i1 %128, i32 %127, i32 %109
  %130 = tail call i32 @llvm.smax.i32(i32 %124, i32 -1)
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %261

132:                                              ; preds = %114
  %133 = add nsw i32 %130, 1
  %134 = sub nsw i32 %129, %133
  %135 = icmp sgt i32 %134, -1
  br i1 %135, label %136, label %261

136:                                              ; preds = %132
  %137 = sitofp i32 %133 to double
  %138 = tail call double @llvm.fmuladd.f64(double %137, double %67, double %121)
  %139 = load i32, ptr %110, align 8, !tbaa !295
  %140 = sitofp i32 %139 to double
  %141 = fsub double %138, %140
  %142 = zext nneg i32 %133 to i64
  %143 = getelementptr inbounds %struct.APixstr, ptr %115, i64 %142
  %144 = getelementptr inbounds i32, ptr %116, i64 %142
  %145 = getelementptr inbounds i32, ptr %117, i64 %142
  br label %146

146:                                              ; preds = %136, %254
  %147 = phi ptr [ %258, %254 ], [ %143, %136 ]
  %148 = phi i32 [ %259, %254 ], [ %134, %136 ]
  %149 = phi ptr [ %257, %254 ], [ %144, %136 ]
  %150 = phi ptr [ %256, %254 ], [ %145, %136 ]
  %151 = phi double [ %255, %254 ], [ %141, %136 ]
  %152 = fcmp olt double %151, 0xC1E0000000000000
  %153 = fcmp ogt double %151, 0x41DFFFFFFFC00000
  %154 = select i1 %153, double 0x41DFFFFFFFC00000, double %151
  %155 = select i1 %152, double 0xC1E0000000000000, double %154
  %156 = fptosi double %155 to i32
  %157 = load i32, ptr %150, align 4, !tbaa !46
  %158 = icmp sgt i32 %157, %156
  br i1 %158, label %159, label %254

159:                                              ; preds = %146
  %160 = load ptr, ptr %72, align 8, !tbaa !162
  %161 = icmp eq ptr %160, null
  br i1 %161, label %167, label %162

162:                                              ; preds = %159
  %163 = load i32, ptr %149, align 4, !tbaa !46
  %164 = icmp sge i32 %163, %156
  %165 = icmp eq ptr %147, null
  %166 = select i1 %164, i1 true, i1 %165
  br i1 %166, label %254, label %169

167:                                              ; preds = %159
  %168 = icmp eq ptr %147, null
  br i1 %168, label %254, label %169

169:                                              ; preds = %167, %162
  br label %170

170:                                              ; preds = %169, %251
  %171 = phi ptr [ %252, %251 ], [ %147, %169 ]
  %172 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 2
  %173 = load i32, ptr %172, align 8, !tbaa !46
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 2
  %177 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 3
  store i32 %1, ptr %177, align 8, !tbaa !46
  store i32 %2, ptr %176, align 8, !tbaa !46
  %178 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 1
  store i32 %156, ptr %178, align 8, !tbaa !46
  store i16 %111, ptr %171, align 8, !tbaa !318
  br label %254

179:                                              ; preds = %170
  %180 = icmp eq i32 %173, %2
  br i1 %180, label %181, label %188

181:                                              ; preds = %179
  %182 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 3
  %183 = load i32, ptr %182, align 8, !tbaa !46
  %184 = icmp eq i32 %183, %1
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i16, ptr %171, align 8, !tbaa !318
  %187 = or i16 %186, %111
  store i16 %187, ptr %171, align 8, !tbaa !318
  br label %254

188:                                              ; preds = %181, %179
  %189 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 2, i64 1
  %190 = load i32, ptr %189, align 4, !tbaa !46
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 2, i64 1
  %194 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 3, i64 1
  store i32 %1, ptr %194, align 4, !tbaa !46
  store i32 %2, ptr %193, align 4, !tbaa !46
  %195 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 1, i64 1
  store i32 %156, ptr %195, align 4, !tbaa !46
  %196 = getelementptr inbounds [4 x i16], ptr %171, i64 0, i64 1
  store i16 %111, ptr %196, align 2, !tbaa !318
  br label %254

197:                                              ; preds = %188
  %198 = icmp eq i32 %190, %2
  br i1 %198, label %199, label %207

199:                                              ; preds = %197
  %200 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 3, i64 1
  %201 = load i32, ptr %200, align 4, !tbaa !46
  %202 = icmp eq i32 %201, %1
  br i1 %202, label %203, label %207

203:                                              ; preds = %199
  %204 = getelementptr inbounds [4 x i16], ptr %171, i64 0, i64 1
  %205 = load i16, ptr %204, align 2, !tbaa !318
  %206 = or i16 %205, %111
  store i16 %206, ptr %204, align 2, !tbaa !318
  br label %254

207:                                              ; preds = %199, %197
  %208 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 2, i64 2
  %209 = load i32, ptr %208, align 8, !tbaa !46
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 2, i64 2
  %213 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 3, i64 2
  store i32 %1, ptr %213, align 8, !tbaa !46
  store i32 %2, ptr %212, align 8, !tbaa !46
  %214 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 1, i64 2
  store i32 %156, ptr %214, align 8, !tbaa !46
  %215 = getelementptr inbounds [4 x i16], ptr %171, i64 0, i64 2
  store i16 %111, ptr %215, align 4, !tbaa !318
  br label %254

216:                                              ; preds = %207
  %217 = icmp eq i32 %209, %2
  br i1 %217, label %218, label %226

218:                                              ; preds = %216
  %219 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 3, i64 2
  %220 = load i32, ptr %219, align 8, !tbaa !46
  %221 = icmp eq i32 %220, %1
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = getelementptr inbounds [4 x i16], ptr %171, i64 0, i64 2
  %224 = load i16, ptr %223, align 4, !tbaa !318
  %225 = or i16 %224, %111
  store i16 %225, ptr %223, align 4, !tbaa !318
  br label %254

226:                                              ; preds = %218, %216
  %227 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 2, i64 3
  %228 = load i32, ptr %227, align 4, !tbaa !46
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 2, i64 3
  %232 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 3, i64 3
  store i32 %1, ptr %232, align 4, !tbaa !46
  store i32 %2, ptr %231, align 4, !tbaa !46
  %233 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 1, i64 3
  store i32 %156, ptr %233, align 4, !tbaa !46
  %234 = getelementptr inbounds [4 x i16], ptr %171, i64 0, i64 3
  store i16 %111, ptr %234, align 2, !tbaa !318
  br label %254

235:                                              ; preds = %226
  %236 = icmp eq i32 %228, %2
  br i1 %236, label %237, label %245

237:                                              ; preds = %235
  %238 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 3, i64 3
  %239 = load i32, ptr %238, align 4, !tbaa !46
  %240 = icmp eq i32 %239, %1
  br i1 %240, label %241, label %245

241:                                              ; preds = %237
  %242 = getelementptr inbounds [4 x i16], ptr %171, i64 0, i64 3
  %243 = load i16, ptr %242, align 2, !tbaa !318
  %244 = or i16 %243, %111
  store i16 %244, ptr %242, align 2, !tbaa !318
  br label %254

245:                                              ; preds = %237, %235
  %246 = getelementptr inbounds %struct.APixstr, ptr %171, i64 0, i32 5
  %247 = load ptr, ptr %246, align 8, !tbaa !322
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %251

249:                                              ; preds = %245
  %250 = tail call fastcc ptr @addpsA(ptr noundef nonnull %0) #19
  store ptr %250, ptr %246, align 8, !tbaa !322
  br label %251

251:                                              ; preds = %249, %245
  %252 = phi ptr [ %250, %249 ], [ %247, %245 ]
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %170, !llvm.loop !390

254:                                              ; preds = %251, %167, %162, %241, %230, %222, %211, %203, %192, %185, %175, %146
  %255 = fadd double %67, %151
  %256 = getelementptr inbounds i32, ptr %150, i64 1
  %257 = getelementptr inbounds i32, ptr %149, i64 1
  %258 = getelementptr inbounds %struct.APixstr, ptr %147, i64 1
  %259 = add nsw i32 %148, -1
  %260 = icmp sgt i32 %148, 0
  br i1 %260, label %146, label %261, !llvm.loop !391

261:                                              ; preds = %254, %132, %114
  %262 = fsub double %121, %70
  %263 = getelementptr inbounds i32, ptr %117, i64 %113
  %264 = getelementptr inbounds i32, ptr %116, i64 %113
  %265 = getelementptr inbounds %struct.APixstr, ptr %115, i64 %113
  %266 = add nsw i32 %118, -1
  %267 = getelementptr inbounds float, ptr %120, i64 -1
  %268 = getelementptr inbounds float, ptr %119, i64 -1
  %269 = icmp sgt i32 %118, %24
  br i1 %269, label %114, label %270, !llvm.loop !392

270:                                              ; preds = %261, %31, %19, %11, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @zbuflineAc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) #0 !PGOFuncName !393 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #18
  %8 = load <2 x float>, ptr %4, align 4, !tbaa !49
  %9 = load <2 x float>, ptr %3, align 4, !tbaa !49
  %10 = fsub <2 x float> %8, %9
  %11 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 28
  %12 = load i32, ptr %11, align 8, !tbaa !292
  %13 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %10)
  %14 = extractelement <2 x float> %13, i64 0
  %15 = extractelement <2 x float> %13, i64 1
  %16 = fcmp ogt float %14, %15
  br i1 %16, label %17, label %217

17:                                               ; preds = %5
  %18 = extractelement <2 x float> %8, i64 0
  %19 = extractelement <2 x float> %9, i64 0
  %20 = fcmp olt float %19, %18
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %3) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %4) #19
  br label %24

22:                                               ; preds = %17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %3) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %4) #19
  %23 = fneg <2 x float> %10
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi <2 x float> [ %10, %21 ], [ %23, %22 ]
  %26 = load float, ptr %6, align 4, !tbaa !49
  %27 = tail call float @llvm.floor.f32(float %26)
  %28 = fptosi float %27 to i32
  %29 = sitofp i32 %28 to double
  %30 = extractelement <2 x float> %25, i64 0
  %31 = tail call float @llvm.floor.f32(float %30)
  %32 = fpext float %31 to double
  %33 = fadd double %32, %29
  %34 = fptosi double %33 to i32
  %35 = load i32, ptr %0, align 8, !tbaa !34
  %36 = icmp sgt i32 %35, %34
  %37 = add nsw i32 %35, -1
  %38 = select i1 %36, i32 %34, i32 %37
  %39 = extractelement <2 x float> %25, i64 1
  %40 = fdiv float %39, %30
  %41 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !49
  %43 = fptosi float %42 to i32
  %44 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 26
  %45 = load i32, ptr %44, align 8, !tbaa !295
  %46 = sub nsw i32 %43, %45
  %47 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !49
  %49 = fsub float %48, %42
  %50 = fdiv float %49, %30
  %51 = fptosi float %50 to i32
  %52 = icmp sgt i32 %46, 1342177280
  %53 = icmp sgt i32 %51, 0
  %54 = select i1 %52, i1 %53, i1 false
  %55 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 21
  %56 = icmp slt i32 %38, %28
  br i1 %56, label %405, label %57

57:                                               ; preds = %24
  %58 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !49
  %60 = fcmp olt float %40, 0.000000e+00
  %61 = sub nsw i32 0, %35
  %62 = select i1 %60, i32 %61, i32 %35
  %63 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 22
  %64 = load ptr, ptr %63, align 8, !tbaa !290
  %65 = tail call float @llvm.floor.f32(float %59)
  %66 = fptosi float %65 to i32
  %67 = mul nsw i32 %35, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.APixstr, ptr %64, i64 %68
  %70 = sext i32 %28 to i64
  %71 = getelementptr inbounds %struct.APixstr, ptr %69, i64 %70
  %72 = load ptr, ptr %55, align 8, !tbaa !162
  %73 = getelementptr inbounds i32, ptr %72, i64 %68
  %74 = getelementptr inbounds i32, ptr %73, i64 %70
  %75 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 17
  %76 = load ptr, ptr %75, align 8, !tbaa !289
  %77 = getelementptr inbounds i32, ptr %76, i64 %68
  %78 = getelementptr inbounds i32, ptr %77, i64 %70
  %79 = sext i32 %62 to i64
  %80 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %81 = trunc i32 %12 to i16
  %82 = sub nsw i32 2147483632, %51
  br label %83

83:                                               ; preds = %57, %206
  %84 = phi ptr [ %71, %57 ], [ %215, %206 ]
  %85 = phi i32 [ %46, %57 ], [ %211, %206 ]
  %86 = phi i32 [ %66, %57 ], [ %101, %206 ]
  %87 = phi i32 [ %28, %57 ], [ %212, %206 ]
  %88 = phi ptr [ %74, %57 ], [ %214, %206 ]
  %89 = phi ptr [ %78, %57 ], [ %213, %206 ]
  %90 = phi float [ %59, %57 ], [ %207, %206 ]
  %91 = tail call float @llvm.floor.f32(float %90)
  %92 = fptosi float %91 to i32
  %93 = icmp eq i32 %86, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %83
  %95 = getelementptr inbounds i32, ptr %89, i64 %79
  %96 = getelementptr inbounds i32, ptr %88, i64 %79
  %97 = getelementptr inbounds %struct.APixstr, ptr %84, i64 %79
  br label %98

98:                                               ; preds = %94, %83
  %99 = phi ptr [ %95, %94 ], [ %89, %83 ]
  %100 = phi ptr [ %96, %94 ], [ %88, %83 ]
  %101 = phi i32 [ %92, %94 ], [ %86, %83 ]
  %102 = phi ptr [ %97, %94 ], [ %84, %83 ]
  %103 = or i32 %87, %92
  %104 = icmp sgt i32 %103, -1
  br i1 %104, label %105, label %206

105:                                              ; preds = %98
  %106 = load i32, ptr %80, align 4, !tbaa !41
  %107 = icmp sgt i32 %106, %92
  br i1 %107, label %108, label %206

108:                                              ; preds = %105
  %109 = load i32, ptr %99, align 4, !tbaa !46
  %110 = icmp slt i32 %85, %109
  br i1 %110, label %111, label %206

111:                                              ; preds = %108
  %112 = load ptr, ptr %55, align 8, !tbaa !162
  %113 = icmp eq ptr %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = load i32, ptr %100, align 4, !tbaa !46
  %116 = icmp sle i32 %85, %115
  %117 = icmp eq ptr %102, null
  %118 = select i1 %116, i1 true, i1 %117
  br i1 %118, label %206, label %121

119:                                              ; preds = %111
  %120 = icmp eq ptr %102, null
  br i1 %120, label %206, label %121

121:                                              ; preds = %119, %114
  br label %122

122:                                              ; preds = %121, %203
  %123 = phi ptr [ %204, %203 ], [ %102, %121 ]
  %124 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 2
  %125 = load i32, ptr %124, align 8, !tbaa !46
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 2
  %129 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 3
  store i32 %1, ptr %129, align 8, !tbaa !46
  store i32 %2, ptr %128, align 8, !tbaa !46
  %130 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 1
  store i32 %85, ptr %130, align 8, !tbaa !46
  store i16 %81, ptr %123, align 8, !tbaa !318
  br label %206

131:                                              ; preds = %122
  %132 = icmp eq i32 %125, %2
  br i1 %132, label %133, label %140

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 3
  %135 = load i32, ptr %134, align 8, !tbaa !46
  %136 = icmp eq i32 %135, %1
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i16, ptr %123, align 8, !tbaa !318
  %139 = or i16 %138, %81
  store i16 %139, ptr %123, align 8, !tbaa !318
  br label %206

140:                                              ; preds = %133, %131
  %141 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 2, i64 1
  %142 = load i32, ptr %141, align 4, !tbaa !46
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 2, i64 1
  %146 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 3, i64 1
  store i32 %1, ptr %146, align 4, !tbaa !46
  store i32 %2, ptr %145, align 4, !tbaa !46
  %147 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 1, i64 1
  store i32 %85, ptr %147, align 4, !tbaa !46
  %148 = getelementptr inbounds [4 x i16], ptr %123, i64 0, i64 1
  store i16 %81, ptr %148, align 2, !tbaa !318
  br label %206

149:                                              ; preds = %140
  %150 = icmp eq i32 %142, %2
  br i1 %150, label %151, label %159

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 3, i64 1
  %153 = load i32, ptr %152, align 4, !tbaa !46
  %154 = icmp eq i32 %153, %1
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = getelementptr inbounds [4 x i16], ptr %123, i64 0, i64 1
  %157 = load i16, ptr %156, align 2, !tbaa !318
  %158 = or i16 %157, %81
  store i16 %158, ptr %156, align 2, !tbaa !318
  br label %206

159:                                              ; preds = %151, %149
  %160 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 2, i64 2
  %161 = load i32, ptr %160, align 8, !tbaa !46
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 2, i64 2
  %165 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 3, i64 2
  store i32 %1, ptr %165, align 8, !tbaa !46
  store i32 %2, ptr %164, align 8, !tbaa !46
  %166 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 1, i64 2
  store i32 %85, ptr %166, align 8, !tbaa !46
  %167 = getelementptr inbounds [4 x i16], ptr %123, i64 0, i64 2
  store i16 %81, ptr %167, align 4, !tbaa !318
  br label %206

168:                                              ; preds = %159
  %169 = icmp eq i32 %161, %2
  br i1 %169, label %170, label %178

170:                                              ; preds = %168
  %171 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 3, i64 2
  %172 = load i32, ptr %171, align 8, !tbaa !46
  %173 = icmp eq i32 %172, %1
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = getelementptr inbounds [4 x i16], ptr %123, i64 0, i64 2
  %176 = load i16, ptr %175, align 4, !tbaa !318
  %177 = or i16 %176, %81
  store i16 %177, ptr %175, align 4, !tbaa !318
  br label %206

178:                                              ; preds = %170, %168
  %179 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 2, i64 3
  %180 = load i32, ptr %179, align 4, !tbaa !46
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 2, i64 3
  %184 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 3, i64 3
  store i32 %1, ptr %184, align 4, !tbaa !46
  store i32 %2, ptr %183, align 4, !tbaa !46
  %185 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 1, i64 3
  store i32 %85, ptr %185, align 4, !tbaa !46
  %186 = getelementptr inbounds [4 x i16], ptr %123, i64 0, i64 3
  store i16 %81, ptr %186, align 2, !tbaa !318
  br label %206

187:                                              ; preds = %178
  %188 = icmp eq i32 %180, %2
  br i1 %188, label %189, label %197

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 3, i64 3
  %191 = load i32, ptr %190, align 4, !tbaa !46
  %192 = icmp eq i32 %191, %1
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = getelementptr inbounds [4 x i16], ptr %123, i64 0, i64 3
  %195 = load i16, ptr %194, align 2, !tbaa !318
  %196 = or i16 %195, %81
  store i16 %196, ptr %194, align 2, !tbaa !318
  br label %206

197:                                              ; preds = %189, %187
  %198 = getelementptr inbounds %struct.APixstr, ptr %123, i64 0, i32 5
  %199 = load ptr, ptr %198, align 8, !tbaa !322
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = tail call fastcc ptr @addpsA(ptr noundef nonnull %0) #19
  store ptr %202, ptr %198, align 8, !tbaa !322
  br label %203

203:                                              ; preds = %201, %197
  %204 = phi ptr [ %202, %201 ], [ %199, %197 ]
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %122, !llvm.loop !394

206:                                              ; preds = %203, %119, %108, %127, %137, %144, %155, %163, %174, %182, %193, %114, %105, %98
  %207 = fadd float %40, %90
  %208 = icmp sgt i32 %85, %82
  %209 = select i1 %54, i1 %208, i1 false
  %210 = add nsw i32 %85, %51
  %211 = select i1 %209, i32 2147483632, i32 %210
  %212 = add i32 %87, 1
  %213 = getelementptr inbounds i32, ptr %99, i64 1
  %214 = getelementptr inbounds i32, ptr %100, i64 1
  %215 = getelementptr inbounds %struct.APixstr, ptr %102, i64 1
  %216 = icmp eq i32 %87, %38
  br i1 %216, label %405, label %83, !llvm.loop !395

217:                                              ; preds = %5
  %218 = fcmp olt <2 x float> %9, %8
  %219 = extractelement <2 x i1> %218, i64 1
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %3) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %4) #19
  br label %223

221:                                              ; preds = %217
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %3) #19
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %4) #19
  %222 = fneg <2 x float> %10
  br label %223

223:                                              ; preds = %221, %220
  %224 = phi <2 x float> [ %10, %220 ], [ %222, %221 ]
  %225 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %226 = load float, ptr %225, align 4, !tbaa !49
  %227 = tail call float @llvm.floor.f32(float %226)
  %228 = fptosi float %227 to i32
  %229 = sitofp i32 %228 to double
  %230 = extractelement <2 x float> %224, i64 1
  %231 = tail call float @llvm.floor.f32(float %230)
  %232 = fpext float %231 to double
  %233 = fadd double %232, %229
  %234 = fptosi double %233 to i32
  %235 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 1
  %236 = load i32, ptr %235, align 4, !tbaa !41
  %237 = icmp sle i32 %236, %228
  %238 = icmp slt i32 %234, 0
  %239 = select i1 %237, i1 true, i1 %238
  br i1 %239, label %405, label %240

240:                                              ; preds = %223
  %241 = icmp sgt i32 %236, %234
  %242 = add nsw i32 %236, -1
  %243 = select i1 %241, i32 %234, i32 %242
  %244 = extractelement <2 x float> %224, i64 0
  %245 = fdiv float %244, %230
  %246 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %247 = load float, ptr %246, align 4, !tbaa !49
  %248 = fptosi float %247 to i32
  %249 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 26
  %250 = load i32, ptr %249, align 8, !tbaa !295
  %251 = sub nsw i32 %248, %250
  %252 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %253 = load float, ptr %252, align 4, !tbaa !49
  %254 = fsub float %253, %247
  %255 = fdiv float %254, %230
  %256 = fptosi float %255 to i32
  %257 = icmp sgt i32 %251, 1342177280
  %258 = icmp sgt i32 %256, 0
  %259 = select i1 %257, i1 %258, i1 false
  %260 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 21
  %261 = fcmp olt float %245, 0.000000e+00
  %262 = select i1 %261, i64 -1, i64 1
  %263 = icmp slt i32 %243, %228
  br i1 %263, label %405, label %264

264:                                              ; preds = %240
  %265 = load float, ptr %6, align 4, !tbaa !49
  %266 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 22
  %267 = load ptr, ptr %266, align 8, !tbaa !290
  %268 = load i32, ptr %0, align 8, !tbaa !34
  %269 = mul nsw i32 %268, %228
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.APixstr, ptr %267, i64 %270
  %272 = tail call float @llvm.floor.f32(float %265)
  %273 = fptosi float %272 to i32
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.APixstr, ptr %271, i64 %274
  %276 = load ptr, ptr %260, align 8, !tbaa !162
  %277 = getelementptr inbounds i32, ptr %276, i64 %270
  %278 = getelementptr inbounds i32, ptr %277, i64 %274
  %279 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 17
  %280 = load ptr, ptr %279, align 8, !tbaa !289
  %281 = getelementptr inbounds i32, ptr %280, i64 %270
  %282 = getelementptr inbounds i32, ptr %281, i64 %274
  %283 = trunc i32 %12 to i16
  %284 = sub nsw i32 2147483632, %256
  br label %285

285:                                              ; preds = %264, %392
  %286 = phi i32 [ %268, %264 ], [ %399, %392 ]
  %287 = phi ptr [ %275, %264 ], [ %403, %392 ]
  %288 = phi i32 [ %251, %264 ], [ %397, %392 ]
  %289 = phi i32 [ %273, %264 ], [ %304, %392 ]
  %290 = phi i32 [ %228, %264 ], [ %398, %392 ]
  %291 = phi ptr [ %278, %264 ], [ %402, %392 ]
  %292 = phi ptr [ %282, %264 ], [ %401, %392 ]
  %293 = phi float [ %265, %264 ], [ %393, %392 ]
  %294 = tail call float @llvm.floor.f32(float %293)
  %295 = fptosi float %294 to i32
  %296 = icmp eq i32 %289, %295
  br i1 %296, label %301, label %297

297:                                              ; preds = %285
  %298 = getelementptr inbounds i32, ptr %292, i64 %262
  %299 = getelementptr inbounds i32, ptr %291, i64 %262
  %300 = getelementptr inbounds %struct.APixstr, ptr %287, i64 %262
  br label %301

301:                                              ; preds = %297, %285
  %302 = phi ptr [ %298, %297 ], [ %292, %285 ]
  %303 = phi ptr [ %299, %297 ], [ %291, %285 ]
  %304 = phi i32 [ %295, %297 ], [ %289, %285 ]
  %305 = phi ptr [ %300, %297 ], [ %287, %285 ]
  %306 = or i32 %290, %295
  %307 = icmp sgt i32 %306, -1
  %308 = icmp sgt i32 %286, %295
  %309 = select i1 %307, i1 %308, i1 false
  br i1 %309, label %310, label %392

310:                                              ; preds = %301
  %311 = load i32, ptr %302, align 4, !tbaa !46
  %312 = icmp slt i32 %288, %311
  br i1 %312, label %313, label %392

313:                                              ; preds = %310
  %314 = load ptr, ptr %260, align 8, !tbaa !162
  %315 = icmp eq ptr %314, null
  br i1 %315, label %321, label %316

316:                                              ; preds = %313
  %317 = load i32, ptr %303, align 4, !tbaa !46
  %318 = icmp sle i32 %288, %317
  %319 = icmp eq ptr %305, null
  %320 = select i1 %318, i1 true, i1 %319
  br i1 %320, label %392, label %323

321:                                              ; preds = %313
  %322 = icmp eq ptr %305, null
  br i1 %322, label %392, label %323

323:                                              ; preds = %321, %316
  br label %324

324:                                              ; preds = %323, %389
  %325 = phi ptr [ %390, %389 ], [ %305, %323 ]
  %326 = getelementptr inbounds %struct.APixstr, ptr %325, i64 0, i32 2
  %327 = load i32, ptr %326, align 8, !tbaa !46
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %324
  %330 = getelementptr inbounds %struct.APixstr, ptr %325, i64 0, i32 2
  %331 = getelementptr inbounds %struct.APixstr, ptr %325, i64 0, i32 3
  store i32 %1, ptr %331, align 8, !tbaa !46
  store i32 %2, ptr %330, align 8, !tbaa !46
  %332 = getelementptr inbounds %struct.APixstr, ptr %325, i64 0, i32 1
  store i32 %288, ptr %332, align 8, !tbaa !46
  store i16 %283, ptr %325, align 8, !tbaa !318
  br label %392

333:                                              ; preds = %324
  %334 = icmp eq i32 %327, %2
  br i1 %334, label %335, label %338

335:                                              ; preds = %333
  %336 = load i16, ptr %325, align 8, !tbaa !318
  %337 = or i16 %336, %283
  store i16 %337, ptr %325, align 8, !tbaa !318
  br label %392

338:                                              ; preds = %333
  %339 = getelementptr inbounds %struct.APixstr, ptr %325, i64 0, i32 2, i64 1
  %340 = load i32, ptr %339, align 4, !tbaa !46
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.APixstr, ptr %325, i64 0, i32 2, i64 1
  %344 = getelementptr inbounds %struct.APixstr, ptr %325, i64 0, i32 3, i64 1
  store i32 %1, ptr %344, align 4, !tbaa !46
  store i32 %2, ptr %343, align 4, !tbaa !46
  %345 = getelementptr inbounds %struct.APixstr, ptr %325, i64 0, i32 1, i64 1
  store i32 %288, ptr %345, align 4, !tbaa !46
  %346 = getelementptr inbounds [4 x i16], ptr %325, i64 0, i64 1
  store i16 %283, ptr %346, align 2, !tbaa !318
  br label %392

347:                                              ; preds = %338
  %348 = icmp eq i32 %340, %2
  br i1 %348, label %349, label %353

349:                                              ; preds = %347
  %350 = getelementptr inbounds [4 x i16], ptr %325, i64 0, i64 1
  %351 = load i16, ptr %350, align 2, !tbaa !318
  %352 = or i16 %351, %283
  store i16 %352, ptr %350, align 2, !tbaa !318
  br label %392

353:                                              ; preds = %347
  %354 = getelementptr inbounds %struct.APixstr, ptr %325, i64 0, i32 2, i64 2
  %355 = load i32, ptr %354, align 8, !tbaa !46
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %362

357:                                              ; preds = %353
  %358 = getelementptr inbounds %struct.APixstr, ptr %325, i64 0, i32 2, i64 2
  %359 = getelementptr inbounds %struct.APixstr, ptr %325, i64 0, i32 3, i64 2
  store i32 %1, ptr %359, align 8, !tbaa !46
  store i32 %2, ptr %358, align 8, !tbaa !46
  %360 = getelementptr inbounds %struct.APixstr, ptr %325, i64 0, i32 1, i64 2
  store i32 %288, ptr %360, align 8, !tbaa !46
  %361 = getelementptr inbounds [4 x i16], ptr %325, i64 0, i64 2
  store i16 %283, ptr %361, align 4, !tbaa !318
  br label %392

362:                                              ; preds = %353
  %363 = icmp eq i32 %355, %2
  br i1 %363, label %364, label %368

364:                                              ; preds = %362
  %365 = getelementptr inbounds [4 x i16], ptr %325, i64 0, i64 2
  %366 = load i16, ptr %365, align 4, !tbaa !318
  %367 = or i16 %366, %283
  store i16 %367, ptr %365, align 4, !tbaa !318
  br label %392

368:                                              ; preds = %362
  %369 = getelementptr inbounds %struct.APixstr, ptr %325, i64 0, i32 2, i64 3
  %370 = load i32, ptr %369, align 4, !tbaa !46
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %377

372:                                              ; preds = %368
  %373 = getelementptr inbounds %struct.APixstr, ptr %325, i64 0, i32 2, i64 3
  %374 = getelementptr inbounds %struct.APixstr, ptr %325, i64 0, i32 3, i64 3
  store i32 %1, ptr %374, align 4, !tbaa !46
  store i32 %2, ptr %373, align 4, !tbaa !46
  %375 = getelementptr inbounds %struct.APixstr, ptr %325, i64 0, i32 1, i64 3
  store i32 %288, ptr %375, align 4, !tbaa !46
  %376 = getelementptr inbounds [4 x i16], ptr %325, i64 0, i64 3
  store i16 %283, ptr %376, align 2, !tbaa !318
  br label %392

377:                                              ; preds = %368
  %378 = icmp eq i32 %370, %2
  br i1 %378, label %379, label %383

379:                                              ; preds = %377
  %380 = getelementptr inbounds [4 x i16], ptr %325, i64 0, i64 3
  %381 = load i16, ptr %380, align 2, !tbaa !318
  %382 = or i16 %381, %283
  store i16 %382, ptr %380, align 2, !tbaa !318
  br label %392

383:                                              ; preds = %377
  %384 = getelementptr inbounds %struct.APixstr, ptr %325, i64 0, i32 5
  %385 = load ptr, ptr %384, align 8, !tbaa !322
  %386 = icmp eq ptr %385, null
  br i1 %386, label %387, label %389

387:                                              ; preds = %383
  %388 = tail call fastcc ptr @addpsA(ptr noundef nonnull %0) #19
  store ptr %388, ptr %384, align 8, !tbaa !322
  br label %389

389:                                              ; preds = %387, %383
  %390 = phi ptr [ %388, %387 ], [ %385, %383 ]
  %391 = icmp eq ptr %390, null
  br i1 %391, label %392, label %324, !llvm.loop !396

392:                                              ; preds = %389, %321, %310, %329, %335, %342, %349, %357, %364, %372, %379, %316, %301
  %393 = fadd float %245, %293
  %394 = icmp sgt i32 %288, %284
  %395 = select i1 %259, i1 %394, i1 false
  %396 = add nsw i32 %288, %256
  %397 = select i1 %395, i32 2147483632, i32 %396
  %398 = add i32 %290, 1
  %399 = load i32, ptr %0, align 8, !tbaa !34
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, ptr %302, i64 %400
  %402 = getelementptr inbounds i32, ptr %303, i64 %400
  %403 = getelementptr inbounds %struct.APixstr, ptr %305, i64 %400
  %404 = icmp eq i32 %290, %243
  br i1 %404, label %405, label %285, !llvm.loop !397

405:                                              ; preds = %392, %206, %240, %24, %223
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @copyto_abufz(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2, i32 noundef %3) unnamed_addr #7 !PGOFuncName !398 {
  %5 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !120
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !126
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %12 = load i32, ptr %11, align 8, !tbaa !117
  br i1 %10, label %13, label %16

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %15 = load i32, ptr %14, align 4, !tbaa !118
  tail call void @fillrect(ptr noundef %1, i32 noundef %12, i32 noundef %15, i32 noundef 2147483646) #19
  br label %23

16:                                               ; preds = %7
  %17 = sext i32 %12 to i64
  %18 = shl nsw i64 %17, 2
  %19 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %20 = load i32, ptr %19, align 4, !tbaa !118
  %21 = sext i32 %20 to i64
  %22 = mul i64 %18, %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr nonnull align 4 %9, i64 %22, i1 false)
  br label %23

23:                                               ; preds = %16, %13
  %24 = icmp eq ptr %2, null
  br i1 %24, label %108, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !124
  %28 = icmp eq ptr %27, null
  br i1 %28, label %108, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %31 = load i32, ptr %30, align 8, !tbaa !117
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 2
  %34 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %35 = load i32, ptr %34, align 4, !tbaa !118
  %36 = sext i32 %35 to i64
  %37 = mul i64 %33, %36
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %27, i64 %37, i1 false)
  br label %108

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !305
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %44 = load i32, ptr %43, align 8, !tbaa !117
  %45 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %46 = load i32, ptr %45, align 4, !tbaa !118
  tail call void @fillrect(ptr noundef %1, i32 noundef %44, i32 noundef %46, i32 noundef 2147483646) #19
  br label %108

47:                                               ; preds = %38
  %48 = shl nuw i32 1, %3
  %49 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %50 = load i32, ptr %49, align 4, !tbaa !118
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %108

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %54 = icmp eq ptr %2, null
  %55 = load i32, ptr %53, align 8, !tbaa !117
  br label %56

56:                                               ; preds = %52, %100
  %57 = phi i32 [ %50, %52 ], [ %101, %100 ]
  %58 = phi i32 [ %55, %52 ], [ %102, %100 ]
  %59 = phi ptr [ %40, %52 ], [ %105, %100 ]
  %60 = phi ptr [ %2, %52 ], [ %104, %100 ]
  %61 = phi ptr [ %1, %52 ], [ %103, %100 ]
  %62 = phi i32 [ 0, %52 ], [ %106, %100 ]
  %63 = icmp sgt i32 %58, 0
  br i1 %63, label %64, label %100

64:                                               ; preds = %56, %91
  %65 = phi ptr [ %92, %91 ], [ %59, %56 ]
  %66 = phi ptr [ %94, %91 ], [ %60, %56 ]
  %67 = phi ptr [ %93, %91 ], [ %61, %56 ]
  %68 = phi i32 [ %95, %91 ], [ 0, %56 ]
  store i32 2147483647, ptr %67, align 4, !tbaa !46
  br i1 %54, label %70, label %69

69:                                               ; preds = %64
  store i32 2147483647, ptr %66, align 4, !tbaa !46
  br label %70

70:                                               ; preds = %69, %64
  %71 = load i64, ptr %65, align 8, !tbaa !354
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %70
  %74 = inttoptr i64 %71 to ptr
  br label %75

75:                                               ; preds = %73, %88
  %76 = phi ptr [ %74, %73 ], [ %89, %88 ]
  %77 = getelementptr inbounds %struct.PixStr, ptr %76, i64 0, i32 5
  %78 = load i16, ptr %77, align 8, !tbaa !399
  %79 = zext i16 %78 to i32
  %80 = and i32 %48, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.PixStr, ptr %76, i64 0, i32 3
  %84 = load i32, ptr %83, align 8, !tbaa !401
  store i32 %84, ptr %67, align 4, !tbaa !46
  br i1 %54, label %91, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.PixStr, ptr %76, i64 0, i32 4
  %87 = load i32, ptr %86, align 4, !tbaa !402
  store i32 %87, ptr %66, align 4, !tbaa !46
  br label %91

88:                                               ; preds = %75
  %89 = load ptr, ptr %76, align 8, !tbaa !403
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %75, !llvm.loop !404

91:                                               ; preds = %88, %85, %82, %70
  %92 = getelementptr inbounds i64, ptr %65, i64 1
  %93 = getelementptr inbounds i32, ptr %67, i64 1
  %94 = getelementptr inbounds i32, ptr %66, i64 1
  %95 = add nuw nsw i32 %68, 1
  %96 = load i32, ptr %53, align 8, !tbaa !117
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %64, label %98, !llvm.loop !405

98:                                               ; preds = %91
  %99 = load i32, ptr %49, align 4, !tbaa !118
  br label %100

100:                                              ; preds = %98, %56
  %101 = phi i32 [ %57, %56 ], [ %99, %98 ]
  %102 = phi i32 [ %58, %56 ], [ %96, %98 ]
  %103 = phi ptr [ %61, %56 ], [ %93, %98 ]
  %104 = phi ptr [ %60, %56 ], [ %94, %98 ]
  %105 = phi ptr [ %59, %56 ], [ %92, %98 ]
  %106 = add nuw nsw i32 %62, 1
  %107 = icmp slt i32 %106, %101
  br i1 %107, label %56, label %108, !llvm.loop !406

108:                                              ; preds = %100, %47, %23, %25, %29, %42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @addpsA(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !407 {
  %2 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 29
  %3 = load i32, ptr %2, align 4, !tbaa !408
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !291
  %8 = tail call fastcc ptr @addpsmainA(ptr noundef %7) #19
  %9 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 23
  store ptr %8, ptr %9, align 8, !tbaa !409
  br label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !409
  %13 = getelementptr inbounds %struct.APixstr, ptr %12, i64 1
  store ptr %13, ptr %11, align 8, !tbaa !409
  %14 = add nsw i32 %3, -1
  br label %15

15:                                               ; preds = %10, %5
  %16 = phi ptr [ %13, %10 ], [ %8, %5 ]
  %17 = phi i32 [ %14, %10 ], [ 4095, %5 ]
  store i32 %17, ptr %2, align 4, !tbaa !408
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @addpsmainA(ptr noundef %0) unnamed_addr #0 !PGOFuncName !410 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %3 = tail call ptr %2(i64 noundef 24, ptr noundef nonnull @.str.19) #17
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %3) #17
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %5 = tail call ptr %4(i64 noundef 294912, ptr noundef nonnull @.str.20) #17
  %6 = getelementptr inbounds %struct.APixstrMain, ptr %3, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !54
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @RE_RenderLayerGetPass(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shade_strand_samples(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !411 {
  %5 = alloca %struct.StrandSegment, align 8
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %5) #18
  %6 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !333
  %7 = load i32, ptr %2, align 4, !tbaa !314
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %6, i64 %8
  %10 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %6, i64 %8, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !131
  %12 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 3
  store ptr %9, ptr %12, align 8, !tbaa !206
  %13 = getelementptr inbounds %struct.ZTranspRow, ptr %2, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !317
  %15 = add nsw i32 %14, -1
  %16 = tail call ptr @RE_findOrAddStrand(ptr noundef %11, i32 noundef %15) #17
  %17 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !214
  %18 = getelementptr inbounds %struct.StrandRen, ptr %16, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !209
  %20 = getelementptr inbounds %struct.StrandSegment, ptr %5, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !211
  %21 = load ptr, ptr %16, align 8, !tbaa !215
  %22 = getelementptr inbounds %struct.ZTranspRow, ptr %2, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !320
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.StrandVert, ptr %21, i64 %24
  %26 = icmp sgt i32 %23, 0
  %27 = sext i1 %26 to i64
  %28 = getelementptr inbounds %struct.StrandVert, ptr %25, i64 %27
  store ptr %28, ptr %5, align 8, !tbaa !42
  %29 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr %25, ptr %29, align 8, !tbaa !42
  %30 = getelementptr inbounds %struct.StrandVert, ptr %25, i64 1
  %31 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 2
  store ptr %30, ptr %31, align 8, !tbaa !42
  %32 = getelementptr inbounds %struct.StrandRen, ptr %16, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !218
  %34 = add nsw i32 %33, -2
  %35 = icmp slt i32 %23, %34
  %36 = getelementptr inbounds %struct.StrandVert, ptr %25, i64 2
  %37 = select i1 %35, ptr %36, ptr %30
  %38 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 3
  store ptr %37, ptr %38, align 8, !tbaa !42
  store i32 1, ptr %1, align 8, !tbaa !366
  %39 = getelementptr inbounds %struct.ZTranspRow, ptr %2, i64 0, i32 6
  %40 = load float, ptr %39, align 4, !tbaa !327
  %41 = getelementptr inbounds %struct.ZTranspRow, ptr %2, i64 0, i32 5
  %42 = load float, ptr %41, align 4, !tbaa !326
  call void @strand_shade_segment(ptr noundef nonnull @R, ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1, float noundef %40, float noundef %42, i32 noundef %3) #17
  %43 = getelementptr inbounds %struct.ZTranspRow, ptr %2, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !319
  %45 = getelementptr inbounds %struct.ShadeSample, ptr %1, i64 0, i32 2, i64 0, i32 105
  store i32 %44, ptr %45, align 4, !tbaa !375
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shade_tra_samples_fill(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !412 {
  %8 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2
  store i32 0, ptr %0, align 8, !tbaa !366
  tail call void @shade_input_set_triangle(ptr noundef nonnull %8, i32 noundef %4, i32 noundef %5, i32 noundef 1) #17
  %9 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !413
  %11 = icmp eq ptr %10, null
  br i1 %11, label %123, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.VlakRen, ptr %10, i64 0, i32 7
  %14 = load i8, ptr %13, align 1, !tbaa !151
  %15 = and i8 %14, 8
  %16 = icmp eq i8 %15, 0
  %17 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !120
  br i1 %16, label %63, label %18

18:                                               ; preds = %12
  %19 = icmp sgt i16 %17, 0
  br i1 %19, label %20, label %117

20:                                               ; preds = %18
  %21 = sitofp i32 %1 to float
  %22 = sitofp i32 %2 to float
  %23 = sitofp i32 %3 to float
  br label %24

24:                                               ; preds = %20, %56
  %25 = phi i64 [ 0, %20 ], [ %59, %56 ]
  %26 = phi ptr [ %8, %20 ], [ %58, %56 ]
  %27 = phi i16 [ 0, %20 ], [ %57, %56 ]
  %28 = trunc i64 %25 to i32
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %56, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %25
  %34 = load float, ptr %33, align 8, !tbaa !49
  %35 = fadd float %34, %21
  %36 = fadd float %35, 5.000000e-01
  %37 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %25, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !49
  %39 = fadd float %38, %22
  %40 = fadd float %39, 5.000000e-01
  %41 = icmp eq i16 %27, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.ShadeInput, ptr %26, i64 1
  tail call void @shade_input_copy_triangle(ptr noundef nonnull %43, ptr noundef %26) #17
  br label %44

44:                                               ; preds = %42, %32
  %45 = phi ptr [ %43, %42 ], [ %26, %32 ]
  %46 = getelementptr inbounds %struct.ShadeInput, ptr %45, i64 0, i32 105
  store i32 %29, ptr %46, align 4, !tbaa !375
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %45, i64 0, i32 114
  %48 = load i16, ptr %47, align 2, !tbaa !414
  %49 = sext i16 %48 to i64
  %50 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 42, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !46
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %50, align 4, !tbaa !46
  %53 = getelementptr inbounds %struct.ShadeInput, ptr %45, i64 0, i32 107
  store i32 %51, ptr %53, align 4, !tbaa !415
  tail call void @shade_input_set_viewco(ptr noundef %45, float noundef %21, float noundef %22, float noundef %36, float noundef %40, float noundef %23) #17
  tail call void @shade_input_set_uv(ptr noundef %45) #17
  br i1 %41, label %54, label %55

54:                                               ; preds = %44
  tail call void @shade_input_set_normals(ptr noundef nonnull %45) #17
  br label %56

55:                                               ; preds = %44
  tail call void @shade_input_set_vertex_normals(ptr noundef nonnull %45) #17
  br label %56

56:                                               ; preds = %54, %55, %24
  %57 = phi i16 [ %27, %24 ], [ 1, %55 ], [ 1, %54 ]
  %58 = phi ptr [ %26, %24 ], [ %45, %55 ], [ %45, %54 ]
  %59 = add nuw nsw i64 %25, 1
  %60 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !120
  %61 = sext i16 %60 to i64
  %62 = icmp slt i64 %59, %61
  br i1 %62, label %24, label %117, !llvm.loop !416

63:                                               ; preds = %12
  %64 = icmp eq i16 %17, 0
  br i1 %64, label %85, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 38), align 8, !tbaa !417
  %67 = getelementptr inbounds %struct.SampleTables, ptr %66, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !418
  %69 = sext i32 %6 to i64
  %70 = getelementptr inbounds i8, ptr %68, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !244
  %72 = sitofp i32 %1 to float
  %73 = zext i8 %71 to i32
  %74 = and i32 %73, 15
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds [16 x float], ptr %66, i64 0, i64 %75
  %77 = load float, ptr %76, align 4, !tbaa !49
  %78 = fadd float %77, %72
  %79 = sitofp i32 %2 to float
  %80 = lshr i32 %73, 4
  %81 = zext nneg i32 %80 to i64
  %82 = getelementptr inbounds [16 x float], ptr %66, i64 0, i64 %81
  %83 = load float, ptr %82, align 4, !tbaa !49
  %84 = fadd float %83, %79
  br label %101

85:                                               ; preds = %63
  %86 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 98, i32 8), align 2, !tbaa !123
  %87 = icmp eq i16 %86, 0
  %88 = sitofp i32 %1 to float
  br i1 %87, label %99, label %89

89:                                               ; preds = %85
  %90 = sext i16 %86 to i64
  %91 = add nsw i64 %90, -1
  %92 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 40, i64 %91
  %93 = load float, ptr %92, align 8, !tbaa !49
  %94 = fadd float %93, %88
  %95 = sitofp i32 %2 to float
  %96 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 40, i64 %91, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !49
  %98 = fadd float %97, %95
  br label %101

99:                                               ; preds = %85
  %100 = sitofp i32 %2 to float
  br label %101

101:                                              ; preds = %89, %99, %65
  %102 = phi float [ %95, %89 ], [ %100, %99 ], [ %79, %65 ]
  %103 = phi float [ %88, %89 ], [ %88, %99 ], [ %72, %65 ]
  %104 = phi float [ %94, %89 ], [ %88, %99 ], [ %78, %65 ]
  %105 = phi float [ %98, %89 ], [ %100, %99 ], [ %84, %65 ]
  %106 = fadd float %105, 5.000000e-01
  %107 = fadd float %104, 5.000000e-01
  %108 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 105
  store i32 %6, ptr %108, align 4, !tbaa !375
  %109 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 114
  %110 = load i16, ptr %109, align 2, !tbaa !414
  %111 = sext i16 %110 to i64
  %112 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 42, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !46
  %114 = add nsw i32 %113, 1
  store i32 %114, ptr %112, align 4, !tbaa !46
  %115 = getelementptr inbounds %struct.ShadeSample, ptr %0, i64 0, i32 2, i64 0, i32 107
  store i32 %113, ptr %115, align 4, !tbaa !415
  %116 = sitofp i32 %3 to float
  tail call void @shade_input_set_viewco(ptr noundef nonnull %8, float noundef %103, float noundef %102, float noundef %107, float noundef %106, float noundef %116) #17
  tail call void @shade_input_set_uv(ptr noundef nonnull %8) #17
  tail call void @shade_input_set_normals(ptr noundef nonnull %8) #17
  br label %117

117:                                              ; preds = %56, %18, %101
  %118 = phi ptr [ %8, %101 ], [ %8, %18 ], [ %58, %56 ]
  %119 = getelementptr inbounds %struct.ShadeInput, ptr %118, i64 0, i32 115
  %120 = load i16, ptr %119, align 4, !tbaa !420
  %121 = sext i16 %120 to i32
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %0, align 8, !tbaa !366
  br label %123

123:                                              ; preds = %117, %7
  ret void
}

; Function Attrs: optsize
declare void @shade_samples_do_AO(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @shade_input_set_shade_texco(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @shade_input_do_shade(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @renderspothalo(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @strand_shade_segment(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @shade_input_set_triangle(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @shade_input_copy_triangle(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @shade_input_set_viewco(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @shade_input_set_uv(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @shade_input_set_normals(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @shade_input_set_vertex_normals(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 !PGOFuncName !421 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = load float, ptr %0, align 4, !tbaa !49
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !49
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !49
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !49
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !49
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @strand_shade_unref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }
attributes #19 = { optsize }

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
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!40, !40, i64 0}
!50 = !{!51, !39, i64 0}
!51 = !{!"ListBase", !39, i64 0, !39, i64 8}
!52 = !{!53, !39, i64 0}
!53 = !{!"APixstrMain", !39, i64 0, !39, i64 8, !39, i64 16}
!54 = !{!53, !39, i64 16}
!55 = distinct !{!55, !48}
!56 = !{!35, !40, i64 72}
!57 = !{!35, !40, i64 80}
!58 = !{!35, !40, i64 76}
!59 = !{!35, !40, i64 84}
!60 = !{i32 0, i32 2}
!61 = !{!35, !39, i64 216}
!62 = !{!"zbuf.c:copy_v4_v4"}
!63 = !{!"zbuf.c:clipline"}
!64 = !{i16 0, i16 2}
!65 = !{i32 0, i32 43}
!66 = !{!35, !39, i64 40}
!67 = !{!35, !39, i64 48}
!68 = !{!35, !36, i64 8}
!69 = !{!35, !36, i64 16}
!70 = !{!35, !36, i64 12}
!71 = !{!35, !36, i64 20}
!72 = distinct !{!72, !48}
!73 = distinct !{!73, !48}
!74 = !{!"zbuf.c:zbuf_init_span"}
!75 = !{!"zbuf.c:zbuf_add_to_span"}
!76 = !{!35, !39, i64 32}
!77 = !{!35, !39, i64 24}
!78 = distinct !{!78, !48}
!79 = distinct !{!79, !48}
!80 = distinct !{!80, !48}
!81 = !{!"zbuf.c:copy_v3_v3"}
!82 = !{!83, !36, i64 1624}
!83 = !{!"Render", !39, i64 0, !39, i64 8, !37, i64 16, !36, i64 92, !84, i64 96, !84, i64 98, !84, i64 100, !84, i64 102, !37, i64 104, !39, i64 112, !39, i64 120, !51, i64 128, !36, i64 144, !36, i64 148, !36, i64 152, !85, i64 156, !86, i64 172, !40, i64 188, !40, i64 192, !40, i64 196, !36, i64 200, !36, i64 204, !36, i64 208, !36, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !40, i64 544, !40, i64 548, !39, i64 552, !37, i64 560, !37, i64 816, !39, i64 1072, !37, i64 1080, !39, i64 1088, !39, i64 1096, !87, i64 1104, !94, i64 5088, !39, i64 5616, !36, i64 5624, !36, i64 5628, !51, i64 5632, !39, i64 5648, !39, i64 5656, !39, i64 5664, !39, i64 5672, !40, i64 5680, !39, i64 5688, !51, i64 5696, !40, i64 5712, !40, i64 5716, !36, i64 5720, !36, i64 5724, !36, i64 5728, !36, i64 5732, !36, i64 5736, !39, i64 5744, !51, i64 5752, !51, i64 5768, !51, i64 5784, !39, i64 5800, !51, i64 5808, !36, i64 5824, !39, i64 5832, !39, i64 5840, !39, i64 5848, !39, i64 5856, !39, i64 5864, !51, i64 5872, !39, i64 5888, !51, i64 5896, !51, i64 5912, !39, i64 5928, !39, i64 5936, !39, i64 5944, !39, i64 5952, !39, i64 5960, !39, i64 5968, !39, i64 5976, !39, i64 5984, !39, i64 5992, !39, i64 6000, !39, i64 6008, !39, i64 6016, !39, i64 6024, !39, i64 6032, !39, i64 6040, !39, i64 6048, !39, i64 6056, !96, i64 6064, !39, i64 6216, !39, i64 6224, !39, i64 6232}
!84 = !{!"short", !37, i64 0}
!85 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!86 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!87 = !{!"RenderData", !88, i64 0, !39, i64 248, !39, i64 256, !91, i64 264, !92, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !40, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !84, i64 432, !84, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !84, i64 456, !84, i64 458, !84, i64 460, !84, i64 462, !84, i64 464, !84, i64 466, !36, i64 468, !84, i64 472, !84, i64 474, !84, i64 476, !84, i64 478, !84, i64 480, !84, i64 482, !36, i64 484, !36, i64 488, !84, i64 492, !84, i64 494, !36, i64 496, !36, i64 500, !84, i64 504, !84, i64 506, !84, i64 508, !84, i64 510, !84, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !84, i64 528, !84, i64 530, !84, i64 532, !84, i64 534, !84, i64 536, !84, i64 538, !84, i64 540, !84, i64 542, !86, i64 544, !86, i64 560, !85, i64 576, !51, i64 592, !84, i64 608, !84, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !36, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !84, i64 648, !84, i64 650, !84, i64 652, !84, i64 654, !84, i64 656, !84, i64 658, !40, i64 660, !40, i64 664, !84, i64 668, !84, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !36, i64 1704, !84, i64 1708, !84, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !84, i64 2524, !84, i64 2526, !40, i64 2528, !40, i64 2532, !84, i64 2536, !84, i64 2538, !40, i64 2540, !84, i64 2544, !84, i64 2546, !36, i64 2548, !84, i64 2552, !84, i64 2554, !84, i64 2556, !84, i64 2558, !40, i64 2560, !40, i64 2564, !39, i64 2568, !36, i64 2576, !40, i64 2580, !37, i64 2584, !93, i64 2616, !36, i64 3976, !36, i64 3980}
!88 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !84, i64 8, !84, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !89, i64 24, !90, i64 184}
!89 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !39, i64 144, !39, i64 152}
!90 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!91 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !84, i64 48, !84, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!92 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !40, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !39, i64 64}
!93 = !{!"BakeData", !88, i64 0, !37, i64 248, !84, i64 1272, !84, i64 1274, !84, i64 1276, !84, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!94 = !{!"World", !95, i64 0, !39, i64 120, !84, i64 128, !84, i64 130, !84, i64 132, !84, i64 134, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !84, i64 200, !84, i64 202, !84, i64 204, !84, i64 206, !84, i64 208, !84, i64 210, !84, i64 212, !84, i64 214, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !84, i64 264, !84, i64 266, !84, i64 268, !84, i64 270, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !84, i64 288, !84, i64 290, !84, i64 292, !84, i64 294, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !84, i64 324, !84, i64 326, !84, i64 328, !84, i64 330, !84, i64 332, !84, i64 334, !39, i64 336, !39, i64 344, !39, i64 352, !37, i64 360, !84, i64 504, !84, i64 506, !37, i64 508, !39, i64 512, !39, i64 520}
!95 = !{!"ID", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !37, i64 32, !84, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !39, i64 112}
!96 = !{!"RenderStats", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !84, i64 28, !84, i64 30, !84, i64 32, !84, i64 34, !84, i64 36, !84, i64 38, !37, i64 40, !97, i64 48, !97, i64 56, !39, i64 64, !39, i64 72, !37, i64 80, !40, i64 144, !40, i64 148}
!97 = !{!"double", !37, i64 0}
!98 = !{!83, !40, i64 228}
!99 = !{!83, !40, i64 224}
!100 = distinct !{!100, !48}
!101 = distinct !{!101, !48}
!102 = distinct !{!102, !48}
!103 = distinct !{!103, !48}
!104 = distinct !{!104, !48}
!105 = !{!35, !39, i64 208}
!106 = distinct !{!106, !48}
!107 = !{!"zbuf.c:clippyra"}
!108 = !{!"zbuf.c:makevertpyra"}
!109 = !{!110, !36, i64 92}
!110 = !{!"RenderLayer", !39, i64 0, !39, i64 8, !37, i64 16, !36, i64 92, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !36, i64 168, !36, i64 172, !39, i64 176, !51, i64 184}
!111 = !{!110, !36, i64 96}
!112 = !{!110, !36, i64 104}
!113 = !{!114, !84, i64 144}
!114 = !{!"RenderPart", !39, i64 0, !39, i64 8, !39, i64 16, !51, i64 24, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !85, i64 112, !36, i64 128, !36, i64 132, !36, i64 136, !84, i64 140, !84, i64 142, !84, i64 144, !84, i64 146, !39, i64 152}
!115 = !{!83, !36, i64 148}
!116 = !{!83, !36, i64 152}
!117 = !{!114, !36, i64 128}
!118 = !{!114, !36, i64 132}
!119 = !{!83, !40, i64 196}
!120 = !{!83, !84, i64 98}
!121 = !{!114, !36, i64 112}
!122 = !{!114, !36, i64 120}
!123 = !{!83, !84, i64 6094}
!124 = !{!114, !39, i64 64}
!125 = !{!35, !39, i64 88}
!126 = !{!114, !39, i64 56}
!127 = !{!35, !39, i64 120}
!128 = !{!35, !39, i64 112}
!129 = distinct !{!129, !48}
!130 = distinct !{!130, !48}
!131 = !{!132, !39, i64 16}
!132 = !{!"ObjectInstanceRen", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !36, i64 40, !36, i64 44, !36, i64 48, !37, i64 52, !37, i64 116, !37, i64 180, !84, i64 216, !37, i64 220, !37, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !36, i64 264, !39, i64 272, !36, i64 280}
!133 = !{!132, !36, i64 48}
!134 = !{!132, !84, i64 216}
!135 = !{!136, !36, i64 80}
!136 = !{!"ObjectRen", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !37, i64 56, !36, i64 80, !36, i64 84, !36, i64 88, !36, i64 92, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !36, i64 168, !36, i64 172, !36, i64 176, !37, i64 180, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272}
!137 = !{!136, !36, i64 84}
!138 = !{!136, !39, i64 120}
!139 = !{!140, !39, i64 0}
!140 = !{!"VlakTableNode", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !36, i64 32, !36, i64 36, !39, i64 40, !39, i64 48, !39, i64 56}
!141 = !{!142, !39, i64 48}
!142 = !{!"VlakRen", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !37, i64 32, !39, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !36, i64 60}
!143 = !{!144, !36, i64 396}
!144 = !{!"Material", !95, i64 0, !39, i64 120, !84, i64 128, !84, i64 130, !40, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !145, i64 224, !146, i64 312, !40, i64 328, !40, i64 332, !40, i64 336, !40, i64 340, !40, i64 344, !40, i64 348, !40, i64 352, !84, i64 356, !84, i64 358, !84, i64 360, !37, i64 362, !37, i64 363, !40, i64 364, !40, i64 368, !84, i64 372, !84, i64 374, !40, i64 376, !40, i64 380, !40, i64 384, !40, i64 388, !84, i64 392, !84, i64 394, !36, i64 396, !36, i64 400, !36, i64 404, !36, i64 408, !84, i64 412, !84, i64 414, !84, i64 416, !84, i64 418, !40, i64 420, !40, i64 424, !40, i64 428, !40, i64 432, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !40, i64 456, !37, i64 460, !40, i64 524, !40, i64 528, !40, i64 532, !36, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !84, i64 544, !84, i64 546, !84, i64 548, !37, i64 550, !37, i64 551, !84, i64 552, !84, i64 554, !40, i64 556, !40, i64 560, !37, i64 564, !40, i64 580, !40, i64 584, !84, i64 588, !84, i64 590, !39, i64 592, !39, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !84, i64 612, !84, i64 614, !40, i64 616, !40, i64 620, !37, i64 624, !39, i64 768, !39, i64 776, !39, i64 784, !39, i64 792, !40, i64 800, !40, i64 804, !40, i64 808, !40, i64 812, !40, i64 816, !84, i64 820, !84, i64 822, !37, i64 824, !37, i64 836, !40, i64 848, !40, i64 852, !40, i64 856, !40, i64 860, !40, i64 864, !40, i64 868, !40, i64 872, !84, i64 876, !84, i64 878, !36, i64 880, !84, i64 884, !84, i64 886, !37, i64 888, !84, i64 904, !84, i64 906, !84, i64 908, !84, i64 910, !84, i64 912, !37, i64 914, !39, i64 920, !51, i64 928}
!145 = !{!"VolumeSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !40, i64 52, !40, i64 56, !40, i64 60, !84, i64 64, !84, i64 66, !84, i64 68, !84, i64 70, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84}
!146 = !{!"GameSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!147 = !{!144, !84, i64 128}
!148 = distinct !{!148, !48, !149, !150}
!149 = !{!"llvm.loop.isvectorized", i32 1}
!150 = !{!"llvm.loop.unroll.runtime.disable"}
!151 = !{!142, !37, i64 57}
!152 = !{!142, !39, i64 0}
!153 = !{!142, !39, i64 8}
!154 = !{!142, !39, i64 16}
!155 = !{!142, !39, i64 24}
!156 = !{!157, !36, i64 40}
!157 = !{!"VertRen", !37, i64 0, !37, i64 12, !39, i64 24, !36, i64 32, !40, i64 36, !36, i64 40}
!158 = !{!142, !37, i64 58}
!159 = distinct !{!159, !48}
!160 = distinct !{!160, !48}
!161 = distinct !{!161, !48}
!162 = !{!35, !39, i64 128}
!163 = distinct !{!163, !48}
!164 = distinct !{!164, !48}
!165 = distinct !{!165, !48}
!166 = !{!"zbuf.c:zbuffer_part_bounds"}
!167 = !{!114, !36, i64 116}
!168 = !{!114, !36, i64 124}
!169 = !{!"zbuf.c:zbuffillGLinv4"}
!170 = distinct !{!170, !48}
!171 = distinct !{!171, !48}
!172 = !{!"zbuf.c:zbuffillGL4"}
!173 = distinct !{!173, !48}
!174 = distinct !{!174, !48}
!175 = !{!"zbuf.c:zbufline"}
!176 = distinct !{!176, !48}
!177 = distinct !{!177, !48}
!178 = !{!"zbuf.c:zbuf_project_cache_clear"}
!179 = !{!180, !36, i64 0}
!180 = !{!"ZbufProjectCache", !36, i64 0, !36, i64 4, !37, i64 8}
!181 = distinct !{!181, !48, !149, !150}
!182 = !{!"zbuf.c:zbuf_part_project"}
!183 = !{!180, !36, i64 4}
!184 = !{!"zbuf.c:zmask_rect"}
!185 = distinct !{!185, !48}
!186 = distinct !{!186, !48}
!187 = distinct !{!187, !48}
!188 = !{!189, !36, i64 44}
!189 = !{!"LampRen", !39, i64 0, !39, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !37, i64 28, !84, i64 40, !36, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !36, i64 84, !40, i64 88, !40, i64 92, !37, i64 96, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !84, i64 132, !40, i64 136, !40, i64 140, !39, i64 144, !84, i64 152, !84, i64 154, !40, i64 156, !84, i64 160, !84, i64 162, !84, i64 164, !84, i64 166, !84, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !84, i64 188, !84, i64 190, !84, i64 192, !84, i64 194, !84, i64 196, !84, i64 198, !84, i64 200, !37, i64 202, !37, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !39, i64 224, !39, i64 232, !39, i64 240, !37, i64 248, !40, i64 284, !37, i64 288, !40, i64 300, !37, i64 304, !37, i64 368, !37, i64 404, !40, i64 500, !39, i64 504, !37, i64 512, !37, i64 520, !36, i64 664, !36, i64 668}
!190 = !{!189, !36, i64 84}
!191 = !{!189, !84, i64 164}
!192 = !{!35, !39, i64 104}
!193 = !{!136, !39, i64 16}
!194 = !{!83, !39, i64 5888}
!195 = !{!144, !36, i64 404}
!196 = !{!83, !39, i64 6048}
!197 = !{!83, !39, i64 6056}
!198 = distinct !{!198, !48}
!199 = !{!136, !39, i64 144}
!200 = !{!201, !36, i64 36}
!201 = !{!"StrandBuffer", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !36, i64 32, !36, i64 36, !39, i64 40, !39, i64 48, !39, i64 56, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !37, i64 96, !36, i64 160, !36, i64 164}
!202 = !{!201, !39, i64 24}
!203 = !{!204, !36, i64 0}
!204 = !{!"StrandBound", !36, i64 0, !36, i64 4, !37, i64 8}
!205 = !{!204, !36, i64 4}
!206 = !{!207, !39, i64 48}
!207 = !{!"StrandSegment", !37, i64 0, !39, i64 32, !39, i64 40, !39, i64 48, !40, i64 56, !208, i64 60, !208, i64 252, !36, i64 444}
!208 = !{!"StrandPoint", !40, i64 0, !37, i64 4, !37, i64 16, !37, i64 28, !40, i64 40, !40, i64 44, !37, i64 48, !37, i64 60, !40, i64 72, !37, i64 76, !37, i64 88, !37, i64 100, !37, i64 116, !37, i64 132, !37, i64 144, !36, i64 156, !36, i64 160, !37, i64 164, !40, i64 180, !40, i64 184, !40, i64 188}
!209 = !{!210, !39, i64 8}
!210 = !{!"StrandRen", !39, i64 0, !39, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !37, i64 32}
!211 = !{!207, !39, i64 40}
!212 = !{!201, !40, i64 80}
!213 = !{!207, !40, i64 56}
!214 = !{!207, !39, i64 32}
!215 = !{!210, !39, i64 0}
!216 = !{!201, !39, i64 48}
!217 = !{!201, !36, i64 64}
!218 = !{!210, !36, i64 16}
!219 = distinct !{!219, !48}
!220 = distinct !{!220, !48}
!221 = distinct !{!221, !48}
!222 = distinct !{!222, !48}
!223 = distinct !{!223, !48}
!224 = !{!"zbuf.c:zbufline_onlyZ"}
!225 = distinct !{!225, !48}
!226 = distinct !{!226, !48}
!227 = !{!"zbuf.c:zbuffillGL_onlyZ"}
!228 = distinct !{!228, !48}
!229 = distinct !{!229, !48}
!230 = !{!"zbuf.c:zbuf_shadow_project"}
!231 = !{!83, !39, i64 5864}
!232 = !{!35, !39, i64 192}
!233 = !{!35, !39, i64 200}
!234 = !{!114, !39, i64 40}
!235 = !{!114, !39, i64 48}
!236 = !{!114, !39, i64 96}
!237 = !{!114, !39, i64 80}
!238 = !{!114, !39, i64 88}
!239 = distinct !{!239, !48}
!240 = distinct !{!240, !48}
!241 = !{!"zbuf.c:zbuffill_sss"}
!242 = distinct !{!242, !48}
!243 = distinct !{!243, !48}
!244 = !{!37, !37, i64 0}
!245 = distinct !{!245, !48}
!246 = distinct !{!246, !48}
!247 = distinct !{!247, !48}
!248 = distinct !{!248, !48, !149, !150}
!249 = distinct !{!249, !48}
!250 = distinct !{!250, !48}
!251 = distinct !{!251, !48}
!252 = distinct !{!252, !48, !149, !150}
!253 = distinct !{!253, !48}
!254 = distinct !{!254, !48}
!255 = distinct !{!255, !48}
!256 = distinct !{!256, !48}
!257 = !{!258, !84, i64 6}
!258 = !{!"NodeBlurData", !84, i64 0, !84, i64 2, !84, i64 4, !84, i64 6, !84, i64 8, !84, i64 10, !84, i64 12, !84, i64 14, !40, i64 16, !40, i64 20, !40, i64 24, !84, i64 28, !37, i64 30, !37, i64 31, !36, i64 32, !36, i64 36}
!259 = !{!258, !84, i64 4}
!260 = distinct !{!260, !48}
!261 = !{!258, !84, i64 8}
!262 = distinct !{!262, !48}
!263 = distinct !{!263, !48}
!264 = distinct !{!264, !48}
!265 = distinct !{!265, !48}
!266 = distinct !{!266, !48}
!267 = distinct !{!267, !48}
!268 = distinct !{!268, !48}
!269 = !{!258, !40, i64 16}
!270 = distinct !{!270, !48}
!271 = !{!272, !39, i64 0}
!272 = !{!"DrawBufPixel", !39, i64 0, !40, i64 8}
!273 = distinct !{!273, !48}
!274 = !{!258, !84, i64 14}
!275 = !{!272, !40, i64 8}
!276 = distinct !{!276, !48}
!277 = distinct !{!277, !48}
!278 = distinct !{!278, !48}
!279 = distinct !{!279, !48}
!280 = distinct !{!280, !48}
!281 = distinct !{!281, !48}
!282 = !{!"zbuf.c:set_quad_bezier_ipo"}
!283 = !{!"zbuf.c:quad_bezier_2d"}
!284 = !{!"zbuf.c:zbuf_fill_in_rgba"}
!285 = !{i64 0, i64 8, !42, i64 8, i64 4, !49}
!286 = distinct !{!286, !48}
!287 = distinct !{!287, !48}
!288 = !{!"zbuf.c:zbuffer_abuf"}
!289 = !{!35, !39, i64 96}
!290 = !{!35, !39, i64 136}
!291 = !{!35, !39, i64 160}
!292 = !{!35, !36, i64 176}
!293 = distinct !{!293, !48}
!294 = !{!144, !40, i64 212}
!295 = !{!35, !36, i64 168}
!296 = distinct !{!296, !48}
!297 = distinct !{!297, !48}
!298 = distinct !{!298, !48}
!299 = distinct !{!299, !48}
!300 = !{!114, !39, i64 16}
!301 = !{!302, !37, i64 2080}
!302 = !{!"Global", !39, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !51, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !84, i64 2084, !84, i64 2086, !84, i64 2088, !37, i64 2090, !84, i64 2092, !36, i64 2096, !36, i64 2100, !37, i64 2104, !36, i64 2108, !36, i64 2112, !37, i64 2116}
!303 = !{!83, !36, i64 5732}
!304 = !{!110, !36, i64 108}
!305 = !{!114, !39, i64 72}
!306 = !{!114, !39, i64 24}
!307 = !{!110, !39, i64 144}
!308 = !{!110, !39, i64 136}
!309 = !{!114, !84, i64 140}
!310 = !{!311, !36, i64 104}
!311 = !{!"RenderResult", !39, i64 0, !39, i64 8, !36, i64 16, !36, i64 20, !84, i64 24, !84, i64 26, !39, i64 32, !39, i64 40, !39, i64 48, !85, i64 56, !36, i64 72, !36, i64 76, !51, i64 80, !85, i64 96, !39, i64 112, !36, i64 120, !36, i64 124, !36, i64 128, !39, i64 136}
!312 = !{!311, !36, i64 108}
!313 = !{!311, !39, i64 112}
!314 = !{!315, !36, i64 0}
!315 = !{!"ZTranspRow", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !40, i64 20, !40, i64 24}
!316 = !{!315, !36, i64 4}
!317 = !{!315, !36, i64 8}
!318 = !{!84, !84, i64 0}
!319 = !{!315, !36, i64 12}
!320 = !{!315, !36, i64 16}
!321 = distinct !{!321, !48}
!322 = !{!323, !39, i64 64}
!323 = !{!"APixstr", !37, i64 0, !37, i64 8, !37, i64 24, !37, i64 40, !37, i64 56, !39, i64 64}
!324 = distinct !{!324, !48}
!325 = distinct !{!325, !48, !149, !150}
!326 = !{!315, !40, i64 20}
!327 = !{!315, !40, i64 24}
!328 = distinct !{!328, !48}
!329 = !{!330, !39, i64 104}
!330 = !{!"APixstrand", !37, i64 0, !37, i64 8, !37, i64 24, !37, i64 40, !37, i64 56, !37, i64 72, !37, i64 88, !39, i64 104}
!331 = distinct !{!331, !48}
!332 = !{i64 0, i64 4, !46, i64 4, i64 4, !46, i64 8, i64 4, !46, i64 12, i64 4, !46, i64 16, i64 4, !46, i64 20, i64 4, !49, i64 24, i64 4, !49}
!333 = !{!83, !39, i64 5800}
!334 = distinct !{!334, !48}
!335 = distinct !{!335, !48}
!336 = !{!337, !40, i64 40}
!337 = !{!"ShadeResult", !37, i64 0, !37, i64 16, !40, i64 32, !40, i64 36, !40, i64 40, !37, i64 44, !37, i64 56, !37, i64 68, !37, i64 80, !37, i64 92, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 196}
!338 = distinct !{!338, !48}
!339 = distinct !{!339, !48}
!340 = distinct !{!340, !48}
!341 = distinct !{!341, !48}
!342 = !{!311, !36, i64 16}
!343 = distinct !{!343, !48}
!344 = distinct !{!344, !48}
!345 = distinct !{!345, !48}
!346 = !{!"zbuf.c:zbuffer_abuf_render"}
!347 = !{!"zbuf.c:reset_sky_speedvectors"}
!348 = distinct !{!348, !48}
!349 = !{!"zbuf.c:add_transp_speed"}
!350 = !{!351, !36, i64 16}
!351 = !{!"RenderPass", !39, i64 0, !39, i64 8, !36, i64 16, !36, i64 20, !37, i64 24, !37, i64 88, !39, i64 96, !36, i64 104, !36, i64 108, !36, i64 112}
!352 = distinct !{!352, !48}
!353 = !{!351, !39, i64 96}
!354 = !{!355, !355, i64 0}
!355 = !{!"long", !37, i64 0}
!356 = !{!"zbuf.c:vergzvlak"}
!357 = !{!"zbuf.c:add_transp_obindex"}
!358 = distinct !{!358, !48}
!359 = !{!360, !84, i64 1124}
!360 = !{!"Object", !95, i64 0, !39, i64 120, !39, i64 128, !84, i64 136, !84, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !39, i64 304, !361, i64 312, !39, i64 360, !51, i64 368, !51, i64 384, !51, i64 400, !51, i64 416, !36, i64 432, !36, i64 436, !39, i64 440, !39, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !40, i64 616, !40, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !84, i64 948, !84, i64 950, !84, i64 952, !84, i64 954, !84, i64 956, !84, i64 958, !84, i64 960, !84, i64 962, !84, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !40, i64 988, !40, i64 992, !40, i64 996, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !40, i64 1028, !40, i64 1032, !84, i64 1036, !84, i64 1038, !84, i64 1040, !37, i64 1042, !37, i64 1043, !84, i64 1044, !37, i64 1046, !37, i64 1047, !40, i64 1048, !40, i64 1052, !51, i64 1056, !51, i64 1072, !51, i64 1088, !51, i64 1104, !40, i64 1120, !84, i64 1124, !84, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !39, i64 1152, !37, i64 1160, !37, i64 1161, !84, i64 1162, !37, i64 1164, !51, i64 1176, !51, i64 1192, !51, i64 1208, !51, i64 1224, !39, i64 1240, !39, i64 1248, !39, i64 1256, !37, i64 1264, !37, i64 1265, !84, i64 1266, !40, i64 1268, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !355, i64 1304, !355, i64 1312, !36, i64 1320, !36, i64 1324, !51, i64 1328, !51, i64 1344, !39, i64 1360, !39, i64 1368, !39, i64 1376, !37, i64 1384, !39, i64 1392, !51, i64 1400, !39, i64 1416}
!361 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !84, i64 16, !84, i64 18, !84, i64 20, !84, i64 22, !84, i64 24, !84, i64 26, !84, i64 28, !84, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!362 = !{!"zbuf.c:add_transp_material_index"}
!363 = distinct !{!363, !48}
!364 = !{!144, !84, i64 886}
!365 = !{!"zbuf.c:shade_tra_samples"}
!366 = !{!367, !36, i64 0}
!367 = !{!"ShadeSample", !36, i64 0, !37, i64 8, !37, i64 136, !37, i64 23688}
!368 = !{!369, !36, i64 1448}
!369 = !{!"ShadeInput", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !36, i64 40, !37, i64 44, !84, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !84, i64 88, !84, i64 90, !84, i64 92, !84, i64 94, !84, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !36, i64 160, !36, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !36, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !40, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !40, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !36, i64 1096, !36, i64 1100, !36, i64 1104, !36, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !40, i64 1256, !40, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !40, i64 1336, !40, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !36, i64 1380, !36, i64 1384, !36, i64 1388, !37, i64 1392, !36, i64 1404, !36, i64 1408, !36, i64 1412, !37, i64 1416, !40, i64 1428, !37, i64 1432, !37, i64 1433, !84, i64 1434, !84, i64 1436, !84, i64 1438, !36, i64 1440, !36, i64 1444, !36, i64 1448, !36, i64 1452, !39, i64 1456, !39, i64 1464}
!370 = !{!83, !84, i64 96}
!371 = !{!369, !36, i64 1444}
!372 = distinct !{!372, !48}
!373 = distinct !{!373, !48}
!374 = !{!"zbuf.c:addtosamp_shr"}
!375 = !{!369, !36, i64 1388}
!376 = !{!337, !40, i64 36}
!377 = distinct !{!377, !48}
!378 = distinct !{!378, !48}
!379 = !{!"zbuf.c:unref_strand_samples"}
!380 = distinct !{!380, !48}
!381 = !{!"zbuf.c:add_transp_passes"}
!382 = distinct !{!382, !48}
!383 = !{!"zbuf.c:merge_transp_passes"}
!384 = distinct !{!384, !48}
!385 = distinct !{!385, !48}
!386 = distinct !{!386, !48}
!387 = !{!"zbuf.c:cliptestf"}
!388 = !{!"zbuf.c:min_ff"}
!389 = !{!"zbuf.c:zbuffillAc4"}
!390 = distinct !{!390, !48}
!391 = distinct !{!391, !48}
!392 = distinct !{!392, !48}
!393 = !{!"zbuf.c:zbuflineAc"}
!394 = distinct !{!394, !48}
!395 = distinct !{!395, !48}
!396 = distinct !{!396, !48}
!397 = distinct !{!397, !48}
!398 = !{!"zbuf.c:copyto_abufz"}
!399 = !{!400, !84, i64 24}
!400 = !{!"PixStr", !39, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !84, i64 24, !84, i64 26}
!401 = !{!400, !36, i64 16}
!402 = !{!400, !36, i64 20}
!403 = !{!400, !39, i64 0}
!404 = distinct !{!404, !48}
!405 = distinct !{!405, !48}
!406 = distinct !{!406, !48}
!407 = !{!"zbuf.c:addpsA"}
!408 = !{!35, !36, i64 180}
!409 = !{!35, !39, i64 144}
!410 = !{!"zbuf.c:addpsmainA"}
!411 = !{!"zbuf.c:shade_strand_samples"}
!412 = !{!"zbuf.c:shade_tra_samples_fill"}
!413 = !{!369, !39, i64 8}
!414 = !{!369, !84, i64 1434}
!415 = !{!369, !36, i64 1404}
!416 = distinct !{!416, !48}
!417 = !{!83, !39, i64 552}
!418 = !{!419, !39, i64 464}
!419 = !{!"SampleTables", !37, i64 0, !37, i64 64, !37, i64 136, !37, i64 208, !39, i64 464}
!420 = !{!369, !84, i64 1436}
!421 = !{!"zbuf.c:madd_v3_v3fl"}
