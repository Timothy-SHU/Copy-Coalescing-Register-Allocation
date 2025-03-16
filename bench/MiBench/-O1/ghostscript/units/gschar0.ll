; ModuleID = 'gschar0.c'
source_filename = "gschar0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_show_enum_s = type { ptr, i32, %struct.gs_const_string_s, float, float, i64, float, float, i32, i32, i32, i32, ptr, i32, i32, %struct.gs_int_rect_s, %struct.gs_int_rect_s, i32, i32, ptr, %struct.gs_log2_scale_point_s, ptr, ptr, ptr, i32, i64, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, ptr, %struct.gs_point_s, i32, %struct.gs_log2_scale_point_s, %struct.gx_font_stack_s, ptr }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_point_s = type { double, double }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { ptr, i32 }
%struct.gs_font_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_font_type0_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_type0_data_s }
%struct.gs_type0_data_s = type { i32, i8, i8, i8, %struct.gs_const_string_s, i32, i32, ptr, i32, ptr, i32, ptr }

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gs_type0_init_fstack(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33
  store i32 0, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !21
  %5 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.gs_font_s, ptr %1, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %2, %16
  %10 = phi i64 [ %17, %16 ], [ 0, %2 ]
  %11 = phi ptr [ %25, %16 ], [ %1, %2 ]
  %12 = getelementptr inbounds %struct.gs_font_type0_s, ptr %11, i64 0, i32 18
  %13 = load i32, ptr %12, align 8, !tbaa !30
  switch i32 %13, label %31 [
    i32 3, label %14
    i32 7, label %14
    i32 8, label %14
  ]

14:                                               ; preds = %9, %9, %9
  %15 = icmp eq i64 %10, 5
  br i1 %15, label %36, label %16

16:                                               ; preds = %14
  %17 = add nuw nsw i64 %10, 1
  %18 = getelementptr inbounds %struct.gs_font_type0_s, ptr %11, i64 0, i32 18, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !33
  %20 = getelementptr inbounds %struct.gs_font_type0_s, ptr %11, i64 0, i32 18, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = load i32, ptr %21, align 4, !tbaa !35
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %19, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !36
  %26 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %17
  store ptr %25, ptr %26, align 8, !tbaa !21
  %27 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %17, i32 1
  store i32 0, ptr %27, align 8, !tbaa !23
  %28 = getelementptr inbounds %struct.gs_font_s, ptr %25, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !24
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %9, label %31, !llvm.loop !37

31:                                               ; preds = %16, %9
  %32 = phi i64 [ %17, %16 ], [ %10, %9 ]
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %31, %2
  %35 = phi i32 [ 0, %2 ], [ %33, %31 ]
  store i32 %35, ptr %3, align 8, !tbaa !5
  br label %36

36:                                               ; preds = %14, %34
  %37 = phi i32 [ 0, %34 ], [ -10, %14 ]
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_type0_next_glyph(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.gs_const_string_s, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 24
  %11 = load i32, ptr %10, align 8, !tbaa !40
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %9, i64 %12
  %14 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 2, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !41
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %9, i64 %16
  %18 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33
  %19 = load i32, ptr %18, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  store i64 2147483647, ptr %5, align 8, !tbaa !42
  %20 = icmp eq i32 %11, 0
  br i1 %20, label %21, label %183

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !21
  %24 = ptrtoint ptr %17 to i64
  %25 = ptrtoint ptr %17 to i64
  br label %26

26:                                               ; preds = %123, %21
  %27 = phi i32 [ 0, %21 ], [ %124, %123 ]
  %28 = phi i32 [ 0, %21 ], [ %125, %123 ]
  %29 = phi ptr [ %23, %21 ], [ %127, %123 ]
  %30 = phi ptr [ %13, %21 ], [ %128, %123 ]
  %31 = phi i32 [ undef, %21 ], [ %129, %123 ]
  %32 = getelementptr inbounds %struct.gs_font_s, ptr %29, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !24
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %130

35:                                               ; preds = %26
  %36 = icmp eq ptr %30, %17
  br i1 %36, label %123, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.gs_font_type0_s, ptr %29, i64 0, i32 18
  %39 = load i32, ptr %38, align 8, !tbaa !43
  %40 = load i8, ptr %30, align 1, !tbaa !44
  switch i32 %39, label %123 [
    i32 3, label %41
    i32 7, label %88
    i32 8, label %112
  ]

41:                                               ; preds = %37
  %42 = load ptr, ptr %22, align 8, !tbaa !21
  %43 = getelementptr inbounds %struct.gs_font_type0_s, ptr %42, i64 0, i32 18, i32 1
  %44 = load i8, ptr %43, align 4, !tbaa !45
  %45 = icmp eq i8 %40, %44
  br i1 %45, label %46, label %123

46:                                               ; preds = %41
  %47 = ptrtoint ptr %30 to i64
  %48 = sub i64 %25, %47
  %49 = icmp slt i64 %48, 2
  br i1 %49, label %123, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, ptr %30, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !44
  %53 = zext i8 %52 to i32
  store i32 %53, ptr %4, align 4, !tbaa !35
  %54 = getelementptr inbounds i8, ptr %30, i64 2
  br label %55

55:                                               ; preds = %107, %97, %120, %50
  %56 = phi i32 [ %121, %120 ], [ %111, %107 ], [ %100, %97 ], [ %53, %50 ]
  %57 = phi ptr [ %122, %120 ], [ %108, %107 ], [ %101, %97 ], [ %54, %50 ]
  %58 = getelementptr inbounds %struct.gs_font_type0_s, ptr %29, i64 0, i32 18, i32 8
  %59 = load i32, ptr %58, align 8, !tbaa !46
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %123

61:                                               ; preds = %55
  %62 = icmp eq i32 %27, 5
  br i1 %62, label %123, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.gs_font_type0_s, ptr %29, i64 0, i32 18, i32 9
  %65 = load ptr, ptr %64, align 8, !tbaa !47
  %66 = getelementptr inbounds %struct.gs_font_type0_s, ptr %29, i64 0, i32 18, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !48
  %68 = zext nneg i32 %56 to i64
  %69 = getelementptr inbounds i32, ptr %67, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !35
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %65, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !36
  %74 = add nsw i32 %27, 1
  %75 = icmp slt i32 %27, %19
  br i1 %75, label %76, label %81

76:                                               ; preds = %63
  %77 = sext i32 %74 to i64
  %78 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !21
  %80 = icmp eq ptr %73, %79
  br i1 %80, label %84, label %81

81:                                               ; preds = %76, %63
  %82 = sext i32 %74 to i64
  %83 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %82
  store ptr %73, ptr %83, align 8, !tbaa !21
  br label %84

84:                                               ; preds = %81, %76
  %85 = phi i32 [ 1, %81 ], [ %28, %76 ]
  %86 = sext i32 %74 to i64
  %87 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %86, i32 1
  store i32 %56, ptr %87, align 8, !tbaa !23
  br label %123, !llvm.loop !49

88:                                               ; preds = %37
  %89 = load ptr, ptr %22, align 8, !tbaa !21
  %90 = getelementptr inbounds %struct.gs_font_type0_s, ptr %89, i64 0, i32 18, i32 1
  %91 = load i8, ptr %90, align 4, !tbaa !45
  %92 = icmp eq i8 %40, %91
  br i1 %92, label %93, label %123

93:                                               ; preds = %88
  %94 = ptrtoint ptr %30 to i64
  %95 = sub i64 %24, %94
  %96 = icmp slt i64 %95, 2
  br i1 %96, label %123, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds i8, ptr %30, i64 1
  %99 = load i8, ptr %98, align 1, !tbaa !44
  %100 = zext i8 %99 to i32
  store i32 %100, ptr %4, align 4, !tbaa !35
  %101 = getelementptr inbounds i8, ptr %30, i64 2
  %102 = icmp eq i8 %99, %40
  br i1 %102, label %103, label %55

103:                                              ; preds = %97
  %104 = ptrtoint ptr %101 to i64
  %105 = sub i64 %24, %104
  %106 = icmp slt i64 %105, 1
  br i1 %106, label %123, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds i8, ptr %30, i64 3
  %109 = load i8, ptr %101, align 1, !tbaa !44
  %110 = zext i8 %109 to i32
  %111 = or disjoint i32 %110, 256
  store i32 %111, ptr %4, align 4, !tbaa !35
  br label %55

112:                                              ; preds = %37
  %113 = getelementptr inbounds %struct.gs_font_type0_s, ptr %29, i64 0, i32 18, i32 2
  %114 = load i8, ptr %113, align 1, !tbaa !50
  %115 = icmp eq i8 %40, %114
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.gs_font_type0_s, ptr %29, i64 0, i32 18, i32 3
  %118 = load i8, ptr %117, align 2, !tbaa !51
  %119 = icmp eq i8 %40, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116, %112
  %121 = phi i32 [ 0, %112 ], [ 1, %116 ]
  store i32 %121, ptr %4, align 4, !tbaa !35
  %122 = getelementptr inbounds i8, ptr %30, i64 1
  br label %55

123:                                              ; preds = %41, %88, %116, %37, %103, %93, %61, %55, %46, %35, %84
  %124 = phi i32 [ %74, %84 ], [ %27, %35 ], [ %27, %46 ], [ %27, %55 ], [ 5, %61 ], [ %27, %93 ], [ %27, %103 ], [ %27, %37 ], [ %27, %116 ], [ %27, %88 ], [ %27, %41 ]
  %125 = phi i32 [ %85, %84 ], [ %28, %35 ], [ %28, %46 ], [ %28, %55 ], [ %28, %61 ], [ %28, %93 ], [ %28, %103 ], [ %28, %37 ], [ %28, %116 ], [ %28, %88 ], [ %28, %41 ]
  %126 = phi i32 [ 3, %84 ], [ 1, %35 ], [ 1, %46 ], [ 1, %55 ], [ 1, %61 ], [ 1, %93 ], [ 1, %103 ], [ 2, %37 ], [ 2, %116 ], [ 2, %88 ], [ 2, %41 ]
  %127 = phi ptr [ %73, %84 ], [ %29, %35 ], [ %29, %46 ], [ %29, %55 ], [ %29, %61 ], [ %29, %93 ], [ %29, %103 ], [ %29, %37 ], [ %29, %116 ], [ %29, %88 ], [ %29, %41 ]
  %128 = phi ptr [ %57, %84 ], [ %30, %35 ], [ %30, %46 ], [ %57, %55 ], [ %57, %61 ], [ %30, %93 ], [ %101, %103 ], [ %30, %37 ], [ %30, %116 ], [ %30, %88 ], [ %30, %41 ]
  %129 = phi i32 [ %31, %84 ], [ 2, %35 ], [ -15, %46 ], [ -15, %55 ], [ -10, %61 ], [ -15, %93 ], [ -15, %103 ], [ %31, %37 ], [ %31, %116 ], [ %31, %88 ], [ %31, %41 ]
  switch i32 %126, label %177 [
    i32 3, label %26
    i32 2, label %130
  ]

130:                                              ; preds = %123, %26
  %131 = phi i32 [ %124, %123 ], [ %27, %26 ]
  %132 = phi i32 [ %125, %123 ], [ %28, %26 ]
  %133 = phi ptr [ %128, %123 ], [ %30, %26 ]
  %134 = phi i32 [ %129, %123 ], [ %31, %26 ]
  %135 = icmp eq i32 %131, 0
  br i1 %135, label %177, label %136

136:                                              ; preds = %130
  store i32 %131, ptr %18, align 8, !tbaa !5
  %137 = sext i32 %131 to i64
  %138 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !21
  %140 = getelementptr inbounds %struct.gs_font_s, ptr %139, i64 0, i32 7
  %141 = load i32, ptr %140, align 8, !tbaa !24
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %168

143:                                              ; preds = %136, %150
  %144 = phi i64 [ %151, %150 ], [ %137, %136 ]
  %145 = phi ptr [ %159, %150 ], [ %139, %136 ]
  %146 = getelementptr inbounds %struct.gs_font_type0_s, ptr %145, i64 0, i32 18
  %147 = load i32, ptr %146, align 8, !tbaa !30
  switch i32 %147, label %165 [
    i32 3, label %148
    i32 7, label %148
    i32 8, label %148
  ]

148:                                              ; preds = %143, %143, %143
  %149 = icmp eq i64 %144, 5
  br i1 %149, label %170, label %150

150:                                              ; preds = %148
  %151 = add nsw i64 %144, 1
  %152 = getelementptr inbounds %struct.gs_font_type0_s, ptr %145, i64 0, i32 18, i32 9
  %153 = load ptr, ptr %152, align 8, !tbaa !33
  %154 = getelementptr inbounds %struct.gs_font_type0_s, ptr %145, i64 0, i32 18, i32 7
  %155 = load ptr, ptr %154, align 8, !tbaa !34
  %156 = load i32, ptr %155, align 4, !tbaa !35
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds ptr, ptr %153, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !36
  %160 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %151
  store ptr %159, ptr %160, align 8, !tbaa !21
  %161 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %151, i32 1
  store i32 0, ptr %161, align 8, !tbaa !23
  %162 = getelementptr inbounds %struct.gs_font_s, ptr %159, i64 0, i32 7
  %163 = load i32, ptr %162, align 8, !tbaa !24
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %143, label %165, !llvm.loop !37

165:                                              ; preds = %150, %143
  %166 = phi i64 [ %151, %150 ], [ %144, %143 ]
  %167 = trunc i64 %166 to i32
  br label %168

168:                                              ; preds = %165, %136
  %169 = phi i32 [ %131, %136 ], [ %167, %165 ]
  store i32 %169, ptr %18, align 8, !tbaa !5
  br label %170

170:                                              ; preds = %148, %168
  %171 = phi i1 [ true, %168 ], [ false, %148 ]
  %172 = phi i32 [ 0, %168 ], [ -10, %148 ]
  br i1 %171, label %173, label %177

173:                                              ; preds = %170
  %174 = load i32, ptr %18, align 8, !tbaa !5
  %175 = icmp sgt i32 %174, %131
  %176 = select i1 %175, i32 1, i32 %132
  br label %177

177:                                              ; preds = %123, %173, %170, %130
  %178 = phi i32 [ %132, %130 ], [ %176, %173 ], [ %132, %170 ], [ %125, %123 ]
  %179 = phi i1 [ true, %130 ], [ %171, %173 ], [ %171, %170 ], [ false, %123 ]
  %180 = phi i32 [ %19, %130 ], [ %174, %173 ], [ %19, %170 ], [ %19, %123 ]
  %181 = phi ptr [ %133, %130 ], [ %133, %173 ], [ %133, %170 ], [ %128, %123 ]
  %182 = phi i32 [ %134, %130 ], [ %134, %173 ], [ %172, %170 ], [ %129, %123 ]
  br i1 %179, label %183, label %627

183:                                              ; preds = %177, %3
  %184 = phi i32 [ %178, %177 ], [ 0, %3 ]
  %185 = phi i32 [ %180, %177 ], [ %19, %3 ]
  %186 = phi ptr [ %181, %177 ], [ %13, %3 ]
  %187 = phi i32 [ %182, %177 ], [ undef, %3 ]
  %188 = icmp eq ptr %186, %17
  br i1 %188, label %627, label %189

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1
  %191 = ptrtoint ptr %17 to i64
  %192 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1
  %193 = ptrtoint ptr %17 to i64
  %194 = sext i32 %185 to i64
  br label %198

195:                                              ; preds = %230
  %196 = trunc i64 %214 to i32
  %197 = icmp eq ptr %231, %17
  br i1 %197, label %627, label %198

198:                                              ; preds = %189, %195
  %199 = phi ptr [ %186, %189 ], [ %231, %195 ]
  %200 = phi i32 [ %185, %189 ], [ %196, %195 ]
  %201 = phi i32 [ %184, %189 ], [ %204, %195 ]
  %202 = load i8, ptr %199, align 1, !tbaa !44
  br label %203

203:                                              ; preds = %286, %198
  %204 = phi i32 [ %277, %286 ], [ %201, %198 ]
  %205 = phi i8 [ %244, %286 ], [ %202, %198 ]
  %206 = phi i32 [ %287, %286 ], [ %200, %198 ]
  %207 = phi ptr [ %240, %286 ], [ %199, %198 ]
  %208 = zext i32 %206 to i64
  br label %209

209:                                              ; preds = %203, %213
  %210 = phi i64 [ %208, %203 ], [ %215, %213 ]
  %211 = trunc i64 %210 to i32
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %321

213:                                              ; preds = %209
  %214 = add nsw i64 %210, -1
  %215 = add nsw i64 %210, -1
  %216 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %214
  %217 = load ptr, ptr %216, align 8, !tbaa !21
  %218 = getelementptr inbounds %struct.gs_font_type0_s, ptr %217, i64 0, i32 18
  %219 = load i32, ptr %218, align 8, !tbaa !43
  switch i32 %219, label %209 [
    i32 3, label %220
    i32 7, label %288
    i32 8, label %311
  ], !llvm.loop !52

220:                                              ; preds = %213
  %221 = trunc i64 %210 to i32
  %222 = load ptr, ptr %192, align 8, !tbaa !21
  %223 = getelementptr inbounds %struct.gs_font_type0_s, ptr %222, i64 0, i32 18, i32 1
  %224 = load i8, ptr %223, align 4, !tbaa !45
  %225 = icmp eq i8 %205, %224
  br i1 %225, label %226, label %330

226:                                              ; preds = %220
  %227 = ptrtoint ptr %207 to i64
  %228 = sub i64 %193, %227
  %229 = icmp slt i64 %228, 2
  br i1 %229, label %627, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds i8, ptr %207, i64 1
  %232 = load i8, ptr %231, align 1, !tbaa !44
  %233 = zext i8 %232 to i32
  store i32 %233, ptr %4, align 4, !tbaa !35
  %234 = icmp eq i8 %205, %232
  %235 = icmp ne i32 %221, 1
  %236 = and i1 %235, %234
  br i1 %236, label %195, label %237

237:                                              ; preds = %320, %315, %306, %297, %230
  %238 = phi i32 [ 0, %315 ], [ 1, %320 ], [ %310, %306 ], [ %300, %297 ], [ %233, %230 ]
  %239 = phi ptr [ %207, %315 ], [ %207, %320 ], [ %307, %306 ], [ %298, %297 ], [ %231, %230 ]
  %240 = getelementptr inbounds i8, ptr %239, i64 1
  %241 = icmp eq ptr %240, %17
  br i1 %241, label %627, label %242

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.gs_font_type0_s, ptr %217, i64 0, i32 18
  %244 = load i8, ptr %240, align 1, !tbaa !44
  %245 = shl i64 %214, 32
  %246 = ashr exact i64 %245, 32
  br label %247

247:                                              ; preds = %282, %242
  %248 = phi i64 [ %268, %282 ], [ %246, %242 ]
  %249 = phi i32 [ 0, %282 ], [ %238, %242 ]
  %250 = phi i32 [ %277, %282 ], [ %204, %242 ]
  %251 = phi ptr [ %283, %282 ], [ %243, %242 ]
  %252 = getelementptr inbounds %struct.gs_type0_data_s, ptr %251, i64 0, i32 8
  %253 = load i32, ptr %252, align 8, !tbaa !46
  %254 = icmp ult i32 %249, %253
  br i1 %254, label %255, label %627

255:                                              ; preds = %247
  %256 = icmp eq i64 %248, 5
  br i1 %256, label %627, label %257

257:                                              ; preds = %255
  %258 = getelementptr inbounds %struct.gs_type0_data_s, ptr %251, i64 0, i32 9
  %259 = load ptr, ptr %258, align 8, !tbaa !47
  %260 = getelementptr inbounds %struct.gs_type0_data_s, ptr %251, i64 0, i32 7
  %261 = load ptr, ptr %260, align 8, !tbaa !48
  %262 = zext nneg i32 %249 to i64
  %263 = getelementptr inbounds i32, ptr %261, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !35
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds ptr, ptr %259, i64 %265
  %267 = load ptr, ptr %266, align 8, !tbaa !36
  %268 = add nsw i64 %248, 1
  %269 = icmp slt i64 %248, %194
  br i1 %269, label %270, label %274

270:                                              ; preds = %257
  %271 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %268
  %272 = load ptr, ptr %271, align 8, !tbaa !21
  %273 = icmp eq ptr %267, %272
  br i1 %273, label %276, label %274

274:                                              ; preds = %270, %257
  %275 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %268
  store ptr %267, ptr %275, align 8, !tbaa !21
  br label %276

276:                                              ; preds = %274, %270
  %277 = phi i32 [ 1, %274 ], [ %250, %270 ]
  %278 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %268, i32 1
  store i32 %249, ptr %278, align 8, !tbaa !23
  %279 = getelementptr inbounds %struct.gs_font_s, ptr %267, i64 0, i32 7
  %280 = load i32, ptr %279, align 8, !tbaa !24
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %276
  %283 = getelementptr inbounds %struct.gs_font_type0_s, ptr %267, i64 0, i32 18
  store i32 0, ptr %4, align 4, !tbaa !35
  %284 = load i32, ptr %283, align 8, !tbaa !43
  %285 = icmp eq i32 %284, 3
  br i1 %285, label %247, label %286, !llvm.loop !53

286:                                              ; preds = %276, %282
  %287 = trunc i64 %268 to i32
  br label %203, !llvm.loop !52

288:                                              ; preds = %213
  %289 = load ptr, ptr %190, align 8, !tbaa !21
  %290 = getelementptr inbounds %struct.gs_font_type0_s, ptr %289, i64 0, i32 18, i32 1
  %291 = load i8, ptr %290, align 4, !tbaa !45
  %292 = icmp eq i8 %205, %291
  br i1 %292, label %293, label %327

293:                                              ; preds = %288
  %294 = ptrtoint ptr %207 to i64
  %295 = sub i64 %191, %294
  %296 = icmp slt i64 %295, 2
  br i1 %296, label %627, label %297

297:                                              ; preds = %293
  %298 = getelementptr inbounds i8, ptr %207, i64 1
  %299 = load i8, ptr %298, align 1, !tbaa !44
  %300 = zext i8 %299 to i32
  store i32 %300, ptr %4, align 4, !tbaa !35
  %301 = icmp eq i8 %205, %299
  br i1 %301, label %302, label %237

302:                                              ; preds = %297
  %303 = ptrtoint ptr %298 to i64
  %304 = sub i64 %191, %303
  %305 = icmp slt i64 %304, 2
  br i1 %305, label %627, label %306

306:                                              ; preds = %302
  %307 = getelementptr inbounds i8, ptr %207, i64 2
  %308 = load i8, ptr %307, align 1, !tbaa !44
  %309 = zext i8 %308 to i32
  %310 = or disjoint i32 %309, 256
  store i32 %310, ptr %4, align 4, !tbaa !35
  br label %237

311:                                              ; preds = %213
  %312 = getelementptr inbounds %struct.gs_font_type0_s, ptr %217, i64 0, i32 18, i32 2
  %313 = load i8, ptr %312, align 1, !tbaa !50
  %314 = icmp eq i8 %205, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %311
  store i32 0, ptr %4, align 4, !tbaa !35
  br label %237

316:                                              ; preds = %311
  %317 = getelementptr inbounds %struct.gs_font_type0_s, ptr %217, i64 0, i32 18, i32 3
  %318 = load i8, ptr %317, align 2, !tbaa !51
  %319 = icmp eq i8 %205, %318
  br i1 %319, label %320, label %324

320:                                              ; preds = %316
  store i32 1, ptr %4, align 4, !tbaa !35
  br label %237

321:                                              ; preds = %209
  %322 = zext i8 %205 to i64
  %323 = trunc i64 %210 to i32
  br label %332

324:                                              ; preds = %316
  %325 = zext i8 %205 to i64
  %326 = trunc i64 %210 to i32
  br label %332

327:                                              ; preds = %288
  %328 = zext i8 %205 to i64
  %329 = trunc i64 %210 to i32
  br label %332

330:                                              ; preds = %220
  %331 = zext i8 %205 to i64
  br label %332

332:                                              ; preds = %324, %327, %330, %321
  %333 = phi i64 [ %322, %321 ], [ %325, %324 ], [ %328, %327 ], [ %331, %330 ]
  %334 = phi i32 [ %323, %321 ], [ %326, %324 ], [ %329, %327 ], [ %221, %330 ]
  %335 = getelementptr inbounds i8, ptr %207, i64 1
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %336
  %338 = load ptr, ptr %337, align 8, !tbaa !21
  %339 = getelementptr inbounds %struct.gs_font_s, ptr %338, i64 0, i32 7
  %340 = load i32, ptr %339, align 8, !tbaa !24
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %613

342:                                              ; preds = %332
  %343 = ptrtoint ptr %9 to i64
  %344 = xor i64 %343, -1
  %345 = getelementptr inbounds %struct.gs_const_string_s, ptr %6, i64 0, i32 1
  %346 = ptrtoint ptr %17 to i64
  %347 = ptrtoint ptr %17 to i64
  %348 = ptrtoint ptr %17 to i64
  %349 = ptrtoint ptr %17 to i64
  %350 = ptrtoint ptr %17 to i64
  %351 = sext i32 %334 to i64
  %352 = sext i32 %185 to i64
  br label %353

353:                                              ; preds = %342, %603
  %354 = phi i64 [ %351, %342 ], [ %595, %603 ]
  %355 = phi ptr [ %338, %342 ], [ %607, %603 ]
  %356 = phi i32 [ %187, %342 ], [ %577, %603 ]
  %357 = phi ptr [ %335, %342 ], [ %576, %603 ]
  %358 = phi i64 [ %333, %342 ], [ %575, %603 ]
  %359 = phi i32 [ %204, %342 ], [ %604, %603 ]
  %360 = getelementptr inbounds %struct.gs_font_type0_s, ptr %355, i64 0, i32 18
  %361 = load i32, ptr %360, align 8, !tbaa !43
  switch i32 %361, label %627 [
    i32 2, label %362
    i32 4, label %371
    i32 5, label %375
    i32 6, label %390
    i32 9, label %552
  ]

362:                                              ; preds = %353
  %363 = ptrtoint ptr %357 to i64
  %364 = sub i64 %350, %363
  %365 = icmp slt i64 %364, 1
  br i1 %365, label %627, label %366

366:                                              ; preds = %362
  %367 = trunc i64 %358 to i32
  store i32 %367, ptr %4, align 4, !tbaa !35
  %368 = getelementptr inbounds i8, ptr %357, i64 1
  %369 = load i8, ptr %357, align 1, !tbaa !44
  %370 = zext i8 %369 to i64
  br label %574

371:                                              ; preds = %353
  %372 = lshr i64 %358, 7
  %373 = trunc i64 %372 to i32
  store i32 %373, ptr %4, align 4, !tbaa !35
  %374 = and i64 %358, 127
  br label %574

375:                                              ; preds = %353
  %376 = ptrtoint ptr %357 to i64
  %377 = sub i64 %349, %376
  %378 = icmp slt i64 %377, 1
  br i1 %378, label %627, label %379

379:                                              ; preds = %375
  %380 = trunc i64 %358 to i32
  %381 = shl i32 %380, 1
  %382 = load i8, ptr %357, align 1, !tbaa !44
  %383 = lshr i8 %382, 7
  %384 = zext nneg i8 %383 to i32
  %385 = or disjoint i32 %381, %384
  store i32 %385, ptr %4, align 4, !tbaa !35
  %386 = load i8, ptr %357, align 1, !tbaa !44
  %387 = and i8 %386, 127
  %388 = zext nneg i8 %387 to i64
  %389 = getelementptr inbounds i8, ptr %357, i64 1
  br label %574

390:                                              ; preds = %353
  %391 = getelementptr inbounds %struct.gs_font_type0_s, ptr %355, i64 0, i32 18, i32 6
  %392 = load i32, ptr %391, align 4, !tbaa !54
  %393 = getelementptr inbounds %struct.gs_font_type0_s, ptr %355, i64 0, i32 18, i32 5
  %394 = load i32, ptr %393, align 8, !tbaa !55
  %395 = getelementptr inbounds %struct.gs_font_type0_s, ptr %355, i64 0, i32 18, i32 4
  %396 = load ptr, ptr %395, align 8, !tbaa !56
  switch i32 %392, label %547 [
    i32 1, label %397
    i32 2, label %415
    i32 3, label %450
    i32 4, label %491
  ]

397:                                              ; preds = %390
  %398 = trunc i64 %358 to i8
  %399 = icmp eq i32 %394, 0
  br i1 %399, label %411, label %400

400:                                              ; preds = %397, %406
  %401 = phi i8 [ %408, %406 ], [ %398, %397 ]
  %402 = phi ptr [ %409, %406 ], [ %396, %397 ]
  %403 = phi i32 [ %407, %406 ], [ %394, %397 ]
  %404 = load i8, ptr %402, align 1, !tbaa !44
  %405 = icmp ult i8 %401, %404
  br i1 %405, label %411, label %406

406:                                              ; preds = %400
  %407 = add i32 %403, -1
  %408 = sub i8 %401, %404
  %409 = getelementptr inbounds i8, ptr %402, i64 1
  %410 = icmp eq i32 %407, 0
  br i1 %410, label %411, label %400, !llvm.loop !57

411:                                              ; preds = %400, %406, %397
  %412 = phi i32 [ %394, %397 ], [ %403, %400 ], [ 0, %406 ]
  %413 = phi i8 [ %398, %397 ], [ %401, %400 ], [ %408, %406 ]
  %414 = zext i8 %413 to i64
  br label %542

415:                                              ; preds = %390
  %416 = ptrtoint ptr %357 to i64
  %417 = sub i64 %348, %416
  %418 = icmp slt i64 %417, 1
  br i1 %418, label %547, label %419

419:                                              ; preds = %415
  %420 = trunc i64 %358 to i16
  %421 = shl i16 %420, 8
  %422 = load i8, ptr %357, align 1, !tbaa !44
  %423 = zext i8 %422 to i16
  %424 = or disjoint i16 %421, %423
  %425 = icmp eq i32 %394, 0
  br i1 %425, label %445, label %426

426:                                              ; preds = %419, %439
  %427 = phi i16 [ %442, %439 ], [ %424, %419 ]
  %428 = phi ptr [ %443, %439 ], [ %396, %419 ]
  %429 = phi i32 [ %440, %439 ], [ %394, %419 ]
  %430 = zext i16 %427 to i32
  %431 = load i8, ptr %428, align 1, !tbaa !44
  %432 = zext i8 %431 to i32
  %433 = shl nuw nsw i32 %432, 8
  %434 = getelementptr inbounds i8, ptr %428, i64 1
  %435 = load i8, ptr %434, align 1, !tbaa !44
  %436 = zext i8 %435 to i32
  %437 = or disjoint i32 %433, %436
  %438 = icmp ugt i32 %437, %430
  br i1 %438, label %445, label %439

439:                                              ; preds = %426
  %440 = add i32 %429, -1
  %441 = trunc i32 %437 to i16
  %442 = sub i16 %427, %441
  %443 = getelementptr inbounds i8, ptr %428, i64 2
  %444 = icmp eq i32 %440, 0
  br i1 %444, label %445, label %426, !llvm.loop !58

445:                                              ; preds = %426, %439, %419
  %446 = phi i32 [ %394, %419 ], [ %429, %426 ], [ 0, %439 ]
  %447 = phi i16 [ %424, %419 ], [ %427, %426 ], [ %442, %439 ]
  %448 = zext i16 %447 to i64
  %449 = getelementptr inbounds i8, ptr %357, i64 1
  br label %542

450:                                              ; preds = %390
  %451 = ptrtoint ptr %357 to i64
  %452 = sub i64 %347, %451
  %453 = icmp slt i64 %452, 2
  br i1 %453, label %547, label %454

454:                                              ; preds = %450
  %455 = shl i64 %358, 16
  %456 = load i8, ptr %357, align 1, !tbaa !44
  %457 = zext i8 %456 to i64
  %458 = shl nuw nsw i64 %457, 8
  %459 = getelementptr inbounds i8, ptr %357, i64 1
  %460 = load i8, ptr %459, align 1, !tbaa !44
  %461 = zext i8 %460 to i64
  %462 = or disjoint i64 %458, %461
  %463 = or disjoint i64 %462, %455
  %464 = icmp eq i32 %394, 0
  br i1 %464, label %487, label %465

465:                                              ; preds = %454, %482
  %466 = phi i64 [ %484, %482 ], [ %463, %454 ]
  %467 = phi ptr [ %485, %482 ], [ %396, %454 ]
  %468 = phi i32 [ %483, %482 ], [ %394, %454 ]
  %469 = load i8, ptr %467, align 1, !tbaa !44
  %470 = zext i8 %469 to i64
  %471 = shl nuw nsw i64 %470, 16
  %472 = getelementptr inbounds i8, ptr %467, i64 1
  %473 = load i8, ptr %472, align 1, !tbaa !44
  %474 = zext i8 %473 to i64
  %475 = shl nuw nsw i64 %474, 8
  %476 = or disjoint i64 %475, %471
  %477 = getelementptr inbounds i8, ptr %467, i64 2
  %478 = load i8, ptr %477, align 1, !tbaa !44
  %479 = zext i8 %478 to i64
  %480 = or disjoint i64 %476, %479
  %481 = icmp ult i64 %466, %480
  br i1 %481, label %487, label %482

482:                                              ; preds = %465
  %483 = add i32 %468, -1
  %484 = sub i64 %466, %480
  %485 = getelementptr inbounds i8, ptr %467, i64 3
  %486 = icmp eq i32 %483, 0
  br i1 %486, label %487, label %465, !llvm.loop !59

487:                                              ; preds = %465, %482, %454
  %488 = phi i32 [ %394, %454 ], [ %468, %465 ], [ 0, %482 ]
  %489 = phi i64 [ %463, %454 ], [ %466, %465 ], [ %484, %482 ]
  %490 = getelementptr inbounds i8, ptr %357, i64 2
  br label %542

491:                                              ; preds = %390
  %492 = ptrtoint ptr %357 to i64
  %493 = sub i64 %346, %492
  %494 = icmp slt i64 %493, 3
  br i1 %494, label %547, label %495

495:                                              ; preds = %491
  %496 = shl i64 %358, 24
  %497 = load i8, ptr %357, align 1, !tbaa !44
  %498 = zext i8 %497 to i64
  %499 = shl nuw nsw i64 %498, 16
  %500 = getelementptr inbounds i8, ptr %357, i64 1
  %501 = load i8, ptr %500, align 1, !tbaa !44
  %502 = zext i8 %501 to i64
  %503 = shl nuw nsw i64 %502, 8
  %504 = or disjoint i64 %503, %499
  %505 = getelementptr inbounds i8, ptr %357, i64 2
  %506 = load i8, ptr %505, align 1, !tbaa !44
  %507 = zext i8 %506 to i64
  %508 = or disjoint i64 %504, %507
  %509 = or disjoint i64 %508, %496
  %510 = icmp eq i32 %394, 0
  br i1 %510, label %538, label %511

511:                                              ; preds = %495, %533
  %512 = phi i64 [ %535, %533 ], [ %509, %495 ]
  %513 = phi ptr [ %536, %533 ], [ %396, %495 ]
  %514 = phi i32 [ %534, %533 ], [ %394, %495 ]
  %515 = load i8, ptr %513, align 1, !tbaa !44
  %516 = zext i8 %515 to i64
  %517 = shl nuw nsw i64 %516, 24
  %518 = getelementptr inbounds i8, ptr %513, i64 1
  %519 = load i8, ptr %518, align 1, !tbaa !44
  %520 = zext i8 %519 to i64
  %521 = shl nuw nsw i64 %520, 16
  %522 = or disjoint i64 %521, %517
  %523 = getelementptr inbounds i8, ptr %513, i64 2
  %524 = load i8, ptr %523, align 1, !tbaa !44
  %525 = zext i8 %524 to i64
  %526 = shl nuw nsw i64 %525, 8
  %527 = or disjoint i64 %522, %526
  %528 = getelementptr inbounds i8, ptr %513, i64 3
  %529 = load i8, ptr %528, align 1, !tbaa !44
  %530 = zext i8 %529 to i64
  %531 = or disjoint i64 %527, %530
  %532 = icmp ult i64 %512, %531
  br i1 %532, label %538, label %533

533:                                              ; preds = %511
  %534 = add i32 %514, -1
  %535 = sub i64 %512, %531
  %536 = getelementptr inbounds i8, ptr %513, i64 4
  %537 = icmp eq i32 %534, 0
  br i1 %537, label %538, label %511, !llvm.loop !60

538:                                              ; preds = %511, %533, %495
  %539 = phi i32 [ %394, %495 ], [ %514, %511 ], [ 0, %533 ]
  %540 = phi i64 [ %509, %495 ], [ %512, %511 ], [ %535, %533 ]
  %541 = getelementptr inbounds i8, ptr %357, i64 3
  br label %542

542:                                              ; preds = %538, %487, %445, %411
  %543 = phi i64 [ %540, %538 ], [ %489, %487 ], [ %448, %445 ], [ %414, %411 ]
  %544 = phi i32 [ %539, %538 ], [ %488, %487 ], [ %446, %445 ], [ %412, %411 ]
  %545 = phi ptr [ %541, %538 ], [ %490, %487 ], [ %449, %445 ], [ %357, %411 ]
  %546 = sub i32 %394, %544
  store i32 %546, ptr %4, align 4, !tbaa !35
  br label %547

547:                                              ; preds = %491, %450, %415, %390, %542
  %548 = phi i1 [ true, %542 ], [ false, %390 ], [ false, %415 ], [ false, %450 ], [ false, %491 ]
  %549 = phi i64 [ %543, %542 ], [ %358, %390 ], [ %358, %415 ], [ %358, %450 ], [ %358, %491 ]
  %550 = phi ptr [ %545, %542 ], [ %357, %390 ], [ %357, %415 ], [ %357, %450 ], [ %357, %491 ]
  %551 = phi i32 [ %356, %542 ], [ -10, %390 ], [ -15, %415 ], [ -15, %450 ], [ -15, %491 ]
  br i1 %548, label %574, label %627

552:                                              ; preds = %353
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  %553 = ptrtoint ptr %357 to i64
  %554 = add i64 %553, %344
  %555 = trunc i64 %554 to i32
  store i32 %555, ptr %7, align 4, !tbaa !35
  store ptr %9, ptr %6, align 8, !tbaa !61
  store i32 %15, ptr %345, align 8, !tbaa !62
  %556 = getelementptr inbounds %struct.gs_font_type0_s, ptr %355, i64 0, i32 18, i32 11
  %557 = load ptr, ptr %556, align 8, !tbaa !63
  %558 = call i32 @gs_cmap_decode_next(ptr noundef %557, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #4
  %559 = icmp sgt i32 %558, -1
  br i1 %559, label %560, label %570

560:                                              ; preds = %552
  %561 = load i32, ptr %7, align 4, !tbaa !35
  %562 = zext i32 %561 to i64
  %563 = getelementptr inbounds i8, ptr %9, i64 %562
  %564 = icmp eq i32 %558, 0
  %565 = load i64, ptr %5, align 8, !tbaa !42
  br i1 %564, label %566, label %569

566:                                              ; preds = %560
  %567 = icmp eq i64 %565, 2147483647
  br i1 %567, label %568, label %570

568:                                              ; preds = %566
  store i64 2147483648, ptr %5, align 8, !tbaa !42
  br label %570

569:                                              ; preds = %560
  store i64 2147483647, ptr %5, align 8, !tbaa !42
  br label %570

570:                                              ; preds = %569, %568, %566, %552
  %571 = phi i64 [ %358, %552 ], [ -1, %568 ], [ -1, %566 ], [ %565, %569 ]
  %572 = phi ptr [ %357, %552 ], [ %563, %568 ], [ %563, %566 ], [ %563, %569 ]
  %573 = phi i32 [ %558, %552 ], [ %356, %568 ], [ %356, %566 ], [ %356, %569 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #4
  br i1 %559, label %574, label %627

574:                                              ; preds = %547, %570, %379, %371, %366
  %575 = phi i64 [ %571, %570 ], [ %549, %547 ], [ %388, %379 ], [ %374, %371 ], [ %370, %366 ]
  %576 = phi ptr [ %572, %570 ], [ %550, %547 ], [ %389, %379 ], [ %357, %371 ], [ %368, %366 ]
  %577 = phi i32 [ %573, %570 ], [ %551, %547 ], [ %356, %379 ], [ %356, %371 ], [ %356, %366 ]
  %578 = load i32, ptr %4, align 4, !tbaa !35
  %579 = getelementptr inbounds %struct.gs_font_type0_s, ptr %355, i64 0, i32 18, i32 8
  %580 = load i32, ptr %579, align 8, !tbaa !46
  %581 = icmp ult i32 %578, %580
  br i1 %581, label %582, label %627

582:                                              ; preds = %574
  %583 = icmp eq i64 %354, 5
  br i1 %583, label %627, label %584

584:                                              ; preds = %582
  %585 = getelementptr inbounds %struct.gs_font_type0_s, ptr %355, i64 0, i32 18, i32 9
  %586 = load ptr, ptr %585, align 8, !tbaa !47
  %587 = getelementptr inbounds %struct.gs_font_type0_s, ptr %355, i64 0, i32 18, i32 7
  %588 = load ptr, ptr %587, align 8, !tbaa !48
  %589 = zext i32 %578 to i64
  %590 = getelementptr inbounds i32, ptr %588, i64 %589
  %591 = load i32, ptr %590, align 4, !tbaa !35
  %592 = zext i32 %591 to i64
  %593 = getelementptr inbounds ptr, ptr %586, i64 %592
  %594 = load ptr, ptr %593, align 8, !tbaa !36
  %595 = add nsw i64 %354, 1
  %596 = icmp slt i64 %354, %352
  br i1 %596, label %597, label %601

597:                                              ; preds = %584
  %598 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %595
  %599 = load ptr, ptr %598, align 8, !tbaa !21
  %600 = icmp eq ptr %594, %599
  br i1 %600, label %603, label %601

601:                                              ; preds = %597, %584
  %602 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %595
  store ptr %594, ptr %602, align 8, !tbaa !21
  br label %603

603:                                              ; preds = %601, %597
  %604 = phi i32 [ 1, %601 ], [ %359, %597 ]
  %605 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %595, i32 1
  store i32 %578, ptr %605, align 8, !tbaa !23
  %606 = getelementptr inbounds %struct.gs_show_enum_s, ptr %0, i64 0, i32 33, i32 1, i64 %595
  %607 = load ptr, ptr %606, align 8, !tbaa !21
  %608 = getelementptr inbounds %struct.gs_font_s, ptr %607, i64 0, i32 7
  %609 = load i32, ptr %608, align 8, !tbaa !24
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %353, label %611, !llvm.loop !64

611:                                              ; preds = %603
  %612 = trunc i64 %595 to i32
  br label %613

613:                                              ; preds = %611, %332
  %614 = phi i32 [ %204, %332 ], [ %604, %611 ]
  %615 = phi i64 [ %333, %332 ], [ %575, %611 ]
  %616 = phi i32 [ %334, %332 ], [ %612, %611 ]
  %617 = phi ptr [ %335, %332 ], [ %576, %611 ]
  store i64 %615, ptr %1, align 8, !tbaa !42
  %618 = load i64, ptr %5, align 8, !tbaa !42
  store i64 %618, ptr %2, align 8, !tbaa !42
  %619 = load ptr, ptr %8, align 8, !tbaa !39
  %620 = icmp eq ptr %9, %619
  br i1 %620, label %621, label %626

621:                                              ; preds = %613
  %622 = ptrtoint ptr %617 to i64
  %623 = ptrtoint ptr %9 to i64
  %624 = sub i64 %622, %623
  %625 = trunc i64 %624 to i32
  store i32 %625, ptr %10, align 8, !tbaa !40
  br label %626

626:                                              ; preds = %621, %613
  store i32 %616, ptr %18, align 8, !tbaa !5
  br label %627

627:                                              ; preds = %195, %302, %293, %237, %226, %255, %247, %582, %574, %375, %362, %353, %547, %570, %183, %177, %626
  %628 = phi i32 [ %614, %626 ], [ %182, %177 ], [ 2, %183 ], [ %573, %570 ], [ %551, %547 ], [ -10, %353 ], [ -15, %362 ], [ -15, %375 ], [ -15, %574 ], [ -10, %582 ], [ -15, %247 ], [ -10, %255 ], [ -15, %226 ], [ 2, %237 ], [ -15, %293 ], [ -15, %302 ], [ 2, %195 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret i32 %628
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @gs_cmap_decode_next(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 264}
!6 = !{!"gs_show_enum_s", !7, i64 0, !10, i64 8, !11, i64 16, !12, i64 32, !12, i64 36, !13, i64 40, !12, i64 48, !12, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !7, i64 72, !10, i64 80, !10, i64 84, !14, i64 88, !14, i64 104, !10, i64 120, !10, i64 124, !7, i64 128, !16, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !10, i64 168, !13, i64 176, !13, i64 184, !17, i64 192, !17, i64 208, !7, i64 224, !18, i64 232, !10, i64 248, !16, i64 252, !20, i64 264, !7, i64 368}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"gs_const_string_s", !7, i64 0, !10, i64 8}
!12 = !{!"float", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"gs_int_rect_s", !15, i64 0, !15, i64 8}
!15 = !{!"gs_int_point_s", !10, i64 0, !10, i64 4}
!16 = !{!"gs_log2_scale_point_s", !10, i64 0, !10, i64 4}
!17 = !{!"gs_fixed_point_s", !13, i64 0, !13, i64 8}
!18 = !{!"gs_point_s", !19, i64 0, !19, i64 8}
!19 = !{!"double", !8, i64 0}
!20 = !{!"gx_font_stack_s", !10, i64 0, !8, i64 8}
!21 = !{!22, !7, i64 0}
!22 = !{!"gx_font_stack_item_s", !7, i64 0, !10, i64 8}
!23 = !{!22, !10, i64 8}
!24 = !{!25, !10, i64 72}
!25 = !{!"gs_font_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !26, i64 48, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !12, i64 100, !27, i64 104, !29, i64 176, !29, i64 228}
!26 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!27 = !{!"gs_font_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !28, i64 32, !7, i64 48, !7, i64 56, !7, i64 64}
!28 = !{!"gx_xfont_callbacks_s", !7, i64 0, !7, i64 8}
!29 = !{!"gs_font_name_s", !8, i64 0, !10, i64 48}
!30 = !{!31, !10, i64 280}
!31 = !{!"gs_font_type0_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !26, i64 48, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !12, i64 100, !27, i64 104, !29, i64 176, !29, i64 228, !32, i64 280}
!32 = !{!"gs_type0_data_s", !10, i64 0, !8, i64 4, !8, i64 5, !8, i64 6, !11, i64 8, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !7, i64 48, !10, i64 56, !7, i64 64}
!33 = !{!31, !7, i64 328}
!34 = !{!31, !7, i64 312}
!35 = !{!10, !10, i64 0}
!36 = !{!7, !7, i64 0}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!6, !7, i64 16}
!40 = !{!6, !10, i64 168}
!41 = !{!6, !10, i64 24}
!42 = !{!13, !13, i64 0}
!43 = !{!32, !10, i64 0}
!44 = !{!8, !8, i64 0}
!45 = !{!31, !8, i64 284}
!46 = !{!32, !10, i64 40}
!47 = !{!32, !7, i64 48}
!48 = !{!32, !7, i64 32}
!49 = distinct !{!49, !38}
!50 = !{!32, !8, i64 5}
!51 = !{!32, !8, i64 6}
!52 = distinct !{!52, !38}
!53 = distinct !{!53, !38}
!54 = !{!32, !10, i64 28}
!55 = !{!32, !10, i64 24}
!56 = !{!32, !7, i64 8}
!57 = distinct !{!57, !38}
!58 = distinct !{!58, !38}
!59 = distinct !{!59, !38}
!60 = distinct !{!60, !38}
!61 = !{!11, !7, i64 0}
!62 = !{!11, !10, i64 8}
!63 = !{!32, !7, i64 64}
!64 = distinct !{!64, !38}
