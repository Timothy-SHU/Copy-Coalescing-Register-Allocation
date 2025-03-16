; ModuleID = 'src/jdphuff.c'
source_filename = "src/jdphuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_entropy_decoder = type { ptr, ptr }
%struct.phuff_entropy_decoder = type { %struct.jpeg_entropy_decoder, %struct.bitread_perm_state, %struct.savable_state, i32, [4 x ptr], ptr }
%struct.bitread_perm_state = type { i64, i32, i32 }
%struct.savable_state = type { i32, [4 x i32] }
%struct.bitread_working_state = type { ptr, i64, i32, i64, i32, ptr, ptr }
%struct.jpeg_marker_reader = type { ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.d_derived_tbl = type { [17 x i64], [18 x i64], [17 x i32], ptr, [256 x i32], [256 x i8] }

@extend_test = internal unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384], align 16
@extend_offset = internal unnamed_addr constant [16 x i32] [i32 0, i32 -1, i32 -3, i32 -7, i32 -15, i32 -31, i32 -63, i32 -127, i32 -255, i32 -511, i32 -1023, i32 -2047, i32 -4095, i32 -8191, i32 -16383, i32 -32767], align 16
@jpeg_natural_order = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define dso_local void @jinit_phuff_decoder(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 96) #6
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 79
  store ptr %5, ptr %6, align 8, !tbaa !16
  store ptr @start_pass_phuff_decoder, ptr %5, align 8, !tbaa !17
  %7 = getelementptr i8, ptr %5, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false), !tbaa !22
  %8 = load ptr, ptr %2, align 8, !tbaa !5
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = shl nsw i32 %11, 6
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %15 = tail call ptr %9(ptr noundef %0, i32 noundef 1, i64 noundef %14) #6
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 38
  store ptr %15, ptr %16, align 8, !tbaa !24
  %17 = load i32, ptr %10, align 8, !tbaa !23
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1, %19
  %20 = phi i32 [ %23, %19 ], [ 0, %1 ]
  %21 = phi ptr [ %22, %19 ], [ %15, %1 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %21, i8 -1, i64 256, i1 false), !tbaa !25
  %22 = getelementptr i8, ptr %21, i64 256
  %23 = add nuw nsw i32 %20, 1
  %24 = load i32, ptr %10, align 8, !tbaa !23
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %19, label %26, !llvm.loop !26

26:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_phuff_decoder(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 79
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 68
  %5 = load i32, ptr %4, align 4, !tbaa !28
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 69
  %8 = load i32, ptr %7, align 8, !tbaa !29
  br i1 %6, label %9, label %11

9:                                                ; preds = %1
  %10 = icmp ne i32 %8, 0
  br label %19

11:                                               ; preds = %1
  %12 = icmp sgt i32 %5, %8
  %13 = icmp sgt i32 %8, 63
  %14 = or i1 %12, %13
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %16 = load i32, ptr %15, align 8, !tbaa !30
  %17 = icmp ne i32 %16, 1
  %18 = select i1 %17, i1 true, i1 %14
  br label %19

19:                                               ; preds = %11, %9
  %20 = phi i1 [ %10, %9 ], [ %18, %11 ]
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 70
  %23 = load i32, ptr %22, align 4, !tbaa !31
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 71
  %27 = load i32, ptr %26, align 8, !tbaa !32
  %28 = add nsw i32 %23, -1
  %29 = icmp eq i32 %27, %28
  %30 = select i1 %29, i32 %21, i32 1
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi i32 [ %21, %19 ], [ %30, %25 ]
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 71
  %34 = load i32, ptr %33, align 8, !tbaa !32
  %35 = icmp slt i32 %34, 14
  %36 = icmp eq i32 %32, 0
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %54, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr %0, align 8, !tbaa !33
  %40 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i64 0, i32 5
  store i32 14, ptr %40, align 8, !tbaa !34
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %39, i64 0, i32 6
  store i32 %5, ptr %41, align 4, !tbaa !36
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 69
  %43 = load i32, ptr %42, align 8, !tbaa !29
  %44 = load ptr, ptr %0, align 8, !tbaa !33
  %45 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %44, i64 0, i32 6, i32 0, i64 1
  store i32 %43, ptr %45, align 4, !tbaa !36
  %46 = load i32, ptr %22, align 4, !tbaa !31
  %47 = load ptr, ptr %0, align 8, !tbaa !33
  %48 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %47, i64 0, i32 6, i32 0, i64 2
  store i32 %46, ptr %48, align 4, !tbaa !36
  %49 = load i32, ptr %33, align 8, !tbaa !32
  %50 = load ptr, ptr %0, align 8, !tbaa !33
  %51 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %50, i64 0, i32 6, i32 0, i64 3
  store i32 %49, ptr %51, align 4, !tbaa !36
  %52 = load ptr, ptr %0, align 8, !tbaa !33
  %53 = load ptr, ptr %52, align 8, !tbaa !37
  tail call void %53(ptr noundef nonnull %0) #6
  br label %54

54:                                               ; preds = %38, %31
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %56 = load i32, ptr %55, align 8, !tbaa !30
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %116

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 38
  %60 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 69
  br label %61

61:                                               ; preds = %58, %111
  %62 = phi i64 [ 0, %58 ], [ %112, %111 ]
  %63 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 63, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !22
  %65 = getelementptr inbounds %struct.jpeg_component_info, ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !38
  %67 = load ptr, ptr %59, align 8, !tbaa !24
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds [64 x i32], ptr %67, i64 %68
  br i1 %6, label %82, label %70

70:                                               ; preds = %61
  %71 = load i32, ptr %69, align 4, !tbaa !25
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load ptr, ptr %0, align 8, !tbaa !33
  %75 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %74, i64 0, i32 5
  store i32 111, ptr %75, align 8, !tbaa !34
  %76 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %74, i64 0, i32 6
  store i32 %66, ptr %76, align 4, !tbaa !36
  %77 = load ptr, ptr %0, align 8, !tbaa !33
  %78 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %77, i64 0, i32 6, i32 0, i64 1
  store i32 0, ptr %78, align 4, !tbaa !36
  %79 = load ptr, ptr %0, align 8, !tbaa !33
  %80 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !40
  tail call void %81(ptr noundef nonnull %0, i32 noundef -1) #6
  br label %82

82:                                               ; preds = %73, %70, %61
  %83 = load i32, ptr %4, align 4, !tbaa !28
  %84 = load i32, ptr %60, align 8, !tbaa !29
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %111, label %86

86:                                               ; preds = %82
  %87 = sext i32 %83 to i64
  br label %88

88:                                               ; preds = %86, %105
  %89 = phi i64 [ %87, %86 ], [ %107, %105 ]
  %90 = getelementptr inbounds i32, ptr %69, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !25
  %92 = tail call i32 @llvm.smax.i32(i32 %91, i32 0)
  %93 = load i32, ptr %22, align 4, !tbaa !31
  %94 = icmp eq i32 %93, %92
  br i1 %94, label %105, label %95

95:                                               ; preds = %88
  %96 = load ptr, ptr %0, align 8, !tbaa !33
  %97 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %96, i64 0, i32 5
  store i32 111, ptr %97, align 8, !tbaa !34
  %98 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %96, i64 0, i32 6
  store i32 %66, ptr %98, align 4, !tbaa !36
  %99 = load ptr, ptr %0, align 8, !tbaa !33
  %100 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %99, i64 0, i32 6, i32 0, i64 1
  %101 = trunc i64 %89 to i32
  store i32 %101, ptr %100, align 4, !tbaa !36
  %102 = load ptr, ptr %0, align 8, !tbaa !33
  %103 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !40
  tail call void %104(ptr noundef nonnull %0, i32 noundef -1) #6
  br label %105

105:                                              ; preds = %95, %88
  %106 = load i32, ptr %33, align 8, !tbaa !32
  store i32 %106, ptr %90, align 4, !tbaa !25
  %107 = add nsw i64 %89, 1
  %108 = load i32, ptr %60, align 8, !tbaa !29
  %109 = sext i32 %108 to i64
  %110 = icmp slt i64 %89, %109
  br i1 %110, label %88, label %111, !llvm.loop !41

111:                                              ; preds = %105, %82
  %112 = add nuw nsw i64 %62, 1
  %113 = load i32, ptr %55, align 8, !tbaa !30
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %112, %114
  br i1 %115, label %61, label %116, !llvm.loop !42

116:                                              ; preds = %111, %54
  %117 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %118 = load i32, ptr %22, align 4, !tbaa !31
  %119 = icmp eq i32 %118, 0
  %120 = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %3, i64 0, i32 1
  %121 = select i1 %6, ptr @decode_mcu_DC_first, ptr @decode_mcu_AC_first
  %122 = select i1 %6, ptr @decode_mcu_DC_refine, ptr @decode_mcu_AC_refine
  %123 = select i1 %119, ptr %121, ptr %122
  store ptr %123, ptr %120, align 8, !tbaa !43
  %124 = load i32, ptr %117, align 8, !tbaa !30
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %182

126:                                              ; preds = %116
  %127 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %3, i64 0, i32 5
  br label %128

128:                                              ; preds = %126, %176
  %129 = phi i64 [ 0, %126 ], [ %178, %176 ]
  %130 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 63, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !22
  br i1 %6, label %132, label %155

132:                                              ; preds = %128
  %133 = load i32, ptr %22, align 4, !tbaa !31
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %176

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.jpeg_component_info, ptr %131, i64 0, i32 5
  %137 = load i32, ptr %136, align 4, !tbaa !44
  %138 = icmp ugt i32 %137, 3
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  %140 = zext nneg i32 %137 to i64
  %141 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 40, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !22
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %150

144:                                              ; preds = %139, %135
  %145 = load ptr, ptr %0, align 8, !tbaa !33
  %146 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %145, i64 0, i32 5
  store i32 49, ptr %146, align 8, !tbaa !34
  %147 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %145, i64 0, i32 6
  store i32 %137, ptr %147, align 4, !tbaa !36
  %148 = load ptr, ptr %0, align 8, !tbaa !33
  %149 = load ptr, ptr %148, align 8, !tbaa !37
  tail call void %149(ptr noundef nonnull %0) #6
  br label %150

150:                                              ; preds = %144, %139
  %151 = sext i32 %137 to i64
  %152 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 40, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !22
  %154 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %3, i64 0, i32 4, i64 %151
  tail call void @jpeg_make_d_derived_tbl(ptr noundef %0, ptr noundef %153, ptr noundef nonnull %154) #6
  br label %176

155:                                              ; preds = %128
  %156 = getelementptr inbounds %struct.jpeg_component_info, ptr %131, i64 0, i32 6
  %157 = load i32, ptr %156, align 8, !tbaa !45
  %158 = icmp ugt i32 %157, 3
  br i1 %158, label %164, label %159

159:                                              ; preds = %155
  %160 = zext nneg i32 %157 to i64
  %161 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 41, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !22
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %159, %155
  %165 = load ptr, ptr %0, align 8, !tbaa !33
  %166 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %165, i64 0, i32 5
  store i32 49, ptr %166, align 8, !tbaa !34
  %167 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %165, i64 0, i32 6
  store i32 %157, ptr %167, align 4, !tbaa !36
  %168 = load ptr, ptr %0, align 8, !tbaa !33
  %169 = load ptr, ptr %168, align 8, !tbaa !37
  tail call void %169(ptr noundef nonnull %0) #6
  br label %170

170:                                              ; preds = %164, %159
  %171 = sext i32 %157 to i64
  %172 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 41, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !22
  %174 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %3, i64 0, i32 4, i64 %171
  tail call void @jpeg_make_d_derived_tbl(ptr noundef %0, ptr noundef %173, ptr noundef nonnull %174) #6
  %175 = load ptr, ptr %174, align 8, !tbaa !22
  store ptr %175, ptr %127, align 8, !tbaa !46
  br label %176

176:                                              ; preds = %132, %150, %170
  %177 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %3, i64 0, i32 2, i32 1, i64 %129
  store i32 0, ptr %177, align 4, !tbaa !25
  %178 = add nuw nsw i64 %129, 1
  %179 = load i32, ptr %117, align 8, !tbaa !30
  %180 = sext i32 %179 to i64
  %181 = icmp slt i64 %178, %180
  br i1 %181, label %128, label %182, !llvm.loop !47

182:                                              ; preds = %176, %116
  %183 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %3, i64 0, i32 1
  %184 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %183, i8 0, i64 20, i1 false)
  %185 = load i32, ptr %184, align 8, !tbaa !48
  %186 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %3, i64 0, i32 3
  store i32 %185, ptr %186, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @decode_mcu_DC_first(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bitread_working_state, align 8
  %4 = alloca %struct.savable_state, align 4
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 79
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 71
  %8 = load i32, ptr %7, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #6
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 49
  %10 = load i32, ptr %9, align 8, !tbaa !48
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !49
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !50
  %19 = sdiv i32 %18, 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %21, i64 0, i32 8
  %23 = load i32, ptr %22, align 4, !tbaa !52
  %24 = add i32 %23, %19
  store i32 %24, ptr %22, align 4, !tbaa !52
  store i32 0, ptr %17, align 8, !tbaa !50
  %25 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %21, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  %27 = tail call i32 %26(ptr noundef %0) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %178, label %29

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %31 = load i32, ptr %30, align 8, !tbaa !30
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29, %33
  %34 = phi i64 [ %36, %33 ], [ 0, %29 ]
  %35 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 2, i32 1, i64 %34
  store i32 0, ptr %35, align 4, !tbaa !25
  %36 = add nuw nsw i64 %34, 1
  %37 = load i32, ptr %30, align 8, !tbaa !30
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %33, label %40, !llvm.loop !55

40:                                               ; preds = %33, %29
  %41 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 2
  store i32 0, ptr %41, align 8, !tbaa !56
  %42 = load i32, ptr %9, align 8, !tbaa !48
  store i32 %42, ptr %13, align 4, !tbaa !49
  %43 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 1, i32 2
  store i32 0, ptr %43, align 4, !tbaa !57
  br i1 %28, label %178, label %44

44:                                               ; preds = %12, %40, %2
  %45 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 5
  store ptr %0, ptr %45, align 8, !tbaa !58
  %46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !60
  %48 = load ptr, ptr %47, align 8, !tbaa !61
  store ptr %48, ptr %3, align 8, !tbaa !63
  %49 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %47, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !64
  %51 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 1
  store i64 %50, ptr %51, align 8, !tbaa !65
  %52 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 72
  %53 = load i32, ptr %52, align 4, !tbaa !66
  %54 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 2
  store i32 %53, ptr %54, align 8, !tbaa !67
  %55 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !68
  %57 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 1, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !50
  %59 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 1, i32 2
  %60 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 6
  store ptr %59, ptr %60, align 8, !tbaa !69
  %61 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 8 dereferenceable(20) %61, i64 20, i1 false), !tbaa.struct !70
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 66
  %63 = load i32, ptr %62, align 8, !tbaa !71
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %167

65:                                               ; preds = %44
  %66 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %67 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %68 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %69 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %70 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %71 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  br label %72

72:                                               ; preds = %65, %154
  %73 = phi i64 [ 0, %65 ], [ %163, %154 ]
  %74 = phi i32 [ undef, %65 ], [ %160, %154 ]
  %75 = phi i32 [ %58, %65 ], [ %156, %154 ]
  %76 = phi i64 [ %56, %65 ], [ %155, %154 ]
  %77 = getelementptr inbounds ptr, ptr %1, i64 %73
  %78 = load ptr, ptr %77, align 8, !tbaa !22
  %79 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 67, i64 %73
  %80 = load i32, ptr %79, align 4, !tbaa !25
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 63, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !22
  %84 = getelementptr inbounds %struct.jpeg_component_info, ptr %83, i64 0, i32 5
  %85 = load i32, ptr %84, align 4, !tbaa !44
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 4, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !22
  %89 = icmp slt i32 %75, 8
  br i1 %89, label %90, label %97

90:                                               ; preds = %72
  %91 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %76, i32 noundef %75, i32 noundef 0) #6
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %121, label %93

93:                                               ; preds = %90
  %94 = load i64, ptr %66, align 8, !tbaa !72
  %95 = load i32, ptr %67, align 8, !tbaa !73
  %96 = icmp slt i32 %95, 8
  br i1 %96, label %112, label %97

97:                                               ; preds = %93, %72
  %98 = phi i64 [ %94, %93 ], [ %76, %72 ]
  %99 = phi i32 [ %95, %93 ], [ %75, %72 ]
  %100 = add nsw i32 %99, -8
  %101 = zext nneg i32 %100 to i64
  %102 = ashr i64 %98, %101
  %103 = and i64 %102, 255
  %104 = getelementptr inbounds %struct.d_derived_tbl, ptr %88, i64 0, i32 4, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !25
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %97
  %108 = sub nsw i32 %99, %105
  %109 = getelementptr inbounds %struct.d_derived_tbl, ptr %88, i64 0, i32 5, i64 %103
  %110 = load i8, ptr %109, align 1, !tbaa !36
  %111 = zext i8 %110 to i32
  br label %121

112:                                              ; preds = %97, %93
  %113 = phi i64 [ %94, %93 ], [ %98, %97 ]
  %114 = phi i32 [ %95, %93 ], [ %99, %97 ]
  %115 = phi i32 [ 1, %93 ], [ 9, %97 ]
  %116 = call i32 @jpeg_huff_decode(ptr noundef nonnull %3, i64 noundef %113, i32 noundef %114, ptr noundef %88, i32 noundef %115) #6
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %112
  %119 = load i64, ptr %68, align 8, !tbaa !72
  %120 = load i32, ptr %69, align 8, !tbaa !73
  br label %121

121:                                              ; preds = %107, %118, %112, %90
  %122 = phi i64 [ %76, %90 ], [ %113, %112 ], [ %119, %118 ], [ %98, %107 ]
  %123 = phi i32 [ %75, %90 ], [ %114, %112 ], [ %120, %118 ], [ %108, %107 ]
  %124 = phi i32 [ %74, %90 ], [ %116, %112 ], [ %116, %118 ], [ %111, %107 ]
  %125 = phi i1 [ false, %90 ], [ false, %112 ], [ true, %118 ], [ true, %107 ]
  br i1 %125, label %126, label %178

126:                                              ; preds = %121
  %127 = icmp eq i32 %124, 0
  br i1 %127, label %154, label %128

128:                                              ; preds = %126
  %129 = icmp slt i32 %123, %124
  br i1 %129, label %130, label %136

130:                                              ; preds = %128
  %131 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %122, i32 noundef %123, i32 noundef %124) #6
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %178, label %133

133:                                              ; preds = %130
  %134 = load i64, ptr %70, align 8, !tbaa !72
  %135 = load i32, ptr %71, align 8, !tbaa !73
  br label %136

136:                                              ; preds = %133, %128
  %137 = phi i64 [ %134, %133 ], [ %122, %128 ]
  %138 = phi i32 [ %135, %133 ], [ %123, %128 ]
  %139 = sub nsw i32 %138, %124
  %140 = zext nneg i32 %139 to i64
  %141 = ashr i64 %137, %140
  %142 = trunc i64 %141 to i32
  %143 = shl nsw i32 -1, %124
  %144 = xor i32 %143, -1
  %145 = and i32 %142, %144
  %146 = sext i32 %124 to i64
  %147 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !25
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %136
  %151 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %146
  %152 = load i32, ptr %151, align 4, !tbaa !25
  %153 = add nsw i32 %152, %145
  br label %154

154:                                              ; preds = %150, %136, %126
  %155 = phi i64 [ %122, %126 ], [ %137, %136 ], [ %137, %150 ]
  %156 = phi i32 [ %123, %126 ], [ %139, %136 ], [ %139, %150 ]
  %157 = phi i32 [ 0, %126 ], [ %145, %136 ], [ %153, %150 ]
  %158 = getelementptr inbounds %struct.savable_state, ptr %4, i64 0, i32 1, i64 %81
  %159 = load i32, ptr %158, align 4, !tbaa !25
  %160 = add nsw i32 %159, %157
  store i32 %160, ptr %158, align 4, !tbaa !25
  %161 = shl i32 %160, %8
  %162 = trunc i32 %161 to i16
  store i16 %162, ptr %78, align 2, !tbaa !74
  %163 = add nuw nsw i64 %73, 1
  %164 = load i32, ptr %62, align 8, !tbaa !71
  %165 = sext i32 %164 to i64
  %166 = icmp slt i64 %163, %165
  br i1 %166, label %72, label %167, !llvm.loop !75

167:                                              ; preds = %154, %44
  %168 = phi i64 [ %56, %44 ], [ %155, %154 ]
  %169 = phi i32 [ %58, %44 ], [ %156, %154 ]
  %170 = load ptr, ptr %3, align 8, !tbaa !63
  %171 = load ptr, ptr %46, align 8, !tbaa !60
  store ptr %170, ptr %171, align 8, !tbaa !61
  %172 = load i64, ptr %51, align 8, !tbaa !65
  %173 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %171, i64 0, i32 1
  store i64 %172, ptr %173, align 8, !tbaa !64
  %174 = load i32, ptr %54, align 8, !tbaa !67
  store i32 %174, ptr %52, align 4, !tbaa !66
  store i64 %168, ptr %55, align 8, !tbaa !68
  store i32 %169, ptr %57, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %61, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !70
  %175 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 3
  %176 = load i32, ptr %175, align 4, !tbaa !49
  %177 = add i32 %176, -1
  store i32 %177, ptr %175, align 4, !tbaa !49
  br label %178

178:                                              ; preds = %130, %121, %16, %40, %167
  %179 = phi i32 [ 1, %167 ], [ 0, %40 ], [ 0, %16 ], [ 0, %121 ], [ 0, %130 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #6
  ret i32 %179
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @decode_mcu_AC_first(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bitread_working_state, align 8
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 79
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 69
  %7 = load i32, ptr %6, align 8, !tbaa !29
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 71
  %9 = load i32, ptr %8, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #6
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 49
  %11 = load i32, ptr %10, align 8, !tbaa !48
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %45, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !49
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 1, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !50
  %20 = sdiv i32 %19, 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %22, i64 0, i32 8
  %24 = load i32, ptr %23, align 4, !tbaa !52
  %25 = add i32 %24, %20
  store i32 %25, ptr %23, align 4, !tbaa !52
  store i32 0, ptr %18, align 8, !tbaa !50
  %26 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %22, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = tail call i32 %27(ptr noundef %0) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %216, label %30

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %32 = load i32, ptr %31, align 8, !tbaa !30
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30, %34
  %35 = phi i64 [ %37, %34 ], [ 0, %30 ]
  %36 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 2, i32 1, i64 %35
  store i32 0, ptr %36, align 4, !tbaa !25
  %37 = add nuw nsw i64 %35, 1
  %38 = load i32, ptr %31, align 8, !tbaa !30
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %34, label %41, !llvm.loop !55

41:                                               ; preds = %34, %30
  %42 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 2
  store i32 0, ptr %42, align 8, !tbaa !56
  %43 = load i32, ptr %10, align 8, !tbaa !48
  store i32 %43, ptr %14, align 4, !tbaa !49
  %44 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 1, i32 2
  store i32 0, ptr %44, align 4, !tbaa !57
  br i1 %29, label %216, label %45

45:                                               ; preds = %13, %41, %2
  %46 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !56
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = add i32 %47, -1
  br label %211

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 5
  store ptr %0, ptr %52, align 8, !tbaa !58
  %53 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !60
  %55 = load ptr, ptr %54, align 8, !tbaa !61
  store ptr %55, ptr %3, align 8, !tbaa !63
  %56 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %54, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !64
  %58 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 1
  store i64 %57, ptr %58, align 8, !tbaa !65
  %59 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 72
  %60 = load i32, ptr %59, align 4, !tbaa !66
  %61 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 2
  store i32 %60, ptr %61, align 8, !tbaa !67
  %62 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !68
  %64 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 1, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !50
  %66 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 1, i32 2
  %67 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 6
  store ptr %66, ptr %67, align 8, !tbaa !69
  %68 = load ptr, ptr %1, align 8, !tbaa !22
  %69 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !46
  %71 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 68
  %72 = load i32, ptr %71, align 4, !tbaa !28
  %73 = icmp sgt i32 %72, %7
  br i1 %73, label %202, label %74

74:                                               ; preds = %51
  %75 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %76 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %77 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %78 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %79 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %80 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  br label %81

81:                                               ; preds = %74, %195
  %82 = phi i32 [ undef, %74 ], [ %199, %195 ]
  %83 = phi i32 [ %65, %74 ], [ %198, %195 ]
  %84 = phi i64 [ %63, %74 ], [ %197, %195 ]
  %85 = phi i32 [ %72, %74 ], [ %200, %195 ]
  %86 = icmp slt i32 %83, 8
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %84, i32 noundef %83, i32 noundef 0) #6
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %118, label %90

90:                                               ; preds = %87
  %91 = load i64, ptr %75, align 8, !tbaa !72
  %92 = load i32, ptr %76, align 8, !tbaa !73
  %93 = icmp slt i32 %92, 8
  br i1 %93, label %109, label %94

94:                                               ; preds = %90, %81
  %95 = phi i64 [ %91, %90 ], [ %84, %81 ]
  %96 = phi i32 [ %92, %90 ], [ %83, %81 ]
  %97 = add nsw i32 %96, -8
  %98 = zext nneg i32 %97 to i64
  %99 = ashr i64 %95, %98
  %100 = and i64 %99, 255
  %101 = getelementptr inbounds %struct.d_derived_tbl, ptr %70, i64 0, i32 4, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !25
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %94
  %105 = sub nsw i32 %96, %102
  %106 = getelementptr inbounds %struct.d_derived_tbl, ptr %70, i64 0, i32 5, i64 %100
  %107 = load i8, ptr %106, align 1, !tbaa !36
  %108 = zext i8 %107 to i32
  br label %118

109:                                              ; preds = %94, %90
  %110 = phi i64 [ %91, %90 ], [ %95, %94 ]
  %111 = phi i32 [ %92, %90 ], [ %96, %94 ]
  %112 = phi i32 [ 1, %90 ], [ 9, %94 ]
  %113 = call i32 @jpeg_huff_decode(ptr noundef nonnull %3, i64 noundef %110, i32 noundef %111, ptr noundef %70, i32 noundef %112) #6
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %109
  %116 = load i64, ptr %77, align 8, !tbaa !72
  %117 = load i32, ptr %78, align 8, !tbaa !73
  br label %118

118:                                              ; preds = %104, %115, %109, %87
  %119 = phi i64 [ %84, %87 ], [ %110, %109 ], [ %116, %115 ], [ %95, %104 ]
  %120 = phi i32 [ %83, %87 ], [ %111, %109 ], [ %117, %115 ], [ %105, %104 ]
  %121 = phi i32 [ %82, %87 ], [ %113, %109 ], [ %113, %115 ], [ %108, %104 ]
  %122 = phi i1 [ false, %87 ], [ false, %109 ], [ true, %115 ], [ true, %104 ]
  br i1 %122, label %123, label %216

123:                                              ; preds = %118
  %124 = ashr i32 %121, 4
  %125 = and i32 %121, 15
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %163, label %127

127:                                              ; preds = %123
  %128 = add nsw i32 %124, %85
  %129 = icmp slt i32 %120, %125
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %119, i32 noundef %120, i32 noundef %125) #6
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %216, label %133

133:                                              ; preds = %130
  %134 = load i64, ptr %79, align 8, !tbaa !72
  %135 = load i32, ptr %80, align 8, !tbaa !73
  br label %136

136:                                              ; preds = %133, %127
  %137 = phi i64 [ %134, %133 ], [ %119, %127 ]
  %138 = phi i32 [ %135, %133 ], [ %120, %127 ]
  %139 = sub nsw i32 %138, %125
  %140 = zext nneg i32 %139 to i64
  %141 = ashr i64 %137, %140
  %142 = trunc i64 %141 to i32
  %143 = shl nsw i32 -1, %125
  %144 = xor i32 %143, -1
  %145 = and i32 %142, %144
  %146 = zext nneg i32 %125 to i64
  %147 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !25
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %136
  %151 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %146
  %152 = load i32, ptr %151, align 4, !tbaa !25
  %153 = add nsw i32 %152, %145
  br label %154

154:                                              ; preds = %136, %150
  %155 = phi i32 [ %153, %150 ], [ %145, %136 ]
  %156 = shl i32 %155, %9
  %157 = trunc i32 %156 to i16
  %158 = sext i32 %128 to i64
  %159 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !25
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [64 x i16], ptr %68, i64 0, i64 %161
  store i16 %157, ptr %162, align 2, !tbaa !74
  br label %195

163:                                              ; preds = %123
  %164 = icmp eq i32 %124, 15
  br i1 %164, label %165, label %167

165:                                              ; preds = %163
  %166 = add nsw i32 %85, 15
  br label %195

167:                                              ; preds = %163
  %168 = shl nuw i32 1, %124
  %169 = icmp ult i32 %121, 16
  br i1 %169, label %190, label %170

170:                                              ; preds = %167
  %171 = icmp slt i32 %120, %124
  br i1 %171, label %172, label %180

172:                                              ; preds = %170
  %173 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %119, i32 noundef %120, i32 noundef %124) #6
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %216, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %177 = load i64, ptr %176, align 8, !tbaa !72
  %178 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %179 = load i32, ptr %178, align 8, !tbaa !73
  br label %180

180:                                              ; preds = %175, %170
  %181 = phi i64 [ %177, %175 ], [ %119, %170 ]
  %182 = phi i32 [ %179, %175 ], [ %120, %170 ]
  %183 = sub nsw i32 %182, %124
  %184 = zext nneg i32 %183 to i64
  %185 = ashr i64 %181, %184
  %186 = trunc i64 %185 to i32
  %187 = add nsw i32 %168, -1
  %188 = and i32 %187, %186
  %189 = add i32 %188, %168
  br label %190

190:                                              ; preds = %180, %167
  %191 = phi i32 [ %189, %180 ], [ %168, %167 ]
  %192 = phi i64 [ %181, %180 ], [ %119, %167 ]
  %193 = phi i32 [ %183, %180 ], [ %120, %167 ]
  %194 = add i32 %191, -1
  br label %202

195:                                              ; preds = %154, %165
  %196 = phi i32 [ %128, %154 ], [ %166, %165 ]
  %197 = phi i64 [ %137, %154 ], [ %119, %165 ]
  %198 = phi i32 [ %139, %154 ], [ %120, %165 ]
  %199 = phi i32 [ %155, %154 ], [ 0, %165 ]
  %200 = add nsw i32 %196, 1
  %201 = icmp slt i32 %196, %7
  br i1 %201, label %81, label %202, !llvm.loop !76

202:                                              ; preds = %195, %51, %190
  %203 = phi i32 [ %194, %190 ], [ 0, %51 ], [ 0, %195 ]
  %204 = phi i64 [ %192, %190 ], [ %63, %51 ], [ %197, %195 ]
  %205 = phi i32 [ %193, %190 ], [ %65, %51 ], [ %198, %195 ]
  %206 = load ptr, ptr %3, align 8, !tbaa !63
  %207 = load ptr, ptr %53, align 8, !tbaa !60
  store ptr %206, ptr %207, align 8, !tbaa !61
  %208 = load i64, ptr %58, align 8, !tbaa !65
  %209 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %207, i64 0, i32 1
  store i64 %208, ptr %209, align 8, !tbaa !64
  %210 = load i32, ptr %61, align 8, !tbaa !67
  store i32 %210, ptr %59, align 4, !tbaa !66
  store i64 %204, ptr %62, align 8, !tbaa !68
  store i32 %205, ptr %64, align 8, !tbaa !50
  br label %211

211:                                              ; preds = %202, %49
  %212 = phi i32 [ %50, %49 ], [ %203, %202 ]
  store i32 %212, ptr %46, align 8, !tbaa !56
  %213 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 3
  %214 = load i32, ptr %213, align 4, !tbaa !49
  %215 = add i32 %214, -1
  store i32 %215, ptr %213, align 4, !tbaa !49
  br label %216

216:                                              ; preds = %130, %118, %17, %172, %41, %211
  %217 = phi i32 [ 1, %211 ], [ 0, %41 ], [ 0, %172 ], [ 0, %17 ], [ 0, %118 ], [ 0, %130 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #6
  ret i32 %217
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @decode_mcu_DC_refine(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bitread_working_state, align 8
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 79
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 71
  %7 = load i32, ptr %6, align 8, !tbaa !32
  %8 = shl nuw i32 1, %7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #6
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 49
  %10 = load i32, ptr %9, align 8, !tbaa !48
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !49
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !50
  %19 = sdiv i32 %18, 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %21, i64 0, i32 8
  %23 = load i32, ptr %22, align 4, !tbaa !52
  %24 = add i32 %23, %19
  store i32 %24, ptr %22, align 4, !tbaa !52
  store i32 0, ptr %17, align 8, !tbaa !50
  %25 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %21, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  %27 = tail call i32 %26(ptr noundef %0) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %108, label %29

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %31 = load i32, ptr %30, align 8, !tbaa !30
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29, %33
  %34 = phi i64 [ %36, %33 ], [ 0, %29 ]
  %35 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 2, i32 1, i64 %34
  store i32 0, ptr %35, align 4, !tbaa !25
  %36 = add nuw nsw i64 %34, 1
  %37 = load i32, ptr %30, align 8, !tbaa !30
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %33, label %40, !llvm.loop !55

40:                                               ; preds = %33, %29
  %41 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 2
  store i32 0, ptr %41, align 8, !tbaa !56
  %42 = load i32, ptr %9, align 8, !tbaa !48
  store i32 %42, ptr %13, align 4, !tbaa !49
  %43 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 1, i32 2
  store i32 0, ptr %43, align 4, !tbaa !57
  br i1 %28, label %108, label %44

44:                                               ; preds = %12, %40, %2
  %45 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 5
  store ptr %0, ptr %45, align 8, !tbaa !58
  %46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !60
  %48 = load ptr, ptr %47, align 8, !tbaa !61
  store ptr %48, ptr %3, align 8, !tbaa !63
  %49 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %47, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !64
  %51 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 1
  store i64 %50, ptr %51, align 8, !tbaa !65
  %52 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 72
  %53 = load i32, ptr %52, align 4, !tbaa !66
  %54 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 2
  store i32 %53, ptr %54, align 8, !tbaa !67
  %55 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !68
  %57 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 1, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !50
  %59 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 1, i32 2
  %60 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 6
  store ptr %59, ptr %60, align 8, !tbaa !69
  %61 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 66
  %62 = load i32, ptr %61, align 8, !tbaa !71
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %97

64:                                               ; preds = %44
  %65 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %66 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %67 = trunc i32 %8 to i16
  br label %68

68:                                               ; preds = %64, %92
  %69 = phi i64 [ 0, %64 ], [ %93, %92 ]
  %70 = phi i32 [ %58, %64 ], [ %84, %92 ]
  %71 = phi i64 [ %56, %64 ], [ %82, %92 ]
  %72 = getelementptr inbounds ptr, ptr %1, i64 %69
  %73 = load ptr, ptr %72, align 8, !tbaa !22
  %74 = icmp slt i32 %70, 1
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %71, i32 noundef %70, i32 noundef 1) #6
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %108, label %78

78:                                               ; preds = %75
  %79 = load i64, ptr %65, align 8, !tbaa !72
  %80 = load i32, ptr %66, align 8, !tbaa !73
  br label %81

81:                                               ; preds = %78, %68
  %82 = phi i64 [ %79, %78 ], [ %71, %68 ]
  %83 = phi i32 [ %80, %78 ], [ %70, %68 ]
  %84 = add nsw i32 %83, -1
  %85 = zext nneg i32 %84 to i64
  %86 = shl nuw i64 1, %85
  %87 = and i64 %86, %82
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %81
  %90 = load i16, ptr %73, align 2, !tbaa !74
  %91 = or i16 %90, %67
  store i16 %91, ptr %73, align 2, !tbaa !74
  br label %92

92:                                               ; preds = %81, %89
  %93 = add nuw nsw i64 %69, 1
  %94 = load i32, ptr %61, align 8, !tbaa !71
  %95 = sext i32 %94 to i64
  %96 = icmp slt i64 %93, %95
  br i1 %96, label %68, label %97, !llvm.loop !77

97:                                               ; preds = %92, %44
  %98 = phi i64 [ %56, %44 ], [ %82, %92 ]
  %99 = phi i32 [ %58, %44 ], [ %84, %92 ]
  %100 = load ptr, ptr %3, align 8, !tbaa !63
  %101 = load ptr, ptr %46, align 8, !tbaa !60
  store ptr %100, ptr %101, align 8, !tbaa !61
  %102 = load i64, ptr %51, align 8, !tbaa !65
  %103 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %101, i64 0, i32 1
  store i64 %102, ptr %103, align 8, !tbaa !64
  %104 = load i32, ptr %54, align 8, !tbaa !67
  store i32 %104, ptr %52, align 4, !tbaa !66
  store i64 %98, ptr %55, align 8, !tbaa !68
  store i32 %99, ptr %57, align 8, !tbaa !50
  %105 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %5, i64 0, i32 3
  %106 = load i32, ptr %105, align 4, !tbaa !49
  %107 = add i32 %106, -1
  store i32 %107, ptr %105, align 4, !tbaa !49
  br label %108

108:                                              ; preds = %75, %16, %40, %97
  %109 = phi i32 [ 1, %97 ], [ 0, %40 ], [ 0, %16 ], [ 0, %75 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #6
  ret i32 %109
}

; Function Attrs: nounwind uwtable
define internal i32 @decode_mcu_AC_refine(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.bitread_working_state, align 8
  %4 = alloca [64 x i32], align 16
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 79
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 69
  %8 = load i32, ptr %7, align 8, !tbaa !29
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 71
  %10 = load i32, ptr %9, align 8, !tbaa !32
  %11 = shl nuw i32 1, %10
  %12 = shl nsw i32 -1, %10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #6
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 49
  %14 = load i32, ptr %13, align 8, !tbaa !48
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %48, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !49
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 1, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !50
  %23 = sdiv i32 %22, 8
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 78
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  %26 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %25, i64 0, i32 8
  %27 = load i32, ptr %26, align 4, !tbaa !52
  %28 = add i32 %27, %23
  store i32 %28, ptr %26, align 4, !tbaa !52
  store i32 0, ptr %21, align 8, !tbaa !50
  %29 = getelementptr inbounds %struct.jpeg_marker_reader, ptr %25, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = tail call i32 %30(ptr noundef %0) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %337, label %33

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %35 = load i32, ptr %34, align 8, !tbaa !30
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33, %37
  %38 = phi i64 [ %40, %37 ], [ 0, %33 ]
  %39 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 2, i32 1, i64 %38
  store i32 0, ptr %39, align 4, !tbaa !25
  %40 = add nuw nsw i64 %38, 1
  %41 = load i32, ptr %34, align 8, !tbaa !30
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %37, label %44, !llvm.loop !55

44:                                               ; preds = %37, %33
  %45 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 2
  store i32 0, ptr %45, align 8, !tbaa !56
  %46 = load i32, ptr %13, align 8, !tbaa !48
  store i32 %46, ptr %17, align 4, !tbaa !49
  %47 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 1, i32 2
  store i32 0, ptr %47, align 4, !tbaa !57
  br i1 %32, label %337, label %48

48:                                               ; preds = %16, %44, %2
  %49 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 5
  store ptr %0, ptr %49, align 8, !tbaa !58
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !60
  %52 = load ptr, ptr %51, align 8, !tbaa !61
  store ptr %52, ptr %3, align 8, !tbaa !63
  %53 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %51, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !64
  %55 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 1
  store i64 %54, ptr %55, align 8, !tbaa !65
  %56 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 72
  %57 = load i32, ptr %56, align 4, !tbaa !66
  %58 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 2
  store i32 %57, ptr %58, align 8, !tbaa !67
  %59 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !68
  %61 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 1, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !50
  %63 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 1, i32 2
  %64 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 6
  store ptr %63, ptr %64, align 8, !tbaa !69
  %65 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !56
  %67 = load ptr, ptr %1, align 8, !tbaa !22
  %68 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 5
  %69 = load ptr, ptr %68, align 8, !tbaa !46
  %70 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 68
  %71 = load i32, ptr %70, align 4, !tbaa !28
  %72 = icmp ne i32 %66, 0
  %73 = icmp sgt i32 %71, %8
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %252, label %75

75:                                               ; preds = %48
  %76 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %77 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %78 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %79 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %80 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %81 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %82 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %83 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %84 = sext i32 %8 to i64
  br label %85

85:                                               ; preds = %75, %248
  %86 = phi i32 [ undef, %75 ], [ %181, %248 ]
  %87 = phi i32 [ 0, %75 ], [ %249, %248 ]
  %88 = phi i32 [ %71, %75 ], [ %250, %248 ]
  %89 = phi i32 [ %62, %75 ], [ %235, %248 ]
  %90 = phi i64 [ %60, %75 ], [ %234, %248 ]
  %91 = icmp slt i32 %89, 8
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %90, i32 noundef %89, i32 noundef 0) #6
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %123, label %95

95:                                               ; preds = %92
  %96 = load i64, ptr %76, align 8, !tbaa !72
  %97 = load i32, ptr %77, align 8, !tbaa !73
  %98 = icmp slt i32 %97, 8
  br i1 %98, label %114, label %99

99:                                               ; preds = %95, %85
  %100 = phi i64 [ %96, %95 ], [ %90, %85 ]
  %101 = phi i32 [ %97, %95 ], [ %89, %85 ]
  %102 = add nsw i32 %101, -8
  %103 = zext nneg i32 %102 to i64
  %104 = ashr i64 %100, %103
  %105 = and i64 %104, 255
  %106 = getelementptr inbounds %struct.d_derived_tbl, ptr %69, i64 0, i32 4, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !25
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %99
  %110 = sub nsw i32 %101, %107
  %111 = getelementptr inbounds %struct.d_derived_tbl, ptr %69, i64 0, i32 5, i64 %105
  %112 = load i8, ptr %111, align 1, !tbaa !36
  %113 = zext i8 %112 to i32
  br label %123

114:                                              ; preds = %99, %95
  %115 = phi i64 [ %96, %95 ], [ %100, %99 ]
  %116 = phi i32 [ %97, %95 ], [ %101, %99 ]
  %117 = phi i32 [ 1, %95 ], [ 9, %99 ]
  %118 = call i32 @jpeg_huff_decode(ptr noundef nonnull %3, i64 noundef %115, i32 noundef %116, ptr noundef %69, i32 noundef %117) #6
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = load i64, ptr %78, align 8, !tbaa !72
  %122 = load i32, ptr %79, align 8, !tbaa !73
  br label %123

123:                                              ; preds = %109, %120, %114, %92
  %124 = phi i64 [ %90, %92 ], [ %115, %114 ], [ %121, %120 ], [ %100, %109 ]
  %125 = phi i32 [ %89, %92 ], [ %116, %114 ], [ %122, %120 ], [ %110, %109 ]
  %126 = phi i32 [ 5, %92 ], [ 5, %114 ], [ 0, %120 ], [ 0, %109 ]
  %127 = phi i32 [ %86, %92 ], [ %118, %114 ], [ %118, %120 ], [ %113, %109 ]
  switch i32 %126, label %337 [
    i32 0, label %128
    i32 5, label %324
  ]

128:                                              ; preds = %123
  %129 = ashr i32 %127, 4
  %130 = and i32 %127, 15
  switch i32 %130, label %131 [
    i32 0, label %153
    i32 1, label %136
  ]

131:                                              ; preds = %128
  %132 = load ptr, ptr %0, align 8, !tbaa !33
  %133 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %132, i64 0, i32 5
  store i32 114, ptr %133, align 8, !tbaa !34
  %134 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %132, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !40
  call void %135(ptr noundef nonnull %0, i32 noundef -1) #6
  br label %136

136:                                              ; preds = %128, %131
  %137 = icmp slt i32 %125, 1
  br i1 %137, label %138, label %144

138:                                              ; preds = %136
  %139 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %124, i32 noundef %125, i32 noundef 1) #6
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %324, label %141

141:                                              ; preds = %138
  %142 = load i64, ptr %80, align 8, !tbaa !72
  %143 = load i32, ptr %81, align 8, !tbaa !73
  br label %144

144:                                              ; preds = %141, %136
  %145 = phi i64 [ %142, %141 ], [ %124, %136 ]
  %146 = phi i32 [ %143, %141 ], [ %125, %136 ]
  %147 = add nsw i32 %146, -1
  %148 = zext nneg i32 %147 to i64
  %149 = shl nuw i64 1, %148
  %150 = and i64 %149, %145
  %151 = icmp eq i64 %150, 0
  %152 = select i1 %151, i32 %12, i32 %11
  br label %178

153:                                              ; preds = %128
  %154 = icmp eq i32 %129, 15
  br i1 %154, label %178, label %155

155:                                              ; preds = %153
  %156 = shl nuw i32 1, %129
  %157 = icmp ult i32 %127, 16
  br i1 %157, label %252, label %158

158:                                              ; preds = %155
  %159 = icmp slt i32 %125, %129
  br i1 %159, label %160, label %168

160:                                              ; preds = %158
  %161 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %124, i32 noundef %125, i32 noundef %129) #6
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %324, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %165 = load i64, ptr %164, align 8, !tbaa !72
  %166 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %167 = load i32, ptr %166, align 8, !tbaa !73
  br label %168

168:                                              ; preds = %163, %158
  %169 = phi i64 [ %165, %163 ], [ %124, %158 ]
  %170 = phi i32 [ %167, %163 ], [ %125, %158 ]
  %171 = sub nsw i32 %170, %129
  %172 = zext nneg i32 %171 to i64
  %173 = ashr i64 %169, %172
  %174 = trunc i64 %173 to i32
  %175 = add nsw i32 %156, -1
  %176 = and i32 %175, %174
  %177 = add i32 %176, %156
  br label %252

178:                                              ; preds = %144, %153
  %179 = phi i64 [ %124, %153 ], [ %145, %144 ]
  %180 = phi i32 [ %125, %153 ], [ %147, %144 ]
  %181 = phi i32 [ 0, %153 ], [ %152, %144 ]
  %182 = sext i32 %88 to i64
  %183 = call i32 @llvm.smax.i32(i32 %88, i32 %8)
  %184 = add i32 %183, 1
  br label %185

185:                                              ; preds = %225, %178
  %186 = phi i64 [ %229, %225 ], [ %182, %178 ]
  %187 = phi i32 [ %226, %225 ], [ %129, %178 ]
  %188 = phi i64 [ %227, %225 ], [ %179, %178 ]
  %189 = phi i32 [ %228, %225 ], [ %180, %178 ]
  %190 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %186
  %191 = load i32, ptr %190, align 4, !tbaa !25
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i16, ptr %67, i64 %192
  %194 = load i16, ptr %193, align 2, !tbaa !74
  %195 = icmp eq i16 %194, 0
  br i1 %195, label %222, label %196

196:                                              ; preds = %185
  %197 = icmp slt i32 %189, 1
  br i1 %197, label %198, label %204

198:                                              ; preds = %196
  %199 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %188, i32 noundef %189, i32 noundef 1) #6
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %324, label %201

201:                                              ; preds = %198
  %202 = load i64, ptr %82, align 8, !tbaa !72
  %203 = load i32, ptr %83, align 8, !tbaa !73
  br label %204

204:                                              ; preds = %201, %196
  %205 = phi i64 [ %202, %201 ], [ %188, %196 ]
  %206 = phi i32 [ %203, %201 ], [ %189, %196 ]
  %207 = add nsw i32 %206, -1
  %208 = zext nneg i32 %207 to i64
  %209 = shl nuw i64 1, %208
  %210 = and i64 %209, %205
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %225, label %212

212:                                              ; preds = %204
  %213 = load i16, ptr %193, align 2, !tbaa !74
  %214 = sext i16 %213 to i32
  %215 = and i32 %11, %214
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %212
  %218 = icmp slt i16 %213, 0
  %219 = select i1 %218, i32 %12, i32 %11
  %220 = trunc i32 %219 to i16
  %221 = add i16 %213, %220
  store i16 %221, ptr %193, align 2, !tbaa !74
  br label %225

222:                                              ; preds = %185
  %223 = add nsw i32 %187, -1
  %224 = icmp slt i32 %187, 1
  br i1 %224, label %231, label %225

225:                                              ; preds = %217, %222, %204, %212
  %226 = phi i32 [ %187, %212 ], [ %187, %204 ], [ %223, %222 ], [ %187, %217 ]
  %227 = phi i64 [ %205, %212 ], [ %205, %204 ], [ %188, %222 ], [ %205, %217 ]
  %228 = phi i32 [ %207, %212 ], [ %207, %204 ], [ %189, %222 ], [ %207, %217 ]
  %229 = add nsw i64 %186, 1
  %230 = icmp slt i64 %186, %84
  br i1 %230, label %185, label %233, !llvm.loop !78

231:                                              ; preds = %222
  %232 = trunc i64 %186 to i32
  br label %233

233:                                              ; preds = %225, %231
  %234 = phi i64 [ %188, %231 ], [ %227, %225 ]
  %235 = phi i32 [ %189, %231 ], [ %228, %225 ]
  %236 = phi i32 [ %232, %231 ], [ %184, %225 ]
  %237 = icmp eq i32 %181, 0
  br i1 %237, label %248, label %238

238:                                              ; preds = %233
  %239 = sext i32 %236 to i64
  %240 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !25
  %242 = trunc i32 %181 to i16
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds [64 x i16], ptr %67, i64 0, i64 %243
  store i16 %242, ptr %244, align 2, !tbaa !74
  %245 = add nsw i32 %87, 1
  %246 = sext i32 %87 to i64
  %247 = getelementptr inbounds [64 x i32], ptr %4, i64 0, i64 %246
  store i32 %241, ptr %247, align 4, !tbaa !25
  br label %248

248:                                              ; preds = %233, %238
  %249 = phi i32 [ %245, %238 ], [ %87, %233 ]
  %250 = add nsw i32 %236, 1
  %251 = icmp slt i32 %236, %8
  br i1 %251, label %85, label %252, !llvm.loop !79

252:                                              ; preds = %248, %168, %155, %48
  %253 = phi i32 [ %177, %168 ], [ %156, %155 ], [ %66, %48 ], [ %66, %248 ]
  %254 = phi i64 [ %169, %168 ], [ %124, %155 ], [ %60, %48 ], [ %234, %248 ]
  %255 = phi i32 [ %171, %168 ], [ %125, %155 ], [ %62, %48 ], [ %235, %248 ]
  %256 = phi i32 [ %88, %168 ], [ %88, %155 ], [ %71, %48 ], [ %250, %248 ]
  %257 = phi i32 [ %87, %168 ], [ %87, %155 ], [ 0, %48 ], [ %249, %248 ]
  %258 = icmp eq i32 %253, 0
  br i1 %258, label %312, label %259

259:                                              ; preds = %252
  %260 = icmp sgt i32 %256, %8
  br i1 %260, label %308, label %261

261:                                              ; preds = %259
  %262 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 3
  %263 = getelementptr inbounds %struct.bitread_working_state, ptr %3, i64 0, i32 4
  %264 = sext i32 %256 to i64
  %265 = add i32 %8, 1
  br label %266

266:                                              ; preds = %261, %302
  %267 = phi i64 [ %264, %261 ], [ %305, %302 ]
  %268 = phi i32 [ %255, %261 ], [ %304, %302 ]
  %269 = phi i64 [ %254, %261 ], [ %303, %302 ]
  %270 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %267
  %271 = load i32, ptr %270, align 4, !tbaa !25
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i16, ptr %67, i64 %272
  %274 = load i16, ptr %273, align 2, !tbaa !74
  %275 = icmp eq i16 %274, 0
  br i1 %275, label %302, label %276

276:                                              ; preds = %266
  %277 = icmp slt i32 %268, 1
  br i1 %277, label %278, label %284

278:                                              ; preds = %276
  %279 = call i32 @jpeg_fill_bit_buffer(ptr noundef nonnull %3, i64 noundef %269, i32 noundef %268, i32 noundef 1) #6
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %324, label %281

281:                                              ; preds = %278
  %282 = load i64, ptr %262, align 8, !tbaa !72
  %283 = load i32, ptr %263, align 8, !tbaa !73
  br label %284

284:                                              ; preds = %281, %276
  %285 = phi i64 [ %282, %281 ], [ %269, %276 ]
  %286 = phi i32 [ %283, %281 ], [ %268, %276 ]
  %287 = add nsw i32 %286, -1
  %288 = zext nneg i32 %287 to i64
  %289 = shl nuw i64 1, %288
  %290 = and i64 %289, %285
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %302, label %292

292:                                              ; preds = %284
  %293 = load i16, ptr %273, align 2, !tbaa !74
  %294 = sext i16 %293 to i32
  %295 = and i32 %11, %294
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %292
  %298 = icmp slt i16 %293, 0
  %299 = select i1 %298, i32 %12, i32 %11
  %300 = trunc i32 %299 to i16
  %301 = add i16 %293, %300
  store i16 %301, ptr %273, align 2, !tbaa !74
  br label %302

302:                                              ; preds = %297, %266, %292, %284
  %303 = phi i64 [ %285, %292 ], [ %285, %284 ], [ %269, %266 ], [ %285, %297 ]
  %304 = phi i32 [ %287, %292 ], [ %287, %284 ], [ %268, %266 ], [ %287, %297 ]
  %305 = add nsw i64 %267, 1
  %306 = trunc i64 %305 to i32
  %307 = icmp eq i32 %265, %306
  br i1 %307, label %308, label %266, !llvm.loop !80

308:                                              ; preds = %302, %259
  %309 = phi i64 [ %254, %259 ], [ %303, %302 ]
  %310 = phi i32 [ %255, %259 ], [ %304, %302 ]
  %311 = add i32 %253, -1
  br label %312

312:                                              ; preds = %308, %252
  %313 = phi i32 [ %311, %308 ], [ 0, %252 ]
  %314 = phi i64 [ %309, %308 ], [ %254, %252 ]
  %315 = phi i32 [ %310, %308 ], [ %255, %252 ]
  %316 = load ptr, ptr %3, align 8, !tbaa !63
  %317 = load ptr, ptr %50, align 8, !tbaa !60
  store ptr %316, ptr %317, align 8, !tbaa !61
  %318 = load i64, ptr %55, align 8, !tbaa !65
  %319 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %317, i64 0, i32 1
  store i64 %318, ptr %319, align 8, !tbaa !64
  %320 = load i32, ptr %58, align 8, !tbaa !67
  store i32 %320, ptr %56, align 4, !tbaa !66
  store i64 %314, ptr %59, align 8, !tbaa !68
  store i32 %315, ptr %61, align 8, !tbaa !50
  store i32 %313, ptr %65, align 8, !tbaa !56
  %321 = getelementptr inbounds %struct.phuff_entropy_decoder, ptr %6, i64 0, i32 3
  %322 = load i32, ptr %321, align 4, !tbaa !49
  %323 = add i32 %322, -1
  store i32 %323, ptr %321, align 4, !tbaa !49
  br label %337

324:                                              ; preds = %138, %123, %198, %278, %160
  %325 = phi i32 [ %87, %160 ], [ %257, %278 ], [ %87, %198 ], [ %87, %123 ], [ %87, %138 ]
  %326 = icmp sgt i32 %325, 0
  br i1 %326, label %327, label %337

327:                                              ; preds = %324
  %328 = zext nneg i32 %325 to i64
  br label %329

329:                                              ; preds = %327, %329
  %330 = phi i64 [ %328, %327 ], [ %331, %329 ]
  %331 = add nsw i64 %330, -1
  %332 = getelementptr inbounds [64 x i32], ptr %4, i64 0, i64 %331
  %333 = load i32, ptr %332, align 4, !tbaa !25
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [64 x i16], ptr %67, i64 0, i64 %334
  store i16 0, ptr %335, align 2, !tbaa !74
  %336 = icmp sgt i64 %330, 1
  br i1 %336, label %329, label %337, !llvm.loop !81

337:                                              ; preds = %123, %329, %324, %20, %44, %312
  %338 = phi i32 [ 1, %312 ], [ 0, %44 ], [ 0, %20 ], [ 0, %324 ], [ 0, %329 ], [ undef, %123 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #6
  ret i32 %338
}

declare void @jpeg_make_d_derived_tbl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @jpeg_fill_bit_buffer(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @jpeg_huff_decode(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 508, !10, i64 512, !10, i64 516, !10, i64 520, !10, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!6, !7, i64 576}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !20, i64 16, !21, i64 32, !10, i64 52, !8, i64 56, !7, i64 88}
!19 = !{!"jpeg_entropy_decoder", !7, i64 0, !7, i64 8}
!20 = !{!"", !15, i64 0, !10, i64 8, !10, i64 12}
!21 = !{!"", !10, i64 0, !8, i64 4}
!22 = !{!7, !7, i64 0}
!23 = !{!6, !10, i64 48}
!24 = !{!6, !7, i64 184}
!25 = !{!10, !10, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{!6, !10, i64 508}
!29 = !{!6, !10, i64 512}
!30 = !{!6, !10, i64 416}
!31 = !{!6, !10, i64 516}
!32 = !{!6, !10, i64 520}
!33 = !{!6, !7, i64 0}
!34 = !{!35, !10, i64 40}
!35 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!36 = !{!8, !8, i64 0}
!37 = !{!35, !7, i64 0}
!38 = !{!39, !10, i64 4}
!39 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!40 = !{!35, !7, i64 8}
!41 = distinct !{!41, !27}
!42 = distinct !{!42, !27}
!43 = !{!18, !7, i64 8}
!44 = !{!39, !10, i64 20}
!45 = !{!39, !10, i64 24}
!46 = !{!18, !7, i64 88}
!47 = distinct !{!47, !27}
!48 = !{!6, !10, i64 360}
!49 = !{!18, !10, i64 52}
!50 = !{!18, !10, i64 24}
!51 = !{!6, !7, i64 568}
!52 = !{!53, !10, i64 172}
!53 = !{!"jpeg_marker_reader", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172}
!54 = !{!53, !7, i64 16}
!55 = distinct !{!55, !27}
!56 = !{!18, !10, i64 32}
!57 = !{!18, !10, i64 28}
!58 = !{!59, !7, i64 40}
!59 = !{!"", !7, i64 0, !15, i64 8, !10, i64 16, !15, i64 24, !10, i64 32, !7, i64 40, !7, i64 48}
!60 = !{!6, !7, i64 32}
!61 = !{!62, !7, i64 0}
!62 = !{!"jpeg_source_mgr", !7, i64 0, !15, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!63 = !{!59, !7, i64 0}
!64 = !{!62, !15, i64 8}
!65 = !{!59, !15, i64 8}
!66 = !{!6, !10, i64 524}
!67 = !{!59, !10, i64 16}
!68 = !{!18, !15, i64 16}
!69 = !{!59, !7, i64 48}
!70 = !{i64 0, i64 4, !25, i64 4, i64 16, !36}
!71 = !{!6, !10, i64 464}
!72 = !{!59, !15, i64 24}
!73 = !{!59, !10, i64 32}
!74 = !{!12, !12, i64 0}
!75 = distinct !{!75, !27}
!76 = distinct !{!76, !27}
!77 = distinct !{!77, !27}
!78 = distinct !{!78, !27}
!79 = distinct !{!79, !27}
!80 = distinct !{!80, !27}
!81 = distinct !{!81, !27}
