; ModuleID = 'gxclpath.c'
source_filename = "gxclpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clist_select_color_t = type { i8, i8, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gx_fill_params_s = type { i32, %struct.gs_fixed_point_s, float, i32 }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_clist_writer_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, ptr, i32, %struct.gx_band_params_s, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, ptr, i32, i32, %struct.gx_band_page_info_s, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.cmd_list_s, i32, i32, i32, i32, %struct.gx_strip_bitmap_s, i32, i32, i32, %struct.gs_imager_state_s, [11 x float], ptr, i64, i8, %struct.gs_indexed_params_s, [4 x i64], i64, i64, i64, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.gx_bits_cache_chunk_s = type { ptr, ptr, i32, i32 }
%struct.gx_bits_cache_s = type { ptr, i32, i32, i32 }
%struct.gx_band_page_info_s = type { [60 x i8], ptr, [60 x i8], ptr, i32, i64, %struct.gx_band_params_s }
%struct.cmd_list_s = type { ptr, ptr }
%struct.gx_strip_bitmap_s = type { ptr, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16 }
%struct.gs_indexed_params_s = type { %struct.gs_base_color_space_s, i32, %union.anon.0, i32 }
%struct.gs_base_color_space_s = type { ptr, %union.anon }
%union.anon = type { ptr }
%union.anon.0 = type { %struct.gs_const_string_s }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gx_clip_path_s = type { %struct.gx_path_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_list_s, i8, i8, i64 }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_point_s = type { double, double }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, ptr, ptr, i32, i32 }
%struct.gx_clip_rect_s = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.gx_clist_state_s = type { [2 x i64], i32, i64, %struct.gs_int_point_s, [2 x i64], %struct.gx_cmd_rect, i32, i16, i16, i16, i16, %struct.cmd_list_s, i64 }
%struct.gx_cmd_rect = type { i32, i32, i32, i32 }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.tile_hash = type { i64 }
%struct.tile_slot = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, i8, i8, i16, i16, i16 }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_indexed_map_s = type { %struct.rc_header_s, %union.anon.1, i32, ptr }
%struct.rc_header_s = type { i64, ptr, ptr }
%union.anon.1 = type { ptr }
%struct.gs_path_enum_s = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.cmd_segment_writer_s = type { ptr, ptr, i32, ptr, i32, %struct.gs_fixed_point_s, [54 x i8] }
%struct.cmd_prefix_s = type { ptr, i32 }

@gs_clist_device_procs = external local_unnamed_addr global %struct.gx_device_procs_s, align 8
@cmd_opvar_disable_clip = external local_unnamed_addr global i8, align 1
@cmd_opvar_enable_clip = external local_unnamed_addr global i8, align 1
@gx_dc_type_pure = external local_unnamed_addr global ptr, align 8
@clist_select_color1 = external constant %struct.clist_select_color_t, align 4
@gx_dc_type_ht_binary = external local_unnamed_addr global ptr, align 8
@cmd_put_path.initial_op = internal global i8 0, align 1
@clist_segment_op_num_operands = internal unnamed_addr constant [15 x i8] c"\02\02\01\01\06\04\04\04\04\04\06\06\02\02\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @gs_clpath_init(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store ptr @clist_fill_path, ptr getelementptr inbounds (%struct.gx_device_procs_s, ptr @gs_clist_device_procs, i64 0, i32 24), align 8, !tbaa !5
  store ptr @clist_stroke_path, ptr getelementptr inbounds (%struct.gx_device_procs_s, ptr @gs_clist_device_procs, i64 0, i32 25), align 8, !tbaa !10
  store i8 -40, ptr @cmd_opvar_disable_clip, align 1, !tbaa !11
  store i8 -41, ptr @cmd_opvar_enable_clip, align 1, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_fill_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #1 {
  %7 = alloca %struct.gs_fixed_point_s, align 8
  %8 = alloca %struct.gs_fixed_rect_s, align 8
  %9 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !12
  %11 = load i32, ptr %3, align 8, !tbaa !22
  %12 = icmp eq i32 %11, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !24
  %14 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !30
  %15 = icmp eq ptr %13, %14
  %16 = select i1 %15, i8 -13, i8 -12
  %17 = select i1 %15, i8 -16, i8 -15
  %18 = select i1 %12, i8 %16, i8 %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  %19 = getelementptr inbounds %struct.gx_fill_params_s, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #10
  %20 = call i32 @gx_path_bbox(ptr noundef %2, ptr noundef nonnull %8) #10
  %21 = getelementptr inbounds %struct.gx_fill_params_s, ptr %3, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !33
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  call void @gx_adjust_if_empty(ptr noundef nonnull %8, ptr noundef nonnull %7) #10
  br label %25

25:                                               ; preds = %24, %6
  %26 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %7, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !36
  %30 = sub nsw i64 %27, %29
  %31 = lshr i64 %30, 12
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %8, i64 0, i32 1, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !37
  %35 = add i64 %29, 4095
  %36 = add i64 %35, %34
  %37 = lshr i64 %36, 12
  %38 = trunc i64 %37 to i32
  %39 = call i32 @llvm.smax.i32(i32 %32, i32 0)
  %40 = sub nsw i32 %38, %39
  %41 = call i32 @llvm.smax.i32(i32 %32, i32 0)
  %42 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %43 = load i32, ptr %42, align 4, !tbaa !38
  %44 = sub nsw i32 %43, %40
  %45 = icmp sgt i32 %41, %44
  %46 = sub nsw i32 %43, %41
  %47 = select i1 %45, i32 %46, i32 %40
  %48 = icmp sgt i32 %47, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #10
  br i1 %48, label %49, label %193

49:                                               ; preds = %25
  %50 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 6
  %51 = load float, ptr %50, align 4, !tbaa !11
  %52 = getelementptr inbounds %struct.gx_fill_params_s, ptr %3, i64 0, i32 2
  %53 = load float, ptr %52, align 8, !tbaa !42
  %54 = fcmp une float %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store float %53, ptr %50, align 4, !tbaa !11
  br label %56

56:                                               ; preds = %55, %49
  %57 = phi i32 [ 1, %55 ], [ 0, %49 ]
  %58 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 7
  %59 = load i64, ptr %58, align 8, !tbaa !11
  %60 = load i64, ptr %7, align 8, !tbaa !43
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 7, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !11
  %65 = icmp eq i64 %64, %29
  br i1 %65, label %68, label %66

66:                                               ; preds = %62, %56
  %67 = or disjoint i32 %57, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !31
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi i32 [ %67, %66 ], [ %57, %62 ]
  %70 = icmp eq ptr %5, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 53
  store ptr %5, ptr %72, align 8, !tbaa !44
  %73 = getelementptr inbounds %struct.gx_clip_path_s, ptr %5, i64 0, i32 7
  %74 = load i64, ptr %73, align 8, !tbaa !54
  %75 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 54
  %76 = load i64, ptr %75, align 8, !tbaa !61
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  store i64 %74, ptr %75, align 8, !tbaa !61
  br label %79

79:                                               ; preds = %68, %71, %78
  %80 = phi i1 [ false, %78 ], [ true, %68 ], [ true, %71 ]
  %81 = or i32 %69, 256
  %82 = select i1 %80, i32 %69, i32 %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %102, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 35
  %86 = load i32, ptr %85, align 8, !tbaa !62
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %90 = load ptr, ptr %89, align 8, !tbaa !63
  %91 = trunc i32 %82 to i16
  %92 = xor i16 %91, -1
  br label %93

93:                                               ; preds = %93, %88
  %94 = phi i32 [ %86, %88 ], [ %96, %93 ]
  %95 = phi ptr [ %90, %88 ], [ %100, %93 ]
  %96 = add nsw i32 %94, -1
  %97 = getelementptr inbounds %struct.gx_clist_state_s, ptr %95, i64 0, i32 10
  %98 = load i16, ptr %97, align 2, !tbaa !64
  %99 = and i16 %98, %92
  store i16 %99, ptr %97, align 2, !tbaa !64
  %100 = getelementptr inbounds %struct.gx_clist_state_s, ptr %95, i64 1
  %101 = icmp sgt i32 %94, 1
  br i1 %101, label %93, label %102, !llvm.loop !67

102:                                              ; preds = %93, %84, %79
  %103 = add nuw nsw i32 %47, %41
  %104 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 6, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !11
  %106 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %107 = icmp ne ptr %5, null
  %108 = zext i1 %107 to i32
  %109 = icmp eq i32 %10, 252
  %110 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %111 = getelementptr inbounds %struct.gx_fill_params_s, ptr %3, i64 0, i32 1, i32 1
  %112 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %113 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  br label %114

114:                                              ; preds = %187, %102
  %115 = phi i32 [ %41, %102 ], [ %124, %187 ]
  %116 = phi i32 [ 0, %102 ], [ %189, %187 ]
  %117 = sdiv i32 %115, %105
  %118 = load ptr, ptr %106, align 8, !tbaa !11
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds %struct.gx_clist_state_s, ptr %118, i64 %119
  %121 = add nsw i32 %117, 1
  %122 = mul nsw i32 %121, %105
  %123 = icmp slt i32 %122, %103
  %124 = call i32 @llvm.smin.i32(i32 %122, i32 %103)
  %125 = getelementptr inbounds %struct.gx_clist_state_s, ptr %118, i64 %119, i32 10
  %126 = load i16, ptr %125, align 2, !tbaa !64
  %127 = and i16 %126, 259
  %128 = icmp eq i16 %127, 259
  br i1 %128, label %133, label %129

129:                                              ; preds = %114
  %130 = call i32 @cmd_write_unknown(ptr noundef %0, ptr noundef %120, i32 noundef 259)
  %131 = icmp sgt i32 %130, -1
  %132 = select i1 %131, i32 %116, i32 %130
  br i1 %131, label %133, label %187

133:                                              ; preds = %129, %114
  %134 = phi i32 [ %132, %129 ], [ %116, %114 ]
  %135 = getelementptr inbounds %struct.gx_clist_state_s, ptr %118, i64 %119, i32 8
  %136 = load i16, ptr %135, align 2, !tbaa !69
  %137 = sext i16 %136 to i32
  %138 = xor i32 %137, %108
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = call i32 @cmd_put_enable_clip(ptr noundef %0, ptr noundef %120, i32 noundef %108) #10
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, ptr %113, align 4, !tbaa !11
  br label %187

145:                                              ; preds = %140, %133
  br i1 %109, label %146, label %155

146:                                              ; preds = %145
  %147 = getelementptr inbounds %struct.gx_clist_state_s, ptr %118, i64 %119, i32 7
  %148 = load i16, ptr %147, align 4, !tbaa !70
  %149 = icmp eq i16 %148, 1
  br i1 %149, label %150, label %171

150:                                              ; preds = %146
  %151 = call i32 @cmd_put_enable_lop(ptr noundef %0, ptr noundef %120, i32 noundef 0) #10
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %171

153:                                              ; preds = %150
  %154 = load i32, ptr %112, align 4, !tbaa !11
  br label %187

155:                                              ; preds = %145
  %156 = getelementptr inbounds %struct.gx_clist_state_s, ptr %118, i64 %119, i32 6
  %157 = load i32, ptr %156, align 8, !tbaa !71
  %158 = icmp eq i32 %10, %157
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  %160 = call i32 @cmd_set_lop(ptr noundef %0, ptr noundef %120, i32 noundef %10) #10
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %187, label %162

162:                                              ; preds = %159, %155
  %163 = getelementptr inbounds %struct.gx_clist_state_s, ptr %118, i64 %119, i32 7
  %164 = load i16, ptr %163, align 4, !tbaa !70
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = call i32 @cmd_put_enable_lop(ptr noundef %0, ptr noundef %120, i32 noundef 1) #10
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i32, ptr %110, align 4, !tbaa !11
  br label %187

171:                                              ; preds = %162, %166, %146, %150
  %172 = call i32 @cmd_put_drawing_color(ptr noundef %0, ptr noundef %120, ptr noundef nonnull %4)
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = call i32 @gx_default_fill_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #10
  br label %187

176:                                              ; preds = %171
  %177 = sext i32 %115 to i64
  %178 = shl nsw i64 %177, 12
  %179 = load i64, ptr %111, align 8, !tbaa !72
  %180 = sub nsw i64 %178, %179
  %181 = sext i32 %124 to i64
  %182 = shl nsw i64 %181, 12
  %183 = add nsw i64 %179, %182
  %184 = call fastcc i32 @cmd_put_path(ptr noundef %0, ptr noundef %120, ptr noundef %2, i64 noundef %180, i64 noundef %183, i8 noundef zeroext %18, i32 noundef 1, i32 noundef 0)
  %185 = icmp sgt i32 %184, -1
  %186 = select i1 %185, i32 %134, i32 %184
  br label %187

187:                                              ; preds = %176, %159, %129, %174, %169, %153, %143
  %188 = phi i1 [ false, %143 ], [ false, %153 ], [ false, %174 ], [ false, %169 ], [ false, %129 ], [ false, %159 ], [ %185, %176 ]
  %189 = phi i32 [ %144, %143 ], [ %154, %153 ], [ %175, %174 ], [ %170, %169 ], [ %132, %129 ], [ %160, %159 ], [ %186, %176 ]
  %190 = select i1 %188, i1 %123, i1 false
  br i1 %190, label %114, label %191

191:                                              ; preds = %187
  %192 = select i1 %188, i32 0, i32 %189
  br label %193

193:                                              ; preds = %191, %25
  %194 = phi i32 [ 0, %25 ], [ %192, %191 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  ret i32 %194
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_stroke_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #1 {
  %7 = alloca %struct.gs_fixed_rect_s, align 8
  %8 = alloca %struct.gs_fixed_point_s, align 8
  %9 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1
  %10 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 7
  %11 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 7, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  %13 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !12
  %15 = load ptr, ptr %4, align 8, !tbaa !24
  %16 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !30
  %17 = icmp eq ptr %15, %16
  %18 = select i1 %17, i8 -10, i8 -9
  %19 = call i32 @gx_path_bbox(ptr noundef %2, ptr noundef nonnull %7) #10
  %20 = call i32 @gx_stroke_path_expansion(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %8) #10
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %24 = load i32, ptr %23, align 4, !tbaa !38
  br label %52

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !36
  %28 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 7, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !74
  %30 = add nsw i64 %29, %27
  %31 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %7, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !34
  %33 = sub nsw i64 %32, %30
  %34 = lshr i64 %33, 12
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %7, i64 0, i32 1, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !37
  %38 = add i64 %30, 4095
  %39 = add i64 %38, %37
  %40 = lshr i64 %39, 12
  %41 = trunc i64 %40 to i32
  %42 = call i32 @llvm.smax.i32(i32 %35, i32 0)
  %43 = sub nsw i32 %41, %42
  %44 = call i32 @llvm.smax.i32(i32 %35, i32 0)
  %45 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %46 = load i32, ptr %45, align 4, !tbaa !38
  %47 = sub nsw i32 %46, %43
  %48 = icmp sgt i32 %44, %47
  %49 = sub nsw i32 %46, %44
  %50 = select i1 %48, i32 %49, i32 %43
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %371, label %52

52:                                               ; preds = %25, %22
  %53 = phi i32 [ %24, %22 ], [ %50, %25 ]
  %54 = phi i32 [ 0, %22 ], [ %44, %25 ]
  %55 = phi i64 [ 0, %22 ], [ %30, %25 ]
  %56 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 52
  %57 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1
  %58 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 7
  store ptr %56, ptr %58, align 8, !tbaa !11
  %59 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 7, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !11
  %61 = icmp eq i32 %60, %12
  br i1 %61, label %62, label %94

62:                                               ; preds = %52
  %63 = icmp eq i32 %12, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %62
  %65 = load ptr, ptr %10, align 8, !tbaa !75
  %66 = sext i32 %12 to i64
  %67 = shl nsw i64 %66, 2
  %68 = call i32 @bcmp(ptr nonnull %56, ptr %65, i64 %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %64, %62
  %71 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 7, i32 2
  %72 = load float, ptr %71, align 4, !tbaa !11
  %73 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 7, i32 2
  %74 = load float, ptr %73, align 4, !tbaa !76
  %75 = fcmp une float %72, %74
  br i1 %75, label %94, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 7, i32 3
  %78 = load i32, ptr %77, align 8, !tbaa !11
  %79 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 7, i32 3
  %80 = load i32, ptr %79, align 8, !tbaa !77
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 5
  %84 = load float, ptr %83, align 4, !tbaa !11
  %85 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 5
  %86 = load float, ptr %85, align 4, !tbaa !78
  %87 = fcmp une float %84, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 6
  %90 = load float, ptr %89, align 8, !tbaa !11
  %91 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 6
  %92 = load float, ptr %91, align 8, !tbaa !79
  %93 = fcmp une float %90, %92
  br i1 %93, label %94, label %115

94:                                               ; preds = %88, %82, %76, %70, %64, %52
  %95 = icmp sgt i32 %12, 11
  br i1 %95, label %96, label %98

96:                                               ; preds = %94
  %97 = call i32 @gx_default_stroke_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5) #10
  br label %371

98:                                               ; preds = %94
  %99 = load ptr, ptr %10, align 8, !tbaa !75
  %100 = load i32, ptr %11, align 8, !tbaa !73
  %101 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 7, i32 2
  %102 = load float, ptr %101, align 4, !tbaa !76
  %103 = fpext float %102 to double
  %104 = call i32 @gx_set_dash(ptr noundef nonnull %58, ptr noundef %99, i32 noundef %100, double noundef %103, ptr noundef null) #10
  %105 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 7, i32 3
  %106 = load i32, ptr %105, align 8, !tbaa !77
  %107 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 7, i32 3
  store i32 %106, ptr %107, align 8, !tbaa !11
  %108 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 5
  %109 = load float, ptr %108, align 4, !tbaa !78
  %110 = fpext float %109 to double
  %111 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 6
  %112 = load float, ptr %111, align 8, !tbaa !79
  %113 = fptosi float %112 to i32
  %114 = call i32 @gx_set_dot_length(ptr noundef nonnull %57, double noundef %110, i32 noundef %113) #10
  br label %115

115:                                              ; preds = %98, %88
  %116 = phi i32 [ 128, %98 ], [ 0, %88 ]
  %117 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 6
  %118 = load float, ptr %117, align 4, !tbaa !11
  %119 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 6
  %120 = load float, ptr %119, align 4, !tbaa !80
  %121 = fcmp une float %118, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = or disjoint i32 %116, 1
  store float %120, ptr %117, align 4, !tbaa !11
  br label %124

124:                                              ; preds = %122, %115
  %125 = phi i32 [ %123, %122 ], [ %116, %115 ]
  %126 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 7
  %127 = load i64, ptr %126, align 8, !tbaa !11
  %128 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 7
  %129 = load i64, ptr %128, align 8, !tbaa !81
  %130 = icmp eq i64 %127, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 7, i32 1
  %133 = load i64, ptr %132, align 8, !tbaa !11
  %134 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 7, i32 1
  %135 = load i64, ptr %134, align 8, !tbaa !74
  %136 = icmp eq i64 %133, %135
  br i1 %136, label %139, label %137

137:                                              ; preds = %131, %124
  %138 = or i32 %125, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %126, ptr noundef nonnull align 8 dereferenceable(16) %128, i64 16, i1 false), !tbaa.struct !31
  br label %139

139:                                              ; preds = %137, %131
  %140 = phi i32 [ %138, %137 ], [ %125, %131 ]
  %141 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 2
  %142 = load float, ptr %141, align 8, !tbaa !11
  %143 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2
  %144 = load float, ptr %143, align 8, !tbaa !82
  %145 = fcmp une float %142, %144
  br i1 %145, label %176, label %146

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 2, i32 1
  %148 = load float, ptr %147, align 4, !tbaa !11
  %149 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2, i32 1
  %150 = load float, ptr %149, align 4, !tbaa !83
  %151 = fcmp une float %148, %150
  br i1 %151, label %176, label %152

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 2, i32 2
  %154 = load float, ptr %153, align 8, !tbaa !11
  %155 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2, i32 2
  %156 = load float, ptr %155, align 8, !tbaa !84
  %157 = fcmp une float %154, %156
  br i1 %157, label %176, label %158

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 2, i32 3
  %160 = load float, ptr %159, align 4, !tbaa !11
  %161 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2, i32 3
  %162 = load float, ptr %161, align 4, !tbaa !85
  %163 = fcmp une float %160, %162
  br i1 %163, label %176, label %164

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 2, i32 4
  %166 = load float, ptr %165, align 8, !tbaa !11
  %167 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2, i32 4
  %168 = load float, ptr %167, align 8, !tbaa !86
  %169 = fcmp une float %166, %168
  br i1 %169, label %176, label %170

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 2, i32 5
  %172 = load float, ptr %171, align 4, !tbaa !11
  %173 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2, i32 5
  %174 = load float, ptr %173, align 4, !tbaa !87
  %175 = fcmp une float %172, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %170, %164, %158, %152, %146, %139
  %177 = or i32 %140, 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %141, ptr noundef nonnull align 8 dereferenceable(48) %143, i64 48, i1 false), !tbaa.struct !88
  br label %178

178:                                              ; preds = %176, %170
  %179 = phi i32 [ %177, %176 ], [ %140, %170 ]
  %180 = load float, ptr %57, align 8, !tbaa !11
  %181 = load float, ptr %9, align 8, !tbaa !91
  %182 = fcmp une float %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = or i32 %179, 8
  store float %181, ptr %57, align 8, !tbaa !11
  br label %185

185:                                              ; preds = %183, %178
  %186 = phi i32 [ %184, %183 ], [ %179, %178 ]
  %187 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 3
  %188 = load float, ptr %187, align 4, !tbaa !11
  %189 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 3
  %190 = load float, ptr %189, align 4, !tbaa !92
  %191 = fcmp une float %188, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %185
  %193 = or i32 %186, 16
  %194 = fpext float %190 to double
  %195 = call i32 @gx_set_miter_limit(ptr noundef nonnull %57, double noundef %194) #10
  br label %196

196:                                              ; preds = %192, %185
  %197 = phi i32 [ %193, %192 ], [ %186, %185 ]
  %198 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 1
  %199 = load i32, ptr %198, align 4, !tbaa !11
  %200 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 1
  %201 = load i32, ptr %200, align 4, !tbaa !93
  %202 = icmp eq i32 %199, %201
  br i1 %202, label %203, label %209

203:                                              ; preds = %196
  %204 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 2
  %205 = load i32, ptr %204, align 8, !tbaa !11
  %206 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 2
  %207 = load i32, ptr %206, align 8, !tbaa !94
  %208 = icmp eq i32 %205, %207
  br i1 %208, label %214, label %209

209:                                              ; preds = %203, %196
  %210 = or i32 %197, 32
  store i32 %201, ptr %198, align 4, !tbaa !11
  %211 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 1, i32 2
  %212 = load i32, ptr %211, align 8, !tbaa !94
  %213 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 2
  store i32 %212, ptr %213, align 8, !tbaa !11
  br label %214

214:                                              ; preds = %209, %203
  %215 = phi i32 [ %210, %209 ], [ %197, %203 ]
  %216 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 9
  %217 = load i32, ptr %216, align 4, !tbaa !11
  %218 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 9
  %219 = load i32, ptr %218, align 4, !tbaa !95
  %220 = icmp eq i32 %217, %219
  br i1 %220, label %221, label %233

221:                                              ; preds = %214
  %222 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 5
  %223 = load i32, ptr %222, align 8, !tbaa !11
  %224 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 5
  %225 = load i32, ptr %224, align 8, !tbaa !96
  %226 = icmp eq i32 %223, %225
  br i1 %226, label %227, label %233

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 8
  %229 = load i32, ptr %228, align 8, !tbaa !11
  %230 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 8
  %231 = load i32, ptr %230, align 8, !tbaa !97
  %232 = icmp eq i32 %229, %231
  br i1 %232, label %241, label %233

233:                                              ; preds = %227, %221, %214
  %234 = or i32 %215, 64
  store i32 %219, ptr %216, align 4, !tbaa !11
  %235 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 5
  %236 = load i32, ptr %235, align 8, !tbaa !96
  %237 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 5
  store i32 %236, ptr %237, align 8, !tbaa !11
  %238 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 8
  %239 = load i32, ptr %238, align 8, !tbaa !97
  %240 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 8
  store i32 %239, ptr %240, align 8, !tbaa !11
  br label %241

241:                                              ; preds = %233, %227
  %242 = phi i32 [ %234, %233 ], [ %215, %227 ]
  %243 = icmp eq ptr %5, null
  br i1 %243, label %252, label %244

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 53
  store ptr %5, ptr %245, align 8, !tbaa !44
  %246 = getelementptr inbounds %struct.gx_clip_path_s, ptr %5, i64 0, i32 7
  %247 = load i64, ptr %246, align 8, !tbaa !54
  %248 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 54
  %249 = load i64, ptr %248, align 8, !tbaa !61
  %250 = icmp eq i64 %247, %249
  br i1 %250, label %252, label %251

251:                                              ; preds = %244
  store i64 %247, ptr %248, align 8, !tbaa !61
  br label %252

252:                                              ; preds = %241, %244, %251
  %253 = phi i1 [ false, %251 ], [ true, %241 ], [ true, %244 ]
  %254 = or i32 %242, 256
  %255 = select i1 %253, i32 %242, i32 %254
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %275, label %257

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 35
  %259 = load i32, ptr %258, align 8, !tbaa !62
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %275

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %263 = load ptr, ptr %262, align 8, !tbaa !63
  %264 = trunc i32 %255 to i16
  %265 = xor i16 %264, -1
  br label %266

266:                                              ; preds = %266, %261
  %267 = phi i32 [ %259, %261 ], [ %269, %266 ]
  %268 = phi ptr [ %263, %261 ], [ %273, %266 ]
  %269 = add nsw i32 %267, -1
  %270 = getelementptr inbounds %struct.gx_clist_state_s, ptr %268, i64 0, i32 10
  %271 = load i16, ptr %270, align 2, !tbaa !64
  %272 = and i16 %271, %265
  store i16 %272, ptr %270, align 2, !tbaa !64
  %273 = getelementptr inbounds %struct.gx_clist_state_s, ptr %268, i64 1
  %274 = icmp sgt i32 %267, 1
  br i1 %274, label %266, label %275, !llvm.loop !67

275:                                              ; preds = %266, %257, %252
  %276 = add nsw i32 %54, %53
  %277 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 6, i32 1
  %278 = load i32, ptr %277, align 4, !tbaa !11
  %279 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %280 = icmp ne ptr %5, null
  %281 = zext i1 %280 to i32
  %282 = icmp eq i32 %14, 252
  %283 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %284 = icmp eq i32 %12, 0
  %285 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %286 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  br label %287

287:                                              ; preds = %364, %275
  %288 = phi i32 [ %54, %275 ], [ %297, %364 ]
  %289 = phi i32 [ undef, %275 ], [ %366, %364 ]
  %290 = sdiv i32 %288, %278
  %291 = load ptr, ptr %279, align 8, !tbaa !11
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds %struct.gx_clist_state_s, ptr %291, i64 %292
  %294 = add nsw i32 %290, 1
  %295 = mul nsw i32 %294, %278
  %296 = icmp sge i32 %295, %276
  %297 = call i32 @llvm.smin.i32(i32 %295, i32 %276)
  %298 = getelementptr inbounds %struct.gx_clist_state_s, ptr %291, i64 %292, i32 10
  %299 = load i16, ptr %298, align 2, !tbaa !64
  %300 = and i16 %299, 511
  %301 = icmp eq i16 %300, 511
  br i1 %301, label %306, label %302

302:                                              ; preds = %287
  %303 = call i32 @cmd_write_unknown(ptr noundef %0, ptr noundef %293, i32 noundef 511)
  %304 = icmp sgt i32 %303, -1
  %305 = select i1 %304, i32 %289, i32 %303
  br i1 %304, label %306, label %364

306:                                              ; preds = %302, %287
  %307 = phi i32 [ %305, %302 ], [ %289, %287 ]
  %308 = getelementptr inbounds %struct.gx_clist_state_s, ptr %291, i64 %292, i32 8
  %309 = load i16, ptr %308, align 2, !tbaa !69
  %310 = sext i16 %309 to i32
  %311 = xor i32 %310, %281
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %313, label %318

313:                                              ; preds = %306
  %314 = call i32 @cmd_put_enable_clip(ptr noundef %0, ptr noundef %293, i32 noundef %281) #10
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %313
  %317 = load i32, ptr %286, align 4, !tbaa !11
  br label %364

318:                                              ; preds = %313, %306
  br i1 %282, label %319, label %328

319:                                              ; preds = %318
  %320 = getelementptr inbounds %struct.gx_clist_state_s, ptr %291, i64 %292, i32 7
  %321 = load i16, ptr %320, align 4, !tbaa !70
  %322 = icmp eq i16 %321, 1
  br i1 %322, label %323, label %344

323:                                              ; preds = %319
  %324 = call i32 @cmd_put_enable_lop(ptr noundef %0, ptr noundef %293, i32 noundef 0) #10
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %344

326:                                              ; preds = %323
  %327 = load i32, ptr %285, align 4, !tbaa !11
  br label %364

328:                                              ; preds = %318
  %329 = getelementptr inbounds %struct.gx_clist_state_s, ptr %291, i64 %292, i32 6
  %330 = load i32, ptr %329, align 8, !tbaa !71
  %331 = icmp eq i32 %14, %330
  br i1 %331, label %335, label %332

332:                                              ; preds = %328
  %333 = call i32 @cmd_set_lop(ptr noundef %0, ptr noundef %293, i32 noundef %14) #10
  %334 = icmp slt i32 %333, 0
  br i1 %334, label %364, label %335

335:                                              ; preds = %332, %328
  %336 = getelementptr inbounds %struct.gx_clist_state_s, ptr %291, i64 %292, i32 7
  %337 = load i16, ptr %336, align 4, !tbaa !70
  %338 = icmp eq i16 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %335
  %340 = call i32 @cmd_put_enable_lop(ptr noundef %0, ptr noundef %293, i32 noundef 1) #10
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %339
  %343 = load i32, ptr %283, align 4, !tbaa !11
  br label %364

344:                                              ; preds = %335, %339, %319, %323
  %345 = call i32 @cmd_put_drawing_color(ptr noundef %0, ptr noundef %293, ptr noundef nonnull %4)
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %344
  %348 = call i32 @gx_default_stroke_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5) #10
  br label %364

349:                                              ; preds = %344
  br i1 %284, label %350, label %357

350:                                              ; preds = %349
  %351 = sext i32 %288 to i64
  %352 = shl nsw i64 %351, 12
  %353 = sub nsw i64 %352, %55
  %354 = sext i32 %297 to i64
  %355 = shl nsw i64 %354, 12
  %356 = add nsw i64 %355, %55
  br label %357

357:                                              ; preds = %349, %350
  %358 = phi i64 [ %353, %350 ], [ -9223372036854775808, %349 ]
  %359 = phi i64 [ %356, %350 ], [ 9223372036854775807, %349 ]
  %360 = call fastcc i32 @cmd_put_path(ptr noundef %0, ptr noundef %293, ptr noundef %2, i64 noundef %358, i64 noundef %359, i8 noundef zeroext %18, i32 noundef 0, i32 noundef -1)
  %361 = icmp slt i32 %360, 0
  %362 = lshr i32 %360, 31
  %363 = select i1 %361, i32 %360, i32 %307
  br label %364

364:                                              ; preds = %332, %357, %302, %347, %342, %326, %316
  %365 = phi i32 [ 1, %316 ], [ 1, %326 ], [ 1, %347 ], [ %362, %357 ], [ 1, %342 ], [ 1, %302 ], [ 1, %332 ]
  %366 = phi i32 [ %317, %316 ], [ %327, %326 ], [ %348, %347 ], [ %363, %357 ], [ %343, %342 ], [ %305, %302 ], [ %333, %332 ]
  %367 = icmp ne i32 %365, 0
  %368 = select i1 %367, i1 true, i1 %296
  br i1 %368, label %369, label %287

369:                                              ; preds = %364
  %370 = select i1 %367, i32 %366, i32 0
  br label %371

371:                                              ; preds = %369, %25, %96
  %372 = phi i32 [ %97, %96 ], [ 0, %25 ], [ %370, %369 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #10
  ret i32 %372
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cmd_put_drawing_color(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %2, align 8, !tbaa !24
  %5 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !30
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !11
  %10 = getelementptr inbounds [2 x i64], ptr %1, i64 0, i64 1
  %11 = load i64, ptr %10, align 8, !tbaa !32
  %12 = icmp eq i64 %9, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = tail call i32 @cmd_put_color(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @clist_select_color1, i64 noundef %9, ptr noundef nonnull %10) #10
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %88

16:                                               ; preds = %13, %7
  br label %88

17:                                               ; preds = %3
  %18 = load ptr, ptr @gx_dc_type_ht_binary, align 8, !tbaa !30
  %19 = icmp eq ptr %4, %18
  br i1 %19, label %20, label %88

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 1, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 1, i32 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 1, i32 0, i32 1, i64 1
  %26 = load i64, ptr %25, align 8, !tbaa !11
  %27 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !98
  %29 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %22, i64 0, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa !99
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 31
  %34 = load ptr, ptr %33, align 8, !tbaa !100
  %35 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !101
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.tile_hash, ptr %34, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !102
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 24
  %43 = load ptr, ptr %42, align 8, !tbaa !104
  %44 = getelementptr inbounds i8, ptr %43, i64 %39
  %45 = getelementptr inbounds %struct.tile_slot, ptr %44, i64 0, i32 5
  %46 = load i64, ptr %45, align 8, !tbaa !105
  %47 = icmp eq i64 %46, %30
  br i1 %47, label %61, label %48

48:                                               ; preds = %41, %32, %20
  %49 = icmp eq i64 %26, -1
  %50 = icmp eq i64 %24, -1
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 7, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !108
  br label %55

55:                                               ; preds = %48, %52
  %56 = phi i32 [ %54, %52 ], [ 1, %48 ]
  %57 = icmp eq i64 %30, 0
  br i1 %57, label %88, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @clist_change_tile(ptr noundef %0, ptr noundef %1, ptr noundef %22, i32 noundef %56) #10
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %88, label %61

61:                                               ; preds = %58, %41
  %62 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 4, i64 1
  %63 = load i64, ptr %62, align 8, !tbaa !32
  %64 = icmp eq i64 %26, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 4
  %67 = load i64, ptr %66, align 8, !tbaa !32
  %68 = icmp eq i64 %24, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65, %61
  %70 = tail call i32 @cmd_set_tile_colors(ptr noundef %0, ptr noundef %1, i64 noundef %24, i64 noundef %26) #10
  %71 = icmp sgt i32 %70, -1
  %72 = tail call i32 @llvm.smin.i32(i32 %70, i32 -1)
  br i1 %71, label %73, label %88

73:                                               ; preds = %65, %69
  %74 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 2
  %75 = load i32, ptr %74, align 8, !tbaa !109
  %76 = getelementptr inbounds %struct.gx_device_color_s, ptr %2, i64 0, i32 2, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !110
  %78 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 3
  %79 = load i32, ptr %78, align 8, !tbaa !111
  %80 = icmp eq i32 %75, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 3, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !112
  %84 = icmp eq i32 %77, %83
  br i1 %84, label %88, label %85

85:                                               ; preds = %81, %73
  %86 = tail call i32 @cmd_set_tile_phase(ptr noundef %0, ptr noundef %1, i32 noundef %75, i32 noundef %77) #10
  %87 = tail call i32 @llvm.smin.i32(i32 %86, i32 0)
  br label %88

88:                                               ; preds = %81, %85, %17, %58, %55, %16, %13, %69
  %89 = phi i32 [ %72, %69 ], [ 0, %16 ], [ %14, %13 ], [ -1, %55 ], [ -1, %58 ], [ -1, %17 ], [ 0, %81 ], [ %87, %85 ]
  ret i32 %89
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @cmd_put_color(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @clist_change_tile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cmd_set_tile_colors(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @cmd_set_tile_phase(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @cmd_clear_known(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 35
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = trunc i32 %1 to i16
  %10 = xor i16 %9, -1
  br label %11

11:                                               ; preds = %6, %11
  %12 = phi i32 [ %4, %6 ], [ %14, %11 ]
  %13 = phi ptr [ %8, %6 ], [ %18, %11 ]
  %14 = add nsw i32 %12, -1
  %15 = getelementptr inbounds %struct.gx_clist_state_s, ptr %13, i64 0, i32 10
  %16 = load i16, ptr %15, align 2, !tbaa !64
  %17 = and i16 %16, %10
  store i16 %17, ptr %15, align 2, !tbaa !64
  %18 = getelementptr inbounds %struct.gx_clist_state_s, ptr %13, i64 1
  %19 = icmp sgt i32 %12, 1
  br i1 %19, label %11, label %20, !llvm.loop !67

20:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @cmd_check_clip_path(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 53
  store ptr %1, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.gx_clip_path_s, ptr %1, i64 0, i32 7
  %7 = load i64, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 54
  %9 = load i64, ptr %8, align 8, !tbaa !61
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  store i64 %7, ptr %8, align 8, !tbaa !61
  br label %12

12:                                               ; preds = %4, %2, %11
  %13 = phi i32 [ 1, %11 ], [ 0, %2 ], [ 0, %4 ]
  ret i32 %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @cmd_for_matrix(ptr noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = alloca [6 x float], align 16
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %5 = load float, ptr %1, align 4, !tbaa !113
  store float %5, ptr %3, align 16, !tbaa !89
  %6 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !115
  %8 = getelementptr inbounds [6 x float], ptr %3, i64 0, i64 1
  store float %7, ptr %8, align 4, !tbaa !89
  %9 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 2
  %10 = load float, ptr %9, align 4, !tbaa !116
  %11 = getelementptr inbounds [6 x float], ptr %3, i64 0, i64 2
  store float %10, ptr %11, align 8, !tbaa !89
  %12 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 3
  %13 = load float, ptr %12, align 4, !tbaa !117
  %14 = getelementptr inbounds [6 x float], ptr %3, i64 0, i64 3
  store float %13, ptr %14, align 4, !tbaa !89
  %15 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 4
  %16 = load float, ptr %15, align 4, !tbaa !118
  %17 = getelementptr inbounds [6 x float], ptr %3, i64 0, i64 4
  store float %16, ptr %17, align 16, !tbaa !89
  %18 = getelementptr inbounds %struct.gs_matrix_s, ptr %1, i64 0, i32 5
  %19 = load float, ptr %18, align 4, !tbaa !119
  %20 = getelementptr inbounds [6 x float], ptr %3, i64 0, i64 5
  store float %19, ptr %20, align 4, !tbaa !89
  br label %21

21:                                               ; preds = %2, %48
  %22 = phi i64 [ 0, %2 ], [ %51, %48 ]
  %23 = phi ptr [ %4, %2 ], [ %50, %48 ]
  %24 = phi i8 [ 0, %2 ], [ %49, %48 ]
  %25 = getelementptr inbounds [6 x float], ptr %3, i64 0, i64 %22
  %26 = load float, ptr %25, align 8, !tbaa !89
  %27 = and i64 %22, 4294967294
  %28 = xor i64 %27, 3
  %29 = getelementptr inbounds [6 x float], ptr %3, i64 0, i64 %28
  %30 = load float, ptr %29, align 4, !tbaa !89
  %31 = shl i8 %24, 2
  %32 = fcmp une float %26, 0.000000e+00
  %33 = fcmp une float %30, 0.000000e+00
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %21
  store float %26, ptr %23, align 1
  %36 = getelementptr inbounds i8, ptr %23, i64 4
  %37 = fcmp oeq float %30, %26
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = or disjoint i8 %31, 1
  br label %48

40:                                               ; preds = %35
  %41 = fneg float %26
  %42 = fcmp oeq float %30, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = or disjoint i8 %31, 2
  br label %48

45:                                               ; preds = %40
  %46 = or disjoint i8 %31, 3
  store float %30, ptr %36, align 1
  %47 = getelementptr inbounds i8, ptr %23, i64 8
  br label %48

48:                                               ; preds = %38, %45, %43, %21
  %49 = phi i8 [ %39, %38 ], [ %44, %43 ], [ %46, %45 ], [ %31, %21 ]
  %50 = phi ptr [ %36, %38 ], [ %36, %43 ], [ %47, %45 ], [ %23, %21 ]
  %51 = add nuw nsw i64 %22, 2
  %52 = icmp eq i64 %22, 0
  br i1 %52, label %21, label %53, !llvm.loop !120

53:                                               ; preds = %48, %64
  %54 = phi i64 [ %67, %64 ], [ 4, %48 ]
  %55 = phi ptr [ %66, %64 ], [ %50, %48 ]
  %56 = phi i8 [ %65, %64 ], [ %49, %48 ]
  %57 = getelementptr inbounds [6 x float], ptr %3, i64 0, i64 %54
  %58 = load float, ptr %57, align 4, !tbaa !89
  %59 = shl i8 %56, 1
  %60 = fcmp une float %58, 0.000000e+00
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = or disjoint i8 %59, 1
  store float %58, ptr %55, align 1
  %63 = getelementptr inbounds i8, ptr %55, i64 4
  br label %64

64:                                               ; preds = %61, %53
  %65 = phi i8 [ %62, %61 ], [ %59, %53 ]
  %66 = phi ptr [ %63, %61 ], [ %55, %53 ]
  %67 = add nuw nsw i64 %54, 1
  %68 = icmp eq i64 %67, 6
  br i1 %68, label %69, label %53, !llvm.loop !121

69:                                               ; preds = %64
  %70 = shl i8 %65, 2
  store i8 %70, ptr %0, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret ptr %66
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local i32 @cmd_write_unknown(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca [6 x float], align 16
  %5 = alloca [25 x i8], align 16
  %6 = alloca %struct.gs_fixed_rect_s, align 8
  %7 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 10
  %8 = load i16, ptr %7, align 2, !tbaa !64
  %9 = zext i16 %8 to i32
  %10 = xor i32 %9, -1
  %11 = and i32 %10, %2
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %16 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %15, i32 noundef 5) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %20 = load i32, ptr %19, align 4, !tbaa !122
  br label %27

21:                                               ; preds = %14
  store i8 -48, ptr %16, align 1, !tbaa !11
  %22 = getelementptr inbounds i8, ptr %16, i64 1
  %23 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 6
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %22, align 1
  %25 = load i16, ptr %7, align 2, !tbaa !64
  %26 = or i16 %25, 1
  store i16 %26, ptr %7, align 2, !tbaa !64
  br label %27

27:                                               ; preds = %21, %18
  %28 = phi i32 [ %20, %18 ], [ undef, %21 ]
  br i1 %17, label %480, label %29

29:                                               ; preds = %27, %3
  %30 = phi i32 [ %28, %27 ], [ undef, %3 ]
  %31 = and i32 %11, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %35 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %34, i32 noundef 17) #10
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %39 = load i32, ptr %38, align 4, !tbaa !122
  br label %49

40:                                               ; preds = %33
  store i8 -47, ptr %35, align 1, !tbaa !11
  %41 = getelementptr inbounds i8, ptr %35, i64 1
  %42 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 7
  %43 = load i64, ptr %42, align 8
  store i64 %43, ptr %41, align 1
  %44 = getelementptr inbounds i8, ptr %35, i64 9
  %45 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 7, i32 1
  %46 = load i64, ptr %45, align 8
  store i64 %46, ptr %44, align 1
  %47 = load i16, ptr %7, align 2, !tbaa !64
  %48 = or i16 %47, 2
  store i16 %48, ptr %7, align 2, !tbaa !64
  br label %49

49:                                               ; preds = %40, %37
  %50 = phi i32 [ %39, %37 ], [ %30, %40 ]
  br i1 %36, label %480, label %51

51:                                               ; preds = %49, %29
  %52 = phi i32 [ %50, %49 ], [ %30, %29 ]
  %53 = and i32 %11, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %141, label %55

55:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %5) #10
  %56 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 2
  %57 = getelementptr inbounds i8, ptr %5, i64 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %58 = load float, ptr %56, align 4, !tbaa !113
  store float %58, ptr %4, align 16, !tbaa !89
  %59 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 2, i32 1
  %60 = load float, ptr %59, align 4, !tbaa !115
  %61 = getelementptr inbounds [6 x float], ptr %4, i64 0, i64 1
  store float %60, ptr %61, align 4, !tbaa !89
  %62 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 2, i32 2
  %63 = load float, ptr %62, align 4, !tbaa !116
  %64 = getelementptr inbounds [6 x float], ptr %4, i64 0, i64 2
  store float %63, ptr %64, align 8, !tbaa !89
  %65 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 2, i32 3
  %66 = load float, ptr %65, align 4, !tbaa !117
  %67 = getelementptr inbounds [6 x float], ptr %4, i64 0, i64 3
  store float %66, ptr %67, align 4, !tbaa !89
  %68 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 2, i32 4
  %69 = load float, ptr %68, align 4, !tbaa !118
  %70 = getelementptr inbounds [6 x float], ptr %4, i64 0, i64 4
  store float %69, ptr %70, align 16, !tbaa !89
  %71 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 2, i32 5
  %72 = load float, ptr %71, align 4, !tbaa !119
  %73 = getelementptr inbounds [6 x float], ptr %4, i64 0, i64 5
  store float %72, ptr %73, align 4, !tbaa !89
  br label %74

74:                                               ; preds = %100, %55
  %75 = phi i64 [ 0, %55 ], [ %103, %100 ]
  %76 = phi ptr [ %57, %55 ], [ %102, %100 ]
  %77 = phi i8 [ 0, %55 ], [ %101, %100 ]
  %78 = getelementptr inbounds [6 x float], ptr %4, i64 0, i64 %75
  %79 = load float, ptr %78, align 8, !tbaa !89
  %80 = xor i64 %75, 3
  %81 = getelementptr inbounds [6 x float], ptr %4, i64 0, i64 %80
  %82 = load float, ptr %81, align 4, !tbaa !89
  %83 = shl i8 %77, 2
  %84 = fcmp une float %79, 0.000000e+00
  %85 = fcmp une float %82, 0.000000e+00
  %86 = select i1 %84, i1 true, i1 %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %74
  store float %79, ptr %76, align 1
  %88 = getelementptr inbounds i8, ptr %76, i64 4
  %89 = fcmp oeq float %82, %79
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = or disjoint i8 %83, 1
  br label %100

92:                                               ; preds = %87
  %93 = fneg float %79
  %94 = fcmp oeq float %82, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = or disjoint i8 %83, 2
  br label %100

97:                                               ; preds = %92
  %98 = or disjoint i8 %83, 3
  store float %82, ptr %88, align 1
  %99 = getelementptr inbounds i8, ptr %76, i64 8
  br label %100

100:                                              ; preds = %97, %95, %90, %74
  %101 = phi i8 [ %91, %90 ], [ %96, %95 ], [ %98, %97 ], [ %83, %74 ]
  %102 = phi ptr [ %88, %90 ], [ %88, %95 ], [ %99, %97 ], [ %76, %74 ]
  %103 = add nuw nsw i64 %75, 2
  %104 = icmp eq i64 %75, 0
  br i1 %104, label %74, label %105, !llvm.loop !120

105:                                              ; preds = %100, %116
  %106 = phi i64 [ %119, %116 ], [ 4, %100 ]
  %107 = phi ptr [ %118, %116 ], [ %102, %100 ]
  %108 = phi i8 [ %117, %116 ], [ %101, %100 ]
  %109 = getelementptr inbounds [6 x float], ptr %4, i64 0, i64 %106
  %110 = load float, ptr %109, align 4, !tbaa !89
  %111 = shl i8 %108, 1
  %112 = fcmp une float %110, 0.000000e+00
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = or disjoint i8 %111, 1
  store float %110, ptr %107, align 1
  %115 = getelementptr inbounds i8, ptr %107, i64 4
  br label %116

116:                                              ; preds = %113, %105
  %117 = phi i8 [ %114, %113 ], [ %111, %105 ]
  %118 = phi ptr [ %115, %113 ], [ %107, %105 ]
  %119 = add nuw nsw i64 %106, 1
  %120 = icmp eq i64 %119, 6
  br i1 %120, label %121, label %105, !llvm.loop !121

121:                                              ; preds = %116
  %122 = shl i8 %117, 2
  store i8 %122, ptr %5, align 16, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  %123 = ptrtoint ptr %118 to i64
  %124 = ptrtoint ptr %5 to i64
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  %127 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %128 = add i32 %126, 1
  %129 = call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %127, i32 noundef %128) #10
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %121
  %132 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %133 = load i32, ptr %132, align 4, !tbaa !122
  br label %139

134:                                              ; preds = %121
  store i8 -46, ptr %129, align 1, !tbaa !11
  %135 = getelementptr inbounds i8, ptr %129, i64 1
  %136 = and i64 %125, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %135, ptr nonnull align 16 %5, i64 %136, i1 false)
  %137 = load i16, ptr %7, align 2, !tbaa !64
  %138 = or i16 %137, 4
  store i16 %138, ptr %7, align 2, !tbaa !64
  br label %139

139:                                              ; preds = %134, %131
  %140 = phi i32 [ %133, %131 ], [ %52, %134 ]
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %5) #10
  br i1 %130, label %480, label %141

141:                                              ; preds = %139, %51
  %142 = phi i32 [ %140, %139 ], [ %52, %51 ]
  %143 = and i32 %11, 8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %161, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1
  %147 = load float, ptr %146, align 8, !tbaa !123
  %148 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %149 = call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %148, i32 noundef 5) #10
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %153 = load i32, ptr %152, align 4, !tbaa !122
  br label %159

154:                                              ; preds = %145
  %155 = fmul float %147, 2.000000e+00
  store i8 -45, ptr %149, align 1, !tbaa !11
  %156 = getelementptr inbounds i8, ptr %149, i64 1
  store float %155, ptr %156, align 1
  %157 = load i16, ptr %7, align 2, !tbaa !64
  %158 = or i16 %157, 8
  store i16 %158, ptr %7, align 2, !tbaa !64
  br label %159

159:                                              ; preds = %154, %151
  %160 = phi i32 [ %153, %151 ], [ %142, %154 ]
  br i1 %150, label %480, label %161

161:                                              ; preds = %159, %141
  %162 = phi i32 [ %160, %159 ], [ %142, %141 ]
  %163 = and i32 %11, 16
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %180, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %167 = call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %166, i32 noundef 5) #10
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %171 = load i32, ptr %170, align 4, !tbaa !122
  br label %178

172:                                              ; preds = %165
  store i8 -43, ptr %167, align 1, !tbaa !11
  %173 = getelementptr inbounds i8, ptr %167, i64 1
  %174 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 3
  %175 = load i32, ptr %174, align 4
  store i32 %175, ptr %173, align 1
  %176 = load i16, ptr %7, align 2, !tbaa !64
  %177 = or i16 %176, 16
  store i16 %177, ptr %7, align 2, !tbaa !64
  br label %178

178:                                              ; preds = %172, %169
  %179 = phi i32 [ %171, %169 ], [ %162, %172 ]
  br i1 %168, label %480, label %180

180:                                              ; preds = %178, %161
  %181 = phi i32 [ %179, %178 ], [ %162, %161 ]
  %182 = and i32 %11, 32
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %204, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %186 = call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %185, i32 noundef 2) #10
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %190 = load i32, ptr %189, align 4, !tbaa !122
  br label %202

191:                                              ; preds = %184
  store i8 -44, ptr %186, align 1, !tbaa !11
  %192 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 1
  %193 = load i32, ptr %192, align 4, !tbaa !124
  %194 = shl i32 %193, 3
  %195 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 2
  %196 = load i32, ptr %195, align 8, !tbaa !125
  %197 = add i32 %194, %196
  %198 = trunc i32 %197 to i8
  %199 = getelementptr inbounds i8, ptr %186, i64 1
  store i8 %198, ptr %199, align 1, !tbaa !11
  %200 = load i16, ptr %7, align 2, !tbaa !64
  %201 = or i16 %200, 32
  store i16 %201, ptr %7, align 2, !tbaa !64
  br label %202

202:                                              ; preds = %191, %188
  %203 = phi i32 [ %190, %188 ], [ %181, %191 ]
  br i1 %187, label %480, label %204

204:                                              ; preds = %202, %180
  %205 = phi i32 [ %203, %202 ], [ %181, %180 ]
  %206 = and i32 %11, 64
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %235, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %210 = call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %209, i32 noundef 2) #10
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %214 = load i32, ptr %213, align 4, !tbaa !122
  br label %233

215:                                              ; preds = %208
  store i8 -44, ptr %210, align 1, !tbaa !11
  %216 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 9
  %217 = load i32, ptr %216, align 4, !tbaa !126
  %218 = icmp eq i32 %217, 0
  %219 = select i1 %218, i8 64, i8 68
  %220 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 5
  %221 = load i32, ptr %220, align 8, !tbaa !127
  %222 = icmp eq i32 %221, 0
  %223 = select i1 %222, i8 0, i8 2
  %224 = or disjoint i8 %223, %219
  %225 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 8
  %226 = load i32, ptr %225, align 8, !tbaa !128
  %227 = icmp ne i32 %226, 0
  %228 = zext i1 %227 to i8
  %229 = or disjoint i8 %224, %228
  %230 = getelementptr inbounds i8, ptr %210, i64 1
  store i8 %229, ptr %230, align 1, !tbaa !11
  %231 = load i16, ptr %7, align 2, !tbaa !64
  %232 = or i16 %231, 64
  store i16 %232, ptr %7, align 2, !tbaa !64
  br label %233

233:                                              ; preds = %215, %212
  %234 = phi i32 [ %214, %212 ], [ %205, %215 ]
  br i1 %211, label %480, label %235

235:                                              ; preds = %233, %204
  %236 = phi i32 [ %234, %233 ], [ %205, %204 ]
  %237 = and i32 %11, 128
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %281, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 7
  %241 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 7, i32 1
  %242 = load i32, ptr %241, align 8, !tbaa !129
  %243 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %244 = shl i32 %242, 2
  %245 = add i32 %244, 10
  %246 = call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %243, i32 noundef %245) #10
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %239
  %249 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %250 = load i32, ptr %249, align 4, !tbaa !122
  br label %279

251:                                              ; preds = %239
  store i8 -42, ptr %246, align 1, !tbaa !11
  %252 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 7, i32 3
  %253 = load i32, ptr %252, align 8, !tbaa !130
  %254 = icmp eq i32 %253, 0
  %255 = select i1 %254, i32 0, i32 128
  %256 = add nsw i32 %255, %242
  %257 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 6
  %258 = load float, ptr %257, align 8, !tbaa !131
  %259 = fcmp une float %258, 0.000000e+00
  %260 = select i1 %259, i32 64, i32 0
  %261 = add nsw i32 %256, %260
  %262 = trunc i32 %261 to i8
  %263 = getelementptr inbounds i8, ptr %246, i64 1
  store i8 %262, ptr %263, align 1, !tbaa !11
  %264 = getelementptr inbounds i8, ptr %246, i64 2
  %265 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 5
  %266 = load i32, ptr %265, align 4
  store i32 %266, ptr %264, align 1
  %267 = getelementptr inbounds i8, ptr %246, i64 6
  %268 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 1, i32 7, i32 2
  %269 = load i32, ptr %268, align 4
  store i32 %269, ptr %267, align 1
  %270 = icmp eq i32 %242, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %251
  %272 = getelementptr inbounds i8, ptr %246, i64 10
  %273 = load ptr, ptr %240, align 8, !tbaa !132
  %274 = sext i32 %242 to i64
  %275 = shl nsw i64 %274, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %272, ptr align 4 %273, i64 %275, i1 false)
  br label %276

276:                                              ; preds = %271, %251
  %277 = load i16, ptr %7, align 2, !tbaa !64
  %278 = or i16 %277, 128
  store i16 %278, ptr %7, align 2, !tbaa !64
  br label %279

279:                                              ; preds = %276, %248
  %280 = phi i32 [ %250, %248 ], [ %236, %276 ]
  br i1 %247, label %480, label %281

281:                                              ; preds = %279, %235
  %282 = phi i32 [ %280, %279 ], [ %236, %235 ]
  %283 = and i32 %11, 256
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %410, label %285

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 53
  %287 = load ptr, ptr %286, align 8, !tbaa !44
  %288 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 6, i32 1
  %289 = load i32, ptr %288, align 4, !tbaa !133
  %290 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %291 = load ptr, ptr %290, align 8, !tbaa !63
  %292 = ptrtoint ptr %1 to i64
  %293 = ptrtoint ptr %291 to i64
  %294 = sub i64 %292, %293
  %295 = sdiv exact i64 %294, 112
  %296 = trunc i64 %295 to i32
  %297 = mul i32 %289, %296
  %298 = add nsw i32 %297, %289
  %299 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 9
  %300 = load i32, ptr %299, align 4, !tbaa !134
  %301 = call i32 @llvm.smin.i32(i32 %298, i32 %300)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  %302 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %303 = call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %302, i32 noundef 1) #10
  %304 = icmp eq ptr %303, null
  br i1 %304, label %305, label %308

305:                                              ; preds = %285
  %306 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %307 = load i32, ptr %306, align 4, !tbaa !122
  br label %407

308:                                              ; preds = %285
  store i8 -39, ptr %303, align 1, !tbaa !11
  %309 = getelementptr inbounds %struct.gx_clip_path_s, ptr %287, i64 0, i32 5
  %310 = load i8, ptr %309, align 8, !tbaa !135
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %356, label %312

312:                                              ; preds = %308
  %313 = call i32 @gx_path_is_rectangle(ptr noundef %287, ptr noundef nonnull %6) #10
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %340, label %315

315:                                              ; preds = %312
  %316 = load i64, ptr %6, align 8, !tbaa !136
  %317 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %6, i64 0, i32 1
  %318 = load i64, ptr %317, align 8, !tbaa !34
  %319 = or i64 %318, %316
  %320 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %6, i64 0, i32 1
  %321 = load i64, ptr %320, align 8, !tbaa !137
  %322 = or i64 %319, %321
  %323 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %6, i64 0, i32 1, i32 1
  %324 = load i64, ptr %323, align 8, !tbaa !37
  %325 = or i64 %322, %324
  %326 = and i64 %325, 4095
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %328, label %340

328:                                              ; preds = %315
  %329 = lshr i64 %316, 12
  %330 = trunc i64 %329 to i32
  %331 = lshr i64 %318, 12
  %332 = trunc i64 %331 to i32
  %333 = sub nsw i64 %321, %316
  %334 = lshr i64 %333, 12
  %335 = trunc i64 %334 to i32
  %336 = sub nsw i64 %324, %318
  %337 = lshr i64 %336, 12
  %338 = trunc i64 %337 to i32
  %339 = call i32 @cmd_write_rect_cmd(ptr noundef %0, ptr noundef %1, i32 noundef 48, i32 noundef %330, i32 noundef %332, i32 noundef %335, i32 noundef %338) #10
  br label %352

340:                                              ; preds = %315, %312
  %341 = sext i32 %297 to i64
  %342 = shl nsw i64 %341, 12
  %343 = add nsw i64 %342, -2048
  %344 = sext i32 %301 to i64
  %345 = shl nsw i64 %344, 12
  %346 = or disjoint i64 %345, 2048
  %347 = getelementptr inbounds %struct.gx_clip_path_s, ptr %287, i64 0, i32 1
  %348 = load i32, ptr %347, align 8, !tbaa !138
  %349 = icmp eq i32 %348, 1
  %350 = select i1 %349, i8 -13, i8 -16
  %351 = call fastcc i32 @cmd_put_path(ptr noundef %0, ptr noundef %1, ptr noundef %287, i64 noundef %343, i64 noundef %346, i8 noundef zeroext %350, i32 noundef 1, i32 noundef 1)
  br label %352

352:                                              ; preds = %340, %328
  %353 = phi i32 [ %351, %340 ], [ %339, %328 ]
  %354 = icmp sgt i32 %353, -1
  %355 = select i1 %354, i32 %282, i32 %353
  br i1 %354, label %392, label %407

356:                                              ; preds = %308
  %357 = getelementptr inbounds %struct.gx_clip_path_s, ptr %287, i64 0, i32 4, i32 1
  %358 = load ptr, ptr %357, align 8, !tbaa !139
  %359 = icmp eq ptr %358, null
  %360 = getelementptr inbounds %struct.gx_clip_path_s, ptr %287, i64 0, i32 4
  %361 = select i1 %359, ptr %360, ptr %358
  br label %362

362:                                              ; preds = %356, %385
  %363 = phi i1 [ false, %356 ], [ %388, %385 ]
  %364 = phi i32 [ %282, %356 ], [ %386, %385 ]
  %365 = phi ptr [ %361, %356 ], [ %387, %385 ]
  %366 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %365, i64 0, i32 5
  %367 = load i32, ptr %366, align 4, !tbaa !140
  %368 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %365, i64 0, i32 4
  %369 = load i32, ptr %368, align 8, !tbaa !141
  %370 = icmp sgt i32 %367, %369
  br i1 %370, label %371, label %385

371:                                              ; preds = %362
  %372 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %365, i64 0, i32 2
  %373 = load i32, ptr %372, align 8, !tbaa !142
  %374 = icmp slt i32 %373, %301
  br i1 %374, label %375, label %385

375:                                              ; preds = %371
  %376 = getelementptr inbounds %struct.gx_clip_rect_s, ptr %365, i64 0, i32 3
  %377 = load i32, ptr %376, align 4, !tbaa !143
  %378 = icmp sgt i32 %377, %297
  br i1 %378, label %379, label %385

379:                                              ; preds = %375
  %380 = sub nsw i32 %367, %369
  %381 = sub nsw i32 %377, %373
  %382 = call i32 @cmd_write_rect_cmd(ptr noundef %0, ptr noundef %1, i32 noundef 48, i32 noundef %369, i32 noundef %373, i32 noundef %380, i32 noundef %381) #10
  %383 = icmp sgt i32 %382, -1
  %384 = select i1 %383, i32 %364, i32 %382
  br i1 %383, label %385, label %389

385:                                              ; preds = %362, %371, %375, %379
  %386 = phi i32 [ %384, %379 ], [ %364, %375 ], [ %364, %371 ], [ %364, %362 ]
  %387 = load ptr, ptr %365, align 8, !tbaa !144
  %388 = icmp eq ptr %387, null
  br i1 %388, label %389, label %362, !llvm.loop !145

389:                                              ; preds = %385, %379
  %390 = phi i1 [ %388, %385 ], [ %363, %379 ]
  %391 = phi i32 [ %386, %385 ], [ %384, %379 ]
  br i1 %390, label %392, label %407

392:                                              ; preds = %352, %389
  %393 = phi i32 [ %355, %352 ], [ %391, %389 ]
  %394 = call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %302, i32 noundef 2) #10
  %395 = icmp eq ptr %394, null
  br i1 %395, label %396, label %399

396:                                              ; preds = %392
  %397 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %398 = load i32, ptr %397, align 4, !tbaa !122
  br label %407

399:                                              ; preds = %392
  store i8 -38, ptr %394, align 1, !tbaa !11
  %400 = call i32 @gx_cpath_is_outside(ptr noundef %287) #10
  %401 = icmp ne i32 %400, 0
  %402 = zext i1 %401 to i8
  %403 = getelementptr inbounds i8, ptr %394, i64 1
  store i8 %402, ptr %403, align 1, !tbaa !11
  %404 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 8
  store i16 1, ptr %404, align 2, !tbaa !69
  %405 = load i16, ptr %7, align 2, !tbaa !64
  %406 = or i16 %405, 256
  store i16 %406, ptr %7, align 2, !tbaa !64
  br label %407

407:                                              ; preds = %352, %389, %399, %396, %305
  %408 = phi i1 [ false, %305 ], [ false, %396 ], [ true, %399 ], [ false, %352 ], [ false, %389 ]
  %409 = phi i32 [ %307, %305 ], [ %398, %396 ], [ %393, %399 ], [ %355, %352 ], [ %391, %389 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  br i1 %408, label %410, label %480

410:                                              ; preds = %407, %281
  %411 = phi i32 [ %409, %407 ], [ %282, %281 ]
  %412 = and i32 %11, 512
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %479, label %414

414:                                              ; preds = %410
  %415 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 55
  %416 = load i8, ptr %415, align 8, !tbaa !146
  %417 = and i8 %416, 8
  %418 = icmp eq i8 %417, 0
  br i1 %418, label %461, label %419

419:                                              ; preds = %414
  %420 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 56
  %421 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 56, i32 1
  %422 = load i32, ptr %421, align 8, !tbaa !147
  %423 = add nsw i32 %422, 1
  %424 = call i32 @gs_color_space_num_components(ptr noundef nonnull %420) #10
  %425 = mul nsw i32 %423, %424
  %426 = load i8, ptr %415, align 8, !tbaa !146
  %427 = and i8 %426, 4
  %428 = icmp eq i8 %427, 0
  %429 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 56, i32 2
  br i1 %428, label %434, label %430

430:                                              ; preds = %419
  %431 = load ptr, ptr %429, align 8, !tbaa !11
  %432 = getelementptr inbounds %struct.gs_indexed_map_s, ptr %431, i64 0, i32 3
  %433 = shl i32 %425, 2
  br label %434

434:                                              ; preds = %419, %430
  %435 = phi ptr [ %432, %430 ], [ %429, %419 ]
  %436 = phi i32 [ %433, %430 ], [ %425, %419 ]
  %437 = load ptr, ptr %435, align 8, !tbaa !11
  %438 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %439 = load i32, ptr %421, align 8, !tbaa !147
  %440 = icmp ult i32 %439, 128
  br i1 %440, label %446, label %441

441:                                              ; preds = %434
  %442 = icmp ult i32 %439, 16384
  br i1 %442, label %446, label %443

443:                                              ; preds = %441
  %444 = call i32 @cmd_size_w(i32 noundef %439) #10
  %445 = add nsw i32 %444, 2
  br label %446

446:                                              ; preds = %443, %441, %434
  %447 = phi i32 [ 3, %434 ], [ %445, %443 ], [ 4, %441 ]
  %448 = add i32 %447, %436
  %449 = call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %438, i32 noundef %448) #10
  %450 = icmp eq ptr %449, null
  br i1 %450, label %451, label %454

451:                                              ; preds = %446
  %452 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %453 = load i32, ptr %452, align 4, !tbaa !122
  br label %459

454:                                              ; preds = %446
  store i8 -37, ptr %449, align 1, !tbaa !11
  %455 = load i32, ptr %421, align 8, !tbaa !147
  %456 = getelementptr inbounds i8, ptr %449, i64 2
  %457 = call ptr @cmd_put_w(i32 noundef %455, ptr noundef nonnull %456) #10
  %458 = zext i32 %436 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %457, ptr align 1 %437, i64 %458, i1 false)
  br label %459

459:                                              ; preds = %454, %451
  %460 = phi i32 [ %453, %451 ], [ %411, %454 ]
  br i1 %450, label %476, label %469

461:                                              ; preds = %414
  %462 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %463 = call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %462, i32 noundef 2) #10
  %464 = icmp eq ptr %463, null
  br i1 %464, label %465, label %468

465:                                              ; preds = %461
  %466 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %467 = load i32, ptr %466, align 4, !tbaa !122
  br label %476

468:                                              ; preds = %461
  store i8 -37, ptr %463, align 1, !tbaa !11
  br label %469

469:                                              ; preds = %459, %468
  %470 = phi ptr [ %449, %459 ], [ %463, %468 ]
  %471 = phi i32 [ %460, %459 ], [ %411, %468 ]
  %472 = load i8, ptr %415, align 8, !tbaa !146
  %473 = getelementptr inbounds i8, ptr %470, i64 1
  store i8 %472, ptr %473, align 1, !tbaa !11
  %474 = load i16, ptr %7, align 2, !tbaa !64
  %475 = or i16 %474, 512
  store i16 %475, ptr %7, align 2, !tbaa !64
  br label %476

476:                                              ; preds = %459, %469, %465
  %477 = phi i1 [ true, %469 ], [ false, %459 ], [ false, %465 ]
  %478 = phi i32 [ %471, %469 ], [ %460, %459 ], [ %467, %465 ]
  br i1 %477, label %479, label %480

479:                                              ; preds = %476, %410
  br label %480

480:                                              ; preds = %27, %49, %139, %159, %178, %202, %233, %279, %407, %476, %479
  %481 = phi i32 [ 0, %479 ], [ %478, %476 ], [ %409, %407 ], [ %280, %279 ], [ %234, %233 ], [ %203, %202 ], [ %179, %178 ], [ %160, %159 ], [ %140, %139 ], [ %50, %49 ], [ %28, %27 ]
  ret i32 %481
}

declare ptr @cmd_put_list_op(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gx_path_is_rectangle(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cmd_write_rect_cmd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cmd_put_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7) unnamed_addr #1 {
  %9 = alloca %struct.gs_path_enum_s, align 8
  %10 = alloca %struct.cmd_segment_writer_s, align 8
  %11 = alloca [6 x i64], align 16
  %12 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %10) #10
  %13 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !148
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 12
  %17 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 5, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !149
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 12
  %21 = call i32 @gx_path_enum_init(ptr noundef nonnull %9, ptr noundef %2) #10
  store ptr %0, ptr %10, align 8, !tbaa !150
  %22 = getelementptr inbounds %struct.cmd_segment_writer_s, ptr %10, i64 0, i32 1
  store ptr %1, ptr %22, align 8, !tbaa !152
  %23 = getelementptr inbounds %struct.cmd_segment_writer_s, ptr %10, i64 0, i32 2
  store i32 0, ptr %23, align 8, !tbaa !153
  %24 = getelementptr inbounds %struct.cmd_segment_writer_s, ptr %10, i64 0, i32 3
  store ptr @cmd_put_path.initial_op, ptr %24, align 8, !tbaa !154
  %25 = getelementptr inbounds [6 x i64], ptr %11, i64 0, i64 1
  %26 = getelementptr inbounds [6 x i64], ptr %11, i64 0, i64 3
  %27 = getelementptr inbounds [6 x i64], ptr %11, i64 0, i64 5
  %28 = getelementptr inbounds [6 x i64], ptr %11, i64 0, i64 4
  %29 = getelementptr inbounds [2 x i64], ptr %12, i64 0, i64 1
  %30 = getelementptr inbounds [6 x i64], ptr %11, i64 0, i64 4
  %31 = getelementptr inbounds [6 x i64], ptr %11, i64 0, i64 4
  %32 = getelementptr inbounds [6 x i64], ptr %11, i64 0, i64 2
  %33 = getelementptr inbounds [6 x i64], ptr %11, i64 0, i64 1
  %34 = getelementptr inbounds [6 x i64], ptr %11, i64 0, i64 2
  %35 = getelementptr inbounds [6 x i64], ptr %11, i64 0, i64 3
  %36 = getelementptr inbounds [6 x i64], ptr %11, i64 0, i64 2
  %37 = getelementptr inbounds [6 x i64], ptr %11, i64 0, i64 3
  %38 = icmp ne i32 %6, 0
  %39 = getelementptr inbounds [6 x i64], ptr %11, i64 0, i64 1
  %40 = getelementptr inbounds [6 x i64], ptr %11, i64 0, i64 2
  %41 = getelementptr inbounds [6 x i64], ptr %11, i64 0, i64 3
  %42 = icmp ne i32 %6, 0
  %43 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %44 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %45 = getelementptr inbounds [6 x i64], ptr %11, i64 0, i64 2
  %46 = getelementptr inbounds [6 x i64], ptr %11, i64 0, i64 3
  %47 = getelementptr inbounds [6 x i64], ptr %11, i64 0, i64 2
  %48 = getelementptr inbounds [6 x i64], ptr %11, i64 0, i64 3
  %49 = icmp ne i32 %6, 0
  br label %50

50:                                               ; preds = %381, %8
  %51 = phi i32 [ undef, %8 ], [ %365, %381 ]
  %52 = phi i64 [ %16, %8 ], [ %366, %381 ]
  %53 = phi i64 [ %20, %8 ], [ %367, %381 ]
  %54 = phi i64 [ undef, %8 ], [ %368, %381 ]
  %55 = phi i64 [ undef, %8 ], [ %369, %381 ]
  %56 = phi i32 [ 0, %8 ], [ %370, %381 ]
  %57 = phi i64 [ undef, %8 ], [ %371, %381 ]
  %58 = phi i64 [ undef, %8 ], [ %372, %381 ]
  %59 = phi i32 [ undef, %8 ], [ %373, %381 ]
  %60 = phi i32 [ undef, %8 ], [ %375, %381 ]
  %61 = phi i32 [ undef, %8 ], [ %376, %381 ]
  %62 = phi i32 [ undef, %8 ], [ %377, %381 ]
  %63 = phi i64 [ undef, %8 ], [ %378, %381 ]
  %64 = phi i64 [ undef, %8 ], [ %379, %381 ]
  %65 = phi i32 [ undef, %8 ], [ %380, %381 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #10
  %66 = call i32 @gx_path_enum_next(ptr noundef nonnull %9, ptr noundef nonnull %11) #10
  switch i32 %66, label %364 [
    i32 0, label %67
    i32 1, label %80
    i32 2, label %97
    i32 4, label %162
    i32 3, label %199
  ]

67:                                               ; preds = %50
  %68 = icmp sgt i32 %56, 0
  %69 = and i1 %42, %68
  br i1 %69, label %162, label %70

70:                                               ; preds = %67
  %71 = lshr i64 %52, 12
  %72 = trunc i64 %71 to i32
  store i32 %72, ptr %13, align 8, !tbaa !148
  %73 = lshr i64 %53, 12
  %74 = trunc i64 %73 to i32
  store i32 %74, ptr %17, align 4, !tbaa !149
  %75 = call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %43, i32 noundef 1) #10
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, ptr %44, align 4, !tbaa !122
  br label %364

79:                                               ; preds = %70
  store i8 %5, ptr %75, align 1, !tbaa !11
  br label %364

80:                                               ; preds = %50
  %81 = icmp sgt i32 %56, 0
  %82 = and i1 %38, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 @gx_path_enum_backup(ptr noundef nonnull %9) #10
  br label %162

85:                                               ; preds = %80
  %86 = load i64, ptr %11, align 16, !tbaa !32
  %87 = load i64, ptr %39, align 8, !tbaa !32
  %88 = icmp slt i64 %87, %3
  %89 = icmp sge i64 %87, %4
  %90 = zext i1 %89 to i32
  %91 = select i1 %88, i32 -1, i32 %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %364, !llvm.loop !155

93:                                               ; preds = %85
  %94 = sub nsw i64 %86, %52
  store i64 %94, ptr %40, align 16, !tbaa !32
  %95 = sub nsw i64 %87, %53
  store i64 %95, ptr %41, align 8, !tbaa !32
  %96 = call fastcc i32 @cmd_put_segment(ptr noundef nonnull %10, i8 noundef zeroext -32, ptr noundef nonnull %40, i32 noundef 0)
  br label %345

97:                                               ; preds = %50
  %98 = load i64, ptr %33, align 8, !tbaa !32
  %99 = icmp slt i64 %98, %3
  %100 = icmp sge i64 %98, %4
  %101 = zext i1 %100 to i32
  %102 = select i1 %99, i32 -1, i32 %101
  %103 = call i32 @gx_path_enum_notes(ptr noundef nonnull %9) #10
  %104 = and i32 %103, %7
  %105 = icmp eq i32 %102, %60
  %106 = icmp ne i32 %60, 0
  %107 = and i1 %106, %105
  br i1 %107, label %108, label %113

108:                                              ; preds = %97
  %109 = icmp slt i32 %56, 0
  %110 = select i1 %109, i32 1, i32 %61
  %111 = load i64, ptr %11, align 16, !tbaa !32
  %112 = load i64, ptr %33, align 8, !tbaa !32
  br label %147, !llvm.loop !155

113:                                              ; preds = %97
  br i1 %106, label %114, label %134

114:                                              ; preds = %113
  %115 = icmp eq i64 %52, %57
  br i1 %115, label %116, label %121

116:                                              ; preds = %114
  %117 = icmp ne i64 %53, %58
  %118 = load ptr, ptr %24, align 8
  %119 = icmp eq ptr %118, @cmd_put_path.initial_op
  %120 = select i1 %117, i1 true, i1 %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %116, %114
  %122 = sub nsw i64 %57, %52
  store i64 %122, ptr %34, align 16, !tbaa !32
  %123 = sub nsw i64 %58, %53
  store i64 %123, ptr %35, align 8, !tbaa !32
  %124 = icmp slt i32 %56, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = call fastcc i32 @cmd_put_segment(ptr noundef nonnull %10, i8 noundef zeroext -32, ptr noundef nonnull %34, i32 noundef 0)
  br label %129

127:                                              ; preds = %121
  %128 = call fastcc i32 @cmd_put_segment(ptr noundef nonnull %10, i8 noundef zeroext -31, ptr noundef nonnull %34, i32 noundef %51)
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i64 [ %58, %125 ], [ %54, %127 ]
  %131 = phi i64 [ %57, %125 ], [ %55, %127 ]
  %132 = phi i32 [ %126, %125 ], [ %128, %127 ]
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %147, label %134

134:                                              ; preds = %129, %116, %113
  %135 = phi i64 [ %52, %116 ], [ %52, %113 ], [ %57, %129 ]
  %136 = phi i64 [ %53, %116 ], [ %53, %113 ], [ %58, %129 ]
  %137 = phi i64 [ %54, %116 ], [ %54, %113 ], [ %130, %129 ]
  %138 = phi i64 [ %55, %116 ], [ %55, %113 ], [ %131, %129 ]
  %139 = icmp eq i32 %102, 0
  %140 = load i64, ptr %11, align 16
  %141 = load i64, ptr %33, align 8
  %142 = select i1 %139, i64 %57, i64 %140
  %143 = select i1 %139, i64 %58, i64 %141
  %144 = sub nsw i64 %140, %135
  store i64 %144, ptr %36, align 16, !tbaa !32
  %145 = sub nsw i64 %141, %136
  store i64 %145, ptr %37, align 8, !tbaa !32
  %146 = call fastcc i32 @cmd_put_segment(ptr noundef nonnull %10, i8 noundef zeroext -31, ptr noundef nonnull %36, i32 noundef %104)
  br label %147

147:                                              ; preds = %129, %134, %108
  %148 = phi i32 [ %104, %108 ], [ %51, %134 ], [ %51, %129 ]
  %149 = phi i64 [ %52, %108 ], [ %140, %134 ], [ %52, %129 ]
  %150 = phi i64 [ %53, %108 ], [ %141, %134 ], [ %53, %129 ]
  %151 = phi i64 [ %54, %108 ], [ %137, %134 ], [ %130, %129 ]
  %152 = phi i64 [ %55, %108 ], [ %138, %134 ], [ %131, %129 ]
  %153 = phi i32 [ %56, %108 ], [ 1, %134 ], [ %56, %129 ]
  %154 = phi i64 [ %111, %108 ], [ %142, %134 ], [ %57, %129 ]
  %155 = phi i64 [ %112, %108 ], [ %143, %134 ], [ %58, %129 ]
  %156 = phi i32 [ %59, %108 ], [ %146, %134 ], [ %132, %129 ]
  %157 = phi i1 [ false, %108 ], [ true, %134 ], [ false, %129 ]
  %158 = phi i32 [ 5, %108 ], [ 0, %134 ], [ 1, %129 ]
  %159 = phi i32 [ %60, %108 ], [ %102, %134 ], [ %60, %129 ]
  %160 = phi i32 [ %110, %108 ], [ %61, %134 ], [ %61, %129 ]
  %161 = phi i32 [ %65, %108 ], [ %65, %134 ], [ %132, %129 ]
  br i1 %157, label %345, label %364

162:                                              ; preds = %50, %67, %83
  %163 = icmp eq i32 %60, %62
  br i1 %163, label %190, label %164

164:                                              ; preds = %162
  %165 = icmp eq i32 %60, 0
  br i1 %165, label %178, label %166

166:                                              ; preds = %164
  %167 = icmp eq i64 %52, %57
  br i1 %167, label %168, label %173

168:                                              ; preds = %166
  %169 = icmp ne i64 %53, %58
  %170 = load ptr, ptr %24, align 8
  %171 = icmp eq ptr %170, @cmd_put_path.initial_op
  %172 = select i1 %169, i1 true, i1 %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %168, %166
  %174 = sub nsw i64 %57, %52
  store i64 %174, ptr %45, align 16, !tbaa !32
  %175 = sub nsw i64 %58, %53
  store i64 %175, ptr %46, align 8, !tbaa !32
  %176 = call fastcc i32 @cmd_put_segment(ptr noundef nonnull %10, i8 noundef zeroext -31, ptr noundef nonnull %45, i32 noundef %51)
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %364, label %178

178:                                              ; preds = %173, %168, %164
  %179 = phi i64 [ %52, %168 ], [ %52, %164 ], [ %57, %173 ]
  %180 = phi i64 [ %53, %168 ], [ %53, %164 ], [ %58, %173 ]
  %181 = phi i32 [ %59, %168 ], [ %59, %164 ], [ %176, %173 ]
  %182 = icmp sgt i32 %56, 0
  %183 = icmp ne i32 %61, 0
  %184 = select i1 %182, i1 %183, i1 false
  br i1 %184, label %185, label %190

185:                                              ; preds = %178
  %186 = sub nsw i64 %63, %179
  store i64 %186, ptr %47, align 16, !tbaa !32
  %187 = sub nsw i64 %64, %180
  store i64 %187, ptr %48, align 8, !tbaa !32
  %188 = call fastcc i32 @cmd_put_segment(ptr noundef nonnull %10, i8 noundef zeroext -31, ptr noundef nonnull %47, i32 noundef 0)
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %364, label %190

190:                                              ; preds = %185, %178, %162
  %191 = phi i64 [ %179, %178 ], [ %52, %162 ], [ %63, %185 ]
  %192 = phi i64 [ %180, %178 ], [ %53, %162 ], [ %64, %185 ]
  %193 = phi i32 [ %181, %178 ], [ %59, %162 ], [ %188, %185 ]
  %194 = icmp slt i32 %56, 1
  %195 = select i1 %49, i1 true, i1 %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  store ptr @cmd_put_path.initial_op, ptr %24, align 8, !tbaa !154
  br label %364, !llvm.loop !155

197:                                              ; preds = %190
  %198 = call fastcc i32 @cmd_put_segment(ptr noundef nonnull %10, i8 noundef zeroext -18, ptr noundef nonnull %11, i32 noundef 0)
  br label %345

199:                                              ; preds = %50
  %200 = call i32 @gx_path_enum_notes(ptr noundef nonnull %9) #10
  %201 = and i32 %200, %7
  %202 = load i64, ptr %25, align 8, !tbaa !32
  %203 = load i64, ptr %26, align 8, !tbaa !32
  %204 = call i64 @llvm.smin.i64(i64 %202, i64 %203)
  %205 = call i64 @llvm.smax.i64(i64 %202, i64 %203)
  %206 = load i64, ptr %27, align 8, !tbaa !32
  %207 = icmp slt i64 %206, %204
  %208 = call i64 @llvm.smax.i64(i64 %206, i64 %205)
  %209 = call i64 @llvm.smin.i64(i64 %206, i64 %204)
  %210 = select i1 %207, i64 %205, i64 %208
  %211 = icmp slt i64 %210, %3
  %212 = icmp sgt i64 %209, %4
  %213 = zext i1 %212 to i32
  %214 = select i1 %211, i32 -1, i32 %213
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %222, label %216

216:                                              ; preds = %199
  %217 = icmp eq i32 %214, %60
  br i1 %217, label %218, label %227

218:                                              ; preds = %216
  %219 = icmp slt i32 %56, 0
  %220 = select i1 %219, i32 1, i32 %61
  %221 = load i64, ptr %28, align 16, !tbaa !32
  br label %265, !llvm.loop !155

222:                                              ; preds = %199
  %223 = icmp slt i64 %206, %3
  %224 = icmp sge i64 %206, %4
  %225 = zext i1 %224 to i32
  %226 = select i1 %223, i32 -1, i32 %225
  br label %227

227:                                              ; preds = %216, %222
  %228 = phi i32 [ %226, %222 ], [ %214, %216 ]
  %229 = icmp eq i32 %60, 0
  br i1 %229, label %253, label %230

230:                                              ; preds = %227
  %231 = icmp eq i64 %52, %57
  br i1 %231, label %232, label %237

232:                                              ; preds = %230
  %233 = icmp ne i64 %53, %58
  %234 = load ptr, ptr %24, align 8
  %235 = icmp eq ptr %234, @cmd_put_path.initial_op
  %236 = select i1 %233, i1 true, i1 %235
  br i1 %236, label %237, label %253

237:                                              ; preds = %232, %230
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #10
  %238 = sub nsw i64 %57, %52
  store i64 %238, ptr %12, align 16, !tbaa !32
  %239 = sub nsw i64 %58, %53
  store i64 %239, ptr %29, align 8, !tbaa !32
  %240 = icmp slt i32 %56, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %237
  %242 = call fastcc i32 @cmd_put_segment(ptr noundef nonnull %10, i8 noundef zeroext -32, ptr noundef nonnull %12, i32 noundef 0)
  br label %245

243:                                              ; preds = %237
  %244 = call fastcc i32 @cmd_put_segment(ptr noundef nonnull %10, i8 noundef zeroext -31, ptr noundef nonnull %12, i32 noundef %51)
  br label %245

245:                                              ; preds = %243, %241
  %246 = phi i64 [ %58, %241 ], [ %54, %243 ]
  %247 = phi i64 [ %57, %241 ], [ %55, %243 ]
  %248 = phi i32 [ %242, %241 ], [ %244, %243 ]
  %249 = icmp sgt i32 %248, -1
  %250 = select i1 %249, i64 %57, i64 %52
  %251 = select i1 %249, i64 %58, i64 %53
  %252 = select i1 %249, i32 %65, i32 %248
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #10
  br i1 %249, label %253, label %265

253:                                              ; preds = %245, %232, %227
  %254 = phi i64 [ %250, %245 ], [ %52, %232 ], [ %52, %227 ]
  %255 = phi i64 [ %251, %245 ], [ %53, %232 ], [ %53, %227 ]
  %256 = phi i64 [ %246, %245 ], [ %54, %232 ], [ %54, %227 ]
  %257 = phi i64 [ %247, %245 ], [ %55, %232 ], [ %55, %227 ]
  %258 = phi i32 [ %248, %245 ], [ %59, %232 ], [ %59, %227 ]
  %259 = phi i32 [ %252, %245 ], [ %65, %232 ], [ %65, %227 ]
  %260 = icmp eq i32 %228, 0
  %261 = load i64, ptr %30, align 16
  %262 = load i64, ptr %27, align 8
  %263 = select i1 %260, i64 %57, i64 %261
  %264 = select i1 %260, i64 %58, i64 %262
  br label %265

265:                                              ; preds = %245, %253, %218
  %266 = phi i32 [ %201, %218 ], [ %51, %253 ], [ %51, %245 ]
  %267 = phi i64 [ %52, %218 ], [ %254, %253 ], [ %250, %245 ]
  %268 = phi i64 [ %53, %218 ], [ %255, %253 ], [ %251, %245 ]
  %269 = phi i64 [ %54, %218 ], [ %256, %253 ], [ %246, %245 ]
  %270 = phi i64 [ %55, %218 ], [ %257, %253 ], [ %247, %245 ]
  %271 = phi i64 [ %221, %218 ], [ %263, %253 ], [ %57, %245 ]
  %272 = phi i64 [ %206, %218 ], [ %264, %253 ], [ %58, %245 ]
  %273 = phi i32 [ %59, %218 ], [ %258, %253 ], [ %248, %245 ]
  %274 = phi i1 [ false, %218 ], [ true, %253 ], [ false, %245 ]
  %275 = phi i32 [ 5, %218 ], [ 0, %253 ], [ 1, %245 ]
  %276 = phi i32 [ %60, %218 ], [ %228, %253 ], [ %60, %245 ]
  %277 = phi i32 [ %220, %218 ], [ %61, %253 ], [ %61, %245 ]
  %278 = phi i32 [ %65, %218 ], [ %259, %253 ], [ %252, %245 ]
  br i1 %274, label %279, label %338

279:                                              ; preds = %265
  %280 = load i64, ptr %31, align 16, !tbaa !32
  %281 = load i64, ptr %27, align 8, !tbaa !32
  %282 = load i64, ptr %32, align 16, !tbaa !32
  %283 = sub nsw i64 %280, %282
  store i64 %283, ptr %31, align 16, !tbaa !32
  %284 = load i64, ptr %26, align 8, !tbaa !32
  %285 = sub nsw i64 %281, %284
  store i64 %285, ptr %27, align 8, !tbaa !32
  %286 = load i64, ptr %11, align 16, !tbaa !32
  %287 = sub nsw i64 %282, %286
  store i64 %287, ptr %32, align 16, !tbaa !32
  %288 = load i64, ptr %25, align 8, !tbaa !32
  %289 = sub nsw i64 %284, %288
  store i64 %289, ptr %26, align 8, !tbaa !32
  %290 = sub nsw i64 %286, %267
  store i64 %290, ptr %11, align 16, !tbaa !32
  %291 = sub nsw i64 %288, %268
  store i64 %291, ptr %25, align 8, !tbaa !32
  %292 = icmp eq i64 %288, %268
  %293 = icmp eq i64 %280, %282
  %294 = select i1 %292, i1 %293, i1 false
  br i1 %294, label %295, label %310

295:                                              ; preds = %279
  store i64 %290, ptr %25, align 8, !tbaa !32
  store i64 %285, ptr %31, align 16, !tbaa !32
  %296 = xor i64 %289, %290
  %297 = icmp sgt i64 %296, -1
  br i1 %297, label %298, label %303

298:                                              ; preds = %295
  %299 = icmp eq i64 %287, %289
  %300 = icmp eq i64 %285, %290
  %301 = select i1 %299, i1 %300, i1 false
  %302 = select i1 %301, i8 -19, i8 -27
  br label %334

303:                                              ; preds = %295
  %304 = sub nsw i64 0, %289
  %305 = icmp eq i64 %287, %304
  %306 = sub nsw i64 0, %290
  %307 = icmp eq i64 %285, %306
  %308 = select i1 %305, i1 %307, i1 false
  br i1 %308, label %309, label %334

309:                                              ; preds = %303
  store i64 %289, ptr %32, align 16, !tbaa !32
  br label %334

310:                                              ; preds = %279
  %311 = icmp eq i64 %286, %267
  %312 = icmp eq i64 %281, %284
  %313 = select i1 %311, i1 %312, i1 false
  br i1 %313, label %314, label %329

314:                                              ; preds = %310
  %315 = xor i64 %291, %287
  %316 = icmp sgt i64 %315, -1
  br i1 %316, label %317, label %322

317:                                              ; preds = %314
  %318 = icmp eq i64 %289, %287
  %319 = icmp eq i64 %283, %291
  %320 = select i1 %318, i1 %319, i1 false
  %321 = select i1 %320, i8 -20, i8 -26
  br label %334

322:                                              ; preds = %314
  %323 = sub nsw i64 0, %287
  %324 = icmp eq i64 %289, %323
  %325 = sub nsw i64 0, %291
  %326 = icmp eq i64 %283, %325
  %327 = select i1 %324, i1 %326, i1 false
  %328 = select i1 %327, i8 -20, i8 -26
  br label %334

329:                                              ; preds = %310
  %330 = and i1 %311, %292
  br i1 %330, label %334, label %331

331:                                              ; preds = %329
  %332 = select i1 %293, i1 %312, i1 false
  %333 = select i1 %332, i8 -24, i8 -28
  br label %334

334:                                              ; preds = %322, %317, %298, %331, %329, %309, %303
  %335 = phi ptr [ %25, %309 ], [ %25, %303 ], [ %32, %329 ], [ %11, %331 ], [ %25, %298 ], [ %25, %317 ], [ %25, %322 ]
  %336 = phi i8 [ -19, %309 ], [ -27, %303 ], [ -25, %329 ], [ %333, %331 ], [ %302, %298 ], [ %321, %317 ], [ %328, %322 ]
  %337 = call fastcc i32 @cmd_put_segment(ptr noundef nonnull %10, i8 noundef zeroext %336, ptr noundef nonnull %335, i32 noundef %201)
  br label %338

338:                                              ; preds = %265, %334
  %339 = phi i64 [ %280, %334 ], [ %267, %265 ]
  %340 = phi i64 [ %281, %334 ], [ %268, %265 ]
  %341 = phi i32 [ 1, %334 ], [ %56, %265 ]
  %342 = phi i32 [ %337, %334 ], [ %273, %265 ]
  %343 = phi i32 [ 0, %334 ], [ %275, %265 ]
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %364

345:                                              ; preds = %338, %147, %197, %93
  %346 = phi i32 [ %266, %338 ], [ %51, %197 ], [ %148, %147 ], [ %51, %93 ]
  %347 = phi i64 [ %339, %338 ], [ %55, %197 ], [ %149, %147 ], [ %86, %93 ]
  %348 = phi i64 [ %340, %338 ], [ %54, %197 ], [ %150, %147 ], [ %87, %93 ]
  %349 = phi i64 [ %269, %338 ], [ %54, %197 ], [ %151, %147 ], [ %87, %93 ]
  %350 = phi i64 [ %270, %338 ], [ %55, %197 ], [ %152, %147 ], [ %86, %93 ]
  %351 = phi i32 [ %341, %338 ], [ 0, %197 ], [ %153, %147 ], [ -1, %93 ]
  %352 = phi i64 [ %271, %338 ], [ %57, %197 ], [ %154, %147 ], [ %57, %93 ]
  %353 = phi i64 [ %272, %338 ], [ %58, %197 ], [ %155, %147 ], [ %58, %93 ]
  %354 = phi i32 [ %342, %338 ], [ %198, %197 ], [ %156, %147 ], [ %96, %93 ]
  %355 = phi i32 [ %276, %338 ], [ %60, %197 ], [ %159, %147 ], [ 0, %93 ]
  %356 = phi i32 [ %277, %338 ], [ %61, %197 ], [ %160, %147 ], [ 0, %93 ]
  %357 = phi i32 [ %62, %338 ], [ %62, %197 ], [ %62, %147 ], [ 0, %93 ]
  %358 = phi i64 [ %63, %338 ], [ %63, %197 ], [ %63, %147 ], [ %86, %93 ]
  %359 = phi i64 [ %64, %338 ], [ %64, %197 ], [ %64, %147 ], [ %87, %93 ]
  %360 = phi i32 [ %278, %338 ], [ %65, %197 ], [ %161, %147 ], [ %65, %93 ]
  %361 = icmp slt i32 %354, 0
  %362 = lshr i32 %354, 31
  %363 = select i1 %361, i32 %354, i32 %360
  br label %364

364:                                              ; preds = %85, %345, %50, %185, %173, %147, %338, %196, %79, %77
  %365 = phi i32 [ %266, %338 ], [ %51, %196 ], [ %148, %147 ], [ %51, %77 ], [ %51, %79 ], [ %51, %173 ], [ %51, %185 ], [ %51, %50 ], [ %346, %345 ], [ %51, %85 ]
  %366 = phi i64 [ %339, %338 ], [ %191, %196 ], [ %149, %147 ], [ %52, %77 ], [ %52, %79 ], [ %52, %173 ], [ %179, %185 ], [ %52, %50 ], [ %347, %345 ], [ %52, %85 ]
  %367 = phi i64 [ %340, %338 ], [ %192, %196 ], [ %150, %147 ], [ %53, %77 ], [ %53, %79 ], [ %53, %173 ], [ %180, %185 ], [ %53, %50 ], [ %348, %345 ], [ %53, %85 ]
  %368 = phi i64 [ %269, %338 ], [ %54, %196 ], [ %151, %147 ], [ %54, %77 ], [ %54, %79 ], [ %54, %173 ], [ %54, %185 ], [ %54, %50 ], [ %349, %345 ], [ %54, %85 ]
  %369 = phi i64 [ %270, %338 ], [ %55, %196 ], [ %152, %147 ], [ %55, %77 ], [ %55, %79 ], [ %55, %173 ], [ %55, %185 ], [ %55, %50 ], [ %350, %345 ], [ %55, %85 ]
  %370 = phi i32 [ %341, %338 ], [ 0, %196 ], [ %153, %147 ], [ %56, %77 ], [ %56, %79 ], [ %56, %173 ], [ 1, %185 ], [ %56, %50 ], [ %351, %345 ], [ -1, %85 ]
  %371 = phi i64 [ %271, %338 ], [ %57, %196 ], [ %154, %147 ], [ %57, %77 ], [ %57, %79 ], [ %57, %173 ], [ %57, %185 ], [ %57, %50 ], [ %352, %345 ], [ %86, %85 ]
  %372 = phi i64 [ %272, %338 ], [ %58, %196 ], [ %155, %147 ], [ %58, %77 ], [ %58, %79 ], [ %58, %173 ], [ %58, %185 ], [ %58, %50 ], [ %353, %345 ], [ %87, %85 ]
  %373 = phi i32 [ %342, %338 ], [ %193, %196 ], [ %156, %147 ], [ %59, %77 ], [ %59, %79 ], [ %176, %173 ], [ %188, %185 ], [ %59, %50 ], [ %354, %345 ], [ %59, %85 ]
  %374 = phi i32 [ %343, %338 ], [ 5, %196 ], [ %158, %147 ], [ 1, %77 ], [ 1, %79 ], [ 1, %173 ], [ 1, %185 ], [ 1, %50 ], [ %362, %345 ], [ 5, %85 ]
  %375 = phi i32 [ %276, %338 ], [ %60, %196 ], [ %159, %147 ], [ %60, %77 ], [ %60, %79 ], [ %60, %173 ], [ %60, %185 ], [ %60, %50 ], [ %355, %345 ], [ %91, %85 ]
  %376 = phi i32 [ %277, %338 ], [ %61, %196 ], [ %160, %147 ], [ %61, %77 ], [ %61, %79 ], [ %61, %173 ], [ %61, %185 ], [ %61, %50 ], [ %356, %345 ], [ 0, %85 ]
  %377 = phi i32 [ %62, %338 ], [ %62, %196 ], [ %62, %147 ], [ %62, %77 ], [ %62, %79 ], [ %62, %173 ], [ %62, %185 ], [ %62, %50 ], [ %357, %345 ], [ %91, %85 ]
  %378 = phi i64 [ %63, %338 ], [ %63, %196 ], [ %63, %147 ], [ %63, %77 ], [ %63, %79 ], [ %63, %173 ], [ %63, %185 ], [ %63, %50 ], [ %358, %345 ], [ %86, %85 ]
  %379 = phi i64 [ %64, %338 ], [ %64, %196 ], [ %64, %147 ], [ %64, %77 ], [ %64, %79 ], [ %64, %173 ], [ %64, %185 ], [ %64, %50 ], [ %359, %345 ], [ %87, %85 ]
  %380 = phi i32 [ %278, %338 ], [ %65, %196 ], [ %161, %147 ], [ %78, %77 ], [ 0, %79 ], [ %176, %173 ], [ %188, %185 ], [ -15, %50 ], [ %363, %345 ], [ %65, %85 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #10
  switch i32 %374, label %382 [
    i32 0, label %381
    i32 5, label %381
  ]

381:                                              ; preds = %364, %364
  br label %50, !llvm.loop !155

382:                                              ; preds = %364
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #10
  ret i32 %380
}

declare i32 @gx_cpath_is_outside(ptr noundef) local_unnamed_addr #3

declare i32 @gs_color_space_num_components(ptr noundef) local_unnamed_addr #3

declare i32 @cmd_size_w(i32 noundef) local_unnamed_addr #3

declare ptr @cmd_put_w(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gx_path_bbox(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gx_adjust_if_empty(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cmd_put_enable_clip(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cmd_put_enable_lop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cmd_set_lop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gx_default_fill_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gx_stroke_path_expansion(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gx_default_stroke_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gx_set_dash(ptr noundef, ptr noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gx_set_dot_length(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gx_set_miter_limit(ptr noundef, double noundef) local_unnamed_addr #3

declare i32 @gx_path_enum_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gx_path_enum_next(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gx_path_enum_backup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cmd_put_segment(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #1 {
  %5 = and i8 %1, 15
  %6 = zext nneg i8 %5 to i64
  %7 = getelementptr inbounds [15 x i8], ptr @clist_segment_op_num_operands, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !11
  %9 = getelementptr inbounds %struct.cmd_segment_writer_s, ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds i8, ptr %0, i64 55
  %11 = icmp eq i8 %1, -31
  br i1 %11, label %12, label %65

12:                                               ; preds = %4
  %13 = load i64, ptr %2, align 8, !tbaa !32
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds i64, ptr %2, i64 1
  br i1 %14, label %65, label %16

16:                                               ; preds = %12
  %17 = load i64, ptr %15, align 8, !tbaa !32
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %65, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.cmd_segment_writer_s, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !154
  %22 = load i8, ptr %21, align 1, !tbaa !11
  switch i8 %22, label %65 [
    i8 -32, label %23
    i8 -23, label %46
    i8 -22, label %50
  ]

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cmd_segment_writer_s, ptr %0, i64 0, i32 5
  store i64 %13, ptr %24, align 8, !tbaa !156
  %25 = load i64, ptr %15, align 8, !tbaa !32
  %26 = getelementptr inbounds %struct.cmd_segment_writer_s, ptr %0, i64 0, i32 5, i32 1
  store i64 %25, ptr %26, align 8, !tbaa !157
  br label %27

27:                                               ; preds = %46, %23
  %28 = phi i8 [ -23, %23 ], [ -22, %46 ]
  %29 = getelementptr inbounds %struct.cmd_segment_writer_s, ptr %0, i64 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !158
  %31 = getelementptr inbounds %struct.cmd_segment_writer_s, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !152
  %33 = getelementptr inbounds %struct.gx_clist_state_s, ptr %32, i64 0, i32 11, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !159
  %35 = getelementptr inbounds %struct.cmd_prefix_s, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !160
  %37 = sub i32 %36, %30
  store i32 %37, ptr %35, align 8, !tbaa !160
  %38 = load ptr, ptr %0, align 8, !tbaa !150
  %39 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %38, i64 0, i32 39
  %40 = load ptr, ptr %39, align 8, !tbaa !162
  %41 = sext i32 %30 to i64
  %42 = sub nsw i64 0, %41
  %43 = getelementptr inbounds i8, ptr %40, i64 %42
  store ptr %43, ptr %39, align 8, !tbaa !162
  %44 = getelementptr i8, ptr %10, i64 %41
  %45 = getelementptr i8, ptr %44, i64 -1
  br label %65

46:                                               ; preds = %19
  %47 = getelementptr inbounds %struct.cmd_segment_writer_s, ptr %0, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !153
  %49 = icmp eq i32 %48, %3
  br i1 %49, label %27, label %65

50:                                               ; preds = %19
  %51 = getelementptr inbounds %struct.cmd_segment_writer_s, ptr %0, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !153
  %53 = icmp eq i32 %52, %3
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.cmd_segment_writer_s, ptr %0, i64 0, i32 5
  %56 = load i64, ptr %55, align 8, !tbaa !156
  %57 = sub nsw i64 0, %56
  %58 = icmp eq i64 %13, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.cmd_segment_writer_s, ptr %0, i64 0, i32 5, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !157
  %62 = sub nsw i64 0, %61
  %63 = icmp eq i64 %17, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i8 -21, ptr %21, align 1, !tbaa !11
  br label %213

65:                                               ; preds = %12, %16, %27, %46, %50, %59, %54, %19, %4
  %66 = phi i8 [ %8, %19 ], [ %8, %50 ], [ %8, %59 ], [ %8, %54 ], [ %8, %46 ], [ %8, %27 ], [ %8, %4 ], [ 1, %16 ], [ 1, %12 ]
  %67 = phi ptr [ %10, %19 ], [ %10, %50 ], [ %10, %59 ], [ %10, %54 ], [ %10, %46 ], [ %45, %27 ], [ %10, %4 ], [ %10, %16 ], [ %10, %12 ]
  %68 = phi ptr [ %2, %19 ], [ %2, %50 ], [ %2, %59 ], [ %2, %54 ], [ %2, %46 ], [ %2, %27 ], [ %2, %4 ], [ %2, %16 ], [ %15, %12 ]
  %69 = phi i8 [ %1, %19 ], [ %1, %50 ], [ %1, %59 ], [ %1, %54 ], [ %1, %46 ], [ %28, %27 ], [ %1, %4 ], [ -30, %16 ], [ -29, %12 ]
  %70 = icmp eq i8 %66, 0
  br i1 %70, label %168, label %71

71:                                               ; preds = %65
  %72 = zext i8 %66 to i32
  br label %73

73:                                               ; preds = %71, %162
  %74 = phi ptr [ %166, %162 ], [ %68, %71 ]
  %75 = phi ptr [ %164, %162 ], [ %67, %71 ]
  %76 = phi i32 [ %163, %162 ], [ %72, %71 ]
  %77 = add nsw i32 %76, -1
  %78 = load i64, ptr %74, align 8, !tbaa !32
  %79 = add nsw i64 %78, 4194304
  %80 = icmp ult i64 %79, 8388608
  %81 = and i64 %78, 1023
  %82 = icmp eq i64 %81, 0
  %83 = and i1 %80, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %73
  %85 = lshr exact i64 %78, 10
  %86 = and i64 %85, 8191
  %87 = or disjoint i64 %86, 49152
  %88 = getelementptr inbounds i8, ptr %75, i64 2
  br label %155

89:                                               ; preds = %73
  %90 = add nsw i64 %78, 262144
  %91 = icmp ult i64 %90, 524288
  %92 = icmp ne i32 %76, 1
  %93 = and i1 %92, %91
  br i1 %93, label %94, label %119

94:                                               ; preds = %89
  %95 = getelementptr inbounds i64, ptr %74, i64 1
  %96 = load i64, ptr %95, align 8, !tbaa !32
  %97 = add nsw i64 %96, 262144
  %98 = icmp ult i64 %97, 524288
  br i1 %98, label %99, label %119

99:                                               ; preds = %94
  %100 = lshr i64 %78, 13
  %101 = trunc i64 %100 to i8
  %102 = and i8 %101, 63
  %103 = getelementptr inbounds i8, ptr %75, i64 1
  store i8 %102, ptr %103, align 1, !tbaa !11
  %104 = lshr i64 %78, 5
  %105 = trunc i64 %104 to i8
  %106 = getelementptr inbounds i8, ptr %75, i64 2
  store i8 %105, ptr %106, align 1, !tbaa !11
  %107 = shl i64 %78, 3
  %108 = lshr i64 %96, 16
  %109 = and i64 %108, 7
  %110 = or disjoint i64 %109, %107
  %111 = trunc i64 %110 to i8
  %112 = getelementptr inbounds i8, ptr %75, i64 3
  store i8 %111, ptr %112, align 1, !tbaa !11
  %113 = lshr i64 %96, 8
  %114 = trunc i64 %113 to i8
  %115 = getelementptr inbounds i8, ptr %75, i64 4
  store i8 %114, ptr %115, align 1, !tbaa !11
  %116 = trunc i64 %96 to i8
  %117 = getelementptr inbounds i8, ptr %75, i64 5
  store i8 %116, ptr %117, align 1, !tbaa !11
  %118 = add nsw i32 %76, -2
  br label %162

119:                                              ; preds = %94, %89
  %120 = add nsw i64 %78, 2097152
  %121 = icmp ult i64 %120, 4194304
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = lshr i64 %78, 16
  %124 = trunc i64 %123 to i8
  %125 = and i8 %124, 63
  %126 = or disjoint i8 %125, 64
  %127 = getelementptr inbounds i8, ptr %75, i64 1
  store i8 %126, ptr %127, align 1, !tbaa !11
  %128 = getelementptr inbounds i8, ptr %75, i64 3
  br label %155

129:                                              ; preds = %119
  %130 = add nsw i64 %78, 536870912
  %131 = icmp ult i64 %130, 1073741824
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = lshr i64 %78, 24
  %134 = trunc i64 %133 to i8
  %135 = and i8 %134, 63
  %136 = or disjoint i8 %135, -128
  %137 = getelementptr inbounds i8, ptr %75, i64 1
  store i8 %136, ptr %137, align 1, !tbaa !11
  %138 = lshr i64 %78, 16
  %139 = trunc i64 %138 to i8
  %140 = getelementptr inbounds i8, ptr %75, i64 2
  store i8 %139, ptr %140, align 1, !tbaa !11
  %141 = getelementptr inbounds i8, ptr %75, i64 4
  br label %155

142:                                              ; preds = %129
  %143 = getelementptr inbounds i8, ptr %75, i64 1
  store i8 -32, ptr %143, align 1, !tbaa !11
  br label %144

144:                                              ; preds = %142, %144
  %145 = phi i64 [ 7, %142 ], [ %151, %144 ]
  %146 = phi ptr [ %143, %142 ], [ %150, %144 ]
  %147 = shl nsw i64 %145, 3
  %148 = ashr i64 %78, %147
  %149 = trunc i64 %148 to i8
  %150 = getelementptr inbounds i8, ptr %146, i64 1
  store i8 %149, ptr %150, align 1, !tbaa !11
  %151 = add nsw i64 %145, -1
  %152 = icmp ugt i64 %145, 2
  br i1 %152, label %144, label %153, !llvm.loop !163

153:                                              ; preds = %144
  %154 = getelementptr inbounds i8, ptr %146, i64 3
  br label %155

155:                                              ; preds = %132, %153, %122, %84
  %156 = phi ptr [ %154, %153 ], [ %141, %132 ], [ %128, %122 ], [ %88, %84 ]
  %157 = phi i64 [ %78, %153 ], [ %78, %132 ], [ %78, %122 ], [ %87, %84 ]
  %158 = lshr i64 %157, 8
  %159 = trunc i64 %158 to i8
  %160 = getelementptr inbounds i8, ptr %156, i64 -1
  store i8 %159, ptr %160, align 1, !tbaa !11
  %161 = trunc i64 %157 to i8
  store i8 %161, ptr %156, align 1, !tbaa !11
  br label %162

162:                                              ; preds = %155, %99
  %163 = phi i32 [ %77, %155 ], [ %118, %99 ]
  %164 = phi ptr [ %156, %155 ], [ %117, %99 ]
  %165 = phi ptr [ %74, %155 ], [ %95, %99 ]
  %166 = getelementptr inbounds i64, ptr %165, i64 1
  %167 = icmp sgt i32 %163, 0
  br i1 %167, label %73, label %168, !llvm.loop !164

168:                                              ; preds = %162, %65
  %169 = phi ptr [ %67, %65 ], [ %164, %162 ]
  %170 = getelementptr inbounds %struct.cmd_segment_writer_s, ptr %0, i64 0, i32 2
  %171 = load i32, ptr %170, align 8, !tbaa !153
  %172 = icmp eq i32 %171, %3
  br i1 %172, label %190, label %173

173:                                              ; preds = %168
  %174 = load ptr, ptr %0, align 8, !tbaa !150
  %175 = getelementptr inbounds %struct.cmd_segment_writer_s, ptr %0, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !152
  %177 = getelementptr inbounds %struct.gx_clist_state_s, ptr %176, i64 0, i32 11
  %178 = tail call ptr @cmd_put_list_op(ptr noundef %174, ptr noundef nonnull %177, i32 noundef 2) #10
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  %181 = load ptr, ptr %0, align 8, !tbaa !150
  %182 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %181, i64 0, i32 36
  %183 = load i32, ptr %182, align 4, !tbaa !122
  br label %188

184:                                              ; preds = %173
  store i8 -44, ptr %178, align 1, !tbaa !11
  %185 = trunc i32 %3 to i8
  %186 = xor i8 %185, -128
  %187 = getelementptr inbounds i8, ptr %178, i64 1
  store i8 %186, ptr %187, align 1, !tbaa !11
  store i32 %3, ptr %170, align 8, !tbaa !153
  br label %188

188:                                              ; preds = %184, %180
  %189 = phi i32 [ %183, %180 ], [ undef, %184 ]
  br i1 %179, label %213, label %190

190:                                              ; preds = %188, %168
  %191 = getelementptr inbounds i8, ptr %169, i64 2
  %192 = ptrtoint ptr %191 to i64
  %193 = ptrtoint ptr %9 to i64
  %194 = sub i64 %192, %193
  %195 = trunc i64 %194 to i32
  %196 = load ptr, ptr %0, align 8, !tbaa !150
  %197 = getelementptr inbounds %struct.cmd_segment_writer_s, ptr %0, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !152
  %199 = getelementptr inbounds %struct.gx_clist_state_s, ptr %198, i64 0, i32 11
  %200 = tail call ptr @cmd_put_list_op(ptr noundef %196, ptr noundef nonnull %199, i32 noundef %195) #10
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %206

202:                                              ; preds = %190
  %203 = load ptr, ptr %0, align 8, !tbaa !150
  %204 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %203, i64 0, i32 36
  %205 = load i32, ptr %204, align 4, !tbaa !122
  br label %213

206:                                              ; preds = %190
  store i8 %69, ptr %200, align 1, !tbaa !11
  %207 = getelementptr inbounds i8, ptr %200, i64 1
  %208 = shl i64 %194, 32
  %209 = add i64 %208, -4294967296
  %210 = ashr exact i64 %209, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %207, ptr nonnull align 8 %9, i64 %210, i1 false)
  %211 = getelementptr inbounds %struct.cmd_segment_writer_s, ptr %0, i64 0, i32 4
  store i32 %195, ptr %211, align 8, !tbaa !158
  %212 = getelementptr inbounds %struct.cmd_segment_writer_s, ptr %0, i64 0, i32 3
  store ptr %200, ptr %212, align 8, !tbaa !154
  br label %213

213:                                              ; preds = %202, %206, %188, %64
  %214 = phi i32 [ %189, %188 ], [ 0, %64 ], [ %205, %202 ], [ 0, %206 ]
  ret i32 %214
}

declare i32 @gx_path_enum_notes(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 192}
!6 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 200}
!11 = !{!8, !8, i64 0}
!12 = !{!13, !16, i64 128}
!13 = !{!"gs_imager_state_s", !7, i64 0, !14, i64 8, !18, i64 80, !16, i64 128, !20, i64 132, !16, i64 136, !15, i64 140, !21, i64 144, !16, i64 160, !16, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312}
!14 = !{!"gx_line_params_s", !15, i64 0, !16, i64 4, !16, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !17, i64 32}
!15 = !{!"float", !8, i64 0}
!16 = !{!"int", !8, i64 0}
!17 = !{!"gx_dash_params_s", !7, i64 0, !16, i64 8, !15, i64 12, !16, i64 16, !15, i64 20, !16, i64 24, !16, i64 28, !15, i64 32}
!18 = !{!"gs_matrix_fixed_s", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !19, i64 24, !19, i64 32, !16, i64 40}
!19 = !{!"long", !8, i64 0}
!20 = !{!"short", !8, i64 0}
!21 = !{!"gs_fixed_point_s", !19, i64 0, !19, i64 8}
!22 = !{!23, !16, i64 0}
!23 = !{!"gx_fill_params_s", !16, i64 0, !21, i64 8, !15, i64 24, !16, i64 28}
!24 = !{!25, !7, i64 0}
!25 = !{!"gx_device_color_s", !7, i64 0, !8, i64 8, !26, i64 48, !27, i64 56}
!26 = !{!"gs_int_point_s", !16, i64 0, !16, i64 4}
!27 = !{!"_mask", !28, i64 0, !19, i64 24, !7, i64 32}
!28 = !{!"gs_client_color_s", !29, i64 0, !7, i64 16}
!29 = !{!"gs_paint_color_s", !8, i64 0}
!30 = !{!7, !7, i64 0}
!31 = !{i64 0, i64 8, !32, i64 8, i64 8, !32}
!32 = !{!19, !19, i64 0}
!33 = !{!23, !16, i64 28}
!34 = !{!35, !19, i64 8}
!35 = !{!"gs_fixed_rect_s", !21, i64 0, !21, i64 16}
!36 = !{!21, !19, i64 8}
!37 = !{!35, !19, i64 24}
!38 = !{!39, !16, i64 68}
!39 = !{!"gx_device_s", !16, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !16, i64 40, !16, i64 44, !40, i64 48, !16, i64 64, !16, i64 68, !8, i64 72, !8, i64 80, !16, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !19, i64 144, !19, i64 152, !16, i64 160, !41, i64 168, !6, i64 192}
!40 = !{!"gx_device_color_info_s", !16, i64 0, !16, i64 4, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14}
!41 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!42 = !{!23, !15, i64 24}
!43 = !{!21, !19, i64 0}
!44 = !{!45, !7, i64 1288}
!45 = !{!"gx_device_clist_writer_s", !16, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !16, i64 40, !16, i64 44, !40, i64 48, !16, i64 64, !16, i64 68, !8, i64 72, !8, i64 80, !16, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !19, i64 144, !19, i64 152, !16, i64 160, !41, i64 168, !6, i64 192, !7, i64 488, !7, i64 496, !7, i64 504, !16, i64 512, !46, i64 520, !47, i64 536, !48, i64 560, !16, i64 584, !16, i64 588, !7, i64 592, !16, i64 600, !16, i64 604, !49, i64 608, !16, i64 784, !16, i64 788, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !50, i64 832, !16, i64 848, !16, i64 852, !16, i64 856, !16, i64 860, !51, i64 864, !16, i64 904, !16, i64 908, !16, i64 912, !13, i64 920, !8, i64 1240, !7, i64 1288, !19, i64 1296, !8, i64 1304, !52, i64 1312, !8, i64 1360, !19, i64 1392, !19, i64 1400, !19, i64 1408, !16, i64 1416}
!46 = !{!"gx_band_params_s", !16, i64 0, !16, i64 4, !19, i64 8}
!47 = !{!"gx_bits_cache_chunk_s", !7, i64 0, !7, i64 8, !16, i64 16, !16, i64 20}
!48 = !{!"gx_bits_cache_s", !7, i64 0, !16, i64 8, !16, i64 12, !16, i64 16}
!49 = !{!"gx_band_page_info_s", !8, i64 0, !7, i64 64, !8, i64 72, !7, i64 136, !16, i64 144, !19, i64 152, !46, i64 160}
!50 = !{!"cmd_list_s", !7, i64 0, !7, i64 8}
!51 = !{!"gx_strip_bitmap_s", !7, i64 0, !16, i64 8, !26, i64 12, !19, i64 24, !20, i64 32, !20, i64 34, !20, i64 36, !20, i64 38}
!52 = !{!"gs_indexed_params_s", !53, i64 0, !16, i64 16, !8, i64 24, !16, i64 40}
!53 = !{!"gs_base_color_space_s", !7, i64 0, !8, i64 8}
!54 = !{!55, !19, i64 272}
!55 = !{!"gx_clip_path_s", !56, i64 0, !16, i64 128, !35, i64 136, !35, i64 168, !59, i64 200, !8, i64 264, !8, i64 265, !19, i64 272}
!56 = !{!"gx_path_s", !7, i64 0, !35, i64 8, !7, i64 40, !7, i64 48, !7, i64 56, !16, i64 64, !16, i64 68, !21, i64 72, !57, i64 88, !57, i64 104, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123}
!57 = !{!"gs_point_s", !58, i64 0, !58, i64 8}
!58 = !{!"double", !8, i64 0}
!59 = !{!"gx_clip_list_s", !60, i64 0, !7, i64 40, !7, i64 48, !16, i64 56, !16, i64 60}
!60 = !{!"gx_clip_rect_s", !7, i64 0, !7, i64 8, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !8, i64 32}
!61 = !{!45, !19, i64 1296}
!62 = !{!45, !16, i64 784}
!63 = !{!45, !7, i64 792}
!64 = !{!65, !20, i64 82}
!65 = !{!"gx_clist_state_s", !8, i64 0, !16, i64 16, !19, i64 24, !26, i64 32, !8, i64 40, !66, i64 56, !16, i64 72, !20, i64 76, !20, i64 78, !20, i64 80, !20, i64 82, !50, i64 88, !19, i64 104}
!66 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !{!65, !20, i64 78}
!70 = !{!65, !20, i64 76}
!71 = !{!65, !16, i64 72}
!72 = !{!23, !19, i64 16}
!73 = !{!13, !16, i64 48}
!74 = !{!13, !19, i64 152}
!75 = !{!13, !7, i64 40}
!76 = !{!13, !15, i64 52}
!77 = !{!13, !16, i64 56}
!78 = !{!13, !15, i64 28}
!79 = !{!13, !15, i64 32}
!80 = !{!13, !15, i64 140}
!81 = !{!13, !19, i64 144}
!82 = !{!13, !15, i64 80}
!83 = !{!13, !15, i64 84}
!84 = !{!13, !15, i64 88}
!85 = !{!13, !15, i64 92}
!86 = !{!13, !15, i64 96}
!87 = !{!13, !15, i64 100}
!88 = !{i64 0, i64 4, !89, i64 4, i64 4, !89, i64 8, i64 4, !89, i64 12, i64 4, !89, i64 16, i64 4, !89, i64 20, i64 4, !89, i64 24, i64 8, !32, i64 32, i64 8, !32, i64 40, i64 4, !90}
!89 = !{!15, !15, i64 0}
!90 = !{!16, !16, i64 0}
!91 = !{!13, !15, i64 8}
!92 = !{!13, !15, i64 20}
!93 = !{!13, !16, i64 12}
!94 = !{!13, !16, i64 16}
!95 = !{!13, !16, i64 164}
!96 = !{!13, !16, i64 136}
!97 = !{!13, !16, i64 160}
!98 = !{!65, !19, i64 24}
!99 = !{!51, !19, i64 24}
!100 = !{!45, !7, i64 592}
!101 = !{!65, !16, i64 16}
!102 = !{!103, !19, i64 0}
!103 = !{!"", !19, i64 0}
!104 = !{!45, !7, i64 504}
!105 = !{!106, !19, i64 16}
!106 = !{!"", !107, i64 0, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !19, i64 16, !8, i64 24, !8, i64 25, !20, i64 26, !20, i64 28, !20, i64 30}
!107 = !{!"gx_cached_bits_head_s", !16, i64 0, !16, i64 4}
!108 = !{!45, !16, i64 52}
!109 = !{!25, !16, i64 48}
!110 = !{!25, !16, i64 52}
!111 = !{!65, !16, i64 32}
!112 = !{!65, !16, i64 36}
!113 = !{!114, !15, i64 0}
!114 = !{!"gs_matrix_s", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20}
!115 = !{!114, !15, i64 4}
!116 = !{!114, !15, i64 8}
!117 = !{!114, !15, i64 12}
!118 = !{!114, !15, i64 16}
!119 = !{!114, !15, i64 20}
!120 = distinct !{!120, !68}
!121 = distinct !{!121, !68}
!122 = !{!45, !16, i64 788}
!123 = !{!45, !15, i64 928}
!124 = !{!45, !16, i64 932}
!125 = !{!45, !16, i64 936}
!126 = !{!45, !16, i64 1084}
!127 = !{!45, !16, i64 1056}
!128 = !{!45, !16, i64 1080}
!129 = !{!45, !16, i64 968}
!130 = !{!45, !16, i64 976}
!131 = !{!45, !15, i64 952}
!132 = !{!45, !7, i64 960}
!133 = !{!45, !16, i64 772}
!134 = !{!45, !16, i64 68}
!135 = !{!55, !8, i64 264}
!136 = !{!35, !19, i64 0}
!137 = !{!35, !19, i64 16}
!138 = !{!55, !16, i64 128}
!139 = !{!55, !7, i64 240}
!140 = !{!60, !16, i64 28}
!141 = !{!60, !16, i64 24}
!142 = !{!60, !16, i64 16}
!143 = !{!60, !16, i64 20}
!144 = !{!60, !7, i64 0}
!145 = distinct !{!145, !68}
!146 = !{!45, !8, i64 1304}
!147 = !{!45, !16, i64 1328}
!148 = !{!65, !16, i64 56}
!149 = !{!65, !16, i64 60}
!150 = !{!151, !7, i64 0}
!151 = !{!"cmd_segment_writer_s", !7, i64 0, !7, i64 8, !16, i64 16, !7, i64 24, !16, i64 32, !21, i64 40, !8, i64 56}
!152 = !{!151, !7, i64 8}
!153 = !{!151, !16, i64 16}
!154 = !{!151, !7, i64 24}
!155 = distinct !{!155, !68}
!156 = !{!151, !19, i64 40}
!157 = !{!151, !19, i64 48}
!158 = !{!151, !16, i64 32}
!159 = !{!65, !7, i64 96}
!160 = !{!161, !16, i64 8}
!161 = !{!"cmd_prefix_s", !7, i64 0, !16, i64 8}
!162 = !{!45, !7, i64 808}
!163 = distinct !{!163, !68}
!164 = distinct !{!164, !68}
