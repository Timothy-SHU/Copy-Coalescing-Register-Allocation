; ModuleID = 'blender/source/blender/render/intern/source/voxeldata.c'
source_filename = "blender/source/blender/render/intern/source/voxeldata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.VoxelData = type { [3 x i32], i32, i16, i16, i16, i16, i16, i16, i32, ptr, float, i32, [1024 x i8], ptr, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderSlot = type { [64 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.VoxelDataHeader = type { i32, i32, i32, i32 }
%struct.Render = type { ptr, ptr, [74 x i8], i32, i16, i16, i16, i16, i8, ptr, ptr, %struct.ListBase, i32, i32, i32, %struct.rcti, %struct.rctf, float, float, float, i32, i32, i32, i32, float, float, float, float, float, float, [3 x float], [3 x [3 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], float, float, ptr, [32 x [2 x float]], [32 x [2 x float]], ptr, [1 x i32], ptr, ptr, %struct.RenderData, %struct.World, ptr, i32, i32, %struct.ListBase, ptr, ptr, ptr, ptr, float, ptr, %struct.ListBase, float, float, i32, i32, i32, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, i32, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.RenderStats, ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.RenderStats = type { i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, double, double, ptr, ptr, [64 x i8], float, float }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Loading voxel datasets\00", align 1
@__const.voxeldatatex.offset = private unnamed_addr constant [3 x float] [float 5.000000e-01, float 5.000000e-01, float 5.000000e-01], align 4
@MEM_mapallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"voxel dataset\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"voxel data header\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"temporary voxel file reading storage\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cache_voxeldata(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #10
  %6 = getelementptr inbounds %struct.VoxelData, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 2, !tbaa !44
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.VoxelData, ptr %5, i64 0, i32 14
  %12 = load i32, ptr %11, align 8, !tbaa !46
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %18

14:                                               ; preds = %10, %2
  %15 = getelementptr inbounds %struct.VoxelData, ptr %5, i64 0, i32 15
  %16 = load i32, ptr %15, align 4, !tbaa !47
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %68

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct.VoxelData, ptr %5, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %23(ptr noundef nonnull %20) #11
  store ptr null, ptr %19, align 8, !tbaa !48
  %24 = load i16, ptr %6, align 2, !tbaa !44
  %25 = and i16 %24, 1
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i16 [ %25, %22 ], [ %8, %18 ]
  %28 = getelementptr inbounds %struct.VoxelData, ptr %5, i64 0, i32 6
  store i16 0, ptr %28, align 8, !tbaa !50
  %29 = icmp eq i16 %27, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.VoxelData, ptr %5, i64 0, i32 11
  %32 = load i32, ptr %31, align 4, !tbaa !51
  br label %33

33:                                               ; preds = %26, %30
  %34 = phi i32 [ %32, %30 ], [ %1, %26 ]
  %35 = getelementptr inbounds %struct.VoxelData, ptr %5, i64 0, i32 12
  %36 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %35, i64 noundef 1024) #11
  %37 = getelementptr inbounds %struct.VoxelData, ptr %5, i64 0, i32 2
  %38 = load i16, ptr %37, align 8, !tbaa !52
  switch i16 %38, label %68 [
    i16 3, label %39
    i16 4, label %40
    i16 0, label %41
    i16 1, label %57
  ]

39:                                               ; preds = %33
  call fastcc void @load_frame_image_sequence(ptr noundef nonnull %5, ptr noundef nonnull %0) #12
  br label %68

40:                                               ; preds = %33
  call fastcc void @init_frame_smoke(ptr noundef nonnull %5) #12
  br label %68

41:                                               ; preds = %33
  %42 = load ptr, ptr @G, align 8, !tbaa !53
  %43 = getelementptr inbounds %struct.Main, ptr %42, i64 0, i32 2
  %44 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %3, ptr noundef nonnull %43) #11
  %45 = call i32 @BLI_exists(ptr noundef nonnull %3) #11
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %41
  %48 = call ptr @BLI_fopen(ptr noundef nonnull %3, ptr noundef nonnull @.str) #11
  %49 = icmp eq ptr %48, null
  br i1 %49, label %68, label %50

50:                                               ; preds = %47
  %51 = call fastcc i32 @read_voxeldata_header(ptr noundef nonnull %48, ptr noundef nonnull %5) #12, !range !56
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = add nsw i32 %34, -1
  call fastcc void @load_frame_blendervoxel(ptr noundef nonnull %5, ptr noundef nonnull %48, i32 noundef %54) #12
  br label %55

55:                                               ; preds = %53, %50
  %56 = call i32 @fclose(ptr noundef nonnull %48) #12
  br label %68

57:                                               ; preds = %33
  %58 = load ptr, ptr @G, align 8, !tbaa !53
  %59 = getelementptr inbounds %struct.Main, ptr %58, i64 0, i32 2
  %60 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %3, ptr noundef nonnull %59) #11
  %61 = call i32 @BLI_exists(ptr noundef nonnull %3) #11
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = call ptr @BLI_fopen(ptr noundef nonnull %3, ptr noundef nonnull @.str) #11
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  call fastcc void @load_frame_raw8(ptr noundef nonnull %5, ptr noundef nonnull %64, i32 noundef %34) #12
  %67 = call i32 @fclose(ptr noundef nonnull %64) #12
  br label %68

68:                                               ; preds = %33, %63, %57, %47, %41, %14, %66, %55, %40, %39
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @load_frame_image_sequence(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !57 {
  %3 = alloca %struct.ImageUser, align 8
  %4 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 54
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 51
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !59
  %7 = icmp eq ptr %5, null
  br i1 %7, label %126, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !63
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %126, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 11
  store i16 2, ptr %13, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !67
  %16 = add nsw i32 %15, 1
  %17 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 1
  store i32 %16, ptr %17, align 8, !tbaa !68
  %18 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef null) #11
  %19 = icmp eq ptr %18, null
  %20 = load i32, ptr %17, align 8
  %21 = load i32, ptr %9, align 4
  %22 = icmp slt i32 %20, %21
  %23 = select i1 %19, i1 %22, i1 false
  br i1 %23, label %24, label %33

24:                                               ; preds = %12, %24
  %25 = phi i32 [ %29, %24 ], [ %20, %12 ]
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %17, align 8, !tbaa !68
  %27 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef null) #11
  %28 = icmp eq ptr %27, null
  %29 = load i32, ptr %17, align 8
  %30 = load i32, ptr %9, align 4
  %31 = icmp slt i32 %29, %30
  %32 = select i1 %28, i1 %31, i1 false
  br i1 %32, label %24, label %33, !llvm.loop !69

33:                                               ; preds = %24, %12
  %34 = phi i32 [ %21, %12 ], [ %30, %24 ]
  %35 = phi ptr [ %18, %12 ], [ %27, %24 ]
  %36 = phi i1 [ %19, %12 ], [ %28, %24 ]
  br i1 %36, label %126, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !71
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  call void @IMB_float_from_rect(ptr noundef nonnull %35) #11
  %42 = load i32, ptr %9, align 4, !tbaa !63
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi i32 [ %42, %41 ], [ %34, %37 ]
  %45 = getelementptr inbounds %struct.VoxelData, ptr %0, i64 0, i32 3
  %46 = load i16, ptr %45, align 2, !tbaa !44
  %47 = or i16 %46, 1
  store i16 %47, ptr %45, align 2, !tbaa !44
  %48 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !75
  store i32 %49, ptr %0, align 8, !tbaa !60
  %50 = getelementptr inbounds %struct.ImBuf, ptr %35, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !76
  %52 = getelementptr inbounds [3 x i32], ptr %0, i64 0, i64 1
  store i32 %51, ptr %52, align 4, !tbaa !60
  %53 = getelementptr inbounds [3 x i32], ptr %0, i64 0, i64 2
  store i32 %44, ptr %53, align 8, !tbaa !60
  %54 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !49
  %55 = call fastcc i64 @vd_resol_size(ptr noundef nonnull %0) #12
  %56 = shl i64 %55, 2
  %57 = call ptr %54(i64 noundef %56, ptr noundef nonnull @.str.2) #11
  %58 = getelementptr inbounds %struct.VoxelData, ptr %0, i64 0, i32 13
  store ptr %57, ptr %58, align 8, !tbaa !48
  %59 = load i32, ptr %9, align 4, !tbaa !63
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %123

61:                                               ; preds = %43, %118
  %62 = phi i32 [ %120, %118 ], [ 0, %43 ]
  %63 = phi ptr [ %76, %118 ], [ %35, %43 ]
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %61
  %66 = load i32, ptr %17, align 8, !tbaa !68
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %17, align 8, !tbaa !68
  call void @BKE_image_release_ibuf(ptr noundef nonnull %5, ptr noundef %63, ptr noundef null) #11
  %68 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef null) #11
  %69 = icmp eq ptr %68, null
  br i1 %69, label %123, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.ImBuf, ptr %68, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !71
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  call void @IMB_float_from_rect(ptr noundef nonnull %68) #11
  br label %75

75:                                               ; preds = %70, %74, %61
  %76 = phi ptr [ %68, %70 ], [ %68, %74 ], [ %63, %61 ]
  %77 = getelementptr inbounds %struct.ImBuf, ptr %76, i64 0, i32 3
  %78 = load i32, ptr %77, align 4, !tbaa !76
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %118

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.ImBuf, ptr %76, i64 0, i32 9
  %82 = load ptr, ptr %81, align 8, !tbaa !71
  %83 = getelementptr inbounds %struct.ImBuf, ptr %76, i64 0, i32 2
  %84 = load i32, ptr %83, align 8, !tbaa !75
  %85 = icmp sgt i32 %84, 0
  %86 = zext nneg i32 %84 to i64
  br label %87

87:                                               ; preds = %80, %114
  %88 = phi ptr [ %82, %80 ], [ %115, %114 ]
  %89 = phi i32 [ 0, %80 ], [ %116, %114 ]
  br i1 %85, label %90, label %114

90:                                               ; preds = %87
  %91 = load ptr, ptr %58, align 8, !tbaa !48
  %92 = load i32, ptr %52, align 4, !tbaa !60
  %93 = mul nsw i32 %92, %62
  %94 = load i32, ptr %0, align 8, !tbaa !60
  %95 = add i32 %93, %89
  %96 = mul i32 %95, %94
  %97 = sext i32 %96 to i64
  %98 = getelementptr float, ptr %91, i64 %97
  br label %99

99:                                               ; preds = %90, %99
  %100 = phi i64 [ 0, %90 ], [ %112, %99 ]
  %101 = phi ptr [ %88, %90 ], [ %111, %99 ]
  %102 = load float, ptr %101, align 4, !tbaa !77
  %103 = getelementptr inbounds float, ptr %101, i64 1
  %104 = load float, ptr %103, align 4, !tbaa !77
  %105 = fadd float %102, %104
  %106 = getelementptr inbounds float, ptr %101, i64 2
  %107 = load float, ptr %106, align 4, !tbaa !77
  %108 = fadd float %105, %107
  %109 = fdiv float %108, 3.000000e+00
  %110 = getelementptr float, ptr %98, i64 %100
  store float %109, ptr %110, align 4, !tbaa !77
  %111 = getelementptr inbounds float, ptr %101, i64 4
  %112 = add nuw nsw i64 %100, 1
  %113 = icmp eq i64 %112, %86
  br i1 %113, label %114, label %99, !llvm.loop !78

114:                                              ; preds = %99, %87
  %115 = phi ptr [ %88, %87 ], [ %111, %99 ]
  %116 = add nuw nsw i32 %89, 1
  %117 = icmp eq i32 %116, %78
  br i1 %117, label %118, label %87, !llvm.loop !79

118:                                              ; preds = %114, %75
  %119 = load i32, ptr %17, align 8, !tbaa !68
  call void @BKE_image_free_anim_ibufs(ptr noundef nonnull %5, i32 noundef %119) #11
  %120 = add nuw nsw i32 %62, 1
  %121 = load i32, ptr %9, align 4, !tbaa !63
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %61, label %123, !llvm.loop !80

123:                                              ; preds = %118, %65, %43
  %124 = phi ptr [ %35, %43 ], [ null, %65 ], [ %76, %118 ]
  call void @BKE_image_release_ibuf(ptr noundef nonnull %5, ptr noundef %124, ptr noundef null) #11
  %125 = getelementptr inbounds %struct.VoxelData, ptr %0, i64 0, i32 15
  store i32 1, ptr %125, align 4, !tbaa !47
  br label %126

126:                                              ; preds = %33, %8, %2, %123
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @init_frame_smoke(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !81 {
  %2 = getelementptr inbounds %struct.VoxelData, ptr %0, i64 0, i32 13
  store ptr null, ptr %2, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @read_voxeldata_header(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !82 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %4 = tail call ptr %3(i64 noundef 16, ptr noundef nonnull @.str.3) #11
  tail call void @rewind(ptr noundef %0) #12
  %5 = tail call i64 @fread(ptr noundef %4, i64 noundef 16, i64 noundef 1, ptr noundef %0) #12
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %8(ptr noundef %4) #11
  br label %18

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4, !tbaa !83
  store i32 %10, ptr %1, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.VoxelDataHeader, ptr %4, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !85
  %13 = getelementptr inbounds [3 x i32], ptr %1, i64 0, i64 1
  store i32 %12, ptr %13, align 4, !tbaa !60
  %14 = getelementptr inbounds %struct.VoxelDataHeader, ptr %4, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !86
  %16 = getelementptr inbounds [3 x i32], ptr %1, i64 0, i64 2
  store i32 %15, ptr %16, align 8, !tbaa !60
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %17(ptr noundef nonnull %4) #11
  br label %18

18:                                               ; preds = %9, %7
  %19 = phi i32 [ 0, %7 ], [ 1, %9 ]
  ret i32 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @load_frame_blendervoxel(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !87 {
  %4 = tail call fastcc i64 @vd_resol_size(ptr noundef %0) #12
  %5 = tail call fastcc zeroext i8 @is_vd_res_ok(ptr noundef %0) #12, !range !88
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !49
  %9 = shl i64 %4, 2
  %10 = tail call ptr %8(i64 noundef %9, ptr noundef nonnull @.str.2) #11
  %11 = getelementptr inbounds %struct.VoxelData, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !48
  %12 = icmp eq ptr %10, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %7
  %14 = sext i32 %2 to i64
  %15 = shl nsw i64 %14, 2
  %16 = mul i64 %15, %4
  %17 = add i64 %16, 16
  %18 = tail call i32 @fseek(ptr noundef %1, i64 noundef %17, i32 noundef 0) #12
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %11, align 8, !tbaa !48
  %22 = tail call i64 @fread(ptr noundef %21, i64 noundef 4, i64 noundef %4, ptr noundef %1) #12
  %23 = icmp eq i64 %22, %4
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.VoxelData, ptr %0, i64 0, i32 14
  store i32 %2, ptr %25, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.VoxelData, ptr %0, i64 0, i32 15
  store i32 1, ptr %26, align 4, !tbaa !47
  br label %27

27:                                               ; preds = %20, %13, %7, %3, %24
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @load_frame_raw8(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !89 {
  %4 = tail call fastcc i64 @vd_resol_size(ptr noundef %0) #12
  %5 = tail call fastcc zeroext i8 @is_vd_res_ok(ptr noundef %0) #12, !range !88
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %54, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !49
  %9 = shl i64 %4, 2
  %10 = tail call ptr %8(i64 noundef %9, ptr noundef nonnull @.str.2) #11
  %11 = getelementptr inbounds %struct.VoxelData, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !48
  %12 = icmp eq ptr %10, null
  br i1 %12, label %54, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %15 = tail call ptr %14(i64 noundef %4, ptr noundef nonnull @.str.4) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %19 = load ptr, ptr %11, align 8, !tbaa !48
  tail call void %18(ptr noundef %19) #11
  store ptr null, ptr %11, align 8, !tbaa !48
  br label %54

20:                                               ; preds = %13
  %21 = add nsw i32 %2, -1
  %22 = sext i32 %21 to i64
  %23 = mul i64 %4, %22
  %24 = tail call i32 @fseek(ptr noundef %1, i64 noundef %23, i32 noundef 0) #12
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %27(ptr noundef nonnull %15) #11
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %29 = load ptr, ptr %11, align 8, !tbaa !48
  tail call void %28(ptr noundef %29) #11
  store ptr null, ptr %11, align 8, !tbaa !48
  br label %54

30:                                               ; preds = %20
  %31 = tail call i64 @fread(ptr noundef nonnull %15, i64 noundef 1, i64 noundef %4, ptr noundef %1) #12
  %32 = icmp eq i64 %31, %4
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = icmp eq i64 %4, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %33
  %36 = load ptr, ptr %11, align 8, !tbaa !48
  br label %41

37:                                               ; preds = %30
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %38(ptr noundef nonnull %15) #11
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %40 = load ptr, ptr %11, align 8, !tbaa !48
  tail call void %39(ptr noundef %40) #11
  store ptr null, ptr %11, align 8, !tbaa !48
  br label %54

41:                                               ; preds = %35, %41
  %42 = phi i64 [ 0, %35 ], [ %48, %41 ]
  %43 = getelementptr inbounds i8, ptr %15, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !61
  %45 = uitofp i8 %44 to float
  %46 = fdiv float %45, 2.550000e+02
  %47 = getelementptr inbounds float, ptr %36, i64 %42
  store float %46, ptr %47, align 4, !tbaa !77
  %48 = add nuw i64 %42, 1
  %49 = icmp eq i64 %48, %4
  br i1 %49, label %50, label %41, !llvm.loop !90

50:                                               ; preds = %41, %33
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %51(ptr noundef nonnull %15) #11
  %52 = getelementptr inbounds %struct.VoxelData, ptr %0, i64 0, i32 14
  store i32 %2, ptr %52, align 8, !tbaa !46
  %53 = getelementptr inbounds %struct.VoxelData, ptr %0, i64 0, i32 15
  store i32 1, ptr %53, align 4, !tbaa !47
  br label %54

54:                                               ; preds = %7, %3, %50, %37, %26, %17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @make_voxeldata(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr @.str.1, ptr %3, align 8, !tbaa !91
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  tail call void %5(ptr noundef %7, ptr noundef nonnull %2) #11
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = getelementptr inbounds %struct.Main, ptr %9, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 45, i32 5
  br label %15

15:                                               ; preds = %13, %26
  %16 = phi ptr [ %11, %13 ], [ %27, %26 ]
  %17 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !107
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Tex, ptr %16, i64 0, i32 32
  %22 = load i16, ptr %21, align 8, !tbaa !108
  %23 = icmp eq i16 %22, 15
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, ptr %14, align 8, !tbaa !109
  tail call void @cache_voxeldata(ptr noundef nonnull %16, i32 noundef %25) #12
  br label %26

26:                                               ; preds = %15, %20, %24
  %27 = load ptr, ptr %16, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !llvm.loop !110

29:                                               ; preds = %26, %1
  store ptr null, ptr %3, align 8, !tbaa !91
  %30 = load ptr, ptr %4, align 8, !tbaa !104
  %31 = load ptr, ptr %6, align 8, !tbaa !105
  tail call void %30(ptr noundef %31, ptr noundef nonnull %2) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @voxeldatatex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 59
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %8 = getelementptr inbounds %struct.VoxelData, ptr %7, i64 0, i32 6
  %9 = load i16, ptr %8, align 8, !tbaa !50
  %10 = icmp eq i16 %9, 1
  %11 = getelementptr inbounds %struct.VoxelData, ptr %7, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store float 0.000000e+00, ptr %2, align 8, !tbaa !111
  br label %202

15:                                               ; preds = %3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef %1) #12
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4) #12
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull @__const.voxeldatatex.offset) #12
  %16 = getelementptr inbounds %struct.VoxelData, ptr %7, i64 0, i32 4
  %17 = load i16, ptr %16, align 4, !tbaa !113
  switch i16 %17, label %67 [
    i16 2, label %18
    i16 3, label %36
    i16 1, label %44
  ]

18:                                               ; preds = %15
  %19 = load float, ptr %4, align 8
  %20 = fcmp olt float %19, 0.000000e+00
  %21 = fcmp ogt float %19, 1.000000e+00
  %22 = or i1 %20, %21
  %23 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %24 = load float, ptr %23, align 4
  %25 = fcmp olt float %24, 0.000000e+00
  %26 = select i1 %22, i1 true, i1 %25
  %27 = fcmp ogt float %24, 1.000000e+00
  %28 = select i1 %26, i1 true, i1 %27
  %29 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %30 = load float, ptr %29, align 8
  %31 = fcmp olt float %30, 0.000000e+00
  %32 = select i1 %28, i1 true, i1 %31
  %33 = fcmp ogt float %30, 1.000000e+00
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %18
  store float 0.000000e+00, ptr %2, align 8, !tbaa !111
  br label %202

36:                                               ; preds = %15
  %37 = load <2 x float>, ptr %4, align 8, !tbaa !77
  %38 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %37)
  %39 = fsub <2 x float> %37, %38
  store <2 x float> %39, ptr %4, align 8, !tbaa !77
  %40 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %41 = load float, ptr %40, align 8, !tbaa !77
  %42 = tail call float @llvm.floor.f32(float %41)
  %43 = fsub float %41, %42
  store float %43, ptr %40, align 8, !tbaa !77
  br label %67

44:                                               ; preds = %15
  %45 = load float, ptr %4, align 8, !tbaa !77
  %46 = fcmp olt float %45, 0.000000e+00
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store float 0.000000e+00, ptr %4, align 8, !tbaa !77
  br label %51

48:                                               ; preds = %44
  %49 = fcmp ogt float %45, 1.000000e+00
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  store float 1.000000e+00, ptr %4, align 8, !tbaa !77
  br label %51

51:                                               ; preds = %48, %50, %47
  %52 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !77
  %54 = fcmp olt float %53, 0.000000e+00
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = fcmp ogt float %53, 1.000000e+00
  br i1 %56, label %57, label %59

57:                                               ; preds = %55, %51
  %58 = phi float [ 0.000000e+00, %51 ], [ 1.000000e+00, %55 ]
  store float %58, ptr %52, align 4, !tbaa !77
  br label %59

59:                                               ; preds = %57, %55
  %60 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %61 = load float, ptr %60, align 8, !tbaa !77
  %62 = fcmp olt float %61, 0.000000e+00
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store float 0.000000e+00, ptr %60, align 8, !tbaa !77
  br label %67

64:                                               ; preds = %59
  %65 = fcmp ogt float %61, 1.000000e+00
  br i1 %65, label %66, label %67

66:                                               ; preds = %64
  store float 1.000000e+00, ptr %60, align 8, !tbaa !77
  br label %67

67:                                               ; preds = %63, %66, %64, %18, %15, %36
  %68 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 1
  %69 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 2
  %70 = getelementptr inbounds %struct.VoxelData, ptr %7, i64 0, i32 1
  %71 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 3
  %72 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 2
  %73 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  br label %74

74:                                               ; preds = %67, %106
  %75 = phi i32 [ 0, %67 ], [ %107, %106 ]
  %76 = load ptr, ptr %11, align 8, !tbaa !48
  %77 = load i32, ptr %7, align 8, !tbaa !60
  %78 = mul nsw i32 %77, %75
  %79 = load i32, ptr %68, align 4, !tbaa !60
  %80 = mul nsw i32 %78, %79
  %81 = load i32, ptr %69, align 8, !tbaa !60
  %82 = mul nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, ptr %76, i64 %83
  %85 = load i16, ptr %8, align 8, !tbaa !50
  %86 = icmp eq i16 %85, 1
  br i1 %86, label %87, label %91

87:                                               ; preds = %74
  switch i32 %75, label %91 [
    i32 0, label %88
    i32 1, label %89
    i32 2, label %90
  ]

88:                                               ; preds = %87
  br label %91

89:                                               ; preds = %87
  br label %91

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %88, %89, %90, %87, %74
  %92 = phi ptr [ %2, %87 ], [ %71, %90 ], [ %72, %89 ], [ %73, %88 ], [ %2, %74 ]
  %93 = load i32, ptr %70, align 4, !tbaa !114
  switch i32 %93, label %106 [
    i32 0, label %94
    i32 1, label %96
    i32 2, label %98
    i32 3, label %100
    i32 4, label %100
  ]

94:                                               ; preds = %91
  %95 = call float @BLI_voxel_sample_nearest(ptr noundef %84, ptr noundef nonnull %7, ptr noundef nonnull %4) #11
  br label %104

96:                                               ; preds = %91
  %97 = call float @BLI_voxel_sample_trilinear(ptr noundef %84, ptr noundef nonnull %7, ptr noundef nonnull %4) #11
  br label %104

98:                                               ; preds = %91
  %99 = call float @BLI_voxel_sample_triquadratic(ptr noundef %84, ptr noundef nonnull %7, ptr noundef nonnull %4) #11
  br label %104

100:                                              ; preds = %91, %91
  %101 = icmp eq i32 %93, 4
  %102 = zext i1 %101 to i32
  %103 = call float @BLI_voxel_sample_tricubic(ptr noundef %84, ptr noundef nonnull %7, ptr noundef nonnull %4, i32 noundef %102) #11
  br label %104

104:                                              ; preds = %94, %96, %98, %100
  %105 = phi float [ %103, %100 ], [ %99, %98 ], [ %97, %96 ], [ %95, %94 ]
  store float %105, ptr %92, align 4, !tbaa !77
  br label %106

106:                                              ; preds = %104, %91
  %107 = add nuw nsw i32 %75, 1
  %108 = icmp ult i32 %75, 3
  %109 = select i1 %10, i1 %108, i1 false
  br i1 %109, label %74, label %110, !llvm.loop !115

110:                                              ; preds = %106
  %111 = load float, ptr %2, align 8, !tbaa !111
  %112 = getelementptr inbounds %struct.VoxelData, ptr %7, i64 0, i32 10
  %113 = load float, ptr %112, align 8, !tbaa !116
  %114 = fmul float %111, %113
  %115 = fadd float %114, -5.000000e-01
  %116 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %117 = load float, ptr %116, align 4, !tbaa !117
  %118 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %119 = load float, ptr %118, align 8, !tbaa !118
  %120 = call float @llvm.fmuladd.f32(float %115, float %117, float %119)
  %121 = fadd float %120, -5.000000e-01
  store float %121, ptr %2, align 8, !tbaa !111
  %122 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %123 = load i16, ptr %122, align 2, !tbaa !119
  %124 = and i16 %123, 1024
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %110
  %127 = fcmp olt float %121, 0.000000e+00
  br i1 %127, label %130, label %128

128:                                              ; preds = %126
  %129 = fcmp ogt float %121, 1.000000e+00
  br i1 %129, label %130, label %132

130:                                              ; preds = %128, %126
  %131 = phi float [ 0.000000e+00, %126 ], [ 1.000000e+00, %128 ]
  store float %131, ptr %2, align 8, !tbaa !111
  br label %132

132:                                              ; preds = %130, %128, %110
  %133 = phi float [ %121, %128 ], [ %121, %110 ], [ %131, %130 ]
  %134 = load i16, ptr %8, align 8, !tbaa !50
  %135 = icmp eq i16 %134, 1
  %136 = insertelement <2 x float> poison, float %133, i64 0
  %137 = shufflevector <2 x float> %136, <2 x float> poison, <2 x i32> zeroinitializer
  br i1 %135, label %138, label %151

138:                                              ; preds = %132
  %139 = fcmp ogt float %111, 0x3F50624DE0000000
  %140 = load float, ptr %71, align 4, !tbaa !120
  %141 = select i1 %139, float %111, float 1.000000e+00
  %142 = fdiv float %140, %141
  %143 = load <2 x float>, ptr %73, align 4, !tbaa !77
  %144 = insertelement <2 x i1> poison, i1 %139, i64 0
  %145 = shufflevector <2 x i1> %144, <2 x i1> poison, <2 x i32> zeroinitializer
  %146 = insertelement <2 x float> poison, float %111, i64 0
  %147 = shufflevector <2 x float> %146, <2 x float> poison, <2 x i32> zeroinitializer
  %148 = select <2 x i1> %145, <2 x float> %147, <2 x float> <float 1.000000e+00, float 1.000000e+00>
  %149 = fdiv <2 x float> %143, %148
  %150 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 5
  store i32 1, ptr %150, align 4, !tbaa !121
  br label %151

151:                                              ; preds = %132, %138
  %152 = phi float [ %142, %138 ], [ %133, %132 ]
  %153 = phi <2 x float> [ %149, %138 ], [ %137, %132 ]
  %154 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 4
  store float %133, ptr %154, align 8, !tbaa !122
  %155 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 7
  %156 = fadd <2 x float> %153, <float -5.000000e-01, float -5.000000e-01>
  %157 = load <2 x float>, ptr %155, align 4, !tbaa !77
  %158 = insertelement <2 x float> poison, float %117, i64 0
  %159 = shufflevector <2 x float> %158, <2 x float> poison, <2 x i32> zeroinitializer
  %160 = insertelement <2 x float> poison, float %119, i64 0
  %161 = shufflevector <2 x float> %160, <2 x float> poison, <2 x i32> zeroinitializer
  %162 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %156, <2 x float> %159, <2 x float> %161)
  %163 = fadd <2 x float> %162, <float -5.000000e-01, float -5.000000e-01>
  %164 = fmul <2 x float> %157, %163
  store <2 x float> %164, ptr %73, align 4, !tbaa !77
  %165 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 9
  %166 = load float, ptr %165, align 4, !tbaa !123
  %167 = fadd float %152, -5.000000e-01
  %168 = call float @llvm.fmuladd.f32(float %167, float %117, float %119)
  %169 = fadd float %168, -5.000000e-01
  %170 = fmul float %166, %169
  store float %170, ptr %71, align 4, !tbaa !120
  br i1 %125, label %171, label %186

171:                                              ; preds = %151
  %172 = extractelement <2 x float> %164, i64 0
  %173 = fcmp olt float %172, 0.000000e+00
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  store float 0.000000e+00, ptr %73, align 4, !tbaa !124
  br label %175

175:                                              ; preds = %174, %171
  %176 = phi float [ 0.000000e+00, %174 ], [ %172, %171 ]
  %177 = extractelement <2 x float> %164, i64 1
  %178 = fcmp olt float %177, 0.000000e+00
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  store float 0.000000e+00, ptr %72, align 8, !tbaa !125
  br label %180

180:                                              ; preds = %179, %175
  %181 = phi float [ 0.000000e+00, %179 ], [ %177, %175 ]
  %182 = fcmp olt float %170, 0.000000e+00
  %183 = insertelement <2 x float> poison, float %176, i64 0
  %184 = insertelement <2 x float> %183, float %181, i64 1
  br i1 %182, label %185, label %186

185:                                              ; preds = %180
  store float 0.000000e+00, ptr %71, align 4, !tbaa !120
  br label %186

186:                                              ; preds = %180, %185, %151
  %187 = phi float [ %170, %180 ], [ 0.000000e+00, %185 ], [ %170, %151 ]
  %188 = phi <2 x float> [ %184, %180 ], [ %184, %185 ], [ %164, %151 ]
  %189 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 6
  %190 = load float, ptr %189, align 8, !tbaa !126
  %191 = fcmp une float %190, 1.000000e+00
  br i1 %191, label %192, label %202

192:                                              ; preds = %186
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %193 = getelementptr inbounds float, ptr %5, i64 1
  %194 = getelementptr inbounds float, ptr %5, i64 2
  %195 = extractelement <2 x float> %188, i64 0
  %196 = extractelement <2 x float> %188, i64 1
  call void @rgb_to_hsv(float noundef %195, float noundef %196, float noundef %187, ptr noundef nonnull %5, ptr noundef nonnull %193, ptr noundef nonnull %194) #11
  %197 = load float, ptr %189, align 8, !tbaa !126
  %198 = load float, ptr %193, align 4, !tbaa !77
  %199 = fmul float %197, %198
  store float %199, ptr %193, align 4, !tbaa !77
  %200 = load float, ptr %5, align 4, !tbaa !77
  %201 = load float, ptr %194, align 4, !tbaa !77
  call void @hsv_to_rgb(float noundef %200, float noundef %199, float noundef %201, ptr noundef nonnull %73, ptr noundef nonnull %72, ptr noundef nonnull %71) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  br label %202

202:                                              ; preds = %186, %192, %35, %14
  %203 = phi i1 [ false, %14 ], [ %10, %35 ], [ %10, %192 ], [ %10, %186 ]
  %204 = zext i1 %203 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  ret i32 %204
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !127 {
  %3 = load float, ptr %1, align 4, !tbaa !77
  store float %3, ptr %0, align 4, !tbaa !77
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !77
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !77
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !77
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !128 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !77
  %3 = fmul <2 x float> %2, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %3, ptr %0, align 4, !tbaa !77
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !77
  %6 = fmul float %5, 5.000000e-01
  store float %6, ptr %4, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !129 {
  %3 = load float, ptr %1, align 4, !tbaa !77
  %4 = load float, ptr %0, align 4, !tbaa !77
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !77
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !77
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !77
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !77
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !77
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !77
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #7

; Function Attrs: optsize
declare float @BLI_voxel_sample_nearest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BLI_voxel_sample_trilinear(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BLI_voxel_sample_triquadratic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BLI_voxel_sample_tricubic(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: optsize
declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_float_from_rect(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @vd_resol_size(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !130 {
  %2 = load i32, ptr %0, align 8, !tbaa !60
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [3 x i32], ptr %0, i64 0, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !60
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, %3
  %8 = getelementptr inbounds [3 x i32], ptr %0, i64 0, i64 2
  %9 = load i32, ptr %8, align 8, !tbaa !60
  %10 = sext i32 %9 to i64
  %11 = mul i64 %7, %10
  ret i64 %11
}

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_free_anim_ibufs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_vd_res_ok(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !131 {
  %2 = load i32, ptr %0, align 8, !tbaa !60
  %3 = add i32 %2, -1
  %4 = icmp ult i32 %3, 100000
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds [3 x i32], ptr %0, i64 0, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !60
  %8 = add i32 %7, -1
  %9 = icmp ult i32 %8, 100000
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = getelementptr inbounds [3 x i32], ptr %0, i64 0, i64 2
  %12 = load i32, ptr %11, align 8, !tbaa !60
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = icmp ult i32 %12, 100001
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %10, %14, %5, %1
  %18 = phi i8 [ 0, %5 ], [ 0, %1 ], [ 0, %10 ], [ %16, %14 ]
  ret i8 %18
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }

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
!34 = !{!35, !37, i64 392}
!35 = !{!"Tex", !36, i64 0, !37, i64 120, !42, i64 128, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !41, i64 252, !41, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !43, i64 296, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !38, i64 408, !38, i64 409}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"float", !38, i64 0}
!43 = !{!"ImageUser", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!44 = !{!45, !40, i64 18}
!45 = !{!"VoxelData", !38, i64 0, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !41, i64 28, !37, i64 32, !42, i64 40, !41, i64 44, !38, i64 48, !37, i64 1072, !41, i64 1080, !41, i64 1084}
!46 = !{!45, !41, i64 1080}
!47 = !{!45, !41, i64 1084}
!48 = !{!45, !37, i64 1072}
!49 = !{!37, !37, i64 0}
!50 = !{!45, !40, i64 24}
!51 = !{!45, !41, i64 44}
!52 = !{!45, !40, i64 16}
!53 = !{!54, !37, i64 0}
!54 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !55, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!55 = !{!"ListBase", !37, i64 0, !37, i64 8}
!56 = !{i32 0, i32 2}
!57 = !{!"voxeldata.c:load_frame_image_sequence"}
!58 = !{!35, !37, i64 352}
!59 = !{i64 0, i64 8, !49, i64 8, i64 4, !60, i64 12, i64 4, !60, i64 16, i64 4, !60, i64 20, i64 4, !60, i64 24, i64 1, !61, i64 25, i64 1, !61, i64 26, i64 1, !61, i64 27, i64 1, !61, i64 28, i64 2, !62, i64 30, i64 2, !62, i64 32, i64 2, !62, i64 34, i64 2, !62, i64 36, i64 4, !60}
!60 = !{!41, !41, i64 0}
!61 = !{!38, !38, i64 0}
!62 = !{!40, !40, i64 0}
!63 = !{!43, !41, i64 12}
!64 = !{!65, !40, i64 1248}
!65 = !{!"Image", !36, i64 0, !38, i64 120, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !38, i64 1176, !40, i64 1240, !40, i64 1242, !40, i64 1244, !40, i64 1246, !40, i64 1248, !40, i64 1250, !41, i64 1252, !40, i64 1256, !40, i64 1258, !40, i64 1260, !40, i64 1262, !40, i64 1264, !40, i64 1266, !41, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !42, i64 1296, !41, i64 1300, !40, i64 1304, !40, i64 1306, !41, i64 1308, !41, i64 1312, !38, i64 1316, !38, i64 1317, !40, i64 1318, !38, i64 1320, !42, i64 1336, !42, i64 1340, !66, i64 1344, !38, i64 1408, !38, i64 1409, !38, i64 1416}
!66 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!67 = !{!43, !41, i64 16}
!68 = !{!43, !41, i64 8}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!72, !37, i64 48}
!72 = !{!"ImBuf", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !37, i64 40, !37, i64 48, !38, i64 56, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !37, i64 88, !37, i64 96, !37, i64 104, !42, i64 112, !38, i64 120, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !37, i64 296, !37, i64 304, !41, i64 312, !38, i64 316, !38, i64 1340, !37, i64 2368, !41, i64 2376, !37, i64 2384, !41, i64 2392, !41, i64 2396, !37, i64 2400, !37, i64 2408, !37, i64 2416, !37, i64 2424, !41, i64 2432, !73, i64 2436, !74, i64 2456}
!73 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!74 = !{!"DDSData", !41, i64 0, !41, i64 4, !37, i64 8, !41, i64 16}
!75 = !{!72, !41, i64 16}
!76 = !{!72, !41, i64 20}
!77 = !{!42, !42, i64 0}
!78 = distinct !{!78, !70}
!79 = distinct !{!79, !70}
!80 = distinct !{!80, !70}
!81 = !{!"voxeldata.c:init_frame_smoke"}
!82 = !{!"voxeldata.c:read_voxeldata_header"}
!83 = !{!84, !41, i64 0}
!84 = !{!"VoxelDataHeader", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!85 = !{!84, !41, i64 4}
!86 = !{!84, !41, i64 8}
!87 = !{!"voxeldata.c:load_frame_blendervoxel"}
!88 = !{i8 0, i8 2}
!89 = !{!"voxeldata.c:load_frame_raw8"}
!90 = distinct !{!90, !70}
!91 = !{!92, !37, i64 6128}
!92 = !{!"Render", !37, i64 0, !37, i64 8, !38, i64 16, !41, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !38, i64 104, !37, i64 112, !37, i64 120, !55, i64 128, !41, i64 144, !41, i64 148, !41, i64 152, !73, i64 156, !93, i64 172, !42, i64 188, !42, i64 192, !42, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !38, i64 240, !38, i64 252, !38, i64 288, !38, i64 352, !38, i64 416, !38, i64 480, !42, i64 544, !42, i64 548, !37, i64 552, !38, i64 560, !38, i64 816, !37, i64 1072, !38, i64 1080, !37, i64 1088, !37, i64 1096, !94, i64 1104, !101, i64 5088, !37, i64 5616, !41, i64 5624, !41, i64 5628, !55, i64 5632, !37, i64 5648, !37, i64 5656, !37, i64 5664, !37, i64 5672, !42, i64 5680, !37, i64 5688, !55, i64 5696, !42, i64 5712, !42, i64 5716, !41, i64 5720, !41, i64 5724, !41, i64 5728, !41, i64 5732, !41, i64 5736, !37, i64 5744, !55, i64 5752, !55, i64 5768, !55, i64 5784, !37, i64 5800, !55, i64 5808, !41, i64 5824, !37, i64 5832, !37, i64 5840, !37, i64 5848, !37, i64 5856, !37, i64 5864, !55, i64 5872, !37, i64 5888, !55, i64 5896, !55, i64 5912, !37, i64 5928, !37, i64 5936, !37, i64 5944, !37, i64 5952, !37, i64 5960, !37, i64 5968, !37, i64 5976, !37, i64 5984, !37, i64 5992, !37, i64 6000, !37, i64 6008, !37, i64 6016, !37, i64 6024, !37, i64 6032, !37, i64 6040, !37, i64 6048, !37, i64 6056, !102, i64 6064, !37, i64 6216, !37, i64 6224, !37, i64 6232}
!93 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!94 = !{!"RenderData", !95, i64 0, !37, i64 248, !37, i64 256, !98, i64 264, !99, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !42, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !93, i64 544, !93, i64 560, !73, i64 576, !55, i64 592, !40, i64 608, !40, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !41, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !42, i64 660, !42, i64 664, !40, i64 668, !40, i64 670, !42, i64 672, !42, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !42, i64 2528, !42, i64 2532, !40, i64 2536, !40, i64 2538, !42, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !42, i64 2560, !42, i64 2564, !37, i64 2568, !41, i64 2576, !42, i64 2580, !38, i64 2584, !100, i64 2616, !41, i64 3976, !41, i64 3980}
!95 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !42, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !96, i64 24, !97, i64 184}
!96 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !42, i64 136, !42, i64 140, !37, i64 144, !37, i64 152}
!97 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!98 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!99 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !42, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!100 = !{!"BakeData", !95, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !42, i64 1280, !42, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!101 = !{!"World", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252, !42, i64 256, !42, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !37, i64 336, !37, i64 344, !37, i64 352, !38, i64 360, !40, i64 504, !40, i64 506, !38, i64 508, !37, i64 512, !37, i64 520}
!102 = !{!"RenderStats", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !38, i64 40, !103, i64 48, !103, i64 56, !37, i64 64, !37, i64 72, !38, i64 80, !42, i64 144, !42, i64 148}
!103 = !{!"double", !38, i64 0}
!104 = !{!92, !37, i64 6000}
!105 = !{!92, !37, i64 6008}
!106 = !{!92, !37, i64 1088}
!107 = !{!35, !41, i64 100}
!108 = !{!35, !40, i64 232}
!109 = !{!92, !41, i64 1504}
!110 = distinct !{!110, !70}
!111 = !{!112, !42, i64 0}
!112 = !{!"TexResult", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !41, i64 20, !37, i64 24}
!113 = !{!45, !40, i64 20}
!114 = !{!45, !41, i64 12}
!115 = distinct !{!115, !70}
!116 = !{!45, !42, i64 40}
!117 = !{!35, !42, i64 140}
!118 = !{!35, !42, i64 136}
!119 = !{!35, !40, i64 230}
!120 = !{!112, !42, i64 12}
!121 = !{!112, !41, i64 20}
!122 = !{!112, !42, i64 16}
!123 = !{!35, !42, i64 156}
!124 = !{!112, !42, i64 4}
!125 = !{!112, !42, i64 8}
!126 = !{!35, !42, i64 144}
!127 = !{!"voxeldata.c:copy_v3_v3"}
!128 = !{!"voxeldata.c:mul_v3_fl"}
!129 = !{!"voxeldata.c:add_v3_v3"}
!130 = !{!"voxeldata.c:vd_resol_size"}
!131 = !{!"voxeldata.c:is_vd_res_ok"}
