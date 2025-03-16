; ModuleID = 'gxclrect.c'
source_filename = "gxclrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.clist_select_color_t = type { i8, i8, i32 }
%struct.gx_clist_state_s = type { [2 x i64], i32, i64, %struct.gs_int_point_s, [2 x i64], %struct.gx_cmd_rect, i32, i16, i16, i16, i16, %struct.cmd_list_s, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_cmd_rect = type { i32, i32, i32, i32 }
%struct.cmd_list_s = type { ptr, ptr }
%struct.gx_device_clist_writer_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, ptr, i32, %struct.gx_band_params_s, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, ptr, i32, i32, %struct.gx_band_page_info_s, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.cmd_list_s, i32, i32, i32, i32, %struct.gx_strip_bitmap_s, i32, i32, i32, %struct.gs_imager_state_s, [11 x float], ptr, i64, i8, %struct.gs_indexed_params_s, [4 x i64], i64, i64, i64, i32 }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.gx_bits_cache_chunk_s = type { ptr, ptr, i32, i32 }
%struct.gx_bits_cache_s = type { ptr, i32, i32, i32 }
%struct.gx_band_page_info_s = type { [60 x i8], ptr, [60 x i8], ptr, i32, i64, %struct.gx_band_params_s }
%struct.gx_strip_bitmap_s = type { ptr, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16 }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_indexed_params_s = type { %struct.gs_base_color_space_s, i32, %union.anon.0, i32 }
%struct.gs_base_color_space_s = type { ptr, %union.anon }
%union.anon = type { ptr }
%union.anon.0 = type { %struct.gs_const_string_s }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.tile_hash = type { i64 }
%struct.tile_slot = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, i8, i8, i16, i16, i16 }
%struct.gx_cached_bits_head_s = type { i32, i32 }

@clist_select_color1 = external constant %struct.clist_select_color_t, align 4
@clist_select_color0 = external constant %struct.clist_select_color_t, align 4

; Function Attrs: nounwind uwtable
define dso_local i32 @cmd_write_rect_cmd(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !5
  %10 = sub nsw i32 %3, %9
  %11 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 5, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !16
  %13 = sub nsw i32 %4, %12
  %14 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 5, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !17
  %16 = sub nsw i32 %5, %15
  %17 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 5, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !18
  %19 = sub nsw i32 %6, %18
  store i32 %3, ptr %8, align 8, !tbaa !5
  store i32 %4, ptr %11, align 4, !tbaa !16
  store i32 %5, ptr %14, align 8, !tbaa !17
  store i32 %6, ptr %17, align 4, !tbaa !18
  %20 = icmp eq i32 %18, %6
  %21 = add nsw i32 %16, 4
  %22 = icmp ult i32 %21, 8
  %23 = select i1 %20, i1 %22, i1 false
  %24 = add nsw i32 %10, 8
  %25 = icmp ult i32 %24, 16
  %26 = select i1 %23, i1 %25, i1 false
  %27 = add nsw i32 %13, 8
  %28 = icmp ult i32 %27, 16
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %62

30:                                               ; preds = %7
  %31 = add nsw i32 %2, 32
  %32 = add nsw i32 %31, %16
  %33 = trunc i32 %32 to i8
  %34 = add i8 %33, 4
  %35 = icmp eq i32 %10, %15
  %36 = icmp eq i32 %12, %4
  %37 = select i1 %35, i1 %36, i1 false
  %38 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  br i1 %37, label %39, label %47

39:                                               ; preds = %30
  %40 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %38, i32 noundef 1) #5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %44 = load i32, ptr %43, align 4, !tbaa !19
  br label %59

45:                                               ; preds = %39
  %46 = add i8 %33, 12
  store i8 %46, ptr %40, align 1, !tbaa !37
  br label %59

47:                                               ; preds = %30
  %48 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %38, i32 noundef 2) #5
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %52 = load i32, ptr %51, align 4, !tbaa !19
  br label %59

53:                                               ; preds = %47
  store i8 %34, ptr %48, align 1, !tbaa !37
  %54 = shl i32 %10, 4
  %55 = add nsw i32 %54, %13
  %56 = trunc i32 %55 to i8
  %57 = add i8 %56, -120
  %58 = getelementptr inbounds i8, ptr %48, i64 1
  store i8 %57, ptr %58, align 1, !tbaa !37
  br label %59

59:                                               ; preds = %45, %53, %50, %42
  %60 = phi i1 [ false, %42 ], [ false, %50 ], [ true, %53 ], [ true, %45 ]
  %61 = phi i32 [ %44, %42 ], [ %52, %50 ], [ undef, %53 ], [ undef, %45 ]
  br i1 %60, label %286, label %287

62:                                               ; preds = %7
  %63 = add nsw i32 %10, 128
  %64 = icmp ult i32 %63, 256
  br i1 %64, label %65, label %113

65:                                               ; preds = %62
  %66 = add nsw i32 %13, 128
  %67 = icmp ult i32 %66, 256
  br i1 %67, label %68, label %113

68:                                               ; preds = %65
  %69 = add nsw i32 %16, 128
  %70 = icmp ult i32 %69, 256
  br i1 %70, label %71, label %113

71:                                               ; preds = %68
  %72 = add nsw i32 %19, 128
  %73 = icmp ult i32 %72, 256
  br i1 %73, label %74, label %113

74:                                               ; preds = %71
  %75 = add i32 %19, 7
  %76 = icmp ult i32 %75, 15
  %77 = icmp eq i32 %12, %4
  %78 = select i1 %76, i1 %77, i1 false
  %79 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  br i1 %78, label %80, label %91

80:                                               ; preds = %74
  %81 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %79, i32 noundef 3) #5
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %85 = load i32, ptr %84, align 4, !tbaa !19
  br label %110

86:                                               ; preds = %80
  %87 = add i32 %2, 8
  %88 = add i32 %87, %19
  %89 = trunc i32 %88 to i8
  %90 = add i8 %89, 16
  store i8 %90, ptr %81, align 1, !tbaa !37
  br label %104

91:                                               ; preds = %74
  %92 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %79, i32 noundef 5) #5
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %96 = load i32, ptr %95, align 4, !tbaa !19
  br label %110

97:                                               ; preds = %91
  %98 = trunc i32 %2 to i8
  %99 = add i8 %98, 16
  store i8 %99, ptr %92, align 1, !tbaa !37
  %100 = trunc i32 %66 to i8
  %101 = getelementptr inbounds i8, ptr %92, i64 3
  store i8 %100, ptr %101, align 1, !tbaa !37
  %102 = trunc i32 %72 to i8
  %103 = getelementptr inbounds i8, ptr %92, i64 4
  store i8 %102, ptr %103, align 1, !tbaa !37
  br label %104

104:                                              ; preds = %97, %86
  %105 = phi ptr [ %81, %86 ], [ %92, %97 ]
  %106 = trunc i32 %63 to i8
  %107 = getelementptr inbounds i8, ptr %105, i64 1
  store i8 %106, ptr %107, align 1, !tbaa !37
  %108 = trunc i32 %69 to i8
  %109 = getelementptr inbounds i8, ptr %105, i64 2
  store i8 %108, ptr %109, align 1, !tbaa !37
  br label %110

110:                                              ; preds = %104, %94, %83
  %111 = phi i1 [ false, %83 ], [ true, %104 ], [ false, %94 ]
  %112 = phi i32 [ %85, %83 ], [ undef, %104 ], [ %96, %94 ]
  br i1 %111, label %286, label %287

113:                                              ; preds = %71, %68, %65, %62
  %114 = add i32 %13, -2
  %115 = icmp ult i32 %114, -4
  %116 = icmp slt i32 %19, -2
  %117 = select i1 %115, i1 true, i1 %116
  %118 = icmp sgt i32 %19, 1
  %119 = select i1 %117, i1 true, i1 %118
  %120 = add nsw i32 %19, %13
  %121 = icmp eq i32 %120, -4
  %122 = select i1 %119, i1 true, i1 %121
  %123 = icmp ult i32 %3, 128
  br i1 %122, label %165, label %124

124:                                              ; preds = %113
  br i1 %123, label %130, label %125

125:                                              ; preds = %124
  %126 = icmp ult i32 %3, 16384
  br i1 %126, label %130, label %127

127:                                              ; preds = %125
  %128 = tail call i32 @cmd_size_w(i32 noundef %3) #5
  %129 = add nsw i32 %128, 1
  br label %130

130:                                              ; preds = %127, %125, %124
  %131 = phi i32 [ 2, %124 ], [ %129, %127 ], [ 3, %125 ]
  %132 = icmp ult i32 %5, 128
  br i1 %132, label %137, label %133

133:                                              ; preds = %130
  %134 = icmp ult i32 %5, 16384
  br i1 %134, label %137, label %135

135:                                              ; preds = %133
  %136 = tail call i32 @cmd_size_w(i32 noundef %5) #5
  br label %137

137:                                              ; preds = %135, %133, %130
  %138 = phi i32 [ 1, %130 ], [ %136, %135 ], [ 2, %133 ]
  %139 = add nsw i32 %138, %131
  %140 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %141 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %140, i32 noundef %139) #5
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %145 = load i32, ptr %144, align 4, !tbaa !19
  br label %163

146:                                              ; preds = %137
  %147 = shl i32 %13, 2
  %148 = add i32 %2, 8
  %149 = add i32 %148, %147
  %150 = add nsw i32 %149, %19
  %151 = trunc i32 %150 to i8
  %152 = add i8 %151, 2
  store i8 %152, ptr %141, align 1, !tbaa !37
  %153 = getelementptr inbounds i8, ptr %141, i64 1
  %154 = or i32 %5, %3
  %155 = icmp ult i32 %154, 128
  br i1 %155, label %156, label %160

156:                                              ; preds = %146
  %157 = trunc i32 %3 to i8
  store i8 %157, ptr %153, align 1, !tbaa !37
  %158 = trunc i32 %5 to i8
  %159 = getelementptr inbounds i8, ptr %141, i64 2
  store i8 %158, ptr %159, align 1, !tbaa !37
  br label %163

160:                                              ; preds = %146
  %161 = tail call ptr @cmd_put_w(i32 noundef %3, ptr noundef nonnull %153) #5
  %162 = tail call ptr @cmd_put_w(i32 noundef %5, ptr noundef %161) #5
  br label %163

163:                                              ; preds = %156, %160, %143
  %164 = phi i32 [ %145, %143 ], [ undef, %160 ], [ undef, %156 ]
  br i1 %142, label %287, label %286

165:                                              ; preds = %113
  br i1 %123, label %170, label %166

166:                                              ; preds = %165
  %167 = icmp ult i32 %3, 16384
  br i1 %167, label %170, label %168

168:                                              ; preds = %166
  %169 = tail call i32 @cmd_size_w(i32 noundef %3) #5
  br label %170

170:                                              ; preds = %168, %166, %165
  %171 = phi i32 [ 1, %165 ], [ %169, %168 ], [ 2, %166 ]
  %172 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 5, i32 1
  %173 = load i32, ptr %172, align 4, !tbaa !38
  %174 = icmp ult i32 %173, 128
  br i1 %174, label %179, label %175

175:                                              ; preds = %170
  %176 = icmp ult i32 %173, 16384
  br i1 %176, label %179, label %177

177:                                              ; preds = %175
  %178 = tail call i32 @cmd_size_w(i32 noundef %173) #5
  br label %179

179:                                              ; preds = %177, %175, %170
  %180 = phi i32 [ 1, %170 ], [ %178, %177 ], [ 2, %175 ]
  %181 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 5, i32 2
  %182 = load i32, ptr %181, align 4, !tbaa !39
  %183 = icmp ult i32 %182, 128
  br i1 %183, label %188, label %184

184:                                              ; preds = %179
  %185 = icmp ult i32 %182, 16384
  br i1 %185, label %188, label %186

186:                                              ; preds = %184
  %187 = tail call i32 @cmd_size_w(i32 noundef %182) #5
  br label %188

188:                                              ; preds = %186, %184, %179
  %189 = phi i32 [ 1, %179 ], [ %187, %186 ], [ 2, %184 ]
  %190 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 5, i32 3
  %191 = load i32, ptr %190, align 4, !tbaa !40
  %192 = icmp ult i32 %191, 128
  br i1 %192, label %197, label %193

193:                                              ; preds = %188
  %194 = icmp ult i32 %191, 16384
  br i1 %194, label %197, label %195

195:                                              ; preds = %193
  %196 = tail call i32 @cmd_size_w(i32 noundef %191) #5
  br label %197

197:                                              ; preds = %188, %193, %195
  %198 = phi i32 [ 1, %188 ], [ %196, %195 ], [ 2, %193 ]
  %199 = add i32 %171, 1
  %200 = add i32 %199, %180
  %201 = add i32 %200, %189
  %202 = add i32 %201, %198
  %203 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %204 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %203, i32 noundef %202) #5
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %197
  %207 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %208 = load i32, ptr %207, align 4, !tbaa !19
  br label %284

209:                                              ; preds = %197
  %210 = trunc i32 %2 to i8
  store i8 %210, ptr %204, align 1, !tbaa !37
  %211 = getelementptr inbounds i8, ptr %204, i64 1
  %212 = load i32, ptr %8, align 4, !tbaa !41
  %213 = icmp ult i32 %212, 128
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = trunc i32 %212 to i8
  store i8 %215, ptr %211, align 1, !tbaa !37
  %216 = getelementptr inbounds i8, ptr %204, i64 2
  br label %229

217:                                              ; preds = %209
  %218 = icmp ult i32 %212, 16384
  br i1 %218, label %219, label %227

219:                                              ; preds = %217
  %220 = trunc i32 %212 to i8
  %221 = or i8 %220, -128
  store i8 %221, ptr %211, align 1, !tbaa !37
  %222 = load i32, ptr %8, align 4, !tbaa !41
  %223 = lshr i32 %222, 7
  %224 = trunc i32 %223 to i8
  %225 = getelementptr inbounds i8, ptr %204, i64 2
  store i8 %224, ptr %225, align 1, !tbaa !37
  %226 = getelementptr inbounds i8, ptr %204, i64 3
  br label %229

227:                                              ; preds = %217
  %228 = tail call ptr @cmd_put_w(i32 noundef %212, ptr noundef nonnull %211) #5
  br label %229

229:                                              ; preds = %227, %219, %214
  %230 = phi ptr [ %228, %227 ], [ %226, %219 ], [ %216, %214 ]
  %231 = load i32, ptr %172, align 4, !tbaa !38
  %232 = icmp ult i32 %231, 128
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = trunc i32 %231 to i8
  store i8 %234, ptr %230, align 1, !tbaa !37
  %235 = getelementptr inbounds i8, ptr %230, i64 1
  br label %248

236:                                              ; preds = %229
  %237 = icmp ult i32 %231, 16384
  br i1 %237, label %238, label %246

238:                                              ; preds = %236
  %239 = trunc i32 %231 to i8
  %240 = or i8 %239, -128
  store i8 %240, ptr %230, align 1, !tbaa !37
  %241 = load i32, ptr %172, align 4, !tbaa !38
  %242 = lshr i32 %241, 7
  %243 = trunc i32 %242 to i8
  %244 = getelementptr inbounds i8, ptr %230, i64 1
  store i8 %243, ptr %244, align 1, !tbaa !37
  %245 = getelementptr inbounds i8, ptr %230, i64 2
  br label %248

246:                                              ; preds = %236
  %247 = tail call ptr @cmd_put_w(i32 noundef %231, ptr noundef %230) #5
  br label %248

248:                                              ; preds = %246, %238, %233
  %249 = phi ptr [ %247, %246 ], [ %245, %238 ], [ %235, %233 ]
  %250 = load i32, ptr %181, align 4, !tbaa !39
  %251 = icmp ult i32 %250, 128
  br i1 %251, label %252, label %255

252:                                              ; preds = %248
  %253 = trunc i32 %250 to i8
  store i8 %253, ptr %249, align 1, !tbaa !37
  %254 = getelementptr inbounds i8, ptr %249, i64 1
  br label %267

255:                                              ; preds = %248
  %256 = icmp ult i32 %250, 16384
  br i1 %256, label %257, label %265

257:                                              ; preds = %255
  %258 = trunc i32 %250 to i8
  %259 = or i8 %258, -128
  store i8 %259, ptr %249, align 1, !tbaa !37
  %260 = load i32, ptr %181, align 4, !tbaa !39
  %261 = lshr i32 %260, 7
  %262 = trunc i32 %261 to i8
  %263 = getelementptr inbounds i8, ptr %249, i64 1
  store i8 %262, ptr %263, align 1, !tbaa !37
  %264 = getelementptr inbounds i8, ptr %249, i64 2
  br label %267

265:                                              ; preds = %255
  %266 = tail call ptr @cmd_put_w(i32 noundef %250, ptr noundef %249) #5
  br label %267

267:                                              ; preds = %265, %257, %252
  %268 = phi ptr [ %266, %265 ], [ %264, %257 ], [ %254, %252 ]
  %269 = load i32, ptr %190, align 4, !tbaa !40
  %270 = icmp ult i32 %269, 128
  br i1 %270, label %271, label %273

271:                                              ; preds = %267
  %272 = trunc i32 %269 to i8
  store i8 %272, ptr %268, align 1, !tbaa !37
  br label %284

273:                                              ; preds = %267
  %274 = icmp ult i32 %269, 16384
  br i1 %274, label %275, label %282

275:                                              ; preds = %273
  %276 = trunc i32 %269 to i8
  %277 = or i8 %276, -128
  store i8 %277, ptr %268, align 1, !tbaa !37
  %278 = load i32, ptr %190, align 4, !tbaa !40
  %279 = lshr i32 %278, 7
  %280 = trunc i32 %279 to i8
  %281 = getelementptr inbounds i8, ptr %268, i64 1
  store i8 %280, ptr %281, align 1, !tbaa !37
  br label %284

282:                                              ; preds = %273
  %283 = tail call ptr @cmd_put_w(i32 noundef %269, ptr noundef %268) #5
  br label %284

284:                                              ; preds = %282, %275, %271, %206
  %285 = phi i32 [ %208, %206 ], [ undef, %271 ], [ undef, %275 ], [ undef, %282 ]
  br i1 %205, label %287, label %286

286:                                              ; preds = %110, %284, %163, %59
  br label %287

287:                                              ; preds = %59, %110, %163, %284, %286
  %288 = phi i32 [ 0, %286 ], [ %61, %59 ], [ %112, %110 ], [ %164, %163 ], [ %285, %284 ]
  ret i32 %288
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @cmd_put_list_op(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @cmd_size_w(i32 noundef) local_unnamed_addr #2

declare ptr @cmd_put_w(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @clist_fill_rectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = or i32 %2, %1
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.smin.i32(i32 %1, i32 0)
  %11 = add nsw i32 %10, %3
  %12 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %13 = tail call i32 @llvm.smin.i32(i32 %2, i32 0)
  %14 = add nsw i32 %13, %4
  %15 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  br label %16

16:                                               ; preds = %9, %6
  %17 = phi i32 [ %4, %6 ], [ %14, %9 ]
  %18 = phi i32 [ %3, %6 ], [ %11, %9 ]
  %19 = phi i32 [ %2, %6 ], [ %15, %9 ]
  %20 = phi i32 [ %1, %6 ], [ %12, %9 ]
  %21 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %22 = load i32, ptr %21, align 8, !tbaa !42
  %23 = sub nsw i32 %22, %18
  %24 = icmp sgt i32 %20, %23
  %25 = sub nsw i32 %22, %20
  %26 = select i1 %24, i32 %25, i32 %18
  %27 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !44
  %29 = sub nsw i32 %28, %17
  %30 = icmp sgt i32 %19, %29
  %31 = sub nsw i32 %28, %19
  %32 = select i1 %30, i32 %31, i32 %17
  %33 = icmp slt i32 %26, 1
  %34 = icmp slt i32 %32, 1
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %83, label %36

36:                                               ; preds = %16
  %37 = add nsw i32 %32, %19
  %38 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 6, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !37
  %40 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %41 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  br label %42

42:                                               ; preds = %76, %36
  %43 = phi i32 [ %19, %36 ], [ %52, %76 ]
  %44 = phi i32 [ undef, %36 ], [ %78, %76 ]
  %45 = sdiv i32 %43, %39
  %46 = load ptr, ptr %40, align 8, !tbaa !37
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds %struct.gx_clist_state_s, ptr %46, i64 %47
  %49 = add nsw i32 %45, 1
  %50 = mul nsw i32 %49, %39
  %51 = icmp sge i32 %50, %37
  %52 = tail call i32 @llvm.smin.i32(i32 %50, i32 %37)
  %53 = sub nsw i32 %52, %43
  %54 = getelementptr inbounds %struct.gx_clist_state_s, ptr %46, i64 %47, i32 7
  %55 = load i16, ptr %54, align 4, !tbaa !45
  %56 = icmp eq i16 %55, 1
  br i1 %56, label %57, label %62

57:                                               ; preds = %42
  %58 = tail call i32 @cmd_put_enable_lop(ptr noundef %0, ptr noundef %48, i32 noundef 0) #5
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, ptr %41, align 4, !tbaa !37
  br label %76

62:                                               ; preds = %57, %42
  %63 = getelementptr inbounds [2 x i64], ptr %48, i64 0, i64 1
  %64 = load i64, ptr %63, align 8, !tbaa !46
  %65 = icmp eq i64 %64, %5
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = tail call i32 @cmd_put_color(ptr noundef %0, ptr noundef %48, ptr noundef nonnull @clist_select_color1, i64 noundef %5, ptr noundef nonnull %63) #5
  %68 = icmp sgt i32 %67, -1
  %69 = select i1 %68, i32 %44, i32 %67
  br i1 %68, label %70, label %76

70:                                               ; preds = %66, %62
  %71 = phi i32 [ %69, %66 ], [ %44, %62 ]
  %72 = tail call i32 @cmd_write_rect_cmd(ptr noundef %0, ptr noundef %48, i32 noundef 48, i32 noundef %20, i32 noundef %43, i32 noundef %26, i32 noundef %53)
  %73 = icmp slt i32 %72, 0
  %74 = lshr i32 %72, 31
  %75 = select i1 %73, i32 %72, i32 %71
  br label %76

76:                                               ; preds = %70, %66, %60
  %77 = phi i32 [ 1, %60 ], [ %74, %70 ], [ 1, %66 ]
  %78 = phi i32 [ %61, %60 ], [ %75, %70 ], [ %69, %66 ]
  %79 = icmp ne i32 %77, 0
  %80 = select i1 %79, i1 true, i1 %51
  br i1 %80, label %81, label %42

81:                                               ; preds = %76
  %82 = select i1 %79, i32 %78, i32 0
  br label %83

83:                                               ; preds = %81, %16
  %84 = phi i32 [ 0, %16 ], [ %82, %81 ]
  ret i32 %84
}

declare i32 @cmd_put_enable_lop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cmd_put_color(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @clist_strip_tile_rectangle(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = and i64 %7, %6
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !47
  br label %16

16:                                               ; preds = %10, %13
  %17 = phi i32 [ %15, %13 ], [ 1, %10 ]
  %18 = or i32 %3, %2
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = tail call i32 @llvm.smin.i32(i32 %2, i32 0)
  %22 = add nsw i32 %21, %4
  %23 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %24 = tail call i32 @llvm.smin.i32(i32 %3, i32 0)
  %25 = add nsw i32 %24, %5
  %26 = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i32 [ %5, %16 ], [ %25, %20 ]
  %29 = phi i32 [ %4, %16 ], [ %22, %20 ]
  %30 = phi i32 [ %3, %16 ], [ %26, %20 ]
  %31 = phi i32 [ %2, %16 ], [ %23, %20 ]
  %32 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %33 = load i32, ptr %32, align 8, !tbaa !42
  %34 = sub nsw i32 %33, %29
  %35 = icmp sgt i32 %31, %34
  %36 = sub nsw i32 %33, %31
  %37 = select i1 %35, i32 %36, i32 %29
  %38 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %39 = load i32, ptr %38, align 4, !tbaa !44
  %40 = sub nsw i32 %39, %28
  %41 = icmp sgt i32 %30, %40
  %42 = sub nsw i32 %39, %30
  %43 = select i1 %41, i32 %42, i32 %28
  %44 = icmp slt i32 %37, 1
  %45 = icmp slt i32 %43, 1
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %142, label %47

47:                                               ; preds = %27
  %48 = add nsw i32 %43, %30
  %49 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 6, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !37
  %51 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %52 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 3
  %53 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 31
  %54 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 24
  %55 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  br label %56

56:                                               ; preds = %136, %47
  %57 = phi i32 [ %30, %47 ], [ %66, %136 ]
  %58 = phi i32 [ undef, %47 ], [ %138, %136 ]
  %59 = sdiv i32 %57, %50
  %60 = load ptr, ptr %51, align 8, !tbaa !37
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds %struct.gx_clist_state_s, ptr %60, i64 %61
  %63 = add nsw i32 %59, 1
  %64 = mul nsw i32 %63, %50
  %65 = icmp slt i32 %64, %48
  %66 = tail call i32 @llvm.smin.i32(i32 %64, i32 %48)
  %67 = sub nsw i32 %66, %57
  %68 = getelementptr inbounds %struct.gx_clist_state_s, ptr %60, i64 %61, i32 7
  %69 = load i16, ptr %68, align 4, !tbaa !45
  %70 = icmp eq i16 %69, 1
  br i1 %70, label %71, label %76

71:                                               ; preds = %56
  %72 = tail call i32 @cmd_put_enable_lop(ptr noundef %0, ptr noundef %62, i32 noundef 0) #5
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, ptr %55, align 4, !tbaa !37
  br label %136

76:                                               ; preds = %71, %56
  %77 = getelementptr inbounds %struct.gx_clist_state_s, ptr %60, i64 %61, i32 2
  %78 = load i64, ptr %77, align 8, !tbaa !48
  %79 = load i64, ptr %52, align 8, !tbaa !49
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load ptr, ptr %53, align 8, !tbaa !37
  %83 = getelementptr inbounds %struct.gx_clist_state_s, ptr %60, i64 %61, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !50
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.tile_hash, ptr %82, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !51
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %81
  %90 = load ptr, ptr %54, align 8, !tbaa !37
  %91 = getelementptr inbounds i8, ptr %90, i64 %87
  %92 = getelementptr inbounds %struct.tile_slot, ptr %91, i64 0, i32 5
  %93 = load i64, ptr %92, align 8, !tbaa !53
  %94 = icmp eq i64 %93, %79
  br i1 %94, label %104, label %95

95:                                               ; preds = %89, %81, %76
  %96 = icmp eq i64 %79, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %95
  %98 = tail call i32 @clist_change_tile(ptr noundef %0, ptr noundef %62, ptr noundef %1, i32 noundef %17) #5
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97, %95
  %101 = tail call i32 @gx_default_strip_tile_rectangle(ptr noundef %0, ptr noundef %1, i32 noundef %31, i32 noundef %57, i32 noundef %37, i32 noundef %67, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #5
  %102 = icmp sgt i32 %101, -1
  %103 = select i1 %102, i32 %58, i32 %101
  br i1 %102, label %134, label %136

104:                                              ; preds = %97, %89
  %105 = getelementptr inbounds %struct.gx_clist_state_s, ptr %60, i64 %61, i32 4
  %106 = load i64, ptr %105, align 8, !tbaa !46
  %107 = icmp eq i64 %106, %6
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.gx_clist_state_s, ptr %60, i64 %61, i32 4, i64 1
  %110 = load i64, ptr %109, align 8, !tbaa !46
  %111 = icmp eq i64 %110, %7
  br i1 %111, label %116, label %112

112:                                              ; preds = %108, %104
  %113 = tail call i32 @cmd_set_tile_colors(ptr noundef %0, ptr noundef %62, i64 noundef %6, i64 noundef %7) #5
  %114 = icmp sgt i32 %113, -1
  %115 = select i1 %114, i32 %58, i32 %113
  br i1 %114, label %116, label %136

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %115, %112 ], [ %58, %108 ]
  %118 = getelementptr inbounds %struct.gx_clist_state_s, ptr %60, i64 %61, i32 3
  %119 = load i32, ptr %118, align 8, !tbaa !56
  %120 = icmp eq i32 %119, %8
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.gx_clist_state_s, ptr %60, i64 %61, i32 3, i32 1
  %123 = load i32, ptr %122, align 4, !tbaa !57
  %124 = icmp eq i32 %123, %9
  br i1 %124, label %129, label %125

125:                                              ; preds = %121, %116
  %126 = tail call i32 @cmd_set_tile_phase(ptr noundef %0, ptr noundef %62, i32 noundef %8, i32 noundef %9) #5
  %127 = icmp sgt i32 %126, -1
  %128 = select i1 %127, i32 %117, i32 %126
  br i1 %127, label %129, label %136

129:                                              ; preds = %125, %121
  %130 = phi i32 [ %128, %125 ], [ %117, %121 ]
  %131 = tail call i32 @cmd_write_rect_cmd(ptr noundef %0, ptr noundef %62, i32 noundef 96, i32 noundef %31, i32 noundef %57, i32 noundef %37, i32 noundef %67)
  %132 = icmp sgt i32 %131, -1
  %133 = select i1 %132, i32 %130, i32 %131
  br i1 %132, label %134, label %136

134:                                              ; preds = %129, %100
  %135 = phi i32 [ %133, %129 ], [ %103, %100 ]
  br label %136

136:                                              ; preds = %100, %112, %125, %129, %134, %74
  %137 = phi i1 [ false, %74 ], [ true, %134 ], [ false, %129 ], [ false, %125 ], [ false, %112 ], [ false, %100 ]
  %138 = phi i32 [ %75, %74 ], [ %135, %134 ], [ %133, %129 ], [ %128, %125 ], [ %115, %112 ], [ %103, %100 ]
  %139 = select i1 %137, i1 %65, i1 false
  br i1 %139, label %56, label %140

140:                                              ; preds = %136
  %141 = select i1 %137, i32 0, i32 %138
  br label %142

142:                                              ; preds = %140, %27
  %143 = phi i32 [ 0, %27 ], [ %141, %140 ]
  ret i32 %143
}

declare i32 @clist_change_tile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gx_default_strip_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cmd_set_tile_colors(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @cmd_set_tile_phase(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @clist_copy_mono(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) local_unnamed_addr #0 {
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = or i32 %6, %5
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %18 = add nsw i32 %17, %7
  %19 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %20 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %21 = sub nsw i32 %2, %20
  %22 = icmp slt i32 %6, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = add nsw i32 %8, %6
  %25 = mul nsw i32 %6, %3
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 0, %26
  %28 = getelementptr inbounds i8, ptr %1, i64 %27
  br label %29

29:                                               ; preds = %16, %23, %11
  %30 = phi i32 [ %24, %23 ], [ %8, %16 ], [ %8, %11 ]
  %31 = phi i32 [ %18, %23 ], [ %18, %16 ], [ %7, %11 ]
  %32 = phi i32 [ 0, %23 ], [ %6, %16 ], [ %6, %11 ]
  %33 = phi i32 [ %19, %23 ], [ %19, %16 ], [ %5, %11 ]
  %34 = phi i32 [ %21, %23 ], [ %21, %16 ], [ %2, %11 ]
  %35 = phi ptr [ %28, %23 ], [ %1, %16 ], [ %1, %11 ]
  %36 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %37 = load i32, ptr %36, align 8, !tbaa !42
  %38 = sub nsw i32 %37, %31
  %39 = icmp sgt i32 %33, %38
  %40 = sub nsw i32 %37, %33
  %41 = select i1 %39, i32 %40, i32 %31
  %42 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %43 = load i32, ptr %42, align 4, !tbaa !44
  %44 = sub nsw i32 %43, %30
  %45 = icmp sgt i32 %32, %44
  %46 = sub nsw i32 %43, %32
  %47 = select i1 %45, i32 %46, i32 %30
  %48 = icmp slt i32 %41, 1
  %49 = icmp slt i32 %47, 1
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %226, label %51

51:                                               ; preds = %29
  %52 = add nsw i32 %47, %32
  %53 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 6, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !37
  %55 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %56 = and i32 %34, 7
  %57 = add nuw nsw i32 %41, %56
  %58 = ashr i32 %34, 3
  %59 = sext i32 %58 to i64
  %60 = getelementptr i8, ptr %35, i64 %59
  %61 = icmp eq i32 %56, 0
  %62 = select i1 %61, i32 1, i32 3
  %63 = icmp ult i32 %33, 128
  %64 = icmp ult i32 %33, 16384
  %65 = icmp eq i64 %4, 0
  %66 = select i1 %65, i32 2, i32 6
  %67 = trunc i32 %56 to i8
  %68 = or disjoint i8 %67, 64
  %69 = trunc i32 %33 to i8
  %70 = select i1 %63, i32 1, i32 2
  %71 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  br label %72

72:                                               ; preds = %216, %51
  %73 = phi i32 [ %32, %51 ], [ %221, %216 ]
  %74 = phi i32 [ undef, %51 ], [ %219, %216 ]
  %75 = sdiv i32 %73, %54
  %76 = load ptr, ptr %55, align 8, !tbaa !37
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds %struct.gx_clist_state_s, ptr %76, i64 %77
  %79 = add nsw i32 %75, 1
  %80 = mul nsw i32 %79, %54
  %81 = call i32 @llvm.smin.i32(i32 %80, i32 %52)
  %82 = sub nsw i32 %81, %73
  %83 = sub nsw i32 %73, %32
  %84 = mul nsw i32 %83, %3
  %85 = sext i32 %84 to i64
  %86 = getelementptr i8, ptr %60, i64 %85
  %87 = getelementptr inbounds %struct.gx_clist_state_s, ptr %76, i64 %77, i32 7
  %88 = load i16, ptr %87, align 4, !tbaa !45
  %89 = icmp eq i16 %88, 1
  br i1 %89, label %90, label %93

90:                                               ; preds = %72
  %91 = call i32 @cmd_put_enable_lop(ptr noundef %0, ptr noundef %78, i32 noundef 0) #5
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %214, label %93

93:                                               ; preds = %90, %72
  %94 = getelementptr inbounds %struct.gx_clist_state_s, ptr %76, i64 %77, i32 8
  %95 = load i16, ptr %94, align 2, !tbaa !58
  %96 = icmp eq i16 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = call i32 @cmd_put_enable_clip(ptr noundef %0, ptr noundef %78, i32 noundef 0) #5
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %214, label %100

100:                                              ; preds = %97, %93
  %101 = load i64, ptr %78, align 8, !tbaa !46
  %102 = icmp eq i64 %101, %9
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = call i32 @cmd_put_color(ptr noundef %0, ptr noundef nonnull %78, ptr noundef nonnull @clist_select_color0, i64 noundef %9, ptr noundef nonnull %78) #5
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %216, label %106

106:                                              ; preds = %103, %100
  %107 = getelementptr inbounds [2 x i64], ptr %78, i64 0, i64 1
  %108 = load i64, ptr %107, align 8, !tbaa !46
  %109 = icmp eq i64 %108, %10
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = call i32 @cmd_put_color(ptr noundef %0, ptr noundef nonnull %78, ptr noundef nonnull @clist_select_color1, i64 noundef %10, ptr noundef nonnull %107) #5
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %216, label %113

113:                                              ; preds = %110, %106
  %114 = icmp ult i32 %73, 128
  %115 = icmp ult i32 %73, 16384
  %116 = or i32 %73, %33
  %117 = icmp ult i32 %116, 128
  %118 = trunc i32 %73 to i8
  %119 = getelementptr inbounds %struct.gx_clist_state_s, ptr %76, i64 %77, i32 5
  %120 = getelementptr inbounds i8, ptr %119, i64 4
  %121 = getelementptr inbounds i8, ptr %119, i64 8
  %122 = getelementptr inbounds i8, ptr %119, i64 12
  %123 = select i1 %114, i32 1, i32 2
  br label %124

124:                                              ; preds = %208, %113
  %125 = phi i32 [ %82, %113 ], [ %210, %208 ]
  %126 = phi i32 [ %57, %113 ], [ %211, %208 ]
  %127 = phi i32 [ %74, %113 ], [ %212, %208 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #5
  br i1 %64, label %130, label %128

128:                                              ; preds = %124
  %129 = call i32 @cmd_size_w(i32 noundef %33) #5
  br label %130

130:                                              ; preds = %124, %128
  %131 = phi i32 [ %70, %124 ], [ %129, %128 ]
  br i1 %115, label %134, label %132

132:                                              ; preds = %130
  %133 = call i32 @cmd_size_w(i32 noundef %73) #5
  br label %134

134:                                              ; preds = %130, %132
  %135 = phi i32 [ %123, %130 ], [ %133, %132 ]
  %136 = icmp ult i32 %126, 128
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = icmp ult i32 %126, 16384
  br i1 %138, label %141, label %139

139:                                              ; preds = %137
  %140 = call i32 @cmd_size_w(i32 noundef %126) #5
  br label %141

141:                                              ; preds = %139, %137, %134
  %142 = phi i32 [ 1, %134 ], [ %140, %139 ], [ 2, %137 ]
  %143 = icmp ult i32 %125, 128
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = icmp ult i32 %125, 16384
  br i1 %145, label %148, label %146

146:                                              ; preds = %144
  %147 = call i32 @cmd_size_w(i32 noundef %125) #5
  br label %148

148:                                              ; preds = %141, %144, %146
  %149 = phi i32 [ 1, %141 ], [ %147, %146 ], [ 2, %144 ]
  %150 = add i32 %131, %62
  %151 = add i32 %150, %135
  %152 = add i32 %151, %142
  %153 = add i32 %152, %149
  %154 = call i32 @cmd_put_bits(ptr noundef %0, ptr noundef nonnull %78, ptr noundef %86, i32 noundef %126, i32 noundef %125, i32 noundef %3, i32 noundef %153, i32 noundef %66, ptr noundef nonnull %12, ptr noundef nonnull %13) #5
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %148
  %157 = icmp eq i32 %154, -13
  br i1 %157, label %158, label %208

158:                                              ; preds = %156
  %159 = icmp sgt i32 %125, 1
  br i1 %159, label %160, label %162

160:                                              ; preds = %158
  %161 = lshr i32 %125, 1
  br label %208

162:                                              ; preds = %158
  %163 = ashr i32 %126, 1
  %164 = add nsw i32 %163, %56
  %165 = add nsw i32 %163, %33
  %166 = sub nsw i32 %126, %163
  %167 = call i32 @clist_copy_mono(ptr noundef %0, ptr noundef %86, i32 noundef %164, i32 noundef %3, i64 noundef 0, i32 noundef %165, i32 noundef %73, i32 noundef %166, i32 noundef 1, i64 noundef %9, i64 noundef %10)
  %168 = icmp slt i32 %167, 0
  %169 = select i1 %168, i32 1, i32 4
  %170 = select i1 %168, i32 %126, i32 %163
  %171 = select i1 %168, i32 %167, i32 %127
  br label %208

172:                                              ; preds = %148
  %173 = trunc i32 %154 to i8
  %174 = add i8 %173, -112
  br i1 %61, label %180, label %175

175:                                              ; preds = %172
  %176 = load ptr, ptr %12, align 8, !tbaa !59
  %177 = getelementptr inbounds i8, ptr %176, i64 1
  store ptr %177, ptr %12, align 8, !tbaa !59
  store i8 6, ptr %176, align 1, !tbaa !37
  %178 = load ptr, ptr %12, align 8, !tbaa !59
  %179 = getelementptr inbounds i8, ptr %178, i64 1
  store ptr %179, ptr %12, align 8, !tbaa !59
  store i8 %68, ptr %178, align 1, !tbaa !37
  br label %180

180:                                              ; preds = %175, %172
  %181 = load ptr, ptr %12, align 8, !tbaa !59
  %182 = getelementptr inbounds i8, ptr %181, i64 1
  store ptr %182, ptr %12, align 8, !tbaa !59
  store i8 %174, ptr %181, align 1, !tbaa !37
  %183 = load ptr, ptr %12, align 8, !tbaa !59
  br i1 %117, label %184, label %189

184:                                              ; preds = %180
  store i8 %69, ptr %183, align 1, !tbaa !37
  %185 = load ptr, ptr %12, align 8, !tbaa !59
  %186 = getelementptr inbounds i8, ptr %185, i64 1
  store i8 %118, ptr %186, align 1, !tbaa !37
  %187 = load ptr, ptr %12, align 8, !tbaa !59
  %188 = getelementptr inbounds i8, ptr %187, i64 2
  br label %192

189:                                              ; preds = %180
  %190 = call ptr @cmd_put_w(i32 noundef %33, ptr noundef %183) #5
  %191 = call ptr @cmd_put_w(i32 noundef %73, ptr noundef %190) #5
  br label %192

192:                                              ; preds = %189, %184
  %193 = phi ptr [ %188, %184 ], [ %191, %189 ]
  store ptr %193, ptr %12, align 8, !tbaa !59
  %194 = or i32 %126, %125
  %195 = icmp ult i32 %194, 128
  br i1 %195, label %196, label %203

196:                                              ; preds = %192
  %197 = trunc i32 %126 to i8
  store i8 %197, ptr %193, align 1, !tbaa !37
  %198 = trunc i32 %125 to i8
  %199 = load ptr, ptr %12, align 8, !tbaa !59
  %200 = getelementptr inbounds i8, ptr %199, i64 1
  store i8 %198, ptr %200, align 1, !tbaa !37
  %201 = load ptr, ptr %12, align 8, !tbaa !59
  %202 = getelementptr inbounds i8, ptr %201, i64 2
  br label %206

203:                                              ; preds = %192
  %204 = call ptr @cmd_put_w(i32 noundef %126, ptr noundef %193) #5
  %205 = call ptr @cmd_put_w(i32 noundef %125, ptr noundef %204) #5
  br label %206

206:                                              ; preds = %203, %196
  %207 = phi ptr [ %202, %196 ], [ %205, %203 ]
  store ptr %207, ptr %12, align 8, !tbaa !59
  store i32 %33, ptr %119, align 8, !tbaa.struct !60
  store i32 %73, ptr %120, align 4, !tbaa.struct !62
  store i32 %126, ptr %121, align 8, !tbaa.struct !63
  store i32 %125, ptr %122, align 4, !tbaa.struct !64
  br label %208

208:                                              ; preds = %156, %206, %162, %160
  %209 = phi i32 [ 4, %160 ], [ %169, %162 ], [ 0, %206 ], [ 1, %156 ]
  %210 = phi i32 [ %161, %160 ], [ %125, %162 ], [ %125, %206 ], [ %125, %156 ]
  %211 = phi i32 [ %126, %160 ], [ %170, %162 ], [ %126, %206 ], [ %126, %156 ]
  %212 = phi i32 [ %127, %160 ], [ %171, %162 ], [ %127, %206 ], [ %154, %156 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  %213 = icmp eq i32 %209, 4
  br i1 %213, label %124, label %216

214:                                              ; preds = %97, %90
  %215 = load i32, ptr %71, align 4, !tbaa !37
  br label %216

216:                                              ; preds = %208, %214, %110, %103
  %217 = phi i32 [ 1, %103 ], [ 1, %110 ], [ 1, %214 ], [ %209, %208 ]
  %218 = phi i32 [ %82, %103 ], [ %82, %110 ], [ %82, %214 ], [ %210, %208 ]
  %219 = phi i32 [ %104, %103 ], [ %111, %110 ], [ %215, %214 ], [ %212, %208 ]
  %220 = icmp eq i32 %217, 0
  %221 = add nsw i32 %218, %73
  %222 = icmp slt i32 %221, %52
  %223 = select i1 %220, i1 %222, i1 false
  br i1 %223, label %72, label %224, !llvm.loop !65

224:                                              ; preds = %216
  %225 = select i1 %220, i32 0, i32 %219
  br label %226

226:                                              ; preds = %224, %29
  %227 = phi i32 [ 0, %29 ], [ %225, %224 ]
  ret i32 %227
}

declare i32 @cmd_put_enable_clip(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cmd_put_bits(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @clist_copy_color(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !47
  %14 = or i32 %6, %5
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %9
  %17 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %18 = add nsw i32 %17, %7
  %19 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %20 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %21 = sub nsw i32 %2, %20
  %22 = icmp slt i32 %6, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = add nsw i32 %8, %6
  %25 = mul nsw i32 %6, %3
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 0, %26
  %28 = getelementptr inbounds i8, ptr %1, i64 %27
  br label %29

29:                                               ; preds = %16, %23, %9
  %30 = phi i32 [ %24, %23 ], [ %8, %16 ], [ %8, %9 ]
  %31 = phi i32 [ %18, %23 ], [ %18, %16 ], [ %7, %9 ]
  %32 = phi i32 [ 0, %23 ], [ %6, %16 ], [ %6, %9 ]
  %33 = phi i32 [ %19, %23 ], [ %19, %16 ], [ %5, %9 ]
  %34 = phi i32 [ %21, %23 ], [ %21, %16 ], [ %2, %9 ]
  %35 = phi ptr [ %28, %23 ], [ %1, %16 ], [ %1, %9 ]
  %36 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %37 = load i32, ptr %36, align 8, !tbaa !42
  %38 = sub nsw i32 %37, %31
  %39 = icmp sgt i32 %33, %38
  %40 = sub nsw i32 %37, %33
  %41 = select i1 %39, i32 %40, i32 %31
  %42 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %43 = load i32, ptr %42, align 4, !tbaa !44
  %44 = sub nsw i32 %43, %30
  %45 = icmp sgt i32 %32, %44
  %46 = sub nsw i32 %43, %32
  %47 = select i1 %45, i32 %46, i32 %30
  %48 = icmp slt i32 %41, 1
  %49 = icmp slt i32 %47, 1
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %229, label %51

51:                                               ; preds = %29
  %52 = mul nsw i32 %34, %13
  %53 = add nsw i32 %47, %32
  %54 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 6, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !37
  %56 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %57 = and i32 %52, 7
  %58 = sdiv i32 %57, %13
  %59 = add nsw i32 %58, %41
  %60 = ashr i32 %52, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr i8, ptr %35, i64 %61
  %63 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %64 = icmp eq i32 %58, 0
  %65 = select i1 %64, i32 1, i32 3
  %66 = icmp ult i32 %33, 128
  %67 = icmp ult i32 %33, 16384
  %68 = trunc i32 %58 to i8
  %69 = add nsw i8 %68, 64
  %70 = trunc i32 %33 to i8
  %71 = select i1 %66, i32 1, i32 2
  %72 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  br label %73

73:                                               ; preds = %219, %51
  %74 = phi i32 [ %32, %51 ], [ %224, %219 ]
  %75 = phi i32 [ undef, %51 ], [ %222, %219 ]
  %76 = sdiv i32 %74, %55
  %77 = load ptr, ptr %56, align 8, !tbaa !37
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds %struct.gx_clist_state_s, ptr %77, i64 %78
  %80 = add nsw i32 %76, 1
  %81 = mul nsw i32 %80, %55
  %82 = call i32 @llvm.smin.i32(i32 %81, i32 %53)
  %83 = sub nsw i32 %82, %74
  %84 = sub nsw i32 %74, %32
  %85 = mul nsw i32 %84, %3
  %86 = sext i32 %85 to i64
  %87 = getelementptr i8, ptr %62, i64 %86
  %88 = getelementptr inbounds %struct.gx_clist_state_s, ptr %77, i64 %78, i32 7
  %89 = load i16, ptr %88, align 4, !tbaa !45
  %90 = icmp eq i16 %89, 1
  br i1 %90, label %91, label %94

91:                                               ; preds = %73
  %92 = call i32 @cmd_put_enable_lop(ptr noundef %0, ptr noundef %79, i32 noundef 0) #5
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %217, label %94

94:                                               ; preds = %91, %73
  %95 = getelementptr inbounds %struct.gx_clist_state_s, ptr %77, i64 %78, i32 8
  %96 = load i16, ptr %95, align 2, !tbaa !58
  %97 = icmp eq i16 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = call i32 @cmd_put_enable_clip(ptr noundef %0, ptr noundef %79, i32 noundef 0) #5
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %217, label %101

101:                                              ; preds = %98, %94
  %102 = getelementptr inbounds %struct.gx_clist_state_s, ptr %77, i64 %78, i32 9
  %103 = load i16, ptr %102, align 8, !tbaa !67
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.gx_clist_state_s, ptr %77, i64 %78, i32 11
  %107 = call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %106, i32 noundef 1) #5
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, ptr %63, align 4, !tbaa !37
  br label %112

111:                                              ; preds = %105
  store i8 14, ptr %107, align 1, !tbaa !37
  store i16 0, ptr %102, align 8, !tbaa !67
  br label %112

112:                                              ; preds = %111, %109
  %113 = phi i32 [ %110, %109 ], [ %75, %111 ]
  br i1 %108, label %219, label %114

114:                                              ; preds = %112, %101
  %115 = phi i32 [ %113, %112 ], [ %75, %101 ]
  %116 = icmp ult i32 %74, 128
  %117 = icmp ult i32 %74, 16384
  %118 = or i32 %74, %33
  %119 = icmp ult i32 %118, 128
  %120 = trunc i32 %74 to i8
  %121 = getelementptr inbounds %struct.gx_clist_state_s, ptr %77, i64 %78, i32 5
  %122 = getelementptr inbounds i8, ptr %121, i64 4
  %123 = getelementptr inbounds i8, ptr %121, i64 8
  %124 = getelementptr inbounds i8, ptr %121, i64 12
  %125 = select i1 %116, i32 1, i32 2
  br label %126

126:                                              ; preds = %211, %114
  %127 = phi i32 [ %83, %114 ], [ %213, %211 ]
  %128 = phi i32 [ %59, %114 ], [ %214, %211 ]
  %129 = phi i32 [ %115, %114 ], [ %215, %211 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #5
  br i1 %67, label %132, label %130

130:                                              ; preds = %126
  %131 = call i32 @cmd_size_w(i32 noundef %33) #5
  br label %132

132:                                              ; preds = %126, %130
  %133 = phi i32 [ %71, %126 ], [ %131, %130 ]
  br i1 %117, label %136, label %134

134:                                              ; preds = %132
  %135 = call i32 @cmd_size_w(i32 noundef %74) #5
  br label %136

136:                                              ; preds = %132, %134
  %137 = phi i32 [ %125, %132 ], [ %135, %134 ]
  %138 = icmp ult i32 %128, 128
  br i1 %138, label %143, label %139

139:                                              ; preds = %136
  %140 = icmp ult i32 %128, 16384
  br i1 %140, label %143, label %141

141:                                              ; preds = %139
  %142 = call i32 @cmd_size_w(i32 noundef %128) #5
  br label %143

143:                                              ; preds = %141, %139, %136
  %144 = phi i32 [ 1, %136 ], [ %142, %141 ], [ 2, %139 ]
  %145 = icmp ult i32 %127, 128
  br i1 %145, label %150, label %146

146:                                              ; preds = %143
  %147 = icmp ult i32 %127, 16384
  br i1 %147, label %150, label %148

148:                                              ; preds = %146
  %149 = call i32 @cmd_size_w(i32 noundef %127) #5
  br label %150

150:                                              ; preds = %143, %146, %148
  %151 = phi i32 [ 1, %143 ], [ %149, %148 ], [ 2, %146 ]
  %152 = add i32 %133, %65
  %153 = add i32 %152, %137
  %154 = add i32 %153, %144
  %155 = add i32 %154, %151
  %156 = mul nsw i32 %128, %13
  %157 = call i32 @cmd_put_bits(ptr noundef %0, ptr noundef %79, ptr noundef %87, i32 noundef %156, i32 noundef %127, i32 noundef %3, i32 noundef %155, i32 noundef 2, ptr noundef nonnull %10, ptr noundef nonnull %11) #5
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %150
  %160 = icmp eq i32 %157, -13
  br i1 %160, label %161, label %211

161:                                              ; preds = %159
  %162 = icmp sgt i32 %127, 1
  br i1 %162, label %163, label %165

163:                                              ; preds = %161
  %164 = lshr i32 %127, 1
  br label %211

165:                                              ; preds = %161
  %166 = ashr i32 %128, 1
  %167 = add nsw i32 %166, %58
  %168 = add nsw i32 %166, %33
  %169 = sub nsw i32 %128, %166
  %170 = call i32 @clist_copy_color(ptr noundef %0, ptr noundef %87, i32 noundef %167, i32 noundef %3, i64 poison, i32 noundef %168, i32 noundef %74, i32 noundef %169, i32 noundef 1)
  %171 = icmp slt i32 %170, 0
  %172 = select i1 %171, i32 1, i32 6
  %173 = select i1 %171, i32 %128, i32 %166
  %174 = select i1 %171, i32 %170, i32 %129
  br label %211

175:                                              ; preds = %150
  %176 = trunc i32 %157 to i8
  %177 = add i8 %176, -96
  br i1 %64, label %183, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr %10, align 8, !tbaa !59
  %180 = getelementptr inbounds i8, ptr %179, i64 1
  store ptr %180, ptr %10, align 8, !tbaa !59
  store i8 6, ptr %179, align 1, !tbaa !37
  %181 = load ptr, ptr %10, align 8, !tbaa !59
  %182 = getelementptr inbounds i8, ptr %181, i64 1
  store ptr %182, ptr %10, align 8, !tbaa !59
  store i8 %69, ptr %181, align 1, !tbaa !37
  br label %183

183:                                              ; preds = %178, %175
  %184 = load ptr, ptr %10, align 8, !tbaa !59
  %185 = getelementptr inbounds i8, ptr %184, i64 1
  store ptr %185, ptr %10, align 8, !tbaa !59
  store i8 %177, ptr %184, align 1, !tbaa !37
  %186 = load ptr, ptr %10, align 8, !tbaa !59
  br i1 %119, label %187, label %192

187:                                              ; preds = %183
  store i8 %70, ptr %186, align 1, !tbaa !37
  %188 = load ptr, ptr %10, align 8, !tbaa !59
  %189 = getelementptr inbounds i8, ptr %188, i64 1
  store i8 %120, ptr %189, align 1, !tbaa !37
  %190 = load ptr, ptr %10, align 8, !tbaa !59
  %191 = getelementptr inbounds i8, ptr %190, i64 2
  br label %195

192:                                              ; preds = %183
  %193 = call ptr @cmd_put_w(i32 noundef %33, ptr noundef %186) #5
  %194 = call ptr @cmd_put_w(i32 noundef %74, ptr noundef %193) #5
  br label %195

195:                                              ; preds = %192, %187
  %196 = phi ptr [ %191, %187 ], [ %194, %192 ]
  store ptr %196, ptr %10, align 8, !tbaa !59
  %197 = or i32 %128, %127
  %198 = icmp ult i32 %197, 128
  br i1 %198, label %199, label %206

199:                                              ; preds = %195
  %200 = trunc i32 %128 to i8
  store i8 %200, ptr %196, align 1, !tbaa !37
  %201 = trunc i32 %127 to i8
  %202 = load ptr, ptr %10, align 8, !tbaa !59
  %203 = getelementptr inbounds i8, ptr %202, i64 1
  store i8 %201, ptr %203, align 1, !tbaa !37
  %204 = load ptr, ptr %10, align 8, !tbaa !59
  %205 = getelementptr inbounds i8, ptr %204, i64 2
  br label %209

206:                                              ; preds = %195
  %207 = call ptr @cmd_put_w(i32 noundef %128, ptr noundef %196) #5
  %208 = call ptr @cmd_put_w(i32 noundef %127, ptr noundef %207) #5
  br label %209

209:                                              ; preds = %206, %199
  %210 = phi ptr [ %205, %199 ], [ %208, %206 ]
  store ptr %210, ptr %10, align 8, !tbaa !59
  store i32 %33, ptr %121, align 8, !tbaa.struct !60
  store i32 %74, ptr %122, align 4, !tbaa.struct !62
  store i32 %128, ptr %123, align 8, !tbaa.struct !63
  store i32 %127, ptr %124, align 4, !tbaa.struct !64
  br label %211

211:                                              ; preds = %159, %209, %165, %163
  %212 = phi i32 [ 6, %163 ], [ %172, %165 ], [ 0, %209 ], [ 1, %159 ]
  %213 = phi i32 [ %164, %163 ], [ %127, %165 ], [ %127, %209 ], [ %127, %159 ]
  %214 = phi i32 [ %128, %163 ], [ %173, %165 ], [ %128, %209 ], [ %128, %159 ]
  %215 = phi i32 [ %129, %163 ], [ %174, %165 ], [ %129, %209 ], [ %157, %159 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  %216 = icmp eq i32 %212, 6
  br i1 %216, label %126, label %219

217:                                              ; preds = %98, %91
  %218 = load i32, ptr %72, align 4, !tbaa !37
  br label %219

219:                                              ; preds = %211, %217, %112
  %220 = phi i32 [ 1, %112 ], [ 1, %217 ], [ %212, %211 ]
  %221 = phi i32 [ %83, %112 ], [ %83, %217 ], [ %213, %211 ]
  %222 = phi i32 [ %113, %112 ], [ %218, %217 ], [ %215, %211 ]
  %223 = icmp eq i32 %220, 0
  %224 = add nsw i32 %221, %74
  %225 = icmp slt i32 %224, %53
  %226 = select i1 %223, i1 %225, i1 false
  br i1 %226, label %73, label %227, !llvm.loop !68

227:                                              ; preds = %219
  %228 = select i1 %223, i32 0, i32 %222
  br label %229

229:                                              ; preds = %227, %29
  %230 = phi i32 [ 0, %29 ], [ %228, %227 ]
  ret i32 %230
}

; Function Attrs: nounwind uwtable
define dso_local i32 @clist_copy_alpha(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = ashr i32 %10, 1
  %15 = or i32 %6, %5
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %19 = add nsw i32 %18, %7
  %20 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %21 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %22 = sub nsw i32 %2, %21
  %23 = icmp slt i32 %6, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = add nsw i32 %8, %6
  %26 = mul nsw i32 %6, %3
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 0, %27
  %29 = getelementptr inbounds i8, ptr %1, i64 %28
  br label %30

30:                                               ; preds = %17, %24, %11
  %31 = phi i32 [ %25, %24 ], [ %8, %17 ], [ %8, %11 ]
  %32 = phi i32 [ %19, %24 ], [ %19, %17 ], [ %7, %11 ]
  %33 = phi i32 [ 0, %24 ], [ %6, %17 ], [ %6, %11 ]
  %34 = phi i32 [ %20, %24 ], [ %20, %17 ], [ %5, %11 ]
  %35 = phi i32 [ %22, %24 ], [ %22, %17 ], [ %2, %11 ]
  %36 = phi ptr [ %29, %24 ], [ %1, %17 ], [ %1, %11 ]
  %37 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %38 = load i32, ptr %37, align 8, !tbaa !42
  %39 = sub nsw i32 %38, %32
  %40 = icmp sgt i32 %34, %39
  %41 = sub nsw i32 %38, %34
  %42 = select i1 %40, i32 %41, i32 %32
  %43 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %44 = load i32, ptr %43, align 4, !tbaa !44
  %45 = sub nsw i32 %44, %31
  %46 = icmp sgt i32 %33, %45
  %47 = sub nsw i32 %44, %33
  %48 = select i1 %46, i32 %47, i32 %31
  %49 = icmp slt i32 %42, 1
  %50 = icmp slt i32 %48, 1
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %242, label %52

52:                                               ; preds = %30
  %53 = shl i32 %35, %14
  %54 = add nsw i32 %48, %33
  %55 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 6, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !37
  %57 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %58 = and i32 %53, 7
  %59 = lshr i32 %58, %14
  %60 = add nsw i32 %42, %59
  %61 = ashr i32 %53, 3
  %62 = sext i32 %61 to i64
  %63 = getelementptr i8, ptr %36, i64 %62
  %64 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %65 = icmp eq i32 %59, 0
  %66 = select i1 %65, i32 2, i32 4
  %67 = icmp ult i32 %34, 128
  %68 = icmp ult i32 %34, 16384
  %69 = trunc i32 %59 to i8
  %70 = or disjoint i8 %69, 64
  %71 = trunc i32 %10 to i8
  %72 = trunc i32 %34 to i8
  %73 = select i1 %67, i32 1, i32 2
  %74 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  br label %75

75:                                               ; preds = %232, %52
  %76 = phi i32 [ %33, %52 ], [ %237, %232 ]
  %77 = phi i32 [ undef, %52 ], [ %235, %232 ]
  %78 = sdiv i32 %76, %56
  %79 = load ptr, ptr %57, align 8, !tbaa !37
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds %struct.gx_clist_state_s, ptr %79, i64 %80
  %82 = add nsw i32 %78, 1
  %83 = mul nsw i32 %82, %56
  %84 = call i32 @llvm.smin.i32(i32 %83, i32 %54)
  %85 = sub nsw i32 %84, %76
  %86 = sub nsw i32 %76, %33
  %87 = mul nsw i32 %86, %3
  %88 = sext i32 %87 to i64
  %89 = getelementptr i8, ptr %63, i64 %88
  %90 = getelementptr inbounds %struct.gx_clist_state_s, ptr %79, i64 %80, i32 7
  %91 = load i16, ptr %90, align 4, !tbaa !45
  %92 = icmp eq i16 %91, 1
  br i1 %92, label %93, label %96

93:                                               ; preds = %75
  %94 = call i32 @cmd_put_enable_lop(ptr noundef %0, ptr noundef %81, i32 noundef 0) #5
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %230, label %96

96:                                               ; preds = %93, %75
  %97 = getelementptr inbounds %struct.gx_clist_state_s, ptr %79, i64 %80, i32 8
  %98 = load i16, ptr %97, align 2, !tbaa !58
  %99 = icmp eq i16 %98, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = call i32 @cmd_put_enable_clip(ptr noundef %0, ptr noundef %81, i32 noundef 0) #5
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %230, label %103

103:                                              ; preds = %100, %96
  %104 = getelementptr inbounds %struct.gx_clist_state_s, ptr %79, i64 %80, i32 9
  %105 = load i16, ptr %104, align 8, !tbaa !67
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.gx_clist_state_s, ptr %79, i64 %80, i32 11
  %109 = call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %108, i32 noundef 1) #5
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i32, ptr %64, align 4, !tbaa !37
  br label %114

113:                                              ; preds = %107
  store i8 15, ptr %109, align 1, !tbaa !37
  store i16 1, ptr %104, align 8, !tbaa !67
  br label %114

114:                                              ; preds = %113, %111
  %115 = phi i32 [ %112, %111 ], [ %77, %113 ]
  br i1 %110, label %232, label %116

116:                                              ; preds = %114, %103
  %117 = phi i32 [ %77, %103 ], [ %115, %114 ]
  %118 = getelementptr inbounds [2 x i64], ptr %81, i64 0, i64 1
  %119 = load i64, ptr %118, align 8, !tbaa !46
  %120 = icmp eq i64 %119, %9
  br i1 %120, label %125, label %121

121:                                              ; preds = %116
  %122 = call i32 @cmd_put_color(ptr noundef %0, ptr noundef %81, ptr noundef nonnull @clist_select_color1, i64 noundef %9, ptr noundef nonnull %118) #5
  %123 = icmp sgt i32 %122, -1
  %124 = select i1 %123, i32 %117, i32 %122
  br i1 %123, label %125, label %232

125:                                              ; preds = %121, %116
  %126 = phi i32 [ %124, %121 ], [ %117, %116 ]
  %127 = icmp ult i32 %76, 128
  %128 = icmp ult i32 %76, 16384
  %129 = or i32 %76, %34
  %130 = icmp ult i32 %129, 128
  %131 = trunc i32 %76 to i8
  %132 = getelementptr inbounds %struct.gx_clist_state_s, ptr %79, i64 %80, i32 5
  %133 = getelementptr inbounds i8, ptr %132, i64 4
  %134 = getelementptr inbounds i8, ptr %132, i64 8
  %135 = getelementptr inbounds i8, ptr %132, i64 12
  %136 = select i1 %127, i32 1, i32 2
  br label %137

137:                                              ; preds = %224, %125
  %138 = phi i32 [ %85, %125 ], [ %226, %224 ]
  %139 = phi i32 [ %60, %125 ], [ %227, %224 ]
  %140 = phi i32 [ %126, %125 ], [ %228, %224 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #5
  br i1 %68, label %143, label %141

141:                                              ; preds = %137
  %142 = call i32 @cmd_size_w(i32 noundef %34) #5
  br label %143

143:                                              ; preds = %137, %141
  %144 = phi i32 [ %73, %137 ], [ %142, %141 ]
  br i1 %128, label %147, label %145

145:                                              ; preds = %143
  %146 = call i32 @cmd_size_w(i32 noundef %76) #5
  br label %147

147:                                              ; preds = %143, %145
  %148 = phi i32 [ %136, %143 ], [ %146, %145 ]
  %149 = icmp ult i32 %139, 128
  br i1 %149, label %154, label %150

150:                                              ; preds = %147
  %151 = icmp ult i32 %139, 16384
  br i1 %151, label %154, label %152

152:                                              ; preds = %150
  %153 = call i32 @cmd_size_w(i32 noundef %139) #5
  br label %154

154:                                              ; preds = %152, %150, %147
  %155 = phi i32 [ 1, %147 ], [ %153, %152 ], [ 2, %150 ]
  %156 = icmp ult i32 %138, 128
  br i1 %156, label %161, label %157

157:                                              ; preds = %154
  %158 = icmp ult i32 %138, 16384
  br i1 %158, label %161, label %159

159:                                              ; preds = %157
  %160 = call i32 @cmd_size_w(i32 noundef %138) #5
  br label %161

161:                                              ; preds = %154, %157, %159
  %162 = phi i32 [ 1, %154 ], [ %160, %159 ], [ 2, %157 ]
  %163 = add i32 %144, %66
  %164 = add i32 %163, %148
  %165 = add i32 %164, %155
  %166 = add i32 %165, %162
  %167 = shl i32 %139, %14
  %168 = call i32 @cmd_put_bits(ptr noundef %0, ptr noundef %81, ptr noundef %89, i32 noundef %167, i32 noundef %138, i32 noundef %3, i32 noundef %166, i32 noundef 2, ptr noundef nonnull %12, ptr noundef nonnull %13) #5
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %186

170:                                              ; preds = %161
  %171 = icmp eq i32 %168, -13
  br i1 %171, label %172, label %224

172:                                              ; preds = %170
  %173 = icmp sgt i32 %138, 1
  br i1 %173, label %174, label %176

174:                                              ; preds = %172
  %175 = lshr i32 %138, 1
  br label %224

176:                                              ; preds = %172
  %177 = ashr i32 %139, 1
  %178 = add nsw i32 %177, %59
  %179 = add nsw i32 %177, %34
  %180 = sub nsw i32 %139, %177
  %181 = call i32 @clist_copy_alpha(ptr noundef %0, ptr noundef %89, i32 noundef %178, i32 noundef %3, i64 poison, i32 noundef %179, i32 noundef %76, i32 noundef %180, i32 noundef 1, i64 noundef %9, i32 noundef %10)
  %182 = icmp slt i32 %181, 0
  %183 = select i1 %182, i32 1, i32 6
  %184 = select i1 %182, i32 %139, i32 %177
  %185 = select i1 %182, i32 %181, i32 %140
  br label %224

186:                                              ; preds = %161
  %187 = trunc i32 %168 to i8
  %188 = add i8 %187, -96
  br i1 %65, label %194, label %189

189:                                              ; preds = %186
  %190 = load ptr, ptr %12, align 8, !tbaa !59
  %191 = getelementptr inbounds i8, ptr %190, i64 1
  store ptr %191, ptr %12, align 8, !tbaa !59
  store i8 6, ptr %190, align 1, !tbaa !37
  %192 = load ptr, ptr %12, align 8, !tbaa !59
  %193 = getelementptr inbounds i8, ptr %192, i64 1
  store ptr %193, ptr %12, align 8, !tbaa !59
  store i8 %70, ptr %192, align 1, !tbaa !37
  br label %194

194:                                              ; preds = %189, %186
  %195 = load ptr, ptr %12, align 8, !tbaa !59
  %196 = getelementptr inbounds i8, ptr %195, i64 1
  store ptr %196, ptr %12, align 8, !tbaa !59
  store i8 %188, ptr %195, align 1, !tbaa !37
  %197 = load ptr, ptr %12, align 8, !tbaa !59
  %198 = getelementptr inbounds i8, ptr %197, i64 1
  store ptr %198, ptr %12, align 8, !tbaa !59
  store i8 %71, ptr %197, align 1, !tbaa !37
  %199 = load ptr, ptr %12, align 8, !tbaa !59
  br i1 %130, label %200, label %205

200:                                              ; preds = %194
  store i8 %72, ptr %199, align 1, !tbaa !37
  %201 = load ptr, ptr %12, align 8, !tbaa !59
  %202 = getelementptr inbounds i8, ptr %201, i64 1
  store i8 %131, ptr %202, align 1, !tbaa !37
  %203 = load ptr, ptr %12, align 8, !tbaa !59
  %204 = getelementptr inbounds i8, ptr %203, i64 2
  br label %208

205:                                              ; preds = %194
  %206 = call ptr @cmd_put_w(i32 noundef %34, ptr noundef %199) #5
  %207 = call ptr @cmd_put_w(i32 noundef %76, ptr noundef %206) #5
  br label %208

208:                                              ; preds = %205, %200
  %209 = phi ptr [ %204, %200 ], [ %207, %205 ]
  store ptr %209, ptr %12, align 8, !tbaa !59
  %210 = or i32 %139, %138
  %211 = icmp ult i32 %210, 128
  br i1 %211, label %212, label %219

212:                                              ; preds = %208
  %213 = trunc i32 %139 to i8
  store i8 %213, ptr %209, align 1, !tbaa !37
  %214 = trunc i32 %138 to i8
  %215 = load ptr, ptr %12, align 8, !tbaa !59
  %216 = getelementptr inbounds i8, ptr %215, i64 1
  store i8 %214, ptr %216, align 1, !tbaa !37
  %217 = load ptr, ptr %12, align 8, !tbaa !59
  %218 = getelementptr inbounds i8, ptr %217, i64 2
  br label %222

219:                                              ; preds = %208
  %220 = call ptr @cmd_put_w(i32 noundef %139, ptr noundef %209) #5
  %221 = call ptr @cmd_put_w(i32 noundef %138, ptr noundef %220) #5
  br label %222

222:                                              ; preds = %219, %212
  %223 = phi ptr [ %218, %212 ], [ %221, %219 ]
  store ptr %223, ptr %12, align 8, !tbaa !59
  store i32 %34, ptr %132, align 8, !tbaa.struct !60
  store i32 %76, ptr %133, align 4, !tbaa.struct !62
  store i32 %139, ptr %134, align 8, !tbaa.struct !63
  store i32 %138, ptr %135, align 4, !tbaa.struct !64
  br label %224

224:                                              ; preds = %170, %222, %176, %174
  %225 = phi i32 [ 6, %174 ], [ %183, %176 ], [ 0, %222 ], [ 1, %170 ]
  %226 = phi i32 [ %175, %174 ], [ %138, %176 ], [ %138, %222 ], [ %138, %170 ]
  %227 = phi i32 [ %139, %174 ], [ %184, %176 ], [ %139, %222 ], [ %139, %170 ]
  %228 = phi i32 [ %140, %174 ], [ %185, %176 ], [ %140, %222 ], [ %168, %170 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  %229 = icmp eq i32 %225, 6
  br i1 %229, label %137, label %232

230:                                              ; preds = %100, %93
  %231 = load i32, ptr %74, align 4, !tbaa !37
  br label %232

232:                                              ; preds = %224, %230, %121, %114
  %233 = phi i32 [ 1, %121 ], [ 1, %114 ], [ 1, %230 ], [ %225, %224 ]
  %234 = phi i32 [ %85, %121 ], [ %85, %114 ], [ %85, %230 ], [ %226, %224 ]
  %235 = phi i32 [ %124, %121 ], [ %115, %114 ], [ %231, %230 ], [ %228, %224 ]
  %236 = icmp eq i32 %233, 0
  %237 = add nsw i32 %234, %76
  %238 = icmp slt i32 %237, %54
  %239 = select i1 %236, i1 %238, i1 false
  br i1 %239, label %75, label %240, !llvm.loop !69

240:                                              ; preds = %232
  %241 = select i1 %236, i32 0, i32 %235
  br label %242

242:                                              ; preds = %240, %30
  %243 = phi i32 [ 0, %30 ], [ %241, %240 ]
  ret i32 %243
}

; Function Attrs: nounwind uwtable
define dso_local i32 @clist_strip_copy_rop(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) local_unnamed_addr #0 {
  %16 = alloca %struct.gx_strip_bitmap_s, align 8
  %17 = alloca %struct.gx_strip_bitmap_s, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %16) #5
  %18 = icmp eq ptr %5, null
  br i1 %18, label %54, label %19

19:                                               ; preds = %15
  %20 = load i64, ptr %5, align 8, !tbaa !46
  %21 = getelementptr inbounds i64, ptr %5, i64 1
  %22 = load i64, ptr %21, align 8, !tbaa !46
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %54, label %24

24:                                               ; preds = %19
  %25 = or i32 %9, %8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = tail call i32 @llvm.smin.i32(i32 %8, i32 0)
  %29 = add nsw i32 %28, %10
  %30 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %31 = tail call i32 @llvm.smin.i32(i32 %9, i32 0)
  %32 = add nsw i32 %31, %11
  %33 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  br label %34

34:                                               ; preds = %27, %24
  %35 = phi i32 [ %11, %24 ], [ %32, %27 ]
  %36 = phi i32 [ %10, %24 ], [ %29, %27 ]
  %37 = phi i32 [ %9, %24 ], [ %33, %27 ]
  %38 = phi i32 [ %8, %24 ], [ %30, %27 ]
  %39 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !42
  %41 = sub nsw i32 %40, %36
  %42 = icmp sgt i32 %38, %41
  %43 = sub nsw i32 %40, %38
  %44 = select i1 %42, i32 %43, i32 %36
  %45 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %46 = load i32, ptr %45, align 4, !tbaa !44
  %47 = sub nsw i32 %46, %35
  %48 = icmp sgt i32 %37, %47
  %49 = sub nsw i32 %46, %37
  %50 = select i1 %48, i32 %49, i32 %35
  %51 = icmp slt i32 %44, 1
  %52 = icmp slt i32 %50, 1
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %299, label %93

54:                                               ; preds = %19, %15
  %55 = or i32 %9, %8
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = tail call i32 @llvm.smin.i32(i32 %8, i32 0)
  %59 = add nsw i32 %58, %10
  %60 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %61 = tail call i32 @llvm.smin.i32(i32 %8, i32 0)
  %62 = sub nsw i32 %2, %61
  %63 = icmp slt i32 %9, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = add nsw i32 %11, %9
  %66 = mul i32 %9, %3
  %67 = zext i32 %66 to i64
  %68 = sub nsw i64 0, %67
  %69 = getelementptr inbounds i8, ptr %1, i64 %68
  br label %70

70:                                               ; preds = %57, %64, %54
  %71 = phi i32 [ %65, %64 ], [ %11, %57 ], [ %11, %54 ]
  %72 = phi i32 [ %59, %64 ], [ %59, %57 ], [ %10, %54 ]
  %73 = phi i32 [ 0, %64 ], [ %9, %57 ], [ %9, %54 ]
  %74 = phi i32 [ %60, %64 ], [ %60, %57 ], [ %8, %54 ]
  %75 = phi i64 [ 0, %64 ], [ %4, %57 ], [ %4, %54 ]
  %76 = phi i32 [ %62, %64 ], [ %62, %57 ], [ %2, %54 ]
  %77 = phi ptr [ %69, %64 ], [ %1, %57 ], [ %1, %54 ]
  %78 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %79 = load i32, ptr %78, align 8, !tbaa !42
  %80 = sub nsw i32 %79, %72
  %81 = icmp sgt i32 %74, %80
  %82 = sub nsw i32 %79, %74
  %83 = select i1 %81, i32 %82, i32 %72
  %84 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %85 = load i32, ptr %84, align 4, !tbaa !44
  %86 = sub nsw i32 %85, %71
  %87 = icmp sgt i32 %73, %86
  %88 = sub nsw i32 %85, %73
  %89 = select i1 %87, i32 %88, i32 %71
  %90 = icmp slt i32 %83, 1
  %91 = icmp slt i32 %89, 1
  %92 = select i1 %90, i1 true, i1 %91
  br i1 %92, label %299, label %93

93:                                               ; preds = %70, %34
  %94 = phi i32 [ %50, %34 ], [ %89, %70 ]
  %95 = phi i32 [ %44, %34 ], [ %83, %70 ]
  %96 = phi i32 [ %37, %34 ], [ %73, %70 ]
  %97 = phi i32 [ %38, %34 ], [ %74, %70 ]
  %98 = phi i64 [ %4, %34 ], [ %75, %70 ]
  %99 = phi i32 [ %2, %34 ], [ %76, %70 ]
  %100 = phi ptr [ %1, %34 ], [ %77, %70 ]
  %101 = add i32 %96, %94
  %102 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 6, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !37
  %104 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %105 = shl i32 %14, 4
  %106 = xor i32 %105, %14
  %107 = and i32 %106, 240
  %108 = icmp eq i32 %107, 0
  %109 = icmp eq ptr %7, null
  %110 = getelementptr inbounds i64, ptr %7, i64 1
  %111 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 31
  %112 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 24
  %113 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %16, i64 0, i32 3
  %114 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %115 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %17, i64 0, i32 2, i32 1
  %116 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %17, i64 0, i32 5
  %117 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %17, i64 0, i32 1
  %118 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %17, i64 0, i32 3
  %119 = icmp eq ptr %100, null
  %120 = getelementptr inbounds i64, ptr %7, i64 1
  %121 = getelementptr inbounds i64, ptr %5, i64 1
  %122 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  br label %123

123:                                              ; preds = %294, %93
  %124 = phi ptr [ %6, %93 ], [ %292, %294 ]
  %125 = phi i32 [ %96, %93 ], [ %134, %294 ]
  %126 = phi i32 [ undef, %93 ], [ %293, %294 ]
  %127 = sdiv i32 %125, %103
  %128 = load ptr, ptr %104, align 8, !tbaa !37
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds %struct.gx_clist_state_s, ptr %128, i64 %129
  %131 = add i32 %127, 1
  %132 = mul i32 %131, %103
  %133 = icmp slt i32 %132, %101
  %134 = call i32 @llvm.smin.i32(i32 %132, i32 %101)
  %135 = sub i32 %134, %125
  %136 = sub nsw i32 %125, %96
  %137 = mul i32 %136, %3
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8, ptr %100, i64 %138
  br i1 %108, label %256, label %140

140:                                              ; preds = %123
  br i1 %109, label %145, label %141

141:                                              ; preds = %140
  %142 = load i64, ptr %7, align 8, !tbaa !46
  %143 = load i64, ptr %110, align 8, !tbaa !46
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %244, label %145

145:                                              ; preds = %141, %140
  %146 = getelementptr inbounds %struct.gx_clist_state_s, ptr %128, i64 %129, i32 2
  %147 = load i64, ptr %146, align 8, !tbaa !48
  %148 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %124, i64 0, i32 3
  %149 = load i64, ptr %148, align 8, !tbaa !49
  %150 = icmp eq i64 %147, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %145
  %152 = load ptr, ptr %111, align 8, !tbaa !37
  %153 = getelementptr inbounds %struct.gx_clist_state_s, ptr %128, i64 %129, i32 1
  %154 = load i32, ptr %153, align 8, !tbaa !50
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.tile_hash, ptr %152, i64 %155
  %157 = load i64, ptr %156, align 8, !tbaa !51
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %151
  %160 = load ptr, ptr %112, align 8, !tbaa !37
  %161 = getelementptr inbounds i8, ptr %160, i64 %157
  %162 = getelementptr inbounds %struct.tile_slot, ptr %161, i64 0, i32 5
  %163 = load i64, ptr %162, align 8, !tbaa !53
  %164 = icmp eq i64 %163, %149
  br i1 %164, label %239, label %165

165:                                              ; preds = %159, %151, %145
  %166 = icmp eq i64 %149, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(40) %124, i64 40, i1 false), !tbaa.struct !70
  %168 = call i64 @gs_next_ids(i32 noundef 1) #5
  store i64 %168, ptr %113, align 8, !tbaa !49
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi ptr [ %16, %167 ], [ %124, %165 ]
  br i1 %109, label %171, label %173

171:                                              ; preds = %169
  %172 = load i32, ptr %114, align 4, !tbaa !47
  br label %173

173:                                              ; preds = %169, %171
  %174 = phi i32 [ %172, %171 ], [ 1, %169 ]
  %175 = call i32 @clist_change_tile(ptr noundef %0, ptr noundef %130, ptr noundef %170, i32 noundef %174) #5
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %226

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %170, i64 0, i32 5
  %179 = load i16, ptr %178, align 2, !tbaa !72
  %180 = zext i16 %179 to i32
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %17) #5
  %181 = icmp ne i32 %175, -13
  %182 = icmp eq i16 %179, 1
  %183 = select i1 %181, i1 true, i1 %182
  br i1 %183, label %223, label %184

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %170, i64 0, i32 6
  %186 = load i16, ptr %185, align 4, !tbaa !73
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %188, label %223

188:                                              ; preds = %184
  %189 = call i32 @llvm.umin.i32(i32 %135, i32 %180)
  %190 = call i64 @gs_next_ids(i32 noundef %189) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 8 dereferenceable(40) %170, i64 40, i1 false), !tbaa.struct !70
  store i32 1, ptr %115, align 8, !tbaa !74
  store i16 1, ptr %116, align 2, !tbaa !72
  %191 = icmp sgt i32 %135, 0
  br i1 %191, label %192, label %223

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.gx_clist_state_s, ptr %128, i64 %129, i32 3, i32 1
  %194 = zext i32 %125 to i64
  %195 = zext nneg i32 %135 to i64
  br label %199

196:                                              ; preds = %199
  %197 = add nuw nsw i64 %200, 1
  %198 = icmp eq i64 %197, %195
  br i1 %198, label %223, label %199, !llvm.loop !75

199:                                              ; preds = %192, %196
  %200 = phi i64 [ 0, %192 ], [ %197, %196 ]
  %201 = load ptr, ptr %170, align 8, !tbaa !76
  %202 = load i32, ptr %117, align 8, !tbaa !77
  %203 = add nuw i64 %200, %194
  %204 = trunc i64 %203 to i32
  %205 = add i32 %204, %13
  %206 = urem i32 %205, %180
  %207 = mul i32 %206, %202
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i8, ptr %201, i64 %208
  store ptr %209, ptr %17, align 8, !tbaa !76
  %210 = trunc i64 %200 to i32
  %211 = urem i32 %210, %180
  %212 = zext nneg i32 %211 to i64
  %213 = add i64 %190, %212
  store i64 %213, ptr %118, align 8, !tbaa !49
  %214 = trunc i64 %200 to i32
  %215 = mul i32 %214, %3
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i8, ptr %139, i64 %216
  %218 = select i1 %119, ptr null, ptr %217
  %219 = load i32, ptr %193, align 4, !tbaa !57
  %220 = trunc i64 %203 to i32
  %221 = call i32 @clist_strip_copy_rop(ptr noundef %0, ptr noundef %218, i32 noundef %99, i32 noundef %3, i64 noundef 0, ptr noundef %5, ptr noundef nonnull %17, ptr noundef %7, i32 noundef %97, i32 noundef %220, i32 noundef %95, i32 noundef 1, i32 noundef %12, i32 noundef %219, i32 noundef %14)
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %196

223:                                              ; preds = %199, %196, %188, %177, %184
  %224 = phi i32 [ 1, %184 ], [ 1, %177 ], [ 3, %188 ], [ 3, %196 ], [ 1, %199 ]
  %225 = phi i32 [ %175, %184 ], [ %175, %177 ], [ %126, %188 ], [ %126, %196 ], [ %221, %199 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %17) #5
  br label %239

226:                                              ; preds = %173
  %227 = getelementptr inbounds %struct.gx_clist_state_s, ptr %128, i64 %129, i32 3
  %228 = load i32, ptr %227, align 8, !tbaa !56
  %229 = icmp eq i32 %228, %12
  br i1 %229, label %230, label %234

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.gx_clist_state_s, ptr %128, i64 %129, i32 3, i32 1
  %232 = load i32, ptr %231, align 4, !tbaa !57
  %233 = icmp eq i32 %232, %13
  br i1 %233, label %239, label %234

234:                                              ; preds = %230, %226
  %235 = call i32 @cmd_set_tile_phase(ptr noundef %0, ptr noundef %130, i32 noundef %12, i32 noundef %13) #5
  %236 = icmp slt i32 %235, 0
  %237 = lshr i32 %235, 31
  %238 = select i1 %236, i32 %235, i32 %126
  br label %239

239:                                              ; preds = %234, %159, %230, %223
  %240 = phi i32 [ %224, %223 ], [ 0, %230 ], [ 0, %159 ], [ %237, %234 ]
  %241 = phi ptr [ %170, %223 ], [ %170, %230 ], [ %124, %159 ], [ %170, %234 ]
  %242 = phi i32 [ %225, %223 ], [ %126, %230 ], [ %126, %159 ], [ %238, %234 ]
  %243 = icmp eq i32 %240, 0
  br i1 %243, label %244, label %290

244:                                              ; preds = %239, %141
  %245 = phi ptr [ %241, %239 ], [ %124, %141 ]
  %246 = phi i32 [ %242, %239 ], [ %126, %141 ]
  br i1 %109, label %251, label %247

247:                                              ; preds = %244
  %248 = load i64, ptr %7, align 8, !tbaa !46
  %249 = load i64, ptr %120, align 8, !tbaa !46
  %250 = call i32 @cmd_set_tile_colors(ptr noundef %0, ptr noundef %130, i64 noundef %248, i64 noundef %249) #5
  br label %253

251:                                              ; preds = %244
  %252 = call i32 @cmd_set_tile_colors(ptr noundef %0, ptr noundef %130, i64 noundef -1, i64 noundef -1) #5
  br label %253

253:                                              ; preds = %251, %247
  %254 = phi i32 [ %250, %247 ], [ %252, %251 ]
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %290, label %256

256:                                              ; preds = %253, %123
  %257 = phi ptr [ %245, %253 ], [ %124, %123 ]
  %258 = phi i32 [ %246, %253 ], [ %126, %123 ]
  %259 = getelementptr inbounds %struct.gx_clist_state_s, ptr %128, i64 %129, i32 6
  %260 = load i32, ptr %259, align 8, !tbaa !78
  %261 = icmp eq i32 %260, %14
  br i1 %261, label %265, label %262

262:                                              ; preds = %256
  %263 = call i32 @cmd_set_lop(ptr noundef %0, ptr noundef %130, i32 noundef %14) #5
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %290, label %265

265:                                              ; preds = %262, %256
  %266 = getelementptr inbounds %struct.gx_clist_state_s, ptr %128, i64 %129, i32 7
  %267 = load i16, ptr %266, align 4, !tbaa !45
  %268 = icmp eq i16 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %265
  %270 = call i32 @cmd_put_enable_lop(ptr noundef %0, ptr noundef %130, i32 noundef 1) #5
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %269
  %273 = load i32, ptr %122, align 4, !tbaa !37
  br label %290

274:                                              ; preds = %269, %265
  store i16 -1, ptr %266, align 4, !tbaa !45
  br i1 %18, label %283, label %275

275:                                              ; preds = %274
  %276 = load i64, ptr %5, align 8, !tbaa !46
  %277 = load i64, ptr %121, align 8, !tbaa !46
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %281

279:                                              ; preds = %275
  %280 = call i32 @clist_fill_rectangle(ptr noundef %0, i32 noundef %97, i32 noundef %125, i32 noundef %95, i32 noundef %135, i64 noundef %277)
  br label %285

281:                                              ; preds = %275
  %282 = call i32 @clist_copy_mono(ptr noundef %0, ptr noundef %139, i32 noundef %99, i32 noundef %3, i64 noundef %98, i32 noundef %97, i32 noundef %125, i32 noundef %95, i32 noundef %135, i64 noundef %276, i64 noundef %277)
  br label %285

283:                                              ; preds = %274
  %284 = call i32 @clist_copy_color(ptr noundef %0, ptr noundef %139, i32 noundef %99, i32 noundef %3, i64 poison, i32 noundef %97, i32 noundef %125, i32 noundef %95, i32 noundef %135)
  br label %285

285:                                              ; preds = %279, %281, %283
  %286 = phi i32 [ %280, %279 ], [ %282, %281 ], [ %284, %283 ]
  store i16 1, ptr %266, align 4, !tbaa !45
  %287 = icmp slt i32 %286, 0
  %288 = lshr i32 %286, 31
  %289 = select i1 %287, i32 %286, i32 %258
  br label %290

290:                                              ; preds = %285, %262, %253, %239, %272
  %291 = phi i32 [ 1, %272 ], [ %240, %239 ], [ 1, %253 ], [ 1, %262 ], [ %288, %285 ]
  %292 = phi ptr [ %257, %272 ], [ %241, %239 ], [ %245, %253 ], [ %257, %262 ], [ %257, %285 ]
  %293 = phi i32 [ %273, %272 ], [ %242, %239 ], [ %254, %253 ], [ %263, %262 ], [ %289, %285 ]
  switch i32 %291, label %295 [
    i32 0, label %294
    i32 3, label %294
  ]

294:                                              ; preds = %290, %290
  br i1 %133, label %123, label %295, !llvm.loop !79

295:                                              ; preds = %294, %290
  %296 = phi i32 [ %291, %290 ], [ 0, %294 ]
  %297 = icmp eq i32 %296, 0
  %298 = select i1 %297, i32 0, i32 %293
  br label %299

299:                                              ; preds = %295, %70, %34
  %300 = phi i32 [ 0, %34 ], [ 0, %70 ], [ %298, %295 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %16) #5
  ret i32 %300
}

declare i64 @gs_next_ids(i32 noundef) local_unnamed_addr #2

declare i32 @cmd_set_lop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !9, i64 56}
!6 = !{!"gx_clist_state_s", !7, i64 0, !9, i64 16, !10, i64 24, !11, i64 32, !7, i64 40, !12, i64 56, !9, i64 72, !13, i64 76, !13, i64 78, !13, i64 80, !13, i64 82, !14, i64 88, !10, i64 104}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!"gs_int_point_s", !9, i64 0, !9, i64 4}
!12 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!13 = !{!"short", !7, i64 0}
!14 = !{!"cmd_list_s", !15, i64 0, !15, i64 8}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!6, !9, i64 60}
!17 = !{!6, !9, i64 64}
!18 = !{!6, !9, i64 68}
!19 = !{!20, !9, i64 788}
!20 = !{!"gx_device_clist_writer_s", !9, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !9, i64 40, !9, i64 44, !21, i64 48, !9, i64 64, !9, i64 68, !7, i64 72, !7, i64 80, !9, i64 96, !7, i64 100, !7, i64 108, !7, i64 116, !7, i64 124, !10, i64 144, !10, i64 152, !9, i64 160, !22, i64 168, !23, i64 192, !15, i64 488, !15, i64 496, !15, i64 504, !9, i64 512, !24, i64 520, !25, i64 536, !26, i64 560, !9, i64 584, !9, i64 588, !15, i64 592, !9, i64 600, !9, i64 604, !27, i64 608, !9, i64 784, !9, i64 788, !15, i64 792, !15, i64 800, !15, i64 808, !15, i64 816, !15, i64 824, !14, i64 832, !9, i64 848, !9, i64 852, !9, i64 856, !9, i64 860, !28, i64 864, !9, i64 904, !9, i64 908, !9, i64 912, !29, i64 920, !7, i64 1240, !15, i64 1288, !10, i64 1296, !7, i64 1304, !35, i64 1312, !7, i64 1360, !10, i64 1392, !10, i64 1400, !10, i64 1408, !9, i64 1416}
!21 = !{!"gx_device_color_info_s", !9, i64 0, !9, i64 4, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14}
!22 = !{!"gx_page_device_procs_s", !15, i64 0, !15, i64 8, !15, i64 16}
!23 = !{!"gx_device_procs_s", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288}
!24 = !{!"gx_band_params_s", !9, i64 0, !9, i64 4, !10, i64 8}
!25 = !{!"gx_bits_cache_chunk_s", !15, i64 0, !15, i64 8, !9, i64 16, !9, i64 20}
!26 = !{!"gx_bits_cache_s", !15, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!27 = !{!"gx_band_page_info_s", !7, i64 0, !15, i64 64, !7, i64 72, !15, i64 136, !9, i64 144, !10, i64 152, !24, i64 160}
!28 = !{!"gx_strip_bitmap_s", !15, i64 0, !9, i64 8, !11, i64 12, !10, i64 24, !13, i64 32, !13, i64 34, !13, i64 36, !13, i64 38}
!29 = !{!"gs_imager_state_s", !15, i64 0, !30, i64 8, !33, i64 80, !9, i64 128, !13, i64 132, !9, i64 136, !31, i64 140, !34, i64 144, !9, i64 160, !9, i64 164, !15, i64 168, !7, i64 176, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !7, i64 232, !7, i64 264, !15, i64 296, !15, i64 304, !15, i64 312}
!30 = !{!"gx_line_params_s", !31, i64 0, !9, i64 4, !9, i64 8, !31, i64 12, !31, i64 16, !31, i64 20, !31, i64 24, !32, i64 32}
!31 = !{!"float", !7, i64 0}
!32 = !{!"gx_dash_params_s", !15, i64 0, !9, i64 8, !31, i64 12, !9, i64 16, !31, i64 20, !9, i64 24, !9, i64 28, !31, i64 32}
!33 = !{!"gs_matrix_fixed_s", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20, !10, i64 24, !10, i64 32, !9, i64 40}
!34 = !{!"gs_fixed_point_s", !10, i64 0, !10, i64 8}
!35 = !{!"gs_indexed_params_s", !36, i64 0, !9, i64 16, !7, i64 24, !9, i64 40}
!36 = !{!"gs_base_color_space_s", !15, i64 0, !7, i64 8}
!37 = !{!7, !7, i64 0}
!38 = !{!12, !9, i64 4}
!39 = !{!12, !9, i64 8}
!40 = !{!12, !9, i64 12}
!41 = !{!12, !9, i64 0}
!42 = !{!43, !9, i64 64}
!43 = !{!"gx_device_s", !9, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !9, i64 40, !9, i64 44, !21, i64 48, !9, i64 64, !9, i64 68, !7, i64 72, !7, i64 80, !9, i64 96, !7, i64 100, !7, i64 108, !7, i64 116, !7, i64 124, !10, i64 144, !10, i64 152, !9, i64 160, !22, i64 168, !23, i64 192}
!44 = !{!43, !9, i64 68}
!45 = !{!6, !13, i64 76}
!46 = !{!10, !10, i64 0}
!47 = !{!43, !9, i64 52}
!48 = !{!6, !10, i64 24}
!49 = !{!28, !10, i64 24}
!50 = !{!6, !9, i64 16}
!51 = !{!52, !10, i64 0}
!52 = !{!"", !10, i64 0}
!53 = !{!54, !10, i64 16}
!54 = !{!"", !55, i64 0, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14, !10, i64 16, !7, i64 24, !7, i64 25, !13, i64 26, !13, i64 28, !13, i64 30}
!55 = !{!"gx_cached_bits_head_s", !9, i64 0, !9, i64 4}
!56 = !{!6, !9, i64 32}
!57 = !{!6, !9, i64 36}
!58 = !{!6, !13, i64 78}
!59 = !{!15, !15, i64 0}
!60 = !{i64 0, i64 4, !61, i64 4, i64 4, !61, i64 8, i64 4, !61, i64 12, i64 4, !61}
!61 = !{!9, !9, i64 0}
!62 = !{i64 0, i64 4, !61, i64 4, i64 4, !61, i64 8, i64 4, !61}
!63 = !{i64 0, i64 4, !61, i64 4, i64 4, !61}
!64 = !{i64 0, i64 4, !61}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!6, !13, i64 80}
!68 = distinct !{!68, !66}
!69 = distinct !{!69, !66}
!70 = !{i64 0, i64 8, !59, i64 8, i64 4, !61, i64 12, i64 4, !61, i64 16, i64 4, !61, i64 24, i64 8, !46, i64 32, i64 2, !71, i64 34, i64 2, !71, i64 36, i64 2, !71, i64 38, i64 2, !71}
!71 = !{!13, !13, i64 0}
!72 = !{!28, !13, i64 34}
!73 = !{!28, !13, i64 36}
!74 = !{!28, !9, i64 16}
!75 = distinct !{!75, !66}
!76 = !{!28, !15, i64 0}
!77 = !{!28, !9, i64 8}
!78 = !{!6, !9, i64 72}
!79 = distinct !{!79, !66}
