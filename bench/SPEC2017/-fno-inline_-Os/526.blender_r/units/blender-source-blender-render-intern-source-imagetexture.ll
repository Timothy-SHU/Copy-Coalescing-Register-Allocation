; ModuleID = 'blender/source/blender/render/intern/source/imagetexture.c'
source_filename = "blender/source/blender/render/intern/source/imagetexture.c"
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
%struct.TexResult = type { float, float, float, float, float, i32, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderSlot = type { [64 x i8] }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.afdata_t = type { [2 x float], [2 x float], i32, i32, float, float, float, i32, float, float }
%struct.ReadEWAData = type { ptr, ptr }

@R = external local_unnamed_addr global %struct.Render, align 8
@EWA_WTS = external local_unnamed_addr constant [256 x float], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @imagewrap(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 2
  %12 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 1
  %13 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 4
  %14 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %2, null
  %17 = icmp eq ptr %1, null
  %18 = and i1 %17, %16
  br i1 %18, label %438, label %19

19:                                               ; preds = %6
  br i1 %17, label %33, label %20

20:                                               ; preds = %19
  %21 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !41
  %22 = and i32 %21, 4096
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call zeroext i8 @BKE_image_has_loaded_ibuf(ptr noundef nonnull %1) #17
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %438, label %27

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 51
  %29 = tail call ptr @BKE_image_pool_acquire_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %28, ptr noundef %5) #17
  %30 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 10
  %31 = load i16, ptr %30, align 2, !tbaa !58
  %32 = or i16 %31, 512
  store i16 %32, ptr %30, align 2, !tbaa !58
  br label %33

33:                                               ; preds = %27, %19
  %34 = phi ptr [ %29, %27 ], [ %2, %19 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !61
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !64
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %33
  br i1 %17, label %438, label %45

45:                                               ; preds = %44
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef %34, ptr noundef %5) #17
  br label %438

46:                                               ; preds = %40, %36
  %47 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 30
  %48 = load i16, ptr %47, align 4, !tbaa !65
  %49 = and i16 %48, 16
  %50 = icmp eq i16 %49, 0
  %51 = getelementptr inbounds float, ptr %3, i64 1
  %52 = select i1 %50, ptr %51, ptr %3
  %53 = select i1 %50, ptr %3, ptr %51
  %54 = load float, ptr %53, align 4, !tbaa !68
  %55 = load float, ptr %52, align 4, !tbaa !68
  %56 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 42
  %57 = load i16, ptr %56, align 8, !tbaa !69
  %58 = icmp eq i16 %57, 5
  br i1 %58, label %59, label %111

59:                                               ; preds = %46
  %60 = insertelement <2 x float> poison, float %54, i64 0
  %61 = insertelement <2 x float> %60, float %55, i64 1
  %62 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %61)
  %63 = fptosi <2 x float> %62 to <2 x i32>
  %64 = sitofp <2 x i32> %63 to <2 x float>
  %65 = fsub <2 x float> %61, %64
  %66 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %67 = load i16, ptr %66, align 2, !tbaa !70
  %68 = and i16 %67, 8
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %59
  %71 = shufflevector <2 x i32> %63, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %72 = add nsw <2 x i32> %71, %63
  %73 = extractelement <2 x i32> %72, i64 0
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  br i1 %17, label %438, label %77

77:                                               ; preds = %76
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %34, ptr noundef %5) #17
  br label %438

78:                                               ; preds = %70, %59
  %79 = and i16 %67, 16
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = shufflevector <2 x i32> %63, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %83 = add nsw <2 x i32> %82, %63
  %84 = extractelement <2 x i32> %83, i64 0
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %81
  br i1 %17, label %438, label %88

88:                                               ; preds = %87
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %34, ptr noundef %5) #17
  br label %438

89:                                               ; preds = %81, %78
  %90 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 48
  %91 = load float, ptr %90, align 4, !tbaa !71
  %92 = fcmp olt float %91, 1.000000e+00
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = fadd <2 x float> %65, <float -5.000000e-01, float -5.000000e-01>
  %95 = fsub float 1.000000e+00, %91
  %96 = insertelement <2 x float> poison, float %95, i64 0
  %97 = shufflevector <2 x float> %96, <2 x float> poison, <2 x i32> zeroinitializer
  %98 = fdiv <2 x float> %94, %97
  %99 = fadd <2 x float> %98, <float 5.000000e-01, float 5.000000e-01>
  br label %100

100:                                              ; preds = %93, %89
  %101 = phi <2 x float> [ %65, %89 ], [ %99, %93 ]
  %102 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 2
  %103 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 3
  %104 = load <2 x i32>, ptr %102, align 8, !tbaa !72
  %105 = sitofp <2 x i32> %104 to <2 x float>
  %106 = fmul <2 x float> %101, %105
  %107 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %106)
  %108 = fptosi <2 x float> %107 to <2 x i32>
  %109 = extractelement <2 x float> %105, i64 0
  %110 = extractelement <2 x float> %105, i64 1
  br label %143

111:                                              ; preds = %46
  %112 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 2
  %113 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 3
  %114 = load <2 x i32>, ptr %112, align 8, !tbaa !72
  %115 = sitofp <2 x i32> %114 to <2 x float>
  %116 = insertelement <2 x float> poison, float %54, i64 0
  %117 = insertelement <2 x float> %116, float %55, i64 1
  %118 = fmul <2 x float> %117, %115
  %119 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %118)
  %120 = fptosi <2 x float> %119 to <2 x i32>
  %121 = extractelement <2 x float> %115, i64 0
  %122 = extractelement <2 x float> %115, i64 1
  switch i16 %57, label %182 [
    i16 4, label %123
    i16 2, label %143
    i16 1, label %165
  ]

123:                                              ; preds = %111
  %124 = shufflevector <2 x i32> %120, <2 x i32> %114, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  %125 = shufflevector <2 x i32> %120, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %126 = shufflevector <4 x i32> %125, <4 x i32> <i32 -1, i32 -1, i32 poison, i32 poison>, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  %127 = icmp sgt <4 x i32> %124, %126
  %128 = freeze <4 x i1> %127
  %129 = bitcast <4 x i1> %128 to i4
  %130 = icmp eq i4 %129, -1
  br i1 %130, label %131, label %141

131:                                              ; preds = %123
  %132 = extractelement <2 x i32> %120, i64 1
  %133 = extractelement <2 x i32> %120, i64 0
  %134 = getelementptr inbounds float, ptr %3, i64 2
  %135 = load float, ptr %134, align 4, !tbaa !68
  %136 = fcmp olt float %135, -1.000000e+00
  %137 = fcmp ogt float %135, 1.000000e+00
  %138 = or i1 %136, %137
  %139 = extractelement <2 x i32> %114, i64 0
  %140 = extractelement <2 x i32> %114, i64 1
  br i1 %138, label %141, label %195

141:                                              ; preds = %131, %123
  br i1 %17, label %438, label %142

142:                                              ; preds = %141
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %34, ptr noundef %5) #17
  br label %438

143:                                              ; preds = %100, %111
  %144 = phi float [ %110, %100 ], [ %122, %111 ]
  %145 = phi ptr [ %103, %100 ], [ %113, %111 ]
  %146 = phi float [ %109, %100 ], [ %121, %111 ]
  %147 = phi ptr [ %102, %100 ], [ %112, %111 ]
  %148 = phi <2 x float> [ %101, %100 ], [ %117, %111 ]
  %149 = phi <2 x i32> [ %108, %100 ], [ %120, %111 ]
  %150 = phi <2 x i32> [ %104, %100 ], [ %114, %111 ]
  %151 = extractelement <2 x i32> %149, i64 0
  %152 = icmp sgt i32 %151, -1
  %153 = extractelement <2 x i32> %149, i64 1
  %154 = icmp sgt i32 %153, -1
  %155 = select i1 %152, i1 %154, i1 false
  %156 = icmp sgt <2 x i32> %150, %149
  %157 = extractelement <2 x i1> %156, i64 0
  %158 = select i1 %155, i1 %157, i1 false
  %159 = extractelement <2 x i1> %156, i64 1
  %160 = select i1 %158, i1 %159, i1 false
  %161 = extractelement <2 x i32> %150, i64 0
  %162 = extractelement <2 x i32> %150, i64 1
  br i1 %160, label %195, label %163

163:                                              ; preds = %143
  br i1 %17, label %438, label %164

164:                                              ; preds = %163
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %34, ptr noundef %5) #17
  br label %438

165:                                              ; preds = %111
  %166 = extractelement <2 x i32> %120, i64 0
  %167 = tail call i32 @llvm.smax.i32(i32 %166, i32 0)
  %168 = extractelement <2 x i32> %114, i64 0
  %169 = add nsw i32 %168, -1
  %170 = icmp sgt <2 x i32> %114, %120
  %171 = extractelement <2 x i1> %170, i64 0
  %172 = select i1 %171, i32 %167, i32 %169
  %173 = extractelement <2 x i1> %170, i64 1
  br i1 %173, label %178, label %174

174:                                              ; preds = %165
  %175 = extractelement <2 x i32> %114, i64 1
  %176 = add nsw i32 %175, -1
  %177 = extractelement <2 x i32> %120, i64 1
  br label %195

178:                                              ; preds = %165
  %179 = extractelement <2 x i32> %120, i64 1
  %180 = tail call i32 @llvm.smax.i32(i32 %179, i32 0)
  %181 = extractelement <2 x i32> %114, i64 1
  br label %195

182:                                              ; preds = %111
  %183 = extractelement <2 x i32> %120, i64 0
  %184 = extractelement <2 x i32> %114, i64 0
  %185 = srem i32 %183, %184
  %186 = icmp slt i32 %185, 0
  %187 = select i1 %186, i32 %184, i32 0
  %188 = add nsw i32 %187, %185
  %189 = extractelement <2 x i32> %120, i64 1
  %190 = extractelement <2 x i32> %114, i64 1
  %191 = srem i32 %189, %190
  %192 = icmp slt i32 %191, 0
  %193 = select i1 %192, i32 %190, i32 0
  %194 = add nsw i32 %193, %191
  br label %195

195:                                              ; preds = %143, %182, %131, %174, %178
  %196 = phi i32 [ %177, %174 ], [ %179, %178 ], [ %132, %131 ], [ %189, %182 ], [ %153, %143 ]
  %197 = phi float [ %122, %174 ], [ %122, %178 ], [ %122, %131 ], [ %122, %182 ], [ %144, %143 ]
  %198 = phi i32 [ %175, %174 ], [ %181, %178 ], [ %140, %131 ], [ %190, %182 ], [ %162, %143 ]
  %199 = phi ptr [ %113, %174 ], [ %113, %178 ], [ %113, %131 ], [ %113, %182 ], [ %145, %143 ]
  %200 = phi i32 [ %166, %174 ], [ %166, %178 ], [ %133, %131 ], [ %183, %182 ], [ %151, %143 ]
  %201 = phi float [ %121, %174 ], [ %121, %178 ], [ %121, %131 ], [ %121, %182 ], [ %146, %143 ]
  %202 = phi i32 [ %168, %174 ], [ %168, %178 ], [ %139, %131 ], [ %184, %182 ], [ %161, %143 ]
  %203 = phi ptr [ %112, %174 ], [ %112, %178 ], [ %112, %131 ], [ %112, %182 ], [ %147, %143 ]
  %204 = phi i32 [ %176, %174 ], [ %180, %178 ], [ %132, %131 ], [ %194, %182 ], [ %153, %143 ]
  %205 = phi i32 [ %172, %174 ], [ %172, %178 ], [ %133, %131 ], [ %188, %182 ], [ %151, %143 ]
  %206 = phi <2 x float> [ %117, %174 ], [ %117, %178 ], [ %117, %131 ], [ %117, %182 ], [ %148, %143 ]
  %207 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !73
  %208 = and i16 %207, 4
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %219, label %210

210:                                              ; preds = %195
  %211 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 6
  %212 = load i32, ptr %211, align 8, !tbaa !74
  %213 = and i32 %212, 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %210
  %216 = mul nsw i32 %198, %202
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, ptr %38, i64 %217
  store ptr %218, ptr %37, align 8, !tbaa !61
  br label %219

219:                                              ; preds = %215, %210, %195
  br i1 %17, label %234, label %220

220:                                              ; preds = %219
  %221 = zext i16 %48 to i32
  %222 = and i32 %221, 2
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %234, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 10
  %226 = load i16, ptr %225, align 2, !tbaa !58
  %227 = and i16 %226, 4096
  %228 = icmp eq i16 %227, 0
  %229 = and i32 %221, 32
  %230 = icmp eq i32 %229, 0
  %231 = and i1 %230, %228
  br i1 %231, label %232, label %234

232:                                              ; preds = %224
  %233 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 5
  store i32 1, ptr %233, align 4, !tbaa !75
  br label %234

234:                                              ; preds = %220, %224, %232, %219
  %235 = and i16 %48, 1
  %236 = icmp eq i16 %235, 0
  br i1 %236, label %261, label %237

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 10
  %239 = load float, ptr %238, align 8, !tbaa !76
  %240 = fmul float %239, 5.000000e-01
  %241 = fdiv float %240, %201
  %242 = fdiv float %240, %197
  %243 = sub nsw i32 %200, %205
  %244 = sitofp i32 %243 to float
  %245 = fdiv float %244, %201
  %246 = extractelement <2 x float> %206, i64 0
  %247 = fsub float %246, %245
  %248 = sub nsw i32 %196, %204
  %249 = sitofp i32 %248 to float
  %250 = fdiv float %249, %197
  %251 = extractelement <2 x float> %206, i64 1
  %252 = fsub float %251, %250
  %253 = fsub float %247, %241
  %254 = fsub float %252, %242
  %255 = fadd float %247, %241
  %256 = fadd float %252, %242
  %257 = icmp eq i16 %57, 3
  %258 = zext i1 %257 to i16
  %259 = icmp eq i16 %57, 1
  %260 = zext i1 %259 to i16
  tail call fastcc void @boxsample(ptr noundef nonnull %34, float noundef %253, float noundef %254, float noundef %255, float noundef %256, ptr noundef nonnull %4, i16 noundef signext %258, i16 noundef signext %260) #18
  br label %262

261:                                              ; preds = %234
  tail call fastcc void @ibuf_get_color(ptr noundef nonnull %12, ptr noundef nonnull %34, i32 noundef %205, i32 noundef %204) #18
  br label %262

262:                                              ; preds = %261, %237
  %263 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !73
  %264 = and i16 %263, 4
  %265 = icmp eq i16 %264, 0
  br i1 %265, label %279, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.ImBuf, ptr %34, i64 0, i32 6
  %268 = load i32, ptr %267, align 8, !tbaa !74
  %269 = and i32 %268, 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %279, label %271

271:                                              ; preds = %266
  %272 = load i32, ptr %203, align 8, !tbaa !77
  %273 = load i32, ptr %199, align 4, !tbaa !78
  %274 = mul nsw i32 %273, %272
  %275 = load ptr, ptr %37, align 8, !tbaa !61
  %276 = sext i32 %274 to i64
  %277 = sub nsw i64 0, %276
  %278 = getelementptr inbounds i32, ptr %275, i64 %277
  store ptr %278, ptr %37, align 8, !tbaa !61
  br label %279

279:                                              ; preds = %271, %266, %262
  %280 = load ptr, ptr %14, align 8, !tbaa !34
  %281 = icmp eq ptr %280, null
  br i1 %281, label %337, label %282

282:                                              ; preds = %279
  %283 = load i16, ptr %47, align 4, !tbaa !65
  %284 = and i16 %283, 2048
  %285 = icmp eq i16 %284, 0
  %286 = load float, ptr %12, align 4, !tbaa !79
  br i1 %285, label %298, label %287

287:                                              ; preds = %282
  %288 = fadd float %286, -5.000000e-01
  %289 = fmul float %288, -2.000000e+00
  store float %289, ptr %280, align 4, !tbaa !68
  %290 = load float, ptr %11, align 8, !tbaa !80
  %291 = fadd float %290, -5.000000e-01
  %292 = fmul float %291, 2.000000e+00
  %293 = getelementptr inbounds float, ptr %280, i64 1
  store float %292, ptr %293, align 4, !tbaa !68
  %294 = load float, ptr %10, align 4, !tbaa !81
  %295 = fadd float %294, -5.000000e-01
  %296 = fmul float %295, 2.000000e+00
  %297 = getelementptr inbounds float, ptr %280, i64 2
  store float %296, ptr %297, align 4, !tbaa !68
  br label %337

298:                                              ; preds = %282
  %299 = load float, ptr %11, align 8, !tbaa !80
  %300 = fadd float %286, %299
  %301 = load float, ptr %10, align 4, !tbaa !81
  %302 = fadd float %300, %301
  %303 = load i32, ptr %203, align 8, !tbaa !77
  %304 = add nsw i32 %303, -1
  %305 = icmp slt i32 %205, %304
  br i1 %305, label %306, label %315

306:                                              ; preds = %298
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  %307 = add nsw i32 %205, 1
  call fastcc void @ibuf_get_color(ptr noundef nonnull %7, ptr noundef nonnull %34, i32 noundef %307, i32 noundef %204) #18
  %308 = load float, ptr %7, align 16, !tbaa !68
  %309 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %310 = load float, ptr %309, align 4, !tbaa !68
  %311 = fadd float %308, %310
  %312 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %313 = load float, ptr %312, align 8, !tbaa !68
  %314 = fadd float %311, %313
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  br label %315

315:                                              ; preds = %298, %306
  %316 = phi float [ %314, %306 ], [ %302, %298 ]
  %317 = load i32, ptr %199, align 4, !tbaa !78
  %318 = add nsw i32 %317, -1
  %319 = icmp slt i32 %204, %318
  br i1 %319, label %320, label %329

320:                                              ; preds = %315
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19
  %321 = add nsw i32 %204, 1
  call fastcc void @ibuf_get_color(ptr noundef nonnull %8, ptr noundef nonnull %34, i32 noundef %205, i32 noundef %321) #18
  %322 = load float, ptr %8, align 16, !tbaa !68
  %323 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  %324 = load float, ptr %323, align 4, !tbaa !68
  %325 = fadd float %322, %324
  %326 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  %327 = load float, ptr %326, align 8, !tbaa !68
  %328 = fadd float %325, %327
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  br label %329

329:                                              ; preds = %315, %320
  %330 = phi float [ %328, %320 ], [ %302, %315 ]
  %331 = insertelement <2 x float> poison, float %302, i64 0
  %332 = shufflevector <2 x float> %331, <2 x float> poison, <2 x i32> zeroinitializer
  %333 = insertelement <2 x float> poison, float %316, i64 0
  %334 = insertelement <2 x float> %333, float %330, i64 1
  %335 = fsub <2 x float> %332, %334
  %336 = load ptr, ptr %14, align 8, !tbaa !34
  store <2 x float> %335, ptr %336, align 4, !tbaa !68
  br label %337

337:                                              ; preds = %287, %329, %279
  %338 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 5
  %339 = load i32, ptr %338, align 4, !tbaa !75
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %343, label %341

341:                                              ; preds = %337
  %342 = load float, ptr %13, align 8, !tbaa !82
  store float %342, ptr %4, align 8, !tbaa !83
  br label %353

343:                                              ; preds = %337
  %344 = load i16, ptr %47, align 4, !tbaa !65
  %345 = and i16 %344, 32
  %346 = icmp eq i16 %345, 0
  br i1 %346, label %352, label %347

347:                                              ; preds = %343
  %348 = load float, ptr %12, align 4, !tbaa !79
  %349 = load float, ptr %11, align 8, !tbaa !80
  %350 = load float, ptr %10, align 4, !tbaa !81
  %351 = tail call fastcc float @max_fff(float noundef %348, float noundef %349, float noundef %350) #18
  store float %351, ptr %4, align 8, !tbaa !83
  store float %351, ptr %13, align 8, !tbaa !82
  br label %353

352:                                              ; preds = %343
  store float 1.000000e+00, ptr %4, align 8, !tbaa !83
  store float 1.000000e+00, ptr %13, align 8, !tbaa !82
  br label %353

353:                                              ; preds = %347, %352, %341
  %354 = phi float [ %351, %347 ], [ 1.000000e+00, %352 ], [ %342, %341 ]
  %355 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %356 = load i16, ptr %355, align 2, !tbaa !70
  %357 = and i16 %356, 4
  %358 = icmp eq i16 %357, 0
  br i1 %358, label %361, label %359

359:                                              ; preds = %353
  %360 = fsub float 1.000000e+00, %354
  store float %360, ptr %13, align 8, !tbaa !82
  br label %361

361:                                              ; preds = %359, %353
  %362 = phi float [ %360, %359 ], [ %354, %353 ]
  %363 = fcmp une float %362, 1.000000e+00
  %364 = fcmp ogt float %362, 0x3F1A36E2E0000000
  %365 = and i1 %363, %364
  br i1 %365, label %366, label %378

366:                                              ; preds = %361
  %367 = load i16, ptr %47, align 4, !tbaa !65
  %368 = and i16 %367, 32
  %369 = icmp eq i16 %368, 0
  br i1 %369, label %370, label %378

370:                                              ; preds = %366
  %371 = fdiv float 1.000000e+00, %362
  %372 = load <2 x float>, ptr %12, align 4, !tbaa !68
  %373 = insertelement <2 x float> poison, float %371, i64 0
  %374 = shufflevector <2 x float> %373, <2 x float> poison, <2 x i32> zeroinitializer
  %375 = fmul <2 x float> %374, %372
  store <2 x float> %375, ptr %12, align 4, !tbaa !68
  %376 = load float, ptr %10, align 4, !tbaa !81
  %377 = fmul float %371, %376
  store float %377, ptr %10, align 4, !tbaa !81
  br label %378

378:                                              ; preds = %370, %366, %361
  br i1 %17, label %381, label %379

379:                                              ; preds = %378
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %34, ptr noundef %5) #17
  %380 = load i16, ptr %355, align 2, !tbaa !70
  br label %381

381:                                              ; preds = %379, %378
  %382 = phi i16 [ %380, %379 ], [ %356, %378 ]
  %383 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 7
  %384 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %385 = load float, ptr %384, align 4, !tbaa !84
  %386 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %387 = load float, ptr %386, align 8, !tbaa !85
  %388 = load <2 x float>, ptr %383, align 4, !tbaa !68
  %389 = load <2 x float>, ptr %12, align 4, !tbaa !68
  %390 = fadd <2 x float> %389, <float -5.000000e-01, float -5.000000e-01>
  %391 = insertelement <2 x float> poison, float %385, i64 0
  %392 = shufflevector <2 x float> %391, <2 x float> poison, <2 x i32> zeroinitializer
  %393 = insertelement <2 x float> poison, float %387, i64 0
  %394 = shufflevector <2 x float> %393, <2 x float> poison, <2 x i32> zeroinitializer
  %395 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %390, <2 x float> %392, <2 x float> %394)
  %396 = fadd <2 x float> %395, <float -5.000000e-01, float -5.000000e-01>
  %397 = fmul <2 x float> %388, %396
  store <2 x float> %397, ptr %12, align 4, !tbaa !68
  %398 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 9
  %399 = load float, ptr %398, align 4, !tbaa !86
  %400 = load float, ptr %10, align 4, !tbaa !81
  %401 = fadd float %400, -5.000000e-01
  %402 = tail call float @llvm.fmuladd.f32(float %401, float %385, float %387)
  %403 = fadd float %402, -5.000000e-01
  %404 = fmul float %399, %403
  store float %404, ptr %10, align 4, !tbaa !81
  %405 = and i16 %382, 1024
  %406 = icmp eq i16 %405, 0
  br i1 %406, label %407, label %422

407:                                              ; preds = %381
  %408 = extractelement <2 x float> %397, i64 0
  %409 = fcmp olt float %408, 0.000000e+00
  br i1 %409, label %410, label %411

410:                                              ; preds = %407
  store float 0.000000e+00, ptr %12, align 4, !tbaa !79
  br label %411

411:                                              ; preds = %410, %407
  %412 = phi float [ 0.000000e+00, %410 ], [ %408, %407 ]
  %413 = extractelement <2 x float> %397, i64 1
  %414 = fcmp olt float %413, 0.000000e+00
  br i1 %414, label %415, label %416

415:                                              ; preds = %411
  store float 0.000000e+00, ptr %11, align 8, !tbaa !80
  br label %416

416:                                              ; preds = %415, %411
  %417 = phi float [ 0.000000e+00, %415 ], [ %413, %411 ]
  %418 = fcmp olt float %404, 0.000000e+00
  %419 = insertelement <2 x float> poison, float %412, i64 0
  %420 = insertelement <2 x float> %419, float %417, i64 1
  br i1 %418, label %421, label %422

421:                                              ; preds = %416
  store float 0.000000e+00, ptr %10, align 4, !tbaa !81
  br label %422

422:                                              ; preds = %416, %421, %381
  %423 = phi float [ %404, %416 ], [ 0.000000e+00, %421 ], [ %404, %381 ]
  %424 = phi <2 x float> [ %420, %416 ], [ %420, %421 ], [ %397, %381 ]
  %425 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 6
  %426 = load float, ptr %425, align 8, !tbaa !87
  %427 = fcmp une float %426, 1.000000e+00
  br i1 %427, label %428, label %438

428:                                              ; preds = %422
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  %429 = getelementptr inbounds float, ptr %9, i64 1
  %430 = getelementptr inbounds float, ptr %9, i64 2
  %431 = extractelement <2 x float> %424, i64 0
  %432 = extractelement <2 x float> %424, i64 1
  call void @rgb_to_hsv(float noundef %431, float noundef %432, float noundef %423, ptr noundef nonnull %9, ptr noundef nonnull %429, ptr noundef nonnull %430) #17
  %433 = load float, ptr %425, align 8, !tbaa !87
  %434 = load float, ptr %429, align 4, !tbaa !68
  %435 = fmul float %433, %434
  store float %435, ptr %429, align 4, !tbaa !68
  %436 = load float, ptr %9, align 4, !tbaa !68
  %437 = load float, ptr %430, align 4, !tbaa !68
  call void @hsv_to_rgb(float noundef %436, float noundef %435, float noundef %437, ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  br label %438

438:                                              ; preds = %87, %88, %76, %77, %422, %428, %163, %164, %141, %142, %44, %45, %24, %6
  %439 = icmp eq ptr %15, null
  %440 = select i1 %439, i32 1, i32 3
  ret i32 %440
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @BKE_image_has_loaded_ibuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_pool_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_pool_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @boxsample(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr nocapture noundef %5, i16 noundef signext %6, i16 noundef signext %7) unnamed_addr #4 !PGOFuncName !88 {
  %9 = alloca %struct.TexResult, align 8
  %10 = alloca [8 x %struct.rctf], align 16
  %11 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #19
  store i16 1, ptr %11, align 2, !tbaa !89
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 1
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %15 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 2
  %16 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 3
  %17 = load <2 x i32>, ptr %12, align 8, !tbaa !72
  %18 = sitofp <2 x i32> %17 to <2 x float>
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %20 = insertelement <4 x float> poison, float %1, i64 0
  %21 = insertelement <4 x float> %20, float %3, i64 1
  %22 = insertelement <4 x float> %21, float %2, i64 2
  %23 = insertelement <4 x float> %22, float %4, i64 3
  %24 = fmul <4 x float> %19, %23
  store <4 x float> %24, ptr %10, align 16, !tbaa !68
  %25 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !75
  %27 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 5
  store i32 %26, ptr %27, align 4, !tbaa !75
  %28 = icmp eq i16 %7, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %8
  %30 = extractelement <4 x float> %24, i64 0
  %31 = fcmp olt float %30, 0.000000e+00
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store float 0.000000e+00, ptr %10, align 16, !tbaa !90
  br label %39

33:                                               ; preds = %29
  %34 = extractelement <2 x i32> %17, i64 0
  %35 = add nsw i32 %34, -1
  %36 = sitofp i32 %35 to float
  %37 = fcmp ogt float %30, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store float %36, ptr %10, align 16, !tbaa !90
  br label %39

39:                                               ; preds = %33, %38, %32
  %40 = extractelement <4 x float> %24, i64 1
  %41 = fcmp olt float %40, 0.000000e+00
  br i1 %41, label %55, label %42

42:                                               ; preds = %39
  %43 = extractelement <2 x i32> %17, i64 0
  %44 = add nsw i32 %43, -1
  %45 = sitofp i32 %44 to float
  %46 = fcmp ogt float %40, %45
  br i1 %46, label %55, label %57

47:                                               ; preds = %8
  %48 = icmp eq i16 %6, 0
  br i1 %48, label %49, label %82

49:                                               ; preds = %47
  %50 = extractelement <2 x float> %18, i64 0
  %51 = call fastcc float @clipx_rctf(ptr noundef nonnull %10, float noundef %50) #18
  %52 = fcmp ugt float %51, 0.000000e+00
  br i1 %52, label %75, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %54, i8 0, i64 16, i1 false)
  br label %151

55:                                               ; preds = %42, %39
  %56 = phi float [ 0.000000e+00, %39 ], [ %45, %42 ]
  store float %56, ptr %13, align 4, !tbaa !91
  br label %57

57:                                               ; preds = %55, %42
  %58 = extractelement <4 x float> %24, i64 2
  %59 = fcmp olt float %58, 0.000000e+00
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = extractelement <2 x i32> %17, i64 1
  %62 = add nsw i32 %61, -1
  %63 = sitofp i32 %62 to float
  %64 = fcmp ogt float %58, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60, %57
  %66 = phi float [ 0.000000e+00, %57 ], [ %63, %60 ]
  store float %66, ptr %15, align 8, !tbaa !92
  br label %67

67:                                               ; preds = %65, %60
  %68 = extractelement <4 x float> %24, i64 3
  %69 = fcmp olt float %68, 0.000000e+00
  br i1 %69, label %130, label %70

70:                                               ; preds = %67
  %71 = extractelement <2 x i32> %17, i64 1
  %72 = add nsw i32 %71, -1
  %73 = sitofp i32 %72 to float
  %74 = fcmp ogt float %68, %73
  br i1 %74, label %130, label %132

75:                                               ; preds = %49
  %76 = extractelement <2 x float> %18, i64 1
  %77 = call fastcc float @clipy_rctf(ptr noundef nonnull %10, float noundef %76) #18
  %78 = fmul float %51, %77
  %79 = fcmp ugt float %78, 0.000000e+00
  br i1 %79, label %132, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %81, i8 0, i64 16, i1 false)
  br label %151

82:                                               ; preds = %47
  %83 = extractelement <2 x float> %18, i64 0
  call fastcc void @clipx_rctf_swap(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %83) #18
  %84 = load i32, ptr %14, align 4, !tbaa !78
  %85 = sitofp i32 %84 to float
  call fastcc void @clipy_rctf_swap(ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %85) #18
  %86 = load i16, ptr %11, align 2, !tbaa !89
  %87 = icmp sgt i16 %86, 1
  br i1 %87, label %88, label %132

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 4
  %90 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  %91 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %92 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %93 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %94 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %91, i8 0, i64 16, i1 false)
  br label %95

95:                                               ; preds = %88, %116
  %96 = phi i16 [ %86, %88 ], [ %99, %116 ]
  %97 = phi float [ 0.000000e+00, %88 ], [ %101, %116 ]
  %98 = phi ptr [ %10, %88 ], [ %117, %116 ]
  %99 = add i16 %96, -1
  call fastcc void @boxsampleclip(ptr noundef %0, ptr noundef nonnull %98, ptr noundef nonnull %9) #18
  %100 = call fastcc float @square_rctf(ptr noundef nonnull %98) #18
  %101 = fadd float %97, %100
  %102 = load <2 x float>, ptr %92, align 4, !tbaa !68
  %103 = load <2 x float>, ptr %91, align 4, !tbaa !68
  %104 = insertelement <2 x float> poison, float %100, i64 0
  %105 = shufflevector <2 x float> %104, <2 x float> poison, <2 x i32> zeroinitializer
  %106 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %105, <2 x float> %102, <2 x float> %103)
  store <2 x float> %106, ptr %91, align 4, !tbaa !68
  %107 = load float, ptr %93, align 4, !tbaa !81
  %108 = load float, ptr %90, align 4, !tbaa !81
  %109 = tail call float @llvm.fmuladd.f32(float %100, float %107, float %108)
  store float %109, ptr %90, align 4, !tbaa !81
  %110 = load i32, ptr %25, align 4, !tbaa !75
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %95
  %113 = load float, ptr %94, align 8, !tbaa !82
  %114 = load float, ptr %89, align 8, !tbaa !82
  %115 = tail call float @llvm.fmuladd.f32(float %100, float %113, float %114)
  store float %115, ptr %89, align 8, !tbaa !82
  br label %116

116:                                              ; preds = %112, %95
  %117 = getelementptr inbounds %struct.rctf, ptr %98, i64 1
  %118 = icmp eq i16 %99, 0
  br i1 %118, label %119, label %95, !llvm.loop !93

119:                                              ; preds = %116
  %120 = fcmp une float %101, 0.000000e+00
  br i1 %120, label %121, label %135

121:                                              ; preds = %119
  %122 = insertelement <2 x float> poison, float %101, i64 0
  %123 = shufflevector <2 x float> %122, <2 x float> poison, <2 x i32> zeroinitializer
  %124 = fdiv <2 x float> %106, %123
  store <2 x float> %124, ptr %91, align 4, !tbaa !68
  %125 = fdiv float %109, %101
  store float %125, ptr %90, align 4, !tbaa !81
  %126 = icmp eq i32 %110, 0
  br i1 %126, label %139, label %127

127:                                              ; preds = %121
  %128 = load float, ptr %89, align 8, !tbaa !82
  %129 = fdiv float %128, %101
  store float %129, ptr %89, align 8, !tbaa !82
  br label %151

130:                                              ; preds = %70, %67
  %131 = phi float [ 0.000000e+00, %67 ], [ %73, %70 ]
  store float %131, ptr %16, align 4, !tbaa !95
  br label %132

132:                                              ; preds = %130, %75, %70, %82
  %133 = phi float [ 1.000000e+00, %82 ], [ %78, %75 ], [ 1.000000e+00, %70 ], [ 1.000000e+00, %130 ]
  call fastcc void @boxsampleclip(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef nonnull %5) #18
  %134 = load i32, ptr %25, align 4, !tbaa !75
  br label %135

135:                                              ; preds = %119, %132
  %136 = phi float [ 1.000000e+00, %119 ], [ %133, %132 ]
  %137 = phi i32 [ %110, %119 ], [ %134, %132 ]
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %121, %135
  %140 = phi float [ 1.000000e+00, %121 ], [ %136, %135 ]
  %141 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 4
  store float 1.000000e+00, ptr %141, align 8, !tbaa !82
  br label %142

142:                                              ; preds = %139, %135
  %143 = phi float [ %140, %139 ], [ %136, %135 ]
  %144 = fcmp une float %143, 1.000000e+00
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %147 = load <4 x float>, ptr %146, align 4, !tbaa !68
  %148 = insertelement <4 x float> poison, float %143, i64 0
  %149 = shufflevector <4 x float> %148, <4 x float> poison, <4 x i32> zeroinitializer
  %150 = fmul <4 x float> %149, %147
  store <4 x float> %150, ptr %146, align 4, !tbaa !68
  br label %151

151:                                              ; preds = %127, %142, %145, %80, %53
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ibuf_get_color(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 !PGOFuncName !96 {
  %5 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !77
  %7 = mul nsw i32 %6, %3
  %8 = add nsw i32 %7, %2
  %9 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !97
  switch i32 %14, label %24 [
    i32 4, label %15
    i32 3, label %19
  ]

15:                                               ; preds = %12
  %16 = shl nsw i32 %8, 2
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, ptr %10, i64 %17
  tail call fastcc void @copy_v4_v4(ptr noundef %0, ptr noundef nonnull %18) #18
  br label %59

19:                                               ; preds = %12
  %20 = mul nsw i32 %8, 3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, ptr %10, i64 %21
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %22) #18
  %23 = getelementptr inbounds float, ptr %0, i64 3
  store float 1.000000e+00, ptr %23, align 4, !tbaa !68
  br label %59

24:                                               ; preds = %12
  %25 = sext i32 %8 to i64
  %26 = getelementptr inbounds float, ptr %10, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !68
  %28 = insertelement <4 x float> poison, float %27, i64 0
  %29 = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %29, ptr %0, align 4, !tbaa !68
  br label %59

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !61
  %33 = sext i32 %8 to i64
  %34 = getelementptr inbounds i32, ptr %32, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !98
  %36 = uitofp i8 %35 to float
  %37 = getelementptr inbounds i8, ptr %34, i64 1
  %38 = getelementptr inbounds float, ptr %0, i64 1
  %39 = getelementptr inbounds i8, ptr %34, i64 2
  %40 = getelementptr inbounds float, ptr %0, i64 2
  %41 = getelementptr inbounds i8, ptr %34, i64 3
  %42 = getelementptr inbounds float, ptr %0, i64 3
  %43 = fmul float %36, 0x3F70101020000000
  store float %43, ptr %0, align 4, !tbaa !68
  %44 = load i8, ptr %37, align 1, !tbaa !98
  %45 = uitofp i8 %44 to float
  %46 = fmul float %45, 0x3F70101020000000
  store float %46, ptr %38, align 4, !tbaa !68
  %47 = load i8, ptr %39, align 1, !tbaa !98
  %48 = uitofp i8 %47 to float
  %49 = fmul float %48, 0x3F70101020000000
  store float %49, ptr %40, align 4, !tbaa !68
  %50 = load i8, ptr %41, align 1, !tbaa !98
  %51 = uitofp i8 %50 to float
  %52 = fmul float %51, 0x3F70101020000000
  store float %52, ptr %42, align 4, !tbaa !68
  %53 = insertelement <2 x float> poison, float %43, i64 0
  %54 = insertelement <2 x float> %53, float %46, i64 1
  %55 = insertelement <2 x float> poison, float %52, i64 0
  %56 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> zeroinitializer
  %57 = fmul <2 x float> %54, %56
  store <2 x float> %57, ptr %0, align 4, !tbaa !68
  %58 = fmul float %49, %52
  store float %58, ptr %40, align 4, !tbaa !68
  br label %59

59:                                               ; preds = %15, %24, %19, %30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #6 !PGOFuncName !99 {
  %4 = tail call fastcc float @max_ff(float noundef %0, float noundef %1) #18
  %5 = tail call fastcc float @max_ff(float noundef %4, float noundef %2) #18
  ret float %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: optsize
declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @imagewraposa(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca %struct.TexResult, align 8
  %10 = alloca [2 x float], align 8
  %11 = alloca [2 x float], align 8
  %12 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  call fastcc void @copy_v2_v2(ptr noundef nonnull %10, ptr noundef %4) #18
  call fastcc void @copy_v2_v2(ptr noundef nonnull %11, ptr noundef %5) #18
  %13 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 38
  %14 = load i32, ptr %13, align 4, !tbaa !100
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %8
  %17 = call fastcc i32 @imagewraposa_aniso(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %6, ptr noundef %7) #18, !range !101
  br label %825

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 3
  %20 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 2
  %21 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 1
  %22 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 4
  %23 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, i32 1, i32 3
  %27 = icmp eq ptr %2, null
  %28 = icmp eq ptr %1, null
  %29 = and i1 %28, %27
  br i1 %29, label %825, label %30

30:                                               ; preds = %18
  br i1 %28, label %44, label %31

31:                                               ; preds = %30
  %32 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !41
  %33 = and i32 %32, 4096
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = tail call zeroext i8 @BKE_image_has_loaded_ibuf(ptr noundef nonnull %1) #17
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %825, label %38

38:                                               ; preds = %35, %31
  %39 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 51
  %40 = tail call ptr @BKE_image_pool_acquire_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %39, ptr noundef %7) #17
  %41 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 10
  %42 = load i16, ptr %41, align 2, !tbaa !58
  %43 = or i16 %42, 512
  store i16 %43, ptr %41, align 2, !tbaa !58
  br label %44

44:                                               ; preds = %38, %30
  %45 = phi ptr [ %40, %38 ], [ %2, %30 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.ImBuf, ptr %45, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !61
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ImBuf, ptr %45, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !64
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %44
  br i1 %28, label %825, label %56

56:                                               ; preds = %55
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef %45, ptr noundef %7) #17
  br label %825

57:                                               ; preds = %51, %47
  tail call fastcc void @image_mipmap_test(ptr noundef nonnull %0, ptr noundef nonnull %45) #18
  %58 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 30
  %59 = load i16, ptr %58, align 4, !tbaa !65
  br i1 %28, label %74, label %60

60:                                               ; preds = %57
  %61 = zext i16 %59 to i32
  %62 = and i32 %61, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 10
  %66 = load i16, ptr %65, align 2, !tbaa !58
  %67 = and i16 %66, 4096
  %68 = icmp eq i16 %67, 0
  %69 = and i32 %61, 32
  %70 = icmp eq i32 %69, 0
  %71 = and i1 %70, %68
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 5
  store i32 1, ptr %73, align 4, !tbaa !75
  br label %74

74:                                               ; preds = %57, %60, %64, %72
  %75 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 5
  %76 = load i32, ptr %75, align 4, !tbaa !75
  %77 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 5
  store i32 %76, ptr %77, align 4, !tbaa !75
  %78 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 30
  %79 = and i16 %59, 16
  %80 = icmp eq i16 %79, 0
  %81 = getelementptr inbounds float, ptr %3, i64 1
  %82 = select i1 %80, ptr %81, ptr %3
  %83 = select i1 %80, ptr %3, ptr %81
  %84 = load float, ptr %83, align 4, !tbaa !68
  %85 = load float, ptr %82, align 4, !tbaa !68
  %86 = getelementptr inbounds %struct.ImBuf, ptr %45, i64 0, i32 6
  %87 = load i32, ptr %86, align 8, !tbaa !74
  %88 = and i32 %87, 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %74
  %91 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !102
  %92 = and i32 %91, 64
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %90
  %95 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !73
  %96 = and i16 %95, 4
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.ImBuf, ptr %45, i64 0, i32 3
  %100 = load i32, ptr %99, align 4, !tbaa !78
  %101 = sitofp i32 %100 to float
  %102 = fdiv float 5.000000e-01, %101
  %103 = fadd float %85, %102
  br label %104

104:                                              ; preds = %90, %94, %98, %74
  %105 = phi float [ %85, %94 ], [ %103, %98 ], [ %85, %90 ], [ %85, %74 ]
  %106 = load <2 x float>, ptr %10, align 8, !tbaa !68
  %107 = extractelement <2 x float> %106, i64 0
  %108 = load <2 x float>, ptr %11, align 8, !tbaa !68
  %109 = extractelement <2 x float> %108, i64 0
  %110 = fadd <2 x float> %106, %108
  %111 = extractelement <2 x float> %110, i64 0
  %112 = tail call fastcc float @min_fff(float noundef %107, float noundef %109, float noundef %111) #18
  %113 = tail call fastcc float @max_fff(float noundef %107, float noundef %109, float noundef %111) #18
  %114 = extractelement <2 x float> %106, i64 1
  %115 = extractelement <2 x float> %108, i64 1
  %116 = fadd float %114, %115
  %117 = tail call fastcc float @min_fff(float noundef %114, float noundef %115, float noundef %116) #18
  %118 = tail call fastcc float @max_fff(float noundef %114, float noundef %115, float noundef %116) #18
  %119 = insertelement <2 x float> poison, float %118, i64 0
  %120 = insertelement <2 x float> %119, float %113, i64 1
  %121 = insertelement <2 x float> poison, float %117, i64 0
  %122 = insertelement <2 x float> %121, float %112, i64 1
  %123 = fsub <2 x float> %120, %122
  %124 = fmul <2 x float> %123, <float 5.000000e-01, float 5.000000e-01>
  %125 = and i16 %59, 8192
  %126 = icmp eq i16 %125, 0
  %127 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 10
  %128 = load float, ptr %127, align 8, !tbaa !76
  br i1 %126, label %142, label %129

129:                                              ; preds = %104
  %130 = fmul float %128, 5.000000e-01
  %131 = getelementptr inbounds %struct.ImBuf, ptr %45, i64 0, i32 2
  %132 = load i32, ptr %131, align 8, !tbaa !77
  %133 = getelementptr inbounds %struct.ImBuf, ptr %45, i64 0, i32 3
  %134 = load i32, ptr %133, align 4, !tbaa !78
  %135 = tail call i32 @llvm.smin.i32(i32 %132, i32 %134)
  %136 = sitofp i32 %135 to float
  %137 = fdiv float %130, %136
  %138 = insertelement <2 x float> poison, float %137, i64 0
  %139 = shufflevector <2 x float> %138, <2 x float> poison, <2 x i32> zeroinitializer
  %140 = fcmp ogt <2 x float> %139, %124
  %141 = select <2 x i1> %140, <2 x float> %139, <2 x float> %124
  br label %154

142:                                              ; preds = %104
  %143 = fcmp une float %128, 1.000000e+00
  br i1 %143, label %144, label %154

144:                                              ; preds = %142
  %145 = insertelement <2 x float> poison, float %128, i64 0
  %146 = shufflevector <2 x float> %145, <2 x float> poison, <2 x i32> zeroinitializer
  %147 = fmul <2 x float> %124, %146
  %148 = fmul <2 x float> %106, %146
  store <2 x float> %148, ptr %10, align 8, !tbaa !68
  %149 = fmul <2 x float> %108, %146
  store <2 x float> %149, ptr %11, align 8, !tbaa !68
  %150 = extractelement <2 x float> %148, i64 0
  %151 = extractelement <2 x float> %148, i64 1
  %152 = extractelement <2 x float> %149, i64 0
  %153 = extractelement <2 x float> %149, i64 1
  br label %154

154:                                              ; preds = %142, %144, %129
  %155 = phi float [ %115, %129 ], [ %153, %144 ], [ %115, %142 ]
  %156 = phi float [ %109, %129 ], [ %152, %144 ], [ %109, %142 ]
  %157 = phi float [ %114, %129 ], [ %151, %144 ], [ %114, %142 ]
  %158 = phi float [ %107, %129 ], [ %150, %144 ], [ %107, %142 ]
  %159 = phi <2 x float> [ %141, %129 ], [ %147, %144 ], [ %124, %142 ]
  %160 = extractelement <2 x float> %159, i64 0
  %161 = extractelement <2 x float> %159, i64 1
  %162 = select i1 %80, float %160, float %161
  %163 = select i1 %80, float %161, float %160
  %164 = fcmp ogt float %163, 2.500000e-01
  br i1 %164, label %168, label %165

165:                                              ; preds = %154
  %166 = fcmp olt float %163, 0x3EE4F8B580000000
  br i1 %166, label %167, label %168

167:                                              ; preds = %165
  br label %168

168:                                              ; preds = %154, %165, %167
  %169 = phi float [ 0x3EE4F8B580000000, %167 ], [ %163, %165 ], [ 2.500000e-01, %154 ]
  %170 = fcmp ogt float %162, 2.500000e-01
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = fcmp olt float %162, 0x3EE4F8B580000000
  br i1 %172, label %173, label %174

173:                                              ; preds = %171
  br label %174

174:                                              ; preds = %168, %171, %173
  %175 = phi float [ 0x3EE4F8B580000000, %173 ], [ %162, %171 ], [ 2.500000e-01, %168 ]
  %176 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 42
  %177 = load i16, ptr %176, align 8, !tbaa !69
  %178 = icmp eq i16 %177, 1
  %179 = insertelement <2 x float> poison, float %169, i64 0
  %180 = insertelement <2 x float> %179, float %175, i64 1
  %181 = insertelement <2 x float> poison, float %105, i64 0
  %182 = insertelement <2 x float> %181, float %84, i64 1
  switch i16 %177, label %344 [
    i16 3, label %183
    i16 5, label %188
    i16 4, label %303
    i16 2, label %323
  ]

183:                                              ; preds = %174
  %184 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %185 = load i16, ptr %184, align 2, !tbaa !70
  %186 = and i16 %185, 384
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %351, label %345

188:                                              ; preds = %174
  %189 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %182)
  %190 = fptosi <2 x float> %189 to <2 x i32>
  %191 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %192 = load i16, ptr %191, align 2, !tbaa !70
  %193 = and i16 %192, 24
  %194 = icmp eq i16 %193, 24
  br i1 %194, label %195, label %198

195:                                              ; preds = %188
  %196 = sitofp <2 x i32> %190 to <2 x float>
  %197 = fsub <2 x float> %182, %196
  br label %290

198:                                              ; preds = %188
  %199 = insertelement <2 x float> poison, float %84, i64 0
  %200 = insertelement <2 x float> %199, float %105, i64 1
  %201 = fsub <2 x float> %200, %180
  %202 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %201)
  %203 = fptosi <2 x float> %202 to <2 x i32>
  %204 = fadd <2 x float> %200, %180
  %205 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %204)
  %206 = fptosi <2 x float> %205 to <2 x i32>
  %207 = icmp eq <2 x i32> %203, %206
  %208 = extractelement <2 x i1> %207, i64 0
  %209 = extractelement <2 x i1> %207, i64 1
  %210 = select i1 %208, i1 %209, i1 false
  %211 = and i16 %192, 8
  %212 = icmp eq i16 %211, 0
  br i1 %210, label %213, label %236

213:                                              ; preds = %198
  br i1 %212, label %214, label %222

214:                                              ; preds = %213
  %215 = shufflevector <2 x i32> %190, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %216 = add nsw <2 x i32> %215, %190
  %217 = extractelement <2 x i32> %216, i64 0
  %218 = and i32 %217, 1
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %214
  br i1 %28, label %825, label %221

221:                                              ; preds = %220
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %45, ptr noundef %7) #17
  br label %825

222:                                              ; preds = %214, %213
  %223 = and i16 %192, 16
  %224 = icmp eq i16 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %222
  %226 = shufflevector <2 x i32> %190, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %227 = add nsw <2 x i32> %226, %190
  %228 = extractelement <2 x i32> %227, i64 0
  %229 = and i32 %228, 1
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %225
  br i1 %28, label %825, label %232

232:                                              ; preds = %231
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %45, ptr noundef %7) #17
  br label %825

233:                                              ; preds = %225, %222
  %234 = sitofp <2 x i32> %190 to <2 x float>
  %235 = fsub <2 x float> %182, %234
  br label %290

236:                                              ; preds = %198
  br i1 %212, label %260, label %237

237:                                              ; preds = %236
  %238 = add nsw <2 x i32> %203, %190
  %239 = and <2 x i32> %238, <i32 1, i32 1>
  %240 = icmp eq <2 x i32> %239, zeroinitializer
  %241 = extractelement <2 x i1> %240, i64 0
  %242 = extractelement <2 x i32> %203, i64 0
  %243 = extractelement <2 x i32> %206, i64 0
  %244 = select i1 %241, i32 %242, i32 %243
  %245 = sitofp i32 %244 to float
  %246 = fsub float %84, %245
  %247 = extractelement <2 x i1> %240, i64 1
  br i1 %247, label %254, label %248

248:                                              ; preds = %237
  %249 = extractelement <2 x i32> %206, i64 1
  %250 = sitofp i32 %249 to float
  %251 = fsub float %105, %250
  %252 = insertelement <2 x float> poison, float %251, i64 0
  %253 = insertelement <2 x float> %252, float %246, i64 1
  br label %260

254:                                              ; preds = %237
  %255 = extractelement <2 x i32> %203, i64 1
  %256 = sitofp i32 %255 to float
  %257 = fsub float %105, %256
  %258 = insertelement <2 x float> poison, float %257, i64 0
  %259 = insertelement <2 x float> %258, float %246, i64 1
  br label %260

260:                                              ; preds = %248, %254, %236
  %261 = phi <2 x float> [ %253, %248 ], [ %259, %254 ], [ %182, %236 ]
  %262 = and i16 %192, 16
  %263 = icmp eq i16 %262, 0
  br i1 %263, label %290, label %264

264:                                              ; preds = %260
  %265 = extractelement <2 x float> %261, i64 1
  %266 = add nsw <2 x i32> %203, %190
  %267 = and <2 x i32> %266, <i32 1, i32 1>
  %268 = icmp eq <2 x i32> %267, zeroinitializer
  %269 = extractelement <2 x i1> %268, i64 0
  %270 = extractelement <2 x i32> %203, i64 0
  %271 = extractelement <2 x i32> %206, i64 0
  %272 = select i1 %269, i32 %271, i32 %270
  %273 = sitofp i32 %272 to float
  %274 = fsub float %265, %273
  %275 = extractelement <2 x i1> %268, i64 1
  br i1 %275, label %283, label %276

276:                                              ; preds = %264
  %277 = extractelement <2 x i32> %203, i64 1
  %278 = sitofp i32 %277 to float
  %279 = extractelement <2 x float> %261, i64 0
  %280 = fsub float %279, %278
  %281 = insertelement <2 x float> poison, float %280, i64 0
  %282 = insertelement <2 x float> %281, float %274, i64 1
  br label %290

283:                                              ; preds = %264
  %284 = extractelement <2 x i32> %206, i64 1
  %285 = sitofp i32 %284 to float
  %286 = extractelement <2 x float> %261, i64 0
  %287 = fsub float %286, %285
  %288 = insertelement <2 x float> poison, float %287, i64 0
  %289 = insertelement <2 x float> %288, float %274, i64 1
  br label %290

290:                                              ; preds = %233, %276, %283, %260, %195
  %291 = phi <2 x float> [ %197, %195 ], [ %235, %233 ], [ %282, %276 ], [ %289, %283 ], [ %261, %260 ]
  %292 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 48
  %293 = load float, ptr %292, align 4, !tbaa !71
  %294 = fcmp olt float %293, 1.000000e+00
  br i1 %294, label %295, label %323

295:                                              ; preds = %290
  %296 = fadd <2 x float> %291, <float -5.000000e-01, float -5.000000e-01>
  %297 = fsub float 1.000000e+00, %293
  %298 = insertelement <2 x float> poison, float %297, i64 0
  %299 = shufflevector <2 x float> %298, <2 x float> poison, <2 x i32> zeroinitializer
  %300 = fdiv <2 x float> %296, %299
  %301 = fadd <2 x float> %300, <float 5.000000e-01, float 5.000000e-01>
  %302 = fdiv <2 x float> %180, %299
  br label %323

303:                                              ; preds = %174
  %304 = fadd float %169, %84
  %305 = fcmp olt float %304, 0.000000e+00
  %306 = fadd float %175, %105
  %307 = fcmp olt float %306, 0.000000e+00
  %308 = select i1 %305, i1 true, i1 %307
  %309 = fsub float %84, %169
  %310 = fcmp ogt float %309, 1.000000e+00
  %311 = select i1 %308, i1 true, i1 %310
  %312 = fsub float %105, %175
  %313 = fcmp ogt float %312, 1.000000e+00
  %314 = select i1 %311, i1 true, i1 %313
  br i1 %314, label %321, label %315

315:                                              ; preds = %303
  %316 = getelementptr inbounds float, ptr %3, i64 2
  %317 = load float, ptr %316, align 4, !tbaa !68
  %318 = fcmp olt float %317, -1.000000e+00
  %319 = fcmp ogt float %317, 1.000000e+00
  %320 = or i1 %318, %319
  br i1 %320, label %321, label %392

321:                                              ; preds = %315, %303
  br i1 %28, label %825, label %322

322:                                              ; preds = %321
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %45, ptr noundef %7) #17
  br label %825

323:                                              ; preds = %174, %290, %295
  %324 = phi i1 [ false, %295 ], [ false, %290 ], [ %178, %174 ]
  %325 = phi <2 x float> [ %302, %295 ], [ %180, %290 ], [ %180, %174 ]
  %326 = phi <2 x float> [ %301, %295 ], [ %291, %290 ], [ %182, %174 ]
  %327 = extractelement <2 x float> %325, i64 0
  %328 = extractelement <2 x float> %326, i64 1
  %329 = fadd float %327, %328
  %330 = fcmp olt float %329, 0.000000e+00
  %331 = extractelement <2 x float> %325, i64 1
  %332 = extractelement <2 x float> %326, i64 0
  %333 = fadd float %331, %332
  %334 = fcmp olt float %333, 0.000000e+00
  %335 = select i1 %330, i1 true, i1 %334
  %336 = fsub float %328, %327
  %337 = fcmp ogt float %336, 1.000000e+00
  %338 = or i1 %335, %337
  %339 = fsub float %332, %331
  %340 = fcmp ogt float %339, 1.000000e+00
  %341 = select i1 %338, i1 true, i1 %340
  br i1 %341, label %342, label %392

342:                                              ; preds = %323
  br i1 %28, label %825, label %343

343:                                              ; preds = %342
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %45, ptr noundef %7) #17
  br label %825

344:                                              ; preds = %174
  br i1 %178, label %345, label %351

345:                                              ; preds = %183, %344
  %346 = phi i1 [ %187, %183 ], [ false, %344 ]
  %347 = fcmp ogt float %84, 1.000000e+00
  br i1 %347, label %365, label %348

348:                                              ; preds = %345
  %349 = fcmp olt float %84, 0.000000e+00
  br i1 %349, label %350, label %365

350:                                              ; preds = %348
  br label %365

351:                                              ; preds = %183, %344
  %352 = phi i1 [ %187, %183 ], [ false, %344 ]
  %353 = fcmp ogt float %84, 1.000000e+00
  br i1 %353, label %354, label %358

354:                                              ; preds = %351
  %355 = fptosi float %84 to i32
  %356 = sitofp i32 %355 to float
  %357 = fsub float %84, %356
  br label %374

358:                                              ; preds = %351
  %359 = fcmp olt float %84, 0.000000e+00
  br i1 %359, label %360, label %374

360:                                              ; preds = %358
  %361 = fptosi float %84 to i32
  %362 = sub nsw i32 1, %361
  %363 = sitofp i32 %362 to float
  %364 = fadd float %84, %363
  br label %374

365:                                              ; preds = %345, %350, %348
  %366 = phi float [ 1.000000e+00, %345 ], [ %84, %348 ], [ 0.000000e+00, %350 ]
  %367 = fcmp ogt float %105, 1.000000e+00
  %368 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %366, i64 1
  br i1 %367, label %392, label %369

369:                                              ; preds = %365
  %370 = fcmp olt float %105, 0.000000e+00
  %371 = insertelement <2 x float> %368, float %105, i64 0
  br i1 %370, label %372, label %392

372:                                              ; preds = %369
  %373 = insertelement <2 x float> %371, float 0.000000e+00, i64 0
  br label %392

374:                                              ; preds = %358, %360, %354
  %375 = phi float [ %357, %354 ], [ %364, %360 ], [ %84, %358 ]
  %376 = fcmp ogt float %105, 1.000000e+00
  br i1 %376, label %377, label %383

377:                                              ; preds = %374
  %378 = fptosi float %105 to i32
  %379 = sitofp i32 %378 to float
  %380 = fsub float %105, %379
  %381 = insertelement <2 x float> poison, float %380, i64 0
  %382 = insertelement <2 x float> %381, float %375, i64 1
  br label %392

383:                                              ; preds = %374
  %384 = fcmp olt float %105, 0.000000e+00
  %385 = insertelement <2 x float> %182, float %375, i64 1
  br i1 %384, label %386, label %392

386:                                              ; preds = %383
  %387 = fptosi float %105 to i32
  %388 = sub nsw i32 1, %387
  %389 = sitofp i32 %388 to float
  %390 = fadd float %105, %389
  %391 = insertelement <2 x float> %385, float %390, i64 0
  br label %392

392:                                              ; preds = %365, %323, %315, %377, %386, %383, %372, %369
  %393 = phi i1 [ %346, %372 ], [ %346, %369 ], [ %352, %377 ], [ %352, %386 ], [ %352, %383 ], [ false, %315 ], [ false, %323 ], [ %346, %365 ]
  %394 = phi i1 [ true, %372 ], [ true, %369 ], [ false, %377 ], [ false, %386 ], [ false, %383 ], [ %178, %315 ], [ %324, %323 ], [ true, %365 ]
  %395 = phi <2 x float> [ %180, %372 ], [ %180, %369 ], [ %180, %377 ], [ %180, %386 ], [ %180, %383 ], [ %180, %315 ], [ %325, %323 ], [ %180, %365 ]
  %396 = phi <2 x float> [ %373, %372 ], [ %371, %369 ], [ %382, %377 ], [ %391, %386 ], [ %385, %383 ], [ %182, %315 ], [ %326, %323 ], [ %368, %365 ]
  %397 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !73
  %398 = and i16 %397, 4
  %399 = icmp eq i16 %398, 0
  %400 = or i1 %399, %89
  br i1 %400, label %410, label %401

401:                                              ; preds = %392
  %402 = getelementptr inbounds %struct.ImBuf, ptr %45, i64 0, i32 2
  %403 = load i32, ptr %402, align 8, !tbaa !77
  %404 = getelementptr inbounds %struct.ImBuf, ptr %45, i64 0, i32 3
  %405 = load i32, ptr %404, align 4, !tbaa !78
  %406 = mul nsw i32 %405, %403
  %407 = load ptr, ptr %48, align 8, !tbaa !61
  %408 = sext i32 %406 to i64
  %409 = getelementptr inbounds i32, ptr %407, i64 %408
  store ptr %409, ptr %48, align 8, !tbaa !61
  br label %410

410:                                              ; preds = %392, %401
  %411 = zext i16 %59 to i32
  %412 = and i32 %411, 4
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %633, label %414

414:                                              ; preds = %410
  %415 = extractelement <2 x float> %395, i64 0
  %416 = extractelement <2 x float> %395, i64 1
  %417 = tail call fastcc float @max_ff(float noundef %415, float noundef %416) #18
  %418 = fcmp ogt float %417, 5.000000e-01
  %419 = select i1 %418, float 5.000000e-01, float %417
  %420 = getelementptr inbounds %struct.ImBuf, ptr %45, i64 0, i32 2
  %421 = load <2 x i32>, ptr %420, align 8, !tbaa !72
  %422 = extractelement <2 x i32> %421, i64 0
  %423 = extractelement <2 x i32> %421, i64 1
  %424 = tail call i32 @llvm.smin.i32(i32 %422, i32 %423)
  %425 = sitofp i32 %424 to float
  %426 = fdiv float 1.000000e+00, %425
  %427 = fdiv float %426, %419
  %428 = fcmp ogt float %427, 1.000000e+00
  %429 = fmul float %427, %427
  %430 = select i1 %428, float 1.000000e+00, float %429
  %431 = getelementptr inbounds %struct.ImBuf, ptr %45, i64 0, i32 19, i64 0
  %432 = load ptr, ptr %431, align 8, !tbaa !103
  %433 = icmp eq ptr %432, null
  %434 = fcmp olt float %419, %426
  %435 = select i1 %433, i1 true, i1 %434
  br i1 %435, label %455, label %442

436:                                              ; preds = %442
  %437 = getelementptr inbounds %struct.ImBuf, ptr %45, i64 0, i32 19, i64 %453
  %438 = load ptr, ptr %437, align 8, !tbaa !103
  %439 = icmp eq ptr %438, null
  %440 = fcmp olt float %419, %452
  %441 = select i1 %439, i1 true, i1 %440
  br i1 %441, label %455, label %442, !llvm.loop !104

442:                                              ; preds = %414, %436
  %443 = phi ptr [ %438, %436 ], [ %432, %414 ]
  %444 = phi ptr [ %443, %436 ], [ %45, %414 ]
  %445 = phi i64 [ %453, %436 ], [ 0, %414 ]
  %446 = getelementptr inbounds %struct.ImBuf, ptr %443, i64 0, i32 2
  %447 = load i32, ptr %446, align 8, !tbaa !77
  %448 = getelementptr inbounds %struct.ImBuf, ptr %443, i64 0, i32 3
  %449 = load i32, ptr %448, align 4, !tbaa !78
  %450 = tail call i32 @llvm.smin.i32(i32 %447, i32 %449)
  %451 = sitofp i32 %450 to float
  %452 = fdiv float 1.000000e+00, %451
  %453 = add nuw nsw i64 %445, 1
  %454 = icmp eq i64 %453, 20
  br i1 %454, label %455, label %436, !llvm.loop !104

455:                                              ; preds = %436, %442, %414
  %456 = phi float [ %426, %414 ], [ %452, %442 ], [ %452, %436 ]
  %457 = phi ptr [ %45, %414 ], [ %444, %442 ], [ %444, %436 ]
  %458 = phi ptr [ %45, %414 ], [ %443, %442 ], [ %443, %436 ]
  %459 = icmp eq ptr %457, %458
  %460 = and i16 %59, 1
  %461 = icmp eq i16 %460, 0
  %462 = and i1 %461, %459
  br i1 %462, label %473, label %463

463:                                              ; preds = %455
  %464 = sitofp <2 x i32> %421 to <2 x float>
  %465 = fdiv <2 x float> <float 5.000000e-01, float 5.000000e-01>, %464
  %466 = fcmp olt <2 x float> %395, %465
  %467 = extractelement <2 x i1> %466, i64 0
  %468 = extractelement <2 x float> %465, i64 0
  %469 = select i1 %467, float %468, float %415
  %470 = extractelement <2 x i1> %466, i64 1
  br i1 %470, label %471, label %473

471:                                              ; preds = %463
  %472 = extractelement <2 x float> %465, i64 1
  br label %473

473:                                              ; preds = %455, %463, %471
  %474 = phi float [ %472, %471 ], [ %416, %463 ], [ %416, %455 ]
  %475 = phi float [ %469, %471 ], [ %469, %463 ], [ %415, %455 ]
  %476 = load ptr, ptr %23, align 8, !tbaa !34
  %477 = icmp ne ptr %476, null
  %478 = and i16 %59, 2048
  %479 = icmp eq i16 %478, 0
  %480 = and i1 %479, %477
  %481 = zext i1 %393 to i16
  %482 = zext i1 %394 to i16
  br i1 %480, label %483, label %607

483:                                              ; preds = %473
  %484 = extractelement <2 x float> %396, i64 1
  %485 = fsub float %484, %475
  %486 = extractelement <2 x float> %396, i64 0
  %487 = fsub float %486, %474
  %488 = fadd float %484, %475
  %489 = fadd float %486, %474
  tail call fastcc void @boxsample(ptr noundef nonnull %458, float noundef %485, float noundef %487, float noundef %488, float noundef %489, ptr noundef nonnull %6, i16 noundef signext %481, i16 noundef signext %482) #18
  %490 = load float, ptr %21, align 4, !tbaa !79
  %491 = load float, ptr %20, align 8, !tbaa !80
  %492 = fadd float %490, %491
  %493 = load float, ptr %19, align 4, !tbaa !81
  %494 = fadd float %492, %493
  %495 = fadd float %485, %158
  %496 = fadd float %487, %157
  %497 = fadd float %488, %158
  %498 = fadd float %489, %157
  call fastcc void @boxsample(ptr noundef nonnull %458, float noundef %495, float noundef %496, float noundef %497, float noundef %498, ptr noundef nonnull %9, i16 noundef signext %481, i16 noundef signext %482) #18
  %499 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %500 = load <4 x float>, ptr %499, align 4
  %501 = shufflevector <4 x float> %500, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %502 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 2
  %503 = load <4 x float>, ptr %502, align 8
  %504 = shufflevector <4 x float> %503, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %505 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %506 = load <4 x float>, ptr %505, align 4
  %507 = shufflevector <4 x float> %506, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %508 = fadd float %485, %156
  %509 = fadd float %487, %155
  %510 = fadd float %488, %156
  %511 = fadd float %489, %155
  call fastcc void @boxsample(ptr noundef nonnull %458, float noundef %508, float noundef %509, float noundef %510, float noundef %511, ptr noundef nonnull %9, i16 noundef signext %481, i16 noundef signext %482) #18
  %512 = load float, ptr %499, align 4, !tbaa !79
  %513 = load float, ptr %502, align 8, !tbaa !80
  %514 = load float, ptr %505, align 4, !tbaa !81
  %515 = load ptr, ptr %23, align 8, !tbaa !34
  %516 = insertelement <2 x float> %504, float %512, i64 1
  %517 = insertelement <2 x float> %501, float %513, i64 1
  %518 = fadd <2 x float> %516, %517
  %519 = insertelement <2 x float> %507, float %514, i64 1
  %520 = fadd <2 x float> %518, %519
  %521 = insertelement <2 x float> poison, float %494, i64 0
  %522 = shufflevector <2 x float> %521, <2 x float> poison, <2 x i32> zeroinitializer
  %523 = fsub <2 x float> %522, %520
  store <2 x float> %523, ptr %515, align 4, !tbaa !68
  br i1 %459, label %601, label %524

524:                                              ; preds = %483
  call fastcc void @boxsample(ptr noundef nonnull %457, float noundef %485, float noundef %487, float noundef %488, float noundef %489, ptr noundef nonnull %9, i16 noundef signext %481, i16 noundef signext %482) #18
  %525 = fsub float %456, %419
  %526 = fmul float %525, 2.000000e+00
  %527 = fdiv float %526, %456
  %528 = fcmp ult float %527, 1.000000e+00
  %529 = load float, ptr %505, align 4, !tbaa !81
  br i1 %528, label %537, label %530

530:                                              ; preds = %524
  %531 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 4
  %532 = load float, ptr %531, align 8, !tbaa !82
  %533 = load <2 x float>, ptr %499, align 4, !tbaa !68
  %534 = shufflevector <2 x float> %533, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %535 = insertelement <4 x float> %534, float %529, i64 2
  %536 = insertelement <4 x float> %535, float %532, i64 3
  br label %552

537:                                              ; preds = %524
  %538 = fsub float 1.000000e+00, %527
  %539 = load <2 x float>, ptr %499, align 4, !tbaa !68
  %540 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 4
  %541 = load float, ptr %540, align 8, !tbaa !82
  %542 = load <4 x float>, ptr %21, align 4, !tbaa !68
  %543 = insertelement <4 x float> poison, float %527, i64 0
  %544 = shufflevector <4 x float> %543, <4 x float> poison, <4 x i32> zeroinitializer
  %545 = shufflevector <2 x float> %539, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %546 = insertelement <4 x float> %545, float %529, i64 2
  %547 = insertelement <4 x float> %546, float %541, i64 3
  %548 = fmul <4 x float> %544, %547
  %549 = insertelement <4 x float> poison, float %538, i64 0
  %550 = shufflevector <4 x float> %549, <4 x float> poison, <4 x i32> zeroinitializer
  %551 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %550, <4 x float> %542, <4 x float> %548)
  br label %552

552:                                              ; preds = %537, %530
  %553 = phi float [ %538, %537 ], [ %416, %530 ]
  %554 = phi <4 x float> [ %551, %537 ], [ %536, %530 ]
  %555 = phi <2 x float> [ %539, %537 ], [ %533, %530 ]
  store <4 x float> %554, ptr %21, align 4
  %556 = shufflevector <2 x float> %555, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %557 = fadd <2 x float> %555, %556
  %558 = extractelement <2 x float> %557, i64 0
  %559 = fadd float %558, %529
  %560 = fmul float %527, %559
  %561 = tail call float @llvm.fmuladd.f32(float %553, float %494, float %560)
  call fastcc void @boxsample(ptr noundef nonnull %457, float noundef %495, float noundef %496, float noundef %497, float noundef %498, ptr noundef nonnull %9, i16 noundef signext %481, i16 noundef signext %482) #18
  %562 = load <4 x float>, ptr %505, align 4
  %563 = shufflevector <4 x float> %562, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %564 = load <4 x float>, ptr %499, align 4
  %565 = shufflevector <4 x float> %564, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %566 = load <4 x float>, ptr %502, align 8
  %567 = shufflevector <4 x float> %566, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  call fastcc void @boxsample(ptr noundef nonnull %457, float noundef %508, float noundef %509, float noundef %510, float noundef %511, ptr noundef nonnull %9, i16 noundef signext %481, i16 noundef signext %482) #18
  %568 = load <2 x float>, ptr %499, align 4, !tbaa !68
  %569 = shufflevector <2 x float> %567, <2 x float> %568, <2 x i32> <i32 0, i32 2>
  %570 = shufflevector <2 x float> %565, <2 x float> %568, <2 x i32> <i32 0, i32 3>
  %571 = fadd <2 x float> %569, %570
  %572 = load float, ptr %505, align 4, !tbaa !81
  %573 = insertelement <2 x float> %563, float %572, i64 1
  %574 = fadd <2 x float> %571, %573
  %575 = insertelement <2 x float> poison, float %527, i64 0
  %576 = shufflevector <2 x float> %575, <2 x float> poison, <2 x i32> zeroinitializer
  %577 = fmul <2 x float> %576, %574
  %578 = insertelement <2 x float> poison, float %553, i64 0
  %579 = shufflevector <2 x float> %578, <2 x float> poison, <2 x i32> zeroinitializer
  %580 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %579, <2 x float> %520, <2 x float> %577)
  %581 = load ptr, ptr %23, align 8, !tbaa !34
  %582 = insertelement <2 x float> poison, float %561, i64 0
  %583 = shufflevector <2 x float> %582, <2 x float> poison, <2 x i32> zeroinitializer
  %584 = fsub <2 x float> %583, %580
  store <2 x float> %584, ptr %581, align 4, !tbaa !68
  %585 = fcmp olt float %527, 1.000000e+00
  br i1 %585, label %586, label %601

586:                                              ; preds = %552
  %587 = fsub float 1.000000e+00, %527
  %588 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 4
  %589 = load float, ptr %588, align 8, !tbaa !82
  %590 = load <4 x float>, ptr %21, align 4, !tbaa !68
  %591 = insertelement <4 x float> poison, float %527, i64 0
  %592 = shufflevector <4 x float> %591, <4 x float> poison, <4 x i32> zeroinitializer
  %593 = shufflevector <2 x float> %568, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %594 = insertelement <4 x float> %593, float %572, i64 2
  %595 = insertelement <4 x float> %594, float %589, i64 3
  %596 = fmul <4 x float> %592, %595
  %597 = insertelement <4 x float> poison, float %587, i64 0
  %598 = shufflevector <4 x float> %597, <4 x float> poison, <4 x i32> zeroinitializer
  %599 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %598, <4 x float> %590, <4 x float> %596)
  store <4 x float> %599, ptr %21, align 4, !tbaa !68
  %600 = load <2 x float>, ptr %581, align 4, !tbaa !68
  br label %601

601:                                              ; preds = %552, %586, %483
  %602 = phi ptr [ %581, %552 ], [ %581, %586 ], [ %515, %483 ]
  %603 = phi <2 x float> [ %584, %552 ], [ %600, %586 ], [ %523, %483 ]
  %604 = insertelement <2 x float> poison, float %430, i64 0
  %605 = shufflevector <2 x float> %604, <2 x float> poison, <2 x i32> zeroinitializer
  %606 = fmul <2 x float> %605, %603
  store <2 x float> %606, ptr %602, align 4, !tbaa !68
  br label %701

607:                                              ; preds = %473
  %608 = extractelement <2 x float> %396, i64 1
  %609 = fadd float %608, %475
  %610 = fsub float %608, %475
  %611 = extractelement <2 x float> %396, i64 0
  %612 = fadd float %611, %474
  %613 = fsub float %611, %474
  tail call fastcc void @boxsample(ptr noundef nonnull %458, float noundef %610, float noundef %613, float noundef %609, float noundef %612, ptr noundef nonnull %6, i16 noundef signext %481, i16 noundef signext %482) #18
  br i1 %459, label %701, label %614

614:                                              ; preds = %607
  call fastcc void @boxsample(ptr noundef nonnull %457, float noundef %610, float noundef %613, float noundef %609, float noundef %612, ptr noundef nonnull %9, i16 noundef signext %481, i16 noundef signext %482) #18
  %615 = fsub float %456, %419
  %616 = fmul float %615, 2.000000e+00
  %617 = fdiv float %616, %456
  %618 = fcmp ult float %617, 1.000000e+00
  br i1 %618, label %622, label %619

619:                                              ; preds = %614
  %620 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %621 = load <4 x float>, ptr %620, align 4, !tbaa !68
  store <4 x float> %621, ptr %21, align 4, !tbaa !68
  br label %701

622:                                              ; preds = %614
  %623 = fsub float 1.000000e+00, %617
  %624 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %625 = load <4 x float>, ptr %21, align 4, !tbaa !68
  %626 = load <4 x float>, ptr %624, align 4, !tbaa !68
  %627 = insertelement <4 x float> poison, float %617, i64 0
  %628 = shufflevector <4 x float> %627, <4 x float> poison, <4 x i32> zeroinitializer
  %629 = fmul <4 x float> %628, %626
  %630 = insertelement <4 x float> poison, float %623, i64 0
  %631 = shufflevector <4 x float> %630, <4 x float> poison, <4 x i32> zeroinitializer
  %632 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %631, <4 x float> %625, <4 x float> %629)
  store <4 x float> %632, ptr %21, align 4, !tbaa !68
  br label %701

633:                                              ; preds = %410
  %634 = and i32 %411, 1
  %635 = icmp eq i32 %634, 0
  %636 = extractelement <2 x float> %395, i64 0
  %637 = extractelement <2 x float> %395, i64 1
  br i1 %635, label %650, label %638

638:                                              ; preds = %633
  %639 = getelementptr inbounds %struct.ImBuf, ptr %45, i64 0, i32 2
  %640 = load <2 x i32>, ptr %639, align 8, !tbaa !72
  %641 = sitofp <2 x i32> %640 to <2 x float>
  %642 = fdiv <2 x float> <float 5.000000e-01, float 5.000000e-01>, %641
  %643 = fcmp olt <2 x float> %395, %642
  %644 = extractelement <2 x i1> %643, i64 0
  %645 = extractelement <2 x float> %642, i64 0
  %646 = select i1 %644, float %645, float %636
  %647 = extractelement <2 x i1> %643, i64 1
  br i1 %647, label %648, label %650

648:                                              ; preds = %638
  %649 = extractelement <2 x float> %642, i64 1
  br label %650

650:                                              ; preds = %638, %648, %633
  %651 = phi float [ %649, %648 ], [ %637, %638 ], [ %637, %633 ]
  %652 = phi float [ %646, %648 ], [ %646, %638 ], [ %636, %633 ]
  %653 = load ptr, ptr %23, align 8, !tbaa !34
  %654 = icmp ne ptr %653, null
  %655 = and i16 %59, 2048
  %656 = icmp eq i16 %655, 0
  %657 = and i1 %656, %654
  %658 = extractelement <2 x float> %396, i64 1
  %659 = fsub float %658, %652
  %660 = extractelement <2 x float> %396, i64 0
  %661 = fsub float %660, %651
  %662 = fadd float %658, %652
  %663 = fadd float %660, %651
  %664 = zext i1 %393 to i16
  %665 = zext i1 %394 to i16
  tail call fastcc void @boxsample(ptr noundef nonnull %45, float noundef %659, float noundef %661, float noundef %662, float noundef %663, ptr noundef nonnull %6, i16 noundef signext %664, i16 noundef signext %665) #18
  br i1 %657, label %666, label %701

666:                                              ; preds = %650
  %667 = load float, ptr %21, align 4, !tbaa !79
  %668 = load float, ptr %20, align 8, !tbaa !80
  %669 = fadd float %667, %668
  %670 = load float, ptr %19, align 4, !tbaa !81
  %671 = fadd float %669, %670
  %672 = fadd float %659, %158
  %673 = fadd float %661, %157
  %674 = fadd float %662, %158
  %675 = fadd float %663, %157
  call fastcc void @boxsample(ptr noundef nonnull %45, float noundef %672, float noundef %673, float noundef %674, float noundef %675, ptr noundef nonnull %9, i16 noundef signext %664, i16 noundef signext %665) #18
  %676 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %677 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 2
  %678 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %679 = load <4 x float>, ptr %678, align 4
  %680 = shufflevector <4 x float> %679, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %681 = fadd float %659, %156
  %682 = fadd float %661, %155
  %683 = fadd float %662, %156
  %684 = fadd float %663, %155
  %685 = load <4 x float>, ptr %676, align 4
  %686 = shufflevector <4 x float> %685, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %687 = load <4 x float>, ptr %677, align 8
  %688 = shufflevector <4 x float> %687, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  call fastcc void @boxsample(ptr noundef nonnull %45, float noundef %681, float noundef %682, float noundef %683, float noundef %684, ptr noundef nonnull %9, i16 noundef signext %664, i16 noundef signext %665) #18
  %689 = load float, ptr %676, align 4, !tbaa !79
  %690 = load float, ptr %677, align 8, !tbaa !80
  %691 = insertelement <2 x float> %688, float %689, i64 1
  %692 = insertelement <2 x float> %686, float %690, i64 1
  %693 = fadd <2 x float> %691, %692
  %694 = load float, ptr %678, align 4, !tbaa !81
  %695 = insertelement <2 x float> %680, float %694, i64 1
  %696 = fadd <2 x float> %693, %695
  %697 = load ptr, ptr %23, align 8, !tbaa !34
  %698 = insertelement <2 x float> poison, float %671, i64 0
  %699 = shufflevector <2 x float> %698, <2 x float> poison, <2 x i32> zeroinitializer
  %700 = fsub <2 x float> %699, %696
  store <2 x float> %700, ptr %697, align 4, !tbaa !68
  br label %701

701:                                              ; preds = %650, %666, %601, %619, %622, %607
  %702 = load i16, ptr %78, align 4, !tbaa !65
  %703 = and i16 %702, 32
  %704 = icmp ne i16 %703, 0
  %705 = load float, ptr %22, align 8, !tbaa !82
  br i1 %704, label %706, label %712

706:                                              ; preds = %701
  %707 = load float, ptr %21, align 4, !tbaa !79
  %708 = load float, ptr %20, align 8, !tbaa !80
  %709 = load float, ptr %19, align 4, !tbaa !81
  %710 = tail call fastcc float @max_fff(float noundef %707, float noundef %708, float noundef %709) #18
  %711 = fmul float %705, %710
  store float %711, ptr %22, align 8, !tbaa !82
  br label %712

712:                                              ; preds = %701, %706
  %713 = phi float [ %711, %706 ], [ %705, %701 ]
  store float %713, ptr %6, align 8
  %714 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %715 = load i16, ptr %714, align 2, !tbaa !70
  %716 = and i16 %715, 4
  %717 = icmp eq i16 %716, 0
  br i1 %717, label %720, label %718

718:                                              ; preds = %712
  %719 = fsub float 1.000000e+00, %713
  store float %719, ptr %22, align 8, !tbaa !82
  br label %720

720:                                              ; preds = %718, %712
  %721 = phi float [ %719, %718 ], [ %713, %712 ]
  %722 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !73
  %723 = and i16 %722, 4
  %724 = icmp eq i16 %723, 0
  br i1 %724, label %739, label %725

725:                                              ; preds = %720
  %726 = load i32, ptr %86, align 8, !tbaa !74
  %727 = and i32 %726, 4
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %739, label %729

729:                                              ; preds = %725
  %730 = getelementptr inbounds %struct.ImBuf, ptr %45, i64 0, i32 2
  %731 = load i32, ptr %730, align 8, !tbaa !77
  %732 = getelementptr inbounds %struct.ImBuf, ptr %45, i64 0, i32 3
  %733 = load i32, ptr %732, align 4, !tbaa !78
  %734 = mul nsw i32 %733, %731
  %735 = load ptr, ptr %48, align 8, !tbaa !61
  %736 = sext i32 %734 to i64
  %737 = sub nsw i64 0, %736
  %738 = getelementptr inbounds i32, ptr %735, i64 %737
  store ptr %738, ptr %48, align 8, !tbaa !61
  br label %739

739:                                              ; preds = %729, %725, %720
  %740 = load ptr, ptr %23, align 8, !tbaa !34
  %741 = icmp eq ptr %740, null
  %742 = and i16 %702, 2048
  %743 = icmp eq i16 %742, 0
  %744 = or i1 %743, %741
  br i1 %744, label %758, label %745

745:                                              ; preds = %739
  %746 = load float, ptr %21, align 4, !tbaa !79
  %747 = fadd float %746, -5.000000e-01
  %748 = fmul float %747, -2.000000e+00
  store float %748, ptr %740, align 4, !tbaa !68
  %749 = load float, ptr %20, align 8, !tbaa !80
  %750 = fadd float %749, -5.000000e-01
  %751 = fmul float %750, 2.000000e+00
  %752 = getelementptr inbounds float, ptr %740, i64 1
  store float %751, ptr %752, align 4, !tbaa !68
  %753 = load float, ptr %19, align 4, !tbaa !81
  %754 = fadd float %753, -5.000000e-01
  %755 = fmul float %754, 2.000000e+00
  %756 = getelementptr inbounds float, ptr %740, i64 2
  store float %755, ptr %756, align 4, !tbaa !68
  %757 = load float, ptr %22, align 8, !tbaa !82
  br label %758

758:                                              ; preds = %745, %739
  %759 = phi float [ %757, %745 ], [ %721, %739 ]
  %760 = fcmp oeq float %759, 1.000000e+00
  %761 = fcmp ule float %759, 0x3F1A36E2E0000000
  %762 = or i1 %760, %761
  %763 = or i1 %704, %762
  br i1 %763, label %766, label %764

764:                                              ; preds = %758
  %765 = fdiv float 1.000000e+00, %759
  tail call fastcc void @mul_v3_fl(ptr noundef nonnull %21, float noundef %765) #18
  br label %766

766:                                              ; preds = %758, %764
  br i1 %28, label %768, label %767

767:                                              ; preds = %766
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %45, ptr noundef %7) #17
  br label %768

768:                                              ; preds = %767, %766
  %769 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 7
  %770 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %771 = load float, ptr %770, align 4, !tbaa !84
  %772 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %773 = load float, ptr %772, align 8, !tbaa !85
  %774 = load <2 x float>, ptr %769, align 4, !tbaa !68
  %775 = load <2 x float>, ptr %21, align 4, !tbaa !68
  %776 = fadd <2 x float> %775, <float -5.000000e-01, float -5.000000e-01>
  %777 = insertelement <2 x float> poison, float %771, i64 0
  %778 = shufflevector <2 x float> %777, <2 x float> poison, <2 x i32> zeroinitializer
  %779 = insertelement <2 x float> poison, float %773, i64 0
  %780 = shufflevector <2 x float> %779, <2 x float> poison, <2 x i32> zeroinitializer
  %781 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %776, <2 x float> %778, <2 x float> %780)
  %782 = fadd <2 x float> %781, <float -5.000000e-01, float -5.000000e-01>
  %783 = fmul <2 x float> %774, %782
  store <2 x float> %783, ptr %21, align 4, !tbaa !68
  %784 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 9
  %785 = load float, ptr %784, align 4, !tbaa !86
  %786 = load float, ptr %19, align 4, !tbaa !81
  %787 = fadd float %786, -5.000000e-01
  %788 = tail call float @llvm.fmuladd.f32(float %787, float %771, float %773)
  %789 = fadd float %788, -5.000000e-01
  %790 = fmul float %785, %789
  store float %790, ptr %19, align 4, !tbaa !81
  %791 = load i16, ptr %714, align 2, !tbaa !70
  %792 = and i16 %791, 1024
  %793 = icmp eq i16 %792, 0
  br i1 %793, label %794, label %809

794:                                              ; preds = %768
  %795 = extractelement <2 x float> %783, i64 0
  %796 = fcmp olt float %795, 0.000000e+00
  br i1 %796, label %797, label %798

797:                                              ; preds = %794
  store float 0.000000e+00, ptr %21, align 4, !tbaa !79
  br label %798

798:                                              ; preds = %797, %794
  %799 = phi float [ 0.000000e+00, %797 ], [ %795, %794 ]
  %800 = extractelement <2 x float> %783, i64 1
  %801 = fcmp olt float %800, 0.000000e+00
  br i1 %801, label %802, label %803

802:                                              ; preds = %798
  store float 0.000000e+00, ptr %20, align 8, !tbaa !80
  br label %803

803:                                              ; preds = %802, %798
  %804 = phi float [ 0.000000e+00, %802 ], [ %800, %798 ]
  %805 = fcmp olt float %790, 0.000000e+00
  %806 = insertelement <2 x float> poison, float %799, i64 0
  %807 = insertelement <2 x float> %806, float %804, i64 1
  br i1 %805, label %808, label %809

808:                                              ; preds = %803
  store float 0.000000e+00, ptr %19, align 4, !tbaa !81
  br label %809

809:                                              ; preds = %803, %808, %768
  %810 = phi float [ %790, %803 ], [ 0.000000e+00, %808 ], [ %790, %768 ]
  %811 = phi <2 x float> [ %807, %803 ], [ %807, %808 ], [ %783, %768 ]
  %812 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 6
  %813 = load float, ptr %812, align 8, !tbaa !87
  %814 = fcmp une float %813, 1.000000e+00
  br i1 %814, label %815, label %825

815:                                              ; preds = %809
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #19
  %816 = getelementptr inbounds float, ptr %12, i64 1
  %817 = getelementptr inbounds float, ptr %12, i64 2
  %818 = extractelement <2 x float> %811, i64 0
  %819 = extractelement <2 x float> %811, i64 1
  call void @rgb_to_hsv(float noundef %818, float noundef %819, float noundef %810, ptr noundef nonnull %12, ptr noundef nonnull %816, ptr noundef nonnull %817) #17
  %820 = load float, ptr %812, align 8, !tbaa !87
  %821 = load float, ptr %816, align 4, !tbaa !68
  %822 = fmul float %820, %821
  store float %822, ptr %816, align 4, !tbaa !68
  %823 = load float, ptr %12, align 4, !tbaa !68
  %824 = load float, ptr %817, align 4, !tbaa !68
  call void @hsv_to_rgb(float noundef %823, float noundef %822, float noundef %824, ptr noundef nonnull %21, ptr noundef nonnull %20, ptr noundef nonnull %19) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #19
  br label %825

825:                                              ; preds = %231, %232, %220, %221, %809, %815, %342, %343, %321, %322, %55, %56, %35, %18, %16
  %826 = phi i32 [ %17, %16 ], [ %26, %18 ], [ %26, %35 ], [ %26, %56 ], [ %26, %55 ], [ %26, %322 ], [ %26, %321 ], [ %26, %343 ], [ %26, %342 ], [ %26, %815 ], [ %26, %809 ], [ %26, %221 ], [ %26, %220 ], [ %26, %232 ], [ %26, %231 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #19
  ret i32 %826
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !105 {
  %3 = load float, ptr %1, align 4, !tbaa !68
  store float %3, ptr %0, align 4, !tbaa !68
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !68
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @imagewraposa_aniso(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 !PGOFuncName !106 {
  %9 = alloca %struct.TexResult, align 8
  %10 = alloca %struct.afdata_t, align 4
  %11 = alloca [21 x ptr], align 16
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #19
  %21 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 38
  %22 = load i32, ptr %21, align 4, !tbaa !100
  %23 = icmp eq i32 %22, 2
  %24 = select i1 %23, ptr @feline_eval, ptr @area_sample
  %25 = icmp eq i32 %22, 1
  %26 = select i1 %25, ptr @ewa_eval, ptr %24
  %27 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 3
  %28 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 2
  %29 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 1
  %30 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 4
  %31 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = icmp eq ptr %2, null
  %34 = icmp eq ptr %1, null
  %35 = and i1 %34, %33
  br i1 %35, label %864, label %36

36:                                               ; preds = %8
  br i1 %34, label %47, label %37

37:                                               ; preds = %36
  %38 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !41
  %39 = and i32 %38, 4096
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = tail call zeroext i8 @BKE_image_has_loaded_ibuf(ptr noundef nonnull %1) #17
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %864, label %44

44:                                               ; preds = %41, %37
  %45 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 51
  %46 = tail call ptr @BKE_image_pool_acquire_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %45, ptr noundef %7) #17
  br label %47

47:                                               ; preds = %44, %36
  %48 = phi ptr [ %46, %44 ], [ %2, %36 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !61
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !64
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %47
  br i1 %34, label %864, label %59

59:                                               ; preds = %58
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef %48, ptr noundef %7) #17
  br label %864

60:                                               ; preds = %54, %50
  br i1 %34, label %79, label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 10
  %63 = load i16, ptr %62, align 2, !tbaa !58
  %64 = or i16 %63, 512
  store i16 %64, ptr %62, align 2, !tbaa !58
  tail call fastcc void @image_mipmap_test(ptr noundef nonnull %0, ptr noundef nonnull %48) #18
  %65 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 30
  %66 = load i16, ptr %65, align 4, !tbaa !65
  %67 = zext i16 %66 to i32
  %68 = and i32 %67, 2
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %61
  %71 = load i16, ptr %62, align 2, !tbaa !58
  %72 = and i16 %71, 4096
  %73 = icmp eq i16 %72, 0
  %74 = and i32 %67, 32
  %75 = icmp eq i32 %74, 0
  %76 = and i1 %75, %73
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 5
  store i32 1, ptr %78, align 4, !tbaa !75
  br label %82

79:                                               ; preds = %60
  tail call fastcc void @image_mipmap_test(ptr noundef nonnull %0, ptr noundef nonnull %48) #18
  %80 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 30
  %81 = load i16, ptr %80, align 4, !tbaa !65
  br label %82

82:                                               ; preds = %79, %61, %70, %77
  %83 = phi i16 [ %81, %79 ], [ %66, %61 ], [ %66, %70 ], [ %66, %77 ]
  %84 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 5
  %85 = load i32, ptr %84, align 4, !tbaa !75
  %86 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 5
  store i32 %85, ptr %86, align 4, !tbaa !75
  %87 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 30
  %88 = and i16 %83, 16
  %89 = icmp eq i16 %88, 0
  %90 = getelementptr inbounds float, ptr %3, i64 1
  %91 = select i1 %89, ptr %90, ptr %3
  %92 = select i1 %89, ptr %3, ptr %90
  %93 = load float, ptr %92, align 4, !tbaa !68
  %94 = load float, ptr %91, align 4, !tbaa !68
  %95 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 6
  %96 = load i32, ptr %95, align 8, !tbaa !74
  %97 = and i32 %96, 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %82
  %100 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !102
  %101 = and i32 %100, 64
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %99
  %104 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !73
  %105 = and i16 %104, 4
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 3
  %109 = load i32, ptr %108, align 4, !tbaa !78
  %110 = sitofp i32 %109 to float
  %111 = fdiv float 5.000000e-01, %110
  %112 = fadd float %94, %111
  br label %113

113:                                              ; preds = %99, %103, %107, %82
  %114 = phi float [ %94, %103 ], [ %112, %107 ], [ %94, %99 ], [ %94, %82 ]
  %115 = load float, ptr %4, align 4, !tbaa !68
  %116 = load float, ptr %5, align 4, !tbaa !68
  %117 = fadd float %115, %116
  %118 = tail call fastcc float @min_fff(float noundef %115, float noundef %116, float noundef %117) #18
  %119 = tail call fastcc float @max_fff(float noundef %115, float noundef %116, float noundef %117) #18
  %120 = getelementptr inbounds float, ptr %4, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !68
  %122 = getelementptr inbounds float, ptr %5, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !68
  %124 = fadd float %121, %123
  %125 = tail call fastcc float @min_fff(float noundef %121, float noundef %123, float noundef %124) #18
  %126 = tail call fastcc float @max_fff(float noundef %121, float noundef %123, float noundef %124) #18
  %127 = insertelement <2 x float> poison, float %119, i64 0
  %128 = insertelement <2 x float> %127, float %126, i64 1
  %129 = insertelement <2 x float> poison, float %118, i64 0
  %130 = insertelement <2 x float> %129, float %125, i64 1
  %131 = fsub <2 x float> %128, %130
  %132 = fmul <2 x float> %131, <float 5.000000e-01, float 5.000000e-01>
  %133 = and i16 %83, 8192
  %134 = icmp eq i16 %133, 0
  %135 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 10
  %136 = load float, ptr %135, align 8, !tbaa !76
  br i1 %134, label %150, label %137

137:                                              ; preds = %113
  %138 = fmul float %136, 5.000000e-01
  %139 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 2
  %140 = load i32, ptr %139, align 8, !tbaa !77
  %141 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 3
  %142 = load i32, ptr %141, align 4, !tbaa !78
  %143 = tail call i32 @llvm.smin.i32(i32 %140, i32 %142)
  %144 = sitofp i32 %143 to float
  %145 = fdiv float %138, %144
  %146 = insertelement <2 x float> poison, float %145, i64 0
  %147 = shufflevector <2 x float> %146, <2 x float> poison, <2 x i32> zeroinitializer
  %148 = fcmp ogt <2 x float> %147, %132
  %149 = select <2 x i1> %148, <2 x float> %147, <2 x float> %132
  br label %165

150:                                              ; preds = %113
  %151 = fcmp une float %136, 1.000000e+00
  br i1 %151, label %152, label %165

152:                                              ; preds = %150
  %153 = insertelement <2 x float> poison, float %136, i64 0
  %154 = shufflevector <2 x float> %153, <2 x float> poison, <2 x i32> zeroinitializer
  %155 = fmul <2 x float> %132, %154
  %156 = fmul float %115, %136
  store float %156, ptr %4, align 4, !tbaa !68
  %157 = load float, ptr %135, align 8, !tbaa !76
  %158 = fmul float %121, %157
  store float %158, ptr %120, align 4, !tbaa !68
  %159 = load float, ptr %135, align 8, !tbaa !76
  %160 = load float, ptr %5, align 4, !tbaa !68
  %161 = fmul float %159, %160
  store float %161, ptr %5, align 4, !tbaa !68
  %162 = load float, ptr %135, align 8, !tbaa !76
  %163 = load float, ptr %122, align 4, !tbaa !68
  %164 = fmul float %162, %163
  store float %164, ptr %122, align 4, !tbaa !68
  br label %165

165:                                              ; preds = %150, %152, %137
  %166 = phi <2 x float> [ %149, %137 ], [ %155, %152 ], [ %132, %150 ]
  %167 = shufflevector <2 x float> %166, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br i1 %89, label %175, label %168

168:                                              ; preds = %165
  %169 = load float, ptr %4, align 4, !tbaa !68
  %170 = load float, ptr %120, align 4, !tbaa !68
  store float %170, ptr %4, align 4, !tbaa !68
  %171 = fneg float %169
  store float %171, ptr %120, align 4, !tbaa !68
  %172 = load float, ptr %5, align 4, !tbaa !68
  %173 = load float, ptr %122, align 4, !tbaa !68
  store float %173, ptr %5, align 4, !tbaa !68
  %174 = fneg float %172
  store float %174, ptr %122, align 4, !tbaa !68
  br label %175

175:                                              ; preds = %168, %165
  %176 = phi <2 x float> [ %166, %168 ], [ %167, %165 ]
  %177 = shufflevector <2 x float> %176, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %178 = fcmp ogt <2 x float> %176, <float 2.500000e-01, float 2.500000e-01>
  %179 = fcmp olt <2 x float> %177, <float 0x3EE4F8B580000000, float 0x3EE4F8B580000000>
  %180 = select <2 x i1> %179, <2 x float> <float 0x3EE4F8B580000000, float 0x3EE4F8B580000000>, <2 x float> %177
  %181 = shufflevector <2 x i1> %178, <2 x i1> poison, <2 x i32> <i32 1, i32 0>
  %182 = select <2 x i1> %181, <2 x float> <float 2.500000e-01, float 2.500000e-01>, <2 x float> %180
  %183 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 42
  %184 = load i16, ptr %183, align 8, !tbaa !69
  %185 = insertelement <2 x float> poison, float %93, i64 0
  %186 = insertelement <2 x float> %185, float %114, i64 1
  switch i16 %184, label %330 [
    i16 3, label %187
    i16 1, label %323
    i16 5, label %200
    i16 4, label %280
    i16 2, label %302
  ]

187:                                              ; preds = %175
  %188 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %189 = load i16, ptr %188, align 2, !tbaa !70
  %190 = zext i16 %189 to i32
  %191 = and i32 %190, 384
  %192 = icmp eq i32 %191, 384
  br i1 %192, label %330, label %193

193:                                              ; preds = %187
  %194 = and i32 %190, 128
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %330

196:                                              ; preds = %193
  %197 = and i32 %190, 256
  %198 = icmp eq i32 %197, 0
  %199 = select i1 %198, i32 3, i32 2
  br label %330

200:                                              ; preds = %175
  %201 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %186)
  %202 = fptosi <2 x float> %201 to <2 x i32>
  %203 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %204 = load i16, ptr %203, align 2, !tbaa !70
  %205 = and i16 %204, 24
  %206 = icmp eq i16 %205, 24
  br i1 %206, label %207, label %210

207:                                              ; preds = %200
  %208 = sitofp <2 x i32> %202 to <2 x float>
  %209 = fsub <2 x float> %186, %208
  br label %267

210:                                              ; preds = %200
  %211 = fsub <2 x float> %186, %182
  %212 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %211)
  %213 = fadd <2 x float> %186, %182
  %214 = fptosi <2 x float> %212 to <2 x i32>
  %215 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %213)
  %216 = fptosi <2 x float> %215 to <2 x i32>
  %217 = icmp eq <2 x i32> %214, %216
  %218 = extractelement <2 x i1> %217, i64 0
  %219 = extractelement <2 x i1> %217, i64 1
  %220 = select i1 %218, i1 %219, i1 false
  %221 = and i16 %204, 8
  %222 = icmp eq i16 %221, 0
  br i1 %220, label %244, label %223

223:                                              ; preds = %210
  br i1 %222, label %232, label %224

224:                                              ; preds = %223
  %225 = shufflevector <2 x i32> %202, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %226 = add nsw <2 x i32> %225, %214
  %227 = and <2 x i32> %226, <i32 1, i32 1>
  %228 = icmp eq <2 x i32> %227, zeroinitializer
  %229 = select <2 x i1> %228, <2 x i32> %214, <2 x i32> %216
  %230 = sitofp <2 x i32> %229 to <2 x float>
  %231 = fsub <2 x float> %186, %230
  br label %232

232:                                              ; preds = %224, %223
  %233 = phi <2 x float> [ %231, %224 ], [ %186, %223 ]
  %234 = and i16 %204, 16
  %235 = icmp eq i16 %234, 0
  br i1 %235, label %267, label %236

236:                                              ; preds = %232
  %237 = shufflevector <2 x i32> %202, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %238 = add nsw <2 x i32> %237, %214
  %239 = and <2 x i32> %238, <i32 1, i32 1>
  %240 = icmp eq <2 x i32> %239, zeroinitializer
  %241 = select <2 x i1> %240, <2 x i32> %216, <2 x i32> %214
  %242 = sitofp <2 x i32> %241 to <2 x float>
  %243 = fsub <2 x float> %233, %242
  br label %267

244:                                              ; preds = %210
  br i1 %222, label %245, label %253

245:                                              ; preds = %244
  %246 = shufflevector <2 x i32> %202, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %247 = add nsw <2 x i32> %246, %202
  %248 = extractelement <2 x i32> %247, i64 0
  %249 = and i32 %248, 1
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %245
  br i1 %34, label %864, label %252

252:                                              ; preds = %251
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %48, ptr noundef %7) #17
  br label %864

253:                                              ; preds = %245, %244
  %254 = and i16 %204, 16
  %255 = icmp eq i16 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %253
  %257 = shufflevector <2 x i32> %202, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %258 = add nsw <2 x i32> %257, %202
  %259 = extractelement <2 x i32> %258, i64 0
  %260 = and i32 %259, 1
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %264, label %262

262:                                              ; preds = %256
  br i1 %34, label %864, label %263

263:                                              ; preds = %262
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %48, ptr noundef %7) #17
  br label %864

264:                                              ; preds = %256, %253
  %265 = sitofp <2 x i32> %202 to <2 x float>
  %266 = fsub <2 x float> %186, %265
  br label %267

267:                                              ; preds = %232, %236, %264, %207
  %268 = phi <2 x float> [ %209, %207 ], [ %243, %236 ], [ %233, %232 ], [ %266, %264 ]
  %269 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 48
  %270 = load float, ptr %269, align 4, !tbaa !71
  %271 = fcmp olt float %270, 1.000000e+00
  br i1 %271, label %272, label %302

272:                                              ; preds = %267
  %273 = fsub float 1.000000e+00, %270
  %274 = fdiv float 1.000000e+00, %273
  %275 = fadd <2 x float> %268, <float -5.000000e-01, float -5.000000e-01>
  %276 = insertelement <2 x float> poison, float %274, i64 0
  %277 = shufflevector <2 x float> %276, <2 x float> poison, <2 x i32> zeroinitializer
  %278 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %275, <2 x float> %277, <2 x float> <float 5.000000e-01, float 5.000000e-01>)
  %279 = fmul <2 x float> %182, %277
  br label %302

280:                                              ; preds = %175
  %281 = extractelement <2 x float> %182, i64 0
  %282 = fadd float %281, %93
  %283 = fcmp olt float %282, 0.000000e+00
  %284 = extractelement <2 x float> %182, i64 1
  %285 = fadd float %284, %114
  %286 = fcmp olt float %285, 0.000000e+00
  %287 = select i1 %283, i1 true, i1 %286
  %288 = fsub float %93, %281
  %289 = fcmp ogt float %288, 1.000000e+00
  %290 = select i1 %287, i1 true, i1 %289
  %291 = fsub float %114, %284
  %292 = fcmp ogt float %291, 1.000000e+00
  %293 = select i1 %290, i1 true, i1 %292
  br i1 %293, label %300, label %294

294:                                              ; preds = %280
  %295 = getelementptr inbounds float, ptr %3, i64 2
  %296 = load float, ptr %295, align 4, !tbaa !68
  %297 = fcmp olt float %296, -1.000000e+00
  %298 = fcmp ogt float %296, 1.000000e+00
  %299 = or i1 %297, %298
  br i1 %299, label %300, label %336

300:                                              ; preds = %294, %280
  br i1 %34, label %864, label %301

301:                                              ; preds = %300
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %48, ptr noundef %7) #17
  br label %864

302:                                              ; preds = %175, %267, %272
  %303 = phi <2 x float> [ %268, %267 ], [ %278, %272 ], [ %186, %175 ]
  %304 = phi <2 x float> [ %182, %267 ], [ %279, %272 ], [ %182, %175 ]
  %305 = extractelement <2 x float> %304, i64 0
  %306 = fadd <2 x float> %304, %303
  %307 = extractelement <2 x float> %306, i64 0
  %308 = fcmp olt float %307, 0.000000e+00
  %309 = extractelement <2 x float> %303, i64 1
  %310 = extractelement <2 x float> %304, i64 1
  %311 = fadd float %310, %309
  %312 = fcmp olt float %311, 0.000000e+00
  %313 = select i1 %308, i1 true, i1 %312
  %314 = fsub <2 x float> %303, %304
  %315 = extractelement <2 x float> %314, i64 0
  %316 = fcmp ogt float %315, 1.000000e+00
  %317 = or i1 %313, %316
  %318 = fsub float %309, %310
  %319 = fcmp ogt float %318, 1.000000e+00
  %320 = select i1 %317, i1 true, i1 %319
  br i1 %320, label %321, label %336

321:                                              ; preds = %302
  br i1 %34, label %864, label %322

322:                                              ; preds = %321
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %48, ptr noundef %7) #17
  br label %864

323:                                              ; preds = %175
  %324 = fcmp ogt <2 x float> %186, <float 1.000000e+00, float 1.000000e+00>
  %325 = fcmp olt <2 x float> %186, zeroinitializer
  %326 = select <2 x i1> %325, <2 x float> zeroinitializer, <2 x float> %186
  %327 = select <2 x i1> %324, <2 x float> <float 1.000000e+00, float 1.000000e+00>, <2 x float> %326
  %328 = extractelement <2 x float> %182, i64 0
  %329 = extractelement <2 x float> %182, i64 1
  br label %336

330:                                              ; preds = %175, %187, %193, %196
  %331 = phi i32 [ 4, %187 ], [ 1, %193 ], [ %199, %196 ], [ 0, %175 ]
  %332 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %186)
  %333 = fsub <2 x float> %186, %332
  %334 = extractelement <2 x float> %182, i64 0
  %335 = extractelement <2 x float> %182, i64 1
  br label %336

336:                                              ; preds = %302, %294, %330, %323
  %337 = phi float [ %328, %323 ], [ %334, %330 ], [ %281, %294 ], [ %305, %302 ]
  %338 = phi float [ %329, %323 ], [ %335, %330 ], [ %284, %294 ], [ %310, %302 ]
  %339 = phi i32 [ 4, %323 ], [ %331, %330 ], [ 0, %294 ], [ 0, %302 ]
  %340 = phi <2 x float> [ %327, %323 ], [ %333, %330 ], [ %186, %294 ], [ %303, %302 ]
  %341 = load i16, ptr %87, align 4, !tbaa !65
  %342 = and i16 %341, 1
  %343 = zext nneg i16 %342 to i32
  %344 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !73
  %345 = and i16 %344, 4
  %346 = icmp eq i16 %345, 0
  %347 = or i1 %346, %98
  br i1 %347, label %357, label %348

348:                                              ; preds = %336
  %349 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 2
  %350 = load i32, ptr %349, align 8, !tbaa !77
  %351 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 3
  %352 = load i32, ptr %351, align 4, !tbaa !78
  %353 = mul nsw i32 %352, %350
  %354 = load ptr, ptr %51, align 8, !tbaa !61
  %355 = sext i32 %353 to i64
  %356 = getelementptr inbounds i32, ptr %354, i64 %355
  store ptr %356, ptr %51, align 8, !tbaa !61
  br label %357

357:                                              ; preds = %336, %348
  call fastcc void @copy_v2_v2(ptr noundef nonnull %10, ptr noundef nonnull %4) #18
  %358 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 1
  call fastcc void @copy_v2_v2(ptr noundef nonnull %358, ptr noundef nonnull %5) #18
  %359 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 2
  store i32 %343, ptr %359, align 4, !tbaa !107
  %360 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 3
  store i32 %339, ptr %360, align 4, !tbaa !109
  %361 = load float, ptr %10, align 4, !tbaa !68
  %362 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %363 = load float, ptr %362, align 4, !tbaa !68
  %364 = fmul float %363, %363
  %365 = tail call float @llvm.fmuladd.f32(float %361, float %361, float %364)
  %366 = fcmp ogt float %365, 4.000000e+00
  br i1 %366, label %367, label %370

367:                                              ; preds = %357
  %368 = call fastcc float @len_v2(ptr noundef nonnull %10) #18
  %369 = fdiv float 2.000000e+00, %368
  call fastcc void @mul_v2_fl(ptr noundef nonnull %10, float noundef %369) #18
  br label %370

370:                                              ; preds = %367, %357
  %371 = load float, ptr %358, align 4, !tbaa !68
  %372 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 1, i64 1
  %373 = load float, ptr %372, align 4, !tbaa !68
  %374 = fmul float %373, %373
  %375 = tail call float @llvm.fmuladd.f32(float %371, float %371, float %374)
  %376 = fcmp ogt float %375, 4.000000e+00
  br i1 %376, label %377, label %380

377:                                              ; preds = %370
  %378 = call fastcc float @len_v2(ptr noundef nonnull %358) #18
  %379 = fdiv float 2.000000e+00, %378
  call fastcc void @mul_v2_fl(ptr noundef nonnull %358, float noundef %379) #18
  br label %380

380:                                              ; preds = %377, %370
  %381 = and i16 %341, 4
  %382 = icmp eq i16 %381, 0
  br i1 %382, label %618, label %383

383:                                              ; preds = %380
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %11) #19
  %384 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 2
  %385 = load i32, ptr %384, align 8, !tbaa !77
  %386 = sitofp i32 %385 to float
  %387 = tail call float @sqrtf(float noundef %386) #17
  %388 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 3
  %389 = load i32, ptr %388, align 4, !tbaa !78
  %390 = sitofp i32 %389 to float
  %391 = fdiv float %390, %387
  %392 = load float, ptr %4, align 4, !tbaa !68
  %393 = fmul float %387, %392
  %394 = load float, ptr %120, align 4, !tbaa !68
  %395 = fmul float %394, %391
  %396 = load <2 x float>, ptr %5, align 4, !tbaa !68
  %397 = insertelement <2 x float> poison, float %387, i64 0
  %398 = insertelement <2 x float> %397, float %391, i64 1
  %399 = fmul <2 x float> %398, %396
  %400 = extractelement <2 x float> %399, i64 1
  %401 = fmul float %400, %400
  %402 = tail call float @llvm.fmuladd.f32(float %395, float %395, float %401)
  %403 = extractelement <2 x float> %399, i64 0
  %404 = fmul float %403, %400
  %405 = tail call float @llvm.fmuladd.f32(float %393, float %395, float %404)
  %406 = fmul float %405, -2.000000e+00
  %407 = fmul <2 x float> %399, %399
  %408 = extractelement <2 x float> %407, i64 0
  %409 = tail call float @llvm.fmuladd.f32(float %393, float %393, float %408)
  %410 = fmul float %406, %406
  %411 = fmul float %410, -2.500000e-01
  %412 = tail call float @llvm.fmuladd.f32(float %402, float %409, float %411)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #19
  call void @BLI_ewa_imp2radangle(float noundef %402, float noundef %406, float noundef %409, float noundef %412, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #17
  %413 = load i32, ptr %21, align 4, !tbaa !100
  %414 = icmp eq i32 %413, 2
  br i1 %414, label %415, label %452

415:                                              ; preds = %383
  %416 = load float, ptr %12, align 4, !tbaa !68
  %417 = fmul float %387, %416
  %418 = load float, ptr %13, align 4, !tbaa !68
  %419 = fmul float %387, %418
  %420 = call fastcc float @max_ff(float noundef %417, float noundef 1.000000e+00) #18
  store float %420, ptr %12, align 4, !tbaa !68
  %421 = call fastcc float @max_ff(float noundef %419, float noundef 1.000000e+00) #18
  store float %421, ptr %13, align 4, !tbaa !68
  %422 = fdiv float %420, %421
  %423 = call float @llvm.fmuladd.f32(float %422, float 2.000000e+00, float -1.000000e+00)
  %424 = call fastcc i32 @iroundf(float noundef %423) #18
  %425 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 7
  %426 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 39
  %427 = load i32, ptr %426, align 8, !tbaa !110
  %428 = call i32 @llvm.smin.i32(i32 %424, i32 %427)
  store i32 %428, ptr %425, align 4, !tbaa !111
  %429 = sitofp i32 %428 to float
  %430 = fcmp ogt float %423, %429
  br i1 %430, label %431, label %436

431:                                              ; preds = %415
  %432 = fmul float %420, 2.000000e+00
  %433 = add nsw i32 %428, 1
  %434 = sitofp i32 %433 to float
  %435 = fdiv float %432, %434
  store float %435, ptr %13, align 4, !tbaa !68
  br label %436

436:                                              ; preds = %431, %415
  %437 = phi float [ %435, %431 ], [ %421, %415 ]
  %438 = insertelement <2 x float> poison, float %420, i64 0
  %439 = insertelement <2 x float> %438, float %437, i64 1
  %440 = shufflevector <2 x float> %397, <2 x float> poison, <2 x i32> zeroinitializer
  %441 = fdiv <2 x float> %439, %440
  %442 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 4
  store <2 x float> %441, ptr %442, align 4, !tbaa !68
  %443 = load float, ptr %14, align 4, !tbaa !68
  %444 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 6
  store float %443, ptr %444, align 4, !tbaa !112
  %445 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 8
  %446 = load i32, ptr %388, align 4, !tbaa !78
  %447 = sitofp i32 %446 to float
  %448 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %387, i64 1
  %449 = insertelement <2 x float> poison, float %387, i64 0
  %450 = insertelement <2 x float> %449, float %447, i64 1
  %451 = fdiv <2 x float> %448, %450
  store <2 x float> %451, ptr %445, align 4, !tbaa !68
  br label %463

452:                                              ; preds = %383
  %453 = load float, ptr %15, align 4, !tbaa !68
  %454 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 39
  %455 = load i32, ptr %454, align 8, !tbaa !110
  %456 = sitofp i32 %455 to float
  %457 = fcmp ogt float %453, %456
  %458 = load float, ptr %13, align 4
  %459 = load float, ptr %12, align 4
  %460 = fdiv float %459, %456
  %461 = select i1 %457, float %460, float %458
  %462 = fmul float %387, %461
  store float %462, ptr %13, align 4, !tbaa !68
  br label %463

463:                                              ; preds = %452, %436
  %464 = phi float [ %462, %452 ], [ %437, %436 ]
  %465 = call fastcc float @max_ff(float noundef %464, float noundef 0x3E45798EE0000000) #18
  %466 = call float @logf(float noundef %465) #17
  store ptr %48, ptr %11, align 16, !tbaa !103
  %467 = getelementptr inbounds i8, ptr %11, i64 8
  %468 = getelementptr i8, ptr %48, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %467, ptr noundef nonnull align 8 dereferenceable(160) %468, i64 160, i1 false), !tbaa !103
  br label %469

469:                                              ; preds = %469, %463
  %470 = phi i64 [ 0, %463 ], [ %477, %469 ]
  %471 = phi <2 x i32> [ <i32 1, i32 0>, %463 ], [ %476, %469 ]
  %472 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 19, i64 %470
  %473 = load <2 x ptr>, ptr %472, align 8, !tbaa !103
  %474 = icmp ne <2 x ptr> %473, zeroinitializer
  %475 = zext <2 x i1> %474 to <2 x i32>
  %476 = add <2 x i32> %471, %475
  %477 = add nuw i64 %470, 2
  %478 = icmp eq i64 %477, 20
  br i1 %478, label %479, label %469, !llvm.loop !113

479:                                              ; preds = %469
  %480 = fmul float %466, 0x3FF7154760000000
  %481 = fcmp olt float %480, 0.000000e+00
  br i1 %481, label %508, label %482

482:                                              ; preds = %479
  %483 = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %476)
  %484 = add nsw i32 %483, -1
  %485 = sitofp i32 %484 to float
  %486 = fcmp ult float %480, %485
  br i1 %486, label %495, label %487

487:                                              ; preds = %482
  %488 = sext i32 %484 to i64
  %489 = getelementptr inbounds [21 x ptr], ptr %11, i64 0, i64 %488
  %490 = load ptr, ptr %489, align 8, !tbaa !103
  %491 = load i32, ptr %21, align 4, !tbaa !100
  %492 = icmp eq i32 %491, 2
  br i1 %492, label %493, label %508

493:                                              ; preds = %487
  %494 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 7
  store i32 1, ptr %494, align 4, !tbaa !111
  br label %508

495:                                              ; preds = %482
  %496 = fcmp uno float %480, 0.000000e+00
  %497 = fptosi float %480 to i32
  %498 = select i1 %496, i32 0, i32 %497
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [21 x ptr], ptr %11, i64 0, i64 %499
  %501 = load ptr, ptr %500, align 8, !tbaa !103
  %502 = add nsw i32 %498, 1
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds [21 x ptr], ptr %11, i64 0, i64 %503
  %505 = load ptr, ptr %504, align 8, !tbaa !103
  %506 = call float @llvm.floor.f32(float %480)
  %507 = fsub float %480, %506
  br label %508

508:                                              ; preds = %479, %495, %493, %487
  %509 = phi float [ 0.000000e+00, %493 ], [ 0.000000e+00, %487 ], [ %507, %495 ], [ 0.000000e+00, %479 ]
  %510 = phi ptr [ %490, %493 ], [ %490, %487 ], [ %501, %495 ], [ %48, %479 ]
  %511 = phi ptr [ %490, %493 ], [ %490, %487 ], [ %505, %495 ], [ %48, %479 ]
  %512 = load ptr, ptr %31, align 8, !tbaa !34
  %513 = icmp eq ptr %512, null
  br i1 %513, label %600, label %514

514:                                              ; preds = %508
  %515 = load i16, ptr %87, align 4, !tbaa !65
  %516 = and i16 %515, 2048
  %517 = icmp eq i16 %516, 0
  br i1 %517, label %518, label %600

518:                                              ; preds = %514
  %519 = extractelement <2 x float> %340, i64 0
  %520 = extractelement <2 x float> %340, i64 1
  call void %26(ptr noundef nonnull %6, ptr noundef %510, float noundef %519, float noundef %520, ptr noundef nonnull %10) #17, !callees !116
  %521 = load float, ptr %29, align 4, !tbaa !79
  %522 = load float, ptr %28, align 8, !tbaa !80
  %523 = fadd float %521, %522
  %524 = load float, ptr %27, align 4, !tbaa !81
  %525 = fadd float %523, %524
  %526 = load float, ptr %4, align 4, !tbaa !68
  %527 = fadd float %519, %526
  %528 = load float, ptr %120, align 4, !tbaa !68
  %529 = fadd float %520, %528
  call void %26(ptr noundef nonnull %9, ptr noundef %510, float noundef %527, float noundef %529, ptr noundef nonnull %10) #17, !callees !116
  %530 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %531 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 2
  %532 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %533 = load <4 x float>, ptr %532, align 4
  %534 = shufflevector <4 x float> %533, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %535 = load float, ptr %5, align 4, !tbaa !68
  %536 = fadd float %519, %535
  %537 = load float, ptr %122, align 4, !tbaa !68
  %538 = fadd float %520, %537
  %539 = load <4 x float>, ptr %530, align 4
  %540 = shufflevector <4 x float> %539, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %541 = load <4 x float>, ptr %531, align 8
  %542 = shufflevector <4 x float> %541, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  call void %26(ptr noundef nonnull %9, ptr noundef %510, float noundef %536, float noundef %538, ptr noundef nonnull %10) #17, !callees !116
  %543 = load float, ptr %530, align 4, !tbaa !79
  %544 = load float, ptr %531, align 8, !tbaa !80
  %545 = insertelement <2 x float> %542, float %543, i64 1
  %546 = insertelement <2 x float> %540, float %544, i64 1
  %547 = fadd <2 x float> %545, %546
  %548 = load float, ptr %532, align 4, !tbaa !81
  %549 = insertelement <2 x float> %534, float %548, i64 1
  %550 = fadd <2 x float> %547, %549
  %551 = load ptr, ptr %31, align 8, !tbaa !34
  %552 = insertelement <2 x float> poison, float %525, i64 0
  %553 = shufflevector <2 x float> %552, <2 x float> poison, <2 x i32> zeroinitializer
  %554 = fsub <2 x float> %553, %550
  store <2 x float> %554, ptr %551, align 4, !tbaa !68
  %555 = icmp eq ptr %511, %510
  br i1 %555, label %617, label %556

556:                                              ; preds = %518
  call void %26(ptr noundef nonnull %9, ptr noundef %511, float noundef %519, float noundef %520, ptr noundef nonnull %10) #17, !callees !116
  %557 = load <4 x float>, ptr %530, align 4, !tbaa !68
  %558 = load <4 x float>, ptr %29, align 4, !tbaa !68
  %559 = fsub <4 x float> %557, %558
  %560 = insertelement <4 x float> poison, float %509, i64 0
  %561 = shufflevector <4 x float> %560, <4 x float> poison, <4 x i32> zeroinitializer
  %562 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %561, <4 x float> %559, <4 x float> %558)
  store <4 x float> %562, ptr %29, align 4, !tbaa !68
  %563 = shufflevector <4 x float> %557, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %564 = fadd <4 x float> %557, %563
  %565 = shufflevector <4 x float> %557, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %566 = fadd <4 x float> %564, %565
  %567 = extractelement <4 x float> %566, i64 0
  %568 = fsub float %567, %525
  %569 = call float @llvm.fmuladd.f32(float %509, float %568, float %525)
  %570 = load float, ptr %4, align 4, !tbaa !68
  %571 = fadd float %519, %570
  %572 = load float, ptr %120, align 4, !tbaa !68
  %573 = fadd float %520, %572
  call void %26(ptr noundef nonnull %9, ptr noundef %511, float noundef %571, float noundef %573, ptr noundef nonnull %10) #17, !callees !116
  %574 = load <4 x float>, ptr %532, align 4
  %575 = shufflevector <4 x float> %574, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %576 = load float, ptr %5, align 4, !tbaa !68
  %577 = fadd float %519, %576
  %578 = load float, ptr %122, align 4, !tbaa !68
  %579 = fadd float %520, %578
  %580 = load <4 x float>, ptr %530, align 4
  %581 = shufflevector <4 x float> %580, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %582 = load <4 x float>, ptr %531, align 8
  %583 = shufflevector <4 x float> %582, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  call void %26(ptr noundef nonnull %9, ptr noundef %511, float noundef %577, float noundef %579, ptr noundef nonnull %10) #17, !callees !116
  %584 = load float, ptr %530, align 4, !tbaa !79
  %585 = load float, ptr %531, align 8, !tbaa !80
  %586 = insertelement <2 x float> %583, float %584, i64 1
  %587 = insertelement <2 x float> %581, float %585, i64 1
  %588 = fadd <2 x float> %586, %587
  %589 = load float, ptr %532, align 4, !tbaa !81
  %590 = insertelement <2 x float> %575, float %589, i64 1
  %591 = fadd <2 x float> %588, %590
  %592 = fsub <2 x float> %591, %550
  %593 = insertelement <2 x float> poison, float %509, i64 0
  %594 = shufflevector <2 x float> %593, <2 x float> poison, <2 x i32> zeroinitializer
  %595 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %594, <2 x float> %592, <2 x float> %550)
  %596 = load ptr, ptr %31, align 8, !tbaa !34
  %597 = insertelement <2 x float> poison, float %569, i64 0
  %598 = shufflevector <2 x float> %597, <2 x float> poison, <2 x i32> zeroinitializer
  %599 = fsub <2 x float> %598, %595
  store <2 x float> %599, ptr %596, align 4, !tbaa !68
  br label %617

600:                                              ; preds = %514, %508
  %601 = extractelement <2 x float> %340, i64 0
  %602 = extractelement <2 x float> %340, i64 1
  call void %26(ptr noundef nonnull %6, ptr noundef %510, float noundef %601, float noundef %602, ptr noundef nonnull %10) #17, !callees !116
  %603 = icmp eq ptr %511, %510
  br i1 %603, label %612, label %604

604:                                              ; preds = %600
  call void %26(ptr noundef nonnull %9, ptr noundef %511, float noundef %601, float noundef %602, ptr noundef nonnull %10) #17, !callees !116
  %605 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %606 = load <4 x float>, ptr %605, align 4, !tbaa !68
  %607 = load <4 x float>, ptr %29, align 4, !tbaa !68
  %608 = fsub <4 x float> %606, %607
  %609 = insertelement <4 x float> poison, float %509, i64 0
  %610 = shufflevector <4 x float> %609, <4 x float> poison, <4 x i32> zeroinitializer
  %611 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %610, <4 x float> %608, <4 x float> %607)
  store <4 x float> %611, ptr %29, align 4, !tbaa !68
  br label %612

612:                                              ; preds = %604, %600
  %613 = fsub float %601, %337
  %614 = fsub float %602, %338
  %615 = fadd float %337, %601
  %616 = fadd float %338, %602
  call fastcc void @alpha_clip_aniso(ptr noundef nonnull %48, float noundef %613, float noundef %614, float noundef %615, float noundef %616, i32 noundef %339, ptr noundef nonnull %6) #18
  br label %617

617:                                              ; preds = %518, %556, %612
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %11) #19
  br label %733

618:                                              ; preds = %380
  %619 = load i32, ptr %21, align 4, !tbaa !100
  %620 = icmp eq i32 %619, 2
  br i1 %620, label %621, label %682

621:                                              ; preds = %618
  %622 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 2
  %623 = load i32, ptr %622, align 8, !tbaa !77
  %624 = sitofp i32 %623 to float
  %625 = tail call float @sqrtf(float noundef %624) #17
  %626 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 3
  %627 = load i32, ptr %626, align 4, !tbaa !78
  %628 = sitofp i32 %627 to float
  %629 = fdiv float %628, %625
  %630 = load float, ptr %4, align 4, !tbaa !68
  %631 = fmul float %625, %630
  %632 = load float, ptr %120, align 4, !tbaa !68
  %633 = fmul float %632, %629
  %634 = load <2 x float>, ptr %5, align 4, !tbaa !68
  %635 = insertelement <2 x float> poison, float %625, i64 0
  %636 = insertelement <2 x float> %635, float %629, i64 1
  %637 = fmul <2 x float> %636, %634
  %638 = extractelement <2 x float> %637, i64 1
  %639 = fmul float %638, %638
  %640 = tail call float @llvm.fmuladd.f32(float %633, float %633, float %639)
  %641 = extractelement <2 x float> %637, i64 0
  %642 = fmul float %641, %638
  %643 = tail call float @llvm.fmuladd.f32(float %631, float %633, float %642)
  %644 = fmul float %643, -2.000000e+00
  %645 = fmul <2 x float> %637, %637
  %646 = extractelement <2 x float> %645, i64 0
  %647 = tail call float @llvm.fmuladd.f32(float %631, float %631, float %646)
  %648 = fmul float %644, %644
  %649 = fmul float %648, -2.500000e-01
  %650 = tail call float @llvm.fmuladd.f32(float %640, float %647, float %649)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #19
  call void @BLI_ewa_imp2radangle(float noundef %640, float noundef %644, float noundef %647, float noundef %650, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19) #17
  %651 = load float, ptr %16, align 4, !tbaa !68
  %652 = fmul float %625, %651
  %653 = load float, ptr %17, align 4, !tbaa !68
  %654 = fmul float %625, %653
  %655 = call fastcc float @max_ff(float noundef %652, float noundef 1.000000e+00) #18
  %656 = call fastcc float @max_ff(float noundef %654, float noundef 1.000000e+00) #18
  %657 = fdiv float %655, %656
  %658 = call float @llvm.fmuladd.f32(float %657, float 2.000000e+00, float -1.000000e+00)
  %659 = call fastcc i32 @iroundf(float noundef %658) #18
  %660 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 7
  store i32 %659, ptr %660, align 4, !tbaa !111
  %661 = sitofp i32 %659 to float
  %662 = fcmp ogt float %658, %661
  %663 = fmul float %655, 2.000000e+00
  %664 = add nsw i32 %659, 1
  %665 = sitofp i32 %664 to float
  %666 = fdiv float %663, %665
  %667 = select i1 %662, float %666, float %656
  %668 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 4
  %669 = insertelement <2 x float> poison, float %655, i64 0
  %670 = insertelement <2 x float> %669, float %667, i64 1
  %671 = shufflevector <2 x float> %635, <2 x float> poison, <2 x i32> zeroinitializer
  %672 = fdiv <2 x float> %670, %671
  store <2 x float> %672, ptr %668, align 4, !tbaa !68
  %673 = load float, ptr %18, align 4, !tbaa !68
  %674 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 6
  store float %673, ptr %674, align 4, !tbaa !112
  %675 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 8
  %676 = load i32, ptr %626, align 4, !tbaa !78
  %677 = sitofp i32 %676 to float
  %678 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %625, i64 1
  %679 = insertelement <2 x float> poison, float %625, i64 0
  %680 = insertelement <2 x float> %679, float %677, i64 1
  %681 = fdiv <2 x float> %678, %680
  store <2 x float> %681, ptr %675, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #19
  br label %682

682:                                              ; preds = %621, %618
  %683 = load ptr, ptr %31, align 8, !tbaa !34
  %684 = icmp eq ptr %683, null
  br i1 %684, label %726, label %685

685:                                              ; preds = %682
  %686 = load i16, ptr %87, align 4, !tbaa !65
  %687 = and i16 %686, 2048
  %688 = icmp eq i16 %687, 0
  br i1 %688, label %689, label %726

689:                                              ; preds = %685
  %690 = extractelement <2 x float> %340, i64 0
  %691 = extractelement <2 x float> %340, i64 1
  call void %26(ptr noundef nonnull %6, ptr noundef nonnull %48, float noundef %690, float noundef %691, ptr noundef nonnull %10) #17, !callees !116
  %692 = load float, ptr %29, align 4, !tbaa !79
  %693 = load float, ptr %28, align 8, !tbaa !80
  %694 = fadd float %692, %693
  %695 = load float, ptr %27, align 4, !tbaa !81
  %696 = fadd float %694, %695
  %697 = load float, ptr %4, align 4, !tbaa !68
  %698 = fadd float %690, %697
  %699 = load float, ptr %120, align 4, !tbaa !68
  %700 = fadd float %691, %699
  call void %26(ptr noundef nonnull %9, ptr noundef nonnull %48, float noundef %698, float noundef %700, ptr noundef nonnull %10) #17, !callees !116
  %701 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %702 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 2
  %703 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %704 = load <4 x float>, ptr %703, align 4
  %705 = shufflevector <4 x float> %704, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %706 = load float, ptr %5, align 4, !tbaa !68
  %707 = fadd float %690, %706
  %708 = load float, ptr %122, align 4, !tbaa !68
  %709 = fadd float %691, %708
  %710 = load <4 x float>, ptr %701, align 4
  %711 = shufflevector <4 x float> %710, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %712 = load <4 x float>, ptr %702, align 8
  %713 = shufflevector <4 x float> %712, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  call void %26(ptr noundef nonnull %9, ptr noundef nonnull %48, float noundef %707, float noundef %709, ptr noundef nonnull %10) #17, !callees !116
  %714 = load float, ptr %701, align 4, !tbaa !79
  %715 = load float, ptr %702, align 8, !tbaa !80
  %716 = insertelement <2 x float> %713, float %714, i64 1
  %717 = insertelement <2 x float> %711, float %715, i64 1
  %718 = fadd <2 x float> %716, %717
  %719 = load float, ptr %703, align 4, !tbaa !81
  %720 = insertelement <2 x float> %705, float %719, i64 1
  %721 = fadd <2 x float> %718, %720
  %722 = load ptr, ptr %31, align 8, !tbaa !34
  %723 = insertelement <2 x float> poison, float %696, i64 0
  %724 = shufflevector <2 x float> %723, <2 x float> poison, <2 x i32> zeroinitializer
  %725 = fsub <2 x float> %724, %721
  store <2 x float> %725, ptr %722, align 4, !tbaa !68
  br label %733

726:                                              ; preds = %685, %682
  %727 = extractelement <2 x float> %340, i64 0
  %728 = extractelement <2 x float> %340, i64 1
  call void %26(ptr noundef nonnull %6, ptr noundef nonnull %48, float noundef %727, float noundef %728, ptr noundef nonnull %10) #17, !callees !116
  %729 = fsub float %727, %337
  %730 = fsub float %728, %338
  %731 = fadd float %337, %727
  %732 = fadd float %338, %728
  call fastcc void @alpha_clip_aniso(ptr noundef nonnull %48, float noundef %729, float noundef %730, float noundef %731, float noundef %732, i32 noundef %339, ptr noundef nonnull %6) #18
  br label %733

733:                                              ; preds = %689, %726, %617
  %734 = load i16, ptr %87, align 4, !tbaa !65
  %735 = and i16 %734, 32
  %736 = icmp ne i16 %735, 0
  %737 = load float, ptr %30, align 8, !tbaa !82
  br i1 %736, label %738, label %744

738:                                              ; preds = %733
  %739 = load float, ptr %29, align 4, !tbaa !79
  %740 = load float, ptr %28, align 8, !tbaa !80
  %741 = load float, ptr %27, align 4, !tbaa !81
  %742 = call fastcc float @max_fff(float noundef %739, float noundef %740, float noundef %741) #18
  %743 = fmul float %737, %742
  store float %743, ptr %30, align 8, !tbaa !82
  br label %744

744:                                              ; preds = %733, %738
  %745 = phi float [ %743, %738 ], [ %737, %733 ]
  store float %745, ptr %6, align 8
  %746 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %747 = load i16, ptr %746, align 2, !tbaa !70
  %748 = and i16 %747, 4
  %749 = icmp eq i16 %748, 0
  br i1 %749, label %752, label %750

750:                                              ; preds = %744
  %751 = fsub float 1.000000e+00, %745
  store float %751, ptr %30, align 8, !tbaa !82
  br label %752

752:                                              ; preds = %750, %744
  %753 = phi float [ %751, %750 ], [ %745, %744 ]
  %754 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !73
  %755 = and i16 %754, 4
  %756 = icmp eq i16 %755, 0
  br i1 %756, label %771, label %757

757:                                              ; preds = %752
  %758 = load i32, ptr %95, align 8, !tbaa !74
  %759 = and i32 %758, 4
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %771, label %761

761:                                              ; preds = %757
  %762 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 2
  %763 = load i32, ptr %762, align 8, !tbaa !77
  %764 = getelementptr inbounds %struct.ImBuf, ptr %48, i64 0, i32 3
  %765 = load i32, ptr %764, align 4, !tbaa !78
  %766 = mul nsw i32 %765, %763
  %767 = load ptr, ptr %51, align 8, !tbaa !61
  %768 = sext i32 %766 to i64
  %769 = sub nsw i64 0, %768
  %770 = getelementptr inbounds i32, ptr %767, i64 %769
  store ptr %770, ptr %51, align 8, !tbaa !61
  br label %771

771:                                              ; preds = %761, %757, %752
  %772 = load ptr, ptr %31, align 8, !tbaa !34
  %773 = icmp eq ptr %772, null
  %774 = and i16 %734, 2048
  %775 = icmp eq i16 %774, 0
  %776 = or i1 %775, %773
  br i1 %776, label %790, label %777

777:                                              ; preds = %771
  %778 = load float, ptr %29, align 4, !tbaa !79
  %779 = fadd float %778, -5.000000e-01
  %780 = fmul float %779, -2.000000e+00
  store float %780, ptr %772, align 4, !tbaa !68
  %781 = load float, ptr %28, align 8, !tbaa !80
  %782 = fadd float %781, -5.000000e-01
  %783 = fmul float %782, 2.000000e+00
  %784 = getelementptr inbounds float, ptr %772, i64 1
  store float %783, ptr %784, align 4, !tbaa !68
  %785 = load float, ptr %27, align 4, !tbaa !81
  %786 = fadd float %785, -5.000000e-01
  %787 = fmul float %786, 2.000000e+00
  %788 = getelementptr inbounds float, ptr %772, i64 2
  store float %787, ptr %788, align 4, !tbaa !68
  %789 = load float, ptr %30, align 8, !tbaa !82
  br label %790

790:                                              ; preds = %777, %771
  %791 = phi float [ %789, %777 ], [ %753, %771 ]
  %792 = fcmp oeq float %791, 1.000000e+00
  %793 = fcmp ule float %791, 0x3F1A36E2E0000000
  %794 = or i1 %792, %793
  %795 = or i1 %736, %794
  br i1 %795, label %804, label %796

796:                                              ; preds = %790
  %797 = fdiv float 1.000000e+00, %791
  %798 = load <2 x float>, ptr %29, align 4, !tbaa !68
  %799 = insertelement <2 x float> poison, float %797, i64 0
  %800 = shufflevector <2 x float> %799, <2 x float> poison, <2 x i32> zeroinitializer
  %801 = fmul <2 x float> %800, %798
  store <2 x float> %801, ptr %29, align 4, !tbaa !68
  %802 = load float, ptr %27, align 4, !tbaa !81
  %803 = fmul float %797, %802
  store float %803, ptr %27, align 4, !tbaa !81
  br label %804

804:                                              ; preds = %790, %796
  br i1 %34, label %807, label %805

805:                                              ; preds = %804
  call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %48, ptr noundef %7) #17
  %806 = load i16, ptr %746, align 2, !tbaa !70
  br label %807

807:                                              ; preds = %805, %804
  %808 = phi i16 [ %806, %805 ], [ %747, %804 ]
  %809 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 7
  %810 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %811 = load float, ptr %810, align 4, !tbaa !84
  %812 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %813 = load float, ptr %812, align 8, !tbaa !85
  %814 = load <2 x float>, ptr %809, align 4, !tbaa !68
  %815 = load <2 x float>, ptr %29, align 4, !tbaa !68
  %816 = fadd <2 x float> %815, <float -5.000000e-01, float -5.000000e-01>
  %817 = insertelement <2 x float> poison, float %811, i64 0
  %818 = shufflevector <2 x float> %817, <2 x float> poison, <2 x i32> zeroinitializer
  %819 = insertelement <2 x float> poison, float %813, i64 0
  %820 = shufflevector <2 x float> %819, <2 x float> poison, <2 x i32> zeroinitializer
  %821 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %816, <2 x float> %818, <2 x float> %820)
  %822 = fadd <2 x float> %821, <float -5.000000e-01, float -5.000000e-01>
  %823 = fmul <2 x float> %814, %822
  store <2 x float> %823, ptr %29, align 4, !tbaa !68
  %824 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 9
  %825 = load float, ptr %824, align 4, !tbaa !86
  %826 = load float, ptr %27, align 4, !tbaa !81
  %827 = fadd float %826, -5.000000e-01
  %828 = call float @llvm.fmuladd.f32(float %827, float %811, float %813)
  %829 = fadd float %828, -5.000000e-01
  %830 = fmul float %825, %829
  store float %830, ptr %27, align 4, !tbaa !81
  %831 = and i16 %808, 1024
  %832 = icmp eq i16 %831, 0
  br i1 %832, label %833, label %848

833:                                              ; preds = %807
  %834 = extractelement <2 x float> %823, i64 0
  %835 = fcmp olt float %834, 0.000000e+00
  br i1 %835, label %836, label %837

836:                                              ; preds = %833
  store float 0.000000e+00, ptr %29, align 4, !tbaa !79
  br label %837

837:                                              ; preds = %836, %833
  %838 = phi float [ 0.000000e+00, %836 ], [ %834, %833 ]
  %839 = extractelement <2 x float> %823, i64 1
  %840 = fcmp olt float %839, 0.000000e+00
  br i1 %840, label %841, label %842

841:                                              ; preds = %837
  store float 0.000000e+00, ptr %28, align 8, !tbaa !80
  br label %842

842:                                              ; preds = %841, %837
  %843 = phi float [ 0.000000e+00, %841 ], [ %839, %837 ]
  %844 = fcmp olt float %830, 0.000000e+00
  %845 = insertelement <2 x float> poison, float %838, i64 0
  %846 = insertelement <2 x float> %845, float %843, i64 1
  br i1 %844, label %847, label %848

847:                                              ; preds = %842
  store float 0.000000e+00, ptr %27, align 4, !tbaa !81
  br label %848

848:                                              ; preds = %842, %847, %807
  %849 = phi float [ %830, %842 ], [ 0.000000e+00, %847 ], [ %830, %807 ]
  %850 = phi <2 x float> [ %846, %842 ], [ %846, %847 ], [ %823, %807 ]
  %851 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 6
  %852 = load float, ptr %851, align 8, !tbaa !87
  %853 = fcmp une float %852, 1.000000e+00
  br i1 %853, label %854, label %864

854:                                              ; preds = %848
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #19
  %855 = getelementptr inbounds float, ptr %20, i64 1
  %856 = getelementptr inbounds float, ptr %20, i64 2
  %857 = extractelement <2 x float> %850, i64 0
  %858 = extractelement <2 x float> %850, i64 1
  call void @rgb_to_hsv(float noundef %857, float noundef %858, float noundef %849, ptr noundef nonnull %20, ptr noundef nonnull %855, ptr noundef nonnull %856) #17
  %859 = load float, ptr %851, align 8, !tbaa !87
  %860 = load float, ptr %855, align 4, !tbaa !68
  %861 = fmul float %859, %860
  store float %861, ptr %855, align 4, !tbaa !68
  %862 = load float, ptr %20, align 4, !tbaa !68
  %863 = load float, ptr %856, align 4, !tbaa !68
  call void @hsv_to_rgb(float noundef %862, float noundef %861, float noundef %863, ptr noundef nonnull %29, ptr noundef nonnull %28, ptr noundef nonnull %27) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #19
  br label %864

864:                                              ; preds = %262, %263, %251, %252, %848, %854, %321, %322, %300, %301, %58, %59, %41, %8
  %865 = icmp eq ptr %32, null
  %866 = select i1 %865, i32 1, i32 3
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #19
  ret i32 %866
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @image_mipmap_test(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !117 {
  %3 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 30
  %4 = load i16, ptr %3, align 4, !tbaa !65
  %5 = and i16 %4, 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %47, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !74
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !103
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 23
  %18 = load i32, ptr %17, align 4, !tbaa !118
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %47, label %21

21:                                               ; preds = %16
  tail call void @BLI_lock_thread(i32 noundef 0) #17
  %22 = load i32, ptr %17, align 4, !tbaa !118
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i16, ptr %3, align 4, !tbaa !65
  %27 = and i16 %26, 4096
  %28 = zext nneg i16 %27 to i32
  tail call void @IMB_remakemipmap(ptr noundef nonnull %1, i32 noundef %28) #17
  %29 = load i32, ptr %17, align 4, !tbaa !118
  %30 = and i32 %29, -5
  store i32 %30, ptr %17, align 4, !tbaa !118
  br label %31

31:                                               ; preds = %21, %25
  tail call void @BLI_unlock_thread(i32 noundef 0) #17
  %32 = load ptr, ptr %13, align 8, !tbaa !103
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %12, %31
  tail call void @BLI_lock_thread(i32 noundef 0) #17
  %35 = load ptr, ptr %13, align 8, !tbaa !103
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i16, ptr %3, align 4, !tbaa !65
  %39 = and i16 %38, 4096
  %40 = zext nneg i16 %39 to i32
  tail call void @IMB_makemipmap(ptr noundef nonnull %1, i32 noundef %40) #17
  br label %41

41:                                               ; preds = %34, %37
  tail call void @BLI_unlock_thread(i32 noundef 0) #17
  %42 = load ptr, ptr %13, align 8, !tbaa !103
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i16, ptr %3, align 4, !tbaa !65
  %46 = and i16 %45, -5
  store i16 %46, ptr %3, align 4, !tbaa !65
  br label %47

47:                                               ; preds = %16, %31, %7, %44, %41, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #6 !PGOFuncName !119 {
  %4 = tail call fastcc float @min_ff(float noundef %0, float noundef %1) #18
  %5 = tail call fastcc float @min_ff(float noundef %4, float noundef %2) #18
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !120 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !121 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !68
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !68
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !68
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @image_sample(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr nocapture noundef writeonly %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.TexResult, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #19
  %9 = tail call ptr @BKE_image_pool_acquire_ibuf(ptr noundef %0, ptr noundef null, ptr noundef %6) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call fastcc void @zero_v4(ptr noundef %5) #18
  br label %59

12:                                               ; preds = %7
  %13 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !73
  %14 = and i16 %13, 4
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !74
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !77
  %24 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !78
  %26 = mul nsw i32 %25, %23
  %27 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !61
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds i32, ptr %28, i64 %29
  store ptr %30, ptr %27, align 8, !tbaa !61
  br label %31

31:                                               ; preds = %21, %16, %12
  %32 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 5
  store i32 1, ptr %32, align 4, !tbaa !75
  %33 = fadd float %1, %3
  %34 = fadd float %2, %4
  call fastcc void @boxsample(ptr noundef nonnull %9, float noundef %1, float noundef %2, float noundef %33, float noundef %34, ptr noundef nonnull %8, i16 noundef signext 0, i16 noundef signext 1) #18
  %35 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 1
  call fastcc void @copy_v4_v4(ptr noundef %5, ptr noundef nonnull %35) #18
  %36 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !73
  %37 = and i16 %36, 4
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !74
  %42 = and i32 %41, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !77
  %47 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %48 = load i32, ptr %47, align 4, !tbaa !78
  %49 = mul nsw i32 %48, %46
  %50 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !61
  %52 = sext i32 %49 to i64
  %53 = sub nsw i64 0, %52
  %54 = getelementptr inbounds i32, ptr %51, i64 %53
  store ptr %54, ptr %50, align 8, !tbaa !61
  br label %55

55:                                               ; preds = %44, %39, %31
  %56 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 10
  %57 = load i16, ptr %56, align 2, !tbaa !58
  %58 = or i16 %57, 512
  store i16 %58, ptr %56, align 2, !tbaa !58
  tail call void @BKE_image_pool_release_ibuf(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %6) #17
  br label %59

59:                                               ; preds = %55, %11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v4(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !122 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !123 {
  %3 = load float, ptr %1, align 4, !tbaa !68
  store float %3, ptr %0, align 4, !tbaa !68
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !68
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !68
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !68
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !68
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !68
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ibuf_sample(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.TexResult, align 8
  %8 = alloca %struct.afdata_t, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #19
  store float %3, ptr %8, align 4, !tbaa !68
  %9 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  store float %3, ptr %9, align 4, !tbaa !68
  %10 = getelementptr inbounds %struct.afdata_t, ptr %8, i64 0, i32 1
  store float %4, ptr %10, align 4, !tbaa !68
  %11 = getelementptr inbounds %struct.afdata_t, ptr %8, i64 0, i32 1, i64 1
  store float %4, ptr %11, align 4, !tbaa !68
  %12 = getelementptr inbounds %struct.afdata_t, ptr %8, i64 0, i32 2
  store i32 1, ptr %12, align 4, !tbaa !107
  %13 = getelementptr inbounds %struct.afdata_t, ptr %8, i64 0, i32 3
  store i32 4, ptr %13, align 4, !tbaa !109
  call void @ewa_eval(ptr noundef nonnull %7, ptr noundef %0, float noundef %1, float noundef %2, ptr noundef nonnull %8) #18
  %14 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 1
  call fastcc void @copy_v4_v4(ptr noundef %5, ptr noundef nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ewa_eval(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !124 {
  %6 = alloca %struct.ReadEWAData, align 8
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  store float %2, ptr %7, align 4, !tbaa !68
  %8 = getelementptr inbounds float, ptr %7, i64 1
  store float %3, ptr %8, align 4, !tbaa !68
  store ptr %1, ptr %6, align 8, !tbaa !125
  %9 = getelementptr inbounds %struct.ReadEWAData, ptr %6, i64 0, i32 1
  store ptr %4, ptr %9, align 8, !tbaa !127
  %10 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !77
  %12 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !78
  %14 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !107
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !75
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 1
  %22 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 1
  call void @BLI_ewa_filter(i32 noundef %11, i32 noundef %13, i8 noundef zeroext %17, i8 noundef zeroext %20, ptr noundef nonnull %7, ptr noundef %4, ptr noundef nonnull %21, ptr noundef nonnull @ewa_read_pixel_cb, ptr noundef nonnull %6, ptr noundef nonnull %22) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !128 {
  %3 = load float, ptr %1, align 4, !tbaa !68
  store float %3, ptr %0, align 4, !tbaa !68
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !68
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !68
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !68
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !68
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @clipx_rctf_swap(ptr nocapture noundef %0, ptr nocapture noundef %1, float noundef %2) unnamed_addr #4 !PGOFuncName !129 {
  %4 = load i16, ptr %1, align 2, !tbaa !89
  %5 = icmp sgt i16 %4, 0
  br i1 %5, label %6, label %65

6:                                                ; preds = %3
  %7 = insertelement <2 x float> poison, float %2, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = insertelement <2 x float> poison, float %2, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  br label %11

11:                                               ; preds = %6, %60
  %12 = phi i16 [ %61, %60 ], [ %4, %6 ]
  %13 = phi i16 [ %63, %60 ], [ %4, %6 ]
  %14 = phi ptr [ %62, %60 ], [ %0, %6 ]
  %15 = getelementptr inbounds %struct.rctf, ptr %14, i64 0, i32 1
  %16 = load <2 x float>, ptr %14, align 4, !tbaa !68
  %17 = extractelement <2 x float> %16, i64 0
  %18 = fcmp olt float %17, 0.000000e+00
  br i1 %18, label %19, label %40

19:                                               ; preds = %11
  %20 = extractelement <2 x float> %16, i64 1
  %21 = fcmp olt float %20, 0.000000e+00
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = fadd <2 x float> %16, %10
  store <2 x float> %23, ptr %14, align 4, !tbaa !68
  br label %60

24:                                               ; preds = %19
  %25 = fcmp ogt float %20, %2
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  store float %2, ptr %15, align 4, !tbaa !91
  br label %27

27:                                               ; preds = %26, %24
  %28 = sext i16 %12 to i64
  %29 = getelementptr inbounds %struct.rctf, ptr %0, i64 %28
  %30 = add i16 %12, 1
  store i16 %30, ptr %1, align 2, !tbaa !89
  %31 = getelementptr inbounds %struct.rctf, ptr %0, i64 %28, i32 1
  store float %2, ptr %31, align 4, !tbaa !91
  %32 = fadd float %17, %2
  store float %32, ptr %29, align 4, !tbaa !90
  %33 = getelementptr inbounds %struct.rctf, ptr %14, i64 0, i32 2
  %34 = getelementptr inbounds %struct.rctf, ptr %0, i64 %28, i32 2
  %35 = load <2 x float>, ptr %33, align 4, !tbaa !68
  store <2 x float> %35, ptr %34, align 4, !tbaa !68
  %36 = fcmp oeq float %32, %2
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i16 %12, ptr %1, align 2, !tbaa !89
  br label %38

38:                                               ; preds = %37, %27
  %39 = phi i16 [ %12, %37 ], [ %30, %27 ]
  store float 0.000000e+00, ptr %14, align 4, !tbaa !90
  br label %60

40:                                               ; preds = %11
  %41 = extractelement <2 x float> %16, i64 1
  %42 = fcmp ogt float %41, %2
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = fcmp ogt float %17, %2
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  %46 = fsub <2 x float> %16, %8
  store <2 x float> %46, ptr %14, align 4, !tbaa !68
  br label %60

47:                                               ; preds = %43
  %48 = sext i16 %12 to i64
  %49 = getelementptr inbounds %struct.rctf, ptr %0, i64 %48
  %50 = add i16 %12, 1
  store i16 %50, ptr %1, align 2, !tbaa !89
  store float 0.000000e+00, ptr %49, align 4, !tbaa !90
  %51 = fsub float %41, %2
  %52 = getelementptr inbounds %struct.rctf, ptr %0, i64 %48, i32 1
  store float %51, ptr %52, align 4, !tbaa !91
  %53 = getelementptr inbounds %struct.rctf, ptr %14, i64 0, i32 2
  %54 = getelementptr inbounds %struct.rctf, ptr %0, i64 %48, i32 2
  %55 = load <2 x float>, ptr %53, align 4, !tbaa !68
  store <2 x float> %55, ptr %54, align 4, !tbaa !68
  %56 = fcmp oeq float %51, 0.000000e+00
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i16 %12, ptr %1, align 2, !tbaa !89
  br label %58

58:                                               ; preds = %57, %47
  %59 = phi i16 [ %12, %57 ], [ %50, %47 ]
  store float %2, ptr %15, align 4, !tbaa !91
  br label %60

60:                                               ; preds = %40, %58, %45, %22, %38
  %61 = phi i16 [ %12, %40 ], [ %59, %58 ], [ %12, %45 ], [ %12, %22 ], [ %39, %38 ]
  %62 = getelementptr inbounds %struct.rctf, ptr %14, i64 1
  %63 = add nsw i16 %13, -1
  %64 = icmp sgt i16 %13, 1
  br i1 %64, label %11, label %65, !llvm.loop !130

65:                                               ; preds = %60, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @clipx_rctf(ptr nocapture noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !131 {
  %3 = tail call fastcc float @BLI_rctf_size_x(ptr noundef %0) #18
  %4 = load float, ptr %0, align 4, !tbaa !90
  %5 = fcmp olt float %4, 0.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store float 0.000000e+00, ptr %0, align 4, !tbaa !90
  br label %7

7:                                                ; preds = %6, %2
  %8 = phi float [ 0.000000e+00, %6 ], [ %4, %2 ]
  %9 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %10 = load float, ptr %9, align 4, !tbaa !91
  %11 = fcmp ogt float %10, %1
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store float %1, ptr %9, align 4, !tbaa !91
  br label %13

13:                                               ; preds = %12, %7
  %14 = phi float [ %1, %12 ], [ %10, %7 ]
  %15 = fcmp ogt float %8, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store float %14, ptr %0, align 4, !tbaa !90
  br label %22

17:                                               ; preds = %13
  %18 = fcmp une float %3, 0.000000e+00
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %0) #18
  %21 = fdiv float %20, %3
  br label %22

22:                                               ; preds = %17, %19, %16
  %23 = phi float [ 0.000000e+00, %16 ], [ %21, %19 ], [ 1.000000e+00, %17 ]
  ret float %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @clipy_rctf_swap(ptr nocapture noundef %0, ptr nocapture noundef %1, float noundef %2) unnamed_addr #4 !PGOFuncName !132 {
  %4 = load i16, ptr %1, align 2, !tbaa !89
  %5 = icmp sgt i16 %4, 0
  br i1 %5, label %6, label %64

6:                                                ; preds = %3
  %7 = insertelement <2 x float> poison, float %2, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = insertelement <2 x float> poison, float %2, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  br label %11

11:                                               ; preds = %6, %59
  %12 = phi i16 [ %60, %59 ], [ %4, %6 ]
  %13 = phi i16 [ %62, %59 ], [ %4, %6 ]
  %14 = phi ptr [ %61, %59 ], [ %0, %6 ]
  %15 = getelementptr inbounds %struct.rctf, ptr %14, i64 0, i32 2
  %16 = getelementptr inbounds %struct.rctf, ptr %14, i64 0, i32 3
  %17 = load <2 x float>, ptr %15, align 4, !tbaa !68
  %18 = extractelement <2 x float> %17, i64 0
  %19 = fcmp olt float %18, 0.000000e+00
  br i1 %19, label %20, label %40

20:                                               ; preds = %11
  %21 = extractelement <2 x float> %17, i64 1
  %22 = fcmp olt float %21, 0.000000e+00
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = fadd <2 x float> %17, %10
  store <2 x float> %24, ptr %15, align 4, !tbaa !68
  br label %59

25:                                               ; preds = %20
  %26 = fcmp ogt float %21, %2
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  store float %2, ptr %16, align 4, !tbaa !95
  br label %28

28:                                               ; preds = %27, %25
  %29 = sext i16 %12 to i64
  %30 = getelementptr inbounds %struct.rctf, ptr %0, i64 %29
  %31 = add i16 %12, 1
  store i16 %31, ptr %1, align 2, !tbaa !89
  %32 = getelementptr inbounds %struct.rctf, ptr %0, i64 %29, i32 3
  store float %2, ptr %32, align 4, !tbaa !95
  %33 = fadd float %18, %2
  %34 = getelementptr inbounds %struct.rctf, ptr %0, i64 %29, i32 2
  store float %33, ptr %34, align 4, !tbaa !92
  %35 = load <2 x float>, ptr %14, align 4, !tbaa !68
  store <2 x float> %35, ptr %30, align 4, !tbaa !68
  %36 = fcmp oeq float %33, %2
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i16 %12, ptr %1, align 2, !tbaa !89
  br label %38

38:                                               ; preds = %37, %28
  %39 = phi i16 [ %12, %37 ], [ %31, %28 ]
  store float 0.000000e+00, ptr %15, align 4, !tbaa !92
  br label %59

40:                                               ; preds = %11
  %41 = extractelement <2 x float> %17, i64 1
  %42 = fcmp ogt float %41, %2
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = fcmp ogt float %18, %2
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  %46 = fsub <2 x float> %17, %8
  store <2 x float> %46, ptr %15, align 4, !tbaa !68
  br label %59

47:                                               ; preds = %43
  %48 = sext i16 %12 to i64
  %49 = getelementptr inbounds %struct.rctf, ptr %0, i64 %48
  %50 = add i16 %12, 1
  store i16 %50, ptr %1, align 2, !tbaa !89
  %51 = getelementptr inbounds %struct.rctf, ptr %0, i64 %48, i32 2
  store float 0.000000e+00, ptr %51, align 4, !tbaa !92
  %52 = fsub float %41, %2
  %53 = getelementptr inbounds %struct.rctf, ptr %0, i64 %48, i32 3
  store float %52, ptr %53, align 4, !tbaa !95
  %54 = load <2 x float>, ptr %14, align 4, !tbaa !68
  store <2 x float> %54, ptr %49, align 4, !tbaa !68
  %55 = fcmp oeq float %52, 0.000000e+00
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i16 %12, ptr %1, align 2, !tbaa !89
  br label %57

57:                                               ; preds = %56, %47
  %58 = phi i16 [ %12, %56 ], [ %50, %47 ]
  store float %2, ptr %16, align 4, !tbaa !95
  br label %59

59:                                               ; preds = %40, %57, %45, %23, %38
  %60 = phi i16 [ %12, %40 ], [ %58, %57 ], [ %12, %45 ], [ %12, %23 ], [ %39, %38 ]
  %61 = getelementptr inbounds %struct.rctf, ptr %14, i64 1
  %62 = add nsw i16 %13, -1
  %63 = icmp sgt i16 %13, 1
  br i1 %63, label %11, label %64, !llvm.loop !133

64:                                               ; preds = %59, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @clipy_rctf(ptr nocapture noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !134 {
  %3 = tail call fastcc float @BLI_rctf_size_y(ptr noundef %0) #18
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !92
  %6 = fcmp olt float %5, 0.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store float 0.000000e+00, ptr %4, align 4, !tbaa !92
  br label %8

8:                                                ; preds = %7, %2
  %9 = phi float [ 0.000000e+00, %7 ], [ %5, %2 ]
  %10 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %11 = load float, ptr %10, align 4, !tbaa !95
  %12 = fcmp ogt float %11, %1
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store float %1, ptr %10, align 4, !tbaa !95
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi float [ %1, %13 ], [ %11, %8 ]
  %16 = fcmp ogt float %9, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store float %15, ptr %4, align 4, !tbaa !92
  br label %23

18:                                               ; preds = %14
  %19 = fcmp une float %3, 0.000000e+00
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %0) #18
  %22 = fdiv float %21, %3
  br label %23

23:                                               ; preds = %18, %20, %17
  %24 = phi float [ 0.000000e+00, %17 ], [ %22, %20 ], [ 1.000000e+00, %18 ]
  ret float %24
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @boxsampleclip(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #4 !PGOFuncName !135 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %5 = load float, ptr %1, align 4, !tbaa !90
  %6 = tail call float @llvm.floor.f32(float %5)
  %7 = fptosi float %6 to i32
  %8 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !91
  %10 = tail call float @llvm.floor.f32(float %9)
  %11 = fptosi float %10 to i32
  %12 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %13 = load float, ptr %12, align 4, !tbaa !92
  %14 = tail call float @llvm.floor.f32(float %13)
  %15 = fptosi float %14 to i32
  %16 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %17 = load float, ptr %16, align 4, !tbaa !95
  %18 = tail call float @llvm.floor.f32(float %17)
  %19 = fptosi float %18 to i32
  %20 = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  %21 = tail call i32 @llvm.smax.i32(i32 %15, i32 0)
  %22 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !77
  %24 = icmp sgt i32 %23, %11
  %25 = add nsw i32 %23, -1
  %26 = select i1 %24, i32 %11, i32 %25
  %27 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !78
  %29 = icmp sgt i32 %28, %19
  %30 = add nsw i32 %28, -1
  %31 = select i1 %29, i32 %19, i32 %30
  %32 = icmp eq i32 %21, %31
  %33 = icmp eq i32 %20, %26
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  tail call fastcc void @ibuf_get_color(ptr noundef nonnull %36, ptr noundef nonnull %0, i32 noundef %20, i32 noundef %21) #18
  br label %115

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  %39 = icmp sgt i32 %21, %31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  br i1 %39, label %114, label %40

40:                                               ; preds = %37
  %41 = icmp sgt i32 %20, %26
  %42 = sitofp i32 %21 to float
  %43 = sitofp i32 %31 to float
  %44 = sitofp i32 %20 to float
  %45 = sitofp i32 %26 to float
  br label %46

46:                                               ; preds = %40, %102
  %47 = phi i32 [ %21, %40 ], [ %105, %102 ]
  %48 = phi float [ 0.000000e+00, %40 ], [ %103, %102 ]
  %49 = phi <4 x float> [ zeroinitializer, %40 ], [ %104, %102 ]
  br i1 %32, label %62, label %50

50:                                               ; preds = %46
  %51 = icmp eq i32 %47, %21
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = load float, ptr %12, align 4, !tbaa !92
  %54 = fsub float %42, %53
  %55 = fadd float %54, 1.000000e+00
  br label %56

56:                                               ; preds = %52, %50
  %57 = phi float [ %55, %52 ], [ 1.000000e+00, %50 ]
  %58 = icmp eq i32 %47, %31
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load float, ptr %16, align 4, !tbaa !95
  %61 = fsub float %60, %43
  br label %62

62:                                               ; preds = %56, %59, %46
  %63 = phi float [ 1.000000e+00, %46 ], [ %61, %59 ], [ %57, %56 ]
  br i1 %33, label %65, label %64

64:                                               ; preds = %62
  br i1 %41, label %102, label %72

65:                                               ; preds = %62
  call fastcc void @ibuf_get_color(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %20, i32 noundef %47) #18
  %66 = load <4 x float>, ptr %4, align 16, !tbaa !68
  %67 = load <4 x float>, ptr %38, align 4, !tbaa !68
  %68 = insertelement <4 x float> poison, float %63, i64 0
  %69 = shufflevector <4 x float> %68, <4 x float> poison, <4 x i32> zeroinitializer
  %70 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %69, <4 x float> %66, <4 x float> %67)
  store <4 x float> %70, ptr %38, align 4, !tbaa !68
  %71 = fadd float %48, %63
  br label %102

72:                                               ; preds = %64, %88
  %73 = phi i32 [ %100, %88 ], [ %20, %64 ]
  %74 = phi float [ %99, %88 ], [ %48, %64 ]
  %75 = icmp eq i32 %73, %20
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load float, ptr %1, align 4, !tbaa !90
  %78 = fsub float %44, %77
  %79 = fadd float %78, 1.000000e+00
  %80 = fmul float %63, %79
  br label %81

81:                                               ; preds = %76, %72
  %82 = phi float [ %80, %76 ], [ %63, %72 ]
  %83 = icmp eq i32 %73, %26
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load float, ptr %8, align 4, !tbaa !91
  %86 = fsub float %85, %45
  %87 = fmul float %82, %86
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi float [ %87, %84 ], [ %82, %81 ]
  call fastcc void @ibuf_get_color(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %73, i32 noundef %47) #18
  %90 = fcmp oeq float %89, 1.000000e+00
  %91 = load <4 x float>, ptr %4, align 16, !tbaa !68
  %92 = load <4 x float>, ptr %38, align 4, !tbaa !68
  %93 = fadd <4 x float> %91, %92
  %94 = insertelement <4 x float> poison, float %89, i64 0
  %95 = shufflevector <4 x float> %94, <4 x float> poison, <4 x i32> zeroinitializer
  %96 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %95, <4 x float> %91, <4 x float> %92)
  %97 = select i1 %90, float 1.000000e+00, float %89
  %98 = select i1 %90, <4 x float> %93, <4 x float> %96
  %99 = fadd float %74, %97
  store <4 x float> %98, ptr %38, align 4
  %100 = add nuw i32 %73, 1
  %101 = icmp eq i32 %73, %26
  br i1 %101, label %102, label %72, !llvm.loop !136

102:                                              ; preds = %88, %64, %65
  %103 = phi float [ %71, %65 ], [ %48, %64 ], [ %99, %88 ]
  %104 = phi <4 x float> [ %70, %65 ], [ %49, %64 ], [ %98, %88 ]
  %105 = add nuw i32 %47, 1
  %106 = icmp eq i32 %47, %31
  br i1 %106, label %107, label %46, !llvm.loop !137

107:                                              ; preds = %102
  %108 = fcmp une float %103, 0.000000e+00
  br i1 %108, label %109, label %114

109:                                              ; preds = %107
  %110 = fdiv float 1.000000e+00, %103
  %111 = insertelement <4 x float> poison, float %110, i64 0
  %112 = shufflevector <4 x float> %111, <4 x float> poison, <4 x i32> zeroinitializer
  %113 = fmul <4 x float> %112, %104
  store <4 x float> %113, ptr %38, align 4, !tbaa !68
  br label %115

114:                                              ; preds = %37, %107
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  br label %115

115:                                              ; preds = %109, %114, %35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @square_rctf(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !138 {
  %2 = tail call fastcc float @BLI_rctf_size_x(ptr noundef %0) #18
  %3 = tail call fastcc float @BLI_rctf_size_y(ptr noundef %0) #18
  %4 = fmul float %2, %3
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !139 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !91
  %4 = load float, ptr %0, align 4, !tbaa !90
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !140 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !95
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !92
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal void @feline_eval(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #11 !PGOFuncName !141 {
  %6 = alloca [4 x float], align 16
  %7 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !111
  %9 = add nsw i32 %8, -1
  %10 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 4
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %5
  %13 = load float, ptr %10, align 4, !tbaa !142
  %14 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 5
  %15 = load float, ptr %14, align 4, !tbaa !143
  %16 = fcmp oeq float %13, %15
  %17 = select i1 %16, float 0.000000e+00, float %15
  %18 = fsub float %13, %17
  %19 = fmul float %18, 2.000000e+00
  %20 = sitofp i32 %9 to float
  %21 = fdiv float %19, %20
  %22 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !112
  %24 = tail call float @cosf(float noundef %23) #17
  %25 = fmul float %24, %21
  %26 = load float, ptr %22, align 4, !tbaa !112
  %27 = tail call float @sinf(float noundef %26) #17
  %28 = fmul float %27, %21
  br label %29

29:                                               ; preds = %5, %12
  %30 = phi float [ %25, %12 ], [ 0.000000e+00, %5 ]
  %31 = phi float [ %28, %12 ], [ 0.000000e+00, %5 ]
  %32 = fmul float %31, %31
  %33 = tail call float @llvm.fmuladd.f32(float %30, float %30, float %32)
  %34 = fmul float %33, 6.400000e+01
  %35 = load float, ptr %10, align 4, !tbaa !142
  %36 = fmul float %35, %35
  %37 = fdiv float %34, %36
  %38 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 8
  %39 = load float, ptr %38, align 4, !tbaa !144
  %40 = fmul float %30, %39
  %41 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 9
  %42 = load float, ptr %41, align 4, !tbaa !145
  %43 = fmul float %31, %42
  %44 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 4
  %45 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 3
  %46 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 1
  %47 = sub nsw i32 1, %8
  %48 = icmp slt i32 %47, %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %46, i8 0, i64 16, i1 false)
  br i1 %48, label %52, label %49

49:                                               ; preds = %29
  %50 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 5
  %51 = load i32, ptr %50, align 4, !tbaa !75
  br label %100

52:                                               ; preds = %29
  %53 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !77
  %55 = sitofp i32 %54 to float
  %56 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !78
  %58 = sitofp i32 %57 to float
  %59 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !107
  %61 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !109
  %63 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %64 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 5
  %65 = load i32, ptr %64, align 4, !tbaa !75
  %66 = icmp eq i32 %65, 0
  %67 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  br label %68

68:                                               ; preds = %52, %68
  %69 = phi float [ 0.000000e+00, %52 ], [ %96, %68 ]
  %70 = phi float [ 0.000000e+00, %52 ], [ %92, %68 ]
  %71 = phi float [ 0.000000e+00, %52 ], [ %97, %68 ]
  %72 = phi i32 [ %47, %52 ], [ %98, %68 ]
  %73 = phi <2 x float> [ zeroinitializer, %52 ], [ %90, %68 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  %74 = sitofp i32 %72 to float
  %75 = fmul float %74, 5.000000e-01
  %76 = tail call float @llvm.fmuladd.f32(float %75, float %40, float %2)
  %77 = tail call float @llvm.fmuladd.f32(float %75, float %43, float %3)
  %78 = mul nsw i32 %72, %72
  %79 = sitofp i32 %78 to float
  %80 = fmul float %37, %79
  %81 = fptosi float %80 to i32
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [256 x float], ptr @EWA_WTS, i64 0, i64 %82
  %84 = load float, ptr %83, align 4, !tbaa !68
  %85 = fmul float %76, %55
  %86 = fmul float %77, %58
  call fastcc void @ibuf_get_color_clip_bilerp(ptr noundef nonnull %6, ptr noundef %1, float noundef %85, float noundef %86, i32 noundef %60, i32 noundef %62) #18
  %87 = load <2 x float>, ptr %6, align 16, !tbaa !68
  %88 = insertelement <2 x float> poison, float %84, i64 0
  %89 = shufflevector <2 x float> %88, <2 x float> poison, <2 x i32> zeroinitializer
  %90 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %87, <2 x float> %89, <2 x float> %73)
  store <2 x float> %90, ptr %46, align 4, !tbaa !68
  %91 = load float, ptr %63, align 8, !tbaa !68
  %92 = tail call float @llvm.fmuladd.f32(float %91, float %84, float %70)
  store float %92, ptr %45, align 4, !tbaa !81
  %93 = load float, ptr %67, align 4
  %94 = fmul float %84, %93
  %95 = select i1 %66, float 0.000000e+00, float %94
  %96 = fadd float %69, %95
  store float %96, ptr %44, align 8, !tbaa !82
  %97 = fadd float %71, %84
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  %98 = add nsw i32 %72, 2
  %99 = icmp slt i32 %98, %8
  br i1 %99, label %68, label %100, !llvm.loop !146

100:                                              ; preds = %68, %49
  %101 = phi float [ 0.000000e+00, %49 ], [ %96, %68 ]
  %102 = phi i32 [ %51, %49 ], [ %65, %68 ]
  %103 = phi float [ 0.000000e+00, %49 ], [ %92, %68 ]
  %104 = phi float [ 0.000000e+00, %49 ], [ %97, %68 ]
  %105 = phi <2 x float> [ zeroinitializer, %49 ], [ %90, %68 ]
  %106 = fdiv float 1.000000e+00, %104
  %107 = insertelement <2 x float> poison, float %106, i64 0
  %108 = shufflevector <2 x float> %107, <2 x float> poison, <2 x i32> zeroinitializer
  %109 = fmul <2 x float> %108, %105
  store <2 x float> %109, ptr %46, align 4, !tbaa !68
  %110 = fmul float %106, %103
  store float %110, ptr %45, align 4, !tbaa !81
  %111 = icmp eq i32 %102, 0
  %112 = fmul float %106, %101
  %113 = select i1 %111, float 1.000000e+00, float %112
  store float %113, ptr %44, align 8, !tbaa !82
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @area_sample(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #12 !PGOFuncName !147 {
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  %7 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !77
  %9 = sitofp i32 %8 to float
  %10 = load float, ptr %4, align 4, !tbaa !68
  %11 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !78
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !68
  %16 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 1
  %17 = load float, ptr %16, align 4, !tbaa !68
  %18 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !68
  %20 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !107
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 4, i32 2
  %24 = shl nsw i32 %8, 1
  %25 = insertelement <2 x float> poison, float %17, i64 0
  %26 = insertelement <2 x float> %25, float %10, i64 1
  %27 = insertelement <2 x float> poison, float %9, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %29 = fmul <2 x float> %26, %28
  %30 = insertelement <2 x float> poison, float %19, i64 0
  %31 = insertelement <2 x float> %30, float %15, i64 1
  %32 = insertelement <2 x float> poison, float %13, i64 0
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> zeroinitializer
  %34 = fmul <2 x float> %31, %33
  %35 = fmul <2 x float> %34, %34
  %36 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %29, <2 x float> %29, <2 x float> %35)
  %37 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %36)
  %38 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %37, <2 x float> <float 5.000000e-01, float 5.000000e-01>, <2 x float> <float 5.000000e-01, float 5.000000e-01>)
  %39 = fptosi <2 x float> %38 to <2 x i32>
  %40 = extractelement <2 x i32> %39, i64 1
  %41 = tail call i32 @llvm.smin.i32(i32 %24, i32 %40)
  %42 = insertelement <2 x i32> poison, i32 %23, i64 0
  %43 = shufflevector <2 x i32> %42, <2 x i32> poison, <2 x i32> zeroinitializer
  %44 = icmp sgt <2 x i32> %43, %39
  %45 = extractelement <2 x i1> %44, i64 1
  %46 = select i1 %45, i32 %23, i32 %41
  %47 = shl nsw i32 %12, 1
  %48 = extractelement <2 x i32> %39, i64 0
  %49 = tail call i32 @llvm.smin.i32(i32 %47, i32 %48)
  %50 = extractelement <2 x i1> %44, i64 0
  %51 = select i1 %50, i32 %23, i32 %49
  %52 = sitofp i32 %46 to float
  %53 = fdiv float 1.000000e+00, %52
  %54 = sitofp i32 %51 to float
  %55 = fdiv float 1.000000e+00, %54
  %56 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 3
  %57 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 1
  %58 = icmp sgt i32 %51, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  br i1 %58, label %59, label %116

59:                                               ; preds = %5
  %60 = icmp sgt i32 %46, 0
  %61 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 3
  %62 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 5
  %63 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  br label %64

64:                                               ; preds = %59, %108
  %65 = phi i32 [ 0, %59 ], [ %111, %108 ]
  %66 = phi <2 x float> [ zeroinitializer, %59 ], [ %109, %108 ]
  %67 = phi <2 x float> [ zeroinitializer, %59 ], [ %110, %108 ]
  br i1 %60, label %68, label %108

68:                                               ; preds = %64
  %69 = and i32 %65, 1
  %70 = sitofp i32 %69 to float
  %71 = fadd float %70, 5.000000e-01
  %72 = sitofp i32 %65 to float
  %73 = load i32, ptr %61, align 4, !tbaa !109
  %74 = load i32, ptr %62, align 4, !tbaa !75
  %75 = icmp eq i32 %74, 0
  br label %76

76:                                               ; preds = %68, %76
  %77 = phi i32 [ 0, %68 ], [ %106, %76 ]
  %78 = phi <2 x float> [ %66, %68 ], [ %99, %76 ]
  %79 = phi <2 x float> [ %67, %68 ], [ %105, %76 ]
  %80 = sitofp i32 %77 to float
  %81 = tail call float @llvm.fmuladd.f32(float %71, float 5.000000e-01, float %80)
  %82 = tail call float @llvm.fmuladd.f32(float %81, float %53, float -5.000000e-01)
  %83 = and i32 %77, 1
  %84 = sitofp i32 %83 to float
  %85 = fadd float %84, 5.000000e-01
  %86 = tail call float @llvm.fmuladd.f32(float %85, float 5.000000e-01, float %72)
  %87 = tail call float @llvm.fmuladd.f32(float %86, float %55, float -5.000000e-01)
  %88 = load float, ptr %4, align 4, !tbaa !68
  %89 = tail call float @llvm.fmuladd.f32(float %82, float %88, float %2)
  %90 = load float, ptr %16, align 4, !tbaa !68
  %91 = tail call float @llvm.fmuladd.f32(float %87, float %90, float %89)
  %92 = load float, ptr %14, align 4, !tbaa !68
  %93 = tail call float @llvm.fmuladd.f32(float %82, float %92, float %3)
  %94 = load float, ptr %18, align 4, !tbaa !68
  %95 = tail call float @llvm.fmuladd.f32(float %87, float %94, float %93)
  %96 = fmul float %91, %9
  %97 = fmul float %95, %13
  call fastcc void @ibuf_get_color_clip_bilerp(ptr noundef nonnull %6, ptr noundef %1, float noundef %96, float noundef %97, i32 noundef %21, i32 noundef %73) #18
  %98 = load <2 x float>, ptr %6, align 16, !tbaa !68
  %99 = fadd <2 x float> %98, %78
  store <2 x float> %99, ptr %57, align 4, !tbaa !68
  %100 = load <4 x float>, ptr %6, align 16
  %101 = shufflevector <4 x float> %100, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %102 = load float, ptr %63, align 4
  %103 = select i1 %75, float 0.000000e+00, float %102
  %104 = insertelement <2 x float> %101, float %103, i64 1
  %105 = fadd <2 x float> %104, %79
  store <2 x float> %105, ptr %56, align 4, !tbaa !68
  %106 = add nuw nsw i32 %77, 1
  %107 = icmp eq i32 %106, %46
  br i1 %107, label %108, label %76, !llvm.loop !148

108:                                              ; preds = %76, %64
  %109 = phi <2 x float> [ %66, %64 ], [ %99, %76 ]
  %110 = phi <2 x float> [ %67, %64 ], [ %105, %76 ]
  %111 = add nuw nsw i32 %65, 1
  %112 = icmp eq i32 %111, %51
  br i1 %112, label %113, label %64, !llvm.loop !149

113:                                              ; preds = %108
  %114 = extractelement <2 x float> %110, i64 1
  %115 = extractelement <2 x float> %110, i64 0
  br label %116

116:                                              ; preds = %113, %5
  %117 = phi float [ 0.000000e+00, %5 ], [ %114, %113 ]
  %118 = phi float [ 0.000000e+00, %5 ], [ %115, %113 ]
  %119 = phi <2 x float> [ zeroinitializer, %5 ], [ %109, %113 ]
  %120 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 4
  %121 = fmul float %53, %55
  %122 = insertelement <2 x float> poison, float %121, i64 0
  %123 = shufflevector <2 x float> %122, <2 x float> poison, <2 x i32> zeroinitializer
  %124 = fmul <2 x float> %123, %119
  store <2 x float> %124, ptr %57, align 4, !tbaa !68
  %125 = fmul float %121, %118
  store float %125, ptr %56, align 4, !tbaa !81
  %126 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 5
  %127 = load i32, ptr %126, align 4, !tbaa !75
  %128 = icmp eq i32 %127, 0
  %129 = fmul float %121, %117
  %130 = select i1 %128, float 1.000000e+00, float %129
  store float %130, ptr %120, align 8, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !150 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !68
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !151 {
  %2 = load float, ptr %0, align 4, !tbaa !68
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !68
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare void @BLI_ewa_imp2radangle(float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #6 !PGOFuncName !152 {
  %2 = fadd float %0, 5.000000e-01
  %3 = tail call float @llvm.floor.f32(float %2)
  %4 = fptosi float %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @logf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @alpha_clip_aniso(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5, ptr nocapture noundef %6) unnamed_addr #7 !PGOFuncName !153 {
  %8 = alloca %struct.rctf, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19
  %9 = add i32 %5, -3
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %34, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %13 = load <2 x i32>, ptr %12, align 8, !tbaa !72
  %14 = sitofp <2 x i32> %13 to <2 x float>
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %16 = insertelement <4 x float> poison, float %1, i64 0
  %17 = insertelement <4 x float> %16, float %3, i64 1
  %18 = insertelement <4 x float> %17, float %2, i64 2
  %19 = insertelement <4 x float> %18, float %4, i64 3
  %20 = fmul <4 x float> %15, %19
  store <4 x float> %20, ptr %8, align 16, !tbaa !68
  %21 = extractelement <2 x float> %14, i64 0
  %22 = call fastcc float @clipx_rctf(ptr noundef nonnull %8, float noundef %21) #18
  %23 = extractelement <2 x float> %14, i64 1
  %24 = call fastcc float @clipy_rctf(ptr noundef nonnull %8, float noundef %23) #18
  %25 = fmul float %22, %24
  %26 = tail call fastcc float @max_ff(float noundef %25, float noundef 0.000000e+00) #18
  %27 = fcmp une float %26, 1.000000e+00
  br i1 %27, label %28, label %34

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 1
  %30 = load <4 x float>, ptr %29, align 4, !tbaa !68
  %31 = insertelement <4 x float> poison, float %26, i64 0
  %32 = shufflevector <4 x float> %31, <4 x float> poison, <4 x i32> zeroinitializer
  %33 = fmul <4 x float> %32, %30
  store <4 x float> %33, ptr %29, align 4, !tbaa !68
  br label %34

34:                                               ; preds = %11, %28, %7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ibuf_get_color_clip_bilerp(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #14 !PGOFuncName !154 {
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %45, label %12

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #19
  %13 = fadd float %2, -5.000000e-01
  %14 = tail call float @llvm.floor.f32(float %13)
  %15 = fadd float %3, -5.000000e-01
  %16 = tail call float @llvm.floor.f32(float %15)
  %17 = fsub float %13, %14
  %18 = fsub float %15, %16
  %19 = fsub float 1.000000e+00, %17
  %20 = fsub float 1.000000e+00, %18
  %21 = fmul float %19, %20
  %22 = fmul float %17, %20
  %23 = fmul float %19, %18
  %24 = fmul float %17, %18
  %25 = fptosi float %14 to i32
  %26 = fptosi float %16 to i32
  %27 = add nsw i32 %25, 1
  %28 = add nsw i32 %26, 1
  call fastcc void @ibuf_get_color_clip(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %25, i32 noundef %26, i32 noundef %5) #18
  call fastcc void @ibuf_get_color_clip(ptr noundef nonnull %9, ptr noundef %1, i32 noundef %27, i32 noundef %26, i32 noundef %5) #18
  call fastcc void @ibuf_get_color_clip(ptr noundef nonnull %8, ptr noundef %1, i32 noundef %25, i32 noundef %28, i32 noundef %5) #18
  call fastcc void @ibuf_get_color_clip(ptr noundef nonnull %10, ptr noundef %1, i32 noundef %27, i32 noundef %28, i32 noundef %5) #18
  %29 = load <4 x float>, ptr %10, align 16, !tbaa !68
  %30 = load <4 x float>, ptr %8, align 16, !tbaa !68
  %31 = load <4 x float>, ptr %7, align 16, !tbaa !68
  %32 = load <4 x float>, ptr %9, align 16, !tbaa !68
  %33 = insertelement <4 x float> poison, float %22, i64 0
  %34 = shufflevector <4 x float> %33, <4 x float> poison, <4 x i32> zeroinitializer
  %35 = fmul <4 x float> %34, %32
  %36 = insertelement <4 x float> poison, float %21, i64 0
  %37 = shufflevector <4 x float> %36, <4 x float> poison, <4 x i32> zeroinitializer
  %38 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %37, <4 x float> %31, <4 x float> %35)
  %39 = insertelement <4 x float> poison, float %23, i64 0
  %40 = shufflevector <4 x float> %39, <4 x float> poison, <4 x i32> zeroinitializer
  %41 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %40, <4 x float> %30, <4 x float> %38)
  %42 = insertelement <4 x float> poison, float %24, i64 0
  %43 = shufflevector <4 x float> %42, <4 x float> poison, <4 x i32> zeroinitializer
  %44 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %43, <4 x float> %29, <4 x float> %41)
  store <4 x float> %44, ptr %0, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  br label %48

45:                                               ; preds = %6
  %46 = fptosi float %2 to i32
  %47 = fptosi float %3 to i32
  tail call fastcc void @ibuf_get_color_clip(ptr noundef %0, ptr noundef %1, i32 noundef %46, i32 noundef %47, i32 noundef %5) #18
  br label %48

48:                                               ; preds = %45, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ibuf_get_color_clip(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #14 !PGOFuncName !155 {
  switch i32 %4, label %72 [
    i32 1, label %6
    i32 2, label %24
    i32 4, label %42
    i32 3, label %59
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !77
  %9 = shl nsw i32 %8, 1
  %10 = srem i32 %2, %9
  %11 = icmp slt i32 %10, 0
  %12 = select i1 %11, i32 %9, i32 0
  %13 = add nsw i32 %12, %10
  %14 = icmp slt i32 %13, %8
  %15 = xor i32 %13, -1
  %16 = add i32 %9, %15
  %17 = select i1 %14, i32 %13, i32 %16
  %18 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !78
  %20 = srem i32 %3, %19
  %21 = icmp slt i32 %20, 0
  %22 = select i1 %21, i32 %19, i32 0
  %23 = add nsw i32 %22, %20
  br label %85

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !77
  %27 = srem i32 %2, %26
  %28 = icmp slt i32 %27, 0
  %29 = select i1 %28, i32 %26, i32 0
  %30 = add nsw i32 %29, %27
  %31 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !78
  %33 = shl nsw i32 %32, 1
  %34 = srem i32 %3, %33
  %35 = icmp slt i32 %34, 0
  %36 = select i1 %35, i32 %33, i32 0
  %37 = add nsw i32 %36, %34
  %38 = icmp slt i32 %37, %32
  %39 = xor i32 %37, -1
  %40 = add i32 %33, %39
  %41 = select i1 %38, i32 %37, i32 %40
  br label %85

42:                                               ; preds = %5
  %43 = icmp slt i32 %2, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !77
  %47 = icmp sgt i32 %46, %2
  %48 = add nsw i32 %46, -1
  %49 = select i1 %47, i32 %2, i32 %48
  br label %50

50:                                               ; preds = %44, %42
  %51 = phi i32 [ 0, %42 ], [ %49, %44 ]
  %52 = icmp slt i32 %3, 0
  br i1 %52, label %85, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !78
  %56 = icmp sgt i32 %55, %3
  %57 = add nsw i32 %55, -1
  %58 = select i1 %56, i32 %3, i32 %57
  br label %85

59:                                               ; preds = %5
  %60 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !77
  %62 = srem i32 %2, %61
  %63 = icmp slt i32 %62, 0
  %64 = select i1 %63, i32 %61, i32 0
  %65 = add nsw i32 %64, %62
  %66 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %67 = load i32, ptr %66, align 4, !tbaa !78
  %68 = srem i32 %3, %67
  %69 = icmp slt i32 %68, 0
  %70 = select i1 %69, i32 %67, i32 0
  %71 = add nsw i32 %70, %68
  br label %85

72:                                               ; preds = %5
  %73 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %74 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !77
  %76 = icmp slt i32 %73, %75
  %77 = add nsw i32 %75, -1
  %78 = select i1 %76, i32 %73, i32 %77
  %79 = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  %80 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %81 = load i32, ptr %80, align 4, !tbaa !78
  %82 = icmp slt i32 %79, %81
  %83 = add nsw i32 %81, -1
  %84 = select i1 %82, i32 %79, i32 %83
  br label %85

85:                                               ; preds = %72, %53, %50, %59, %24, %6
  %86 = phi i32 [ %71, %59 ], [ %41, %24 ], [ %23, %6 ], [ 0, %50 ], [ %58, %53 ], [ %84, %72 ]
  %87 = phi i32 [ %65, %59 ], [ %30, %24 ], [ %17, %6 ], [ %51, %50 ], [ %51, %53 ], [ %78, %72 ]
  %88 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %89 = load ptr, ptr %88, align 8, !tbaa !64
  %90 = icmp eq ptr %89, null
  br i1 %90, label %120, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !77
  %94 = mul nsw i32 %93, %86
  %95 = add nsw i32 %94, %87
  %96 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 5
  %97 = load i32, ptr %96, align 4, !tbaa !97
  %98 = mul nsw i32 %95, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, ptr %89, i64 %99
  %101 = icmp eq i32 %97, 1
  %102 = load float, ptr %100, align 4, !tbaa !68
  br i1 %101, label %103, label %106

103:                                              ; preds = %91
  %104 = insertelement <4 x float> poison, float %102, i64 0
  %105 = shufflevector <4 x float> %104, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %105, ptr %0, align 4, !tbaa !68
  br label %152

106:                                              ; preds = %91
  store float %102, ptr %0, align 4, !tbaa !68
  %107 = getelementptr inbounds float, ptr %100, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !68
  %109 = getelementptr inbounds float, ptr %0, i64 1
  store float %108, ptr %109, align 4, !tbaa !68
  %110 = getelementptr inbounds float, ptr %100, i64 2
  %111 = load float, ptr %110, align 4, !tbaa !68
  %112 = getelementptr inbounds float, ptr %0, i64 2
  store float %111, ptr %112, align 4, !tbaa !68
  %113 = icmp eq i32 %97, 4
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = getelementptr inbounds float, ptr %100, i64 3
  %116 = load float, ptr %115, align 4, !tbaa !68
  br label %117

117:                                              ; preds = %114, %106
  %118 = phi float [ %116, %114 ], [ 1.000000e+00, %106 ]
  %119 = getelementptr inbounds float, ptr %0, i64 3
  store float %118, ptr %119, align 4, !tbaa !68
  br label %152

120:                                              ; preds = %85
  %121 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %122 = load ptr, ptr %121, align 8, !tbaa !61
  %123 = sext i32 %87 to i64
  %124 = getelementptr inbounds i32, ptr %122, i64 %123
  %125 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %126 = load i32, ptr %125, align 8, !tbaa !77
  %127 = mul nsw i32 %126, %86
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, ptr %124, i64 %128
  %130 = getelementptr inbounds i8, ptr %129, i64 3
  %131 = load i8, ptr %130, align 1, !tbaa !98
  %132 = uitofp i8 %131 to float
  %133 = fmul float %132, 0x3F70101020000000
  %134 = fmul float %133, 0x3F70101020000000
  %135 = load i8, ptr %129, align 1, !tbaa !98
  %136 = uitofp i8 %135 to float
  %137 = fmul float %134, %136
  store float %137, ptr %0, align 4, !tbaa !68
  %138 = getelementptr inbounds i8, ptr %129, i64 1
  %139 = load i8, ptr %138, align 1, !tbaa !98
  %140 = uitofp i8 %139 to float
  %141 = fmul float %134, %140
  %142 = getelementptr inbounds float, ptr %0, i64 1
  store float %141, ptr %142, align 4, !tbaa !68
  %143 = getelementptr inbounds i8, ptr %129, i64 2
  %144 = load i8, ptr %143, align 1, !tbaa !98
  %145 = uitofp i8 %144 to float
  %146 = fmul float %134, %145
  %147 = getelementptr inbounds float, ptr %0, i64 2
  store float %146, ptr %147, align 4, !tbaa !68
  %148 = load i8, ptr %130, align 1, !tbaa !98
  %149 = uitofp i8 %148 to float
  %150 = fmul float %149, 0x3F70101020000000
  %151 = getelementptr inbounds float, ptr %0, i64 3
  store float %150, ptr %151, align 4, !tbaa !68
  br label %152

152:                                              ; preds = %103, %117, %120
  ret void
}

; Function Attrs: optsize
declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_remakemipmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_makemipmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !156 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare void @BLI_ewa_filter(i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @ewa_read_pixel_cb(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #5 !PGOFuncName !157 {
  %5 = load ptr, ptr %0, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.ReadEWAData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !127
  %8 = getelementptr inbounds %struct.afdata_t, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !109
  tail call fastcc void @ibuf_get_color_clip(ptr noundef %3, ptr noundef %5, i32 noundef %1, i32 noundef %2, i32 noundef %9) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }

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
!34 = !{!35, !40, i64 24}
!35 = !{!"TexResult", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !39, i64 20, !40, i64 24}
!36 = !{!"float", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!42, !39, i64 1620}
!42 = !{!"Render", !40, i64 0, !40, i64 8, !37, i64 16, !39, i64 92, !43, i64 96, !43, i64 98, !43, i64 100, !43, i64 102, !37, i64 104, !40, i64 112, !40, i64 120, !44, i64 128, !39, i64 144, !39, i64 148, !39, i64 152, !45, i64 156, !46, i64 172, !36, i64 188, !36, i64 192, !36, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !36, i64 216, !36, i64 220, !36, i64 224, !36, i64 228, !36, i64 232, !36, i64 236, !37, i64 240, !37, i64 252, !37, i64 288, !37, i64 352, !37, i64 416, !37, i64 480, !36, i64 544, !36, i64 548, !40, i64 552, !37, i64 560, !37, i64 816, !40, i64 1072, !37, i64 1080, !40, i64 1088, !40, i64 1096, !47, i64 1104, !54, i64 5088, !40, i64 5616, !39, i64 5624, !39, i64 5628, !44, i64 5632, !40, i64 5648, !40, i64 5656, !40, i64 5664, !40, i64 5672, !36, i64 5680, !40, i64 5688, !44, i64 5696, !36, i64 5712, !36, i64 5716, !39, i64 5720, !39, i64 5724, !39, i64 5728, !39, i64 5732, !39, i64 5736, !40, i64 5744, !44, i64 5752, !44, i64 5768, !44, i64 5784, !40, i64 5800, !44, i64 5808, !39, i64 5824, !40, i64 5832, !40, i64 5840, !40, i64 5848, !40, i64 5856, !40, i64 5864, !44, i64 5872, !40, i64 5888, !44, i64 5896, !44, i64 5912, !40, i64 5928, !40, i64 5936, !40, i64 5944, !40, i64 5952, !40, i64 5960, !40, i64 5968, !40, i64 5976, !40, i64 5984, !40, i64 5992, !40, i64 6000, !40, i64 6008, !40, i64 6016, !40, i64 6024, !40, i64 6032, !40, i64 6040, !40, i64 6048, !40, i64 6056, !56, i64 6064, !40, i64 6216, !40, i64 6224, !40, i64 6232}
!43 = !{!"short", !37, i64 0}
!44 = !{!"ListBase", !40, i64 0, !40, i64 8}
!45 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!46 = !{!"rctf", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!47 = !{!"RenderData", !48, i64 0, !40, i64 248, !40, i64 256, !51, i64 264, !52, i64 328, !39, i64 400, !39, i64 404, !39, i64 408, !36, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !39, i64 428, !43, i64 432, !43, i64 434, !36, i64 436, !36, i64 440, !36, i64 444, !36, i64 448, !36, i64 452, !43, i64 456, !43, i64 458, !43, i64 460, !43, i64 462, !43, i64 464, !43, i64 466, !39, i64 468, !43, i64 472, !43, i64 474, !43, i64 476, !43, i64 478, !43, i64 480, !43, i64 482, !39, i64 484, !39, i64 488, !43, i64 492, !43, i64 494, !39, i64 496, !39, i64 500, !43, i64 504, !43, i64 506, !43, i64 508, !43, i64 510, !43, i64 512, !37, i64 514, !37, i64 515, !39, i64 516, !39, i64 520, !39, i64 524, !43, i64 528, !43, i64 530, !43, i64 532, !43, i64 534, !43, i64 536, !43, i64 538, !43, i64 540, !43, i64 542, !46, i64 544, !46, i64 560, !45, i64 576, !44, i64 592, !43, i64 608, !43, i64 610, !36, i64 612, !36, i64 616, !36, i64 620, !36, i64 624, !39, i64 628, !36, i64 632, !36, i64 636, !36, i64 640, !36, i64 644, !43, i64 648, !43, i64 650, !43, i64 652, !43, i64 654, !43, i64 656, !43, i64 658, !36, i64 660, !36, i64 664, !43, i64 668, !43, i64 670, !36, i64 672, !36, i64 676, !37, i64 680, !39, i64 1704, !43, i64 1708, !43, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !39, i64 2520, !43, i64 2524, !43, i64 2526, !36, i64 2528, !36, i64 2532, !43, i64 2536, !43, i64 2538, !36, i64 2540, !43, i64 2544, !43, i64 2546, !39, i64 2548, !43, i64 2552, !43, i64 2554, !43, i64 2556, !43, i64 2558, !36, i64 2560, !36, i64 2564, !40, i64 2568, !39, i64 2576, !36, i64 2580, !37, i64 2584, !53, i64 2616, !39, i64 3976, !39, i64 3980}
!48 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !43, i64 8, !43, i64 10, !36, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !49, i64 24, !50, i64 184}
!49 = !{!"ColorManagedViewSettings", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 72, !36, i64 136, !36, i64 140, !40, i64 144, !40, i64 152}
!50 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!51 = !{!"QuicktimeCodecSettings", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !43, i64 48, !43, i64 50, !39, i64 52, !39, i64 56, !39, i64 60}
!52 = !{!"FFMpegCodecData", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !36, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !40, i64 64}
!53 = !{!"BakeData", !48, i64 0, !37, i64 248, !43, i64 1272, !43, i64 1274, !43, i64 1276, !43, i64 1278, !36, i64 1280, !36, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!54 = !{!"World", !55, i64 0, !40, i64 120, !43, i64 128, !43, i64 130, !43, i64 132, !43, i64 134, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !36, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !43, i64 200, !43, i64 202, !43, i64 204, !43, i64 206, !43, i64 208, !43, i64 210, !43, i64 212, !43, i64 214, !36, i64 216, !36, i64 220, !36, i64 224, !36, i64 228, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252, !36, i64 256, !36, i64 260, !43, i64 264, !43, i64 266, !43, i64 268, !43, i64 270, !36, i64 272, !36, i64 276, !36, i64 280, !36, i64 284, !43, i64 288, !43, i64 290, !43, i64 292, !43, i64 294, !36, i64 296, !36, i64 300, !36, i64 304, !36, i64 308, !36, i64 312, !36, i64 316, !36, i64 320, !43, i64 324, !43, i64 326, !43, i64 328, !43, i64 330, !43, i64 332, !43, i64 334, !40, i64 336, !40, i64 344, !40, i64 352, !37, i64 360, !43, i64 504, !43, i64 506, !37, i64 508, !40, i64 512, !40, i64 520}
!55 = !{!"ID", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !37, i64 32, !43, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !40, i64 112}
!56 = !{!"RenderStats", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !43, i64 28, !43, i64 30, !43, i64 32, !43, i64 34, !43, i64 36, !43, i64 38, !37, i64 40, !57, i64 48, !57, i64 56, !40, i64 64, !40, i64 72, !37, i64 80, !36, i64 144, !36, i64 148}
!57 = !{!"double", !37, i64 0}
!58 = !{!59, !43, i64 1246}
!59 = !{!"Image", !55, i64 0, !37, i64 120, !40, i64 1144, !40, i64 1152, !40, i64 1160, !40, i64 1168, !37, i64 1176, !43, i64 1240, !43, i64 1242, !43, i64 1244, !43, i64 1246, !43, i64 1248, !43, i64 1250, !39, i64 1252, !43, i64 1256, !43, i64 1258, !43, i64 1260, !43, i64 1262, !43, i64 1264, !43, i64 1266, !39, i64 1268, !40, i64 1272, !40, i64 1280, !40, i64 1288, !36, i64 1296, !39, i64 1300, !43, i64 1304, !43, i64 1306, !39, i64 1308, !39, i64 1312, !37, i64 1316, !37, i64 1317, !43, i64 1318, !37, i64 1320, !36, i64 1336, !36, i64 1340, !60, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!60 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!61 = !{!62, !40, i64 40}
!62 = !{!"ImBuf", !40, i64 0, !40, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !40, i64 40, !40, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !40, i64 88, !40, i64 96, !40, i64 104, !36, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !40, i64 296, !40, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !40, i64 2368, !39, i64 2376, !40, i64 2384, !39, i64 2392, !39, i64 2396, !40, i64 2400, !40, i64 2408, !40, i64 2416, !40, i64 2424, !39, i64 2432, !45, i64 2436, !63, i64 2456}
!63 = !{!"DDSData", !39, i64 0, !39, i64 4, !40, i64 8, !39, i64 16}
!64 = !{!62, !40, i64 48}
!65 = !{!66, !43, i64 228}
!66 = !{!"Tex", !55, i64 0, !40, i64 120, !36, i64 128, !36, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164, !36, i64 168, !36, i64 172, !36, i64 176, !36, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !36, i64 208, !36, i64 212, !43, i64 216, !43, i64 218, !43, i64 220, !43, i64 222, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !43, i64 232, !43, i64 234, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !39, i64 252, !39, i64 256, !43, i64 260, !43, i64 262, !43, i64 264, !43, i64 266, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !36, i64 284, !36, i64 288, !36, i64 292, !67, i64 296, !40, i64 336, !40, i64 344, !40, i64 352, !40, i64 360, !40, i64 368, !40, i64 376, !40, i64 384, !40, i64 392, !40, i64 400, !37, i64 408, !37, i64 409}
!67 = !{!"ImageUser", !40, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !43, i64 28, !43, i64 30, !43, i64 32, !43, i64 34, !39, i64 36}
!68 = !{!36, !36, i64 0}
!69 = !{!66, !43, i64 264}
!70 = !{!66, !43, i64 230}
!71 = !{!66, !36, i64 284}
!72 = !{!39, !39, i64 0}
!73 = !{!42, !43, i64 96}
!74 = !{!62, !39, i64 32}
!75 = !{!35, !39, i64 20}
!76 = !{!66, !36, i64 160}
!77 = !{!62, !39, i64 16}
!78 = !{!62, !39, i64 20}
!79 = !{!35, !36, i64 4}
!80 = !{!35, !36, i64 8}
!81 = !{!35, !36, i64 12}
!82 = !{!35, !36, i64 16}
!83 = !{!35, !36, i64 0}
!84 = !{!66, !36, i64 140}
!85 = !{!66, !36, i64 136}
!86 = !{!66, !36, i64 156}
!87 = !{!66, !36, i64 144}
!88 = !{!"imagetexture.c:boxsample"}
!89 = !{!43, !43, i64 0}
!90 = !{!46, !36, i64 0}
!91 = !{!46, !36, i64 4}
!92 = !{!46, !36, i64 8}
!93 = distinct !{!93, !94}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!46, !36, i64 12}
!96 = !{!"imagetexture.c:ibuf_get_color"}
!97 = !{!62, !39, i64 28}
!98 = !{!37, !37, i64 0}
!99 = !{!"imagetexture.c:max_fff"}
!100 = !{!66, !39, i64 252}
!101 = !{i32 1, i32 4}
!102 = !{!42, !39, i64 1624}
!103 = !{!40, !40, i64 0}
!104 = distinct !{!104, !94}
!105 = !{!"imagetexture.c:copy_v2_v2"}
!106 = !{!"imagetexture.c:imagewraposa_aniso"}
!107 = !{!108, !39, i64 16}
!108 = !{!"afdata_t", !37, i64 0, !37, i64 8, !39, i64 16, !39, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !39, i64 36, !36, i64 40, !36, i64 44}
!109 = !{!108, !39, i64 20}
!110 = !{!66, !39, i64 256}
!111 = !{!108, !39, i64 36}
!112 = !{!108, !36, i64 32}
!113 = distinct !{!113, !94, !114, !115}
!114 = !{!"llvm.loop.isvectorized", i32 1}
!115 = !{!"llvm.loop.unroll.runtime.disable"}
!116 = !{ptr @area_sample, ptr @ewa_eval, ptr @feline_eval}
!117 = !{!"imagetexture.c:image_mipmap_test"}
!118 = !{!62, !39, i64 292}
!119 = !{!"imagetexture.c:min_fff"}
!120 = !{!"imagetexture.c:max_ff"}
!121 = !{!"imagetexture.c:mul_v3_fl"}
!122 = !{!"imagetexture.c:zero_v4"}
!123 = !{!"imagetexture.c:copy_v4_v4"}
!124 = !{!"imagetexture.c:ewa_eval"}
!125 = !{!126, !40, i64 0}
!126 = !{!"ReadEWAData", !40, i64 0, !40, i64 8}
!127 = !{!126, !40, i64 8}
!128 = !{!"imagetexture.c:copy_v3_v3"}
!129 = !{!"imagetexture.c:clipx_rctf_swap"}
!130 = distinct !{!130, !94}
!131 = !{!"imagetexture.c:clipx_rctf"}
!132 = !{!"imagetexture.c:clipy_rctf_swap"}
!133 = distinct !{!133, !94}
!134 = !{!"imagetexture.c:clipy_rctf"}
!135 = !{!"imagetexture.c:boxsampleclip"}
!136 = distinct !{!136, !94}
!137 = distinct !{!137, !94}
!138 = !{!"imagetexture.c:square_rctf"}
!139 = !{!"imagetexture.c:BLI_rctf_size_x"}
!140 = !{!"imagetexture.c:BLI_rctf_size_y"}
!141 = !{!"imagetexture.c:feline_eval"}
!142 = !{!108, !36, i64 24}
!143 = !{!108, !36, i64 28}
!144 = !{!108, !36, i64 40}
!145 = !{!108, !36, i64 44}
!146 = distinct !{!146, !94}
!147 = !{!"imagetexture.c:area_sample"}
!148 = distinct !{!148, !94}
!149 = distinct !{!149, !94}
!150 = !{!"imagetexture.c:mul_v2_fl"}
!151 = !{!"imagetexture.c:len_v2"}
!152 = !{!"imagetexture.c:iroundf"}
!153 = !{!"imagetexture.c:alpha_clip_aniso"}
!154 = !{!"imagetexture.c:ibuf_get_color_clip_bilerp"}
!155 = !{!"imagetexture.c:ibuf_get_color_clip"}
!156 = !{!"imagetexture.c:min_ff"}
!157 = !{!"imagetexture.c:ewa_read_pixel_cb"}
