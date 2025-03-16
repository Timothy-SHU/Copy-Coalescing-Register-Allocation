; ModuleID = 'gximage2.c'
source_filename = "gximage2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_image_strategies_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.gs_int_point_s = type { i32, i32 }
%struct.sample_map_s = type { %union.sample_lookup_s, [16 x float], double, i32 }
%union.sample_lookup_s = type { [16 x i32], [192 x i8] }
%struct.gx_image_clue_s = type { %struct.gx_device_color_s, i32 }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_strip_bitmap_s = type { ptr, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16 }

@image_strategies = external local_unnamed_addr global %struct.gx_image_strategies_s, align 8
@gx_dc_procs_pure = external constant %struct.gx_device_color_procs_s, align 8
@gx_dc_procs_none = external constant %struct.gx_device_color_procs_s, align 8
@gx_dc_procs_ht_binary = external constant %struct.gx_device_color_procs_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @gs_gximage2_init(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store ptr @image_strategy_mono, ptr getelementptr inbounds (%struct.gx_image_strategies_s, ptr @image_strategies, i64 0, i32 3), align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @image_strategy_mono(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 2, !tbaa !10
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 255
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  %8 = icmp eq ptr %7, @gx_dc_procs_pure
  br i1 %8, label %9, label %14

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 24
  %11 = load i8, ptr %10, align 4, !tbaa !31
  %12 = icmp ne i8 %11, 0
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i8 [ 1, %5 ], [ %13, %9 ]
  %16 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 26
  store i8 %15, ptr %16, align 2, !tbaa !32
  %17 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 3
  %18 = load i8, ptr %17, align 1, !tbaa !33
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = icmp eq i8 %15, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 23
  %24 = load i32, ptr %23, align 8, !tbaa !34
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 25
  %28 = load i8, ptr %27, align 1, !tbaa !35
  %29 = and i8 %28, -4
  store i8 %29, ptr %27, align 1, !tbaa !35
  br label %30

30:                                               ; preds = %26, %22, %20
  %31 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 8
  %32 = load float, ptr %31, align 8, !tbaa !36
  %33 = fpext float %32 to double
  %34 = fadd double %33, 0x3F20000000000000
  %35 = fmul double %34, 4.096000e+03
  %36 = fptosi double %35 to i64
  %37 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 32
  store i64 %36, ptr %37, align 8, !tbaa !37
  br label %38

38:                                               ; preds = %14, %30
  %39 = phi ptr [ @image_render_mono, %30 ], [ null, %14 ]
  ret ptr %39
}

; Function Attrs: nounwind uwtable
define internal i32 @image_render_mono(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #2 {
  %7 = alloca %struct.gs_client_color_s, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 30
  %13 = load i32, ptr %12, align 8, !tbaa !39
  %14 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 6
  %15 = load i8, ptr %14, align 2, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  %16 = tail call ptr @gx_device_cmap_procs(ptr noundef %5) #7
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  %18 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49
  %19 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 255
  %20 = tail call i32 @gx_check_tile_cache(ptr noundef %11) #7
  %21 = sext i32 %2 to i64
  %22 = getelementptr inbounds i8, ptr %1, i64 %21
  %23 = zext i32 %3 to i64
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  %25 = icmp ne i8 %15, 0
  %26 = select i1 %25, i32 255, i32 -2
  %27 = icmp eq i32 %4, 0
  br i1 %27, label %1023, label %28

28:                                               ; preds = %6
  %29 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40
  %30 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa.struct !42
  %32 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 0, i32 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa.struct !45
  %34 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa.struct !46
  %36 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 0, i32 1, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa.struct !47
  %38 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 0, i32 1, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa.struct !48
  %40 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa.struct !49
  %42 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1, i32 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa.struct !50
  %44 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa.struct !51
  %46 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1, i32 1, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa.struct !52
  %48 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1, i32 1, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa.struct !53
  br i1 %25, label %56, label %50

50:                                               ; preds = %28
  %51 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 15
  %52 = load ptr, ptr %51, align 8, !tbaa !54
  %53 = load ptr, ptr %52, align 8, !tbaa !55
  %54 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %53, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !57
  br label %56

56:                                               ; preds = %50, %28
  %57 = phi ptr [ undef, %28 ], [ %55, %50 ]
  %58 = phi ptr [ undef, %28 ], [ %52, %50 ]
  %59 = load i8, ptr %22, align 1, !tbaa !59
  %60 = getelementptr inbounds i8, ptr %24, i64 -1
  %61 = load i8, ptr %60, align 1, !tbaa !59
  br label %62

62:                                               ; preds = %65, %56
  %63 = phi ptr [ %24, %56 ], [ %66, %65 ]
  %64 = icmp ugt ptr %63, %22
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = getelementptr inbounds i8, ptr %63, i64 -1
  %67 = load i8, ptr %66, align 1, !tbaa !59
  %68 = icmp eq i8 %67, %61
  br i1 %68, label %62, label %69, !llvm.loop !60

69:                                               ; preds = %62, %65
  %70 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 26
  %71 = load i8, ptr %70, align 2, !tbaa !32
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 23
  %75 = load i32, ptr %74, align 8, !tbaa !34
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %587, label %77

77:                                               ; preds = %73, %69
  %78 = load i64, ptr %29, align 8, !tbaa !62
  %79 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 38
  %80 = load i64, ptr %79, align 8, !tbaa !63
  %81 = sub nsw i64 %78, %80
  %82 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 0, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !64
  %84 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 38, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !65
  %86 = sub nsw i64 %83, %85
  %87 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 28
  %88 = load ptr, ptr %87, align 8, !tbaa !66
  br i1 %25, label %89, label %286

89:                                               ; preds = %77
  %90 = load ptr, ptr %19, align 8, !tbaa !72
  %91 = load ptr, ptr %90, align 8, !tbaa !73
  %92 = tail call i32 %91(ptr noundef nonnull %19, ptr noundef %11, ptr noundef %5, i32 noundef 0) #7
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %583, label %94

94:                                               ; preds = %89
  br i1 %64, label %95, label %474

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 23
  %97 = load i32, ptr %96, align 8, !tbaa !34
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = sub i32 0, %37
  %101 = sub i32 0, %47
  %102 = sub i32 0, %37
  %103 = sub i32 0, %47
  br label %213

104:                                              ; preds = %95
  %105 = icmp ult i32 %37, %39
  %106 = shl i32 %37, 1
  %107 = sub i32 %37, %39
  %108 = add nsw i64 %35, 1
  %109 = select i1 %105, i32 %106, i32 %107
  %110 = select i1 %105, i64 %35, i64 %108
  %111 = add nsw i64 %110, %35
  %112 = icmp ult i32 %109, %39
  %113 = sub i32 0, %39
  %114 = select i1 %112, i32 %37, i32 %113
  %115 = add i32 %114, %109
  %116 = select i1 %112, i64 %35, i64 %108
  %117 = add nsw i64 %116, %111
  %118 = icmp ult i32 %115, %39
  %119 = sub i32 0, %39
  %120 = select i1 %118, i32 %37, i32 %119
  %121 = add i32 %120, %115
  %122 = select i1 %118, i64 %35, i64 %108
  %123 = add nsw i64 %122, %117
  %124 = sub i32 0, %121
  %125 = sub i32 0, %37
  %126 = sub i32 0, %109
  %127 = sub i32 0, %115
  %128 = sub i32 0, %37
  br label %129

129:                                              ; preds = %211, %104
  %130 = phi i32 [ %92, %104 ], [ %209, %211 ]
  %131 = phi ptr [ %22, %104 ], [ %205, %211 ]
  %132 = phi i64 [ %31, %104 ], [ %206, %211 ]
  %133 = phi i32 [ %33, %104 ], [ %207, %211 ]
  %134 = load i8, ptr %131, align 1, !tbaa !59
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %184

136:                                              ; preds = %129, %151
  %137 = phi i32 [ %155, %151 ], [ %133, %129 ]
  %138 = phi i64 [ %158, %151 ], [ %132, %129 ]
  %139 = phi ptr [ %152, %151 ], [ %131, %129 ]
  %140 = getelementptr inbounds i8, ptr %139, i64 1
  %141 = load i8, ptr %140, align 1, !tbaa !59
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %177

143:                                              ; preds = %136
  %144 = getelementptr inbounds i8, ptr %139, i64 2
  %145 = load i8, ptr %144, align 1, !tbaa !59
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %169

147:                                              ; preds = %143
  %148 = getelementptr inbounds i8, ptr %139, i64 3
  %149 = load i8, ptr %148, align 1, !tbaa !59
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %147
  %152 = getelementptr inbounds i8, ptr %139, i64 4
  %153 = icmp ult i32 %137, %121
  %154 = select i1 %153, i32 %39, i32 %124
  %155 = add i32 %154, %137
  %156 = zext i1 %153 to i64
  %157 = add i64 %123, %138
  %158 = add i64 %157, %156
  %159 = load i8, ptr %152, align 1, !tbaa !59
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %136, label %184, !llvm.loop !75

161:                                              ; preds = %147
  %162 = getelementptr inbounds i8, ptr %139, i64 3
  %163 = icmp ult i32 %137, %115
  %164 = select i1 %163, i32 %39, i32 %127
  %165 = add i32 %164, %137
  %166 = zext i1 %163 to i64
  %167 = add i64 %138, %117
  %168 = add i64 %167, %166
  br label %184

169:                                              ; preds = %143
  %170 = getelementptr inbounds i8, ptr %139, i64 2
  %171 = icmp ult i32 %137, %109
  %172 = select i1 %171, i32 %39, i32 %126
  %173 = add i32 %172, %137
  %174 = zext i1 %171 to i64
  %175 = add i64 %138, %111
  %176 = add i64 %175, %174
  br label %184

177:                                              ; preds = %136
  %178 = getelementptr inbounds i8, ptr %139, i64 1
  %179 = icmp ult i32 %137, %37
  %180 = select i1 %179, i32 %39, i32 %125
  %181 = add i32 %180, %137
  %182 = select i1 %179, i64 %108, i64 %35
  %183 = add nsw i64 %182, %138
  br label %184

184:                                              ; preds = %151, %129, %177, %169, %161
  %185 = phi ptr [ %178, %177 ], [ %170, %169 ], [ %162, %161 ], [ %131, %129 ], [ %152, %151 ]
  %186 = phi i64 [ %183, %177 ], [ %176, %169 ], [ %168, %161 ], [ %132, %129 ], [ %158, %151 ]
  %187 = phi i32 [ %181, %177 ], [ %173, %169 ], [ %165, %161 ], [ %133, %129 ], [ %155, %151 ]
  %188 = icmp ult ptr %185, %63
  br i1 %188, label %189, label %474

189:                                              ; preds = %184
  %190 = load i8, ptr %185, align 1, !tbaa !59
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %204, label %192

192:                                              ; preds = %189, %192
  %193 = phi i32 [ %198, %192 ], [ %187, %189 ]
  %194 = phi i64 [ %200, %192 ], [ %186, %189 ]
  %195 = phi ptr [ %201, %192 ], [ %185, %189 ]
  %196 = icmp ult i32 %193, %37
  %197 = select i1 %196, i32 %39, i32 %128
  %198 = add i32 %197, %193
  %199 = select i1 %196, i64 %108, i64 %35
  %200 = add nsw i64 %199, %194
  %201 = getelementptr inbounds i8, ptr %195, i64 1
  %202 = load i8, ptr %201, align 1, !tbaa !59
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %192, !llvm.loop !76

204:                                              ; preds = %192, %189
  %205 = phi ptr [ %185, %189 ], [ %201, %192 ]
  %206 = phi i64 [ %186, %189 ], [ %200, %192 ]
  %207 = phi i32 [ %187, %189 ], [ %198, %192 ]
  %208 = sub nsw i64 %206, %186
  %209 = tail call i32 %88(ptr noundef %5, i64 noundef %186, i64 noundef %41, i64 noundef %208, i64 noundef 0, i64 noundef 0, i64 noundef %86, ptr noundef nonnull %19, i32 noundef %13) #7
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %583, label %211

211:                                              ; preds = %204
  %212 = icmp ult ptr %205, %63
  br i1 %212, label %129, label %474, !llvm.loop !77

213:                                              ; preds = %99, %284
  %214 = phi i32 [ %282, %284 ], [ %92, %99 ]
  %215 = phi ptr [ %275, %284 ], [ %22, %99 ]
  %216 = phi i64 [ %276, %284 ], [ %31, %99 ]
  %217 = phi i32 [ %277, %284 ], [ %33, %99 ]
  %218 = phi i64 [ %278, %284 ], [ %41, %99 ]
  %219 = phi i32 [ %279, %284 ], [ %43, %99 ]
  %220 = load i8, ptr %215, align 1, !tbaa !59
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %222, label %243

222:                                              ; preds = %213, %222
  %223 = phi i32 [ %236, %222 ], [ %219, %213 ]
  %224 = phi i64 [ %239, %222 ], [ %218, %213 ]
  %225 = phi i32 [ %230, %222 ], [ %217, %213 ]
  %226 = phi i64 [ %233, %222 ], [ %216, %213 ]
  %227 = phi ptr [ %240, %222 ], [ %215, %213 ]
  %228 = icmp ult i32 %225, %37
  %229 = select i1 %228, i32 %39, i32 %100
  %230 = add i32 %229, %225
  %231 = zext i1 %228 to i64
  %232 = add i64 %226, %35
  %233 = add i64 %232, %231
  %234 = icmp ult i32 %223, %47
  %235 = select i1 %234, i32 %49, i32 %101
  %236 = add i32 %235, %223
  %237 = zext i1 %234 to i64
  %238 = add i64 %224, %45
  %239 = add i64 %238, %237
  %240 = getelementptr inbounds i8, ptr %227, i64 1
  %241 = load i8, ptr %240, align 1, !tbaa !59
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %222, label %243, !llvm.loop !78

243:                                              ; preds = %222, %213
  %244 = phi ptr [ %215, %213 ], [ %240, %222 ]
  %245 = phi i64 [ %216, %213 ], [ %233, %222 ]
  %246 = phi i32 [ %217, %213 ], [ %230, %222 ]
  %247 = phi i64 [ %218, %213 ], [ %239, %222 ]
  %248 = phi i32 [ %219, %213 ], [ %236, %222 ]
  %249 = icmp ult ptr %244, %63
  br i1 %249, label %250, label %474

250:                                              ; preds = %243
  %251 = load i8, ptr %244, align 1, !tbaa !59
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %274, label %253

253:                                              ; preds = %250, %253
  %254 = phi i32 [ %267, %253 ], [ %248, %250 ]
  %255 = phi i64 [ %270, %253 ], [ %247, %250 ]
  %256 = phi i32 [ %261, %253 ], [ %246, %250 ]
  %257 = phi i64 [ %264, %253 ], [ %245, %250 ]
  %258 = phi ptr [ %271, %253 ], [ %244, %250 ]
  %259 = icmp ult i32 %256, %37
  %260 = select i1 %259, i32 %39, i32 %102
  %261 = add i32 %260, %256
  %262 = zext i1 %259 to i64
  %263 = add i64 %257, %35
  %264 = add i64 %263, %262
  %265 = icmp ult i32 %254, %47
  %266 = select i1 %265, i32 %49, i32 %103
  %267 = add i32 %266, %254
  %268 = zext i1 %265 to i64
  %269 = add i64 %255, %45
  %270 = add i64 %269, %268
  %271 = getelementptr inbounds i8, ptr %258, i64 1
  %272 = load i8, ptr %271, align 1, !tbaa !59
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %274, label %253, !llvm.loop !79

274:                                              ; preds = %253, %250
  %275 = phi ptr [ %244, %250 ], [ %271, %253 ]
  %276 = phi i64 [ %245, %250 ], [ %264, %253 ]
  %277 = phi i32 [ %246, %250 ], [ %261, %253 ]
  %278 = phi i64 [ %247, %250 ], [ %270, %253 ]
  %279 = phi i32 [ %248, %250 ], [ %267, %253 ]
  %280 = sub nsw i64 %276, %245
  %281 = sub nsw i64 %278, %247
  %282 = tail call i32 %88(ptr noundef %5, i64 noundef %245, i64 noundef %247, i64 noundef %280, i64 noundef %281, i64 noundef %81, i64 noundef %86, ptr noundef nonnull %19, i32 noundef %13) #7
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %583, label %284

284:                                              ; preds = %274
  %285 = icmp ult ptr %275, %63
  br i1 %285, label %213, label %474, !llvm.loop !80

286:                                              ; preds = %77
  %287 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 23
  %288 = load i32, ptr %287, align 8, !tbaa !34
  %289 = icmp ult i32 %288, 2
  br i1 %289, label %298, label %290

290:                                              ; preds = %286
  %291 = icmp ne i32 %20, 0
  %292 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 27
  %293 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 3
  %294 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 1
  %295 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 2
  %296 = sub i32 0, %37
  %297 = sub i32 0, %47
  br label %395

298:                                              ; preds = %286
  br i1 %64, label %299, label %474

299:                                              ; preds = %298
  %300 = icmp ne i32 %20, 0
  %301 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 27
  %302 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 3
  %303 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 1
  %304 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 2
  %305 = sub i32 0, %37
  %306 = sub i32 0, %47
  br label %307

307:                                              ; preds = %299, %376
  %308 = phi i64 [ %377, %376 ], [ %31, %299 ]
  %309 = phi i8 [ %378, %376 ], [ %59, %299 ]
  %310 = phi i32 [ %379, %376 ], [ %26, %299 ]
  %311 = phi i64 [ %380, %376 ], [ %41, %299 ]
  %312 = phi ptr [ %382, %376 ], [ %22, %299 ]
  %313 = phi i64 [ %388, %376 ], [ %31, %299 ]
  %314 = phi i32 [ %385, %376 ], [ %33, %299 ]
  %315 = phi i64 [ %394, %376 ], [ %41, %299 ]
  %316 = phi i32 [ %391, %376 ], [ %43, %299 ]
  %317 = phi ptr [ %381, %376 ], [ %19, %299 ]
  %318 = load i8, ptr %312, align 1, !tbaa !59
  %319 = zext i8 %309 to i32
  %320 = icmp eq i8 %318, %309
  br i1 %320, label %376, label %321

321:                                              ; preds = %307
  %322 = icmp eq i32 %310, %319
  br i1 %322, label %365, label %323

323:                                              ; preds = %321
  %324 = zext i8 %309 to i64
  %325 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 %324
  %326 = load ptr, ptr %325, align 8, !tbaa !72
  %327 = icmp eq ptr %326, @gx_dc_procs_none
  br i1 %327, label %328, label %358

328:                                              ; preds = %323
  %329 = load i8, ptr %301, align 1, !tbaa !81
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %338, label %331

331:                                              ; preds = %328
  %332 = shl nuw nsw i32 %319, 7
  %333 = lshr i32 %319, 1
  %334 = or disjoint i32 %332, %333
  %335 = lshr i32 %319, 5
  %336 = sub nsw i32 %334, %335
  %337 = trunc i32 %336 to i16
  call void %17(i16 noundef signext %337, ptr noundef nonnull %325, ptr noundef %11, ptr noundef %5, i32 noundef 1) #7
  br label %365

338:                                              ; preds = %328
  %339 = load i32, ptr %302, align 8, !tbaa !82
  switch i32 %339, label %356 [
    i32 0, label %340
    i32 1, label %344
    i32 2, label %349
  ]

340:                                              ; preds = %338
  %341 = uitofp i8 %309 to double
  %342 = fmul double %341, 0x3F70101010101010
  %343 = fptrunc double %342 to float
  store float %343, ptr %7, align 8, !tbaa !85
  br label %356

344:                                              ; preds = %338
  %345 = lshr i32 %319, 4
  %346 = zext nneg i32 %345 to i64
  %347 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 1, i64 %346
  %348 = load float, ptr %347, align 4, !tbaa !85
  store float %348, ptr %7, align 8, !tbaa !85
  br label %356

349:                                              ; preds = %338
  %350 = load float, ptr %303, align 8, !tbaa !85
  %351 = fpext float %350 to double
  %352 = uitofp i8 %309 to double
  %353 = load double, ptr %304, align 8, !tbaa !86
  %354 = call double @llvm.fmuladd.f64(double %352, double %353, double %351)
  %355 = fptrunc double %354 to float
  store float %355, ptr %7, align 8, !tbaa !85
  br label %356

356:                                              ; preds = %349, %338, %344, %340
  %357 = call i32 %57(ptr noundef nonnull %7, ptr noundef %58, ptr noundef nonnull %325, ptr noundef %11, ptr noundef %5, i32 noundef 1) #7
  br label %365

358:                                              ; preds = %323
  %359 = icmp eq ptr %326, @gx_dc_procs_pure
  %360 = select i1 %359, i1 true, i1 %300
  br i1 %360, label %365, label %361

361:                                              ; preds = %358
  %362 = load ptr, ptr %326, align 8, !tbaa !73
  %363 = call i32 %362(ptr noundef nonnull %325, ptr noundef %11, ptr noundef %5, i32 noundef 1) #7
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %583, label %365

365:                                              ; preds = %356, %331, %361, %358, %321
  %366 = phi i32 [ %319, %358 ], [ %319, %361 ], [ %319, %331 ], [ %319, %356 ], [ %310, %321 ]
  %367 = phi ptr [ %325, %358 ], [ %325, %361 ], [ %325, %331 ], [ %325, %356 ], [ %317, %321 ]
  %368 = sub nsw i64 %313, %308
  %369 = sub nsw i64 %315, %311
  %370 = call i32 %88(ptr noundef %5, i64 noundef %308, i64 noundef %311, i64 noundef %368, i64 noundef %369, i64 noundef %81, i64 noundef %86, ptr noundef %367, i32 noundef %13) #7
  %371 = icmp slt i32 %370, 0
  br i1 %371, label %583, label %372

372:                                              ; preds = %365
  %373 = icmp ult ptr %312, %63
  br i1 %373, label %374, label %474

374:                                              ; preds = %372
  %375 = load i8, ptr %312, align 1, !tbaa !59
  br label %376

376:                                              ; preds = %374, %307
  %377 = phi i64 [ %313, %374 ], [ %308, %307 ]
  %378 = phi i8 [ %375, %374 ], [ %309, %307 ]
  %379 = phi i32 [ %366, %374 ], [ %310, %307 ]
  %380 = phi i64 [ %315, %374 ], [ %311, %307 ]
  %381 = phi ptr [ %367, %374 ], [ %317, %307 ]
  %382 = getelementptr inbounds i8, ptr %312, i64 1
  %383 = icmp ult i32 %314, %37
  %384 = select i1 %383, i32 %39, i32 %305
  %385 = add i32 %384, %314
  %386 = zext i1 %383 to i64
  %387 = add i64 %313, %35
  %388 = add i64 %387, %386
  %389 = icmp ult i32 %316, %47
  %390 = select i1 %389, i32 %49, i32 %306
  %391 = add i32 %390, %316
  %392 = zext i1 %389 to i64
  %393 = add i64 %315, %45
  %394 = add i64 %393, %392
  br label %307, !llvm.loop !87

395:                                              ; preds = %290, %460
  %396 = phi i64 [ %401, %460 ], [ %31, %290 ]
  %397 = phi i8 [ %461, %460 ], [ %59, %290 ]
  %398 = phi i32 [ %452, %460 ], [ %26, %290 ]
  %399 = phi i64 [ %403, %460 ], [ %41, %290 ]
  %400 = phi ptr [ %406, %460 ], [ %22, %290 ]
  %401 = phi i64 [ %467, %460 ], [ %31, %290 ]
  %402 = phi i32 [ %464, %460 ], [ %33, %290 ]
  %403 = phi i64 [ %473, %460 ], [ %41, %290 ]
  %404 = phi i32 [ %470, %460 ], [ %43, %290 ]
  %405 = phi ptr [ %453, %460 ], [ %19, %290 ]
  %406 = getelementptr inbounds i8, ptr %400, i64 1
  %407 = zext i8 %397 to i32
  %408 = icmp eq i32 %398, %407
  br i1 %408, label %451, label %409

409:                                              ; preds = %395
  %410 = zext i8 %397 to i64
  %411 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 %410
  %412 = load ptr, ptr %411, align 8, !tbaa !72
  %413 = icmp eq ptr %412, @gx_dc_procs_none
  br i1 %413, label %414, label %444

414:                                              ; preds = %409
  %415 = load i8, ptr %292, align 1, !tbaa !81
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %424, label %417

417:                                              ; preds = %414
  %418 = shl nuw nsw i32 %407, 7
  %419 = lshr i32 %407, 1
  %420 = or disjoint i32 %418, %419
  %421 = lshr i32 %407, 5
  %422 = sub nsw i32 %420, %421
  %423 = trunc i32 %422 to i16
  call void %17(i16 noundef signext %423, ptr noundef nonnull %411, ptr noundef %11, ptr noundef %5, i32 noundef 1) #7
  br label %451

424:                                              ; preds = %414
  %425 = load i32, ptr %293, align 8, !tbaa !82
  switch i32 %425, label %442 [
    i32 0, label %426
    i32 1, label %430
    i32 2, label %435
  ]

426:                                              ; preds = %424
  %427 = uitofp i8 %397 to double
  %428 = fmul double %427, 0x3F70101010101010
  %429 = fptrunc double %428 to float
  store float %429, ptr %7, align 8, !tbaa !85
  br label %442

430:                                              ; preds = %424
  %431 = lshr i32 %407, 4
  %432 = zext nneg i32 %431 to i64
  %433 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 1, i64 %432
  %434 = load float, ptr %433, align 4, !tbaa !85
  store float %434, ptr %7, align 8, !tbaa !85
  br label %442

435:                                              ; preds = %424
  %436 = load float, ptr %294, align 8, !tbaa !85
  %437 = fpext float %436 to double
  %438 = uitofp i8 %397 to double
  %439 = load double, ptr %295, align 8, !tbaa !86
  %440 = call double @llvm.fmuladd.f64(double %438, double %439, double %437)
  %441 = fptrunc double %440 to float
  store float %441, ptr %7, align 8, !tbaa !85
  br label %442

442:                                              ; preds = %435, %424, %430, %426
  %443 = call i32 %57(ptr noundef nonnull %7, ptr noundef %58, ptr noundef nonnull %411, ptr noundef %11, ptr noundef %5, i32 noundef 1) #7
  br label %451

444:                                              ; preds = %409
  %445 = icmp eq ptr %412, @gx_dc_procs_pure
  %446 = select i1 %445, i1 true, i1 %291
  br i1 %446, label %451, label %447

447:                                              ; preds = %444
  %448 = load ptr, ptr %412, align 8, !tbaa !73
  %449 = call i32 %448(ptr noundef nonnull %411, ptr noundef %11, ptr noundef %5, i32 noundef 1) #7
  %450 = icmp slt i32 %449, 0
  br i1 %450, label %583, label %451

451:                                              ; preds = %442, %417, %447, %444, %395
  %452 = phi i32 [ %407, %444 ], [ %407, %447 ], [ %407, %417 ], [ %407, %442 ], [ %398, %395 ]
  %453 = phi ptr [ %411, %444 ], [ %411, %447 ], [ %411, %417 ], [ %411, %442 ], [ %405, %395 ]
  %454 = sub nsw i64 %401, %396
  %455 = sub nsw i64 %403, %399
  %456 = call i32 %88(ptr noundef %5, i64 noundef %396, i64 noundef %399, i64 noundef %454, i64 noundef %455, i64 noundef %81, i64 noundef %86, ptr noundef %453, i32 noundef %13) #7
  %457 = icmp slt i32 %456, 0
  br i1 %457, label %583, label %458

458:                                              ; preds = %451
  %459 = icmp ugt ptr %406, %24
  br i1 %459, label %474, label %460

460:                                              ; preds = %458
  %461 = load i8, ptr %400, align 1, !tbaa !59
  %462 = icmp ult i32 %402, %37
  %463 = select i1 %462, i32 %39, i32 %296
  %464 = add i32 %463, %402
  %465 = zext i1 %462 to i64
  %466 = add i64 %401, %35
  %467 = add i64 %466, %465
  %468 = icmp ult i32 %404, %47
  %469 = select i1 %468, i32 %49, i32 %297
  %470 = add i32 %469, %404
  %471 = zext i1 %468 to i64
  %472 = add i64 %403, %45
  %473 = add i64 %472, %471
  br label %395, !llvm.loop !88

474:                                              ; preds = %458, %372, %243, %284, %184, %211, %298, %94
  %475 = phi i64 [ %31, %94 ], [ %31, %298 ], [ %186, %211 ], [ %186, %184 ], [ %245, %284 ], [ %245, %243 ], [ %313, %372 ], [ %401, %458 ]
  %476 = phi i32 [ %92, %94 ], [ 0, %298 ], [ %130, %184 ], [ %209, %211 ], [ %214, %243 ], [ %282, %284 ], [ %370, %372 ], [ %456, %458 ]
  %477 = phi ptr [ %63, %94 ], [ %63, %298 ], [ %63, %211 ], [ %63, %184 ], [ %63, %284 ], [ %63, %243 ], [ %63, %372 ], [ %24, %458 ]
  %478 = phi i64 [ %41, %94 ], [ %41, %298 ], [ %41, %211 ], [ %41, %184 ], [ %247, %284 ], [ %247, %243 ], [ %315, %372 ], [ %403, %458 ]
  %479 = phi i64 [ %31, %94 ], [ %31, %298 ], [ %186, %184 ], [ %206, %211 ], [ %245, %243 ], [ %276, %284 ], [ %313, %372 ], [ %401, %458 ]
  %480 = phi i32 [ %33, %94 ], [ %33, %298 ], [ %187, %184 ], [ %207, %211 ], [ %246, %243 ], [ %277, %284 ], [ %314, %372 ], [ %402, %458 ]
  %481 = phi i64 [ %41, %94 ], [ %41, %298 ], [ %41, %211 ], [ %41, %184 ], [ %247, %243 ], [ %278, %284 ], [ %315, %372 ], [ %403, %458 ]
  %482 = phi i32 [ %43, %94 ], [ %43, %298 ], [ %43, %211 ], [ %43, %184 ], [ %248, %243 ], [ %279, %284 ], [ %316, %372 ], [ %404, %458 ]
  %483 = phi ptr [ %19, %94 ], [ %19, %298 ], [ %19, %211 ], [ %19, %184 ], [ %19, %284 ], [ %19, %243 ], [ %367, %372 ], [ %453, %458 ]
  %484 = icmp ult ptr %477, %24
  br i1 %484, label %485, label %583

485:                                              ; preds = %474
  %486 = load i8, ptr %477, align 1, !tbaa !59
  %487 = zext i8 %486 to i32
  %488 = icmp eq i8 %486, 0
  %489 = select i1 %488, i1 %25, i1 false
  br i1 %489, label %583, label %490

490:                                              ; preds = %485
  br i1 %25, label %538, label %491

491:                                              ; preds = %490
  %492 = zext i8 %486 to i64
  %493 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 %492
  %494 = load ptr, ptr %493, align 8, !tbaa !72
  %495 = icmp eq ptr %494, @gx_dc_procs_none
  br i1 %495, label %496, label %530

496:                                              ; preds = %491
  %497 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 27
  %498 = load i8, ptr %497, align 1, !tbaa !81
  %499 = icmp eq i8 %498, 0
  br i1 %499, label %507, label %500

500:                                              ; preds = %496
  %501 = shl nuw nsw i32 %487, 7
  %502 = lshr i32 %487, 1
  %503 = or disjoint i32 %501, %502
  %504 = lshr i32 %487, 5
  %505 = sub nsw i32 %503, %504
  %506 = trunc i32 %505 to i16
  call void %17(i16 noundef signext %506, ptr noundef nonnull %493, ptr noundef %11, ptr noundef %5, i32 noundef 1) #7
  br label %538

507:                                              ; preds = %496
  %508 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 3
  %509 = load i32, ptr %508, align 8, !tbaa !82
  switch i32 %509, label %528 [
    i32 0, label %510
    i32 1, label %514
    i32 2, label %519
  ]

510:                                              ; preds = %507
  %511 = uitofp i8 %486 to double
  %512 = fmul double %511, 0x3F70101010101010
  %513 = fptrunc double %512 to float
  store float %513, ptr %7, align 8, !tbaa !85
  br label %528

514:                                              ; preds = %507
  %515 = lshr i32 %487, 4
  %516 = zext nneg i32 %515 to i64
  %517 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 1, i64 %516
  %518 = load float, ptr %517, align 4, !tbaa !85
  store float %518, ptr %7, align 8, !tbaa !85
  br label %528

519:                                              ; preds = %507
  %520 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 1
  %521 = load float, ptr %520, align 8, !tbaa !85
  %522 = fpext float %521 to double
  %523 = uitofp i8 %486 to double
  %524 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 2
  %525 = load double, ptr %524, align 8, !tbaa !86
  %526 = call double @llvm.fmuladd.f64(double %523, double %525, double %522)
  %527 = fptrunc double %526 to float
  store float %527, ptr %7, align 8, !tbaa !85
  br label %528

528:                                              ; preds = %519, %507, %514, %510
  %529 = call i32 %57(ptr noundef nonnull %7, ptr noundef %58, ptr noundef nonnull %493, ptr noundef %11, ptr noundef %5, i32 noundef 1) #7
  br label %538

530:                                              ; preds = %491
  %531 = icmp eq ptr %494, @gx_dc_procs_pure
  %532 = icmp ne i32 %20, 0
  %533 = select i1 %531, i1 true, i1 %532
  br i1 %533, label %538, label %534

534:                                              ; preds = %530
  %535 = load ptr, ptr %494, align 8, !tbaa !73
  %536 = call i32 %535(ptr noundef nonnull %493, ptr noundef %11, ptr noundef %5, i32 noundef 1) #7
  %537 = icmp slt i32 %536, 0
  br i1 %537, label %583, label %538

538:                                              ; preds = %490, %530, %534, %500, %528
  %539 = phi ptr [ %483, %490 ], [ %493, %530 ], [ %493, %534 ], [ %493, %500 ], [ %493, %528 ]
  %540 = ptrtoint ptr %24 to i64
  %541 = ptrtoint ptr %477 to i64
  %542 = sub i64 %540, %541
  %543 = trunc i64 %542 to i32
  %544 = mul nsw i64 %542, %35
  %545 = add nsw i64 %544, %479
  %546 = icmp eq i32 %543, 0
  br i1 %546, label %560, label %547

547:                                              ; preds = %538
  %548 = sub i32 0, %37
  br label %549

549:                                              ; preds = %547, %549
  %550 = phi i32 [ %480, %547 ], [ %558, %549 ]
  %551 = phi i64 [ %545, %547 ], [ %556, %549 ]
  %552 = phi i32 [ %543, %547 ], [ %553, %549 ]
  %553 = add i32 %552, -1
  %554 = icmp ult i32 %550, %37
  %555 = zext i1 %554 to i64
  %556 = add nsw i64 %551, %555
  %557 = select i1 %554, i32 %39, i32 %548
  %558 = add i32 %557, %550
  %559 = icmp eq i32 %553, 0
  br i1 %559, label %560, label %549, !llvm.loop !89

560:                                              ; preds = %549, %538
  %561 = phi i64 [ %545, %538 ], [ %556, %549 ]
  %562 = mul nsw i64 %542, %45
  %563 = add nsw i64 %481, %562
  %564 = icmp eq i32 %543, 0
  br i1 %564, label %578, label %565

565:                                              ; preds = %560
  %566 = sub i32 0, %47
  br label %567

567:                                              ; preds = %565, %567
  %568 = phi i32 [ %482, %565 ], [ %576, %567 ]
  %569 = phi i64 [ %563, %565 ], [ %574, %567 ]
  %570 = phi i32 [ %543, %565 ], [ %571, %567 ]
  %571 = add i32 %570, -1
  %572 = icmp ult i32 %568, %47
  %573 = zext i1 %572 to i64
  %574 = add nsw i64 %569, %573
  %575 = select i1 %572, i32 %49, i32 %566
  %576 = add i32 %575, %568
  %577 = icmp eq i32 %571, 0
  br i1 %577, label %578, label %567, !llvm.loop !90

578:                                              ; preds = %567, %560
  %579 = phi i64 [ %563, %560 ], [ %574, %567 ]
  %580 = sub nsw i64 %561, %475
  %581 = sub nsw i64 %579, %478
  %582 = call i32 %88(ptr noundef %5, i64 noundef %475, i64 noundef %478, i64 noundef %580, i64 noundef %581, i64 noundef %81, i64 noundef %86, ptr noundef %539, i32 noundef %13) #7
  br label %583

583:                                              ; preds = %451, %447, %365, %361, %274, %204, %474, %578, %485, %534, %89
  %584 = phi i32 [ %92, %89 ], [ %536, %534 ], [ %476, %485 ], [ %582, %578 ], [ %476, %474 ], [ %209, %204 ], [ %282, %274 ], [ %363, %361 ], [ %370, %365 ], [ %449, %447 ], [ %456, %451 ]
  %585 = phi i1 [ false, %89 ], [ false, %534 ], [ true, %485 ], [ true, %578 ], [ true, %474 ], [ false, %204 ], [ false, %274 ], [ false, %361 ], [ false, %365 ], [ false, %447 ], [ false, %451 ]
  %586 = phi i32 [ %92, %89 ], [ %536, %534 ], [ undef, %485 ], [ undef, %578 ], [ undef, %474 ], [ %209, %204 ], [ %282, %274 ], [ %363, %361 ], [ %370, %365 ], [ %449, %447 ], [ %456, %451 ]
  br i1 %585, label %1019, label %1023

587:                                              ; preds = %73
  %588 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 31
  %589 = load i64, ptr %588, align 8, !tbaa !91
  %590 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 32
  %591 = load i64, ptr %590, align 8, !tbaa !37
  %592 = sub nsw i64 0, %589
  %593 = icmp slt i64 %591, 0
  %594 = select i1 %593, i64 %592, i64 %589
  %595 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 44
  %596 = load i32, ptr %595, align 8, !tbaa !92
  %597 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 45
  %598 = load i32, ptr %597, align 4, !tbaa !93
  %599 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 7
  %600 = load ptr, ptr %599, align 8, !tbaa !94
  %601 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 34
  %602 = load ptr, ptr %601, align 8, !tbaa !95
  %603 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 9
  %604 = load ptr, ptr %603, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  %605 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 22
  %606 = load ptr, ptr %605, align 8, !tbaa !97
  %607 = call i32 %606(ptr noundef %5, i32 noundef %596, ptr noundef nonnull %8) #7
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %609, label %617

609:                                              ; preds = %587
  %610 = call i64 @llvm.abs.i64(i64 %591, i1 true)
  %611 = shl i64 %594, 1
  %612 = add nuw i64 %610, 4095
  %613 = add i64 %612, %611
  %614 = lshr i64 %613, 12
  %615 = trunc i64 %614 to i32
  %616 = call i32 @gx_check_tile_size(ptr noundef %11, i32 noundef %615, i32 noundef %596, i32 noundef %598, i32 noundef 1, ptr noundef nonnull %9) #7
  br label %617

617:                                              ; preds = %587, %609
  %618 = phi i32 [ %616, %609 ], [ -1, %587 ]
  %619 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 28
  %620 = load i64, ptr %619, align 8, !tbaa !98
  %621 = add nsw i64 %620, 2047
  %622 = lshr i64 %621, 12
  %623 = trunc i64 %622 to i32
  %624 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 28, i32 1
  %625 = load i64, ptr %624, align 8, !tbaa !99
  %626 = add nsw i64 %625, 2047
  %627 = lshr i64 %626, 12
  %628 = trunc i64 %627 to i32
  %629 = sub nsw i64 %31, %594
  %630 = add nsw i64 %629, 2047
  %631 = add i64 %31, 2047
  %632 = add i64 %631, %594
  %633 = shl i64 %594, 1
  %634 = icmp ult i32 %37, %39
  %635 = shl i32 %37, 1
  %636 = sub i32 %37, %39
  %637 = add nsw i64 %35, 1
  %638 = select i1 %634, i32 %635, i32 %636
  %639 = select i1 %634, i64 %35, i64 %637
  %640 = add nsw i64 %639, %35
  %641 = icmp ult i32 %638, %39
  %642 = sub i32 0, %39
  %643 = select i1 %641, i32 %37, i32 %642
  %644 = add i32 %643, %638
  %645 = select i1 %641, i64 %35, i64 %637
  %646 = add nsw i64 %645, %640
  %647 = icmp ult i32 %644, %39
  %648 = sub i32 0, %39
  %649 = select i1 %647, i32 %37, i32 %648
  %650 = add i32 %649, %644
  %651 = select i1 %647, i64 %35, i64 %637
  %652 = add nsw i64 %651, %646
  br i1 %64, label %653, label %902

653:                                              ; preds = %617
  %654 = sub i32 0, %650
  %655 = sub i32 0, %37
  %656 = sub i32 0, %638
  %657 = sub i32 0, %644
  %658 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 255, i32 0, i32 1
  %659 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 0, i32 0, i32 1
  %660 = icmp ne i32 %20, 0
  %661 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 27
  %662 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 3
  %663 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 1
  %664 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 2
  %665 = icmp sgt i32 %618, -1
  %666 = zext nneg i32 %618 to i64
  %667 = sub i32 0, %37
  br label %668

668:                                              ; preds = %653, %896
  %669 = phi i64 [ %887, %896 ], [ %630, %653 ]
  %670 = phi i8 [ %888, %896 ], [ %59, %653 ]
  %671 = phi i32 [ %889, %896 ], [ %26, %653 ]
  %672 = phi i32 [ %890, %896 ], [ 0, %653 ]
  %673 = phi ptr [ %893, %896 ], [ %22, %653 ]
  %674 = phi i64 [ %901, %896 ], [ %632, %653 ]
  %675 = phi i32 [ %899, %896 ], [ %33, %653 ]
  %676 = phi ptr [ %894, %896 ], [ %19, %653 ]
  %677 = phi i32 [ %895, %896 ], [ undef, %653 ]
  %678 = load i8, ptr %673, align 1, !tbaa !59
  %679 = icmp eq i8 %678, %670
  br i1 %679, label %680, label %725

680:                                              ; preds = %668, %696
  %681 = phi i32 [ %699, %696 ], [ %675, %668 ]
  %682 = phi i64 [ %702, %696 ], [ %674, %668 ]
  %683 = phi ptr [ %695, %696 ], [ %673, %668 ]
  %684 = getelementptr inbounds i8, ptr %683, i64 1
  %685 = load i8, ptr %684, align 1, !tbaa !59
  %686 = icmp eq i8 %685, %670
  %687 = getelementptr inbounds i8, ptr %683, i64 2
  br i1 %686, label %688, label %719

688:                                              ; preds = %680
  %689 = load i8, ptr %687, align 1, !tbaa !59
  %690 = icmp eq i8 %689, %670
  %691 = getelementptr inbounds i8, ptr %683, i64 3
  br i1 %690, label %692, label %712

692:                                              ; preds = %688
  %693 = load i8, ptr %691, align 1, !tbaa !59
  %694 = icmp eq i8 %693, %670
  %695 = getelementptr inbounds i8, ptr %683, i64 4
  br i1 %694, label %696, label %705

696:                                              ; preds = %692
  %697 = icmp ult i32 %681, %650
  %698 = select i1 %697, i32 %39, i32 %654
  %699 = add i32 %698, %681
  %700 = zext i1 %697 to i64
  %701 = add i64 %652, %682
  %702 = add i64 %701, %700
  %703 = load i8, ptr %695, align 1, !tbaa !59
  %704 = icmp eq i8 %703, %670
  br i1 %704, label %680, label %725

705:                                              ; preds = %692
  %706 = icmp ult i32 %681, %644
  %707 = select i1 %706, i32 %39, i32 %657
  %708 = add i32 %707, %681
  %709 = zext i1 %706 to i64
  %710 = add i64 %682, %646
  %711 = add i64 %710, %709
  br label %730

712:                                              ; preds = %688
  %713 = icmp ult i32 %681, %638
  %714 = select i1 %713, i32 %39, i32 %656
  %715 = add i32 %714, %681
  %716 = zext i1 %713 to i64
  %717 = add i64 %682, %640
  %718 = add i64 %717, %716
  br label %730

719:                                              ; preds = %680
  %720 = icmp ult i32 %681, %37
  %721 = select i1 %720, i32 %39, i32 %655
  %722 = add i32 %721, %681
  %723 = select i1 %720, i64 %637, i64 %35
  %724 = add nsw i64 %723, %682
  br label %730

725:                                              ; preds = %696, %668
  %726 = phi ptr [ %673, %668 ], [ %695, %696 ]
  %727 = phi i64 [ %674, %668 ], [ %702, %696 ]
  %728 = phi i32 [ %675, %668 ], [ %699, %696 ]
  %729 = getelementptr inbounds i8, ptr %726, i64 1
  br label %730

730:                                              ; preds = %719, %712, %705, %725
  %731 = phi ptr [ %695, %705 ], [ %691, %712 ], [ %687, %719 ], [ %729, %725 ]
  %732 = phi i64 [ %711, %705 ], [ %718, %712 ], [ %724, %719 ], [ %727, %725 ]
  %733 = phi i32 [ %708, %705 ], [ %715, %712 ], [ %722, %719 ], [ %728, %725 ]
  %734 = zext i8 %670 to i32
  %735 = lshr i64 %669, 12
  %736 = trunc i64 %735 to i32
  %737 = lshr i64 %732, 12
  %738 = trunc i64 %737 to i32
  %739 = sub nsw i32 %738, %736
  %740 = icmp slt i32 %739, 1
  br i1 %740, label %741, label %745

741:                                              ; preds = %730
  %742 = icmp eq i32 %739, 0
  br i1 %742, label %877, label %743

743:                                              ; preds = %741
  %744 = sub nsw i32 0, %739
  br label %745

745:                                              ; preds = %743, %730
  %746 = phi i32 [ %738, %743 ], [ %736, %730 ]
  %747 = phi i32 [ %744, %743 ], [ %739, %730 ]
  %748 = add nsw i32 %747, %746
  %749 = icmp sgt i32 %748, %628
  %750 = icmp slt i32 %746, %623
  %751 = select i1 %749, i1 true, i1 %750
  br i1 %751, label %752, label %761

752:                                              ; preds = %745
  %753 = sub i32 %746, %623
  %754 = call i32 @llvm.smax.i32(i32 %746, i32 %623)
  %755 = select i1 %750, i32 %753, i32 0
  %756 = add i32 %755, %747
  %757 = sub i32 %628, %748
  %758 = select i1 %749, i32 %757, i32 0
  %759 = add i32 %756, %758
  %760 = icmp slt i32 %759, 1
  br i1 %760, label %877, label %761

761:                                              ; preds = %745, %752
  %762 = phi i32 [ %754, %752 ], [ %746, %745 ]
  %763 = phi i32 [ %759, %752 ], [ %747, %745 ]
  switch i8 %670, label %777 [
    i8 0, label %764
    i8 -1, label %771
  ]

764:                                              ; preds = %761
  br i1 %25, label %877, label %765

765:                                              ; preds = %764
  %766 = load ptr, ptr %18, align 8, !tbaa !25
  %767 = icmp eq ptr %766, @gx_dc_procs_pure
  br i1 %767, label %768, label %777

768:                                              ; preds = %765
  %769 = load i64, ptr %659, align 8, !tbaa !59
  %770 = call i32 %600(ptr noundef %5, i32 noundef %762, i32 noundef %596, i32 noundef %763, i32 noundef %598, i64 noundef %769) #7
  br label %872

771:                                              ; preds = %761
  %772 = load ptr, ptr %19, align 8, !tbaa !25
  %773 = icmp eq ptr %772, @gx_dc_procs_pure
  br i1 %773, label %774, label %777

774:                                              ; preds = %771
  %775 = load i64, ptr %658, align 8, !tbaa !59
  %776 = call i32 %600(ptr noundef %5, i32 noundef %762, i32 noundef %596, i32 noundef %763, i32 noundef %598, i64 noundef %775) #7
  br label %872

777:                                              ; preds = %761, %771, %765
  %778 = icmp eq i32 %671, %734
  br i1 %778, label %821, label %779

779:                                              ; preds = %777
  %780 = zext i8 %670 to i64
  %781 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 %780
  %782 = load ptr, ptr %781, align 8, !tbaa !72
  %783 = icmp eq ptr %782, @gx_dc_procs_none
  br i1 %783, label %784, label %814

784:                                              ; preds = %779
  %785 = load i8, ptr %661, align 1, !tbaa !81
  %786 = icmp eq i8 %785, 0
  br i1 %786, label %794, label %787

787:                                              ; preds = %784
  %788 = shl nuw nsw i32 %734, 7
  %789 = lshr i32 %734, 1
  %790 = or disjoint i32 %788, %789
  %791 = lshr i32 %734, 5
  %792 = sub nsw i32 %790, %791
  %793 = trunc i32 %792 to i16
  call void %17(i16 noundef signext %793, ptr noundef nonnull %781, ptr noundef %11, ptr noundef %5, i32 noundef 1) #7
  br label %821

794:                                              ; preds = %784
  %795 = load i32, ptr %662, align 8, !tbaa !82
  switch i32 %795, label %812 [
    i32 0, label %796
    i32 1, label %800
    i32 2, label %805
  ]

796:                                              ; preds = %794
  %797 = uitofp i8 %670 to double
  %798 = fmul double %797, 0x3F70101010101010
  %799 = fptrunc double %798 to float
  store float %799, ptr %7, align 8, !tbaa !85
  br label %812

800:                                              ; preds = %794
  %801 = lshr i32 %734, 4
  %802 = zext nneg i32 %801 to i64
  %803 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 1, i64 %802
  %804 = load float, ptr %803, align 4, !tbaa !85
  store float %804, ptr %7, align 8, !tbaa !85
  br label %812

805:                                              ; preds = %794
  %806 = load float, ptr %663, align 8, !tbaa !85
  %807 = fpext float %806 to double
  %808 = uitofp i8 %670 to double
  %809 = load double, ptr %664, align 8, !tbaa !86
  %810 = call double @llvm.fmuladd.f64(double %808, double %809, double %807)
  %811 = fptrunc double %810 to float
  store float %811, ptr %7, align 8, !tbaa !85
  br label %812

812:                                              ; preds = %805, %794, %800, %796
  %813 = call i32 %57(ptr noundef nonnull %7, ptr noundef %58, ptr noundef nonnull %781, ptr noundef %11, ptr noundef %5, i32 noundef 1) #7
  br label %821

814:                                              ; preds = %779
  %815 = icmp eq ptr %782, @gx_dc_procs_pure
  %816 = select i1 %815, i1 true, i1 %660
  br i1 %816, label %821, label %817

817:                                              ; preds = %814
  %818 = load ptr, ptr %782, align 8, !tbaa !73
  %819 = call i32 %818(ptr noundef nonnull %781, ptr noundef %11, ptr noundef %5, i32 noundef 1) #7
  %820 = icmp slt i32 %819, 0
  br i1 %820, label %886, label %821

821:                                              ; preds = %812, %787, %817, %814, %777
  %822 = phi i32 [ %671, %777 ], [ %734, %814 ], [ %734, %817 ], [ %734, %787 ], [ %734, %812 ]
  %823 = phi ptr [ %676, %777 ], [ %781, %814 ], [ %781, %817 ], [ %781, %787 ], [ %781, %812 ]
  %824 = load ptr, ptr %823, align 8, !tbaa !72
  %825 = icmp eq ptr %824, @gx_dc_procs_pure
  br i1 %825, label %826, label %830

826:                                              ; preds = %821
  %827 = getelementptr inbounds %struct.gx_device_color_s, ptr %823, i64 0, i32 1
  %828 = load i64, ptr %827, align 8, !tbaa !59
  %829 = call i32 %600(ptr noundef %5, i32 noundef %762, i32 noundef %596, i32 noundef %763, i32 noundef %598, i64 noundef %828) #7
  br label %872

830:                                              ; preds = %821
  %831 = icmp eq ptr %824, @gx_dc_procs_ht_binary
  br i1 %831, label %836, label %832

832:                                              ; preds = %830
  %833 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %824, i64 0, i32 1
  %834 = load ptr, ptr %833, align 8, !tbaa !100
  %835 = call i32 %834(ptr noundef nonnull %823, i32 noundef %762, i32 noundef %596, i32 noundef %763, i32 noundef %598, ptr noundef %5, i32 noundef %13, ptr noundef null) #7
  br label %872

836:                                              ; preds = %830
  br i1 %665, label %837, label %860

837:                                              ; preds = %836
  %838 = getelementptr inbounds %struct.gx_device_color_s, ptr %823, i64 0, i32 1, i32 0, i32 3
  %839 = load ptr, ptr %838, align 8, !tbaa !59
  %840 = load i32, ptr %9, align 4, !tbaa !44
  %841 = add nsw i32 %840, %762
  %842 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %839, i64 0, i32 4
  %843 = load i16, ptr %842, align 8, !tbaa !101
  %844 = zext i16 %843 to i32
  %845 = srem i32 %841, %844
  %846 = add nsw i32 %845, %763
  %847 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %839, i64 0, i32 2
  %848 = load i32, ptr %847, align 4, !tbaa !103
  %849 = icmp sgt i32 %846, %848
  br i1 %849, label %860, label %850

850:                                              ; preds = %837
  %851 = load ptr, ptr %839, align 8, !tbaa !104
  %852 = getelementptr inbounds i8, ptr %851, i64 %666
  %853 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %839, i64 0, i32 1
  %854 = load i32, ptr %853, align 8, !tbaa !105
  %855 = getelementptr inbounds %struct.gx_device_color_s, ptr %823, i64 0, i32 1, i32 0, i32 1
  %856 = load i64, ptr %855, align 8, !tbaa !59
  %857 = getelementptr inbounds %struct.gx_device_color_s, ptr %823, i64 0, i32 1, i32 0, i32 1, i64 1
  %858 = load i64, ptr %857, align 8, !tbaa !59
  %859 = call i32 %604(ptr noundef %5, ptr noundef %852, i32 noundef %845, i32 noundef %854, i64 noundef 0, i32 noundef %762, i32 noundef %596, i32 noundef %763, i32 noundef %598, i64 noundef %856, i64 noundef %858) #7
  br label %872

860:                                              ; preds = %837, %836
  %861 = getelementptr inbounds %struct.gx_device_color_s, ptr %823, i64 0, i32 1, i32 0, i32 3
  %862 = load ptr, ptr %861, align 8, !tbaa !59
  %863 = getelementptr inbounds %struct.gx_device_color_s, ptr %823, i64 0, i32 1, i32 0, i32 1
  %864 = load i64, ptr %863, align 8, !tbaa !59
  %865 = getelementptr inbounds %struct.gx_device_color_s, ptr %823, i64 0, i32 1, i32 0, i32 1, i64 1
  %866 = load i64, ptr %865, align 8, !tbaa !59
  %867 = getelementptr inbounds %struct.gx_device_color_s, ptr %823, i64 0, i32 2
  %868 = load i32, ptr %867, align 8, !tbaa !106
  %869 = getelementptr inbounds %struct.gx_device_color_s, ptr %823, i64 0, i32 2, i32 1
  %870 = load i32, ptr %869, align 4, !tbaa !107
  %871 = call i32 %602(ptr noundef %5, ptr noundef %862, i32 noundef %762, i32 noundef %596, i32 noundef %763, i32 noundef %598, i64 noundef %864, i64 noundef %866, i32 noundef %868, i32 noundef %870) #7
  br label %872

872:                                              ; preds = %826, %850, %860, %832, %774, %768
  %873 = phi i32 [ %822, %826 ], [ %822, %850 ], [ %822, %860 ], [ %822, %832 ], [ %671, %774 ], [ %671, %768 ]
  %874 = phi i32 [ %829, %826 ], [ %859, %850 ], [ %871, %860 ], [ %835, %832 ], [ %776, %774 ], [ %770, %768 ]
  %875 = phi ptr [ %823, %826 ], [ %823, %850 ], [ %823, %860 ], [ %823, %832 ], [ %676, %774 ], [ %676, %768 ]
  %876 = icmp slt i32 %874, 0
  br i1 %876, label %886, label %877

877:                                              ; preds = %872, %764, %752, %741
  %878 = phi i32 [ %671, %741 ], [ %671, %752 ], [ %873, %872 ], [ %671, %764 ]
  %879 = phi i32 [ %672, %741 ], [ %672, %752 ], [ %874, %872 ], [ %672, %764 ]
  %880 = phi ptr [ %676, %741 ], [ %676, %752 ], [ %875, %872 ], [ %676, %764 ]
  %881 = sub nsw i64 %732, %633
  %882 = icmp ugt ptr %731, %63
  %883 = getelementptr inbounds i8, ptr %731, i64 -1
  br i1 %882, label %886, label %884

884:                                              ; preds = %877
  %885 = load i8, ptr %883, align 1, !tbaa !59
  br label %886

886:                                              ; preds = %877, %872, %817, %884
  %887 = phi i64 [ %881, %884 ], [ %669, %817 ], [ %669, %872 ], [ %881, %877 ]
  %888 = phi i8 [ %885, %884 ], [ %670, %817 ], [ %670, %872 ], [ %670, %877 ]
  %889 = phi i32 [ %878, %884 ], [ %671, %817 ], [ %873, %872 ], [ %878, %877 ]
  %890 = phi i32 [ %879, %884 ], [ %819, %817 ], [ %874, %872 ], [ %879, %877 ]
  %891 = phi i1 [ true, %884 ], [ false, %817 ], [ false, %872 ], [ false, %877 ]
  %892 = phi i32 [ 0, %884 ], [ 1, %817 ], [ 1, %872 ], [ 35, %877 ]
  %893 = phi ptr [ %731, %884 ], [ %731, %817 ], [ %731, %872 ], [ %883, %877 ]
  %894 = phi ptr [ %880, %884 ], [ %781, %817 ], [ %875, %872 ], [ %880, %877 ]
  %895 = phi i32 [ %677, %884 ], [ %819, %817 ], [ %874, %872 ], [ %677, %877 ]
  switch i32 %892, label %1015 [
    i32 0, label %896
    i32 35, label %902
  ]

896:                                              ; preds = %886
  %897 = icmp ult i32 %733, %37
  %898 = select i1 %897, i32 %39, i32 %667
  %899 = add i32 %898, %733
  %900 = select i1 %897, i64 %637, i64 %35
  %901 = add nsw i64 %900, %732
  br label %668, !llvm.loop !108

902:                                              ; preds = %886, %617
  %903 = phi i64 [ %630, %617 ], [ %887, %886 ]
  %904 = phi i32 [ 0, %617 ], [ %890, %886 ]
  %905 = phi i64 [ %632, %617 ], [ %732, %886 ]
  %906 = phi i32 [ %33, %617 ], [ %733, %886 ]
  %907 = phi i32 [ undef, %617 ], [ %895, %886 ]
  %908 = load i8, ptr %63, align 1, !tbaa !59
  %909 = icmp eq i8 %908, 0
  %910 = select i1 %909, i1 %25, i1 false
  br i1 %910, label %1015, label %911

911:                                              ; preds = %902
  %912 = lshr i64 %903, 12
  %913 = trunc i64 %912 to i32
  %914 = ptrtoint ptr %24 to i64
  %915 = ptrtoint ptr %63 to i64
  %916 = sub i64 %914, %915
  %917 = trunc i64 %916 to i32
  %918 = mul nsw i64 %916, %35
  %919 = add nsw i64 %905, %918
  %920 = icmp eq i32 %917, 0
  br i1 %920, label %934, label %921

921:                                              ; preds = %911
  %922 = sub i32 0, %37
  br label %923

923:                                              ; preds = %921, %923
  %924 = phi i32 [ %917, %921 ], [ %927, %923 ]
  %925 = phi i32 [ %906, %921 ], [ %932, %923 ]
  %926 = phi i64 [ %919, %921 ], [ %930, %923 ]
  %927 = add i32 %924, -1
  %928 = icmp ult i32 %925, %37
  %929 = zext i1 %928 to i64
  %930 = add nsw i64 %926, %929
  %931 = select i1 %928, i32 %39, i32 %922
  %932 = add i32 %931, %925
  %933 = icmp eq i32 %927, 0
  br i1 %933, label %934, label %923, !llvm.loop !109

934:                                              ; preds = %923, %911
  %935 = phi i64 [ %919, %911 ], [ %930, %923 ]
  %936 = lshr i64 %935, 12
  %937 = trunc i64 %936 to i32
  %938 = sub nsw i32 %937, %913
  %939 = icmp slt i32 %938, 1
  br i1 %939, label %940, label %944

940:                                              ; preds = %934
  %941 = icmp eq i32 %938, 0
  br i1 %941, label %1015, label %942

942:                                              ; preds = %940
  %943 = sub nsw i32 0, %938
  br label %944

944:                                              ; preds = %942, %934
  %945 = phi i32 [ %937, %942 ], [ %913, %934 ]
  %946 = phi i32 [ %943, %942 ], [ %938, %934 ]
  %947 = add nsw i32 %946, %945
  %948 = icmp sgt i32 %947, %628
  %949 = icmp slt i32 %945, %623
  %950 = select i1 %948, i1 true, i1 %949
  br i1 %950, label %951, label %960

951:                                              ; preds = %944
  %952 = sub i32 %945, %623
  %953 = call i32 @llvm.smax.i32(i32 %945, i32 %623)
  %954 = select i1 %949, i32 %952, i32 0
  %955 = add i32 %954, %946
  %956 = sub i32 %628, %947
  %957 = select i1 %948, i32 %956, i32 0
  %958 = add i32 %955, %957
  %959 = icmp slt i32 %958, 1
  br i1 %959, label %1015, label %960

960:                                              ; preds = %944, %951
  %961 = phi i32 [ %953, %951 ], [ %945, %944 ]
  %962 = phi i32 [ %958, %951 ], [ %946, %944 ]
  %963 = zext i8 %908 to i64
  %964 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 %963
  %965 = load ptr, ptr %964, align 8, !tbaa !72
  %966 = icmp eq ptr %965, @gx_dc_procs_none
  br i1 %966, label %967, label %1002

967:                                              ; preds = %960
  %968 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 27
  %969 = load i8, ptr %968, align 1, !tbaa !81
  %970 = icmp eq i8 %969, 0
  br i1 %970, label %979, label %971

971:                                              ; preds = %967
  %972 = zext i8 %908 to i32
  %973 = shl nuw nsw i32 %972, 7
  %974 = lshr i32 %972, 1
  %975 = or disjoint i32 %973, %974
  %976 = lshr i32 %972, 5
  %977 = sub nsw i32 %975, %976
  %978 = trunc i32 %977 to i16
  call void %17(i16 noundef signext %978, ptr noundef nonnull %964, ptr noundef %11, ptr noundef %5, i32 noundef 1) #7
  br label %1010

979:                                              ; preds = %967
  %980 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 3
  %981 = load i32, ptr %980, align 8, !tbaa !82
  switch i32 %981, label %1000 [
    i32 0, label %982
    i32 1, label %986
    i32 2, label %991
  ]

982:                                              ; preds = %979
  %983 = uitofp i8 %908 to double
  %984 = fmul double %983, 0x3F70101010101010
  %985 = fptrunc double %984 to float
  store float %985, ptr %7, align 8, !tbaa !85
  br label %1000

986:                                              ; preds = %979
  %987 = lshr i8 %908, 4
  %988 = zext nneg i8 %987 to i64
  %989 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 1, i64 %988
  %990 = load float, ptr %989, align 4, !tbaa !85
  store float %990, ptr %7, align 8, !tbaa !85
  br label %1000

991:                                              ; preds = %979
  %992 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 1
  %993 = load float, ptr %992, align 8, !tbaa !85
  %994 = fpext float %993 to double
  %995 = uitofp i8 %908 to double
  %996 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 2
  %997 = load double, ptr %996, align 8, !tbaa !86
  %998 = call double @llvm.fmuladd.f64(double %995, double %997, double %994)
  %999 = fptrunc double %998 to float
  store float %999, ptr %7, align 8, !tbaa !85
  br label %1000

1000:                                             ; preds = %991, %979, %986, %982
  %1001 = call i32 %57(ptr noundef nonnull %7, ptr noundef %58, ptr noundef nonnull %964, ptr noundef %11, ptr noundef %5, i32 noundef 1) #7
  br label %1010

1002:                                             ; preds = %960
  %1003 = icmp eq ptr %965, @gx_dc_procs_pure
  %1004 = icmp ne i32 %20, 0
  %1005 = select i1 %1003, i1 true, i1 %1004
  br i1 %1005, label %1010, label %1006

1006:                                             ; preds = %1002
  %1007 = load ptr, ptr %965, align 8, !tbaa !73
  %1008 = call i32 %1007(ptr noundef nonnull %964, ptr noundef %11, ptr noundef %5, i32 noundef 1) #7
  %1009 = icmp slt i32 %1008, 0
  br i1 %1009, label %1015, label %1010

1010:                                             ; preds = %1002, %1006, %971, %1000
  %1011 = load ptr, ptr %964, align 8, !tbaa !72
  %1012 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %1011, i64 0, i32 1
  %1013 = load ptr, ptr %1012, align 8, !tbaa !100
  %1014 = call i32 %1013(ptr noundef nonnull %964, i32 noundef %961, i32 noundef %596, i32 noundef %962, i32 noundef %598, ptr noundef %5, i32 noundef %13, ptr noundef null) #7
  br label %1015

1015:                                             ; preds = %886, %1006, %951, %940, %1010, %902
  %1016 = phi i32 [ %904, %902 ], [ %1008, %1006 ], [ %904, %940 ], [ %904, %951 ], [ %1014, %1010 ], [ %890, %886 ]
  %1017 = phi i1 [ true, %902 ], [ false, %1006 ], [ true, %940 ], [ true, %951 ], [ true, %1010 ], [ %891, %886 ]
  %1018 = phi i32 [ %907, %902 ], [ %1008, %1006 ], [ %907, %940 ], [ %907, %951 ], [ %907, %1010 ], [ %895, %886 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  br i1 %1017, label %1019, label %1023

1019:                                             ; preds = %1015, %583
  %1020 = phi i32 [ %584, %583 ], [ %1016, %1015 ]
  %1021 = icmp slt i32 %1020, 0
  %1022 = select i1 %1021, i32 %1020, i32 1
  br label %1023

1023:                                             ; preds = %6, %583, %1015, %1019
  %1024 = phi i32 [ %1022, %1019 ], [ %586, %583 ], [ %1018, %1015 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #7
  ret i32 %1024
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @gx_device_cmap_procs(ptr noundef) local_unnamed_addr #4

declare i32 @gx_check_tile_cache(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare i32 @gx_check_tile_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 24}
!6 = !{!"gx_image_strategies_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !8, i64 6}
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
!25 = !{!26, !7, i64 0}
!26 = !{!"gx_image_clue_s", !27, i64 0, !15, i64 96}
!27 = !{!"gx_device_color_s", !7, i64 0, !8, i64 8, !24, i64 48, !28, i64 56}
!28 = !{!"_mask", !29, i64 0, !17, i64 24, !7, i64 32}
!29 = !{!"gs_client_color_s", !30, i64 0, !7, i64 16}
!30 = !{!"gs_paint_color_s", !8, i64 0}
!31 = !{!11, !8, i64 164}
!32 = !{!11, !8, i64 166}
!33 = !{!11, !8, i64 3}
!34 = !{!11, !15, i64 160}
!35 = !{!11, !8, i64 165}
!36 = !{!11, !13, i64 8}
!37 = !{!11, !17, i64 248}
!38 = !{!11, !7, i64 96}
!39 = !{!11, !15, i64 232}
!40 = !{!41, !7, i64 0}
!41 = !{!"gx_color_map_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!42 = !{i64 0, i64 8, !43, i64 8, i64 4, !44, i64 16, i64 8, !43, i64 24, i64 4, !44, i64 28, i64 4, !44, i64 32, i64 8, !43, i64 40, i64 4, !44, i64 48, i64 8, !43, i64 56, i64 4, !44, i64 60, i64 4, !44}
!43 = !{!17, !17, i64 0}
!44 = !{!15, !15, i64 0}
!45 = !{i64 0, i64 4, !44, i64 8, i64 8, !43, i64 16, i64 4, !44, i64 20, i64 4, !44, i64 24, i64 8, !43, i64 32, i64 4, !44, i64 40, i64 8, !43, i64 48, i64 4, !44, i64 52, i64 4, !44}
!46 = !{i64 0, i64 8, !43, i64 8, i64 4, !44, i64 12, i64 4, !44, i64 16, i64 8, !43, i64 24, i64 4, !44, i64 32, i64 8, !43, i64 40, i64 4, !44, i64 44, i64 4, !44}
!47 = !{i64 0, i64 4, !44, i64 4, i64 4, !44, i64 8, i64 8, !43, i64 16, i64 4, !44, i64 24, i64 8, !43, i64 32, i64 4, !44, i64 36, i64 4, !44}
!48 = !{i64 0, i64 4, !44, i64 4, i64 8, !43, i64 12, i64 4, !44, i64 20, i64 8, !43, i64 28, i64 4, !44, i64 32, i64 4, !44}
!49 = !{i64 0, i64 8, !43, i64 8, i64 4, !44, i64 16, i64 8, !43, i64 24, i64 4, !44, i64 28, i64 4, !44}
!50 = !{i64 0, i64 4, !44, i64 8, i64 8, !43, i64 16, i64 4, !44, i64 20, i64 4, !44}
!51 = !{i64 0, i64 8, !43, i64 8, i64 4, !44, i64 12, i64 4, !44}
!52 = !{i64 0, i64 4, !44, i64 4, i64 4, !44}
!53 = !{i64 0, i64 4, !44}
!54 = !{!11, !7, i64 104}
!55 = !{!56, !7, i64 0}
!56 = !{!"gs_color_space_s", !7, i64 0, !8, i64 8}
!57 = !{!58, !7, i64 48}
!58 = !{!"gs_color_space_type_s", !15, i64 0, !15, i64 4, !15, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88}
!59 = !{!8, !8, i64 0}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!11, !17, i64 328}
!63 = !{!11, !17, i64 296}
!64 = !{!11, !17, i64 360}
!65 = !{!11, !17, i64 304}
!66 = !{!67, !7, i64 416}
!67 = !{!"gx_device_s", !15, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !15, i64 40, !15, i64 44, !68, i64 48, !15, i64 64, !15, i64 68, !8, i64 72, !8, i64 80, !15, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !17, i64 144, !17, i64 152, !15, i64 160, !70, i64 168, !71, i64 192}
!68 = !{!"gx_device_color_info_s", !15, i64 0, !15, i64 4, !69, i64 8, !69, i64 10, !69, i64 12, !69, i64 14}
!69 = !{!"short", !8, i64 0}
!70 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!71 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!72 = !{!27, !7, i64 0}
!73 = !{!74, !7, i64 0}
!74 = !{!"gx_device_color_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!75 = distinct !{!75, !61}
!76 = distinct !{!76, !61}
!77 = distinct !{!77, !61}
!78 = distinct !{!78, !61}
!79 = distinct !{!79, !61}
!80 = distinct !{!80, !61}
!81 = !{!11, !8, i64 167}
!82 = !{!83, !15, i64 328}
!83 = !{!"sample_map_s", !8, i64 0, !8, i64 256, !84, i64 320, !15, i64 328}
!84 = !{!"double", !8, i64 0}
!85 = !{!13, !13, i64 0}
!86 = !{!83, !84, i64 320}
!87 = distinct !{!87, !61}
!88 = distinct !{!88, !61}
!89 = distinct !{!89, !61}
!90 = distinct !{!90, !61}
!91 = !{!11, !17, i64 240}
!92 = !{!11, !15, i64 472}
!93 = !{!11, !15, i64 476}
!94 = !{!67, !7, i64 248}
!95 = !{!67, !7, i64 464}
!96 = !{!67, !7, i64 264}
!97 = !{!67, !7, i64 368}
!98 = !{!11, !17, i64 168}
!99 = !{!11, !17, i64 184}
!100 = !{!74, !7, i64 8}
!101 = !{!102, !69, i64 32}
!102 = !{!"gx_strip_bitmap_s", !7, i64 0, !15, i64 8, !24, i64 12, !17, i64 24, !69, i64 32, !69, i64 34, !69, i64 36, !69, i64 38}
!103 = !{!102, !15, i64 12}
!104 = !{!102, !7, i64 0}
!105 = !{!102, !15, i64 8}
!106 = !{!27, !15, i64 48}
!107 = !{!27, !15, i64 52}
!108 = distinct !{!108, !61}
!109 = distinct !{!109, !61}
