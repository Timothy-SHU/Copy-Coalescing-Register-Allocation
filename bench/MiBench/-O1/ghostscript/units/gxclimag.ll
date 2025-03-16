; ModuleID = 'gxclimag.c'
source_filename = "gxclimag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gx_strip_bitmap_s = type { ptr, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_clist_writer_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, ptr, i32, %struct.gx_band_params_s, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, ptr, i32, i32, %struct.gx_band_page_info_s, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.cmd_list_s, i32, i32, i32, i32, %struct.gx_strip_bitmap_s, i32, i32, i32, %struct.gs_imager_state_s, [11 x float], ptr, i64, i8, %struct.gs_indexed_params_s, [4 x i64], i64, i64, i64, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.gx_bits_cache_chunk_s = type { ptr, ptr, i32, i32 }
%struct.gx_bits_cache_s = type { ptr, i32, i32, i32 }
%struct.gx_band_page_info_s = type { [60 x i8], ptr, [60 x i8], ptr, i32, i64, %struct.gx_band_params_s }
%struct.cmd_list_s = type { ptr, ptr }
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
%struct.gx_clist_state_s = type { [2 x i64], i32, i64, %struct.gs_int_point_s, [2 x i64], %struct.gx_cmd_rect, i32, i16, i16, i16, i16, %struct.cmd_list_s, i64 }
%struct.gx_cmd_rect = type { i32, i32, i32, i32 }
%struct.tile_hash = type { i64 }
%struct.tile_slot = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, i8, i8, i16, i16, i16 }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_image_s = type { i32, i32, %struct.gs_matrix_s, i32, ptr, [8 x float], i32, i32, i32, i32 }
%struct.clist_image_enum_s = type { ptr, %struct.gs_image_s, %struct.gx_device_color_s, %struct.gs_int_rect_s, ptr, ptr, ptr, i32, i32, i32, %struct.gs_matrix_s, i32, i8, i32, i32, i32 }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gs_color_space_s = type { ptr, %union.anon.1 }
%union.anon.1 = type { %struct.gs_pattern_params_s }
%struct.gs_pattern_params_s = type { i32, %struct.gs_paint_color_space_s }
%struct.gs_paint_color_space_s = type { ptr, %union.anon.2 }
%union.anon.2 = type { %struct.gs_indexed_params_s }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, ptr, i32, [4 x i32], i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.rc_header_s = type { i64, ptr, ptr }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32 }
%struct.gx_ht_bit_s = type { i32, i32 }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, ptr, i64, [256 x i16] }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }

@gs_clist_device_procs = external local_unnamed_addr global %struct.gx_device_procs_s, align 8
@gx_dc_type_pure = external local_unnamed_addr global ptr, align 8
@st_clist_image_enum = internal constant %struct.gs_memory_struct_type_s { i32 296, ptr @.str.1, ptr null, ptr null, ptr @clist_image_enum_enum_ptrs, ptr @clist_image_enum_reloc_ptrs, ptr null }, align 8
@.str = private unnamed_addr constant [18 x i8] c"clist_begin_image\00", align 1
@clist_begin_image.base_decode = internal unnamed_addr constant [8 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@.str.1 = private unnamed_addr constant [17 x i8] c"clist_image_enum\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"\01\08\04\08\02\08\04\08\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"clist_end_image\00", align 1
@switch.table.clist_begin_image = private unnamed_addr constant [12 x i8] c" @ `   \80   \A0", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @gs_climag_init(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store ptr @clist_fill_mask, ptr getelementptr inbounds (%struct.gx_device_procs_s, ptr @gs_clist_device_procs, i64 0, i32 26), align 8, !tbaa !5
  store ptr @clist_begin_image, ptr getelementptr inbounds (%struct.gx_device_procs_s, ptr @gs_clist_device_procs, i64 0, i32 31), align 8, !tbaa !10
  store ptr @clist_image_data, ptr getelementptr inbounds (%struct.gx_device_procs_s, ptr @gs_clist_device_procs, i64 0, i32 32), align 8, !tbaa !11
  store ptr @clist_end_image, ptr getelementptr inbounds (%struct.gx_device_procs_s, ptr @gs_clist_device_procs, i64 0, i32 33), align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_fill_mask(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12) #1 {
  %14 = alloca %struct.gx_strip_bitmap_s, align 8
  %15 = ashr i32 %10, 1
  %16 = icmp sgt i32 %10, 1
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %9, align 8, !tbaa !13
  %19 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !21
  %20 = icmp eq ptr %18, %19
  %21 = select i1 %20, i8 -104, i8 -100
  br label %22

22:                                               ; preds = %13, %17
  %23 = phi i8 [ %21, %17 ], [ -88, %13 ]
  %24 = or i32 %6, %5
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %28 = add nsw i32 %27, %7
  %29 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %30 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %31 = sub nsw i32 %2, %30
  %32 = icmp slt i32 %6, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = add nsw i32 %8, %6
  %35 = mul nsw i32 %6, %3
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 0, %36
  %38 = getelementptr inbounds i8, ptr %1, i64 %37
  br label %39

39:                                               ; preds = %26, %33, %22
  %40 = phi i32 [ %34, %33 ], [ %8, %26 ], [ %8, %22 ]
  %41 = phi i32 [ %28, %33 ], [ %28, %26 ], [ %7, %22 ]
  %42 = phi i32 [ 0, %33 ], [ %6, %26 ], [ %6, %22 ]
  %43 = phi i32 [ %29, %33 ], [ %29, %26 ], [ %5, %22 ]
  %44 = phi i64 [ 0, %33 ], [ %4, %26 ], [ %4, %22 ]
  %45 = phi i32 [ %31, %33 ], [ %31, %26 ], [ %2, %22 ]
  %46 = phi ptr [ %38, %33 ], [ %1, %26 ], [ %1, %22 ]
  %47 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %48 = load i32, ptr %47, align 8, !tbaa !22
  %49 = sub nsw i32 %48, %41
  %50 = icmp sgt i32 %43, %49
  %51 = sub nsw i32 %48, %43
  %52 = select i1 %50, i32 %51, i32 %41
  %53 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %54 = load i32, ptr %53, align 4, !tbaa !27
  %55 = sub nsw i32 %54, %40
  %56 = icmp sgt i32 %42, %55
  %57 = sub nsw i32 %54, %42
  %58 = select i1 %56, i32 %57, i32 %40
  %59 = icmp slt i32 %52, 1
  %60 = icmp slt i32 %58, 1
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %286, label %62

62:                                               ; preds = %39
  %63 = tail call i32 @cmd_check_clip_path(ptr noundef %0, ptr noundef %12) #9
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  tail call void @cmd_clear_known(ptr noundef %0, i32 noundef 256) #9
  br label %66

66:                                               ; preds = %65, %62
  %67 = shl i32 %45, %15
  %68 = add nsw i32 %58, %42
  %69 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 6, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !28
  %71 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %72 = and i32 %67, 7
  %73 = lshr i32 %72, %15
  %74 = ashr i32 %67, 3
  %75 = sext i32 %74 to i64
  %76 = getelementptr i8, ptr %46, i64 %75
  %77 = icmp eq i32 %11, 252
  %78 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %79 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %80 = icmp ne ptr %12, null
  %81 = zext i1 %80 to i32
  %82 = icmp eq i64 %44, 0
  %83 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 31
  %84 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 24
  %85 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %14, i64 0, i32 1
  %86 = trunc i32 %7 to i16
  %87 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %14, i64 0, i32 4
  %88 = and i32 %7, 65535
  %89 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %14, i64 0, i32 2
  %90 = trunc i32 %8 to i16
  %91 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %14, i64 0, i32 5
  %92 = and i32 %8, 65535
  %93 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %14, i64 0, i32 2, i32 1
  %94 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %14, i64 0, i32 7
  %95 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %14, i64 0, i32 6
  %96 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %14, i64 0, i32 3
  %97 = or i32 %42, %5
  %98 = icmp ult i32 %97, 128
  %99 = icmp eq i32 %2, 0
  %100 = ashr i32 %2, 5
  %101 = icmp ult i32 %2, 32
  %102 = trunc i32 %2 to i8
  %103 = and i8 %102, 31
  %104 = or disjoint i8 %103, 96
  %105 = trunc i32 %2 to i8
  %106 = or disjoint i8 %105, 64
  %107 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %108 = trunc i32 %5 to i8
  %109 = trunc i32 %42 to i8
  %110 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %111 = icmp eq i32 %73, %2
  %112 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %113 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  br label %114

114:                                              ; preds = %279, %66
  %115 = phi i32 [ %42, %66 ], [ %124, %279 ]
  %116 = phi i32 [ undef, %66 ], [ %281, %279 ]
  %117 = sdiv i32 %115, %70
  %118 = load ptr, ptr %71, align 8, !tbaa !28
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds %struct.gx_clist_state_s, ptr %118, i64 %119
  %121 = add nsw i32 %117, 1
  %122 = mul nsw i32 %121, %70
  %123 = icmp sge i32 %122, %68
  %124 = call i32 @llvm.smin.i32(i32 %122, i32 %68)
  %125 = sub nsw i32 %124, %115
  %126 = sub nsw i32 %115, %42
  %127 = mul nsw i32 %126, %3
  %128 = sext i32 %127 to i64
  %129 = getelementptr i8, ptr %76, i64 %128
  br i1 %77, label %130, label %139

130:                                              ; preds = %114
  %131 = getelementptr inbounds %struct.gx_clist_state_s, ptr %118, i64 %119, i32 7
  %132 = load i16, ptr %131, align 4, !tbaa !29
  %133 = icmp eq i16 %132, 1
  br i1 %133, label %134, label %155

134:                                              ; preds = %130
  %135 = call i32 @cmd_put_enable_lop(ptr noundef %0, ptr noundef %120, i32 noundef 0) #9
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %155

137:                                              ; preds = %134
  %138 = load i32, ptr %113, align 4, !tbaa !28
  br label %279

139:                                              ; preds = %114
  %140 = getelementptr inbounds %struct.gx_clist_state_s, ptr %118, i64 %119, i32 6
  %141 = load i32, ptr %140, align 8, !tbaa !33
  %142 = icmp eq i32 %141, %11
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = call i32 @cmd_set_lop(ptr noundef %0, ptr noundef %120, i32 noundef %11) #9
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %279, label %146

146:                                              ; preds = %143, %139
  %147 = getelementptr inbounds %struct.gx_clist_state_s, ptr %118, i64 %119, i32 7
  %148 = load i16, ptr %147, align 4, !tbaa !29
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = call i32 @cmd_put_enable_lop(ptr noundef %0, ptr noundef %120, i32 noundef 1) #9
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i32, ptr %78, align 4, !tbaa !28
  br label %279

155:                                              ; preds = %146, %150, %130, %134
  br i1 %16, label %156, label %169

156:                                              ; preds = %155
  %157 = getelementptr inbounds %struct.gx_clist_state_s, ptr %118, i64 %119, i32 9
  %158 = load i16, ptr %157, align 8, !tbaa !34
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.gx_clist_state_s, ptr %118, i64 %119, i32 11
  %162 = call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %161, i32 noundef 1) #9
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i32, ptr %79, align 4, !tbaa !28
  br label %167

166:                                              ; preds = %160
  store i8 15, ptr %162, align 1, !tbaa !28
  store i16 1, ptr %157, align 8, !tbaa !34
  br label %167

167:                                              ; preds = %166, %164
  %168 = phi i32 [ %165, %164 ], [ %116, %166 ]
  br i1 %163, label %279, label %169

169:                                              ; preds = %167, %156, %155
  %170 = phi i32 [ %116, %156 ], [ %168, %167 ], [ %116, %155 ]
  %171 = getelementptr inbounds %struct.gx_clist_state_s, ptr %118, i64 %119, i32 10
  %172 = load i16, ptr %171, align 2, !tbaa !35
  %173 = and i16 %172, 256
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %169
  %176 = call i32 @cmd_write_unknown(ptr noundef %0, ptr noundef %120, i32 noundef 256) #9
  %177 = icmp sgt i32 %176, -1
  %178 = select i1 %177, i32 %170, i32 %176
  br i1 %177, label %179, label %279

179:                                              ; preds = %175, %169
  %180 = phi i32 [ %178, %175 ], [ %170, %169 ]
  %181 = getelementptr inbounds %struct.gx_clist_state_s, ptr %118, i64 %119, i32 8
  %182 = load i16, ptr %181, align 2, !tbaa !36
  %183 = sext i16 %182 to i32
  %184 = xor i32 %183, %81
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %186, label %191

186:                                              ; preds = %179
  %187 = call i32 @cmd_put_enable_clip(ptr noundef %0, ptr noundef %120, i32 noundef %81) #9
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = load i32, ptr %112, align 4, !tbaa !28
  br label %279

191:                                              ; preds = %186, %179
  %192 = call i32 @cmd_put_drawing_color(ptr noundef %0, ptr noundef %120, ptr noundef %9) #9
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %279, label %194

194:                                              ; preds = %191
  br i1 %82, label %268, label %195

195:                                              ; preds = %194
  %196 = load ptr, ptr %9, align 8, !tbaa !13
  %197 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !21
  %198 = icmp eq ptr %196, %197
  %199 = and i1 %77, %198
  br i1 %199, label %200, label %268

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.gx_clist_state_s, ptr %118, i64 %119, i32 2
  %202 = load i64, ptr %201, align 8, !tbaa !37
  %203 = icmp eq i64 %202, %44
  br i1 %203, label %204, label %218

204:                                              ; preds = %200
  %205 = load ptr, ptr %83, align 8, !tbaa !28
  %206 = getelementptr inbounds %struct.gx_clist_state_s, ptr %118, i64 %119, i32 1
  %207 = load i32, ptr %206, align 8, !tbaa !38
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.tile_hash, ptr %205, i64 %208
  %210 = load i64, ptr %209, align 8, !tbaa !39
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %204
  %213 = load ptr, ptr %84, align 8, !tbaa !28
  %214 = getelementptr inbounds i8, ptr %213, i64 %210
  %215 = getelementptr inbounds %struct.tile_slot, ptr %214, i64 0, i32 5
  %216 = load i64, ptr %215, align 8, !tbaa !41
  %217 = icmp eq i64 %216, %44
  br i1 %217, label %222, label %218

218:                                              ; preds = %212, %204, %200
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %14) #9
  store ptr %1, ptr %14, align 8, !tbaa !44
  store i32 %3, ptr %85, align 8, !tbaa !46
  store i16 %86, ptr %87, align 8, !tbaa !47
  store i32 %88, ptr %89, align 4, !tbaa !48
  store i16 %90, ptr %91, align 2, !tbaa !49
  store i32 %92, ptr %93, align 8, !tbaa !50
  store i16 0, ptr %94, align 2, !tbaa !51
  store i16 0, ptr %95, align 4, !tbaa !52
  store i64 %44, ptr %96, align 8, !tbaa !53
  %219 = call i32 @clist_change_bits(ptr noundef %0, ptr noundef %120, ptr noundef nonnull %14, i32 noundef %10) #9
  %220 = icmp sgt i32 %219, -1
  %221 = select i1 %220, i32 0, i32 6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %14) #9
  br i1 %220, label %222, label %265

222:                                              ; preds = %218, %212
  br i1 %98, label %227, label %223

223:                                              ; preds = %222
  %224 = call i32 @cmd_size_w(i32 noundef %5) #9
  %225 = call i32 @cmd_size_w(i32 noundef %42) #9
  %226 = add nsw i32 %225, %224
  br label %227

227:                                              ; preds = %222, %223
  %228 = phi i32 [ %226, %223 ], [ 2, %222 ]
  %229 = add nsw i32 %228, 1
  br i1 %99, label %246, label %230

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.gx_clist_state_s, ptr %118, i64 %119, i32 11
  %232 = call i32 @cmd_size_w(i32 noundef %100) #9
  %233 = add nsw i32 %232, 2
  %234 = call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %231, i32 noundef %233) #9
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %238

236:                                              ; preds = %230
  %237 = load i32, ptr %107, align 4, !tbaa !28
  br label %244

238:                                              ; preds = %230
  store i8 6, ptr %234, align 1, !tbaa !28
  %239 = getelementptr inbounds i8, ptr %234, i64 1
  br i1 %101, label %243, label %240

240:                                              ; preds = %238
  store i8 %104, ptr %239, align 1, !tbaa !28
  %241 = getelementptr inbounds i8, ptr %234, i64 2
  %242 = call ptr @cmd_put_w(i32 noundef %100, ptr noundef nonnull %241) #9
  br label %244

243:                                              ; preds = %238
  store i8 %106, ptr %239, align 1, !tbaa !28
  br label %244

244:                                              ; preds = %240, %243, %236
  %245 = phi i32 [ %237, %236 ], [ %180, %243 ], [ %180, %240 ]
  br i1 %235, label %265, label %246

246:                                              ; preds = %227, %244
  %247 = phi i32 [ %245, %244 ], [ %180, %227 ]
  %248 = getelementptr inbounds %struct.gx_clist_state_s, ptr %118, i64 %119, i32 11
  %249 = call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %248, i32 noundef %229) #9
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %253

251:                                              ; preds = %246
  %252 = load i32, ptr %110, align 4, !tbaa !28
  br label %265

253:                                              ; preds = %246
  store i8 %23, ptr %249, align 1, !tbaa !28
  %254 = getelementptr inbounds i8, ptr %249, i64 1
  br i1 %98, label %255, label %257

255:                                              ; preds = %253
  store i8 %108, ptr %254, align 1, !tbaa !28
  %256 = getelementptr inbounds i8, ptr %249, i64 2
  store i8 %109, ptr %256, align 1, !tbaa !28
  br label %260

257:                                              ; preds = %253
  %258 = call ptr @cmd_put_w(i32 noundef %5, ptr noundef nonnull %254) #9
  %259 = call ptr @cmd_put_w(i32 noundef %42, ptr noundef %258) #9
  br label %260

260:                                              ; preds = %257, %255
  %261 = getelementptr inbounds %struct.gx_clist_state_s, ptr %118, i64 %119, i32 5
  store i32 %5, ptr %261, align 8, !tbaa.struct !54
  %262 = getelementptr inbounds i8, ptr %261, i64 4
  store i32 %42, ptr %262, align 4, !tbaa.struct !56
  %263 = getelementptr inbounds i8, ptr %261, i64 8
  store i32 %7, ptr %263, align 8, !tbaa.struct !57
  %264 = getelementptr inbounds i8, ptr %261, i64 12
  store i32 %58, ptr %264, align 4, !tbaa.struct !58
  br label %265

265:                                              ; preds = %251, %260, %244, %218
  %266 = phi i32 [ %221, %218 ], [ 1, %251 ], [ 11, %260 ], [ 1, %244 ]
  %267 = phi i32 [ %180, %218 ], [ %252, %251 ], [ %247, %260 ], [ %245, %244 ]
  switch i32 %266, label %279 [
    i32 6, label %268
    i32 11, label %277
  ]

268:                                              ; preds = %194, %195, %265
  %269 = phi i32 [ %267, %265 ], [ %180, %195 ], [ %180, %194 ]
  %270 = icmp eq i32 %115, %42
  %271 = icmp eq i32 %125, %8
  %272 = select i1 %270, i1 %271, i1 false
  %273 = select i1 %272, i1 %111, i1 false
  %274 = select i1 %273, i64 %44, i64 0
  %275 = call i32 @gx_default_fill_mask(ptr noundef %0, ptr noundef %129, i32 noundef %73, i32 noundef %3, i64 noundef %274, i32 noundef %43, i32 noundef %115, i32 noundef %52, i32 noundef %125, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef null) #9
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %268, %265
  %278 = phi i32 [ %267, %265 ], [ %269, %268 ]
  br label %279

279:                                              ; preds = %268, %191, %143, %167, %175, %277, %265, %189, %153, %137
  %280 = phi i32 [ 1, %137 ], [ 1, %189 ], [ %266, %265 ], [ 0, %277 ], [ 1, %175 ], [ 1, %167 ], [ 1, %153 ], [ 1, %143 ], [ 1, %191 ], [ 1, %268 ]
  %281 = phi i32 [ %138, %137 ], [ %190, %189 ], [ %267, %265 ], [ %278, %277 ], [ %178, %175 ], [ %168, %167 ], [ %154, %153 ], [ %144, %143 ], [ %192, %191 ], [ %275, %268 ]
  %282 = icmp ne i32 %280, 0
  %283 = select i1 %282, i1 true, i1 %123
  br i1 %283, label %284, label %114

284:                                              ; preds = %279
  %285 = select i1 %282, i32 %281, i32 0
  br label %286

286:                                              ; preds = %284, %39
  %287 = phi i32 [ 0, %39 ], [ %285, %284 ]
  ret i32 %287
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_begin_image(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef writeonly %8) #1 {
  %10 = alloca %struct.gs_matrix_s, align 4
  %11 = alloca %struct.gs_rect_s, align 8
  %12 = alloca %struct.gs_rect_s, align 8
  %13 = alloca [88 x i8], align 16
  %14 = alloca %struct.gs_int_rect_s, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #9
  %15 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = tail call ptr %16(ptr noundef %7, ptr noundef nonnull @st_clist_image_enum, ptr noundef nonnull @.str) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %560, label %19

19:                                               ; preds = %9
  store ptr %7, ptr %17, align 8, !tbaa !62
  store ptr %17, ptr %8, align 8, !tbaa !21
  %20 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 7
  %21 = load i32, ptr %20, align 4, !tbaa !68
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !69
  %26 = tail call i32 @gs_color_space_get_index(ptr noundef %25) #9
  %27 = icmp eq i32 %26, 8
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = tail call ptr @gs_color_space_indexed_base(ptr noundef %25) #9
  %30 = tail call i32 @gs_color_space_get_index(ptr noundef %29) #9
  br label %33

31:                                               ; preds = %23
  %32 = tail call i32 @gs_color_space_num_components(ptr noundef %25) #9
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i32 [ 1, %28 ], [ %32, %31 ]
  %35 = phi i32 [ 1, %28 ], [ 0, %31 ]
  %36 = phi i32 [ %30, %28 ], [ %26, %31 ]
  %37 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 9
  %38 = load i32, ptr %37, align 4, !tbaa !70
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !71
  %43 = shl i32 %42, 4
  %44 = xor i32 %43, %42
  %45 = and i32 %44, 240
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %40, %33
  %48 = phi i1 [ false, %33 ], [ %46, %40 ]
  %49 = zext i1 %48 to i32
  br label %50

50:                                               ; preds = %47, %19
  %51 = phi i32 [ %49, %47 ], [ 1, %19 ]
  %52 = phi i32 [ %34, %47 ], [ 1, %19 ]
  %53 = phi i32 [ %35, %47 ], [ 0, %19 ]
  %54 = phi i32 [ %36, %47 ], [ 0, %19 ]
  %55 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 61
  %56 = load i32, ptr %55, align 8, !tbaa !28
  %57 = icmp sgt i32 %54, 2
  %58 = or i32 %56, %53
  %59 = icmp ne i32 %58, 0
  %60 = select i1 %59, i1 true, i1 %57
  br i1 %60, label %101, label %61

61:                                               ; preds = %50
  %62 = icmp eq i32 %51, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %61
  %64 = load ptr, ptr %5, align 8, !tbaa !13
  %65 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !21
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %67, label %101

67:                                               ; preds = %63, %61
  %68 = icmp ne i32 %3, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %67
  %70 = icmp sgt i32 %52, 1
  br i1 %70, label %101, label %71

71:                                               ; preds = %69
  %72 = icmp eq i32 %3, 2
  br i1 %72, label %73, label %77

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !77
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %101, label %77

77:                                               ; preds = %73, %71, %67
  %78 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 6
  %79 = load i32, ptr %78, align 8, !tbaa !78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2
  %83 = call i32 @gs_matrix_invert(ptr noundef nonnull %82, ptr noundef nonnull %10) #9
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2
  %87 = call i32 @gs_matrix_multiply(ptr noundef nonnull %10, ptr noundef nonnull %86, ptr noundef nonnull %10) #9
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %85
  %90 = call fastcc i32 @image_matrix_ok_to_band(ptr noundef nonnull %10), !range !79
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7
  %94 = load i32, ptr %93, align 8, !tbaa !80
  %95 = icmp eq i32 %94, 4
  %96 = icmp eq i32 %54, 1
  %97 = select i1 %95, i1 %96, i1 false
  %98 = zext i1 %97 to i32
  %99 = call fastcc i32 @cmd_put_color_mapping(ptr noundef %0, ptr noundef %1, i32 noundef %98)
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %92, %89, %85, %81, %77, %73, %69, %63, %50
  %102 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 6
  %103 = call i32 @gx_default_begin_image(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %102) #9
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %560

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 11
  %107 = load ptr, ptr %106, align 8, !tbaa !81
  call void %107(ptr noundef %7, ptr noundef nonnull %17, ptr noundef nonnull @.str) #9
  br label %560

108:                                              ; preds = %92
  %109 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 6
  store ptr null, ptr %109, align 8, !tbaa !82
  %110 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %110, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false), !tbaa.struct !83
  %111 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %111, ptr noundef nonnull align 8 dereferenceable(96) %5, i64 96, i1 false), !tbaa.struct !85
  %112 = icmp eq ptr %4, null
  %113 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 3
  br i1 %112, label %115, label %114

114:                                              ; preds = %108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %113, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !54
  br label %122

115:                                              ; preds = %108
  store i32 0, ptr %113, align 8, !tbaa !88
  %116 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 3, i32 0, i32 1
  store i32 0, ptr %116, align 4, !tbaa !89
  %117 = load i32, ptr %2, align 8, !tbaa !90
  %118 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 3, i32 1
  store i32 %117, ptr %118, align 8, !tbaa !91
  %119 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 1
  %120 = load i32, ptr %119, align 4, !tbaa !92
  %121 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 3, i32 1, i32 1
  store i32 %120, ptr %121, align 4, !tbaa !93
  br label %122

122:                                              ; preds = %115, %114
  %123 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 4
  store ptr %1, ptr %123, align 8, !tbaa !94
  %124 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 5
  store ptr %6, ptr %124, align 8, !tbaa !95
  %125 = zext i1 %68 to i32
  %126 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 7
  store i32 %125, ptr %126, align 8, !tbaa !96
  %127 = select i1 %68, i32 %52, i32 1
  %128 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 8
  store i32 %127, ptr %128, align 4, !tbaa !97
  %129 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 3
  %130 = load i32, ptr %129, align 8, !tbaa !77
  %131 = mul nsw i32 %130, %52
  %132 = sdiv i32 %131, %127
  %133 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 9
  store i32 %132, ptr %133, align 8, !tbaa !98
  %134 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %134, ptr noundef nonnull align 4 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !99
  %135 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 11
  store i32 %51, ptr %135, align 4, !tbaa !100
  %136 = trunc i32 %54 to i8
  %137 = shl i8 %136, 4
  %138 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 12
  store i8 %137, ptr %138, align 8, !tbaa !101
  %139 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 3
  %140 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 3, i32 0, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !89
  %142 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 15
  store i32 %141, ptr %142, align 4, !tbaa !102
  %143 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 2
  %144 = load float, ptr %143, align 8, !tbaa !28
  %145 = load float, ptr %86, align 8, !tbaa !103
  %146 = fcmp une float %144, %145
  br i1 %146, label %177, label %147

147:                                              ; preds = %122
  %148 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 2, i32 1
  %149 = load float, ptr %148, align 4, !tbaa !28
  %150 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2, i32 1
  %151 = load float, ptr %150, align 4, !tbaa !104
  %152 = fcmp une float %149, %151
  br i1 %152, label %177, label %153

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 2, i32 2
  %155 = load float, ptr %154, align 8, !tbaa !28
  %156 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2, i32 2
  %157 = load float, ptr %156, align 8, !tbaa !105
  %158 = fcmp une float %155, %157
  br i1 %158, label %177, label %159

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 2, i32 3
  %161 = load float, ptr %160, align 4, !tbaa !28
  %162 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2, i32 3
  %163 = load float, ptr %162, align 4, !tbaa !106
  %164 = fcmp une float %161, %163
  br i1 %164, label %177, label %165

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 2, i32 4
  %167 = load float, ptr %166, align 8, !tbaa !28
  %168 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2, i32 4
  %169 = load float, ptr %168, align 8, !tbaa !107
  %170 = fcmp une float %167, %169
  br i1 %170, label %177, label %171

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51, i32 2, i32 5
  %173 = load float, ptr %172, align 4, !tbaa !28
  %174 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2, i32 5
  %175 = load float, ptr %174, align 4, !tbaa !108
  %176 = fcmp une float %173, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %171, %165, %159, %153, %147, %122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %143, ptr noundef nonnull align 8 dereferenceable(48) %86, i64 48, i1 false), !tbaa.struct !109
  br label %178

178:                                              ; preds = %177, %171
  %179 = phi i32 [ 4, %177 ], [ 0, %171 ]
  %180 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 55
  %181 = load i8, ptr %180, align 8, !tbaa !28
  %182 = load i8, ptr %138, align 8, !tbaa !101
  %183 = icmp eq i8 %181, %182
  br i1 %183, label %184, label %195

184:                                              ; preds = %178
  %185 = and i8 %181, 8
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %204, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 56, i32 1
  %189 = load i32, ptr %188, align 8, !tbaa !28
  %190 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 1, i32 4
  %191 = load ptr, ptr %190, align 8, !tbaa !110
  %192 = getelementptr inbounds %struct.gs_color_space_s, ptr %191, i64 0, i32 1, i32 0, i32 1, i32 1
  %193 = load i32, ptr %192, align 8, !tbaa !28
  %194 = icmp eq i32 %189, %193
  br i1 %194, label %204, label %195

195:                                              ; preds = %187, %178
  %196 = or disjoint i32 %179, 512
  store i8 %182, ptr %180, align 8, !tbaa !28
  %197 = and i8 %182, 8
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 56
  %201 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 1, i32 4
  %202 = load ptr, ptr %201, align 8, !tbaa !110
  %203 = getelementptr inbounds %struct.gs_color_space_s, ptr %202, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %200, ptr noundef nonnull align 8 dereferenceable(48) %203, i64 48, i1 false), !tbaa.struct !111
  br label %204

204:                                              ; preds = %195, %199, %187, %184
  %205 = phi i32 [ %196, %199 ], [ %196, %195 ], [ %179, %187 ], [ %179, %184 ]
  %206 = call i32 @cmd_check_clip_path(ptr noundef %0, ptr noundef %6) #9
  %207 = icmp eq i32 %206, 0
  %208 = or i32 %205, 256
  %209 = select i1 %207, i32 %205, i32 %208
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %204
  call void @cmd_clear_known(ptr noundef %0, i32 noundef %209) #9
  br label %212

212:                                              ; preds = %211, %204
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %13) #9
  %213 = load i32, ptr %2, align 8, !tbaa !90
  %214 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 1
  %215 = load i32, ptr %214, align 4, !tbaa !92
  %216 = or i32 %215, %213
  %217 = icmp ult i32 %216, 128
  br i1 %217, label %218, label %223

218:                                              ; preds = %212
  %219 = trunc i32 %213 to i8
  store i8 %219, ptr %13, align 16, !tbaa !28
  %220 = trunc i32 %215 to i8
  %221 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 %220, ptr %221, align 1, !tbaa !28
  %222 = getelementptr inbounds i8, ptr %13, i64 2
  br label %226

223:                                              ; preds = %212
  %224 = call ptr @cmd_put_w(i32 noundef %213, ptr noundef nonnull %13) #9
  %225 = call ptr @cmd_put_w(i32 noundef %215, ptr noundef %224) #9
  br label %226

226:                                              ; preds = %223, %218
  %227 = phi ptr [ %225, %223 ], [ %222, %218 ]
  %228 = load i32, ptr %20, align 4, !tbaa !68
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %243

230:                                              ; preds = %226
  %231 = load i32, ptr %129, align 8, !tbaa !77
  %232 = add i32 %231, -1
  %233 = icmp ult i32 %232, 12
  br i1 %233, label %234, label %556

234:                                              ; preds = %230
  %235 = trunc i32 %232 to i16
  %236 = lshr i16 2187, %235
  %237 = and i16 %236, 1
  %238 = icmp eq i16 %237, 0
  br i1 %238, label %556, label %239

239:                                              ; preds = %234
  %240 = zext nneg i32 %232 to i64
  %241 = getelementptr inbounds [12 x i8], ptr @switch.table.clist_begin_image, i64 0, i64 %240
  %242 = load i8, ptr %241, align 1
  br label %243

243:                                              ; preds = %239, %226
  %244 = phi i8 [ 0, %226 ], [ %242, %239 ]
  %245 = load i32, ptr %78, align 8, !tbaa !78
  %246 = icmp eq i32 %245, 0
  %247 = or disjoint i8 %244, 16
  %248 = select i1 %246, i8 %244, i8 %247
  %249 = load float, ptr %82, align 8, !tbaa !112
  %250 = load i32, ptr %2, align 8, !tbaa !90
  %251 = sitofp i32 %250 to float
  %252 = fcmp oeq float %249, %251
  br i1 %252, label %253, label %277

253:                                              ; preds = %243
  %254 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2, i32 1
  %255 = load float, ptr %254, align 4, !tbaa !113
  %256 = fcmp oeq float %255, 0.000000e+00
  br i1 %256, label %257, label %277

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2, i32 2
  %259 = load float, ptr %258, align 8, !tbaa !114
  %260 = fcmp oeq float %259, 0.000000e+00
  br i1 %260, label %261, label %277

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2, i32 3
  %263 = load float, ptr %262, align 4, !tbaa !115
  %264 = load i32, ptr %214, align 4, !tbaa !92
  %265 = sub nsw i32 0, %264
  %266 = sitofp i32 %265 to float
  %267 = fcmp oeq float %263, %266
  br i1 %267, label %268, label %277

268:                                              ; preds = %261
  %269 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2, i32 4
  %270 = load float, ptr %269, align 8, !tbaa !116
  %271 = fcmp oeq float %270, 0.000000e+00
  br i1 %271, label %272, label %277

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2, i32 5
  %274 = load float, ptr %273, align 4, !tbaa !117
  %275 = sitofp i32 %264 to float
  %276 = fcmp oeq float %274, %275
  br i1 %276, label %280, label %277

277:                                              ; preds = %272, %268, %261, %257, %253, %243
  %278 = or disjoint i8 %248, 8
  %279 = call ptr @cmd_for_matrix(ptr noundef %227, ptr noundef nonnull %82) #9
  br label %280

280:                                              ; preds = %277, %272
  %281 = phi i8 [ %248, %272 ], [ %278, %277 ]
  %282 = phi ptr [ %227, %272 ], [ %279, %277 ]
  %283 = shl i32 %52, 1
  %284 = icmp sgt i32 %52, 0
  br i1 %284, label %285, label %300

285:                                              ; preds = %280
  %286 = call i32 @llvm.smax.i32(i32 %283, i32 1)
  %287 = zext nneg i32 %286 to i64
  br label %288

288:                                              ; preds = %285, %295
  %289 = phi i64 [ 0, %285 ], [ %296, %295 ]
  %290 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 5, i64 %289
  %291 = load float, ptr %290, align 4, !tbaa !84
  %292 = getelementptr inbounds float, ptr @clist_begin_image.base_decode, i64 %289
  %293 = load float, ptr %292, align 4, !tbaa !84
  %294 = fcmp une float %291, %293
  br i1 %294, label %298, label %295

295:                                              ; preds = %288
  %296 = add nuw nsw i64 %289, 1
  %297 = icmp eq i64 %296, %287
  br i1 %297, label %300, label %288, !llvm.loop !118

298:                                              ; preds = %288
  %299 = trunc i64 %289 to i32
  br label %300

300:                                              ; preds = %298, %295, %280
  %301 = phi i32 [ 0, %280 ], [ %299, %298 ], [ %286, %295 ]
  %302 = icmp eq i32 %301, %283
  br i1 %302, label %355, label %303

303:                                              ; preds = %300
  %304 = getelementptr inbounds i8, ptr %282, i64 1
  %305 = or i8 %281, 4
  %306 = icmp sgt i32 %52, 0
  br i1 %306, label %307, label %349

307:                                              ; preds = %303
  %308 = sext i32 %283 to i64
  br label %309

309:                                              ; preds = %307, %342
  %310 = phi i64 [ 0, %307 ], [ %345, %342 ]
  %311 = phi ptr [ %304, %307 ], [ %344, %342 ]
  %312 = phi i8 [ 0, %307 ], [ %343, %342 ]
  %313 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 5, i64 %310
  %314 = load float, ptr %313, align 4, !tbaa !84
  %315 = or disjoint i64 %310, 1
  %316 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 5, i64 %315
  %317 = load float, ptr %316, align 4, !tbaa !84
  %318 = shl i8 %312, 2
  %319 = fcmp oeq float %314, 0.000000e+00
  br i1 %319, label %320, label %324

320:                                              ; preds = %309
  %321 = getelementptr inbounds float, ptr @clist_begin_image.base_decode, i64 %315
  %322 = load float, ptr %321, align 4, !tbaa !84
  %323 = fcmp oeq float %317, %322
  br i1 %323, label %342, label %324

324:                                              ; preds = %320, %309
  %325 = getelementptr inbounds float, ptr @clist_begin_image.base_decode, i64 %315
  %326 = load float, ptr %325, align 4, !tbaa !84
  %327 = fcmp oeq float %314, %326
  %328 = fcmp oeq float %317, 0.000000e+00
  %329 = select i1 %327, i1 %328, i1 false
  br i1 %329, label %330, label %332

330:                                              ; preds = %324
  %331 = or disjoint i8 %318, 1
  br label %342

332:                                              ; preds = %324
  %333 = fcmp une float %314, 0.000000e+00
  br i1 %333, label %334, label %337

334:                                              ; preds = %332
  %335 = or disjoint i8 %318, 1
  store float %314, ptr %311, align 1
  %336 = getelementptr inbounds i8, ptr %311, i64 4
  br label %337

337:                                              ; preds = %334, %332
  %338 = phi i8 [ %335, %334 ], [ %318, %332 ]
  %339 = phi ptr [ %336, %334 ], [ %311, %332 ]
  %340 = add i8 %338, 2
  store float %317, ptr %339, align 1
  %341 = getelementptr inbounds i8, ptr %339, i64 4
  br label %342

342:                                              ; preds = %330, %337, %320
  %343 = phi i8 [ %318, %320 ], [ %331, %330 ], [ %340, %337 ]
  %344 = phi ptr [ %311, %320 ], [ %311, %330 ], [ %341, %337 ]
  %345 = add nuw nsw i64 %310, 2
  %346 = icmp slt i64 %345, %308
  br i1 %346, label %309, label %347, !llvm.loop !120

347:                                              ; preds = %342
  %348 = zext i8 %343 to i32
  br label %349

349:                                              ; preds = %347, %303
  %350 = phi i32 [ 0, %303 ], [ %348, %347 ]
  %351 = phi ptr [ %304, %303 ], [ %344, %347 ]
  %352 = sub nsw i32 8, %283
  %353 = shl i32 %350, %352
  %354 = trunc i32 %353 to i8
  store i8 %354, ptr %282, align 1, !tbaa !28
  br label %355

355:                                              ; preds = %349, %300
  %356 = phi i8 [ %305, %349 ], [ %281, %300 ]
  %357 = phi ptr [ %351, %349 ], [ %282, %300 ]
  %358 = load i32, ptr %20, align 4, !tbaa !68
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %364, label %360

360:                                              ; preds = %355
  %361 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 8
  %362 = load i32, ptr %361, align 8, !tbaa !121
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %370, label %368

364:                                              ; preds = %355
  %365 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 9
  %366 = load i32, ptr %365, align 4, !tbaa !70
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %370, label %368

368:                                              ; preds = %364, %360
  %369 = or i8 %356, 2
  br label %370

370:                                              ; preds = %368, %364, %360
  %371 = phi i8 [ %369, %368 ], [ %356, %360 ], [ %356, %364 ]
  %372 = load i32, ptr %139, align 8, !tbaa !88
  %373 = sitofp i32 %372 to double
  store double %373, ptr %11, align 8, !tbaa !122
  %374 = load i32, ptr %140, align 4, !tbaa !89
  %375 = sitofp i32 %374 to double
  %376 = getelementptr inbounds %struct.gs_point_s, ptr %11, i64 0, i32 1
  store double %375, ptr %376, align 8, !tbaa !126
  %377 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 3, i32 1
  %378 = load i32, ptr %377, align 8, !tbaa !91
  %379 = sitofp i32 %378 to double
  %380 = getelementptr inbounds %struct.gs_rect_s, ptr %11, i64 0, i32 1
  store double %379, ptr %380, align 8, !tbaa !127
  %381 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 3, i32 1, i32 1
  %382 = load i32, ptr %381, align 4, !tbaa !93
  %383 = sitofp i32 %382 to double
  %384 = getelementptr inbounds %struct.gs_rect_s, ptr %11, i64 0, i32 1, i32 1
  store double %383, ptr %384, align 8, !tbaa !128
  %385 = call i32 @gs_bbox_transform(ptr noundef nonnull %11, ptr noundef nonnull %134, ptr noundef nonnull %12) #9
  %386 = getelementptr inbounds %struct.gs_point_s, ptr %12, i64 0, i32 1
  %387 = load double, ptr %386, align 8, !tbaa !126
  %388 = fadd double %387, -1.000000e-02
  %389 = call double @llvm.floor.f64(double %388)
  %390 = fptosi double %389 to i32
  %391 = getelementptr inbounds %struct.gs_rect_s, ptr %12, i64 0, i32 1, i32 1
  %392 = load double, ptr %391, align 8, !tbaa !128
  %393 = fadd double %392, 1.000000e-02
  %394 = call double @llvm.ceil.f64(double %393)
  %395 = fptosi double %394 to i32
  %396 = call i32 @llvm.smax.i32(i32 %390, i32 0)
  %397 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 13
  store i32 %396, ptr %397, align 4, !tbaa !129
  %398 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %399 = load i32, ptr %398, align 4, !tbaa !27
  %400 = call i32 @llvm.smin.i32(i32 %399, i32 %395)
  %401 = getelementptr inbounds %struct.clist_image_enum_s, ptr %17, i64 0, i32 14
  store i32 %400, ptr %401, align 8, !tbaa !130
  %402 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 6, i32 1
  %403 = load i32, ptr %402, align 4, !tbaa !28
  %404 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %405 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 3
  %406 = getelementptr inbounds %struct.gs_int_rect_s, ptr %14, i64 0, i32 1
  %407 = getelementptr inbounds %struct.gs_int_point_s, ptr %14, i64 0, i32 1
  %408 = getelementptr inbounds %struct.gs_int_rect_s, ptr %14, i64 0, i32 1, i32 1
  %409 = icmp ne ptr %6, null
  %410 = zext i1 %409 to i32
  %411 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %412 = or i8 %371, 1
  %413 = getelementptr inbounds i8, ptr %357, i64 1
  %414 = getelementptr inbounds i8, ptr %357, i64 2
  %415 = ptrtoint ptr %13 to i64
  %416 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %417 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %418 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  br label %419

419:                                              ; preds = %552, %370
  %420 = phi i32 [ %396, %370 ], [ %429, %552 ]
  %421 = phi i32 [ undef, %370 ], [ %551, %552 ]
  %422 = sdiv i32 %420, %403
  %423 = load ptr, ptr %404, align 8, !tbaa !28
  %424 = sext i32 %422 to i64
  %425 = getelementptr inbounds %struct.gx_clist_state_s, ptr %423, i64 %424
  %426 = add nsw i32 %422, 1
  %427 = mul nsw i32 %426, %403
  %428 = icmp slt i32 %427, %400
  %429 = call i32 @llvm.smin.i32(i32 %427, i32 %400)
  %430 = sub nsw i32 %429, %420
  %431 = load i32, ptr %405, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #9
  call fastcc void @image_band_box(ptr noundef %0, ptr noundef nonnull %17, i32 noundef %420, i32 noundef %430, ptr noundef nonnull %14)
  %432 = load i32, ptr %14, align 4, !tbaa !131
  %433 = load i32, ptr %406, align 4, !tbaa !132
  %434 = icmp slt i32 %432, %433
  br i1 %434, label %435, label %549

435:                                              ; preds = %419
  %436 = load i32, ptr %407, align 4
  %437 = load i32, ptr %408, align 4, !tbaa !133
  %438 = icmp slt i32 %436, %437
  br i1 %438, label %439, label %549

439:                                              ; preds = %435
  %440 = getelementptr inbounds %struct.gx_clist_state_s, ptr %423, i64 %424, i32 10
  %441 = load i16, ptr %440, align 2, !tbaa !35
  %442 = and i16 %441, 772
  %443 = icmp eq i16 %442, 772
  br i1 %443, label %448, label %444

444:                                              ; preds = %439
  %445 = call i32 @cmd_write_unknown(ptr noundef %0, ptr noundef %425, i32 noundef 772) #9
  %446 = icmp sgt i32 %445, -1
  %447 = select i1 %446, i32 %421, i32 %445
  br i1 %446, label %448, label %549

448:                                              ; preds = %444, %439
  %449 = phi i32 [ %447, %444 ], [ %421, %439 ]
  %450 = getelementptr inbounds %struct.gx_clist_state_s, ptr %423, i64 %424, i32 8
  %451 = load i16, ptr %450, align 2, !tbaa !36
  %452 = sext i16 %451 to i32
  %453 = xor i32 %452, %410
  %454 = icmp eq i32 %453, 1
  br i1 %454, label %455, label %460

455:                                              ; preds = %448
  %456 = call i32 @cmd_put_enable_clip(ptr noundef %0, ptr noundef %425, i32 noundef %410) #9
  %457 = icmp slt i32 %456, 0
  br i1 %457, label %458, label %460

458:                                              ; preds = %455
  %459 = load i32, ptr %418, align 4, !tbaa !28
  br label %549

460:                                              ; preds = %455, %448
  %461 = icmp eq i32 %431, 252
  br i1 %461, label %462, label %471

462:                                              ; preds = %460
  %463 = getelementptr inbounds %struct.gx_clist_state_s, ptr %423, i64 %424, i32 7
  %464 = load i16, ptr %463, align 4, !tbaa !29
  %465 = icmp eq i16 %464, 1
  br i1 %465, label %466, label %487

466:                                              ; preds = %462
  %467 = call i32 @cmd_put_enable_lop(ptr noundef %0, ptr noundef %425, i32 noundef 0) #9
  %468 = icmp slt i32 %467, 0
  br i1 %468, label %469, label %487

469:                                              ; preds = %466
  %470 = load i32, ptr %417, align 4, !tbaa !28
  br label %549

471:                                              ; preds = %460
  %472 = getelementptr inbounds %struct.gx_clist_state_s, ptr %423, i64 %424, i32 6
  %473 = load i32, ptr %472, align 8, !tbaa !33
  %474 = icmp eq i32 %431, %473
  br i1 %474, label %478, label %475

475:                                              ; preds = %471
  %476 = call i32 @cmd_set_lop(ptr noundef %0, ptr noundef %425, i32 noundef %431) #9
  %477 = icmp slt i32 %476, 0
  br i1 %477, label %549, label %478

478:                                              ; preds = %475, %471
  %479 = getelementptr inbounds %struct.gx_clist_state_s, ptr %423, i64 %424, i32 7
  %480 = load i16, ptr %479, align 4, !tbaa !29
  %481 = icmp eq i16 %480, 0
  br i1 %481, label %482, label %487

482:                                              ; preds = %478
  %483 = call i32 @cmd_put_enable_lop(ptr noundef %0, ptr noundef %425, i32 noundef 1) #9
  %484 = icmp slt i32 %483, 0
  br i1 %484, label %485, label %487

485:                                              ; preds = %482
  %486 = load i32, ptr %411, align 4, !tbaa !28
  br label %549

487:                                              ; preds = %478, %482, %462, %466
  %488 = load i32, ptr %135, align 4, !tbaa !100
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %493, label %490

490:                                              ; preds = %487
  %491 = call i32 @cmd_put_drawing_color(ptr noundef %0, ptr noundef %425, ptr noundef nonnull %111) #9
  %492 = icmp slt i32 %491, 0
  br i1 %492, label %549, label %493

493:                                              ; preds = %490, %487
  %494 = or i32 %436, %432
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %502

496:                                              ; preds = %493
  %497 = load i32, ptr %2, align 8, !tbaa !90
  %498 = icmp eq i32 %433, %497
  br i1 %498, label %499, label %502

499:                                              ; preds = %496
  %500 = load i32, ptr %214, align 4, !tbaa !92
  %501 = icmp eq i32 %437, %500
  br i1 %501, label %533, label %502

502:                                              ; preds = %499, %496, %493
  %503 = or i32 %436, %432
  %504 = icmp ult i32 %503, 128
  br i1 %504, label %505, label %509

505:                                              ; preds = %502
  %506 = trunc i32 %432 to i8
  store i8 %506, ptr %357, align 1, !tbaa !28
  %507 = load i32, ptr %407, align 4, !tbaa !134
  %508 = trunc i32 %507 to i8
  store i8 %508, ptr %413, align 1, !tbaa !28
  br label %512

509:                                              ; preds = %502
  %510 = call ptr @cmd_put_w(i32 noundef %432, ptr noundef %357) #9
  %511 = call ptr @cmd_put_w(i32 noundef %436, ptr noundef %510) #9
  br label %512

512:                                              ; preds = %509, %505
  %513 = phi ptr [ %511, %509 ], [ %414, %505 ]
  %514 = load i32, ptr %2, align 8, !tbaa !90
  %515 = load i32, ptr %406, align 4, !tbaa !132
  %516 = sub nsw i32 %514, %515
  %517 = load i32, ptr %214, align 4, !tbaa !92
  %518 = load i32, ptr %408, align 4, !tbaa !133
  %519 = sub nsw i32 %517, %518
  %520 = or i32 %519, %516
  %521 = icmp ult i32 %520, 128
  br i1 %521, label %522, label %530

522:                                              ; preds = %512
  %523 = trunc i32 %516 to i8
  store i8 %523, ptr %513, align 1, !tbaa !28
  %524 = load i32, ptr %214, align 4, !tbaa !92
  %525 = load i32, ptr %408, align 4, !tbaa !133
  %526 = sub nsw i32 %524, %525
  %527 = trunc i32 %526 to i8
  %528 = getelementptr inbounds i8, ptr %513, i64 1
  store i8 %527, ptr %528, align 1, !tbaa !28
  %529 = getelementptr inbounds i8, ptr %513, i64 2
  br label %533

530:                                              ; preds = %512
  %531 = call ptr @cmd_put_w(i32 noundef %516, ptr noundef %513) #9
  %532 = call ptr @cmd_put_w(i32 noundef %519, ptr noundef %531) #9
  br label %533

533:                                              ; preds = %522, %530, %499
  %534 = phi ptr [ %532, %530 ], [ %529, %522 ], [ %357, %499 ]
  %535 = phi i8 [ %412, %530 ], [ %412, %522 ], [ %371, %499 ]
  %536 = ptrtoint ptr %534 to i64
  %537 = sub i64 %536, %415
  %538 = trunc i64 %537 to i32
  %539 = add i32 %538, 2
  %540 = getelementptr inbounds %struct.gx_clist_state_s, ptr %423, i64 %424, i32 11
  %541 = call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %540, i32 noundef %539) #9
  %542 = icmp eq ptr %541, null
  br i1 %542, label %543, label %545

543:                                              ; preds = %533
  %544 = load i32, ptr %416, align 4, !tbaa !28
  br label %549

545:                                              ; preds = %533
  store i8 -36, ptr %541, align 1, !tbaa !28
  %546 = getelementptr inbounds i8, ptr %541, i64 1
  store i8 %535, ptr %546, align 1, !tbaa !28
  %547 = getelementptr inbounds i8, ptr %541, i64 2
  %548 = and i64 %537, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %547, ptr nonnull align 16 %13, i64 %548, i1 false)
  br label %549

549:                                              ; preds = %490, %475, %419, %435, %444, %545, %543, %485, %469, %458
  %550 = phi i32 [ 1, %458 ], [ 1, %469 ], [ 1, %543 ], [ 0, %545 ], [ 1, %485 ], [ 1, %444 ], [ 10, %435 ], [ 10, %419 ], [ 1, %475 ], [ 1, %490 ]
  %551 = phi i32 [ %459, %458 ], [ %470, %469 ], [ %544, %543 ], [ %449, %545 ], [ %486, %485 ], [ %447, %444 ], [ %421, %435 ], [ %421, %419 ], [ %476, %475 ], [ %491, %490 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #9
  switch i32 %550, label %553 [
    i32 0, label %552
    i32 10, label %552
  ]

552:                                              ; preds = %549, %549
  br i1 %428, label %419, label %553, !llvm.loop !135

553:                                              ; preds = %552, %549
  %554 = phi i32 [ %550, %549 ], [ 0, %552 ]
  %555 = icmp eq i32 %554, 0
  br label %556

556:                                              ; preds = %234, %230, %553
  %557 = phi i1 [ %555, %553 ], [ false, %230 ], [ false, %234 ]
  %558 = phi i32 [ %551, %553 ], [ -15, %230 ], [ -15, %234 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #9
  br i1 %557, label %559, label %560

559:                                              ; preds = %556
  store i32 1, ptr %55, align 8, !tbaa !28
  br label %560

560:                                              ; preds = %101, %105, %9, %556, %559
  %561 = phi i32 [ 0, %559 ], [ %558, %556 ], [ -25, %9 ], [ %103, %105 ], [ %103, %101 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #9
  ret i32 %561
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_image_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = alloca %struct.gs_rect_s, align 8
  %8 = alloca %struct.gs_rect_s, align 8
  %9 = alloca %struct.gs_int_rect_s, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #9
  %10 = getelementptr inbounds %struct.clist_image_enum_s, ptr %1, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = tail call i32 @gx_default_image_data(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #9
  br label %224

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.clist_image_enum_s, ptr %1, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !88
  %18 = sitofp i32 %17 to double
  store double %18, ptr %7, align 8, !tbaa !122
  %19 = getelementptr inbounds %struct.clist_image_enum_s, ptr %1, i64 0, i32 15
  %20 = load i32, ptr %19, align 4, !tbaa !102
  %21 = sitofp i32 %20 to double
  %22 = getelementptr inbounds %struct.gs_point_s, ptr %7, i64 0, i32 1
  store double %21, ptr %22, align 8, !tbaa !126
  %23 = getelementptr inbounds %struct.clist_image_enum_s, ptr %1, i64 0, i32 3, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !91
  %25 = sitofp i32 %24 to double
  %26 = getelementptr inbounds %struct.gs_rect_s, ptr %7, i64 0, i32 1
  store double %25, ptr %26, align 8, !tbaa !127
  %27 = add nsw i32 %20, %5
  store i32 %27, ptr %19, align 4, !tbaa !102
  %28 = sitofp i32 %27 to double
  %29 = getelementptr inbounds %struct.gs_rect_s, ptr %7, i64 0, i32 1, i32 1
  store double %28, ptr %29, align 8, !tbaa !128
  %30 = getelementptr inbounds %struct.clist_image_enum_s, ptr %1, i64 0, i32 10
  %31 = call i32 @gs_bbox_transform(ptr noundef nonnull %7, ptr noundef nonnull %30, ptr noundef nonnull %8) #9
  %32 = getelementptr inbounds %struct.gs_point_s, ptr %8, i64 0, i32 1
  %33 = load double, ptr %32, align 8, !tbaa !126
  %34 = fadd double %33, -2.000000e+00
  %35 = call double @llvm.floor.f64(double %34)
  %36 = fptosi double %35 to i32
  %37 = getelementptr inbounds %struct.gs_rect_s, ptr %8, i64 0, i32 1, i32 1
  %38 = load double, ptr %37, align 8, !tbaa !128
  %39 = fadd double %38, 2.000000e+00
  %40 = call double @llvm.ceil.f64(double %39)
  %41 = fptosi double %40 to i32
  %42 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 6, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !28
  %44 = freeze i32 %36
  %45 = call i32 @llvm.smax.i32(i32 %44, i32 0)
  %46 = srem i32 %45, %43
  %47 = sub nsw i32 %45, %46
  %48 = add nsw i32 %43, -1
  %49 = call i32 @llvm.ctpop.i32(i32 %43), !range !136
  %50 = icmp ult i32 %49, 2
  %51 = add nsw i32 %48, %41
  %52 = freeze i32 %51
  br i1 %50, label %56, label %53

53:                                               ; preds = %15
  %54 = srem i32 %52, %43
  %55 = sub nsw i32 %52, %54
  br label %59

56:                                               ; preds = %15
  %57 = sub nsw i32 0, %43
  %58 = and i32 %52, %57
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i32 [ %55, %53 ], [ %58, %56 ]
  %61 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %62 = load i32, ptr %61, align 4, !tbaa !27
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = add nsw i32 %48, %41
  %66 = freeze i32 %65
  br i1 %50, label %70, label %67

67:                                               ; preds = %64
  %68 = srem i32 %66, %43
  %69 = sub nsw i32 %66, %68
  br label %73

70:                                               ; preds = %64
  %71 = sub nsw i32 0, %43
  %72 = and i32 %66, %71
  br label %73

73:                                               ; preds = %59, %67, %70
  %74 = phi i32 [ %69, %67 ], [ %72, %70 ], [ %62, %59 ]
  %75 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %76 = getelementptr inbounds %struct.clist_image_enum_s, ptr %1, i64 0, i32 9
  %77 = getelementptr inbounds %struct.gs_int_rect_s, ptr %9, i64 0, i32 1
  %78 = getelementptr inbounds %struct.gs_int_point_s, ptr %9, i64 0, i32 1
  %79 = getelementptr inbounds %struct.gs_int_rect_s, ptr %9, i64 0, i32 1, i32 1
  %80 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 7, i32 1
  %81 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  br label %82

82:                                               ; preds = %214, %73
  %83 = phi i32 [ %47, %73 ], [ %91, %214 ]
  %84 = phi i32 [ undef, %73 ], [ %213, %214 ]
  %85 = sdiv i32 %83, %43
  %86 = load ptr, ptr %75, align 8, !tbaa !28
  %87 = sext i32 %85 to i64
  %88 = add nsw i32 %85, 1
  %89 = mul nsw i32 %88, %43
  %90 = icmp slt i32 %89, %74
  %91 = call i32 @llvm.smin.i32(i32 %89, i32 %74)
  %92 = sub nsw i32 %91, %83
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9
  %93 = load i32, ptr %76, align 8, !tbaa !98
  call fastcc void @image_band_box(ptr noundef %0, ptr noundef %1, i32 noundef %83, i32 noundef %92, ptr noundef nonnull %9)
  %94 = load i32, ptr %9, align 4, !tbaa !131
  %95 = load i32, ptr %77, align 4, !tbaa !132
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %211

97:                                               ; preds = %82
  %98 = load i32, ptr %78, align 4, !tbaa !134
  %99 = load i32, ptr %79, align 4, !tbaa !133
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %211

101:                                              ; preds = %97
  %102 = icmp slt i32 %98, %20
  br i1 %102, label %103, label %104

103:                                              ; preds = %101
  store i32 %20, ptr %78, align 4, !tbaa !134
  br label %104

104:                                              ; preds = %103, %101
  %105 = icmp sgt i32 %99, %27
  br i1 %105, label %106, label %107

106:                                              ; preds = %104
  store i32 %27, ptr %79, align 4, !tbaa !133
  br label %107

107:                                              ; preds = %106, %104
  %108 = load i32, ptr %78, align 4, !tbaa !134
  %109 = and i32 %93, 7
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds [9 x i8], ptr @.str.2, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !28
  %113 = sext i8 %112 to i32
  %114 = sub nsw i32 0, %113
  %115 = and i32 %94, %114
  %116 = sub nsw i32 %94, %115
  %117 = sub i32 %95, %94
  %118 = add i32 %117, %116
  %119 = mul nsw i32 %118, %93
  %120 = add nsw i32 %119, 7
  %121 = ashr i32 %120, 3
  %122 = call i32 @llvm.umax.i32(i32 %121, i32 1)
  %123 = udiv i32 750, %122
  %124 = icmp ugt i32 %121, 750
  %125 = select i1 %124, i32 1, i32 %123
  %126 = load i32, ptr %79, align 4, !tbaa !133
  %127 = sub nsw i32 %126, %108
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %211

129:                                              ; preds = %107
  %130 = mul nsw i32 %115, %93
  %131 = ashr i32 %130, 3
  %132 = sub nsw i32 %108, %20
  %133 = mul i32 %132, %4
  %134 = add i32 %131, %133
  %135 = add nsw i32 %116, %3
  %136 = icmp eq i32 %135, 0
  %137 = getelementptr inbounds %struct.gx_clist_state_s, ptr %86, i64 %87, i32 11
  %138 = trunc i32 %135 to i8
  %139 = and i8 %138, 7
  %140 = or disjoint i8 %139, 64
  %141 = and i32 %135, -8
  %142 = getelementptr inbounds %struct.gx_clist_state_s, ptr %86, i64 %87, i32 11
  %143 = trunc i32 %121 to i8
  %144 = icmp eq i32 %125, 0
  %145 = zext i32 %121 to i64
  br label %146

146:                                              ; preds = %129, %206
  %147 = phi i32 [ %127, %129 ], [ %207, %206 ]
  %148 = phi i32 [ %134, %129 ], [ %209, %206 ]
  %149 = call i32 @llvm.umin.i32(i32 %147, i32 %125)
  %150 = load ptr, ptr %2, align 8, !tbaa !21
  %151 = zext i32 %148 to i64
  %152 = getelementptr inbounds i8, ptr %150, i64 %151
  %153 = mul i32 %149, %121
  %154 = or i32 %149, %121
  %155 = icmp ult i32 %154, 128
  br i1 %155, label %161, label %156

156:                                              ; preds = %146
  %157 = call i32 @cmd_size_w(i32 noundef %149) #9
  %158 = call i32 @cmd_size_w(i32 noundef %121) #9
  %159 = add i32 %157, 1
  %160 = add i32 %159, %158
  br label %161

161:                                              ; preds = %156, %146
  %162 = phi i32 [ %160, %156 ], [ 3, %146 ]
  %163 = add i32 %162, %153
  br i1 %136, label %174, label %164

164:                                              ; preds = %161
  %165 = call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %137, i32 noundef 2) #9
  %166 = icmp eq ptr %165, null
  br i1 %166, label %201, label %167

167:                                              ; preds = %164
  store i8 6, ptr %165, align 1, !tbaa !28
  %168 = getelementptr inbounds i8, ptr %165, i64 1
  store i8 %140, ptr %168, align 1, !tbaa !28
  %169 = load i32, ptr %80, align 4, !tbaa !137
  %170 = mul nsw i32 %169, %141
  %171 = ashr exact i32 %170, 3
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, ptr %152, i64 %172
  br label %174

174:                                              ; preds = %167, %161
  %175 = phi ptr [ %173, %167 ], [ %152, %161 ]
  %176 = call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %142, i32 noundef %163) #9
  %177 = icmp eq ptr %176, null
  br i1 %177, label %201, label %178

178:                                              ; preds = %174
  store i8 -35, ptr %176, align 1, !tbaa !28
  %179 = getelementptr inbounds i8, ptr %176, i64 1
  br i1 %155, label %180, label %184

180:                                              ; preds = %178
  %181 = trunc i32 %149 to i8
  store i8 %181, ptr %179, align 1, !tbaa !28
  %182 = getelementptr inbounds i8, ptr %176, i64 2
  store i8 %143, ptr %182, align 1, !tbaa !28
  %183 = getelementptr inbounds i8, ptr %176, i64 3
  br label %187

184:                                              ; preds = %178
  %185 = call ptr @cmd_put_w(i32 noundef %149, ptr noundef nonnull %179) #9
  %186 = call ptr @cmd_put_w(i32 noundef %121, ptr noundef %185) #9
  br label %187

187:                                              ; preds = %184, %180
  %188 = phi ptr [ %186, %184 ], [ %183, %180 ]
  br i1 %144, label %203, label %189

189:                                              ; preds = %187
  %190 = zext nneg i32 %149 to i64
  br label %191

191:                                              ; preds = %191, %189
  %192 = phi i64 [ 0, %189 ], [ %199, %191 ]
  %193 = phi ptr [ %188, %189 ], [ %198, %191 ]
  %194 = trunc i64 %192 to i32
  %195 = mul i32 %194, %4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %175, i64 %196
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %193, ptr align 1 %197, i64 %145, i1 false)
  %198 = getelementptr inbounds i8, ptr %193, i64 %145
  %199 = add nuw nsw i64 %192, 1
  %200 = icmp eq i64 %199, %190
  br i1 %200, label %203, label %191, !llvm.loop !145

201:                                              ; preds = %174, %164
  %202 = load i32, ptr %81, align 4, !tbaa !146
  br label %203

203:                                              ; preds = %191, %201, %187
  %204 = phi i32 [ 0, %187 ], [ %202, %201 ], [ 0, %191 ]
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %203
  %207 = sub nsw i32 %147, %149
  %208 = mul i32 %149, %4
  %209 = add i32 %208, %148
  %210 = icmp sgt i32 %207, 0
  br i1 %210, label %146, label %211, !llvm.loop !147

211:                                              ; preds = %203, %206, %107, %82, %97
  %212 = phi i32 [ 3, %97 ], [ 3, %82 ], [ 0, %107 ], [ 0, %206 ], [ 1, %203 ]
  %213 = phi i32 [ %84, %97 ], [ %84, %82 ], [ %84, %107 ], [ %84, %206 ], [ %204, %203 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9
  switch i32 %212, label %215 [
    i32 0, label %214
    i32 3, label %214
  ]

214:                                              ; preds = %211, %211
  br i1 %90, label %82, label %215, !llvm.loop !148

215:                                              ; preds = %214, %211
  %216 = phi i32 [ %212, %211 ], [ 0, %214 ]
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %215
  %219 = load i32, ptr %19, align 4, !tbaa !102
  %220 = getelementptr inbounds %struct.clist_image_enum_s, ptr %1, i64 0, i32 3, i32 1, i32 1
  %221 = load i32, ptr %220, align 4, !tbaa !93
  %222 = icmp sge i32 %219, %221
  %223 = zext i1 %222 to i32
  br label %224

224:                                              ; preds = %215, %218, %13
  %225 = phi i32 [ %14, %13 ], [ %223, %218 ], [ %213, %215 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  ret i32 %225
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_end_image(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.gs_int_rect_s, align 4
  %5 = getelementptr inbounds %struct.clist_image_enum_s, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @gx_default_end_image(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %2) #9
  br label %57

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.clist_image_enum_s, ptr %1, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !129
  %13 = getelementptr inbounds %struct.clist_image_enum_s, ptr %1, i64 0, i32 14
  %14 = load i32, ptr %13, align 8, !tbaa !130
  %15 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 6, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !28
  %17 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %18 = getelementptr inbounds %struct.gs_int_rect_s, ptr %4, i64 0, i32 1
  %19 = getelementptr inbounds %struct.gs_int_point_s, ptr %4, i64 0, i32 1
  %20 = getelementptr inbounds %struct.gs_int_rect_s, ptr %4, i64 0, i32 1, i32 1
  %21 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  br label %22

22:                                               ; preds = %51, %10
  %23 = phi i32 [ %12, %10 ], [ %31, %51 ]
  %24 = phi i32 [ undef, %10 ], [ %49, %51 ]
  %25 = sdiv i32 %23, %16
  %26 = load ptr, ptr %17, align 8, !tbaa !28
  %27 = sext i32 %25 to i64
  %28 = add nsw i32 %25, 1
  %29 = mul nsw i32 %28, %16
  %30 = icmp slt i32 %29, %14
  %31 = tail call i32 @llvm.smin.i32(i32 %29, i32 %14)
  %32 = sub nsw i32 %31, %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call fastcc void @image_band_box(ptr noundef %0, ptr noundef %1, i32 noundef %23, i32 noundef %32, ptr noundef nonnull %4)
  %33 = load i32, ptr %4, align 4, !tbaa !131
  %34 = load i32, ptr %18, align 4, !tbaa !132
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %22
  %37 = load i32, ptr %19, align 4, !tbaa !134
  %38 = load i32, ptr %20, align 4, !tbaa !133
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.gx_clist_state_s, ptr %26, i64 %27, i32 11
  %42 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %41, i32 noundef 2) #9
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, ptr %21, align 4, !tbaa !28
  br label %48

46:                                               ; preds = %40
  store i8 -35, ptr %42, align 1, !tbaa !28
  %47 = getelementptr inbounds i8, ptr %42, i64 1
  store i8 0, ptr %47, align 1, !tbaa !28
  br label %48

48:                                               ; preds = %22, %36, %46, %44
  %49 = phi i32 [ %45, %44 ], [ %24, %46 ], [ %24, %36 ], [ %24, %22 ]
  %50 = phi i32 [ 1, %44 ], [ 0, %46 ], [ 3, %36 ], [ 3, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  switch i32 %50, label %52 [
    i32 0, label %51
    i32 3, label %51
  ]

51:                                               ; preds = %48, %48
  br i1 %30, label %22, label %52, !llvm.loop !149

52:                                               ; preds = %51, %48
  %53 = phi i32 [ %50, %48 ], [ 0, %51 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 61
  store i32 0, ptr %56, align 8, !tbaa !28
  br label %57

57:                                               ; preds = %55, %8
  %58 = phi i32 [ %9, %8 ], [ 0, %55 ]
  %59 = load ptr, ptr %1, align 8, !tbaa !62
  %60 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %59, i64 0, i32 11
  %61 = load ptr, ptr %60, align 8, !tbaa !81
  tail call void %61(ptr noundef %59, ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #9
  br label %62

62:                                               ; preds = %52, %57
  %63 = phi i32 [ %58, %57 ], [ %49, %52 ]
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cmd_put_halftone(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !150
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %1, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !155
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %3 ]
  %12 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 35
  %13 = load i32, ptr %12, align 8, !tbaa !156
  %14 = add nsw i32 %13, -1
  %15 = tail call i32 @cmd_size_w(i32 noundef %11) #9
  %16 = add nsw i32 %15, 2
  %17 = tail call ptr @cmd_put_range_op(ptr noundef %0, i32 noundef 0, i32 noundef %14, i32 noundef %16) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %21 = load i32, ptr %20, align 4, !tbaa !146
  br label %28

22:                                               ; preds = %10
  store i8 6, ptr %17, align 1, !tbaa !28
  %23 = trunc i32 %2 to i8
  %24 = add i8 %23, -64
  %25 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 %24, ptr %25, align 1, !tbaa !28
  %26 = getelementptr inbounds i8, ptr %17, i64 2
  %27 = tail call ptr @cmd_put_w(i32 noundef %11, ptr noundef nonnull %26) #9
  br label %28

28:                                               ; preds = %22, %19
  %29 = phi i32 [ %21, %19 ], [ undef, %22 ]
  br i1 %18, label %52, label %30

30:                                               ; preds = %28
  %31 = icmp eq i32 %11, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = zext i32 %11 to i64
  br label %36

34:                                               ; preds = %30
  %35 = tail call fastcc i32 @cmd_put_ht_order(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef -1)
  br label %52

36:                                               ; preds = %32, %41
  %37 = phi i64 [ %33, %32 ], [ %42, %41 ]
  %38 = phi i32 [ %29, %32 ], [ %51, %41 ]
  %39 = trunc i64 %37 to i32
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %52, label %41

41:                                               ; preds = %36
  %42 = add nsw i64 %37, -1
  %43 = trunc i64 %42 to i32
  %44 = load ptr, ptr %4, align 8, !tbaa !150
  %45 = and i64 %42, 4294967295
  %46 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %44, i64 %45
  %47 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %44, i64 %45, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !157
  %49 = tail call fastcc i32 @cmd_put_ht_order(ptr noundef %0, ptr noundef %46, i32 noundef %48, i32 noundef %43)
  %50 = icmp sgt i32 %49, -1
  %51 = select i1 %50, i32 %38, i32 %49
  br i1 %50, label %36, label %52, !llvm.loop !159

52:                                               ; preds = %41, %36, %28, %34
  %53 = phi i32 [ %35, %34 ], [ %29, %28 ], [ %51, %41 ], [ 0, %36 ]
  ret i32 %53
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @cmd_put_range_op(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cmd_size_w(i32 noundef) local_unnamed_addr #3

declare ptr @cmd_put_w(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cmd_put_ht_order(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = alloca [80 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #9
  %6 = add nsw i32 %3, 1
  %7 = call ptr @cmd_put_w(i32 noundef %6, ptr noundef nonnull %5) #9
  %8 = icmp sgt i32 %3, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = call ptr @cmd_put_w(i32 noundef %2, ptr noundef %7) #9
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 1
  %14 = load i16, ptr %13, align 8, !tbaa !160
  %15 = zext i16 %14 to i32
  %16 = call ptr @cmd_put_w(i32 noundef %15, ptr noundef %12) #9
  %17 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 2
  %18 = load i16, ptr %17, align 2, !tbaa !161
  %19 = zext i16 %18 to i32
  %20 = call ptr @cmd_put_w(i32 noundef %19, ptr noundef %16) #9
  %21 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 3
  %22 = load i16, ptr %21, align 4, !tbaa !162
  %23 = zext i16 %22 to i32
  %24 = call ptr @cmd_put_w(i32 noundef %23, ptr noundef %20) #9
  %25 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 4
  %26 = load i16, ptr %25, align 2, !tbaa !163
  %27 = zext i16 %26 to i32
  %28 = call ptr @cmd_put_w(i32 noundef %27, ptr noundef %24) #9
  %29 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 8
  %30 = load i32, ptr %29, align 8, !tbaa !164
  %31 = call ptr @cmd_put_w(i32 noundef %30, ptr noundef %28) #9
  %32 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 9
  %33 = load i32, ptr %32, align 4, !tbaa !165
  %34 = call ptr @cmd_put_w(i32 noundef %33, ptr noundef %31) #9
  %35 = ptrtoint ptr %34 to i64
  %36 = ptrtoint ptr %5 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 35
  %40 = load i32, ptr %39, align 8, !tbaa !156
  %41 = add nsw i32 %40, -1
  %42 = add i32 %38, 1
  %43 = call ptr @cmd_put_range_op(ptr noundef %0, i32 noundef 0, i32 noundef %41, i32 noundef %42) #9
  %44 = icmp eq ptr %43, null
  br i1 %44, label %104, label %45

45:                                               ; preds = %11
  store i8 9, ptr %43, align 1, !tbaa !28
  %46 = getelementptr inbounds i8, ptr %43, i64 1
  %47 = and i64 %37, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %46, ptr nonnull align 16 %5, i64 %47, i1 false)
  %48 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 13
  %49 = load ptr, ptr %48, align 8, !tbaa !166
  %50 = call i32 @cmd_put_color_map(ptr noundef %0, i32 noundef 5, ptr noundef %49, ptr noundef null) #9
  %51 = load i32, ptr %29, align 8, !tbaa !164
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 10
  br label %60

55:                                               ; preds = %71, %45
  %56 = load i32, ptr %32, align 4, !tbaa !165
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %107, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 11
  br label %82

60:                                               ; preds = %53, %71
  %61 = phi i32 [ %51, %53 ], [ %80, %71 ]
  %62 = phi i32 [ 0, %53 ], [ %79, %71 ]
  %63 = sub i32 %61, %62
  %64 = call i32 @llvm.umin.i32(i32 %63, i32 199)
  %65 = load i32, ptr %39, align 8, !tbaa !156
  %66 = add nsw i32 %65, -1
  %67 = shl nuw nsw i32 %64, 2
  %68 = or disjoint i32 %67, 2
  %69 = call ptr @cmd_put_range_op(ptr noundef %0, i32 noundef 0, i32 noundef %66, i32 noundef %68) #9
  %70 = icmp eq ptr %69, null
  br i1 %70, label %104, label %71

71:                                               ; preds = %60
  %72 = zext nneg i32 %67 to i64
  store i8 10, ptr %69, align 1, !tbaa !28
  %73 = trunc i32 %64 to i8
  %74 = getelementptr inbounds i8, ptr %69, i64 1
  store i8 %73, ptr %74, align 1, !tbaa !28
  %75 = getelementptr inbounds i8, ptr %69, i64 2
  %76 = load ptr, ptr %54, align 8, !tbaa !167
  %77 = zext i32 %62 to i64
  %78 = getelementptr inbounds i32, ptr %76, i64 %77
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %75, ptr align 4 %78, i64 %72, i1 false)
  %79 = add i32 %64, %62
  %80 = load i32, ptr %29, align 8, !tbaa !164
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %60, label %55, !llvm.loop !168

82:                                               ; preds = %58, %93
  %83 = phi i32 [ %56, %58 ], [ %102, %93 ]
  %84 = phi i32 [ 0, %58 ], [ %101, %93 ]
  %85 = sub i32 %83, %84
  %86 = call i32 @llvm.umin.i32(i32 %85, i32 99)
  %87 = load i32, ptr %39, align 8, !tbaa !156
  %88 = add nsw i32 %87, -1
  %89 = shl nuw nsw i32 %86, 3
  %90 = or disjoint i32 %89, 2
  %91 = call ptr @cmd_put_range_op(ptr noundef %0, i32 noundef 0, i32 noundef %88, i32 noundef %90) #9
  %92 = icmp eq ptr %91, null
  br i1 %92, label %104, label %93

93:                                               ; preds = %82
  %94 = zext nneg i32 %89 to i64
  store i8 10, ptr %91, align 1, !tbaa !28
  %95 = trunc i32 %86 to i8
  %96 = getelementptr inbounds i8, ptr %91, i64 1
  store i8 %95, ptr %96, align 1, !tbaa !28
  %97 = getelementptr inbounds i8, ptr %91, i64 2
  %98 = load ptr, ptr %59, align 8, !tbaa !169
  %99 = zext i32 %84 to i64
  %100 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %98, i64 %99
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %97, ptr align 4 %100, i64 %94, i1 false)
  %101 = add i32 %86, %84
  %102 = load i32, ptr %32, align 4, !tbaa !165
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %82, label %107, !llvm.loop !170

104:                                              ; preds = %60, %82, %11
  %105 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %106 = load i32, ptr %105, align 4, !tbaa !146
  br label %107

107:                                              ; preds = %93, %104, %55
  %108 = phi i32 [ 0, %55 ], [ %106, %104 ], [ 0, %93 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #9
  ret i32 %108
}

declare i32 @cmd_check_clip_path(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cmd_clear_known(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cmd_put_enable_lop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cmd_set_lop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cmd_put_list_op(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cmd_write_unknown(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cmd_put_enable_clip(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cmd_put_drawing_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @clist_change_bits(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @gx_default_fill_mask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_color_space_get_index(ptr noundef) local_unnamed_addr #3

declare ptr @gs_color_space_indexed_base(ptr noundef) local_unnamed_addr #3

declare i32 @gs_color_space_num_components(ptr noundef) local_unnamed_addr #3

declare i32 @gs_matrix_invert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_matrix_multiply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i32 @image_matrix_ok_to_band(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !171
  %4 = fcmp oeq float %3, 0.000000e+00
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !172
  %8 = fcmp oeq float %7, 0.000000e+00
  br i1 %8, label %36, label %9

9:                                                ; preds = %5, %1
  %10 = load float, ptr %0, align 4, !tbaa !173
  %11 = fcmp oeq float %10, 0.000000e+00
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 3
  %14 = load float, ptr %13, align 4, !tbaa !174
  %15 = fcmp oeq float %14, 0.000000e+00
  br i1 %15, label %36, label %16

16:                                               ; preds = %12, %9
  %17 = tail call float @llvm.fabs.f32(float %10)
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !174
  %21 = tail call float @llvm.fabs.f32(float %20)
  %22 = fpext float %21 to double
  %23 = fadd double %18, %22
  %24 = tail call float @llvm.fabs.f32(float %3)
  %25 = fpext float %24 to double
  %26 = getelementptr inbounds %struct.gs_matrix_s, ptr %0, i64 0, i32 2
  %27 = load float, ptr %26, align 4, !tbaa !172
  %28 = tail call float @llvm.fabs.f32(float %27)
  %29 = fpext float %28 to double
  %30 = fadd double %25, %29
  %31 = fdiv double %23, %30
  %32 = fcmp olt double %31, 2.000000e-01
  %33 = fcmp ogt double %31, 5.000000e+00
  %34 = or i1 %32, %33
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %5, %12, %16
  %37 = phi i32 [ %35, %16 ], [ 1, %12 ], [ 1, %5 ]
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cmd_put_color_mapping(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !175
  %6 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %5, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !176
  %8 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 60
  %9 = load i64, ptr %8, align 8, !tbaa !177
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !178
  %14 = load i32, ptr %13, align 8, !tbaa !179
  %15 = tail call i32 @cmd_put_halftone(ptr noundef %0, ptr noundef %5, i32 noundef %14)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %87, label %17

17:                                               ; preds = %11
  %18 = load i64, ptr %6, align 8, !tbaa !176
  store i64 %18, ptr %8, align 8, !tbaa !177
  br label %19

19:                                               ; preds = %17, %3
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !181
  %24 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 58
  %25 = tail call i32 @cmd_put_color_map(ptr noundef %0, i32 noundef 6, ptr noundef %23, ptr noundef nonnull %24) #9
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %87, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 16
  %29 = load ptr, ptr %28, align 8, !tbaa !182
  %30 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 59
  %31 = tail call i32 @cmd_put_color_map(ptr noundef %0, i32 noundef 7, ptr noundef %29, ptr noundef nonnull %30) #9
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %87, label %33

33:                                               ; preds = %27, %19
  %34 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 18
  %35 = load ptr, ptr %34, align 8, !tbaa !28
  %36 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %35, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !183
  br label %38

38:                                               ; preds = %33, %38
  %39 = phi i64 [ 0, %33 ], [ %55, %38 ]
  %40 = phi i32 [ 1, %33 ], [ %54, %38 ]
  %41 = phi i32 [ 0, %33 ], [ %52, %38 ]
  %42 = getelementptr inbounds [4 x ptr], ptr %34, i64 0, i64 %39
  %43 = load ptr, ptr %42, align 8, !tbaa !28
  %44 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %43, i64 0, i32 2
  %45 = load i64, ptr %44, align 8, !tbaa !183
  %46 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 57, i64 %39
  %47 = load i64, ptr %46, align 8, !tbaa !86
  %48 = icmp eq i64 %45, %47
  %49 = trunc i64 %39 to i32
  %50 = shl nuw nsw i32 1, %49
  %51 = select i1 %48, i32 0, i32 %50
  %52 = or i32 %51, %41
  %53 = icmp eq i64 %45, %37
  %54 = select i1 %53, i32 %40, i32 0
  %55 = add nuw nsw i64 %39, 1
  %56 = icmp eq i64 %55, 4
  br i1 %56, label %57, label %38, !llvm.loop !185

57:                                               ; preds = %38
  %58 = icmp eq i32 %52, 0
  br i1 %58, label %87, label %59

59:                                               ; preds = %57
  %60 = icmp eq i32 %52, 15
  %61 = icmp ne i32 %54, 0
  %62 = select i1 %60, i1 %61, i1 false
  %63 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 18
  br i1 %62, label %64, label %76

64:                                               ; preds = %59
  %65 = load ptr, ptr %63, align 8, !tbaa !28
  %66 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 57
  %67 = tail call i32 @cmd_put_color_map(ptr noundef %0, i32 noundef 0, ptr noundef %65, ptr noundef nonnull %66) #9
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %64
  %70 = load i64, ptr %66, align 8, !tbaa !86
  br label %71

71:                                               ; preds = %69, %71
  %72 = phi i64 [ 1, %69 ], [ %74, %71 ]
  %73 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 57, i64 %72
  store i64 %70, ptr %73, align 8, !tbaa !86
  %74 = add nuw nsw i64 %72, 1
  %75 = icmp eq i64 %74, 4
  br i1 %75, label %87, label %71, !llvm.loop !186

76:                                               ; preds = %59, %79
  %77 = phi i64 [ %80, %79 ], [ 0, %59 ]
  %78 = icmp eq i64 %77, 4
  br i1 %78, label %87, label %79

79:                                               ; preds = %76
  %80 = add nuw nsw i64 %77, 1
  %81 = getelementptr inbounds [4 x ptr], ptr %63, i64 0, i64 %77
  %82 = load ptr, ptr %81, align 8, !tbaa !28
  %83 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 57, i64 %77
  %84 = trunc i64 %80 to i32
  %85 = tail call i32 @cmd_put_color_map(ptr noundef %0, i32 noundef %84, ptr noundef %82, ptr noundef nonnull %83) #9
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %76, !llvm.loop !187

87:                                               ; preds = %79, %76, %71, %57, %64, %27, %21, %11
  %88 = phi i32 [ %15, %11 ], [ %25, %21 ], [ %31, %27 ], [ 0, %57 ], [ %67, %64 ], [ 0, %71 ], [ %85, %79 ], [ 0, %76 ]
  ret i32 %88
}

declare i32 @gx_default_begin_image(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cmd_for_matrix(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_bbox_transform(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @image_band_box(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #1 {
  %6 = alloca %struct.gs_fixed_rect_s, align 8
  %7 = alloca %struct.gs_rect_s, align 8
  %8 = alloca %struct.gs_rect_s, align 8
  %9 = alloca [4 x %struct.gs_point_s], align 16
  %10 = alloca [5 x %struct.gs_point_s], align 16
  %11 = alloca %struct.gs_point_s, align 8
  %12 = sext i32 %2 to i64
  %13 = shl nsw i64 %12, 12
  %14 = add nsw i32 %3, %2
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 12
  %17 = getelementptr inbounds %struct.clist_image_enum_s, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !88
  %19 = getelementptr inbounds %struct.clist_image_enum_s, ptr %1, i64 0, i32 3, i32 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !89
  %21 = getelementptr inbounds %struct.clist_image_enum_s, ptr %1, i64 0, i32 3, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !91
  %23 = getelementptr inbounds %struct.clist_image_enum_s, ptr %1, i64 0, i32 3, i32 1, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #9
  %25 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 36
  %26 = load ptr, ptr %25, align 8, !tbaa !188
  call void %26(ptr noundef %0, ptr noundef nonnull %6) #9
  %27 = load i64, ptr %6, align 8, !tbaa !189
  %28 = add nsw i64 %27, -2048
  %29 = sitofp i64 %28 to double
  %30 = fmul double %29, 0x3F30000000000000
  store double %30, ptr %7, align 8, !tbaa !122
  %31 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %6, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !191
  %33 = add nsw i64 %32, 2048
  %34 = sitofp i64 %33 to double
  %35 = fmul double %34, 0x3F30000000000000
  %36 = getelementptr inbounds %struct.gs_rect_s, ptr %7, i64 0, i32 1
  store double %35, ptr %36, align 8, !tbaa !127
  %37 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %6, i64 0, i32 1
  %38 = load i64, ptr %37, align 8
  %39 = call i64 @llvm.smax.i64(i64 %38, i64 %13)
  %40 = add nsw i64 %39, -2048
  %41 = sitofp i64 %40 to double
  %42 = fmul double %41, 0x3F30000000000000
  %43 = getelementptr inbounds %struct.gs_point_s, ptr %7, i64 0, i32 1
  store double %42, ptr %43, align 8, !tbaa !126
  %44 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %6, i64 0, i32 1, i32 1
  %45 = load i64, ptr %44, align 8
  %46 = call i64 @llvm.smin.i64(i64 %45, i64 %16)
  %47 = add nsw i64 %46, 2048
  %48 = sitofp i64 %47 to double
  %49 = fmul double %48, 0x3F30000000000000
  %50 = getelementptr inbounds %struct.gs_rect_s, ptr %7, i64 0, i32 1, i32 1
  store double %49, ptr %50, align 8, !tbaa !128
  %51 = getelementptr inbounds %struct.clist_image_enum_s, ptr %1, i64 0, i32 10
  %52 = getelementptr inbounds %struct.clist_image_enum_s, ptr %1, i64 0, i32 10, i32 1
  %53 = load float, ptr %52, align 4, !tbaa !192
  %54 = fcmp oeq float %53, 0.000000e+00
  br i1 %54, label %55, label %59

55:                                               ; preds = %5
  %56 = getelementptr inbounds %struct.clist_image_enum_s, ptr %1, i64 0, i32 10, i32 2
  %57 = load float, ptr %56, align 4, !tbaa !193
  %58 = fcmp oeq float %57, 0.000000e+00
  br i1 %58, label %66, label %59

59:                                               ; preds = %55, %5
  %60 = load float, ptr %51, align 4, !tbaa !194
  %61 = fcmp oeq float %60, 0.000000e+00
  br i1 %61, label %62, label %90

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.clist_image_enum_s, ptr %1, i64 0, i32 10, i32 3
  %64 = load float, ptr %63, align 4, !tbaa !195
  %65 = fcmp oeq float %64, 0.000000e+00
  br i1 %65, label %66, label %90

66:                                               ; preds = %62, %55
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #9
  %67 = call i32 @gs_bbox_transform_inverse(ptr noundef nonnull %7, ptr noundef nonnull %51, ptr noundef nonnull %8) #9
  %68 = load double, ptr %8, align 8, !tbaa !122
  %69 = call double @llvm.floor.f64(double %68)
  %70 = fptosi double %69 to i32
  %71 = call i32 @llvm.smax.i32(i32 %18, i32 %70)
  store i32 %71, ptr %4, align 4, !tbaa !131
  %72 = getelementptr inbounds %struct.gs_rect_s, ptr %8, i64 0, i32 1
  %73 = load double, ptr %72, align 8, !tbaa !127
  %74 = call double @llvm.ceil.f64(double %73)
  %75 = fptosi double %74 to i32
  %76 = call i32 @llvm.smin.i32(i32 %22, i32 %75)
  %77 = getelementptr inbounds %struct.gs_int_rect_s, ptr %4, i64 0, i32 1
  store i32 %76, ptr %77, align 4, !tbaa !132
  %78 = getelementptr inbounds %struct.gs_point_s, ptr %8, i64 0, i32 1
  %79 = load double, ptr %78, align 8, !tbaa !126
  %80 = call double @llvm.floor.f64(double %79)
  %81 = fptosi double %80 to i32
  %82 = call i32 @llvm.smax.i32(i32 %20, i32 %81)
  %83 = getelementptr inbounds %struct.gs_int_point_s, ptr %4, i64 0, i32 1
  store i32 %82, ptr %83, align 4, !tbaa !134
  %84 = getelementptr inbounds %struct.gs_rect_s, ptr %8, i64 0, i32 1, i32 1
  %85 = load double, ptr %84, align 8, !tbaa !128
  %86 = call double @llvm.ceil.f64(double %85)
  %87 = fptosi double %86 to i32
  %88 = call i32 @llvm.smin.i32(i32 %24, i32 %87)
  %89 = getelementptr inbounds %struct.gs_int_rect_s, ptr %4, i64 0, i32 1, i32 1
  store i32 %88, ptr %89, align 4, !tbaa !133
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #9
  br label %338

90:                                               ; preds = %62, %59
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %10) #9
  %91 = sitofp i32 %18 to double
  %92 = getelementptr inbounds [4 x %struct.gs_point_s], ptr %9, i64 0, i64 3
  store double %91, ptr %92, align 16, !tbaa !196
  store double %91, ptr %9, align 16, !tbaa !196
  %93 = sitofp i32 %22 to double
  %94 = getelementptr inbounds [4 x %struct.gs_point_s], ptr %9, i64 0, i64 2
  store double %93, ptr %94, align 16, !tbaa !196
  %95 = getelementptr inbounds [4 x %struct.gs_point_s], ptr %9, i64 0, i64 1
  store double %93, ptr %95, align 16, !tbaa !196
  %96 = sitofp i32 %20 to double
  %97 = getelementptr inbounds [4 x %struct.gs_point_s], ptr %9, i64 0, i64 1, i32 1
  store double %96, ptr %97, align 8, !tbaa !197
  %98 = getelementptr inbounds %struct.gs_point_s, ptr %9, i64 0, i32 1
  store double %96, ptr %98, align 8, !tbaa !197
  %99 = sitofp i32 %24 to double
  %100 = getelementptr inbounds [4 x %struct.gs_point_s], ptr %9, i64 0, i64 3, i32 1
  store double %99, ptr %100, align 8, !tbaa !197
  %101 = getelementptr inbounds [4 x %struct.gs_point_s], ptr %9, i64 0, i64 2, i32 1
  store double %99, ptr %101, align 8, !tbaa !197
  %102 = call i32 @gs_point_transform_inverse(double noundef %30, double noundef %42, ptr noundef nonnull %51, ptr noundef nonnull %10) #9
  %103 = load double, ptr %36, align 8, !tbaa !127
  %104 = load double, ptr %43, align 8, !tbaa !126
  %105 = getelementptr inbounds [5 x %struct.gs_point_s], ptr %10, i64 0, i64 1
  %106 = call i32 @gs_point_transform_inverse(double noundef %103, double noundef %104, ptr noundef nonnull %51, ptr noundef nonnull %105) #9
  %107 = load double, ptr %36, align 8, !tbaa !127
  %108 = load double, ptr %50, align 8, !tbaa !128
  %109 = getelementptr inbounds [5 x %struct.gs_point_s], ptr %10, i64 0, i64 2
  %110 = call i32 @gs_point_transform_inverse(double noundef %107, double noundef %108, ptr noundef nonnull %51, ptr noundef nonnull %109) #9
  %111 = load double, ptr %7, align 8, !tbaa !122
  %112 = load double, ptr %50, align 8, !tbaa !128
  %113 = getelementptr inbounds [5 x %struct.gs_point_s], ptr %10, i64 0, i64 3
  %114 = call i32 @gs_point_transform_inverse(double noundef %111, double noundef %112, ptr noundef nonnull %51, ptr noundef nonnull %113) #9
  %115 = getelementptr inbounds [5 x %struct.gs_point_s], ptr %10, i64 0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %115, ptr noundef nonnull align 16 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !198
  store i32 %22, ptr %4, align 4, !tbaa !131
  %116 = getelementptr inbounds %struct.gs_int_point_s, ptr %4, i64 0, i32 1
  store i32 %24, ptr %116, align 4, !tbaa !134
  %117 = getelementptr inbounds %struct.gs_int_rect_s, ptr %4, i64 0, i32 1
  store i32 %18, ptr %117, align 4, !tbaa !132
  %118 = getelementptr inbounds %struct.gs_int_rect_s, ptr %4, i64 0, i32 1, i32 1
  store i32 %20, ptr %118, align 4, !tbaa !133
  %119 = getelementptr inbounds %struct.gs_point_s, ptr %11, i64 0, i32 1
  br label %120

120:                                              ; preds = %90, %335
  %121 = phi i64 [ 0, %90 ], [ %201, %335 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9
  %122 = getelementptr inbounds [4 x %struct.gs_point_s], ptr %9, i64 0, i64 %121
  %123 = load double, ptr %122, align 16, !tbaa.struct !198
  %124 = getelementptr inbounds i8, ptr %122, i64 8
  %125 = load double, ptr %124, align 8, !tbaa.struct !200
  %126 = call i32 @gs_point_transform(double noundef %123, double noundef %125, ptr noundef nonnull %51, ptr noundef nonnull %11) #9
  %127 = load double, ptr %11, align 8, !tbaa !196
  %128 = load double, ptr %7, align 8, !tbaa !122
  %129 = fcmp ult double %127, %128
  %130 = load double, ptr %36, align 8
  %131 = fcmp ugt double %127, %130
  %132 = select i1 %129, i1 true, i1 %131
  br i1 %132, label %164, label %133

133:                                              ; preds = %120
  %134 = load double, ptr %119, align 8, !tbaa !197
  %135 = load double, ptr %43, align 8, !tbaa !126
  %136 = fcmp ult double %134, %135
  %137 = load double, ptr %50, align 8
  %138 = fcmp ugt double %134, %137
  %139 = select i1 %136, i1 true, i1 %138
  br i1 %139, label %164, label %140

140:                                              ; preds = %133
  %141 = call double @llvm.floor.f64(double %123)
  %142 = fptosi double %141 to i32
  %143 = load i32, ptr %4, align 4, !tbaa !131
  %144 = icmp sgt i32 %143, %142
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 %142, ptr %4, align 4, !tbaa !131
  br label %146

146:                                              ; preds = %145, %140
  %147 = call double @llvm.ceil.f64(double %123)
  %148 = fptosi double %147 to i32
  %149 = load i32, ptr %117, align 4, !tbaa !132
  %150 = icmp slt i32 %149, %148
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 %148, ptr %117, align 4, !tbaa !132
  br label %152

152:                                              ; preds = %151, %146
  %153 = call double @llvm.floor.f64(double %125)
  %154 = fptosi double %153 to i32
  %155 = load i32, ptr %116, align 4, !tbaa !134
  %156 = icmp sgt i32 %155, %154
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store i32 %154, ptr %116, align 4, !tbaa !134
  br label %158

158:                                              ; preds = %157, %152
  %159 = call double @llvm.ceil.f64(double %125)
  %160 = fptosi double %159 to i32
  %161 = load i32, ptr %118, align 4, !tbaa !133
  %162 = icmp slt i32 %161, %160
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  store i32 %160, ptr %118, align 4, !tbaa !133
  br label %164

164:                                              ; preds = %163, %158, %133, %120
  %165 = getelementptr inbounds [5 x %struct.gs_point_s], ptr %10, i64 0, i64 %121
  %166 = load double, ptr %165, align 16, !tbaa.struct !198
  %167 = getelementptr inbounds i8, ptr %165, i64 8
  %168 = load double, ptr %167, align 8, !tbaa.struct !200
  %169 = fcmp ult double %166, %91
  %170 = fcmp ugt double %166, %93
  %171 = select i1 %169, i1 true, i1 %170
  %172 = fcmp ult double %168, %96
  %173 = select i1 %171, i1 true, i1 %172
  %174 = fcmp ugt double %168, %99
  %175 = select i1 %173, i1 true, i1 %174
  br i1 %175, label %200, label %176

176:                                              ; preds = %164
  %177 = call double @llvm.floor.f64(double %166)
  %178 = fptosi double %177 to i32
  %179 = load i32, ptr %4, align 4, !tbaa !131
  %180 = icmp sgt i32 %179, %178
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  store i32 %178, ptr %4, align 4, !tbaa !131
  br label %182

182:                                              ; preds = %181, %176
  %183 = call double @llvm.ceil.f64(double %166)
  %184 = fptosi double %183 to i32
  %185 = load i32, ptr %117, align 4, !tbaa !132
  %186 = icmp slt i32 %185, %184
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  store i32 %184, ptr %117, align 4, !tbaa !132
  br label %188

188:                                              ; preds = %187, %182
  %189 = call double @llvm.floor.f64(double %168)
  %190 = fptosi double %189 to i32
  %191 = load i32, ptr %116, align 4, !tbaa !134
  %192 = icmp sgt i32 %191, %190
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  store i32 %190, ptr %116, align 4, !tbaa !134
  br label %194

194:                                              ; preds = %193, %188
  %195 = call double @llvm.ceil.f64(double %168)
  %196 = fptosi double %195 to i32
  %197 = load i32, ptr %118, align 4, !tbaa !133
  %198 = icmp slt i32 %197, %196
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  store i32 %196, ptr %118, align 4, !tbaa !133
  br label %200

200:                                              ; preds = %199, %194, %164
  %201 = add nuw nsw i64 %121, 1
  %202 = getelementptr inbounds [5 x %struct.gs_point_s], ptr %10, i64 0, i64 %201
  %203 = load double, ptr %202, align 16, !tbaa !196
  %204 = fsub double %203, %166
  %205 = getelementptr inbounds [5 x %struct.gs_point_s], ptr %10, i64 0, i64 %201, i32 1
  %206 = load double, ptr %205, align 8, !tbaa !197
  %207 = fsub double %206, %168
  %208 = fcmp une double %204, 0.000000e+00
  br i1 %208, label %209, label %271

209:                                              ; preds = %200
  %210 = fsub double %91, %166
  %211 = fdiv double %210, %204
  %212 = fcmp oge double %211, 0.000000e+00
  %213 = fcmp ole double %211, 1.000000e+00
  %214 = and i1 %212, %213
  br i1 %214, label %215, label %240

215:                                              ; preds = %209
  %216 = call double @llvm.fmuladd.f64(double %211, double %207, double %168)
  %217 = fcmp ult double %216, %96
  %218 = fcmp ugt double %216, %99
  %219 = select i1 %217, i1 true, i1 %218
  br i1 %219, label %240, label %220

220:                                              ; preds = %215
  %221 = load i32, ptr %4, align 4, !tbaa !131
  %222 = icmp sgt i32 %221, %18
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  store i32 %18, ptr %4, align 4, !tbaa !131
  br label %224

224:                                              ; preds = %223, %220
  %225 = load i32, ptr %117, align 4, !tbaa !132
  %226 = icmp slt i32 %225, %18
  br i1 %226, label %227, label %228

227:                                              ; preds = %224
  store i32 %18, ptr %117, align 4, !tbaa !132
  br label %228

228:                                              ; preds = %227, %224
  %229 = call double @llvm.floor.f64(double %216)
  %230 = fptosi double %229 to i32
  %231 = load i32, ptr %116, align 4, !tbaa !134
  %232 = icmp sgt i32 %231, %230
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  store i32 %230, ptr %116, align 4, !tbaa !134
  br label %234

234:                                              ; preds = %233, %228
  %235 = call double @llvm.ceil.f64(double %216)
  %236 = fptosi double %235 to i32
  %237 = load i32, ptr %118, align 4, !tbaa !133
  %238 = icmp slt i32 %237, %236
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  store i32 %236, ptr %118, align 4, !tbaa !133
  br label %240

240:                                              ; preds = %239, %234, %215, %209
  %241 = fsub double %93, %166
  %242 = fdiv double %241, %204
  %243 = fcmp oge double %242, 0.000000e+00
  %244 = fcmp ole double %242, 1.000000e+00
  %245 = and i1 %243, %244
  br i1 %245, label %246, label %271

246:                                              ; preds = %240
  %247 = call double @llvm.fmuladd.f64(double %242, double %207, double %168)
  %248 = fcmp ult double %247, %96
  %249 = fcmp ugt double %247, %99
  %250 = select i1 %248, i1 true, i1 %249
  br i1 %250, label %271, label %251

251:                                              ; preds = %246
  %252 = load i32, ptr %4, align 4, !tbaa !131
  %253 = icmp sgt i32 %252, %22
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  store i32 %22, ptr %4, align 4, !tbaa !131
  br label %255

255:                                              ; preds = %254, %251
  %256 = load i32, ptr %117, align 4, !tbaa !132
  %257 = icmp slt i32 %256, %22
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  store i32 %22, ptr %117, align 4, !tbaa !132
  br label %259

259:                                              ; preds = %258, %255
  %260 = call double @llvm.floor.f64(double %247)
  %261 = fptosi double %260 to i32
  %262 = load i32, ptr %116, align 4, !tbaa !134
  %263 = icmp sgt i32 %262, %261
  br i1 %263, label %264, label %265

264:                                              ; preds = %259
  store i32 %261, ptr %116, align 4, !tbaa !134
  br label %265

265:                                              ; preds = %264, %259
  %266 = call double @llvm.ceil.f64(double %247)
  %267 = fptosi double %266 to i32
  %268 = load i32, ptr %118, align 4, !tbaa !133
  %269 = icmp slt i32 %268, %267
  br i1 %269, label %270, label %271

270:                                              ; preds = %265
  store i32 %267, ptr %118, align 4, !tbaa !133
  br label %271

271:                                              ; preds = %270, %265, %240, %246, %200
  %272 = fcmp une double %207, 0.000000e+00
  br i1 %272, label %273, label %335

273:                                              ; preds = %271
  %274 = fsub double %96, %168
  %275 = fdiv double %274, %207
  %276 = fcmp oge double %275, 0.000000e+00
  %277 = fcmp ole double %275, 1.000000e+00
  %278 = and i1 %276, %277
  br i1 %278, label %279, label %304

279:                                              ; preds = %273
  %280 = call double @llvm.fmuladd.f64(double %275, double %204, double %166)
  %281 = fcmp ult double %280, %91
  %282 = fcmp ugt double %280, %93
  %283 = select i1 %281, i1 true, i1 %282
  br i1 %283, label %304, label %284

284:                                              ; preds = %279
  %285 = call double @llvm.floor.f64(double %280)
  %286 = fptosi double %285 to i32
  %287 = load i32, ptr %4, align 4, !tbaa !131
  %288 = icmp sgt i32 %287, %286
  br i1 %288, label %289, label %290

289:                                              ; preds = %284
  store i32 %286, ptr %4, align 4, !tbaa !131
  br label %290

290:                                              ; preds = %289, %284
  %291 = call double @llvm.ceil.f64(double %280)
  %292 = fptosi double %291 to i32
  %293 = load i32, ptr %117, align 4, !tbaa !132
  %294 = icmp slt i32 %293, %292
  br i1 %294, label %295, label %296

295:                                              ; preds = %290
  store i32 %292, ptr %117, align 4, !tbaa !132
  br label %296

296:                                              ; preds = %295, %290
  %297 = load i32, ptr %116, align 4, !tbaa !134
  %298 = icmp sgt i32 %297, %20
  br i1 %298, label %299, label %300

299:                                              ; preds = %296
  store i32 %20, ptr %116, align 4, !tbaa !134
  br label %300

300:                                              ; preds = %299, %296
  %301 = load i32, ptr %118, align 4, !tbaa !133
  %302 = icmp slt i32 %301, %20
  br i1 %302, label %303, label %304

303:                                              ; preds = %300
  store i32 %20, ptr %118, align 4, !tbaa !133
  br label %304

304:                                              ; preds = %303, %300, %279, %273
  %305 = fsub double %99, %168
  %306 = fdiv double %305, %207
  %307 = fcmp oge double %306, 0.000000e+00
  %308 = fcmp ole double %306, 1.000000e+00
  %309 = and i1 %307, %308
  br i1 %309, label %310, label %335

310:                                              ; preds = %304
  %311 = call double @llvm.fmuladd.f64(double %306, double %204, double %166)
  %312 = fcmp ult double %311, %91
  %313 = fcmp ugt double %311, %93
  %314 = select i1 %312, i1 true, i1 %313
  br i1 %314, label %335, label %315

315:                                              ; preds = %310
  %316 = call double @llvm.floor.f64(double %311)
  %317 = fptosi double %316 to i32
  %318 = load i32, ptr %4, align 4, !tbaa !131
  %319 = icmp sgt i32 %318, %317
  br i1 %319, label %320, label %321

320:                                              ; preds = %315
  store i32 %317, ptr %4, align 4, !tbaa !131
  br label %321

321:                                              ; preds = %320, %315
  %322 = call double @llvm.ceil.f64(double %311)
  %323 = fptosi double %322 to i32
  %324 = load i32, ptr %117, align 4, !tbaa !132
  %325 = icmp slt i32 %324, %323
  br i1 %325, label %326, label %327

326:                                              ; preds = %321
  store i32 %323, ptr %117, align 4, !tbaa !132
  br label %327

327:                                              ; preds = %326, %321
  %328 = load i32, ptr %116, align 4, !tbaa !134
  %329 = icmp sgt i32 %328, %24
  br i1 %329, label %330, label %331

330:                                              ; preds = %327
  store i32 %24, ptr %116, align 4, !tbaa !134
  br label %331

331:                                              ; preds = %330, %327
  %332 = load i32, ptr %118, align 4, !tbaa !133
  %333 = icmp slt i32 %332, %24
  br i1 %333, label %334, label %335

334:                                              ; preds = %331
  store i32 %24, ptr %118, align 4, !tbaa !133
  br label %335

335:                                              ; preds = %334, %331, %304, %310, %271
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9
  %336 = icmp eq i64 %201, 4
  br i1 %336, label %337, label %120, !llvm.loop !201

337:                                              ; preds = %335
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #9
  br label %338

338:                                              ; preds = %66, %337
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @clist_image_enum_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #7 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.clist_image_enum_s, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  store ptr %8, ptr %3, align 8, !tbaa !21
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @clist_image_enum_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.clist_image_enum_s, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #9
  store ptr %6, ptr %4, align 8, !tbaa !82
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cmd_put_color_map(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_bbox_transform_inverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_point_transform_inverse(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_point_transform(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare i32 @gx_default_image_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gx_default_end_image(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 208}
!6 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 248}
!11 = !{!6, !7, i64 256}
!12 = !{!6, !7, i64 264}
!13 = !{!14, !7, i64 0}
!14 = !{!"gx_device_color_s", !7, i64 0, !8, i64 8, !15, i64 48, !17, i64 56}
!15 = !{!"gs_int_point_s", !16, i64 0, !16, i64 4}
!16 = !{!"int", !8, i64 0}
!17 = !{!"_mask", !18, i64 0, !20, i64 24, !7, i64 32}
!18 = !{!"gs_client_color_s", !19, i64 0, !7, i64 16}
!19 = !{!"gs_paint_color_s", !8, i64 0}
!20 = !{!"long", !8, i64 0}
!21 = !{!7, !7, i64 0}
!22 = !{!23, !16, i64 64}
!23 = !{!"gx_device_s", !16, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !16, i64 40, !16, i64 44, !24, i64 48, !16, i64 64, !16, i64 68, !8, i64 72, !8, i64 80, !16, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !20, i64 144, !20, i64 152, !16, i64 160, !26, i64 168, !6, i64 192}
!24 = !{!"gx_device_color_info_s", !16, i64 0, !16, i64 4, !25, i64 8, !25, i64 10, !25, i64 12, !25, i64 14}
!25 = !{!"short", !8, i64 0}
!26 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!27 = !{!23, !16, i64 68}
!28 = !{!8, !8, i64 0}
!29 = !{!30, !25, i64 76}
!30 = !{!"gx_clist_state_s", !8, i64 0, !16, i64 16, !20, i64 24, !15, i64 32, !8, i64 40, !31, i64 56, !16, i64 72, !25, i64 76, !25, i64 78, !25, i64 80, !25, i64 82, !32, i64 88, !20, i64 104}
!31 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12}
!32 = !{!"cmd_list_s", !7, i64 0, !7, i64 8}
!33 = !{!30, !16, i64 72}
!34 = !{!30, !25, i64 80}
!35 = !{!30, !25, i64 82}
!36 = !{!30, !25, i64 78}
!37 = !{!30, !20, i64 24}
!38 = !{!30, !16, i64 16}
!39 = !{!40, !20, i64 0}
!40 = !{!"", !20, i64 0}
!41 = !{!42, !20, i64 16}
!42 = !{!"", !43, i64 0, !25, i64 8, !25, i64 10, !25, i64 12, !25, i64 14, !20, i64 16, !8, i64 24, !8, i64 25, !25, i64 26, !25, i64 28, !25, i64 30}
!43 = !{!"gx_cached_bits_head_s", !16, i64 0, !16, i64 4}
!44 = !{!45, !7, i64 0}
!45 = !{!"gx_strip_bitmap_s", !7, i64 0, !16, i64 8, !15, i64 12, !20, i64 24, !25, i64 32, !25, i64 34, !25, i64 36, !25, i64 38}
!46 = !{!45, !16, i64 8}
!47 = !{!45, !25, i64 32}
!48 = !{!45, !16, i64 12}
!49 = !{!45, !25, i64 34}
!50 = !{!45, !16, i64 16}
!51 = !{!45, !25, i64 38}
!52 = !{!45, !25, i64 36}
!53 = !{!45, !20, i64 24}
!54 = !{i64 0, i64 4, !55, i64 4, i64 4, !55, i64 8, i64 4, !55, i64 12, i64 4, !55}
!55 = !{!16, !16, i64 0}
!56 = !{i64 0, i64 4, !55, i64 4, i64 4, !55, i64 8, i64 4, !55}
!57 = !{i64 0, i64 4, !55, i64 4, i64 4, !55}
!58 = !{i64 0, i64 4, !55}
!59 = !{!60, !7, i64 24}
!60 = !{!"gs_memory_s", !61, i64 0}
!61 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!62 = !{!63, !7, i64 0}
!63 = !{!"clist_image_enum_s", !7, i64 0, !64, i64 8, !14, i64 104, !67, i64 200, !7, i64 216, !7, i64 224, !7, i64 232, !16, i64 240, !16, i64 244, !16, i64 248, !65, i64 252, !16, i64 276, !8, i64 280, !16, i64 284, !16, i64 288, !16, i64 292}
!64 = !{!"gs_image_s", !16, i64 0, !16, i64 4, !65, i64 8, !16, i64 32, !7, i64 40, !8, i64 48, !16, i64 80, !16, i64 84, !16, i64 88, !16, i64 92}
!65 = !{!"gs_matrix_s", !66, i64 0, !66, i64 4, !66, i64 8, !66, i64 12, !66, i64 16, !66, i64 20}
!66 = !{!"float", !8, i64 0}
!67 = !{!"gs_int_rect_s", !15, i64 0, !15, i64 8}
!68 = !{!64, !16, i64 84}
!69 = !{!64, !7, i64 40}
!70 = !{!64, !16, i64 92}
!71 = !{!72, !16, i64 128}
!72 = !{!"gs_imager_state_s", !7, i64 0, !73, i64 8, !75, i64 80, !16, i64 128, !25, i64 132, !16, i64 136, !66, i64 140, !76, i64 144, !16, i64 160, !16, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312}
!73 = !{!"gx_line_params_s", !66, i64 0, !16, i64 4, !16, i64 8, !66, i64 12, !66, i64 16, !66, i64 20, !66, i64 24, !74, i64 32}
!74 = !{!"gx_dash_params_s", !7, i64 0, !16, i64 8, !66, i64 12, !16, i64 16, !66, i64 20, !16, i64 24, !16, i64 28, !66, i64 32}
!75 = !{!"gs_matrix_fixed_s", !66, i64 0, !66, i64 4, !66, i64 8, !66, i64 12, !66, i64 16, !66, i64 20, !20, i64 24, !20, i64 32, !16, i64 40}
!76 = !{!"gs_fixed_point_s", !20, i64 0, !20, i64 8}
!77 = !{!64, !16, i64 32}
!78 = !{!64, !16, i64 80}
!79 = !{i32 0, i32 2}
!80 = !{!23, !16, i64 48}
!81 = !{!60, !7, i64 88}
!82 = !{!63, !7, i64 232}
!83 = !{i64 0, i64 4, !55, i64 4, i64 4, !55, i64 8, i64 4, !84, i64 12, i64 4, !84, i64 16, i64 4, !84, i64 20, i64 4, !84, i64 24, i64 4, !84, i64 28, i64 4, !84, i64 32, i64 4, !55, i64 40, i64 8, !21, i64 48, i64 32, !28, i64 80, i64 4, !55, i64 84, i64 4, !55, i64 88, i64 4, !55, i64 92, i64 4, !55}
!84 = !{!66, !66, i64 0}
!85 = !{i64 0, i64 8, !21, i64 8, i64 8, !86, i64 8, i64 8, !21, i64 16, i64 16, !28, i64 32, i64 4, !55, i64 40, i64 8, !21, i64 8, i64 8, !21, i64 16, i64 4, !28, i64 20, i64 16, !28, i64 36, i64 2, !87, i64 8, i64 8, !21, i64 48, i64 4, !55, i64 52, i64 4, !55, i64 56, i64 16, !28, i64 72, i64 8, !21, i64 80, i64 8, !86, i64 88, i64 8, !21}
!86 = !{!20, !20, i64 0}
!87 = !{!25, !25, i64 0}
!88 = !{!63, !16, i64 200}
!89 = !{!63, !16, i64 204}
!90 = !{!64, !16, i64 0}
!91 = !{!63, !16, i64 208}
!92 = !{!64, !16, i64 4}
!93 = !{!63, !16, i64 212}
!94 = !{!63, !7, i64 216}
!95 = !{!63, !7, i64 224}
!96 = !{!63, !16, i64 240}
!97 = !{!63, !16, i64 244}
!98 = !{!63, !16, i64 248}
!99 = !{i64 0, i64 4, !84, i64 4, i64 4, !84, i64 8, i64 4, !84, i64 12, i64 4, !84, i64 16, i64 4, !84, i64 20, i64 4, !84}
!100 = !{!63, !16, i64 276}
!101 = !{!63, !8, i64 280}
!102 = !{!63, !16, i64 292}
!103 = !{!72, !66, i64 80}
!104 = !{!72, !66, i64 84}
!105 = !{!72, !66, i64 88}
!106 = !{!72, !66, i64 92}
!107 = !{!72, !66, i64 96}
!108 = !{!72, !66, i64 100}
!109 = !{i64 0, i64 4, !84, i64 4, i64 4, !84, i64 8, i64 4, !84, i64 12, i64 4, !84, i64 16, i64 4, !84, i64 20, i64 4, !84, i64 24, i64 8, !86, i64 32, i64 8, !86, i64 40, i64 4, !55}
!110 = !{!63, !7, i64 48}
!111 = !{i64 0, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 8, i64 8, !21, i64 16, i64 4, !55, i64 24, i64 8, !21, i64 32, i64 4, !55, i64 24, i64 8, !21, i64 40, i64 4, !55}
!112 = !{!64, !66, i64 8}
!113 = !{!64, !66, i64 12}
!114 = !{!64, !66, i64 16}
!115 = !{!64, !66, i64 20}
!116 = !{!64, !66, i64 24}
!117 = !{!64, !66, i64 28}
!118 = distinct !{!118, !119}
!119 = !{!"llvm.loop.unroll.disable"}
!120 = distinct !{!120, !119}
!121 = !{!64, !16, i64 88}
!122 = !{!123, !125, i64 0}
!123 = !{!"gs_rect_s", !124, i64 0, !124, i64 16}
!124 = !{!"gs_point_s", !125, i64 0, !125, i64 8}
!125 = !{!"double", !8, i64 0}
!126 = !{!123, !125, i64 8}
!127 = !{!123, !125, i64 16}
!128 = !{!123, !125, i64 24}
!129 = !{!63, !16, i64 284}
!130 = !{!63, !16, i64 288}
!131 = !{!67, !16, i64 0}
!132 = !{!67, !16, i64 8}
!133 = !{!67, !16, i64 12}
!134 = !{!67, !16, i64 4}
!135 = distinct !{!135, !119}
!136 = !{i32 0, i32 33}
!137 = !{!138, !16, i64 52}
!138 = !{!"gx_device_clist_writer_s", !16, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !16, i64 40, !16, i64 44, !24, i64 48, !16, i64 64, !16, i64 68, !8, i64 72, !8, i64 80, !16, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !20, i64 144, !20, i64 152, !16, i64 160, !26, i64 168, !6, i64 192, !7, i64 488, !7, i64 496, !7, i64 504, !16, i64 512, !139, i64 520, !140, i64 536, !141, i64 560, !16, i64 584, !16, i64 588, !7, i64 592, !16, i64 600, !16, i64 604, !142, i64 608, !16, i64 784, !16, i64 788, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !32, i64 832, !16, i64 848, !16, i64 852, !16, i64 856, !16, i64 860, !45, i64 864, !16, i64 904, !16, i64 908, !16, i64 912, !72, i64 920, !8, i64 1240, !7, i64 1288, !20, i64 1296, !8, i64 1304, !143, i64 1312, !8, i64 1360, !20, i64 1392, !20, i64 1400, !20, i64 1408, !16, i64 1416}
!139 = !{!"gx_band_params_s", !16, i64 0, !16, i64 4, !20, i64 8}
!140 = !{!"gx_bits_cache_chunk_s", !7, i64 0, !7, i64 8, !16, i64 16, !16, i64 20}
!141 = !{!"gx_bits_cache_s", !7, i64 0, !16, i64 8, !16, i64 12, !16, i64 16}
!142 = !{!"gx_band_page_info_s", !8, i64 0, !7, i64 64, !8, i64 72, !7, i64 136, !16, i64 144, !20, i64 152, !139, i64 160}
!143 = !{!"gs_indexed_params_s", !144, i64 0, !16, i64 16, !8, i64 24, !16, i64 40}
!144 = !{!"gs_base_color_space_s", !7, i64 0, !8, i64 8}
!145 = distinct !{!145, !119}
!146 = !{!138, !16, i64 788}
!147 = distinct !{!147, !119}
!148 = distinct !{!148, !119}
!149 = distinct !{!149, !119}
!150 = !{!151, !7, i64 128}
!151 = !{!"gx_device_halftone_s", !152, i64 0, !154, i64 96, !20, i64 120, !7, i64 128, !16, i64 136, !8, i64 140, !16, i64 156, !16, i64 160}
!152 = !{!"gx_ht_order_s", !153, i64 0, !25, i64 40, !25, i64 42, !25, i64 44, !25, i64 46, !25, i64 48, !25, i64 50, !16, i64 52, !16, i64 56, !16, i64 60, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88}
!153 = !{!"gx_ht_cell_params_s", !25, i64 0, !25, i64 2, !25, i64 4, !25, i64 6, !25, i64 8, !25, i64 10, !20, i64 16, !25, i64 24, !25, i64 26, !16, i64 28, !16, i64 32, !16, i64 36}
!154 = !{!"rc_header_s", !20, i64 0, !7, i64 8, !7, i64 16}
!155 = !{!151, !16, i64 136}
!156 = !{!138, !16, i64 784}
!157 = !{!158, !16, i64 96}
!158 = !{!"gx_ht_order_component_s", !152, i64 0, !16, i64 96}
!159 = distinct !{!159, !119}
!160 = !{!152, !25, i64 40}
!161 = !{!152, !25, i64 42}
!162 = !{!152, !25, i64 44}
!163 = !{!152, !25, i64 46}
!164 = !{!152, !16, i64 56}
!165 = !{!152, !16, i64 60}
!166 = !{!152, !7, i64 88}
!167 = !{!152, !7, i64 64}
!168 = distinct !{!168, !119}
!169 = !{!152, !7, i64 72}
!170 = distinct !{!170, !119}
!171 = !{!65, !66, i64 4}
!172 = !{!65, !66, i64 8}
!173 = !{!65, !66, i64 0}
!174 = !{!65, !66, i64 12}
!175 = !{!72, !7, i64 192}
!176 = !{!151, !20, i64 120}
!177 = !{!138, !20, i64 1408}
!178 = !{!72, !7, i64 168}
!179 = !{!180, !16, i64 0}
!180 = !{!"gs_halftone_s", !16, i64 0, !154, i64 8, !8, i64 32}
!181 = !{!72, !7, i64 216}
!182 = !{!72, !7, i64 224}
!183 = !{!184, !20, i64 32}
!184 = !{!"gx_transfer_map_s", !154, i64 0, !7, i64 24, !20, i64 32, !8, i64 40}
!185 = distinct !{!185, !119}
!186 = distinct !{!186, !119}
!187 = distinct !{!187, !119}
!188 = !{!23, !7, i64 480}
!189 = !{!190, !20, i64 0}
!190 = !{!"gs_fixed_rect_s", !76, i64 0, !76, i64 16}
!191 = !{!190, !20, i64 16}
!192 = !{!63, !66, i64 256}
!193 = !{!63, !66, i64 260}
!194 = !{!63, !66, i64 252}
!195 = !{!63, !66, i64 264}
!196 = !{!124, !125, i64 0}
!197 = !{!124, !125, i64 8}
!198 = !{i64 0, i64 8, !199, i64 8, i64 8, !199}
!199 = !{!125, !125, i64 0}
!200 = !{i64 0, i64 8, !199}
!201 = distinct !{!201, !119}
