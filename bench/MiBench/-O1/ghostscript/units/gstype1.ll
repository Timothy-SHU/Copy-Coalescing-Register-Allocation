; ModuleID = 'gstype1.c'
source_filename = "gstype1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_op1_state_s = type { ptr, ptr, %struct.fixed_coeff, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.fixed_coeff = type { %struct.coeff1, %struct.coeff1, %struct.coeff1, %struct.coeff1, i32, i32, i32, i64 }
%struct.coeff1 = type { i64, i64 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_const_string_s = type { ptr, i32 }
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
%struct.gs_type1_state_s = type { ptr, ptr, ptr, i32, i32, %struct.fixed_coeff, float, %struct.point_scale_s, %struct.font_hints_s, %struct.gs_fixed_point_s, [48 x i64], i32, [11 x %struct.ip_state], i32, i32, i32, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32, %struct.gs_fixed_point_s, i64, %struct.gs_fixed_point_s, i32, [8 x %struct.gs_fixed_point_s], i32, i32, i32, i32, %struct.gs_fixed_point_s, i32, %struct.gs_fixed_point_s, ptr, i32, %struct.gs_fixed_point_s, %struct.stem_hint_table, %struct.stem_hint_table, [32 x i64] }
%struct.point_scale_s = type { %struct.pixel_scale_s, %struct.pixel_scale_s }
%struct.pixel_scale_s = type { i64, i64, i32 }
%struct.font_hints_s = type { i32, i32, i32, i32, i32, %struct.point_scale_s, %struct.stem_snap_table, %struct.stem_snap_table, i64, i64, i32, i32, [12 x %struct.alignment_zone] }
%struct.stem_snap_table = type { i32, [13 x i64] }
%struct.alignment_zone = type { i32, i64, i64, i64 }
%struct.ip_state = type { ptr, i16, %struct.gs_const_string_s }
%struct.stem_hint_table = type { i32, i32, i32, [96 x %struct.stem_hint] }
%struct.stem_hint = type { i64, i64, i64, i64 }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }

@gs_charstring_interpreter = external local_unnamed_addr global [3 x ptr], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @gs_gstype1_init(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store ptr @gs_type1_charstring_interpret, ptr getelementptr inbounds ([3 x ptr], ptr @gs_charstring_interpreter, i64 0, i64 1), align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_type1_charstring_interpret(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = alloca %struct.gs_op1_state_s, align 8
  %5 = alloca [48 x i64], align 16
  %6 = alloca %struct.gs_const_string_s, align 8
  %7 = alloca %struct.gs_const_string_s, align 8
  %8 = alloca %struct.gs_fixed_point_s, align 8
  %9 = load ptr, ptr %0, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.gs_font_type1_s, ptr %9, i64 0, i32 22, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !22
  %12 = icmp sgt i32 %11, -1
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %5) #7
  %13 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12
  %14 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !25
  %16 = add nsw i32 %15, -1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 %17
  %19 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 9
  %20 = load i64, ptr %19, align 8, !tbaa !26
  %21 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 9, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !27
  %23 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 14
  %24 = load i32, ptr %23, align 4, !tbaa !28
  switch i32 %24, label %28 [
    i32 -1, label %37
    i32 0, label %25
  ]

25:                                               ; preds = %3
  call void @gs_type1_finish_init(ptr noundef nonnull %0, ptr noundef nonnull %4) #7
  %26 = load i64, ptr %19, align 8, !tbaa !26
  %27 = load i64, ptr %21, align 8, !tbaa !27
  br label %37

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 23
  %30 = load i64, ptr %29, align 8, !tbaa !29
  %31 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  store i64 %30, ptr %31, align 8, !tbaa !30
  %32 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 23, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !32
  %34 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  store i64 %33, ptr %34, align 8, !tbaa !33
  %35 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2
  %36 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %35, ptr noundef nonnull align 8 dereferenceable(88) %36, i64 88, i1 false), !tbaa.struct !34
  br label %37

37:                                               ; preds = %28, %25, %3
  %38 = phi i64 [ %22, %28 ], [ %27, %25 ], [ %22, %3 ]
  %39 = phi i64 [ %20, %28 ], [ %26, %25 ], [ %20, %3 ]
  %40 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !37
  store ptr %41, ptr %4, align 8, !tbaa !38
  %42 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 1
  store ptr %0, ptr %42, align 8, !tbaa !39
  %43 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 11
  %44 = load i32, ptr %43, align 8, !tbaa !40
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = getelementptr inbounds i64, ptr %5, i64 -1
  br label %55

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 10
  %50 = sext i32 %44 to i64
  %51 = shl nsw i64 %50, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 8 %49, i64 %51, i1 false)
  %52 = add nsw i32 %44, -1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 %53
  br label %55

55:                                               ; preds = %48, %46
  %56 = phi ptr [ %47, %46 ], [ %54, %48 ]
  %57 = icmp eq ptr %1, null
  br i1 %57, label %86, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 %17, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %59, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !41
  %60 = load ptr, ptr %1, align 8, !tbaa !42
  br label %61

61:                                               ; preds = %1286, %58
  %62 = phi i32 [ 0, %58 ], [ %1288, %1286 ]
  %63 = phi ptr [ %60, %58 ], [ %1290, %1286 ]
  %64 = phi ptr [ %18, %58 ], [ %1291, %1286 ]
  %65 = phi ptr [ %56, %58 ], [ %1292, %1286 ]
  %66 = phi i32 [ undef, %58 ], [ %1293, %1286 ]
  br i1 %12, label %67, label %94

67:                                               ; preds = %61
  %68 = load i32, ptr %10, align 8, !tbaa !22
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %67
  %71 = zext nneg i32 %68 to i64
  br label %72

72:                                               ; preds = %70, %72
  %73 = phi ptr [ %81, %72 ], [ %63, %70 ]
  %74 = phi i16 [ %80, %72 ], [ 4330, %70 ]
  %75 = phi i32 [ %82, %72 ], [ %68, %70 ]
  %76 = load i8, ptr %73, align 1, !tbaa !44
  %77 = zext i8 %76 to i16
  %78 = add i16 %74, %77
  %79 = mul i16 %78, -12691
  %80 = add i16 %79, 22719
  %81 = getelementptr inbounds i8, ptr %73, i64 1
  %82 = add nsw i32 %75, -1
  %83 = icmp sgt i32 %75, 1
  br i1 %83, label %72, label %84, !llvm.loop !45

84:                                               ; preds = %72
  %85 = getelementptr i8, ptr %63, i64 %71
  br label %94

86:                                               ; preds = %1286, %55
  %87 = phi i32 [ 0, %55 ], [ %1288, %1286 ]
  %88 = phi ptr [ %18, %55 ], [ %1291, %1286 ]
  %89 = phi ptr [ %56, %55 ], [ %1292, %1286 ]
  %90 = phi i32 [ undef, %55 ], [ %1293, %1286 ]
  %91 = load ptr, ptr %88, align 8, !tbaa !47
  %92 = getelementptr inbounds %struct.ip_state, ptr %88, i64 0, i32 1
  %93 = load i16, ptr %92, align 8, !tbaa !50
  br label %94

94:                                               ; preds = %61, %67, %84, %86
  %95 = phi i32 [ %87, %86 ], [ %62, %84 ], [ %62, %67 ], [ %62, %61 ]
  %96 = phi i16 [ %93, %86 ], [ %80, %84 ], [ 4330, %67 ], [ 4330, %61 ]
  %97 = phi ptr [ %91, %86 ], [ %85, %84 ], [ %63, %67 ], [ %63, %61 ]
  %98 = phi ptr [ %88, %86 ], [ %64, %84 ], [ %64, %67 ], [ %64, %61 ]
  %99 = phi ptr [ %89, %86 ], [ %65, %84 ], [ %65, %67 ], [ %65, %61 ]
  %100 = phi i32 [ %90, %86 ], [ %66, %84 ], [ %66, %67 ], [ %66, %61 ]
  %101 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %102 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %103 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 0, i32 1
  %104 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2
  %105 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %106 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %107 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 4
  %108 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 1, i32 1
  %109 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 1
  %110 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %111 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %112 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 1
  %113 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 2
  %114 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 3
  %115 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 3, i32 1
  %116 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 3
  %117 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %118 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %119 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 2, i32 1
  %120 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 2
  %121 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %122 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %123 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %124 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %125 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 3, i32 1
  %126 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 3
  %127 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %128 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %129 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2
  %130 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 4
  %131 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 2, i32 1
  %132 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 2
  %133 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %134 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %135 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 1
  %136 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 2
  %137 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 3
  %138 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 0, i32 1
  %139 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %140 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %141 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 1, i32 1
  %142 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 1
  %143 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %144 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %145 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 0, i32 1
  %146 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2
  %147 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %148 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %149 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %150 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 4
  %151 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 1, i32 1
  %152 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 1
  %153 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %154 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %155 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %156 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 1
  %157 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 1
  %158 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 20
  %159 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 21
  %160 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 23
  %161 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 23, i32 1
  %162 = getelementptr inbounds %struct.gs_font_type1_s, ptr %9, i64 0, i32 22, i32 2
  %163 = getelementptr inbounds i64, ptr %5, i64 -1
  %164 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %165 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %166 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 0, i32 2
  %167 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 1
  %168 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 2
  %169 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 3
  %170 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 4
  %171 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 5
  %172 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 1
  %173 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 3, i32 1
  %174 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 3
  %175 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %176 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %177 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %178 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %179 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 4
  %180 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 2, i32 1
  %181 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 2
  %182 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %183 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %184 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 0, i32 1
  %185 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2
  %186 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %187 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %188 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %189 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 4
  %190 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 1, i32 1
  %191 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 1
  %192 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %193 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %194 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %195 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 1
  %196 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 1
  %197 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %198 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %199 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 1
  %200 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 3, i32 1
  %201 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 3
  %202 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %203 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %204 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %205 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %206 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 4
  %207 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 2, i32 1
  %208 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 2
  %209 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %210 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %211 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 33
  %212 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 26
  %213 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %214 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %215 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 1
  %216 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 1
  %217 = getelementptr inbounds i64, ptr %5, i64 -1
  %218 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 1
  %219 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 1
  %220 = getelementptr inbounds i64, ptr %5, i64 -1
  %221 = getelementptr inbounds i64, ptr %5, i64 -1
  %222 = getelementptr inbounds %struct.gs_font_type1_s, ptr %9, i64 0, i32 22, i32 7
  %223 = getelementptr inbounds %struct.gs_font_type1_s, ptr %9, i64 0, i32 22, i32 1
  %224 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 1
  %225 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %226 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %227 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 21
  %228 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 21, i32 1
  %229 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 1
  %230 = getelementptr inbounds i64, ptr %5, i64 -1
  %231 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 27
  %232 = getelementptr inbounds %struct.gs_font_type1_s, ptr %9, i64 0, i32 22, i32 4
  %233 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 27
  %234 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 27
  %235 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 26
  %236 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 25
  %237 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 24
  %238 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 26
  %239 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 26
  %240 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 27
  %241 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 22
  %242 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 25
  %243 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 25, i64 0, i32 1
  %244 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 24
  %245 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 25, i64 4
  %246 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 25, i64 4, i32 1
  %247 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 25, i64 2
  %248 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 25, i64 2, i32 1
  %249 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 25, i64 3
  %250 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 25, i64 3, i32 1
  %251 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 25, i64 5
  %252 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 25, i64 5, i32 1
  %253 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 25, i64 6
  %254 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 25, i64 6, i32 1
  %255 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 25, i64 7
  %256 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 25, i64 7, i32 1
  %257 = ptrtoint ptr %5 to i64
  %258 = getelementptr inbounds %struct.gs_font_type1_s, ptr %9, i64 0, i32 22, i32 3
  %259 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %260 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 23
  %261 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %262 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 23, i32 1
  %263 = ptrtoint ptr %13 to i64
  %264 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 10
  %265 = getelementptr inbounds i64, ptr %5, i64 -1
  %266 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 1
  %267 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 2
  %268 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 3
  %269 = ptrtoint ptr %13 to i64
  %270 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 18
  %271 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 18, i32 1
  %272 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %273 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 23
  %274 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %275 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 23, i32 1
  %276 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 3
  %277 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 20
  %278 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %279 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %280 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 18
  %281 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 22
  %282 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 1
  %283 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 21
  %284 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 2
  %285 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 21, i32 1
  %286 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 23
  %287 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 23, i32 1
  %288 = getelementptr inbounds %struct.gs_font_type1_s, ptr %9, i64 0, i32 22, i32 2
  %289 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 4
  %290 = getelementptr inbounds i64, ptr %5, i64 -1
  %291 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 1
  %292 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 1
  %293 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 2
  %294 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 3
  %295 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 4
  %296 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 5
  %297 = getelementptr inbounds i64, ptr %5, i64 -1
  %298 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 29
  %299 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 3
  %300 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 18
  %301 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 2
  %302 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 3
  %303 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 1
  %304 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 30
  %305 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %306 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 30, i32 1
  %307 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %308 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 1
  %309 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 1
  %310 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 2
  %311 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 3
  %312 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 4
  %313 = getelementptr inbounds [48 x i64], ptr %5, i64 0, i64 5
  %314 = getelementptr inbounds i64, ptr %5, i64 -1
  %315 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 28
  %316 = getelementptr inbounds i64, ptr %5, i64 -1
  br label %317

317:                                              ; preds = %1294, %94
  %318 = phi i32 [ %95, %94 ], [ %1288, %1294 ]
  %319 = phi i16 [ %96, %94 ], [ %1289, %1294 ]
  %320 = phi ptr [ %97, %94 ], [ %1290, %1294 ]
  %321 = phi ptr [ %98, %94 ], [ %1291, %1294 ]
  %322 = phi ptr [ %99, %94 ], [ %1292, %1294 ]
  %323 = phi i32 [ %100, %94 ], [ %1293, %1294 ]
  %324 = getelementptr inbounds i8, ptr %320, i64 1
  %325 = load i8, ptr %320, align 1, !tbaa !44
  %326 = zext i8 %325 to i32
  br i1 %12, label %327, label %335

327:                                              ; preds = %317
  %328 = lshr i16 %319, 8
  %329 = zext nneg i16 %328 to i32
  %330 = xor i32 %326, %329
  %331 = zext i8 %325 to i16
  %332 = add i16 %319, %331
  %333 = mul i16 %332, -12691
  %334 = add i16 %333, 22719
  br label %335

335:                                              ; preds = %317, %327
  %336 = phi i32 [ %330, %327 ], [ %326, %317 ]
  %337 = phi i16 [ %334, %327 ], [ %319, %317 ]
  %338 = icmp sgt i32 %336, 31
  br i1 %338, label %339, label %415

339:                                              ; preds = %335
  %340 = icmp slt i32 %336, 247
  br i1 %340, label %341, label %347

341:                                              ; preds = %339
  %342 = and i32 %336, 255
  %343 = add nsw i32 %342, -139
  %344 = sext i32 %343 to i64
  %345 = shl nsw i64 %344, 12
  %346 = getelementptr inbounds i64, ptr %322, i64 1
  store i64 %345, ptr %346, align 8, !tbaa !35
  br label %1286, !llvm.loop !51

347:                                              ; preds = %339
  %348 = icmp slt i32 %336, 255
  br i1 %348, label %349, label %381

349:                                              ; preds = %347
  %350 = getelementptr inbounds i8, ptr %320, i64 2
  %351 = load i8, ptr %324, align 1, !tbaa !44
  %352 = zext i8 %351 to i32
  %353 = lshr i16 %337, 8
  %354 = zext nneg i16 %353 to i32
  %355 = select i1 %12, i32 %354, i32 0
  %356 = xor i32 %355, %352
  %357 = icmp slt i32 %336, 251
  %358 = shl nuw nsw i32 %336, 8
  %359 = getelementptr inbounds i64, ptr %322, i64 1
  br i1 %357, label %360, label %367

360:                                              ; preds = %349
  %361 = add nuw nsw i32 %358, 2304
  %362 = and i32 %361, 65280
  %363 = or disjoint i32 %362, 108
  %364 = add nuw nsw i32 %363, %356
  %365 = shl nuw nsw i32 %364, 12
  %366 = zext nneg i32 %365 to i64
  br label %374

367:                                              ; preds = %349
  %368 = add nuw nsw i32 %358, 1280
  %369 = and i32 %368, 65280
  %370 = or disjoint i32 %369, %356
  %371 = sub nuw nsw i32 -108, %370
  %372 = sext i32 %371 to i64
  %373 = shl nsw i64 %372, 12
  br label %374

374:                                              ; preds = %367, %360
  %375 = phi i64 [ %373, %367 ], [ %366, %360 ]
  store i64 %375, ptr %359, align 8, !tbaa !35
  %376 = zext i8 %351 to i16
  %377 = add i16 %337, %376
  %378 = mul i16 %377, -12691
  %379 = add i16 %378, 22719
  %380 = select i1 %12, i16 %379, i16 %337
  br label %1286, !llvm.loop !51

381:                                              ; preds = %347, %397
  %382 = phi i32 [ %403, %397 ], [ 3, %347 ]
  %383 = phi ptr [ %402, %397 ], [ %324, %347 ]
  %384 = phi i16 [ %399, %397 ], [ %337, %347 ]
  %385 = phi i64 [ %401, %397 ], [ 0, %347 ]
  %386 = load i8, ptr %383, align 1, !tbaa !44
  br i1 %12, label %387, label %395

387:                                              ; preds = %381
  %388 = lshr i16 %384, 8
  %389 = zext i8 %386 to i16
  %390 = xor i16 %388, %389
  %391 = zext nneg i16 %390 to i64
  %392 = add i16 %384, %389
  %393 = mul i16 %392, -12691
  %394 = add i16 %393, 22719
  br label %397

395:                                              ; preds = %381
  %396 = zext i8 %386 to i64
  br label %397

397:                                              ; preds = %395, %387
  %398 = phi i64 [ %391, %387 ], [ %396, %395 ]
  %399 = phi i16 [ %394, %387 ], [ %384, %395 ]
  %400 = shl i64 %385, 8
  %401 = add nuw nsw i64 %398, %400
  %402 = getelementptr inbounds i8, ptr %383, i64 1
  %403 = add nsw i32 %382, -1
  %404 = icmp eq i32 %382, 0
  br i1 %404, label %405, label %381, !llvm.loop !52

405:                                              ; preds = %397
  %406 = getelementptr i8, ptr %320, i64 5
  %407 = xor i64 %401, 2147483648
  %408 = shl i64 %407, 12
  %409 = add i64 %408, -8796093022208
  %410 = getelementptr inbounds i64, ptr %322, i64 1
  store i64 %409, ptr %410, align 8, !tbaa !35
  %411 = add i64 %407, 2251797666201600
  %412 = icmp ult i64 %411, 4503599627370496
  %413 = select i1 %412, i32 %323, i32 -15
  %414 = select i1 %412, i32 12, i32 1
  br label %1286, !llvm.loop !51

415:                                              ; preds = %335
  switch i32 %336, label %1286 [
    i32 12, label %981
    i32 13, label %960
    i32 9, label %957
    i32 10, label %416
    i32 11, label %431
    i32 15, label %433
    i32 1, label %434
    i32 3, label %440
    i32 4, label %446
    i32 5, label %517
    i32 6, label %529
    i32 7, label %582
    i32 8, label %634
    i32 14, label %642
    i32 21, label %663
    i32 22, label %666
    i32 30, label %719
    i32 31, label %838
  ]

416:                                              ; preds = %415
  %417 = load i64, ptr %322, align 8, !tbaa !35
  %418 = lshr i64 %417, 12
  %419 = trunc i64 %418 to i32
  %420 = load i32, ptr %222, align 4, !tbaa !53
  %421 = add i32 %420, %419
  %422 = load ptr, ptr %223, align 8, !tbaa !54
  %423 = getelementptr inbounds %struct.ip_state, ptr %321, i64 1, i32 2
  %424 = call i32 %422(ptr noundef %9, i32 noundef %421, i32 noundef 0, ptr noundef nonnull %423) #7
  %425 = icmp slt i32 %424, 0
  br i1 %425, label %1286, label %426

426:                                              ; preds = %416
  %427 = getelementptr inbounds %struct.ip_state, ptr %321, i64 1
  %428 = getelementptr inbounds i64, ptr %322, i64 -1
  store ptr %324, ptr %321, align 8, !tbaa !47
  %429 = getelementptr inbounds %struct.ip_state, ptr %321, i64 0, i32 1
  store i16 %337, ptr %429, align 8, !tbaa !50
  %430 = load ptr, ptr %423, align 8, !tbaa !55
  br label %1286

431:                                              ; preds = %415
  %432 = getelementptr inbounds %struct.ip_state, ptr %321, i64 -1
  br label %1286

433:                                              ; preds = %415
  br label %1286

434:                                              ; preds = %415
  %435 = load ptr, ptr %40, align 8, !tbaa !37
  call void @type1_apply_path_hints(ptr noundef %0, i32 noundef 0, ptr noundef %435) #7
  %436 = load i64, ptr %5, align 16, !tbaa !35
  %437 = load i64, ptr %218, align 8, !tbaa !35
  %438 = load ptr, ptr %219, align 8, !tbaa !56
  %439 = getelementptr inbounds %struct.gs_imager_state_s, ptr %438, i64 0, i32 2
  call void @type1_do_hstem(ptr noundef %0, i64 noundef %436, i64 noundef %437, ptr noundef nonnull %439) #7
  br label %1286

440:                                              ; preds = %415
  %441 = load ptr, ptr %40, align 8, !tbaa !37
  call void @type1_apply_path_hints(ptr noundef %0, i32 noundef 0, ptr noundef %441) #7
  %442 = load i64, ptr %5, align 16, !tbaa !35
  %443 = load i64, ptr %215, align 8, !tbaa !35
  %444 = load ptr, ptr %216, align 8, !tbaa !56
  %445 = getelementptr inbounds %struct.gs_imager_state_s, ptr %444, i64 0, i32 2
  call void @type1_do_vstem(ptr noundef %0, i64 noundef %442, i64 noundef %443, ptr noundef nonnull %445) #7
  br label %1286

446:                                              ; preds = %415
  %447 = load i64, ptr %5, align 16, !tbaa !35
  store i64 %447, ptr %199, align 8, !tbaa !35
  store i64 0, ptr %5, align 16, !tbaa !35
  %448 = add nsw i64 %447, 4194304
  %449 = and i64 %448, -8384513
  %450 = icmp eq i64 %449, 0
  %451 = shl i64 %447, 20
  %452 = ashr i64 %451, 32
  br i1 %450, label %461, label %453

453:                                              ; preds = %446
  %454 = load i64, ptr %200, align 8, !tbaa !57
  %455 = mul nsw i64 %454, %452
  %456 = and i64 %447, 4095
  %457 = mul nsw i64 %454, %456
  %458 = add nsw i64 %457, 2048
  %459 = ashr i64 %458, 12
  %460 = add nsw i64 %459, %455
  br label %469

461:                                              ; preds = %446
  %462 = load i64, ptr %201, align 8, !tbaa !58
  %463 = mul nsw i64 %462, %452
  %464 = load i64, ptr %202, align 8, !tbaa !59
  %465 = add nsw i64 %463, %464
  %466 = load i32, ptr %203, align 4, !tbaa !60
  %467 = zext nneg i32 %466 to i64
  %468 = ashr i64 %465, %467
  br label %469

469:                                              ; preds = %461, %453
  %470 = phi i64 [ %460, %453 ], [ %468, %461 ]
  %471 = load i64, ptr %205, align 8, !tbaa !33
  %472 = add nsw i64 %471, %470
  store i64 %472, ptr %205, align 8, !tbaa !33
  %473 = load i32, ptr %206, align 8, !tbaa !61
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %498, label %475

475:                                              ; preds = %469
  %476 = shl i64 %447, 20
  %477 = ashr i64 %476, 32
  br i1 %450, label %486, label %478

478:                                              ; preds = %475
  %479 = load i64, ptr %207, align 8, !tbaa !62
  %480 = mul nsw i64 %479, %477
  %481 = and i64 %447, 4095
  %482 = mul nsw i64 %479, %481
  %483 = add nsw i64 %482, 2048
  %484 = ashr i64 %483, 12
  %485 = add nsw i64 %484, %480
  br label %494

486:                                              ; preds = %475
  %487 = load i64, ptr %208, align 8, !tbaa !63
  %488 = mul nsw i64 %487, %477
  %489 = load i64, ptr %209, align 8, !tbaa !59
  %490 = add nsw i64 %488, %489
  %491 = load i32, ptr %210, align 4, !tbaa !60
  %492 = zext nneg i32 %491 to i64
  %493 = ashr i64 %490, %492
  br label %494

494:                                              ; preds = %486, %478
  %495 = phi i64 [ %485, %478 ], [ %493, %486 ]
  %496 = load i64, ptr %204, align 8, !tbaa !30
  %497 = add nsw i64 %496, %495
  store i64 %497, ptr %204, align 8, !tbaa !30
  br label %498

498:                                              ; preds = %469, %494, %718, %663
  %499 = load ptr, ptr %211, align 8, !tbaa !64
  %500 = icmp eq ptr %499, null
  br i1 %500, label %501, label %507

501:                                              ; preds = %498
  %502 = load ptr, ptr %4, align 8, !tbaa !38
  %503 = getelementptr inbounds %struct.gx_path_s, ptr %502, i64 0, i32 11
  %504 = load i8, ptr %503, align 1, !tbaa !65
  %505 = and i8 %504, 4
  %506 = icmp eq i8 %505, 0
  br i1 %506, label %512, label %507

507:                                              ; preds = %501, %498
  %508 = load i32, ptr %212, align 8, !tbaa !70
  %509 = icmp eq i32 %508, 8
  br i1 %509, label %510, label %512

510:                                              ; preds = %507
  %511 = load ptr, ptr %40, align 8, !tbaa !37
  call void @type1_apply_path_hints(ptr noundef %0, i32 noundef 1, ptr noundef %511) #7
  br label %512

512:                                              ; preds = %510, %507, %501
  %513 = load ptr, ptr %4, align 8, !tbaa !38
  %514 = load i64, ptr %213, align 8, !tbaa !30
  %515 = load i64, ptr %214, align 8, !tbaa !33
  %516 = call i32 @gx_path_add_point(ptr noundef %513, i64 noundef %514, i64 noundef %515) #7
  br label %525

517:                                              ; preds = %415
  %518 = load i64, ptr %5, align 16, !tbaa !35
  %519 = load i64, ptr %196, align 8, !tbaa !35
  call void @accum_xy_proc(ptr noundef nonnull %4, i64 noundef %518, i64 noundef %519) #7
  br label %520

520:                                              ; preds = %605, %630, %581, %517
  %521 = load ptr, ptr %4, align 8, !tbaa !38
  %522 = load i64, ptr %197, align 8, !tbaa !30
  %523 = load i64, ptr %198, align 8, !tbaa !33
  %524 = call i32 @gx_path_add_line_notes(ptr noundef %521, i64 noundef %522, i64 noundef %523, i32 noundef 0) #7
  br label %525

525:                                              ; preds = %957, %953, %834, %634, %520, %512
  %526 = phi i32 [ %958, %957 ], [ %956, %953 ], [ %837, %834 ], [ %516, %512 ], [ %641, %634 ], [ %524, %520 ]
  %527 = icmp slt i32 %526, 0
  br i1 %527, label %1286, label %528

528:                                              ; preds = %525
  br label %1286

529:                                              ; preds = %415
  %530 = load i64, ptr %5, align 16, !tbaa !35
  %531 = add nsw i64 %530, 4194304
  %532 = and i64 %531, -8384513
  %533 = icmp eq i64 %532, 0
  %534 = shl i64 %530, 20
  %535 = ashr i64 %534, 32
  br i1 %533, label %544, label %536

536:                                              ; preds = %529
  %537 = load i64, ptr %184, align 8, !tbaa !71
  %538 = mul nsw i64 %537, %535
  %539 = and i64 %530, 4095
  %540 = mul nsw i64 %537, %539
  %541 = add nsw i64 %540, 2048
  %542 = ashr i64 %541, 12
  %543 = add nsw i64 %542, %538
  br label %552

544:                                              ; preds = %529
  %545 = load i64, ptr %185, align 8, !tbaa !72
  %546 = mul nsw i64 %545, %535
  %547 = load i64, ptr %186, align 8, !tbaa !59
  %548 = add nsw i64 %546, %547
  %549 = load i32, ptr %187, align 4, !tbaa !60
  %550 = zext nneg i32 %549 to i64
  %551 = ashr i64 %548, %550
  br label %552

552:                                              ; preds = %544, %536
  %553 = phi i64 [ %543, %536 ], [ %551, %544 ]
  %554 = load i64, ptr %188, align 8, !tbaa !30
  %555 = add nsw i64 %554, %553
  store i64 %555, ptr %188, align 8, !tbaa !30
  %556 = load i32, ptr %189, align 8, !tbaa !61
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %581, label %558

558:                                              ; preds = %552
  %559 = shl i64 %530, 20
  %560 = ashr i64 %559, 32
  br i1 %533, label %569, label %561

561:                                              ; preds = %558
  %562 = load i64, ptr %190, align 8, !tbaa !73
  %563 = mul nsw i64 %562, %560
  %564 = and i64 %530, 4095
  %565 = mul nsw i64 %562, %564
  %566 = add nsw i64 %565, 2048
  %567 = ashr i64 %566, 12
  %568 = add nsw i64 %567, %563
  br label %577

569:                                              ; preds = %558
  %570 = load i64, ptr %191, align 8, !tbaa !74
  %571 = mul nsw i64 %570, %560
  %572 = load i64, ptr %192, align 8, !tbaa !59
  %573 = add nsw i64 %571, %572
  %574 = load i32, ptr %193, align 4, !tbaa !60
  %575 = zext nneg i32 %574 to i64
  %576 = ashr i64 %573, %575
  br label %577

577:                                              ; preds = %569, %561
  %578 = phi i64 [ %568, %561 ], [ %576, %569 ]
  %579 = load i64, ptr %194, align 8, !tbaa !33
  %580 = add nsw i64 %579, %578
  store i64 %580, ptr %194, align 8, !tbaa !33
  br label %581

581:                                              ; preds = %577, %552
  store i64 0, ptr %195, align 8, !tbaa !35
  br label %520

582:                                              ; preds = %415
  %583 = load i64, ptr %5, align 16, !tbaa !35
  store i64 %583, ptr %172, align 8, !tbaa !35
  store i64 0, ptr %5, align 16, !tbaa !35
  %584 = add nsw i64 %583, 4194304
  %585 = and i64 %584, -8384513
  %586 = icmp eq i64 %585, 0
  %587 = shl i64 %583, 20
  %588 = ashr i64 %587, 32
  br i1 %586, label %597, label %589

589:                                              ; preds = %582
  %590 = load i64, ptr %173, align 8, !tbaa !57
  %591 = mul nsw i64 %590, %588
  %592 = and i64 %583, 4095
  %593 = mul nsw i64 %590, %592
  %594 = add nsw i64 %593, 2048
  %595 = ashr i64 %594, 12
  %596 = add nsw i64 %595, %591
  br label %605

597:                                              ; preds = %582
  %598 = load i64, ptr %174, align 8, !tbaa !58
  %599 = mul nsw i64 %598, %588
  %600 = load i64, ptr %175, align 8, !tbaa !59
  %601 = add nsw i64 %599, %600
  %602 = load i32, ptr %176, align 4, !tbaa !60
  %603 = zext nneg i32 %602 to i64
  %604 = ashr i64 %601, %603
  br label %605

605:                                              ; preds = %597, %589
  %606 = phi i64 [ %596, %589 ], [ %604, %597 ]
  %607 = load i64, ptr %178, align 8, !tbaa !33
  %608 = add nsw i64 %607, %606
  store i64 %608, ptr %178, align 8, !tbaa !33
  %609 = load i32, ptr %179, align 8, !tbaa !61
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %520, label %611

611:                                              ; preds = %605
  %612 = shl i64 %583, 20
  %613 = ashr i64 %612, 32
  br i1 %586, label %622, label %614

614:                                              ; preds = %611
  %615 = load i64, ptr %180, align 8, !tbaa !62
  %616 = mul nsw i64 %615, %613
  %617 = and i64 %583, 4095
  %618 = mul nsw i64 %615, %617
  %619 = add nsw i64 %618, 2048
  %620 = ashr i64 %619, 12
  %621 = add nsw i64 %620, %616
  br label %630

622:                                              ; preds = %611
  %623 = load i64, ptr %181, align 8, !tbaa !63
  %624 = mul nsw i64 %623, %613
  %625 = load i64, ptr %182, align 8, !tbaa !59
  %626 = add nsw i64 %624, %625
  %627 = load i32, ptr %183, align 4, !tbaa !60
  %628 = zext nneg i32 %627 to i64
  %629 = ashr i64 %626, %628
  br label %630

630:                                              ; preds = %622, %614
  %631 = phi i64 [ %621, %614 ], [ %629, %622 ]
  %632 = load i64, ptr %177, align 8, !tbaa !30
  %633 = add nsw i64 %632, %631
  store i64 %633, ptr %177, align 8, !tbaa !30
  br label %520

634:                                              ; preds = %415
  %635 = load i64, ptr %5, align 16, !tbaa !35
  %636 = load i64, ptr %167, align 8, !tbaa !35
  %637 = load i64, ptr %168, align 16, !tbaa !35
  %638 = load i64, ptr %169, align 8, !tbaa !35
  %639 = load i64, ptr %170, align 16, !tbaa !35
  %640 = load i64, ptr %171, align 8, !tbaa !35
  %641 = call i32 @gs_op1_rrcurveto(ptr noundef nonnull %4, i64 noundef %635, i64 noundef %636, i64 noundef %637, i64 noundef %638, i64 noundef %639, i64 noundef %640) #7
  br label %525

642:                                              ; preds = %415
  %643 = load i32, ptr %158, align 8, !tbaa !75
  %644 = icmp sgt i32 %643, -1
  br i1 %644, label %645, label %661

645:                                              ; preds = %642
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  store i32 -1, ptr %158, align 8, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %159, i8 0, i64 24, i1 false)
  store i64 %39, ptr %160, align 8, !tbaa !29
  %646 = load ptr, ptr %4, align 8, !tbaa !38
  %647 = getelementptr inbounds %struct.gx_path_s, ptr %646, i64 0, i32 7
  store i64 %39, ptr %647, align 8, !tbaa !76
  store i64 %38, ptr %161, align 8, !tbaa !32
  %648 = getelementptr inbounds %struct.gx_path_s, ptr %646, i64 0, i32 7, i32 1
  store i64 %38, ptr %648, align 8, !tbaa !77
  store i32 0, ptr %43, align 8, !tbaa !40
  store i32 1, ptr %14, align 8, !tbaa !25
  call void @reset_stem_hints(ptr noundef %0) #7
  %649 = load ptr, ptr %162, align 8, !tbaa !78
  %650 = call i32 %649(ptr noundef %9, i32 noundef %643, ptr noundef nonnull %6) #7
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %653, label %652

652:                                              ; preds = %645
  store i32 %643, ptr %2, align 4, !tbaa !36
  br label %655

653:                                              ; preds = %645
  store i64 %39, ptr %164, align 8, !tbaa !30
  store i64 %38, ptr %165, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %166, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !41
  %654 = load ptr, ptr %6, align 8, !tbaa !42
  br label %655

655:                                              ; preds = %653, %652
  %656 = phi i32 [ 1, %652 ], [ 6, %653 ]
  %657 = phi ptr [ %324, %652 ], [ %654, %653 ]
  %658 = phi ptr [ %321, %652 ], [ %13, %653 ]
  %659 = phi ptr [ %322, %652 ], [ %163, %653 ]
  %660 = phi i32 [ %650, %652 ], [ %323, %653 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  br label %1286

661:                                              ; preds = %642
  %662 = call i32 @gs_type1_endchar(ptr noundef %0) #7
  br label %1286

663:                                              ; preds = %415
  %664 = load i64, ptr %5, align 16, !tbaa !35
  %665 = load i64, ptr %157, align 8, !tbaa !35
  call void @accum_xy_proc(ptr noundef nonnull %4, i64 noundef %664, i64 noundef %665) #7
  br label %498

666:                                              ; preds = %415
  %667 = load i64, ptr %5, align 16, !tbaa !35
  %668 = add nsw i64 %667, 4194304
  %669 = and i64 %668, -8384513
  %670 = icmp eq i64 %669, 0
  %671 = shl i64 %667, 20
  %672 = ashr i64 %671, 32
  br i1 %670, label %681, label %673

673:                                              ; preds = %666
  %674 = load i64, ptr %145, align 8, !tbaa !71
  %675 = mul nsw i64 %674, %672
  %676 = and i64 %667, 4095
  %677 = mul nsw i64 %674, %676
  %678 = add nsw i64 %677, 2048
  %679 = ashr i64 %678, 12
  %680 = add nsw i64 %679, %675
  br label %689

681:                                              ; preds = %666
  %682 = load i64, ptr %146, align 8, !tbaa !72
  %683 = mul nsw i64 %682, %672
  %684 = load i64, ptr %147, align 8, !tbaa !59
  %685 = add nsw i64 %683, %684
  %686 = load i32, ptr %148, align 4, !tbaa !60
  %687 = zext nneg i32 %686 to i64
  %688 = ashr i64 %685, %687
  br label %689

689:                                              ; preds = %681, %673
  %690 = phi i64 [ %680, %673 ], [ %688, %681 ]
  %691 = load i64, ptr %149, align 8, !tbaa !30
  %692 = add nsw i64 %691, %690
  store i64 %692, ptr %149, align 8, !tbaa !30
  %693 = load i32, ptr %150, align 8, !tbaa !61
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %718, label %695

695:                                              ; preds = %689
  %696 = shl i64 %667, 20
  %697 = ashr i64 %696, 32
  br i1 %670, label %706, label %698

698:                                              ; preds = %695
  %699 = load i64, ptr %151, align 8, !tbaa !73
  %700 = mul nsw i64 %699, %697
  %701 = and i64 %667, 4095
  %702 = mul nsw i64 %699, %701
  %703 = add nsw i64 %702, 2048
  %704 = ashr i64 %703, 12
  %705 = add nsw i64 %704, %700
  br label %714

706:                                              ; preds = %695
  %707 = load i64, ptr %152, align 8, !tbaa !74
  %708 = mul nsw i64 %707, %697
  %709 = load i64, ptr %153, align 8, !tbaa !59
  %710 = add nsw i64 %708, %709
  %711 = load i32, ptr %154, align 4, !tbaa !60
  %712 = zext nneg i32 %711 to i64
  %713 = ashr i64 %710, %712
  br label %714

714:                                              ; preds = %706, %698
  %715 = phi i64 [ %705, %698 ], [ %713, %706 ]
  %716 = load i64, ptr %155, align 8, !tbaa !33
  %717 = add nsw i64 %716, %715
  store i64 %717, ptr %155, align 8, !tbaa !33
  br label %718

718:                                              ; preds = %714, %689
  store i64 0, ptr %156, align 8, !tbaa !35
  br label %498

719:                                              ; preds = %415
  %720 = load ptr, ptr %4, align 8, !tbaa !38
  %721 = getelementptr inbounds %struct.gx_path_s, ptr %720, i64 0, i32 7
  %722 = load i64, ptr %721, align 8, !tbaa !76
  %723 = load i64, ptr %123, align 8, !tbaa !30
  %724 = sub i64 %722, %723
  %725 = getelementptr inbounds %struct.gx_path_s, ptr %720, i64 0, i32 7, i32 1
  %726 = load i64, ptr %725, align 8, !tbaa !77
  %727 = load i64, ptr %124, align 8, !tbaa !33
  %728 = load i64, ptr %5, align 16, !tbaa !35
  %729 = add nsw i64 %728, 4194304
  %730 = and i64 %729, -8384513
  %731 = icmp eq i64 %730, 0
  %732 = shl i64 %728, 20
  %733 = ashr i64 %732, 32
  br i1 %731, label %742, label %734

734:                                              ; preds = %719
  %735 = load i64, ptr %125, align 8, !tbaa !57
  %736 = mul nsw i64 %735, %733
  %737 = and i64 %728, 4095
  %738 = mul nsw i64 %735, %737
  %739 = add nsw i64 %738, 2048
  %740 = ashr i64 %739, 12
  %741 = add nsw i64 %740, %736
  br label %750

742:                                              ; preds = %719
  %743 = load i64, ptr %126, align 8, !tbaa !58
  %744 = mul nsw i64 %743, %733
  %745 = load i64, ptr %127, align 8, !tbaa !59
  %746 = add nsw i64 %744, %745
  %747 = load i32, ptr %128, align 4, !tbaa !60
  %748 = zext nneg i32 %747 to i64
  %749 = ashr i64 %746, %748
  br label %750

750:                                              ; preds = %742, %734
  %751 = phi i64 [ %741, %734 ], [ %749, %742 ]
  %752 = add nsw i64 %751, %727
  store i64 %752, ptr %124, align 8, !tbaa !33
  %753 = load i32, ptr %130, align 8, !tbaa !61
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %777, label %755

755:                                              ; preds = %750
  %756 = shl i64 %728, 20
  %757 = ashr i64 %756, 32
  br i1 %731, label %766, label %758

758:                                              ; preds = %755
  %759 = load i64, ptr %131, align 8, !tbaa !62
  %760 = mul nsw i64 %759, %757
  %761 = and i64 %728, 4095
  %762 = mul nsw i64 %759, %761
  %763 = add nsw i64 %762, 2048
  %764 = ashr i64 %763, 12
  %765 = add nsw i64 %764, %760
  br label %774

766:                                              ; preds = %755
  %767 = load i64, ptr %132, align 8, !tbaa !63
  %768 = mul nsw i64 %767, %757
  %769 = load i64, ptr %133, align 8, !tbaa !59
  %770 = add nsw i64 %768, %769
  %771 = load i32, ptr %134, align 4, !tbaa !60
  %772 = zext nneg i32 %771 to i64
  %773 = ashr i64 %770, %772
  br label %774

774:                                              ; preds = %766, %758
  %775 = phi i64 [ %765, %758 ], [ %773, %766 ]
  %776 = add nsw i64 %775, %723
  store i64 %776, ptr %123, align 8, !tbaa !30
  br label %777

777:                                              ; preds = %774, %750
  %778 = load i64, ptr %123, align 8, !tbaa !30
  %779 = add nsw i64 %724, %778
  %780 = add i64 %751, %726
  %781 = load i64, ptr %135, align 8, !tbaa !35
  %782 = load i64, ptr %136, align 16, !tbaa !35
  call void @accum_xy_proc(ptr noundef nonnull %4, i64 noundef %781, i64 noundef %782) #7
  %783 = load i64, ptr %123, align 8, !tbaa !30
  %784 = load i64, ptr %124, align 8, !tbaa !33
  %785 = load i64, ptr %137, align 8, !tbaa !35
  %786 = add nsw i64 %785, 4194304
  %787 = and i64 %786, -8384513
  %788 = icmp eq i64 %787, 0
  %789 = shl i64 %785, 20
  %790 = ashr i64 %789, 32
  br i1 %788, label %799, label %791

791:                                              ; preds = %777
  %792 = load i64, ptr %138, align 8, !tbaa !71
  %793 = mul nsw i64 %792, %790
  %794 = and i64 %785, 4095
  %795 = mul nsw i64 %792, %794
  %796 = add nsw i64 %795, 2048
  %797 = ashr i64 %796, 12
  %798 = add nsw i64 %797, %793
  br label %807

799:                                              ; preds = %777
  %800 = load i64, ptr %129, align 8, !tbaa !72
  %801 = mul nsw i64 %800, %790
  %802 = load i64, ptr %139, align 8, !tbaa !59
  %803 = add nsw i64 %801, %802
  %804 = load i32, ptr %140, align 4, !tbaa !60
  %805 = zext nneg i32 %804 to i64
  %806 = ashr i64 %803, %805
  br label %807

807:                                              ; preds = %799, %791
  %808 = phi i64 [ %798, %791 ], [ %806, %799 ]
  %809 = add nsw i64 %808, %783
  store i64 %809, ptr %123, align 8, !tbaa !30
  %810 = load i32, ptr %130, align 8, !tbaa !61
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %834, label %812

812:                                              ; preds = %807
  %813 = shl i64 %785, 20
  %814 = ashr i64 %813, 32
  br i1 %788, label %823, label %815

815:                                              ; preds = %812
  %816 = load i64, ptr %141, align 8, !tbaa !73
  %817 = mul nsw i64 %816, %814
  %818 = and i64 %785, 4095
  %819 = mul nsw i64 %816, %818
  %820 = add nsw i64 %819, 2048
  %821 = ashr i64 %820, 12
  %822 = add nsw i64 %821, %817
  br label %831

823:                                              ; preds = %812
  %824 = load i64, ptr %142, align 8, !tbaa !74
  %825 = mul nsw i64 %824, %814
  %826 = load i64, ptr %143, align 8, !tbaa !59
  %827 = add nsw i64 %825, %826
  %828 = load i32, ptr %144, align 4, !tbaa !60
  %829 = zext nneg i32 %828 to i64
  %830 = ashr i64 %827, %829
  br label %831

831:                                              ; preds = %823, %815
  %832 = phi i64 [ %822, %815 ], [ %830, %823 ]
  %833 = add nsw i64 %832, %784
  store i64 %833, ptr %124, align 8, !tbaa !33
  br label %834

834:                                              ; preds = %831, %807
  %835 = load ptr, ptr %4, align 8, !tbaa !38
  %836 = load i64, ptr %124, align 8, !tbaa !33
  %837 = call i32 @gx_path_add_curve_notes(ptr noundef %835, i64 noundef %779, i64 noundef %780, i64 noundef %783, i64 noundef %784, i64 noundef %809, i64 noundef %836, i32 noundef 0) #7
  br label %525

838:                                              ; preds = %415
  %839 = load ptr, ptr %4, align 8, !tbaa !38
  %840 = getelementptr inbounds %struct.gx_path_s, ptr %839, i64 0, i32 7
  %841 = load i64, ptr %840, align 8, !tbaa !76
  %842 = load i64, ptr %101, align 8, !tbaa !30
  %843 = getelementptr inbounds %struct.gx_path_s, ptr %839, i64 0, i32 7, i32 1
  %844 = load i64, ptr %843, align 8, !tbaa !77
  %845 = load i64, ptr %102, align 8, !tbaa !33
  %846 = sub i64 %844, %845
  %847 = load i64, ptr %5, align 16, !tbaa !35
  %848 = add nsw i64 %847, 4194304
  %849 = and i64 %848, -8384513
  %850 = icmp eq i64 %849, 0
  %851 = shl i64 %847, 20
  %852 = ashr i64 %851, 32
  br i1 %850, label %861, label %853

853:                                              ; preds = %838
  %854 = load i64, ptr %103, align 8, !tbaa !71
  %855 = mul nsw i64 %854, %852
  %856 = and i64 %847, 4095
  %857 = mul nsw i64 %854, %856
  %858 = add nsw i64 %857, 2048
  %859 = ashr i64 %858, 12
  %860 = add nsw i64 %859, %855
  br label %869

861:                                              ; preds = %838
  %862 = load i64, ptr %104, align 8, !tbaa !72
  %863 = mul nsw i64 %862, %852
  %864 = load i64, ptr %105, align 8, !tbaa !59
  %865 = add nsw i64 %863, %864
  %866 = load i32, ptr %106, align 4, !tbaa !60
  %867 = zext nneg i32 %866 to i64
  %868 = ashr i64 %865, %867
  br label %869

869:                                              ; preds = %861, %853
  %870 = phi i64 [ %860, %853 ], [ %868, %861 ]
  %871 = add nsw i64 %870, %842
  store i64 %871, ptr %101, align 8, !tbaa !30
  %872 = load i32, ptr %107, align 8, !tbaa !61
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %896, label %874

874:                                              ; preds = %869
  %875 = shl i64 %847, 20
  %876 = ashr i64 %875, 32
  br i1 %850, label %885, label %877

877:                                              ; preds = %874
  %878 = load i64, ptr %108, align 8, !tbaa !73
  %879 = mul nsw i64 %878, %876
  %880 = and i64 %847, 4095
  %881 = mul nsw i64 %878, %880
  %882 = add nsw i64 %881, 2048
  %883 = ashr i64 %882, 12
  %884 = add nsw i64 %883, %879
  br label %893

885:                                              ; preds = %874
  %886 = load i64, ptr %109, align 8, !tbaa !74
  %887 = mul nsw i64 %886, %876
  %888 = load i64, ptr %110, align 8, !tbaa !59
  %889 = add nsw i64 %887, %888
  %890 = load i32, ptr %111, align 4, !tbaa !60
  %891 = zext nneg i32 %890 to i64
  %892 = ashr i64 %889, %891
  br label %893

893:                                              ; preds = %885, %877
  %894 = phi i64 [ %884, %877 ], [ %892, %885 ]
  %895 = add nsw i64 %894, %845
  store i64 %895, ptr %102, align 8, !tbaa !33
  br label %896

896:                                              ; preds = %893, %869
  %897 = add i64 %870, %841
  %898 = load i64, ptr %102, align 8, !tbaa !33
  %899 = add nsw i64 %846, %898
  %900 = load i64, ptr %112, align 8, !tbaa !35
  %901 = load i64, ptr %113, align 16, !tbaa !35
  call void @accum_xy_proc(ptr noundef nonnull %4, i64 noundef %900, i64 noundef %901) #7
  %902 = load i64, ptr %101, align 8, !tbaa !30
  %903 = load i64, ptr %102, align 8, !tbaa !33
  %904 = load i64, ptr %114, align 8, !tbaa !35
  %905 = add nsw i64 %904, 4194304
  %906 = and i64 %905, -8384513
  %907 = icmp eq i64 %906, 0
  %908 = shl i64 %904, 20
  %909 = ashr i64 %908, 32
  br i1 %907, label %918, label %910

910:                                              ; preds = %896
  %911 = load i64, ptr %115, align 8, !tbaa !57
  %912 = mul nsw i64 %911, %909
  %913 = and i64 %904, 4095
  %914 = mul nsw i64 %911, %913
  %915 = add nsw i64 %914, 2048
  %916 = ashr i64 %915, 12
  %917 = add nsw i64 %916, %912
  br label %926

918:                                              ; preds = %896
  %919 = load i64, ptr %116, align 8, !tbaa !58
  %920 = mul nsw i64 %919, %909
  %921 = load i64, ptr %117, align 8, !tbaa !59
  %922 = add nsw i64 %920, %921
  %923 = load i32, ptr %118, align 4, !tbaa !60
  %924 = zext nneg i32 %923 to i64
  %925 = ashr i64 %922, %924
  br label %926

926:                                              ; preds = %918, %910
  %927 = phi i64 [ %917, %910 ], [ %925, %918 ]
  %928 = add nsw i64 %927, %903
  store i64 %928, ptr %102, align 8, !tbaa !33
  %929 = load i32, ptr %107, align 8, !tbaa !61
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %953, label %931

931:                                              ; preds = %926
  %932 = shl i64 %904, 20
  %933 = ashr i64 %932, 32
  br i1 %907, label %942, label %934

934:                                              ; preds = %931
  %935 = load i64, ptr %119, align 8, !tbaa !62
  %936 = mul nsw i64 %935, %933
  %937 = and i64 %904, 4095
  %938 = mul nsw i64 %935, %937
  %939 = add nsw i64 %938, 2048
  %940 = ashr i64 %939, 12
  %941 = add nsw i64 %940, %936
  br label %950

942:                                              ; preds = %931
  %943 = load i64, ptr %120, align 8, !tbaa !63
  %944 = mul nsw i64 %943, %933
  %945 = load i64, ptr %121, align 8, !tbaa !59
  %946 = add nsw i64 %944, %945
  %947 = load i32, ptr %122, align 4, !tbaa !60
  %948 = zext nneg i32 %947 to i64
  %949 = ashr i64 %946, %948
  br label %950

950:                                              ; preds = %942, %934
  %951 = phi i64 [ %941, %934 ], [ %949, %942 ]
  %952 = add nsw i64 %951, %902
  store i64 %952, ptr %101, align 8, !tbaa !30
  br label %953

953:                                              ; preds = %950, %926
  %954 = load ptr, ptr %4, align 8, !tbaa !38
  %955 = load i64, ptr %101, align 8, !tbaa !30
  %956 = call i32 @gx_path_add_curve_notes(ptr noundef %954, i64 noundef %897, i64 noundef %899, i64 noundef %902, i64 noundef %903, i64 noundef %955, i64 noundef %928, i32 noundef 0) #7
  br label %525

957:                                              ; preds = %415
  %958 = call i32 @gs_op1_closepath(ptr noundef nonnull %4) #7
  %959 = load ptr, ptr %40, align 8, !tbaa !37
  call void @type1_apply_path_hints(ptr noundef %0, i32 noundef 1, ptr noundef %959) #7
  br label %525

960:                                              ; preds = %415
  %961 = load i64, ptr %5, align 16, !tbaa !35
  %962 = load i64, ptr %224, align 8, !tbaa !35
  %963 = call i32 @gs_type1_sbw(ptr noundef %0, i64 noundef %961, i64 noundef 0, i64 noundef %962, i64 noundef 0) #7
  br label %964

964:                                              ; preds = %1079, %960
  %965 = phi i16 [ %995, %1079 ], [ %337, %960 ]
  %966 = phi ptr [ %996, %1079 ], [ %324, %960 ]
  store i32 0, ptr %43, align 8, !tbaa !40
  store ptr %966, ptr %321, align 8, !tbaa !47
  %967 = getelementptr inbounds %struct.ip_state, ptr %321, i64 0, i32 1
  store i16 %965, ptr %967, align 8, !tbaa !50
  %968 = ptrtoint ptr %321 to i64
  %969 = sub i64 %968, %269
  %970 = lshr exact i64 %969, 5
  %971 = trunc i64 %970 to i32
  %972 = add i32 %971, 1
  store i32 %972, ptr %14, align 8, !tbaa !25
  %973 = load i32, ptr %23, align 4, !tbaa !28
  %974 = icmp slt i32 %973, 0
  br i1 %974, label %975, label %976

975:                                              ; preds = %964
  store i32 0, ptr %23, align 4, !tbaa !28
  br label %1286

976:                                              ; preds = %964
  %977 = load i64, ptr %270, align 8, !tbaa !79
  %978 = load i64, ptr %271, align 8, !tbaa !80
  call void @accum_xy_proc(ptr noundef nonnull %4, i64 noundef %977, i64 noundef %978) #7
  %979 = load i64, ptr %272, align 8, !tbaa !30
  store i64 %979, ptr %273, align 8, !tbaa !29
  %980 = load i64, ptr %274, align 8, !tbaa !33
  store i64 %980, ptr %275, align 8, !tbaa !32
  br label %1286

981:                                              ; preds = %415
  %982 = load i8, ptr %324, align 1, !tbaa !44
  br i1 %12, label %983, label %991

983:                                              ; preds = %981
  %984 = lshr i16 %337, 8
  %985 = zext i8 %982 to i16
  %986 = xor i16 %984, %985
  %987 = zext nneg i16 %986 to i32
  %988 = add i16 %337, %985
  %989 = mul i16 %988, -12691
  %990 = add i16 %989, 22719
  br label %993

991:                                              ; preds = %981
  %992 = zext i8 %982 to i32
  br label %993

993:                                              ; preds = %991, %983
  %994 = phi i32 [ %987, %983 ], [ %992, %991 ]
  %995 = phi i16 [ %990, %983 ], [ %337, %991 ]
  %996 = getelementptr inbounds i8, ptr %320, i64 2
  switch i32 %994, label %1286 [
    i32 0, label %997
    i32 1, label %1000
    i32 2, label %1033
    i32 6, label %1047
    i32 7, label %1079
    i32 12, label %1085
    i32 15, label %1094
    i32 16, label %1095
    i32 17, label %1267
    i32 33, label %1279
  ]

997:                                              ; preds = %993
  %998 = load i32, ptr %315, align 8, !tbaa !81
  %999 = xor i32 %998, -1
  store i32 %999, ptr %315, align 8, !tbaa !81
  br label %1286

1000:                                             ; preds = %993
  %1001 = load ptr, ptr %40, align 8, !tbaa !37
  call void @type1_apply_path_hints(ptr noundef %0, i32 noundef 0, ptr noundef %1001) #7
  %1002 = load i32, ptr %298, align 4, !tbaa !82
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1004, label %1020

1004:                                             ; preds = %1000
  %1005 = load i32, ptr %299, align 4, !tbaa !83
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1020, label %1007

1007:                                             ; preds = %1004
  %1008 = load i64, ptr %300, align 8, !tbaa !79
  %1009 = load i64, ptr %301, align 16, !tbaa !35
  %1010 = add nsw i64 %1009, %1008
  %1011 = load i64, ptr %302, align 8, !tbaa !35
  %1012 = load ptr, ptr %303, align 8, !tbaa !56
  %1013 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1012, i64 0, i32 2
  call void @type1_do_center_vstem(ptr noundef %0, i64 noundef %1010, i64 noundef %1011, ptr noundef nonnull %1013) #7
  %1014 = load i64, ptr %304, align 8, !tbaa !84
  %1015 = load i64, ptr %305, align 8, !tbaa !30
  %1016 = add nsw i64 %1015, %1014
  store i64 %1016, ptr %305, align 8, !tbaa !30
  %1017 = load i64, ptr %306, align 8, !tbaa !85
  %1018 = load i64, ptr %307, align 8, !tbaa !33
  %1019 = add nsw i64 %1018, %1017
  store i64 %1019, ptr %307, align 8, !tbaa !33
  store i32 1, ptr %298, align 4, !tbaa !82
  br label %1020

1020:                                             ; preds = %1007, %1004, %1000
  %1021 = load i64, ptr %5, align 16, !tbaa !35
  %1022 = load i64, ptr %308, align 8, !tbaa !35
  %1023 = load ptr, ptr %309, align 8, !tbaa !56
  %1024 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1023, i64 0, i32 2
  call void @type1_do_vstem(ptr noundef %0, i64 noundef %1021, i64 noundef %1022, ptr noundef nonnull %1024) #7
  %1025 = load i64, ptr %310, align 16, !tbaa !35
  %1026 = load i64, ptr %311, align 8, !tbaa !35
  %1027 = load ptr, ptr %309, align 8, !tbaa !56
  %1028 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1027, i64 0, i32 2
  call void @type1_do_vstem(ptr noundef %0, i64 noundef %1025, i64 noundef %1026, ptr noundef nonnull %1028) #7
  %1029 = load i64, ptr %312, align 16, !tbaa !35
  %1030 = load i64, ptr %313, align 8, !tbaa !35
  %1031 = load ptr, ptr %309, align 8, !tbaa !56
  %1032 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1031, i64 0, i32 2
  call void @type1_do_vstem(ptr noundef %0, i64 noundef %1029, i64 noundef %1030, ptr noundef nonnull %1032) #7
  br label %1286

1033:                                             ; preds = %993
  %1034 = load ptr, ptr %40, align 8, !tbaa !37
  call void @type1_apply_path_hints(ptr noundef %0, i32 noundef 0, ptr noundef %1034) #7
  %1035 = load i64, ptr %5, align 16, !tbaa !35
  %1036 = load i64, ptr %291, align 8, !tbaa !35
  %1037 = load ptr, ptr %292, align 8, !tbaa !56
  %1038 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1037, i64 0, i32 2
  call void @type1_do_hstem(ptr noundef %0, i64 noundef %1035, i64 noundef %1036, ptr noundef nonnull %1038) #7
  %1039 = load i64, ptr %293, align 16, !tbaa !35
  %1040 = load i64, ptr %294, align 8, !tbaa !35
  %1041 = load ptr, ptr %292, align 8, !tbaa !56
  %1042 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1041, i64 0, i32 2
  call void @type1_do_hstem(ptr noundef %0, i64 noundef %1039, i64 noundef %1040, ptr noundef nonnull %1042) #7
  %1043 = load i64, ptr %295, align 16, !tbaa !35
  %1044 = load i64, ptr %296, align 8, !tbaa !35
  %1045 = load ptr, ptr %292, align 8, !tbaa !56
  %1046 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1045, i64 0, i32 2
  call void @type1_do_hstem(ptr noundef %0, i64 noundef %1043, i64 noundef %1044, ptr noundef nonnull %1046) #7
  br label %1286

1047:                                             ; preds = %993
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  %1048 = load i64, ptr %276, align 8, !tbaa !35
  %1049 = lshr i64 %1048, 12
  %1050 = trunc i64 %1049 to i32
  store i32 %1050, ptr %277, align 8, !tbaa !75
  store i64 %39, ptr %278, align 8, !tbaa !30
  store i64 %38, ptr %279, align 8, !tbaa !33
  %1051 = load i64, ptr %5, align 16, !tbaa !35
  %1052 = load i64, ptr %280, align 8, !tbaa !79
  %1053 = sub nsw i64 %1051, %1052
  store i64 %1053, ptr %281, align 8, !tbaa !86
  %1054 = load i64, ptr %282, align 8, !tbaa !35
  store i64 %1054, ptr %283, align 8, !tbaa !87
  %1055 = load i64, ptr %284, align 16, !tbaa !35
  store i64 %1055, ptr %285, align 8, !tbaa !88
  call void @accum_xy_proc(ptr noundef nonnull %4, i64 noundef %1054, i64 noundef %1055) #7
  %1056 = load i64, ptr %278, align 8, !tbaa !30
  store i64 %1056, ptr %286, align 8, !tbaa !29
  %1057 = load ptr, ptr %4, align 8, !tbaa !38
  %1058 = getelementptr inbounds %struct.gx_path_s, ptr %1057, i64 0, i32 7
  store i64 %1056, ptr %1058, align 8, !tbaa !76
  %1059 = load i64, ptr %279, align 8, !tbaa !33
  store i64 %1059, ptr %287, align 8, !tbaa !32
  %1060 = getelementptr inbounds %struct.gx_path_s, ptr %1057, i64 0, i32 7, i32 1
  store i64 %1059, ptr %1060, align 8, !tbaa !77
  store i32 0, ptr %43, align 8, !tbaa !40
  %1061 = load ptr, ptr %288, align 8, !tbaa !78
  %1062 = load i64, ptr %289, align 16, !tbaa !35
  %1063 = lshr i64 %1062, 12
  %1064 = trunc i64 %1063 to i32
  %1065 = call i32 %1061(ptr noundef %9, i32 noundef %1064, ptr noundef nonnull %7) #7
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1071, label %1067

1067:                                             ; preds = %1047
  %1068 = load i64, ptr %289, align 16, !tbaa !35
  %1069 = lshr i64 %1068, 12
  %1070 = trunc i64 %1069 to i32
  store i32 %1070, ptr %2, align 4, !tbaa !36
  br label %1074

1071:                                             ; preds = %1047
  %1072 = getelementptr inbounds %struct.ip_state, ptr %321, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1072, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !41
  %1073 = load ptr, ptr %7, align 8, !tbaa !42
  br label %1074

1074:                                             ; preds = %1071, %1067
  %1075 = phi i32 [ 1, %1067 ], [ 6, %1071 ]
  %1076 = phi ptr [ %996, %1067 ], [ %1073, %1071 ]
  %1077 = phi ptr [ %322, %1067 ], [ %290, %1071 ]
  %1078 = phi i32 [ %1065, %1067 ], [ %323, %1071 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  br label %1286

1079:                                             ; preds = %993
  %1080 = load i64, ptr %5, align 16, !tbaa !35
  %1081 = load i64, ptr %266, align 8, !tbaa !35
  %1082 = load i64, ptr %267, align 16, !tbaa !35
  %1083 = load i64, ptr %268, align 8, !tbaa !35
  %1084 = call i32 @gs_type1_sbw(ptr noundef %0, i64 noundef %1080, i64 noundef %1081, i64 noundef %1082, i64 noundef %1083) #7
  br label %964

1085:                                             ; preds = %993
  %1086 = getelementptr inbounds i64, ptr %322, i64 -1
  %1087 = load i64, ptr %1086, align 8, !tbaa !35
  %1088 = sitofp i64 %1087 to float
  %1089 = load i64, ptr %322, align 8, !tbaa !35
  %1090 = sitofp i64 %1089 to float
  %1091 = fdiv float %1088, %1090
  %1092 = fmul float %1091, 4.096000e+03
  %1093 = fptosi float %1092 to i64
  store i64 %1093, ptr %1086, align 8, !tbaa !35
  br label %1286, !llvm.loop !51

1094:                                             ; preds = %993
  br label %1286

1095:                                             ; preds = %993
  %1096 = load i64, ptr %322, align 8, !tbaa !35
  %1097 = lshr i64 %1096, 12
  %1098 = trunc i64 %1097 to i32
  store i32 %1098, ptr %2, align 4, !tbaa !36
  switch i32 %1098, label %1221 [
    i32 0, label %1099
    i32 1, label %1145
    i32 2, label %1153
    i32 3, label %1163
    i32 14, label %1166
    i32 15, label %1217
    i32 16, label %1218
    i32 17, label %1219
    i32 18, label %1220
  ]

1099:                                             ; preds = %1095
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  %1100 = load i32, ptr %239, align 8, !tbaa !70
  %1101 = icmp eq i32 %1100, 8
  br i1 %1101, label %1102, label %1137

1102:                                             ; preds = %1099
  store i32 2, ptr %240, align 4, !tbaa !89
  %1103 = getelementptr inbounds i64, ptr %322, i64 -3
  %1104 = load i64, ptr %1103, align 8, !tbaa !35
  %1105 = load i64, ptr %241, align 8, !tbaa !86
  %1106 = sub nsw i64 %1104, %1105
  %1107 = getelementptr inbounds i64, ptr %322, i64 -4
  store i64 %1106, ptr %1107, align 8, !tbaa !35
  %1108 = getelementptr inbounds i64, ptr %322, i64 -2
  %1109 = load i64, ptr %1108, align 8, !tbaa !35
  store i64 %1109, ptr %1103, align 8, !tbaa !35
  %1110 = load ptr, ptr %4, align 8, !tbaa !38
  %1111 = call i32 @gx_path_current_point(ptr noundef %1110, ptr noundef nonnull %8) #7
  %1112 = load ptr, ptr %4, align 8, !tbaa !38
  %1113 = load i64, ptr %242, align 8, !tbaa !90
  %1114 = load i64, ptr %243, align 8, !tbaa !91
  %1115 = call i32 @gx_path_add_point(ptr noundef %1112, i64 noundef %1113, i64 noundef %1114) #7
  %1116 = load i32, ptr %244, align 8, !tbaa !92
  %1117 = trunc i32 %1116 to i8
  %1118 = load ptr, ptr %4, align 8, !tbaa !38
  %1119 = getelementptr inbounds %struct.gx_path_s, ptr %1118, i64 0, i32 11
  store i8 %1117, ptr %1119, align 1, !tbaa !65
  %1120 = load i64, ptr %245, align 8, !tbaa !90
  %1121 = load i64, ptr %246, align 8, !tbaa !91
  %1122 = load i64, ptr %247, align 8, !tbaa !90
  %1123 = load i64, ptr %248, align 8, !tbaa !91
  %1124 = load i64, ptr %249, align 8, !tbaa !90
  %1125 = load i64, ptr %250, align 8, !tbaa !91
  %1126 = call i32 @gx_path_add_curve_notes(ptr noundef %1118, i64 noundef %1122, i64 noundef %1123, i64 noundef %1124, i64 noundef %1125, i64 noundef %1120, i64 noundef %1121, i32 noundef 0) #7
  %1127 = icmp slt i32 %1126, 0
  br i1 %1127, label %1137, label %1128

1128:                                             ; preds = %1102
  %1129 = load ptr, ptr %4, align 8, !tbaa !38
  %1130 = load i64, ptr %251, align 8, !tbaa !90
  %1131 = load i64, ptr %252, align 8, !tbaa !91
  %1132 = load i64, ptr %253, align 8, !tbaa !90
  %1133 = load i64, ptr %254, align 8, !tbaa !91
  %1134 = load i64, ptr %255, align 8, !tbaa !90
  %1135 = load i64, ptr %256, align 8, !tbaa !91
  %1136 = call i32 @gx_path_add_curve_notes(ptr noundef %1129, i64 noundef %1130, i64 noundef %1131, i64 noundef %1132, i64 noundef %1133, i64 noundef %1134, i64 noundef %1135, i32 noundef 0) #7
  br label %1137

1137:                                             ; preds = %1102, %1099, %1128
  %1138 = phi i1 [ true, %1128 ], [ false, %1099 ], [ false, %1102 ]
  %1139 = phi i32 [ %1136, %1128 ], [ %318, %1099 ], [ %1126, %1102 ]
  %1140 = phi ptr [ %1103, %1128 ], [ %322, %1099 ], [ %1103, %1102 ]
  %1141 = phi i32 [ %323, %1128 ], [ -10, %1099 ], [ %1126, %1102 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br i1 %1138, label %1142, label %1221

1142:                                             ; preds = %1137
  %1143 = icmp slt i32 %1139, 0
  br i1 %1143, label %1221, label %1144

1144:                                             ; preds = %1142
  store i32 8, ptr %239, align 8, !tbaa !70
  br label %1221

1145:                                             ; preds = %1095
  %1146 = load ptr, ptr %4, align 8, !tbaa !38
  %1147 = call i32 @gx_path_current_point(ptr noundef %1146, ptr noundef nonnull %236) #7
  %1148 = load ptr, ptr %4, align 8, !tbaa !38
  %1149 = getelementptr inbounds %struct.gx_path_s, ptr %1148, i64 0, i32 11
  %1150 = load i8, ptr %1149, align 1, !tbaa !65
  %1151 = zext i8 %1150 to i32
  store i32 %1151, ptr %237, align 8, !tbaa !92
  store i32 1, ptr %238, align 8, !tbaa !70
  %1152 = getelementptr inbounds i64, ptr %322, i64 -2
  br label %1221

1153:                                             ; preds = %1095
  %1154 = load i32, ptr %235, align 8, !tbaa !70
  %1155 = icmp sgt i32 %1154, 7
  br i1 %1155, label %1221, label %1156

1156:                                             ; preds = %1153
  %1157 = load ptr, ptr %4, align 8, !tbaa !38
  %1158 = add nsw i32 %1154, 1
  store i32 %1158, ptr %235, align 8, !tbaa !70
  %1159 = sext i32 %1154 to i64
  %1160 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 25, i64 %1159
  %1161 = call i32 @gx_path_current_point(ptr noundef %1157, ptr noundef nonnull %1160) #7
  %1162 = getelementptr inbounds i64, ptr %322, i64 -2
  br label %1221

1163:                                             ; preds = %1095
  store i32 1, ptr %234, align 4, !tbaa !89
  %1164 = load ptr, ptr %40, align 8, !tbaa !37
  call void @type1_apply_path_hints(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1164) #7
  call void @type1_replace_stem_hints(ptr noundef nonnull %0) #7
  %1165 = getelementptr inbounds i64, ptr %322, i64 -2
  br label %1221

1166:                                             ; preds = %1095, %1220, %1219, %1218, %1217
  %1167 = phi i32 [ 6, %1220 ], [ 4, %1219 ], [ 3, %1218 ], [ 2, %1217 ], [ 1, %1095 ]
  %1168 = getelementptr inbounds i64, ptr %322, i64 -1
  %1169 = load i64, ptr %1168, align 8, !tbaa !35
  %1170 = lshr i64 %1169, 12
  %1171 = trunc i64 %1170 to i32
  %1172 = sdiv i32 %1171, %1167
  %1173 = add nsw i32 %1172, -1
  %1174 = icmp sgt i32 %1167, %1171
  br i1 %1174, label %1212, label %1175

1175:                                             ; preds = %1166
  %1176 = urem i32 %1171, %1167
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %1178, label %1212

1178:                                             ; preds = %1175
  %1179 = and i64 %1170, 4294967295
  %1180 = sub nsw i64 0, %1179
  %1181 = getelementptr inbounds i64, ptr %1168, i64 %1180
  %1182 = zext nneg i32 %1167 to i64
  %1183 = getelementptr inbounds i64, ptr %1181, i64 %1182
  %1184 = getelementptr inbounds i64, ptr %1183, i64 -1
  %1185 = icmp sgt i32 %1172, 1
  %1186 = sext i32 %1173 to i64
  %1187 = zext nneg i32 %1172 to i64
  br label %1188

1188:                                             ; preds = %1178, %1207
  %1189 = phi ptr [ %1184, %1178 ], [ %1210, %1207 ]
  %1190 = phi ptr [ %1181, %1178 ], [ %1209, %1207 ]
  %1191 = phi i32 [ 0, %1178 ], [ %1208, %1207 ]
  br i1 %1185, label %1192, label %1207

1192:                                             ; preds = %1188
  %1193 = load i64, ptr %1190, align 8, !tbaa !35
  br label %1194

1194:                                             ; preds = %1192, %1194
  %1195 = phi i64 [ 1, %1192 ], [ %1205, %1194 ]
  %1196 = phi i64 [ %1193, %1192 ], [ %1204, %1194 ]
  %1197 = getelementptr inbounds i64, ptr %1189, i64 %1195
  %1198 = load i64, ptr %1197, align 8, !tbaa !35
  %1199 = sitofp i64 %1198 to float
  %1200 = getelementptr inbounds %struct.gs_font_type1_s, ptr %9, i64 0, i32 22, i32 27, i32 1, i64 %1195
  %1201 = load float, ptr %1200, align 4, !tbaa !93
  %1202 = sitofp i64 %1196 to float
  %1203 = call float @llvm.fmuladd.f32(float %1199, float %1201, float %1202)
  %1204 = fptosi float %1203 to i64
  store i64 %1204, ptr %1190, align 8, !tbaa !35
  %1205 = add nuw nsw i64 %1195, 1
  %1206 = icmp eq i64 %1205, %1187
  br i1 %1206, label %1207, label %1194, !llvm.loop !94

1207:                                             ; preds = %1194, %1188
  %1208 = add nuw nsw i32 %1191, 1
  %1209 = getelementptr inbounds i64, ptr %1190, i64 1
  %1210 = getelementptr inbounds i64, ptr %1189, i64 %1186
  %1211 = icmp eq i32 %1208, %1167
  br i1 %1211, label %1212, label %1188, !llvm.loop !95

1212:                                             ; preds = %1207, %1166, %1175
  %1213 = phi i1 [ false, %1175 ], [ false, %1166 ], [ true, %1207 ]
  %1214 = phi ptr [ %322, %1175 ], [ %322, %1166 ], [ %1190, %1207 ]
  %1215 = phi i32 [ -10, %1175 ], [ -10, %1166 ], [ %323, %1207 ]
  br i1 %1213, label %1216, label %1221

1216:                                             ; preds = %1212
  store i32 %1167, ptr %233, align 4, !tbaa !89
  br label %1221

1217:                                             ; preds = %1095
  br label %1166

1218:                                             ; preds = %1095
  br label %1166

1219:                                             ; preds = %1095
  br label %1166

1220:                                             ; preds = %1095
  br label %1166

1221:                                             ; preds = %1095, %1153, %1142, %1137, %1212, %1216, %1163, %1156, %1145, %1144
  %1222 = phi i1 [ false, %1216 ], [ false, %1212 ], [ false, %1163 ], [ false, %1156 ], [ false, %1145 ], [ false, %1144 ], [ false, %1137 ], [ false, %1142 ], [ false, %1153 ], [ true, %1095 ]
  %1223 = phi i32 [ 10, %1216 ], [ 1, %1212 ], [ 10, %1163 ], [ 10, %1156 ], [ 10, %1145 ], [ 10, %1144 ], [ 1, %1137 ], [ 1, %1142 ], [ 1, %1153 ], [ 0, %1095 ]
  %1224 = phi i32 [ %318, %1216 ], [ %318, %1212 ], [ %318, %1163 ], [ %318, %1156 ], [ %318, %1145 ], [ %1139, %1144 ], [ %1139, %1137 ], [ %1139, %1142 ], [ %318, %1153 ], [ %318, %1095 ]
  %1225 = phi ptr [ %1214, %1216 ], [ %1214, %1212 ], [ %1165, %1163 ], [ %1162, %1156 ], [ %1152, %1145 ], [ %1140, %1144 ], [ %1140, %1137 ], [ %1140, %1142 ], [ %322, %1153 ], [ %322, %1095 ]
  %1226 = phi i32 [ %1215, %1216 ], [ %1215, %1212 ], [ %323, %1163 ], [ %323, %1156 ], [ %323, %1145 ], [ %1141, %1144 ], [ %1141, %1137 ], [ %1139, %1142 ], [ -10, %1153 ], [ %323, %1095 ]
  br i1 %1222, label %1227, label %1286

1227:                                             ; preds = %1221
  %1228 = ptrtoint ptr %1225 to i64
  %1229 = sub i64 %1228, %257
  %1230 = lshr exact i64 %1229, 3
  %1231 = trunc i64 %1230 to i32
  %1232 = icmp slt i32 %1231, 1
  br i1 %1232, label %1286, label %1233

1233:                                             ; preds = %1227
  %1234 = getelementptr inbounds i64, ptr %1225, i64 -1
  %1235 = load i64, ptr %1234, align 8, !tbaa !35
  %1236 = icmp slt i64 %1235, 0
  br i1 %1236, label %1286, label %1237

1237:                                             ; preds = %1233
  %1238 = shl i64 %1229, 9
  %1239 = add i64 %1238, 17592186040320
  %1240 = and i64 %1239, 17592186040320
  %1241 = icmp sgt i64 %1235, %1240
  br i1 %1241, label %1286, label %1242

1242:                                             ; preds = %1237
  %1243 = lshr i64 %1235, 12
  %1244 = trunc i64 %1243 to i32
  %1245 = load ptr, ptr %258, align 8, !tbaa !96
  %1246 = add nuw nsw i32 %1244, 1
  %1247 = zext nneg i32 %1246 to i64
  %1248 = sub nsw i64 0, %1247
  %1249 = getelementptr inbounds i64, ptr %1225, i64 %1248
  %1250 = call i32 %1245(ptr noundef %9, ptr noundef nonnull %1249, i32 noundef %1244) #7
  %1251 = icmp slt i32 %1250, 0
  br i1 %1251, label %1286, label %1252

1252:                                             ; preds = %1242
  %1253 = sub nsw i32 %1231, %1246
  %1254 = load i64, ptr %259, align 8, !tbaa !30
  store i64 %1254, ptr %260, align 8, !tbaa !29
  %1255 = load i64, ptr %261, align 8, !tbaa !33
  store i64 %1255, ptr %262, align 8, !tbaa !32
  %1256 = load ptr, ptr %40, align 8, !tbaa !37
  call void @type1_apply_path_hints(ptr noundef %0, i32 noundef 0, ptr noundef %1256) #7
  store ptr %996, ptr %321, align 8, !tbaa !47
  %1257 = getelementptr inbounds %struct.ip_state, ptr %321, i64 0, i32 1
  store i16 %995, ptr %1257, align 8, !tbaa !50
  store i32 %1253, ptr %43, align 8, !tbaa !40
  %1258 = ptrtoint ptr %321 to i64
  %1259 = sub i64 %1258, %263
  %1260 = lshr exact i64 %1259, 5
  %1261 = trunc i64 %1260 to i32
  %1262 = add i32 %1261, 1
  store i32 %1262, ptr %14, align 8, !tbaa !25
  %1263 = icmp eq i32 %1246, %1231
  br i1 %1263, label %1286, label %1264

1264:                                             ; preds = %1252
  %1265 = sext i32 %1253 to i64
  %1266 = shl nsw i64 %1265, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %264, ptr nonnull align 16 %5, i64 %1266, i1 false)
  br label %1286

1267:                                             ; preds = %993
  %1268 = load i32, ptr %231, align 4, !tbaa !89
  %1269 = icmp eq i32 %1268, 0
  br i1 %1269, label %1272, label %1270

1270:                                             ; preds = %1267
  %1271 = add nsw i32 %1268, -1
  store i32 %1271, ptr %231, align 4, !tbaa !89
  br label %1286

1272:                                             ; preds = %1267
  %1273 = getelementptr inbounds i64, ptr %322, i64 1
  %1274 = load ptr, ptr %232, align 8, !tbaa !97
  %1275 = call i32 %1274(ptr noundef %9, ptr noundef nonnull %1273) #7
  %1276 = icmp slt i32 %1275, 0
  %1277 = select i1 %1276, i32 1, i32 12
  %1278 = select i1 %1276, i32 %1275, i32 %323
  br label %1286, !llvm.loop !51

1279:                                             ; preds = %993
  store i64 %39, ptr %225, align 8, !tbaa !30
  store i64 %38, ptr %226, align 8, !tbaa !33
  %1280 = load i64, ptr %227, align 8, !tbaa !87
  %1281 = load i64, ptr %5, align 16, !tbaa !35
  %1282 = add nsw i64 %1281, %1280
  store i64 %1282, ptr %5, align 16, !tbaa !35
  %1283 = load i64, ptr %228, align 8, !tbaa !88
  %1284 = load i64, ptr %229, align 8, !tbaa !35
  %1285 = add nsw i64 %1284, %1283
  store i64 %1285, ptr %229, align 8, !tbaa !35
  call void @accum_xy_proc(ptr noundef nonnull %4, i64 noundef %1282, i64 noundef %1285) #7
  br label %1286

1286:                                             ; preds = %1279, %405, %1272, %415, %993, %1237, %1233, %1227, %1242, %1264, %1252, %975, %976, %525, %416, %341, %374, %1085, %1221, %1270, %1094, %1074, %1033, %1020, %997, %661, %655, %528, %440, %434, %433, %431, %426
  %1287 = phi i32 [ 10, %1270 ], [ %1223, %1221 ], [ 10, %1094 ], [ %1075, %1074 ], [ 10, %1033 ], [ 10, %1020 ], [ 10, %997 ], [ %656, %655 ], [ 1, %661 ], [ 10, %440 ], [ 10, %434 ], [ 10, %433 ], [ 5, %431 ], [ 6, %426 ], [ 12, %1085 ], [ 12, %374 ], [ 12, %341 ], [ 1, %416 ], [ 1, %525 ], [ 1, %976 ], [ 1, %975 ], [ 1, %1252 ], [ 1, %1264 ], [ 1, %1242 ], [ 1, %1227 ], [ 1, %1233 ], [ 1, %1237 ], [ %1277, %1272 ], [ 1, %993 ], [ 1, %415 ], [ %414, %405 ], [ 10, %1279 ], [ 10, %528 ]
  %1288 = phi i32 [ %318, %1270 ], [ %1224, %1221 ], [ %318, %1094 ], [ %1065, %1074 ], [ %318, %1033 ], [ %318, %1020 ], [ %318, %997 ], [ %650, %655 ], [ %318, %661 ], [ %318, %440 ], [ %318, %434 ], [ %318, %433 ], [ %318, %431 ], [ %424, %426 ], [ %318, %1085 ], [ %318, %374 ], [ %318, %341 ], [ %424, %416 ], [ %526, %525 ], [ %318, %976 ], [ %318, %975 ], [ %1250, %1252 ], [ %1250, %1264 ], [ %1250, %1242 ], [ %1224, %1227 ], [ %1224, %1233 ], [ %1224, %1237 ], [ %1275, %1272 ], [ %318, %993 ], [ %318, %415 ], [ %318, %405 ], [ %318, %1279 ], [ %526, %528 ]
  %1289 = phi i16 [ %995, %1270 ], [ %995, %1221 ], [ %995, %1094 ], [ %995, %1074 ], [ %995, %1033 ], [ %995, %1020 ], [ %995, %997 ], [ %337, %655 ], [ %337, %661 ], [ %337, %440 ], [ %337, %434 ], [ %337, %433 ], [ %337, %431 ], [ %337, %426 ], [ %995, %1085 ], [ %380, %374 ], [ %337, %341 ], [ %337, %416 ], [ %337, %525 ], [ %965, %976 ], [ %965, %975 ], [ %995, %1252 ], [ %995, %1264 ], [ %995, %1242 ], [ %995, %1227 ], [ %995, %1233 ], [ %995, %1237 ], [ %995, %1272 ], [ %995, %993 ], [ %337, %415 ], [ %399, %405 ], [ %995, %1279 ], [ %337, %528 ]
  %1290 = phi ptr [ %996, %1270 ], [ %996, %1221 ], [ %996, %1094 ], [ %1076, %1074 ], [ %996, %1033 ], [ %996, %1020 ], [ %996, %997 ], [ %657, %655 ], [ %324, %661 ], [ %324, %440 ], [ %324, %434 ], [ %324, %433 ], [ %324, %431 ], [ %430, %426 ], [ %996, %1085 ], [ %350, %374 ], [ %324, %341 ], [ %324, %416 ], [ %324, %525 ], [ %966, %976 ], [ %966, %975 ], [ %996, %1252 ], [ %996, %1264 ], [ %996, %1242 ], [ %996, %1227 ], [ %996, %1233 ], [ %996, %1237 ], [ %996, %1272 ], [ %996, %993 ], [ %324, %415 ], [ %406, %405 ], [ %996, %1279 ], [ %324, %528 ]
  %1291 = phi ptr [ %321, %1270 ], [ %321, %1221 ], [ %321, %1094 ], [ %321, %1074 ], [ %321, %1033 ], [ %321, %1020 ], [ %321, %997 ], [ %658, %655 ], [ %321, %661 ], [ %321, %440 ], [ %321, %434 ], [ %321, %433 ], [ %432, %431 ], [ %427, %426 ], [ %321, %1085 ], [ %321, %374 ], [ %321, %341 ], [ %321, %416 ], [ %321, %525 ], [ %321, %976 ], [ %321, %975 ], [ %321, %1252 ], [ %321, %1264 ], [ %321, %1242 ], [ %321, %1227 ], [ %321, %1233 ], [ %321, %1237 ], [ %321, %1272 ], [ %321, %993 ], [ %321, %415 ], [ %321, %405 ], [ %321, %1279 ], [ %321, %528 ]
  %1292 = phi ptr [ %322, %1270 ], [ %1225, %1221 ], [ %265, %1094 ], [ %1077, %1074 ], [ %297, %1033 ], [ %314, %1020 ], [ %316, %997 ], [ %659, %655 ], [ %322, %661 ], [ %217, %440 ], [ %220, %434 ], [ %221, %433 ], [ %322, %431 ], [ %428, %426 ], [ %1086, %1085 ], [ %359, %374 ], [ %346, %341 ], [ %322, %416 ], [ %322, %525 ], [ %322, %976 ], [ %322, %975 ], [ %1225, %1252 ], [ %1225, %1264 ], [ %1225, %1242 ], [ %1225, %1227 ], [ %1225, %1233 ], [ %1225, %1237 ], [ %1273, %1272 ], [ %322, %993 ], [ %322, %415 ], [ %410, %405 ], [ %230, %1279 ], [ %230, %528 ]
  %1293 = phi i32 [ %323, %1270 ], [ %1226, %1221 ], [ %323, %1094 ], [ %1078, %1074 ], [ %323, %1033 ], [ %323, %1020 ], [ %323, %997 ], [ %660, %655 ], [ %662, %661 ], [ %323, %440 ], [ %323, %434 ], [ %323, %433 ], [ %323, %431 ], [ %323, %426 ], [ %323, %1085 ], [ %323, %374 ], [ %323, %341 ], [ %424, %416 ], [ %526, %525 ], [ 1, %976 ], [ 1, %975 ], [ 2, %1252 ], [ 2, %1264 ], [ %1250, %1242 ], [ -10, %1227 ], [ -10, %1233 ], [ -10, %1237 ], [ %1278, %1272 ], [ -10, %993 ], [ -10, %415 ], [ %413, %405 ], [ %323, %1279 ], [ %323, %528 ]
  switch i32 %1287, label %1295 [
    i32 12, label %1294
    i32 6, label %61
    i32 5, label %86
    i32 10, label %1294
  ]

1294:                                             ; preds = %1286, %1286
  br label %317

1295:                                             ; preds = %1286
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #7
  ret i32 %1293
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @gs_type1_finish_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @type1_apply_path_hints(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @type1_do_hstem(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @type1_do_vstem(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gx_path_add_point(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @accum_xy_proc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @gx_path_add_line_notes(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gs_op1_rrcurveto(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @reset_stem_hints(ptr noundef) local_unnamed_addr #3

declare i32 @gs_type1_endchar(ptr noundef) local_unnamed_addr #3

declare i32 @gx_path_add_curve_notes(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gs_op1_closepath(ptr noundef) local_unnamed_addr #3

declare i32 @gs_type1_sbw(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @type1_do_center_vstem(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gx_path_current_point(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @type1_replace_stem_hints(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = !{!10, !6, i64 0}
!10 = !{!"gs_type1_state_s", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 28, !12, i64 32, !15, i64 120, !16, i64 128, !18, i64 176, !20, i64 880, !7, i64 896, !11, i64 1280, !7, i64 1288, !11, i64 1640, !11, i64 1644, !11, i64 1648, !11, i64 1652, !11, i64 1656, !20, i64 1664, !20, i64 1680, !11, i64 1696, !20, i64 1704, !14, i64 1720, !20, i64 1728, !11, i64 1744, !7, i64 1752, !11, i64 1880, !11, i64 1884, !11, i64 1888, !11, i64 1892, !20, i64 1896, !11, i64 1912, !20, i64 1920, !6, i64 1936, !11, i64 1944, !20, i64 1952, !21, i64 1968, !21, i64 5056, !7, i64 8144}
!11 = !{!"int", !7, i64 0}
!12 = !{!"", !13, i64 0, !13, i64 16, !13, i64 32, !13, i64 48, !11, i64 64, !11, i64 68, !11, i64 72, !14, i64 80}
!13 = !{!"", !14, i64 0, !14, i64 8}
!14 = !{!"long", !7, i64 0}
!15 = !{!"float", !7, i64 0}
!16 = !{!"point_scale_s", !17, i64 0, !17, i64 24}
!17 = !{!"pixel_scale_s", !14, i64 0, !14, i64 8, !11, i64 16}
!18 = !{!"font_hints_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !16, i64 24, !19, i64 72, !19, i64 184, !14, i64 296, !14, i64 304, !11, i64 312, !11, i64 316, !7, i64 320}
!19 = !{!"", !11, i64 0, !7, i64 8}
!20 = !{!"gs_fixed_point_s", !14, i64 0, !14, i64 8}
!21 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !7, i64 16}
!22 = !{!23, !11, i64 48}
!23 = !{!"gs_type1_data_s", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !11, i64 88, !15, i64 92, !15, i64 96, !24, i64 100, !15, i64 160, !11, i64 164, !24, i64 168, !24, i64 228, !11, i64 272, !24, i64 276, !11, i64 320, !24, i64 324, !24, i64 332, !24, i64 340, !24, i64 392, !24, i64 444}
!24 = !{!"", !11, i64 0, !7, i64 4}
!25 = !{!10, !11, i64 1640}
!26 = !{!10, !14, i64 880}
!27 = !{!10, !14, i64 888}
!28 = !{!10, !11, i64 1644}
!29 = !{!10, !14, i64 1728}
!30 = !{!31, !14, i64 120}
!31 = !{!"gs_op1_state_s", !6, i64 0, !6, i64 8, !12, i64 16, !20, i64 104, !20, i64 120}
!32 = !{!10, !14, i64 1736}
!33 = !{!31, !14, i64 128}
!34 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35, i64 24, i64 8, !35, i64 32, i64 8, !35, i64 40, i64 8, !35, i64 48, i64 8, !35, i64 56, i64 8, !35, i64 64, i64 4, !36, i64 68, i64 4, !36, i64 72, i64 4, !36, i64 80, i64 8, !35}
!35 = !{!14, !14, i64 0}
!36 = !{!11, !11, i64 0}
!37 = !{!10, !6, i64 16}
!38 = !{!31, !6, i64 0}
!39 = !{!31, !6, i64 8}
!40 = !{!10, !11, i64 1280}
!41 = !{i64 0, i64 8, !5, i64 8, i64 4, !36}
!42 = !{!43, !6, i64 0}
!43 = !{!"gs_const_string_s", !6, i64 0, !11, i64 8}
!44 = !{!7, !7, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!48, !6, i64 0}
!48 = !{!"", !6, i64 0, !49, i64 8, !43, i64 16}
!49 = !{!"short", !7, i64 0}
!50 = !{!48, !49, i64 8}
!51 = distinct !{!51, !46}
!52 = distinct !{!52, !46}
!53 = !{!23, !11, i64 52}
!54 = !{!23, !6, i64 8}
!55 = !{!48, !6, i64 16}
!56 = !{!10, !6, i64 8}
!57 = !{!31, !14, i64 72}
!58 = !{!31, !14, i64 64}
!59 = !{!31, !14, i64 96}
!60 = !{!31, !11, i64 84}
!61 = !{!31, !11, i64 80}
!62 = !{!31, !14, i64 56}
!63 = !{!31, !14, i64 48}
!64 = !{!10, !6, i64 1936}
!65 = !{!66, !7, i64 121}
!66 = !{!"gx_path_s", !6, i64 0, !67, i64 8, !6, i64 40, !6, i64 48, !6, i64 56, !11, i64 64, !11, i64 68, !20, i64 72, !68, i64 88, !68, i64 104, !7, i64 120, !7, i64 121, !7, i64 122, !7, i64 123}
!67 = !{!"gs_fixed_rect_s", !20, i64 0, !20, i64 16}
!68 = !{!"gs_point_s", !69, i64 0, !69, i64 8}
!69 = !{!"double", !7, i64 0}
!70 = !{!10, !11, i64 1880}
!71 = !{!31, !14, i64 24}
!72 = !{!31, !14, i64 16}
!73 = !{!31, !14, i64 40}
!74 = !{!31, !14, i64 32}
!75 = !{!10, !11, i64 1696}
!76 = !{!66, !14, i64 72}
!77 = !{!66, !14, i64 80}
!78 = !{!23, !6, i64 16}
!79 = !{!10, !14, i64 1664}
!80 = !{!10, !14, i64 1672}
!81 = !{!10, !11, i64 1888}
!82 = !{!10, !11, i64 1892}
!83 = !{!10, !11, i64 188}
!84 = !{!10, !14, i64 1896}
!85 = !{!10, !14, i64 1904}
!86 = !{!10, !14, i64 1720}
!87 = !{!10, !14, i64 1704}
!88 = !{!10, !14, i64 1712}
!89 = !{!10, !11, i64 1884}
!90 = !{!20, !14, i64 0}
!91 = !{!20, !14, i64 8}
!92 = !{!10, !11, i64 1744}
!93 = !{!15, !15, i64 0}
!94 = distinct !{!94, !46}
!95 = distinct !{!95, !46}
!96 = !{!23, !6, i64 24}
!97 = !{!23, !6, i64 32}
