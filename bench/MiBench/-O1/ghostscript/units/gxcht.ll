; ModuleID = 'gxcht.c'
source_filename = "gxcht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gx_rop_source_s = type { ptr, i32, i32, i64, [2 x i64], i32 }
%struct.gx_strip_bitmap_s = type { ptr, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, ptr, i32, [4 x i32], i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.rc_header_s = type { i64, ptr, ptr }
%struct.gx_ht_cache_s = type { ptr, i32, ptr, i32, %struct.gx_ht_order_s, i32, i32, i64 }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32 }

@gx_dc_procs_ht_colored = dso_local constant %struct.gx_device_color_procs_s { ptr @gx_dc_ht_colored_load, ptr @gx_dc_ht_colored_fill_rectangle, ptr @gx_dc_default_fill_masked, ptr @dc_ht_colored_enum_ptrs, ptr @dc_ht_colored_reloc_ptrs }, align 8
@gx_dc_type_ht_colored = dso_local local_unnamed_addr global ptr @gx_dc_procs_ht_colored, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@gx_rop_no_source_0 = external constant %struct.gx_rop_source_s, align 8
@set_ht_colors.no_bitmap_data = internal constant [8 x i64] zeroinitializer, align 16
@set_ht_colors.no_bitmap = internal global %struct.gx_strip_bitmap_s { ptr null, i32 8, %struct.gs_int_point_s { i32 64, i32 8 }, i64 0, i16 1, i16 1, i16 0, i16 0 }, align 8
@fc_color_quo = external local_unnamed_addr global [8 x ptr], align 16
@expand_8x1_to_8x4 = internal unnamed_addr constant [256 x i32] [i32 0, i32 1, i32 16, i32 17, i32 256, i32 257, i32 272, i32 273, i32 4096, i32 4097, i32 4112, i32 4113, i32 4352, i32 4353, i32 4368, i32 4369, i32 65536, i32 65537, i32 65552, i32 65553, i32 65792, i32 65793, i32 65808, i32 65809, i32 69632, i32 69633, i32 69648, i32 69649, i32 69888, i32 69889, i32 69904, i32 69905, i32 1048576, i32 1048577, i32 1048592, i32 1048593, i32 1048832, i32 1048833, i32 1048848, i32 1048849, i32 1052672, i32 1052673, i32 1052688, i32 1052689, i32 1052928, i32 1052929, i32 1052944, i32 1052945, i32 1114112, i32 1114113, i32 1114128, i32 1114129, i32 1114368, i32 1114369, i32 1114384, i32 1114385, i32 1118208, i32 1118209, i32 1118224, i32 1118225, i32 1118464, i32 1118465, i32 1118480, i32 1118481, i32 16777216, i32 16777217, i32 16777232, i32 16777233, i32 16777472, i32 16777473, i32 16777488, i32 16777489, i32 16781312, i32 16781313, i32 16781328, i32 16781329, i32 16781568, i32 16781569, i32 16781584, i32 16781585, i32 16842752, i32 16842753, i32 16842768, i32 16842769, i32 16843008, i32 16843009, i32 16843024, i32 16843025, i32 16846848, i32 16846849, i32 16846864, i32 16846865, i32 16847104, i32 16847105, i32 16847120, i32 16847121, i32 17825792, i32 17825793, i32 17825808, i32 17825809, i32 17826048, i32 17826049, i32 17826064, i32 17826065, i32 17829888, i32 17829889, i32 17829904, i32 17829905, i32 17830144, i32 17830145, i32 17830160, i32 17830161, i32 17891328, i32 17891329, i32 17891344, i32 17891345, i32 17891584, i32 17891585, i32 17891600, i32 17891601, i32 17895424, i32 17895425, i32 17895440, i32 17895441, i32 17895680, i32 17895681, i32 17895696, i32 17895697, i32 268435456, i32 268435457, i32 268435472, i32 268435473, i32 268435712, i32 268435713, i32 268435728, i32 268435729, i32 268439552, i32 268439553, i32 268439568, i32 268439569, i32 268439808, i32 268439809, i32 268439824, i32 268439825, i32 268500992, i32 268500993, i32 268501008, i32 268501009, i32 268501248, i32 268501249, i32 268501264, i32 268501265, i32 268505088, i32 268505089, i32 268505104, i32 268505105, i32 268505344, i32 268505345, i32 268505360, i32 268505361, i32 269484032, i32 269484033, i32 269484048, i32 269484049, i32 269484288, i32 269484289, i32 269484304, i32 269484305, i32 269488128, i32 269488129, i32 269488144, i32 269488145, i32 269488384, i32 269488385, i32 269488400, i32 269488401, i32 269549568, i32 269549569, i32 269549584, i32 269549585, i32 269549824, i32 269549825, i32 269549840, i32 269549841, i32 269553664, i32 269553665, i32 269553680, i32 269553681, i32 269553920, i32 269553921, i32 269553936, i32 269553937, i32 285212672, i32 285212673, i32 285212688, i32 285212689, i32 285212928, i32 285212929, i32 285212944, i32 285212945, i32 285216768, i32 285216769, i32 285216784, i32 285216785, i32 285217024, i32 285217025, i32 285217040, i32 285217041, i32 285278208, i32 285278209, i32 285278224, i32 285278225, i32 285278464, i32 285278465, i32 285278480, i32 285278481, i32 285282304, i32 285282305, i32 285282320, i32 285282321, i32 285282560, i32 285282561, i32 285282576, i32 285282577, i32 286261248, i32 286261249, i32 286261264, i32 286261265, i32 286261504, i32 286261505, i32 286261520, i32 286261521, i32 286265344, i32 286265345, i32 286265360, i32 286265361, i32 286265600, i32 286265601, i32 286265616, i32 286265617, i32 286326784, i32 286326785, i32 286326800, i32 286326801, i32 286327040, i32 286327041, i32 286327056, i32 286327057, i32 286330880, i32 286330881, i32 286330896, i32 286330897, i32 286331136, i32 286331137, i32 286331152, i32 286331153], align 16

; Function Attrs: nounwind uwtable
define internal noundef i32 @gx_dc_ht_colored_load(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, i32 %3) #0 {
  %5 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !23
  %11 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %10, i64 0, i32 4, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !24
  %13 = getelementptr inbounds %struct.gx_ht_order_s, ptr %8, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !26
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  tail call void @gx_ht_init_cache(ptr noundef %10, ptr noundef %8) #7
  br label %17

17:                                               ; preds = %16, %4
  %18 = getelementptr inbounds %struct.gx_ht_order_s, ptr %8, i64 0, i32 12
  store ptr %10, ptr %18, align 8, !tbaa !27
  %19 = getelementptr inbounds %struct.gx_ht_order_s, ptr %6, i64 0, i32 12
  store ptr %10, ptr %19, align 8, !tbaa !28
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_ht_colored_fill_rectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) #0 {
  %9 = alloca [256 x i64], align 16
  %10 = alloca %struct.gx_strip_bitmap_s, align 8
  %11 = alloca %struct.gx_rop_source_s, align 8
  %12 = alloca [16 x i64], align 16
  %13 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #7
  %14 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !29
  %16 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 7
  %17 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 7, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !30
  %19 = load i32, ptr %16, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #7
  %20 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %15, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !36
  %22 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %15, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !37
  %24 = icmp slt i32 %3, 1
  %25 = icmp slt i32 %4, 1
  %26 = or i1 %24, %25
  br i1 %26, label %621, label %27

27:                                               ; preds = %8
  store ptr %9, ptr %10, align 8, !tbaa !38
  %28 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %15, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !18
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gx_ht_order_s, ptr %15, i64 0, i32 12
  %33 = load ptr, ptr %32, align 8, !tbaa !28
  br label %55

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %15, i64 0, i32 5
  %36 = load i32, ptr %35, align 4, !tbaa !41
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %29, i64 %37, i32 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %15, i64 0, i32 5, i64 1
  %41 = load i32, ptr %40, align 4, !tbaa !41
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %29, i64 %42, i32 0, i32 12
  %44 = load ptr, ptr %43, align 8, !tbaa !42
  %45 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %15, i64 0, i32 5, i64 2
  %46 = load i32, ptr %45, align 4, !tbaa !41
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %29, i64 %47, i32 0, i32 12
  %49 = load ptr, ptr %48, align 8, !tbaa !42
  %50 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %15, i64 0, i32 5, i64 3
  %51 = load i32, ptr %50, align 4, !tbaa !41
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %29, i64 %52, i32 0, i32 12
  %54 = load ptr, ptr %53, align 8, !tbaa !42
  br label %55

55:                                               ; preds = %34, %31
  %56 = phi ptr [ %33, %31 ], [ %54, %34 ]
  %57 = phi ptr [ %33, %31 ], [ %49, %34 ]
  %58 = phi ptr [ %33, %31 ], [ %44, %34 ]
  %59 = phi ptr [ %33, %31 ], [ %39, %34 ]
  %60 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 7, i32 5
  %61 = load i16, ptr %60, align 2, !tbaa !44
  %62 = add i16 %61, -1
  store ptr @set_ht_colors.no_bitmap_data, ptr @set_ht_colors.no_bitmap, align 8, !tbaa !38
  %63 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %64 = load i8, ptr %63, align 8, !tbaa !29
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds i8, ptr %0, i64 20
  %67 = load i32, ptr %66, align 4, !tbaa !29
  %68 = zext i16 %62 to i32
  %69 = icmp ult i16 %62, 8
  br i1 %69, label %70, label %78

70:                                               ; preds = %55
  %71 = zext nneg i16 %62 to i64
  %72 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !45
  %74 = zext i8 %64 to i64
  %75 = getelementptr inbounds i16, ptr %73, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !46
  %77 = zext i16 %76 to i32
  br label %84

78:                                               ; preds = %55
  %79 = mul nuw nsw i32 %65, 131070
  %80 = add nuw nsw i32 %79, %68
  %81 = shl nuw nsw i32 %68, 1
  %82 = udiv i32 %80, %81
  %83 = and i32 %82, 65535
  br label %84

84:                                               ; preds = %78, %70
  %85 = phi i32 [ %77, %70 ], [ %83, %78 ]
  %86 = trunc i32 %85 to i16
  %87 = icmp eq i32 %67, 0
  br i1 %87, label %109, label %88

88:                                               ; preds = %84
  br i1 %69, label %89, label %98

89:                                               ; preds = %88
  %90 = zext nneg i16 %62 to i64
  %91 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !45
  %93 = zext i8 %64 to i64
  %94 = getelementptr i16, ptr %92, i64 %93
  %95 = getelementptr i16, ptr %94, i64 1
  %96 = load i16, ptr %95, align 2, !tbaa !46
  %97 = zext i16 %96 to i32
  br label %105

98:                                               ; preds = %88
  %99 = mul nuw nsw i32 %65, 131070
  %100 = add nuw nsw i32 %68, 131070
  %101 = add nuw nsw i32 %100, %99
  %102 = shl nuw nsw i32 %68, 1
  %103 = udiv i32 %101, %102
  %104 = and i32 %103, 65535
  br label %105

105:                                              ; preds = %98, %89
  %106 = phi i32 [ %97, %89 ], [ %104, %98 ]
  %107 = trunc i32 %106 to i16
  %108 = call ptr @gx_render_ht(ptr noundef %59, i32 noundef %67) #7
  br label %109

109:                                              ; preds = %105, %84
  %110 = phi ptr [ %108, %105 ], [ @set_ht_colors.no_bitmap, %84 ]
  %111 = phi i32 [ 1, %105 ], [ 0, %84 ]
  %112 = phi i16 [ %107, %105 ], [ %86, %84 ]
  store ptr %110, ptr %13, align 16, !tbaa !45
  %113 = getelementptr inbounds i8, ptr %0, i64 17
  %114 = load i8, ptr %113, align 1, !tbaa !29
  %115 = zext i8 %114 to i32
  %116 = getelementptr inbounds i8, ptr %0, i64 24
  %117 = load i32, ptr %116, align 4, !tbaa !29
  br i1 %69, label %118, label %126

118:                                              ; preds = %109
  %119 = zext nneg i16 %62 to i64
  %120 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !45
  %122 = zext i8 %114 to i64
  %123 = getelementptr inbounds i16, ptr %121, i64 %122
  %124 = load i16, ptr %123, align 2, !tbaa !46
  %125 = zext i16 %124 to i32
  br label %132

126:                                              ; preds = %109
  %127 = mul nuw nsw i32 %115, 131070
  %128 = add nuw nsw i32 %127, %68
  %129 = shl nuw nsw i32 %68, 1
  %130 = udiv i32 %128, %129
  %131 = and i32 %130, 65535
  br label %132

132:                                              ; preds = %126, %118
  %133 = phi i32 [ %125, %118 ], [ %131, %126 ]
  %134 = trunc i32 %133 to i16
  %135 = icmp eq i32 %117, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = getelementptr inbounds ptr, ptr %13, i64 1
  store ptr @set_ht_colors.no_bitmap, ptr %137, align 8, !tbaa !45
  br label %161

138:                                              ; preds = %132
  br i1 %69, label %139, label %148

139:                                              ; preds = %138
  %140 = zext nneg i16 %62 to i64
  %141 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !45
  %143 = zext i8 %114 to i64
  %144 = getelementptr i16, ptr %142, i64 %143
  %145 = getelementptr i16, ptr %144, i64 1
  %146 = load i16, ptr %145, align 2, !tbaa !46
  %147 = zext i16 %146 to i32
  br label %155

148:                                              ; preds = %138
  %149 = mul nuw nsw i32 %115, 131070
  %150 = add nuw nsw i32 %68, 131070
  %151 = add nuw nsw i32 %150, %149
  %152 = shl nuw nsw i32 %68, 1
  %153 = udiv i32 %151, %152
  %154 = and i32 %153, 65535
  br label %155

155:                                              ; preds = %148, %139
  %156 = phi i32 [ %147, %139 ], [ %154, %148 ]
  %157 = trunc i32 %156 to i16
  %158 = call ptr @gx_render_ht(ptr noundef %58, i32 noundef %117) #7
  %159 = getelementptr inbounds ptr, ptr %13, i64 1
  store ptr %158, ptr %159, align 8, !tbaa !45
  %160 = or disjoint i32 %111, 2
  br label %161

161:                                              ; preds = %155, %136
  %162 = phi i32 [ %111, %136 ], [ %160, %155 ]
  %163 = phi i16 [ %134, %136 ], [ %157, %155 ]
  %164 = getelementptr inbounds i8, ptr %0, i64 18
  %165 = load i8, ptr %164, align 2, !tbaa !29
  %166 = zext i8 %165 to i32
  %167 = getelementptr inbounds i8, ptr %0, i64 28
  %168 = load i32, ptr %167, align 4, !tbaa !29
  br i1 %69, label %169, label %177

169:                                              ; preds = %161
  %170 = zext nneg i16 %62 to i64
  %171 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !45
  %173 = zext i8 %165 to i64
  %174 = getelementptr inbounds i16, ptr %172, i64 %173
  %175 = load i16, ptr %174, align 2, !tbaa !46
  %176 = zext i16 %175 to i32
  br label %183

177:                                              ; preds = %161
  %178 = mul nuw nsw i32 %166, 131070
  %179 = add nuw nsw i32 %178, %68
  %180 = shl nuw nsw i32 %68, 1
  %181 = udiv i32 %179, %180
  %182 = and i32 %181, 65535
  br label %183

183:                                              ; preds = %177, %169
  %184 = phi i32 [ %176, %169 ], [ %182, %177 ]
  %185 = trunc i32 %184 to i16
  %186 = icmp eq i32 %168, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = getelementptr inbounds ptr, ptr %13, i64 2
  store ptr @set_ht_colors.no_bitmap, ptr %188, align 16, !tbaa !45
  br label %212

189:                                              ; preds = %183
  br i1 %69, label %190, label %199

190:                                              ; preds = %189
  %191 = zext nneg i16 %62 to i64
  %192 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %191
  %193 = load ptr, ptr %192, align 8, !tbaa !45
  %194 = zext i8 %165 to i64
  %195 = getelementptr i16, ptr %193, i64 %194
  %196 = getelementptr i16, ptr %195, i64 1
  %197 = load i16, ptr %196, align 2, !tbaa !46
  %198 = zext i16 %197 to i32
  br label %206

199:                                              ; preds = %189
  %200 = mul nuw nsw i32 %166, 131070
  %201 = add nuw nsw i32 %68, 131070
  %202 = add nuw nsw i32 %201, %200
  %203 = shl nuw nsw i32 %68, 1
  %204 = udiv i32 %202, %203
  %205 = and i32 %204, 65535
  br label %206

206:                                              ; preds = %199, %190
  %207 = phi i32 [ %198, %190 ], [ %205, %199 ]
  %208 = trunc i32 %207 to i16
  %209 = call ptr @gx_render_ht(ptr noundef %57, i32 noundef %168) #7
  %210 = getelementptr inbounds ptr, ptr %13, i64 2
  store ptr %209, ptr %210, align 16, !tbaa !45
  %211 = or i32 %162, 4
  br label %212

212:                                              ; preds = %206, %187
  %213 = phi i32 [ %162, %187 ], [ %211, %206 ]
  %214 = phi i16 [ %185, %187 ], [ %208, %206 ]
  %215 = icmp eq i32 %19, 3
  br i1 %215, label %216, label %249

216:                                              ; preds = %212
  %217 = getelementptr inbounds i8, ptr %0, i64 36
  %218 = load i16, ptr %217, align 4, !tbaa !29
  %219 = icmp eq i16 %218, -1
  %220 = getelementptr inbounds i64, ptr %12, i64 1
  %221 = getelementptr inbounds i64, ptr %12, i64 2
  %222 = getelementptr inbounds i64, ptr %12, i64 3
  %223 = getelementptr inbounds i64, ptr %12, i64 4
  %224 = getelementptr inbounds i64, ptr %12, i64 5
  %225 = getelementptr inbounds i64, ptr %12, i64 6
  %226 = getelementptr inbounds i64, ptr %12, i64 7
  br i1 %219, label %227, label %238

227:                                              ; preds = %216
  %228 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 5
  %229 = load ptr, ptr %228, align 8, !tbaa !47
  %230 = call i64 %229(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %185) #7
  store i64 %230, ptr %12, align 16, !tbaa !48
  %231 = call i64 %229(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %134, i16 noundef zeroext %185) #7
  store i64 %231, ptr %220, align 8, !tbaa !48
  %232 = call i64 %229(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %163, i16 noundef zeroext %185) #7
  store i64 %232, ptr %221, align 16, !tbaa !48
  %233 = call i64 %229(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %163, i16 noundef zeroext %185) #7
  store i64 %233, ptr %222, align 8, !tbaa !48
  %234 = call i64 %229(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %214) #7
  store i64 %234, ptr %223, align 16, !tbaa !48
  %235 = call i64 %229(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %134, i16 noundef zeroext %214) #7
  store i64 %235, ptr %224, align 8, !tbaa !48
  %236 = call i64 %229(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %163, i16 noundef zeroext %214) #7
  store i64 %236, ptr %225, align 16, !tbaa !48
  %237 = call i64 %229(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %163, i16 noundef zeroext %214) #7
  store i64 %237, ptr %226, align 8, !tbaa !48
  br label %401

238:                                              ; preds = %216
  %239 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 18
  %240 = load ptr, ptr %239, align 8, !tbaa !49
  %241 = call i64 %240(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %185, i16 noundef zeroext %218) #7
  store i64 %241, ptr %12, align 16, !tbaa !48
  %242 = call i64 %240(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %134, i16 noundef zeroext %185, i16 noundef zeroext %218) #7
  store i64 %242, ptr %220, align 8, !tbaa !48
  %243 = call i64 %240(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %163, i16 noundef zeroext %185, i16 noundef zeroext %218) #7
  store i64 %243, ptr %221, align 16, !tbaa !48
  %244 = call i64 %240(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %163, i16 noundef zeroext %185, i16 noundef zeroext %218) #7
  store i64 %244, ptr %222, align 8, !tbaa !48
  %245 = call i64 %240(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %214, i16 noundef zeroext %218) #7
  store i64 %245, ptr %223, align 16, !tbaa !48
  %246 = call i64 %240(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %134, i16 noundef zeroext %214, i16 noundef zeroext %218) #7
  store i64 %246, ptr %224, align 8, !tbaa !48
  %247 = call i64 %240(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %163, i16 noundef zeroext %214, i16 noundef zeroext %218) #7
  store i64 %247, ptr %225, align 16, !tbaa !48
  %248 = call i64 %240(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %163, i16 noundef zeroext %214, i16 noundef zeroext %218) #7
  store i64 %248, ptr %226, align 8, !tbaa !48
  br label %401

249:                                              ; preds = %212
  %250 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 15
  %251 = load ptr, ptr %250, align 8, !tbaa !50
  %252 = getelementptr inbounds i8, ptr %0, i64 19
  %253 = load i8, ptr %252, align 1, !tbaa !29
  %254 = zext i8 %253 to i32
  %255 = getelementptr inbounds i8, ptr %0, i64 32
  %256 = load i32, ptr %255, align 4, !tbaa !29
  br i1 %69, label %257, label %264

257:                                              ; preds = %249
  %258 = zext nneg i16 %62 to i64
  %259 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %258
  %260 = load ptr, ptr %259, align 8, !tbaa !45
  %261 = zext i8 %253 to i64
  %262 = getelementptr inbounds i16, ptr %260, i64 %261
  %263 = load i16, ptr %262, align 2, !tbaa !46
  br label %270

264:                                              ; preds = %249
  %265 = mul nuw nsw i32 %254, 131070
  %266 = add nuw nsw i32 %265, %68
  %267 = shl nuw nsw i32 %68, 1
  %268 = udiv i32 %266, %267
  %269 = trunc i32 %268 to i16
  br label %270

270:                                              ; preds = %264, %257
  %271 = phi i16 [ %263, %257 ], [ %269, %264 ]
  %272 = icmp eq i32 %256, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = getelementptr inbounds ptr, ptr %13, i64 3
  store ptr @set_ht_colors.no_bitmap, ptr %274, align 8, !tbaa !45
  br label %296

275:                                              ; preds = %270
  br i1 %69, label %276, label %284

276:                                              ; preds = %275
  %277 = zext nneg i16 %62 to i64
  %278 = getelementptr inbounds [8 x ptr], ptr @fc_color_quo, i64 0, i64 %277
  %279 = load ptr, ptr %278, align 8, !tbaa !45
  %280 = zext i8 %253 to i64
  %281 = getelementptr i16, ptr %279, i64 %280
  %282 = getelementptr i16, ptr %281, i64 1
  %283 = load i16, ptr %282, align 2, !tbaa !46
  br label %291

284:                                              ; preds = %275
  %285 = mul nuw nsw i32 %254, 131070
  %286 = add nuw nsw i32 %68, 131070
  %287 = add nuw nsw i32 %286, %285
  %288 = shl nuw nsw i32 %68, 1
  %289 = udiv i32 %287, %288
  %290 = trunc i32 %289 to i16
  br label %291

291:                                              ; preds = %284, %276
  %292 = phi i16 [ %283, %276 ], [ %290, %284 ]
  %293 = call ptr @gx_render_ht(ptr noundef %56, i32 noundef %256) #7
  %294 = getelementptr inbounds ptr, ptr %13, i64 3
  store ptr %293, ptr %294, align 8, !tbaa !45
  %295 = or i32 %213, 8
  br label %296

296:                                              ; preds = %291, %273
  %297 = phi i32 [ %213, %273 ], [ %295, %291 ]
  %298 = phi i16 [ %271, %273 ], [ %292, %291 ]
  switch i32 %297, label %399 [
    i32 15, label %299
    i32 7, label %316
    i32 3, label %328
    i32 1, label %336
    i32 14, label %339
    i32 6, label %348
    i32 2, label %356
    i32 13, label %359
    i32 5, label %368
    i32 12, label %372
    i32 4, label %377
    i32 11, label %380
    i32 10, label %388
    i32 9, label %392
    i32 8, label %396
  ]

299:                                              ; preds = %296
  %300 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %185, i16 noundef zeroext %298) #7
  %301 = getelementptr inbounds i64, ptr %12, i64 8
  store i64 %300, ptr %301, align 16, !tbaa !48
  %302 = call i64 %251(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %134, i16 noundef zeroext %185, i16 noundef zeroext %298) #7
  %303 = getelementptr inbounds i64, ptr %12, i64 9
  store i64 %302, ptr %303, align 8, !tbaa !48
  %304 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %163, i16 noundef zeroext %185, i16 noundef zeroext %298) #7
  %305 = getelementptr inbounds i64, ptr %12, i64 10
  store i64 %304, ptr %305, align 16, !tbaa !48
  %306 = call i64 %251(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %163, i16 noundef zeroext %185, i16 noundef zeroext %298) #7
  %307 = getelementptr inbounds i64, ptr %12, i64 11
  store i64 %306, ptr %307, align 8, !tbaa !48
  %308 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %214, i16 noundef zeroext %298) #7
  %309 = getelementptr inbounds i64, ptr %12, i64 12
  store i64 %308, ptr %309, align 16, !tbaa !48
  %310 = call i64 %251(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %134, i16 noundef zeroext %214, i16 noundef zeroext %298) #7
  %311 = getelementptr inbounds i64, ptr %12, i64 13
  store i64 %310, ptr %311, align 8, !tbaa !48
  %312 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %163, i16 noundef zeroext %214, i16 noundef zeroext %298) #7
  %313 = getelementptr inbounds i64, ptr %12, i64 14
  store i64 %312, ptr %313, align 16, !tbaa !48
  %314 = call i64 %251(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %163, i16 noundef zeroext %214, i16 noundef zeroext %298) #7
  %315 = getelementptr inbounds i64, ptr %12, i64 15
  store i64 %314, ptr %315, align 8, !tbaa !48
  br label %316

316:                                              ; preds = %299, %296
  %317 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %214, i16 noundef zeroext %271) #7
  %318 = getelementptr inbounds i64, ptr %12, i64 4
  store i64 %317, ptr %318, align 16, !tbaa !48
  %319 = call i64 %251(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %134, i16 noundef zeroext %214, i16 noundef zeroext %271) #7
  %320 = getelementptr inbounds i64, ptr %12, i64 5
  store i64 %319, ptr %320, align 8, !tbaa !48
  %321 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %163, i16 noundef zeroext %214, i16 noundef zeroext %271) #7
  %322 = getelementptr inbounds i64, ptr %12, i64 6
  store i64 %321, ptr %322, align 16, !tbaa !48
  %323 = call i64 %251(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %163, i16 noundef zeroext %214, i16 noundef zeroext %271) #7
  br label %324

324:                                              ; preds = %316, %380
  %325 = phi i64 [ 11, %380 ], [ 7, %316 ]
  %326 = phi i64 [ %387, %380 ], [ %323, %316 ]
  %327 = getelementptr inbounds i64, ptr %12, i64 %325
  store i64 %326, ptr %327, align 8, !tbaa !48
  br label %328

328:                                              ; preds = %324, %296
  %329 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %163, i16 noundef zeroext %185, i16 noundef zeroext %271) #7
  %330 = getelementptr inbounds i64, ptr %12, i64 2
  store i64 %329, ptr %330, align 16, !tbaa !48
  %331 = call i64 %251(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %163, i16 noundef zeroext %185, i16 noundef zeroext %271) #7
  br label %332

332:                                              ; preds = %328, %368, %392
  %333 = phi i64 [ 9, %392 ], [ 5, %368 ], [ 3, %328 ]
  %334 = phi i64 [ %395, %392 ], [ %371, %368 ], [ %331, %328 ]
  %335 = getelementptr inbounds i64, ptr %12, i64 %333
  store i64 %334, ptr %335, align 8, !tbaa !48
  br label %336

336:                                              ; preds = %332, %296
  %337 = call i64 %251(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %134, i16 noundef zeroext %185, i16 noundef zeroext %271) #7
  %338 = getelementptr inbounds i64, ptr %12, i64 1
  store i64 %337, ptr %338, align 8, !tbaa !48
  br label %399

339:                                              ; preds = %296
  %340 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %185, i16 noundef zeroext %298) #7
  %341 = getelementptr inbounds i64, ptr %12, i64 8
  store i64 %340, ptr %341, align 16, !tbaa !48
  %342 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %163, i16 noundef zeroext %185, i16 noundef zeroext %298) #7
  %343 = getelementptr inbounds i64, ptr %12, i64 10
  store i64 %342, ptr %343, align 16, !tbaa !48
  %344 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %214, i16 noundef zeroext %298) #7
  %345 = getelementptr inbounds i64, ptr %12, i64 12
  store i64 %344, ptr %345, align 16, !tbaa !48
  %346 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %163, i16 noundef zeroext %214, i16 noundef zeroext %298) #7
  %347 = getelementptr inbounds i64, ptr %12, i64 14
  store i64 %346, ptr %347, align 16, !tbaa !48
  br label %348

348:                                              ; preds = %339, %296
  %349 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %214, i16 noundef zeroext %271) #7
  %350 = getelementptr inbounds i64, ptr %12, i64 4
  store i64 %349, ptr %350, align 16, !tbaa !48
  %351 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %163, i16 noundef zeroext %214, i16 noundef zeroext %271) #7
  br label %352

352:                                              ; preds = %348, %388
  %353 = phi i64 [ 10, %388 ], [ 6, %348 ]
  %354 = phi i64 [ %391, %388 ], [ %351, %348 ]
  %355 = getelementptr inbounds i64, ptr %12, i64 %353
  store i64 %354, ptr %355, align 16, !tbaa !48
  br label %356

356:                                              ; preds = %352, %296
  %357 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %163, i16 noundef zeroext %185, i16 noundef zeroext %271) #7
  %358 = getelementptr inbounds i64, ptr %12, i64 2
  store i64 %357, ptr %358, align 16, !tbaa !48
  br label %399

359:                                              ; preds = %296
  %360 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %185, i16 noundef zeroext %298) #7
  %361 = getelementptr inbounds i64, ptr %12, i64 8
  store i64 %360, ptr %361, align 16, !tbaa !48
  %362 = call i64 %251(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %134, i16 noundef zeroext %185, i16 noundef zeroext %298) #7
  %363 = getelementptr inbounds i64, ptr %12, i64 9
  store i64 %362, ptr %363, align 8, !tbaa !48
  %364 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %214, i16 noundef zeroext %298) #7
  %365 = getelementptr inbounds i64, ptr %12, i64 12
  store i64 %364, ptr %365, align 16, !tbaa !48
  %366 = call i64 %251(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %134, i16 noundef zeroext %214, i16 noundef zeroext %298) #7
  %367 = getelementptr inbounds i64, ptr %12, i64 13
  store i64 %366, ptr %367, align 8, !tbaa !48
  br label %368

368:                                              ; preds = %359, %296
  %369 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %214, i16 noundef zeroext %271) #7
  %370 = getelementptr inbounds i64, ptr %12, i64 4
  store i64 %369, ptr %370, align 16, !tbaa !48
  %371 = call i64 %251(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %134, i16 noundef zeroext %214, i16 noundef zeroext %271) #7
  br label %332

372:                                              ; preds = %296
  %373 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %185, i16 noundef zeroext %298) #7
  %374 = getelementptr inbounds i64, ptr %12, i64 8
  store i64 %373, ptr %374, align 16, !tbaa !48
  %375 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %214, i16 noundef zeroext %298) #7
  %376 = getelementptr inbounds i64, ptr %12, i64 12
  store i64 %375, ptr %376, align 16, !tbaa !48
  br label %377

377:                                              ; preds = %372, %296
  %378 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %214, i16 noundef zeroext %271) #7
  %379 = getelementptr inbounds i64, ptr %12, i64 4
  store i64 %378, ptr %379, align 16, !tbaa !48
  br label %399

380:                                              ; preds = %296
  %381 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %185, i16 noundef zeroext %298) #7
  %382 = getelementptr inbounds i64, ptr %12, i64 8
  store i64 %381, ptr %382, align 16, !tbaa !48
  %383 = call i64 %251(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %134, i16 noundef zeroext %185, i16 noundef zeroext %298) #7
  %384 = getelementptr inbounds i64, ptr %12, i64 9
  store i64 %383, ptr %384, align 8, !tbaa !48
  %385 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %163, i16 noundef zeroext %185, i16 noundef zeroext %298) #7
  %386 = getelementptr inbounds i64, ptr %12, i64 10
  store i64 %385, ptr %386, align 16, !tbaa !48
  %387 = call i64 %251(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %163, i16 noundef zeroext %185, i16 noundef zeroext %298) #7
  br label %324

388:                                              ; preds = %296
  %389 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %185, i16 noundef zeroext %298) #7
  %390 = getelementptr inbounds i64, ptr %12, i64 8
  store i64 %389, ptr %390, align 16, !tbaa !48
  %391 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %163, i16 noundef zeroext %185, i16 noundef zeroext %298) #7
  br label %352

392:                                              ; preds = %296
  %393 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %185, i16 noundef zeroext %298) #7
  %394 = getelementptr inbounds i64, ptr %12, i64 8
  store i64 %393, ptr %394, align 16, !tbaa !48
  %395 = call i64 %251(ptr noundef %5, i16 noundef zeroext %112, i16 noundef zeroext %134, i16 noundef zeroext %185, i16 noundef zeroext %298) #7
  br label %332

396:                                              ; preds = %296
  %397 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %185, i16 noundef zeroext %298) #7
  %398 = getelementptr inbounds i64, ptr %12, i64 8
  store i64 %397, ptr %398, align 16, !tbaa !48
  br label %399

399:                                              ; preds = %396, %377, %356, %336, %296
  %400 = call i64 %251(ptr noundef %5, i16 noundef zeroext %86, i16 noundef zeroext %134, i16 noundef zeroext %185, i16 noundef zeroext %271) #7
  store i64 %400, ptr %12, align 16, !tbaa !48
  br label %401

401:                                              ; preds = %227, %238, %399
  %402 = icmp slt i32 %21, %3
  %403 = icmp slt i32 %23, %4
  %404 = select i1 %402, i1 true, i1 %403
  br i1 %404, label %405, label %504

405:                                              ; preds = %401
  %406 = mul nsw i32 %21, %18
  %407 = add nsw i32 %406, 63
  %408 = ashr i32 %407, 3
  %409 = and i32 %408, -8
  %410 = udiv i32 2048, %23
  %411 = icmp ugt i32 %409, %410
  br i1 %411, label %504, label %412

412:                                              ; preds = %405
  %413 = or i32 %2, %1
  %414 = icmp slt i32 %413, 0
  br i1 %414, label %415, label %422

415:                                              ; preds = %412
  %416 = call i32 @llvm.smin.i32(i32 %1, i32 0)
  %417 = add nsw i32 %416, %3
  %418 = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %419 = call i32 @llvm.smin.i32(i32 %2, i32 0)
  %420 = add nsw i32 %419, %4
  %421 = call i32 @llvm.smax.i32(i32 %2, i32 0)
  br label %422

422:                                              ; preds = %415, %412
  %423 = phi i32 [ %4, %412 ], [ %420, %415 ]
  %424 = phi i32 [ %3, %412 ], [ %417, %415 ]
  %425 = phi i32 [ %2, %412 ], [ %421, %415 ]
  %426 = phi i32 [ %1, %412 ], [ %418, %415 ]
  %427 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 8
  %428 = load i32, ptr %427, align 8, !tbaa !51
  %429 = sub nsw i32 %428, %424
  %430 = icmp sgt i32 %426, %429
  %431 = sub nsw i32 %428, %426
  %432 = select i1 %430, i32 %431, i32 %424
  %433 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 9
  %434 = load i32, ptr %433, align 4, !tbaa !52
  %435 = sub nsw i32 %434, %423
  %436 = icmp sgt i32 %425, %435
  %437 = sub nsw i32 %434, %425
  %438 = select i1 %436, i32 %437, i32 %423
  %439 = icmp slt i32 %432, 1
  %440 = icmp slt i32 %438, 1
  %441 = select i1 %439, i1 true, i1 %440
  br i1 %441, label %621, label %442

442:                                              ; preds = %422
  %443 = icmp sgt i32 %432, %21
  %444 = icmp sgt i32 %438, %23
  %445 = select i1 %443, i1 true, i1 %444
  br i1 %445, label %446, label %504

446:                                              ; preds = %442
  %447 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %10, i64 0, i32 1
  store i32 %409, ptr %447, align 8, !tbaa !53
  %448 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %10, i64 0, i32 2
  store i32 %21, ptr %448, align 4, !tbaa !54
  %449 = trunc i32 %21 to i16
  %450 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %10, i64 0, i32 4
  store i16 %449, ptr %450, align 8, !tbaa !55
  %451 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %10, i64 0, i32 2, i32 1
  store i32 %23, ptr %451, align 8, !tbaa !56
  %452 = trunc i32 %23 to i16
  %453 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %10, i64 0, i32 5
  store i16 %452, ptr %453, align 2, !tbaa !57
  %454 = call i64 @gs_next_ids(i32 noundef 1) #7
  %455 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %10, i64 0, i32 3
  store i64 %454, ptr %455, align 8, !tbaa !58
  %456 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %10, i64 0, i32 7
  store i16 0, ptr %456, align 2, !tbaa !59
  %457 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %10, i64 0, i32 6
  store i16 0, ptr %457, align 4, !tbaa !60
  call fastcc void @set_color_ht(ptr noundef nonnull %10, i32 noundef 0, i32 noundef 0, i32 noundef %21, i32 noundef %23, i32 noundef %18, i32 noundef %19, ptr noundef nonnull %12, ptr noundef nonnull %13)
  %458 = icmp eq ptr %7, null
  %459 = and i32 %6, 51
  %460 = icmp eq i32 %459, 48
  %461 = and i1 %458, %460
  br i1 %461, label %462, label %470

462:                                              ; preds = %446
  %463 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 34
  %464 = load ptr, ptr %463, align 8, !tbaa !61
  %465 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 2
  %466 = load i32, ptr %465, align 8, !tbaa !62
  %467 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 2, i32 1
  %468 = load i32, ptr %467, align 4, !tbaa !67
  %469 = call i32 %464(ptr noundef %5, ptr noundef nonnull %10, i32 noundef %426, i32 noundef %425, i32 noundef %432, i32 noundef %438, i64 noundef -1, i64 noundef -1, i32 noundef %466, i32 noundef %468) #7
  br label %621

470:                                              ; preds = %446
  br i1 %458, label %471, label %479

471:                                              ; preds = %470
  %472 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 5
  %473 = load ptr, ptr %472, align 8, !tbaa !47
  %474 = call i64 %473(ptr noundef %5, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0) #7
  %475 = icmp eq i64 %474, 0
  br i1 %475, label %479, label %476

476:                                              ; preds = %471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) @gx_rop_no_source_0, i64 48, i1 false), !tbaa.struct !68
  %477 = getelementptr inbounds %struct.gx_rop_source_s, ptr %11, i64 0, i32 4
  %478 = getelementptr inbounds %struct.gx_rop_source_s, ptr %11, i64 0, i32 4, i64 1
  store i64 %474, ptr %478, align 8, !tbaa !48
  store i64 %474, ptr %477, align 8, !tbaa !48
  br label %479

479:                                              ; preds = %476, %471, %470
  %480 = phi ptr [ %7, %470 ], [ %11, %476 ], [ @gx_rop_no_source_0, %471 ]
  %481 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 35
  %482 = load ptr, ptr %481, align 8, !tbaa !69
  %483 = load ptr, ptr %480, align 8, !tbaa !70
  %484 = getelementptr inbounds %struct.gx_rop_source_s, ptr %480, i64 0, i32 1
  %485 = load i32, ptr %484, align 8, !tbaa !72
  %486 = getelementptr inbounds %struct.gx_rop_source_s, ptr %480, i64 0, i32 2
  %487 = load i32, ptr %486, align 4, !tbaa !73
  %488 = getelementptr inbounds %struct.gx_rop_source_s, ptr %480, i64 0, i32 3
  %489 = load i64, ptr %488, align 8, !tbaa !74
  %490 = getelementptr inbounds %struct.gx_rop_source_s, ptr %480, i64 0, i32 5
  %491 = load i32, ptr %490, align 8, !tbaa !75
  %492 = icmp eq i32 %491, 0
  %493 = getelementptr inbounds %struct.gx_rop_source_s, ptr %480, i64 0, i32 4
  %494 = select i1 %492, ptr null, ptr %493
  %495 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 2
  %496 = load i32, ptr %495, align 8, !tbaa !62
  %497 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 2, i32 1
  %498 = load i32, ptr %497, align 4, !tbaa !67
  %499 = shl i32 %6, 2
  %500 = and i32 %499, 204
  %501 = and i32 %6, -717
  %502 = or disjoint i32 %500, %501
  %503 = call i32 %482(ptr noundef %5, ptr noundef %483, i32 noundef %485, i32 noundef %487, i64 noundef %489, ptr noundef %494, ptr noundef nonnull %10, ptr noundef null, i32 noundef %426, i32 noundef %425, i32 noundef %432, i32 noundef %438, i32 noundef %496, i32 noundef %498, i32 noundef %502) #7
  br label %621

504:                                              ; preds = %442, %401, %405
  %505 = phi i32 [ %4, %405 ], [ %4, %401 ], [ %438, %442 ]
  %506 = phi i32 [ %3, %405 ], [ %3, %401 ], [ %432, %442 ]
  %507 = phi i32 [ %2, %405 ], [ %2, %401 ], [ %425, %442 ]
  %508 = phi i32 [ %1, %405 ], [ %1, %401 ], [ %426, %442 ]
  %509 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %10, i64 0, i32 3
  store i64 0, ptr %509, align 8, !tbaa !58
  %510 = mul nsw i32 %506, %18
  %511 = add i32 %510, 63
  %512 = lshr i32 %511, 3
  %513 = and i32 %512, 536870904
  %514 = icmp ugt i32 %513, 2048
  br i1 %514, label %515, label %538

515:                                              ; preds = %504
  %516 = call i32 @llvm.smin.i32(i32 %508, i32 0)
  %517 = add nsw i32 %516, %506
  %518 = call i32 @llvm.smax.i32(i32 %508, i32 0)
  %519 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 8
  %520 = load i32, ptr %519, align 8, !tbaa !51
  %521 = sub nsw i32 %520, %517
  %522 = icmp sgt i32 %518, %521
  %523 = sub nsw i32 %520, %518
  %524 = select i1 %522, i32 %523, i32 %517
  %525 = icmp slt i32 %524, 1
  br i1 %525, label %621, label %526

526:                                              ; preds = %515
  %527 = mul nsw i32 %524, %18
  %528 = add i32 %527, 63
  %529 = lshr i32 %528, 3
  %530 = and i32 %529, 536870904
  %531 = icmp ugt i32 %530, 2048
  br i1 %531, label %532, label %538

532:                                              ; preds = %526
  %533 = udiv i32 16384, %18
  %534 = mul nsw i32 %533, %18
  %535 = add i32 %534, 63
  %536 = lshr i32 %535, 3
  %537 = and i32 %536, 536870904
  br label %545

538:                                              ; preds = %526, %504
  %539 = phi i32 [ %530, %526 ], [ %513, %504 ]
  %540 = phi i32 [ %527, %526 ], [ %510, %504 ]
  %541 = phi i32 [ %524, %526 ], [ %506, %504 ]
  %542 = phi i32 [ %518, %526 ], [ %508, %504 ]
  %543 = udiv i32 2048, %539
  %544 = call i32 @llvm.smin.i32(i32 %543, i32 %505)
  br label %545

545:                                              ; preds = %538, %532
  %546 = phi i32 [ %537, %532 ], [ %539, %538 ]
  %547 = phi i32 [ %534, %532 ], [ %540, %538 ]
  %548 = phi i32 [ %533, %532 ], [ %541, %538 ]
  %549 = phi i32 [ 1, %532 ], [ %544, %538 ]
  %550 = phi i32 [ %524, %532 ], [ %541, %538 ]
  %551 = phi i32 [ %518, %532 ], [ %542, %538 ]
  %552 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %10, i64 0, i32 1
  store i32 %546, ptr %552, align 8, !tbaa !53
  %553 = udiv i32 %547, %18
  %554 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %10, i64 0, i32 2
  store i32 %553, ptr %554, align 4, !tbaa !54
  %555 = trunc i32 %553 to i16
  %556 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %10, i64 0, i32 4
  store i16 %555, ptr %556, align 8, !tbaa !55
  %557 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %10, i64 0, i32 7
  store i16 0, ptr %557, align 2, !tbaa !59
  %558 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %10, i64 0, i32 6
  store i16 0, ptr %558, align 4, !tbaa !60
  %559 = icmp eq i32 %550, 0
  br i1 %559, label %621, label %560

560:                                              ; preds = %545
  %561 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %10, i64 0, i32 2, i32 1
  %562 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %10, i64 0, i32 5
  %563 = and i32 %6, 51
  %564 = icmp eq i32 %563, 48
  %565 = lshr i32 %6, 2
  %566 = and i32 %565, 12
  %567 = and i32 %6, -708
  %568 = or i32 %566, %567
  %569 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 35
  %570 = shl i32 %568, 4
  %571 = and i32 %570, 192
  %572 = and i32 %568, -756
  %573 = or disjoint i32 %571, %572
  %574 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 10
  br label %577

575:                                              ; preds = %614
  %576 = icmp eq i32 %616, 0
  br i1 %576, label %620, label %577, !llvm.loop !76

577:                                              ; preds = %560, %575
  %578 = phi i32 [ undef, %560 ], [ %619, %575 ]
  %579 = phi i32 [ %551, %560 ], [ %618, %575 ]
  %580 = phi i32 [ %550, %560 ], [ %616, %575 ]
  %581 = phi i32 [ %548, %560 ], [ %615, %575 ]
  br label %582

582:                                              ; preds = %577, %606
  %583 = phi i32 [ %604, %606 ], [ %507, %577 ]
  %584 = phi i32 [ %601, %606 ], [ %549, %577 ]
  %585 = phi i32 [ %601, %606 ], [ %505, %577 ]
  store i32 %584, ptr %561, align 8, !tbaa !56
  %586 = trunc i32 %584 to i16
  store i16 %586, ptr %562, align 2, !tbaa !57
  br label %587

587:                                              ; preds = %582, %603
  %588 = phi i32 [ %604, %603 ], [ %583, %582 ]
  %589 = phi i32 [ %601, %603 ], [ %585, %582 ]
  call fastcc void @set_color_ht(ptr noundef nonnull %10, i32 noundef %579, i32 noundef %588, i32 noundef %581, i32 noundef %584, i32 noundef %18, i32 noundef %19, ptr noundef nonnull %12, ptr noundef nonnull %13)
  %590 = load ptr, ptr %10, align 8, !tbaa !38
  br i1 %564, label %591, label %594

591:                                              ; preds = %587
  %592 = load ptr, ptr %574, align 8, !tbaa !78
  %593 = call i32 %592(ptr noundef %5, ptr noundef %590, i32 noundef 0, i32 noundef %546, i64 noundef 0, i32 noundef %579, i32 noundef %588, i32 noundef %581, i32 noundef %584) #7
  br label %597

594:                                              ; preds = %587
  %595 = load ptr, ptr %569, align 8, !tbaa !69
  %596 = call i32 %595(ptr noundef %5, ptr noundef %590, i32 noundef 0, i32 noundef %546, i64 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull %63, i32 noundef %579, i32 noundef %588, i32 noundef %581, i32 noundef %584, i32 noundef 0, i32 noundef 0, i32 noundef %573) #7
  br label %597

597:                                              ; preds = %594, %591
  %598 = phi i32 [ %593, %591 ], [ %596, %594 ]
  %599 = icmp slt i32 %598, 0
  br i1 %599, label %614, label %600

600:                                              ; preds = %597
  %601 = sub nsw i32 %589, %584
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %607, label %603

603:                                              ; preds = %600
  %604 = add nsw i32 %584, %588
  %605 = icmp sgt i32 %584, %601
  br i1 %605, label %606, label %587, !llvm.loop !79

606:                                              ; preds = %603
  br label %582, !llvm.loop !79

607:                                              ; preds = %600
  %608 = sub nsw i32 %580, %581
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %614, label %610

610:                                              ; preds = %607
  %611 = add nsw i32 %579, %581
  %612 = icmp sgt i32 %581, %608
  br i1 %612, label %613, label %614

613:                                              ; preds = %610
  store i32 %553, ptr %554, align 4, !tbaa !54
  store i16 %555, ptr %556, align 8, !tbaa !55
  br label %614

614:                                              ; preds = %597, %610, %613, %607
  %615 = phi i32 [ %581, %607 ], [ %608, %613 ], [ %581, %610 ], [ %581, %597 ]
  %616 = phi i32 [ 0, %607 ], [ %608, %613 ], [ %608, %610 ], [ %580, %597 ]
  %617 = phi i32 [ 6, %607 ], [ 0, %613 ], [ 0, %610 ], [ 1, %597 ]
  %618 = phi i32 [ %579, %607 ], [ %611, %613 ], [ %611, %610 ], [ %579, %597 ]
  %619 = phi i32 [ %578, %607 ], [ %578, %613 ], [ %578, %610 ], [ %598, %597 ]
  switch i32 %617, label %621 [
    i32 0, label %575
    i32 6, label %620
  ], !llvm.loop !76

620:                                              ; preds = %614, %575
  br label %621

621:                                              ; preds = %614, %620, %545, %515, %422, %8, %479, %462
  %622 = phi i32 [ %469, %462 ], [ %503, %479 ], [ 0, %8 ], [ 0, %422 ], [ 0, %515 ], [ 0, %545 ], [ %598, %620 ], [ %619, %614 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %9) #7
  ret i32 %622
}

declare i32 @gx_dc_default_fill_masked(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @dc_ht_colored_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  store ptr %8, ptr %3, align 8, !tbaa !45
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @dc_ht_colored_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #7
  store ptr %6, ptr %4, align 8, !tbaa !29
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare void @gx_ht_init_cache(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare i64 @gs_next_ids(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_color_ht(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8) unnamed_addr #4 {
  %10 = ashr i32 %5, 3
  %11 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !53
  %13 = load ptr, ptr %0, align 8, !tbaa !38
  %14 = add nsw i32 %4, -1
  %15 = mul i32 %12, %14
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  %18 = mul nsw i32 %5, %3
  %19 = sdiv i32 %18, 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %17, i64 %20
  %22 = add nsw i32 %3, %1
  %23 = add nsw i32 %14, %2
  %24 = load ptr, ptr %8, align 8, !tbaa !45
  %25 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !54
  %27 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %24, i64 0, i32 7
  %28 = load i16, ptr %27, align 2, !tbaa !59
  %29 = zext i16 %28 to i32
  %30 = icmp eq i16 %28, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %9
  %32 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %24, i64 0, i32 2, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !56
  %34 = sdiv i32 %23, %33
  %35 = mul nsw i32 %34, %29
  %36 = add nsw i32 %35, %22
  br label %37

37:                                               ; preds = %9, %31
  %38 = phi i32 [ %36, %31 ], [ %22, %9 ]
  %39 = srem i32 %38, %26
  %40 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %24, i64 0, i32 2, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !56
  %42 = srem i32 %23, %41
  %43 = ashr i32 %39, 3
  %44 = and i32 %39, 7
  %45 = sub nuw nsw i32 8, %44
  %46 = add nsw i32 %26, -1
  %47 = ashr i32 %46, 3
  %48 = and i32 %46, 7
  %49 = xor i32 %48, -1
  %50 = load ptr, ptr %24, align 8, !tbaa !38
  %51 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %24, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !53
  %53 = mul i32 %52, %42
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %50, i64 %54
  %56 = getelementptr inbounds ptr, ptr %8, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !45
  %58 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %57, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !54
  %60 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %57, i64 0, i32 7
  %61 = load i16, ptr %60, align 2, !tbaa !59
  %62 = zext i16 %61 to i32
  %63 = icmp eq i16 %61, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %37
  %65 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %57, i64 0, i32 2, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !56
  %67 = sdiv i32 %23, %66
  %68 = mul nsw i32 %67, %62
  %69 = add nsw i32 %68, %22
  br label %70

70:                                               ; preds = %37, %64
  %71 = phi i32 [ %69, %64 ], [ %22, %37 ]
  %72 = srem i32 %71, %59
  %73 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %57, i64 0, i32 2, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !56
  %75 = srem i32 %23, %74
  %76 = ashr i32 %72, 3
  %77 = and i32 %72, 7
  %78 = sub nuw nsw i32 8, %77
  %79 = add nsw i32 %59, -1
  %80 = ashr i32 %79, 3
  %81 = and i32 %79, 7
  %82 = xor i32 %81, -1
  %83 = load ptr, ptr %57, align 8, !tbaa !38
  %84 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %57, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !53
  %86 = mul i32 %85, %75
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %83, i64 %87
  %89 = getelementptr inbounds ptr, ptr %8, i64 2
  %90 = load ptr, ptr %89, align 8, !tbaa !45
  %91 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %90, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !54
  %93 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %90, i64 0, i32 7
  %94 = load i16, ptr %93, align 2, !tbaa !59
  %95 = zext i16 %94 to i32
  %96 = icmp eq i16 %94, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %70
  %98 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %90, i64 0, i32 2, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !56
  %100 = sdiv i32 %23, %99
  %101 = mul nsw i32 %100, %95
  %102 = add nsw i32 %101, %22
  br label %103

103:                                              ; preds = %70, %97
  %104 = phi i32 [ %102, %97 ], [ %22, %70 ]
  %105 = srem i32 %104, %92
  %106 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %90, i64 0, i32 2, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !56
  %108 = srem i32 %23, %107
  %109 = ashr i32 %105, 3
  %110 = and i32 %105, 7
  %111 = sub nuw nsw i32 8, %110
  %112 = add nsw i32 %92, -1
  %113 = ashr i32 %112, 3
  %114 = and i32 %112, 7
  %115 = xor i32 %114, -1
  %116 = load ptr, ptr %90, align 8, !tbaa !38
  %117 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %90, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !53
  %119 = mul i32 %118, %108
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, ptr %116, i64 %120
  %122 = icmp eq i32 %6, 4
  br i1 %122, label %123, label %158

123:                                              ; preds = %103
  %124 = getelementptr inbounds ptr, ptr %8, i64 3
  %125 = load ptr, ptr %124, align 8, !tbaa !45
  %126 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %125, i64 0, i32 2
  %127 = load i32, ptr %126, align 4, !tbaa !54
  %128 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %125, i64 0, i32 7
  %129 = load i16, ptr %128, align 2, !tbaa !59
  %130 = zext i16 %129 to i32
  %131 = icmp eq i16 %129, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %123
  %133 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %125, i64 0, i32 2, i32 1
  %134 = load i32, ptr %133, align 4, !tbaa !56
  %135 = sdiv i32 %23, %134
  %136 = mul nsw i32 %135, %130
  %137 = add nsw i32 %136, %22
  br label %138

138:                                              ; preds = %123, %132
  %139 = phi i32 [ %137, %132 ], [ %22, %123 ]
  %140 = srem i32 %139, %127
  %141 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %125, i64 0, i32 2, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !56
  %143 = srem i32 %23, %142
  %144 = ashr i32 %140, 3
  %145 = and i32 %140, 7
  %146 = sub nuw nsw i32 8, %145
  %147 = add nsw i32 %127, -1
  %148 = ashr i32 %147, 3
  %149 = and i32 %147, 7
  %150 = xor i32 %149, -1
  %151 = load ptr, ptr %125, align 8, !tbaa !38
  %152 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %125, i64 0, i32 1
  %153 = load i32, ptr %152, align 8, !tbaa !53
  %154 = mul i32 %153, %143
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i8, ptr %151, i64 %155
  %157 = zext i32 %148 to i64
  br label %158

158:                                              ; preds = %138, %103
  %159 = phi i32 [ %130, %138 ], [ undef, %103 ]
  %160 = phi i32 [ %144, %138 ], [ undef, %103 ]
  %161 = phi i32 [ %146, %138 ], [ undef, %103 ]
  %162 = phi i64 [ %157, %138 ], [ 0, %103 ]
  %163 = phi i32 [ %150, %138 ], [ undef, %103 ]
  %164 = phi ptr [ %156, %138 ], [ undef, %103 ]
  %165 = phi ptr [ %151, %138 ], [ undef, %103 ]
  %166 = phi i32 [ %153, %138 ], [ undef, %103 ]
  %167 = icmp sgt i32 %3, 0
  %168 = zext i32 %113 to i64
  %169 = zext i32 %80 to i64
  %170 = zext i32 %47 to i64
  %171 = zext i32 %52 to i64
  %172 = sub nsw i64 0, %171
  %173 = zext i32 %85 to i64
  %174 = sub nsw i64 0, %173
  %175 = zext i32 %118 to i64
  %176 = sub nsw i64 0, %175
  %177 = getelementptr inbounds ptr, ptr %8, i64 3
  %178 = icmp eq i32 %159, 0
  %179 = zext i32 %166 to i64
  %180 = sub nsw i64 0, %179
  %181 = zext i32 %12 to i64
  %182 = sub nsw i64 0, %181
  br label %183

183:                                              ; preds = %677, %158
  %184 = phi i32 [ %45, %158 ], [ %665, %677 ]
  %185 = phi i32 [ %43, %158 ], [ %666, %677 ]
  %186 = phi ptr [ %55, %158 ], [ %667, %677 ]
  %187 = phi ptr [ %21, %158 ], [ %678, %677 ]
  %188 = phi i32 [ %76, %158 ], [ %668, %677 ]
  %189 = phi i32 [ %78, %158 ], [ %669, %677 ]
  %190 = phi ptr [ %88, %158 ], [ %670, %677 ]
  %191 = phi i32 [ %109, %158 ], [ %671, %677 ]
  %192 = phi i32 [ %111, %158 ], [ %672, %677 ]
  %193 = phi ptr [ %121, %158 ], [ %673, %677 ]
  %194 = phi i32 [ %160, %158 ], [ %674, %677 ]
  %195 = phi i32 [ %161, %158 ], [ %675, %677 ]
  %196 = phi ptr [ %164, %158 ], [ %676, %677 ]
  %197 = phi ptr [ undef, %158 ], [ %539, %677 ]
  %198 = phi i32 [ undef, %158 ], [ %540, %677 ]
  %199 = phi i32 [ %4, %158 ], [ %204, %677 ]
  %200 = sext i32 %194 to i64
  %201 = getelementptr inbounds i8, ptr %196, i64 %200
  %202 = select i1 %122, ptr %201, ptr %197
  %203 = select i1 %122, i32 %195, i32 %198
  %204 = add nsw i32 %199, -1
  br i1 %167, label %205, label %538

205:                                              ; preds = %183
  %206 = sext i32 %191 to i64
  %207 = getelementptr inbounds i8, ptr %193, i64 %206
  %208 = sext i32 %188 to i64
  %209 = getelementptr inbounds i8, ptr %190, i64 %208
  %210 = sext i32 %185 to i64
  %211 = getelementptr inbounds i8, ptr %186, i64 %210
  br label %212

212:                                              ; preds = %205, %535
  %213 = phi i32 [ %403, %535 ], [ %3, %205 ]
  %214 = phi i32 [ %270, %535 ], [ %203, %205 ]
  %215 = phi ptr [ %269, %535 ], [ %202, %205 ]
  %216 = phi ptr [ %536, %535 ], [ %187, %205 ]
  %217 = phi i32 [ %307, %535 ], [ %192, %205 ]
  %218 = phi ptr [ %306, %535 ], [ %207, %205 ]
  %219 = phi i32 [ %350, %535 ], [ %189, %205 ]
  %220 = phi ptr [ %349, %535 ], [ %209, %205 ]
  %221 = phi i32 [ %395, %535 ], [ %184, %205 ]
  %222 = phi ptr [ %394, %535 ], [ %211, %205 ]
  br i1 %122, label %223, label %267

223:                                              ; preds = %212
  %224 = icmp ugt ptr %215, %196
  br i1 %224, label %225, label %234

225:                                              ; preds = %223
  %226 = getelementptr inbounds i8, ptr %215, i64 -1
  %227 = load i8, ptr %226, align 1, !tbaa !29
  %228 = zext i8 %227 to i32
  %229 = shl nuw nsw i32 %228, 8
  %230 = load i8, ptr %215, align 1, !tbaa !29
  %231 = zext i8 %230 to i32
  %232 = or disjoint i32 %229, %231
  %233 = lshr i32 %232, %214
  br label %258

234:                                              ; preds = %223
  %235 = load i8, ptr %215, align 1, !tbaa !29
  %236 = zext i8 %235 to i32
  %237 = lshr i32 %236, %214
  %238 = getelementptr inbounds i8, ptr %215, i64 %162
  %239 = add i32 %214, %163
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %234
  %242 = load i8, ptr %238, align 1, !tbaa !29
  %243 = zext i8 %242 to i32
  %244 = sub nsw i32 0, %239
  %245 = shl nuw nsw i32 %243, %244
  %246 = or i32 %245, %237
  %247 = add nsw i32 %239, 8
  br label %258

248:                                              ; preds = %234
  %249 = getelementptr inbounds i8, ptr %238, i64 -1
  %250 = load i8, ptr %249, align 1, !tbaa !29
  %251 = zext i8 %250 to i32
  %252 = shl nuw nsw i32 %251, 8
  %253 = load i8, ptr %238, align 1, !tbaa !29
  %254 = zext i8 %253 to i32
  %255 = or disjoint i32 %252, %254
  %256 = lshr i32 %255, %239
  %257 = or i32 %256, %237
  br label %258

258:                                              ; preds = %241, %248, %225
  %259 = phi i32 [ %233, %225 ], [ %246, %241 ], [ %257, %248 ]
  %260 = phi ptr [ %226, %225 ], [ %238, %241 ], [ %249, %248 ]
  %261 = phi i32 [ %214, %225 ], [ %247, %241 ], [ %239, %248 ]
  %262 = and i32 %259, 255
  %263 = zext nneg i32 %262 to i64
  %264 = getelementptr inbounds [256 x i32], ptr @expand_8x1_to_8x4, i64 0, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !41
  %266 = shl i32 %265, 1
  br label %267

267:                                              ; preds = %212, %258
  %268 = phi i32 [ %266, %258 ], [ 0, %212 ]
  %269 = phi ptr [ %260, %258 ], [ %215, %212 ]
  %270 = phi i32 [ %261, %258 ], [ %214, %212 ]
  %271 = icmp ugt ptr %218, %193
  br i1 %271, label %272, label %281

272:                                              ; preds = %267
  %273 = getelementptr inbounds i8, ptr %218, i64 -1
  %274 = load i8, ptr %273, align 1, !tbaa !29
  %275 = zext i8 %274 to i32
  %276 = shl nuw nsw i32 %275, 8
  %277 = load i8, ptr %218, align 1, !tbaa !29
  %278 = zext i8 %277 to i32
  %279 = or disjoint i32 %276, %278
  %280 = lshr i32 %279, %217
  br label %305

281:                                              ; preds = %267
  %282 = load i8, ptr %218, align 1, !tbaa !29
  %283 = zext i8 %282 to i32
  %284 = lshr i32 %283, %217
  %285 = getelementptr inbounds i8, ptr %218, i64 %168
  %286 = add i32 %217, %115
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %288, label %295

288:                                              ; preds = %281
  %289 = load i8, ptr %285, align 1, !tbaa !29
  %290 = zext i8 %289 to i32
  %291 = sub nsw i32 0, %286
  %292 = shl nuw nsw i32 %290, %291
  %293 = or i32 %292, %284
  %294 = add nsw i32 %286, 8
  br label %305

295:                                              ; preds = %281
  %296 = getelementptr inbounds i8, ptr %285, i64 -1
  %297 = load i8, ptr %296, align 1, !tbaa !29
  %298 = zext i8 %297 to i32
  %299 = shl nuw nsw i32 %298, 8
  %300 = load i8, ptr %285, align 1, !tbaa !29
  %301 = zext i8 %300 to i32
  %302 = or disjoint i32 %299, %301
  %303 = lshr i32 %302, %286
  %304 = or i32 %303, %284
  br label %305

305:                                              ; preds = %288, %295, %272
  %306 = phi ptr [ %273, %272 ], [ %285, %288 ], [ %296, %295 ]
  %307 = phi i32 [ %217, %272 ], [ %294, %288 ], [ %286, %295 ]
  %308 = phi i32 [ %280, %272 ], [ %293, %288 ], [ %304, %295 ]
  %309 = and i32 %308, 255
  %310 = zext nneg i32 %309 to i64
  %311 = getelementptr inbounds [256 x i32], ptr @expand_8x1_to_8x4, i64 0, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !41
  %313 = or i32 %312, %268
  %314 = icmp ugt ptr %220, %190
  br i1 %314, label %315, label %324

315:                                              ; preds = %305
  %316 = getelementptr inbounds i8, ptr %220, i64 -1
  %317 = load i8, ptr %316, align 1, !tbaa !29
  %318 = zext i8 %317 to i32
  %319 = shl nuw nsw i32 %318, 8
  %320 = load i8, ptr %220, align 1, !tbaa !29
  %321 = zext i8 %320 to i32
  %322 = or disjoint i32 %319, %321
  %323 = lshr i32 %322, %219
  br label %348

324:                                              ; preds = %305
  %325 = load i8, ptr %220, align 1, !tbaa !29
  %326 = zext i8 %325 to i32
  %327 = lshr i32 %326, %219
  %328 = getelementptr inbounds i8, ptr %220, i64 %169
  %329 = add i32 %219, %82
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %338

331:                                              ; preds = %324
  %332 = load i8, ptr %328, align 1, !tbaa !29
  %333 = zext i8 %332 to i32
  %334 = sub nsw i32 0, %329
  %335 = shl nuw nsw i32 %333, %334
  %336 = or i32 %335, %327
  %337 = add nsw i32 %329, 8
  br label %348

338:                                              ; preds = %324
  %339 = getelementptr inbounds i8, ptr %328, i64 -1
  %340 = load i8, ptr %339, align 1, !tbaa !29
  %341 = zext i8 %340 to i32
  %342 = shl nuw nsw i32 %341, 8
  %343 = load i8, ptr %328, align 1, !tbaa !29
  %344 = zext i8 %343 to i32
  %345 = or disjoint i32 %342, %344
  %346 = lshr i32 %345, %329
  %347 = or i32 %346, %327
  br label %348

348:                                              ; preds = %331, %338, %315
  %349 = phi ptr [ %316, %315 ], [ %328, %331 ], [ %339, %338 ]
  %350 = phi i32 [ %219, %315 ], [ %337, %331 ], [ %329, %338 ]
  %351 = phi i32 [ %323, %315 ], [ %336, %331 ], [ %347, %338 ]
  %352 = and i32 %351, 255
  %353 = zext nneg i32 %352 to i64
  %354 = getelementptr inbounds [256 x i32], ptr @expand_8x1_to_8x4, i64 0, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !41
  %356 = shl i32 %313, 2
  %357 = shl i32 %355, 1
  %358 = or i32 %357, %356
  %359 = icmp ugt ptr %222, %186
  br i1 %359, label %360, label %369

360:                                              ; preds = %348
  %361 = getelementptr inbounds i8, ptr %222, i64 -1
  %362 = load i8, ptr %361, align 1, !tbaa !29
  %363 = zext i8 %362 to i32
  %364 = shl nuw nsw i32 %363, 8
  %365 = load i8, ptr %222, align 1, !tbaa !29
  %366 = zext i8 %365 to i32
  %367 = or disjoint i32 %364, %366
  %368 = lshr i32 %367, %221
  br label %393

369:                                              ; preds = %348
  %370 = load i8, ptr %222, align 1, !tbaa !29
  %371 = zext i8 %370 to i32
  %372 = lshr i32 %371, %221
  %373 = getelementptr inbounds i8, ptr %222, i64 %170
  %374 = add i32 %221, %49
  %375 = icmp slt i32 %374, 0
  br i1 %375, label %376, label %383

376:                                              ; preds = %369
  %377 = load i8, ptr %373, align 1, !tbaa !29
  %378 = zext i8 %377 to i32
  %379 = sub nsw i32 0, %374
  %380 = shl nuw nsw i32 %378, %379
  %381 = or i32 %380, %372
  %382 = add nsw i32 %374, 8
  br label %393

383:                                              ; preds = %369
  %384 = getelementptr inbounds i8, ptr %373, i64 -1
  %385 = load i8, ptr %384, align 1, !tbaa !29
  %386 = zext i8 %385 to i32
  %387 = shl nuw nsw i32 %386, 8
  %388 = load i8, ptr %373, align 1, !tbaa !29
  %389 = zext i8 %388 to i32
  %390 = or disjoint i32 %387, %389
  %391 = lshr i32 %390, %374
  %392 = or i32 %391, %372
  br label %393

393:                                              ; preds = %376, %383, %360
  %394 = phi ptr [ %361, %360 ], [ %373, %376 ], [ %384, %383 ]
  %395 = phi i32 [ %221, %360 ], [ %382, %376 ], [ %374, %383 ]
  %396 = phi i32 [ %368, %360 ], [ %381, %376 ], [ %392, %383 ]
  %397 = and i32 %396, 255
  %398 = zext nneg i32 %397 to i64
  %399 = getelementptr inbounds [256 x i32], ptr @expand_8x1_to_8x4, i64 0, i64 %398
  %400 = load i32, ptr %399, align 4, !tbaa !41
  %401 = or i32 %358, %400
  %402 = tail call i32 @llvm.smin.i32(i32 %213, i32 8)
  %403 = sub nsw i32 %213, %402
  switch i32 %10, label %535 [
    i32 0, label %412
    i32 4, label %410
    i32 3, label %408
    i32 2, label %406
    i32 1, label %404
  ]

404:                                              ; preds = %393
  %405 = icmp sgt i32 %213, 0
  br i1 %405, label %522, label %535

406:                                              ; preds = %393
  %407 = icmp sgt i32 %213, 0
  br i1 %407, label %506, label %535

408:                                              ; preds = %393
  %409 = icmp sgt i32 %213, 0
  br i1 %409, label %487, label %535

410:                                              ; preds = %393
  %411 = icmp sgt i32 %213, 0
  br i1 %411, label %465, label %535

412:                                              ; preds = %393
  %413 = and i32 %213, 1
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %427, label %415

415:                                              ; preds = %412
  %416 = load i8, ptr %216, align 1, !tbaa !29
  %417 = and i8 %416, 15
  %418 = and i32 %401, 15
  %419 = zext nneg i32 %418 to i64
  %420 = getelementptr inbounds i64, ptr %7, i64 %419
  %421 = load i64, ptr %420, align 8, !tbaa !48
  %422 = trunc i64 %421 to i8
  %423 = shl i8 %422, 4
  %424 = or disjoint i8 %423, %417
  store i8 %424, ptr %216, align 1, !tbaa !29
  %425 = lshr i32 %401, 4
  %426 = add nsw i32 %402, -1
  br label %427

427:                                              ; preds = %415, %412
  %428 = phi i32 [ %425, %415 ], [ %401, %412 ]
  %429 = phi i32 [ %426, %415 ], [ %402, %412 ]
  %430 = icmp sgt i32 %429, 1
  br i1 %430, label %431, label %452

431:                                              ; preds = %427, %431
  %432 = phi i32 [ %435, %431 ], [ %429, %427 ]
  %433 = phi i32 [ %450, %431 ], [ %428, %427 ]
  %434 = phi ptr [ %449, %431 ], [ %216, %427 ]
  %435 = add nsw i32 %432, -2
  %436 = and i32 %433, 15
  %437 = zext nneg i32 %436 to i64
  %438 = getelementptr inbounds i64, ptr %7, i64 %437
  %439 = load i64, ptr %438, align 8, !tbaa !48
  %440 = trunc i64 %439 to i8
  %441 = lshr i32 %433, 4
  %442 = and i32 %441, 15
  %443 = zext nneg i32 %442 to i64
  %444 = getelementptr inbounds i64, ptr %7, i64 %443
  %445 = load i64, ptr %444, align 8, !tbaa !48
  %446 = trunc i64 %445 to i8
  %447 = shl i8 %446, 4
  %448 = add i8 %447, %440
  %449 = getelementptr inbounds i8, ptr %434, i64 -1
  store i8 %448, ptr %449, align 1, !tbaa !29
  %450 = lshr i32 %433, 8
  %451 = icmp sgt i32 %432, 3
  br i1 %451, label %431, label %452, !llvm.loop !80

452:                                              ; preds = %431, %427
  %453 = phi ptr [ %216, %427 ], [ %449, %431 ]
  %454 = phi i32 [ %428, %427 ], [ %450, %431 ]
  %455 = phi i32 [ %429, %427 ], [ %435, %431 ]
  %456 = and i32 %455, 1
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %535, label %458

458:                                              ; preds = %452
  %459 = and i32 %454, 15
  %460 = zext nneg i32 %459 to i64
  %461 = getelementptr inbounds i64, ptr %7, i64 %460
  %462 = load i64, ptr %461, align 8, !tbaa !48
  %463 = trunc i64 %462 to i8
  %464 = getelementptr inbounds i8, ptr %453, i64 -1
  store i8 %463, ptr %464, align 1, !tbaa !29
  br label %535

465:                                              ; preds = %410, %465
  %466 = phi i32 [ %469, %465 ], [ %402, %410 ]
  %467 = phi i32 [ %485, %465 ], [ %401, %410 ]
  %468 = phi ptr [ %474, %465 ], [ %216, %410 ]
  %469 = add nsw i32 %466, -1
  %470 = and i32 %467, 15
  %471 = zext nneg i32 %470 to i64
  %472 = getelementptr inbounds i64, ptr %7, i64 %471
  %473 = load i64, ptr %472, align 8, !tbaa !48
  %474 = getelementptr inbounds i8, ptr %468, i64 -4
  %475 = trunc i64 %473 to i8
  %476 = getelementptr inbounds i8, ptr %468, i64 -1
  store i8 %475, ptr %476, align 1, !tbaa !29
  %477 = lshr i64 %473, 8
  %478 = trunc i64 %477 to i8
  %479 = getelementptr inbounds i8, ptr %468, i64 -2
  store i8 %478, ptr %479, align 1, !tbaa !29
  %480 = lshr i64 %473, 16
  %481 = trunc i64 %480 to i8
  %482 = getelementptr inbounds i8, ptr %468, i64 -3
  store i8 %481, ptr %482, align 1, !tbaa !29
  %483 = lshr i64 %473, 24
  %484 = trunc i64 %483 to i8
  store i8 %484, ptr %474, align 1, !tbaa !29
  %485 = lshr i32 %467, 4
  %486 = icmp sgt i32 %466, 1
  br i1 %486, label %465, label %535, !llvm.loop !81

487:                                              ; preds = %408, %487
  %488 = phi i32 [ %491, %487 ], [ %402, %408 ]
  %489 = phi i32 [ %504, %487 ], [ %401, %408 ]
  %490 = phi ptr [ %496, %487 ], [ %216, %408 ]
  %491 = add nsw i32 %488, -1
  %492 = and i32 %489, 15
  %493 = zext nneg i32 %492 to i64
  %494 = getelementptr inbounds i64, ptr %7, i64 %493
  %495 = load i64, ptr %494, align 8, !tbaa !48
  %496 = getelementptr inbounds i8, ptr %490, i64 -3
  %497 = trunc i64 %495 to i8
  %498 = getelementptr inbounds i8, ptr %490, i64 -1
  store i8 %497, ptr %498, align 1, !tbaa !29
  %499 = lshr i64 %495, 8
  %500 = trunc i64 %499 to i8
  %501 = getelementptr inbounds i8, ptr %490, i64 -2
  store i8 %500, ptr %501, align 1, !tbaa !29
  %502 = lshr i64 %495, 24
  %503 = trunc i64 %502 to i8
  store i8 %503, ptr %496, align 1, !tbaa !29
  %504 = lshr i32 %489, 4
  %505 = icmp sgt i32 %488, 1
  br i1 %505, label %487, label %535, !llvm.loop !82

506:                                              ; preds = %406, %506
  %507 = phi i32 [ %510, %506 ], [ %402, %406 ]
  %508 = phi i32 [ %520, %506 ], [ %401, %406 ]
  %509 = phi ptr [ %515, %506 ], [ %216, %406 ]
  %510 = add nsw i32 %507, -1
  %511 = and i32 %508, 15
  %512 = zext nneg i32 %511 to i64
  %513 = getelementptr inbounds i64, ptr %7, i64 %512
  %514 = load i64, ptr %513, align 8, !tbaa !48
  %515 = getelementptr inbounds i8, ptr %509, i64 -2
  %516 = trunc i64 %514 to i8
  %517 = getelementptr inbounds i8, ptr %509, i64 -1
  store i8 %516, ptr %517, align 1, !tbaa !29
  %518 = lshr i64 %514, 8
  %519 = trunc i64 %518 to i8
  store i8 %519, ptr %515, align 1, !tbaa !29
  %520 = lshr i32 %508, 4
  %521 = icmp sgt i32 %507, 1
  br i1 %521, label %506, label %535, !llvm.loop !83

522:                                              ; preds = %404, %522
  %523 = phi i32 [ %526, %522 ], [ %402, %404 ]
  %524 = phi i32 [ %533, %522 ], [ %401, %404 ]
  %525 = phi ptr [ %532, %522 ], [ %216, %404 ]
  %526 = add nsw i32 %523, -1
  %527 = and i32 %524, 15
  %528 = zext nneg i32 %527 to i64
  %529 = getelementptr inbounds i64, ptr %7, i64 %528
  %530 = load i64, ptr %529, align 8, !tbaa !48
  %531 = trunc i64 %530 to i8
  %532 = getelementptr inbounds i8, ptr %525, i64 -1
  store i8 %531, ptr %532, align 1, !tbaa !29
  %533 = lshr i32 %524, 4
  %534 = icmp sgt i32 %523, 1
  br i1 %534, label %522, label %535, !llvm.loop !84

535:                                              ; preds = %522, %506, %487, %465, %404, %406, %408, %410, %452, %458, %393
  %536 = phi ptr [ %216, %393 ], [ %464, %458 ], [ %453, %452 ], [ %216, %410 ], [ %216, %408 ], [ %216, %406 ], [ %216, %404 ], [ %474, %465 ], [ %496, %487 ], [ %515, %506 ], [ %532, %522 ]
  %537 = icmp sgt i32 %403, 0
  br i1 %537, label %212, label %538, !llvm.loop !85

538:                                              ; preds = %535, %183
  %539 = phi ptr [ %202, %183 ], [ %269, %535 ]
  %540 = phi i32 [ %203, %183 ], [ %270, %535 ]
  %541 = icmp eq i32 %204, 0
  br i1 %541, label %664, label %542

542:                                              ; preds = %538
  %543 = icmp ugt ptr %186, %50
  br i1 %543, label %544, label %546

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %186, i64 %172
  br label %570

546:                                              ; preds = %542
  %547 = load ptr, ptr %8, align 8, !tbaa !45
  %548 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %547, i64 0, i32 2
  %549 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %547, i64 0, i32 2, i32 1
  %550 = load i32, ptr %549, align 4, !tbaa !56
  %551 = add nsw i32 %550, -1
  %552 = mul i32 %551, %52
  %553 = zext i32 %552 to i64
  %554 = getelementptr inbounds i8, ptr %186, i64 %553
  br i1 %30, label %570, label %555

555:                                              ; preds = %546
  %556 = add nuw nsw i32 %184, %29
  %557 = icmp sgt i32 %556, 7
  br i1 %557, label %558, label %570

558:                                              ; preds = %555
  %559 = lshr i32 %556, 3
  %560 = sub nsw i32 %185, %559
  %561 = icmp slt i32 %560, 0
  br i1 %561, label %562, label %568

562:                                              ; preds = %558
  %563 = load i32, ptr %548, align 4, !tbaa !54
  %564 = add nsw i32 %563, %560
  %565 = ashr i32 %564, 3
  %566 = and i32 %564, 7
  %567 = sub nuw nsw i32 8, %566
  br label %570

568:                                              ; preds = %558
  %569 = and i32 %556, 7
  br label %570

570:                                              ; preds = %546, %562, %568, %555, %544
  %571 = phi i32 [ %184, %544 ], [ %567, %562 ], [ %569, %568 ], [ %556, %555 ], [ %184, %546 ]
  %572 = phi i32 [ %185, %544 ], [ %565, %562 ], [ %560, %568 ], [ %185, %555 ], [ %185, %546 ]
  %573 = phi ptr [ %545, %544 ], [ %554, %562 ], [ %554, %568 ], [ %554, %555 ], [ %554, %546 ]
  %574 = icmp ugt ptr %190, %83
  br i1 %574, label %575, label %577

575:                                              ; preds = %570
  %576 = getelementptr inbounds i8, ptr %190, i64 %174
  br label %601

577:                                              ; preds = %570
  %578 = load ptr, ptr %56, align 8, !tbaa !45
  %579 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %578, i64 0, i32 2
  %580 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %578, i64 0, i32 2, i32 1
  %581 = load i32, ptr %580, align 4, !tbaa !56
  %582 = add nsw i32 %581, -1
  %583 = mul i32 %582, %85
  %584 = zext i32 %583 to i64
  %585 = getelementptr inbounds i8, ptr %190, i64 %584
  br i1 %63, label %601, label %586

586:                                              ; preds = %577
  %587 = add nuw nsw i32 %189, %62
  %588 = icmp sgt i32 %587, 7
  br i1 %588, label %589, label %601

589:                                              ; preds = %586
  %590 = lshr i32 %587, 3
  %591 = sub nsw i32 %188, %590
  %592 = icmp slt i32 %591, 0
  br i1 %592, label %593, label %599

593:                                              ; preds = %589
  %594 = load i32, ptr %579, align 4, !tbaa !54
  %595 = add nsw i32 %594, %591
  %596 = ashr i32 %595, 3
  %597 = and i32 %595, 7
  %598 = sub nuw nsw i32 8, %597
  br label %601

599:                                              ; preds = %589
  %600 = and i32 %587, 7
  br label %601

601:                                              ; preds = %577, %593, %599, %586, %575
  %602 = phi i32 [ %188, %575 ], [ %596, %593 ], [ %591, %599 ], [ %188, %586 ], [ %188, %577 ]
  %603 = phi i32 [ %189, %575 ], [ %598, %593 ], [ %600, %599 ], [ %587, %586 ], [ %189, %577 ]
  %604 = phi ptr [ %576, %575 ], [ %585, %593 ], [ %585, %599 ], [ %585, %586 ], [ %585, %577 ]
  %605 = icmp ugt ptr %193, %116
  br i1 %605, label %606, label %608

606:                                              ; preds = %601
  %607 = getelementptr inbounds i8, ptr %193, i64 %176
  br label %632

608:                                              ; preds = %601
  %609 = load ptr, ptr %89, align 8, !tbaa !45
  %610 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %609, i64 0, i32 2
  %611 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %609, i64 0, i32 2, i32 1
  %612 = load i32, ptr %611, align 4, !tbaa !56
  %613 = add nsw i32 %612, -1
  %614 = mul i32 %613, %118
  %615 = zext i32 %614 to i64
  %616 = getelementptr inbounds i8, ptr %193, i64 %615
  br i1 %96, label %632, label %617

617:                                              ; preds = %608
  %618 = add nuw nsw i32 %192, %95
  %619 = icmp sgt i32 %618, 7
  br i1 %619, label %620, label %632

620:                                              ; preds = %617
  %621 = lshr i32 %618, 3
  %622 = sub nsw i32 %191, %621
  %623 = icmp slt i32 %622, 0
  br i1 %623, label %624, label %630

624:                                              ; preds = %620
  %625 = load i32, ptr %610, align 4, !tbaa !54
  %626 = add nsw i32 %625, %622
  %627 = ashr i32 %626, 3
  %628 = and i32 %626, 7
  %629 = sub nuw nsw i32 8, %628
  br label %632

630:                                              ; preds = %620
  %631 = and i32 %618, 7
  br label %632

632:                                              ; preds = %608, %624, %630, %617, %606
  %633 = phi i32 [ %191, %606 ], [ %627, %624 ], [ %622, %630 ], [ %191, %617 ], [ %191, %608 ]
  %634 = phi i32 [ %192, %606 ], [ %629, %624 ], [ %631, %630 ], [ %618, %617 ], [ %192, %608 ]
  %635 = phi ptr [ %607, %606 ], [ %616, %624 ], [ %616, %630 ], [ %616, %617 ], [ %616, %608 ]
  br i1 %122, label %636, label %664

636:                                              ; preds = %632
  %637 = icmp ugt ptr %196, %165
  br i1 %637, label %638, label %640

638:                                              ; preds = %636
  %639 = getelementptr inbounds i8, ptr %196, i64 %180
  br label %664

640:                                              ; preds = %636
  %641 = load ptr, ptr %177, align 8, !tbaa !45
  %642 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %641, i64 0, i32 2
  %643 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %641, i64 0, i32 2, i32 1
  %644 = load i32, ptr %643, align 4, !tbaa !56
  %645 = add nsw i32 %644, -1
  %646 = mul i32 %645, %166
  %647 = zext i32 %646 to i64
  %648 = getelementptr inbounds i8, ptr %196, i64 %647
  br i1 %178, label %664, label %649

649:                                              ; preds = %640
  %650 = add nsw i32 %195, %159
  %651 = icmp sgt i32 %650, 7
  br i1 %651, label %652, label %664

652:                                              ; preds = %649
  %653 = lshr i32 %650, 3
  %654 = sub nsw i32 %194, %653
  %655 = icmp slt i32 %654, 0
  br i1 %655, label %656, label %662

656:                                              ; preds = %652
  %657 = load i32, ptr %642, align 4, !tbaa !54
  %658 = add nsw i32 %657, %654
  %659 = ashr i32 %658, 3
  %660 = and i32 %658, 7
  %661 = sub nuw nsw i32 8, %660
  br label %664

662:                                              ; preds = %652
  %663 = and i32 %650, 7
  br label %664

664:                                              ; preds = %632, %640, %656, %662, %649, %638, %538
  %665 = phi i32 [ %184, %538 ], [ %571, %638 ], [ %571, %649 ], [ %571, %662 ], [ %571, %656 ], [ %571, %640 ], [ %571, %632 ]
  %666 = phi i32 [ %185, %538 ], [ %572, %638 ], [ %572, %649 ], [ %572, %662 ], [ %572, %656 ], [ %572, %640 ], [ %572, %632 ]
  %667 = phi ptr [ %186, %538 ], [ %573, %638 ], [ %573, %649 ], [ %573, %662 ], [ %573, %656 ], [ %573, %640 ], [ %573, %632 ]
  %668 = phi i32 [ %188, %538 ], [ %602, %638 ], [ %602, %649 ], [ %602, %662 ], [ %602, %656 ], [ %602, %640 ], [ %602, %632 ]
  %669 = phi i32 [ %189, %538 ], [ %603, %638 ], [ %603, %649 ], [ %603, %662 ], [ %603, %656 ], [ %603, %640 ], [ %603, %632 ]
  %670 = phi ptr [ %190, %538 ], [ %604, %638 ], [ %604, %649 ], [ %604, %662 ], [ %604, %656 ], [ %604, %640 ], [ %604, %632 ]
  %671 = phi i32 [ %191, %538 ], [ %633, %638 ], [ %633, %649 ], [ %633, %662 ], [ %633, %656 ], [ %633, %640 ], [ %633, %632 ]
  %672 = phi i32 [ %192, %538 ], [ %634, %638 ], [ %634, %649 ], [ %634, %662 ], [ %634, %656 ], [ %634, %640 ], [ %634, %632 ]
  %673 = phi ptr [ %193, %538 ], [ %635, %638 ], [ %635, %649 ], [ %635, %662 ], [ %635, %656 ], [ %635, %640 ], [ %635, %632 ]
  %674 = phi i32 [ %194, %538 ], [ %194, %638 ], [ %194, %649 ], [ %654, %662 ], [ %659, %656 ], [ %194, %640 ], [ %194, %632 ]
  %675 = phi i32 [ %195, %538 ], [ %195, %638 ], [ %650, %649 ], [ %663, %662 ], [ %661, %656 ], [ %195, %640 ], [ %195, %632 ]
  %676 = phi ptr [ %196, %538 ], [ %639, %638 ], [ %648, %649 ], [ %648, %662 ], [ %648, %656 ], [ %648, %640 ], [ %196, %632 ]
  br i1 %541, label %679, label %677

677:                                              ; preds = %664
  %678 = getelementptr inbounds i8, ptr %187, i64 %182
  br label %183, !llvm.loop !86

679:                                              ; preds = %664
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @gx_render_ht(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 192}
!6 = !{!"gs_imager_state_s", !7, i64 0, !10, i64 8, !14, i64 80, !12, i64 128, !16, i64 132, !12, i64 136, !11, i64 140, !17, i64 144, !12, i64 160, !12, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"gx_line_params_s", !11, i64 0, !12, i64 4, !12, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !13, i64 32}
!11 = !{!"float", !8, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = !{!"gx_dash_params_s", !7, i64 0, !12, i64 8, !11, i64 12, !12, i64 16, !11, i64 20, !12, i64 24, !12, i64 28, !11, i64 32}
!14 = !{!"gs_matrix_fixed_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !15, i64 24, !15, i64 32, !12, i64 40}
!15 = !{!"long", !8, i64 0}
!16 = !{!"short", !8, i64 0}
!17 = !{!"gs_fixed_point_s", !15, i64 0, !15, i64 8}
!18 = !{!19, !7, i64 128}
!19 = !{!"gx_device_halftone_s", !20, i64 0, !22, i64 96, !15, i64 120, !7, i64 128, !12, i64 136, !8, i64 140, !12, i64 156, !12, i64 160}
!20 = !{!"gx_ht_order_s", !21, i64 0, !16, i64 40, !16, i64 42, !16, i64 44, !16, i64 46, !16, i64 48, !16, i64 50, !12, i64 52, !12, i64 56, !12, i64 60, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88}
!21 = !{!"gx_ht_cell_params_s", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6, !16, i64 8, !16, i64 10, !15, i64 16, !16, i64 24, !16, i64 26, !12, i64 28, !12, i64 32, !12, i64 36}
!22 = !{!"rc_header_s", !15, i64 0, !7, i64 8, !7, i64 16}
!23 = !{!6, !7, i64 200}
!24 = !{!25, !7, i64 104}
!25 = !{!"gx_ht_cache_s", !7, i64 0, !12, i64 8, !7, i64 16, !12, i64 24, !20, i64 32, !12, i64 128, !12, i64 132, !15, i64 136}
!26 = !{!20, !7, i64 72}
!27 = !{!20, !7, i64 80}
!28 = !{!19, !7, i64 80}
!29 = !{!8, !8, i64 0}
!30 = !{!31, !12, i64 52}
!31 = !{!"gx_device_s", !12, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !32, i64 48, !12, i64 64, !12, i64 68, !8, i64 72, !8, i64 80, !12, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !15, i64 144, !15, i64 152, !12, i64 160, !33, i64 168, !34, i64 192}
!32 = !{!"gx_device_color_info_s", !12, i64 0, !12, i64 4, !16, i64 8, !16, i64 10, !16, i64 12, !16, i64 14}
!33 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!34 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!35 = !{!31, !12, i64 48}
!36 = !{!19, !12, i64 156}
!37 = !{!19, !12, i64 160}
!38 = !{!39, !7, i64 0}
!39 = !{!"gx_strip_bitmap_s", !7, i64 0, !12, i64 8, !40, i64 12, !15, i64 24, !16, i64 32, !16, i64 34, !16, i64 36, !16, i64 38}
!40 = !{!"gs_int_point_s", !12, i64 0, !12, i64 4}
!41 = !{!12, !12, i64 0}
!42 = !{!43, !7, i64 80}
!43 = !{!"gx_ht_order_component_s", !20, i64 0, !12, i64 96}
!44 = !{!31, !16, i64 62}
!45 = !{!7, !7, i64 0}
!46 = !{!16, !16, i64 0}
!47 = !{!31, !7, i64 232}
!48 = !{!15, !15, i64 0}
!49 = !{!31, !7, i64 336}
!50 = !{!31, !7, i64 312}
!51 = !{!31, !12, i64 64}
!52 = !{!31, !12, i64 68}
!53 = !{!39, !12, i64 8}
!54 = !{!39, !12, i64 12}
!55 = !{!39, !16, i64 32}
!56 = !{!39, !12, i64 16}
!57 = !{!39, !16, i64 34}
!58 = !{!39, !15, i64 24}
!59 = !{!39, !16, i64 38}
!60 = !{!39, !16, i64 36}
!61 = !{!31, !7, i64 464}
!62 = !{!63, !12, i64 48}
!63 = !{!"gx_device_color_s", !7, i64 0, !8, i64 8, !40, i64 48, !64, i64 56}
!64 = !{!"_mask", !65, i64 0, !15, i64 24, !7, i64 32}
!65 = !{!"gs_client_color_s", !66, i64 0, !7, i64 16}
!66 = !{!"gs_paint_color_s", !8, i64 0}
!67 = !{!63, !12, i64 52}
!68 = !{i64 0, i64 8, !45, i64 8, i64 4, !41, i64 12, i64 4, !41, i64 16, i64 8, !48, i64 24, i64 16, !29, i64 40, i64 4, !41}
!69 = !{!31, !7, i64 472}
!70 = !{!71, !7, i64 0}
!71 = !{!"gx_rop_source_s", !7, i64 0, !12, i64 8, !12, i64 12, !15, i64 16, !8, i64 24, !12, i64 40}
!72 = !{!71, !12, i64 8}
!73 = !{!71, !12, i64 12}
!74 = !{!71, !15, i64 16}
!75 = !{!71, !12, i64 40}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = !{!31, !7, i64 272}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !77}
!81 = distinct !{!81, !77}
!82 = distinct !{!82, !77}
!83 = distinct !{!83, !77}
!84 = distinct !{!84, !77}
!85 = distinct !{!85, !77}
!86 = distinct !{!86, !77}
