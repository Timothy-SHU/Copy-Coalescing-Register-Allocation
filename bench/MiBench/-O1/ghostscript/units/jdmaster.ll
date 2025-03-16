; ModuleID = 'jdmaster.c'
source_filename = "jdmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [64 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_decomp_master = type { ptr, ptr, i32 }
%struct.my_decomp_master = type { %struct.jpeg_decomp_master, i32, i32, ptr, ptr }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_color_quantizer = type { ptr, ptr, ptr, ptr }

@switch.table.jinit_master_decompress = private unnamed_addr constant [5 x i32] [i32 1, i32 3, i32 3, i32 4, i32 4], align 4

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
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  store i32 %13, ptr %14, align 8, !tbaa !20
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !21
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  store i32 %16, ptr %17, align 4, !tbaa !22
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 10
  %19 = load i32, ptr %18, align 8, !tbaa !23
  %20 = add i32 %19, -1
  %21 = icmp ult i32 %20, 5
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %23 = zext nneg i32 %20 to i64
  %24 = getelementptr inbounds [5 x i32], ptr @switch.table.jinit_master_decompress, i64 0, i64 %23
  %25 = select i1 %21, ptr %24, ptr %22
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  store i32 %26, ptr %27, align 8, !tbaa !24
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %29 = load i32, ptr %28, align 4, !tbaa !25
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %11
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %33 = load i32, ptr %32, align 8, !tbaa !24
  br label %34

34:                                               ; preds = %11, %31
  %35 = phi i32 [ %33, %31 ], [ 1, %11 ]
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 29
  store i32 %35, ptr %36, align 4, !tbaa !26
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 30
  store i32 1, ptr %37, align 8, !tbaa !27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @jinit_master_decompress(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !28
  %4 = load ptr, ptr %3, align 8, !tbaa !29
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 48) #4
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 73
  store ptr %5, ptr %6, align 8, !tbaa !31
  store ptr @prepare_for_output_pass, ptr %5, align 8, !tbaa !32
  %7 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %5, i64 0, i32 1
  store ptr @finish_output_pass, ptr %7, align 8, !tbaa !35
  %8 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %5, i64 0, i32 2
  store i32 0, ptr %8, align 8, !tbaa !36
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = icmp eq i32 %10, 202
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 8, !tbaa !13
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 5
  store i32 18, ptr %14, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 6
  store i32 %10, ptr %15, align 4, !tbaa !17
  %16 = load ptr, ptr %0, align 8, !tbaa !13
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  tail call void %17(ptr noundef nonnull %0) #4
  br label %18

18:                                               ; preds = %12, %1
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !19
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  store i32 %20, ptr %21, align 8, !tbaa !20
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !21
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 27
  store i32 %23, ptr %24, align 4, !tbaa !22
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 10
  %26 = load i32, ptr %25, align 8, !tbaa !23
  %27 = add i32 %26, -1
  %28 = icmp ult i32 %27, 5
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %30 = zext nneg i32 %27 to i64
  %31 = getelementptr inbounds [5 x i32], ptr @switch.table.jinit_master_decompress, i64 0, i64 %30
  %32 = select i1 %28, ptr %31, ptr %29
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  store i32 %33, ptr %34, align 8, !tbaa !24
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %36 = load i32, ptr %35, align 4, !tbaa !25
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %40 = load i32, ptr %39, align 8, !tbaa !24
  br label %41

41:                                               ; preds = %38, %18
  %42 = phi i32 [ %40, %38 ], [ 1, %18 ]
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 29
  store i32 %42, ptr %43, align 4, !tbaa !26
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 30
  store i32 1, ptr %44, align 8, !tbaa !27
  %45 = load ptr, ptr %2, align 8, !tbaa !28
  %46 = load ptr, ptr %45, align 8, !tbaa !29
  %47 = tail call ptr %46(ptr noundef %0, i32 noundef 1, i64 noundef 1408) #4
  %48 = getelementptr inbounds i8, ptr %47, i64 256
  %49 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 61
  store ptr %48, ptr %49, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %47, i8 0, i64 256, i1 false)
  br label %50

50:                                               ; preds = %50, %41
  %51 = phi i64 [ 0, %41 ], [ %54, %50 ]
  %52 = trunc i64 %51 to i8
  %53 = getelementptr inbounds i8, ptr %48, i64 %51
  store i8 %52, ptr %53, align 1, !tbaa !17
  %54 = add nuw nsw i64 %51, 1
  %55 = icmp eq i64 %54, 256
  br i1 %55, label %56, label %50, !llvm.loop !38

56:                                               ; preds = %50
  %57 = getelementptr i8, ptr %47, i64 512
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(384) %57, i8 -1, i64 384, i1 false), !tbaa !17
  %58 = getelementptr inbounds i8, ptr %47, i64 896
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(384) %58, i8 0, i64 384, i1 false)
  %59 = getelementptr inbounds i8, ptr %47, i64 1280
  %60 = load ptr, ptr %49, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %59, ptr noundef nonnull align 1 dereferenceable(128) %60, i64 128, i1 false)
  %61 = load i32, ptr %21, align 8, !tbaa !20
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %64 = load i32, ptr %63, align 8, !tbaa !24
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %65, %62
  %67 = icmp ult i64 %66, 4294967296
  br i1 %67, label %72, label %68

68:                                               ; preds = %56
  %69 = load ptr, ptr %0, align 8, !tbaa !13
  %70 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %69, i64 0, i32 5
  store i32 69, ptr %70, align 8, !tbaa !14
  %71 = load ptr, ptr %69, align 8, !tbaa !18
  tail call void %71(ptr noundef nonnull %0) #4
  br label %72

72:                                               ; preds = %68, %56
  %73 = getelementptr inbounds %struct.my_decomp_master, ptr %5, i64 0, i32 1
  %74 = getelementptr inbounds %struct.my_decomp_master, ptr %5, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %73, i8 0, i64 24, i1 false)
  %75 = load i32, ptr %35, align 4, !tbaa !25
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 14
  %79 = load i32, ptr %78, align 8, !tbaa !40
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77, %72
  %82 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 23
  store i32 0, ptr %82, align 4, !tbaa !41
  %83 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 24
  store i32 0, ptr %83, align 8, !tbaa !42
  %84 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 25
  store i32 0, ptr %84, align 4, !tbaa !43
  br label %85

85:                                               ; preds = %81, %77
  br i1 %76, label %136, label %86

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 15
  %88 = load i32, ptr %87, align 4, !tbaa !44
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %0, align 8, !tbaa !13
  %92 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %91, i64 0, i32 5
  store i32 46, ptr %92, align 8, !tbaa !14
  %93 = load ptr, ptr %91, align 8, !tbaa !18
  tail call void %93(ptr noundef nonnull %0) #4
  br label %94

94:                                               ; preds = %90, %86
  %95 = load i32, ptr %63, align 8, !tbaa !24
  %96 = icmp eq i32 %95, 3
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 23
  store i32 1, ptr %98, align 4, !tbaa !41
  %99 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 24
  store i32 0, ptr %99, align 8, !tbaa !42
  %100 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 25
  store i32 0, ptr %100, align 4, !tbaa !43
  %101 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  store ptr null, ptr %101, align 8, !tbaa !45
  br label %116

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  %104 = load ptr, ptr %103, align 8, !tbaa !45
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 24
  store i32 1, ptr %107, align 8, !tbaa !42
  br label %116

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 21
  %110 = load i32, ptr %109, align 4, !tbaa !46
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 25
  store i32 1, ptr %113, align 4, !tbaa !43
  br label %116

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 23
  store i32 1, ptr %115, align 4, !tbaa !41
  br label %116

116:                                              ; preds = %114, %112, %106, %97
  %117 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 23
  %118 = load i32, ptr %117, align 4, !tbaa !41
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr %0, align 8, !tbaa !13
  %122 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %121, i64 0, i32 5
  store i32 47, ptr %122, align 8, !tbaa !14
  %123 = load ptr, ptr %121, align 8, !tbaa !18
  tail call void %123(ptr noundef nonnull %0) #4
  br label %124

124:                                              ; preds = %120, %116
  %125 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 25
  %126 = load i32, ptr %125, align 4, !tbaa !43
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 24
  %130 = load i32, ptr %129, align 8, !tbaa !42
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %128, %124
  %133 = load ptr, ptr %0, align 8, !tbaa !13
  %134 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %133, i64 0, i32 5
  store i32 47, ptr %134, align 8, !tbaa !14
  %135 = load ptr, ptr %133, align 8, !tbaa !18
  tail call void %135(ptr noundef nonnull %0) #4
  br label %136

136:                                              ; preds = %132, %128, %85
  %137 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 15
  %138 = load i32, ptr %137, align 4, !tbaa !44
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %136
  %141 = load i32, ptr %74, align 4, !tbaa !47
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = load ptr, ptr %0, align 8, !tbaa !13
  %145 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %144, i64 0, i32 5
  store i32 47, ptr %145, align 8, !tbaa !14
  %146 = load ptr, ptr %144, align 8, !tbaa !18
  tail call void %146(ptr noundef nonnull %0) #4
  br label %148

147:                                              ; preds = %140
  tail call void @jinit_color_deconverter(ptr noundef %0) #4
  tail call void @jinit_upsampler(ptr noundef %0) #4
  br label %148

148:                                              ; preds = %147, %143
  %149 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 25
  %150 = load i32, ptr %149, align 4, !tbaa !43
  tail call void @jinit_d_post_controller(ptr noundef %0, i32 noundef %150) #4
  br label %151

151:                                              ; preds = %148, %136
  tail call void @jinit_inverse_dct(ptr noundef %0) #4
  %152 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 45
  %153 = load i32, ptr %152, align 4, !tbaa !48
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  %156 = load ptr, ptr %0, align 8, !tbaa !13
  %157 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %156, i64 0, i32 5
  store i32 1, ptr %157, align 8, !tbaa !14
  %158 = load ptr, ptr %156, align 8, !tbaa !18
  tail call void %158(ptr noundef nonnull %0) #4
  br label %168

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 44
  %161 = load i32, ptr %160, align 8, !tbaa !49
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  %164 = load ptr, ptr %0, align 8, !tbaa !13
  %165 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %164, i64 0, i32 5
  store i32 47, ptr %165, align 8, !tbaa !14
  %166 = load ptr, ptr %164, align 8, !tbaa !18
  tail call void %166(ptr noundef nonnull %0) #4
  br label %168

167:                                              ; preds = %159
  tail call void @jinit_huff_decoder(ptr noundef %0) #4
  br label %168

168:                                              ; preds = %167, %163, %155
  %169 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %170 = load ptr, ptr %169, align 8, !tbaa !50
  %171 = getelementptr inbounds %struct.jpeg_input_controller, ptr %170, i64 0, i32 4
  %172 = load i32, ptr %171, align 8, !tbaa !51
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 14
  %176 = load i32, ptr %175, align 8, !tbaa !40
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i32
  br label %179

179:                                              ; preds = %174, %168
  %180 = phi i32 [ 1, %168 ], [ %178, %174 ]
  tail call void @jinit_d_coef_controller(ptr noundef %0, i32 noundef %180) #4
  %181 = load i32, ptr %137, align 4, !tbaa !44
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  tail call void @jinit_d_main_controller(ptr noundef %0, i32 noundef 0) #4
  br label %184

184:                                              ; preds = %179, %183
  %185 = load ptr, ptr %2, align 8, !tbaa !28
  %186 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %185, i64 0, i32 6
  %187 = load ptr, ptr %186, align 8, !tbaa !53
  tail call void %187(ptr noundef %0) #4
  %188 = load ptr, ptr %169, align 8, !tbaa !50
  %189 = getelementptr inbounds %struct.jpeg_input_controller, ptr %188, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !54
  tail call void %190(ptr noundef %0) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prepare_for_output_pass(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 73
  %3 = load ptr, ptr %2, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.jpeg_decomp_master, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !36
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 47, ptr %9, align 8, !tbaa !14
  %10 = load ptr, ptr %8, align 8, !tbaa !18
  tail call void %10(ptr noundef nonnull %0) #4
  br label %83

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %13 = load i32, ptr %12, align 4, !tbaa !25
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 21
  %21 = load i32, ptr %20, align 4, !tbaa !46
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 25
  %25 = load i32, ptr %24, align 4, !tbaa !43
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.my_decomp_master, ptr %3, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  store ptr %29, ptr %30, align 8, !tbaa !56
  store i32 1, ptr %4, align 8, !tbaa !36
  br label %43

31:                                               ; preds = %23, %19
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 23
  %33 = load i32, ptr %32, align 4, !tbaa !41
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.my_decomp_master, ptr %3, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  store ptr %37, ptr %38, align 8, !tbaa !56
  br label %43

39:                                               ; preds = %31
  %40 = load ptr, ptr %0, align 8, !tbaa !13
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i64 0, i32 5
  store i32 45, ptr %41, align 8, !tbaa !14
  %42 = load ptr, ptr %40, align 8, !tbaa !18
  tail call void %42(ptr noundef nonnull %0) #4
  br label %43

43:                                               ; preds = %27, %39, %35, %15, %11
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 80
  %45 = load ptr, ptr %44, align 8, !tbaa !58
  %46 = load ptr, ptr %45, align 8, !tbaa !59
  tail call void %46(ptr noundef %0) #4
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 75
  %48 = load ptr, ptr %47, align 8, !tbaa !61
  %49 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !62
  tail call void %50(ptr noundef %0) #4
  %51 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 15
  %52 = load i32, ptr %51, align 4, !tbaa !44
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.my_decomp_master, ptr %3, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !47
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 82
  %60 = load ptr, ptr %59, align 8, !tbaa !64
  %61 = load ptr, ptr %60, align 8, !tbaa !65
  tail call void %61(ptr noundef %0) #4
  br label %62

62:                                               ; preds = %58, %54
  %63 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 81
  %64 = load ptr, ptr %63, align 8, !tbaa !67
  %65 = load ptr, ptr %64, align 8, !tbaa !68
  tail call void %65(ptr noundef %0) #4
  %66 = load i32, ptr %12, align 4, !tbaa !25
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %70 = load ptr, ptr %69, align 8, !tbaa !56
  %71 = load ptr, ptr %70, align 8, !tbaa !70
  %72 = load i32, ptr %4, align 8, !tbaa !36
  tail call void %71(ptr noundef %0, i32 noundef %72) #4
  br label %73

73:                                               ; preds = %68, %62
  %74 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 76
  %75 = load ptr, ptr %74, align 8, !tbaa !72
  %76 = load ptr, ptr %75, align 8, !tbaa !73
  %77 = load i32, ptr %4, align 8, !tbaa !36
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 0, i32 3
  tail call void %76(ptr noundef %0, i32 noundef %79) #4
  %80 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 74
  %81 = load ptr, ptr %80, align 8, !tbaa !75
  %82 = load ptr, ptr %81, align 8, !tbaa !76
  tail call void %82(ptr noundef %0, i32 noundef 0) #4
  br label %83

83:                                               ; preds = %43, %73, %7
  %84 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !78
  %86 = icmp eq ptr %85, null
  br i1 %86, label %111, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.my_decomp_master, ptr %3, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !79
  %90 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %85, i64 0, i32 3
  store i32 %89, ptr %90, align 8, !tbaa !80
  %91 = load i32, ptr %4, align 8, !tbaa !36
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 1, i32 2
  %94 = add nsw i32 %93, %89
  %95 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %85, i64 0, i32 4
  store i32 %94, ptr %95, align 4, !tbaa !82
  %96 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 14
  %97 = load i32, ptr %96, align 8, !tbaa !40
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %87
  %100 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %101 = load ptr, ptr %100, align 8, !tbaa !50
  %102 = getelementptr inbounds %struct.jpeg_input_controller, ptr %101, i64 0, i32 5
  %103 = load i32, ptr %102, align 4, !tbaa !83
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 25
  %107 = load i32, ptr %106, align 4, !tbaa !43
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %108, i32 1, i32 2
  %110 = add nsw i32 %109, %94
  store i32 %110, ptr %95, align 4, !tbaa !82
  br label %111

111:                                              ; preds = %87, %99, %105, %83
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_output_pass(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 73
  %3 = load ptr, ptr %2, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %5 = load i32, ptr %4, align 4, !tbaa !25
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  tail call void %11(ptr noundef %0) #4
  br label %12

12:                                               ; preds = %7, %1
  %13 = getelementptr inbounds %struct.my_decomp_master, ptr %3, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !79
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !79
  ret void
}

declare void @jinit_color_deconverter(ptr noundef) local_unnamed_addr #1

declare void @jinit_upsampler(ptr noundef) local_unnamed_addr #1

declare void @jinit_d_post_controller(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @jinit_inverse_dct(ptr noundef) local_unnamed_addr #1

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
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 724, !10, i64 728, !10, i64 732, !10, i64 736, !10, i64 740, !7, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824}
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
!19 = !{!6, !10, i64 40}
!20 = !{!6, !10, i64 128}
!21 = !{!6, !10, i64 44}
!22 = !{!6, !10, i64 132}
!23 = !{!6, !10, i64 56}
!24 = !{!6, !10, i64 136}
!25 = !{!6, !10, i64 100}
!26 = !{!6, !10, i64 140}
!27 = !{!6, !10, i64 144}
!28 = !{!6, !7, i64 8}
!29 = !{!30, !7, i64 0}
!30 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !16, i64 88}
!31 = !{!6, !7, i64 744}
!32 = !{!33, !7, i64 0}
!33 = !{!"", !34, i64 0, !10, i64 24, !10, i64 28, !7, i64 32, !7, i64 40}
!34 = !{!"jpeg_decomp_master", !7, i64 0, !7, i64 8, !10, i64 16}
!35 = !{!33, !7, i64 8}
!36 = !{!33, !10, i64 16}
!37 = !{!6, !7, i64 408}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!6, !10, i64 80}
!41 = !{!6, !10, i64 116}
!42 = !{!6, !10, i64 120}
!43 = !{!6, !10, i64 124}
!44 = !{!6, !10, i64 84}
!45 = !{!6, !7, i64 152}
!46 = !{!6, !10, i64 108}
!47 = !{!33, !10, i64 28}
!48 = !{!6, !10, i64 308}
!49 = !{!6, !10, i64 304}
!50 = !{!6, !7, i64 776}
!51 = !{!52, !10, i64 32}
!52 = !{!"jpeg_input_controller", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !10, i64 36}
!53 = !{!30, !7, i64 48}
!54 = !{!52, !7, i64 16}
!55 = !{!33, !7, i64 40}
!56 = !{!6, !7, i64 824}
!57 = !{!33, !7, i64 32}
!58 = !{!6, !7, i64 800}
!59 = !{!60, !7, i64 0}
!60 = !{!"jpeg_inverse_dct", !7, i64 0, !8, i64 8}
!61 = !{!6, !7, i64 760}
!62 = !{!63, !7, i64 16}
!63 = !{!"jpeg_d_coef_controller", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!64 = !{!6, !7, i64 816}
!65 = !{!66, !7, i64 0}
!66 = !{!"jpeg_color_deconverter", !7, i64 0, !7, i64 8}
!67 = !{!6, !7, i64 808}
!68 = !{!69, !7, i64 0}
!69 = !{!"jpeg_upsampler", !7, i64 0, !7, i64 8, !10, i64 16}
!70 = !{!71, !7, i64 0}
!71 = !{!"jpeg_color_quantizer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!72 = !{!6, !7, i64 768}
!73 = !{!74, !7, i64 0}
!74 = !{!"jpeg_d_post_controller", !7, i64 0, !7, i64 8}
!75 = !{!6, !7, i64 752}
!76 = !{!77, !7, i64 0}
!77 = !{!"jpeg_d_main_controller", !7, i64 0, !7, i64 8}
!78 = !{!6, !7, i64 16}
!79 = !{!33, !10, i64 24}
!80 = !{!81, !10, i64 24}
!81 = !{!"jpeg_progress_mgr", !7, i64 0, !16, i64 8, !16, i64 16, !10, i64 24, !10, i64 28}
!82 = !{!81, !10, i64 28}
!83 = !{!52, !10, i64 36}
!84 = !{!71, !7, i64 16}
