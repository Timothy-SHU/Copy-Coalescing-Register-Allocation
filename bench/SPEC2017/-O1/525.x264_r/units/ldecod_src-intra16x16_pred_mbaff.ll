; ModuleID = 'ldecod_src/intra16x16_pred_mbaff.c'
source_filename = "ldecod_src/intra16x16_pred_mbaff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"illegal 16x16 intra prediction mode input: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"invalid 16x16 intra pred Mode VERT_PRED_16\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"invalid 16x16 intra pred Mode HOR_PRED_16\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"invalid 16x16 intra pred Mode PLANE_16\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @intrapred_16x16_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca [17 x %struct.pix_pos], align 16
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca [17 x %struct.pix_pos], align 16
  %8 = alloca [17 x %struct.pix_pos], align 16
  %9 = alloca %struct.pix_pos, align 4
  switch i32 %2, label %558 [
    i32 0, label %10
    i32 1, label %81
    i32 2, label %172
    i32 3, label %332
  ]

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = icmp eq i32 %1, 0
  %15 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 125
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  br i1 %14, label %23, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.storable_picture, ptr %16, i64 0, i32 33
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = add i32 %1, -1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  br label %25

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.storable_picture, ptr %16, i64 0, i32 32
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi ptr [ %22, %17 ], [ %24, %23 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6
  %28 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 160
  %29 = load ptr, ptr %28, align 8, !tbaa !50
  %30 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 81
  call void %29(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %30, ptr noundef nonnull %9) #6
  %31 = getelementptr inbounds %struct.video_par, ptr %13, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !56
  %33 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %32, i64 0, i32 30
  %34 = load i32, ptr %33, align 4, !tbaa !57
  %35 = icmp eq i32 %34, 0
  %36 = load i32, ptr %9, align 4, !tbaa !59
  br i1 %35, label %48, label %37

37:                                               ; preds = %25
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 128
  %41 = load ptr, ptr %40, align 8, !tbaa !61
  %42 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !62
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %41, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !63
  %47 = sext i8 %46 to i32
  br label %48

48:                                               ; preds = %25, %39, %37
  %49 = phi i32 [ %47, %39 ], [ 0, %37 ], [ %36, %25 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #6
  br label %52

52:                                               ; preds = %51, %48
  %53 = getelementptr inbounds %struct.slice, ptr %11, i64 0, i32 77
  %54 = load ptr, ptr %53, align 8, !tbaa !64
  %55 = zext i32 %1 to i64
  %56 = getelementptr inbounds ptr, ptr %54, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !49
  %58 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %59 = load i16, ptr %58, align 2, !tbaa !65
  %60 = sext i16 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %27, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !49
  %63 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %64 = load i16, ptr %63, align 4, !tbaa !66
  %65 = sext i16 %64 to i64
  %66 = getelementptr inbounds i16, ptr %62, i64 %65
  br label %67

67:                                               ; preds = %52, %67
  %68 = phi i32 [ 0, %52 ], [ %78, %67 ]
  %69 = phi ptr [ %57, %52 ], [ %76, %67 ]
  %70 = getelementptr inbounds ptr, ptr %69, i64 1
  %71 = load ptr, ptr %69, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %71, ptr noundef nonnull align 2 dereferenceable(32) %66, i64 32, i1 false)
  %72 = getelementptr inbounds ptr, ptr %69, i64 2
  %73 = load ptr, ptr %70, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %73, ptr noundef nonnull align 2 dereferenceable(32) %66, i64 32, i1 false)
  %74 = getelementptr inbounds ptr, ptr %69, i64 3
  %75 = load ptr, ptr %72, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %75, ptr noundef nonnull align 2 dereferenceable(32) %66, i64 32, i1 false)
  %76 = getelementptr inbounds ptr, ptr %69, i64 4
  %77 = load ptr, ptr %74, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %77, ptr noundef nonnull align 2 dereferenceable(32) %66, i64 32, i1 false)
  %78 = add nuw nsw i32 %68, 4
  %79 = icmp ult i32 %68, 12
  br i1 %79, label %67, label %80, !llvm.loop !67

80:                                               ; preds = %67
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6
  br label %560

81:                                               ; preds = %3
  %82 = load ptr, ptr %0, align 8, !tbaa !34
  %83 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !42
  %85 = icmp eq i32 %1, 0
  %86 = getelementptr inbounds %struct.slice, ptr %82, i64 0, i32 125
  %87 = load ptr, ptr %86, align 8, !tbaa !43
  br i1 %85, label %94, label %88

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.storable_picture, ptr %87, i64 0, i32 33
  %90 = load ptr, ptr %89, align 8, !tbaa !46
  %91 = add i32 %1, -1
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds ptr, ptr %90, i64 %92
  br label %96

94:                                               ; preds = %81
  %95 = getelementptr inbounds %struct.storable_picture, ptr %87, i64 0, i32 32
  br label %96

96:                                               ; preds = %94, %88
  %97 = phi ptr [ %93, %88 ], [ %95, %94 ]
  %98 = load ptr, ptr %97, align 8, !tbaa !49
  %99 = getelementptr inbounds %struct.slice, ptr %82, i64 0, i32 77
  %100 = load ptr, ptr %99, align 8, !tbaa !64
  %101 = zext i32 %1 to i64
  %102 = getelementptr inbounds ptr, ptr %100, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %8) #6
  %104 = getelementptr inbounds %struct.video_par, ptr %84, i64 0, i32 160
  %105 = getelementptr inbounds %struct.video_par, ptr %84, i64 0, i32 81
  br label %106

106:                                              ; preds = %96, %106
  %107 = phi i64 [ 0, %96 ], [ %112, %106 ]
  %108 = load ptr, ptr %104, align 8, !tbaa !50
  %109 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %107
  %110 = trunc i64 %107 to i32
  %111 = add i32 %110, -1
  call void %108(ptr noundef nonnull %0, i32 noundef -1, i32 noundef %111, ptr noundef nonnull %105, ptr noundef nonnull %109) #6
  %112 = add nuw nsw i64 %107, 1
  %113 = icmp eq i64 %112, 17
  br i1 %113, label %114, label %106, !llvm.loop !70

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.video_par, ptr %84, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !56
  %117 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %116, i64 0, i32 30
  %118 = load i32, ptr %117, align 4, !tbaa !57
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.slice, ptr %82, i64 0, i32 128
  br label %125

122:                                              ; preds = %114
  %123 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 1
  %124 = load i32, ptr %123, align 16, !tbaa !59
  br label %144

125:                                              ; preds = %120, %139
  %126 = phi i64 [ 1, %120 ], [ %142, %139 ]
  %127 = phi i32 [ 1, %120 ], [ %141, %139 ]
  %128 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %126
  %129 = load i32, ptr %128, align 16, !tbaa !59
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %125
  %132 = load ptr, ptr %121, align 8, !tbaa !61
  %133 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %126, i32 1
  %134 = load i32, ptr %133, align 4, !tbaa !62
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, ptr %132, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !63
  %138 = sext i8 %137 to i32
  br label %139

139:                                              ; preds = %131, %125
  %140 = phi i32 [ %138, %131 ], [ 0, %125 ]
  %141 = and i32 %140, %127
  %142 = add nuw nsw i64 %126, 1
  %143 = icmp eq i64 %142, 17
  br i1 %143, label %144, label %125, !llvm.loop !71

144:                                              ; preds = %139, %122
  %145 = phi i32 [ %124, %122 ], [ %141, %139 ]
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  call void @error(ptr noundef nonnull @.str.2, i32 noundef 500) #6
  br label %148

148:                                              ; preds = %147, %144
  br label %151

149:                                              ; preds = %166
  %150 = icmp eq i64 %153, 16
  br i1 %150, label %171, label %151, !llvm.loop !72

151:                                              ; preds = %148, %149
  %152 = phi i64 [ %153, %149 ], [ 0, %148 ]
  %153 = add nuw nsw i64 %152, 1
  %154 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %153, i32 5
  %155 = load i16, ptr %154, align 2, !tbaa !65
  %156 = sext i16 %155 to i64
  %157 = getelementptr inbounds ptr, ptr %98, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !49
  %159 = getelementptr inbounds [17 x %struct.pix_pos], ptr %8, i64 0, i64 %153, i32 4
  %160 = load i16, ptr %159, align 4, !tbaa !66
  %161 = sext i16 %160 to i64
  %162 = getelementptr inbounds i16, ptr %158, i64 %161
  %163 = load i16, ptr %162, align 2, !tbaa !73
  %164 = getelementptr inbounds ptr, ptr %103, i64 %152
  %165 = load ptr, ptr %164, align 8, !tbaa !49
  br label %166

166:                                              ; preds = %151, %166
  %167 = phi i64 [ 0, %151 ], [ %169, %166 ]
  %168 = getelementptr inbounds i16, ptr %165, i64 %167
  store i16 %163, ptr %168, align 2, !tbaa !73
  %169 = add nuw nsw i64 %167, 1
  %170 = icmp eq i64 %169, 16
  br i1 %170, label %149, label %166, !llvm.loop !74

171:                                              ; preds = %149
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %8) #6
  br label %560

172:                                              ; preds = %3
  %173 = load ptr, ptr %0, align 8, !tbaa !34
  %174 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !42
  %176 = icmp eq i32 %1, 0
  %177 = getelementptr inbounds %struct.slice, ptr %173, i64 0, i32 125
  %178 = load ptr, ptr %177, align 8, !tbaa !43
  br i1 %176, label %185, label %179

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.storable_picture, ptr %178, i64 0, i32 33
  %181 = load ptr, ptr %180, align 8, !tbaa !46
  %182 = add i32 %1, -1
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds ptr, ptr %181, i64 %183
  br label %187

185:                                              ; preds = %172
  %186 = getelementptr inbounds %struct.storable_picture, ptr %178, i64 0, i32 32
  br label %187

187:                                              ; preds = %185, %179
  %188 = phi ptr [ %184, %179 ], [ %186, %185 ]
  %189 = load ptr, ptr %188, align 8, !tbaa !49
  %190 = getelementptr inbounds %struct.slice, ptr %173, i64 0, i32 77
  %191 = load ptr, ptr %190, align 8, !tbaa !64
  %192 = zext i32 %1 to i64
  %193 = getelementptr inbounds ptr, ptr %191, i64 %192
  %194 = load ptr, ptr %193, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %7) #6
  %195 = getelementptr inbounds %struct.video_par, ptr %175, i64 0, i32 160
  %196 = getelementptr inbounds %struct.video_par, ptr %175, i64 0, i32 81
  br label %197

197:                                              ; preds = %187, %197
  %198 = phi i64 [ 0, %187 ], [ %203, %197 ]
  %199 = load ptr, ptr %195, align 8, !tbaa !50
  %200 = getelementptr inbounds [17 x %struct.pix_pos], ptr %7, i64 0, i64 %198
  %201 = trunc i64 %198 to i32
  %202 = add i32 %201, -1
  call void %199(ptr noundef nonnull %0, i32 noundef -1, i32 noundef %202, ptr noundef nonnull %196, ptr noundef nonnull %200) #6
  %203 = add nuw nsw i64 %198, 1
  %204 = icmp eq i64 %203, 17
  br i1 %204, label %205, label %197, !llvm.loop !75

205:                                              ; preds = %197
  %206 = getelementptr inbounds %struct.video_par, ptr %175, i64 0, i32 160
  %207 = load ptr, ptr %206, align 8, !tbaa !50
  %208 = getelementptr inbounds %struct.video_par, ptr %175, i64 0, i32 81
  call void %207(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %208, ptr noundef nonnull %6) #6
  %209 = getelementptr inbounds %struct.video_par, ptr %175, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !56
  %211 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %210, i64 0, i32 30
  %212 = load i32, ptr %211, align 4, !tbaa !57
  %213 = icmp eq i32 %212, 0
  %214 = load i32, ptr %6, align 4, !tbaa !59
  br i1 %213, label %215, label %218

215:                                              ; preds = %205
  %216 = getelementptr inbounds [17 x %struct.pix_pos], ptr %7, i64 0, i64 1
  %217 = load i32, ptr %216, align 16, !tbaa !59
  br label %251

218:                                              ; preds = %205
  %219 = icmp eq i32 %214, 0
  br i1 %219, label %229, label %220

220:                                              ; preds = %218
  %221 = getelementptr inbounds %struct.slice, ptr %173, i64 0, i32 128
  %222 = load ptr, ptr %221, align 8, !tbaa !61
  %223 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %224 = load i32, ptr %223, align 4, !tbaa !62
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, ptr %222, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !63
  %228 = sext i8 %227 to i32
  br label %229

229:                                              ; preds = %220, %218
  %230 = phi i32 [ %228, %220 ], [ 0, %218 ]
  %231 = getelementptr inbounds %struct.slice, ptr %173, i64 0, i32 128
  br label %232

232:                                              ; preds = %229, %246
  %233 = phi i64 [ 1, %229 ], [ %249, %246 ]
  %234 = phi i32 [ 1, %229 ], [ %248, %246 ]
  %235 = getelementptr inbounds [17 x %struct.pix_pos], ptr %7, i64 0, i64 %233
  %236 = load i32, ptr %235, align 16, !tbaa !59
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %246, label %238

238:                                              ; preds = %232
  %239 = load ptr, ptr %231, align 8, !tbaa !61
  %240 = getelementptr inbounds [17 x %struct.pix_pos], ptr %7, i64 0, i64 %233, i32 1
  %241 = load i32, ptr %240, align 4, !tbaa !62
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, ptr %239, i64 %242
  %244 = load i8, ptr %243, align 1, !tbaa !63
  %245 = sext i8 %244 to i32
  br label %246

246:                                              ; preds = %238, %232
  %247 = phi i32 [ %245, %238 ], [ 0, %232 ]
  %248 = and i32 %247, %234
  %249 = add nuw nsw i64 %233, 1
  %250 = icmp eq i64 %249, 17
  br i1 %250, label %251, label %232, !llvm.loop !76

251:                                              ; preds = %246, %215
  %252 = phi i32 [ %214, %215 ], [ %230, %246 ]
  %253 = phi i32 [ %217, %215 ], [ %248, %246 ]
  %254 = icmp eq i32 %252, 0
  %255 = icmp eq i32 %253, 0
  %256 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %257 = load i16, ptr %256, align 2
  %258 = sext i16 %257 to i64
  %259 = getelementptr inbounds ptr, ptr %189, i64 %258
  %260 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %261 = load i16, ptr %260, align 4
  %262 = sext i16 %261 to i64
  br label %263

263:                                              ; preds = %251, %290
  %264 = phi i64 [ 0, %251 ], [ %292, %290 ]
  %265 = phi i32 [ 0, %251 ], [ %275, %290 ]
  %266 = phi i32 [ 0, %251 ], [ %291, %290 ]
  br i1 %254, label %274, label %267

267:                                              ; preds = %263
  %268 = load ptr, ptr %259, align 8, !tbaa !49
  %269 = getelementptr i16, ptr %268, i64 %264
  %270 = getelementptr i16, ptr %269, i64 %262
  %271 = load i16, ptr %270, align 2, !tbaa !73
  %272 = zext i16 %271 to i32
  %273 = add nsw i32 %265, %272
  br label %274

274:                                              ; preds = %267, %263
  %275 = phi i32 [ %273, %267 ], [ %265, %263 ]
  br i1 %255, label %290, label %276

276:                                              ; preds = %274
  %277 = add nuw nsw i64 %264, 1
  %278 = getelementptr inbounds [17 x %struct.pix_pos], ptr %7, i64 0, i64 %277, i32 5
  %279 = load i16, ptr %278, align 2, !tbaa !65
  %280 = sext i16 %279 to i64
  %281 = getelementptr inbounds ptr, ptr %189, i64 %280
  %282 = load ptr, ptr %281, align 8, !tbaa !49
  %283 = getelementptr inbounds [17 x %struct.pix_pos], ptr %7, i64 0, i64 %277, i32 4
  %284 = load i16, ptr %283, align 4, !tbaa !66
  %285 = sext i16 %284 to i64
  %286 = getelementptr inbounds i16, ptr %282, i64 %285
  %287 = load i16, ptr %286, align 2, !tbaa !73
  %288 = zext i16 %287 to i32
  %289 = add nsw i32 %266, %288
  br label %290

290:                                              ; preds = %276, %274
  %291 = phi i32 [ %289, %276 ], [ %266, %274 ]
  %292 = add nuw nsw i64 %264, 1
  %293 = icmp eq i64 %292, 16
  br i1 %293, label %294, label %263, !llvm.loop !77

294:                                              ; preds = %290
  %295 = icmp ne i32 %252, 0
  %296 = icmp ne i32 %253, 0
  %297 = select i1 %295, i1 %296, i1 false
  br i1 %297, label %298, label %302

298:                                              ; preds = %294
  %299 = add i32 %291, 16
  %300 = add i32 %299, %275
  %301 = ashr i32 %300, 5
  br label %316

302:                                              ; preds = %294
  %303 = icmp eq i32 %252, 0
  %304 = select i1 %303, i1 %296, i1 false
  br i1 %304, label %305, label %308

305:                                              ; preds = %302
  %306 = add nsw i32 %291, 8
  %307 = ashr i32 %306, 4
  br label %316

308:                                              ; preds = %302
  %309 = select i1 %303, i1 true, i1 %296
  br i1 %309, label %313, label %310

310:                                              ; preds = %308
  %311 = add nsw i32 %275, 8
  %312 = ashr i32 %311, 4
  br label %316

313:                                              ; preds = %308
  %314 = getelementptr inbounds %struct.video_par, ptr %175, i64 0, i32 69, i64 %192
  %315 = load i32, ptr %314, align 4, !tbaa !78
  br label %316

316:                                              ; preds = %313, %310, %305, %298
  %317 = phi i32 [ %301, %298 ], [ %307, %305 ], [ %315, %313 ], [ %312, %310 ]
  %318 = trunc i32 %317 to i16
  br label %319

319:                                              ; preds = %316, %328
  %320 = phi i64 [ 0, %316 ], [ %329, %328 ]
  %321 = getelementptr inbounds ptr, ptr %194, i64 %320
  %322 = load ptr, ptr %321, align 8, !tbaa !49
  br label %323

323:                                              ; preds = %319, %323
  %324 = phi i64 [ 0, %319 ], [ %326, %323 ]
  %325 = getelementptr inbounds i16, ptr %322, i64 %324
  store i16 %318, ptr %325, align 2, !tbaa !73
  %326 = add nuw nsw i64 %324, 1
  %327 = icmp eq i64 %326, 16
  br i1 %327, label %328, label %323, !llvm.loop !79

328:                                              ; preds = %323
  %329 = add nuw nsw i64 %320, 1
  %330 = icmp eq i64 %329, 16
  br i1 %330, label %331, label %319, !llvm.loop !80

331:                                              ; preds = %328
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  br label %560

332:                                              ; preds = %3
  %333 = load ptr, ptr %0, align 8, !tbaa !34
  %334 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !42
  %336 = icmp eq i32 %1, 0
  %337 = getelementptr inbounds %struct.slice, ptr %333, i64 0, i32 125
  %338 = load ptr, ptr %337, align 8, !tbaa !43
  br i1 %336, label %345, label %339

339:                                              ; preds = %332
  %340 = getelementptr inbounds %struct.storable_picture, ptr %338, i64 0, i32 33
  %341 = load ptr, ptr %340, align 8, !tbaa !46
  %342 = add i32 %1, -1
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds ptr, ptr %341, i64 %343
  br label %347

345:                                              ; preds = %332
  %346 = getelementptr inbounds %struct.storable_picture, ptr %338, i64 0, i32 32
  br label %347

347:                                              ; preds = %345, %339
  %348 = phi ptr [ %344, %339 ], [ %346, %345 ]
  %349 = load ptr, ptr %348, align 8, !tbaa !49
  %350 = getelementptr inbounds %struct.slice, ptr %333, i64 0, i32 77
  %351 = load ptr, ptr %350, align 8, !tbaa !64
  %352 = zext i32 %1 to i64
  %353 = getelementptr inbounds ptr, ptr %351, i64 %352
  %354 = load ptr, ptr %353, align 8, !tbaa !49
  %355 = getelementptr inbounds %struct.video_par, ptr %335, i64 0, i32 70, i64 %352
  %356 = load i32, ptr %355, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %5) #6
  %357 = getelementptr inbounds %struct.video_par, ptr %335, i64 0, i32 160
  %358 = getelementptr inbounds %struct.video_par, ptr %335, i64 0, i32 81
  br label %359

359:                                              ; preds = %347, %359
  %360 = phi i64 [ 0, %347 ], [ %365, %359 ]
  %361 = load ptr, ptr %357, align 8, !tbaa !50
  %362 = getelementptr inbounds [17 x %struct.pix_pos], ptr %5, i64 0, i64 %360
  %363 = trunc i64 %360 to i32
  %364 = add i32 %363, -1
  call void %361(ptr noundef nonnull %0, i32 noundef -1, i32 noundef %364, ptr noundef nonnull %358, ptr noundef nonnull %362) #6
  %365 = add nuw nsw i64 %360, 1
  %366 = icmp eq i64 %365, 17
  br i1 %366, label %367, label %359, !llvm.loop !81

367:                                              ; preds = %359
  %368 = getelementptr inbounds %struct.video_par, ptr %335, i64 0, i32 160
  %369 = load ptr, ptr %368, align 8, !tbaa !50
  %370 = getelementptr inbounds %struct.video_par, ptr %335, i64 0, i32 81
  call void %369(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %370, ptr noundef nonnull %4) #6
  %371 = getelementptr inbounds %struct.video_par, ptr %335, i64 0, i32 1
  %372 = load ptr, ptr %371, align 8, !tbaa !56
  %373 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %372, i64 0, i32 30
  %374 = load i32, ptr %373, align 4, !tbaa !57
  %375 = icmp eq i32 %374, 0
  %376 = load i32, ptr %4, align 4, !tbaa !59
  br i1 %375, label %377, label %381

377:                                              ; preds = %367
  %378 = getelementptr inbounds [17 x %struct.pix_pos], ptr %5, i64 0, i64 1
  %379 = load i32, ptr %378, align 16, !tbaa !59
  %380 = load i32, ptr %5, align 16, !tbaa !59
  br label %426

381:                                              ; preds = %367
  %382 = icmp eq i32 %376, 0
  br i1 %382, label %392, label %383

383:                                              ; preds = %381
  %384 = getelementptr inbounds %struct.slice, ptr %333, i64 0, i32 128
  %385 = load ptr, ptr %384, align 8, !tbaa !61
  %386 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %387 = load i32, ptr %386, align 4, !tbaa !62
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, ptr %385, i64 %388
  %390 = load i8, ptr %389, align 1, !tbaa !63
  %391 = sext i8 %390 to i32
  br label %392

392:                                              ; preds = %383, %381
  %393 = phi i32 [ %391, %383 ], [ 0, %381 ]
  %394 = getelementptr inbounds %struct.slice, ptr %333, i64 0, i32 128
  br label %395

395:                                              ; preds = %392, %409
  %396 = phi i64 [ 1, %392 ], [ %412, %409 ]
  %397 = phi i32 [ 1, %392 ], [ %411, %409 ]
  %398 = getelementptr inbounds [17 x %struct.pix_pos], ptr %5, i64 0, i64 %396
  %399 = load i32, ptr %398, align 16, !tbaa !59
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %409, label %401

401:                                              ; preds = %395
  %402 = load ptr, ptr %394, align 8, !tbaa !61
  %403 = getelementptr inbounds [17 x %struct.pix_pos], ptr %5, i64 0, i64 %396, i32 1
  %404 = load i32, ptr %403, align 4, !tbaa !62
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8, ptr %402, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !63
  %408 = sext i8 %407 to i32
  br label %409

409:                                              ; preds = %401, %395
  %410 = phi i32 [ %408, %401 ], [ 0, %395 ]
  %411 = and i32 %410, %397
  %412 = add nuw nsw i64 %396, 1
  %413 = icmp eq i64 %412, 17
  br i1 %413, label %414, label %395, !llvm.loop !82

414:                                              ; preds = %409
  %415 = load i32, ptr %5, align 16, !tbaa !59
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %426, label %417

417:                                              ; preds = %414
  %418 = getelementptr inbounds %struct.slice, ptr %333, i64 0, i32 128
  %419 = load ptr, ptr %418, align 8, !tbaa !61
  %420 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %421 = load i32, ptr %420, align 4, !tbaa !62
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i8, ptr %419, i64 %422
  %424 = load i8, ptr %423, align 1, !tbaa !63
  %425 = sext i8 %424 to i32
  br label %426

426:                                              ; preds = %417, %414, %377
  %427 = phi i32 [ %376, %377 ], [ %393, %414 ], [ %393, %417 ]
  %428 = phi i32 [ %379, %377 ], [ %411, %414 ], [ %411, %417 ]
  %429 = phi i32 [ %380, %377 ], [ 0, %414 ], [ %425, %417 ]
  %430 = icmp ne i32 %427, 0
  %431 = icmp ne i32 %429, 0
  %432 = select i1 %430, i1 %431, i1 false
  %433 = icmp ne i32 %428, 0
  %434 = select i1 %432, i1 %433, i1 false
  br i1 %434, label %436, label %435

435:                                              ; preds = %426
  call void @error(ptr noundef nonnull @.str.3, i32 noundef 500) #6
  br label %436

436:                                              ; preds = %435, %426
  %437 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 5
  %438 = load i16, ptr %437, align 2, !tbaa !65
  %439 = sext i16 %438 to i64
  %440 = getelementptr inbounds ptr, ptr %349, i64 %439
  %441 = load ptr, ptr %440, align 8, !tbaa !49
  %442 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 4
  %443 = load i16, ptr %442, align 4, !tbaa !66
  %444 = sext i16 %443 to i64
  %445 = getelementptr i16, ptr %441, i64 %444
  %446 = getelementptr i16, ptr %445, i64 7
  br label %447

447:                                              ; preds = %436, %447
  %448 = phi i64 [ 1, %436 ], [ %490, %447 ]
  %449 = phi i32 [ 0, %436 ], [ %461, %447 ]
  %450 = phi i32 [ 0, %436 ], [ %489, %447 ]
  %451 = getelementptr inbounds i16, ptr %446, i64 %448
  %452 = load i16, ptr %451, align 2, !tbaa !73
  %453 = zext i16 %452 to i32
  %454 = sub nsw i64 0, %448
  %455 = getelementptr inbounds i16, ptr %446, i64 %454
  %456 = load i16, ptr %455, align 2, !tbaa !73
  %457 = zext i16 %456 to i32
  %458 = sub nsw i32 %453, %457
  %459 = trunc i64 %448 to i32
  %460 = mul nsw i32 %458, %459
  %461 = add nsw i32 %460, %449
  %462 = or disjoint i64 %448, 8
  %463 = getelementptr inbounds [17 x %struct.pix_pos], ptr %5, i64 0, i64 %462, i32 5
  %464 = load i16, ptr %463, align 2, !tbaa !65
  %465 = sext i16 %464 to i64
  %466 = getelementptr inbounds ptr, ptr %349, i64 %465
  %467 = load ptr, ptr %466, align 8, !tbaa !49
  %468 = getelementptr inbounds [17 x %struct.pix_pos], ptr %5, i64 0, i64 %462, i32 4
  %469 = load i16, ptr %468, align 4, !tbaa !66
  %470 = sext i16 %469 to i64
  %471 = getelementptr inbounds i16, ptr %467, i64 %470
  %472 = load i16, ptr %471, align 2, !tbaa !73
  %473 = zext i16 %472 to i32
  %474 = sub nuw nsw i64 8, %448
  %475 = getelementptr inbounds [17 x %struct.pix_pos], ptr %5, i64 0, i64 %474, i32 5
  %476 = load i16, ptr %475, align 2, !tbaa !65
  %477 = sext i16 %476 to i64
  %478 = getelementptr inbounds ptr, ptr %349, i64 %477
  %479 = load ptr, ptr %478, align 8, !tbaa !49
  %480 = getelementptr inbounds [17 x %struct.pix_pos], ptr %5, i64 0, i64 %474, i32 4
  %481 = load i16, ptr %480, align 4, !tbaa !66
  %482 = sext i16 %481 to i64
  %483 = getelementptr inbounds i16, ptr %479, i64 %482
  %484 = load i16, ptr %483, align 2, !tbaa !73
  %485 = zext i16 %484 to i32
  %486 = sub nsw i32 %473, %485
  %487 = trunc i64 %448 to i32
  %488 = mul nsw i32 %486, %487
  %489 = add nsw i32 %488, %450
  %490 = add nuw nsw i64 %448, 1
  %491 = icmp eq i64 %490, 8
  br i1 %491, label %492, label %447, !llvm.loop !83

492:                                              ; preds = %447
  %493 = getelementptr i16, ptr %445, i64 15
  %494 = load i16, ptr %493, align 2, !tbaa !73
  %495 = zext i16 %494 to i32
  %496 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %497 = load i16, ptr %496, align 2, !tbaa !65
  %498 = sext i16 %497 to i64
  %499 = getelementptr inbounds ptr, ptr %349, i64 %498
  %500 = load ptr, ptr %499, align 8, !tbaa !49
  %501 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %502 = load i16, ptr %501, align 4, !tbaa !66
  %503 = sext i16 %502 to i64
  %504 = getelementptr inbounds i16, ptr %500, i64 %503
  %505 = load i16, ptr %504, align 2, !tbaa !73
  %506 = zext i16 %505 to i32
  %507 = sub nsw i32 %495, %506
  %508 = shl nsw i32 %507, 3
  %509 = add nsw i32 %508, %461
  %510 = getelementptr inbounds [17 x %struct.pix_pos], ptr %5, i64 0, i64 16, i32 5
  %511 = load i16, ptr %510, align 2, !tbaa !65
  %512 = sext i16 %511 to i64
  %513 = getelementptr inbounds ptr, ptr %349, i64 %512
  %514 = load ptr, ptr %513, align 8, !tbaa !49
  %515 = getelementptr inbounds [17 x %struct.pix_pos], ptr %5, i64 0, i64 16, i32 4
  %516 = load i16, ptr %515, align 4, !tbaa !66
  %517 = sext i16 %516 to i64
  %518 = getelementptr inbounds i16, ptr %514, i64 %517
  %519 = load i16, ptr %518, align 2, !tbaa !73
  %520 = zext i16 %519 to i32
  %521 = sub nsw i32 %520, %506
  %522 = shl nsw i32 %521, 3
  %523 = add nsw i32 %522, %489
  %524 = mul nsw i32 %509, 5
  %525 = add nsw i32 %524, 32
  %526 = ashr i32 %525, 6
  %527 = mul nsw i32 %523, 5
  %528 = add nsw i32 %527, 32
  %529 = ashr i32 %528, 6
  %530 = add nuw nsw i32 %520, %495
  %531 = shl nuw nsw i32 %530, 4
  %532 = add nuw nsw i32 %531, 16
  br label %533

533:                                              ; preds = %492, %554
  %534 = phi i64 [ 0, %492 ], [ %555, %554 ]
  %535 = trunc i64 %534 to i32
  %536 = add i32 %535, -7
  %537 = mul i32 %536, %529
  %538 = add i32 %532, %537
  %539 = getelementptr inbounds ptr, ptr %354, i64 %534
  %540 = load ptr, ptr %539, align 8, !tbaa !49
  br label %541

541:                                              ; preds = %533, %541
  %542 = phi i64 [ 0, %533 ], [ %552, %541 ]
  %543 = trunc i64 %542 to i32
  %544 = add i32 %543, -7
  %545 = mul i32 %544, %526
  %546 = add i32 %538, %545
  %547 = ashr i32 %546, 5
  %548 = call i32 @llvm.smax.i32(i32 %547, i32 0)
  %549 = call i32 @llvm.smin.i32(i32 %548, i32 %356)
  %550 = trunc i32 %549 to i16
  %551 = getelementptr inbounds i16, ptr %540, i64 %542
  store i16 %550, ptr %551, align 2, !tbaa !73
  %552 = add nuw nsw i64 %542, 1
  %553 = icmp eq i64 %552, 16
  br i1 %553, label %554, label %541, !llvm.loop !84

554:                                              ; preds = %541
  %555 = add nuw nsw i64 %534, 1
  %556 = icmp eq i64 %555, 16
  br i1 %556, label %557, label %533, !llvm.loop !85

557:                                              ; preds = %554
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  br label %560

558:                                              ; preds = %3
  %559 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %2)
  br label %560

560:                                              ; preds = %558, %557, %331, %171, %80
  %561 = phi i32 [ 1, %558 ], [ 0, %557 ], [ 0, %331 ], [ 0, %171 ], [ 0, %80 ]
  ret i32 %561
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 0}
!35 = !{!"macroblock", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !40, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !37, i64 80, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !41, i64 108, !37, i64 110, !37, i64 111, !41, i64 112, !41, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !37, i64 154, !39, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !39, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !41, i64 376, !41, i64 378, !41, i64 380, !39, i64 384, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !37, i64 472}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"", !41, i64 0, !41, i64 2}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 8}
!43 = !{!44, !36, i64 13520}
!44 = !{!"slice", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !37, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !41, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !37, i64 136, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !37, i64 256, !37, i64 264, !36, i64 312, !36, i64 320, !36, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !39, i64 1176, !39, i64 1180, !39, i64 1184, !45, i64 1188, !41, i64 1220, !41, i64 1222, !41, i64 1224, !39, i64 1228, !39, i64 1232, !39, i64 1236, !39, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !37, i64 1288, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !39, i64 13264, !39, i64 13268, !41, i64 13272, !41, i64 13274, !41, i64 13276, !41, i64 13278, !36, i64 13280, !36, i64 13288, !36, i64 13296, !41, i64 13304, !41, i64 13306, !39, i64 13308, !39, i64 13312, !36, i64 13320, !36, i64 13328, !39, i64 13336, !37, i64 13340, !36, i64 13408, !36, i64 13416, !36, i64 13424, !36, i64 13432, !36, i64 13440, !36, i64 13448, !36, i64 13456, !36, i64 13464, !36, i64 13472, !36, i64 13480, !36, i64 13488, !36, i64 13496, !39, i64 13504, !36, i64 13512, !36, i64 13520, !36, i64 13528, !36, i64 13536, !36, i64 13544, !37, i64 13552}
!45 = !{!"nalunitheadermvcext_tag", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!46 = !{!47, !36, i64 136}
!47 = !{!"storable_picture", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !37, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !41, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !37, i64 160, !48, i64 184, !37, i64 192, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !37, i64 300, !39, i64 308, !36, i64 312, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !36, i64 336, !39, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !36, i64 376, !39, i64 384, !39, i64 388, !37, i64 392, !37, i64 400}
!48 = !{!"pic_motion_params_old", !36, i64 0}
!49 = !{!36, !36, i64 0}
!50 = !{!51, !36, i64 856744}
!51 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !41, i64 849040, !41, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !52, i64 849304, !52, i64 849624, !52, i64 849944, !52, i64 850264, !52, i64 850584, !52, i64 850904, !52, i64 851224, !52, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !55, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!52 = !{!"image_data", !53, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!53 = !{!"frame_format", !39, i64 0, !39, i64 4, !54, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!54 = !{!"double", !37, i64 0}
!55 = !{!"long", !37, i64 0}
!56 = !{!51, !36, i64 8}
!57 = !{!58, !39, i64 2204}
!58 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 72, !37, i64 456, !37, i64 1992, !37, i64 2016, !39, i64 2040, !39, i64 2044, !39, i64 2048, !37, i64 2052, !37, i64 2084, !37, i64 2116, !39, i64 2148, !39, i64 2152, !39, i64 2156, !36, i64 2160, !39, i64 2168, !39, i64 2172, !39, i64 2176, !39, i64 2180, !39, i64 2184, !39, i64 2188, !39, i64 2192, !39, i64 2196, !39, i64 2200, !39, i64 2204, !39, i64 2208}
!59 = !{!60, !39, i64 0}
!60 = !{!"pix_pos", !39, i64 0, !39, i64 4, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14}
!61 = !{!44, !36, i64 13544}
!62 = !{!60, !39, i64 4}
!63 = !{!37, !37, i64 0}
!64 = !{!44, !36, i64 1248}
!65 = !{!60, !41, i64 14}
!66 = !{!60, !41, i64 12}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = distinct !{!70, !68, !69}
!71 = distinct !{!71, !68, !69}
!72 = distinct !{!72, !68, !69}
!73 = !{!41, !41, i64 0}
!74 = distinct !{!74, !68, !69}
!75 = distinct !{!75, !68, !69}
!76 = distinct !{!76, !68, !69}
!77 = distinct !{!77, !68, !69}
!78 = !{!39, !39, i64 0}
!79 = distinct !{!79, !68, !69}
!80 = distinct !{!80, !68, !69}
!81 = distinct !{!81, !68, !69}
!82 = distinct !{!82, !68, !69}
!83 = distinct !{!83, !68, !69}
!84 = distinct !{!84, !68, !69}
!85 = distinct !{!85, !68, !69}
