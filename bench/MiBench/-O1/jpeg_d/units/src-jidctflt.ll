; ModuleID = 'src/jidctflt.c'
source_filename = "src/jidctflt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @jpeg_idct_float(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [64 x float], align 16
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 61
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #3
  %9 = getelementptr inbounds %struct.jpeg_component_info, ptr %1, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  br label %14

11:                                               ; preds = %119
  %12 = getelementptr inbounds i8, ptr %8, i64 128
  %13 = zext i32 %4 to i64
  br label %128

14:                                               ; preds = %5, %119
  %15 = phi i32 [ 8, %5 ], [ %126, %119 ]
  %16 = phi ptr [ %6, %5 ], [ %123, %119 ]
  %17 = phi ptr [ %10, %5 ], [ %124, %119 ]
  %18 = phi ptr [ %2, %5 ], [ %125, %119 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 8
  %20 = load i16, ptr %19, align 2, !tbaa !15
  %21 = getelementptr inbounds i16, ptr %18, i64 16
  %22 = load i16, ptr %21, align 2, !tbaa !15
  %23 = or i16 %22, %20
  %24 = getelementptr inbounds i16, ptr %18, i64 24
  %25 = load i16, ptr %24, align 2, !tbaa !15
  %26 = or i16 %23, %25
  %27 = getelementptr inbounds i16, ptr %18, i64 32
  %28 = load i16, ptr %27, align 2, !tbaa !15
  %29 = or i16 %26, %28
  %30 = getelementptr inbounds i16, ptr %18, i64 40
  %31 = load i16, ptr %30, align 2, !tbaa !15
  %32 = or i16 %29, %31
  %33 = getelementptr inbounds i16, ptr %18, i64 48
  %34 = load i16, ptr %33, align 2, !tbaa !15
  %35 = or i16 %32, %34
  %36 = getelementptr inbounds i16, ptr %18, i64 56
  %37 = load i16, ptr %36, align 2, !tbaa !15
  %38 = or i16 %35, %37
  %39 = icmp eq i16 %38, 0
  %40 = load i16, ptr %18, align 2, !tbaa !15
  %41 = sitofp i16 %40 to float
  %42 = load float, ptr %17, align 4, !tbaa !16
  %43 = fmul float %42, %41
  br i1 %39, label %44, label %51

44:                                               ; preds = %14
  store float %43, ptr %16, align 4, !tbaa !16
  %45 = getelementptr inbounds float, ptr %16, i64 8
  store float %43, ptr %45, align 4, !tbaa !16
  %46 = getelementptr inbounds float, ptr %16, i64 16
  store float %43, ptr %46, align 4, !tbaa !16
  %47 = getelementptr inbounds float, ptr %16, i64 24
  store float %43, ptr %47, align 4, !tbaa !16
  %48 = getelementptr inbounds float, ptr %16, i64 32
  store float %43, ptr %48, align 4, !tbaa !16
  %49 = getelementptr inbounds float, ptr %16, i64 40
  store float %43, ptr %49, align 4, !tbaa !16
  %50 = getelementptr inbounds float, ptr %16, i64 48
  store float %43, ptr %50, align 4, !tbaa !16
  br label %119

51:                                               ; preds = %14
  %52 = sitofp i16 %22 to float
  %53 = getelementptr inbounds float, ptr %17, i64 16
  %54 = load float, ptr %53, align 4, !tbaa !16
  %55 = fmul float %54, %52
  %56 = sitofp i16 %28 to float
  %57 = getelementptr inbounds float, ptr %17, i64 32
  %58 = load float, ptr %57, align 4, !tbaa !16
  %59 = fmul float %58, %56
  %60 = sitofp i16 %34 to float
  %61 = getelementptr inbounds float, ptr %17, i64 48
  %62 = load float, ptr %61, align 4, !tbaa !16
  %63 = fmul float %62, %60
  %64 = fadd float %43, %59
  %65 = fsub float %43, %59
  %66 = fadd float %55, %63
  %67 = fsub float %55, %63
  %68 = fneg float %66
  %69 = tail call float @llvm.fmuladd.f32(float %67, float 0x3FF6A09E60000000, float %68)
  %70 = fadd float %64, %66
  %71 = fsub float %64, %66
  %72 = fadd float %65, %69
  %73 = fsub float %65, %69
  %74 = sitofp i16 %20 to float
  %75 = getelementptr inbounds float, ptr %17, i64 8
  %76 = load float, ptr %75, align 4, !tbaa !16
  %77 = fmul float %76, %74
  %78 = sitofp i16 %25 to float
  %79 = getelementptr inbounds float, ptr %17, i64 24
  %80 = load float, ptr %79, align 4, !tbaa !16
  %81 = fmul float %80, %78
  %82 = sitofp i16 %31 to float
  %83 = getelementptr inbounds float, ptr %17, i64 40
  %84 = load float, ptr %83, align 4, !tbaa !16
  %85 = fmul float %84, %82
  %86 = sitofp i16 %37 to float
  %87 = getelementptr inbounds float, ptr %17, i64 56
  %88 = load float, ptr %87, align 4, !tbaa !16
  %89 = fmul float %88, %86
  %90 = fadd float %81, %85
  %91 = fsub float %85, %81
  %92 = fadd float %77, %89
  %93 = fsub float %77, %89
  %94 = fadd float %90, %92
  %95 = fsub float %92, %90
  %96 = fmul float %95, 0x3FF6A09E60000000
  %97 = fadd float %91, %93
  %98 = fmul float %97, 0x3FFD906BC0000000
  %99 = fneg float %98
  %100 = tail call float @llvm.fmuladd.f32(float %93, float 0x3FF1517A80000000, float %99)
  %101 = tail call float @llvm.fmuladd.f32(float %91, float 0xC004E7AEA0000000, float %98)
  %102 = fsub float %101, %94
  %103 = fsub float %96, %102
  %104 = fadd float %100, %103
  %105 = fadd float %70, %94
  store float %105, ptr %16, align 4, !tbaa !16
  %106 = fsub float %70, %94
  %107 = getelementptr inbounds float, ptr %16, i64 56
  store float %106, ptr %107, align 4, !tbaa !16
  %108 = fadd float %72, %102
  %109 = getelementptr inbounds float, ptr %16, i64 8
  store float %108, ptr %109, align 4, !tbaa !16
  %110 = fsub float %72, %102
  %111 = getelementptr inbounds float, ptr %16, i64 48
  store float %110, ptr %111, align 4, !tbaa !16
  %112 = fadd float %73, %103
  %113 = getelementptr inbounds float, ptr %16, i64 16
  store float %112, ptr %113, align 4, !tbaa !16
  %114 = fsub float %73, %103
  %115 = getelementptr inbounds float, ptr %16, i64 40
  store float %114, ptr %115, align 4, !tbaa !16
  %116 = fadd float %71, %104
  %117 = getelementptr inbounds float, ptr %16, i64 32
  store float %116, ptr %117, align 4, !tbaa !16
  %118 = fsub float %71, %104
  br label %119

119:                                              ; preds = %51, %44
  %120 = phi i64 [ 24, %51 ], [ 56, %44 ]
  %121 = phi float [ %118, %51 ], [ %43, %44 ]
  %122 = getelementptr inbounds float, ptr %16, i64 %120
  store float %121, ptr %122, align 4, !tbaa !16
  %123 = getelementptr inbounds float, ptr %16, i64 1
  %124 = getelementptr inbounds float, ptr %17, i64 1
  %125 = getelementptr inbounds i16, ptr %18, i64 1
  %126 = add nsw i32 %15, -1
  %127 = icmp ugt i32 %15, 1
  br i1 %127, label %14, label %11, !llvm.loop !18

128:                                              ; preds = %11, %128
  %129 = phi i64 [ 0, %11 ], [ %238, %128 ]
  %130 = phi ptr [ %6, %11 ], [ %237, %128 ]
  %131 = getelementptr inbounds ptr, ptr %3, i64 %129
  %132 = load ptr, ptr %131, align 8, !tbaa !20
  %133 = getelementptr inbounds i8, ptr %132, i64 %13
  %134 = load float, ptr %130, align 4, !tbaa !16
  %135 = getelementptr inbounds float, ptr %130, i64 4
  %136 = load float, ptr %135, align 4, !tbaa !16
  %137 = fadd float %134, %136
  %138 = fsub float %134, %136
  %139 = getelementptr inbounds float, ptr %130, i64 2
  %140 = load float, ptr %139, align 4, !tbaa !16
  %141 = getelementptr inbounds float, ptr %130, i64 6
  %142 = load float, ptr %141, align 4, !tbaa !16
  %143 = fadd float %140, %142
  %144 = fsub float %140, %142
  %145 = fneg float %143
  %146 = tail call float @llvm.fmuladd.f32(float %144, float 0x3FF6A09E60000000, float %145)
  %147 = fadd float %137, %143
  %148 = fsub float %137, %143
  %149 = fadd float %138, %146
  %150 = fsub float %138, %146
  %151 = getelementptr inbounds float, ptr %130, i64 5
  %152 = load float, ptr %151, align 4, !tbaa !16
  %153 = getelementptr inbounds float, ptr %130, i64 3
  %154 = load float, ptr %153, align 4, !tbaa !16
  %155 = fadd float %152, %154
  %156 = fsub float %152, %154
  %157 = getelementptr inbounds float, ptr %130, i64 1
  %158 = load float, ptr %157, align 4, !tbaa !16
  %159 = getelementptr inbounds float, ptr %130, i64 7
  %160 = load float, ptr %159, align 4, !tbaa !16
  %161 = fadd float %158, %160
  %162 = fsub float %158, %160
  %163 = fadd float %155, %161
  %164 = fsub float %161, %155
  %165 = fmul float %164, 0x3FF6A09E60000000
  %166 = fadd float %156, %162
  %167 = fmul float %166, 0x3FFD906BC0000000
  %168 = fneg float %167
  %169 = tail call float @llvm.fmuladd.f32(float %162, float 0x3FF1517A80000000, float %168)
  %170 = tail call float @llvm.fmuladd.f32(float %156, float 0xC004E7AEA0000000, float %167)
  %171 = fsub float %170, %163
  %172 = fsub float %165, %171
  %173 = fadd float %169, %172
  %174 = fadd float %147, %163
  %175 = fptosi float %174 to i64
  %176 = add i64 %175, 4
  %177 = lshr i64 %176, 3
  %178 = and i64 %177, 1023
  %179 = getelementptr inbounds i8, ptr %12, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !21
  store i8 %180, ptr %133, align 1, !tbaa !21
  %181 = fsub float %147, %163
  %182 = fptosi float %181 to i64
  %183 = add i64 %182, 4
  %184 = lshr i64 %183, 3
  %185 = and i64 %184, 1023
  %186 = getelementptr inbounds i8, ptr %12, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !21
  %188 = getelementptr inbounds i8, ptr %133, i64 7
  store i8 %187, ptr %188, align 1, !tbaa !21
  %189 = fadd float %149, %171
  %190 = fptosi float %189 to i64
  %191 = add i64 %190, 4
  %192 = lshr i64 %191, 3
  %193 = and i64 %192, 1023
  %194 = getelementptr inbounds i8, ptr %12, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !21
  %196 = getelementptr inbounds i8, ptr %133, i64 1
  store i8 %195, ptr %196, align 1, !tbaa !21
  %197 = fsub float %149, %171
  %198 = fptosi float %197 to i64
  %199 = add i64 %198, 4
  %200 = lshr i64 %199, 3
  %201 = and i64 %200, 1023
  %202 = getelementptr inbounds i8, ptr %12, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !21
  %204 = getelementptr inbounds i8, ptr %133, i64 6
  store i8 %203, ptr %204, align 1, !tbaa !21
  %205 = fadd float %150, %172
  %206 = fptosi float %205 to i64
  %207 = add i64 %206, 4
  %208 = lshr i64 %207, 3
  %209 = and i64 %208, 1023
  %210 = getelementptr inbounds i8, ptr %12, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !21
  %212 = getelementptr inbounds i8, ptr %133, i64 2
  store i8 %211, ptr %212, align 1, !tbaa !21
  %213 = fsub float %150, %172
  %214 = fptosi float %213 to i64
  %215 = add i64 %214, 4
  %216 = lshr i64 %215, 3
  %217 = and i64 %216, 1023
  %218 = getelementptr inbounds i8, ptr %12, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !21
  %220 = getelementptr inbounds i8, ptr %133, i64 5
  store i8 %219, ptr %220, align 1, !tbaa !21
  %221 = fadd float %148, %173
  %222 = fptosi float %221 to i64
  %223 = add i64 %222, 4
  %224 = lshr i64 %223, 3
  %225 = and i64 %224, 1023
  %226 = getelementptr inbounds i8, ptr %12, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !21
  %228 = getelementptr inbounds i8, ptr %133, i64 4
  store i8 %227, ptr %228, align 1, !tbaa !21
  %229 = fsub float %148, %173
  %230 = fptosi float %229 to i64
  %231 = add i64 %230, 4
  %232 = lshr i64 %231, 3
  %233 = and i64 %232, 1023
  %234 = getelementptr inbounds i8, ptr %12, i64 %233
  %235 = load i8, ptr %234, align 1, !tbaa !21
  %236 = getelementptr inbounds i8, ptr %133, i64 3
  store i8 %235, ptr %236, align 1, !tbaa !21
  %237 = getelementptr inbounds float, ptr %130, i64 8
  %238 = add nuw nsw i64 %129, 1
  %239 = icmp eq i64 %238, 8
  br i1 %239, label %240, label %128, !llvm.loop !22

240:                                              ; preds = %128
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !8, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!7, !7, i64 0}
!21 = !{!8, !8, i64 0}
!22 = distinct !{!22, !19}
