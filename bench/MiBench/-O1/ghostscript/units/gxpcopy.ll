; ModuleID = 'gxpcopy.c'
source_filename = "gxpcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.curve_segment = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_point_s = type { double, double }
%struct.segment_s = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s }
%struct.subpath_s = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, ptr, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, ptr }
%struct.curve_cursor_s = type { i32, %struct.gs_fixed_point_s, ptr, i64, i64, i64, double, double, double, i32, i32, %struct.ccc_ }
%struct.ccc_ = type { i64, i64, i64, i64 }

@gx_curve_x_at_y.k_denom = internal unnamed_addr constant [11 x double] [double 1.000000e+00, double 5.000000e-01, double 2.500000e-01, double 1.250000e-01, double 6.250000e-02, double 3.125000e-02, double 1.562500e-02, double 7.812500e-03, double 3.906250e-03, double 0x3F60000000000000, double 0x3F50000000000000], align 16
@gx_curve_x_at_y.k2_denom = internal unnamed_addr constant [11 x double] [double 1.000000e+00, double 2.500000e-01, double 6.250000e-02, double 1.562500e-02, double 3.906250e-03, double 0x3F50000000000000, double 0x3F30000000000000, double 0x3F10000000000000, double 0x3EF0000000000000, double 0x3ED0000000000000, double 0x3EB0000000000000], align 16
@gx_curve_x_at_y.k3_denom = internal unnamed_addr constant [11 x double] [double 1.000000e+00, double 1.250000e-01, double 1.562500e-02, double 0x3F60000000000000, double 0x3F30000000000000, double 0x3F00000000000000, double 0x3ED0000000000000, double 0x3EA0000000000000, double 0x3E70000000000000, double 0x3E40000000000000, double 0x3E10000000000000], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_path_copy_reducing(ptr noundef readonly %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [2 x double], align 16
  %6 = alloca [9 x %struct.curve_segment], align 16
  %7 = alloca { ptr, %struct.gs_fixed_rect_s, ptr }, align 8
  %8 = alloca { ptr, i32, i32 }, align 8
  %9 = alloca [33 x i8], align 8
  %10 = alloca [6 x i8], align 2
  %11 = alloca %struct.curve_segment, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false), !tbaa.struct !5
  %12 = getelementptr inbounds i8, ptr %0, i64 48
  %13 = load ptr, ptr %12, align 8, !tbaa.struct !17
  %14 = getelementptr inbounds i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !18
  %15 = getelementptr inbounds i8, ptr %0, i64 72
  %16 = load i64, ptr %15, align 8, !tbaa.struct !19
  %17 = getelementptr inbounds i8, ptr %0, i64 80
  %18 = load i64, ptr %17, align 8, !tbaa.struct !20
  %19 = getelementptr inbounds i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %9, ptr noundef nonnull align 8 dereferenceable(33) %19, i64 33, i1 false), !tbaa.struct !21
  %20 = getelementptr inbounds i8, ptr %0, i64 121
  %21 = load i8, ptr %20, align 1, !tbaa.struct !22
  %22 = getelementptr inbounds i8, ptr %0, i64 122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %10, ptr noundef nonnull align 2 dereferenceable(6) %22, i64 6, i1 false), !tbaa.struct !23
  %23 = and i32 %3, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load ptr, ptr %0, align 8, !tbaa !24
  tail call void @gx_path_init(ptr noundef %1, ptr noundef %26) #13
  br label %27

27:                                               ; preds = %25, %4
  %28 = icmp eq ptr %13, null
  br i1 %28, label %326, label %29

29:                                               ; preds = %27
  %30 = icmp eq i64 %2, 9223372036854775807
  %31 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 7
  %32 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 7, i32 1
  %33 = and i32 %3, 4
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 4
  %36 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 4
  %37 = and i32 %3, 2
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 7
  %40 = getelementptr inbounds %struct.gx_path_s, ptr %1, i64 0, i32 7, i32 1
  %41 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 1
  %42 = getelementptr inbounds [2 x double], ptr %5, i64 0, i64 1
  %43 = ptrtoint ptr %6 to i64
  br label %44

44:                                               ; preds = %29, %322
  %45 = phi ptr [ undef, %29 ], [ %310, %322 ]
  %46 = phi ptr [ %13, %29 ], [ %324, %322 ]
  %47 = getelementptr inbounds %struct.segment_s, ptr %46, i64 0, i32 2
  %48 = load i16, ptr %47, align 8, !tbaa !29
  switch i16 %48, label %308 [
    i16 0, label %49
    i16 3, label %55
    i16 1, label %297
    i16 2, label %306
  ]

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.segment_s, ptr %46, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !32
  %52 = getelementptr inbounds %struct.segment_s, ptr %46, i64 0, i32 4, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !33
  %54 = call i32 @gx_path_add_point(ptr noundef %1, i64 noundef %51, i64 noundef %53) #13
  br label %308

55:                                               ; preds = %44
  br i1 %30, label %56, label %181

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.curve_segment, ptr %46, i64 0, i32 4, i32 1
  br i1 %38, label %165, label %58

58:                                               ; preds = %56
  %59 = load i64, ptr %39, align 8, !tbaa !34
  %60 = load i64, ptr %40, align 8, !tbaa !35
  %61 = getelementptr inbounds %struct.curve_segment, ptr %46, i64 0, i32 3
  %62 = load i16, ptr %61, align 2, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 648, ptr nonnull %6) #13
  %63 = getelementptr inbounds %struct.curve_segment, ptr %46, i64 0, i32 5, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !38
  %65 = getelementptr inbounds %struct.curve_segment, ptr %46, i64 0, i32 6, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !39
  %67 = load i64, ptr %57, align 8, !tbaa !40
  %68 = call i32 @gx_curve_monotonic_points(i64 noundef %60, i64 noundef %64, i64 noundef %66, i64 noundef %67, ptr noundef nonnull %5), !range !41
  %69 = sub nuw nsw i32 8, %68
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds %struct.curve_segment, ptr %6, i64 %70
  %72 = icmp eq i32 %68, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %71, ptr noundef nonnull align 8 dereferenceable(72) %46, i64 72, i1 false), !tbaa.struct !42
  br label %88

74:                                               ; preds = %58
  %75 = load double, ptr %5, align 16, !tbaa !14
  %76 = getelementptr inbounds %struct.curve_segment, ptr %71, i64 1
  call void @gx_curve_split(i64 noundef %59, i64 noundef %60, ptr noundef nonnull %46, double noundef %75, ptr noundef nonnull %71, ptr noundef nonnull %76)
  %77 = icmp eq i32 %68, 2
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.curve_segment, ptr %6, i64 %70, i32 4
  %80 = load i64, ptr %79, align 8, !tbaa !44
  %81 = getelementptr inbounds %struct.curve_segment, ptr %6, i64 %70, i32 4, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !40
  %83 = load double, ptr %41, align 8, !tbaa !14
  %84 = fsub double %83, %75
  %85 = fsub double 1.000000e+00, %75
  %86 = fdiv double %84, %85
  %87 = getelementptr inbounds %struct.curve_segment, ptr %71, i64 2
  call void @gx_curve_split(i64 noundef %80, i64 noundef %82, ptr noundef nonnull %76, double noundef %86, ptr noundef nonnull %76, ptr noundef nonnull %87)
  br label %88

88:                                               ; preds = %78, %74, %73
  br label %89

89:                                               ; preds = %88, %119
  %90 = phi i32 [ %128, %119 ], [ %69, %88 ]
  %91 = phi ptr [ %122, %119 ], [ %6, %88 ]
  %92 = phi ptr [ %127, %119 ], [ %71, %88 ]
  %93 = phi i64 [ %124, %119 ], [ %59, %88 ]
  %94 = phi i64 [ %126, %119 ], [ %60, %88 ]
  %95 = getelementptr inbounds %struct.curve_segment, ptr %92, i64 0, i32 5
  %96 = load i64, ptr %95, align 8, !tbaa !45
  %97 = getelementptr inbounds %struct.curve_segment, ptr %92, i64 0, i32 6
  %98 = load i64, ptr %97, align 8, !tbaa !46
  %99 = getelementptr inbounds %struct.curve_segment, ptr %92, i64 0, i32 4
  %100 = load i64, ptr %99, align 8, !tbaa !44
  %101 = call i32 @gx_curve_monotonic_points(i64 noundef %93, i64 noundef %96, i64 noundef %98, i64 noundef %100, ptr noundef nonnull %5), !range !41
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %91, ptr noundef nonnull align 8 dereferenceable(72) %92, i64 72, i1 false), !tbaa.struct !42
  br label %119

104:                                              ; preds = %89
  %105 = load double, ptr %5, align 16, !tbaa !14
  %106 = getelementptr inbounds %struct.curve_segment, ptr %91, i64 1
  call void @gx_curve_split(i64 noundef %93, i64 noundef %94, ptr noundef %92, double noundef %105, ptr noundef %91, ptr noundef nonnull %106)
  %107 = icmp eq i32 %101, 2
  br i1 %107, label %108, label %119

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.curve_segment, ptr %91, i64 0, i32 4
  %110 = load i64, ptr %109, align 8, !tbaa !44
  %111 = getelementptr inbounds %struct.curve_segment, ptr %91, i64 0, i32 4, i32 1
  %112 = load i64, ptr %111, align 8, !tbaa !40
  %113 = load double, ptr %42, align 8, !tbaa !14
  %114 = load double, ptr %5, align 16, !tbaa !14
  %115 = fsub double %113, %114
  %116 = fsub double 1.000000e+00, %114
  %117 = fdiv double %115, %116
  %118 = getelementptr inbounds %struct.curve_segment, ptr %91, i64 2
  call void @gx_curve_split(i64 noundef %110, i64 noundef %112, ptr noundef nonnull %106, double noundef %117, ptr noundef nonnull %106, ptr noundef nonnull %118)
  br label %119

119:                                              ; preds = %108, %104, %103
  %120 = add nuw nsw i32 %101, 1
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds %struct.curve_segment, ptr %91, i64 %121
  %123 = getelementptr %struct.curve_segment, ptr %122, i64 -1, i32 4
  %124 = load i64, ptr %123, align 8, !tbaa !44
  %125 = getelementptr %struct.curve_segment, ptr %122, i64 -1, i32 4, i32 1
  %126 = load i64, ptr %125, align 8, !tbaa !40
  %127 = getelementptr inbounds %struct.curve_segment, ptr %92, i64 1
  %128 = add nuw nsw i32 %90, 1
  %129 = icmp eq i32 %128, 9
  br i1 %129, label %130, label %89, !llvm.loop !47

130:                                              ; preds = %119
  %131 = ptrtoint ptr %122 to i64
  %132 = sub i64 %131, %43
  %133 = sdiv exact i64 %132, 72
  %134 = trunc i64 %133 to i32
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %163

136:                                              ; preds = %130, %159
  %137 = phi i32 [ %158, %159 ], [ undef, %130 ]
  %138 = phi i32 [ %161, %159 ], [ 0, %130 ]
  %139 = phi ptr [ %160, %159 ], [ %6, %130 ]
  %140 = getelementptr inbounds %struct.curve_segment, ptr %139, i64 0, i32 5
  %141 = load i64, ptr %140, align 8, !tbaa !45
  %142 = getelementptr inbounds %struct.curve_segment, ptr %139, i64 0, i32 5, i32 1
  %143 = load i64, ptr %142, align 8, !tbaa !38
  %144 = getelementptr inbounds %struct.curve_segment, ptr %139, i64 0, i32 6
  %145 = load i64, ptr %144, align 8, !tbaa !46
  %146 = getelementptr inbounds %struct.curve_segment, ptr %139, i64 0, i32 6, i32 1
  %147 = load i64, ptr %146, align 8, !tbaa !39
  %148 = getelementptr inbounds %struct.curve_segment, ptr %139, i64 0, i32 4
  %149 = load i64, ptr %148, align 8, !tbaa !44
  %150 = getelementptr inbounds %struct.curve_segment, ptr %139, i64 0, i32 4, i32 1
  %151 = load i64, ptr %150, align 8, !tbaa !40
  %152 = icmp ne i32 %138, 0
  %153 = zext i1 %152 to i16
  %154 = or i16 %62, %153
  %155 = zext i16 %154 to i32
  %156 = call i32 @gx_path_add_curve_notes(ptr noundef %1, i64 noundef %141, i64 noundef %143, i64 noundef %145, i64 noundef %147, i64 noundef %149, i64 noundef %151, i32 noundef %155) #13
  %157 = icmp sgt i32 %156, -1
  %158 = select i1 %157, i32 %137, i32 %156
  br i1 %157, label %159, label %163

159:                                              ; preds = %136
  %160 = getelementptr inbounds %struct.curve_segment, ptr %139, i64 1
  %161 = add nuw nsw i32 %138, 1
  %162 = icmp eq i32 %161, %134
  br i1 %162, label %163, label %136, !llvm.loop !49

163:                                              ; preds = %136, %159, %130
  %164 = phi i32 [ 0, %130 ], [ %158, %136 ], [ 0, %159 ]
  call void @llvm.lifetime.end.p0(i64 648, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br label %308

165:                                              ; preds = %56
  %166 = getelementptr inbounds %struct.curve_segment, ptr %46, i64 0, i32 5
  %167 = load i64, ptr %166, align 8, !tbaa !45
  %168 = getelementptr inbounds %struct.curve_segment, ptr %46, i64 0, i32 5, i32 1
  %169 = load i64, ptr %168, align 8, !tbaa !38
  %170 = getelementptr inbounds %struct.curve_segment, ptr %46, i64 0, i32 6
  %171 = load i64, ptr %170, align 8, !tbaa !46
  %172 = getelementptr inbounds %struct.curve_segment, ptr %46, i64 0, i32 6, i32 1
  %173 = load i64, ptr %172, align 8, !tbaa !39
  %174 = getelementptr inbounds %struct.curve_segment, ptr %46, i64 0, i32 4
  %175 = load i64, ptr %174, align 8, !tbaa !44
  %176 = load i64, ptr %57, align 8, !tbaa !40
  %177 = getelementptr inbounds %struct.segment_s, ptr %46, i64 0, i32 3
  %178 = load i16, ptr %177, align 2, !tbaa !50
  %179 = zext i16 %178 to i32
  %180 = call i32 @gx_path_add_curve_notes(ptr noundef %1, i64 noundef %167, i64 noundef %169, i64 noundef %171, i64 noundef %173, i64 noundef %175, i64 noundef %176, i32 noundef %179) #13
  br label %308

181:                                              ; preds = %55
  %182 = load i64, ptr %31, align 8, !tbaa !34
  %183 = load i64, ptr %32, align 8, !tbaa !35
  %184 = call i32 @gx_curve_log2_samples(i64 noundef %182, i64 noundef %183, ptr noundef nonnull %46, i64 noundef %2) #13
  %185 = getelementptr inbounds %struct.segment_s, ptr %46, i64 0, i32 3
  %186 = load i16, ptr %185, align 2, !tbaa !50
  %187 = zext i16 %186 to i32
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %11) #13
  br i1 %34, label %196, label %188

188:                                              ; preds = %181
  %189 = call i32 @gx_path_add_line_notes(ptr noundef %1, i64 noundef %182, i64 noundef %183, i32 noundef %187) #13
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %294, label %191

191:                                              ; preds = %188
  %192 = load ptr, ptr %35, align 8, !tbaa !51
  %193 = getelementptr inbounds %struct.subpath_s, ptr %192, i64 0, i32 5
  %194 = load ptr, ptr %193, align 8, !tbaa !52
  %195 = or i32 %187, 1
  br label %196

196:                                              ; preds = %191, %181
  %197 = phi i32 [ %195, %191 ], [ %187, %181 ]
  %198 = phi ptr [ %194, %191 ], [ %45, %181 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(72) %46, i64 72, i1 false), !tbaa.struct !42
  %199 = call i32 @gx_flatten_sample(ptr noundef %1, i32 noundef %184, ptr noundef nonnull %11, i32 noundef %197) #13
  br i1 %34, label %294, label %200

200:                                              ; preds = %196
  %201 = load ptr, ptr %36, align 8, !tbaa !51
  %202 = getelementptr inbounds %struct.subpath_s, ptr %201, i64 0, i32 5
  %203 = load ptr, ptr %202, align 8, !tbaa !52
  %204 = icmp slt i32 %199, 0
  br i1 %204, label %294, label %205

205:                                              ; preds = %200
  %206 = load i64, ptr %31, align 8, !tbaa !34
  %207 = load i64, ptr %32, align 8, !tbaa !35
  %208 = load i16, ptr %185, align 2, !tbaa !50
  %209 = or i16 %208, 1
  %210 = zext i16 %209 to i32
  %211 = call i32 @gx_path_add_line_notes(ptr noundef %1, i64 noundef %206, i64 noundef %207, i32 noundef %210) #13
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %294, label %213

213:                                              ; preds = %205
  %214 = getelementptr inbounds %struct.curve_segment, ptr %46, i64 0, i32 5
  %215 = getelementptr inbounds %struct.segment_s, ptr %198, i64 0, i32 4
  %216 = load i64, ptr %215, align 8, !tbaa !32
  %217 = getelementptr inbounds %struct.segment_s, ptr %198, i64 0, i32 4, i32 1
  %218 = load i64, ptr %217, align 8, !tbaa !33
  %219 = load i64, ptr %214, align 8, !tbaa !55
  %220 = sub nsw i64 %219, %216
  %221 = sitofp i64 %220 to double
  %222 = getelementptr inbounds %struct.curve_segment, ptr %46, i64 0, i32 5, i32 1
  %223 = load i64, ptr %222, align 8, !tbaa !56
  %224 = sub nsw i64 %223, %218
  %225 = sitofp i64 %224 to double
  %226 = icmp eq i64 %219, %216
  %227 = icmp eq i64 %223, %218
  %228 = select i1 %226, i1 %227, i1 false
  br i1 %228, label %254, label %229

229:                                              ; preds = %213
  %230 = getelementptr inbounds %struct.segment_s, ptr %198, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !57
  %232 = getelementptr inbounds %struct.segment_s, ptr %231, i64 0, i32 4
  %233 = load i64, ptr %232, align 8, !tbaa !32
  %234 = sub nsw i64 %233, %216
  %235 = sitofp i64 %234 to double
  %236 = getelementptr inbounds %struct.segment_s, ptr %231, i64 0, i32 4, i32 1
  %237 = load i64, ptr %236, align 8, !tbaa !33
  %238 = sub nsw i64 %237, %218
  %239 = sitofp i64 %238 to double
  %240 = fmul double %225, %239
  %241 = call double @llvm.fmuladd.f64(double %221, double %235, double %240)
  %242 = fmul double %241, 3.000000e-01
  %243 = fmul double %225, %225
  %244 = call double @llvm.fmuladd.f64(double %221, double %221, double %243)
  %245 = fdiv double %242, %244
  %246 = fcmp ult double %245, 0.000000e+00
  br i1 %246, label %254, label %247

247:                                              ; preds = %229
  %248 = fmul double %245, %221
  %249 = fptosi double %248 to i64
  %250 = add nsw i64 %216, %249
  store i64 %250, ptr %215, align 8, !tbaa !32
  %251 = fmul double %245, %225
  %252 = fptosi double %251 to i64
  %253 = add nsw i64 %218, %252
  store i64 %253, ptr %217, align 8, !tbaa !33
  br label %254

254:                                              ; preds = %213, %229, %247
  %255 = getelementptr inbounds %struct.curve_segment, ptr %46, i64 0, i32 6
  %256 = getelementptr inbounds %struct.segment_s, ptr %203, i64 0, i32 4
  %257 = load i64, ptr %256, align 8, !tbaa !32
  %258 = getelementptr inbounds %struct.segment_s, ptr %203, i64 0, i32 4, i32 1
  %259 = load i64, ptr %258, align 8, !tbaa !33
  %260 = load i64, ptr %255, align 8, !tbaa !55
  %261 = sub nsw i64 %260, %257
  %262 = sitofp i64 %261 to double
  %263 = getelementptr inbounds %struct.curve_segment, ptr %46, i64 0, i32 6, i32 1
  %264 = load i64, ptr %263, align 8, !tbaa !56
  %265 = sub nsw i64 %264, %259
  %266 = sitofp i64 %265 to double
  %267 = icmp eq i64 %260, %257
  %268 = icmp eq i64 %264, %259
  %269 = select i1 %267, i1 %268, i1 false
  br i1 %269, label %294, label %270

270:                                              ; preds = %254
  %271 = load ptr, ptr %203, align 8, !tbaa !58
  %272 = getelementptr inbounds %struct.segment_s, ptr %271, i64 0, i32 4
  %273 = load i64, ptr %272, align 8, !tbaa !32
  %274 = sub nsw i64 %273, %257
  %275 = sitofp i64 %274 to double
  %276 = getelementptr inbounds %struct.segment_s, ptr %271, i64 0, i32 4, i32 1
  %277 = load i64, ptr %276, align 8, !tbaa !33
  %278 = sub nsw i64 %277, %259
  %279 = sitofp i64 %278 to double
  %280 = fmul double %266, %279
  %281 = call double @llvm.fmuladd.f64(double %262, double %275, double %280)
  %282 = fmul double %281, 3.000000e-01
  %283 = fmul double %266, %266
  %284 = call double @llvm.fmuladd.f64(double %262, double %262, double %283)
  %285 = fdiv double %282, %284
  %286 = fcmp ult double %285, 0.000000e+00
  br i1 %286, label %294, label %287

287:                                              ; preds = %270
  %288 = fmul double %285, %262
  %289 = fptosi double %288 to i64
  %290 = add nsw i64 %257, %289
  store i64 %290, ptr %256, align 8, !tbaa !32
  %291 = fmul double %285, %266
  %292 = fptosi double %291 to i64
  %293 = add nsw i64 %259, %292
  store i64 %293, ptr %258, align 8, !tbaa !33
  br label %294

294:                                              ; preds = %287, %270, %254, %205, %200, %196, %188
  %295 = phi i32 [ %189, %188 ], [ %199, %196 ], [ %199, %200 ], [ %211, %205 ], [ %211, %254 ], [ %211, %270 ], [ %211, %287 ]
  %296 = phi ptr [ %45, %188 ], [ %198, %196 ], [ %198, %200 ], [ %198, %205 ], [ %198, %254 ], [ %198, %270 ], [ %198, %287 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %11) #13
  br label %308

297:                                              ; preds = %44
  %298 = getelementptr inbounds %struct.segment_s, ptr %46, i64 0, i32 4
  %299 = load i64, ptr %298, align 8, !tbaa !32
  %300 = getelementptr inbounds %struct.segment_s, ptr %46, i64 0, i32 4, i32 1
  %301 = load i64, ptr %300, align 8, !tbaa !33
  %302 = getelementptr inbounds %struct.segment_s, ptr %46, i64 0, i32 3
  %303 = load i16, ptr %302, align 2, !tbaa !50
  %304 = zext i16 %303 to i32
  %305 = call i32 @gx_path_add_line_notes(ptr noundef %1, i64 noundef %299, i64 noundef %301, i32 noundef %304) #13
  br label %308

306:                                              ; preds = %44
  %307 = call i32 @gx_path_close_subpath_notes(ptr noundef %1, i32 noundef 0) #13
  br label %308

308:                                              ; preds = %294, %44, %163, %165, %306, %297, %49
  %309 = phi i32 [ %307, %306 ], [ %305, %297 ], [ %54, %49 ], [ %164, %163 ], [ %180, %165 ], [ %295, %294 ], [ -29, %44 ]
  %310 = phi ptr [ %45, %306 ], [ %45, %297 ], [ %45, %49 ], [ %45, %163 ], [ %45, %165 ], [ %296, %294 ], [ %45, %44 ]
  %311 = icmp slt i32 %309, 0
  br i1 %311, label %312, label %322

312:                                              ; preds = %308
  call void @gx_path_release(ptr noundef %1) #13
  %313 = icmp eq ptr %1, %0
  br i1 %313, label %314, label %331

314:                                              ; preds = %312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %7, i64 48, i1 false), !tbaa.struct !5
  %315 = getelementptr inbounds i8, ptr %1, i64 48
  store ptr %13, ptr %315, align 8, !tbaa.struct !17
  %316 = getelementptr inbounds i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %316, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !18
  %317 = getelementptr inbounds i8, ptr %1, i64 72
  store i64 %16, ptr %317, align 8, !tbaa.struct !19
  %318 = getelementptr inbounds i8, ptr %1, i64 80
  store i64 %18, ptr %318, align 8, !tbaa.struct !20
  %319 = getelementptr inbounds i8, ptr %1, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %319, ptr noundef nonnull align 8 dereferenceable(33) %9, i64 33, i1 false), !tbaa.struct !21
  %320 = getelementptr inbounds i8, ptr %1, i64 121
  store i8 %21, ptr %320, align 1, !tbaa.struct !22
  %321 = getelementptr inbounds i8, ptr %1, i64 122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %321, ptr noundef nonnull align 2 dereferenceable(6) %10, i64 6, i1 false), !tbaa.struct !23
  br label %331

322:                                              ; preds = %308
  %323 = getelementptr inbounds %struct.segment_s, ptr %46, i64 0, i32 1
  %324 = load ptr, ptr %323, align 8, !tbaa !57
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %44, !llvm.loop !59

326:                                              ; preds = %322, %27
  %327 = and i8 %21, -9
  %328 = icmp eq i8 %327, 3
  br i1 %328, label %329, label %331

329:                                              ; preds = %326
  %330 = call i32 @gx_path_add_point(ptr noundef %1, i64 noundef %16, i64 noundef %18) #13
  br label %331

331:                                              ; preds = %326, %329, %312, %314
  %332 = phi i32 [ %309, %314 ], [ %309, %312 ], [ 0, %329 ], [ 0, %326 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %10)
  ret i32 %332
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @gx_path_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gx_path_add_point(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @gx_path_add_curve_notes(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gx_curve_log2_samples(i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @gx_path_add_line_notes(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gx_flatten_sample(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @gx_path_close_subpath_notes(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gx_path_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @gx_curve_cursor_init(ptr nocapture noundef writeonly %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = shl nsw i32 %4, 1
  %7 = mul nsw i32 %4, 3
  store i32 %4, ptr %0, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 1
  store i64 %1, ptr %8, align 8, !tbaa !63
  %9 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 1, i32 1
  store i64 %2, ptr %9, align 8, !tbaa !64
  %10 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 2
  store ptr %3, ptr %10, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.curve_segment, ptr %3, i64 0, i32 4
  %12 = getelementptr inbounds %struct.curve_segment, ptr %3, i64 0, i32 4, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !40
  %14 = icmp sgt i64 %13, %2
  %15 = getelementptr inbounds %struct.curve_segment, ptr %3, i64 0, i32 6
  br i1 %14, label %16, label %19

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.curve_segment, ptr %3, i64 0, i32 5
  %18 = load i64, ptr %11, align 8, !tbaa !44
  br label %22

19:                                               ; preds = %5
  %20 = load i64, ptr %11, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.curve_segment, ptr %3, i64 0, i32 5
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i64 [ %1, %16 ], [ %20, %19 ]
  %24 = phi ptr [ %17, %16 ], [ %15, %19 ]
  %25 = phi ptr [ %15, %16 ], [ %21, %19 ]
  %26 = phi i64 [ %18, %16 ], [ %1, %19 ]
  %27 = load i64, ptr %25, align 8, !tbaa !10
  %28 = load i64, ptr %24, align 8, !tbaa !10
  %29 = sub nsw i64 %28, %23
  %30 = mul i64 %29, 3
  %31 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 5
  store i64 %30, ptr %31, align 8, !tbaa !66
  %32 = add i64 %28, %29
  %33 = sub i64 %27, %32
  %34 = mul i64 %33, 3
  %35 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 4
  store i64 %34, ptr %35, align 8, !tbaa !67
  %36 = add i64 %23, %30
  %37 = add i64 %36, %34
  %38 = sub i64 %26, %37
  %39 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 3
  store i64 %38, ptr %39, align 8, !tbaa !68
  %40 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %40, align 8, !tbaa !69
  %41 = icmp ult i32 %7, 62
  br i1 %41, label %42, label %63

42:                                               ; preds = %22
  %43 = tail call i64 @llvm.abs.i64(i64 %38, i1 true)
  %44 = add nuw nsw i32 %7, 2
  %45 = zext nneg i32 %44 to i64
  %46 = lshr i64 9223372036854775807, %45
  %47 = icmp ugt i64 %43, %46
  br i1 %47, label %63, label %48

48:                                               ; preds = %42
  %49 = tail call i64 @llvm.abs.i64(i64 %34, i1 true)
  %50 = add nsw i32 %6, 2
  %51 = zext nneg i32 %50 to i64
  %52 = lshr i64 9223372036854775807, %51
  %53 = icmp ugt i64 %49, %52
  br i1 %53, label %63, label %54

54:                                               ; preds = %48
  %55 = tail call i64 @llvm.abs.i64(i64 %30, i1 true)
  %56 = add nsw i32 %4, 1
  %57 = zext nneg i32 %56 to i64
  %58 = lshr i64 9223372036854775807, %57
  %59 = icmp ugt i64 %55, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = shl nsw i32 -1, %4
  %62 = xor i32 %61, -1
  br label %63

63:                                               ; preds = %22, %42, %48, %54, %60
  %64 = phi i32 [ %62, %60 ], [ -1, %54 ], [ -1, %48 ], [ -1, %42 ], [ -1, %22 ]
  %65 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 10
  store i32 %64, ptr %65, align 4, !tbaa !70
  %66 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 11
  %67 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 11, i32 1
  store i64 %2, ptr %67, align 8, !tbaa !71
  store i64 %2, ptr %66, align 8, !tbaa !72
  %68 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 11, i32 2
  store i64 %1, ptr %68, align 8, !tbaa !73
  %69 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 11, i32 3
  store i64 0, ptr %69, align 8, !tbaa !74
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @gx_curve_x_at_y(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 11
  %4 = load i64, ptr %3, align 8, !tbaa !72
  %5 = icmp sgt i64 %4, %1
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 11, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !71
  %9 = icmp slt i64 %8, %1
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = sub nsw i64 %8, %4
  %12 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 11, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !73
  %14 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 11, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !74
  br label %229

16:                                               ; preds = %6, %2
  %17 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !65
  %19 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 1, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !64
  %21 = getelementptr inbounds %struct.curve_segment, ptr %18, i64 0, i32 4, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !40
  %23 = icmp sgt i64 %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.curve_segment, ptr %18, i64 0, i32 4
  %26 = getelementptr inbounds %struct.curve_segment, ptr %18, i64 0, i32 6, i32 1
  %27 = getelementptr inbounds %struct.curve_segment, ptr %18, i64 0, i32 5, i32 1
  br label %32

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 1
  %30 = getelementptr inbounds %struct.curve_segment, ptr %18, i64 0, i32 5, i32 1
  %31 = getelementptr inbounds %struct.curve_segment, ptr %18, i64 0, i32 6, i32 1
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi ptr [ %25, %24 ], [ %29, %28 ]
  %34 = phi i64 [ %20, %24 ], [ %22, %28 ]
  %35 = phi ptr [ %27, %24 ], [ %31, %28 ]
  %36 = phi ptr [ %26, %24 ], [ %30, %28 ]
  %37 = phi i64 [ %22, %24 ], [ %20, %28 ]
  %38 = load i64, ptr %33, align 8, !tbaa !10
  %39 = load i32, ptr %0, align 8, !tbaa !60
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %84

41:                                               ; preds = %32
  %42 = load i64, ptr %35, align 8, !tbaa !10
  %43 = load i64, ptr %36, align 8, !tbaa !10
  br label %44

44:                                               ; preds = %41, %76
  %45 = phi i64 [ %81, %76 ], [ %37, %41 ]
  %46 = phi i64 [ %80, %76 ], [ %43, %41 ]
  %47 = phi i64 [ %79, %76 ], [ %42, %41 ]
  %48 = phi i64 [ %78, %76 ], [ %34, %41 ]
  %49 = phi i32 [ %77, %76 ], [ 0, %41 ]
  %50 = phi i32 [ %82, %76 ], [ %39, %41 ]
  %51 = add nsw i64 %46, %47
  %52 = add nsw i64 %51, 1
  %53 = ashr i64 %52, 1
  %54 = add i64 %48, 4
  %55 = sub i64 %54, %51
  %56 = add i64 %55, %45
  %57 = ashr i64 %56, 3
  %58 = add nsw i64 %57, %53
  %59 = shl i32 %49, 1
  %60 = icmp sgt i64 %58, %1
  br i1 %60, label %61, label %68

61:                                               ; preds = %44
  %62 = add i64 %46, 1
  %63 = add i64 %62, %45
  %64 = ashr i64 %63, 1
  %65 = add nsw i64 %53, 1
  %66 = add nsw i64 %65, %64
  %67 = ashr i64 %66, 1
  br label %76

68:                                               ; preds = %44
  %69 = or disjoint i32 %59, 1
  %70 = add i64 %48, 1
  %71 = add i64 %70, %47
  %72 = ashr i64 %71, 1
  %73 = add nsw i64 %72, 1
  %74 = add nsw i64 %73, %53
  %75 = ashr i64 %74, 1
  br label %76

76:                                               ; preds = %68, %61
  %77 = phi i32 [ %59, %61 ], [ %69, %68 ]
  %78 = phi i64 [ %58, %61 ], [ %48, %68 ]
  %79 = phi i64 [ %67, %61 ], [ %72, %68 ]
  %80 = phi i64 [ %64, %61 ], [ %75, %68 ]
  %81 = phi i64 [ %45, %61 ], [ %58, %68 ]
  %82 = add nsw i32 %50, -1
  %83 = icmp sgt i32 %50, 1
  br i1 %83, label %44, label %84, !llvm.loop !75

84:                                               ; preds = %76, %32
  %85 = phi i32 [ 0, %32 ], [ %77, %76 ]
  %86 = phi i64 [ %34, %32 ], [ %78, %76 ]
  %87 = phi i64 [ %37, %32 ], [ %81, %76 ]
  %88 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 3
  %89 = load i64, ptr %88, align 8, !tbaa !68
  %90 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 4
  %91 = load i64, ptr %90, align 8, !tbaa !67
  %92 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 5
  %93 = load i64, ptr %92, align 8, !tbaa !66
  %94 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 10
  %95 = load i32, ptr %94, align 4, !tbaa !70
  %96 = icmp sgt i32 %85, %95
  br i1 %96, label %131, label %97

97:                                               ; preds = %84
  %98 = mul nsw i32 %85, %85
  %99 = mul nsw i32 %98, %85
  %100 = add nsw i32 %98, %85
  %101 = mul nsw i32 %100, 3
  %102 = add nsw i32 %101, 1
  %103 = shl nsw i32 %85, 1
  %104 = or disjoint i32 %103, 1
  %105 = sext i32 %99 to i64
  %106 = mul nsw i64 %89, %105
  %107 = zext i32 %39 to i64
  %108 = ashr i64 %106, %107
  %109 = zext nneg i32 %98 to i64
  %110 = mul nsw i64 %91, %109
  %111 = add nsw i64 %108, %110
  %112 = ashr i64 %111, %107
  %113 = sext i32 %85 to i64
  %114 = mul nsw i64 %93, %113
  %115 = shl nuw i32 1, %39
  %116 = ashr i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = add i64 %114, %117
  %119 = add i64 %118, %112
  %120 = ashr i64 %119, %107
  %121 = add nsw i64 %120, %38
  %122 = sext i32 %102 to i64
  %123 = mul nsw i64 %89, %122
  %124 = ashr i64 %123, %107
  %125 = sext i32 %104 to i64
  %126 = mul nsw i64 %91, %125
  %127 = add nsw i64 %124, %126
  %128 = ashr i64 %127, %107
  %129 = add nsw i64 %128, %93
  %130 = ashr i64 %129, %107
  br label %222

131:                                              ; preds = %84
  %132 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 9
  %133 = load i32, ptr %132, align 8, !tbaa !69
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %167

135:                                              ; preds = %131
  %136 = icmp ugt i32 %39, 10
  br i1 %136, label %137, label %148

137:                                              ; preds = %135
  %138 = sub nsw i32 0, %39
  %139 = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %138) #13
  %140 = fmul double %139, %139
  %141 = fmul double %139, %140
  %142 = sitofp i64 %89 to double
  %143 = fmul double %141, %142
  %144 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 6
  store double %143, ptr %144, align 8, !tbaa !76
  %145 = sitofp i64 %91 to double
  %146 = fmul double %140, %145
  %147 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 7
  store double %146, ptr %147, align 8, !tbaa !77
  br label %162

148:                                              ; preds = %135
  %149 = zext nneg i32 %39 to i64
  %150 = getelementptr inbounds [11 x double], ptr @gx_curve_x_at_y.k3_denom, i64 0, i64 %149
  %151 = load double, ptr %150, align 8, !tbaa !14
  %152 = sitofp i64 %89 to double
  %153 = fmul double %151, %152
  %154 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 6
  store double %153, ptr %154, align 8, !tbaa !76
  %155 = getelementptr inbounds [11 x double], ptr @gx_curve_x_at_y.k2_denom, i64 0, i64 %149
  %156 = load double, ptr %155, align 8, !tbaa !14
  %157 = sitofp i64 %91 to double
  %158 = fmul double %156, %157
  %159 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 7
  store double %158, ptr %159, align 8, !tbaa !77
  %160 = getelementptr inbounds [11 x double], ptr @gx_curve_x_at_y.k_denom, i64 0, i64 %149
  %161 = load double, ptr %160, align 8, !tbaa !14
  br label %162

162:                                              ; preds = %148, %137
  %163 = phi double [ %161, %148 ], [ %139, %137 ]
  %164 = sitofp i64 %93 to double
  %165 = fmul double %163, %164
  %166 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 8
  store double %165, ptr %166, align 8, !tbaa !78
  store i32 1, ptr %132, align 8, !tbaa !69
  br label %167

167:                                              ; preds = %162, %131
  %168 = icmp slt i32 %85, 2097152
  %169 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 6
  %170 = load double, ptr %169, align 8, !tbaa !76
  br i1 %168, label %171, label %199

171:                                              ; preds = %167
  %172 = sext i32 %85 to i64
  %173 = mul nsw i64 %172, %172
  %174 = mul nsw i64 %173, %172
  %175 = add nsw i64 %173, %172
  %176 = mul nsw i64 %175, 3
  %177 = add nsw i64 %176, 1
  %178 = shl nsw i32 %85, 1
  %179 = or disjoint i32 %178, 1
  %180 = sitofp i64 %174 to double
  %181 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 7
  %182 = load double, ptr %181, align 8, !tbaa !77
  %183 = sitofp i64 %173 to double
  %184 = fmul double %182, %183
  %185 = tail call double @llvm.fmuladd.f64(double %170, double %180, double %184)
  %186 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 8
  %187 = load double, ptr %186, align 8, !tbaa !78
  %188 = sitofp i32 %85 to double
  %189 = tail call double @llvm.fmuladd.f64(double %187, double %188, double %185)
  %190 = fadd double %189, 5.000000e-01
  %191 = fptosi double %190 to i64
  %192 = add nsw i64 %38, %191
  %193 = sitofp i64 %177 to double
  %194 = sitofp i32 %179 to double
  %195 = fmul double %182, %194
  %196 = tail call double @llvm.fmuladd.f64(double %170, double %193, double %195)
  %197 = fadd double %187, %196
  %198 = fptosi double %197 to i64
  br label %222

199:                                              ; preds = %167
  %200 = sitofp i32 %85 to double
  %201 = fmul double %200, %200
  %202 = fmul double %201, %200
  %203 = fadd double %201, %200
  %204 = tail call double @llvm.fmuladd.f64(double %203, double 3.000000e+00, double 1.000000e+00)
  %205 = shl nuw nsw i32 %85, 1
  %206 = or disjoint i32 %205, 1
  %207 = sitofp i32 %206 to double
  %208 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 7
  %209 = load double, ptr %208, align 8, !tbaa !77
  %210 = fmul double %201, %209
  %211 = tail call double @llvm.fmuladd.f64(double %170, double %202, double %210)
  %212 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 8
  %213 = load double, ptr %212, align 8, !tbaa !78
  %214 = tail call double @llvm.fmuladd.f64(double %213, double %200, double %211)
  %215 = fadd double %214, 5.000000e-01
  %216 = fptosi double %215 to i64
  %217 = add nsw i64 %38, %216
  %218 = fmul double %209, %207
  %219 = tail call double @llvm.fmuladd.f64(double %170, double %204, double %218)
  %220 = fadd double %213, %219
  %221 = fptosi double %220 to i64
  br label %222

222:                                              ; preds = %171, %199, %97
  %223 = phi i64 [ %130, %97 ], [ %198, %171 ], [ %221, %199 ]
  %224 = phi i64 [ %121, %97 ], [ %192, %171 ], [ %217, %199 ]
  store i64 %87, ptr %3, align 8, !tbaa !72
  %225 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 11, i32 1
  store i64 %86, ptr %225, align 8, !tbaa !71
  %226 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 11, i32 2
  store i64 %224, ptr %226, align 8, !tbaa !73
  %227 = getelementptr inbounds %struct.curve_cursor_s, ptr %0, i64 0, i32 11, i32 3
  store i64 %223, ptr %227, align 8, !tbaa !74
  %228 = sub nsw i64 %86, %87
  br label %229

229:                                              ; preds = %222, %10
  %230 = phi i64 [ %4, %10 ], [ %87, %222 ]
  %231 = phi i64 [ %11, %10 ], [ %228, %222 ]
  %232 = phi i64 [ %15, %10 ], [ %223, %222 ]
  %233 = phi i64 [ %13, %10 ], [ %224, %222 ]
  %234 = sub nsw i64 %1, %230
  %235 = icmp eq i64 %230, %1
  br i1 %235, label %262, label %236

236:                                              ; preds = %229
  %237 = icmp slt i64 %234, 4294967296
  br i1 %237, label %238, label %253

238:                                              ; preds = %236
  %239 = icmp sgt i64 %232, -1
  br i1 %239, label %240, label %246

240:                                              ; preds = %238
  %241 = icmp slt i64 %232, 4294967296
  br i1 %241, label %242, label %253

242:                                              ; preds = %240
  %243 = mul i64 %232, %234
  %244 = udiv i64 %243, %231
  %245 = add i64 %244, %233
  br label %262

246:                                              ; preds = %238
  %247 = icmp sgt i64 %232, -4294967296
  br i1 %247, label %248, label %253

248:                                              ; preds = %246
  %249 = mul i64 %232, %234
  %250 = sub i64 0, %249
  %251 = udiv i64 %250, %231
  %252 = sub i64 %233, %251
  br label %262

253:                                              ; preds = %240, %246, %236
  %254 = sitofp i64 %232 to double
  %255 = sitofp i64 %234 to double
  %256 = fmul double %255, %254
  %257 = sitofp i64 %231 to double
  %258 = fdiv double %256, %257
  %259 = tail call double @llvm.floor.f64(double %258)
  %260 = fptosi double %259 to i64
  %261 = add nsw i64 %233, %260
  br label %262

262:                                              ; preds = %229, %253, %248, %242
  %263 = phi i64 [ %245, %242 ], [ %261, %253 ], [ %252, %248 ], [ %233, %229 ]
  ret i64 %263
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @gx_path_is_monotonic(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = alloca [2 x double], align 16
  %3 = getelementptr inbounds %struct.gx_path_s, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %47, label %6

6:                                                ; preds = %1, %37
  %7 = phi ptr [ %44, %37 ], [ %4, %1 ]
  %8 = phi i64 [ %40, %37 ], [ undef, %1 ]
  %9 = phi i64 [ %42, %37 ], [ undef, %1 ]
  %10 = getelementptr inbounds %struct.segment_s, ptr %7, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !29
  switch i16 %11, label %37 [
    i16 0, label %12
    i16 3, label %19
  ]

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.subpath_s, ptr %7, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !79
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.subpath_s, ptr %7, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  br label %37

19:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  %20 = getelementptr inbounds %struct.curve_segment, ptr %7, i64 0, i32 5, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.curve_segment, ptr %7, i64 0, i32 6, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !39
  %24 = getelementptr inbounds %struct.curve_segment, ptr %7, i64 0, i32 4, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !40
  %26 = call i32 @gx_curve_monotonic_points(i64 noundef %9, i64 noundef %21, i64 noundef %23, i64 noundef %25, ptr noundef nonnull %2), !range !41
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.curve_segment, ptr %7, i64 0, i32 4
  %30 = getelementptr inbounds %struct.curve_segment, ptr %7, i64 0, i32 6
  %31 = getelementptr inbounds %struct.curve_segment, ptr %7, i64 0, i32 5
  %32 = load i64, ptr %31, align 8, !tbaa !45
  %33 = load i64, ptr %30, align 8, !tbaa !46
  %34 = load i64, ptr %29, align 8, !tbaa !44
  %35 = call i32 @gx_curve_monotonic_points(i64 noundef %8, i64 noundef %32, i64 noundef %33, i64 noundef %34, ptr noundef nonnull %2), !range !41
  %36 = icmp eq i32 %35, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  br i1 %36, label %37, label %47

37:                                               ; preds = %12, %16, %6, %28
  %38 = phi ptr [ %7, %6 ], [ %7, %28 ], [ %7, %12 ], [ %18, %16 ]
  %39 = getelementptr inbounds %struct.segment_s, ptr %38, i64 0, i32 4
  %40 = load i64, ptr %39, align 8, !tbaa.struct !80
  %41 = getelementptr inbounds %struct.segment_s, ptr %38, i64 0, i32 4, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa.struct !81
  %43 = getelementptr inbounds %struct.segment_s, ptr %38, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %6, !llvm.loop !82

46:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  br label %47

47:                                               ; preds = %28, %37, %1, %46
  %48 = phi i32 [ 0, %46 ], [ 1, %1 ], [ 1, %37 ], [ 0, %28 ]
  ret i32 %48
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local i32 @gx_curve_monotonic_points(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #9 {
  %6 = sub nsw i64 %1, %0
  %7 = mul i64 %6, 3
  %8 = add i64 %6, %1
  %9 = sub i64 %2, %8
  %10 = mul i64 %9, 3
  %11 = add i64 %7, %0
  %12 = add i64 %11, %10
  %13 = sub i64 %3, %12
  %14 = mul i64 %9, 6
  %15 = mul i64 %13, 3
  %16 = icmp eq i64 %12, %3
  br i1 %16, label %17, label %31

17:                                               ; preds = %5
  %18 = xor i64 %10, %7
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %114

20:                                               ; preds = %17
  %21 = tail call i64 @llvm.abs.i64(i64 %7, i1 true)
  %22 = tail call i64 @llvm.abs.i64(i64 %14, i1 true)
  %23 = icmp ult i64 %21, %22
  %24 = icmp ne i64 %1, %0
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %114

26:                                               ; preds = %20
  %27 = sub nsw i64 0, %7
  %28 = sitofp i64 %27 to double
  %29 = sitofp i64 %14 to double
  %30 = fdiv double %28, %29
  store double %30, ptr %4, align 8, !tbaa !14
  br label %114

31:                                               ; preds = %5
  %32 = icmp eq i64 %1, %0
  br i1 %32, label %33, label %47

33:                                               ; preds = %31
  %34 = xor i64 %13, %10
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %114

36:                                               ; preds = %33
  %37 = tail call i64 @llvm.abs.i64(i64 %14, i1 true)
  %38 = tail call i64 @llvm.abs.i64(i64 %15, i1 true)
  %39 = icmp ult i64 %37, %38
  %40 = icmp ne i64 %8, %2
  %41 = and i1 %40, %39
  br i1 %41, label %42, label %114

42:                                               ; preds = %36
  %43 = sub nsw i64 0, %14
  %44 = sitofp i64 %43 to double
  %45 = sitofp i64 %15 to double
  %46 = fdiv double %44, %45
  store double %46, ptr %4, align 8, !tbaa !14
  br label %114

47:                                               ; preds = %31
  %48 = add nsw i64 %15, %14
  %49 = add nsw i64 %48, %7
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = xor i64 %13, %10
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %114

54:                                               ; preds = %51
  %55 = tail call i64 @llvm.abs.i64(i64 %14, i1 true)
  %56 = tail call i64 @llvm.abs.i64(i64 %15, i1 true)
  %57 = icmp ugt i64 %55, %56
  %58 = shl nuw i64 %56, 1
  %59 = icmp slt i64 %55, %58
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %114

61:                                               ; preds = %54
  %62 = sub i64 0, %48
  %63 = sitofp i64 %62 to double
  %64 = sitofp i64 %15 to double
  %65 = fdiv double %63, %64
  store double %65, ptr %4, align 8, !tbaa !14
  br label %114

66:                                               ; preds = %47
  %67 = xor i64 %49, %7
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %66
  %70 = xor i64 %13, %10
  %71 = icmp sgt i64 %70, -1
  br i1 %71, label %114, label %72

72:                                               ; preds = %69
  %73 = tail call i64 @llvm.abs.i64(i64 %10, i1 true)
  %74 = tail call i64 @llvm.abs.i64(i64 %15, i1 true)
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %114

76:                                               ; preds = %72, %66
  %77 = sub nsw i64 0, %10
  %78 = sitofp i64 %77 to double
  %79 = sitofp i64 %15 to double
  %80 = sitofp i64 %7 to double
  %81 = fneg double %79
  %82 = fmul double %80, %81
  %83 = tail call double @llvm.fmuladd.f64(double %78, double %78, double %82)
  %84 = fcmp olt double %83, 0.000000e+00
  br i1 %84, label %114, label %85

85:                                               ; preds = %76
  %86 = tail call double @sqrt(double noundef %83) #13
  %87 = fsub double %78, %86
  %88 = fdiv double %87, %79
  %89 = fcmp ogt double %88, 0.000000e+00
  %90 = fcmp olt double %88, 1.000000e+00
  %91 = and i1 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store double %88, ptr %4, align 8, !tbaa !14
  br label %93

93:                                               ; preds = %92, %85
  %94 = phi i32 [ 1, %92 ], [ 0, %85 ]
  %95 = fcmp une double %86, 0.000000e+00
  br i1 %95, label %96, label %114

96:                                               ; preds = %93
  %97 = fadd double %86, %78
  %98 = fdiv double %97, %79
  %99 = fcmp ogt double %98, 0.000000e+00
  %100 = fcmp olt double %98, 1.000000e+00
  %101 = and i1 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %96
  %103 = icmp slt i64 %15, 0
  %104 = and i1 %103, %91
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load double, ptr %4, align 8, !tbaa !14
  %107 = getelementptr inbounds double, ptr %4, i64 1
  store double %106, ptr %107, align 8, !tbaa !14
  br label %111

108:                                              ; preds = %102
  %109 = zext nneg i32 %94 to i64
  %110 = getelementptr inbounds double, ptr %4, i64 %109
  br label %111

111:                                              ; preds = %108, %105
  %112 = phi ptr [ %110, %108 ], [ %4, %105 ]
  store double %98, ptr %112, align 8, !tbaa !14
  %113 = add nuw nsw i32 %94, 1
  br label %114

114:                                              ; preds = %76, %96, %111, %93, %72, %69, %51, %54, %33, %36, %17, %20, %61, %42, %26
  %115 = phi i32 [ 1, %26 ], [ 1, %42 ], [ 1, %61 ], [ 0, %20 ], [ 0, %17 ], [ 0, %36 ], [ 0, %33 ], [ 0, %54 ], [ 0, %51 ], [ 0, %69 ], [ 0, %72 ], [ 0, %76 ], [ %113, %111 ], [ %94, %96 ], [ %94, %93 ]
  ret i32 %115
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_curve_split(i64 noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, double noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #11 {
  %7 = fmul double %3, %3
  %8 = fmul double %7, %3
  %9 = fsub double 1.000000e+00, %3
  %10 = fmul double %9, %9
  %11 = fmul double %9, %10
  %12 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 5
  %13 = load i64, ptr %12, align 8, !tbaa !45
  %14 = sub nsw i64 %13, %0
  %15 = mul i64 %14, 3
  %16 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 6
  %17 = load i64, ptr %16, align 8, !tbaa !46
  %18 = add i64 %14, %13
  %19 = sub i64 %17, %18
  %20 = mul i64 %19, 3
  %21 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 4
  %22 = load i64, ptr %21, align 8, !tbaa !44
  %23 = add i64 %15, %0
  %24 = add i64 %23, %20
  %25 = sub i64 %22, %24
  %26 = sitofp i64 %25 to double
  %27 = fmul double %8, %26
  %28 = fptosi double %27 to i64
  %29 = sitofp i64 %20 to double
  %30 = fmul double %7, %29
  %31 = fptosi double %30 to i64
  %32 = sitofp i64 %15 to double
  %33 = fmul double %32, %3
  %34 = fptosi double %33 to i64
  %35 = sdiv i64 %34, 3
  %36 = add nsw i64 %35, %0
  %37 = getelementptr inbounds %struct.curve_segment, ptr %4, i64 0, i32 5
  store i64 %36, ptr %37, align 8, !tbaa !45
  %38 = add nsw i64 %31, %34
  %39 = sdiv i64 %38, 3
  %40 = add nsw i64 %39, %36
  %41 = getelementptr inbounds %struct.curve_segment, ptr %4, i64 0, i32 6
  store i64 %40, ptr %41, align 8, !tbaa !46
  %42 = add i64 %31, %34
  %43 = add i64 %42, %0
  %44 = add i64 %43, %28
  %45 = getelementptr inbounds %struct.curve_segment, ptr %4, i64 0, i32 4
  store i64 %44, ptr %45, align 8, !tbaa !44
  %46 = fmul double %11, %26
  %47 = fptosi double %46 to i64
  %48 = fmul double %26, %3
  %49 = tail call double @llvm.fmuladd.f64(double %48, double 3.000000e+00, double %29)
  %50 = fmul double %10, %49
  %51 = fptosi double %50 to i64
  %52 = fmul double %7, %26
  %53 = mul i64 %19, 6
  %54 = sitofp i64 %53 to double
  %55 = fmul double %54, %3
  %56 = tail call double @llvm.fmuladd.f64(double %52, double 3.000000e+00, double %55)
  %57 = fadd double %56, %32
  %58 = fmul double %9, %57
  %59 = fptosi double %58 to i64
  %60 = sdiv i64 %59, 3
  %61 = add nsw i64 %60, %44
  %62 = getelementptr inbounds %struct.curve_segment, ptr %5, i64 0, i32 5
  store i64 %61, ptr %62, align 8, !tbaa !45
  %63 = add nsw i64 %59, %51
  %64 = sdiv i64 %63, 3
  %65 = add nsw i64 %61, %64
  %66 = getelementptr inbounds %struct.curve_segment, ptr %5, i64 0, i32 6
  store i64 %65, ptr %66, align 8, !tbaa !46
  %67 = add i64 %59, %51
  %68 = add i64 %67, %47
  %69 = add nsw i64 %68, %44
  %70 = getelementptr inbounds %struct.curve_segment, ptr %5, i64 0, i32 4
  store i64 %69, ptr %70, align 8, !tbaa !44
  %71 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 5, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !38
  %73 = sub nsw i64 %72, %1
  %74 = mul i64 %73, 3
  %75 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 6, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !39
  %77 = add i64 %73, %72
  %78 = sub i64 %76, %77
  %79 = mul i64 %78, 3
  %80 = getelementptr inbounds %struct.curve_segment, ptr %2, i64 0, i32 4, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !40
  %82 = add i64 %74, %1
  %83 = add i64 %82, %79
  %84 = sub i64 %81, %83
  %85 = sitofp i64 %84 to double
  %86 = fmul double %8, %85
  %87 = fptosi double %86 to i64
  %88 = sitofp i64 %79 to double
  %89 = fmul double %7, %88
  %90 = fptosi double %89 to i64
  %91 = sitofp i64 %74 to double
  %92 = fmul double %91, %3
  %93 = fptosi double %92 to i64
  %94 = sdiv i64 %93, 3
  %95 = add nsw i64 %94, %1
  %96 = getelementptr inbounds %struct.curve_segment, ptr %4, i64 0, i32 5, i32 1
  store i64 %95, ptr %96, align 8, !tbaa !38
  %97 = add nsw i64 %90, %93
  %98 = sdiv i64 %97, 3
  %99 = add nsw i64 %98, %95
  %100 = getelementptr inbounds %struct.curve_segment, ptr %4, i64 0, i32 6, i32 1
  store i64 %99, ptr %100, align 8, !tbaa !39
  %101 = add i64 %90, %93
  %102 = add i64 %101, %1
  %103 = add i64 %102, %87
  %104 = getelementptr inbounds %struct.curve_segment, ptr %4, i64 0, i32 4, i32 1
  store i64 %103, ptr %104, align 8, !tbaa !40
  %105 = fmul double %11, %85
  %106 = fptosi double %105 to i64
  %107 = fmul double %85, %3
  %108 = tail call double @llvm.fmuladd.f64(double %107, double 3.000000e+00, double %88)
  %109 = fmul double %10, %108
  %110 = fptosi double %109 to i64
  %111 = fmul double %7, %85
  %112 = mul i64 %78, 6
  %113 = sitofp i64 %112 to double
  %114 = fmul double %113, %3
  %115 = tail call double @llvm.fmuladd.f64(double %111, double 3.000000e+00, double %114)
  %116 = fadd double %115, %91
  %117 = fmul double %9, %116
  %118 = fptosi double %117 to i64
  %119 = sdiv i64 %118, 3
  %120 = add nsw i64 %119, %103
  %121 = getelementptr inbounds %struct.curve_segment, ptr %5, i64 0, i32 5, i32 1
  store i64 %120, ptr %121, align 8, !tbaa !38
  %122 = add nsw i64 %118, %110
  %123 = sdiv i64 %122, 3
  %124 = add nsw i64 %120, %123
  %125 = getelementptr inbounds %struct.curve_segment, ptr %5, i64 0, i32 6, i32 1
  store i64 %124, ptr %125, align 8, !tbaa !39
  %126 = add i64 %118, %110
  %127 = add i64 %126, %106
  %128 = add nsw i64 %127, %103
  %129 = getelementptr inbounds %struct.curve_segment, ptr %5, i64 0, i32 4, i32 1
  store i64 %128, ptr %129, align 8, !tbaa !40
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i64 0, i64 8, !6, i64 8, i64 8, !10, i64 16, i64 8, !10, i64 24, i64 8, !10, i64 32, i64 8, !10, i64 40, i64 8, !6, i64 48, i64 8, !6, i64 56, i64 8, !6, i64 64, i64 4, !12, i64 68, i64 4, !12, i64 72, i64 8, !10, i64 80, i64 8, !10, i64 88, i64 8, !14, i64 96, i64 8, !14, i64 104, i64 8, !14, i64 112, i64 8, !14, i64 120, i64 1, !16, i64 121, i64 1, !16, i64 122, i64 1, !16, i64 123, i64 1, !16}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !8, i64 0}
!16 = !{!8, !8, i64 0}
!17 = !{i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 4, !12, i64 20, i64 4, !12, i64 24, i64 8, !10, i64 32, i64 8, !10, i64 40, i64 8, !14, i64 48, i64 8, !14, i64 56, i64 8, !14, i64 64, i64 8, !14, i64 72, i64 1, !16, i64 73, i64 1, !16, i64 74, i64 1, !16, i64 75, i64 1, !16}
!18 = !{i64 0, i64 8, !6, i64 8, i64 4, !12, i64 12, i64 4, !12, i64 16, i64 8, !10, i64 24, i64 8, !10, i64 32, i64 8, !14, i64 40, i64 8, !14, i64 48, i64 8, !14, i64 56, i64 8, !14, i64 64, i64 1, !16, i64 65, i64 1, !16, i64 66, i64 1, !16, i64 67, i64 1, !16}
!19 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 8, !14, i64 24, i64 8, !14, i64 32, i64 8, !14, i64 40, i64 8, !14, i64 48, i64 1, !16, i64 49, i64 1, !16, i64 50, i64 1, !16, i64 51, i64 1, !16}
!20 = !{i64 0, i64 8, !10, i64 8, i64 8, !14, i64 16, i64 8, !14, i64 24, i64 8, !14, i64 32, i64 8, !14, i64 40, i64 1, !16, i64 41, i64 1, !16, i64 42, i64 1, !16, i64 43, i64 1, !16}
!21 = !{i64 0, i64 8, !14, i64 8, i64 8, !14, i64 16, i64 8, !14, i64 24, i64 8, !14, i64 32, i64 1, !16, i64 33, i64 1, !16, i64 34, i64 1, !16, i64 35, i64 1, !16}
!22 = !{i64 0, i64 1, !16, i64 1, i64 1, !16, i64 2, i64 1, !16}
!23 = !{i64 0, i64 1, !16, i64 1, i64 1, !16}
!24 = !{!25, !7, i64 0}
!25 = !{!"gx_path_s", !7, i64 0, !26, i64 8, !7, i64 40, !7, i64 48, !7, i64 56, !13, i64 64, !13, i64 68, !27, i64 72, !28, i64 88, !28, i64 104, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123}
!26 = !{!"gs_fixed_rect_s", !27, i64 0, !27, i64 16}
!27 = !{!"gs_fixed_point_s", !11, i64 0, !11, i64 8}
!28 = !{!"gs_point_s", !15, i64 0, !15, i64 8}
!29 = !{!30, !31, i64 16}
!30 = !{!"segment_s", !7, i64 0, !7, i64 8, !31, i64 16, !31, i64 18, !27, i64 24}
!31 = !{!"short", !8, i64 0}
!32 = !{!30, !11, i64 24}
!33 = !{!30, !11, i64 32}
!34 = !{!25, !11, i64 72}
!35 = !{!25, !11, i64 80}
!36 = !{!37, !31, i64 18}
!37 = !{!"", !7, i64 0, !7, i64 8, !31, i64 16, !31, i64 18, !27, i64 24, !27, i64 40, !27, i64 56}
!38 = !{!37, !11, i64 48}
!39 = !{!37, !11, i64 64}
!40 = !{!37, !11, i64 32}
!41 = !{i32 0, i32 3}
!42 = !{i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 2, !43, i64 18, i64 2, !43, i64 24, i64 8, !10, i64 32, i64 8, !10, i64 40, i64 8, !10, i64 48, i64 8, !10, i64 56, i64 8, !10, i64 64, i64 8, !10}
!43 = !{!31, !31, i64 0}
!44 = !{!37, !11, i64 24}
!45 = !{!37, !11, i64 40}
!46 = !{!37, !11, i64 56}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = distinct !{!49, !48}
!50 = !{!30, !31, i64 18}
!51 = !{!25, !7, i64 56}
!52 = !{!53, !7, i64 40}
!53 = !{!"subpath_s", !7, i64 0, !7, i64 8, !31, i64 16, !31, i64 18, !27, i64 24, !7, i64 40, !13, i64 48, !54, i64 56, !8, i64 104}
!54 = !{!"", !7, i64 0, !7, i64 8, !31, i64 16, !31, i64 18, !27, i64 24, !7, i64 40}
!55 = !{!27, !11, i64 0}
!56 = !{!27, !11, i64 8}
!57 = !{!30, !7, i64 8}
!58 = !{!30, !7, i64 0}
!59 = distinct !{!59, !48}
!60 = !{!61, !13, i64 0}
!61 = !{!"curve_cursor_s", !13, i64 0, !27, i64 8, !7, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !13, i64 80, !13, i64 84, !62, i64 88}
!62 = !{!"ccc_", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!63 = !{!61, !11, i64 8}
!64 = !{!61, !11, i64 16}
!65 = !{!61, !7, i64 24}
!66 = !{!61, !11, i64 48}
!67 = !{!61, !11, i64 40}
!68 = !{!61, !11, i64 32}
!69 = !{!61, !13, i64 80}
!70 = !{!61, !13, i64 84}
!71 = !{!61, !11, i64 96}
!72 = !{!61, !11, i64 88}
!73 = !{!61, !11, i64 104}
!74 = !{!61, !11, i64 112}
!75 = distinct !{!75, !48}
!76 = !{!61, !15, i64 56}
!77 = !{!61, !15, i64 64}
!78 = !{!61, !15, i64 72}
!79 = !{!53, !13, i64 48}
!80 = !{i64 0, i64 8, !10, i64 8, i64 8, !10}
!81 = !{i64 0, i64 8, !10}
!82 = distinct !{!82, !48}
