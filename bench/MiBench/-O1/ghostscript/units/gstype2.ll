; ModuleID = 'gstype2.c'
source_filename = "gstype2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_op1_state_s = type { ptr, ptr, %struct.fixed_coeff, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.fixed_coeff = type { %struct.coeff1, %struct.coeff1, %struct.coeff1, %struct.coeff1, i32, i32, i32, i64 }
%struct.coeff1 = type { i64, i64 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_point_s = type { double, double }
%struct.gs_font_type1_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, i32, i32, %struct.gs_type1_data_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
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
%struct.gs_const_string_s = type { ptr, i32 }
%struct.stem_hint_table = type { i32, i32, i32, [96 x %struct.stem_hint] }
%struct.stem_hint = type { i64, i64, i64, i64 }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }

@gs_charstring_interpreter = external local_unnamed_addr global [3 x ptr], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @gs_gstype2_init(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store ptr @gs_type2_charstring_interpret, ptr getelementptr inbounds ([3 x ptr], ptr @gs_charstring_interpreter, i64 0, i64 2), align 16, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gs_type2_charstring_interpret(ptr noundef %0, ptr noundef readonly %1, ptr nocapture readnone %2) #1 {
  %4 = alloca %struct.gs_op1_state_s, align 8
  %5 = alloca [48 x i64], align 16
  %6 = alloca %struct.gs_point_s, align 8
  %7 = alloca %struct.gs_point_s, align 8
  %8 = load ptr, ptr %0, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.gs_font_type1_s, ptr %8, i64 0, i32 22, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !22
  %11 = icmp sgt i32 %10, -1
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %5) #8
  %12 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !25
  %14 = add nsw i32 %13, -1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 %15
  %17 = getelementptr inbounds %struct.gs_font_type1_s, ptr %8, i64 0, i32 22, i32 27, i32 1
  %18 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 14
  %19 = load i32, ptr %18, align 4, !tbaa !26
  switch i32 %19, label %21 [
    i32 -1, label %30
    i32 0, label %20
  ]

20:                                               ; preds = %3
  call void @gs_type1_finish_init(ptr noundef nonnull %0, ptr noundef nonnull %4) #8
  br label %30

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 23
  %23 = load i64, ptr %22, align 8, !tbaa !27
  %24 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  store i64 %23, ptr %24, align 8, !tbaa !28
  %25 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 23, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !30
  %27 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  store i64 %26, ptr %27, align 8, !tbaa !31
  %28 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2
  %29 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %28, ptr noundef nonnull align 8 dereferenceable(88) %29, i64 88, i1 false), !tbaa.struct !32
  br label %30

30:                                               ; preds = %21, %20, %3
  %31 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  store ptr %32, ptr %4, align 8, !tbaa !36
  %33 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 1
  store ptr %0, ptr %33, align 8, !tbaa !37
  %34 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 11
  %35 = load i32, ptr %34, align 8, !tbaa !38
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 10
  %39 = sext i32 %35 to i64
  %40 = shl nsw i64 %39, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 8 %38, i64 %40, i1 false)
  %41 = add nsw i32 %35, -1
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 3
  br label %44

44:                                               ; preds = %30, %37
  %45 = phi i64 [ %43, %37 ], [ -8, %30 ]
  %46 = icmp eq ptr %1, null
  br i1 %46, label %74, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 %15, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !39
  %49 = load ptr, ptr %1, align 8, !tbaa !40
  br label %50

50:                                               ; preds = %1852, %47
  %51 = phi ptr [ %49, %47 ], [ %1855, %1852 ]
  %52 = phi ptr [ %16, %47 ], [ %1856, %1852 ]
  %53 = phi i64 [ %45, %47 ], [ %1857, %1852 ]
  %54 = phi i32 [ undef, %47 ], [ %1858, %1852 ]
  br i1 %11, label %55, label %81

55:                                               ; preds = %50
  %56 = load i32, ptr %9, align 8, !tbaa !22
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %55
  %59 = zext nneg i32 %56 to i64
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi ptr [ %69, %60 ], [ %51, %58 ]
  %62 = phi i16 [ %68, %60 ], [ 4330, %58 ]
  %63 = phi i32 [ %70, %60 ], [ %56, %58 ]
  %64 = load i8, ptr %61, align 1, !tbaa !42
  %65 = zext i8 %64 to i16
  %66 = add i16 %62, %65
  %67 = mul i16 %66, -12691
  %68 = add i16 %67, 22719
  %69 = getelementptr inbounds i8, ptr %61, i64 1
  %70 = add nsw i32 %63, -1
  %71 = icmp sgt i32 %63, 1
  br i1 %71, label %60, label %72, !llvm.loop !43

72:                                               ; preds = %60
  %73 = getelementptr i8, ptr %51, i64 %59
  br label %81

74:                                               ; preds = %1852, %44
  %75 = phi ptr [ %16, %44 ], [ %1856, %1852 ]
  %76 = phi i64 [ %45, %44 ], [ %1857, %1852 ]
  %77 = phi i32 [ undef, %44 ], [ %1858, %1852 ]
  %78 = load ptr, ptr %75, align 8, !tbaa !45
  %79 = getelementptr inbounds %struct.ip_state, ptr %75, i64 0, i32 1
  %80 = load i16, ptr %79, align 8, !tbaa !48
  br label %81

81:                                               ; preds = %50, %55, %72, %74
  %82 = phi i16 [ %80, %74 ], [ 4330, %50 ], [ 4330, %55 ], [ %68, %72 ]
  %83 = phi ptr [ %78, %74 ], [ %51, %50 ], [ %51, %55 ], [ %73, %72 ]
  %84 = phi ptr [ %75, %74 ], [ %52, %50 ], [ %52, %55 ], [ %52, %72 ]
  %85 = phi i64 [ %76, %74 ], [ %53, %50 ], [ %53, %55 ], [ %53, %72 ]
  %86 = phi i32 [ %77, %74 ], [ %54, %50 ], [ %54, %55 ], [ %54, %72 ]
  %87 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %88 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %89 = getelementptr inbounds i64, ptr %5, i64 5
  %90 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %91 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %92 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 17
  %93 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 37
  %94 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 36
  %95 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 17
  %96 = getelementptr inbounds i64, ptr %5, i64 3
  %97 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %98 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %99 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 3, i32 1
  %100 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 3
  %101 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %102 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %103 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 4
  %104 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 2, i32 1
  %105 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 2
  %106 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %107 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %108 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 0, i32 1
  %109 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2
  %110 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %111 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %112 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 4
  %113 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 1, i32 1
  %114 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 1
  %115 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %116 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %117 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 0, i32 1
  %118 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2
  %119 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %120 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %121 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 4
  %122 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 1, i32 1
  %123 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 1
  %124 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %125 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %126 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 3, i32 1
  %127 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 3
  %128 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %129 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %130 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 4
  %131 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 2, i32 1
  %132 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 2
  %133 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %134 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %135 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 0, i32 1
  %136 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2
  %137 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %138 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %139 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %140 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 4
  %141 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 1, i32 1
  %142 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 1
  %143 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %144 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %145 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %146 = getelementptr inbounds i64, ptr %5, i64 1
  %147 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12
  %148 = ptrtoint ptr %5 to i64
  %149 = ptrtoint ptr %147 to i64
  %150 = getelementptr inbounds i64, ptr %5, i64 1
  %151 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12
  %152 = ptrtoint ptr %5 to i64
  %153 = ptrtoint ptr %151 to i64
  %154 = getelementptr inbounds i64, ptr %5, i64 1
  %155 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12
  %156 = ptrtoint ptr %5 to i64
  %157 = ptrtoint ptr %155 to i64
  %158 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 3, i32 1
  %159 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 3
  %160 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %161 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %162 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %163 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %164 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 4
  %165 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 2, i32 1
  %166 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 2
  %167 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %168 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %169 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 0, i32 1
  %170 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2
  %171 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %172 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %173 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %174 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 4
  %175 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 1, i32 1
  %176 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 1
  %177 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %178 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %179 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %180 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %181 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %182 = getelementptr inbounds i64, ptr %5, i64 1
  %183 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %184 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %185 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 3, i32 1
  %186 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 3
  %187 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %188 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %189 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %190 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %191 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 4
  %192 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 2, i32 1
  %193 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 2
  %194 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 7
  %195 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 2, i32 5
  %196 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 33
  %197 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %198 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %199 = getelementptr inbounds i64, ptr %5, i64 1
  %200 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12
  %201 = ptrtoint ptr %5 to i64
  %202 = ptrtoint ptr %200 to i64
  %203 = getelementptr inbounds i64, ptr %5, i64 1
  %204 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 1
  %205 = getelementptr inbounds i64, ptr %5, i64 1
  %206 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12
  %207 = ptrtoint ptr %5 to i64
  %208 = ptrtoint ptr %206 to i64
  %209 = getelementptr inbounds i64, ptr %5, i64 1
  %210 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 1
  %211 = getelementptr inbounds i64, ptr %5, i64 1
  %212 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12
  %213 = ptrtoint ptr %5 to i64
  %214 = ptrtoint ptr %212 to i64
  %215 = getelementptr inbounds %struct.gs_font_type1_s, ptr %8, i64 0, i32 22, i32 7
  %216 = getelementptr inbounds %struct.gs_font_type1_s, ptr %8, i64 0, i32 22, i32 1
  %217 = getelementptr inbounds %struct.gs_font_type1_s, ptr %8, i64 0, i32 22, i32 8
  %218 = getelementptr inbounds %struct.gs_font_type1_s, ptr %8, i64 0, i32 22, i32 1
  %219 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 1
  %220 = getelementptr inbounds %struct.gs_point_s, ptr %6, i64 0, i32 1
  %221 = getelementptr inbounds %struct.gs_point_s, ptr %7, i64 0, i32 1
  %222 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4
  %223 = getelementptr inbounds %struct.gs_op1_state_s, ptr %4, i64 0, i32 4, i32 1
  %224 = getelementptr inbounds i64, ptr %5, i64 5
  %225 = ptrtoint ptr %5 to i64
  %226 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 38
  %227 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 38
  br label %228

228:                                              ; preds = %1859, %81
  %229 = phi i16 [ %82, %81 ], [ %1854, %1859 ]
  %230 = phi ptr [ %83, %81 ], [ %1855, %1859 ]
  %231 = phi ptr [ %84, %81 ], [ %1856, %1859 ]
  %232 = phi i64 [ %85, %81 ], [ %1857, %1859 ]
  %233 = phi i32 [ %86, %81 ], [ %1858, %1859 ]
  %234 = getelementptr inbounds i8, ptr %5, i64 %232
  %235 = getelementptr inbounds i8, ptr %230, i64 1
  %236 = load i8, ptr %230, align 1, !tbaa !42
  %237 = zext i8 %236 to i32
  br i1 %11, label %238, label %246

238:                                              ; preds = %228
  %239 = lshr i16 %229, 8
  %240 = zext nneg i16 %239 to i32
  %241 = xor i32 %237, %240
  %242 = zext i8 %236 to i16
  %243 = add i16 %229, %242
  %244 = mul i16 %243, -12691
  %245 = add i16 %244, 22719
  br label %246

246:                                              ; preds = %228, %238
  %247 = phi i32 [ %241, %238 ], [ %237, %228 ]
  %248 = phi i16 [ %245, %238 ], [ %229, %228 ]
  %249 = icmp sgt i32 %247, 31
  br i1 %249, label %250, label %325

250:                                              ; preds = %246
  %251 = icmp slt i32 %247, 247
  br i1 %251, label %252, label %259

252:                                              ; preds = %250
  %253 = and i32 %247, 255
  %254 = add nsw i32 %253, -139
  %255 = sext i32 %254 to i64
  %256 = shl nsw i64 %255, 12
  %257 = add nsw i64 %232, 8
  %258 = getelementptr inbounds i8, ptr %5, i64 %257
  store i64 %256, ptr %258, align 8, !tbaa !33
  br label %1852, !llvm.loop !49

259:                                              ; preds = %250
  %260 = icmp slt i32 %247, 255
  br i1 %260, label %261, label %294

261:                                              ; preds = %259
  %262 = getelementptr inbounds i8, ptr %230, i64 2
  %263 = load i8, ptr %235, align 1, !tbaa !42
  %264 = zext i8 %263 to i32
  %265 = lshr i16 %248, 8
  %266 = zext nneg i16 %265 to i32
  %267 = select i1 %11, i32 %266, i32 0
  %268 = xor i32 %267, %264
  %269 = icmp slt i32 %247, 251
  %270 = shl nuw nsw i32 %247, 8
  %271 = add nsw i64 %232, 8
  %272 = getelementptr inbounds i8, ptr %5, i64 %271
  br i1 %269, label %273, label %280

273:                                              ; preds = %261
  %274 = add nuw nsw i32 %270, 2304
  %275 = and i32 %274, 65280
  %276 = or disjoint i32 %275, 108
  %277 = add nuw nsw i32 %276, %268
  %278 = shl nuw nsw i32 %277, 12
  %279 = zext nneg i32 %278 to i64
  br label %287

280:                                              ; preds = %261
  %281 = add nuw nsw i32 %270, 1280
  %282 = and i32 %281, 65280
  %283 = or disjoint i32 %282, %268
  %284 = sub nuw nsw i32 -108, %283
  %285 = sext i32 %284 to i64
  %286 = shl nsw i64 %285, 12
  br label %287

287:                                              ; preds = %280, %273
  %288 = phi i64 [ %286, %280 ], [ %279, %273 ]
  store i64 %288, ptr %272, align 8, !tbaa !33
  %289 = zext i8 %263 to i16
  %290 = add i16 %248, %289
  %291 = mul i16 %290, -12691
  %292 = add i16 %291, 22719
  %293 = select i1 %11, i16 %292, i16 %248
  br label %1852, !llvm.loop !49

294:                                              ; preds = %259, %310
  %295 = phi i32 [ %316, %310 ], [ 3, %259 ]
  %296 = phi ptr [ %315, %310 ], [ %235, %259 ]
  %297 = phi i16 [ %312, %310 ], [ %248, %259 ]
  %298 = phi i64 [ %314, %310 ], [ 0, %259 ]
  %299 = load i8, ptr %296, align 1, !tbaa !42
  br i1 %11, label %300, label %308

300:                                              ; preds = %294
  %301 = lshr i16 %297, 8
  %302 = zext i8 %299 to i16
  %303 = xor i16 %301, %302
  %304 = zext nneg i16 %303 to i64
  %305 = add i16 %297, %302
  %306 = mul i16 %305, -12691
  %307 = add i16 %306, 22719
  br label %310

308:                                              ; preds = %294
  %309 = zext i8 %299 to i64
  br label %310

310:                                              ; preds = %308, %300
  %311 = phi i64 [ %304, %300 ], [ %309, %308 ]
  %312 = phi i16 [ %307, %300 ], [ %297, %308 ]
  %313 = shl i64 %298, 8
  %314 = add nuw nsw i64 %311, %313
  %315 = getelementptr inbounds i8, ptr %296, i64 1
  %316 = add nsw i32 %295, -1
  %317 = icmp eq i32 %295, 0
  br i1 %317, label %318, label %294, !llvm.loop !50

318:                                              ; preds = %310
  %319 = getelementptr i8, ptr %230, i64 5
  %320 = xor i64 %314, 2147483648
  %321 = add nsw i64 %320, -2147483648
  %322 = ashr i64 %321, 4
  %323 = add nsw i64 %232, 8
  %324 = getelementptr inbounds i8, ptr %5, i64 %323
  store i64 %322, ptr %324, align 8, !tbaa !33
  br label %1852, !llvm.loop !49

325:                                              ; preds = %246
  switch i32 %247, label %1852 [
    i32 12, label %1450
    i32 29, label %1441
    i32 28, label %1402
    i32 10, label %332
    i32 11, label %350
    i32 15, label %352
    i32 1, label %1119
    i32 3, label %1209
    i32 4, label %353
    i32 5, label %330
    i32 6, label %490
    i32 7, label %489
    i32 8, label %602
    i32 14, label %628
    i32 21, label %677
    i32 22, label %728
    i32 30, label %828
    i32 31, label %827
    i32 16, label %1072
    i32 18, label %1118
    i32 19, label %1184
    i32 20, label %1184
    i32 23, label %1208
    i32 24, label %328
    i32 25, label %326
    i32 26, label %1330
    i32 27, label %1366
  ]

326:                                              ; preds = %325
  %327 = icmp slt i64 %232, 56
  br i1 %327, label %1316, label %1302

328:                                              ; preds = %325
  %329 = icmp slt i64 %232, 40
  br i1 %329, label %1293, label %1274

330:                                              ; preds = %325
  %331 = icmp slt i64 %232, 8
  br i1 %331, label %485, label %475

332:                                              ; preds = %325
  %333 = load i64, ptr %234, align 8, !tbaa !33
  %334 = lshr i64 %333, 12
  %335 = trunc i64 %334 to i32
  %336 = load i32, ptr %215, align 4, !tbaa !51
  %337 = add i32 %336, %335
  %338 = load ptr, ptr %216, align 8, !tbaa !52
  %339 = getelementptr inbounds %struct.ip_state, ptr %231, i64 1, i32 2
  %340 = call i32 %338(ptr noundef %8, i32 noundef %337, i32 noundef 0, ptr noundef nonnull %339) #8
  br label %341

341:                                              ; preds = %1441, %332
  %342 = phi i32 [ %1449, %1441 ], [ %340, %332 ]
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %1852, label %344

344:                                              ; preds = %341
  %345 = add nsw i64 %232, -8
  store ptr %235, ptr %231, align 8, !tbaa !45
  %346 = getelementptr inbounds %struct.ip_state, ptr %231, i64 0, i32 1
  store i16 %248, ptr %346, align 8, !tbaa !48
  %347 = getelementptr inbounds %struct.ip_state, ptr %231, i64 1
  %348 = getelementptr inbounds %struct.ip_state, ptr %231, i64 1, i32 2
  %349 = load ptr, ptr %348, align 8, !tbaa !53
  br label %1852

350:                                              ; preds = %325
  %351 = getelementptr inbounds %struct.ip_state, ptr %231, i64 -1
  br label %1852

352:                                              ; preds = %325
  br label %1852

353:                                              ; preds = %325
  %354 = load i32, ptr %18, align 4, !tbaa !26
  %355 = icmp slt i32 %354, 0
  br i1 %355, label %356, label %400

356:                                              ; preds = %353
  store ptr %235, ptr %231, align 8, !tbaa !45
  %357 = getelementptr inbounds %struct.ip_state, ptr %231, i64 0, i32 1
  store i16 %248, ptr %357, align 8, !tbaa !48
  %358 = icmp slt i64 %232, 1
  br i1 %358, label %366, label %359

359:                                              ; preds = %356
  %360 = load i64, ptr %5, align 16, !tbaa !33
  %361 = load ptr, ptr %0, align 8, !tbaa !9
  %362 = getelementptr inbounds %struct.gs_font_type1_s, ptr %361, i64 0, i32 22, i32 11
  %363 = load i64, ptr %362, align 8, !tbaa !54
  %364 = add nsw i64 %363, %360
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 8 %199, i64 %232, i1 false)
  %365 = getelementptr inbounds i64, ptr %234, i64 -1
  br label %370

366:                                              ; preds = %356
  %367 = load ptr, ptr %0, align 8, !tbaa !9
  %368 = getelementptr inbounds %struct.gs_font_type1_s, ptr %367, i64 0, i32 22, i32 10
  %369 = load i64, ptr %368, align 8, !tbaa !64
  br label %370

370:                                              ; preds = %366, %359
  %371 = phi i64 [ %364, %359 ], [ %369, %366 ]
  %372 = phi ptr [ %365, %359 ], [ %234, %366 ]
  %373 = call i32 @gs_type1_sbw(ptr noundef %0, i64 noundef 0, i64 noundef 0, i64 noundef %371, i64 noundef 0) #8
  %374 = load i32, ptr %12, align 8, !tbaa !25
  %375 = add nsw i32 %374, -1
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 %376
  %378 = load ptr, ptr %377, align 8, !tbaa !45
  %379 = getelementptr inbounds i8, ptr %378, i64 -1
  store ptr %379, ptr %377, align 8, !tbaa !45
  %380 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 %376, i32 1
  %381 = load i16, ptr %380, align 8, !tbaa !48
  %382 = mul i16 %381, 27493
  %383 = add i16 %382, 10149
  %384 = load i8, ptr %379, align 1, !tbaa !42
  %385 = zext i8 %384 to i16
  %386 = sub i16 %383, %385
  store i16 %386, ptr %380, align 8, !tbaa !48
  %387 = getelementptr inbounds i64, ptr %372, i64 1
  %388 = ptrtoint ptr %387 to i64
  %389 = sub i64 %388, %201
  %390 = lshr exact i64 %389, 3
  %391 = trunc i64 %390 to i32
  store i32 %391, ptr %34, align 8, !tbaa !38
  %392 = ptrtoint ptr %231 to i64
  %393 = sub i64 %392, %202
  %394 = lshr exact i64 %393, 5
  %395 = trunc i64 %394 to i32
  %396 = add i32 %395, 1
  store i32 %396, ptr %12, align 8, !tbaa !25
  %397 = load i32, ptr %18, align 4, !tbaa !26
  %398 = icmp slt i32 %397, 0
  br i1 %398, label %399, label %1852

399:                                              ; preds = %370
  store i32 0, ptr %18, align 4, !tbaa !26
  br label %1852

400:                                              ; preds = %353
  %401 = load i64, ptr %234, align 8, !tbaa !33
  %402 = add nsw i64 %401, 4194304
  %403 = and i64 %402, -8384513
  %404 = icmp eq i64 %403, 0
  %405 = shl i64 %401, 20
  %406 = ashr i64 %405, 32
  br i1 %404, label %415, label %407

407:                                              ; preds = %400
  %408 = load i64, ptr %185, align 8, !tbaa !65
  %409 = mul nsw i64 %408, %406
  %410 = and i64 %401, 4095
  %411 = mul nsw i64 %408, %410
  %412 = add nsw i64 %411, 2048
  %413 = ashr i64 %412, 12
  %414 = add nsw i64 %413, %409
  br label %423

415:                                              ; preds = %400
  %416 = load i64, ptr %186, align 8, !tbaa !66
  %417 = mul nsw i64 %416, %406
  %418 = load i64, ptr %187, align 8, !tbaa !67
  %419 = add nsw i64 %417, %418
  %420 = load i32, ptr %188, align 4, !tbaa !68
  %421 = zext nneg i32 %420 to i64
  %422 = ashr i64 %419, %421
  br label %423

423:                                              ; preds = %415, %407
  %424 = phi i64 [ %414, %407 ], [ %422, %415 ]
  %425 = load i64, ptr %190, align 8, !tbaa !31
  %426 = add nsw i64 %425, %424
  store i64 %426, ptr %190, align 8, !tbaa !31
  %427 = load i32, ptr %191, align 8, !tbaa !69
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %452, label %429

429:                                              ; preds = %423
  %430 = shl i64 %401, 20
  %431 = ashr i64 %430, 32
  br i1 %404, label %440, label %432

432:                                              ; preds = %429
  %433 = load i64, ptr %192, align 8, !tbaa !70
  %434 = mul nsw i64 %433, %431
  %435 = and i64 %401, 4095
  %436 = mul nsw i64 %433, %435
  %437 = add nsw i64 %436, 2048
  %438 = ashr i64 %437, 12
  %439 = add nsw i64 %438, %434
  br label %448

440:                                              ; preds = %429
  %441 = load i64, ptr %193, align 8, !tbaa !71
  %442 = mul nsw i64 %441, %431
  %443 = load i64, ptr %194, align 8, !tbaa !67
  %444 = add nsw i64 %442, %443
  %445 = load i32, ptr %195, align 4, !tbaa !68
  %446 = zext nneg i32 %445 to i64
  %447 = ashr i64 %444, %446
  br label %448

448:                                              ; preds = %440, %432
  %449 = phi i64 [ %439, %432 ], [ %447, %440 ]
  %450 = load i64, ptr %189, align 8, !tbaa !28
  %451 = add nsw i64 %450, %449
  store i64 %451, ptr %189, align 8, !tbaa !28
  br label %452

452:                                              ; preds = %798, %823, %423, %448, %724
  %453 = load ptr, ptr %196, align 8, !tbaa !72
  %454 = icmp eq ptr %453, null
  br i1 %454, label %455, label %461

455:                                              ; preds = %452
  %456 = load ptr, ptr %4, align 8, !tbaa !36
  %457 = getelementptr inbounds %struct.gx_path_s, ptr %456, i64 0, i32 11
  %458 = load i8, ptr %457, align 1, !tbaa !73
  %459 = and i8 %458, 4
  %460 = icmp eq i8 %459, 0
  br i1 %460, label %463, label %461

461:                                              ; preds = %455, %452
  %462 = load ptr, ptr %31, align 8, !tbaa !35
  call void @type1_apply_path_hints(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %462) #8
  br label %463

463:                                              ; preds = %461, %455
  %464 = load ptr, ptr %4, align 8, !tbaa !36
  %465 = load i64, ptr %197, align 8, !tbaa !28
  %466 = load i64, ptr %198, align 8, !tbaa !31
  %467 = call i32 @gx_path_add_point(ptr noundef %464, i64 noundef %465, i64 noundef %466) #8
  br label %468

468:                                              ; preds = %1316, %1293, %463
  %469 = phi i32 [ %1329, %1316 ], [ %1301, %1293 ], [ %467, %463 ]
  %470 = icmp slt i32 %469, 0
  br i1 %470, label %1852, label %485

471:                                              ; preds = %475
  %472 = getelementptr inbounds i64, ptr %477, i64 2
  %473 = getelementptr inbounds i64, ptr %477, i64 3
  %474 = icmp ugt ptr %473, %234
  br i1 %474, label %485, label %475, !llvm.loop !76

475:                                              ; preds = %330, %471
  %476 = phi ptr [ %473, %471 ], [ %182, %330 ]
  %477 = phi ptr [ %472, %471 ], [ %5, %330 ]
  %478 = load i64, ptr %477, align 8, !tbaa !33
  %479 = load i64, ptr %476, align 8, !tbaa !33
  call void @accum_xy_proc(ptr noundef nonnull %4, i64 noundef %478, i64 noundef %479) #8
  %480 = load ptr, ptr %4, align 8, !tbaa !36
  %481 = load i64, ptr %183, align 8, !tbaa !28
  %482 = load i64, ptr %184, align 8, !tbaa !31
  %483 = call i32 @gx_path_add_line_notes(ptr noundef %480, i64 noundef %481, i64 noundef %482, i32 noundef 0) #8
  %484 = icmp slt i32 %483, 0
  br i1 %484, label %1852, label %471

485:                                              ; preds = %831, %493, %471, %609, %828, %490, %330, %602, %1399, %1363, %468
  %486 = phi i16 [ %248, %1399 ], [ %248, %1363 ], [ %248, %468 ], [ %603, %602 ], [ %248, %330 ], [ %248, %490 ], [ %248, %828 ], [ %603, %609 ], [ %248, %471 ], [ %248, %493 ], [ %248, %831 ]
  %487 = phi ptr [ %235, %1399 ], [ %235, %1363 ], [ %235, %468 ], [ %604, %602 ], [ %235, %330 ], [ %235, %490 ], [ %235, %828 ], [ %604, %609 ], [ %235, %471 ], [ %235, %493 ], [ %235, %831 ]
  %488 = phi i32 [ %1401, %1399 ], [ %1365, %1363 ], [ %233, %468 ], [ %606, %602 ], [ %233, %330 ], [ %233, %490 ], [ %233, %828 ], [ %606, %609 ], [ %233, %471 ], [ %233, %493 ], [ %1071, %831 ]
  br label %1852

489:                                              ; preds = %325
  br label %490

490:                                              ; preds = %325, %489
  %491 = phi i32 [ 1, %489 ], [ 0, %325 ]
  %492 = icmp slt i64 %232, 0
  br i1 %492, label %485, label %497

493:                                              ; preds = %596
  %494 = getelementptr inbounds i64, ptr %498, i64 1
  %495 = zext i1 %500 to i32
  %496 = icmp ugt ptr %494, %234
  br i1 %496, label %485, label %497, !llvm.loop !77

497:                                              ; preds = %490, %493
  %498 = phi ptr [ %494, %493 ], [ %5, %490 ]
  %499 = phi i32 [ %495, %493 ], [ %491, %490 ]
  %500 = icmp eq i32 %499, 0
  %501 = load i64, ptr %498, align 8, !tbaa !33
  %502 = add nsw i64 %501, 4194304
  %503 = and i64 %502, -8384513
  %504 = icmp eq i64 %503, 0
  %505 = shl i64 %501, 20
  %506 = ashr i64 %505, 32
  br i1 %500, label %549, label %507

507:                                              ; preds = %497
  br i1 %504, label %516, label %508

508:                                              ; preds = %507
  %509 = load i64, ptr %158, align 8, !tbaa !65
  %510 = mul nsw i64 %509, %506
  %511 = and i64 %501, 4095
  %512 = mul nsw i64 %509, %511
  %513 = add nsw i64 %512, 2048
  %514 = ashr i64 %513, 12
  %515 = add nsw i64 %514, %510
  br label %524

516:                                              ; preds = %507
  %517 = load i64, ptr %159, align 8, !tbaa !66
  %518 = mul nsw i64 %517, %506
  %519 = load i64, ptr %160, align 8, !tbaa !67
  %520 = add nsw i64 %518, %519
  %521 = load i32, ptr %161, align 4, !tbaa !68
  %522 = zext nneg i32 %521 to i64
  %523 = ashr i64 %520, %522
  br label %524

524:                                              ; preds = %516, %508
  %525 = phi i64 [ %515, %508 ], [ %523, %516 ]
  %526 = load i64, ptr %163, align 8, !tbaa !31
  %527 = add nsw i64 %526, %525
  store i64 %527, ptr %163, align 8, !tbaa !31
  %528 = load i32, ptr %164, align 8, !tbaa !69
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %596, label %530

530:                                              ; preds = %524
  %531 = shl i64 %501, 20
  %532 = ashr i64 %531, 32
  br i1 %504, label %541, label %533

533:                                              ; preds = %530
  %534 = load i64, ptr %165, align 8, !tbaa !70
  %535 = mul nsw i64 %534, %532
  %536 = and i64 %501, 4095
  %537 = mul nsw i64 %534, %536
  %538 = add nsw i64 %537, 2048
  %539 = ashr i64 %538, 12
  %540 = add nsw i64 %539, %535
  br label %591

541:                                              ; preds = %530
  %542 = load i64, ptr %166, align 8, !tbaa !71
  %543 = mul nsw i64 %542, %532
  %544 = load i64, ptr %167, align 8, !tbaa !67
  %545 = add nsw i64 %543, %544
  %546 = load i32, ptr %168, align 4, !tbaa !68
  %547 = zext nneg i32 %546 to i64
  %548 = ashr i64 %545, %547
  br label %591

549:                                              ; preds = %497
  br i1 %504, label %558, label %550

550:                                              ; preds = %549
  %551 = load i64, ptr %169, align 8, !tbaa !78
  %552 = mul nsw i64 %551, %506
  %553 = and i64 %501, 4095
  %554 = mul nsw i64 %551, %553
  %555 = add nsw i64 %554, 2048
  %556 = ashr i64 %555, 12
  %557 = add nsw i64 %556, %552
  br label %566

558:                                              ; preds = %549
  %559 = load i64, ptr %170, align 8, !tbaa !79
  %560 = mul nsw i64 %559, %506
  %561 = load i64, ptr %171, align 8, !tbaa !67
  %562 = add nsw i64 %560, %561
  %563 = load i32, ptr %172, align 4, !tbaa !68
  %564 = zext nneg i32 %563 to i64
  %565 = ashr i64 %562, %564
  br label %566

566:                                              ; preds = %558, %550
  %567 = phi i64 [ %557, %550 ], [ %565, %558 ]
  %568 = load i64, ptr %173, align 8, !tbaa !28
  %569 = add nsw i64 %568, %567
  store i64 %569, ptr %173, align 8, !tbaa !28
  %570 = load i32, ptr %174, align 8, !tbaa !69
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %596, label %572

572:                                              ; preds = %566
  %573 = shl i64 %501, 20
  %574 = ashr i64 %573, 32
  br i1 %504, label %583, label %575

575:                                              ; preds = %572
  %576 = load i64, ptr %175, align 8, !tbaa !80
  %577 = mul nsw i64 %576, %574
  %578 = and i64 %501, 4095
  %579 = mul nsw i64 %576, %578
  %580 = add nsw i64 %579, 2048
  %581 = ashr i64 %580, 12
  %582 = add nsw i64 %581, %577
  br label %591

583:                                              ; preds = %572
  %584 = load i64, ptr %176, align 8, !tbaa !81
  %585 = mul nsw i64 %584, %574
  %586 = load i64, ptr %177, align 8, !tbaa !67
  %587 = add nsw i64 %585, %586
  %588 = load i32, ptr %178, align 4, !tbaa !68
  %589 = zext nneg i32 %588 to i64
  %590 = ashr i64 %587, %589
  br label %591

591:                                              ; preds = %575, %583, %533, %541
  %592 = phi ptr [ %162, %541 ], [ %162, %533 ], [ %179, %583 ], [ %179, %575 ]
  %593 = phi i64 [ %548, %541 ], [ %540, %533 ], [ %590, %583 ], [ %582, %575 ]
  %594 = load i64, ptr %592, align 8, !tbaa !33
  %595 = add nsw i64 %594, %593
  store i64 %595, ptr %592, align 8, !tbaa !33
  br label %596

596:                                              ; preds = %591, %566, %524
  %597 = load ptr, ptr %4, align 8, !tbaa !36
  %598 = load i64, ptr %180, align 8, !tbaa !28
  %599 = load i64, ptr %181, align 8, !tbaa !31
  %600 = call i32 @gx_path_add_line_notes(ptr noundef %597, i64 noundef %598, i64 noundef %599, i32 noundef 0) #8
  %601 = icmp slt i32 %600, 0
  br i1 %601, label %1852, label %493

602:                                              ; preds = %325, %1791
  %603 = phi i16 [ %1464, %1791 ], [ %248, %325 ]
  %604 = phi ptr [ %1465, %1791 ], [ %235, %325 ]
  %605 = phi i64 [ %1793, %1791 ], [ %232, %325 ]
  %606 = phi i32 [ %1794, %1791 ], [ %233, %325 ]
  %607 = getelementptr inbounds i8, ptr %5, i64 %605
  %608 = icmp slt i64 %605, 40
  br i1 %608, label %485, label %613

609:                                              ; preds = %613
  %610 = getelementptr inbounds i64, ptr %615, i64 6
  %611 = getelementptr inbounds i64, ptr %615, i64 11
  %612 = icmp ugt ptr %611, %607
  br i1 %612, label %485, label %613, !llvm.loop !82

613:                                              ; preds = %602, %609
  %614 = phi ptr [ %611, %609 ], [ %224, %602 ]
  %615 = phi ptr [ %610, %609 ], [ %5, %602 ]
  %616 = load i64, ptr %615, align 8, !tbaa !33
  %617 = getelementptr inbounds i64, ptr %615, i64 1
  %618 = load i64, ptr %617, align 8, !tbaa !33
  %619 = getelementptr inbounds i64, ptr %615, i64 2
  %620 = load i64, ptr %619, align 8, !tbaa !33
  %621 = getelementptr inbounds i64, ptr %615, i64 3
  %622 = load i64, ptr %621, align 8, !tbaa !33
  %623 = getelementptr inbounds i64, ptr %615, i64 4
  %624 = load i64, ptr %623, align 8, !tbaa !33
  %625 = load i64, ptr %614, align 8, !tbaa !33
  %626 = call i32 @gs_op1_rrcurveto(ptr noundef nonnull %4, i64 noundef %616, i64 noundef %618, i64 noundef %620, i64 noundef %622, i64 noundef %624, i64 noundef %625) #8
  %627 = icmp slt i32 %626, 0
  br i1 %627, label %1852, label %609

628:                                              ; preds = %325
  %629 = load i32, ptr %18, align 4, !tbaa !26
  %630 = icmp slt i32 %629, 0
  br i1 %630, label %631, label %675

631:                                              ; preds = %628
  store ptr %235, ptr %231, align 8, !tbaa !45
  %632 = getelementptr inbounds %struct.ip_state, ptr %231, i64 0, i32 1
  store i16 %248, ptr %632, align 8, !tbaa !48
  %633 = icmp slt i64 %232, 0
  br i1 %633, label %641, label %634

634:                                              ; preds = %631
  %635 = load i64, ptr %5, align 16, !tbaa !33
  %636 = load ptr, ptr %0, align 8, !tbaa !9
  %637 = getelementptr inbounds %struct.gs_font_type1_s, ptr %636, i64 0, i32 22, i32 11
  %638 = load i64, ptr %637, align 8, !tbaa !54
  %639 = add nsw i64 %638, %635
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 8 %154, i64 %232, i1 false)
  %640 = getelementptr inbounds i64, ptr %234, i64 -1
  br label %645

641:                                              ; preds = %631
  %642 = load ptr, ptr %0, align 8, !tbaa !9
  %643 = getelementptr inbounds %struct.gs_font_type1_s, ptr %642, i64 0, i32 22, i32 10
  %644 = load i64, ptr %643, align 8, !tbaa !64
  br label %645

645:                                              ; preds = %641, %634
  %646 = phi i64 [ %639, %634 ], [ %644, %641 ]
  %647 = phi ptr [ %640, %634 ], [ %234, %641 ]
  %648 = call i32 @gs_type1_sbw(ptr noundef %0, i64 noundef 0, i64 noundef 0, i64 noundef %646, i64 noundef 0) #8
  %649 = load i32, ptr %12, align 8, !tbaa !25
  %650 = add nsw i32 %649, -1
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 %651
  %653 = load ptr, ptr %652, align 8, !tbaa !45
  %654 = getelementptr inbounds i8, ptr %653, i64 -1
  store ptr %654, ptr %652, align 8, !tbaa !45
  %655 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 %651, i32 1
  %656 = load i16, ptr %655, align 8, !tbaa !48
  %657 = mul i16 %656, 27493
  %658 = add i16 %657, 10149
  %659 = load i8, ptr %654, align 1, !tbaa !42
  %660 = zext i8 %659 to i16
  %661 = sub i16 %658, %660
  store i16 %661, ptr %655, align 8, !tbaa !48
  %662 = getelementptr inbounds i64, ptr %647, i64 1
  %663 = ptrtoint ptr %662 to i64
  %664 = sub i64 %663, %156
  %665 = lshr exact i64 %664, 3
  %666 = trunc i64 %665 to i32
  store i32 %666, ptr %34, align 8, !tbaa !38
  %667 = ptrtoint ptr %231 to i64
  %668 = sub i64 %667, %157
  %669 = lshr exact i64 %668, 5
  %670 = trunc i64 %669 to i32
  %671 = add i32 %670, 1
  store i32 %671, ptr %12, align 8, !tbaa !25
  %672 = load i32, ptr %18, align 4, !tbaa !26
  %673 = icmp slt i32 %672, 0
  br i1 %673, label %674, label %1852

674:                                              ; preds = %645
  store i32 0, ptr %18, align 4, !tbaa !26
  br label %1852

675:                                              ; preds = %628
  %676 = call i32 @gs_type1_endchar(ptr noundef nonnull %0) #8
  br label %1852

677:                                              ; preds = %325
  %678 = load i32, ptr %18, align 4, !tbaa !26
  %679 = icmp slt i32 %678, 0
  br i1 %679, label %680, label %724

680:                                              ; preds = %677
  store ptr %235, ptr %231, align 8, !tbaa !45
  %681 = getelementptr inbounds %struct.ip_state, ptr %231, i64 0, i32 1
  store i16 %248, ptr %681, align 8, !tbaa !48
  %682 = icmp slt i64 %232, 9
  br i1 %682, label %690, label %683

683:                                              ; preds = %680
  %684 = load i64, ptr %5, align 16, !tbaa !33
  %685 = load ptr, ptr %0, align 8, !tbaa !9
  %686 = getelementptr inbounds %struct.gs_font_type1_s, ptr %685, i64 0, i32 22, i32 11
  %687 = load i64, ptr %686, align 8, !tbaa !54
  %688 = add nsw i64 %687, %684
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 8 %150, i64 %232, i1 false)
  %689 = getelementptr inbounds i64, ptr %234, i64 -1
  br label %694

690:                                              ; preds = %680
  %691 = load ptr, ptr %0, align 8, !tbaa !9
  %692 = getelementptr inbounds %struct.gs_font_type1_s, ptr %691, i64 0, i32 22, i32 10
  %693 = load i64, ptr %692, align 8, !tbaa !64
  br label %694

694:                                              ; preds = %690, %683
  %695 = phi i64 [ %688, %683 ], [ %693, %690 ]
  %696 = phi ptr [ %689, %683 ], [ %234, %690 ]
  %697 = call i32 @gs_type1_sbw(ptr noundef %0, i64 noundef 0, i64 noundef 0, i64 noundef %695, i64 noundef 0) #8
  %698 = load i32, ptr %12, align 8, !tbaa !25
  %699 = add nsw i32 %698, -1
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 %700
  %702 = load ptr, ptr %701, align 8, !tbaa !45
  %703 = getelementptr inbounds i8, ptr %702, i64 -1
  store ptr %703, ptr %701, align 8, !tbaa !45
  %704 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 %700, i32 1
  %705 = load i16, ptr %704, align 8, !tbaa !48
  %706 = mul i16 %705, 27493
  %707 = add i16 %706, 10149
  %708 = load i8, ptr %703, align 1, !tbaa !42
  %709 = zext i8 %708 to i16
  %710 = sub i16 %707, %709
  store i16 %710, ptr %704, align 8, !tbaa !48
  %711 = getelementptr inbounds i64, ptr %696, i64 1
  %712 = ptrtoint ptr %711 to i64
  %713 = sub i64 %712, %152
  %714 = lshr exact i64 %713, 3
  %715 = trunc i64 %714 to i32
  store i32 %715, ptr %34, align 8, !tbaa !38
  %716 = ptrtoint ptr %231 to i64
  %717 = sub i64 %716, %153
  %718 = lshr exact i64 %717, 5
  %719 = trunc i64 %718 to i32
  %720 = add i32 %719, 1
  store i32 %720, ptr %12, align 8, !tbaa !25
  %721 = load i32, ptr %18, align 4, !tbaa !26
  %722 = icmp slt i32 %721, 0
  br i1 %722, label %723, label %1852

723:                                              ; preds = %694
  store i32 0, ptr %18, align 4, !tbaa !26
  br label %1852

724:                                              ; preds = %677
  %725 = getelementptr inbounds i64, ptr %234, i64 -1
  %726 = load i64, ptr %725, align 8, !tbaa !33
  %727 = load i64, ptr %234, align 8, !tbaa !33
  call void @accum_xy_proc(ptr noundef nonnull %4, i64 noundef %726, i64 noundef %727) #8
  br label %452

728:                                              ; preds = %325
  %729 = load i32, ptr %18, align 4, !tbaa !26
  %730 = icmp slt i32 %729, 0
  br i1 %730, label %731, label %775

731:                                              ; preds = %728
  store ptr %235, ptr %231, align 8, !tbaa !45
  %732 = getelementptr inbounds %struct.ip_state, ptr %231, i64 0, i32 1
  store i16 %248, ptr %732, align 8, !tbaa !48
  %733 = icmp slt i64 %232, 1
  br i1 %733, label %741, label %734

734:                                              ; preds = %731
  %735 = load i64, ptr %5, align 16, !tbaa !33
  %736 = load ptr, ptr %0, align 8, !tbaa !9
  %737 = getelementptr inbounds %struct.gs_font_type1_s, ptr %736, i64 0, i32 22, i32 11
  %738 = load i64, ptr %737, align 8, !tbaa !54
  %739 = add nsw i64 %738, %735
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 8 %146, i64 %232, i1 false)
  %740 = getelementptr inbounds i64, ptr %234, i64 -1
  br label %745

741:                                              ; preds = %731
  %742 = load ptr, ptr %0, align 8, !tbaa !9
  %743 = getelementptr inbounds %struct.gs_font_type1_s, ptr %742, i64 0, i32 22, i32 10
  %744 = load i64, ptr %743, align 8, !tbaa !64
  br label %745

745:                                              ; preds = %741, %734
  %746 = phi i64 [ %739, %734 ], [ %744, %741 ]
  %747 = phi ptr [ %740, %734 ], [ %234, %741 ]
  %748 = call i32 @gs_type1_sbw(ptr noundef %0, i64 noundef 0, i64 noundef 0, i64 noundef %746, i64 noundef 0) #8
  %749 = load i32, ptr %12, align 8, !tbaa !25
  %750 = add nsw i32 %749, -1
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 %751
  %753 = load ptr, ptr %752, align 8, !tbaa !45
  %754 = getelementptr inbounds i8, ptr %753, i64 -1
  store ptr %754, ptr %752, align 8, !tbaa !45
  %755 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 %751, i32 1
  %756 = load i16, ptr %755, align 8, !tbaa !48
  %757 = mul i16 %756, 27493
  %758 = add i16 %757, 10149
  %759 = load i8, ptr %754, align 1, !tbaa !42
  %760 = zext i8 %759 to i16
  %761 = sub i16 %758, %760
  store i16 %761, ptr %755, align 8, !tbaa !48
  %762 = getelementptr inbounds i64, ptr %747, i64 1
  %763 = ptrtoint ptr %762 to i64
  %764 = sub i64 %763, %148
  %765 = lshr exact i64 %764, 3
  %766 = trunc i64 %765 to i32
  store i32 %766, ptr %34, align 8, !tbaa !38
  %767 = ptrtoint ptr %231 to i64
  %768 = sub i64 %767, %149
  %769 = lshr exact i64 %768, 5
  %770 = trunc i64 %769 to i32
  %771 = add i32 %770, 1
  store i32 %771, ptr %12, align 8, !tbaa !25
  %772 = load i32, ptr %18, align 4, !tbaa !26
  %773 = icmp slt i32 %772, 0
  br i1 %773, label %774, label %1852

774:                                              ; preds = %745
  store i32 0, ptr %18, align 4, !tbaa !26
  br label %1852

775:                                              ; preds = %728
  %776 = load i64, ptr %234, align 8, !tbaa !33
  %777 = add nsw i64 %776, 4194304
  %778 = and i64 %777, -8384513
  %779 = icmp eq i64 %778, 0
  %780 = shl i64 %776, 20
  %781 = ashr i64 %780, 32
  br i1 %779, label %790, label %782

782:                                              ; preds = %775
  %783 = load i64, ptr %135, align 8, !tbaa !78
  %784 = mul nsw i64 %783, %781
  %785 = and i64 %776, 4095
  %786 = mul nsw i64 %783, %785
  %787 = add nsw i64 %786, 2048
  %788 = ashr i64 %787, 12
  %789 = add nsw i64 %788, %784
  br label %798

790:                                              ; preds = %775
  %791 = load i64, ptr %136, align 8, !tbaa !79
  %792 = mul nsw i64 %791, %781
  %793 = load i64, ptr %137, align 8, !tbaa !67
  %794 = add nsw i64 %792, %793
  %795 = load i32, ptr %138, align 4, !tbaa !68
  %796 = zext nneg i32 %795 to i64
  %797 = ashr i64 %794, %796
  br label %798

798:                                              ; preds = %790, %782
  %799 = phi i64 [ %789, %782 ], [ %797, %790 ]
  %800 = load i64, ptr %139, align 8, !tbaa !28
  %801 = add nsw i64 %800, %799
  store i64 %801, ptr %139, align 8, !tbaa !28
  %802 = load i32, ptr %140, align 8, !tbaa !69
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %452, label %804

804:                                              ; preds = %798
  %805 = shl i64 %776, 20
  %806 = ashr i64 %805, 32
  br i1 %779, label %815, label %807

807:                                              ; preds = %804
  %808 = load i64, ptr %141, align 8, !tbaa !80
  %809 = mul nsw i64 %808, %806
  %810 = and i64 %776, 4095
  %811 = mul nsw i64 %808, %810
  %812 = add nsw i64 %811, 2048
  %813 = ashr i64 %812, 12
  %814 = add nsw i64 %813, %809
  br label %823

815:                                              ; preds = %804
  %816 = load i64, ptr %142, align 8, !tbaa !81
  %817 = mul nsw i64 %816, %806
  %818 = load i64, ptr %143, align 8, !tbaa !67
  %819 = add nsw i64 %817, %818
  %820 = load i32, ptr %144, align 4, !tbaa !68
  %821 = zext nneg i32 %820 to i64
  %822 = ashr i64 %819, %821
  br label %823

823:                                              ; preds = %815, %807
  %824 = phi i64 [ %814, %807 ], [ %822, %815 ]
  %825 = load i64, ptr %145, align 8, !tbaa !31
  %826 = add nsw i64 %825, %824
  store i64 %826, ptr %145, align 8, !tbaa !31
  br label %452

827:                                              ; preds = %325
  br label %828

828:                                              ; preds = %325, %827
  %829 = phi i32 [ 0, %827 ], [ 1, %325 ]
  %830 = icmp slt i64 %232, 24
  br i1 %830, label %485, label %836

831:                                              ; preds = %1065
  %832 = getelementptr inbounds i64, ptr %839, i64 4
  %833 = zext i1 %850 to i32
  %834 = getelementptr inbounds i64, ptr %839, i64 7
  %835 = icmp ugt ptr %834, %234
  br i1 %835, label %485, label %836, !llvm.loop !83

836:                                              ; preds = %828, %831
  %837 = phi ptr [ %834, %831 ], [ %96, %828 ]
  %838 = phi i32 [ %1071, %831 ], [ %233, %828 ]
  %839 = phi ptr [ %832, %831 ], [ %5, %828 ]
  %840 = phi i32 [ %833, %831 ], [ %829, %828 ]
  %841 = load ptr, ptr %4, align 8, !tbaa !36
  %842 = getelementptr inbounds %struct.gx_path_s, ptr %841, i64 0, i32 7
  %843 = load i64, ptr %842, align 8, !tbaa !84
  %844 = load i64, ptr %97, align 8, !tbaa !28
  %845 = sub i64 %843, %844
  %846 = getelementptr inbounds %struct.gx_path_s, ptr %841, i64 0, i32 7, i32 1
  %847 = load i64, ptr %846, align 8, !tbaa !85
  %848 = load i64, ptr %98, align 8, !tbaa !31
  %849 = sub i64 %847, %848
  %850 = icmp eq i32 %840, 0
  %851 = load i64, ptr %839, align 8, !tbaa !33
  %852 = add nsw i64 %851, 4194304
  %853 = and i64 %852, -8384513
  %854 = icmp eq i64 %853, 0
  %855 = shl i64 %851, 20
  %856 = ashr i64 %855, 32
  br i1 %850, label %901, label %857

857:                                              ; preds = %836
  br i1 %854, label %866, label %858

858:                                              ; preds = %857
  %859 = load i64, ptr %99, align 8, !tbaa !65
  %860 = mul nsw i64 %859, %856
  %861 = and i64 %851, 4095
  %862 = mul nsw i64 %859, %861
  %863 = add nsw i64 %862, 2048
  %864 = ashr i64 %863, 12
  %865 = add nsw i64 %864, %860
  br label %874

866:                                              ; preds = %857
  %867 = load i64, ptr %100, align 8, !tbaa !66
  %868 = mul nsw i64 %867, %856
  %869 = load i64, ptr %101, align 8, !tbaa !67
  %870 = add nsw i64 %868, %869
  %871 = load i32, ptr %102, align 4, !tbaa !68
  %872 = zext nneg i32 %871 to i64
  %873 = ashr i64 %870, %872
  br label %874

874:                                              ; preds = %866, %858
  %875 = phi i64 [ %865, %858 ], [ %873, %866 ]
  %876 = add nsw i64 %875, %848
  store i64 %876, ptr %98, align 8, !tbaa !31
  %877 = load i32, ptr %103, align 8, !tbaa !69
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %945, label %879

879:                                              ; preds = %874
  %880 = shl i64 %851, 20
  %881 = ashr i64 %880, 32
  br i1 %854, label %890, label %882

882:                                              ; preds = %879
  %883 = load i64, ptr %104, align 8, !tbaa !70
  %884 = mul nsw i64 %883, %881
  %885 = and i64 %851, 4095
  %886 = mul nsw i64 %883, %885
  %887 = add nsw i64 %886, 2048
  %888 = ashr i64 %887, 12
  %889 = add nsw i64 %888, %884
  br label %898

890:                                              ; preds = %879
  %891 = load i64, ptr %105, align 8, !tbaa !71
  %892 = mul nsw i64 %891, %881
  %893 = load i64, ptr %106, align 8, !tbaa !67
  %894 = add nsw i64 %892, %893
  %895 = load i32, ptr %107, align 4, !tbaa !68
  %896 = zext nneg i32 %895 to i64
  %897 = ashr i64 %894, %896
  br label %898

898:                                              ; preds = %890, %882
  %899 = phi i64 [ %889, %882 ], [ %897, %890 ]
  %900 = add nsw i64 %899, %844
  store i64 %900, ptr %97, align 8, !tbaa !28
  br label %945

901:                                              ; preds = %836
  br i1 %854, label %910, label %902

902:                                              ; preds = %901
  %903 = load i64, ptr %108, align 8, !tbaa !78
  %904 = mul nsw i64 %903, %856
  %905 = and i64 %851, 4095
  %906 = mul nsw i64 %903, %905
  %907 = add nsw i64 %906, 2048
  %908 = ashr i64 %907, 12
  %909 = add nsw i64 %908, %904
  br label %918

910:                                              ; preds = %901
  %911 = load i64, ptr %109, align 8, !tbaa !79
  %912 = mul nsw i64 %911, %856
  %913 = load i64, ptr %110, align 8, !tbaa !67
  %914 = add nsw i64 %912, %913
  %915 = load i32, ptr %111, align 4, !tbaa !68
  %916 = zext nneg i32 %915 to i64
  %917 = ashr i64 %914, %916
  br label %918

918:                                              ; preds = %910, %902
  %919 = phi i64 [ %909, %902 ], [ %917, %910 ]
  %920 = add nsw i64 %919, %844
  store i64 %920, ptr %97, align 8, !tbaa !28
  %921 = load i32, ptr %112, align 8, !tbaa !69
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %945, label %923

923:                                              ; preds = %918
  %924 = shl i64 %851, 20
  %925 = ashr i64 %924, 32
  br i1 %854, label %934, label %926

926:                                              ; preds = %923
  %927 = load i64, ptr %113, align 8, !tbaa !80
  %928 = mul nsw i64 %927, %925
  %929 = and i64 %851, 4095
  %930 = mul nsw i64 %927, %929
  %931 = add nsw i64 %930, 2048
  %932 = ashr i64 %931, 12
  %933 = add nsw i64 %932, %928
  br label %942

934:                                              ; preds = %923
  %935 = load i64, ptr %114, align 8, !tbaa !81
  %936 = mul nsw i64 %935, %925
  %937 = load i64, ptr %115, align 8, !tbaa !67
  %938 = add nsw i64 %936, %937
  %939 = load i32, ptr %116, align 4, !tbaa !68
  %940 = zext nneg i32 %939 to i64
  %941 = ashr i64 %938, %940
  br label %942

942:                                              ; preds = %934, %926
  %943 = phi i64 [ %933, %926 ], [ %941, %934 ]
  %944 = add nsw i64 %943, %848
  store i64 %944, ptr %98, align 8, !tbaa !31
  br label %945

945:                                              ; preds = %918, %942, %874, %898
  %946 = load i64, ptr %97, align 8, !tbaa !28
  %947 = add nsw i64 %845, %946
  %948 = load i64, ptr %98, align 8, !tbaa !31
  %949 = add nsw i64 %849, %948
  %950 = getelementptr inbounds i64, ptr %839, i64 1
  %951 = load i64, ptr %950, align 8, !tbaa !33
  %952 = getelementptr inbounds i64, ptr %839, i64 2
  %953 = load i64, ptr %952, align 8, !tbaa !33
  call void @accum_xy_proc(ptr noundef nonnull %4, i64 noundef %951, i64 noundef %953) #8
  %954 = load i64, ptr %97, align 8, !tbaa !28
  %955 = load i64, ptr %98, align 8, !tbaa !31
  %956 = getelementptr inbounds i64, ptr %839, i64 4
  %957 = icmp eq ptr %956, %234
  br i1 %850, label %1011, label %958

958:                                              ; preds = %945
  %959 = load i64, ptr %837, align 8, !tbaa !33
  br i1 %957, label %960, label %962

960:                                              ; preds = %958
  %961 = load i64, ptr %956, align 8, !tbaa !33
  call void @accum_xy_proc(ptr noundef nonnull %4, i64 noundef %959, i64 noundef %961) #8
  br label %1065

962:                                              ; preds = %958
  %963 = add nsw i64 %959, 4194304
  %964 = and i64 %963, -8384513
  %965 = icmp eq i64 %964, 0
  %966 = shl i64 %959, 20
  %967 = ashr i64 %966, 32
  br i1 %965, label %976, label %968

968:                                              ; preds = %962
  %969 = load i64, ptr %117, align 8, !tbaa !78
  %970 = mul nsw i64 %969, %967
  %971 = and i64 %959, 4095
  %972 = mul nsw i64 %969, %971
  %973 = add nsw i64 %972, 2048
  %974 = ashr i64 %973, 12
  %975 = add nsw i64 %974, %970
  br label %984

976:                                              ; preds = %962
  %977 = load i64, ptr %118, align 8, !tbaa !79
  %978 = mul nsw i64 %977, %967
  %979 = load i64, ptr %119, align 8, !tbaa !67
  %980 = add nsw i64 %978, %979
  %981 = load i32, ptr %120, align 4, !tbaa !68
  %982 = zext nneg i32 %981 to i64
  %983 = ashr i64 %980, %982
  br label %984

984:                                              ; preds = %976, %968
  %985 = phi i64 [ %975, %968 ], [ %983, %976 ]
  %986 = add nsw i64 %985, %954
  store i64 %986, ptr %97, align 8, !tbaa !28
  %987 = load i32, ptr %121, align 8, !tbaa !69
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %1065, label %989

989:                                              ; preds = %984
  %990 = shl i64 %959, 20
  %991 = ashr i64 %990, 32
  br i1 %965, label %1000, label %992

992:                                              ; preds = %989
  %993 = load i64, ptr %122, align 8, !tbaa !80
  %994 = mul nsw i64 %993, %991
  %995 = and i64 %959, 4095
  %996 = mul nsw i64 %993, %995
  %997 = add nsw i64 %996, 2048
  %998 = ashr i64 %997, 12
  %999 = add nsw i64 %998, %994
  br label %1008

1000:                                             ; preds = %989
  %1001 = load i64, ptr %123, align 8, !tbaa !81
  %1002 = mul nsw i64 %1001, %991
  %1003 = load i64, ptr %124, align 8, !tbaa !67
  %1004 = add nsw i64 %1002, %1003
  %1005 = load i32, ptr %125, align 4, !tbaa !68
  %1006 = zext nneg i32 %1005 to i64
  %1007 = ashr i64 %1004, %1006
  br label %1008

1008:                                             ; preds = %1000, %992
  %1009 = phi i64 [ %999, %992 ], [ %1007, %1000 ]
  %1010 = add nsw i64 %1009, %955
  store i64 %1010, ptr %98, align 8, !tbaa !31
  br label %1065

1011:                                             ; preds = %945
  br i1 %957, label %1012, label %1015

1012:                                             ; preds = %1011
  %1013 = load i64, ptr %956, align 8, !tbaa !33
  %1014 = load i64, ptr %837, align 8, !tbaa !33
  call void @accum_xy_proc(ptr noundef nonnull %4, i64 noundef %1013, i64 noundef %1014) #8
  br label %1065

1015:                                             ; preds = %1011
  %1016 = load i64, ptr %837, align 8, !tbaa !33
  %1017 = add nsw i64 %1016, 4194304
  %1018 = and i64 %1017, -8384513
  %1019 = icmp eq i64 %1018, 0
  %1020 = shl i64 %1016, 20
  %1021 = ashr i64 %1020, 32
  br i1 %1019, label %1030, label %1022

1022:                                             ; preds = %1015
  %1023 = load i64, ptr %126, align 8, !tbaa !65
  %1024 = mul nsw i64 %1023, %1021
  %1025 = and i64 %1016, 4095
  %1026 = mul nsw i64 %1023, %1025
  %1027 = add nsw i64 %1026, 2048
  %1028 = ashr i64 %1027, 12
  %1029 = add nsw i64 %1028, %1024
  br label %1038

1030:                                             ; preds = %1015
  %1031 = load i64, ptr %127, align 8, !tbaa !66
  %1032 = mul nsw i64 %1031, %1021
  %1033 = load i64, ptr %128, align 8, !tbaa !67
  %1034 = add nsw i64 %1032, %1033
  %1035 = load i32, ptr %129, align 4, !tbaa !68
  %1036 = zext nneg i32 %1035 to i64
  %1037 = ashr i64 %1034, %1036
  br label %1038

1038:                                             ; preds = %1030, %1022
  %1039 = phi i64 [ %1029, %1022 ], [ %1037, %1030 ]
  %1040 = add nsw i64 %1039, %955
  store i64 %1040, ptr %98, align 8, !tbaa !31
  %1041 = load i32, ptr %130, align 8, !tbaa !69
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1065, label %1043

1043:                                             ; preds = %1038
  %1044 = shl i64 %1016, 20
  %1045 = ashr i64 %1044, 32
  br i1 %1019, label %1054, label %1046

1046:                                             ; preds = %1043
  %1047 = load i64, ptr %131, align 8, !tbaa !70
  %1048 = mul nsw i64 %1047, %1045
  %1049 = and i64 %1016, 4095
  %1050 = mul nsw i64 %1047, %1049
  %1051 = add nsw i64 %1050, 2048
  %1052 = ashr i64 %1051, 12
  %1053 = add nsw i64 %1052, %1048
  br label %1062

1054:                                             ; preds = %1043
  %1055 = load i64, ptr %132, align 8, !tbaa !71
  %1056 = mul nsw i64 %1055, %1045
  %1057 = load i64, ptr %133, align 8, !tbaa !67
  %1058 = add nsw i64 %1056, %1057
  %1059 = load i32, ptr %134, align 4, !tbaa !68
  %1060 = zext nneg i32 %1059 to i64
  %1061 = ashr i64 %1058, %1060
  br label %1062

1062:                                             ; preds = %1054, %1046
  %1063 = phi i64 [ %1053, %1046 ], [ %1061, %1054 ]
  %1064 = add nsw i64 %1063, %954
  store i64 %1064, ptr %97, align 8, !tbaa !28
  br label %1065

1065:                                             ; preds = %1012, %1062, %1038, %960, %1008, %984
  %1066 = load ptr, ptr %4, align 8, !tbaa !36
  %1067 = load i64, ptr %97, align 8, !tbaa !28
  %1068 = load i64, ptr %98, align 8, !tbaa !31
  %1069 = call i32 @gx_path_add_curve_notes(ptr noundef %1066, i64 noundef %947, i64 noundef %949, i64 noundef %954, i64 noundef %955, i64 noundef %1067, i64 noundef %1068, i32 noundef 0) #8
  %1070 = icmp sgt i32 %1069, -1
  %1071 = select i1 %1070, i32 %838, i32 %1069
  br i1 %1070, label %831, label %1852

1072:                                             ; preds = %325
  %1073 = load i64, ptr %234, align 8, !tbaa !33
  %1074 = lshr i64 %1073, 12
  %1075 = trunc i64 %1074 to i32
  %1076 = load ptr, ptr %0, align 8, !tbaa !9
  %1077 = getelementptr inbounds %struct.gs_font_type1_s, ptr %1076, i64 0, i32 22, i32 27
  %1078 = load i32, ptr %1077, align 4, !tbaa !86
  %1079 = icmp sgt i32 %1075, 0
  br i1 %1079, label %1080, label %1852

1080:                                             ; preds = %1072
  %1081 = getelementptr inbounds i64, ptr %234, i64 -1
  %1082 = shl i64 %232, 29
  %1083 = ashr i64 %1082, 32
  %1084 = sub nsw i64 0, %1083
  %1085 = getelementptr inbounds i64, ptr %1081, i64 %1084
  %1086 = shl i64 %1074, 32
  %1087 = ashr exact i64 %1086, 32
  %1088 = getelementptr inbounds i64, ptr %1085, i64 %1087
  %1089 = getelementptr inbounds i64, ptr %1088, i64 -1
  %1090 = icmp sgt i32 %1078, 1
  %1091 = add nsw i32 %1078, -1
  %1092 = sext i32 %1091 to i64
  %1093 = zext nneg i32 %1078 to i64
  br label %1094

1094:                                             ; preds = %1080, %1113
  %1095 = phi i32 [ 0, %1080 ], [ %1114, %1113 ]
  %1096 = phi ptr [ %1085, %1080 ], [ %1115, %1113 ]
  %1097 = phi ptr [ %1089, %1080 ], [ %1116, %1113 ]
  br i1 %1090, label %1098, label %1113

1098:                                             ; preds = %1094
  %1099 = load i64, ptr %1096, align 8, !tbaa !33
  br label %1100

1100:                                             ; preds = %1098, %1100
  %1101 = phi i64 [ 1, %1098 ], [ %1111, %1100 ]
  %1102 = phi i64 [ %1099, %1098 ], [ %1110, %1100 ]
  %1103 = getelementptr inbounds i64, ptr %1097, i64 %1101
  %1104 = load i64, ptr %1103, align 8, !tbaa !33
  %1105 = sitofp i64 %1104 to float
  %1106 = getelementptr inbounds %struct.gs_font_type1_s, ptr %1076, i64 0, i32 22, i32 27, i32 1, i64 %1101
  %1107 = load float, ptr %1106, align 4, !tbaa !87
  %1108 = sitofp i64 %1102 to float
  %1109 = call float @llvm.fmuladd.f32(float %1105, float %1107, float %1108)
  %1110 = fptosi float %1109 to i64
  store i64 %1110, ptr %1096, align 8, !tbaa !33
  %1111 = add nuw nsw i64 %1101, 1
  %1112 = icmp eq i64 %1111, %1093
  br i1 %1112, label %1113, label %1100, !llvm.loop !88

1113:                                             ; preds = %1100, %1094
  %1114 = add nuw nsw i32 %1095, 1
  %1115 = getelementptr inbounds i64, ptr %1096, i64 1
  %1116 = getelementptr inbounds i64, ptr %1097, i64 %1092
  %1117 = icmp eq i32 %1114, %1075
  br i1 %1117, label %1852, label %1094, !llvm.loop !89

1118:                                             ; preds = %325
  store i32 1, ptr %95, align 8, !tbaa !90
  br label %1119

1119:                                             ; preds = %1118, %325
  %1120 = load i32, ptr %18, align 4, !tbaa !26
  %1121 = icmp slt i32 %1120, 0
  br i1 %1121, label %1122, label %1167

1122:                                             ; preds = %1119
  store ptr %235, ptr %231, align 8, !tbaa !45
  %1123 = getelementptr inbounds %struct.ip_state, ptr %231, i64 0, i32 1
  store i16 %248, ptr %1123, align 8, !tbaa !48
  %1124 = and i64 %232, 8
  %1125 = icmp eq i64 %1124, 0
  br i1 %1125, label %1126, label %1133

1126:                                             ; preds = %1122
  %1127 = load i64, ptr %5, align 16, !tbaa !33
  %1128 = load ptr, ptr %0, align 8, !tbaa !9
  %1129 = getelementptr inbounds %struct.gs_font_type1_s, ptr %1128, i64 0, i32 22, i32 11
  %1130 = load i64, ptr %1129, align 8, !tbaa !54
  %1131 = add nsw i64 %1130, %1127
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 8 %211, i64 %232, i1 false)
  %1132 = getelementptr inbounds i64, ptr %234, i64 -1
  br label %1137

1133:                                             ; preds = %1122
  %1134 = load ptr, ptr %0, align 8, !tbaa !9
  %1135 = getelementptr inbounds %struct.gs_font_type1_s, ptr %1134, i64 0, i32 22, i32 10
  %1136 = load i64, ptr %1135, align 8, !tbaa !64
  br label %1137

1137:                                             ; preds = %1133, %1126
  %1138 = phi i64 [ %1131, %1126 ], [ %1136, %1133 ]
  %1139 = phi ptr [ %1132, %1126 ], [ %234, %1133 ]
  %1140 = call i32 @gs_type1_sbw(ptr noundef %0, i64 noundef 0, i64 noundef 0, i64 noundef %1138, i64 noundef 0) #8
  %1141 = load i32, ptr %12, align 8, !tbaa !25
  %1142 = add nsw i32 %1141, -1
  %1143 = sext i32 %1142 to i64
  %1144 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 %1143
  %1145 = load ptr, ptr %1144, align 8, !tbaa !45
  %1146 = getelementptr inbounds i8, ptr %1145, i64 -1
  store ptr %1146, ptr %1144, align 8, !tbaa !45
  %1147 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 %1143, i32 1
  %1148 = load i16, ptr %1147, align 8, !tbaa !48
  %1149 = mul i16 %1148, 27493
  %1150 = add i16 %1149, 10149
  %1151 = load i8, ptr %1146, align 1, !tbaa !42
  %1152 = zext i8 %1151 to i16
  %1153 = sub i16 %1150, %1152
  store i16 %1153, ptr %1147, align 8, !tbaa !48
  %1154 = getelementptr inbounds i64, ptr %1139, i64 1
  %1155 = ptrtoint ptr %1154 to i64
  %1156 = sub i64 %1155, %213
  %1157 = lshr exact i64 %1156, 3
  %1158 = trunc i64 %1157 to i32
  store i32 %1158, ptr %34, align 8, !tbaa !38
  %1159 = ptrtoint ptr %231 to i64
  %1160 = sub i64 %1159, %214
  %1161 = lshr exact i64 %1160, 5
  %1162 = trunc i64 %1161 to i32
  %1163 = add i32 %1162, 1
  store i32 %1163, ptr %12, align 8, !tbaa !25
  %1164 = load i32, ptr %18, align 4, !tbaa !26
  %1165 = icmp slt i32 %1164, 0
  br i1 %1165, label %1166, label %1852

1166:                                             ; preds = %1137
  store i32 0, ptr %18, align 4, !tbaa !26
  br label %1852

1167:                                             ; preds = %1119
  %1168 = load ptr, ptr %31, align 8, !tbaa !35
  call void @type1_apply_path_hints(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1168) #8
  %1169 = icmp slt i64 %232, 8
  br i1 %1169, label %1852, label %1170

1170:                                             ; preds = %1167, %1170
  %1171 = phi ptr [ %1182, %1170 ], [ %209, %1167 ]
  %1172 = phi ptr [ %1181, %1170 ], [ %5, %1167 ]
  %1173 = phi i64 [ %1180, %1170 ], [ 0, %1167 ]
  %1174 = load i64, ptr %1172, align 8, !tbaa !33
  %1175 = add nsw i64 %1174, %1173
  %1176 = load i64, ptr %1171, align 8, !tbaa !33
  %1177 = load ptr, ptr %210, align 8, !tbaa !91
  %1178 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1177, i64 0, i32 2
  call void @type1_do_hstem(ptr noundef nonnull %0, i64 noundef %1175, i64 noundef %1176, ptr noundef nonnull %1178) #8
  %1179 = load i64, ptr %1171, align 8, !tbaa !33
  %1180 = add nsw i64 %1179, %1175
  %1181 = getelementptr inbounds i64, ptr %1172, i64 2
  %1182 = getelementptr inbounds i64, ptr %1172, i64 3
  %1183 = icmp ugt ptr %1182, %234
  br i1 %1183, label %1852, label %1170, !llvm.loop !92

1184:                                             ; preds = %325, %325
  %1185 = load i32, ptr %93, align 8, !tbaa !93
  %1186 = load i32, ptr %94, align 8, !tbaa !94
  %1187 = add nsw i32 %1186, %1185
  %1188 = icmp sgt i32 %1187, 0
  br i1 %1188, label %1189, label %1204

1189:                                             ; preds = %1184, %1199
  %1190 = phi ptr [ %1201, %1199 ], [ %235, %1184 ]
  %1191 = phi i16 [ %1200, %1199 ], [ %248, %1184 ]
  %1192 = phi i32 [ %1202, %1199 ], [ 0, %1184 ]
  br i1 %11, label %1193, label %1199

1193:                                             ; preds = %1189
  %1194 = load i8, ptr %1190, align 1, !tbaa !42
  %1195 = zext i8 %1194 to i16
  %1196 = add i16 %1191, %1195
  %1197 = mul i16 %1196, -12691
  %1198 = add i16 %1197, 22719
  br label %1199

1199:                                             ; preds = %1189, %1193
  %1200 = phi i16 [ %1198, %1193 ], [ %1191, %1189 ]
  %1201 = getelementptr inbounds i8, ptr %1190, i64 1
  %1202 = add nuw nsw i32 %1192, 8
  %1203 = icmp slt i32 %1202, %1187
  br i1 %1203, label %1189, label %1204, !llvm.loop !95

1204:                                             ; preds = %1199, %1184
  %1205 = phi i16 [ %248, %1184 ], [ %1200, %1199 ]
  %1206 = phi ptr [ %235, %1184 ], [ %1201, %1199 ]
  store ptr %1206, ptr %231, align 8, !tbaa !45
  %1207 = getelementptr inbounds %struct.ip_state, ptr %231, i64 0, i32 1
  store i16 %1205, ptr %1207, align 8, !tbaa !48
  br label %1852

1208:                                             ; preds = %325
  store i32 1, ptr %92, align 8, !tbaa !90
  br label %1209

1209:                                             ; preds = %1208, %325
  %1210 = load i32, ptr %18, align 4, !tbaa !26
  %1211 = icmp slt i32 %1210, 0
  br i1 %1211, label %1212, label %1257

1212:                                             ; preds = %1209
  store ptr %235, ptr %231, align 8, !tbaa !45
  %1213 = getelementptr inbounds %struct.ip_state, ptr %231, i64 0, i32 1
  store i16 %248, ptr %1213, align 8, !tbaa !48
  %1214 = and i64 %232, 8
  %1215 = icmp eq i64 %1214, 0
  br i1 %1215, label %1216, label %1223

1216:                                             ; preds = %1212
  %1217 = load i64, ptr %5, align 16, !tbaa !33
  %1218 = load ptr, ptr %0, align 8, !tbaa !9
  %1219 = getelementptr inbounds %struct.gs_font_type1_s, ptr %1218, i64 0, i32 22, i32 11
  %1220 = load i64, ptr %1219, align 8, !tbaa !54
  %1221 = add nsw i64 %1220, %1217
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 8 %205, i64 %232, i1 false)
  %1222 = getelementptr inbounds i64, ptr %234, i64 -1
  br label %1227

1223:                                             ; preds = %1212
  %1224 = load ptr, ptr %0, align 8, !tbaa !9
  %1225 = getelementptr inbounds %struct.gs_font_type1_s, ptr %1224, i64 0, i32 22, i32 10
  %1226 = load i64, ptr %1225, align 8, !tbaa !64
  br label %1227

1227:                                             ; preds = %1223, %1216
  %1228 = phi i64 [ %1221, %1216 ], [ %1226, %1223 ]
  %1229 = phi ptr [ %1222, %1216 ], [ %234, %1223 ]
  %1230 = call i32 @gs_type1_sbw(ptr noundef %0, i64 noundef 0, i64 noundef 0, i64 noundef %1228, i64 noundef 0) #8
  %1231 = load i32, ptr %12, align 8, !tbaa !25
  %1232 = add nsw i32 %1231, -1
  %1233 = sext i32 %1232 to i64
  %1234 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 %1233
  %1235 = load ptr, ptr %1234, align 8, !tbaa !45
  %1236 = getelementptr inbounds i8, ptr %1235, i64 -1
  store ptr %1236, ptr %1234, align 8, !tbaa !45
  %1237 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 %1233, i32 1
  %1238 = load i16, ptr %1237, align 8, !tbaa !48
  %1239 = mul i16 %1238, 27493
  %1240 = add i16 %1239, 10149
  %1241 = load i8, ptr %1236, align 1, !tbaa !42
  %1242 = zext i8 %1241 to i16
  %1243 = sub i16 %1240, %1242
  store i16 %1243, ptr %1237, align 8, !tbaa !48
  %1244 = getelementptr inbounds i64, ptr %1229, i64 1
  %1245 = ptrtoint ptr %1244 to i64
  %1246 = sub i64 %1245, %207
  %1247 = lshr exact i64 %1246, 3
  %1248 = trunc i64 %1247 to i32
  store i32 %1248, ptr %34, align 8, !tbaa !38
  %1249 = ptrtoint ptr %231 to i64
  %1250 = sub i64 %1249, %208
  %1251 = lshr exact i64 %1250, 5
  %1252 = trunc i64 %1251 to i32
  %1253 = add i32 %1252, 1
  store i32 %1253, ptr %12, align 8, !tbaa !25
  %1254 = load i32, ptr %18, align 4, !tbaa !26
  %1255 = icmp slt i32 %1254, 0
  br i1 %1255, label %1256, label %1852

1256:                                             ; preds = %1227
  store i32 0, ptr %18, align 4, !tbaa !26
  br label %1852

1257:                                             ; preds = %1209
  %1258 = load ptr, ptr %31, align 8, !tbaa !35
  call void @type1_apply_path_hints(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1258) #8
  %1259 = icmp slt i64 %232, 8
  br i1 %1259, label %1852, label %1260

1260:                                             ; preds = %1257, %1260
  %1261 = phi ptr [ %1272, %1260 ], [ %203, %1257 ]
  %1262 = phi ptr [ %1271, %1260 ], [ %5, %1257 ]
  %1263 = phi i64 [ %1270, %1260 ], [ 0, %1257 ]
  %1264 = load i64, ptr %1262, align 8, !tbaa !33
  %1265 = add nsw i64 %1264, %1263
  %1266 = load i64, ptr %1261, align 8, !tbaa !33
  %1267 = load ptr, ptr %204, align 8, !tbaa !91
  %1268 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1267, i64 0, i32 2
  call void @type1_do_vstem(ptr noundef nonnull %0, i64 noundef %1265, i64 noundef %1266, ptr noundef nonnull %1268) #8
  %1269 = load i64, ptr %1261, align 8, !tbaa !33
  %1270 = add nsw i64 %1269, %1265
  %1271 = getelementptr inbounds i64, ptr %1262, i64 2
  %1272 = getelementptr inbounds i64, ptr %1262, i64 3
  %1273 = icmp ugt ptr %1272, %234
  br i1 %1273, label %1852, label %1260, !llvm.loop !96

1274:                                             ; preds = %328, %1289
  %1275 = phi ptr [ %1291, %1289 ], [ %89, %328 ]
  %1276 = phi ptr [ %1290, %1289 ], [ %5, %328 ]
  %1277 = load i64, ptr %1276, align 8, !tbaa !33
  %1278 = getelementptr inbounds i64, ptr %1276, i64 1
  %1279 = load i64, ptr %1278, align 8, !tbaa !33
  %1280 = getelementptr inbounds i64, ptr %1276, i64 2
  %1281 = load i64, ptr %1280, align 8, !tbaa !33
  %1282 = getelementptr inbounds i64, ptr %1276, i64 3
  %1283 = load i64, ptr %1282, align 8, !tbaa !33
  %1284 = getelementptr inbounds i64, ptr %1276, i64 4
  %1285 = load i64, ptr %1284, align 8, !tbaa !33
  %1286 = load i64, ptr %1275, align 8, !tbaa !33
  %1287 = call i32 @gs_op1_rrcurveto(ptr noundef nonnull %4, i64 noundef %1277, i64 noundef %1279, i64 noundef %1281, i64 noundef %1283, i64 noundef %1285, i64 noundef %1286) #8
  %1288 = icmp slt i32 %1287, 0
  br i1 %1288, label %1852, label %1289

1289:                                             ; preds = %1274
  %1290 = getelementptr inbounds i64, ptr %1276, i64 6
  %1291 = getelementptr inbounds i64, ptr %1276, i64 11
  %1292 = icmp ugt ptr %1291, %234
  br i1 %1292, label %1293, label %1274, !llvm.loop !97

1293:                                             ; preds = %1289, %328
  %1294 = phi ptr [ %5, %328 ], [ %1290, %1289 ]
  %1295 = load i64, ptr %1294, align 8, !tbaa !33
  %1296 = getelementptr inbounds i64, ptr %1294, i64 1
  %1297 = load i64, ptr %1296, align 8, !tbaa !33
  call void @accum_xy_proc(ptr noundef nonnull %4, i64 noundef %1295, i64 noundef %1297) #8
  %1298 = load ptr, ptr %4, align 8, !tbaa !36
  %1299 = load i64, ptr %90, align 8, !tbaa !28
  %1300 = load i64, ptr %91, align 8, !tbaa !31
  %1301 = call i32 @gx_path_add_line_notes(ptr noundef %1298, i64 noundef %1299, i64 noundef %1300, i32 noundef 0) #8
  br label %468

1302:                                             ; preds = %326, %1312
  %1303 = phi ptr [ %1313, %1312 ], [ %5, %326 ]
  %1304 = load i64, ptr %1303, align 8, !tbaa !33
  %1305 = getelementptr inbounds i64, ptr %1303, i64 1
  %1306 = load i64, ptr %1305, align 8, !tbaa !33
  call void @accum_xy_proc(ptr noundef nonnull %4, i64 noundef %1304, i64 noundef %1306) #8
  %1307 = load ptr, ptr %4, align 8, !tbaa !36
  %1308 = load i64, ptr %87, align 8, !tbaa !28
  %1309 = load i64, ptr %88, align 8, !tbaa !31
  %1310 = call i32 @gx_path_add_line_notes(ptr noundef %1307, i64 noundef %1308, i64 noundef %1309, i32 noundef 0) #8
  %1311 = icmp slt i32 %1310, 0
  br i1 %1311, label %1852, label %1312

1312:                                             ; preds = %1302
  %1313 = getelementptr inbounds i64, ptr %1303, i64 2
  %1314 = getelementptr inbounds i64, ptr %1303, i64 9
  %1315 = icmp ugt ptr %1314, %234
  br i1 %1315, label %1316, label %1302, !llvm.loop !98

1316:                                             ; preds = %1312, %326
  %1317 = phi ptr [ %5, %326 ], [ %1313, %1312 ]
  %1318 = load i64, ptr %1317, align 8, !tbaa !33
  %1319 = getelementptr inbounds i64, ptr %1317, i64 1
  %1320 = load i64, ptr %1319, align 8, !tbaa !33
  %1321 = getelementptr inbounds i64, ptr %1317, i64 2
  %1322 = load i64, ptr %1321, align 8, !tbaa !33
  %1323 = getelementptr inbounds i64, ptr %1317, i64 3
  %1324 = load i64, ptr %1323, align 8, !tbaa !33
  %1325 = getelementptr inbounds i64, ptr %1317, i64 4
  %1326 = load i64, ptr %1325, align 8, !tbaa !33
  %1327 = getelementptr inbounds i64, ptr %1317, i64 5
  %1328 = load i64, ptr %1327, align 8, !tbaa !33
  %1329 = call i32 @gs_op1_rrcurveto(ptr noundef nonnull %4, i64 noundef %1318, i64 noundef %1320, i64 noundef %1322, i64 noundef %1324, i64 noundef %1326, i64 noundef %1328) #8
  br label %468

1330:                                             ; preds = %325
  %1331 = getelementptr inbounds i64, ptr %234, i64 1
  %1332 = ptrtoint ptr %1331 to i64
  %1333 = and i64 %1332, 8
  %1334 = getelementptr inbounds i8, ptr %5, i64 %1333
  %1335 = getelementptr inbounds i64, ptr %1334, i64 3
  %1336 = icmp ugt ptr %1335, %234
  br i1 %1336, label %1363, label %1337

1337:                                             ; preds = %1330
  %1338 = icmp eq i64 %1333, 0
  %1339 = load i64, ptr %5, align 16
  %1340 = select i1 %1338, i64 0, i64 %1339
  %1341 = load i64, ptr %1334, align 8, !tbaa !33
  %1342 = getelementptr inbounds i64, ptr %1334, i64 1
  %1343 = load i64, ptr %1342, align 8, !tbaa !33
  %1344 = getelementptr inbounds i64, ptr %1334, i64 2
  %1345 = load i64, ptr %1344, align 8, !tbaa !33
  %1346 = load i64, ptr %1335, align 8, !tbaa !33
  %1347 = call i32 @gs_op1_rrcurveto(ptr noundef nonnull %4, i64 noundef %1340, i64 noundef %1341, i64 noundef %1343, i64 noundef %1345, i64 noundef 0, i64 noundef %1346) #8
  %1348 = icmp slt i32 %1347, 0
  br i1 %1348, label %1363, label %1349

1349:                                             ; preds = %1337, %1353
  %1350 = phi ptr [ %1354, %1353 ], [ %1334, %1337 ]
  %1351 = getelementptr inbounds i64, ptr %1350, i64 7
  %1352 = icmp ugt ptr %1351, %234
  br i1 %1352, label %1363, label %1353, !llvm.loop !99

1353:                                             ; preds = %1349
  %1354 = getelementptr inbounds i64, ptr %1350, i64 4
  %1355 = load i64, ptr %1354, align 8, !tbaa !33
  %1356 = getelementptr inbounds i64, ptr %1350, i64 5
  %1357 = load i64, ptr %1356, align 8, !tbaa !33
  %1358 = getelementptr inbounds i64, ptr %1350, i64 6
  %1359 = load i64, ptr %1358, align 8, !tbaa !33
  %1360 = load i64, ptr %1351, align 8, !tbaa !33
  %1361 = call i32 @gs_op1_rrcurveto(ptr noundef nonnull %4, i64 noundef 0, i64 noundef %1355, i64 noundef %1357, i64 noundef %1359, i64 noundef 0, i64 noundef %1360) #8
  %1362 = icmp slt i32 %1361, 0
  br i1 %1362, label %1363, label %1349, !llvm.loop !99

1363:                                             ; preds = %1349, %1353, %1337, %1330
  %1364 = phi i1 [ %1336, %1330 ], [ %1336, %1337 ], [ %1352, %1353 ], [ %1352, %1349 ]
  %1365 = phi i32 [ %233, %1330 ], [ %1347, %1337 ], [ %1361, %1353 ], [ %233, %1349 ]
  br i1 %1364, label %485, label %1852

1366:                                             ; preds = %325
  %1367 = getelementptr inbounds i64, ptr %234, i64 1
  %1368 = ptrtoint ptr %1367 to i64
  %1369 = and i64 %1368, 8
  %1370 = getelementptr inbounds i8, ptr %5, i64 %1369
  %1371 = getelementptr inbounds i64, ptr %1370, i64 3
  %1372 = icmp ugt ptr %1371, %234
  br i1 %1372, label %1399, label %1373

1373:                                             ; preds = %1366
  %1374 = icmp eq i64 %1369, 0
  %1375 = load i64, ptr %5, align 16
  %1376 = select i1 %1374, i64 0, i64 %1375
  %1377 = load i64, ptr %1370, align 8, !tbaa !33
  %1378 = getelementptr inbounds i64, ptr %1370, i64 1
  %1379 = load i64, ptr %1378, align 8, !tbaa !33
  %1380 = getelementptr inbounds i64, ptr %1370, i64 2
  %1381 = load i64, ptr %1380, align 8, !tbaa !33
  %1382 = load i64, ptr %1371, align 8, !tbaa !33
  %1383 = call i32 @gs_op1_rrcurveto(ptr noundef nonnull %4, i64 noundef %1377, i64 noundef %1376, i64 noundef %1379, i64 noundef %1381, i64 noundef %1382, i64 noundef 0) #8
  %1384 = icmp slt i32 %1383, 0
  br i1 %1384, label %1399, label %1385

1385:                                             ; preds = %1373, %1389
  %1386 = phi ptr [ %1390, %1389 ], [ %1370, %1373 ]
  %1387 = getelementptr inbounds i64, ptr %1386, i64 7
  %1388 = icmp ugt ptr %1387, %234
  br i1 %1388, label %1399, label %1389, !llvm.loop !100

1389:                                             ; preds = %1385
  %1390 = getelementptr inbounds i64, ptr %1386, i64 4
  %1391 = load i64, ptr %1390, align 8, !tbaa !33
  %1392 = getelementptr inbounds i64, ptr %1386, i64 5
  %1393 = load i64, ptr %1392, align 8, !tbaa !33
  %1394 = getelementptr inbounds i64, ptr %1386, i64 6
  %1395 = load i64, ptr %1394, align 8, !tbaa !33
  %1396 = load i64, ptr %1387, align 8, !tbaa !33
  %1397 = call i32 @gs_op1_rrcurveto(ptr noundef nonnull %4, i64 noundef %1391, i64 noundef 0, i64 noundef %1393, i64 noundef %1395, i64 noundef %1396, i64 noundef 0) #8
  %1398 = icmp slt i32 %1397, 0
  br i1 %1398, label %1399, label %1385, !llvm.loop !100

1399:                                             ; preds = %1385, %1389, %1373, %1366
  %1400 = phi i1 [ %1372, %1366 ], [ %1372, %1373 ], [ %1388, %1389 ], [ %1388, %1385 ]
  %1401 = phi i32 [ %233, %1366 ], [ %1383, %1373 ], [ %1397, %1389 ], [ %233, %1385 ]
  br i1 %1400, label %485, label %1852

1402:                                             ; preds = %325
  %1403 = load i8, ptr %235, align 1, !tbaa !42
  br i1 %11, label %1404, label %1412

1404:                                             ; preds = %1402
  %1405 = lshr i16 %248, 8
  %1406 = zext i8 %1403 to i16
  %1407 = xor i16 %1405, %1406
  %1408 = zext nneg i16 %1407 to i32
  %1409 = add i16 %248, %1406
  %1410 = mul i16 %1409, -12691
  %1411 = add i16 %1410, 22719
  br label %1414

1412:                                             ; preds = %1402
  %1413 = zext i8 %1403 to i32
  br label %1414

1414:                                             ; preds = %1412, %1404
  %1415 = phi i32 [ %1408, %1404 ], [ %1413, %1412 ]
  %1416 = phi i16 [ %1411, %1404 ], [ %248, %1412 ]
  %1417 = getelementptr inbounds i8, ptr %230, i64 2
  %1418 = load i8, ptr %1417, align 1, !tbaa !42
  br i1 %11, label %1419, label %1427

1419:                                             ; preds = %1414
  %1420 = lshr i16 %1416, 8
  %1421 = zext i8 %1418 to i16
  %1422 = xor i16 %1420, %1421
  %1423 = zext nneg i16 %1422 to i32
  %1424 = add i16 %1416, %1421
  %1425 = mul i16 %1424, -12691
  %1426 = add i16 %1425, 22719
  br label %1429

1427:                                             ; preds = %1414
  %1428 = zext i8 %1418 to i32
  br label %1429

1429:                                             ; preds = %1427, %1419
  %1430 = phi i32 [ %1423, %1419 ], [ %1428, %1427 ]
  %1431 = phi i16 [ %1426, %1419 ], [ %1416, %1427 ]
  %1432 = getelementptr inbounds i8, ptr %230, i64 3
  %1433 = shl nuw nsw i32 %1415, 8
  %1434 = xor i32 %1433, 32768
  %1435 = add nsw i32 %1434, -32768
  %1436 = add nuw nsw i32 %1435, %1430
  %1437 = sext i32 %1436 to i64
  %1438 = shl nsw i64 %1437, 12
  %1439 = add nsw i64 %232, 8
  %1440 = getelementptr inbounds i8, ptr %5, i64 %1439
  store i64 %1438, ptr %1440, align 8, !tbaa !33
  br label %1852, !llvm.loop !49

1441:                                             ; preds = %325
  %1442 = load i64, ptr %234, align 8, !tbaa !33
  %1443 = lshr i64 %1442, 12
  %1444 = trunc i64 %1443 to i32
  %1445 = load i32, ptr %217, align 8, !tbaa !101
  %1446 = add i32 %1445, %1444
  %1447 = load ptr, ptr %218, align 8, !tbaa !52
  %1448 = getelementptr inbounds %struct.ip_state, ptr %231, i64 1, i32 2
  %1449 = call i32 %1447(ptr noundef %8, i32 noundef %1446, i32 noundef 1, ptr noundef nonnull %1448) #8
  br label %341

1450:                                             ; preds = %325
  %1451 = load i8, ptr %235, align 1, !tbaa !42
  br i1 %11, label %1452, label %1460

1452:                                             ; preds = %1450
  %1453 = lshr i16 %248, 8
  %1454 = zext i8 %1451 to i16
  %1455 = xor i16 %1453, %1454
  %1456 = zext nneg i16 %1455 to i32
  %1457 = add i16 %248, %1454
  %1458 = mul i16 %1457, -12691
  %1459 = add i16 %1458, 22719
  br label %1462

1460:                                             ; preds = %1450
  %1461 = zext i8 %1451 to i32
  br label %1462

1462:                                             ; preds = %1460, %1452
  %1463 = phi i32 [ %1456, %1452 ], [ %1461, %1460 ]
  %1464 = phi i16 [ %1459, %1452 ], [ %248, %1460 ]
  %1465 = getelementptr inbounds i8, ptr %230, i64 2
  switch i32 %1463, label %1852 [
    i32 3, label %1466
    i32 4, label %1475
    i32 5, label %1483
    i32 8, label %1487
    i32 9, label %1516
    i32 10, label %1521
    i32 11, label %1527
    i32 12, label %1533
    i32 13, label %1543
    i32 14, label %1566
    i32 15, label %1569
    i32 18, label %1576
    i32 20, label %1578
    i32 21, label %1586
    i32 22, label %1592
    i32 23, label %1603
    i32 24, label %1605
    i32 26, label %1619
    i32 27, label %1628
    i32 28, label %1632
    i32 29, label %1636
    i32 30, label %1650
    i32 34, label %1692
    i32 35, label %1711
    i32 36, label %1796
    i32 37, label %1809
  ]

1466:                                             ; preds = %1462
  %1467 = add nsw i64 %232, -8
  %1468 = getelementptr inbounds i8, ptr %5, i64 %1467
  %1469 = load i64, ptr %1468, align 8, !tbaa !33
  %1470 = icmp ne i64 %1469, 0
  %1471 = load i64, ptr %234, align 8, !tbaa !33
  %1472 = icmp ne i64 %1471, 0
  %1473 = and i1 %1470, %1472
  %1474 = select i1 %1473, i64 4096, i64 0
  store i64 %1474, ptr %1468, align 8, !tbaa !33
  br label %1852

1475:                                             ; preds = %1462
  %1476 = add nsw i64 %232, -8
  %1477 = getelementptr inbounds i8, ptr %5, i64 %1476
  %1478 = load i64, ptr %1477, align 8, !tbaa !33
  %1479 = load i64, ptr %234, align 8, !tbaa !33
  %1480 = or i64 %1479, %1478
  %1481 = icmp eq i64 %1480, 0
  %1482 = select i1 %1481, i64 0, i64 4096
  store i64 %1482, ptr %1477, align 8, !tbaa !33
  br label %1852

1483:                                             ; preds = %1462
  %1484 = load i64, ptr %234, align 8, !tbaa !33
  %1485 = icmp eq i64 %1484, 0
  %1486 = select i1 %1485, i64 4096, i64 0
  store i64 %1486, ptr %234, align 8, !tbaa !33
  br label %1852

1487:                                             ; preds = %1462
  %1488 = load i64, ptr %234, align 8, !tbaa !33
  %1489 = lshr i64 %1488, 12
  %1490 = trunc i64 %1489 to i32
  %1491 = getelementptr inbounds i64, ptr %234, i64 -2
  %1492 = load i64, ptr %1491, align 8, !tbaa !33
  %1493 = shl i64 %1492, 20
  %1494 = ashr i64 %1493, 32
  %1495 = getelementptr inbounds float, ptr %17, i64 %1494
  %1496 = getelementptr inbounds i64, ptr %234, i64 -1
  %1497 = load i64, ptr %1496, align 8, !tbaa !33
  %1498 = shl i64 %1497, 20
  %1499 = ashr i64 %1498, 32
  %1500 = getelementptr inbounds i64, ptr %227, i64 %1499
  %1501 = icmp sgt i32 %1490, 0
  br i1 %1501, label %1502, label %1514

1502:                                             ; preds = %1487
  %1503 = and i64 %1489, 4294967295
  br label %1504

1504:                                             ; preds = %1502, %1504
  %1505 = phi i64 [ 0, %1502 ], [ %1512, %1504 ]
  %1506 = getelementptr inbounds i64, ptr %1500, i64 %1505
  %1507 = load i64, ptr %1506, align 8, !tbaa !33
  %1508 = sitofp i64 %1507 to double
  %1509 = fmul double %1508, 0x3F30000000000000
  %1510 = fptrunc double %1509 to float
  %1511 = getelementptr inbounds float, ptr %1495, i64 %1505
  store float %1510, ptr %1511, align 4, !tbaa !87
  %1512 = add nuw nsw i64 %1505, 1
  %1513 = icmp eq i64 %1512, %1503
  br i1 %1513, label %1514, label %1504, !llvm.loop !102

1514:                                             ; preds = %1504, %1487
  %1515 = add nsw i64 %232, -32
  br label %1852

1516:                                             ; preds = %1462
  %1517 = load i64, ptr %234, align 8, !tbaa !33
  %1518 = icmp slt i64 %1517, 0
  br i1 %1518, label %1519, label %1852

1519:                                             ; preds = %1516
  %1520 = sub nsw i64 0, %1517
  store i64 %1520, ptr %234, align 8, !tbaa !33
  br label %1852

1521:                                             ; preds = %1462
  %1522 = load i64, ptr %234, align 8, !tbaa !33
  %1523 = add nsw i64 %232, -8
  %1524 = getelementptr inbounds i8, ptr %5, i64 %1523
  %1525 = load i64, ptr %1524, align 8, !tbaa !33
  %1526 = add nsw i64 %1525, %1522
  store i64 %1526, ptr %1524, align 8, !tbaa !33
  br label %1852

1527:                                             ; preds = %1462
  %1528 = load i64, ptr %234, align 8, !tbaa !33
  %1529 = add nsw i64 %232, -8
  %1530 = getelementptr inbounds i8, ptr %5, i64 %1529
  %1531 = load i64, ptr %1530, align 8, !tbaa !33
  %1532 = sub nsw i64 %1531, %1528
  store i64 %1532, ptr %1530, align 8, !tbaa !33
  br label %1852

1533:                                             ; preds = %1462
  %1534 = add nsw i64 %232, -8
  %1535 = getelementptr inbounds i8, ptr %5, i64 %1534
  %1536 = load i64, ptr %1535, align 8, !tbaa !33
  %1537 = sitofp i64 %1536 to double
  %1538 = load i64, ptr %234, align 8, !tbaa !33
  %1539 = sitofp i64 %1538 to double
  %1540 = fdiv double %1537, %1539
  %1541 = fmul double %1540, 4.096000e+03
  %1542 = fptosi double %1541 to i64
  store i64 %1542, ptr %1535, align 8, !tbaa !33
  br label %1852

1543:                                             ; preds = %1462
  %1544 = load i64, ptr %234, align 8, !tbaa !33
  %1545 = lshr i64 %1544, 12
  %1546 = trunc i64 %1545 to i32
  %1547 = getelementptr inbounds i64, ptr %234, i64 -1
  %1548 = load i64, ptr %1547, align 8, !tbaa !33
  %1549 = shl i64 %1548, 20
  %1550 = ashr i64 %1549, 32
  %1551 = getelementptr inbounds i64, ptr %226, i64 %1550
  %1552 = icmp sgt i32 %1546, 0
  br i1 %1552, label %1553, label %1564

1553:                                             ; preds = %1543
  %1554 = and i64 %1545, 4294967295
  br label %1555

1555:                                             ; preds = %1553, %1555
  %1556 = phi i64 [ 0, %1553 ], [ %1562, %1555 ]
  %1557 = getelementptr inbounds float, ptr %17, i64 %1556
  %1558 = load float, ptr %1557, align 4, !tbaa !87
  %1559 = fmul float %1558, 4.096000e+03
  %1560 = fptosi float %1559 to i64
  %1561 = getelementptr inbounds i64, ptr %1551, i64 %1556
  store i64 %1560, ptr %1561, align 8, !tbaa !33
  %1562 = add nuw nsw i64 %1556, 1
  %1563 = icmp eq i64 %1562, %1554
  br i1 %1563, label %1564, label %1555, !llvm.loop !103

1564:                                             ; preds = %1555, %1543
  %1565 = add nsw i64 %232, -24
  br label %1852

1566:                                             ; preds = %1462
  %1567 = load i64, ptr %234, align 8, !tbaa !33
  %1568 = sub nsw i64 0, %1567
  store i64 %1568, ptr %234, align 8, !tbaa !33
  br label %1852

1569:                                             ; preds = %1462
  %1570 = add nsw i64 %232, -8
  %1571 = getelementptr inbounds i8, ptr %5, i64 %1570
  %1572 = load i64, ptr %1571, align 8, !tbaa !33
  %1573 = load i64, ptr %234, align 8, !tbaa !33
  %1574 = icmp eq i64 %1572, %1573
  %1575 = select i1 %1574, i64 4096, i64 0
  store i64 %1575, ptr %1571, align 8, !tbaa !33
  br label %1852

1576:                                             ; preds = %1462
  %1577 = add nsw i64 %232, -8
  br label %1852

1578:                                             ; preds = %1462
  %1579 = getelementptr inbounds i64, ptr %234, i64 -1
  %1580 = load i64, ptr %1579, align 8, !tbaa !33
  %1581 = load i64, ptr %234, align 8, !tbaa !33
  %1582 = shl i64 %1581, 20
  %1583 = ashr i64 %1582, 32
  %1584 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 38, i64 %1583
  store i64 %1580, ptr %1584, align 8, !tbaa !33
  %1585 = add nsw i64 %232, -16
  br label %1852

1586:                                             ; preds = %1462
  %1587 = load i64, ptr %234, align 8, !tbaa !33
  %1588 = shl i64 %1587, 20
  %1589 = ashr i64 %1588, 32
  %1590 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 38, i64 %1589
  %1591 = load i64, ptr %1590, align 8, !tbaa !33
  store i64 %1591, ptr %234, align 8, !tbaa !33
  br label %1852

1592:                                             ; preds = %1462
  %1593 = getelementptr inbounds i64, ptr %234, i64 -1
  %1594 = load i64, ptr %1593, align 8, !tbaa !33
  %1595 = load i64, ptr %234, align 8, !tbaa !33
  %1596 = icmp sgt i64 %1594, %1595
  br i1 %1596, label %1597, label %1601

1597:                                             ; preds = %1592
  %1598 = getelementptr inbounds i64, ptr %234, i64 -2
  %1599 = load i64, ptr %1598, align 8, !tbaa !33
  %1600 = getelementptr inbounds i64, ptr %234, i64 -3
  store i64 %1599, ptr %1600, align 8, !tbaa !33
  br label %1601

1601:                                             ; preds = %1597, %1592
  %1602 = add nsw i64 %232, -24
  br label %1852

1603:                                             ; preds = %1462
  %1604 = add nsw i64 %232, 8
  br label %1852

1605:                                             ; preds = %1462
  %1606 = add nsw i64 %232, -8
  %1607 = getelementptr inbounds i8, ptr %5, i64 %1606
  %1608 = load i64, ptr %1607, align 8, !tbaa !33
  %1609 = sitofp i64 %1608 to double
  %1610 = fmul double %1609, 0x3F30000000000000
  %1611 = load i64, ptr %234, align 8, !tbaa !33
  %1612 = sitofp i64 %1611 to double
  %1613 = fmul double %1610, %1612
  %1614 = fcmp ogt double %1613, 0x43E0000000000000
  %1615 = fcmp olt double %1613, 0xC3E0000000000000
  %1616 = select i1 %1615, double 0xC3E0000000000000, double %1613
  %1617 = select i1 %1614, double 0x43E0000000000000, double %1616
  %1618 = fptosi double %1617 to i64
  store i64 %1618, ptr %1607, align 8, !tbaa !33
  br label %1852

1619:                                             ; preds = %1462
  %1620 = load i64, ptr %234, align 8, !tbaa !33
  %1621 = icmp sgt i64 %1620, -1
  br i1 %1621, label %1622, label %1852

1622:                                             ; preds = %1619
  %1623 = sitofp i64 %1620 to double
  %1624 = fmul double %1623, 0x3F30000000000000
  %1625 = call double @sqrt(double noundef %1624) #8
  %1626 = fmul double %1625, 4.096000e+03
  %1627 = fptosi double %1626 to i64
  store i64 %1627, ptr %234, align 8, !tbaa !33
  br label %1852

1628:                                             ; preds = %1462
  %1629 = load i64, ptr %234, align 8, !tbaa !33
  %1630 = add nsw i64 %232, 8
  %1631 = getelementptr inbounds i8, ptr %5, i64 %1630
  store i64 %1629, ptr %1631, align 8, !tbaa !33
  br label %1852

1632:                                             ; preds = %1462
  %1633 = load i64, ptr %234, align 8, !tbaa !33
  %1634 = getelementptr inbounds i64, ptr %234, i64 -1
  %1635 = load i64, ptr %1634, align 8, !tbaa !33
  store i64 %1635, ptr %234, align 8, !tbaa !33
  store i64 %1633, ptr %1634, align 8, !tbaa !33
  br label %1852

1636:                                             ; preds = %1462
  %1637 = load i64, ptr %234, align 8, !tbaa !33
  %1638 = icmp slt i64 %1637, 0
  %1639 = getelementptr inbounds i64, ptr %234, i64 -1
  br i1 %1638, label %1647, label %1640

1640:                                             ; preds = %1636
  %1641 = load i64, ptr %1639, align 8, !tbaa !33
  %1642 = lshr i64 %1641, 12
  %1643 = xor i64 %1642, -1
  %1644 = shl i64 %1643, 32
  %1645 = ashr exact i64 %1644, 32
  %1646 = getelementptr inbounds i64, ptr %234, i64 %1645
  br label %1647

1647:                                             ; preds = %1636, %1640
  %1648 = phi ptr [ %1646, %1640 ], [ %1639, %1636 ]
  %1649 = load i64, ptr %1648, align 8, !tbaa !33
  store i64 %1649, ptr %234, align 8, !tbaa !33
  br label %1852

1650:                                             ; preds = %1462
  %1651 = load i64, ptr %234, align 8, !tbaa !33
  %1652 = lshr i64 %1651, 12
  %1653 = trunc i64 %1652 to i32
  %1654 = getelementptr inbounds i64, ptr %234, i64 -1
  %1655 = load i64, ptr %1654, align 8, !tbaa !33
  %1656 = lshr i64 %1655, 12
  %1657 = trunc i64 %1656 to i32
  %1658 = add nsw i64 %232, -16
  %1659 = getelementptr inbounds i8, ptr %5, i64 %1658
  %1660 = icmp slt i32 %1657, 0
  br i1 %1660, label %1689, label %1661

1661:                                             ; preds = %1650
  %1662 = and i64 %1656, 4294967295
  %1663 = ptrtoint ptr %1654 to i64
  %1664 = sub i64 %1663, %225
  %1665 = ashr exact i64 %1664, 3
  %1666 = icmp sgt i64 %1662, %1665
  br i1 %1666, label %1689, label %1667

1667:                                             ; preds = %1661
  %1668 = icmp eq i32 %1657, 0
  br i1 %1668, label %1689, label %1669

1669:                                             ; preds = %1667
  %1670 = icmp slt i32 %1653, 0
  br i1 %1670, label %1671, label %1674

1671:                                             ; preds = %1669
  %1672 = srem i32 %1653, %1657
  %1673 = add nsw i32 %1672, %1657
  br label %1674

1674:                                             ; preds = %1671, %1669
  %1675 = phi i32 [ %1673, %1671 ], [ %1653, %1669 ]
  %1676 = sub nsw i64 0, %1662
  %1677 = getelementptr inbounds i64, ptr %1654, i64 %1676
  %1678 = icmp sgt i32 %1675, 0
  br i1 %1678, label %1679, label %1689

1679:                                             ; preds = %1674
  %1680 = getelementptr inbounds i64, ptr %1677, i64 1
  %1681 = shl nuw nsw i64 %1656, 3
  %1682 = add nuw nsw i64 %1681, 34359738360
  %1683 = and i64 %1682, 34359738360
  br label %1684

1684:                                             ; preds = %1679, %1684
  %1685 = phi i32 [ %1675, %1679 ], [ %1686, %1684 ]
  %1686 = add nsw i32 %1685, -1
  %1687 = load i64, ptr %1677, align 8, !tbaa !33
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %1677, ptr nonnull align 8 %1680, i64 %1683, i1 false)
  store i64 %1687, ptr %1659, align 8, !tbaa !33
  %1688 = icmp sgt i32 %1685, 1
  br i1 %1688, label %1684, label %1689, !llvm.loop !104

1689:                                             ; preds = %1684, %1674, %1667, %1650, %1661
  %1690 = phi i32 [ 1, %1661 ], [ 1, %1650 ], [ 105, %1667 ], [ 0, %1674 ], [ 0, %1684 ]
  %1691 = phi i32 [ -10, %1661 ], [ -10, %1650 ], [ %233, %1667 ], [ %233, %1674 ], [ %233, %1684 ]
  switch i32 %1690, label %1852 [
    i32 0, label %1851
    i32 105, label %1851
  ]

1692:                                             ; preds = %1462
  %1693 = add nsw i64 %232, 48
  %1694 = getelementptr inbounds i8, ptr %5, i64 %1693
  store i64 2048, ptr %1694, align 8, !tbaa !33
  %1695 = getelementptr inbounds i64, ptr %234, i64 4
  store i64 0, ptr %1695, align 8, !tbaa !33
  %1696 = load i64, ptr %234, align 8, !tbaa !33
  %1697 = getelementptr inbounds i64, ptr %234, i64 5
  store i64 %1696, ptr %1697, align 8, !tbaa !33
  %1698 = getelementptr inbounds i64, ptr %234, i64 2
  store i64 0, ptr %1698, align 8, !tbaa !33
  %1699 = getelementptr inbounds i64, ptr %234, i64 -1
  %1700 = load i64, ptr %1699, align 8, !tbaa !33
  %1701 = getelementptr inbounds i64, ptr %234, i64 3
  store i64 %1700, ptr %1701, align 8, !tbaa !33
  store i64 0, ptr %234, align 8, !tbaa !33
  %1702 = getelementptr inbounds i64, ptr %234, i64 -2
  %1703 = load i64, ptr %1702, align 8, !tbaa !33
  %1704 = getelementptr inbounds i64, ptr %234, i64 1
  store i64 %1703, ptr %1704, align 8, !tbaa !33
  %1705 = getelementptr inbounds i64, ptr %234, i64 -3
  %1706 = load i64, ptr %1705, align 8, !tbaa !33
  store i64 %1706, ptr %1702, align 8, !tbaa !33
  store i64 0, ptr %1699, align 8, !tbaa !33
  %1707 = getelementptr inbounds i64, ptr %234, i64 -4
  %1708 = load i64, ptr %1707, align 8, !tbaa !33
  store i64 %1708, ptr %1705, align 8, !tbaa !33
  %1709 = getelementptr inbounds i64, ptr %234, i64 -5
  %1710 = load i64, ptr %1709, align 8, !tbaa !33
  store i64 %1710, ptr %1707, align 8, !tbaa !33
  store i64 0, ptr %1709, align 8, !tbaa !33
  br label %1714

1711:                                             ; preds = %1462
  %1712 = load i64, ptr %234, align 8, !tbaa !33
  %1713 = sdiv i64 %1712, 100
  store i64 %1713, ptr %234, align 8, !tbaa !33
  br label %1714

1714:                                             ; preds = %1848, %1796, %1711, %1692
  %1715 = phi i64 [ %1849, %1848 ], [ %1797, %1796 ], [ %232, %1711 ], [ %1693, %1692 ]
  %1716 = getelementptr inbounds i8, ptr %5, i64 %1715
  %1717 = getelementptr inbounds i64, ptr %1716, i64 -12
  %1718 = load i64, ptr %1717, align 8, !tbaa !33
  %1719 = getelementptr inbounds i64, ptr %1716, i64 -10
  %1720 = load i64, ptr %1719, align 8, !tbaa !33
  %1721 = add nsw i64 %1720, %1718
  %1722 = getelementptr inbounds i64, ptr %1716, i64 -8
  %1723 = load i64, ptr %1722, align 8, !tbaa !33
  %1724 = add nsw i64 %1721, %1723
  %1725 = getelementptr inbounds i64, ptr %1716, i64 -11
  %1726 = load i64, ptr %1725, align 8, !tbaa !33
  %1727 = getelementptr inbounds i64, ptr %1716, i64 -9
  %1728 = load i64, ptr %1727, align 8, !tbaa !33
  %1729 = add nsw i64 %1728, %1726
  %1730 = getelementptr inbounds i64, ptr %1716, i64 -7
  %1731 = load i64, ptr %1730, align 8, !tbaa !33
  %1732 = add nsw i64 %1729, %1731
  %1733 = getelementptr inbounds i64, ptr %1716, i64 -6
  %1734 = load i64, ptr %1733, align 8, !tbaa !33
  %1735 = add nsw i64 %1734, %1724
  %1736 = getelementptr inbounds i64, ptr %1716, i64 -4
  %1737 = load i64, ptr %1736, align 8, !tbaa !33
  %1738 = add nsw i64 %1735, %1737
  %1739 = getelementptr inbounds i64, ptr %1716, i64 -2
  %1740 = load i64, ptr %1739, align 8, !tbaa !33
  %1741 = add nsw i64 %1738, %1740
  %1742 = getelementptr inbounds i64, ptr %1716, i64 -5
  %1743 = load i64, ptr %1742, align 8, !tbaa !33
  %1744 = add nsw i64 %1743, %1732
  %1745 = getelementptr inbounds i64, ptr %1716, i64 -3
  %1746 = load i64, ptr %1745, align 8, !tbaa !33
  %1747 = add nsw i64 %1744, %1746
  %1748 = add nsw i64 %1715, -8
  %1749 = getelementptr inbounds i8, ptr %5, i64 %1748
  %1750 = load i64, ptr %1749, align 8, !tbaa !33
  %1751 = add nsw i64 %1747, %1750
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  %1752 = sitofp i64 %1724 to double
  %1753 = fmul double %1752, 0x3F30000000000000
  %1754 = sitofp i64 %1732 to double
  %1755 = fmul double %1754, 0x3F30000000000000
  %1756 = load ptr, ptr %219, align 8, !tbaa !91
  %1757 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1756, i64 0, i32 2
  %1758 = call i32 @gs_distance_transform(double noundef %1753, double noundef %1755, ptr noundef nonnull %1757, ptr noundef nonnull %6) #8
  %1759 = icmp slt i32 %1758, 0
  br i1 %1759, label %1791, label %1760

1760:                                             ; preds = %1714
  %1761 = sitofp i64 %1741 to double
  %1762 = fmul double %1761, 0x3F30000000000000
  %1763 = sitofp i64 %1751 to double
  %1764 = fmul double %1763, 0x3F30000000000000
  %1765 = load ptr, ptr %219, align 8, !tbaa !91
  %1766 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1765, i64 0, i32 2
  %1767 = call i32 @gs_distance_transform(double noundef %1762, double noundef %1764, ptr noundef nonnull %1766, ptr noundef nonnull %7) #8
  %1768 = icmp slt i32 %1767, 0
  br i1 %1768, label %1791, label %1769

1769:                                             ; preds = %1760
  %1770 = load double, ptr %7, align 8, !tbaa !105
  %1771 = load double, ptr %220, align 8, !tbaa !106
  %1772 = load double, ptr %221, align 8, !tbaa !106
  %1773 = load double, ptr %6, align 8, !tbaa !105
  %1774 = fneg double %1772
  %1775 = fmul double %1773, %1774
  %1776 = call double @llvm.fmuladd.f64(double %1770, double %1771, double %1775)
  %1777 = call double @llvm.fabs.f64(double %1776)
  %1778 = fmul double %1772, %1772
  %1779 = call double @llvm.fmuladd.f64(double %1770, double %1770, double %1778)
  %1780 = call double @sqrt(double noundef %1779) #8
  %1781 = load i64, ptr %1716, align 8, !tbaa !33
  %1782 = sitofp i64 %1781 to double
  %1783 = fmul double %1782, 0x3F30000000000000
  %1784 = fmul double %1780, %1783
  %1785 = fcmp ult double %1777, %1784
  br i1 %1785, label %1786, label %1791

1786:                                             ; preds = %1769
  call void @accum_xy_proc(ptr noundef nonnull %4, i64 noundef %1741, i64 noundef %1751) #8
  %1787 = load ptr, ptr %4, align 8, !tbaa !36
  %1788 = load i64, ptr %222, align 8, !tbaa !28
  %1789 = load i64, ptr %223, align 8, !tbaa !31
  %1790 = call i32 @gx_path_add_line_notes(ptr noundef %1787, i64 noundef %1788, i64 noundef %1789, i32 noundef 0) #8
  br label %1791

1791:                                             ; preds = %1769, %1714, %1760, %1786
  %1792 = phi i32 [ 0, %1786 ], [ 1, %1760 ], [ 1, %1714 ], [ 50, %1769 ]
  %1793 = phi i64 [ %1715, %1786 ], [ %1715, %1760 ], [ %1715, %1714 ], [ %1748, %1769 ]
  %1794 = phi i32 [ %233, %1786 ], [ %1767, %1760 ], [ %1758, %1714 ], [ %233, %1769 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  switch i32 %1792, label %1852 [
    i32 0, label %1795
    i32 50, label %602
  ]

1795:                                             ; preds = %1791
  br label %1852

1796:                                             ; preds = %1462
  %1797 = add nsw i64 %232, 32
  %1798 = getelementptr inbounds i8, ptr %5, i64 %1797
  store i64 2048, ptr %1798, align 8, !tbaa !33
  %1799 = load i64, ptr %234, align 8, !tbaa !33
  %1800 = getelementptr inbounds i64, ptr %234, i64 2
  store i64 %1799, ptr %1800, align 8, !tbaa !33
  %1801 = getelementptr inbounds i64, ptr %234, i64 3
  store i64 0, ptr %1801, align 8, !tbaa !33
  %1802 = getelementptr inbounds i64, ptr %234, i64 -2
  %1803 = load i64, ptr %1802, align 8, !tbaa !33
  store i64 %1803, ptr %234, align 8, !tbaa !33
  %1804 = getelementptr inbounds i64, ptr %234, i64 -1
  %1805 = load i64, ptr %1804, align 8, !tbaa !33
  %1806 = getelementptr inbounds i64, ptr %234, i64 1
  store i64 %1805, ptr %1806, align 8, !tbaa !33
  %1807 = getelementptr inbounds i64, ptr %234, i64 -3
  %1808 = load i64, ptr %1807, align 8, !tbaa !33
  store i64 %1808, ptr %1802, align 8, !tbaa !33
  store i64 0, ptr %1804, align 8, !tbaa !33
  store i64 0, ptr %1807, align 8, !tbaa !33
  br label %1714

1809:                                             ; preds = %1462
  %1810 = getelementptr inbounds i64, ptr %234, i64 -10
  %1811 = load i64, ptr %1810, align 8, !tbaa !33
  %1812 = getelementptr inbounds i64, ptr %234, i64 -8
  %1813 = load i64, ptr %1812, align 8, !tbaa !33
  %1814 = add nsw i64 %1813, %1811
  %1815 = getelementptr inbounds i64, ptr %234, i64 -6
  %1816 = load i64, ptr %1815, align 8, !tbaa !33
  %1817 = add nsw i64 %1814, %1816
  %1818 = getelementptr inbounds i64, ptr %234, i64 -4
  %1819 = load i64, ptr %1818, align 8, !tbaa !33
  %1820 = add nsw i64 %1817, %1819
  %1821 = getelementptr inbounds i64, ptr %234, i64 -2
  %1822 = load i64, ptr %1821, align 8, !tbaa !33
  %1823 = add nsw i64 %1820, %1822
  %1824 = getelementptr inbounds i64, ptr %234, i64 -9
  %1825 = load i64, ptr %1824, align 8, !tbaa !33
  %1826 = getelementptr inbounds i64, ptr %234, i64 -7
  %1827 = load i64, ptr %1826, align 8, !tbaa !33
  %1828 = add nsw i64 %1827, %1825
  %1829 = getelementptr inbounds i64, ptr %234, i64 -5
  %1830 = load i64, ptr %1829, align 8, !tbaa !33
  %1831 = add nsw i64 %1828, %1830
  %1832 = getelementptr inbounds i64, ptr %234, i64 -3
  %1833 = load i64, ptr %1832, align 8, !tbaa !33
  %1834 = add nsw i64 %1831, %1833
  %1835 = getelementptr inbounds i64, ptr %234, i64 -1
  %1836 = load i64, ptr %1835, align 8, !tbaa !33
  %1837 = add nsw i64 %1834, %1836
  %1838 = call i64 @llvm.abs.i64(i64 %1823, i1 true)
  %1839 = call i64 @llvm.abs.i64(i64 %1837, i1 true)
  %1840 = icmp ugt i64 %1838, %1839
  br i1 %1840, label %1841, label %1844

1841:                                             ; preds = %1809
  %1842 = sub nsw i64 0, %1837
  %1843 = getelementptr inbounds i64, ptr %234, i64 1
  store i64 %1842, ptr %1843, align 8, !tbaa !33
  br label %1848

1844:                                             ; preds = %1809
  %1845 = sub nsw i64 0, %1823
  %1846 = load i64, ptr %234, align 8, !tbaa !33
  %1847 = getelementptr inbounds i64, ptr %234, i64 1
  store i64 %1846, ptr %1847, align 8, !tbaa !33
  store i64 %1845, ptr %234, align 8, !tbaa !33
  br label %1848

1848:                                             ; preds = %1844, %1841
  %1849 = add nsw i64 %232, 16
  %1850 = getelementptr inbounds i8, ptr %5, i64 %1849
  store i64 2048, ptr %1850, align 8, !tbaa !33
  br label %1714

1851:                                             ; preds = %1689, %1689
  br label %1852

1852:                                             ; preds = %1302, %1274, %1113, %1065, %596, %475, %1260, %1170, %613, %1072, %1257, %1167, %1256, %1227, %1166, %1137, %774, %745, %723, %694, %674, %645, %399, %370, %1204, %1619, %1622, %1516, %1519, %1462, %1647, %1632, %1628, %1605, %1603, %1601, %1586, %1578, %1576, %1569, %1566, %1564, %1533, %1527, %1521, %1514, %1483, %1475, %1466, %325, %468, %341, %252, %318, %287, %1429, %1363, %1399, %1851, %1795, %1791, %1689, %675, %485, %352, %350, %344
  %1853 = phi i32 [ %1792, %1791 ], [ 10, %485 ], [ 10, %1795 ], [ %1690, %1689 ], [ 6, %344 ], [ 1, %1399 ], [ 1, %1363 ], [ 1, %675 ], [ 10, %352 ], [ 5, %350 ], [ 12, %1429 ], [ 12, %287 ], [ 12, %318 ], [ 12, %252 ], [ 1, %341 ], [ 1, %468 ], [ 1, %325 ], [ 0, %1466 ], [ 0, %1475 ], [ 0, %1483 ], [ 0, %1514 ], [ 0, %1521 ], [ 0, %1527 ], [ 0, %1533 ], [ 0, %1564 ], [ 0, %1566 ], [ 0, %1569 ], [ 0, %1576 ], [ 0, %1578 ], [ 0, %1586 ], [ 0, %1601 ], [ 0, %1603 ], [ 0, %1605 ], [ 0, %1628 ], [ 0, %1632 ], [ 0, %1647 ], [ 0, %1462 ], [ 0, %1519 ], [ 0, %1516 ], [ 0, %1622 ], [ 0, %1619 ], [ 0, %1204 ], [ 0, %1851 ], [ 1, %370 ], [ 1, %399 ], [ 1, %645 ], [ 1, %674 ], [ 1, %694 ], [ 1, %723 ], [ 1, %745 ], [ 1, %774 ], [ 1, %1137 ], [ 1, %1166 ], [ 1, %1227 ], [ 1, %1256 ], [ 10, %1167 ], [ 10, %1257 ], [ 10, %1072 ], [ 1, %613 ], [ 10, %1170 ], [ 10, %1260 ], [ 1, %475 ], [ 1, %596 ], [ 1, %1065 ], [ 10, %1113 ], [ 1, %1274 ], [ 1, %1302 ]
  %1854 = phi i16 [ %1464, %1791 ], [ %486, %485 ], [ %1464, %1795 ], [ %1464, %1689 ], [ %248, %344 ], [ %248, %1399 ], [ %248, %1363 ], [ %248, %675 ], [ %248, %352 ], [ %248, %350 ], [ %1431, %1429 ], [ %293, %287 ], [ %312, %318 ], [ %248, %252 ], [ %248, %341 ], [ %248, %468 ], [ %248, %325 ], [ %1464, %1466 ], [ %1464, %1475 ], [ %1464, %1483 ], [ %1464, %1514 ], [ %1464, %1521 ], [ %1464, %1527 ], [ %1464, %1533 ], [ %1464, %1564 ], [ %1464, %1566 ], [ %1464, %1569 ], [ %1464, %1576 ], [ %1464, %1578 ], [ %1464, %1586 ], [ %1464, %1601 ], [ %1464, %1603 ], [ %1464, %1605 ], [ %1464, %1628 ], [ %1464, %1632 ], [ %1464, %1647 ], [ %1464, %1462 ], [ %1464, %1519 ], [ %1464, %1516 ], [ %1464, %1622 ], [ %1464, %1619 ], [ %1205, %1204 ], [ %1464, %1851 ], [ %248, %370 ], [ %248, %399 ], [ %248, %645 ], [ %248, %674 ], [ %248, %694 ], [ %248, %723 ], [ %248, %745 ], [ %248, %774 ], [ %248, %1137 ], [ %248, %1166 ], [ %248, %1227 ], [ %248, %1256 ], [ %248, %1167 ], [ %248, %1257 ], [ %248, %1072 ], [ %603, %613 ], [ %248, %1170 ], [ %248, %1260 ], [ %248, %475 ], [ %248, %596 ], [ %248, %1065 ], [ %248, %1113 ], [ %248, %1274 ], [ %248, %1302 ]
  %1855 = phi ptr [ %1465, %1791 ], [ %487, %485 ], [ %1465, %1795 ], [ %1465, %1689 ], [ %349, %344 ], [ %235, %1399 ], [ %235, %1363 ], [ %235, %675 ], [ %235, %352 ], [ %235, %350 ], [ %1432, %1429 ], [ %262, %287 ], [ %319, %318 ], [ %235, %252 ], [ %235, %341 ], [ %235, %468 ], [ %235, %325 ], [ %1465, %1466 ], [ %1465, %1475 ], [ %1465, %1483 ], [ %1465, %1514 ], [ %1465, %1521 ], [ %1465, %1527 ], [ %1465, %1533 ], [ %1465, %1564 ], [ %1465, %1566 ], [ %1465, %1569 ], [ %1465, %1576 ], [ %1465, %1578 ], [ %1465, %1586 ], [ %1465, %1601 ], [ %1465, %1603 ], [ %1465, %1605 ], [ %1465, %1628 ], [ %1465, %1632 ], [ %1465, %1647 ], [ %1465, %1462 ], [ %1465, %1519 ], [ %1465, %1516 ], [ %1465, %1622 ], [ %1465, %1619 ], [ %1206, %1204 ], [ %1465, %1851 ], [ %235, %370 ], [ %235, %399 ], [ %235, %645 ], [ %235, %674 ], [ %235, %694 ], [ %235, %723 ], [ %235, %745 ], [ %235, %774 ], [ %235, %1137 ], [ %235, %1166 ], [ %235, %1227 ], [ %235, %1256 ], [ %235, %1167 ], [ %235, %1257 ], [ %235, %1072 ], [ %604, %613 ], [ %235, %1170 ], [ %235, %1260 ], [ %235, %475 ], [ %235, %596 ], [ %235, %1065 ], [ %235, %1113 ], [ %235, %1274 ], [ %235, %1302 ]
  %1856 = phi ptr [ %231, %1791 ], [ %231, %485 ], [ %231, %1795 ], [ %231, %1689 ], [ %347, %344 ], [ %231, %1399 ], [ %231, %1363 ], [ %231, %675 ], [ %231, %352 ], [ %351, %350 ], [ %231, %1429 ], [ %231, %287 ], [ %231, %318 ], [ %231, %252 ], [ %231, %341 ], [ %231, %468 ], [ %231, %325 ], [ %231, %1466 ], [ %231, %1475 ], [ %231, %1483 ], [ %231, %1514 ], [ %231, %1521 ], [ %231, %1527 ], [ %231, %1533 ], [ %231, %1564 ], [ %231, %1566 ], [ %231, %1569 ], [ %231, %1576 ], [ %231, %1578 ], [ %231, %1586 ], [ %231, %1601 ], [ %231, %1603 ], [ %231, %1605 ], [ %231, %1628 ], [ %231, %1632 ], [ %231, %1647 ], [ %231, %1462 ], [ %231, %1519 ], [ %231, %1516 ], [ %231, %1622 ], [ %231, %1619 ], [ %231, %1204 ], [ %231, %1851 ], [ %231, %370 ], [ %231, %399 ], [ %231, %645 ], [ %231, %674 ], [ %231, %694 ], [ %231, %723 ], [ %231, %745 ], [ %231, %774 ], [ %231, %1137 ], [ %231, %1166 ], [ %231, %1227 ], [ %231, %1256 ], [ %231, %1167 ], [ %231, %1257 ], [ %231, %1072 ], [ %231, %613 ], [ %231, %1170 ], [ %231, %1260 ], [ %231, %475 ], [ %231, %596 ], [ %231, %1065 ], [ %231, %1113 ], [ %231, %1274 ], [ %231, %1302 ]
  %1857 = phi i64 [ %1793, %1791 ], [ -8, %485 ], [ -8, %1795 ], [ %1658, %1689 ], [ %345, %344 ], [ %232, %1399 ], [ %232, %1363 ], [ %232, %675 ], [ -8, %352 ], [ %232, %350 ], [ %1439, %1429 ], [ %271, %287 ], [ %323, %318 ], [ %257, %252 ], [ %232, %341 ], [ %232, %468 ], [ %232, %325 ], [ %1467, %1466 ], [ %1476, %1475 ], [ %232, %1483 ], [ %1515, %1514 ], [ %1523, %1521 ], [ %1529, %1527 ], [ %1534, %1533 ], [ %1565, %1564 ], [ %232, %1566 ], [ %1570, %1569 ], [ %1577, %1576 ], [ %1585, %1578 ], [ %232, %1586 ], [ %1602, %1601 ], [ %1604, %1603 ], [ %1606, %1605 ], [ %1630, %1628 ], [ %232, %1632 ], [ %232, %1647 ], [ %232, %1462 ], [ %232, %1519 ], [ %232, %1516 ], [ %232, %1622 ], [ %232, %1619 ], [ %232, %1204 ], [ %1658, %1851 ], [ %232, %370 ], [ %232, %399 ], [ %232, %645 ], [ %232, %674 ], [ %232, %694 ], [ %232, %723 ], [ %232, %745 ], [ %232, %774 ], [ %232, %1137 ], [ %232, %1166 ], [ %232, %1227 ], [ %232, %1256 ], [ -8, %1167 ], [ -8, %1257 ], [ -8, %1072 ], [ %605, %613 ], [ -8, %1170 ], [ -8, %1260 ], [ %232, %475 ], [ %232, %596 ], [ %232, %1065 ], [ -8, %1113 ], [ %232, %1274 ], [ %232, %1302 ]
  %1858 = phi i32 [ %1794, %1791 ], [ %488, %485 ], [ %1794, %1795 ], [ %1691, %1689 ], [ %233, %344 ], [ %1401, %1399 ], [ %1365, %1363 ], [ %676, %675 ], [ %233, %352 ], [ %233, %350 ], [ %233, %1429 ], [ %233, %287 ], [ %233, %318 ], [ %233, %252 ], [ %342, %341 ], [ %469, %468 ], [ -10, %325 ], [ %233, %1466 ], [ %233, %1475 ], [ %233, %1483 ], [ %233, %1514 ], [ %233, %1521 ], [ %233, %1527 ], [ %233, %1533 ], [ %233, %1564 ], [ %233, %1566 ], [ %233, %1569 ], [ %233, %1576 ], [ %233, %1578 ], [ %233, %1586 ], [ %233, %1601 ], [ %233, %1603 ], [ %233, %1605 ], [ %233, %1628 ], [ %233, %1632 ], [ %233, %1647 ], [ %233, %1462 ], [ %233, %1519 ], [ %233, %1516 ], [ %233, %1622 ], [ %233, %1619 ], [ %233, %1204 ], [ %1691, %1851 ], [ 1, %370 ], [ 1, %399 ], [ 1, %645 ], [ 1, %674 ], [ 1, %694 ], [ 1, %723 ], [ 1, %745 ], [ 1, %774 ], [ 1, %1137 ], [ 1, %1166 ], [ 1, %1227 ], [ 1, %1256 ], [ %233, %1167 ], [ %233, %1257 ], [ %233, %1072 ], [ %626, %613 ], [ %233, %1170 ], [ %233, %1260 ], [ %483, %475 ], [ %600, %596 ], [ %1071, %1065 ], [ %233, %1113 ], [ %1287, %1274 ], [ %1310, %1302 ]
  switch i32 %1853, label %1860 [
    i32 0, label %1859
    i32 12, label %1859
    i32 6, label %50
    i32 5, label %74
    i32 10, label %1859
  ]

1859:                                             ; preds = %1852, %1852, %1852
  br label %228, !llvm.loop !49

1860:                                             ; preds = %1852
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #8
  ret i32 %1858
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @gs_type1_finish_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @type1_apply_path_hints(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gx_path_add_point(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @accum_xy_proc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @gx_path_add_line_notes(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gs_op1_rrcurveto(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @gs_type1_endchar(ptr noundef) local_unnamed_addr #3

declare i32 @gx_path_add_curve_notes(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @type1_do_hstem(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @type1_do_vstem(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

declare i32 @gs_distance_transform(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

declare i32 @gs_type1_sbw(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!26 = !{!10, !11, i64 1644}
!27 = !{!10, !14, i64 1728}
!28 = !{!29, !14, i64 120}
!29 = !{!"gs_op1_state_s", !6, i64 0, !6, i64 8, !12, i64 16, !20, i64 104, !20, i64 120}
!30 = !{!10, !14, i64 1736}
!31 = !{!29, !14, i64 128}
!32 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 8, !33, i64 24, i64 8, !33, i64 32, i64 8, !33, i64 40, i64 8, !33, i64 48, i64 8, !33, i64 56, i64 8, !33, i64 64, i64 4, !34, i64 68, i64 4, !34, i64 72, i64 4, !34, i64 80, i64 8, !33}
!33 = !{!14, !14, i64 0}
!34 = !{!11, !11, i64 0}
!35 = !{!10, !6, i64 16}
!36 = !{!29, !6, i64 0}
!37 = !{!29, !6, i64 8}
!38 = !{!10, !11, i64 1280}
!39 = !{i64 0, i64 8, !5, i64 8, i64 4, !34}
!40 = !{!41, !6, i64 0}
!41 = !{!"gs_const_string_s", !6, i64 0, !11, i64 8}
!42 = !{!7, !7, i64 0}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!46, !6, i64 0}
!46 = !{!"", !6, i64 0, !47, i64 8, !41, i64 16}
!47 = !{!"short", !7, i64 0}
!48 = !{!46, !47, i64 8}
!49 = distinct !{!49, !44}
!50 = distinct !{!50, !44}
!51 = !{!23, !11, i64 52}
!52 = !{!23, !6, i64 8}
!53 = !{!46, !6, i64 16}
!54 = !{!55, !14, i64 416}
!55 = !{!"gs_font_type1_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !56, i64 48, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !15, i64 100, !57, i64 104, !59, i64 176, !59, i64 228, !60, i64 280, !63, i64 312, !11, i64 328, !11, i64 332, !23, i64 336}
!56 = !{!"gs_matrix_s", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20}
!57 = !{!"gs_font_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !58, i64 32, !6, i64 48, !6, i64 56, !6, i64 64}
!58 = !{!"gx_xfont_callbacks_s", !6, i64 0, !6, i64 8}
!59 = !{!"gs_font_name_s", !7, i64 0, !11, i64 48}
!60 = !{!"gs_rect_s", !61, i64 0, !61, i64 16}
!61 = !{!"gs_point_s", !62, i64 0, !62, i64 8}
!62 = !{!"double", !7, i64 0}
!63 = !{!"gs_uid_s", !14, i64 0, !6, i64 8}
!64 = !{!55, !14, i64 408}
!65 = !{!29, !14, i64 72}
!66 = !{!29, !14, i64 64}
!67 = !{!29, !14, i64 96}
!68 = !{!29, !11, i64 84}
!69 = !{!29, !11, i64 80}
!70 = !{!29, !14, i64 56}
!71 = !{!29, !14, i64 48}
!72 = !{!10, !6, i64 1936}
!73 = !{!74, !7, i64 121}
!74 = !{!"gx_path_s", !6, i64 0, !75, i64 8, !6, i64 40, !6, i64 48, !6, i64 56, !11, i64 64, !11, i64 68, !20, i64 72, !61, i64 88, !61, i64 104, !7, i64 120, !7, i64 121, !7, i64 122, !7, i64 123}
!75 = !{!"gs_fixed_rect_s", !20, i64 0, !20, i64 16}
!76 = distinct !{!76, !44}
!77 = distinct !{!77, !44}
!78 = !{!29, !14, i64 24}
!79 = !{!29, !14, i64 16}
!80 = !{!29, !14, i64 40}
!81 = !{!29, !14, i64 32}
!82 = distinct !{!82, !44}
!83 = distinct !{!83, !44}
!84 = !{!74, !14, i64 72}
!85 = !{!74, !14, i64 80}
!86 = !{!55, !11, i64 780}
!87 = !{!15, !15, i64 0}
!88 = distinct !{!88, !44}
!89 = distinct !{!89, !44}
!90 = !{!10, !11, i64 1656}
!91 = !{!10, !6, i64 8}
!92 = distinct !{!92, !44}
!93 = !{!10, !11, i64 5056}
!94 = !{!10, !11, i64 1968}
!95 = distinct !{!95, !44}
!96 = distinct !{!96, !44}
!97 = distinct !{!97, !44}
!98 = distinct !{!98, !44}
!99 = distinct !{!99, !44}
!100 = distinct !{!100, !44}
!101 = !{!23, !11, i64 56}
!102 = distinct !{!102, !44}
!103 = distinct !{!103, !44}
!104 = distinct !{!104, !44}
!105 = !{!61, !62, i64 0}
!106 = !{!61, !62, i64 8}
