; ModuleID = 'zfdctc.c'
source_filename = "zfdctc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.stream_DCT_state_s = type { ptr, ptr, ptr, %struct.gs_const_string_s, float, i32, i32, %union._jd, i32, i32 }
%struct.gs_const_string_s = type { ptr, i32 }
%union._jd = type { ptr }
%struct.jpeg_compress_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, [1 x %struct.__jmp_buf_tag], i32, i32, %struct.jpeg_compress_struct, %struct.jpeg_destination_mgr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.jpeg_decompress_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, [1 x %struct.__jmp_buf_tag], i32, i32, %struct.jpeg_decompress_struct, %struct.jpeg_source_mgr, i64, i32, i32, ptr, i32 }
%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [64 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_stream_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, [1 x %struct.__jmp_buf_tag], i32, i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }

@.str = private unnamed_addr constant [12 x i8] c"QuantTables\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"HuffTables\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Picky\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Relax\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ColorTransform\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"QFactor\00", align 1
@quant_params.natural_order = internal unnamed_addr constant [64 x i32] [i32 0, i32 1, i32 8, i32 16, i32 9, i32 2, i32 3, i32 10, i32 17, i32 24, i32 32, i32 25, i32 18, i32 11, i32 4, i32 5, i32 12, i32 19, i32 26, i32 33, i32 40, i32 48, i32 41, i32 34, i32 27, i32 20, i32 13, i32 6, i32 7, i32 14, i32 21, i32 28, i32 35, i32 42, i32 49, i32 56, i32 57, i32 50, i32 43, i32 36, i32 29, i32 22, i32 15, i32 23, i32 30, i32 37, i32 44, i32 51, i32 58, i32 59, i32 52, i32 45, i32 38, i32 31, i32 39, i32 46, i32 53, i32 60, i32 61, i32 54, i32 47, i32 55, i32 62, i32 63], align 16

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @zfdct_setup_quantization_tables(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ref_s, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %179, label %8

8:                                                ; preds = %3
  %9 = call i32 @dict_find_string(ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull %5) #4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %179, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %5, align 8, !tbaa !5
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !9
  %15 = icmp eq i8 %14, 4
  br i1 %15, label %16, label %179

16:                                               ; preds = %11
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %20, i64 0, i32 5, i32 12
  %22 = load i32, ptr %21, align 4, !tbaa !10
  %23 = getelementptr inbounds %struct.tas_s, ptr %12, i64 0, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !20
  %25 = zext i16 %24 to i32
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %179, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %20, i64 0, i32 5, i32 14
  %29 = load ptr, ptr %28, align 8, !tbaa !23
  %30 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %20, i64 0, i32 5, i32 15
  br label %38

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.tas_s, ptr %12, i64 0, i32 1
  %33 = load i16, ptr %32, align 2, !tbaa !20
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %1, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !9
  %37 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %36, i64 0, i32 5, i32 39
  br label %38

38:                                               ; preds = %31, %27
  %39 = phi i32 [ %22, %27 ], [ %34, %31 ]
  %40 = phi ptr [ %29, %27 ], [ null, %31 ]
  %41 = phi ptr [ %30, %27 ], [ %37, %31 ]
  %42 = icmp sgt i32 %39, 0
  br i1 %42, label %43, label %179

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ref_s, ptr %12, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !9
  %46 = icmp eq ptr %40, null
  %47 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %1, i64 0, i32 4
  %48 = getelementptr inbounds i8, ptr %4, i64 1
  %49 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  %50 = zext nneg i32 %39 to i64
  br label %51

51:                                               ; preds = %43, %174
  %52 = phi i64 [ 0, %43 ], [ %176, %174 ]
  %53 = phi i32 [ 0, %43 ], [ %175, %174 ]
  %54 = phi ptr [ %45, %43 ], [ %177, %174 ]
  %55 = icmp sgt i32 %53, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %51
  %57 = zext nneg i32 %53 to i64
  %58 = zext nneg i32 %53 to i64
  %59 = load ptr, ptr %6, align 16, !tbaa !5
  %60 = call i32 @obj_eq(ptr noundef %54, ptr noundef %59) #4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %76

62:                                               ; preds = %67
  %63 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 %69
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = call i32 @obj_eq(ptr noundef %54, ptr noundef %64) #4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71, !llvm.loop !24

67:                                               ; preds = %56, %62
  %68 = phi i64 [ %69, %62 ], [ 0, %56 ]
  %69 = add nuw nsw i64 %68, 1
  %70 = icmp eq i64 %69, %58
  br i1 %70, label %74, label %62, !llvm.loop !24

71:                                               ; preds = %62
  %72 = icmp ult i64 %69, %57
  %73 = trunc i64 %69 to i32
  br label %76

74:                                               ; preds = %67
  %75 = icmp ult i64 %69, %57
  br label %76

76:                                               ; preds = %74, %56, %71, %51
  %77 = phi i32 [ 0, %51 ], [ %73, %71 ], [ 0, %56 ], [ %53, %74 ]
  %78 = phi i1 [ %55, %51 ], [ %72, %71 ], [ %55, %56 ], [ %75, %74 ]
  br i1 %46, label %81, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i64 %52, i32 4
  store i32 %77, ptr %80, align 8, !tbaa !26
  br label %81

81:                                               ; preds = %79, %76
  br i1 %78, label %174, label %82

82:                                               ; preds = %81
  %83 = add nsw i32 %53, 1
  %84 = icmp sgt i32 %53, 3
  br i1 %84, label %179, label %85

85:                                               ; preds = %82
  %86 = zext nneg i32 %77 to i64
  %87 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 %86
  store ptr %54, ptr %87, align 8, !tbaa !5
  %88 = getelementptr inbounds ptr, ptr %41, i64 %86
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = call ptr @gs_jpeg_alloc_quant_table(ptr noundef %1) #4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %179, label %94

94:                                               ; preds = %91
  store ptr %92, ptr %88, align 8, !tbaa !5
  br label %95

95:                                               ; preds = %94, %85
  %96 = phi ptr [ %92, %94 ], [ %89, %85 ]
  %97 = getelementptr inbounds %struct.tas_s, ptr %54, i64 0, i32 1
  %98 = load i16, ptr %97, align 2, !tbaa !20
  %99 = icmp eq i16 %98, 64
  br i1 %99, label %100, label %179

100:                                              ; preds = %95
  %101 = load float, ptr %47, align 8, !tbaa !28
  %102 = fpext float %101 to double
  %103 = getelementptr inbounds i8, ptr %54, i64 1
  %104 = load i8, ptr %103, align 1, !tbaa !9
  switch i8 %104, label %171 [
    i8 18, label %105
    i8 4, label %130
    i8 6, label %134
    i8 5, label %134
  ]

105:                                              ; preds = %100
  %106 = load i16, ptr %54, align 8, !tbaa !32
  %107 = and i16 %106, 32
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %171, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.ref_s, ptr %54, i64 0, i32 1
  br label %111

111:                                              ; preds = %111, %109
  %112 = phi i64 [ 0, %109 ], [ %128, %111 ]
  %113 = load ptr, ptr %110, align 8, !tbaa !9
  %114 = getelementptr inbounds i8, ptr %113, i64 %112
  %115 = load i8, ptr %114, align 1, !tbaa !9
  %116 = uitofp i8 %115 to double
  %117 = fmul double %102, %116
  %118 = fcmp olt double %117, 1.000000e+00
  %119 = select i1 %118, double 1.000000e+00, double %117
  %120 = fcmp ogt double %119, 2.550000e+02
  %121 = select i1 %120, double 2.550000e+02, double %119
  %122 = fadd double %121, 5.000000e-01
  %123 = fptoui double %122 to i16
  %124 = getelementptr inbounds [64 x i32], ptr @quant_params.natural_order, i64 0, i64 %112
  %125 = load i32, ptr %124, align 4, !tbaa !33
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i16, ptr %96, i64 %126
  store i16 %123, ptr %127, align 2, !tbaa !34
  %128 = add nuw nsw i64 %112, 1
  %129 = icmp eq i64 %128, 64
  br i1 %129, label %171, label %111, !llvm.loop !35

130:                                              ; preds = %100
  %131 = load i16, ptr %54, align 8, !tbaa !32
  %132 = and i16 %131, 32
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %171, label %138

134:                                              ; preds = %100, %100
  %135 = load i16, ptr %54, align 8, !tbaa !32
  %136 = and i16 %135, 32
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %171, label %138

138:                                              ; preds = %134, %130
  %139 = getelementptr inbounds %struct.ref_s, ptr %54, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !9
  br label %141

141:                                              ; preds = %151, %138
  %142 = phi i64 [ 0, %138 ], [ %168, %151 ]
  %143 = phi ptr [ %140, %138 ], [ %167, %151 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #4
  call void @packed_get(ptr noundef %143, ptr noundef nonnull %4) #4
  %144 = load i8, ptr %48, align 1, !tbaa !9
  switch i8 %144, label %170 [
    i8 11, label %145
    i8 16, label %148
  ]

145:                                              ; preds = %141
  %146 = load i64, ptr %49, align 8, !tbaa !9
  %147 = sitofp i64 %146 to double
  br label %151

148:                                              ; preds = %141
  %149 = load float, ptr %49, align 8, !tbaa !9
  %150 = fpext float %149 to double
  br label %151

151:                                              ; preds = %148, %145
  %152 = phi double [ %150, %148 ], [ %147, %145 ]
  %153 = fmul double %152, %102
  %154 = fcmp olt double %153, 1.000000e+00
  %155 = select i1 %154, double 1.000000e+00, double %153
  %156 = fcmp ogt double %155, 2.550000e+02
  %157 = select i1 %156, double 2.550000e+02, double %155
  %158 = fadd double %157, 5.000000e-01
  %159 = fptoui double %158 to i16
  %160 = getelementptr inbounds [64 x i32], ptr @quant_params.natural_order, i64 0, i64 %142
  %161 = load i32, ptr %160, align 4, !tbaa !33
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i16, ptr %96, i64 %162
  store i16 %159, ptr %163, align 2, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #4
  %164 = load i16, ptr %143, align 2, !tbaa !34
  %165 = icmp ugt i16 %164, 16383
  %166 = select i1 %165, i64 1, i64 8
  %167 = getelementptr inbounds i16, ptr %143, i64 %166
  %168 = add nuw nsw i64 %142, 1
  %169 = icmp eq i64 %168, 64
  br i1 %169, label %171, label %141, !llvm.loop !36

170:                                              ; preds = %141
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #4
  br label %171

171:                                              ; preds = %151, %111, %100, %105, %130, %134, %170
  %172 = phi i1 [ true, %170 ], [ true, %105 ], [ true, %130 ], [ true, %134 ], [ true, %100 ], [ false, %111 ], [ false, %151 ]
  %173 = phi i32 [ -20, %170 ], [ -7, %105 ], [ -7, %130 ], [ -7, %134 ], [ -20, %100 ], [ 0, %111 ], [ 0, %151 ]
  br i1 %172, label %179, label %174

174:                                              ; preds = %171, %81
  %175 = phi i32 [ %53, %81 ], [ %83, %171 ]
  %176 = add nuw nsw i64 %52, 1
  %177 = getelementptr inbounds %struct.ref_s, ptr %54, i64 1
  %178 = icmp eq i64 %176, %50
  br i1 %178, label %179, label %51, !llvm.loop !37

179:                                              ; preds = %82, %91, %95, %171, %174, %38, %18, %11, %3, %8
  %180 = phi i32 [ 0, %8 ], [ 0, %3 ], [ -20, %11 ], [ -15, %18 ], [ 0, %38 ], [ 0, %174 ], [ %173, %171 ], [ -15, %95 ], [ -25, %91 ], [ -15, %82 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  ret i32 %180
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @obj_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gs_jpeg_alloc_quant_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zfdct_setup_huffman_tables(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca [4 x ptr], align 16
  %6 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %195, label %8

8:                                                ; preds = %3
  %9 = call i32 @dict_find_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %195, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %4, align 8, !tbaa !5
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !9
  %15 = icmp eq i8 %14, 4
  br i1 %15, label %16, label %195

16:                                               ; preds = %11
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %20, i64 0, i32 5, i32 8
  %22 = load i32, ptr %21, align 8, !tbaa !38
  %23 = shl nsw i32 %22, 1
  %24 = getelementptr inbounds %struct.tas_s, ptr %12, i64 0, i32 1
  %25 = load i16, ptr %24, align 2, !tbaa !20
  %26 = zext i16 %25 to i32
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %195, label %28

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %20, i64 0, i32 5, i32 14
  %30 = load ptr, ptr %29, align 8, !tbaa !23
  %31 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %20, i64 0, i32 5, i32 16
  %32 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %20, i64 0, i32 5, i32 17
  %33 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %20, i64 0, i32 4
  %34 = load i32, ptr %33, align 4, !tbaa !39
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %28
  %37 = call i32 @llvm.smax.i32(i32 %22, i32 2)
  br label %50

38:                                               ; preds = %16
  %39 = getelementptr inbounds %struct.tas_s, ptr %12, i64 0, i32 1
  %40 = load i16, ptr %39, align 2, !tbaa !20
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %1, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !9
  %44 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %43, i64 0, i32 5, i32 40
  %45 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %43, i64 0, i32 5, i32 41
  %46 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %43, i64 0, i32 4
  %47 = load i32, ptr %46, align 4, !tbaa !39
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 2, i32 4
  br label %50

50:                                               ; preds = %38, %28, %36
  %51 = phi i32 [ %23, %36 ], [ %23, %28 ], [ %41, %38 ]
  %52 = phi ptr [ %30, %36 ], [ %30, %28 ], [ null, %38 ]
  %53 = phi ptr [ %31, %36 ], [ %31, %28 ], [ %44, %38 ]
  %54 = phi ptr [ %32, %36 ], [ %32, %28 ], [ %45, %38 ]
  %55 = phi i32 [ %37, %36 ], [ 2, %28 ], [ %49, %38 ]
  %56 = icmp sgt i32 %51, 0
  br i1 %56, label %57, label %188

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.ref_s, ptr %12, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !9
  %60 = icmp eq ptr %52, null
  %61 = icmp eq ptr %52, null
  br label %62

62:                                               ; preds = %57, %182
  %63 = phi i32 [ 0, %57 ], [ %184, %182 ]
  %64 = phi i32 [ 0, %57 ], [ %183, %182 ]
  %65 = phi ptr [ %59, %57 ], [ %186, %182 ]
  %66 = phi i32 [ 0, %57 ], [ %185, %182 ]
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %62
  %70 = icmp sgt i32 %63, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %69
  %72 = zext nneg i32 %63 to i64
  %73 = zext nneg i32 %63 to i64
  %74 = load ptr, ptr %6, align 16, !tbaa !5
  %75 = call i32 @obj_eq(ptr noundef %65, ptr noundef %74) #4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %90, label %99

77:                                               ; preds = %62
  %78 = icmp sgt i32 %64, 0
  br i1 %78, label %79, label %128

79:                                               ; preds = %77
  %80 = zext nneg i32 %64 to i64
  %81 = zext nneg i32 %64 to i64
  %82 = load ptr, ptr %5, align 16, !tbaa !5
  %83 = call i32 @obj_eq(ptr noundef %65, ptr noundef %82) #4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %119, label %128

85:                                               ; preds = %90
  %86 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 %92
  %87 = load ptr, ptr %86, align 8, !tbaa !5
  %88 = call i32 @obj_eq(ptr noundef %65, ptr noundef %87) #4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94, !llvm.loop !41

90:                                               ; preds = %71, %85
  %91 = phi i64 [ %92, %85 ], [ 0, %71 ]
  %92 = add nuw nsw i64 %91, 1
  %93 = icmp eq i64 %92, %73
  br i1 %93, label %97, label %85, !llvm.loop !41

94:                                               ; preds = %85
  %95 = icmp ult i64 %92, %72
  %96 = trunc i64 %92 to i32
  br label %99

97:                                               ; preds = %90
  %98 = icmp ult i64 %92, %72
  br label %99

99:                                               ; preds = %97, %71, %94, %69
  %100 = phi i32 [ 0, %69 ], [ %96, %94 ], [ 0, %71 ], [ %63, %97 ]
  %101 = phi i1 [ %70, %69 ], [ %95, %94 ], [ %70, %71 ], [ %98, %97 ]
  br i1 %60, label %106, label %102

102:                                              ; preds = %99
  %103 = lshr i32 %66, 1
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds %struct.jpeg_component_info, ptr %52, i64 %104, i32 6
  store i32 %100, ptr %105, align 8, !tbaa !42
  br label %106

106:                                              ; preds = %102, %99
  br i1 %101, label %182, label %107

107:                                              ; preds = %106
  %108 = icmp sgt i32 %63, 3
  br i1 %108, label %195, label %109

109:                                              ; preds = %107
  %110 = add nsw i32 %63, 1
  %111 = zext nneg i32 %100 to i64
  %112 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 %111
  store ptr %65, ptr %112, align 8, !tbaa !5
  %113 = getelementptr inbounds ptr, ptr %54, i64 %111
  br label %143

114:                                              ; preds = %119
  %115 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %121
  %116 = load ptr, ptr %115, align 8, !tbaa !5
  %117 = call i32 @obj_eq(ptr noundef %65, ptr noundef %116) #4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %123, !llvm.loop !43

119:                                              ; preds = %79, %114
  %120 = phi i64 [ %121, %114 ], [ 0, %79 ]
  %121 = add nuw nsw i64 %120, 1
  %122 = icmp eq i64 %121, %81
  br i1 %122, label %126, label %114, !llvm.loop !43

123:                                              ; preds = %114
  %124 = icmp ult i64 %121, %80
  %125 = trunc i64 %121 to i32
  br label %128

126:                                              ; preds = %119
  %127 = icmp ult i64 %121, %80
  br label %128

128:                                              ; preds = %126, %79, %123, %77
  %129 = phi i32 [ 0, %77 ], [ %125, %123 ], [ 0, %79 ], [ %64, %126 ]
  %130 = phi i1 [ %78, %77 ], [ %124, %123 ], [ %78, %79 ], [ %127, %126 ]
  br i1 %61, label %135, label %131

131:                                              ; preds = %128
  %132 = lshr exact i32 %66, 1
  %133 = zext nneg i32 %132 to i64
  %134 = getelementptr inbounds %struct.jpeg_component_info, ptr %52, i64 %133, i32 5
  store i32 %129, ptr %134, align 4, !tbaa !44
  br label %135

135:                                              ; preds = %131, %128
  br i1 %130, label %182, label %136

136:                                              ; preds = %135
  %137 = icmp sgt i32 %64, 3
  br i1 %137, label %195, label %138

138:                                              ; preds = %136
  %139 = add nsw i32 %64, 1
  %140 = zext nneg i32 %129 to i64
  %141 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %140
  store ptr %65, ptr %141, align 8, !tbaa !5
  %142 = getelementptr inbounds ptr, ptr %53, i64 %140
  br label %143

143:                                              ; preds = %138, %109
  %144 = phi i32 [ %64, %109 ], [ %139, %138 ]
  %145 = phi i32 [ %110, %109 ], [ %63, %138 ]
  %146 = phi ptr [ %113, %109 ], [ %142, %138 ]
  %147 = load ptr, ptr %146, align 8, !tbaa !5
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = call ptr @gs_jpeg_alloc_huff_table(ptr noundef %1) #4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %195, label %152

152:                                              ; preds = %149
  store ptr %150, ptr %146, align 8, !tbaa !5
  br label %153

153:                                              ; preds = %152, %143
  %154 = phi ptr [ %150, %152 ], [ %147, %143 ]
  %155 = getelementptr inbounds %struct.tas_s, ptr %65, i64 0, i32 1
  %156 = load i16, ptr %155, align 2, !tbaa !20
  %157 = icmp ult i16 %156, 16
  br i1 %157, label %195, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds i8, ptr %154, i64 1
  %160 = call i32 @zfdct_byte_params(ptr noundef %65, i32 noundef 0, i32 noundef 16, ptr noundef nonnull %159)
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %195, label %162

162:                                              ; preds = %158, %162
  %163 = phi i64 [ %169, %162 ], [ 1, %158 ]
  %164 = phi i32 [ %168, %162 ], [ 0, %158 ]
  %165 = getelementptr inbounds [17 x i8], ptr %154, i64 0, i64 %163
  %166 = load i8, ptr %165, align 1, !tbaa !9
  %167 = zext i8 %166 to i32
  %168 = add nuw nsw i32 %164, %167
  %169 = add nuw nsw i64 %163, 1
  %170 = icmp eq i64 %169, 17
  br i1 %170, label %171, label %162, !llvm.loop !45

171:                                              ; preds = %162
  %172 = icmp ugt i32 %168, 256
  br i1 %172, label %195, label %173

173:                                              ; preds = %171
  %174 = load i16, ptr %155, align 2, !tbaa !20
  %175 = zext i16 %174 to i32
  %176 = add nuw nsw i32 %168, 16
  %177 = icmp eq i32 %176, %175
  br i1 %177, label %178, label %195

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.JHUFF_TBL, ptr %154, i64 0, i32 1
  %180 = call i32 @zfdct_byte_params(ptr noundef %65, i32 noundef 16, i32 noundef %168, ptr noundef nonnull %179)
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %195, label %182

182:                                              ; preds = %178, %135, %106
  %183 = phi i32 [ %64, %106 ], [ %144, %178 ], [ %64, %135 ]
  %184 = phi i32 [ %63, %106 ], [ %145, %178 ], [ %63, %135 ]
  %185 = add nuw nsw i32 %66, 1
  %186 = getelementptr inbounds %struct.ref_s, ptr %65, i64 1
  %187 = icmp eq i32 %185, %51
  br i1 %187, label %188, label %62, !llvm.loop !46

188:                                              ; preds = %182, %50
  %189 = phi i32 [ 0, %50 ], [ %183, %182 ]
  %190 = phi i32 [ 0, %50 ], [ %184, %182 ]
  %191 = icmp sgt i32 %190, %55
  %192 = icmp sgt i32 %189, %55
  %193 = select i1 %191, i1 true, i1 %192
  %194 = select i1 %193, i32 -15, i32 0
  br label %195

195:                                              ; preds = %178, %171, %173, %158, %153, %149, %136, %107, %188, %18, %11, %8, %3
  %196 = phi i32 [ 0, %3 ], [ 0, %8 ], [ -20, %11 ], [ -15, %18 ], [ %194, %188 ], [ -15, %107 ], [ -15, %136 ], [ -25, %149 ], [ -15, %153 ], [ %160, %158 ], [ -15, %173 ], [ -15, %171 ], [ %180, %178 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  ret i32 %196
}

declare ptr @gs_jpeg_alloc_huff_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @zfdct_byte_params(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ref_s, align 8
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !9
  switch i8 %7, label %94 [
    i8 18, label %8
    i8 4, label %28
    i8 6, label %37
    i8 5, label %37
  ]

8:                                                ; preds = %4
  %9 = load i16, ptr %0, align 8, !tbaa !32
  %10 = and i16 %9, 32
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %94, label %12

12:                                               ; preds = %8
  %13 = icmp sgt i32 %2, 0
  br i1 %13, label %14, label %94

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %16 = sext i32 %1 to i64
  %17 = zext nneg i32 %2 to i64
  br label %18

18:                                               ; preds = %14, %18
  %19 = phi i64 [ 0, %14 ], [ %25, %18 ]
  %20 = phi ptr [ %3, %14 ], [ %26, %18 ]
  %21 = load ptr, ptr %15, align 8, !tbaa !9
  %22 = getelementptr i8, ptr %21, i64 %19
  %23 = getelementptr i8, ptr %22, i64 %16
  %24 = load i8, ptr %23, align 1, !tbaa !9
  store i8 %24, ptr %20, align 1, !tbaa !9
  %25 = add nuw nsw i64 %19, 1
  %26 = getelementptr inbounds i8, ptr %20, i64 1
  %27 = icmp eq i64 %25, %17
  br i1 %27, label %94, label %18, !llvm.loop !47

28:                                               ; preds = %4
  %29 = load i16, ptr %0, align 8, !tbaa !32
  %30 = and i16 %29, 32
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %94, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !9
  %35 = sext i32 %1 to i64
  %36 = getelementptr inbounds %struct.ref_s, ptr %34, i64 %35
  br label %54

37:                                               ; preds = %4, %4
  %38 = load i16, ptr %0, align 8, !tbaa !32
  %39 = and i16 %38, 32
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %94, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !9
  %44 = icmp sgt i32 %1, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41, %45
  %46 = phi ptr [ %51, %45 ], [ %43, %41 ]
  %47 = phi i32 [ %52, %45 ], [ 0, %41 ]
  %48 = load i16, ptr %46, align 2, !tbaa !34
  %49 = icmp ugt i16 %48, 16383
  %50 = select i1 %49, i64 1, i64 8
  %51 = getelementptr inbounds i16, ptr %46, i64 %50
  %52 = add nuw nsw i32 %47, 1
  %53 = icmp eq i32 %52, %1
  br i1 %53, label %54, label %45, !llvm.loop !48

54:                                               ; preds = %45, %41, %32
  %55 = phi ptr [ %36, %32 ], [ %43, %41 ], [ %51, %45 ]
  %56 = icmp sgt i32 %2, 0
  br i1 %56, label %57, label %94

57:                                               ; preds = %54
  %58 = getelementptr inbounds i8, ptr %5, i64 1
  %59 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  %60 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  br label %61

61:                                               ; preds = %57, %86
  %62 = phi ptr [ %3, %57 ], [ %92, %86 ]
  %63 = phi ptr [ %55, %57 ], [ %90, %86 ]
  %64 = phi i32 [ 0, %57 ], [ %91, %86 ]
  %65 = phi i32 [ undef, %57 ], [ %84, %86 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #4
  call void @packed_get(ptr noundef %63, ptr noundef nonnull %5) #4
  %66 = load i8, ptr %58, align 1, !tbaa !9
  switch i8 %66, label %83 [
    i8 11, label %67
    i8 16, label %72
  ]

67:                                               ; preds = %61
  %68 = load i64, ptr %60, align 8
  %69 = icmp ugt i64 %68, 255
  br i1 %69, label %83, label %70

70:                                               ; preds = %67
  %71 = trunc i64 %68 to i8
  br label %81

72:                                               ; preds = %61
  %73 = load float, ptr %59, align 8
  %74 = fcmp olt float %73, 0.000000e+00
  %75 = fcmp ogt float %73, 2.550000e+02
  %76 = or i1 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = fpext float %73 to double
  %79 = fadd double %78, 5.000000e-01
  %80 = fptoui double %79 to i8
  br label %81

81:                                               ; preds = %77, %70
  %82 = phi i8 [ %80, %77 ], [ %71, %70 ]
  store i8 %82, ptr %62, align 1, !tbaa !9
  br label %83

83:                                               ; preds = %61, %72, %67, %81
  %84 = phi i32 [ %65, %81 ], [ -15, %67 ], [ -15, %72 ], [ -20, %61 ]
  %85 = phi i1 [ true, %81 ], [ false, %67 ], [ false, %72 ], [ false, %61 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #4
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load i16, ptr %63, align 2, !tbaa !34
  %88 = icmp ugt i16 %87, 16383
  %89 = select i1 %88, i64 1, i64 8
  %90 = getelementptr inbounds i16, ptr %63, i64 %89
  %91 = add nuw nsw i32 %64, 1
  %92 = getelementptr inbounds i8, ptr %62, i64 1
  %93 = icmp eq i32 %91, %2
  br i1 %93, label %94, label %61, !llvm.loop !49

94:                                               ; preds = %83, %86, %18, %54, %12, %4, %37, %28, %8
  %95 = phi i32 [ -7, %8 ], [ -7, %28 ], [ -7, %37 ], [ -20, %4 ], [ 0, %12 ], [ 0, %54 ], [ 0, %18 ], [ 0, %86 ], [ %84, %83 ]
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zfdct_setup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %1, i64 0, i32 3
  store ptr null, ptr %3, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %1, i64 0, i32 3, i32 1
  store i32 0, ptr %4, align 8, !tbaa !51
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !9
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = load i16, ptr %10, align 8, !tbaa !52
  %12 = and i16 %11, 32
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %8, %2
  %15 = phi ptr [ null, %2 ], [ %0, %8 ]
  %16 = phi i32 [ 0, %2 ], [ 1, %8 ]
  %17 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !9
  %19 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %18, i64 0, i32 3
  %20 = tail call i32 @dict_int_param(ptr noundef %15, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %19) #4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %14
  %23 = load ptr, ptr %17, align 8, !tbaa !9
  %24 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %23, i64 0, i32 4
  %25 = tail call i32 @dict_int_param(ptr noundef %15, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %24) #4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %1, i64 0, i32 5
  %29 = tail call i32 @dict_int_param(ptr noundef %15, ptr noundef nonnull @.str.4, i32 noundef -1, i32 noundef 2, i32 noundef -1, ptr noundef nonnull %28) #4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %1, i64 0, i32 4
  %33 = tail call i32 @dict_float_param(ptr noundef %15, ptr noundef nonnull @.str.5, double noundef 1.000000e+00, ptr noundef nonnull %32) #4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = load float, ptr %32, align 8, !tbaa !28
  %37 = fcmp olt float %36, 0.000000e+00
  %38 = fcmp ogt float %36, 1.000000e+06
  %39 = or i1 %37, %38
  %40 = select i1 %39, i32 -15, i32 %16
  br label %41

41:                                               ; preds = %35, %14, %22, %27, %31, %8
  %42 = phi i32 [ -7, %8 ], [ %20, %14 ], [ %25, %22 ], [ %29, %27 ], [ %33, %31 ], [ %40, %35 ]
  ret i32 %42
}

declare i32 @dict_int_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dict_float_param(ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare void @packed_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = !{!11, !13, i64 500}
!11 = !{!"jpeg_compress_data_s", !12, i64 0, !14, i64 56, !7, i64 224, !13, i64 424, !13, i64 428, !16, i64 432, !19, i64 928}
!12 = !{!"stream_template_s", !6, i64 0, !6, i64 8, !6, i64 16, !13, i64 24, !13, i64 28, !6, i64 32, !6, i64 40, !6, i64 48}
!13 = !{!"int", !7, i64 0}
!14 = !{!"jpeg_error_mgr", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !13, i64 40, !7, i64 44, !13, i64 124, !15, i64 128, !6, i64 136, !13, i64 144, !6, i64 152, !13, i64 160, !13, i64 164}
!15 = !{!"long", !7, i64 0}
!16 = !{!"jpeg_compress_struct", !6, i64 0, !6, i64 8, !6, i64 16, !13, i64 24, !13, i64 28, !6, i64 32, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !17, i64 56, !13, i64 64, !13, i64 68, !13, i64 72, !6, i64 80, !7, i64 88, !7, i64 120, !7, i64 152, !7, i64 184, !7, i64 200, !7, i64 216, !13, i64 232, !6, i64 240, !13, i64 248, !13, i64 252, !13, i64 256, !13, i64 260, !13, i64 264, !13, i64 268, !13, i64 272, !13, i64 276, !13, i64 280, !7, i64 284, !18, i64 286, !18, i64 288, !13, i64 292, !13, i64 296, !13, i64 300, !13, i64 304, !13, i64 308, !13, i64 312, !13, i64 316, !7, i64 320, !13, i64 352, !13, i64 356, !13, i64 360, !7, i64 364, !13, i64 404, !13, i64 408, !13, i64 412, !13, i64 416, !6, i64 424, !6, i64 432, !6, i64 440, !6, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !6, i64 480, !6, i64 488}
!17 = !{!"double", !7, i64 0}
!18 = !{!"short", !7, i64 0}
!19 = !{!"jpeg_destination_mgr", !6, i64 0, !15, i64 8, !6, i64 16, !6, i64 24, !6, i64 32}
!20 = !{!21, !18, i64 2}
!21 = !{!"ref_s", !22, i64 0, !7, i64 8}
!22 = !{!"tas_s", !18, i64 0, !18, i64 2}
!23 = !{!11, !6, i64 512}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = !{!27, !13, i64 16}
!27 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !13, i64 72, !6, i64 80, !6, i64 88}
!28 = !{!29, !31, i64 40}
!29 = !{!"stream_DCT_state_s", !6, i64 0, !6, i64 8, !6, i64 16, !30, i64 24, !31, i64 40, !13, i64 44, !13, i64 48, !7, i64 56, !13, i64 64, !13, i64 68}
!30 = !{!"gs_const_string_s", !6, i64 0, !13, i64 8}
!31 = !{!"float", !7, i64 0}
!32 = !{!21, !18, i64 0}
!33 = !{!13, !13, i64 0}
!34 = !{!18, !18, i64 0}
!35 = distinct !{!35, !25}
!36 = distinct !{!36, !25}
!37 = distinct !{!37, !25}
!38 = !{!11, !13, i64 480}
!39 = !{!40, !13, i64 428}
!40 = !{!"jpeg_stream_data_s", !12, i64 0, !14, i64 56, !7, i64 224, !13, i64 424, !13, i64 428}
!41 = distinct !{!41, !25}
!42 = !{!27, !13, i64 24}
!43 = distinct !{!43, !25}
!44 = !{!27, !13, i64 20}
!45 = distinct !{!45, !25}
!46 = distinct !{!46, !25}
!47 = distinct !{!47, !25}
!48 = distinct !{!48, !25}
!49 = distinct !{!49, !25}
!50 = !{!29, !6, i64 24}
!51 = !{!29, !13, i64 32}
!52 = !{!53, !18, i64 0}
!53 = !{!"dict_s", !21, i64 0, !21, i64 16, !21, i64 32, !21, i64 48}
