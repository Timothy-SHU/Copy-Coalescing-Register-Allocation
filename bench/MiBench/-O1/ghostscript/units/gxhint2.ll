; ModuleID = 'gxhint2.c'
source_filename = "gxhint2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_type1_state_s = type { ptr, ptr, ptr, i32, i32, %struct.fixed_coeff, float, %struct.point_scale_s, %struct.font_hints_s, %struct.gs_fixed_point_s, [48 x i64], i32, [11 x %struct.ip_state], i32, i32, i32, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32, %struct.gs_fixed_point_s, i64, %struct.gs_fixed_point_s, i32, [8 x %struct.gs_fixed_point_s], i32, i32, i32, i32, %struct.gs_fixed_point_s, i32, %struct.gs_fixed_point_s, ptr, i32, %struct.gs_fixed_point_s, %struct.stem_hint_table, %struct.stem_hint_table, [32 x i64] }
%struct.fixed_coeff = type { %struct.coeff1, %struct.coeff1, %struct.coeff1, %struct.coeff1, i32, i32, i32, i64 }
%struct.coeff1 = type { i64, i64 }
%struct.point_scale_s = type { %struct.pixel_scale_s, %struct.pixel_scale_s }
%struct.pixel_scale_s = type { i64, i64, i32 }
%struct.font_hints_s = type { i32, i32, i32, i32, i32, %struct.point_scale_s, %struct.stem_snap_table, %struct.stem_snap_table, i64, i64, i32, i32, [12 x %struct.alignment_zone] }
%struct.stem_snap_table = type { i32, [13 x i64] }
%struct.alignment_zone = type { i32, i64, i64, i64 }
%struct.ip_state = type { ptr, i16, %struct.gs_const_string_s }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.stem_hint_table = type { i32, i32, i32, [96 x %struct.stem_hint] }
%struct.stem_hint = type { i64, i64, i64, i64 }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_font_type1_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, i32, i32, %struct.gs_type1_data_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_uid_s = type { i64, ptr }
%struct.gs_type1_data_s = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i64, i64, i64, i32, float, float, %struct.anon, float, i32, %struct.anon.0, %struct.anon.1, i32, %struct.anon.2, i32, %struct.anon.3, %struct.anon.4, %struct.anon.5, %struct.anon.6, %struct.anon.7 }
%struct.anon = type { i32, [14 x float] }
%struct.anon.0 = type { i32, [14 x float] }
%struct.anon.1 = type { i32, [10 x float] }
%struct.anon.2 = type { i32, [10 x float] }
%struct.anon.3 = type { i32, [1 x float] }
%struct.anon.4 = type { i32, [1 x float] }
%struct.anon.5 = type { i32, [12 x float] }
%struct.anon.6 = type { i32, [12 x float] }
%struct.anon.7 = type { i32, [16 x float] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @reset_stem_hints(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 36
  %3 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 36, i32 2
  store i32 0, ptr %3, align 8, !tbaa !5
  store i32 0, ptr %2, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 37
  %5 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 37, i32 2
  store i32 0, ptr %5, align 8, !tbaa !22
  store i32 0, ptr %4, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 36, i32 1
  store i32 0, ptr %6, align 4, !tbaa !24
  %7 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 37, i32 1
  store i32 0, ptr %7, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @update_stem_hints(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 36, i32 1
  store i32 0, ptr %2, align 4, !tbaa !24
  %3 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 37, i32 1
  store i32 0, ptr %3, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @type1_replace_stem_hints(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 36
  %3 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 36, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !26
  %5 = load i32, ptr %2, align 8, !tbaa !27
  %6 = add nsw i32 %5, %4
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 96)
  %8 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 36, i32 3
  %9 = sub nsw i32 96, %7
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 36, i32 3, i64 %10
  %12 = sext i32 %5 to i64
  %13 = shl nsw i64 %12, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %11, ptr nonnull align 8 %8, i64 %13, i1 false)
  store i32 %7, ptr %3, align 8, !tbaa !26
  %14 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 36, i32 1
  store i32 0, ptr %14, align 4, !tbaa !28
  store i32 0, ptr %2, align 8, !tbaa !27
  %15 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 37
  %16 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 37, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !26
  %18 = load i32, ptr %15, align 8, !tbaa !27
  %19 = add nsw i32 %18, %17
  %20 = tail call i32 @llvm.smin.i32(i32 %19, i32 96)
  %21 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 37, i32 3
  %22 = sub nsw i32 96, %20
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 37, i32 3, i64 %23
  %25 = sext i32 %18 to i64
  %26 = shl nsw i64 %25, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %24, ptr nonnull align 8 %21, i64 %26, i1 false)
  store i32 %20, ptr %16, align 8, !tbaa !26
  %27 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 37, i32 1
  store i32 0, ptr %27, align 4, !tbaa !28
  store i32 0, ptr %15, align 8, !tbaa !27
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @type1_do_hstem(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8
  %6 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !29
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %298, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %3, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !30
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %298, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 18, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !32
  %16 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 21, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !33
  %18 = add i64 %15, %1
  %19 = add i64 %18, %17
  %20 = load i32, ptr %5, align 8, !tbaa !34
  %21 = icmp eq i32 %20, 0
  %22 = add nsw i64 %19, 4194304
  %23 = and i64 %22, -8384513
  %24 = icmp eq i64 %23, 0
  %25 = shl i64 %19, 20
  %26 = ashr i64 %25, 32
  br i1 %21, label %82, label %27

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 7
  %29 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 30
  %30 = load i64, ptr %29, align 8, !tbaa !35
  br i1 %24, label %40, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 2, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !36
  %34 = mul nsw i64 %33, %26
  %35 = and i64 %19, 4095
  %36 = mul nsw i64 %33, %35
  %37 = add nsw i64 %36, 2048
  %38 = ashr i64 %37, 12
  %39 = add nsw i64 %38, %34
  br label %51

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !37
  %43 = mul nsw i64 %42, %26
  %44 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 7
  %45 = load i64, ptr %44, align 8, !tbaa !38
  %46 = add nsw i64 %43, %45
  %47 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !39
  %49 = zext nneg i32 %48 to i64
  %50 = ashr i64 %46, %49
  br label %51

51:                                               ; preds = %40, %31
  %52 = phi i64 [ %39, %31 ], [ %50, %40 ]
  %53 = add nsw i64 %52, %30
  %54 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %3, i64 0, i32 6
  %55 = load i64, ptr %54, align 8, !tbaa !40
  %56 = add nsw i64 %53, %55
  %57 = add nsw i64 %2, 4194304
  %58 = and i64 %57, -8384513
  %59 = icmp eq i64 %58, 0
  %60 = shl i64 %2, 20
  %61 = ashr i64 %60, 32
  br i1 %59, label %71, label %62

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 2, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !36
  %65 = mul nsw i64 %64, %61
  %66 = and i64 %2, 4095
  %67 = mul nsw i64 %64, %66
  %68 = add nsw i64 %67, 2048
  %69 = ashr i64 %68, 12
  %70 = add nsw i64 %69, %65
  br label %137

71:                                               ; preds = %51
  %72 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 2
  %73 = load i64, ptr %72, align 8, !tbaa !37
  %74 = mul nsw i64 %73, %61
  %75 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 7
  %76 = load i64, ptr %75, align 8, !tbaa !38
  %77 = add nsw i64 %74, %76
  %78 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 5
  %79 = load i32, ptr %78, align 4, !tbaa !39
  %80 = zext nneg i32 %79 to i64
  %81 = ashr i64 %77, %80
  br label %137

82:                                               ; preds = %13
  %83 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 7, i32 1
  %84 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 30, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !41
  br i1 %24, label %95, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 3, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !42
  %89 = mul nsw i64 %88, %26
  %90 = and i64 %19, 4095
  %91 = mul nsw i64 %88, %90
  %92 = add nsw i64 %91, 2048
  %93 = ashr i64 %92, 12
  %94 = add nsw i64 %93, %89
  br label %106

95:                                               ; preds = %82
  %96 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 3
  %97 = load i64, ptr %96, align 8, !tbaa !43
  %98 = mul nsw i64 %97, %26
  %99 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 7
  %100 = load i64, ptr %99, align 8, !tbaa !38
  %101 = add nsw i64 %98, %100
  %102 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 5
  %103 = load i32, ptr %102, align 4, !tbaa !39
  %104 = zext nneg i32 %103 to i64
  %105 = ashr i64 %101, %104
  br label %106

106:                                              ; preds = %95, %86
  %107 = phi i64 [ %94, %86 ], [ %105, %95 ]
  %108 = add nsw i64 %107, %85
  %109 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %3, i64 0, i32 7
  %110 = load i64, ptr %109, align 8, !tbaa !44
  %111 = add nsw i64 %108, %110
  %112 = add nsw i64 %2, 4194304
  %113 = and i64 %112, -8384513
  %114 = icmp eq i64 %113, 0
  %115 = shl i64 %2, 20
  %116 = ashr i64 %115, 32
  br i1 %114, label %126, label %117

117:                                              ; preds = %106
  %118 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 3, i32 1
  %119 = load i64, ptr %118, align 8, !tbaa !42
  %120 = mul nsw i64 %119, %116
  %121 = and i64 %2, 4095
  %122 = mul nsw i64 %119, %121
  %123 = add nsw i64 %122, 2048
  %124 = ashr i64 %123, 12
  %125 = add nsw i64 %124, %120
  br label %137

126:                                              ; preds = %106
  %127 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 3
  %128 = load i64, ptr %127, align 8, !tbaa !43
  %129 = mul nsw i64 %128, %116
  %130 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 7
  %131 = load i64, ptr %130, align 8, !tbaa !38
  %132 = add nsw i64 %129, %131
  %133 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 5
  %134 = load i32, ptr %133, align 4, !tbaa !39
  %135 = zext nneg i32 %134 to i64
  %136 = ashr i64 %132, %135
  br label %137

137:                                              ; preds = %117, %126, %62, %71
  %138 = phi i64 [ %70, %62 ], [ %81, %71 ], [ %125, %117 ], [ %136, %126 ]
  %139 = phi i64 [ %56, %62 ], [ %56, %71 ], [ %111, %117 ], [ %111, %126 ]
  %140 = phi ptr [ %28, %62 ], [ %28, %71 ], [ %83, %117 ], [ %83, %126 ]
  %141 = icmp slt i64 %2, 0
  %142 = add nsw i64 %139, %138
  %143 = select i1 %141, i64 %142, i64 %139
  %144 = select i1 %141, i64 %139, i64 %142
  %145 = icmp slt i64 %138, 0
  %146 = tail call i64 @llvm.abs.i64(i64 %138, i1 true)
  %147 = select i1 %145, i64 %142, i64 %139
  %148 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 36
  %149 = load i32, ptr %148, align 8, !tbaa !27
  %150 = icmp sgt i32 %149, 95
  br i1 %150, label %174, label %151

151:                                              ; preds = %137
  %152 = sext i32 %149 to i64
  %153 = shl nsw i64 %152, 5
  %154 = or disjoint i64 %153, 16
  %155 = getelementptr inbounds i8, ptr %148, i64 %154
  %156 = icmp sgt i32 %149, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %151, %164
  %158 = phi ptr [ %161, %164 ], [ %155, %151 ]
  %159 = phi i64 [ %160, %164 ], [ %154, %151 ]
  %160 = add nsw i64 %159, -32
  %161 = getelementptr inbounds i8, ptr %148, i64 %160
  %162 = load i64, ptr %161, align 8, !tbaa !45
  %163 = icmp sgt i64 %162, %147
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %158, ptr noundef nonnull align 8 dereferenceable(32) %161, i64 32, i1 false), !tbaa.struct !47
  %165 = icmp sgt i64 %159, 48
  br i1 %165, label %157, label %166, !llvm.loop !49

166:                                              ; preds = %164, %157, %151
  %167 = phi ptr [ %155, %151 ], [ %158, %157 ], [ %161, %164 ]
  %168 = add nsw i64 %147, -204
  store i64 %168, ptr %167, align 8, !tbaa !45
  %169 = add nuw i64 %146, 204
  %170 = add i64 %169, %147
  %171 = getelementptr inbounds %struct.stem_hint, ptr %167, i64 0, i32 1
  store i64 %170, ptr %171, align 8, !tbaa !51
  %172 = load i32, ptr %148, align 8, !tbaa !27
  %173 = add nsw i32 %172, 1
  store i32 %173, ptr %148, align 8, !tbaa !27
  br label %174

174:                                              ; preds = %137, %166
  %175 = phi ptr [ %167, %166 ], [ null, %137 ]
  %176 = icmp eq ptr %175, null
  br i1 %176, label %298, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 6
  %179 = load i64, ptr %140, align 8, !tbaa !52
  %180 = load i32, ptr %178, align 8, !tbaa !53
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %177
  %183 = zext nneg i32 %180 to i64
  br label %184

184:                                              ; preds = %184, %182
  %185 = phi i64 [ 0, %182 ], [ %194, %184 ]
  %186 = phi i64 [ %179, %182 ], [ %193, %184 ]
  %187 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 6, i32 1, i64 %185
  %188 = load i64, ptr %187, align 8, !tbaa !48
  %189 = sub nsw i64 %188, %146
  %190 = tail call i64 @llvm.abs.i64(i64 %189, i1 true)
  %191 = tail call i64 @llvm.abs.i64(i64 %186, i1 true)
  %192 = icmp ult i64 %190, %191
  %193 = select i1 %192, i64 %189, i64 %186
  %194 = add nuw nsw i64 %185, 1
  %195 = icmp eq i64 %194, %183
  br i1 %195, label %196, label %184, !llvm.loop !54

196:                                              ; preds = %184, %177
  %197 = phi i64 [ %179, %177 ], [ %193, %184 ]
  %198 = tail call i64 @llvm.abs.i64(i64 %197, i1 true)
  %199 = icmp slt i64 %198, %179
  %200 = select i1 %199, i64 %197, i64 0
  %201 = getelementptr inbounds %struct.pixel_scale_s, ptr %140, i64 0, i32 1
  %202 = load i64, ptr %201, align 8, !tbaa !55
  %203 = add i64 %202, %146
  %204 = add i64 %203, %200
  %205 = sub nsw i64 0, %179
  %206 = and i64 %204, %205
  %207 = icmp eq i64 %206, 0
  %208 = select i1 %207, i64 %179, i64 %206
  %209 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 11
  %210 = load i32, ptr %209, align 4, !tbaa !56
  %211 = sext i32 %210 to i64
  %212 = shl nsw i64 %211, 5
  %213 = add nsw i64 %212, 496
  br label %214

214:                                              ; preds = %232, %196
  %215 = phi i64 [ %213, %196 ], [ %217, %232 ]
  %216 = phi ptr [ undef, %196 ], [ %233, %232 ]
  %217 = add nsw i64 %215, -32
  %218 = getelementptr inbounds i8, ptr %0, i64 %217
  %219 = icmp slt i64 %215, 528
  br i1 %219, label %235, label %220

220:                                              ; preds = %214
  %221 = load i32, ptr %218, align 8, !tbaa !57
  %222 = icmp eq i32 %221, 0
  %223 = select i1 %222, i64 %143, i64 %144
  %224 = getelementptr inbounds %struct.alignment_zone, ptr %218, i64 0, i32 1
  %225 = load i64, ptr %224, align 8, !tbaa !59
  %226 = icmp slt i64 %223, %225
  br i1 %226, label %231, label %227

227:                                              ; preds = %220
  %228 = getelementptr inbounds %struct.alignment_zone, ptr %218, i64 0, i32 2
  %229 = load i64, ptr %228, align 8, !tbaa !60
  %230 = icmp sgt i64 %223, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %227, %220
  br label %232

232:                                              ; preds = %231, %227
  %233 = phi ptr [ %216, %231 ], [ %218, %227 ]
  %234 = phi i1 [ true, %231 ], [ false, %227 ]
  br i1 %234, label %214, label %235, !llvm.loop !61

235:                                              ; preds = %214, %232
  %236 = phi ptr [ %233, %232 ], [ null, %214 ]
  %237 = icmp eq ptr %236, null
  br i1 %237, label %297, label %238

238:                                              ; preds = %235
  %239 = load i32, ptr %5, align 8, !tbaa !34
  %240 = icmp eq i32 %239, 0
  %241 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 1
  %242 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 2
  %243 = select i1 %240, ptr %242, ptr %241
  %244 = load i32, ptr %243, align 4, !tbaa !62
  %245 = icmp eq i32 %244, 0
  %246 = load i32, ptr %236, align 8, !tbaa !57
  %247 = icmp eq i32 %246, 0
  %248 = zext i1 %247 to i32
  %249 = select i1 %245, i32 %246, i32 %248
  %250 = getelementptr inbounds %struct.alignment_zone, ptr %236, i64 0, i32 3
  %251 = load i64, ptr %250, align 8, !tbaa !63
  %252 = icmp eq i32 %246, 0
  %253 = sub nsw i64 %144, %251
  %254 = sub nsw i64 %251, %143
  %255 = select i1 %252, i64 %254, i64 %253
  %256 = sub nsw i64 0, %255
  %257 = select i1 %245, i64 %255, i64 %256
  %258 = sub nsw i64 %208, %146
  %259 = add nsw i64 %251, %202
  %260 = and i64 %259, %205
  %261 = sub nsw i64 %260, %251
  %262 = icmp sgt i64 %257, 0
  br i1 %262, label %263, label %286

263:                                              ; preds = %238
  %264 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 9
  %265 = load i64, ptr %264, align 8, !tbaa !64
  %266 = icmp slt i64 %257, %265
  br i1 %266, label %271, label %267

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 10
  %269 = load i32, ptr %268, align 8, !tbaa !65
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %263, %267
  br i1 %252, label %274, label %272

272:                                              ; preds = %271
  %273 = sub nsw i64 %261, %255
  br label %286

274:                                              ; preds = %271
  %275 = add nsw i64 %261, %255
  br label %286

276:                                              ; preds = %267
  %277 = icmp slt i64 %257, %179
  br i1 %277, label %278, label %286

278:                                              ; preds = %276
  %279 = icmp slt i64 %255, 0
  %280 = select i1 %279, i64 %205, i64 %179
  %281 = sub nsw i64 %280, %255
  br i1 %252, label %284, label %282

282:                                              ; preds = %278
  %283 = add nsw i64 %281, %261
  br label %286

284:                                              ; preds = %278
  %285 = sub nsw i64 %261, %281
  br label %286

286:                                              ; preds = %274, %272, %282, %284, %276, %238
  %287 = phi i64 [ %273, %272 ], [ %275, %274 ], [ %283, %282 ], [ %285, %284 ], [ %261, %276 ], [ %261, %238 ]
  %288 = icmp eq i32 %249, 0
  br i1 %288, label %293, label %289

289:                                              ; preds = %286
  %290 = getelementptr inbounds %struct.stem_hint, ptr %175, i64 0, i32 3
  store i64 %287, ptr %290, align 8, !tbaa !66
  %291 = sub nsw i64 %287, %258
  %292 = getelementptr inbounds %struct.stem_hint, ptr %175, i64 0, i32 2
  store i64 %291, ptr %292, align 8, !tbaa !67
  br label %298

293:                                              ; preds = %286
  %294 = getelementptr inbounds %struct.stem_hint, ptr %175, i64 0, i32 2
  store i64 %287, ptr %294, align 8, !tbaa !67
  %295 = add nsw i64 %287, %258
  %296 = getelementptr inbounds %struct.stem_hint, ptr %175, i64 0, i32 3
  store i64 %295, ptr %296, align 8, !tbaa !66
  br label %298

297:                                              ; preds = %235
  tail call fastcc void @store_stem_deltas(ptr noundef nonnull %148, ptr noundef nonnull %175, ptr noundef nonnull %140, i64 noundef %147, i64 noundef %146, i64 noundef %208)
  br label %298

298:                                              ; preds = %297, %289, %293, %174, %4, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @store_stem_deltas(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #4 {
  %7 = getelementptr inbounds %struct.stem_hint_table, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !26
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = sub nsw i32 96, %8
  %12 = getelementptr inbounds %struct.stem_hint, ptr %1, i64 0, i32 1
  %13 = sext i32 %11 to i64
  br label %22

14:                                               ; preds = %38, %6
  %15 = phi ptr [ null, %6 ], [ %39, %38 ]
  %16 = phi ptr [ null, %6 ], [ %40, %38 ]
  %17 = load i32, ptr %0, align 8, !tbaa !27
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.stem_hint, ptr %1, i64 0, i32 1
  %21 = zext nneg i32 %17 to i64
  br label %44

22:                                               ; preds = %10, %38
  %23 = phi i64 [ %13, %10 ], [ %41, %38 ]
  %24 = phi ptr [ null, %10 ], [ %40, %38 ]
  %25 = phi ptr [ null, %10 ], [ %39, %38 ]
  %26 = getelementptr inbounds %struct.stem_hint_table, ptr %0, i64 0, i32 3, i64 %23
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %38, label %28

28:                                               ; preds = %22
  %29 = load i64, ptr %26, align 8, !tbaa !45
  %30 = load i64, ptr %1, align 8, !tbaa !45
  %31 = icmp eq i64 %29, %30
  %32 = select i1 %31, ptr %26, ptr %24
  %33 = getelementptr inbounds %struct.stem_hint_table, ptr %0, i64 0, i32 3, i64 %23, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !51
  %35 = load i64, ptr %12, align 8, !tbaa !51
  %36 = icmp eq i64 %34, %35
  %37 = select i1 %36, ptr %26, ptr %25
  br label %38

38:                                               ; preds = %22, %28
  %39 = phi ptr [ %37, %28 ], [ %25, %22 ]
  %40 = phi ptr [ %32, %28 ], [ %24, %22 ]
  %41 = add nsw i64 %23, 1
  %42 = and i64 %41, 4294967295
  %43 = icmp eq i64 %42, 96
  br i1 %43, label %14, label %22, !llvm.loop !68

44:                                               ; preds = %19, %60
  %45 = phi i64 [ 0, %19 ], [ %63, %60 ]
  %46 = phi ptr [ %16, %19 ], [ %62, %60 ]
  %47 = phi ptr [ %15, %19 ], [ %61, %60 ]
  %48 = getelementptr inbounds %struct.stem_hint_table, ptr %0, i64 0, i32 3, i64 %45
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %60, label %50

50:                                               ; preds = %44
  %51 = load i64, ptr %48, align 8, !tbaa !45
  %52 = load i64, ptr %1, align 8, !tbaa !45
  %53 = icmp eq i64 %51, %52
  %54 = select i1 %53, ptr %48, ptr %46
  %55 = getelementptr inbounds %struct.stem_hint_table, ptr %0, i64 0, i32 3, i64 %45, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !51
  %57 = load i64, ptr %20, align 8, !tbaa !51
  %58 = icmp eq i64 %56, %57
  %59 = select i1 %58, ptr %48, ptr %47
  br label %60

60:                                               ; preds = %44, %50
  %61 = phi ptr [ %59, %50 ], [ %47, %44 ]
  %62 = phi ptr [ %54, %50 ], [ %46, %44 ]
  %63 = add nuw nsw i64 %45, 1
  %64 = icmp eq i64 %63, %21
  br i1 %64, label %65, label %44, !llvm.loop !69

65:                                               ; preds = %60, %14
  %66 = phi ptr [ %15, %14 ], [ %61, %60 ]
  %67 = phi ptr [ %16, %14 ], [ %62, %60 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %81, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.stem_hint, ptr %67, i64 0, i32 2
  %71 = load i64, ptr %70, align 8, !tbaa !67
  %72 = getelementptr inbounds %struct.stem_hint, ptr %1, i64 0, i32 2
  store i64 %71, ptr %72, align 8, !tbaa !67
  %73 = icmp eq ptr %66, null
  %74 = getelementptr inbounds %struct.stem_hint, ptr %1, i64 0, i32 3
  br i1 %73, label %78, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.stem_hint, ptr %66, i64 0, i32 3
  %77 = load i64, ptr %76, align 8, !tbaa !66
  store i64 %77, ptr %74, align 8, !tbaa !66
  br label %105

78:                                               ; preds = %69
  %79 = sub i64 %5, %4
  %80 = add i64 %79, %71
  store i64 %80, ptr %74, align 8, !tbaa !66
  br label %105

81:                                               ; preds = %65
  %82 = icmp eq ptr %66, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.stem_hint, ptr %66, i64 0, i32 3
  %85 = load i64, ptr %84, align 8, !tbaa !66
  %86 = getelementptr inbounds %struct.stem_hint, ptr %1, i64 0, i32 3
  store i64 %85, ptr %86, align 8, !tbaa !66
  %87 = sub i64 %5, %4
  %88 = add i64 %87, %85
  %89 = getelementptr inbounds %struct.stem_hint, ptr %1, i64 0, i32 2
  store i64 %88, ptr %89, align 8, !tbaa !67
  br label %105

90:                                               ; preds = %81
  %91 = sub nsw i64 %5, %4
  %92 = ashr i64 %91, 1
  %93 = sub nsw i64 %3, %92
  %94 = getelementptr inbounds %struct.pixel_scale_s, ptr %2, i64 0, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !55
  %96 = add nsw i64 %95, %93
  %97 = load i64, ptr %2, align 8, !tbaa !52
  %98 = sub nsw i64 0, %97
  %99 = and i64 %96, %98
  %100 = sub nsw i64 %99, %93
  %101 = sub nsw i64 %100, %92
  %102 = getelementptr inbounds %struct.stem_hint, ptr %1, i64 0, i32 2
  store i64 %101, ptr %102, align 8, !tbaa !67
  %103 = add nsw i64 %100, %92
  %104 = getelementptr inbounds %struct.stem_hint, ptr %1, i64 0, i32 3
  store i64 %103, ptr %104, align 8, !tbaa !66
  br label %105

105:                                              ; preds = %83, %90, %75, %78
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @type1_do_vstem(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !70
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %207, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8
  %10 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 18
  %11 = load i64, ptr %10, align 8, !tbaa !71
  %12 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 21
  %13 = load i64, ptr %12, align 8, !tbaa !72
  %14 = add i64 %11, %1
  %15 = add i64 %14, %13
  %16 = load i32, ptr %9, align 8, !tbaa !34
  %17 = icmp eq i32 %16, 0
  %18 = add nsw i64 %15, 4194304
  %19 = and i64 %18, -8384513
  %20 = icmp eq i64 %19, 0
  %21 = shl i64 %15, 20
  %22 = ashr i64 %21, 32
  br i1 %17, label %78, label %23

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 7, i32 1
  %25 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 30, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !41
  br i1 %20, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 1, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !73
  %30 = mul nsw i64 %29, %22
  %31 = and i64 %15, 4095
  %32 = mul nsw i64 %29, %31
  %33 = add nsw i64 %32, 2048
  %34 = ashr i64 %33, 12
  %35 = add nsw i64 %34, %30
  br label %47

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !74
  %39 = mul nsw i64 %38, %22
  %40 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 7
  %41 = load i64, ptr %40, align 8, !tbaa !38
  %42 = add nsw i64 %39, %41
  %43 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 5
  %44 = load i32, ptr %43, align 4, !tbaa !39
  %45 = zext nneg i32 %44 to i64
  %46 = ashr i64 %42, %45
  br label %47

47:                                               ; preds = %36, %27
  %48 = phi i64 [ %35, %27 ], [ %46, %36 ]
  %49 = add nsw i64 %48, %26
  %50 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %3, i64 0, i32 7
  %51 = load i64, ptr %50, align 8, !tbaa !44
  %52 = add nsw i64 %49, %51
  %53 = add nsw i64 %2, 4194304
  %54 = and i64 %53, -8384513
  %55 = icmp eq i64 %54, 0
  %56 = shl i64 %2, 20
  %57 = ashr i64 %56, 32
  br i1 %55, label %67, label %58

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 1, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !73
  %61 = mul nsw i64 %60, %57
  %62 = and i64 %2, 4095
  %63 = mul nsw i64 %60, %62
  %64 = add nsw i64 %63, 2048
  %65 = ashr i64 %64, 12
  %66 = add nsw i64 %65, %61
  br label %133

67:                                               ; preds = %47
  %68 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !74
  %70 = mul nsw i64 %69, %57
  %71 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 7
  %72 = load i64, ptr %71, align 8, !tbaa !38
  %73 = add nsw i64 %70, %72
  %74 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 5
  %75 = load i32, ptr %74, align 4, !tbaa !39
  %76 = zext nneg i32 %75 to i64
  %77 = ashr i64 %73, %76
  br label %133

78:                                               ; preds = %8
  %79 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 7
  %80 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 30
  %81 = load i64, ptr %80, align 8, !tbaa !35
  br i1 %20, label %91, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 0, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !75
  %85 = mul nsw i64 %84, %22
  %86 = and i64 %15, 4095
  %87 = mul nsw i64 %84, %86
  %88 = add nsw i64 %87, 2048
  %89 = ashr i64 %88, 12
  %90 = add nsw i64 %89, %85
  br label %102

91:                                               ; preds = %78
  %92 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5
  %93 = load i64, ptr %92, align 8, !tbaa !76
  %94 = mul nsw i64 %93, %22
  %95 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 7
  %96 = load i64, ptr %95, align 8, !tbaa !38
  %97 = add nsw i64 %94, %96
  %98 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 5
  %99 = load i32, ptr %98, align 4, !tbaa !39
  %100 = zext nneg i32 %99 to i64
  %101 = ashr i64 %97, %100
  br label %102

102:                                              ; preds = %91, %82
  %103 = phi i64 [ %90, %82 ], [ %101, %91 ]
  %104 = add nsw i64 %103, %81
  %105 = getelementptr inbounds %struct.gs_matrix_fixed_s, ptr %3, i64 0, i32 6
  %106 = load i64, ptr %105, align 8, !tbaa !40
  %107 = add nsw i64 %104, %106
  %108 = add nsw i64 %2, 4194304
  %109 = and i64 %108, -8384513
  %110 = icmp eq i64 %109, 0
  %111 = shl i64 %2, 20
  %112 = ashr i64 %111, 32
  br i1 %110, label %122, label %113

113:                                              ; preds = %102
  %114 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 0, i32 1
  %115 = load i64, ptr %114, align 8, !tbaa !75
  %116 = mul nsw i64 %115, %112
  %117 = and i64 %2, 4095
  %118 = mul nsw i64 %115, %117
  %119 = add nsw i64 %118, 2048
  %120 = ashr i64 %119, 12
  %121 = add nsw i64 %120, %116
  br label %133

122:                                              ; preds = %102
  %123 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5
  %124 = load i64, ptr %123, align 8, !tbaa !76
  %125 = mul nsw i64 %124, %112
  %126 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 7
  %127 = load i64, ptr %126, align 8, !tbaa !38
  %128 = add nsw i64 %125, %127
  %129 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5, i32 5
  %130 = load i32, ptr %129, align 4, !tbaa !39
  %131 = zext nneg i32 %130 to i64
  %132 = ashr i64 %128, %131
  br label %133

133:                                              ; preds = %113, %122, %58, %67
  %134 = phi ptr [ %24, %67 ], [ %24, %58 ], [ %79, %122 ], [ %79, %113 ]
  %135 = phi i64 [ %52, %67 ], [ %52, %58 ], [ %107, %122 ], [ %107, %113 ]
  %136 = phi i64 [ %77, %67 ], [ %66, %58 ], [ %132, %122 ], [ %121, %113 ]
  %137 = tail call i64 @llvm.smin.i64(i64 %136, i64 0)
  %138 = add nsw i64 %137, %135
  %139 = tail call i64 @llvm.abs.i64(i64 %136, i1 true)
  %140 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 37
  %141 = load i32, ptr %140, align 8, !tbaa !27
  %142 = icmp sgt i32 %141, 95
  br i1 %142, label %166, label %143

143:                                              ; preds = %133
  %144 = sext i32 %141 to i64
  %145 = shl nsw i64 %144, 5
  %146 = or disjoint i64 %145, 16
  %147 = getelementptr inbounds i8, ptr %140, i64 %146
  %148 = icmp sgt i32 %141, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %143, %156
  %150 = phi ptr [ %153, %156 ], [ %147, %143 ]
  %151 = phi i64 [ %152, %156 ], [ %146, %143 ]
  %152 = add nsw i64 %151, -32
  %153 = getelementptr inbounds i8, ptr %140, i64 %152
  %154 = load i64, ptr %153, align 8, !tbaa !45
  %155 = icmp sgt i64 %154, %138
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %150, ptr noundef nonnull align 8 dereferenceable(32) %153, i64 32, i1 false), !tbaa.struct !47
  %157 = icmp sgt i64 %151, 48
  br i1 %157, label %149, label %158, !llvm.loop !49

158:                                              ; preds = %156, %149, %143
  %159 = phi ptr [ %147, %143 ], [ %150, %149 ], [ %153, %156 ]
  %160 = add nsw i64 %138, -204
  store i64 %160, ptr %159, align 8, !tbaa !45
  %161 = add nuw i64 %139, 204
  %162 = add i64 %161, %138
  %163 = getelementptr inbounds %struct.stem_hint, ptr %159, i64 0, i32 1
  store i64 %162, ptr %163, align 8, !tbaa !51
  %164 = load i32, ptr %140, align 8, !tbaa !27
  %165 = add nsw i32 %164, 1
  store i32 %165, ptr %140, align 8, !tbaa !27
  br label %166

166:                                              ; preds = %133, %158
  %167 = phi ptr [ %159, %158 ], [ null, %133 ]
  %168 = icmp eq ptr %167, null
  br i1 %168, label %207, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 7
  %171 = load i64, ptr %134, align 8, !tbaa !52
  %172 = load i32, ptr %170, align 8, !tbaa !53
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %188

174:                                              ; preds = %169
  %175 = zext nneg i32 %172 to i64
  br label %176

176:                                              ; preds = %176, %174
  %177 = phi i64 [ 0, %174 ], [ %186, %176 ]
  %178 = phi i64 [ %171, %174 ], [ %185, %176 ]
  %179 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 7, i32 1, i64 %177
  %180 = load i64, ptr %179, align 8, !tbaa !48
  %181 = sub nsw i64 %180, %139
  %182 = tail call i64 @llvm.abs.i64(i64 %181, i1 true)
  %183 = tail call i64 @llvm.abs.i64(i64 %178, i1 true)
  %184 = icmp ult i64 %182, %183
  %185 = select i1 %184, i64 %181, i64 %178
  %186 = add nuw nsw i64 %177, 1
  %187 = icmp eq i64 %186, %175
  br i1 %187, label %188, label %176, !llvm.loop !54

188:                                              ; preds = %176, %169
  %189 = phi i64 [ %171, %169 ], [ %185, %176 ]
  %190 = tail call i64 @llvm.abs.i64(i64 %189, i1 true)
  %191 = icmp slt i64 %190, %171
  %192 = select i1 %191, i64 %189, i64 0
  %193 = getelementptr inbounds %struct.pixel_scale_s, ptr %134, i64 0, i32 1
  %194 = load i64, ptr %193, align 8, !tbaa !55
  %195 = add i64 %194, %139
  %196 = add i64 %195, %192
  %197 = sub nsw i64 0, %171
  %198 = and i64 %196, %197
  %199 = icmp eq i64 %198, 0
  %200 = select i1 %199, i64 %171, i64 %198
  %201 = load ptr, ptr %0, align 8, !tbaa !77
  %202 = getelementptr inbounds %struct.gs_font_type1_s, ptr %201, i64 0, i32 22, i32 17
  %203 = load i32, ptr %202, align 4, !tbaa !78
  %204 = icmp eq i32 %203, 0
  %205 = tail call i64 @llvm.smax.i64(i64 %200, i64 %171)
  %206 = select i1 %204, i64 %200, i64 %205
  tail call fastcc void @store_stem_deltas(ptr noundef nonnull %140, ptr noundef nonnull %167, ptr noundef nonnull %134, i64 noundef %138, i64 noundef %139, i64 noundef %206)
  br label %207

207:                                              ; preds = %166, %4, %188
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @type1_do_center_vstem(ptr nocapture noundef writeonly %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = alloca %struct.gs_fixed_point_s, align 8
  %6 = alloca %struct.gs_fixed_point_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %7 = sitofp i64 %1 to double
  %8 = fmul double %7, 0x3F30000000000000
  %9 = call i32 @gs_point_transform2fixed(ptr noundef %3, double noundef %8, double noundef 0.000000e+00, ptr noundef nonnull %5) #9
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %49, label %11

11:                                               ; preds = %4
  %12 = add nsw i64 %2, %1
  %13 = sitofp i64 %12 to double
  %14 = fmul double %13, 0x3F30000000000000
  %15 = call i32 @gs_point_transform2fixed(ptr noundef %3, double noundef %14, double noundef 0.000000e+00, ptr noundef nonnull %6) #9
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %5, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !90
  %20 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %6, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !90
  %22 = sub nsw i64 %19, %21
  %23 = call i64 @llvm.abs.i64(i64 %22, i1 true)
  %24 = icmp ult i64 %23, 204
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load i64, ptr %5, align 8, !tbaa !91
  %27 = load i64, ptr %6, align 8, !tbaa !91
  %28 = sub nsw i64 %26, %27
  %29 = call i64 @llvm.abs.i64(i64 %28, i1 true)
  %30 = add nsw i64 %27, %26
  %31 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 30
  br label %35

32:                                               ; preds = %17
  %33 = add nsw i64 %21, %19
  %34 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 30, i32 1
  br label %35

35:                                               ; preds = %32, %25
  %36 = phi i64 [ %30, %25 ], [ %33, %32 ]
  %37 = phi i64 [ %29, %25 ], [ %23, %32 ]
  %38 = phi ptr [ %31, %25 ], [ %34, %32 ]
  %39 = add nuw nsw i64 %37, 2048
  %40 = ashr i64 %36, 1
  %41 = and i64 %39, 4096
  %42 = icmp eq i64 %41, 0
  %43 = add nsw i64 %40, 2048
  %44 = and i64 %43, -4096
  %45 = and i64 %40, -4096
  %46 = or disjoint i64 %45, 2048
  %47 = select i1 %42, i64 %46, i64 %44
  %48 = sub nsw i64 %47, %40
  store i64 %48, ptr %38, align 8, !tbaa !48
  br label %49

49:                                               ; preds = %4, %11, %35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  ret void
}

declare i32 @gs_point_transform2fixed(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 1976}
!6 = !{!"gs_type1_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !11, i64 32, !14, i64 120, !15, i64 128, !17, i64 176, !19, i64 880, !8, i64 896, !10, i64 1280, !8, i64 1288, !10, i64 1640, !10, i64 1644, !10, i64 1648, !10, i64 1652, !10, i64 1656, !19, i64 1664, !19, i64 1680, !10, i64 1696, !19, i64 1704, !13, i64 1720, !19, i64 1728, !10, i64 1744, !8, i64 1752, !10, i64 1880, !10, i64 1884, !10, i64 1888, !10, i64 1892, !19, i64 1896, !10, i64 1912, !19, i64 1920, !7, i64 1936, !10, i64 1944, !19, i64 1952, !20, i64 1968, !20, i64 5056, !8, i64 8144}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 16, !12, i64 32, !12, i64 48, !10, i64 64, !10, i64 68, !10, i64 72, !13, i64 80}
!12 = !{!"", !13, i64 0, !13, i64 8}
!13 = !{!"long", !8, i64 0}
!14 = !{!"float", !8, i64 0}
!15 = !{!"point_scale_s", !16, i64 0, !16, i64 24}
!16 = !{!"pixel_scale_s", !13, i64 0, !13, i64 8, !10, i64 16}
!17 = !{!"font_hints_s", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !15, i64 24, !18, i64 72, !18, i64 184, !13, i64 296, !13, i64 304, !10, i64 312, !10, i64 316, !8, i64 320}
!18 = !{!"", !10, i64 0, !8, i64 8}
!19 = !{!"gs_fixed_point_s", !13, i64 0, !13, i64 8}
!20 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !8, i64 16}
!21 = !{!6, !10, i64 1968}
!22 = !{!6, !10, i64 5064}
!23 = !{!6, !10, i64 5056}
!24 = !{!6, !10, i64 1972}
!25 = !{!6, !10, i64 5060}
!26 = !{!20, !10, i64 8}
!27 = !{!20, !10, i64 0}
!28 = !{!20, !10, i64 4}
!29 = !{!6, !10, i64 192}
!30 = !{!31, !10, i64 40}
!31 = !{!"gs_matrix_fixed_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !13, i64 24, !13, i64 32, !10, i64 40}
!32 = !{!6, !13, i64 1672}
!33 = !{!6, !13, i64 1712}
!34 = !{!6, !10, i64 176}
!35 = !{!6, !13, i64 1896}
!36 = !{!6, !13, i64 72}
!37 = !{!6, !13, i64 64}
!38 = !{!6, !13, i64 112}
!39 = !{!6, !10, i64 100}
!40 = !{!31, !13, i64 24}
!41 = !{!6, !13, i64 1904}
!42 = !{!6, !13, i64 88}
!43 = !{!6, !13, i64 80}
!44 = !{!31, !13, i64 32}
!45 = !{!46, !13, i64 0}
!46 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!47 = !{i64 0, i64 8, !48, i64 8, i64 8, !48, i64 16, i64 8, !48, i64 24, i64 8, !48}
!48 = !{!13, !13, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!46, !13, i64 8}
!52 = !{!16, !13, i64 0}
!53 = !{!18, !10, i64 0}
!54 = distinct !{!54, !50}
!55 = !{!16, !13, i64 8}
!56 = !{!6, !10, i64 492}
!57 = !{!58, !10, i64 0}
!58 = !{!"", !10, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!59 = !{!58, !13, i64 8}
!60 = !{!58, !13, i64 16}
!61 = distinct !{!61, !50}
!62 = !{!10, !10, i64 0}
!63 = !{!58, !13, i64 24}
!64 = !{!6, !13, i64 480}
!65 = !{!6, !10, i64 488}
!66 = !{!46, !13, i64 24}
!67 = !{!46, !13, i64 16}
!68 = distinct !{!68, !50}
!69 = distinct !{!69, !50}
!70 = !{!6, !10, i64 188}
!71 = !{!6, !13, i64 1664}
!72 = !{!6, !13, i64 1704}
!73 = !{!6, !13, i64 56}
!74 = !{!6, !13, i64 48}
!75 = !{!6, !13, i64 40}
!76 = !{!6, !13, i64 32}
!77 = !{!6, !7, i64 0}
!78 = !{!79, !10, i64 500}
!79 = !{!"gs_font_type1_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !80, i64 48, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !14, i64 100, !81, i64 104, !83, i64 176, !83, i64 228, !84, i64 280, !87, i64 312, !10, i64 328, !10, i64 332, !88, i64 336}
!80 = !{!"gs_matrix_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20}
!81 = !{!"gs_font_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !82, i64 32, !7, i64 48, !7, i64 56, !7, i64 64}
!82 = !{!"gx_xfont_callbacks_s", !7, i64 0, !7, i64 8}
!83 = !{!"gs_font_name_s", !8, i64 0, !10, i64 48}
!84 = !{!"gs_rect_s", !85, i64 0, !85, i64 16}
!85 = !{!"gs_point_s", !86, i64 0, !86, i64 8}
!86 = !{!"double", !8, i64 0}
!87 = !{!"gs_uid_s", !13, i64 0, !7, i64 8}
!88 = !{!"gs_type1_data_s", !10, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !10, i64 88, !14, i64 92, !14, i64 96, !89, i64 100, !14, i64 160, !10, i64 164, !89, i64 168, !89, i64 228, !10, i64 272, !89, i64 276, !10, i64 320, !89, i64 324, !89, i64 332, !89, i64 340, !89, i64 392, !89, i64 444}
!89 = !{!"", !10, i64 0, !8, i64 4}
!90 = !{!19, !13, i64 8}
!91 = !{!19, !13, i64 0}
