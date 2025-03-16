; ModuleID = 'gxclbits.c'
source_filename = "gxclbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%union.ss_ = type { %struct.stream_CFE_state_s }
%struct.stream_CFE_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
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
%struct.stream_RLE_state_s = type { ptr, ptr, ptr, i32, i64, i64, i32 }
%struct.cmd_prefix_s = type { ptr, i32 }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, ptr, i64, [256 x i16] }
%struct.rc_header_s = type { i64, ptr, ptr }
%struct.tile_hash = type { i64 }
%struct.tile_slot = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, i8, i8, i16, i16, i16 }
%struct.gx_cached_bits_head_s = type { i32, i32 }

@gs_memory_default = external global %struct.gs_memory_s, align 8
@s_CFE_template = external constant %struct.stream_template_s, align 8
@s_RLE_template = external constant %struct.stream_template_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @clist_bitmap_bytes(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = add i32 %0, 63
  %7 = lshr i32 %6, 3
  %8 = and i32 %7, 536870904
  store i32 %8, ptr %4, align 4, !tbaa !5
  %9 = and i32 %2, 6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = add i32 %0, 7
  %13 = lshr i32 %12, 3
  %14 = icmp ugt i32 %12, 55
  %15 = icmp ugt i32 %1, 1
  %16 = and i1 %14, %15
  %17 = and i32 %2, 512
  %18 = icmp eq i32 %17, 0
  %19 = and i1 %16, %18
  %20 = select i1 %19, i32 %8, i32 %13
  br label %21

21:                                               ; preds = %11, %5
  %22 = phi i32 [ %8, %5 ], [ %20, %11 ]
  %23 = phi i32 [ %8, %5 ], [ %13, %11 ]
  store i32 %22, ptr %3, align 4, !tbaa !5
  %24 = icmp eq i32 %1, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %3, align 4, !tbaa !5
  %27 = add i32 %1, -1
  %28 = mul i32 %26, %27
  %29 = add i32 %28, %23
  br label %30

30:                                               ; preds = %21, %25
  %31 = phi i32 [ %29, %25 ], [ 0, %21 ]
  ret i32 %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @cmd_put_bits(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef %9) local_unnamed_addr #2 {
  %11 = alloca %struct.stream_cursor_read_s, align 8
  %12 = alloca %union.ss_, align 8
  %13 = alloca %struct.stream_cursor_write_s, align 8
  %14 = add i32 %3, 63
  %15 = lshr i32 %14, 3
  %16 = and i32 %15, 536870904
  %17 = add i32 %3, 7
  %18 = lshr i32 %17, 3
  %19 = icmp ugt i32 %17, 55
  %20 = icmp ugt i32 %4, 1
  %21 = and i1 %19, %20
  %22 = and i32 %7, 512
  %23 = icmp eq i32 %22, 0
  %24 = and i1 %21, %23
  %25 = select i1 %24, i32 %16, i32 %18
  %26 = icmp eq i32 %4, 0
  %27 = add i32 %4, -1
  %28 = mul i32 %25, %27
  %29 = add i32 %28, %18
  %30 = select i1 %26, i32 0, i32 %29
  %31 = and i32 %7, 6
  %32 = icmp eq i32 %31, 0
  %33 = and i32 %7, 512
  %34 = icmp eq i32 %33, 0
  %35 = and i1 %21, %34
  %36 = select i1 %35, i32 %16, i32 %18
  %37 = select i1 %32, i32 %36, i32 %16
  %38 = select i1 %32, i32 %18, i32 %16
  %39 = add i32 %4, -1
  %40 = mul i32 %37, %39
  %41 = add i32 %40, %38
  %42 = select i1 %26, i32 0, i32 %41
  %43 = sub nsw i32 800, %6
  %44 = icmp ult i32 %30, 50
  %45 = or i1 %32, %44
  br i1 %45, label %219, label %46

46:                                               ; preds = %10
  %47 = icmp ugt i32 %42, %43
  %48 = and i32 %7, 256
  %49 = icmp eq i32 %48, 0
  %50 = and i1 %49, %47
  br i1 %50, label %219, label %51

51:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %12) #7
  %52 = add i32 %42, %6
  store i32 %52, ptr %9, align 4, !tbaa !5
  %53 = icmp eq ptr %1, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %56 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %55, i32 noundef %52) #7
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %60 = load i32, ptr %59, align 4, !tbaa !9
  br label %214

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 35
  %63 = load i32, ptr %62, align 8, !tbaa !32
  %64 = add nsw i32 %63, -1
  %65 = tail call ptr @cmd_put_range_op(ptr noundef %0, i32 noundef 0, i32 noundef %64, i32 noundef %52) #7
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %69 = load i32, ptr %68, align 4, !tbaa !9
  br label %214

70:                                               ; preds = %61, %54
  %71 = phi ptr [ %56, %54 ], [ %65, %61 ]
  store i8 0, ptr %71, align 1, !tbaa !33
  %72 = and i32 %7, 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %12, i64 0, i32 6
  %76 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %12, i64 0, i32 7
  %77 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %12, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %75, i8 0, i64 16, i1 false)
  store i32 1728, ptr %77, align 4, !tbaa !33
  %78 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %12, i64 0, i32 11
  store i32 0, ptr %78, align 8, !tbaa !33
  %79 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %12, i64 0, i32 12
  store i32 1, ptr %79, align 4, !tbaa !33
  %80 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %12, i64 0, i32 13
  store i32 0, ptr %80, align 8, !tbaa !33
  %81 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %12, i64 0, i32 14
  store i32 0, ptr %81, align 4, !tbaa !33
  %82 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %12, i64 0, i32 3
  store i32 0, ptr %82, align 8, !tbaa !33
  %83 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %12, i64 0, i32 15
  store i32 1, ptr %83, align 8, !tbaa !33
  %84 = getelementptr inbounds %struct.stream_CFE_state_s, ptr %12, i64 0, i32 1
  store ptr @gs_memory_default, ptr %84, align 8, !tbaa !33
  store i32 -1, ptr %76, align 8, !tbaa !33
  %85 = shl nuw i32 %37, 3
  store i32 %85, ptr %77, align 4, !tbaa !33
  store i32 0, ptr %79, align 4, !tbaa !33
  store i32 1, ptr %80, align 8, !tbaa !33
  store i32 8, ptr %83, align 8, !tbaa !33
  %86 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_CFE_template, i64 0, i32 1), align 8, !tbaa !34
  %87 = call i32 %86(ptr noundef nonnull %12) #7
  store ptr @s_CFE_template, ptr %12, align 8, !tbaa !33
  br label %96

88:                                               ; preds = %70
  %89 = and i32 %7, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %12, i64 0, i32 3
  store i32 1, ptr %92, align 8, !tbaa !33
  %93 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %12, i64 0, i32 4
  store i64 4294967295, ptr %93, align 8, !tbaa !33
  %94 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %12, i64 0, i32 5
  store i64 4294967295, ptr %94, align 8, !tbaa !33
  %95 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %12, i64 0, i32 6
  store i32 0, ptr %95, align 8, !tbaa !33
  store ptr @s_RLE_template, ptr %12, align 8, !tbaa !33
  br label %96

96:                                               ; preds = %88, %91, %74
  %97 = phi i1 [ false, %74 ], [ false, %91 ], [ true, %88 ]
  %98 = phi i32 [ 2, %74 ], [ 1, %91 ], [ 0, %88 ]
  br i1 %97, label %179, label %99

99:                                               ; preds = %96
  %100 = add nsw i32 %6, -1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, ptr %71, i64 %101
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #7
  %103 = call i32 @llvm.umin.i32(i32 %42, i32 %43)
  %104 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %13, i64 0, i32 1
  store ptr %102, ptr %104, align 8, !tbaa !36
  %105 = lshr i32 %30, 1
  %106 = call i32 @llvm.umin.i32(i32 %103, i32 %105)
  %107 = zext nneg i32 %106 to i64
  %108 = getelementptr inbounds i8, ptr %102, i64 %107
  %109 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %13, i64 0, i32 2
  store ptr %108, ptr %109, align 8, !tbaa !38
  %110 = add nuw nsw i32 %37, 7
  %111 = and i32 %110, 536870904
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #7
  %112 = getelementptr inbounds i8, ptr %2, i64 -1
  store ptr %112, ptr %11, align 8, !tbaa !39
  %113 = icmp eq i32 %111, %5
  br i1 %113, label %121, label %114

114:                                              ; preds = %99
  %115 = zext nneg i32 %111 to i64
  %116 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %11, i64 0, i32 1
  %117 = getelementptr inbounds i8, ptr %112, i64 %115
  store ptr %117, ptr %116, align 8, !tbaa !41
  br i1 %20, label %118, label %142

118:                                              ; preds = %114
  %119 = sub i32 %5, %111
  %120 = zext i32 %119 to i64
  br label %126

121:                                              ; preds = %99
  %122 = mul i32 %5, %4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, ptr %112, i64 %123
  %125 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %11, i64 0, i32 1
  store ptr %124, ptr %125, align 8, !tbaa !41
  br label %142

126:                                              ; preds = %137, %118
  %127 = phi i32 [ 1, %118 ], [ %139, %137 ]
  %128 = load ptr, ptr %12, align 8, !tbaa !42
  %129 = getelementptr inbounds %struct.stream_template_s, ptr %128, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !44
  %131 = call i32 %130(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %13, i32 noundef 0) #7
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %126
  %134 = load ptr, ptr %11, align 8, !tbaa !39
  %135 = load ptr, ptr %116, align 8, !tbaa !41
  %136 = icmp eq ptr %134, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = getelementptr inbounds i8, ptr %134, i64 %120
  store ptr %138, ptr %11, align 8, !tbaa !39
  %139 = add nuw i32 %127, 1
  %140 = getelementptr inbounds i8, ptr %138, i64 %115
  store ptr %140, ptr %116, align 8, !tbaa !41
  %141 = icmp eq i32 %139, %4
  br i1 %141, label %142, label %126, !llvm.loop !45

142:                                              ; preds = %114, %137, %121
  %143 = load ptr, ptr %12, align 8, !tbaa !42
  %144 = getelementptr inbounds %struct.stream_template_s, ptr %143, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !44
  %146 = call i32 %145(ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %13, i32 noundef 1) #7
  %147 = icmp eq i32 %146, 0
  br label %148

148:                                              ; preds = %126, %133, %142
  %149 = phi i1 [ %147, %142 ], [ false, %133 ], [ false, %126 ]
  %150 = load ptr, ptr %12, align 8, !tbaa !42
  %151 = getelementptr inbounds %struct.stream_template_s, ptr %150, i64 0, i32 5
  %152 = load ptr, ptr %151, align 8, !tbaa !47
  %153 = icmp eq ptr %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %148
  call void %152(ptr noundef nonnull %12) #7
  br label %155

155:                                              ; preds = %148, %154
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #7
  br i1 %149, label %156, label %177

156:                                              ; preds = %155
  %157 = load ptr, ptr %104, align 8, !tbaa !36
  %158 = ptrtoint ptr %157 to i64
  %159 = ptrtoint ptr %102 to i64
  %160 = sub i64 %158, %159
  %161 = trunc i64 %160 to i32
  %162 = sub i32 %42, %161
  %163 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %164 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 42
  %165 = select i1 %53, ptr %164, ptr %163
  %166 = getelementptr inbounds %struct.cmd_list_s, ptr %165, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !48
  %168 = getelementptr inbounds %struct.cmd_prefix_s, ptr %167, i64 0, i32 1
  %169 = load i32, ptr %168, align 8, !tbaa !49
  %170 = sub i32 %169, %162
  store i32 %170, ptr %168, align 8, !tbaa !49
  %171 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 39
  %172 = load ptr, ptr %171, align 8, !tbaa !51
  %173 = zext i32 %162 to i64
  %174 = sub nsw i64 0, %173
  %175 = getelementptr inbounds i8, ptr %172, i64 %174
  store ptr %175, ptr %171, align 8, !tbaa !51
  %176 = add i32 %161, %6
  store i32 %176, ptr %9, align 4, !tbaa !5
  br label %177

177:                                              ; preds = %155, %156
  %178 = phi i32 [ 8, %156 ], [ 0, %155 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #7
  br i1 %149, label %214, label %179

179:                                              ; preds = %177, %96
  br i1 %47, label %180, label %196

180:                                              ; preds = %179
  %181 = load i32, ptr %9, align 4, !tbaa !5
  %182 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %183 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 42
  %184 = select i1 %53, ptr %183, ptr %182
  %185 = getelementptr inbounds %struct.cmd_list_s, ptr %184, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !48
  %187 = getelementptr inbounds %struct.cmd_prefix_s, ptr %186, i64 0, i32 1
  %188 = load i32, ptr %187, align 8, !tbaa !49
  %189 = sub i32 %188, %181
  store i32 %189, ptr %187, align 8, !tbaa !49
  %190 = load i32, ptr %9, align 4, !tbaa !5
  %191 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 39
  %192 = load ptr, ptr %191, align 8, !tbaa !51
  %193 = zext i32 %190 to i64
  %194 = sub nsw i64 0, %193
  %195 = getelementptr inbounds i8, ptr %192, i64 %194
  store ptr %195, ptr %191, align 8, !tbaa !51
  br label %214

196:                                              ; preds = %179
  %197 = icmp eq i32 %42, %30
  br i1 %197, label %214, label %198

198:                                              ; preds = %196
  %199 = sub i32 %42, %30
  %200 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %201 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 42
  %202 = select i1 %53, ptr %201, ptr %200
  %203 = getelementptr inbounds %struct.cmd_list_s, ptr %202, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !48
  %205 = getelementptr inbounds %struct.cmd_prefix_s, ptr %204, i64 0, i32 1
  %206 = load i32, ptr %205, align 8, !tbaa !49
  %207 = sub i32 %206, %199
  store i32 %207, ptr %205, align 8, !tbaa !49
  %208 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 39
  %209 = load ptr, ptr %208, align 8, !tbaa !51
  %210 = zext i32 %199 to i64
  %211 = sub nsw i64 0, %210
  %212 = getelementptr inbounds i8, ptr %209, i64 %211
  store ptr %212, ptr %208, align 8, !tbaa !51
  %213 = add i32 %30, %6
  store i32 %213, ptr %9, align 4, !tbaa !5
  br label %214

214:                                              ; preds = %196, %198, %177, %180, %67, %58
  %215 = phi i32 [ 1, %58 ], [ 1, %180 ], [ %178, %177 ], [ 1, %67 ], [ 0, %198 ], [ 0, %196 ]
  %216 = phi i32 [ 0, %58 ], [ %98, %180 ], [ %98, %177 ], [ 0, %67 ], [ 0, %198 ], [ 0, %196 ]
  %217 = phi ptr [ null, %58 ], [ %71, %180 ], [ %71, %177 ], [ null, %67 ], [ %71, %198 ], [ %71, %196 ]
  %218 = phi i32 [ %60, %58 ], [ -13, %180 ], [ undef, %177 ], [ %69, %67 ], [ undef, %198 ], [ undef, %196 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %12) #7
  switch i32 %215, label %250 [
    i32 0, label %242
    i32 8, label %247
  ]

219:                                              ; preds = %46, %10
  %220 = icmp ugt i32 %42, %43
  br i1 %220, label %250, label %221

221:                                              ; preds = %219
  %222 = add i32 %30, %6
  store i32 %222, ptr %9, align 4, !tbaa !5
  %223 = icmp eq ptr %1, null
  br i1 %223, label %231, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %226 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %225, i32 noundef %222) #7
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %240

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %230 = load i32, ptr %229, align 4, !tbaa !9
  br label %250

231:                                              ; preds = %221
  %232 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 35
  %233 = load i32, ptr %232, align 8, !tbaa !32
  %234 = add nsw i32 %233, -1
  %235 = tail call ptr @cmd_put_range_op(ptr noundef %0, i32 noundef 0, i32 noundef %234, i32 noundef %222) #7
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %239 = load i32, ptr %238, align 4, !tbaa !9
  br label %250

240:                                              ; preds = %231, %224
  %241 = phi ptr [ %226, %224 ], [ %235, %231 ]
  store i8 0, ptr %241, align 1, !tbaa !33
  br label %242

242:                                              ; preds = %240, %214
  %243 = phi i32 [ %216, %214 ], [ 0, %240 ]
  %244 = phi ptr [ %217, %214 ], [ %241, %240 ]
  %245 = sext i32 %6 to i64
  %246 = getelementptr inbounds i8, ptr %244, i64 %245
  call void @bytes_copy_rectangle(ptr noundef %246, i32 noundef %25, ptr noundef %2, i32 noundef %5, i32 noundef %25, i32 noundef %4) #7
  br label %247

247:                                              ; preds = %242, %214
  %248 = phi i32 [ %216, %214 ], [ %243, %242 ]
  %249 = phi ptr [ %217, %214 ], [ %244, %242 ]
  store ptr %249, ptr %8, align 8, !tbaa !52
  br label %250

250:                                              ; preds = %219, %247, %237, %228, %214
  %251 = phi i32 [ %218, %214 ], [ %248, %247 ], [ %230, %228 ], [ %239, %237 ], [ -13, %219 ]
  ret i32 %251
}

declare ptr @cmd_put_list_op(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cmd_put_range_op(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @bytes_copy_rectangle(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @cmd_put_color_map(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %2, null
  %6 = icmp eq ptr %3, null
  br i1 %5, label %7, label %25

7:                                                ; preds = %4
  br i1 %6, label %12, label %8

8:                                                ; preds = %7
  %9 = load i64, ptr %3, align 8, !tbaa !53
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %8
  store i64 0, ptr %3, align 8, !tbaa !53
  br label %12

12:                                               ; preds = %7, %11
  %13 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 35
  %14 = load i32, ptr %13, align 8, !tbaa !32
  %15 = add nsw i32 %14, -1
  %16 = tail call ptr @cmd_put_range_op(ptr noundef %0, i32 noundef 0, i32 noundef %15, i32 noundef 2) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %20 = load i32, ptr %19, align 4, !tbaa !9
  br label %47

21:                                               ; preds = %12
  store i8 6, ptr %16, align 1, !tbaa !33
  %22 = trunc i32 %1 to i8
  %23 = xor i8 %22, -128
  %24 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %23, ptr %24, align 1, !tbaa !33
  br label %47

25:                                               ; preds = %4
  br i1 %6, label %32, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %2, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !54
  %29 = load i64, ptr %3, align 8, !tbaa !53
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %47, label %31

31:                                               ; preds = %26
  store i64 %28, ptr %3, align 8, !tbaa !53
  br label %32

32:                                               ; preds = %25, %31
  %33 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 35
  %34 = load i32, ptr %33, align 8, !tbaa !32
  %35 = add nsw i32 %34, -1
  %36 = tail call ptr @cmd_put_range_op(ptr noundef %0, i32 noundef 0, i32 noundef %35, i32 noundef 514) #7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %40 = load i32, ptr %39, align 4, !tbaa !9
  br label %47

41:                                               ; preds = %32
  store i8 6, ptr %36, align 1, !tbaa !33
  %42 = trunc i32 %1 to i8
  %43 = add i8 %42, -96
  %44 = getelementptr inbounds i8, ptr %36, i64 1
  store i8 %43, ptr %44, align 1, !tbaa !33
  %45 = getelementptr inbounds i8, ptr %36, i64 2
  %46 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %2, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %45, ptr noundef nonnull align 8 dereferenceable(512) %46, i64 512, i1 false)
  br label %47

47:                                               ; preds = %21, %41, %26, %8, %38, %18
  %48 = phi i32 [ %20, %18 ], [ %40, %38 ], [ 0, %8 ], [ 0, %26 ], [ 0, %41 ], [ 0, %21 ]
  ret i32 %48
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @clist_change_tile(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gx_strip_bitmap_s, align 8
  %8 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %2, i64 0, i32 3
  %9 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 31
  %10 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 29
  %11 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 24
  %12 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %2, i64 0, i32 4
  %13 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47
  %14 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 4
  %15 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %2, i64 0, i32 5
  %16 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 5
  %17 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %2, i64 0, i32 6
  %18 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 6
  %19 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 48
  %20 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %2, i64 0, i32 5
  %21 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 30
  %22 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 27, i32 2
  %23 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %7, i64 0, i32 2
  %24 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %7, i64 0, i32 1
  %25 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %2, i64 0, i32 7
  %26 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %7, i64 0, i32 2, i32 1
  %27 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 3
  %28 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %2, i64 0, i32 1
  br label %29

29:                                               ; preds = %417, %4
  %30 = phi ptr [ undef, %4 ], [ %58, %417 ]
  %31 = phi i32 [ undef, %4 ], [ %422, %417 ]
  %32 = load i64, ptr %8, align 8, !tbaa !57
  %33 = trunc i64 %32 to i32
  %34 = load ptr, ptr %9, align 8, !tbaa !58
  %35 = load i32, ptr %10, align 8, !tbaa !59
  %36 = and i32 %35, %33
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.tile_hash, ptr %34, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !60
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %29
  %42 = load ptr, ptr %11, align 8, !tbaa !62
  br label %43

43:                                               ; preds = %50, %41
  %44 = phi i64 [ %39, %41 ], [ %55, %50 ]
  %45 = phi i32 [ %36, %41 ], [ %52, %50 ]
  %46 = getelementptr inbounds i8, ptr %42, i64 %44
  %47 = getelementptr inbounds %struct.tile_slot, ptr %46, i64 0, i32 5
  %48 = load i64, ptr %47, align 8, !tbaa !63
  %49 = icmp ne i64 %48, %32
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = add i32 %45, 413
  %52 = and i32 %51, %35
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.tile_hash, ptr %34, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !60
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %43, !llvm.loop !66

57:                                               ; preds = %50, %43, %29
  %58 = phi ptr [ %30, %29 ], [ %46, %43 ], [ %30, %50 ]
  %59 = phi i32 [ %36, %29 ], [ %45, %43 ], [ %52, %50 ]
  %60 = phi i1 [ true, %29 ], [ %49, %43 ], [ %49, %50 ]
  br i1 %60, label %361, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %63 = load ptr, ptr %62, align 8, !tbaa !67
  %64 = ptrtoint ptr %1 to i64
  %65 = ptrtoint ptr %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 112
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds %struct.tile_slot, ptr %58, i64 1
  %70 = ashr i32 %68, 3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %69, i64 %71
  %73 = and i32 %68, 7
  %74 = shl nuw nsw i32 1, %73
  %75 = load i8, ptr %72, align 1, !tbaa !33
  %76 = zext i8 %75 to i32
  %77 = and i32 %74, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %112, label %79

79:                                               ; preds = %61
  %80 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !68
  %82 = icmp eq i32 %81, %59
  br i1 %82, label %423, label %83

83:                                               ; preds = %79
  %84 = sub i32 %59, %81
  %85 = add i32 %84, 8
  %86 = icmp ult i32 %85, 16
  %87 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  br i1 %86, label %88, label %97

88:                                               ; preds = %83
  %89 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %87, i32 noundef 1) #7
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %93 = load i32, ptr %92, align 4, !tbaa !9
  br label %109

94:                                               ; preds = %88
  %95 = trunc i32 %84 to i8
  %96 = add i8 %95, -72
  store i8 %96, ptr %89, align 1, !tbaa !33
  br label %109

97:                                               ; preds = %83
  %98 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %87, i32 noundef 2) #7
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %102 = load i32, ptr %101, align 4, !tbaa !9
  br label %109

103:                                              ; preds = %97
  %104 = lshr i32 %59, 8
  %105 = trunc i32 %104 to i8
  %106 = add i8 %105, -64
  store i8 %106, ptr %98, align 1, !tbaa !33
  %107 = trunc i32 %59 to i8
  %108 = getelementptr inbounds i8, ptr %98, i64 1
  store i8 %107, ptr %108, align 1, !tbaa !33
  br label %109

109:                                              ; preds = %94, %103, %100, %91
  %110 = phi i1 [ false, %100 ], [ false, %91 ], [ true, %103 ], [ true, %94 ]
  %111 = phi i32 [ %102, %100 ], [ %93, %91 ], [ %31, %103 ], [ %31, %94 ]
  br i1 %110, label %356, label %423

112:                                              ; preds = %61
  %113 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %2, i64 0, i32 4
  %114 = load i16, ptr %113, align 8, !tbaa !71
  %115 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47
  %116 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 4
  %117 = load i16, ptr %116, align 8, !tbaa !72
  %118 = icmp eq i16 %114, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %2, i64 0, i32 5
  %121 = load i16, ptr %120, align 2, !tbaa !73
  %122 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 5
  %123 = load i16, ptr %122, align 2, !tbaa !74
  %124 = icmp eq i16 %121, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %2, i64 0, i32 6
  %127 = load i16, ptr %126, align 4, !tbaa !75
  %128 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 6
  %129 = load i16, ptr %128, align 4, !tbaa !76
  %130 = icmp eq i16 %127, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 48
  %133 = load i32, ptr %132, align 8, !tbaa !77
  %134 = icmp eq i32 %133, %3
  br i1 %134, label %202, label %135

135:                                              ; preds = %131, %125, %119, %112
  %136 = zext i16 %114 to i32
  %137 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %2, i64 0, i32 5
  %138 = load i16, ptr %137, align 2, !tbaa !73
  %139 = zext i16 %138 to i32
  %140 = mul i32 %136, %3
  %141 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 30
  %142 = load i32, ptr %141, align 4, !tbaa !78
  %143 = add i32 %142, 32
  %144 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 27, i32 2
  %145 = load i32, ptr %144, align 8, !tbaa !79
  %146 = mul i32 %140, %139
  %147 = udiv i32 %145, %146
  %148 = tail call i32 @llvm.usub.sat.i32(i32 %147, i32 %143)
  %149 = tail call i32 @llvm.umin.i32(i32 %148, i32 256)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %115, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !80
  %150 = shl nuw nsw i32 %149, 3
  %151 = udiv i32 %150, %139
  %152 = tail call i32 @llvm.umin.i32(i32 %151, i32 256)
  %153 = udiv i32 %152, %140
  br label %154

154:                                              ; preds = %154, %135
  %155 = phi i32 [ %153, %135 ], [ %157, %154 ]
  %156 = icmp ugt i32 %155, 255
  %157 = lshr i32 %155, 1
  br i1 %156, label %154, label %158, !llvm.loop !82

158:                                              ; preds = %154
  %159 = tail call i32 @llvm.umax.i32(i32 %155, i32 1)
  %160 = mul nuw nsw i32 %159, %136
  %161 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 2
  store i32 %160, ptr %161, align 4, !tbaa !83
  %162 = mul nsw i32 %160, %3
  %163 = add nsw i32 %162, 63
  %164 = ashr i32 %163, 3
  %165 = and i32 %164, -8
  %166 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 1
  store i32 %165, ptr %166, align 8, !tbaa !84
  %167 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %2, i64 0, i32 7
  %168 = load i16, ptr %167, align 2, !tbaa !85
  %169 = icmp eq i16 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %158
  %171 = mul i32 %165, %139
  %172 = udiv i32 %149, %171
  %173 = icmp ugt i32 %172, 4
  br i1 %173, label %177, label %174

174:                                              ; preds = %170
  %175 = icmp ugt i32 %171, %149
  %176 = select i1 %175, i32 1, i32 %172
  br label %177

177:                                              ; preds = %158, %170, %174
  %178 = phi i32 [ %176, %174 ], [ 1, %158 ], [ 4, %170 ]
  %179 = mul nuw nsw i32 %178, %139
  %180 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 2, i32 1
  store i32 %179, ptr %180, align 4, !tbaa !86
  %181 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 48
  store i32 %3, ptr %181, align 8, !tbaa !77
  %182 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 49
  %183 = load i32, ptr %182, align 4, !tbaa !87
  %184 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 50
  %185 = load i32, ptr %184, align 8, !tbaa !88
  %186 = icmp sgt i32 %183, %185
  br i1 %186, label %198, label %187

187:                                              ; preds = %177
  %188 = sext i32 %183 to i64
  %189 = add i32 %185, 1
  br label %190

190:                                              ; preds = %187, %190
  %191 = phi i64 [ %188, %187 ], [ %195, %190 ]
  %192 = getelementptr inbounds %struct.gx_clist_state_s, ptr %63, i64 %191, i32 10
  %193 = load i16, ptr %192, align 2, !tbaa !89
  %194 = and i16 %193, 32767
  store i16 %194, ptr %192, align 2, !tbaa !89
  %195 = add nsw i64 %191, 1
  %196 = trunc i64 %195 to i32
  %197 = icmp eq i32 %189, %196
  br i1 %197, label %198, label %190, !llvm.loop !90

198:                                              ; preds = %190, %177
  %199 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 50
  %200 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 35
  %201 = load i32, ptr %200, align 8, !tbaa !32
  store i32 %201, ptr %182, align 4, !tbaa !87
  store i32 -1, ptr %199, align 8, !tbaa !88
  br label %202

202:                                              ; preds = %198, %131
  %203 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 10
  %204 = load i16, ptr %203, align 2, !tbaa !89
  %205 = icmp sgt i16 %204, -1
  br i1 %205, label %206, label %248

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 4
  %208 = load i16, ptr %207, align 8, !tbaa !71
  %209 = zext i16 %208 to i32
  %210 = tail call i32 @cmd_size_w(i32 noundef %209) #7
  %211 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 5
  %212 = load i16, ptr %211, align 2, !tbaa !73
  %213 = zext i16 %212 to i32
  %214 = tail call i32 @cmd_size_w(i32 noundef %213) #7
  %215 = load i16, ptr %207, align 8, !tbaa !71
  %216 = zext i16 %215 to i32
  %217 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 2
  %218 = load i32, ptr %217, align 4, !tbaa !83
  %219 = icmp eq i32 %218, %216
  br i1 %219, label %223, label %220

220:                                              ; preds = %206
  %221 = sdiv i32 %218, %216
  %222 = tail call i32 @cmd_size_w(i32 noundef %221) #7
  br label %223

223:                                              ; preds = %220, %206
  %224 = phi i32 [ %222, %220 ], [ 0, %206 ]
  %225 = load i16, ptr %211, align 2, !tbaa !73
  %226 = zext i16 %225 to i32
  %227 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 2, i32 1
  %228 = load i32, ptr %227, align 4, !tbaa !86
  %229 = icmp eq i32 %228, %226
  br i1 %229, label %233, label %230

230:                                              ; preds = %223
  %231 = sdiv i32 %228, %226
  %232 = tail call i32 @cmd_size_w(i32 noundef %231) #7
  br label %233

233:                                              ; preds = %230, %223
  %234 = phi i32 [ %232, %230 ], [ 0, %223 ]
  %235 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 6
  %236 = load i16, ptr %235, align 4, !tbaa !75
  %237 = icmp eq i16 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %233
  %239 = zext i16 %236 to i32
  %240 = tail call i32 @cmd_size_w(i32 noundef %239) #7
  br label %241

241:                                              ; preds = %233, %238
  %242 = phi i32 [ %240, %238 ], [ 0, %233 ]
  %243 = add nsw i32 %210, 2
  %244 = add nsw i32 %243, %214
  %245 = add nsw i32 %244, %224
  %246 = add nsw i32 %245, %234
  %247 = add nsw i32 %246, %242
  br label %248

248:                                              ; preds = %241, %202
  %249 = phi i32 [ 0, %202 ], [ %247, %241 ]
  %250 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 27, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !91
  %252 = ptrtoint ptr %58 to i64
  %253 = ptrtoint ptr %251 to i64
  %254 = sub i64 %252, %253
  %255 = add i32 %249, 1
  %256 = tail call i32 @cmd_size_w(i32 noundef %59) #7
  %257 = add i32 %255, %256
  %258 = trunc i64 %254 to i32
  %259 = tail call i32 @cmd_size_w(i32 noundef %258) #7
  %260 = add i32 %257, %259
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  %261 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 30
  %262 = load i32, ptr %261, align 4, !tbaa !78
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i8, ptr %69, i64 %263
  %265 = load i16, ptr %113, align 8, !tbaa !71
  %266 = zext i16 %265 to i32
  %267 = mul nsw i32 %266, %3
  %268 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %2, i64 0, i32 5
  %269 = load i16, ptr %268, align 2, !tbaa !73
  %270 = zext i16 %269 to i32
  %271 = getelementptr inbounds %struct.tile_slot, ptr %58, i64 0, i32 4
  %272 = load i16, ptr %271, align 2, !tbaa !92
  %273 = zext i16 %272 to i32
  %274 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 2
  %275 = load i32, ptr %274, align 4, !tbaa !93
  %276 = icmp sgt i32 %275, %266
  %277 = select i1 %276, i32 768, i32 256
  %278 = call i32 @cmd_put_bits(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %264, i32 noundef %267, i32 noundef %270, i32 noundef %273, i32 noundef %260, i32 noundef %277, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %279 = icmp sgt i32 %278, -1
  br i1 %279, label %280, label %354

280:                                              ; preds = %248
  %281 = icmp eq i32 %249, 0
  br i1 %281, label %343, label %282

282:                                              ; preds = %280
  %283 = load ptr, ptr %5, align 8, !tbaa !52
  %284 = getelementptr inbounds i8, ptr %283, i64 2
  %285 = trunc i32 %3 to i8
  %286 = add i8 %285, -1
  store i8 1, ptr %283, align 1, !tbaa !33
  %287 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 4
  %288 = load i16, ptr %287, align 8, !tbaa !71
  %289 = zext i16 %288 to i32
  %290 = tail call ptr @cmd_put_w(i32 noundef %289, ptr noundef nonnull %284) #7
  %291 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 5
  %292 = load i16, ptr %291, align 2, !tbaa !73
  %293 = zext i16 %292 to i32
  %294 = tail call ptr @cmd_put_w(i32 noundef %293, ptr noundef %290) #7
  %295 = load i16, ptr %287, align 8, !tbaa !71
  %296 = zext i16 %295 to i32
  %297 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 2
  %298 = load i32, ptr %297, align 4, !tbaa !83
  %299 = icmp eq i32 %298, %296
  br i1 %299, label %304, label %300

300:                                              ; preds = %282
  %301 = sdiv i32 %298, %296
  %302 = tail call ptr @cmd_put_w(i32 noundef %301, ptr noundef %294) #7
  %303 = or i8 %286, 32
  br label %304

304:                                              ; preds = %300, %282
  %305 = phi ptr [ %302, %300 ], [ %294, %282 ]
  %306 = phi i8 [ %303, %300 ], [ %286, %282 ]
  %307 = load i16, ptr %291, align 2, !tbaa !73
  %308 = zext i16 %307 to i32
  %309 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 2, i32 1
  %310 = load i32, ptr %309, align 4, !tbaa !86
  %311 = icmp eq i32 %310, %308
  br i1 %311, label %316, label %312

312:                                              ; preds = %304
  %313 = sdiv i32 %310, %308
  %314 = tail call ptr @cmd_put_w(i32 noundef %313, ptr noundef %305) #7
  %315 = or i8 %306, 64
  br label %316

316:                                              ; preds = %312, %304
  %317 = phi ptr [ %314, %312 ], [ %305, %304 ]
  %318 = phi i8 [ %315, %312 ], [ %306, %304 ]
  %319 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47, i32 6
  %320 = load i16, ptr %319, align 4, !tbaa !75
  %321 = icmp eq i16 %320, 0
  br i1 %321, label %326, label %322

322:                                              ; preds = %316
  %323 = zext i16 %320 to i32
  %324 = tail call ptr @cmd_put_w(i32 noundef %323, ptr noundef %317) #7
  %325 = or i8 %318, -128
  br label %326

326:                                              ; preds = %316, %322
  %327 = phi i8 [ %325, %322 ], [ %318, %316 ]
  %328 = getelementptr inbounds i8, ptr %283, i64 1
  store i8 %327, ptr %328, align 1, !tbaa !33
  %329 = load ptr, ptr %5, align 8, !tbaa !52
  %330 = zext i32 %249 to i64
  %331 = getelementptr inbounds i8, ptr %329, i64 %330
  store ptr %331, ptr %5, align 8, !tbaa !52
  %332 = load i16, ptr %203, align 2, !tbaa !89
  %333 = or i16 %332, -32768
  store i16 %333, ptr %203, align 2, !tbaa !89
  %334 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 49
  %335 = load i32, ptr %334, align 4, !tbaa !87
  %336 = icmp sgt i32 %335, %68
  br i1 %336, label %337, label %338

337:                                              ; preds = %326
  store i32 %68, ptr %334, align 4, !tbaa !87
  br label %338

338:                                              ; preds = %337, %326
  %339 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 50
  %340 = load i32, ptr %339, align 8, !tbaa !88
  %341 = icmp slt i32 %340, %68
  br i1 %341, label %342, label %343

342:                                              ; preds = %338
  store i32 %68, ptr %339, align 8, !tbaa !88
  br label %343

343:                                              ; preds = %338, %342, %280
  %344 = load ptr, ptr %5, align 8, !tbaa !52
  store i8 3, ptr %344, align 1, !tbaa !33
  %345 = getelementptr inbounds i8, ptr %344, i64 1
  store ptr %345, ptr %5, align 8, !tbaa !52
  %346 = tail call ptr @cmd_put_w(i32 noundef %59, ptr noundef nonnull %345) #7
  store ptr %346, ptr %5, align 8, !tbaa !52
  %347 = tail call ptr @cmd_put_w(i32 noundef %258, ptr noundef %346) #7
  %348 = load i8, ptr %72, align 1, !tbaa !33
  %349 = trunc i32 %74 to i8
  %350 = or i8 %348, %349
  store i8 %350, ptr %72, align 1, !tbaa !33
  %351 = getelementptr inbounds %struct.tile_slot, ptr %58, i64 0, i32 10
  %352 = load i16, ptr %351, align 2, !tbaa !94
  %353 = add i16 %352, 1
  store i16 %353, ptr %351, align 2, !tbaa !94
  br label %354

354:                                              ; preds = %248, %343
  %355 = phi i32 [ %31, %343 ], [ %278, %248 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br i1 %279, label %356, label %423

356:                                              ; preds = %354, %109
  %357 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 1
  store i32 %59, ptr %357, align 8, !tbaa !68
  %358 = getelementptr inbounds %struct.tile_slot, ptr %58, i64 0, i32 5
  %359 = load i64, ptr %358, align 8, !tbaa !63
  %360 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 2
  store i64 %359, ptr %360, align 8, !tbaa !95
  br label %423

361:                                              ; preds = %57
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #7
  %362 = load i16, ptr %12, align 8, !tbaa !71
  %363 = load i16, ptr %14, align 8, !tbaa !72
  %364 = icmp eq i16 %362, %363
  br i1 %364, label %365, label %376

365:                                              ; preds = %361
  %366 = load i16, ptr %15, align 2, !tbaa !73
  %367 = load i16, ptr %16, align 2, !tbaa !74
  %368 = icmp eq i16 %366, %367
  br i1 %368, label %369, label %376

369:                                              ; preds = %365
  %370 = load i16, ptr %17, align 4, !tbaa !75
  %371 = load i16, ptr %18, align 4, !tbaa !76
  %372 = icmp eq i16 %370, %371
  br i1 %372, label %373, label %376

373:                                              ; preds = %369
  %374 = load i32, ptr %19, align 8, !tbaa !77
  %375 = icmp eq i32 %374, %3
  br i1 %375, label %415, label %376

376:                                              ; preds = %373, %369, %365, %361
  %377 = zext i16 %362 to i32
  %378 = load i16, ptr %20, align 2, !tbaa !73
  %379 = zext i16 %378 to i32
  %380 = mul i32 %377, %3
  %381 = load i32, ptr %21, align 4, !tbaa !78
  %382 = add i32 %381, 32
  %383 = load i32, ptr %22, align 8, !tbaa !79
  %384 = mul i32 %380, %379
  %385 = udiv i32 %383, %384
  %386 = tail call i32 @llvm.usub.sat.i32(i32 %385, i32 %382)
  %387 = tail call i32 @llvm.umin.i32(i32 %386, i32 256)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !80
  %388 = shl nuw nsw i32 %387, 3
  %389 = udiv i32 %388, %379
  %390 = tail call i32 @llvm.umin.i32(i32 %389, i32 256)
  %391 = udiv i32 %390, %380
  br label %392

392:                                              ; preds = %392, %376
  %393 = phi i32 [ %391, %376 ], [ %395, %392 ]
  %394 = icmp ugt i32 %393, 255
  %395 = lshr i32 %393, 1
  br i1 %394, label %392, label %396, !llvm.loop !82

396:                                              ; preds = %392
  %397 = tail call i32 @llvm.umax.i32(i32 %393, i32 1)
  %398 = mul nuw nsw i32 %397, %377
  store i32 %398, ptr %23, align 4, !tbaa !83
  %399 = mul nsw i32 %398, %3
  %400 = add nsw i32 %399, 63
  %401 = ashr i32 %400, 3
  %402 = and i32 %401, -8
  store i32 %402, ptr %24, align 8, !tbaa !84
  %403 = load i16, ptr %25, align 2, !tbaa !85
  %404 = icmp eq i16 %403, 0
  br i1 %404, label %405, label %412

405:                                              ; preds = %396
  %406 = mul i32 %402, %379
  %407 = udiv i32 %387, %406
  %408 = icmp ugt i32 %407, 4
  br i1 %408, label %412, label %409

409:                                              ; preds = %405
  %410 = icmp ugt i32 %406, %387
  %411 = select i1 %410, i32 1, i32 %407
  br label %412

412:                                              ; preds = %396, %405, %409
  %413 = phi i32 [ %411, %409 ], [ 1, %396 ], [ 4, %405 ]
  %414 = mul nuw nsw i32 %413, %379
  store i32 %414, ptr %26, align 8, !tbaa !86
  br label %417

415:                                              ; preds = %373
  store i64 %32, ptr %27, align 8, !tbaa !96
  %416 = load ptr, ptr %2, align 8, !tbaa !97
  store ptr %416, ptr %13, align 8, !tbaa !98
  br label %417

417:                                              ; preds = %415, %412
  %418 = phi ptr [ %7, %412 ], [ %13, %415 ]
  %419 = load i32, ptr %28, align 8, !tbaa !84
  %420 = call fastcc i32 @clist_add_tile(ptr noundef %0, ptr noundef nonnull %418, i32 noundef %419, i32 noundef %3), !range !99
  %421 = icmp sgt i32 %420, -1
  %422 = select i1 %421, i32 %31, i32 %420
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #7
  br i1 %421, label %29, label %423

423:                                              ; preds = %417, %356, %354, %109, %79
  %424 = phi i32 [ 0, %356 ], [ %111, %109 ], [ %355, %354 ], [ 0, %79 ], [ %422, %417 ]
  ret i32 %424
}

declare i32 @cmd_size_w(i32 noundef) local_unnamed_addr #3

declare ptr @cmd_put_w(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @clist_add_tile(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !84
  %8 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 2, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !86
  %10 = mul i32 %9, %7
  %11 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 30
  %12 = load i32, ptr %11, align 4, !tbaa !78
  %13 = add i32 %12, 32
  %14 = add i32 %13, %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %15 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 28
  %16 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 28, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !100
  %18 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 46
  %19 = load i32, ptr %18, align 4, !tbaa !101
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %92

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 27, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !79
  %24 = zext i32 %23 to i64
  %25 = call i32 @gx_bits_cache_alloc(ptr noundef nonnull %15, i64 noundef %24, ptr noundef nonnull %5) #7
  %26 = load ptr, ptr %5, align 8, !tbaa !52
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 28, i32 1
  store i32 0, ptr %29, align 8, !tbaa !102
  %30 = load i32, ptr %22, align 8, !tbaa !79
  %31 = zext i32 %30 to i64
  %32 = call i32 @gx_bits_cache_alloc(ptr noundef nonnull %15, i64 noundef %31, ptr noundef nonnull %5) #7
  br label %33

33:                                               ; preds = %28, %21
  %34 = load ptr, ptr %5, align 8, !tbaa !52
  %35 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 31
  %36 = load ptr, ptr %35, align 8, !tbaa !58
  %37 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 29
  %38 = load i32, ptr %37, align 8, !tbaa !59
  %39 = getelementptr inbounds %struct.tile_slot, ptr %34, i64 0, i32 9
  %40 = load i16, ptr %39, align 4, !tbaa !103
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 27
  call void @gx_bits_cache_free(ptr noundef nonnull %15, ptr noundef %34, ptr noundef nonnull %42) #7
  %43 = zext i16 %40 to i64
  %44 = getelementptr inbounds %struct.tile_hash, ptr %36, i64 %43
  store i64 0, ptr %44, align 8, !tbaa !60
  %45 = add nuw nsw i32 %41, 413
  %46 = and i32 %45, %38
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds %struct.tile_hash, ptr %36, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !60
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %92, label %51

51:                                               ; preds = %33
  %52 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 24
  br label %53

53:                                               ; preds = %85, %51
  %54 = phi i64 [ %49, %51 ], [ %90, %85 ]
  %55 = phi ptr [ %48, %51 ], [ %89, %85 ]
  %56 = phi i32 [ %46, %51 ], [ %87, %85 ]
  %57 = load ptr, ptr %52, align 8, !tbaa !62
  %58 = getelementptr inbounds i8, ptr %57, i64 %54
  %59 = getelementptr inbounds %struct.tile_slot, ptr %58, i64 0, i32 5
  %60 = load i64, ptr %59, align 8, !tbaa !63
  %61 = trunc i64 %60 to i32
  %62 = load ptr, ptr %35, align 8, !tbaa !58
  %63 = load i32, ptr %37, align 8, !tbaa !59
  %64 = and i32 %63, %61
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.tile_hash, ptr %62, i64 %65
  %67 = load i64, ptr %66, align 8, !tbaa !60
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %53
  %70 = getelementptr %struct.tile_slot, ptr %57, i64 0, i32 5
  br label %71

71:                                               ; preds = %77, %69
  %72 = phi i64 [ %82, %77 ], [ %67, %69 ]
  %73 = phi i32 [ %79, %77 ], [ %64, %69 ]
  %74 = getelementptr i8, ptr %70, i64 %72
  %75 = load i64, ptr %74, align 8, !tbaa !63
  %76 = icmp eq i64 %75, %60
  br i1 %76, label %85, label %77

77:                                               ; preds = %71
  %78 = add i32 %73, 413
  %79 = and i32 %78, %63
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.tile_hash, ptr %62, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !60
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %71, !llvm.loop !66

84:                                               ; preds = %77, %53
  call void @gx_bits_cache_free(ptr noundef nonnull %15, ptr noundef nonnull %58, ptr noundef nonnull %42) #7
  store i64 0, ptr %55, align 8, !tbaa !60
  br label %85

85:                                               ; preds = %71, %84
  %86 = add i32 %56, 413
  %87 = and i32 %86, %38
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.tile_hash, ptr %36, i64 %88
  %90 = load i64, ptr %89, align 8, !tbaa !60
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %53, !llvm.loop !104

92:                                               ; preds = %85, %33, %4
  %93 = zext i32 %14 to i64
  %94 = call i32 @gx_bits_cache_alloc(ptr noundef nonnull %15, i64 noundef %93, ptr noundef nonnull %5) #7
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %165

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 31
  %98 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 29
  %99 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 27
  %100 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 24
  %101 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 28, i32 1
  br label %102

102:                                              ; preds = %96, %162
  %103 = load ptr, ptr %5, align 8, !tbaa !52
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, ptr %101, align 8, !tbaa !102
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %240, label %108

108:                                              ; preds = %105
  store i32 0, ptr %101, align 8, !tbaa !102
  br label %162

109:                                              ; preds = %102
  %110 = load ptr, ptr %97, align 8, !tbaa !58
  %111 = load i32, ptr %98, align 8, !tbaa !59
  %112 = getelementptr inbounds %struct.tile_slot, ptr %103, i64 0, i32 9
  %113 = load i16, ptr %112, align 4, !tbaa !103
  %114 = zext i16 %113 to i32
  call void @gx_bits_cache_free(ptr noundef nonnull %15, ptr noundef nonnull %103, ptr noundef nonnull %99) #7
  %115 = zext i16 %113 to i64
  %116 = getelementptr inbounds %struct.tile_hash, ptr %110, i64 %115
  store i64 0, ptr %116, align 8, !tbaa !60
  %117 = add nuw nsw i32 %114, 413
  %118 = and i32 %117, %111
  %119 = zext nneg i32 %118 to i64
  %120 = getelementptr inbounds %struct.tile_hash, ptr %110, i64 %119
  %121 = load i64, ptr %120, align 8, !tbaa !60
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %162, label %123

123:                                              ; preds = %109, %155
  %124 = phi i64 [ %160, %155 ], [ %121, %109 ]
  %125 = phi ptr [ %159, %155 ], [ %120, %109 ]
  %126 = phi i32 [ %157, %155 ], [ %118, %109 ]
  %127 = load ptr, ptr %100, align 8, !tbaa !62
  %128 = getelementptr inbounds i8, ptr %127, i64 %124
  %129 = getelementptr inbounds %struct.tile_slot, ptr %128, i64 0, i32 5
  %130 = load i64, ptr %129, align 8, !tbaa !63
  %131 = trunc i64 %130 to i32
  %132 = load ptr, ptr %97, align 8, !tbaa !58
  %133 = load i32, ptr %98, align 8, !tbaa !59
  %134 = and i32 %133, %131
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.tile_hash, ptr %132, i64 %135
  %137 = load i64, ptr %136, align 8, !tbaa !60
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %154, label %139

139:                                              ; preds = %123
  %140 = getelementptr %struct.tile_slot, ptr %127, i64 0, i32 5
  br label %141

141:                                              ; preds = %147, %139
  %142 = phi i64 [ %152, %147 ], [ %137, %139 ]
  %143 = phi i32 [ %149, %147 ], [ %134, %139 ]
  %144 = getelementptr i8, ptr %140, i64 %142
  %145 = load i64, ptr %144, align 8, !tbaa !63
  %146 = icmp eq i64 %145, %130
  br i1 %146, label %155, label %147

147:                                              ; preds = %141
  %148 = add i32 %143, 413
  %149 = and i32 %148, %133
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.tile_hash, ptr %132, i64 %150
  %152 = load i64, ptr %151, align 8, !tbaa !60
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %141, !llvm.loop !66

154:                                              ; preds = %147, %123
  call void @gx_bits_cache_free(ptr noundef nonnull %15, ptr noundef nonnull %128, ptr noundef nonnull %99) #7
  store i64 0, ptr %125, align 8, !tbaa !60
  br label %155

155:                                              ; preds = %141, %154
  %156 = add i32 %126, 413
  %157 = and i32 %156, %111
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.tile_hash, ptr %110, i64 %158
  %160 = load i64, ptr %159, align 8, !tbaa !60
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %123, !llvm.loop !104

162:                                              ; preds = %155, %109, %108
  %163 = call i32 @gx_bits_cache_alloc(ptr noundef nonnull %15, i64 noundef %93, ptr noundef nonnull %5) #7
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %102, label %165, !llvm.loop !105

165:                                              ; preds = %162, %92
  %166 = load ptr, ptr %5, align 8, !tbaa !52
  %167 = getelementptr inbounds %struct.gx_cached_bits_head_s, ptr %166, i64 0, i32 1
  store i32 %3, ptr %167, align 4, !tbaa !106
  %168 = trunc i32 %7 to i16
  %169 = getelementptr inbounds %struct.tile_slot, ptr %166, i64 0, i32 4
  store i16 %168, ptr %169, align 2, !tbaa !92
  %170 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 4
  %171 = load i16, ptr %170, align 8, !tbaa !71
  %172 = getelementptr inbounds %struct.tile_slot, ptr %166, i64 0, i32 1
  store i16 %171, ptr %172, align 8, !tbaa !107
  %173 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 5
  %174 = load i16, ptr %173, align 2, !tbaa !73
  %175 = getelementptr inbounds %struct.tile_slot, ptr %166, i64 0, i32 2
  store i16 %174, ptr %175, align 2, !tbaa !108
  %176 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 6
  %177 = load i16, ptr %176, align 4, !tbaa !75
  %178 = getelementptr inbounds %struct.tile_slot, ptr %166, i64 0, i32 8
  store i16 %177, ptr %178, align 2, !tbaa !109
  %179 = getelementptr inbounds %struct.tile_slot, ptr %166, i64 0, i32 3
  store i16 %177, ptr %179, align 4, !tbaa !110
  %180 = getelementptr inbounds %struct.tile_slot, ptr %166, i64 0, i32 7
  store i8 1, ptr %180, align 1, !tbaa !111
  %181 = getelementptr inbounds %struct.tile_slot, ptr %166, i64 0, i32 6
  store i8 1, ptr %181, align 8, !tbaa !112
  %182 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 3
  %183 = load i64, ptr %182, align 8, !tbaa !57
  %184 = getelementptr inbounds %struct.tile_slot, ptr %166, i64 0, i32 5
  store i64 %183, ptr %184, align 8, !tbaa !63
  %185 = getelementptr inbounds %struct.tile_slot, ptr %166, i64 1
  %186 = load i32, ptr %11, align 4, !tbaa !78
  %187 = zext i32 %186 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %185, i8 0, i64 %187, i1 false)
  %188 = load i32, ptr %11, align 4, !tbaa !78
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i8, ptr %185, i64 %189
  %191 = load ptr, ptr %1, align 8, !tbaa !97
  %192 = load i16, ptr %170, align 8, !tbaa !71
  %193 = zext i16 %192 to i32
  %194 = mul nsw i32 %193, %3
  %195 = add nsw i32 %194, 7
  %196 = ashr i32 %195, 3
  %197 = load i16, ptr %173, align 2, !tbaa !73
  %198 = zext i16 %197 to i32
  call void @bytes_copy_rectangle(ptr noundef nonnull %190, i32 noundef %7, ptr noundef %191, i32 noundef %2, i32 noundef %196, i32 noundef %198) #7
  %199 = load i64, ptr %182, align 8, !tbaa !57
  %200 = trunc i64 %199 to i32
  %201 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 31
  %202 = load ptr, ptr %201, align 8, !tbaa !58
  %203 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 29
  %204 = load i32, ptr %203, align 8, !tbaa !59
  %205 = and i32 %204, %200
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.tile_hash, ptr %202, i64 %206
  %208 = load i64, ptr %207, align 8, !tbaa !60
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %227, label %210

210:                                              ; preds = %165
  %211 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 24
  %212 = load ptr, ptr %211, align 8, !tbaa !62
  %213 = getelementptr %struct.tile_slot, ptr %212, i64 0, i32 5
  br label %214

214:                                              ; preds = %220, %210
  %215 = phi i64 [ %208, %210 ], [ %225, %220 ]
  %216 = phi i32 [ %205, %210 ], [ %222, %220 ]
  %217 = getelementptr i8, ptr %213, i64 %215
  %218 = load i64, ptr %217, align 8, !tbaa !63
  %219 = icmp eq i64 %218, %199
  br i1 %219, label %227, label %220

220:                                              ; preds = %214
  %221 = add i32 %216, 413
  %222 = and i32 %221, %204
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.tile_hash, ptr %202, i64 %223
  %225 = load i64, ptr %224, align 8, !tbaa !60
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %214, !llvm.loop !66

227:                                              ; preds = %220, %214, %165
  %228 = phi i32 [ %205, %165 ], [ %216, %214 ], [ %222, %220 ]
  %229 = trunc i32 %228 to i16
  %230 = load ptr, ptr %5, align 8, !tbaa !52
  %231 = getelementptr inbounds %struct.tile_slot, ptr %230, i64 0, i32 9
  store i16 %229, ptr %231, align 4, !tbaa !103
  %232 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 24
  %233 = load ptr, ptr %232, align 8, !tbaa !62
  %234 = ptrtoint ptr %230 to i64
  %235 = ptrtoint ptr %233 to i64
  %236 = sub i64 %234, %235
  %237 = zext i32 %228 to i64
  %238 = getelementptr inbounds %struct.tile_hash, ptr %202, i64 %237
  store i64 %236, ptr %238, align 8, !tbaa !60
  %239 = getelementptr inbounds %struct.tile_slot, ptr %230, i64 0, i32 10
  store i16 0, ptr %239, align 2, !tbaa !94
  br label %240

240:                                              ; preds = %105, %227
  %241 = phi i32 [ 0, %227 ], [ -13, %105 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret i32 %241
}

; Function Attrs: nounwind uwtable
define dso_local i32 @clist_change_bits(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %2, i64 0, i32 3
  %8 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 31
  %9 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 29
  %10 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 24
  %11 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %2, i64 0, i32 1
  br label %12

12:                                               ; preds = %167, %4
  %13 = phi ptr [ undef, %4 ], [ %40, %167 ]
  %14 = load i64, ptr %7, align 8, !tbaa !57
  %15 = trunc i64 %14 to i32
  %16 = load ptr, ptr %8, align 8, !tbaa !58
  %17 = load i32, ptr %9, align 8, !tbaa !59
  %18 = and i32 %17, %15
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.tile_hash, ptr %16, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !60
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %12
  %24 = load ptr, ptr %10, align 8, !tbaa !62
  br label %25

25:                                               ; preds = %32, %23
  %26 = phi i64 [ %21, %23 ], [ %37, %32 ]
  %27 = phi i32 [ %18, %23 ], [ %34, %32 ]
  %28 = getelementptr inbounds i8, ptr %24, i64 %26
  %29 = getelementptr inbounds %struct.tile_slot, ptr %28, i64 0, i32 5
  %30 = load i64, ptr %29, align 8, !tbaa !63
  %31 = icmp ne i64 %30, %14
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = add i32 %27, 413
  %34 = and i32 %33, %17
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.tile_hash, ptr %16, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !60
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %25, !llvm.loop !66

39:                                               ; preds = %32, %25, %12
  %40 = phi ptr [ %13, %12 ], [ %28, %25 ], [ %13, %32 ]
  %41 = phi i32 [ %18, %12 ], [ %27, %25 ], [ %34, %32 ]
  %42 = phi i1 [ true, %12 ], [ %31, %25 ], [ %31, %32 ]
  br i1 %42, label %167, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %45 = load ptr, ptr %44, align 8, !tbaa !67
  %46 = ptrtoint ptr %1 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 112
  %50 = trunc i64 %49 to i8
  %51 = getelementptr inbounds %struct.tile_slot, ptr %40, i64 1
  %52 = lshr i64 %49, 3
  %53 = and i64 %52, 536870911
  %54 = getelementptr inbounds i8, ptr %51, i64 %53
  %55 = and i8 %50, 7
  %56 = shl nuw i8 1, %55
  %57 = load i8, ptr %54, align 1, !tbaa !33
  %58 = and i8 %56, %57
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %93, label %60

60:                                               ; preds = %43
  %61 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !68
  %63 = icmp eq i32 %62, %41
  br i1 %63, label %171, label %64

64:                                               ; preds = %60
  %65 = sub i32 %41, %62
  %66 = add i32 %65, 8
  %67 = icmp ult i32 %66, 16
  %68 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  br i1 %67, label %69, label %78

69:                                               ; preds = %64
  %70 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %68, i32 noundef 1) #7
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %74 = load i32, ptr %73, align 4, !tbaa !9
  br label %90

75:                                               ; preds = %69
  %76 = trunc i32 %65 to i8
  %77 = add i8 %76, -72
  store i8 %77, ptr %70, align 1, !tbaa !33
  br label %90

78:                                               ; preds = %64
  %79 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %68, i32 noundef 2) #7
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %83 = load i32, ptr %82, align 4, !tbaa !9
  br label %90

84:                                               ; preds = %78
  %85 = lshr i32 %41, 8
  %86 = trunc i32 %85 to i8
  %87 = add i8 %86, -64
  store i8 %87, ptr %79, align 1, !tbaa !33
  %88 = trunc i32 %41 to i8
  %89 = getelementptr inbounds i8, ptr %79, i64 1
  store i8 %88, ptr %89, align 1, !tbaa !33
  br label %90

90:                                               ; preds = %75, %84, %81, %72
  %91 = phi i1 [ false, %81 ], [ false, %72 ], [ true, %84 ], [ true, %75 ]
  %92 = phi i32 [ %83, %81 ], [ %74, %72 ], [ undef, %84 ], [ undef, %75 ]
  br i1 %91, label %161, label %171

93:                                               ; preds = %43
  %94 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 27, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !91
  %96 = ptrtoint ptr %40 to i64
  %97 = ptrtoint ptr %95 to i64
  %98 = sub i64 %96, %97
  %99 = getelementptr inbounds %struct.tile_slot, ptr %40, i64 0, i32 1
  %100 = load i16, ptr %99, align 8, !tbaa !107
  %101 = zext i16 %100 to i32
  %102 = tail call i32 @cmd_size_w(i32 noundef %101) #7
  %103 = add nsw i32 %102, 2
  %104 = getelementptr inbounds %struct.tile_slot, ptr %40, i64 0, i32 2
  %105 = load i16, ptr %104, align 2, !tbaa !108
  %106 = zext i16 %105 to i32
  %107 = tail call i32 @cmd_size_w(i32 noundef %106) #7
  %108 = add nsw i32 %103, %107
  %109 = tail call i32 @cmd_size_w(i32 noundef %41) #7
  %110 = add nsw i32 %108, %109
  %111 = trunc i64 %98 to i32
  %112 = tail call i32 @cmd_size_w(i32 noundef %111) #7
  %113 = add nsw i32 %110, %112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  %114 = getelementptr inbounds %struct.tile_slot, ptr %40, i64 0, i32 10
  %115 = load i16, ptr %114, align 2, !tbaa !94
  %116 = icmp eq i16 %115, -1
  %117 = select i1 %116, ptr null, ptr %1
  %118 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 30
  %119 = load i32, ptr %118, align 4, !tbaa !78
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, ptr %51, i64 %120
  %122 = load i16, ptr %99, align 8, !tbaa !107
  %123 = zext i16 %122 to i32
  %124 = mul nsw i32 %123, %3
  %125 = load i16, ptr %104, align 2, !tbaa !108
  %126 = zext i16 %125 to i32
  %127 = getelementptr inbounds %struct.tile_slot, ptr %40, i64 0, i32 4
  %128 = load i16, ptr %127, align 2, !tbaa !92
  %129 = zext i16 %128 to i32
  %130 = call i32 @cmd_put_bits(ptr noundef %0, ptr noundef %117, ptr noundef nonnull %121, i32 noundef %124, i32 noundef %126, i32 noundef %129, i32 noundef %113, i32 noundef 260, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %131 = icmp sgt i32 %130, -1
  br i1 %131, label %132, label %166

132:                                              ; preds = %93
  %133 = load ptr, ptr %5, align 8, !tbaa !52
  store i8 4, ptr %133, align 1, !tbaa !33
  %134 = shl i32 %3, 2
  %135 = add nsw i32 %130, %134
  %136 = trunc i32 %135 to i8
  %137 = getelementptr inbounds i8, ptr %133, i64 1
  store i8 %136, ptr %137, align 1, !tbaa !33
  %138 = getelementptr inbounds i8, ptr %133, i64 2
  store ptr %138, ptr %5, align 8, !tbaa !52
  %139 = load i16, ptr %99, align 8, !tbaa !107
  %140 = zext i16 %139 to i32
  %141 = tail call ptr @cmd_put_w(i32 noundef %140, ptr noundef nonnull %138) #7
  store ptr %141, ptr %5, align 8, !tbaa !52
  %142 = load i16, ptr %104, align 2, !tbaa !108
  %143 = zext i16 %142 to i32
  %144 = tail call ptr @cmd_put_w(i32 noundef %143, ptr noundef %141) #7
  store ptr %144, ptr %5, align 8, !tbaa !52
  %145 = tail call ptr @cmd_put_w(i32 noundef %41, ptr noundef %144) #7
  store ptr %145, ptr %5, align 8, !tbaa !52
  %146 = tail call ptr @cmd_put_w(i32 noundef %111, ptr noundef %145) #7
  %147 = icmp eq ptr %117, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %132
  %149 = load i32, ptr %118, align 4, !tbaa !78
  %150 = zext i32 %149 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %51, i8 -1, i64 %150, i1 false)
  %151 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 35
  %152 = load i32, ptr %151, align 8, !tbaa !32
  %153 = trunc i32 %152 to i16
  br label %159

154:                                              ; preds = %132
  %155 = load i8, ptr %54, align 1, !tbaa !33
  %156 = or i8 %155, %56
  store i8 %156, ptr %54, align 1, !tbaa !33
  %157 = load i16, ptr %114, align 2, !tbaa !94
  %158 = add i16 %157, 1
  br label %159

159:                                              ; preds = %148, %154
  %160 = phi i16 [ %158, %154 ], [ %153, %148 ]
  store i16 %160, ptr %114, align 2, !tbaa !94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %161

161:                                              ; preds = %159, %90
  %162 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 1
  store i32 %41, ptr %162, align 8, !tbaa !68
  %163 = getelementptr inbounds %struct.tile_slot, ptr %40, i64 0, i32 5
  %164 = load i64, ptr %163, align 8, !tbaa !63
  %165 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 2
  store i64 %164, ptr %165, align 8, !tbaa !95
  br label %171

166:                                              ; preds = %93
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %171

167:                                              ; preds = %39
  %168 = load i32, ptr %11, align 8, !tbaa !84
  %169 = tail call fastcc i32 @clist_add_tile(ptr noundef %0, ptr noundef %2, i32 noundef %168, i32 noundef %3), !range !99
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %12

171:                                              ; preds = %167, %161, %90, %60, %166
  %172 = phi i32 [ 0, %161 ], [ %92, %90 ], [ 0, %60 ], [ %130, %166 ], [ %169, %167 ]
  ret i32 %172
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i32 @gx_bits_cache_alloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @gx_bits_cache_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 788}
!10 = !{!"gx_device_clist_writer_s", !6, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !6, i64 40, !6, i64 44, !12, i64 48, !6, i64 64, !6, i64 68, !7, i64 72, !7, i64 80, !6, i64 96, !7, i64 100, !7, i64 108, !7, i64 116, !7, i64 124, !14, i64 144, !14, i64 152, !6, i64 160, !15, i64 168, !16, i64 192, !11, i64 488, !11, i64 496, !11, i64 504, !6, i64 512, !17, i64 520, !18, i64 536, !19, i64 560, !6, i64 584, !6, i64 588, !11, i64 592, !6, i64 600, !6, i64 604, !20, i64 608, !6, i64 784, !6, i64 788, !11, i64 792, !11, i64 800, !11, i64 808, !11, i64 816, !11, i64 824, !21, i64 832, !6, i64 848, !6, i64 852, !6, i64 856, !6, i64 860, !22, i64 864, !6, i64 904, !6, i64 908, !6, i64 912, !24, i64 920, !7, i64 1240, !11, i64 1288, !14, i64 1296, !7, i64 1304, !30, i64 1312, !7, i64 1360, !14, i64 1392, !14, i64 1400, !14, i64 1408, !6, i64 1416}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14}
!13 = !{!"short", !7, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"gx_page_device_procs_s", !11, i64 0, !11, i64 8, !11, i64 16}
!16 = !{!"gx_device_procs_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288}
!17 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !14, i64 8}
!18 = !{!"gx_bits_cache_chunk_s", !11, i64 0, !11, i64 8, !6, i64 16, !6, i64 20}
!19 = !{!"gx_bits_cache_s", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!20 = !{!"gx_band_page_info_s", !7, i64 0, !11, i64 64, !7, i64 72, !11, i64 136, !6, i64 144, !14, i64 152, !17, i64 160}
!21 = !{!"cmd_list_s", !11, i64 0, !11, i64 8}
!22 = !{!"gx_strip_bitmap_s", !11, i64 0, !6, i64 8, !23, i64 12, !14, i64 24, !13, i64 32, !13, i64 34, !13, i64 36, !13, i64 38}
!23 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!24 = !{!"gs_imager_state_s", !11, i64 0, !25, i64 8, !28, i64 80, !6, i64 128, !13, i64 132, !6, i64 136, !26, i64 140, !29, i64 144, !6, i64 160, !6, i64 164, !11, i64 168, !7, i64 176, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !7, i64 232, !7, i64 264, !11, i64 296, !11, i64 304, !11, i64 312}
!25 = !{!"gx_line_params_s", !26, i64 0, !6, i64 4, !6, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !26, i64 24, !27, i64 32}
!26 = !{!"float", !7, i64 0}
!27 = !{!"gx_dash_params_s", !11, i64 0, !6, i64 8, !26, i64 12, !6, i64 16, !26, i64 20, !6, i64 24, !6, i64 28, !26, i64 32}
!28 = !{!"gs_matrix_fixed_s", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20, !14, i64 24, !14, i64 32, !6, i64 40}
!29 = !{!"gs_fixed_point_s", !14, i64 0, !14, i64 8}
!30 = !{!"gs_indexed_params_s", !31, i64 0, !6, i64 16, !7, i64 24, !6, i64 40}
!31 = !{!"gs_base_color_space_s", !11, i64 0, !7, i64 8}
!32 = !{!10, !6, i64 784}
!33 = !{!7, !7, i64 0}
!34 = !{!35, !11, i64 8}
!35 = !{!"stream_template_s", !11, i64 0, !11, i64 8, !11, i64 16, !6, i64 24, !6, i64 28, !11, i64 32, !11, i64 40, !11, i64 48}
!36 = !{!37, !11, i64 8}
!37 = !{!"stream_cursor_write_s", !11, i64 0, !11, i64 8, !11, i64 16}
!38 = !{!37, !11, i64 16}
!39 = !{!40, !11, i64 0}
!40 = !{!"stream_cursor_read_s", !11, i64 0, !11, i64 8, !11, i64 16}
!41 = !{!40, !11, i64 8}
!42 = !{!43, !11, i64 0}
!43 = !{!"stream_state_s", !11, i64 0, !11, i64 8, !11, i64 16}
!44 = !{!35, !11, i64 16}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!35, !11, i64 32}
!48 = !{!21, !11, i64 8}
!49 = !{!50, !6, i64 8}
!50 = !{!"cmd_prefix_s", !11, i64 0, !6, i64 8}
!51 = !{!10, !11, i64 808}
!52 = !{!11, !11, i64 0}
!53 = !{!14, !14, i64 0}
!54 = !{!55, !14, i64 32}
!55 = !{!"gx_transfer_map_s", !56, i64 0, !11, i64 24, !14, i64 32, !7, i64 40}
!56 = !{!"rc_header_s", !14, i64 0, !11, i64 8, !11, i64 16}
!57 = !{!22, !14, i64 24}
!58 = !{!10, !11, i64 592}
!59 = !{!10, !6, i64 584}
!60 = !{!61, !14, i64 0}
!61 = !{!"", !14, i64 0}
!62 = !{!10, !11, i64 504}
!63 = !{!64, !14, i64 16}
!64 = !{!"", !65, i64 0, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14, !14, i64 16, !7, i64 24, !7, i64 25, !13, i64 26, !13, i64 28, !13, i64 30}
!65 = !{!"gx_cached_bits_head_s", !6, i64 0, !6, i64 4}
!66 = distinct !{!66, !46}
!67 = !{!10, !11, i64 792}
!68 = !{!69, !6, i64 16}
!69 = !{!"gx_clist_state_s", !7, i64 0, !6, i64 16, !14, i64 24, !23, i64 32, !7, i64 40, !70, i64 56, !6, i64 72, !13, i64 76, !13, i64 78, !13, i64 80, !13, i64 82, !21, i64 88, !14, i64 104}
!70 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!71 = !{!22, !13, i64 32}
!72 = !{!10, !13, i64 896}
!73 = !{!22, !13, i64 34}
!74 = !{!10, !13, i64 898}
!75 = !{!22, !13, i64 36}
!76 = !{!10, !13, i64 900}
!77 = !{!10, !6, i64 904}
!78 = !{!10, !6, i64 588}
!79 = !{!10, !6, i64 552}
!80 = !{i64 0, i64 8, !52, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 24, i64 8, !53, i64 32, i64 2, !81, i64 34, i64 2, !81, i64 36, i64 2, !81, i64 38, i64 2, !81}
!81 = !{!13, !13, i64 0}
!82 = distinct !{!82, !46}
!83 = !{!22, !6, i64 12}
!84 = !{!22, !6, i64 8}
!85 = !{!22, !13, i64 38}
!86 = !{!22, !6, i64 16}
!87 = !{!10, !6, i64 908}
!88 = !{!10, !6, i64 912}
!89 = !{!69, !13, i64 82}
!90 = distinct !{!90, !46}
!91 = !{!10, !11, i64 544}
!92 = !{!64, !13, i64 14}
!93 = !{!10, !6, i64 876}
!94 = !{!64, !13, i64 30}
!95 = !{!69, !14, i64 24}
!96 = !{!10, !14, i64 888}
!97 = !{!22, !11, i64 0}
!98 = !{!10, !11, i64 864}
!99 = !{i32 -13, i32 1}
!100 = !{!10, !6, i64 576}
!101 = !{!10, !6, i64 860}
!102 = !{!10, !6, i64 568}
!103 = !{!64, !13, i64 28}
!104 = distinct !{!104, !46}
!105 = distinct !{!105, !46}
!106 = !{!64, !6, i64 4}
!107 = !{!64, !13, i64 8}
!108 = !{!64, !13, i64 10}
!109 = !{!64, !13, i64 26}
!110 = !{!64, !13, i64 12}
!111 = !{!64, !7, i64 25}
!112 = !{!64, !7, i64 24}
