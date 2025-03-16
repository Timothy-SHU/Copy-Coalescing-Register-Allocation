; ModuleID = 'gxhint1.c'
source_filename = "gxhint1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.font_hints_s = type { i32, i32, i32, i32, i32, %struct.point_scale_s, %struct.stem_snap_table, %struct.stem_snap_table, i64, i64, i32, i32, [12 x %struct.alignment_zone] }
%struct.point_scale_s = type { %struct.pixel_scale_s, %struct.pixel_scale_s }
%struct.pixel_scale_s = type { i64, i64, i32 }
%struct.stem_snap_table = type { i32, [13 x i64] }
%struct.alignment_zone = type { i32, i64, i64, i64 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_type1_data_s = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i64, i64, i64, i32, float, float, %struct.anon, float, i32, %struct.anon.0, %struct.anon.1, i32, %struct.anon.2, i32, %struct.anon.3, %struct.anon.4, %struct.anon.5, %struct.anon.6, %struct.anon.7 }
%struct.anon = type { i32, [14 x float] }
%struct.anon.0 = type { i32, [14 x float] }
%struct.anon.1 = type { i32, [10 x float] }
%struct.anon.2 = type { i32, [10 x float] }
%struct.anon.3 = type { i32, [1 x float] }
%struct.anon.4 = type { i32, [1 x float] }
%struct.anon.5 = type { i32, [12 x float] }
%struct.anon.6 = type { i32, [12 x float] }
%struct.anon.7 = type { i32, [16 x float] }
%struct.a_stem_table = type { i32, [1 x float] }
%struct.a_zone_table = type { i32, [2 x float] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @reset_font_hints(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 5, i32 0, i32 2
  store i32 %3, ptr %5, align 8, !tbaa !10
  %6 = zext nneg i32 %3 to i64
  %7 = shl i64 2048, %6
  %8 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 5, i32 0, i32 1
  store i64 %7, ptr %8, align 8, !tbaa !16
  %9 = shl i64 4096, %6
  store i64 %9, ptr %4, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.gs_log2_scale_point_s, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !18
  %12 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 5, i32 1
  %13 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 5, i32 1, i32 2
  store i32 %11, ptr %13, align 8, !tbaa !19
  %14 = zext nneg i32 %11 to i64
  %15 = shl i64 2048, %14
  %16 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 5, i32 1, i32 1
  store i64 %15, ptr %16, align 8, !tbaa !20
  %17 = shl i64 4096, %14
  store i64 %17, ptr %12, align 8, !tbaa !21
  %18 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 7
  store i32 0, ptr %18, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 6
  store i32 0, ptr %19, align 8, !tbaa !23
  %20 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %20, align 4, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @compute_font_hints(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = alloca %struct.gs_fixed_point_s, align 8
  %6 = alloca %struct.gs_fixed_point_s, align 8
  %7 = alloca %struct.gs_fixed_point_s, align 8
  %8 = alloca %struct.gs_fixed_point_s, align 8
  %9 = alloca %struct.gs_fixed_point_s, align 8
  %10 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 12
  %11 = load i32, ptr %2, align 4, !tbaa !5
  %12 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 5, i32 0, i32 2
  store i32 %11, ptr %13, align 8, !tbaa !10
  %14 = zext nneg i32 %11 to i64
  %15 = shl i64 2048, %14
  %16 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 5, i32 0, i32 1
  store i64 %15, ptr %16, align 8, !tbaa !16
  %17 = shl i64 4096, %14
  store i64 %17, ptr %12, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.gs_log2_scale_point_s, ptr %2, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !18
  %20 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 5, i32 1
  %21 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 5, i32 1, i32 2
  store i32 %19, ptr %21, align 8, !tbaa !19
  %22 = zext nneg i32 %19 to i64
  %23 = shl i64 2048, %22
  %24 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 5, i32 1, i32 1
  store i64 %23, ptr %24, align 8, !tbaa !20
  %25 = shl i64 4096, %22
  store i64 %25, ptr %20, align 8, !tbaa !21
  %26 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 7
  store i32 0, ptr %26, align 8, !tbaa !22
  %27 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 6
  store i32 0, ptr %27, align 8, !tbaa !23
  %28 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %28, align 4, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  %29 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %1, i64 0, i32 1
  %30 = load float, ptr %29, align 4, !tbaa !25
  %31 = fcmp oeq float %30, 0.000000e+00
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %1, i64 0, i32 3
  %34 = load float, ptr %33, align 4, !tbaa !28
  %35 = fcmp olt float %34, 0.000000e+00
  %36 = zext i1 %35 to i32
  %37 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 2
  store i32 %36, ptr %37, align 8, !tbaa !29
  br label %45

38:                                               ; preds = %4
  %39 = load float, ptr %1, align 8, !tbaa !30
  %40 = fcmp oeq float %39, 0.000000e+00
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = fcmp olt float %30, 0.000000e+00
  %43 = zext i1 %42 to i32
  %44 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 2
  store i32 %43, ptr %44, align 8, !tbaa !29
  store i32 1, ptr %0, align 8, !tbaa !31
  br label %45

45:                                               ; preds = %32, %41
  %46 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 4
  store i32 1, ptr %46, align 8, !tbaa !32
  br label %47

47:                                               ; preds = %45, %38
  %48 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %1, i64 0, i32 2
  %49 = load float, ptr %48, align 8, !tbaa !33
  %50 = fcmp oeq float %49, 0.000000e+00
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load float, ptr %1, align 8, !tbaa !30
  %53 = fcmp olt float %52, 0.000000e+00
  %54 = zext i1 %53 to i32
  %55 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 1
  store i32 %54, ptr %55, align 4, !tbaa !34
  br label %64

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %1, i64 0, i32 3
  %58 = load float, ptr %57, align 4, !tbaa !28
  %59 = fcmp oeq float %58, 0.000000e+00
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = fcmp olt float %49, 0.000000e+00
  %62 = zext i1 %61 to i32
  %63 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 1
  store i32 %62, ptr %63, align 4, !tbaa !34
  store i32 1, ptr %0, align 8, !tbaa !31
  br label %64

64:                                               ; preds = %51, %60
  %65 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 3
  store i32 1, ptr %65, align 4, !tbaa !35
  br label %66

66:                                               ; preds = %64, %56
  %67 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 3
  %68 = load i32, ptr %67, align 4, !tbaa !35
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %131, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.gs_type1_data_s, ptr %3, i64 0, i32 23
  %72 = load i32, ptr %0, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  %73 = icmp eq i32 %72, 0
  %74 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %75 = load i32, ptr %71, align 4, !tbaa !36
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %70, %93
  %78 = phi i64 [ %95, %93 ], [ 0, %70 ]
  %79 = phi i32 [ %94, %93 ], [ 0, %70 ]
  %80 = getelementptr inbounds %struct.a_stem_table, ptr %71, i64 0, i32 1, i64 %78
  %81 = load float, ptr %80, align 4, !tbaa !38
  %82 = fpext float %81 to double
  %83 = call i32 @gs_distance_transform2fixed(ptr noundef %1, double noundef %82, double noundef 0.000000e+00, ptr noundef nonnull %8) #6
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %77
  %86 = load i64, ptr %8, align 8
  %87 = load i64, ptr %74, align 8
  %88 = select i1 %73, i64 %86, i64 %87
  %89 = call i64 @llvm.abs.i64(i64 %88, i1 true)
  %90 = sext i32 %79 to i64
  %91 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 6, i32 1, i64 %90
  store i64 %89, ptr %91, align 8, !tbaa !39
  %92 = add nsw i32 %79, 1
  br label %93

93:                                               ; preds = %85, %77
  %94 = phi i32 [ %92, %85 ], [ %79, %77 ]
  %95 = add nuw nsw i64 %78, 1
  %96 = load i32, ptr %71, align 4, !tbaa !36
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %95, %97
  br i1 %98, label %77, label %99, !llvm.loop !40

99:                                               ; preds = %93, %70
  %100 = phi i32 [ 0, %70 ], [ %94, %93 ]
  store i32 %100, ptr %27, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  %101 = getelementptr inbounds %struct.gs_type1_data_s, ptr %3, i64 0, i32 25
  %102 = load i32, ptr %0, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  %103 = icmp eq i32 %102, 0
  %104 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %7, i64 0, i32 1
  %105 = load i32, ptr %101, align 4, !tbaa !36
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %99, %123
  %108 = phi i64 [ %125, %123 ], [ 0, %99 ]
  %109 = phi i32 [ %124, %123 ], [ %100, %99 ]
  %110 = getelementptr inbounds %struct.a_stem_table, ptr %101, i64 0, i32 1, i64 %108
  %111 = load float, ptr %110, align 4, !tbaa !38
  %112 = fpext float %111 to double
  %113 = call i32 @gs_distance_transform2fixed(ptr noundef %1, double noundef %112, double noundef 0.000000e+00, ptr noundef nonnull %7) #6
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %107
  %116 = load i64, ptr %7, align 8
  %117 = load i64, ptr %104, align 8
  %118 = select i1 %103, i64 %116, i64 %117
  %119 = call i64 @llvm.abs.i64(i64 %118, i1 true)
  %120 = sext i32 %109 to i64
  %121 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 6, i32 1, i64 %120
  store i64 %119, ptr %121, align 8, !tbaa !39
  %122 = add nsw i32 %109, 1
  br label %123

123:                                              ; preds = %115, %107
  %124 = phi i32 [ %122, %115 ], [ %109, %107 ]
  %125 = add nuw nsw i64 %108, 1
  %126 = load i32, ptr %101, align 4, !tbaa !36
  %127 = sext i32 %126 to i64
  %128 = icmp slt i64 %125, %127
  br i1 %128, label %107, label %129, !llvm.loop !40

129:                                              ; preds = %123, %99
  %130 = phi i32 [ %100, %99 ], [ %124, %123 ]
  store i32 %130, ptr %27, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  br label %131

131:                                              ; preds = %129, %66
  %132 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 4
  %133 = load i32, ptr %132, align 8, !tbaa !32
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %250, label %135

135:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6
  %136 = load i32, ptr %0, align 8, !tbaa !31
  %137 = icmp eq i32 %136, 0
  %138 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %9, i64 0, i32 1
  %139 = select i1 %137, ptr %138, ptr %9
  %140 = select i1 %137, ptr %20, ptr %12
  %141 = getelementptr inbounds %struct.gs_type1_data_s, ptr %3, i64 0, i32 12
  %142 = load i32, ptr %141, align 8, !tbaa !43
  %143 = sitofp i32 %142 to float
  %144 = fpext float %143 to double
  %145 = call i32 @gs_distance_transform2fixed(ptr noundef %1, double noundef 0.000000e+00, double noundef %144, ptr noundef nonnull %9) #6
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %135
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br label %148

148:                                              ; preds = %147, %135
  %149 = load i64, ptr %139, align 8, !tbaa !39
  %150 = call i64 @llvm.abs.i64(i64 %149, i1 true)
  %151 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 8
  store i64 %150, ptr %151, align 8, !tbaa !46
  %152 = call i32 @gs_distance_transform2fixed(ptr noundef %1, double noundef 0.000000e+00, double noundef 1.000000e+00, ptr noundef nonnull %9) #6
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br label %155

155:                                              ; preds = %154, %148
  %156 = load i64, ptr %139, align 8, !tbaa !39
  %157 = call i64 @llvm.abs.i64(i64 %156, i1 true)
  %158 = getelementptr inbounds %struct.pixel_scale_s, ptr %140, i64 0, i32 2
  %159 = load i32, ptr %158, align 8, !tbaa !47
  %160 = zext nneg i32 %159 to i64
  %161 = lshr i64 %157, %160
  %162 = sitofp i64 %161 to double
  %163 = fmul double %162, 0x3F30000000000000
  %164 = getelementptr inbounds %struct.gs_type1_data_s, ptr %3, i64 0, i32 13
  %165 = load float, ptr %164, align 4, !tbaa !48
  %166 = fpext float %165 to double
  %167 = fcmp olt double %163, %166
  %168 = zext i1 %167 to i32
  %169 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 10
  store i32 %168, ptr %169, align 8, !tbaa !49
  %170 = getelementptr inbounds %struct.gs_type1_data_s, ptr %3, i64 0, i32 14
  %171 = load float, ptr %170, align 8, !tbaa !50
  %172 = fpext float %171 to double
  %173 = call i32 @gs_distance_transform2fixed(ptr noundef %1, double noundef 0.000000e+00, double noundef %172, ptr noundef nonnull %9) #6
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %155
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br label %176

176:                                              ; preds = %175, %155
  %177 = load i64, ptr %139, align 8, !tbaa !39
  %178 = call i64 @llvm.abs.i64(i64 %177, i1 true)
  %179 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 9
  store i64 %178, ptr %179, align 8, !tbaa !51
  %180 = getelementptr inbounds %struct.pixel_scale_s, ptr %140, i64 0, i32 1
  %181 = load i64, ptr %180, align 8, !tbaa !52
  %182 = call i64 @llvm.smin.i64(i64 %178, i64 %181)
  store i64 %182, ptr %179, align 8
  %183 = getelementptr inbounds %struct.gs_type1_data_s, ptr %3, i64 0, i32 15
  %184 = getelementptr inbounds %struct.gs_type1_data_s, ptr %3, i64 0, i32 18
  %185 = call fastcc ptr @compute_zones(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %183, ptr noundef nonnull %184, ptr noundef nonnull %10, i32 noundef 1)
  %186 = getelementptr inbounds %struct.gs_type1_data_s, ptr %3, i64 0, i32 21
  %187 = getelementptr inbounds %struct.gs_type1_data_s, ptr %3, i64 0, i32 19
  %188 = call fastcc ptr @compute_zones(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %186, ptr noundef nonnull %187, ptr noundef %185, i32 noundef 5)
  %189 = getelementptr inbounds %struct.gs_type1_data_s, ptr %3, i64 0, i32 24
  %190 = load i32, ptr %0, align 8, !tbaa !31
  %191 = icmp eq i32 %190, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %192 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %6, i64 0, i32 1
  %193 = load i32, ptr %26, align 8, !tbaa !42
  %194 = load i32, ptr %189, align 4, !tbaa !36
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %218

196:                                              ; preds = %176, %212
  %197 = phi i64 [ %214, %212 ], [ 0, %176 ]
  %198 = phi i32 [ %213, %212 ], [ %193, %176 ]
  %199 = getelementptr inbounds %struct.a_stem_table, ptr %189, i64 0, i32 1, i64 %197
  %200 = load float, ptr %199, align 4, !tbaa !38
  %201 = fpext float %200 to double
  %202 = call i32 @gs_distance_transform2fixed(ptr noundef %1, double noundef 0.000000e+00, double noundef %201, ptr noundef nonnull %6) #6
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %212, label %204

204:                                              ; preds = %196
  %205 = load i64, ptr %6, align 8
  %206 = load i64, ptr %192, align 8
  %207 = select i1 %191, i64 %206, i64 %205
  %208 = call i64 @llvm.abs.i64(i64 %207, i1 true)
  %209 = sext i32 %198 to i64
  %210 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 7, i32 1, i64 %209
  store i64 %208, ptr %210, align 8, !tbaa !39
  %211 = add nsw i32 %198, 1
  br label %212

212:                                              ; preds = %204, %196
  %213 = phi i32 [ %211, %204 ], [ %198, %196 ]
  %214 = add nuw nsw i64 %197, 1
  %215 = load i32, ptr %189, align 4, !tbaa !36
  %216 = sext i32 %215 to i64
  %217 = icmp slt i64 %214, %216
  br i1 %217, label %196, label %218, !llvm.loop !40

218:                                              ; preds = %212, %176
  %219 = phi i32 [ %193, %176 ], [ %213, %212 ]
  store i32 %219, ptr %26, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  %220 = getelementptr inbounds %struct.gs_type1_data_s, ptr %3, i64 0, i32 26
  %221 = load i32, ptr %0, align 8, !tbaa !31
  %222 = icmp eq i32 %221, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %223 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 0, i32 1
  %224 = load i32, ptr %220, align 4, !tbaa !36
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %248

226:                                              ; preds = %218, %242
  %227 = phi i64 [ %244, %242 ], [ 0, %218 ]
  %228 = phi i32 [ %243, %242 ], [ %219, %218 ]
  %229 = getelementptr inbounds %struct.a_stem_table, ptr %220, i64 0, i32 1, i64 %227
  %230 = load float, ptr %229, align 4, !tbaa !38
  %231 = fpext float %230 to double
  %232 = call i32 @gs_distance_transform2fixed(ptr noundef %1, double noundef 0.000000e+00, double noundef %231, ptr noundef nonnull %5) #6
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %242, label %234

234:                                              ; preds = %226
  %235 = load i64, ptr %5, align 8
  %236 = load i64, ptr %223, align 8
  %237 = select i1 %222, i64 %236, i64 %235
  %238 = call i64 @llvm.abs.i64(i64 %237, i1 true)
  %239 = sext i32 %228 to i64
  %240 = getelementptr inbounds %struct.font_hints_s, ptr %0, i64 0, i32 7, i32 1, i64 %239
  store i64 %238, ptr %240, align 8, !tbaa !39
  %241 = add nsw i32 %228, 1
  br label %242

242:                                              ; preds = %234, %226
  %243 = phi i32 [ %241, %234 ], [ %228, %226 ]
  %244 = add nuw nsw i64 %227, 1
  %245 = load i32, ptr %220, align 4, !tbaa !36
  %246 = sext i32 %245 to i64
  %247 = icmp slt i64 %244, %246
  br i1 %247, label %226, label %248, !llvm.loop !40

248:                                              ; preds = %242, %218
  %249 = phi i32 [ %219, %218 ], [ %243, %242 ]
  store i32 %249, ptr %26, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6
  br label %250

250:                                              ; preds = %248, %131
  %251 = phi ptr [ %188, %248 ], [ %10, %131 ]
  %252 = ptrtoint ptr %251 to i64
  %253 = ptrtoint ptr %10 to i64
  %254 = sub i64 %252, %253
  %255 = lshr exact i64 %254, 5
  %256 = trunc i64 %255 to i32
  store i32 %256, ptr %28, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @gs_distance_transform2fixed(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @compute_zones(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4, i32 noundef %5) unnamed_addr #1 {
  %7 = alloca %struct.gs_fixed_point_s, align 8
  %8 = alloca %struct.gs_fixed_point_s, align 8
  %9 = alloca %struct.gs_fixed_point_s, align 8
  %10 = alloca %struct.gs_fixed_point_s, align 8
  %11 = getelementptr inbounds %struct.font_hints_s, ptr %1, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !46
  %13 = load i32, ptr %2, align 4, !tbaa !36
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %141

15:                                               ; preds = %6
  %16 = load i32, ptr %1, align 8, !tbaa !31
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.font_hints_s, ptr %1, i64 0, i32 2
  %19 = getelementptr inbounds %struct.font_hints_s, ptr %1, i64 0, i32 1
  %20 = select i1 %17, ptr %18, ptr %19
  %21 = load i32, ptr %20, align 4, !tbaa !53
  %22 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %9, i64 0, i32 1
  %23 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %10, i64 0, i32 1
  %24 = getelementptr inbounds %struct.font_hints_s, ptr %1, i64 0, i32 5
  %25 = getelementptr inbounds %struct.font_hints_s, ptr %1, i64 0, i32 5, i32 1
  %26 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %7, i64 0, i32 1
  %27 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %28 = icmp eq i32 %21, 0
  br label %29

29:                                               ; preds = %15, %133
  %30 = phi i64 [ 0, %15 ], [ %137, %133 ]
  %31 = phi ptr [ %4, %15 ], [ %136, %133 ]
  %32 = phi i64 [ undef, %15 ], [ %135, %133 ]
  %33 = phi i64 [ undef, %15 ], [ %134, %133 ]
  %34 = getelementptr inbounds %struct.a_zone_table, ptr %2, i64 0, i32 1, i64 %30
  %35 = lshr exact i64 %30, 1
  %36 = trunc i64 %35 to i32
  %37 = icmp sge i32 %36, %5
  %38 = zext i1 %37 to i32
  store i32 %38, ptr %31, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #6
  %39 = load float, ptr %34, align 4, !tbaa !38
  %40 = fpext float %39 to double
  %41 = call i32 @gs_point_transform2fixed(ptr noundef %0, double noundef 0.000000e+00, double noundef %40, ptr noundef nonnull %9) #6
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %132, label %43

43:                                               ; preds = %29
  %44 = getelementptr inbounds float, ptr %34, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !38
  %46 = fpext float %45 to double
  %47 = call i32 @gs_point_transform2fixed(ptr noundef %0, double noundef 0.000000e+00, double noundef %46, ptr noundef nonnull %10) #6
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %132, label %49

49:                                               ; preds = %43
  %50 = load i32, ptr %1, align 8, !tbaa !31
  %51 = icmp eq i32 %50, 0
  %52 = load i64, ptr %9, align 8
  %53 = load i64, ptr %10, align 8
  %54 = load i64, ptr %22, align 8
  %55 = load i64, ptr %23, align 8
  %56 = select i1 %51, i64 %54, i64 %52
  %57 = select i1 %51, i64 %55, i64 %53
  %58 = getelementptr inbounds %struct.alignment_zone, ptr %31, i64 0, i32 1
  %59 = getelementptr inbounds %struct.alignment_zone, ptr %31, i64 0, i32 2
  %60 = call i64 @llvm.smin.i64(i64 %56, i64 %57)
  %61 = call i64 @llvm.smax.i64(i64 %56, i64 %57)
  store i64 %60, ptr %58, align 8, !tbaa !56
  store i64 %61, ptr %59, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6
  %62 = load i32, ptr %3, align 4, !tbaa !36
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %30, %63
  br i1 %64, label %65, label %109

65:                                               ; preds = %49
  %66 = getelementptr inbounds %struct.a_zone_table, ptr %3, i64 0, i32 1, i64 %30
  %67 = load i32, ptr %1, align 8, !tbaa !31
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, ptr %25, ptr %24
  %70 = load i64, ptr %69, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  %71 = load float, ptr %66, align 4, !tbaa !38
  %72 = fpext float %71 to double
  %73 = call i32 @gs_point_transform2fixed(ptr noundef %0, double noundef 0.000000e+00, double noundef %72, ptr noundef nonnull %7) #6
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %65
  %76 = getelementptr inbounds float, ptr %66, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !38
  %78 = fpext float %77 to double
  %79 = call i32 @gs_point_transform2fixed(ptr noundef %0, double noundef 0.000000e+00, double noundef %78, ptr noundef nonnull %8) #6
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %75
  %82 = load i32, ptr %1, align 8, !tbaa !31
  %83 = icmp eq i32 %82, 0
  %84 = load i64, ptr %7, align 8
  %85 = load i64, ptr %8, align 8
  %86 = load i64, ptr %26, align 8
  %87 = load i64, ptr %27, align 8
  %88 = select i1 %83, i64 %86, i64 %84
  %89 = select i1 %83, i64 %87, i64 %85
  %90 = call i64 @llvm.smin.i64(i64 %88, i64 %89)
  %91 = call i64 @llvm.smax.i64(i64 %88, i64 %89)
  br label %92

92:                                               ; preds = %81, %65, %75
  %93 = phi i64 [ %33, %65 ], [ %33, %75 ], [ %90, %81 ]
  %94 = phi i64 [ %32, %65 ], [ %32, %75 ], [ %91, %81 ]
  %95 = phi i1 [ false, %65 ], [ false, %75 ], [ true, %81 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  br i1 %95, label %96, label %133

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.alignment_zone, ptr %31, i64 0, i32 2
  %98 = load i64, ptr %97, align 8, !tbaa !57
  %99 = getelementptr inbounds %struct.alignment_zone, ptr %31, i64 0, i32 1
  %100 = load i64, ptr %99, align 8, !tbaa !56
  %101 = sub nsw i64 %98, %100
  %102 = sub i64 %93, %94
  %103 = add i64 %101, %102
  %104 = sub nsw i64 0, %70
  %105 = icmp sgt i64 %103, %104
  %106 = icmp slt i64 %103, %70
  %107 = and i1 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %96
  store i64 %93, ptr %99, align 8, !tbaa !56
  store i64 %94, ptr %97, align 8, !tbaa !57
  br label %109

109:                                              ; preds = %108, %96, %49
  %110 = phi i64 [ %33, %49 ], [ %93, %96 ], [ %93, %108 ]
  %111 = phi i64 [ %32, %49 ], [ %94, %96 ], [ %94, %108 ]
  %112 = load i32, ptr %31, align 8, !tbaa !54
  %113 = icmp eq i32 %112, 0
  br i1 %28, label %115, label %114

114:                                              ; preds = %109
  br i1 %113, label %123, label %116

115:                                              ; preds = %109
  br i1 %113, label %116, label %123

116:                                              ; preds = %115, %114
  %117 = getelementptr inbounds %struct.alignment_zone, ptr %31, i64 0, i32 2
  %118 = load i64, ptr %117, align 8, !tbaa !57
  %119 = getelementptr inbounds %struct.alignment_zone, ptr %31, i64 0, i32 3
  store i64 %118, ptr %119, align 8, !tbaa !58
  %120 = getelementptr inbounds %struct.alignment_zone, ptr %31, i64 0, i32 1
  %121 = load i64, ptr %120, align 8, !tbaa !56
  %122 = sub nsw i64 %121, %12
  store i64 %122, ptr %120, align 8, !tbaa !56
  br label %130

123:                                              ; preds = %115, %114
  %124 = getelementptr inbounds %struct.alignment_zone, ptr %31, i64 0, i32 1
  %125 = load i64, ptr %124, align 8, !tbaa !56
  %126 = getelementptr inbounds %struct.alignment_zone, ptr %31, i64 0, i32 3
  store i64 %125, ptr %126, align 8, !tbaa !58
  %127 = getelementptr inbounds %struct.alignment_zone, ptr %31, i64 0, i32 2
  %128 = load i64, ptr %127, align 8, !tbaa !57
  %129 = add nsw i64 %128, %12
  store i64 %129, ptr %127, align 8, !tbaa !57
  br label %130

130:                                              ; preds = %123, %116
  %131 = getelementptr inbounds %struct.alignment_zone, ptr %31, i64 1
  br label %133

132:                                              ; preds = %43, %29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6
  br label %133

133:                                              ; preds = %132, %92, %130
  %134 = phi i64 [ %110, %130 ], [ %93, %92 ], [ %33, %132 ]
  %135 = phi i64 [ %111, %130 ], [ %94, %92 ], [ %32, %132 ]
  %136 = phi ptr [ %131, %130 ], [ %31, %92 ], [ %31, %132 ]
  %137 = add nuw i64 %30, 2
  %138 = load i32, ptr %2, align 4, !tbaa !36
  %139 = trunc i64 %137 to i32
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %29, label %141, !llvm.loop !59

141:                                              ; preds = %133, %6
  %142 = phi ptr [ %4, %6 ], [ %136, %133 ]
  ret ptr %142
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @gs_point_transform2fixed(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"gs_log2_scale_point_s", !7, i64 0, !7, i64 4}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 40}
!11 = !{!"font_hints_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !12, i64 24, !15, i64 72, !15, i64 184, !14, i64 296, !14, i64 304, !7, i64 312, !7, i64 316, !8, i64 320}
!12 = !{!"point_scale_s", !13, i64 0, !13, i64 24}
!13 = !{!"pixel_scale_s", !14, i64 0, !14, i64 8, !7, i64 16}
!14 = !{!"long", !8, i64 0}
!15 = !{!"", !7, i64 0, !8, i64 8}
!16 = !{!11, !14, i64 32}
!17 = !{!11, !14, i64 24}
!18 = !{!6, !7, i64 4}
!19 = !{!11, !7, i64 64}
!20 = !{!11, !14, i64 56}
!21 = !{!11, !14, i64 48}
!22 = !{!11, !7, i64 184}
!23 = !{!11, !7, i64 72}
!24 = !{!11, !7, i64 316}
!25 = !{!26, !27, i64 4}
!26 = !{!"gs_matrix_fixed_s", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20, !14, i64 24, !14, i64 32, !7, i64 40}
!27 = !{!"float", !8, i64 0}
!28 = !{!26, !27, i64 12}
!29 = !{!11, !7, i64 8}
!30 = !{!26, !27, i64 0}
!31 = !{!11, !7, i64 0}
!32 = !{!11, !7, i64 16}
!33 = !{!26, !27, i64 8}
!34 = !{!11, !7, i64 4}
!35 = !{!11, !7, i64 12}
!36 = !{!37, !7, i64 0}
!37 = !{!"", !7, i64 0, !8, i64 4}
!38 = !{!27, !27, i64 0}
!39 = !{!14, !14, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!15, !7, i64 0}
!43 = !{!44, !7, i64 88}
!44 = !{!"gs_type1_data_s", !7, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !7, i64 88, !27, i64 92, !27, i64 96, !37, i64 100, !27, i64 160, !7, i64 164, !37, i64 168, !37, i64 228, !7, i64 272, !37, i64 276, !7, i64 320, !37, i64 324, !37, i64 332, !37, i64 340, !37, i64 392, !37, i64 444}
!45 = !{!"any pointer", !8, i64 0}
!46 = !{!11, !14, i64 296}
!47 = !{!13, !7, i64 16}
!48 = !{!44, !27, i64 92}
!49 = !{!11, !7, i64 312}
!50 = !{!44, !27, i64 96}
!51 = !{!11, !14, i64 304}
!52 = !{!13, !14, i64 8}
!53 = !{!7, !7, i64 0}
!54 = !{!55, !7, i64 0}
!55 = !{!"", !7, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!56 = !{!55, !14, i64 8}
!57 = !{!55, !14, i64 16}
!58 = !{!55, !14, i64 24}
!59 = distinct !{!59, !41}
