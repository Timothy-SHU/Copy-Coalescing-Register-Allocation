; ModuleID = 'blender/source/blender/imbuf/intern/filter.c'
source_filename = "blender/source/blender/imbuf/intern/filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_filtery(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %241

7:                                                ; preds = %1
  %8 = shl i32 %3, 2
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %14 = icmp sgt i32 %5, 1
  %15 = sext i32 %8 to i64
  %16 = sext i32 %8 to i64
  %17 = sext i32 %8 to i64
  %18 = sext i32 %8 to i64
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %20 = icmp sgt i32 %5, 1
  %21 = sext i32 %8 to i64
  %22 = sext i32 %8 to i64
  %23 = sext i32 %8 to i64
  %24 = sext i32 %8 to i64
  br label %25

25:                                               ; preds = %7, %237
  %26 = phi ptr [ %12, %7 ], [ %153, %237 ]
  %27 = phi ptr [ %10, %7 ], [ %238, %237 ]
  %28 = phi i32 [ %3, %7 ], [ %239, %237 ]
  %29 = icmp eq ptr %26, null
  br i1 %29, label %152, label %30

30:                                               ; preds = %25
  %31 = load i8, ptr %13, align 8, !tbaa !46
  %32 = icmp ugt i8 %31, 24
  %33 = select i1 %32, i1 %14, i1 false
  br i1 %33, label %34, label %62

34:                                               ; preds = %30
  %35 = load i8, ptr %26, align 1, !tbaa !47
  %36 = zext i8 %35 to i32
  br label %37

37:                                               ; preds = %34, %37
  %38 = phi ptr [ %26, %34 ], [ %44, %37 ]
  %39 = phi i32 [ 2, %34 ], [ %51, %37 ]
  %40 = phi i32 [ %36, %34 ], [ %46, %37 ]
  %41 = phi i32 [ %36, %34 ], [ %40, %37 ]
  %42 = phi i32 [ %5, %34 ], [ %43, %37 ]
  %43 = add nsw i32 %42, -1
  %44 = getelementptr inbounds i8, ptr %38, i64 %15
  %45 = load i8, ptr %44, align 1, !tbaa !47
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %40, 1
  %48 = add nuw nsw i32 %47, %41
  %49 = add nuw nsw i32 %48, %39
  %50 = add nuw nsw i32 %49, %46
  %51 = and i32 %50, 3
  %52 = lshr i32 %50, 2
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %38, align 1, !tbaa !47
  %54 = icmp sgt i32 %42, 2
  br i1 %54, label %37, label %55, !llvm.loop !48

55:                                               ; preds = %37
  %56 = shl nuw nsw i32 %46, 1
  %57 = add nuw nsw i32 %40, %46
  %58 = add nuw nsw i32 %57, %56
  %59 = add nuw nsw i32 %58, %51
  %60 = lshr i32 %59, 2
  %61 = trunc i32 %60 to i8
  store i8 %61, ptr %44, align 1, !tbaa !47
  br label %62

62:                                               ; preds = %55, %30
  br i1 %14, label %63, label %150

63:                                               ; preds = %62
  %64 = getelementptr inbounds i8, ptr %26, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !47
  %66 = zext i8 %65 to i32
  br label %67

67:                                               ; preds = %63, %67
  %68 = phi ptr [ %64, %63 ], [ %74, %67 ]
  %69 = phi i32 [ 2, %63 ], [ %81, %67 ]
  %70 = phi i32 [ %66, %63 ], [ %76, %67 ]
  %71 = phi i32 [ %66, %63 ], [ %70, %67 ]
  %72 = phi i32 [ %5, %63 ], [ %73, %67 ]
  %73 = add nsw i32 %72, -1
  %74 = getelementptr inbounds i8, ptr %68, i64 %16
  %75 = load i8, ptr %74, align 1, !tbaa !47
  %76 = zext i8 %75 to i32
  %77 = shl nuw nsw i32 %70, 1
  %78 = add nuw nsw i32 %77, %71
  %79 = add nuw nsw i32 %78, %69
  %80 = add nuw nsw i32 %79, %76
  %81 = and i32 %80, 3
  %82 = lshr i32 %80, 2
  %83 = trunc i32 %82 to i8
  store i8 %83, ptr %68, align 1, !tbaa !47
  %84 = icmp sgt i32 %72, 2
  br i1 %84, label %67, label %85, !llvm.loop !48

85:                                               ; preds = %67
  %86 = shl nuw nsw i32 %76, 1
  %87 = add nuw nsw i32 %70, %76
  %88 = add nuw nsw i32 %87, %86
  %89 = add nuw nsw i32 %88, %81
  %90 = lshr i32 %89, 2
  %91 = trunc i32 %90 to i8
  store i8 %91, ptr %74, align 1, !tbaa !47
  br i1 %14, label %92, label %150

92:                                               ; preds = %85
  %93 = getelementptr inbounds i8, ptr %26, i64 2
  %94 = load i8, ptr %93, align 1, !tbaa !47
  %95 = zext i8 %94 to i32
  br label %96

96:                                               ; preds = %92, %96
  %97 = phi ptr [ %93, %92 ], [ %103, %96 ]
  %98 = phi i32 [ 2, %92 ], [ %110, %96 ]
  %99 = phi i32 [ %95, %92 ], [ %105, %96 ]
  %100 = phi i32 [ %95, %92 ], [ %99, %96 ]
  %101 = phi i32 [ %5, %92 ], [ %102, %96 ]
  %102 = add nsw i32 %101, -1
  %103 = getelementptr inbounds i8, ptr %97, i64 %17
  %104 = load i8, ptr %103, align 1, !tbaa !47
  %105 = zext i8 %104 to i32
  %106 = shl nuw nsw i32 %99, 1
  %107 = add nuw nsw i32 %106, %100
  %108 = add nuw nsw i32 %107, %98
  %109 = add nuw nsw i32 %108, %105
  %110 = and i32 %109, 3
  %111 = lshr i32 %109, 2
  %112 = trunc i32 %111 to i8
  store i8 %112, ptr %97, align 1, !tbaa !47
  %113 = icmp sgt i32 %101, 2
  br i1 %113, label %96, label %114, !llvm.loop !48

114:                                              ; preds = %96
  %115 = shl nuw nsw i32 %105, 1
  %116 = add nuw nsw i32 %99, %105
  %117 = add nuw nsw i32 %116, %115
  %118 = add nuw nsw i32 %117, %110
  %119 = lshr i32 %118, 2
  %120 = trunc i32 %119 to i8
  store i8 %120, ptr %103, align 1, !tbaa !47
  br i1 %14, label %121, label %150

121:                                              ; preds = %114
  %122 = getelementptr inbounds i8, ptr %26, i64 3
  %123 = load i8, ptr %122, align 1, !tbaa !47
  %124 = zext i8 %123 to i32
  br label %125

125:                                              ; preds = %121, %125
  %126 = phi ptr [ %122, %121 ], [ %132, %125 ]
  %127 = phi i32 [ 2, %121 ], [ %139, %125 ]
  %128 = phi i32 [ %124, %121 ], [ %134, %125 ]
  %129 = phi i32 [ %124, %121 ], [ %128, %125 ]
  %130 = phi i32 [ %5, %121 ], [ %131, %125 ]
  %131 = add nsw i32 %130, -1
  %132 = getelementptr inbounds i8, ptr %126, i64 %18
  %133 = load i8, ptr %132, align 1, !tbaa !47
  %134 = zext i8 %133 to i32
  %135 = shl nuw nsw i32 %128, 1
  %136 = add nuw nsw i32 %135, %129
  %137 = add nuw nsw i32 %136, %127
  %138 = add nuw nsw i32 %137, %134
  %139 = and i32 %138, 3
  %140 = lshr i32 %138, 2
  %141 = trunc i32 %140 to i8
  store i8 %141, ptr %126, align 1, !tbaa !47
  %142 = icmp sgt i32 %130, 2
  br i1 %142, label %125, label %143, !llvm.loop !48

143:                                              ; preds = %125
  %144 = shl nuw nsw i32 %134, 1
  %145 = add nuw nsw i32 %128, %134
  %146 = add nuw nsw i32 %145, %144
  %147 = add nuw nsw i32 %146, %139
  %148 = lshr i32 %147, 2
  %149 = trunc i32 %148 to i8
  store i8 %149, ptr %132, align 1, !tbaa !47
  br label %150

150:                                              ; preds = %62, %85, %114, %143
  %151 = getelementptr inbounds i8, ptr %26, i64 4
  br label %152

152:                                              ; preds = %150, %25
  %153 = phi ptr [ %151, %150 ], [ null, %25 ]
  %154 = icmp eq ptr %27, null
  br i1 %154, label %237, label %155

155:                                              ; preds = %152
  %156 = load i8, ptr %19, align 8, !tbaa !46
  %157 = icmp ugt i8 %156, 24
  %158 = select i1 %157, i1 %20, i1 false
  br i1 %158, label %159, label %177

159:                                              ; preds = %155
  %160 = load float, ptr %27, align 4, !tbaa !51
  br label %161

161:                                              ; preds = %159, %161
  %162 = phi ptr [ %27, %159 ], [ %167, %161 ]
  %163 = phi float [ %160, %159 ], [ %168, %161 ]
  %164 = phi float [ %160, %159 ], [ %163, %161 ]
  %165 = phi i32 [ %5, %159 ], [ %166, %161 ]
  %166 = add nsw i32 %165, -1
  %167 = getelementptr inbounds float, ptr %162, i64 %21
  %168 = load float, ptr %167, align 4, !tbaa !51
  %169 = tail call float @llvm.fmuladd.f32(float %163, float 2.000000e+00, float %168)
  %170 = fadd float %164, %169
  %171 = fmul float %170, 2.500000e-01
  store float %171, ptr %162, align 4, !tbaa !51
  %172 = icmp sgt i32 %165, 2
  br i1 %172, label %161, label %173, !llvm.loop !52

173:                                              ; preds = %161
  %174 = tail call float @llvm.fmuladd.f32(float %168, float 2.000000e+00, float %163)
  %175 = fadd float %168, %174
  %176 = fmul float %175, 2.500000e-01
  store float %176, ptr %167, align 4, !tbaa !51
  br label %177

177:                                              ; preds = %173, %155
  br i1 %20, label %178, label %235

178:                                              ; preds = %177
  %179 = getelementptr inbounds float, ptr %27, i64 1
  %180 = load float, ptr %179, align 4, !tbaa !51
  br label %181

181:                                              ; preds = %178, %181
  %182 = phi ptr [ %179, %178 ], [ %187, %181 ]
  %183 = phi float [ %180, %178 ], [ %188, %181 ]
  %184 = phi float [ %180, %178 ], [ %183, %181 ]
  %185 = phi i32 [ %5, %178 ], [ %186, %181 ]
  %186 = add nsw i32 %185, -1
  %187 = getelementptr inbounds float, ptr %182, i64 %22
  %188 = load float, ptr %187, align 4, !tbaa !51
  %189 = tail call float @llvm.fmuladd.f32(float %183, float 2.000000e+00, float %188)
  %190 = fadd float %184, %189
  %191 = fmul float %190, 2.500000e-01
  store float %191, ptr %182, align 4, !tbaa !51
  %192 = icmp sgt i32 %185, 2
  br i1 %192, label %181, label %193, !llvm.loop !52

193:                                              ; preds = %181
  %194 = tail call float @llvm.fmuladd.f32(float %188, float 2.000000e+00, float %183)
  %195 = fadd float %188, %194
  %196 = fmul float %195, 2.500000e-01
  store float %196, ptr %187, align 4, !tbaa !51
  br i1 %20, label %197, label %235

197:                                              ; preds = %193
  %198 = getelementptr inbounds float, ptr %27, i64 2
  %199 = load float, ptr %198, align 4, !tbaa !51
  br label %200

200:                                              ; preds = %197, %200
  %201 = phi ptr [ %198, %197 ], [ %206, %200 ]
  %202 = phi float [ %199, %197 ], [ %207, %200 ]
  %203 = phi float [ %199, %197 ], [ %202, %200 ]
  %204 = phi i32 [ %5, %197 ], [ %205, %200 ]
  %205 = add nsw i32 %204, -1
  %206 = getelementptr inbounds float, ptr %201, i64 %23
  %207 = load float, ptr %206, align 4, !tbaa !51
  %208 = tail call float @llvm.fmuladd.f32(float %202, float 2.000000e+00, float %207)
  %209 = fadd float %203, %208
  %210 = fmul float %209, 2.500000e-01
  store float %210, ptr %201, align 4, !tbaa !51
  %211 = icmp sgt i32 %204, 2
  br i1 %211, label %200, label %212, !llvm.loop !52

212:                                              ; preds = %200
  %213 = tail call float @llvm.fmuladd.f32(float %207, float 2.000000e+00, float %202)
  %214 = fadd float %207, %213
  %215 = fmul float %214, 2.500000e-01
  store float %215, ptr %206, align 4, !tbaa !51
  br i1 %20, label %216, label %235

216:                                              ; preds = %212
  %217 = getelementptr inbounds float, ptr %27, i64 3
  %218 = load float, ptr %217, align 4, !tbaa !51
  br label %219

219:                                              ; preds = %216, %219
  %220 = phi ptr [ %217, %216 ], [ %225, %219 ]
  %221 = phi float [ %218, %216 ], [ %226, %219 ]
  %222 = phi float [ %218, %216 ], [ %221, %219 ]
  %223 = phi i32 [ %5, %216 ], [ %224, %219 ]
  %224 = add nsw i32 %223, -1
  %225 = getelementptr inbounds float, ptr %220, i64 %24
  %226 = load float, ptr %225, align 4, !tbaa !51
  %227 = tail call float @llvm.fmuladd.f32(float %221, float 2.000000e+00, float %226)
  %228 = fadd float %222, %227
  %229 = fmul float %228, 2.500000e-01
  store float %229, ptr %220, align 4, !tbaa !51
  %230 = icmp sgt i32 %223, 2
  br i1 %230, label %219, label %231, !llvm.loop !52

231:                                              ; preds = %219
  %232 = tail call float @llvm.fmuladd.f32(float %226, float 2.000000e+00, float %221)
  %233 = fadd float %226, %232
  %234 = fmul float %233, 2.500000e-01
  store float %234, ptr %225, align 4, !tbaa !51
  br label %235

235:                                              ; preds = %177, %193, %212, %231
  %236 = getelementptr inbounds float, ptr %27, i64 4
  br label %237

237:                                              ; preds = %152, %235
  %238 = phi ptr [ %236, %235 ], [ null, %152 ]
  %239 = add nsw i32 %28, -1
  %240 = icmp sgt i32 %28, 1
  br i1 %240, label %25, label %241, !llvm.loop !53

241:                                              ; preds = %237, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @imb_filterx(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %238

7:                                                ; preds = %1
  %8 = shl i32 %3, 2
  %9 = add nsw i32 %8, -3
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %15 = icmp sgt i32 %3, 1
  %16 = sext i32 %9 to i64
  %17 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %18 = icmp sgt i32 %3, 1
  %19 = sext i32 %9 to i64
  br label %20

20:                                               ; preds = %7, %234
  %21 = phi ptr [ %13, %7 ], [ %149, %234 ]
  %22 = phi i32 [ %5, %7 ], [ %236, %234 ]
  %23 = phi ptr [ %11, %7 ], [ %235, %234 ]
  %24 = icmp eq ptr %21, null
  br i1 %24, label %148, label %25

25:                                               ; preds = %20
  %26 = load i8, ptr %14, align 8, !tbaa !46
  %27 = icmp ugt i8 %26, 24
  %28 = select i1 %27, i1 %15, i1 false
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load i8, ptr %21, align 1, !tbaa !47
  %31 = zext i8 %30 to i32
  br label %32

32:                                               ; preds = %29, %32
  %33 = phi i32 [ 2, %29 ], [ %46, %32 ]
  %34 = phi ptr [ %21, %29 ], [ %39, %32 ]
  %35 = phi i32 [ %31, %29 ], [ %41, %32 ]
  %36 = phi i32 [ %31, %29 ], [ %35, %32 ]
  %37 = phi i32 [ %3, %29 ], [ %38, %32 ]
  %38 = add nsw i32 %37, -1
  %39 = getelementptr inbounds i8, ptr %34, i64 4
  %40 = load i8, ptr %39, align 1, !tbaa !47
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %35, 1
  %43 = add nuw nsw i32 %42, %36
  %44 = add nuw nsw i32 %43, %33
  %45 = add nuw nsw i32 %44, %41
  %46 = and i32 %45, 3
  %47 = lshr i32 %45, 2
  %48 = trunc i32 %47 to i8
  store i8 %48, ptr %34, align 1, !tbaa !47
  %49 = icmp sgt i32 %37, 2
  br i1 %49, label %32, label %50, !llvm.loop !54

50:                                               ; preds = %32
  %51 = shl nuw nsw i32 %41, 1
  %52 = add nuw nsw i32 %35, %41
  %53 = add nuw nsw i32 %52, %51
  %54 = add nuw nsw i32 %53, %46
  %55 = lshr i32 %54, 2
  %56 = trunc i32 %55 to i8
  store i8 %56, ptr %39, align 1, !tbaa !47
  br label %57

57:                                               ; preds = %50, %25
  br i1 %15, label %58, label %116

58:                                               ; preds = %57
  %59 = getelementptr inbounds i8, ptr %21, i64 1
  %60 = load i8, ptr %59, align 1, !tbaa !47
  %61 = zext i8 %60 to i32
  br label %62

62:                                               ; preds = %58, %62
  %63 = phi i32 [ 2, %58 ], [ %76, %62 ]
  %64 = phi ptr [ %59, %58 ], [ %69, %62 ]
  %65 = phi i32 [ %61, %58 ], [ %71, %62 ]
  %66 = phi i32 [ %61, %58 ], [ %65, %62 ]
  %67 = phi i32 [ %3, %58 ], [ %68, %62 ]
  %68 = add nsw i32 %67, -1
  %69 = getelementptr inbounds i8, ptr %64, i64 4
  %70 = load i8, ptr %69, align 1, !tbaa !47
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %65, 1
  %73 = add nuw nsw i32 %72, %66
  %74 = add nuw nsw i32 %73, %63
  %75 = add nuw nsw i32 %74, %71
  %76 = and i32 %75, 3
  %77 = lshr i32 %75, 2
  %78 = trunc i32 %77 to i8
  store i8 %78, ptr %64, align 1, !tbaa !47
  %79 = icmp sgt i32 %67, 2
  br i1 %79, label %62, label %80, !llvm.loop !54

80:                                               ; preds = %62
  %81 = shl nuw nsw i32 %71, 1
  %82 = add nuw nsw i32 %65, %71
  %83 = add nuw nsw i32 %82, %81
  %84 = add nuw nsw i32 %83, %76
  %85 = lshr i32 %84, 2
  %86 = trunc i32 %85 to i8
  store i8 %86, ptr %69, align 1, !tbaa !47
  br i1 %15, label %87, label %116

87:                                               ; preds = %80
  %88 = getelementptr inbounds i8, ptr %21, i64 2
  %89 = load i8, ptr %88, align 1, !tbaa !47
  %90 = zext i8 %89 to i32
  br label %91

91:                                               ; preds = %87, %91
  %92 = phi i32 [ 2, %87 ], [ %105, %91 ]
  %93 = phi ptr [ %88, %87 ], [ %98, %91 ]
  %94 = phi i32 [ %90, %87 ], [ %100, %91 ]
  %95 = phi i32 [ %90, %87 ], [ %94, %91 ]
  %96 = phi i32 [ %3, %87 ], [ %97, %91 ]
  %97 = add nsw i32 %96, -1
  %98 = getelementptr inbounds i8, ptr %93, i64 4
  %99 = load i8, ptr %98, align 1, !tbaa !47
  %100 = zext i8 %99 to i32
  %101 = shl nuw nsw i32 %94, 1
  %102 = add nuw nsw i32 %101, %95
  %103 = add nuw nsw i32 %102, %92
  %104 = add nuw nsw i32 %103, %100
  %105 = and i32 %104, 3
  %106 = lshr i32 %104, 2
  %107 = trunc i32 %106 to i8
  store i8 %107, ptr %93, align 1, !tbaa !47
  %108 = icmp sgt i32 %96, 2
  br i1 %108, label %91, label %109, !llvm.loop !54

109:                                              ; preds = %91
  %110 = shl nuw nsw i32 %100, 1
  %111 = add nuw nsw i32 %94, %100
  %112 = add nuw nsw i32 %111, %110
  %113 = add nuw nsw i32 %112, %105
  %114 = lshr i32 %113, 2
  %115 = trunc i32 %114 to i8
  store i8 %115, ptr %98, align 1, !tbaa !47
  br label %116

116:                                              ; preds = %57, %80, %109
  %117 = getelementptr inbounds i8, ptr %21, i64 3
  br i1 %15, label %118, label %146

118:                                              ; preds = %116
  %119 = load i8, ptr %117, align 1, !tbaa !47
  %120 = zext i8 %119 to i32
  br label %121

121:                                              ; preds = %118, %121
  %122 = phi i32 [ 2, %118 ], [ %135, %121 ]
  %123 = phi ptr [ %117, %118 ], [ %128, %121 ]
  %124 = phi i32 [ %120, %118 ], [ %130, %121 ]
  %125 = phi i32 [ %120, %118 ], [ %124, %121 ]
  %126 = phi i32 [ %3, %118 ], [ %127, %121 ]
  %127 = add nsw i32 %126, -1
  %128 = getelementptr inbounds i8, ptr %123, i64 4
  %129 = load i8, ptr %128, align 1, !tbaa !47
  %130 = zext i8 %129 to i32
  %131 = shl nuw nsw i32 %124, 1
  %132 = add nuw nsw i32 %131, %125
  %133 = add nuw nsw i32 %132, %122
  %134 = add nuw nsw i32 %133, %130
  %135 = and i32 %134, 3
  %136 = lshr i32 %134, 2
  %137 = trunc i32 %136 to i8
  store i8 %137, ptr %123, align 1, !tbaa !47
  %138 = icmp sgt i32 %126, 2
  br i1 %138, label %121, label %139, !llvm.loop !54

139:                                              ; preds = %121
  %140 = shl nuw nsw i32 %130, 1
  %141 = add nuw nsw i32 %124, %130
  %142 = add nuw nsw i32 %141, %140
  %143 = add nuw nsw i32 %142, %135
  %144 = lshr i32 %143, 2
  %145 = trunc i32 %144 to i8
  store i8 %145, ptr %128, align 1, !tbaa !47
  br label %146

146:                                              ; preds = %116, %139
  %147 = getelementptr inbounds i8, ptr %117, i64 %16
  br label %148

148:                                              ; preds = %146, %20
  %149 = phi ptr [ %147, %146 ], [ null, %20 ]
  %150 = icmp eq ptr %23, null
  br i1 %150, label %234, label %151

151:                                              ; preds = %148
  %152 = load i8, ptr %17, align 8, !tbaa !46
  %153 = icmp ugt i8 %152, 24
  %154 = select i1 %153, i1 %18, i1 false
  br i1 %154, label %155, label %173

155:                                              ; preds = %151
  %156 = load float, ptr %23, align 4, !tbaa !51
  br label %157

157:                                              ; preds = %155, %157
  %158 = phi ptr [ %23, %155 ], [ %163, %157 ]
  %159 = phi float [ %156, %155 ], [ %164, %157 ]
  %160 = phi float [ %156, %155 ], [ %159, %157 ]
  %161 = phi i32 [ %3, %155 ], [ %162, %157 ]
  %162 = add nsw i32 %161, -1
  %163 = getelementptr inbounds float, ptr %158, i64 4
  %164 = load float, ptr %163, align 4, !tbaa !51
  %165 = tail call float @llvm.fmuladd.f32(float %159, float 2.000000e+00, float %164)
  %166 = fadd float %160, %165
  %167 = fmul float %166, 2.500000e-01
  store float %167, ptr %158, align 4, !tbaa !51
  %168 = icmp sgt i32 %161, 2
  br i1 %168, label %157, label %169, !llvm.loop !55

169:                                              ; preds = %157
  %170 = tail call float @llvm.fmuladd.f32(float %164, float 2.000000e+00, float %159)
  %171 = fadd float %164, %170
  %172 = fmul float %171, 2.500000e-01
  store float %172, ptr %163, align 4, !tbaa !51
  br label %173

173:                                              ; preds = %169, %151
  br i1 %18, label %174, label %212

174:                                              ; preds = %173
  %175 = getelementptr inbounds float, ptr %23, i64 1
  %176 = load float, ptr %175, align 4, !tbaa !51
  br label %177

177:                                              ; preds = %174, %177
  %178 = phi ptr [ %175, %174 ], [ %183, %177 ]
  %179 = phi float [ %176, %174 ], [ %184, %177 ]
  %180 = phi float [ %176, %174 ], [ %179, %177 ]
  %181 = phi i32 [ %3, %174 ], [ %182, %177 ]
  %182 = add nsw i32 %181, -1
  %183 = getelementptr inbounds float, ptr %178, i64 4
  %184 = load float, ptr %183, align 4, !tbaa !51
  %185 = tail call float @llvm.fmuladd.f32(float %179, float 2.000000e+00, float %184)
  %186 = fadd float %180, %185
  %187 = fmul float %186, 2.500000e-01
  store float %187, ptr %178, align 4, !tbaa !51
  %188 = icmp sgt i32 %181, 2
  br i1 %188, label %177, label %189, !llvm.loop !55

189:                                              ; preds = %177
  %190 = tail call float @llvm.fmuladd.f32(float %184, float 2.000000e+00, float %179)
  %191 = fadd float %184, %190
  %192 = fmul float %191, 2.500000e-01
  store float %192, ptr %183, align 4, !tbaa !51
  br i1 %18, label %193, label %212

193:                                              ; preds = %189
  %194 = getelementptr inbounds float, ptr %23, i64 2
  %195 = load float, ptr %194, align 4, !tbaa !51
  br label %196

196:                                              ; preds = %193, %196
  %197 = phi ptr [ %194, %193 ], [ %202, %196 ]
  %198 = phi float [ %195, %193 ], [ %203, %196 ]
  %199 = phi float [ %195, %193 ], [ %198, %196 ]
  %200 = phi i32 [ %3, %193 ], [ %201, %196 ]
  %201 = add nsw i32 %200, -1
  %202 = getelementptr inbounds float, ptr %197, i64 4
  %203 = load float, ptr %202, align 4, !tbaa !51
  %204 = tail call float @llvm.fmuladd.f32(float %198, float 2.000000e+00, float %203)
  %205 = fadd float %199, %204
  %206 = fmul float %205, 2.500000e-01
  store float %206, ptr %197, align 4, !tbaa !51
  %207 = icmp sgt i32 %200, 2
  br i1 %207, label %196, label %208, !llvm.loop !55

208:                                              ; preds = %196
  %209 = tail call float @llvm.fmuladd.f32(float %203, float 2.000000e+00, float %198)
  %210 = fadd float %203, %209
  %211 = fmul float %210, 2.500000e-01
  store float %211, ptr %202, align 4, !tbaa !51
  br label %212

212:                                              ; preds = %173, %189, %208
  %213 = getelementptr inbounds float, ptr %23, i64 3
  br i1 %18, label %214, label %232

214:                                              ; preds = %212
  %215 = load float, ptr %213, align 4, !tbaa !51
  br label %216

216:                                              ; preds = %214, %216
  %217 = phi ptr [ %213, %214 ], [ %222, %216 ]
  %218 = phi float [ %215, %214 ], [ %223, %216 ]
  %219 = phi float [ %215, %214 ], [ %218, %216 ]
  %220 = phi i32 [ %3, %214 ], [ %221, %216 ]
  %221 = add nsw i32 %220, -1
  %222 = getelementptr inbounds float, ptr %217, i64 4
  %223 = load float, ptr %222, align 4, !tbaa !51
  %224 = tail call float @llvm.fmuladd.f32(float %218, float 2.000000e+00, float %223)
  %225 = fadd float %219, %224
  %226 = fmul float %225, 2.500000e-01
  store float %226, ptr %217, align 4, !tbaa !51
  %227 = icmp sgt i32 %220, 2
  br i1 %227, label %216, label %228, !llvm.loop !55

228:                                              ; preds = %216
  %229 = tail call float @llvm.fmuladd.f32(float %223, float 2.000000e+00, float %218)
  %230 = fadd float %223, %229
  %231 = fmul float %230, 2.500000e-01
  store float %231, ptr %222, align 4, !tbaa !51
  br label %232

232:                                              ; preds = %212, %228
  %233 = getelementptr inbounds float, ptr %213, i64 %19
  br label %234

234:                                              ; preds = %148, %232
  %235 = phi ptr [ %233, %232 ], [ null, %148 ]
  %236 = add nsw i32 %22, -1
  %237 = icmp sgt i32 %22, 1
  br i1 %237, label %20, label %238, !llvm.loop !56

238:                                              ; preds = %234, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_filterN(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @IMB_rect_from_float(ptr noundef %1) #9
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !43
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %214

13:                                               ; preds = %9
  %14 = shl nsw i32 %4, 2
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 0, %15
  %17 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %18 = icmp sgt i32 %4, 0
  %19 = add nsw i32 %4, -1
  %20 = sext i32 %4 to i64
  br label %21

21:                                               ; preds = %13, %209
  %22 = phi i64 [ 0, %13 ], [ %210, %209 ]
  %23 = phi i32 [ %11, %13 ], [ %211, %209 ]
  br i1 %18, label %24, label %209

24:                                               ; preds = %21
  %25 = load ptr, ptr %17, align 8, !tbaa !45
  %26 = mul nsw i64 %22, %20
  %27 = getelementptr inbounds i32, ptr %25, i64 %26
  %28 = load ptr, ptr %5, align 8, !tbaa !45
  %29 = getelementptr inbounds i32, ptr %28, i64 %26
  %30 = add nsw i32 %23, -1
  %31 = zext i32 %30 to i64
  %32 = icmp eq i64 %22, %31
  %33 = select i1 %32, i64 0, i64 %15
  %34 = getelementptr inbounds i8, ptr %29, i64 %33
  %35 = icmp eq i64 %22, 0
  %36 = getelementptr inbounds i8, ptr %29, i64 %16
  %37 = select i1 %35, ptr %28, ptr %36
  br label %38

38:                                               ; preds = %24, %38
  %39 = phi i32 [ %207, %38 ], [ 0, %24 ]
  %40 = phi ptr [ %50, %38 ], [ %37, %24 ]
  %41 = phi ptr [ %206, %38 ], [ %27, %24 ]
  %42 = phi ptr [ %52, %38 ], [ %34, %24 ]
  %43 = phi ptr [ %51, %38 ], [ %29, %24 ]
  %44 = icmp eq i32 %39, 0
  %45 = select i1 %44, i64 0, i64 -4
  %46 = getelementptr inbounds i8, ptr %40, i64 %45
  %47 = getelementptr inbounds i8, ptr %43, i64 %45
  %48 = getelementptr inbounds i8, ptr %42, i64 %45
  %49 = icmp eq i32 %39, %19
  %50 = getelementptr inbounds i8, ptr %40, i64 4
  %51 = getelementptr inbounds i8, ptr %43, i64 4
  %52 = getelementptr inbounds i8, ptr %42, i64 4
  %53 = select i1 %49, ptr %40, ptr %50
  %54 = select i1 %49, ptr %43, ptr %51
  %55 = select i1 %49, ptr %42, ptr %52
  %56 = load i8, ptr %46, align 1, !tbaa !47
  %57 = zext i8 %56 to i16
  %58 = load i8, ptr %40, align 1, !tbaa !47
  %59 = zext i8 %58 to i16
  %60 = load i8, ptr %53, align 1, !tbaa !47
  %61 = zext i8 %60 to i16
  %62 = load i8, ptr %47, align 1, !tbaa !47
  %63 = zext i8 %62 to i16
  %64 = load i8, ptr %43, align 1, !tbaa !47
  %65 = zext i8 %64 to i16
  %66 = shl nuw nsw i16 %65, 2
  %67 = load i8, ptr %54, align 1, !tbaa !47
  %68 = zext i8 %67 to i16
  %69 = load i8, ptr %48, align 1, !tbaa !47
  %70 = zext i8 %69 to i16
  %71 = load i8, ptr %42, align 1, !tbaa !47
  %72 = zext i8 %71 to i16
  %73 = load i8, ptr %55, align 1, !tbaa !47
  %74 = zext i8 %73 to i16
  %75 = add nuw nsw i16 %63, %59
  %76 = add nuw nsw i16 %75, %68
  %77 = add nuw nsw i16 %76, %72
  %78 = shl nuw nsw i16 %77, 1
  %79 = add nuw nsw i16 %61, %57
  %80 = add nuw nsw i16 %79, %66
  %81 = add nuw nsw i16 %80, %70
  %82 = add nuw nsw i16 %81, %74
  %83 = add nuw nsw i16 %82, %78
  %84 = lshr i16 %83, 4
  %85 = trunc i16 %84 to i8
  store i8 %85, ptr %41, align 1, !tbaa !47
  %86 = getelementptr inbounds i8, ptr %46, i64 1
  %87 = load i8, ptr %86, align 1, !tbaa !47
  %88 = zext i8 %87 to i16
  %89 = getelementptr inbounds i8, ptr %40, i64 1
  %90 = load i8, ptr %89, align 1, !tbaa !47
  %91 = zext i8 %90 to i16
  %92 = getelementptr inbounds i8, ptr %53, i64 1
  %93 = load i8, ptr %92, align 1, !tbaa !47
  %94 = zext i8 %93 to i16
  %95 = getelementptr inbounds i8, ptr %47, i64 1
  %96 = load i8, ptr %95, align 1, !tbaa !47
  %97 = zext i8 %96 to i16
  %98 = getelementptr inbounds i8, ptr %43, i64 1
  %99 = load i8, ptr %98, align 1, !tbaa !47
  %100 = zext i8 %99 to i16
  %101 = shl nuw nsw i16 %100, 2
  %102 = getelementptr inbounds i8, ptr %54, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !47
  %104 = zext i8 %103 to i16
  %105 = getelementptr inbounds i8, ptr %48, i64 1
  %106 = load i8, ptr %105, align 1, !tbaa !47
  %107 = zext i8 %106 to i16
  %108 = getelementptr inbounds i8, ptr %42, i64 1
  %109 = load i8, ptr %108, align 1, !tbaa !47
  %110 = zext i8 %109 to i16
  %111 = getelementptr inbounds i8, ptr %55, i64 1
  %112 = load i8, ptr %111, align 1, !tbaa !47
  %113 = zext i8 %112 to i16
  %114 = add nuw nsw i16 %97, %91
  %115 = add nuw nsw i16 %114, %104
  %116 = add nuw nsw i16 %115, %110
  %117 = shl nuw nsw i16 %116, 1
  %118 = add nuw nsw i16 %94, %88
  %119 = add nuw nsw i16 %118, %101
  %120 = add nuw nsw i16 %119, %107
  %121 = add nuw nsw i16 %120, %113
  %122 = add nuw nsw i16 %121, %117
  %123 = lshr i16 %122, 4
  %124 = trunc i16 %123 to i8
  %125 = getelementptr inbounds i8, ptr %41, i64 1
  store i8 %124, ptr %125, align 1, !tbaa !47
  %126 = getelementptr inbounds i8, ptr %46, i64 2
  %127 = load i8, ptr %126, align 1, !tbaa !47
  %128 = zext i8 %127 to i16
  %129 = getelementptr inbounds i8, ptr %40, i64 2
  %130 = load i8, ptr %129, align 1, !tbaa !47
  %131 = zext i8 %130 to i16
  %132 = getelementptr inbounds i8, ptr %53, i64 2
  %133 = load i8, ptr %132, align 1, !tbaa !47
  %134 = zext i8 %133 to i16
  %135 = getelementptr inbounds i8, ptr %47, i64 2
  %136 = load i8, ptr %135, align 1, !tbaa !47
  %137 = zext i8 %136 to i16
  %138 = getelementptr inbounds i8, ptr %43, i64 2
  %139 = load i8, ptr %138, align 1, !tbaa !47
  %140 = zext i8 %139 to i16
  %141 = shl nuw nsw i16 %140, 2
  %142 = getelementptr inbounds i8, ptr %54, i64 2
  %143 = load i8, ptr %142, align 1, !tbaa !47
  %144 = zext i8 %143 to i16
  %145 = getelementptr inbounds i8, ptr %48, i64 2
  %146 = load i8, ptr %145, align 1, !tbaa !47
  %147 = zext i8 %146 to i16
  %148 = getelementptr inbounds i8, ptr %42, i64 2
  %149 = load i8, ptr %148, align 1, !tbaa !47
  %150 = zext i8 %149 to i16
  %151 = getelementptr inbounds i8, ptr %55, i64 2
  %152 = load i8, ptr %151, align 1, !tbaa !47
  %153 = zext i8 %152 to i16
  %154 = add nuw nsw i16 %137, %131
  %155 = add nuw nsw i16 %154, %144
  %156 = add nuw nsw i16 %155, %150
  %157 = shl nuw nsw i16 %156, 1
  %158 = add nuw nsw i16 %134, %128
  %159 = add nuw nsw i16 %158, %141
  %160 = add nuw nsw i16 %159, %147
  %161 = add nuw nsw i16 %160, %153
  %162 = add nuw nsw i16 %161, %157
  %163 = lshr i16 %162, 4
  %164 = trunc i16 %163 to i8
  %165 = getelementptr inbounds i8, ptr %41, i64 2
  store i8 %164, ptr %165, align 1, !tbaa !47
  %166 = getelementptr inbounds i8, ptr %46, i64 3
  %167 = load i8, ptr %166, align 1, !tbaa !47
  %168 = zext i8 %167 to i16
  %169 = getelementptr inbounds i8, ptr %40, i64 3
  %170 = load i8, ptr %169, align 1, !tbaa !47
  %171 = zext i8 %170 to i16
  %172 = getelementptr inbounds i8, ptr %53, i64 3
  %173 = load i8, ptr %172, align 1, !tbaa !47
  %174 = zext i8 %173 to i16
  %175 = getelementptr inbounds i8, ptr %47, i64 3
  %176 = load i8, ptr %175, align 1, !tbaa !47
  %177 = zext i8 %176 to i16
  %178 = getelementptr inbounds i8, ptr %43, i64 3
  %179 = load i8, ptr %178, align 1, !tbaa !47
  %180 = zext i8 %179 to i16
  %181 = shl nuw nsw i16 %180, 2
  %182 = getelementptr inbounds i8, ptr %54, i64 3
  %183 = load i8, ptr %182, align 1, !tbaa !47
  %184 = zext i8 %183 to i16
  %185 = getelementptr inbounds i8, ptr %48, i64 3
  %186 = load i8, ptr %185, align 1, !tbaa !47
  %187 = zext i8 %186 to i16
  %188 = getelementptr inbounds i8, ptr %42, i64 3
  %189 = load i8, ptr %188, align 1, !tbaa !47
  %190 = zext i8 %189 to i16
  %191 = getelementptr inbounds i8, ptr %55, i64 3
  %192 = load i8, ptr %191, align 1, !tbaa !47
  %193 = zext i8 %192 to i16
  %194 = add nuw nsw i16 %177, %171
  %195 = add nuw nsw i16 %194, %184
  %196 = add nuw nsw i16 %195, %190
  %197 = shl nuw nsw i16 %196, 1
  %198 = add nuw nsw i16 %174, %168
  %199 = add nuw nsw i16 %198, %181
  %200 = add nuw nsw i16 %199, %187
  %201 = add nuw nsw i16 %200, %193
  %202 = add nuw nsw i16 %201, %197
  %203 = lshr i16 %202, 4
  %204 = trunc i16 %203 to i8
  %205 = getelementptr inbounds i8, ptr %41, i64 3
  store i8 %204, ptr %205, align 1, !tbaa !47
  %206 = getelementptr inbounds i8, ptr %41, i64 4
  %207 = add nuw nsw i32 %39, 1
  %208 = icmp eq i32 %207, %4
  br i1 %208, label %209, label %38, !llvm.loop !57

209:                                              ; preds = %38, %21
  %210 = add nuw nsw i64 %22, 1
  %211 = load i32, ptr %10, align 4, !tbaa !43
  %212 = sext i32 %211 to i64
  %213 = icmp slt i64 %210, %212
  br i1 %213, label %21, label %214, !llvm.loop !58

214:                                              ; preds = %209, %9
  ret void
}

declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_filter(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @IMB_filtery(ptr noundef %0)
  tail call void @imb_filterx(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_mask_filter_extend(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !59
  %5 = tail call ptr %4(ptr noundef %0) #9
  %6 = icmp slt i32 %2, 1
  br i1 %6, label %85, label %7

7:                                                ; preds = %3
  %8 = sext i32 %1 to i64
  %9 = icmp sgt i32 %1, 0
  %10 = add nsw i32 %1, -1
  %11 = zext i32 %10 to i64
  %12 = sext i32 %1 to i64
  %13 = sext i32 %1 to i64
  %14 = zext nneg i32 %2 to i64
  %15 = add nuw i32 %2, 1
  %16 = zext i32 %15 to i64
  %17 = zext nneg i32 %1 to i64
  br label %18

18:                                               ; preds = %7, %82
  %19 = phi i64 [ 1, %7 ], [ %83, %82 ]
  br i1 %9, label %20, label %82

20:                                               ; preds = %18
  %21 = icmp eq i64 %19, 1
  %22 = add nsw i64 %19, -2
  %23 = mul nsw i64 %22, %13
  %24 = getelementptr inbounds i8, ptr %5, i64 %23
  %25 = getelementptr inbounds i8, ptr %24, i64 %8
  %26 = select i1 %21, ptr %25, ptr %24
  %27 = getelementptr inbounds i8, ptr %25, i64 %8
  %28 = icmp eq i64 %19, %14
  %29 = select i1 %28, ptr %25, ptr %27
  %30 = select i1 %21, ptr %27, ptr %29
  %31 = add nsw i64 %19, -1
  %32 = mul nsw i64 %31, %12
  %33 = getelementptr i8, ptr %0, i64 %32
  br label %34

34:                                               ; preds = %20, %74
  %35 = phi i64 [ 0, %20 ], [ %80, %74 ]
  %36 = phi ptr [ %26, %20 ], [ %79, %74 ]
  %37 = phi ptr [ %25, %20 ], [ %78, %74 ]
  %38 = phi ptr [ %30, %20 ], [ %77, %74 ]
  %39 = getelementptr i8, ptr %33, i64 %35
  %40 = load i8, ptr %39, align 1, !tbaa !47
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %74

42:                                               ; preds = %34
  %43 = load i8, ptr %36, align 1, !tbaa !47
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %42
  %46 = load i8, ptr %37, align 1, !tbaa !47
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %45
  %49 = load i8, ptr %38, align 1, !tbaa !47
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %48
  %52 = getelementptr inbounds i8, ptr %36, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !47
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = getelementptr inbounds i8, ptr %38, i64 1
  %57 = load i8, ptr %56, align 1, !tbaa !47
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = icmp eq i64 %35, %11
  br i1 %60, label %74, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds i8, ptr %36, i64 2
  %63 = load i8, ptr %62, align 1, !tbaa !47
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, ptr %37, i64 2
  %67 = load i8, ptr %66, align 1, !tbaa !47
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds i8, ptr %38, i64 2
  %71 = load i8, ptr %70, align 1, !tbaa !47
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %61, %65, %69, %42, %45, %48, %51, %55
  store i8 1, ptr %39, align 1, !tbaa !47
  br label %74

74:                                               ; preds = %73, %69, %59, %34
  %75 = icmp ne i64 %35, 0
  %76 = zext i1 %75 to i64
  %77 = getelementptr inbounds i8, ptr %38, i64 %76
  %78 = getelementptr inbounds i8, ptr %37, i64 %76
  %79 = getelementptr inbounds i8, ptr %36, i64 %76
  %80 = add nuw nsw i64 %35, 1
  %81 = icmp eq i64 %80, %17
  br i1 %81, label %82, label %34, !llvm.loop !60

82:                                               ; preds = %74, %18
  %83 = add nuw nsw i64 %19, 1
  %84 = icmp eq i64 %83, %16
  br i1 %84, label %85, label %18, !llvm.loop !61

85:                                               ; preds = %82, %3
  %86 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %86(ptr noundef %5) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_mask_clear(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp sgt i32 %8, 0
  br i1 %6, label %18, label %10

10:                                               ; preds = %3
  br i1 %9, label %11, label %72

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !43
  %14 = icmp sgt i32 %13, 0
  %15 = zext nneg i32 %8 to i64
  %16 = zext nneg i32 %8 to i64
  %17 = zext nneg i32 %13 to i64
  br label %22

18:                                               ; preds = %3
  br i1 %9, label %19, label %72

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  br label %42

22:                                               ; preds = %11, %39
  %23 = phi i64 [ 0, %11 ], [ %40, %39 ]
  br i1 %14, label %24, label %39

24:                                               ; preds = %22, %36
  %25 = phi i64 [ %37, %36 ], [ 0, %22 ]
  %26 = mul nsw i64 %25, %15
  %27 = add nuw nsw i64 %26, %23
  %28 = getelementptr inbounds i8, ptr %1, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !47
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = shl i64 %27, 2
  %34 = and i64 %33, 4294967292
  %35 = getelementptr inbounds float, ptr %5, i64 %34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  br label %36

36:                                               ; preds = %24, %32
  %37 = add nuw nsw i64 %25, 1
  %38 = icmp eq i64 %37, %17
  br i1 %38, label %39, label %24, !llvm.loop !62

39:                                               ; preds = %36, %22
  %40 = add nuw nsw i64 %23, 1
  %41 = icmp eq i64 %40, %16
  br i1 %41, label %72, label %22, !llvm.loop !63

42:                                               ; preds = %19, %67
  %43 = phi i64 [ 0, %19 ], [ %68, %67 ]
  %44 = load i32, ptr %20, align 4, !tbaa !43
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = trunc i64 %43 to i32
  br label %48

48:                                               ; preds = %46, %63
  %49 = phi i32 [ %64, %63 ], [ 0, %46 ]
  %50 = load i32, ptr %7, align 8, !tbaa !34
  %51 = mul nsw i32 %50, %49
  %52 = add nsw i32 %51, %47
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %1, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !47
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, %2
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load ptr, ptr %21, align 8, !tbaa !45
  %60 = sext i32 %51 to i64
  %61 = getelementptr inbounds i32, ptr %59, i64 %60
  %62 = getelementptr inbounds i32, ptr %61, i64 %43
  store i32 0, ptr %62, align 1
  br label %63

63:                                               ; preds = %48, %58
  %64 = add nuw nsw i32 %49, 1
  %65 = load i32, ptr %20, align 4, !tbaa !43
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %48, label %67, !llvm.loop !64

67:                                               ; preds = %63, %42
  %68 = add nuw nsw i64 %43, 1
  %69 = load i32, ptr %7, align 8, !tbaa !34
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %42, label %72, !llvm.loop !65

72:                                               ; preds = %39, %67, %10, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IMB_filter_extend(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca [25 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  %14 = mul nsw i32 %10, %8
  %15 = shl nsw i32 %14, 2
  %16 = select i1 %13, i32 0, i32 2
  %17 = shl i32 %15, %16
  %18 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !59
  br i1 %13, label %19, label %22

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  br label %22

22:                                               ; preds = %3, %19
  %23 = phi ptr [ %21, %19 ], [ %12, %3 ]
  %24 = tail call ptr %18(ptr noundef %23) #9
  %25 = icmp eq ptr %1, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !59
  %28 = tail call ptr %27(ptr noundef nonnull %1) #9
  br label %29

29:                                               ; preds = %22, %26
  %30 = phi ptr [ %28, %26 ], [ null, %22 ]
  %31 = load ptr, ptr %11, align 8, !tbaa !44
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  br label %36

36:                                               ; preds = %29, %33
  %37 = phi ptr [ %35, %33 ], [ %31, %29 ]
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #9
  store float 1.000000e+00, ptr %4, align 16, !tbaa !51
  %38 = getelementptr inbounds [25 x float], ptr %4, i64 0, i64 1
  store float 2.000000e+00, ptr %38, align 4, !tbaa !51
  %39 = getelementptr inbounds [25 x float], ptr %4, i64 0, i64 2
  store float 1.000000e+00, ptr %39, align 8, !tbaa !51
  %40 = getelementptr inbounds [25 x float], ptr %4, i64 0, i64 3
  store float 2.000000e+00, ptr %40, align 4, !tbaa !51
  %41 = getelementptr inbounds [25 x float], ptr %4, i64 0, i64 4
  store float 0.000000e+00, ptr %41, align 16, !tbaa !51
  %42 = getelementptr inbounds [25 x float], ptr %4, i64 0, i64 5
  store float 2.000000e+00, ptr %42, align 4, !tbaa !51
  %43 = getelementptr inbounds [25 x float], ptr %4, i64 0, i64 6
  store float 1.000000e+00, ptr %43, align 8, !tbaa !51
  %44 = getelementptr inbounds [25 x float], ptr %4, i64 0, i64 7
  store float 2.000000e+00, ptr %44, align 4, !tbaa !51
  %45 = getelementptr inbounds [25 x float], ptr %4, i64 0, i64 8
  store float 1.000000e+00, ptr %45, align 16, !tbaa !51
  %46 = icmp sgt i32 %2, 0
  br i1 %46, label %47, label %353

47:                                               ; preds = %36
  %48 = icmp sgt i32 %10, 0
  %49 = icmp sgt i32 %8, 0
  %50 = icmp eq ptr %30, null
  %51 = sext i32 %17 to i64
  %52 = icmp eq ptr %30, null
  %53 = sext i32 %14 to i64
  br label %54

54:                                               ; preds = %47, %348
  %55 = phi i32 [ 0, %47 ], [ %349, %348 ]
  br i1 %48, label %56, label %345

56:                                               ; preds = %54, %340
  %57 = phi i1 [ %343, %340 ], [ %48, %54 ]
  %58 = phi i32 [ %341, %340 ], [ 0, %54 ]
  %59 = phi i32 [ %342, %340 ], [ 0, %54 ]
  br i1 %49, label %60, label %340

60:                                               ; preds = %56
  %61 = mul nsw i32 %59, %8
  %62 = add nsw i32 %61, -1
  %63 = add nsw i32 %59, -1
  %64 = icmp eq i32 %59, 0
  %65 = mul nsw i32 %63, %8
  %66 = add nuw nsw i32 %59, 1
  %67 = icmp slt i32 %66, %10
  %68 = mul nsw i32 %66, %8
  br label %69

69:                                               ; preds = %60, %336
  %70 = phi i32 [ %58, %60 ], [ %337, %336 ]
  %71 = phi i32 [ 0, %60 ], [ %338, %336 ]
  %72 = add nuw nsw i32 %71, %61
  %73 = select i1 %57, i32 %72, i32 -1
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %75, label %95

75:                                               ; preds = %69
  br i1 %25, label %82, label %76

76:                                               ; preds = %75
  %77 = zext nneg i32 %73 to i64
  %78 = getelementptr inbounds i8, ptr %1, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !47
  %80 = icmp ne i8 %79, 0
  %81 = zext i1 %80 to i32
  br label %95

82:                                               ; preds = %75
  %83 = shl nsw i32 %73, 2
  %84 = or disjoint i32 %83, 3
  %85 = zext nneg i32 %84 to i64
  br i1 %13, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds float, ptr %37, i64 %85
  %88 = load float, ptr %87, align 4, !tbaa !51
  %89 = fcmp une float %88, 0.000000e+00
  br i1 %89, label %94, label %95

90:                                               ; preds = %82
  %91 = getelementptr inbounds i8, ptr %37, i64 %85
  %92 = load i8, ptr %91, align 1, !tbaa !47
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90, %86
  br label %95

95:                                               ; preds = %69, %76, %86, %90, %94
  %96 = phi i32 [ 0, %69 ], [ %81, %76 ], [ 1, %94 ], [ 0, %90 ], [ 0, %86 ]
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %336

98:                                               ; preds = %95
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %99 = icmp ne i32 %71, 0
  %100 = select i1 %99, i1 %57, i1 false
  %101 = add i32 %62, %71
  %102 = select i1 %100, i32 %101, i32 -1
  %103 = icmp sgt i32 %102, -1
  br i1 %103, label %104, label %124

104:                                              ; preds = %98
  br i1 %25, label %111, label %105

105:                                              ; preds = %104
  %106 = zext nneg i32 %102 to i64
  %107 = getelementptr inbounds i8, ptr %1, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !47
  %109 = icmp ne i8 %108, 0
  %110 = zext i1 %109 to i32
  br label %124

111:                                              ; preds = %104
  %112 = shl nsw i32 %102, 2
  %113 = or disjoint i32 %112, 3
  %114 = zext nneg i32 %113 to i64
  br i1 %13, label %119, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds float, ptr %37, i64 %114
  %117 = load float, ptr %116, align 4, !tbaa !51
  %118 = fcmp une float %117, 0.000000e+00
  br i1 %118, label %123, label %124

119:                                              ; preds = %111
  %120 = getelementptr inbounds i8, ptr %37, i64 %114
  %121 = load i8, ptr %120, align 1, !tbaa !47
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %119, %115
  br label %124

124:                                              ; preds = %98, %105, %115, %119, %123
  %125 = phi i32 [ 0, %98 ], [ %110, %105 ], [ 1, %123 ], [ 0, %119 ], [ 0, %115 ]
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %211

127:                                              ; preds = %124
  %128 = add nuw nsw i32 %71, 1
  %129 = icmp slt i32 %128, %8
  %130 = and i1 %57, %129
  %131 = add nuw nsw i32 %128, %61
  %132 = select i1 %130, i32 %131, i32 -1
  %133 = icmp sgt i32 %132, -1
  br i1 %133, label %134, label %154

134:                                              ; preds = %127
  br i1 %25, label %141, label %135

135:                                              ; preds = %134
  %136 = zext nneg i32 %132 to i64
  %137 = getelementptr inbounds i8, ptr %1, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !47
  %139 = icmp ne i8 %138, 0
  %140 = zext i1 %139 to i32
  br label %154

141:                                              ; preds = %134
  %142 = shl nsw i32 %132, 2
  %143 = or disjoint i32 %142, 3
  %144 = zext nneg i32 %143 to i64
  br i1 %13, label %149, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds float, ptr %37, i64 %144
  %147 = load float, ptr %146, align 4, !tbaa !51
  %148 = fcmp une float %147, 0.000000e+00
  br i1 %148, label %153, label %154

149:                                              ; preds = %141
  %150 = getelementptr inbounds i8, ptr %37, i64 %144
  %151 = load i8, ptr %150, align 1, !tbaa !47
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %149, %145
  br label %154

154:                                              ; preds = %127, %135, %145, %149, %153
  %155 = phi i32 [ 0, %127 ], [ %140, %135 ], [ 1, %153 ], [ 0, %149 ], [ 0, %145 ]
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %211

157:                                              ; preds = %154
  %158 = add nsw i32 %71, %65
  %159 = select i1 %64, i32 -1, i32 %158
  %160 = icmp sgt i32 %159, -1
  br i1 %160, label %161, label %181

161:                                              ; preds = %157
  br i1 %25, label %168, label %162

162:                                              ; preds = %161
  %163 = zext nneg i32 %159 to i64
  %164 = getelementptr inbounds i8, ptr %1, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !47
  %166 = icmp ne i8 %165, 0
  %167 = zext i1 %166 to i32
  br label %181

168:                                              ; preds = %161
  %169 = shl nsw i32 %159, 2
  %170 = or disjoint i32 %169, 3
  %171 = zext nneg i32 %170 to i64
  br i1 %13, label %176, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds float, ptr %37, i64 %171
  %174 = load float, ptr %173, align 4, !tbaa !51
  %175 = fcmp une float %174, 0.000000e+00
  br i1 %175, label %180, label %181

176:                                              ; preds = %168
  %177 = getelementptr inbounds i8, ptr %37, i64 %171
  %178 = load i8, ptr %177, align 1, !tbaa !47
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %176, %172
  br label %181

181:                                              ; preds = %157, %162, %172, %176, %180
  %182 = phi i32 [ 0, %157 ], [ %167, %162 ], [ 1, %180 ], [ 0, %176 ], [ 0, %172 ]
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %211

184:                                              ; preds = %181
  %185 = add nuw nsw i32 %71, %68
  %186 = select i1 %67, i32 %185, i32 -1
  %187 = icmp sgt i32 %186, -1
  br i1 %187, label %188, label %208

188:                                              ; preds = %184
  br i1 %25, label %195, label %189

189:                                              ; preds = %188
  %190 = zext nneg i32 %186 to i64
  %191 = getelementptr inbounds i8, ptr %1, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !47
  %193 = icmp ne i8 %192, 0
  %194 = zext i1 %193 to i32
  br label %208

195:                                              ; preds = %188
  %196 = shl nsw i32 %186, 2
  %197 = or disjoint i32 %196, 3
  %198 = zext nneg i32 %197 to i64
  br i1 %13, label %203, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds float, ptr %37, i64 %198
  %201 = load float, ptr %200, align 4, !tbaa !51
  %202 = fcmp une float %201, 0.000000e+00
  br i1 %202, label %207, label %208

203:                                              ; preds = %195
  %204 = getelementptr inbounds i8, ptr %37, i64 %198
  %205 = load i8, ptr %204, align 1, !tbaa !47
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %203, %199
  br label %208

208:                                              ; preds = %184, %189, %199, %203, %207
  %209 = phi i32 [ 0, %184 ], [ %194, %189 ], [ 1, %207 ], [ 0, %203 ], [ 0, %199 ]
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %334, label %211

211:                                              ; preds = %208, %181, %154, %124
  br label %212

212:                                              ; preds = %211, %294
  %213 = phi float [ %289, %294 ], [ 0.000000e+00, %211 ]
  %214 = phi i32 [ %296, %294 ], [ -1, %211 ]
  %215 = phi i32 [ %295, %294 ], [ 0, %211 ]
  %216 = add nsw i32 %214, %71
  %217 = icmp sgt i32 %216, -1
  %218 = icmp slt i32 %216, %8
  %219 = sext i32 %215 to i64
  %220 = add i32 %215, 3
  br label %221

221:                                              ; preds = %212, %288
  %222 = phi i64 [ %219, %212 ], [ %290, %288 ]
  %223 = phi float [ %213, %212 ], [ %289, %288 ]
  %224 = phi i32 [ -1, %212 ], [ %291, %288 ]
  %225 = or i32 %224, %214
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %288, label %227

227:                                              ; preds = %221
  %228 = add nsw i32 %224, %59
  %229 = icmp ult i32 %228, %10
  %230 = and i1 %218, %229
  %231 = select i1 %217, i1 %230, i1 false
  %232 = mul nsw i32 %228, %8
  %233 = add nsw i32 %232, %216
  %234 = select i1 %231, i32 %233, i32 -1
  %235 = icmp sgt i32 %234, -1
  br i1 %235, label %236, label %256

236:                                              ; preds = %227
  br i1 %25, label %243, label %237

237:                                              ; preds = %236
  %238 = zext nneg i32 %234 to i64
  %239 = getelementptr inbounds i8, ptr %1, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !47
  %241 = icmp ne i8 %240, 0
  %242 = zext i1 %241 to i32
  br label %256

243:                                              ; preds = %236
  %244 = shl nsw i32 %234, 2
  %245 = or disjoint i32 %244, 3
  %246 = zext nneg i32 %245 to i64
  br i1 %13, label %251, label %247

247:                                              ; preds = %243
  %248 = getelementptr inbounds float, ptr %37, i64 %246
  %249 = load float, ptr %248, align 4, !tbaa !51
  %250 = fcmp une float %249, 0.000000e+00
  br i1 %250, label %255, label %256

251:                                              ; preds = %243
  %252 = getelementptr inbounds i8, ptr %37, i64 %246
  %253 = load i8, ptr %252, align 1, !tbaa !47
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %251, %247
  br label %256

256:                                              ; preds = %227, %237, %247, %251, %255
  %257 = phi i32 [ 0, %227 ], [ %242, %237 ], [ 1, %255 ], [ 0, %251 ], [ 0, %247 ]
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %288, label %259

259:                                              ; preds = %256
  %260 = shl nsw i32 %234, 2
  %261 = sext i32 %260 to i64
  br i1 %13, label %265, label %262

262:                                              ; preds = %259
  %263 = shl nsw i64 %261, 2
  %264 = getelementptr i8, ptr %37, i64 %263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %264, i64 16, i1 false), !tbaa !51
  br label %274

265:                                              ; preds = %259, %265
  %266 = phi i64 [ %272, %265 ], [ 0, %259 ]
  %267 = add nuw nsw i64 %266, %261
  %268 = getelementptr inbounds i8, ptr %37, i64 %267
  %269 = load i8, ptr %268, align 1, !tbaa !47
  %270 = uitofp i8 %269 to float
  %271 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 %266
  store float %270, ptr %271, align 4, !tbaa !51
  %272 = add nuw nsw i64 %266, 1
  %273 = icmp eq i64 %272, 4
  br i1 %273, label %274, label %265, !llvm.loop !66

274:                                              ; preds = %265, %262
  %275 = getelementptr inbounds [25 x float], ptr %4, i64 0, i64 %222
  %276 = load float, ptr %275, align 4, !tbaa !51
  br label %277

277:                                              ; preds = %274, %277
  %278 = phi i64 [ 0, %274 ], [ %284, %277 ]
  %279 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 %278
  %280 = load float, ptr %279, align 4, !tbaa !51
  %281 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 %278
  %282 = load float, ptr %281, align 4, !tbaa !51
  %283 = tail call float @llvm.fmuladd.f32(float %276, float %280, float %282)
  store float %283, ptr %281, align 4, !tbaa !51
  %284 = add nuw nsw i64 %278, 1
  %285 = icmp eq i64 %284, 4
  br i1 %285, label %286, label %277, !llvm.loop !67

286:                                              ; preds = %277
  %287 = fadd float %223, %276
  br label %288

288:                                              ; preds = %286, %256, %221
  %289 = phi float [ %223, %221 ], [ %223, %256 ], [ %287, %286 ]
  %290 = add nsw i64 %222, 1
  %291 = add nsw i32 %224, 1
  %292 = trunc i64 %290 to i32
  %293 = icmp eq i32 %220, %292
  br i1 %293, label %294, label %221, !llvm.loop !68

294:                                              ; preds = %288
  %295 = trunc i64 %290 to i32
  %296 = add nsw i32 %214, 1
  %297 = icmp eq i32 %296, 2
  br i1 %297, label %298, label %212, !llvm.loop !69

298:                                              ; preds = %294
  %299 = fcmp une float %289, 0.000000e+00
  br i1 %299, label %300, label %334

300:                                              ; preds = %298, %300
  %301 = phi i64 [ %305, %300 ], [ 0, %298 ]
  %302 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 %301
  %303 = load float, ptr %302, align 4, !tbaa !51
  %304 = fdiv float %303, %289
  store float %304, ptr %302, align 4, !tbaa !51
  %305 = add nuw nsw i64 %301, 1
  %306 = icmp eq i64 %305, 4
  br i1 %306, label %307, label %300, !llvm.loop !70

307:                                              ; preds = %300
  %308 = shl nsw i32 %73, 2
  %309 = sext i32 %308 to i64
  br i1 %13, label %310, label %312

310:                                              ; preds = %307
  %311 = getelementptr i8, ptr %24, i64 %309
  br label %315

312:                                              ; preds = %307
  %313 = shl nsw i64 %309, 2
  %314 = getelementptr i8, ptr %24, i64 %313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %314, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa !51
  br label %330

315:                                              ; preds = %310, %325
  %316 = phi i64 [ %328, %325 ], [ 0, %310 ]
  %317 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 %316
  %318 = load float, ptr %317, align 4, !tbaa !51
  %319 = fcmp ogt float %318, 2.550000e+02
  br i1 %319, label %325, label %320

320:                                              ; preds = %315
  %321 = fcmp olt float %318, 0.000000e+00
  br i1 %321, label %325, label %322

322:                                              ; preds = %320
  %323 = fadd float %318, 5.000000e-01
  %324 = fptoui float %323 to i8
  br label %325

325:                                              ; preds = %322, %320, %315
  %326 = phi i8 [ -1, %315 ], [ %324, %322 ], [ 0, %320 ]
  %327 = getelementptr i8, ptr %311, i64 %316
  store i8 %326, ptr %327, align 1, !tbaa !47
  %328 = add nuw nsw i64 %316, 1
  %329 = icmp eq i64 %328, 4
  br i1 %329, label %330, label %315, !llvm.loop !71

330:                                              ; preds = %325, %312
  br i1 %50, label %334, label %331

331:                                              ; preds = %330
  %332 = sext i32 %73 to i64
  %333 = getelementptr inbounds i8, ptr %30, i64 %332
  store i8 1, ptr %333, align 1, !tbaa !47
  br label %334

334:                                              ; preds = %330, %331, %298, %208
  %335 = phi i32 [ %70, %298 ], [ %70, %208 ], [ 1, %331 ], [ 1, %330 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  br label %336

336:                                              ; preds = %334, %95
  %337 = phi i32 [ %70, %95 ], [ %335, %334 ]
  %338 = add nuw nsw i32 %71, 1
  %339 = icmp eq i32 %338, %8
  br i1 %339, label %340, label %69, !llvm.loop !72

340:                                              ; preds = %336, %56
  %341 = phi i32 [ %58, %56 ], [ %337, %336 ]
  %342 = add nuw nsw i32 %59, 1
  %343 = icmp slt i32 %342, %10
  %344 = icmp eq i32 %342, %10
  br i1 %344, label %345, label %56, !llvm.loop !73

345:                                              ; preds = %340, %54
  %346 = phi i32 [ 0, %54 ], [ %341, %340 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr align 1 %24, i64 %51, i1 false)
  br i1 %52, label %348, label %347

347:                                              ; preds = %345
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 1 %30, i64 %53, i1 false)
  br label %348

348:                                              ; preds = %347, %345
  %349 = add nuw nsw i32 %55, 1
  %350 = icmp eq i32 %346, 1
  %351 = icmp slt i32 %349, %2
  %352 = select i1 %350, i1 %351, i1 false
  br i1 %352, label %54, label %353, !llvm.loop !74

353:                                              ; preds = %348, %36
  %354 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %354(ptr noundef %24) #9
  %355 = icmp eq ptr %30, null
  br i1 %355, label %358, label %356

356:                                              ; preds = %353
  %357 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %357(ptr noundef nonnull %30) #9
  br label %358

358:                                              ; preds = %356, %353
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local void @IMB_remakemipmap(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 20
  store i32 1, ptr %3, align 8, !tbaa !75
  %4 = icmp eq i32 %1, 0
  br label %5

5:                                                ; preds = %40, %2
  %6 = phi i64 [ 0, %2 ], [ %26, %40 ]
  %7 = phi ptr [ %0, %2 ], [ %23, %40 ]
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 19, i64 %6
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  br i1 %4, label %19, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !43
  %17 = tail call ptr @IMB_allocImBuf(i32 noundef %14, i32 noundef %16, i8 noundef zeroext 32, i32 noundef 1) #9
  tail call void @IMB_filterN(ptr noundef %17, ptr noundef %7)
  %18 = load ptr, ptr %8, align 8, !tbaa !59
  tail call void @imb_onehalf_no_alloc(ptr noundef %18, ptr noundef %17) #9
  tail call void @IMB_freeImBuf(ptr noundef %17) #9
  br label %20

19:                                               ; preds = %11
  tail call void @imb_onehalf_no_alloc(ptr noundef nonnull %9, ptr noundef %7) #9
  br label %20

20:                                               ; preds = %12, %19, %5
  %21 = trunc i64 %6 to i32
  %22 = add i32 %21, 2
  store i32 %22, ptr %3, align 8, !tbaa !75
  %23 = load ptr, ptr %8, align 8, !tbaa !59
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %20
  %26 = add nuw i64 %6, 1
  %27 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 21
  %28 = trunc i64 %26 to i32
  store i32 %28, ptr %27, align 4, !tbaa !76
  %29 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !34
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.ImBuf, ptr %23, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !43
  %35 = icmp sgt i32 %34, 2
  %36 = icmp ult i64 %6, 19
  %37 = and i1 %35, %36
  br i1 %37, label %40, label %41

38:                                               ; preds = %25
  %39 = icmp ult i64 %6, 19
  br i1 %39, label %40, label %41

40:                                               ; preds = %38, %32
  br label %5, !llvm.loop !77

41:                                               ; preds = %20, %32, %38
  ret void
}

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare void @imb_onehalf_no_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @IMB_makemipmap(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  tail call void @imb_freemipmapImBuf(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !78
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %47, label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 20
  store i32 1, ptr %11, align 8, !tbaa !75
  %12 = icmp eq i32 %1, 0
  br label %13

13:                                               ; preds = %46, %10
  %14 = phi i64 [ 0, %10 ], [ %32, %46 ]
  %15 = phi ptr [ %0, %10 ], [ %31, %46 ]
  br i1 %12, label %24, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.ImBuf, ptr %15, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !43
  %21 = tail call ptr @IMB_allocImBuf(i32 noundef %18, i32 noundef %20, i8 noundef zeroext 32, i32 noundef 1) #9
  tail call void @IMB_filterN(ptr noundef %21, ptr noundef %15)
  %22 = tail call ptr @IMB_onehalf(ptr noundef %21) #9
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 19, i64 %14
  store ptr %22, ptr %23, align 8, !tbaa !59
  tail call void @IMB_freeImBuf(ptr noundef %21) #9
  br label %27

24:                                               ; preds = %13
  %25 = tail call ptr @IMB_onehalf(ptr noundef %15) #9
  %26 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 19, i64 %14
  store ptr %25, ptr %26, align 8, !tbaa !59
  br label %27

27:                                               ; preds = %24, %16
  %28 = trunc i64 %14 to i32
  %29 = add i32 %28, 2
  store i32 %29, ptr %11, align 8, !tbaa !75
  %30 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 19, i64 %14
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = add nuw i64 %14, 1
  %33 = getelementptr inbounds %struct.ImBuf, ptr %31, i64 0, i32 21
  %34 = trunc i64 %32 to i32
  store i32 %34, ptr %33, align 4, !tbaa !76
  %35 = getelementptr inbounds %struct.ImBuf, ptr %31, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !34
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.ImBuf, ptr %31, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !43
  %41 = icmp sgt i32 %40, 2
  %42 = icmp ult i64 %14, 19
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %46, label %47

44:                                               ; preds = %27
  %45 = icmp ult i64 %14, 19
  br i1 %45, label %46, label %47

46:                                               ; preds = %44, %38
  br label %13, !llvm.loop !79

47:                                               ; preds = %44, %38, %6
  ret void
}

declare void @imb_freemipmapImBuf(ptr noundef) local_unnamed_addr #3

declare ptr @IMB_onehalf(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @IMB_getmipmap(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 20
  %6 = load i32, ptr %5, align 8, !tbaa !75
  %7 = icmp sgt i32 %6, %1
  %8 = add nsw i32 %6, -1
  %9 = select i1 %7, i32 %1, i32 %8
  br label %10

10:                                               ; preds = %4, %2
  %11 = phi i32 [ 0, %2 ], [ %9, %4 ]
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = add nsw i32 %11, -1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 19, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  br label %18

18:                                               ; preds = %10, %13
  %19 = phi ptr [ %17, %13 ], [ %0, %10 ]
  ret ptr %19
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_premultiply_rect(ptr nocapture noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i8 %1, 24
  %6 = icmp sgt i32 %3, 0
  br i1 %5, label %10, label %7

7:                                                ; preds = %4
  br i1 %6, label %8, label %60

8:                                                ; preds = %7
  %9 = icmp sgt i32 %2, 0
  br label %27

10:                                               ; preds = %4
  br i1 %6, label %11, label %60

11:                                               ; preds = %10
  %12 = icmp sgt i32 %2, 0
  br label %13

13:                                               ; preds = %11, %23
  %14 = phi ptr [ %0, %11 ], [ %24, %23 ]
  %15 = phi i32 [ 0, %11 ], [ %25, %23 ]
  br i1 %12, label %16, label %23

16:                                               ; preds = %13, %16
  %17 = phi ptr [ %21, %16 ], [ %14, %13 ]
  %18 = phi i32 [ %20, %16 ], [ 0, %13 ]
  %19 = getelementptr inbounds i8, ptr %17, i64 3
  store i8 -1, ptr %19, align 1, !tbaa !47
  %20 = add nuw nsw i32 %18, 1
  %21 = getelementptr inbounds i8, ptr %17, i64 4
  %22 = icmp eq i32 %20, %2
  br i1 %22, label %23, label %16, !llvm.loop !80

23:                                               ; preds = %16, %13
  %24 = phi ptr [ %14, %13 ], [ %21, %16 ]
  %25 = add nuw nsw i32 %15, 1
  %26 = icmp eq i32 %25, %3
  br i1 %26, label %60, label %13, !llvm.loop !81

27:                                               ; preds = %8, %56
  %28 = phi ptr [ %0, %8 ], [ %57, %56 ]
  %29 = phi i32 [ 0, %8 ], [ %58, %56 ]
  br i1 %9, label %30, label %56

30:                                               ; preds = %27, %30
  %31 = phi ptr [ %54, %30 ], [ %28, %27 ]
  %32 = phi i32 [ %53, %30 ], [ 0, %27 ]
  %33 = getelementptr inbounds i8, ptr %31, i64 3
  %34 = load i8, ptr %33, align 1, !tbaa !47
  %35 = zext i8 %34 to i32
  %36 = load i8, ptr %31, align 1, !tbaa !47
  %37 = zext i8 %36 to i32
  %38 = mul nuw nsw i32 %37, %35
  %39 = lshr i32 %38, 8
  %40 = trunc i32 %39 to i8
  store i8 %40, ptr %31, align 1, !tbaa !47
  %41 = getelementptr inbounds i8, ptr %31, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !47
  %43 = zext i8 %42 to i32
  %44 = mul nuw nsw i32 %43, %35
  %45 = lshr i32 %44, 8
  %46 = trunc i32 %45 to i8
  store i8 %46, ptr %41, align 1, !tbaa !47
  %47 = getelementptr inbounds i8, ptr %31, i64 2
  %48 = load i8, ptr %47, align 1, !tbaa !47
  %49 = zext i8 %48 to i32
  %50 = mul nuw nsw i32 %49, %35
  %51 = lshr i32 %50, 8
  %52 = trunc i32 %51 to i8
  store i8 %52, ptr %47, align 1, !tbaa !47
  %53 = add nuw nsw i32 %32, 1
  %54 = getelementptr inbounds i8, ptr %31, i64 4
  %55 = icmp eq i32 %53, %2
  br i1 %55, label %56, label %30, !llvm.loop !82

56:                                               ; preds = %30, %27
  %57 = phi ptr [ %28, %27 ], [ %54, %30 ]
  %58 = add nuw nsw i32 %29, 1
  %59 = icmp eq i32 %58, %3
  br i1 %59, label %60, label %27, !llvm.loop !83

60:                                               ; preds = %56, %23, %7, %10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_premultiply_rect_float(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %1, 4
  %6 = icmp sgt i32 %3, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %4
  %9 = icmp sgt i32 %2, 0
  br label %10

10:                                               ; preds = %8, %29
  %11 = phi i32 [ 0, %8 ], [ %31, %29 ]
  %12 = phi ptr [ %0, %8 ], [ %30, %29 ]
  br i1 %9, label %13, label %29

13:                                               ; preds = %10, %13
  %14 = phi i32 [ %26, %13 ], [ 0, %10 ]
  %15 = phi ptr [ %27, %13 ], [ %12, %10 ]
  %16 = getelementptr inbounds float, ptr %15, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !51
  %18 = load float, ptr %15, align 4, !tbaa !51
  %19 = fmul float %17, %18
  store float %19, ptr %15, align 4, !tbaa !51
  %20 = getelementptr inbounds float, ptr %15, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !51
  %22 = fmul float %17, %21
  store float %22, ptr %20, align 4, !tbaa !51
  %23 = getelementptr inbounds float, ptr %15, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !51
  %25 = fmul float %17, %24
  store float %25, ptr %23, align 4, !tbaa !51
  %26 = add nuw nsw i32 %14, 1
  %27 = getelementptr inbounds float, ptr %15, i64 4
  %28 = icmp eq i32 %26, %2
  br i1 %28, label %29, label %13, !llvm.loop !84

29:                                               ; preds = %13, %10
  %30 = phi ptr [ %12, %10 ], [ %27, %13 ]
  %31 = add nuw nsw i32 %11, 1
  %32 = icmp eq i32 %31, %3
  br i1 %32, label %33, label %10, !llvm.loop !85

33:                                               ; preds = %29, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_premultiply_alpha(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %108, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %69, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %9 = load i8, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !43
  %14 = icmp eq i8 %9, 24
  %15 = icmp sgt i32 %13, 0
  br i1 %14, label %19, label %16

16:                                               ; preds = %7
  br i1 %15, label %17, label %69

17:                                               ; preds = %16
  %18 = icmp sgt i32 %11, 0
  br label %36

19:                                               ; preds = %7
  br i1 %15, label %20, label %69

20:                                               ; preds = %19
  %21 = icmp sgt i32 %11, 0
  br label %22

22:                                               ; preds = %32, %20
  %23 = phi ptr [ %5, %20 ], [ %33, %32 ]
  %24 = phi i32 [ 0, %20 ], [ %34, %32 ]
  br i1 %21, label %25, label %32

25:                                               ; preds = %22, %25
  %26 = phi ptr [ %30, %25 ], [ %23, %22 ]
  %27 = phi i32 [ %29, %25 ], [ 0, %22 ]
  %28 = getelementptr inbounds i8, ptr %26, i64 3
  store i8 -1, ptr %28, align 1, !tbaa !47
  %29 = add nuw nsw i32 %27, 1
  %30 = getelementptr inbounds i8, ptr %26, i64 4
  %31 = icmp eq i32 %29, %11
  br i1 %31, label %32, label %25, !llvm.loop !80

32:                                               ; preds = %25, %22
  %33 = phi ptr [ %23, %22 ], [ %30, %25 ]
  %34 = add nuw nsw i32 %24, 1
  %35 = icmp eq i32 %34, %13
  br i1 %35, label %69, label %22, !llvm.loop !81

36:                                               ; preds = %65, %17
  %37 = phi ptr [ %5, %17 ], [ %66, %65 ]
  %38 = phi i32 [ 0, %17 ], [ %67, %65 ]
  br i1 %18, label %39, label %65

39:                                               ; preds = %36, %39
  %40 = phi ptr [ %63, %39 ], [ %37, %36 ]
  %41 = phi i32 [ %62, %39 ], [ 0, %36 ]
  %42 = getelementptr inbounds i8, ptr %40, i64 3
  %43 = load i8, ptr %42, align 1, !tbaa !47
  %44 = zext i8 %43 to i32
  %45 = load i8, ptr %40, align 1, !tbaa !47
  %46 = zext i8 %45 to i32
  %47 = mul nuw nsw i32 %46, %44
  %48 = lshr i32 %47, 8
  %49 = trunc i32 %48 to i8
  store i8 %49, ptr %40, align 1, !tbaa !47
  %50 = getelementptr inbounds i8, ptr %40, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !47
  %52 = zext i8 %51 to i32
  %53 = mul nuw nsw i32 %52, %44
  %54 = lshr i32 %53, 8
  %55 = trunc i32 %54 to i8
  store i8 %55, ptr %50, align 1, !tbaa !47
  %56 = getelementptr inbounds i8, ptr %40, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !47
  %58 = zext i8 %57 to i32
  %59 = mul nuw nsw i32 %58, %44
  %60 = lshr i32 %59, 8
  %61 = trunc i32 %60 to i8
  store i8 %61, ptr %56, align 1, !tbaa !47
  %62 = add nuw nsw i32 %41, 1
  %63 = getelementptr inbounds i8, ptr %40, i64 4
  %64 = icmp eq i32 %62, %11
  br i1 %64, label %65, label %39, !llvm.loop !82

65:                                               ; preds = %39, %36
  %66 = phi ptr [ %37, %36 ], [ %63, %39 ]
  %67 = add nuw nsw i32 %38, 1
  %68 = icmp eq i32 %67, %13
  br i1 %68, label %69, label %36, !llvm.loop !83

69:                                               ; preds = %65, %32, %19, %16, %3
  %70 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %71 = load ptr, ptr %70, align 8, !tbaa !44
  %72 = icmp eq ptr %71, null
  br i1 %72, label %108, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %75 = load i32, ptr %74, align 4, !tbaa !78
  %76 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !34
  %78 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %79 = load i32, ptr %78, align 4, !tbaa !43
  %80 = icmp eq i32 %75, 4
  %81 = icmp sgt i32 %79, 0
  %82 = select i1 %80, i1 %81, i1 false
  br i1 %82, label %83, label %108

83:                                               ; preds = %73
  %84 = icmp sgt i32 %77, 0
  br label %85

85:                                               ; preds = %83, %104
  %86 = phi i32 [ 0, %83 ], [ %106, %104 ]
  %87 = phi ptr [ %71, %83 ], [ %105, %104 ]
  br i1 %84, label %88, label %104

88:                                               ; preds = %85, %88
  %89 = phi i32 [ %101, %88 ], [ 0, %85 ]
  %90 = phi ptr [ %102, %88 ], [ %87, %85 ]
  %91 = getelementptr inbounds float, ptr %90, i64 3
  %92 = load float, ptr %91, align 4, !tbaa !51
  %93 = load float, ptr %90, align 4, !tbaa !51
  %94 = fmul float %92, %93
  store float %94, ptr %90, align 4, !tbaa !51
  %95 = getelementptr inbounds float, ptr %90, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !51
  %97 = fmul float %92, %96
  store float %97, ptr %95, align 4, !tbaa !51
  %98 = getelementptr inbounds float, ptr %90, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !51
  %100 = fmul float %92, %99
  store float %100, ptr %98, align 4, !tbaa !51
  %101 = add nuw nsw i32 %89, 1
  %102 = getelementptr inbounds float, ptr %90, i64 4
  %103 = icmp eq i32 %101, %77
  br i1 %103, label %104, label %88, !llvm.loop !84

104:                                              ; preds = %88, %85
  %105 = phi ptr [ %87, %85 ], [ %102, %88 ]
  %106 = add nuw nsw i32 %86, 1
  %107 = icmp eq i32 %106, %79
  br i1 %107, label %108, label %85, !llvm.loop !85

108:                                              ; preds = %104, %73, %1, %69
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_unpremultiply_rect(ptr nocapture noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i8 %1, 24
  %6 = icmp sgt i32 %3, 0
  br i1 %5, label %10, label %7

7:                                                ; preds = %4
  br i1 %6, label %8, label %81

8:                                                ; preds = %7
  %9 = icmp sgt i32 %2, 0
  br label %27

10:                                               ; preds = %4
  br i1 %6, label %11, label %81

11:                                               ; preds = %10
  %12 = icmp sgt i32 %2, 0
  br label %13

13:                                               ; preds = %11, %23
  %14 = phi ptr [ %0, %11 ], [ %24, %23 ]
  %15 = phi i32 [ 0, %11 ], [ %25, %23 ]
  br i1 %12, label %16, label %23

16:                                               ; preds = %13, %16
  %17 = phi ptr [ %21, %16 ], [ %14, %13 ]
  %18 = phi i32 [ %20, %16 ], [ 0, %13 ]
  %19 = getelementptr inbounds i8, ptr %17, i64 3
  store i8 -1, ptr %19, align 1, !tbaa !47
  %20 = add nuw nsw i32 %18, 1
  %21 = getelementptr inbounds i8, ptr %17, i64 4
  %22 = icmp eq i32 %20, %2
  br i1 %22, label %23, label %16, !llvm.loop !86

23:                                               ; preds = %16, %13
  %24 = phi ptr [ %14, %13 ], [ %21, %16 ]
  %25 = add nuw nsw i32 %15, 1
  %26 = icmp eq i32 %25, %3
  br i1 %26, label %81, label %13, !llvm.loop !87

27:                                               ; preds = %8, %77
  %28 = phi ptr [ %0, %8 ], [ %78, %77 ]
  %29 = phi i32 [ 0, %8 ], [ %79, %77 ]
  br i1 %9, label %30, label %77

30:                                               ; preds = %27, %71
  %31 = phi ptr [ %75, %71 ], [ %28, %27 ]
  %32 = phi i32 [ %74, %71 ], [ 0, %27 ]
  %33 = getelementptr inbounds i8, ptr %31, i64 3
  %34 = load i8, ptr %33, align 1, !tbaa !47
  %35 = icmp eq i8 %34, 0
  %36 = uitofp i8 %34 to float
  %37 = fdiv float 1.000000e+00, %36
  %38 = select i1 %35, float 1.000000e+00, float %37
  %39 = load i8, ptr %31, align 1, !tbaa !47
  %40 = uitofp i8 %39 to float
  %41 = fmul float %38, %40
  %42 = fcmp ugt float %41, 0.000000e+00
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = fcmp ogt float %41, 0x3FEFEFEFE0000000
  br i1 %44, label %47, label %45

45:                                               ; preds = %43
  %46 = tail call float @llvm.fmuladd.f32(float %41, float 2.550000e+02, float 5.000000e-01)
  br label %47

47:                                               ; preds = %45, %43, %30
  %48 = phi float [ 0.000000e+00, %30 ], [ %46, %45 ], [ 2.550000e+02, %43 ]
  %49 = fptoui float %48 to i8
  store i8 %49, ptr %31, align 1, !tbaa !47
  %50 = getelementptr inbounds i8, ptr %31, i64 1
  %51 = load i8, ptr %50, align 1, !tbaa !47
  %52 = uitofp i8 %51 to float
  %53 = fmul float %38, %52
  %54 = fcmp ugt float %53, 0.000000e+00
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = fcmp ogt float %53, 0x3FEFEFEFE0000000
  br i1 %56, label %59, label %57

57:                                               ; preds = %55
  %58 = tail call float @llvm.fmuladd.f32(float %53, float 2.550000e+02, float 5.000000e-01)
  br label %59

59:                                               ; preds = %57, %55, %47
  %60 = phi float [ 0.000000e+00, %47 ], [ %58, %57 ], [ 2.550000e+02, %55 ]
  %61 = fptoui float %60 to i8
  store i8 %61, ptr %50, align 1, !tbaa !47
  %62 = getelementptr inbounds i8, ptr %31, i64 2
  %63 = load i8, ptr %62, align 1, !tbaa !47
  %64 = uitofp i8 %63 to float
  %65 = fmul float %38, %64
  %66 = fcmp ugt float %65, 0.000000e+00
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = fcmp ogt float %65, 0x3FEFEFEFE0000000
  br i1 %68, label %71, label %69

69:                                               ; preds = %67
  %70 = tail call float @llvm.fmuladd.f32(float %65, float 2.550000e+02, float 5.000000e-01)
  br label %71

71:                                               ; preds = %69, %67, %59
  %72 = phi float [ 0.000000e+00, %59 ], [ %70, %69 ], [ 2.550000e+02, %67 ]
  %73 = fptoui float %72 to i8
  store i8 %73, ptr %62, align 1, !tbaa !47
  %74 = add nuw nsw i32 %32, 1
  %75 = getelementptr inbounds i8, ptr %31, i64 4
  %76 = icmp eq i32 %74, %2
  br i1 %76, label %77, label %30, !llvm.loop !88

77:                                               ; preds = %71, %27
  %78 = phi ptr [ %28, %27 ], [ %75, %71 ]
  %79 = add nuw nsw i32 %29, 1
  %80 = icmp eq i32 %79, %3
  br i1 %80, label %81, label %27, !llvm.loop !89

81:                                               ; preds = %77, %23, %7, %10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_unpremultiply_rect_float(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %1, 4
  %6 = icmp sgt i32 %3, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %4
  %9 = icmp sgt i32 %2, 0
  br label %10

10:                                               ; preds = %8, %32
  %11 = phi i32 [ 0, %8 ], [ %34, %32 ]
  %12 = phi ptr [ %0, %8 ], [ %33, %32 ]
  br i1 %9, label %13, label %32

13:                                               ; preds = %10, %13
  %14 = phi i32 [ %29, %13 ], [ 0, %10 ]
  %15 = phi ptr [ %30, %13 ], [ %12, %10 ]
  %16 = getelementptr inbounds float, ptr %15, i64 3
  %17 = load float, ptr %16, align 4, !tbaa !51
  %18 = fcmp une float %17, 0.000000e+00
  %19 = fdiv float 1.000000e+00, %17
  %20 = select i1 %18, float %19, float 1.000000e+00
  %21 = load float, ptr %15, align 4, !tbaa !51
  %22 = fmul float %21, %20
  store float %22, ptr %15, align 4, !tbaa !51
  %23 = getelementptr inbounds float, ptr %15, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !51
  %25 = fmul float %20, %24
  store float %25, ptr %23, align 4, !tbaa !51
  %26 = getelementptr inbounds float, ptr %15, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !51
  %28 = fmul float %20, %27
  store float %28, ptr %26, align 4, !tbaa !51
  %29 = add nuw nsw i32 %14, 1
  %30 = getelementptr inbounds float, ptr %15, i64 4
  %31 = icmp eq i32 %29, %2
  br i1 %31, label %32, label %13, !llvm.loop !90

32:                                               ; preds = %13, %10
  %33 = phi ptr [ %12, %10 ], [ %30, %13 ]
  %34 = add nuw nsw i32 %11, 1
  %35 = icmp eq i32 %34, %3
  br i1 %35, label %36, label %10, !llvm.loop !91

36:                                               ; preds = %32, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_unpremultiply_alpha(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %56, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %9 = load i8, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !43
  tail call void @IMB_unpremultiply_rect(ptr noundef nonnull %5, i8 noundef zeroext %9, i32 noundef %11, i32 noundef %13)
  br label %14

14:                                               ; preds = %7, %3
  %15 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = icmp eq ptr %16, null
  br i1 %17, label %56, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !78
  %21 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !43
  %25 = icmp eq i32 %20, 4
  %26 = icmp sgt i32 %24, 0
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %56

28:                                               ; preds = %18
  %29 = icmp sgt i32 %22, 0
  br label %30

30:                                               ; preds = %28, %52
  %31 = phi i32 [ 0, %28 ], [ %54, %52 ]
  %32 = phi ptr [ %16, %28 ], [ %53, %52 ]
  br i1 %29, label %33, label %52

33:                                               ; preds = %30, %33
  %34 = phi i32 [ %49, %33 ], [ 0, %30 ]
  %35 = phi ptr [ %50, %33 ], [ %32, %30 ]
  %36 = getelementptr inbounds float, ptr %35, i64 3
  %37 = load float, ptr %36, align 4, !tbaa !51
  %38 = fcmp une float %37, 0.000000e+00
  %39 = fdiv float 1.000000e+00, %37
  %40 = select i1 %38, float %39, float 1.000000e+00
  %41 = load float, ptr %35, align 4, !tbaa !51
  %42 = fmul float %41, %40
  store float %42, ptr %35, align 4, !tbaa !51
  %43 = getelementptr inbounds float, ptr %35, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !51
  %45 = fmul float %40, %44
  store float %45, ptr %43, align 4, !tbaa !51
  %46 = getelementptr inbounds float, ptr %35, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !51
  %48 = fmul float %40, %47
  store float %48, ptr %46, align 4, !tbaa !51
  %49 = add nuw nsw i32 %34, 1
  %50 = getelementptr inbounds float, ptr %35, i64 4
  %51 = icmp eq i32 %49, %22
  br i1 %51, label %52, label %33, !llvm.loop !90

52:                                               ; preds = %33, %30
  %53 = phi ptr [ %32, %30 ], [ %50, %33 ]
  %54 = add nuw nsw i32 %31, 1
  %55 = icmp eq i32 %54, %24
  br i1 %55, label %56, label %30, !llvm.loop !91

56:                                               ; preds = %52, %18, %1, %14
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

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
!34 = !{!35, !39, i64 16}
!35 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !42, i64 2456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!42 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!43 = !{!35, !39, i64 20}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 40}
!46 = !{!35, !37, i64 24}
!47 = !{!37, !37, i64 0}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!40, !40, i64 0}
!52 = distinct !{!52, !49, !50}
!53 = distinct !{!53, !49, !50}
!54 = distinct !{!54, !49, !50}
!55 = distinct !{!55, !49, !50}
!56 = distinct !{!56, !49, !50}
!57 = distinct !{!57, !49, !50}
!58 = distinct !{!58, !49, !50}
!59 = !{!36, !36, i64 0}
!60 = distinct !{!60, !49, !50}
!61 = distinct !{!61, !49, !50}
!62 = distinct !{!62, !49, !50}
!63 = distinct !{!63, !49, !50}
!64 = distinct !{!64, !49, !50}
!65 = distinct !{!65, !49, !50}
!66 = distinct !{!66, !49, !50}
!67 = distinct !{!67, !49, !50}
!68 = distinct !{!68, !49, !50}
!69 = distinct !{!69, !49, !50}
!70 = distinct !{!70, !49, !50}
!71 = distinct !{!71, !49, !50}
!72 = distinct !{!72, !49, !50}
!73 = distinct !{!73, !49, !50}
!74 = distinct !{!74, !49, !50}
!75 = !{!35, !39, i64 280}
!76 = !{!35, !39, i64 284}
!77 = distinct !{!77, !49, !50}
!78 = !{!35, !39, i64 28}
!79 = distinct !{!79, !49, !50}
!80 = distinct !{!80, !49, !50}
!81 = distinct !{!81, !49, !50}
!82 = distinct !{!82, !49, !50}
!83 = distinct !{!83, !49, !50}
!84 = distinct !{!84, !49, !50}
!85 = distinct !{!85, !49, !50}
!86 = distinct !{!86, !49, !50}
!87 = distinct !{!87, !49, !50}
!88 = distinct !{!88, !49, !50}
!89 = distinct !{!89, !49, !50}
!90 = distinct !{!90, !49, !50}
!91 = distinct !{!91, !49, !50}
