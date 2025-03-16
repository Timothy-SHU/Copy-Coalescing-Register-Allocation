; ModuleID = 'gxhint3.c'
source_filename = "gxhint3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_type1_state_s = type { ptr, ptr, ptr, i32, i32, %struct.fixed_coeff, float, %struct.point_scale_s, %struct.font_hints_s, %struct.gs_fixed_point_s, [48 x i64], i32, [11 x %struct.ip_state], i32, i32, i32, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32, %struct.gs_fixed_point_s, i64, %struct.gs_fixed_point_s, i32, [8 x %struct.gs_fixed_point_s], i32, i32, i32, i32, %struct.gs_fixed_point_s, i32, %struct.gs_fixed_point_s, ptr, i32, %struct.gs_fixed_point_s, %struct.stem_hint_table, %struct.stem_hint_table, [32 x i64] }
%struct.fixed_coeff = type { %struct.coeff1, %struct.coeff1, %struct.coeff1, %struct.coeff1, i32, i32, i32, i64 }
%struct.coeff1 = type { i64, i64 }
%struct.point_scale_s = type { %struct.pixel_scale_s, %struct.pixel_scale_s }
%struct.pixel_scale_s = type { i64, i64, i32 }
%struct.font_hints_s = type { i32, i32, i32, i32, i32, %struct.point_scale_s, %struct.stem_snap_table, %struct.stem_snap_table, i64, i64, i32, i32, [12 x %struct.alignment_zone] }
%struct.stem_snap_table = type { i32, [13 x i64] }
%struct.alignment_zone = type { i32, i64, i64, i64 }
%struct.ip_state = type { ptr, i16, %struct.gs_const_string_s }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.stem_hint_table = type { i32, i32, i32, [96 x %struct.stem_hint] }
%struct.stem_hint = type { i64, i64, i64, i64 }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_point_s = type { double, double }
%struct.subpath_s = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, ptr, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, ptr }
%struct.segment_s = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s }
%struct.curve_segment = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @type1_apply_path_hints(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gs_fixed_point_s, align 8
  %5 = alloca %struct.gs_fixed_point_s, align 8
  %6 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 33
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.gx_path_s, ptr %2, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  %10 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %11 = icmp eq ptr %7, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = icmp eq ptr %9, null
  br i1 %13, label %525, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.subpath_s, ptr %9, i64 0, i32 8
  %16 = load i8, ptr %15, align 8, !tbaa !26
  %17 = icmp eq i8 %16, 0
  %18 = icmp ne i32 %1, 0
  %19 = or i1 %18, %17
  br i1 %19, label %20, label %525

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.segment_s, ptr %9, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !30
  %23 = icmp eq ptr %22, null
  br i1 %23, label %525, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 32
  %26 = getelementptr inbounds %struct.subpath_s, ptr %9, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) %26, i64 16, i1 false), !tbaa.struct !32
  %27 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %26, i64 16, i1 false), !tbaa.struct !32
  br label %30

28:                                               ; preds = %3
  %29 = load i32, ptr %10, align 8, !tbaa !34
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ 0, %24 ], [ %29, %28 ]
  %32 = phi ptr [ %9, %24 ], [ %7, %28 ]
  %33 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %4, i64 0, i32 1
  %34 = getelementptr inbounds %struct.segment_s, ptr %32, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %35 = load ptr, ptr %34, align 8, !tbaa !30
  %36 = icmp eq ptr %35, null
  br i1 %36, label %273, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 32
  %39 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 35
  %40 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 35, i32 1
  %41 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8
  %42 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 2
  %43 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 1
  %44 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 31
  %45 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 35, i32 1
  %46 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 1
  %47 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 35
  %48 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 35, i32 1
  %49 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 35, i32 1
  %50 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8
  %51 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 2
  %52 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 1
  %53 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 31
  %54 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 0, i32 1
  br label %55

55:                                               ; preds = %37, %269
  %56 = phi ptr [ %35, %37 ], [ %271, %269 ]
  %57 = phi ptr [ %32, %37 ], [ %56, %269 ]
  %58 = phi i32 [ %31, %37 ], [ %248, %269 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %59 = getelementptr inbounds %struct.segment_s, ptr %56, i64 0, i32 2
  %60 = load i16, ptr %59, align 8, !tbaa !35
  switch i16 %60, label %183 [
    i16 3, label %61
    i16 2, label %181
  ]

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.curve_segment, ptr %56, i64 0, i32 5
  %63 = load i64, ptr %62, align 8, !tbaa !36
  %64 = load i64, ptr %39, align 8, !tbaa !36
  %65 = sub nsw i64 %63, %64
  %66 = getelementptr inbounds %struct.curve_segment, ptr %56, i64 0, i32 5, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !37
  %68 = load i64, ptr %40, align 8, !tbaa !37
  %69 = sub nsw i64 %67, %68
  %70 = load i32, ptr %41, align 8, !tbaa !38
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i64 %69, i64 %65
  %73 = select i1 %71, i64 %65, i64 %69
  %74 = load i32, ptr %42, align 8, !tbaa !39
  %75 = icmp eq i32 %74, 0
  %76 = sub nsw i64 0, %72
  %77 = select i1 %75, i64 %72, i64 %76
  %78 = call i64 @llvm.abs.i64(i64 %73, i1 true)
  %79 = call i64 @llvm.abs.i64(i64 %72, i1 true)
  %80 = icmp eq i64 %77, 0
  %81 = lshr i64 %79, 4
  %82 = icmp ugt i64 %78, %81
  %83 = select i1 %80, i1 true, i1 %82
  br i1 %83, label %87, label %84

84:                                               ; preds = %61
  %85 = icmp sgt i64 %77, 0
  %86 = select i1 %85, i32 5, i32 3
  br label %99

87:                                               ; preds = %61
  %88 = load i32, ptr %43, align 4, !tbaa !40
  %89 = icmp eq i32 %88, 0
  %90 = sub nsw i64 0, %73
  %91 = select i1 %89, i64 %73, i64 %90
  %92 = icmp slt i64 %91, 0
  %93 = icmp eq i64 %91, 0
  %94 = lshr i64 %78, 4
  %95 = icmp ugt i64 %79, %94
  %96 = select i1 %93, i1 true, i1 %95
  %97 = select i1 %92, i32 40, i32 24
  %98 = select i1 %96, i32 0, i32 %97
  br label %99

99:                                               ; preds = %84, %87
  %100 = phi i32 [ %86, %84 ], [ %98, %87 ]
  %101 = xor i32 %58, -1
  %102 = and i32 %100, %101
  %103 = icmp eq ptr %57, %9
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 %102, ptr %44, align 8, !tbaa !41
  br label %105

105:                                              ; preds = %104, %99
  %106 = icmp eq i32 %102, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.segment_s, ptr %57, i64 0, i32 4
  call fastcc void @apply_hints_at(ptr noundef %0, i32 noundef %102, ptr noundef nonnull %108, ptr noundef nonnull %5)
  br label %110

109:                                              ; preds = %105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %110

110:                                              ; preds = %109, %107
  %111 = getelementptr inbounds %struct.segment_s, ptr %57, i64 0, i32 4
  %112 = load i64, ptr %111, align 8, !tbaa !42
  %113 = load i64, ptr %39, align 8, !tbaa !43
  %114 = sub nsw i64 %112, %113
  %115 = getelementptr inbounds %struct.segment_s, ptr %57, i64 0, i32 4, i32 1
  %116 = load i64, ptr %115, align 8, !tbaa !44
  %117 = load i64, ptr %45, align 8, !tbaa !45
  %118 = sub nsw i64 %116, %117
  %119 = getelementptr inbounds %struct.curve_segment, ptr %56, i64 0, i32 6
  %120 = getelementptr inbounds %struct.segment_s, ptr %56, i64 0, i32 4
  %121 = load i64, ptr %120, align 8, !tbaa !36
  %122 = load i64, ptr %119, align 8, !tbaa !36
  %123 = sub nsw i64 %121, %122
  %124 = getelementptr inbounds %struct.segment_s, ptr %56, i64 0, i32 4, i32 1
  %125 = load i64, ptr %124, align 8, !tbaa !37
  %126 = getelementptr inbounds %struct.curve_segment, ptr %56, i64 0, i32 6, i32 1
  %127 = load i64, ptr %126, align 8, !tbaa !37
  %128 = sub nsw i64 %125, %127
  %129 = load i32, ptr %41, align 8, !tbaa !38
  %130 = icmp eq i32 %129, 0
  %131 = select i1 %130, i64 %128, i64 %123
  %132 = select i1 %130, i64 %123, i64 %128
  %133 = load i32, ptr %42, align 8, !tbaa !39
  %134 = icmp eq i32 %133, 0
  %135 = sub nsw i64 0, %131
  %136 = select i1 %134, i64 %131, i64 %135
  %137 = call i64 @llvm.abs.i64(i64 %132, i1 true)
  %138 = call i64 @llvm.abs.i64(i64 %131, i1 true)
  %139 = icmp eq i64 %136, 0
  %140 = lshr i64 %138, 4
  %141 = icmp ugt i64 %137, %140
  %142 = select i1 %139, i1 true, i1 %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %110
  %144 = icmp sgt i64 %136, 0
  %145 = select i1 %144, i32 5, i32 3
  br label %158

146:                                              ; preds = %110
  %147 = load i32, ptr %46, align 4, !tbaa !40
  %148 = icmp eq i32 %147, 0
  %149 = sub nsw i64 0, %132
  %150 = select i1 %148, i64 %132, i64 %149
  %151 = icmp slt i64 %150, 0
  %152 = icmp eq i64 %150, 0
  %153 = lshr i64 %137, 4
  %154 = icmp ugt i64 %138, %153
  %155 = select i1 %152, i1 true, i1 %154
  %156 = select i1 %151, i32 40, i32 24
  %157 = select i1 %155, i32 0, i32 %156
  br label %158

158:                                              ; preds = %143, %146
  %159 = phi i32 [ %145, %143 ], [ %157, %146 ]
  %160 = ashr i64 %114, 2
  %161 = ashr i64 %118, 2
  %162 = load i64, ptr %62, align 8, !tbaa !46
  %163 = add nsw i64 %162, %114
  store i64 %163, ptr %62, align 8, !tbaa !46
  %164 = getelementptr inbounds %struct.curve_segment, ptr %56, i64 0, i32 5, i32 1
  %165 = load i64, ptr %164, align 8, !tbaa !48
  %166 = add nsw i64 %165, %118
  store i64 %166, ptr %164, align 8, !tbaa !48
  %167 = add nsw i64 %122, %160
  store i64 %167, ptr %119, align 8, !tbaa !49
  %168 = getelementptr inbounds %struct.curve_segment, ptr %56, i64 0, i32 6, i32 1
  %169 = load i64, ptr %168, align 8, !tbaa !50
  %170 = add nsw i64 %169, %161
  store i64 %170, ptr %168, align 8, !tbaa !50
  %171 = icmp eq i32 %159, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %158
  call fastcc void @apply_hints_at(ptr noundef %0, i32 noundef %159, ptr noundef nonnull %119, ptr noundef nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %120, i64 16, i1 false), !tbaa.struct !32
  %173 = load i64, ptr %4, align 8, !tbaa !36
  %174 = load i64, ptr %120, align 8, !tbaa !42
  %175 = add nsw i64 %174, %173
  store i64 %175, ptr %120, align 8, !tbaa !42
  %176 = load i64, ptr %33, align 8, !tbaa !37
  %177 = getelementptr inbounds %struct.segment_s, ptr %56, i64 0, i32 4, i32 1
  %178 = load i64, ptr %177, align 8, !tbaa !44
  %179 = add nsw i64 %178, %176
  store i64 %179, ptr %177, align 8, !tbaa !44
  br label %247

180:                                              ; preds = %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %120, i64 16, i1 false), !tbaa.struct !32
  br label %247

181:                                              ; preds = %55
  %182 = getelementptr inbounds %struct.segment_s, ptr %56, i64 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %182, ptr noundef nonnull align 8 dereferenceable(16) %38, i64 16, i1 false), !tbaa.struct !32
  br label %183

183:                                              ; preds = %55, %181
  %184 = load i64, ptr %47, align 8, !tbaa !36
  %185 = getelementptr inbounds %struct.segment_s, ptr %56, i64 0, i32 4
  %186 = load i64, ptr %185, align 8, !tbaa !36
  %187 = sub nsw i64 %184, %186
  %188 = call i64 @llvm.abs.i64(i64 %187, i1 true)
  %189 = load i64, ptr %48, align 8, !tbaa !45
  %190 = getelementptr inbounds %struct.segment_s, ptr %56, i64 0, i32 4, i32 1
  %191 = load i64, ptr %190, align 8, !tbaa !44
  %192 = sub nsw i64 %189, %191
  %193 = call i64 @llvm.abs.i64(i64 %192, i1 true)
  %194 = add nuw nsw i64 %193, %188
  %195 = icmp ult i64 %194, 4
  br i1 %195, label %196, label %197

196:                                              ; preds = %183
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %240

197:                                              ; preds = %183
  %198 = sub nsw i64 %186, %184
  %199 = getelementptr inbounds %struct.segment_s, ptr %56, i64 0, i32 4, i32 1
  %200 = load i64, ptr %199, align 8, !tbaa !37
  %201 = load i64, ptr %49, align 8, !tbaa !37
  %202 = sub nsw i64 %200, %201
  %203 = load i32, ptr %50, align 8, !tbaa !38
  %204 = icmp eq i32 %203, 0
  %205 = select i1 %204, i64 %202, i64 %198
  %206 = select i1 %204, i64 %198, i64 %202
  %207 = load i32, ptr %51, align 8, !tbaa !39
  %208 = icmp eq i32 %207, 0
  %209 = sub nsw i64 0, %205
  %210 = select i1 %208, i64 %205, i64 %209
  %211 = call i64 @llvm.abs.i64(i64 %206, i1 true)
  %212 = call i64 @llvm.abs.i64(i64 %205, i1 true)
  %213 = icmp eq i64 %210, 0
  %214 = lshr i64 %212, 4
  %215 = icmp ugt i64 %211, %214
  %216 = select i1 %213, i1 true, i1 %215
  br i1 %216, label %220, label %217

217:                                              ; preds = %197
  %218 = icmp sgt i64 %210, 0
  %219 = select i1 %218, i32 5, i32 3
  br label %232

220:                                              ; preds = %197
  %221 = load i32, ptr %52, align 4, !tbaa !40
  %222 = icmp eq i32 %221, 0
  %223 = sub nsw i64 0, %206
  %224 = select i1 %222, i64 %206, i64 %223
  %225 = icmp slt i64 %224, 0
  %226 = icmp eq i64 %224, 0
  %227 = lshr i64 %211, 4
  %228 = icmp ugt i64 %212, %227
  %229 = select i1 %226, i1 true, i1 %228
  %230 = select i1 %225, i32 40, i32 24
  %231 = select i1 %229, i32 0, i32 %230
  br label %232

232:                                              ; preds = %217, %220
  %233 = phi i32 [ %219, %217 ], [ %231, %220 ]
  %234 = xor i32 %58, -1
  %235 = and i32 %233, %234
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %232
  %238 = getelementptr inbounds %struct.segment_s, ptr %57, i64 0, i32 4
  call fastcc void @apply_hints_at(ptr noundef %0, i32 noundef %235, ptr noundef nonnull %238, ptr noundef nonnull %5)
  br label %240

239:                                              ; preds = %232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %240

240:                                              ; preds = %237, %239, %196
  %241 = phi i32 [ %58, %196 ], [ %233, %237 ], [ %233, %239 ]
  %242 = icmp eq ptr %57, %9
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  store i32 %241, ptr %53, align 8, !tbaa !41
  br label %244

244:                                              ; preds = %243, %240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull align 8 dereferenceable(16) %185, i64 16, i1 false), !tbaa.struct !32
  %245 = icmp eq i32 %241, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %244
  call fastcc void @apply_hints_at(ptr noundef %0, i32 noundef %241, ptr noundef nonnull %185, ptr noundef null)
  br label %247

247:                                              ; preds = %172, %180, %244, %246
  %248 = phi i32 [ %241, %246 ], [ 0, %244 ], [ %159, %180 ], [ %159, %172 ]
  %249 = getelementptr inbounds %struct.segment_s, ptr %57, i64 0, i32 2
  %250 = load i16, ptr %249, align 8, !tbaa !35
  %251 = icmp eq i16 %250, 3
  br i1 %251, label %252, label %269

252:                                              ; preds = %247
  %253 = load i64, ptr %5, align 8, !tbaa !36
  %254 = load i64, ptr %54, align 8, !tbaa !37
  %255 = ashr i64 %253, 2
  %256 = ashr i64 %254, 2
  %257 = getelementptr inbounds %struct.curve_segment, ptr %57, i64 0, i32 5
  %258 = load i64, ptr %257, align 8, !tbaa !46
  %259 = add nsw i64 %258, %255
  store i64 %259, ptr %257, align 8, !tbaa !46
  %260 = getelementptr inbounds %struct.curve_segment, ptr %57, i64 0, i32 5, i32 1
  %261 = load i64, ptr %260, align 8, !tbaa !48
  %262 = add nsw i64 %261, %256
  store i64 %262, ptr %260, align 8, !tbaa !48
  %263 = getelementptr inbounds %struct.curve_segment, ptr %57, i64 0, i32 6
  %264 = load i64, ptr %263, align 8, !tbaa !49
  %265 = add nsw i64 %264, %253
  store i64 %265, ptr %263, align 8, !tbaa !49
  %266 = getelementptr inbounds %struct.curve_segment, ptr %57, i64 0, i32 6, i32 1
  %267 = load i64, ptr %266, align 8, !tbaa !50
  %268 = add nsw i64 %267, %254
  store i64 %268, ptr %266, align 8, !tbaa !50
  br label %269

269:                                              ; preds = %252, %247
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  %270 = getelementptr inbounds %struct.segment_s, ptr %56, i64 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !30
  %272 = icmp eq ptr %271, null
  br i1 %272, label %273, label %55, !llvm.loop !51

273:                                              ; preds = %269, %30
  %274 = phi i32 [ %31, %30 ], [ %248, %269 ]
  %275 = phi ptr [ %32, %30 ], [ %56, %269 ]
  %276 = icmp eq i32 %1, 0
  br i1 %276, label %522, label %277

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.segment_s, ptr %275, i64 0, i32 2
  %279 = load i16, ptr %278, align 8, !tbaa !35
  %280 = icmp eq i16 %279, 2
  br i1 %280, label %297, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.segment_s, ptr %275, i64 0, i32 4
  %283 = load i64, ptr %282, align 8, !tbaa !42
  %284 = getelementptr inbounds %struct.subpath_s, ptr %9, i64 0, i32 4
  %285 = load i64, ptr %284, align 8, !tbaa !53
  %286 = sub nsw i64 %283, %285
  %287 = call i64 @llvm.abs.i64(i64 %286, i1 true)
  %288 = icmp ult i64 %287, 409
  br i1 %288, label %297, label %289

289:                                              ; preds = %281
  %290 = getelementptr inbounds %struct.segment_s, ptr %275, i64 0, i32 4, i32 1
  %291 = load i64, ptr %290, align 8, !tbaa !44
  %292 = getelementptr inbounds %struct.subpath_s, ptr %9, i64 0, i32 4, i32 1
  %293 = load i64, ptr %292, align 8, !tbaa !54
  %294 = sub nsw i64 %291, %293
  %295 = call i64 @llvm.abs.i64(i64 %294, i1 true)
  %296 = icmp ult i64 %295, 409
  br label %297

297:                                              ; preds = %289, %281, %277
  %298 = phi i1 [ true, %281 ], [ true, %277 ], [ %296, %289 ]
  %299 = getelementptr inbounds %struct.subpath_s, ptr %9, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !55
  %301 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 31
  %302 = load i32, ptr %301, align 8, !tbaa !41
  br i1 %298, label %303, label %405

303:                                              ; preds = %297
  %304 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8
  %305 = load i32, ptr %304, align 8, !tbaa !38
  %306 = icmp eq i32 %305, 0
  %307 = select i1 %306, i32 1, i32 8
  %308 = select i1 %306, i32 8, i32 1
  %309 = xor i32 %274, -1
  %310 = and i32 %302, %309
  %311 = and i32 %307, %310
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %319, label %313

313:                                              ; preds = %303
  %314 = getelementptr inbounds %struct.subpath_s, ptr %9, i64 0, i32 4
  %315 = load i64, ptr %314, align 8, !tbaa !53
  %316 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 32
  %317 = load i64, ptr %316, align 8, !tbaa !56
  %318 = sub nsw i64 %315, %317
  br label %319

319:                                              ; preds = %303, %313
  %320 = phi i64 [ %318, %313 ], [ 0, %303 ]
  %321 = and i32 %308, %310
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %329, label %323

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.subpath_s, ptr %9, i64 0, i32 4, i32 1
  %325 = load i64, ptr %324, align 8, !tbaa !54
  %326 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 32, i32 1
  %327 = load i64, ptr %326, align 8, !tbaa !57
  %328 = sub nsw i64 %325, %327
  br label %329

329:                                              ; preds = %319, %323
  %330 = phi i64 [ %328, %323 ], [ 0, %319 ]
  %331 = xor i32 %302, -1
  %332 = and i32 %274, %331
  %333 = and i32 %307, %332
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %341, label %335

335:                                              ; preds = %329
  %336 = getelementptr inbounds %struct.segment_s, ptr %275, i64 0, i32 4
  %337 = load i64, ptr %336, align 8, !tbaa !42
  %338 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 35
  %339 = load i64, ptr %338, align 8, !tbaa !43
  %340 = sub nsw i64 %337, %339
  br label %341

341:                                              ; preds = %329, %335
  %342 = phi i64 [ %340, %335 ], [ 0, %329 ]
  store i64 %342, ptr %4, align 8, !tbaa !36
  %343 = and i32 %308, %332
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %351, label %345

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct.segment_s, ptr %275, i64 0, i32 4, i32 1
  %347 = load i64, ptr %346, align 8, !tbaa !44
  %348 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 35, i32 1
  %349 = load i64, ptr %348, align 8, !tbaa !45
  %350 = sub nsw i64 %347, %349
  br label %351

351:                                              ; preds = %341, %345
  %352 = phi i64 [ %350, %345 ], [ 0, %341 ]
  store i64 %352, ptr %33, align 8, !tbaa !37
  %353 = getelementptr inbounds %struct.segment_s, ptr %275, i64 0, i32 4
  %354 = load i64, ptr %353, align 8, !tbaa !42
  %355 = add nsw i64 %354, %320
  store i64 %355, ptr %353, align 8, !tbaa !42
  %356 = getelementptr inbounds %struct.segment_s, ptr %275, i64 0, i32 4, i32 1
  %357 = load i64, ptr %356, align 8, !tbaa !44
  br label %358

358:                                              ; preds = %396, %351
  %359 = phi i64 [ %391, %396 ], [ %357, %351 ]
  %360 = phi ptr [ %390, %396 ], [ %356, %351 ]
  %361 = phi ptr [ %381, %396 ], [ %275, %351 ]
  %362 = add nsw i64 %359, %330
  store i64 %362, ptr %360, align 8, !tbaa !44
  %363 = getelementptr inbounds %struct.segment_s, ptr %361, i64 0, i32 2
  %364 = load i16, ptr %363, align 8, !tbaa !35
  switch i16 %364, label %398 [
    i16 3, label %365
    i16 1, label %380
    i16 2, label %380
  ]

365:                                              ; preds = %358
  %366 = ashr i64 %320, 2
  %367 = ashr i64 %330, 2
  %368 = getelementptr inbounds %struct.curve_segment, ptr %361, i64 0, i32 5
  %369 = load i64, ptr %368, align 8, !tbaa !46
  %370 = add nsw i64 %369, %366
  store i64 %370, ptr %368, align 8, !tbaa !46
  %371 = getelementptr inbounds %struct.curve_segment, ptr %361, i64 0, i32 5, i32 1
  %372 = load i64, ptr %371, align 8, !tbaa !48
  %373 = add nsw i64 %372, %367
  store i64 %373, ptr %371, align 8, !tbaa !48
  %374 = getelementptr inbounds %struct.curve_segment, ptr %361, i64 0, i32 6
  %375 = load i64, ptr %374, align 8, !tbaa !49
  %376 = add nsw i64 %375, %320
  store i64 %376, ptr %374, align 8, !tbaa !49
  %377 = getelementptr inbounds %struct.curve_segment, ptr %361, i64 0, i32 6, i32 1
  %378 = load i64, ptr %377, align 8, !tbaa !50
  %379 = add nsw i64 %378, %330
  store i64 %379, ptr %377, align 8, !tbaa !50
  br label %398

380:                                              ; preds = %358, %358
  %381 = load ptr, ptr %361, align 8, !tbaa !58
  %382 = getelementptr inbounds %struct.segment_s, ptr %361, i64 0, i32 4
  %383 = load i64, ptr %382, align 8, !tbaa !42
  %384 = getelementptr inbounds %struct.segment_s, ptr %381, i64 0, i32 4
  %385 = load i64, ptr %384, align 8, !tbaa !42
  %386 = sub nsw i64 %383, %385
  %387 = call i64 @llvm.abs.i64(i64 %386, i1 true)
  %388 = getelementptr inbounds %struct.segment_s, ptr %361, i64 0, i32 4, i32 1
  %389 = load i64, ptr %388, align 8, !tbaa !44
  %390 = getelementptr inbounds %struct.segment_s, ptr %381, i64 0, i32 4, i32 1
  %391 = load i64, ptr %390, align 8, !tbaa !44
  %392 = sub nsw i64 %389, %391
  %393 = call i64 @llvm.abs.i64(i64 %392, i1 true)
  %394 = add nuw nsw i64 %393, %387
  %395 = icmp ult i64 %394, 4
  br i1 %395, label %396, label %398

396:                                              ; preds = %380
  %397 = add nsw i64 %385, %320
  store i64 %397, ptr %384, align 8, !tbaa !42
  br label %358, !llvm.loop !59

398:                                              ; preds = %358, %380, %365
  %399 = getelementptr inbounds %struct.subpath_s, ptr %9, i64 0, i32 4
  %400 = load i64, ptr %399, align 8, !tbaa !53
  %401 = add nsw i64 %400, %342
  store i64 %401, ptr %399, align 8, !tbaa !53
  %402 = getelementptr inbounds %struct.subpath_s, ptr %9, i64 0, i32 4, i32 1
  %403 = load i64, ptr %402, align 8, !tbaa !54
  %404 = add nsw i64 %403, %352
  store i64 %404, ptr %402, align 8, !tbaa !54
  br label %501

405:                                              ; preds = %297
  %406 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 35
  %407 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 32
  %408 = load i64, ptr %407, align 8, !tbaa !36
  %409 = load i64, ptr %406, align 8, !tbaa !36
  %410 = sub nsw i64 %408, %409
  %411 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 32, i32 1
  %412 = load i64, ptr %411, align 8, !tbaa !37
  %413 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 35, i32 1
  %414 = load i64, ptr %413, align 8, !tbaa !37
  %415 = sub nsw i64 %412, %414
  %416 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8
  %417 = load i32, ptr %416, align 8, !tbaa !38
  %418 = icmp eq i32 %417, 0
  %419 = select i1 %418, i64 %415, i64 %410
  %420 = select i1 %418, i64 %410, i64 %415
  %421 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 2
  %422 = load i32, ptr %421, align 8, !tbaa !39
  %423 = icmp eq i32 %422, 0
  %424 = sub nsw i64 0, %419
  %425 = select i1 %423, i64 %419, i64 %424
  %426 = call i64 @llvm.abs.i64(i64 %420, i1 true)
  %427 = call i64 @llvm.abs.i64(i64 %419, i1 true)
  %428 = icmp eq i64 %425, 0
  %429 = lshr i64 %427, 4
  %430 = icmp ugt i64 %426, %429
  %431 = select i1 %428, i1 true, i1 %430
  br i1 %431, label %435, label %432

432:                                              ; preds = %405
  %433 = icmp sgt i64 %425, 0
  %434 = select i1 %433, i32 5, i32 3
  br label %448

435:                                              ; preds = %405
  %436 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 1
  %437 = load i32, ptr %436, align 4, !tbaa !40
  %438 = icmp eq i32 %437, 0
  %439 = sub nsw i64 0, %420
  %440 = select i1 %438, i64 %420, i64 %439
  %441 = icmp slt i64 %440, 0
  %442 = icmp eq i64 %440, 0
  %443 = lshr i64 %426, 4
  %444 = icmp ugt i64 %427, %443
  %445 = select i1 %442, i1 true, i1 %444
  %446 = select i1 %441, i32 40, i32 24
  %447 = select i1 %445, i32 0, i32 %446
  br label %448

448:                                              ; preds = %432, %435
  %449 = phi i32 [ %434, %432 ], [ %447, %435 ]
  %450 = or i32 %302, %274
  %451 = xor i32 %450, -1
  %452 = and i32 %449, %451
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %500, label %454

454:                                              ; preds = %448
  %455 = getelementptr inbounds %struct.segment_s, ptr %275, i64 0, i32 4
  call fastcc void @apply_hints_at(ptr noundef %0, i32 noundef %452, ptr noundef nonnull %455, ptr noundef nonnull %4)
  %456 = load i64, ptr %4, align 8
  %457 = load i64, ptr %33, align 8
  br label %458

458:                                              ; preds = %495, %454
  %459 = phi ptr [ %275, %454 ], [ %480, %495 ]
  %460 = getelementptr inbounds %struct.segment_s, ptr %459, i64 0, i32 2
  %461 = load i16, ptr %460, align 8, !tbaa !35
  switch i16 %461, label %498 [
    i16 3, label %462
    i16 1, label %479
    i16 2, label %479
  ]

462:                                              ; preds = %458
  %463 = load i64, ptr %4, align 8, !tbaa !36
  %464 = load i64, ptr %33, align 8, !tbaa !37
  %465 = ashr i64 %463, 2
  %466 = ashr i64 %464, 2
  %467 = getelementptr inbounds %struct.curve_segment, ptr %459, i64 0, i32 5
  %468 = load i64, ptr %467, align 8, !tbaa !46
  %469 = add nsw i64 %468, %465
  store i64 %469, ptr %467, align 8, !tbaa !46
  %470 = getelementptr inbounds %struct.curve_segment, ptr %459, i64 0, i32 5, i32 1
  %471 = load i64, ptr %470, align 8, !tbaa !48
  %472 = add nsw i64 %471, %466
  store i64 %472, ptr %470, align 8, !tbaa !48
  %473 = getelementptr inbounds %struct.curve_segment, ptr %459, i64 0, i32 6
  %474 = load i64, ptr %473, align 8, !tbaa !49
  %475 = add nsw i64 %474, %463
  store i64 %475, ptr %473, align 8, !tbaa !49
  %476 = getelementptr inbounds %struct.curve_segment, ptr %459, i64 0, i32 6, i32 1
  %477 = load i64, ptr %476, align 8, !tbaa !50
  %478 = add nsw i64 %477, %464
  store i64 %478, ptr %476, align 8, !tbaa !50
  br label %498

479:                                              ; preds = %458, %458
  %480 = load ptr, ptr %459, align 8, !tbaa !58
  %481 = getelementptr inbounds %struct.segment_s, ptr %459, i64 0, i32 4
  %482 = load i64, ptr %481, align 8, !tbaa !42
  %483 = getelementptr inbounds %struct.segment_s, ptr %480, i64 0, i32 4
  %484 = load i64, ptr %483, align 8, !tbaa !42
  %485 = sub nsw i64 %482, %484
  %486 = call i64 @llvm.abs.i64(i64 %485, i1 true)
  %487 = getelementptr inbounds %struct.segment_s, ptr %459, i64 0, i32 4, i32 1
  %488 = load i64, ptr %487, align 8, !tbaa !44
  %489 = getelementptr inbounds %struct.segment_s, ptr %480, i64 0, i32 4, i32 1
  %490 = load i64, ptr %489, align 8, !tbaa !44
  %491 = sub nsw i64 %488, %490
  %492 = call i64 @llvm.abs.i64(i64 %491, i1 true)
  %493 = add nuw nsw i64 %492, %486
  %494 = icmp ult i64 %493, 4
  br i1 %494, label %495, label %498

495:                                              ; preds = %479
  %496 = add nsw i64 %456, %484
  store i64 %496, ptr %483, align 8, !tbaa !42
  %497 = add nsw i64 %457, %490
  store i64 %497, ptr %489, align 8, !tbaa !44
  br label %458, !llvm.loop !59

498:                                              ; preds = %458, %479, %462
  %499 = getelementptr inbounds %struct.subpath_s, ptr %9, i64 0, i32 4
  call fastcc void @apply_hints_at(ptr noundef %0, i32 noundef %452, ptr noundef nonnull %499, ptr noundef nonnull %4)
  br label %501

500:                                              ; preds = %448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %501

501:                                              ; preds = %498, %500, %398
  %502 = getelementptr inbounds %struct.segment_s, ptr %300, i64 0, i32 2
  %503 = load i16, ptr %502, align 8, !tbaa !35
  %504 = icmp eq i16 %503, 3
  br i1 %504, label %505, label %522

505:                                              ; preds = %501
  %506 = load i64, ptr %4, align 8, !tbaa !36
  %507 = load i64, ptr %33, align 8, !tbaa !37
  %508 = ashr i64 %506, 2
  %509 = ashr i64 %507, 2
  %510 = getelementptr inbounds %struct.curve_segment, ptr %300, i64 0, i32 5
  %511 = load i64, ptr %510, align 8, !tbaa !46
  %512 = add nsw i64 %511, %506
  store i64 %512, ptr %510, align 8, !tbaa !46
  %513 = getelementptr inbounds %struct.curve_segment, ptr %300, i64 0, i32 5, i32 1
  %514 = load i64, ptr %513, align 8, !tbaa !48
  %515 = add nsw i64 %514, %507
  store i64 %515, ptr %513, align 8, !tbaa !48
  %516 = getelementptr inbounds %struct.curve_segment, ptr %300, i64 0, i32 6
  %517 = load i64, ptr %516, align 8, !tbaa !49
  %518 = add nsw i64 %517, %508
  store i64 %518, ptr %516, align 8, !tbaa !49
  %519 = getelementptr inbounds %struct.curve_segment, ptr %300, i64 0, i32 6, i32 1
  %520 = load i64, ptr %519, align 8, !tbaa !50
  %521 = add nsw i64 %520, %509
  store i64 %521, ptr %519, align 8, !tbaa !50
  br label %522

522:                                              ; preds = %273, %501, %505
  %523 = phi ptr [ null, %505 ], [ null, %501 ], [ %275, %273 ]
  %524 = phi i32 [ 0, %505 ], [ 0, %501 ], [ %274, %273 ]
  store ptr %523, ptr %6, align 8, !tbaa !5
  store i32 %524, ptr %10, align 8, !tbaa !34
  br label %525

525:                                              ; preds = %20, %14, %12, %522
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @apply_hints_at(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef writeonly %3) unnamed_addr #0 {
  %5 = load i64, ptr %2, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !37
  %8 = and i32 %1, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %90, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 37
  %12 = load i32, ptr %11, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 28
  %14 = load i32, ptr %13, align 8, !tbaa !61
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %90, label %17

17:                                               ; preds = %10
  %18 = and i32 %1, 5
  %19 = and i32 %1, 3
  %20 = sub nsw i32 %18, %19
  %21 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8
  %22 = load i32, ptr %21, align 8, !tbaa !38
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, ptr %2, ptr %6
  %25 = load i64, ptr %24, align 8, !tbaa !33
  %26 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 37, i32 3
  %27 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 37, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !62
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.stem_hint, ptr %26, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !63
  %32 = icmp sgt i64 %31, %25
  br i1 %32, label %37, label %33

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.stem_hint, ptr %26, i64 %29, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !65
  %36 = icmp slt i64 %35, %25
  br i1 %36, label %37, label %61

37:                                               ; preds = %33, %17
  %38 = sext i32 %12 to i64
  %39 = shl nsw i64 %38, 5
  %40 = or disjoint i64 %39, 16
  %41 = icmp slt i64 %40, 48
  br i1 %41, label %61, label %42

42:                                               ; preds = %37
  %43 = add nsw i64 %39, -16
  br label %44

44:                                               ; preds = %58, %42
  %45 = phi i64 [ %59, %58 ], [ %43, %42 ]
  %46 = phi i64 [ %45, %58 ], [ %40, %42 ]
  %47 = getelementptr inbounds i8, ptr %11, i64 %45
  %48 = load i64, ptr %47, align 8, !tbaa !63
  %49 = icmp sgt i64 %48, %25
  br i1 %49, label %58, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.stem_hint, ptr %47, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !65
  %53 = icmp slt i64 %52, %25
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = add nuw i64 %46, 137438953424
  %56 = lshr i64 %55, 5
  %57 = trunc i64 %56 to i32
  store i32 %57, ptr %27, align 4, !tbaa !62
  br label %61

58:                                               ; preds = %50, %44
  %59 = add nsw i64 %45, -32
  %60 = icmp slt i64 %45, 48
  br i1 %60, label %61, label %44, !llvm.loop !66

61:                                               ; preds = %58, %54, %37, %33
  %62 = phi ptr [ %47, %54 ], [ %30, %33 ], [ null, %37 ], [ null, %58 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %90, label %64

64:                                               ; preds = %61
  %65 = icmp eq i32 %18, %19
  br i1 %65, label %66, label %73

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.stem_hint, ptr %62, i64 0, i32 2
  %68 = load i64, ptr %67, align 8, !tbaa !67
  %69 = getelementptr inbounds %struct.stem_hint, ptr %62, i64 0, i32 3
  %70 = load i64, ptr %69, align 8, !tbaa !68
  %71 = add nsw i64 %70, %68
  %72 = ashr i64 %71, 1
  br label %87

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !40
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = icmp slt i32 %20, 0
  br i1 %78, label %81, label %84

79:                                               ; preds = %73
  %80 = icmp sgt i32 %20, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %79, %77
  %82 = getelementptr inbounds %struct.stem_hint, ptr %62, i64 0, i32 3
  %83 = load i64, ptr %82, align 8, !tbaa !68
  br label %87

84:                                               ; preds = %79, %77
  %85 = getelementptr inbounds %struct.stem_hint, ptr %62, i64 0, i32 2
  %86 = load i64, ptr %85, align 8, !tbaa !67
  br label %87

87:                                               ; preds = %84, %81, %66
  %88 = phi i64 [ %72, %66 ], [ %83, %81 ], [ %86, %84 ]
  %89 = add nsw i64 %88, %25
  store i64 %89, ptr %24, align 8, !tbaa !33
  br label %90

90:                                               ; preds = %87, %61, %10, %4
  %91 = and i32 %1, 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %173, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 36
  %95 = load i32, ptr %94, align 8, !tbaa !60
  %96 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 28
  %97 = load i32, ptr %96, align 8, !tbaa !61
  %98 = and i32 %97, %95
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %173, label %100

100:                                              ; preds = %93
  %101 = and i32 %1, 24
  %102 = and i32 %1, 40
  %103 = sub nsw i32 %101, %102
  %104 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8
  %105 = load i32, ptr %104, align 8, !tbaa !38
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, ptr %6, ptr %2
  %108 = load i64, ptr %107, align 8, !tbaa !33
  %109 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 36, i32 3
  %110 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 36, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !62
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.stem_hint, ptr %109, i64 %112
  %114 = load i64, ptr %113, align 8, !tbaa !63
  %115 = icmp sgt i64 %114, %108
  br i1 %115, label %120, label %116

116:                                              ; preds = %100
  %117 = getelementptr inbounds %struct.stem_hint, ptr %109, i64 %112, i32 1
  %118 = load i64, ptr %117, align 8, !tbaa !65
  %119 = icmp slt i64 %118, %108
  br i1 %119, label %120, label %144

120:                                              ; preds = %116, %100
  %121 = sext i32 %95 to i64
  %122 = shl nsw i64 %121, 5
  %123 = or disjoint i64 %122, 16
  %124 = icmp slt i64 %123, 48
  br i1 %124, label %144, label %125

125:                                              ; preds = %120
  %126 = add nsw i64 %122, -16
  br label %127

127:                                              ; preds = %141, %125
  %128 = phi i64 [ %142, %141 ], [ %126, %125 ]
  %129 = phi i64 [ %128, %141 ], [ %123, %125 ]
  %130 = getelementptr inbounds i8, ptr %94, i64 %128
  %131 = load i64, ptr %130, align 8, !tbaa !63
  %132 = icmp sgt i64 %131, %108
  br i1 %132, label %141, label %133

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.stem_hint, ptr %130, i64 0, i32 1
  %135 = load i64, ptr %134, align 8, !tbaa !65
  %136 = icmp slt i64 %135, %108
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = add nuw i64 %129, 137438953424
  %139 = lshr i64 %138, 5
  %140 = trunc i64 %139 to i32
  store i32 %140, ptr %110, align 4, !tbaa !62
  br label %144

141:                                              ; preds = %133, %127
  %142 = add nsw i64 %128, -32
  %143 = icmp slt i64 %128, 48
  br i1 %143, label %144, label %127, !llvm.loop !66

144:                                              ; preds = %141, %137, %120, %116
  %145 = phi ptr [ %130, %137 ], [ %113, %116 ], [ null, %120 ], [ null, %141 ]
  %146 = icmp eq ptr %145, null
  br i1 %146, label %173, label %147

147:                                              ; preds = %144
  %148 = icmp eq i32 %101, %102
  br i1 %148, label %149, label %156

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.stem_hint, ptr %145, i64 0, i32 2
  %151 = load i64, ptr %150, align 8, !tbaa !67
  %152 = getelementptr inbounds %struct.stem_hint, ptr %145, i64 0, i32 3
  %153 = load i64, ptr %152, align 8, !tbaa !68
  %154 = add nsw i64 %153, %151
  %155 = ashr i64 %154, 1
  br label %170

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 2
  %158 = load i32, ptr %157, align 8, !tbaa !39
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %156
  %161 = icmp sgt i32 %103, 0
  br i1 %161, label %164, label %167

162:                                              ; preds = %156
  %163 = icmp slt i32 %103, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %162, %160
  %165 = getelementptr inbounds %struct.stem_hint, ptr %145, i64 0, i32 3
  %166 = load i64, ptr %165, align 8, !tbaa !68
  br label %170

167:                                              ; preds = %162, %160
  %168 = getelementptr inbounds %struct.stem_hint, ptr %145, i64 0, i32 2
  %169 = load i64, ptr %168, align 8, !tbaa !67
  br label %170

170:                                              ; preds = %167, %164, %149
  %171 = phi i64 [ %155, %149 ], [ %166, %164 ], [ %169, %167 ]
  %172 = add nsw i64 %171, %108
  store i64 %172, ptr %107, align 8, !tbaa !33
  br label %173

173:                                              ; preds = %170, %144, %93, %90
  %174 = icmp eq ptr %3, null
  br i1 %174, label %181, label %175

175:                                              ; preds = %173
  %176 = load i64, ptr %2, align 8, !tbaa !36
  %177 = sub nsw i64 %176, %5
  store i64 %177, ptr %3, align 8, !tbaa !36
  %178 = load i64, ptr %6, align 8, !tbaa !37
  %179 = sub nsw i64 %178, %7
  %180 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 0, i32 1
  store i64 %179, ptr %180, align 8, !tbaa !37
  br label %181

181:                                              ; preds = %173, %175
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 1936}
!6 = !{!"gs_type1_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !11, i64 32, !14, i64 120, !15, i64 128, !17, i64 176, !19, i64 880, !8, i64 896, !10, i64 1280, !8, i64 1288, !10, i64 1640, !10, i64 1644, !10, i64 1648, !10, i64 1652, !10, i64 1656, !19, i64 1664, !19, i64 1680, !10, i64 1696, !19, i64 1704, !13, i64 1720, !19, i64 1728, !10, i64 1744, !8, i64 1752, !10, i64 1880, !10, i64 1884, !10, i64 1888, !10, i64 1892, !19, i64 1896, !10, i64 1912, !19, i64 1920, !7, i64 1936, !10, i64 1944, !19, i64 1952, !20, i64 1968, !20, i64 5056, !8, i64 8144}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 16, !12, i64 32, !12, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !13, i64 80}
!12 = !{!"", !13, i64 0, !13, i64 8}
!13 = !{!"long", !8, i64 0}
!14 = !{!"float", !8, i64 0}
!15 = !{!"point_scale_s", !16, i64 0, !16, i64 24}
!16 = !{!"pixel_scale_s", !13, i64 0, !13, i64 8, !10, i64 16}
!17 = !{!"font_hints_s", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !15, i64 24, !18, i64 72, !18, i64 184, !13, i64 296, !13, i64 304, !10, i64 312, !10, i64 316, !8, i64 320}
!18 = !{!"", !10, i64 0, !8, i64 8}
!19 = !{!"gs_fixed_point_s", !13, i64 0, !13, i64 8}
!20 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !8, i64 16}
!21 = !{!22, !7, i64 56}
!22 = !{!"gx_path_s", !7, i64 0, !23, i64 8, !7, i64 40, !7, i64 48, !7, i64 56, !10, i64 64, !10, i64 68, !19, i64 72, !24, i64 88, !24, i64 104, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123}
!23 = !{!"gs_fixed_rect_s", !19, i64 0, !19, i64 16}
!24 = !{!"gs_point_s", !25, i64 0, !25, i64 8}
!25 = !{!"double", !8, i64 0}
!26 = !{!27, !8, i64 104}
!27 = !{!"subpath_s", !7, i64 0, !7, i64 8, !28, i64 16, !28, i64 18, !19, i64 24, !7, i64 40, !10, i64 48, !29, i64 56, !8, i64 104}
!28 = !{!"short", !8, i64 0}
!29 = !{!"", !7, i64 0, !7, i64 8, !28, i64 16, !28, i64 18, !19, i64 24, !7, i64 40}
!30 = !{!31, !7, i64 8}
!31 = !{!"segment_s", !7, i64 0, !7, i64 8, !28, i64 16, !28, i64 18, !19, i64 24}
!32 = !{i64 0, i64 8, !33, i64 8, i64 8, !33}
!33 = !{!13, !13, i64 0}
!34 = !{!6, !10, i64 1944}
!35 = !{!31, !28, i64 16}
!36 = !{!19, !13, i64 0}
!37 = !{!19, !13, i64 8}
!38 = !{!6, !10, i64 176}
!39 = !{!6, !10, i64 184}
!40 = !{!6, !10, i64 180}
!41 = !{!6, !10, i64 1912}
!42 = !{!31, !13, i64 24}
!43 = !{!6, !13, i64 1952}
!44 = !{!31, !13, i64 32}
!45 = !{!6, !13, i64 1960}
!46 = !{!47, !13, i64 40}
!47 = !{!"", !7, i64 0, !7, i64 8, !28, i64 16, !28, i64 18, !19, i64 24, !19, i64 40, !19, i64 56}
!48 = !{!47, !13, i64 48}
!49 = !{!47, !13, i64 56}
!50 = !{!47, !13, i64 64}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!27, !13, i64 24}
!54 = !{!27, !13, i64 32}
!55 = !{!27, !7, i64 8}
!56 = !{!6, !13, i64 1920}
!57 = !{!6, !13, i64 1928}
!58 = !{!31, !7, i64 0}
!59 = distinct !{!59, !52}
!60 = !{!20, !10, i64 0}
!61 = !{!6, !10, i64 1888}
!62 = !{!20, !10, i64 4}
!63 = !{!64, !13, i64 0}
!64 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!65 = !{!64, !13, i64 8}
!66 = distinct !{!66, !52}
!67 = !{!64, !13, i64 16}
!68 = !{!64, !13, i64 24}
