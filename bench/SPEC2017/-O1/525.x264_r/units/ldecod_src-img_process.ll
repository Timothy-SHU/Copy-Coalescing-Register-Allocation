; ModuleID = 'ldecod_src/img_process.c'
source_filename = "ldecod_src/img_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @init_process_image(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @clear_process_image(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @process_image(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.inp_par, ptr %1, i64 0, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !34
  switch i32 %4, label %5 [
    i32 4, label %773
    i32 1, label %123
    i32 2, label %282
    i32 3, label %441
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !44
  %15 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !44
  %17 = mul nsw i32 %16, %14
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %9, ptr align 2 %12, i64 %19, i1 false)
  %20 = load i32, ptr %6, align 8, !tbaa !45
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 1, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 0, i32 4, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !44
  %31 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 0, i32 3, i64 1
  %32 = load i32, ptr %31, align 4, !tbaa !44
  %33 = mul nsw i32 %32, %30
  %34 = sext i32 %33 to i64
  %35 = shl nsw i64 %34, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %25, ptr align 2 %28, i64 %35, i1 false)
  %36 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1, i64 2
  %37 = load ptr, ptr %36, align 8, !tbaa !43
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 1, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = load ptr, ptr %40, align 8, !tbaa !43
  %42 = load i32, ptr %29, align 4, !tbaa !44
  %43 = load i32, ptr %31, align 4, !tbaa !44
  %44 = mul nsw i32 %43, %42
  %45 = sext i32 %44 to i64
  %46 = shl nsw i64 %45, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %38, ptr align 2 %41, i64 %46, i1 false)
  br label %47

47:                                               ; preds = %5, %22
  %48 = getelementptr inbounds %struct.inp_par, ptr %1, i64 0, i32 12
  %49 = load i32, ptr %48, align 4, !tbaa !47
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %853, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114
  %53 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 0, i32 4
  %54 = load i32, ptr %53, align 4, !tbaa !44
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 1
  %58 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 0, i32 3
  br label %59

59:                                               ; preds = %56, %59
  %60 = phi i64 [ 1, %56 ], [ %70, %59 ]
  %61 = load ptr, ptr %7, align 8, !tbaa !43
  %62 = getelementptr inbounds ptr, ptr %61, i64 %60
  %63 = load ptr, ptr %62, align 8, !tbaa !43
  %64 = load ptr, ptr %57, align 8, !tbaa !43
  %65 = getelementptr inbounds ptr, ptr %64, i64 %60
  %66 = load ptr, ptr %65, align 8, !tbaa !43
  %67 = load i32, ptr %58, align 8, !tbaa !44
  %68 = sext i32 %67 to i64
  %69 = shl nsw i64 %68, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %63, ptr align 2 %66, i64 %69, i1 false)
  %70 = add nuw nsw i64 %60, 2
  %71 = load i32, ptr %53, align 4, !tbaa !44
  %72 = sext i32 %71 to i64
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %59, label %74, !llvm.loop !48

74:                                               ; preds = %59, %51
  %75 = load i32, ptr %52, align 8, !tbaa !45
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %853, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 0, i32 4, i64 1
  %79 = load i32, ptr %78, align 4, !tbaa !44
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1, i64 1
  %83 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 1, i64 1
  %84 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 0, i32 3, i64 1
  br label %93

85:                                               ; preds = %93, %77
  %86 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 0, i32 4, i64 2
  %87 = load i32, ptr %86, align 4, !tbaa !44
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %853

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1, i64 2
  %91 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 1, i64 2
  %92 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 0, i32 3, i64 2
  br label %108

93:                                               ; preds = %81, %93
  %94 = phi i64 [ 1, %81 ], [ %104, %93 ]
  %95 = load ptr, ptr %82, align 8, !tbaa !43
  %96 = getelementptr inbounds ptr, ptr %95, i64 %94
  %97 = load ptr, ptr %96, align 8, !tbaa !43
  %98 = load ptr, ptr %83, align 8, !tbaa !43
  %99 = getelementptr inbounds ptr, ptr %98, i64 %94
  %100 = load ptr, ptr %99, align 8, !tbaa !43
  %101 = load i32, ptr %84, align 4, !tbaa !44
  %102 = sext i32 %101 to i64
  %103 = shl nsw i64 %102, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %97, ptr align 2 %100, i64 %103, i1 false)
  %104 = add nuw nsw i64 %94, 2
  %105 = load i32, ptr %78, align 4, !tbaa !44
  %106 = sext i32 %105 to i64
  %107 = icmp slt i64 %104, %106
  br i1 %107, label %93, label %85, !llvm.loop !51

108:                                              ; preds = %89, %108
  %109 = phi i64 [ 1, %89 ], [ %119, %108 ]
  %110 = load ptr, ptr %90, align 8, !tbaa !43
  %111 = getelementptr inbounds ptr, ptr %110, i64 %109
  %112 = load ptr, ptr %111, align 8, !tbaa !43
  %113 = load ptr, ptr %91, align 8, !tbaa !43
  %114 = getelementptr inbounds ptr, ptr %113, i64 %109
  %115 = load ptr, ptr %114, align 8, !tbaa !43
  %116 = load i32, ptr %92, align 8, !tbaa !44
  %117 = sext i32 %116 to i64
  %118 = shl nsw i64 %117, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %112, ptr align 2 %115, i64 %118, i1 false)
  %119 = add nuw nsw i64 %109, 2
  %120 = load i32, ptr %86, align 4, !tbaa !44
  %121 = sext i32 %120 to i64
  %122 = icmp slt i64 %119, %121
  br i1 %122, label %108, label %853, !llvm.loop !52

123:                                              ; preds = %2
  %124 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110
  %125 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !43
  %127 = load ptr, ptr %126, align 8, !tbaa !43
  %128 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !43
  %130 = load ptr, ptr %129, align 8, !tbaa !43
  %131 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 0, i32 4
  %132 = load i32, ptr %131, align 4, !tbaa !44
  %133 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 0, i32 3
  %134 = load i32, ptr %133, align 8, !tbaa !44
  %135 = mul nsw i32 %134, %132
  %136 = sext i32 %135 to i64
  %137 = shl nsw i64 %136, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %127, ptr align 2 %130, i64 %137, i1 false)
  %138 = load i32, ptr %124, align 8, !tbaa !45
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %165, label %140

140:                                              ; preds = %123
  %141 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !43
  %143 = load ptr, ptr %142, align 8, !tbaa !43
  %144 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 1, i64 1
  %145 = load ptr, ptr %144, align 8, !tbaa !43
  %146 = load ptr, ptr %145, align 8, !tbaa !43
  %147 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 0, i32 4, i64 1
  %148 = load i32, ptr %147, align 4, !tbaa !44
  %149 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 0, i32 3, i64 1
  %150 = load i32, ptr %149, align 4, !tbaa !44
  %151 = mul nsw i32 %150, %148
  %152 = sext i32 %151 to i64
  %153 = shl nsw i64 %152, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %143, ptr align 2 %146, i64 %153, i1 false)
  %154 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1, i64 2
  %155 = load ptr, ptr %154, align 8, !tbaa !43
  %156 = load ptr, ptr %155, align 8, !tbaa !43
  %157 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 1, i64 2
  %158 = load ptr, ptr %157, align 8, !tbaa !43
  %159 = load ptr, ptr %158, align 8, !tbaa !43
  %160 = load i32, ptr %147, align 4, !tbaa !44
  %161 = load i32, ptr %149, align 4, !tbaa !44
  %162 = mul nsw i32 %161, %160
  %163 = sext i32 %162 to i64
  %164 = shl nsw i64 %163, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %156, ptr align 2 %159, i64 %164, i1 false)
  br label %165

165:                                              ; preds = %123, %140
  %166 = getelementptr inbounds %struct.inp_par, ptr %1, i64 0, i32 12
  %167 = load i32, ptr %166, align 4, !tbaa !47
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %853, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113
  %171 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114
  %172 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !43
  %174 = load ptr, ptr %173, align 8, !tbaa !43
  %175 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !43
  %177 = load ptr, ptr %176, align 8, !tbaa !43
  %178 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 0, i32 4
  %179 = load i32, ptr %178, align 4, !tbaa !44
  %180 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 0, i32 3
  %181 = load i32, ptr %180, align 8, !tbaa !44
  %182 = mul nsw i32 %181, %179
  %183 = sext i32 %182 to i64
  %184 = shl nsw i64 %183, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %174, ptr align 2 %177, i64 %184, i1 false)
  %185 = load i32, ptr %171, align 8, !tbaa !45
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %212, label %187

187:                                              ; preds = %169
  %188 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 1, i64 1
  %189 = load ptr, ptr %188, align 8, !tbaa !43
  %190 = load ptr, ptr %189, align 8, !tbaa !43
  %191 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 1, i64 1
  %192 = load ptr, ptr %191, align 8, !tbaa !43
  %193 = load ptr, ptr %192, align 8, !tbaa !43
  %194 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 0, i32 4, i64 1
  %195 = load i32, ptr %194, align 4, !tbaa !44
  %196 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 0, i32 3, i64 1
  %197 = load i32, ptr %196, align 4, !tbaa !44
  %198 = mul nsw i32 %197, %195
  %199 = sext i32 %198 to i64
  %200 = shl nsw i64 %199, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %190, ptr align 2 %193, i64 %200, i1 false)
  %201 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 1, i64 2
  %202 = load ptr, ptr %201, align 8, !tbaa !43
  %203 = load ptr, ptr %202, align 8, !tbaa !43
  %204 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 1, i64 2
  %205 = load ptr, ptr %204, align 8, !tbaa !43
  %206 = load ptr, ptr %205, align 8, !tbaa !43
  %207 = load i32, ptr %194, align 4, !tbaa !44
  %208 = load i32, ptr %196, align 4, !tbaa !44
  %209 = mul nsw i32 %208, %207
  %210 = sext i32 %209 to i64
  %211 = shl nsw i64 %210, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %203, ptr align 2 %206, i64 %211, i1 false)
  br label %212

212:                                              ; preds = %169, %187
  %213 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 4
  %214 = load i32, ptr %213, align 4, !tbaa !44
  %215 = icmp sgt i32 %214, 1
  br i1 %215, label %216, label %233

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 3
  br label %218

218:                                              ; preds = %216, %218
  %219 = phi i64 [ 1, %216 ], [ %229, %218 ]
  %220 = load ptr, ptr %125, align 8, !tbaa !43
  %221 = getelementptr inbounds ptr, ptr %220, i64 %219
  %222 = load ptr, ptr %221, align 8, !tbaa !43
  %223 = load ptr, ptr %172, align 8, !tbaa !43
  %224 = getelementptr inbounds ptr, ptr %223, i64 %219
  %225 = load ptr, ptr %224, align 8, !tbaa !43
  %226 = load i32, ptr %217, align 8, !tbaa !44
  %227 = sext i32 %226 to i64
  %228 = shl nsw i64 %227, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %222, ptr align 2 %225, i64 %228, i1 false)
  %229 = add nuw nsw i64 %219, 2
  %230 = load i32, ptr %213, align 4, !tbaa !44
  %231 = sext i32 %230 to i64
  %232 = icmp slt i64 %229, %231
  br i1 %232, label %218, label %233, !llvm.loop !48

233:                                              ; preds = %218, %212
  %234 = load i32, ptr %170, align 8, !tbaa !45
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %853, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 4, i64 1
  %238 = load i32, ptr %237, align 4, !tbaa !44
  %239 = icmp sgt i32 %238, 1
  br i1 %239, label %240, label %244

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1, i64 1
  %242 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 1, i64 1
  %243 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 3, i64 1
  br label %252

244:                                              ; preds = %252, %236
  %245 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 4, i64 2
  %246 = load i32, ptr %245, align 4, !tbaa !44
  %247 = icmp sgt i32 %246, 1
  br i1 %247, label %248, label %853

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1, i64 2
  %250 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 1, i64 2
  %251 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 3, i64 2
  br label %267

252:                                              ; preds = %240, %252
  %253 = phi i64 [ 1, %240 ], [ %263, %252 ]
  %254 = load ptr, ptr %241, align 8, !tbaa !43
  %255 = getelementptr inbounds ptr, ptr %254, i64 %253
  %256 = load ptr, ptr %255, align 8, !tbaa !43
  %257 = load ptr, ptr %242, align 8, !tbaa !43
  %258 = getelementptr inbounds ptr, ptr %257, i64 %253
  %259 = load ptr, ptr %258, align 8, !tbaa !43
  %260 = load i32, ptr %243, align 4, !tbaa !44
  %261 = sext i32 %260 to i64
  %262 = shl nsw i64 %261, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %256, ptr align 2 %259, i64 %262, i1 false)
  %263 = add nuw nsw i64 %253, 2
  %264 = load i32, ptr %237, align 4, !tbaa !44
  %265 = sext i32 %264 to i64
  %266 = icmp slt i64 %263, %265
  br i1 %266, label %252, label %244, !llvm.loop !51

267:                                              ; preds = %248, %267
  %268 = phi i64 [ 1, %248 ], [ %278, %267 ]
  %269 = load ptr, ptr %249, align 8, !tbaa !43
  %270 = getelementptr inbounds ptr, ptr %269, i64 %268
  %271 = load ptr, ptr %270, align 8, !tbaa !43
  %272 = load ptr, ptr %250, align 8, !tbaa !43
  %273 = getelementptr inbounds ptr, ptr %272, i64 %268
  %274 = load ptr, ptr %273, align 8, !tbaa !43
  %275 = load i32, ptr %251, align 8, !tbaa !44
  %276 = sext i32 %275 to i64
  %277 = shl nsw i64 %276, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %271, ptr align 2 %274, i64 %277, i1 false)
  %278 = add nuw nsw i64 %268, 2
  %279 = load i32, ptr %245, align 4, !tbaa !44
  %280 = sext i32 %279 to i64
  %281 = icmp slt i64 %278, %280
  br i1 %281, label %267, label %853, !llvm.loop !52

282:                                              ; preds = %2
  %283 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110
  %284 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !43
  %286 = load ptr, ptr %285, align 8, !tbaa !43
  %287 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !43
  %289 = load ptr, ptr %288, align 8, !tbaa !43
  %290 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 0, i32 4
  %291 = load i32, ptr %290, align 4, !tbaa !44
  %292 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 0, i32 3
  %293 = load i32, ptr %292, align 8, !tbaa !44
  %294 = mul nsw i32 %293, %291
  %295 = sext i32 %294 to i64
  %296 = shl nsw i64 %295, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %286, ptr align 2 %289, i64 %296, i1 false)
  %297 = load i32, ptr %283, align 8, !tbaa !45
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %324, label %299

299:                                              ; preds = %282
  %300 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1, i64 1
  %301 = load ptr, ptr %300, align 8, !tbaa !43
  %302 = load ptr, ptr %301, align 8, !tbaa !43
  %303 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 1, i64 2
  %304 = load ptr, ptr %303, align 8, !tbaa !43
  %305 = load ptr, ptr %304, align 8, !tbaa !43
  %306 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 0, i32 4, i64 1
  %307 = load i32, ptr %306, align 4, !tbaa !44
  %308 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 0, i32 3, i64 1
  %309 = load i32, ptr %308, align 4, !tbaa !44
  %310 = mul nsw i32 %309, %307
  %311 = sext i32 %310 to i64
  %312 = shl nsw i64 %311, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %302, ptr align 2 %305, i64 %312, i1 false)
  %313 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1, i64 2
  %314 = load ptr, ptr %313, align 8, !tbaa !43
  %315 = load ptr, ptr %314, align 8, !tbaa !43
  %316 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 1, i64 1
  %317 = load ptr, ptr %316, align 8, !tbaa !43
  %318 = load ptr, ptr %317, align 8, !tbaa !43
  %319 = load i32, ptr %306, align 4, !tbaa !44
  %320 = load i32, ptr %308, align 4, !tbaa !44
  %321 = mul nsw i32 %320, %319
  %322 = sext i32 %321 to i64
  %323 = shl nsw i64 %322, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %315, ptr align 2 %318, i64 %323, i1 false)
  br label %324

324:                                              ; preds = %282, %299
  %325 = getelementptr inbounds %struct.inp_par, ptr %1, i64 0, i32 12
  %326 = load i32, ptr %325, align 4, !tbaa !47
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %853, label %328

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113
  %330 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114
  %331 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !43
  %333 = load ptr, ptr %332, align 8, !tbaa !43
  %334 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !43
  %336 = load ptr, ptr %335, align 8, !tbaa !43
  %337 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 0, i32 4
  %338 = load i32, ptr %337, align 4, !tbaa !44
  %339 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 0, i32 3
  %340 = load i32, ptr %339, align 8, !tbaa !44
  %341 = mul nsw i32 %340, %338
  %342 = sext i32 %341 to i64
  %343 = shl nsw i64 %342, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %333, ptr align 2 %336, i64 %343, i1 false)
  %344 = load i32, ptr %330, align 8, !tbaa !45
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %371, label %346

346:                                              ; preds = %328
  %347 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 1, i64 1
  %348 = load ptr, ptr %347, align 8, !tbaa !43
  %349 = load ptr, ptr %348, align 8, !tbaa !43
  %350 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 1, i64 2
  %351 = load ptr, ptr %350, align 8, !tbaa !43
  %352 = load ptr, ptr %351, align 8, !tbaa !43
  %353 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 0, i32 4, i64 1
  %354 = load i32, ptr %353, align 4, !tbaa !44
  %355 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 0, i32 3, i64 1
  %356 = load i32, ptr %355, align 4, !tbaa !44
  %357 = mul nsw i32 %356, %354
  %358 = sext i32 %357 to i64
  %359 = shl nsw i64 %358, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %349, ptr align 2 %352, i64 %359, i1 false)
  %360 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 1, i64 2
  %361 = load ptr, ptr %360, align 8, !tbaa !43
  %362 = load ptr, ptr %361, align 8, !tbaa !43
  %363 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 1, i64 1
  %364 = load ptr, ptr %363, align 8, !tbaa !43
  %365 = load ptr, ptr %364, align 8, !tbaa !43
  %366 = load i32, ptr %353, align 4, !tbaa !44
  %367 = load i32, ptr %355, align 4, !tbaa !44
  %368 = mul nsw i32 %367, %366
  %369 = sext i32 %368 to i64
  %370 = shl nsw i64 %369, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %362, ptr align 2 %365, i64 %370, i1 false)
  br label %371

371:                                              ; preds = %328, %346
  %372 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 4
  %373 = load i32, ptr %372, align 4, !tbaa !44
  %374 = icmp sgt i32 %373, 1
  br i1 %374, label %375, label %392

375:                                              ; preds = %371
  %376 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 3
  br label %377

377:                                              ; preds = %375, %377
  %378 = phi i64 [ 1, %375 ], [ %388, %377 ]
  %379 = load ptr, ptr %284, align 8, !tbaa !43
  %380 = getelementptr inbounds ptr, ptr %379, i64 %378
  %381 = load ptr, ptr %380, align 8, !tbaa !43
  %382 = load ptr, ptr %331, align 8, !tbaa !43
  %383 = getelementptr inbounds ptr, ptr %382, i64 %378
  %384 = load ptr, ptr %383, align 8, !tbaa !43
  %385 = load i32, ptr %376, align 8, !tbaa !44
  %386 = sext i32 %385 to i64
  %387 = shl nsw i64 %386, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %381, ptr align 2 %384, i64 %387, i1 false)
  %388 = add nuw nsw i64 %378, 2
  %389 = load i32, ptr %372, align 4, !tbaa !44
  %390 = sext i32 %389 to i64
  %391 = icmp slt i64 %388, %390
  br i1 %391, label %377, label %392, !llvm.loop !48

392:                                              ; preds = %377, %371
  %393 = load i32, ptr %329, align 8, !tbaa !45
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %853, label %395

395:                                              ; preds = %392
  %396 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 4, i64 1
  %397 = load i32, ptr %396, align 4, !tbaa !44
  %398 = icmp sgt i32 %397, 1
  br i1 %398, label %399, label %403

399:                                              ; preds = %395
  %400 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1, i64 1
  %401 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 1, i64 1
  %402 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 3, i64 1
  br label %411

403:                                              ; preds = %411, %395
  %404 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 4, i64 2
  %405 = load i32, ptr %404, align 4, !tbaa !44
  %406 = icmp sgt i32 %405, 1
  br i1 %406, label %407, label %853

407:                                              ; preds = %403
  %408 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1, i64 2
  %409 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 1, i64 2
  %410 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 3, i64 2
  br label %426

411:                                              ; preds = %399, %411
  %412 = phi i64 [ 1, %399 ], [ %422, %411 ]
  %413 = load ptr, ptr %400, align 8, !tbaa !43
  %414 = getelementptr inbounds ptr, ptr %413, i64 %412
  %415 = load ptr, ptr %414, align 8, !tbaa !43
  %416 = load ptr, ptr %401, align 8, !tbaa !43
  %417 = getelementptr inbounds ptr, ptr %416, i64 %412
  %418 = load ptr, ptr %417, align 8, !tbaa !43
  %419 = load i32, ptr %402, align 4, !tbaa !44
  %420 = sext i32 %419 to i64
  %421 = shl nsw i64 %420, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %415, ptr align 2 %418, i64 %421, i1 false)
  %422 = add nuw nsw i64 %412, 2
  %423 = load i32, ptr %396, align 4, !tbaa !44
  %424 = sext i32 %423 to i64
  %425 = icmp slt i64 %422, %424
  br i1 %425, label %411, label %403, !llvm.loop !51

426:                                              ; preds = %407, %426
  %427 = phi i64 [ 1, %407 ], [ %437, %426 ]
  %428 = load ptr, ptr %408, align 8, !tbaa !43
  %429 = getelementptr inbounds ptr, ptr %428, i64 %427
  %430 = load ptr, ptr %429, align 8, !tbaa !43
  %431 = load ptr, ptr %409, align 8, !tbaa !43
  %432 = getelementptr inbounds ptr, ptr %431, i64 %427
  %433 = load ptr, ptr %432, align 8, !tbaa !43
  %434 = load i32, ptr %410, align 8, !tbaa !44
  %435 = sext i32 %434 to i64
  %436 = shl nsw i64 %435, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %430, ptr align 2 %433, i64 %436, i1 false)
  %437 = add nuw nsw i64 %427, 2
  %438 = load i32, ptr %404, align 4, !tbaa !44
  %439 = sext i32 %438 to i64
  %440 = icmp slt i64 %437, %439
  br i1 %440, label %426, label %853, !llvm.loop !52

441:                                              ; preds = %2
  %442 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109
  %443 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 112
  %444 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 0, i32 4
  %445 = load i32, ptr %444, align 4, !tbaa !44
  %446 = icmp sgt i32 %445, 0
  br i1 %446, label %447, label %502

447:                                              ; preds = %441
  %448 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 0, i32 3
  %449 = load i32, ptr %448, align 8, !tbaa !44
  %450 = icmp sgt i32 %449, 0
  %451 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 1
  %452 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 112, i32 0, i32 16
  %453 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 112, i32 1
  %454 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 111, i32 1
  %455 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 112, i32 0, i32 15
  %456 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1
  %457 = zext nneg i32 %445 to i64
  %458 = zext nneg i32 %449 to i64
  br label %459

459:                                              ; preds = %447, %499
  %460 = phi i64 [ 0, %447 ], [ %500, %499 ]
  br i1 %450, label %461, label %499

461:                                              ; preds = %459
  %462 = load ptr, ptr %451, align 8, !tbaa !43
  %463 = getelementptr inbounds ptr, ptr %462, i64 %460
  %464 = load ptr, ptr %463, align 8, !tbaa !43
  %465 = load i32, ptr %452, align 4, !tbaa !44
  %466 = load ptr, ptr %453, align 8, !tbaa !43
  %467 = getelementptr inbounds ptr, ptr %466, i64 %460
  %468 = load ptr, ptr %467, align 8, !tbaa !43
  %469 = load ptr, ptr %454, align 8, !tbaa !43
  %470 = getelementptr inbounds ptr, ptr %469, i64 %460
  %471 = load ptr, ptr %470, align 8, !tbaa !43
  %472 = load i32, ptr %455, align 8, !tbaa !44
  %473 = add nsw i32 %472, -1
  %474 = shl nuw i32 1, %473
  %475 = load ptr, ptr %456, align 8, !tbaa !43
  %476 = getelementptr inbounds ptr, ptr %475, i64 %460
  %477 = load ptr, ptr %476, align 8, !tbaa !43
  br label %478

478:                                              ; preds = %461, %478
  %479 = phi i64 [ 0, %461 ], [ %497, %478 ]
  %480 = getelementptr inbounds i16, ptr %464, i64 %479
  %481 = load i16, ptr %480, align 2, !tbaa !53
  %482 = zext i16 %481 to i32
  %483 = getelementptr inbounds i16, ptr %468, i64 %479
  %484 = load i16, ptr %483, align 2, !tbaa !53
  %485 = zext i16 %484 to i32
  %486 = sub nsw i32 %465, %485
  %487 = mul nsw i32 %486, %482
  %488 = getelementptr inbounds i16, ptr %471, i64 %479
  %489 = load i16, ptr %488, align 2, !tbaa !53
  %490 = zext i16 %489 to i32
  %491 = mul nuw nsw i32 %490, %485
  %492 = add nsw i32 %491, %487
  %493 = add nsw i32 %492, %474
  %494 = ashr i32 %493, %472
  %495 = trunc i32 %494 to i16
  %496 = getelementptr inbounds i16, ptr %477, i64 %479
  store i16 %495, ptr %496, align 2, !tbaa !53
  %497 = add nuw nsw i64 %479, 1
  %498 = icmp eq i64 %497, %458
  br i1 %498, label %499, label %478, !llvm.loop !55

499:                                              ; preds = %478, %459
  %500 = add nuw nsw i64 %460, 1
  %501 = icmp eq i64 %500, %457
  br i1 %501, label %502, label %459, !llvm.loop !56

502:                                              ; preds = %499, %441
  %503 = load i32, ptr %442, align 8, !tbaa !45
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %569, label %505

505:                                              ; preds = %502
  %506 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 0, i32 4, i64 1
  %507 = load i32, ptr %506, align 4, !tbaa !44
  %508 = icmp sgt i32 %507, 0
  %509 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 0, i32 3, i64 1
  %510 = zext nneg i32 %507 to i64
  br label %511

511:                                              ; preds = %505, %566
  %512 = phi i64 [ 1, %505 ], [ %567, %566 ]
  br i1 %508, label %513, label %566

513:                                              ; preds = %511
  %514 = load i32, ptr %509, align 4, !tbaa !44
  %515 = icmp sgt i32 %514, 0
  %516 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110, i32 1, i64 %512
  %517 = getelementptr inbounds %struct.frame_format, ptr %443, i64 0, i32 16, i64 %512
  %518 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 112, i32 1, i64 %512
  %519 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 111, i32 1, i64 %512
  %520 = getelementptr inbounds %struct.frame_format, ptr %443, i64 0, i32 15, i64 %512
  %521 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1, i64 %512
  %522 = zext nneg i32 %514 to i64
  br label %523

523:                                              ; preds = %513, %563
  %524 = phi i64 [ 0, %513 ], [ %564, %563 ]
  br i1 %515, label %525, label %563

525:                                              ; preds = %523
  %526 = load ptr, ptr %516, align 8, !tbaa !43
  %527 = getelementptr inbounds ptr, ptr %526, i64 %524
  %528 = load ptr, ptr %527, align 8, !tbaa !43
  %529 = load i32, ptr %517, align 4, !tbaa !44
  %530 = load ptr, ptr %518, align 8, !tbaa !43
  %531 = getelementptr inbounds ptr, ptr %530, i64 %524
  %532 = load ptr, ptr %531, align 8, !tbaa !43
  %533 = load ptr, ptr %519, align 8, !tbaa !43
  %534 = getelementptr inbounds ptr, ptr %533, i64 %524
  %535 = load ptr, ptr %534, align 8, !tbaa !43
  %536 = load i32, ptr %520, align 4, !tbaa !44
  %537 = add nsw i32 %536, -1
  %538 = shl nuw i32 1, %537
  %539 = load ptr, ptr %521, align 8, !tbaa !43
  %540 = getelementptr inbounds ptr, ptr %539, i64 %524
  %541 = load ptr, ptr %540, align 8, !tbaa !43
  br label %542

542:                                              ; preds = %525, %542
  %543 = phi i64 [ 0, %525 ], [ %561, %542 ]
  %544 = getelementptr inbounds i16, ptr %528, i64 %543
  %545 = load i16, ptr %544, align 2, !tbaa !53
  %546 = zext i16 %545 to i32
  %547 = getelementptr inbounds i16, ptr %532, i64 %543
  %548 = load i16, ptr %547, align 2, !tbaa !53
  %549 = zext i16 %548 to i32
  %550 = sub nsw i32 %529, %549
  %551 = mul nsw i32 %550, %546
  %552 = getelementptr inbounds i16, ptr %535, i64 %543
  %553 = load i16, ptr %552, align 2, !tbaa !53
  %554 = zext i16 %553 to i32
  %555 = mul nuw nsw i32 %554, %549
  %556 = add nsw i32 %555, %551
  %557 = add nsw i32 %556, %538
  %558 = ashr i32 %557, %536
  %559 = trunc i32 %558 to i16
  %560 = getelementptr inbounds i16, ptr %541, i64 %543
  store i16 %559, ptr %560, align 2, !tbaa !53
  %561 = add nuw nsw i64 %543, 1
  %562 = icmp eq i64 %561, %522
  br i1 %562, label %563, label %542, !llvm.loop !57

563:                                              ; preds = %542, %523
  %564 = add nuw nsw i64 %524, 1
  %565 = icmp eq i64 %564, %510
  br i1 %565, label %566, label %523, !llvm.loop !58

566:                                              ; preds = %563, %511
  %567 = add nuw nsw i64 %512, 1
  %568 = icmp eq i64 %567, 3
  br i1 %568, label %569, label %511, !llvm.loop !59

569:                                              ; preds = %566, %502
  %570 = getelementptr inbounds %struct.inp_par, ptr %1, i64 0, i32 12
  %571 = load i32, ptr %570, align 4, !tbaa !47
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %853, label %573

573:                                              ; preds = %569
  %574 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113
  %575 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 116
  %576 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 4
  %577 = load i32, ptr %576, align 4, !tbaa !44
  %578 = icmp sgt i32 %577, 0
  br i1 %578, label %579, label %634

579:                                              ; preds = %573
  %580 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 3
  %581 = load i32, ptr %580, align 8, !tbaa !44
  %582 = icmp sgt i32 %581, 0
  %583 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 1
  %584 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 116, i32 0, i32 16
  %585 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 116, i32 1
  %586 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 115, i32 1
  %587 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 116, i32 0, i32 15
  %588 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 1
  %589 = zext nneg i32 %577 to i64
  %590 = zext nneg i32 %581 to i64
  br label %591

591:                                              ; preds = %579, %631
  %592 = phi i64 [ 0, %579 ], [ %632, %631 ]
  br i1 %582, label %593, label %631

593:                                              ; preds = %591
  %594 = load ptr, ptr %583, align 8, !tbaa !43
  %595 = getelementptr inbounds ptr, ptr %594, i64 %592
  %596 = load ptr, ptr %595, align 8, !tbaa !43
  %597 = load i32, ptr %584, align 4, !tbaa !44
  %598 = load ptr, ptr %585, align 8, !tbaa !43
  %599 = getelementptr inbounds ptr, ptr %598, i64 %592
  %600 = load ptr, ptr %599, align 8, !tbaa !43
  %601 = load ptr, ptr %586, align 8, !tbaa !43
  %602 = getelementptr inbounds ptr, ptr %601, i64 %592
  %603 = load ptr, ptr %602, align 8, !tbaa !43
  %604 = load i32, ptr %587, align 8, !tbaa !44
  %605 = add nsw i32 %604, -1
  %606 = shl nuw i32 1, %605
  %607 = load ptr, ptr %588, align 8, !tbaa !43
  %608 = getelementptr inbounds ptr, ptr %607, i64 %592
  %609 = load ptr, ptr %608, align 8, !tbaa !43
  br label %610

610:                                              ; preds = %593, %610
  %611 = phi i64 [ 0, %593 ], [ %629, %610 ]
  %612 = getelementptr inbounds i16, ptr %596, i64 %611
  %613 = load i16, ptr %612, align 2, !tbaa !53
  %614 = zext i16 %613 to i32
  %615 = getelementptr inbounds i16, ptr %600, i64 %611
  %616 = load i16, ptr %615, align 2, !tbaa !53
  %617 = zext i16 %616 to i32
  %618 = sub nsw i32 %597, %617
  %619 = mul nsw i32 %618, %614
  %620 = getelementptr inbounds i16, ptr %603, i64 %611
  %621 = load i16, ptr %620, align 2, !tbaa !53
  %622 = zext i16 %621 to i32
  %623 = mul nuw nsw i32 %622, %617
  %624 = add nsw i32 %623, %619
  %625 = add nsw i32 %624, %606
  %626 = ashr i32 %625, %604
  %627 = trunc i32 %626 to i16
  %628 = getelementptr inbounds i16, ptr %609, i64 %611
  store i16 %627, ptr %628, align 2, !tbaa !53
  %629 = add nuw nsw i64 %611, 1
  %630 = icmp eq i64 %629, %590
  br i1 %630, label %631, label %610, !llvm.loop !55

631:                                              ; preds = %610, %591
  %632 = add nuw nsw i64 %592, 1
  %633 = icmp eq i64 %632, %589
  br i1 %633, label %634, label %591, !llvm.loop !56

634:                                              ; preds = %631, %573
  %635 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 4
  %636 = load i32, ptr %574, align 8, !tbaa !45
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %702, label %638

638:                                              ; preds = %634
  %639 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 4, i64 1
  %640 = load i32, ptr %639, align 4, !tbaa !44
  %641 = icmp sgt i32 %640, 0
  %642 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 3, i64 1
  %643 = zext nneg i32 %640 to i64
  br label %644

644:                                              ; preds = %638, %699
  %645 = phi i64 [ 1, %638 ], [ %700, %699 ]
  br i1 %641, label %646, label %699

646:                                              ; preds = %644
  %647 = load i32, ptr %642, align 4, !tbaa !44
  %648 = icmp sgt i32 %647, 0
  %649 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114, i32 1, i64 %645
  %650 = getelementptr inbounds %struct.frame_format, ptr %575, i64 0, i32 16, i64 %645
  %651 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 116, i32 1, i64 %645
  %652 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 115, i32 1, i64 %645
  %653 = getelementptr inbounds %struct.frame_format, ptr %575, i64 0, i32 15, i64 %645
  %654 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 1, i64 %645
  %655 = zext nneg i32 %647 to i64
  br label %656

656:                                              ; preds = %646, %696
  %657 = phi i64 [ 0, %646 ], [ %697, %696 ]
  br i1 %648, label %658, label %696

658:                                              ; preds = %656
  %659 = load ptr, ptr %649, align 8, !tbaa !43
  %660 = getelementptr inbounds ptr, ptr %659, i64 %657
  %661 = load ptr, ptr %660, align 8, !tbaa !43
  %662 = load i32, ptr %650, align 4, !tbaa !44
  %663 = load ptr, ptr %651, align 8, !tbaa !43
  %664 = getelementptr inbounds ptr, ptr %663, i64 %657
  %665 = load ptr, ptr %664, align 8, !tbaa !43
  %666 = load ptr, ptr %652, align 8, !tbaa !43
  %667 = getelementptr inbounds ptr, ptr %666, i64 %657
  %668 = load ptr, ptr %667, align 8, !tbaa !43
  %669 = load i32, ptr %653, align 4, !tbaa !44
  %670 = add nsw i32 %669, -1
  %671 = shl nuw i32 1, %670
  %672 = load ptr, ptr %654, align 8, !tbaa !43
  %673 = getelementptr inbounds ptr, ptr %672, i64 %657
  %674 = load ptr, ptr %673, align 8, !tbaa !43
  br label %675

675:                                              ; preds = %658, %675
  %676 = phi i64 [ 0, %658 ], [ %694, %675 ]
  %677 = getelementptr inbounds i16, ptr %661, i64 %676
  %678 = load i16, ptr %677, align 2, !tbaa !53
  %679 = zext i16 %678 to i32
  %680 = getelementptr inbounds i16, ptr %665, i64 %676
  %681 = load i16, ptr %680, align 2, !tbaa !53
  %682 = zext i16 %681 to i32
  %683 = sub nsw i32 %662, %682
  %684 = mul nsw i32 %683, %679
  %685 = getelementptr inbounds i16, ptr %668, i64 %676
  %686 = load i16, ptr %685, align 2, !tbaa !53
  %687 = zext i16 %686 to i32
  %688 = mul nuw nsw i32 %687, %682
  %689 = add nsw i32 %688, %684
  %690 = add nsw i32 %689, %671
  %691 = ashr i32 %690, %669
  %692 = trunc i32 %691 to i16
  %693 = getelementptr inbounds i16, ptr %674, i64 %676
  store i16 %692, ptr %693, align 2, !tbaa !53
  %694 = add nuw nsw i64 %676, 1
  %695 = icmp eq i64 %694, %655
  br i1 %695, label %696, label %675, !llvm.loop !57

696:                                              ; preds = %675, %656
  %697 = add nuw nsw i64 %657, 1
  %698 = icmp eq i64 %697, %643
  br i1 %698, label %699, label %656, !llvm.loop !58

699:                                              ; preds = %696, %644
  %700 = add nuw nsw i64 %645, 1
  %701 = icmp eq i64 %700, 3
  br i1 %701, label %702, label %644, !llvm.loop !59

702:                                              ; preds = %699, %634
  %703 = load i32, ptr %635, align 4, !tbaa !44
  %704 = icmp sgt i32 %703, 1
  br i1 %704, label %705, label %724

705:                                              ; preds = %702
  %706 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1
  %707 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 1
  %708 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 3
  br label %709

709:                                              ; preds = %705, %709
  %710 = phi i64 [ 1, %705 ], [ %720, %709 ]
  %711 = load ptr, ptr %706, align 8, !tbaa !43
  %712 = getelementptr inbounds ptr, ptr %711, i64 %710
  %713 = load ptr, ptr %712, align 8, !tbaa !43
  %714 = load ptr, ptr %707, align 8, !tbaa !43
  %715 = getelementptr inbounds ptr, ptr %714, i64 %710
  %716 = load ptr, ptr %715, align 8, !tbaa !43
  %717 = load i32, ptr %708, align 8, !tbaa !44
  %718 = sext i32 %717 to i64
  %719 = shl nsw i64 %718, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %713, ptr align 2 %716, i64 %719, i1 false)
  %720 = add nuw nsw i64 %710, 2
  %721 = load i32, ptr %635, align 4, !tbaa !44
  %722 = sext i32 %721 to i64
  %723 = icmp slt i64 %720, %722
  br i1 %723, label %709, label %724, !llvm.loop !48

724:                                              ; preds = %709, %702
  %725 = load i32, ptr %574, align 8, !tbaa !45
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %853, label %727

727:                                              ; preds = %724
  %728 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 4, i64 1
  %729 = load i32, ptr %728, align 4, !tbaa !44
  %730 = icmp sgt i32 %729, 1
  br i1 %730, label %731, label %735

731:                                              ; preds = %727
  %732 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1, i64 1
  %733 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 1, i64 1
  %734 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 3, i64 1
  br label %743

735:                                              ; preds = %743, %727
  %736 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 4, i64 2
  %737 = load i32, ptr %736, align 4, !tbaa !44
  %738 = icmp sgt i32 %737, 1
  br i1 %738, label %739, label %853

739:                                              ; preds = %735
  %740 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1, i64 2
  %741 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 1, i64 2
  %742 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 3, i64 2
  br label %758

743:                                              ; preds = %731, %743
  %744 = phi i64 [ 1, %731 ], [ %754, %743 ]
  %745 = load ptr, ptr %732, align 8, !tbaa !43
  %746 = getelementptr inbounds ptr, ptr %745, i64 %744
  %747 = load ptr, ptr %746, align 8, !tbaa !43
  %748 = load ptr, ptr %733, align 8, !tbaa !43
  %749 = getelementptr inbounds ptr, ptr %748, i64 %744
  %750 = load ptr, ptr %749, align 8, !tbaa !43
  %751 = load i32, ptr %734, align 4, !tbaa !44
  %752 = sext i32 %751 to i64
  %753 = shl nsw i64 %752, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %747, ptr align 2 %750, i64 %753, i1 false)
  %754 = add nuw nsw i64 %744, 2
  %755 = load i32, ptr %728, align 4, !tbaa !44
  %756 = sext i32 %755 to i64
  %757 = icmp slt i64 %754, %756
  br i1 %757, label %743, label %735, !llvm.loop !51

758:                                              ; preds = %739, %758
  %759 = phi i64 [ 1, %739 ], [ %769, %758 ]
  %760 = load ptr, ptr %740, align 8, !tbaa !43
  %761 = getelementptr inbounds ptr, ptr %760, i64 %759
  %762 = load ptr, ptr %761, align 8, !tbaa !43
  %763 = load ptr, ptr %741, align 8, !tbaa !43
  %764 = getelementptr inbounds ptr, ptr %763, i64 %759
  %765 = load ptr, ptr %764, align 8, !tbaa !43
  %766 = load i32, ptr %742, align 8, !tbaa !44
  %767 = sext i32 %766 to i64
  %768 = shl nsw i64 %767, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %762, ptr align 2 %765, i64 %768, i1 false)
  %769 = add nuw nsw i64 %759, 2
  %770 = load i32, ptr %736, align 4, !tbaa !44
  %771 = sext i32 %770 to i64
  %772 = icmp slt i64 %769, %771
  br i1 %772, label %758, label %853, !llvm.loop !52

773:                                              ; preds = %2
  %774 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109
  %775 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110
  tail call fastcc void @FilterImageSep(ptr noundef nonnull %774, ptr noundef nonnull %775)
  %776 = getelementptr inbounds %struct.inp_par, ptr %1, i64 0, i32 12
  %777 = load i32, ptr %776, align 4, !tbaa !47
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %853, label %779

779:                                              ; preds = %773
  %780 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114
  tail call fastcc void @FilterImageSep(ptr noundef nonnull %774, ptr noundef nonnull %780)
  %781 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113
  %782 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 4
  %783 = load i32, ptr %782, align 4, !tbaa !44
  %784 = icmp sgt i32 %783, 1
  br i1 %784, label %785, label %804

785:                                              ; preds = %779
  %786 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1
  %787 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 1
  %788 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 3
  br label %789

789:                                              ; preds = %785, %789
  %790 = phi i64 [ 1, %785 ], [ %800, %789 ]
  %791 = load ptr, ptr %786, align 8, !tbaa !43
  %792 = getelementptr inbounds ptr, ptr %791, i64 %790
  %793 = load ptr, ptr %792, align 8, !tbaa !43
  %794 = load ptr, ptr %787, align 8, !tbaa !43
  %795 = getelementptr inbounds ptr, ptr %794, i64 %790
  %796 = load ptr, ptr %795, align 8, !tbaa !43
  %797 = load i32, ptr %788, align 8, !tbaa !44
  %798 = sext i32 %797 to i64
  %799 = shl nsw i64 %798, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %793, ptr align 2 %796, i64 %799, i1 false)
  %800 = add nuw nsw i64 %790, 2
  %801 = load i32, ptr %782, align 4, !tbaa !44
  %802 = sext i32 %801 to i64
  %803 = icmp slt i64 %800, %802
  br i1 %803, label %789, label %804, !llvm.loop !48

804:                                              ; preds = %789, %779
  %805 = load i32, ptr %781, align 8, !tbaa !45
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %853, label %807

807:                                              ; preds = %804
  %808 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 4, i64 1
  %809 = load i32, ptr %808, align 4, !tbaa !44
  %810 = icmp sgt i32 %809, 1
  br i1 %810, label %811, label %815

811:                                              ; preds = %807
  %812 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1, i64 1
  %813 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 1, i64 1
  %814 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 3, i64 1
  br label %823

815:                                              ; preds = %823, %807
  %816 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 4, i64 2
  %817 = load i32, ptr %816, align 4, !tbaa !44
  %818 = icmp sgt i32 %817, 1
  br i1 %818, label %819, label %853

819:                                              ; preds = %815
  %820 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109, i32 1, i64 2
  %821 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 1, i64 2
  %822 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113, i32 0, i32 3, i64 2
  br label %838

823:                                              ; preds = %811, %823
  %824 = phi i64 [ 1, %811 ], [ %834, %823 ]
  %825 = load ptr, ptr %812, align 8, !tbaa !43
  %826 = getelementptr inbounds ptr, ptr %825, i64 %824
  %827 = load ptr, ptr %826, align 8, !tbaa !43
  %828 = load ptr, ptr %813, align 8, !tbaa !43
  %829 = getelementptr inbounds ptr, ptr %828, i64 %824
  %830 = load ptr, ptr %829, align 8, !tbaa !43
  %831 = load i32, ptr %814, align 4, !tbaa !44
  %832 = sext i32 %831 to i64
  %833 = shl nsw i64 %832, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %827, ptr align 2 %830, i64 %833, i1 false)
  %834 = add nuw nsw i64 %824, 2
  %835 = load i32, ptr %808, align 4, !tbaa !44
  %836 = sext i32 %835 to i64
  %837 = icmp slt i64 %834, %836
  br i1 %837, label %823, label %815, !llvm.loop !51

838:                                              ; preds = %819, %838
  %839 = phi i64 [ 1, %819 ], [ %849, %838 ]
  %840 = load ptr, ptr %820, align 8, !tbaa !43
  %841 = getelementptr inbounds ptr, ptr %840, i64 %839
  %842 = load ptr, ptr %841, align 8, !tbaa !43
  %843 = load ptr, ptr %821, align 8, !tbaa !43
  %844 = getelementptr inbounds ptr, ptr %843, i64 %839
  %845 = load ptr, ptr %844, align 8, !tbaa !43
  %846 = load i32, ptr %822, align 8, !tbaa !44
  %847 = sext i32 %846 to i64
  %848 = shl nsw i64 %847, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %842, ptr align 2 %845, i64 %848, i1 false)
  %849 = add nuw nsw i64 %839, 2
  %850 = load i32, ptr %816, align 4, !tbaa !44
  %851 = sext i32 %850 to i64
  %852 = icmp slt i64 %849, %851
  br i1 %852, label %838, label %853, !llvm.loop !52

853:                                              ; preds = %758, %426, %267, %838, %108, %735, %403, %244, %815, %85, %804, %724, %392, %233, %74, %773, %569, %324, %165, %47
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @FilterImageSep(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = add nsw i32 %4, -1
  %6 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !44
  %8 = add nsw i32 %7, -1
  %9 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !44
  %11 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = tail call ptr @new_mem2Dint(i32 noundef %10, i32 noundef %12) #6
  %14 = load i32, ptr %6, align 4, !tbaa !44
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.image_data, ptr %1, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %94
  %19 = phi i64 [ 0, %16 ], [ %95, %94 ]
  %20 = load i32, ptr %3, align 8, !tbaa !44
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %94

22:                                               ; preds = %18
  %23 = load ptr, ptr %17, align 8, !tbaa !43
  %24 = getelementptr inbounds ptr, ptr %23, i64 %19
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds ptr, ptr %13, i64 %19
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  br label %38

28:                                               ; preds = %94, %2
  %29 = phi i32 [ %14, %2 ], [ %96, %94 ]
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %184

31:                                               ; preds = %28
  %32 = load i32, ptr %3, align 8, !tbaa !44
  %33 = icmp sgt i32 %32, 0
  %34 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 16
  %35 = getelementptr inbounds %struct.image_data, ptr %0, i64 0, i32 1
  %36 = zext nneg i32 %29 to i64
  %37 = zext nneg i32 %32 to i64
  br label %99

38:                                               ; preds = %22, %38
  %39 = phi i64 [ 0, %22 ], [ %62, %38 ]
  %40 = trunc i64 %39 to i32
  %41 = tail call i32 @llvm.smax.i32(i32 %40, i32 2)
  %42 = add nsw i32 %41, -2
  %43 = tail call i32 @llvm.smin.i32(i32 %42, i32 %5)
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16, ptr %25, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !53
  %47 = zext i16 %46 to i32
  %48 = trunc i64 %39 to i32
  %49 = tail call i32 @llvm.smax.i32(i32 %48, i32 1)
  %50 = add nsw i32 %49, -1
  %51 = tail call i32 @llvm.smin.i32(i32 %50, i32 %5)
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i16, ptr %25, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !53
  %55 = zext i16 %54 to i32
  %56 = trunc i64 %39 to i32
  %57 = tail call i32 @llvm.smin.i32(i32 %56, i32 %5)
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i16, ptr %25, i64 %58
  %60 = load i16, ptr %59, align 2, !tbaa !53
  %61 = zext i16 %60 to i32
  %62 = add nuw nsw i64 %39, 1
  %63 = trunc i64 %62 to i32
  %64 = tail call i32 @llvm.smin.i32(i32 %63, i32 %5)
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i16, ptr %25, i64 %65
  %67 = load i16, ptr %66, align 2, !tbaa !53
  %68 = zext i16 %67 to i32
  %69 = trunc i64 %39 to i32
  %70 = add i32 %69, 2
  %71 = tail call i32 @llvm.smin.i32(i32 %70, i32 %5)
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i16, ptr %25, i64 %72
  %74 = load i16, ptr %73, align 2, !tbaa !53
  %75 = zext i16 %74 to i32
  %76 = trunc i64 %39 to i32
  %77 = add i32 %76, 3
  %78 = tail call i32 @llvm.smin.i32(i32 %77, i32 %5)
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i16, ptr %25, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !53
  %82 = zext i16 %81 to i32
  %83 = add nuw nsw i32 %68, %61
  %84 = mul nuw nsw i32 %83, 20
  %85 = add nuw nsw i32 %75, %55
  %86 = mul nsw i32 %85, -5
  %87 = add nuw nsw i32 %82, %47
  %88 = add nuw nsw i32 %87, %84
  %89 = add nsw i32 %88, %86
  %90 = getelementptr inbounds i32, ptr %27, i64 %39
  store i32 %89, ptr %90, align 4, !tbaa !44
  %91 = load i32, ptr %3, align 8, !tbaa !44
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %62, %92
  br i1 %93, label %38, label %94, !llvm.loop !60

94:                                               ; preds = %38, %18
  %95 = add nuw nsw i64 %19, 1
  %96 = load i32, ptr %6, align 4, !tbaa !44
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %95, %97
  br i1 %98, label %18, label %28, !llvm.loop !61

99:                                               ; preds = %31, %181
  %100 = phi i64 [ 0, %31 ], [ %182, %181 ]
  br i1 %33, label %101, label %181

101:                                              ; preds = %99
  %102 = load i32, ptr %34, align 4, !tbaa !44
  %103 = trunc i64 %100 to i32
  %104 = tail call i32 @llvm.smax.i32(i32 %103, i32 2)
  %105 = add nsw i32 %104, -2
  %106 = tail call i32 @llvm.smin.i32(i32 %105, i32 %8)
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds ptr, ptr %13, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !43
  %110 = trunc i64 %100 to i32
  %111 = tail call i32 @llvm.smax.i32(i32 %110, i32 1)
  %112 = add nsw i32 %111, -1
  %113 = tail call i32 @llvm.smin.i32(i32 %112, i32 %8)
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds ptr, ptr %13, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !43
  %117 = trunc i64 %100 to i32
  %118 = tail call i32 @llvm.smin.i32(i32 %117, i32 %8)
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds ptr, ptr %13, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !43
  %122 = trunc i64 %100 to i32
  %123 = add i32 %122, 1
  %124 = tail call i32 @llvm.smin.i32(i32 %123, i32 %8)
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds ptr, ptr %13, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !43
  %128 = trunc i64 %100 to i32
  %129 = add i32 %128, 2
  %130 = tail call i32 @llvm.smin.i32(i32 %129, i32 %8)
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds ptr, ptr %13, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !43
  %134 = trunc i64 %100 to i32
  %135 = add i32 %134, 3
  %136 = tail call i32 @llvm.smin.i32(i32 %135, i32 %8)
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds ptr, ptr %13, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !43
  %140 = load ptr, ptr %35, align 8, !tbaa !43
  %141 = getelementptr inbounds ptr, ptr %140, i64 %100
  %142 = load ptr, ptr %141, align 8, !tbaa !43
  br label %143

143:                                              ; preds = %101, %173
  %144 = phi i64 [ 0, %101 ], [ %179, %173 ]
  %145 = getelementptr inbounds i32, ptr %109, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !44
  %147 = getelementptr inbounds i32, ptr %116, i64 %144
  %148 = load i32, ptr %147, align 4, !tbaa !44
  %149 = getelementptr inbounds i32, ptr %121, i64 %144
  %150 = load i32, ptr %149, align 4, !tbaa !44
  %151 = getelementptr inbounds i32, ptr %127, i64 %144
  %152 = load i32, ptr %151, align 4, !tbaa !44
  %153 = getelementptr inbounds i32, ptr %133, i64 %144
  %154 = load i32, ptr %153, align 4, !tbaa !44
  %155 = getelementptr inbounds i32, ptr %139, i64 %144
  %156 = load i32, ptr %155, align 4, !tbaa !44
  %157 = add i32 %152, %150
  %158 = mul i32 %157, 20
  %159 = add i32 %154, %148
  %160 = mul i32 %159, -5
  %161 = add i32 %158, %146
  %162 = add i32 %161, %156
  %163 = add i32 %162, %160
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %143
  %166 = add nuw nsw i32 %163, 512
  %167 = lshr i32 %166, 10
  br label %173

168:                                              ; preds = %143
  %169 = tail call i32 @llvm.abs.i32(i32 %163, i1 true)
  %170 = add nuw nsw i32 %169, 512
  %171 = lshr i32 %170, 10
  %172 = sub nsw i32 0, %171
  br label %173

173:                                              ; preds = %165, %168
  %174 = phi i32 [ %167, %165 ], [ %172, %168 ]
  %175 = tail call i32 @llvm.smax.i32(i32 %174, i32 0)
  %176 = tail call i32 @llvm.smin.i32(i32 %175, i32 %102)
  %177 = trunc i32 %176 to i16
  %178 = getelementptr inbounds i16, ptr %142, i64 %144
  store i16 %177, ptr %178, align 2, !tbaa !53
  %179 = add nuw nsw i64 %144, 1
  %180 = icmp eq i64 %179, %37
  br i1 %180, label %181, label %143, !llvm.loop !62

181:                                              ; preds = %173, %99
  %182 = add nuw nsw i64 %100, 1
  %183 = icmp eq i64 %182, %36
  br i1 %183, label %184, label %99, !llvm.loop !63

184:                                              ; preds = %181, %28
  %185 = load i32, ptr %0, align 8, !tbaa !45
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %369, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 3, i64 1
  %189 = load i32, ptr %188, align 4, !tbaa !44
  %190 = add nsw i32 %189, -1
  %191 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 4, i64 1
  %192 = load i32, ptr %191, align 4, !tbaa !44
  %193 = add nsw i32 %192, -1
  br label %194

194:                                              ; preds = %187, %366
  %195 = phi i64 [ 1, %187 ], [ %367, %366 ]
  %196 = load i32, ptr %191, align 4, !tbaa !44
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.image_data, ptr %1, i64 0, i32 1, i64 %195
  br label %210

200:                                              ; preds = %276, %194
  %201 = phi i32 [ %196, %194 ], [ %278, %276 ]
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %366

203:                                              ; preds = %200
  %204 = load i32, ptr %188, align 4, !tbaa !44
  %205 = icmp sgt i32 %204, 0
  %206 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 16, i64 %195
  %207 = getelementptr inbounds %struct.image_data, ptr %0, i64 0, i32 1, i64 %195
  %208 = zext nneg i32 %201 to i64
  %209 = zext nneg i32 %204 to i64
  br label %281

210:                                              ; preds = %198, %276
  %211 = phi i64 [ 0, %198 ], [ %277, %276 ]
  %212 = load i32, ptr %188, align 4, !tbaa !44
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %276

214:                                              ; preds = %210
  %215 = load ptr, ptr %199, align 8, !tbaa !43
  %216 = getelementptr inbounds ptr, ptr %215, i64 %211
  %217 = load ptr, ptr %216, align 8, !tbaa !43
  %218 = getelementptr inbounds ptr, ptr %13, i64 %211
  %219 = load ptr, ptr %218, align 8, !tbaa !43
  br label %220

220:                                              ; preds = %214, %220
  %221 = phi i64 [ 0, %214 ], [ %244, %220 ]
  %222 = trunc i64 %221 to i32
  %223 = tail call i32 @llvm.smax.i32(i32 %222, i32 2)
  %224 = add nsw i32 %223, -2
  %225 = tail call i32 @llvm.smin.i32(i32 %224, i32 %190)
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i16, ptr %217, i64 %226
  %228 = load i16, ptr %227, align 2, !tbaa !53
  %229 = zext i16 %228 to i32
  %230 = trunc i64 %221 to i32
  %231 = tail call i32 @llvm.smax.i32(i32 %230, i32 1)
  %232 = add nsw i32 %231, -1
  %233 = tail call i32 @llvm.smin.i32(i32 %232, i32 %190)
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i16, ptr %217, i64 %234
  %236 = load i16, ptr %235, align 2, !tbaa !53
  %237 = zext i16 %236 to i32
  %238 = trunc i64 %221 to i32
  %239 = tail call i32 @llvm.smin.i32(i32 %238, i32 %190)
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i16, ptr %217, i64 %240
  %242 = load i16, ptr %241, align 2, !tbaa !53
  %243 = zext i16 %242 to i32
  %244 = add nuw nsw i64 %221, 1
  %245 = trunc i64 %244 to i32
  %246 = tail call i32 @llvm.smin.i32(i32 %245, i32 %190)
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i16, ptr %217, i64 %247
  %249 = load i16, ptr %248, align 2, !tbaa !53
  %250 = zext i16 %249 to i32
  %251 = trunc i64 %221 to i32
  %252 = add i32 %251, 2
  %253 = tail call i32 @llvm.smin.i32(i32 %252, i32 %190)
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i16, ptr %217, i64 %254
  %256 = load i16, ptr %255, align 2, !tbaa !53
  %257 = zext i16 %256 to i32
  %258 = trunc i64 %221 to i32
  %259 = add i32 %258, 3
  %260 = tail call i32 @llvm.smin.i32(i32 %259, i32 %190)
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i16, ptr %217, i64 %261
  %263 = load i16, ptr %262, align 2, !tbaa !53
  %264 = zext i16 %263 to i32
  %265 = add nuw nsw i32 %250, %243
  %266 = mul nuw nsw i32 %265, 20
  %267 = add nuw nsw i32 %257, %237
  %268 = mul nsw i32 %267, -5
  %269 = add nuw nsw i32 %264, %229
  %270 = add nuw nsw i32 %269, %266
  %271 = add nsw i32 %270, %268
  %272 = getelementptr inbounds i32, ptr %219, i64 %221
  store i32 %271, ptr %272, align 4, !tbaa !44
  %273 = load i32, ptr %188, align 4, !tbaa !44
  %274 = sext i32 %273 to i64
  %275 = icmp slt i64 %244, %274
  br i1 %275, label %220, label %276, !llvm.loop !64

276:                                              ; preds = %220, %210
  %277 = add nuw nsw i64 %211, 1
  %278 = load i32, ptr %191, align 4, !tbaa !44
  %279 = sext i32 %278 to i64
  %280 = icmp slt i64 %277, %279
  br i1 %280, label %210, label %200, !llvm.loop !65

281:                                              ; preds = %203, %363
  %282 = phi i64 [ 0, %203 ], [ %364, %363 ]
  br i1 %205, label %283, label %363

283:                                              ; preds = %281
  %284 = load i32, ptr %206, align 4, !tbaa !44
  %285 = trunc i64 %282 to i32
  %286 = tail call i32 @llvm.smax.i32(i32 %285, i32 2)
  %287 = add nsw i32 %286, -2
  %288 = tail call i32 @llvm.smin.i32(i32 %287, i32 %193)
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds ptr, ptr %13, i64 %289
  %291 = load ptr, ptr %290, align 8, !tbaa !43
  %292 = trunc i64 %282 to i32
  %293 = tail call i32 @llvm.smax.i32(i32 %292, i32 1)
  %294 = add nsw i32 %293, -1
  %295 = tail call i32 @llvm.smin.i32(i32 %294, i32 %193)
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds ptr, ptr %13, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !43
  %299 = trunc i64 %282 to i32
  %300 = tail call i32 @llvm.smin.i32(i32 %299, i32 %193)
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds ptr, ptr %13, i64 %301
  %303 = load ptr, ptr %302, align 8, !tbaa !43
  %304 = trunc i64 %282 to i32
  %305 = add i32 %304, 1
  %306 = tail call i32 @llvm.smin.i32(i32 %305, i32 %193)
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds ptr, ptr %13, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !43
  %310 = trunc i64 %282 to i32
  %311 = add i32 %310, 2
  %312 = tail call i32 @llvm.smin.i32(i32 %311, i32 %193)
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds ptr, ptr %13, i64 %313
  %315 = load ptr, ptr %314, align 8, !tbaa !43
  %316 = trunc i64 %282 to i32
  %317 = add i32 %316, 3
  %318 = tail call i32 @llvm.smin.i32(i32 %317, i32 %193)
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds ptr, ptr %13, i64 %319
  %321 = load ptr, ptr %320, align 8, !tbaa !43
  %322 = load ptr, ptr %207, align 8, !tbaa !43
  %323 = getelementptr inbounds ptr, ptr %322, i64 %282
  %324 = load ptr, ptr %323, align 8, !tbaa !43
  br label %325

325:                                              ; preds = %283, %355
  %326 = phi i64 [ 0, %283 ], [ %361, %355 ]
  %327 = getelementptr inbounds i32, ptr %291, i64 %326
  %328 = load i32, ptr %327, align 4, !tbaa !44
  %329 = getelementptr inbounds i32, ptr %298, i64 %326
  %330 = load i32, ptr %329, align 4, !tbaa !44
  %331 = getelementptr inbounds i32, ptr %303, i64 %326
  %332 = load i32, ptr %331, align 4, !tbaa !44
  %333 = getelementptr inbounds i32, ptr %309, i64 %326
  %334 = load i32, ptr %333, align 4, !tbaa !44
  %335 = getelementptr inbounds i32, ptr %315, i64 %326
  %336 = load i32, ptr %335, align 4, !tbaa !44
  %337 = getelementptr inbounds i32, ptr %321, i64 %326
  %338 = load i32, ptr %337, align 4, !tbaa !44
  %339 = add i32 %334, %332
  %340 = mul i32 %339, 20
  %341 = add i32 %336, %330
  %342 = mul i32 %341, -5
  %343 = add i32 %340, %328
  %344 = add i32 %343, %338
  %345 = add i32 %344, %342
  %346 = icmp sgt i32 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %325
  %348 = add nuw nsw i32 %345, 512
  %349 = lshr i32 %348, 10
  br label %355

350:                                              ; preds = %325
  %351 = tail call i32 @llvm.abs.i32(i32 %345, i1 true)
  %352 = add nuw nsw i32 %351, 512
  %353 = lshr i32 %352, 10
  %354 = sub nsw i32 0, %353
  br label %355

355:                                              ; preds = %347, %350
  %356 = phi i32 [ %349, %347 ], [ %354, %350 ]
  %357 = tail call i32 @llvm.smax.i32(i32 %356, i32 0)
  %358 = tail call i32 @llvm.smin.i32(i32 %357, i32 %284)
  %359 = trunc i32 %358 to i16
  %360 = getelementptr inbounds i16, ptr %324, i64 %326
  store i16 %359, ptr %360, align 2, !tbaa !53
  %361 = add nuw nsw i64 %326, 1
  %362 = icmp eq i64 %361, %209
  br i1 %362, label %363, label %325, !llvm.loop !66

363:                                              ; preds = %355, %281
  %364 = add nuw nsw i64 %282, 1
  %365 = icmp eq i64 %364, %208
  br i1 %365, label %366, label %281, !llvm.loop !67

366:                                              ; preds = %363, %200
  %367 = add nuw nsw i64 %195, 1
  %368 = icmp eq i64 %367, 3
  br i1 %368, label %369, label %194, !llvm.loop !68

369:                                              ; preds = %366, %184
  tail call void @free_mem2Dint(ptr noundef %13) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare ptr @new_mem2Dint(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @free_mem2Dint(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !38, i64 1064}
!35 = !{!"inp_par", !36, i64 0, !36, i64 255, !36, i64 510, !38, i64 768, !38, i64 772, !38, i64 776, !38, i64 780, !38, i64 784, !38, i64 788, !39, i64 792, !39, i64 928, !38, i64 1064, !38, i64 1068, !41, i64 1072, !41, i64 2040, !41, i64 3008, !38, i64 3976, !38, i64 3980, !38, i64 3984, !38, i64 3988, !38, i64 3992, !38, i64 3996, !38, i64 4000, !38, i64 4004, !38, i64 4008, !38, i64 4012}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"int", !36, i64 0}
!39 = !{!"frame_format", !38, i64 0, !38, i64 4, !40, i64 8, !36, i64 16, !36, i64 28, !38, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !38, i64 60, !38, i64 64, !38, i64 68, !36, i64 72, !38, i64 84, !36, i64 88, !36, i64 100, !36, i64 112, !38, i64 124, !38, i64 128}
!40 = !{!"double", !36, i64 0}
!41 = !{!"video_data_file", !36, i64 0, !36, i64 255, !36, i64 510, !38, i64 768, !38, i64 772, !39, i64 776, !38, i64 912, !38, i64 916, !38, i64 920, !38, i64 924, !38, i64 928, !38, i64 932, !38, i64 936, !38, i64 940, !38, i64 944, !38, i64 948, !38, i64 952, !42, i64 960}
!42 = !{!"any pointer", !36, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!38, !38, i64 0}
!45 = !{!46, !38, i64 0}
!46 = !{!"image_data", !39, i64 0, !36, i64 136, !36, i64 160, !36, i64 184, !36, i64 208, !36, i64 232, !36, i64 256, !36, i64 280, !36, i64 292, !36, i64 304}
!47 = !{!35, !38, i64 1068}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !49, !50}
!52 = distinct !{!52, !49, !50}
!53 = !{!54, !54, i64 0}
!54 = !{!"short", !36, i64 0}
!55 = distinct !{!55, !49, !50}
!56 = distinct !{!56, !49, !50}
!57 = distinct !{!57, !49, !50}
!58 = distinct !{!58, !49, !50}
!59 = distinct !{!59, !49, !50}
!60 = distinct !{!60, !49, !50}
!61 = distinct !{!61, !49, !50}
!62 = distinct !{!62, !49, !50}
!63 = distinct !{!63, !49, !50}
!64 = distinct !{!64, !49, !50}
!65 = distinct !{!65, !49, !50}
!66 = distinct !{!66, !49, !50}
!67 = distinct !{!67, !49, !50}
!68 = distinct !{!68, !49, !50}
