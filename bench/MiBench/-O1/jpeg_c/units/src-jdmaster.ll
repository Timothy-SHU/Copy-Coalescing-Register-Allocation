; ModuleID = 'src/jdmaster.c'
source_filename = "src/jdmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.my_decomp_master = type { %struct.jpeg_decomp_master, i32, i32, ptr, ptr }
%struct.jpeg_decomp_master = type { ptr, ptr, i32 }
%struct.jpeg_color_quantizer = type { ptr, ptr, ptr, ptr }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }

@switch.table.jpeg_calc_output_dimensions = private unnamed_addr constant [5 x i32] [i32 1, i32 3, i32 3, i32 4, i32 4], align 4

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_calc_output_dimensions(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 202
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 5
  store i32 18, ptr %7, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 6
  store i32 %3, ptr %8, align 4, !tbaa !17
  %9 = load ptr, ptr %0, align 8, !tbaa !13
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  tail call void %10(ptr noundef nonnull %0) #4
  br label %11

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !19
  %14 = shl i32 %13, 3
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 12
  %16 = load i32, ptr %15, align 8, !tbaa !20
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !21
  %21 = zext i32 %20 to i64
  %22 = tail call i64 @jdiv_round_up(i64 noundef %21, i64 noundef 8) #4
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  store i32 %23, ptr %24, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 7
  %26 = load i32, ptr %25, align 4, !tbaa !23
  %27 = zext i32 %26 to i64
  %28 = tail call i64 @jdiv_round_up(i64 noundef %27, i64 noundef 8) #4
  %29 = trunc i64 %28 to i32
  br label %64

30:                                               ; preds = %11
  %31 = shl i32 %13, 2
  %32 = icmp ugt i32 %31, %16
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !21
  %36 = zext i32 %35 to i64
  %37 = tail call i64 @jdiv_round_up(i64 noundef %36, i64 noundef 4) #4
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  store i32 %38, ptr %39, align 8, !tbaa !22
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 7
  %41 = load i32, ptr %40, align 4, !tbaa !23
  %42 = zext i32 %41 to i64
  %43 = tail call i64 @jdiv_round_up(i64 noundef %42, i64 noundef 4) #4
  %44 = trunc i64 %43 to i32
  br label %64

45:                                               ; preds = %30
  %46 = shl i32 %13, 1
  %47 = icmp ugt i32 %46, %16
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 6
  %49 = load i32, ptr %48, align 8, !tbaa !21
  br i1 %47, label %60, label %50

50:                                               ; preds = %45
  %51 = zext i32 %49 to i64
  %52 = tail call i64 @jdiv_round_up(i64 noundef %51, i64 noundef 2) #4
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  store i32 %53, ptr %54, align 8, !tbaa !22
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 7
  %56 = load i32, ptr %55, align 4, !tbaa !23
  %57 = zext i32 %56 to i64
  %58 = tail call i64 @jdiv_round_up(i64 noundef %57, i64 noundef 2) #4
  %59 = trunc i64 %58 to i32
  br label %64

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  store i32 %49, ptr %61, align 8, !tbaa !22
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 7
  %63 = load i32, ptr %62, align 4, !tbaa !23
  br label %64

64:                                               ; preds = %33, %60, %50, %18
  %65 = phi i32 [ %44, %33 ], [ %63, %60 ], [ %59, %50 ], [ %29, %18 ]
  %66 = phi i32 [ 2, %33 ], [ 8, %60 ], [ 4, %50 ], [ 1, %18 ]
  %67 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  store i32 %65, ptr %67, align 4, !tbaa !24
  %68 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 59
  store i32 %66, ptr %68, align 4, !tbaa !25
  %69 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %70 = load ptr, ptr %69, align 8, !tbaa !26
  %71 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %72 = load i32, ptr %71, align 8, !tbaa !27
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 59
  %76 = load i32, ptr %75, align 4, !tbaa !25
  %77 = icmp slt i32 %76, 8
  %78 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 57
  %79 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 58
  br label %89

80:                                               ; preds = %113, %64
  %81 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %82 = load i32, ptr %81, align 8, !tbaa !27
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %155

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 6
  %86 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 57
  %87 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 7
  %88 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 58
  br label %119

89:                                               ; preds = %74, %113
  %90 = phi ptr [ %70, %74 ], [ %117, %113 ]
  %91 = phi i32 [ 0, %74 ], [ %116, %113 ]
  %92 = getelementptr inbounds %struct.jpeg_component_info, ptr %90, i64 0, i32 3
  br i1 %77, label %93, label %113

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.jpeg_component_info, ptr %90, i64 0, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !28
  %96 = load i32, ptr %78, align 4, !tbaa !30
  %97 = mul nsw i32 %96, %76
  br label %98

98:                                               ; preds = %93, %110
  %99 = phi i32 [ %76, %93 ], [ %111, %110 ]
  %100 = shl i32 %99, 1
  %101 = mul i32 %100, %95
  %102 = icmp sgt i32 %101, %97
  br i1 %102, label %113, label %103

103:                                              ; preds = %98
  %104 = load i32, ptr %92, align 4, !tbaa !31
  %105 = shl i32 %99, 1
  %106 = mul i32 %105, %104
  %107 = load i32, ptr %79, align 8, !tbaa !32
  %108 = mul nsw i32 %107, %76
  %109 = icmp sgt i32 %106, %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %103
  %111 = shl nsw i32 %99, 1
  %112 = icmp slt i32 %99, 4
  br i1 %112, label %98, label %113, !llvm.loop !33

113:                                              ; preds = %103, %110, %98, %89
  %114 = phi i32 [ %76, %89 ], [ %99, %103 ], [ %111, %110 ], [ %99, %98 ]
  %115 = getelementptr inbounds %struct.jpeg_component_info, ptr %90, i64 0, i32 9
  store i32 %114, ptr %115, align 4, !tbaa !35
  %116 = add nuw nsw i32 %91, 1
  %117 = getelementptr inbounds %struct.jpeg_component_info, ptr %90, i64 1
  %118 = icmp eq i32 %116, %72
  br i1 %118, label %80, label %89, !llvm.loop !36

119:                                              ; preds = %84, %119
  %120 = phi ptr [ %70, %84 ], [ %152, %119 ]
  %121 = phi i32 [ 0, %84 ], [ %151, %119 ]
  %122 = load i32, ptr %85, align 8, !tbaa !21
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.jpeg_component_info, ptr %120, i64 0, i32 2
  %125 = load i32, ptr %124, align 8, !tbaa !28
  %126 = getelementptr inbounds %struct.jpeg_component_info, ptr %120, i64 0, i32 9
  %127 = load i32, ptr %126, align 4, !tbaa !35
  %128 = mul nsw i32 %127, %125
  %129 = sext i32 %128 to i64
  %130 = mul nsw i64 %129, %123
  %131 = load i32, ptr %86, align 4, !tbaa !30
  %132 = shl nsw i32 %131, 3
  %133 = sext i32 %132 to i64
  %134 = tail call i64 @jdiv_round_up(i64 noundef %130, i64 noundef %133) #4
  %135 = trunc i64 %134 to i32
  %136 = getelementptr inbounds %struct.jpeg_component_info, ptr %120, i64 0, i32 10
  store i32 %135, ptr %136, align 8, !tbaa !37
  %137 = load i32, ptr %87, align 4, !tbaa !23
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.jpeg_component_info, ptr %120, i64 0, i32 3
  %140 = load i32, ptr %139, align 4, !tbaa !31
  %141 = load i32, ptr %126, align 4, !tbaa !35
  %142 = mul nsw i32 %141, %140
  %143 = sext i32 %142 to i64
  %144 = mul nsw i64 %143, %138
  %145 = load i32, ptr %88, align 8, !tbaa !32
  %146 = shl nsw i32 %145, 3
  %147 = sext i32 %146 to i64
  %148 = tail call i64 @jdiv_round_up(i64 noundef %144, i64 noundef %147) #4
  %149 = trunc i64 %148 to i32
  %150 = getelementptr inbounds %struct.jpeg_component_info, ptr %120, i64 0, i32 11
  store i32 %149, ptr %150, align 4, !tbaa !38
  %151 = add nuw nsw i32 %121, 1
  %152 = getelementptr inbounds %struct.jpeg_component_info, ptr %120, i64 1
  %153 = load i32, ptr %81, align 8, !tbaa !27
  %154 = icmp slt i32 %151, %153
  br i1 %154, label %119, label %155, !llvm.loop !39

155:                                              ; preds = %119, %80
  %156 = phi i32 [ %82, %80 ], [ %153, %119 ]
  %157 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 10
  %158 = load i32, ptr %157, align 8, !tbaa !40
  %159 = add i32 %158, -1
  %160 = icmp ult i32 %159, 5
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = zext nneg i32 %159 to i64
  %163 = getelementptr inbounds [5 x i32], ptr @switch.table.jpeg_calc_output_dimensions, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4
  br label %165

165:                                              ; preds = %155, %161
  %166 = phi i32 [ %164, %161 ], [ %156, %155 ]
  %167 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  store i32 %166, ptr %167, align 8, !tbaa !41
  %168 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %169 = load i32, ptr %168, align 4, !tbaa !42
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %173 = load i32, ptr %172, align 8, !tbaa !41
  br label %174

174:                                              ; preds = %165, %171
  %175 = phi i32 [ %173, %171 ], [ 1, %165 ]
  %176 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 29
  store i32 %175, ptr %176, align 4, !tbaa !43
  %177 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 17
  %178 = load i32, ptr %177, align 4, !tbaa !44
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %238

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 56
  %182 = load i32, ptr %181, align 8, !tbaa !45
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %238

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 9
  %186 = load i32, ptr %185, align 4, !tbaa !46
  %187 = icmp eq i32 %186, 3
  %188 = icmp eq i32 %156, 3
  %189 = and i1 %188, %187
  %190 = icmp eq i32 %158, 2
  %191 = and i1 %190, %189
  br i1 %191, label %192, label %238

192:                                              ; preds = %184
  %193 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %194 = load i32, ptr %193, align 8, !tbaa !41
  %195 = icmp eq i32 %194, 3
  br i1 %195, label %196, label %238

196:                                              ; preds = %192
  %197 = load ptr, ptr %69, align 8, !tbaa !26
  %198 = getelementptr inbounds %struct.jpeg_component_info, ptr %197, i64 0, i32 2
  %199 = load i32, ptr %198, align 8, !tbaa !28
  %200 = icmp eq i32 %199, 2
  br i1 %200, label %201, label %238

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.jpeg_component_info, ptr %197, i64 1, i32 2
  %203 = load i32, ptr %202, align 8, !tbaa !28
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %238

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.jpeg_component_info, ptr %197, i64 2, i32 2
  %207 = load i32, ptr %206, align 8, !tbaa !28
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %238

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.jpeg_component_info, ptr %197, i64 0, i32 3
  %211 = load i32, ptr %210, align 4, !tbaa !31
  %212 = icmp sgt i32 %211, 2
  br i1 %212, label %238, label %213

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.jpeg_component_info, ptr %197, i64 1, i32 3
  %215 = load i32, ptr %214, align 4, !tbaa !31
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %238

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.jpeg_component_info, ptr %197, i64 2, i32 3
  %219 = load i32, ptr %218, align 4, !tbaa !31
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %238

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.jpeg_component_info, ptr %197, i64 0, i32 9
  %223 = load i32, ptr %222, align 4, !tbaa !35
  %224 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 59
  %225 = load i32, ptr %224, align 4, !tbaa !25
  %226 = icmp eq i32 %223, %225
  br i1 %226, label %227, label %238

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.jpeg_component_info, ptr %197, i64 1, i32 9
  %229 = load i32, ptr %228, align 4, !tbaa !35
  %230 = icmp eq i32 %229, %225
  br i1 %230, label %231, label %238

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.jpeg_component_info, ptr %197, i64 2, i32 9
  %233 = load i32, ptr %232, align 4, !tbaa !35
  %234 = icmp eq i32 %233, %225
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 58
  %237 = load i32, ptr %236, align 8, !tbaa !32
  br label %238

238:                                              ; preds = %231, %221, %227, %196, %201, %205, %209, %213, %217, %184, %192, %174, %180, %235
  %239 = phi i32 [ %237, %235 ], [ 1, %180 ], [ 1, %174 ], [ 1, %192 ], [ 1, %184 ], [ 1, %217 ], [ 1, %213 ], [ 1, %209 ], [ 1, %205 ], [ 1, %201 ], [ 1, %196 ], [ 1, %227 ], [ 1, %221 ], [ 1, %231 ]
  %240 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 30
  store i32 %239, ptr %240, align 8, !tbaa !47
  ret void
}

declare i64 @jdiv_round_up(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_new_colormap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 73
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 207
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 18, ptr %9, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 6
  store i32 %5, ptr %10, align 4, !tbaa !17
  %11 = load ptr, ptr %0, align 8, !tbaa !13
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  tail call void %12(ptr noundef nonnull %0) #4
  br label %13

13:                                               ; preds = %7, %1
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %15 = load i32, ptr %14, align 4, !tbaa !42
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 24
  %19 = load i32, ptr %18, align 8, !tbaa !49
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.my_decomp_master, ptr %3, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  store ptr %27, ptr %28, align 8, !tbaa !54
  %29 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %27, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  tail call void %30(ptr noundef %0) #4
  %31 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %3, i64 0, i32 2
  store i32 0, ptr %31, align 8, !tbaa !57
  br label %36

32:                                               ; preds = %21, %17, %13
  %33 = load ptr, ptr %0, align 8, !tbaa !13
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %33, i64 0, i32 5
  store i32 45, ptr %34, align 8, !tbaa !14
  %35 = load ptr, ptr %33, align 8, !tbaa !18
  tail call void %35(ptr noundef nonnull %0) #4
  br label %36

36:                                               ; preds = %32, %25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @jinit_master_decompress(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 48) #4
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 73
  store ptr %5, ptr %6, align 8, !tbaa !48
  store ptr @prepare_for_output_pass, ptr %5, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %5, i64 0, i32 1
  store ptr @finish_output_pass, ptr %7, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %5, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !57
  tail call void @jpeg_calc_output_dimensions(ptr noundef %0)
  %9 = load ptr, ptr %2, align 8, !tbaa !58
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = tail call ptr %10(ptr noundef %0, i32 noundef 1, i64 noundef 1408) #4
  %12 = getelementptr inbounds i8, ptr %11, i64 256
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 61
  store ptr %12, ptr %13, align 8, !tbaa !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %11, i8 0, i64 256, i1 false)
  br label %14

14:                                               ; preds = %14, %1
  %15 = phi i64 [ 0, %1 ], [ %18, %14 ]
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds i8, ptr %12, i64 %15
  store i8 %16, ptr %17, align 1, !tbaa !17
  %18 = add nuw nsw i64 %15, 1
  %19 = icmp eq i64 %18, 256
  br i1 %19, label %20, label %14, !llvm.loop !64

20:                                               ; preds = %14
  %21 = getelementptr i8, ptr %11, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(384) %21, i8 -1, i64 384, i1 false), !tbaa !17
  %22 = getelementptr inbounds i8, ptr %11, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(384) %22, i8 0, i64 384, i1 false)
  %23 = getelementptr inbounds i8, ptr %11, i64 1280
  %24 = load ptr, ptr %13, align 8, !tbaa !63
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %23, ptr noundef nonnull align 1 dereferenceable(128) %24, i64 128, i1 false)
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %26 = load i32, ptr %25, align 8, !tbaa !22
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %29 = load i32, ptr %28, align 8, !tbaa !41
  %30 = sext i32 %29 to i64
  %31 = mul nsw i64 %30, %27
  %32 = icmp ult i64 %31, 4294967296
  br i1 %32, label %37, label %33

33:                                               ; preds = %20
  %34 = load ptr, ptr %0, align 8, !tbaa !13
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %34, i64 0, i32 5
  store i32 69, ptr %35, align 8, !tbaa !14
  %36 = load ptr, ptr %34, align 8, !tbaa !18
  tail call void %36(ptr noundef nonnull %0) #4
  br label %37

37:                                               ; preds = %33, %20
  %38 = getelementptr inbounds %struct.my_decomp_master, ptr %5, i64 0, i32 1
  store i32 0, ptr %38, align 8, !tbaa !65
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 17
  %40 = load i32, ptr %39, align 4, !tbaa !44
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %102

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 56
  %44 = load i32, ptr %43, align 8, !tbaa !45
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %102

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 9
  %48 = load i32, ptr %47, align 4, !tbaa !46
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %102

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %52 = load i32, ptr %51, align 8, !tbaa !27
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %102

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 10
  %56 = load i32, ptr %55, align 8, !tbaa !40
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %102

58:                                               ; preds = %54
  %59 = load i32, ptr %28, align 8, !tbaa !41
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %102

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %63 = load ptr, ptr %62, align 8, !tbaa !26
  %64 = getelementptr inbounds %struct.jpeg_component_info, ptr %63, i64 0, i32 2
  %65 = load i32, ptr %64, align 8, !tbaa !28
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %102

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.jpeg_component_info, ptr %63, i64 1, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !28
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %102

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.jpeg_component_info, ptr %63, i64 2, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !28
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %102

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.jpeg_component_info, ptr %63, i64 0, i32 3
  %77 = load i32, ptr %76, align 4, !tbaa !31
  %78 = icmp sgt i32 %77, 2
  br i1 %78, label %102, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.jpeg_component_info, ptr %63, i64 1, i32 3
  %81 = load i32, ptr %80, align 4, !tbaa !31
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %102

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.jpeg_component_info, ptr %63, i64 2, i32 3
  %85 = load i32, ptr %84, align 4, !tbaa !31
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.jpeg_component_info, ptr %63, i64 0, i32 9
  %89 = load i32, ptr %88, align 4, !tbaa !35
  %90 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 59
  %91 = load i32, ptr %90, align 4, !tbaa !25
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.jpeg_component_info, ptr %63, i64 1, i32 9
  %95 = load i32, ptr %94, align 4, !tbaa !35
  %96 = icmp eq i32 %95, %91
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.jpeg_component_info, ptr %63, i64 2, i32 9
  %99 = load i32, ptr %98, align 4, !tbaa !35
  %100 = icmp eq i32 %99, %91
  %101 = zext i1 %100 to i32
  br label %102

102:                                              ; preds = %97, %93, %87, %83, %79, %75, %71, %67, %61, %58, %54, %50, %46, %42, %37
  %103 = phi i32 [ 0, %42 ], [ 0, %37 ], [ 0, %58 ], [ 0, %54 ], [ 0, %50 ], [ 0, %46 ], [ 0, %83 ], [ 0, %79 ], [ 0, %75 ], [ 0, %71 ], [ 0, %67 ], [ 0, %61 ], [ 0, %93 ], [ 0, %87 ], [ %101, %97 ]
  %104 = getelementptr inbounds %struct.my_decomp_master, ptr %5, i64 0, i32 2
  store i32 %103, ptr %104, align 4, !tbaa !66
  %105 = getelementptr inbounds %struct.my_decomp_master, ptr %5, i64 0, i32 3
  %106 = getelementptr inbounds %struct.my_decomp_master, ptr %5, i64 0, i32 4
  %107 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %105, i8 0, i64 16, i1 false)
  %108 = load i32, ptr %107, align 4, !tbaa !42
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 14
  %112 = load i32, ptr %111, align 8, !tbaa !67
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110, %102
  %115 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 23
  store i32 0, ptr %115, align 4, !tbaa !68
  %116 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 24
  store i32 0, ptr %116, align 8, !tbaa !49
  %117 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 25
  store i32 0, ptr %117, align 4, !tbaa !69
  br label %118

118:                                              ; preds = %114, %110
  br i1 %109, label %167, label %119

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 15
  %121 = load i32, ptr %120, align 4, !tbaa !70
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr %0, align 8, !tbaa !13
  %125 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %124, i64 0, i32 5
  store i32 46, ptr %125, align 8, !tbaa !14
  %126 = load ptr, ptr %124, align 8, !tbaa !18
  tail call void %126(ptr noundef nonnull %0) #4
  br label %127

127:                                              ; preds = %123, %119
  %128 = load i32, ptr %28, align 8, !tbaa !41
  %129 = icmp eq i32 %128, 3
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 23
  store i32 1, ptr %131, align 4, !tbaa !68
  %132 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 24
  store i32 0, ptr %132, align 8, !tbaa !49
  %133 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 25
  store i32 0, ptr %133, align 4, !tbaa !69
  %134 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  store ptr null, ptr %134, align 8, !tbaa !50
  br label %149

135:                                              ; preds = %127
  %136 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  %137 = load ptr, ptr %136, align 8, !tbaa !50
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 24
  store i32 1, ptr %140, align 8, !tbaa !49
  br label %149

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 21
  %143 = load i32, ptr %142, align 4, !tbaa !71
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 25
  store i32 1, ptr %146, align 4, !tbaa !69
  br label %149

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 23
  store i32 1, ptr %148, align 4, !tbaa !68
  br label %149

149:                                              ; preds = %147, %145, %139, %130
  %150 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 23
  %151 = load i32, ptr %150, align 4, !tbaa !68
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  tail call void @jinit_1pass_quantizer(ptr noundef %0) #4
  %154 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %155 = load ptr, ptr %154, align 8, !tbaa !54
  store ptr %155, ptr %105, align 8, !tbaa !72
  br label %156

156:                                              ; preds = %153, %149
  %157 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 25
  %158 = load i32, ptr %157, align 4, !tbaa !69
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 24
  %162 = load i32, ptr %161, align 8, !tbaa !49
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %160, %156
  tail call void @jinit_2pass_quantizer(ptr noundef %0) #4
  %165 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %166 = load ptr, ptr %165, align 8, !tbaa !54
  store ptr %166, ptr %106, align 8, !tbaa !51
  br label %167

167:                                              ; preds = %164, %160, %118
  %168 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 15
  %169 = load i32, ptr %168, align 4, !tbaa !70
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %167
  %172 = load i32, ptr %104, align 4, !tbaa !66
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %171
  tail call void @jinit_merged_upsampler(ptr noundef %0) #4
  br label %176

175:                                              ; preds = %171
  tail call void @jinit_color_deconverter(ptr noundef %0) #4
  tail call void @jinit_upsampler(ptr noundef %0) #4
  br label %176

176:                                              ; preds = %175, %174
  %177 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 25
  %178 = load i32, ptr %177, align 4, !tbaa !69
  tail call void @jinit_d_post_controller(ptr noundef %0, i32 noundef %178) #4
  br label %179

179:                                              ; preds = %176, %167
  tail call void @jinit_inverse_dct(ptr noundef %0) #4
  %180 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 45
  %181 = load i32, ptr %180, align 4, !tbaa !73
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = load ptr, ptr %0, align 8, !tbaa !13
  %185 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %184, i64 0, i32 5
  store i32 1, ptr %185, align 8, !tbaa !14
  %186 = load ptr, ptr %184, align 8, !tbaa !18
  tail call void %186(ptr noundef nonnull %0) #4
  br label %193

187:                                              ; preds = %179
  %188 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 44
  %189 = load i32, ptr %188, align 8, !tbaa !74
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %187
  tail call void @jinit_phuff_decoder(ptr noundef %0) #4
  br label %193

192:                                              ; preds = %187
  tail call void @jinit_huff_decoder(ptr noundef %0) #4
  br label %193

193:                                              ; preds = %192, %191, %183
  %194 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %195 = load ptr, ptr %194, align 8, !tbaa !75
  %196 = getelementptr inbounds %struct.jpeg_input_controller, ptr %195, i64 0, i32 4
  %197 = load i32, ptr %196, align 8, !tbaa !76
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 14
  %201 = load i32, ptr %200, align 8, !tbaa !67
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i32
  br label %204

204:                                              ; preds = %199, %193
  %205 = phi i32 [ 1, %193 ], [ %203, %199 ]
  tail call void @jinit_d_coef_controller(ptr noundef %0, i32 noundef %205) #4
  %206 = load i32, ptr %168, align 4, !tbaa !70
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  tail call void @jinit_d_main_controller(ptr noundef %0, i32 noundef 0) #4
  br label %209

209:                                              ; preds = %208, %204
  %210 = load ptr, ptr %2, align 8, !tbaa !58
  %211 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %210, i64 0, i32 6
  %212 = load ptr, ptr %211, align 8, !tbaa !78
  tail call void %212(ptr noundef %0) #4
  %213 = load ptr, ptr %194, align 8, !tbaa !75
  %214 = getelementptr inbounds %struct.jpeg_input_controller, ptr %213, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !79
  tail call void %215(ptr noundef %0) #4
  %216 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 2
  %217 = load ptr, ptr %216, align 8, !tbaa !80
  %218 = icmp eq ptr %217, null
  br i1 %218, label %252, label %219

219:                                              ; preds = %209
  %220 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 14
  %221 = load i32, ptr %220, align 8, !tbaa !67
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %252

223:                                              ; preds = %219
  %224 = load ptr, ptr %194, align 8, !tbaa !75
  %225 = getelementptr inbounds %struct.jpeg_input_controller, ptr %224, i64 0, i32 4
  %226 = load i32, ptr %225, align 8, !tbaa !76
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %252, label %228

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 44
  %230 = load i32, ptr %229, align 8, !tbaa !74
  %231 = icmp eq i32 %230, 0
  %232 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %233 = load i32, ptr %232, align 8, !tbaa !27
  %234 = mul nsw i32 %233, 3
  %235 = add nsw i32 %234, 2
  %236 = select i1 %231, i32 %233, i32 %235
  %237 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %217, i64 0, i32 1
  store i64 0, ptr %237, align 8, !tbaa !81
  %238 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 60
  %239 = load i32, ptr %238, align 8, !tbaa !83
  %240 = zext i32 %239 to i64
  %241 = sext i32 %236 to i64
  %242 = mul nsw i64 %240, %241
  %243 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %217, i64 0, i32 2
  store i64 %242, ptr %243, align 8, !tbaa !84
  %244 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %217, i64 0, i32 3
  store i32 0, ptr %244, align 8, !tbaa !85
  %245 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 25
  %246 = load i32, ptr %245, align 4, !tbaa !69
  %247 = icmp eq i32 %246, 0
  %248 = select i1 %247, i32 2, i32 3
  %249 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %217, i64 0, i32 4
  store i32 %248, ptr %249, align 4, !tbaa !86
  %250 = load i32, ptr %38, align 8, !tbaa !65
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr %38, align 8, !tbaa !65
  br label %252

252:                                              ; preds = %209, %219, %223, %228
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prepare_for_output_pass(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 73
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  store i32 0, ptr %4, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  tail call void %10(ptr noundef %0, i32 noundef 0) #4
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 76
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  tail call void %13(ptr noundef %0, i32 noundef 2) #4
  br label %83

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %16 = load i32, ptr %15, align 4, !tbaa !42
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 21
  %24 = load i32, ptr %23, align 4, !tbaa !71
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 25
  %28 = load i32, ptr %27, align 4, !tbaa !69
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.my_decomp_master, ptr %3, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !51
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  store ptr %32, ptr %33, align 8, !tbaa !54
  store i32 1, ptr %4, align 8, !tbaa !57
  br label %46

34:                                               ; preds = %26, %22
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 23
  %36 = load i32, ptr %35, align 4, !tbaa !68
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.my_decomp_master, ptr %3, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !72
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  store ptr %40, ptr %41, align 8, !tbaa !54
  br label %46

42:                                               ; preds = %34
  %43 = load ptr, ptr %0, align 8, !tbaa !13
  %44 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i64 0, i32 5
  store i32 45, ptr %44, align 8, !tbaa !14
  %45 = load ptr, ptr %43, align 8, !tbaa !18
  tail call void %45(ptr noundef nonnull %0) #4
  br label %46

46:                                               ; preds = %30, %42, %38, %18, %14
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 80
  %48 = load ptr, ptr %47, align 8, !tbaa !91
  %49 = load ptr, ptr %48, align 8, !tbaa !92
  tail call void %49(ptr noundef %0) #4
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 75
  %51 = load ptr, ptr %50, align 8, !tbaa !94
  %52 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !95
  tail call void %53(ptr noundef %0) #4
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 15
  %55 = load i32, ptr %54, align 4, !tbaa !70
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %88

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.my_decomp_master, ptr %3, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !66
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 82
  %63 = load ptr, ptr %62, align 8, !tbaa !97
  %64 = load ptr, ptr %63, align 8, !tbaa !98
  tail call void %64(ptr noundef %0) #4
  br label %65

65:                                               ; preds = %61, %57
  %66 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 81
  %67 = load ptr, ptr %66, align 8, !tbaa !100
  %68 = load ptr, ptr %67, align 8, !tbaa !101
  tail call void %68(ptr noundef %0) #4
  %69 = load i32, ptr %15, align 4, !tbaa !42
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %73 = load ptr, ptr %72, align 8, !tbaa !54
  %74 = load ptr, ptr %73, align 8, !tbaa !87
  %75 = load i32, ptr %4, align 8, !tbaa !57
  tail call void %74(ptr noundef %0, i32 noundef %75) #4
  br label %76

76:                                               ; preds = %71, %65
  %77 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 76
  %78 = load ptr, ptr %77, align 8, !tbaa !88
  %79 = load ptr, ptr %78, align 8, !tbaa !89
  %80 = load i32, ptr %4, align 8, !tbaa !57
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i32 0, i32 3
  tail call void %79(ptr noundef %0, i32 noundef %82) #4
  br label %83

83:                                               ; preds = %7, %76
  %84 = phi i32 [ 0, %76 ], [ 2, %7 ]
  %85 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 74
  %86 = load ptr, ptr %85, align 8, !tbaa !103
  %87 = load ptr, ptr %86, align 8, !tbaa !104
  tail call void %87(ptr noundef %0, i32 noundef %84) #4
  br label %88

88:                                               ; preds = %83, %46
  %89 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !80
  %91 = icmp eq ptr %90, null
  br i1 %91, label %116, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.my_decomp_master, ptr %3, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !65
  %95 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %90, i64 0, i32 3
  store i32 %94, ptr %95, align 8, !tbaa !85
  %96 = load i32, ptr %4, align 8, !tbaa !57
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, i32 1, i32 2
  %99 = add nsw i32 %98, %94
  %100 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %90, i64 0, i32 4
  store i32 %99, ptr %100, align 4, !tbaa !86
  %101 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 14
  %102 = load i32, ptr %101, align 8, !tbaa !67
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %92
  %105 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %106 = load ptr, ptr %105, align 8, !tbaa !75
  %107 = getelementptr inbounds %struct.jpeg_input_controller, ptr %106, i64 0, i32 5
  %108 = load i32, ptr %107, align 4, !tbaa !106
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 25
  %112 = load i32, ptr %111, align 4, !tbaa !69
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %113, i32 1, i32 2
  %115 = add nsw i32 %114, %99
  store i32 %115, ptr %100, align 4, !tbaa !86
  br label %116

116:                                              ; preds = %92, %104, %110, %88
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_output_pass(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 73
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %5 = load i32, ptr %4, align 4, !tbaa !42
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !107
  tail call void %11(ptr noundef %0) #4
  br label %12

12:                                               ; preds = %7, %1
  %13 = getelementptr inbounds %struct.my_decomp_master, ptr %3, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !65
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !65
  ret void
}

declare void @jinit_1pass_quantizer(ptr noundef) local_unnamed_addr #1

declare void @jinit_2pass_quantizer(ptr noundef) local_unnamed_addr #1

declare void @jinit_merged_upsampler(ptr noundef) local_unnamed_addr #1

declare void @jinit_color_deconverter(ptr noundef) local_unnamed_addr #1

declare void @jinit_upsampler(ptr noundef) local_unnamed_addr #1

declare void @jinit_d_post_controller(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @jinit_inverse_dct(ptr noundef) local_unnamed_addr #1

declare void @jinit_phuff_decoder(ptr noundef) local_unnamed_addr #1

declare void @jinit_huff_decoder(ptr noundef) local_unnamed_addr #1

declare void @jinit_d_coef_controller(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @jinit_d_main_controller(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 28}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 508, !10, i64 512, !10, i64 516, !10, i64 520, !10, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 0}
!14 = !{!15, !10, i64 40}
!15 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !16, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!16 = !{!"long", !8, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!15, !7, i64 0}
!19 = !{!6, !10, i64 60}
!20 = !{!6, !10, i64 64}
!21 = !{!6, !10, i64 40}
!22 = !{!6, !10, i64 128}
!23 = !{!6, !10, i64 44}
!24 = !{!6, !10, i64 132}
!25 = !{!6, !10, i64 396}
!26 = !{!6, !7, i64 296}
!27 = !{!6, !10, i64 48}
!28 = !{!29, !10, i64 8}
!29 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!30 = !{!6, !10, i64 388}
!31 = !{!29, !10, i64 12}
!32 = !{!6, !10, i64 392}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = !{!29, !10, i64 36}
!36 = distinct !{!36, !34}
!37 = !{!29, !10, i64 40}
!38 = !{!29, !10, i64 44}
!39 = distinct !{!39, !34}
!40 = !{!6, !10, i64 56}
!41 = !{!6, !10, i64 136}
!42 = !{!6, !10, i64 100}
!43 = !{!6, !10, i64 140}
!44 = !{!6, !10, i64 92}
!45 = !{!6, !10, i64 384}
!46 = !{!6, !10, i64 52}
!47 = !{!6, !10, i64 144}
!48 = !{!6, !7, i64 528}
!49 = !{!6, !10, i64 120}
!50 = !{!6, !7, i64 152}
!51 = !{!52, !7, i64 40}
!52 = !{!"", !53, i64 0, !10, i64 24, !10, i64 28, !7, i64 32, !7, i64 40}
!53 = !{!"jpeg_decomp_master", !7, i64 0, !7, i64 8, !10, i64 16}
!54 = !{!6, !7, i64 608}
!55 = !{!56, !7, i64 24}
!56 = !{!"jpeg_color_quantizer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!57 = !{!52, !10, i64 16}
!58 = !{!6, !7, i64 8}
!59 = !{!60, !7, i64 0}
!60 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !16, i64 88}
!61 = !{!52, !7, i64 0}
!62 = !{!52, !7, i64 8}
!63 = !{!6, !7, i64 408}
!64 = distinct !{!64, !34}
!65 = !{!52, !10, i64 24}
!66 = !{!52, !10, i64 28}
!67 = !{!6, !10, i64 80}
!68 = !{!6, !10, i64 116}
!69 = !{!6, !10, i64 124}
!70 = !{!6, !10, i64 84}
!71 = !{!6, !10, i64 108}
!72 = !{!52, !7, i64 32}
!73 = !{!6, !10, i64 308}
!74 = !{!6, !10, i64 304}
!75 = !{!6, !7, i64 560}
!76 = !{!77, !10, i64 32}
!77 = !{!"jpeg_input_controller", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !10, i64 36}
!78 = !{!60, !7, i64 48}
!79 = !{!77, !7, i64 16}
!80 = !{!6, !7, i64 16}
!81 = !{!82, !16, i64 8}
!82 = !{!"jpeg_progress_mgr", !7, i64 0, !16, i64 8, !16, i64 16, !10, i64 24, !10, i64 28}
!83 = !{!6, !10, i64 400}
!84 = !{!82, !16, i64 16}
!85 = !{!82, !10, i64 24}
!86 = !{!82, !10, i64 28}
!87 = !{!56, !7, i64 0}
!88 = !{!6, !7, i64 552}
!89 = !{!90, !7, i64 0}
!90 = !{!"jpeg_d_post_controller", !7, i64 0, !7, i64 8}
!91 = !{!6, !7, i64 584}
!92 = !{!93, !7, i64 0}
!93 = !{!"jpeg_inverse_dct", !7, i64 0, !8, i64 8}
!94 = !{!6, !7, i64 544}
!95 = !{!96, !7, i64 16}
!96 = !{!"jpeg_d_coef_controller", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!97 = !{!6, !7, i64 600}
!98 = !{!99, !7, i64 0}
!99 = !{!"jpeg_color_deconverter", !7, i64 0, !7, i64 8}
!100 = !{!6, !7, i64 592}
!101 = !{!102, !7, i64 0}
!102 = !{!"jpeg_upsampler", !7, i64 0, !7, i64 8, !10, i64 16}
!103 = !{!6, !7, i64 536}
!104 = !{!105, !7, i64 0}
!105 = !{!"jpeg_d_main_controller", !7, i64 0, !7, i64 8}
!106 = !{!77, !10, i64 36}
!107 = !{!56, !7, i64 16}
