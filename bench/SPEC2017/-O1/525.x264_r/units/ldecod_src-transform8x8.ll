; ModuleID = 'ldecod_src/transform8x8.c'
source_filename = "ldecod_src/transform8x8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local void @itrans8x8(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 79
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %12 = load i32, ptr %11, align 4, !tbaa !46
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %62

14:                                               ; preds = %4
  %15 = sext i32 %3 to i64
  %16 = getelementptr inbounds ptr, ptr %10, i64 %15
  %17 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 78
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = getelementptr inbounds ptr, ptr %18, i64 %8
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = getelementptr inbounds ptr, ptr %20, i64 %15
  %22 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds ptr, ptr %23, i64 %8
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  %26 = getelementptr inbounds ptr, ptr %25, i64 %15
  %27 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = getelementptr inbounds %struct.video_par, ptr %28, i64 0, i32 70, i64 %8
  %30 = load i32, ptr %29, align 4, !tbaa !50
  %31 = sext i32 %2 to i64
  %32 = add nsw i32 %2, 7
  %33 = sext i32 %32 to i64
  br label %34

34:                                               ; preds = %14, %56
  %35 = phi i32 [ 0, %14 ], [ %60, %56 ]
  %36 = phi ptr [ %16, %14 ], [ %58, %56 ]
  %37 = phi ptr [ %21, %14 ], [ %57, %56 ]
  %38 = phi ptr [ %26, %14 ], [ %59, %56 ]
  %39 = load ptr, ptr %36, align 8, !tbaa !45
  %40 = load ptr, ptr %38, align 8, !tbaa !45
  %41 = load ptr, ptr %37, align 8, !tbaa !45
  br label %42

42:                                               ; preds = %34, %42
  %43 = phi i64 [ %31, %34 ], [ %54, %42 ]
  %44 = getelementptr inbounds i32, ptr %39, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !50
  %46 = getelementptr inbounds i16, ptr %40, i64 %43
  %47 = load i16, ptr %46, align 2, !tbaa !51
  %48 = zext i16 %47 to i32
  %49 = add i32 %45, %48
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 0)
  %51 = tail call i32 @llvm.smin.i32(i32 %50, i32 %30)
  %52 = trunc i32 %51 to i16
  %53 = getelementptr inbounds i16, ptr %41, i64 %43
  store i16 %52, ptr %53, align 2, !tbaa !51
  %54 = add nsw i64 %43, 1
  %55 = icmp slt i64 %43, %33
  br i1 %55, label %42, label %56, !llvm.loop !52

56:                                               ; preds = %42
  %57 = getelementptr inbounds ptr, ptr %37, i64 1
  %58 = getelementptr inbounds ptr, ptr %36, i64 1
  %59 = getelementptr inbounds ptr, ptr %38, i64 1
  %60 = add nuw nsw i32 %35, 1
  %61 = icmp eq i32 %60, 8
  br i1 %61, label %189, label %34, !llvm.loop !55

62:                                               ; preds = %4
  tail call void @inverse8x8(ptr noundef %10, ptr noundef %10, i32 noundef %3, i32 noundef %2) #3
  %63 = sext i32 %3 to i64
  %64 = getelementptr inbounds ptr, ptr %10, i64 %63
  %65 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 78
  %66 = load ptr, ptr %65, align 8, !tbaa !47
  %67 = getelementptr inbounds ptr, ptr %66, i64 %8
  %68 = load ptr, ptr %67, align 8, !tbaa !45
  %69 = getelementptr inbounds ptr, ptr %68, i64 %63
  %70 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  %72 = getelementptr inbounds ptr, ptr %71, i64 %8
  %73 = load ptr, ptr %72, align 8, !tbaa !45
  %74 = getelementptr inbounds ptr, ptr %73, i64 %63
  %75 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !49
  %77 = getelementptr inbounds %struct.video_par, ptr %76, i64 0, i32 70, i64 %8
  %78 = load i32, ptr %77, align 4, !tbaa !50
  %79 = sext i32 %2 to i64
  br label %80

80:                                               ; preds = %62, %80
  %81 = phi i32 [ 0, %62 ], [ %187, %80 ]
  %82 = phi ptr [ %64, %62 ], [ %85, %80 ]
  %83 = phi ptr [ %69, %62 ], [ %88, %80 ]
  %84 = phi ptr [ %74, %62 ], [ %91, %80 ]
  %85 = getelementptr inbounds ptr, ptr %82, i64 1
  %86 = load ptr, ptr %82, align 8, !tbaa !45
  %87 = getelementptr inbounds i32, ptr %86, i64 %79
  %88 = getelementptr inbounds ptr, ptr %83, i64 1
  %89 = load ptr, ptr %83, align 8, !tbaa !45
  %90 = getelementptr inbounds i16, ptr %89, i64 %79
  %91 = getelementptr inbounds ptr, ptr %84, i64 1
  %92 = load ptr, ptr %84, align 8, !tbaa !45
  %93 = getelementptr inbounds i16, ptr %92, i64 %79
  %94 = getelementptr inbounds i16, ptr %93, i64 1
  %95 = load i16, ptr %93, align 2, !tbaa !51
  %96 = zext i16 %95 to i32
  %97 = getelementptr inbounds i32, ptr %87, i64 1
  %98 = load i32, ptr %87, align 4, !tbaa !50
  %99 = add nsw i32 %98, 32
  %100 = ashr i32 %99, 6
  %101 = add nsw i32 %100, %96
  %102 = tail call i32 @llvm.smax.i32(i32 %101, i32 0)
  %103 = tail call i32 @llvm.smin.i32(i32 %102, i32 %78)
  %104 = trunc i32 %103 to i16
  %105 = getelementptr inbounds i16, ptr %90, i64 1
  store i16 %104, ptr %90, align 2, !tbaa !51
  %106 = getelementptr inbounds i16, ptr %93, i64 2
  %107 = load i16, ptr %94, align 2, !tbaa !51
  %108 = zext i16 %107 to i32
  %109 = getelementptr inbounds i32, ptr %87, i64 2
  %110 = load i32, ptr %97, align 4, !tbaa !50
  %111 = add nsw i32 %110, 32
  %112 = ashr i32 %111, 6
  %113 = add nsw i32 %112, %108
  %114 = tail call i32 @llvm.smax.i32(i32 %113, i32 0)
  %115 = tail call i32 @llvm.smin.i32(i32 %114, i32 %78)
  %116 = trunc i32 %115 to i16
  %117 = getelementptr inbounds i16, ptr %90, i64 2
  store i16 %116, ptr %105, align 2, !tbaa !51
  %118 = getelementptr inbounds i16, ptr %93, i64 3
  %119 = load i16, ptr %106, align 2, !tbaa !51
  %120 = zext i16 %119 to i32
  %121 = getelementptr inbounds i32, ptr %87, i64 3
  %122 = load i32, ptr %109, align 4, !tbaa !50
  %123 = add nsw i32 %122, 32
  %124 = ashr i32 %123, 6
  %125 = add nsw i32 %124, %120
  %126 = tail call i32 @llvm.smax.i32(i32 %125, i32 0)
  %127 = tail call i32 @llvm.smin.i32(i32 %126, i32 %78)
  %128 = trunc i32 %127 to i16
  %129 = getelementptr inbounds i16, ptr %90, i64 3
  store i16 %128, ptr %117, align 2, !tbaa !51
  %130 = getelementptr inbounds i16, ptr %93, i64 4
  %131 = load i16, ptr %118, align 2, !tbaa !51
  %132 = zext i16 %131 to i32
  %133 = getelementptr inbounds i32, ptr %87, i64 4
  %134 = load i32, ptr %121, align 4, !tbaa !50
  %135 = add nsw i32 %134, 32
  %136 = ashr i32 %135, 6
  %137 = add nsw i32 %136, %132
  %138 = tail call i32 @llvm.smax.i32(i32 %137, i32 0)
  %139 = tail call i32 @llvm.smin.i32(i32 %138, i32 %78)
  %140 = trunc i32 %139 to i16
  %141 = getelementptr inbounds i16, ptr %90, i64 4
  store i16 %140, ptr %129, align 2, !tbaa !51
  %142 = getelementptr inbounds i16, ptr %93, i64 5
  %143 = load i16, ptr %130, align 2, !tbaa !51
  %144 = zext i16 %143 to i32
  %145 = getelementptr inbounds i32, ptr %87, i64 5
  %146 = load i32, ptr %133, align 4, !tbaa !50
  %147 = add nsw i32 %146, 32
  %148 = ashr i32 %147, 6
  %149 = add nsw i32 %148, %144
  %150 = tail call i32 @llvm.smax.i32(i32 %149, i32 0)
  %151 = tail call i32 @llvm.smin.i32(i32 %150, i32 %78)
  %152 = trunc i32 %151 to i16
  %153 = getelementptr inbounds i16, ptr %90, i64 5
  store i16 %152, ptr %141, align 2, !tbaa !51
  %154 = getelementptr inbounds i16, ptr %93, i64 6
  %155 = load i16, ptr %142, align 2, !tbaa !51
  %156 = zext i16 %155 to i32
  %157 = getelementptr inbounds i32, ptr %87, i64 6
  %158 = load i32, ptr %145, align 4, !tbaa !50
  %159 = add nsw i32 %158, 32
  %160 = ashr i32 %159, 6
  %161 = add nsw i32 %160, %156
  %162 = tail call i32 @llvm.smax.i32(i32 %161, i32 0)
  %163 = tail call i32 @llvm.smin.i32(i32 %162, i32 %78)
  %164 = trunc i32 %163 to i16
  %165 = getelementptr inbounds i16, ptr %90, i64 6
  store i16 %164, ptr %153, align 2, !tbaa !51
  %166 = getelementptr inbounds i16, ptr %93, i64 7
  %167 = load i16, ptr %154, align 2, !tbaa !51
  %168 = zext i16 %167 to i32
  %169 = getelementptr inbounds i32, ptr %87, i64 7
  %170 = load i32, ptr %157, align 4, !tbaa !50
  %171 = add nsw i32 %170, 32
  %172 = ashr i32 %171, 6
  %173 = add nsw i32 %172, %168
  %174 = tail call i32 @llvm.smax.i32(i32 %173, i32 0)
  %175 = tail call i32 @llvm.smin.i32(i32 %174, i32 %78)
  %176 = trunc i32 %175 to i16
  %177 = getelementptr inbounds i16, ptr %90, i64 7
  store i16 %176, ptr %165, align 2, !tbaa !51
  %178 = load i16, ptr %166, align 2, !tbaa !51
  %179 = zext i16 %178 to i32
  %180 = load i32, ptr %169, align 4, !tbaa !50
  %181 = add nsw i32 %180, 32
  %182 = ashr i32 %181, 6
  %183 = add nsw i32 %182, %179
  %184 = tail call i32 @llvm.smax.i32(i32 %183, i32 0)
  %185 = tail call i32 @llvm.smin.i32(i32 %184, i32 %78)
  %186 = trunc i32 %185 to i16
  store i16 %186, ptr %177, align 2, !tbaa !51
  %187 = add nuw nsw i32 %81, 1
  %188 = icmp eq i32 %187, 8
  br i1 %188, label %189, label %80, !llvm.loop !56

189:                                              ; preds = %80, %56
  ret void
}

declare void @inverse8x8(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 0}
!35 = !{!"macroblock", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !40, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !37, i64 80, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !41, i64 108, !37, i64 110, !37, i64 111, !41, i64 112, !41, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !37, i64 154, !39, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !39, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !41, i64 376, !41, i64 378, !41, i64 380, !39, i64 384, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !37, i64 472}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"", !41, i64 0, !41, i64 2}
!41 = !{!"short", !37, i64 0}
!42 = !{!43, !36, i64 1264}
!43 = !{!"slice", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !37, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !41, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !37, i64 136, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !37, i64 256, !37, i64 264, !36, i64 312, !36, i64 320, !36, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !39, i64 1176, !39, i64 1180, !39, i64 1184, !44, i64 1188, !41, i64 1220, !41, i64 1222, !41, i64 1224, !39, i64 1228, !39, i64 1232, !39, i64 1236, !39, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !37, i64 1288, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !39, i64 13264, !39, i64 13268, !41, i64 13272, !41, i64 13274, !41, i64 13276, !41, i64 13278, !36, i64 13280, !36, i64 13288, !36, i64 13296, !41, i64 13304, !41, i64 13306, !39, i64 13308, !39, i64 13312, !36, i64 13320, !36, i64 13328, !39, i64 13336, !37, i64 13340, !36, i64 13408, !36, i64 13416, !36, i64 13424, !36, i64 13432, !36, i64 13440, !36, i64 13448, !36, i64 13456, !36, i64 13464, !36, i64 13472, !36, i64 13480, !36, i64 13488, !36, i64 13496, !39, i64 13504, !36, i64 13512, !36, i64 13520, !36, i64 13528, !36, i64 13536, !36, i64 13544, !37, i64 13552}
!44 = !{!"nalunitheadermvcext_tag", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!45 = !{!36, !36, i64 0}
!46 = !{!35, !39, i64 92}
!47 = !{!43, !36, i64 1256}
!48 = !{!43, !36, i64 1248}
!49 = !{!35, !36, i64 8}
!50 = !{!39, !39, i64 0}
!51 = !{!41, !41, i64 0}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !53, !54}
!56 = distinct !{!56, !53, !54}
