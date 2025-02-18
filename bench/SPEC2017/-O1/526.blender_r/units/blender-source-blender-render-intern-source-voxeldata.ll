; ModuleID = 'blender/source/blender/render/intern/source/voxeldata.c'
source_filename = "blender/source/blender/render/intern/source/voxeldata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.VoxelData = type { [3 x i32], i32, i16, i16, i16, i16, i16, i16, i32, ptr, float, i32, [1024 x i8], ptr, i32, i32 }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderSlot = type { [64 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
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
@MEM_mapallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"voxel dataset\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"voxel data header\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"temporary voxel file reading storage\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @cache_voxeldata(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ImageUser, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #6
  %7 = getelementptr inbounds %struct.VoxelData, ptr %6, i64 0, i32 3
  %8 = load i16, ptr %7, align 2, !tbaa !44
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.VoxelData, ptr %6, i64 0, i32 14
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %2
  %16 = getelementptr inbounds %struct.VoxelData, ptr %6, i64 0, i32 15
  %17 = load i32, ptr %16, align 4, !tbaa !47
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %309

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.VoxelData, ptr %6, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  tail call void %24(ptr noundef nonnull %21) #6
  store ptr null, ptr %20, align 8, !tbaa !48
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.VoxelData, ptr %6, i64 0, i32 6
  store i16 0, ptr %26, align 8, !tbaa !50
  %27 = load i16, ptr %7, align 2, !tbaa !44
  %28 = and i16 %27, 1
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.VoxelData, ptr %6, i64 0, i32 11
  %32 = load i32, ptr %31, align 4, !tbaa !51
  br label %33

33:                                               ; preds = %25, %30
  %34 = phi i32 [ %32, %30 ], [ %1, %25 ]
  %35 = getelementptr inbounds %struct.VoxelData, ptr %6, i64 0, i32 12
  %36 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %35, i64 noundef 1024) #6
  %37 = getelementptr inbounds %struct.VoxelData, ptr %6, i64 0, i32 2
  %38 = load i16, ptr %37, align 8, !tbaa !52
  switch i16 %38, label %309 [
    i16 3, label %39
    i16 4, label %163
    i16 0, label %164
    i16 1, label %232
  ]

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 54
  %41 = load ptr, ptr %40, align 8, !tbaa !53
  %42 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 51
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %42, i64 40, i1 false), !tbaa.struct !54
  %43 = icmp eq ptr %41, null
  br i1 %43, label %162, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !58
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %162, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.Image, ptr %41, i64 0, i32 11
  store i16 2, ptr %49, align 8, !tbaa !59
  %50 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !62
  %52 = add nsw i32 %51, 1
  %53 = getelementptr inbounds %struct.ImageUser, ptr %3, i64 0, i32 1
  store i32 %52, ptr %53, align 8, !tbaa !63
  %54 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %41, ptr noundef nonnull %3, ptr noundef null) #6
  %55 = icmp eq ptr %54, null
  %56 = load i32, ptr %53, align 8
  %57 = load i32, ptr %45, align 4
  %58 = icmp slt i32 %56, %57
  %59 = select i1 %55, i1 %58, i1 false
  br i1 %59, label %60, label %69

60:                                               ; preds = %48, %60
  %61 = phi i32 [ %65, %60 ], [ %56, %48 ]
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %53, align 8, !tbaa !63
  %63 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %41, ptr noundef nonnull %3, ptr noundef null) #6
  %64 = icmp eq ptr %63, null
  %65 = load i32, ptr %53, align 8
  %66 = load i32, ptr %45, align 4
  %67 = icmp slt i32 %65, %66
  %68 = select i1 %64, i1 %67, i1 false
  br i1 %68, label %60, label %69, !llvm.loop !64

69:                                               ; preds = %60, %48
  %70 = phi ptr [ %54, %48 ], [ %63, %60 ]
  %71 = phi i1 [ %55, %48 ], [ %64, %60 ]
  br i1 %71, label %162, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 9
  %74 = load ptr, ptr %73, align 8, !tbaa !67
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  call void @IMB_float_from_rect(ptr noundef nonnull %70) #6
  br label %77

77:                                               ; preds = %76, %72
  %78 = load i16, ptr %7, align 2, !tbaa !44
  %79 = or i16 %78, 1
  store i16 %79, ptr %7, align 2, !tbaa !44
  %80 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 2
  %81 = load i32, ptr %80, align 8, !tbaa !71
  store i32 %81, ptr %6, align 8, !tbaa !55
  %82 = getelementptr inbounds %struct.ImBuf, ptr %70, i64 0, i32 3
  %83 = load i32, ptr %82, align 4, !tbaa !72
  %84 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 1
  store i32 %83, ptr %84, align 4, !tbaa !55
  %85 = load i32, ptr %45, align 4, !tbaa !58
  %86 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 2
  store i32 %85, ptr %86, align 8, !tbaa !55
  %87 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !49
  %88 = sext i32 %81 to i64
  %89 = sext i32 %83 to i64
  %90 = sext i32 %85 to i64
  %91 = shl nsw i64 %88, 2
  %92 = mul i64 %91, %89
  %93 = mul i64 %92, %90
  %94 = call ptr %87(i64 noundef %93, ptr noundef nonnull @.str.2) #6
  store ptr %94, ptr %20, align 8, !tbaa !48
  %95 = load i32, ptr %45, align 4, !tbaa !58
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %159

97:                                               ; preds = %77, %154
  %98 = phi i32 [ %156, %154 ], [ 0, %77 ]
  %99 = phi ptr [ %112, %154 ], [ %70, %77 ]
  %100 = icmp eq i32 %98, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %97
  %102 = load i32, ptr %53, align 8, !tbaa !63
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %53, align 8, !tbaa !63
  call void @BKE_image_release_ibuf(ptr noundef nonnull %41, ptr noundef %99, ptr noundef null) #6
  %104 = call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %41, ptr noundef nonnull %3, ptr noundef null) #6
  %105 = icmp eq ptr %104, null
  br i1 %105, label %159, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.ImBuf, ptr %104, i64 0, i32 9
  %108 = load ptr, ptr %107, align 8, !tbaa !67
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  call void @IMB_float_from_rect(ptr noundef nonnull %104) #6
  br label %111

111:                                              ; preds = %110, %106, %97
  %112 = phi ptr [ %104, %106 ], [ %104, %110 ], [ %99, %97 ]
  %113 = getelementptr inbounds %struct.ImBuf, ptr %112, i64 0, i32 3
  %114 = load i32, ptr %113, align 4, !tbaa !72
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %154

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.ImBuf, ptr %112, i64 0, i32 9
  %118 = load ptr, ptr %117, align 8, !tbaa !67
  %119 = getelementptr inbounds %struct.ImBuf, ptr %112, i64 0, i32 2
  %120 = load i32, ptr %119, align 8, !tbaa !71
  %121 = icmp sgt i32 %120, 0
  %122 = zext nneg i32 %120 to i64
  br label %123

123:                                              ; preds = %116, %150
  %124 = phi ptr [ %118, %116 ], [ %151, %150 ]
  %125 = phi i32 [ 0, %116 ], [ %152, %150 ]
  br i1 %121, label %126, label %150

126:                                              ; preds = %123
  %127 = load ptr, ptr %20, align 8, !tbaa !48
  %128 = load i32, ptr %84, align 4, !tbaa !55
  %129 = mul nsw i32 %128, %98
  %130 = load i32, ptr %6, align 8, !tbaa !55
  %131 = add i32 %129, %125
  %132 = mul i32 %131, %130
  %133 = sext i32 %132 to i64
  %134 = getelementptr float, ptr %127, i64 %133
  br label %135

135:                                              ; preds = %126, %135
  %136 = phi i64 [ 0, %126 ], [ %148, %135 ]
  %137 = phi ptr [ %124, %126 ], [ %147, %135 ]
  %138 = load float, ptr %137, align 4, !tbaa !73
  %139 = getelementptr inbounds float, ptr %137, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !73
  %141 = fadd float %138, %140
  %142 = getelementptr inbounds float, ptr %137, i64 2
  %143 = load float, ptr %142, align 4, !tbaa !73
  %144 = fadd float %141, %143
  %145 = fdiv float %144, 3.000000e+00
  %146 = getelementptr float, ptr %134, i64 %136
  store float %145, ptr %146, align 4, !tbaa !73
  %147 = getelementptr inbounds float, ptr %137, i64 4
  %148 = add nuw nsw i64 %136, 1
  %149 = icmp eq i64 %148, %122
  br i1 %149, label %150, label %135, !llvm.loop !74

150:                                              ; preds = %135, %123
  %151 = phi ptr [ %124, %123 ], [ %147, %135 ]
  %152 = add nuw nsw i32 %125, 1
  %153 = icmp eq i32 %152, %114
  br i1 %153, label %154, label %123, !llvm.loop !75

154:                                              ; preds = %150, %111
  %155 = load i32, ptr %53, align 8, !tbaa !63
  call void @BKE_image_free_anim_ibufs(ptr noundef nonnull %41, i32 noundef %155) #6
  %156 = add nuw nsw i32 %98, 1
  %157 = load i32, ptr %45, align 4, !tbaa !58
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %97, label %159, !llvm.loop !76

159:                                              ; preds = %154, %101, %77
  %160 = phi ptr [ %70, %77 ], [ %112, %154 ], [ null, %101 ]
  call void @BKE_image_release_ibuf(ptr noundef nonnull %41, ptr noundef %160, ptr noundef null) #6
  %161 = getelementptr inbounds %struct.VoxelData, ptr %6, i64 0, i32 15
  store i32 1, ptr %161, align 4, !tbaa !47
  br label %162

162:                                              ; preds = %39, %44, %69, %159
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  br label %309

163:                                              ; preds = %33
  store ptr null, ptr %20, align 8, !tbaa !48
  br label %309

164:                                              ; preds = %33
  %165 = load ptr, ptr @G, align 8, !tbaa !77
  %166 = getelementptr inbounds %struct.Main, ptr %165, i64 0, i32 2
  %167 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %166) #6
  %168 = call i32 @BLI_exists(ptr noundef nonnull %4) #6
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %309, label %170

170:                                              ; preds = %164
  %171 = call ptr @BLI_fopen(ptr noundef nonnull %4, ptr noundef nonnull @.str) #6
  %172 = icmp eq ptr %171, null
  br i1 %172, label %309, label %173

173:                                              ; preds = %170
  %174 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %175 = call ptr %174(i64 noundef 16, ptr noundef nonnull @.str.3) #6
  call void @rewind(ptr noundef nonnull %171)
  %176 = call i64 @fread(ptr noundef %175, i64 noundef 16, i64 noundef 1, ptr noundef nonnull %171)
  %177 = icmp eq i64 %176, 1
  br i1 %177, label %180, label %178

178:                                              ; preds = %173
  %179 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %179(ptr noundef %175) #6
  br label %189

180:                                              ; preds = %173
  %181 = load i32, ptr %175, align 4, !tbaa !80
  store i32 %181, ptr %6, align 8, !tbaa !55
  %182 = getelementptr inbounds %struct.VoxelDataHeader, ptr %175, i64 0, i32 1
  %183 = load i32, ptr %182, align 4, !tbaa !82
  %184 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 1
  store i32 %183, ptr %184, align 4, !tbaa !55
  %185 = getelementptr inbounds %struct.VoxelDataHeader, ptr %175, i64 0, i32 2
  %186 = load i32, ptr %185, align 4, !tbaa !83
  %187 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 2
  store i32 %186, ptr %187, align 8, !tbaa !55
  %188 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %188(ptr noundef nonnull %175) #6
  br label %189

189:                                              ; preds = %178, %180
  br i1 %177, label %190, label %230

190:                                              ; preds = %189
  %191 = add nsw i32 %34, -1
  %192 = load i32, ptr %6, align 8, !tbaa !55
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 1
  %195 = load i32, ptr %194, align 4, !tbaa !55
  %196 = sext i32 %195 to i64
  %197 = mul nsw i64 %196, %193
  %198 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 2
  %199 = load i32, ptr %198, align 8, !tbaa !55
  %200 = sext i32 %199 to i64
  %201 = mul i64 %197, %200
  %202 = add i32 %192, -100001
  %203 = icmp ult i32 %202, -100000
  %204 = add i32 %195, -100001
  %205 = icmp ult i32 %204, -100000
  %206 = select i1 %203, i1 true, i1 %205
  %207 = icmp slt i32 %199, 1
  %208 = select i1 %206, i1 true, i1 %207
  %209 = icmp sgt i32 %199, 100000
  %210 = select i1 %208, i1 true, i1 %209
  br i1 %210, label %230, label %211

211:                                              ; preds = %190
  %212 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !49
  %213 = shl i64 %201, 2
  %214 = call ptr %212(i64 noundef %213, ptr noundef nonnull @.str.2) #6
  store ptr %214, ptr %20, align 8, !tbaa !48
  %215 = icmp eq ptr %214, null
  br i1 %215, label %230, label %216

216:                                              ; preds = %211
  %217 = sext i32 %191 to i64
  %218 = shl nsw i64 %217, 2
  %219 = mul i64 %218, %201
  %220 = add i64 %219, 16
  %221 = call i32 @fseek(ptr noundef nonnull %171, i64 noundef %220, i32 noundef 0)
  %222 = icmp eq i32 %221, -1
  br i1 %222, label %230, label %223

223:                                              ; preds = %216
  %224 = load ptr, ptr %20, align 8, !tbaa !48
  %225 = call i64 @fread(ptr noundef %224, i64 noundef 4, i64 noundef %201, ptr noundef nonnull %171)
  %226 = icmp eq i64 %225, %201
  br i1 %226, label %227, label %230

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.VoxelData, ptr %6, i64 0, i32 14
  store i32 %191, ptr %228, align 8, !tbaa !46
  %229 = getelementptr inbounds %struct.VoxelData, ptr %6, i64 0, i32 15
  store i32 1, ptr %229, align 4, !tbaa !47
  br label %230

230:                                              ; preds = %227, %223, %216, %211, %190, %189
  %231 = call i32 @fclose(ptr noundef nonnull %171)
  br label %309

232:                                              ; preds = %33
  %233 = load ptr, ptr @G, align 8, !tbaa !77
  %234 = getelementptr inbounds %struct.Main, ptr %233, i64 0, i32 2
  %235 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %234) #6
  %236 = call i32 @BLI_exists(ptr noundef nonnull %4) #6
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %309, label %238

238:                                              ; preds = %232
  %239 = call ptr @BLI_fopen(ptr noundef nonnull %4, ptr noundef nonnull @.str) #6
  %240 = icmp eq ptr %239, null
  br i1 %240, label %309, label %241

241:                                              ; preds = %238
  %242 = load i32, ptr %6, align 8, !tbaa !55
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 1
  %245 = load i32, ptr %244, align 4, !tbaa !55
  %246 = sext i32 %245 to i64
  %247 = mul nsw i64 %246, %243
  %248 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 2
  %249 = load i32, ptr %248, align 8, !tbaa !55
  %250 = sext i32 %249 to i64
  %251 = mul i64 %247, %250
  %252 = add i32 %242, -100001
  %253 = icmp ult i32 %252, -100000
  %254 = add i32 %245, -100001
  %255 = icmp ult i32 %254, -100000
  %256 = select i1 %253, i1 true, i1 %255
  %257 = icmp slt i32 %249, 1
  %258 = select i1 %256, i1 true, i1 %257
  %259 = icmp sgt i32 %249, 100000
  %260 = select i1 %258, i1 true, i1 %259
  br i1 %260, label %307, label %261

261:                                              ; preds = %241
  %262 = load ptr, ptr @MEM_mapallocN, align 8, !tbaa !49
  %263 = shl i64 %251, 2
  %264 = call ptr %262(i64 noundef %263, ptr noundef nonnull @.str.2) #6
  store ptr %264, ptr %20, align 8, !tbaa !48
  %265 = icmp eq ptr %264, null
  br i1 %265, label %307, label %266

266:                                              ; preds = %261
  %267 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !49
  %268 = call ptr %267(i64 noundef %251, ptr noundef nonnull @.str.4) #6
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %273

270:                                              ; preds = %266
  %271 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %272 = load ptr, ptr %20, align 8, !tbaa !48
  call void %271(ptr noundef %272) #6
  store ptr null, ptr %20, align 8, !tbaa !48
  br label %307

273:                                              ; preds = %266
  %274 = add nsw i32 %34, -1
  %275 = sext i32 %274 to i64
  %276 = mul i64 %251, %275
  %277 = call i32 @fseek(ptr noundef nonnull %239, i64 noundef %276, i32 noundef 0)
  %278 = icmp eq i32 %277, -1
  br i1 %278, label %279, label %283

279:                                              ; preds = %273
  %280 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %280(ptr noundef nonnull %268) #6
  %281 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %282 = load ptr, ptr %20, align 8, !tbaa !48
  call void %281(ptr noundef %282) #6
  store ptr null, ptr %20, align 8, !tbaa !48
  br label %307

283:                                              ; preds = %273
  %284 = call i64 @fread(ptr noundef nonnull %268, i64 noundef 1, i64 noundef %251, ptr noundef nonnull %239)
  %285 = icmp eq i64 %284, %251
  br i1 %285, label %286, label %290

286:                                              ; preds = %283
  %287 = icmp eq i64 %251, 0
  br i1 %287, label %303, label %288

288:                                              ; preds = %286
  %289 = load ptr, ptr %20, align 8, !tbaa !48
  br label %294

290:                                              ; preds = %283
  %291 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %291(ptr noundef nonnull %268) #6
  %292 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  %293 = load ptr, ptr %20, align 8, !tbaa !48
  call void %292(ptr noundef %293) #6
  store ptr null, ptr %20, align 8, !tbaa !48
  br label %307

294:                                              ; preds = %288, %294
  %295 = phi i64 [ 0, %288 ], [ %301, %294 ]
  %296 = getelementptr inbounds i8, ptr %268, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !56
  %298 = uitofp i8 %297 to float
  %299 = fdiv float %298, 2.550000e+02
  %300 = getelementptr inbounds float, ptr %289, i64 %295
  store float %299, ptr %300, align 4, !tbaa !73
  %301 = add nuw i64 %295, 1
  %302 = icmp eq i64 %301, %251
  br i1 %302, label %303, label %294, !llvm.loop !84

303:                                              ; preds = %294, %286
  %304 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %304(ptr noundef nonnull %268) #6
  %305 = getelementptr inbounds %struct.VoxelData, ptr %6, i64 0, i32 14
  store i32 %34, ptr %305, align 8, !tbaa !46
  %306 = getelementptr inbounds %struct.VoxelData, ptr %6, i64 0, i32 15
  store i32 1, ptr %306, align 4, !tbaa !47
  br label %307

307:                                              ; preds = %241, %261, %270, %279, %290, %303
  %308 = call i32 @fclose(ptr noundef nonnull %239)
  br label %309

309:                                              ; preds = %33, %238, %232, %170, %164, %15, %307, %230, %163, %162
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_exists(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @make_voxeldata(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98
  %3 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 98, i32 16
  store ptr @.str.1, ptr %3, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 90
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 91
  %7 = load ptr, ptr %6, align 8, !tbaa !99
  tail call void %5(ptr noundef %7, ptr noundef nonnull %2) #6
  %8 = getelementptr inbounds %struct.Render, ptr %0, i64 0, i32 43
  %9 = load ptr, ptr %8, align 8, !tbaa !100
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
  %18 = load i32, ptr %17, align 4, !tbaa !101
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Tex, ptr %16, i64 0, i32 32
  %22 = load i16, ptr %21, align 8, !tbaa !102
  %23 = icmp eq i16 %22, 15
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, ptr %14, align 8, !tbaa !103
  tail call void @cache_voxeldata(ptr noundef nonnull %16, i32 noundef %25)
  br label %26

26:                                               ; preds = %15, %20, %24
  %27 = load ptr, ptr %16, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15, !llvm.loop !104

29:                                               ; preds = %26, %1
  store ptr null, ptr %3, align 8, !tbaa !85
  %30 = load ptr, ptr %4, align 8, !tbaa !98
  %31 = load ptr, ptr %6, align 8, !tbaa !99
  tail call void %30(ptr noundef %31, ptr noundef nonnull %2) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @voxeldatatex(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 59
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  %8 = getelementptr inbounds %struct.VoxelData, ptr %7, i64 0, i32 6
  %9 = load i16, ptr %8, align 8, !tbaa !50
  %10 = icmp eq i16 %9, 1
  %11 = getelementptr inbounds %struct.VoxelData, ptr %7, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store float 0.000000e+00, ptr %2, align 8, !tbaa !105
  br label %207

15:                                               ; preds = %3
  %16 = load float, ptr %1, align 4, !tbaa !73
  store float %16, ptr %4, align 4, !tbaa !73
  %17 = getelementptr inbounds float, ptr %1, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !73
  %19 = getelementptr inbounds float, ptr %4, i64 1
  store float %18, ptr %19, align 4, !tbaa !73
  %20 = getelementptr inbounds float, ptr %1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !73
  %22 = getelementptr inbounds float, ptr %4, i64 2
  store float %21, ptr %22, align 4, !tbaa !73
  %23 = fmul float %16, 5.000000e-01
  store float %23, ptr %4, align 4, !tbaa !73
  %24 = fmul float %18, 5.000000e-01
  store float %24, ptr %19, align 4, !tbaa !73
  %25 = fmul float %21, 5.000000e-01
  store float %25, ptr %22, align 4, !tbaa !73
  %26 = fadd float %23, 5.000000e-01
  store float %26, ptr %4, align 4, !tbaa !73
  %27 = fadd float %24, 5.000000e-01
  store float %27, ptr %19, align 4, !tbaa !73
  %28 = fadd float %25, 5.000000e-01
  store float %28, ptr %22, align 4, !tbaa !73
  %29 = getelementptr inbounds %struct.VoxelData, ptr %7, i64 0, i32 4
  %30 = load i16, ptr %29, align 4, !tbaa !107
  switch i16 %30, label %69 [
    i16 2, label %31
    i16 3, label %44
    i16 1, label %51
  ]

31:                                               ; preds = %15
  %32 = fcmp olt float %26, 0.000000e+00
  %33 = fcmp ogt float %26, 1.000000e+00
  %34 = or i1 %32, %33
  %35 = fcmp olt float %27, 0.000000e+00
  %36 = select i1 %34, i1 true, i1 %35
  %37 = fcmp ogt float %27, 1.000000e+00
  %38 = select i1 %36, i1 true, i1 %37
  %39 = fcmp olt float %28, 0.000000e+00
  %40 = select i1 %38, i1 true, i1 %39
  %41 = fcmp ogt float %28, 1.000000e+00
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %31
  store float 0.000000e+00, ptr %2, align 8, !tbaa !105
  br label %207

44:                                               ; preds = %15
  %45 = tail call float @llvm.floor.f32(float %26)
  %46 = fsub float %26, %45
  store float %46, ptr %4, align 4, !tbaa !73
  %47 = tail call float @llvm.floor.f32(float %27)
  %48 = fsub float %27, %47
  store float %48, ptr %19, align 4, !tbaa !73
  %49 = tail call float @llvm.floor.f32(float %28)
  %50 = fsub float %28, %49
  br label %67

51:                                               ; preds = %15
  %52 = fcmp olt float %26, 0.000000e+00
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  store float 0.000000e+00, ptr %4, align 4, !tbaa !73
  br label %57

54:                                               ; preds = %51
  %55 = fcmp ogt float %26, 1.000000e+00
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  store float 1.000000e+00, ptr %4, align 4, !tbaa !73
  br label %57

57:                                               ; preds = %54, %56, %53
  %58 = fcmp olt float %27, 0.000000e+00
  br i1 %58, label %61, label %59

59:                                               ; preds = %57
  %60 = fcmp ogt float %27, 1.000000e+00
  br i1 %60, label %61, label %63

61:                                               ; preds = %59, %57
  %62 = phi float [ 0.000000e+00, %57 ], [ 1.000000e+00, %59 ]
  store float %62, ptr %19, align 4, !tbaa !73
  br label %63

63:                                               ; preds = %61, %59
  %64 = fcmp olt float %28, 0.000000e+00
  br i1 %64, label %67, label %65

65:                                               ; preds = %63
  %66 = fcmp ogt float %28, 1.000000e+00
  br i1 %66, label %67, label %69

67:                                               ; preds = %65, %63, %44
  %68 = phi float [ %50, %44 ], [ 0.000000e+00, %63 ], [ 1.000000e+00, %65 ]
  store float %68, ptr %22, align 4, !tbaa !73
  br label %69

69:                                               ; preds = %67, %65, %31, %15
  %70 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 1
  %71 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 2
  %72 = getelementptr inbounds %struct.VoxelData, ptr %7, i64 0, i32 1
  %73 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 3
  %74 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 2
  %75 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  br label %76

76:                                               ; preds = %69, %108
  %77 = phi i32 [ 0, %69 ], [ %109, %108 ]
  %78 = load ptr, ptr %11, align 8, !tbaa !48
  %79 = load i32, ptr %7, align 8, !tbaa !55
  %80 = mul nsw i32 %79, %77
  %81 = load i32, ptr %70, align 4, !tbaa !55
  %82 = mul nsw i32 %80, %81
  %83 = load i32, ptr %71, align 8, !tbaa !55
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, ptr %78, i64 %85
  %87 = load i16, ptr %8, align 8, !tbaa !50
  %88 = icmp eq i16 %87, 1
  br i1 %88, label %89, label %93

89:                                               ; preds = %76
  switch i32 %77, label %93 [
    i32 0, label %90
    i32 1, label %91
    i32 2, label %92
  ]

90:                                               ; preds = %89
  br label %93

91:                                               ; preds = %89
  br label %93

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %90, %91, %92, %89, %76
  %94 = phi ptr [ %2, %89 ], [ %73, %92 ], [ %74, %91 ], [ %75, %90 ], [ %2, %76 ]
  %95 = load i32, ptr %72, align 4, !tbaa !108
  switch i32 %95, label %108 [
    i32 0, label %96
    i32 1, label %98
    i32 2, label %100
    i32 3, label %102
    i32 4, label %102
  ]

96:                                               ; preds = %93
  %97 = call float @BLI_voxel_sample_nearest(ptr noundef %86, ptr noundef nonnull %7, ptr noundef nonnull %4) #6
  br label %106

98:                                               ; preds = %93
  %99 = call float @BLI_voxel_sample_trilinear(ptr noundef %86, ptr noundef nonnull %7, ptr noundef nonnull %4) #6
  br label %106

100:                                              ; preds = %93
  %101 = call float @BLI_voxel_sample_triquadratic(ptr noundef %86, ptr noundef nonnull %7, ptr noundef nonnull %4) #6
  br label %106

102:                                              ; preds = %93, %93
  %103 = icmp eq i32 %95, 4
  %104 = zext i1 %103 to i32
  %105 = call float @BLI_voxel_sample_tricubic(ptr noundef %86, ptr noundef nonnull %7, ptr noundef nonnull %4, i32 noundef %104) #6
  br label %106

106:                                              ; preds = %96, %98, %100, %102
  %107 = phi float [ %105, %102 ], [ %101, %100 ], [ %99, %98 ], [ %97, %96 ]
  store float %107, ptr %94, align 4, !tbaa !73
  br label %108

108:                                              ; preds = %106, %93
  %109 = add nuw nsw i32 %77, 1
  %110 = icmp ult i32 %77, 3
  %111 = select i1 %10, i1 %110, i1 false
  br i1 %111, label %76, label %112, !llvm.loop !109

112:                                              ; preds = %108
  %113 = load float, ptr %2, align 8, !tbaa !105
  %114 = getelementptr inbounds %struct.VoxelData, ptr %7, i64 0, i32 10
  %115 = load float, ptr %114, align 8, !tbaa !110
  %116 = fmul float %113, %115
  store float %116, ptr %2, align 8, !tbaa !105
  %117 = fadd float %116, -5.000000e-01
  %118 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %119 = load float, ptr %118, align 4, !tbaa !111
  %120 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %121 = load float, ptr %120, align 8, !tbaa !112
  %122 = call float @llvm.fmuladd.f32(float %117, float %119, float %121)
  %123 = fadd float %122, -5.000000e-01
  store float %123, ptr %2, align 8, !tbaa !105
  %124 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %125 = load i16, ptr %124, align 2, !tbaa !113
  %126 = and i16 %125, 1024
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %112
  %129 = fcmp olt float %123, 0.000000e+00
  br i1 %129, label %132, label %130

130:                                              ; preds = %128
  %131 = fcmp ogt float %123, 1.000000e+00
  br i1 %131, label %132, label %134

132:                                              ; preds = %130, %128
  %133 = phi float [ 0.000000e+00, %128 ], [ 1.000000e+00, %130 ]
  store float %133, ptr %2, align 8, !tbaa !105
  br label %134

134:                                              ; preds = %132, %130, %112
  %135 = load i16, ptr %8, align 8, !tbaa !50
  %136 = icmp eq i16 %135, 1
  br i1 %136, label %137, label %151

137:                                              ; preds = %134
  %138 = fcmp ogt float %113, 0x3F50624DE0000000
  br i1 %138, label %139, label %149

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  %141 = load float, ptr %140, align 4, !tbaa !114
  %142 = fdiv float %141, %113
  store float %142, ptr %140, align 4, !tbaa !114
  %143 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 2
  %144 = load float, ptr %143, align 8, !tbaa !115
  %145 = fdiv float %144, %113
  store float %145, ptr %143, align 8, !tbaa !115
  %146 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 3
  %147 = load float, ptr %146, align 4, !tbaa !116
  %148 = fdiv float %147, %113
  store float %148, ptr %146, align 4, !tbaa !116
  br label %149

149:                                              ; preds = %139, %137
  %150 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 5
  store i32 1, ptr %150, align 4, !tbaa !117
  br label %156

151:                                              ; preds = %134
  %152 = load float, ptr %2, align 8, !tbaa !105
  %153 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  store float %152, ptr %153, align 4, !tbaa !114
  %154 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 2
  store float %152, ptr %154, align 8, !tbaa !115
  %155 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 3
  store float %152, ptr %155, align 4, !tbaa !116
  br label %156

156:                                              ; preds = %151, %149
  %157 = load float, ptr %2, align 8, !tbaa !105
  %158 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 4
  store float %157, ptr %158, align 8, !tbaa !118
  %159 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 7
  %160 = load float, ptr %159, align 4, !tbaa !119
  %161 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  %162 = load float, ptr %161, align 4, !tbaa !114
  %163 = fadd float %162, -5.000000e-01
  %164 = call float @llvm.fmuladd.f32(float %163, float %119, float %121)
  %165 = fadd float %164, -5.000000e-01
  %166 = fmul float %160, %165
  store float %166, ptr %161, align 4, !tbaa !114
  %167 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 8
  %168 = load float, ptr %167, align 8, !tbaa !120
  %169 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 2
  %170 = load float, ptr %169, align 8, !tbaa !115
  %171 = fadd float %170, -5.000000e-01
  %172 = call float @llvm.fmuladd.f32(float %171, float %119, float %121)
  %173 = fadd float %172, -5.000000e-01
  %174 = fmul float %168, %173
  store float %174, ptr %169, align 8, !tbaa !115
  %175 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 9
  %176 = load float, ptr %175, align 4, !tbaa !121
  %177 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 3
  %178 = load float, ptr %177, align 4, !tbaa !116
  %179 = fadd float %178, -5.000000e-01
  %180 = call float @llvm.fmuladd.f32(float %179, float %119, float %121)
  %181 = fadd float %180, -5.000000e-01
  %182 = fmul float %176, %181
  store float %182, ptr %177, align 4, !tbaa !116
  br i1 %127, label %183, label %192

183:                                              ; preds = %156
  %184 = fcmp olt float %166, 0.000000e+00
  br i1 %184, label %185, label %186

185:                                              ; preds = %183
  store float 0.000000e+00, ptr %161, align 4, !tbaa !114
  br label %186

186:                                              ; preds = %185, %183
  %187 = fcmp olt float %174, 0.000000e+00
  br i1 %187, label %188, label %189

188:                                              ; preds = %186
  store float 0.000000e+00, ptr %169, align 8, !tbaa !115
  br label %189

189:                                              ; preds = %188, %186
  %190 = fcmp olt float %182, 0.000000e+00
  br i1 %190, label %191, label %192

191:                                              ; preds = %189
  store float 0.000000e+00, ptr %177, align 4, !tbaa !116
  br label %192

192:                                              ; preds = %189, %191, %156
  %193 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 6
  %194 = load float, ptr %193, align 8, !tbaa !122
  %195 = fcmp une float %194, 1.000000e+00
  br i1 %195, label %196, label %207

196:                                              ; preds = %192
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  %197 = load float, ptr %161, align 4, !tbaa !114
  %198 = load float, ptr %169, align 8, !tbaa !115
  %199 = load float, ptr %177, align 4, !tbaa !116
  %200 = getelementptr inbounds float, ptr %5, i64 1
  %201 = getelementptr inbounds float, ptr %5, i64 2
  call void @rgb_to_hsv(float noundef %197, float noundef %198, float noundef %199, ptr noundef nonnull %5, ptr noundef nonnull %200, ptr noundef nonnull %201) #6
  %202 = load float, ptr %193, align 8, !tbaa !122
  %203 = load float, ptr %200, align 4, !tbaa !73
  %204 = fmul float %202, %203
  store float %204, ptr %200, align 4, !tbaa !73
  %205 = load float, ptr %5, align 4, !tbaa !73
  %206 = load float, ptr %201, align 4, !tbaa !73
  call void @hsv_to_rgb(float noundef %205, float noundef %204, float noundef %206, ptr noundef nonnull %161, ptr noundef nonnull %169, ptr noundef nonnull %177) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  br label %207

207:                                              ; preds = %192, %196, %43, %14
  %208 = phi i1 [ false, %14 ], [ %10, %43 ], [ %10, %196 ], [ %10, %192 ]
  %209 = zext i1 %208 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  ret i32 %209
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

declare float @BLI_voxel_sample_nearest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BLI_voxel_sample_trilinear(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BLI_voxel_sample_triquadratic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BLI_voxel_sample_tricubic(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IMB_float_from_rect(ptr noundef) local_unnamed_addr #2

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_image_free_anim_ibufs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!53 = !{!35, !37, i64 352}
!54 = !{i64 0, i64 8, !49, i64 8, i64 4, !55, i64 12, i64 4, !55, i64 16, i64 4, !55, i64 20, i64 4, !55, i64 24, i64 1, !56, i64 25, i64 1, !56, i64 26, i64 1, !56, i64 27, i64 1, !56, i64 28, i64 2, !57, i64 30, i64 2, !57, i64 32, i64 2, !57, i64 34, i64 2, !57, i64 36, i64 4, !55}
!55 = !{!41, !41, i64 0}
!56 = !{!38, !38, i64 0}
!57 = !{!40, !40, i64 0}
!58 = !{!43, !41, i64 12}
!59 = !{!60, !40, i64 1248}
!60 = !{!"Image", !36, i64 0, !38, i64 120, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !38, i64 1176, !40, i64 1240, !40, i64 1242, !40, i64 1244, !40, i64 1246, !40, i64 1248, !40, i64 1250, !41, i64 1252, !40, i64 1256, !40, i64 1258, !40, i64 1260, !40, i64 1262, !40, i64 1264, !40, i64 1266, !41, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !42, i64 1296, !41, i64 1300, !40, i64 1304, !40, i64 1306, !41, i64 1308, !41, i64 1312, !38, i64 1316, !38, i64 1317, !40, i64 1318, !38, i64 1320, !42, i64 1336, !42, i64 1340, !61, i64 1344, !38, i64 1408, !38, i64 1409, !38, i64 1416}
!61 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!62 = !{!43, !41, i64 16}
!63 = !{!43, !41, i64 8}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!68, !37, i64 48}
!68 = !{!"ImBuf", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !37, i64 40, !37, i64 48, !38, i64 56, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !37, i64 88, !37, i64 96, !37, i64 104, !42, i64 112, !38, i64 120, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !37, i64 296, !37, i64 304, !41, i64 312, !38, i64 316, !38, i64 1340, !37, i64 2368, !41, i64 2376, !37, i64 2384, !41, i64 2392, !41, i64 2396, !37, i64 2400, !37, i64 2408, !37, i64 2416, !37, i64 2424, !41, i64 2432, !69, i64 2436, !70, i64 2456}
!69 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!70 = !{!"DDSData", !41, i64 0, !41, i64 4, !37, i64 8, !41, i64 16}
!71 = !{!68, !41, i64 16}
!72 = !{!68, !41, i64 20}
!73 = !{!42, !42, i64 0}
!74 = distinct !{!74, !65, !66}
!75 = distinct !{!75, !65, !66}
!76 = distinct !{!76, !65, !66}
!77 = !{!78, !37, i64 0}
!78 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !79, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!79 = !{!"ListBase", !37, i64 0, !37, i64 8}
!80 = !{!81, !41, i64 0}
!81 = !{!"VoxelDataHeader", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!82 = !{!81, !41, i64 4}
!83 = !{!81, !41, i64 8}
!84 = distinct !{!84, !65, !66}
!85 = !{!86, !37, i64 6128}
!86 = !{!"Render", !37, i64 0, !37, i64 8, !38, i64 16, !41, i64 92, !40, i64 96, !40, i64 98, !40, i64 100, !40, i64 102, !38, i64 104, !37, i64 112, !37, i64 120, !79, i64 128, !41, i64 144, !41, i64 148, !41, i64 152, !69, i64 156, !87, i64 172, !42, i64 188, !42, i64 192, !42, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !38, i64 240, !38, i64 252, !38, i64 288, !38, i64 352, !38, i64 416, !38, i64 480, !42, i64 544, !42, i64 548, !37, i64 552, !38, i64 560, !38, i64 816, !37, i64 1072, !38, i64 1080, !37, i64 1088, !37, i64 1096, !88, i64 1104, !95, i64 5088, !37, i64 5616, !41, i64 5624, !41, i64 5628, !79, i64 5632, !37, i64 5648, !37, i64 5656, !37, i64 5664, !37, i64 5672, !42, i64 5680, !37, i64 5688, !79, i64 5696, !42, i64 5712, !42, i64 5716, !41, i64 5720, !41, i64 5724, !41, i64 5728, !41, i64 5732, !41, i64 5736, !37, i64 5744, !79, i64 5752, !79, i64 5768, !79, i64 5784, !37, i64 5800, !79, i64 5808, !41, i64 5824, !37, i64 5832, !37, i64 5840, !37, i64 5848, !37, i64 5856, !37, i64 5864, !79, i64 5872, !37, i64 5888, !79, i64 5896, !79, i64 5912, !37, i64 5928, !37, i64 5936, !37, i64 5944, !37, i64 5952, !37, i64 5960, !37, i64 5968, !37, i64 5976, !37, i64 5984, !37, i64 5992, !37, i64 6000, !37, i64 6008, !37, i64 6016, !37, i64 6024, !37, i64 6032, !37, i64 6040, !37, i64 6048, !37, i64 6056, !96, i64 6064, !37, i64 6216, !37, i64 6224, !37, i64 6232}
!87 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!88 = !{!"RenderData", !89, i64 0, !37, i64 248, !37, i64 256, !92, i64 264, !93, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !42, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !87, i64 544, !87, i64 560, !69, i64 576, !79, i64 592, !40, i64 608, !40, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !41, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !42, i64 660, !42, i64 664, !40, i64 668, !40, i64 670, !42, i64 672, !42, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !42, i64 2528, !42, i64 2532, !40, i64 2536, !40, i64 2538, !42, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !42, i64 2560, !42, i64 2564, !37, i64 2568, !41, i64 2576, !42, i64 2580, !38, i64 2584, !94, i64 2616, !41, i64 3976, !41, i64 3980}
!89 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !42, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !90, i64 24, !91, i64 184}
!90 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !42, i64 136, !42, i64 140, !37, i64 144, !37, i64 152}
!91 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!92 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!93 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !42, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!94 = !{!"BakeData", !89, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !42, i64 1280, !42, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!95 = !{!"World", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252, !42, i64 256, !42, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !37, i64 336, !37, i64 344, !37, i64 352, !38, i64 360, !40, i64 504, !40, i64 506, !38, i64 508, !37, i64 512, !37, i64 520}
!96 = !{!"RenderStats", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !38, i64 40, !97, i64 48, !97, i64 56, !37, i64 64, !37, i64 72, !38, i64 80, !42, i64 144, !42, i64 148}
!97 = !{!"double", !38, i64 0}
!98 = !{!86, !37, i64 6000}
!99 = !{!86, !37, i64 6008}
!100 = !{!86, !37, i64 1088}
!101 = !{!35, !41, i64 100}
!102 = !{!35, !40, i64 232}
!103 = !{!86, !41, i64 1504}
!104 = distinct !{!104, !65, !66}
!105 = !{!106, !42, i64 0}
!106 = !{!"TexResult", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !41, i64 20, !37, i64 24}
!107 = !{!45, !40, i64 20}
!108 = !{!45, !41, i64 12}
!109 = distinct !{!109, !65, !66}
!110 = !{!45, !42, i64 40}
!111 = !{!35, !42, i64 140}
!112 = !{!35, !42, i64 136}
!113 = !{!35, !40, i64 230}
!114 = !{!106, !42, i64 4}
!115 = !{!106, !42, i64 8}
!116 = !{!106, !42, i64 12}
!117 = !{!106, !41, i64 20}
!118 = !{!106, !42, i64 16}
!119 = !{!35, !42, i64 148}
!120 = !{!35, !42, i64 152}
!121 = !{!35, !42, i64 156}
!122 = !{!35, !42, i64 144}
