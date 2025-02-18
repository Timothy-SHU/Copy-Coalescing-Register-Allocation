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

; Function Attrs: nounwind uwtable
define dso_local i32 @imagewrap(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 3
  %9 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 1
  %11 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 4
  %12 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %2, null
  %15 = icmp eq ptr %1, null
  %16 = and i1 %15, %14
  br i1 %16, label %502, label %17

17:                                               ; preds = %6
  br i1 %15, label %31, label %18

18:                                               ; preds = %17
  %19 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !41
  %20 = and i32 %19, 4096
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = tail call zeroext i8 @BKE_image_has_loaded_ibuf(ptr noundef nonnull %1) #12
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %502, label %25

25:                                               ; preds = %22, %18
  %26 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 51
  %27 = tail call ptr @BKE_image_pool_acquire_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %26, ptr noundef %5) #12
  %28 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 10
  %29 = load i16, ptr %28, align 2, !tbaa !58
  %30 = or i16 %29, 512
  store i16 %30, ptr %28, align 2, !tbaa !58
  br label %31

31:                                               ; preds = %25, %17
  %32 = phi ptr [ %27, %25 ], [ %2, %17 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !61
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !64
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %31
  br i1 %15, label %502, label %43

43:                                               ; preds = %42
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef %32, ptr noundef %5) #12
  br label %502

44:                                               ; preds = %38, %34
  %45 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 30
  %46 = load i16, ptr %45, align 4, !tbaa !65
  %47 = and i16 %46, 16
  %48 = icmp eq i16 %47, 0
  %49 = getelementptr inbounds float, ptr %3, i64 1
  %50 = select i1 %48, ptr %49, ptr %3
  %51 = select i1 %48, ptr %3, ptr %49
  %52 = load float, ptr %51, align 4, !tbaa !68
  %53 = load float, ptr %50, align 4, !tbaa !68
  %54 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 42
  %55 = load i16, ptr %54, align 8, !tbaa !69
  %56 = icmp eq i16 %55, 5
  br i1 %56, label %57, label %101

57:                                               ; preds = %44
  %58 = tail call float @llvm.floor.f32(float %52)
  %59 = fptosi float %58 to i32
  %60 = tail call float @llvm.floor.f32(float %53)
  %61 = fptosi float %60 to i32
  %62 = sitofp i32 %59 to float
  %63 = fsub float %52, %62
  %64 = sitofp i32 %61 to float
  %65 = fsub float %53, %64
  %66 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %67 = load i16, ptr %66, align 2, !tbaa !70
  %68 = and i16 %67, 8
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %57
  %71 = add nsw i32 %61, %59
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  br i1 %15, label %97, label %75

75:                                               ; preds = %74
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %32, ptr noundef %5) #12
  br label %97

76:                                               ; preds = %70, %57
  %77 = and i16 %67, 16
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = add nsw i32 %61, %59
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  br i1 %15, label %97, label %84

84:                                               ; preds = %83
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %32, ptr noundef %5) #12
  br label %97

85:                                               ; preds = %79, %76
  %86 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 48
  %87 = load float, ptr %86, align 4, !tbaa !71
  %88 = fcmp olt float %87, 1.000000e+00
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = fadd float %63, -5.000000e-01
  %91 = fsub float 1.000000e+00, %87
  %92 = fdiv float %90, %91
  %93 = fadd float %92, 5.000000e-01
  %94 = fadd float %65, -5.000000e-01
  %95 = fdiv float %94, %91
  %96 = fadd float %95, 5.000000e-01
  br label %97

97:                                               ; preds = %85, %89, %83, %84, %74, %75
  %98 = phi i1 [ false, %75 ], [ false, %74 ], [ false, %84 ], [ false, %83 ], [ true, %89 ], [ true, %85 ]
  %99 = phi float [ %65, %75 ], [ %65, %74 ], [ %65, %84 ], [ %65, %83 ], [ %96, %89 ], [ %65, %85 ]
  %100 = phi float [ %63, %75 ], [ %63, %74 ], [ %63, %84 ], [ %63, %83 ], [ %93, %89 ], [ %63, %85 ]
  br i1 %98, label %101, label %502

101:                                              ; preds = %97, %44
  %102 = phi float [ %99, %97 ], [ %53, %44 ]
  %103 = phi float [ %100, %97 ], [ %52, %44 ]
  %104 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 2
  %105 = load i32, ptr %104, align 8, !tbaa !72
  %106 = sitofp i32 %105 to float
  %107 = fmul float %103, %106
  %108 = tail call float @llvm.floor.f32(float %107)
  %109 = fptosi float %108 to i32
  %110 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 3
  %111 = load i32, ptr %110, align 4, !tbaa !73
  %112 = sitofp i32 %111 to float
  %113 = fmul float %102, %112
  %114 = tail call float @llvm.floor.f32(float %113)
  %115 = fptosi float %114 to i32
  %116 = load i16, ptr %54, align 8, !tbaa !69
  switch i16 %116, label %149 [
    i16 4, label %117
    i16 2, label %133
    i16 5, label %133
    i16 1, label %143
  ]

117:                                              ; preds = %101
  %118 = icmp sgt i32 %109, -1
  %119 = icmp sgt i32 %115, -1
  %120 = select i1 %118, i1 %119, i1 false
  %121 = icmp sgt i32 %105, %109
  %122 = select i1 %120, i1 %121, i1 false
  %123 = icmp sgt i32 %111, %115
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %125, label %131

125:                                              ; preds = %117
  %126 = getelementptr inbounds float, ptr %3, i64 2
  %127 = load float, ptr %126, align 4, !tbaa !68
  %128 = fcmp olt float %127, -1.000000e+00
  %129 = fcmp ogt float %127, 1.000000e+00
  %130 = or i1 %128, %129
  br i1 %130, label %131, label %168

131:                                              ; preds = %125, %117
  br i1 %15, label %502, label %132

132:                                              ; preds = %131
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %32, ptr noundef %5) #12
  br label %502

133:                                              ; preds = %101, %101
  %134 = icmp sgt i32 %109, -1
  %135 = icmp sgt i32 %115, -1
  %136 = select i1 %134, i1 %135, i1 false
  %137 = icmp sgt i32 %105, %109
  %138 = select i1 %136, i1 %137, i1 false
  %139 = icmp sgt i32 %111, %115
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %168, label %141

141:                                              ; preds = %133
  br i1 %15, label %502, label %142

142:                                              ; preds = %141
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %32, ptr noundef %5) #12
  br label %502

143:                                              ; preds = %101
  %144 = icmp sgt i32 %105, %109
  br i1 %144, label %147, label %145

145:                                              ; preds = %143
  %146 = add nsw i32 %105, -1
  br label %154

147:                                              ; preds = %143
  %148 = tail call i32 @llvm.smax.i32(i32 %109, i32 0)
  br label %154

149:                                              ; preds = %101
  %150 = srem i32 %109, %105
  %151 = icmp slt i32 %150, 0
  %152 = select i1 %151, i32 %105, i32 0
  %153 = add nsw i32 %152, %150
  br label %154

154:                                              ; preds = %149, %145, %147
  %155 = phi i32 [ %146, %145 ], [ %148, %147 ], [ %153, %149 ]
  %156 = icmp eq i16 %116, 1
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = icmp sgt i32 %111, %115
  br i1 %158, label %161, label %159

159:                                              ; preds = %157
  %160 = add nsw i32 %111, -1
  br label %168

161:                                              ; preds = %157
  %162 = tail call i32 @llvm.smax.i32(i32 %115, i32 0)
  br label %168

163:                                              ; preds = %154
  %164 = srem i32 %115, %111
  %165 = icmp slt i32 %164, 0
  %166 = select i1 %165, i32 %111, i32 0
  %167 = add nsw i32 %166, %164
  br label %168

168:                                              ; preds = %133, %163, %125, %159, %161
  %169 = phi i32 [ %160, %159 ], [ %162, %161 ], [ %115, %125 ], [ %167, %163 ], [ %115, %133 ]
  %170 = phi i32 [ %155, %159 ], [ %155, %161 ], [ %109, %125 ], [ %155, %163 ], [ %109, %133 ]
  %171 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !74
  %172 = and i16 %171, 4
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %184, label %174

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 6
  %176 = load i32, ptr %175, align 8, !tbaa !75
  %177 = and i32 %176, 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %174
  %180 = mul nsw i32 %111, %105
  %181 = load ptr, ptr %35, align 8, !tbaa !61
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i32, ptr %181, i64 %182
  store ptr %183, ptr %35, align 8, !tbaa !61
  br label %184

184:                                              ; preds = %179, %174, %168
  br i1 %15, label %200, label %185

185:                                              ; preds = %184
  %186 = load i16, ptr %45, align 4, !tbaa !65
  %187 = zext i16 %186 to i32
  %188 = and i32 %187, 2
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %200, label %190

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 10
  %192 = load i16, ptr %191, align 2, !tbaa !58
  %193 = and i16 %192, 4096
  %194 = icmp eq i16 %193, 0
  %195 = and i32 %187, 32
  %196 = icmp eq i32 %195, 0
  %197 = and i1 %196, %194
  br i1 %197, label %198, label %200

198:                                              ; preds = %190
  %199 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 5
  store i32 1, ptr %199, align 4, !tbaa !76
  br label %200

200:                                              ; preds = %185, %190, %198, %184
  %201 = load i16, ptr %45, align 4, !tbaa !65
  %202 = and i16 %201, 1
  %203 = icmp eq i16 %202, 0
  br i1 %203, label %226, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 10
  %206 = load float, ptr %205, align 8, !tbaa !77
  %207 = fmul float %206, 5.000000e-01
  %208 = fdiv float %207, %106
  %209 = fdiv float %207, %112
  %210 = sub nsw i32 %109, %170
  %211 = sitofp i32 %210 to float
  %212 = fdiv float %211, %106
  %213 = fsub float %103, %212
  %214 = sub nsw i32 %115, %169
  %215 = sitofp i32 %214 to float
  %216 = fdiv float %215, %112
  %217 = fsub float %102, %216
  %218 = fsub float %213, %208
  %219 = fsub float %217, %209
  %220 = fadd float %213, %208
  %221 = fadd float %217, %209
  %222 = icmp eq i16 %116, 3
  %223 = zext i1 %222 to i16
  %224 = icmp eq i16 %116, 1
  %225 = zext i1 %224 to i16
  tail call fastcc void @boxsample(ptr noundef nonnull %32, float noundef %218, float noundef %219, float noundef %220, float noundef %221, ptr noundef nonnull %4, i16 noundef signext %223, i16 noundef signext %225)
  br label %227

226:                                              ; preds = %200
  tail call fastcc void @ibuf_get_color(ptr noundef nonnull %10, ptr noundef nonnull %32, i32 noundef %170, i32 noundef %169)
  br label %227

227:                                              ; preds = %226, %204
  %228 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !74
  %229 = and i16 %228, 4
  %230 = icmp eq i16 %229, 0
  br i1 %230, label %244, label %231

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 6
  %233 = load i32, ptr %232, align 8, !tbaa !75
  %234 = and i32 %233, 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %244, label %236

236:                                              ; preds = %231
  %237 = load i32, ptr %104, align 8, !tbaa !72
  %238 = load i32, ptr %110, align 4, !tbaa !73
  %239 = mul nsw i32 %238, %237
  %240 = load ptr, ptr %35, align 8, !tbaa !61
  %241 = sext i32 %239 to i64
  %242 = sub nsw i64 0, %241
  %243 = getelementptr inbounds i32, ptr %240, i64 %242
  store ptr %243, ptr %35, align 8, !tbaa !61
  br label %244

244:                                              ; preds = %236, %231, %227
  %245 = load ptr, ptr %12, align 8, !tbaa !34
  %246 = icmp eq ptr %245, null
  br i1 %246, label %403, label %247

247:                                              ; preds = %244
  %248 = load i16, ptr %45, align 4, !tbaa !65
  %249 = and i16 %248, 2048
  %250 = icmp eq i16 %249, 0
  %251 = load float, ptr %10, align 4, !tbaa !78
  br i1 %250, label %262, label %252

252:                                              ; preds = %247
  %253 = fadd float %251, -5.000000e-01
  %254 = fmul float %253, -2.000000e+00
  store float %254, ptr %245, align 4, !tbaa !68
  %255 = load float, ptr %9, align 8, !tbaa !79
  %256 = fadd float %255, -5.000000e-01
  %257 = fmul float %256, 2.000000e+00
  %258 = getelementptr inbounds float, ptr %245, i64 1
  store float %257, ptr %258, align 4, !tbaa !68
  %259 = load float, ptr %8, align 4, !tbaa !80
  %260 = fadd float %259, -5.000000e-01
  %261 = fmul float %260, 2.000000e+00
  br label %399

262:                                              ; preds = %247
  %263 = load float, ptr %9, align 8, !tbaa !79
  %264 = fadd float %251, %263
  %265 = load float, ptr %8, align 4, !tbaa !80
  %266 = fadd float %264, %265
  %267 = load i32, ptr %104, align 8, !tbaa !72
  %268 = add nsw i32 %267, -1
  %269 = icmp slt i32 %170, %268
  br i1 %269, label %270, label %330

270:                                              ; preds = %262
  %271 = add nsw i32 %170, 1
  %272 = mul nsw i32 %267, %169
  %273 = add nsw i32 %271, %272
  %274 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 9
  %275 = load ptr, ptr %274, align 8, !tbaa !64
  %276 = icmp eq ptr %275, null
  br i1 %276, label %302, label %277

277:                                              ; preds = %270
  %278 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 5
  %279 = load i32, ptr %278, align 4, !tbaa !81
  switch i32 %279, label %298 [
    i32 4, label %280
    i32 3, label %289
  ]

280:                                              ; preds = %277
  %281 = shl nsw i32 %273, 2
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds float, ptr %275, i64 %282
  %284 = load float, ptr %283, align 4, !tbaa !68
  %285 = getelementptr inbounds float, ptr %283, i64 1
  %286 = load float, ptr %285, align 4, !tbaa !68
  %287 = getelementptr inbounds float, ptr %283, i64 2
  %288 = load float, ptr %287, align 4, !tbaa !68
  br label %324

289:                                              ; preds = %277
  %290 = mul nsw i32 %273, 3
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds float, ptr %275, i64 %291
  %293 = load float, ptr %292, align 4, !tbaa !68
  %294 = getelementptr inbounds float, ptr %292, i64 1
  %295 = load float, ptr %294, align 4, !tbaa !68
  %296 = getelementptr inbounds float, ptr %292, i64 2
  %297 = load float, ptr %296, align 4, !tbaa !68
  br label %324

298:                                              ; preds = %277
  %299 = sext i32 %273 to i64
  %300 = getelementptr inbounds float, ptr %275, i64 %299
  %301 = load float, ptr %300, align 4, !tbaa !68
  br label %324

302:                                              ; preds = %270
  %303 = load ptr, ptr %35, align 8, !tbaa !61
  %304 = sext i32 %273 to i64
  %305 = getelementptr inbounds i32, ptr %303, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !82
  %307 = uitofp i8 %306 to float
  %308 = fmul float %307, 0x3F70101020000000
  %309 = getelementptr inbounds i8, ptr %305, i64 1
  %310 = load i8, ptr %309, align 1, !tbaa !82
  %311 = uitofp i8 %310 to float
  %312 = fmul float %311, 0x3F70101020000000
  %313 = getelementptr inbounds i8, ptr %305, i64 2
  %314 = load i8, ptr %313, align 1, !tbaa !82
  %315 = uitofp i8 %314 to float
  %316 = fmul float %315, 0x3F70101020000000
  %317 = getelementptr inbounds i8, ptr %305, i64 3
  %318 = load i8, ptr %317, align 1, !tbaa !82
  %319 = uitofp i8 %318 to float
  %320 = fmul float %319, 0x3F70101020000000
  %321 = fmul float %308, %320
  %322 = fmul float %312, %320
  %323 = fmul float %316, %320
  br label %324

324:                                              ; preds = %280, %289, %298, %302
  %325 = phi float [ %323, %302 ], [ %301, %298 ], [ %297, %289 ], [ %288, %280 ]
  %326 = phi float [ %322, %302 ], [ %301, %298 ], [ %295, %289 ], [ %286, %280 ]
  %327 = phi float [ %321, %302 ], [ %301, %298 ], [ %293, %289 ], [ %284, %280 ]
  %328 = fadd float %326, %327
  %329 = fadd float %325, %328
  br label %330

330:                                              ; preds = %262, %324
  %331 = phi float [ %329, %324 ], [ %266, %262 ]
  %332 = load i32, ptr %110, align 4, !tbaa !73
  %333 = add nsw i32 %332, -1
  %334 = icmp slt i32 %169, %333
  br i1 %334, label %335, label %395

335:                                              ; preds = %330
  %336 = add nsw i32 %169, 1
  %337 = mul nsw i32 %267, %336
  %338 = add nsw i32 %337, %170
  %339 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 9
  %340 = load ptr, ptr %339, align 8, !tbaa !64
  %341 = icmp eq ptr %340, null
  br i1 %341, label %367, label %342

342:                                              ; preds = %335
  %343 = getelementptr inbounds %struct.ImBuf, ptr %32, i64 0, i32 5
  %344 = load i32, ptr %343, align 4, !tbaa !81
  switch i32 %344, label %363 [
    i32 4, label %345
    i32 3, label %354
  ]

345:                                              ; preds = %342
  %346 = shl nsw i32 %338, 2
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds float, ptr %340, i64 %347
  %349 = load float, ptr %348, align 4, !tbaa !68
  %350 = getelementptr inbounds float, ptr %348, i64 1
  %351 = load float, ptr %350, align 4, !tbaa !68
  %352 = getelementptr inbounds float, ptr %348, i64 2
  %353 = load float, ptr %352, align 4, !tbaa !68
  br label %389

354:                                              ; preds = %342
  %355 = mul nsw i32 %338, 3
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds float, ptr %340, i64 %356
  %358 = load float, ptr %357, align 4, !tbaa !68
  %359 = getelementptr inbounds float, ptr %357, i64 1
  %360 = load float, ptr %359, align 4, !tbaa !68
  %361 = getelementptr inbounds float, ptr %357, i64 2
  %362 = load float, ptr %361, align 4, !tbaa !68
  br label %389

363:                                              ; preds = %342
  %364 = sext i32 %338 to i64
  %365 = getelementptr inbounds float, ptr %340, i64 %364
  %366 = load float, ptr %365, align 4, !tbaa !68
  br label %389

367:                                              ; preds = %335
  %368 = load ptr, ptr %35, align 8, !tbaa !61
  %369 = sext i32 %338 to i64
  %370 = getelementptr inbounds i32, ptr %368, i64 %369
  %371 = load i8, ptr %370, align 1, !tbaa !82
  %372 = uitofp i8 %371 to float
  %373 = fmul float %372, 0x3F70101020000000
  %374 = getelementptr inbounds i8, ptr %370, i64 1
  %375 = load i8, ptr %374, align 1, !tbaa !82
  %376 = uitofp i8 %375 to float
  %377 = fmul float %376, 0x3F70101020000000
  %378 = getelementptr inbounds i8, ptr %370, i64 2
  %379 = load i8, ptr %378, align 1, !tbaa !82
  %380 = uitofp i8 %379 to float
  %381 = fmul float %380, 0x3F70101020000000
  %382 = getelementptr inbounds i8, ptr %370, i64 3
  %383 = load i8, ptr %382, align 1, !tbaa !82
  %384 = uitofp i8 %383 to float
  %385 = fmul float %384, 0x3F70101020000000
  %386 = fmul float %373, %385
  %387 = fmul float %377, %385
  %388 = fmul float %381, %385
  br label %389

389:                                              ; preds = %345, %354, %363, %367
  %390 = phi float [ %388, %367 ], [ %366, %363 ], [ %362, %354 ], [ %353, %345 ]
  %391 = phi float [ %387, %367 ], [ %366, %363 ], [ %360, %354 ], [ %351, %345 ]
  %392 = phi float [ %386, %367 ], [ %366, %363 ], [ %358, %354 ], [ %349, %345 ]
  %393 = fadd float %391, %392
  %394 = fadd float %390, %393
  br label %395

395:                                              ; preds = %330, %389
  %396 = phi float [ %394, %389 ], [ %266, %330 ]
  %397 = fsub float %266, %331
  store float %397, ptr %245, align 4, !tbaa !68
  %398 = fsub float %266, %396
  br label %399

399:                                              ; preds = %395, %252
  %400 = phi i64 [ 2, %252 ], [ 1, %395 ]
  %401 = phi float [ %261, %252 ], [ %398, %395 ]
  %402 = getelementptr inbounds float, ptr %245, i64 %400
  store float %401, ptr %402, align 4, !tbaa !68
  br label %403

403:                                              ; preds = %399, %244
  %404 = getelementptr inbounds %struct.TexResult, ptr %4, i64 0, i32 5
  %405 = load i32, ptr %404, align 4, !tbaa !76
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %409, label %407

407:                                              ; preds = %403
  %408 = load float, ptr %11, align 8, !tbaa !83
  store float %408, ptr %4, align 8, !tbaa !84
  br label %422

409:                                              ; preds = %403
  %410 = load i16, ptr %45, align 4, !tbaa !65
  %411 = and i16 %410, 32
  %412 = icmp eq i16 %411, 0
  br i1 %412, label %421, label %413

413:                                              ; preds = %409
  %414 = load float, ptr %10, align 4, !tbaa !78
  %415 = load float, ptr %9, align 8, !tbaa !79
  %416 = load float, ptr %8, align 4, !tbaa !80
  %417 = fcmp ogt float %414, %415
  %418 = select i1 %417, float %414, float %415
  %419 = fcmp ogt float %418, %416
  %420 = select i1 %419, float %418, float %416
  store float %420, ptr %4, align 8, !tbaa !84
  store float %420, ptr %11, align 8, !tbaa !83
  br label %422

421:                                              ; preds = %409
  store float 1.000000e+00, ptr %4, align 8, !tbaa !84
  store float 1.000000e+00, ptr %11, align 8, !tbaa !83
  br label %422

422:                                              ; preds = %413, %421, %407
  %423 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %424 = load i16, ptr %423, align 2, !tbaa !70
  %425 = and i16 %424, 4
  %426 = icmp eq i16 %425, 0
  br i1 %426, label %430, label %427

427:                                              ; preds = %422
  %428 = load float, ptr %11, align 8, !tbaa !83
  %429 = fsub float 1.000000e+00, %428
  store float %429, ptr %11, align 8, !tbaa !83
  br label %430

430:                                              ; preds = %427, %422
  %431 = load float, ptr %11, align 8, !tbaa !83
  %432 = fcmp une float %431, 1.000000e+00
  %433 = fcmp ogt float %431, 0x3F1A36E2E0000000
  %434 = and i1 %432, %433
  br i1 %434, label %435, label %447

435:                                              ; preds = %430
  %436 = load i16, ptr %45, align 4, !tbaa !65
  %437 = and i16 %436, 32
  %438 = icmp eq i16 %437, 0
  br i1 %438, label %439, label %447

439:                                              ; preds = %435
  %440 = fdiv float 1.000000e+00, %431
  %441 = load float, ptr %10, align 4, !tbaa !78
  %442 = fmul float %440, %441
  store float %442, ptr %10, align 4, !tbaa !78
  %443 = load float, ptr %9, align 8, !tbaa !79
  %444 = fmul float %440, %443
  store float %444, ptr %9, align 8, !tbaa !79
  %445 = load float, ptr %8, align 4, !tbaa !80
  %446 = fmul float %440, %445
  store float %446, ptr %8, align 4, !tbaa !80
  br label %447

447:                                              ; preds = %439, %435, %430
  br i1 %15, label %449, label %448

448:                                              ; preds = %447
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %32, ptr noundef %5) #12
  br label %449

449:                                              ; preds = %448, %447
  %450 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 7
  %451 = load float, ptr %450, align 4, !tbaa !85
  %452 = load float, ptr %10, align 4, !tbaa !78
  %453 = fadd float %452, -5.000000e-01
  %454 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %455 = load float, ptr %454, align 4, !tbaa !86
  %456 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %457 = load float, ptr %456, align 8, !tbaa !87
  %458 = tail call float @llvm.fmuladd.f32(float %453, float %455, float %457)
  %459 = fadd float %458, -5.000000e-01
  %460 = fmul float %451, %459
  store float %460, ptr %10, align 4, !tbaa !78
  %461 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 8
  %462 = load float, ptr %461, align 8, !tbaa !88
  %463 = load float, ptr %9, align 8, !tbaa !79
  %464 = fadd float %463, -5.000000e-01
  %465 = tail call float @llvm.fmuladd.f32(float %464, float %455, float %457)
  %466 = fadd float %465, -5.000000e-01
  %467 = fmul float %462, %466
  store float %467, ptr %9, align 8, !tbaa !79
  %468 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 9
  %469 = load float, ptr %468, align 4, !tbaa !89
  %470 = load float, ptr %8, align 4, !tbaa !80
  %471 = fadd float %470, -5.000000e-01
  %472 = tail call float @llvm.fmuladd.f32(float %471, float %455, float %457)
  %473 = fadd float %472, -5.000000e-01
  %474 = fmul float %469, %473
  store float %474, ptr %8, align 4, !tbaa !80
  %475 = load i16, ptr %423, align 2, !tbaa !70
  %476 = and i16 %475, 1024
  %477 = icmp eq i16 %476, 0
  br i1 %477, label %478, label %487

478:                                              ; preds = %449
  %479 = fcmp olt float %460, 0.000000e+00
  br i1 %479, label %480, label %481

480:                                              ; preds = %478
  store float 0.000000e+00, ptr %10, align 4, !tbaa !78
  br label %481

481:                                              ; preds = %480, %478
  %482 = fcmp olt float %467, 0.000000e+00
  br i1 %482, label %483, label %484

483:                                              ; preds = %481
  store float 0.000000e+00, ptr %9, align 8, !tbaa !79
  br label %484

484:                                              ; preds = %483, %481
  %485 = fcmp olt float %474, 0.000000e+00
  br i1 %485, label %486, label %487

486:                                              ; preds = %484
  store float 0.000000e+00, ptr %8, align 4, !tbaa !80
  br label %487

487:                                              ; preds = %484, %486, %449
  %488 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 6
  %489 = load float, ptr %488, align 8, !tbaa !90
  %490 = fcmp une float %489, 1.000000e+00
  br i1 %490, label %491, label %502

491:                                              ; preds = %487
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  %492 = load float, ptr %10, align 4, !tbaa !78
  %493 = load float, ptr %9, align 8, !tbaa !79
  %494 = load float, ptr %8, align 4, !tbaa !80
  %495 = getelementptr inbounds float, ptr %7, i64 1
  %496 = getelementptr inbounds float, ptr %7, i64 2
  call void @rgb_to_hsv(float noundef %492, float noundef %493, float noundef %494, ptr noundef nonnull %7, ptr noundef nonnull %495, ptr noundef nonnull %496) #12
  %497 = load float, ptr %488, align 8, !tbaa !90
  %498 = load float, ptr %495, align 4, !tbaa !68
  %499 = fmul float %497, %498
  store float %499, ptr %495, align 4, !tbaa !68
  %500 = load float, ptr %7, align 4, !tbaa !68
  %501 = load float, ptr %496, align 4, !tbaa !68
  call void @hsv_to_rgb(float noundef %500, float noundef %499, float noundef %501, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  br label %502

502:                                              ; preds = %487, %491, %141, %142, %131, %132, %42, %43, %22, %6, %97
  %503 = icmp eq ptr %13, null
  %504 = select i1 %503, i32 1, i32 3
  ret i32 %504
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @BKE_image_has_loaded_ibuf(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_pool_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_image_pool_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @boxsample(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr nocapture noundef %5, i16 noundef signext %6, i16 noundef signext %7) unnamed_addr #4 {
  %9 = alloca %struct.TexResult, align 8
  %10 = alloca [8 x %struct.rctf], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #12
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !72
  %13 = sitofp i32 %12 to float
  %14 = fmul float %13, %1
  store float %14, ptr %10, align 16, !tbaa !91
  %15 = fmul float %13, %3
  %16 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 1
  store float %15, ptr %16, align 4, !tbaa !92
  %17 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !73
  %19 = sitofp i32 %18 to float
  %20 = fmul float %19, %2
  %21 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 2
  store float %20, ptr %21, align 8, !tbaa !93
  %22 = fmul float %19, %4
  %23 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 3
  store float %22, ptr %23, align 4, !tbaa !94
  %24 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !76
  %26 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 5
  store i32 %25, ptr %26, align 4, !tbaa !76
  %27 = icmp eq i16 %7, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %8
  %29 = fcmp olt float %14, 0.000000e+00
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  store float 0.000000e+00, ptr %10, align 16, !tbaa !91
  br label %36

31:                                               ; preds = %28
  %32 = add nsw i32 %12, -1
  %33 = sitofp i32 %32 to float
  %34 = fcmp ogt float %14, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store float %33, ptr %10, align 16, !tbaa !91
  br label %36

36:                                               ; preds = %31, %35, %30
  %37 = fcmp olt float %15, 0.000000e+00
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store float 0.000000e+00, ptr %16, align 4, !tbaa !92
  br label %111

39:                                               ; preds = %36
  %40 = add nsw i32 %12, -1
  %41 = sitofp i32 %40 to float
  %42 = fcmp ogt float %15, %41
  br i1 %42, label %43, label %111

43:                                               ; preds = %39
  store float %41, ptr %16, align 4, !tbaa !92
  br label %111

44:                                               ; preds = %8
  %45 = icmp eq i16 %6, 0
  br i1 %45, label %89, label %46

46:                                               ; preds = %44
  %47 = load float, ptr %10, align 16, !tbaa !91
  %48 = fcmp olt float %47, 0.000000e+00
  %49 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 1
  %50 = load float, ptr %49, align 4, !tbaa !92
  br i1 %48, label %51, label %71

51:                                               ; preds = %46
  %52 = fcmp olt float %50, 0.000000e+00
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = fadd float %47, %13
  store float %54, ptr %10, align 16, !tbaa !91
  %55 = fadd float %50, %13
  store float %55, ptr %49, align 4, !tbaa !92
  br label %111

56:                                               ; preds = %51
  %57 = fcmp ogt float %50, %13
  br i1 %57, label %58, label %59

58:                                               ; preds = %56
  store float %13, ptr %49, align 4, !tbaa !92
  br label %59

59:                                               ; preds = %58, %56
  %60 = getelementptr inbounds %struct.rctf, ptr %10, i64 1
  %61 = getelementptr inbounds %struct.rctf, ptr %10, i64 1, i32 1
  store float %13, ptr %61, align 4, !tbaa !92
  %62 = fadd float %47, %13
  store float %62, ptr %60, align 16, !tbaa !91
  %63 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 2
  %64 = load float, ptr %63, align 8, !tbaa !93
  %65 = getelementptr inbounds %struct.rctf, ptr %10, i64 1, i32 2
  store float %64, ptr %65, align 8, !tbaa !93
  %66 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 3
  %67 = load float, ptr %66, align 4, !tbaa !94
  %68 = getelementptr inbounds %struct.rctf, ptr %10, i64 1, i32 3
  store float %67, ptr %68, align 4, !tbaa !94
  %69 = fcmp une float %62, %13
  %70 = select i1 %69, i16 2, i16 1
  store float 0.000000e+00, ptr %10, align 16, !tbaa !91
  br label %111

71:                                               ; preds = %46
  %72 = fcmp ogt float %50, %13
  br i1 %72, label %73, label %111

73:                                               ; preds = %71
  %74 = fcmp ogt float %47, %13
  %75 = fsub float %50, %13
  br i1 %74, label %76, label %78

76:                                               ; preds = %73
  %77 = fsub float %47, %13
  store float %77, ptr %10, align 16, !tbaa !91
  store float %75, ptr %49, align 4, !tbaa !92
  br label %111

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.rctf, ptr %10, i64 1
  store float 0.000000e+00, ptr %79, align 16, !tbaa !91
  %80 = getelementptr inbounds %struct.rctf, ptr %10, i64 1, i32 1
  store float %75, ptr %80, align 4, !tbaa !92
  %81 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 2
  %82 = load float, ptr %81, align 8, !tbaa !93
  %83 = getelementptr inbounds %struct.rctf, ptr %10, i64 1, i32 2
  store float %82, ptr %83, align 8, !tbaa !93
  %84 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 3
  %85 = load float, ptr %84, align 4, !tbaa !94
  %86 = getelementptr inbounds %struct.rctf, ptr %10, i64 1, i32 3
  store float %85, ptr %86, align 4, !tbaa !94
  %87 = fcmp une float %75, 0.000000e+00
  %88 = select i1 %87, i16 2, i16 1
  store float %13, ptr %49, align 4, !tbaa !92
  br label %111

89:                                               ; preds = %44
  %90 = fsub float %15, %14
  %91 = fcmp olt float %14, 0.000000e+00
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store float 0.000000e+00, ptr %10, align 16, !tbaa !91
  br label %93

93:                                               ; preds = %92, %89
  %94 = fcmp ogt float %15, %13
  br i1 %94, label %95, label %96

95:                                               ; preds = %93
  store float %13, ptr %16, align 4, !tbaa !92
  br label %96

96:                                               ; preds = %95, %93
  %97 = load float, ptr %10, align 16, !tbaa !91
  %98 = load float, ptr %16, align 4, !tbaa !92
  %99 = fcmp ogt float %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store float %98, ptr %10, align 16, !tbaa !91
  br label %106

101:                                              ; preds = %96
  %102 = fcmp une float %90, 0.000000e+00
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = fsub float %98, %97
  %105 = fdiv float %104, %90
  br label %106

106:                                              ; preds = %100, %101, %103
  %107 = phi float [ 0.000000e+00, %100 ], [ %105, %103 ], [ 1.000000e+00, %101 ]
  %108 = fcmp ugt float %107, 0.000000e+00
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %110, i8 0, i64 16, i1 false)
  br label %294

111:                                              ; preds = %78, %76, %71, %59, %53, %106, %38, %43, %39
  %112 = phi i16 [ 1, %106 ], [ 1, %38 ], [ 1, %43 ], [ 1, %39 ], [ 1, %53 ], [ %70, %59 ], [ 1, %76 ], [ %88, %78 ], [ 1, %71 ]
  %113 = phi float [ %107, %106 ], [ 1.000000e+00, %38 ], [ 1.000000e+00, %43 ], [ 1.000000e+00, %39 ], [ 1.000000e+00, %53 ], [ 1.000000e+00, %59 ], [ 1.000000e+00, %76 ], [ 1.000000e+00, %78 ], [ 1.000000e+00, %71 ]
  br i1 %27, label %130, label %114

114:                                              ; preds = %111
  %115 = load float, ptr %21, align 8, !tbaa !93
  %116 = fcmp olt float %115, 0.000000e+00
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = add nsw i32 %18, -1
  %119 = sitofp i32 %118 to float
  %120 = fcmp ogt float %115, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117, %114
  %122 = phi float [ 0.000000e+00, %114 ], [ %119, %117 ]
  store float %122, ptr %21, align 8, !tbaa !93
  br label %123

123:                                              ; preds = %121, %117
  %124 = load float, ptr %23, align 4, !tbaa !94
  %125 = fcmp olt float %124, 0.000000e+00
  br i1 %125, label %212, label %126

126:                                              ; preds = %123
  %127 = add nsw i32 %18, -1
  %128 = sitofp i32 %127 to float
  %129 = fcmp ogt float %124, %128
  br i1 %129, label %212, label %214

130:                                              ; preds = %111
  %131 = icmp eq i16 %6, 0
  br i1 %131, label %187, label %132

132:                                              ; preds = %130, %182
  %133 = phi i16 [ %185, %182 ], [ %112, %130 ]
  %134 = phi ptr [ %184, %182 ], [ %10, %130 ]
  %135 = phi i16 [ %183, %182 ], [ %112, %130 ]
  %136 = getelementptr inbounds %struct.rctf, ptr %134, i64 0, i32 2
  %137 = load float, ptr %136, align 4, !tbaa !93
  %138 = fcmp olt float %137, 0.000000e+00
  %139 = getelementptr inbounds %struct.rctf, ptr %134, i64 0, i32 3
  %140 = load float, ptr %139, align 4, !tbaa !94
  br i1 %138, label %141, label %162

141:                                              ; preds = %132
  %142 = fcmp olt float %140, 0.000000e+00
  br i1 %142, label %143, label %146

143:                                              ; preds = %141
  %144 = fadd float %137, %19
  store float %144, ptr %136, align 4, !tbaa !93
  %145 = fadd float %140, %19
  store float %145, ptr %139, align 4, !tbaa !94
  br label %182

146:                                              ; preds = %141
  %147 = fcmp ogt float %140, %19
  br i1 %147, label %148, label %149

148:                                              ; preds = %146
  store float %19, ptr %139, align 4, !tbaa !94
  br label %149

149:                                              ; preds = %148, %146
  %150 = sext i16 %135 to i64
  %151 = getelementptr inbounds %struct.rctf, ptr %10, i64 %150
  %152 = getelementptr inbounds %struct.rctf, ptr %10, i64 %150, i32 3
  store float %19, ptr %152, align 4, !tbaa !94
  %153 = fadd float %137, %19
  %154 = getelementptr inbounds %struct.rctf, ptr %10, i64 %150, i32 2
  store float %153, ptr %154, align 8, !tbaa !93
  %155 = load float, ptr %134, align 4, !tbaa !91
  store float %155, ptr %151, align 16, !tbaa !91
  %156 = getelementptr inbounds %struct.rctf, ptr %134, i64 0, i32 1
  %157 = load float, ptr %156, align 4, !tbaa !92
  %158 = getelementptr inbounds %struct.rctf, ptr %10, i64 %150, i32 1
  store float %157, ptr %158, align 4, !tbaa !92
  %159 = fcmp une float %153, %19
  %160 = zext i1 %159 to i16
  %161 = add i16 %135, %160
  store float 0.000000e+00, ptr %136, align 4, !tbaa !93
  br label %182

162:                                              ; preds = %132
  %163 = fcmp ogt float %140, %19
  br i1 %163, label %164, label %182

164:                                              ; preds = %162
  %165 = fcmp ogt float %137, %19
  br i1 %165, label %166, label %169

166:                                              ; preds = %164
  %167 = fsub float %137, %19
  store float %167, ptr %136, align 4, !tbaa !93
  %168 = fsub float %140, %19
  store float %168, ptr %139, align 4, !tbaa !94
  br label %182

169:                                              ; preds = %164
  %170 = sext i16 %135 to i64
  %171 = getelementptr inbounds %struct.rctf, ptr %10, i64 %170
  %172 = getelementptr inbounds %struct.rctf, ptr %10, i64 %170, i32 2
  store float 0.000000e+00, ptr %172, align 8, !tbaa !93
  %173 = fsub float %140, %19
  %174 = getelementptr inbounds %struct.rctf, ptr %10, i64 %170, i32 3
  store float %173, ptr %174, align 4, !tbaa !94
  %175 = load float, ptr %134, align 4, !tbaa !91
  store float %175, ptr %171, align 16, !tbaa !91
  %176 = getelementptr inbounds %struct.rctf, ptr %134, i64 0, i32 1
  %177 = load float, ptr %176, align 4, !tbaa !92
  %178 = getelementptr inbounds %struct.rctf, ptr %10, i64 %170, i32 1
  store float %177, ptr %178, align 4, !tbaa !92
  %179 = fcmp une float %173, 0.000000e+00
  %180 = zext i1 %179 to i16
  %181 = add i16 %135, %180
  store float %19, ptr %139, align 4, !tbaa !94
  br label %182

182:                                              ; preds = %169, %166, %162, %149, %143
  %183 = phi i16 [ %135, %143 ], [ %161, %149 ], [ %135, %166 ], [ %181, %169 ], [ %135, %162 ]
  %184 = getelementptr inbounds %struct.rctf, ptr %134, i64 1
  %185 = add nsw i16 %133, -1
  %186 = icmp ugt i16 %133, 1
  br i1 %186, label %132, label %214, !llvm.loop !95

187:                                              ; preds = %130
  %188 = load float, ptr %23, align 4, !tbaa !94
  %189 = load float, ptr %21, align 8, !tbaa !93
  %190 = fsub float %188, %189
  %191 = fcmp olt float %189, 0.000000e+00
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  store float 0.000000e+00, ptr %21, align 8, !tbaa !93
  br label %193

193:                                              ; preds = %192, %187
  %194 = fcmp ogt float %188, %19
  br i1 %194, label %195, label %196

195:                                              ; preds = %193
  store float %19, ptr %23, align 4, !tbaa !94
  br label %196

196:                                              ; preds = %195, %193
  %197 = load float, ptr %21, align 8, !tbaa !93
  %198 = load float, ptr %23, align 4, !tbaa !94
  %199 = fcmp ogt float %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  store float %198, ptr %21, align 8, !tbaa !93
  br label %206

201:                                              ; preds = %196
  %202 = fcmp une float %190, 0.000000e+00
  br i1 %202, label %203, label %206

203:                                              ; preds = %201
  %204 = fsub float %198, %197
  %205 = fdiv float %204, %190
  br label %206

206:                                              ; preds = %200, %201, %203
  %207 = phi float [ 0.000000e+00, %200 ], [ %205, %203 ], [ 1.000000e+00, %201 ]
  %208 = fmul float %113, %207
  %209 = fcmp ugt float %208, 0.000000e+00
  br i1 %209, label %214, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %211, i8 0, i64 16, i1 false)
  br label %294

212:                                              ; preds = %126, %123
  %213 = phi float [ 0.000000e+00, %123 ], [ %128, %126 ]
  store float %213, ptr %23, align 4, !tbaa !94
  br label %214

214:                                              ; preds = %182, %212, %206, %126
  %215 = phi i16 [ %112, %206 ], [ %112, %126 ], [ %112, %212 ], [ %183, %182 ]
  %216 = phi float [ %208, %206 ], [ %113, %126 ], [ %113, %212 ], [ %113, %182 ]
  %217 = icmp sgt i16 %215, 1
  br i1 %217, label %218, label %273

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 4
  %220 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  %221 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  %222 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %223 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %224 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 2
  %225 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %226 = icmp eq i32 %25, 0
  %227 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %222, i8 0, i64 16, i1 false)
  br label %228

228:                                              ; preds = %218, %257
  %229 = phi i16 [ %215, %218 ], [ %232, %257 ]
  %230 = phi float [ 0.000000e+00, %218 ], [ %243, %257 ]
  %231 = phi ptr [ %10, %218 ], [ %258, %257 ]
  %232 = add i16 %229, -1
  call fastcc void @boxsampleclip(ptr noundef %0, ptr noundef nonnull %231, ptr noundef nonnull %9)
  %233 = getelementptr inbounds %struct.rctf, ptr %231, i64 0, i32 1
  %234 = load float, ptr %233, align 4, !tbaa !92
  %235 = load float, ptr %231, align 4, !tbaa !91
  %236 = fsub float %234, %235
  %237 = getelementptr inbounds %struct.rctf, ptr %231, i64 0, i32 3
  %238 = load float, ptr %237, align 4, !tbaa !94
  %239 = getelementptr inbounds %struct.rctf, ptr %231, i64 0, i32 2
  %240 = load float, ptr %239, align 4, !tbaa !93
  %241 = fsub float %238, %240
  %242 = fmul float %236, %241
  %243 = fadd float %230, %242
  %244 = load float, ptr %223, align 4, !tbaa !78
  %245 = load float, ptr %222, align 4, !tbaa !78
  %246 = tail call float @llvm.fmuladd.f32(float %242, float %244, float %245)
  store float %246, ptr %222, align 4, !tbaa !78
  %247 = load float, ptr %224, align 8, !tbaa !79
  %248 = load float, ptr %220, align 8, !tbaa !79
  %249 = tail call float @llvm.fmuladd.f32(float %242, float %247, float %248)
  store float %249, ptr %220, align 8, !tbaa !79
  %250 = load float, ptr %225, align 4, !tbaa !80
  %251 = load float, ptr %221, align 4, !tbaa !80
  %252 = tail call float @llvm.fmuladd.f32(float %242, float %250, float %251)
  store float %252, ptr %221, align 4, !tbaa !80
  br i1 %226, label %257, label %253

253:                                              ; preds = %228
  %254 = load float, ptr %227, align 8, !tbaa !83
  %255 = load float, ptr %219, align 8, !tbaa !83
  %256 = tail call float @llvm.fmuladd.f32(float %242, float %254, float %255)
  store float %256, ptr %219, align 8, !tbaa !83
  br label %257

257:                                              ; preds = %253, %228
  %258 = getelementptr inbounds %struct.rctf, ptr %231, i64 1
  %259 = icmp eq i16 %232, 0
  br i1 %259, label %260, label %228, !llvm.loop !98

260:                                              ; preds = %257
  %261 = fcmp une float %243, 0.000000e+00
  br i1 %261, label %262, label %274

262:                                              ; preds = %260
  %263 = load float, ptr %222, align 4, !tbaa !78
  %264 = fdiv float %263, %243
  store float %264, ptr %222, align 4, !tbaa !78
  %265 = load float, ptr %220, align 8, !tbaa !79
  %266 = fdiv float %265, %243
  store float %266, ptr %220, align 8, !tbaa !79
  %267 = load float, ptr %221, align 4, !tbaa !80
  %268 = fdiv float %267, %243
  store float %268, ptr %221, align 4, !tbaa !80
  %269 = icmp eq i32 %25, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %262
  %271 = load float, ptr %219, align 8, !tbaa !83
  %272 = fdiv float %271, %243
  store float %272, ptr %219, align 8, !tbaa !83
  br label %274

273:                                              ; preds = %214
  call fastcc void @boxsampleclip(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %5)
  br label %274

274:                                              ; preds = %260, %270, %262, %273
  %275 = load i32, ptr %24, align 4, !tbaa !76
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 4
  store float 1.000000e+00, ptr %278, align 8, !tbaa !83
  br label %279

279:                                              ; preds = %277, %274
  %280 = fcmp une float %216, 1.000000e+00
  br i1 %280, label %281, label %294

281:                                              ; preds = %279
  %282 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 1
  %283 = load float, ptr %282, align 4, !tbaa !78
  %284 = fmul float %216, %283
  store float %284, ptr %282, align 4, !tbaa !78
  %285 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 2
  %286 = load float, ptr %285, align 8, !tbaa !79
  %287 = fmul float %216, %286
  store float %287, ptr %285, align 8, !tbaa !79
  %288 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 3
  %289 = load float, ptr %288, align 4, !tbaa !80
  %290 = fmul float %216, %289
  store float %290, ptr %288, align 4, !tbaa !80
  %291 = getelementptr inbounds %struct.TexResult, ptr %5, i64 0, i32 4
  %292 = load float, ptr %291, align 8, !tbaa !83
  %293 = fmul float %216, %292
  store float %293, ptr %291, align 8, !tbaa !83
  br label %294

294:                                              ; preds = %279, %281, %210, %109
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ibuf_get_color(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !72
  %7 = mul nsw i32 %6, %3
  %8 = add nsw i32 %7, %2
  %9 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = icmp eq ptr %10, null
  br i1 %11, label %46, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !81
  %15 = getelementptr inbounds float, ptr %0, i64 1
  switch i32 %14, label %40 [
    i32 4, label %16
    i32 3, label %29
  ]

16:                                               ; preds = %12
  %17 = shl nsw i32 %8, 2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, ptr %10, i64 %18
  %20 = load float, ptr %19, align 4, !tbaa !68
  store float %20, ptr %0, align 4, !tbaa !68
  %21 = getelementptr inbounds float, ptr %19, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !68
  store float %22, ptr %15, align 4, !tbaa !68
  %23 = getelementptr inbounds float, ptr %19, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !68
  %25 = getelementptr inbounds float, ptr %0, i64 2
  store float %24, ptr %25, align 4, !tbaa !68
  %26 = getelementptr inbounds float, ptr %19, i64 3
  %27 = load float, ptr %26, align 4, !tbaa !68
  %28 = getelementptr inbounds float, ptr %0, i64 3
  store float %27, ptr %28, align 4, !tbaa !68
  br label %72

29:                                               ; preds = %12
  %30 = mul nsw i32 %8, 3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, ptr %10, i64 %31
  %33 = load float, ptr %32, align 4, !tbaa !68
  store float %33, ptr %0, align 4, !tbaa !68
  %34 = getelementptr inbounds float, ptr %32, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !68
  store float %35, ptr %15, align 4, !tbaa !68
  %36 = getelementptr inbounds float, ptr %32, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !68
  %38 = getelementptr inbounds float, ptr %0, i64 2
  store float %37, ptr %38, align 4, !tbaa !68
  %39 = getelementptr inbounds float, ptr %0, i64 3
  store float 1.000000e+00, ptr %39, align 4, !tbaa !68
  br label %72

40:                                               ; preds = %12
  %41 = sext i32 %8 to i64
  %42 = getelementptr inbounds float, ptr %10, i64 %41
  %43 = load float, ptr %42, align 4, !tbaa !68
  %44 = getelementptr inbounds float, ptr %0, i64 3
  store float %43, ptr %44, align 4, !tbaa !68
  %45 = getelementptr inbounds float, ptr %0, i64 2
  store float %43, ptr %45, align 4, !tbaa !68
  store float %43, ptr %15, align 4, !tbaa !68
  store float %43, ptr %0, align 4, !tbaa !68
  br label %72

46:                                               ; preds = %4
  %47 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !61
  %49 = sext i32 %8 to i64
  %50 = getelementptr inbounds i32, ptr %48, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !82
  %52 = uitofp i8 %51 to float
  %53 = fmul float %52, 0x3F70101020000000
  store float %53, ptr %0, align 4, !tbaa !68
  %54 = getelementptr inbounds i8, ptr %50, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !82
  %56 = uitofp i8 %55 to float
  %57 = fmul float %56, 0x3F70101020000000
  %58 = getelementptr inbounds float, ptr %0, i64 1
  store float %57, ptr %58, align 4, !tbaa !68
  %59 = getelementptr inbounds i8, ptr %50, i64 2
  %60 = load i8, ptr %59, align 1, !tbaa !82
  %61 = uitofp i8 %60 to float
  %62 = fmul float %61, 0x3F70101020000000
  %63 = getelementptr inbounds float, ptr %0, i64 2
  store float %62, ptr %63, align 4, !tbaa !68
  %64 = getelementptr inbounds i8, ptr %50, i64 3
  %65 = load i8, ptr %64, align 1, !tbaa !82
  %66 = uitofp i8 %65 to float
  %67 = fmul float %66, 0x3F70101020000000
  %68 = getelementptr inbounds float, ptr %0, i64 3
  store float %67, ptr %68, align 4, !tbaa !68
  %69 = fmul float %53, %67
  store float %69, ptr %0, align 4, !tbaa !68
  %70 = fmul float %57, %67
  store float %70, ptr %58, align 4, !tbaa !68
  %71 = fmul float %62, %67
  store float %71, ptr %63, align 4, !tbaa !68
  br label %72

72:                                               ; preds = %16, %40, %29, %46
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @rgb_to_hsv(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @hsv_to_rgb(float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @imagewraposa(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
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
  %21 = alloca %struct.TexResult, align 8
  %22 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %21) #12
  %23 = load float, ptr %4, align 4, !tbaa !68
  %24 = getelementptr inbounds float, ptr %4, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !68
  %26 = load float, ptr %5, align 4, !tbaa !68
  %27 = getelementptr inbounds float, ptr %5, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !68
  %29 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 38
  %30 = load i32, ptr %29, align 4, !tbaa !99
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %995, label %32

32:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #12
  %33 = icmp eq i32 %30, 2
  %34 = select i1 %33, ptr @feline_eval, ptr @area_sample
  %35 = icmp eq i32 %30, 1
  %36 = select i1 %35, ptr @ewa_eval, ptr %34
  %37 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 3
  %38 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 2
  %39 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 1
  %40 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 4
  %41 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = icmp eq ptr %2, null
  %44 = icmp eq ptr %1, null
  %45 = and i1 %44, %43
  br i1 %45, label %992, label %46

46:                                               ; preds = %32
  br i1 %44, label %57, label %47

47:                                               ; preds = %46
  %48 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !41
  %49 = and i32 %48, 4096
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = tail call zeroext i8 @BKE_image_has_loaded_ibuf(ptr noundef nonnull %1) #12
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %992, label %54

54:                                               ; preds = %51, %47
  %55 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 51
  %56 = tail call ptr @BKE_image_pool_acquire_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %55, ptr noundef %7) #12
  br label %57

57:                                               ; preds = %54, %46
  %58 = phi ptr [ %56, %54 ], [ %2, %46 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 8
  %62 = load ptr, ptr %61, align 8, !tbaa !61
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 9
  %66 = load ptr, ptr %65, align 8, !tbaa !64
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %57
  br i1 %44, label %992, label %69

69:                                               ; preds = %68
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef %58, ptr noundef %7) #12
  br label %992

70:                                               ; preds = %64, %60
  br i1 %44, label %89, label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 10
  %73 = load i16, ptr %72, align 2, !tbaa !58
  %74 = or i16 %73, 512
  store i16 %74, ptr %72, align 2, !tbaa !58
  tail call fastcc void @image_mipmap_test(ptr noundef %0, ptr noundef %58)
  %75 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 30
  %76 = load i16, ptr %75, align 4, !tbaa !65
  %77 = zext i16 %76 to i32
  %78 = and i32 %77, 2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %71
  %81 = load i16, ptr %72, align 2, !tbaa !58
  %82 = and i16 %81, 4096
  %83 = icmp eq i16 %82, 0
  %84 = and i32 %77, 32
  %85 = icmp eq i32 %84, 0
  %86 = and i1 %85, %83
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 5
  store i32 1, ptr %88, align 4, !tbaa !76
  br label %90

89:                                               ; preds = %70
  tail call fastcc void @image_mipmap_test(ptr noundef %0, ptr noundef %58)
  br label %90

90:                                               ; preds = %89, %87, %80, %71
  %91 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 5
  %92 = load i32, ptr %91, align 4, !tbaa !76
  %93 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 5
  store i32 %92, ptr %93, align 4, !tbaa !76
  %94 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 30
  %95 = load i16, ptr %94, align 4, !tbaa !65
  %96 = and i16 %95, 16
  %97 = icmp eq i16 %96, 0
  %98 = getelementptr inbounds float, ptr %3, i64 1
  %99 = select i1 %97, ptr %98, ptr %3
  %100 = select i1 %97, ptr %3, ptr %98
  %101 = load float, ptr %100, align 4, !tbaa !68
  %102 = load float, ptr %99, align 4, !tbaa !68
  %103 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 6
  %104 = load i32, ptr %103, align 8, !tbaa !75
  %105 = and i32 %104, 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %90
  %108 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !100
  %109 = and i32 %108, 64
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %121, label %111

111:                                              ; preds = %107
  %112 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !74
  %113 = and i16 %112, 4
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 3
  %117 = load i32, ptr %116, align 4, !tbaa !73
  %118 = sitofp i32 %117 to float
  %119 = fdiv float 5.000000e-01, %118
  %120 = fadd float %102, %119
  br label %121

121:                                              ; preds = %115, %111, %107, %90
  %122 = phi float [ %102, %111 ], [ %120, %115 ], [ %102, %107 ], [ %102, %90 ]
  %123 = fadd float %23, %26
  %124 = fcmp olt float %23, %26
  %125 = select i1 %124, float %23, float %26
  %126 = fcmp olt float %125, %123
  %127 = select i1 %126, float %125, float %123
  %128 = fcmp ogt float %23, %26
  %129 = select i1 %128, float %23, float %26
  %130 = fcmp ogt float %129, %123
  %131 = select i1 %130, float %129, float %123
  %132 = fadd float %25, %28
  %133 = fcmp olt float %25, %28
  %134 = select i1 %133, float %25, float %28
  %135 = fcmp olt float %134, %132
  %136 = select i1 %135, float %134, float %132
  %137 = fcmp ogt float %25, %28
  %138 = select i1 %137, float %25, float %28
  %139 = fcmp ogt float %138, %132
  %140 = select i1 %139, float %138, float %132
  %141 = fsub float %131, %127
  %142 = fmul float %141, 5.000000e-01
  %143 = fsub float %140, %136
  %144 = fmul float %143, 5.000000e-01
  %145 = and i16 %95, 8192
  %146 = icmp eq i16 %145, 0
  %147 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 10
  %148 = load float, ptr %147, align 8, !tbaa !77
  br i1 %146, label %162, label %149

149:                                              ; preds = %121
  %150 = fmul float %148, 5.000000e-01
  %151 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 2
  %152 = load i32, ptr %151, align 8, !tbaa !72
  %153 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 3
  %154 = load i32, ptr %153, align 4, !tbaa !73
  %155 = tail call i32 @llvm.smin.i32(i32 %152, i32 %154)
  %156 = sitofp i32 %155 to float
  %157 = fdiv float %150, %156
  %158 = fcmp ogt float %157, %142
  %159 = select i1 %158, float %157, float %142
  %160 = fcmp ogt float %157, %144
  %161 = select i1 %160, float %157, float %144
  br label %171

162:                                              ; preds = %121
  %163 = fcmp une float %148, 1.000000e+00
  br i1 %163, label %164, label %171

164:                                              ; preds = %162
  %165 = fmul float %142, %148
  %166 = fmul float %144, %148
  %167 = fmul float %23, %148
  %168 = fmul float %25, %148
  %169 = fmul float %26, %148
  %170 = fmul float %28, %148
  br label %171

171:                                              ; preds = %164, %162, %149
  %172 = phi float [ %168, %164 ], [ %25, %162 ], [ %25, %149 ]
  %173 = phi float [ %167, %164 ], [ %23, %162 ], [ %23, %149 ]
  %174 = phi float [ %170, %164 ], [ %28, %162 ], [ %28, %149 ]
  %175 = phi float [ %169, %164 ], [ %26, %162 ], [ %26, %149 ]
  %176 = phi float [ %166, %164 ], [ %144, %162 ], [ %161, %149 ]
  %177 = phi float [ %165, %164 ], [ %142, %162 ], [ %159, %149 ]
  br i1 %97, label %181, label %178

178:                                              ; preds = %171
  %179 = fneg float %173
  %180 = fneg float %175
  br label %181

181:                                              ; preds = %178, %171
  %182 = phi float [ %172, %171 ], [ %179, %178 ]
  %183 = phi float [ %173, %171 ], [ %172, %178 ]
  %184 = phi float [ %174, %171 ], [ %180, %178 ]
  %185 = phi float [ %175, %171 ], [ %174, %178 ]
  %186 = phi float [ %176, %171 ], [ %177, %178 ]
  %187 = phi float [ %177, %171 ], [ %176, %178 ]
  %188 = fcmp ogt float %187, 2.500000e-01
  %189 = fcmp olt float %187, 0x3EE4F8B580000000
  %190 = select i1 %189, float 0x3EE4F8B580000000, float %187
  %191 = select i1 %188, float 2.500000e-01, float %190
  %192 = fcmp ogt float %186, 2.500000e-01
  %193 = fcmp olt float %186, 0x3EE4F8B580000000
  %194 = select i1 %193, float 0x3EE4F8B580000000, float %186
  %195 = select i1 %192, float 2.500000e-01, float %194
  %196 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 42
  %197 = load i16, ptr %196, align 8, !tbaa !69
  switch i16 %197, label %212 [
    i16 3, label %198
    i16 1, label %211
  ]

198:                                              ; preds = %181
  %199 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %200 = load i16, ptr %199, align 2, !tbaa !70
  %201 = zext i16 %200 to i32
  %202 = and i32 %201, 384
  %203 = icmp eq i32 %202, 384
  br i1 %203, label %212, label %204

204:                                              ; preds = %198
  %205 = and i32 %201, 128
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = and i32 %201, 256
  %209 = icmp eq i32 %208, 0
  %210 = select i1 %209, i32 3, i32 2
  br label %212

211:                                              ; preds = %181
  br label %212

212:                                              ; preds = %211, %207, %204, %198, %181
  %213 = phi i32 [ 4, %211 ], [ 4, %198 ], [ 1, %204 ], [ %210, %207 ], [ 0, %181 ]
  %214 = icmp eq i16 %197, 5
  br i1 %214, label %215, label %325

215:                                              ; preds = %212
  %216 = tail call float @llvm.floor.f32(float %101)
  %217 = fptosi float %216 to i32
  %218 = tail call float @llvm.floor.f32(float %122)
  %219 = fptosi float %218 to i32
  %220 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %221 = load i16, ptr %220, align 2, !tbaa !70
  %222 = and i16 %221, 24
  %223 = icmp eq i16 %222, 24
  br i1 %223, label %224, label %229

224:                                              ; preds = %215
  %225 = sitofp i32 %217 to float
  %226 = fsub float %101, %225
  %227 = sitofp i32 %219 to float
  %228 = fsub float %122, %227
  br label %304

229:                                              ; preds = %215
  %230 = fsub float %101, %191
  %231 = tail call float @llvm.floor.f32(float %230)
  %232 = fptosi float %231 to i32
  %233 = fsub float %122, %195
  %234 = tail call float @llvm.floor.f32(float %233)
  %235 = fptosi float %234 to i32
  %236 = fadd float %101, %191
  %237 = tail call float @llvm.floor.f32(float %236)
  %238 = fptosi float %237 to i32
  %239 = fadd float %122, %195
  %240 = tail call float @llvm.floor.f32(float %239)
  %241 = fptosi float %240 to i32
  %242 = icmp eq i32 %232, %238
  %243 = icmp eq i32 %235, %241
  %244 = select i1 %242, i1 %243, i1 false
  %245 = and i16 %221, 8
  %246 = icmp eq i16 %245, 0
  br i1 %244, label %279, label %247

247:                                              ; preds = %229
  br i1 %246, label %261, label %248

248:                                              ; preds = %247
  %249 = add nsw i32 %232, %219
  %250 = and i32 %249, 1
  %251 = icmp eq i32 %250, 0
  %252 = select i1 %251, i32 %232, i32 %238
  %253 = sitofp i32 %252 to float
  %254 = fsub float %101, %253
  %255 = add nsw i32 %235, %217
  %256 = and i32 %255, 1
  %257 = icmp eq i32 %256, 0
  %258 = select i1 %257, i32 %235, i32 %241
  %259 = sitofp i32 %258 to float
  %260 = fsub float %122, %259
  br label %261

261:                                              ; preds = %248, %247
  %262 = phi float [ %260, %248 ], [ %122, %247 ]
  %263 = phi float [ %254, %248 ], [ %101, %247 ]
  %264 = and i16 %221, 16
  %265 = icmp eq i16 %264, 0
  br i1 %265, label %300, label %266

266:                                              ; preds = %261
  %267 = add nsw i32 %232, %219
  %268 = and i32 %267, 1
  %269 = icmp eq i32 %268, 0
  %270 = select i1 %269, i32 %238, i32 %232
  %271 = sitofp i32 %270 to float
  %272 = fsub float %263, %271
  %273 = add nsw i32 %235, %217
  %274 = and i32 %273, 1
  %275 = icmp eq i32 %274, 0
  %276 = select i1 %275, i32 %241, i32 %235
  %277 = sitofp i32 %276 to float
  %278 = fsub float %262, %277
  br label %300

279:                                              ; preds = %229
  br i1 %246, label %280, label %286

280:                                              ; preds = %279
  %281 = add nsw i32 %219, %217
  %282 = and i32 %281, 1
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  br i1 %44, label %300, label %285

285:                                              ; preds = %284
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef %58, ptr noundef %7) #12
  br label %300

286:                                              ; preds = %280, %279
  %287 = and i16 %221, 16
  %288 = icmp eq i16 %287, 0
  br i1 %288, label %289, label %295

289:                                              ; preds = %286
  %290 = add nsw i32 %219, %217
  %291 = and i32 %290, 1
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %289
  br i1 %44, label %300, label %294

294:                                              ; preds = %293
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef %58, ptr noundef %7) #12
  br label %300

295:                                              ; preds = %289, %286
  %296 = sitofp i32 %217 to float
  %297 = fsub float %101, %296
  %298 = sitofp i32 %219 to float
  %299 = fsub float %122, %298
  br label %300

300:                                              ; preds = %295, %294, %293, %285, %284, %266, %261
  %301 = phi i1 [ false, %285 ], [ false, %284 ], [ false, %294 ], [ false, %293 ], [ true, %261 ], [ true, %266 ], [ true, %295 ]
  %302 = phi float [ %122, %285 ], [ %122, %284 ], [ %122, %294 ], [ %122, %293 ], [ %262, %261 ], [ %278, %266 ], [ %299, %295 ]
  %303 = phi float [ %101, %285 ], [ %101, %284 ], [ %101, %294 ], [ %101, %293 ], [ %263, %261 ], [ %272, %266 ], [ %297, %295 ]
  br i1 %301, label %304, label %319

304:                                              ; preds = %300, %224
  %305 = phi float [ %228, %224 ], [ %302, %300 ]
  %306 = phi float [ %226, %224 ], [ %303, %300 ]
  %307 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 48
  %308 = load float, ptr %307, align 4, !tbaa !71
  %309 = fcmp olt float %308, 1.000000e+00
  br i1 %309, label %310, label %319

310:                                              ; preds = %304
  %311 = fsub float 1.000000e+00, %308
  %312 = fdiv float 1.000000e+00, %311
  %313 = fadd float %306, -5.000000e-01
  %314 = tail call float @llvm.fmuladd.f32(float %313, float %312, float 5.000000e-01)
  %315 = fadd float %305, -5.000000e-01
  %316 = tail call float @llvm.fmuladd.f32(float %315, float %312, float 5.000000e-01)
  %317 = fmul float %191, %312
  %318 = fmul float %195, %312
  br label %319

319:                                              ; preds = %310, %304, %300
  %320 = phi i1 [ false, %300 ], [ true, %310 ], [ true, %304 ]
  %321 = phi float [ %195, %300 ], [ %318, %310 ], [ %195, %304 ]
  %322 = phi float [ %191, %300 ], [ %317, %310 ], [ %191, %304 ]
  %323 = phi float [ %302, %300 ], [ %316, %310 ], [ %305, %304 ]
  %324 = phi float [ %303, %300 ], [ %314, %310 ], [ %306, %304 ]
  br i1 %320, label %325, label %992

325:                                              ; preds = %319, %212
  %326 = phi float [ %321, %319 ], [ %195, %212 ]
  %327 = phi float [ %322, %319 ], [ %191, %212 ]
  %328 = phi float [ %323, %319 ], [ %122, %212 ]
  %329 = phi float [ %324, %319 ], [ %101, %212 ]
  %330 = load i16, ptr %196, align 8, !tbaa !69
  switch i16 %330, label %374 [
    i16 4, label %331
    i16 2, label %351
    i16 5, label %351
    i16 1, label %365
  ]

331:                                              ; preds = %325
  %332 = fadd float %327, %329
  %333 = fcmp olt float %332, 0.000000e+00
  %334 = fadd float %326, %328
  %335 = fcmp olt float %334, 0.000000e+00
  %336 = select i1 %333, i1 true, i1 %335
  %337 = fsub float %329, %327
  %338 = fcmp ogt float %337, 1.000000e+00
  %339 = select i1 %336, i1 true, i1 %338
  %340 = fsub float %328, %326
  %341 = fcmp ogt float %340, 1.000000e+00
  %342 = select i1 %339, i1 true, i1 %341
  br i1 %342, label %349, label %343

343:                                              ; preds = %331
  %344 = getelementptr inbounds float, ptr %3, i64 2
  %345 = load float, ptr %344, align 4, !tbaa !68
  %346 = fcmp olt float %345, -1.000000e+00
  %347 = fcmp ogt float %345, 1.000000e+00
  %348 = or i1 %346, %347
  br i1 %348, label %349, label %379

349:                                              ; preds = %343, %331
  br i1 %44, label %992, label %350

350:                                              ; preds = %349
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef %58, ptr noundef %7) #12
  br label %992

351:                                              ; preds = %325, %325
  %352 = fadd float %327, %329
  %353 = fcmp olt float %352, 0.000000e+00
  %354 = fadd float %326, %328
  %355 = fcmp olt float %354, 0.000000e+00
  %356 = select i1 %353, i1 true, i1 %355
  %357 = fsub float %329, %327
  %358 = fcmp ogt float %357, 1.000000e+00
  %359 = select i1 %356, i1 true, i1 %358
  %360 = fsub float %328, %326
  %361 = fcmp ogt float %360, 1.000000e+00
  %362 = select i1 %359, i1 true, i1 %361
  br i1 %362, label %363, label %379

363:                                              ; preds = %351
  br i1 %44, label %992, label %364

364:                                              ; preds = %363
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef %58, ptr noundef %7) #12
  br label %992

365:                                              ; preds = %325
  %366 = fcmp ogt float %329, 1.000000e+00
  %367 = fcmp olt float %329, 0.000000e+00
  %368 = select i1 %367, float 0.000000e+00, float %329
  %369 = select i1 %366, float 1.000000e+00, float %368
  %370 = fcmp ogt float %328, 1.000000e+00
  %371 = fcmp olt float %328, 0.000000e+00
  %372 = select i1 %371, float 0.000000e+00, float %328
  %373 = select i1 %370, float 1.000000e+00, float %372
  br label %379

374:                                              ; preds = %325
  %375 = tail call float @llvm.floor.f32(float %329)
  %376 = fsub float %329, %375
  %377 = tail call float @llvm.floor.f32(float %328)
  %378 = fsub float %328, %377
  br label %379

379:                                              ; preds = %374, %365, %351, %343
  %380 = phi float [ %373, %365 ], [ %378, %374 ], [ %328, %343 ], [ %328, %351 ]
  %381 = phi float [ %369, %365 ], [ %376, %374 ], [ %329, %343 ], [ %329, %351 ]
  %382 = load i16, ptr %94, align 4, !tbaa !65
  %383 = and i16 %382, 1
  %384 = zext nneg i16 %383 to i32
  %385 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !74
  %386 = and i16 %385, 4
  %387 = icmp eq i16 %386, 0
  br i1 %387, label %401, label %388

388:                                              ; preds = %379
  %389 = load i32, ptr %103, align 8, !tbaa !75
  %390 = and i32 %389, 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %401, label %392

392:                                              ; preds = %388
  %393 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 2
  %394 = load i32, ptr %393, align 8, !tbaa !72
  %395 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 3
  %396 = load i32, ptr %395, align 4, !tbaa !73
  %397 = mul nsw i32 %396, %394
  %398 = load ptr, ptr %61, align 8, !tbaa !61
  %399 = sext i32 %397 to i64
  %400 = getelementptr inbounds i32, ptr %398, i64 %399
  store ptr %400, ptr %61, align 8, !tbaa !61
  br label %401

401:                                              ; preds = %392, %388, %379
  store float %183, ptr %10, align 4, !tbaa !68
  %402 = getelementptr inbounds float, ptr %10, i64 1
  store float %182, ptr %402, align 4, !tbaa !68
  %403 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 1
  store float %185, ptr %403, align 4, !tbaa !68
  %404 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 1, i64 1
  store float %184, ptr %404, align 4, !tbaa !68
  %405 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 2
  store i32 %384, ptr %405, align 4, !tbaa !101
  %406 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 3
  store i32 %213, ptr %406, align 4, !tbaa !103
  %407 = fmul float %182, %182
  %408 = tail call float @llvm.fmuladd.f32(float %183, float %183, float %407)
  %409 = fcmp ogt float %408, 4.000000e+00
  br i1 %409, label %410, label %417

410:                                              ; preds = %401
  %411 = tail call float @sqrtf(float noundef %408) #12
  %412 = fdiv float 2.000000e+00, %411
  %413 = load float, ptr %10, align 4, !tbaa !68
  %414 = fmul float %413, %412
  store float %414, ptr %10, align 4, !tbaa !68
  %415 = load float, ptr %402, align 4, !tbaa !68
  %416 = fmul float %412, %415
  store float %416, ptr %402, align 4, !tbaa !68
  br label %417

417:                                              ; preds = %410, %401
  %418 = load float, ptr %403, align 4, !tbaa !68
  %419 = load float, ptr %404, align 4, !tbaa !68
  %420 = fmul float %419, %419
  %421 = tail call float @llvm.fmuladd.f32(float %418, float %418, float %420)
  %422 = fcmp ogt float %421, 4.000000e+00
  br i1 %422, label %423, label %430

423:                                              ; preds = %417
  %424 = tail call float @sqrtf(float noundef %421) #12
  %425 = fdiv float 2.000000e+00, %424
  %426 = load float, ptr %403, align 4, !tbaa !68
  %427 = fmul float %426, %425
  store float %427, ptr %403, align 4, !tbaa !68
  %428 = load float, ptr %404, align 4, !tbaa !68
  %429 = fmul float %425, %428
  store float %429, ptr %404, align 4, !tbaa !68
  br label %430

430:                                              ; preds = %423, %417
  %431 = load i16, ptr %94, align 4, !tbaa !65
  %432 = and i16 %431, 4
  %433 = icmp eq i16 %432, 0
  br i1 %433, label %712, label %434

434:                                              ; preds = %430
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %11) #12
  %435 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 2
  %436 = load i32, ptr %435, align 8, !tbaa !72
  %437 = sitofp i32 %436 to float
  %438 = tail call float @sqrtf(float noundef %437) #12
  %439 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 3
  %440 = load i32, ptr %439, align 4, !tbaa !73
  %441 = sitofp i32 %440 to float
  %442 = fdiv float %441, %438
  %443 = fmul float %183, %438
  %444 = fmul float %182, %442
  %445 = fmul float %185, %438
  %446 = fmul float %184, %442
  %447 = fmul float %446, %446
  %448 = tail call float @llvm.fmuladd.f32(float %444, float %444, float %447)
  %449 = fmul float %445, %446
  %450 = tail call float @llvm.fmuladd.f32(float %443, float %444, float %449)
  %451 = fmul float %450, -2.000000e+00
  %452 = fmul float %445, %445
  %453 = tail call float @llvm.fmuladd.f32(float %443, float %443, float %452)
  %454 = fmul float %451, %451
  %455 = fmul float %454, -2.500000e-01
  %456 = tail call float @llvm.fmuladd.f32(float %448, float %453, float %455)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #12
  call void @BLI_ewa_imp2radangle(float noundef %448, float noundef %451, float noundef %453, float noundef %456, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #12
  %457 = load i32, ptr %29, align 4, !tbaa !99
  %458 = icmp eq i32 %457, 2
  br i1 %458, label %459, label %498

459:                                              ; preds = %434
  %460 = load float, ptr %12, align 4, !tbaa !68
  %461 = fmul float %438, %460
  store float %461, ptr %12, align 4, !tbaa !68
  %462 = load float, ptr %13, align 4, !tbaa !68
  %463 = fmul float %438, %462
  store float %463, ptr %13, align 4, !tbaa !68
  %464 = fcmp ogt float %461, 1.000000e+00
  %465 = select i1 %464, float %461, float 1.000000e+00
  store float %465, ptr %12, align 4, !tbaa !68
  %466 = fcmp ogt float %463, 1.000000e+00
  %467 = select i1 %466, float %463, float 1.000000e+00
  store float %467, ptr %13, align 4, !tbaa !68
  %468 = fdiv float %465, %467
  %469 = call float @llvm.fmuladd.f32(float %468, float 2.000000e+00, float -1.000000e+00)
  %470 = fadd float %469, 5.000000e-01
  %471 = call float @llvm.floor.f32(float %470)
  %472 = fptosi float %471 to i32
  %473 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 7
  store i32 %472, ptr %473, align 4, !tbaa !104
  %474 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 39
  %475 = load i32, ptr %474, align 8, !tbaa !105
  %476 = call i32 @llvm.smin.i32(i32 %475, i32 %472)
  store i32 %476, ptr %473, align 4, !tbaa !104
  %477 = sitofp i32 %476 to float
  %478 = fcmp ogt float %469, %477
  br i1 %478, label %479, label %484

479:                                              ; preds = %459
  %480 = fmul float %465, 2.000000e+00
  %481 = add nsw i32 %476, 1
  %482 = sitofp i32 %481 to float
  %483 = fdiv float %480, %482
  store float %483, ptr %13, align 4, !tbaa !68
  br label %484

484:                                              ; preds = %479, %459
  %485 = fdiv float %465, %438
  %486 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 4
  store float %485, ptr %486, align 4, !tbaa !106
  %487 = load float, ptr %13, align 4, !tbaa !68
  %488 = fdiv float %487, %438
  %489 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 5
  store float %488, ptr %489, align 4, !tbaa !107
  %490 = load float, ptr %14, align 4, !tbaa !68
  %491 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 6
  store float %490, ptr %491, align 4, !tbaa !108
  %492 = fdiv float 1.000000e+00, %438
  %493 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 8
  store float %492, ptr %493, align 4, !tbaa !109
  %494 = load i32, ptr %439, align 4, !tbaa !73
  %495 = sitofp i32 %494 to float
  %496 = fdiv float %438, %495
  %497 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 9
  store float %496, ptr %497, align 4, !tbaa !110
  br label %510

498:                                              ; preds = %434
  %499 = load float, ptr %15, align 4, !tbaa !68
  %500 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 39
  %501 = load i32, ptr %500, align 8, !tbaa !105
  %502 = sitofp i32 %501 to float
  %503 = fcmp ogt float %499, %502
  br i1 %503, label %504, label %507

504:                                              ; preds = %498
  %505 = load float, ptr %12, align 4, !tbaa !68
  %506 = fdiv float %505, %502
  store float %506, ptr %13, align 4, !tbaa !68
  br label %507

507:                                              ; preds = %504, %498
  %508 = load float, ptr %13, align 4, !tbaa !68
  %509 = fmul float %438, %508
  store float %509, ptr %13, align 4, !tbaa !68
  br label %510

510:                                              ; preds = %507, %484
  %511 = load float, ptr %13, align 4, !tbaa !68
  %512 = fcmp ogt float %511, 0x3E45798EE0000000
  %513 = select i1 %512, float %511, float 0x3E45798EE0000000
  %514 = call float @logf(float noundef %513) #12
  store ptr %58, ptr %11, align 16, !tbaa !111
  %515 = getelementptr inbounds i8, ptr %11, i64 8
  %516 = getelementptr i8, ptr %58, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %515, ptr noundef nonnull align 8 dereferenceable(160) %516, i64 160, i1 false), !tbaa !111
  br label %517

517:                                              ; preds = %510, %517
  %518 = phi i64 [ 0, %510 ], [ %522, %517 ]
  %519 = phi i32 [ 1, %510 ], [ %525, %517 ]
  %520 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 19, i64 %518
  %521 = load ptr, ptr %520, align 8, !tbaa !111
  %522 = add nuw nsw i64 %518, 1
  %523 = icmp ne ptr %521, null
  %524 = zext i1 %523 to i32
  %525 = add nuw nsw i32 %519, %524
  %526 = icmp eq i64 %522, 20
  br i1 %526, label %527, label %517, !llvm.loop !112

527:                                              ; preds = %517
  %528 = fmul float %514, 0x3FF7154760000000
  %529 = fcmp olt float %528, 0.000000e+00
  br i1 %529, label %555, label %530

530:                                              ; preds = %527
  %531 = add nsw i32 %525, -1
  %532 = sitofp i32 %531 to float
  %533 = fcmp ult float %528, %532
  br i1 %533, label %542, label %534

534:                                              ; preds = %530
  %535 = sext i32 %531 to i64
  %536 = getelementptr inbounds [21 x ptr], ptr %11, i64 0, i64 %535
  %537 = load ptr, ptr %536, align 8, !tbaa !111
  %538 = load i32, ptr %29, align 4, !tbaa !99
  %539 = icmp eq i32 %538, 2
  br i1 %539, label %540, label %555

540:                                              ; preds = %534
  %541 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 7
  store i32 1, ptr %541, align 4, !tbaa !104
  br label %555

542:                                              ; preds = %530
  %543 = fcmp uno float %528, 0.000000e+00
  %544 = fptosi float %528 to i32
  %545 = select i1 %543, i32 0, i32 %544
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds [21 x ptr], ptr %11, i64 0, i64 %546
  %548 = load ptr, ptr %547, align 8, !tbaa !111
  %549 = add nsw i32 %545, 1
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds [21 x ptr], ptr %11, i64 0, i64 %550
  %552 = load ptr, ptr %551, align 8, !tbaa !111
  %553 = call float @llvm.floor.f32(float %528)
  %554 = fsub float %528, %553
  br label %555

555:                                              ; preds = %527, %542, %540, %534
  %556 = phi float [ 0.000000e+00, %540 ], [ 0.000000e+00, %534 ], [ %554, %542 ], [ 0.000000e+00, %527 ]
  %557 = phi ptr [ %537, %540 ], [ %537, %534 ], [ %548, %542 ], [ %58, %527 ]
  %558 = phi ptr [ %537, %540 ], [ %537, %534 ], [ %552, %542 ], [ %58, %527 ]
  %559 = load ptr, ptr %41, align 8, !tbaa !34
  %560 = icmp eq ptr %559, null
  br i1 %560, label %633, label %561

561:                                              ; preds = %555
  %562 = load i16, ptr %94, align 4, !tbaa !65
  %563 = and i16 %562, 2048
  %564 = icmp eq i16 %563, 0
  br i1 %564, label %565, label %633

565:                                              ; preds = %561
  call void %36(ptr noundef nonnull %6, ptr noundef %557, float noundef %381, float noundef %380, ptr noundef nonnull %10) #12, !callees !113
  %566 = load float, ptr %39, align 4, !tbaa !78
  %567 = load float, ptr %38, align 8, !tbaa !79
  %568 = fadd float %566, %567
  %569 = load float, ptr %37, align 4, !tbaa !80
  %570 = fadd float %568, %569
  %571 = fadd float %183, %381
  %572 = fadd float %182, %380
  call void %36(ptr noundef nonnull %9, ptr noundef %557, float noundef %571, float noundef %572, ptr noundef nonnull %10) #12, !callees !113
  %573 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %574 = load float, ptr %573, align 4, !tbaa !78
  %575 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 2
  %576 = load float, ptr %575, align 8, !tbaa !79
  %577 = fadd float %574, %576
  %578 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %579 = load float, ptr %578, align 4, !tbaa !80
  %580 = fadd float %577, %579
  %581 = fadd float %185, %381
  %582 = fadd float %184, %380
  call void %36(ptr noundef nonnull %9, ptr noundef %557, float noundef %581, float noundef %582, ptr noundef nonnull %10) #12, !callees !113
  %583 = load float, ptr %573, align 4, !tbaa !78
  %584 = load float, ptr %575, align 8, !tbaa !79
  %585 = fadd float %583, %584
  %586 = load float, ptr %578, align 4, !tbaa !80
  %587 = fadd float %585, %586
  %588 = fsub float %570, %580
  %589 = load ptr, ptr %41, align 8, !tbaa !34
  store float %588, ptr %589, align 4, !tbaa !68
  %590 = fsub float %570, %587
  %591 = getelementptr inbounds float, ptr %589, i64 1
  store float %590, ptr %591, align 4, !tbaa !68
  %592 = icmp eq ptr %558, %557
  br i1 %592, label %711, label %593

593:                                              ; preds = %565
  call void %36(ptr noundef nonnull %9, ptr noundef %558, float noundef %381, float noundef %380, ptr noundef nonnull %10) #12, !callees !113
  %594 = load float, ptr %573, align 4, !tbaa !78
  %595 = load float, ptr %39, align 4, !tbaa !78
  %596 = fsub float %594, %595
  %597 = call float @llvm.fmuladd.f32(float %556, float %596, float %595)
  store float %597, ptr %39, align 4, !tbaa !78
  %598 = load float, ptr %575, align 8, !tbaa !79
  %599 = load float, ptr %38, align 8, !tbaa !79
  %600 = fsub float %598, %599
  %601 = call float @llvm.fmuladd.f32(float %556, float %600, float %599)
  store float %601, ptr %38, align 8, !tbaa !79
  %602 = load float, ptr %578, align 4, !tbaa !80
  %603 = load float, ptr %37, align 4, !tbaa !80
  %604 = fsub float %602, %603
  %605 = call float @llvm.fmuladd.f32(float %556, float %604, float %603)
  store float %605, ptr %37, align 4, !tbaa !80
  %606 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 4
  %607 = load float, ptr %606, align 8, !tbaa !83
  %608 = load float, ptr %40, align 8, !tbaa !83
  %609 = fsub float %607, %608
  %610 = call float @llvm.fmuladd.f32(float %556, float %609, float %608)
  store float %610, ptr %40, align 8, !tbaa !83
  %611 = fadd float %594, %598
  %612 = fadd float %611, %602
  %613 = fsub float %612, %570
  %614 = call float @llvm.fmuladd.f32(float %556, float %613, float %570)
  call void %36(ptr noundef nonnull %9, ptr noundef %558, float noundef %571, float noundef %572, ptr noundef nonnull %10) #12, !callees !113
  %615 = load float, ptr %573, align 4, !tbaa !78
  %616 = load float, ptr %575, align 8, !tbaa !79
  %617 = fadd float %615, %616
  %618 = load float, ptr %578, align 4, !tbaa !80
  %619 = fadd float %617, %618
  %620 = fsub float %619, %580
  %621 = call float @llvm.fmuladd.f32(float %556, float %620, float %580)
  call void %36(ptr noundef nonnull %9, ptr noundef %558, float noundef %581, float noundef %582, ptr noundef nonnull %10) #12, !callees !113
  %622 = load float, ptr %573, align 4, !tbaa !78
  %623 = load float, ptr %575, align 8, !tbaa !79
  %624 = fadd float %622, %623
  %625 = load float, ptr %578, align 4, !tbaa !80
  %626 = fadd float %624, %625
  %627 = fsub float %626, %587
  %628 = call float @llvm.fmuladd.f32(float %556, float %627, float %587)
  %629 = fsub float %614, %621
  %630 = load ptr, ptr %41, align 8, !tbaa !34
  store float %629, ptr %630, align 4, !tbaa !68
  %631 = fsub float %614, %628
  %632 = getelementptr inbounds float, ptr %630, i64 1
  store float %631, ptr %632, align 4, !tbaa !68
  br label %711

633:                                              ; preds = %561, %555
  call void %36(ptr noundef nonnull %6, ptr noundef %557, float noundef %381, float noundef %380, ptr noundef nonnull %10) #12, !callees !113
  %634 = icmp eq ptr %558, %557
  br i1 %634, label %656, label %635

635:                                              ; preds = %633
  call void %36(ptr noundef nonnull %9, ptr noundef %558, float noundef %381, float noundef %380, ptr noundef nonnull %10) #12, !callees !113
  %636 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %637 = load float, ptr %636, align 4, !tbaa !78
  %638 = load float, ptr %39, align 4, !tbaa !78
  %639 = fsub float %637, %638
  %640 = call float @llvm.fmuladd.f32(float %556, float %639, float %638)
  store float %640, ptr %39, align 4, !tbaa !78
  %641 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 2
  %642 = load float, ptr %641, align 8, !tbaa !79
  %643 = load float, ptr %38, align 8, !tbaa !79
  %644 = fsub float %642, %643
  %645 = call float @llvm.fmuladd.f32(float %556, float %644, float %643)
  store float %645, ptr %38, align 8, !tbaa !79
  %646 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %647 = load float, ptr %646, align 4, !tbaa !80
  %648 = load float, ptr %37, align 4, !tbaa !80
  %649 = fsub float %647, %648
  %650 = call float @llvm.fmuladd.f32(float %556, float %649, float %648)
  store float %650, ptr %37, align 4, !tbaa !80
  %651 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 4
  %652 = load float, ptr %651, align 8, !tbaa !83
  %653 = load float, ptr %40, align 8, !tbaa !83
  %654 = fsub float %652, %653
  %655 = call float @llvm.fmuladd.f32(float %556, float %654, float %653)
  store float %655, ptr %40, align 8, !tbaa !83
  br label %656

656:                                              ; preds = %635, %633
  %657 = add nsw i32 %213, -3
  %658 = icmp ult i32 %657, 2
  br i1 %658, label %711, label %659

659:                                              ; preds = %656
  %660 = fadd float %326, %380
  %661 = fadd float %327, %381
  %662 = fsub float %380, %326
  %663 = fsub float %381, %327
  %664 = load i32, ptr %435, align 8, !tbaa !72
  %665 = sitofp i32 %664 to float
  %666 = fmul float %663, %665
  %667 = fmul float %661, %665
  %668 = load i32, ptr %439, align 4, !tbaa !73
  %669 = sitofp i32 %668 to float
  %670 = fmul float %662, %669
  %671 = fmul float %660, %669
  %672 = fsub float %667, %666
  %673 = fcmp olt float %666, 0.000000e+00
  %674 = select i1 %673, float 0.000000e+00, float %666
  %675 = fcmp ogt float %667, %665
  %676 = select i1 %675, float %665, float %667
  %677 = fcmp ogt float %674, %676
  br i1 %677, label %683, label %678

678:                                              ; preds = %659
  %679 = fcmp une float %672, 0.000000e+00
  br i1 %679, label %680, label %683

680:                                              ; preds = %678
  %681 = fsub float %676, %674
  %682 = fdiv float %681, %672
  br label %683

683:                                              ; preds = %680, %678, %659
  %684 = phi float [ %682, %680 ], [ 1.000000e+00, %678 ], [ 0.000000e+00, %659 ]
  %685 = fsub float %671, %670
  %686 = fcmp olt float %670, 0.000000e+00
  %687 = select i1 %686, float 0.000000e+00, float %670
  %688 = fcmp ogt float %671, %669
  %689 = select i1 %688, float %669, float %671
  %690 = fcmp ogt float %687, %689
  br i1 %690, label %696, label %691

691:                                              ; preds = %683
  %692 = fcmp une float %685, 0.000000e+00
  br i1 %692, label %693, label %696

693:                                              ; preds = %691
  %694 = fsub float %689, %687
  %695 = fdiv float %694, %685
  br label %696

696:                                              ; preds = %693, %691, %683
  %697 = phi float [ %695, %693 ], [ 1.000000e+00, %691 ], [ 0.000000e+00, %683 ]
  %698 = fmul float %684, %697
  %699 = fcmp ogt float %698, 0.000000e+00
  %700 = select i1 %699, float %698, float 0.000000e+00
  %701 = fcmp une float %700, 1.000000e+00
  br i1 %701, label %702, label %711

702:                                              ; preds = %696
  %703 = load float, ptr %39, align 4, !tbaa !78
  %704 = fmul float %700, %703
  store float %704, ptr %39, align 4, !tbaa !78
  %705 = load float, ptr %38, align 8, !tbaa !79
  %706 = fmul float %700, %705
  store float %706, ptr %38, align 8, !tbaa !79
  %707 = load float, ptr %37, align 4, !tbaa !80
  %708 = fmul float %700, %707
  store float %708, ptr %37, align 4, !tbaa !80
  %709 = load float, ptr %40, align 8, !tbaa !83
  %710 = fmul float %700, %709
  store float %710, ptr %40, align 8, !tbaa !83
  br label %711

711:                                              ; preds = %702, %696, %656, %593, %565
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %11) #12
  br label %864

712:                                              ; preds = %430
  %713 = load i32, ptr %29, align 4, !tbaa !99
  %714 = icmp eq i32 %713, 2
  br i1 %714, label %715, label %773

715:                                              ; preds = %712
  %716 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 2
  %717 = load i32, ptr %716, align 8, !tbaa !72
  %718 = sitofp i32 %717 to float
  %719 = tail call float @sqrtf(float noundef %718) #12
  %720 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 3
  %721 = load i32, ptr %720, align 4, !tbaa !73
  %722 = sitofp i32 %721 to float
  %723 = fdiv float %722, %719
  %724 = fmul float %183, %719
  %725 = fmul float %182, %723
  %726 = fmul float %185, %719
  %727 = fmul float %184, %723
  %728 = fmul float %727, %727
  %729 = tail call float @llvm.fmuladd.f32(float %725, float %725, float %728)
  %730 = fmul float %726, %727
  %731 = tail call float @llvm.fmuladd.f32(float %724, float %725, float %730)
  %732 = fmul float %731, -2.000000e+00
  %733 = fmul float %726, %726
  %734 = tail call float @llvm.fmuladd.f32(float %724, float %724, float %733)
  %735 = fmul float %732, %732
  %736 = fmul float %735, -2.500000e-01
  %737 = tail call float @llvm.fmuladd.f32(float %729, float %734, float %736)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #12
  call void @BLI_ewa_imp2radangle(float noundef %729, float noundef %732, float noundef %734, float noundef %737, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19) #12
  %738 = load float, ptr %16, align 4, !tbaa !68
  %739 = fmul float %719, %738
  store float %739, ptr %16, align 4, !tbaa !68
  %740 = load float, ptr %17, align 4, !tbaa !68
  %741 = fmul float %719, %740
  store float %741, ptr %17, align 4, !tbaa !68
  %742 = fcmp ogt float %739, 1.000000e+00
  %743 = select i1 %742, float %739, float 1.000000e+00
  store float %743, ptr %16, align 4, !tbaa !68
  %744 = fcmp ogt float %741, 1.000000e+00
  %745 = select i1 %744, float %741, float 1.000000e+00
  store float %745, ptr %17, align 4, !tbaa !68
  %746 = fdiv float %743, %745
  %747 = call float @llvm.fmuladd.f32(float %746, float 2.000000e+00, float -1.000000e+00)
  %748 = fadd float %747, 5.000000e-01
  %749 = call float @llvm.floor.f32(float %748)
  %750 = fptosi float %749 to i32
  %751 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 7
  store i32 %750, ptr %751, align 4, !tbaa !104
  %752 = sitofp i32 %750 to float
  %753 = fcmp ogt float %747, %752
  br i1 %753, label %754, label %759

754:                                              ; preds = %715
  %755 = fmul float %743, 2.000000e+00
  %756 = add nsw i32 %750, 1
  %757 = sitofp i32 %756 to float
  %758 = fdiv float %755, %757
  store float %758, ptr %17, align 4, !tbaa !68
  br label %759

759:                                              ; preds = %754, %715
  %760 = fdiv float %743, %719
  %761 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 4
  store float %760, ptr %761, align 4, !tbaa !106
  %762 = load float, ptr %17, align 4, !tbaa !68
  %763 = fdiv float %762, %719
  %764 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 5
  store float %763, ptr %764, align 4, !tbaa !107
  %765 = load float, ptr %18, align 4, !tbaa !68
  %766 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 6
  store float %765, ptr %766, align 4, !tbaa !108
  %767 = fdiv float 1.000000e+00, %719
  %768 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 8
  store float %767, ptr %768, align 4, !tbaa !109
  %769 = load i32, ptr %720, align 4, !tbaa !73
  %770 = sitofp i32 %769 to float
  %771 = fdiv float %719, %770
  %772 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 9
  store float %771, ptr %772, align 4, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #12
  br label %773

773:                                              ; preds = %759, %712
  %774 = load ptr, ptr %41, align 8, !tbaa !34
  %775 = icmp eq ptr %774, null
  br i1 %775, label %807, label %776

776:                                              ; preds = %773
  %777 = load i16, ptr %94, align 4, !tbaa !65
  %778 = and i16 %777, 2048
  %779 = icmp eq i16 %778, 0
  br i1 %779, label %780, label %807

780:                                              ; preds = %776
  call void %36(ptr noundef nonnull %6, ptr noundef %58, float noundef %381, float noundef %380, ptr noundef nonnull %10) #12, !callees !113
  %781 = load float, ptr %39, align 4, !tbaa !78
  %782 = load float, ptr %38, align 8, !tbaa !79
  %783 = fadd float %781, %782
  %784 = load float, ptr %37, align 4, !tbaa !80
  %785 = fadd float %783, %784
  %786 = fadd float %183, %381
  %787 = fadd float %182, %380
  call void %36(ptr noundef nonnull %9, ptr noundef %58, float noundef %786, float noundef %787, ptr noundef nonnull %10) #12, !callees !113
  %788 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %789 = load float, ptr %788, align 4, !tbaa !78
  %790 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 2
  %791 = load float, ptr %790, align 8, !tbaa !79
  %792 = fadd float %789, %791
  %793 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %794 = load float, ptr %793, align 4, !tbaa !80
  %795 = fadd float %792, %794
  %796 = fadd float %185, %381
  %797 = fadd float %184, %380
  call void %36(ptr noundef nonnull %9, ptr noundef %58, float noundef %796, float noundef %797, ptr noundef nonnull %10) #12, !callees !113
  %798 = load float, ptr %788, align 4, !tbaa !78
  %799 = load float, ptr %790, align 8, !tbaa !79
  %800 = fadd float %798, %799
  %801 = load float, ptr %793, align 4, !tbaa !80
  %802 = fadd float %800, %801
  %803 = fsub float %785, %795
  %804 = load ptr, ptr %41, align 8, !tbaa !34
  store float %803, ptr %804, align 4, !tbaa !68
  %805 = fsub float %785, %802
  %806 = getelementptr inbounds float, ptr %804, i64 1
  store float %805, ptr %806, align 4, !tbaa !68
  br label %864

807:                                              ; preds = %776, %773
  call void %36(ptr noundef nonnull %6, ptr noundef %58, float noundef %381, float noundef %380, ptr noundef nonnull %10) #12, !callees !113
  %808 = add nsw i32 %213, -3
  %809 = icmp ult i32 %808, 2
  br i1 %809, label %864, label %810

810:                                              ; preds = %807
  %811 = fadd float %326, %380
  %812 = fadd float %327, %381
  %813 = fsub float %380, %326
  %814 = fsub float %381, %327
  %815 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 2
  %816 = load i32, ptr %815, align 8, !tbaa !72
  %817 = sitofp i32 %816 to float
  %818 = fmul float %814, %817
  %819 = fmul float %812, %817
  %820 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 3
  %821 = load i32, ptr %820, align 4, !tbaa !73
  %822 = sitofp i32 %821 to float
  %823 = fmul float %813, %822
  %824 = fmul float %811, %822
  %825 = fsub float %819, %818
  %826 = fcmp olt float %818, 0.000000e+00
  %827 = select i1 %826, float 0.000000e+00, float %818
  %828 = fcmp ogt float %819, %817
  %829 = select i1 %828, float %817, float %819
  %830 = fcmp ogt float %827, %829
  br i1 %830, label %836, label %831

831:                                              ; preds = %810
  %832 = fcmp une float %825, 0.000000e+00
  br i1 %832, label %833, label %836

833:                                              ; preds = %831
  %834 = fsub float %829, %827
  %835 = fdiv float %834, %825
  br label %836

836:                                              ; preds = %833, %831, %810
  %837 = phi float [ %835, %833 ], [ 1.000000e+00, %831 ], [ 0.000000e+00, %810 ]
  %838 = fsub float %824, %823
  %839 = fcmp olt float %823, 0.000000e+00
  %840 = select i1 %839, float 0.000000e+00, float %823
  %841 = fcmp ogt float %824, %822
  %842 = select i1 %841, float %822, float %824
  %843 = fcmp ogt float %840, %842
  br i1 %843, label %849, label %844

844:                                              ; preds = %836
  %845 = fcmp une float %838, 0.000000e+00
  br i1 %845, label %846, label %849

846:                                              ; preds = %844
  %847 = fsub float %842, %840
  %848 = fdiv float %847, %838
  br label %849

849:                                              ; preds = %846, %844, %836
  %850 = phi float [ %848, %846 ], [ 1.000000e+00, %844 ], [ 0.000000e+00, %836 ]
  %851 = fmul float %837, %850
  %852 = fcmp ogt float %851, 0.000000e+00
  %853 = select i1 %852, float %851, float 0.000000e+00
  %854 = fcmp une float %853, 1.000000e+00
  br i1 %854, label %855, label %864

855:                                              ; preds = %849
  %856 = load float, ptr %39, align 4, !tbaa !78
  %857 = fmul float %853, %856
  store float %857, ptr %39, align 4, !tbaa !78
  %858 = load float, ptr %38, align 8, !tbaa !79
  %859 = fmul float %853, %858
  store float %859, ptr %38, align 8, !tbaa !79
  %860 = load float, ptr %37, align 4, !tbaa !80
  %861 = fmul float %853, %860
  store float %861, ptr %37, align 4, !tbaa !80
  %862 = load float, ptr %40, align 8, !tbaa !83
  %863 = fmul float %853, %862
  store float %863, ptr %40, align 8, !tbaa !83
  br label %864

864:                                              ; preds = %855, %849, %807, %780, %711
  %865 = load i16, ptr %94, align 4, !tbaa !65
  %866 = and i16 %865, 32
  %867 = icmp ne i16 %866, 0
  %868 = load float, ptr %40, align 8, !tbaa !83
  br i1 %867, label %869, label %878

869:                                              ; preds = %864
  %870 = load float, ptr %39, align 4, !tbaa !78
  %871 = load float, ptr %38, align 8, !tbaa !79
  %872 = load float, ptr %37, align 4, !tbaa !80
  %873 = fcmp ogt float %870, %871
  %874 = select i1 %873, float %870, float %871
  %875 = fcmp ogt float %874, %872
  %876 = select i1 %875, float %874, float %872
  %877 = fmul float %868, %876
  store float %877, ptr %6, align 8, !tbaa !84
  store float %877, ptr %40, align 8, !tbaa !83
  br label %879

878:                                              ; preds = %864
  store float %868, ptr %6, align 8, !tbaa !84
  br label %879

879:                                              ; preds = %878, %869
  %880 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %881 = load i16, ptr %880, align 2, !tbaa !70
  %882 = and i16 %881, 4
  %883 = icmp eq i16 %882, 0
  br i1 %883, label %887, label %884

884:                                              ; preds = %879
  %885 = load float, ptr %40, align 8, !tbaa !83
  %886 = fsub float 1.000000e+00, %885
  store float %886, ptr %40, align 8, !tbaa !83
  br label %887

887:                                              ; preds = %884, %879
  %888 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !74
  %889 = and i16 %888, 4
  %890 = icmp eq i16 %889, 0
  br i1 %890, label %905, label %891

891:                                              ; preds = %887
  %892 = load i32, ptr %103, align 8, !tbaa !75
  %893 = and i32 %892, 4
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %905, label %895

895:                                              ; preds = %891
  %896 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 2
  %897 = load i32, ptr %896, align 8, !tbaa !72
  %898 = getelementptr inbounds %struct.ImBuf, ptr %58, i64 0, i32 3
  %899 = load i32, ptr %898, align 4, !tbaa !73
  %900 = mul nsw i32 %899, %897
  %901 = load ptr, ptr %61, align 8, !tbaa !61
  %902 = sext i32 %900 to i64
  %903 = sub nsw i64 0, %902
  %904 = getelementptr inbounds i32, ptr %901, i64 %903
  store ptr %904, ptr %61, align 8, !tbaa !61
  br label %905

905:                                              ; preds = %895, %891, %887
  %906 = load ptr, ptr %41, align 8, !tbaa !34
  %907 = icmp eq ptr %906, null
  %908 = and i16 %865, 2048
  %909 = icmp eq i16 %908, 0
  %910 = or i1 %909, %907
  br i1 %910, label %923, label %911

911:                                              ; preds = %905
  %912 = load float, ptr %39, align 4, !tbaa !78
  %913 = fadd float %912, -5.000000e-01
  %914 = fmul float %913, -2.000000e+00
  store float %914, ptr %906, align 4, !tbaa !68
  %915 = load float, ptr %38, align 8, !tbaa !79
  %916 = fadd float %915, -5.000000e-01
  %917 = fmul float %916, 2.000000e+00
  %918 = getelementptr inbounds float, ptr %906, i64 1
  store float %917, ptr %918, align 4, !tbaa !68
  %919 = load float, ptr %37, align 4, !tbaa !80
  %920 = fadd float %919, -5.000000e-01
  %921 = fmul float %920, 2.000000e+00
  %922 = getelementptr inbounds float, ptr %906, i64 2
  store float %921, ptr %922, align 4, !tbaa !68
  br label %923

923:                                              ; preds = %911, %905
  %924 = load float, ptr %40, align 8, !tbaa !83
  %925 = fcmp oeq float %924, 1.000000e+00
  %926 = fcmp ule float %924, 0x3F1A36E2E0000000
  %927 = or i1 %925, %926
  %928 = or i1 %867, %927
  br i1 %928, label %937, label %929

929:                                              ; preds = %923
  %930 = fdiv float 1.000000e+00, %924
  %931 = load float, ptr %39, align 4, !tbaa !78
  %932 = fmul float %930, %931
  store float %932, ptr %39, align 4, !tbaa !78
  %933 = load float, ptr %38, align 8, !tbaa !79
  %934 = fmul float %930, %933
  store float %934, ptr %38, align 8, !tbaa !79
  %935 = load float, ptr %37, align 4, !tbaa !80
  %936 = fmul float %930, %935
  store float %936, ptr %37, align 4, !tbaa !80
  br label %937

937:                                              ; preds = %923, %929
  br i1 %44, label %939, label %938

938:                                              ; preds = %937
  call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef %58, ptr noundef %7) #12
  br label %939

939:                                              ; preds = %938, %937
  %940 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 7
  %941 = load float, ptr %940, align 4, !tbaa !85
  %942 = load float, ptr %39, align 4, !tbaa !78
  %943 = fadd float %942, -5.000000e-01
  %944 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %945 = load float, ptr %944, align 4, !tbaa !86
  %946 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %947 = load float, ptr %946, align 8, !tbaa !87
  %948 = call float @llvm.fmuladd.f32(float %943, float %945, float %947)
  %949 = fadd float %948, -5.000000e-01
  %950 = fmul float %941, %949
  store float %950, ptr %39, align 4, !tbaa !78
  %951 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 8
  %952 = load float, ptr %951, align 8, !tbaa !88
  %953 = load float, ptr %38, align 8, !tbaa !79
  %954 = fadd float %953, -5.000000e-01
  %955 = call float @llvm.fmuladd.f32(float %954, float %945, float %947)
  %956 = fadd float %955, -5.000000e-01
  %957 = fmul float %952, %956
  store float %957, ptr %38, align 8, !tbaa !79
  %958 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 9
  %959 = load float, ptr %958, align 4, !tbaa !89
  %960 = load float, ptr %37, align 4, !tbaa !80
  %961 = fadd float %960, -5.000000e-01
  %962 = call float @llvm.fmuladd.f32(float %961, float %945, float %947)
  %963 = fadd float %962, -5.000000e-01
  %964 = fmul float %959, %963
  store float %964, ptr %37, align 4, !tbaa !80
  %965 = load i16, ptr %880, align 2, !tbaa !70
  %966 = and i16 %965, 1024
  %967 = icmp eq i16 %966, 0
  br i1 %967, label %968, label %977

968:                                              ; preds = %939
  %969 = fcmp olt float %950, 0.000000e+00
  br i1 %969, label %970, label %971

970:                                              ; preds = %968
  store float 0.000000e+00, ptr %39, align 4, !tbaa !78
  br label %971

971:                                              ; preds = %970, %968
  %972 = fcmp olt float %957, 0.000000e+00
  br i1 %972, label %973, label %974

973:                                              ; preds = %971
  store float 0.000000e+00, ptr %38, align 8, !tbaa !79
  br label %974

974:                                              ; preds = %973, %971
  %975 = fcmp olt float %964, 0.000000e+00
  br i1 %975, label %976, label %977

976:                                              ; preds = %974
  store float 0.000000e+00, ptr %37, align 4, !tbaa !80
  br label %977

977:                                              ; preds = %976, %974, %939
  %978 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 6
  %979 = load float, ptr %978, align 8, !tbaa !90
  %980 = fcmp une float %979, 1.000000e+00
  br i1 %980, label %981, label %992

981:                                              ; preds = %977
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #12
  %982 = load float, ptr %39, align 4, !tbaa !78
  %983 = load float, ptr %38, align 8, !tbaa !79
  %984 = load float, ptr %37, align 4, !tbaa !80
  %985 = getelementptr inbounds float, ptr %20, i64 1
  %986 = getelementptr inbounds float, ptr %20, i64 2
  call void @rgb_to_hsv(float noundef %982, float noundef %983, float noundef %984, ptr noundef nonnull %20, ptr noundef nonnull %985, ptr noundef nonnull %986) #12
  %987 = load float, ptr %978, align 8, !tbaa !90
  %988 = load float, ptr %985, align 4, !tbaa !68
  %989 = fmul float %987, %988
  store float %989, ptr %985, align 4, !tbaa !68
  %990 = load float, ptr %20, align 4, !tbaa !68
  %991 = load float, ptr %986, align 4, !tbaa !68
  call void @hsv_to_rgb(float noundef %990, float noundef %989, float noundef %991, ptr noundef nonnull %39, ptr noundef nonnull %38, ptr noundef nonnull %37) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #12
  br label %992

992:                                              ; preds = %32, %51, %68, %69, %319, %349, %350, %363, %364, %977, %981
  %993 = icmp eq ptr %42, null
  %994 = select i1 %993, i32 1, i32 3
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #12
  br label %1791

995:                                              ; preds = %8
  %996 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 3
  %997 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 2
  %998 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 1
  %999 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 4
  %1000 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  %1001 = load ptr, ptr %1000, align 8, !tbaa !34
  %1002 = icmp eq ptr %1001, null
  %1003 = select i1 %1002, i32 1, i32 3
  %1004 = icmp eq ptr %2, null
  %1005 = icmp eq ptr %1, null
  %1006 = and i1 %1005, %1004
  br i1 %1006, label %1791, label %1007

1007:                                             ; preds = %995
  br i1 %1005, label %1021, label %1008

1008:                                             ; preds = %1007
  %1009 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 46), align 4, !tbaa !41
  %1010 = and i32 %1009, 4096
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1015, label %1012

1012:                                             ; preds = %1008
  %1013 = tail call zeroext i8 @BKE_image_has_loaded_ibuf(ptr noundef nonnull %1) #12
  %1014 = icmp eq i8 %1013, 0
  br i1 %1014, label %1791, label %1015

1015:                                             ; preds = %1012, %1008
  %1016 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 51
  %1017 = tail call ptr @BKE_image_pool_acquire_ibuf(ptr noundef nonnull %1, ptr noundef nonnull %1016, ptr noundef %7) #12
  %1018 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 10
  %1019 = load i16, ptr %1018, align 2, !tbaa !58
  %1020 = or i16 %1019, 512
  store i16 %1020, ptr %1018, align 2, !tbaa !58
  br label %1021

1021:                                             ; preds = %1015, %1007
  %1022 = phi ptr [ %1017, %1015 ], [ %2, %1007 ]
  %1023 = icmp eq ptr %1022, null
  br i1 %1023, label %1032, label %1024

1024:                                             ; preds = %1021
  %1025 = getelementptr inbounds %struct.ImBuf, ptr %1022, i64 0, i32 8
  %1026 = load ptr, ptr %1025, align 8, !tbaa !61
  %1027 = icmp eq ptr %1026, null
  br i1 %1027, label %1028, label %1034

1028:                                             ; preds = %1024
  %1029 = getelementptr inbounds %struct.ImBuf, ptr %1022, i64 0, i32 9
  %1030 = load ptr, ptr %1029, align 8, !tbaa !64
  %1031 = icmp eq ptr %1030, null
  br i1 %1031, label %1032, label %1034

1032:                                             ; preds = %1028, %1021
  br i1 %1005, label %1791, label %1033

1033:                                             ; preds = %1032
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef %1022, ptr noundef %7) #12
  br label %1791

1034:                                             ; preds = %1028, %1024
  tail call fastcc void @image_mipmap_test(ptr noundef %0, ptr noundef %1022)
  br i1 %1005, label %1051, label %1035

1035:                                             ; preds = %1034
  %1036 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 30
  %1037 = load i16, ptr %1036, align 4, !tbaa !65
  %1038 = zext i16 %1037 to i32
  %1039 = and i32 %1038, 2
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1051, label %1041

1041:                                             ; preds = %1035
  %1042 = getelementptr inbounds %struct.Image, ptr %1, i64 0, i32 10
  %1043 = load i16, ptr %1042, align 2, !tbaa !58
  %1044 = and i16 %1043, 4096
  %1045 = icmp eq i16 %1044, 0
  %1046 = and i32 %1038, 32
  %1047 = icmp eq i32 %1046, 0
  %1048 = and i1 %1047, %1045
  br i1 %1048, label %1049, label %1051

1049:                                             ; preds = %1041
  %1050 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 5
  store i32 1, ptr %1050, align 4, !tbaa !76
  br label %1051

1051:                                             ; preds = %1035, %1041, %1049, %1034
  %1052 = getelementptr inbounds %struct.TexResult, ptr %6, i64 0, i32 5
  %1053 = load i32, ptr %1052, align 4, !tbaa !76
  %1054 = getelementptr inbounds %struct.TexResult, ptr %21, i64 0, i32 5
  store i32 %1053, ptr %1054, align 4, !tbaa !76
  %1055 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 30
  %1056 = load i16, ptr %1055, align 4, !tbaa !65
  %1057 = and i16 %1056, 16
  %1058 = icmp eq i16 %1057, 0
  %1059 = getelementptr inbounds float, ptr %3, i64 1
  %1060 = select i1 %1058, ptr %1059, ptr %3
  %1061 = select i1 %1058, ptr %3, ptr %1059
  %1062 = load float, ptr %1061, align 4, !tbaa !68
  %1063 = load float, ptr %1060, align 4, !tbaa !68
  %1064 = getelementptr inbounds %struct.ImBuf, ptr %1022, i64 0, i32 6
  %1065 = load i32, ptr %1064, align 8, !tbaa !75
  %1066 = and i32 %1065, 4
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1082, label %1068

1068:                                             ; preds = %1051
  %1069 = load i32, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 45, i32 47), align 8, !tbaa !100
  %1070 = and i32 %1069, 64
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1082, label %1072

1072:                                             ; preds = %1068
  %1073 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !74
  %1074 = and i16 %1073, 4
  %1075 = icmp eq i16 %1074, 0
  br i1 %1075, label %1076, label %1082

1076:                                             ; preds = %1072
  %1077 = getelementptr inbounds %struct.ImBuf, ptr %1022, i64 0, i32 3
  %1078 = load i32, ptr %1077, align 4, !tbaa !73
  %1079 = sitofp i32 %1078 to float
  %1080 = fdiv float 5.000000e-01, %1079
  %1081 = fadd float %1063, %1080
  br label %1082

1082:                                             ; preds = %1068, %1072, %1076, %1051
  %1083 = phi float [ %1063, %1072 ], [ %1081, %1076 ], [ %1063, %1068 ], [ %1063, %1051 ]
  %1084 = fadd float %23, %26
  %1085 = fcmp olt float %23, %26
  %1086 = select i1 %1085, float %23, float %26
  %1087 = fcmp olt float %1086, %1084
  %1088 = select i1 %1087, float %1086, float %1084
  %1089 = fcmp ogt float %23, %26
  %1090 = select i1 %1089, float %23, float %26
  %1091 = fcmp ogt float %1090, %1084
  %1092 = select i1 %1091, float %1090, float %1084
  %1093 = fadd float %25, %28
  %1094 = fcmp olt float %25, %28
  %1095 = select i1 %1094, float %25, float %28
  %1096 = fcmp olt float %1095, %1093
  %1097 = select i1 %1096, float %1095, float %1093
  %1098 = fcmp ogt float %25, %28
  %1099 = select i1 %1098, float %25, float %28
  %1100 = fcmp ogt float %1099, %1093
  %1101 = select i1 %1100, float %1099, float %1093
  %1102 = fsub float %1092, %1088
  %1103 = fmul float %1102, 5.000000e-01
  %1104 = fsub float %1101, %1097
  %1105 = fmul float %1104, 5.000000e-01
  %1106 = and i16 %1056, 8192
  %1107 = icmp eq i16 %1106, 0
  %1108 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 10
  %1109 = load float, ptr %1108, align 8, !tbaa !77
  br i1 %1107, label %1123, label %1110

1110:                                             ; preds = %1082
  %1111 = fmul float %1109, 5.000000e-01
  %1112 = getelementptr inbounds %struct.ImBuf, ptr %1022, i64 0, i32 2
  %1113 = load i32, ptr %1112, align 8, !tbaa !72
  %1114 = getelementptr inbounds %struct.ImBuf, ptr %1022, i64 0, i32 3
  %1115 = load i32, ptr %1114, align 4, !tbaa !73
  %1116 = tail call i32 @llvm.smin.i32(i32 %1113, i32 %1115)
  %1117 = sitofp i32 %1116 to float
  %1118 = fdiv float %1111, %1117
  %1119 = fcmp ogt float %1118, %1103
  %1120 = select i1 %1119, float %1118, float %1103
  %1121 = fcmp ogt float %1118, %1105
  %1122 = select i1 %1121, float %1118, float %1105
  br label %1132

1123:                                             ; preds = %1082
  %1124 = fcmp une float %1109, 1.000000e+00
  br i1 %1124, label %1125, label %1132

1125:                                             ; preds = %1123
  %1126 = fmul float %1103, %1109
  %1127 = fmul float %1105, %1109
  %1128 = fmul float %23, %1109
  %1129 = fmul float %25, %1109
  %1130 = fmul float %26, %1109
  %1131 = fmul float %28, %1109
  br label %1132

1132:                                             ; preds = %1123, %1125, %1110
  %1133 = phi float [ %1129, %1125 ], [ %25, %1123 ], [ %25, %1110 ]
  %1134 = phi float [ %1128, %1125 ], [ %23, %1123 ], [ %23, %1110 ]
  %1135 = phi float [ %1131, %1125 ], [ %28, %1123 ], [ %28, %1110 ]
  %1136 = phi float [ %1130, %1125 ], [ %26, %1123 ], [ %26, %1110 ]
  %1137 = phi float [ %1127, %1125 ], [ %1105, %1123 ], [ %1122, %1110 ]
  %1138 = phi float [ %1126, %1125 ], [ %1103, %1123 ], [ %1120, %1110 ]
  %1139 = select i1 %1058, float %1137, float %1138
  %1140 = select i1 %1058, float %1138, float %1137
  %1141 = fcmp ogt float %1140, 2.500000e-01
  br i1 %1141, label %1145, label %1142

1142:                                             ; preds = %1132
  %1143 = fcmp olt float %1140, 0x3EE4F8B580000000
  br i1 %1143, label %1144, label %1145

1144:                                             ; preds = %1142
  br label %1145

1145:                                             ; preds = %1132, %1142, %1144
  %1146 = phi float [ 0x3EE4F8B580000000, %1144 ], [ %1140, %1142 ], [ 2.500000e-01, %1132 ]
  %1147 = fcmp ogt float %1139, 2.500000e-01
  br i1 %1147, label %1151, label %1148

1148:                                             ; preds = %1145
  %1149 = fcmp olt float %1139, 0x3EE4F8B580000000
  br i1 %1149, label %1150, label %1151

1150:                                             ; preds = %1148
  br label %1151

1151:                                             ; preds = %1145, %1148, %1150
  %1152 = phi float [ 0x3EE4F8B580000000, %1150 ], [ %1139, %1148 ], [ 2.500000e-01, %1145 ]
  %1153 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 42
  %1154 = load i16, ptr %1153, align 8, !tbaa !69
  %1155 = icmp eq i16 %1154, 3
  %1156 = icmp eq i16 %1154, 1
  br i1 %1155, label %1157, label %1164

1157:                                             ; preds = %1151
  %1158 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %1159 = load i16, ptr %1158, align 2, !tbaa !70
  %1160 = and i16 %1159, 384
  %1161 = icmp eq i16 %1160, 0
  %1162 = xor i1 %1161, true
  %1163 = or i1 %1156, %1162
  br label %1164

1164:                                             ; preds = %1157, %1151
  %1165 = phi i1 [ %1155, %1151 ], [ %1161, %1157 ]
  %1166 = phi i1 [ %1156, %1151 ], [ %1163, %1157 ]
  %1167 = icmp eq i16 %1154, 5
  br i1 %1167, label %1168, label %1281

1168:                                             ; preds = %1164
  %1169 = tail call float @llvm.floor.f32(float %1062)
  %1170 = fptosi float %1169 to i32
  %1171 = tail call float @llvm.floor.f32(float %1083)
  %1172 = fptosi float %1171 to i32
  %1173 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %1174 = load i16, ptr %1173, align 2, !tbaa !70
  %1175 = and i16 %1174, 24
  %1176 = icmp eq i16 %1175, 24
  br i1 %1176, label %1177, label %1182

1177:                                             ; preds = %1168
  %1178 = sitofp i32 %1170 to float
  %1179 = fsub float %1062, %1178
  %1180 = sitofp i32 %1172 to float
  %1181 = fsub float %1083, %1180
  br label %1259

1182:                                             ; preds = %1168
  %1183 = fsub float %1062, %1146
  %1184 = tail call float @llvm.floor.f32(float %1183)
  %1185 = fptosi float %1184 to i32
  %1186 = fsub float %1083, %1152
  %1187 = tail call float @llvm.floor.f32(float %1186)
  %1188 = fptosi float %1187 to i32
  %1189 = fadd float %1062, %1146
  %1190 = tail call float @llvm.floor.f32(float %1189)
  %1191 = fptosi float %1190 to i32
  %1192 = fadd float %1083, %1152
  %1193 = tail call float @llvm.floor.f32(float %1192)
  %1194 = fptosi float %1193 to i32
  %1195 = icmp eq i32 %1185, %1191
  %1196 = icmp eq i32 %1188, %1194
  %1197 = select i1 %1195, i1 %1196, i1 false
  %1198 = and i16 %1174, 8
  %1199 = icmp eq i16 %1198, 0
  br i1 %1197, label %1200, label %1221

1200:                                             ; preds = %1182
  br i1 %1199, label %1201, label %1207

1201:                                             ; preds = %1200
  %1202 = add nsw i32 %1172, %1170
  %1203 = and i32 %1202, 1
  %1204 = icmp eq i32 %1203, 0
  br i1 %1204, label %1205, label %1207

1205:                                             ; preds = %1201
  br i1 %1005, label %1275, label %1206

1206:                                             ; preds = %1205
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef %1022, ptr noundef %7) #12
  br label %1275

1207:                                             ; preds = %1201, %1200
  %1208 = and i16 %1174, 16
  %1209 = icmp eq i16 %1208, 0
  br i1 %1209, label %1210, label %1216

1210:                                             ; preds = %1207
  %1211 = add nsw i32 %1172, %1170
  %1212 = and i32 %1211, 1
  %1213 = icmp eq i32 %1212, 0
  br i1 %1213, label %1216, label %1214

1214:                                             ; preds = %1210
  br i1 %1005, label %1275, label %1215

1215:                                             ; preds = %1214
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef %1022, ptr noundef %7) #12
  br label %1275

1216:                                             ; preds = %1210, %1207
  %1217 = sitofp i32 %1170 to float
  %1218 = fsub float %1062, %1217
  %1219 = sitofp i32 %1172 to float
  %1220 = fsub float %1083, %1219
  br label %1259

1221:                                             ; preds = %1182
  br i1 %1199, label %1238, label %1222

1222:                                             ; preds = %1221
  %1223 = add nsw i32 %1185, %1172
  %1224 = and i32 %1223, 1
  %1225 = icmp eq i32 %1224, 0
  %1226 = select i1 %1225, i32 %1185, i32 %1191
  %1227 = sitofp i32 %1226 to float
  %1228 = fsub float %1062, %1227
  %1229 = add nsw i32 %1188, %1170
  %1230 = and i32 %1229, 1
  %1231 = icmp eq i32 %1230, 0
  br i1 %1231, label %1235, label %1232

1232:                                             ; preds = %1222
  %1233 = sitofp i32 %1194 to float
  %1234 = fsub float %1083, %1233
  br label %1238

1235:                                             ; preds = %1222
  %1236 = sitofp i32 %1188 to float
  %1237 = fsub float %1083, %1236
  br label %1238

1238:                                             ; preds = %1232, %1235, %1221
  %1239 = phi float [ %1234, %1232 ], [ %1237, %1235 ], [ %1083, %1221 ]
  %1240 = phi float [ %1228, %1232 ], [ %1228, %1235 ], [ %1062, %1221 ]
  %1241 = and i16 %1174, 16
  %1242 = icmp eq i16 %1241, 0
  br i1 %1242, label %1259, label %1243

1243:                                             ; preds = %1238
  %1244 = add nsw i32 %1185, %1172
  %1245 = and i32 %1244, 1
  %1246 = icmp eq i32 %1245, 0
  %1247 = select i1 %1246, i32 %1191, i32 %1185
  %1248 = sitofp i32 %1247 to float
  %1249 = fsub float %1240, %1248
  %1250 = add nsw i32 %1188, %1170
  %1251 = and i32 %1250, 1
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1256, label %1253

1253:                                             ; preds = %1243
  %1254 = sitofp i32 %1188 to float
  %1255 = fsub float %1239, %1254
  br label %1259

1256:                                             ; preds = %1243
  %1257 = sitofp i32 %1194 to float
  %1258 = fsub float %1239, %1257
  br label %1259

1259:                                             ; preds = %1216, %1253, %1256, %1238, %1177
  %1260 = phi float [ %1181, %1177 ], [ %1220, %1216 ], [ %1255, %1253 ], [ %1258, %1256 ], [ %1239, %1238 ]
  %1261 = phi float [ %1179, %1177 ], [ %1218, %1216 ], [ %1249, %1253 ], [ %1249, %1256 ], [ %1240, %1238 ]
  %1262 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 48
  %1263 = load float, ptr %1262, align 4, !tbaa !71
  %1264 = fcmp olt float %1263, 1.000000e+00
  br i1 %1264, label %1265, label %1275

1265:                                             ; preds = %1259
  %1266 = fadd float %1261, -5.000000e-01
  %1267 = fsub float 1.000000e+00, %1263
  %1268 = fdiv float %1266, %1267
  %1269 = fadd float %1268, 5.000000e-01
  %1270 = fadd float %1260, -5.000000e-01
  %1271 = fdiv float %1270, %1267
  %1272 = fadd float %1271, 5.000000e-01
  %1273 = fdiv float %1146, %1267
  %1274 = fdiv float %1152, %1267
  br label %1275

1275:                                             ; preds = %1259, %1265, %1214, %1215, %1205, %1206
  %1276 = phi i1 [ false, %1206 ], [ false, %1205 ], [ false, %1215 ], [ false, %1214 ], [ true, %1265 ], [ true, %1259 ]
  %1277 = phi float [ %1152, %1206 ], [ %1152, %1205 ], [ %1152, %1215 ], [ %1152, %1214 ], [ %1274, %1265 ], [ %1152, %1259 ]
  %1278 = phi float [ %1146, %1206 ], [ %1146, %1205 ], [ %1146, %1215 ], [ %1146, %1214 ], [ %1273, %1265 ], [ %1146, %1259 ]
  %1279 = phi float [ %1083, %1206 ], [ %1083, %1205 ], [ %1083, %1215 ], [ %1083, %1214 ], [ %1272, %1265 ], [ %1260, %1259 ]
  %1280 = phi float [ %1062, %1206 ], [ %1062, %1205 ], [ %1062, %1215 ], [ %1062, %1214 ], [ %1269, %1265 ], [ %1261, %1259 ]
  br i1 %1276, label %1281, label %1791

1281:                                             ; preds = %1275, %1164
  %1282 = phi float [ %1277, %1275 ], [ %1152, %1164 ]
  %1283 = phi float [ %1278, %1275 ], [ %1146, %1164 ]
  %1284 = phi float [ %1279, %1275 ], [ %1083, %1164 ]
  %1285 = phi float [ %1280, %1275 ], [ %1062, %1164 ]
  %1286 = load i16, ptr %1153, align 8, !tbaa !69
  switch i16 %1286, label %1321 [
    i16 4, label %1287
    i16 2, label %1307
    i16 5, label %1307
  ]

1287:                                             ; preds = %1281
  %1288 = fadd float %1283, %1285
  %1289 = fcmp olt float %1288, 0.000000e+00
  %1290 = fadd float %1282, %1284
  %1291 = fcmp olt float %1290, 0.000000e+00
  %1292 = select i1 %1289, i1 true, i1 %1291
  %1293 = fsub float %1285, %1283
  %1294 = fcmp ogt float %1293, 1.000000e+00
  %1295 = select i1 %1292, i1 true, i1 %1294
  %1296 = fsub float %1284, %1282
  %1297 = fcmp ogt float %1296, 1.000000e+00
  %1298 = select i1 %1295, i1 true, i1 %1297
  br i1 %1298, label %1305, label %1299

1299:                                             ; preds = %1287
  %1300 = getelementptr inbounds float, ptr %3, i64 2
  %1301 = load float, ptr %1300, align 4, !tbaa !68
  %1302 = fcmp olt float %1301, -1.000000e+00
  %1303 = fcmp ogt float %1301, 1.000000e+00
  %1304 = or i1 %1302, %1303
  br i1 %1304, label %1305, label %1358

1305:                                             ; preds = %1299, %1287
  br i1 %1005, label %1791, label %1306

1306:                                             ; preds = %1305
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef %1022, ptr noundef %7) #12
  br label %1791

1307:                                             ; preds = %1281, %1281
  %1308 = fadd float %1283, %1285
  %1309 = fcmp olt float %1308, 0.000000e+00
  %1310 = fadd float %1282, %1284
  %1311 = fcmp olt float %1310, 0.000000e+00
  %1312 = select i1 %1309, i1 true, i1 %1311
  %1313 = fsub float %1285, %1283
  %1314 = fcmp ogt float %1313, 1.000000e+00
  %1315 = select i1 %1312, i1 true, i1 %1314
  %1316 = fsub float %1284, %1282
  %1317 = fcmp ogt float %1316, 1.000000e+00
  %1318 = select i1 %1315, i1 true, i1 %1317
  br i1 %1318, label %1319, label %1358

1319:                                             ; preds = %1307
  br i1 %1005, label %1791, label %1320

1320:                                             ; preds = %1319
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef %1022, ptr noundef %7) #12
  br label %1791

1321:                                             ; preds = %1281
  %1322 = fcmp ogt float %1285, 1.000000e+00
  br i1 %1166, label %1323, label %1327

1323:                                             ; preds = %1321
  br i1 %1322, label %1339, label %1324

1324:                                             ; preds = %1323
  %1325 = fcmp olt float %1285, 0.000000e+00
  br i1 %1325, label %1326, label %1339

1326:                                             ; preds = %1324
  br label %1339

1327:                                             ; preds = %1321
  br i1 %1322, label %1328, label %1332

1328:                                             ; preds = %1327
  %1329 = fptosi float %1285 to i32
  %1330 = sitofp i32 %1329 to float
  %1331 = fsub float %1285, %1330
  br label %1339

1332:                                             ; preds = %1327
  %1333 = fcmp olt float %1285, 0.000000e+00
  br i1 %1333, label %1334, label %1339

1334:                                             ; preds = %1332
  %1335 = fptosi float %1285 to i32
  %1336 = sub nsw i32 1, %1335
  %1337 = sitofp i32 %1336 to float
  %1338 = fadd float %1285, %1337
  br label %1339

1339:                                             ; preds = %1323, %1328, %1334, %1332, %1326, %1324
  %1340 = phi float [ 0.000000e+00, %1326 ], [ %1285, %1324 ], [ %1331, %1328 ], [ %1338, %1334 ], [ %1285, %1332 ], [ 1.000000e+00, %1323 ]
  %1341 = fcmp ogt float %1284, 1.000000e+00
  br i1 %1166, label %1342, label %1346

1342:                                             ; preds = %1339
  br i1 %1341, label %1358, label %1343

1343:                                             ; preds = %1342
  %1344 = fcmp olt float %1284, 0.000000e+00
  br i1 %1344, label %1345, label %1358

1345:                                             ; preds = %1343
  br label %1358

1346:                                             ; preds = %1339
  br i1 %1341, label %1347, label %1351

1347:                                             ; preds = %1346
  %1348 = fptosi float %1284 to i32
  %1349 = sitofp i32 %1348 to float
  %1350 = fsub float %1284, %1349
  br label %1358

1351:                                             ; preds = %1346
  %1352 = fcmp olt float %1284, 0.000000e+00
  br i1 %1352, label %1353, label %1358

1353:                                             ; preds = %1351
  %1354 = fptosi float %1284 to i32
  %1355 = sub nsw i32 1, %1354
  %1356 = sitofp i32 %1355 to float
  %1357 = fadd float %1284, %1356
  br label %1358

1358:                                             ; preds = %1342, %1307, %1299, %1347, %1353, %1351, %1345, %1343
  %1359 = phi float [ 0.000000e+00, %1345 ], [ %1284, %1343 ], [ %1350, %1347 ], [ %1357, %1353 ], [ %1284, %1351 ], [ %1284, %1299 ], [ %1284, %1307 ], [ 1.000000e+00, %1342 ]
  %1360 = phi float [ %1340, %1345 ], [ %1340, %1343 ], [ %1340, %1347 ], [ %1340, %1353 ], [ %1340, %1351 ], [ %1285, %1299 ], [ %1285, %1307 ], [ %1340, %1342 ]
  %1361 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !74
  %1362 = and i16 %1361, 4
  %1363 = icmp eq i16 %1362, 0
  br i1 %1363, label %1377, label %1364

1364:                                             ; preds = %1358
  %1365 = load i32, ptr %1064, align 8, !tbaa !75
  %1366 = and i32 %1365, 4
  %1367 = icmp eq i32 %1366, 0
  br i1 %1367, label %1377, label %1368

1368:                                             ; preds = %1364
  %1369 = getelementptr inbounds %struct.ImBuf, ptr %1022, i64 0, i32 2
  %1370 = load i32, ptr %1369, align 8, !tbaa !72
  %1371 = getelementptr inbounds %struct.ImBuf, ptr %1022, i64 0, i32 3
  %1372 = load i32, ptr %1371, align 4, !tbaa !73
  %1373 = mul nsw i32 %1372, %1370
  %1374 = load ptr, ptr %1025, align 8, !tbaa !61
  %1375 = sext i32 %1373 to i64
  %1376 = getelementptr inbounds i32, ptr %1374, i64 %1375
  store ptr %1376, ptr %1025, align 8, !tbaa !61
  br label %1377

1377:                                             ; preds = %1368, %1364, %1358
  %1378 = load i16, ptr %1055, align 4, !tbaa !65
  %1379 = zext i16 %1378 to i32
  %1380 = and i32 %1379, 4
  %1381 = icmp eq i32 %1380, 0
  br i1 %1381, label %1602, label %1382

1382:                                             ; preds = %1377
  %1383 = fcmp ogt float %1283, %1282
  %1384 = select i1 %1383, float %1283, float %1282
  %1385 = fcmp ogt float %1384, 5.000000e-01
  %1386 = select i1 %1385, float 5.000000e-01, float %1384
  %1387 = getelementptr inbounds %struct.ImBuf, ptr %1022, i64 0, i32 2
  %1388 = load i32, ptr %1387, align 8, !tbaa !72
  %1389 = getelementptr inbounds %struct.ImBuf, ptr %1022, i64 0, i32 3
  %1390 = load i32, ptr %1389, align 4, !tbaa !73
  %1391 = tail call i32 @llvm.smin.i32(i32 %1388, i32 %1390)
  %1392 = sitofp i32 %1391 to float
  %1393 = fdiv float 1.000000e+00, %1392
  %1394 = fdiv float %1393, %1386
  %1395 = fcmp ogt float %1394, 1.000000e+00
  %1396 = fmul float %1394, %1394
  %1397 = select i1 %1395, float 1.000000e+00, float %1396
  %1398 = getelementptr inbounds %struct.ImBuf, ptr %1022, i64 0, i32 19, i64 0
  %1399 = load ptr, ptr %1398, align 8, !tbaa !111
  %1400 = icmp eq ptr %1399, null
  %1401 = fcmp olt float %1386, %1393
  %1402 = select i1 %1400, i1 true, i1 %1401
  br i1 %1402, label %1422, label %1409

1403:                                             ; preds = %1409
  %1404 = getelementptr inbounds %struct.ImBuf, ptr %1022, i64 0, i32 19, i64 %1420
  %1405 = load ptr, ptr %1404, align 8, !tbaa !111
  %1406 = icmp eq ptr %1405, null
  %1407 = fcmp olt float %1386, %1419
  %1408 = select i1 %1406, i1 true, i1 %1407
  br i1 %1408, label %1422, label %1409, !llvm.loop !114

1409:                                             ; preds = %1382, %1403
  %1410 = phi ptr [ %1405, %1403 ], [ %1399, %1382 ]
  %1411 = phi ptr [ %1410, %1403 ], [ %1022, %1382 ]
  %1412 = phi i64 [ %1420, %1403 ], [ 0, %1382 ]
  %1413 = getelementptr inbounds %struct.ImBuf, ptr %1410, i64 0, i32 2
  %1414 = load i32, ptr %1413, align 8, !tbaa !72
  %1415 = getelementptr inbounds %struct.ImBuf, ptr %1410, i64 0, i32 3
  %1416 = load i32, ptr %1415, align 4, !tbaa !73
  %1417 = tail call i32 @llvm.smin.i32(i32 %1414, i32 %1416)
  %1418 = sitofp i32 %1417 to float
  %1419 = fdiv float 1.000000e+00, %1418
  %1420 = add nuw nsw i64 %1412, 1
  %1421 = icmp eq i64 %1420, 20
  br i1 %1421, label %1422, label %1403, !llvm.loop !114

1422:                                             ; preds = %1403, %1409, %1382
  %1423 = phi float [ %1393, %1382 ], [ %1419, %1409 ], [ %1419, %1403 ]
  %1424 = phi ptr [ %1022, %1382 ], [ %1411, %1409 ], [ %1411, %1403 ]
  %1425 = phi ptr [ %1022, %1382 ], [ %1410, %1409 ], [ %1410, %1403 ]
  %1426 = icmp eq ptr %1424, %1425
  %1427 = and i16 %1378, 1
  %1428 = icmp eq i16 %1427, 0
  %1429 = and i1 %1428, %1426
  br i1 %1429, label %1439, label %1430

1430:                                             ; preds = %1422
  %1431 = sitofp i32 %1388 to float
  %1432 = fdiv float 5.000000e-01, %1431
  %1433 = fcmp olt float %1283, %1432
  %1434 = select i1 %1433, float %1432, float %1283
  %1435 = sitofp i32 %1390 to float
  %1436 = fdiv float 5.000000e-01, %1435
  %1437 = fcmp olt float %1282, %1436
  br i1 %1437, label %1438, label %1439

1438:                                             ; preds = %1430
  br label %1439

1439:                                             ; preds = %1422, %1430, %1438
  %1440 = phi float [ %1436, %1438 ], [ %1282, %1430 ], [ %1282, %1422 ]
  %1441 = phi float [ %1434, %1438 ], [ %1434, %1430 ], [ %1283, %1422 ]
  %1442 = load ptr, ptr %1000, align 8, !tbaa !34
  %1443 = icmp ne ptr %1442, null
  %1444 = and i16 %1378, 2048
  %1445 = icmp eq i16 %1444, 0
  %1446 = and i1 %1445, %1443
  %1447 = zext i1 %1165 to i16
  %1448 = zext i1 %1166 to i16
  br i1 %1446, label %1449, label %1561

1449:                                             ; preds = %1439
  %1450 = fsub float %1360, %1441
  %1451 = fsub float %1359, %1440
  %1452 = fadd float %1360, %1441
  %1453 = fadd float %1359, %1440
  tail call fastcc void @boxsample(ptr noundef %1425, float noundef %1450, float noundef %1451, float noundef %1452, float noundef %1453, ptr noundef nonnull %6, i16 noundef signext %1447, i16 noundef signext %1448)
  %1454 = load float, ptr %998, align 4, !tbaa !78
  %1455 = load float, ptr %997, align 8, !tbaa !79
  %1456 = fadd float %1454, %1455
  %1457 = load float, ptr %996, align 4, !tbaa !80
  %1458 = fadd float %1456, %1457
  %1459 = fadd float %1134, %1450
  %1460 = fadd float %1133, %1451
  %1461 = fadd float %1134, %1452
  %1462 = fadd float %1133, %1453
  call fastcc void @boxsample(ptr noundef %1425, float noundef %1459, float noundef %1460, float noundef %1461, float noundef %1462, ptr noundef nonnull %21, i16 noundef signext %1447, i16 noundef signext %1448)
  %1463 = getelementptr inbounds %struct.TexResult, ptr %21, i64 0, i32 1
  %1464 = load float, ptr %1463, align 4, !tbaa !78
  %1465 = getelementptr inbounds %struct.TexResult, ptr %21, i64 0, i32 2
  %1466 = load float, ptr %1465, align 8, !tbaa !79
  %1467 = fadd float %1464, %1466
  %1468 = getelementptr inbounds %struct.TexResult, ptr %21, i64 0, i32 3
  %1469 = load float, ptr %1468, align 4, !tbaa !80
  %1470 = fadd float %1467, %1469
  %1471 = fadd float %1136, %1450
  %1472 = fadd float %1135, %1451
  %1473 = fadd float %1136, %1452
  %1474 = fadd float %1135, %1453
  call fastcc void @boxsample(ptr noundef %1425, float noundef %1471, float noundef %1472, float noundef %1473, float noundef %1474, ptr noundef nonnull %21, i16 noundef signext %1447, i16 noundef signext %1448)
  %1475 = load float, ptr %1463, align 4, !tbaa !78
  %1476 = load float, ptr %1465, align 8, !tbaa !79
  %1477 = fadd float %1475, %1476
  %1478 = load float, ptr %1468, align 4, !tbaa !80
  %1479 = fadd float %1477, %1478
  %1480 = fsub float %1458, %1470
  %1481 = load ptr, ptr %1000, align 8, !tbaa !34
  store float %1480, ptr %1481, align 4, !tbaa !68
  %1482 = fsub float %1458, %1479
  %1483 = getelementptr inbounds float, ptr %1481, i64 1
  store float %1482, ptr %1483, align 4, !tbaa !68
  br i1 %1426, label %1556, label %1484

1484:                                             ; preds = %1449
  call fastcc void @boxsample(ptr noundef %1424, float noundef %1450, float noundef %1451, float noundef %1452, float noundef %1453, ptr noundef nonnull %21, i16 noundef signext %1447, i16 noundef signext %1448)
  %1485 = fsub float %1423, %1386
  %1486 = fmul float %1485, 2.000000e+00
  %1487 = fdiv float %1486, %1423
  %1488 = fcmp ult float %1487, 1.000000e+00
  br i1 %1488, label %1495, label %1489

1489:                                             ; preds = %1484
  %1490 = getelementptr inbounds %struct.TexResult, ptr %21, i64 0, i32 4
  %1491 = load float, ptr %1490, align 8, !tbaa !83
  store float %1491, ptr %999, align 8, !tbaa !83
  %1492 = load float, ptr %1468, align 4, !tbaa !80
  store float %1492, ptr %996, align 4, !tbaa !80
  %1493 = load float, ptr %1465, align 8, !tbaa !79
  store float %1493, ptr %997, align 8, !tbaa !79
  %1494 = load float, ptr %1463, align 4, !tbaa !78
  store float %1494, ptr %998, align 4, !tbaa !78
  br label %1514

1495:                                             ; preds = %1484
  %1496 = fsub float 1.000000e+00, %1487
  %1497 = load float, ptr %996, align 4, !tbaa !80
  %1498 = load float, ptr %1468, align 4, !tbaa !80
  %1499 = fmul float %1487, %1498
  %1500 = tail call float @llvm.fmuladd.f32(float %1496, float %1497, float %1499)
  store float %1500, ptr %996, align 4, !tbaa !80
  %1501 = load float, ptr %997, align 8, !tbaa !79
  %1502 = load float, ptr %1465, align 8, !tbaa !79
  %1503 = fmul float %1487, %1502
  %1504 = tail call float @llvm.fmuladd.f32(float %1496, float %1501, float %1503)
  store float %1504, ptr %997, align 8, !tbaa !79
  %1505 = load float, ptr %998, align 4, !tbaa !78
  %1506 = load float, ptr %1463, align 4, !tbaa !78
  %1507 = fmul float %1487, %1506
  %1508 = tail call float @llvm.fmuladd.f32(float %1496, float %1505, float %1507)
  store float %1508, ptr %998, align 4, !tbaa !78
  %1509 = load float, ptr %999, align 8, !tbaa !83
  %1510 = getelementptr inbounds %struct.TexResult, ptr %21, i64 0, i32 4
  %1511 = load float, ptr %1510, align 8, !tbaa !83
  %1512 = fmul float %1487, %1511
  %1513 = tail call float @llvm.fmuladd.f32(float %1496, float %1509, float %1512)
  store float %1513, ptr %999, align 8, !tbaa !83
  br label %1514

1514:                                             ; preds = %1495, %1489
  %1515 = phi float [ %1282, %1489 ], [ %1496, %1495 ]
  %1516 = load float, ptr %1463, align 4, !tbaa !78
  %1517 = load float, ptr %1465, align 8, !tbaa !79
  %1518 = fadd float %1516, %1517
  %1519 = load float, ptr %1468, align 4, !tbaa !80
  %1520 = fadd float %1518, %1519
  %1521 = fmul float %1487, %1520
  %1522 = tail call float @llvm.fmuladd.f32(float %1515, float %1458, float %1521)
  call fastcc void @boxsample(ptr noundef %1424, float noundef %1459, float noundef %1460, float noundef %1461, float noundef %1462, ptr noundef nonnull %21, i16 noundef signext %1447, i16 noundef signext %1448)
  %1523 = load float, ptr %1463, align 4, !tbaa !78
  %1524 = load float, ptr %1465, align 8, !tbaa !79
  %1525 = fadd float %1523, %1524
  %1526 = load float, ptr %1468, align 4, !tbaa !80
  %1527 = fadd float %1525, %1526
  %1528 = fmul float %1487, %1527
  %1529 = tail call float @llvm.fmuladd.f32(float %1515, float %1470, float %1528)
  call fastcc void @boxsample(ptr noundef %1424, float noundef %1471, float noundef %1472, float noundef %1473, float noundef %1474, ptr noundef nonnull %21, i16 noundef signext %1447, i16 noundef signext %1448)
  %1530 = load float, ptr %1463, align 4, !tbaa !78
  %1531 = load float, ptr %1465, align 8, !tbaa !79
  %1532 = fadd float %1530, %1531
  %1533 = load float, ptr %1468, align 4, !tbaa !80
  %1534 = fadd float %1532, %1533
  %1535 = fmul float %1487, %1534
  %1536 = tail call float @llvm.fmuladd.f32(float %1515, float %1479, float %1535)
  %1537 = fsub float %1522, %1529
  store float %1537, ptr %1481, align 4, !tbaa !68
  %1538 = fsub float %1522, %1536
  store float %1538, ptr %1483, align 4, !tbaa !68
  %1539 = fcmp olt float %1487, 1.000000e+00
  br i1 %1539, label %1540, label %1556

1540:                                             ; preds = %1514
  %1541 = fsub float 1.000000e+00, %1487
  %1542 = load float, ptr %996, align 4, !tbaa !80
  %1543 = fmul float %1487, %1533
  %1544 = tail call float @llvm.fmuladd.f32(float %1541, float %1542, float %1543)
  store float %1544, ptr %996, align 4, !tbaa !80
  %1545 = load float, ptr %997, align 8, !tbaa !79
  %1546 = fmul float %1487, %1531
  %1547 = tail call float @llvm.fmuladd.f32(float %1541, float %1545, float %1546)
  store float %1547, ptr %997, align 8, !tbaa !79
  %1548 = load float, ptr %998, align 4, !tbaa !78
  %1549 = fmul float %1487, %1530
  %1550 = tail call float @llvm.fmuladd.f32(float %1541, float %1548, float %1549)
  store float %1550, ptr %998, align 4, !tbaa !78
  %1551 = load float, ptr %999, align 8, !tbaa !83
  %1552 = getelementptr inbounds %struct.TexResult, ptr %21, i64 0, i32 4
  %1553 = load float, ptr %1552, align 8, !tbaa !83
  %1554 = fmul float %1487, %1553
  %1555 = tail call float @llvm.fmuladd.f32(float %1541, float %1551, float %1554)
  store float %1555, ptr %999, align 8, !tbaa !83
  br label %1556

1556:                                             ; preds = %1514, %1540, %1449
  %1557 = load float, ptr %1481, align 4, !tbaa !68
  %1558 = fmul float %1397, %1557
  store float %1558, ptr %1481, align 4, !tbaa !68
  %1559 = load float, ptr %1483, align 4, !tbaa !68
  %1560 = fmul float %1397, %1559
  store float %1560, ptr %1483, align 4, !tbaa !68
  br label %1663

1561:                                             ; preds = %1439
  %1562 = fadd float %1360, %1441
  %1563 = fsub float %1360, %1441
  %1564 = fadd float %1359, %1440
  %1565 = fsub float %1359, %1440
  tail call fastcc void @boxsample(ptr noundef %1425, float noundef %1563, float noundef %1565, float noundef %1562, float noundef %1564, ptr noundef nonnull %6, i16 noundef signext %1447, i16 noundef signext %1448)
  br i1 %1426, label %1663, label %1566

1566:                                             ; preds = %1561
  call fastcc void @boxsample(ptr noundef %1424, float noundef %1563, float noundef %1565, float noundef %1562, float noundef %1564, ptr noundef nonnull %21, i16 noundef signext %1447, i16 noundef signext %1448)
  %1567 = fsub float %1423, %1386
  %1568 = fmul float %1567, 2.000000e+00
  %1569 = fdiv float %1568, %1423
  %1570 = fcmp ult float %1569, 1.000000e+00
  br i1 %1570, label %1580, label %1571

1571:                                             ; preds = %1566
  %1572 = getelementptr inbounds %struct.TexResult, ptr %21, i64 0, i32 4
  %1573 = load float, ptr %1572, align 8, !tbaa !83
  store float %1573, ptr %999, align 8, !tbaa !83
  %1574 = getelementptr inbounds %struct.TexResult, ptr %21, i64 0, i32 3
  %1575 = load float, ptr %1574, align 4, !tbaa !80
  store float %1575, ptr %996, align 4, !tbaa !80
  %1576 = getelementptr inbounds %struct.TexResult, ptr %21, i64 0, i32 2
  %1577 = load float, ptr %1576, align 8, !tbaa !79
  store float %1577, ptr %997, align 8, !tbaa !79
  %1578 = getelementptr inbounds %struct.TexResult, ptr %21, i64 0, i32 1
  %1579 = load float, ptr %1578, align 4, !tbaa !78
  store float %1579, ptr %998, align 4, !tbaa !78
  br label %1663

1580:                                             ; preds = %1566
  %1581 = fsub float 1.000000e+00, %1569
  %1582 = load float, ptr %996, align 4, !tbaa !80
  %1583 = getelementptr inbounds %struct.TexResult, ptr %21, i64 0, i32 3
  %1584 = load float, ptr %1583, align 4, !tbaa !80
  %1585 = fmul float %1569, %1584
  %1586 = tail call float @llvm.fmuladd.f32(float %1581, float %1582, float %1585)
  store float %1586, ptr %996, align 4, !tbaa !80
  %1587 = load float, ptr %997, align 8, !tbaa !79
  %1588 = getelementptr inbounds %struct.TexResult, ptr %21, i64 0, i32 2
  %1589 = load float, ptr %1588, align 8, !tbaa !79
  %1590 = fmul float %1569, %1589
  %1591 = tail call float @llvm.fmuladd.f32(float %1581, float %1587, float %1590)
  store float %1591, ptr %997, align 8, !tbaa !79
  %1592 = load float, ptr %998, align 4, !tbaa !78
  %1593 = getelementptr inbounds %struct.TexResult, ptr %21, i64 0, i32 1
  %1594 = load float, ptr %1593, align 4, !tbaa !78
  %1595 = fmul float %1569, %1594
  %1596 = tail call float @llvm.fmuladd.f32(float %1581, float %1592, float %1595)
  store float %1596, ptr %998, align 4, !tbaa !78
  %1597 = load float, ptr %999, align 8, !tbaa !83
  %1598 = getelementptr inbounds %struct.TexResult, ptr %21, i64 0, i32 4
  %1599 = load float, ptr %1598, align 8, !tbaa !83
  %1600 = fmul float %1569, %1599
  %1601 = tail call float @llvm.fmuladd.f32(float %1581, float %1597, float %1600)
  store float %1601, ptr %999, align 8, !tbaa !83
  br label %1663

1602:                                             ; preds = %1377
  %1603 = and i32 %1379, 1
  %1604 = icmp eq i32 %1603, 0
  br i1 %1604, label %1618, label %1605

1605:                                             ; preds = %1602
  %1606 = getelementptr inbounds %struct.ImBuf, ptr %1022, i64 0, i32 2
  %1607 = load i32, ptr %1606, align 8, !tbaa !72
  %1608 = sitofp i32 %1607 to float
  %1609 = fdiv float 5.000000e-01, %1608
  %1610 = fcmp olt float %1283, %1609
  %1611 = select i1 %1610, float %1609, float %1283
  %1612 = getelementptr inbounds %struct.ImBuf, ptr %1022, i64 0, i32 3
  %1613 = load i32, ptr %1612, align 4, !tbaa !73
  %1614 = sitofp i32 %1613 to float
  %1615 = fdiv float 5.000000e-01, %1614
  %1616 = fcmp olt float %1282, %1615
  br i1 %1616, label %1617, label %1618

1617:                                             ; preds = %1605
  br label %1618

1618:                                             ; preds = %1605, %1617, %1602
  %1619 = phi float [ %1615, %1617 ], [ %1282, %1605 ], [ %1282, %1602 ]
  %1620 = phi float [ %1611, %1617 ], [ %1611, %1605 ], [ %1283, %1602 ]
  %1621 = load ptr, ptr %1000, align 8, !tbaa !34
  %1622 = icmp ne ptr %1621, null
  %1623 = and i16 %1378, 2048
  %1624 = icmp eq i16 %1623, 0
  %1625 = and i1 %1624, %1622
  %1626 = fsub float %1360, %1620
  %1627 = fsub float %1359, %1619
  %1628 = fadd float %1360, %1620
  %1629 = fadd float %1359, %1619
  %1630 = zext i1 %1165 to i16
  %1631 = zext i1 %1166 to i16
  tail call fastcc void @boxsample(ptr noundef %1022, float noundef %1626, float noundef %1627, float noundef %1628, float noundef %1629, ptr noundef nonnull %6, i16 noundef signext %1630, i16 noundef signext %1631)
  br i1 %1625, label %1632, label %1663

1632:                                             ; preds = %1618
  %1633 = load float, ptr %998, align 4, !tbaa !78
  %1634 = load float, ptr %997, align 8, !tbaa !79
  %1635 = fadd float %1633, %1634
  %1636 = load float, ptr %996, align 4, !tbaa !80
  %1637 = fadd float %1635, %1636
  %1638 = fadd float %1134, %1626
  %1639 = fadd float %1133, %1627
  %1640 = fadd float %1134, %1628
  %1641 = fadd float %1133, %1629
  call fastcc void @boxsample(ptr noundef %1022, float noundef %1638, float noundef %1639, float noundef %1640, float noundef %1641, ptr noundef nonnull %21, i16 noundef signext %1630, i16 noundef signext %1631)
  %1642 = getelementptr inbounds %struct.TexResult, ptr %21, i64 0, i32 1
  %1643 = load float, ptr %1642, align 4, !tbaa !78
  %1644 = getelementptr inbounds %struct.TexResult, ptr %21, i64 0, i32 2
  %1645 = load float, ptr %1644, align 8, !tbaa !79
  %1646 = fadd float %1643, %1645
  %1647 = getelementptr inbounds %struct.TexResult, ptr %21, i64 0, i32 3
  %1648 = load float, ptr %1647, align 4, !tbaa !80
  %1649 = fadd float %1646, %1648
  %1650 = fadd float %1136, %1626
  %1651 = fadd float %1135, %1627
  %1652 = fadd float %1136, %1628
  %1653 = fadd float %1135, %1629
  call fastcc void @boxsample(ptr noundef %1022, float noundef %1650, float noundef %1651, float noundef %1652, float noundef %1653, ptr noundef nonnull %21, i16 noundef signext %1630, i16 noundef signext %1631)
  %1654 = load float, ptr %1642, align 4, !tbaa !78
  %1655 = load float, ptr %1644, align 8, !tbaa !79
  %1656 = fadd float %1654, %1655
  %1657 = load float, ptr %1647, align 4, !tbaa !80
  %1658 = fadd float %1656, %1657
  %1659 = fsub float %1637, %1649
  %1660 = load ptr, ptr %1000, align 8, !tbaa !34
  store float %1659, ptr %1660, align 4, !tbaa !68
  %1661 = fsub float %1637, %1658
  %1662 = getelementptr inbounds float, ptr %1660, i64 1
  store float %1661, ptr %1662, align 4, !tbaa !68
  br label %1663

1663:                                             ; preds = %1618, %1632, %1556, %1571, %1580, %1561
  %1664 = load i16, ptr %1055, align 4, !tbaa !65
  %1665 = and i16 %1664, 32
  %1666 = icmp ne i16 %1665, 0
  %1667 = load float, ptr %999, align 8, !tbaa !83
  br i1 %1666, label %1668, label %1677

1668:                                             ; preds = %1663
  %1669 = load float, ptr %998, align 4, !tbaa !78
  %1670 = load float, ptr %997, align 8, !tbaa !79
  %1671 = load float, ptr %996, align 4, !tbaa !80
  %1672 = fcmp ogt float %1669, %1670
  %1673 = select i1 %1672, float %1669, float %1670
  %1674 = fcmp ogt float %1673, %1671
  %1675 = select i1 %1674, float %1673, float %1671
  %1676 = fmul float %1667, %1675
  store float %1676, ptr %6, align 8, !tbaa !84
  store float %1676, ptr %999, align 8, !tbaa !83
  br label %1678

1677:                                             ; preds = %1663
  store float %1667, ptr %6, align 8, !tbaa !84
  br label %1678

1678:                                             ; preds = %1677, %1668
  %1679 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 31
  %1680 = load i16, ptr %1679, align 2, !tbaa !70
  %1681 = and i16 %1680, 4
  %1682 = icmp eq i16 %1681, 0
  br i1 %1682, label %1686, label %1683

1683:                                             ; preds = %1678
  %1684 = load float, ptr %999, align 8, !tbaa !83
  %1685 = fsub float 1.000000e+00, %1684
  store float %1685, ptr %999, align 8, !tbaa !83
  br label %1686

1686:                                             ; preds = %1683, %1678
  %1687 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !74
  %1688 = and i16 %1687, 4
  %1689 = icmp eq i16 %1688, 0
  br i1 %1689, label %1704, label %1690

1690:                                             ; preds = %1686
  %1691 = load i32, ptr %1064, align 8, !tbaa !75
  %1692 = and i32 %1691, 4
  %1693 = icmp eq i32 %1692, 0
  br i1 %1693, label %1704, label %1694

1694:                                             ; preds = %1690
  %1695 = getelementptr inbounds %struct.ImBuf, ptr %1022, i64 0, i32 2
  %1696 = load i32, ptr %1695, align 8, !tbaa !72
  %1697 = getelementptr inbounds %struct.ImBuf, ptr %1022, i64 0, i32 3
  %1698 = load i32, ptr %1697, align 4, !tbaa !73
  %1699 = mul nsw i32 %1698, %1696
  %1700 = load ptr, ptr %1025, align 8, !tbaa !61
  %1701 = sext i32 %1699 to i64
  %1702 = sub nsw i64 0, %1701
  %1703 = getelementptr inbounds i32, ptr %1700, i64 %1702
  store ptr %1703, ptr %1025, align 8, !tbaa !61
  br label %1704

1704:                                             ; preds = %1694, %1690, %1686
  %1705 = load ptr, ptr %1000, align 8, !tbaa !34
  %1706 = icmp eq ptr %1705, null
  %1707 = and i16 %1664, 2048
  %1708 = icmp eq i16 %1707, 0
  %1709 = or i1 %1708, %1706
  br i1 %1709, label %1722, label %1710

1710:                                             ; preds = %1704
  %1711 = load float, ptr %998, align 4, !tbaa !78
  %1712 = fadd float %1711, -5.000000e-01
  %1713 = fmul float %1712, -2.000000e+00
  store float %1713, ptr %1705, align 4, !tbaa !68
  %1714 = load float, ptr %997, align 8, !tbaa !79
  %1715 = fadd float %1714, -5.000000e-01
  %1716 = fmul float %1715, 2.000000e+00
  %1717 = getelementptr inbounds float, ptr %1705, i64 1
  store float %1716, ptr %1717, align 4, !tbaa !68
  %1718 = load float, ptr %996, align 4, !tbaa !80
  %1719 = fadd float %1718, -5.000000e-01
  %1720 = fmul float %1719, 2.000000e+00
  %1721 = getelementptr inbounds float, ptr %1705, i64 2
  store float %1720, ptr %1721, align 4, !tbaa !68
  br label %1722

1722:                                             ; preds = %1710, %1704
  %1723 = load float, ptr %999, align 8, !tbaa !83
  %1724 = fcmp oeq float %1723, 1.000000e+00
  %1725 = fcmp ule float %1723, 0x3F1A36E2E0000000
  %1726 = or i1 %1724, %1725
  %1727 = or i1 %1666, %1726
  br i1 %1727, label %1736, label %1728

1728:                                             ; preds = %1722
  %1729 = fdiv float 1.000000e+00, %1723
  %1730 = load float, ptr %998, align 4, !tbaa !68
  %1731 = fmul float %1729, %1730
  store float %1731, ptr %998, align 4, !tbaa !68
  %1732 = load float, ptr %997, align 4, !tbaa !68
  %1733 = fmul float %1729, %1732
  store float %1733, ptr %997, align 4, !tbaa !68
  %1734 = load float, ptr %996, align 4, !tbaa !68
  %1735 = fmul float %1729, %1734
  store float %1735, ptr %996, align 4, !tbaa !68
  br label %1736

1736:                                             ; preds = %1722, %1728
  br i1 %1005, label %1738, label %1737

1737:                                             ; preds = %1736
  tail call void @BKE_image_pool_release_ibuf(ptr noundef nonnull %1, ptr noundef %1022, ptr noundef %7) #12
  br label %1738

1738:                                             ; preds = %1737, %1736
  %1739 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 7
  %1740 = load float, ptr %1739, align 4, !tbaa !85
  %1741 = load float, ptr %998, align 4, !tbaa !78
  %1742 = fadd float %1741, -5.000000e-01
  %1743 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 5
  %1744 = load float, ptr %1743, align 4, !tbaa !86
  %1745 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 4
  %1746 = load float, ptr %1745, align 8, !tbaa !87
  %1747 = tail call float @llvm.fmuladd.f32(float %1742, float %1744, float %1746)
  %1748 = fadd float %1747, -5.000000e-01
  %1749 = fmul float %1740, %1748
  store float %1749, ptr %998, align 4, !tbaa !78
  %1750 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 8
  %1751 = load float, ptr %1750, align 8, !tbaa !88
  %1752 = load float, ptr %997, align 8, !tbaa !79
  %1753 = fadd float %1752, -5.000000e-01
  %1754 = tail call float @llvm.fmuladd.f32(float %1753, float %1744, float %1746)
  %1755 = fadd float %1754, -5.000000e-01
  %1756 = fmul float %1751, %1755
  store float %1756, ptr %997, align 8, !tbaa !79
  %1757 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 9
  %1758 = load float, ptr %1757, align 4, !tbaa !89
  %1759 = load float, ptr %996, align 4, !tbaa !80
  %1760 = fadd float %1759, -5.000000e-01
  %1761 = tail call float @llvm.fmuladd.f32(float %1760, float %1744, float %1746)
  %1762 = fadd float %1761, -5.000000e-01
  %1763 = fmul float %1758, %1762
  store float %1763, ptr %996, align 4, !tbaa !80
  %1764 = load i16, ptr %1679, align 2, !tbaa !70
  %1765 = and i16 %1764, 1024
  %1766 = icmp eq i16 %1765, 0
  br i1 %1766, label %1767, label %1776

1767:                                             ; preds = %1738
  %1768 = fcmp olt float %1749, 0.000000e+00
  br i1 %1768, label %1769, label %1770

1769:                                             ; preds = %1767
  store float 0.000000e+00, ptr %998, align 4, !tbaa !78
  br label %1770

1770:                                             ; preds = %1769, %1767
  %1771 = fcmp olt float %1756, 0.000000e+00
  br i1 %1771, label %1772, label %1773

1772:                                             ; preds = %1770
  store float 0.000000e+00, ptr %997, align 8, !tbaa !79
  br label %1773

1773:                                             ; preds = %1772, %1770
  %1774 = fcmp olt float %1763, 0.000000e+00
  br i1 %1774, label %1775, label %1776

1775:                                             ; preds = %1773
  store float 0.000000e+00, ptr %996, align 4, !tbaa !80
  br label %1776

1776:                                             ; preds = %1773, %1775, %1738
  %1777 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 6
  %1778 = load float, ptr %1777, align 8, !tbaa !90
  %1779 = fcmp une float %1778, 1.000000e+00
  br i1 %1779, label %1780, label %1791

1780:                                             ; preds = %1776
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #12
  %1781 = load float, ptr %998, align 4, !tbaa !78
  %1782 = load float, ptr %997, align 8, !tbaa !79
  %1783 = load float, ptr %996, align 4, !tbaa !80
  %1784 = getelementptr inbounds float, ptr %22, i64 1
  %1785 = getelementptr inbounds float, ptr %22, i64 2
  call void @rgb_to_hsv(float noundef %1781, float noundef %1782, float noundef %1783, ptr noundef nonnull %22, ptr noundef nonnull %1784, ptr noundef nonnull %1785) #12
  %1786 = load float, ptr %1777, align 8, !tbaa !90
  %1787 = load float, ptr %1784, align 4, !tbaa !68
  %1788 = fmul float %1786, %1787
  store float %1788, ptr %1784, align 4, !tbaa !68
  %1789 = load float, ptr %22, align 4, !tbaa !68
  %1790 = load float, ptr %1785, align 4, !tbaa !68
  call void @hsv_to_rgb(float noundef %1789, float noundef %1788, float noundef %1790, ptr noundef nonnull %998, ptr noundef nonnull %997, ptr noundef nonnull %996) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #12
  br label %1791

1791:                                             ; preds = %1776, %1780, %1319, %1320, %1305, %1306, %1032, %1033, %1012, %995, %1275, %992
  %1792 = phi i32 [ %994, %992 ], [ %1003, %1275 ], [ %1003, %995 ], [ %1003, %1012 ], [ %1003, %1033 ], [ %1003, %1032 ], [ %1003, %1306 ], [ %1003, %1305 ], [ %1003, %1320 ], [ %1003, %1319 ], [ %1003, %1780 ], [ %1003, %1776 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %21) #12
  ret i32 %1792
}

; Function Attrs: nounwind uwtable
define internal fastcc void @image_mipmap_test(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 30
  %4 = load i16, ptr %3, align 4, !tbaa !65
  %5 = and i16 %4, 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !75
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !111
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 23
  %18 = load i32, ptr %17, align 4, !tbaa !115
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %16
  tail call void @BLI_lock_thread(i32 noundef 0) #12
  %22 = load i32, ptr %17, align 4, !tbaa !115
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i16, ptr %3, align 4, !tbaa !65
  %27 = and i16 %26, 4096
  %28 = zext nneg i16 %27 to i32
  tail call void @IMB_remakemipmap(ptr noundef %1, i32 noundef %28) #12
  %29 = load i32, ptr %17, align 4, !tbaa !115
  %30 = and i32 %29, -5
  store i32 %30, ptr %17, align 4, !tbaa !115
  br label %31

31:                                               ; preds = %25, %21
  tail call void @BLI_unlock_thread(i32 noundef 0) #12
  br label %32

32:                                               ; preds = %31, %16, %12
  %33 = load ptr, ptr %13, align 8, !tbaa !111
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  tail call void @BLI_lock_thread(i32 noundef 0) #12
  %36 = load ptr, ptr %13, align 8, !tbaa !111
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i16, ptr %3, align 4, !tbaa !65
  %40 = and i16 %39, 4096
  %41 = zext nneg i16 %40 to i32
  tail call void @IMB_makemipmap(ptr noundef %1, i32 noundef %41) #12
  br label %42

42:                                               ; preds = %38, %35
  tail call void @BLI_unlock_thread(i32 noundef 0) #12
  br label %43

43:                                               ; preds = %42, %32
  %44 = load ptr, ptr %13, align 8, !tbaa !111
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i16, ptr %3, align 4, !tbaa !65
  %48 = and i16 %47, -5
  store i16 %48, ptr %3, align 4, !tbaa !65
  br label %49

49:                                               ; preds = %7, %46, %43, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @image_sample(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr nocapture noundef writeonly %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.TexResult, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #12
  %9 = tail call ptr @BKE_image_pool_acquire_ibuf(ptr noundef %0, ptr noundef null, ptr noundef %6) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %66

12:                                               ; preds = %7
  %13 = load i16, ptr getelementptr inbounds (%struct.Render, ptr @R, i64 0, i32 4), align 8, !tbaa !74
  %14 = and i16 %13, 4
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !75
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !72
  %24 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !73
  %26 = mul nsw i32 %25, %23
  %27 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !61
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds i32, ptr %28, i64 %29
  store ptr %30, ptr %27, align 8, !tbaa !61
  br label %31

31:                                               ; preds = %21, %16, %12
  %32 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 5
  store i32 1, ptr %32, align 4, !tbaa !76
  %33 = fadd float %1, %3
  %34 = fadd float %2, %4
  call fastcc void @boxsample(ptr noundef nonnull %9, float noundef %1, float noundef %2, float noundef %33, float noundef %34, ptr noundef nonnull %8, i16 noundef signext 0, i16 noundef signext 1)
  %35 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 1
  %36 = load float, ptr %35, align 4, !tbaa !68
  store float %36, ptr %5, align 4, !tbaa !68
  %37 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 2
  %38 = load float, ptr %37, align 8, !tbaa !68
  %39 = getelementptr inbounds float, ptr %5, i64 1
  store float %38, ptr %39, align 4, !tbaa !68
  %40 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 3
  %41 = load float, ptr %40, align 4, !tbaa !68
  %42 = getelementptr inbounds float, ptr %5, i64 2
  store float %41, ptr %42, align 4, !tbaa !68
  %43 = getelementptr inbounds %struct.TexResult, ptr %8, i64 0, i32 4
  %44 = load float, ptr %43, align 8, !tbaa !68
  %45 = getelementptr inbounds float, ptr %5, i64 3
  store float %44, ptr %45, align 4, !tbaa !68
  br i1 %15, label %62, label %46

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 6
  %48 = load i32, ptr %47, align 8, !tbaa !75
  %49 = and i32 %48, 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !72
  %54 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !73
  %56 = mul nsw i32 %55, %53
  %57 = getelementptr inbounds %struct.ImBuf, ptr %9, i64 0, i32 8
  %58 = load ptr, ptr %57, align 8, !tbaa !61
  %59 = sext i32 %56 to i64
  %60 = sub nsw i64 0, %59
  %61 = getelementptr inbounds i32, ptr %58, i64 %60
  store ptr %61, ptr %57, align 8, !tbaa !61
  br label %62

62:                                               ; preds = %51, %46, %31
  %63 = getelementptr inbounds %struct.Image, ptr %0, i64 0, i32 10
  %64 = load i16, ptr %63, align 2, !tbaa !58
  %65 = or i16 %64, 512
  store i16 %65, ptr %63, align 2, !tbaa !58
  tail call void @BKE_image_pool_release_ibuf(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %6) #12
  br label %66

66:                                               ; preds = %62, %11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ibuf_sample(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.ReadEWAData, align 8
  %8 = alloca [2 x float], align 4
  %9 = alloca %struct.TexResult, align 8
  %10 = alloca %struct.afdata_t, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #12
  store float %3, ptr %10, align 4, !tbaa !68
  %11 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  store float %3, ptr %11, align 4, !tbaa !68
  %12 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 1
  store float %4, ptr %12, align 4, !tbaa !68
  %13 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 1, i64 1
  store float %4, ptr %13, align 4, !tbaa !68
  %14 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 2
  store i32 1, ptr %14, align 4, !tbaa !101
  %15 = getelementptr inbounds %struct.afdata_t, ptr %10, i64 0, i32 3
  store i32 4, ptr %15, align 4, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  store float %1, ptr %8, align 4, !tbaa !68
  %16 = getelementptr inbounds float, ptr %8, i64 1
  store float %2, ptr %16, align 4, !tbaa !68
  store ptr %0, ptr %7, align 8, !tbaa !116
  %17 = getelementptr inbounds %struct.ReadEWAData, ptr %7, i64 0, i32 1
  store ptr %10, ptr %17, align 8, !tbaa !118
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !72
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !73
  %22 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !76
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  call void @BLI_ewa_filter(i32 noundef %19, i32 noundef %21, i8 noundef zeroext 1, i8 noundef zeroext %24, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull @ewa_read_pixel_cb, ptr noundef nonnull %7, ptr noundef nonnull %25) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  %26 = load float, ptr %25, align 4, !tbaa !68
  store float %26, ptr %5, align 4, !tbaa !68
  %27 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 2
  %28 = load float, ptr %27, align 8, !tbaa !68
  %29 = getelementptr inbounds float, ptr %5, i64 1
  store float %28, ptr %29, align 4, !tbaa !68
  %30 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %31 = load float, ptr %30, align 4, !tbaa !68
  %32 = getelementptr inbounds float, ptr %5, i64 2
  store float %31, ptr %32, align 4, !tbaa !68
  %33 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 4
  %34 = load float, ptr %33, align 8, !tbaa !68
  %35 = getelementptr inbounds float, ptr %5, i64 3
  store float %34, ptr %35, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal void @ewa_eval(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ReadEWAData, align 8
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  store float %2, ptr %7, align 4, !tbaa !68
  %8 = getelementptr inbounds float, ptr %7, i64 1
  store float %3, ptr %8, align 4, !tbaa !68
  store ptr %1, ptr %6, align 8, !tbaa !116
  %9 = getelementptr inbounds %struct.ReadEWAData, ptr %6, i64 0, i32 1
  store ptr %4, ptr %9, align 8, !tbaa !118
  %10 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !72
  %12 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !73
  %14 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !101
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !76
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 1
  %22 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 1
  call void @BLI_ewa_filter(i32 noundef %11, i32 noundef %13, i8 noundef zeroext %17, i8 noundef zeroext %20, ptr noundef nonnull %7, ptr noundef %4, ptr noundef nonnull %21, ptr noundef nonnull @ewa_read_pixel_cb, ptr noundef nonnull %6, ptr noundef nonnull %22) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @boxsampleclip(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #4 {
  %4 = load float, ptr %1, align 4, !tbaa !91
  %5 = tail call float @llvm.floor.f32(float %4)
  %6 = fptosi float %5 to i32
  %7 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !92
  %9 = tail call float @llvm.floor.f32(float %8)
  %10 = fptosi float %9 to i32
  %11 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 2
  %12 = load float, ptr %11, align 4, !tbaa !93
  %13 = tail call float @llvm.floor.f32(float %12)
  %14 = fptosi float %13 to i32
  %15 = getelementptr inbounds %struct.rctf, ptr %1, i64 0, i32 3
  %16 = load float, ptr %15, align 4, !tbaa !94
  %17 = tail call float @llvm.floor.f32(float %16)
  %18 = fptosi float %17 to i32
  %19 = tail call i32 @llvm.smax.i32(i32 %6, i32 0)
  %20 = tail call i32 @llvm.smax.i32(i32 %14, i32 0)
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !72
  %23 = icmp sgt i32 %22, %10
  %24 = add nsw i32 %22, -1
  %25 = select i1 %23, i32 %10, i32 %24
  %26 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !73
  %28 = icmp sgt i32 %27, %18
  %29 = add nsw i32 %27, -1
  %30 = select i1 %28, i32 %18, i32 %29
  %31 = icmp eq i32 %20, %30
  %32 = icmp eq i32 %19, %25
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  tail call fastcc void @ibuf_get_color(ptr noundef nonnull %35, ptr noundef %0, i32 noundef %19, i32 noundef %20)
  br label %262

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 4
  %38 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 3
  %39 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 2
  %40 = getelementptr inbounds %struct.TexResult, ptr %2, i64 0, i32 1
  %41 = icmp sgt i32 %20, %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  br i1 %41, label %248, label %42

42:                                               ; preds = %36
  %43 = icmp sgt i32 %19, %25
  %44 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %45 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %46 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %47 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %48 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %49 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %50 = zext nneg i32 %19 to i64
  %51 = zext nneg i32 %19 to i64
  %52 = zext i32 %25 to i64
  %53 = add i32 %25, 1
  %54 = zext nneg i32 %20 to i64
  %55 = sext i32 %22 to i64
  %56 = sext i32 %22 to i64
  %57 = zext nneg i32 %19 to i64
  %58 = zext nneg i32 %20 to i64
  %59 = zext i32 %30 to i64
  %60 = add i32 %30, 1
  %61 = zext i32 %60 to i64
  %62 = zext i32 %53 to i64
  br label %63

63:                                               ; preds = %42, %244
  %64 = phi i64 [ %54, %42 ], [ %246, %244 ]
  %65 = phi float [ 0.000000e+00, %42 ], [ %245, %244 ]
  br i1 %31, label %78, label %66

66:                                               ; preds = %63
  %67 = icmp eq i64 %64, %58
  %68 = trunc i64 %64 to i32
  %69 = sitofp i32 %68 to float
  %70 = fsub float %69, %12
  %71 = fadd float %70, 1.000000e+00
  %72 = select i1 %67, float %71, float 1.000000e+00
  %73 = icmp eq i64 %64, %59
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = trunc i64 %64 to i32
  %76 = sitofp i32 %75 to float
  %77 = fsub float %16, %76
  br label %78

78:                                               ; preds = %66, %74, %63
  %79 = phi float [ 1.000000e+00, %63 ], [ %77, %74 ], [ %72, %66 ]
  br i1 %32, label %87, label %80

80:                                               ; preds = %78
  br i1 %43, label %244, label %81

81:                                               ; preds = %80
  %82 = mul nsw i64 %64, %55
  %83 = load ptr, ptr %44, align 8, !tbaa !64
  %84 = icmp eq ptr %83, null
  %85 = load float, ptr %37, align 8, !tbaa !83
  %86 = load float, ptr %38, align 4, !tbaa !80
  br label %152

87:                                               ; preds = %78
  %88 = mul nsw i64 %64, %56
  %89 = add nsw i64 %88, %57
  %90 = load ptr, ptr %47, align 8, !tbaa !64
  %91 = icmp eq ptr %90, null
  br i1 %91, label %117, label %92

92:                                               ; preds = %87
  %93 = load i32, ptr %48, align 4, !tbaa !81
  switch i32 %93, label %114 [
    i32 4, label %94
    i32 3, label %106
  ]

94:                                               ; preds = %92
  %95 = trunc i64 %89 to i32
  %96 = shl nsw i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, ptr %90, i64 %97
  %99 = load float, ptr %98, align 4, !tbaa !68
  %100 = getelementptr inbounds float, ptr %98, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !68
  %102 = getelementptr inbounds float, ptr %98, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !68
  %104 = getelementptr inbounds float, ptr %98, i64 3
  %105 = load float, ptr %104, align 4, !tbaa !68
  br label %138

106:                                              ; preds = %92
  %107 = mul nsw i64 %89, 3
  %108 = getelementptr inbounds float, ptr %90, i64 %107
  %109 = load float, ptr %108, align 4, !tbaa !68
  %110 = getelementptr inbounds float, ptr %108, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !68
  %112 = getelementptr inbounds float, ptr %108, i64 2
  %113 = load float, ptr %112, align 4, !tbaa !68
  br label %138

114:                                              ; preds = %92
  %115 = getelementptr inbounds float, ptr %90, i64 %89
  %116 = load float, ptr %115, align 4, !tbaa !68
  br label %138

117:                                              ; preds = %87
  %118 = load ptr, ptr %49, align 8, !tbaa !61
  %119 = getelementptr inbounds i32, ptr %118, i64 %89
  %120 = load i8, ptr %119, align 1, !tbaa !82
  %121 = uitofp i8 %120 to float
  %122 = fmul float %121, 0x3F70101020000000
  %123 = getelementptr inbounds i8, ptr %119, i64 1
  %124 = load i8, ptr %123, align 1, !tbaa !82
  %125 = uitofp i8 %124 to float
  %126 = fmul float %125, 0x3F70101020000000
  %127 = getelementptr inbounds i8, ptr %119, i64 2
  %128 = load i8, ptr %127, align 1, !tbaa !82
  %129 = uitofp i8 %128 to float
  %130 = fmul float %129, 0x3F70101020000000
  %131 = getelementptr inbounds i8, ptr %119, i64 3
  %132 = load i8, ptr %131, align 1, !tbaa !82
  %133 = uitofp i8 %132 to float
  %134 = fmul float %133, 0x3F70101020000000
  %135 = fmul float %122, %134
  %136 = fmul float %126, %134
  %137 = fmul float %130, %134
  br label %138

138:                                              ; preds = %94, %106, %114, %117
  %139 = phi float [ %134, %117 ], [ %116, %114 ], [ 1.000000e+00, %106 ], [ %105, %94 ]
  %140 = phi float [ %137, %117 ], [ %116, %114 ], [ %113, %106 ], [ %103, %94 ]
  %141 = phi float [ %136, %117 ], [ %116, %114 ], [ %111, %106 ], [ %101, %94 ]
  %142 = phi float [ %135, %117 ], [ %116, %114 ], [ %109, %106 ], [ %99, %94 ]
  %143 = load float, ptr %37, align 8, !tbaa !83
  %144 = tail call float @llvm.fmuladd.f32(float %79, float %139, float %143)
  store float %144, ptr %37, align 8, !tbaa !83
  %145 = load float, ptr %40, align 4, !tbaa !78
  %146 = tail call float @llvm.fmuladd.f32(float %79, float %142, float %145)
  store float %146, ptr %40, align 4, !tbaa !78
  %147 = load float, ptr %39, align 8, !tbaa !79
  %148 = tail call float @llvm.fmuladd.f32(float %79, float %141, float %147)
  store float %148, ptr %39, align 8, !tbaa !79
  %149 = load float, ptr %38, align 4, !tbaa !80
  %150 = tail call float @llvm.fmuladd.f32(float %79, float %140, float %149)
  store float %150, ptr %38, align 4, !tbaa !80
  %151 = fadd float %65, %79
  br label %244

152:                                              ; preds = %81, %237
  %153 = phi float [ %86, %81 ], [ %239, %237 ]
  %154 = phi float [ %85, %81 ], [ %238, %237 ]
  %155 = phi i64 [ %50, %81 ], [ %242, %237 ]
  %156 = phi float [ %65, %81 ], [ %241, %237 ]
  %157 = icmp eq i64 %155, %51
  %158 = trunc i64 %155 to i32
  %159 = sitofp i32 %158 to float
  %160 = fsub float %159, %4
  %161 = fadd float %160, 1.000000e+00
  %162 = select i1 %157, float %161, float 1.000000e+00
  %163 = fmul float %79, %162
  %164 = icmp eq i64 %155, %52
  %165 = trunc i64 %155 to i32
  %166 = sitofp i32 %165 to float
  %167 = fsub float %8, %166
  %168 = select i1 %164, float %167, float 1.000000e+00
  %169 = fmul float %168, %163
  %170 = add nsw i64 %155, %82
  br i1 %84, label %196, label %171

171:                                              ; preds = %152
  %172 = load i32, ptr %45, align 4, !tbaa !81
  switch i32 %172, label %193 [
    i32 4, label %173
    i32 3, label %185
  ]

173:                                              ; preds = %171
  %174 = trunc i64 %170 to i32
  %175 = shl nsw i32 %174, 2
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, ptr %83, i64 %176
  %178 = load float, ptr %177, align 4, !tbaa !68
  %179 = getelementptr inbounds float, ptr %177, i64 1
  %180 = load float, ptr %179, align 4, !tbaa !68
  %181 = getelementptr inbounds float, ptr %177, i64 2
  %182 = load float, ptr %181, align 4, !tbaa !68
  %183 = getelementptr inbounds float, ptr %177, i64 3
  %184 = load float, ptr %183, align 4, !tbaa !68
  br label %217

185:                                              ; preds = %171
  %186 = mul nsw i64 %170, 3
  %187 = getelementptr inbounds float, ptr %83, i64 %186
  %188 = load float, ptr %187, align 4, !tbaa !68
  %189 = getelementptr inbounds float, ptr %187, i64 1
  %190 = load float, ptr %189, align 4, !tbaa !68
  %191 = getelementptr inbounds float, ptr %187, i64 2
  %192 = load float, ptr %191, align 4, !tbaa !68
  br label %217

193:                                              ; preds = %171
  %194 = getelementptr inbounds float, ptr %83, i64 %170
  %195 = load float, ptr %194, align 4, !tbaa !68
  br label %217

196:                                              ; preds = %152
  %197 = load ptr, ptr %46, align 8, !tbaa !61
  %198 = getelementptr inbounds i32, ptr %197, i64 %170
  %199 = load i8, ptr %198, align 1, !tbaa !82
  %200 = uitofp i8 %199 to float
  %201 = fmul float %200, 0x3F70101020000000
  %202 = getelementptr inbounds i8, ptr %198, i64 1
  %203 = load i8, ptr %202, align 1, !tbaa !82
  %204 = uitofp i8 %203 to float
  %205 = fmul float %204, 0x3F70101020000000
  %206 = getelementptr inbounds i8, ptr %198, i64 2
  %207 = load i8, ptr %206, align 1, !tbaa !82
  %208 = uitofp i8 %207 to float
  %209 = fmul float %208, 0x3F70101020000000
  %210 = getelementptr inbounds i8, ptr %198, i64 3
  %211 = load i8, ptr %210, align 1, !tbaa !82
  %212 = uitofp i8 %211 to float
  %213 = fmul float %212, 0x3F70101020000000
  %214 = fmul float %201, %213
  %215 = fmul float %205, %213
  %216 = fmul float %209, %213
  br label %217

217:                                              ; preds = %173, %185, %193, %196
  %218 = phi float [ %213, %196 ], [ %195, %193 ], [ 1.000000e+00, %185 ], [ %184, %173 ]
  %219 = phi float [ %216, %196 ], [ %195, %193 ], [ %192, %185 ], [ %182, %173 ]
  %220 = phi float [ %215, %196 ], [ %195, %193 ], [ %190, %185 ], [ %180, %173 ]
  %221 = phi float [ %214, %196 ], [ %195, %193 ], [ %188, %185 ], [ %178, %173 ]
  %222 = fcmp oeq float %169, 1.000000e+00
  br i1 %222, label %223, label %230

223:                                              ; preds = %217
  %224 = fadd float %218, %154
  store float %224, ptr %37, align 8, !tbaa !83
  %225 = load float, ptr %40, align 4, !tbaa !78
  %226 = fadd float %221, %225
  store float %226, ptr %40, align 4, !tbaa !78
  %227 = load float, ptr %39, align 8, !tbaa !79
  %228 = fadd float %220, %227
  store float %228, ptr %39, align 8, !tbaa !79
  %229 = fadd float %219, %153
  br label %237

230:                                              ; preds = %217
  %231 = tail call float @llvm.fmuladd.f32(float %169, float %218, float %154)
  store float %231, ptr %37, align 8, !tbaa !83
  %232 = load float, ptr %40, align 4, !tbaa !78
  %233 = tail call float @llvm.fmuladd.f32(float %169, float %221, float %232)
  store float %233, ptr %40, align 4, !tbaa !78
  %234 = load float, ptr %39, align 8, !tbaa !79
  %235 = tail call float @llvm.fmuladd.f32(float %169, float %220, float %234)
  store float %235, ptr %39, align 8, !tbaa !79
  %236 = tail call float @llvm.fmuladd.f32(float %169, float %219, float %153)
  br label %237

237:                                              ; preds = %223, %230
  %238 = phi float [ %224, %223 ], [ %231, %230 ]
  %239 = phi float [ %229, %223 ], [ %236, %230 ]
  %240 = phi float [ 1.000000e+00, %223 ], [ %169, %230 ]
  store float %239, ptr %38, align 4, !tbaa !80
  %241 = fadd float %156, %240
  %242 = add nuw nsw i64 %155, 1
  %243 = icmp eq i64 %242, %62
  br i1 %243, label %244, label %152, !llvm.loop !119

244:                                              ; preds = %237, %80, %138
  %245 = phi float [ %151, %138 ], [ %65, %80 ], [ %241, %237 ]
  %246 = add nuw nsw i64 %64, 1
  %247 = icmp eq i64 %246, %61
  br i1 %247, label %248, label %63, !llvm.loop !120

248:                                              ; preds = %244, %36
  %249 = phi float [ 0.000000e+00, %36 ], [ %245, %244 ]
  %250 = fcmp une float %249, 0.000000e+00
  br i1 %250, label %251, label %261

251:                                              ; preds = %248
  %252 = fdiv float 1.000000e+00, %249
  %253 = load float, ptr %38, align 4, !tbaa !80
  %254 = fmul float %252, %253
  store float %254, ptr %38, align 4, !tbaa !80
  %255 = load float, ptr %39, align 8, !tbaa !79
  %256 = fmul float %252, %255
  store float %256, ptr %39, align 8, !tbaa !79
  %257 = load float, ptr %40, align 4, !tbaa !78
  %258 = fmul float %252, %257
  store float %258, ptr %40, align 4, !tbaa !78
  %259 = load float, ptr %37, align 8, !tbaa !83
  %260 = fmul float %252, %259
  store float %260, ptr %37, align 8, !tbaa !83
  br label %262

261:                                              ; preds = %248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  br label %262

262:                                              ; preds = %251, %261, %34
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal void @feline_eval(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #7 {
  %6 = alloca [4 x float], align 16
  %7 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !104
  %9 = add nsw i32 %8, -1
  %10 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 4
  %11 = load float, ptr %10, align 4, !tbaa !106
  %12 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 5
  %13 = load float, ptr %12, align 4, !tbaa !107
  %14 = fcmp oeq float %11, %13
  %15 = select i1 %14, float 0.000000e+00, float %13
  %16 = fsub float %11, %15
  %17 = fmul float %16, 2.000000e+00
  %18 = icmp eq i32 %9, 0
  %19 = sitofp i32 %9 to float
  %20 = select i1 %18, float 1.000000e+00, float %19
  %21 = fdiv float %17, %20
  br i1 %18, label %27, label %22

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 6
  %24 = load float, ptr %23, align 4, !tbaa !108
  %25 = tail call float @cosf(float noundef %24) #12
  %26 = fmul float %21, %25
  br label %27

27:                                               ; preds = %5, %22
  %28 = phi float [ %26, %22 ], [ 0.000000e+00, %5 ]
  br i1 %18, label %34, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 6
  %31 = load float, ptr %30, align 4, !tbaa !108
  %32 = tail call float @sinf(float noundef %31) #12
  %33 = fmul float %21, %32
  br label %34

34:                                               ; preds = %27, %29
  %35 = phi float [ %33, %29 ], [ 0.000000e+00, %27 ]
  %36 = fmul float %35, %35
  %37 = tail call float @llvm.fmuladd.f32(float %28, float %28, float %36)
  %38 = fmul float %37, 6.400000e+01
  %39 = load float, ptr %10, align 4, !tbaa !106
  %40 = fmul float %39, %39
  %41 = fdiv float %38, %40
  %42 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 8
  %43 = load float, ptr %42, align 4, !tbaa !109
  %44 = fmul float %28, %43
  %45 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 9
  %46 = load float, ptr %45, align 4, !tbaa !110
  %47 = fmul float %35, %46
  %48 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 4
  %49 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 2
  %50 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 3
  %51 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 1
  %52 = sub nsw i32 1, %8
  %53 = icmp slt i32 %52, %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %51, i8 0, i64 16, i1 false)
  br i1 %53, label %54, label %108

54:                                               ; preds = %34
  %55 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !72
  %57 = sitofp i32 %56 to float
  %58 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !73
  %60 = sitofp i32 %59 to float
  %61 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !101
  %63 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !103
  %65 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %66 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %67 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 5
  %68 = load i32, ptr %67, align 4, !tbaa !76
  %69 = icmp eq i32 %68, 0
  %70 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %71 = load float, ptr %51, align 4, !tbaa !78
  %72 = load float, ptr %49, align 8, !tbaa !79
  %73 = load float, ptr %50, align 4, !tbaa !80
  %74 = load float, ptr %48, align 8, !tbaa !83
  br label %75

75:                                               ; preds = %54, %75
  %76 = phi float [ %74, %54 ], [ %104, %75 ]
  %77 = phi float [ %73, %54 ], [ %100, %75 ]
  %78 = phi float [ %72, %54 ], [ %98, %75 ]
  %79 = phi float [ %71, %54 ], [ %96, %75 ]
  %80 = phi float [ 0.000000e+00, %54 ], [ %105, %75 ]
  %81 = phi i32 [ %52, %54 ], [ %106, %75 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  %82 = sitofp i32 %81 to float
  %83 = fmul float %82, 5.000000e-01
  %84 = tail call float @llvm.fmuladd.f32(float %83, float %44, float %2)
  %85 = tail call float @llvm.fmuladd.f32(float %83, float %47, float %3)
  %86 = mul nsw i32 %81, %81
  %87 = sitofp i32 %86 to float
  %88 = fmul float %41, %87
  %89 = fptosi float %88 to i32
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [256 x float], ptr @EWA_WTS, i64 0, i64 %90
  %92 = load float, ptr %91, align 4, !tbaa !68
  %93 = fmul float %84, %57
  %94 = fmul float %85, %60
  call fastcc void @ibuf_get_color_clip_bilerp(ptr noundef nonnull %6, ptr noundef %1, float noundef %93, float noundef %94, i32 noundef %62, i32 noundef %64)
  %95 = load float, ptr %6, align 16, !tbaa !68
  %96 = tail call float @llvm.fmuladd.f32(float %95, float %92, float %79)
  store float %96, ptr %51, align 4, !tbaa !78
  %97 = load float, ptr %65, align 4, !tbaa !68
  %98 = tail call float @llvm.fmuladd.f32(float %97, float %92, float %78)
  store float %98, ptr %49, align 8, !tbaa !79
  %99 = load float, ptr %66, align 8, !tbaa !68
  %100 = tail call float @llvm.fmuladd.f32(float %99, float %92, float %77)
  store float %100, ptr %50, align 4, !tbaa !80
  %101 = load float, ptr %70, align 4
  %102 = fmul float %92, %101
  %103 = select i1 %69, float 0.000000e+00, float %102
  %104 = fadd float %76, %103
  store float %104, ptr %48, align 8, !tbaa !83
  %105 = fadd float %80, %92
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  %106 = add nsw i32 %81, 2
  %107 = icmp slt i32 %106, %8
  br i1 %107, label %75, label %108, !llvm.loop !121

108:                                              ; preds = %75, %34
  %109 = phi float [ 0.000000e+00, %34 ], [ %105, %75 ]
  %110 = fdiv float 1.000000e+00, %109
  %111 = load float, ptr %51, align 4, !tbaa !78
  %112 = fmul float %110, %111
  store float %112, ptr %51, align 4, !tbaa !78
  %113 = load float, ptr %49, align 8, !tbaa !79
  %114 = fmul float %110, %113
  store float %114, ptr %49, align 8, !tbaa !79
  %115 = load float, ptr %50, align 4, !tbaa !80
  %116 = fmul float %110, %115
  store float %116, ptr %50, align 4, !tbaa !80
  %117 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 5
  %118 = load i32, ptr %117, align 4, !tbaa !76
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %108
  %121 = load float, ptr %48, align 8, !tbaa !83
  %122 = fmul float %110, %121
  br label %123

123:                                              ; preds = %108, %120
  %124 = phi float [ %122, %120 ], [ 1.000000e+00, %108 ]
  store float %124, ptr %48, align 8, !tbaa !83
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal void @area_sample(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #7 {
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  %7 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !72
  %9 = sitofp i32 %8 to float
  %10 = load float, ptr %4, align 4, !tbaa !68
  %11 = fmul float %10, %9
  %12 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !73
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !68
  %17 = fmul float %16, %14
  %18 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 1
  %19 = load float, ptr %18, align 4, !tbaa !68
  %20 = fmul float %19, %9
  %21 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 1, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !68
  %23 = fmul float %22, %14
  %24 = fmul float %17, %17
  %25 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %24)
  %26 = tail call float @sqrtf(float noundef %25) #12
  %27 = tail call float @llvm.fmuladd.f32(float %26, float 5.000000e-01, float 5.000000e-01)
  %28 = fptosi float %27 to i32
  %29 = fmul float %23, %23
  %30 = tail call float @llvm.fmuladd.f32(float %20, float %20, float %29)
  %31 = tail call float @sqrtf(float noundef %30) #12
  %32 = tail call float @llvm.fmuladd.f32(float %31, float 5.000000e-01, float 5.000000e-01)
  %33 = fptosi float %32 to i32
  %34 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !101
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 4, i32 2
  %38 = icmp sgt i32 %37, %28
  br i1 %38, label %43, label %39

39:                                               ; preds = %5
  %40 = load i32, ptr %7, align 8, !tbaa !72
  %41 = shl nsw i32 %40, 1
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 %28)
  br label %43

43:                                               ; preds = %39, %5
  %44 = phi i32 [ %37, %5 ], [ %42, %39 ]
  %45 = icmp sgt i32 %37, %33
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %12, align 4, !tbaa !73
  %48 = shl nsw i32 %47, 1
  %49 = tail call i32 @llvm.smin.i32(i32 %48, i32 %33)
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i32 [ %37, %43 ], [ %49, %46 ]
  %52 = sitofp i32 %44 to float
  %53 = fdiv float 1.000000e+00, %52
  %54 = sitofp i32 %51 to float
  %55 = fdiv float 1.000000e+00, %54
  %56 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 4
  %57 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 3
  %58 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 2
  %59 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 1
  %60 = icmp sgt i32 %51, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  br i1 %60, label %61, label %120

61:                                               ; preds = %50
  %62 = icmp sgt i32 %44, 0
  %63 = getelementptr inbounds %struct.afdata_t, ptr %4, i64 0, i32 3
  %64 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %65 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %66 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 5
  %67 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  br label %68

68:                                               ; preds = %61, %117
  %69 = phi i32 [ 0, %61 ], [ %118, %117 ]
  br i1 %62, label %70, label %117

70:                                               ; preds = %68
  %71 = and i32 %69, 1
  %72 = sitofp i32 %71 to float
  %73 = fadd float %72, 5.000000e-01
  %74 = sitofp i32 %69 to float
  %75 = load i32, ptr %7, align 8, !tbaa !72
  %76 = sitofp i32 %75 to float
  %77 = load i32, ptr %12, align 4, !tbaa !73
  %78 = sitofp i32 %77 to float
  %79 = load i32, ptr %63, align 4, !tbaa !103
  %80 = load i32, ptr %66, align 4, !tbaa !76
  %81 = icmp eq i32 %80, 0
  br label %82

82:                                               ; preds = %70, %82
  %83 = phi i32 [ 0, %70 ], [ %115, %82 ]
  %84 = sitofp i32 %83 to float
  %85 = tail call float @llvm.fmuladd.f32(float %73, float 5.000000e-01, float %84)
  %86 = tail call float @llvm.fmuladd.f32(float %85, float %53, float -5.000000e-01)
  %87 = and i32 %83, 1
  %88 = sitofp i32 %87 to float
  %89 = fadd float %88, 5.000000e-01
  %90 = tail call float @llvm.fmuladd.f32(float %89, float 5.000000e-01, float %74)
  %91 = tail call float @llvm.fmuladd.f32(float %90, float %55, float -5.000000e-01)
  %92 = load float, ptr %4, align 4, !tbaa !68
  %93 = tail call float @llvm.fmuladd.f32(float %86, float %92, float %2)
  %94 = load float, ptr %18, align 4, !tbaa !68
  %95 = tail call float @llvm.fmuladd.f32(float %91, float %94, float %93)
  %96 = load float, ptr %15, align 4, !tbaa !68
  %97 = tail call float @llvm.fmuladd.f32(float %86, float %96, float %3)
  %98 = load float, ptr %21, align 4, !tbaa !68
  %99 = tail call float @llvm.fmuladd.f32(float %91, float %98, float %97)
  %100 = fmul float %95, %76
  %101 = fmul float %99, %78
  call fastcc void @ibuf_get_color_clip_bilerp(ptr noundef nonnull %6, ptr noundef %1, float noundef %100, float noundef %101, i32 noundef %35, i32 noundef %79)
  %102 = load float, ptr %6, align 16, !tbaa !68
  %103 = load float, ptr %59, align 4, !tbaa !78
  %104 = fadd float %102, %103
  store float %104, ptr %59, align 4, !tbaa !78
  %105 = load float, ptr %64, align 4, !tbaa !68
  %106 = load float, ptr %58, align 8, !tbaa !79
  %107 = fadd float %105, %106
  store float %107, ptr %58, align 8, !tbaa !79
  %108 = load float, ptr %65, align 8, !tbaa !68
  %109 = load float, ptr %57, align 4, !tbaa !80
  %110 = fadd float %108, %109
  store float %110, ptr %57, align 4, !tbaa !80
  %111 = load float, ptr %67, align 4
  %112 = select i1 %81, float 0.000000e+00, float %111
  %113 = load float, ptr %56, align 8, !tbaa !83
  %114 = fadd float %113, %112
  store float %114, ptr %56, align 8, !tbaa !83
  %115 = add nuw nsw i32 %83, 1
  %116 = icmp eq i32 %115, %44
  br i1 %116, label %117, label %82, !llvm.loop !122

117:                                              ; preds = %82, %68
  %118 = add nuw nsw i32 %69, 1
  %119 = icmp eq i32 %118, %51
  br i1 %119, label %120, label %68, !llvm.loop !123

120:                                              ; preds = %117, %50
  %121 = fmul float %53, %55
  %122 = load float, ptr %59, align 4, !tbaa !78
  %123 = fmul float %121, %122
  store float %123, ptr %59, align 4, !tbaa !78
  %124 = load float, ptr %58, align 8, !tbaa !79
  %125 = fmul float %121, %124
  store float %125, ptr %58, align 8, !tbaa !79
  %126 = load float, ptr %57, align 4, !tbaa !80
  %127 = fmul float %121, %126
  store float %127, ptr %57, align 4, !tbaa !80
  %128 = getelementptr inbounds %struct.TexResult, ptr %0, i64 0, i32 5
  %129 = load i32, ptr %128, align 4, !tbaa !76
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %120
  %132 = load float, ptr %56, align 8, !tbaa !83
  %133 = fmul float %121, %132
  br label %134

134:                                              ; preds = %120, %131
  %135 = phi float [ %133, %131 ], [ 1.000000e+00, %120 ]
  store float %135, ptr %56, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

declare void @BLI_ewa_imp2radangle(float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @logf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ibuf_get_color_clip_bilerp(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2, float noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #5 {
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %76, label %12

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #12
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
  call fastcc void @ibuf_get_color_clip(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %25, i32 noundef %26, i32 noundef %5)
  call fastcc void @ibuf_get_color_clip(ptr noundef nonnull %9, ptr noundef %1, i32 noundef %27, i32 noundef %26, i32 noundef %5)
  call fastcc void @ibuf_get_color_clip(ptr noundef nonnull %8, ptr noundef %1, i32 noundef %25, i32 noundef %28, i32 noundef %5)
  call fastcc void @ibuf_get_color_clip(ptr noundef nonnull %10, ptr noundef %1, i32 noundef %27, i32 noundef %28, i32 noundef %5)
  %29 = load float, ptr %7, align 16, !tbaa !68
  %30 = load float, ptr %9, align 16, !tbaa !68
  %31 = fmul float %22, %30
  %32 = tail call float @llvm.fmuladd.f32(float %21, float %29, float %31)
  %33 = load float, ptr %8, align 16, !tbaa !68
  %34 = tail call float @llvm.fmuladd.f32(float %23, float %33, float %32)
  %35 = load float, ptr %10, align 16, !tbaa !68
  %36 = tail call float @llvm.fmuladd.f32(float %24, float %35, float %34)
  store float %36, ptr %0, align 4, !tbaa !68
  %37 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !68
  %39 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !68
  %41 = fmul float %22, %40
  %42 = tail call float @llvm.fmuladd.f32(float %21, float %38, float %41)
  %43 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !68
  %45 = tail call float @llvm.fmuladd.f32(float %23, float %44, float %42)
  %46 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !68
  %48 = tail call float @llvm.fmuladd.f32(float %24, float %47, float %45)
  %49 = getelementptr inbounds float, ptr %0, i64 1
  store float %48, ptr %49, align 4, !tbaa !68
  %50 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %51 = load float, ptr %50, align 8, !tbaa !68
  %52 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 2
  %53 = load float, ptr %52, align 8, !tbaa !68
  %54 = fmul float %22, %53
  %55 = tail call float @llvm.fmuladd.f32(float %21, float %51, float %54)
  %56 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  %57 = load float, ptr %56, align 8, !tbaa !68
  %58 = tail call float @llvm.fmuladd.f32(float %23, float %57, float %55)
  %59 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 2
  %60 = load float, ptr %59, align 8, !tbaa !68
  %61 = tail call float @llvm.fmuladd.f32(float %24, float %60, float %58)
  %62 = getelementptr inbounds float, ptr %0, i64 2
  store float %61, ptr %62, align 4, !tbaa !68
  %63 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 3
  %64 = load float, ptr %63, align 4, !tbaa !68
  %65 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 3
  %66 = load float, ptr %65, align 4, !tbaa !68
  %67 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %68 = load float, ptr %67, align 4, !tbaa !68
  %69 = getelementptr inbounds [4 x float], ptr %9, i64 0, i64 3
  %70 = load float, ptr %69, align 4, !tbaa !68
  %71 = fmul float %22, %70
  %72 = tail call float @llvm.fmuladd.f32(float %21, float %68, float %71)
  %73 = tail call float @llvm.fmuladd.f32(float %23, float %66, float %72)
  %74 = tail call float @llvm.fmuladd.f32(float %24, float %64, float %73)
  %75 = getelementptr inbounds float, ptr %0, i64 3
  store float %74, ptr %75, align 4, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  br label %79

76:                                               ; preds = %6
  %77 = fptosi float %2 to i32
  %78 = fptosi float %3 to i32
  tail call fastcc void @ibuf_get_color_clip(ptr noundef %0, ptr noundef %1, i32 noundef %77, i32 noundef %78, i32 noundef %5)
  br label %79

79:                                               ; preds = %76, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ibuf_get_color_clip(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #5 {
  switch i32 %4, label %72 [
    i32 1, label %6
    i32 2, label %24
    i32 4, label %42
    i32 3, label %59
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !72
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
  %19 = load i32, ptr %18, align 4, !tbaa !73
  %20 = srem i32 %3, %19
  %21 = icmp slt i32 %20, 0
  %22 = select i1 %21, i32 %19, i32 0
  %23 = add nsw i32 %22, %20
  br label %85

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !72
  %27 = srem i32 %2, %26
  %28 = icmp slt i32 %27, 0
  %29 = select i1 %28, i32 %26, i32 0
  %30 = add nsw i32 %29, %27
  %31 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !73
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
  %46 = load i32, ptr %45, align 8, !tbaa !72
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
  %55 = load i32, ptr %54, align 4, !tbaa !73
  %56 = icmp sgt i32 %55, %3
  %57 = add nsw i32 %55, -1
  %58 = select i1 %56, i32 %3, i32 %57
  br label %85

59:                                               ; preds = %5
  %60 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !72
  %62 = srem i32 %2, %61
  %63 = icmp slt i32 %62, 0
  %64 = select i1 %63, i32 %61, i32 0
  %65 = add nsw i32 %64, %62
  %66 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %67 = load i32, ptr %66, align 4, !tbaa !73
  %68 = srem i32 %3, %67
  %69 = icmp slt i32 %68, 0
  %70 = select i1 %69, i32 %67, i32 0
  %71 = add nsw i32 %70, %68
  br label %85

72:                                               ; preds = %5
  %73 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %74 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !72
  %76 = icmp slt i32 %73, %75
  %77 = add nsw i32 %75, -1
  %78 = select i1 %76, i32 %73, i32 %77
  %79 = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  %80 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %81 = load i32, ptr %80, align 4, !tbaa !73
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
  br i1 %90, label %121, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !72
  %94 = mul nsw i32 %93, %86
  %95 = add nsw i32 %94, %87
  %96 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 5
  %97 = load i32, ptr %96, align 4, !tbaa !81
  %98 = mul nsw i32 %95, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, ptr %89, i64 %99
  %101 = icmp eq i32 %97, 1
  %102 = load float, ptr %100, align 4, !tbaa !68
  br i1 %101, label %103, label %107

103:                                              ; preds = %91
  %104 = getelementptr inbounds float, ptr %0, i64 3
  store float %102, ptr %104, align 4, !tbaa !68
  %105 = getelementptr inbounds float, ptr %0, i64 2
  store float %102, ptr %105, align 4, !tbaa !68
  %106 = getelementptr inbounds float, ptr %0, i64 1
  store float %102, ptr %106, align 4, !tbaa !68
  store float %102, ptr %0, align 4, !tbaa !68
  br label %153

107:                                              ; preds = %91
  store float %102, ptr %0, align 4, !tbaa !68
  %108 = getelementptr inbounds float, ptr %100, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !68
  %110 = getelementptr inbounds float, ptr %0, i64 1
  store float %109, ptr %110, align 4, !tbaa !68
  %111 = getelementptr inbounds float, ptr %100, i64 2
  %112 = load float, ptr %111, align 4, !tbaa !68
  %113 = getelementptr inbounds float, ptr %0, i64 2
  store float %112, ptr %113, align 4, !tbaa !68
  %114 = icmp eq i32 %97, 4
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = getelementptr inbounds float, ptr %100, i64 3
  %117 = load float, ptr %116, align 4, !tbaa !68
  br label %118

118:                                              ; preds = %115, %107
  %119 = phi float [ %117, %115 ], [ 1.000000e+00, %107 ]
  %120 = getelementptr inbounds float, ptr %0, i64 3
  store float %119, ptr %120, align 4, !tbaa !68
  br label %153

121:                                              ; preds = %85
  %122 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %123 = load ptr, ptr %122, align 8, !tbaa !61
  %124 = sext i32 %87 to i64
  %125 = getelementptr inbounds i32, ptr %123, i64 %124
  %126 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %127 = load i32, ptr %126, align 8, !tbaa !72
  %128 = mul nsw i32 %127, %86
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, ptr %125, i64 %129
  %131 = getelementptr inbounds i8, ptr %130, i64 3
  %132 = load i8, ptr %131, align 1, !tbaa !82
  %133 = uitofp i8 %132 to float
  %134 = fmul float %133, 0x3F70101020000000
  %135 = fmul float %134, 0x3F70101020000000
  %136 = load i8, ptr %130, align 1, !tbaa !82
  %137 = uitofp i8 %136 to float
  %138 = fmul float %135, %137
  store float %138, ptr %0, align 4, !tbaa !68
  %139 = getelementptr inbounds i8, ptr %130, i64 1
  %140 = load i8, ptr %139, align 1, !tbaa !82
  %141 = uitofp i8 %140 to float
  %142 = fmul float %135, %141
  %143 = getelementptr inbounds float, ptr %0, i64 1
  store float %142, ptr %143, align 4, !tbaa !68
  %144 = getelementptr inbounds i8, ptr %130, i64 2
  %145 = load i8, ptr %144, align 1, !tbaa !82
  %146 = uitofp i8 %145 to float
  %147 = fmul float %135, %146
  %148 = getelementptr inbounds float, ptr %0, i64 2
  store float %147, ptr %148, align 4, !tbaa !68
  %149 = load i8, ptr %131, align 1, !tbaa !82
  %150 = uitofp i8 %149 to float
  %151 = fmul float %150, 0x3F70101020000000
  %152 = getelementptr inbounds float, ptr %0, i64 3
  store float %151, ptr %152, align 4, !tbaa !68
  br label %153

153:                                              ; preds = %103, %118, %121
  ret void
}

declare void @BLI_lock_thread(i32 noundef) local_unnamed_addr #2

declare void @IMB_remakemipmap(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_unlock_thread(i32 noundef) local_unnamed_addr #2

declare void @IMB_makemipmap(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_ewa_filter(i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @ewa_read_pixel_cb(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #9 {
  %5 = load ptr, ptr %0, align 8, !tbaa !116
  %6 = getelementptr inbounds %struct.ReadEWAData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = getelementptr inbounds %struct.afdata_t, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !103
  tail call fastcc void @ibuf_get_color_clip(ptr noundef %3, ptr noundef %5, i32 noundef %1, i32 noundef %2, i32 noundef %9)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nounwind }

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
!72 = !{!62, !39, i64 16}
!73 = !{!62, !39, i64 20}
!74 = !{!42, !43, i64 96}
!75 = !{!62, !39, i64 32}
!76 = !{!35, !39, i64 20}
!77 = !{!66, !36, i64 160}
!78 = !{!35, !36, i64 4}
!79 = !{!35, !36, i64 8}
!80 = !{!35, !36, i64 12}
!81 = !{!62, !39, i64 28}
!82 = !{!37, !37, i64 0}
!83 = !{!35, !36, i64 16}
!84 = !{!35, !36, i64 0}
!85 = !{!66, !36, i64 148}
!86 = !{!66, !36, i64 140}
!87 = !{!66, !36, i64 136}
!88 = !{!66, !36, i64 152}
!89 = !{!66, !36, i64 156}
!90 = !{!66, !36, i64 144}
!91 = !{!46, !36, i64 0}
!92 = !{!46, !36, i64 4}
!93 = !{!46, !36, i64 8}
!94 = !{!46, !36, i64 12}
!95 = distinct !{!95, !96, !97}
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = distinct !{!98, !96, !97}
!99 = !{!66, !39, i64 252}
!100 = !{!42, !39, i64 1624}
!101 = !{!102, !39, i64 16}
!102 = !{!"afdata_t", !37, i64 0, !37, i64 8, !39, i64 16, !39, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !39, i64 36, !36, i64 40, !36, i64 44}
!103 = !{!102, !39, i64 20}
!104 = !{!102, !39, i64 36}
!105 = !{!66, !39, i64 256}
!106 = !{!102, !36, i64 24}
!107 = !{!102, !36, i64 28}
!108 = !{!102, !36, i64 32}
!109 = !{!102, !36, i64 40}
!110 = !{!102, !36, i64 44}
!111 = !{!40, !40, i64 0}
!112 = distinct !{!112, !96, !97}
!113 = !{ptr @area_sample, ptr @ewa_eval, ptr @feline_eval}
!114 = distinct !{!114, !96, !97}
!115 = !{!62, !39, i64 292}
!116 = !{!117, !40, i64 0}
!117 = !{!"ReadEWAData", !40, i64 0, !40, i64 8}
!118 = !{!117, !40, i64 8}
!119 = distinct !{!119, !96, !97}
!120 = distinct !{!120, !96, !97}
!121 = distinct !{!121, !96, !97}
!122 = distinct !{!122, !96, !97}
!123 = distinct !{!123, !96, !97}
