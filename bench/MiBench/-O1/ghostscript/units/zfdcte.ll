; ModuleID = 'zfdcte.c'
source_filename = "zfdcte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stream_DCT_state_s = type { ptr, ptr, ptr, %struct.gs_const_string_s, float, i32, i32, %union._jd, i32, i32 }
%struct.gs_const_string_s = type { ptr, i32 }
%union._jd = type { ptr }
%struct.jpeg_compress_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, [1 x %struct.__jmp_buf_tag], i32, i32, %struct.jpeg_compress_struct, %struct.jpeg_destination_mgr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_stream_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, [1 x %struct.__jmp_buf_tag], i32, i32 }

@zfdcte_op_defs.op_defs_ = internal constant [3 x %struct.op_def] [%struct.op_def { ptr @.str, ptr null }, %struct.op_def { ptr @.str.1, ptr @zDCTE }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [11 x i8] c"filterdict\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"2DCTEncode\00", align 1
@gs_memory_default = external global %struct.gs_memory_s, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"zDCTE\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"QuantTables\00", align 1
@s_DCTE_template = external local_unnamed_addr constant %struct.stream_template_s, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"zDCTE fail\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Columns\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Rows\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Colors\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Markers\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"NoMarker\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Resync\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Blend\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"HSamples\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"VSamples\00", align 1
@switch.table.zDCTE = private unnamed_addr constant [4 x i32] [i32 1, i32 0, i32 2, i32 4], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zfdcte_op_defs() local_unnamed_addr #0 {
  ret ptr @zfdcte_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zDCTE(ptr noundef %0) #1 {
  %2 = alloca ptr, align 8
  %3 = alloca [4 x i8], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca %struct.stream_DCT_state_s, align 8
  %11 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7
  %12 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !5
  %13 = tail call ptr %12(ptr noundef nonnull @gs_memory_default, i32 noundef 1, i32 noundef 968, ptr noundef nonnull @.str.2) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %234, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %10, i64 0, i32 7
  store ptr %13, ptr %16, align 8, !tbaa !11
  %17 = call i32 @gs_jpeg_create_compress(ptr noundef nonnull %10) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %230, label %19

19:                                               ; preds = %15
  %20 = call i32 @zfdct_setup(ptr noundef %0, ptr noundef nonnull %10) #7
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %230, label %22

22:                                               ; preds = %19
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  %25 = load i16, ptr %0, align 8, !tbaa !12
  %26 = and i16 %25, 12
  %27 = zext nneg i16 %26 to i32
  br label %28

28:                                               ; preds = %22, %24
  %29 = phi ptr [ %0, %24 ], [ null, %22 ]
  %30 = phi i32 [ %27, %24 ], [ 0, %22 ]
  %31 = load ptr, ptr %16, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  %32 = call i32 @dict_uint_param(ptr noundef %29, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 65535, i32 noundef 0, ptr noundef nonnull %4) #7
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %187, label %34

34:                                               ; preds = %28
  %35 = call i32 @dict_uint_param(ptr noundef %29, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 65535, i32 noundef 0, ptr noundef nonnull %5) #7
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %187, label %37

37:                                               ; preds = %34
  %38 = call i32 @dict_int_param(ptr noundef %29, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef 4, i32 noundef -1, ptr noundef nonnull %7) #7
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %187, label %40

40:                                               ; preds = %37
  %41 = load i32, ptr %4, align 4, !tbaa !16
  %42 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %31, i64 0, i32 5, i32 6
  store i32 %41, ptr %42, align 8, !tbaa !18
  %43 = load i32, ptr %5, align 4, !tbaa !16
  %44 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %31, i64 0, i32 5, i32 7
  store i32 %43, ptr %44, align 4, !tbaa !26
  %45 = load i32, ptr %7, align 4, !tbaa !16
  %46 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %31, i64 0, i32 5, i32 8
  store i32 %45, ptr %46, align 8, !tbaa !27
  %47 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %31, i64 0, i32 5, i32 9
  %48 = add i32 %45, -1
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = zext nneg i32 %48 to i64
  %52 = getelementptr inbounds [4 x i32], ptr @switch.table.zDCTE, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4
  br label %54

54:                                               ; preds = %40, %50
  %55 = phi i32 [ %53, %50 ], [ 0, %40 ]
  store i32 %55, ptr %47, align 4, !tbaa !28
  %56 = call i32 @gs_jpeg_set_defaults(ptr noundef nonnull %10) #7
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %187, label %58

58:                                               ; preds = %54
  %59 = load i32, ptr %7, align 4, !tbaa !16
  %60 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %10, i64 0, i32 5
  switch i32 %59, label %84 [
    i32 3, label %61
    i32 4, label %71
  ]

61:                                               ; preds = %58
  %62 = load i32, ptr %60, align 4, !tbaa !29
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 1, ptr %60, align 4, !tbaa !29
  br label %65

65:                                               ; preds = %64, %61
  %66 = load i32, ptr %60, align 4, !tbaa !29
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %65
  %69 = call i32 @gs_jpeg_set_colorspace(ptr noundef nonnull %10, i32 noundef 2) #7
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %187, label %86

71:                                               ; preds = %58
  %72 = load i32, ptr %60, align 4, !tbaa !29
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 0, ptr %60, align 4, !tbaa !29
  br label %75

75:                                               ; preds = %74, %71
  %76 = load i32, ptr %60, align 4, !tbaa !29
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = call i32 @gs_jpeg_set_colorspace(ptr noundef nonnull %10, i32 noundef 5) #7
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %187, label %84

81:                                               ; preds = %75
  %82 = call i32 @gs_jpeg_set_colorspace(ptr noundef nonnull %10, i32 noundef 4) #7
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %187, label %86

84:                                               ; preds = %58, %78, %65
  %85 = phi i32 [ 1, %65 ], [ 2, %78 ], [ 0, %58 ]
  store i32 %85, ptr %60, align 4, !tbaa !29
  br label %86

86:                                               ; preds = %84, %81, %68
  %87 = call i32 @dict_find_string(ptr noundef %29, ptr noundef nonnull @.str.8, ptr noundef nonnull %9) #7
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %86
  %90 = load ptr, ptr %9, align 8, !tbaa !33
  %91 = load i16, ptr %90, align 8, !tbaa !12
  %92 = and i16 %91, 16160
  %93 = icmp eq i16 %92, 4640
  br i1 %93, label %100, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds i8, ptr %90, i64 1
  %96 = load i8, ptr %95, align 1, !tbaa !11
  %97 = icmp eq i8 %96, 18
  br i1 %97, label %187, label %98

98:                                               ; preds = %94
  %99 = call i32 @check_type_failed(ptr noundef nonnull %90) #7
  br label %187

100:                                              ; preds = %89
  %101 = getelementptr inbounds %struct.ref_s, ptr %90, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !11
  %103 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %10, i64 0, i32 3
  store ptr %102, ptr %103, align 8, !tbaa !34
  %104 = getelementptr inbounds %struct.tas_s, ptr %90, i64 0, i32 1
  %105 = load i16, ptr %104, align 2, !tbaa !35
  %106 = zext i16 %105 to i32
  %107 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %10, i64 0, i32 3, i32 1
  store i32 %106, ptr %107, align 8, !tbaa !36
  br label %108

108:                                              ; preds = %100, %86
  %109 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %10, i64 0, i32 6
  %110 = call i32 @dict_bool_param(ptr noundef %29, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull %109) #7
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %187, label %112

112:                                              ; preds = %108
  %113 = call i32 @dict_uint_param(ptr noundef %29, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 65535, i32 noundef 0, ptr noundef nonnull %6) #7
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %187, label %115

115:                                              ; preds = %112
  %116 = call i32 @dict_int_param(ptr noundef %29, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %8) #7
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %187, label %118

118:                                              ; preds = %115
  %119 = load i32, ptr %7, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %120 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %31, i64 0, i32 5, i32 14
  %121 = load ptr, ptr %120, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %122 = icmp eq ptr %29, null
  br i1 %122, label %135, label %123

123:                                              ; preds = %118
  %124 = call i32 @dict_find_string(ptr noundef nonnull %29, ptr noundef nonnull @.str.12, ptr noundef nonnull %2) #7
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load ptr, ptr %2, align 8, !tbaa !33
  %128 = getelementptr inbounds %struct.tas_s, ptr %127, i64 0, i32 1
  %129 = load i16, ptr %128, align 2, !tbaa !35
  %130 = zext i16 %129 to i32
  %131 = icmp sgt i32 %119, %130
  br i1 %131, label %151, label %132

132:                                              ; preds = %126
  %133 = call i32 @zfdct_byte_params(ptr noundef %127, i32 noundef 0, i32 noundef %119, ptr noundef nonnull %3) #7
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %151, label %136

135:                                              ; preds = %123, %118
  store i32 16843009, ptr %3, align 4
  br label %136

136:                                              ; preds = %135, %132
  %137 = icmp sgt i32 %119, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %136
  %139 = zext nneg i32 %119 to i64
  br label %140

140:                                              ; preds = %146, %138
  %141 = phi i64 [ 0, %138 ], [ %149, %146 ]
  %142 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !11
  %144 = add i8 %143, -5
  %145 = icmp ult i8 %144, -4
  br i1 %145, label %151, label %146

146:                                              ; preds = %140
  %147 = zext nneg i8 %143 to i32
  %148 = getelementptr inbounds %struct.jpeg_component_info, ptr %121, i64 %141, i32 2
  store i32 %147, ptr %148, align 8, !tbaa !38
  %149 = add nuw nsw i64 %141, 1
  %150 = icmp eq i64 %149, %139
  br i1 %150, label %151, label %140, !llvm.loop !40

151:                                              ; preds = %146, %140, %136, %132, %126
  %152 = phi i32 [ -15, %126 ], [ %133, %132 ], [ 0, %136 ], [ 0, %146 ], [ -15, %140 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %187, label %154

154:                                              ; preds = %151
  %155 = load i32, ptr %7, align 4, !tbaa !16
  %156 = call fastcc i32 @dct_setup_samples(ptr noundef %29, ptr noundef nonnull @.str.13, i32 noundef %155, ptr noundef %31, i32 noundef 1), !range !42
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %187, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %31, i64 0, i32 5, i32 31
  store i32 0, ptr %159, align 8, !tbaa !43
  %160 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %31, i64 0, i32 5, i32 35
  store i32 0, ptr %160, align 4, !tbaa !44
  %161 = load i32, ptr %6, align 4, !tbaa !16
  %162 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %31, i64 0, i32 5, i32 29
  store i32 %161, ptr %162, align 8, !tbaa !45
  %163 = load ptr, ptr %16, align 8, !tbaa !11
  %164 = getelementptr inbounds %struct.jpeg_stream_data_s, ptr %163, i64 0, i32 4
  %165 = load i32, ptr %164, align 4, !tbaa !46
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %186

167:                                              ; preds = %158
  %168 = load ptr, ptr %120, align 8, !tbaa !37
  %169 = load i32, ptr %7, align 4, !tbaa !16
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %186

171:                                              ; preds = %167
  %172 = zext nneg i32 %169 to i64
  br label %173

173:                                              ; preds = %173, %171
  %174 = phi i64 [ 0, %171 ], [ %182, %173 ]
  %175 = phi i32 [ 0, %171 ], [ %181, %173 ]
  %176 = getelementptr inbounds %struct.jpeg_component_info, ptr %168, i64 %174, i32 2
  %177 = load i32, ptr %176, align 8, !tbaa !38
  %178 = getelementptr inbounds %struct.jpeg_component_info, ptr %168, i64 %174, i32 3
  %179 = load i32, ptr %178, align 4, !tbaa !48
  %180 = mul nsw i32 %179, %177
  %181 = add nsw i32 %180, %175
  %182 = add nuw nsw i64 %174, 1
  %183 = icmp eq i64 %182, %172
  br i1 %183, label %184, label %173, !llvm.loop !49

184:                                              ; preds = %173
  %185 = icmp slt i32 %181, 11
  br i1 %185, label %186, label %187

186:                                              ; preds = %184, %167, %158
  br label %187

187:                                              ; preds = %28, %34, %37, %54, %68, %78, %81, %94, %98, %108, %112, %115, %151, %154, %184, %186
  %188 = phi i32 [ 0, %186 ], [ -15, %184 ], [ %32, %28 ], [ %35, %34 ], [ %38, %37 ], [ %56, %54 ], [ %69, %68 ], [ %79, %78 ], [ %82, %81 ], [ %99, %98 ], [ -7, %94 ], [ %110, %108 ], [ %113, %112 ], [ %116, %115 ], [ %152, %151 ], [ %156, %154 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %230, label %190

190:                                              ; preds = %187
  %191 = icmp eq ptr %29, null
  br i1 %191, label %195, label %192

192:                                              ; preds = %190
  %193 = call i32 @dict_find_string(ptr noundef nonnull %29, ptr noundef nonnull @.str.3, ptr noundef nonnull %11) #7
  %194 = icmp slt i32 %193, 1
  br i1 %194, label %195, label %207

195:                                              ; preds = %192, %190
  %196 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %10, i64 0, i32 4
  %197 = load float, ptr %196, align 8
  %198 = fcmp une float %197, 1.000000e+00
  br i1 %198, label %199, label %207

199:                                              ; preds = %195
  %200 = fpext float %197 to double
  %201 = fcmp olt double %200, 1.000000e+02
  %202 = select i1 %201, double %200, double 1.000000e+02
  %203 = call double @llvm.fmuladd.f64(double %202, double 1.000000e+02, double 5.000000e-01)
  %204 = fptosi double %203 to i32
  %205 = call i32 @gs_jpeg_set_linear_quality(ptr noundef nonnull %10, i32 noundef %204, i32 noundef 1) #7
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %234, label %207

207:                                              ; preds = %195, %199, %192
  %208 = call i32 @zfdct_setup_huffman_tables(ptr noundef %29, ptr noundef nonnull %10, i32 noundef 1) #7
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %230, label %210

210:                                              ; preds = %207
  %211 = call i32 @zfdct_setup_quantization_tables(ptr noundef %29, ptr noundef nonnull %10, i32 noundef 1) #7
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %230, label %213

213:                                              ; preds = %210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(56) @s_DCTE_template, i64 56, i1 false), !tbaa.struct !50
  %214 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %13, i64 0, i32 5, i32 8
  %215 = load i32, ptr %214, align 8, !tbaa !27
  %216 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %13, i64 0, i32 5, i32 6
  %217 = load i32, ptr %216, align 8, !tbaa !18
  %218 = mul i32 %217, %215
  %219 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %10, i64 0, i32 8
  store i32 %218, ptr %219, align 8, !tbaa !51
  %220 = load i32, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_DCTE_template, i64 0, i32 3), align 8
  %221 = call i32 @llvm.umax.i32(i32 %220, i32 %218)
  %222 = getelementptr inbounds %struct.stream_template_s, ptr %13, i64 0, i32 3
  store i32 %221, ptr %222, align 8, !tbaa !52
  %223 = load i32, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_DCTE_template, i64 0, i32 4), align 4
  %224 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %10, i64 0, i32 3, i32 1
  %225 = load i32, ptr %224, align 8
  %226 = call i32 @llvm.umax.i32(i32 %223, i32 %225)
  %227 = getelementptr inbounds %struct.stream_template_s, ptr %13, i64 0, i32 4
  store i32 %226, ptr %227, align 4, !tbaa !53
  %228 = call i32 @filter_write(ptr noundef %0, i32 noundef %20, ptr noundef nonnull %13, ptr noundef nonnull %10, i32 noundef %30) #7
  %229 = icmp sgt i32 %228, -1
  br i1 %229, label %234, label %230

230:                                              ; preds = %213, %207, %210, %187, %19, %15
  %231 = phi i32 [ %17, %15 ], [ %20, %19 ], [ %188, %187 ], [ %208, %207 ], [ %211, %210 ], [ %228, %213 ]
  %232 = call i32 @gs_jpeg_destroy(ptr noundef nonnull %10) #7
  %233 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !54
  call void %233(ptr noundef nonnull @gs_memory_default, ptr noundef nonnull %13, ptr noundef nonnull @.str.4) #7
  br label %234

234:                                              ; preds = %213, %199, %1, %230
  %235 = phi i32 [ %231, %230 ], [ -25, %1 ], [ %205, %199 ], [ %228, %213 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %10) #7
  ret i32 %235
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @gs_jpeg_create_compress(ptr noundef) local_unnamed_addr #3

declare i32 @zfdct_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_jpeg_set_linear_quality(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare i32 @zfdct_setup_huffman_tables(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @zfdct_setup_quantization_tables(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @filter_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gs_jpeg_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @dict_uint_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_int_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_jpeg_set_defaults(ptr noundef) local_unnamed_addr #3

declare i32 @gs_jpeg_set_colorspace(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #3

declare i32 @dict_bool_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dct_setup_samples(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #1 {
  %6 = alloca ptr, align 8
  %7 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  %8 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %3, i64 0, i32 5, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  %10 = icmp eq ptr %0, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %5
  %12 = call i32 @dict_find_string(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %6) #7
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load ptr, ptr %6, align 8, !tbaa !33
  %16 = getelementptr inbounds %struct.tas_s, ptr %15, i64 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !35
  %18 = zext i16 %17 to i32
  %19 = icmp slt i32 %18, %2
  br i1 %19, label %44, label %20

20:                                               ; preds = %14
  %21 = call i32 @zfdct_byte_params(ptr noundef %15, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %7) #7
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %44, label %24

23:                                               ; preds = %11, %5
  store i32 16843009, ptr %7, align 4
  br label %24

24:                                               ; preds = %20, %23
  %25 = icmp sgt i32 %2, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %24
  %27 = icmp eq i32 %4, 0
  %28 = zext nneg i32 %2 to i64
  br label %29

29:                                               ; preds = %26, %41
  %30 = phi i64 [ 0, %26 ], [ %42, %41 ]
  %31 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !11
  %33 = zext i8 %32 to i32
  %34 = add i8 %32, -5
  %35 = icmp ult i8 %34, -4
  br i1 %35, label %44, label %36

36:                                               ; preds = %29
  br i1 %27, label %39, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.jpeg_component_info, ptr %9, i64 %30, i32 3
  store i32 %33, ptr %38, align 4, !tbaa !48
  br label %41

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.jpeg_component_info, ptr %9, i64 %30, i32 2
  store i32 %33, ptr %40, align 8, !tbaa !38
  br label %41

41:                                               ; preds = %37, %39
  %42 = add nuw nsw i64 %30, 1
  %43 = icmp eq i64 %42, %28
  br i1 %43, label %44, label %29, !llvm.loop !40

44:                                               ; preds = %29, %41, %24, %20, %14
  %45 = phi i32 [ -15, %14 ], [ %21, %20 ], [ 0, %24 ], [ 0, %41 ], [ -15, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  ret i32 %45
}

declare i32 @zfdct_byte_params(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!5 = !{!6, !8, i64 32}
!6 = !{!"gs_memory_s", !7, i64 0}
!7 = !{!"gs_memory_procs_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = !{!13, !15, i64 0}
!13 = !{!"ref_s", !14, i64 0, !9, i64 8}
!14 = !{!"tas_s", !15, i64 0, !15, i64 2}
!15 = !{!"short", !9, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !9, i64 0}
!18 = !{!19, !17, i64 472}
!19 = !{!"jpeg_compress_data_s", !20, i64 0, !21, i64 56, !9, i64 224, !17, i64 424, !17, i64 428, !23, i64 432, !25, i64 928}
!20 = !{!"stream_template_s", !8, i64 0, !8, i64 8, !8, i64 16, !17, i64 24, !17, i64 28, !8, i64 32, !8, i64 40, !8, i64 48}
!21 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !17, i64 40, !9, i64 44, !17, i64 124, !22, i64 128, !8, i64 136, !17, i64 144, !8, i64 152, !17, i64 160, !17, i64 164}
!22 = !{!"long", !9, i64 0}
!23 = !{!"jpeg_compress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !17, i64 24, !17, i64 28, !8, i64 32, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !24, i64 56, !17, i64 64, !17, i64 68, !17, i64 72, !8, i64 80, !9, i64 88, !9, i64 120, !9, i64 152, !9, i64 184, !9, i64 200, !9, i64 216, !17, i64 232, !8, i64 240, !17, i64 248, !17, i64 252, !17, i64 256, !17, i64 260, !17, i64 264, !17, i64 268, !17, i64 272, !17, i64 276, !17, i64 280, !9, i64 284, !15, i64 286, !15, i64 288, !17, i64 292, !17, i64 296, !17, i64 300, !17, i64 304, !17, i64 308, !17, i64 312, !17, i64 316, !9, i64 320, !17, i64 352, !17, i64 356, !17, i64 360, !9, i64 364, !17, i64 404, !17, i64 408, !17, i64 412, !17, i64 416, !8, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !8, i64 488}
!24 = !{!"double", !9, i64 0}
!25 = !{!"jpeg_destination_mgr", !8, i64 0, !22, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!26 = !{!19, !17, i64 476}
!27 = !{!19, !17, i64 480}
!28 = !{!19, !17, i64 484}
!29 = !{!30, !17, i64 44}
!30 = !{!"stream_DCT_state_s", !8, i64 0, !8, i64 8, !8, i64 16, !31, i64 24, !32, i64 40, !17, i64 44, !17, i64 48, !9, i64 56, !17, i64 64, !17, i64 68}
!31 = !{!"gs_const_string_s", !8, i64 0, !17, i64 8}
!32 = !{!"float", !9, i64 0}
!33 = !{!8, !8, i64 0}
!34 = !{!30, !8, i64 24}
!35 = !{!13, !15, i64 2}
!36 = !{!30, !17, i64 32}
!37 = !{!19, !8, i64 512}
!38 = !{!39, !17, i64 8}
!39 = !{!"", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !17, i64 56, !17, i64 60, !17, i64 64, !17, i64 68, !17, i64 72, !8, i64 80, !8, i64 88}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{i32 -2147483648, i32 1}
!43 = !{!19, !17, i64 712}
!44 = !{!19, !17, i64 724}
!45 = !{!19, !17, i64 704}
!46 = !{!47, !17, i64 428}
!47 = !{!"jpeg_stream_data_s", !20, i64 0, !21, i64 56, !9, i64 224, !17, i64 424, !17, i64 428}
!48 = !{!39, !17, i64 12}
!49 = distinct !{!49, !41}
!50 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 8, !33, i64 24, i64 4, !16, i64 28, i64 4, !16, i64 32, i64 8, !33, i64 40, i64 8, !33, i64 48, i64 8, !33}
!51 = !{!30, !17, i64 64}
!52 = !{!19, !17, i64 24}
!53 = !{!19, !17, i64 28}
!54 = !{!6, !8, i64 88}
