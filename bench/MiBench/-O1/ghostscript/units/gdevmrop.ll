; ModuleID = 'gdevmrop.c'
source_filename = "gdevmrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_rop_texture_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, i32, ptr }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gx_strip_bitmap_s = type { ptr, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_forward_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr }
%struct.gx_device_memory_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_matrix_s, i32, i32, ptr, ptr, ptr, %struct.gs_const_string_s, %struct._c24, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_const_string_s = type { ptr, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gx_rop_source_s = type { ptr, i32, i32, i64, [2 x i64], i32 }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }

@gx_default_copy_rop_proc = external local_unnamed_addr global ptr, align 8
@gx_forward_copy_rop_proc = external local_unnamed_addr global ptr, align 8
@gx_default_strip_copy_rop_proc = external local_unnamed_addr global ptr, align 8
@gx_forward_strip_copy_rop_proc = external local_unnamed_addr global ptr, align 8
@byte_reverse_bits = external local_unnamed_addr constant [256 x i8], align 16
@rop_usage_table = external local_unnamed_addr constant [256 x i8], align 16
@rop_proc_table = external local_unnamed_addr constant [256 x ptr], align 16
@gs_memory_default = external global %struct.gs_memory_s, align 8
@.str = private unnamed_addr constant [16 x i8] c"copy_rop buffer\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"gx_device_rop_texture\00", align 1
@st_device_rop_texture = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 512, ptr @.str.1, ptr null, ptr null, ptr @device_rop_texture_enum_ptrs, ptr @device_rop_texture_reloc_ptrs, ptr null }, align 8
@gs_rop_texture_device = internal unnamed_addr constant %struct.gx_device_rop_texture_s { i32 512, ptr null, ptr @.str.2, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i16 1, i16 0, i16 2, i16 0 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr null, ptr @gx_forward_get_initial_matrix, ptr null, ptr null, ptr null, ptr @gx_forward_map_rgb_color, ptr @gx_forward_map_color_rgb, ptr @rop_texture_fill_rectangle, ptr null, ptr @rop_texture_copy_mono, ptr @rop_texture_copy_color, ptr null, ptr null, ptr @gx_forward_get_params, ptr @gx_forward_put_params, ptr @gx_forward_map_cmyk_color, ptr @gx_forward_get_xfont_procs, ptr @gx_forward_get_xfont_device, ptr @gx_forward_map_rgb_alpha_color, ptr @gx_forward_get_page_device, ptr null, ptr @gx_no_copy_alpha, ptr @gx_forward_get_band, ptr @gx_no_copy_rop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gx_forward_get_clipping_box }, ptr null, i32 252, ptr null }, align 8
@st_device_forward = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"rop source\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @gs_roplib_init(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store ptr @gx_real_default_copy_rop, ptr @gx_default_copy_rop_proc, align 8, !tbaa !5
  store ptr @gx_forward_copy_rop, ptr @gx_forward_copy_rop_proc, align 8, !tbaa !5
  store ptr @gx_real_default_strip_copy_rop, ptr @gx_default_strip_copy_rop_proc, align 8, !tbaa !5
  store ptr @gx_forward_strip_copy_rop, ptr @gx_forward_strip_copy_rop_proc, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_real_default_copy_rop(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef readonly %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #1 {
  %16 = alloca %struct.gx_strip_bitmap_s, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %16) #7
  %17 = icmp eq ptr %6, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !9
  %19 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %16, i64 0, i32 7
  store i16 0, ptr %19, align 2, !tbaa !16
  %20 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %16, i64 0, i32 6
  store i16 0, ptr %20, align 4, !tbaa !19
  br label %21

21:                                               ; preds = %15, %18
  %22 = phi ptr [ %16, %18 ], [ null, %15 ]
  %23 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 35
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  %25 = call i32 %24(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %22, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %16) #7
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_copy_rop(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #1 {
  %16 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.gx_device_s, ptr %17, i64 0, i32 21, i32 23
  %21 = load ptr, ptr %20, align 8, !tbaa !27
  br label %22

22:                                               ; preds = %15, %19
  %23 = phi ptr [ %17, %19 ], [ %0, %15 ]
  %24 = phi ptr [ %21, %19 ], [ @gx_default_copy_rop, %15 ]
  %25 = tail call i32 %24(ptr noundef %23, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #7
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_real_default_strip_copy_rop(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #1 {
  %16 = alloca %struct.gx_device_memory_s, align 8
  %17 = alloca ptr, align 8
  %18 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !28
  %20 = tail call ptr @gdev_mem_device_for_bits(i32 noundef %19) #7
  call void @llvm.lifetime.start.p0(i64 632, ptr nonnull %16) #7
  %21 = tail call i32 @gx_device_raster(ptr noundef %0, i32 noundef 1) #7
  %22 = and i32 %14, 255
  %23 = and i32 %14, 256
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %15
  %26 = shl nuw nsw i32 %22, 2
  %27 = xor i32 %26, %14
  %28 = and i32 %27, 204
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = and i32 %14, 512
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %30
  %34 = shl nuw nsw i32 %22, 4
  %35 = xor i32 %34, %14
  %36 = and i32 %35, 240
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 51, i32 3
  br label %53

39:                                               ; preds = %25, %15
  %40 = and i32 %14, 512
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  %43 = shl nuw nsw i32 %22, 4
  %44 = xor i32 %43, %14
  %45 = and i32 %44, 240
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = shl nuw nsw i32 %22, 2
  %49 = xor i32 %48, %14
  %50 = and i32 %49, 204
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 15, i32 207
  br label %53

53:                                               ; preds = %30, %33, %39, %42, %47
  %54 = phi i32 [ %52, %47 ], [ 255, %42 ], [ 255, %39 ], [ 51, %30 ], [ %38, %33 ]
  %55 = and i32 %54, %14
  %56 = shl nuw nsw i32 %55, 1
  br i1 %24, label %71, label %57

57:                                               ; preds = %53
  %58 = shl nuw nsw i32 %22, 2
  %59 = xor i32 %58, %14
  %60 = and i32 %59, 204
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %57
  %63 = and i32 %14, 512
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %85, label %65

65:                                               ; preds = %62
  %66 = shl nuw nsw i32 %22, 4
  %67 = xor i32 %66, %14
  %68 = and i32 %67, 240
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 51, i32 3
  br label %85

71:                                               ; preds = %57, %53
  %72 = and i32 %14, 512
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %71
  %75 = shl nuw nsw i32 %22, 4
  %76 = xor i32 %75, %14
  %77 = and i32 %76, 240
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = shl nuw nsw i32 %22, 2
  %81 = xor i32 %80, %14
  %82 = and i32 %81, 204
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 15, i32 207
  br label %85

85:                                               ; preds = %62, %65, %71, %74, %79
  %86 = phi i32 [ %84, %79 ], [ 255, %74 ], [ 255, %71 ], [ 51, %62 ], [ %70, %65 ]
  %87 = and i32 %86, %14
  %88 = and i32 %86, 168
  %89 = xor i32 %88, 168
  %90 = or i32 %89, %87
  %91 = xor i32 %90, %56
  %92 = and i32 %91, 170
  %93 = icmp eq i32 %92, 0
  %94 = icmp eq ptr %20, null
  br i1 %94, label %237, label %95

95:                                               ; preds = %85
  %96 = icmp eq ptr %1, null
  %97 = or i32 %9, %8
  %98 = icmp slt i32 %97, 0
  br i1 %96, label %99, label %127

99:                                               ; preds = %95
  br i1 %98, label %100, label %107

100:                                              ; preds = %99
  %101 = tail call i32 @llvm.smin.i32(i32 %8, i32 0)
  %102 = add nsw i32 %101, %10
  %103 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %104 = tail call i32 @llvm.smin.i32(i32 %9, i32 0)
  %105 = add nsw i32 %104, %11
  %106 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  br label %107

107:                                              ; preds = %100, %99
  %108 = phi i32 [ %11, %99 ], [ %105, %100 ]
  %109 = phi i32 [ %10, %99 ], [ %102, %100 ]
  %110 = phi i32 [ %9, %99 ], [ %106, %100 ]
  %111 = phi i32 [ %8, %99 ], [ %103, %100 ]
  %112 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %113 = load i32, ptr %112, align 8, !tbaa !29
  %114 = sub nsw i32 %113, %109
  %115 = icmp sgt i32 %111, %114
  %116 = sub nsw i32 %113, %111
  %117 = select i1 %115, i32 %116, i32 %109
  %118 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %119 = load i32, ptr %118, align 4, !tbaa !30
  %120 = sub nsw i32 %119, %108
  %121 = icmp sgt i32 %110, %120
  %122 = sub nsw i32 %119, %110
  %123 = select i1 %121, i32 %122, i32 %108
  %124 = icmp slt i32 %117, 1
  %125 = icmp slt i32 %123, 1
  %126 = select i1 %124, i1 true, i1 %125
  br i1 %126, label %237, label %163

127:                                              ; preds = %95
  br i1 %98, label %128, label %141

128:                                              ; preds = %127
  %129 = tail call i32 @llvm.smin.i32(i32 %8, i32 0)
  %130 = add nsw i32 %129, %10
  %131 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %132 = tail call i32 @llvm.smin.i32(i32 %8, i32 0)
  %133 = sub nsw i32 %2, %132
  %134 = icmp slt i32 %9, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = add nsw i32 %11, %9
  %137 = mul i32 %9, %3
  %138 = zext i32 %137 to i64
  %139 = sub nsw i64 0, %138
  %140 = getelementptr inbounds i8, ptr %1, i64 %139
  br label %141

141:                                              ; preds = %128, %135, %127
  %142 = phi i32 [ %136, %135 ], [ %11, %128 ], [ %11, %127 ]
  %143 = phi i32 [ %130, %135 ], [ %130, %128 ], [ %10, %127 ]
  %144 = phi i32 [ 0, %135 ], [ %9, %128 ], [ %9, %127 ]
  %145 = phi i32 [ %131, %135 ], [ %131, %128 ], [ %8, %127 ]
  %146 = phi i32 [ %133, %135 ], [ %133, %128 ], [ %2, %127 ]
  %147 = phi ptr [ %140, %135 ], [ %1, %128 ], [ %1, %127 ]
  %148 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %149 = load i32, ptr %148, align 8, !tbaa !29
  %150 = sub nsw i32 %149, %143
  %151 = icmp sgt i32 %145, %150
  %152 = sub nsw i32 %149, %145
  %153 = select i1 %151, i32 %152, i32 %143
  %154 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %155 = load i32, ptr %154, align 4, !tbaa !30
  %156 = sub nsw i32 %155, %142
  %157 = icmp sgt i32 %144, %156
  %158 = sub nsw i32 %155, %144
  %159 = select i1 %157, i32 %158, i32 %142
  %160 = icmp slt i32 %153, 1
  %161 = icmp slt i32 %159, 1
  %162 = select i1 %160, i1 true, i1 %161
  br i1 %162, label %237, label %163

163:                                              ; preds = %141, %107
  %164 = phi i32 [ %123, %107 ], [ %159, %141 ]
  %165 = phi i32 [ %117, %107 ], [ %153, %141 ]
  %166 = phi i32 [ %110, %107 ], [ %144, %141 ]
  %167 = phi i32 [ %111, %107 ], [ %145, %141 ]
  %168 = phi i32 [ %2, %107 ], [ %146, %141 ]
  %169 = phi ptr [ null, %107 ], [ %147, %141 ]
  call void @gs_make_mem_device(ptr noundef nonnull %16, ptr noundef nonnull %20, ptr noundef null, i32 noundef -1, ptr noundef %0) #7
  %170 = getelementptr inbounds %struct.gx_device_memory_s, ptr %16, i64 0, i32 8
  store i32 %165, ptr %170, align 8, !tbaa !31
  %171 = getelementptr inbounds %struct.gx_device_memory_s, ptr %16, i64 0, i32 9
  store i32 1, ptr %171, align 4, !tbaa !38
  %172 = getelementptr inbounds %struct.gx_device_memory_s, ptr %16, i64 0, i32 28
  store ptr @gs_memory_default, ptr %172, align 8, !tbaa !39
  %173 = getelementptr inbounds %struct.gx_device_memory_s, ptr %16, i64 0, i32 21
  %174 = load ptr, ptr %173, align 8, !tbaa !40
  %175 = call i32 %174(ptr noundef nonnull %16) #7
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %237, label %177

177:                                              ; preds = %163
  %178 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !41
  %179 = call ptr %178(ptr noundef nonnull @gs_memory_default, i32 noundef 1, i32 noundef %21, ptr noundef nonnull @.str) #7
  %180 = icmp eq ptr %179, null
  br i1 %180, label %232, label %181

181:                                              ; preds = %177
  %182 = add nsw i32 %166, %164
  %183 = icmp sgt i32 %164, 0
  br i1 %183, label %184, label %229

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 12
  %186 = getelementptr inbounds %struct.gx_device_memory_s, ptr %16, i64 0, i32 21, i32 10
  %187 = getelementptr inbounds %struct.gx_device_memory_s, ptr %16, i64 0, i32 21, i32 35
  %188 = add nsw i32 %167, %12
  %189 = getelementptr inbounds %struct.gx_device_memory_s, ptr %16, i64 0, i32 21, i32 12
  %190 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 10
  br label %191

191:                                              ; preds = %184, %226
  %192 = phi i32 [ %166, %184 ], [ %227, %226 ]
  %193 = phi i32 [ undef, %184 ], [ %223, %226 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #7
  br i1 %93, label %203, label %194

194:                                              ; preds = %191
  %195 = load ptr, ptr %185, align 8, !tbaa !44
  %196 = call i32 %195(ptr noundef %0, i32 noundef %192, ptr noundef nonnull %179, ptr noundef nonnull %17) #7
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %222, label %198

198:                                              ; preds = %194
  %199 = load ptr, ptr %186, align 8, !tbaa !45
  %200 = load ptr, ptr %17, align 8, !tbaa !5
  %201 = call i32 %199(ptr noundef nonnull %16, ptr noundef %200, i32 noundef %167, i32 noundef %21, i64 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %165, i32 noundef 1) #7
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %222, label %203

203:                                              ; preds = %198, %191
  %204 = load ptr, ptr %187, align 8, !tbaa !46
  %205 = sub nsw i32 %192, %166
  %206 = mul i32 %205, %3
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i8, ptr %169, i64 %207
  %209 = add nsw i32 %192, %13
  %210 = call i32 %204(ptr noundef nonnull %16, ptr noundef %208, i32 noundef %168, i32 noundef %3, i64 noundef 0, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef %165, i32 noundef 1, i32 noundef %188, i32 noundef %209, i32 noundef %14) #7
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %222, label %212

212:                                              ; preds = %203
  %213 = load ptr, ptr %189, align 8, !tbaa !47
  %214 = call i32 %213(ptr noundef nonnull %16, i32 noundef 0, ptr noundef nonnull %179, ptr noundef nonnull %17) #7
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %222, label %216

216:                                              ; preds = %212
  %217 = load ptr, ptr %190, align 8, !tbaa !48
  %218 = load ptr, ptr %17, align 8, !tbaa !5
  %219 = call i32 %217(ptr noundef %0, ptr noundef %218, i32 noundef 0, i32 noundef %21, i64 noundef 0, i32 noundef %167, i32 noundef %192, i32 noundef %165, i32 noundef 1) #7
  %220 = lshr i32 %219, 30
  %221 = and i32 %220, 2
  br label %222

222:                                              ; preds = %216, %212, %203, %198, %194
  %223 = phi i32 [ %193, %194 ], [ %201, %198 ], [ %193, %203 ], [ %193, %212 ], [ %193, %216 ]
  %224 = phi i32 [ %196, %194 ], [ %201, %198 ], [ %210, %203 ], [ %214, %212 ], [ %219, %216 ]
  %225 = phi i32 [ 2, %194 ], [ 1, %198 ], [ 2, %203 ], [ 2, %212 ], [ %221, %216 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #7
  switch i32 %225, label %237 [
    i32 0, label %226
    i32 2, label %229
  ]

226:                                              ; preds = %222
  %227 = add nsw i32 %192, 1
  %228 = icmp slt i32 %227, %182
  br i1 %228, label %191, label %229, !llvm.loop !49

229:                                              ; preds = %226, %222, %181
  %230 = phi i32 [ %175, %181 ], [ %224, %222 ], [ %224, %226 ]
  %231 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !51
  call void %231(ptr noundef nonnull @gs_memory_default, ptr noundef nonnull %179, ptr noundef nonnull @.str) #7
  br label %232

232:                                              ; preds = %177, %229
  %233 = phi i32 [ %230, %229 ], [ -25, %177 ]
  %234 = getelementptr inbounds %struct.gx_device_memory_s, ptr %16, i64 0, i32 21, i32 4
  %235 = load ptr, ptr %234, align 8, !tbaa !52
  %236 = call i32 %235(ptr noundef nonnull %16) #7
  br label %237

237:                                              ; preds = %222, %232, %163, %141, %107, %85
  %238 = phi i32 [ -15, %85 ], [ 0, %107 ], [ 0, %141 ], [ %175, %163 ], [ %233, %232 ], [ %223, %222 ]
  call void @llvm.lifetime.end.p0(i64 632, ptr nonnull %16) #7
  ret i32 %238
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_forward_strip_copy_rop(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #1 {
  %16 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.gx_device_s, ptr %17, i64 0, i32 21, i32 35
  %21 = load ptr, ptr %20, align 8, !tbaa !20
  br label %22

22:                                               ; preds = %15, %19
  %23 = phi ptr [ %17, %19 ], [ %0, %15 ]
  %24 = phi ptr [ %21, %19 ], [ @gx_default_strip_copy_rop, %15 ]
  %25 = tail call i32 %24(ptr noundef %23, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #7
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mem_mono_strip_copy_rop(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef readonly %5, ptr noundef %6, ptr noundef readonly %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) local_unnamed_addr #1 {
  %16 = alloca %struct.gx_strip_bitmap_s, align 8
  %17 = and i32 %14, 255
  %18 = and i32 %14, 256
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = shl nuw nsw i32 %17, 2
  %22 = xor i32 %21, %14
  %23 = and i32 %22, 204
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  %26 = and i32 %14, 512
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %25
  %29 = shl nuw nsw i32 %17, 4
  %30 = xor i32 %29, %14
  %31 = and i32 %30, 240
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 51, i32 3
  br label %48

34:                                               ; preds = %20, %15
  %35 = and i32 %14, 512
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %34
  %38 = shl nuw nsw i32 %17, 4
  %39 = xor i32 %38, %14
  %40 = and i32 %39, 240
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = shl nuw nsw i32 %17, 2
  %44 = xor i32 %43, %14
  %45 = and i32 %44, 204
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 15, i32 207
  br label %48

48:                                               ; preds = %25, %28, %34, %37, %42
  %49 = phi i32 [ %47, %42 ], [ 255, %37 ], [ 255, %34 ], [ 51, %25 ], [ %33, %28 ]
  %50 = and i32 %49, %14
  %51 = and i32 %49, 168
  %52 = xor i32 %51, 168
  %53 = or i32 %52, %50
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %16) #7
  %54 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %55 = load i32, ptr %54, align 8, !tbaa !53
  %56 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 29
  %57 = load ptr, ptr %56, align 8, !tbaa !54
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !55
  %62 = tail call i64 %61(ptr noundef %0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0) #7
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i32
  tail call void @gdev_mem_mono_set_inverted(ptr noundef %0, i32 noundef %64) #7
  br label %65

65:                                               ; preds = %59, %48
  %66 = load ptr, ptr %56, align 8, !tbaa !54
  %67 = load i8, ptr %66, align 1, !tbaa !56
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = zext nneg i32 %53 to i64
  %71 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !56
  %73 = xor i8 %72, -1
  %74 = zext i8 %73 to i32
  br label %75

75:                                               ; preds = %69, %65
  %76 = phi i32 [ %74, %69 ], [ %53, %65 ]
  %77 = icmp eq ptr %5, null
  br i1 %77, label %101, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds i64, ptr %5, i64 1
  %80 = load i64, ptr %79, align 8, !tbaa !12
  %81 = shl i64 %80, 1
  %82 = load i64, ptr %5, align 8, !tbaa !12
  %83 = add i64 %81, %82
  %84 = trunc i64 %83 to i32
  switch i32 %84, label %101 [
    i32 0, label %85
    i32 1, label %90
    i32 3, label %96
  ]

85:                                               ; preds = %78
  %86 = shl nuw nsw i32 %76, 2
  %87 = and i32 %86, 204
  %88 = and i32 %76, 51
  %89 = or disjoint i32 %87, %88
  br label %101

90:                                               ; preds = %78
  %91 = lshr i32 %76, 2
  %92 = and i32 %91, 51
  %93 = shl nuw nsw i32 %76, 2
  %94 = and i32 %93, 204
  %95 = or disjoint i32 %92, %94
  br label %101

96:                                               ; preds = %78
  %97 = lshr i32 %76, 2
  %98 = and i32 %97, 51
  %99 = and i32 %76, 204
  %100 = or disjoint i32 %98, %99
  br label %101

101:                                              ; preds = %85, %90, %96, %78, %75
  %102 = phi i32 [ %76, %78 ], [ %100, %96 ], [ %95, %90 ], [ %89, %85 ], [ %76, %75 ]
  %103 = icmp eq ptr %7, null
  br i1 %103, label %127, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds i64, ptr %7, i64 1
  %106 = load i64, ptr %105, align 8, !tbaa !12
  %107 = shl i64 %106, 1
  %108 = load i64, ptr %7, align 8, !tbaa !12
  %109 = add i64 %107, %108
  %110 = trunc i64 %109 to i32
  switch i32 %110, label %127 [
    i32 0, label %111
    i32 1, label %116
    i32 3, label %122
  ]

111:                                              ; preds = %104
  %112 = shl nuw nsw i32 %102, 4
  %113 = and i32 %112, 240
  %114 = and i32 %102, -241
  %115 = or disjoint i32 %113, %114
  br label %127

116:                                              ; preds = %104
  %117 = lshr i32 %102, 4
  %118 = and i32 %117, 15
  %119 = shl nuw nsw i32 %102, 4
  %120 = and i32 %119, 240
  %121 = or disjoint i32 %118, %120
  br label %127

122:                                              ; preds = %104
  %123 = lshr i32 %102, 4
  %124 = and i32 %123, 15
  %125 = and i32 %102, -16
  %126 = or disjoint i32 %124, %125
  br label %127

127:                                              ; preds = %111, %116, %122, %104, %101
  %128 = phi i32 [ %102, %104 ], [ %126, %122 ], [ %121, %116 ], [ %115, %111 ], [ %102, %101 ]
  %129 = zext nneg i32 %128 to i64
  %130 = getelementptr inbounds [256 x i8], ptr @rop_usage_table, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !56
  switch i8 %131, label %291 [
    i8 0, label %132
    i8 1, label %138
    i8 2, label %173
    i8 3, label %184
    i8 4, label %243
    i8 5, label %254
  ]

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 7
  %134 = load ptr, ptr %133, align 8, !tbaa !57
  %135 = and i32 %128, 1
  %136 = zext nneg i32 %135 to i64
  %137 = tail call i32 %134(ptr noundef %0, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i64 noundef %136) #7
  br label %329

138:                                              ; preds = %127
  %139 = icmp eq i32 %128, 170
  br i1 %139, label %329, label %140

140:                                              ; preds = %138
  %141 = or i32 %9, %8
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = tail call i32 @llvm.smin.i32(i32 %8, i32 0)
  %145 = add nsw i32 %144, %10
  %146 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %147 = tail call i32 @llvm.smin.i32(i32 %9, i32 0)
  %148 = add nsw i32 %147, %11
  %149 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  br label %150

150:                                              ; preds = %143, %140
  %151 = phi i32 [ %11, %140 ], [ %148, %143 ]
  %152 = phi i32 [ %10, %140 ], [ %145, %143 ]
  %153 = phi i32 [ %9, %140 ], [ %149, %143 ]
  %154 = phi i32 [ %8, %140 ], [ %146, %143 ]
  %155 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %156 = load i32, ptr %155, align 8, !tbaa !29
  %157 = sub nsw i32 %156, %152
  %158 = icmp sgt i32 %154, %157
  %159 = sub nsw i32 %156, %154
  %160 = select i1 %158, i32 %159, i32 %152
  %161 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %162 = load i32, ptr %161, align 4, !tbaa !30
  %163 = sub nsw i32 %162, %151
  %164 = icmp sgt i32 %153, %163
  %165 = sub nsw i32 %162, %153
  %166 = select i1 %164, i32 %165, i32 %151
  %167 = icmp slt i32 %160, 1
  %168 = icmp slt i32 %166, 1
  %169 = select i1 %167, i1 true, i1 %168
  br i1 %169, label %329, label %170

170:                                              ; preds = %150
  %171 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 26
  %172 = load ptr, ptr %171, align 8, !tbaa !58
  br label %226

173:                                              ; preds = %127
  %174 = icmp ne i32 %128, 204
  %175 = zext i1 %174 to i64
  %176 = xor i1 %174, true
  %177 = zext i1 %176 to i64
  br label %178

178:                                              ; preds = %184, %173, %187, %186, %185
  %179 = phi i64 [ 1, %187 ], [ 0, %186 ], [ -1, %185 ], [ %175, %173 ], [ -1, %184 ]
  %180 = phi i64 [ -1, %187 ], [ -1, %186 ], [ 1, %185 ], [ %177, %173 ], [ 0, %184 ]
  %181 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 9
  %182 = load ptr, ptr %181, align 8, !tbaa !59
  %183 = tail call i32 %182(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i64 noundef %179, i64 noundef %180) #7
  br label %329

184:                                              ; preds = %127
  switch i32 %128, label %188 [
    i32 34, label %178
    i32 238, label %185
    i32 136, label %186
    i32 187, label %187
  ]

185:                                              ; preds = %184
  br label %178

186:                                              ; preds = %184
  br label %178

187:                                              ; preds = %184
  br label %178

188:                                              ; preds = %184
  %189 = or i32 %9, %8
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %188
  %192 = tail call i32 @llvm.smin.i32(i32 %8, i32 0)
  %193 = add nsw i32 %192, %10
  %194 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %195 = tail call i32 @llvm.smin.i32(i32 %8, i32 0)
  %196 = sub nsw i32 %2, %195
  %197 = icmp slt i32 %9, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %191
  %199 = add nsw i32 %11, %9
  %200 = mul i32 %9, %3
  %201 = zext i32 %200 to i64
  %202 = sub nsw i64 0, %201
  %203 = getelementptr inbounds i8, ptr %1, i64 %202
  br label %204

204:                                              ; preds = %191, %198, %188
  %205 = phi i32 [ %199, %198 ], [ %11, %191 ], [ %11, %188 ]
  %206 = phi i32 [ %193, %198 ], [ %193, %191 ], [ %10, %188 ]
  %207 = phi i32 [ 0, %198 ], [ %9, %191 ], [ %9, %188 ]
  %208 = phi i32 [ %194, %198 ], [ %194, %191 ], [ %8, %188 ]
  %209 = phi i32 [ %196, %198 ], [ %196, %191 ], [ %2, %188 ]
  %210 = phi ptr [ %203, %198 ], [ %1, %191 ], [ %1, %188 ]
  %211 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %212 = load i32, ptr %211, align 8, !tbaa !29
  %213 = sub nsw i32 %212, %206
  %214 = icmp sgt i32 %208, %213
  %215 = sub nsw i32 %212, %208
  %216 = select i1 %214, i32 %215, i32 %206
  %217 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %218 = load i32, ptr %217, align 4, !tbaa !30
  %219 = sub nsw i32 %218, %205
  %220 = icmp sgt i32 %207, %219
  %221 = sub nsw i32 %218, %207
  %222 = select i1 %220, i32 %221, i32 %205
  %223 = icmp slt i32 %216, 1
  %224 = icmp slt i32 %222, 1
  %225 = select i1 %223, i1 true, i1 %224
  br i1 %225, label %329, label %226

226:                                              ; preds = %204, %170
  %227 = phi i32 [ %222, %204 ], [ %166, %170 ]
  %228 = phi i32 [ %216, %204 ], [ %160, %170 ]
  %229 = phi i32 [ %207, %204 ], [ %153, %170 ]
  %230 = phi i32 [ %208, %204 ], [ %154, %170 ]
  %231 = phi i32 [ %3, %204 ], [ 0, %170 ]
  %232 = phi i32 [ %209, %204 ], [ %154, %170 ]
  %233 = phi ptr [ %210, %204 ], [ %172, %170 ]
  %234 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 26
  %235 = load ptr, ptr %234, align 8, !tbaa !58
  store ptr %235, ptr %16, align 8, !tbaa !60
  %236 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %16, i64 0, i32 1
  store i32 0, ptr %236, align 8, !tbaa !61
  %237 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %16, i64 0, i32 2
  store i32 %228, ptr %237, align 4, !tbaa !62
  %238 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %16, i64 0, i32 2, i32 1
  store i32 %227, ptr %238, align 8, !tbaa !63
  %239 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %16, i64 0, i32 5
  store i16 1, ptr %239, align 2, !tbaa !64
  %240 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %16, i64 0, i32 4
  store i16 1, ptr %240, align 8, !tbaa !65
  %241 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %16, i64 0, i32 7
  store i16 0, ptr %241, align 2, !tbaa !16
  %242 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %16, i64 0, i32 6
  store i16 0, ptr %242, align 4, !tbaa !19
  br label %329

243:                                              ; preds = %127
  %244 = icmp ne i32 %128, 240
  %245 = zext i1 %244 to i64
  %246 = xor i1 %244, true
  %247 = zext i1 %246 to i64
  br label %248

248:                                              ; preds = %254, %243, %257, %256, %255
  %249 = phi i64 [ 1, %257 ], [ 0, %256 ], [ -1, %255 ], [ %245, %243 ], [ -1, %254 ]
  %250 = phi i64 [ -1, %257 ], [ -1, %256 ], [ 1, %255 ], [ %247, %243 ], [ 0, %254 ]
  %251 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 34
  %252 = load ptr, ptr %251, align 8, !tbaa !66
  %253 = tail call i32 %252(ptr noundef %0, ptr noundef %6, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i64 noundef %249, i64 noundef %250, i32 noundef %12, i32 noundef %13) #7
  br label %329

254:                                              ; preds = %127
  switch i32 %128, label %258 [
    i32 10, label %248
    i32 250, label %255
    i32 160, label %256
    i32 175, label %257
  ]

255:                                              ; preds = %254
  br label %248

256:                                              ; preds = %254
  br label %248

257:                                              ; preds = %254
  br label %248

258:                                              ; preds = %254
  %259 = or i32 %9, %8
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %258
  %262 = tail call i32 @llvm.smin.i32(i32 %8, i32 0)
  %263 = add nsw i32 %262, %10
  %264 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %265 = tail call i32 @llvm.smin.i32(i32 %9, i32 0)
  %266 = add nsw i32 %265, %11
  %267 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  br label %268

268:                                              ; preds = %261, %258
  %269 = phi i32 [ %11, %258 ], [ %266, %261 ]
  %270 = phi i32 [ %10, %258 ], [ %263, %261 ]
  %271 = phi i32 [ %9, %258 ], [ %267, %261 ]
  %272 = phi i32 [ %8, %258 ], [ %264, %261 ]
  %273 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %274 = load i32, ptr %273, align 8, !tbaa !29
  %275 = sub nsw i32 %274, %270
  %276 = icmp sgt i32 %272, %275
  %277 = sub nsw i32 %274, %272
  %278 = select i1 %276, i32 %277, i32 %270
  %279 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %280 = load i32, ptr %279, align 4, !tbaa !30
  %281 = sub nsw i32 %280, %269
  %282 = icmp sgt i32 %271, %281
  %283 = sub nsw i32 %280, %271
  %284 = select i1 %282, i32 %283, i32 %269
  %285 = icmp slt i32 %278, 1
  %286 = icmp slt i32 %284, 1
  %287 = select i1 %285, i1 true, i1 %286
  br i1 %287, label %329, label %288

288:                                              ; preds = %268
  %289 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 26
  %290 = load ptr, ptr %289, align 8, !tbaa !58
  br label %329

291:                                              ; preds = %127
  %292 = or i32 %9, %8
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %307

294:                                              ; preds = %291
  %295 = tail call i32 @llvm.smin.i32(i32 %8, i32 0)
  %296 = add nsw i32 %295, %10
  %297 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %298 = tail call i32 @llvm.smin.i32(i32 %8, i32 0)
  %299 = sub nsw i32 %2, %298
  %300 = icmp slt i32 %9, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %294
  %302 = add nsw i32 %11, %9
  %303 = mul i32 %9, %3
  %304 = zext i32 %303 to i64
  %305 = sub nsw i64 0, %304
  %306 = getelementptr inbounds i8, ptr %1, i64 %305
  br label %307

307:                                              ; preds = %294, %301, %291
  %308 = phi i32 [ %302, %301 ], [ %11, %294 ], [ %11, %291 ]
  %309 = phi i32 [ %296, %301 ], [ %296, %294 ], [ %10, %291 ]
  %310 = phi i32 [ 0, %301 ], [ %9, %294 ], [ %9, %291 ]
  %311 = phi i32 [ %297, %301 ], [ %297, %294 ], [ %8, %291 ]
  %312 = phi i32 [ %299, %301 ], [ %299, %294 ], [ %2, %291 ]
  %313 = phi ptr [ %306, %301 ], [ %1, %294 ], [ %1, %291 ]
  %314 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %315 = load i32, ptr %314, align 8, !tbaa !29
  %316 = sub nsw i32 %315, %309
  %317 = icmp sgt i32 %311, %316
  %318 = sub nsw i32 %315, %311
  %319 = select i1 %317, i32 %318, i32 %309
  %320 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %321 = load i32, ptr %320, align 4, !tbaa !30
  %322 = sub nsw i32 %321, %308
  %323 = icmp sgt i32 %310, %322
  %324 = sub nsw i32 %321, %310
  %325 = select i1 %323, i32 %324, i32 %308
  %326 = icmp sgt i32 %319, 0
  %327 = icmp sgt i32 %325, 0
  %328 = select i1 %326, i1 %327, i1 false
  br label %329

329:                                              ; preds = %307, %226, %288, %268, %204, %150, %138, %248, %178, %132
  %330 = phi i1 [ false, %248 ], [ false, %178 ], [ false, %132 ], [ false, %138 ], [ false, %150 ], [ false, %204 ], [ false, %268 ], [ true, %288 ], [ true, %226 ], [ %328, %307 ]
  %331 = phi i32 [ %11, %248 ], [ %11, %178 ], [ %11, %132 ], [ %11, %138 ], [ %166, %150 ], [ %222, %204 ], [ %284, %268 ], [ %284, %288 ], [ %227, %226 ], [ %325, %307 ]
  %332 = phi i32 [ %10, %248 ], [ %10, %178 ], [ %10, %132 ], [ %10, %138 ], [ %160, %150 ], [ %216, %204 ], [ %278, %268 ], [ %278, %288 ], [ %228, %226 ], [ %319, %307 ]
  %333 = phi i32 [ %9, %248 ], [ %9, %178 ], [ %9, %132 ], [ %9, %138 ], [ %153, %150 ], [ %207, %204 ], [ %271, %268 ], [ %271, %288 ], [ %229, %226 ], [ %310, %307 ]
  %334 = phi i32 [ %8, %248 ], [ %8, %178 ], [ %8, %132 ], [ %8, %138 ], [ %154, %150 ], [ %208, %204 ], [ %272, %268 ], [ %272, %288 ], [ %230, %226 ], [ %311, %307 ]
  %335 = phi ptr [ %6, %248 ], [ %6, %178 ], [ %6, %132 ], [ %6, %138 ], [ %6, %150 ], [ %6, %204 ], [ %6, %268 ], [ %6, %288 ], [ %16, %226 ], [ %6, %307 ]
  %336 = phi i32 [ %3, %248 ], [ %3, %178 ], [ %3, %132 ], [ %3, %138 ], [ %3, %150 ], [ %3, %204 ], [ %3, %268 ], [ 0, %288 ], [ %231, %226 ], [ %3, %307 ]
  %337 = phi i32 [ %2, %248 ], [ %2, %178 ], [ %2, %132 ], [ %2, %138 ], [ %2, %150 ], [ %209, %204 ], [ %2, %268 ], [ %272, %288 ], [ %232, %226 ], [ %312, %307 ]
  %338 = phi ptr [ %1, %248 ], [ %1, %178 ], [ %1, %132 ], [ %1, %138 ], [ %1, %150 ], [ %210, %204 ], [ %1, %268 ], [ %290, %288 ], [ %233, %226 ], [ %313, %307 ]
  %339 = phi i32 [ %253, %248 ], [ %183, %178 ], [ %137, %132 ], [ 0, %138 ], [ 0, %150 ], [ 0, %204 ], [ 0, %268 ], [ undef, %288 ], [ undef, %226 ], [ 0, %307 ]
  br i1 %330, label %340, label %498

340:                                              ; preds = %329
  %341 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %335, i64 0, i32 1
  %342 = load i32, ptr %341, align 8, !tbaa !61
  %343 = icmp sgt i32 %331, 0
  br i1 %343, label %344, label %498

344:                                              ; preds = %340
  %345 = add nsw i32 %333, %13
  %346 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %347 = load ptr, ptr %346, align 8, !tbaa !67
  %348 = sext i32 %333 to i64
  %349 = getelementptr inbounds ptr, ptr %347, i64 %348
  %350 = load ptr, ptr %349, align 8, !tbaa !5
  %351 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %335, i64 0, i32 5
  %352 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %335, i64 0, i32 7
  %353 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %335, i64 0, i32 6
  %354 = icmp sgt i32 %332, 0
  %355 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %335, i64 0, i32 4
  %356 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %335, i64 0, i32 2
  %357 = getelementptr inbounds [256 x ptr], ptr @rop_proc_table, i64 0, i64 %129
  %358 = zext i32 %55 to i64
  %359 = zext i32 %336 to i64
  br label %360

360:                                              ; preds = %344, %493
  %361 = phi i32 [ %331, %344 ], [ %365, %493 ]
  %362 = phi ptr [ %350, %344 ], [ %494, %493 ]
  %363 = phi i32 [ %345, %344 ], [ %496, %493 ]
  %364 = phi ptr [ %338, %344 ], [ %495, %493 ]
  %365 = add nsw i32 %361, -1
  %366 = load ptr, ptr %335, align 8, !tbaa !60
  %367 = load i16, ptr %351, align 2, !tbaa !64
  %368 = zext i16 %367 to i32
  %369 = srem i32 %363, %368
  %370 = sdiv i32 %363, %368
  %371 = mul i32 %369, %342
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds i8, ptr %366, i64 %372
  %374 = load i16, ptr %352, align 2, !tbaa !16
  %375 = icmp eq i16 %374, 0
  br i1 %375, label %381, label %376

376:                                              ; preds = %360
  %377 = load i16, ptr %353, align 4, !tbaa !19
  %378 = zext i16 %377 to i32
  %379 = mul nsw i32 %370, %378
  %380 = add nsw i32 %379, %12
  br label %381

381:                                              ; preds = %360, %376
  %382 = phi i32 [ %380, %376 ], [ %12, %360 ]
  br i1 %354, label %383, label %493

383:                                              ; preds = %381, %489
  %384 = phi i32 [ %491, %489 ], [ %332, %381 ]
  %385 = phi i32 [ %399, %489 ], [ %334, %381 ]
  %386 = phi i32 [ %490, %489 ], [ %337, %381 ]
  %387 = and i32 %385, 7
  %388 = and i32 %386, 7
  %389 = sub nsw i32 %388, %387
  %390 = add nsw i32 %385, %382
  %391 = load i16, ptr %355, align 8, !tbaa !65
  %392 = zext i16 %391 to i32
  %393 = srem i32 %390, %392
  %394 = and i32 %393, 7
  %395 = sub nsw i32 %394, %387
  %396 = load i32, ptr %356, align 4, !tbaa !62
  %397 = sub nsw i32 %396, %393
  %398 = tail call i32 @llvm.smin.i32(i32 %384, i32 %397)
  %399 = add i32 %398, %385
  %400 = lshr i32 %389, 28
  %401 = and i32 %400, 8
  %402 = add nsw i32 %401, %389
  %403 = lshr i32 %395, 28
  %404 = and i32 %403, 8
  %405 = add nsw i32 %404, %395
  %406 = icmp sgt i32 %398, 0
  br i1 %406, label %407, label %489

407:                                              ; preds = %383
  %408 = ashr i32 %393, 3
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8, ptr %373, i64 %409
  %411 = ashr i32 %395, 31
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8, ptr %410, i64 %412
  %414 = ashr i32 %386, 3
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i8, ptr %364, i64 %415
  %417 = ashr i32 %389, 31
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i8, ptr %416, i64 %418
  %420 = ashr i32 %385, 3
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i8, ptr %362, i64 %421
  %423 = sub nuw nsw i32 8, %387
  %424 = sub i32 0, %399
  %425 = and i32 %424, 7
  %426 = shl nuw nsw i32 255, %425
  %427 = lshr i32 255, %387
  %428 = trunc i32 %427 to i8
  %429 = icmp eq i32 %402, 0
  %430 = sub nuw nsw i32 8, %402
  %431 = icmp eq i32 %405, 0
  %432 = sub nuw nsw i32 8, %405
  %433 = load ptr, ptr %357, align 8, !tbaa !5
  %434 = trunc i32 %426 to i8
  br label %435

435:                                              ; preds = %407, %481
  %436 = phi ptr [ %413, %407 ], [ %487, %481 ]
  %437 = phi ptr [ %419, %407 ], [ %486, %481 ]
  %438 = phi ptr [ %422, %407 ], [ %485, %481 ]
  %439 = phi i32 [ %423, %407 ], [ 8, %481 ]
  %440 = phi i8 [ %428, %407 ], [ -1, %481 ]
  %441 = phi i32 [ %398, %407 ], [ %484, %481 ]
  %442 = load i8, ptr %438, align 1, !tbaa !56
  %443 = load i8, ptr %437, align 1, !tbaa !56
  %444 = zext i8 %443 to i32
  br i1 %429, label %452, label %445

445:                                              ; preds = %435
  %446 = shl nuw nsw i32 %444, %402
  %447 = getelementptr inbounds i8, ptr %437, i64 1
  %448 = load i8, ptr %447, align 1, !tbaa !56
  %449 = zext i8 %448 to i32
  %450 = lshr i32 %449, %430
  %451 = add nuw nsw i32 %450, %446
  br label %452

452:                                              ; preds = %435, %445
  %453 = phi i32 [ %451, %445 ], [ %444, %435 ]
  %454 = load i8, ptr %436, align 1, !tbaa !56
  %455 = zext i8 %454 to i32
  br i1 %431, label %463, label %456

456:                                              ; preds = %452
  %457 = shl nuw nsw i32 %455, %405
  %458 = getelementptr inbounds i8, ptr %436, i64 1
  %459 = load i8, ptr %458, align 1, !tbaa !56
  %460 = zext i8 %459 to i32
  %461 = lshr i32 %460, %432
  %462 = add nuw nsw i32 %461, %457
  br label %463

463:                                              ; preds = %452, %456
  %464 = phi i32 [ %462, %456 ], [ %455, %452 ]
  %465 = zext i8 %442 to i32
  %466 = and i32 %453, 255
  %467 = and i32 %464, 255
  %468 = tail call i32 %433(i32 noundef %465, i32 noundef %466, i32 noundef %467) #7
  %469 = icmp sgt i32 %441, %439
  %470 = select i1 %469, i8 -1, i8 %434
  %471 = and i8 %470, %440
  %472 = icmp eq i8 %471, -1
  br i1 %472, label %473, label %475

473:                                              ; preds = %463
  %474 = and i32 %468, 255
  br label %481

475:                                              ; preds = %463
  %476 = zext i8 %471 to i32
  %477 = and i32 %468, %476
  %478 = xor i32 %476, -1
  %479 = and i32 %465, %478
  %480 = or i32 %477, %479
  br label %481

481:                                              ; preds = %475, %473
  %482 = phi i32 [ %474, %473 ], [ %480, %475 ]
  %483 = trunc i32 %482 to i8
  store i8 %483, ptr %438, align 1, !tbaa !56
  %484 = sub nsw i32 %441, %439
  %485 = getelementptr inbounds i8, ptr %438, i64 1
  %486 = getelementptr inbounds i8, ptr %437, i64 1
  %487 = getelementptr inbounds i8, ptr %436, i64 1
  %488 = icmp sgt i32 %484, 0
  br i1 %488, label %435, label %489, !llvm.loop !68

489:                                              ; preds = %481, %383
  %490 = add nsw i32 %398, %386
  %491 = sub nsw i32 %384, %398
  %492 = icmp sgt i32 %491, 0
  br i1 %492, label %383, label %493, !llvm.loop !69

493:                                              ; preds = %489, %381
  %494 = getelementptr inbounds i8, ptr %362, i64 %358
  %495 = getelementptr inbounds i8, ptr %364, i64 %359
  %496 = add nsw i32 %363, 1
  %497 = icmp sgt i32 %361, 1
  br i1 %497, label %360, label %498, !llvm.loop !70

498:                                              ; preds = %493, %340, %329
  %499 = phi i32 [ %339, %329 ], [ 0, %340 ], [ 0, %493 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %16) #7
  ret i32 %499
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @gdev_mem_mono_set_inverted(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @mem_gray_strip_copy_rop(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef readonly %5, ptr noundef readonly %6, ptr noundef readonly %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) local_unnamed_addr #1 {
  %16 = alloca [2 x i64], align 16
  %17 = alloca [2 x i64], align 16
  %18 = alloca %struct.gx_strip_bitmap_s, align 8
  %19 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %18) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #7
  %20 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !28
  %22 = ashr i32 %21, 1
  %23 = shl nsw i32 -1, %21
  %24 = xor i32 %23, -1
  %25 = zext nneg i32 %24 to i64
  %26 = icmp eq ptr %5, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %15
  %28 = load i64, ptr %5, align 8, !tbaa !12
  %29 = getelementptr inbounds i64, ptr %5, i64 1
  %30 = load i64, ptr %29, align 8, !tbaa !12
  %31 = or i64 %30, %28
  %32 = xor i64 %25, -1
  %33 = and i64 %31, %32
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %106

35:                                               ; preds = %27
  %36 = and i64 %28, 1
  store i64 %36, ptr %16, align 16, !tbaa !12
  %37 = and i64 %30, 1
  %38 = getelementptr inbounds [2 x i64], ptr %16, i64 0, i64 1
  store i64 %37, ptr %38, align 8, !tbaa !12
  br label %39

39:                                               ; preds = %35, %15
  %40 = phi ptr [ %16, %35 ], [ null, %15 ]
  %41 = icmp eq ptr %6, null
  br i1 %41, label %61, label %42

42:                                               ; preds = %39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !71
  %43 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %18, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !62
  %45 = shl i32 %44, %22
  store i32 %45, ptr %43, align 4, !tbaa !62
  %46 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %18, i64 0, i32 4
  %47 = load i16, ptr %46, align 8, !tbaa !65
  %48 = zext i16 %47 to i32
  %49 = shl i32 %48, %22
  %50 = trunc i32 %49 to i16
  store i16 %50, ptr %46, align 8, !tbaa !65
  %51 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %18, i64 0, i32 7
  %52 = load i16, ptr %51, align 2, !tbaa !16
  %53 = zext i16 %52 to i32
  %54 = shl i32 %53, %22
  %55 = trunc i32 %54 to i16
  store i16 %55, ptr %51, align 2, !tbaa !16
  %56 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %18, i64 0, i32 6
  %57 = load i16, ptr %56, align 4, !tbaa !19
  %58 = zext i16 %57 to i32
  %59 = shl i32 %58, %22
  %60 = trunc i32 %59 to i16
  store i16 %60, ptr %56, align 4, !tbaa !19
  br label %61

61:                                               ; preds = %42, %39
  %62 = phi ptr [ %18, %42 ], [ null, %39 ]
  %63 = icmp eq ptr %7, null
  br i1 %63, label %91, label %64

64:                                               ; preds = %61
  %65 = load i64, ptr %7, align 8, !tbaa !12
  %66 = getelementptr inbounds i64, ptr %7, i64 1
  %67 = load i64, ptr %66, align 8, !tbaa !12
  %68 = icmp eq i64 %65, %67
  br i1 %68, label %69, label %106

69:                                               ; preds = %64
  %70 = icmp eq i64 %65, 0
  %71 = icmp eq i64 %65, %25
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %88, label %73

73:                                               ; preds = %69
  %74 = trunc i64 %65 to i32
  %75 = sub nsw i32 8, %21
  %76 = shl i32 %74, %75
  %77 = trunc i32 %76 to i8
  store i8 %77, ptr %19, align 8, !tbaa !56
  store ptr %19, ptr %18, align 8, !tbaa !60
  %78 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %18, i64 0, i32 1
  store i32 8, ptr %78, align 8, !tbaa !61
  %79 = trunc i32 %21 to i16
  %80 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %18, i64 0, i32 4
  store i16 %79, ptr %80, align 8, !tbaa !65
  %81 = and i32 %21, 65535
  %82 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %18, i64 0, i32 2
  store i32 %81, ptr %82, align 4, !tbaa !62
  %83 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %18, i64 0, i32 5
  store i16 1, ptr %83, align 2, !tbaa !64
  %84 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %18, i64 0, i32 2, i32 1
  store i32 1, ptr %84, align 8, !tbaa !63
  %85 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %18, i64 0, i32 3
  store i64 0, ptr %85, align 8, !tbaa !72
  %86 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %18, i64 0, i32 6
  store i16 0, ptr %86, align 4, !tbaa !19
  %87 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %18, i64 0, i32 7
  store i16 0, ptr %87, align 2, !tbaa !16
  br label %91

88:                                               ; preds = %69
  %89 = and i64 %65, 1
  %90 = getelementptr inbounds [2 x i64], ptr %17, i64 0, i64 1
  store i64 %89, ptr %90, align 8, !tbaa !12
  store i64 %89, ptr %17, align 16, !tbaa !12
  br label %91

91:                                               ; preds = %73, %88, %61
  %92 = phi ptr [ %18, %73 ], [ %62, %88 ], [ %62, %61 ]
  %93 = phi ptr [ null, %73 ], [ %17, %88 ], [ null, %61 ]
  %94 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %95 = load i32, ptr %94, align 8, !tbaa !29
  %96 = shl i32 %95, %22
  store i32 %96, ptr %94, align 8, !tbaa !29
  %97 = icmp eq ptr %40, null
  %98 = select i1 %97, i32 %22, i32 0
  %99 = shl i32 %2, %98
  %100 = shl i32 %8, %22
  %101 = shl i32 %10, %22
  %102 = shl i32 %12, %22
  %103 = call i32 @mem_mono_strip_copy_rop(ptr noundef %0, ptr noundef %1, i32 noundef %99, i32 noundef %3, i64 noundef %4, ptr noundef %40, ptr noundef %92, ptr noundef %93, i32 noundef %100, i32 noundef %9, i32 noundef %101, i32 noundef %11, i32 noundef %102, i32 noundef %13, i32 noundef %14)
  %104 = load i32, ptr %94, align 8, !tbaa !29
  %105 = ashr i32 %104, %22
  store i32 %105, ptr %94, align 8, !tbaa !29
  br label %106

106:                                              ; preds = %64, %27, %91
  %107 = phi i32 [ %103, %91 ], [ -15, %27 ], [ -15, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %18) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #7
  ret i32 %107
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mem_gray8_rgb24_strip_copy_rop(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef readonly %5, ptr nocapture noundef readonly %6, ptr noundef readonly %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) local_unnamed_addr #1 {
  %16 = and i32 %14, 255
  %17 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %18 = load i32, ptr %17, align 8, !tbaa !53
  %19 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !28
  %21 = ashr i32 %20, 3
  %22 = zext nneg i32 %20 to i64
  %23 = shl nsw i64 -1, %22
  %24 = xor i64 %23, -1
  %25 = and i32 %14, 256
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i64 -1, i64 %24
  %28 = and i32 %14, 512
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i64 -1, i64 %24
  %31 = icmp eq ptr %5, null
  br i1 %31, label %51, label %32

32:                                               ; preds = %15
  %33 = load i64, ptr %5, align 8, !tbaa !12
  %34 = getelementptr inbounds i64, ptr %5, i64 1
  %35 = load i64, ptr %34, align 8, !tbaa !12
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = icmp eq i64 %33, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %37
  %40 = shl i32 %14, 2
  %41 = and i32 %40, 204
  %42 = and i32 %14, 51
  %43 = or disjoint i32 %41, %42
  br label %57

44:                                               ; preds = %37
  %45 = icmp eq i64 %33, %24
  br i1 %45, label %46, label %57

46:                                               ; preds = %44
  %47 = lshr i32 %14, 2
  %48 = and i32 %47, 51
  %49 = and i32 %14, 204
  %50 = or disjoint i32 %48, %49
  br label %57

51:                                               ; preds = %32, %15
  %52 = shl nuw nsw i32 %16, 2
  %53 = xor i32 %52, %14
  %54 = and i32 %53, 204
  %55 = icmp ne i32 %54, 0
  %56 = sext i1 %55 to i64
  br label %57

57:                                               ; preds = %51, %39, %46, %44
  %58 = phi i64 [ 0, %39 ], [ %33, %46 ], [ %33, %44 ], [ %56, %51 ]
  %59 = phi i32 [ %43, %39 ], [ %50, %46 ], [ %16, %44 ], [ %16, %51 ]
  %60 = icmp eq ptr %7, null
  br i1 %60, label %80, label %61

61:                                               ; preds = %57
  %62 = load i64, ptr %7, align 8, !tbaa !12
  %63 = getelementptr inbounds i64, ptr %7, i64 1
  %64 = load i64, ptr %63, align 8, !tbaa !12
  %65 = icmp eq i64 %62, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = icmp eq i64 %62, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %66
  %69 = shl nuw nsw i32 %59, 4
  %70 = and i32 %69, 240
  %71 = and i32 %59, -241
  %72 = or disjoint i32 %70, %71
  br label %86

73:                                               ; preds = %66
  %74 = icmp eq i64 %62, %24
  br i1 %74, label %75, label %86

75:                                               ; preds = %73
  %76 = lshr i32 %59, 4
  %77 = and i32 %76, 15
  %78 = and i32 %59, -16
  %79 = or disjoint i32 %77, %78
  br label %86

80:                                               ; preds = %61, %57
  %81 = shl nuw nsw i32 %59, 4
  %82 = xor i32 %81, %59
  %83 = and i32 %82, 240
  %84 = icmp ne i32 %83, 0
  %85 = sext i1 %84 to i64
  br label %86

86:                                               ; preds = %80, %68, %75, %73
  %87 = phi i64 [ 0, %68 ], [ %62, %75 ], [ %62, %73 ], [ %85, %80 ]
  %88 = phi i32 [ %72, %68 ], [ %79, %75 ], [ %59, %73 ], [ %59, %80 ]
  %89 = icmp eq i64 %58, -1
  %90 = or i32 %9, %8
  %91 = icmp slt i32 %90, 0
  br i1 %89, label %92, label %128

92:                                               ; preds = %86
  br i1 %91, label %93, label %106

93:                                               ; preds = %92
  %94 = tail call i32 @llvm.smin.i32(i32 %8, i32 0)
  %95 = add nsw i32 %94, %10
  %96 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %97 = tail call i32 @llvm.smin.i32(i32 %8, i32 0)
  %98 = sub nsw i32 %2, %97
  %99 = icmp slt i32 %9, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = add nsw i32 %11, %9
  %102 = mul i32 %9, %3
  %103 = zext i32 %102 to i64
  %104 = sub nsw i64 0, %103
  %105 = getelementptr inbounds i8, ptr %1, i64 %104
  br label %106

106:                                              ; preds = %93, %100, %92
  %107 = phi i32 [ %101, %100 ], [ %11, %93 ], [ %11, %92 ]
  %108 = phi i32 [ %95, %100 ], [ %95, %93 ], [ %10, %92 ]
  %109 = phi i32 [ 0, %100 ], [ %9, %93 ], [ %9, %92 ]
  %110 = phi i32 [ %96, %100 ], [ %96, %93 ], [ %8, %92 ]
  %111 = phi i32 [ %98, %100 ], [ %98, %93 ], [ %2, %92 ]
  %112 = phi ptr [ %105, %100 ], [ %1, %93 ], [ %1, %92 ]
  %113 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %114 = load i32, ptr %113, align 8, !tbaa !29
  %115 = sub nsw i32 %114, %108
  %116 = icmp sgt i32 %110, %115
  %117 = sub nsw i32 %114, %110
  %118 = select i1 %116, i32 %117, i32 %108
  %119 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %120 = load i32, ptr %119, align 4, !tbaa !30
  %121 = sub nsw i32 %120, %107
  %122 = icmp sgt i32 %109, %121
  %123 = sub nsw i32 %120, %109
  %124 = select i1 %122, i32 %123, i32 %107
  %125 = icmp slt i32 %118, 1
  %126 = icmp slt i32 %124, 1
  %127 = select i1 %125, i1 true, i1 %126
  br i1 %127, label %930, label %156

128:                                              ; preds = %86
  br i1 %91, label %129, label %136

129:                                              ; preds = %128
  %130 = tail call i32 @llvm.smin.i32(i32 %8, i32 0)
  %131 = add nsw i32 %130, %10
  %132 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %133 = tail call i32 @llvm.smin.i32(i32 %9, i32 0)
  %134 = add nsw i32 %133, %11
  %135 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  br label %136

136:                                              ; preds = %129, %128
  %137 = phi i32 [ %11, %128 ], [ %134, %129 ]
  %138 = phi i32 [ %10, %128 ], [ %131, %129 ]
  %139 = phi i32 [ %9, %128 ], [ %135, %129 ]
  %140 = phi i32 [ %8, %128 ], [ %132, %129 ]
  %141 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %142 = load i32, ptr %141, align 8, !tbaa !29
  %143 = sub nsw i32 %142, %138
  %144 = icmp sgt i32 %140, %143
  %145 = sub nsw i32 %142, %140
  %146 = select i1 %144, i32 %145, i32 %138
  %147 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %148 = load i32, ptr %147, align 4, !tbaa !30
  %149 = sub nsw i32 %148, %137
  %150 = icmp sgt i32 %139, %149
  %151 = sub nsw i32 %148, %139
  %152 = select i1 %150, i32 %151, i32 %137
  %153 = icmp slt i32 %146, 1
  %154 = icmp slt i32 %152, 1
  %155 = select i1 %153, i1 true, i1 %154
  br i1 %155, label %930, label %156

156:                                              ; preds = %136, %106
  %157 = phi i32 [ %124, %106 ], [ %152, %136 ]
  %158 = phi i32 [ %118, %106 ], [ %146, %136 ]
  %159 = phi i32 [ %109, %106 ], [ %139, %136 ]
  %160 = phi i32 [ %110, %106 ], [ %140, %136 ]
  %161 = phi i32 [ %111, %106 ], [ %2, %136 ]
  %162 = phi ptr [ %112, %106 ], [ %1, %136 ]
  %163 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %164 = load ptr, ptr %163, align 8, !tbaa !67
  %165 = sext i32 %159 to i64
  %166 = getelementptr inbounds ptr, ptr %164, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !5
  %168 = mul nsw i32 %160, %21
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, ptr %167, i64 %169
  %171 = icmp eq i64 %87, -1
  br i1 %171, label %440, label %172

172:                                              ; preds = %156
  %173 = icmp sgt i32 %157, 0
  br i1 %89, label %198, label %174

174:                                              ; preds = %172
  br i1 %173, label %175, label %930

175:                                              ; preds = %174
  %176 = icmp eq i32 %21, 1
  %177 = icmp sgt i32 %158, 0
  %178 = icmp eq i64 %58, %27
  %179 = icmp eq i64 %87, %30
  %180 = select i1 %178, i1 true, i1 %179
  %181 = zext nneg i32 %88 to i64
  %182 = getelementptr inbounds [256 x ptr], ptr @rop_proc_table, i64 0, i64 %181
  %183 = trunc i64 %58 to i32
  %184 = trunc i64 %87 to i32
  %185 = icmp sgt i32 %158, 0
  %186 = and i64 %58, 255
  %187 = icmp eq i64 %186, %27
  %188 = and i64 %87, 255
  %189 = icmp eq i64 %188, %30
  %190 = select i1 %187, i1 true, i1 %189
  %191 = trunc i64 %58 to i32
  %192 = trunc i64 %87 to i32
  %193 = zext nneg i32 %88 to i64
  %194 = getelementptr inbounds [256 x ptr], ptr @rop_proc_table, i64 0, i64 %193
  %195 = and i32 %191, 255
  %196 = and i32 %192, 255
  %197 = zext i32 %18 to i64
  br label %231

198:                                              ; preds = %172
  br i1 %173, label %199, label %930

199:                                              ; preds = %198
  %200 = icmp eq i32 %21, 1
  %201 = icmp sgt i32 %158, 0
  %202 = icmp eq i64 %87, %30
  %203 = zext nneg i32 %88 to i64
  %204 = getelementptr inbounds [256 x ptr], ptr @rop_proc_table, i64 0, i64 %203
  %205 = trunc i64 %87 to i32
  %206 = icmp sgt i32 %158, 0
  %207 = and i64 %87, 255
  %208 = icmp eq i64 %207, %30
  %209 = trunc i64 %87 to i32
  %210 = zext nneg i32 %88 to i64
  %211 = getelementptr inbounds [256 x ptr], ptr @rop_proc_table, i64 0, i64 %210
  %212 = and i32 %209, 255
  %213 = icmp eq i32 %21, 1
  %214 = mul nsw i32 %161, 3
  %215 = sext i32 %214 to i64
  %216 = icmp sgt i32 %158, 0
  %217 = icmp eq i64 %87, %30
  %218 = zext nneg i32 %88 to i64
  %219 = getelementptr inbounds [256 x ptr], ptr @rop_proc_table, i64 0, i64 %218
  %220 = trunc i64 %87 to i32
  %221 = sext i32 %161 to i64
  %222 = icmp sgt i32 %158, 0
  %223 = and i64 %87, 255
  %224 = icmp eq i64 %223, %30
  %225 = trunc i64 %87 to i32
  %226 = zext nneg i32 %88 to i64
  %227 = getelementptr inbounds [256 x ptr], ptr @rop_proc_table, i64 0, i64 %226
  %228 = and i32 %225, 255
  %229 = zext i32 %18 to i64
  %230 = zext i32 %3 to i64
  br label %280

231:                                              ; preds = %175, %277
  %232 = phi i32 [ %157, %175 ], [ %234, %277 ]
  %233 = phi ptr [ %170, %175 ], [ %278, %277 ]
  %234 = add nsw i32 %232, -1
  br i1 %176, label %236, label %235

235:                                              ; preds = %231
  br i1 %177, label %250, label %277

236:                                              ; preds = %231
  br i1 %185, label %237, label %277

237:                                              ; preds = %236, %246
  %238 = phi ptr [ %247, %246 ], [ %233, %236 ]
  %239 = phi i32 [ %248, %246 ], [ %158, %236 ]
  br i1 %190, label %246, label %240

240:                                              ; preds = %237
  %241 = load ptr, ptr %194, align 8, !tbaa !5
  %242 = load i8, ptr %238, align 1, !tbaa !56
  %243 = zext i8 %242 to i32
  %244 = tail call i32 %241(i32 noundef %243, i32 noundef %195, i32 noundef %196) #7
  %245 = trunc i32 %244 to i8
  store i8 %245, ptr %238, align 1, !tbaa !56
  br label %246

246:                                              ; preds = %237, %240
  %247 = getelementptr inbounds i8, ptr %238, i64 1
  %248 = add nsw i32 %239, -1
  %249 = icmp sgt i32 %239, 1
  br i1 %249, label %237, label %277, !llvm.loop !73

250:                                              ; preds = %235, %273
  %251 = phi ptr [ %274, %273 ], [ %233, %235 ]
  %252 = phi i32 [ %275, %273 ], [ %158, %235 ]
  br i1 %180, label %273, label %253

253:                                              ; preds = %250
  %254 = load i8, ptr %251, align 1, !tbaa !56
  %255 = zext i8 %254 to i32
  %256 = shl nuw nsw i32 %255, 16
  %257 = getelementptr inbounds i8, ptr %251, i64 1
  %258 = load i8, ptr %257, align 1, !tbaa !56
  %259 = zext i8 %258 to i32
  %260 = shl nuw nsw i32 %259, 8
  %261 = or disjoint i32 %260, %256
  %262 = getelementptr inbounds i8, ptr %251, i64 2
  %263 = load i8, ptr %262, align 1, !tbaa !56
  %264 = zext i8 %263 to i32
  %265 = or disjoint i32 %261, %264
  %266 = load ptr, ptr %182, align 8, !tbaa !5
  %267 = tail call i32 %266(i32 noundef %265, i32 noundef %183, i32 noundef %184) #7
  %268 = lshr i32 %267, 16
  %269 = trunc i32 %268 to i8
  store i8 %269, ptr %251, align 1, !tbaa !56
  %270 = lshr i32 %267, 8
  %271 = trunc i32 %270 to i8
  store i8 %271, ptr %257, align 1, !tbaa !56
  %272 = trunc i32 %267 to i8
  store i8 %272, ptr %262, align 1, !tbaa !56
  br label %273

273:                                              ; preds = %250, %253
  %274 = getelementptr inbounds i8, ptr %251, i64 3
  %275 = add nsw i32 %252, -1
  %276 = icmp sgt i32 %252, 1
  br i1 %276, label %250, label %277, !llvm.loop !74

277:                                              ; preds = %273, %246, %235, %236
  %278 = getelementptr inbounds i8, ptr %233, i64 %197
  %279 = icmp sgt i32 %232, 1
  br i1 %279, label %231, label %930, !llvm.loop !75

280:                                              ; preds = %199, %436
  %281 = phi i32 [ %157, %199 ], [ %284, %436 ]
  %282 = phi ptr [ %170, %199 ], [ %437, %436 ]
  %283 = phi ptr [ %162, %199 ], [ %438, %436 ]
  %284 = add nsw i32 %281, -1
  br i1 %31, label %365, label %285

285:                                              ; preds = %280
  br i1 %200, label %287, label %286

286:                                              ; preds = %285
  br i1 %201, label %320, label %436

287:                                              ; preds = %285
  br i1 %206, label %288, label %436

288:                                              ; preds = %287, %315
  %289 = phi ptr [ %316, %315 ], [ %282, %287 ]
  %290 = phi i32 [ %318, %315 ], [ %158, %287 ]
  %291 = phi i32 [ %317, %315 ], [ %161, %287 ]
  %292 = ashr i32 %291, 3
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8, ptr %283, i64 %293
  %295 = load i8, ptr %294, align 1, !tbaa !56
  %296 = zext i8 %295 to i32
  %297 = and i32 %291, 7
  %298 = lshr exact i32 128, %297
  %299 = and i32 %298, %296
  %300 = icmp ne i32 %299, 0
  %301 = zext i1 %300 to i64
  %302 = getelementptr inbounds i64, ptr %5, i64 %301
  %303 = load i64, ptr %302, align 8, !tbaa !12
  %304 = and i64 %303, 255
  %305 = icmp eq i64 %304, %27
  %306 = select i1 %305, i1 true, i1 %208
  br i1 %306, label %315, label %307

307:                                              ; preds = %288
  %308 = trunc i64 %303 to i32
  %309 = load ptr, ptr %211, align 8, !tbaa !5
  %310 = load i8, ptr %289, align 1, !tbaa !56
  %311 = zext i8 %310 to i32
  %312 = and i32 %308, 255
  %313 = tail call i32 %309(i32 noundef %311, i32 noundef %312, i32 noundef %212) #7
  %314 = trunc i32 %313 to i8
  store i8 %314, ptr %289, align 1, !tbaa !56
  br label %315

315:                                              ; preds = %288, %307
  %316 = getelementptr inbounds i8, ptr %289, i64 1
  %317 = add nsw i32 %291, 1
  %318 = add nsw i32 %290, -1
  %319 = icmp sgt i32 %290, 1
  br i1 %319, label %288, label %436, !llvm.loop !76

320:                                              ; preds = %286, %360
  %321 = phi ptr [ %361, %360 ], [ %282, %286 ]
  %322 = phi i32 [ %363, %360 ], [ %158, %286 ]
  %323 = phi i32 [ %362, %360 ], [ %161, %286 ]
  %324 = ashr i32 %323, 3
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, ptr %283, i64 %325
  %327 = load i8, ptr %326, align 1, !tbaa !56
  %328 = zext i8 %327 to i32
  %329 = and i32 %323, 7
  %330 = lshr exact i32 128, %329
  %331 = and i32 %330, %328
  %332 = icmp ne i32 %331, 0
  %333 = zext i1 %332 to i64
  %334 = getelementptr inbounds i64, ptr %5, i64 %333
  %335 = load i64, ptr %334, align 8, !tbaa !12
  %336 = and i64 %335, 4294967295
  %337 = icmp eq i64 %336, %27
  %338 = select i1 %337, i1 true, i1 %202
  br i1 %338, label %360, label %339

339:                                              ; preds = %320
  %340 = trunc i64 %335 to i32
  %341 = load i8, ptr %321, align 1, !tbaa !56
  %342 = zext i8 %341 to i32
  %343 = shl nuw nsw i32 %342, 16
  %344 = getelementptr inbounds i8, ptr %321, i64 1
  %345 = load i8, ptr %344, align 1, !tbaa !56
  %346 = zext i8 %345 to i32
  %347 = shl nuw nsw i32 %346, 8
  %348 = or disjoint i32 %347, %343
  %349 = getelementptr inbounds i8, ptr %321, i64 2
  %350 = load i8, ptr %349, align 1, !tbaa !56
  %351 = zext i8 %350 to i32
  %352 = or disjoint i32 %348, %351
  %353 = load ptr, ptr %204, align 8, !tbaa !5
  %354 = tail call i32 %353(i32 noundef %352, i32 noundef %340, i32 noundef %205) #7
  %355 = lshr i32 %354, 16
  %356 = trunc i32 %355 to i8
  store i8 %356, ptr %321, align 1, !tbaa !56
  %357 = lshr i32 %354, 8
  %358 = trunc i32 %357 to i8
  store i8 %358, ptr %344, align 1, !tbaa !56
  %359 = trunc i32 %354 to i8
  store i8 %359, ptr %349, align 1, !tbaa !56
  br label %360

360:                                              ; preds = %320, %339
  %361 = getelementptr inbounds i8, ptr %321, i64 3
  %362 = add nsw i32 %323, 1
  %363 = add nsw i32 %322, -1
  %364 = icmp sgt i32 %322, 1
  br i1 %364, label %320, label %436, !llvm.loop !77

365:                                              ; preds = %280
  br i1 %213, label %366, label %389

366:                                              ; preds = %365
  br i1 %222, label %367, label %436

367:                                              ; preds = %366
  %368 = getelementptr inbounds i8, ptr %283, i64 %221
  br label %369

369:                                              ; preds = %367, %384
  %370 = phi ptr [ %385, %384 ], [ %282, %367 ]
  %371 = phi i32 [ %387, %384 ], [ %158, %367 ]
  %372 = phi ptr [ %386, %384 ], [ %368, %367 ]
  %373 = load i8, ptr %372, align 1, !tbaa !56
  %374 = zext i8 %373 to i64
  %375 = icmp eq i64 %27, %374
  %376 = select i1 %375, i1 true, i1 %224
  br i1 %376, label %384, label %377

377:                                              ; preds = %369
  %378 = load ptr, ptr %227, align 8, !tbaa !5
  %379 = load i8, ptr %370, align 1, !tbaa !56
  %380 = zext i8 %379 to i32
  %381 = zext i8 %373 to i32
  %382 = tail call i32 %378(i32 noundef %380, i32 noundef %381, i32 noundef %228) #7
  %383 = trunc i32 %382 to i8
  store i8 %383, ptr %370, align 1, !tbaa !56
  br label %384

384:                                              ; preds = %369, %377
  %385 = getelementptr inbounds i8, ptr %370, i64 1
  %386 = getelementptr inbounds i8, ptr %372, i64 1
  %387 = add nsw i32 %371, -1
  %388 = icmp sgt i32 %371, 1
  br i1 %388, label %369, label %436, !llvm.loop !78

389:                                              ; preds = %365
  br i1 %216, label %390, label %436

390:                                              ; preds = %389
  %391 = getelementptr inbounds i8, ptr %283, i64 %215
  br label %392

392:                                              ; preds = %390, %431
  %393 = phi ptr [ %432, %431 ], [ %282, %390 ]
  %394 = phi i32 [ %434, %431 ], [ %158, %390 ]
  %395 = phi ptr [ %433, %431 ], [ %391, %390 ]
  %396 = load i8, ptr %395, align 1, !tbaa !56
  %397 = zext i8 %396 to i32
  %398 = shl nuw nsw i32 %397, 16
  %399 = getelementptr inbounds i8, ptr %395, i64 1
  %400 = load i8, ptr %399, align 1, !tbaa !56
  %401 = zext i8 %400 to i32
  %402 = shl nuw nsw i32 %401, 8
  %403 = or disjoint i32 %402, %398
  %404 = getelementptr inbounds i8, ptr %395, i64 2
  %405 = load i8, ptr %404, align 1, !tbaa !56
  %406 = zext i8 %405 to i32
  %407 = or disjoint i32 %403, %406
  %408 = zext nneg i32 %407 to i64
  %409 = icmp eq i64 %27, %408
  %410 = select i1 %409, i1 true, i1 %217
  br i1 %410, label %431, label %411

411:                                              ; preds = %392
  %412 = load i8, ptr %393, align 1, !tbaa !56
  %413 = zext i8 %412 to i32
  %414 = shl nuw nsw i32 %413, 16
  %415 = getelementptr inbounds i8, ptr %393, i64 1
  %416 = load i8, ptr %415, align 1, !tbaa !56
  %417 = zext i8 %416 to i32
  %418 = shl nuw nsw i32 %417, 8
  %419 = or disjoint i32 %418, %414
  %420 = getelementptr inbounds i8, ptr %393, i64 2
  %421 = load i8, ptr %420, align 1, !tbaa !56
  %422 = zext i8 %421 to i32
  %423 = or disjoint i32 %419, %422
  %424 = load ptr, ptr %219, align 8, !tbaa !5
  %425 = tail call i32 %424(i32 noundef %423, i32 noundef %407, i32 noundef %220) #7
  %426 = lshr i32 %425, 16
  %427 = trunc i32 %426 to i8
  store i8 %427, ptr %393, align 1, !tbaa !56
  %428 = lshr i32 %425, 8
  %429 = trunc i32 %428 to i8
  store i8 %429, ptr %415, align 1, !tbaa !56
  %430 = trunc i32 %425 to i8
  store i8 %430, ptr %420, align 1, !tbaa !56
  br label %431

431:                                              ; preds = %392, %411
  %432 = getelementptr inbounds i8, ptr %393, i64 3
  %433 = getelementptr inbounds i8, ptr %395, i64 3
  %434 = add nsw i32 %394, -1
  %435 = icmp sgt i32 %394, 1
  br i1 %435, label %392, label %436, !llvm.loop !79

436:                                              ; preds = %360, %315, %431, %384, %286, %287, %389, %366
  %437 = getelementptr inbounds i8, ptr %282, i64 %229
  %438 = getelementptr inbounds i8, ptr %283, i64 %230
  %439 = icmp sgt i32 %281, 1
  br i1 %439, label %280, label %930, !llvm.loop !80

440:                                              ; preds = %156
  %441 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %6, i64 0, i32 1
  %442 = load i32, ptr %441, align 8, !tbaa !61
  %443 = icmp sgt i32 %157, 0
  br i1 %89, label %675, label %444

444:                                              ; preds = %440
  br i1 %443, label %445, label %930

445:                                              ; preds = %444
  %446 = add nsw i32 %159, %13
  %447 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %6, i64 0, i32 2
  %448 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %6, i64 0, i32 2, i32 1
  %449 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %6, i64 0, i32 7
  %450 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %6, i64 0, i32 5
  %451 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %6, i64 0, i32 6
  %452 = icmp sgt i32 %158, 0
  %453 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %6, i64 0, i32 4
  %454 = icmp eq i32 %21, 1
  %455 = icmp eq i64 %58, %27
  %456 = zext nneg i32 %88 to i64
  %457 = getelementptr inbounds [256 x ptr], ptr @rop_proc_table, i64 0, i64 %456
  %458 = trunc i64 %58 to i32
  %459 = and i64 %58, 255
  %460 = icmp eq i64 %459, %27
  %461 = trunc i64 %58 to i32
  %462 = zext nneg i32 %88 to i64
  %463 = getelementptr inbounds [256 x ptr], ptr @rop_proc_table, i64 0, i64 %462
  %464 = and i32 %461, 255
  %465 = icmp eq i32 %21, 1
  %466 = icmp eq i64 %58, %27
  %467 = zext nneg i32 %88 to i64
  %468 = getelementptr inbounds [256 x ptr], ptr @rop_proc_table, i64 0, i64 %467
  %469 = trunc i64 %58 to i32
  %470 = and i64 %58, 255
  %471 = icmp eq i64 %470, %27
  %472 = trunc i64 %58 to i32
  %473 = zext nneg i32 %88 to i64
  %474 = getelementptr inbounds [256 x ptr], ptr @rop_proc_table, i64 0, i64 %473
  %475 = and i32 %472, 255
  %476 = zext i32 %18 to i64
  br label %477

477:                                              ; preds = %445, %671
  %478 = phi i32 [ %157, %445 ], [ %481, %671 ]
  %479 = phi ptr [ %170, %445 ], [ %672, %671 ]
  %480 = phi i32 [ %446, %445 ], [ %673, %671 ]
  %481 = add nsw i32 %478, -1
  %482 = load ptr, ptr %6, align 8, !tbaa !60
  %483 = load i32, ptr %448, align 4, !tbaa !63
  %484 = srem i32 %480, %483
  %485 = mul i32 %484, %442
  %486 = zext i32 %485 to i64
  %487 = getelementptr inbounds i8, ptr %482, i64 %486
  %488 = load i16, ptr %449, align 2, !tbaa !16
  %489 = icmp eq i16 %488, 0
  br i1 %489, label %498, label %490

490:                                              ; preds = %477
  %491 = load i16, ptr %450, align 2, !tbaa !64
  %492 = zext i16 %491 to i32
  %493 = sdiv i32 %480, %492
  %494 = load i16, ptr %451, align 4, !tbaa !19
  %495 = zext i16 %494 to i32
  %496 = mul nsw i32 %493, %495
  %497 = add nsw i32 %496, %12
  br label %498

498:                                              ; preds = %477, %490
  %499 = phi i32 [ %497, %490 ], [ %12, %477 ]
  br i1 %452, label %500, label %671

500:                                              ; preds = %498, %666
  %501 = phi ptr [ %667, %666 ], [ %479, %498 ]
  %502 = phi i32 [ %669, %666 ], [ %158, %498 ]
  %503 = phi i32 [ %668, %666 ], [ %160, %498 ]
  %504 = add nsw i32 %503, %499
  %505 = load i16, ptr %453, align 8, !tbaa !65
  %506 = zext i16 %505 to i32
  %507 = srem i32 %504, %506
  %508 = load i32, ptr %447, align 4, !tbaa !62
  %509 = sub nsw i32 %508, %507
  %510 = tail call i32 @llvm.smin.i32(i32 %502, i32 %509)
  %511 = icmp sgt i32 %510, 0
  br i1 %60, label %592, label %512

512:                                              ; preds = %500
  br i1 %454, label %514, label %513

513:                                              ; preds = %512
  br i1 %511, label %547, label %666

514:                                              ; preds = %512
  br i1 %511, label %515, label %666

515:                                              ; preds = %514, %542
  %516 = phi i32 [ %545, %542 ], [ %510, %514 ]
  %517 = phi i32 [ %544, %542 ], [ %507, %514 ]
  %518 = phi ptr [ %543, %542 ], [ %501, %514 ]
  %519 = ashr i32 %517, 3
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i8, ptr %487, i64 %520
  %522 = load i8, ptr %521, align 1, !tbaa !56
  %523 = zext i8 %522 to i32
  %524 = and i32 %517, 7
  %525 = lshr exact i32 128, %524
  %526 = and i32 %525, %523
  %527 = icmp ne i32 %526, 0
  %528 = zext i1 %527 to i64
  %529 = getelementptr inbounds i64, ptr %7, i64 %528
  %530 = load i64, ptr %529, align 8, !tbaa !12
  %531 = and i64 %530, 255
  %532 = icmp eq i64 %531, %30
  %533 = select i1 %460, i1 true, i1 %532
  br i1 %533, label %542, label %534

534:                                              ; preds = %515
  %535 = trunc i64 %530 to i32
  %536 = load ptr, ptr %463, align 8, !tbaa !5
  %537 = load i8, ptr %518, align 1, !tbaa !56
  %538 = zext i8 %537 to i32
  %539 = and i32 %535, 255
  %540 = tail call i32 %536(i32 noundef %538, i32 noundef %464, i32 noundef %539) #7
  %541 = trunc i32 %540 to i8
  store i8 %541, ptr %518, align 1, !tbaa !56
  br label %542

542:                                              ; preds = %515, %534
  %543 = getelementptr inbounds i8, ptr %518, i64 1
  %544 = add nsw i32 %517, 1
  %545 = add nsw i32 %516, -1
  %546 = icmp sgt i32 %516, 1
  br i1 %546, label %515, label %666, !llvm.loop !81

547:                                              ; preds = %513, %587
  %548 = phi i32 [ %590, %587 ], [ %510, %513 ]
  %549 = phi i32 [ %589, %587 ], [ %507, %513 ]
  %550 = phi ptr [ %588, %587 ], [ %501, %513 ]
  %551 = ashr i32 %549, 3
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i8, ptr %487, i64 %552
  %554 = load i8, ptr %553, align 1, !tbaa !56
  %555 = zext i8 %554 to i32
  %556 = and i32 %549, 7
  %557 = lshr exact i32 128, %556
  %558 = and i32 %557, %555
  %559 = icmp ne i32 %558, 0
  %560 = zext i1 %559 to i64
  %561 = getelementptr inbounds i64, ptr %7, i64 %560
  %562 = load i64, ptr %561, align 8, !tbaa !12
  %563 = and i64 %562, 4294967295
  %564 = icmp eq i64 %563, %30
  %565 = select i1 %455, i1 true, i1 %564
  br i1 %565, label %587, label %566

566:                                              ; preds = %547
  %567 = trunc i64 %562 to i32
  %568 = load i8, ptr %550, align 1, !tbaa !56
  %569 = zext i8 %568 to i32
  %570 = shl nuw nsw i32 %569, 16
  %571 = getelementptr inbounds i8, ptr %550, i64 1
  %572 = load i8, ptr %571, align 1, !tbaa !56
  %573 = zext i8 %572 to i32
  %574 = shl nuw nsw i32 %573, 8
  %575 = or disjoint i32 %574, %570
  %576 = getelementptr inbounds i8, ptr %550, i64 2
  %577 = load i8, ptr %576, align 1, !tbaa !56
  %578 = zext i8 %577 to i32
  %579 = or disjoint i32 %575, %578
  %580 = load ptr, ptr %457, align 8, !tbaa !5
  %581 = tail call i32 %580(i32 noundef %579, i32 noundef %458, i32 noundef %567) #7
  %582 = lshr i32 %581, 16
  %583 = trunc i32 %582 to i8
  store i8 %583, ptr %550, align 1, !tbaa !56
  %584 = lshr i32 %581, 8
  %585 = trunc i32 %584 to i8
  store i8 %585, ptr %571, align 1, !tbaa !56
  %586 = trunc i32 %581 to i8
  store i8 %586, ptr %576, align 1, !tbaa !56
  br label %587

587:                                              ; preds = %547, %566
  %588 = getelementptr inbounds i8, ptr %550, i64 3
  %589 = add nsw i32 %549, 1
  %590 = add nsw i32 %548, -1
  %591 = icmp sgt i32 %548, 1
  br i1 %591, label %547, label %666, !llvm.loop !82

592:                                              ; preds = %500
  br i1 %465, label %593, label %617

593:                                              ; preds = %592
  br i1 %511, label %594, label %666

594:                                              ; preds = %593
  %595 = sext i32 %507 to i64
  %596 = getelementptr inbounds i8, ptr %487, i64 %595
  br label %597

597:                                              ; preds = %594, %612
  %598 = phi ptr [ %614, %612 ], [ %596, %594 ]
  %599 = phi i32 [ %615, %612 ], [ %510, %594 ]
  %600 = phi ptr [ %613, %612 ], [ %501, %594 ]
  %601 = load i8, ptr %598, align 1, !tbaa !56
  %602 = zext i8 %601 to i64
  %603 = icmp eq i64 %30, %602
  %604 = select i1 %471, i1 true, i1 %603
  br i1 %604, label %612, label %605

605:                                              ; preds = %597
  %606 = load ptr, ptr %474, align 8, !tbaa !5
  %607 = load i8, ptr %600, align 1, !tbaa !56
  %608 = zext i8 %607 to i32
  %609 = zext i8 %601 to i32
  %610 = tail call i32 %606(i32 noundef %608, i32 noundef %475, i32 noundef %609) #7
  %611 = trunc i32 %610 to i8
  store i8 %611, ptr %600, align 1, !tbaa !56
  br label %612

612:                                              ; preds = %597, %605
  %613 = getelementptr inbounds i8, ptr %600, i64 1
  %614 = getelementptr inbounds i8, ptr %598, i64 1
  %615 = add nsw i32 %599, -1
  %616 = icmp sgt i32 %599, 1
  br i1 %616, label %597, label %666, !llvm.loop !83

617:                                              ; preds = %592
  br i1 %511, label %618, label %666

618:                                              ; preds = %617
  %619 = mul nsw i32 %507, 3
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i8, ptr %487, i64 %620
  br label %622

622:                                              ; preds = %618, %661
  %623 = phi ptr [ %663, %661 ], [ %621, %618 ]
  %624 = phi i32 [ %664, %661 ], [ %510, %618 ]
  %625 = phi ptr [ %662, %661 ], [ %501, %618 ]
  %626 = load i8, ptr %623, align 1, !tbaa !56
  %627 = zext i8 %626 to i32
  %628 = shl nuw nsw i32 %627, 16
  %629 = getelementptr inbounds i8, ptr %623, i64 1
  %630 = load i8, ptr %629, align 1, !tbaa !56
  %631 = zext i8 %630 to i32
  %632 = shl nuw nsw i32 %631, 8
  %633 = or disjoint i32 %632, %628
  %634 = getelementptr inbounds i8, ptr %623, i64 2
  %635 = load i8, ptr %634, align 1, !tbaa !56
  %636 = zext i8 %635 to i32
  %637 = or disjoint i32 %633, %636
  %638 = zext nneg i32 %637 to i64
  %639 = icmp eq i64 %30, %638
  %640 = select i1 %466, i1 true, i1 %639
  br i1 %640, label %661, label %641

641:                                              ; preds = %622
  %642 = load i8, ptr %625, align 1, !tbaa !56
  %643 = zext i8 %642 to i32
  %644 = shl nuw nsw i32 %643, 16
  %645 = getelementptr inbounds i8, ptr %625, i64 1
  %646 = load i8, ptr %645, align 1, !tbaa !56
  %647 = zext i8 %646 to i32
  %648 = shl nuw nsw i32 %647, 8
  %649 = or disjoint i32 %648, %644
  %650 = getelementptr inbounds i8, ptr %625, i64 2
  %651 = load i8, ptr %650, align 1, !tbaa !56
  %652 = zext i8 %651 to i32
  %653 = or disjoint i32 %649, %652
  %654 = load ptr, ptr %468, align 8, !tbaa !5
  %655 = tail call i32 %654(i32 noundef %653, i32 noundef %469, i32 noundef %637) #7
  %656 = lshr i32 %655, 16
  %657 = trunc i32 %656 to i8
  store i8 %657, ptr %625, align 1, !tbaa !56
  %658 = lshr i32 %655, 8
  %659 = trunc i32 %658 to i8
  store i8 %659, ptr %645, align 1, !tbaa !56
  %660 = trunc i32 %655 to i8
  store i8 %660, ptr %650, align 1, !tbaa !56
  br label %661

661:                                              ; preds = %622, %641
  %662 = getelementptr inbounds i8, ptr %625, i64 3
  %663 = getelementptr inbounds i8, ptr %623, i64 3
  %664 = add nsw i32 %624, -1
  %665 = icmp sgt i32 %624, 1
  br i1 %665, label %622, label %666, !llvm.loop !84

666:                                              ; preds = %587, %542, %661, %612, %513, %514, %617, %593
  %667 = phi ptr [ %501, %593 ], [ %501, %617 ], [ %501, %514 ], [ %501, %513 ], [ %613, %612 ], [ %662, %661 ], [ %543, %542 ], [ %588, %587 ]
  %668 = add nsw i32 %510, %503
  %669 = sub nsw i32 %502, %510
  %670 = icmp sgt i32 %669, 0
  br i1 %670, label %500, label %671, !llvm.loop !85

671:                                              ; preds = %666, %498
  %672 = getelementptr inbounds i8, ptr %479, i64 %476
  %673 = add nsw i32 %480, 1
  %674 = icmp sgt i32 %478, 1
  br i1 %674, label %477, label %930, !llvm.loop !86

675:                                              ; preds = %440
  br i1 %443, label %676, label %930

676:                                              ; preds = %675
  %677 = add nsw i32 %159, %13
  %678 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %6, i64 0, i32 2
  %679 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %6, i64 0, i32 2, i32 1
  %680 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %6, i64 0, i32 7
  %681 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %6, i64 0, i32 5
  %682 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %6, i64 0, i32 6
  %683 = icmp sgt i32 %158, 0
  %684 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %6, i64 0, i32 4
  %685 = icmp eq i32 %21, 1
  %686 = getelementptr inbounds i64, ptr %5, i64 1
  %687 = getelementptr inbounds i64, ptr %7, i64 1
  %688 = zext nneg i32 %88 to i64
  %689 = getelementptr inbounds [256 x ptr], ptr @rop_proc_table, i64 0, i64 %688
  %690 = getelementptr inbounds i64, ptr %5, i64 1
  %691 = getelementptr inbounds i64, ptr %7, i64 1
  %692 = zext nneg i32 %88 to i64
  %693 = getelementptr inbounds [256 x ptr], ptr @rop_proc_table, i64 0, i64 %692
  %694 = zext i32 %18 to i64
  %695 = zext i32 %3 to i64
  br label %696

696:                                              ; preds = %676, %925
  %697 = phi i32 [ %157, %676 ], [ %701, %925 ]
  %698 = phi ptr [ %162, %676 ], [ %927, %925 ]
  %699 = phi i32 [ %677, %676 ], [ %928, %925 ]
  %700 = phi ptr [ %170, %676 ], [ %926, %925 ]
  %701 = add nsw i32 %697, -1
  %702 = load ptr, ptr %6, align 8, !tbaa !60
  %703 = load i32, ptr %679, align 4, !tbaa !63
  %704 = srem i32 %699, %703
  %705 = mul i32 %704, %442
  %706 = zext i32 %705 to i64
  %707 = getelementptr inbounds i8, ptr %702, i64 %706
  %708 = load i16, ptr %680, align 2, !tbaa !16
  %709 = icmp eq i16 %708, 0
  br i1 %709, label %718, label %710

710:                                              ; preds = %696
  %711 = load i16, ptr %681, align 2, !tbaa !64
  %712 = zext i16 %711 to i32
  %713 = sdiv i32 %699, %712
  %714 = load i16, ptr %682, align 4, !tbaa !19
  %715 = zext i16 %714 to i32
  %716 = mul nsw i32 %713, %715
  %717 = add nsw i32 %716, %12
  br label %718

718:                                              ; preds = %696, %710
  %719 = phi i32 [ %717, %710 ], [ %12, %696 ]
  br i1 %683, label %720, label %925

720:                                              ; preds = %718, %919
  %721 = phi ptr [ %921, %919 ], [ %700, %718 ]
  %722 = phi i32 [ %923, %919 ], [ %158, %718 ]
  %723 = phi i32 [ %922, %919 ], [ %160, %718 ]
  %724 = phi i32 [ %920, %919 ], [ %161, %718 ]
  %725 = add nsw i32 %723, %719
  %726 = load i16, ptr %684, align 8, !tbaa !65
  %727 = zext i16 %726 to i32
  %728 = srem i32 %725, %727
  %729 = load i32, ptr %678, align 4, !tbaa !62
  %730 = sub i32 %729, %728
  %731 = tail call i32 @llvm.smin.i32(i32 %722, i32 %730)
  %732 = icmp sgt i32 %731, 0
  br i1 %685, label %733, label %807

733:                                              ; preds = %720
  br i1 %732, label %734, label %919

734:                                              ; preds = %733
  %735 = sext i32 %728 to i64
  %736 = getelementptr inbounds i8, ptr %707, i64 %735
  %737 = sext i32 %724 to i64
  %738 = getelementptr inbounds i8, ptr %698, i64 %737
  br label %739

739:                                              ; preds = %734, %799
  %740 = phi ptr [ %801, %799 ], [ %738, %734 ]
  %741 = phi ptr [ %802, %799 ], [ %736, %734 ]
  %742 = phi i32 [ %805, %799 ], [ %731, %734 ]
  %743 = phi i32 [ %804, %799 ], [ %728, %734 ]
  %744 = phi ptr [ %800, %799 ], [ %721, %734 ]
  %745 = phi i32 [ %803, %799 ], [ %724, %734 ]
  br i1 %31, label %762, label %746

746:                                              ; preds = %739
  %747 = ashr i32 %745, 3
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds i8, ptr %698, i64 %748
  %750 = load i8, ptr %749, align 1, !tbaa !56
  %751 = zext i8 %750 to i32
  %752 = and i32 %745, 7
  %753 = lshr exact i32 128, %752
  %754 = and i32 %753, %751
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %759, label %756

756:                                              ; preds = %746
  %757 = load i64, ptr %690, align 8, !tbaa !12
  %758 = trunc i64 %757 to i8
  br label %764

759:                                              ; preds = %746
  %760 = load i64, ptr %5, align 8, !tbaa !12
  %761 = trunc i64 %760 to i8
  br label %764

762:                                              ; preds = %739
  %763 = load i8, ptr %740, align 1, !tbaa !56
  br label %764

764:                                              ; preds = %756, %759, %762
  %765 = phi i8 [ %763, %762 ], [ %758, %756 ], [ %761, %759 ]
  br i1 %60, label %782, label %766

766:                                              ; preds = %764
  %767 = ashr i32 %743, 3
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds i8, ptr %741, i64 %768
  %770 = load i8, ptr %769, align 1, !tbaa !56
  %771 = zext i8 %770 to i32
  %772 = and i32 %743, 7
  %773 = lshr exact i32 128, %772
  %774 = and i32 %773, %771
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %779, label %776

776:                                              ; preds = %766
  %777 = load i64, ptr %691, align 8, !tbaa !12
  %778 = trunc i64 %777 to i8
  br label %784

779:                                              ; preds = %766
  %780 = load i64, ptr %7, align 8, !tbaa !12
  %781 = trunc i64 %780 to i8
  br label %784

782:                                              ; preds = %764
  %783 = load i8, ptr %741, align 1, !tbaa !56
  br label %784

784:                                              ; preds = %776, %779, %782
  %785 = phi i8 [ %783, %782 ], [ %778, %776 ], [ %781, %779 ]
  %786 = zext i8 %765 to i64
  %787 = icmp eq i64 %27, %786
  %788 = zext i8 %785 to i64
  %789 = icmp eq i64 %30, %788
  %790 = select i1 %787, i1 true, i1 %789
  br i1 %790, label %799, label %791

791:                                              ; preds = %784
  %792 = load ptr, ptr %693, align 8, !tbaa !5
  %793 = load i8, ptr %744, align 1, !tbaa !56
  %794 = zext i8 %793 to i32
  %795 = zext i8 %765 to i32
  %796 = zext i8 %785 to i32
  %797 = tail call i32 %792(i32 noundef %794, i32 noundef %795, i32 noundef %796) #7
  %798 = trunc i32 %797 to i8
  store i8 %798, ptr %744, align 1, !tbaa !56
  br label %799

799:                                              ; preds = %784, %791
  %800 = getelementptr inbounds i8, ptr %744, i64 1
  %801 = getelementptr inbounds i8, ptr %740, i64 1
  %802 = getelementptr inbounds i8, ptr %741, i64 1
  %803 = add nsw i32 %745, 1
  %804 = add nsw i32 %743, 1
  %805 = add nsw i32 %742, -1
  %806 = icmp sgt i32 %742, 1
  br i1 %806, label %739, label %915, !llvm.loop !87

807:                                              ; preds = %720
  br i1 %732, label %808, label %919

808:                                              ; preds = %807
  %809 = mul nsw i32 %728, 3
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds i8, ptr %707, i64 %810
  %812 = mul nsw i32 %724, 3
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds i8, ptr %698, i64 %813
  br label %815

815:                                              ; preds = %808, %907
  %816 = phi ptr [ %909, %907 ], [ %814, %808 ]
  %817 = phi ptr [ %910, %907 ], [ %811, %808 ]
  %818 = phi i32 [ %913, %907 ], [ %731, %808 ]
  %819 = phi i32 [ %912, %907 ], [ %728, %808 ]
  %820 = phi ptr [ %908, %907 ], [ %721, %808 ]
  %821 = phi i32 [ %911, %907 ], [ %724, %808 ]
  br i1 %31, label %836, label %822

822:                                              ; preds = %815
  %823 = ashr i32 %821, 3
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds i8, ptr %698, i64 %824
  %826 = load i8, ptr %825, align 1, !tbaa !56
  %827 = zext i8 %826 to i32
  %828 = and i32 %821, 7
  %829 = lshr exact i32 128, %828
  %830 = and i32 %829, %827
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %834, label %832

832:                                              ; preds = %822
  %833 = load i64, ptr %686, align 8, !tbaa !12
  br label %849

834:                                              ; preds = %822
  %835 = load i64, ptr %5, align 8, !tbaa !12
  br label %849

836:                                              ; preds = %815
  %837 = load i8, ptr %816, align 1, !tbaa !56
  %838 = zext i8 %837 to i64
  %839 = shl nuw nsw i64 %838, 16
  %840 = getelementptr inbounds i8, ptr %816, i64 1
  %841 = load i8, ptr %840, align 1, !tbaa !56
  %842 = zext i8 %841 to i64
  %843 = shl nuw nsw i64 %842, 8
  %844 = or disjoint i64 %843, %839
  %845 = getelementptr inbounds i8, ptr %816, i64 2
  %846 = load i8, ptr %845, align 1, !tbaa !56
  %847 = zext i8 %846 to i64
  %848 = or disjoint i64 %844, %847
  br label %849

849:                                              ; preds = %832, %834, %836
  %850 = phi i64 [ %848, %836 ], [ %833, %832 ], [ %835, %834 ]
  %851 = trunc i64 %850 to i32
  br i1 %60, label %866, label %852

852:                                              ; preds = %849
  %853 = ashr i32 %819, 3
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds i8, ptr %817, i64 %854
  %856 = load i8, ptr %855, align 1, !tbaa !56
  %857 = zext i8 %856 to i32
  %858 = and i32 %819, 7
  %859 = lshr exact i32 128, %858
  %860 = and i32 %859, %857
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %864, label %862

862:                                              ; preds = %852
  %863 = load i64, ptr %687, align 8, !tbaa !12
  br label %879

864:                                              ; preds = %852
  %865 = load i64, ptr %7, align 8, !tbaa !12
  br label %879

866:                                              ; preds = %849
  %867 = load i8, ptr %817, align 1, !tbaa !56
  %868 = zext i8 %867 to i64
  %869 = shl nuw nsw i64 %868, 16
  %870 = getelementptr inbounds i8, ptr %817, i64 1
  %871 = load i8, ptr %870, align 1, !tbaa !56
  %872 = zext i8 %871 to i64
  %873 = shl nuw nsw i64 %872, 8
  %874 = or disjoint i64 %873, %869
  %875 = getelementptr inbounds i8, ptr %817, i64 2
  %876 = load i8, ptr %875, align 1, !tbaa !56
  %877 = zext i8 %876 to i64
  %878 = or disjoint i64 %874, %877
  br label %879

879:                                              ; preds = %862, %864, %866
  %880 = phi i64 [ %878, %866 ], [ %863, %862 ], [ %865, %864 ]
  %881 = and i64 %850, 4294967295
  %882 = icmp eq i64 %881, %27
  %883 = and i64 %880, 4294967295
  %884 = icmp eq i64 %883, %30
  %885 = select i1 %882, i1 true, i1 %884
  br i1 %885, label %907, label %886

886:                                              ; preds = %879
  %887 = trunc i64 %880 to i32
  %888 = load i8, ptr %820, align 1, !tbaa !56
  %889 = zext i8 %888 to i32
  %890 = shl nuw nsw i32 %889, 16
  %891 = getelementptr inbounds i8, ptr %820, i64 1
  %892 = load i8, ptr %891, align 1, !tbaa !56
  %893 = zext i8 %892 to i32
  %894 = shl nuw nsw i32 %893, 8
  %895 = or disjoint i32 %894, %890
  %896 = getelementptr inbounds i8, ptr %820, i64 2
  %897 = load i8, ptr %896, align 1, !tbaa !56
  %898 = zext i8 %897 to i32
  %899 = or disjoint i32 %895, %898
  %900 = load ptr, ptr %689, align 8, !tbaa !5
  %901 = tail call i32 %900(i32 noundef %899, i32 noundef %851, i32 noundef %887) #7
  %902 = lshr i32 %901, 16
  %903 = trunc i32 %902 to i8
  store i8 %903, ptr %820, align 1, !tbaa !56
  %904 = lshr i32 %901, 8
  %905 = trunc i32 %904 to i8
  store i8 %905, ptr %891, align 1, !tbaa !56
  %906 = trunc i32 %901 to i8
  store i8 %906, ptr %896, align 1, !tbaa !56
  br label %907

907:                                              ; preds = %879, %886
  %908 = getelementptr inbounds i8, ptr %820, i64 3
  %909 = getelementptr inbounds i8, ptr %816, i64 3
  %910 = getelementptr inbounds i8, ptr %817, i64 3
  %911 = add nsw i32 %821, 1
  %912 = add nsw i32 %819, 1
  %913 = add nsw i32 %818, -1
  %914 = icmp sgt i32 %818, 1
  br i1 %914, label %815, label %917, !llvm.loop !88

915:                                              ; preds = %799
  %916 = add i32 %724, %731
  br label %919

917:                                              ; preds = %907
  %918 = add i32 %724, %731
  br label %919

919:                                              ; preds = %917, %915, %807, %733
  %920 = phi i32 [ %724, %733 ], [ %724, %807 ], [ %916, %915 ], [ %918, %917 ]
  %921 = phi ptr [ %721, %733 ], [ %721, %807 ], [ %800, %915 ], [ %908, %917 ]
  %922 = add nsw i32 %731, %723
  %923 = sub nsw i32 %722, %731
  %924 = icmp sgt i32 %923, 0
  br i1 %924, label %720, label %925, !llvm.loop !89

925:                                              ; preds = %919, %718
  %926 = getelementptr inbounds i8, ptr %700, i64 %694
  %927 = getelementptr inbounds i8, ptr %698, i64 %695
  %928 = add nsw i32 %699, 1
  %929 = icmp sgt i32 %697, 1
  br i1 %929, label %696, label %930, !llvm.loop !90

930:                                              ; preds = %277, %436, %671, %925, %174, %198, %444, %675, %136, %106
  ret i32 0
}

declare ptr @gdev_mem_device_for_bits(i32 noundef) local_unnamed_addr #3

declare i32 @gx_device_raster(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gs_make_mem_device(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gx_default_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gx_default_strip_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_copy_rop_unaligned(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef readonly %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) local_unnamed_addr #1 {
  %16 = alloca %struct.gx_strip_bitmap_s, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %16) #7
  %17 = icmp eq ptr %6, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !9
  %19 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %16, i64 0, i32 7
  store i16 0, ptr %19, align 2, !tbaa !16
  %20 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %16, i64 0, i32 6
  store i16 0, ptr %20, align 4, !tbaa !19
  br label %21

21:                                               ; preds = %15, %18
  %22 = phi ptr [ %16, %18 ], [ null, %15 ]
  %23 = call i32 @gx_strip_copy_rop_unaligned(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %22, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %16) #7
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_strip_copy_rop_unaligned(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) local_unnamed_addr #1 {
  %16 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 35
  %17 = load ptr, ptr %16, align 8, !tbaa !20
  %18 = icmp eq ptr %5, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !28
  br label %22

22:                                               ; preds = %15, %19
  %23 = phi i32 [ %21, %19 ], [ 1, %15 ]
  %24 = and i32 %3, 7
  %25 = icmp eq ptr %1, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %22
  %27 = ptrtoint ptr %1 to i64
  %28 = trunc i64 %27 to i32
  %29 = and i32 %28, 7
  %30 = icmp eq i32 %23, 24
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = urem i32 %29, 3
  %33 = shl nuw nsw i32 %32, 3
  %34 = or disjoint i32 %33, %29
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi i32 [ %34, %31 ], [ %29, %26 ]
  %37 = zext nneg i32 %36 to i64
  %38 = sub nsw i64 0, %37
  %39 = getelementptr inbounds i8, ptr %1, i64 %38
  %40 = shl nuw nsw i32 %36, 3
  %41 = udiv i32 %40, %23
  %42 = add i32 %41, %2
  br label %43

43:                                               ; preds = %35, %22
  %44 = phi i32 [ %42, %35 ], [ %2, %22 ]
  %45 = phi ptr [ %39, %35 ], [ null, %22 ]
  %46 = icmp eq i32 %24, 0
  %47 = icmp eq ptr %45, null
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  br i1 %18, label %57, label %50

50:                                               ; preds = %49
  %51 = load i64, ptr %5, align 8, !tbaa !12
  %52 = getelementptr inbounds i64, ptr %5, i64 1
  %53 = load i64, ptr %52, align 8, !tbaa !12
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50, %43
  %56 = tail call i32 %17(ptr noundef %0, ptr noundef %45, i32 noundef %44, i32 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #7
  br label %76

57:                                               ; preds = %50, %49
  %58 = shl nuw nsw i32 %24, 3
  %59 = sdiv i32 %58, %23
  %60 = icmp sgt i32 %11, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = and i32 %3, -8
  %63 = zext i32 %62 to i64
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i32 [ 0, %61 ], [ %70, %64 ]
  %66 = phi i32 [ %44, %61 ], [ %72, %64 ]
  %67 = phi ptr [ %45, %61 ], [ %71, %64 ]
  %68 = add nsw i32 %65, %9
  %69 = tail call i32 %17(ptr noundef %0, ptr noundef %67, i32 noundef %66, i32 noundef %3, i64 noundef 0, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %68, i32 noundef %10, i32 noundef 1, i32 noundef %12, i32 noundef %13, i32 noundef %14) #7
  %70 = add nuw nsw i32 %65, 1
  %71 = getelementptr inbounds i8, ptr %67, i64 %63
  %72 = add nsw i32 %66, %59
  %73 = icmp slt i32 %70, %11
  %74 = icmp sgt i32 %69, -1
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %64, label %76, !llvm.loop !91

76:                                               ; preds = %64, %57, %55
  %77 = phi i32 [ %56, %55 ], [ 0, %57 ], [ %69, %64 ]
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define internal ptr @device_rop_texture_enum_ptrs(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device_forward, i64 0, i32 4), align 8, !tbaa !92
  %8 = add i32 %2, -1
  %9 = tail call ptr %7(ptr noundef %0, i32 noundef %1, i32 noundef %8, ptr noundef %3) #7
  br label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gx_device_rop_texture_s, ptr %0, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !94
  store ptr %12, ptr %3, align 8, !tbaa !5
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ @ptr_struct_procs, %10 ], [ %9, %6 ]
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal void @device_rop_texture_reloc_ptrs(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device_forward, i64 0, i32 5), align 8, !tbaa !96
  tail call void %4(ptr noundef %0, i32 noundef %1, ptr noundef %2) #7
  %5 = getelementptr inbounds %struct.gx_device_rop_texture_s, ptr %0, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %6, ptr noundef %2) #7
  store ptr %7, ptr %5, align 8, !tbaa !94
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gx_make_rop_texture_device(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(512) @gs_rop_texture_device, i64 512, i1 false), !tbaa.struct !97
  tail call void @gx_device_fill_in_procs(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.gx_device_rop_texture_s, ptr %0, i64 0, i32 7
  %6 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !98
  %7 = getelementptr inbounds %struct.gx_device_rop_texture_s, ptr %0, i64 0, i32 22
  store ptr %1, ptr %7, align 8, !tbaa !99
  %8 = getelementptr inbounds %struct.gx_device_rop_texture_s, ptr %0, i64 0, i32 23
  store i32 %2, ptr %8, align 8, !tbaa !100
  %9 = getelementptr inbounds %struct.gx_device_rop_texture_s, ptr %0, i64 0, i32 24
  store ptr %3, ptr %9, align 8, !tbaa !94
  ret void
}

declare void @gx_device_fill_in_procs(ptr noundef) local_unnamed_addr #3

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gx_default_install(ptr noundef, ptr noundef) #3

declare i32 @gx_default_begin_page(ptr noundef, ptr noundef) #3

declare i32 @gx_default_end_page(ptr noundef, i32 noundef, ptr noundef) #3

declare void @gx_forward_get_initial_matrix(ptr noundef, ptr noundef) #3

declare i64 @gx_forward_map_rgb_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #3

declare i32 @gx_forward_map_color_rgb(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @rop_texture_fill_rectangle(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #1 {
  %7 = alloca %struct.gx_rop_source_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #7
  %8 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 4
  %9 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 4, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i64 %5, ptr %9, align 8, !tbaa !12
  store i64 %5, ptr %8, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.gx_rop_source_s, ptr %7, i64 0, i32 5
  store i32 1, ptr %10, align 8, !tbaa !101
  %11 = getelementptr inbounds %struct.gx_device_rop_texture_s, ptr %0, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !94
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  %14 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !108
  %16 = getelementptr inbounds %struct.gx_device_rop_texture_s, ptr %0, i64 0, i32 22
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = getelementptr inbounds %struct.gx_device_rop_texture_s, ptr %0, i64 0, i32 23
  %19 = load i32, ptr %18, align 8, !tbaa !100
  %20 = call i32 %15(ptr noundef nonnull %12, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %17, i32 noundef %19, ptr noundef nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #7
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @rop_texture_copy_mono(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #1 {
  %12 = alloca %struct.gx_rop_source_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %12) #7
  %13 = getelementptr inbounds %struct.gx_device_rop_texture_s, ptr %0, i64 0, i32 23
  %14 = load i32, ptr %13, align 8, !tbaa !100
  store ptr %1, ptr %12, align 8, !tbaa !110
  %15 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 1
  store i32 %2, ptr %15, align 8, !tbaa !111
  %16 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 2
  store i32 %3, ptr %16, align 4, !tbaa !112
  %17 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 3
  store i64 %4, ptr %17, align 8, !tbaa !113
  %18 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 4
  store i64 %9, ptr %18, align 8, !tbaa !12
  %19 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 4, i64 1
  store i64 %10, ptr %19, align 8, !tbaa !12
  %20 = getelementptr inbounds %struct.gx_rop_source_s, ptr %12, i64 0, i32 5
  store i32 1, ptr %20, align 8, !tbaa !101
  %21 = icmp eq i64 %9, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = and i32 %14, -52
  %24 = or disjoint i32 %23, 34
  br label %30

25:                                               ; preds = %11
  %26 = icmp eq i64 %10, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = and i32 %14, -205
  %29 = or disjoint i32 %28, 136
  br label %30

30:                                               ; preds = %25, %27, %22
  %31 = phi i32 [ %24, %22 ], [ %29, %27 ], [ %14, %25 ]
  %32 = getelementptr inbounds %struct.gx_device_rop_texture_s, ptr %0, i64 0, i32 24
  %33 = load ptr, ptr %32, align 8, !tbaa !94
  %34 = load ptr, ptr %33, align 8, !tbaa !103
  %35 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !108
  %37 = getelementptr inbounds %struct.gx_device_rop_texture_s, ptr %0, i64 0, i32 22
  %38 = load ptr, ptr %37, align 8, !tbaa !99
  %39 = call i32 %36(ptr noundef nonnull %33, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %38, i32 noundef %31, ptr noundef nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %12) #7
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @rop_texture_copy_color(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #1 {
  %10 = alloca %struct.gx_rop_source_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #7
  store ptr %1, ptr %10, align 8, !tbaa !110
  %11 = getelementptr inbounds %struct.gx_rop_source_s, ptr %10, i64 0, i32 1
  store i32 %2, ptr %11, align 8, !tbaa !111
  %12 = getelementptr inbounds %struct.gx_rop_source_s, ptr %10, i64 0, i32 2
  store i32 %3, ptr %12, align 4, !tbaa !112
  %13 = getelementptr inbounds %struct.gx_rop_source_s, ptr %10, i64 0, i32 3
  store i64 %4, ptr %13, align 8, !tbaa !113
  %14 = getelementptr inbounds %struct.gx_rop_source_s, ptr %10, i64 0, i32 4
  %15 = getelementptr inbounds %struct.gx_rop_source_s, ptr %10, i64 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 -1, i64 16, i1 false)
  store i32 1, ptr %15, align 8, !tbaa !101
  %16 = getelementptr inbounds %struct.gx_device_rop_texture_s, ptr %0, i64 0, i32 24
  %17 = load ptr, ptr %16, align 8, !tbaa !94
  %18 = load ptr, ptr %17, align 8, !tbaa !103
  %19 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !108
  %21 = getelementptr inbounds %struct.gx_device_rop_texture_s, ptr %0, i64 0, i32 22
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = getelementptr inbounds %struct.gx_device_rop_texture_s, ptr %0, i64 0, i32 23
  %24 = load i32, ptr %23, align 8, !tbaa !100
  %25 = call i32 %20(ptr noundef nonnull %17, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %22, i32 noundef %24, ptr noundef nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #7
  ret i32 %25
}

declare i32 @gx_forward_get_params(ptr noundef, ptr noundef) #3

declare i32 @gx_forward_put_params(ptr noundef, ptr noundef) #3

declare i64 @gx_forward_map_cmyk_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #3

declare ptr @gx_forward_get_xfont_procs(ptr noundef) #3

declare ptr @gx_forward_get_xfont_device(ptr noundef) #3

declare i64 @gx_forward_map_rgb_alpha_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #3

declare ptr @gx_forward_get_page_device(ptr noundef) #3

declare i32 @gx_no_copy_alpha(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) #3

declare i32 @gx_forward_get_band(ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @gx_no_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare void @gx_forward_get_clipping_box(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{i64 0, i64 8, !5, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 4, !10, i64 24, i64 8, !12, i64 32, i64 2, !14, i64 34, i64 2, !14}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !7, i64 0}
!16 = !{!17, !15, i64 38}
!17 = !{!"gx_strip_bitmap_s", !6, i64 0, !11, i64 8, !18, i64 12, !13, i64 24, !15, i64 32, !15, i64 34, !15, i64 36, !15, i64 38}
!18 = !{!"gs_int_point_s", !11, i64 0, !11, i64 4}
!19 = !{!17, !15, i64 36}
!20 = !{!21, !6, i64 472}
!21 = !{!"gx_device_s", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !11, i64 44, !22, i64 48, !11, i64 64, !11, i64 68, !7, i64 72, !7, i64 80, !11, i64 96, !7, i64 100, !7, i64 108, !7, i64 116, !7, i64 124, !13, i64 144, !13, i64 152, !11, i64 160, !23, i64 168, !24, i64 192}
!22 = !{!"gx_device_color_info_s", !11, i64 0, !11, i64 4, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14}
!23 = !{!"gx_page_device_procs_s", !6, i64 0, !6, i64 8, !6, i64 16}
!24 = !{!"gx_device_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288}
!25 = !{!26, !6, i64 488}
!26 = !{!"gx_device_forward_s", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !11, i64 44, !22, i64 48, !11, i64 64, !11, i64 68, !7, i64 72, !7, i64 80, !11, i64 96, !7, i64 100, !7, i64 108, !7, i64 116, !7, i64 124, !13, i64 144, !13, i64 152, !11, i64 160, !23, i64 168, !24, i64 192, !6, i64 488}
!27 = !{!21, !6, i64 376}
!28 = !{!21, !11, i64 52}
!29 = !{!21, !11, i64 64}
!30 = !{!21, !11, i64 68}
!31 = !{!32, !11, i64 64}
!32 = !{!"gx_device_memory_s", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !11, i64 44, !22, i64 48, !11, i64 64, !11, i64 68, !7, i64 72, !7, i64 80, !11, i64 96, !7, i64 100, !7, i64 108, !7, i64 116, !7, i64 124, !13, i64 144, !13, i64 152, !11, i64 160, !23, i64 168, !24, i64 192, !6, i64 488, !33, i64 496, !11, i64 520, !11, i64 524, !6, i64 528, !6, i64 536, !6, i64 544, !35, i64 552, !36, i64 568, !37, i64 592, !11, i64 600, !11, i64 604, !11, i64 608, !11, i64 612, !11, i64 616, !13, i64 624}
!33 = !{!"gs_matrix_s", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !34, i64 16, !34, i64 20}
!34 = !{!"float", !7, i64 0}
!35 = !{!"gs_const_string_s", !6, i64 0, !11, i64 8}
!36 = !{!"_c24", !13, i64 0, !11, i64 8, !11, i64 12, !11, i64 16}
!37 = !{!"gs_log2_scale_point_s", !11, i64 0, !11, i64 4}
!38 = !{!32, !11, i64 68}
!39 = !{!32, !6, i64 544}
!40 = !{!32, !6, i64 192}
!41 = !{!42, !6, i64 32}
!42 = !{!"gs_memory_s", !43, i64 0}
!43 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!44 = !{!21, !6, i64 288}
!45 = !{!32, !6, i64 272}
!46 = !{!32, !6, i64 472}
!47 = !{!32, !6, i64 288}
!48 = !{!21, !6, i64 272}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!42, !6, i64 88}
!52 = !{!32, !6, i64 224}
!53 = !{!32, !11, i64 520}
!54 = !{!32, !6, i64 552}
!55 = !{!21, !6, i64 232}
!56 = !{!7, !7, i64 0}
!57 = !{!21, !6, i64 248}
!58 = !{!32, !6, i64 528}
!59 = !{!21, !6, i64 264}
!60 = !{!17, !6, i64 0}
!61 = !{!17, !11, i64 8}
!62 = !{!17, !11, i64 12}
!63 = !{!17, !11, i64 16}
!64 = !{!17, !15, i64 34}
!65 = !{!17, !15, i64 32}
!66 = !{!21, !6, i64 464}
!67 = !{!32, !6, i64 536}
!68 = distinct !{!68, !50}
!69 = distinct !{!69, !50}
!70 = distinct !{!70, !50}
!71 = !{i64 0, i64 8, !5, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 4, !10, i64 24, i64 8, !12, i64 32, i64 2, !14, i64 34, i64 2, !14, i64 36, i64 2, !14, i64 38, i64 2, !14}
!72 = !{!17, !13, i64 24}
!73 = distinct !{!73, !50}
!74 = distinct !{!74, !50}
!75 = distinct !{!75, !50}
!76 = distinct !{!76, !50}
!77 = distinct !{!77, !50}
!78 = distinct !{!78, !50}
!79 = distinct !{!79, !50}
!80 = distinct !{!80, !50}
!81 = distinct !{!81, !50}
!82 = distinct !{!82, !50}
!83 = distinct !{!83, !50}
!84 = distinct !{!84, !50}
!85 = distinct !{!85, !50}
!86 = distinct !{!86, !50}
!87 = distinct !{!87, !50}
!88 = distinct !{!88, !50}
!89 = distinct !{!89, !50}
!90 = distinct !{!90, !50}
!91 = distinct !{!91, !50}
!92 = !{!93, !6, i64 32}
!93 = !{!"gs_memory_struct_type_s", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!94 = !{!95, !6, i64 504}
!95 = !{!"gx_device_rop_texture_s", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !11, i64 40, !11, i64 44, !22, i64 48, !11, i64 64, !11, i64 68, !7, i64 72, !7, i64 80, !11, i64 96, !7, i64 100, !7, i64 108, !7, i64 116, !7, i64 124, !13, i64 144, !13, i64 152, !11, i64 160, !23, i64 168, !24, i64 192, !6, i64 488, !11, i64 496, !6, i64 504}
!96 = !{!93, !6, i64 40}
!97 = !{i64 0, i64 4, !10, i64 8, i64 8, !5, i64 16, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 8, !5, i64 40, i64 4, !10, i64 44, i64 4, !10, i64 48, i64 4, !10, i64 52, i64 4, !10, i64 56, i64 2, !14, i64 58, i64 2, !14, i64 60, i64 2, !14, i64 62, i64 2, !14, i64 64, i64 4, !10, i64 68, i64 4, !10, i64 72, i64 8, !56, i64 80, i64 16, !56, i64 96, i64 4, !10, i64 100, i64 8, !56, i64 108, i64 8, !56, i64 116, i64 8, !56, i64 124, i64 16, !56, i64 144, i64 8, !12, i64 152, i64 8, !12, i64 160, i64 4, !10, i64 168, i64 8, !5, i64 176, i64 8, !5, i64 184, i64 8, !5, i64 192, i64 8, !5, i64 200, i64 8, !5, i64 208, i64 8, !5, i64 216, i64 8, !5, i64 224, i64 8, !5, i64 232, i64 8, !5, i64 240, i64 8, !5, i64 248, i64 8, !5, i64 256, i64 8, !5, i64 264, i64 8, !5, i64 272, i64 8, !5, i64 280, i64 8, !5, i64 288, i64 8, !5, i64 296, i64 8, !5, i64 304, i64 8, !5, i64 312, i64 8, !5, i64 320, i64 8, !5, i64 328, i64 8, !5, i64 336, i64 8, !5, i64 344, i64 8, !5, i64 352, i64 8, !5, i64 360, i64 8, !5, i64 368, i64 8, !5, i64 376, i64 8, !5, i64 384, i64 8, !5, i64 392, i64 8, !5, i64 400, i64 8, !5, i64 408, i64 8, !5, i64 416, i64 8, !5, i64 424, i64 8, !5, i64 432, i64 8, !5, i64 440, i64 8, !5, i64 448, i64 8, !5, i64 456, i64 8, !5, i64 464, i64 8, !5, i64 472, i64 8, !5, i64 480, i64 8, !5, i64 488, i64 8, !5, i64 496, i64 4, !10, i64 504, i64 8, !5}
!98 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 2, !14, i64 10, i64 2, !14, i64 12, i64 2, !14, i64 14, i64 2, !14}
!99 = !{!95, !6, i64 488}
!100 = !{!95, !11, i64 496}
!101 = !{!102, !11, i64 40}
!102 = !{!"gx_rop_source_s", !6, i64 0, !11, i64 8, !11, i64 12, !13, i64 16, !7, i64 24, !11, i64 40}
!103 = !{!104, !6, i64 0}
!104 = !{!"gx_device_color_s", !6, i64 0, !7, i64 8, !18, i64 48, !105, i64 56}
!105 = !{!"_mask", !106, i64 0, !13, i64 24, !6, i64 32}
!106 = !{!"gs_client_color_s", !107, i64 0, !6, i64 16}
!107 = !{!"gs_paint_color_s", !7, i64 0}
!108 = !{!109, !6, i64 8}
!109 = !{!"gx_device_color_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!110 = !{!102, !6, i64 0}
!111 = !{!102, !11, i64 8}
!112 = !{!102, !11, i64 12}
!113 = !{!102, !13, i64 16}
