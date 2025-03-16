; ModuleID = 'gximage0.c'
source_filename = "gximage0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.gx_device_clip_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gx_clip_list_s, ptr, %struct.gs_int_point_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, ptr, ptr, i32, i32 }
%struct.gx_clip_rect_s = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.gx_device_forward_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"image RasterOp\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"image clipper\00", align 1
@s_IScale_template = external local_unnamed_addr constant %struct.stream_template_s, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"image scaler state\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"image line\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"image buffer\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"gx_default_end_image\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_image_data(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 37
  %10 = load i32, ptr %9, align 8, !tbaa !5
  %11 = add nsw i32 %10, %5
  %12 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 9, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !23
  %14 = tail call i32 @llvm.smin.i32(i32 %11, i32 %13)
  %15 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 9, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 3
  %18 = load i8, ptr %17, align 1, !tbaa !25
  %19 = zext i8 %18 to i32
  %20 = mul nsw i32 %16, %19
  %21 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 4
  %22 = load i8, ptr %21, align 4, !tbaa !26
  %23 = zext i8 %22 to i32
  %24 = sdiv i32 %20, %23
  %25 = load i8, ptr %1, align 8, !tbaa !27
  %26 = zext i8 %25 to i32
  %27 = mul nsw i32 %24, %26
  %28 = add nsw i32 %27, 7
  %29 = ashr i32 %28, 3
  %30 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 31
  %31 = load i64, ptr %30, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  %32 = icmp eq i32 %5, 0
  br i1 %32, label %331, label %33

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 34
  %35 = load ptr, ptr %34, align 8, !tbaa !29
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.gx_device_clip_s, ptr %35, i64 0, i32 22
  store ptr %0, ptr %38, align 8, !tbaa !30
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi ptr [ %35, %37 ], [ %0, %33 ]
  %41 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 35
  %42 = load ptr, ptr %41, align 8, !tbaa !38
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.gx_device_forward_s, ptr %42, i64 0, i32 22
  store ptr %40, ptr %45, align 8, !tbaa !39
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi ptr [ %42, %44 ], [ %40, %39 ]
  %48 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40
  %49 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 1
  %50 = load i32, ptr %9, align 8, !tbaa !5
  %51 = icmp slt i32 %50, %14
  br i1 %51, label %52, label %219

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 12
  %54 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 18
  %55 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 48
  %56 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 5
  %57 = icmp ugt i8 %22, 1
  %58 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 2
  %59 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 38
  %60 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 0, i32 0, i32 0, i32 1
  %61 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 0, i32 0, i32 1
  %62 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 0, i32 0, i32 1, i32 1
  %63 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 0, i32 0, i32 1, i32 2
  %64 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 0, i32 1
  %65 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 38, i32 1
  %66 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 0, i32 1, i32 0, i32 1
  %67 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 0, i32 1, i32 1
  %68 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 0, i32 1, i32 1, i32 1
  %69 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 0, i32 1, i32 1, i32 2
  %70 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 7
  %71 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 23
  %72 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 28, i32 1
  %73 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 28
  %74 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 46
  %75 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 47
  %76 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 28, i32 1, i32 1
  %77 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 28, i32 0, i32 1
  %78 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 44
  %79 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 45
  %80 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 39
  %81 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 39, i32 1
  %82 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 1, i32 1
  %83 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 13
  %84 = zext i32 %4 to i64
  %85 = zext i8 %22 to i64
  br label %86

86:                                               ; preds = %52, %214
  %87 = phi i64 [ 0, %52 ], [ %215, %214 ]
  %88 = phi i32 [ undef, %52 ], [ %213, %214 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  store i32 %3, ptr %8, align 4, !tbaa !41
  %89 = load ptr, ptr %53, align 8, !tbaa !42
  %90 = load ptr, ptr %54, align 8, !tbaa !43
  %91 = load ptr, ptr %2, align 8, !tbaa !44
  %92 = getelementptr inbounds i8, ptr %91, i64 %87
  %93 = load i8, ptr %56, align 1, !tbaa !45
  %94 = zext i8 %93 to i32
  %95 = call ptr %89(ptr noundef %90, ptr noundef nonnull %8, ptr noundef %92, i32 noundef %3, i32 noundef %29, ptr noundef nonnull %55, i32 noundef %94) #4
  br i1 %57, label %96, label %115

96:                                               ; preds = %86, %96
  %97 = phi i64 [ %113, %96 ], [ 1, %86 ]
  %98 = load ptr, ptr %53, align 8, !tbaa !42
  %99 = load ptr, ptr %54, align 8, !tbaa !43
  %100 = load i8, ptr %58, align 2, !tbaa !46
  %101 = zext nneg i8 %100 to i32
  %102 = trunc i64 %97 to i32
  %103 = shl i32 %102, %101
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, ptr %99, i64 %104
  %106 = getelementptr inbounds ptr, ptr %2, i64 %97
  %107 = load ptr, ptr %106, align 8, !tbaa !44
  %108 = getelementptr inbounds i8, ptr %107, i64 %87
  %109 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 48, i64 %97
  %110 = load i8, ptr %56, align 1, !tbaa !45
  %111 = zext i8 %110 to i32
  %112 = call ptr %98(ptr noundef %105, ptr noundef nonnull %7, ptr noundef %108, i32 noundef %3, i32 noundef %29, ptr noundef nonnull %109, i32 noundef %111) #4
  %113 = add nuw nsw i64 %97, 1
  %114 = icmp eq i64 %113, %85
  br i1 %114, label %115, label %96, !llvm.loop !47

115:                                              ; preds = %96, %86
  %116 = load i64, ptr %48, align 8, !tbaa !49
  store i64 %116, ptr %59, align 8, !tbaa !50
  %117 = load i32, ptr %60, align 8, !tbaa !51
  %118 = load i32, ptr %62, align 8, !tbaa !52
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = sub i32 %117, %118
  store i32 %121, ptr %60, align 8, !tbaa !51
  %122 = load i64, ptr %61, align 8, !tbaa !53
  br label %128

123:                                              ; preds = %115
  %124 = load i32, ptr %63, align 4, !tbaa !54
  %125 = add i32 %124, %117
  store i32 %125, ptr %60, align 8, !tbaa !51
  %126 = load i64, ptr %61, align 8, !tbaa !53
  %127 = add nsw i64 %126, 1
  br label %128

128:                                              ; preds = %123, %120
  %129 = phi i64 [ %122, %120 ], [ %127, %123 ]
  %130 = add nsw i64 %129, %116
  store i64 %130, ptr %48, align 8, !tbaa !49
  %131 = load i64, ptr %64, align 8, !tbaa !55
  store i64 %131, ptr %65, align 8, !tbaa !56
  %132 = load i32, ptr %66, align 8, !tbaa !57
  %133 = load i32, ptr %68, align 8, !tbaa !58
  %134 = icmp ult i32 %132, %133
  br i1 %134, label %138, label %135

135:                                              ; preds = %128
  %136 = sub i32 %132, %133
  store i32 %136, ptr %66, align 8, !tbaa !57
  %137 = load i64, ptr %67, align 8, !tbaa !59
  br label %143

138:                                              ; preds = %128
  %139 = load i32, ptr %69, align 4, !tbaa !60
  %140 = add i32 %139, %132
  store i32 %140, ptr %66, align 8, !tbaa !57
  %141 = load i64, ptr %67, align 8, !tbaa !59
  %142 = add nsw i64 %141, 1
  br label %143

143:                                              ; preds = %138, %135
  %144 = phi i64 [ %137, %135 ], [ %142, %138 ]
  %145 = add nsw i64 %144, %131
  store i64 %145, ptr %64, align 8, !tbaa !55
  %146 = load i8, ptr %70, align 1, !tbaa !61
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %196

148:                                              ; preds = %143
  %149 = load i32, ptr %71, align 8, !tbaa !62
  switch i32 %149, label %196 [
    i32 0, label %150
    i32 1, label %173
  ]

150:                                              ; preds = %148
  %151 = icmp slt i64 %144, 0
  %152 = select i1 %151, i64 %145, i64 %131
  %153 = sub nsw i64 %152, %31
  %154 = load i64, ptr %76, align 8, !tbaa !63
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %156, label %171

156:                                              ; preds = %150
  %157 = select i1 %151, i64 %131, i64 %145
  %158 = add nsw i64 %157, %31
  %159 = load i64, ptr %77, align 8, !tbaa !64
  %160 = icmp sgt i64 %158, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %156
  %162 = add nsw i64 %153, 2047
  %163 = lshr i64 %162, 12
  %164 = trunc i64 %163 to i32
  store i32 %164, ptr %78, align 8, !tbaa !65
  %165 = add nsw i64 %158, 2047
  %166 = lshr i64 %165, 12
  %167 = trunc i64 %166 to i32
  %168 = sub nsw i32 %167, %164
  store i32 %168, ptr %79, align 4, !tbaa !66
  %169 = icmp eq i32 %167, %164
  %170 = select i1 %169, i32 9, i32 0
  br label %171

171:                                              ; preds = %161, %156, %150
  %172 = phi i32 [ 9, %150 ], [ 9, %156 ], [ %170, %161 ]
  switch i32 %172, label %211 [
    i32 0, label %196
    i32 9, label %209
  ]

173:                                              ; preds = %148
  %174 = icmp slt i64 %129, 0
  %175 = select i1 %174, i64 %130, i64 %116
  %176 = sub nsw i64 %175, %31
  %177 = load i64, ptr %72, align 8, !tbaa !67
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %173
  %180 = select i1 %174, i64 %116, i64 %130
  %181 = add nsw i64 %180, %31
  %182 = load i64, ptr %73, align 8, !tbaa !68
  %183 = icmp sgt i64 %181, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %179
  %185 = add nsw i64 %176, 2047
  %186 = lshr i64 %185, 12
  %187 = trunc i64 %186 to i32
  store i32 %187, ptr %74, align 8, !tbaa !69
  %188 = add nsw i64 %181, 2047
  %189 = lshr i64 %188, 12
  %190 = trunc i64 %189 to i32
  %191 = sub nsw i32 %190, %187
  store i32 %191, ptr %75, align 4, !tbaa !70
  %192 = icmp eq i32 %190, %187
  %193 = select i1 %192, i32 9, i32 0
  br label %194

194:                                              ; preds = %184, %179, %173
  %195 = phi i32 [ 9, %173 ], [ 9, %179 ], [ %193, %184 ]
  switch i32 %195, label %211 [
    i32 0, label %196
    i32 9, label %209
  ]

196:                                              ; preds = %148, %171, %194, %143
  %197 = load i64, ptr %80, align 8, !tbaa !71
  %198 = sub i64 %116, %197
  %199 = load i64, ptr %49, align 8, !tbaa !72
  %200 = add nsw i64 %198, %199
  store i64 %200, ptr %49, align 8, !tbaa !72
  %201 = load i64, ptr %81, align 8, !tbaa !73
  %202 = sub i64 %131, %201
  %203 = load i64, ptr %82, align 8, !tbaa !74
  %204 = add nsw i64 %202, %203
  store i64 %204, ptr %82, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %80, ptr noundef nonnull align 8 dereferenceable(16) %59, i64 16, i1 false), !tbaa.struct !75
  %205 = load ptr, ptr %83, align 8, !tbaa !77
  %206 = load i32, ptr %8, align 4, !tbaa !41
  %207 = call i32 %205(ptr noundef %1, ptr noundef %95, i32 noundef %206, i32 noundef %20, i32 noundef 1, ptr noundef %47) #4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %196, %194, %171
  %210 = phi i32 [ %207, %196 ], [ %88, %194 ], [ %88, %171 ]
  br label %211

211:                                              ; preds = %196, %209, %194, %171
  %212 = phi i32 [ 0, %209 ], [ %195, %194 ], [ %172, %171 ], [ 10, %196 ]
  %213 = phi i32 [ %210, %209 ], [ %88, %194 ], [ %88, %171 ], [ %207, %196 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  switch i32 %212, label %331 [
    i32 0, label %214
    i32 10, label %276
  ]

214:                                              ; preds = %211
  %215 = add i64 %87, %84
  %216 = load i32, ptr %9, align 8, !tbaa !5
  %217 = add nsw i32 %216, 1
  store i32 %217, ptr %9, align 8, !tbaa !5
  %218 = icmp slt i32 %217, %14
  br i1 %218, label %86, label %219, !llvm.loop !78

219:                                              ; preds = %214, %46
  %220 = phi i32 [ %50, %46 ], [ %217, %214 ]
  %221 = load i32, ptr %12, align 4, !tbaa !23
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %331, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 23
  %225 = load i32, ptr %224, align 8, !tbaa !62
  switch i32 %225, label %253 [
    i32 0, label %226
    i32 1, label %240
  ]

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 0, i32 1
  %228 = load i64, ptr %227, align 8, !tbaa !55
  %229 = sub i64 %228, %31
  %230 = add i64 %229, 2048
  %231 = lshr i64 %230, 12
  %232 = trunc i64 %231 to i32
  %233 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 44
  store i32 %232, ptr %233, align 8, !tbaa !65
  %234 = add i64 %31, 2048
  %235 = add i64 %234, %228
  %236 = lshr i64 %235, 12
  %237 = trunc i64 %236 to i32
  %238 = sub nsw i32 %237, %232
  %239 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 45
  store i32 %238, ptr %239, align 4, !tbaa !66
  br label %253

240:                                              ; preds = %223
  %241 = load i64, ptr %48, align 8, !tbaa !49
  %242 = sub i64 %241, %31
  %243 = add i64 %242, 2048
  %244 = lshr i64 %243, 12
  %245 = trunc i64 %244 to i32
  %246 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 46
  store i32 %245, ptr %246, align 8, !tbaa !69
  %247 = add i64 %31, 2048
  %248 = add i64 %247, %241
  %249 = lshr i64 %248, 12
  %250 = trunc i64 %249 to i32
  %251 = sub nsw i32 %250, %245
  %252 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 47
  store i32 %251, ptr %252, align 4, !tbaa !70
  br label %253

253:                                              ; preds = %223, %240, %226
  %254 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 38
  %255 = load i64, ptr %254, align 8, !tbaa !50
  %256 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 39
  %257 = load i64, ptr %256, align 8, !tbaa !71
  %258 = sub i64 %255, %257
  %259 = load i64, ptr %49, align 8, !tbaa !72
  %260 = add nsw i64 %258, %259
  store i64 %260, ptr %49, align 8, !tbaa !72
  %261 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 38, i32 1
  %262 = load i64, ptr %261, align 8, !tbaa !56
  %263 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 39, i32 1
  %264 = load i64, ptr %263, align 8, !tbaa !73
  %265 = sub i64 %262, %264
  %266 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 1, i32 1
  %267 = load i64, ptr %266, align 8, !tbaa !74
  %268 = add nsw i64 %265, %267
  store i64 %268, ptr %266, align 8, !tbaa !74
  %269 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 13
  %270 = load ptr, ptr %269, align 8, !tbaa !77
  %271 = call i32 %270(ptr noundef nonnull %1, ptr noundef null, i32 noundef 0, i32 noundef %20, i32 noundef 0, ptr noundef %47) #4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %331

273:                                              ; preds = %253
  %274 = load i32, ptr %9, align 8, !tbaa !5
  %275 = add nsw i32 %274, -1
  store i32 %275, ptr %9, align 8, !tbaa !5
  br label %276

276:                                              ; preds = %211, %273
  %277 = phi i32 [ %271, %273 ], [ %213, %211 ]
  %278 = load i32, ptr %9, align 8, !tbaa !5
  %279 = icmp sgt i32 %278, %10
  br i1 %279, label %280, label %331

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 0, i32 0, i32 0, i32 1
  %282 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 0, i32 0, i32 1
  %283 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 0, i32 0, i32 1, i32 2
  %284 = load i32, ptr %283, align 4, !tbaa !54
  %285 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 0, i32 0, i32 1, i32 1
  %286 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 0, i32 1
  %287 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 0, i32 1, i32 0, i32 1
  %288 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 0, i32 1, i32 1
  %289 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 0, i32 1, i32 1, i32 2
  %290 = load i32, ptr %289, align 4, !tbaa !60
  %291 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 40, i32 0, i32 1, i32 1, i32 1
  %292 = load i32, ptr %281, align 8, !tbaa !51
  %293 = load i64, ptr %48, align 8, !tbaa !49
  %294 = load i32, ptr %287, align 8, !tbaa !57
  %295 = load i64, ptr %286, align 8, !tbaa !55
  br label %296

296:                                              ; preds = %280, %324
  %297 = phi i64 [ %295, %280 ], [ %327, %324 ]
  %298 = phi i32 [ %294, %280 ], [ %325, %324 ]
  %299 = phi i64 [ %293, %280 ], [ %314, %324 ]
  %300 = phi i32 [ %292, %280 ], [ %312, %324 ]
  %301 = phi i32 [ %278, %280 ], [ %328, %324 ]
  %302 = icmp ult i32 %300, %284
  br i1 %302, label %303, label %307

303:                                              ; preds = %296
  %304 = load i32, ptr %285, align 8, !tbaa !52
  %305 = add i32 %304, %300
  store i32 %305, ptr %281, align 8, !tbaa !51
  %306 = load i64, ptr %282, align 8, !tbaa !53
  br label %311

307:                                              ; preds = %296
  %308 = sub i32 %300, %284
  store i32 %308, ptr %281, align 8, !tbaa !51
  %309 = load i64, ptr %282, align 8, !tbaa !53
  %310 = add nsw i64 %309, 1
  br label %311

311:                                              ; preds = %307, %303
  %312 = phi i32 [ %305, %303 ], [ %308, %307 ]
  %313 = phi i64 [ %306, %303 ], [ %310, %307 ]
  %314 = sub nsw i64 %299, %313
  %315 = icmp ult i32 %298, %290
  br i1 %315, label %316, label %320

316:                                              ; preds = %311
  %317 = load i32, ptr %291, align 8, !tbaa !58
  %318 = add i32 %317, %298
  store i32 %318, ptr %287, align 8, !tbaa !57
  %319 = load i64, ptr %288, align 8, !tbaa !59
  br label %324

320:                                              ; preds = %311
  %321 = sub i32 %298, %290
  store i32 %321, ptr %287, align 8, !tbaa !57
  %322 = load i64, ptr %288, align 8, !tbaa !59
  %323 = add nsw i64 %322, 1
  br label %324

324:                                              ; preds = %320, %316
  %325 = phi i32 [ %318, %316 ], [ %321, %320 ]
  %326 = phi i64 [ %319, %316 ], [ %323, %320 ]
  %327 = sub nsw i64 %297, %326
  %328 = add nsw i32 %301, -1
  %329 = icmp sgt i32 %328, %10
  br i1 %329, label %296, label %330, !llvm.loop !79

330:                                              ; preds = %324
  store i64 %314, ptr %48, align 8, !tbaa !49
  store i64 %327, ptr %286, align 8, !tbaa !55
  store i32 %10, ptr %9, align 8, !tbaa !5
  br label %331

331:                                              ; preds = %211, %276, %330, %219, %253, %6
  %332 = phi i32 [ 0, %6 ], [ 0, %219 ], [ 1, %253 ], [ %277, %330 ], [ %277, %276 ], [ undef, %211 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  ret i32 %332
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_default_end_image(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  %6 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 36
  %7 = load ptr, ptr %6, align 8, !tbaa !81
  %8 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !82
  %10 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 35
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  tail call void %9(ptr noundef %5, ptr noundef %11, ptr noundef nonnull @.str) #4
  %12 = load ptr, ptr %8, align 8, !tbaa !82
  %13 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 34
  %14 = load ptr, ptr %13, align 8, !tbaa !29
  tail call void %12(ptr noundef %5, ptr noundef %14, ptr noundef nonnull @.str.1) #4
  %15 = icmp eq ptr %7, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_IScale_template, i64 0, i32 5), align 8, !tbaa !85
  tail call void %17(ptr noundef nonnull %7) #4
  %18 = load ptr, ptr %8, align 8, !tbaa !82
  tail call void %18(ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull @.str.2) #4
  br label %19

19:                                               ; preds = %16, %3
  %20 = load ptr, ptr %8, align 8, !tbaa !82
  %21 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 20
  %22 = load ptr, ptr %21, align 8, !tbaa !87
  tail call void %20(ptr noundef %5, ptr noundef %22, ptr noundef nonnull @.str.3) #4
  %23 = load ptr, ptr %8, align 8, !tbaa !82
  %24 = getelementptr inbounds %struct.gx_image_enum_s, ptr %1, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  tail call void %23(ptr noundef %5, ptr noundef %25, ptr noundef nonnull @.str.4) #4
  %26 = load ptr, ptr %8, align 8, !tbaa !82
  tail call void %26(ptr noundef %5, ptr noundef %1, ptr noundef nonnull @.str.5) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !12, i64 288}
!6 = !{!"gx_image_enum_s", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !9, i64 8, !11, i64 32, !13, i64 48, !13, i64 64, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !12, i64 136, !15, i64 144, !12, i64 152, !12, i64 156, !12, i64 160, !7, i64 164, !7, i64 165, !7, i64 166, !7, i64 167, !16, i64 168, !16, i64 200, !12, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !12, i64 288, !13, i64 296, !13, i64 312, !17, i64 328, !12, i64 456, !12, i64 460, !22, i64 464, !12, i64 472, !12, i64 476, !12, i64 480, !12, i64 484, !7, i64 488, !7, i64 1832}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"gs_matrix_s", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!10 = !{!"float", !7, i64 0}
!11 = !{!"r_", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!12 = !{!"int", !7, i64 0}
!13 = !{!"gs_fixed_point_s", !14, i64 0, !14, i64 8}
!14 = !{!"long", !7, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!"gs_fixed_rect_s", !13, i64 0, !13, i64 16}
!17 = !{!"dd_", !18, i64 0, !18, i64 64}
!18 = !{!"gx_dda_fixed_point_s", !19, i64 0, !19, i64 32}
!19 = !{!"gx_dda_fixed_s", !20, i64 0, !21, i64 16}
!20 = !{!"_a", !14, i64 0, !12, i64 8}
!21 = !{!"_e", !14, i64 0, !12, i64 8, !12, i64 12}
!22 = !{!"gs_int_point_s", !12, i64 0, !12, i64 4}
!23 = !{!6, !12, i64 44}
!24 = !{!6, !12, i64 40}
!25 = !{!6, !7, i64 3}
!26 = !{!6, !7, i64 4}
!27 = !{!6, !7, i64 0}
!28 = !{!6, !14, i64 240}
!29 = !{!6, !15, i64 264}
!30 = !{!31, !15, i64 488}
!31 = !{!"gx_device_clip_s", !12, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !12, i64 40, !12, i64 44, !32, i64 48, !12, i64 64, !12, i64 68, !7, i64 72, !7, i64 80, !12, i64 96, !7, i64 100, !7, i64 108, !7, i64 116, !7, i64 124, !14, i64 144, !14, i64 152, !12, i64 160, !34, i64 168, !35, i64 192, !15, i64 488, !36, i64 496, !15, i64 560, !22, i64 568}
!32 = !{!"gx_device_color_info_s", !12, i64 0, !12, i64 4, !33, i64 8, !33, i64 10, !33, i64 12, !33, i64 14}
!33 = !{!"short", !7, i64 0}
!34 = !{!"gx_page_device_procs_s", !15, i64 0, !15, i64 8, !15, i64 16}
!35 = !{!"gx_device_procs_s", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288}
!36 = !{!"gx_clip_list_s", !37, i64 0, !15, i64 40, !15, i64 48, !12, i64 56, !12, i64 60}
!37 = !{!"gx_clip_rect_s", !15, i64 0, !15, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !7, i64 32}
!38 = !{!6, !15, i64 272}
!39 = !{!40, !15, i64 488}
!40 = !{!"gx_device_forward_s", !12, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !12, i64 40, !12, i64 44, !32, i64 48, !12, i64 64, !12, i64 68, !7, i64 72, !7, i64 80, !12, i64 96, !7, i64 100, !7, i64 108, !7, i64 116, !7, i64 124, !14, i64 144, !14, i64 152, !12, i64 160, !34, i64 168, !35, i64 192, !15, i64 488}
!41 = !{!12, !12, i64 0}
!42 = !{!6, !15, i64 80}
!43 = !{!6, !15, i64 128}
!44 = !{!15, !15, i64 0}
!45 = !{!6, !7, i64 5}
!46 = !{!6, !7, i64 2}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!6, !14, i64 328}
!50 = !{!6, !14, i64 296}
!51 = !{!6, !12, i64 336}
!52 = !{!6, !12, i64 352}
!53 = !{!6, !14, i64 344}
!54 = !{!6, !12, i64 356}
!55 = !{!6, !14, i64 360}
!56 = !{!6, !14, i64 304}
!57 = !{!6, !12, i64 368}
!58 = !{!6, !12, i64 384}
!59 = !{!6, !14, i64 376}
!60 = !{!6, !12, i64 388}
!61 = !{!6, !7, i64 7}
!62 = !{!6, !12, i64 160}
!63 = !{!6, !14, i64 192}
!64 = !{!6, !14, i64 176}
!65 = !{!6, !12, i64 472}
!66 = !{!6, !12, i64 476}
!67 = !{!6, !14, i64 184}
!68 = !{!6, !14, i64 168}
!69 = !{!6, !12, i64 480}
!70 = !{!6, !12, i64 484}
!71 = !{!6, !14, i64 312}
!72 = !{!6, !14, i64 392}
!73 = !{!6, !14, i64 320}
!74 = !{!6, !14, i64 424}
!75 = !{i64 0, i64 8, !76, i64 8, i64 8, !76}
!76 = !{!14, !14, i64 0}
!77 = !{!6, !15, i64 88}
!78 = distinct !{!78, !48}
!79 = distinct !{!79, !48}
!80 = !{!6, !15, i64 112}
!81 = !{!6, !15, i64 280}
!82 = !{!83, !15, i64 88}
!83 = !{!"gs_memory_s", !84, i64 0}
!84 = !{!"gs_memory_procs_s", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152}
!85 = !{!86, !15, i64 32}
!86 = !{!"stream_template_s", !15, i64 0, !15, i64 8, !15, i64 16, !12, i64 24, !12, i64 28, !15, i64 32, !15, i64 40, !15, i64 48}
!87 = !{!6, !15, i64 144}
