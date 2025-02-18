; ModuleID = 'blender/source/blender/render/intern/source/shadbuf.c'
source_filename = "blender/source/blender/render/intern/source/shadbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
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
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.LampRen = type { ptr, ptr, float, float, float, [3 x float], i16, i32, float, float, float, float, float, float, float, float, float, i32, float, float, [3 x float], float, float, float, float, float, float, i16, float, float, ptr, i16, i16, float, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, [1 x i16], [1 x i16], float, float, float, float, ptr, ptr, ptr, [3 x [3 x float]], float, [3 x float], float, [4 x [4 x float]], [3 x [3 x float]], [8 x [3 x float]], float, ptr, [1 x ptr], [18 x ptr], i32, i32 }
%struct.ShadBuf = type { i16, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], ptr, ptr, float, float, float, float, float, [3 x i32], i32, i32, %struct.ListBase, [1 x ptr] }
%struct.ObjectRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [2 x [3 x float]], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], ptr, ptr, ptr, ptr }
%struct.ObjectInstanceRen = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x [4 x float]], [4 x [4 x float]], [3 x [3 x float]], i16, [3 x float], [2 x float], ptr, ptr, ptr, i32, ptr, i32 }
%struct.VlakTableNode = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.VlakRen = type { ptr, ptr, ptr, ptr, [3 x float], ptr, i8, i8, i8, i32 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.VertRen = type { [3 x float], [3 x float], ptr, i32, float, i32 }
%struct.ShadSampleBuf = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.APixstr = type { [4 x i16], [4 x i32], [4 x i32], [4 x i32], [4 x i16], ptr }
%struct.APixstrand = type { [4 x i16], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x float], [4 x float], ptr }
%struct.DeepSample = type { i32, float }
%struct.StrandRen = type { ptr, ptr, i32, i32, i32, i32, [3 x float] }
%struct.StrandBuffer = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, float, float, float, float, [4 x [4 x float]], i32, i32 }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.ISBData = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.ISBShadfacA = type { ptr, i32, i32, float }
%struct.ISBBranch = type { ptr, ptr, [2 x float], %struct.Boxf, i16, i16, i16, i16, ptr }
%struct.Boxf = type { float, float, float, float, float, float }
%struct.RenderPart = type { ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i32, i32, i32, i16, i16, i16, i16, ptr }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.ISBSampleA = type { [3 x float], ptr, i32, i32, ptr }
%struct.PixStr = type { ptr, i32, i32, i32, i32, i16, i16 }
%struct.ISBSample = type { [3 x float], ptr, i32, i32 }
%struct.ZSpan = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, float, i32, i32, i32, float, ptr, ptr, ptr, ptr }
%struct.BSPFace = type { %struct.Boxf, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, float, float, float, [3 x float], [3 x float], [3 x float] }

@G = external local_unnamed_addr global %struct.Global, align 8
@g_break = internal global i32 0, align 4
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@R = external global %struct.Render, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"isb data\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"autoclipflag\00", align 1
@give_jitter_tab.tab = internal unnamed_addr constant [17 x i32] [i32 1, i32 4, i32 9, i32 16, i32 25, i32 36, i32 49, i32 64, i32 81, i32 100, i32 121, i32 144, i32 169, i32 196, i32 225, i32 256, i32 0], align 16
@give_jitter_tab.jit = internal global [1496 x [2 x float]] zeroinitializer, align 16
@give_jitter_tab.ctab = internal unnamed_addr global [17 x i8] zeroinitializer, align 16
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"weight tab lamp\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"APixbuf\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"APixbufstrand\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"shad sample buf\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"deeptotbuf\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"deepbuf\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"deepsample\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"cdeepsample\00", align 1
@MEM_mapallocN = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"makeshadbuf\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"initshadbuf2\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"initshadbuf3\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"makeshadbuf2\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"tile1\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Tile2\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Tile3\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"isb arena\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"isb alpha samplebuf\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"isb shadfacs\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"xcos\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"ycos\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"isb samplebuf\00", align 1
@str.25 = private unnamed_addr constant [21 x i8] c"error in filling bsp\00", align 1
@str.26 = private unnamed_addr constant [20 x i8] c"error in bsp branch\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @makeshadowbuf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca [16 x ptr], align 16
  %5 = alloca [16 x ptr], align 16
  %6 = alloca [16 x i32], align 16
  %7 = alloca %struct.ListBase, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [2 x float], align 8
  %12 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 57
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  store i64 0, ptr %11, align 8
  %14 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 37
  %15 = load i16, ptr %14, align 2, !tbaa !42
  %16 = and i16 %15, 3
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %262, label %18

18:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #14
  %19 = getelementptr inbounds %struct.ShadBuf, ptr %13, i64 0, i32 4
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %19) #14
  %20 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 7
  %21 = load i32, ptr %20, align 4, !tbaa !43
  %22 = and i32 %21, 32772
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 17
  %26 = load i32, ptr %25, align 4, !tbaa !44
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi i32 [ %26, %24 ], [ -1, %18 ]
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 68
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %27, %32
  %33 = phi ptr [ %38, %32 ], [ %30, %27 ]
  %34 = phi i32 [ %37, %32 ], [ 0, %27 ]
  %35 = getelementptr inbounds %struct.ObjectRen, ptr %33, i64 0, i32 10
  %36 = load i32, ptr %35, align 8, !tbaa !46
  %37 = call i32 @llvm.smax.i32(i32 %34, i32 %36)
  %38 = load ptr, ptr %33, align 8, !tbaa !45
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %32, !llvm.loop !48

40:                                               ; preds = %32, %27
  %41 = phi i32 [ 0, %27 ], [ %37, %32 ]
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %43 = zext nneg i32 %41 to i64
  %44 = call ptr %42(i64 noundef %43, ptr noundef nonnull @.str.1) #14
  %45 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 70
  %46 = load ptr, ptr %45, align 8, !tbaa !45
  %47 = icmp eq ptr %46, null
  br i1 %47, label %221, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds float, ptr %8, i64 1
  %50 = getelementptr inbounds float, ptr %8, i64 2
  %51 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 18
  br label %58

52:                                               ; preds = %214, %85
  %53 = phi ptr [ %65, %85 ], [ %173, %214 ]
  %54 = phi float [ %63, %85 ], [ %215, %214 ]
  %55 = phi float [ %62, %85 ], [ %216, %214 ]
  %56 = load ptr, ptr %59, align 8, !tbaa !45
  %57 = icmp eq ptr %56, null
  br i1 %57, label %221, label %58, !llvm.loop !51

58:                                               ; preds = %48, %52
  %59 = phi ptr [ %46, %48 ], [ %56, %52 ]
  %60 = phi ptr [ null, %48 ], [ %88, %52 ]
  %61 = phi i32 [ 1, %48 ], [ %87, %52 ]
  %62 = phi float [ 0xC6293E5940000000, %48 ], [ %55, %52 ]
  %63 = phi float [ 0x46293E5940000000, %48 ], [ %54, %52 ]
  %64 = phi ptr [ null, %48 ], [ %86, %52 ]
  %65 = phi ptr [ null, %48 ], [ %53, %52 ]
  %66 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %59, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !52
  %68 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %59, i64 0, i32 11
  %69 = load i16, ptr %68, align 8, !tbaa !54
  %70 = and i16 %69, 3
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %59, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %73) #14
  br label %75

74:                                               ; preds = %58
  call void @copy_m4_m4(ptr noundef nonnull %10, ptr noundef nonnull %9) #14
  br label %75

75:                                               ; preds = %74, %72
  %76 = getelementptr inbounds %struct.ObjectRen, ptr %67, i64 0, i32 10
  %77 = load i32, ptr %76, align 8, !tbaa !46
  %78 = sext i32 %77 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %44, i8 0, i64 %78, i1 false)
  %79 = getelementptr inbounds %struct.ObjectRen, ptr %67, i64 0, i32 11
  %80 = load i32, ptr %79, align 4, !tbaa !55
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.ObjectRen, ptr %67, i64 0, i32 19
  %84 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %59, i64 0, i32 7
  br label %91

85:                                               ; preds = %156, %75
  %86 = phi ptr [ %64, %75 ], [ %123, %156 ]
  %87 = phi i32 [ %61, %75 ], [ %124, %156 ]
  %88 = phi ptr [ %60, %75 ], [ %107, %156 ]
  %89 = load i32, ptr %76, align 8, !tbaa !46
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %160, label %52

91:                                               ; preds = %82, %156
  %92 = phi ptr [ %60, %82 ], [ %107, %156 ]
  %93 = phi i32 [ %61, %82 ], [ %124, %156 ]
  %94 = phi i32 [ 0, %82 ], [ %157, %156 ]
  %95 = phi ptr [ %64, %82 ], [ %123, %156 ]
  %96 = and i32 %94, 255
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load ptr, ptr %83, align 8, !tbaa !56
  %100 = lshr exact i32 %94, 8
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds %struct.VlakTableNode, ptr %99, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !57
  br label %106

104:                                              ; preds = %91
  %105 = getelementptr inbounds %struct.VlakRen, ptr %92, i64 1
  br label %106

106:                                              ; preds = %104, %98
  %107 = phi ptr [ %103, %98 ], [ %105, %104 ]
  %108 = getelementptr inbounds %struct.VlakRen, ptr %107, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !59
  %110 = icmp eq ptr %109, %95
  br i1 %110, label %122, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.Material, ptr %109, i64 0, i32 53
  %113 = load i32, ptr %112, align 4, !tbaa !61
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.Material, ptr %109, i64 0, i32 51
  %118 = load i32, ptr %117, align 4, !tbaa !67
  %119 = and i32 %118, 33554432
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116, %111
  br label %122

122:                                              ; preds = %121, %116, %106
  %123 = phi ptr [ %109, %121 ], [ %109, %116 ], [ %95, %106 ]
  %124 = phi i32 [ 0, %121 ], [ 1, %116 ], [ %93, %106 ]
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %156, label %126

126:                                              ; preds = %122
  %127 = load i32, ptr %84, align 8, !tbaa !68
  %128 = and i32 %127, %28
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %156, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %107, align 8, !tbaa !69
  %132 = getelementptr inbounds %struct.VertRen, ptr %131, i64 0, i32 5
  %133 = load i32, ptr %132, align 8, !tbaa !70
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, ptr %44, i64 %134
  store i8 1, ptr %135, align 1, !tbaa !72
  %136 = getelementptr inbounds %struct.VlakRen, ptr %107, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !73
  %138 = getelementptr inbounds %struct.VertRen, ptr %137, i64 0, i32 5
  %139 = load i32, ptr %138, align 8, !tbaa !70
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, ptr %44, i64 %140
  store i8 1, ptr %141, align 1, !tbaa !72
  %142 = getelementptr inbounds %struct.VlakRen, ptr %107, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !74
  %144 = getelementptr inbounds %struct.VertRen, ptr %143, i64 0, i32 5
  %145 = load i32, ptr %144, align 8, !tbaa !70
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, ptr %44, i64 %146
  store i8 1, ptr %147, align 1, !tbaa !72
  %148 = getelementptr inbounds %struct.VlakRen, ptr %107, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !75
  %150 = icmp eq ptr %149, null
  br i1 %150, label %156, label %151

151:                                              ; preds = %130
  %152 = getelementptr inbounds %struct.VertRen, ptr %149, i64 0, i32 5
  %153 = load i32, ptr %152, align 8, !tbaa !70
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, ptr %44, i64 %154
  store i8 1, ptr %155, align 1, !tbaa !72
  br label %156

156:                                              ; preds = %151, %130, %126, %122
  %157 = add nuw nsw i32 %94, 1
  %158 = load i32, ptr %79, align 4, !tbaa !55
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %91, label %85, !llvm.loop !76

160:                                              ; preds = %85, %214
  %161 = phi i64 [ %217, %214 ], [ 0, %85 ]
  %162 = phi float [ %216, %214 ], [ %62, %85 ]
  %163 = phi float [ %215, %214 ], [ %63, %85 ]
  %164 = phi ptr [ %173, %214 ], [ %65, %85 ]
  %165 = and i64 %161, 255
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  %168 = trunc i64 %161 to i32
  %169 = call ptr @RE_findOrAddVert(ptr noundef %67, i32 noundef %168) #14
  br label %172

170:                                              ; preds = %160
  %171 = getelementptr inbounds %struct.VertRen, ptr %164, i64 1
  br label %172

172:                                              ; preds = %170, %167
  %173 = phi ptr [ %169, %167 ], [ %171, %170 ]
  %174 = getelementptr inbounds i8, ptr %44, i64 %161
  %175 = load i8, ptr %174, align 1, !tbaa !72
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %214, label %177

177:                                              ; preds = %172
  %178 = load float, ptr %173, align 4, !tbaa !77
  store float %178, ptr %8, align 4, !tbaa !77
  %179 = getelementptr inbounds float, ptr %173, i64 1
  %180 = load float, ptr %179, align 4, !tbaa !77
  store float %180, ptr %49, align 4, !tbaa !77
  %181 = getelementptr inbounds float, ptr %173, i64 2
  %182 = load float, ptr %181, align 4, !tbaa !77
  store float %182, ptr %50, align 4, !tbaa !77
  call void @mul_m4_v3(ptr noundef nonnull %10, ptr noundef nonnull %8) #14
  %183 = load float, ptr %50, align 4, !tbaa !77
  %184 = fcmp olt float %183, 0.000000e+00
  br i1 %184, label %185, label %214

185:                                              ; preds = %177
  %186 = fneg float %183
  %187 = fmul float %183, 0x3FF3333340000000
  store float %187, ptr %50, align 4, !tbaa !77
  %188 = load float, ptr %8, align 4, !tbaa !77
  %189 = load float, ptr %49, align 4, !tbaa !77
  %190 = fmul float %189, %189
  %191 = call float @llvm.fmuladd.f32(float %188, float %188, float %190)
  %192 = call float @llvm.fmuladd.f32(float %187, float %187, float %191)
  %193 = fcmp ogt float %192, 0x38AA95A5C0000000
  br i1 %193, label %194, label %203

194:                                              ; preds = %185
  %195 = call float @sqrtf(float noundef %192) #14
  %196 = fdiv float 1.000000e+00, %195
  %197 = load float, ptr %8, align 4, !tbaa !77
  %198 = fmul float %197, %196
  store float %198, ptr %8, align 4, !tbaa !77
  %199 = load float, ptr %49, align 4, !tbaa !77
  %200 = fmul float %196, %199
  store float %200, ptr %49, align 4, !tbaa !77
  %201 = load float, ptr %50, align 4, !tbaa !77
  %202 = fmul float %196, %201
  br label %204

203:                                              ; preds = %185
  store float 0.000000e+00, ptr %8, align 4, !tbaa !77
  store float 0.000000e+00, ptr %49, align 4, !tbaa !77
  br label %204

204:                                              ; preds = %203, %194
  %205 = phi float [ 0.000000e+00, %203 ], [ %202, %194 ]
  store float %205, ptr %50, align 4, !tbaa !77
  %206 = fneg float %205
  %207 = load float, ptr %51, align 8, !tbaa !78
  %208 = fcmp ugt float %207, %206
  br i1 %208, label %214, label %209

209:                                              ; preds = %204
  %210 = fcmp ogt float %163, %186
  %211 = select i1 %210, float %186, float %163
  %212 = fcmp olt float %162, %186
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  br label %214

214:                                              ; preds = %213, %209, %204, %177, %172
  %215 = phi float [ %163, %177 ], [ %163, %172 ], [ %211, %213 ], [ %211, %209 ], [ %163, %204 ]
  %216 = phi float [ %162, %177 ], [ %162, %172 ], [ %186, %213 ], [ %162, %209 ], [ %162, %204 ]
  %217 = add nuw nsw i64 %161, 1
  %218 = load i32, ptr %76, align 8, !tbaa !46
  %219 = sext i32 %218 to i64
  %220 = icmp slt i64 %217, %219
  br i1 %220, label %160, label %52, !llvm.loop !79

221:                                              ; preds = %52, %40
  %222 = phi float [ 0x46293E5940000000, %40 ], [ %54, %52 ]
  %223 = phi float [ 0xC6293E5940000000, %40 ], [ %55, %52 ]
  %224 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %224(ptr noundef %44) #14
  %225 = fcmp olt float %222, %223
  br i1 %225, label %226, label %261

226:                                              ; preds = %221
  %227 = fsub float %223, %222
  %228 = load i16, ptr %14, align 2, !tbaa !42
  %229 = and i16 %228, 1
  %230 = icmp eq i16 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %226
  %232 = fneg float %227
  %233 = call float @llvm.fmuladd.f32(float %232, float 0x3F947AE140000000, float %222)
  %234 = load ptr, ptr %12, align 8, !tbaa !34
  %235 = getelementptr inbounds %struct.ShadBuf, ptr %234, i64 0, i32 8
  store float %233, ptr %235, align 8, !tbaa !80
  br label %236

236:                                              ; preds = %231, %226
  %237 = and i16 %228, 2
  %238 = icmp eq i16 %237, 0
  br i1 %238, label %243, label %239

239:                                              ; preds = %236
  %240 = call float @llvm.fmuladd.f32(float %227, float 0x3FB99999A0000000, float %223)
  %241 = load ptr, ptr %12, align 8, !tbaa !34
  %242 = getelementptr inbounds %struct.ShadBuf, ptr %241, i64 0, i32 9
  store float %240, ptr %242, align 4, !tbaa !82
  br label %243

243:                                              ; preds = %239, %236
  %244 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 40
  %245 = load float, ptr %244, align 8, !tbaa !83
  %246 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 39
  %247 = load float, ptr %246, align 4, !tbaa !84
  %248 = fsub float %245, %247
  %249 = load ptr, ptr %12, align 8, !tbaa !34
  %250 = getelementptr inbounds %struct.ShadBuf, ptr %249, i64 0, i32 9
  %251 = load float, ptr %250, align 4, !tbaa !82
  %252 = getelementptr inbounds %struct.ShadBuf, ptr %249, i64 0, i32 8
  %253 = load float, ptr %252, align 8, !tbaa !80
  %254 = fsub float %251, %253
  %255 = fdiv float %248, %254
  %256 = getelementptr inbounds %struct.ShadBuf, ptr %249, i64 0, i32 15
  %257 = load i32, ptr %256, align 4, !tbaa !85
  %258 = sitofp i32 %257 to float
  %259 = fmul float %255, %258
  %260 = fptosi float %259 to i32
  store i32 %260, ptr %256, align 4, !tbaa !85
  br label %261

261:                                              ; preds = %221, %243
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  br label %262

262:                                              ; preds = %261, %2
  %263 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 36
  %264 = load i16, ptr %263, align 4, !tbaa !86
  %265 = icmp eq i16 %264, 1
  br i1 %265, label %266, label %268

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.ShadBuf, ptr %13, i64 0, i32 14
  store i32 1024, ptr %267, align 8, !tbaa !87
  br label %268

268:                                              ; preds = %266, %262
  %269 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 18
  %270 = load float, ptr %269, align 8, !tbaa !78
  %271 = fcmp ugt float %270, -1.000000e+00
  br i1 %271, label %272, label %276

272:                                              ; preds = %268
  %273 = fcmp ult float %270, 1.000000e+00
  br i1 %273, label %274, label %276

274:                                              ; preds = %272
  %275 = call float @acosf(float noundef %270) #14
  br label %276

276:                                              ; preds = %268, %272, %274
  %277 = phi float [ %275, %274 ], [ 0x400921FB60000000, %268 ], [ 0.000000e+00, %272 ]
  %278 = getelementptr inbounds %struct.ShadBuf, ptr %13, i64 0, i32 14
  %279 = load i32, ptr %278, align 8, !tbaa !87
  %280 = sitofp i32 %279 to float
  %281 = fmul float %280, 5.000000e-01
  %282 = call float @cosf(float noundef %277) #14
  %283 = fmul float %282, %281
  %284 = call float @sinf(float noundef %277) #14
  %285 = fdiv float %283, %284
  %286 = getelementptr inbounds %struct.ShadBuf, ptr %13, i64 0, i32 8
  %287 = load float, ptr %286, align 8, !tbaa !80
  %288 = fdiv float %287, %285
  %289 = getelementptr inbounds %struct.ShadBuf, ptr %13, i64 0, i32 10
  store float %288, ptr %289, align 8, !tbaa !88
  %290 = load i32, ptr %278, align 8, !tbaa !87
  %291 = sitofp i32 %290 to float
  %292 = fmul float %291, 5.000000e-01
  %293 = fmul float %288, %292
  %294 = getelementptr inbounds %struct.ShadBuf, ptr %13, i64 0, i32 5
  %295 = fneg float %293
  %296 = getelementptr inbounds %struct.ShadBuf, ptr %13, i64 0, i32 9
  %297 = load float, ptr %296, align 4, !tbaa !82
  call void @perspective_m4(ptr noundef nonnull %294, float noundef %295, float noundef %293, float noundef %295, float noundef %293, float noundef %287, float noundef %297) #14
  %298 = getelementptr inbounds %struct.ShadBuf, ptr %13, i64 0, i32 3
  %299 = getelementptr inbounds %struct.ShadBuf, ptr %13, i64 0, i32 4
  call void @mul_m4_m4m4(ptr noundef nonnull %298, ptr noundef nonnull %294, ptr noundef nonnull %299) #14
  %300 = load i16, ptr %263, align 4, !tbaa !86
  switch i16 %300, label %1234 [
    i16 0, label %301
    i16 2, label %301
    i16 3, label %301
  ]

301:                                              ; preds = %276, %276, %276
  %302 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 34
  %303 = load i16, ptr %302, align 8, !tbaa !89
  %304 = getelementptr inbounds %struct.ShadBuf, ptr %13, i64 0, i32 2
  store i16 %303, ptr %304, align 4, !tbaa !90
  call void @BLI_lock_thread(i32 noundef 3) #14
  %305 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %306 = load i16, ptr %13, align 8, !tbaa !91
  %307 = sext i16 %306 to i32
  %308 = call i32 @get_render_shadow_samples(ptr noundef nonnull %305, i32 noundef %307) #14
  %309 = call i32 @llvm.smin.i32(i32 %308, i32 16)
  %310 = call i32 @llvm.smax.i32(i32 %309, i32 2)
  %311 = add nsw i32 %310, -1
  %312 = zext nneg i32 %311 to i64
  br label %313

313:                                              ; preds = %313, %301
  %314 = phi i64 [ 0, %301 ], [ %319, %313 ]
  %315 = phi i32 [ 0, %301 ], [ %318, %313 ]
  %316 = getelementptr inbounds [17 x i32], ptr @give_jitter_tab.tab, i64 0, i64 %314
  %317 = load i32, ptr %316, align 4, !tbaa !92
  %318 = add nsw i32 %317, %315
  %319 = add nuw nsw i64 %314, 1
  %320 = icmp eq i64 %319, %312
  br i1 %320, label %321, label %313, !llvm.loop !93

321:                                              ; preds = %313
  %322 = zext nneg i32 %310 to i64
  %323 = getelementptr inbounds [17 x i8], ptr @give_jitter_tab.ctab, i64 0, i64 %322
  %324 = load i8, ptr %323, align 1, !tbaa !72
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %321
  store i8 1, ptr %323, align 1, !tbaa !72
  %327 = sext i32 %318 to i64
  %328 = getelementptr inbounds [1496 x [2 x float]], ptr @give_jitter_tab.jit, i64 0, i64 %327
  %329 = mul nuw nsw i32 %310, %310
  call void @BLI_jitter_init(ptr noundef nonnull %328, i32 noundef %329) #14
  br label %330

330:                                              ; preds = %321, %326
  %331 = sext i32 %318 to i64
  %332 = getelementptr inbounds [1496 x [2 x float]], ptr @give_jitter_tab.jit, i64 0, i64 %331
  %333 = getelementptr inbounds %struct.ShadBuf, ptr %13, i64 0, i32 6
  store ptr %332, ptr %333, align 8, !tbaa !94
  %334 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 35
  %335 = load i16, ptr %334, align 2, !tbaa !95
  %336 = load i16, ptr %13, align 8, !tbaa !91
  %337 = sext i16 %336 to i32
  %338 = call i32 @get_render_shadow_samples(ptr noundef nonnull %305, i32 noundef %337) #14
  %339 = mul nsw i32 %338, %338
  %340 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %341 = zext nneg i32 %339 to i64
  %342 = shl nuw nsw i64 %341, 2
  %343 = call ptr %340(i64 noundef %342, ptr noundef nonnull @.str.2) #14
  %344 = getelementptr inbounds %struct.ShadBuf, ptr %13, i64 0, i32 7
  store ptr %343, ptr %344, align 8, !tbaa !96
  %345 = icmp eq i32 %338, 0
  br i1 %345, label %379, label %346

346:                                              ; preds = %330
  %347 = load ptr, ptr %333, align 8, !tbaa !94
  %348 = call i32 @llvm.umax.i32(i32 %339, i32 1)
  %349 = zext nneg i32 %348 to i64
  br label %350

350:                                              ; preds = %346, %371
  %351 = phi i64 [ 0, %346 ], [ %376, %371 ]
  %352 = phi ptr [ %347, %346 ], [ %377, %371 ]
  %353 = phi float [ 0.000000e+00, %346 ], [ %375, %371 ]
  switch i16 %335, label %371 [
    i16 1, label %354
    i16 2, label %362
  ]

354:                                              ; preds = %350
  %355 = load float, ptr %352, align 4, !tbaa !77
  %356 = getelementptr inbounds float, ptr %352, i64 1
  %357 = load float, ptr %356, align 4, !tbaa !77
  %358 = fmul float %357, %357
  %359 = call float @llvm.fmuladd.f32(float %355, float %355, float %358)
  %360 = call float @sqrtf(float noundef %359) #14
  %361 = fsub float 0x3FE6B851E0000000, %360
  br label %371

362:                                              ; preds = %350
  %363 = load float, ptr %352, align 4, !tbaa !77
  %364 = getelementptr inbounds float, ptr %352, i64 1
  %365 = load float, ptr %364, align 4, !tbaa !77
  %366 = fmul float %365, %365
  %367 = call float @llvm.fmuladd.f32(float %363, float %363, float %366)
  %368 = call float @sqrtf(float noundef %367) #14
  %369 = fmul float %368, 0x3FFCCCCCC0000000
  %370 = call float @RE_filter_value(i32 noundef 5, float noundef %369) #14
  br label %371

371:                                              ; preds = %350, %362, %354
  %372 = phi float [ %370, %362 ], [ %361, %354 ], [ 1.000000e+00, %350 ]
  %373 = load ptr, ptr %344, align 8, !tbaa !96
  %374 = getelementptr inbounds float, ptr %373, i64 %351
  store float %372, ptr %374, align 4, !tbaa !77
  %375 = fadd float %353, %372
  %376 = add nuw nsw i64 %351, 1
  %377 = getelementptr inbounds float, ptr %352, i64 2
  %378 = icmp eq i64 %376, %349
  br i1 %378, label %379, label %350, !llvm.loop !97

379:                                              ; preds = %371, %330
  %380 = phi float [ 0.000000e+00, %330 ], [ %375, %371 ]
  %381 = fdiv float 1.000000e+00, %380
  %382 = icmp eq i32 %338, 0
  br i1 %382, label %394, label %383

383:                                              ; preds = %379
  %384 = load ptr, ptr %344, align 8, !tbaa !96
  %385 = call i32 @llvm.umax.i32(i32 %339, i32 1)
  %386 = zext nneg i32 %385 to i64
  br label %387

387:                                              ; preds = %383, %387
  %388 = phi i64 [ 0, %383 ], [ %392, %387 ]
  %389 = getelementptr inbounds float, ptr %384, i64 %388
  %390 = load float, ptr %389, align 4, !tbaa !77
  %391 = fmul float %381, %390
  store float %391, ptr %389, align 4, !tbaa !77
  %392 = add nuw nsw i64 %388, 1
  %393 = icmp eq i64 %392, %386
  br i1 %393, label %394, label %387, !llvm.loop !98

394:                                              ; preds = %387, %379
  call void @BLI_unlock_thread(i32 noundef 3) #14
  %395 = load i16, ptr %304, align 4, !tbaa !90
  switch i16 %395, label %404 [
    i16 4, label %396
    i16 9, label %400
  ]

396:                                              ; preds = %394
  %397 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @give_jitter_tab.ctab, i64 0, i64 2), align 2, !tbaa !72
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %399, label %404

399:                                              ; preds = %396
  store i8 1, ptr getelementptr inbounds ([17 x i8], ptr @give_jitter_tab.ctab, i64 0, i64 2), align 2, !tbaa !72
  call void @BLI_jitter_init(ptr noundef nonnull getelementptr inbounds ([1496 x [2 x float]], ptr @give_jitter_tab.jit, i64 0, i64 1), i32 noundef 4) #14
  br label %404

400:                                              ; preds = %394
  %401 = load i8, ptr getelementptr inbounds ([17 x i8], ptr @give_jitter_tab.ctab, i64 0, i64 3), align 1, !tbaa !72
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %400
  store i8 1, ptr getelementptr inbounds ([17 x i8], ptr @give_jitter_tab.ctab, i64 0, i64 3), align 1, !tbaa !72
  call void @BLI_jitter_init(ptr noundef nonnull getelementptr inbounds ([1496 x [2 x float]], ptr @give_jitter_tab.jit, i64 0, i64 5), i32 noundef 9) #14
  br label %404

404:                                              ; preds = %403, %400, %399, %396, %394
  %405 = phi ptr [ %11, %394 ], [ getelementptr inbounds ([1496 x [2 x float]], ptr @give_jitter_tab.jit, i64 0, i64 1), %396 ], [ getelementptr inbounds ([1496 x [2 x float]], ptr @give_jitter_tab.jit, i64 0, i64 1), %399 ], [ getelementptr inbounds ([1496 x [2 x float]], ptr @give_jitter_tab.jit, i64 0, i64 5), %400 ], [ getelementptr inbounds ([1496 x [2 x float]], ptr @give_jitter_tab.jit, i64 0, i64 5), %403 ]
  %406 = load i16, ptr %263, align 4, !tbaa !86
  %407 = icmp eq i16 %406, 3
  %408 = load ptr, ptr %12, align 8, !tbaa !34
  br i1 %407, label %409, label %980

409:                                              ; preds = %404
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %410 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %411 = getelementptr inbounds %struct.ShadBuf, ptr %408, i64 0, i32 14
  %412 = load i32, ptr %411, align 8, !tbaa !87
  %413 = sext i32 %412 to i64
  %414 = mul nsw i64 %413, 72
  %415 = mul i64 %414, %413
  %416 = call ptr %410(i64 noundef %415, ptr noundef nonnull @.str.3) #14
  %417 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 63
  %418 = load i32, ptr %417, align 4, !tbaa !99
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %427, label %420

420:                                              ; preds = %409
  %421 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %422 = load i32, ptr %411, align 8, !tbaa !87
  %423 = sext i32 %422 to i64
  %424 = mul nsw i64 %423, 112
  %425 = mul i64 %424, %423
  %426 = call ptr %421(i64 noundef %425, ptr noundef nonnull @.str.4) #14
  br label %427

427:                                              ; preds = %420, %409
  %428 = phi ptr [ %426, %420 ], [ null, %409 ]
  %429 = getelementptr inbounds %struct.ShadBuf, ptr %408, i64 0, i32 3
  %430 = load i32, ptr %411, align 8, !tbaa !87
  %431 = getelementptr inbounds %struct.ShadBuf, ptr %408, i64 0, i32 2
  %432 = load i16, ptr %431, align 4, !tbaa !90
  %433 = sext i16 %432 to i32
  call void @zbuffer_abuf_shadow(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %429, ptr noundef %416, ptr noundef %428, ptr noundef nonnull %7, i32 noundef %430, i32 noundef %433, ptr noundef nonnull %405) #14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #14
  %434 = load i16, ptr %431, align 4, !tbaa !90
  %435 = sext i16 %434 to i32
  %436 = sitofp i16 %434 to float
  %437 = load i32, ptr %411, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #14
  %438 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %439 = call ptr %438(i64 noundef 48, ptr noundef nonnull @.str.5) #14
  %440 = getelementptr inbounds %struct.ShadBuf, ptr %408, i64 0, i32 16
  call void @BLI_addtail(ptr noundef nonnull %440, ptr noundef %439) #14
  %441 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %442 = sext i32 %437 to i64
  %443 = shl nsw i64 %442, 2
  %444 = mul i64 %443, %442
  %445 = call ptr %441(i64 noundef %444, ptr noundef nonnull @.str.6) #14
  %446 = getelementptr inbounds %struct.ShadSampleBuf, ptr %439, i64 0, i32 5
  store ptr %445, ptr %446, align 8, !tbaa !113
  %447 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %448 = shl nsw i64 %442, 3
  %449 = mul i64 %448, %442
  %450 = call ptr %447(i64 noundef %449, ptr noundef nonnull @.str.7) #14
  %451 = getelementptr inbounds %struct.ShadSampleBuf, ptr %439, i64 0, i32 4
  store ptr %450, ptr %451, align 8, !tbaa !115
  %452 = icmp eq i32 %437, 0
  br i1 %452, label %974, label %453

453:                                              ; preds = %427
  %454 = mul i32 %437, %437
  %455 = icmp sgt i16 %434, 0
  %456 = icmp slt i16 %434, 1
  %457 = icmp eq ptr %428, null
  %458 = icmp slt i16 %434, 1
  %459 = icmp sgt i16 %434, 0
  %460 = icmp sgt i16 %434, 1
  %461 = icmp slt i16 %434, 1
  %462 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 69
  %463 = icmp slt i16 %434, 1
  %464 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 69
  %465 = icmp sgt i16 %434, 0
  %466 = icmp sgt i16 %434, 0
  %467 = icmp sgt i16 %434, 0
  %468 = getelementptr inbounds %struct.ShadBuf, ptr %408, i64 0, i32 12
  %469 = zext i32 %435 to i64
  %470 = shl nuw nsw i64 %469, 2
  %471 = call i32 @llvm.umax.i32(i32 %454, i32 1)
  %472 = zext i32 %471 to i64
  %473 = zext i32 %435 to i64
  %474 = zext i32 %435 to i64
  %475 = zext nneg i32 %435 to i64
  %476 = zext nneg i32 %435 to i64
  %477 = zext i32 %435 to i64
  %478 = zext i32 %435 to i64
  %479 = zext nneg i32 %435 to i64
  %480 = zext nneg i32 %435 to i64
  %481 = zext nneg i32 %435 to i64
  br label %482

482:                                              ; preds = %453, %969
  %483 = phi i64 [ 0, %453 ], [ %970, %969 ]
  %484 = phi ptr [ %416, %453 ], [ %971, %969 ]
  %485 = phi ptr [ %428, %453 ], [ %972, %969 ]
  br i1 %455, label %486, label %487

486:                                              ; preds = %482
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %6, i8 0, i64 %470, i1 false), !tbaa !92
  br label %487

487:                                              ; preds = %486, %482
  %488 = icmp eq ptr %484, null
  br i1 %488, label %521, label %489

489:                                              ; preds = %487, %517
  %490 = phi ptr [ %519, %517 ], [ %484, %487 ]
  br label %491

491:                                              ; preds = %489, %514
  %492 = phi i64 [ 0, %489 ], [ %515, %514 ]
  %493 = getelementptr inbounds %struct.APixstr, ptr %490, i64 0, i32 2, i64 %492
  %494 = load i32, ptr %493, align 4, !tbaa !92
  %495 = icmp eq i32 %494, 0
  %496 = select i1 %495, i1 true, i1 %456
  br i1 %496, label %514, label %497

497:                                              ; preds = %491
  %498 = getelementptr inbounds [4 x i16], ptr %490, i64 0, i64 %492
  %499 = load i16, ptr %498, align 2, !tbaa !116
  %500 = zext i16 %499 to i32
  br label %501

501:                                              ; preds = %497, %511
  %502 = phi i64 [ 0, %497 ], [ %512, %511 ]
  %503 = trunc i64 %502 to i32
  %504 = shl nuw i32 1, %503
  %505 = and i32 %504, %500
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %511, label %507

507:                                              ; preds = %501
  %508 = getelementptr inbounds [16 x i32], ptr %6, i64 0, i64 %502
  %509 = load i32, ptr %508, align 4, !tbaa !92
  %510 = add nsw i32 %509, 1
  store i32 %510, ptr %508, align 4, !tbaa !92
  br label %511

511:                                              ; preds = %507, %501
  %512 = add nuw nsw i64 %502, 1
  %513 = icmp eq i64 %512, %473
  br i1 %513, label %514, label %501, !llvm.loop !117

514:                                              ; preds = %511, %491
  %515 = add nuw nsw i64 %492, 1
  %516 = icmp eq i64 %515, 4
  br i1 %516, label %517, label %491, !llvm.loop !118

517:                                              ; preds = %514
  %518 = getelementptr inbounds %struct.APixstr, ptr %490, i64 0, i32 5
  %519 = load ptr, ptr %518, align 8, !tbaa !119
  %520 = icmp eq ptr %519, null
  br i1 %520, label %521, label %489, !llvm.loop !121

521:                                              ; preds = %517, %487
  %522 = icmp eq ptr %485, null
  %523 = select i1 %457, i1 true, i1 %522
  br i1 %523, label %556, label %524

524:                                              ; preds = %521, %552
  %525 = phi ptr [ %554, %552 ], [ %485, %521 ]
  br label %526

526:                                              ; preds = %524, %549
  %527 = phi i64 [ 0, %524 ], [ %550, %549 ]
  %528 = getelementptr inbounds %struct.APixstrand, ptr %525, i64 0, i32 2, i64 %527
  %529 = load i32, ptr %528, align 4, !tbaa !92
  %530 = icmp eq i32 %529, 0
  %531 = select i1 %530, i1 true, i1 %458
  br i1 %531, label %549, label %532

532:                                              ; preds = %526
  %533 = getelementptr inbounds [4 x i16], ptr %525, i64 0, i64 %527
  %534 = load i16, ptr %533, align 2, !tbaa !116
  %535 = zext i16 %534 to i32
  br label %536

536:                                              ; preds = %532, %546
  %537 = phi i64 [ 0, %532 ], [ %547, %546 ]
  %538 = trunc i64 %537 to i32
  %539 = shl nuw i32 1, %538
  %540 = and i32 %539, %535
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %546, label %542

542:                                              ; preds = %536
  %543 = getelementptr inbounds [16 x i32], ptr %6, i64 0, i64 %537
  %544 = load i32, ptr %543, align 4, !tbaa !92
  %545 = add nsw i32 %544, 1
  store i32 %545, ptr %543, align 4, !tbaa !92
  br label %546

546:                                              ; preds = %542, %536
  %547 = add nuw nsw i64 %537, 1
  %548 = icmp eq i64 %547, %474
  br i1 %548, label %549, label %536, !llvm.loop !122

549:                                              ; preds = %546, %526
  %550 = add nuw nsw i64 %527, 1
  %551 = icmp eq i64 %550, 4
  br i1 %551, label %552, label %526, !llvm.loop !123

552:                                              ; preds = %549
  %553 = getelementptr inbounds %struct.APixstrand, ptr %525, i64 0, i32 7
  %554 = load ptr, ptr %553, align 8, !tbaa !124
  %555 = icmp eq ptr %554, null
  br i1 %555, label %556, label %524, !llvm.loop !126

556:                                              ; preds = %552, %521
  br i1 %459, label %557, label %565

557:                                              ; preds = %556, %557
  %558 = phi i64 [ %563, %557 ], [ 0, %556 ]
  %559 = phi i32 [ %562, %557 ], [ 0, %556 ]
  %560 = getelementptr inbounds [16 x i32], ptr %6, i64 0, i64 %558
  %561 = load i32, ptr %560, align 4, !tbaa !92
  %562 = add nsw i32 %561, %559
  %563 = add nuw nsw i64 %558, 1
  %564 = icmp eq i64 %563, %475
  br i1 %564, label %565, label %557, !llvm.loop !127

565:                                              ; preds = %557, %556
  %566 = phi i32 [ 0, %556 ], [ %562, %557 ]
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %573

568:                                              ; preds = %565
  %569 = load ptr, ptr %451, align 8, !tbaa !115
  %570 = getelementptr inbounds ptr, ptr %569, i64 %483
  store ptr null, ptr %570, align 8, !tbaa !45
  %571 = load ptr, ptr %446, align 8, !tbaa !113
  %572 = getelementptr inbounds i32, ptr %571, i64 %483
  store i32 0, ptr %572, align 4, !tbaa !92
  br label %969

573:                                              ; preds = %565
  %574 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %575 = sext i32 %566 to i64
  %576 = shl nsw i64 %575, 4
  %577 = call ptr %574(i64 noundef %576, ptr noundef nonnull @.str.8) #14
  store ptr %577, ptr %5, align 16, !tbaa !45
  store ptr %577, ptr %4, align 16, !tbaa !45
  br i1 %460, label %580, label %578

578:                                              ; preds = %580, %573
  %579 = icmp eq ptr %484, null
  br i1 %579, label %645, label %593

580:                                              ; preds = %573, %580
  %581 = phi ptr [ %588, %580 ], [ %577, %573 ]
  %582 = phi i64 [ %591, %580 ], [ 1, %573 ]
  %583 = add nsw i64 %582, -1
  %584 = getelementptr inbounds [16 x i32], ptr %6, i64 0, i64 %583
  %585 = load i32, ptr %584, align 4, !tbaa !92
  %586 = shl nsw i32 %585, 1
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds %struct.DeepSample, ptr %581, i64 %587
  %589 = getelementptr inbounds [16 x ptr], ptr %5, i64 0, i64 %582
  store ptr %588, ptr %589, align 8, !tbaa !45
  %590 = getelementptr inbounds [16 x ptr], ptr %4, i64 0, i64 %582
  store ptr %588, ptr %590, align 8, !tbaa !45
  %591 = add nuw nsw i64 %582, 1
  %592 = icmp eq i64 %591, %476
  br i1 %592, label %578, label %580, !llvm.loop !128

593:                                              ; preds = %578, %641
  %594 = phi ptr [ %643, %641 ], [ %484, %578 ]
  br label %595

595:                                              ; preds = %593, %638
  %596 = phi i64 [ 0, %593 ], [ %639, %638 ]
  %597 = getelementptr inbounds %struct.APixstr, ptr %594, i64 0, i32 2, i64 %596
  %598 = load i32, ptr %597, align 4, !tbaa !92
  %599 = icmp eq i32 %598, 0
  %600 = select i1 %599, i1 true, i1 %461
  br i1 %600, label %638, label %601

601:                                              ; preds = %595
  %602 = getelementptr inbounds [4 x i16], ptr %594, i64 0, i64 %596
  %603 = getelementptr inbounds %struct.APixstr, ptr %594, i64 0, i32 1, i64 %596
  %604 = getelementptr inbounds %struct.APixstr, ptr %594, i64 0, i32 3, i64 %596
  br label %605

605:                                              ; preds = %601, %635
  %606 = phi i64 [ 0, %601 ], [ %636, %635 ]
  %607 = load i16, ptr %602, align 2, !tbaa !116
  %608 = zext i16 %607 to i32
  %609 = trunc i64 %606 to i32
  %610 = shl nuw i32 1, %609
  %611 = and i32 %610, %608
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %635, label %613

613:                                              ; preds = %605
  %614 = load i32, ptr %603, align 4, !tbaa !92
  %615 = getelementptr inbounds [16 x ptr], ptr %4, i64 0, i64 %606
  %616 = load ptr, ptr %615, align 8, !tbaa !45
  store i32 %614, ptr %616, align 4, !tbaa !129
  %617 = getelementptr inbounds %struct.DeepSample, ptr %616, i64 0, i32 1
  store float 1.000000e+00, ptr %617, align 4, !tbaa !131
  %618 = getelementptr inbounds %struct.DeepSample, ptr %616, i64 1
  store ptr %618, ptr %615, align 8, !tbaa !45
  %619 = load i32, ptr %603, align 4, !tbaa !92
  store i32 %619, ptr %618, align 4, !tbaa !129
  %620 = load i32, ptr %604, align 4, !tbaa !92
  %621 = load i32, ptr %597, align 4, !tbaa !92
  %622 = load ptr, ptr %462, align 8, !tbaa !132
  %623 = sext i32 %620 to i64
  %624 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %622, i64 %623, i32 2
  %625 = load ptr, ptr %624, align 8, !tbaa !52
  %626 = add i32 %621, 134217727
  %627 = and i32 %626, 134217727
  %628 = call ptr @RE_findOrAddVlak(ptr noundef %625, i32 noundef %627) #14
  %629 = getelementptr inbounds %struct.VlakRen, ptr %628, i64 0, i32 5
  %630 = load ptr, ptr %629, align 8, !tbaa !45
  %631 = getelementptr inbounds %struct.Material, ptr %630, i64 0, i32 72
  %632 = load float, ptr %631, align 4, !tbaa !133
  %633 = getelementptr inbounds %struct.DeepSample, ptr %616, i64 1, i32 1
  store float %632, ptr %633, align 4, !tbaa !131
  %634 = getelementptr inbounds %struct.DeepSample, ptr %616, i64 2
  store ptr %634, ptr %615, align 8, !tbaa !45
  br label %635

635:                                              ; preds = %613, %605
  %636 = add nuw nsw i64 %606, 1
  %637 = icmp eq i64 %636, %477
  br i1 %637, label %638, label %605, !llvm.loop !134

638:                                              ; preds = %635, %595
  %639 = add nuw nsw i64 %596, 1
  %640 = icmp eq i64 %639, 4
  br i1 %640, label %641, label %595, !llvm.loop !135

641:                                              ; preds = %638
  %642 = getelementptr inbounds %struct.APixstr, ptr %594, i64 0, i32 5
  %643 = load ptr, ptr %642, align 8, !tbaa !119
  %644 = icmp eq ptr %643, null
  br i1 %644, label %645, label %593, !llvm.loop !136

645:                                              ; preds = %641, %578
  %646 = icmp eq ptr %485, null
  %647 = select i1 %457, i1 true, i1 %646
  br i1 %647, label %701, label %648

648:                                              ; preds = %645, %697
  %649 = phi ptr [ %699, %697 ], [ %485, %645 ]
  br label %650

650:                                              ; preds = %648, %694
  %651 = phi i64 [ 0, %648 ], [ %695, %694 ]
  %652 = getelementptr inbounds %struct.APixstrand, ptr %649, i64 0, i32 2, i64 %651
  %653 = load i32, ptr %652, align 4, !tbaa !92
  %654 = icmp eq i32 %653, 0
  %655 = select i1 %654, i1 true, i1 %463
  br i1 %655, label %694, label %656

656:                                              ; preds = %650
  %657 = getelementptr inbounds [4 x i16], ptr %649, i64 0, i64 %651
  %658 = getelementptr inbounds %struct.APixstrand, ptr %649, i64 0, i32 1, i64 %651
  %659 = getelementptr inbounds %struct.APixstrand, ptr %649, i64 0, i32 3, i64 %651
  br label %660

660:                                              ; preds = %656, %691
  %661 = phi i64 [ 0, %656 ], [ %692, %691 ]
  %662 = load i16, ptr %657, align 2, !tbaa !116
  %663 = zext i16 %662 to i32
  %664 = trunc i64 %661 to i32
  %665 = shl nuw i32 1, %664
  %666 = and i32 %665, %663
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %691, label %668

668:                                              ; preds = %660
  %669 = load i32, ptr %658, align 4, !tbaa !92
  %670 = getelementptr inbounds [16 x ptr], ptr %4, i64 0, i64 %661
  %671 = load ptr, ptr %670, align 8, !tbaa !45
  store i32 %669, ptr %671, align 4, !tbaa !129
  %672 = getelementptr inbounds %struct.DeepSample, ptr %671, i64 0, i32 1
  store float 1.000000e+00, ptr %672, align 4, !tbaa !131
  %673 = getelementptr inbounds %struct.DeepSample, ptr %671, i64 1
  store ptr %673, ptr %670, align 8, !tbaa !45
  %674 = load i32, ptr %658, align 4, !tbaa !92
  store i32 %674, ptr %673, align 4, !tbaa !129
  %675 = load i32, ptr %659, align 4, !tbaa !92
  %676 = load i32, ptr %652, align 4, !tbaa !92
  %677 = load ptr, ptr %464, align 8, !tbaa !132
  %678 = sext i32 %675 to i64
  %679 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %677, i64 %678, i32 2
  %680 = load ptr, ptr %679, align 8, !tbaa !52
  %681 = add nsw i32 %676, -1
  %682 = call ptr @RE_findOrAddStrand(ptr noundef %680, i32 noundef %681) #14
  %683 = getelementptr inbounds %struct.StrandRen, ptr %682, i64 0, i32 1
  %684 = load ptr, ptr %683, align 8, !tbaa !137
  %685 = getelementptr inbounds %struct.StrandBuffer, ptr %684, i64 0, i32 7
  %686 = load ptr, ptr %685, align 8, !tbaa !45
  %687 = getelementptr inbounds %struct.Material, ptr %686, i64 0, i32 72
  %688 = load float, ptr %687, align 4, !tbaa !133
  %689 = getelementptr inbounds %struct.DeepSample, ptr %671, i64 1, i32 1
  store float %688, ptr %689, align 4, !tbaa !131
  %690 = getelementptr inbounds %struct.DeepSample, ptr %671, i64 2
  store ptr %690, ptr %670, align 8, !tbaa !45
  br label %691

691:                                              ; preds = %668, %660
  %692 = add nuw nsw i64 %661, 1
  %693 = icmp eq i64 %692, %478
  br i1 %693, label %694, label %660, !llvm.loop !139

694:                                              ; preds = %691, %650
  %695 = add nuw nsw i64 %651, 1
  %696 = icmp eq i64 %695, 4
  br i1 %696, label %697, label %650, !llvm.loop !140

697:                                              ; preds = %694
  %698 = getelementptr inbounds %struct.APixstrand, ptr %649, i64 0, i32 7
  %699 = load ptr, ptr %698, align 8, !tbaa !124
  %700 = icmp eq ptr %699, null
  br i1 %700, label %701, label %648, !llvm.loop !141

701:                                              ; preds = %697, %645
  br i1 %465, label %702, label %761

702:                                              ; preds = %701, %757
  %703 = phi i64 [ %759, %757 ], [ 0, %701 ]
  %704 = getelementptr inbounds [16 x ptr], ptr %5, i64 0, i64 %703
  %705 = load ptr, ptr %704, align 8, !tbaa !45
  %706 = getelementptr inbounds [16 x i32], ptr %6, i64 0, i64 %703
  %707 = load i32, ptr %706, align 4, !tbaa !92
  %708 = sext i32 %707 to i64
  call void @qsort(ptr noundef %705, i64 noundef %708, i64 noundef 16, ptr noundef nonnull @verg_deepsample) #14
  %709 = getelementptr inbounds [16 x ptr], ptr %4, i64 0, i64 %703
  store ptr %705, ptr %709, align 8, !tbaa !45
  %710 = icmp sgt i32 %707, 0
  br i1 %710, label %711, label %714

711:                                              ; preds = %702
  %712 = load ptr, ptr %709, align 8, !tbaa !45
  br label %717

713:                                              ; preds = %717
  store ptr %726, ptr %709, align 8, !tbaa !45
  br label %714

714:                                              ; preds = %713, %702
  %715 = load i32, ptr %706, align 4, !tbaa !92
  %716 = icmp sgt i32 %715, 0
  br i1 %716, label %729, label %757

717:                                              ; preds = %711, %717
  %718 = phi ptr [ %712, %711 ], [ %726, %717 ]
  %719 = phi i32 [ 0, %711 ], [ %727, %717 ]
  %720 = phi float [ 1.000000e+00, %711 ], [ %725, %717 ]
  %721 = getelementptr inbounds %struct.DeepSample, ptr %718, i64 0, i32 1
  store float %720, ptr %721, align 4, !tbaa !131
  %722 = getelementptr inbounds %struct.DeepSample, ptr %718, i64 1, i32 1
  %723 = load float, ptr %722, align 4, !tbaa !131
  %724 = fsub float 1.000000e+00, %723
  %725 = fmul float %720, %724
  store float %725, ptr %722, align 4, !tbaa !131
  %726 = getelementptr inbounds %struct.DeepSample, ptr %718, i64 2
  %727 = add nuw nsw i32 %719, 1
  %728 = icmp eq i32 %727, %707
  br i1 %728, label %713, label %717, !llvm.loop !142

729:                                              ; preds = %714, %748
  %730 = phi i32 [ %732, %748 ], [ 0, %714 ]
  %731 = phi ptr [ %755, %748 ], [ %705, %714 ]
  %732 = add nuw nsw i32 %730, 1
  %733 = icmp slt i32 %732, %715
  %734 = load i32, ptr %731, align 4, !tbaa !129
  %735 = ashr i32 %734, 1
  br i1 %733, label %736, label %745

736:                                              ; preds = %729
  %737 = getelementptr inbounds %struct.DeepSample, ptr %731, i64 2
  %738 = load i32, ptr %737, align 4, !tbaa !129
  %739 = ashr i32 %738, 1
  %740 = add nsw i32 %739, %735
  store i32 %740, ptr %731, align 4, !tbaa !129
  %741 = getelementptr inbounds %struct.DeepSample, ptr %731, i64 1
  %742 = load i32, ptr %741, align 4, !tbaa !129
  %743 = ashr i32 %742, 1
  %744 = getelementptr inbounds %struct.DeepSample, ptr %731, i64 3
  br label %748

745:                                              ; preds = %729
  %746 = add nsw i32 %735, 1073741823
  store i32 %746, ptr %731, align 4, !tbaa !129
  %747 = getelementptr inbounds %struct.DeepSample, ptr %731, i64 1
  br label %748

748:                                              ; preds = %745, %736
  %749 = phi ptr [ %747, %745 ], [ %744, %736 ]
  %750 = phi i32 [ 1073741823, %745 ], [ %743, %736 ]
  %751 = phi ptr [ %747, %745 ], [ %741, %736 ]
  %752 = load i32, ptr %749, align 4, !tbaa !129
  %753 = ashr i32 %752, 1
  %754 = add nsw i32 %753, %750
  store i32 %754, ptr %751, align 4, !tbaa !129
  %755 = getelementptr inbounds %struct.DeepSample, ptr %731, i64 2
  %756 = icmp eq i32 %732, %715
  br i1 %756, label %757, label %729, !llvm.loop !143

757:                                              ; preds = %748, %714
  store ptr %705, ptr %709, align 8, !tbaa !45
  %758 = shl nsw i32 %715, 1
  store i32 %758, ptr %706, align 4, !tbaa !92
  %759 = add nuw nsw i64 %703, 1
  %760 = icmp eq i64 %759, %479
  br i1 %760, label %761, label %702, !llvm.loop !144

761:                                              ; preds = %757, %701
  %762 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %763 = call ptr %762(i64 noundef %576, ptr noundef nonnull @.str.8) #14
  %764 = load ptr, ptr %451, align 8, !tbaa !115
  %765 = getelementptr inbounds ptr, ptr %764, i64 %483
  store ptr %763, ptr %765, align 8, !tbaa !45
  %766 = load ptr, ptr %446, align 8, !tbaa !113
  %767 = getelementptr inbounds i32, ptr %766, i64 %483
  store i32 0, ptr %767, align 4, !tbaa !92
  %768 = load ptr, ptr %451, align 8, !tbaa !115
  %769 = getelementptr inbounds ptr, ptr %768, i64 %483
  %770 = load ptr, ptr %769, align 8, !tbaa !45
  br label %771

771:                                              ; preds = %831, %761
  %772 = phi ptr [ %770, %761 ], [ %833, %831 ]
  br i1 %466, label %773, label %796

773:                                              ; preds = %771, %791
  %774 = phi i64 [ %794, %791 ], [ 0, %771 ]
  %775 = phi i32 [ %793, %791 ], [ 0, %771 ]
  %776 = phi i32 [ %792, %791 ], [ 0, %771 ]
  %777 = getelementptr inbounds [16 x i32], ptr %6, i64 0, i64 %774
  %778 = load i32, ptr %777, align 4, !tbaa !92
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %791, label %780

780:                                              ; preds = %773
  %781 = icmp eq i32 %775, 0
  br i1 %781, label %787, label %782

782:                                              ; preds = %780
  %783 = getelementptr inbounds [16 x ptr], ptr %4, i64 0, i64 %774
  %784 = load ptr, ptr %783, align 8, !tbaa !45
  %785 = load i32, ptr %784, align 4, !tbaa !129
  %786 = icmp slt i32 %785, %776
  br i1 %786, label %787, label %791

787:                                              ; preds = %782, %780
  %788 = getelementptr inbounds [16 x ptr], ptr %4, i64 0, i64 %774
  %789 = load ptr, ptr %788, align 8, !tbaa !45
  %790 = load i32, ptr %789, align 4, !tbaa !129
  br label %791

791:                                              ; preds = %787, %782, %773
  %792 = phi i32 [ %790, %787 ], [ %776, %782 ], [ %776, %773 ]
  %793 = phi i32 [ 1, %787 ], [ 1, %782 ], [ %775, %773 ]
  %794 = add nuw nsw i64 %774, 1
  %795 = icmp eq i64 %794, %480
  br i1 %795, label %796, label %773, !llvm.loop !145

796:                                              ; preds = %791, %771
  %797 = phi i32 [ 0, %771 ], [ %792, %791 ]
  %798 = phi i32 [ 0, %771 ], [ %793, %791 ]
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %836, label %800

800:                                              ; preds = %796
  store i32 %797, ptr %772, align 4, !tbaa !129
  %801 = getelementptr inbounds %struct.DeepSample, ptr %772, i64 0, i32 1
  store float 0.000000e+00, ptr %801, align 4, !tbaa !131
  br i1 %467, label %802, label %831

802:                                              ; preds = %800, %825
  %803 = phi i64 [ %829, %825 ], [ 0, %800 ]
  %804 = phi float [ %828, %825 ], [ 0.000000e+00, %800 ]
  %805 = getelementptr inbounds [16 x i32], ptr %6, i64 0, i64 %803
  %806 = load i32, ptr %805, align 4, !tbaa !92
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %816, label %808

808:                                              ; preds = %802
  %809 = getelementptr inbounds [16 x ptr], ptr %4, i64 0, i64 %803
  %810 = load ptr, ptr %809, align 8, !tbaa !45
  %811 = load i32, ptr %810, align 4, !tbaa !129
  %812 = icmp eq i32 %811, %797
  br i1 %812, label %813, label %816

813:                                              ; preds = %808
  %814 = getelementptr inbounds %struct.DeepSample, ptr %810, i64 1
  store ptr %814, ptr %809, align 8, !tbaa !45
  %815 = add nsw i32 %806, -1
  store i32 %815, ptr %805, align 4, !tbaa !92
  br label %816

816:                                              ; preds = %813, %808, %802
  %817 = getelementptr inbounds [16 x ptr], ptr %5, i64 0, i64 %803
  %818 = load ptr, ptr %817, align 8, !tbaa !45
  %819 = getelementptr inbounds [16 x ptr], ptr %4, i64 0, i64 %803
  %820 = load ptr, ptr %819, align 8, !tbaa !45
  %821 = icmp eq ptr %818, %820
  br i1 %821, label %825, label %822

822:                                              ; preds = %816
  %823 = getelementptr %struct.DeepSample, ptr %820, i64 -1, i32 1
  %824 = load float, ptr %823, align 4, !tbaa !131
  br label %825

825:                                              ; preds = %822, %816
  %826 = phi float [ %824, %822 ], [ 1.000000e+00, %816 ]
  %827 = fdiv float %826, %436
  %828 = fadd float %804, %827
  %829 = add nuw nsw i64 %803, 1
  %830 = icmp eq i64 %829, %481
  br i1 %830, label %831, label %802, !llvm.loop !146

831:                                              ; preds = %825, %800
  %832 = phi float [ 0.000000e+00, %800 ], [ %828, %825 ]
  store float %832, ptr %801, align 4, !tbaa !131
  %833 = getelementptr inbounds %struct.DeepSample, ptr %772, i64 1
  %834 = load i32, ptr %767, align 4, !tbaa !92
  %835 = add nsw i32 %834, 1
  store i32 %835, ptr %767, align 4, !tbaa !92
  br label %771, !llvm.loop !147

836:                                              ; preds = %796
  %837 = load i32, ptr %767, align 4, !tbaa !92
  %838 = load float, ptr %468, align 8, !tbaa !148
  %839 = icmp sgt i32 %837, 1
  br i1 %839, label %840, label %938

840:                                              ; preds = %836
  %841 = add nsw i32 %837, -1
  br label %842

842:                                              ; preds = %840, %931
  %843 = phi i32 [ 0, %840 ], [ %934, %931 ]
  %844 = phi ptr [ %770, %840 ], [ %911, %931 ]
  %845 = phi i32 [ 1, %840 ], [ %936, %931 ]
  %846 = phi ptr [ %770, %840 ], [ %933, %931 ]
  %847 = getelementptr inbounds %struct.DeepSample, ptr %844, i64 1
  %848 = load i32, ptr %846, align 4, !tbaa !129
  %849 = sitofp i32 %848 to double
  %850 = getelementptr inbounds %struct.DeepSample, ptr %846, i64 0, i32 1
  %851 = getelementptr inbounds %struct.DeepSample, ptr %846, i64 0, i32 1
  %852 = add i32 %845, 1
  %853 = call i32 @llvm.smax.i32(i32 %837, i32 %852)
  br label %854

854:                                              ; preds = %842, %894
  %855 = phi ptr [ %847, %842 ], [ %899, %894 ]
  %856 = phi ptr [ %844, %842 ], [ %855, %894 ]
  %857 = phi i32 [ 1, %842 ], [ %897, %894 ]
  %858 = phi i32 [ %845, %842 ], [ %898, %894 ]
  %859 = phi double [ 0.000000e+00, %842 ], [ %896, %894 ]
  %860 = phi double [ 0.000000e+00, %842 ], [ %895, %894 ]
  %861 = load i32, ptr %855, align 4, !tbaa !129
  %862 = icmp eq i32 %861, %848
  br i1 %862, label %863, label %870

863:                                              ; preds = %854
  %864 = load float, ptr %851, align 4, !tbaa !131
  %865 = getelementptr inbounds %struct.DeepSample, ptr %856, i64 1, i32 1
  %866 = load float, ptr %865, align 4, !tbaa !131
  %867 = fsub float %864, %866
  %868 = call float @llvm.fabs.f32(float %867)
  %869 = fcmp ugt float %868, %838
  br i1 %869, label %901, label %894

870:                                              ; preds = %854
  %871 = sitofp i32 %861 to double
  %872 = fsub double %871, %849
  %873 = fdiv double 0x41DFFFFFFFC00000, %872
  %874 = getelementptr inbounds %struct.DeepSample, ptr %856, i64 1, i32 1
  %875 = load float, ptr %874, align 4, !tbaa !131
  %876 = fsub float %875, %838
  %877 = load float, ptr %850, align 4, !tbaa !131
  %878 = fsub float %876, %877
  %879 = fpext float %878 to double
  %880 = fmul double %873, %879
  %881 = fadd float %838, %875
  %882 = fsub float %881, %877
  %883 = fpext float %882 to double
  %884 = fmul double %873, %883
  %885 = icmp eq i32 %857, 0
  br i1 %885, label %886, label %894

886:                                              ; preds = %870
  %887 = fcmp ogt double %859, %880
  %888 = select i1 %887, double %859, double %880
  %889 = fcmp olt double %860, %884
  %890 = select i1 %889, double %860, double %884
  %891 = fcmp ogt double %888, %890
  br i1 %891, label %892, label %894

892:                                              ; preds = %886
  %893 = add nsw i32 %858, -1
  br label %901

894:                                              ; preds = %886, %870, %863
  %895 = phi double [ %860, %863 ], [ %890, %886 ], [ %884, %870 ]
  %896 = phi double [ %859, %863 ], [ %888, %886 ], [ %880, %870 ]
  %897 = phi i32 [ %857, %863 ], [ 0, %886 ], [ 0, %870 ]
  %898 = add nsw i32 %858, 1
  %899 = getelementptr inbounds %struct.DeepSample, ptr %855, i64 1
  %900 = icmp slt i32 %898, %837
  br i1 %900, label %854, label %901, !llvm.loop !149

901:                                              ; preds = %863, %894, %892
  %902 = phi double [ %860, %892 ], [ %860, %863 ], [ %895, %894 ]
  %903 = phi double [ %859, %892 ], [ %859, %863 ], [ %896, %894 ]
  %904 = phi i32 [ %857, %892 ], [ %857, %863 ], [ %897, %894 ]
  %905 = phi i32 [ %893, %892 ], [ %858, %863 ], [ %853, %894 ]
  %906 = phi ptr [ %856, %892 ], [ %855, %863 ], [ %899, %894 ]
  %907 = icmp eq i32 %905, %837
  %908 = sext i1 %907 to i32
  %909 = add nsw i32 %905, %908
  %910 = sext i1 %907 to i64
  %911 = getelementptr inbounds %struct.DeepSample, ptr %906, i64 %910
  %912 = load i32, ptr %911, align 4, !tbaa !129
  %913 = icmp ne i32 %904, 0
  %914 = icmp eq i32 %909, %841
  %915 = select i1 %913, i1 true, i1 %914
  br i1 %915, label %916, label %919

916:                                              ; preds = %901
  %917 = getelementptr inbounds %struct.DeepSample, ptr %906, i64 %910, i32 1
  %918 = load float, ptr %917, align 4, !tbaa !131
  br label %931

919:                                              ; preds = %901
  %920 = fadd double %902, %903
  %921 = fmul double %920, 5.000000e-01
  %922 = getelementptr inbounds %struct.DeepSample, ptr %846, i64 0, i32 1
  %923 = load float, ptr %922, align 4, !tbaa !131
  %924 = fpext float %923 to double
  %925 = load i32, ptr %846, align 4, !tbaa !129
  %926 = sub nsw i32 %912, %925
  %927 = sitofp i32 %926 to double
  %928 = fdiv double %927, 0x41DFFFFFFFC00000
  %929 = call double @llvm.fmuladd.f64(double %921, double %928, double %924)
  %930 = fptrunc double %929 to float
  br label %931

931:                                              ; preds = %919, %916
  %932 = phi float [ %918, %916 ], [ %930, %919 ]
  %933 = getelementptr inbounds %struct.DeepSample, ptr %846, i64 1
  %934 = add nuw nsw i32 %843, 1
  store i32 %912, ptr %933, align 4, !tbaa !129
  %935 = getelementptr inbounds %struct.DeepSample, ptr %846, i64 1, i32 1
  store float %932, ptr %935, align 4, !tbaa !131
  %936 = add nsw i32 %909, 1
  %937 = icmp slt i32 %936, %837
  br i1 %937, label %842, label %938, !llvm.loop !150

938:                                              ; preds = %931, %836
  %939 = phi ptr [ %770, %836 ], [ %933, %931 ]
  %940 = phi i32 [ 0, %836 ], [ %934, %931 ]
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %948, label %942

942:                                              ; preds = %938
  %943 = getelementptr inbounds %struct.DeepSample, ptr %939, i64 0, i32 1
  %944 = load float, ptr %943, align 4, !tbaa !131
  %945 = getelementptr %struct.DeepSample, ptr %939, i64 -1, i32 1
  %946 = load float, ptr %945, align 4, !tbaa !131
  %947 = fcmp une float %944, %946
  br i1 %947, label %948, label %950

948:                                              ; preds = %942, %938
  %949 = add nuw nsw i32 %940, 1
  br label %950

950:                                              ; preds = %948, %942
  %951 = phi i32 [ %949, %948 ], [ %940, %942 ]
  store i32 %951, ptr %767, align 4, !tbaa !92
  %952 = icmp slt i32 %951, %837
  br i1 %952, label %953, label %967

953:                                              ; preds = %950
  %954 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %955 = sext i32 %951 to i64
  %956 = shl nsw i64 %955, 3
  %957 = call ptr %954(i64 noundef %956, ptr noundef nonnull @.str.9) #14
  %958 = load ptr, ptr %451, align 8, !tbaa !115
  %959 = getelementptr inbounds ptr, ptr %958, i64 %483
  %960 = load ptr, ptr %959, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %957, ptr align 4 %960, i64 %956, i1 false)
  %961 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %962 = load ptr, ptr %451, align 8, !tbaa !115
  %963 = getelementptr inbounds ptr, ptr %962, i64 %483
  %964 = load ptr, ptr %963, align 8, !tbaa !45
  call void %961(ptr noundef %964) #14
  %965 = load ptr, ptr %451, align 8, !tbaa !115
  %966 = getelementptr inbounds ptr, ptr %965, i64 %483
  store ptr %957, ptr %966, align 8, !tbaa !45
  br label %967

967:                                              ; preds = %953, %950
  %968 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %968(ptr noundef %577) #14
  br label %969

969:                                              ; preds = %967, %568
  %970 = add nuw nsw i64 %483, 1
  %971 = getelementptr inbounds %struct.APixstr, ptr %484, i64 1
  %972 = getelementptr inbounds %struct.APixstrand, ptr %485, i64 1
  %973 = icmp eq i64 %970, %472
  br i1 %973, label %974, label %482, !llvm.loop !151

974:                                              ; preds = %969, %427
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #14
  %975 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %975(ptr noundef %416) #14
  %976 = icmp eq ptr %428, null
  br i1 %976, label %979, label %977

977:                                              ; preds = %974
  %978 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %978(ptr noundef nonnull %428) #14
  br label %979

979:                                              ; preds = %974, %977
  call void @freepsA(ptr noundef nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  store i16 1, ptr %304, align 4, !tbaa !90
  br label %1234

980:                                              ; preds = %404
  %981 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !45
  %982 = getelementptr inbounds %struct.ShadBuf, ptr %408, i64 0, i32 14
  %983 = load i32, ptr %982, align 8, !tbaa !87
  %984 = sext i32 %983 to i64
  %985 = shl nsw i64 %984, 2
  %986 = mul i64 %985, %984
  %987 = call ptr %981(i64 noundef %986, ptr noundef nonnull @.str.10) #14
  %988 = getelementptr inbounds %struct.ShadBuf, ptr %408, i64 0, i32 2
  %989 = load i16, ptr %988, align 4, !tbaa !90
  %990 = icmp sgt i16 %989, 0
  br i1 %990, label %991, label %1232

991:                                              ; preds = %980
  %992 = getelementptr inbounds %struct.ShadBuf, ptr %408, i64 0, i32 3
  %993 = getelementptr inbounds %struct.LampRen, ptr %1, i64 0, i32 7
  %994 = getelementptr inbounds %struct.ShadBuf, ptr %408, i64 0, i32 16
  %995 = getelementptr inbounds i32, ptr %3, i64 1
  %996 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %997 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %1003

998:                                              ; preds = %1226
  %999 = add nuw nsw i64 %1004, 1
  %1000 = load i16, ptr %988, align 4, !tbaa !90
  %1001 = sext i16 %1000 to i64
  %1002 = icmp slt i64 %999, %1001
  br i1 %1002, label %1003, label %1232, !llvm.loop !152

1003:                                             ; preds = %991, %998
  %1004 = phi i64 [ 0, %991 ], [ %999, %998 ]
  %1005 = load i32, ptr %982, align 8, !tbaa !87
  %1006 = shl nuw nsw i64 %1004, 1
  %1007 = getelementptr inbounds float, ptr %405, i64 %1006
  %1008 = load float, ptr %1007, align 4, !tbaa !77
  %1009 = or disjoint i64 %1006, 1
  %1010 = getelementptr inbounds float, ptr %405, i64 %1009
  %1011 = load float, ptr %1010, align 4, !tbaa !77
  call void @zbuffer_shadow(ptr noundef %0, ptr noundef nonnull %992, ptr noundef %1, ptr noundef %987, i32 noundef %1005, float noundef %1008, float noundef %1011) #14
  %1012 = load i32, ptr %993, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %1013 = load i32, ptr %982, align 8, !tbaa !87
  %1014 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %1015 = call ptr %1014(i64 noundef 48, ptr noundef nonnull @.str.5) #14
  call void @BLI_addtail(ptr noundef nonnull %994, ptr noundef %1015) #14
  %1016 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %1017 = mul nsw i32 %1013, %1013
  %1018 = lshr i32 %1017, 5
  %1019 = zext nneg i32 %1018 to i64
  %1020 = call ptr %1016(i64 noundef %1019, ptr noundef nonnull @.str.11) #14
  %1021 = getelementptr inbounds %struct.ShadSampleBuf, ptr %1015, i64 0, i32 2
  store ptr %1020, ptr %1021, align 8, !tbaa !153
  %1022 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %1023 = lshr i32 %1017, 8
  %1024 = zext nneg i32 %1023 to i64
  %1025 = call ptr %1022(i64 noundef %1024, ptr noundef nonnull @.str.12) #14
  %1026 = getelementptr inbounds %struct.ShadSampleBuf, ptr %1015, i64 0, i32 3
  store ptr %1025, ptr %1026, align 8, !tbaa !154
  %1027 = load ptr, ptr %1021, align 8, !tbaa !153
  %1028 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %1029 = call ptr %1028(i64 noundef 1028, ptr noundef nonnull @.str.13) #14
  %1030 = icmp sgt i32 %1013, 0
  br i1 %1030, label %1031, label %1226

1031:                                             ; preds = %1003
  %1032 = and i32 %1012, 128
  %1033 = lshr i32 %1013, 1
  %1034 = icmp eq i32 %1032, 0
  %1035 = add nuw nsw i32 %1033, 12
  %1036 = sitofp i32 %1035 to float
  %1037 = add nsw i32 %1013, -1
  %1038 = zext nneg i32 %1013 to i64
  %1039 = getelementptr inbounds i8, ptr %1029, i64 3
  %1040 = getelementptr inbounds i8, ptr %1029, i64 2
  %1041 = getelementptr i8, ptr %1029, i64 1024
  %1042 = zext nneg i32 %1033 to i64
  %1043 = zext nneg i32 %1013 to i64
  %1044 = zext nneg i32 %1033 to i64
  %1045 = getelementptr inbounds i8, ptr %1029, i64 7
  %1046 = getelementptr inbounds i8, ptr %1029, i64 6
  br label %1047

1047:                                             ; preds = %1031, %1223
  %1048 = phi i64 [ 0, %1031 ], [ %1058, %1223 ]
  %1049 = phi ptr [ %1025, %1031 ], [ %1219, %1223 ]
  %1050 = phi ptr [ %1027, %1031 ], [ %1218, %1223 ]
  %1051 = trunc i64 %1048 to i32
  %1052 = icmp ult i64 %1048, %1044
  %1053 = or disjoint i32 %1051, 15
  %1054 = trunc i64 %1048 to i32
  %1055 = select i1 %1052, i32 %1053, i32 %1054
  %1056 = sub nsw i32 %1055, %1033
  %1057 = mul nsw i32 %1056, %1056
  %1058 = add nuw i64 %1048, 16
  %1059 = trunc i64 %1058 to i32
  %1060 = icmp sgt i32 %1013, %1059
  %1061 = trunc i64 %1058 to i32
  %1062 = select i1 %1060, i32 %1061, i32 %1037
  %1063 = sext i32 %1062 to i64
  %1064 = icmp slt i64 %1048, %1063
  %1065 = mul nsw i64 %1048, %1043
  %1066 = getelementptr inbounds i32, ptr %987, i64 %1065
  %1067 = trunc i64 %1048 to i32
  br label %1068

1068:                                             ; preds = %1047, %1217
  %1069 = phi i64 [ 0, %1047 ], [ %1220, %1217 ]
  %1070 = phi ptr [ %1049, %1047 ], [ %1219, %1217 ]
  %1071 = phi ptr [ %1050, %1047 ], [ %1218, %1217 ]
  %1072 = trunc i64 %1069 to i32
  %1073 = icmp ult i64 %1069, %1042
  %1074 = or disjoint i32 %1072, 15
  %1075 = trunc i64 %1069 to i32
  %1076 = select i1 %1073, i32 %1074, i32 %1075
  %1077 = sub nsw i32 %1076, %1033
  %1078 = mul nsw i32 %1077, %1077
  %1079 = add nuw nsw i32 %1078, %1057
  %1080 = sitofp i32 %1079 to float
  %1081 = call float @sqrtf(float noundef %1080) #14
  %1082 = fcmp ogt float %1081, %1036
  %1083 = select i1 %1034, i1 %1082, i1 false
  br i1 %1083, label %1084, label %1085

1084:                                             ; preds = %1068
  store i32 0, ptr %3, align 4, !tbaa !92
  br label %1121

1085:                                             ; preds = %1068
  %1086 = add nuw nsw i64 %1069, 16
  %1087 = trunc i64 %1086 to i32
  %1088 = icmp sgt i32 %1013, %1087
  %1089 = trunc i64 %1086 to i32
  %1090 = select i1 %1088, i32 %1089, i32 %1037
  %1091 = sext i32 %1090 to i64
  %1092 = icmp slt i64 %1069, %1091
  %1093 = select i1 %1092, i1 %1064, i1 false
  br i1 %1093, label %1094, label %1108

1094:                                             ; preds = %1085
  %1095 = trunc i64 %1069 to i32
  %1096 = sub nsw i32 %1090, %1095
  %1097 = shl nsw i32 %1096, 2
  %1098 = getelementptr inbounds i32, ptr %1066, i64 %1069
  %1099 = sext i32 %1097 to i64
  br label %1100

1100:                                             ; preds = %1094, %1100
  %1101 = phi ptr [ %1098, %1094 ], [ %1104, %1100 ]
  %1102 = phi i32 [ %1067, %1094 ], [ %1106, %1100 ]
  %1103 = phi ptr [ %1029, %1094 ], [ %1105, %1100 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1103, ptr align 4 %1101, i64 %1099, i1 false)
  %1104 = getelementptr inbounds i32, ptr %1101, i64 %1038
  %1105 = getelementptr inbounds i8, ptr %1103, i64 %1099
  %1106 = add nuw nsw i32 %1102, 1
  %1107 = icmp eq i32 %1106, %1062
  br i1 %1107, label %1108, label %1100, !llvm.loop !155

1108:                                             ; preds = %1100, %1085
  %1109 = load i32, ptr %1029, align 4, !tbaa !92
  %1110 = and i32 %1109, -256
  store i32 %1110, ptr %3, align 4, !tbaa !92
  br label %1111

1111:                                             ; preds = %1108, %1117
  %1112 = phi i32 [ 0, %1108 ], [ %1118, %1117 ]
  %1113 = phi ptr [ %1029, %1108 ], [ %1119, %1117 ]
  %1114 = load i32, ptr %1113, align 4, !tbaa !92
  %1115 = and i32 %1114, -256
  %1116 = icmp eq i32 %1115, %1110
  br i1 %1116, label %1117, label %1121

1117:                                             ; preds = %1111
  %1118 = add nuw nsw i32 %1112, 1
  %1119 = getelementptr inbounds i32, ptr %1113, i64 1
  %1120 = icmp eq i32 %1118, 256
  br i1 %1120, label %1121, label %1111, !llvm.loop !156

1121:                                             ; preds = %1111, %1117, %1084
  %1122 = phi ptr [ %995, %1084 ], [ %1113, %1111 ], [ %1041, %1117 ]
  %1123 = phi i32 [ 256, %1084 ], [ %1112, %1111 ], [ 256, %1117 ]
  %1124 = icmp eq i32 %1123, 256
  br i1 %1124, label %1125, label %1129

1125:                                             ; preds = %1121
  store i8 0, ptr %1070, align 1, !tbaa !72
  %1126 = getelementptr inbounds i32, ptr %1122, i64 -1
  %1127 = load i32, ptr %1126, align 4, !tbaa !92
  %1128 = sext i32 %1127 to i64
  store i64 %1128, ptr %1071, align 8, !tbaa !157
  br label %1217

1129:                                             ; preds = %1121
  %1130 = load i8, ptr %1039, align 1, !tbaa !72
  %1131 = zext i8 %1130 to i32
  store i32 %1131, ptr %3, align 4, !tbaa !92
  %1132 = load i8, ptr %1040, align 1, !tbaa !72
  %1133 = load i8, ptr %1045, align 1, !tbaa !72
  %1134 = icmp eq i8 %1130, %1133
  %1135 = load i8, ptr %1046, align 1, !tbaa !72
  %1136 = icmp eq i8 %1132, %1135
  %1137 = zext i1 %1136 to i32
  br i1 %1134, label %1138, label %1156

1138:                                             ; preds = %1129, %1144
  %1139 = phi i32 [ %1152, %1144 ], [ %1137, %1129 ]
  %1140 = phi i32 [ %1142, %1144 ], [ 1, %1129 ]
  %1141 = phi ptr [ %1145, %1144 ], [ %1029, %1129 ]
  %1142 = add nuw nsw i32 %1140, 1
  %1143 = icmp eq i32 %1142, 256
  br i1 %1143, label %1153, label %1144, !llvm.loop !159

1144:                                             ; preds = %1138
  %1145 = getelementptr inbounds i8, ptr %1141, i64 4
  %1146 = getelementptr inbounds i8, ptr %1141, i64 11
  %1147 = load i8, ptr %1146, align 1, !tbaa !72
  %1148 = icmp eq i8 %1130, %1147
  %1149 = getelementptr inbounds i8, ptr %1141, i64 10
  %1150 = load i8, ptr %1149, align 1, !tbaa !72
  %1151 = icmp eq i8 %1132, %1150
  %1152 = select i1 %1151, i32 %1139, i32 0
  br i1 %1148, label %1138, label %1153, !llvm.loop !159

1153:                                             ; preds = %1144, %1138
  %1154 = phi i32 [ %1139, %1138 ], [ %1152, %1144 ]
  %1155 = icmp ugt i32 %1140, 254
  br label %1156

1156:                                             ; preds = %1153, %1129
  %1157 = phi i32 [ %1137, %1129 ], [ %1154, %1153 ]
  %1158 = phi i1 [ false, %1129 ], [ %1155, %1153 ]
  %1159 = icmp ne i32 %1157, 0
  %1160 = select i1 %1158, i1 %1159, i1 false
  br i1 %1160, label %1161, label %1177

1161:                                             ; preds = %1156
  store i8 1, ptr %1070, align 1, !tbaa !72
  %1162 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %1163 = call ptr %1162(i64 noundef 260, ptr noundef nonnull @.str.14) #14
  %1164 = ptrtoint ptr %1163 to i64
  store i64 %1164, ptr %1071, align 8, !tbaa !157
  %1165 = load i32, ptr %1029, align 4, !tbaa !92
  store i32 %1165, ptr %1163, align 4, !tbaa !92
  %1166 = getelementptr inbounds i32, ptr %1163, i64 1
  br label %1167

1167:                                             ; preds = %1161, %1167
  %1168 = phi ptr [ %1166, %1161 ], [ %1174, %1167 ]
  %1169 = phi ptr [ %1029, %1161 ], [ %1175, %1167 ]
  %1170 = phi i32 [ 0, %1161 ], [ %1173, %1167 ]
  %1171 = getelementptr inbounds i8, ptr %1169, i64 1
  %1172 = load i8, ptr %1171, align 1, !tbaa !72
  store i8 %1172, ptr %1168, align 1, !tbaa !72
  %1173 = add nuw nsw i32 %1170, 1
  %1174 = getelementptr inbounds i8, ptr %1168, i64 1
  %1175 = getelementptr inbounds i8, ptr %1169, i64 4
  %1176 = icmp eq i32 %1173, 256
  br i1 %1176, label %1217, label %1167, !llvm.loop !160

1177:                                             ; preds = %1156
  br i1 %1158, label %1178, label %1197

1178:                                             ; preds = %1177
  store i8 2, ptr %1070, align 1, !tbaa !72
  %1179 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %1180 = call ptr %1179(i64 noundef 516, ptr noundef nonnull @.str.15) #14
  %1181 = ptrtoint ptr %1180 to i64
  store i64 %1181, ptr %1071, align 8, !tbaa !157
  %1182 = load i32, ptr %1029, align 4, !tbaa !92
  store i32 %1182, ptr %1180, align 4, !tbaa !92
  %1183 = getelementptr inbounds i32, ptr %1180, i64 1
  br label %1184

1184:                                             ; preds = %1178, %1184
  %1185 = phi ptr [ %1183, %1178 ], [ %1194, %1184 ]
  %1186 = phi ptr [ %1029, %1178 ], [ %1195, %1184 ]
  %1187 = phi i32 [ 0, %1178 ], [ %1193, %1184 ]
  %1188 = getelementptr inbounds i8, ptr %1186, i64 2
  %1189 = load i8, ptr %1188, align 1, !tbaa !72
  store i8 %1189, ptr %1185, align 1, !tbaa !72
  %1190 = getelementptr inbounds i8, ptr %1186, i64 1
  %1191 = load i8, ptr %1190, align 1, !tbaa !72
  %1192 = getelementptr inbounds i8, ptr %1185, i64 1
  store i8 %1191, ptr %1192, align 1, !tbaa !72
  %1193 = add nuw nsw i32 %1187, 1
  %1194 = getelementptr inbounds i8, ptr %1185, i64 2
  %1195 = getelementptr inbounds i8, ptr %1186, i64 4
  %1196 = icmp eq i32 %1193, 256
  br i1 %1196, label %1217, label %1184, !llvm.loop !161

1197:                                             ; preds = %1177
  store i8 3, ptr %1070, align 1, !tbaa !72
  %1198 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %1199 = call ptr %1198(i64 noundef 768, ptr noundef nonnull @.str.16) #14
  %1200 = ptrtoint ptr %1199 to i64
  store i64 %1200, ptr %1071, align 8, !tbaa !157
  br label %1201

1201:                                             ; preds = %1197, %1201
  %1202 = phi ptr [ %1199, %1197 ], [ %1214, %1201 ]
  %1203 = phi ptr [ %1029, %1197 ], [ %1215, %1201 ]
  %1204 = phi i32 [ 0, %1197 ], [ %1213, %1201 ]
  %1205 = getelementptr inbounds i8, ptr %1203, i64 3
  %1206 = load i8, ptr %1205, align 1, !tbaa !72
  store i8 %1206, ptr %1202, align 1, !tbaa !72
  %1207 = getelementptr inbounds i8, ptr %1203, i64 2
  %1208 = load i8, ptr %1207, align 1, !tbaa !72
  %1209 = getelementptr inbounds i8, ptr %1202, i64 1
  store i8 %1208, ptr %1209, align 1, !tbaa !72
  %1210 = getelementptr inbounds i8, ptr %1203, i64 1
  %1211 = load i8, ptr %1210, align 1, !tbaa !72
  %1212 = getelementptr inbounds i8, ptr %1202, i64 2
  store i8 %1211, ptr %1212, align 1, !tbaa !72
  %1213 = add nuw nsw i32 %1204, 1
  %1214 = getelementptr inbounds i8, ptr %1202, i64 3
  %1215 = getelementptr inbounds i8, ptr %1203, i64 4
  %1216 = icmp eq i32 %1213, 256
  br i1 %1216, label %1217, label %1201, !llvm.loop !162

1217:                                             ; preds = %1201, %1184, %1167, %1125
  %1218 = getelementptr inbounds i64, ptr %1071, i64 1
  %1219 = getelementptr inbounds i8, ptr %1070, i64 1
  %1220 = add nuw i64 %1069, 16
  %1221 = trunc i64 %1220 to i32
  %1222 = icmp sgt i32 %1013, %1221
  br i1 %1222, label %1068, label %1223, !llvm.loop !163

1223:                                             ; preds = %1217
  %1224 = trunc i64 %1058 to i32
  %1225 = icmp sgt i32 %1013, %1224
  br i1 %1225, label %1047, label %1226, !llvm.loop !164

1226:                                             ; preds = %1223, %1003
  %1227 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %1227(ptr noundef %1029) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %1228 = load ptr, ptr %996, align 8, !tbaa !165
  %1229 = load ptr, ptr %997, align 8, !tbaa !166
  %1230 = call i32 %1228(ptr noundef %1229) #14
  %1231 = icmp eq i32 %1230, 0
  br i1 %1231, label %998, label %1232

1232:                                             ; preds = %1226, %998, %980
  %1233 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %1233(ptr noundef %987) #14
  br label %1234

1234:                                             ; preds = %276, %979, %1232
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #3

declare void @perspective_m4(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #4

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #4

declare i32 @get_render_shadow_samples(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @threaded_makeshadowbufs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %3 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !167
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 67
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %17, %9 ], [ %7, %5 ]
  %11 = phi i32 [ %16, %9 ], [ 0, %5 ]
  %12 = getelementptr inbounds %struct.LampRen, ptr %10, i64 0, i32 57
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp ne ptr %13, null
  %15 = zext i1 %14 to i32
  %16 = add nuw nsw i32 %11, %15
  %17 = load ptr, ptr %10, align 8, !tbaa !45
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !169

19:                                               ; preds = %9, %5
  %20 = phi i32 [ 0, %5 ], [ %16, %9 ]
  %21 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 14
  %22 = load i16, ptr %21, align 2, !tbaa !170
  %23 = sext i16 %22 to i32
  %24 = tail call i32 @llvm.smin.i32(i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %1, %19
  %26 = phi i32 [ %24, %19 ], [ 1, %1 ]
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 67
  %30 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %31 = load ptr, ptr %29, align 8, !tbaa !45
  %32 = icmp eq ptr %31, null
  br i1 %32, label %93, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %35

35:                                               ; preds = %33, %46
  %36 = phi ptr [ %31, %33 ], [ %47, %46 ]
  %37 = load ptr, ptr %30, align 8, !tbaa !165
  %38 = load ptr, ptr %34, align 8, !tbaa !166
  %39 = tail call i32 %37(ptr noundef %38) #14
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %93

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.LampRen, ptr %36, i64 0, i32 57
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @makeshadowbuf(ptr noundef %0, ptr noundef nonnull %36)
  br label %46

46:                                               ; preds = %41, %45
  %47 = load ptr, ptr %36, align 8, !tbaa !45
  %48 = icmp eq ptr %47, null
  br i1 %48, label %93, label %35, !llvm.loop !171

49:                                               ; preds = %25
  %50 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %51 = load ptr, ptr %50, align 8, !tbaa !165
  store ptr @thread_break, ptr %50, align 8, !tbaa !165
  %52 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 67
  %53 = load ptr, ptr %52, align 8, !tbaa !45
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %49, %55
  %56 = phi ptr [ %59, %55 ], [ %53, %49 ]
  %57 = getelementptr inbounds %struct.LampRen, ptr %56, i64 0, i32 70
  store i32 0, ptr %57, align 8, !tbaa !172
  %58 = getelementptr inbounds %struct.LampRen, ptr %56, i64 0, i32 71
  store i32 0, ptr %58, align 4, !tbaa !173
  %59 = load ptr, ptr %56, align 8, !tbaa !45
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %55, !llvm.loop !174

61:                                               ; preds = %55, %49
  call void @BLI_init_threads(ptr noundef nonnull %2, ptr noundef nonnull @do_shadow_thread, i32 noundef %26) #14
  %62 = call i32 @llvm.smax.i32(i32 %26, i32 1)
  br label %68

63:                                               ; preds = %68
  %64 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  %65 = load ptr, ptr %64, align 8, !tbaa !166
  %66 = call i32 %51(ptr noundef %65) #14
  store volatile i32 %66, ptr @g_break, align 4, !tbaa !92
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %92

68:                                               ; preds = %61, %68
  %69 = phi i32 [ %70, %68 ], [ 0, %61 ]
  call void @BLI_insert_thread(ptr noundef nonnull %2, ptr noundef %0) #14
  %70 = add nuw nsw i32 %69, 1
  %71 = icmp eq i32 %70, %62
  br i1 %71, label %63, label %68, !llvm.loop !175

72:                                               ; preds = %63, %87
  call void @PIL_sleep_ms(i32 noundef 50) #14
  call void @BLI_lock_thread(i32 noundef 3) #14
  %73 = load ptr, ptr %52, align 8, !tbaa !45
  %74 = icmp eq ptr %73, null
  br i1 %74, label %91, label %75

75:                                               ; preds = %72, %84
  %76 = phi ptr [ %85, %84 ], [ %73, %72 ]
  %77 = getelementptr inbounds %struct.LampRen, ptr %76, i64 0, i32 57
  %78 = load ptr, ptr %77, align 8, !tbaa !34
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.LampRen, ptr %76, i64 0, i32 71
  %82 = load i32, ptr %81, align 4, !tbaa !173
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %75, %80
  %85 = load ptr, ptr %76, align 8, !tbaa !45
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %75, !llvm.loop !176

87:                                               ; preds = %80
  call void @BLI_unlock_thread(i32 noundef 3) #14
  %88 = load ptr, ptr %64, align 8, !tbaa !166
  %89 = call i32 %51(ptr noundef %88) #14
  store volatile i32 %89, ptr @g_break, align 4, !tbaa !92
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %72, label %92, !llvm.loop !177

91:                                               ; preds = %72, %84
  call void @BLI_unlock_thread(i32 noundef 3) #14
  br label %92

92:                                               ; preds = %87, %63, %91
  call void @BLI_end_threads(ptr noundef nonnull %2) #14
  store ptr %51, ptr %50, align 8, !tbaa !165
  store volatile i32 0, ptr @g_break, align 4, !tbaa !92
  br label %93

93:                                               ; preds = %35, %46, %28, %92
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none) uwtable
define internal i32 @thread_break(ptr nocapture readnone %0) #5 {
  %2 = load volatile i32, ptr @g_break, align 4, !tbaa !92
  ret i32 %2
}

declare void @BLI_init_threads(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef ptr @do_shadow_thread(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 96
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 67
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 97
  br label %5

5:                                                ; preds = %26, %1
  tail call void @BLI_lock_thread(i32 noundef 3) #14
  %6 = load ptr, ptr %3, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %5, %21
  %9 = phi i1 [ %23, %21 ], [ %7, %5 ]
  %10 = phi ptr [ %22, %21 ], [ %6, %5 ]
  %11 = getelementptr inbounds %struct.LampRen, ptr %10, i64 0, i32 57
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.LampRen, ptr %10, i64 0, i32 70
  %16 = load i32, ptr %15, align 8, !tbaa !172
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.LampRen, ptr %10, i64 0, i32 70
  store i32 1, ptr %19, align 8, !tbaa !172
  tail call void @BLI_unlock_thread(i32 noundef 3) #14
  tail call void @makeshadowbuf(ptr noundef %0, ptr noundef nonnull %10)
  tail call void @BLI_lock_thread(i32 noundef 3) #14
  %20 = getelementptr inbounds %struct.LampRen, ptr %10, i64 0, i32 71
  store i32 1, ptr %20, align 4, !tbaa !173
  br label %24

21:                                               ; preds = %8, %14
  %22 = load ptr, ptr %10, align 8, !tbaa !45
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %8, !llvm.loop !178

24:                                               ; preds = %21, %5, %18
  %25 = phi i1 [ %9, %18 ], [ %7, %5 ], [ %23, %21 ]
  tail call void @BLI_unlock_thread(i32 noundef 3) #14
  br i1 %25, label %31, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %2, align 8, !tbaa !165
  %28 = load ptr, ptr %4, align 8, !tbaa !166
  %29 = tail call i32 %27(ptr noundef %28) #14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %5, label %31, !llvm.loop !179

31:                                               ; preds = %24, %26
  ret ptr null
}

declare void @BLI_insert_thread(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @PIL_sleep_ms(i32 noundef) local_unnamed_addr #4

declare void @BLI_end_threads(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @freeshadowbuf(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 57
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %83, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ShadBuf, ptr %3, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %74, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ShadBuf, ptr %3, i64 0, i32 14
  %11 = getelementptr inbounds %struct.ShadBuf, ptr %3, i64 0, i32 14
  br label %12

12:                                               ; preds = %9, %68
  %13 = phi ptr [ %7, %9 ], [ %72, %68 ]
  %14 = getelementptr inbounds %struct.ShadSampleBuf, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !115
  %16 = icmp eq ptr %15, null
  br i1 %16, label %39, label %17

17:                                               ; preds = %12
  %18 = load i32, ptr %10, align 8, !tbaa !87
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %17
  %21 = mul i32 %18, %18
  %22 = tail call i32 @llvm.umax.i32(i32 %21, i32 1)
  %23 = zext i32 %22 to i64
  br label %24

24:                                               ; preds = %20, %32
  %25 = phi i64 [ 0, %20 ], [ %33, %32 ]
  %26 = load ptr, ptr %14, align 8, !tbaa !115
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %31(ptr noundef nonnull %28) #14
  br label %32

32:                                               ; preds = %24, %30
  %33 = add nuw nsw i64 %25, 1
  %34 = icmp eq i64 %33, %23
  br i1 %34, label %35, label %24, !llvm.loop !180

35:                                               ; preds = %32, %17
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %37 = load ptr, ptr %14, align 8, !tbaa !115
  tail call void %36(ptr noundef %37) #14
  %38 = getelementptr inbounds %struct.ShadSampleBuf, ptr %13, i64 0, i32 5
  br label %68

39:                                               ; preds = %12
  %40 = getelementptr inbounds %struct.ShadSampleBuf, ptr %13, i64 0, i32 2
  %41 = getelementptr inbounds %struct.ShadSampleBuf, ptr %13, i64 0, i32 3
  %42 = load i32, ptr %11, align 8, !tbaa !87
  %43 = mul nsw i32 %42, %42
  %44 = icmp ult i32 %43, 256
  br i1 %44, label %65, label %45

45:                                               ; preds = %39
  %46 = lshr i32 %43, 8
  %47 = load ptr, ptr %41, align 8, !tbaa !154
  %48 = load ptr, ptr %40, align 8, !tbaa !153
  %49 = tail call i32 @llvm.umax.i32(i32 %46, i32 1)
  br label %50

50:                                               ; preds = %45, %60
  %51 = phi ptr [ %63, %60 ], [ %47, %45 ]
  %52 = phi ptr [ %62, %60 ], [ %48, %45 ]
  %53 = phi i32 [ %61, %60 ], [ 0, %45 ]
  %54 = load i8, ptr %51, align 1, !tbaa !72
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %58 = load i64, ptr %52, align 8, !tbaa !157
  %59 = inttoptr i64 %58 to ptr
  tail call void %57(ptr noundef %59) #14
  br label %60

60:                                               ; preds = %50, %56
  %61 = add nuw nsw i32 %53, 1
  %62 = getelementptr inbounds i64, ptr %52, i64 1
  %63 = getelementptr inbounds i8, ptr %51, i64 1
  %64 = icmp eq i32 %61, %49
  br i1 %64, label %65, label %50, !llvm.loop !181

65:                                               ; preds = %60, %39
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %67 = load ptr, ptr %40, align 8, !tbaa !153
  tail call void %66(ptr noundef %67) #14
  br label %68

68:                                               ; preds = %35, %65
  %69 = phi ptr [ %38, %35 ], [ %41, %65 ]
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %71 = load ptr, ptr %69, align 8, !tbaa !45
  tail call void %70(ptr noundef %71) #14
  %72 = load ptr, ptr %13, align 8, !tbaa !45
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %12, !llvm.loop !182

74:                                               ; preds = %68, %5
  tail call void @BLI_freelistN(ptr noundef nonnull %6) #14
  %75 = getelementptr inbounds %struct.ShadBuf, ptr %3, i64 0, i32 7
  %76 = load ptr, ptr %75, align 8, !tbaa !96
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %79(ptr noundef nonnull %76) #14
  br label %80

80:                                               ; preds = %78, %74
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %82 = load ptr, ptr %2, align 8, !tbaa !34
  tail call void %81(ptr noundef %82) #14
  store ptr null, ptr %2, align 8, !tbaa !34
  br label %83

83:                                               ; preds = %80, %1
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local float @testshadowbuf(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, float noundef %5, float noundef %6) local_unnamed_addr #0 {
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 16
  %12 = load ptr, ptr %11, align 8, !tbaa !183
  %13 = icmp eq ptr %12, null
  br i1 %13, label %363, label %14

14:                                               ; preds = %7
  %15 = fcmp ugt float %5, 0.000000e+00
  br i1 %15, label %16, label %363

16:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #14
  %17 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 14
  %18 = load i32, ptr %17, align 8, !tbaa !87
  %19 = sitofp i32 %18 to float
  %20 = fmul float %19, 5.000000e-01
  %21 = load float, ptr %2, align 4, !tbaa !77
  store float %21, ptr %10, align 16, !tbaa !77
  %22 = getelementptr inbounds float, ptr %2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !77
  %24 = getelementptr inbounds float, ptr %10, i64 1
  store float %23, ptr %24, align 4, !tbaa !77
  %25 = getelementptr inbounds float, ptr %2, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !77
  %27 = getelementptr inbounds float, ptr %10, i64 2
  store float %26, ptr %27, align 8, !tbaa !77
  %28 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 3
  store float 1.000000e+00, ptr %28, align 4, !tbaa !77
  %29 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 3
  call void @mul_m4_v4(ptr noundef nonnull %29, ptr noundef nonnull %10) #14
  %30 = load float, ptr %10, align 16, !tbaa !77
  %31 = load float, ptr %28, align 4, !tbaa !77
  %32 = fdiv float %30, %31
  %33 = fadd float %32, 1.000000e+00
  %34 = fmul float %20, %33
  %35 = load float, ptr %24, align 4, !tbaa !77
  %36 = fdiv float %35, %31
  %37 = fadd float %36, 1.000000e+00
  %38 = fmul float %20, %37
  %39 = load float, ptr %27, align 8, !tbaa !77
  %40 = fdiv float %39, %31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #14
  %41 = fcmp ult float %40, 1.000000e+00
  br i1 %41, label %42, label %363

42:                                               ; preds = %16
  %43 = fcmp ugt float %40, -1.000000e+00
  br i1 %43, label %44, label %363

44:                                               ; preds = %42
  %45 = fmul float %40, 0x41E0000000000000
  %46 = fptosi float %45 to i32
  %47 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45
  %48 = load i16, ptr %1, align 8, !tbaa !91
  %49 = sext i16 %48 to i32
  %50 = call i32 @get_render_shadow_samples(ptr noundef nonnull %47, i32 noundef %49) #14
  %51 = mul i32 %50, %50
  %52 = trunc i32 %51 to i16
  %53 = fcmp une float %6, 0.000000e+00
  %54 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 15
  %55 = load i32, ptr %54, align 4, !tbaa !85
  %56 = sitofp i32 %55 to float
  %57 = select i1 %53, float %6, float 1.000000e+00
  %58 = fmul float %57, %56
  %59 = fneg float %5
  %60 = call float @llvm.fmuladd.f32(float %59, float %5, float 1.500000e+00)
  %61 = fmul float %60, %58
  %62 = fptosi float %61 to i32
  %63 = and i32 %51, 65535
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %84

65:                                               ; preds = %44
  %66 = load ptr, ptr %11, align 8, !tbaa !45
  %67 = icmp eq ptr %66, null
  br i1 %67, label %78, label %68

68:                                               ; preds = %65
  %69 = fptosi float %34 to i32
  %70 = fptosi float %38 to i32
  br label %71

71:                                               ; preds = %68, %71
  %72 = phi ptr [ %66, %68 ], [ %76, %71 ]
  %73 = phi float [ 0.000000e+00, %68 ], [ %75, %71 ]
  %74 = call fastcc float @readshadowbuf(ptr noundef nonnull %1, ptr noundef nonnull %72, i32 noundef %62, i32 noundef %69, i32 noundef %70, i32 noundef %46)
  %75 = fadd float %73, %74
  %76 = load ptr, ptr %72, align 8, !tbaa !45
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %71, !llvm.loop !184

78:                                               ; preds = %71, %65
  %79 = phi float [ 0.000000e+00, %65 ], [ %75, %71 ]
  %80 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 2
  %81 = load i16, ptr %80, align 4, !tbaa !90
  %82 = sitofp i16 %81 to float
  %83 = fdiv float %79, %82
  br label %363

84:                                               ; preds = %44
  %85 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 11
  %86 = load float, ptr %85, align 4, !tbaa !185
  %87 = load float, ptr %2, align 4, !tbaa !77
  %88 = load float, ptr %3, align 4, !tbaa !77
  %89 = fadd float %87, %88
  %90 = load float, ptr %22, align 4, !tbaa !77
  %91 = getelementptr inbounds float, ptr %3, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !77
  %93 = fadd float %90, %92
  %94 = load float, ptr %25, align 4, !tbaa !77
  %95 = getelementptr inbounds float, ptr %3, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !77
  %97 = fadd float %94, %96
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #14
  %98 = load i32, ptr %17, align 8, !tbaa !87
  %99 = sitofp i32 %98 to float
  %100 = fmul float %99, 5.000000e-01
  store float %89, ptr %9, align 16, !tbaa !77
  %101 = getelementptr inbounds float, ptr %9, i64 1
  store float %93, ptr %101, align 4, !tbaa !77
  %102 = getelementptr inbounds float, ptr %9, i64 2
  store float %97, ptr %102, align 8, !tbaa !77
  %103 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  store float 1.000000e+00, ptr %103, align 4, !tbaa !77
  call void @mul_m4_v4(ptr noundef nonnull %29, ptr noundef nonnull %9) #14
  %104 = load float, ptr %9, align 16, !tbaa !77
  %105 = load float, ptr %103, align 4, !tbaa !77
  %106 = fdiv float %104, %105
  %107 = fadd float %106, 1.000000e+00
  %108 = fmul float %100, %107
  %109 = load float, ptr %101, align 4, !tbaa !77
  %110 = fdiv float %109, %105
  %111 = fadd float %110, 1.000000e+00
  %112 = fmul float %100, %111
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  %113 = fsub float %34, %108
  %114 = fsub float %38, %112
  %115 = load float, ptr %2, align 4, !tbaa !77
  %116 = load float, ptr %4, align 4, !tbaa !77
  %117 = fadd float %115, %116
  %118 = load float, ptr %22, align 4, !tbaa !77
  %119 = getelementptr inbounds float, ptr %4, i64 1
  %120 = load float, ptr %119, align 4, !tbaa !77
  %121 = fadd float %118, %120
  %122 = load float, ptr %25, align 4, !tbaa !77
  %123 = getelementptr inbounds float, ptr %4, i64 2
  %124 = load float, ptr %123, align 4, !tbaa !77
  %125 = fadd float %122, %124
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  %126 = load i32, ptr %17, align 8, !tbaa !87
  %127 = sitofp i32 %126 to float
  %128 = fmul float %127, 5.000000e-01
  store float %117, ptr %8, align 16, !tbaa !77
  %129 = getelementptr inbounds float, ptr %8, i64 1
  store float %121, ptr %129, align 4, !tbaa !77
  %130 = getelementptr inbounds float, ptr %8, i64 2
  store float %125, ptr %130, align 8, !tbaa !77
  %131 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  store float 1.000000e+00, ptr %131, align 4, !tbaa !77
  call void @mul_m4_v4(ptr noundef nonnull %29, ptr noundef nonnull %8) #14
  %132 = load float, ptr %8, align 16, !tbaa !77
  %133 = load float, ptr %131, align 4, !tbaa !77
  %134 = fdiv float %132, %133
  %135 = fadd float %134, 1.000000e+00
  %136 = fmul float %128, %135
  %137 = load float, ptr %129, align 4, !tbaa !77
  %138 = fdiv float %137, %133
  %139 = fadd float %138, 1.000000e+00
  %140 = fmul float %128, %139
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  %141 = fsub float %34, %136
  %142 = fsub float %38, %140
  %143 = call float @llvm.fabs.f32(float %113)
  %144 = call float @llvm.fabs.f32(float %141)
  %145 = fadd float %143, %144
  %146 = fmul float %86, %145
  %147 = call float @llvm.fabs.f32(float %114)
  %148 = call float @llvm.fabs.f32(float %142)
  %149 = fadd float %147, %148
  %150 = fmul float %86, %149
  %151 = fcmp olt float %146, 1.000000e+00
  %152 = select i1 %151, float 1.000000e+00, float %146
  %153 = fcmp olt float %150, 1.000000e+00
  %154 = select i1 %153, float 1.000000e+00, float %150
  %155 = fneg float %152
  %156 = call float @llvm.fmuladd.f32(float %155, float 5.000000e-01, float %34)
  %157 = fneg float %154
  %158 = call float @llvm.fmuladd.f32(float %157, float 5.000000e-01, float %38)
  %159 = fcmp olt float %152, 1.600000e+01
  %160 = fcmp olt float %154, 1.600000e+01
  %161 = select i1 %159, i1 %160, i1 false
  br i1 %161, label %162, label %320

162:                                              ; preds = %84
  %163 = load ptr, ptr %11, align 8, !tbaa !183
  %164 = fptosi float %156 to i32
  %165 = fptosi float %158 to i32
  %166 = getelementptr inbounds %struct.ShadSampleBuf, ptr %163, i64 0, i32 4
  %167 = load ptr, ptr %166, align 8, !tbaa !115
  %168 = icmp ne ptr %167, null
  br i1 %168, label %203, label %169

169:                                              ; preds = %162
  %170 = icmp slt i32 %164, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %169
  %172 = load i32, ptr %17, align 8, !tbaa !87
  %173 = icmp sgt i32 %172, %164
  %174 = add nsw i32 %172, -1
  %175 = select i1 %173, i32 %164, i32 %174
  %176 = ashr i32 %175, 4
  br label %177

177:                                              ; preds = %171, %169
  %178 = phi i32 [ 0, %169 ], [ %176, %171 ]
  %179 = icmp slt i32 %165, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %177
  %181 = load i32, ptr %17, align 8, !tbaa !87
  %182 = icmp sgt i32 %181, %165
  %183 = add nsw i32 %181, -1
  %184 = select i1 %182, i32 %165, i32 %183
  %185 = ashr i32 %184, 4
  br label %186

186:                                              ; preds = %180, %177
  %187 = phi i32 [ 0, %177 ], [ %185, %180 ]
  %188 = load i32, ptr %17, align 8, !tbaa !87
  %189 = ashr i32 %188, 4
  %190 = mul nsw i32 %189, %187
  %191 = add nsw i32 %190, %178
  %192 = getelementptr inbounds %struct.ShadSampleBuf, ptr %163, i64 0, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !154
  %194 = sext i32 %191 to i64
  %195 = getelementptr inbounds i8, ptr %193, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !72
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %186
  %199 = getelementptr inbounds %struct.ShadSampleBuf, ptr %163, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !153
  %201 = getelementptr inbounds i64, ptr %200, i64 %194
  %202 = load ptr, ptr %201, align 8, !tbaa !45
  br label %203

203:                                              ; preds = %162, %186, %198
  %204 = phi ptr [ %202, %198 ], [ undef, %186 ], [ undef, %162 ]
  %205 = phi i1 [ false, %198 ], [ true, %186 ], [ true, %162 ]
  br i1 %205, label %320, label %206

206:                                              ; preds = %203
  %207 = fadd float %152, %156
  %208 = fptosi float %207 to i32
  br i1 %168, label %320, label %209

209:                                              ; preds = %206
  %210 = icmp slt i32 %208, 0
  br i1 %210, label %217, label %211

211:                                              ; preds = %209
  %212 = load i32, ptr %17, align 8, !tbaa !87
  %213 = icmp sgt i32 %212, %208
  %214 = add nsw i32 %212, -1
  %215 = select i1 %213, i32 %208, i32 %214
  %216 = ashr i32 %215, 4
  br label %217

217:                                              ; preds = %211, %209
  %218 = phi i32 [ 0, %209 ], [ %216, %211 ]
  %219 = icmp slt i32 %165, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %217
  %221 = load i32, ptr %17, align 8, !tbaa !87
  %222 = icmp sgt i32 %221, %165
  %223 = add nsw i32 %221, -1
  %224 = select i1 %222, i32 %165, i32 %223
  %225 = ashr i32 %224, 4
  br label %226

226:                                              ; preds = %220, %217
  %227 = phi i32 [ 0, %217 ], [ %225, %220 ]
  %228 = load i32, ptr %17, align 8, !tbaa !87
  %229 = ashr i32 %228, 4
  %230 = mul nsw i32 %229, %227
  %231 = add nsw i32 %230, %218
  %232 = getelementptr inbounds %struct.ShadSampleBuf, ptr %163, i64 0, i32 3
  %233 = load ptr, ptr %232, align 8, !tbaa !154
  %234 = sext i32 %231 to i64
  %235 = getelementptr inbounds i8, ptr %233, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !72
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %238, label %320

238:                                              ; preds = %226
  %239 = getelementptr inbounds %struct.ShadSampleBuf, ptr %163, i64 0, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !153
  %241 = getelementptr inbounds i64, ptr %240, i64 %234
  %242 = load ptr, ptr %241, align 8, !tbaa !45
  %243 = icmp eq ptr %204, %242
  br i1 %243, label %244, label %320

244:                                              ; preds = %238
  %245 = fadd float %154, %158
  %246 = fptosi float %245 to i32
  br i1 %168, label %320, label %247

247:                                              ; preds = %244
  %248 = icmp slt i32 %164, 0
  br i1 %248, label %255, label %249

249:                                              ; preds = %247
  %250 = load i32, ptr %17, align 8, !tbaa !87
  %251 = icmp sgt i32 %250, %164
  %252 = add nsw i32 %250, -1
  %253 = select i1 %251, i32 %164, i32 %252
  %254 = ashr i32 %253, 4
  br label %255

255:                                              ; preds = %249, %247
  %256 = phi i32 [ 0, %247 ], [ %254, %249 ]
  %257 = icmp slt i32 %246, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %255
  %259 = load i32, ptr %17, align 8, !tbaa !87
  %260 = icmp sgt i32 %259, %246
  %261 = add nsw i32 %259, -1
  %262 = select i1 %260, i32 %246, i32 %261
  %263 = ashr i32 %262, 4
  br label %264

264:                                              ; preds = %258, %255
  %265 = phi i32 [ 0, %255 ], [ %263, %258 ]
  %266 = load i32, ptr %17, align 8, !tbaa !87
  %267 = ashr i32 %266, 4
  %268 = mul nsw i32 %267, %265
  %269 = add nsw i32 %268, %256
  %270 = getelementptr inbounds %struct.ShadSampleBuf, ptr %163, i64 0, i32 3
  %271 = load ptr, ptr %270, align 8, !tbaa !154
  %272 = sext i32 %269 to i64
  %273 = getelementptr inbounds i8, ptr %271, i64 %272
  %274 = load i8, ptr %273, align 1, !tbaa !72
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %276, label %320

276:                                              ; preds = %264
  %277 = getelementptr inbounds %struct.ShadSampleBuf, ptr %163, i64 0, i32 2
  %278 = load ptr, ptr %277, align 8, !tbaa !153
  %279 = getelementptr inbounds i64, ptr %278, i64 %272
  %280 = load ptr, ptr %279, align 8, !tbaa !45
  %281 = icmp ne ptr %204, %280
  %282 = or i1 %168, %281
  br i1 %282, label %320, label %283

283:                                              ; preds = %276
  %284 = icmp slt i32 %208, 0
  br i1 %284, label %291, label %285

285:                                              ; preds = %283
  %286 = load i32, ptr %17, align 8, !tbaa !87
  %287 = icmp sgt i32 %286, %208
  %288 = add nsw i32 %286, -1
  %289 = select i1 %287, i32 %208, i32 %288
  %290 = ashr i32 %289, 4
  br label %291

291:                                              ; preds = %285, %283
  %292 = phi i32 [ 0, %283 ], [ %290, %285 ]
  %293 = icmp slt i32 %246, 0
  br i1 %293, label %300, label %294

294:                                              ; preds = %291
  %295 = load i32, ptr %17, align 8, !tbaa !87
  %296 = icmp sgt i32 %295, %246
  %297 = add nsw i32 %295, -1
  %298 = select i1 %296, i32 %246, i32 %297
  %299 = ashr i32 %298, 4
  br label %300

300:                                              ; preds = %294, %291
  %301 = phi i32 [ 0, %291 ], [ %299, %294 ]
  %302 = load i32, ptr %17, align 8, !tbaa !87
  %303 = ashr i32 %302, 4
  %304 = mul nsw i32 %303, %301
  %305 = add nsw i32 %304, %292
  %306 = getelementptr inbounds %struct.ShadSampleBuf, ptr %163, i64 0, i32 3
  %307 = load ptr, ptr %306, align 8, !tbaa !154
  %308 = sext i32 %305 to i64
  %309 = getelementptr inbounds i8, ptr %307, i64 %308
  %310 = load i8, ptr %309, align 1, !tbaa !72
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %312, label %320

312:                                              ; preds = %300
  %313 = getelementptr inbounds %struct.ShadSampleBuf, ptr %163, i64 0, i32 2
  %314 = load ptr, ptr %313, align 8, !tbaa !153
  %315 = getelementptr inbounds i64, ptr %314, i64 %308
  %316 = load ptr, ptr %315, align 8, !tbaa !45
  %317 = icmp eq ptr %204, %316
  br i1 %317, label %318, label %320

318:                                              ; preds = %312
  %319 = call fastcc float @readshadowbuf(ptr noundef nonnull %1, ptr noundef %163, i32 noundef %62, i32 noundef %164, i32 noundef %165, i32 noundef %46)
  br label %363

320:                                              ; preds = %276, %300, %244, %264, %206, %226, %203, %312, %238, %84
  %321 = load ptr, ptr %11, align 8, !tbaa !45
  %322 = icmp eq ptr %321, null
  br i1 %322, label %357, label %323

323:                                              ; preds = %320
  %324 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 6
  %325 = load ptr, ptr %324, align 8, !tbaa !94
  %326 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 7
  %327 = load ptr, ptr %326, align 8, !tbaa !96
  %328 = icmp sgt i16 %52, 0
  br label %333

329:                                              ; preds = %336, %333
  %330 = phi float [ %335, %333 ], [ %352, %336 ]
  %331 = load ptr, ptr %334, align 8, !tbaa !45
  %332 = icmp eq ptr %331, null
  br i1 %332, label %357, label %333, !llvm.loop !186

333:                                              ; preds = %323, %329
  %334 = phi ptr [ %321, %323 ], [ %331, %329 ]
  %335 = phi float [ 0.000000e+00, %323 ], [ %330, %329 ]
  br i1 %328, label %336, label %329

336:                                              ; preds = %333, %336
  %337 = phi i16 [ %353, %336 ], [ %52, %333 ]
  %338 = phi float [ %352, %336 ], [ %335, %333 ]
  %339 = phi ptr [ %354, %336 ], [ %325, %333 ]
  %340 = phi ptr [ %355, %336 ], [ %327, %333 ]
  %341 = load float, ptr %339, align 4, !tbaa !77
  %342 = fadd float %341, 5.000000e-01
  %343 = call float @llvm.fmuladd.f32(float %152, float %342, float %156)
  %344 = fptosi float %343 to i32
  %345 = getelementptr inbounds float, ptr %339, i64 1
  %346 = load float, ptr %345, align 4, !tbaa !77
  %347 = fadd float %346, 5.000000e-01
  %348 = call float @llvm.fmuladd.f32(float %154, float %347, float %158)
  %349 = fptosi float %348 to i32
  %350 = load float, ptr %340, align 4, !tbaa !77
  %351 = call fastcc float @readshadowbuf(ptr noundef nonnull %1, ptr noundef nonnull %334, i32 noundef %62, i32 noundef %344, i32 noundef %349, i32 noundef %46)
  %352 = call float @llvm.fmuladd.f32(float %350, float %351, float %338)
  %353 = add nsw i16 %337, -1
  %354 = getelementptr inbounds float, ptr %339, i64 2
  %355 = getelementptr inbounds float, ptr %340, i64 1
  %356 = icmp sgt i16 %337, 1
  br i1 %356, label %336, label %329, !llvm.loop !187

357:                                              ; preds = %329, %320
  %358 = phi float [ 0.000000e+00, %320 ], [ %330, %329 ]
  %359 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 2
  %360 = load i16, ptr %359, align 4, !tbaa !90
  %361 = sitofp i16 %360 to float
  %362 = fdiv float %358, %361
  br label %363

363:                                              ; preds = %42, %16, %14, %7, %357, %318, %78
  %364 = phi float [ %83, %78 ], [ %319, %318 ], [ %362, %357 ], [ 1.000000e+00, %7 ], [ 0.000000e+00, %14 ], [ 0.000000e+00, %16 ], [ 1.000000e+00, %42 ]
  ret float %364
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @readshadowbuf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #7 {
  %7 = icmp slt i32 %3, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 14
  %10 = load i32, ptr %9, align 8, !tbaa !87
  %11 = icmp sgt i32 %10, %3
  %12 = add nsw i32 %10, -1
  %13 = select i1 %11, i32 %3, i32 %12
  br label %14

14:                                               ; preds = %8, %6
  %15 = phi i32 [ 0, %6 ], [ %13, %8 ]
  %16 = icmp slt i32 %4, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 14
  %19 = load i32, ptr %18, align 8, !tbaa !87
  %20 = icmp sgt i32 %19, %4
  %21 = add nsw i32 %19, -1
  %22 = select i1 %20, i32 %4, i32 %21
  br label %23

23:                                               ; preds = %17, %14
  %24 = phi i32 [ 0, %14 ], [ %22, %17 ]
  %25 = getelementptr inbounds %struct.ShadSampleBuf, ptr %1, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !115
  %27 = icmp eq ptr %26, null
  br i1 %27, label %136, label %28

28:                                               ; preds = %23
  %29 = add nsw i32 %2, -2147483136
  %30 = icmp sgt i32 %29, %5
  br i1 %30, label %234, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 14
  %33 = load i32, ptr %32, align 8, !tbaa !87
  %34 = mul nsw i32 %33, %24
  %35 = add nsw i32 %34, %15
  %36 = getelementptr inbounds %struct.ShadSampleBuf, ptr %1, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !113
  %38 = sext i32 %35 to i64
  %39 = getelementptr inbounds i32, ptr %37, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !92
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %234, label %42

42:                                               ; preds = %31
  %43 = getelementptr inbounds ptr, ptr %26, i64 %38
  %44 = load ptr, ptr %43, align 8, !tbaa !45
  %45 = sub nsw i32 %5, %2
  %46 = icmp sgt i32 %40, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42, %52
  %48 = phi i32 [ %53, %52 ], [ 0, %42 ]
  %49 = phi ptr [ %54, %52 ], [ %44, %42 ]
  %50 = load i32, ptr %49, align 4, !tbaa !129
  %51 = icmp sgt i32 %45, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = add nuw nsw i32 %48, 1
  %54 = getelementptr inbounds %struct.DeepSample, ptr %49, i64 1
  %55 = icmp eq i32 %53, %40
  br i1 %55, label %56, label %47, !llvm.loop !188

56:                                               ; preds = %52, %47, %42
  %57 = phi ptr [ %44, %42 ], [ %54, %52 ], [ %49, %47 ]
  %58 = phi i32 [ 0, %42 ], [ %40, %52 ], [ %48, %47 ]
  %59 = icmp eq i32 %58, %40
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = getelementptr %struct.DeepSample, ptr %57, i64 -1, i32 1
  %62 = load float, ptr %61, align 4, !tbaa !131
  br label %89

63:                                               ; preds = %56
  %64 = load i32, ptr %57, align 4, !tbaa !129
  %65 = icmp slt i32 %64, %5
  %66 = sub nsw i32 %5, %64
  %67 = sitofp i32 %66 to float
  %68 = sitofp i32 %2 to float
  %69 = fdiv float %67, %68
  %70 = select i1 %65, float %69, float 0.000000e+00
  %71 = icmp eq i32 %58, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.DeepSample, ptr %57, i64 -1
  %74 = sub nsw i32 %5, %2
  %75 = sitofp i32 %74 to float
  %76 = load i32, ptr %73, align 4, !tbaa !129
  %77 = sitofp i32 %76 to float
  %78 = fsub float %75, %77
  %79 = sitofp i32 %64 to float
  %80 = fsub float %79, %77
  %81 = fdiv float %78, %80
  %82 = getelementptr inbounds %struct.DeepSample, ptr %57, i64 0, i32 1
  %83 = load float, ptr %82, align 4, !tbaa !131
  %84 = fsub float 1.000000e+00, %81
  %85 = getelementptr %struct.DeepSample, ptr %57, i64 -1, i32 1
  %86 = load float, ptr %85, align 4, !tbaa !131
  %87 = fmul float %86, %84
  %88 = tail call float @llvm.fmuladd.f32(float %81, float %83, float %87)
  br label %89

89:                                               ; preds = %60, %63, %72
  %90 = phi float [ 0.000000e+00, %60 ], [ %70, %63 ], [ %70, %72 ]
  %91 = phi float [ %62, %60 ], [ 1.000000e+00, %63 ], [ %88, %72 ]
  %92 = fcmp une float %90, 0.000000e+00
  br i1 %92, label %93, label %234

93:                                               ; preds = %89
  %94 = icmp sgt i32 %40, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %93, %100
  %96 = phi i32 [ %101, %100 ], [ 0, %93 ]
  %97 = phi ptr [ %102, %100 ], [ %44, %93 ]
  %98 = load i32, ptr %97, align 4, !tbaa !129
  %99 = icmp slt i32 %98, %5
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = add nuw nsw i32 %96, 1
  %102 = getelementptr inbounds %struct.DeepSample, ptr %97, i64 1
  %103 = icmp eq i32 %101, %40
  br i1 %103, label %104, label %95, !llvm.loop !188

104:                                              ; preds = %100, %95, %93
  %105 = phi ptr [ %44, %93 ], [ %102, %100 ], [ %97, %95 ]
  %106 = phi i32 [ 0, %93 ], [ %40, %100 ], [ %96, %95 ]
  %107 = icmp eq i32 %106, %40
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = getelementptr %struct.DeepSample, ptr %105, i64 -1, i32 1
  %110 = load float, ptr %109, align 4, !tbaa !131
  br label %130

111:                                              ; preds = %104
  %112 = icmp eq i32 %106, 0
  br i1 %112, label %130, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.DeepSample, ptr %105, i64 -1
  %115 = sitofp i32 %5 to float
  %116 = load i32, ptr %114, align 4, !tbaa !129
  %117 = sitofp i32 %116 to float
  %118 = fsub float %115, %117
  %119 = load i32, ptr %105, align 4, !tbaa !129
  %120 = sitofp i32 %119 to float
  %121 = fsub float %120, %117
  %122 = fdiv float %118, %121
  %123 = getelementptr inbounds %struct.DeepSample, ptr %105, i64 0, i32 1
  %124 = load float, ptr %123, align 4, !tbaa !131
  %125 = fsub float 1.000000e+00, %122
  %126 = getelementptr %struct.DeepSample, ptr %105, i64 -1, i32 1
  %127 = load float, ptr %126, align 4, !tbaa !131
  %128 = fmul float %127, %125
  %129 = tail call float @llvm.fmuladd.f32(float %122, float %124, float %128)
  br label %130

130:                                              ; preds = %113, %111, %108
  %131 = phi float [ %110, %108 ], [ %129, %113 ], [ 1.000000e+00, %111 ]
  %132 = fmul float %90, %90
  %133 = fsub float 1.000000e+00, %132
  %134 = fmul float %132, %131
  %135 = tail call float @llvm.fmuladd.f32(float %133, float %91, float %134)
  br label %234

136:                                              ; preds = %23
  %137 = ashr i32 %24, 4
  %138 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 14
  %139 = load i32, ptr %138, align 8, !tbaa !87
  %140 = ashr i32 %139, 4
  %141 = mul nsw i32 %140, %137
  %142 = ashr i32 %15, 4
  %143 = add nsw i32 %141, %142
  %144 = getelementptr inbounds %struct.ShadSampleBuf, ptr %1, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !154
  %146 = sext i32 %143 to i64
  %147 = getelementptr inbounds i8, ptr %145, i64 %146
  %148 = getelementptr inbounds %struct.ShadSampleBuf, ptr %1, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !153
  %150 = getelementptr inbounds i64, ptr %149, i64 %146
  %151 = load ptr, ptr %150, align 8, !tbaa !45
  %152 = load i8, ptr %147, align 1, !tbaa !72
  switch i8 %152, label %196 [
    i8 3, label %153
    i8 2, label %167
    i8 1, label %182
  ]

153:                                              ; preds = %136
  %154 = and i32 %24, 15
  %155 = mul nuw nsw i32 %154, 48
  %156 = zext nneg i32 %155 to i64
  %157 = getelementptr inbounds i8, ptr %151, i64 %156
  %158 = and i32 %15, 15
  %159 = mul nuw nsw i32 %158, 3
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds i8, ptr %157, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !72
  %163 = getelementptr inbounds i8, ptr %161, i64 1
  %164 = load i8, ptr %163, align 1, !tbaa !72
  %165 = getelementptr inbounds i8, ptr %161, i64 2
  %166 = load i8, ptr %165, align 1, !tbaa !72
  br label %205

167:                                              ; preds = %136
  %168 = shl i32 %24, 5
  %169 = and i32 %168, 480
  %170 = shl i32 %15, 1
  %171 = and i32 %170, 30
  %172 = add nuw nsw i32 %171, 4
  %173 = add nuw nsw i32 %172, %169
  %174 = zext nneg i32 %173 to i64
  %175 = getelementptr inbounds i8, ptr %151, i64 %174
  %176 = load i32, ptr %151, align 4, !tbaa !92
  %177 = lshr i32 %176, 24
  %178 = trunc i32 %177 to i8
  %179 = load i8, ptr %175, align 1, !tbaa !72
  %180 = getelementptr inbounds i8, ptr %175, i64 1
  %181 = load i8, ptr %180, align 1, !tbaa !72
  br label %205

182:                                              ; preds = %136
  %183 = shl i32 %24, 4
  %184 = and i32 %183, 240
  %185 = and i32 %15, 15
  %186 = add nuw nsw i32 %185, 4
  %187 = add nuw nsw i32 %186, %184
  %188 = zext nneg i32 %187 to i64
  %189 = getelementptr inbounds i8, ptr %151, i64 %188
  %190 = load i32, ptr %151, align 4, !tbaa !92
  %191 = lshr i32 %190, 16
  %192 = trunc i32 %191 to i8
  %193 = lshr i32 %190, 24
  %194 = trunc i32 %193 to i8
  %195 = load i8, ptr %189, align 1, !tbaa !72
  br label %205

196:                                              ; preds = %136
  %197 = ptrtoint ptr %151 to i64
  %198 = trunc i64 %197 to i32
  %199 = lshr i64 %197, 8
  %200 = trunc i64 %199 to i8
  %201 = lshr i64 %197, 16
  %202 = trunc i64 %201 to i8
  %203 = lshr i64 %197, 24
  %204 = trunc i64 %203 to i8
  br label %205

205:                                              ; preds = %167, %196, %182, %153
  %206 = phi i8 [ %162, %153 ], [ %178, %167 ], [ %194, %182 ], [ %204, %196 ]
  %207 = phi i8 [ %164, %153 ], [ %179, %167 ], [ %192, %182 ], [ %202, %196 ]
  %208 = phi i8 [ %166, %153 ], [ %181, %167 ], [ %195, %182 ], [ %200, %196 ]
  %209 = phi i32 [ 0, %153 ], [ %176, %167 ], [ %190, %182 ], [ %198, %196 ]
  %210 = zext i8 %206 to i32
  %211 = shl nuw i32 %210, 24
  %212 = zext i8 %207 to i32
  %213 = shl nuw nsw i32 %212, 16
  %214 = or disjoint i32 %213, %211
  %215 = zext i8 %208 to i32
  %216 = shl nuw nsw i32 %215, 8
  %217 = or disjoint i32 %214, %216
  %218 = and i32 %209, 255
  %219 = or disjoint i32 %217, %218
  %220 = icmp sgt i32 %219, %5
  %221 = add nsw i32 %2, -2147483136
  %222 = icmp sgt i32 %221, %5
  %223 = select i1 %220, i1 true, i1 %222
  br i1 %223, label %234, label %224

224:                                              ; preds = %205
  %225 = sub nsw i32 %5, %2
  %226 = icmp slt i32 %219, %225
  br i1 %226, label %234, label %227

227:                                              ; preds = %224
  %228 = sub nsw i32 %5, %219
  %229 = sitofp i32 %228 to float
  %230 = sitofp i32 %2 to float
  %231 = fdiv float %229, %230
  %232 = fneg float %231
  %233 = tail call float @llvm.fmuladd.f32(float %232, float %231, float 1.000000e+00)
  br label %234

234:                                              ; preds = %130, %89, %31, %28, %224, %205, %227
  %235 = phi float [ %233, %227 ], [ 1.000000e+00, %205 ], [ 0.000000e+00, %224 ], [ %135, %130 ], [ 1.000000e+00, %28 ], [ 1.000000e+00, %31 ], [ %91, %89 ]
  ret float %235
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nounwind uwtable
define dso_local float @shadow_halo(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [4 x float], align 16
  %5 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 57
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %7 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !87
  %9 = sitofp i32 %8 to float
  %10 = fmul float %9, 5.000000e-01
  %11 = load float, ptr %1, align 4, !tbaa !77
  store float %11, ptr %4, align 16, !tbaa !77
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !77
  %14 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  store float %13, ptr %14, align 4, !tbaa !77
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !77
  %17 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 62
  %18 = load float, ptr %17, align 4, !tbaa !189
  %19 = fdiv float %16, %18
  %20 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  store float %19, ptr %20, align 8, !tbaa !77
  %21 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float 1.000000e+00, ptr %21, align 4, !tbaa !77
  %22 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 5
  call void @mul_m4_v4(ptr noundef nonnull %22, ptr noundef nonnull %4) #14
  %23 = load float, ptr %4, align 16, !tbaa !77
  %24 = load float, ptr %21, align 4, !tbaa !77
  %25 = fdiv float %23, %24
  %26 = fadd float %25, 1.000000e+00
  %27 = fmul float %10, %26
  %28 = load float, ptr %14, align 4, !tbaa !77
  %29 = fdiv float %28, %24
  %30 = fadd float %29, 1.000000e+00
  %31 = fmul float %10, %30
  %32 = load float, ptr %20, align 8, !tbaa !77
  %33 = fdiv float %32, %24
  %34 = load float, ptr %2, align 4, !tbaa !77
  store float %34, ptr %4, align 16, !tbaa !77
  %35 = getelementptr inbounds float, ptr %2, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !77
  store float %36, ptr %14, align 4, !tbaa !77
  %37 = getelementptr inbounds float, ptr %2, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !77
  %39 = load float, ptr %17, align 4, !tbaa !189
  %40 = fdiv float %38, %39
  store float %40, ptr %20, align 8, !tbaa !77
  store float 1.000000e+00, ptr %21, align 4, !tbaa !77
  call void @mul_m4_v4(ptr noundef nonnull %22, ptr noundef nonnull %4) #14
  %41 = load float, ptr %4, align 16, !tbaa !77
  %42 = load float, ptr %21, align 4, !tbaa !77
  %43 = fdiv float %41, %42
  %44 = fadd float %43, 1.000000e+00
  %45 = fmul float %10, %44
  %46 = load float, ptr %14, align 4, !tbaa !77
  %47 = fdiv float %46, %42
  %48 = fadd float %47, 1.000000e+00
  %49 = fmul float %10, %48
  %50 = load float, ptr %20, align 8, !tbaa !77
  %51 = fdiv float %50, %42
  %52 = fptosi float %27 to i32
  %53 = fptosi float %31 to i32
  %54 = fcmp une float %27, %45
  br i1 %54, label %55, label %79

55:                                               ; preds = %3
  %56 = fsub float %45, %27
  %57 = fcmp ogt float %56, 0.000000e+00
  %58 = sitofp i32 %52 to float
  %59 = fsub float %27, %58
  br i1 %57, label %60, label %70

60:                                               ; preds = %55
  %61 = fadd float %59, -1.000000e+00
  %62 = fsub float %27, %45
  %63 = fdiv float %61, %62
  %64 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 1
  %65 = load i16, ptr %64, align 2, !tbaa !190
  %66 = sext i16 %65 to i32
  %67 = sub nsw i32 0, %66
  %68 = sitofp i32 %67 to float
  %69 = fdiv float %68, %62
  br label %79

70:                                               ; preds = %55
  %71 = fsub float %27, %45
  %72 = fdiv float %59, %71
  %73 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 1
  %74 = load i16, ptr %73, align 2, !tbaa !190
  %75 = sext i16 %74 to i32
  %76 = sitofp i16 %74 to float
  %77 = fdiv float %76, %71
  %78 = sub nsw i32 0, %75
  br label %79

79:                                               ; preds = %3, %60, %70
  %80 = phi float [ %69, %60 ], [ %77, %70 ], [ 0.000000e+00, %3 ]
  %81 = phi float [ %63, %60 ], [ %72, %70 ], [ 1.000000e+00, %3 ]
  %82 = phi i32 [ %66, %60 ], [ %78, %70 ], [ 0, %3 ]
  %83 = fcmp une float %31, %49
  br i1 %83, label %84, label %108

84:                                               ; preds = %79
  %85 = fsub float %49, %31
  %86 = fcmp ogt float %85, 0.000000e+00
  %87 = sitofp i32 %53 to float
  %88 = fsub float %31, %87
  br i1 %86, label %89, label %99

89:                                               ; preds = %84
  %90 = fadd float %88, -1.000000e+00
  %91 = fsub float %31, %49
  %92 = fdiv float %90, %91
  %93 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 1
  %94 = load i16, ptr %93, align 2, !tbaa !190
  %95 = sext i16 %94 to i32
  %96 = sub nsw i32 0, %95
  %97 = sitofp i32 %96 to float
  %98 = fdiv float %97, %91
  br label %108

99:                                               ; preds = %84
  %100 = fsub float %31, %49
  %101 = fdiv float %88, %100
  %102 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 1
  %103 = load i16, ptr %102, align 2, !tbaa !190
  %104 = sext i16 %103 to i32
  %105 = sitofp i16 %103 to float
  %106 = fdiv float %105, %100
  %107 = sub nsw i32 0, %104
  br label %108

108:                                              ; preds = %79, %89, %99
  %109 = phi float [ %98, %89 ], [ %106, %99 ], [ 0.000000e+00, %79 ]
  %110 = phi float [ %92, %89 ], [ %101, %99 ], [ 1.000000e+00, %79 ]
  %111 = phi i32 [ %95, %89 ], [ %107, %99 ], [ 0, %79 ]
  %112 = fsub float %51, %33
  %113 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 2
  %114 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 16
  %115 = getelementptr inbounds %struct.ShadBuf, ptr %6, i64 0, i32 15
  br label %116

116:                                              ; preds = %277, %108
  %117 = phi float [ %110, %108 ], [ %139, %277 ]
  %118 = phi float [ %81, %108 ], [ %140, %277 ]
  %119 = phi float [ 0.000000e+00, %108 ], [ %148, %277 ]
  %120 = phi float [ 0.000000e+00, %108 ], [ %152, %277 ]
  %121 = phi float [ 0.000000e+00, %108 ], [ %278, %277 ]
  %122 = phi i32 [ %52, %108 ], [ %141, %277 ]
  %123 = phi i32 [ %53, %108 ], [ %142, %277 ]
  %124 = fcmp oeq float %118, %117
  br i1 %124, label %125, label %130

125:                                              ; preds = %116
  %126 = fadd float %80, %118
  %127 = add nsw i32 %122, %82
  %128 = fadd float %109, %117
  %129 = add nsw i32 %123, %111
  br label %138

130:                                              ; preds = %116
  %131 = fcmp olt float %118, %117
  br i1 %131, label %132, label %135

132:                                              ; preds = %130
  %133 = fadd float %80, %118
  %134 = add nsw i32 %122, %82
  br label %138

135:                                              ; preds = %130
  %136 = fadd float %109, %117
  %137 = add nsw i32 %123, %111
  br label %138

138:                                              ; preds = %132, %135, %125
  %139 = phi float [ %128, %125 ], [ %117, %132 ], [ %136, %135 ]
  %140 = phi float [ %126, %125 ], [ %133, %132 ], [ %118, %135 ]
  %141 = phi i32 [ %127, %125 ], [ %134, %132 ], [ %122, %135 ]
  %142 = phi i32 [ %129, %125 ], [ %123, %132 ], [ %137, %135 ]
  %143 = fcmp olt float %140, %139
  %144 = select i1 %143, float %140, float %139
  %145 = fcmp oeq float %144, %119
  br i1 %145, label %279, label %146

146:                                              ; preds = %138
  %147 = fcmp olt float %144, 1.000000e+00
  %148 = select i1 %147, float %144, float 1.000000e+00
  %149 = call float @llvm.fmuladd.f32(float %148, float %112, float %33)
  %150 = load i16, ptr %113, align 4, !tbaa !90
  %151 = sitofp i16 %150 to float
  %152 = fadd float %120, %151
  %153 = fcmp ugt float %149, -1.000000e+00
  br i1 %153, label %156, label %154

154:                                              ; preds = %146
  %155 = fadd float %121, 1.000000e+00
  br label %277

156:                                              ; preds = %146
  %157 = fcmp ult float %149, 1.000000e+00
  %158 = fmul float %149, 0x41DFFFFC00000000
  %159 = fptosi float %158 to i32
  %160 = select i1 %157, i32 %159, i32 2147479552
  %161 = call i32 @llvm.smax.i32(i32 %141, i32 %142)
  %162 = call i32 @llvm.smin.i32(i32 %160, i32 2147483135)
  %163 = load ptr, ptr %114, align 8, !tbaa !45
  %164 = icmp eq ptr %163, null
  br i1 %164, label %277, label %165

165:                                              ; preds = %156
  %166 = load i32, ptr %115, align 4, !tbaa !85
  %167 = sub nsw i32 0, %166
  %168 = or i32 %142, %141
  %169 = icmp sgt i32 %168, -1
  %170 = lshr i32 %142, 4
  %171 = lshr i32 %141, 4
  %172 = shl i32 %142, 4
  %173 = and i32 %172, 240
  %174 = and i32 %141, 15
  %175 = add nuw nsw i32 %174, 4
  %176 = add nuw nsw i32 %175, %173
  %177 = zext nneg i32 %176 to i64
  %178 = shl i32 %142, 5
  %179 = and i32 %178, 480
  %180 = shl i32 %141, 1
  %181 = and i32 %180, 30
  %182 = add nuw nsw i32 %181, 4
  %183 = add nuw nsw i32 %182, %179
  %184 = zext nneg i32 %183 to i64
  %185 = and i32 %142, 15
  %186 = mul nuw nsw i32 %185, 48
  %187 = zext nneg i32 %186 to i64
  %188 = and i32 %141, 15
  %189 = mul nuw nsw i32 %188, 3
  %190 = zext nneg i32 %189 to i64
  %191 = sub nsw i32 2147483647, %160
  %192 = icmp sle i32 %191, %166
  %193 = add nsw i32 %166, %160
  %194 = sitofp i32 %167 to float
  br label %195

195:                                              ; preds = %165, %272
  %196 = phi ptr [ %163, %165 ], [ %275, %272 ]
  %197 = phi float [ %121, %165 ], [ %274, %272 ]
  br i1 %169, label %198, label %272

198:                                              ; preds = %195
  %199 = load i32, ptr %7, align 8, !tbaa !87
  %200 = icmp sgt i32 %199, %161
  br i1 %200, label %201, label %272

201:                                              ; preds = %198
  %202 = lshr i32 %199, 4
  %203 = mul nsw i32 %202, %170
  %204 = add nuw nsw i32 %203, %171
  %205 = getelementptr inbounds %struct.ShadSampleBuf, ptr %196, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !154
  %207 = zext nneg i32 %204 to i64
  %208 = getelementptr inbounds i8, ptr %206, i64 %207
  %209 = getelementptr inbounds %struct.ShadSampleBuf, ptr %196, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !153
  %211 = getelementptr inbounds i64, ptr %210, i64 %207
  %212 = load ptr, ptr %211, align 8, !tbaa !45
  %213 = load i8, ptr %208, align 1, !tbaa !72
  switch i8 %213, label %238 [
    i8 3, label %214
    i8 2, label %222
    i8 1, label %230
  ]

214:                                              ; preds = %201
  %215 = getelementptr inbounds i8, ptr %212, i64 %187
  %216 = getelementptr inbounds i8, ptr %215, i64 %190
  %217 = load i8, ptr %216, align 1, !tbaa !72
  %218 = getelementptr inbounds i8, ptr %216, i64 1
  %219 = load i8, ptr %218, align 1, !tbaa !72
  %220 = getelementptr inbounds i8, ptr %216, i64 2
  %221 = load i8, ptr %220, align 1, !tbaa !72
  br label %247

222:                                              ; preds = %201
  %223 = getelementptr inbounds i8, ptr %212, i64 %184
  %224 = load i32, ptr %212, align 4, !tbaa !92
  %225 = lshr i32 %224, 24
  %226 = trunc i32 %225 to i8
  %227 = load i8, ptr %223, align 1, !tbaa !72
  %228 = getelementptr inbounds i8, ptr %223, i64 1
  %229 = load i8, ptr %228, align 1, !tbaa !72
  br label %247

230:                                              ; preds = %201
  %231 = getelementptr inbounds i8, ptr %212, i64 %177
  %232 = load i32, ptr %212, align 4, !tbaa !92
  %233 = lshr i32 %232, 16
  %234 = trunc i32 %233 to i8
  %235 = lshr i32 %232, 24
  %236 = trunc i32 %235 to i8
  %237 = load i8, ptr %231, align 1, !tbaa !72
  br label %247

238:                                              ; preds = %201
  %239 = ptrtoint ptr %212 to i64
  %240 = trunc i64 %239 to i32
  %241 = lshr i64 %239, 8
  %242 = trunc i64 %241 to i8
  %243 = lshr i64 %239, 16
  %244 = trunc i64 %243 to i8
  %245 = lshr i64 %239, 24
  %246 = trunc i64 %245 to i8
  br label %247

247:                                              ; preds = %238, %230, %222, %214
  %248 = phi i8 [ %217, %214 ], [ %226, %222 ], [ %236, %230 ], [ %246, %238 ]
  %249 = phi i8 [ %219, %214 ], [ %227, %222 ], [ %234, %230 ], [ %244, %238 ]
  %250 = phi i8 [ %221, %214 ], [ %229, %222 ], [ %237, %230 ], [ %242, %238 ]
  %251 = phi i32 [ 0, %214 ], [ %224, %222 ], [ %232, %230 ], [ %240, %238 ]
  %252 = zext i8 %248 to i32
  %253 = shl nuw i32 %252, 24
  %254 = zext i8 %249 to i32
  %255 = shl nuw nsw i32 %254, 16
  %256 = or disjoint i32 %255, %253
  %257 = zext i8 %250 to i32
  %258 = shl nuw nsw i32 %257, 8
  %259 = or disjoint i32 %256, %258
  %260 = and i32 %251, 255
  %261 = or disjoint i32 %259, %260
  %262 = icmp sgt i32 %261, %162
  br i1 %262, label %272, label %263

263:                                              ; preds = %247
  %264 = icmp slt i32 %261, %193
  %265 = select i1 %192, i1 true, i1 %264
  br i1 %265, label %272, label %266

266:                                              ; preds = %263
  %267 = sub nsw i32 %160, %261
  %268 = sitofp i32 %267 to float
  %269 = fdiv float %268, %194
  %270 = fneg float %269
  %271 = call float @llvm.fmuladd.f32(float %270, float %269, float 1.000000e+00)
  br label %272

272:                                              ; preds = %195, %198, %247, %263, %266
  %273 = phi float [ %271, %266 ], [ 0.000000e+00, %195 ], [ 0.000000e+00, %198 ], [ 1.000000e+00, %247 ], [ 0.000000e+00, %263 ]
  %274 = fadd float %197, %273
  %275 = load ptr, ptr %196, align 8, !tbaa !45
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %195, !llvm.loop !191

277:                                              ; preds = %272, %156, %154
  %278 = phi float [ %155, %154 ], [ %121, %156 ], [ %274, %272 ]
  br i1 %147, label %116, label %279, !llvm.loop !192

279:                                              ; preds = %138, %277
  %280 = phi float [ %120, %138 ], [ %152, %277 ]
  %281 = phi float [ %121, %138 ], [ %278, %277 ]
  %282 = fcmp une float %280, 0.000000e+00
  %283 = fdiv float %281, %280
  %284 = select i1 %282, float %283, float 0.000000e+00
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret float %284
}

declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local float @ISB_getshadow(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 108
  %4 = load i32, ptr %3, align 8, !tbaa !193
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %96

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 114
  %8 = load i16, ptr %7, align 2, !tbaa !195
  %9 = sext i16 %8 to i64
  %10 = getelementptr inbounds %struct.ShadBuf, ptr %1, i64 0, i32 17, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %93, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr %11, align 8, !tbaa !196
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ISBData, ptr %11, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !198
  %19 = icmp eq ptr %18, null
  br i1 %19, label %93, label %20

20:                                               ; preds = %16, %13
  %21 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 103
  %22 = load i32, ptr %21, align 4, !tbaa !199
  %23 = getelementptr inbounds %struct.ISBData, ptr %11, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !200
  %25 = sub nsw i32 %22, %24
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %93

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ISBData, ptr %11, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !201
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %93

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 104
  %33 = load i32, ptr %32, align 8, !tbaa !202
  %34 = getelementptr inbounds %struct.ISBData, ptr %11, i64 0, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !203
  %36 = sub nsw i32 %33, %35
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %93

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.ISBData, ptr %11, i64 0, i32 6
  %40 = load i32, ptr %39, align 4, !tbaa !204
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %93

42:                                               ; preds = %38
  %43 = mul nsw i32 %36, %29
  br i1 %15, label %55, label %44

44:                                               ; preds = %42
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i16, ptr %14, i64 %45
  %47 = zext nneg i32 %25 to i64
  %48 = getelementptr inbounds i16, ptr %46, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !116
  %50 = icmp sgt i16 %49, 4095
  %51 = sitofp i16 %49 to float
  %52 = fmul float %51, 0x3F30000000000000
  %53 = fsub float 1.000000e+00, %52
  %54 = select i1 %50, float 0.000000e+00, float %53
  br label %93

55:                                               ; preds = %42
  %56 = add nsw i32 %43, %25
  %57 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !205
  %59 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !132
  %60 = ptrtoint ptr %58 to i64
  %61 = ptrtoint ptr %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 288
  %64 = trunc i64 %63 to i32
  %65 = getelementptr inbounds %struct.ISBData, ptr %11, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !198
  %67 = sext i32 %56 to i64
  %68 = getelementptr inbounds ptr, ptr %66, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !45
  %70 = icmp eq ptr %69, null
  br i1 %70, label %93, label %71

71:                                               ; preds = %55
  %72 = getelementptr inbounds %struct.ShadeInput, ptr %0, i64 0, i32 5
  %73 = load i32, ptr %72, align 8, !tbaa !206
  %74 = add nsw i32 %73, 1
  br label %75

75:                                               ; preds = %71, %90
  %76 = phi ptr [ %69, %71 ], [ %91, %90 ]
  %77 = getelementptr inbounds %struct.ISBShadfacA, ptr %76, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !207
  %79 = icmp eq i32 %78, %74
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.ISBShadfacA, ptr %76, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !209
  %83 = icmp eq i32 %82, %64
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.ISBShadfacA, ptr %76, i64 0, i32 3
  %86 = load float, ptr %85, align 8, !tbaa !210
  %87 = fcmp ult float %86, 1.000000e+00
  %88 = fsub float 1.000000e+00, %86
  %89 = select i1 %87, float %88, float 0.000000e+00
  br label %93

90:                                               ; preds = %80, %75
  %91 = load ptr, ptr %76, align 8, !tbaa !45
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %75, !llvm.loop !211

93:                                               ; preds = %90, %55, %27, %20, %84, %31, %38, %44, %6, %16
  %94 = phi i1 [ true, %16 ], [ true, %6 ], [ true, %27 ], [ true, %20 ], [ false, %44 ], [ true, %38 ], [ true, %31 ], [ false, %84 ], [ %70, %55 ], [ %92, %90 ]
  %95 = phi float [ undef, %16 ], [ undef, %6 ], [ undef, %27 ], [ undef, %20 ], [ %54, %44 ], [ undef, %38 ], [ undef, %31 ], [ %89, %84 ], [ undef, %55 ], [ undef, %90 ]
  br i1 %94, label %96, label %97

96:                                               ; preds = %93, %2
  br label %97

97:                                               ; preds = %93, %96
  %98 = phi float [ %95, %93 ], [ 1.000000e+00, %96 ]
  ret float %98
}

; Function Attrs: nounwind uwtable
define dso_local void @ISB_create(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [16 x ptr], align 16
  %4 = alloca %struct.ISBBranch, align 8
  %5 = alloca [16 x ptr], align 16
  %6 = alloca %struct.ISBBranch, align 8
  %7 = alloca [3 x float], align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %887, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 20
  %12 = icmp eq ptr %1, null
  %13 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %14 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %15 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %16 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %17 = getelementptr inbounds %struct.ISBBranch, ptr %6, i64 0, i32 3
  %18 = getelementptr inbounds %struct.ISBBranch, ptr %6, i64 0, i32 3, i32 2
  %19 = getelementptr inbounds float, ptr %7, i64 1
  %20 = getelementptr inbounds float, ptr %7, i64 2
  %21 = getelementptr inbounds %struct.ISBBranch, ptr %6, i64 0, i32 3, i32 1
  %22 = getelementptr inbounds %struct.ISBBranch, ptr %6, i64 0, i32 3, i32 3
  %23 = getelementptr inbounds float, ptr %7, i64 1
  %24 = getelementptr inbounds float, ptr %7, i64 2
  %25 = getelementptr inbounds %struct.ISBBranch, ptr %6, i64 0, i32 3, i32 1
  %26 = getelementptr inbounds %struct.ISBBranch, ptr %6, i64 0, i32 3, i32 3
  %27 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13
  %28 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 13, i32 2
  %29 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 14
  %30 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 15
  %31 = getelementptr inbounds %struct.ISBBranch, ptr %4, i64 0, i32 3
  %32 = getelementptr inbounds %struct.ISBBranch, ptr %4, i64 0, i32 3, i32 2
  %33 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 8
  %34 = getelementptr inbounds %struct.ISBBranch, ptr %4, i64 0, i32 3, i32 1
  %35 = getelementptr inbounds %struct.ISBBranch, ptr %4, i64 0, i32 3, i32 3
  %36 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 5
  %37 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 4
  %38 = getelementptr inbounds %struct.ISBBranch, ptr %4, i64 0, i32 3, i32 1
  %39 = getelementptr inbounds %struct.ISBBranch, ptr %4, i64 0, i32 3, i32 3
  %40 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 8
  br label %41

41:                                               ; preds = %10, %884
  %42 = phi ptr [ %8, %10 ], [ %885, %884 ]
  %43 = getelementptr inbounds %struct.GroupObject, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !212
  %45 = getelementptr inbounds %struct.LampRen, ptr %44, i64 0, i32 6
  %46 = load i16, ptr %45, align 8, !tbaa !214
  %47 = icmp eq i16 %46, 2
  br i1 %47, label %48, label %884

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.LampRen, ptr %44, i64 0, i32 57
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %884, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.LampRen, ptr %44, i64 0, i32 36
  %54 = load i16, ptr %53, align 4, !tbaa !86
  %55 = icmp eq i16 %54, 1
  br i1 %55, label %56, label %884

56:                                               ; preds = %52
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %58 = call ptr %57(i64 noundef 40, ptr noundef nonnull @.str) #14
  %59 = load ptr, ptr %49, align 8, !tbaa !34
  %60 = load i16, ptr %11, align 2, !tbaa !215
  %61 = sext i16 %60 to i64
  %62 = getelementptr inbounds %struct.ShadBuf, ptr %59, i64 0, i32 17, i64 %61
  store ptr %58, ptr %62, align 8, !tbaa !45
  %63 = load ptr, ptr %49, align 8, !tbaa !34
  %64 = getelementptr inbounds %struct.ShadBuf, ptr %63, i64 0, i32 17, i64 %61
  br i1 %12, label %470, label %65

65:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #14
  %66 = load ptr, ptr %64, align 8, !tbaa !45
  %67 = load i32, ptr %13, align 8, !tbaa !217
  %68 = getelementptr inbounds %struct.ISBData, ptr %66, i64 0, i32 3
  store i32 %67, ptr %68, align 8, !tbaa !200
  %69 = load i32, ptr %14, align 8, !tbaa !218
  %70 = getelementptr inbounds %struct.ISBData, ptr %66, i64 0, i32 4
  store i32 %69, ptr %70, align 4, !tbaa !203
  %71 = load i32, ptr %15, align 8, !tbaa !219
  %72 = getelementptr inbounds %struct.ISBData, ptr %66, i64 0, i32 5
  store i32 %71, ptr %72, align 8, !tbaa !201
  %73 = load i32, ptr %16, align 4, !tbaa !220
  %74 = getelementptr inbounds %struct.ISBData, ptr %66, i64 0, i32 6
  store i32 %73, ptr %74, align 4, !tbaa !204
  %75 = call ptr @BLI_memarena_new(i64 noundef 2097152, ptr noundef nonnull @.str.17) #14
  call void @BLI_memarena_use_calloc(ptr noundef %75) #14
  %76 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %77 = call i16 @llvm.umax.i16(i16 %76, i16 1)
  %78 = icmp sgt i16 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %65, %79
  %80 = phi i64 [ %90, %79 ], [ 0, %65 ]
  %81 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %82 = load i32, ptr %15, align 8, !tbaa !219
  %83 = sext i32 %82 to i64
  %84 = shl nsw i64 %83, 3
  %85 = load i32, ptr %16, align 4, !tbaa !220
  %86 = sext i32 %85 to i64
  %87 = mul i64 %84, %86
  %88 = call ptr %81(i64 noundef %87, ptr noundef nonnull @.str.18) #14
  %89 = getelementptr inbounds [16 x ptr], ptr %5, i64 0, i64 %80
  store ptr %88, ptr %89, align 8, !tbaa !45
  %90 = add nuw nsw i64 %80, 1
  %91 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %92 = call i16 @llvm.umax.i16(i16 %91, i16 1)
  %93 = sext i16 %92 to i64
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %79, label %95, !llvm.loop !221

95:                                               ; preds = %79, %65
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  %96 = getelementptr inbounds %struct.ShadBuf, ptr %63, i64 0, i32 14
  %97 = load i32, ptr %96, align 8, !tbaa !87
  %98 = sitofp i32 %97 to float
  store float %98, ptr %17, align 8, !tbaa !222
  store float %98, ptr %18, align 8, !tbaa !225
  %99 = load i32, ptr %16, align 4, !tbaa !220
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %268

101:                                              ; preds = %95, %262
  %102 = phi ptr [ %264, %262 ], [ %1, %95 ]
  %103 = phi i32 [ %265, %262 ], [ 0, %95 ]
  %104 = phi i32 [ %263, %262 ], [ 0, %95 ]
  %105 = load i32, ptr %15, align 8, !tbaa !219
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %262

107:                                              ; preds = %101
  %108 = sext i32 %104 to i64
  br label %109

109:                                              ; preds = %107, %254
  %110 = phi i64 [ %108, %107 ], [ %256, %254 ]
  %111 = phi ptr [ %102, %107 ], [ %257, %254 ]
  %112 = phi i32 [ 0, %107 ], [ %255, %254 ]
  %113 = getelementptr inbounds %struct.APixstr, ptr %111, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !92
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %254, label %116

116:                                              ; preds = %109
  %117 = load i32, ptr %13, align 8, !tbaa !217
  %118 = add nsw i32 %117, %112
  %119 = sitofp i32 %118 to float
  %120 = load i32, ptr %14, align 8, !tbaa !218
  %121 = add nsw i32 %120, %103
  %122 = sitofp i32 %121 to float
  %123 = icmp eq ptr %111, null
  br i1 %123, label %254, label %124

124:                                              ; preds = %116, %250
  %125 = phi ptr [ %252, %250 ], [ %111, %116 ]
  %126 = load ptr, ptr %5, align 16
  %127 = getelementptr inbounds ptr, ptr %126, i64 %110
  br label %128

128:                                              ; preds = %124, %247
  %129 = phi i64 [ 0, %124 ], [ %248, %247 ]
  %130 = getelementptr inbounds %struct.APixstr, ptr %125, i64 0, i32 2, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !92
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %247, label %133

133:                                              ; preds = %128
  %134 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !132
  %135 = getelementptr inbounds %struct.APixstr, ptr %125, i64 0, i32 3, i64 %129
  %136 = load i32, ptr %135, align 4, !tbaa !92
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %134, i64 %137
  %139 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %134, i64 %137, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !52
  %141 = add i32 %131, 134217727
  %142 = and i32 %141, 134217727
  %143 = call ptr @RE_findOrAddVlak(ptr noundef %140, i32 noundef %142) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  %144 = getelementptr inbounds %struct.APixstr, ptr %125, i64 0, i32 4, i64 %129
  store i16 0, ptr %144, align 2, !tbaa !116
  %145 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !226
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %210, label %147

147:                                              ; preds = %133
  %148 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !226
  %149 = icmp sgt i16 %148, 0
  br i1 %149, label %150, label %246

150:                                              ; preds = %147
  %151 = getelementptr inbounds [4 x i16], ptr %125, i64 0, i64 %129
  br label %152

152:                                              ; preds = %150, %205
  %153 = phi i64 [ 0, %150 ], [ %206, %205 ]
  %154 = trunc i64 %153 to i32
  %155 = shl nuw i32 1, %154
  %156 = load i16, ptr %151, align 2, !tbaa !116
  %157 = zext i16 %156 to i32
  %158 = and i32 %155, %157
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %205, label %160

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %153
  %162 = load float, ptr %161, align 8, !tbaa !77
  %163 = fadd float %162, %119
  %164 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %153, i64 1
  %165 = load float, ptr %164, align 4, !tbaa !77
  %166 = fadd float %165, %122
  %167 = call fastcc i32 @viewpixel_to_lampbuf(ptr noundef %63, ptr noundef %138, ptr noundef %143, float noundef %163, float noundef %166, ptr noundef nonnull %7), !range !227
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %205, label %169

169:                                              ; preds = %160
  %170 = getelementptr inbounds [16 x ptr], ptr %5, i64 0, i64 %153
  %171 = load ptr, ptr %170, align 8, !tbaa !45
  %172 = getelementptr inbounds ptr, ptr %171, i64 %110
  %173 = call ptr @BLI_memarena_alloc(ptr noundef %75, i64 noundef 40) #14
  %174 = load ptr, ptr %172, align 8, !tbaa !45
  %175 = getelementptr inbounds %struct.ISBSampleA, ptr %173, i64 0, i32 4
  store ptr %174, ptr %175, align 8, !tbaa !228
  store ptr %173, ptr %172, align 8, !tbaa !45
  %176 = load i32, ptr %135, align 4, !tbaa !92
  %177 = getelementptr inbounds %struct.ISBSampleA, ptr %173, i64 0, i32 2
  store i32 %176, ptr %177, align 8, !tbaa !230
  %178 = load i32, ptr %130, align 4, !tbaa !92
  %179 = and i32 %178, -134217729
  %180 = getelementptr inbounds %struct.ISBSampleA, ptr %173, i64 0, i32 3
  store i32 %179, ptr %180, align 4, !tbaa !231
  %181 = getelementptr inbounds %struct.ISBSampleA, ptr %173, i64 0, i32 1
  store ptr %144, ptr %181, align 8, !tbaa !232
  %182 = load float, ptr %7, align 4, !tbaa !77
  store float %182, ptr %173, align 4, !tbaa !77
  %183 = load float, ptr %19, align 4, !tbaa !77
  %184 = getelementptr inbounds float, ptr %173, i64 1
  store float %183, ptr %184, align 4, !tbaa !77
  %185 = load float, ptr %20, align 4, !tbaa !77
  %186 = getelementptr inbounds float, ptr %173, i64 2
  store float %185, ptr %186, align 4, !tbaa !77
  %187 = load float, ptr %17, align 8, !tbaa !233
  %188 = fcmp olt float %182, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %169
  store float %182, ptr %17, align 8, !tbaa !233
  br label %190

190:                                              ; preds = %189, %169
  %191 = load float, ptr %173, align 4, !tbaa !77
  %192 = load float, ptr %21, align 4, !tbaa !234
  %193 = fcmp ogt float %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  store float %191, ptr %21, align 4, !tbaa !234
  br label %195

195:                                              ; preds = %194, %190
  %196 = load float, ptr %184, align 4, !tbaa !77
  %197 = load float, ptr %18, align 8, !tbaa !235
  %198 = fcmp olt float %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  store float %196, ptr %18, align 8, !tbaa !235
  br label %200

200:                                              ; preds = %199, %195
  %201 = load float, ptr %184, align 4, !tbaa !77
  %202 = load float, ptr %22, align 4, !tbaa !236
  %203 = fcmp ogt float %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  store float %201, ptr %22, align 4, !tbaa !236
  br label %205

205:                                              ; preds = %204, %200, %160, %152
  %206 = add nuw nsw i64 %153, 1
  %207 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !226
  %208 = sext i16 %207 to i64
  %209 = icmp slt i64 %206, %208
  br i1 %209, label %152, label %246, !llvm.loop !237

210:                                              ; preds = %133
  %211 = call fastcc i32 @viewpixel_to_lampbuf(ptr noundef %63, ptr noundef %138, ptr noundef %143, float noundef %119, float noundef %122, ptr noundef nonnull %7), !range !227
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %246, label %213

213:                                              ; preds = %210
  %214 = call ptr @BLI_memarena_alloc(ptr noundef %75, i64 noundef 40) #14
  %215 = load ptr, ptr %127, align 8, !tbaa !45
  %216 = getelementptr inbounds %struct.ISBSampleA, ptr %214, i64 0, i32 4
  store ptr %215, ptr %216, align 8, !tbaa !228
  store ptr %214, ptr %127, align 8, !tbaa !45
  %217 = load i32, ptr %135, align 4, !tbaa !92
  %218 = getelementptr inbounds %struct.ISBSampleA, ptr %214, i64 0, i32 2
  store i32 %217, ptr %218, align 8, !tbaa !230
  %219 = load i32, ptr %130, align 4, !tbaa !92
  %220 = and i32 %219, -134217729
  %221 = getelementptr inbounds %struct.ISBSampleA, ptr %214, i64 0, i32 3
  store i32 %220, ptr %221, align 4, !tbaa !231
  %222 = getelementptr inbounds %struct.ISBSampleA, ptr %214, i64 0, i32 1
  store ptr %144, ptr %222, align 8, !tbaa !232
  %223 = load float, ptr %7, align 4, !tbaa !77
  store float %223, ptr %214, align 4, !tbaa !77
  %224 = load float, ptr %23, align 4, !tbaa !77
  %225 = getelementptr inbounds float, ptr %214, i64 1
  store float %224, ptr %225, align 4, !tbaa !77
  %226 = load float, ptr %24, align 4, !tbaa !77
  %227 = getelementptr inbounds float, ptr %214, i64 2
  store float %226, ptr %227, align 4, !tbaa !77
  %228 = load float, ptr %17, align 8, !tbaa !233
  %229 = fcmp olt float %223, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %213
  store float %223, ptr %17, align 8, !tbaa !233
  br label %231

231:                                              ; preds = %230, %213
  %232 = load float, ptr %214, align 4, !tbaa !77
  %233 = load float, ptr %25, align 4, !tbaa !234
  %234 = fcmp ogt float %232, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  store float %232, ptr %25, align 4, !tbaa !234
  br label %236

236:                                              ; preds = %235, %231
  %237 = load float, ptr %225, align 4, !tbaa !77
  %238 = load float, ptr %18, align 8, !tbaa !235
  %239 = fcmp olt float %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %236
  store float %237, ptr %18, align 8, !tbaa !235
  br label %241

241:                                              ; preds = %240, %236
  %242 = load float, ptr %225, align 4, !tbaa !77
  %243 = load float, ptr %26, align 4, !tbaa !236
  %244 = fcmp ogt float %242, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %241
  store float %242, ptr %26, align 4, !tbaa !236
  br label %246

246:                                              ; preds = %205, %147, %245, %241, %210
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  br label %247

247:                                              ; preds = %246, %128
  %248 = add nuw nsw i64 %129, 1
  %249 = icmp eq i64 %248, 4
  br i1 %249, label %250, label %128, !llvm.loop !238

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.APixstr, ptr %125, i64 0, i32 5
  %252 = load ptr, ptr %251, align 8, !tbaa !119
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %124, !llvm.loop !239

254:                                              ; preds = %250, %116, %109
  %255 = add nuw nsw i32 %112, 1
  %256 = add nsw i64 %110, 1
  %257 = getelementptr inbounds %struct.APixstr, ptr %111, i64 1
  %258 = load i32, ptr %15, align 8, !tbaa !219
  %259 = icmp slt i32 %255, %258
  br i1 %259, label %109, label %260, !llvm.loop !240

260:                                              ; preds = %254
  %261 = trunc i64 %256 to i32
  br label %262

262:                                              ; preds = %260, %101
  %263 = phi i32 [ %104, %101 ], [ %261, %260 ]
  %264 = phi ptr [ %102, %101 ], [ %257, %260 ]
  %265 = add nuw nsw i32 %103, 1
  %266 = load i32, ptr %16, align 4, !tbaa !220
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %101, label %268, !llvm.loop !241

268:                                              ; preds = %262, %95
  %269 = load float, ptr %17, align 8, !tbaa !222
  %270 = load i32, ptr %96, align 8, !tbaa !87
  %271 = sitofp i32 %270 to float
  %272 = fcmp une float %269, %271
  br i1 %272, label %273, label %451

273:                                              ; preds = %268
  call fastcc void @isb_bsp_split_init(ptr noundef nonnull %6, ptr noundef %75, i32 noundef 8)
  %274 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %275 = load i32, ptr %15, align 8, !tbaa !219
  %276 = sext i32 %275 to i64
  %277 = shl nsw i64 %276, 2
  %278 = call ptr %274(i64 noundef %277, ptr noundef nonnull @.str.21) #14
  %279 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %280 = load i32, ptr %16, align 4, !tbaa !220
  %281 = sext i32 %280 to i64
  %282 = shl nsw i64 %281, 2
  %283 = call ptr %279(i64 noundef %282, ptr noundef nonnull @.str.22) #14
  %284 = load i32, ptr %15, align 8, !tbaa !219
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %289, label %286

286:                                              ; preds = %289, %273
  %287 = load i32, ptr %16, align 4, !tbaa !220
  %288 = icmp sgt i32 %287, 0
  br i1 %288, label %297, label %305

289:                                              ; preds = %273, %289
  %290 = phi i64 [ %293, %289 ], [ 0, %273 ]
  %291 = getelementptr inbounds i32, ptr %278, i64 %290
  %292 = trunc i64 %290 to i32
  store i32 %292, ptr %291, align 4, !tbaa !92
  %293 = add nuw nsw i64 %290, 1
  %294 = load i32, ptr %15, align 8, !tbaa !219
  %295 = sext i32 %294 to i64
  %296 = icmp slt i64 %293, %295
  br i1 %296, label %289, label %286, !llvm.loop !242

297:                                              ; preds = %286, %297
  %298 = phi i64 [ %301, %297 ], [ 0, %286 ]
  %299 = getelementptr inbounds i32, ptr %283, i64 %298
  %300 = trunc i64 %298 to i32
  store i32 %300, ptr %299, align 4, !tbaa !92
  %301 = add nuw nsw i64 %298, 1
  %302 = load i32, ptr %16, align 4, !tbaa !220
  %303 = sext i32 %302 to i64
  %304 = icmp slt i64 %301, %303
  br i1 %304, label %297, label %305, !llvm.loop !243

305:                                              ; preds = %297, %286
  %306 = load i32, ptr %15, align 8, !tbaa !219
  call void @BLI_array_randomize(ptr noundef %278, i32 noundef 4, i32 noundef %306, i32 noundef 12345) #14
  %307 = load i32, ptr %16, align 4, !tbaa !220
  call void @BLI_array_randomize(ptr noundef %283, i32 noundef 4, i32 noundef %307, i32 noundef 54321) #14
  %308 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %309 = call i16 @llvm.umax.i16(i16 %308, i16 1)
  %310 = icmp sgt i16 %309, 0
  br i1 %310, label %311, label %367

311:                                              ; preds = %305, %360
  %312 = phi i64 [ %362, %360 ], [ 0, %305 ]
  %313 = phi i32 [ %361, %360 ], [ 0, %305 ]
  %314 = getelementptr inbounds ptr, ptr %5, i64 %312
  %315 = load ptr, ptr %314, align 8, !tbaa !45
  %316 = load i32, ptr %16, align 4, !tbaa !220
  %317 = icmp sgt i32 %316, 0
  br i1 %317, label %323, label %360

318:                                              ; preds = %357
  %319 = add nuw nsw i64 %324, 1
  %320 = load i32, ptr %16, align 4, !tbaa !220
  %321 = sext i32 %320 to i64
  %322 = icmp slt i64 %319, %321
  br i1 %322, label %323, label %360, !llvm.loop !244

323:                                              ; preds = %311, %318
  %324 = phi i64 [ %319, %318 ], [ 0, %311 ]
  %325 = phi i32 [ %358, %318 ], [ %313, %311 ]
  %326 = getelementptr inbounds i32, ptr %283, i64 %324
  %327 = load i32, ptr %326, align 4, !tbaa !92
  %328 = load i32, ptr %15, align 8, !tbaa !219
  %329 = icmp sgt i32 %328, 0
  br i1 %329, label %330, label %357

330:                                              ; preds = %323, %351
  %331 = phi i64 [ %353, %351 ], [ 0, %323 ]
  %332 = phi i32 [ %354, %351 ], [ %328, %323 ]
  %333 = phi i32 [ %352, %351 ], [ %325, %323 ]
  %334 = getelementptr inbounds i32, ptr %278, i64 %331
  %335 = load i32, ptr %334, align 4, !tbaa !92
  %336 = mul nsw i32 %332, %327
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds ptr, ptr %315, i64 %337
  %339 = sext i32 %335 to i64
  %340 = getelementptr inbounds ptr, ptr %338, i64 %339
  %341 = load ptr, ptr %340, align 8, !tbaa !45
  %342 = icmp eq ptr %341, null
  br i1 %342, label %351, label %343

343:                                              ; preds = %330, %343
  %344 = phi ptr [ %349, %343 ], [ %341, %330 ]
  %345 = phi i32 [ %347, %343 ], [ %333, %330 ]
  %346 = call fastcc i32 @isb_bsp_insert(ptr noundef nonnull %6, ptr noundef %75, ptr noundef nonnull %344), !range !227
  %347 = or i32 %346, %345
  %348 = getelementptr inbounds %struct.ISBSampleA, ptr %344, i64 0, i32 4
  %349 = load ptr, ptr %348, align 8, !tbaa !45
  %350 = icmp eq ptr %349, null
  br i1 %350, label %351, label %343, !llvm.loop !245

351:                                              ; preds = %343, %330
  %352 = phi i32 [ %333, %330 ], [ %347, %343 ]
  %353 = add nuw nsw i64 %331, 1
  %354 = load i32, ptr %15, align 8, !tbaa !219
  %355 = sext i32 %354 to i64
  %356 = icmp slt i64 %353, %355
  br i1 %356, label %330, label %357, !llvm.loop !246

357:                                              ; preds = %351, %323
  %358 = phi i32 [ %325, %323 ], [ %352, %351 ]
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %318, label %360

360:                                              ; preds = %318, %357, %311
  %361 = phi i32 [ %313, %311 ], [ %358, %357 ], [ %358, %318 ]
  %362 = add nuw nsw i64 %312, 1
  %363 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %364 = call i16 @llvm.umax.i16(i16 %363, i16 1)
  %365 = sext i16 %364 to i64
  %366 = icmp slt i64 %362, %365
  br i1 %366, label %311, label %367, !llvm.loop !247

367:                                              ; preds = %360, %305
  %368 = phi i32 [ 0, %305 ], [ %361, %360 ]
  %369 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %369(ptr noundef %278) #14
  %370 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %370(ptr noundef %283) #14
  %371 = icmp eq i32 %368, 0
  br i1 %371, label %372, label %451

372:                                              ; preds = %367
  call fastcc void @isb_bsp_fillfaces(ptr noundef %44, ptr noundef nonnull %6)
  %373 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %374 = load i32, ptr %15, align 8, !tbaa !219
  %375 = load i32, ptr %16, align 4, !tbaa !220
  %376 = mul nsw i32 %375, %374
  %377 = sext i32 %376 to i64
  %378 = shl nsw i64 %377, 3
  %379 = call ptr %373(i64 noundef %378, ptr noundef nonnull @.str.19) #14
  %380 = getelementptr inbounds %struct.ISBData, ptr %66, i64 0, i32 1
  store ptr %379, ptr %380, align 8, !tbaa !198
  %381 = call ptr @BLI_memarena_new(i64 noundef 1310720, ptr noundef nonnull @.str.17) #14
  %382 = getelementptr inbounds %struct.ISBData, ptr %66, i64 0, i32 2
  store ptr %381, ptr %382, align 8, !tbaa !248
  %383 = load i32, ptr %15, align 8, !tbaa !219
  %384 = load i32, ptr %16, align 4, !tbaa !220
  %385 = mul nsw i32 %384, %383
  %386 = icmp sgt i32 %385, 0
  br i1 %386, label %387, label %451

387:                                              ; preds = %372, %446
  %388 = phi ptr [ %449, %446 ], [ %379, %372 ]
  %389 = phi ptr [ %448, %446 ], [ %1, %372 ]
  %390 = phi i32 [ %447, %446 ], [ %385, %372 ]
  %391 = getelementptr inbounds %struct.APixstr, ptr %389, i64 0, i32 2
  %392 = load i32, ptr %391, align 8, !tbaa !92
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %446, label %394

394:                                              ; preds = %387, %442
  %395 = phi ptr [ %444, %442 ], [ %389, %387 ]
  br label %396

396:                                              ; preds = %394, %439
  %397 = phi i64 [ 0, %394 ], [ %440, %439 ]
  %398 = getelementptr inbounds %struct.APixstr, ptr %395, i64 0, i32 2, i64 %397
  %399 = load i32, ptr %398, align 4, !tbaa !92
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %439, label %401

401:                                              ; preds = %396
  %402 = getelementptr inbounds %struct.APixstr, ptr %395, i64 0, i32 4, i64 %397
  %403 = load i16, ptr %402, align 2, !tbaa !116
  %404 = icmp eq i16 %403, 0
  br i1 %404, label %439, label %405

405:                                              ; preds = %401
  %406 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !226
  %407 = icmp eq i16 %406, 0
  %408 = load ptr, ptr %382, align 8, !tbaa !248
  %409 = getelementptr inbounds %struct.APixstr, ptr %395, i64 0, i32 3, i64 %397
  %410 = load i32, ptr %409, align 4, !tbaa !92
  br i1 %407, label %428, label %411

411:                                              ; preds = %405
  %412 = getelementptr inbounds [4 x i16], ptr %395, i64 0, i64 %397
  %413 = load i16, ptr %412, align 2, !tbaa !116
  %414 = call i32 @count_mask(i16 noundef zeroext %413) #14
  %415 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !226
  %416 = icmp eq i16 %415, 0
  br i1 %416, label %425, label %417

417:                                              ; preds = %411
  %418 = trunc i32 %414 to i16
  %419 = sitofp i16 %403 to float
  %420 = sitofp i16 %415 to float
  %421 = fmul float %419, %420
  %422 = sitofp i16 %418 to float
  %423 = fmul float %422, 4.096000e+03
  %424 = fdiv float %421, %423
  br label %431

425:                                              ; preds = %411
  %426 = sitofp i16 %403 to float
  %427 = fmul float %426, 0x3F30000000000000
  br label %431

428:                                              ; preds = %405
  %429 = sitofp i16 %403 to float
  %430 = fmul float %429, 0x3F30000000000000
  br label %431

431:                                              ; preds = %417, %425, %428
  %432 = phi float [ %430, %428 ], [ %424, %417 ], [ %427, %425 ]
  %433 = call ptr @BLI_memarena_alloc(ptr noundef %408, i64 noundef 24) #14
  %434 = getelementptr inbounds %struct.ISBShadfacA, ptr %433, i64 0, i32 1
  store i32 %410, ptr %434, align 8, !tbaa !209
  %435 = and i32 %399, -134217729
  %436 = getelementptr inbounds %struct.ISBShadfacA, ptr %433, i64 0, i32 2
  store i32 %435, ptr %436, align 4, !tbaa !207
  %437 = getelementptr inbounds %struct.ISBShadfacA, ptr %433, i64 0, i32 3
  store float %432, ptr %437, align 8, !tbaa !210
  %438 = load ptr, ptr %388, align 8, !tbaa !45
  store ptr %438, ptr %433, align 8, !tbaa !249
  store ptr %433, ptr %388, align 8, !tbaa !45
  br label %439

439:                                              ; preds = %431, %401, %396
  %440 = add nuw nsw i64 %397, 1
  %441 = icmp eq i64 %440, 4
  br i1 %441, label %442, label %396, !llvm.loop !250

442:                                              ; preds = %439
  %443 = getelementptr inbounds %struct.APixstr, ptr %395, i64 0, i32 5
  %444 = load ptr, ptr %443, align 8, !tbaa !119
  %445 = icmp eq ptr %444, null
  br i1 %445, label %446, label %394, !llvm.loop !251

446:                                              ; preds = %442, %387
  %447 = add nsw i32 %390, -1
  %448 = getelementptr inbounds %struct.APixstr, ptr %389, i64 1
  %449 = getelementptr inbounds ptr, ptr %388, i64 1
  %450 = icmp sgt i32 %390, 1
  br i1 %450, label %387, label %451, !llvm.loop !252

451:                                              ; preds = %446, %372, %367, %268
  %452 = phi i1 [ false, %367 ], [ true, %268 ], [ true, %372 ], [ true, %446 ]
  call void @BLI_memarena_free(ptr noundef %75) #14
  %453 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %454 = call i16 @llvm.umax.i16(i16 %453, i16 1)
  %455 = icmp sgt i16 %454, 0
  br i1 %455, label %456, label %466

456:                                              ; preds = %451, %456
  %457 = phi i64 [ %461, %456 ], [ 0, %451 ]
  %458 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %459 = getelementptr inbounds [16 x ptr], ptr %5, i64 0, i64 %457
  %460 = load ptr, ptr %459, align 8, !tbaa !45
  call void %458(ptr noundef %460) #14
  %461 = add nuw nsw i64 %457, 1
  %462 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %463 = call i16 @llvm.umax.i16(i16 %462, i16 1)
  %464 = sext i16 %463 to i64
  %465 = icmp slt i64 %461, %464
  br i1 %465, label %456, label %466, !llvm.loop !253

466:                                              ; preds = %456, %451
  br i1 %452, label %469, label %467

467:                                              ; preds = %466
  %468 = call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %469

469:                                              ; preds = %466, %467
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #14
  br label %884

470:                                              ; preds = %56
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  %471 = load ptr, ptr %64, align 8, !tbaa !45
  %472 = load i32, ptr %27, align 8, !tbaa !217
  %473 = getelementptr inbounds %struct.ISBData, ptr %471, i64 0, i32 3
  store i32 %472, ptr %473, align 8, !tbaa !200
  %474 = load i32, ptr %28, align 8, !tbaa !218
  %475 = getelementptr inbounds %struct.ISBData, ptr %471, i64 0, i32 4
  store i32 %474, ptr %475, align 4, !tbaa !203
  %476 = load i32, ptr %29, align 8, !tbaa !219
  %477 = getelementptr inbounds %struct.ISBData, ptr %471, i64 0, i32 5
  store i32 %476, ptr %477, align 8, !tbaa !201
  %478 = load i32, ptr %30, align 4, !tbaa !220
  %479 = getelementptr inbounds %struct.ISBData, ptr %471, i64 0, i32 6
  store i32 %478, ptr %479, align 4, !tbaa !204
  %480 = call ptr @BLI_memarena_new(i64 noundef 2097152, ptr noundef nonnull @.str.17) #14
  call void @BLI_memarena_use_calloc(ptr noundef %480) #14
  %481 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %482 = call i16 @llvm.umax.i16(i16 %481, i16 1)
  %483 = icmp sgt i16 %482, 0
  br i1 %483, label %484, label %500

484:                                              ; preds = %470, %484
  %485 = phi i64 [ %495, %484 ], [ 0, %470 ]
  %486 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %487 = load i32, ptr %29, align 8, !tbaa !219
  %488 = sext i32 %487 to i64
  %489 = shl nsw i64 %488, 5
  %490 = load i32, ptr %30, align 4, !tbaa !220
  %491 = sext i32 %490 to i64
  %492 = mul i64 %489, %491
  %493 = call ptr %486(i64 noundef %492, ptr noundef nonnull @.str.24) #14
  %494 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %485
  store ptr %493, ptr %494, align 8, !tbaa !45
  %495 = add nuw nsw i64 %485, 1
  %496 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %497 = call i16 @llvm.umax.i16(i16 %496, i16 1)
  %498 = sext i16 %497 to i64
  %499 = icmp slt i64 %495, %498
  br i1 %499, label %484, label %500, !llvm.loop !254

500:                                              ; preds = %484, %470
  %501 = phi i16 [ %481, %470 ], [ %496, %484 ]
  %502 = icmp eq i16 %501, 0
  br i1 %502, label %503, label %511

503:                                              ; preds = %500
  %504 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %505 = load i32, ptr %29, align 8, !tbaa !219
  %506 = load i32, ptr %30, align 4, !tbaa !220
  %507 = mul nsw i32 %506, %505
  %508 = sext i32 %507 to i64
  %509 = shl nsw i64 %508, 1
  %510 = call ptr %504(i64 noundef %509, ptr noundef nonnull @.str.19) #14
  store ptr %510, ptr %471, align 8, !tbaa !196
  br label %511

511:                                              ; preds = %503, %500
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %512 = getelementptr inbounds %struct.ShadBuf, ptr %63, i64 0, i32 14
  %513 = load i32, ptr %512, align 8, !tbaa !87
  %514 = sitofp i32 %513 to float
  store float %514, ptr %31, align 8, !tbaa !222
  store float %514, ptr %32, align 8, !tbaa !225
  %515 = load i32, ptr %30, align 4, !tbaa !220
  %516 = icmp sgt i32 %515, 0
  br i1 %516, label %517, label %689

517:                                              ; preds = %511
  %518 = load ptr, ptr %3, align 16
  br label %519

519:                                              ; preds = %517, %684
  %520 = phi i32 [ 0, %517 ], [ %686, %684 ]
  %521 = phi i32 [ 0, %517 ], [ %685, %684 ]
  %522 = load i32, ptr %29, align 8, !tbaa !219
  %523 = icmp sgt i32 %522, 0
  br i1 %523, label %524, label %684

524:                                              ; preds = %519
  %525 = sext i32 %521 to i64
  br label %526

526:                                              ; preds = %524, %677
  %527 = phi i64 [ %525, %524 ], [ %679, %677 ]
  %528 = phi i32 [ 0, %524 ], [ %678, %677 ]
  %529 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !226
  %530 = icmp eq i16 %529, 0
  br i1 %530, label %622, label %531

531:                                              ; preds = %526
  %532 = load ptr, ptr %33, align 8, !tbaa !255
  %533 = getelementptr inbounds i64, ptr %532, i64 %527
  %534 = load i64, ptr %533, align 8, !tbaa !157
  %535 = icmp eq i64 %534, 0
  br i1 %535, label %677, label %536

536:                                              ; preds = %531
  %537 = load i32, ptr %27, align 8, !tbaa !217
  %538 = add nsw i32 %537, %528
  %539 = sitofp i32 %538 to float
  %540 = load i32, ptr %28, align 8, !tbaa !218
  %541 = add nsw i32 %540, %520
  %542 = sitofp i32 %541 to float
  %543 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !226
  %544 = icmp sgt i16 %543, 0
  br i1 %544, label %545, label %677

545:                                              ; preds = %536, %617
  %546 = phi i64 [ %618, %617 ], [ 0, %536 ]
  %547 = load i64, ptr %533, align 8, !tbaa !157
  %548 = trunc i64 %546 to i32
  %549 = shl nuw i32 1, %548
  %550 = icmp eq i64 %547, 0
  br i1 %550, label %617, label %551

551:                                              ; preds = %545
  %552 = inttoptr i64 %547 to ptr
  br label %553

553:                                              ; preds = %551, %560
  %554 = phi ptr [ %561, %560 ], [ %552, %551 ]
  %555 = getelementptr inbounds %struct.PixStr, ptr %554, i64 0, i32 5
  %556 = load i16, ptr %555, align 8, !tbaa !256
  %557 = zext i16 %556 to i32
  %558 = and i32 %549, %557
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %563

560:                                              ; preds = %553
  %561 = load ptr, ptr %554, align 8, !tbaa !258
  %562 = icmp eq ptr %561, null
  br i1 %562, label %617, label %553, !llvm.loop !259

563:                                              ; preds = %553
  %564 = getelementptr inbounds %struct.PixStr, ptr %554, i64 0, i32 2
  %565 = load i32, ptr %564, align 4, !tbaa !260
  %566 = icmp sgt i32 %565, 0
  br i1 %566, label %567, label %617

567:                                              ; preds = %563
  %568 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !132
  %569 = getelementptr inbounds %struct.PixStr, ptr %554, i64 0, i32 1
  %570 = load i32, ptr %569, align 8, !tbaa !261
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %568, i64 %571
  %573 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %568, i64 %571, i32 2
  %574 = load ptr, ptr %573, align 8, !tbaa !52
  %575 = add nuw i32 %565, 134217727
  %576 = and i32 %575, 134217727
  %577 = call ptr @RE_findOrAddVlak(ptr noundef %574, i32 noundef %576) #14
  %578 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %546
  %579 = load ptr, ptr %578, align 8, !tbaa !45
  %580 = getelementptr inbounds %struct.ISBSample, ptr %579, i64 %527
  %581 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %546
  %582 = load float, ptr %581, align 8, !tbaa !77
  %583 = fadd float %582, %539
  %584 = getelementptr inbounds %struct.Render, ptr @R, i64 0, i32 39, i64 %546, i64 1
  %585 = load float, ptr %584, align 4, !tbaa !77
  %586 = fadd float %585, %542
  %587 = call fastcc i32 @viewpixel_to_lampbuf(ptr noundef %63, ptr noundef %572, ptr noundef %577, float noundef %583, float noundef %586, ptr noundef %580), !range !227
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %617, label %589

589:                                              ; preds = %567
  %590 = load i32, ptr %569, align 8, !tbaa !261
  %591 = getelementptr inbounds %struct.ISBSample, ptr %579, i64 %527, i32 2
  store i32 %590, ptr %591, align 8, !tbaa !262
  %592 = load i32, ptr %564, align 4, !tbaa !260
  %593 = and i32 %592, -134217729
  %594 = getelementptr inbounds %struct.ISBSample, ptr %579, i64 %527, i32 3
  store i32 %593, ptr %594, align 4, !tbaa !264
  %595 = getelementptr inbounds %struct.PixStr, ptr %554, i64 0, i32 6
  store i16 0, ptr %595, align 2, !tbaa !265
  %596 = getelementptr inbounds %struct.ISBSample, ptr %579, i64 %527, i32 1
  store ptr %595, ptr %596, align 8, !tbaa !266
  %597 = load float, ptr %580, align 4, !tbaa !77
  %598 = load float, ptr %31, align 8, !tbaa !233
  %599 = fcmp olt float %597, %598
  br i1 %599, label %600, label %601

600:                                              ; preds = %589
  store float %597, ptr %31, align 8, !tbaa !233
  br label %601

601:                                              ; preds = %600, %589
  %602 = load float, ptr %580, align 4, !tbaa !77
  %603 = load float, ptr %34, align 4, !tbaa !234
  %604 = fcmp ogt float %602, %603
  br i1 %604, label %605, label %606

605:                                              ; preds = %601
  store float %602, ptr %34, align 4, !tbaa !234
  br label %606

606:                                              ; preds = %605, %601
  %607 = getelementptr inbounds float, ptr %580, i64 1
  %608 = load float, ptr %607, align 4, !tbaa !77
  %609 = load float, ptr %32, align 8, !tbaa !235
  %610 = fcmp olt float %608, %609
  br i1 %610, label %611, label %612

611:                                              ; preds = %606
  store float %608, ptr %32, align 8, !tbaa !235
  br label %612

612:                                              ; preds = %611, %606
  %613 = load float, ptr %607, align 4, !tbaa !77
  %614 = load float, ptr %35, align 4, !tbaa !236
  %615 = fcmp ogt float %613, %614
  br i1 %615, label %616, label %617

616:                                              ; preds = %612
  store float %613, ptr %35, align 4, !tbaa !236
  br label %617

617:                                              ; preds = %560, %545, %616, %612, %567, %563
  %618 = add nuw nsw i64 %546, 1
  %619 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !226
  %620 = sext i16 %619 to i64
  %621 = icmp slt i64 %618, %620
  br i1 %621, label %545, label %677, !llvm.loop !267

622:                                              ; preds = %526
  %623 = load ptr, ptr %36, align 8, !tbaa !268
  %624 = getelementptr inbounds i32, ptr %623, i64 %527
  %625 = load ptr, ptr %37, align 8, !tbaa !269
  %626 = getelementptr inbounds i32, ptr %625, i64 %527
  %627 = load i32, ptr %624, align 4, !tbaa !92
  %628 = icmp sgt i32 %627, 0
  br i1 %628, label %629, label %677

629:                                              ; preds = %622
  %630 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 69), align 8, !tbaa !132
  %631 = load i32, ptr %626, align 4, !tbaa !92
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %630, i64 %632
  %634 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %630, i64 %632, i32 2
  %635 = load ptr, ptr %634, align 8, !tbaa !52
  %636 = add nuw i32 %627, 134217727
  %637 = and i32 %636, 134217727
  %638 = call ptr @RE_findOrAddVlak(ptr noundef %635, i32 noundef %637) #14
  %639 = load i32, ptr %27, align 8, !tbaa !217
  %640 = add nsw i32 %639, %528
  %641 = sitofp i32 %640 to float
  %642 = load i32, ptr %28, align 8, !tbaa !218
  %643 = add nsw i32 %642, %520
  %644 = sitofp i32 %643 to float
  %645 = getelementptr inbounds %struct.ISBSample, ptr %518, i64 %527
  %646 = call fastcc i32 @viewpixel_to_lampbuf(ptr noundef %63, ptr noundef %633, ptr noundef %638, float noundef %641, float noundef %644, ptr noundef %645), !range !227
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %677, label %648

648:                                              ; preds = %629
  %649 = load i32, ptr %626, align 4, !tbaa !92
  %650 = getelementptr inbounds %struct.ISBSample, ptr %518, i64 %527, i32 2
  store i32 %649, ptr %650, align 8, !tbaa !262
  %651 = load i32, ptr %624, align 4, !tbaa !92
  %652 = and i32 %651, -134217729
  %653 = getelementptr inbounds %struct.ISBSample, ptr %518, i64 %527, i32 3
  store i32 %652, ptr %653, align 4, !tbaa !264
  %654 = load ptr, ptr %471, align 8, !tbaa !196
  %655 = getelementptr inbounds i16, ptr %654, i64 %527
  %656 = getelementptr inbounds %struct.ISBSample, ptr %518, i64 %527, i32 1
  store ptr %655, ptr %656, align 8, !tbaa !266
  %657 = load float, ptr %645, align 4, !tbaa !77
  %658 = load float, ptr %31, align 8, !tbaa !233
  %659 = fcmp olt float %657, %658
  br i1 %659, label %660, label %661

660:                                              ; preds = %648
  store float %657, ptr %31, align 8, !tbaa !233
  br label %661

661:                                              ; preds = %660, %648
  %662 = load float, ptr %645, align 4, !tbaa !77
  %663 = load float, ptr %38, align 4, !tbaa !234
  %664 = fcmp ogt float %662, %663
  br i1 %664, label %665, label %666

665:                                              ; preds = %661
  store float %662, ptr %38, align 4, !tbaa !234
  br label %666

666:                                              ; preds = %665, %661
  %667 = getelementptr inbounds float, ptr %645, i64 1
  %668 = load float, ptr %667, align 4, !tbaa !77
  %669 = load float, ptr %32, align 8, !tbaa !235
  %670 = fcmp olt float %668, %669
  br i1 %670, label %671, label %672

671:                                              ; preds = %666
  store float %668, ptr %32, align 8, !tbaa !235
  br label %672

672:                                              ; preds = %671, %666
  %673 = load float, ptr %667, align 4, !tbaa !77
  %674 = load float, ptr %39, align 4, !tbaa !236
  %675 = fcmp ogt float %673, %674
  br i1 %675, label %676, label %677

676:                                              ; preds = %672
  store float %673, ptr %39, align 4, !tbaa !236
  br label %677

677:                                              ; preds = %617, %536, %676, %672, %629, %622, %531
  %678 = add nuw nsw i32 %528, 1
  %679 = add nsw i64 %527, 1
  %680 = load i32, ptr %29, align 8, !tbaa !219
  %681 = icmp slt i32 %678, %680
  br i1 %681, label %526, label %682, !llvm.loop !270

682:                                              ; preds = %677
  %683 = trunc i64 %679 to i32
  br label %684

684:                                              ; preds = %682, %519
  %685 = phi i32 [ %521, %519 ], [ %683, %682 ]
  %686 = add nuw nsw i32 %520, 1
  %687 = load i32, ptr %30, align 4, !tbaa !220
  %688 = icmp slt i32 %686, %687
  br i1 %688, label %519, label %689, !llvm.loop !271

689:                                              ; preds = %684, %511
  %690 = load float, ptr %31, align 8, !tbaa !222
  %691 = load i32, ptr %512, align 8, !tbaa !87
  %692 = sitofp i32 %691 to float
  %693 = fcmp une float %690, %692
  br i1 %693, label %694, label %860

694:                                              ; preds = %689
  call fastcc void @isb_bsp_split_init(ptr noundef nonnull %4, ptr noundef %480, i32 noundef 8)
  %695 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %696 = load i32, ptr %29, align 8, !tbaa !219
  %697 = sext i32 %696 to i64
  %698 = shl nsw i64 %697, 2
  %699 = call ptr %695(i64 noundef %698, ptr noundef nonnull @.str.21) #14
  %700 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %701 = load i32, ptr %30, align 4, !tbaa !220
  %702 = sext i32 %701 to i64
  %703 = shl nsw i64 %702, 2
  %704 = call ptr %700(i64 noundef %703, ptr noundef nonnull @.str.22) #14
  %705 = load i32, ptr %29, align 8, !tbaa !219
  %706 = icmp sgt i32 %705, 0
  br i1 %706, label %710, label %707

707:                                              ; preds = %710, %694
  %708 = load i32, ptr %30, align 4, !tbaa !220
  %709 = icmp sgt i32 %708, 0
  br i1 %709, label %718, label %726

710:                                              ; preds = %694, %710
  %711 = phi i64 [ %714, %710 ], [ 0, %694 ]
  %712 = getelementptr inbounds i32, ptr %699, i64 %711
  %713 = trunc i64 %711 to i32
  store i32 %713, ptr %712, align 4, !tbaa !92
  %714 = add nuw nsw i64 %711, 1
  %715 = load i32, ptr %29, align 8, !tbaa !219
  %716 = sext i32 %715 to i64
  %717 = icmp slt i64 %714, %716
  br i1 %717, label %710, label %707, !llvm.loop !272

718:                                              ; preds = %707, %718
  %719 = phi i64 [ %722, %718 ], [ 0, %707 ]
  %720 = getelementptr inbounds i32, ptr %704, i64 %719
  %721 = trunc i64 %719 to i32
  store i32 %721, ptr %720, align 4, !tbaa !92
  %722 = add nuw nsw i64 %719, 1
  %723 = load i32, ptr %30, align 4, !tbaa !220
  %724 = sext i32 %723 to i64
  %725 = icmp slt i64 %722, %724
  br i1 %725, label %718, label %726, !llvm.loop !273

726:                                              ; preds = %718, %707
  %727 = load i32, ptr %29, align 8, !tbaa !219
  call void @BLI_array_randomize(ptr noundef %699, i32 noundef 4, i32 noundef %727, i32 noundef 12345) #14
  %728 = load i32, ptr %30, align 4, !tbaa !220
  call void @BLI_array_randomize(ptr noundef %704, i32 noundef 4, i32 noundef %728, i32 noundef 54321) #14
  %729 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %730 = call i16 @llvm.umax.i16(i16 %729, i16 1)
  %731 = icmp sgt i16 %730, 0
  br i1 %731, label %732, label %784

732:                                              ; preds = %726, %777
  %733 = phi i64 [ %779, %777 ], [ 0, %726 ]
  %734 = phi i32 [ %778, %777 ], [ 0, %726 ]
  %735 = getelementptr inbounds ptr, ptr %3, i64 %733
  %736 = load ptr, ptr %735, align 8, !tbaa !45
  %737 = load i32, ptr %30, align 4, !tbaa !220
  %738 = icmp sgt i32 %737, 0
  br i1 %738, label %744, label %777

739:                                              ; preds = %774
  %740 = add nuw nsw i64 %745, 1
  %741 = load i32, ptr %30, align 4, !tbaa !220
  %742 = sext i32 %741 to i64
  %743 = icmp slt i64 %740, %742
  br i1 %743, label %744, label %777, !llvm.loop !274

744:                                              ; preds = %732, %739
  %745 = phi i64 [ %740, %739 ], [ 0, %732 ]
  %746 = phi i32 [ %775, %739 ], [ %734, %732 ]
  %747 = getelementptr inbounds i32, ptr %704, i64 %745
  %748 = load i32, ptr %747, align 4, !tbaa !92
  %749 = load i32, ptr %29, align 8, !tbaa !219
  %750 = icmp sgt i32 %749, 0
  br i1 %750, label %751, label %774

751:                                              ; preds = %744, %768
  %752 = phi i64 [ %770, %768 ], [ 0, %744 ]
  %753 = phi i32 [ %771, %768 ], [ %749, %744 ]
  %754 = phi i32 [ %769, %768 ], [ %746, %744 ]
  %755 = getelementptr inbounds i32, ptr %699, i64 %752
  %756 = load i32, ptr %755, align 4, !tbaa !92
  %757 = mul nsw i32 %753, %748
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds %struct.ISBSample, ptr %736, i64 %758
  %760 = sext i32 %756 to i64
  %761 = getelementptr inbounds %struct.ISBSample, ptr %759, i64 %760, i32 3
  %762 = load i32, ptr %761, align 4, !tbaa !264
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %768, label %764

764:                                              ; preds = %751
  %765 = getelementptr inbounds %struct.ISBSample, ptr %759, i64 %760
  %766 = call fastcc i32 @isb_bsp_insert(ptr noundef nonnull %4, ptr noundef %480, ptr noundef %765), !range !227
  %767 = or i32 %766, %754
  br label %768

768:                                              ; preds = %764, %751
  %769 = phi i32 [ %767, %764 ], [ %754, %751 ]
  %770 = add nuw nsw i64 %752, 1
  %771 = load i32, ptr %29, align 8, !tbaa !219
  %772 = sext i32 %771 to i64
  %773 = icmp slt i64 %770, %772
  br i1 %773, label %751, label %774, !llvm.loop !275

774:                                              ; preds = %768, %744
  %775 = phi i32 [ %746, %744 ], [ %769, %768 ]
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %739, label %777

777:                                              ; preds = %739, %774, %732
  %778 = phi i32 [ %734, %732 ], [ %775, %774 ], [ %775, %739 ]
  %779 = add nuw nsw i64 %733, 1
  %780 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %781 = call i16 @llvm.umax.i16(i16 %780, i16 1)
  %782 = sext i16 %781 to i64
  %783 = icmp slt i64 %779, %782
  br i1 %783, label %732, label %784, !llvm.loop !276

784:                                              ; preds = %777, %726
  %785 = phi i32 [ 0, %726 ], [ %778, %777 ]
  %786 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %786(ptr noundef %699) #14
  %787 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %787(ptr noundef %704) #14
  %788 = icmp eq i32 %785, 0
  br i1 %788, label %789, label %865

789:                                              ; preds = %784
  call fastcc void @isb_bsp_fillfaces(ptr noundef %44, ptr noundef nonnull %4)
  %790 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !226
  %791 = icmp eq i16 %790, 0
  br i1 %791, label %865, label %792

792:                                              ; preds = %789
  %793 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %794 = load i32, ptr %29, align 8, !tbaa !219
  %795 = load i32, ptr %30, align 4, !tbaa !220
  %796 = mul nsw i32 %795, %794
  %797 = sext i32 %796 to i64
  %798 = shl nsw i64 %797, 3
  %799 = call ptr %793(i64 noundef %798, ptr noundef nonnull @.str.19) #14
  %800 = getelementptr inbounds %struct.ISBData, ptr %471, i64 0, i32 1
  store ptr %799, ptr %800, align 8, !tbaa !198
  %801 = call ptr @BLI_memarena_new(i64 noundef 1310720, ptr noundef nonnull @.str.17) #14
  %802 = getelementptr inbounds %struct.ISBData, ptr %471, i64 0, i32 2
  store ptr %801, ptr %802, align 8, !tbaa !248
  call void @BLI_memarena_use_calloc(ptr noundef %801) #14
  %803 = load i32, ptr %29, align 8, !tbaa !219
  %804 = load i32, ptr %30, align 4, !tbaa !220
  %805 = mul nsw i32 %804, %803
  %806 = icmp sgt i32 %805, 0
  br i1 %806, label %807, label %865

807:                                              ; preds = %792
  %808 = load ptr, ptr %40, align 8, !tbaa !255
  br label %809

809:                                              ; preds = %807, %855
  %810 = phi ptr [ %858, %855 ], [ %799, %807 ]
  %811 = phi ptr [ %857, %855 ], [ %808, %807 ]
  %812 = phi i32 [ %856, %855 ], [ %805, %807 ]
  %813 = load i64, ptr %811, align 8, !tbaa !157
  %814 = icmp eq i64 %813, 0
  br i1 %814, label %855, label %815

815:                                              ; preds = %809
  %816 = inttoptr i64 %813 to ptr
  br label %817

817:                                              ; preds = %815, %852
  %818 = phi ptr [ %816, %815 ], [ %853, %852 ]
  %819 = getelementptr inbounds %struct.PixStr, ptr %818, i64 0, i32 6
  %820 = load i16, ptr %819, align 2, !tbaa !265
  %821 = icmp eq i16 %820, 0
  br i1 %821, label %852, label %822

822:                                              ; preds = %817
  %823 = load ptr, ptr %802, align 8, !tbaa !248
  %824 = getelementptr inbounds %struct.PixStr, ptr %818, i64 0, i32 1
  %825 = load i32, ptr %824, align 8, !tbaa !261
  %826 = getelementptr inbounds %struct.PixStr, ptr %818, i64 0, i32 2
  %827 = load i32, ptr %826, align 4, !tbaa !260
  %828 = getelementptr inbounds %struct.PixStr, ptr %818, i64 0, i32 5
  %829 = load i16, ptr %828, align 8, !tbaa !256
  %830 = call i32 @count_mask(i16 noundef zeroext %829) #14
  %831 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !226
  %832 = icmp eq i16 %831, 0
  br i1 %832, label %841, label %833

833:                                              ; preds = %822
  %834 = trunc i32 %830 to i16
  %835 = sitofp i16 %820 to float
  %836 = sitofp i16 %831 to float
  %837 = fmul float %835, %836
  %838 = sitofp i16 %834 to float
  %839 = fmul float %838, 4.096000e+03
  %840 = fdiv float %837, %839
  br label %844

841:                                              ; preds = %822
  %842 = sitofp i16 %820 to float
  %843 = fmul float %842, 0x3F30000000000000
  br label %844

844:                                              ; preds = %841, %833
  %845 = phi float [ %840, %833 ], [ %843, %841 ]
  %846 = call ptr @BLI_memarena_alloc(ptr noundef %823, i64 noundef 24) #14
  %847 = getelementptr inbounds %struct.ISBShadfacA, ptr %846, i64 0, i32 1
  store i32 %825, ptr %847, align 8, !tbaa !209
  %848 = and i32 %827, -134217729
  %849 = getelementptr inbounds %struct.ISBShadfacA, ptr %846, i64 0, i32 2
  store i32 %848, ptr %849, align 4, !tbaa !207
  %850 = getelementptr inbounds %struct.ISBShadfacA, ptr %846, i64 0, i32 3
  store float %845, ptr %850, align 8, !tbaa !210
  %851 = load ptr, ptr %810, align 8, !tbaa !45
  store ptr %851, ptr %846, align 8, !tbaa !249
  store ptr %846, ptr %810, align 8, !tbaa !45
  br label %852

852:                                              ; preds = %844, %817
  %853 = load ptr, ptr %818, align 8, !tbaa !258
  %854 = icmp eq ptr %853, null
  br i1 %854, label %855, label %817, !llvm.loop !277

855:                                              ; preds = %852, %809
  %856 = add nsw i32 %812, -1
  %857 = getelementptr inbounds i64, ptr %811, i64 1
  %858 = getelementptr inbounds ptr, ptr %810, i64 1
  %859 = icmp sgt i32 %812, 1
  br i1 %859, label %809, label %865, !llvm.loop !278

860:                                              ; preds = %689
  %861 = load ptr, ptr %471, align 8, !tbaa !196
  %862 = icmp eq ptr %861, null
  br i1 %862, label %865, label %863

863:                                              ; preds = %860
  %864 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %864(ptr noundef nonnull %861) #14
  store ptr null, ptr %471, align 8, !tbaa !196
  br label %865

865:                                              ; preds = %855, %792, %863, %860, %789, %784
  %866 = phi i1 [ true, %789 ], [ false, %784 ], [ true, %863 ], [ true, %860 ], [ true, %792 ], [ true, %855 ]
  call void @BLI_memarena_free(ptr noundef %480) #14
  %867 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %868 = call i16 @llvm.umax.i16(i16 %867, i16 1)
  %869 = icmp sgt i16 %868, 0
  br i1 %869, label %870, label %880

870:                                              ; preds = %865, %870
  %871 = phi i64 [ %875, %870 ], [ 0, %865 ]
  %872 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %873 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %871
  %874 = load ptr, ptr %873, align 8, !tbaa !45
  call void %872(ptr noundef %874) #14
  %875 = add nuw nsw i64 %871, 1
  %876 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2
  %877 = call i16 @llvm.umax.i16(i16 %876, i16 1)
  %878 = sext i16 %877 to i64
  %879 = icmp slt i64 %875, %878
  br i1 %879, label %870, label %880, !llvm.loop !279

880:                                              ; preds = %870, %865
  br i1 %866, label %883, label %881

881:                                              ; preds = %880
  %882 = call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %883

883:                                              ; preds = %880, %881
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #14
  br label %884

884:                                              ; preds = %469, %883, %52, %48, %41
  %885 = load ptr, ptr %42, align 8, !tbaa !45
  %886 = icmp eq ptr %885, null
  br i1 %886, label %887, label %41, !llvm.loop !280

887:                                              ; preds = %884, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ISB_free(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 66), align 8, !tbaa !45
  %3 = icmp eq ptr %2, null
  br i1 %3, label %52, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.RenderPart, ptr %0, i64 0, i32 20
  br label %6

6:                                                ; preds = %4, %49
  %7 = phi ptr [ %2, %4 ], [ %50, %49 ]
  %8 = getelementptr inbounds %struct.GroupObject, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !212
  %10 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 6
  %11 = load i16, ptr %10, align 8, !tbaa !214
  %12 = icmp eq i16 %11, 2
  br i1 %12, label %13, label %49

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 57
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.LampRen, ptr %9, i64 0, i32 36
  %19 = load i16, ptr %18, align 4, !tbaa !86
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load i16, ptr %5, align 2, !tbaa !215
  %23 = sext i16 %22 to i64
  %24 = getelementptr inbounds %struct.ShadBuf, ptr %15, i64 0, i32 17, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  %26 = icmp eq ptr %25, null
  br i1 %26, label %49, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %25, align 8, !tbaa !196
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %31(ptr noundef nonnull %28) #14
  br label %32

32:                                               ; preds = %30, %27
  %33 = getelementptr inbounds %struct.ISBData, ptr %25, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !198
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %37(ptr noundef nonnull %34) #14
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.ISBData, ptr %25, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !248
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @BLI_memarena_free(ptr noundef nonnull %40) #14
  br label %43

43:                                               ; preds = %42, %38
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %44(ptr noundef nonnull %25) #14
  %45 = load ptr, ptr %14, align 8, !tbaa !34
  %46 = load i16, ptr %5, align 2, !tbaa !215
  %47 = sext i16 %46 to i64
  %48 = getelementptr inbounds %struct.ShadBuf, ptr %45, i64 0, i32 17, i64 %47
  store ptr null, ptr %48, align 8, !tbaa !45
  br label %49

49:                                               ; preds = %21, %43, %17, %13, %6
  %50 = load ptr, ptr %7, align 8, !tbaa !45
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %6, !llvm.loop !281

52:                                               ; preds = %49, %1
  ret void
}

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #4

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @RE_findOrAddVert(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #3

declare void @BLI_jitter_init(ptr noundef, i32 noundef) local_unnamed_addr #4

declare float @RE_filter_value(i32 noundef, float noundef) local_unnamed_addr #4

declare void @zbuffer_abuf_shadow(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @freepsA(ptr noundef) local_unnamed_addr #4

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @verg_deepsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load i32, ptr %0, align 4, !tbaa !129
  %4 = load i32, ptr %1, align 4, !tbaa !129
  %5 = icmp slt i32 %3, %4
  %6 = icmp ne i32 %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare ptr @RE_findOrAddStrand(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @RE_findOrAddVlak(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare void @zbuffer_shadow(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #4

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @BLI_memarena_use_calloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @viewpixel_to_lampbuf(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, float noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = alloca [4 x float], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  call void @RE_vlakren_get_normal(ptr noundef nonnull @R, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9) #14
  %11 = load ptr, ptr %2, align 8, !tbaa !69
  %12 = load float, ptr %11, align 4, !tbaa !77
  store float %12, ptr %8, align 4, !tbaa !77
  %13 = getelementptr inbounds float, ptr %11, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !77
  %15 = getelementptr inbounds float, ptr %8, i64 1
  store float %14, ptr %15, align 4, !tbaa !77
  %16 = getelementptr inbounds float, ptr %11, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !77
  %18 = getelementptr inbounds float, ptr %8, i64 2
  store float %17, ptr %18, align 4, !tbaa !77
  %19 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 11
  %20 = load i16, ptr %19, align 8, !tbaa !54
  %21 = and i16 %20, 3
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %1, i64 0, i32 8
  call void @mul_m4_v3(ptr noundef nonnull %24, ptr noundef nonnull %8) #14
  br label %25

25:                                               ; preds = %23, %6
  %26 = load float, ptr %8, align 4, !tbaa !77
  %27 = load float, ptr %9, align 4, !tbaa !77
  %28 = load float, ptr %15, align 4, !tbaa !77
  %29 = getelementptr inbounds float, ptr %9, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !77
  %31 = fmul float %28, %30
  %32 = call float @llvm.fmuladd.f32(float %26, float %27, float %31)
  %33 = load float, ptr %18, align 4, !tbaa !77
  %34 = getelementptr inbounds float, ptr %9, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !77
  %36 = call float @llvm.fmuladd.f32(float %33, float %35, float %32)
  %37 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  store float 1.000000e+00, ptr %37, align 4, !tbaa !77
  %38 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !282
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %73, label %41

41:                                               ; preds = %25
  %42 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 13), align 4, !tbaa !283
  %43 = sitofp i32 %42 to float
  %44 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35), align 8, !tbaa !77
  %45 = fmul float %44, %43
  %46 = fdiv float 2.000000e+00, %45
  %47 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 14), align 8, !tbaa !284
  %48 = sitofp i32 %47 to float
  %49 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 1, i64 1), align 4, !tbaa !77
  %50 = fmul float %49, %48
  %51 = fdiv float 2.000000e+00, %50
  %52 = call float @llvm.fmuladd.f32(float %43, float -5.000000e-01, float %3)
  %53 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3), align 8, !tbaa !77
  %54 = fneg float %53
  %55 = fdiv float %54, %44
  %56 = call float @llvm.fmuladd.f32(float %52, float %46, float %55)
  store float %56, ptr %7, align 16, !tbaa !77
  %57 = call float @llvm.fmuladd.f32(float %48, float -5.000000e-01, float %4)
  %58 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 35, i64 3, i64 1), align 4, !tbaa !77
  %59 = fneg float %58
  %60 = fdiv float %59, %49
  %61 = call float @llvm.fmuladd.f32(float %57, float %51, float %60)
  %62 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  store float %61, ptr %62, align 4, !tbaa !77
  %63 = fcmp une float %35, 0.000000e+00
  br i1 %63, label %64, label %71

64:                                               ; preds = %41
  %65 = fneg float %27
  %66 = call float @llvm.fmuladd.f32(float %65, float %56, float %36)
  %67 = fneg float %30
  %68 = call float @llvm.fmuladd.f32(float %67, float %61, float %66)
  %69 = fdiv float %68, %35
  %70 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  store float %69, ptr %70, align 8, !tbaa !77
  br label %93

71:                                               ; preds = %41
  %72 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %72, align 8, !tbaa !77
  br label %93

73:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  call void @calc_view_vector(ptr noundef nonnull %10, float noundef %3, float noundef %4) #14
  %74 = load float, ptr %9, align 4, !tbaa !77
  %75 = load float, ptr %10, align 4, !tbaa !77
  %76 = load float, ptr %29, align 4, !tbaa !77
  %77 = getelementptr inbounds float, ptr %10, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !77
  %79 = fmul float %76, %78
  %80 = call float @llvm.fmuladd.f32(float %74, float %75, float %79)
  %81 = load float, ptr %34, align 4, !tbaa !77
  %82 = getelementptr inbounds float, ptr %10, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !77
  %84 = call float @llvm.fmuladd.f32(float %81, float %83, float %80)
  %85 = fcmp une float %84, 0.000000e+00
  br i1 %85, label %86, label %133

86:                                               ; preds = %73
  %87 = fdiv float %36, %84
  %88 = fmul float %75, %87
  store float %88, ptr %7, align 16, !tbaa !77
  %89 = fmul float %78, %87
  %90 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  store float %89, ptr %90, align 4, !tbaa !77
  %91 = fmul float %83, %87
  %92 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  store float %91, ptr %92, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  br label %93

93:                                               ; preds = %86, %64, %71
  %94 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 3
  call void @mul_m4_v4(ptr noundef nonnull %94, ptr noundef nonnull %7) #14
  %95 = load float, ptr %37, align 4, !tbaa !77
  %96 = call float @llvm.fabs.f32(float %95)
  %97 = load float, ptr %7, align 16, !tbaa !77
  %98 = fneg float %96
  %99 = fcmp olt float %97, %98
  %100 = fcmp ogt float %97, %96
  %101 = or i1 %99, %100
  br i1 %101, label %134, label %102

102:                                              ; preds = %93
  %103 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !77
  %105 = fcmp olt float %104, %98
  %106 = fcmp ogt float %104, %96
  %107 = or i1 %105, %106
  br i1 %107, label %134, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %110 = load float, ptr %109, align 8, !tbaa !77
  %111 = fcmp olt float %110, %98
  %112 = fcmp ogt float %110, %96
  %113 = or i1 %111, %112
  br i1 %113, label %134, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 14
  %116 = load i32, ptr %115, align 8, !tbaa !87
  %117 = sitofp i32 %116 to float
  %118 = fmul float %117, 5.000000e-01
  %119 = fdiv float %97, %95
  %120 = fadd float %119, 1.000000e+00
  %121 = call float @llvm.fmuladd.f32(float %118, float %120, float -5.000000e-01)
  store float %121, ptr %5, align 4, !tbaa !77
  %122 = fdiv float %104, %95
  %123 = fadd float %122, 1.000000e+00
  %124 = call float @llvm.fmuladd.f32(float %118, float %123, float -5.000000e-01)
  %125 = getelementptr inbounds float, ptr %5, i64 1
  store float %124, ptr %125, align 4, !tbaa !77
  %126 = fdiv float %110, %95
  %127 = fmul float %126, 0x41E0000000000000
  %128 = getelementptr inbounds float, ptr %5, i64 2
  store float %127, ptr %128, align 4, !tbaa !77
  %129 = getelementptr inbounds %struct.ShadBuf, ptr %0, i64 0, i32 15
  %130 = load i32, ptr %129, align 4, !tbaa !85
  %131 = sitofp i32 %130 to float
  %132 = call float @llvm.fmuladd.f32(float %131, float 0xBFA99999A0000000, float %127)
  store float %132, ptr %128, align 4, !tbaa !77
  br label %134

133:                                              ; preds = %73
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  br label %134

134:                                              ; preds = %108, %102, %93, %133, %114
  %135 = phi i32 [ 1, %114 ], [ 0, %133 ], [ 0, %93 ], [ 0, %102 ], [ 0, %108 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  ret i32 %135
}

; Function Attrs: nounwind uwtable
define internal fastcc void @isb_bsp_split_init(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  br label %4

4:                                                ; preds = %42, %3
  %5 = phi ptr [ %0, %3 ], [ %29, %42 ]
  %6 = phi i32 [ %2, %3 ], [ %43, %42 ]
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ISBBranch, ptr %5, i64 0, i32 3
  %10 = load float, ptr %9, align 8, !tbaa !222
  %11 = getelementptr inbounds %struct.ISBBranch, ptr %5, i64 0, i32 3, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !285
  %13 = fadd float %10, %12
  %14 = fmul float %13, 5.000000e-01
  %15 = getelementptr inbounds %struct.ISBBranch, ptr %5, i64 0, i32 2
  store float %14, ptr %15, align 8, !tbaa !77
  %16 = getelementptr inbounds %struct.ISBBranch, ptr %5, i64 0, i32 3, i32 2
  %17 = load float, ptr %16, align 8, !tbaa !225
  %18 = getelementptr inbounds %struct.ISBBranch, ptr %5, i64 0, i32 3, i32 3
  %19 = load float, ptr %18, align 4, !tbaa !286
  %20 = fadd float %17, %19
  %21 = fmul float %20, 5.000000e-01
  %22 = getelementptr inbounds %struct.ISBBranch, ptr %5, i64 0, i32 2, i64 1
  store float %21, ptr %22, align 4, !tbaa !77
  %23 = fsub float %12, %10
  %24 = fsub float %19, %17
  %25 = fcmp ule float %23, %24
  %26 = getelementptr inbounds %struct.ISBBranch, ptr %5, i64 0, i32 5
  %27 = zext i1 %25 to i16
  store i16 %27, ptr %26, align 2, !tbaa !287
  %28 = tail call ptr @BLI_memarena_alloc(ptr noundef %1, i64 noundef 64) #14
  store ptr %28, ptr %5, align 8, !tbaa !288
  %29 = tail call ptr @BLI_memarena_alloc(ptr noundef %1, i64 noundef 64) #14
  %30 = getelementptr inbounds %struct.ISBBranch, ptr %5, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !289
  %31 = getelementptr inbounds %struct.ISBBranch, ptr %28, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !290
  %32 = getelementptr inbounds %struct.ISBBranch, ptr %29, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !290
  br i1 %25, label %37, label %33

33:                                               ; preds = %8
  %34 = load float, ptr %15, align 8, !tbaa !77
  %35 = getelementptr inbounds %struct.ISBBranch, ptr %28, i64 0, i32 3, i32 1
  store float %34, ptr %35, align 4, !tbaa !285
  %36 = load float, ptr %15, align 8, !tbaa !77
  store float %36, ptr %32, align 8, !tbaa !222
  br label %42

37:                                               ; preds = %8
  %38 = load float, ptr %22, align 4, !tbaa !77
  %39 = getelementptr inbounds %struct.ISBBranch, ptr %28, i64 0, i32 3, i32 3
  store float %38, ptr %39, align 4, !tbaa !286
  %40 = load float, ptr %22, align 4, !tbaa !77
  %41 = getelementptr inbounds %struct.ISBBranch, ptr %29, i64 0, i32 3, i32 2
  store float %40, ptr %41, align 8, !tbaa !225
  br label %42

42:                                               ; preds = %37, %33
  %43 = add nsw i32 %6, -1
  tail call fastcc void @isb_bsp_split_init(ptr noundef %28, ptr noundef %1, i32 noundef %43)
  br label %4

44:                                               ; preds = %4
  %45 = tail call ptr @BLI_memarena_alloc(ptr noundef %1, i64 noundef 1024) #14
  %46 = getelementptr inbounds %struct.ISBBranch, ptr %5, i64 0, i32 8
  store ptr %45, ptr %46, align 8, !tbaa !291
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @isb_bsp_fillfaces(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ZSpan, align 8
  %4 = alloca %struct.ZSpan, align 8
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 57
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  %9 = getelementptr inbounds %struct.ShadBuf, ptr %8, i64 0, i32 14
  %10 = load i32, ptr %9, align 8, !tbaa !87
  tail call fastcc void @isb_bsp_recalc_box(ptr noundef %1)
  %11 = getelementptr inbounds %struct.ISBBranch, ptr %1, i64 0, i32 3
  %12 = load float, ptr %11, align 8, !tbaa !222
  %13 = sitofp i32 %10 to float
  %14 = fneg float %13
  %15 = tail call float @llvm.fmuladd.f32(float %12, float 2.000000e+00, float %14)
  %16 = fadd float %15, -2.000000e+00
  %17 = fdiv float %16, %13
  %18 = getelementptr inbounds %struct.ISBBranch, ptr %1, i64 0, i32 3, i32 1
  %19 = load float, ptr %18, align 4, !tbaa !285
  %20 = tail call float @llvm.fmuladd.f32(float %19, float 2.000000e+00, float %14)
  %21 = fadd float %20, 2.000000e+00
  %22 = fdiv float %21, %13
  %23 = getelementptr inbounds %struct.ISBBranch, ptr %1, i64 0, i32 3, i32 2
  %24 = load float, ptr %23, align 8, !tbaa !225
  %25 = tail call float @llvm.fmuladd.f32(float %24, float 2.000000e+00, float %14)
  %26 = fadd float %25, -2.000000e+00
  %27 = fdiv float %26, %13
  %28 = getelementptr inbounds %struct.ISBBranch, ptr %1, i64 0, i32 3, i32 3
  %29 = load float, ptr %28, align 4, !tbaa !286
  %30 = tail call float @llvm.fmuladd.f32(float %29, float 2.000000e+00, float %14)
  %31 = fadd float %30, 2.000000e+00
  %32 = fdiv float %31, %13
  %33 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 7
  %34 = load i32, ptr %33, align 4, !tbaa !43
  %35 = and i32 %34, 32772
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.LampRen, ptr %0, i64 0, i32 17
  %39 = load i32, ptr %38, align 4, !tbaa !44
  br label %40

40:                                               ; preds = %37, %2
  %41 = phi i32 [ %39, %37 ], [ -1, %2 ]
  %42 = load float, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 19), align 4, !tbaa !292
  call void @zbuf_alloc_span(ptr noundef nonnull %3, i32 noundef %10, i32 noundef %10, float noundef %42) #14
  %43 = fmul float %13, 5.000000e-01
  %44 = getelementptr inbounds %struct.ZSpan, ptr %3, i64 0, i32 12
  store float %43, ptr %44, align 8, !tbaa !293
  %45 = getelementptr inbounds %struct.ZSpan, ptr %3, i64 0, i32 13
  store float %43, ptr %45, align 4, !tbaa !295
  %46 = getelementptr inbounds %struct.ZSpan, ptr %3, i64 0, i32 14
  store float -5.000000e-01, ptr %46, align 8, !tbaa !296
  %47 = getelementptr inbounds %struct.ZSpan, ptr %3, i64 0, i32 15
  store float -5.000000e-01, ptr %47, align 4, !tbaa !297
  %48 = getelementptr inbounds %struct.ZSpan, ptr %3, i64 0, i32 16
  store ptr %1, ptr %48, align 8, !tbaa !298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %4, ptr noundef nonnull align 8 dereferenceable(224) %3, i64 224, i1 false), !tbaa.struct !299
  %49 = getelementptr inbounds %struct.ZSpan, ptr %3, i64 0, i32 34
  store ptr @isb_bsp_test_face, ptr %49, align 8, !tbaa !300
  %50 = getelementptr inbounds %struct.ZSpan, ptr %4, i64 0, i32 34
  store ptr @isb_bsp_test_strand, ptr %50, align 8, !tbaa !300
  %51 = load ptr, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 70), align 8, !tbaa !45
  %52 = icmp eq ptr %51, null
  br i1 %52, label %292, label %53

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.ShadBuf, ptr %8, i64 0, i32 3
  %55 = getelementptr inbounds %struct.ShadBuf, ptr %8, i64 0, i32 3
  %56 = getelementptr inbounds %struct.ZSpan, ptr %3, i64 0, i32 27
  %57 = getelementptr inbounds %struct.ZSpan, ptr %4, i64 0, i32 27
  %58 = getelementptr inbounds float, ptr %6, i64 3
  %59 = getelementptr inbounds float, ptr %6, i64 1
  %60 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 1
  %61 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 1, i64 3
  %62 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 1, i64 1
  %63 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 2
  %64 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 2, i64 3
  %65 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 2, i64 1
  %66 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  %67 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 3
  %68 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3, i64 1
  %69 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  %70 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  %71 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  %72 = getelementptr inbounds [4 x [4 x float]], ptr %6, i64 0, i64 3
  br label %73

73:                                               ; preds = %53, %285
  %74 = phi ptr [ %51, %53 ], [ %290, %285 ]
  %75 = phi ptr [ null, %53 ], [ %288, %285 ]
  %76 = phi ptr [ null, %53 ], [ %287, %285 ]
  %77 = phi i32 [ 0, %53 ], [ %289, %285 ]
  %78 = phi i32 [ 1, %53 ], [ %286, %285 ]
  %79 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %74, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !52
  %81 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %74, i64 0, i32 11
  %82 = load i16, ptr %81, align 8, !tbaa !54
  %83 = and i16 %82, 3
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %73
  %86 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %74, i64 0, i32 8
  call void @mul_m4_m4m4(ptr noundef nonnull %5, ptr noundef nonnull %54, ptr noundef nonnull %86) #14
  br label %88

87:                                               ; preds = %73
  call void @copy_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %55) #14
  br label %88

88:                                               ; preds = %87, %85
  %89 = getelementptr inbounds %struct.ObjectRen, ptr %80, i64 0, i32 11
  %90 = load i32, ptr %89, align 4, !tbaa !55
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %285

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.ObjectRen, ptr %80, i64 0, i32 19
  %94 = getelementptr inbounds %struct.ObjectInstanceRen, ptr %74, i64 0, i32 7
  br label %95

95:                                               ; preds = %92, %281
  %96 = phi ptr [ %75, %92 ], [ %111, %281 ]
  %97 = phi ptr [ %76, %92 ], [ %136, %281 ]
  %98 = phi i32 [ 0, %92 ], [ %282, %281 ]
  %99 = phi i32 [ %78, %92 ], [ %135, %281 ]
  %100 = and i32 %98, 255
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load ptr, ptr %93, align 8, !tbaa !56
  %104 = lshr exact i32 %98, 8
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds %struct.VlakTableNode, ptr %103, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !57
  br label %110

108:                                              ; preds = %95
  %109 = getelementptr inbounds %struct.VlakRen, ptr %96, i64 1
  br label %110

110:                                              ; preds = %108, %102
  %111 = phi ptr [ %107, %102 ], [ %109, %108 ]
  %112 = getelementptr inbounds %struct.VlakRen, ptr %111, i64 0, i32 5
  %113 = load ptr, ptr %112, align 8, !tbaa !59
  %114 = icmp eq ptr %113, %97
  br i1 %114, label %134, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.Material, ptr %113, i64 0, i32 53
  %117 = load i32, ptr %116, align 4, !tbaa !61
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.Material, ptr %113, i64 0, i32 51
  %122 = load i32, ptr %121, align 4, !tbaa !67
  %123 = and i32 %122, 33554432
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120, %115
  br label %126

126:                                              ; preds = %125, %120
  %127 = phi i32 [ 0, %125 ], [ 1, %120 ]
  %128 = getelementptr inbounds %struct.Material, ptr %113, i64 0, i32 2
  %129 = load i16, ptr %128, align 8, !tbaa !301
  %130 = icmp eq i16 %129, 3
  %131 = select i1 %130, i32 0, i32 %127
  %132 = getelementptr inbounds %struct.Material, ptr %113, i64 0, i32 72
  %133 = load float, ptr %132, align 4, !tbaa !133
  store float %133, ptr %56, align 4, !tbaa !302
  store float %133, ptr %57, align 4, !tbaa !302
  br label %134

134:                                              ; preds = %126, %110
  %135 = phi i32 [ %131, %126 ], [ %99, %110 ]
  %136 = phi ptr [ %113, %126 ], [ %97, %110 ]
  %137 = icmp eq i32 %135, 0
  br i1 %137, label %281, label %138

138:                                              ; preds = %134
  %139 = load i32, ptr %94, align 8, !tbaa !68
  %140 = and i32 %139, %41
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %281, label %142

142:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #14
  %143 = load ptr, ptr %111, align 8, !tbaa !69
  call void @projectvert(ptr noundef %143, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %144 = load float, ptr %58, align 4, !tbaa !77
  %145 = load float, ptr %6, align 16, !tbaa !77
  %146 = fmul float %22, %144
  %147 = fcmp ogt float %145, %146
  br i1 %147, label %152, label %148

148:                                              ; preds = %142
  %149 = fmul float %17, %144
  %150 = fcmp olt float %145, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %152

152:                                              ; preds = %151, %148, %142
  %153 = phi i32 [ 2, %151 ], [ 0, %148 ], [ 1, %142 ]
  %154 = load float, ptr %59, align 4, !tbaa !77
  %155 = fmul float %32, %144
  %156 = fcmp ogt float %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = or disjoint i32 %153, 4
  br label %164

159:                                              ; preds = %152
  %160 = fmul float %27, %144
  %161 = fcmp olt float %154, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = or disjoint i32 %153, 8
  br label %164

164:                                              ; preds = %157, %159, %162
  %165 = phi i32 [ %158, %157 ], [ %163, %162 ], [ %153, %159 ]
  %166 = getelementptr inbounds %struct.VlakRen, ptr %111, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !73
  call void @projectvert(ptr noundef %167, ptr noundef nonnull %5, ptr noundef nonnull %60) #14
  %168 = load float, ptr %61, align 4, !tbaa !77
  %169 = load float, ptr %60, align 16, !tbaa !77
  %170 = fmul float %22, %168
  %171 = fcmp ogt float %169, %170
  br i1 %171, label %176, label %172

172:                                              ; preds = %164
  %173 = fmul float %17, %168
  %174 = fcmp olt float %169, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  br label %176

176:                                              ; preds = %175, %172, %164
  %177 = phi i32 [ 2, %175 ], [ 0, %172 ], [ 1, %164 ]
  %178 = load float, ptr %62, align 4, !tbaa !77
  %179 = fmul float %32, %168
  %180 = fcmp ogt float %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = or disjoint i32 %177, 4
  br label %188

183:                                              ; preds = %176
  %184 = fmul float %27, %168
  %185 = fcmp olt float %178, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %183
  %187 = or disjoint i32 %177, 8
  br label %188

188:                                              ; preds = %181, %183, %186
  %189 = phi i32 [ %182, %181 ], [ %187, %186 ], [ %177, %183 ]
  %190 = getelementptr inbounds %struct.VlakRen, ptr %111, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !74
  call void @projectvert(ptr noundef %191, ptr noundef nonnull %5, ptr noundef nonnull %63) #14
  %192 = load float, ptr %64, align 4, !tbaa !77
  %193 = load float, ptr %63, align 16, !tbaa !77
  %194 = fmul float %22, %192
  %195 = fcmp ogt float %193, %194
  br i1 %195, label %200, label %196

196:                                              ; preds = %188
  %197 = fmul float %17, %192
  %198 = fcmp olt float %193, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  br label %200

200:                                              ; preds = %199, %196, %188
  %201 = phi i32 [ 2, %199 ], [ 0, %196 ], [ 1, %188 ]
  %202 = load float, ptr %65, align 4, !tbaa !77
  %203 = fmul float %32, %192
  %204 = fcmp ogt float %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = or disjoint i32 %201, 4
  br label %212

207:                                              ; preds = %200
  %208 = fmul float %27, %192
  %209 = fcmp olt float %202, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %207
  %211 = or disjoint i32 %201, 8
  br label %212

212:                                              ; preds = %205, %207, %210
  %213 = phi i32 [ %206, %205 ], [ %211, %210 ], [ %201, %207 ]
  %214 = getelementptr inbounds %struct.VlakRen, ptr %111, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !75
  %216 = icmp eq ptr %215, null
  br i1 %216, label %238, label %217

217:                                              ; preds = %212
  call void @projectvert(ptr noundef nonnull %215, ptr noundef nonnull %5, ptr noundef nonnull %66) #14
  %218 = load float, ptr %67, align 4, !tbaa !77
  %219 = load float, ptr %66, align 16, !tbaa !77
  %220 = fmul float %22, %218
  %221 = fcmp ogt float %219, %220
  br i1 %221, label %226, label %222

222:                                              ; preds = %217
  %223 = fmul float %17, %218
  %224 = fcmp olt float %219, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %222
  br label %226

226:                                              ; preds = %225, %222, %217
  %227 = phi i32 [ 2, %225 ], [ 0, %222 ], [ 1, %217 ]
  %228 = load float, ptr %68, align 4, !tbaa !77
  %229 = fmul float %32, %218
  %230 = fcmp ogt float %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %226
  %232 = or disjoint i32 %227, 4
  br label %238

233:                                              ; preds = %226
  %234 = fmul float %27, %218
  %235 = fcmp olt float %228, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %233
  %237 = or disjoint i32 %227, 8
  br label %238

238:                                              ; preds = %236, %233, %231, %212
  %239 = phi i32 [ 0, %212 ], [ %232, %231 ], [ %237, %236 ], [ %227, %233 ]
  %240 = load ptr, ptr %214, align 8, !tbaa !75
  %241 = icmp eq ptr %240, null
  %242 = select i1 %241, i32 -1, i32 %239
  %243 = and i32 %189, %165
  %244 = and i32 %243, %213
  %245 = and i32 %244, %242
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %280

247:                                              ; preds = %238
  %248 = call i32 @testclip(ptr noundef nonnull %6) #14
  %249 = call i32 @testclip(ptr noundef nonnull %60) #14
  %250 = call i32 @testclip(ptr noundef nonnull %63) #14
  %251 = load ptr, ptr %214, align 8, !tbaa !75
  %252 = icmp eq ptr %251, null
  br i1 %252, label %255, label %253

253:                                              ; preds = %247
  %254 = call i32 @testclip(ptr noundef nonnull %69) #14
  br label %255

255:                                              ; preds = %253, %247
  %256 = phi i32 [ %254, %253 ], [ 0, %247 ]
  %257 = getelementptr inbounds %struct.Material, ptr %136, i64 0, i32 2
  %258 = load i16, ptr %257, align 8, !tbaa !301
  %259 = icmp eq i16 %258, 3
  %260 = load ptr, ptr %214, align 8, !tbaa !75
  %261 = icmp eq ptr %260, null
  br i1 %259, label %262, label %269

262:                                              ; preds = %255
  %263 = add nuw nsw i32 %98, 1
  %264 = getelementptr inbounds %struct.VlakRen, ptr %111, i64 0, i32 8
  %265 = load i8, ptr %264, align 2, !tbaa !303
  %266 = zext i8 %265 to i32
  br i1 %261, label %268, label %267

267:                                              ; preds = %262
  call void @zbufclipwire(ptr noundef nonnull %3, i32 noundef %77, i32 noundef %263, i32 noundef %266, ptr noundef nonnull %6, ptr noundef nonnull %60, ptr noundef nonnull %63, ptr noundef nonnull %72, i32 noundef %248, i32 noundef %249, i32 noundef %250, i32 noundef %256) #14
  br label %280

268:                                              ; preds = %262
  call void @zbufclipwire(ptr noundef nonnull %3, i32 noundef %77, i32 noundef %263, i32 noundef %266, ptr noundef nonnull %6, ptr noundef nonnull %60, ptr noundef nonnull %63, ptr noundef null, i32 noundef %248, i32 noundef %249, i32 noundef %250, i32 noundef 0) #14
  br label %280

269:                                              ; preds = %255
  br i1 %261, label %278, label %270

270:                                              ; preds = %269
  %271 = getelementptr inbounds %struct.VlakRen, ptr %111, i64 0, i32 7
  %272 = load i8, ptr %271, align 1, !tbaa !304
  %273 = and i8 %272, 4
  %274 = icmp eq i8 %273, 0
  %275 = add nuw nsw i32 %98, 1
  br i1 %274, label %277, label %276

276:                                              ; preds = %270
  call void @zbufclip4(ptr noundef nonnull %4, i32 noundef %77, i32 noundef %275, ptr noundef nonnull %6, ptr noundef nonnull %60, ptr noundef nonnull %63, ptr noundef nonnull %70, i32 noundef %248, i32 noundef %249, i32 noundef %250, i32 noundef %256) #14
  br label %280

277:                                              ; preds = %270
  call void @zbufclip4(ptr noundef nonnull %3, i32 noundef %77, i32 noundef %275, ptr noundef nonnull %6, ptr noundef nonnull %60, ptr noundef nonnull %63, ptr noundef nonnull %71, i32 noundef %248, i32 noundef %249, i32 noundef %250, i32 noundef %256) #14
  br label %280

278:                                              ; preds = %269
  %279 = add nuw nsw i32 %98, 1
  call void @zbufclip(ptr noundef nonnull %3, i32 noundef %77, i32 noundef %279, ptr noundef nonnull %6, ptr noundef nonnull %60, ptr noundef nonnull %63, i32 noundef %248, i32 noundef %249, i32 noundef %250) #14
  br label %280

280:                                              ; preds = %268, %267, %276, %277, %278, %238
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #14
  br label %281

281:                                              ; preds = %134, %138, %280
  %282 = add nuw nsw i32 %98, 1
  %283 = load i32, ptr %89, align 4, !tbaa !55
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %95, label %285, !llvm.loop !305

285:                                              ; preds = %281, %88
  %286 = phi i32 [ %78, %88 ], [ %135, %281 ]
  %287 = phi ptr [ %76, %88 ], [ %136, %281 ]
  %288 = phi ptr [ %75, %88 ], [ %111, %281 ]
  %289 = add nuw nsw i32 %77, 1
  %290 = load ptr, ptr %74, align 8, !tbaa !45
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %73, !llvm.loop !306

292:                                              ; preds = %285, %40
  call void @zbuf_free_span(ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %3) #14
  ret void
}

declare i32 @count_mask(i16 noundef zeroext) local_unnamed_addr #4

declare void @RE_vlakren_get_normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @calc_view_vector(ptr noundef, float noundef, float noundef) local_unnamed_addr #4

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @BLI_array_randomize(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @isb_bsp_insert(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [128 x ptr], align 16
  %5 = getelementptr inbounds %struct.ISBBranch, ptr %0, i64 0, i32 4
  %6 = load i16, ptr %5, align 8, !tbaa !307
  %7 = add i16 %6, 1
  store i16 %7, ptr %5, align 8, !tbaa !307
  %8 = load ptr, ptr %0, align 8, !tbaa !288
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %3, %25
  %11 = phi ptr [ %28, %25 ], [ %8, %3 ]
  %12 = phi i32 [ %27, %25 ], [ 0, %3 ]
  %13 = phi ptr [ %26, %25 ], [ %0, %3 ]
  %14 = getelementptr inbounds %struct.ISBBranch, ptr %13, i64 0, i32 5
  %15 = load i16, ptr %14, align 2, !tbaa !287
  %16 = sext i16 %15 to i64
  %17 = getelementptr inbounds float, ptr %2, i64 %16
  %18 = load float, ptr %17, align 4, !tbaa !77
  %19 = getelementptr inbounds %struct.ISBBranch, ptr %13, i64 0, i32 2, i64 %16
  %20 = load float, ptr %19, align 4, !tbaa !77
  %21 = fcmp ugt float %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.ISBBranch, ptr %13, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !289
  br label %25

25:                                               ; preds = %10, %22
  %26 = phi ptr [ %24, %22 ], [ %11, %10 ]
  %27 = add nuw nsw i32 %12, 1
  %28 = load ptr, ptr %26, align 8, !tbaa !288
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %10, !llvm.loop !308

30:                                               ; preds = %25
  %31 = icmp eq i32 %27, 32
  br label %32

32:                                               ; preds = %30, %3
  %33 = phi ptr [ %0, %3 ], [ %26, %30 ]
  %34 = phi i1 [ false, %3 ], [ %31, %30 ]
  %35 = getelementptr inbounds %struct.ISBBranch, ptr %33, i64 0, i32 4
  %36 = load i16, ptr %35, align 8, !tbaa !307
  %37 = icmp eq i16 %36, 128
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  br label %140

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.ISBBranch, ptr %33, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !291
  %43 = sext i16 %36 to i64
  %44 = getelementptr inbounds ptr, ptr %42, i64 %43
  store ptr %2, ptr %44, align 8, !tbaa !45
  %45 = add i16 %36, 1
  store i16 %45, ptr %35, align 8, !tbaa !307
  %46 = icmp eq i16 %45, 128
  br i1 %46, label %47, label %140

47:                                               ; preds = %40
  br i1 %34, label %48, label %49

48:                                               ; preds = %47
  store i16 %36, ptr %35, align 8, !tbaa !307
  br label %140

49:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #14
  %50 = getelementptr inbounds %struct.ISBBranch, ptr %33, i64 0, i32 2
  %51 = getelementptr inbounds %struct.ISBBranch, ptr %33, i64 0, i32 2, i64 1
  store float 0.000000e+00, ptr %51, align 4, !tbaa !77
  store float 0.000000e+00, ptr %50, align 8, !tbaa !77
  %52 = load ptr, ptr %41, align 8, !tbaa !291
  br label %53

53:                                               ; preds = %49, %53
  %54 = phi i64 [ 127, %49 ], [ %64, %53 ]
  %55 = phi float [ 0.000000e+00, %49 ], [ %60, %53 ]
  %56 = phi float [ 0.000000e+00, %49 ], [ %63, %53 ]
  %57 = getelementptr inbounds ptr, ptr %52, i64 %54
  %58 = load ptr, ptr %57, align 8, !tbaa !45
  %59 = load float, ptr %58, align 8, !tbaa !77
  %60 = fadd float %59, %55
  store float %60, ptr %50, align 8, !tbaa !77
  %61 = getelementptr inbounds [3 x float], ptr %58, i64 0, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !77
  %63 = fadd float %62, %56
  store float %63, ptr %51, align 4, !tbaa !77
  %64 = add nsw i64 %54, -1
  %65 = icmp eq i64 %54, 0
  br i1 %65, label %66, label %53, !llvm.loop !309

66:                                               ; preds = %53
  %67 = load float, ptr %50, align 8, !tbaa !77
  %68 = fmul float %67, 7.812500e-03
  store float %68, ptr %50, align 8, !tbaa !77
  %69 = load float, ptr %51, align 4, !tbaa !77
  %70 = fmul float %69, 7.812500e-03
  store float %70, ptr %51, align 4, !tbaa !77
  %71 = getelementptr inbounds %struct.ISBBranch, ptr %33, i64 0, i32 3
  %72 = getelementptr inbounds %struct.ISBBranch, ptr %33, i64 0, i32 3, i32 1
  %73 = load float, ptr %72, align 4, !tbaa !285
  %74 = load float, ptr %71, align 8, !tbaa !222
  %75 = fsub float %73, %74
  %76 = getelementptr inbounds %struct.ISBBranch, ptr %33, i64 0, i32 3, i32 3
  %77 = load float, ptr %76, align 4, !tbaa !286
  %78 = getelementptr inbounds %struct.ISBBranch, ptr %33, i64 0, i32 3, i32 2
  %79 = load float, ptr %78, align 8, !tbaa !225
  %80 = fsub float %77, %79
  %81 = fcmp ule float %75, %80
  %82 = getelementptr inbounds %struct.ISBBranch, ptr %33, i64 0, i32 5
  %83 = zext i1 %81 to i16
  %84 = zext i1 %81 to i64
  store i16 %83, ptr %82, align 2, !tbaa !287
  %85 = tail call ptr @BLI_memarena_alloc(ptr noundef %1, i64 noundef 64) #14
  store ptr %85, ptr %33, align 8, !tbaa !288
  %86 = tail call ptr @BLI_memarena_alloc(ptr noundef %1, i64 noundef 64) #14
  %87 = getelementptr inbounds %struct.ISBBranch, ptr %33, i64 0, i32 1
  store ptr %86, ptr %87, align 8, !tbaa !289
  %88 = tail call ptr @BLI_memarena_alloc(ptr noundef %1, i64 noundef 1024) #14
  %89 = getelementptr inbounds %struct.ISBBranch, ptr %85, i64 0, i32 8
  store ptr %88, ptr %89, align 8, !tbaa !291
  %90 = getelementptr inbounds %struct.ISBBranch, ptr %86, i64 0, i32 8
  store ptr %4, ptr %90, align 8, !tbaa !291
  %91 = getelementptr inbounds %struct.ISBBranch, ptr %33, i64 0, i32 2, i64 %84
  %92 = load float, ptr %91, align 4, !tbaa !77
  %93 = getelementptr inbounds %struct.ISBBranch, ptr %85, i64 0, i32 4
  %94 = getelementptr inbounds %struct.ISBBranch, ptr %86, i64 0, i32 4
  br label %95

95:                                               ; preds = %66, %109
  %96 = phi i64 [ 127, %66 ], [ %119, %109 ]
  %97 = load ptr, ptr %41, align 8, !tbaa !291
  %98 = getelementptr inbounds ptr, ptr %97, i64 %96
  %99 = load ptr, ptr %98, align 8, !tbaa !45
  %100 = getelementptr inbounds [3 x float], ptr %99, i64 0, i64 %84
  %101 = load float, ptr %100, align 4, !tbaa !77
  %102 = fcmp oeq float %101, %92
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = trunc i64 %96 to i32
  %105 = and i32 %104, 1
  br label %109

106:                                              ; preds = %95
  %107 = fcmp olt float %101, %92
  br i1 %107, label %108, label %109

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %108, %106, %103
  %110 = phi i32 [ %105, %103 ], [ 1, %108 ], [ 0, %106 ]
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %111, ptr %90, ptr %89
  %113 = select i1 %111, ptr %94, ptr %93
  %114 = load ptr, ptr %112, align 8, !tbaa !291
  %115 = load i16, ptr %113, align 8, !tbaa !307
  %116 = sext i16 %115 to i64
  %117 = getelementptr inbounds ptr, ptr %114, i64 %116
  store ptr %99, ptr %117, align 8, !tbaa !45
  %118 = add i16 %115, 1
  store i16 %118, ptr %113, align 8, !tbaa !307
  %119 = add nsw i64 %96, -1
  %120 = icmp eq i64 %96, 0
  br i1 %120, label %121, label %95, !llvm.loop !310

121:                                              ; preds = %109
  %122 = load ptr, ptr %41, align 8, !tbaa !291
  %123 = getelementptr inbounds %struct.ISBBranch, ptr %86, i64 0, i32 4
  %124 = load i16, ptr %123, align 8, !tbaa !307
  %125 = sext i16 %124 to i64
  %126 = shl nsw i64 %125, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %122, ptr nonnull align 16 %4, i64 %126, i1 false)
  %127 = load ptr, ptr %41, align 8, !tbaa !291
  store ptr %127, ptr %90, align 8, !tbaa !291
  store ptr null, ptr %41, align 8, !tbaa !291
  %128 = getelementptr inbounds %struct.ISBBranch, ptr %85, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %128, ptr noundef nonnull align 8 dereferenceable(24) %71, i64 24, i1 false), !tbaa.struct !290
  %129 = getelementptr inbounds %struct.ISBBranch, ptr %86, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %129, ptr noundef nonnull align 8 dereferenceable(24) %71, i64 24, i1 false), !tbaa.struct !290
  br i1 %81, label %134, label %130

130:                                              ; preds = %121
  %131 = load float, ptr %50, align 8, !tbaa !77
  %132 = getelementptr inbounds %struct.ISBBranch, ptr %85, i64 0, i32 3, i32 1
  store float %131, ptr %132, align 4, !tbaa !285
  %133 = load float, ptr %50, align 8, !tbaa !77
  store float %133, ptr %129, align 8, !tbaa !222
  br label %139

134:                                              ; preds = %121
  %135 = load float, ptr %51, align 4, !tbaa !77
  %136 = getelementptr inbounds %struct.ISBBranch, ptr %85, i64 0, i32 3, i32 3
  store float %135, ptr %136, align 4, !tbaa !286
  %137 = load float, ptr %51, align 4, !tbaa !77
  %138 = getelementptr inbounds %struct.ISBBranch, ptr %86, i64 0, i32 3, i32 2
  store float %137, ptr %138, align 8, !tbaa !225
  br label %139

139:                                              ; preds = %130, %134
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #14
  br label %140

140:                                              ; preds = %40, %139, %48, %38
  %141 = phi i32 [ 1, %38 ], [ 1, %48 ], [ 0, %139 ], [ 0, %40 ]
  ret i32 %141
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @isb_bsp_recalc_box(ptr nocapture noundef %0) unnamed_addr #11 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %8, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !288
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  tail call fastcc void @isb_bsp_recalc_box(ptr noundef nonnull %4)
  %7 = getelementptr inbounds %struct.ISBBranch, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !289
  br label %2

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ISBBranch, ptr %3, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !307
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %80, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ISBBranch, ptr %3, i64 0, i32 3
  store float 1.000000e+06, ptr %14, align 4, !tbaa !311
  %15 = getelementptr inbounds %struct.ISBBranch, ptr %3, i64 0, i32 3, i32 1
  store float 0.000000e+00, ptr %15, align 4, !tbaa !312
  %16 = getelementptr inbounds %struct.ISBBranch, ptr %3, i64 0, i32 3, i32 2
  store float 1.000000e+06, ptr %16, align 4, !tbaa !313
  %17 = getelementptr inbounds %struct.ISBBranch, ptr %3, i64 0, i32 3, i32 3
  store float 0.000000e+00, ptr %17, align 4, !tbaa !314
  %18 = getelementptr inbounds %struct.ISBBranch, ptr %3, i64 0, i32 3, i32 4
  store float 0x41E0000000000000, ptr %18, align 4, !tbaa !315
  %19 = getelementptr inbounds %struct.ISBBranch, ptr %3, i64 0, i32 3, i32 5
  store float 0xC1E0000000000000, ptr %19, align 4, !tbaa !316
  %20 = icmp sgt i16 %11, 0
  br i1 %20, label %21, label %80

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.ISBBranch, ptr %3, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !291
  %24 = getelementptr inbounds %struct.ISBBranch, ptr %3, i64 0, i32 3, i32 1
  %25 = getelementptr inbounds %struct.ISBBranch, ptr %3, i64 0, i32 3, i32 2
  %26 = getelementptr inbounds %struct.ISBBranch, ptr %3, i64 0, i32 3, i32 3
  %27 = getelementptr inbounds %struct.ISBBranch, ptr %3, i64 0, i32 3, i32 4
  %28 = getelementptr inbounds %struct.ISBBranch, ptr %3, i64 0, i32 3, i32 5
  %29 = load float, ptr %14, align 4, !tbaa !311
  %30 = load float, ptr %24, align 4, !tbaa !312
  %31 = load float, ptr %25, align 4, !tbaa !313
  %32 = load float, ptr %26, align 4, !tbaa !314
  %33 = load float, ptr %27, align 4, !tbaa !315
  %34 = load float, ptr %28, align 4, !tbaa !316
  %35 = zext nneg i16 %11 to i64
  br label %36

36:                                               ; preds = %21, %77
  %37 = phi i64 [ %35, %21 ], [ %44, %77 ]
  %38 = phi float [ %34, %21 ], [ %78, %77 ]
  %39 = phi float [ %33, %21 ], [ %73, %77 ]
  %40 = phi float [ %32, %21 ], [ %67, %77 ]
  %41 = phi float [ %31, %21 ], [ %62, %77 ]
  %42 = phi float [ %30, %21 ], [ %56, %77 ]
  %43 = phi float [ %29, %21 ], [ %51, %77 ]
  %44 = add nsw i64 %37, -1
  %45 = getelementptr inbounds ptr, ptr %23, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !45
  %47 = load float, ptr %46, align 4, !tbaa !77
  %48 = fcmp olt float %47, %43
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  store float %47, ptr %14, align 4, !tbaa !311
  br label %50

50:                                               ; preds = %49, %36
  %51 = phi float [ %47, %49 ], [ %43, %36 ]
  %52 = load float, ptr %46, align 4, !tbaa !77
  %53 = fcmp ogt float %52, %42
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store float %52, ptr %24, align 4, !tbaa !312
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi float [ %52, %54 ], [ %42, %50 ]
  %57 = getelementptr inbounds float, ptr %46, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !77
  %59 = fcmp olt float %58, %41
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store float %58, ptr %25, align 4, !tbaa !313
  br label %61

61:                                               ; preds = %60, %55
  %62 = phi float [ %58, %60 ], [ %41, %55 ]
  %63 = load float, ptr %57, align 4, !tbaa !77
  %64 = fcmp ogt float %63, %40
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store float %63, ptr %26, align 4, !tbaa !314
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi float [ %63, %65 ], [ %40, %61 ]
  %68 = getelementptr inbounds float, ptr %46, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !77
  %70 = fcmp olt float %69, %39
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store float %69, ptr %27, align 4, !tbaa !315
  br label %72

72:                                               ; preds = %71, %66
  %73 = phi float [ %69, %71 ], [ %39, %66 ]
  %74 = load float, ptr %68, align 4, !tbaa !77
  %75 = fcmp ogt float %74, %38
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store float %74, ptr %28, align 4, !tbaa !316
  br label %77

77:                                               ; preds = %72, %76
  %78 = phi float [ %38, %72 ], [ %74, %76 ]
  %79 = icmp sgt i64 %37, 1
  br i1 %79, label %36, label %80, !llvm.loop !317

80:                                               ; preds = %77, %13, %9
  ret void
}

declare void @zbuf_alloc_span(ptr noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @isb_bsp_test_face(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca %struct.BSPFace, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %8) #14
  %9 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 1
  store ptr %3, ptr %9, align 8, !tbaa !318
  %10 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 2
  store ptr %4, ptr %10, align 8, !tbaa !320
  %11 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 3
  store ptr %5, ptr %11, align 8, !tbaa !321
  %12 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 4
  store ptr %6, ptr %12, align 8, !tbaa !322
  %13 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 5
  store i32 %1, ptr %13, align 8, !tbaa !323
  %14 = and i32 %2, -134217729
  %15 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 6
  store i32 %14, ptr %15, align 4, !tbaa !324
  %16 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 7
  store i32 0, ptr %16, align 8, !tbaa !325
  %17 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !226
  %18 = icmp eq i16 %17, 0
  %19 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 27
  %20 = load float, ptr %19, align 4, !tbaa !302
  %21 = fmul float %20, 4.096000e+03
  %22 = sitofp i16 %17 to float
  %23 = select i1 %18, float 1.000000e+00, float %22
  %24 = fdiv float %21, %23
  %25 = tail call float @llvm.ceil.f32(float %24)
  %26 = fptosi float %25 to i16
  %27 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 8
  store i16 %26, ptr %27, align 4, !tbaa !326
  %28 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 27
  %29 = load float, ptr %28, align 4, !tbaa !302
  %30 = fcmp oeq float %29, 1.000000e+00
  %31 = zext i1 %30 to i16
  %32 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 9
  store i16 %31, ptr %32, align 2, !tbaa !327
  store float 1.000000e+06, ptr %8, align 8, !tbaa !311
  %33 = getelementptr inbounds %struct.Boxf, ptr %8, i64 0, i32 1
  store float 0.000000e+00, ptr %33, align 4, !tbaa !312
  %34 = getelementptr inbounds %struct.Boxf, ptr %8, i64 0, i32 2
  store float 1.000000e+06, ptr %34, align 8, !tbaa !313
  %35 = getelementptr inbounds %struct.Boxf, ptr %8, i64 0, i32 3
  store float 0.000000e+00, ptr %35, align 4, !tbaa !314
  %36 = getelementptr inbounds %struct.Boxf, ptr %8, i64 0, i32 4
  store float 0x41E0000000000000, ptr %36, align 8, !tbaa !315
  %37 = getelementptr inbounds %struct.Boxf, ptr %8, i64 0, i32 5
  store float 0xC1E0000000000000, ptr %37, align 4, !tbaa !316
  %38 = load float, ptr %3, align 4, !tbaa !77
  %39 = fcmp olt float %38, 1.000000e+06
  br i1 %39, label %40, label %41

40:                                               ; preds = %7
  store float %38, ptr %8, align 8, !tbaa !311
  br label %41

41:                                               ; preds = %40, %7
  %42 = fcmp ogt float %38, 0.000000e+00
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  store float %38, ptr %33, align 4, !tbaa !312
  br label %44

44:                                               ; preds = %43, %41
  %45 = getelementptr inbounds float, ptr %3, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !77
  %47 = fcmp olt float %46, 1.000000e+06
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store float %46, ptr %34, align 8, !tbaa !313
  br label %49

49:                                               ; preds = %48, %44
  %50 = fcmp ogt float %46, 0.000000e+00
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  store float %46, ptr %35, align 4, !tbaa !314
  br label %52

52:                                               ; preds = %51, %49
  %53 = getelementptr inbounds float, ptr %3, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !77
  %55 = fcmp olt float %54, 0x41E0000000000000
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store float %54, ptr %36, align 8, !tbaa !315
  br label %57

57:                                               ; preds = %56, %52
  %58 = fcmp ogt float %54, 0xC1E0000000000000
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  store float %54, ptr %37, align 4, !tbaa !316
  br label %60

60:                                               ; preds = %57, %59
  %61 = load float, ptr %4, align 4, !tbaa !77
  %62 = load float, ptr %8, align 8, !tbaa !311
  %63 = fcmp olt float %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store float %61, ptr %8, align 8, !tbaa !311
  br label %65

65:                                               ; preds = %64, %60
  %66 = load float, ptr %33, align 4, !tbaa !312
  %67 = fcmp ogt float %61, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store float %61, ptr %33, align 4, !tbaa !312
  br label %69

69:                                               ; preds = %68, %65
  %70 = getelementptr inbounds float, ptr %4, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !77
  %72 = load float, ptr %34, align 8, !tbaa !313
  %73 = fcmp olt float %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store float %71, ptr %34, align 8, !tbaa !313
  br label %75

75:                                               ; preds = %74, %69
  %76 = load float, ptr %35, align 4, !tbaa !314
  %77 = fcmp ogt float %71, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store float %71, ptr %35, align 4, !tbaa !314
  br label %79

79:                                               ; preds = %78, %75
  %80 = getelementptr inbounds float, ptr %4, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !77
  %82 = load float, ptr %36, align 8, !tbaa !315
  %83 = fcmp olt float %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store float %81, ptr %36, align 8, !tbaa !315
  br label %85

85:                                               ; preds = %84, %79
  %86 = load float, ptr %37, align 4, !tbaa !316
  %87 = fcmp ogt float %81, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store float %81, ptr %37, align 4, !tbaa !316
  br label %89

89:                                               ; preds = %85, %88
  %90 = load float, ptr %5, align 4, !tbaa !77
  %91 = load float, ptr %8, align 8, !tbaa !311
  %92 = fcmp olt float %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store float %90, ptr %8, align 8, !tbaa !311
  br label %94

94:                                               ; preds = %93, %89
  %95 = load float, ptr %33, align 4, !tbaa !312
  %96 = fcmp ogt float %90, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store float %90, ptr %33, align 4, !tbaa !312
  br label %98

98:                                               ; preds = %97, %94
  %99 = getelementptr inbounds float, ptr %5, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !77
  %101 = load float, ptr %34, align 8, !tbaa !313
  %102 = fcmp olt float %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store float %100, ptr %34, align 8, !tbaa !313
  br label %104

104:                                              ; preds = %103, %98
  %105 = load float, ptr %35, align 4, !tbaa !314
  %106 = fcmp ogt float %100, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store float %100, ptr %35, align 4, !tbaa !314
  br label %108

108:                                              ; preds = %107, %104
  %109 = getelementptr inbounds float, ptr %5, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !77
  %111 = load float, ptr %36, align 8, !tbaa !315
  %112 = fcmp olt float %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store float %110, ptr %36, align 8, !tbaa !315
  br label %114

114:                                              ; preds = %113, %108
  %115 = load float, ptr %37, align 4, !tbaa !316
  %116 = fcmp ogt float %110, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store float %110, ptr %37, align 4, !tbaa !316
  br label %118

118:                                              ; preds = %114, %117
  %119 = icmp eq ptr %6, null
  br i1 %119, label %149, label %120

120:                                              ; preds = %118
  %121 = load float, ptr %6, align 4, !tbaa !77
  %122 = load float, ptr %8, align 8, !tbaa !311
  %123 = fcmp olt float %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store float %121, ptr %8, align 8, !tbaa !311
  br label %125

125:                                              ; preds = %124, %120
  %126 = load float, ptr %33, align 4, !tbaa !312
  %127 = fcmp ogt float %121, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store float %121, ptr %33, align 4, !tbaa !312
  br label %129

129:                                              ; preds = %128, %125
  %130 = getelementptr inbounds float, ptr %6, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !77
  %132 = load float, ptr %34, align 8, !tbaa !313
  %133 = fcmp olt float %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store float %131, ptr %34, align 8, !tbaa !313
  br label %135

135:                                              ; preds = %134, %129
  %136 = load float, ptr %35, align 4, !tbaa !314
  %137 = fcmp ogt float %131, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store float %131, ptr %35, align 4, !tbaa !314
  br label %139

139:                                              ; preds = %138, %135
  %140 = getelementptr inbounds float, ptr %6, i64 2
  %141 = load float, ptr %140, align 4, !tbaa !77
  %142 = load float, ptr %36, align 8, !tbaa !315
  %143 = fcmp olt float %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  store float %141, ptr %36, align 8, !tbaa !315
  br label %145

145:                                              ; preds = %144, %139
  %146 = load float, ptr %37, align 4, !tbaa !316
  %147 = fcmp ogt float %141, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store float %141, ptr %37, align 4, !tbaa !316
  br label %149

149:                                              ; preds = %148, %145, %118
  %150 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 16
  %151 = load ptr, ptr %150, align 8, !tbaa !298
  call fastcc void @isb_bsp_face_inside(ptr noundef %151, ptr noundef nonnull %8)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %8) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @isb_bsp_test_strand(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca %struct.BSPFace, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %8) #14
  %9 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 1
  store ptr %3, ptr %9, align 8, !tbaa !318
  %10 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 2
  store ptr %4, ptr %10, align 8, !tbaa !320
  %11 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 3
  store ptr %5, ptr %11, align 8, !tbaa !321
  %12 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 4
  store ptr %6, ptr %12, align 8, !tbaa !322
  %13 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 5
  store i32 %1, ptr %13, align 8, !tbaa !323
  %14 = and i32 %2, -134217729
  %15 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 6
  store i32 %14, ptr %15, align 4, !tbaa !324
  %16 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 7
  store i32 4, ptr %16, align 8, !tbaa !325
  %17 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 5), align 2, !tbaa !226
  %18 = icmp eq i16 %17, 0
  %19 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 27
  %20 = load float, ptr %19, align 4, !tbaa !302
  %21 = fmul float %20, 4.096000e+03
  %22 = sitofp i16 %17 to float
  %23 = select i1 %18, float 1.000000e+00, float %22
  %24 = fdiv float %21, %23
  %25 = tail call float @llvm.ceil.f32(float %24)
  %26 = fptosi float %25 to i16
  %27 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 8
  store i16 %26, ptr %27, align 4, !tbaa !326
  %28 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 27
  %29 = load float, ptr %28, align 4, !tbaa !302
  %30 = fcmp oeq float %29, 1.000000e+00
  %31 = zext i1 %30 to i16
  %32 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 9
  store i16 %31, ptr %32, align 2, !tbaa !327
  store float 1.000000e+06, ptr %8, align 8, !tbaa !311
  %33 = getelementptr inbounds %struct.Boxf, ptr %8, i64 0, i32 1
  store float 0.000000e+00, ptr %33, align 4, !tbaa !312
  %34 = getelementptr inbounds %struct.Boxf, ptr %8, i64 0, i32 2
  store float 1.000000e+06, ptr %34, align 8, !tbaa !313
  %35 = getelementptr inbounds %struct.Boxf, ptr %8, i64 0, i32 3
  store float 0.000000e+00, ptr %35, align 4, !tbaa !314
  %36 = getelementptr inbounds %struct.Boxf, ptr %8, i64 0, i32 4
  store float 0x41E0000000000000, ptr %36, align 8, !tbaa !315
  %37 = getelementptr inbounds %struct.Boxf, ptr %8, i64 0, i32 5
  store float 0xC1E0000000000000, ptr %37, align 4, !tbaa !316
  %38 = load float, ptr %3, align 4, !tbaa !77
  %39 = fcmp olt float %38, 1.000000e+06
  br i1 %39, label %40, label %41

40:                                               ; preds = %7
  store float %38, ptr %8, align 8, !tbaa !311
  br label %41

41:                                               ; preds = %40, %7
  %42 = fcmp ogt float %38, 0.000000e+00
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  store float %38, ptr %33, align 4, !tbaa !312
  br label %44

44:                                               ; preds = %43, %41
  %45 = getelementptr inbounds float, ptr %3, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !77
  %47 = fcmp olt float %46, 1.000000e+06
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store float %46, ptr %34, align 8, !tbaa !313
  br label %49

49:                                               ; preds = %48, %44
  %50 = fcmp ogt float %46, 0.000000e+00
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  store float %46, ptr %35, align 4, !tbaa !314
  br label %52

52:                                               ; preds = %51, %49
  %53 = getelementptr inbounds float, ptr %3, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !77
  %55 = fcmp olt float %54, 0x41E0000000000000
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store float %54, ptr %36, align 8, !tbaa !315
  br label %57

57:                                               ; preds = %56, %52
  %58 = fcmp ogt float %54, 0xC1E0000000000000
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  store float %54, ptr %37, align 4, !tbaa !316
  br label %60

60:                                               ; preds = %57, %59
  %61 = load float, ptr %4, align 4, !tbaa !77
  %62 = load float, ptr %8, align 8, !tbaa !311
  %63 = fcmp olt float %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store float %61, ptr %8, align 8, !tbaa !311
  br label %65

65:                                               ; preds = %64, %60
  %66 = load float, ptr %33, align 4, !tbaa !312
  %67 = fcmp ogt float %61, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store float %61, ptr %33, align 4, !tbaa !312
  br label %69

69:                                               ; preds = %68, %65
  %70 = getelementptr inbounds float, ptr %4, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !77
  %72 = load float, ptr %34, align 8, !tbaa !313
  %73 = fcmp olt float %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store float %71, ptr %34, align 8, !tbaa !313
  br label %75

75:                                               ; preds = %74, %69
  %76 = load float, ptr %35, align 4, !tbaa !314
  %77 = fcmp ogt float %71, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store float %71, ptr %35, align 4, !tbaa !314
  br label %79

79:                                               ; preds = %78, %75
  %80 = getelementptr inbounds float, ptr %4, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !77
  %82 = load float, ptr %36, align 8, !tbaa !315
  %83 = fcmp olt float %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store float %81, ptr %36, align 8, !tbaa !315
  br label %85

85:                                               ; preds = %84, %79
  %86 = load float, ptr %37, align 4, !tbaa !316
  %87 = fcmp ogt float %81, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store float %81, ptr %37, align 4, !tbaa !316
  br label %89

89:                                               ; preds = %85, %88
  %90 = load float, ptr %5, align 4, !tbaa !77
  %91 = load float, ptr %8, align 8, !tbaa !311
  %92 = fcmp olt float %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store float %90, ptr %8, align 8, !tbaa !311
  br label %94

94:                                               ; preds = %93, %89
  %95 = load float, ptr %33, align 4, !tbaa !312
  %96 = fcmp ogt float %90, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store float %90, ptr %33, align 4, !tbaa !312
  br label %98

98:                                               ; preds = %97, %94
  %99 = getelementptr inbounds float, ptr %5, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !77
  %101 = load float, ptr %34, align 8, !tbaa !313
  %102 = fcmp olt float %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store float %100, ptr %34, align 8, !tbaa !313
  br label %104

104:                                              ; preds = %103, %98
  %105 = load float, ptr %35, align 4, !tbaa !314
  %106 = fcmp ogt float %100, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store float %100, ptr %35, align 4, !tbaa !314
  br label %108

108:                                              ; preds = %107, %104
  %109 = getelementptr inbounds float, ptr %5, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !77
  %111 = load float, ptr %36, align 8, !tbaa !315
  %112 = fcmp olt float %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store float %110, ptr %36, align 8, !tbaa !315
  br label %114

114:                                              ; preds = %113, %108
  %115 = load float, ptr %37, align 4, !tbaa !316
  %116 = fcmp ogt float %110, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store float %110, ptr %37, align 4, !tbaa !316
  br label %118

118:                                              ; preds = %114, %117
  %119 = icmp eq ptr %6, null
  br i1 %119, label %149, label %120

120:                                              ; preds = %118
  %121 = load float, ptr %6, align 4, !tbaa !77
  %122 = load float, ptr %8, align 8, !tbaa !311
  %123 = fcmp olt float %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  store float %121, ptr %8, align 8, !tbaa !311
  br label %125

125:                                              ; preds = %124, %120
  %126 = load float, ptr %33, align 4, !tbaa !312
  %127 = fcmp ogt float %121, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store float %121, ptr %33, align 4, !tbaa !312
  br label %129

129:                                              ; preds = %128, %125
  %130 = getelementptr inbounds float, ptr %6, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !77
  %132 = load float, ptr %34, align 8, !tbaa !313
  %133 = fcmp olt float %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store float %131, ptr %34, align 8, !tbaa !313
  br label %135

135:                                              ; preds = %134, %129
  %136 = load float, ptr %35, align 4, !tbaa !314
  %137 = fcmp ogt float %131, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store float %131, ptr %35, align 4, !tbaa !314
  br label %139

139:                                              ; preds = %138, %135
  %140 = getelementptr inbounds float, ptr %6, i64 2
  %141 = load float, ptr %140, align 4, !tbaa !77
  %142 = load float, ptr %36, align 8, !tbaa !315
  %143 = fcmp olt float %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  store float %141, ptr %36, align 8, !tbaa !315
  br label %145

145:                                              ; preds = %144, %139
  %146 = load float, ptr %37, align 4, !tbaa !316
  %147 = fcmp ogt float %141, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store float %141, ptr %37, align 4, !tbaa !316
  br label %149

149:                                              ; preds = %148, %145, %118
  %150 = fsub float %38, %61
  %151 = fsub float %46, %71
  %152 = fmul float %151, %151
  %153 = tail call float @llvm.fmuladd.f32(float %150, float %150, float %152)
  %154 = tail call float @sqrtf(float noundef %153) #14
  %155 = fmul float %154, 5.000000e-01
  %156 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 10
  store float %155, ptr %156, align 8, !tbaa !328
  %157 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 13
  %158 = load ptr, ptr %9, align 8, !tbaa !318
  %159 = load ptr, ptr %10, align 8, !tbaa !320
  call void @mid_v3_v3v3(ptr noundef nonnull %157, ptr noundef %158, ptr noundef %159) #14
  %160 = load ptr, ptr %12, align 8, !tbaa !322
  %161 = icmp eq ptr %160, null
  %162 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 14
  %163 = load ptr, ptr %11, align 8, !tbaa !321
  br i1 %161, label %165, label %164

164:                                              ; preds = %149
  call void @mid_v3_v3v3(ptr noundef nonnull %162, ptr noundef %163, ptr noundef nonnull %160) #14
  br label %173

165:                                              ; preds = %149
  %166 = load float, ptr %163, align 4, !tbaa !77
  store float %166, ptr %162, align 8, !tbaa !77
  %167 = getelementptr inbounds float, ptr %163, i64 1
  %168 = load float, ptr %167, align 4, !tbaa !77
  %169 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 14, i64 1
  store float %168, ptr %169, align 4, !tbaa !77
  %170 = getelementptr inbounds float, ptr %163, i64 2
  %171 = load float, ptr %170, align 4, !tbaa !77
  %172 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 14, i64 2
  store float %171, ptr %172, align 8, !tbaa !77
  br label %173

173:                                              ; preds = %165, %164
  %174 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 14
  %175 = load float, ptr %174, align 8, !tbaa !77
  %176 = load float, ptr %157, align 4, !tbaa !77
  %177 = fsub float %175, %176
  %178 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 15
  store float %177, ptr %178, align 4, !tbaa !77
  %179 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 14, i64 1
  %180 = load float, ptr %179, align 4, !tbaa !77
  %181 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 13, i64 1
  %182 = load float, ptr %181, align 8, !tbaa !77
  %183 = fsub float %180, %182
  %184 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 15, i64 1
  store float %183, ptr %184, align 8, !tbaa !77
  %185 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 14, i64 2
  %186 = load float, ptr %185, align 8, !tbaa !77
  %187 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 13, i64 2
  %188 = load float, ptr %187, align 4, !tbaa !77
  %189 = fsub float %186, %188
  %190 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 15, i64 2
  store float %189, ptr %190, align 4, !tbaa !77
  %191 = fmul float %183, %183
  %192 = call float @llvm.fmuladd.f32(float %177, float %177, float %191)
  %193 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 12
  store float %192, ptr %193, align 8, !tbaa !329
  %194 = fcmp une float %192, 0.000000e+00
  br i1 %194, label %195, label %202

195:                                              ; preds = %173
  %196 = load float, ptr %156, align 8, !tbaa !328
  %197 = call float @sqrtf(float noundef %192) #14
  %198 = fdiv float %196, %197
  %199 = getelementptr inbounds %struct.BSPFace, ptr %8, i64 0, i32 11
  store float %198, ptr %199, align 4, !tbaa !330
  %200 = load float, ptr %193, align 8, !tbaa !329
  %201 = fdiv float 1.000000e+00, %200
  store float %201, ptr %193, align 8, !tbaa !329
  br label %202

202:                                              ; preds = %173, %195
  %203 = getelementptr inbounds %struct.ZSpan, ptr %0, i64 0, i32 16
  %204 = load ptr, ptr %203, align 8, !tbaa !298
  call fastcc void @isb_bsp_face_inside(ptr noundef %204, ptr noundef nonnull %8)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %8) #14
  ret void
}

declare void @projectvert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @testclip(ptr noundef) local_unnamed_addr #4

declare void @zbufclipwire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @zbufclip4(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @zbufclip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @zbuf_free_span(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @isb_bsp_face_inside(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %37, %22, %2
  %4 = phi ptr [ %0, %2 ], [ %24, %22 ], [ %39, %37 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !288
  %6 = icmp eq ptr %5, null
  br i1 %6, label %40, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ISBBranch, ptr %4, i64 0, i32 5
  %9 = load i16, ptr %8, align 2, !tbaa !287
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load float, ptr %1, align 8, !tbaa !331
  %13 = getelementptr inbounds %struct.ISBBranch, ptr %4, i64 0, i32 2
  %14 = load float, ptr %13, align 8, !tbaa !77
  %15 = fcmp ugt float %12, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call fastcc void @isb_bsp_face_inside(ptr noundef nonnull %5, ptr noundef nonnull %1)
  br label %17

17:                                               ; preds = %16, %11
  %18 = getelementptr inbounds %struct.Boxf, ptr %1, i64 0, i32 1
  %19 = load float, ptr %18, align 4, !tbaa !332
  %20 = load float, ptr %13, align 8, !tbaa !77
  %21 = fcmp ogt float %19, %20
  br i1 %21, label %22, label %282

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ISBBranch, ptr %4, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !289
  br label %3

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.Boxf, ptr %1, i64 0, i32 2
  %27 = load float, ptr %26, align 8, !tbaa !333
  %28 = getelementptr inbounds %struct.ISBBranch, ptr %4, i64 0, i32 2, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !77
  %30 = fcmp ugt float %27, %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  tail call fastcc void @isb_bsp_face_inside(ptr noundef nonnull %5, ptr noundef %1)
  br label %32

32:                                               ; preds = %31, %25
  %33 = getelementptr inbounds %struct.Boxf, ptr %1, i64 0, i32 3
  %34 = load float, ptr %33, align 4, !tbaa !334
  %35 = load float, ptr %28, align 4, !tbaa !77
  %36 = fcmp ogt float %34, %35
  br i1 %36, label %37, label %282

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ISBBranch, ptr %4, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !289
  br label %3

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.ISBBranch, ptr %4, i64 0, i32 4
  %42 = load i16, ptr %41, align 8, !tbaa !307
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %282, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ISBBranch, ptr %4, i64 0, i32 6
  %46 = load i16, ptr %45, align 4, !tbaa !335
  %47 = icmp eq i16 %42, %46
  br i1 %47, label %282, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.ISBBranch, ptr %4, i64 0, i32 3, i32 5
  %50 = load float, ptr %49, align 4, !tbaa !336
  %51 = getelementptr inbounds %struct.Boxf, ptr %1, i64 0, i32 4
  %52 = load float, ptr %51, align 8, !tbaa !337
  %53 = fcmp olt float %50, %52
  br i1 %53, label %282, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.ISBBranch, ptr %4, i64 0, i32 3
  %56 = tail call zeroext i8 @BLI_rctf_isect(ptr noundef %1, ptr noundef nonnull %55, ptr noundef null) #14
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %282, label %58

58:                                               ; preds = %54
  %59 = load i16, ptr %41, align 8, !tbaa !307
  %60 = icmp sgt i16 %59, 0
  br i1 %60, label %61, label %282

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.ISBBranch, ptr %4, i64 0, i32 8
  %63 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 6
  %64 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 5
  %65 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 7
  %66 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 12
  %67 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 15
  %68 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 13
  %69 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 15, i64 1
  %70 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 13, i64 1
  %71 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 11
  %72 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 10
  %73 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 13, i64 2
  %74 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 15, i64 2
  %75 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 13
  %76 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 13, i64 1
  %77 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 10
  %78 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 1
  %79 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 2
  %80 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 3
  %81 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 4
  %82 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 8
  %83 = getelementptr inbounds %struct.BSPFace, ptr %1, i64 0, i32 9
  %84 = zext nneg i16 %59 to i64
  br label %85

85:                                               ; preds = %61, %280
  %86 = phi i64 [ %84, %61 ], [ %87, %280 ]
  %87 = add nsw i64 %86, -1
  %88 = load ptr, ptr %62, align 8, !tbaa !291
  %89 = getelementptr inbounds ptr, ptr %88, i64 %87
  %90 = load ptr, ptr %89, align 8, !tbaa !45
  %91 = getelementptr inbounds %struct.ISBSample, ptr %90, i64 0, i32 3
  %92 = load i32, ptr %91, align 4, !tbaa !264
  %93 = load i32, ptr %63, align 4, !tbaa !324
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.ISBSample, ptr %90, i64 0, i32 2
  %97 = load i32, ptr %96, align 8, !tbaa !262
  %98 = load i32, ptr %64, align 8, !tbaa !323
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %280, label %100

100:                                              ; preds = %95, %85
  %101 = getelementptr inbounds %struct.ISBSample, ptr %90, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !266
  %103 = icmp eq ptr %102, null
  br i1 %103, label %280, label %104

104:                                              ; preds = %100
  %105 = load float, ptr %51, align 8, !tbaa !337
  %106 = getelementptr inbounds [3 x float], ptr %90, i64 0, i64 2
  %107 = load float, ptr %106, align 8, !tbaa !77
  %108 = fcmp olt float %105, %107
  br i1 %108, label %109, label %280

109:                                              ; preds = %104
  %110 = tail call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef %1, ptr noundef %90) #14
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %280, label %112

112:                                              ; preds = %109
  %113 = load i32, ptr %65, align 8, !tbaa !325
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %166, label %115

115:                                              ; preds = %112
  %116 = load float, ptr %66, align 8, !tbaa !329
  %117 = fcmp oeq float %116, 0.000000e+00
  br i1 %117, label %118, label %131

118:                                              ; preds = %115
  %119 = load float, ptr %90, align 4, !tbaa !77
  %120 = load float, ptr %75, align 4, !tbaa !77
  %121 = fsub float %119, %120
  %122 = getelementptr inbounds float, ptr %90, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !77
  %124 = load float, ptr %76, align 4, !tbaa !77
  %125 = fsub float %123, %124
  %126 = fmul float %125, %125
  %127 = tail call float @llvm.fmuladd.f32(float %121, float %121, float %126)
  %128 = tail call float @sqrtf(float noundef %127) #14
  %129 = load float, ptr %77, align 8, !tbaa !328
  %130 = fcmp olt float %128, %129
  br i1 %130, label %268, label %280

131:                                              ; preds = %115
  %132 = load float, ptr %67, align 4, !tbaa !77
  %133 = load float, ptr %90, align 4, !tbaa !77
  %134 = load float, ptr %68, align 4, !tbaa !77
  %135 = fsub float %133, %134
  %136 = load float, ptr %69, align 4, !tbaa !77
  %137 = getelementptr inbounds float, ptr %90, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !77
  %139 = load float, ptr %70, align 4, !tbaa !77
  %140 = fsub float %138, %139
  %141 = fmul float %136, %140
  %142 = tail call float @llvm.fmuladd.f32(float %132, float %135, float %141)
  %143 = fmul float %116, %142
  %144 = load float, ptr %71, align 4, !tbaa !330
  %145 = fneg float %144
  %146 = fcmp ogt float %143, %145
  %147 = fadd float %144, 1.000000e+00
  %148 = fcmp olt float %143, %147
  %149 = and i1 %146, %148
  br i1 %149, label %150, label %280

150:                                              ; preds = %131
  %151 = tail call float @llvm.fmuladd.f32(float %143, float %132, float %134)
  %152 = tail call float @llvm.fmuladd.f32(float %143, float %136, float %139)
  %153 = fsub float %151, %133
  %154 = fsub float %152, %138
  %155 = fmul float %154, %154
  %156 = tail call float @llvm.fmuladd.f32(float %153, float %153, float %155)
  %157 = tail call float @sqrtf(float noundef %156) #14
  %158 = load float, ptr %72, align 8, !tbaa !328
  %159 = fcmp olt float %157, %158
  br i1 %159, label %160, label %280

160:                                              ; preds = %150
  %161 = load float, ptr %73, align 4, !tbaa !77
  %162 = load float, ptr %74, align 4, !tbaa !77
  %163 = tail call float @llvm.fmuladd.f32(float %143, float %162, float %161)
  %164 = load float, ptr %106, align 4, !tbaa !77
  %165 = fcmp ule float %164, %163
  br i1 %165, label %280, label %268

166:                                              ; preds = %112
  %167 = load ptr, ptr %78, align 8, !tbaa !318
  %168 = load ptr, ptr %79, align 8, !tbaa !320
  %169 = load ptr, ptr %80, align 8, !tbaa !321
  %170 = load float, ptr %168, align 4, !tbaa !77
  %171 = load float, ptr %167, align 4, !tbaa !77
  %172 = fsub float %170, %171
  %173 = getelementptr inbounds float, ptr %168, i64 1
  %174 = load float, ptr %173, align 4, !tbaa !77
  %175 = getelementptr inbounds float, ptr %167, i64 1
  %176 = load float, ptr %175, align 4, !tbaa !77
  %177 = fsub float %174, %176
  %178 = load float, ptr %169, align 4, !tbaa !77
  %179 = fsub float %178, %171
  %180 = getelementptr inbounds float, ptr %169, i64 1
  %181 = load float, ptr %180, align 4, !tbaa !77
  %182 = fsub float %181, %176
  %183 = fneg float %177
  %184 = fmul float %179, %183
  %185 = tail call float @llvm.fmuladd.f32(float %172, float %182, float %184)
  %186 = fcmp oeq float %185, 0.000000e+00
  br i1 %186, label %221, label %187

187:                                              ; preds = %166
  %188 = load float, ptr %90, align 4, !tbaa !77
  %189 = fsub float %188, %171
  %190 = getelementptr inbounds float, ptr %90, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !77
  %192 = fsub float %191, %176
  %193 = fdiv float 1.000000e+00, %185
  %194 = fneg float %192
  %195 = fmul float %179, %194
  %196 = tail call float @llvm.fmuladd.f32(float %189, float %182, float %195)
  %197 = fmul float %193, %196
  %198 = fcmp ult float %197, 0.000000e+00
  br i1 %198, label %221, label %199

199:                                              ; preds = %187
  %200 = fmul float %189, %183
  %201 = tail call float @llvm.fmuladd.f32(float %172, float %192, float %200)
  %202 = fmul float %193, %201
  %203 = fcmp ult float %202, 0.000000e+00
  %204 = fadd float %202, %197
  %205 = fcmp ugt float %204, 1.000000e+00
  %206 = or i1 %203, %205
  br i1 %206, label %221, label %207

207:                                              ; preds = %199
  %208 = fsub float 1.000000e+00, %197
  %209 = fsub float %208, %202
  %210 = getelementptr inbounds float, ptr %167, i64 2
  %211 = load float, ptr %210, align 4, !tbaa !77
  %212 = getelementptr inbounds float, ptr %168, i64 2
  %213 = load float, ptr %212, align 4, !tbaa !77
  %214 = fmul float %197, %213
  %215 = tail call float @llvm.fmuladd.f32(float %209, float %211, float %214)
  %216 = getelementptr inbounds float, ptr %169, i64 2
  %217 = load float, ptr %216, align 4, !tbaa !77
  %218 = tail call float @llvm.fmuladd.f32(float %202, float %217, float %215)
  %219 = load float, ptr %106, align 4, !tbaa !77
  %220 = fcmp ugt float %218, %219
  br i1 %220, label %221, label %268

221:                                              ; preds = %187, %199, %207, %166
  %222 = load ptr, ptr %81, align 8, !tbaa !322
  %223 = icmp eq ptr %222, null
  br i1 %223, label %280, label %224

224:                                              ; preds = %221
  %225 = load float, ptr %222, align 4, !tbaa !77
  %226 = fsub float %225, %171
  %227 = getelementptr inbounds float, ptr %222, i64 1
  %228 = load float, ptr %227, align 4, !tbaa !77
  %229 = fsub float %228, %176
  %230 = fneg float %182
  %231 = fmul float %226, %230
  %232 = tail call float @llvm.fmuladd.f32(float %179, float %229, float %231)
  %233 = fcmp oeq float %232, 0.000000e+00
  br i1 %233, label %280, label %234

234:                                              ; preds = %224
  %235 = load float, ptr %90, align 4, !tbaa !77
  %236 = fsub float %235, %171
  %237 = getelementptr inbounds float, ptr %90, i64 1
  %238 = load float, ptr %237, align 4, !tbaa !77
  %239 = fsub float %238, %176
  %240 = fdiv float 1.000000e+00, %232
  %241 = fneg float %239
  %242 = fmul float %226, %241
  %243 = tail call float @llvm.fmuladd.f32(float %236, float %229, float %242)
  %244 = fmul float %240, %243
  %245 = fcmp ult float %244, 0.000000e+00
  br i1 %245, label %280, label %246

246:                                              ; preds = %234
  %247 = fmul float %236, %230
  %248 = tail call float @llvm.fmuladd.f32(float %179, float %239, float %247)
  %249 = fmul float %240, %248
  %250 = fcmp ult float %249, 0.000000e+00
  %251 = fadd float %249, %244
  %252 = fcmp ugt float %251, 1.000000e+00
  %253 = or i1 %250, %252
  br i1 %253, label %280, label %254

254:                                              ; preds = %246
  %255 = fsub float 1.000000e+00, %244
  %256 = fsub float %255, %249
  %257 = getelementptr inbounds float, ptr %167, i64 2
  %258 = load float, ptr %257, align 4, !tbaa !77
  %259 = getelementptr inbounds float, ptr %169, i64 2
  %260 = load float, ptr %259, align 4, !tbaa !77
  %261 = fmul float %244, %260
  %262 = tail call float @llvm.fmuladd.f32(float %256, float %258, float %261)
  %263 = getelementptr inbounds float, ptr %222, i64 2
  %264 = load float, ptr %263, align 4, !tbaa !77
  %265 = tail call float @llvm.fmuladd.f32(float %249, float %264, float %262)
  %266 = load float, ptr %106, align 4, !tbaa !77
  %267 = fcmp ugt float %265, %266
  br i1 %267, label %280, label %268

268:                                              ; preds = %254, %207, %118, %160
  %269 = load i16, ptr %82, align 4, !tbaa !326
  %270 = load ptr, ptr %101, align 8, !tbaa !266
  %271 = load i16, ptr %270, align 2, !tbaa !116
  %272 = add i16 %271, %269
  store i16 %272, ptr %270, align 2, !tbaa !116
  %273 = icmp sgt i16 %272, 4095
  br i1 %273, label %277, label %274

274:                                              ; preds = %268
  %275 = load i16, ptr %83, align 2, !tbaa !327
  %276 = icmp eq i16 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %274, %268
  %278 = load i16, ptr %45, align 4, !tbaa !335
  %279 = add i16 %278, 1
  store i16 %279, ptr %45, align 4, !tbaa !335
  store ptr null, ptr %101, align 8, !tbaa !266
  br label %280

280:                                              ; preds = %234, %246, %254, %224, %118, %131, %150, %160, %277, %274, %221, %104, %109, %100, %95
  %281 = icmp sgt i64 %86, 1
  br i1 %281, label %85, label %282, !llvm.loop !338

282:                                              ; preds = %280, %58, %40, %44, %48, %54, %17, %32
  ret void
}

declare zeroext i8 @BLI_rctf_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !36, i64 232}
!35 = !{!"LampRen", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !39, i64 24, !37, i64 28, !40, i64 40, !41, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !41, i64 84, !39, i64 88, !39, i64 92, !37, i64 96, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !40, i64 132, !39, i64 136, !39, i64 140, !36, i64 144, !40, i64 152, !40, i64 154, !39, i64 156, !40, i64 160, !40, i64 162, !40, i64 164, !40, i64 166, !40, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !40, i64 188, !40, i64 190, !40, i64 192, !40, i64 194, !40, i64 196, !40, i64 198, !40, i64 200, !37, i64 202, !37, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !36, i64 224, !36, i64 232, !36, i64 240, !37, i64 248, !39, i64 284, !37, i64 288, !39, i64 300, !37, i64 304, !37, i64 368, !37, i64 404, !39, i64 500, !36, i64 504, !37, i64 512, !37, i64 520, !41, i64 664, !41, i64 668}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"float", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"int", !37, i64 0}
!42 = !{!35, !40, i64 166}
!43 = !{!35, !41, i64 44}
!44 = !{!35, !41, i64 84}
!45 = !{!36, !36, i64 0}
!46 = !{!47, !41, i64 80}
!47 = !{!"ObjectRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !37, i64 56, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !41, i64 168, !41, i64 172, !41, i64 176, !37, i64 180, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !49, !50}
!52 = !{!53, !36, i64 16}
!53 = !{!"ObjectInstanceRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !37, i64 52, !37, i64 116, !37, i64 180, !40, i64 216, !37, i64 220, !37, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !36, i64 272, !41, i64 280}
!54 = !{!53, !40, i64 216}
!55 = !{!47, !41, i64 84}
!56 = !{!47, !36, i64 120}
!57 = !{!58, !36, i64 0}
!58 = !{!"VlakTableNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56}
!59 = !{!60, !36, i64 48}
!60 = !{!"VlakRen", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !37, i64 56, !37, i64 57, !37, i64 58, !41, i64 60}
!61 = !{!62, !41, i64 404}
!62 = !{!"Material", !63, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !39, i64 132, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !64, i64 224, !65, i64 312, !39, i64 328, !39, i64 332, !39, i64 336, !39, i64 340, !39, i64 344, !39, i64 348, !39, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !39, i64 364, !39, i64 368, !40, i64 372, !40, i64 374, !39, i64 376, !39, i64 380, !39, i64 384, !39, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !39, i64 420, !39, i64 424, !39, i64 428, !39, i64 432, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !39, i64 456, !37, i64 460, !39, i64 524, !39, i64 528, !39, i64 532, !41, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !39, i64 556, !39, i64 560, !37, i64 564, !39, i64 580, !39, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !39, i64 616, !39, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !39, i64 800, !39, i64 804, !39, i64 808, !39, i64 812, !39, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !39, i64 848, !39, i64 852, !39, i64 856, !39, i64 860, !39, i64 864, !39, i64 868, !39, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !66, i64 928}
!63 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!64 = !{!"VolumeSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !39, i64 52, !39, i64 56, !39, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84}
!65 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!66 = !{!"ListBase", !36, i64 0, !36, i64 8}
!67 = !{!62, !41, i64 396}
!68 = !{!53, !41, i64 48}
!69 = !{!60, !36, i64 0}
!70 = !{!71, !41, i64 40}
!71 = !{!"VertRen", !37, i64 0, !37, i64 12, !36, i64 24, !41, i64 32, !39, i64 36, !41, i64 40}
!72 = !{!37, !37, i64 0}
!73 = !{!60, !36, i64 8}
!74 = !{!60, !36, i64 16}
!75 = !{!60, !36, i64 24}
!76 = distinct !{!76, !49, !50}
!77 = !{!39, !39, i64 0}
!78 = !{!35, !39, i64 88}
!79 = distinct !{!79, !49, !50}
!80 = !{!81, !39, i64 216}
!81 = !{!"ShadBuf", !40, i64 0, !40, i64 2, !40, i64 4, !37, i64 8, !37, i64 72, !37, i64 136, !36, i64 200, !36, i64 208, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !37, i64 236, !41, i64 248, !41, i64 252, !66, i64 256, !37, i64 272}
!82 = !{!81, !39, i64 220}
!83 = !{!35, !39, i64 176}
!84 = !{!35, !39, i64 172}
!85 = !{!81, !41, i64 252}
!86 = !{!35, !40, i64 164}
!87 = !{!81, !41, i64 248}
!88 = !{!81, !39, i64 224}
!89 = !{!35, !40, i64 160}
!90 = !{!81, !40, i64 4}
!91 = !{!81, !40, i64 0}
!92 = !{!41, !41, i64 0}
!93 = distinct !{!93, !49, !50}
!94 = !{!81, !36, i64 200}
!95 = !{!35, !40, i64 162}
!96 = !{!81, !36, i64 208}
!97 = distinct !{!97, !49, !50}
!98 = distinct !{!98, !49, !50}
!99 = !{!100, !41, i64 5732}
!100 = !{!"Render", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !37, i64 104, !36, i64 112, !36, i64 120, !66, i64 128, !41, i64 144, !41, i64 148, !41, i64 152, !101, i64 156, !102, i64 172, !39, i64 188, !39, i64 192, !39, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !39, i64 544, !39, i64 548, !36, i64 552, !37, i64 560, !37, i64 816, !36, i64 1072, !37, i64 1080, !36, i64 1088, !36, i64 1096, !103, i64 1104, !110, i64 5088, !36, i64 5616, !41, i64 5624, !41, i64 5628, !66, i64 5632, !36, i64 5648, !36, i64 5656, !36, i64 5664, !36, i64 5672, !39, i64 5680, !36, i64 5688, !66, i64 5696, !39, i64 5712, !39, i64 5716, !41, i64 5720, !41, i64 5724, !41, i64 5728, !41, i64 5732, !41, i64 5736, !36, i64 5744, !66, i64 5752, !66, i64 5768, !66, i64 5784, !36, i64 5800, !66, i64 5808, !41, i64 5824, !36, i64 5832, !36, i64 5840, !36, i64 5848, !36, i64 5856, !36, i64 5864, !66, i64 5872, !36, i64 5888, !66, i64 5896, !66, i64 5912, !36, i64 5928, !36, i64 5936, !36, i64 5944, !36, i64 5952, !36, i64 5960, !36, i64 5968, !36, i64 5976, !36, i64 5984, !36, i64 5992, !36, i64 6000, !36, i64 6008, !36, i64 6016, !36, i64 6024, !36, i64 6032, !36, i64 6040, !36, i64 6048, !36, i64 6056, !111, i64 6064, !36, i64 6216, !36, i64 6224, !36, i64 6232}
!101 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!102 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!103 = !{!"RenderData", !104, i64 0, !36, i64 248, !36, i64 256, !107, i64 264, !108, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !39, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !39, i64 436, !39, i64 440, !39, i64 444, !39, i64 448, !39, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !102, i64 544, !102, i64 560, !101, i64 576, !66, i64 592, !40, i64 608, !40, i64 610, !39, i64 612, !39, i64 616, !39, i64 620, !39, i64 624, !41, i64 628, !39, i64 632, !39, i64 636, !39, i64 640, !39, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !39, i64 660, !39, i64 664, !40, i64 668, !40, i64 670, !39, i64 672, !39, i64 676, !37, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !39, i64 2528, !39, i64 2532, !40, i64 2536, !40, i64 2538, !39, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !39, i64 2560, !39, i64 2564, !36, i64 2568, !41, i64 2576, !39, i64 2580, !37, i64 2584, !109, i64 2616, !41, i64 3976, !41, i64 3980}
!104 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !39, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !105, i64 24, !106, i64 184}
!105 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 72, !39, i64 136, !39, i64 140, !36, i64 144, !36, i64 152}
!106 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!107 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!108 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !39, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64}
!109 = !{!"BakeData", !104, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !39, i64 1280, !39, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!110 = !{!"World", !63, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !39, i64 136, !39, i64 140, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !39, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !40, i64 504, !40, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!111 = !{!"RenderStats", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !37, i64 40, !112, i64 48, !112, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !39, i64 144, !39, i64 148}
!112 = !{!"double", !37, i64 0}
!113 = !{!114, !36, i64 40}
!114 = !{!"ShadSampleBuf", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!115 = !{!114, !36, i64 32}
!116 = !{!40, !40, i64 0}
!117 = distinct !{!117, !49, !50}
!118 = distinct !{!118, !49, !50}
!119 = !{!120, !36, i64 64}
!120 = !{!"APixstr", !37, i64 0, !37, i64 8, !37, i64 24, !37, i64 40, !37, i64 56, !36, i64 64}
!121 = distinct !{!121, !49, !50}
!122 = distinct !{!122, !49, !50}
!123 = distinct !{!123, !49, !50}
!124 = !{!125, !36, i64 104}
!125 = !{!"APixstrand", !37, i64 0, !37, i64 8, !37, i64 24, !37, i64 40, !37, i64 56, !37, i64 72, !37, i64 88, !36, i64 104}
!126 = distinct !{!126, !49, !50}
!127 = distinct !{!127, !49, !50}
!128 = distinct !{!128, !49, !50}
!129 = !{!130, !41, i64 0}
!130 = !{!"DeepSample", !41, i64 0, !39, i64 4}
!131 = !{!130, !39, i64 4}
!132 = !{!100, !36, i64 5800}
!133 = !{!62, !39, i64 532}
!134 = distinct !{!134, !49, !50}
!135 = distinct !{!135, !49, !50}
!136 = distinct !{!136, !49, !50}
!137 = !{!138, !36, i64 8}
!138 = !{!"StrandRen", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32}
!139 = distinct !{!139, !49, !50}
!140 = distinct !{!140, !49, !50}
!141 = distinct !{!141, !49, !50}
!142 = distinct !{!142, !49, !50}
!143 = distinct !{!143, !49, !50}
!144 = distinct !{!144, !49, !50}
!145 = distinct !{!145, !49, !50}
!146 = distinct !{!146, !49, !50}
!147 = distinct !{!147, !50}
!148 = !{!81, !39, i64 232}
!149 = distinct !{!149, !49, !50}
!150 = distinct !{!150, !49, !50}
!151 = distinct !{!151, !49, !50}
!152 = distinct !{!152, !49, !50}
!153 = !{!114, !36, i64 16}
!154 = !{!114, !36, i64 24}
!155 = distinct !{!155, !49, !50}
!156 = distinct !{!156, !49, !50}
!157 = !{!158, !158, i64 0}
!158 = !{!"long", !37, i64 0}
!159 = distinct !{!159, !49, !50}
!160 = distinct !{!160, !49, !50}
!161 = distinct !{!161, !49, !50}
!162 = distinct !{!162, !49, !50}
!163 = distinct !{!163, !49, !50}
!164 = distinct !{!164, !49, !50}
!165 = !{!100, !36, i64 6048}
!166 = !{!100, !36, i64 6056}
!167 = !{!168, !37, i64 2090}
!168 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !66, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!169 = distinct !{!169, !49, !50}
!170 = !{!100, !40, i64 1538}
!171 = distinct !{!171, !49, !50}
!172 = !{!35, !41, i64 664}
!173 = !{!35, !41, i64 668}
!174 = distinct !{!174, !49, !50}
!175 = distinct !{!175, !49, !50}
!176 = distinct !{!176, !49, !50}
!177 = distinct !{!177, !49, !50}
!178 = distinct !{!178, !49, !50}
!179 = distinct !{!179, !49, !50}
!180 = distinct !{!180, !49, !50}
!181 = distinct !{!181, !49, !50}
!182 = distinct !{!182, !49, !50}
!183 = !{!81, !36, i64 256}
!184 = distinct !{!184, !49, !50}
!185 = !{!81, !39, i64 228}
!186 = distinct !{!186, !49, !50}
!187 = distinct !{!187, !49, !50}
!188 = distinct !{!188, !49, !50}
!189 = !{!35, !39, i64 300}
!190 = !{!81, !40, i64 2}
!191 = distinct !{!191, !49, !50}
!192 = distinct !{!192, !49, !50}
!193 = !{!194, !41, i64 1408}
!194 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !37, i64 44, !40, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 90, !40, i64 92, !40, i64 94, !40, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !41, i64 160, !41, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !39, i64 180, !39, i64 184, !39, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !39, i64 308, !39, i64 312, !39, i64 316, !41, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !39, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !39, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !41, i64 1096, !41, i64 1100, !41, i64 1104, !41, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !39, i64 1256, !39, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !39, i64 1336, !39, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !41, i64 1380, !41, i64 1384, !41, i64 1388, !37, i64 1392, !41, i64 1404, !41, i64 1408, !41, i64 1412, !37, i64 1416, !39, i64 1428, !37, i64 1432, !37, i64 1433, !40, i64 1434, !40, i64 1436, !40, i64 1438, !41, i64 1440, !41, i64 1444, !41, i64 1448, !41, i64 1452, !36, i64 1456, !36, i64 1464}
!195 = !{!194, !40, i64 1434}
!196 = !{!197, !36, i64 0}
!197 = !{!"ISBData", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!198 = !{!197, !36, i64 8}
!199 = !{!194, !41, i64 1380}
!200 = !{!197, !41, i64 24}
!201 = !{!197, !41, i64 32}
!202 = !{!194, !41, i64 1384}
!203 = !{!197, !41, i64 28}
!204 = !{!197, !41, i64 36}
!205 = !{!194, !36, i64 24}
!206 = !{!194, !41, i64 40}
!207 = !{!208, !41, i64 12}
!208 = !{!"ISBShadfacA", !36, i64 0, !41, i64 8, !41, i64 12, !39, i64 16}
!209 = !{!208, !41, i64 8}
!210 = !{!208, !39, i64 16}
!211 = distinct !{!211, !49, !50}
!212 = !{!213, !36, i64 24}
!213 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !37, i64 34}
!214 = !{!35, !40, i64 40}
!215 = !{!216, !40, i64 146}
!216 = !{!"RenderPart", !36, i64 0, !36, i64 8, !36, i64 16, !66, i64 24, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !101, i64 112, !41, i64 128, !41, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !36, i64 152}
!217 = !{!216, !41, i64 112}
!218 = !{!216, !41, i64 120}
!219 = !{!216, !41, i64 128}
!220 = !{!216, !41, i64 132}
!221 = distinct !{!221, !49, !50}
!222 = !{!223, !39, i64 24}
!223 = !{!"ISBBranch", !36, i64 0, !36, i64 8, !37, i64 16, !224, i64 24, !40, i64 48, !40, i64 50, !40, i64 52, !40, i64 54, !36, i64 56}
!224 = !{!"Boxf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20}
!225 = !{!223, !39, i64 32}
!226 = !{!100, !40, i64 98}
!227 = !{i32 0, i32 2}
!228 = !{!229, !36, i64 32}
!229 = !{!"ISBSampleA", !37, i64 0, !36, i64 16, !41, i64 24, !41, i64 28, !36, i64 32}
!230 = !{!229, !41, i64 24}
!231 = !{!229, !41, i64 28}
!232 = !{!229, !36, i64 16}
!233 = !{!102, !39, i64 0}
!234 = !{!102, !39, i64 4}
!235 = !{!102, !39, i64 8}
!236 = !{!102, !39, i64 12}
!237 = distinct !{!237, !49, !50}
!238 = distinct !{!238, !49, !50}
!239 = distinct !{!239, !49, !50}
!240 = distinct !{!240, !49, !50}
!241 = distinct !{!241, !49, !50}
!242 = distinct !{!242, !49, !50}
!243 = distinct !{!243, !49, !50}
!244 = distinct !{!244, !49, !50}
!245 = distinct !{!245, !49, !50}
!246 = distinct !{!246, !49, !50}
!247 = distinct !{!247, !49, !50}
!248 = !{!197, !36, i64 16}
!249 = !{!208, !36, i64 0}
!250 = distinct !{!250, !49, !50}
!251 = distinct !{!251, !49, !50}
!252 = distinct !{!252, !49, !50}
!253 = distinct !{!253, !49, !50}
!254 = distinct !{!254, !49, !50}
!255 = !{!216, !36, i64 72}
!256 = !{!257, !40, i64 24}
!257 = !{!"PixStr", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !40, i64 24, !40, i64 26}
!258 = !{!257, !36, i64 0}
!259 = distinct !{!259, !49, !50}
!260 = !{!257, !41, i64 12}
!261 = !{!257, !41, i64 8}
!262 = !{!263, !41, i64 24}
!263 = !{!"ISBSample", !37, i64 0, !36, i64 16, !41, i64 24, !41, i64 28}
!264 = !{!263, !41, i64 28}
!265 = !{!257, !40, i64 26}
!266 = !{!263, !36, i64 16}
!267 = distinct !{!267, !49, !50}
!268 = !{!216, !36, i64 48}
!269 = !{!216, !36, i64 40}
!270 = distinct !{!270, !49, !50}
!271 = distinct !{!271, !49, !50}
!272 = distinct !{!272, !49, !50}
!273 = distinct !{!273, !49, !50}
!274 = distinct !{!274, !49, !50}
!275 = distinct !{!275, !49, !50}
!276 = distinct !{!276, !49, !50}
!277 = distinct !{!277, !49, !50}
!278 = distinct !{!278, !49, !50}
!279 = distinct !{!279, !49, !50}
!280 = distinct !{!280, !49, !50}
!281 = distinct !{!281, !49, !50}
!282 = !{!100, !41, i64 1624}
!283 = !{!100, !41, i64 148}
!284 = !{!100, !41, i64 152}
!285 = !{!223, !39, i64 28}
!286 = !{!223, !39, i64 36}
!287 = !{!223, !40, i64 50}
!288 = !{!223, !36, i64 0}
!289 = !{!223, !36, i64 8}
!290 = !{i64 0, i64 4, !77, i64 4, i64 4, !77, i64 8, i64 4, !77, i64 12, i64 4, !77, i64 16, i64 4, !77, i64 20, i64 4, !77}
!291 = !{!223, !36, i64 56}
!292 = !{!100, !39, i64 196}
!293 = !{!294, !39, i64 72}
!294 = !{!"ZSpan", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !41, i64 168, !39, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !39, i64 188, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216}
!295 = !{!294, !39, i64 76}
!296 = !{!294, !39, i64 80}
!297 = !{!294, !39, i64 84}
!298 = !{!294, !36, i64 88}
!299 = !{i64 0, i64 4, !92, i64 4, i64 4, !92, i64 8, i64 4, !92, i64 12, i64 4, !92, i64 16, i64 4, !92, i64 20, i64 4, !92, i64 24, i64 8, !45, i64 32, i64 8, !45, i64 40, i64 8, !45, i64 48, i64 8, !45, i64 56, i64 8, !45, i64 64, i64 8, !45, i64 72, i64 4, !77, i64 76, i64 4, !77, i64 80, i64 4, !77, i64 84, i64 4, !77, i64 88, i64 8, !45, i64 96, i64 8, !45, i64 104, i64 8, !45, i64 112, i64 8, !45, i64 120, i64 8, !45, i64 128, i64 8, !45, i64 136, i64 8, !45, i64 144, i64 8, !45, i64 152, i64 8, !45, i64 160, i64 8, !45, i64 168, i64 4, !92, i64 172, i64 4, !77, i64 176, i64 4, !92, i64 180, i64 4, !92, i64 184, i64 4, !92, i64 188, i64 4, !77, i64 192, i64 8, !45, i64 200, i64 8, !45, i64 208, i64 8, !45, i64 216, i64 8, !45}
!300 = !{!294, !36, i64 208}
!301 = !{!62, !40, i64 128}
!302 = !{!294, !39, i64 172}
!303 = !{!60, !37, i64 58}
!304 = !{!60, !37, i64 57}
!305 = distinct !{!305, !49, !50}
!306 = distinct !{!306, !49, !50}
!307 = !{!223, !40, i64 48}
!308 = distinct !{!308, !49, !50}
!309 = distinct !{!309, !49, !50}
!310 = distinct !{!310, !49, !50}
!311 = !{!224, !39, i64 0}
!312 = !{!224, !39, i64 4}
!313 = !{!224, !39, i64 8}
!314 = !{!224, !39, i64 12}
!315 = !{!224, !39, i64 16}
!316 = !{!224, !39, i64 20}
!317 = distinct !{!317, !49, !50}
!318 = !{!319, !36, i64 24}
!319 = !{!"BSPFace", !224, i64 0, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !41, i64 56, !41, i64 60, !41, i64 64, !40, i64 68, !40, i64 70, !39, i64 72, !39, i64 76, !39, i64 80, !37, i64 84, !37, i64 96, !37, i64 108}
!320 = !{!319, !36, i64 32}
!321 = !{!319, !36, i64 40}
!322 = !{!319, !36, i64 48}
!323 = !{!319, !41, i64 56}
!324 = !{!319, !41, i64 60}
!325 = !{!319, !41, i64 64}
!326 = !{!319, !40, i64 68}
!327 = !{!319, !40, i64 70}
!328 = !{!319, !39, i64 72}
!329 = !{!319, !39, i64 80}
!330 = !{!319, !39, i64 76}
!331 = !{!319, !39, i64 0}
!332 = !{!319, !39, i64 4}
!333 = !{!319, !39, i64 8}
!334 = !{!319, !39, i64 12}
!335 = !{!223, !40, i64 52}
!336 = !{!223, !39, i64 44}
!337 = !{!319, !39, i64 16}
!338 = distinct !{!338, !49, !50}
