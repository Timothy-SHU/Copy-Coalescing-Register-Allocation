; ModuleID = 'ldecod_src/intra16x16_pred_normal.c'
source_filename = "ldecod_src/intra16x16_pred_normal.c"
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
define dso_local noundef i32 @intrapred_16x16_normal(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = alloca %struct.pix_pos, align 4
  switch i32 %2, label %525 [
    i32 0, label %11
    i32 1, label %82
    i32 2, label %157
    i32 3, label %303
  ]

11:                                               ; preds = %3
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = icmp eq i32 %1, 0
  %16 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 125
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  br i1 %15, label %24, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.storable_picture, ptr %17, i64 0, i32 33
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = add i32 %1, -1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  br label %26

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.storable_picture, ptr %17, i64 0, i32 32
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi ptr [ %23, %18 ], [ %25, %24 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #6
  %29 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 160
  %30 = load ptr, ptr %29, align 8, !tbaa !50
  %31 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 81
  call void %30(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %31, ptr noundef nonnull %10) #6
  %32 = getelementptr inbounds %struct.video_par, ptr %14, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  %34 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %33, i64 0, i32 30
  %35 = load i32, ptr %34, align 4, !tbaa !57
  %36 = icmp eq i32 %35, 0
  %37 = load i32, ptr %10, align 4, !tbaa !59
  br i1 %36, label %49, label %38

38:                                               ; preds = %26
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 128
  %42 = load ptr, ptr %41, align 8, !tbaa !61
  %43 = getelementptr inbounds %struct.pix_pos, ptr %10, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !62
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %42, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !63
  %48 = sext i8 %47 to i32
  br label %49

49:                                               ; preds = %26, %40, %38
  %50 = phi i32 [ %48, %40 ], [ 0, %38 ], [ %37, %26 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #6
  br label %53

53:                                               ; preds = %52, %49
  %54 = getelementptr inbounds %struct.slice, ptr %12, i64 0, i32 77
  %55 = load ptr, ptr %54, align 8, !tbaa !64
  %56 = zext i32 %1 to i64
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !49
  %59 = getelementptr inbounds %struct.pix_pos, ptr %10, i64 0, i32 5
  %60 = load i16, ptr %59, align 2, !tbaa !65
  %61 = sext i16 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %28, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !49
  %64 = getelementptr inbounds %struct.pix_pos, ptr %10, i64 0, i32 4
  %65 = load i16, ptr %64, align 4, !tbaa !66
  %66 = sext i16 %65 to i64
  %67 = getelementptr inbounds i16, ptr %63, i64 %66
  br label %68

68:                                               ; preds = %53, %68
  %69 = phi i32 [ 0, %53 ], [ %79, %68 ]
  %70 = phi ptr [ %58, %53 ], [ %77, %68 ]
  %71 = getelementptr inbounds ptr, ptr %70, i64 1
  %72 = load ptr, ptr %70, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %72, ptr noundef nonnull align 2 dereferenceable(32) %67, i64 32, i1 false)
  %73 = getelementptr inbounds ptr, ptr %70, i64 2
  %74 = load ptr, ptr %71, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %74, ptr noundef nonnull align 2 dereferenceable(32) %67, i64 32, i1 false)
  %75 = getelementptr inbounds ptr, ptr %70, i64 3
  %76 = load ptr, ptr %73, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %76, ptr noundef nonnull align 2 dereferenceable(32) %67, i64 32, i1 false)
  %77 = getelementptr inbounds ptr, ptr %70, i64 4
  %78 = load ptr, ptr %75, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %78, ptr noundef nonnull align 2 dereferenceable(32) %67, i64 32, i1 false)
  %79 = add nuw nsw i32 %69, 4
  %80 = icmp ult i32 %69, 12
  br i1 %80, label %68, label %81, !llvm.loop !67

81:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6
  br label %527

82:                                               ; preds = %3
  %83 = load ptr, ptr %0, align 8, !tbaa !34
  %84 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !42
  %86 = icmp eq i32 %1, 0
  %87 = getelementptr inbounds %struct.slice, ptr %83, i64 0, i32 125
  %88 = load ptr, ptr %87, align 8, !tbaa !43
  br i1 %86, label %95, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.storable_picture, ptr %88, i64 0, i32 33
  %91 = load ptr, ptr %90, align 8, !tbaa !46
  %92 = add i32 %1, -1
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds ptr, ptr %91, i64 %93
  br label %97

95:                                               ; preds = %82
  %96 = getelementptr inbounds %struct.storable_picture, ptr %88, i64 0, i32 32
  br label %97

97:                                               ; preds = %95, %89
  %98 = phi ptr [ %94, %89 ], [ %96, %95 ]
  %99 = load ptr, ptr %98, align 8, !tbaa !49
  %100 = getelementptr inbounds %struct.slice, ptr %83, i64 0, i32 77
  %101 = load ptr, ptr %100, align 8, !tbaa !64
  %102 = zext i32 %1 to i64
  %103 = getelementptr inbounds ptr, ptr %101, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6
  %105 = getelementptr inbounds %struct.video_par, ptr %85, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %105, ptr noundef nonnull %9) #6
  %106 = getelementptr inbounds %struct.video_par, ptr %85, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !56
  %108 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %107, i64 0, i32 30
  %109 = load i32, ptr %108, align 4, !tbaa !57
  %110 = icmp eq i32 %109, 0
  %111 = load i32, ptr %9, align 4, !tbaa !59
  br i1 %110, label %123, label %112

112:                                              ; preds = %97
  %113 = icmp eq i32 %111, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.slice, ptr %83, i64 0, i32 128
  %116 = load ptr, ptr %115, align 8, !tbaa !61
  %117 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !62
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, ptr %116, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !63
  %122 = sext i8 %121 to i32
  br label %123

123:                                              ; preds = %97, %114, %112
  %124 = phi i32 [ %122, %114 ], [ 0, %112 ], [ %111, %97 ]
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  call void @error(ptr noundef nonnull @.str.2, i32 noundef 500) #6
  br label %127

127:                                              ; preds = %126, %123
  %128 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %129 = load i16, ptr %128, align 2, !tbaa !65
  %130 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %131 = load i16, ptr %130, align 4, !tbaa !66
  %132 = sext i16 %131 to i64
  %133 = sext i16 %129 to i64
  br label %134

134:                                              ; preds = %127, %152
  %135 = phi i64 [ 0, %127 ], [ %154, %152 ]
  %136 = phi i64 [ %133, %127 ], [ %153, %152 ]
  %137 = getelementptr inbounds ptr, ptr %104, i64 %135
  %138 = load ptr, ptr %137, align 8, !tbaa !49
  %139 = getelementptr inbounds ptr, ptr %99, i64 %136
  %140 = load ptr, ptr %139, align 8, !tbaa !49
  %141 = getelementptr inbounds i16, ptr %140, i64 %132
  %142 = load i16, ptr %141, align 2, !tbaa !70
  br label %143

143:                                              ; preds = %134, %143
  %144 = phi ptr [ %138, %134 ], [ %149, %143 ]
  %145 = phi i32 [ 0, %134 ], [ %150, %143 ]
  %146 = getelementptr inbounds i16, ptr %144, i64 1
  store i16 %142, ptr %144, align 2, !tbaa !70
  %147 = getelementptr inbounds i16, ptr %144, i64 2
  store i16 %142, ptr %146, align 2, !tbaa !70
  %148 = getelementptr inbounds i16, ptr %144, i64 3
  store i16 %142, ptr %147, align 2, !tbaa !70
  %149 = getelementptr inbounds i16, ptr %144, i64 4
  store i16 %142, ptr %148, align 2, !tbaa !70
  %150 = add nuw nsw i32 %145, 4
  %151 = icmp ult i32 %145, 12
  br i1 %151, label %143, label %152, !llvm.loop !71

152:                                              ; preds = %143
  %153 = add nsw i64 %136, 1
  %154 = add nuw nsw i64 %135, 1
  %155 = icmp eq i64 %154, 16
  br i1 %155, label %156, label %134, !llvm.loop !72

156:                                              ; preds = %152
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6
  br label %527

157:                                              ; preds = %3
  %158 = load ptr, ptr %0, align 8, !tbaa !34
  %159 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !42
  %161 = icmp eq i32 %1, 0
  %162 = getelementptr inbounds %struct.slice, ptr %158, i64 0, i32 125
  %163 = load ptr, ptr %162, align 8, !tbaa !43
  br i1 %161, label %170, label %164

164:                                              ; preds = %157
  %165 = getelementptr inbounds %struct.storable_picture, ptr %163, i64 0, i32 33
  %166 = load ptr, ptr %165, align 8, !tbaa !46
  %167 = add i32 %1, -1
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds ptr, ptr %166, i64 %168
  br label %172

170:                                              ; preds = %157
  %171 = getelementptr inbounds %struct.storable_picture, ptr %163, i64 0, i32 32
  br label %172

172:                                              ; preds = %170, %164
  %173 = phi ptr [ %169, %164 ], [ %171, %170 ]
  %174 = load ptr, ptr %173, align 8, !tbaa !49
  %175 = getelementptr inbounds %struct.slice, ptr %158, i64 0, i32 77
  %176 = load ptr, ptr %175, align 8, !tbaa !64
  %177 = zext i32 %1 to i64
  %178 = getelementptr inbounds ptr, ptr %176, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  %180 = getelementptr inbounds %struct.video_par, ptr %160, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %180, ptr noundef nonnull %7) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %180, ptr noundef nonnull %8) #6
  %181 = getelementptr inbounds %struct.video_par, ptr %160, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !56
  %183 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %182, i64 0, i32 30
  %184 = load i32, ptr %183, align 4, !tbaa !57
  %185 = icmp eq i32 %184, 0
  %186 = load i32, ptr %8, align 4, !tbaa !59
  br i1 %185, label %187, label %189

187:                                              ; preds = %172
  %188 = load i32, ptr %7, align 4, !tbaa !59
  br label %213

189:                                              ; preds = %172
  %190 = icmp eq i32 %186, 0
  br i1 %190, label %200, label %191

191:                                              ; preds = %189
  %192 = getelementptr inbounds %struct.slice, ptr %158, i64 0, i32 128
  %193 = load ptr, ptr %192, align 8, !tbaa !61
  %194 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %195 = load i32, ptr %194, align 4, !tbaa !62
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %193, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !63
  %199 = sext i8 %198 to i32
  br label %200

200:                                              ; preds = %191, %189
  %201 = phi i32 [ %199, %191 ], [ 0, %189 ]
  %202 = load i32, ptr %7, align 4, !tbaa !59
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %213, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.slice, ptr %158, i64 0, i32 128
  %206 = load ptr, ptr %205, align 8, !tbaa !61
  %207 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %208 = load i32, ptr %207, align 4, !tbaa !62
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, ptr %206, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !63
  %212 = sext i8 %211 to i32
  br label %213

213:                                              ; preds = %204, %200, %187
  %214 = phi i32 [ %186, %187 ], [ %201, %200 ], [ %201, %204 ]
  %215 = phi i32 [ %188, %187 ], [ 0, %200 ], [ %212, %204 ]
  %216 = icmp ne i32 %214, 0
  br i1 %216, label %217, label %237

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %219 = load i16, ptr %218, align 2, !tbaa !65
  %220 = sext i16 %219 to i64
  %221 = getelementptr inbounds ptr, ptr %174, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !49
  %223 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %224 = load i16, ptr %223, align 4, !tbaa !66
  %225 = sext i16 %224 to i64
  %226 = getelementptr inbounds i16, ptr %222, i64 %225
  br label %227

227:                                              ; preds = %217, %227
  %228 = phi ptr [ %226, %217 ], [ %231, %227 ]
  %229 = phi i32 [ 0, %217 ], [ %234, %227 ]
  %230 = phi i32 [ 0, %217 ], [ %235, %227 ]
  %231 = getelementptr inbounds i16, ptr %228, i64 1
  %232 = load i16, ptr %228, align 2, !tbaa !70
  %233 = zext i16 %232 to i32
  %234 = add nuw nsw i32 %229, %233
  %235 = add nuw nsw i32 %230, 1
  %236 = icmp eq i32 %235, 16
  br i1 %236, label %237, label %227, !llvm.loop !73

237:                                              ; preds = %227, %213
  %238 = phi i32 [ 0, %213 ], [ %234, %227 ]
  %239 = icmp ne i32 %215, 0
  br i1 %239, label %240, label %260

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %242 = load i16, ptr %241, align 2, !tbaa !65
  %243 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %244 = load i16, ptr %243, align 4, !tbaa !66
  %245 = sext i16 %244 to i64
  %246 = sext i16 %242 to i64
  br label %247

247:                                              ; preds = %240, %247
  %248 = phi i64 [ %246, %240 ], [ %251, %247 ]
  %249 = phi i32 [ 0, %240 ], [ %257, %247 ]
  %250 = phi i32 [ 0, %240 ], [ %258, %247 ]
  %251 = add nsw i64 %248, 1
  %252 = getelementptr inbounds ptr, ptr %174, i64 %248
  %253 = load ptr, ptr %252, align 8, !tbaa !49
  %254 = getelementptr inbounds i16, ptr %253, i64 %245
  %255 = load i16, ptr %254, align 2, !tbaa !70
  %256 = zext i16 %255 to i32
  %257 = add nuw nsw i32 %249, %256
  %258 = add nuw nsw i32 %250, 1
  %259 = icmp eq i32 %258, 16
  br i1 %259, label %260, label %247, !llvm.loop !74

260:                                              ; preds = %247, %237
  %261 = phi i32 [ 0, %237 ], [ %257, %247 ]
  %262 = and i1 %216, %239
  br i1 %262, label %263, label %267

263:                                              ; preds = %260
  %264 = add i32 %238, 16
  %265 = add i32 %264, %261
  %266 = ashr i32 %265, 5
  br label %281

267:                                              ; preds = %260
  %268 = icmp eq i32 %214, 0
  %269 = and i1 %268, %239
  br i1 %269, label %270, label %273

270:                                              ; preds = %267
  %271 = add nsw i32 %261, 8
  %272 = ashr i32 %271, 4
  br label %281

273:                                              ; preds = %267
  %274 = or i1 %268, %239
  br i1 %274, label %278, label %275

275:                                              ; preds = %273
  %276 = add nsw i32 %238, 8
  %277 = ashr i32 %276, 4
  br label %281

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.video_par, ptr %160, i64 0, i32 69, i64 %177
  %280 = load i32, ptr %279, align 4, !tbaa !75
  br label %281

281:                                              ; preds = %278, %275, %270, %263
  %282 = phi i32 [ %266, %263 ], [ %272, %270 ], [ %280, %278 ], [ %277, %275 ]
  %283 = trunc i32 %282 to i16
  br label %284

284:                                              ; preds = %281, %299
  %285 = phi i64 [ 0, %281 ], [ %300, %299 ]
  %286 = getelementptr inbounds ptr, ptr %179, i64 %285
  %287 = load ptr, ptr %286, align 8, !tbaa !49
  br label %288

288:                                              ; preds = %284, %288
  %289 = phi i64 [ 0, %284 ], [ %297, %288 ]
  %290 = getelementptr inbounds i16, ptr %287, i64 %289
  store i16 %283, ptr %290, align 2, !tbaa !70
  %291 = or disjoint i64 %289, 1
  %292 = getelementptr inbounds i16, ptr %287, i64 %291
  store i16 %283, ptr %292, align 2, !tbaa !70
  %293 = or disjoint i64 %289, 2
  %294 = getelementptr inbounds i16, ptr %287, i64 %293
  store i16 %283, ptr %294, align 2, !tbaa !70
  %295 = or disjoint i64 %289, 3
  %296 = getelementptr inbounds i16, ptr %287, i64 %295
  store i16 %283, ptr %296, align 2, !tbaa !70
  %297 = add nuw nsw i64 %289, 4
  %298 = icmp ult i64 %289, 12
  br i1 %298, label %288, label %299, !llvm.loop !76

299:                                              ; preds = %288
  %300 = add nuw nsw i64 %285, 1
  %301 = icmp eq i64 %300, 16
  br i1 %301, label %302, label %284, !llvm.loop !77

302:                                              ; preds = %299
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  br label %527

303:                                              ; preds = %3
  %304 = load ptr, ptr %0, align 8, !tbaa !34
  %305 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !42
  %307 = icmp eq i32 %1, 0
  %308 = getelementptr inbounds %struct.slice, ptr %304, i64 0, i32 125
  %309 = load ptr, ptr %308, align 8, !tbaa !43
  br i1 %307, label %316, label %310

310:                                              ; preds = %303
  %311 = getelementptr inbounds %struct.storable_picture, ptr %309, i64 0, i32 33
  %312 = load ptr, ptr %311, align 8, !tbaa !46
  %313 = add i32 %1, -1
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds ptr, ptr %312, i64 %314
  br label %318

316:                                              ; preds = %303
  %317 = getelementptr inbounds %struct.storable_picture, ptr %309, i64 0, i32 32
  br label %318

318:                                              ; preds = %316, %310
  %319 = phi ptr [ %315, %310 ], [ %317, %316 ]
  %320 = load ptr, ptr %319, align 8, !tbaa !49
  %321 = getelementptr inbounds %struct.slice, ptr %304, i64 0, i32 77
  %322 = load ptr, ptr %321, align 8, !tbaa !64
  %323 = zext i32 %1 to i64
  %324 = getelementptr inbounds ptr, ptr %322, i64 %323
  %325 = load ptr, ptr %324, align 8, !tbaa !49
  %326 = getelementptr inbounds %struct.video_par, ptr %306, i64 0, i32 70, i64 %323
  %327 = load i32, ptr %326, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %328 = getelementptr inbounds %struct.video_par, ptr %306, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %328, ptr noundef nonnull %6) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %328, ptr noundef nonnull %4) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %328, ptr noundef nonnull %5) #6
  %329 = getelementptr inbounds %struct.video_par, ptr %306, i64 0, i32 1
  %330 = load ptr, ptr %329, align 8, !tbaa !56
  %331 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %330, i64 0, i32 30
  %332 = load i32, ptr %331, align 4, !tbaa !57
  %333 = icmp eq i32 %332, 0
  %334 = load i32, ptr %5, align 4, !tbaa !59
  br i1 %333, label %335, label %338

335:                                              ; preds = %318
  %336 = load i32, ptr %4, align 4, !tbaa !59
  %337 = load i32, ptr %6, align 4, !tbaa !59
  br label %375

338:                                              ; preds = %318
  %339 = icmp eq i32 %334, 0
  br i1 %339, label %349, label %340

340:                                              ; preds = %338
  %341 = getelementptr inbounds %struct.slice, ptr %304, i64 0, i32 128
  %342 = load ptr, ptr %341, align 8, !tbaa !61
  %343 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %344 = load i32, ptr %343, align 4, !tbaa !62
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8, ptr %342, i64 %345
  %347 = load i8, ptr %346, align 1, !tbaa !63
  %348 = sext i8 %347 to i32
  br label %349

349:                                              ; preds = %340, %338
  %350 = phi i32 [ %348, %340 ], [ 0, %338 ]
  %351 = load i32, ptr %4, align 4, !tbaa !59
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %362, label %353

353:                                              ; preds = %349
  %354 = getelementptr inbounds %struct.slice, ptr %304, i64 0, i32 128
  %355 = load ptr, ptr %354, align 8, !tbaa !61
  %356 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %357 = load i32, ptr %356, align 4, !tbaa !62
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8, ptr %355, i64 %358
  %360 = load i8, ptr %359, align 1, !tbaa !63
  %361 = sext i8 %360 to i32
  br label %362

362:                                              ; preds = %353, %349
  %363 = phi i32 [ %361, %353 ], [ 0, %349 ]
  %364 = load i32, ptr %6, align 4, !tbaa !59
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %375, label %366

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.slice, ptr %304, i64 0, i32 128
  %368 = load ptr, ptr %367, align 8, !tbaa !61
  %369 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %370 = load i32, ptr %369, align 4, !tbaa !62
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, ptr %368, i64 %371
  %373 = load i8, ptr %372, align 1, !tbaa !63
  %374 = sext i8 %373 to i32
  br label %375

375:                                              ; preds = %366, %362, %335
  %376 = phi i32 [ %334, %335 ], [ %350, %362 ], [ %350, %366 ]
  %377 = phi i32 [ %336, %335 ], [ %363, %362 ], [ %363, %366 ]
  %378 = phi i32 [ %337, %335 ], [ 0, %362 ], [ %374, %366 ]
  %379 = icmp ne i32 %376, 0
  %380 = icmp ne i32 %378, 0
  %381 = select i1 %379, i1 %380, i1 false
  %382 = icmp ne i32 %377, 0
  %383 = select i1 %381, i1 %382, i1 false
  br i1 %383, label %385, label %384

384:                                              ; preds = %375
  call void @error(ptr noundef nonnull @.str.3, i32 noundef 500) #6
  br label %385

385:                                              ; preds = %384, %375
  %386 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %387 = load i16, ptr %386, align 2, !tbaa !65
  %388 = sext i16 %387 to i64
  %389 = getelementptr inbounds ptr, ptr %320, i64 %388
  %390 = load ptr, ptr %389, align 8, !tbaa !49
  %391 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %392 = load i16, ptr %391, align 4, !tbaa !66
  %393 = sext i16 %392 to i64
  %394 = getelementptr i16, ptr %390, i64 %393
  %395 = getelementptr i16, ptr %394, i64 7
  %396 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 5
  %397 = load i16, ptr %396, align 2, !tbaa !65
  %398 = sext i16 %397 to i32
  %399 = add nsw i32 %398, 7
  %400 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 4
  %401 = load i16, ptr %400, align 4, !tbaa !66
  %402 = sext i16 %401 to i64
  %403 = sext i32 %399 to i64
  %404 = sext i32 %399 to i64
  %405 = getelementptr ptr, ptr %320, i64 %404
  br label %406

406:                                              ; preds = %385, %406
  %407 = phi i64 [ 1, %385 ], [ %436, %406 ]
  %408 = phi i32 [ 0, %385 ], [ %420, %406 ]
  %409 = phi i32 [ 0, %385 ], [ %435, %406 ]
  %410 = getelementptr inbounds i16, ptr %395, i64 %407
  %411 = load i16, ptr %410, align 2, !tbaa !70
  %412 = zext i16 %411 to i32
  %413 = sub nsw i64 0, %407
  %414 = getelementptr inbounds i16, ptr %395, i64 %413
  %415 = load i16, ptr %414, align 2, !tbaa !70
  %416 = zext i16 %415 to i32
  %417 = sub nsw i32 %412, %416
  %418 = trunc i64 %407 to i32
  %419 = mul nsw i32 %417, %418
  %420 = add nsw i32 %419, %408
  %421 = getelementptr ptr, ptr %405, i64 %407
  %422 = load ptr, ptr %421, align 8, !tbaa !49
  %423 = getelementptr inbounds i16, ptr %422, i64 %402
  %424 = load i16, ptr %423, align 2, !tbaa !70
  %425 = zext i16 %424 to i32
  %426 = sub nsw i64 %403, %407
  %427 = getelementptr inbounds ptr, ptr %320, i64 %426
  %428 = load ptr, ptr %427, align 8, !tbaa !49
  %429 = getelementptr inbounds i16, ptr %428, i64 %402
  %430 = load i16, ptr %429, align 2, !tbaa !70
  %431 = zext i16 %430 to i32
  %432 = sub nsw i32 %425, %431
  %433 = trunc i64 %407 to i32
  %434 = mul nsw i32 %432, %433
  %435 = add nsw i32 %434, %409
  %436 = add nuw nsw i64 %407, 1
  %437 = icmp eq i64 %436, 8
  br i1 %437, label %438, label %406, !llvm.loop !78

438:                                              ; preds = %406
  %439 = getelementptr i16, ptr %394, i64 15
  %440 = load i16, ptr %439, align 2, !tbaa !70
  %441 = zext i16 %440 to i32
  %442 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %443 = load i16, ptr %442, align 2, !tbaa !65
  %444 = sext i16 %443 to i64
  %445 = getelementptr inbounds ptr, ptr %320, i64 %444
  %446 = load ptr, ptr %445, align 8, !tbaa !49
  %447 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %448 = load i16, ptr %447, align 4, !tbaa !66
  %449 = sext i16 %448 to i64
  %450 = getelementptr inbounds i16, ptr %446, i64 %449
  %451 = load i16, ptr %450, align 2, !tbaa !70
  %452 = zext i16 %451 to i32
  %453 = sub nsw i32 %441, %452
  %454 = shl nsw i32 %453, 3
  %455 = add nsw i32 %454, %420
  %456 = sext i16 %397 to i64
  %457 = getelementptr ptr, ptr %320, i64 %456
  %458 = getelementptr ptr, ptr %457, i64 15
  %459 = load ptr, ptr %458, align 8, !tbaa !49
  %460 = sext i16 %401 to i64
  %461 = getelementptr inbounds i16, ptr %459, i64 %460
  %462 = load i16, ptr %461, align 2, !tbaa !70
  %463 = zext i16 %462 to i32
  %464 = sub nsw i32 %463, %452
  %465 = shl nsw i32 %464, 3
  %466 = add nsw i32 %465, %435
  %467 = mul nsw i32 %455, 5
  %468 = add nsw i32 %467, 32
  %469 = ashr i32 %468, 6
  %470 = mul nsw i32 %466, 5
  %471 = add nsw i32 %470, 32
  %472 = ashr i32 %471, 6
  %473 = add nuw nsw i32 %463, %441
  %474 = shl nuw nsw i32 %473, 4
  %475 = add nuw nsw i32 %474, 16
  br label %476

476:                                              ; preds = %438, %521
  %477 = phi i64 [ 0, %438 ], [ %522, %521 ]
  %478 = trunc i64 %477 to i32
  %479 = add i32 %478, -7
  %480 = mul i32 %479, %472
  %481 = add i32 %475, %480
  %482 = getelementptr inbounds ptr, ptr %325, i64 %477
  %483 = load ptr, ptr %482, align 8, !tbaa !49
  br label %484

484:                                              ; preds = %476, %484
  %485 = phi ptr [ %483, %476 ], [ %518, %484 ]
  %486 = phi i32 [ 0, %476 ], [ %519, %484 ]
  %487 = add nsw i32 %486, -7
  %488 = mul nsw i32 %487, %469
  %489 = add nsw i32 %488, %481
  %490 = ashr i32 %489, 5
  %491 = call i32 @llvm.smax.i32(i32 %490, i32 0)
  %492 = call i32 @llvm.smin.i32(i32 %491, i32 %327)
  %493 = trunc i32 %492 to i16
  %494 = getelementptr inbounds i16, ptr %485, i64 1
  store i16 %493, ptr %485, align 2, !tbaa !70
  %495 = add nsw i32 %486, -6
  %496 = mul nsw i32 %495, %469
  %497 = add nsw i32 %496, %481
  %498 = ashr i32 %497, 5
  %499 = call i32 @llvm.smax.i32(i32 %498, i32 0)
  %500 = call i32 @llvm.smin.i32(i32 %499, i32 %327)
  %501 = trunc i32 %500 to i16
  %502 = getelementptr inbounds i16, ptr %485, i64 2
  store i16 %501, ptr %494, align 2, !tbaa !70
  %503 = add nsw i32 %486, -5
  %504 = mul nsw i32 %503, %469
  %505 = add nsw i32 %504, %481
  %506 = ashr i32 %505, 5
  %507 = call i32 @llvm.smax.i32(i32 %506, i32 0)
  %508 = call i32 @llvm.smin.i32(i32 %507, i32 %327)
  %509 = trunc i32 %508 to i16
  %510 = getelementptr inbounds i16, ptr %485, i64 3
  store i16 %509, ptr %502, align 2, !tbaa !70
  %511 = add nsw i32 %486, -4
  %512 = mul nsw i32 %511, %469
  %513 = add nsw i32 %512, %481
  %514 = ashr i32 %513, 5
  %515 = call i32 @llvm.smax.i32(i32 %514, i32 0)
  %516 = call i32 @llvm.smin.i32(i32 %515, i32 %327)
  %517 = trunc i32 %516 to i16
  %518 = getelementptr inbounds i16, ptr %485, i64 4
  store i16 %517, ptr %510, align 2, !tbaa !70
  %519 = add nuw nsw i32 %486, 4
  %520 = icmp ult i32 %486, 12
  br i1 %520, label %484, label %521, !llvm.loop !79

521:                                              ; preds = %484
  %522 = add nuw nsw i64 %477, 1
  %523 = icmp eq i64 %522, 16
  br i1 %523, label %524, label %476, !llvm.loop !80

524:                                              ; preds = %521
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  br label %527

525:                                              ; preds = %3
  %526 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %2)
  br label %527

527:                                              ; preds = %525, %524, %302, %156, %81
  %528 = phi i32 [ 1, %525 ], [ 0, %524 ], [ 0, %302 ], [ 0, %156 ], [ 0, %81 ]
  ret i32 %528
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

declare void @getNonAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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
!70 = !{!41, !41, i64 0}
!71 = distinct !{!71, !68, !69}
!72 = distinct !{!72, !68, !69}
!73 = distinct !{!73, !68, !69}
!74 = distinct !{!74, !68, !69}
!75 = !{!39, !39, i64 0}
!76 = distinct !{!76, !68, !69}
!77 = distinct !{!77, !68, !69}
!78 = distinct !{!78, !68, !69}
!79 = distinct !{!79, !68, !69}
!80 = distinct !{!80, !68, !69}
