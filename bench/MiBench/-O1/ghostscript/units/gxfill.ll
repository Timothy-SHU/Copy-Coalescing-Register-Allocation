; ModuleID = 'gxfill.c'
source_filename = "gxfill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gx_device_clip_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gx_clip_list_s, ptr, %struct.gs_int_point_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, ptr, ptr, i32, i32 }
%struct.gx_clip_rect_s = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_point_s = type { double, double }
%struct.line_list_s = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.active_line_s, [20 x %struct.active_line_s] }
%struct.active_line_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i64, i64, i64, ptr, i32, i32, %struct.curve_cursor_s, ptr, ptr, ptr }
%struct.curve_cursor_s = type { i32, %struct.gs_fixed_point_s, ptr, i64, i64, i64, double, double, double, i32, i32, %struct.ccc_ }
%struct.ccc_ = type { i64, i64, i64, i64 }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_fill_params_s = type { i32, %struct.gs_fixed_point_s, float, i32 }
%struct.gx_clip_path_s = type { %struct.gx_path_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_list_s, i8, i8, i64 }
%struct.subpath_s = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, ptr, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, ptr }
%struct.segment_s = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }

@.str = private unnamed_addr constant [12 x i8] c"active line\00", align 1
@st_active_line = internal constant %struct.gs_memory_struct_type_s { i32 232, ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"active_line\00", align 1
@gx_dc_procs_pure = external constant %struct.gx_device_color_procs_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_adjust_if_empty(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !5
  %5 = load i64, ptr %0, align 8, !tbaa !11
  %6 = sub nsw i64 %4, %5
  %7 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !13
  %11 = sub nsw i64 %8, %10
  %12 = icmp slt i64 %6, 2048
  %13 = icmp sgt i64 %11, 8191
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = sub nsw i64 4097, %6
  %17 = ashr i64 %16, 1
  store i64 %17, ptr %1, align 8, !tbaa !14
  br label %26

18:                                               ; preds = %2
  %19 = icmp slt i64 %11, 2048
  %20 = icmp sgt i64 %6, 8191
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = sub nsw i64 4097, %11
  %24 = ashr i64 %23, 1
  %25 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %1, i64 0, i32 1
  store i64 %24, ptr %25, align 8, !tbaa !15
  br label %26

26:                                               ; preds = %18, %22, %15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_fill_path(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 {
  %7 = alloca %struct.gs_fixed_rect_s, align 8
  %8 = alloca %struct.gs_fixed_rect_s, align 8
  %9 = alloca %struct.gx_device_clip_s, align 8
  %10 = alloca %struct.gx_path_s, align 8
  %11 = alloca %struct.line_list_s, align 8
  %12 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #8
  %14 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4928, ptr nonnull %11) #8
  %16 = getelementptr inbounds %struct.gx_fill_params_s, ptr %3, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa.struct !30
  %18 = getelementptr inbounds %struct.gx_fill_params_s, ptr %3, i64 0, i32 1, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa.struct !32
  %20 = call i32 @gx_path_bbox(ptr noundef %2, ptr noundef nonnull %7) #8
  %21 = getelementptr inbounds %struct.gx_fill_params_s, ptr %3, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !33
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %7, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !5
  %27 = load i64, ptr %7, align 8, !tbaa !11
  %28 = sub nsw i64 %26, %27
  %29 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %7, i64 0, i32 1, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !12
  %31 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %7, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !13
  %33 = sub nsw i64 %30, %32
  %34 = icmp slt i64 %28, 2048
  %35 = icmp sgt i64 %33, 8191
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = sub nsw i64 4097, %28
  %39 = ashr i64 %38, 1
  br label %47

40:                                               ; preds = %24
  %41 = icmp slt i64 %33, 2048
  %42 = icmp sgt i64 %28, 8191
  %43 = and i1 %42, %41
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = sub nsw i64 4097, %33
  %46 = ashr i64 %45, 1
  br label %47

47:                                               ; preds = %44, %40, %37, %6
  %48 = phi i64 [ %19, %6 ], [ %19, %37 ], [ %46, %44 ], [ %19, %40 ]
  %49 = phi i64 [ %17, %6 ], [ %39, %37 ], [ %17, %44 ], [ %17, %40 ]
  %50 = icmp eq ptr %5, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = call i32 @gx_cpath_inner_box(ptr noundef nonnull %5, ptr noundef nonnull %8) #8
  br label %56

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 36
  %55 = load ptr, ptr %54, align 8, !tbaa !35
  call void %55(ptr noundef %0, ptr noundef nonnull %8) #8
  br label %56

56:                                               ; preds = %53, %51
  %57 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %7, i64 0, i32 1
  %58 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %7, i64 0, i32 1, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !12
  %60 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %8, i64 0, i32 1
  %61 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %8, i64 0, i32 1, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !12
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %78, label %64

64:                                               ; preds = %56
  %65 = load i64, ptr %57, align 8, !tbaa !5
  %66 = load i64, ptr %60, align 8, !tbaa !5
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %78, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %7, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !13
  %71 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !13
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  %75 = load i64, ptr %7, align 8, !tbaa !11
  %76 = load i64, ptr %8, align 8, !tbaa !11
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %124

78:                                               ; preds = %74, %68, %64, %56
  br i1 %50, label %81, label %79

79:                                               ; preds = %78
  %80 = call i32 @gx_cpath_outer_box(ptr noundef nonnull %5, ptr noundef nonnull %8) #8
  br label %81

81:                                               ; preds = %78, %79
  %82 = load i64, ptr %8, align 8, !tbaa !11
  %83 = load i64, ptr %7, align 8, !tbaa !11
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i64 %82, ptr %7, align 8, !tbaa !11
  br label %86

86:                                               ; preds = %85, %81
  %87 = load i64, ptr %60, align 8, !tbaa !5
  %88 = load i64, ptr %57, align 8, !tbaa !5
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i64 %87, ptr %57, align 8, !tbaa !5
  br label %91

91:                                               ; preds = %90, %86
  %92 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !13
  %94 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %7, i64 0, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !13
  %96 = icmp sgt i64 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i64 %93, ptr %94, align 8, !tbaa !13
  br label %98

98:                                               ; preds = %97, %91
  %99 = load i64, ptr %61, align 8, !tbaa !12
  %100 = load i64, ptr %58, align 8, !tbaa !12
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i64 %99, ptr %58, align 8, !tbaa !12
  br label %103

103:                                              ; preds = %102, %98
  %104 = load i64, ptr %7, align 8, !tbaa !11
  %105 = sub nsw i64 %104, %49
  %106 = load i64, ptr %57, align 8, !tbaa !5
  %107 = add nsw i64 %106, %49
  %108 = icmp slt i64 %105, %107
  br i1 %108, label %109, label %429

109:                                              ; preds = %103
  %110 = load i64, ptr %94, align 8, !tbaa !13
  %111 = sub nsw i64 %110, %48
  %112 = load i64, ptr %58, align 8, !tbaa !12
  %113 = add nsw i64 %112, %48
  %114 = icmp slt i64 %111, %113
  br i1 %114, label %115, label %429

115:                                              ; preds = %109
  br i1 %50, label %124, label %116

116:                                              ; preds = %115
  %117 = getelementptr inbounds %struct.gx_clip_path_s, ptr %5, i64 0, i32 4
  call void @gx_make_clip_translate_device(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %117, i32 noundef 0, i32 noundef 0) #8
  %118 = getelementptr inbounds %struct.gx_device_clip_s, ptr %9, i64 0, i32 22
  store ptr %0, ptr %118, align 8, !tbaa !36
  %119 = load i32, ptr %14, align 4, !tbaa !25
  %120 = getelementptr inbounds %struct.gx_device_clip_s, ptr %9, i64 0, i32 6
  store i32 %119, ptr %120, align 4, !tbaa !41
  %121 = getelementptr inbounds %struct.gx_device_s, ptr %9, i64 0, i32 21
  %122 = load ptr, ptr %121, align 8, !tbaa !42
  %123 = call i32 %122(ptr noundef nonnull %9) #8
  br label %124

124:                                              ; preds = %115, %116, %74
  %125 = phi ptr [ %0, %74 ], [ %9, %116 ], [ %0, %115 ]
  %126 = icmp eq i64 %49, 2048
  %127 = select i1 %126, i64 2047, i64 %49
  %128 = select i1 %126, i64 2049, i64 %49
  %129 = icmp eq i64 %48, 2048
  %130 = select i1 %129, i64 2047, i64 %48
  %131 = select i1 %129, i64 2049, i64 %48
  %132 = load ptr, ptr %2, align 8, !tbaa !43
  store ptr %132, ptr %11, align 8, !tbaa !47
  %133 = getelementptr inbounds %struct.line_list_s, ptr %11, i64 0, i32 1
  store ptr null, ptr %133, align 8, !tbaa !52
  %134 = getelementptr inbounds %struct.line_list_s, ptr %11, i64 0, i32 8
  %135 = getelementptr inbounds %struct.line_list_s, ptr %11, i64 0, i32 2
  store ptr %134, ptr %135, align 8, !tbaa !53
  %136 = getelementptr inbounds %struct.line_list_s, ptr %11, i64 1
  %137 = getelementptr inbounds %struct.line_list_s, ptr %11, i64 0, i32 3
  store ptr %136, ptr %137, align 8, !tbaa !54
  %138 = getelementptr inbounds %struct.line_list_s, ptr %11, i64 0, i32 4
  store i32 0, ptr %138, align 8, !tbaa !55
  %139 = getelementptr inbounds %struct.line_list_s, ptr %11, i64 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %139, i8 0, i64 16, i1 false)
  %140 = icmp eq i64 %48, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %124
  %142 = getelementptr inbounds %struct.gx_path_s, ptr %2, i64 0, i32 6
  %143 = load i32, ptr %142, align 4, !tbaa !56
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.gx_fill_params_s, ptr %3, i64 0, i32 2
  %147 = load float, ptr %146, align 8, !tbaa !57
  %148 = fcmp ult float %147, 1.000000e+00
  br i1 %148, label %155, label %149

149:                                              ; preds = %145, %141, %124
  %150 = shl i32 %13, 1
  %151 = xor i32 %150, -1
  %152 = and i32 %13, 170
  %153 = and i32 %152, %151
  %154 = icmp eq i32 %153, 0
  br label %155

155:                                              ; preds = %149, %145
  %156 = phi i1 [ false, %145 ], [ %154, %149 ]
  %157 = getelementptr inbounds %struct.gx_path_s, ptr %2, i64 0, i32 6
  %158 = load i32, ptr %157, align 4, !tbaa !56
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %178, label %160

160:                                              ; preds = %155
  br i1 %156, label %161, label %172

161:                                              ; preds = %160
  %162 = getelementptr inbounds %struct.gx_fill_params_s, ptr %3, i64 0, i32 2
  %163 = load float, ptr %162, align 8, !tbaa !57
  %164 = fmul float %163, 4.096000e+03
  %165 = fptosi float %164 to i64
  %166 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 9
  %167 = load i32, ptr %166, align 4, !tbaa !58
  %168 = icmp eq i32 %167, 0
  %169 = select i1 %168, i32 1, i32 5
  %170 = call i32 @gx_path_copy_reducing(ptr noundef nonnull %2, ptr noundef nonnull %10, i64 noundef %165, i32 noundef %169) #8
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %429, label %178

172:                                              ; preds = %160
  %173 = call i32 @gx_path_is_monotonic(ptr noundef nonnull %2) #8
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = call i32 @gx_path_copy_reducing(ptr noundef nonnull %2, ptr noundef nonnull %10, i64 noundef 9223372036854775807, i32 noundef 3) #8
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %429, label %178

178:                                              ; preds = %175, %172, %161, %155
  %179 = phi ptr [ %2, %155 ], [ %10, %161 ], [ %2, %172 ], [ %10, %175 ]
  %180 = getelementptr inbounds %struct.gx_path_s, ptr %179, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !59
  %182 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %7, i64 0, i32 1
  %183 = load i64, ptr %182, align 8, !tbaa !13
  %184 = load i64, ptr %58, align 8, !tbaa !12
  %185 = add i64 %131, 2047
  %186 = getelementptr inbounds %struct.line_list_s, ptr %11, i64 0, i32 6
  br label %187

187:                                              ; preds = %373, %178
  %188 = phi i32 [ undef, %178 ], [ %374, %373 ]
  %189 = phi ptr [ %181, %178 ], [ %221, %373 ]
  %190 = phi i32 [ undef, %178 ], [ %375, %373 ]
  %191 = icmp eq ptr %189, null
  br i1 %191, label %377, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.subpath_s, ptr %189, i64 0, i32 5
  %194 = load ptr, ptr %193, align 8, !tbaa !60
  %195 = getelementptr inbounds %struct.segment_s, ptr %194, i64 0, i32 2
  %196 = load i16, ptr %195, align 8, !tbaa !63
  %197 = icmp eq i16 %196, 2
  br i1 %197, label %212, label %198

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.subpath_s, ptr %189, i64 0, i32 7
  %200 = getelementptr inbounds %struct.segment_s, ptr %194, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !65
  %202 = getelementptr inbounds %struct.subpath_s, ptr %189, i64 0, i32 7, i32 1
  store ptr %201, ptr %202, align 8, !tbaa !66
  store ptr %194, ptr %199, align 8, !tbaa !67
  store ptr %199, ptr %200, align 8, !tbaa !65
  %203 = icmp eq ptr %201, null
  br i1 %203, label %205, label %204

204:                                              ; preds = %198
  store ptr %199, ptr %201, align 8, !tbaa !68
  br label %205

205:                                              ; preds = %204, %198
  %206 = getelementptr inbounds %struct.subpath_s, ptr %189, i64 0, i32 7, i32 2
  store i16 2, ptr %206, align 8, !tbaa !69
  %207 = getelementptr inbounds %struct.subpath_s, ptr %189, i64 0, i32 7, i32 4
  %208 = getelementptr inbounds %struct.subpath_s, ptr %189, i64 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %207, ptr noundef nonnull align 8 dereferenceable(16) %208, i64 16, i1 false), !tbaa.struct !30
  %209 = getelementptr inbounds %struct.subpath_s, ptr %189, i64 0, i32 7, i32 5
  store ptr %189, ptr %209, align 8, !tbaa !70
  store ptr %199, ptr %193, align 8, !tbaa !60
  %210 = load i32, ptr %138, align 8, !tbaa !55
  %211 = add nsw i32 %210, 1
  store i32 %211, ptr %138, align 8, !tbaa !55
  br label %212

212:                                              ; preds = %205, %192
  %213 = phi ptr [ %199, %205 ], [ %194, %192 ]
  %214 = getelementptr inbounds %struct.subpath_s, ptr %189, i64 0, i32 1
  br label %215

215:                                              ; preds = %368, %212
  %216 = phi i32 [ %188, %212 ], [ %369, %368 ]
  %217 = phi i32 [ 2, %212 ], [ %370, %368 ]
  %218 = phi ptr [ %189, %212 ], [ %221, %368 ]
  %219 = phi i32 [ %190, %212 ], [ %371, %368 ]
  %220 = getelementptr inbounds %struct.segment_s, ptr %218, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !65
  %222 = icmp eq ptr %221, null
  br i1 %222, label %373, label %223

223:                                              ; preds = %215
  %224 = getelementptr inbounds %struct.segment_s, ptr %221, i64 0, i32 2
  %225 = load i16, ptr %224, align 8, !tbaa !63
  %226 = icmp eq i16 %225, 0
  br i1 %226, label %373, label %227

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.segment_s, ptr %221, i64 0, i32 4, i32 1
  %229 = load i64, ptr %228, align 8, !tbaa !71
  %230 = getelementptr inbounds %struct.segment_s, ptr %218, i64 0, i32 4, i32 1
  %231 = load i64, ptr %230, align 8, !tbaa !71
  %232 = icmp sgt i64 %229, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %227
  %234 = icmp sgt i64 %229, %183
  %235 = icmp slt i64 %231, %184
  %236 = select i1 %234, i1 %235, i1 false
  %237 = zext i1 %236 to i32
  br label %245

238:                                              ; preds = %227
  %239 = icmp slt i64 %229, %231
  br i1 %239, label %240, label %245

240:                                              ; preds = %238
  %241 = icmp sgt i64 %231, %183
  %242 = icmp slt i64 %229, %184
  %243 = select i1 %241, i1 %242, i1 false
  %244 = sext i1 %243 to i32
  br label %245

245:                                              ; preds = %240, %238, %233
  %246 = phi i32 [ %237, %233 ], [ %244, %240 ], [ 2, %238 ]
  %247 = icmp eq i32 %246, 2
  br i1 %247, label %248, label %334

248:                                              ; preds = %245
  %249 = sub i64 %229, %130
  %250 = add i64 %249, 2047
  %251 = lshr i64 %250, 12
  %252 = trunc i64 %251 to i32
  %253 = add i64 %185, %229
  %254 = lshr i64 %253, 12
  %255 = trunc i64 %254 to i32
  %256 = icmp slt i32 %252, %255
  br i1 %256, label %257, label %334

257:                                              ; preds = %248
  %258 = load ptr, ptr %135, align 8, !tbaa !53
  %259 = load ptr, ptr %137, align 8, !tbaa !54
  %260 = icmp eq ptr %258, %259
  br i1 %260, label %261, label %270

261:                                              ; preds = %257
  %262 = load ptr, ptr %11, align 8, !tbaa !47
  %263 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %262, i64 0, i32 2
  %264 = load ptr, ptr %263, align 8, !tbaa !72
  %265 = call ptr %264(ptr noundef %262, ptr noundef nonnull @st_active_line, ptr noundef nonnull @.str) #8
  %266 = icmp eq ptr %265, null
  br i1 %266, label %331, label %267

267:                                              ; preds = %261
  %268 = load ptr, ptr %133, align 8, !tbaa !52
  %269 = getelementptr inbounds %struct.active_line_s, ptr %265, i64 0, i32 12
  store ptr %268, ptr %269, align 8, !tbaa !75
  store ptr %265, ptr %133, align 8, !tbaa !52
  br label %272

270:                                              ; preds = %257
  %271 = getelementptr inbounds %struct.active_line_s, ptr %258, i64 1
  store ptr %271, ptr %135, align 8, !tbaa !53
  br label %272

272:                                              ; preds = %270, %267
  %273 = phi ptr [ %265, %267 ], [ %258, %270 ]
  %274 = getelementptr inbounds %struct.segment_s, ptr %221, i64 0, i32 4
  %275 = load i64, ptr %274, align 8, !tbaa !76
  %276 = load i64, ptr %228, align 8, !tbaa !71
  %277 = getelementptr inbounds %struct.segment_s, ptr %218, i64 0, i32 4
  %278 = load i64, ptr %277, align 8, !tbaa !76
  %279 = load i64, ptr %230, align 8, !tbaa !71
  %280 = getelementptr inbounds %struct.active_line_s, ptr %273, i64 0, i32 7
  store i32 0, ptr %280, align 8, !tbaa !77
  store i64 %278, ptr %273, align 8, !tbaa.struct !30
  %281 = getelementptr inbounds i8, ptr %273, i64 8
  store i64 %279, ptr %281, align 8, !tbaa.struct !32
  %282 = getelementptr inbounds %struct.active_line_s, ptr %273, i64 0, i32 1
  store i64 %275, ptr %282, align 8, !tbaa.struct !30
  %283 = getelementptr inbounds %struct.active_line_s, ptr %273, i64 0, i32 1, i32 1
  store i64 %276, ptr %283, align 8, !tbaa.struct !32
  %284 = getelementptr inbounds %struct.active_line_s, ptr %273, i64 0, i32 6
  store ptr %218, ptr %284, align 8, !tbaa !78
  %285 = load ptr, ptr %186, align 8, !tbaa !79
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %289

287:                                              ; preds = %272
  %288 = getelementptr inbounds %struct.active_line_s, ptr %273, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %288, i8 0, i64 16, i1 false)
  br label %329

289:                                              ; preds = %272
  %290 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %285, i64 0, i32 1
  %291 = load i64, ptr %290, align 8, !tbaa !80
  %292 = icmp slt i64 %276, %291
  br i1 %292, label %307, label %293

293:                                              ; preds = %289, %298
  %294 = phi ptr [ %296, %298 ], [ %285, %289 ]
  %295 = getelementptr inbounds %struct.active_line_s, ptr %294, i64 0, i32 11
  %296 = load ptr, ptr %295, align 8, !tbaa !81
  %297 = icmp eq ptr %296, null
  br i1 %297, label %325, label %298

298:                                              ; preds = %293
  %299 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %296, i64 0, i32 1
  %300 = load i64, ptr %299, align 8, !tbaa !80
  %301 = icmp sgt i64 %276, %300
  br i1 %301, label %293, label %302, !llvm.loop !82

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.active_line_s, ptr %294, i64 0, i32 11
  %304 = getelementptr inbounds %struct.active_line_s, ptr %273, i64 0, i32 11
  store ptr %296, ptr %304, align 8, !tbaa !81
  %305 = getelementptr inbounds %struct.active_line_s, ptr %273, i64 0, i32 10
  store ptr %294, ptr %305, align 8, !tbaa !84
  store ptr %273, ptr %303, align 8, !tbaa !81
  %306 = getelementptr inbounds %struct.active_line_s, ptr %296, i64 0, i32 10
  br label %329

307:                                              ; preds = %289, %312
  %308 = phi ptr [ %310, %312 ], [ %285, %289 ]
  %309 = getelementptr inbounds %struct.active_line_s, ptr %308, i64 0, i32 10
  %310 = load ptr, ptr %309, align 8, !tbaa !84
  %311 = icmp eq ptr %310, null
  br i1 %311, label %321, label %312

312:                                              ; preds = %307
  %313 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %310, i64 0, i32 1
  %314 = load i64, ptr %313, align 8, !tbaa !80
  %315 = icmp slt i64 %276, %314
  br i1 %315, label %307, label %316, !llvm.loop !85

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.active_line_s, ptr %308, i64 0, i32 10
  %318 = getelementptr inbounds %struct.active_line_s, ptr %273, i64 0, i32 10
  store ptr %310, ptr %318, align 8, !tbaa !84
  %319 = getelementptr inbounds %struct.active_line_s, ptr %273, i64 0, i32 11
  store ptr %308, ptr %319, align 8, !tbaa !81
  store ptr %273, ptr %317, align 8, !tbaa !84
  %320 = getelementptr inbounds %struct.active_line_s, ptr %310, i64 0, i32 11
  br label %329

321:                                              ; preds = %307
  %322 = getelementptr inbounds %struct.active_line_s, ptr %308, i64 0, i32 10
  %323 = getelementptr inbounds %struct.active_line_s, ptr %273, i64 0, i32 10
  store ptr %310, ptr %323, align 8, !tbaa !84
  %324 = getelementptr inbounds %struct.active_line_s, ptr %273, i64 0, i32 11
  store ptr %308, ptr %324, align 8, !tbaa !81
  store ptr %273, ptr %322, align 8, !tbaa !84
  br label %329

325:                                              ; preds = %293
  %326 = getelementptr inbounds %struct.active_line_s, ptr %294, i64 0, i32 11
  %327 = getelementptr inbounds %struct.active_line_s, ptr %273, i64 0, i32 11
  store ptr %296, ptr %327, align 8, !tbaa !81
  %328 = getelementptr inbounds %struct.active_line_s, ptr %273, i64 0, i32 10
  store ptr %294, ptr %328, align 8, !tbaa !84
  br label %329

329:                                              ; preds = %325, %321, %316, %302, %287
  %330 = phi ptr [ %326, %325 ], [ %139, %321 ], [ %320, %316 ], [ %306, %302 ], [ %139, %287 ]
  store ptr %273, ptr %330, align 8, !tbaa !86
  store ptr %273, ptr %186, align 8, !tbaa !79
  br label %331

331:                                              ; preds = %261, %329
  %332 = phi i1 [ false, %329 ], [ true, %261 ]
  %333 = phi i32 [ 0, %329 ], [ -25, %261 ]
  br i1 %332, label %368, label %334

334:                                              ; preds = %331, %248, %245
  %335 = phi i32 [ %246, %245 ], [ 0, %331 ], [ 0, %248 ]
  %336 = icmp sgt i32 %335, %217
  br i1 %336, label %337, label %348

337:                                              ; preds = %334
  %338 = icmp eq i32 %217, 0
  br i1 %338, label %343, label %339

339:                                              ; preds = %337
  %340 = load ptr, ptr %218, align 8, !tbaa !68
  %341 = call fastcc i32 @add_y_line(ptr noundef %340, ptr noundef nonnull %218, i32 noundef -1, ptr noundef nonnull %11), !range !87
  %342 = icmp slt i32 %341, 0
  br i1 %342, label %368, label %343

343:                                              ; preds = %339, %337
  %344 = icmp eq i32 %335, 0
  br i1 %344, label %351, label %345

345:                                              ; preds = %343
  %346 = call fastcc i32 @add_y_line(ptr noundef nonnull %218, ptr noundef nonnull %221, i32 noundef 1, ptr noundef nonnull %11), !range !87
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %368, label %351

348:                                              ; preds = %334
  %349 = icmp eq i32 %217, 2
  %350 = select i1 %349, i32 %335, i32 %216
  br label %351

351:                                              ; preds = %348, %345, %343
  %352 = phi i32 [ %216, %345 ], [ %216, %343 ], [ %350, %348 ]
  %353 = icmp eq ptr %221, %213
  %354 = icmp sgt i32 %352, %335
  %355 = select i1 %353, i1 %354, i1 false
  br i1 %355, label %356, label %367

356:                                              ; preds = %351
  %357 = icmp eq i32 %335, 0
  br i1 %357, label %361, label %358

358:                                              ; preds = %356
  %359 = call fastcc i32 @add_y_line(ptr noundef nonnull %218, ptr noundef nonnull %221, i32 noundef -1, ptr noundef nonnull %11), !range !87
  %360 = icmp slt i32 %359, 0
  br i1 %360, label %368, label %361

361:                                              ; preds = %358, %356
  %362 = icmp eq i32 %352, 0
  br i1 %362, label %367, label %363

363:                                              ; preds = %361
  %364 = load ptr, ptr %214, align 8, !tbaa !88
  %365 = call fastcc i32 @add_y_line(ptr noundef nonnull %221, ptr noundef %364, i32 noundef 1, ptr noundef nonnull %11), !range !87
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %368, label %367

367:                                              ; preds = %363, %361, %351
  br label %368

368:                                              ; preds = %367, %363, %358, %345, %339, %331
  %369 = phi i32 [ %352, %367 ], [ %216, %331 ], [ %216, %339 ], [ %216, %345 ], [ %352, %358 ], [ 1, %363 ]
  %370 = phi i32 [ %335, %367 ], [ 2, %331 ], [ %335, %339 ], [ 1, %345 ], [ -1, %358 ], [ %335, %363 ]
  %371 = phi i32 [ %219, %367 ], [ %333, %331 ], [ %341, %339 ], [ %346, %345 ], [ %359, %358 ], [ %365, %363 ]
  %372 = phi i1 [ true, %367 ], [ false, %331 ], [ false, %339 ], [ false, %345 ], [ false, %358 ], [ false, %363 ]
  br i1 %372, label %215, label %373, !llvm.loop !89

373:                                              ; preds = %368, %223, %215
  %374 = phi i32 [ %369, %368 ], [ %216, %215 ], [ %216, %223 ]
  %375 = phi i32 [ %371, %368 ], [ %219, %215 ], [ %219, %223 ]
  %376 = phi i1 [ false, %368 ], [ true, %215 ], [ true, %223 ]
  br i1 %376, label %187, label %377, !llvm.loop !90

377:                                              ; preds = %187, %373
  %378 = phi i32 [ %375, %373 ], [ 0, %187 ]
  %379 = icmp slt i32 %378, 0
  br i1 %379, label %388, label %380

380:                                              ; preds = %377
  %381 = select i1 %156, ptr @fill_loop_by_trapezoids, ptr @fill_loop_by_scan_lines
  %382 = icmp eq i32 %15, 0
  %383 = sub nsw i32 0, %15
  %384 = sext i32 %383 to i64
  %385 = shl nsw i64 %384, 12
  %386 = select i1 %382, i64 -9223372036854775808, i64 %385
  %387 = call i32 %381(ptr noundef nonnull %11, ptr noundef %125, ptr noundef %3, ptr noundef %4, i32 noundef %13, ptr noundef nonnull %7, i64 noundef %127, i64 noundef %128, i64 noundef %130, i64 noundef %131, i64 noundef %386) #8, !callees !91
  br label %388

388:                                              ; preds = %377, %380
  %389 = phi i32 [ %378, %377 ], [ %387, %380 ]
  %390 = load i32, ptr %138, align 8, !tbaa !55
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %414, label %392

392:                                              ; preds = %388, %409
  %393 = phi i32 [ %410, %409 ], [ %390, %388 ]
  %394 = phi ptr [ %412, %409 ], [ %180, %388 ]
  %395 = load ptr, ptr %394, align 8, !tbaa !86
  %396 = getelementptr inbounds %struct.subpath_s, ptr %395, i64 0, i32 5
  %397 = load ptr, ptr %396, align 8, !tbaa !60
  %398 = getelementptr inbounds %struct.subpath_s, ptr %395, i64 0, i32 7
  %399 = icmp eq ptr %397, %398
  br i1 %399, label %400, label %409

400:                                              ; preds = %392
  %401 = load ptr, ptr %398, align 8, !tbaa !92
  %402 = getelementptr inbounds %struct.subpath_s, ptr %395, i64 0, i32 7, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !93
  %404 = getelementptr inbounds %struct.segment_s, ptr %401, i64 0, i32 1
  store ptr %403, ptr %404, align 8, !tbaa !65
  %405 = icmp eq ptr %403, null
  br i1 %405, label %407, label %406

406:                                              ; preds = %400
  store ptr %401, ptr %403, align 8, !tbaa !68
  br label %407

407:                                              ; preds = %406, %400
  store ptr %401, ptr %396, align 8, !tbaa !60
  %408 = add nsw i32 %393, -1
  br label %409

409:                                              ; preds = %407, %392
  %410 = phi i32 [ %408, %407 ], [ %393, %392 ]
  %411 = load ptr, ptr %396, align 8, !tbaa !60
  %412 = getelementptr inbounds %struct.segment_s, ptr %411, i64 0, i32 1
  %413 = icmp eq i32 %410, 0
  br i1 %413, label %414, label %392, !llvm.loop !94

414:                                              ; preds = %409, %388
  %415 = load ptr, ptr %11, align 8, !tbaa !47
  %416 = load ptr, ptr %133, align 8, !tbaa !52
  %417 = icmp eq ptr %416, null
  br i1 %417, label %426, label %418

418:                                              ; preds = %414
  %419 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %415, i64 0, i32 11
  br label %420

420:                                              ; preds = %420, %418
  %421 = phi ptr [ %416, %418 ], [ %423, %420 ]
  %422 = getelementptr inbounds %struct.active_line_s, ptr %421, i64 0, i32 12
  %423 = load ptr, ptr %422, align 8, !tbaa !75
  %424 = load ptr, ptr %419, align 8, !tbaa !95
  call void %424(ptr noundef %415, ptr noundef nonnull %421, ptr noundef nonnull @.str) #8
  store ptr %423, ptr %133, align 8, !tbaa !52
  %425 = icmp eq ptr %423, null
  br i1 %425, label %426, label %420, !llvm.loop !96

426:                                              ; preds = %420, %414
  %427 = icmp eq ptr %179, %2
  br i1 %427, label %429, label %428

428:                                              ; preds = %426
  call void @gx_path_release(ptr noundef nonnull %179) #8
  br label %429

429:                                              ; preds = %426, %428, %175, %161, %103, %109
  %430 = phi i32 [ 0, %109 ], [ 0, %103 ], [ %170, %161 ], [ %176, %175 ], [ %389, %428 ], [ %389, %426 ]
  call void @llvm.lifetime.end.p0(i64 4928, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #8
  ret i32 %430
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @gx_path_bbox(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gx_cpath_inner_box(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gx_cpath_outer_box(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gx_make_clip_translate_device(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @gx_path_copy_reducing(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @gx_path_is_monotonic(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @fill_loop_by_trapezoids(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10) unnamed_addr #2 {
  %12 = alloca %struct.gs_fixed_edge_s, align 8
  %13 = alloca %struct.gs_fixed_edge_s, align 8
  %14 = alloca %struct.gs_fixed_edge_s, align 8
  %15 = alloca %struct.gs_fixed_edge_s, align 8
  %16 = alloca %struct.gs_fixed_edge_s, align 8
  %17 = alloca %struct.gs_fixed_edge_s, align 8
  %18 = load i32, ptr %2, align 8, !tbaa !97
  %19 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %5, i64 0, i32 1, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !12
  %21 = getelementptr inbounds %struct.line_list_s, ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !98
  %23 = load ptr, ptr %3, align 8, !tbaa !99
  %24 = icmp eq ptr %23, @gx_dc_procs_pure
  %25 = and i32 %4, 563
  %26 = icmp eq i32 %25, 48
  %27 = and i1 %26, %24
  %28 = sub nsw i64 2049, %8
  %29 = add nsw i64 %9, %8
  %30 = icmp eq ptr %22, null
  br i1 %30, label %832, label %31

31:                                               ; preds = %11
  br i1 %27, label %32, label %37

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.gx_device_color_s, ptr %3, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !104
  %35 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 21, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !105
  br label %37

37:                                               ; preds = %32, %31
  %38 = phi ptr [ %36, %32 ], [ undef, %31 ]
  %39 = phi i64 [ %34, %32 ], [ undef, %31 ]
  %40 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %22, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !80
  %42 = getelementptr inbounds %struct.line_list_s, ptr %0, i64 0, i32 7, i32 11
  store ptr null, ptr %42, align 8, !tbaa !106
  %43 = getelementptr inbounds %struct.line_list_s, ptr %0, i64 0, i32 7, i32 4
  store i64 -9223372036854775808, ptr %43, align 8, !tbaa !107
  %44 = getelementptr inbounds %struct.line_list_s, ptr %0, i64 0, i32 7
  %45 = add i64 %7, 2047
  %46 = add i64 %7, 2047
  %47 = xor i64 %10, -1
  %48 = add i64 %9, 2047
  %49 = add i64 %9, 2047
  %50 = or i64 %7, %6
  %51 = icmp eq i64 %50, 0
  %52 = or i64 %9, %8
  %53 = icmp eq i64 %52, 0
  %54 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 0, i32 1
  %55 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %17, i64 0, i32 1
  %56 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %16, i64 0, i32 1
  %57 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %17, i64 0, i32 1
  %58 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %17, i64 0, i32 1, i32 1
  %59 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %16, i64 0, i32 1
  %60 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %16, i64 0, i32 1, i32 1
  %61 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 21, i32 27
  %62 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 0, i32 1
  %63 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %15, i64 0, i32 1
  %64 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %14, i64 0, i32 1
  %65 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %15, i64 0, i32 1
  %66 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %15, i64 0, i32 1, i32 1
  %67 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %14, i64 0, i32 1
  %68 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %14, i64 0, i32 1, i32 1
  %69 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 21, i32 27
  %70 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 0, i32 1
  %71 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %13, i64 0, i32 1
  %72 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %12, i64 0, i32 1
  %73 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %13, i64 0, i32 1
  %74 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %13, i64 0, i32 1, i32 1
  %75 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %12, i64 0, i32 1
  %76 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %12, i64 0, i32 1, i32 1
  %77 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 21, i32 27
  %78 = add i64 %9, 2047
  br label %79

79:                                               ; preds = %830, %37
  %80 = phi ptr [ undef, %37 ], [ %823, %830 ]
  %81 = phi i64 [ undef, %37 ], [ %824, %830 ]
  %82 = phi i64 [ undef, %37 ], [ %825, %830 ]
  %83 = phi i64 [ %41, %37 ], [ %827, %830 ]
  %84 = phi ptr [ %22, %37 ], [ %828, %830 ]
  %85 = phi i32 [ undef, %37 ], [ %829, %830 ]
  %86 = sub i64 %83, %8
  %87 = add i64 %86, 2047
  %88 = lshr i64 %87, 12
  %89 = trunc i64 %88 to i32
  br label %90

90:                                               ; preds = %169, %79
  %91 = phi ptr [ %84, %79 ], [ %171, %169 ]
  %92 = phi i32 [ %85, %79 ], [ %172, %169 ]
  %93 = icmp eq ptr %91, null
  br i1 %93, label %173, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %91, i64 0, i32 1
  %96 = load i64, ptr %95, align 8, !tbaa !80
  %97 = icmp eq i64 %96, %83
  br i1 %97, label %98, label %173

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.active_line_s, ptr %91, i64 0, i32 11
  %100 = load ptr, ptr %99, align 8, !tbaa !81
  %101 = getelementptr inbounds %struct.active_line_s, ptr %91, i64 0, i32 7
  %102 = load i32, ptr %101, align 8, !tbaa !77
  %103 = icmp eq i32 %102, 0
  %104 = load i64, ptr %91, align 8, !tbaa !108
  br i1 %103, label %105, label %132

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.active_line_s, ptr %91, i64 0, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !109
  %108 = icmp sgt i64 %104, %107
  %109 = add i64 %46, %104
  %110 = add i64 %45, %107
  %111 = select i1 %108, i64 %109, i64 %110
  %112 = select i1 %108, i64 %107, i64 %104
  %113 = sub i64 %112, %6
  %114 = add i64 %113, 2047
  %115 = lshr i64 %114, 12
  %116 = trunc i64 %115 to i32
  %117 = lshr i64 %111, 12
  %118 = trunc i64 %117 to i32
  %119 = sub nsw i32 %118, %116
  br i1 %27, label %120, label %122

120:                                              ; preds = %105
  %121 = call i32 %38(ptr noundef %1, i32 noundef %116, i32 noundef %89, i32 noundef %119, i32 noundef 1, i64 noundef %39) #8
  br label %127

122:                                              ; preds = %105
  %123 = load ptr, ptr %3, align 8, !tbaa !99
  %124 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !110
  %126 = call i32 %125(ptr noundef nonnull %3, i32 noundef %116, i32 noundef %89, i32 noundef %119, i32 noundef 1, ptr noundef %1, i32 noundef %4, ptr noundef null) #8
  br label %127

127:                                              ; preds = %122, %120
  %128 = phi i32 [ %121, %120 ], [ %126, %122 ]
  %129 = icmp sgt i32 %128, -1
  %130 = select i1 %129, i32 %92, i32 %128
  %131 = select i1 %129, ptr %100, ptr %91
  br label %169

132:                                              ; preds = %98
  %133 = getelementptr inbounds %struct.active_line_s, ptr %91, i64 0, i32 4
  store i64 %104, ptr %133, align 8, !tbaa !112
  %134 = load ptr, ptr %42, align 8, !tbaa !81
  %135 = icmp eq ptr %134, null
  br i1 %135, label %160, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.active_line_s, ptr %91, i64 0, i32 1
  br label %138

138:                                              ; preds = %154, %136
  %139 = phi ptr [ %134, %136 ], [ %156, %154 ]
  %140 = phi ptr [ %44, %136 ], [ %139, %154 ]
  %141 = getelementptr inbounds %struct.active_line_s, ptr %139, i64 0, i32 4
  %142 = load i64, ptr %141, align 8, !tbaa !112
  %143 = icmp slt i64 %142, %104
  br i1 %143, label %154, label %144

144:                                              ; preds = %138
  %145 = icmp eq i64 %142, %104
  br i1 %145, label %146, label %158

146:                                              ; preds = %144
  %147 = load i64, ptr %139, align 8, !tbaa !108
  %148 = icmp sgt i64 %147, %104
  br i1 %148, label %154, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.active_line_s, ptr %139, i64 0, i32 1
  %151 = load i64, ptr %150, align 8, !tbaa !109
  %152 = load i64, ptr %137, align 8, !tbaa !109
  %153 = icmp slt i64 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %149, %146, %138
  %155 = getelementptr inbounds %struct.active_line_s, ptr %139, i64 0, i32 11
  %156 = load ptr, ptr %155, align 8, !tbaa !81
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %138, !llvm.loop !113

158:                                              ; preds = %149, %144
  store ptr %139, ptr %99, align 8, !tbaa !81
  %159 = getelementptr inbounds %struct.active_line_s, ptr %91, i64 0, i32 10
  store ptr %140, ptr %159, align 8, !tbaa !84
  br label %163

160:                                              ; preds = %154, %132
  %161 = phi ptr [ %44, %132 ], [ %139, %154 ]
  %162 = phi ptr [ %134, %132 ], [ %156, %154 ]
  store ptr %162, ptr %99, align 8, !tbaa !81
  br label %163

163:                                              ; preds = %158, %160
  %164 = phi ptr [ %139, %158 ], [ %91, %160 ]
  %165 = phi ptr [ %91, %158 ], [ %161, %160 ]
  %166 = phi ptr [ %140, %158 ], [ %161, %160 ]
  %167 = getelementptr inbounds %struct.active_line_s, ptr %164, i64 0, i32 10
  store ptr %165, ptr %167, align 8, !tbaa !84
  %168 = getelementptr inbounds %struct.active_line_s, ptr %166, i64 0, i32 11
  store ptr %91, ptr %168, align 8, !tbaa !81
  br label %169

169:                                              ; preds = %127, %163
  %170 = phi i1 [ true, %163 ], [ %129, %127 ]
  %171 = phi ptr [ %100, %163 ], [ %131, %127 ]
  %172 = phi i32 [ %92, %163 ], [ %130, %127 ]
  br i1 %170, label %90, label %822, !llvm.loop !114

173:                                              ; preds = %90, %94
  %174 = icmp slt i64 %83, %20
  br i1 %174, label %175, label %822

175:                                              ; preds = %173
  %176 = load ptr, ptr %42, align 8, !tbaa !106
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  br i1 %93, label %822, label %179

179:                                              ; preds = %178
  %180 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %91, i64 0, i32 1
  %181 = load i64, ptr %180, align 8, !tbaa !80
  br label %822, !llvm.loop !115

182:                                              ; preds = %175
  br i1 %93, label %186, label %183

183:                                              ; preds = %182
  %184 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %91, i64 0, i32 1
  %185 = load i64, ptr %184, align 8, !tbaa !80
  br label %186

186:                                              ; preds = %182, %183
  %187 = phi i64 [ %185, %183 ], [ %20, %182 ]
  %188 = or i64 %83, %47
  %189 = icmp sgt i64 %187, %188
  %190 = add nsw i64 %188, 1
  %191 = select i1 %189, i64 %190, i64 %187
  %192 = load ptr, ptr %42, align 8, !tbaa !81
  %193 = icmp eq ptr %192, null
  br i1 %193, label %203, label %194

194:                                              ; preds = %186, %194
  %195 = phi ptr [ %201, %194 ], [ %192, %186 ]
  %196 = phi i64 [ %199, %194 ], [ %191, %186 ]
  %197 = getelementptr inbounds %struct.active_line_s, ptr %195, i64 0, i32 1, i32 1
  %198 = load i64, ptr %197, align 8, !tbaa !116
  %199 = call i64 @llvm.smin.i64(i64 %198, i64 %196)
  %200 = getelementptr inbounds %struct.active_line_s, ptr %195, i64 0, i32 11
  %201 = load ptr, ptr %200, align 8, !tbaa !81
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %194, !llvm.loop !117

203:                                              ; preds = %194, %186
  %204 = phi i64 [ %191, %186 ], [ %199, %194 ]
  %205 = sub nsw i64 %83, %8
  %206 = add nsw i64 %205, 2047
  %207 = and i64 %206, -4096
  %208 = add i64 %48, %204
  %209 = and i64 %208, -4096
  %210 = icmp slt i64 %207, %209
  %211 = select i1 %210, i32 1, i32 -1
  br label %215

212:                                              ; preds = %341
  %213 = load ptr, ptr %42, align 8, !tbaa !81
  %214 = icmp eq ptr %213, %345
  br i1 %214, label %398, label %351

215:                                              ; preds = %203, %341
  %216 = phi i64 [ %204, %203 ], [ %346, %341 ]
  %217 = phi ptr [ %80, %203 ], [ %218, %341 ]
  %218 = phi ptr [ %176, %203 ], [ %349, %341 ]
  %219 = phi ptr [ %176, %203 ], [ %345, %341 ]
  %220 = phi i64 [ -9223372036854775808, %203 ], [ %344, %341 ]
  %221 = phi i32 [ %211, %203 ], [ %342, %341 ]
  %222 = getelementptr inbounds %struct.active_line_s, ptr %218, i64 0, i32 1
  %223 = getelementptr inbounds %struct.active_line_s, ptr %218, i64 0, i32 1, i32 1
  %224 = load i64, ptr %223, align 8, !tbaa !116
  %225 = icmp eq i64 %216, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %215
  %227 = load i64, ptr %222, align 8, !tbaa !109
  br label %261

228:                                              ; preds = %215
  %229 = getelementptr inbounds %struct.active_line_s, ptr %218, i64 0, i32 3
  %230 = load i64, ptr %229, align 8, !tbaa !118
  %231 = icmp sgt i64 %216, %230
  br i1 %231, label %242, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %218, i64 0, i32 1
  %234 = load i64, ptr %233, align 8, !tbaa !80
  %235 = sub nsw i64 %216, %234
  %236 = getelementptr inbounds %struct.active_line_s, ptr %218, i64 0, i32 2
  %237 = load i64, ptr %236, align 8, !tbaa !119
  %238 = mul nsw i64 %235, %237
  %239 = getelementptr inbounds %struct.active_line_s, ptr %218, i64 0, i32 2, i32 1
  %240 = load i64, ptr %239, align 8, !tbaa !120
  %241 = sdiv i64 %238, %240
  br label %257

242:                                              ; preds = %228
  %243 = getelementptr inbounds %struct.active_line_s, ptr %218, i64 0, i32 2
  %244 = load i64, ptr %243, align 8, !tbaa !119
  %245 = sitofp i64 %244 to double
  %246 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %218, i64 0, i32 1
  %247 = load i64, ptr %246, align 8, !tbaa !80
  %248 = sub nsw i64 %216, %247
  %249 = sitofp i64 %248 to double
  %250 = fmul double %245, %249
  %251 = getelementptr inbounds %struct.active_line_s, ptr %218, i64 0, i32 2, i32 1
  %252 = load i64, ptr %251, align 8, !tbaa !120
  %253 = sitofp i64 %252 to double
  %254 = fdiv double %250, %253
  %255 = call double @llvm.floor.f64(double %254)
  %256 = fptosi double %255 to i64
  br label %257

257:                                              ; preds = %242, %232
  %258 = phi i64 [ %241, %232 ], [ %256, %242 ]
  %259 = load i64, ptr %218, align 8, !tbaa !108
  %260 = add nsw i64 %259, %258
  br label %261

261:                                              ; preds = %257, %226
  %262 = phi i64 [ %227, %226 ], [ %260, %257 ]
  %263 = icmp slt i64 %262, %220
  br i1 %263, label %264, label %341

264:                                              ; preds = %261
  %265 = icmp sgt i32 %221, -1
  br i1 %265, label %266, label %341

266:                                              ; preds = %264
  %267 = getelementptr inbounds %struct.active_line_s, ptr %218, i64 0, i32 4
  %268 = load i64, ptr %267, align 8, !tbaa !112
  %269 = getelementptr inbounds %struct.active_line_s, ptr %217, i64 0, i32 4
  %270 = load i64, ptr %269, align 8, !tbaa !112
  %271 = sub nsw i64 %268, %270
  %272 = icmp sgt i64 %271, -1
  br i1 %272, label %273, label %341

273:                                              ; preds = %266
  %274 = getelementptr inbounds %struct.active_line_s, ptr %217, i64 0, i32 5
  %275 = load i64, ptr %274, align 8, !tbaa !121
  %276 = sub i64 %271, %262
  %277 = add i64 %276, %275
  %278 = icmp sgt i64 %277, %271
  br i1 %278, label %279, label %341

279:                                              ; preds = %273
  %280 = sub nsw i64 %216, %83
  %281 = or i64 %271, %280
  %282 = icmp slt i64 %281, 2147483648
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = mul nsw i64 %271, %280
  %285 = sdiv i64 %284, %277
  br label %294

286:                                              ; preds = %279
  %287 = sitofp i64 %280 to double
  %288 = sitofp i64 %271 to double
  %289 = fmul double %287, %288
  %290 = sitofp i64 %277 to double
  %291 = fdiv double %289, %290
  %292 = call double @llvm.floor.f64(double %291)
  %293 = fptosi double %292 to i64
  br label %294

294:                                              ; preds = %286, %283
  %295 = phi i64 [ %285, %283 ], [ %293, %286 ]
  %296 = call i64 @llvm.smax.i64(i64 %295, i64 1)
  %297 = add nsw i64 %296, %83
  %298 = icmp slt i64 %297, %216
  br i1 %298, label %299, label %336

299:                                              ; preds = %294
  %300 = icmp eq i64 %297, %224
  br i1 %300, label %301, label %303

301:                                              ; preds = %299
  %302 = load i64, ptr %222, align 8, !tbaa !109
  br label %336

303:                                              ; preds = %299
  %304 = getelementptr inbounds %struct.active_line_s, ptr %218, i64 0, i32 3
  %305 = load i64, ptr %304, align 8, !tbaa !118
  %306 = icmp sgt i64 %297, %305
  br i1 %306, label %317, label %307

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %218, i64 0, i32 1
  %309 = load i64, ptr %308, align 8, !tbaa !80
  %310 = sub nsw i64 %297, %309
  %311 = getelementptr inbounds %struct.active_line_s, ptr %218, i64 0, i32 2
  %312 = load i64, ptr %311, align 8, !tbaa !119
  %313 = mul nsw i64 %310, %312
  %314 = getelementptr inbounds %struct.active_line_s, ptr %218, i64 0, i32 2, i32 1
  %315 = load i64, ptr %314, align 8, !tbaa !120
  %316 = sdiv i64 %313, %315
  br label %332

317:                                              ; preds = %303
  %318 = getelementptr inbounds %struct.active_line_s, ptr %218, i64 0, i32 2
  %319 = load i64, ptr %318, align 8, !tbaa !119
  %320 = sitofp i64 %319 to double
  %321 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %218, i64 0, i32 1
  %322 = load i64, ptr %321, align 8, !tbaa !80
  %323 = sub nsw i64 %297, %322
  %324 = sitofp i64 %323 to double
  %325 = fmul double %320, %324
  %326 = getelementptr inbounds %struct.active_line_s, ptr %218, i64 0, i32 2, i32 1
  %327 = load i64, ptr %326, align 8, !tbaa !120
  %328 = sitofp i64 %327 to double
  %329 = fdiv double %325, %328
  %330 = call double @llvm.floor.f64(double %329)
  %331 = fptosi double %330 to i64
  br label %332

332:                                              ; preds = %317, %307
  %333 = phi i64 [ %316, %307 ], [ %331, %317 ]
  %334 = load i64, ptr %218, align 8, !tbaa !108
  %335 = add nsw i64 %334, %333
  br label %336

336:                                              ; preds = %301, %332, %294
  %337 = phi i32 [ %221, %294 ], [ 0, %332 ], [ 0, %301 ]
  %338 = phi i64 [ %262, %294 ], [ %335, %332 ], [ %302, %301 ]
  %339 = phi i64 [ %216, %294 ], [ %297, %332 ], [ %297, %301 ]
  %340 = call i64 @llvm.smax.i64(i64 %338, i64 %220)
  br label %341

341:                                              ; preds = %261, %264, %266, %273, %336
  %342 = phi i32 [ %337, %336 ], [ %221, %273 ], [ %221, %266 ], [ -1, %264 ], [ %221, %261 ]
  %343 = phi i64 [ %338, %336 ], [ %262, %273 ], [ %262, %266 ], [ %262, %264 ], [ %262, %261 ]
  %344 = phi i64 [ %340, %336 ], [ %220, %273 ], [ %220, %266 ], [ %220, %264 ], [ %262, %261 ]
  %345 = phi ptr [ %218, %336 ], [ %219, %273 ], [ %219, %266 ], [ %219, %264 ], [ %219, %261 ]
  %346 = phi i64 [ %339, %336 ], [ %216, %273 ], [ %216, %266 ], [ %216, %264 ], [ %216, %261 ]
  %347 = getelementptr inbounds %struct.active_line_s, ptr %218, i64 0, i32 5
  store i64 %343, ptr %347, align 8, !tbaa !121
  %348 = getelementptr inbounds %struct.active_line_s, ptr %218, i64 0, i32 11
  %349 = load ptr, ptr %348, align 8, !tbaa !81
  %350 = icmp eq ptr %349, null
  br i1 %350, label %212, label %215, !llvm.loop !122

351:                                              ; preds = %212, %392
  %352 = phi ptr [ %396, %392 ], [ %213, %212 ]
  %353 = getelementptr inbounds %struct.active_line_s, ptr %352, i64 0, i32 1, i32 1
  %354 = load i64, ptr %353, align 8, !tbaa !116
  %355 = icmp eq i64 %346, %354
  br i1 %355, label %356, label %359

356:                                              ; preds = %351
  %357 = getelementptr inbounds %struct.active_line_s, ptr %352, i64 0, i32 1
  %358 = load i64, ptr %357, align 8, !tbaa !109
  br label %392

359:                                              ; preds = %351
  %360 = getelementptr inbounds %struct.active_line_s, ptr %352, i64 0, i32 3
  %361 = load i64, ptr %360, align 8, !tbaa !118
  %362 = icmp sgt i64 %346, %361
  br i1 %362, label %373, label %363

363:                                              ; preds = %359
  %364 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %352, i64 0, i32 1
  %365 = load i64, ptr %364, align 8, !tbaa !80
  %366 = sub nsw i64 %346, %365
  %367 = getelementptr inbounds %struct.active_line_s, ptr %352, i64 0, i32 2
  %368 = load i64, ptr %367, align 8, !tbaa !119
  %369 = mul nsw i64 %366, %368
  %370 = getelementptr inbounds %struct.active_line_s, ptr %352, i64 0, i32 2, i32 1
  %371 = load i64, ptr %370, align 8, !tbaa !120
  %372 = sdiv i64 %369, %371
  br label %388

373:                                              ; preds = %359
  %374 = getelementptr inbounds %struct.active_line_s, ptr %352, i64 0, i32 2
  %375 = load i64, ptr %374, align 8, !tbaa !119
  %376 = sitofp i64 %375 to double
  %377 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %352, i64 0, i32 1
  %378 = load i64, ptr %377, align 8, !tbaa !80
  %379 = sub nsw i64 %346, %378
  %380 = sitofp i64 %379 to double
  %381 = fmul double %376, %380
  %382 = getelementptr inbounds %struct.active_line_s, ptr %352, i64 0, i32 2, i32 1
  %383 = load i64, ptr %382, align 8, !tbaa !120
  %384 = sitofp i64 %383 to double
  %385 = fdiv double %381, %384
  %386 = call double @llvm.floor.f64(double %385)
  %387 = fptosi double %386 to i64
  br label %388

388:                                              ; preds = %373, %363
  %389 = phi i64 [ %372, %363 ], [ %387, %373 ]
  %390 = load i64, ptr %352, align 8, !tbaa !108
  %391 = add nsw i64 %390, %389
  br label %392

392:                                              ; preds = %388, %356
  %393 = phi i64 [ %358, %356 ], [ %391, %388 ]
  %394 = getelementptr inbounds %struct.active_line_s, ptr %352, i64 0, i32 5
  store i64 %393, ptr %394, align 8, !tbaa !121
  %395 = getelementptr inbounds %struct.active_line_s, ptr %352, i64 0, i32 11
  %396 = load ptr, ptr %395, align 8, !tbaa !81
  %397 = icmp eq ptr %396, %345
  br i1 %397, label %398, label %351, !llvm.loop !123

398:                                              ; preds = %392, %212
  %399 = icmp sgt i32 %342, 0
  br i1 %399, label %407, label %400

400:                                              ; preds = %398
  %401 = icmp eq i32 %342, 0
  br i1 %401, label %403, label %402

402:                                              ; preds = %403, %400
  br label %712

403:                                              ; preds = %400
  %404 = add i64 %49, %346
  %405 = and i64 %404, -4096
  %406 = icmp slt i64 %207, %405
  br i1 %406, label %407, label %402

407:                                              ; preds = %403, %398
  %408 = sub nsw i64 %346, %83
  %409 = add nsw i64 %408, %205
  %410 = sub nsw i64 %346, %28
  %411 = and i64 %410, 4095
  %412 = icmp slt i64 %411, %29
  %413 = sub i64 %346, %8
  %414 = add i64 %413, 2047
  %415 = lshr i64 %414, 12
  %416 = trunc i64 %415 to i32
  %417 = sub i64 %346, %8
  %418 = add i64 %417, 2047
  %419 = lshr i64 %418, 12
  %420 = trunc i64 %419 to i32
  %421 = sub nsw i64 %83, %28
  %422 = and i64 %421, 4095
  %423 = icmp slt i64 %422, %29
  %424 = lshr i64 %206, 12
  %425 = trunc i64 %424 to i32
  %426 = lshr i64 %206, 12
  %427 = trunc i64 %426 to i32
  %428 = add nsw i64 %83, %9
  %429 = add i64 %346, %9
  %430 = lshr i64 %206, 12
  %431 = trunc i64 %430 to i32
  %432 = add i64 %78, %346
  %433 = lshr i64 %432, 12
  %434 = trunc i64 %433 to i32
  %435 = sub nsw i32 %434, %431
  br label %436

436:                                              ; preds = %407, %706
  %437 = phi i32 [ %92, %407 ], [ %705, %706 ]
  %438 = phi i32 [ 0, %407 ], [ %554, %706 ]
  %439 = phi i64 [ %82, %407 ], [ %703, %706 ]
  %440 = phi i64 [ %81, %407 ], [ %702, %706 ]
  %441 = phi ptr [ %176, %407 ], [ %448, %706 ]
  %442 = phi i64 [ -9223372036854775808, %407 ], [ %549, %706 ]
  %443 = getelementptr inbounds %struct.active_line_s, ptr %441, i64 0, i32 4
  %444 = load i64, ptr %443, align 8, !tbaa !112
  %445 = getelementptr inbounds %struct.active_line_s, ptr %441, i64 0, i32 5
  %446 = load i64, ptr %445, align 8, !tbaa !121
  store i64 %446, ptr %443, align 8, !tbaa !112
  %447 = getelementptr inbounds %struct.active_line_s, ptr %441, i64 0, i32 11
  %448 = load ptr, ptr %447, align 8, !tbaa !81
  %449 = getelementptr inbounds %struct.active_line_s, ptr %441, i64 0, i32 1, i32 1
  %450 = load i64, ptr %449, align 8, !tbaa !116
  %451 = icmp eq i64 %450, %346
  br i1 %451, label %452, label %503

452:                                              ; preds = %436
  %453 = getelementptr inbounds %struct.active_line_s, ptr %441, i64 0, i32 6
  %454 = load ptr, ptr %453, align 8, !tbaa !78
  %455 = getelementptr inbounds %struct.active_line_s, ptr %441, i64 0, i32 7
  %456 = load i32, ptr %455, align 8, !tbaa !77
  %457 = icmp eq i32 %456, 1
  %458 = getelementptr inbounds %struct.segment_s, ptr %454, i64 0, i32 2
  %459 = load i16, ptr %458, align 8, !tbaa !63
  br i1 %457, label %460, label %468

460:                                              ; preds = %452
  %461 = icmp eq i16 %459, 2
  br i1 %461, label %462, label %466

462:                                              ; preds = %460
  %463 = getelementptr inbounds %struct.line_close_segment, ptr %454, i64 0, i32 5
  %464 = load ptr, ptr %463, align 8, !tbaa !70
  %465 = getelementptr inbounds %struct.subpath_s, ptr %464, i64 0, i32 1
  br label %473

466:                                              ; preds = %460
  %467 = getelementptr inbounds %struct.segment_s, ptr %454, i64 0, i32 1
  br label %473

468:                                              ; preds = %452
  %469 = icmp eq i16 %459, 0
  br i1 %469, label %470, label %473

470:                                              ; preds = %468
  %471 = getelementptr inbounds %struct.subpath_s, ptr %454, i64 0, i32 5
  %472 = load ptr, ptr %471, align 8, !tbaa !60
  br label %473

473:                                              ; preds = %470, %468, %466, %462
  %474 = phi ptr [ %465, %462 ], [ %467, %466 ], [ %472, %470 ], [ %454, %468 ]
  %475 = load ptr, ptr %474, align 8, !tbaa !86
  %476 = getelementptr inbounds %struct.segment_s, ptr %475, i64 0, i32 4, i32 1
  %477 = load i64, ptr %476, align 8, !tbaa !71
  %478 = getelementptr inbounds %struct.segment_s, ptr %454, i64 0, i32 4, i32 1
  %479 = load i64, ptr %478, align 8, !tbaa !71
  %480 = icmp sgt i64 %477, %479
  br i1 %480, label %488, label %481

481:                                              ; preds = %473
  %482 = getelementptr inbounds %struct.active_line_s, ptr %441, i64 0, i32 10
  %483 = load ptr, ptr %482, align 8, !tbaa !84
  %484 = getelementptr inbounds %struct.active_line_s, ptr %483, i64 0, i32 11
  store ptr %448, ptr %484, align 8, !tbaa !81
  %485 = icmp eq ptr %448, null
  br i1 %485, label %502, label %486

486:                                              ; preds = %481
  %487 = getelementptr inbounds %struct.active_line_s, ptr %448, i64 0, i32 10
  store ptr %483, ptr %487, align 8, !tbaa !84
  br label %502

488:                                              ; preds = %473
  %489 = getelementptr inbounds %struct.segment_s, ptr %475, i64 0, i32 4
  store ptr %475, ptr %453, align 8, !tbaa !78
  %490 = load i64, ptr %489, align 8, !tbaa !76
  %491 = getelementptr inbounds %struct.active_line_s, ptr %441, i64 0, i32 1
  %492 = load i64, ptr %491, align 8, !tbaa !109
  %493 = sub nsw i64 %490, %492
  %494 = getelementptr inbounds %struct.active_line_s, ptr %441, i64 0, i32 2
  store i64 %493, ptr %494, align 8, !tbaa !119
  %495 = call i64 @llvm.abs.i64(i64 %493, i1 true)
  %496 = or i64 %495, 1
  %497 = udiv i64 9223372036854775807, %496
  %498 = add nsw i64 %497, %450
  %499 = getelementptr inbounds %struct.active_line_s, ptr %441, i64 0, i32 3
  store i64 %498, ptr %499, align 8, !tbaa !118
  %500 = sub nsw i64 %477, %450
  %501 = getelementptr inbounds %struct.active_line_s, ptr %441, i64 0, i32 2, i32 1
  store i64 %500, ptr %501, align 8, !tbaa !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %441, ptr noundef nonnull align 8 dereferenceable(16) %491, i64 16, i1 false), !tbaa.struct !30
  store i64 %490, ptr %491, align 8, !tbaa.struct !30
  store i64 %477, ptr %449, align 8, !tbaa.struct !32
  br label %502

502:                                              ; preds = %481, %486, %488
  br i1 %480, label %503, label %548

503:                                              ; preds = %502, %436
  %504 = icmp sgt i64 %446, %442
  br i1 %504, label %548, label %505

505:                                              ; preds = %503
  %506 = getelementptr inbounds %struct.active_line_s, ptr %441, i64 0, i32 10
  %507 = load ptr, ptr %506, align 8, !tbaa !84
  %508 = load ptr, ptr %447, align 8, !tbaa !81
  %509 = load i64, ptr %443, align 8, !tbaa !112
  %510 = getelementptr inbounds %struct.active_line_s, ptr %507, i64 0, i32 11
  store ptr %508, ptr %510, align 8, !tbaa !81
  %511 = icmp eq ptr %508, null
  br i1 %511, label %514, label %512

512:                                              ; preds = %505
  %513 = getelementptr inbounds %struct.active_line_s, ptr %508, i64 0, i32 10
  store ptr %507, ptr %513, align 8, !tbaa !84
  br label %514

514:                                              ; preds = %512, %505
  %515 = getelementptr inbounds %struct.active_line_s, ptr %507, i64 0, i32 4
  %516 = load i64, ptr %515, align 8, !tbaa !112
  %517 = icmp slt i64 %516, %509
  br i1 %517, label %540, label %518

518:                                              ; preds = %514
  %519 = getelementptr inbounds %struct.active_line_s, ptr %441, i64 0, i32 1
  br label %520

520:                                              ; preds = %534, %518
  %521 = phi i64 [ %516, %518 ], [ %538, %534 ]
  %522 = phi ptr [ %507, %518 ], [ %536, %534 ]
  %523 = phi ptr [ %508, %518 ], [ %522, %534 ]
  %524 = icmp eq i64 %521, %509
  br i1 %524, label %525, label %534

525:                                              ; preds = %520
  %526 = load i64, ptr %522, align 8, !tbaa !108
  %527 = load i64, ptr %441, align 8, !tbaa !108
  %528 = icmp sgt i64 %526, %527
  br i1 %528, label %540, label %529

529:                                              ; preds = %525
  %530 = getelementptr inbounds %struct.active_line_s, ptr %522, i64 0, i32 1
  %531 = load i64, ptr %530, align 8, !tbaa !109
  %532 = load i64, ptr %519, align 8, !tbaa !109
  %533 = icmp slt i64 %531, %532
  br i1 %533, label %540, label %534

534:                                              ; preds = %529, %520
  %535 = getelementptr inbounds %struct.active_line_s, ptr %522, i64 0, i32 10
  %536 = load ptr, ptr %535, align 8, !tbaa !84
  %537 = getelementptr inbounds %struct.active_line_s, ptr %536, i64 0, i32 4
  %538 = load i64, ptr %537, align 8, !tbaa !112
  %539 = icmp slt i64 %538, %509
  br i1 %539, label %540, label %520, !llvm.loop !124

540:                                              ; preds = %534, %529, %525, %514
  %541 = phi ptr [ %508, %514 ], [ %523, %529 ], [ %523, %525 ], [ %522, %534 ]
  %542 = phi ptr [ %507, %514 ], [ %522, %529 ], [ %522, %525 ], [ %536, %534 ]
  store ptr %541, ptr %447, align 8, !tbaa !81
  store ptr %542, ptr %506, align 8, !tbaa !84
  %543 = icmp eq ptr %541, null
  br i1 %543, label %546, label %544

544:                                              ; preds = %540
  %545 = getelementptr inbounds %struct.active_line_s, ptr %541, i64 0, i32 10
  store ptr %441, ptr %545, align 8, !tbaa !84
  br label %546

546:                                              ; preds = %540, %544
  %547 = getelementptr inbounds %struct.active_line_s, ptr %542, i64 0, i32 11
  store ptr %441, ptr %547, align 8, !tbaa !81
  br label %548

548:                                              ; preds = %503, %546, %502
  %549 = phi i64 [ %442, %546 ], [ %442, %502 ], [ %446, %503 ]
  %550 = and i32 %438, %18
  %551 = icmp eq i32 %550, 0
  %552 = getelementptr inbounds %struct.active_line_s, ptr %441, i64 0, i32 7
  %553 = load i32, ptr %552, align 8, !tbaa !77
  %554 = add nsw i32 %553, %438
  %555 = and i32 %554, %18
  %556 = icmp eq i32 %555, 0
  br i1 %551, label %557, label %560

557:                                              ; preds = %548
  %558 = select i1 %556, i64 %440, i64 %444
  %559 = select i1 %556, i64 %439, i64 %446
  br label %701

560:                                              ; preds = %548
  br i1 %556, label %561, label %701

561:                                              ; preds = %560
  %562 = sub nsw i64 %446, %439
  %563 = icmp slt i64 %562, 0
  %564 = ashr i64 %562, 1
  %565 = add nsw i64 %564, %439
  %566 = select i1 %563, i64 %565, i64 %439
  %567 = select i1 %563, i64 %565, i64 %446
  %568 = call i64 @llvm.smax.i64(i64 %562, i64 0)
  br i1 %51, label %575, label %569

569:                                              ; preds = %561
  %570 = sub nsw i64 %440, %6
  %571 = add nsw i64 %444, %7
  %572 = sub nsw i64 %566, %6
  %573 = add nsw i64 %567, %7
  %574 = sub nsw i64 %573, %572
  br label %575

575:                                              ; preds = %569, %561
  %576 = phi i64 [ %570, %569 ], [ %440, %561 ]
  %577 = phi i64 [ %572, %569 ], [ %566, %561 ]
  %578 = phi i64 [ %571, %569 ], [ %444, %561 ]
  %579 = phi i64 [ %573, %569 ], [ %567, %561 ]
  %580 = phi i64 [ %574, %569 ], [ %568, %561 ]
  %581 = add nsw i64 %577, 2047
  %582 = lshr i64 %581, 12
  %583 = trunc i64 %582 to i32
  %584 = add nsw i64 %576, 2047
  %585 = lshr i64 %584, 12
  %586 = trunc i64 %585 to i32
  %587 = icmp eq i32 %583, %586
  br i1 %587, label %588, label %606

588:                                              ; preds = %575
  %589 = add nsw i64 %579, 2047
  %590 = lshr i64 %589, 12
  %591 = trunc i64 %590 to i32
  %592 = add nsw i64 %578, 2047
  %593 = lshr i64 %592, 12
  %594 = trunc i64 %593 to i32
  %595 = icmp eq i32 %591, %594
  br i1 %595, label %596, label %606

596:                                              ; preds = %588
  br i1 %27, label %597, label %600

597:                                              ; preds = %596
  %598 = sub nsw i32 %591, %583
  %599 = call i32 %38(ptr noundef %1, i32 noundef %583, i32 noundef %431, i32 noundef %598, i32 noundef %435, i64 noundef %39) #8
  br label %695

600:                                              ; preds = %596
  %601 = load ptr, ptr %3, align 8, !tbaa !99
  %602 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %601, i64 0, i32 1
  %603 = load ptr, ptr %602, align 8, !tbaa !110
  %604 = sub nsw i32 %591, %583
  %605 = call i32 %603(ptr noundef nonnull %3, i32 noundef %583, i32 noundef %431, i32 noundef %604, i32 noundef %435, ptr noundef %1, i32 noundef %4, ptr noundef null) #8
  br label %695

606:                                              ; preds = %588, %575
  br i1 %53, label %683, label %607

607:                                              ; preds = %606
  %608 = icmp sgt i64 %577, %576
  br i1 %608, label %643, label %609

609:                                              ; preds = %607
  %610 = icmp slt i64 %579, %578
  br i1 %610, label %641, label %611

611:                                              ; preds = %609
  %612 = load i64, ptr %54, align 8, !tbaa !13
  %613 = call i64 @llvm.smax.i64(i64 %612, i64 %205)
  %614 = load i64, ptr %19, align 8, !tbaa !12
  %615 = call i64 @llvm.smin.i64(i64 %409, i64 %614)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #8
  %616 = icmp slt i64 %613, %615
  br i1 %616, label %617, label %621

617:                                              ; preds = %611
  store i64 %205, ptr %55, align 8, !tbaa !125
  store i64 %205, ptr %56, align 8, !tbaa !125
  store i64 %409, ptr %58, align 8, !tbaa !127
  store i64 %409, ptr %60, align 8, !tbaa !127
  store i64 %576, ptr %16, align 8, !tbaa !128
  store i64 %578, ptr %17, align 8, !tbaa !128
  store i64 %577, ptr %59, align 8, !tbaa !129
  %618 = add nsw i64 %580, %577
  store i64 %618, ptr %57, align 8, !tbaa !129
  %619 = load ptr, ptr %61, align 8, !tbaa !130
  %620 = call i32 %619(ptr noundef %1, ptr noundef nonnull %16, ptr noundef nonnull %17, i64 noundef %613, i64 noundef %615, i32 noundef 0, ptr noundef nonnull %3, i32 noundef %4) #8
  br label %621

621:                                              ; preds = %611, %617
  %622 = phi i32 [ %620, %617 ], [ 0, %611 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #8
  br i1 %412, label %623, label %679

623:                                              ; preds = %621
  %624 = icmp slt i32 %622, 0
  br i1 %624, label %679, label %625

625:                                              ; preds = %623
  br i1 %27, label %626, label %632

626:                                              ; preds = %625
  %627 = add nsw i64 %579, 2047
  %628 = lshr i64 %627, 12
  %629 = trunc i64 %628 to i32
  %630 = sub nsw i32 %629, %583
  %631 = call i32 %38(ptr noundef %1, i32 noundef %583, i32 noundef %420, i32 noundef %630, i32 noundef 1, i64 noundef %39) #8
  br label %679

632:                                              ; preds = %625
  %633 = load ptr, ptr %3, align 8, !tbaa !99
  %634 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %633, i64 0, i32 1
  %635 = load ptr, ptr %634, align 8, !tbaa !110
  %636 = add nsw i64 %579, 2047
  %637 = lshr i64 %636, 12
  %638 = trunc i64 %637 to i32
  %639 = sub nsw i32 %638, %583
  %640 = call i32 %635(ptr noundef nonnull %3, i32 noundef %583, i32 noundef %416, i32 noundef %639, i32 noundef 1, ptr noundef %1, i32 noundef %4, ptr noundef null) #8
  br label %679

641:                                              ; preds = %609
  %642 = call fastcc i32 @fill_slant_adjust(i64 noundef %576, i64 noundef %578, i64 noundef %83, i64 noundef %577, i64 noundef %579, i64 noundef %408, i64 noundef %8, i64 noundef %9, ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, i32 noundef %4)
  br label %679

643:                                              ; preds = %607
  %644 = icmp sgt i64 %579, %578
  br i1 %644, label %677, label %645

645:                                              ; preds = %643
  br i1 %423, label %646, label %665

646:                                              ; preds = %645
  br i1 %27, label %647, label %653

647:                                              ; preds = %646
  %648 = add nsw i64 %578, 2047
  %649 = lshr i64 %648, 12
  %650 = trunc i64 %649 to i32
  %651 = sub nsw i32 %650, %586
  %652 = call i32 %38(ptr noundef %1, i32 noundef %586, i32 noundef %427, i32 noundef %651, i32 noundef 1, i64 noundef %39) #8
  br label %662

653:                                              ; preds = %646
  %654 = load ptr, ptr %3, align 8, !tbaa !99
  %655 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %654, i64 0, i32 1
  %656 = load ptr, ptr %655, align 8, !tbaa !110
  %657 = add nsw i64 %578, 2047
  %658 = lshr i64 %657, 12
  %659 = trunc i64 %658 to i32
  %660 = sub nsw i32 %659, %586
  %661 = call i32 %656(ptr noundef nonnull %3, i32 noundef %586, i32 noundef %425, i32 noundef %660, i32 noundef 1, ptr noundef %1, i32 noundef %4, ptr noundef null) #8
  br label %662

662:                                              ; preds = %653, %647
  %663 = phi i32 [ %652, %647 ], [ %661, %653 ]
  %664 = icmp slt i32 %663, 0
  br i1 %664, label %679, label %665

665:                                              ; preds = %662, %645
  %666 = load i64, ptr %62, align 8, !tbaa !13
  %667 = call i64 @llvm.smax.i64(i64 %666, i64 %428)
  %668 = load i64, ptr %19, align 8, !tbaa !12
  %669 = call i64 @llvm.smin.i64(i64 %429, i64 %668)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #8
  %670 = icmp slt i64 %667, %669
  br i1 %670, label %671, label %675

671:                                              ; preds = %665
  store i64 %428, ptr %63, align 8, !tbaa !125
  store i64 %428, ptr %64, align 8, !tbaa !125
  store i64 %429, ptr %66, align 8, !tbaa !127
  store i64 %429, ptr %68, align 8, !tbaa !127
  store i64 %576, ptr %14, align 8, !tbaa !128
  store i64 %578, ptr %15, align 8, !tbaa !128
  store i64 %577, ptr %67, align 8, !tbaa !129
  %672 = add nsw i64 %580, %577
  store i64 %672, ptr %65, align 8, !tbaa !129
  %673 = load ptr, ptr %69, align 8, !tbaa !130
  %674 = call i32 %673(ptr noundef %1, ptr noundef nonnull %14, ptr noundef nonnull %15, i64 noundef %667, i64 noundef %669, i32 noundef 0, ptr noundef nonnull %3, i32 noundef %4) #8
  br label %675

675:                                              ; preds = %665, %671
  %676 = phi i32 [ %674, %671 ], [ 0, %665 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #8
  br label %679

677:                                              ; preds = %643
  %678 = call fastcc i32 @fill_slant_adjust(i64 noundef %576, i64 noundef %578, i64 noundef %83, i64 noundef %577, i64 noundef %579, i64 noundef %408, i64 noundef %8, i64 noundef %9, ptr noundef %5, ptr noundef nonnull %3, ptr noundef %1, i32 noundef %4)
  br label %679

679:                                              ; preds = %621, %641, %677, %675, %632, %626, %662, %623
  %680 = phi i1 [ false, %623 ], [ false, %662 ], [ true, %626 ], [ true, %632 ], [ true, %675 ], [ true, %677 ], [ true, %641 ], [ true, %621 ]
  %681 = phi i32 [ %622, %623 ], [ %663, %662 ], [ %631, %626 ], [ %640, %632 ], [ %676, %675 ], [ %678, %677 ], [ %642, %641 ], [ %622, %621 ]
  %682 = phi i32 [ %622, %623 ], [ %663, %662 ], [ %437, %626 ], [ %437, %632 ], [ %437, %675 ], [ %437, %677 ], [ %437, %641 ], [ %437, %621 ]
  br i1 %680, label %695, label %701

683:                                              ; preds = %606
  %684 = load i64, ptr %70, align 8, !tbaa !13
  %685 = call i64 @llvm.smax.i64(i64 %684, i64 %83)
  %686 = load i64, ptr %19, align 8, !tbaa !12
  %687 = call i64 @llvm.smin.i64(i64 %346, i64 %686)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #8
  %688 = icmp slt i64 %685, %687
  br i1 %688, label %689, label %693

689:                                              ; preds = %683
  store i64 %83, ptr %71, align 8, !tbaa !125
  store i64 %83, ptr %72, align 8, !tbaa !125
  store i64 %346, ptr %74, align 8, !tbaa !127
  store i64 %346, ptr %76, align 8, !tbaa !127
  store i64 %576, ptr %12, align 8, !tbaa !128
  store i64 %578, ptr %13, align 8, !tbaa !128
  store i64 %577, ptr %75, align 8, !tbaa !129
  %690 = add nsw i64 %580, %577
  store i64 %690, ptr %73, align 8, !tbaa !129
  %691 = load ptr, ptr %77, align 8, !tbaa !130
  %692 = call i32 %691(ptr noundef %1, ptr noundef nonnull %12, ptr noundef nonnull %13, i64 noundef %685, i64 noundef %687, i32 noundef 0, ptr noundef nonnull %3, i32 noundef %4) #8
  br label %693

693:                                              ; preds = %683, %689
  %694 = phi i32 [ %692, %689 ], [ 0, %683 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #8
  br label %695

695:                                              ; preds = %597, %600, %693, %679
  %696 = phi i32 [ %681, %679 ], [ %694, %693 ], [ %599, %597 ], [ %605, %600 ]
  %697 = phi i32 [ %682, %679 ], [ %437, %693 ], [ %437, %597 ], [ %437, %600 ]
  %698 = icmp slt i32 %696, 0
  %699 = lshr i32 %696, 31
  %700 = select i1 %698, i32 %696, i32 %697
  br label %701

701:                                              ; preds = %695, %560, %679, %557
  %702 = phi i64 [ %576, %679 ], [ %558, %557 ], [ %440, %560 ], [ %576, %695 ]
  %703 = phi i64 [ %577, %679 ], [ %559, %557 ], [ %439, %560 ], [ %577, %695 ]
  %704 = phi i32 [ 1, %679 ], [ 25, %557 ], [ 25, %560 ], [ %699, %695 ]
  %705 = phi i32 [ %682, %679 ], [ %437, %557 ], [ %437, %560 ], [ %700, %695 ]
  switch i32 %704, label %708 [
    i32 0, label %706
    i32 25, label %706
  ]

706:                                              ; preds = %701, %701
  %707 = icmp eq ptr %448, null
  br i1 %707, label %708, label %436, !llvm.loop !131

708:                                              ; preds = %706, %701
  %709 = phi i32 [ %704, %701 ], [ 0, %706 ]
  %710 = icmp eq i32 %709, 0
  %711 = select i1 %710, i64 %346, i64 %83
  br label %822

712:                                              ; preds = %402, %819
  %713 = phi ptr [ %719, %819 ], [ %176, %402 ]
  %714 = phi i64 [ %820, %819 ], [ -9223372036854775808, %402 ]
  %715 = getelementptr inbounds %struct.active_line_s, ptr %713, i64 0, i32 5
  %716 = load i64, ptr %715, align 8, !tbaa !121
  %717 = getelementptr inbounds %struct.active_line_s, ptr %713, i64 0, i32 4
  store i64 %716, ptr %717, align 8, !tbaa !112
  %718 = getelementptr inbounds %struct.active_line_s, ptr %713, i64 0, i32 11
  %719 = load ptr, ptr %718, align 8, !tbaa !81
  %720 = getelementptr inbounds %struct.active_line_s, ptr %713, i64 0, i32 1, i32 1
  %721 = load i64, ptr %720, align 8, !tbaa !116
  %722 = icmp eq i64 %721, %346
  br i1 %722, label %723, label %774

723:                                              ; preds = %712
  %724 = getelementptr inbounds %struct.active_line_s, ptr %713, i64 0, i32 6
  %725 = load ptr, ptr %724, align 8, !tbaa !78
  %726 = getelementptr inbounds %struct.active_line_s, ptr %713, i64 0, i32 7
  %727 = load i32, ptr %726, align 8, !tbaa !77
  %728 = icmp eq i32 %727, 1
  %729 = getelementptr inbounds %struct.segment_s, ptr %725, i64 0, i32 2
  %730 = load i16, ptr %729, align 8, !tbaa !63
  br i1 %728, label %731, label %739

731:                                              ; preds = %723
  %732 = icmp eq i16 %730, 2
  br i1 %732, label %733, label %737

733:                                              ; preds = %731
  %734 = getelementptr inbounds %struct.line_close_segment, ptr %725, i64 0, i32 5
  %735 = load ptr, ptr %734, align 8, !tbaa !70
  %736 = getelementptr inbounds %struct.subpath_s, ptr %735, i64 0, i32 1
  br label %744

737:                                              ; preds = %731
  %738 = getelementptr inbounds %struct.segment_s, ptr %725, i64 0, i32 1
  br label %744

739:                                              ; preds = %723
  %740 = icmp eq i16 %730, 0
  br i1 %740, label %741, label %744

741:                                              ; preds = %739
  %742 = getelementptr inbounds %struct.subpath_s, ptr %725, i64 0, i32 5
  %743 = load ptr, ptr %742, align 8, !tbaa !60
  br label %744

744:                                              ; preds = %741, %739, %737, %733
  %745 = phi ptr [ %736, %733 ], [ %738, %737 ], [ %743, %741 ], [ %725, %739 ]
  %746 = load ptr, ptr %745, align 8, !tbaa !86
  %747 = getelementptr inbounds %struct.segment_s, ptr %746, i64 0, i32 4, i32 1
  %748 = load i64, ptr %747, align 8, !tbaa !71
  %749 = getelementptr inbounds %struct.segment_s, ptr %725, i64 0, i32 4, i32 1
  %750 = load i64, ptr %749, align 8, !tbaa !71
  %751 = icmp sgt i64 %748, %750
  br i1 %751, label %759, label %752

752:                                              ; preds = %744
  %753 = getelementptr inbounds %struct.active_line_s, ptr %713, i64 0, i32 10
  %754 = load ptr, ptr %753, align 8, !tbaa !84
  %755 = getelementptr inbounds %struct.active_line_s, ptr %754, i64 0, i32 11
  store ptr %719, ptr %755, align 8, !tbaa !81
  %756 = icmp eq ptr %719, null
  br i1 %756, label %773, label %757

757:                                              ; preds = %752
  %758 = getelementptr inbounds %struct.active_line_s, ptr %719, i64 0, i32 10
  store ptr %754, ptr %758, align 8, !tbaa !84
  br label %773

759:                                              ; preds = %744
  %760 = getelementptr inbounds %struct.segment_s, ptr %746, i64 0, i32 4
  store ptr %746, ptr %724, align 8, !tbaa !78
  %761 = load i64, ptr %760, align 8, !tbaa !76
  %762 = getelementptr inbounds %struct.active_line_s, ptr %713, i64 0, i32 1
  %763 = load i64, ptr %762, align 8, !tbaa !109
  %764 = sub nsw i64 %761, %763
  %765 = getelementptr inbounds %struct.active_line_s, ptr %713, i64 0, i32 2
  store i64 %764, ptr %765, align 8, !tbaa !119
  %766 = call i64 @llvm.abs.i64(i64 %764, i1 true)
  %767 = or i64 %766, 1
  %768 = udiv i64 9223372036854775807, %767
  %769 = add nsw i64 %768, %721
  %770 = getelementptr inbounds %struct.active_line_s, ptr %713, i64 0, i32 3
  store i64 %769, ptr %770, align 8, !tbaa !118
  %771 = sub nsw i64 %748, %721
  %772 = getelementptr inbounds %struct.active_line_s, ptr %713, i64 0, i32 2, i32 1
  store i64 %771, ptr %772, align 8, !tbaa !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %713, ptr noundef nonnull align 8 dereferenceable(16) %762, i64 16, i1 false), !tbaa.struct !30
  store i64 %761, ptr %762, align 8, !tbaa.struct !30
  store i64 %748, ptr %720, align 8, !tbaa.struct !32
  br label %773

773:                                              ; preds = %752, %757, %759
  br i1 %751, label %774, label %819

774:                                              ; preds = %773, %712
  %775 = icmp sgt i64 %716, %714
  br i1 %775, label %819, label %776

776:                                              ; preds = %774
  %777 = getelementptr inbounds %struct.active_line_s, ptr %713, i64 0, i32 10
  %778 = load ptr, ptr %777, align 8, !tbaa !84
  %779 = load ptr, ptr %718, align 8, !tbaa !81
  %780 = load i64, ptr %717, align 8, !tbaa !112
  %781 = getelementptr inbounds %struct.active_line_s, ptr %778, i64 0, i32 11
  store ptr %779, ptr %781, align 8, !tbaa !81
  %782 = icmp eq ptr %779, null
  br i1 %782, label %785, label %783

783:                                              ; preds = %776
  %784 = getelementptr inbounds %struct.active_line_s, ptr %779, i64 0, i32 10
  store ptr %778, ptr %784, align 8, !tbaa !84
  br label %785

785:                                              ; preds = %783, %776
  %786 = getelementptr inbounds %struct.active_line_s, ptr %778, i64 0, i32 4
  %787 = load i64, ptr %786, align 8, !tbaa !112
  %788 = icmp slt i64 %787, %780
  br i1 %788, label %811, label %789

789:                                              ; preds = %785
  %790 = getelementptr inbounds %struct.active_line_s, ptr %713, i64 0, i32 1
  br label %791

791:                                              ; preds = %805, %789
  %792 = phi i64 [ %787, %789 ], [ %809, %805 ]
  %793 = phi ptr [ %778, %789 ], [ %807, %805 ]
  %794 = phi ptr [ %779, %789 ], [ %793, %805 ]
  %795 = icmp eq i64 %792, %780
  br i1 %795, label %796, label %805

796:                                              ; preds = %791
  %797 = load i64, ptr %793, align 8, !tbaa !108
  %798 = load i64, ptr %713, align 8, !tbaa !108
  %799 = icmp sgt i64 %797, %798
  br i1 %799, label %811, label %800

800:                                              ; preds = %796
  %801 = getelementptr inbounds %struct.active_line_s, ptr %793, i64 0, i32 1
  %802 = load i64, ptr %801, align 8, !tbaa !109
  %803 = load i64, ptr %790, align 8, !tbaa !109
  %804 = icmp slt i64 %802, %803
  br i1 %804, label %811, label %805

805:                                              ; preds = %800, %791
  %806 = getelementptr inbounds %struct.active_line_s, ptr %793, i64 0, i32 10
  %807 = load ptr, ptr %806, align 8, !tbaa !84
  %808 = getelementptr inbounds %struct.active_line_s, ptr %807, i64 0, i32 4
  %809 = load i64, ptr %808, align 8, !tbaa !112
  %810 = icmp slt i64 %809, %780
  br i1 %810, label %811, label %791, !llvm.loop !124

811:                                              ; preds = %805, %800, %796, %785
  %812 = phi ptr [ %779, %785 ], [ %794, %800 ], [ %794, %796 ], [ %793, %805 ]
  %813 = phi ptr [ %778, %785 ], [ %793, %800 ], [ %793, %796 ], [ %807, %805 ]
  store ptr %812, ptr %718, align 8, !tbaa !81
  store ptr %813, ptr %777, align 8, !tbaa !84
  %814 = icmp eq ptr %812, null
  br i1 %814, label %817, label %815

815:                                              ; preds = %811
  %816 = getelementptr inbounds %struct.active_line_s, ptr %812, i64 0, i32 10
  store ptr %713, ptr %816, align 8, !tbaa !84
  br label %817

817:                                              ; preds = %811, %815
  %818 = getelementptr inbounds %struct.active_line_s, ptr %813, i64 0, i32 11
  store ptr %713, ptr %818, align 8, !tbaa !81
  br label %819

819:                                              ; preds = %817, %774, %773
  %820 = phi i64 [ %714, %773 ], [ %714, %817 ], [ %716, %774 ]
  %821 = icmp eq ptr %719, null
  br i1 %821, label %822, label %712, !llvm.loop !132

822:                                              ; preds = %169, %819, %708, %178, %173, %179
  %823 = phi ptr [ %80, %179 ], [ %80, %173 ], [ %80, %178 ], [ %218, %708 ], [ %218, %819 ], [ %80, %169 ]
  %824 = phi i64 [ %81, %179 ], [ %81, %173 ], [ %81, %178 ], [ %702, %708 ], [ %81, %819 ], [ %81, %169 ]
  %825 = phi i64 [ %82, %179 ], [ %82, %173 ], [ %82, %178 ], [ %703, %708 ], [ %82, %819 ], [ %82, %169 ]
  %826 = phi i32 [ 2, %179 ], [ 3, %173 ], [ 3, %178 ], [ %709, %708 ], [ 0, %819 ], [ 1, %169 ]
  %827 = phi i64 [ %181, %179 ], [ %83, %173 ], [ %83, %178 ], [ %711, %708 ], [ %346, %819 ], [ %83, %169 ]
  %828 = phi ptr [ %91, %179 ], [ %91, %173 ], [ null, %178 ], [ %91, %708 ], [ %91, %819 ], [ %171, %169 ]
  %829 = phi i32 [ %92, %179 ], [ %92, %173 ], [ %92, %178 ], [ %705, %708 ], [ %92, %819 ], [ %172, %169 ]
  switch i32 %826, label %832 [
    i32 0, label %830
    i32 3, label %831
    i32 2, label %830
  ]

830:                                              ; preds = %822, %822
  br label %79, !llvm.loop !115

831:                                              ; preds = %822
  br label %832

832:                                              ; preds = %822, %831, %11
  %833 = phi i32 [ 0, %11 ], [ 0, %831 ], [ %829, %822 ]
  ret i32 %833
}

; Function Attrs: nounwind uwtable
define internal i32 @fill_loop_by_scan_lines(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 %10) unnamed_addr #2 {
  %12 = load i32, ptr %2, align 8, !tbaa !97
  %13 = getelementptr inbounds %struct.gx_fill_params_s, ptr %2, i64 0, i32 2
  %14 = load float, ptr %13, align 8, !tbaa !57
  %15 = fmul float %14, 4.096000e+03
  %16 = fptosi float %15 to i64
  %17 = load ptr, ptr %3, align 8, !tbaa !99
  %18 = icmp eq ptr %17, @gx_dc_procs_pure
  %19 = and i32 %4, 563
  %20 = icmp eq i32 %19, 48
  %21 = and i1 %20, %18
  %22 = getelementptr inbounds %struct.line_list_s, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !98
  %24 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %5, i64 0, i32 1, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !12
  %26 = tail call i64 @llvm.usub.sat.i64(i64 %9, i64 1)
  %27 = add nsw i64 %8, 1
  %28 = add nsw i64 %27, %26
  %29 = icmp sgt i64 %28, 1
  %30 = icmp eq ptr %23, null
  br i1 %30, label %538, label %31

31:                                               ; preds = %11
  br i1 %21, label %32, label %37

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.gx_device_color_s, ptr %3, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !104
  %35 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 21, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !105
  br label %37

37:                                               ; preds = %32, %31
  %38 = phi ptr [ %36, %32 ], [ undef, %31 ]
  %39 = phi i64 [ %34, %32 ], [ undef, %31 ]
  %40 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %23, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !80
  %42 = add nsw i64 %41, 2047
  %43 = and i64 %42, -4096
  %44 = sub i64 %43, %26
  %45 = add i64 %44, 2048
  %46 = getelementptr inbounds %struct.line_list_s, ptr %0, i64 0, i32 7, i32 11
  store ptr null, ptr %46, align 8, !tbaa !106
  %47 = getelementptr inbounds %struct.line_list_s, ptr %0, i64 0, i32 7, i32 4
  store i64 -9223372036854775808, ptr %47, align 8, !tbaa !107
  %48 = getelementptr inbounds %struct.line_list_s, ptr %0, i64 0, i32 7
  %49 = add i64 %7, 2048
  %50 = add i64 %7, 2048
  br label %51

51:                                               ; preds = %536, %37
  %52 = phi i64 [ %45, %37 ], [ %534, %536 ]
  %53 = phi ptr [ %23, %37 ], [ %151, %536 ]
  %54 = phi i32 [ undef, %37 ], [ %535, %536 ]
  %55 = add nsw i64 %52, %28
  %56 = icmp eq ptr %53, null
  br i1 %56, label %150, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %53, i64 0, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !80
  %60 = icmp slt i64 %59, %55
  br i1 %60, label %65, label %150

61:                                               ; preds = %148
  %62 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %68, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !80
  %64 = icmp slt i64 %63, %55
  br i1 %64, label %65, label %150, !llvm.loop !133

65:                                               ; preds = %57, %61
  %66 = phi ptr [ %68, %61 ], [ %53, %57 ]
  %67 = getelementptr inbounds %struct.active_line_s, ptr %66, i64 0, i32 11
  %68 = load ptr, ptr %67, align 8, !tbaa !81
  %69 = getelementptr inbounds %struct.active_line_s, ptr %66, i64 0, i32 7
  %70 = load i32, ptr %69, align 8, !tbaa !77
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %148, label %72

72:                                               ; preds = %65
  %73 = load i64, ptr %66, align 8, !tbaa !108
  %74 = getelementptr inbounds %struct.active_line_s, ptr %66, i64 0, i32 4
  store i64 %73, ptr %74, align 8, !tbaa !112
  %75 = load ptr, ptr %46, align 8, !tbaa !81
  %76 = icmp eq ptr %75, null
  br i1 %76, label %101, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.active_line_s, ptr %66, i64 0, i32 1
  br label %79

79:                                               ; preds = %95, %77
  %80 = phi ptr [ %75, %77 ], [ %97, %95 ]
  %81 = phi ptr [ %48, %77 ], [ %80, %95 ]
  %82 = getelementptr inbounds %struct.active_line_s, ptr %80, i64 0, i32 4
  %83 = load i64, ptr %82, align 8, !tbaa !112
  %84 = icmp slt i64 %83, %73
  br i1 %84, label %95, label %85

85:                                               ; preds = %79
  %86 = icmp eq i64 %83, %73
  br i1 %86, label %87, label %99

87:                                               ; preds = %85
  %88 = load i64, ptr %80, align 8, !tbaa !108
  %89 = icmp sgt i64 %88, %73
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.active_line_s, ptr %80, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !109
  %93 = load i64, ptr %78, align 8, !tbaa !109
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %90, %87, %79
  %96 = getelementptr inbounds %struct.active_line_s, ptr %80, i64 0, i32 11
  %97 = load ptr, ptr %96, align 8, !tbaa !81
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %79, !llvm.loop !113

99:                                               ; preds = %90, %85
  store ptr %80, ptr %67, align 8, !tbaa !81
  %100 = getelementptr inbounds %struct.active_line_s, ptr %66, i64 0, i32 10
  store ptr %81, ptr %100, align 8, !tbaa !84
  br label %104

101:                                              ; preds = %95, %72
  %102 = phi ptr [ %48, %72 ], [ %80, %95 ]
  %103 = phi ptr [ %75, %72 ], [ %97, %95 ]
  store ptr %103, ptr %67, align 8, !tbaa !81
  br label %104

104:                                              ; preds = %99, %101
  %105 = phi ptr [ %80, %99 ], [ %66, %101 ]
  %106 = phi ptr [ %66, %99 ], [ %102, %101 ]
  %107 = phi ptr [ %81, %99 ], [ %102, %101 ]
  %108 = getelementptr inbounds %struct.active_line_s, ptr %105, i64 0, i32 10
  store ptr %106, ptr %108, align 8, !tbaa !84
  %109 = getelementptr inbounds %struct.active_line_s, ptr %107, i64 0, i32 11
  store ptr %66, ptr %109, align 8, !tbaa !81
  %110 = getelementptr inbounds %struct.active_line_s, ptr %66, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !78
  %112 = icmp slt i32 %70, 0
  %113 = getelementptr inbounds %struct.segment_s, ptr %111, i64 0, i32 2
  %114 = load i16, ptr %113, align 8, !tbaa !63
  br i1 %112, label %115, label %133

115:                                              ; preds = %104
  %116 = icmp eq i16 %114, 2
  br i1 %116, label %117, label %121

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.line_close_segment, ptr %111, i64 0, i32 5
  %119 = load ptr, ptr %118, align 8, !tbaa !70
  %120 = getelementptr inbounds %struct.subpath_s, ptr %119, i64 0, i32 1
  br label %123

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.segment_s, ptr %111, i64 0, i32 1
  br label %123

123:                                              ; preds = %121, %117
  %124 = phi ptr [ %120, %117 ], [ %122, %121 ]
  %125 = load ptr, ptr %124, align 8, !tbaa !86
  %126 = getelementptr inbounds %struct.segment_s, ptr %125, i64 0, i32 2
  %127 = load i16, ptr %126, align 8, !tbaa !63
  %128 = icmp eq i16 %127, 3
  br i1 %128, label %131, label %129

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.active_line_s, ptr %66, i64 0, i32 8
  store i32 -1, ptr %130, align 4, !tbaa !134
  br label %148

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.active_line_s, ptr %66, i64 0, i32 1
  br label %137

133:                                              ; preds = %104
  %134 = icmp eq i16 %114, 3
  br i1 %134, label %137, label %135

135:                                              ; preds = %133
  %136 = getelementptr inbounds %struct.active_line_s, ptr %66, i64 0, i32 8
  store i32 -1, ptr %136, align 4, !tbaa !134
  br label %148

137:                                              ; preds = %133, %131
  %138 = phi ptr [ %125, %131 ], [ %111, %133 ]
  %139 = phi ptr [ %132, %131 ], [ %66, %133 ]
  %140 = load i64, ptr %139, align 8, !tbaa !14
  %141 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %139, i64 0, i32 1
  %142 = load i64, ptr %141, align 8, !tbaa !15
  %143 = tail call i32 @gx_curve_log2_samples(i64 noundef %140, i64 noundef %142, ptr noundef %138, i64 noundef %16) #8
  %144 = getelementptr inbounds %struct.active_line_s, ptr %66, i64 0, i32 8
  store i32 %143, ptr %144, align 4, !tbaa !134
  %145 = getelementptr inbounds %struct.active_line_s, ptr %66, i64 0, i32 9
  %146 = load i64, ptr %139, align 8, !tbaa !14
  %147 = load i64, ptr %141, align 8, !tbaa !15
  tail call void @gx_curve_cursor_init(ptr noundef nonnull %145, i64 noundef %146, i64 noundef %147, ptr noundef %138, i32 noundef %143) #8
  br label %148

148:                                              ; preds = %137, %135, %129, %65
  %149 = icmp eq ptr %68, null
  br i1 %149, label %150, label %61, !llvm.loop !133

150:                                              ; preds = %148, %61, %57, %51
  %151 = phi ptr [ %53, %51 ], [ %53, %57 ], [ %68, %61 ], [ %68, %148 ]
  %152 = phi i1 [ %56, %51 ], [ %56, %57 ], [ %149, %61 ], [ %149, %148 ]
  %153 = icmp slt i64 %52, %25
  br i1 %153, label %154, label %532

154:                                              ; preds = %150
  %155 = load ptr, ptr %46, align 8, !tbaa !106
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %173

157:                                              ; preds = %154
  br i1 %152, label %532, label %158

158:                                              ; preds = %157
  %159 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %151, i64 0, i32 1
  %160 = load i64, ptr %159, align 8, !tbaa !80
  %161 = add nsw i64 %160, 2047
  %162 = and i64 %161, -4096
  %163 = sub i64 %162, %26
  %164 = add i64 %163, 2048
  br label %532, !llvm.loop !135

165:                                              ; preds = %349
  %166 = load ptr, ptr %46, align 8, !tbaa !81
  %167 = icmp eq ptr %166, null
  br i1 %167, label %526, label %168

168:                                              ; preds = %165
  %169 = lshr i64 %52, 12
  %170 = trunc i64 %169 to i32
  %171 = lshr i64 %52, 12
  %172 = trunc i64 %171 to i32
  br label %352

173:                                              ; preds = %154, %349
  %174 = phi ptr [ %177, %349 ], [ %155, %154 ]
  %175 = phi i64 [ %350, %349 ], [ -9223372036854775808, %154 ]
  %176 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 11
  %177 = load ptr, ptr %176, align 8, !tbaa !81
  %178 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 1
  %179 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 1, i32 1
  %180 = load i64, ptr %179, align 8, !tbaa !116
  %181 = icmp sgt i64 %180, %52
  br i1 %181, label %275, label %182

182:                                              ; preds = %173
  %183 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 6
  %184 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 7
  %185 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 10
  %186 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 2
  %187 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 3
  %188 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 2, i32 1
  %189 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 8
  %190 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 8
  %191 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 8
  %192 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 9
  br label %193

193:                                              ; preds = %182, %272
  %194 = phi i64 [ %180, %182 ], [ %273, %272 ]
  %195 = load ptr, ptr %183, align 8, !tbaa !78
  %196 = load i32, ptr %184, align 8, !tbaa !77
  %197 = icmp eq i32 %196, 1
  %198 = getelementptr inbounds %struct.segment_s, ptr %195, i64 0, i32 2
  %199 = load i16, ptr %198, align 8, !tbaa !63
  br i1 %197, label %200, label %208

200:                                              ; preds = %193
  %201 = icmp eq i16 %199, 2
  br i1 %201, label %202, label %206

202:                                              ; preds = %200
  %203 = getelementptr inbounds %struct.line_close_segment, ptr %195, i64 0, i32 5
  %204 = load ptr, ptr %203, align 8, !tbaa !70
  %205 = getelementptr inbounds %struct.subpath_s, ptr %204, i64 0, i32 1
  br label %213

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.segment_s, ptr %195, i64 0, i32 1
  br label %213

208:                                              ; preds = %193
  %209 = icmp eq i16 %199, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %208
  %211 = getelementptr inbounds %struct.subpath_s, ptr %195, i64 0, i32 5
  %212 = load ptr, ptr %211, align 8, !tbaa !60
  br label %213

213:                                              ; preds = %210, %208, %206, %202
  %214 = phi ptr [ %205, %202 ], [ %207, %206 ], [ %212, %210 ], [ %195, %208 ]
  %215 = load ptr, ptr %214, align 8, !tbaa !86
  %216 = getelementptr inbounds %struct.segment_s, ptr %215, i64 0, i32 4, i32 1
  %217 = load i64, ptr %216, align 8, !tbaa !71
  %218 = getelementptr inbounds %struct.segment_s, ptr %195, i64 0, i32 4, i32 1
  %219 = load i64, ptr %218, align 8, !tbaa !71
  %220 = icmp sgt i64 %217, %219
  br i1 %220, label %228, label %221

221:                                              ; preds = %213
  %222 = load ptr, ptr %176, align 8, !tbaa !81
  %223 = load ptr, ptr %185, align 8, !tbaa !84
  %224 = getelementptr inbounds %struct.active_line_s, ptr %223, i64 0, i32 11
  store ptr %222, ptr %224, align 8, !tbaa !81
  %225 = icmp eq ptr %222, null
  br i1 %225, label %238, label %226

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.active_line_s, ptr %222, i64 0, i32 10
  store ptr %223, ptr %227, align 8, !tbaa !84
  br label %238

228:                                              ; preds = %213
  %229 = getelementptr inbounds %struct.segment_s, ptr %215, i64 0, i32 4
  store ptr %215, ptr %183, align 8, !tbaa !78
  %230 = load i64, ptr %229, align 8, !tbaa !76
  %231 = load i64, ptr %178, align 8, !tbaa !109
  %232 = sub nsw i64 %230, %231
  store i64 %232, ptr %186, align 8, !tbaa !119
  %233 = tail call i64 @llvm.abs.i64(i64 %232, i1 true)
  %234 = or i64 %233, 1
  %235 = udiv i64 9223372036854775807, %234
  %236 = add nsw i64 %235, %194
  store i64 %236, ptr %187, align 8, !tbaa !118
  %237 = sub nsw i64 %217, %194
  store i64 %237, ptr %188, align 8, !tbaa !120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %174, ptr noundef nonnull align 8 dereferenceable(16) %178, i64 16, i1 false), !tbaa.struct !30
  store i64 %230, ptr %178, align 8, !tbaa.struct !30
  store i64 %217, ptr %179, align 8, !tbaa.struct !32
  br label %238

238:                                              ; preds = %221, %226, %228
  br i1 %220, label %239, label %349

239:                                              ; preds = %238
  %240 = load ptr, ptr %183, align 8, !tbaa !78
  %241 = load i32, ptr %184, align 8, !tbaa !77
  %242 = icmp slt i32 %241, 0
  %243 = getelementptr inbounds %struct.segment_s, ptr %240, i64 0, i32 2
  %244 = load i16, ptr %243, align 8, !tbaa !63
  br i1 %242, label %245, label %260

245:                                              ; preds = %239
  %246 = icmp eq i16 %244, 2
  br i1 %246, label %247, label %251

247:                                              ; preds = %245
  %248 = getelementptr inbounds %struct.line_close_segment, ptr %240, i64 0, i32 5
  %249 = load ptr, ptr %248, align 8, !tbaa !70
  %250 = getelementptr inbounds %struct.subpath_s, ptr %249, i64 0, i32 1
  br label %253

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.segment_s, ptr %240, i64 0, i32 1
  br label %253

253:                                              ; preds = %251, %247
  %254 = phi ptr [ %250, %247 ], [ %252, %251 ]
  %255 = load ptr, ptr %254, align 8, !tbaa !86
  %256 = getelementptr inbounds %struct.segment_s, ptr %255, i64 0, i32 2
  %257 = load i16, ptr %256, align 8, !tbaa !63
  %258 = icmp eq i16 %257, 3
  br i1 %258, label %263, label %259

259:                                              ; preds = %253
  store i32 -1, ptr %190, align 4, !tbaa !134
  br label %272

260:                                              ; preds = %239
  %261 = icmp eq i16 %244, 3
  br i1 %261, label %263, label %262

262:                                              ; preds = %260
  store i32 -1, ptr %189, align 4, !tbaa !134
  br label %272

263:                                              ; preds = %253, %260
  %264 = phi ptr [ %240, %260 ], [ %255, %253 ]
  %265 = phi ptr [ %174, %260 ], [ %178, %253 ]
  %266 = load i64, ptr %265, align 8, !tbaa !14
  %267 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %265, i64 0, i32 1
  %268 = load i64, ptr %267, align 8, !tbaa !15
  %269 = tail call i32 @gx_curve_log2_samples(i64 noundef %266, i64 noundef %268, ptr noundef %264, i64 noundef %16) #8
  store i32 %269, ptr %191, align 4, !tbaa !134
  %270 = load i64, ptr %265, align 8, !tbaa !14
  %271 = load i64, ptr %267, align 8, !tbaa !15
  tail call void @gx_curve_cursor_init(ptr noundef nonnull %192, i64 noundef %270, i64 noundef %271, ptr noundef %264, i32 noundef %269) #8
  br label %272

272:                                              ; preds = %259, %262, %263
  %273 = load i64, ptr %179, align 8, !tbaa !116
  %274 = icmp sgt i64 %273, %52
  br i1 %274, label %275, label %193

275:                                              ; preds = %272, %173
  %276 = phi i64 [ %180, %173 ], [ %273, %272 ]
  %277 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %174, i64 0, i32 1
  %278 = load i64, ptr %277, align 8, !tbaa !80
  %279 = icmp slt i64 %278, %52
  br i1 %279, label %282, label %280

280:                                              ; preds = %275
  %281 = load i64, ptr %174, align 8, !tbaa !108
  br label %322

282:                                              ; preds = %275
  %283 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 8
  %284 = load i32, ptr %283, align 4, !tbaa !134
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %319

286:                                              ; preds = %282
  %287 = icmp eq i64 %52, %276
  br i1 %287, label %288, label %290

288:                                              ; preds = %286
  %289 = load i64, ptr %178, align 8, !tbaa !109
  br label %322

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 3
  %292 = load i64, ptr %291, align 8, !tbaa !118
  %293 = icmp sgt i64 %52, %292
  br i1 %293, label %302, label %294

294:                                              ; preds = %290
  %295 = sub nsw i64 %52, %278
  %296 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 2
  %297 = load i64, ptr %296, align 8, !tbaa !119
  %298 = mul nsw i64 %297, %295
  %299 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 2, i32 1
  %300 = load i64, ptr %299, align 8, !tbaa !120
  %301 = sdiv i64 %298, %300
  br label %315

302:                                              ; preds = %290
  %303 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 2
  %304 = load i64, ptr %303, align 8, !tbaa !119
  %305 = sitofp i64 %304 to double
  %306 = sub nsw i64 %52, %278
  %307 = sitofp i64 %306 to double
  %308 = fmul double %307, %305
  %309 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 2, i32 1
  %310 = load i64, ptr %309, align 8, !tbaa !120
  %311 = sitofp i64 %310 to double
  %312 = fdiv double %308, %311
  %313 = tail call double @llvm.floor.f64(double %312)
  %314 = fptosi double %313 to i64
  br label %315

315:                                              ; preds = %302, %294
  %316 = phi i64 [ %301, %294 ], [ %314, %302 ]
  %317 = load i64, ptr %174, align 8, !tbaa !108
  %318 = add nsw i64 %317, %316
  br label %322

319:                                              ; preds = %282
  %320 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 9
  %321 = tail call i64 @gx_curve_x_at_y(ptr noundef nonnull %320, i64 noundef %52) #8
  br label %322

322:                                              ; preds = %319, %315, %288, %280
  %323 = phi i64 [ %281, %280 ], [ %321, %319 ], [ %289, %288 ], [ %318, %315 ]
  %324 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 4
  store i64 %323, ptr %324, align 8, !tbaa !112
  %325 = icmp slt i64 %323, %175
  br i1 %325, label %326, label %349

326:                                              ; preds = %322, %326
  %327 = phi ptr [ %329, %326 ], [ %174, %322 ]
  %328 = getelementptr inbounds %struct.active_line_s, ptr %327, i64 0, i32 10
  %329 = load ptr, ptr %328, align 8, !tbaa !84
  %330 = getelementptr inbounds %struct.active_line_s, ptr %329, i64 0, i32 4
  %331 = load i64, ptr %330, align 8, !tbaa !112
  %332 = icmp slt i64 %323, %331
  br i1 %332, label %326, label %333, !llvm.loop !136

333:                                              ; preds = %326
  %334 = load ptr, ptr %176, align 8, !tbaa !81
  %335 = getelementptr inbounds %struct.active_line_s, ptr %174, i64 0, i32 10
  %336 = load ptr, ptr %335, align 8, !tbaa !84
  %337 = getelementptr inbounds %struct.active_line_s, ptr %336, i64 0, i32 11
  store ptr %334, ptr %337, align 8, !tbaa !81
  %338 = load ptr, ptr %176, align 8, !tbaa !81
  %339 = icmp eq ptr %338, null
  br i1 %339, label %342, label %340

340:                                              ; preds = %333
  %341 = getelementptr inbounds %struct.active_line_s, ptr %338, i64 0, i32 10
  store ptr %336, ptr %341, align 8, !tbaa !84
  br label %342

342:                                              ; preds = %340, %333
  %343 = getelementptr inbounds %struct.active_line_s, ptr %329, i64 0, i32 11
  %344 = load ptr, ptr %343, align 8, !tbaa !81
  %345 = icmp eq ptr %344, null
  br i1 %345, label %348, label %346

346:                                              ; preds = %342
  %347 = getelementptr inbounds %struct.active_line_s, ptr %344, i64 0, i32 10
  store ptr %174, ptr %347, align 8, !tbaa !84
  br label %348

348:                                              ; preds = %346, %342
  store ptr %344, ptr %176, align 8, !tbaa !81
  store ptr %174, ptr %343, align 8, !tbaa !81
  store ptr %329, ptr %335, align 8, !tbaa !84
  br label %349

349:                                              ; preds = %238, %322, %348
  %350 = phi i64 [ %175, %348 ], [ %323, %322 ], [ %175, %238 ]
  %351 = icmp eq ptr %177, null
  br i1 %351, label %165, label %173, !llvm.loop !137

352:                                              ; preds = %168, %521
  %353 = phi ptr [ %166, %168 ], [ %523, %521 ]
  %354 = phi i32 [ %54, %168 ], [ %520, %521 ]
  %355 = phi i32 [ -2147483648, %168 ], [ %519, %521 ]
  %356 = phi i32 [ 0, %168 ], [ %427, %521 ]
  %357 = getelementptr inbounds %struct.active_line_s, ptr %353, i64 0, i32 4
  %358 = load i64, ptr %357, align 8, !tbaa !112
  %359 = sub i64 %358, %6
  %360 = add i64 %359, 2047
  %361 = lshr i64 %360, 12
  %362 = trunc i64 %361 to i32
  br i1 %29, label %363, label %420

363:                                              ; preds = %352
  %364 = getelementptr inbounds %struct.active_line_s, ptr %353, i64 0, i32 1
  %365 = load i64, ptr %364, align 8, !tbaa !109
  %366 = load i64, ptr %353, align 8, !tbaa !108
  %367 = icmp slt i64 %365, %366
  br i1 %367, label %368, label %420

368:                                              ; preds = %363
  %369 = getelementptr inbounds %struct.active_line_s, ptr %353, i64 0, i32 1, i32 1
  %370 = load i64, ptr %369, align 8, !tbaa !116
  %371 = icmp slt i64 %370, %55
  br i1 %371, label %413, label %372

372:                                              ; preds = %368
  %373 = getelementptr inbounds %struct.active_line_s, ptr %353, i64 0, i32 8
  %374 = load i32, ptr %373, align 4, !tbaa !134
  %375 = icmp slt i32 %374, 0
  br i1 %375, label %376, label %410

376:                                              ; preds = %372
  %377 = icmp eq i64 %55, %370
  br i1 %377, label %413, label %378

378:                                              ; preds = %376
  %379 = getelementptr inbounds %struct.active_line_s, ptr %353, i64 0, i32 3
  %380 = load i64, ptr %379, align 8, !tbaa !118
  %381 = icmp sgt i64 %55, %380
  br i1 %381, label %392, label %382

382:                                              ; preds = %378
  %383 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %353, i64 0, i32 1
  %384 = load i64, ptr %383, align 8, !tbaa !80
  %385 = sub nsw i64 %55, %384
  %386 = getelementptr inbounds %struct.active_line_s, ptr %353, i64 0, i32 2
  %387 = load i64, ptr %386, align 8, !tbaa !119
  %388 = mul nsw i64 %385, %387
  %389 = getelementptr inbounds %struct.active_line_s, ptr %353, i64 0, i32 2, i32 1
  %390 = load i64, ptr %389, align 8, !tbaa !120
  %391 = sdiv i64 %388, %390
  br label %407

392:                                              ; preds = %378
  %393 = getelementptr inbounds %struct.active_line_s, ptr %353, i64 0, i32 2
  %394 = load i64, ptr %393, align 8, !tbaa !119
  %395 = sitofp i64 %394 to double
  %396 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %353, i64 0, i32 1
  %397 = load i64, ptr %396, align 8, !tbaa !80
  %398 = sub nsw i64 %55, %397
  %399 = sitofp i64 %398 to double
  %400 = fmul double %395, %399
  %401 = getelementptr inbounds %struct.active_line_s, ptr %353, i64 0, i32 2, i32 1
  %402 = load i64, ptr %401, align 8, !tbaa !120
  %403 = sitofp i64 %402 to double
  %404 = fdiv double %400, %403
  %405 = tail call double @llvm.floor.f64(double %404)
  %406 = fptosi double %405 to i64
  br label %407

407:                                              ; preds = %392, %382
  %408 = phi i64 [ %391, %382 ], [ %406, %392 ]
  %409 = add nsw i64 %408, %366
  br label %413

410:                                              ; preds = %372
  %411 = getelementptr inbounds %struct.active_line_s, ptr %353, i64 0, i32 9
  %412 = tail call i64 @gx_curve_x_at_y(ptr noundef nonnull %411, i64 noundef %55) #8
  br label %413

413:                                              ; preds = %376, %368, %410, %407
  %414 = phi i64 [ %412, %410 ], [ %409, %407 ], [ %365, %368 ], [ %365, %376 ]
  %415 = sub i64 %414, %6
  %416 = add i64 %415, 2047
  %417 = lshr i64 %416, 12
  %418 = trunc i64 %417 to i32
  %419 = tail call i32 @llvm.smin.i32(i32 %418, i32 %362)
  br label %420

420:                                              ; preds = %413, %363, %352
  %421 = phi i32 [ %419, %413 ], [ %362, %363 ], [ %362, %352 ]
  br label %422

422:                                              ; preds = %430, %420
  %423 = phi ptr [ %353, %420 ], [ %432, %430 ]
  %424 = phi i32 [ %356, %420 ], [ %427, %430 ]
  %425 = getelementptr inbounds %struct.active_line_s, ptr %423, i64 0, i32 7
  %426 = load i32, ptr %425, align 8, !tbaa !77
  %427 = add nsw i32 %426, %424
  %428 = and i32 %427, %12
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %434, label %430

430:                                              ; preds = %422
  %431 = getelementptr inbounds %struct.active_line_s, ptr %423, i64 0, i32 11
  %432 = load ptr, ptr %431, align 8, !tbaa !81
  %433 = icmp eq ptr %432, null
  br i1 %433, label %516, label %422, !llvm.loop !138

434:                                              ; preds = %422
  %435 = tail call i32 @llvm.smax.i32(i32 %421, i32 %355)
  %436 = getelementptr inbounds %struct.active_line_s, ptr %423, i64 0, i32 4
  %437 = load i64, ptr %436, align 8, !tbaa !112
  %438 = add i64 %49, %437
  %439 = lshr i64 %438, 12
  %440 = trunc i64 %439 to i32
  br i1 %29, label %441, label %497

441:                                              ; preds = %434
  %442 = getelementptr inbounds %struct.active_line_s, ptr %423, i64 0, i32 1
  %443 = load i64, ptr %442, align 8, !tbaa !109
  %444 = load i64, ptr %423, align 8, !tbaa !108
  %445 = icmp sgt i64 %443, %444
  br i1 %445, label %446, label %497

446:                                              ; preds = %441
  %447 = getelementptr inbounds %struct.active_line_s, ptr %423, i64 0, i32 1, i32 1
  %448 = load i64, ptr %447, align 8, !tbaa !116
  %449 = icmp slt i64 %448, %55
  br i1 %449, label %491, label %450

450:                                              ; preds = %446
  %451 = getelementptr inbounds %struct.active_line_s, ptr %423, i64 0, i32 8
  %452 = load i32, ptr %451, align 4, !tbaa !134
  %453 = icmp slt i32 %452, 0
  br i1 %453, label %454, label %488

454:                                              ; preds = %450
  %455 = icmp eq i64 %55, %448
  br i1 %455, label %491, label %456

456:                                              ; preds = %454
  %457 = getelementptr inbounds %struct.active_line_s, ptr %423, i64 0, i32 3
  %458 = load i64, ptr %457, align 8, !tbaa !118
  %459 = icmp sgt i64 %55, %458
  br i1 %459, label %470, label %460

460:                                              ; preds = %456
  %461 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %423, i64 0, i32 1
  %462 = load i64, ptr %461, align 8, !tbaa !80
  %463 = sub nsw i64 %55, %462
  %464 = getelementptr inbounds %struct.active_line_s, ptr %423, i64 0, i32 2
  %465 = load i64, ptr %464, align 8, !tbaa !119
  %466 = mul nsw i64 %463, %465
  %467 = getelementptr inbounds %struct.active_line_s, ptr %423, i64 0, i32 2, i32 1
  %468 = load i64, ptr %467, align 8, !tbaa !120
  %469 = sdiv i64 %466, %468
  br label %485

470:                                              ; preds = %456
  %471 = getelementptr inbounds %struct.active_line_s, ptr %423, i64 0, i32 2
  %472 = load i64, ptr %471, align 8, !tbaa !119
  %473 = sitofp i64 %472 to double
  %474 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %423, i64 0, i32 1
  %475 = load i64, ptr %474, align 8, !tbaa !80
  %476 = sub nsw i64 %55, %475
  %477 = sitofp i64 %476 to double
  %478 = fmul double %473, %477
  %479 = getelementptr inbounds %struct.active_line_s, ptr %423, i64 0, i32 2, i32 1
  %480 = load i64, ptr %479, align 8, !tbaa !120
  %481 = sitofp i64 %480 to double
  %482 = fdiv double %478, %481
  %483 = tail call double @llvm.floor.f64(double %482)
  %484 = fptosi double %483 to i64
  br label %485

485:                                              ; preds = %470, %460
  %486 = phi i64 [ %469, %460 ], [ %484, %470 ]
  %487 = add nsw i64 %486, %444
  br label %491

488:                                              ; preds = %450
  %489 = getelementptr inbounds %struct.active_line_s, ptr %423, i64 0, i32 9
  %490 = tail call i64 @gx_curve_x_at_y(ptr noundef nonnull %489, i64 noundef %55) #8
  br label %491

491:                                              ; preds = %454, %446, %488, %485
  %492 = phi i64 [ %490, %488 ], [ %487, %485 ], [ %443, %446 ], [ %443, %454 ]
  %493 = add i64 %50, %492
  %494 = lshr i64 %493, 12
  %495 = trunc i64 %494 to i32
  %496 = tail call i32 @llvm.smax.i32(i32 %495, i32 %440)
  br label %497

497:                                              ; preds = %491, %441, %434
  %498 = phi i32 [ %496, %491 ], [ %440, %441 ], [ %440, %434 ]
  %499 = icmp sgt i32 %498, %435
  br i1 %499, label %500, label %516

500:                                              ; preds = %497
  br i1 %21, label %501, label %504

501:                                              ; preds = %500
  %502 = sub nsw i32 %498, %435
  %503 = tail call i32 %38(ptr noundef %1, i32 noundef %435, i32 noundef %172, i32 noundef %502, i32 noundef 1, i64 noundef %39) #8
  br label %510

504:                                              ; preds = %500
  %505 = load ptr, ptr %3, align 8, !tbaa !99
  %506 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %505, i64 0, i32 1
  %507 = load ptr, ptr %506, align 8, !tbaa !110
  %508 = sub nsw i32 %498, %435
  %509 = tail call i32 %507(ptr noundef nonnull %3, i32 noundef %435, i32 noundef %170, i32 noundef %508, i32 noundef 1, ptr noundef %1, i32 noundef %4, ptr noundef null) #8
  br label %510

510:                                              ; preds = %504, %501
  %511 = phi i32 [ %503, %501 ], [ %509, %504 ]
  %512 = icmp slt i32 %511, 0
  %513 = select i1 %512, i32 %355, i32 %498
  %514 = select i1 %512, i32 %511, i32 %354
  %515 = lshr i32 %511, 31
  br label %516

516:                                              ; preds = %430, %510, %497
  %517 = phi ptr [ %423, %497 ], [ %423, %510 ], [ null, %430 ]
  %518 = phi i32 [ 0, %497 ], [ %515, %510 ], [ 25, %430 ]
  %519 = phi i32 [ %355, %497 ], [ %513, %510 ], [ %355, %430 ]
  %520 = phi i32 [ %354, %497 ], [ %514, %510 ], [ %354, %430 ]
  switch i32 %518, label %526 [
    i32 0, label %521
    i32 25, label %525
  ]

521:                                              ; preds = %516
  %522 = getelementptr inbounds %struct.active_line_s, ptr %517, i64 0, i32 11
  %523 = load ptr, ptr %522, align 8, !tbaa !81
  %524 = icmp eq ptr %523, null
  br i1 %524, label %525, label %352, !llvm.loop !139

525:                                              ; preds = %516, %521
  br label %526

526:                                              ; preds = %516, %525, %165
  %527 = phi i32 [ 0, %165 ], [ 0, %525 ], [ %518, %516 ]
  %528 = phi i32 [ %54, %165 ], [ %520, %525 ], [ %520, %516 ]
  %529 = icmp eq i32 %527, 0
  %530 = add nsw i64 %52, 4096
  %531 = select i1 %529, i64 %530, i64 %52
  br label %532

532:                                              ; preds = %526, %157, %150, %158
  %533 = phi i32 [ 2, %158 ], [ 3, %150 ], [ 3, %157 ], [ %527, %526 ]
  %534 = phi i64 [ %164, %158 ], [ %52, %150 ], [ %52, %157 ], [ %531, %526 ]
  %535 = phi i32 [ %54, %158 ], [ %54, %150 ], [ %54, %157 ], [ %528, %526 ]
  switch i32 %533, label %538 [
    i32 0, label %536
    i32 3, label %537
    i32 2, label %536
  ]

536:                                              ; preds = %532, %532
  br label %51, !llvm.loop !135

537:                                              ; preds = %532
  br label %538

538:                                              ; preds = %532, %537, %11
  %539 = phi i32 [ 0, %11 ], [ 0, %537 ], [ %535, %532 ]
  ret i32 %539
}

declare void @gx_path_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @add_y_line(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.line_list_s, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.line_list_s, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = load ptr, ptr %3, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = tail call ptr %13(ptr noundef %11, ptr noundef nonnull @st_active_line, ptr noundef nonnull @.str) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %120, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.line_list_s, ptr %3, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.active_line_s, ptr %14, i64 0, i32 12
  store ptr %18, ptr %19, align 8, !tbaa !75
  store ptr %14, ptr %17, align 8, !tbaa !52
  br label %22

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.active_line_s, ptr %6, i64 1
  store ptr %21, ptr %5, align 8, !tbaa !53
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi ptr [ %14, %16 ], [ %6, %20 ]
  %24 = getelementptr inbounds %struct.segment_s, ptr %1, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !76
  %26 = getelementptr inbounds %struct.segment_s, ptr %1, i64 0, i32 4, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !71
  %28 = getelementptr inbounds %struct.segment_s, ptr %0, i64 0, i32 4
  %29 = load i64, ptr %28, align 8, !tbaa !76
  %30 = getelementptr inbounds %struct.segment_s, ptr %0, i64 0, i32 4, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !71
  %32 = getelementptr inbounds %struct.active_line_s, ptr %23, i64 0, i32 7
  store i32 %2, ptr %32, align 8, !tbaa !77
  switch i32 %2, label %51 [
    i32 1, label %33
    i32 -1, label %42
    i32 0, label %60
  ]

33:                                               ; preds = %22
  %34 = sub nsw i64 %25, %29
  %35 = getelementptr inbounds %struct.active_line_s, ptr %23, i64 0, i32 2
  store i64 %34, ptr %35, align 8, !tbaa !119
  %36 = tail call i64 @llvm.abs.i64(i64 %34, i1 true)
  %37 = or i64 %36, 1
  %38 = udiv i64 9223372036854775807, %37
  %39 = add nsw i64 %38, %31
  %40 = getelementptr inbounds %struct.active_line_s, ptr %23, i64 0, i32 3
  store i64 %39, ptr %40, align 8, !tbaa !118
  %41 = sub nsw i64 %27, %31
  br label %52

42:                                               ; preds = %22
  %43 = sub nsw i64 %29, %25
  %44 = getelementptr inbounds %struct.active_line_s, ptr %23, i64 0, i32 2
  store i64 %43, ptr %44, align 8, !tbaa !119
  %45 = tail call i64 @llvm.abs.i64(i64 %43, i1 true)
  %46 = or i64 %45, 1
  %47 = udiv i64 9223372036854775807, %46
  %48 = add nsw i64 %47, %27
  %49 = getelementptr inbounds %struct.active_line_s, ptr %23, i64 0, i32 3
  store i64 %48, ptr %49, align 8, !tbaa !118
  %50 = sub nsw i64 %31, %27
  br label %52

51:                                               ; preds = %22
  unreachable

52:                                               ; preds = %33, %42
  %53 = phi i64 [ %50, %42 ], [ %41, %33 ]
  %54 = phi i64 [ %25, %42 ], [ %29, %33 ]
  %55 = phi i64 [ %27, %42 ], [ %31, %33 ]
  %56 = phi i64 [ %29, %42 ], [ %25, %33 ]
  %57 = phi i64 [ %31, %42 ], [ %27, %33 ]
  %58 = phi ptr [ %0, %42 ], [ %1, %33 ]
  %59 = getelementptr inbounds %struct.active_line_s, ptr %23, i64 0, i32 2, i32 1
  store i64 %53, ptr %59, align 8, !tbaa !120
  br label %60

60:                                               ; preds = %52, %22
  %61 = phi i64 [ %29, %22 ], [ %54, %52 ]
  %62 = phi i64 [ %31, %22 ], [ %55, %52 ]
  %63 = phi i64 [ %25, %22 ], [ %56, %52 ]
  %64 = phi i64 [ %27, %22 ], [ %57, %52 ]
  %65 = phi ptr [ %0, %22 ], [ %58, %52 ]
  %66 = phi i64 [ %27, %22 ], [ %55, %52 ]
  store i64 %61, ptr %23, align 8
  %67 = getelementptr inbounds i8, ptr %23, i64 8
  store i64 %62, ptr %67, align 8
  %68 = getelementptr inbounds %struct.active_line_s, ptr %23, i64 0, i32 1
  store i64 %63, ptr %68, align 8
  %69 = getelementptr inbounds %struct.active_line_s, ptr %23, i64 0, i32 1, i32 1
  store i64 %64, ptr %69, align 8
  %70 = getelementptr inbounds %struct.active_line_s, ptr %23, i64 0, i32 6
  store ptr %65, ptr %70, align 8, !tbaa !78
  %71 = getelementptr inbounds %struct.line_list_s, ptr %3, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !79
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %60
  %75 = getelementptr inbounds %struct.active_line_s, ptr %23, i64 0, i32 10
  %76 = getelementptr inbounds %struct.line_list_s, ptr %3, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %75, i8 0, i64 16, i1 false)
  br label %118

77:                                               ; preds = %60
  %78 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %72, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !80
  %80 = icmp slt i64 %66, %79
  br i1 %80, label %95, label %81

81:                                               ; preds = %77, %86
  %82 = phi ptr [ %84, %86 ], [ %72, %77 ]
  %83 = getelementptr inbounds %struct.active_line_s, ptr %82, i64 0, i32 11
  %84 = load ptr, ptr %83, align 8, !tbaa !81
  %85 = icmp eq ptr %84, null
  br i1 %85, label %114, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %84, i64 0, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !80
  %89 = icmp sgt i64 %66, %88
  br i1 %89, label %81, label %90, !llvm.loop !82

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.active_line_s, ptr %82, i64 0, i32 11
  %92 = getelementptr inbounds %struct.active_line_s, ptr %23, i64 0, i32 11
  store ptr %84, ptr %92, align 8, !tbaa !81
  %93 = getelementptr inbounds %struct.active_line_s, ptr %23, i64 0, i32 10
  store ptr %82, ptr %93, align 8, !tbaa !84
  store ptr %23, ptr %91, align 8, !tbaa !81
  %94 = getelementptr inbounds %struct.active_line_s, ptr %84, i64 0, i32 10
  br label %118

95:                                               ; preds = %77, %100
  %96 = phi ptr [ %98, %100 ], [ %72, %77 ]
  %97 = getelementptr inbounds %struct.active_line_s, ptr %96, i64 0, i32 10
  %98 = load ptr, ptr %97, align 8, !tbaa !84
  %99 = icmp eq ptr %98, null
  br i1 %99, label %109, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %98, i64 0, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !80
  %103 = icmp slt i64 %66, %102
  br i1 %103, label %95, label %104, !llvm.loop !85

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.active_line_s, ptr %96, i64 0, i32 10
  %106 = getelementptr inbounds %struct.active_line_s, ptr %23, i64 0, i32 10
  store ptr %98, ptr %106, align 8, !tbaa !84
  %107 = getelementptr inbounds %struct.active_line_s, ptr %23, i64 0, i32 11
  store ptr %96, ptr %107, align 8, !tbaa !81
  store ptr %23, ptr %105, align 8, !tbaa !84
  %108 = getelementptr inbounds %struct.active_line_s, ptr %98, i64 0, i32 11
  br label %118

109:                                              ; preds = %95
  %110 = getelementptr inbounds %struct.active_line_s, ptr %96, i64 0, i32 10
  %111 = getelementptr inbounds %struct.active_line_s, ptr %23, i64 0, i32 10
  store ptr %98, ptr %111, align 8, !tbaa !84
  %112 = getelementptr inbounds %struct.active_line_s, ptr %23, i64 0, i32 11
  store ptr %96, ptr %112, align 8, !tbaa !81
  store ptr %23, ptr %110, align 8, !tbaa !84
  %113 = getelementptr inbounds %struct.line_list_s, ptr %3, i64 0, i32 5
  br label %118

114:                                              ; preds = %81
  %115 = getelementptr inbounds %struct.active_line_s, ptr %82, i64 0, i32 11
  %116 = getelementptr inbounds %struct.active_line_s, ptr %23, i64 0, i32 11
  store ptr %84, ptr %116, align 8, !tbaa !81
  %117 = getelementptr inbounds %struct.active_line_s, ptr %23, i64 0, i32 10
  store ptr %82, ptr %117, align 8, !tbaa !84
  br label %118

118:                                              ; preds = %114, %90, %109, %104, %74
  %119 = phi ptr [ %115, %114 ], [ %94, %90 ], [ %113, %109 ], [ %108, %104 ], [ %76, %74 ]
  store ptr %23, ptr %119, align 8, !tbaa !86
  store ptr %23, ptr %71, align 8, !tbaa !79
  br label %120

120:                                              ; preds = %10, %118
  %121 = phi i32 [ 0, %118 ], [ -25, %10 ]
  ret i32 %121
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

declare i64 @gx_curve_x_at_y(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @gx_curve_log2_samples(i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @gx_curve_cursor_init(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fill_slant_adjust(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr nocapture noundef readonly %8, ptr noundef %9, ptr noundef %10, i32 noundef %11) unnamed_addr #2 {
  %13 = alloca %struct.gs_fixed_edge_s, align 8
  %14 = alloca %struct.gs_fixed_edge_s, align 8
  %15 = alloca %struct.gs_fixed_edge_s, align 8
  %16 = alloca %struct.gs_fixed_edge_s, align 8
  %17 = add nsw i64 %5, %2
  %18 = getelementptr inbounds %struct.gx_device_s, ptr %10, i64 0, i32 21, i32 27
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = sub nsw i64 %2, %6
  %21 = add nsw i64 %7, %2
  %22 = sub nsw i64 %17, %6
  %23 = add nsw i64 %17, %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #8
  %24 = icmp slt i64 %0, %3
  %25 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %13, i64 0, i32 1
  %26 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %13, i64 0, i32 1
  %27 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %13, i64 0, i32 1, i32 1
  %28 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %15, i64 0, i32 1
  %29 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %15, i64 0, i32 1
  %30 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %15, i64 0, i32 1, i32 1
  %31 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %14, i64 0, i32 1
  %32 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %14, i64 0, i32 1, i32 1
  %33 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %16, i64 0, i32 1
  %34 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %16, i64 0, i32 1, i32 1
  %35 = select i1 %24, i64 %0, i64 %3
  %36 = select i1 %24, i64 %20, i64 %22
  %37 = select i1 %24, i64 %21, i64 %23
  %38 = select i1 %24, i64 %4, i64 %1
  %39 = select i1 %24, i64 %22, i64 %20
  %40 = select i1 %24, i64 %23, i64 %21
  %41 = select i1 %24, i64 %21, i64 %20
  %42 = select i1 %24, i64 %23, i64 %22
  %43 = select i1 %24, i64 %20, i64 %21
  %44 = select i1 %24, i64 %22, i64 %23
  %45 = select i1 %24, ptr %15, ptr %16
  %46 = select i1 %24, ptr %14, ptr %13
  %47 = select i1 %24, ptr %16, ptr %15
  %48 = select i1 %24, ptr %13, ptr %14
  store i64 %35, ptr %25, align 8, !tbaa !129
  store i64 %35, ptr %13, align 8, !tbaa !128
  store i64 %36, ptr %26, align 8, !tbaa !125
  store i64 %37, ptr %27, align 8, !tbaa !127
  store i64 %38, ptr %28, align 8, !tbaa !129
  store i64 %38, ptr %15, align 8, !tbaa !128
  store i64 %39, ptr %29, align 8, !tbaa !125
  store i64 %40, ptr %30, align 8, !tbaa !127
  store i64 %41, ptr %31, align 8, !tbaa !125
  store i64 %42, ptr %32, align 8, !tbaa !127
  store i64 %43, ptr %33, align 8, !tbaa !125
  store i64 %44, ptr %34, align 8, !tbaa !127
  store i64 %0, ptr %14, align 8, !tbaa !128
  %49 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %14, i64 0, i32 1
  store i64 %3, ptr %49, align 8, !tbaa !129
  store i64 %1, ptr %16, align 8, !tbaa !128
  %50 = getelementptr inbounds %struct.gs_fixed_edge_s, ptr %16, i64 0, i32 1
  store i64 %4, ptr %50, align 8, !tbaa !129
  %51 = icmp slt i64 %21, %22
  br i1 %51, label %96, label %52

52:                                               ; preds = %12
  %53 = add nsw i64 %20, 2047
  %54 = lshr i64 %53, 12
  %55 = trunc i64 %54 to i32
  %56 = add nsw i64 %21, 2047
  %57 = lshr i64 %56, 12
  %58 = trunc i64 %57 to i32
  %59 = add nsw i64 %22, 2047
  %60 = lshr i64 %59, 12
  %61 = trunc i64 %60 to i32
  %62 = add nsw i64 %23, 2047
  %63 = lshr i64 %62, 12
  %64 = trunc i64 %63 to i32
  %65 = icmp sgt i32 %61, %55
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = call i32 %19(ptr noundef %10, ptr noundef nonnull %48, ptr noundef nonnull %47, i64 noundef %20, i64 noundef %22, i32 noundef 0, ptr noundef %9, i32 noundef %11) #8
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %92, label %69

69:                                               ; preds = %66, %52
  %70 = icmp sgt i32 %58, %61
  br i1 %70, label %71, label %87

71:                                               ; preds = %69
  %72 = load i64, ptr %13, align 8, !tbaa !128
  %73 = add nsw i64 %72, 2047
  %74 = lshr i64 %73, 12
  %75 = trunc i64 %74 to i32
  %76 = load i64, ptr %15, align 8, !tbaa !128
  %77 = add nsw i64 %76, 2047
  %78 = lshr i64 %77, 12
  %79 = trunc i64 %78 to i32
  %80 = sub nsw i32 %79, %75
  %81 = load ptr, ptr %9, align 8, !tbaa !99
  %82 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !110
  %84 = sub nsw i32 %58, %61
  %85 = call i32 %83(ptr noundef nonnull %9, i32 noundef %75, i32 noundef %61, i32 noundef %80, i32 noundef %84, ptr noundef %10, i32 noundef %11, ptr noundef null) #8
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %87, label %92

87:                                               ; preds = %71, %69
  %88 = phi i32 [ %85, %71 ], [ undef, %69 ]
  %89 = icmp sgt i32 %64, %58
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = call i32 %19(ptr noundef %10, ptr noundef nonnull %46, ptr noundef nonnull %45, i64 noundef %21, i64 noundef %23, i32 noundef 0, ptr noundef %9, i32 noundef %11) #8
  br label %92

92:                                               ; preds = %90, %87, %66, %71
  %93 = phi i32 [ %85, %71 ], [ %67, %66 ], [ %91, %90 ], [ 0, %87 ]
  %94 = phi i1 [ false, %71 ], [ false, %66 ], [ true, %90 ], [ true, %87 ]
  %95 = phi i32 [ %85, %71 ], [ %67, %66 ], [ %88, %90 ], [ %88, %87 ]
  br i1 %94, label %119, label %121

96:                                               ; preds = %12
  %97 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %8, i64 0, i32 1
  %98 = load i64, ptr %97, align 8, !tbaa !13
  %99 = icmp slt i64 %98, %21
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = call i32 %19(ptr noundef %10, ptr noundef nonnull %48, ptr noundef nonnull %47, i64 noundef %20, i64 noundef %21, i32 noundef 0, ptr noundef %9, i32 noundef %11) #8
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %96, %100
  %104 = phi i64 [ %21, %100 ], [ %98, %96 ]
  %105 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %8, i64 0, i32 1, i32 1
  %106 = load i64, ptr %105, align 8, !tbaa !12
  %107 = icmp sgt i64 %106, %22
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = call i32 %19(ptr noundef %10, ptr noundef nonnull %14, ptr noundef nonnull %16, i64 noundef %104, i64 noundef %22, i32 noundef 0, ptr noundef %9, i32 noundef %11) #8
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = call i32 %19(ptr noundef %10, ptr noundef nonnull %46, ptr noundef nonnull %45, i64 noundef %22, i64 noundef %23, i32 noundef 0, ptr noundef %9, i32 noundef %11) #8
  br label %115

113:                                              ; preds = %103
  %114 = call i32 %19(ptr noundef %10, ptr noundef nonnull %14, ptr noundef nonnull %16, i64 noundef %104, i64 noundef %106, i32 noundef 0, ptr noundef %9, i32 noundef %11) #8
  br label %115

115:                                              ; preds = %111, %113, %108, %100
  %116 = phi i32 [ %101, %100 ], [ %109, %108 ], [ %112, %111 ], [ %114, %113 ]
  %117 = phi i1 [ false, %100 ], [ false, %108 ], [ true, %111 ], [ true, %113 ]
  %118 = phi i32 [ %101, %100 ], [ %109, %108 ], [ undef, %111 ], [ undef, %113 ]
  br i1 %117, label %119, label %121

119:                                              ; preds = %115, %92
  %120 = phi i32 [ %93, %92 ], [ %116, %115 ]
  br label %121

121:                                              ; preds = %92, %115, %119
  %122 = phi i32 [ %120, %119 ], [ %95, %92 ], [ %118, %115 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #8
  ret i32 %122
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 16}
!6 = !{!"gs_fixed_rect_s", !7, i64 0, !7, i64 16}
!7 = !{!"gs_fixed_point_s", !8, i64 0, !8, i64 8}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!6, !8, i64 0}
!12 = !{!6, !8, i64 24}
!13 = !{!6, !8, i64 8}
!14 = !{!7, !8, i64 0}
!15 = !{!7, !8, i64 8}
!16 = !{!17, !21, i64 128}
!17 = !{!"gs_imager_state_s", !18, i64 0, !19, i64 8, !23, i64 80, !21, i64 128, !24, i64 132, !21, i64 136, !20, i64 140, !7, i64 144, !21, i64 160, !21, i64 164, !18, i64 168, !9, i64 176, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !18, i64 224, !9, i64 232, !9, i64 264, !18, i64 296, !18, i64 304, !18, i64 312}
!18 = !{!"any pointer", !9, i64 0}
!19 = !{!"gx_line_params_s", !20, i64 0, !21, i64 4, !21, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !20, i64 24, !22, i64 32}
!20 = !{!"float", !9, i64 0}
!21 = !{!"int", !9, i64 0}
!22 = !{!"gx_dash_params_s", !18, i64 0, !21, i64 8, !20, i64 12, !21, i64 16, !20, i64 20, !21, i64 24, !21, i64 28, !20, i64 32}
!23 = !{!"gs_matrix_fixed_s", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !8, i64 24, !8, i64 32, !21, i64 40}
!24 = !{!"short", !9, i64 0}
!25 = !{!26, !21, i64 44}
!26 = !{!"gx_device_s", !21, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !21, i64 40, !21, i64 44, !27, i64 48, !21, i64 64, !21, i64 68, !9, i64 72, !9, i64 80, !21, i64 96, !9, i64 100, !9, i64 108, !9, i64 116, !9, i64 124, !8, i64 144, !8, i64 152, !21, i64 160, !28, i64 168, !29, i64 192}
!27 = !{!"gx_device_color_info_s", !21, i64 0, !21, i64 4, !24, i64 8, !24, i64 10, !24, i64 12, !24, i64 14}
!28 = !{!"gx_page_device_procs_s", !18, i64 0, !18, i64 8, !18, i64 16}
!29 = !{!"gx_device_procs_s", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !18, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !18, i64 272, !18, i64 280, !18, i64 288}
!30 = !{i64 0, i64 8, !31, i64 8, i64 8, !31}
!31 = !{!8, !8, i64 0}
!32 = !{i64 0, i64 8, !31}
!33 = !{!34, !21, i64 28}
!34 = !{!"gx_fill_params_s", !21, i64 0, !7, i64 8, !20, i64 24, !21, i64 28}
!35 = !{!26, !18, i64 480}
!36 = !{!37, !18, i64 488}
!37 = !{!"gx_device_clip_s", !21, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !21, i64 40, !21, i64 44, !27, i64 48, !21, i64 64, !21, i64 68, !9, i64 72, !9, i64 80, !21, i64 96, !9, i64 100, !9, i64 108, !9, i64 116, !9, i64 124, !8, i64 144, !8, i64 152, !21, i64 160, !28, i64 168, !29, i64 192, !18, i64 488, !38, i64 496, !18, i64 560, !40, i64 568}
!38 = !{!"gx_clip_list_s", !39, i64 0, !18, i64 40, !18, i64 48, !21, i64 56, !21, i64 60}
!39 = !{!"gx_clip_rect_s", !18, i64 0, !18, i64 8, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28, !9, i64 32}
!40 = !{!"gs_int_point_s", !21, i64 0, !21, i64 4}
!41 = !{!37, !21, i64 44}
!42 = !{!26, !18, i64 192}
!43 = !{!44, !18, i64 0}
!44 = !{!"gx_path_s", !18, i64 0, !6, i64 8, !18, i64 40, !18, i64 48, !18, i64 56, !21, i64 64, !21, i64 68, !7, i64 72, !45, i64 88, !45, i64 104, !9, i64 120, !9, i64 121, !9, i64 122, !9, i64 123}
!45 = !{!"gs_point_s", !46, i64 0, !46, i64 8}
!46 = !{!"double", !9, i64 0}
!47 = !{!48, !18, i64 0}
!48 = !{!"line_list_s", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !21, i64 32, !18, i64 40, !18, i64 48, !49, i64 56, !9, i64 288}
!49 = !{!"active_line_s", !7, i64 0, !7, i64 16, !7, i64 32, !8, i64 48, !8, i64 56, !8, i64 64, !18, i64 72, !21, i64 80, !21, i64 84, !50, i64 88, !18, i64 208, !18, i64 216, !18, i64 224}
!50 = !{!"curve_cursor_s", !21, i64 0, !7, i64 8, !18, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !21, i64 80, !21, i64 84, !51, i64 88}
!51 = !{!"ccc_", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!52 = !{!48, !18, i64 8}
!53 = !{!48, !18, i64 16}
!54 = !{!48, !18, i64 24}
!55 = !{!48, !21, i64 32}
!56 = !{!44, !21, i64 68}
!57 = !{!34, !20, i64 24}
!58 = !{!17, !21, i64 164}
!59 = !{!44, !18, i64 48}
!60 = !{!61, !18, i64 40}
!61 = !{!"subpath_s", !18, i64 0, !18, i64 8, !24, i64 16, !24, i64 18, !7, i64 24, !18, i64 40, !21, i64 48, !62, i64 56, !9, i64 104}
!62 = !{!"", !18, i64 0, !18, i64 8, !24, i64 16, !24, i64 18, !7, i64 24, !18, i64 40}
!63 = !{!64, !24, i64 16}
!64 = !{!"segment_s", !18, i64 0, !18, i64 8, !24, i64 16, !24, i64 18, !7, i64 24}
!65 = !{!64, !18, i64 8}
!66 = !{!62, !18, i64 8}
!67 = !{!62, !18, i64 0}
!68 = !{!64, !18, i64 0}
!69 = !{!62, !24, i64 16}
!70 = !{!62, !18, i64 40}
!71 = !{!64, !8, i64 32}
!72 = !{!73, !18, i64 16}
!73 = !{!"gs_memory_s", !74, i64 0}
!74 = !{!"gs_memory_procs_s", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152}
!75 = !{!49, !18, i64 224}
!76 = !{!64, !8, i64 24}
!77 = !{!49, !21, i64 80}
!78 = !{!49, !18, i64 72}
!79 = !{!48, !18, i64 48}
!80 = !{!49, !8, i64 8}
!81 = !{!49, !18, i64 216}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!49, !18, i64 208}
!85 = distinct !{!85, !83}
!86 = !{!18, !18, i64 0}
!87 = !{i32 -25, i32 1}
!88 = !{!61, !18, i64 8}
!89 = distinct !{!89, !83}
!90 = distinct !{!90, !83}
!91 = !{ptr @fill_loop_by_scan_lines, ptr @fill_loop_by_trapezoids}
!92 = !{!61, !18, i64 56}
!93 = !{!61, !18, i64 64}
!94 = distinct !{!94, !83}
!95 = !{!73, !18, i64 88}
!96 = distinct !{!96, !83}
!97 = !{!34, !21, i64 0}
!98 = !{!48, !18, i64 40}
!99 = !{!100, !18, i64 0}
!100 = !{!"gx_device_color_s", !18, i64 0, !9, i64 8, !40, i64 48, !101, i64 56}
!101 = !{!"_mask", !102, i64 0, !8, i64 24, !18, i64 32}
!102 = !{!"gs_client_color_s", !103, i64 0, !18, i64 16}
!103 = !{!"gs_paint_color_s", !9, i64 0}
!104 = !{!9, !9, i64 0}
!105 = !{!26, !18, i64 248}
!106 = !{!48, !18, i64 272}
!107 = !{!48, !8, i64 112}
!108 = !{!49, !8, i64 0}
!109 = !{!49, !8, i64 16}
!110 = !{!111, !18, i64 8}
!111 = !{!"gx_device_color_procs_s", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32}
!112 = !{!49, !8, i64 56}
!113 = distinct !{!113, !83}
!114 = distinct !{!114, !83}
!115 = distinct !{!115, !83}
!116 = !{!49, !8, i64 24}
!117 = distinct !{!117, !83}
!118 = !{!49, !8, i64 48}
!119 = !{!49, !8, i64 32}
!120 = !{!49, !8, i64 40}
!121 = !{!49, !8, i64 64}
!122 = distinct !{!122, !83}
!123 = distinct !{!123, !83}
!124 = distinct !{!124, !83}
!125 = !{!126, !8, i64 8}
!126 = !{!"gs_fixed_edge_s", !7, i64 0, !7, i64 16}
!127 = !{!126, !8, i64 24}
!128 = !{!126, !8, i64 0}
!129 = !{!126, !8, i64 16}
!130 = !{!26, !18, i64 408}
!131 = distinct !{!131, !83}
!132 = distinct !{!132, !83}
!133 = distinct !{!133, !83}
!134 = !{!49, !21, i64 84}
!135 = distinct !{!135, !83}
!136 = distinct !{!136, !83}
!137 = distinct !{!137, !83}
!138 = distinct !{!138, !83}
!139 = distinct !{!139, !83}
