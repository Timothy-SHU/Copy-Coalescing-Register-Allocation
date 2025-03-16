; ModuleID = 'src/jidctfst.c'
source_filename = "src/jidctfst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @jpeg_idct_ifast(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [64 x i32], align 16
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 61
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #2
  %9 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  br label %14

11:                                               ; preds = %135
  %12 = getelementptr inbounds i8, ptr %8, i64 128
  %13 = zext i32 %4 to i64
  br label %144

14:                                               ; preds = %5, %135
  %15 = phi i32 [ 8, %5 ], [ %142, %135 ]
  %16 = phi ptr [ %6, %5 ], [ %139, %135 ]
  %17 = phi ptr [ %10, %5 ], [ %140, %135 ]
  %18 = phi ptr [ %2, %5 ], [ %141, %135 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 8
  %20 = load i16, ptr %19, align 2, !tbaa !15
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds i16, ptr %18, i64 16
  %23 = load i16, ptr %22, align 2, !tbaa !15
  %24 = sext i16 %23 to i32
  %25 = or i32 %24, %21
  %26 = getelementptr inbounds i16, ptr %18, i64 24
  %27 = load i16, ptr %26, align 2, !tbaa !15
  %28 = sext i16 %27 to i32
  %29 = or i32 %25, %28
  %30 = getelementptr inbounds i16, ptr %18, i64 32
  %31 = load i16, ptr %30, align 2, !tbaa !15
  %32 = sext i16 %31 to i32
  %33 = or i32 %29, %32
  %34 = getelementptr inbounds i16, ptr %18, i64 40
  %35 = load i16, ptr %34, align 2, !tbaa !15
  %36 = sext i16 %35 to i32
  %37 = or i32 %33, %36
  %38 = getelementptr inbounds i16, ptr %18, i64 48
  %39 = load i16, ptr %38, align 2, !tbaa !15
  %40 = sext i16 %39 to i32
  %41 = or i32 %37, %40
  %42 = getelementptr inbounds i16, ptr %18, i64 56
  %43 = load i16, ptr %42, align 2, !tbaa !15
  %44 = sext i16 %43 to i32
  %45 = or i32 %41, %44
  %46 = icmp eq i32 %45, 0
  %47 = load i16, ptr %18, align 2, !tbaa !15
  %48 = sext i16 %47 to i32
  %49 = load i32, ptr %17, align 4, !tbaa !16
  %50 = mul nsw i32 %49, %48
  br i1 %46, label %51, label %58

51:                                               ; preds = %14
  store i32 %50, ptr %16, align 4, !tbaa !16
  %52 = getelementptr inbounds i32, ptr %16, i64 8
  store i32 %50, ptr %52, align 4, !tbaa !16
  %53 = getelementptr inbounds i32, ptr %16, i64 16
  store i32 %50, ptr %53, align 4, !tbaa !16
  %54 = getelementptr inbounds i32, ptr %16, i64 24
  store i32 %50, ptr %54, align 4, !tbaa !16
  %55 = getelementptr inbounds i32, ptr %16, i64 32
  store i32 %50, ptr %55, align 4, !tbaa !16
  %56 = getelementptr inbounds i32, ptr %16, i64 40
  store i32 %50, ptr %56, align 4, !tbaa !16
  %57 = getelementptr inbounds i32, ptr %16, i64 48
  store i32 %50, ptr %57, align 4, !tbaa !16
  br label %135

58:                                               ; preds = %14
  %59 = getelementptr inbounds i32, ptr %17, i64 16
  %60 = load i32, ptr %59, align 4, !tbaa !16
  %61 = mul nsw i32 %60, %24
  %62 = getelementptr inbounds i32, ptr %17, i64 32
  %63 = load i32, ptr %62, align 4, !tbaa !16
  %64 = mul nsw i32 %63, %32
  %65 = getelementptr inbounds i32, ptr %17, i64 48
  %66 = load i32, ptr %65, align 4, !tbaa !16
  %67 = mul nsw i32 %66, %40
  %68 = add nsw i32 %64, %50
  %69 = sub nsw i32 %50, %64
  %70 = add nsw i32 %67, %61
  %71 = sub nsw i32 %61, %67
  %72 = sext i32 %71 to i64
  %73 = mul nsw i64 %72, 362
  %74 = lshr i64 %73, 8
  %75 = trunc i64 %74 to i32
  %76 = sub nsw i32 %75, %70
  %77 = add nsw i32 %70, %68
  %78 = sub nsw i32 %68, %70
  %79 = add nsw i32 %76, %69
  %80 = sub nsw i32 %69, %76
  %81 = getelementptr inbounds i32, ptr %17, i64 8
  %82 = load i32, ptr %81, align 4, !tbaa !16
  %83 = mul nsw i32 %82, %21
  %84 = getelementptr inbounds i32, ptr %17, i64 24
  %85 = load i32, ptr %84, align 4, !tbaa !16
  %86 = mul nsw i32 %85, %28
  %87 = getelementptr inbounds i32, ptr %17, i64 40
  %88 = load i32, ptr %87, align 4, !tbaa !16
  %89 = mul nsw i32 %88, %36
  %90 = getelementptr inbounds i32, ptr %17, i64 56
  %91 = load i32, ptr %90, align 4, !tbaa !16
  %92 = mul nsw i32 %91, %44
  %93 = add nsw i32 %89, %86
  %94 = sub nsw i32 %89, %86
  %95 = add nsw i32 %92, %83
  %96 = sub nsw i32 %83, %92
  %97 = add nsw i32 %95, %93
  %98 = sub nsw i32 %95, %93
  %99 = sext i32 %98 to i64
  %100 = mul nsw i64 %99, 362
  %101 = lshr i64 %100, 8
  %102 = trunc i64 %101 to i32
  %103 = add nsw i32 %96, %94
  %104 = sext i32 %103 to i64
  %105 = mul nsw i64 %104, 473
  %106 = lshr i64 %105, 8
  %107 = trunc i64 %106 to i32
  %108 = sext i32 %96 to i64
  %109 = mul nsw i64 %108, 277
  %110 = lshr i64 %109, 8
  %111 = trunc i64 %110 to i32
  %112 = sub nsw i32 %111, %107
  %113 = sext i32 %94 to i64
  %114 = mul i64 %113, 1099511627107
  %115 = lshr i64 %114, 8
  %116 = trunc i64 %115 to i32
  %117 = sub i32 %116, %97
  %118 = add i32 %117, %107
  %119 = sub nsw i32 %102, %118
  %120 = add nsw i32 %119, %112
  %121 = add nsw i32 %97, %77
  store i32 %121, ptr %16, align 4, !tbaa !16
  %122 = sub nsw i32 %77, %97
  %123 = getelementptr inbounds i32, ptr %16, i64 56
  store i32 %122, ptr %123, align 4, !tbaa !16
  %124 = add nsw i32 %118, %79
  %125 = getelementptr inbounds i32, ptr %16, i64 8
  store i32 %124, ptr %125, align 4, !tbaa !16
  %126 = sub nsw i32 %79, %118
  %127 = getelementptr inbounds i32, ptr %16, i64 48
  store i32 %126, ptr %127, align 4, !tbaa !16
  %128 = add nsw i32 %119, %80
  %129 = getelementptr inbounds i32, ptr %16, i64 16
  store i32 %128, ptr %129, align 4, !tbaa !16
  %130 = sub nsw i32 %80, %119
  %131 = getelementptr inbounds i32, ptr %16, i64 40
  store i32 %130, ptr %131, align 4, !tbaa !16
  %132 = add nsw i32 %120, %78
  %133 = getelementptr inbounds i32, ptr %16, i64 32
  store i32 %132, ptr %133, align 4, !tbaa !16
  %134 = sub nsw i32 %78, %120
  br label %135

135:                                              ; preds = %58, %51
  %136 = phi i64 [ 24, %58 ], [ 56, %51 ]
  %137 = phi i32 [ %134, %58 ], [ %50, %51 ]
  %138 = getelementptr inbounds i32, ptr %16, i64 %136
  store i32 %137, ptr %138, align 4, !tbaa !16
  %139 = getelementptr inbounds i32, ptr %16, i64 1
  %140 = getelementptr inbounds i32, ptr %17, i64 1
  %141 = getelementptr inbounds i16, ptr %18, i64 1
  %142 = add nsw i32 %15, -1
  %143 = icmp ugt i32 %15, 1
  br i1 %143, label %14, label %11, !llvm.loop !17

144:                                              ; preds = %11, %280
  %145 = phi i64 [ 0, %11 ], [ %285, %280 ]
  %146 = phi ptr [ %6, %11 ], [ %284, %280 ]
  %147 = getelementptr inbounds ptr, ptr %3, i64 %145
  %148 = load ptr, ptr %147, align 8, !tbaa !19
  %149 = getelementptr inbounds i8, ptr %148, i64 %13
  %150 = getelementptr inbounds i32, ptr %146, i64 1
  %151 = load i32, ptr %150, align 4, !tbaa !16
  %152 = getelementptr inbounds i32, ptr %146, i64 2
  %153 = load i32, ptr %152, align 4, !tbaa !16
  %154 = or i32 %153, %151
  %155 = getelementptr inbounds i32, ptr %146, i64 3
  %156 = load i32, ptr %155, align 4, !tbaa !16
  %157 = or i32 %154, %156
  %158 = getelementptr inbounds i32, ptr %146, i64 4
  %159 = load i32, ptr %158, align 4, !tbaa !16
  %160 = or i32 %157, %159
  %161 = getelementptr inbounds i32, ptr %146, i64 5
  %162 = load i32, ptr %161, align 4, !tbaa !16
  %163 = or i32 %160, %162
  %164 = getelementptr inbounds i32, ptr %146, i64 6
  %165 = load i32, ptr %164, align 4, !tbaa !16
  %166 = or i32 %163, %165
  %167 = getelementptr inbounds i32, ptr %146, i64 7
  %168 = load i32, ptr %167, align 4, !tbaa !16
  %169 = or i32 %166, %168
  %170 = icmp eq i32 %169, 0
  %171 = load i32, ptr %146, align 4, !tbaa !16
  br i1 %170, label %172, label %184

172:                                              ; preds = %144
  %173 = lshr i32 %171, 5
  %174 = and i32 %173, 1023
  %175 = zext nneg i32 %174 to i64
  %176 = getelementptr inbounds i8, ptr %12, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !20
  store i8 %177, ptr %149, align 1, !tbaa !20
  %178 = getelementptr inbounds i8, ptr %149, i64 1
  store i8 %177, ptr %178, align 1, !tbaa !20
  %179 = getelementptr inbounds i8, ptr %149, i64 2
  store i8 %177, ptr %179, align 1, !tbaa !20
  %180 = getelementptr inbounds i8, ptr %149, i64 3
  store i8 %177, ptr %180, align 1, !tbaa !20
  %181 = getelementptr inbounds i8, ptr %149, i64 4
  store i8 %177, ptr %181, align 1, !tbaa !20
  %182 = getelementptr inbounds i8, ptr %149, i64 5
  store i8 %177, ptr %182, align 1, !tbaa !20
  %183 = getelementptr inbounds i8, ptr %149, i64 6
  store i8 %177, ptr %183, align 1, !tbaa !20
  br label %280

184:                                              ; preds = %144
  %185 = add nsw i32 %171, %159
  %186 = sub nsw i32 %171, %159
  %187 = add nsw i32 %165, %153
  %188 = sub nsw i32 %153, %165
  %189 = zext i32 %188 to i64
  %190 = mul nuw nsw i64 %189, 362
  %191 = lshr i64 %190, 8
  %192 = trunc i64 %191 to i32
  %193 = sub i32 %192, %187
  %194 = add nsw i32 %185, %187
  %195 = sub nsw i32 %185, %187
  %196 = add i32 %186, %193
  %197 = sub i32 %186, %193
  %198 = add nsw i32 %162, %156
  %199 = sub nsw i32 %162, %156
  %200 = add nsw i32 %168, %151
  %201 = sub nsw i32 %151, %168
  %202 = add nsw i32 %200, %198
  %203 = sub nsw i32 %200, %198
  %204 = zext i32 %203 to i64
  %205 = mul nuw nsw i64 %204, 362
  %206 = lshr i64 %205, 8
  %207 = trunc i64 %206 to i32
  %208 = add nsw i32 %201, %199
  %209 = zext i32 %208 to i64
  %210 = mul nuw nsw i64 %209, 473
  %211 = lshr i64 %210, 8
  %212 = trunc i64 %211 to i32
  %213 = zext i32 %201 to i64
  %214 = mul nuw nsw i64 %213, 277
  %215 = lshr i64 %214, 8
  %216 = trunc i64 %215 to i32
  %217 = sub i32 %216, %212
  %218 = zext i32 %199 to i64
  %219 = mul i64 %218, 1099511627107
  %220 = lshr i64 %219, 8
  %221 = trunc i64 %220 to i32
  %222 = sub i32 %221, %202
  %223 = add i32 %222, %212
  %224 = sub i32 %207, %223
  %225 = add i32 %224, %217
  %226 = add nsw i32 %194, %202
  %227 = lshr i32 %226, 5
  %228 = and i32 %227, 1023
  %229 = zext nneg i32 %228 to i64
  %230 = getelementptr inbounds i8, ptr %12, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !20
  store i8 %231, ptr %149, align 1, !tbaa !20
  %232 = sub nsw i32 %194, %202
  %233 = lshr i32 %232, 5
  %234 = and i32 %233, 1023
  %235 = zext nneg i32 %234 to i64
  %236 = getelementptr inbounds i8, ptr %12, i64 %235
  %237 = load i8, ptr %236, align 1, !tbaa !20
  %238 = getelementptr inbounds i8, ptr %149, i64 7
  store i8 %237, ptr %238, align 1, !tbaa !20
  %239 = add i32 %196, %223
  %240 = lshr i32 %239, 5
  %241 = and i32 %240, 1023
  %242 = zext nneg i32 %241 to i64
  %243 = getelementptr inbounds i8, ptr %12, i64 %242
  %244 = load i8, ptr %243, align 1, !tbaa !20
  %245 = getelementptr inbounds i8, ptr %149, i64 1
  store i8 %244, ptr %245, align 1, !tbaa !20
  %246 = sub i32 %196, %223
  %247 = lshr i32 %246, 5
  %248 = and i32 %247, 1023
  %249 = zext nneg i32 %248 to i64
  %250 = getelementptr inbounds i8, ptr %12, i64 %249
  %251 = load i8, ptr %250, align 1, !tbaa !20
  %252 = getelementptr inbounds i8, ptr %149, i64 6
  store i8 %251, ptr %252, align 1, !tbaa !20
  %253 = add i32 %197, %224
  %254 = lshr i32 %253, 5
  %255 = and i32 %254, 1023
  %256 = zext nneg i32 %255 to i64
  %257 = getelementptr inbounds i8, ptr %12, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !20
  %259 = getelementptr inbounds i8, ptr %149, i64 2
  store i8 %258, ptr %259, align 1, !tbaa !20
  %260 = sub i32 %197, %224
  %261 = lshr i32 %260, 5
  %262 = and i32 %261, 1023
  %263 = zext nneg i32 %262 to i64
  %264 = getelementptr inbounds i8, ptr %12, i64 %263
  %265 = load i8, ptr %264, align 1, !tbaa !20
  %266 = getelementptr inbounds i8, ptr %149, i64 5
  store i8 %265, ptr %266, align 1, !tbaa !20
  %267 = add i32 %195, %225
  %268 = lshr i32 %267, 5
  %269 = and i32 %268, 1023
  %270 = zext nneg i32 %269 to i64
  %271 = getelementptr inbounds i8, ptr %12, i64 %270
  %272 = load i8, ptr %271, align 1, !tbaa !20
  %273 = getelementptr inbounds i8, ptr %149, i64 4
  store i8 %272, ptr %273, align 1, !tbaa !20
  %274 = sub i32 %195, %225
  %275 = lshr i32 %274, 5
  %276 = and i32 %275, 1023
  %277 = zext nneg i32 %276 to i64
  %278 = getelementptr inbounds i8, ptr %12, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !20
  br label %280

280:                                              ; preds = %184, %172
  %281 = phi i64 [ 3, %184 ], [ 7, %172 ]
  %282 = phi i8 [ %279, %184 ], [ %177, %172 ]
  %283 = getelementptr inbounds i8, ptr %149, i64 %281
  store i8 %282, ptr %283, align 1, !tbaa !20
  %284 = getelementptr inbounds i32, ptr %146, i64 8
  %285 = add nuw nsw i64 %145, 1
  %286 = icmp eq i64 %285, 8
  br i1 %286, label %287, label %144, !llvm.loop !21

287:                                              ; preds = %280
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 408}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 508, !10, i64 512, !10, i64 516, !10, i64 520, !10, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 88}
!14 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!15 = !{!12, !12, i64 0}
!16 = !{!10, !10, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!7, !7, i64 0}
!20 = !{!8, !8, i64 0}
!21 = distinct !{!21, !18}
