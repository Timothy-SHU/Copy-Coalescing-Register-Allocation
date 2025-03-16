; ModuleID = 'gximage3.c'
source_filename = "gximage3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_image_strategies_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gx_image_clue_s = type { %struct.gx_device_color_s, i32 }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct.gs_int_point_s = type { i32, i32 }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gx_image_enum_s = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.gs_matrix_s, %struct.r_, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, i32, i64, i64, i64, ptr, ptr, ptr, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.dd_, i32, i32, %struct.gs_int_point_s, i32, i32, i32, i32, [4 x %struct.sample_map_s], [256 x %struct.gx_image_clue_s] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.r_ = type { i32, i32, i32, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.dd_ = type { %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s }
%struct.gx_dda_fixed_point_s = type { %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s }
%struct.gx_dda_fixed_s = type { %struct._a, %struct._e }
%struct._a = type { i64, i32 }
%struct._e = type { i64, i32, i32 }
%struct.sample_map_s = type { %union.sample_lookup_s, [16 x float], double, i32 }
%union.sample_lookup_s = type { [16 x i32], [192 x i8] }
%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_color_map_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@image_strategies = external local_unnamed_addr global %struct.gx_image_strategies_s, align 8
@gx_dc_procs_pure = external constant %struct.gx_device_color_procs_s, align 8
@gx_dc_procs_ht_binary = external constant %struct.gx_device_color_procs_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @gs_gximage3_init(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store ptr @image_strategy_color, ptr getelementptr inbounds (%struct.gx_image_strategies_s, ptr @image_strategies, i64 0, i32 4), align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @image_strategy_color(ptr nocapture readnone %0) #1 {
  ret ptr @image_render_color
}

; Function Attrs: nounwind uwtable
define internal i32 @image_render_color(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #2 {
  %7 = alloca %struct.gs_client_color_s, align 8
  %8 = alloca %struct.gx_image_clue_s, align 8
  %9 = alloca %struct.gx_image_clue_s, align 8
  %10 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 30
  %13 = load i32, ptr %12, align 8, !tbaa !25
  %14 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 23
  %15 = load i32, ptr %14, align 8, !tbaa !26
  %16 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 15
  %17 = load ptr, ptr %16, align 8, !tbaa !27
  %18 = load ptr, ptr %17, align 8, !tbaa !28
  %19 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %21 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 27
  %22 = load i8, ptr %21, align 1, !tbaa !32
  %23 = tail call ptr @gx_device_cmap_procs(ptr noundef %5) #9
  %24 = getelementptr inbounds %struct.gx_color_map_procs_s, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !33
  %26 = getelementptr inbounds %struct.gx_color_map_procs_s, ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49
  %29 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 1
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %9) #9
  %30 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 3
  %31 = load i8, ptr %30, align 1, !tbaa !36
  %32 = zext i8 %31 to i32
  %33 = mul nsw i32 %32, %2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %1, i64 %34
  %36 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 10
  %37 = load i64, ptr %36, align 8, !tbaa !37
  %38 = tail call i64 @llvm.abs.i64(i64 %37, i1 true)
  %39 = lshr i64 %38, 12
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 9, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !38
  %43 = icmp sgt i32 %42, %40
  br i1 %43, label %44, label %51

44:                                               ; preds = %6
  %45 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 10, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !39
  %47 = tail call i64 @llvm.abs.i64(i64 %46, i1 true)
  %48 = lshr i64 %47, 12
  %49 = trunc i64 %48 to i32
  %50 = icmp sgt i32 %42, %49
  br label %51

51:                                               ; preds = %44, %6
  %52 = phi i1 [ false, %6 ], [ %50, %44 ]
  %53 = zext i32 %3 to i64
  %54 = getelementptr inbounds i8, ptr %35, i64 %53
  %55 = load i8, ptr %0, align 8, !tbaa !40
  %56 = zext i8 %55 to i32
  %57 = mul nuw nsw i32 %56, %32
  %58 = icmp ult i32 %57, 13
  %59 = icmp eq i32 %4, 0
  br i1 %59, label %539, label %60

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40
  %62 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa.struct !41
  %64 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 0, i32 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa.struct !44
  %66 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa.struct !45
  %68 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 0, i32 1, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa.struct !46
  %70 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 0, i32 1, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa.struct !47
  %72 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1
  %73 = load i64, ptr %72, align 8, !tbaa.struct !48
  %74 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1, i32 0, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa.struct !49
  %76 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa.struct !50
  %78 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1, i32 1, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa.struct !51
  %80 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1, i32 1, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa.struct !52
  %82 = load i64, ptr %61, align 8, !tbaa !53
  %83 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 38
  %84 = load i64, ptr %83, align 8, !tbaa !54
  %85 = sub nsw i64 %82, %84
  %86 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 0, i32 1
  %87 = load i64, ptr %86, align 8, !tbaa !55
  %88 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 38, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !56
  %90 = sub nsw i64 %87, %89
  switch i32 %15, label %106 [
    i32 0, label %91
    i32 1, label %94
  ]

91:                                               ; preds = %60
  %92 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 44
  %93 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 45
  br label %97

94:                                               ; preds = %60
  %95 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 46
  %96 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 47
  br label %97

97:                                               ; preds = %94, %91
  %98 = phi ptr [ %93, %91 ], [ %96, %94 ]
  %99 = phi i64 [ %63, %91 ], [ %73, %94 ]
  %100 = phi ptr [ %92, %91 ], [ %95, %94 ]
  %101 = load i32, ptr %100, align 8, !tbaa !43
  %102 = load i32, ptr %98, align 4, !tbaa !43
  %103 = add nsw i64 %99, 2048
  %104 = lshr i64 %103, 12
  %105 = trunc i64 %104 to i32
  br label %106

106:                                              ; preds = %97, %60
  %107 = phi i32 [ undef, %60 ], [ %102, %97 ]
  %108 = phi i32 [ undef, %60 ], [ %101, %97 ]
  %109 = phi i32 [ undef, %60 ], [ %105, %97 ]
  br i1 %58, label %110, label %112

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.gx_device_color_s, ptr %8, i64 0, i32 1
  store i64 -1, ptr %111, align 8, !tbaa !57
  store ptr @gx_dc_procs_pure, ptr %8, align 8, !tbaa !58
  br label %112

112:                                              ; preds = %110, %106
  %113 = phi ptr [ %8, %110 ], [ %28, %106 ]
  %114 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %115 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %116 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %117 = icmp eq i32 %3, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br i1 %117, label %526, label %118

118:                                              ; preds = %112
  %119 = load i8, ptr %35, align 1, !tbaa !57
  %120 = xor i8 %119, -1
  %121 = sub i32 0, %69
  %122 = sub i32 0, %79
  %123 = icmp eq i8 %31, 4
  %124 = icmp eq i8 %22, 0
  %125 = icmp eq i8 %22, 0
  %126 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 3, i32 3
  %127 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 3, i32 1
  %128 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 3, i32 2
  %129 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 3
  %130 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 1
  %131 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 2
  %132 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 1, i32 3
  %133 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 1, i32 1
  %134 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 1, i32 2
  %135 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 2, i32 3
  %136 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 2, i32 1
  %137 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 2, i32 2
  %138 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 28
  br label %139

139:                                              ; preds = %118, %515
  %140 = phi i32 [ %75, %118 ], [ %161, %515 ]
  %141 = phi i64 [ %73, %118 ], [ %164, %515 ]
  %142 = phi i32 [ %65, %118 ], [ %155, %515 ]
  %143 = phi i8 [ 0, %118 ], [ %524, %515 ]
  %144 = phi i8 [ %120, %118 ], [ %523, %515 ]
  %145 = phi i24 [ 0, %118 ], [ %522, %515 ]
  %146 = phi i32 [ %109, %118 ], [ %521, %515 ]
  %147 = phi i64 [ %73, %118 ], [ %520, %515 ]
  %148 = phi i64 [ %63, %118 ], [ %519, %515 ]
  %149 = phi ptr [ %35, %118 ], [ %518, %515 ]
  %150 = phi i64 [ %63, %118 ], [ %158, %515 ]
  %151 = phi ptr [ %29, %118 ], [ %517, %515 ]
  %152 = phi ptr [ %113, %118 ], [ %516, %515 ]
  %153 = icmp ult i32 %142, %69
  %154 = select i1 %153, i32 %71, i32 %121
  %155 = add i32 %154, %142
  %156 = zext i1 %153 to i64
  %157 = add nsw i64 %67, %156
  %158 = add nsw i64 %157, %150
  %159 = icmp ult i32 %140, %79
  %160 = select i1 %159, i32 %81, i32 %122
  %161 = add i32 %160, %140
  %162 = zext i1 %159 to i64
  %163 = add nsw i64 %77, %162
  %164 = add nsw i64 %163, %141
  %165 = load i8, ptr %149, align 1, !tbaa !57
  %166 = getelementptr inbounds i8, ptr %149, i64 1
  %167 = load i8, ptr %166, align 1, !tbaa !57
  %168 = getelementptr inbounds i8, ptr %149, i64 2
  %169 = load i8, ptr %168, align 1, !tbaa !57
  %170 = getelementptr inbounds i8, ptr %149, i64 3
  %171 = zext i8 %165 to i32
  br i1 %123, label %172, label %273

172:                                              ; preds = %139
  %173 = load i8, ptr %170, align 1, !tbaa !57
  %174 = getelementptr inbounds i8, ptr %149, i64 4
  %175 = zext i8 %173 to i32
  %176 = shl nuw i32 %175, 24
  %177 = zext i8 %169 to i32
  %178 = shl nuw nsw i32 %177, 16
  %179 = zext i8 %167 to i32
  %180 = shl nuw nsw i32 %179, 8
  %181 = or disjoint i32 %180, %178
  %182 = or disjoint i32 %181, %176
  %183 = or disjoint i32 %182, %171
  %184 = zext i24 %145 to i32
  %185 = shl nuw i32 %184, 8
  %186 = zext i8 %144 to i32
  %187 = or disjoint i32 %185, %186
  %188 = icmp eq i32 %183, %187
  br i1 %188, label %515, label %189

189:                                              ; preds = %172
  br i1 %52, label %190, label %208

190:                                              ; preds = %189
  %191 = icmp sgt i64 %157, 0
  %192 = select i1 %191, i64 -2049, i64 -2048
  %193 = add nsw i64 %150, %192
  %194 = select i1 %191, i64 -2048, i64 -2049
  %195 = add nsw i64 %158, %194
  %196 = xor i64 %195, %193
  %197 = icmp ult i64 %196, 4096
  br i1 %197, label %198, label %208

198:                                              ; preds = %190
  %199 = icmp sgt i64 %163, 0
  %200 = select i1 %199, i64 -2049, i64 -2048
  %201 = add nsw i64 %141, %200
  %202 = select i1 %199, i64 -2048, i64 -2049
  %203 = add nsw i64 %164, %202
  %204 = xor i64 %203, %201
  %205 = icmp ugt i64 %204, 4095
  %206 = icmp ugt ptr %174, %54
  %207 = select i1 %205, i1 true, i1 %206
  br i1 %207, label %208, label %515

208:                                              ; preds = %198, %190, %189
  br i1 %58, label %209, label %227

209:                                              ; preds = %208
  %210 = shl nuw nsw i32 %179, 2
  %211 = add nuw nsw i32 %210, %171
  %212 = shl nuw nsw i32 %177, 4
  %213 = add nuw nsw i32 %211, %212
  %214 = shl nuw nsw i32 %175, 6
  %215 = add nuw nsw i32 %213, %214
  %216 = and i32 %215, 255
  %217 = zext nneg i32 %216 to i64
  %218 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 %217
  %219 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 %217, i32 1
  %220 = load i32, ptr %219, align 8, !tbaa !64
  %221 = icmp eq i32 %220, %183
  br i1 %221, label %418, label %222

222:                                              ; preds = %209
  %223 = icmp eq ptr %218, %152
  br i1 %223, label %224, label %225

224:                                              ; preds = %222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %9, ptr noundef nonnull align 8 dereferenceable(104) %152, i64 104, i1 false), !tbaa.struct !65
  br label %225

225:                                              ; preds = %224, %222
  %226 = phi ptr [ %9, %224 ], [ %152, %222 ]
  store i32 %183, ptr %219, align 8, !tbaa !64
  br label %227

227:                                              ; preds = %225, %208
  %228 = phi ptr [ %226, %225 ], [ %152, %208 ]
  %229 = phi ptr [ %218, %225 ], [ %151, %208 ]
  br i1 %125, label %255, label %230

230:                                              ; preds = %227
  %231 = shl nuw nsw i32 %171, 7
  %232 = lshr i32 %171, 1
  %233 = or disjoint i32 %231, %232
  %234 = lshr i32 %171, 5
  %235 = sub nsw i32 %233, %234
  %236 = trunc i32 %235 to i16
  %237 = shl nuw nsw i32 %179, 7
  %238 = lshr i32 %179, 1
  %239 = or disjoint i32 %237, %238
  %240 = lshr i32 %179, 5
  %241 = sub nsw i32 %239, %240
  %242 = trunc i32 %241 to i16
  %243 = shl nuw nsw i32 %177, 7
  %244 = lshr i32 %177, 1
  %245 = or disjoint i32 %243, %244
  %246 = lshr i32 %177, 5
  %247 = sub nsw i32 %245, %246
  %248 = trunc i32 %247 to i16
  %249 = shl nuw nsw i32 %175, 7
  %250 = lshr i32 %175, 1
  %251 = or disjoint i32 %249, %250
  %252 = lshr i32 %175, 5
  %253 = sub nsw i32 %251, %252
  %254 = trunc i32 %253 to i16
  call void %27(i16 noundef signext %236, i16 noundef signext %242, i16 noundef signext %248, i16 noundef signext %254, ptr noundef %229, ptr noundef %11, ptr noundef %5, i32 noundef 1) #9
  br label %412

255:                                              ; preds = %227
  %256 = load i32, ptr %126, align 8, !tbaa !69
  switch i32 %256, label %348 [
    i32 0, label %257
    i32 1, label %261
    i32 2, label %266
  ]

257:                                              ; preds = %255
  %258 = uitofp i8 %173 to double
  %259 = fmul double %258, 0x3F70101010101010
  %260 = fptrunc double %259 to float
  br label %346

261:                                              ; preds = %255
  %262 = lshr i32 %175, 4
  %263 = zext nneg i32 %262 to i64
  %264 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 3, i32 1, i64 %263
  %265 = load float, ptr %264, align 4, !tbaa !72
  br label %346

266:                                              ; preds = %255
  %267 = load float, ptr %127, align 8, !tbaa !72
  %268 = fpext float %267 to double
  %269 = uitofp i8 %173 to double
  %270 = load double, ptr %128, align 8, !tbaa !73
  %271 = call double @llvm.fmuladd.f64(double %269, double %270, double %268)
  %272 = fptrunc double %271 to float
  br label %346

273:                                              ; preds = %139
  %274 = zext i8 %143 to i32
  %275 = shl nuw i32 %274, 24
  %276 = zext i8 %169 to i32
  %277 = shl nuw nsw i32 %276, 16
  %278 = or disjoint i32 %277, %275
  %279 = zext i8 %167 to i32
  %280 = shl nuw nsw i32 %279, 8
  %281 = or disjoint i32 %278, %280
  %282 = or disjoint i32 %281, %171
  %283 = zext i24 %145 to i32
  %284 = shl nuw i32 %283, 8
  %285 = zext i8 %144 to i32
  %286 = or disjoint i32 %284, %285
  %287 = icmp eq i32 %282, %286
  br i1 %287, label %515, label %288

288:                                              ; preds = %273
  br i1 %52, label %289, label %307

289:                                              ; preds = %288
  %290 = icmp sgt i64 %157, 0
  %291 = select i1 %290, i64 -2049, i64 -2048
  %292 = add nsw i64 %150, %291
  %293 = select i1 %290, i64 -2048, i64 -2049
  %294 = add nsw i64 %158, %293
  %295 = xor i64 %294, %292
  %296 = icmp ult i64 %295, 4096
  br i1 %296, label %297, label %307

297:                                              ; preds = %289
  %298 = icmp sgt i64 %163, 0
  %299 = select i1 %298, i64 -2049, i64 -2048
  %300 = add nsw i64 %141, %299
  %301 = select i1 %298, i64 -2048, i64 -2049
  %302 = add nsw i64 %164, %301
  %303 = xor i64 %302, %300
  %304 = icmp ugt i64 %303, 4095
  %305 = icmp ugt ptr %170, %54
  %306 = select i1 %304, i1 true, i1 %305
  br i1 %306, label %307, label %515

307:                                              ; preds = %297, %289, %288
  br i1 %58, label %308, label %324

308:                                              ; preds = %307
  %309 = shl nuw nsw i32 %279, 2
  %310 = add nuw nsw i32 %309, %171
  %311 = shl nuw nsw i32 %276, 4
  %312 = add nuw nsw i32 %310, %311
  %313 = and i32 %312, 255
  %314 = zext nneg i32 %313 to i64
  %315 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 %314
  %316 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 %314, i32 1
  %317 = load i32, ptr %316, align 8, !tbaa !64
  %318 = icmp eq i32 %317, %282
  br i1 %318, label %418, label %319

319:                                              ; preds = %308
  %320 = icmp eq ptr %315, %152
  br i1 %320, label %321, label %322

321:                                              ; preds = %319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %9, ptr noundef nonnull align 8 dereferenceable(104) %152, i64 104, i1 false), !tbaa.struct !65
  br label %322

322:                                              ; preds = %321, %319
  %323 = phi ptr [ %9, %321 ], [ %152, %319 ]
  store i32 %282, ptr %316, align 8, !tbaa !64
  br label %324

324:                                              ; preds = %322, %307
  %325 = phi ptr [ %323, %322 ], [ %152, %307 ]
  %326 = phi ptr [ %315, %322 ], [ %151, %307 ]
  br i1 %124, label %348, label %327

327:                                              ; preds = %324
  %328 = shl nuw nsw i32 %171, 7
  %329 = lshr i32 %171, 1
  %330 = or disjoint i32 %328, %329
  %331 = lshr i32 %171, 5
  %332 = sub nsw i32 %330, %331
  %333 = trunc i32 %332 to i16
  %334 = shl nuw nsw i32 %279, 7
  %335 = lshr i32 %279, 1
  %336 = or disjoint i32 %334, %335
  %337 = lshr i32 %279, 5
  %338 = sub nsw i32 %336, %337
  %339 = trunc i32 %338 to i16
  %340 = shl nuw nsw i32 %276, 7
  %341 = lshr i32 %276, 1
  %342 = or disjoint i32 %340, %341
  %343 = lshr i32 %276, 5
  %344 = sub nsw i32 %342, %343
  %345 = trunc i32 %344 to i16
  call void %25(i16 noundef signext %333, i16 noundef signext %339, i16 noundef signext %345, ptr noundef %326, ptr noundef %11, ptr noundef %5, i32 noundef 1) #9
  br label %412

346:                                              ; preds = %257, %261, %266
  %347 = phi float [ %272, %266 ], [ %265, %261 ], [ %260, %257 ]
  store float %347, ptr %114, align 4, !tbaa !72
  br label %348

348:                                              ; preds = %346, %324, %255
  %349 = phi ptr [ %228, %255 ], [ %325, %324 ], [ %228, %346 ]
  %350 = phi ptr [ %229, %255 ], [ %326, %324 ], [ %229, %346 ]
  %351 = phi ptr [ %174, %255 ], [ %170, %324 ], [ %174, %346 ]
  %352 = phi i8 [ %173, %255 ], [ %143, %324 ], [ %173, %346 ]
  %353 = load i32, ptr %129, align 8, !tbaa !69
  switch i32 %353, label %370 [
    i32 0, label %354
    i32 1, label %358
    i32 2, label %363
  ]

354:                                              ; preds = %348
  %355 = uitofp i8 %165 to double
  %356 = fmul double %355, 0x3F70101010101010
  %357 = fptrunc double %356 to float
  store float %357, ptr %7, align 8, !tbaa !72
  br label %370

358:                                              ; preds = %348
  %359 = lshr i8 %165, 4
  %360 = zext nneg i8 %359 to i64
  %361 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 1, i64 %360
  %362 = load float, ptr %361, align 4, !tbaa !72
  store float %362, ptr %7, align 8, !tbaa !72
  br label %370

363:                                              ; preds = %348
  %364 = load float, ptr %130, align 8, !tbaa !72
  %365 = fpext float %364 to double
  %366 = uitofp i8 %165 to double
  %367 = load double, ptr %131, align 8, !tbaa !73
  %368 = call double @llvm.fmuladd.f64(double %366, double %367, double %365)
  %369 = fptrunc double %368 to float
  store float %369, ptr %7, align 8, !tbaa !72
  br label %370

370:                                              ; preds = %363, %348, %358, %354
  %371 = load i32, ptr %132, align 8, !tbaa !69
  switch i32 %371, label %390 [
    i32 0, label %372
    i32 1, label %376
    i32 2, label %381
  ]

372:                                              ; preds = %370
  %373 = uitofp i8 %167 to double
  %374 = fmul double %373, 0x3F70101010101010
  %375 = fptrunc double %374 to float
  br label %388

376:                                              ; preds = %370
  %377 = lshr i8 %167, 4
  %378 = zext nneg i8 %377 to i64
  %379 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 1, i32 1, i64 %378
  %380 = load float, ptr %379, align 4, !tbaa !72
  br label %388

381:                                              ; preds = %370
  %382 = load float, ptr %133, align 8, !tbaa !72
  %383 = fpext float %382 to double
  %384 = uitofp i8 %167 to double
  %385 = load double, ptr %134, align 8, !tbaa !73
  %386 = call double @llvm.fmuladd.f64(double %384, double %385, double %383)
  %387 = fptrunc double %386 to float
  br label %388

388:                                              ; preds = %372, %376, %381
  %389 = phi float [ %387, %381 ], [ %380, %376 ], [ %375, %372 ]
  store float %389, ptr %116, align 4, !tbaa !72
  br label %390

390:                                              ; preds = %388, %370
  %391 = load i32, ptr %135, align 8, !tbaa !69
  switch i32 %391, label %410 [
    i32 0, label %392
    i32 1, label %396
    i32 2, label %401
  ]

392:                                              ; preds = %390
  %393 = uitofp i8 %169 to double
  %394 = fmul double %393, 0x3F70101010101010
  %395 = fptrunc double %394 to float
  br label %408

396:                                              ; preds = %390
  %397 = lshr i8 %169, 4
  %398 = zext nneg i8 %397 to i64
  %399 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 2, i32 1, i64 %398
  %400 = load float, ptr %399, align 4, !tbaa !72
  br label %408

401:                                              ; preds = %390
  %402 = load float, ptr %136, align 8, !tbaa !72
  %403 = fpext float %402 to double
  %404 = uitofp i8 %169 to double
  %405 = load double, ptr %137, align 8, !tbaa !73
  %406 = call double @llvm.fmuladd.f64(double %404, double %405, double %403)
  %407 = fptrunc double %406 to float
  br label %408

408:                                              ; preds = %401, %396, %392
  %409 = phi float [ %395, %392 ], [ %400, %396 ], [ %407, %401 ]
  store float %409, ptr %115, align 8, !tbaa !72
  br label %410

410:                                              ; preds = %408, %390
  %411 = call i32 %20(ptr noundef nonnull %7, ptr noundef nonnull %17, ptr noundef %350, ptr noundef %11, ptr noundef %5, i32 noundef 1) #9
  br label %412

412:                                              ; preds = %410, %327, %230
  %413 = phi ptr [ %228, %230 ], [ %349, %410 ], [ %325, %327 ]
  %414 = phi ptr [ %229, %230 ], [ %350, %410 ], [ %326, %327 ]
  %415 = phi ptr [ %174, %230 ], [ %351, %410 ], [ %170, %327 ]
  %416 = phi i8 [ %173, %230 ], [ %352, %410 ], [ %143, %327 ]
  %417 = icmp eq ptr %413, %414
  br i1 %417, label %457, label %418

418:                                              ; preds = %209, %308, %412
  %419 = phi ptr [ %152, %209 ], [ %413, %412 ], [ %152, %308 ]
  %420 = phi ptr [ %218, %209 ], [ %414, %412 ], [ %315, %308 ]
  %421 = phi ptr [ %174, %209 ], [ %415, %412 ], [ %170, %308 ]
  %422 = phi i8 [ %173, %209 ], [ %416, %412 ], [ %143, %308 ]
  %423 = load ptr, ptr %419, align 8, !tbaa !58
  %424 = icmp eq ptr %423, @gx_dc_procs_pure
  br i1 %424, label %425, label %434

425:                                              ; preds = %418
  %426 = load ptr, ptr %420, align 8, !tbaa !58
  %427 = icmp eq ptr %426, @gx_dc_procs_pure
  br i1 %427, label %428, label %457

428:                                              ; preds = %425
  %429 = getelementptr inbounds %struct.gx_device_color_s, ptr %419, i64 0, i32 1
  %430 = load i64, ptr %429, align 8, !tbaa !57
  %431 = getelementptr inbounds %struct.gx_device_color_s, ptr %420, i64 0, i32 1
  %432 = load i64, ptr %431, align 8, !tbaa !57
  %433 = icmp eq i64 %430, %432
  br i1 %433, label %499, label %457

434:                                              ; preds = %418
  %435 = icmp eq ptr %423, @gx_dc_procs_ht_binary
  br i1 %435, label %436, label %457

436:                                              ; preds = %434
  %437 = load ptr, ptr %420, align 8, !tbaa !58
  %438 = icmp eq ptr %437, @gx_dc_procs_ht_binary
  br i1 %438, label %439, label %457

439:                                              ; preds = %436
  %440 = getelementptr inbounds %struct.gx_device_color_s, ptr %419, i64 0, i32 1, i32 0, i32 1
  %441 = load i64, ptr %440, align 8, !tbaa !57
  %442 = getelementptr inbounds %struct.gx_device_color_s, ptr %420, i64 0, i32 1, i32 0, i32 1
  %443 = load i64, ptr %442, align 8, !tbaa !57
  %444 = icmp eq i64 %441, %443
  br i1 %444, label %445, label %457

445:                                              ; preds = %439
  %446 = getelementptr inbounds %struct.gx_device_color_s, ptr %419, i64 0, i32 1, i32 0, i32 1, i64 1
  %447 = load i64, ptr %446, align 8, !tbaa !57
  %448 = getelementptr inbounds %struct.gx_device_color_s, ptr %420, i64 0, i32 1, i32 0, i32 1, i64 1
  %449 = load i64, ptr %448, align 8, !tbaa !57
  %450 = icmp eq i64 %447, %449
  br i1 %450, label %451, label %457

451:                                              ; preds = %445
  %452 = getelementptr inbounds %struct.gx_device_color_s, ptr %419, i64 0, i32 1, i32 0, i32 2
  %453 = load i32, ptr %452, align 8, !tbaa !57
  %454 = getelementptr inbounds %struct.gx_device_color_s, ptr %420, i64 0, i32 1, i32 0, i32 2
  %455 = load i32, ptr %454, align 8, !tbaa !57
  %456 = icmp eq i32 %453, %455
  br i1 %456, label %499, label %457

457:                                              ; preds = %425, %428, %436, %439, %445, %451, %434, %412
  %458 = phi ptr [ %419, %428 ], [ %419, %425 ], [ %419, %451 ], [ %419, %445 ], [ %419, %439 ], [ %419, %436 ], [ %419, %434 ], [ %413, %412 ]
  %459 = phi ptr [ %420, %428 ], [ %420, %425 ], [ %420, %451 ], [ %420, %445 ], [ %420, %439 ], [ %420, %436 ], [ %420, %434 ], [ %414, %412 ]
  %460 = phi ptr [ %421, %428 ], [ %421, %425 ], [ %421, %451 ], [ %421, %445 ], [ %421, %439 ], [ %421, %436 ], [ %421, %434 ], [ %415, %412 ]
  %461 = phi i8 [ %422, %428 ], [ %422, %425 ], [ %422, %451 ], [ %422, %445 ], [ %422, %439 ], [ %422, %436 ], [ %422, %434 ], [ %416, %412 ]
  switch i32 %15, label %486 [
    i32 0, label %462
    i32 1, label %474
  ]

462:                                              ; preds = %457
  %463 = add nsw i64 %150, 2048
  %464 = lshr i64 %463, 12
  %465 = trunc i64 %464 to i32
  %466 = sub nsw i32 %465, %146
  %467 = icmp slt i32 %466, 0
  %468 = select i1 %467, i32 %465, i32 %146
  %469 = call i32 @llvm.abs.i32(i32 %466, i1 true)
  %470 = load ptr, ptr %458, align 8, !tbaa !58
  %471 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %470, i64 0, i32 1
  %472 = load ptr, ptr %471, align 8, !tbaa !74
  %473 = call i32 %472(ptr noundef nonnull %458, i32 noundef %468, i32 noundef %108, i32 noundef %469, i32 noundef %107, ptr noundef %5, i32 noundef %13, ptr noundef null) #9
  br label %491

474:                                              ; preds = %457
  %475 = add nsw i64 %141, 2048
  %476 = lshr i64 %475, 12
  %477 = trunc i64 %476 to i32
  %478 = sub nsw i32 %477, %146
  %479 = icmp slt i32 %478, 0
  %480 = select i1 %479, i32 %477, i32 %146
  %481 = call i32 @llvm.abs.i32(i32 %478, i1 true)
  %482 = load ptr, ptr %458, align 8, !tbaa !58
  %483 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %482, i64 0, i32 1
  %484 = load ptr, ptr %483, align 8, !tbaa !74
  %485 = call i32 %484(ptr noundef nonnull %458, i32 noundef %108, i32 noundef %480, i32 noundef %107, i32 noundef %481, ptr noundef %5, i32 noundef %13, ptr noundef null) #9
  br label %491

486:                                              ; preds = %457
  %487 = load ptr, ptr %138, align 8, !tbaa !76
  %488 = sub nsw i64 %150, %148
  %489 = sub nsw i64 %141, %147
  %490 = call i32 %487(ptr noundef %5, i64 noundef %148, i64 noundef %147, i64 noundef %488, i64 noundef %489, i64 noundef %85, i64 noundef %90, ptr noundef %458, i32 noundef %13) #9
  br label %491

491:                                              ; preds = %486, %474, %462
  %492 = phi i64 [ %150, %486 ], [ %148, %474 ], [ %150, %462 ]
  %493 = phi i64 [ %141, %486 ], [ %141, %474 ], [ %147, %462 ]
  %494 = phi i32 [ %146, %486 ], [ %477, %474 ], [ %465, %462 ]
  %495 = phi i32 [ %490, %486 ], [ %485, %474 ], [ %473, %462 ]
  %496 = icmp slt i32 %495, 0
  br i1 %496, label %539, label %497

497:                                              ; preds = %491
  %498 = select i1 %58, ptr %459, ptr %458
  br label %499

499:                                              ; preds = %497, %428, %451
  %500 = phi ptr [ %419, %428 ], [ %419, %451 ], [ %459, %497 ]
  %501 = phi ptr [ %420, %428 ], [ %420, %451 ], [ %498, %497 ]
  %502 = phi ptr [ %421, %428 ], [ %421, %451 ], [ %460, %497 ]
  %503 = phi i64 [ %148, %428 ], [ %148, %451 ], [ %492, %497 ]
  %504 = phi i64 [ %147, %428 ], [ %147, %451 ], [ %493, %497 ]
  %505 = phi i32 [ %146, %428 ], [ %146, %451 ], [ %494, %497 ]
  %506 = phi i8 [ %422, %428 ], [ %422, %451 ], [ %461, %497 ]
  %507 = zext i8 %506 to i32
  %508 = shl nuw nsw i32 %507, 16
  %509 = zext i8 %169 to i32
  %510 = shl nuw nsw i32 %509, 8
  %511 = or disjoint i32 %510, %508
  %512 = zext i8 %167 to i32
  %513 = or disjoint i32 %511, %512
  %514 = trunc i32 %513 to i24
  br label %515

515:                                              ; preds = %297, %198, %273, %172, %499
  %516 = phi ptr [ %152, %172 ], [ %500, %499 ], [ %152, %273 ], [ %152, %198 ], [ %152, %297 ]
  %517 = phi ptr [ %151, %172 ], [ %501, %499 ], [ %151, %273 ], [ %151, %198 ], [ %151, %297 ]
  %518 = phi ptr [ %174, %172 ], [ %502, %499 ], [ %170, %273 ], [ %174, %198 ], [ %170, %297 ]
  %519 = phi i64 [ %148, %172 ], [ %503, %499 ], [ %148, %273 ], [ %148, %198 ], [ %148, %297 ]
  %520 = phi i64 [ %147, %172 ], [ %504, %499 ], [ %147, %273 ], [ %147, %198 ], [ %147, %297 ]
  %521 = phi i32 [ %146, %172 ], [ %505, %499 ], [ %146, %273 ], [ %146, %198 ], [ %146, %297 ]
  %522 = phi i24 [ %145, %172 ], [ %514, %499 ], [ %145, %273 ], [ %145, %198 ], [ %145, %297 ]
  %523 = phi i8 [ %144, %172 ], [ %165, %499 ], [ %144, %273 ], [ %144, %198 ], [ %144, %297 ]
  %524 = phi i8 [ %173, %172 ], [ %506, %499 ], [ %143, %273 ], [ %173, %198 ], [ %143, %297 ]
  %525 = icmp ult ptr %518, %54
  br i1 %525, label %139, label %526, !llvm.loop !81

526:                                              ; preds = %515, %112
  %527 = phi ptr [ %113, %112 ], [ %516, %515 ]
  %528 = phi i64 [ %63, %112 ], [ %158, %515 ]
  %529 = phi i64 [ %63, %112 ], [ %519, %515 ]
  %530 = phi i64 [ %73, %112 ], [ %520, %515 ]
  %531 = phi i64 [ %73, %112 ], [ %164, %515 ]
  %532 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 28
  %533 = load ptr, ptr %532, align 8, !tbaa !76
  %534 = sub nsw i64 %528, %529
  %535 = sub nsw i64 %531, %530
  %536 = call i32 %533(ptr noundef %5, i64 noundef %529, i64 noundef %530, i64 noundef %534, i64 noundef %535, i64 noundef %85, i64 noundef %90, ptr noundef %527, i32 noundef %13) #9
  %537 = icmp slt i32 %536, 0
  %538 = select i1 %537, i32 %536, i32 1
  br label %539

539:                                              ; preds = %491, %51, %526
  %540 = phi i32 [ %538, %526 ], [ 0, %51 ], [ %495, %491 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  ret i32 %540
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @gx_device_cmap_procs(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 32}
!6 = !{!"gx_image_strategies_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 96}
!11 = !{!"gx_image_enum_s", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !14, i64 32, !16, i64 48, !16, i64 64, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !15, i64 136, !7, i64 144, !15, i64 152, !15, i64 156, !15, i64 160, !8, i64 164, !8, i64 165, !8, i64 166, !8, i64 167, !18, i64 168, !18, i64 200, !15, i64 232, !17, i64 240, !17, i64 248, !17, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !15, i64 288, !16, i64 296, !16, i64 312, !19, i64 328, !15, i64 456, !15, i64 460, !24, i64 464, !15, i64 472, !15, i64 476, !15, i64 480, !15, i64 484, !8, i64 488, !8, i64 1832}
!12 = !{!"gs_matrix_s", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!13 = !{!"float", !8, i64 0}
!14 = !{!"r_", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!15 = !{!"int", !8, i64 0}
!16 = !{!"gs_fixed_point_s", !17, i64 0, !17, i64 8}
!17 = !{!"long", !8, i64 0}
!18 = !{!"gs_fixed_rect_s", !16, i64 0, !16, i64 16}
!19 = !{!"dd_", !20, i64 0, !20, i64 64}
!20 = !{!"gx_dda_fixed_point_s", !21, i64 0, !21, i64 32}
!21 = !{!"gx_dda_fixed_s", !22, i64 0, !23, i64 16}
!22 = !{!"_a", !17, i64 0, !15, i64 8}
!23 = !{!"_e", !17, i64 0, !15, i64 8, !15, i64 12}
!24 = !{!"gs_int_point_s", !15, i64 0, !15, i64 4}
!25 = !{!11, !15, i64 232}
!26 = !{!11, !15, i64 160}
!27 = !{!11, !7, i64 104}
!28 = !{!29, !7, i64 0}
!29 = !{!"gs_color_space_s", !7, i64 0, !8, i64 8}
!30 = !{!31, !7, i64 48}
!31 = !{!"gs_color_space_type_s", !15, i64 0, !15, i64 4, !15, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88}
!32 = !{!11, !8, i64 167}
!33 = !{!34, !7, i64 8}
!34 = !{!"gx_color_map_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!35 = !{!34, !7, i64 16}
!36 = !{!11, !8, i64 3}
!37 = !{!11, !17, i64 48}
!38 = !{!11, !15, i64 40}
!39 = !{!11, !17, i64 56}
!40 = !{!11, !8, i64 0}
!41 = !{i64 0, i64 8, !42, i64 8, i64 4, !43, i64 16, i64 8, !42, i64 24, i64 4, !43, i64 28, i64 4, !43, i64 32, i64 8, !42, i64 40, i64 4, !43, i64 48, i64 8, !42, i64 56, i64 4, !43, i64 60, i64 4, !43}
!42 = !{!17, !17, i64 0}
!43 = !{!15, !15, i64 0}
!44 = !{i64 0, i64 4, !43, i64 8, i64 8, !42, i64 16, i64 4, !43, i64 20, i64 4, !43, i64 24, i64 8, !42, i64 32, i64 4, !43, i64 40, i64 8, !42, i64 48, i64 4, !43, i64 52, i64 4, !43}
!45 = !{i64 0, i64 8, !42, i64 8, i64 4, !43, i64 12, i64 4, !43, i64 16, i64 8, !42, i64 24, i64 4, !43, i64 32, i64 8, !42, i64 40, i64 4, !43, i64 44, i64 4, !43}
!46 = !{i64 0, i64 4, !43, i64 4, i64 4, !43, i64 8, i64 8, !42, i64 16, i64 4, !43, i64 24, i64 8, !42, i64 32, i64 4, !43, i64 36, i64 4, !43}
!47 = !{i64 0, i64 4, !43, i64 4, i64 8, !42, i64 12, i64 4, !43, i64 20, i64 8, !42, i64 28, i64 4, !43, i64 32, i64 4, !43}
!48 = !{i64 0, i64 8, !42, i64 8, i64 4, !43, i64 16, i64 8, !42, i64 24, i64 4, !43, i64 28, i64 4, !43}
!49 = !{i64 0, i64 4, !43, i64 8, i64 8, !42, i64 16, i64 4, !43, i64 20, i64 4, !43}
!50 = !{i64 0, i64 8, !42, i64 8, i64 4, !43, i64 12, i64 4, !43}
!51 = !{i64 0, i64 4, !43, i64 4, i64 4, !43}
!52 = !{i64 0, i64 4, !43}
!53 = !{!11, !17, i64 328}
!54 = !{!11, !17, i64 296}
!55 = !{!11, !17, i64 360}
!56 = !{!11, !17, i64 304}
!57 = !{!8, !8, i64 0}
!58 = !{!59, !7, i64 0}
!59 = !{!"gx_image_clue_s", !60, i64 0, !15, i64 96}
!60 = !{!"gx_device_color_s", !7, i64 0, !8, i64 8, !24, i64 48, !61, i64 56}
!61 = !{!"_mask", !62, i64 0, !17, i64 24, !7, i64 32}
!62 = !{!"gs_client_color_s", !63, i64 0, !7, i64 16}
!63 = !{!"gs_paint_color_s", !8, i64 0}
!64 = !{!59, !15, i64 96}
!65 = !{i64 0, i64 8, !66, i64 8, i64 8, !42, i64 8, i64 8, !66, i64 16, i64 16, !57, i64 32, i64 4, !43, i64 40, i64 8, !66, i64 8, i64 8, !66, i64 16, i64 4, !57, i64 20, i64 16, !57, i64 36, i64 2, !67, i64 8, i64 8, !66, i64 48, i64 4, !43, i64 52, i64 4, !43, i64 56, i64 16, !57, i64 72, i64 8, !66, i64 80, i64 8, !42, i64 88, i64 8, !66, i64 96, i64 4, !43}
!66 = !{!7, !7, i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"short", !8, i64 0}
!69 = !{!70, !15, i64 328}
!70 = !{!"sample_map_s", !8, i64 0, !8, i64 256, !71, i64 320, !15, i64 328}
!71 = !{!"double", !8, i64 0}
!72 = !{!13, !13, i64 0}
!73 = !{!70, !71, i64 320}
!74 = !{!75, !7, i64 8}
!75 = !{!"gx_device_color_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!76 = !{!77, !7, i64 416}
!77 = !{!"gx_device_s", !15, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !15, i64 40, !15, i64 44, !78, i64 48, !15, i64 64, !15, i64 68, !8, i64 72, !8, i64 80, !15, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !17, i64 144, !17, i64 152, !15, i64 160, !79, i64 168, !80, i64 192}
!78 = !{!"gx_device_color_info_s", !15, i64 0, !15, i64 4, !68, i64 8, !68, i64 10, !68, i64 12, !68, i64 14}
!79 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!80 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.unroll.disable"}
