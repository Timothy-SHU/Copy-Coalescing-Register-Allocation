; ModuleID = 'ldecod_src/intra8x8_pred_normal.c'
source_filename = "ldecod_src/intra8x8_pred_normal.c"
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

@.str = private unnamed_addr constant [46 x i8] c"Error: illegal intra_8x8 prediction mode: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"warning: Intra_8x8_Vertical prediction mode not allowed at mb %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"warning: Intra_8x8_Horizontal prediction mode not allowed at mb %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"warning: Intra_8x8_Diagonal_Down_Right prediction mode not allowed at mb %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"warning: Intra_8x8_Diagonal_Down_Left prediction mode not allowed at mb %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"warning: Intra_8x8_Vertical_Right prediction mode not allowed at mb %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"warning: Intra_4x4_Vertical_Left prediction mode not allowed at mb %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"warning: Intra_8x8_Horizontal_Up prediction mode not allowed at mb %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"warning: Intra_8x8_Horizontal_Down prediction mode not allowed at mb %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @intrapred8x8_normal(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [25 x i16], align 16
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = alloca [25 x i16], align 16
  %11 = alloca %struct.pix_pos, align 4
  %12 = alloca %struct.pix_pos, align 4
  %13 = alloca %struct.pix_pos, align 4
  %14 = alloca %struct.pix_pos, align 4
  %15 = alloca [25 x i16], align 16
  %16 = alloca %struct.pix_pos, align 4
  %17 = alloca %struct.pix_pos, align 4
  %18 = alloca %struct.pix_pos, align 4
  %19 = alloca %struct.pix_pos, align 4
  %20 = alloca [25 x i16], align 16
  %21 = alloca %struct.pix_pos, align 4
  %22 = alloca %struct.pix_pos, align 4
  %23 = alloca %struct.pix_pos, align 4
  %24 = alloca %struct.pix_pos, align 4
  %25 = alloca [25 x i16], align 16
  %26 = alloca %struct.pix_pos, align 4
  %27 = alloca %struct.pix_pos, align 4
  %28 = alloca %struct.pix_pos, align 4
  %29 = alloca %struct.pix_pos, align 4
  %30 = alloca [25 x i16], align 16
  %31 = alloca %struct.pix_pos, align 4
  %32 = alloca %struct.pix_pos, align 4
  %33 = alloca %struct.pix_pos, align 4
  %34 = alloca %struct.pix_pos, align 4
  %35 = alloca [25 x i16], align 16
  %36 = alloca [25 x i16], align 16
  %37 = alloca %struct.pix_pos, align 4
  %38 = alloca %struct.pix_pos, align 4
  %39 = alloca %struct.pix_pos, align 4
  %40 = alloca %struct.pix_pos, align 4
  %41 = alloca [25 x i16], align 16
  %42 = alloca [25 x i16], align 16
  %43 = alloca %struct.pix_pos, align 4
  %44 = alloca %struct.pix_pos, align 4
  %45 = alloca %struct.pix_pos, align 4
  %46 = alloca %struct.pix_pos, align 4
  %47 = alloca [25 x i16], align 16
  %48 = alloca %struct.pix_pos, align 4
  %49 = alloca %struct.pix_pos, align 4
  %50 = alloca %struct.pix_pos, align 4
  %51 = alloca %struct.pix_pos, align 4
  %52 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !34
  %54 = ashr i32 %2, 2
  %55 = add nsw i32 %53, %54
  %56 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %57 = load i32, ptr %56, align 4, !tbaa !42
  %58 = ashr i32 %3, 2
  %59 = add nsw i32 %57, %58
  %60 = load ptr, ptr %0, align 8, !tbaa !43
  %61 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 127
  %62 = load ptr, ptr %61, align 8, !tbaa !44
  %63 = sext i32 %59 to i64
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !47
  %66 = sext i32 %55 to i64
  %67 = getelementptr inbounds i8, ptr %65, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !48
  %69 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  store i8 %68, ptr %69, align 4, !tbaa !49
  switch i8 %68, label %4095 [
    i8 2, label %70
    i8 0, label %502
    i8 1, label %827
    i8 4, label %1117
    i8 3, label %1612
    i8 5, label %2100
    i8 7, label %2618
    i8 8, label %3118
    i8 6, label %3577
  ]

70:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %47) #6
  %71 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !50
  %73 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 125
  %74 = load ptr, ptr %73, align 8, !tbaa !51
  %75 = icmp eq i32 %1, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.storable_picture, ptr %74, i64 0, i32 33
  %78 = load ptr, ptr %77, align 8, !tbaa !52
  %79 = add i32 %1, -1
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %78, i64 %80
  br label %84

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.storable_picture, ptr %74, i64 0, i32 32
  br label %84

84:                                               ; preds = %82, %76
  %85 = phi ptr [ %81, %76 ], [ %83, %82 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %48) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %49) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %50) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %51) #6
  %87 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 77
  %88 = load ptr, ptr %87, align 8, !tbaa !55
  %89 = zext i32 %1 to i64
  %90 = getelementptr inbounds ptr, ptr %88, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !47
  %92 = getelementptr inbounds %struct.video_par, ptr %72, i64 0, i32 81
  %93 = add nsw i32 %2, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %93, i32 noundef %3, ptr noundef nonnull %92, ptr noundef nonnull %48) #6
  %94 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %94, ptr noundef nonnull %92, ptr noundef nonnull %49) #6
  %95 = add nsw i32 %2, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %95, i32 noundef %94, ptr noundef nonnull %92, ptr noundef nonnull %50) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %93, i32 noundef %94, ptr noundef nonnull %92, ptr noundef nonnull %51) #6
  %96 = load i32, ptr %50, align 4, !tbaa !56
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %84
  %99 = icmp ne i32 %2, 8
  %100 = icmp ne i32 %3, 8
  %101 = or i1 %99, %100
  br label %102

102:                                              ; preds = %98, %84
  %103 = phi i1 [ false, %84 ], [ %101, %98 ]
  %104 = zext i1 %103 to i32
  store i32 %104, ptr %50, align 4, !tbaa !56
  %105 = getelementptr inbounds %struct.video_par, ptr %72, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !58
  %107 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %106, i64 0, i32 30
  %108 = load i32, ptr %107, align 4, !tbaa !64
  %109 = icmp eq i32 %108, 0
  %110 = load i32, ptr %48, align 4, !tbaa !56
  br i1 %109, label %159, label %111

111:                                              ; preds = %102
  %112 = icmp eq i32 %110, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %115 = load ptr, ptr %114, align 8, !tbaa !66
  %116 = getelementptr inbounds %struct.pix_pos, ptr %48, i64 0, i32 1
  %117 = load i32, ptr %116, align 4, !tbaa !67
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %115, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !48
  %121 = sext i8 %120 to i32
  br label %122

122:                                              ; preds = %113, %111
  %123 = phi i32 [ %121, %113 ], [ 0, %111 ]
  %124 = load i32, ptr %49, align 4, !tbaa !56
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %128 = load ptr, ptr %127, align 8, !tbaa !66
  %129 = getelementptr inbounds %struct.pix_pos, ptr %49, i64 0, i32 1
  %130 = load i32, ptr %129, align 4, !tbaa !67
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, ptr %128, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !48
  %134 = sext i8 %133 to i32
  br label %135

135:                                              ; preds = %126, %122
  %136 = phi i32 [ %134, %126 ], [ 0, %122 ]
  br i1 %103, label %137, label %146

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %139 = load ptr, ptr %138, align 8, !tbaa !66
  %140 = getelementptr inbounds %struct.pix_pos, ptr %50, i64 0, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !67
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, ptr %139, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !48
  %145 = sext i8 %144 to i32
  br label %146

146:                                              ; preds = %137, %135
  %147 = phi i32 [ %145, %137 ], [ 0, %135 ]
  %148 = load i32, ptr %51, align 4, !tbaa !56
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %162, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %152 = load ptr, ptr %151, align 8, !tbaa !66
  %153 = getelementptr inbounds %struct.pix_pos, ptr %51, i64 0, i32 1
  %154 = load i32, ptr %153, align 4, !tbaa !67
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, ptr %152, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !48
  %158 = sext i8 %157 to i32
  br label %162

159:                                              ; preds = %102
  %160 = load i32, ptr %49, align 4, !tbaa !56
  %161 = load i32, ptr %51, align 4, !tbaa !56
  br label %162

162:                                              ; preds = %159, %150, %146
  %163 = phi i32 [ %110, %159 ], [ %123, %146 ], [ %123, %150 ]
  %164 = phi i32 [ %161, %159 ], [ 0, %146 ], [ %158, %150 ]
  %165 = phi i32 [ %104, %159 ], [ %147, %146 ], [ %147, %150 ]
  %166 = phi i32 [ %160, %159 ], [ %136, %146 ], [ %136, %150 ]
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %201

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.pix_pos, ptr %49, i64 0, i32 5
  %170 = load i16, ptr %169, align 2, !tbaa !68
  %171 = sext i16 %170 to i64
  %172 = getelementptr inbounds ptr, ptr %86, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !47
  %174 = getelementptr inbounds %struct.pix_pos, ptr %49, i64 0, i32 4
  %175 = load i16, ptr %174, align 4, !tbaa !69
  %176 = sext i16 %175 to i64
  %177 = getelementptr inbounds i16, ptr %173, i64 %176
  %178 = load i16, ptr %177, align 2, !tbaa !70
  %179 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 1
  store i16 %178, ptr %179, align 2, !tbaa !70
  %180 = getelementptr inbounds i16, ptr %177, i64 1
  %181 = load i16, ptr %180, align 2, !tbaa !70
  %182 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 2
  store i16 %181, ptr %182, align 4, !tbaa !70
  %183 = getelementptr inbounds i16, ptr %177, i64 2
  %184 = load i16, ptr %183, align 2, !tbaa !70
  %185 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 3
  store i16 %184, ptr %185, align 2, !tbaa !70
  %186 = getelementptr inbounds i16, ptr %177, i64 3
  %187 = load i16, ptr %186, align 2, !tbaa !70
  %188 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 4
  store i16 %187, ptr %188, align 8, !tbaa !70
  %189 = getelementptr inbounds i16, ptr %177, i64 4
  %190 = load i16, ptr %189, align 2, !tbaa !70
  %191 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 5
  store i16 %190, ptr %191, align 2, !tbaa !70
  %192 = getelementptr inbounds i16, ptr %177, i64 5
  %193 = load i16, ptr %192, align 2, !tbaa !70
  %194 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 6
  store i16 %193, ptr %194, align 4, !tbaa !70
  %195 = getelementptr inbounds i16, ptr %177, i64 6
  %196 = load i16, ptr %195, align 2, !tbaa !70
  %197 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 7
  store i16 %196, ptr %197, align 2, !tbaa !70
  %198 = getelementptr inbounds i16, ptr %177, i64 7
  %199 = load i16, ptr %198, align 2, !tbaa !70
  %200 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 8
  store i16 %199, ptr %200, align 16, !tbaa !70
  br label %213

201:                                              ; preds = %162
  %202 = getelementptr inbounds %struct.video_par, ptr %72, i64 0, i32 69, i64 %89
  %203 = load i32, ptr %202, align 4, !tbaa !71
  %204 = trunc i32 %203 to i16
  %205 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 8
  store i16 %204, ptr %205, align 16, !tbaa !70
  %206 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 7
  store i16 %204, ptr %206, align 2, !tbaa !70
  %207 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 6
  store i16 %204, ptr %207, align 4, !tbaa !70
  %208 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 5
  store i16 %204, ptr %208, align 2, !tbaa !70
  %209 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 4
  store i16 %204, ptr %209, align 8, !tbaa !70
  %210 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 3
  store i16 %204, ptr %210, align 2, !tbaa !70
  %211 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 2
  store i16 %204, ptr %211, align 4, !tbaa !70
  %212 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 1
  store i16 %204, ptr %212, align 2, !tbaa !70
  br label %213

213:                                              ; preds = %201, %168
  %214 = icmp eq i32 %165, 0
  %215 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 10
  br i1 %214, label %248, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.pix_pos, ptr %50, i64 0, i32 5
  %218 = load i16, ptr %217, align 2, !tbaa !68
  %219 = sext i16 %218 to i64
  %220 = getelementptr inbounds ptr, ptr %86, i64 %219
  %221 = load ptr, ptr %220, align 8, !tbaa !47
  %222 = getelementptr inbounds %struct.pix_pos, ptr %50, i64 0, i32 4
  %223 = load i16, ptr %222, align 4, !tbaa !69
  %224 = sext i16 %223 to i64
  %225 = getelementptr inbounds i16, ptr %221, i64 %224
  %226 = load i16, ptr %225, align 2, !tbaa !70
  %227 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 9
  store i16 %226, ptr %227, align 2, !tbaa !70
  %228 = getelementptr inbounds i16, ptr %225, i64 1
  %229 = load i16, ptr %228, align 2, !tbaa !70
  store i16 %229, ptr %215, align 4, !tbaa !70
  %230 = getelementptr inbounds i16, ptr %225, i64 2
  %231 = load i16, ptr %230, align 2, !tbaa !70
  %232 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 11
  store i16 %231, ptr %232, align 2, !tbaa !70
  %233 = getelementptr inbounds i16, ptr %225, i64 3
  %234 = load i16, ptr %233, align 2, !tbaa !70
  %235 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 12
  store i16 %234, ptr %235, align 8, !tbaa !70
  %236 = getelementptr inbounds i16, ptr %225, i64 4
  %237 = load i16, ptr %236, align 2, !tbaa !70
  %238 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 13
  store i16 %237, ptr %238, align 2, !tbaa !70
  %239 = getelementptr inbounds i16, ptr %225, i64 5
  %240 = load i16, ptr %239, align 2, !tbaa !70
  %241 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 14
  store i16 %240, ptr %241, align 4, !tbaa !70
  %242 = getelementptr inbounds i16, ptr %225, i64 6
  %243 = load i16, ptr %242, align 2, !tbaa !70
  %244 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 15
  store i16 %243, ptr %244, align 2, !tbaa !70
  %245 = getelementptr inbounds i16, ptr %225, i64 7
  %246 = load i16, ptr %245, align 2, !tbaa !70
  %247 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 16
  store i16 %246, ptr %247, align 16, !tbaa !70
  br label %258

248:                                              ; preds = %213
  %249 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 8
  %250 = load i16, ptr %249, align 16, !tbaa !70
  %251 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 16
  store i16 %250, ptr %251, align 16, !tbaa !70
  %252 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 15
  store i16 %250, ptr %252, align 2, !tbaa !70
  %253 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 14
  store i16 %250, ptr %253, align 4, !tbaa !70
  %254 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 13
  store i16 %250, ptr %254, align 2, !tbaa !70
  %255 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 12
  store i16 %250, ptr %255, align 8, !tbaa !70
  %256 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 11
  store i16 %250, ptr %256, align 2, !tbaa !70
  store i16 %250, ptr %215, align 4, !tbaa !70
  %257 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 9
  store i16 %250, ptr %257, align 2, !tbaa !70
  br label %258

258:                                              ; preds = %248, %216
  %259 = icmp ne i32 %163, 0
  br i1 %259, label %260, label %307

260:                                              ; preds = %258
  %261 = getelementptr inbounds %struct.pix_pos, ptr %48, i64 0, i32 5
  %262 = load i16, ptr %261, align 2, !tbaa !68
  %263 = sext i16 %262 to i64
  %264 = getelementptr inbounds ptr, ptr %86, i64 %263
  %265 = getelementptr inbounds %struct.pix_pos, ptr %48, i64 0, i32 4
  %266 = load i16, ptr %265, align 4, !tbaa !69
  %267 = getelementptr inbounds ptr, ptr %264, i64 1
  %268 = load ptr, ptr %264, align 8, !tbaa !47
  %269 = sext i16 %266 to i64
  %270 = getelementptr inbounds i16, ptr %268, i64 %269
  %271 = load i16, ptr %270, align 2, !tbaa !70
  %272 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 17
  store i16 %271, ptr %272, align 2, !tbaa !70
  %273 = getelementptr inbounds ptr, ptr %264, i64 2
  %274 = load ptr, ptr %267, align 8, !tbaa !47
  %275 = getelementptr inbounds i16, ptr %274, i64 %269
  %276 = load i16, ptr %275, align 2, !tbaa !70
  %277 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 18
  store i16 %276, ptr %277, align 4, !tbaa !70
  %278 = getelementptr inbounds ptr, ptr %264, i64 3
  %279 = load ptr, ptr %273, align 8, !tbaa !47
  %280 = getelementptr inbounds i16, ptr %279, i64 %269
  %281 = load i16, ptr %280, align 2, !tbaa !70
  %282 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 19
  store i16 %281, ptr %282, align 2, !tbaa !70
  %283 = getelementptr inbounds ptr, ptr %264, i64 4
  %284 = load ptr, ptr %278, align 8, !tbaa !47
  %285 = getelementptr inbounds i16, ptr %284, i64 %269
  %286 = load i16, ptr %285, align 2, !tbaa !70
  %287 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 20
  store i16 %286, ptr %287, align 8, !tbaa !70
  %288 = getelementptr inbounds ptr, ptr %264, i64 5
  %289 = load ptr, ptr %283, align 8, !tbaa !47
  %290 = getelementptr inbounds i16, ptr %289, i64 %269
  %291 = load i16, ptr %290, align 2, !tbaa !70
  %292 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 21
  store i16 %291, ptr %292, align 2, !tbaa !70
  %293 = getelementptr inbounds ptr, ptr %264, i64 6
  %294 = load ptr, ptr %288, align 8, !tbaa !47
  %295 = getelementptr inbounds i16, ptr %294, i64 %269
  %296 = load i16, ptr %295, align 2, !tbaa !70
  %297 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 22
  store i16 %296, ptr %297, align 4, !tbaa !70
  %298 = getelementptr inbounds ptr, ptr %264, i64 7
  %299 = load ptr, ptr %293, align 8, !tbaa !47
  %300 = getelementptr inbounds i16, ptr %299, i64 %269
  %301 = load i16, ptr %300, align 2, !tbaa !70
  %302 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 23
  store i16 %301, ptr %302, align 2, !tbaa !70
  %303 = load ptr, ptr %298, align 8, !tbaa !47
  %304 = getelementptr inbounds i16, ptr %303, i64 %269
  %305 = load i16, ptr %304, align 2, !tbaa !70
  %306 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 24
  store i16 %305, ptr %306, align 16, !tbaa !70
  br label %319

307:                                              ; preds = %258
  %308 = getelementptr inbounds %struct.video_par, ptr %72, i64 0, i32 69, i64 %89
  %309 = load i32, ptr %308, align 4, !tbaa !71
  %310 = trunc i32 %309 to i16
  %311 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 24
  store i16 %310, ptr %311, align 16, !tbaa !70
  %312 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 23
  store i16 %310, ptr %312, align 2, !tbaa !70
  %313 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 22
  store i16 %310, ptr %313, align 4, !tbaa !70
  %314 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 21
  store i16 %310, ptr %314, align 2, !tbaa !70
  %315 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 20
  store i16 %310, ptr %315, align 8, !tbaa !70
  %316 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 19
  store i16 %310, ptr %316, align 2, !tbaa !70
  %317 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 18
  store i16 %310, ptr %317, align 4, !tbaa !70
  %318 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 17
  store i16 %310, ptr %318, align 2, !tbaa !70
  br label %319

319:                                              ; preds = %307, %260
  %320 = icmp eq i32 %164, 0
  br i1 %320, label %332, label %321

321:                                              ; preds = %319
  %322 = getelementptr inbounds %struct.pix_pos, ptr %51, i64 0, i32 5
  %323 = load i16, ptr %322, align 2, !tbaa !68
  %324 = sext i16 %323 to i64
  %325 = getelementptr inbounds ptr, ptr %86, i64 %324
  %326 = load ptr, ptr %325, align 8, !tbaa !47
  %327 = getelementptr inbounds %struct.pix_pos, ptr %51, i64 0, i32 4
  %328 = load i16, ptr %327, align 4, !tbaa !69
  %329 = sext i16 %328 to i64
  %330 = getelementptr inbounds i16, ptr %326, i64 %329
  %331 = load i16, ptr %330, align 2, !tbaa !70
  br label %336

332:                                              ; preds = %319
  %333 = getelementptr inbounds %struct.video_par, ptr %72, i64 0, i32 69, i64 %89
  %334 = load i32, ptr %333, align 4, !tbaa !71
  %335 = trunc i32 %334 to i16
  br label %336

336:                                              ; preds = %332, %321
  %337 = phi i16 [ %335, %332 ], [ %331, %321 ]
  store i16 %337, ptr %47, align 16, !tbaa !70
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %47, i32 noundef %164, i32 noundef %166, i32 noundef %163)
  %338 = and i1 %259, %167
  br i1 %338, label %339, label %405

339:                                              ; preds = %336
  %340 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 1
  %341 = load i16, ptr %340, align 2, !tbaa !70
  %342 = zext i16 %341 to i32
  %343 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 2
  %344 = load i16, ptr %343, align 4, !tbaa !70
  %345 = zext i16 %344 to i32
  %346 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 3
  %347 = load i16, ptr %346, align 2, !tbaa !70
  %348 = zext i16 %347 to i32
  %349 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 4
  %350 = load i16, ptr %349, align 8, !tbaa !70
  %351 = zext i16 %350 to i32
  %352 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 5
  %353 = load i16, ptr %352, align 2, !tbaa !70
  %354 = zext i16 %353 to i32
  %355 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 6
  %356 = load i16, ptr %355, align 4, !tbaa !70
  %357 = zext i16 %356 to i32
  %358 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 7
  %359 = load i16, ptr %358, align 2, !tbaa !70
  %360 = zext i16 %359 to i32
  %361 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 8
  %362 = load i16, ptr %361, align 16, !tbaa !70
  %363 = zext i16 %362 to i32
  %364 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 17
  %365 = load i16, ptr %364, align 2, !tbaa !70
  %366 = zext i16 %365 to i32
  %367 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 18
  %368 = load i16, ptr %367, align 4, !tbaa !70
  %369 = zext i16 %368 to i32
  %370 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 19
  %371 = load i16, ptr %370, align 2, !tbaa !70
  %372 = zext i16 %371 to i32
  %373 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 20
  %374 = load i16, ptr %373, align 8, !tbaa !70
  %375 = zext i16 %374 to i32
  %376 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 21
  %377 = load i16, ptr %376, align 2, !tbaa !70
  %378 = zext i16 %377 to i32
  %379 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 22
  %380 = load i16, ptr %379, align 4, !tbaa !70
  %381 = zext i16 %380 to i32
  %382 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 23
  %383 = load i16, ptr %382, align 2, !tbaa !70
  %384 = zext i16 %383 to i32
  %385 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 24
  %386 = load i16, ptr %385, align 16, !tbaa !70
  %387 = zext i16 %386 to i32
  %388 = add nuw nsw i32 %342, 8
  %389 = add nuw nsw i32 %388, %345
  %390 = add nuw nsw i32 %389, %348
  %391 = add nuw nsw i32 %390, %351
  %392 = add nuw nsw i32 %391, %354
  %393 = add nuw nsw i32 %392, %357
  %394 = add nuw nsw i32 %393, %360
  %395 = add nuw nsw i32 %394, %363
  %396 = add nuw nsw i32 %395, %366
  %397 = add nuw nsw i32 %396, %369
  %398 = add nuw nsw i32 %397, %372
  %399 = add nuw nsw i32 %398, %375
  %400 = add nuw nsw i32 %399, %378
  %401 = add nuw nsw i32 %400, %381
  %402 = add nuw nsw i32 %401, %384
  %403 = add nuw nsw i32 %402, %387
  %404 = lshr i32 %403, 4
  br label %481

405:                                              ; preds = %336
  %406 = icmp eq i32 %166, 0
  %407 = and i1 %259, %406
  br i1 %407, label %408, label %442

408:                                              ; preds = %405
  %409 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 17
  %410 = load i16, ptr %409, align 2, !tbaa !70
  %411 = zext i16 %410 to i32
  %412 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 18
  %413 = load i16, ptr %412, align 4, !tbaa !70
  %414 = zext i16 %413 to i32
  %415 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 19
  %416 = load i16, ptr %415, align 2, !tbaa !70
  %417 = zext i16 %416 to i32
  %418 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 20
  %419 = load i16, ptr %418, align 8, !tbaa !70
  %420 = zext i16 %419 to i32
  %421 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 21
  %422 = load i16, ptr %421, align 2, !tbaa !70
  %423 = zext i16 %422 to i32
  %424 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 22
  %425 = load i16, ptr %424, align 4, !tbaa !70
  %426 = zext i16 %425 to i32
  %427 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 23
  %428 = load i16, ptr %427, align 2, !tbaa !70
  %429 = zext i16 %428 to i32
  %430 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 24
  %431 = load i16, ptr %430, align 16, !tbaa !70
  %432 = zext i16 %431 to i32
  %433 = add nuw nsw i32 %411, 4
  %434 = add nuw nsw i32 %433, %414
  %435 = add nuw nsw i32 %434, %417
  %436 = add nuw nsw i32 %435, %420
  %437 = add nuw nsw i32 %436, %423
  %438 = add nuw nsw i32 %437, %426
  %439 = add nuw nsw i32 %438, %429
  %440 = add nuw nsw i32 %439, %432
  %441 = lshr i32 %440, 3
  br label %481

442:                                              ; preds = %405
  %443 = or i1 %259, %406
  br i1 %443, label %478, label %444

444:                                              ; preds = %442
  %445 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 1
  %446 = load i16, ptr %445, align 2, !tbaa !70
  %447 = zext i16 %446 to i32
  %448 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 2
  %449 = load i16, ptr %448, align 4, !tbaa !70
  %450 = zext i16 %449 to i32
  %451 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 3
  %452 = load i16, ptr %451, align 2, !tbaa !70
  %453 = zext i16 %452 to i32
  %454 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 4
  %455 = load i16, ptr %454, align 8, !tbaa !70
  %456 = zext i16 %455 to i32
  %457 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 5
  %458 = load i16, ptr %457, align 2, !tbaa !70
  %459 = zext i16 %458 to i32
  %460 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 6
  %461 = load i16, ptr %460, align 4, !tbaa !70
  %462 = zext i16 %461 to i32
  %463 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 7
  %464 = load i16, ptr %463, align 2, !tbaa !70
  %465 = zext i16 %464 to i32
  %466 = getelementptr inbounds [25 x i16], ptr %47, i64 0, i64 8
  %467 = load i16, ptr %466, align 16, !tbaa !70
  %468 = zext i16 %467 to i32
  %469 = add nuw nsw i32 %447, 4
  %470 = add nuw nsw i32 %469, %450
  %471 = add nuw nsw i32 %470, %453
  %472 = add nuw nsw i32 %471, %456
  %473 = add nuw nsw i32 %472, %459
  %474 = add nuw nsw i32 %473, %462
  %475 = add nuw nsw i32 %474, %465
  %476 = add nuw nsw i32 %475, %468
  %477 = lshr i32 %476, 3
  br label %481

478:                                              ; preds = %442
  %479 = getelementptr inbounds %struct.video_par, ptr %72, i64 0, i32 69, i64 %89
  %480 = load i32, ptr %479, align 4, !tbaa !71
  br label %481

481:                                              ; preds = %478, %444, %408, %339
  %482 = phi i32 [ %404, %339 ], [ %441, %408 ], [ %480, %478 ], [ %477, %444 ]
  %483 = trunc i32 %482 to i16
  %484 = sext i32 %2 to i64
  %485 = sext i32 %95 to i64
  %486 = sext i32 %3 to i64
  %487 = add nsw i32 %3, 7
  %488 = sext i32 %487 to i64
  br label %489

489:                                              ; preds = %481, %498
  %490 = phi i64 [ %486, %481 ], [ %499, %498 ]
  %491 = getelementptr inbounds ptr, ptr %91, i64 %490
  %492 = load ptr, ptr %491, align 8, !tbaa !47
  br label %493

493:                                              ; preds = %489, %493
  %494 = phi i64 [ %484, %489 ], [ %496, %493 ]
  %495 = getelementptr inbounds i16, ptr %492, i64 %494
  store i16 %483, ptr %495, align 2, !tbaa !70
  %496 = add nsw i64 %494, 1
  %497 = icmp slt i64 %496, %485
  br i1 %497, label %493, label %498, !llvm.loop !72

498:                                              ; preds = %493
  %499 = add nsw i64 %490, 1
  %500 = icmp slt i64 %490, %488
  br i1 %500, label %489, label %501, !llvm.loop !75

501:                                              ; preds = %498
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %51) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %50) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %49) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %48) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %47) #6
  br label %4098

502:                                              ; preds = %4
  %503 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %504 = load ptr, ptr %503, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %42) #6
  %505 = icmp eq i32 %1, 0
  %506 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 125
  %507 = load ptr, ptr %506, align 8, !tbaa !51
  br i1 %505, label %514, label %508

508:                                              ; preds = %502
  %509 = getelementptr inbounds %struct.storable_picture, ptr %507, i64 0, i32 33
  %510 = load ptr, ptr %509, align 8, !tbaa !52
  %511 = add i32 %1, -1
  %512 = zext i32 %511 to i64
  %513 = getelementptr inbounds ptr, ptr %510, i64 %512
  br label %516

514:                                              ; preds = %502
  %515 = getelementptr inbounds %struct.storable_picture, ptr %507, i64 0, i32 32
  br label %516

516:                                              ; preds = %514, %508
  %517 = phi ptr [ %513, %508 ], [ %515, %514 ]
  %518 = load ptr, ptr %517, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %43) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %44) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %45) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %46) #6
  %519 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 77
  %520 = load ptr, ptr %519, align 8, !tbaa !55
  %521 = zext i32 %1 to i64
  %522 = getelementptr inbounds ptr, ptr %520, i64 %521
  %523 = load ptr, ptr %522, align 8, !tbaa !47
  %524 = getelementptr inbounds %struct.video_par, ptr %504, i64 0, i32 81
  %525 = add nsw i32 %2, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %525, i32 noundef %3, ptr noundef nonnull %524, ptr noundef nonnull %43) #6
  %526 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %526, ptr noundef nonnull %524, ptr noundef nonnull %44) #6
  %527 = add nsw i32 %2, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %527, i32 noundef %526, ptr noundef nonnull %524, ptr noundef nonnull %45) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %525, i32 noundef %526, ptr noundef nonnull %524, ptr noundef nonnull %46) #6
  %528 = load i32, ptr %45, align 4, !tbaa !56
  %529 = icmp ne i32 %528, 0
  %530 = icmp ne i32 %2, 8
  %531 = icmp ne i32 %3, 8
  %532 = or i1 %530, %531
  %533 = and i1 %532, %529
  %534 = zext i1 %533 to i32
  store i32 %534, ptr %45, align 4, !tbaa !56
  %535 = getelementptr inbounds %struct.video_par, ptr %504, i64 0, i32 1
  %536 = load ptr, ptr %535, align 8, !tbaa !58
  %537 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %536, i64 0, i32 30
  %538 = load i32, ptr %537, align 4, !tbaa !64
  %539 = icmp eq i32 %538, 0
  %540 = load i32, ptr %43, align 4, !tbaa !56
  br i1 %539, label %589, label %541

541:                                              ; preds = %516
  %542 = icmp eq i32 %540, 0
  br i1 %542, label %552, label %543

543:                                              ; preds = %541
  %544 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %545 = load ptr, ptr %544, align 8, !tbaa !66
  %546 = getelementptr inbounds %struct.pix_pos, ptr %43, i64 0, i32 1
  %547 = load i32, ptr %546, align 4, !tbaa !67
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i8, ptr %545, i64 %548
  %550 = load i8, ptr %549, align 1, !tbaa !48
  %551 = sext i8 %550 to i32
  br label %552

552:                                              ; preds = %543, %541
  %553 = phi i32 [ %551, %543 ], [ 0, %541 ]
  %554 = load i32, ptr %44, align 4, !tbaa !56
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %565, label %556

556:                                              ; preds = %552
  %557 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %558 = load ptr, ptr %557, align 8, !tbaa !66
  %559 = getelementptr inbounds %struct.pix_pos, ptr %44, i64 0, i32 1
  %560 = load i32, ptr %559, align 4, !tbaa !67
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i8, ptr %558, i64 %561
  %563 = load i8, ptr %562, align 1, !tbaa !48
  %564 = sext i8 %563 to i32
  br label %565

565:                                              ; preds = %556, %552
  %566 = phi i32 [ %564, %556 ], [ 0, %552 ]
  br i1 %533, label %567, label %576

567:                                              ; preds = %565
  %568 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %569 = load ptr, ptr %568, align 8, !tbaa !66
  %570 = getelementptr inbounds %struct.pix_pos, ptr %45, i64 0, i32 1
  %571 = load i32, ptr %570, align 4, !tbaa !67
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds i8, ptr %569, i64 %572
  %574 = load i8, ptr %573, align 1, !tbaa !48
  %575 = sext i8 %574 to i32
  br label %576

576:                                              ; preds = %567, %565
  %577 = phi i32 [ %575, %567 ], [ 0, %565 ]
  %578 = load i32, ptr %46, align 4, !tbaa !56
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %592, label %580

580:                                              ; preds = %576
  %581 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %582 = load ptr, ptr %581, align 8, !tbaa !66
  %583 = getelementptr inbounds %struct.pix_pos, ptr %46, i64 0, i32 1
  %584 = load i32, ptr %583, align 4, !tbaa !67
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds i8, ptr %582, i64 %585
  %587 = load i8, ptr %586, align 1, !tbaa !48
  %588 = sext i8 %587 to i32
  br label %592

589:                                              ; preds = %516
  %590 = load i32, ptr %44, align 4, !tbaa !56
  %591 = load i32, ptr %46, align 4, !tbaa !56
  br label %592

592:                                              ; preds = %589, %580, %576
  %593 = phi i32 [ %540, %589 ], [ %553, %576 ], [ %553, %580 ]
  %594 = phi i32 [ %591, %589 ], [ 0, %576 ], [ %588, %580 ]
  %595 = phi i32 [ %534, %589 ], [ %577, %576 ], [ %577, %580 ]
  %596 = phi i32 [ %590, %589 ], [ %566, %576 ], [ %566, %580 ]
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %598, label %613

598:                                              ; preds = %592
  %599 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 20
  %600 = load i32, ptr %599, align 4, !tbaa !76
  %601 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %600)
  %602 = getelementptr inbounds %struct.video_par, ptr %504, i64 0, i32 69, i64 %521
  %603 = load i32, ptr %602, align 4, !tbaa !71
  %604 = trunc i32 %603 to i16
  %605 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 8
  store i16 %604, ptr %605, align 16, !tbaa !70
  %606 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 7
  store i16 %604, ptr %606, align 2, !tbaa !70
  %607 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 6
  store i16 %604, ptr %607, align 4, !tbaa !70
  %608 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 5
  store i16 %604, ptr %608, align 2, !tbaa !70
  %609 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 4
  store i16 %604, ptr %609, align 8, !tbaa !70
  %610 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 3
  store i16 %604, ptr %610, align 2, !tbaa !70
  %611 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 2
  store i16 %604, ptr %611, align 4, !tbaa !70
  %612 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 1
  store i16 %604, ptr %612, align 2, !tbaa !70
  br label %646

613:                                              ; preds = %592
  %614 = getelementptr inbounds %struct.pix_pos, ptr %44, i64 0, i32 5
  %615 = load i16, ptr %614, align 2, !tbaa !68
  %616 = sext i16 %615 to i64
  %617 = getelementptr inbounds ptr, ptr %518, i64 %616
  %618 = load ptr, ptr %617, align 8, !tbaa !47
  %619 = getelementptr inbounds %struct.pix_pos, ptr %44, i64 0, i32 4
  %620 = load i16, ptr %619, align 4, !tbaa !69
  %621 = sext i16 %620 to i64
  %622 = getelementptr inbounds i16, ptr %618, i64 %621
  %623 = getelementptr inbounds i16, ptr %622, i64 1
  %624 = load i16, ptr %622, align 2, !tbaa !70
  %625 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 1
  store i16 %624, ptr %625, align 2, !tbaa !70
  %626 = getelementptr inbounds i16, ptr %622, i64 2
  %627 = load i16, ptr %623, align 2, !tbaa !70
  %628 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 2
  store i16 %627, ptr %628, align 4, !tbaa !70
  %629 = getelementptr inbounds i16, ptr %622, i64 3
  %630 = load i16, ptr %626, align 2, !tbaa !70
  %631 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 3
  store i16 %630, ptr %631, align 2, !tbaa !70
  %632 = getelementptr inbounds i16, ptr %622, i64 4
  %633 = load i16, ptr %629, align 2, !tbaa !70
  %634 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 4
  store i16 %633, ptr %634, align 8, !tbaa !70
  %635 = getelementptr inbounds i16, ptr %622, i64 5
  %636 = load i16, ptr %632, align 2, !tbaa !70
  %637 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 5
  store i16 %636, ptr %637, align 2, !tbaa !70
  %638 = getelementptr inbounds i16, ptr %622, i64 6
  %639 = load i16, ptr %635, align 2, !tbaa !70
  %640 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 6
  store i16 %639, ptr %640, align 4, !tbaa !70
  %641 = getelementptr inbounds i16, ptr %622, i64 7
  %642 = load i16, ptr %638, align 2, !tbaa !70
  %643 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 7
  store i16 %642, ptr %643, align 2, !tbaa !70
  %644 = load i16, ptr %641, align 2, !tbaa !70
  %645 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 8
  store i16 %644, ptr %645, align 16, !tbaa !70
  br label %646

646:                                              ; preds = %613, %598
  %647 = icmp eq i32 %595, 0
  br i1 %647, label %681, label %648

648:                                              ; preds = %646
  %649 = getelementptr inbounds %struct.pix_pos, ptr %45, i64 0, i32 5
  %650 = load i16, ptr %649, align 2, !tbaa !68
  %651 = sext i16 %650 to i64
  %652 = getelementptr inbounds ptr, ptr %518, i64 %651
  %653 = load ptr, ptr %652, align 8, !tbaa !47
  %654 = getelementptr inbounds %struct.pix_pos, ptr %45, i64 0, i32 4
  %655 = load i16, ptr %654, align 4, !tbaa !69
  %656 = sext i16 %655 to i64
  %657 = getelementptr inbounds i16, ptr %653, i64 %656
  %658 = getelementptr inbounds i16, ptr %657, i64 1
  %659 = load i16, ptr %657, align 2, !tbaa !70
  %660 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 9
  store i16 %659, ptr %660, align 2, !tbaa !70
  %661 = getelementptr inbounds i16, ptr %657, i64 2
  %662 = load i16, ptr %658, align 2, !tbaa !70
  %663 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 10
  store i16 %662, ptr %663, align 4, !tbaa !70
  %664 = getelementptr inbounds i16, ptr %657, i64 3
  %665 = load i16, ptr %661, align 2, !tbaa !70
  %666 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 11
  store i16 %665, ptr %666, align 2, !tbaa !70
  %667 = getelementptr inbounds i16, ptr %657, i64 4
  %668 = load i16, ptr %664, align 2, !tbaa !70
  %669 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 12
  store i16 %668, ptr %669, align 8, !tbaa !70
  %670 = getelementptr inbounds i16, ptr %657, i64 5
  %671 = load i16, ptr %667, align 2, !tbaa !70
  %672 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 13
  store i16 %671, ptr %672, align 2, !tbaa !70
  %673 = getelementptr inbounds i16, ptr %657, i64 6
  %674 = load i16, ptr %670, align 2, !tbaa !70
  %675 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 14
  store i16 %674, ptr %675, align 4, !tbaa !70
  %676 = getelementptr inbounds i16, ptr %657, i64 7
  %677 = load i16, ptr %673, align 2, !tbaa !70
  %678 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 15
  store i16 %677, ptr %678, align 2, !tbaa !70
  %679 = load i16, ptr %676, align 2, !tbaa !70
  %680 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 16
  store i16 %679, ptr %680, align 16, !tbaa !70
  br label %692

681:                                              ; preds = %646
  %682 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 8
  %683 = load i16, ptr %682, align 16, !tbaa !70
  %684 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 16
  store i16 %683, ptr %684, align 16, !tbaa !70
  %685 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 15
  store i16 %683, ptr %685, align 2, !tbaa !70
  %686 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 14
  store i16 %683, ptr %686, align 4, !tbaa !70
  %687 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 13
  store i16 %683, ptr %687, align 2, !tbaa !70
  %688 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 12
  store i16 %683, ptr %688, align 8, !tbaa !70
  %689 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 11
  store i16 %683, ptr %689, align 2, !tbaa !70
  %690 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 10
  store i16 %683, ptr %690, align 4, !tbaa !70
  %691 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 9
  store i16 %683, ptr %691, align 2, !tbaa !70
  br label %692

692:                                              ; preds = %681, %648
  %693 = icmp eq i32 %594, 0
  br i1 %693, label %705, label %694

694:                                              ; preds = %692
  %695 = getelementptr inbounds %struct.pix_pos, ptr %46, i64 0, i32 5
  %696 = load i16, ptr %695, align 2, !tbaa !68
  %697 = sext i16 %696 to i64
  %698 = getelementptr inbounds ptr, ptr %518, i64 %697
  %699 = load ptr, ptr %698, align 8, !tbaa !47
  %700 = getelementptr inbounds %struct.pix_pos, ptr %46, i64 0, i32 4
  %701 = load i16, ptr %700, align 4, !tbaa !69
  %702 = sext i16 %701 to i64
  %703 = getelementptr inbounds i16, ptr %699, i64 %702
  %704 = load i16, ptr %703, align 2, !tbaa !70
  br label %709

705:                                              ; preds = %692
  %706 = getelementptr inbounds %struct.video_par, ptr %504, i64 0, i32 69, i64 %521
  %707 = load i32, ptr %706, align 4, !tbaa !71
  %708 = trunc i32 %707 to i16
  br label %709

709:                                              ; preds = %705, %694
  %710 = phi i16 [ %708, %705 ], [ %704, %694 ]
  store i16 %710, ptr %42, align 16, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %41) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(50) %41, ptr noundef nonnull align 16 dereferenceable(50) %42, i64 50, i1 false)
  br i1 %693, label %751, label %711

711:                                              ; preds = %709
  %712 = icmp ne i32 %596, 0
  %713 = icmp ne i32 %593, 0
  %714 = and i1 %713, %712
  br i1 %714, label %715, label %729

715:                                              ; preds = %711
  %716 = getelementptr inbounds i16, ptr %42, i64 17
  %717 = load i16, ptr %716, align 2, !tbaa !70
  %718 = zext i16 %717 to i32
  %719 = zext i16 %710 to i32
  %720 = shl nuw nsw i32 %719, 1
  %721 = getelementptr inbounds i16, ptr %42, i64 1
  %722 = load i16, ptr %721, align 2, !tbaa !70
  %723 = zext i16 %722 to i32
  %724 = add nuw nsw i32 %720, 2
  %725 = add nuw nsw i32 %724, %718
  %726 = add nuw nsw i32 %725, %723
  %727 = lshr i32 %726, 2
  %728 = trunc i32 %727 to i16
  store i16 %728, ptr %41, align 16, !tbaa !70
  br label %751

729:                                              ; preds = %711
  br i1 %712, label %730, label %740

730:                                              ; preds = %729
  %731 = zext i16 %710 to i32
  %732 = mul nuw nsw i32 %731, 3
  %733 = getelementptr inbounds i16, ptr %42, i64 1
  %734 = load i16, ptr %733, align 2, !tbaa !70
  %735 = zext i16 %734 to i32
  %736 = add nuw nsw i32 %732, 2
  %737 = add nuw nsw i32 %736, %735
  %738 = lshr i32 %737, 2
  %739 = trunc i32 %738 to i16
  store i16 %739, ptr %41, align 16, !tbaa !70
  br label %751

740:                                              ; preds = %729
  br i1 %713, label %741, label %751

741:                                              ; preds = %740
  %742 = zext i16 %710 to i32
  %743 = mul nuw nsw i32 %742, 3
  %744 = getelementptr inbounds i16, ptr %42, i64 17
  %745 = load i16, ptr %744, align 2, !tbaa !70
  %746 = zext i16 %745 to i32
  %747 = add nuw nsw i32 %743, 2
  %748 = add nuw nsw i32 %747, %746
  %749 = lshr i32 %748, 2
  %750 = trunc i32 %749 to i16
  store i16 %750, ptr %41, align 16, !tbaa !70
  br label %751

751:                                              ; preds = %741, %740, %730, %715, %709
  br i1 %597, label %813, label %752

752:                                              ; preds = %751
  br i1 %693, label %765, label %753

753:                                              ; preds = %752
  %754 = zext i16 %710 to i32
  %755 = getelementptr inbounds i16, ptr %42, i64 1
  %756 = load i16, ptr %755, align 2, !tbaa !70
  %757 = zext i16 %756 to i32
  %758 = shl nuw nsw i32 %757, 1
  %759 = getelementptr inbounds i16, ptr %42, i64 2
  %760 = load i16, ptr %759, align 4, !tbaa !70
  %761 = zext i16 %760 to i32
  %762 = add nuw nsw i32 %754, 2
  %763 = add nuw nsw i32 %762, %758
  %764 = add nuw nsw i32 %763, %761
  br label %775

765:                                              ; preds = %752
  %766 = getelementptr inbounds i16, ptr %42, i64 1
  %767 = load i16, ptr %766, align 2, !tbaa !70
  %768 = zext i16 %767 to i32
  %769 = mul nuw nsw i32 %768, 3
  %770 = getelementptr inbounds i16, ptr %42, i64 2
  %771 = load i16, ptr %770, align 4, !tbaa !70
  %772 = zext i16 %771 to i32
  %773 = add nuw nsw i32 %772, 2
  %774 = add nuw nsw i32 %773, %769
  br label %775

775:                                              ; preds = %765, %753
  %776 = phi i32 [ %774, %765 ], [ %764, %753 ]
  %777 = lshr i32 %776, 2
  %778 = trunc i32 %777 to i16
  %779 = getelementptr inbounds [25 x i16], ptr %41, i64 0, i64 1
  store i16 %778, ptr %779, align 2, !tbaa !70
  br label %780

780:                                              ; preds = %775, %780
  %781 = phi i64 [ 2, %775 ], [ %789, %780 ]
  %782 = getelementptr i16, ptr %42, i64 %781
  %783 = getelementptr i16, ptr %782, i64 -1
  %784 = load i16, ptr %783, align 2, !tbaa !70
  %785 = zext i16 %784 to i32
  %786 = load i16, ptr %782, align 2, !tbaa !70
  %787 = zext i16 %786 to i32
  %788 = shl nuw nsw i32 %787, 1
  %789 = add nuw nsw i64 %781, 1
  %790 = getelementptr inbounds i16, ptr %42, i64 %789
  %791 = load i16, ptr %790, align 2, !tbaa !70
  %792 = zext i16 %791 to i32
  %793 = add nuw nsw i32 %785, 2
  %794 = add nuw nsw i32 %793, %788
  %795 = add nuw nsw i32 %794, %792
  %796 = lshr i32 %795, 2
  %797 = trunc i32 %796 to i16
  %798 = getelementptr inbounds [25 x i16], ptr %41, i64 0, i64 %781
  store i16 %797, ptr %798, align 2, !tbaa !70
  %799 = icmp eq i64 %789, 16
  br i1 %799, label %800, label %780, !llvm.loop !77

800:                                              ; preds = %780
  %801 = getelementptr inbounds i16, ptr %42, i64 16
  %802 = load i16, ptr %801, align 16, !tbaa !70
  %803 = zext i16 %802 to i32
  %804 = mul nuw nsw i32 %803, 3
  %805 = getelementptr inbounds i16, ptr %42, i64 15
  %806 = load i16, ptr %805, align 2, !tbaa !70
  %807 = zext i16 %806 to i32
  %808 = add nuw nsw i32 %807, 2
  %809 = add nuw nsw i32 %808, %804
  %810 = lshr i32 %809, 2
  %811 = trunc i32 %810 to i16
  %812 = getelementptr inbounds [25 x i16], ptr %41, i64 0, i64 16
  store i16 %811, ptr %812, align 16, !tbaa !70
  br label %813

813:                                              ; preds = %800, %751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(34) %42, ptr noundef nonnull align 16 dereferenceable(34) %41, i64 34, i1 false)
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %41) #6
  %814 = sext i32 %2 to i64
  %815 = getelementptr inbounds [25 x i16], ptr %42, i64 0, i64 1
  %816 = sext i32 %3 to i64
  %817 = add nsw i32 %3, 7
  %818 = sext i32 %817 to i64
  br label %819

819:                                              ; preds = %813, %819
  %820 = phi i64 [ %816, %813 ], [ %824, %819 ]
  %821 = getelementptr inbounds ptr, ptr %523, i64 %820
  %822 = load ptr, ptr %821, align 8, !tbaa !47
  %823 = getelementptr inbounds i16, ptr %822, i64 %814
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %823, ptr noundef nonnull align 2 dereferenceable(16) %815, i64 16, i1 false)
  %824 = add nsw i64 %820, 1
  %825 = icmp slt i64 %820, %818
  br i1 %825, label %819, label %826, !llvm.loop !78

826:                                              ; preds = %819
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %46) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %45) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %44) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %43) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %42) #6
  br label %4098

827:                                              ; preds = %4
  %828 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %829 = load ptr, ptr %828, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %36) #6
  %830 = icmp eq i32 %1, 0
  %831 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 125
  %832 = load ptr, ptr %831, align 8, !tbaa !51
  br i1 %830, label %839, label %833

833:                                              ; preds = %827
  %834 = getelementptr inbounds %struct.storable_picture, ptr %832, i64 0, i32 33
  %835 = load ptr, ptr %834, align 8, !tbaa !52
  %836 = add i32 %1, -1
  %837 = zext i32 %836 to i64
  %838 = getelementptr inbounds ptr, ptr %835, i64 %837
  br label %841

839:                                              ; preds = %827
  %840 = getelementptr inbounds %struct.storable_picture, ptr %832, i64 0, i32 32
  br label %841

841:                                              ; preds = %839, %833
  %842 = phi ptr [ %838, %833 ], [ %840, %839 ]
  %843 = load ptr, ptr %842, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %37) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %38) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %39) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %40) #6
  %844 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 77
  %845 = load ptr, ptr %844, align 8, !tbaa !55
  %846 = zext i32 %1 to i64
  %847 = getelementptr inbounds ptr, ptr %845, i64 %846
  %848 = load ptr, ptr %847, align 8, !tbaa !47
  %849 = getelementptr inbounds %struct.video_par, ptr %829, i64 0, i32 81
  %850 = add nsw i32 %2, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %850, i32 noundef %3, ptr noundef nonnull %849, ptr noundef nonnull %37) #6
  %851 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %851, ptr noundef nonnull %849, ptr noundef nonnull %38) #6
  %852 = add nsw i32 %2, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %852, i32 noundef %851, ptr noundef nonnull %849, ptr noundef nonnull %39) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %850, i32 noundef %851, ptr noundef nonnull %849, ptr noundef nonnull %40) #6
  %853 = load i32, ptr %39, align 4, !tbaa !56
  %854 = icmp ne i32 %853, 0
  %855 = icmp ne i32 %2, 8
  %856 = icmp ne i32 %3, 8
  %857 = or i1 %855, %856
  %858 = and i1 %857, %854
  %859 = zext i1 %858 to i32
  store i32 %859, ptr %39, align 4, !tbaa !56
  %860 = getelementptr inbounds %struct.video_par, ptr %829, i64 0, i32 1
  %861 = load ptr, ptr %860, align 8, !tbaa !58
  %862 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %861, i64 0, i32 30
  %863 = load i32, ptr %862, align 4, !tbaa !64
  %864 = icmp eq i32 %863, 0
  %865 = load i32, ptr %37, align 4, !tbaa !56
  br i1 %864, label %903, label %866

866:                                              ; preds = %841
  %867 = icmp eq i32 %865, 0
  br i1 %867, label %877, label %868

868:                                              ; preds = %866
  %869 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %870 = load ptr, ptr %869, align 8, !tbaa !66
  %871 = getelementptr inbounds %struct.pix_pos, ptr %37, i64 0, i32 1
  %872 = load i32, ptr %871, align 4, !tbaa !67
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds i8, ptr %870, i64 %873
  %875 = load i8, ptr %874, align 1, !tbaa !48
  %876 = sext i8 %875 to i32
  br label %877

877:                                              ; preds = %868, %866
  %878 = phi i32 [ %876, %868 ], [ 0, %866 ]
  %879 = load i32, ptr %38, align 4, !tbaa !56
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %890, label %881

881:                                              ; preds = %877
  %882 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %883 = load ptr, ptr %882, align 8, !tbaa !66
  %884 = getelementptr inbounds %struct.pix_pos, ptr %38, i64 0, i32 1
  %885 = load i32, ptr %884, align 4, !tbaa !67
  %886 = sext i32 %885 to i64
  %887 = getelementptr inbounds i8, ptr %883, i64 %886
  %888 = load i8, ptr %887, align 1, !tbaa !48
  %889 = sext i8 %888 to i32
  br label %890

890:                                              ; preds = %881, %877
  %891 = phi i32 [ %889, %881 ], [ 0, %877 ]
  %892 = load i32, ptr %40, align 4, !tbaa !56
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %906, label %894

894:                                              ; preds = %890
  %895 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %896 = load ptr, ptr %895, align 8, !tbaa !66
  %897 = getelementptr inbounds %struct.pix_pos, ptr %40, i64 0, i32 1
  %898 = load i32, ptr %897, align 4, !tbaa !67
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds i8, ptr %896, i64 %899
  %901 = load i8, ptr %900, align 1, !tbaa !48
  %902 = sext i8 %901 to i32
  br label %906

903:                                              ; preds = %841
  %904 = load i32, ptr %38, align 4, !tbaa !56
  %905 = load i32, ptr %40, align 4, !tbaa !56
  br label %906

906:                                              ; preds = %903, %894, %890
  %907 = phi i32 [ %905, %903 ], [ %902, %894 ], [ 0, %890 ]
  %908 = phi i32 [ %865, %903 ], [ %878, %894 ], [ %878, %890 ]
  %909 = phi i32 [ %904, %903 ], [ %891, %894 ], [ %891, %890 ]
  %910 = icmp eq i32 %908, 0
  br i1 %910, label %911, label %926

911:                                              ; preds = %906
  %912 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 20
  %913 = load i32, ptr %912, align 4, !tbaa !76
  %914 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %913)
  %915 = getelementptr inbounds %struct.video_par, ptr %829, i64 0, i32 69, i64 %846
  %916 = load i32, ptr %915, align 4, !tbaa !71
  %917 = trunc i32 %916 to i16
  %918 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 24
  store i16 %917, ptr %918, align 16, !tbaa !70
  %919 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 23
  store i16 %917, ptr %919, align 2, !tbaa !70
  %920 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 22
  store i16 %917, ptr %920, align 4, !tbaa !70
  %921 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 21
  store i16 %917, ptr %921, align 2, !tbaa !70
  %922 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 20
  store i16 %917, ptr %922, align 8, !tbaa !70
  %923 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 19
  store i16 %917, ptr %923, align 2, !tbaa !70
  %924 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 18
  store i16 %917, ptr %924, align 4, !tbaa !70
  %925 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 17
  store i16 %917, ptr %925, align 2, !tbaa !70
  br label %973

926:                                              ; preds = %906
  %927 = getelementptr inbounds %struct.pix_pos, ptr %37, i64 0, i32 5
  %928 = load i16, ptr %927, align 2, !tbaa !68
  %929 = sext i16 %928 to i64
  %930 = getelementptr inbounds ptr, ptr %843, i64 %929
  %931 = getelementptr inbounds %struct.pix_pos, ptr %37, i64 0, i32 4
  %932 = load i16, ptr %931, align 4, !tbaa !69
  %933 = getelementptr inbounds ptr, ptr %930, i64 1
  %934 = load ptr, ptr %930, align 8, !tbaa !47
  %935 = sext i16 %932 to i64
  %936 = getelementptr inbounds i16, ptr %934, i64 %935
  %937 = load i16, ptr %936, align 2, !tbaa !70
  %938 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 17
  store i16 %937, ptr %938, align 2, !tbaa !70
  %939 = getelementptr inbounds ptr, ptr %930, i64 2
  %940 = load ptr, ptr %933, align 8, !tbaa !47
  %941 = getelementptr inbounds i16, ptr %940, i64 %935
  %942 = load i16, ptr %941, align 2, !tbaa !70
  %943 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 18
  store i16 %942, ptr %943, align 4, !tbaa !70
  %944 = getelementptr inbounds ptr, ptr %930, i64 3
  %945 = load ptr, ptr %939, align 8, !tbaa !47
  %946 = getelementptr inbounds i16, ptr %945, i64 %935
  %947 = load i16, ptr %946, align 2, !tbaa !70
  %948 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 19
  store i16 %947, ptr %948, align 2, !tbaa !70
  %949 = getelementptr inbounds ptr, ptr %930, i64 4
  %950 = load ptr, ptr %944, align 8, !tbaa !47
  %951 = getelementptr inbounds i16, ptr %950, i64 %935
  %952 = load i16, ptr %951, align 2, !tbaa !70
  %953 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 20
  store i16 %952, ptr %953, align 8, !tbaa !70
  %954 = getelementptr inbounds ptr, ptr %930, i64 5
  %955 = load ptr, ptr %949, align 8, !tbaa !47
  %956 = getelementptr inbounds i16, ptr %955, i64 %935
  %957 = load i16, ptr %956, align 2, !tbaa !70
  %958 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 21
  store i16 %957, ptr %958, align 2, !tbaa !70
  %959 = getelementptr inbounds ptr, ptr %930, i64 6
  %960 = load ptr, ptr %954, align 8, !tbaa !47
  %961 = getelementptr inbounds i16, ptr %960, i64 %935
  %962 = load i16, ptr %961, align 2, !tbaa !70
  %963 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 22
  store i16 %962, ptr %963, align 4, !tbaa !70
  %964 = getelementptr inbounds ptr, ptr %930, i64 7
  %965 = load ptr, ptr %959, align 8, !tbaa !47
  %966 = getelementptr inbounds i16, ptr %965, i64 %935
  %967 = load i16, ptr %966, align 2, !tbaa !70
  %968 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 23
  store i16 %967, ptr %968, align 2, !tbaa !70
  %969 = load ptr, ptr %964, align 8, !tbaa !47
  %970 = getelementptr inbounds i16, ptr %969, i64 %935
  %971 = load i16, ptr %970, align 2, !tbaa !70
  %972 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 24
  store i16 %971, ptr %972, align 16, !tbaa !70
  br label %973

973:                                              ; preds = %926, %911
  %974 = icmp eq i32 %907, 0
  br i1 %974, label %986, label %975

975:                                              ; preds = %973
  %976 = getelementptr inbounds %struct.pix_pos, ptr %40, i64 0, i32 5
  %977 = load i16, ptr %976, align 2, !tbaa !68
  %978 = sext i16 %977 to i64
  %979 = getelementptr inbounds ptr, ptr %843, i64 %978
  %980 = load ptr, ptr %979, align 8, !tbaa !47
  %981 = getelementptr inbounds %struct.pix_pos, ptr %40, i64 0, i32 4
  %982 = load i16, ptr %981, align 4, !tbaa !69
  %983 = sext i16 %982 to i64
  %984 = getelementptr inbounds i16, ptr %980, i64 %983
  %985 = load i16, ptr %984, align 2, !tbaa !70
  br label %990

986:                                              ; preds = %973
  %987 = getelementptr inbounds %struct.video_par, ptr %829, i64 0, i32 69, i64 %846
  %988 = load i32, ptr %987, align 4, !tbaa !71
  %989 = trunc i32 %988 to i16
  br label %990

990:                                              ; preds = %986, %975
  %991 = phi i16 [ %989, %986 ], [ %985, %975 ]
  store i16 %991, ptr %36, align 16, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %35) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(50) %35, ptr noundef nonnull align 16 dereferenceable(50) %36, i64 50, i1 false)
  br i1 %974, label %1032, label %992

992:                                              ; preds = %990
  %993 = icmp ne i32 %909, 0
  %994 = icmp ne i32 %908, 0
  %995 = and i1 %994, %993
  br i1 %995, label %996, label %1010

996:                                              ; preds = %992
  %997 = getelementptr inbounds i16, ptr %36, i64 17
  %998 = load i16, ptr %997, align 2, !tbaa !70
  %999 = zext i16 %998 to i32
  %1000 = zext i16 %991 to i32
  %1001 = shl nuw nsw i32 %1000, 1
  %1002 = getelementptr inbounds i16, ptr %36, i64 1
  %1003 = load i16, ptr %1002, align 2, !tbaa !70
  %1004 = zext i16 %1003 to i32
  %1005 = add nuw nsw i32 %1001, 2
  %1006 = add nuw nsw i32 %1005, %999
  %1007 = add nuw nsw i32 %1006, %1004
  %1008 = lshr i32 %1007, 2
  %1009 = trunc i32 %1008 to i16
  store i16 %1009, ptr %35, align 16, !tbaa !70
  br label %1032

1010:                                             ; preds = %992
  br i1 %993, label %1011, label %1021

1011:                                             ; preds = %1010
  %1012 = zext i16 %991 to i32
  %1013 = mul nuw nsw i32 %1012, 3
  %1014 = getelementptr inbounds i16, ptr %36, i64 1
  %1015 = load i16, ptr %1014, align 2, !tbaa !70
  %1016 = zext i16 %1015 to i32
  %1017 = add nuw nsw i32 %1013, 2
  %1018 = add nuw nsw i32 %1017, %1016
  %1019 = lshr i32 %1018, 2
  %1020 = trunc i32 %1019 to i16
  store i16 %1020, ptr %35, align 16, !tbaa !70
  br label %1032

1021:                                             ; preds = %1010
  br i1 %994, label %1022, label %1032

1022:                                             ; preds = %1021
  %1023 = zext i16 %991 to i32
  %1024 = mul nuw nsw i32 %1023, 3
  %1025 = getelementptr inbounds i16, ptr %36, i64 17
  %1026 = load i16, ptr %1025, align 2, !tbaa !70
  %1027 = zext i16 %1026 to i32
  %1028 = add nuw nsw i32 %1024, 2
  %1029 = add nuw nsw i32 %1028, %1027
  %1030 = lshr i32 %1029, 2
  %1031 = trunc i32 %1030 to i16
  store i16 %1031, ptr %35, align 16, !tbaa !70
  br label %1032

1032:                                             ; preds = %1022, %1021, %1011, %996, %990
  br i1 %910, label %1095, label %1033

1033:                                             ; preds = %1032
  br i1 %974, label %1046, label %1034

1034:                                             ; preds = %1033
  %1035 = zext i16 %991 to i32
  %1036 = getelementptr inbounds i16, ptr %36, i64 17
  %1037 = load i16, ptr %1036, align 2, !tbaa !70
  %1038 = zext i16 %1037 to i32
  %1039 = shl nuw nsw i32 %1038, 1
  %1040 = getelementptr inbounds i16, ptr %36, i64 18
  %1041 = load i16, ptr %1040, align 4, !tbaa !70
  %1042 = zext i16 %1041 to i32
  %1043 = add nuw nsw i32 %1035, 2
  %1044 = add nuw nsw i32 %1043, %1039
  %1045 = add nuw nsw i32 %1044, %1042
  br label %1056

1046:                                             ; preds = %1033
  %1047 = getelementptr inbounds i16, ptr %36, i64 17
  %1048 = load i16, ptr %1047, align 2, !tbaa !70
  %1049 = zext i16 %1048 to i32
  %1050 = mul nuw nsw i32 %1049, 3
  %1051 = getelementptr inbounds i16, ptr %36, i64 18
  %1052 = load i16, ptr %1051, align 4, !tbaa !70
  %1053 = zext i16 %1052 to i32
  %1054 = add nuw nsw i32 %1053, 2
  %1055 = add nuw nsw i32 %1054, %1050
  br label %1056

1056:                                             ; preds = %1046, %1034
  %1057 = phi i32 [ %1055, %1046 ], [ %1045, %1034 ]
  %1058 = lshr i32 %1057, 2
  %1059 = trunc i32 %1058 to i16
  %1060 = getelementptr inbounds [25 x i16], ptr %35, i64 0, i64 17
  store i16 %1059, ptr %1060, align 2, !tbaa !70
  br label %1061

1061:                                             ; preds = %1056, %1061
  %1062 = phi i64 [ 18, %1056 ], [ %1070, %1061 ]
  %1063 = getelementptr i16, ptr %36, i64 %1062
  %1064 = getelementptr i16, ptr %1063, i64 -1
  %1065 = load i16, ptr %1064, align 2, !tbaa !70
  %1066 = zext i16 %1065 to i32
  %1067 = load i16, ptr %1063, align 2, !tbaa !70
  %1068 = zext i16 %1067 to i32
  %1069 = shl nuw nsw i32 %1068, 1
  %1070 = add nuw nsw i64 %1062, 1
  %1071 = getelementptr inbounds i16, ptr %36, i64 %1070
  %1072 = load i16, ptr %1071, align 2, !tbaa !70
  %1073 = zext i16 %1072 to i32
  %1074 = add nuw nsw i32 %1066, 2
  %1075 = add nuw nsw i32 %1074, %1069
  %1076 = add nuw nsw i32 %1075, %1073
  %1077 = lshr i32 %1076, 2
  %1078 = trunc i32 %1077 to i16
  %1079 = getelementptr inbounds [25 x i16], ptr %35, i64 0, i64 %1062
  store i16 %1078, ptr %1079, align 2, !tbaa !70
  %1080 = icmp eq i64 %1070, 24
  br i1 %1080, label %1081, label %1061, !llvm.loop !79

1081:                                             ; preds = %1061
  %1082 = getelementptr inbounds i16, ptr %36, i64 23
  %1083 = load i16, ptr %1082, align 2, !tbaa !70
  %1084 = zext i16 %1083 to i32
  %1085 = getelementptr inbounds i16, ptr %36, i64 24
  %1086 = load i16, ptr %1085, align 16, !tbaa !70
  %1087 = zext i16 %1086 to i32
  %1088 = shl nuw nsw i32 %1087, 1
  %1089 = add nuw nsw i32 %1084, 2
  %1090 = add nuw nsw i32 %1089, %1087
  %1091 = add nuw nsw i32 %1090, %1088
  %1092 = lshr i32 %1091, 2
  %1093 = trunc i32 %1092 to i16
  %1094 = getelementptr inbounds [25 x i16], ptr %35, i64 0, i64 24
  store i16 %1093, ptr %1094, align 16, !tbaa !70
  br label %1095

1095:                                             ; preds = %1081, %1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(50) %36, ptr noundef nonnull align 16 dereferenceable(50) %35, i64 50, i1 false)
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %35) #6
  %1096 = getelementptr inbounds [25 x i16], ptr %36, i64 0, i64 17
  %1097 = sext i32 %2 to i64
  %1098 = sext i32 %3 to i64
  %1099 = getelementptr ptr, ptr %848, i64 %1098
  br label %1100

1100:                                             ; preds = %1095, %1100
  %1101 = phi i64 [ 0, %1095 ], [ %1114, %1100 ]
  %1102 = getelementptr inbounds i16, ptr %1096, i64 %1101
  %1103 = load i16, ptr %1102, align 2, !tbaa !70
  %1104 = getelementptr ptr, ptr %1099, i64 %1101
  %1105 = load ptr, ptr %1104, align 8, !tbaa !47
  %1106 = getelementptr i16, ptr %1105, i64 %1097
  %1107 = getelementptr i16, ptr %1106, i64 7
  store i16 %1103, ptr %1107, align 2, !tbaa !70
  %1108 = getelementptr i16, ptr %1106, i64 6
  store i16 %1103, ptr %1108, align 2, !tbaa !70
  %1109 = getelementptr i16, ptr %1106, i64 5
  store i16 %1103, ptr %1109, align 2, !tbaa !70
  %1110 = getelementptr i16, ptr %1106, i64 4
  store i16 %1103, ptr %1110, align 2, !tbaa !70
  %1111 = getelementptr i16, ptr %1106, i64 3
  store i16 %1103, ptr %1111, align 2, !tbaa !70
  %1112 = getelementptr i16, ptr %1106, i64 2
  store i16 %1103, ptr %1112, align 2, !tbaa !70
  %1113 = getelementptr i16, ptr %1106, i64 1
  store i16 %1103, ptr %1113, align 2, !tbaa !70
  store i16 %1103, ptr %1106, align 2, !tbaa !70
  %1114 = add nuw nsw i64 %1101, 1
  %1115 = icmp eq i64 %1114, 8
  br i1 %1115, label %1116, label %1100, !llvm.loop !80

1116:                                             ; preds = %1100
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %40) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %39) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %38) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %37) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %36) #6
  br label %4098

1117:                                             ; preds = %4
  %1118 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %1119 = load ptr, ptr %1118, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %30) #6
  %1120 = icmp eq i32 %1, 0
  %1121 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 125
  %1122 = load ptr, ptr %1121, align 8, !tbaa !51
  br i1 %1120, label %1129, label %1123

1123:                                             ; preds = %1117
  %1124 = getelementptr inbounds %struct.storable_picture, ptr %1122, i64 0, i32 33
  %1125 = load ptr, ptr %1124, align 8, !tbaa !52
  %1126 = add i32 %1, -1
  %1127 = zext i32 %1126 to i64
  %1128 = getelementptr inbounds ptr, ptr %1125, i64 %1127
  br label %1131

1129:                                             ; preds = %1117
  %1130 = getelementptr inbounds %struct.storable_picture, ptr %1122, i64 0, i32 32
  br label %1131

1131:                                             ; preds = %1129, %1123
  %1132 = phi ptr [ %1128, %1123 ], [ %1130, %1129 ]
  %1133 = load ptr, ptr %1132, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %31) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %32) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %33) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %34) #6
  %1134 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 77
  %1135 = load ptr, ptr %1134, align 8, !tbaa !55
  %1136 = zext i32 %1 to i64
  %1137 = getelementptr inbounds ptr, ptr %1135, i64 %1136
  %1138 = load ptr, ptr %1137, align 8, !tbaa !47
  %1139 = getelementptr inbounds %struct.video_par, ptr %1119, i64 0, i32 81
  %1140 = add nsw i32 %2, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %1140, i32 noundef %3, ptr noundef nonnull %1139, ptr noundef nonnull %31) #6
  %1141 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %1141, ptr noundef nonnull %1139, ptr noundef nonnull %32) #6
  %1142 = add nsw i32 %2, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %1142, i32 noundef %1141, ptr noundef nonnull %1139, ptr noundef nonnull %33) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %1140, i32 noundef %1141, ptr noundef nonnull %1139, ptr noundef nonnull %34) #6
  %1143 = load i32, ptr %33, align 4, !tbaa !56
  %1144 = icmp ne i32 %1143, 0
  %1145 = icmp ne i32 %2, 8
  %1146 = icmp ne i32 %3, 8
  %1147 = or i1 %1145, %1146
  %1148 = and i1 %1147, %1144
  %1149 = zext i1 %1148 to i32
  store i32 %1149, ptr %33, align 4, !tbaa !56
  %1150 = getelementptr inbounds %struct.video_par, ptr %1119, i64 0, i32 1
  %1151 = load ptr, ptr %1150, align 8, !tbaa !58
  %1152 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1151, i64 0, i32 30
  %1153 = load i32, ptr %1152, align 4, !tbaa !64
  %1154 = icmp eq i32 %1153, 0
  %1155 = load i32, ptr %31, align 4, !tbaa !56
  br i1 %1154, label %1204, label %1156

1156:                                             ; preds = %1131
  %1157 = icmp eq i32 %1155, 0
  br i1 %1157, label %1167, label %1158

1158:                                             ; preds = %1156
  %1159 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %1160 = load ptr, ptr %1159, align 8, !tbaa !66
  %1161 = getelementptr inbounds %struct.pix_pos, ptr %31, i64 0, i32 1
  %1162 = load i32, ptr %1161, align 4, !tbaa !67
  %1163 = sext i32 %1162 to i64
  %1164 = getelementptr inbounds i8, ptr %1160, i64 %1163
  %1165 = load i8, ptr %1164, align 1, !tbaa !48
  %1166 = sext i8 %1165 to i32
  br label %1167

1167:                                             ; preds = %1158, %1156
  %1168 = phi i32 [ %1166, %1158 ], [ 0, %1156 ]
  %1169 = load i32, ptr %32, align 4, !tbaa !56
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1180, label %1171

1171:                                             ; preds = %1167
  %1172 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %1173 = load ptr, ptr %1172, align 8, !tbaa !66
  %1174 = getelementptr inbounds %struct.pix_pos, ptr %32, i64 0, i32 1
  %1175 = load i32, ptr %1174, align 4, !tbaa !67
  %1176 = sext i32 %1175 to i64
  %1177 = getelementptr inbounds i8, ptr %1173, i64 %1176
  %1178 = load i8, ptr %1177, align 1, !tbaa !48
  %1179 = sext i8 %1178 to i32
  br label %1180

1180:                                             ; preds = %1171, %1167
  %1181 = phi i32 [ %1179, %1171 ], [ 0, %1167 ]
  br i1 %1148, label %1182, label %1191

1182:                                             ; preds = %1180
  %1183 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %1184 = load ptr, ptr %1183, align 8, !tbaa !66
  %1185 = getelementptr inbounds %struct.pix_pos, ptr %33, i64 0, i32 1
  %1186 = load i32, ptr %1185, align 4, !tbaa !67
  %1187 = sext i32 %1186 to i64
  %1188 = getelementptr inbounds i8, ptr %1184, i64 %1187
  %1189 = load i8, ptr %1188, align 1, !tbaa !48
  %1190 = sext i8 %1189 to i32
  br label %1191

1191:                                             ; preds = %1182, %1180
  %1192 = phi i32 [ %1190, %1182 ], [ 0, %1180 ]
  %1193 = load i32, ptr %34, align 4, !tbaa !56
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1207, label %1195

1195:                                             ; preds = %1191
  %1196 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %1197 = load ptr, ptr %1196, align 8, !tbaa !66
  %1198 = getelementptr inbounds %struct.pix_pos, ptr %34, i64 0, i32 1
  %1199 = load i32, ptr %1198, align 4, !tbaa !67
  %1200 = sext i32 %1199 to i64
  %1201 = getelementptr inbounds i8, ptr %1197, i64 %1200
  %1202 = load i8, ptr %1201, align 1, !tbaa !48
  %1203 = sext i8 %1202 to i32
  br label %1207

1204:                                             ; preds = %1131
  %1205 = load i32, ptr %32, align 4, !tbaa !56
  %1206 = load i32, ptr %34, align 4, !tbaa !56
  br label %1207

1207:                                             ; preds = %1204, %1195, %1191
  %1208 = phi i32 [ %1149, %1204 ], [ %1192, %1191 ], [ %1192, %1195 ]
  %1209 = phi i32 [ %1206, %1204 ], [ 0, %1191 ], [ %1203, %1195 ]
  %1210 = phi i32 [ %1155, %1204 ], [ %1168, %1191 ], [ %1168, %1195 ]
  %1211 = phi i32 [ %1205, %1204 ], [ %1181, %1191 ], [ %1181, %1195 ]
  %1212 = icmp ne i32 %1211, 0
  %1213 = icmp ne i32 %1210, 0
  %1214 = select i1 %1212, i1 %1213, i1 false
  %1215 = icmp ne i32 %1209, 0
  %1216 = select i1 %1214, i1 %1215, i1 false
  br i1 %1216, label %1221, label %1217

1217:                                             ; preds = %1207
  %1218 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 20
  %1219 = load i32, ptr %1218, align 4, !tbaa !76
  %1220 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %1219)
  br label %1221

1221:                                             ; preds = %1217, %1207
  br i1 %1212, label %1222, label %1255

1222:                                             ; preds = %1221
  %1223 = getelementptr inbounds %struct.pix_pos, ptr %32, i64 0, i32 5
  %1224 = load i16, ptr %1223, align 2, !tbaa !68
  %1225 = sext i16 %1224 to i64
  %1226 = getelementptr inbounds ptr, ptr %1133, i64 %1225
  %1227 = load ptr, ptr %1226, align 8, !tbaa !47
  %1228 = getelementptr inbounds %struct.pix_pos, ptr %32, i64 0, i32 4
  %1229 = load i16, ptr %1228, align 4, !tbaa !69
  %1230 = sext i16 %1229 to i64
  %1231 = getelementptr inbounds i16, ptr %1227, i64 %1230
  %1232 = load i16, ptr %1231, align 2, !tbaa !70
  %1233 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 1
  store i16 %1232, ptr %1233, align 2, !tbaa !70
  %1234 = getelementptr inbounds i16, ptr %1231, i64 1
  %1235 = load i16, ptr %1234, align 2, !tbaa !70
  %1236 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 2
  store i16 %1235, ptr %1236, align 4, !tbaa !70
  %1237 = getelementptr inbounds i16, ptr %1231, i64 2
  %1238 = load i16, ptr %1237, align 2, !tbaa !70
  %1239 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 3
  store i16 %1238, ptr %1239, align 2, !tbaa !70
  %1240 = getelementptr inbounds i16, ptr %1231, i64 3
  %1241 = load i16, ptr %1240, align 2, !tbaa !70
  %1242 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 4
  store i16 %1241, ptr %1242, align 8, !tbaa !70
  %1243 = getelementptr inbounds i16, ptr %1231, i64 4
  %1244 = load i16, ptr %1243, align 2, !tbaa !70
  %1245 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 5
  store i16 %1244, ptr %1245, align 2, !tbaa !70
  %1246 = getelementptr inbounds i16, ptr %1231, i64 5
  %1247 = load i16, ptr %1246, align 2, !tbaa !70
  %1248 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 6
  store i16 %1247, ptr %1248, align 4, !tbaa !70
  %1249 = getelementptr inbounds i16, ptr %1231, i64 6
  %1250 = load i16, ptr %1249, align 2, !tbaa !70
  %1251 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 7
  store i16 %1250, ptr %1251, align 2, !tbaa !70
  %1252 = getelementptr inbounds i16, ptr %1231, i64 7
  %1253 = load i16, ptr %1252, align 2, !tbaa !70
  %1254 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 8
  store i16 %1253, ptr %1254, align 16, !tbaa !70
  br label %1267

1255:                                             ; preds = %1221
  %1256 = getelementptr inbounds %struct.video_par, ptr %1119, i64 0, i32 69, i64 %1136
  %1257 = load i32, ptr %1256, align 4, !tbaa !71
  %1258 = trunc i32 %1257 to i16
  %1259 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 8
  store i16 %1258, ptr %1259, align 16, !tbaa !70
  %1260 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 7
  store i16 %1258, ptr %1260, align 2, !tbaa !70
  %1261 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 6
  store i16 %1258, ptr %1261, align 4, !tbaa !70
  %1262 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 5
  store i16 %1258, ptr %1262, align 2, !tbaa !70
  %1263 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 4
  store i16 %1258, ptr %1263, align 8, !tbaa !70
  %1264 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 3
  store i16 %1258, ptr %1264, align 2, !tbaa !70
  %1265 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 2
  store i16 %1258, ptr %1265, align 4, !tbaa !70
  %1266 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 1
  store i16 %1258, ptr %1266, align 2, !tbaa !70
  br label %1267

1267:                                             ; preds = %1255, %1222
  %1268 = icmp eq i32 %1208, 0
  %1269 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 10
  br i1 %1268, label %1302, label %1270

1270:                                             ; preds = %1267
  %1271 = getelementptr inbounds %struct.pix_pos, ptr %33, i64 0, i32 5
  %1272 = load i16, ptr %1271, align 2, !tbaa !68
  %1273 = sext i16 %1272 to i64
  %1274 = getelementptr inbounds ptr, ptr %1133, i64 %1273
  %1275 = load ptr, ptr %1274, align 8, !tbaa !47
  %1276 = getelementptr inbounds %struct.pix_pos, ptr %33, i64 0, i32 4
  %1277 = load i16, ptr %1276, align 4, !tbaa !69
  %1278 = sext i16 %1277 to i64
  %1279 = getelementptr inbounds i16, ptr %1275, i64 %1278
  %1280 = load i16, ptr %1279, align 2, !tbaa !70
  %1281 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 9
  store i16 %1280, ptr %1281, align 2, !tbaa !70
  %1282 = getelementptr inbounds i16, ptr %1279, i64 1
  %1283 = load i16, ptr %1282, align 2, !tbaa !70
  store i16 %1283, ptr %1269, align 4, !tbaa !70
  %1284 = getelementptr inbounds i16, ptr %1279, i64 2
  %1285 = load i16, ptr %1284, align 2, !tbaa !70
  %1286 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 11
  store i16 %1285, ptr %1286, align 2, !tbaa !70
  %1287 = getelementptr inbounds i16, ptr %1279, i64 3
  %1288 = load i16, ptr %1287, align 2, !tbaa !70
  %1289 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 12
  store i16 %1288, ptr %1289, align 8, !tbaa !70
  %1290 = getelementptr inbounds i16, ptr %1279, i64 4
  %1291 = load i16, ptr %1290, align 2, !tbaa !70
  %1292 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 13
  store i16 %1291, ptr %1292, align 2, !tbaa !70
  %1293 = getelementptr inbounds i16, ptr %1279, i64 5
  %1294 = load i16, ptr %1293, align 2, !tbaa !70
  %1295 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 14
  store i16 %1294, ptr %1295, align 4, !tbaa !70
  %1296 = getelementptr inbounds i16, ptr %1279, i64 6
  %1297 = load i16, ptr %1296, align 2, !tbaa !70
  %1298 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 15
  store i16 %1297, ptr %1298, align 2, !tbaa !70
  %1299 = getelementptr inbounds i16, ptr %1279, i64 7
  %1300 = load i16, ptr %1299, align 2, !tbaa !70
  %1301 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 16
  store i16 %1300, ptr %1301, align 16, !tbaa !70
  br label %1312

1302:                                             ; preds = %1267
  %1303 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 8
  %1304 = load i16, ptr %1303, align 16, !tbaa !70
  %1305 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 16
  store i16 %1304, ptr %1305, align 16, !tbaa !70
  %1306 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 15
  store i16 %1304, ptr %1306, align 2, !tbaa !70
  %1307 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 14
  store i16 %1304, ptr %1307, align 4, !tbaa !70
  %1308 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 13
  store i16 %1304, ptr %1308, align 2, !tbaa !70
  %1309 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 12
  store i16 %1304, ptr %1309, align 8, !tbaa !70
  %1310 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 11
  store i16 %1304, ptr %1310, align 2, !tbaa !70
  store i16 %1304, ptr %1269, align 4, !tbaa !70
  %1311 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 9
  store i16 %1304, ptr %1311, align 2, !tbaa !70
  br label %1312

1312:                                             ; preds = %1302, %1270
  br i1 %1213, label %1313, label %1360

1313:                                             ; preds = %1312
  %1314 = getelementptr inbounds %struct.pix_pos, ptr %31, i64 0, i32 5
  %1315 = load i16, ptr %1314, align 2, !tbaa !68
  %1316 = sext i16 %1315 to i64
  %1317 = getelementptr inbounds ptr, ptr %1133, i64 %1316
  %1318 = getelementptr inbounds %struct.pix_pos, ptr %31, i64 0, i32 4
  %1319 = load i16, ptr %1318, align 4, !tbaa !69
  %1320 = getelementptr inbounds ptr, ptr %1317, i64 1
  %1321 = load ptr, ptr %1317, align 8, !tbaa !47
  %1322 = sext i16 %1319 to i64
  %1323 = getelementptr inbounds i16, ptr %1321, i64 %1322
  %1324 = load i16, ptr %1323, align 2, !tbaa !70
  %1325 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 17
  store i16 %1324, ptr %1325, align 2, !tbaa !70
  %1326 = getelementptr inbounds ptr, ptr %1317, i64 2
  %1327 = load ptr, ptr %1320, align 8, !tbaa !47
  %1328 = getelementptr inbounds i16, ptr %1327, i64 %1322
  %1329 = load i16, ptr %1328, align 2, !tbaa !70
  %1330 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 18
  store i16 %1329, ptr %1330, align 4, !tbaa !70
  %1331 = getelementptr inbounds ptr, ptr %1317, i64 3
  %1332 = load ptr, ptr %1326, align 8, !tbaa !47
  %1333 = getelementptr inbounds i16, ptr %1332, i64 %1322
  %1334 = load i16, ptr %1333, align 2, !tbaa !70
  %1335 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 19
  store i16 %1334, ptr %1335, align 2, !tbaa !70
  %1336 = getelementptr inbounds ptr, ptr %1317, i64 4
  %1337 = load ptr, ptr %1331, align 8, !tbaa !47
  %1338 = getelementptr inbounds i16, ptr %1337, i64 %1322
  %1339 = load i16, ptr %1338, align 2, !tbaa !70
  %1340 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 20
  store i16 %1339, ptr %1340, align 8, !tbaa !70
  %1341 = getelementptr inbounds ptr, ptr %1317, i64 5
  %1342 = load ptr, ptr %1336, align 8, !tbaa !47
  %1343 = getelementptr inbounds i16, ptr %1342, i64 %1322
  %1344 = load i16, ptr %1343, align 2, !tbaa !70
  %1345 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 21
  store i16 %1344, ptr %1345, align 2, !tbaa !70
  %1346 = getelementptr inbounds ptr, ptr %1317, i64 6
  %1347 = load ptr, ptr %1341, align 8, !tbaa !47
  %1348 = getelementptr inbounds i16, ptr %1347, i64 %1322
  %1349 = load i16, ptr %1348, align 2, !tbaa !70
  %1350 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 22
  store i16 %1349, ptr %1350, align 4, !tbaa !70
  %1351 = getelementptr inbounds ptr, ptr %1317, i64 7
  %1352 = load ptr, ptr %1346, align 8, !tbaa !47
  %1353 = getelementptr inbounds i16, ptr %1352, i64 %1322
  %1354 = load i16, ptr %1353, align 2, !tbaa !70
  %1355 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 23
  store i16 %1354, ptr %1355, align 2, !tbaa !70
  %1356 = load ptr, ptr %1351, align 8, !tbaa !47
  %1357 = getelementptr inbounds i16, ptr %1356, i64 %1322
  %1358 = load i16, ptr %1357, align 2, !tbaa !70
  %1359 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 24
  store i16 %1358, ptr %1359, align 16, !tbaa !70
  br label %1372

1360:                                             ; preds = %1312
  %1361 = getelementptr inbounds %struct.video_par, ptr %1119, i64 0, i32 69, i64 %1136
  %1362 = load i32, ptr %1361, align 4, !tbaa !71
  %1363 = trunc i32 %1362 to i16
  %1364 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 24
  store i16 %1363, ptr %1364, align 16, !tbaa !70
  %1365 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 23
  store i16 %1363, ptr %1365, align 2, !tbaa !70
  %1366 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 22
  store i16 %1363, ptr %1366, align 4, !tbaa !70
  %1367 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 21
  store i16 %1363, ptr %1367, align 2, !tbaa !70
  %1368 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 20
  store i16 %1363, ptr %1368, align 8, !tbaa !70
  %1369 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 19
  store i16 %1363, ptr %1369, align 2, !tbaa !70
  %1370 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 18
  store i16 %1363, ptr %1370, align 4, !tbaa !70
  %1371 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 17
  store i16 %1363, ptr %1371, align 2, !tbaa !70
  br label %1372

1372:                                             ; preds = %1360, %1313
  br i1 %1215, label %1373, label %1384

1373:                                             ; preds = %1372
  %1374 = getelementptr inbounds %struct.pix_pos, ptr %34, i64 0, i32 5
  %1375 = load i16, ptr %1374, align 2, !tbaa !68
  %1376 = sext i16 %1375 to i64
  %1377 = getelementptr inbounds ptr, ptr %1133, i64 %1376
  %1378 = load ptr, ptr %1377, align 8, !tbaa !47
  %1379 = getelementptr inbounds %struct.pix_pos, ptr %34, i64 0, i32 4
  %1380 = load i16, ptr %1379, align 4, !tbaa !69
  %1381 = sext i16 %1380 to i64
  %1382 = getelementptr inbounds i16, ptr %1378, i64 %1381
  %1383 = load i16, ptr %1382, align 2, !tbaa !70
  br label %1388

1384:                                             ; preds = %1372
  %1385 = getelementptr inbounds %struct.video_par, ptr %1119, i64 0, i32 69, i64 %1136
  %1386 = load i32, ptr %1385, align 4, !tbaa !71
  %1387 = trunc i32 %1386 to i16
  br label %1388

1388:                                             ; preds = %1373, %1384
  %1389 = phi i16 [ %1387, %1384 ], [ %1383, %1373 ]
  store i16 %1389, ptr %30, align 16, !tbaa !70
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %30, i32 noundef %1209, i32 noundef %1211, i32 noundef %1210)
  %1390 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 24
  %1391 = load i16, ptr %1390, align 16, !tbaa !70
  %1392 = zext i16 %1391 to i32
  %1393 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 22
  %1394 = load i16, ptr %1393, align 4, !tbaa !70
  %1395 = zext i16 %1394 to i32
  %1396 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 23
  %1397 = load i16, ptr %1396, align 2, !tbaa !70
  %1398 = zext i16 %1397 to i32
  %1399 = shl nuw nsw i32 %1398, 1
  %1400 = add nuw nsw i32 %1395, 2
  %1401 = add nuw nsw i32 %1400, %1392
  %1402 = add nuw nsw i32 %1401, %1399
  %1403 = lshr i32 %1402, 2
  %1404 = trunc i32 %1403 to i16
  %1405 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 21
  %1406 = load i16, ptr %1405, align 2, !tbaa !70
  %1407 = zext i16 %1406 to i32
  %1408 = shl nuw nsw i32 %1395, 1
  %1409 = add nuw nsw i32 %1407, 2
  %1410 = add nuw nsw i32 %1409, %1398
  %1411 = add nuw nsw i32 %1410, %1408
  %1412 = lshr i32 %1411, 2
  %1413 = trunc i32 %1412 to i16
  %1414 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 20
  %1415 = load i16, ptr %1414, align 8, !tbaa !70
  %1416 = zext i16 %1415 to i32
  %1417 = shl nuw nsw i32 %1407, 1
  %1418 = add nuw nsw i32 %1395, 2
  %1419 = add nuw nsw i32 %1418, %1416
  %1420 = add nuw nsw i32 %1419, %1417
  %1421 = lshr i32 %1420, 2
  %1422 = trunc i32 %1421 to i16
  %1423 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 19
  %1424 = load i16, ptr %1423, align 2, !tbaa !70
  %1425 = zext i16 %1424 to i32
  %1426 = shl nuw nsw i32 %1416, 1
  %1427 = add nuw nsw i32 %1407, 2
  %1428 = add nuw nsw i32 %1427, %1425
  %1429 = add nuw nsw i32 %1428, %1426
  %1430 = lshr i32 %1429, 2
  %1431 = trunc i32 %1430 to i16
  %1432 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 18
  %1433 = load i16, ptr %1432, align 4, !tbaa !70
  %1434 = zext i16 %1433 to i32
  %1435 = shl nuw nsw i32 %1425, 1
  %1436 = add nuw nsw i32 %1416, 2
  %1437 = add nuw nsw i32 %1436, %1434
  %1438 = add nuw nsw i32 %1437, %1435
  %1439 = lshr i32 %1438, 2
  %1440 = trunc i32 %1439 to i16
  %1441 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 17
  %1442 = load i16, ptr %1441, align 2, !tbaa !70
  %1443 = zext i16 %1442 to i32
  %1444 = shl nuw nsw i32 %1434, 1
  %1445 = add nuw nsw i32 %1425, 2
  %1446 = add nuw nsw i32 %1445, %1443
  %1447 = add nuw nsw i32 %1446, %1444
  %1448 = lshr i32 %1447, 2
  %1449 = trunc i32 %1448 to i16
  %1450 = load i16, ptr %30, align 16, !tbaa !70
  %1451 = zext i16 %1450 to i32
  %1452 = shl nuw nsw i32 %1443, 1
  %1453 = add nuw nsw i32 %1434, 2
  %1454 = add nuw nsw i32 %1453, %1451
  %1455 = add nuw nsw i32 %1454, %1452
  %1456 = lshr i32 %1455, 2
  %1457 = trunc i32 %1456 to i16
  %1458 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 1
  %1459 = load i16, ptr %1458, align 2, !tbaa !70
  %1460 = zext i16 %1459 to i32
  %1461 = shl nuw nsw i32 %1451, 1
  %1462 = add nuw nsw i32 %1443, 2
  %1463 = add nuw nsw i32 %1462, %1460
  %1464 = add nuw nsw i32 %1463, %1461
  %1465 = lshr i32 %1464, 2
  %1466 = trunc i32 %1465 to i16
  %1467 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 2
  %1468 = load i16, ptr %1467, align 4, !tbaa !70
  %1469 = zext i16 %1468 to i32
  %1470 = shl nuw nsw i32 %1460, 1
  %1471 = add nuw nsw i32 %1451, 2
  %1472 = add nuw nsw i32 %1471, %1469
  %1473 = add nuw nsw i32 %1472, %1470
  %1474 = lshr i32 %1473, 2
  %1475 = trunc i32 %1474 to i16
  %1476 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 3
  %1477 = load i16, ptr %1476, align 2, !tbaa !70
  %1478 = zext i16 %1477 to i32
  %1479 = shl nuw nsw i32 %1469, 1
  %1480 = add nuw nsw i32 %1460, 2
  %1481 = add nuw nsw i32 %1480, %1478
  %1482 = add nuw nsw i32 %1481, %1479
  %1483 = lshr i32 %1482, 2
  %1484 = trunc i32 %1483 to i16
  %1485 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 4
  %1486 = load i16, ptr %1485, align 8, !tbaa !70
  %1487 = zext i16 %1486 to i32
  %1488 = shl nuw nsw i32 %1478, 1
  %1489 = add nuw nsw i32 %1469, 2
  %1490 = add nuw nsw i32 %1489, %1487
  %1491 = add nuw nsw i32 %1490, %1488
  %1492 = lshr i32 %1491, 2
  %1493 = trunc i32 %1492 to i16
  %1494 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 5
  %1495 = load i16, ptr %1494, align 2, !tbaa !70
  %1496 = zext i16 %1495 to i32
  %1497 = shl nuw nsw i32 %1487, 1
  %1498 = add nuw nsw i32 %1478, 2
  %1499 = add nuw nsw i32 %1498, %1496
  %1500 = add nuw nsw i32 %1499, %1497
  %1501 = lshr i32 %1500, 2
  %1502 = trunc i32 %1501 to i16
  %1503 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 6
  %1504 = load i16, ptr %1503, align 4, !tbaa !70
  %1505 = zext i16 %1504 to i32
  %1506 = shl nuw nsw i32 %1496, 1
  %1507 = add nuw nsw i32 %1487, 2
  %1508 = add nuw nsw i32 %1507, %1505
  %1509 = add nuw nsw i32 %1508, %1506
  %1510 = lshr i32 %1509, 2
  %1511 = trunc i32 %1510 to i16
  %1512 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 7
  %1513 = load i16, ptr %1512, align 2, !tbaa !70
  %1514 = zext i16 %1513 to i32
  %1515 = shl nuw nsw i32 %1505, 1
  %1516 = add nuw nsw i32 %1496, 2
  %1517 = add nuw nsw i32 %1516, %1514
  %1518 = add nuw nsw i32 %1517, %1515
  %1519 = lshr i32 %1518, 2
  %1520 = trunc i32 %1519 to i16
  %1521 = getelementptr inbounds [25 x i16], ptr %30, i64 0, i64 8
  %1522 = load i16, ptr %1521, align 16, !tbaa !70
  %1523 = zext i16 %1522 to i32
  %1524 = shl nuw nsw i32 %1514, 1
  %1525 = add nuw nsw i32 %1505, 2
  %1526 = add nuw nsw i32 %1525, %1523
  %1527 = add nuw nsw i32 %1526, %1524
  %1528 = lshr i32 %1527, 2
  %1529 = trunc i32 %1528 to i16
  %1530 = sext i32 %3 to i64
  %1531 = getelementptr inbounds ptr, ptr %1138, i64 %1530
  %1532 = load ptr, ptr %1531, align 8, !tbaa !47
  %1533 = sext i32 %2 to i64
  %1534 = getelementptr inbounds i16, ptr %1532, i64 %1533
  store i16 %1466, ptr %1534, align 2
  %1535 = getelementptr inbounds i8, ptr %1534, i64 2
  store i16 %1475, ptr %1535, align 2
  %1536 = getelementptr inbounds i8, ptr %1534, i64 4
  store i16 %1484, ptr %1536, align 2
  %1537 = getelementptr inbounds i8, ptr %1534, i64 6
  store i16 %1493, ptr %1537, align 2
  %1538 = getelementptr inbounds i8, ptr %1534, i64 8
  store i16 %1502, ptr %1538, align 2
  %1539 = getelementptr inbounds i8, ptr %1534, i64 10
  store i16 %1511, ptr %1539, align 2
  %1540 = getelementptr inbounds i8, ptr %1534, i64 12
  store i16 %1520, ptr %1540, align 2
  %1541 = getelementptr inbounds i8, ptr %1534, i64 14
  store i16 %1529, ptr %1541, align 2
  %1542 = getelementptr ptr, ptr %1531, i64 1
  %1543 = load ptr, ptr %1542, align 8, !tbaa !47
  %1544 = getelementptr inbounds i16, ptr %1543, i64 %1533
  store i16 %1457, ptr %1544, align 2
  %1545 = getelementptr inbounds i8, ptr %1544, i64 2
  store i16 %1466, ptr %1545, align 2
  %1546 = getelementptr inbounds i8, ptr %1544, i64 4
  store i16 %1475, ptr %1546, align 2
  %1547 = getelementptr inbounds i8, ptr %1544, i64 6
  store i16 %1484, ptr %1547, align 2
  %1548 = getelementptr inbounds i8, ptr %1544, i64 8
  store i16 %1493, ptr %1548, align 2
  %1549 = getelementptr inbounds i8, ptr %1544, i64 10
  store i16 %1502, ptr %1549, align 2
  %1550 = getelementptr inbounds i8, ptr %1544, i64 12
  store i16 %1511, ptr %1550, align 2
  %1551 = getelementptr inbounds i8, ptr %1544, i64 14
  store i16 %1520, ptr %1551, align 2
  %1552 = getelementptr ptr, ptr %1531, i64 2
  %1553 = load ptr, ptr %1552, align 8, !tbaa !47
  %1554 = getelementptr inbounds i16, ptr %1553, i64 %1533
  store i16 %1449, ptr %1554, align 2
  %1555 = getelementptr inbounds i8, ptr %1554, i64 2
  store i16 %1457, ptr %1555, align 2
  %1556 = getelementptr inbounds i8, ptr %1554, i64 4
  store i16 %1466, ptr %1556, align 2
  %1557 = getelementptr inbounds i8, ptr %1554, i64 6
  store i16 %1475, ptr %1557, align 2
  %1558 = getelementptr inbounds i8, ptr %1554, i64 8
  store i16 %1484, ptr %1558, align 2
  %1559 = getelementptr inbounds i8, ptr %1554, i64 10
  store i16 %1493, ptr %1559, align 2
  %1560 = getelementptr inbounds i8, ptr %1554, i64 12
  store i16 %1502, ptr %1560, align 2
  %1561 = getelementptr inbounds i8, ptr %1554, i64 14
  store i16 %1511, ptr %1561, align 2
  %1562 = getelementptr ptr, ptr %1531, i64 3
  %1563 = load ptr, ptr %1562, align 8, !tbaa !47
  %1564 = getelementptr inbounds i16, ptr %1563, i64 %1533
  store i16 %1440, ptr %1564, align 2
  %1565 = getelementptr inbounds i8, ptr %1564, i64 2
  store i16 %1449, ptr %1565, align 2
  %1566 = getelementptr inbounds i8, ptr %1564, i64 4
  store i16 %1457, ptr %1566, align 2
  %1567 = getelementptr inbounds i8, ptr %1564, i64 6
  store i16 %1466, ptr %1567, align 2
  %1568 = getelementptr inbounds i8, ptr %1564, i64 8
  store i16 %1475, ptr %1568, align 2
  %1569 = getelementptr inbounds i8, ptr %1564, i64 10
  store i16 %1484, ptr %1569, align 2
  %1570 = getelementptr inbounds i8, ptr %1564, i64 12
  store i16 %1493, ptr %1570, align 2
  %1571 = getelementptr inbounds i8, ptr %1564, i64 14
  store i16 %1502, ptr %1571, align 2
  %1572 = getelementptr ptr, ptr %1531, i64 4
  %1573 = load ptr, ptr %1572, align 8, !tbaa !47
  %1574 = getelementptr inbounds i16, ptr %1573, i64 %1533
  store i16 %1431, ptr %1574, align 2
  %1575 = getelementptr inbounds i8, ptr %1574, i64 2
  store i16 %1440, ptr %1575, align 2
  %1576 = getelementptr inbounds i8, ptr %1574, i64 4
  store i16 %1449, ptr %1576, align 2
  %1577 = getelementptr inbounds i8, ptr %1574, i64 6
  store i16 %1457, ptr %1577, align 2
  %1578 = getelementptr inbounds i8, ptr %1574, i64 8
  store i16 %1466, ptr %1578, align 2
  %1579 = getelementptr inbounds i8, ptr %1574, i64 10
  store i16 %1475, ptr %1579, align 2
  %1580 = getelementptr inbounds i8, ptr %1574, i64 12
  store i16 %1484, ptr %1580, align 2
  %1581 = getelementptr inbounds i8, ptr %1574, i64 14
  store i16 %1493, ptr %1581, align 2
  %1582 = getelementptr ptr, ptr %1531, i64 5
  %1583 = load ptr, ptr %1582, align 8, !tbaa !47
  %1584 = getelementptr inbounds i16, ptr %1583, i64 %1533
  store i16 %1422, ptr %1584, align 2
  %1585 = getelementptr inbounds i8, ptr %1584, i64 2
  store i16 %1431, ptr %1585, align 2
  %1586 = getelementptr inbounds i8, ptr %1584, i64 4
  store i16 %1440, ptr %1586, align 2
  %1587 = getelementptr inbounds i8, ptr %1584, i64 6
  store i16 %1449, ptr %1587, align 2
  %1588 = getelementptr inbounds i8, ptr %1584, i64 8
  store i16 %1457, ptr %1588, align 2
  %1589 = getelementptr inbounds i8, ptr %1584, i64 10
  store i16 %1466, ptr %1589, align 2
  %1590 = getelementptr inbounds i8, ptr %1584, i64 12
  store i16 %1475, ptr %1590, align 2
  %1591 = getelementptr inbounds i8, ptr %1584, i64 14
  store i16 %1484, ptr %1591, align 2
  %1592 = getelementptr ptr, ptr %1531, i64 6
  %1593 = load ptr, ptr %1592, align 8, !tbaa !47
  %1594 = getelementptr inbounds i16, ptr %1593, i64 %1533
  store i16 %1413, ptr %1594, align 2
  %1595 = getelementptr inbounds i8, ptr %1594, i64 2
  store i16 %1422, ptr %1595, align 2
  %1596 = getelementptr inbounds i8, ptr %1594, i64 4
  store i16 %1431, ptr %1596, align 2
  %1597 = getelementptr inbounds i8, ptr %1594, i64 6
  store i16 %1440, ptr %1597, align 2
  %1598 = getelementptr inbounds i8, ptr %1594, i64 8
  store i16 %1449, ptr %1598, align 2
  %1599 = getelementptr inbounds i8, ptr %1594, i64 10
  store i16 %1457, ptr %1599, align 2
  %1600 = getelementptr inbounds i8, ptr %1594, i64 12
  store i16 %1466, ptr %1600, align 2
  %1601 = getelementptr inbounds i8, ptr %1594, i64 14
  store i16 %1475, ptr %1601, align 2
  %1602 = getelementptr ptr, ptr %1531, i64 7
  %1603 = load ptr, ptr %1602, align 8, !tbaa !47
  %1604 = getelementptr inbounds i16, ptr %1603, i64 %1533
  store i16 %1404, ptr %1604, align 2
  %1605 = getelementptr inbounds i8, ptr %1604, i64 2
  store i16 %1413, ptr %1605, align 2
  %1606 = getelementptr inbounds i8, ptr %1604, i64 4
  store i16 %1422, ptr %1606, align 2
  %1607 = getelementptr inbounds i8, ptr %1604, i64 6
  store i16 %1431, ptr %1607, align 2
  %1608 = getelementptr inbounds i8, ptr %1604, i64 8
  store i16 %1440, ptr %1608, align 2
  %1609 = getelementptr inbounds i8, ptr %1604, i64 10
  store i16 %1449, ptr %1609, align 2
  %1610 = getelementptr inbounds i8, ptr %1604, i64 12
  store i16 %1457, ptr %1610, align 2
  %1611 = getelementptr inbounds i8, ptr %1604, i64 14
  store i16 %1466, ptr %1611, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %34) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %33) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %32) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %31) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %30) #6
  br label %4098

1612:                                             ; preds = %4
  %1613 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %1614 = load ptr, ptr %1613, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %25) #6
  %1615 = icmp eq i32 %1, 0
  %1616 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 125
  %1617 = load ptr, ptr %1616, align 8, !tbaa !51
  br i1 %1615, label %1624, label %1618

1618:                                             ; preds = %1612
  %1619 = getelementptr inbounds %struct.storable_picture, ptr %1617, i64 0, i32 33
  %1620 = load ptr, ptr %1619, align 8, !tbaa !52
  %1621 = add i32 %1, -1
  %1622 = zext i32 %1621 to i64
  %1623 = getelementptr inbounds ptr, ptr %1620, i64 %1622
  br label %1626

1624:                                             ; preds = %1612
  %1625 = getelementptr inbounds %struct.storable_picture, ptr %1617, i64 0, i32 32
  br label %1626

1626:                                             ; preds = %1624, %1618
  %1627 = phi ptr [ %1623, %1618 ], [ %1625, %1624 ]
  %1628 = load ptr, ptr %1627, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %26) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %27) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %28) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %29) #6
  %1629 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 77
  %1630 = load ptr, ptr %1629, align 8, !tbaa !55
  %1631 = zext i32 %1 to i64
  %1632 = getelementptr inbounds ptr, ptr %1630, i64 %1631
  %1633 = load ptr, ptr %1632, align 8, !tbaa !47
  %1634 = getelementptr inbounds %struct.video_par, ptr %1614, i64 0, i32 81
  %1635 = add nsw i32 %2, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %1635, i32 noundef %3, ptr noundef nonnull %1634, ptr noundef nonnull %26) #6
  %1636 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %1636, ptr noundef nonnull %1634, ptr noundef nonnull %27) #6
  %1637 = add nsw i32 %2, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %1637, i32 noundef %1636, ptr noundef nonnull %1634, ptr noundef nonnull %28) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %1635, i32 noundef %1636, ptr noundef nonnull %1634, ptr noundef nonnull %29) #6
  %1638 = load i32, ptr %28, align 4, !tbaa !56
  %1639 = icmp ne i32 %1638, 0
  %1640 = icmp ne i32 %2, 8
  %1641 = icmp ne i32 %3, 8
  %1642 = or i1 %1640, %1641
  %1643 = and i1 %1642, %1639
  %1644 = zext i1 %1643 to i32
  store i32 %1644, ptr %28, align 4, !tbaa !56
  %1645 = getelementptr inbounds %struct.video_par, ptr %1614, i64 0, i32 1
  %1646 = load ptr, ptr %1645, align 8, !tbaa !58
  %1647 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1646, i64 0, i32 30
  %1648 = load i32, ptr %1647, align 4, !tbaa !64
  %1649 = icmp eq i32 %1648, 0
  %1650 = load i32, ptr %26, align 4, !tbaa !56
  br i1 %1649, label %1699, label %1651

1651:                                             ; preds = %1626
  %1652 = icmp eq i32 %1650, 0
  br i1 %1652, label %1662, label %1653

1653:                                             ; preds = %1651
  %1654 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %1655 = load ptr, ptr %1654, align 8, !tbaa !66
  %1656 = getelementptr inbounds %struct.pix_pos, ptr %26, i64 0, i32 1
  %1657 = load i32, ptr %1656, align 4, !tbaa !67
  %1658 = sext i32 %1657 to i64
  %1659 = getelementptr inbounds i8, ptr %1655, i64 %1658
  %1660 = load i8, ptr %1659, align 1, !tbaa !48
  %1661 = sext i8 %1660 to i32
  br label %1662

1662:                                             ; preds = %1653, %1651
  %1663 = phi i32 [ %1661, %1653 ], [ 0, %1651 ]
  %1664 = load i32, ptr %27, align 4, !tbaa !56
  %1665 = icmp eq i32 %1664, 0
  br i1 %1665, label %1675, label %1666

1666:                                             ; preds = %1662
  %1667 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %1668 = load ptr, ptr %1667, align 8, !tbaa !66
  %1669 = getelementptr inbounds %struct.pix_pos, ptr %27, i64 0, i32 1
  %1670 = load i32, ptr %1669, align 4, !tbaa !67
  %1671 = sext i32 %1670 to i64
  %1672 = getelementptr inbounds i8, ptr %1668, i64 %1671
  %1673 = load i8, ptr %1672, align 1, !tbaa !48
  %1674 = sext i8 %1673 to i32
  br label %1675

1675:                                             ; preds = %1666, %1662
  %1676 = phi i32 [ %1674, %1666 ], [ 0, %1662 ]
  br i1 %1643, label %1677, label %1686

1677:                                             ; preds = %1675
  %1678 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %1679 = load ptr, ptr %1678, align 8, !tbaa !66
  %1680 = getelementptr inbounds %struct.pix_pos, ptr %28, i64 0, i32 1
  %1681 = load i32, ptr %1680, align 4, !tbaa !67
  %1682 = sext i32 %1681 to i64
  %1683 = getelementptr inbounds i8, ptr %1679, i64 %1682
  %1684 = load i8, ptr %1683, align 1, !tbaa !48
  %1685 = sext i8 %1684 to i32
  br label %1686

1686:                                             ; preds = %1677, %1675
  %1687 = phi i32 [ %1685, %1677 ], [ 0, %1675 ]
  %1688 = load i32, ptr %29, align 4, !tbaa !56
  %1689 = icmp eq i32 %1688, 0
  br i1 %1689, label %1702, label %1690

1690:                                             ; preds = %1686
  %1691 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %1692 = load ptr, ptr %1691, align 8, !tbaa !66
  %1693 = getelementptr inbounds %struct.pix_pos, ptr %29, i64 0, i32 1
  %1694 = load i32, ptr %1693, align 4, !tbaa !67
  %1695 = sext i32 %1694 to i64
  %1696 = getelementptr inbounds i8, ptr %1692, i64 %1695
  %1697 = load i8, ptr %1696, align 1, !tbaa !48
  %1698 = sext i8 %1697 to i32
  br label %1702

1699:                                             ; preds = %1626
  %1700 = load i32, ptr %27, align 4, !tbaa !56
  %1701 = load i32, ptr %29, align 4, !tbaa !56
  br label %1702

1702:                                             ; preds = %1699, %1690, %1686
  %1703 = phi i32 [ %1701, %1699 ], [ %1698, %1690 ], [ 0, %1686 ]
  %1704 = phi i32 [ %1644, %1699 ], [ %1687, %1690 ], [ %1687, %1686 ]
  %1705 = phi i32 [ %1650, %1699 ], [ %1663, %1690 ], [ %1663, %1686 ]
  %1706 = phi i32 [ %1700, %1699 ], [ %1676, %1690 ], [ %1676, %1686 ]
  %1707 = icmp eq i32 %1706, 0
  br i1 %1707, label %1708, label %1723

1708:                                             ; preds = %1702
  %1709 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 20
  %1710 = load i32, ptr %1709, align 4, !tbaa !76
  %1711 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %1710)
  %1712 = getelementptr inbounds %struct.video_par, ptr %1614, i64 0, i32 69, i64 %1631
  %1713 = load i32, ptr %1712, align 4, !tbaa !71
  %1714 = trunc i32 %1713 to i16
  %1715 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 8
  store i16 %1714, ptr %1715, align 16, !tbaa !70
  %1716 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 7
  store i16 %1714, ptr %1716, align 2, !tbaa !70
  %1717 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 6
  store i16 %1714, ptr %1717, align 4, !tbaa !70
  %1718 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 5
  store i16 %1714, ptr %1718, align 2, !tbaa !70
  %1719 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 4
  store i16 %1714, ptr %1719, align 8, !tbaa !70
  %1720 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 3
  store i16 %1714, ptr %1720, align 2, !tbaa !70
  %1721 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 2
  store i16 %1714, ptr %1721, align 4, !tbaa !70
  %1722 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 1
  store i16 %1714, ptr %1722, align 2, !tbaa !70
  br label %1756

1723:                                             ; preds = %1702
  %1724 = getelementptr inbounds %struct.pix_pos, ptr %27, i64 0, i32 5
  %1725 = load i16, ptr %1724, align 2, !tbaa !68
  %1726 = sext i16 %1725 to i64
  %1727 = getelementptr inbounds ptr, ptr %1628, i64 %1726
  %1728 = load ptr, ptr %1727, align 8, !tbaa !47
  %1729 = getelementptr inbounds %struct.pix_pos, ptr %27, i64 0, i32 4
  %1730 = load i16, ptr %1729, align 4, !tbaa !69
  %1731 = sext i16 %1730 to i64
  %1732 = getelementptr inbounds i16, ptr %1728, i64 %1731
  %1733 = load i16, ptr %1732, align 2, !tbaa !70
  %1734 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 1
  store i16 %1733, ptr %1734, align 2, !tbaa !70
  %1735 = getelementptr inbounds i16, ptr %1732, i64 1
  %1736 = load i16, ptr %1735, align 2, !tbaa !70
  %1737 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 2
  store i16 %1736, ptr %1737, align 4, !tbaa !70
  %1738 = getelementptr inbounds i16, ptr %1732, i64 2
  %1739 = load i16, ptr %1738, align 2, !tbaa !70
  %1740 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 3
  store i16 %1739, ptr %1740, align 2, !tbaa !70
  %1741 = getelementptr inbounds i16, ptr %1732, i64 3
  %1742 = load i16, ptr %1741, align 2, !tbaa !70
  %1743 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 4
  store i16 %1742, ptr %1743, align 8, !tbaa !70
  %1744 = getelementptr inbounds i16, ptr %1732, i64 4
  %1745 = load i16, ptr %1744, align 2, !tbaa !70
  %1746 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 5
  store i16 %1745, ptr %1746, align 2, !tbaa !70
  %1747 = getelementptr inbounds i16, ptr %1732, i64 5
  %1748 = load i16, ptr %1747, align 2, !tbaa !70
  %1749 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 6
  store i16 %1748, ptr %1749, align 4, !tbaa !70
  %1750 = getelementptr inbounds i16, ptr %1732, i64 6
  %1751 = load i16, ptr %1750, align 2, !tbaa !70
  %1752 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 7
  store i16 %1751, ptr %1752, align 2, !tbaa !70
  %1753 = getelementptr inbounds i16, ptr %1732, i64 7
  %1754 = load i16, ptr %1753, align 2, !tbaa !70
  %1755 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 8
  store i16 %1754, ptr %1755, align 16, !tbaa !70
  br label %1756

1756:                                             ; preds = %1723, %1708
  %1757 = icmp eq i32 %1704, 0
  %1758 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 10
  br i1 %1757, label %1791, label %1759

1759:                                             ; preds = %1756
  %1760 = getelementptr inbounds %struct.pix_pos, ptr %28, i64 0, i32 5
  %1761 = load i16, ptr %1760, align 2, !tbaa !68
  %1762 = sext i16 %1761 to i64
  %1763 = getelementptr inbounds ptr, ptr %1628, i64 %1762
  %1764 = load ptr, ptr %1763, align 8, !tbaa !47
  %1765 = getelementptr inbounds %struct.pix_pos, ptr %28, i64 0, i32 4
  %1766 = load i16, ptr %1765, align 4, !tbaa !69
  %1767 = sext i16 %1766 to i64
  %1768 = getelementptr inbounds i16, ptr %1764, i64 %1767
  %1769 = load i16, ptr %1768, align 2, !tbaa !70
  %1770 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 9
  store i16 %1769, ptr %1770, align 2, !tbaa !70
  %1771 = getelementptr inbounds i16, ptr %1768, i64 1
  %1772 = load i16, ptr %1771, align 2, !tbaa !70
  store i16 %1772, ptr %1758, align 4, !tbaa !70
  %1773 = getelementptr inbounds i16, ptr %1768, i64 2
  %1774 = load i16, ptr %1773, align 2, !tbaa !70
  %1775 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 11
  store i16 %1774, ptr %1775, align 2, !tbaa !70
  %1776 = getelementptr inbounds i16, ptr %1768, i64 3
  %1777 = load i16, ptr %1776, align 2, !tbaa !70
  %1778 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 12
  store i16 %1777, ptr %1778, align 8, !tbaa !70
  %1779 = getelementptr inbounds i16, ptr %1768, i64 4
  %1780 = load i16, ptr %1779, align 2, !tbaa !70
  %1781 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 13
  store i16 %1780, ptr %1781, align 2, !tbaa !70
  %1782 = getelementptr inbounds i16, ptr %1768, i64 5
  %1783 = load i16, ptr %1782, align 2, !tbaa !70
  %1784 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 14
  store i16 %1783, ptr %1784, align 4, !tbaa !70
  %1785 = getelementptr inbounds i16, ptr %1768, i64 6
  %1786 = load i16, ptr %1785, align 2, !tbaa !70
  %1787 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 15
  store i16 %1786, ptr %1787, align 2, !tbaa !70
  %1788 = getelementptr inbounds i16, ptr %1768, i64 7
  %1789 = load i16, ptr %1788, align 2, !tbaa !70
  %1790 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 16
  store i16 %1789, ptr %1790, align 16, !tbaa !70
  br label %1801

1791:                                             ; preds = %1756
  %1792 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 8
  %1793 = load i16, ptr %1792, align 16, !tbaa !70
  %1794 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 16
  store i16 %1793, ptr %1794, align 16, !tbaa !70
  %1795 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 15
  store i16 %1793, ptr %1795, align 2, !tbaa !70
  %1796 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 14
  store i16 %1793, ptr %1796, align 4, !tbaa !70
  %1797 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 13
  store i16 %1793, ptr %1797, align 2, !tbaa !70
  %1798 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 12
  store i16 %1793, ptr %1798, align 8, !tbaa !70
  %1799 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 11
  store i16 %1793, ptr %1799, align 2, !tbaa !70
  store i16 %1793, ptr %1758, align 4, !tbaa !70
  %1800 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 9
  store i16 %1793, ptr %1800, align 2, !tbaa !70
  br label %1801

1801:                                             ; preds = %1791, %1759
  %1802 = icmp eq i32 %1705, 0
  br i1 %1802, label %1850, label %1803

1803:                                             ; preds = %1801
  %1804 = getelementptr inbounds %struct.pix_pos, ptr %26, i64 0, i32 5
  %1805 = load i16, ptr %1804, align 2, !tbaa !68
  %1806 = sext i16 %1805 to i64
  %1807 = getelementptr inbounds ptr, ptr %1628, i64 %1806
  %1808 = getelementptr inbounds %struct.pix_pos, ptr %26, i64 0, i32 4
  %1809 = load i16, ptr %1808, align 4, !tbaa !69
  %1810 = getelementptr inbounds ptr, ptr %1807, i64 1
  %1811 = load ptr, ptr %1807, align 8, !tbaa !47
  %1812 = sext i16 %1809 to i64
  %1813 = getelementptr inbounds i16, ptr %1811, i64 %1812
  %1814 = load i16, ptr %1813, align 2, !tbaa !70
  %1815 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 17
  store i16 %1814, ptr %1815, align 2, !tbaa !70
  %1816 = getelementptr inbounds ptr, ptr %1807, i64 2
  %1817 = load ptr, ptr %1810, align 8, !tbaa !47
  %1818 = getelementptr inbounds i16, ptr %1817, i64 %1812
  %1819 = load i16, ptr %1818, align 2, !tbaa !70
  %1820 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 18
  store i16 %1819, ptr %1820, align 4, !tbaa !70
  %1821 = getelementptr inbounds ptr, ptr %1807, i64 3
  %1822 = load ptr, ptr %1816, align 8, !tbaa !47
  %1823 = getelementptr inbounds i16, ptr %1822, i64 %1812
  %1824 = load i16, ptr %1823, align 2, !tbaa !70
  %1825 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 19
  store i16 %1824, ptr %1825, align 2, !tbaa !70
  %1826 = getelementptr inbounds ptr, ptr %1807, i64 4
  %1827 = load ptr, ptr %1821, align 8, !tbaa !47
  %1828 = getelementptr inbounds i16, ptr %1827, i64 %1812
  %1829 = load i16, ptr %1828, align 2, !tbaa !70
  %1830 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 20
  store i16 %1829, ptr %1830, align 8, !tbaa !70
  %1831 = getelementptr inbounds ptr, ptr %1807, i64 5
  %1832 = load ptr, ptr %1826, align 8, !tbaa !47
  %1833 = getelementptr inbounds i16, ptr %1832, i64 %1812
  %1834 = load i16, ptr %1833, align 2, !tbaa !70
  %1835 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 21
  store i16 %1834, ptr %1835, align 2, !tbaa !70
  %1836 = getelementptr inbounds ptr, ptr %1807, i64 6
  %1837 = load ptr, ptr %1831, align 8, !tbaa !47
  %1838 = getelementptr inbounds i16, ptr %1837, i64 %1812
  %1839 = load i16, ptr %1838, align 2, !tbaa !70
  %1840 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 22
  store i16 %1839, ptr %1840, align 4, !tbaa !70
  %1841 = getelementptr inbounds ptr, ptr %1807, i64 7
  %1842 = load ptr, ptr %1836, align 8, !tbaa !47
  %1843 = getelementptr inbounds i16, ptr %1842, i64 %1812
  %1844 = load i16, ptr %1843, align 2, !tbaa !70
  %1845 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 23
  store i16 %1844, ptr %1845, align 2, !tbaa !70
  %1846 = load ptr, ptr %1841, align 8, !tbaa !47
  %1847 = getelementptr inbounds i16, ptr %1846, i64 %1812
  %1848 = load i16, ptr %1847, align 2, !tbaa !70
  %1849 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 24
  store i16 %1848, ptr %1849, align 16, !tbaa !70
  br label %1862

1850:                                             ; preds = %1801
  %1851 = getelementptr inbounds %struct.video_par, ptr %1614, i64 0, i32 69, i64 %1631
  %1852 = load i32, ptr %1851, align 4, !tbaa !71
  %1853 = trunc i32 %1852 to i16
  %1854 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 24
  store i16 %1853, ptr %1854, align 16, !tbaa !70
  %1855 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 23
  store i16 %1853, ptr %1855, align 2, !tbaa !70
  %1856 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 22
  store i16 %1853, ptr %1856, align 4, !tbaa !70
  %1857 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 21
  store i16 %1853, ptr %1857, align 2, !tbaa !70
  %1858 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 20
  store i16 %1853, ptr %1858, align 8, !tbaa !70
  %1859 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 19
  store i16 %1853, ptr %1859, align 2, !tbaa !70
  %1860 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 18
  store i16 %1853, ptr %1860, align 4, !tbaa !70
  %1861 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 17
  store i16 %1853, ptr %1861, align 2, !tbaa !70
  br label %1862

1862:                                             ; preds = %1850, %1803
  %1863 = icmp eq i32 %1703, 0
  br i1 %1863, label %1875, label %1864

1864:                                             ; preds = %1862
  %1865 = getelementptr inbounds %struct.pix_pos, ptr %29, i64 0, i32 5
  %1866 = load i16, ptr %1865, align 2, !tbaa !68
  %1867 = sext i16 %1866 to i64
  %1868 = getelementptr inbounds ptr, ptr %1628, i64 %1867
  %1869 = load ptr, ptr %1868, align 8, !tbaa !47
  %1870 = getelementptr inbounds %struct.pix_pos, ptr %29, i64 0, i32 4
  %1871 = load i16, ptr %1870, align 4, !tbaa !69
  %1872 = sext i16 %1871 to i64
  %1873 = getelementptr inbounds i16, ptr %1869, i64 %1872
  %1874 = load i16, ptr %1873, align 2, !tbaa !70
  br label %1879

1875:                                             ; preds = %1862
  %1876 = getelementptr inbounds %struct.video_par, ptr %1614, i64 0, i32 69, i64 %1631
  %1877 = load i32, ptr %1876, align 4, !tbaa !71
  %1878 = trunc i32 %1877 to i16
  br label %1879

1879:                                             ; preds = %1864, %1875
  %1880 = phi i16 [ %1878, %1875 ], [ %1874, %1864 ]
  store i16 %1880, ptr %25, align 16, !tbaa !70
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %25, i32 noundef %1703, i32 noundef %1706, i32 noundef %1705)
  %1881 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 1
  %1882 = load i16, ptr %1881, align 2, !tbaa !70
  %1883 = zext i16 %1882 to i32
  %1884 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 3
  %1885 = load i16, ptr %1884, align 2, !tbaa !70
  %1886 = zext i16 %1885 to i32
  %1887 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 2
  %1888 = load i16, ptr %1887, align 4, !tbaa !70
  %1889 = zext i16 %1888 to i32
  %1890 = shl nuw nsw i32 %1889, 1
  %1891 = add nuw nsw i32 %1886, 2
  %1892 = add nuw nsw i32 %1891, %1883
  %1893 = add nuw nsw i32 %1892, %1890
  %1894 = lshr i32 %1893, 2
  %1895 = trunc i32 %1894 to i16
  %1896 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 4
  %1897 = load i16, ptr %1896, align 8, !tbaa !70
  %1898 = zext i16 %1897 to i32
  %1899 = shl nuw nsw i32 %1886, 1
  %1900 = add nuw nsw i32 %1898, 2
  %1901 = add nuw nsw i32 %1900, %1889
  %1902 = add nuw nsw i32 %1901, %1899
  %1903 = lshr i32 %1902, 2
  %1904 = trunc i32 %1903 to i16
  %1905 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 5
  %1906 = load i16, ptr %1905, align 2, !tbaa !70
  %1907 = zext i16 %1906 to i32
  %1908 = shl nuw nsw i32 %1898, 1
  %1909 = add nuw nsw i32 %1886, 2
  %1910 = add nuw nsw i32 %1909, %1907
  %1911 = add nuw nsw i32 %1910, %1908
  %1912 = lshr i32 %1911, 2
  %1913 = trunc i32 %1912 to i16
  %1914 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 6
  %1915 = load i16, ptr %1914, align 4, !tbaa !70
  %1916 = zext i16 %1915 to i32
  %1917 = shl nuw nsw i32 %1907, 1
  %1918 = add nuw nsw i32 %1898, 2
  %1919 = add nuw nsw i32 %1918, %1916
  %1920 = add nuw nsw i32 %1919, %1917
  %1921 = lshr i32 %1920, 2
  %1922 = trunc i32 %1921 to i16
  %1923 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 7
  %1924 = load i16, ptr %1923, align 2, !tbaa !70
  %1925 = zext i16 %1924 to i32
  %1926 = shl nuw nsw i32 %1916, 1
  %1927 = add nuw nsw i32 %1907, 2
  %1928 = add nuw nsw i32 %1927, %1925
  %1929 = add nuw nsw i32 %1928, %1926
  %1930 = lshr i32 %1929, 2
  %1931 = trunc i32 %1930 to i16
  %1932 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 8
  %1933 = load i16, ptr %1932, align 16, !tbaa !70
  %1934 = zext i16 %1933 to i32
  %1935 = shl nuw nsw i32 %1925, 1
  %1936 = add nuw nsw i32 %1916, 2
  %1937 = add nuw nsw i32 %1936, %1934
  %1938 = add nuw nsw i32 %1937, %1935
  %1939 = lshr i32 %1938, 2
  %1940 = trunc i32 %1939 to i16
  %1941 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 9
  %1942 = load i16, ptr %1941, align 2, !tbaa !70
  %1943 = zext i16 %1942 to i32
  %1944 = shl nuw nsw i32 %1934, 1
  %1945 = add nuw nsw i32 %1925, 2
  %1946 = add nuw nsw i32 %1945, %1943
  %1947 = add nuw nsw i32 %1946, %1944
  %1948 = lshr i32 %1947, 2
  %1949 = trunc i32 %1948 to i16
  %1950 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 10
  %1951 = load i16, ptr %1950, align 4, !tbaa !70
  %1952 = zext i16 %1951 to i32
  %1953 = shl nuw nsw i32 %1943, 1
  %1954 = add nuw nsw i32 %1934, 2
  %1955 = add nuw nsw i32 %1954, %1952
  %1956 = add nuw nsw i32 %1955, %1953
  %1957 = lshr i32 %1956, 2
  %1958 = trunc i32 %1957 to i16
  %1959 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 11
  %1960 = load i16, ptr %1959, align 2, !tbaa !70
  %1961 = zext i16 %1960 to i32
  %1962 = shl nuw nsw i32 %1952, 1
  %1963 = add nuw nsw i32 %1943, 2
  %1964 = add nuw nsw i32 %1963, %1961
  %1965 = add nuw nsw i32 %1964, %1962
  %1966 = lshr i32 %1965, 2
  %1967 = trunc i32 %1966 to i16
  %1968 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 12
  %1969 = load i16, ptr %1968, align 8, !tbaa !70
  %1970 = zext i16 %1969 to i32
  %1971 = shl nuw nsw i32 %1961, 1
  %1972 = add nuw nsw i32 %1952, 2
  %1973 = add nuw nsw i32 %1972, %1970
  %1974 = add nuw nsw i32 %1973, %1971
  %1975 = lshr i32 %1974, 2
  %1976 = trunc i32 %1975 to i16
  %1977 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 13
  %1978 = load i16, ptr %1977, align 2, !tbaa !70
  %1979 = zext i16 %1978 to i32
  %1980 = shl nuw nsw i32 %1970, 1
  %1981 = add nuw nsw i32 %1961, 2
  %1982 = add nuw nsw i32 %1981, %1979
  %1983 = add nuw nsw i32 %1982, %1980
  %1984 = lshr i32 %1983, 2
  %1985 = trunc i32 %1984 to i16
  %1986 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 14
  %1987 = load i16, ptr %1986, align 4, !tbaa !70
  %1988 = zext i16 %1987 to i32
  %1989 = shl nuw nsw i32 %1979, 1
  %1990 = add nuw nsw i32 %1970, 2
  %1991 = add nuw nsw i32 %1990, %1988
  %1992 = add nuw nsw i32 %1991, %1989
  %1993 = lshr i32 %1992, 2
  %1994 = trunc i32 %1993 to i16
  %1995 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 15
  %1996 = load i16, ptr %1995, align 2, !tbaa !70
  %1997 = zext i16 %1996 to i32
  %1998 = shl nuw nsw i32 %1988, 1
  %1999 = add nuw nsw i32 %1979, 2
  %2000 = add nuw nsw i32 %1999, %1997
  %2001 = add nuw nsw i32 %2000, %1998
  %2002 = lshr i32 %2001, 2
  %2003 = trunc i32 %2002 to i16
  %2004 = getelementptr inbounds [25 x i16], ptr %25, i64 0, i64 16
  %2005 = load i16, ptr %2004, align 16, !tbaa !70
  %2006 = zext i16 %2005 to i32
  %2007 = shl nuw nsw i32 %1997, 1
  %2008 = add nuw nsw i32 %1988, 2
  %2009 = add nuw nsw i32 %2008, %2006
  %2010 = add nuw nsw i32 %2009, %2007
  %2011 = lshr i32 %2010, 2
  %2012 = trunc i32 %2011 to i16
  %2013 = mul nuw nsw i32 %2006, 3
  %2014 = add nuw nsw i32 %1997, 2
  %2015 = add nuw nsw i32 %2014, %2013
  %2016 = lshr i32 %2015, 2
  %2017 = trunc i32 %2016 to i16
  %2018 = sext i32 %3 to i64
  %2019 = getelementptr inbounds ptr, ptr %1633, i64 %2018
  %2020 = load ptr, ptr %2019, align 8, !tbaa !47
  %2021 = sext i32 %2 to i64
  %2022 = getelementptr inbounds i16, ptr %2020, i64 %2021
  store i16 %1895, ptr %2022, align 2
  %2023 = getelementptr inbounds i8, ptr %2022, i64 2
  store i16 %1904, ptr %2023, align 2
  %2024 = getelementptr inbounds i8, ptr %2022, i64 4
  store i16 %1913, ptr %2024, align 2
  %2025 = getelementptr inbounds i8, ptr %2022, i64 6
  store i16 %1922, ptr %2025, align 2
  %2026 = getelementptr inbounds i8, ptr %2022, i64 8
  store i16 %1931, ptr %2026, align 2
  %2027 = getelementptr inbounds i8, ptr %2022, i64 10
  store i16 %1940, ptr %2027, align 2
  %2028 = getelementptr inbounds i8, ptr %2022, i64 12
  store i16 %1949, ptr %2028, align 2
  %2029 = getelementptr inbounds i8, ptr %2022, i64 14
  store i16 %1958, ptr %2029, align 2
  %2030 = getelementptr ptr, ptr %2019, i64 1
  %2031 = load ptr, ptr %2030, align 8, !tbaa !47
  %2032 = getelementptr inbounds i16, ptr %2031, i64 %2021
  store i16 %1904, ptr %2032, align 2
  %2033 = getelementptr inbounds i8, ptr %2032, i64 2
  store i16 %1913, ptr %2033, align 2
  %2034 = getelementptr inbounds i8, ptr %2032, i64 4
  store i16 %1922, ptr %2034, align 2
  %2035 = getelementptr inbounds i8, ptr %2032, i64 6
  store i16 %1931, ptr %2035, align 2
  %2036 = getelementptr inbounds i8, ptr %2032, i64 8
  store i16 %1940, ptr %2036, align 2
  %2037 = getelementptr inbounds i8, ptr %2032, i64 10
  store i16 %1949, ptr %2037, align 2
  %2038 = getelementptr inbounds i8, ptr %2032, i64 12
  store i16 %1958, ptr %2038, align 2
  %2039 = getelementptr inbounds i8, ptr %2032, i64 14
  store i16 %1967, ptr %2039, align 2
  %2040 = getelementptr ptr, ptr %2019, i64 2
  %2041 = load ptr, ptr %2040, align 8, !tbaa !47
  %2042 = getelementptr inbounds i16, ptr %2041, i64 %2021
  store i16 %1913, ptr %2042, align 2
  %2043 = getelementptr inbounds i8, ptr %2042, i64 2
  store i16 %1922, ptr %2043, align 2
  %2044 = getelementptr inbounds i8, ptr %2042, i64 4
  store i16 %1931, ptr %2044, align 2
  %2045 = getelementptr inbounds i8, ptr %2042, i64 6
  store i16 %1940, ptr %2045, align 2
  %2046 = getelementptr inbounds i8, ptr %2042, i64 8
  store i16 %1949, ptr %2046, align 2
  %2047 = getelementptr inbounds i8, ptr %2042, i64 10
  store i16 %1958, ptr %2047, align 2
  %2048 = getelementptr inbounds i8, ptr %2042, i64 12
  store i16 %1967, ptr %2048, align 2
  %2049 = getelementptr inbounds i8, ptr %2042, i64 14
  store i16 %1976, ptr %2049, align 2
  %2050 = getelementptr ptr, ptr %2019, i64 3
  %2051 = load ptr, ptr %2050, align 8, !tbaa !47
  %2052 = getelementptr inbounds i16, ptr %2051, i64 %2021
  store i16 %1922, ptr %2052, align 2
  %2053 = getelementptr inbounds i8, ptr %2052, i64 2
  store i16 %1931, ptr %2053, align 2
  %2054 = getelementptr inbounds i8, ptr %2052, i64 4
  store i16 %1940, ptr %2054, align 2
  %2055 = getelementptr inbounds i8, ptr %2052, i64 6
  store i16 %1949, ptr %2055, align 2
  %2056 = getelementptr inbounds i8, ptr %2052, i64 8
  store i16 %1958, ptr %2056, align 2
  %2057 = getelementptr inbounds i8, ptr %2052, i64 10
  store i16 %1967, ptr %2057, align 2
  %2058 = getelementptr inbounds i8, ptr %2052, i64 12
  store i16 %1976, ptr %2058, align 2
  %2059 = getelementptr inbounds i8, ptr %2052, i64 14
  store i16 %1985, ptr %2059, align 2
  %2060 = getelementptr ptr, ptr %2019, i64 4
  %2061 = load ptr, ptr %2060, align 8, !tbaa !47
  %2062 = getelementptr inbounds i16, ptr %2061, i64 %2021
  store i16 %1931, ptr %2062, align 2
  %2063 = getelementptr inbounds i8, ptr %2062, i64 2
  store i16 %1940, ptr %2063, align 2
  %2064 = getelementptr inbounds i8, ptr %2062, i64 4
  store i16 %1949, ptr %2064, align 2
  %2065 = getelementptr inbounds i8, ptr %2062, i64 6
  store i16 %1958, ptr %2065, align 2
  %2066 = getelementptr inbounds i8, ptr %2062, i64 8
  store i16 %1967, ptr %2066, align 2
  %2067 = getelementptr inbounds i8, ptr %2062, i64 10
  store i16 %1976, ptr %2067, align 2
  %2068 = getelementptr inbounds i8, ptr %2062, i64 12
  store i16 %1985, ptr %2068, align 2
  %2069 = getelementptr inbounds i8, ptr %2062, i64 14
  store i16 %1994, ptr %2069, align 2
  %2070 = getelementptr ptr, ptr %2019, i64 5
  %2071 = load ptr, ptr %2070, align 8, !tbaa !47
  %2072 = getelementptr inbounds i16, ptr %2071, i64 %2021
  store i16 %1940, ptr %2072, align 2
  %2073 = getelementptr inbounds i8, ptr %2072, i64 2
  store i16 %1949, ptr %2073, align 2
  %2074 = getelementptr inbounds i8, ptr %2072, i64 4
  store i16 %1958, ptr %2074, align 2
  %2075 = getelementptr inbounds i8, ptr %2072, i64 6
  store i16 %1967, ptr %2075, align 2
  %2076 = getelementptr inbounds i8, ptr %2072, i64 8
  store i16 %1976, ptr %2076, align 2
  %2077 = getelementptr inbounds i8, ptr %2072, i64 10
  store i16 %1985, ptr %2077, align 2
  %2078 = getelementptr inbounds i8, ptr %2072, i64 12
  store i16 %1994, ptr %2078, align 2
  %2079 = getelementptr inbounds i8, ptr %2072, i64 14
  store i16 %2003, ptr %2079, align 2
  %2080 = getelementptr ptr, ptr %2019, i64 6
  %2081 = load ptr, ptr %2080, align 8, !tbaa !47
  %2082 = getelementptr inbounds i16, ptr %2081, i64 %2021
  store i16 %1949, ptr %2082, align 2
  %2083 = getelementptr inbounds i8, ptr %2082, i64 2
  store i16 %1958, ptr %2083, align 2
  %2084 = getelementptr inbounds i8, ptr %2082, i64 4
  store i16 %1967, ptr %2084, align 2
  %2085 = getelementptr inbounds i8, ptr %2082, i64 6
  store i16 %1976, ptr %2085, align 2
  %2086 = getelementptr inbounds i8, ptr %2082, i64 8
  store i16 %1985, ptr %2086, align 2
  %2087 = getelementptr inbounds i8, ptr %2082, i64 10
  store i16 %1994, ptr %2087, align 2
  %2088 = getelementptr inbounds i8, ptr %2082, i64 12
  store i16 %2003, ptr %2088, align 2
  %2089 = getelementptr inbounds i8, ptr %2082, i64 14
  store i16 %2012, ptr %2089, align 2
  %2090 = getelementptr ptr, ptr %2019, i64 7
  %2091 = load ptr, ptr %2090, align 8, !tbaa !47
  %2092 = getelementptr inbounds i16, ptr %2091, i64 %2021
  store i16 %1958, ptr %2092, align 2
  %2093 = getelementptr inbounds i8, ptr %2092, i64 2
  store i16 %1967, ptr %2093, align 2
  %2094 = getelementptr inbounds i8, ptr %2092, i64 4
  store i16 %1976, ptr %2094, align 2
  %2095 = getelementptr inbounds i8, ptr %2092, i64 6
  store i16 %1985, ptr %2095, align 2
  %2096 = getelementptr inbounds i8, ptr %2092, i64 8
  store i16 %1994, ptr %2096, align 2
  %2097 = getelementptr inbounds i8, ptr %2092, i64 10
  store i16 %2003, ptr %2097, align 2
  %2098 = getelementptr inbounds i8, ptr %2092, i64 12
  store i16 %2012, ptr %2098, align 2
  %2099 = getelementptr inbounds i8, ptr %2092, i64 14
  store i16 %2017, ptr %2099, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %29) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %28) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %27) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %26) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %25) #6
  br label %4098

2100:                                             ; preds = %4
  %2101 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %2102 = load ptr, ptr %2101, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %20) #6
  %2103 = icmp eq i32 %1, 0
  %2104 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 125
  %2105 = load ptr, ptr %2104, align 8, !tbaa !51
  br i1 %2103, label %2112, label %2106

2106:                                             ; preds = %2100
  %2107 = getelementptr inbounds %struct.storable_picture, ptr %2105, i64 0, i32 33
  %2108 = load ptr, ptr %2107, align 8, !tbaa !52
  %2109 = add i32 %1, -1
  %2110 = zext i32 %2109 to i64
  %2111 = getelementptr inbounds ptr, ptr %2108, i64 %2110
  br label %2114

2112:                                             ; preds = %2100
  %2113 = getelementptr inbounds %struct.storable_picture, ptr %2105, i64 0, i32 32
  br label %2114

2114:                                             ; preds = %2112, %2106
  %2115 = phi ptr [ %2111, %2106 ], [ %2113, %2112 ]
  %2116 = load ptr, ptr %2115, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %21) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %23) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %24) #6
  %2117 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 77
  %2118 = load ptr, ptr %2117, align 8, !tbaa !55
  %2119 = zext i32 %1 to i64
  %2120 = getelementptr inbounds ptr, ptr %2118, i64 %2119
  %2121 = load ptr, ptr %2120, align 8, !tbaa !47
  %2122 = getelementptr inbounds %struct.video_par, ptr %2102, i64 0, i32 81
  %2123 = add nsw i32 %2, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2123, i32 noundef %3, ptr noundef nonnull %2122, ptr noundef nonnull %21) #6
  %2124 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %2124, ptr noundef nonnull %2122, ptr noundef nonnull %22) #6
  %2125 = add nsw i32 %2, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2125, i32 noundef %2124, ptr noundef nonnull %2122, ptr noundef nonnull %23) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2123, i32 noundef %2124, ptr noundef nonnull %2122, ptr noundef nonnull %24) #6
  %2126 = load i32, ptr %23, align 4, !tbaa !56
  %2127 = icmp ne i32 %2126, 0
  %2128 = icmp ne i32 %2, 8
  %2129 = icmp ne i32 %3, 8
  %2130 = or i1 %2128, %2129
  %2131 = and i1 %2130, %2127
  %2132 = zext i1 %2131 to i32
  store i32 %2132, ptr %23, align 4, !tbaa !56
  %2133 = getelementptr inbounds %struct.video_par, ptr %2102, i64 0, i32 1
  %2134 = load ptr, ptr %2133, align 8, !tbaa !58
  %2135 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2134, i64 0, i32 30
  %2136 = load i32, ptr %2135, align 4, !tbaa !64
  %2137 = icmp eq i32 %2136, 0
  %2138 = load i32, ptr %21, align 4, !tbaa !56
  br i1 %2137, label %2187, label %2139

2139:                                             ; preds = %2114
  %2140 = icmp eq i32 %2138, 0
  br i1 %2140, label %2150, label %2141

2141:                                             ; preds = %2139
  %2142 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %2143 = load ptr, ptr %2142, align 8, !tbaa !66
  %2144 = getelementptr inbounds %struct.pix_pos, ptr %21, i64 0, i32 1
  %2145 = load i32, ptr %2144, align 4, !tbaa !67
  %2146 = sext i32 %2145 to i64
  %2147 = getelementptr inbounds i8, ptr %2143, i64 %2146
  %2148 = load i8, ptr %2147, align 1, !tbaa !48
  %2149 = sext i8 %2148 to i32
  br label %2150

2150:                                             ; preds = %2141, %2139
  %2151 = phi i32 [ %2149, %2141 ], [ 0, %2139 ]
  %2152 = load i32, ptr %22, align 4, !tbaa !56
  %2153 = icmp eq i32 %2152, 0
  br i1 %2153, label %2163, label %2154

2154:                                             ; preds = %2150
  %2155 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %2156 = load ptr, ptr %2155, align 8, !tbaa !66
  %2157 = getelementptr inbounds %struct.pix_pos, ptr %22, i64 0, i32 1
  %2158 = load i32, ptr %2157, align 4, !tbaa !67
  %2159 = sext i32 %2158 to i64
  %2160 = getelementptr inbounds i8, ptr %2156, i64 %2159
  %2161 = load i8, ptr %2160, align 1, !tbaa !48
  %2162 = sext i8 %2161 to i32
  br label %2163

2163:                                             ; preds = %2154, %2150
  %2164 = phi i32 [ %2162, %2154 ], [ 0, %2150 ]
  br i1 %2131, label %2165, label %2174

2165:                                             ; preds = %2163
  %2166 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %2167 = load ptr, ptr %2166, align 8, !tbaa !66
  %2168 = getelementptr inbounds %struct.pix_pos, ptr %23, i64 0, i32 1
  %2169 = load i32, ptr %2168, align 4, !tbaa !67
  %2170 = sext i32 %2169 to i64
  %2171 = getelementptr inbounds i8, ptr %2167, i64 %2170
  %2172 = load i8, ptr %2171, align 1, !tbaa !48
  %2173 = sext i8 %2172 to i32
  br label %2174

2174:                                             ; preds = %2165, %2163
  %2175 = phi i32 [ %2173, %2165 ], [ 0, %2163 ]
  %2176 = load i32, ptr %24, align 4, !tbaa !56
  %2177 = icmp eq i32 %2176, 0
  br i1 %2177, label %2190, label %2178

2178:                                             ; preds = %2174
  %2179 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %2180 = load ptr, ptr %2179, align 8, !tbaa !66
  %2181 = getelementptr inbounds %struct.pix_pos, ptr %24, i64 0, i32 1
  %2182 = load i32, ptr %2181, align 4, !tbaa !67
  %2183 = sext i32 %2182 to i64
  %2184 = getelementptr inbounds i8, ptr %2180, i64 %2183
  %2185 = load i8, ptr %2184, align 1, !tbaa !48
  %2186 = sext i8 %2185 to i32
  br label %2190

2187:                                             ; preds = %2114
  %2188 = load i32, ptr %22, align 4, !tbaa !56
  %2189 = load i32, ptr %24, align 4, !tbaa !56
  br label %2190

2190:                                             ; preds = %2187, %2178, %2174
  %2191 = phi i32 [ %2132, %2187 ], [ %2175, %2174 ], [ %2175, %2178 ]
  %2192 = phi i32 [ %2189, %2187 ], [ 0, %2174 ], [ %2186, %2178 ]
  %2193 = phi i32 [ %2138, %2187 ], [ %2151, %2174 ], [ %2151, %2178 ]
  %2194 = phi i32 [ %2188, %2187 ], [ %2164, %2174 ], [ %2164, %2178 ]
  %2195 = icmp ne i32 %2194, 0
  %2196 = icmp ne i32 %2193, 0
  %2197 = select i1 %2195, i1 %2196, i1 false
  %2198 = icmp ne i32 %2192, 0
  %2199 = select i1 %2197, i1 %2198, i1 false
  br i1 %2199, label %2204, label %2200

2200:                                             ; preds = %2190
  %2201 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 20
  %2202 = load i32, ptr %2201, align 4, !tbaa !76
  %2203 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %2202)
  br label %2204

2204:                                             ; preds = %2200, %2190
  br i1 %2195, label %2205, label %2238

2205:                                             ; preds = %2204
  %2206 = getelementptr inbounds %struct.pix_pos, ptr %22, i64 0, i32 5
  %2207 = load i16, ptr %2206, align 2, !tbaa !68
  %2208 = sext i16 %2207 to i64
  %2209 = getelementptr inbounds ptr, ptr %2116, i64 %2208
  %2210 = load ptr, ptr %2209, align 8, !tbaa !47
  %2211 = getelementptr inbounds %struct.pix_pos, ptr %22, i64 0, i32 4
  %2212 = load i16, ptr %2211, align 4, !tbaa !69
  %2213 = sext i16 %2212 to i64
  %2214 = getelementptr inbounds i16, ptr %2210, i64 %2213
  %2215 = load i16, ptr %2214, align 2, !tbaa !70
  %2216 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 1
  store i16 %2215, ptr %2216, align 2, !tbaa !70
  %2217 = getelementptr inbounds i16, ptr %2214, i64 1
  %2218 = load i16, ptr %2217, align 2, !tbaa !70
  %2219 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 2
  store i16 %2218, ptr %2219, align 4, !tbaa !70
  %2220 = getelementptr inbounds i16, ptr %2214, i64 2
  %2221 = load i16, ptr %2220, align 2, !tbaa !70
  %2222 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 3
  store i16 %2221, ptr %2222, align 2, !tbaa !70
  %2223 = getelementptr inbounds i16, ptr %2214, i64 3
  %2224 = load i16, ptr %2223, align 2, !tbaa !70
  %2225 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 4
  store i16 %2224, ptr %2225, align 8, !tbaa !70
  %2226 = getelementptr inbounds i16, ptr %2214, i64 4
  %2227 = load i16, ptr %2226, align 2, !tbaa !70
  %2228 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 5
  store i16 %2227, ptr %2228, align 2, !tbaa !70
  %2229 = getelementptr inbounds i16, ptr %2214, i64 5
  %2230 = load i16, ptr %2229, align 2, !tbaa !70
  %2231 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 6
  store i16 %2230, ptr %2231, align 4, !tbaa !70
  %2232 = getelementptr inbounds i16, ptr %2214, i64 6
  %2233 = load i16, ptr %2232, align 2, !tbaa !70
  %2234 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 7
  store i16 %2233, ptr %2234, align 2, !tbaa !70
  %2235 = getelementptr inbounds i16, ptr %2214, i64 7
  %2236 = load i16, ptr %2235, align 2, !tbaa !70
  %2237 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 8
  store i16 %2236, ptr %2237, align 16, !tbaa !70
  br label %2250

2238:                                             ; preds = %2204
  %2239 = getelementptr inbounds %struct.video_par, ptr %2102, i64 0, i32 69, i64 %2119
  %2240 = load i32, ptr %2239, align 4, !tbaa !71
  %2241 = trunc i32 %2240 to i16
  %2242 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 8
  store i16 %2241, ptr %2242, align 16, !tbaa !70
  %2243 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 7
  store i16 %2241, ptr %2243, align 2, !tbaa !70
  %2244 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 6
  store i16 %2241, ptr %2244, align 4, !tbaa !70
  %2245 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 5
  store i16 %2241, ptr %2245, align 2, !tbaa !70
  %2246 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 4
  store i16 %2241, ptr %2246, align 8, !tbaa !70
  %2247 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 3
  store i16 %2241, ptr %2247, align 2, !tbaa !70
  %2248 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 2
  store i16 %2241, ptr %2248, align 4, !tbaa !70
  %2249 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 1
  store i16 %2241, ptr %2249, align 2, !tbaa !70
  br label %2250

2250:                                             ; preds = %2238, %2205
  %2251 = icmp eq i32 %2191, 0
  %2252 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 10
  br i1 %2251, label %2285, label %2253

2253:                                             ; preds = %2250
  %2254 = getelementptr inbounds %struct.pix_pos, ptr %23, i64 0, i32 5
  %2255 = load i16, ptr %2254, align 2, !tbaa !68
  %2256 = sext i16 %2255 to i64
  %2257 = getelementptr inbounds ptr, ptr %2116, i64 %2256
  %2258 = load ptr, ptr %2257, align 8, !tbaa !47
  %2259 = getelementptr inbounds %struct.pix_pos, ptr %23, i64 0, i32 4
  %2260 = load i16, ptr %2259, align 4, !tbaa !69
  %2261 = sext i16 %2260 to i64
  %2262 = getelementptr inbounds i16, ptr %2258, i64 %2261
  %2263 = load i16, ptr %2262, align 2, !tbaa !70
  %2264 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 9
  store i16 %2263, ptr %2264, align 2, !tbaa !70
  %2265 = getelementptr inbounds i16, ptr %2262, i64 1
  %2266 = load i16, ptr %2265, align 2, !tbaa !70
  store i16 %2266, ptr %2252, align 4, !tbaa !70
  %2267 = getelementptr inbounds i16, ptr %2262, i64 2
  %2268 = load i16, ptr %2267, align 2, !tbaa !70
  %2269 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 11
  store i16 %2268, ptr %2269, align 2, !tbaa !70
  %2270 = getelementptr inbounds i16, ptr %2262, i64 3
  %2271 = load i16, ptr %2270, align 2, !tbaa !70
  %2272 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 12
  store i16 %2271, ptr %2272, align 8, !tbaa !70
  %2273 = getelementptr inbounds i16, ptr %2262, i64 4
  %2274 = load i16, ptr %2273, align 2, !tbaa !70
  %2275 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 13
  store i16 %2274, ptr %2275, align 2, !tbaa !70
  %2276 = getelementptr inbounds i16, ptr %2262, i64 5
  %2277 = load i16, ptr %2276, align 2, !tbaa !70
  %2278 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 14
  store i16 %2277, ptr %2278, align 4, !tbaa !70
  %2279 = getelementptr inbounds i16, ptr %2262, i64 6
  %2280 = load i16, ptr %2279, align 2, !tbaa !70
  %2281 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 15
  store i16 %2280, ptr %2281, align 2, !tbaa !70
  %2282 = getelementptr inbounds i16, ptr %2262, i64 7
  %2283 = load i16, ptr %2282, align 2, !tbaa !70
  %2284 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 16
  store i16 %2283, ptr %2284, align 16, !tbaa !70
  br label %2295

2285:                                             ; preds = %2250
  %2286 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 8
  %2287 = load i16, ptr %2286, align 16, !tbaa !70
  %2288 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 16
  store i16 %2287, ptr %2288, align 16, !tbaa !70
  %2289 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 15
  store i16 %2287, ptr %2289, align 2, !tbaa !70
  %2290 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 14
  store i16 %2287, ptr %2290, align 4, !tbaa !70
  %2291 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 13
  store i16 %2287, ptr %2291, align 2, !tbaa !70
  %2292 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 12
  store i16 %2287, ptr %2292, align 8, !tbaa !70
  %2293 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 11
  store i16 %2287, ptr %2293, align 2, !tbaa !70
  store i16 %2287, ptr %2252, align 4, !tbaa !70
  %2294 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 9
  store i16 %2287, ptr %2294, align 2, !tbaa !70
  br label %2295

2295:                                             ; preds = %2285, %2253
  br i1 %2196, label %2296, label %2343

2296:                                             ; preds = %2295
  %2297 = getelementptr inbounds %struct.pix_pos, ptr %21, i64 0, i32 5
  %2298 = load i16, ptr %2297, align 2, !tbaa !68
  %2299 = sext i16 %2298 to i64
  %2300 = getelementptr inbounds ptr, ptr %2116, i64 %2299
  %2301 = getelementptr inbounds %struct.pix_pos, ptr %21, i64 0, i32 4
  %2302 = load i16, ptr %2301, align 4, !tbaa !69
  %2303 = getelementptr inbounds ptr, ptr %2300, i64 1
  %2304 = load ptr, ptr %2300, align 8, !tbaa !47
  %2305 = sext i16 %2302 to i64
  %2306 = getelementptr inbounds i16, ptr %2304, i64 %2305
  %2307 = load i16, ptr %2306, align 2, !tbaa !70
  %2308 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 17
  store i16 %2307, ptr %2308, align 2, !tbaa !70
  %2309 = getelementptr inbounds ptr, ptr %2300, i64 2
  %2310 = load ptr, ptr %2303, align 8, !tbaa !47
  %2311 = getelementptr inbounds i16, ptr %2310, i64 %2305
  %2312 = load i16, ptr %2311, align 2, !tbaa !70
  %2313 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 18
  store i16 %2312, ptr %2313, align 4, !tbaa !70
  %2314 = getelementptr inbounds ptr, ptr %2300, i64 3
  %2315 = load ptr, ptr %2309, align 8, !tbaa !47
  %2316 = getelementptr inbounds i16, ptr %2315, i64 %2305
  %2317 = load i16, ptr %2316, align 2, !tbaa !70
  %2318 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 19
  store i16 %2317, ptr %2318, align 2, !tbaa !70
  %2319 = getelementptr inbounds ptr, ptr %2300, i64 4
  %2320 = load ptr, ptr %2314, align 8, !tbaa !47
  %2321 = getelementptr inbounds i16, ptr %2320, i64 %2305
  %2322 = load i16, ptr %2321, align 2, !tbaa !70
  %2323 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 20
  store i16 %2322, ptr %2323, align 8, !tbaa !70
  %2324 = getelementptr inbounds ptr, ptr %2300, i64 5
  %2325 = load ptr, ptr %2319, align 8, !tbaa !47
  %2326 = getelementptr inbounds i16, ptr %2325, i64 %2305
  %2327 = load i16, ptr %2326, align 2, !tbaa !70
  %2328 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 21
  store i16 %2327, ptr %2328, align 2, !tbaa !70
  %2329 = getelementptr inbounds ptr, ptr %2300, i64 6
  %2330 = load ptr, ptr %2324, align 8, !tbaa !47
  %2331 = getelementptr inbounds i16, ptr %2330, i64 %2305
  %2332 = load i16, ptr %2331, align 2, !tbaa !70
  %2333 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 22
  store i16 %2332, ptr %2333, align 4, !tbaa !70
  %2334 = getelementptr inbounds ptr, ptr %2300, i64 7
  %2335 = load ptr, ptr %2329, align 8, !tbaa !47
  %2336 = getelementptr inbounds i16, ptr %2335, i64 %2305
  %2337 = load i16, ptr %2336, align 2, !tbaa !70
  %2338 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 23
  store i16 %2337, ptr %2338, align 2, !tbaa !70
  %2339 = load ptr, ptr %2334, align 8, !tbaa !47
  %2340 = getelementptr inbounds i16, ptr %2339, i64 %2305
  %2341 = load i16, ptr %2340, align 2, !tbaa !70
  %2342 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 24
  store i16 %2341, ptr %2342, align 16, !tbaa !70
  br label %2355

2343:                                             ; preds = %2295
  %2344 = getelementptr inbounds %struct.video_par, ptr %2102, i64 0, i32 69, i64 %2119
  %2345 = load i32, ptr %2344, align 4, !tbaa !71
  %2346 = trunc i32 %2345 to i16
  %2347 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 24
  store i16 %2346, ptr %2347, align 16, !tbaa !70
  %2348 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 23
  store i16 %2346, ptr %2348, align 2, !tbaa !70
  %2349 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 22
  store i16 %2346, ptr %2349, align 4, !tbaa !70
  %2350 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 21
  store i16 %2346, ptr %2350, align 2, !tbaa !70
  %2351 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 20
  store i16 %2346, ptr %2351, align 8, !tbaa !70
  %2352 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 19
  store i16 %2346, ptr %2352, align 2, !tbaa !70
  %2353 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 18
  store i16 %2346, ptr %2353, align 4, !tbaa !70
  %2354 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 17
  store i16 %2346, ptr %2354, align 2, !tbaa !70
  br label %2355

2355:                                             ; preds = %2343, %2296
  br i1 %2198, label %2356, label %2367

2356:                                             ; preds = %2355
  %2357 = getelementptr inbounds %struct.pix_pos, ptr %24, i64 0, i32 5
  %2358 = load i16, ptr %2357, align 2, !tbaa !68
  %2359 = sext i16 %2358 to i64
  %2360 = getelementptr inbounds ptr, ptr %2116, i64 %2359
  %2361 = load ptr, ptr %2360, align 8, !tbaa !47
  %2362 = getelementptr inbounds %struct.pix_pos, ptr %24, i64 0, i32 4
  %2363 = load i16, ptr %2362, align 4, !tbaa !69
  %2364 = sext i16 %2363 to i64
  %2365 = getelementptr inbounds i16, ptr %2361, i64 %2364
  %2366 = load i16, ptr %2365, align 2, !tbaa !70
  br label %2371

2367:                                             ; preds = %2355
  %2368 = getelementptr inbounds %struct.video_par, ptr %2102, i64 0, i32 69, i64 %2119
  %2369 = load i32, ptr %2368, align 4, !tbaa !71
  %2370 = trunc i32 %2369 to i16
  br label %2371

2371:                                             ; preds = %2356, %2367
  %2372 = phi i16 [ %2370, %2367 ], [ %2366, %2356 ]
  store i16 %2372, ptr %20, align 16, !tbaa !70
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %20, i32 noundef %2192, i32 noundef %2194, i32 noundef %2193)
  %2373 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 22
  %2374 = load i16, ptr %2373, align 4, !tbaa !70
  %2375 = zext i16 %2374 to i32
  %2376 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 20
  %2377 = load i16, ptr %2376, align 8, !tbaa !70
  %2378 = zext i16 %2377 to i32
  %2379 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 21
  %2380 = load i16, ptr %2379, align 2, !tbaa !70
  %2381 = zext i16 %2380 to i32
  %2382 = shl nuw nsw i32 %2381, 1
  %2383 = add nuw nsw i32 %2378, 2
  %2384 = add nuw nsw i32 %2383, %2375
  %2385 = add nuw nsw i32 %2384, %2382
  %2386 = lshr i32 %2385, 2
  %2387 = trunc i32 %2386 to i16
  %2388 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 18
  %2389 = load i16, ptr %2388, align 4, !tbaa !70
  %2390 = zext i16 %2389 to i32
  %2391 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 19
  %2392 = load i16, ptr %2391, align 2, !tbaa !70
  %2393 = zext i16 %2392 to i32
  %2394 = shl nuw nsw i32 %2393, 1
  %2395 = add nuw nsw i32 %2378, 2
  %2396 = add nuw nsw i32 %2395, %2390
  %2397 = add nuw nsw i32 %2396, %2394
  %2398 = lshr i32 %2397, 2
  %2399 = trunc i32 %2398 to i16
  %2400 = load i16, ptr %20, align 16, !tbaa !70
  %2401 = zext i16 %2400 to i32
  %2402 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 17
  %2403 = load i16, ptr %2402, align 2, !tbaa !70
  %2404 = zext i16 %2403 to i32
  %2405 = shl nuw nsw i32 %2404, 1
  %2406 = add nuw nsw i32 %2390, 2
  %2407 = add nuw nsw i32 %2406, %2401
  %2408 = add nuw nsw i32 %2407, %2405
  %2409 = lshr i32 %2408, 2
  %2410 = trunc i32 %2409 to i16
  %2411 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 1
  %2412 = load i16, ptr %2411, align 2, !tbaa !70
  %2413 = zext i16 %2412 to i32
  %2414 = add nuw nsw i32 %2413, 1
  %2415 = add nuw nsw i32 %2414, %2401
  %2416 = lshr i32 %2415, 1
  %2417 = trunc i32 %2416 to i16
  %2418 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 2
  %2419 = load i16, ptr %2418, align 4, !tbaa !70
  %2420 = zext i16 %2419 to i32
  %2421 = add nuw nsw i32 %2413, 1
  %2422 = add nuw nsw i32 %2421, %2420
  %2423 = lshr i32 %2422, 1
  %2424 = trunc i32 %2423 to i16
  %2425 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 3
  %2426 = load i16, ptr %2425, align 2, !tbaa !70
  %2427 = zext i16 %2426 to i32
  %2428 = add nuw nsw i32 %2420, 1
  %2429 = add nuw nsw i32 %2428, %2427
  %2430 = lshr i32 %2429, 1
  %2431 = trunc i32 %2430 to i16
  %2432 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 4
  %2433 = load i16, ptr %2432, align 8, !tbaa !70
  %2434 = zext i16 %2433 to i32
  %2435 = add nuw nsw i32 %2427, 1
  %2436 = add nuw nsw i32 %2435, %2434
  %2437 = lshr i32 %2436, 1
  %2438 = trunc i32 %2437 to i16
  %2439 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 5
  %2440 = load i16, ptr %2439, align 2, !tbaa !70
  %2441 = zext i16 %2440 to i32
  %2442 = add nuw nsw i32 %2434, 1
  %2443 = add nuw nsw i32 %2442, %2441
  %2444 = lshr i32 %2443, 1
  %2445 = trunc i32 %2444 to i16
  %2446 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 6
  %2447 = load i16, ptr %2446, align 4, !tbaa !70
  %2448 = zext i16 %2447 to i32
  %2449 = add nuw nsw i32 %2441, 1
  %2450 = add nuw nsw i32 %2449, %2448
  %2451 = lshr i32 %2450, 1
  %2452 = trunc i32 %2451 to i16
  %2453 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 7
  %2454 = load i16, ptr %2453, align 2, !tbaa !70
  %2455 = zext i16 %2454 to i32
  %2456 = add nuw nsw i32 %2448, 1
  %2457 = add nuw nsw i32 %2456, %2455
  %2458 = lshr i32 %2457, 1
  %2459 = trunc i32 %2458 to i16
  %2460 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 8
  %2461 = load i16, ptr %2460, align 16, !tbaa !70
  %2462 = zext i16 %2461 to i32
  %2463 = add nuw nsw i32 %2455, 1
  %2464 = add nuw nsw i32 %2463, %2462
  %2465 = lshr i32 %2464, 1
  %2466 = trunc i32 %2465 to i16
  %2467 = getelementptr inbounds [25 x i16], ptr %20, i64 0, i64 23
  %2468 = load i16, ptr %2467, align 2, !tbaa !70
  %2469 = zext i16 %2468 to i32
  %2470 = shl nuw nsw i32 %2375, 1
  %2471 = add nuw nsw i32 %2381, 2
  %2472 = add nuw nsw i32 %2471, %2470
  %2473 = add nuw nsw i32 %2472, %2469
  %2474 = lshr i32 %2473, 2
  %2475 = trunc i32 %2474 to i16
  %2476 = shl nuw nsw i32 %2378, 1
  %2477 = add nuw nsw i32 %2381, 2
  %2478 = add nuw nsw i32 %2477, %2476
  %2479 = add nuw nsw i32 %2478, %2393
  %2480 = lshr i32 %2479, 2
  %2481 = trunc i32 %2480 to i16
  %2482 = shl nuw nsw i32 %2390, 1
  %2483 = add nuw nsw i32 %2393, 2
  %2484 = add nuw nsw i32 %2483, %2482
  %2485 = add nuw nsw i32 %2484, %2404
  %2486 = lshr i32 %2485, 2
  %2487 = trunc i32 %2486 to i16
  %2488 = shl nuw nsw i32 %2401, 1
  %2489 = add nuw nsw i32 %2404, 2
  %2490 = add nuw nsw i32 %2489, %2488
  %2491 = add nuw nsw i32 %2490, %2413
  %2492 = lshr i32 %2491, 2
  %2493 = trunc i32 %2492 to i16
  %2494 = shl nuw nsw i32 %2413, 1
  %2495 = add nuw nsw i32 %2401, 2
  %2496 = add nuw nsw i32 %2495, %2420
  %2497 = add nuw nsw i32 %2496, %2494
  %2498 = lshr i32 %2497, 2
  %2499 = trunc i32 %2498 to i16
  %2500 = shl nuw nsw i32 %2420, 1
  %2501 = add nuw nsw i32 %2413, 2
  %2502 = add nuw nsw i32 %2501, %2427
  %2503 = add nuw nsw i32 %2502, %2500
  %2504 = lshr i32 %2503, 2
  %2505 = trunc i32 %2504 to i16
  %2506 = shl nuw nsw i32 %2427, 1
  %2507 = add nuw nsw i32 %2420, 2
  %2508 = add nuw nsw i32 %2507, %2434
  %2509 = add nuw nsw i32 %2508, %2506
  %2510 = lshr i32 %2509, 2
  %2511 = trunc i32 %2510 to i16
  %2512 = shl nuw nsw i32 %2434, 1
  %2513 = add nuw nsw i32 %2427, 2
  %2514 = add nuw nsw i32 %2513, %2441
  %2515 = add nuw nsw i32 %2514, %2512
  %2516 = lshr i32 %2515, 2
  %2517 = trunc i32 %2516 to i16
  %2518 = shl nuw nsw i32 %2441, 1
  %2519 = add nuw nsw i32 %2434, 2
  %2520 = add nuw nsw i32 %2519, %2448
  %2521 = add nuw nsw i32 %2520, %2518
  %2522 = lshr i32 %2521, 2
  %2523 = trunc i32 %2522 to i16
  %2524 = shl nuw nsw i32 %2448, 1
  %2525 = add nuw nsw i32 %2441, 2
  %2526 = add nuw nsw i32 %2525, %2455
  %2527 = add nuw nsw i32 %2526, %2524
  %2528 = lshr i32 %2527, 2
  %2529 = trunc i32 %2528 to i16
  %2530 = shl nuw nsw i32 %2455, 1
  %2531 = add nuw nsw i32 %2448, 2
  %2532 = add nuw nsw i32 %2531, %2462
  %2533 = add nuw nsw i32 %2532, %2530
  %2534 = lshr i32 %2533, 2
  %2535 = trunc i32 %2534 to i16
  %2536 = sext i32 %3 to i64
  %2537 = getelementptr inbounds ptr, ptr %2121, i64 %2536
  %2538 = load ptr, ptr %2537, align 8, !tbaa !47
  %2539 = sext i32 %2 to i64
  %2540 = getelementptr inbounds i16, ptr %2538, i64 %2539
  store i16 %2417, ptr %2540, align 2
  %2541 = getelementptr inbounds i8, ptr %2540, i64 2
  store i16 %2424, ptr %2541, align 2
  %2542 = getelementptr inbounds i8, ptr %2540, i64 4
  store i16 %2431, ptr %2542, align 2
  %2543 = getelementptr inbounds i8, ptr %2540, i64 6
  store i16 %2438, ptr %2543, align 2
  %2544 = getelementptr inbounds i8, ptr %2540, i64 8
  store i16 %2445, ptr %2544, align 2
  %2545 = getelementptr inbounds i8, ptr %2540, i64 10
  store i16 %2452, ptr %2545, align 2
  %2546 = getelementptr inbounds i8, ptr %2540, i64 12
  store i16 %2459, ptr %2546, align 2
  %2547 = getelementptr inbounds i8, ptr %2540, i64 14
  store i16 %2466, ptr %2547, align 2
  %2548 = getelementptr ptr, ptr %2537, i64 1
  %2549 = load ptr, ptr %2548, align 8, !tbaa !47
  %2550 = getelementptr inbounds i16, ptr %2549, i64 %2539
  store i16 %2493, ptr %2550, align 2
  %2551 = getelementptr inbounds i8, ptr %2550, i64 2
  store i16 %2499, ptr %2551, align 2
  %2552 = getelementptr inbounds i8, ptr %2550, i64 4
  store i16 %2505, ptr %2552, align 2
  %2553 = getelementptr inbounds i8, ptr %2550, i64 6
  store i16 %2511, ptr %2553, align 2
  %2554 = getelementptr inbounds i8, ptr %2550, i64 8
  store i16 %2517, ptr %2554, align 2
  %2555 = getelementptr inbounds i8, ptr %2550, i64 10
  store i16 %2523, ptr %2555, align 2
  %2556 = getelementptr inbounds i8, ptr %2550, i64 12
  store i16 %2529, ptr %2556, align 2
  %2557 = getelementptr inbounds i8, ptr %2550, i64 14
  store i16 %2535, ptr %2557, align 2
  %2558 = getelementptr ptr, ptr %2537, i64 2
  %2559 = load ptr, ptr %2558, align 8, !tbaa !47
  %2560 = getelementptr inbounds i16, ptr %2559, i64 %2539
  store i16 %2410, ptr %2560, align 2
  %2561 = getelementptr inbounds i8, ptr %2560, i64 2
  store i16 %2417, ptr %2561, align 2
  %2562 = getelementptr inbounds i8, ptr %2560, i64 4
  store i16 %2424, ptr %2562, align 2
  %2563 = getelementptr inbounds i8, ptr %2560, i64 6
  store i16 %2431, ptr %2563, align 2
  %2564 = getelementptr inbounds i8, ptr %2560, i64 8
  store i16 %2438, ptr %2564, align 2
  %2565 = getelementptr inbounds i8, ptr %2560, i64 10
  store i16 %2445, ptr %2565, align 2
  %2566 = getelementptr inbounds i8, ptr %2560, i64 12
  store i16 %2452, ptr %2566, align 2
  %2567 = getelementptr inbounds i8, ptr %2560, i64 14
  store i16 %2459, ptr %2567, align 2
  %2568 = getelementptr ptr, ptr %2537, i64 3
  %2569 = load ptr, ptr %2568, align 8, !tbaa !47
  %2570 = getelementptr inbounds i16, ptr %2569, i64 %2539
  store i16 %2487, ptr %2570, align 2
  %2571 = getelementptr inbounds i8, ptr %2570, i64 2
  store i16 %2493, ptr %2571, align 2
  %2572 = getelementptr inbounds i8, ptr %2570, i64 4
  store i16 %2499, ptr %2572, align 2
  %2573 = getelementptr inbounds i8, ptr %2570, i64 6
  store i16 %2505, ptr %2573, align 2
  %2574 = getelementptr inbounds i8, ptr %2570, i64 8
  store i16 %2511, ptr %2574, align 2
  %2575 = getelementptr inbounds i8, ptr %2570, i64 10
  store i16 %2517, ptr %2575, align 2
  %2576 = getelementptr inbounds i8, ptr %2570, i64 12
  store i16 %2523, ptr %2576, align 2
  %2577 = getelementptr inbounds i8, ptr %2570, i64 14
  store i16 %2529, ptr %2577, align 2
  %2578 = getelementptr ptr, ptr %2537, i64 4
  %2579 = load ptr, ptr %2578, align 8, !tbaa !47
  %2580 = getelementptr inbounds i16, ptr %2579, i64 %2539
  store i16 %2399, ptr %2580, align 2
  %2581 = getelementptr inbounds i8, ptr %2580, i64 2
  store i16 %2410, ptr %2581, align 2
  %2582 = getelementptr inbounds i8, ptr %2580, i64 4
  store i16 %2417, ptr %2582, align 2
  %2583 = getelementptr inbounds i8, ptr %2580, i64 6
  store i16 %2424, ptr %2583, align 2
  %2584 = getelementptr inbounds i8, ptr %2580, i64 8
  store i16 %2431, ptr %2584, align 2
  %2585 = getelementptr inbounds i8, ptr %2580, i64 10
  store i16 %2438, ptr %2585, align 2
  %2586 = getelementptr inbounds i8, ptr %2580, i64 12
  store i16 %2445, ptr %2586, align 2
  %2587 = getelementptr inbounds i8, ptr %2580, i64 14
  store i16 %2452, ptr %2587, align 2
  %2588 = getelementptr ptr, ptr %2537, i64 5
  %2589 = load ptr, ptr %2588, align 8, !tbaa !47
  %2590 = getelementptr inbounds i16, ptr %2589, i64 %2539
  store i16 %2481, ptr %2590, align 2
  %2591 = getelementptr inbounds i8, ptr %2590, i64 2
  store i16 %2487, ptr %2591, align 2
  %2592 = getelementptr inbounds i8, ptr %2590, i64 4
  store i16 %2493, ptr %2592, align 2
  %2593 = getelementptr inbounds i8, ptr %2590, i64 6
  store i16 %2499, ptr %2593, align 2
  %2594 = getelementptr inbounds i8, ptr %2590, i64 8
  store i16 %2505, ptr %2594, align 2
  %2595 = getelementptr inbounds i8, ptr %2590, i64 10
  store i16 %2511, ptr %2595, align 2
  %2596 = getelementptr inbounds i8, ptr %2590, i64 12
  store i16 %2517, ptr %2596, align 2
  %2597 = getelementptr inbounds i8, ptr %2590, i64 14
  store i16 %2523, ptr %2597, align 2
  %2598 = getelementptr ptr, ptr %2537, i64 6
  %2599 = load ptr, ptr %2598, align 8, !tbaa !47
  %2600 = getelementptr inbounds i16, ptr %2599, i64 %2539
  store i16 %2387, ptr %2600, align 2
  %2601 = getelementptr inbounds i8, ptr %2600, i64 2
  store i16 %2399, ptr %2601, align 2
  %2602 = getelementptr inbounds i8, ptr %2600, i64 4
  store i16 %2410, ptr %2602, align 2
  %2603 = getelementptr inbounds i8, ptr %2600, i64 6
  store i16 %2417, ptr %2603, align 2
  %2604 = getelementptr inbounds i8, ptr %2600, i64 8
  store i16 %2424, ptr %2604, align 2
  %2605 = getelementptr inbounds i8, ptr %2600, i64 10
  store i16 %2431, ptr %2605, align 2
  %2606 = getelementptr inbounds i8, ptr %2600, i64 12
  store i16 %2438, ptr %2606, align 2
  %2607 = getelementptr inbounds i8, ptr %2600, i64 14
  store i16 %2445, ptr %2607, align 2
  %2608 = getelementptr ptr, ptr %2537, i64 7
  %2609 = load ptr, ptr %2608, align 8, !tbaa !47
  %2610 = getelementptr inbounds i16, ptr %2609, i64 %2539
  store i16 %2475, ptr %2610, align 2
  %2611 = getelementptr inbounds i8, ptr %2610, i64 2
  store i16 %2481, ptr %2611, align 2
  %2612 = getelementptr inbounds i8, ptr %2610, i64 4
  store i16 %2487, ptr %2612, align 2
  %2613 = getelementptr inbounds i8, ptr %2610, i64 6
  store i16 %2493, ptr %2613, align 2
  %2614 = getelementptr inbounds i8, ptr %2610, i64 8
  store i16 %2499, ptr %2614, align 2
  %2615 = getelementptr inbounds i8, ptr %2610, i64 10
  store i16 %2505, ptr %2615, align 2
  %2616 = getelementptr inbounds i8, ptr %2610, i64 12
  store i16 %2511, ptr %2616, align 2
  %2617 = getelementptr inbounds i8, ptr %2610, i64 14
  store i16 %2517, ptr %2617, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %23) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %21) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %20) #6
  br label %4098

2618:                                             ; preds = %4
  %2619 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %2620 = load ptr, ptr %2619, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %15) #6
  %2621 = icmp eq i32 %1, 0
  %2622 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 125
  %2623 = load ptr, ptr %2622, align 8, !tbaa !51
  br i1 %2621, label %2630, label %2624

2624:                                             ; preds = %2618
  %2625 = getelementptr inbounds %struct.storable_picture, ptr %2623, i64 0, i32 33
  %2626 = load ptr, ptr %2625, align 8, !tbaa !52
  %2627 = add i32 %1, -1
  %2628 = zext i32 %2627 to i64
  %2629 = getelementptr inbounds ptr, ptr %2626, i64 %2628
  br label %2632

2630:                                             ; preds = %2618
  %2631 = getelementptr inbounds %struct.storable_picture, ptr %2623, i64 0, i32 32
  br label %2632

2632:                                             ; preds = %2630, %2624
  %2633 = phi ptr [ %2629, %2624 ], [ %2631, %2630 ]
  %2634 = load ptr, ptr %2633, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #6
  %2635 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 77
  %2636 = load ptr, ptr %2635, align 8, !tbaa !55
  %2637 = zext i32 %1 to i64
  %2638 = getelementptr inbounds ptr, ptr %2636, i64 %2637
  %2639 = load ptr, ptr %2638, align 8, !tbaa !47
  %2640 = getelementptr inbounds %struct.video_par, ptr %2620, i64 0, i32 81
  %2641 = add nsw i32 %2, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2641, i32 noundef %3, ptr noundef nonnull %2640, ptr noundef nonnull %16) #6
  %2642 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %2642, ptr noundef nonnull %2640, ptr noundef nonnull %17) #6
  %2643 = add nsw i32 %2, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2643, i32 noundef %2642, ptr noundef nonnull %2640, ptr noundef nonnull %18) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2641, i32 noundef %2642, ptr noundef nonnull %2640, ptr noundef nonnull %19) #6
  %2644 = load i32, ptr %18, align 4, !tbaa !56
  %2645 = icmp ne i32 %2644, 0
  %2646 = icmp ne i32 %2, 8
  %2647 = icmp ne i32 %3, 8
  %2648 = or i1 %2646, %2647
  %2649 = and i1 %2648, %2645
  %2650 = zext i1 %2649 to i32
  store i32 %2650, ptr %18, align 4, !tbaa !56
  %2651 = getelementptr inbounds %struct.video_par, ptr %2620, i64 0, i32 1
  %2652 = load ptr, ptr %2651, align 8, !tbaa !58
  %2653 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %2652, i64 0, i32 30
  %2654 = load i32, ptr %2653, align 4, !tbaa !64
  %2655 = icmp eq i32 %2654, 0
  %2656 = load i32, ptr %16, align 4, !tbaa !56
  br i1 %2655, label %2705, label %2657

2657:                                             ; preds = %2632
  %2658 = icmp eq i32 %2656, 0
  br i1 %2658, label %2668, label %2659

2659:                                             ; preds = %2657
  %2660 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %2661 = load ptr, ptr %2660, align 8, !tbaa !66
  %2662 = getelementptr inbounds %struct.pix_pos, ptr %16, i64 0, i32 1
  %2663 = load i32, ptr %2662, align 4, !tbaa !67
  %2664 = sext i32 %2663 to i64
  %2665 = getelementptr inbounds i8, ptr %2661, i64 %2664
  %2666 = load i8, ptr %2665, align 1, !tbaa !48
  %2667 = sext i8 %2666 to i32
  br label %2668

2668:                                             ; preds = %2659, %2657
  %2669 = phi i32 [ %2667, %2659 ], [ 0, %2657 ]
  %2670 = load i32, ptr %17, align 4, !tbaa !56
  %2671 = icmp eq i32 %2670, 0
  br i1 %2671, label %2681, label %2672

2672:                                             ; preds = %2668
  %2673 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %2674 = load ptr, ptr %2673, align 8, !tbaa !66
  %2675 = getelementptr inbounds %struct.pix_pos, ptr %17, i64 0, i32 1
  %2676 = load i32, ptr %2675, align 4, !tbaa !67
  %2677 = sext i32 %2676 to i64
  %2678 = getelementptr inbounds i8, ptr %2674, i64 %2677
  %2679 = load i8, ptr %2678, align 1, !tbaa !48
  %2680 = sext i8 %2679 to i32
  br label %2681

2681:                                             ; preds = %2672, %2668
  %2682 = phi i32 [ %2680, %2672 ], [ 0, %2668 ]
  br i1 %2649, label %2683, label %2692

2683:                                             ; preds = %2681
  %2684 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %2685 = load ptr, ptr %2684, align 8, !tbaa !66
  %2686 = getelementptr inbounds %struct.pix_pos, ptr %18, i64 0, i32 1
  %2687 = load i32, ptr %2686, align 4, !tbaa !67
  %2688 = sext i32 %2687 to i64
  %2689 = getelementptr inbounds i8, ptr %2685, i64 %2688
  %2690 = load i8, ptr %2689, align 1, !tbaa !48
  %2691 = sext i8 %2690 to i32
  br label %2692

2692:                                             ; preds = %2683, %2681
  %2693 = phi i32 [ %2691, %2683 ], [ 0, %2681 ]
  %2694 = load i32, ptr %19, align 4, !tbaa !56
  %2695 = icmp eq i32 %2694, 0
  br i1 %2695, label %2708, label %2696

2696:                                             ; preds = %2692
  %2697 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %2698 = load ptr, ptr %2697, align 8, !tbaa !66
  %2699 = getelementptr inbounds %struct.pix_pos, ptr %19, i64 0, i32 1
  %2700 = load i32, ptr %2699, align 4, !tbaa !67
  %2701 = sext i32 %2700 to i64
  %2702 = getelementptr inbounds i8, ptr %2698, i64 %2701
  %2703 = load i8, ptr %2702, align 1, !tbaa !48
  %2704 = sext i8 %2703 to i32
  br label %2708

2705:                                             ; preds = %2632
  %2706 = load i32, ptr %17, align 4, !tbaa !56
  %2707 = load i32, ptr %19, align 4, !tbaa !56
  br label %2708

2708:                                             ; preds = %2705, %2696, %2692
  %2709 = phi i32 [ %2707, %2705 ], [ %2704, %2696 ], [ 0, %2692 ]
  %2710 = phi i32 [ %2650, %2705 ], [ %2693, %2696 ], [ %2693, %2692 ]
  %2711 = phi i32 [ %2656, %2705 ], [ %2669, %2696 ], [ %2669, %2692 ]
  %2712 = phi i32 [ %2706, %2705 ], [ %2682, %2696 ], [ %2682, %2692 ]
  %2713 = icmp eq i32 %2712, 0
  br i1 %2713, label %2714, label %2729

2714:                                             ; preds = %2708
  %2715 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 20
  %2716 = load i32, ptr %2715, align 4, !tbaa !76
  %2717 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %2716)
  %2718 = getelementptr inbounds %struct.video_par, ptr %2620, i64 0, i32 69, i64 %2637
  %2719 = load i32, ptr %2718, align 4, !tbaa !71
  %2720 = trunc i32 %2719 to i16
  %2721 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 8
  store i16 %2720, ptr %2721, align 16, !tbaa !70
  %2722 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 7
  store i16 %2720, ptr %2722, align 2, !tbaa !70
  %2723 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 6
  store i16 %2720, ptr %2723, align 4, !tbaa !70
  %2724 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 5
  store i16 %2720, ptr %2724, align 2, !tbaa !70
  %2725 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 4
  store i16 %2720, ptr %2725, align 8, !tbaa !70
  %2726 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 3
  store i16 %2720, ptr %2726, align 2, !tbaa !70
  %2727 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 2
  store i16 %2720, ptr %2727, align 4, !tbaa !70
  %2728 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 1
  store i16 %2720, ptr %2728, align 2, !tbaa !70
  br label %2762

2729:                                             ; preds = %2708
  %2730 = getelementptr inbounds %struct.pix_pos, ptr %17, i64 0, i32 5
  %2731 = load i16, ptr %2730, align 2, !tbaa !68
  %2732 = sext i16 %2731 to i64
  %2733 = getelementptr inbounds ptr, ptr %2634, i64 %2732
  %2734 = load ptr, ptr %2733, align 8, !tbaa !47
  %2735 = getelementptr inbounds %struct.pix_pos, ptr %17, i64 0, i32 4
  %2736 = load i16, ptr %2735, align 4, !tbaa !69
  %2737 = sext i16 %2736 to i64
  %2738 = getelementptr inbounds i16, ptr %2734, i64 %2737
  %2739 = load i16, ptr %2738, align 2, !tbaa !70
  %2740 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 1
  store i16 %2739, ptr %2740, align 2, !tbaa !70
  %2741 = getelementptr inbounds i16, ptr %2738, i64 1
  %2742 = load i16, ptr %2741, align 2, !tbaa !70
  %2743 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 2
  store i16 %2742, ptr %2743, align 4, !tbaa !70
  %2744 = getelementptr inbounds i16, ptr %2738, i64 2
  %2745 = load i16, ptr %2744, align 2, !tbaa !70
  %2746 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 3
  store i16 %2745, ptr %2746, align 2, !tbaa !70
  %2747 = getelementptr inbounds i16, ptr %2738, i64 3
  %2748 = load i16, ptr %2747, align 2, !tbaa !70
  %2749 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 4
  store i16 %2748, ptr %2749, align 8, !tbaa !70
  %2750 = getelementptr inbounds i16, ptr %2738, i64 4
  %2751 = load i16, ptr %2750, align 2, !tbaa !70
  %2752 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 5
  store i16 %2751, ptr %2752, align 2, !tbaa !70
  %2753 = getelementptr inbounds i16, ptr %2738, i64 5
  %2754 = load i16, ptr %2753, align 2, !tbaa !70
  %2755 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 6
  store i16 %2754, ptr %2755, align 4, !tbaa !70
  %2756 = getelementptr inbounds i16, ptr %2738, i64 6
  %2757 = load i16, ptr %2756, align 2, !tbaa !70
  %2758 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 7
  store i16 %2757, ptr %2758, align 2, !tbaa !70
  %2759 = getelementptr inbounds i16, ptr %2738, i64 7
  %2760 = load i16, ptr %2759, align 2, !tbaa !70
  %2761 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 8
  store i16 %2760, ptr %2761, align 16, !tbaa !70
  br label %2762

2762:                                             ; preds = %2729, %2714
  %2763 = icmp eq i32 %2710, 0
  %2764 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 10
  br i1 %2763, label %2797, label %2765

2765:                                             ; preds = %2762
  %2766 = getelementptr inbounds %struct.pix_pos, ptr %18, i64 0, i32 5
  %2767 = load i16, ptr %2766, align 2, !tbaa !68
  %2768 = sext i16 %2767 to i64
  %2769 = getelementptr inbounds ptr, ptr %2634, i64 %2768
  %2770 = load ptr, ptr %2769, align 8, !tbaa !47
  %2771 = getelementptr inbounds %struct.pix_pos, ptr %18, i64 0, i32 4
  %2772 = load i16, ptr %2771, align 4, !tbaa !69
  %2773 = sext i16 %2772 to i64
  %2774 = getelementptr inbounds i16, ptr %2770, i64 %2773
  %2775 = load i16, ptr %2774, align 2, !tbaa !70
  %2776 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 9
  store i16 %2775, ptr %2776, align 2, !tbaa !70
  %2777 = getelementptr inbounds i16, ptr %2774, i64 1
  %2778 = load i16, ptr %2777, align 2, !tbaa !70
  store i16 %2778, ptr %2764, align 4, !tbaa !70
  %2779 = getelementptr inbounds i16, ptr %2774, i64 2
  %2780 = load i16, ptr %2779, align 2, !tbaa !70
  %2781 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 11
  store i16 %2780, ptr %2781, align 2, !tbaa !70
  %2782 = getelementptr inbounds i16, ptr %2774, i64 3
  %2783 = load i16, ptr %2782, align 2, !tbaa !70
  %2784 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 12
  store i16 %2783, ptr %2784, align 8, !tbaa !70
  %2785 = getelementptr inbounds i16, ptr %2774, i64 4
  %2786 = load i16, ptr %2785, align 2, !tbaa !70
  %2787 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 13
  store i16 %2786, ptr %2787, align 2, !tbaa !70
  %2788 = getelementptr inbounds i16, ptr %2774, i64 5
  %2789 = load i16, ptr %2788, align 2, !tbaa !70
  %2790 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 14
  store i16 %2789, ptr %2790, align 4, !tbaa !70
  %2791 = getelementptr inbounds i16, ptr %2774, i64 6
  %2792 = load i16, ptr %2791, align 2, !tbaa !70
  %2793 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 15
  store i16 %2792, ptr %2793, align 2, !tbaa !70
  %2794 = getelementptr inbounds i16, ptr %2774, i64 7
  %2795 = load i16, ptr %2794, align 2, !tbaa !70
  %2796 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 16
  store i16 %2795, ptr %2796, align 16, !tbaa !70
  br label %2807

2797:                                             ; preds = %2762
  %2798 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 8
  %2799 = load i16, ptr %2798, align 16, !tbaa !70
  %2800 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 16
  store i16 %2799, ptr %2800, align 16, !tbaa !70
  %2801 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 15
  store i16 %2799, ptr %2801, align 2, !tbaa !70
  %2802 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 14
  store i16 %2799, ptr %2802, align 4, !tbaa !70
  %2803 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 13
  store i16 %2799, ptr %2803, align 2, !tbaa !70
  %2804 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 12
  store i16 %2799, ptr %2804, align 8, !tbaa !70
  %2805 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 11
  store i16 %2799, ptr %2805, align 2, !tbaa !70
  store i16 %2799, ptr %2764, align 4, !tbaa !70
  %2806 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 9
  store i16 %2799, ptr %2806, align 2, !tbaa !70
  br label %2807

2807:                                             ; preds = %2797, %2765
  %2808 = icmp eq i32 %2711, 0
  br i1 %2808, label %2856, label %2809

2809:                                             ; preds = %2807
  %2810 = getelementptr inbounds %struct.pix_pos, ptr %16, i64 0, i32 5
  %2811 = load i16, ptr %2810, align 2, !tbaa !68
  %2812 = sext i16 %2811 to i64
  %2813 = getelementptr inbounds ptr, ptr %2634, i64 %2812
  %2814 = getelementptr inbounds %struct.pix_pos, ptr %16, i64 0, i32 4
  %2815 = load i16, ptr %2814, align 4, !tbaa !69
  %2816 = getelementptr inbounds ptr, ptr %2813, i64 1
  %2817 = load ptr, ptr %2813, align 8, !tbaa !47
  %2818 = sext i16 %2815 to i64
  %2819 = getelementptr inbounds i16, ptr %2817, i64 %2818
  %2820 = load i16, ptr %2819, align 2, !tbaa !70
  %2821 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 17
  store i16 %2820, ptr %2821, align 2, !tbaa !70
  %2822 = getelementptr inbounds ptr, ptr %2813, i64 2
  %2823 = load ptr, ptr %2816, align 8, !tbaa !47
  %2824 = getelementptr inbounds i16, ptr %2823, i64 %2818
  %2825 = load i16, ptr %2824, align 2, !tbaa !70
  %2826 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 18
  store i16 %2825, ptr %2826, align 4, !tbaa !70
  %2827 = getelementptr inbounds ptr, ptr %2813, i64 3
  %2828 = load ptr, ptr %2822, align 8, !tbaa !47
  %2829 = getelementptr inbounds i16, ptr %2828, i64 %2818
  %2830 = load i16, ptr %2829, align 2, !tbaa !70
  %2831 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 19
  store i16 %2830, ptr %2831, align 2, !tbaa !70
  %2832 = getelementptr inbounds ptr, ptr %2813, i64 4
  %2833 = load ptr, ptr %2827, align 8, !tbaa !47
  %2834 = getelementptr inbounds i16, ptr %2833, i64 %2818
  %2835 = load i16, ptr %2834, align 2, !tbaa !70
  %2836 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 20
  store i16 %2835, ptr %2836, align 8, !tbaa !70
  %2837 = getelementptr inbounds ptr, ptr %2813, i64 5
  %2838 = load ptr, ptr %2832, align 8, !tbaa !47
  %2839 = getelementptr inbounds i16, ptr %2838, i64 %2818
  %2840 = load i16, ptr %2839, align 2, !tbaa !70
  %2841 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 21
  store i16 %2840, ptr %2841, align 2, !tbaa !70
  %2842 = getelementptr inbounds ptr, ptr %2813, i64 6
  %2843 = load ptr, ptr %2837, align 8, !tbaa !47
  %2844 = getelementptr inbounds i16, ptr %2843, i64 %2818
  %2845 = load i16, ptr %2844, align 2, !tbaa !70
  %2846 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 22
  store i16 %2845, ptr %2846, align 4, !tbaa !70
  %2847 = getelementptr inbounds ptr, ptr %2813, i64 7
  %2848 = load ptr, ptr %2842, align 8, !tbaa !47
  %2849 = getelementptr inbounds i16, ptr %2848, i64 %2818
  %2850 = load i16, ptr %2849, align 2, !tbaa !70
  %2851 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 23
  store i16 %2850, ptr %2851, align 2, !tbaa !70
  %2852 = load ptr, ptr %2847, align 8, !tbaa !47
  %2853 = getelementptr inbounds i16, ptr %2852, i64 %2818
  %2854 = load i16, ptr %2853, align 2, !tbaa !70
  %2855 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 24
  store i16 %2854, ptr %2855, align 16, !tbaa !70
  br label %2868

2856:                                             ; preds = %2807
  %2857 = getelementptr inbounds %struct.video_par, ptr %2620, i64 0, i32 69, i64 %2637
  %2858 = load i32, ptr %2857, align 4, !tbaa !71
  %2859 = trunc i32 %2858 to i16
  %2860 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 24
  store i16 %2859, ptr %2860, align 16, !tbaa !70
  %2861 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 23
  store i16 %2859, ptr %2861, align 2, !tbaa !70
  %2862 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 22
  store i16 %2859, ptr %2862, align 4, !tbaa !70
  %2863 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 21
  store i16 %2859, ptr %2863, align 2, !tbaa !70
  %2864 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 20
  store i16 %2859, ptr %2864, align 8, !tbaa !70
  %2865 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 19
  store i16 %2859, ptr %2865, align 2, !tbaa !70
  %2866 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 18
  store i16 %2859, ptr %2866, align 4, !tbaa !70
  %2867 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 17
  store i16 %2859, ptr %2867, align 2, !tbaa !70
  br label %2868

2868:                                             ; preds = %2856, %2809
  %2869 = icmp eq i32 %2709, 0
  br i1 %2869, label %2881, label %2870

2870:                                             ; preds = %2868
  %2871 = getelementptr inbounds %struct.pix_pos, ptr %19, i64 0, i32 5
  %2872 = load i16, ptr %2871, align 2, !tbaa !68
  %2873 = sext i16 %2872 to i64
  %2874 = getelementptr inbounds ptr, ptr %2634, i64 %2873
  %2875 = load ptr, ptr %2874, align 8, !tbaa !47
  %2876 = getelementptr inbounds %struct.pix_pos, ptr %19, i64 0, i32 4
  %2877 = load i16, ptr %2876, align 4, !tbaa !69
  %2878 = sext i16 %2877 to i64
  %2879 = getelementptr inbounds i16, ptr %2875, i64 %2878
  %2880 = load i16, ptr %2879, align 2, !tbaa !70
  br label %2885

2881:                                             ; preds = %2868
  %2882 = getelementptr inbounds %struct.video_par, ptr %2620, i64 0, i32 69, i64 %2637
  %2883 = load i32, ptr %2882, align 4, !tbaa !71
  %2884 = trunc i32 %2883 to i16
  br label %2885

2885:                                             ; preds = %2870, %2881
  %2886 = phi i16 [ %2884, %2881 ], [ %2880, %2870 ]
  store i16 %2886, ptr %15, align 16, !tbaa !70
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %15, i32 noundef %2709, i32 noundef %2712, i32 noundef %2711)
  %2887 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 1
  %2888 = load i16, ptr %2887, align 2, !tbaa !70
  %2889 = zext i16 %2888 to i32
  %2890 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 2
  %2891 = load i16, ptr %2890, align 4, !tbaa !70
  %2892 = zext i16 %2891 to i32
  %2893 = add nuw nsw i32 %2892, 1
  %2894 = add nuw nsw i32 %2893, %2889
  %2895 = lshr i32 %2894, 1
  %2896 = trunc i32 %2895 to i16
  %2897 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 3
  %2898 = load i16, ptr %2897, align 2, !tbaa !70
  %2899 = zext i16 %2898 to i32
  %2900 = add nuw nsw i32 %2892, 1
  %2901 = add nuw nsw i32 %2900, %2899
  %2902 = lshr i32 %2901, 1
  %2903 = trunc i32 %2902 to i16
  %2904 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 4
  %2905 = load i16, ptr %2904, align 8, !tbaa !70
  %2906 = zext i16 %2905 to i32
  %2907 = add nuw nsw i32 %2899, 1
  %2908 = add nuw nsw i32 %2907, %2906
  %2909 = lshr i32 %2908, 1
  %2910 = trunc i32 %2909 to i16
  %2911 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 5
  %2912 = load i16, ptr %2911, align 2, !tbaa !70
  %2913 = zext i16 %2912 to i32
  %2914 = add nuw nsw i32 %2906, 1
  %2915 = add nuw nsw i32 %2914, %2913
  %2916 = lshr i32 %2915, 1
  %2917 = trunc i32 %2916 to i16
  %2918 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 6
  %2919 = load i16, ptr %2918, align 4, !tbaa !70
  %2920 = zext i16 %2919 to i32
  %2921 = add nuw nsw i32 %2913, 1
  %2922 = add nuw nsw i32 %2921, %2920
  %2923 = lshr i32 %2922, 1
  %2924 = trunc i32 %2923 to i16
  %2925 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 7
  %2926 = load i16, ptr %2925, align 2, !tbaa !70
  %2927 = zext i16 %2926 to i32
  %2928 = add nuw nsw i32 %2920, 1
  %2929 = add nuw nsw i32 %2928, %2927
  %2930 = lshr i32 %2929, 1
  %2931 = trunc i32 %2930 to i16
  %2932 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 8
  %2933 = load i16, ptr %2932, align 16, !tbaa !70
  %2934 = zext i16 %2933 to i32
  %2935 = add nuw nsw i32 %2927, 1
  %2936 = add nuw nsw i32 %2935, %2934
  %2937 = lshr i32 %2936, 1
  %2938 = trunc i32 %2937 to i16
  %2939 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 9
  %2940 = load i16, ptr %2939, align 2, !tbaa !70
  %2941 = zext i16 %2940 to i32
  %2942 = add nuw nsw i32 %2934, 1
  %2943 = add nuw nsw i32 %2942, %2941
  %2944 = lshr i32 %2943, 1
  %2945 = trunc i32 %2944 to i16
  %2946 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 10
  %2947 = load i16, ptr %2946, align 4, !tbaa !70
  %2948 = zext i16 %2947 to i32
  %2949 = add nuw nsw i32 %2941, 1
  %2950 = add nuw nsw i32 %2949, %2948
  %2951 = lshr i32 %2950, 1
  %2952 = trunc i32 %2951 to i16
  %2953 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 11
  %2954 = load i16, ptr %2953, align 2, !tbaa !70
  %2955 = zext i16 %2954 to i32
  %2956 = add nuw nsw i32 %2948, 1
  %2957 = add nuw nsw i32 %2956, %2955
  %2958 = lshr i32 %2957, 1
  %2959 = trunc i32 %2958 to i16
  %2960 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 12
  %2961 = load i16, ptr %2960, align 8, !tbaa !70
  %2962 = zext i16 %2961 to i32
  %2963 = add nuw nsw i32 %2955, 1
  %2964 = add nuw nsw i32 %2963, %2962
  %2965 = lshr i32 %2964, 1
  %2966 = trunc i32 %2965 to i16
  %2967 = shl nuw nsw i32 %2892, 1
  %2968 = add nuw nsw i32 %2899, 2
  %2969 = add nuw nsw i32 %2968, %2889
  %2970 = add nuw nsw i32 %2969, %2967
  %2971 = lshr i32 %2970, 2
  %2972 = trunc i32 %2971 to i16
  %2973 = shl nuw nsw i32 %2899, 1
  %2974 = add nuw nsw i32 %2906, 2
  %2975 = add nuw nsw i32 %2974, %2892
  %2976 = add nuw nsw i32 %2975, %2973
  %2977 = lshr i32 %2976, 2
  %2978 = trunc i32 %2977 to i16
  %2979 = shl nuw nsw i32 %2906, 1
  %2980 = add nuw nsw i32 %2899, 2
  %2981 = add nuw nsw i32 %2980, %2913
  %2982 = add nuw nsw i32 %2981, %2979
  %2983 = lshr i32 %2982, 2
  %2984 = trunc i32 %2983 to i16
  %2985 = shl nuw nsw i32 %2913, 1
  %2986 = add nuw nsw i32 %2906, 2
  %2987 = add nuw nsw i32 %2986, %2920
  %2988 = add nuw nsw i32 %2987, %2985
  %2989 = lshr i32 %2988, 2
  %2990 = trunc i32 %2989 to i16
  %2991 = shl nuw nsw i32 %2920, 1
  %2992 = add nuw nsw i32 %2913, 2
  %2993 = add nuw nsw i32 %2992, %2927
  %2994 = add nuw nsw i32 %2993, %2991
  %2995 = lshr i32 %2994, 2
  %2996 = trunc i32 %2995 to i16
  %2997 = shl nuw nsw i32 %2927, 1
  %2998 = add nuw nsw i32 %2920, 2
  %2999 = add nuw nsw i32 %2998, %2934
  %3000 = add nuw nsw i32 %2999, %2997
  %3001 = lshr i32 %3000, 2
  %3002 = trunc i32 %3001 to i16
  %3003 = shl nuw nsw i32 %2934, 1
  %3004 = add nuw nsw i32 %2927, 2
  %3005 = add nuw nsw i32 %3004, %2941
  %3006 = add nuw nsw i32 %3005, %3003
  %3007 = lshr i32 %3006, 2
  %3008 = trunc i32 %3007 to i16
  %3009 = shl nuw nsw i32 %2941, 1
  %3010 = add nuw nsw i32 %2934, 2
  %3011 = add nuw nsw i32 %3010, %2948
  %3012 = add nuw nsw i32 %3011, %3009
  %3013 = lshr i32 %3012, 2
  %3014 = trunc i32 %3013 to i16
  %3015 = shl nuw nsw i32 %2948, 1
  %3016 = add nuw nsw i32 %2941, 2
  %3017 = add nuw nsw i32 %3016, %2955
  %3018 = add nuw nsw i32 %3017, %3015
  %3019 = lshr i32 %3018, 2
  %3020 = trunc i32 %3019 to i16
  %3021 = shl nuw nsw i32 %2955, 1
  %3022 = add nuw nsw i32 %2948, 2
  %3023 = add nuw nsw i32 %3022, %2962
  %3024 = add nuw nsw i32 %3023, %3021
  %3025 = lshr i32 %3024, 2
  %3026 = trunc i32 %3025 to i16
  %3027 = getelementptr inbounds [25 x i16], ptr %15, i64 0, i64 13
  %3028 = load i16, ptr %3027, align 2, !tbaa !70
  %3029 = zext i16 %3028 to i32
  %3030 = shl nuw nsw i32 %2962, 1
  %3031 = add nuw nsw i32 %2955, 2
  %3032 = add nuw nsw i32 %3031, %3029
  %3033 = add nuw nsw i32 %3032, %3030
  %3034 = lshr i32 %3033, 2
  %3035 = trunc i32 %3034 to i16
  %3036 = sext i32 %3 to i64
  %3037 = getelementptr inbounds ptr, ptr %2639, i64 %3036
  %3038 = load ptr, ptr %3037, align 8, !tbaa !47
  %3039 = sext i32 %2 to i64
  %3040 = getelementptr inbounds i16, ptr %3038, i64 %3039
  store i16 %2896, ptr %3040, align 2
  %3041 = getelementptr inbounds i8, ptr %3040, i64 2
  store i16 %2903, ptr %3041, align 2
  %3042 = getelementptr inbounds i8, ptr %3040, i64 4
  store i16 %2910, ptr %3042, align 2
  %3043 = getelementptr inbounds i8, ptr %3040, i64 6
  store i16 %2917, ptr %3043, align 2
  %3044 = getelementptr inbounds i8, ptr %3040, i64 8
  store i16 %2924, ptr %3044, align 2
  %3045 = getelementptr inbounds i8, ptr %3040, i64 10
  store i16 %2931, ptr %3045, align 2
  %3046 = getelementptr inbounds i8, ptr %3040, i64 12
  store i16 %2938, ptr %3046, align 2
  %3047 = getelementptr inbounds i8, ptr %3040, i64 14
  store i16 %2945, ptr %3047, align 2
  %3048 = getelementptr ptr, ptr %3037, i64 1
  %3049 = load ptr, ptr %3048, align 8, !tbaa !47
  %3050 = getelementptr inbounds i16, ptr %3049, i64 %3039
  store i16 %2972, ptr %3050, align 2
  %3051 = getelementptr inbounds i8, ptr %3050, i64 2
  store i16 %2978, ptr %3051, align 2
  %3052 = getelementptr inbounds i8, ptr %3050, i64 4
  store i16 %2984, ptr %3052, align 2
  %3053 = getelementptr inbounds i8, ptr %3050, i64 6
  store i16 %2990, ptr %3053, align 2
  %3054 = getelementptr inbounds i8, ptr %3050, i64 8
  store i16 %2996, ptr %3054, align 2
  %3055 = getelementptr inbounds i8, ptr %3050, i64 10
  store i16 %3002, ptr %3055, align 2
  %3056 = getelementptr inbounds i8, ptr %3050, i64 12
  store i16 %3008, ptr %3056, align 2
  %3057 = getelementptr inbounds i8, ptr %3050, i64 14
  store i16 %3014, ptr %3057, align 2
  %3058 = getelementptr ptr, ptr %3037, i64 2
  %3059 = load ptr, ptr %3058, align 8, !tbaa !47
  %3060 = getelementptr inbounds i16, ptr %3059, i64 %3039
  store i16 %2903, ptr %3060, align 2
  %3061 = getelementptr inbounds i8, ptr %3060, i64 2
  store i16 %2910, ptr %3061, align 2
  %3062 = getelementptr inbounds i8, ptr %3060, i64 4
  store i16 %2917, ptr %3062, align 2
  %3063 = getelementptr inbounds i8, ptr %3060, i64 6
  store i16 %2924, ptr %3063, align 2
  %3064 = getelementptr inbounds i8, ptr %3060, i64 8
  store i16 %2931, ptr %3064, align 2
  %3065 = getelementptr inbounds i8, ptr %3060, i64 10
  store i16 %2938, ptr %3065, align 2
  %3066 = getelementptr inbounds i8, ptr %3060, i64 12
  store i16 %2945, ptr %3066, align 2
  %3067 = getelementptr inbounds i8, ptr %3060, i64 14
  store i16 %2952, ptr %3067, align 2
  %3068 = getelementptr ptr, ptr %3037, i64 3
  %3069 = load ptr, ptr %3068, align 8, !tbaa !47
  %3070 = getelementptr inbounds i16, ptr %3069, i64 %3039
  store i16 %2978, ptr %3070, align 2
  %3071 = getelementptr inbounds i8, ptr %3070, i64 2
  store i16 %2984, ptr %3071, align 2
  %3072 = getelementptr inbounds i8, ptr %3070, i64 4
  store i16 %2990, ptr %3072, align 2
  %3073 = getelementptr inbounds i8, ptr %3070, i64 6
  store i16 %2996, ptr %3073, align 2
  %3074 = getelementptr inbounds i8, ptr %3070, i64 8
  store i16 %3002, ptr %3074, align 2
  %3075 = getelementptr inbounds i8, ptr %3070, i64 10
  store i16 %3008, ptr %3075, align 2
  %3076 = getelementptr inbounds i8, ptr %3070, i64 12
  store i16 %3014, ptr %3076, align 2
  %3077 = getelementptr inbounds i8, ptr %3070, i64 14
  store i16 %3020, ptr %3077, align 2
  %3078 = getelementptr ptr, ptr %3037, i64 4
  %3079 = load ptr, ptr %3078, align 8, !tbaa !47
  %3080 = getelementptr inbounds i16, ptr %3079, i64 %3039
  store i16 %2910, ptr %3080, align 2
  %3081 = getelementptr inbounds i8, ptr %3080, i64 2
  store i16 %2917, ptr %3081, align 2
  %3082 = getelementptr inbounds i8, ptr %3080, i64 4
  store i16 %2924, ptr %3082, align 2
  %3083 = getelementptr inbounds i8, ptr %3080, i64 6
  store i16 %2931, ptr %3083, align 2
  %3084 = getelementptr inbounds i8, ptr %3080, i64 8
  store i16 %2938, ptr %3084, align 2
  %3085 = getelementptr inbounds i8, ptr %3080, i64 10
  store i16 %2945, ptr %3085, align 2
  %3086 = getelementptr inbounds i8, ptr %3080, i64 12
  store i16 %2952, ptr %3086, align 2
  %3087 = getelementptr inbounds i8, ptr %3080, i64 14
  store i16 %2959, ptr %3087, align 2
  %3088 = getelementptr ptr, ptr %3037, i64 5
  %3089 = load ptr, ptr %3088, align 8, !tbaa !47
  %3090 = getelementptr inbounds i16, ptr %3089, i64 %3039
  store i16 %2984, ptr %3090, align 2
  %3091 = getelementptr inbounds i8, ptr %3090, i64 2
  store i16 %2990, ptr %3091, align 2
  %3092 = getelementptr inbounds i8, ptr %3090, i64 4
  store i16 %2996, ptr %3092, align 2
  %3093 = getelementptr inbounds i8, ptr %3090, i64 6
  store i16 %3002, ptr %3093, align 2
  %3094 = getelementptr inbounds i8, ptr %3090, i64 8
  store i16 %3008, ptr %3094, align 2
  %3095 = getelementptr inbounds i8, ptr %3090, i64 10
  store i16 %3014, ptr %3095, align 2
  %3096 = getelementptr inbounds i8, ptr %3090, i64 12
  store i16 %3020, ptr %3096, align 2
  %3097 = getelementptr inbounds i8, ptr %3090, i64 14
  store i16 %3026, ptr %3097, align 2
  %3098 = getelementptr ptr, ptr %3037, i64 6
  %3099 = load ptr, ptr %3098, align 8, !tbaa !47
  %3100 = getelementptr inbounds i16, ptr %3099, i64 %3039
  store i16 %2917, ptr %3100, align 2
  %3101 = getelementptr inbounds i8, ptr %3100, i64 2
  store i16 %2924, ptr %3101, align 2
  %3102 = getelementptr inbounds i8, ptr %3100, i64 4
  store i16 %2931, ptr %3102, align 2
  %3103 = getelementptr inbounds i8, ptr %3100, i64 6
  store i16 %2938, ptr %3103, align 2
  %3104 = getelementptr inbounds i8, ptr %3100, i64 8
  store i16 %2945, ptr %3104, align 2
  %3105 = getelementptr inbounds i8, ptr %3100, i64 10
  store i16 %2952, ptr %3105, align 2
  %3106 = getelementptr inbounds i8, ptr %3100, i64 12
  store i16 %2959, ptr %3106, align 2
  %3107 = getelementptr inbounds i8, ptr %3100, i64 14
  store i16 %2966, ptr %3107, align 2
  %3108 = getelementptr ptr, ptr %3037, i64 7
  %3109 = load ptr, ptr %3108, align 8, !tbaa !47
  %3110 = getelementptr inbounds i16, ptr %3109, i64 %3039
  store i16 %2990, ptr %3110, align 2
  %3111 = getelementptr inbounds i8, ptr %3110, i64 2
  store i16 %2996, ptr %3111, align 2
  %3112 = getelementptr inbounds i8, ptr %3110, i64 4
  store i16 %3002, ptr %3112, align 2
  %3113 = getelementptr inbounds i8, ptr %3110, i64 6
  store i16 %3008, ptr %3113, align 2
  %3114 = getelementptr inbounds i8, ptr %3110, i64 8
  store i16 %3014, ptr %3114, align 2
  %3115 = getelementptr inbounds i8, ptr %3110, i64 10
  store i16 %3020, ptr %3115, align 2
  %3116 = getelementptr inbounds i8, ptr %3110, i64 12
  store i16 %3026, ptr %3116, align 2
  %3117 = getelementptr inbounds i8, ptr %3110, i64 14
  store i16 %3035, ptr %3117, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %15) #6
  br label %4098

3118:                                             ; preds = %4
  %3119 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %3120 = load ptr, ptr %3119, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %10) #6
  %3121 = icmp eq i32 %1, 0
  %3122 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 125
  %3123 = load ptr, ptr %3122, align 8, !tbaa !51
  br i1 %3121, label %3130, label %3124

3124:                                             ; preds = %3118
  %3125 = getelementptr inbounds %struct.storable_picture, ptr %3123, i64 0, i32 33
  %3126 = load ptr, ptr %3125, align 8, !tbaa !52
  %3127 = add i32 %1, -1
  %3128 = zext i32 %3127 to i64
  %3129 = getelementptr inbounds ptr, ptr %3126, i64 %3128
  br label %3132

3130:                                             ; preds = %3118
  %3131 = getelementptr inbounds %struct.storable_picture, ptr %3123, i64 0, i32 32
  br label %3132

3132:                                             ; preds = %3130, %3124
  %3133 = phi ptr [ %3129, %3124 ], [ %3131, %3130 ]
  %3134 = load ptr, ptr %3133, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #6
  %3135 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 77
  %3136 = load ptr, ptr %3135, align 8, !tbaa !55
  %3137 = zext i32 %1 to i64
  %3138 = getelementptr inbounds ptr, ptr %3136, i64 %3137
  %3139 = load ptr, ptr %3138, align 8, !tbaa !47
  %3140 = getelementptr inbounds %struct.video_par, ptr %3120, i64 0, i32 81
  %3141 = add nsw i32 %2, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %3141, i32 noundef %3, ptr noundef nonnull %3140, ptr noundef nonnull %11) #6
  %3142 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3142, ptr noundef nonnull %3140, ptr noundef nonnull %12) #6
  %3143 = add nsw i32 %2, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %3143, i32 noundef %3142, ptr noundef nonnull %3140, ptr noundef nonnull %13) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %3141, i32 noundef %3142, ptr noundef nonnull %3140, ptr noundef nonnull %14) #6
  %3144 = load i32, ptr %13, align 4, !tbaa !56
  %3145 = icmp ne i32 %3144, 0
  %3146 = icmp ne i32 %2, 8
  %3147 = icmp ne i32 %3, 8
  %3148 = or i1 %3146, %3147
  %3149 = and i1 %3148, %3145
  %3150 = zext i1 %3149 to i32
  store i32 %3150, ptr %13, align 4, !tbaa !56
  %3151 = getelementptr inbounds %struct.video_par, ptr %3120, i64 0, i32 1
  %3152 = load ptr, ptr %3151, align 8, !tbaa !58
  %3153 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %3152, i64 0, i32 30
  %3154 = load i32, ptr %3153, align 4, !tbaa !64
  %3155 = icmp eq i32 %3154, 0
  %3156 = load i32, ptr %11, align 4, !tbaa !56
  br i1 %3155, label %3205, label %3157

3157:                                             ; preds = %3132
  %3158 = icmp eq i32 %3156, 0
  br i1 %3158, label %3168, label %3159

3159:                                             ; preds = %3157
  %3160 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %3161 = load ptr, ptr %3160, align 8, !tbaa !66
  %3162 = getelementptr inbounds %struct.pix_pos, ptr %11, i64 0, i32 1
  %3163 = load i32, ptr %3162, align 4, !tbaa !67
  %3164 = sext i32 %3163 to i64
  %3165 = getelementptr inbounds i8, ptr %3161, i64 %3164
  %3166 = load i8, ptr %3165, align 1, !tbaa !48
  %3167 = sext i8 %3166 to i32
  br label %3168

3168:                                             ; preds = %3159, %3157
  %3169 = phi i32 [ %3167, %3159 ], [ 0, %3157 ]
  %3170 = load i32, ptr %12, align 4, !tbaa !56
  %3171 = icmp eq i32 %3170, 0
  br i1 %3171, label %3181, label %3172

3172:                                             ; preds = %3168
  %3173 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %3174 = load ptr, ptr %3173, align 8, !tbaa !66
  %3175 = getelementptr inbounds %struct.pix_pos, ptr %12, i64 0, i32 1
  %3176 = load i32, ptr %3175, align 4, !tbaa !67
  %3177 = sext i32 %3176 to i64
  %3178 = getelementptr inbounds i8, ptr %3174, i64 %3177
  %3179 = load i8, ptr %3178, align 1, !tbaa !48
  %3180 = sext i8 %3179 to i32
  br label %3181

3181:                                             ; preds = %3172, %3168
  %3182 = phi i32 [ %3180, %3172 ], [ 0, %3168 ]
  br i1 %3149, label %3183, label %3192

3183:                                             ; preds = %3181
  %3184 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %3185 = load ptr, ptr %3184, align 8, !tbaa !66
  %3186 = getelementptr inbounds %struct.pix_pos, ptr %13, i64 0, i32 1
  %3187 = load i32, ptr %3186, align 4, !tbaa !67
  %3188 = sext i32 %3187 to i64
  %3189 = getelementptr inbounds i8, ptr %3185, i64 %3188
  %3190 = load i8, ptr %3189, align 1, !tbaa !48
  %3191 = sext i8 %3190 to i32
  br label %3192

3192:                                             ; preds = %3183, %3181
  %3193 = phi i32 [ %3191, %3183 ], [ 0, %3181 ]
  %3194 = load i32, ptr %14, align 4, !tbaa !56
  %3195 = icmp eq i32 %3194, 0
  br i1 %3195, label %3208, label %3196

3196:                                             ; preds = %3192
  %3197 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %3198 = load ptr, ptr %3197, align 8, !tbaa !66
  %3199 = getelementptr inbounds %struct.pix_pos, ptr %14, i64 0, i32 1
  %3200 = load i32, ptr %3199, align 4, !tbaa !67
  %3201 = sext i32 %3200 to i64
  %3202 = getelementptr inbounds i8, ptr %3198, i64 %3201
  %3203 = load i8, ptr %3202, align 1, !tbaa !48
  %3204 = sext i8 %3203 to i32
  br label %3208

3205:                                             ; preds = %3132
  %3206 = load i32, ptr %12, align 4, !tbaa !56
  %3207 = load i32, ptr %14, align 4, !tbaa !56
  br label %3208

3208:                                             ; preds = %3205, %3196, %3192
  %3209 = phi i32 [ %3150, %3205 ], [ %3193, %3192 ], [ %3193, %3196 ]
  %3210 = phi i32 [ %3207, %3205 ], [ 0, %3192 ], [ %3204, %3196 ]
  %3211 = phi i32 [ %3156, %3205 ], [ %3169, %3192 ], [ %3169, %3196 ]
  %3212 = phi i32 [ %3206, %3205 ], [ %3182, %3192 ], [ %3182, %3196 ]
  %3213 = icmp eq i32 %3211, 0
  br i1 %3213, label %3214, label %3218

3214:                                             ; preds = %3208
  %3215 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 20
  %3216 = load i32, ptr %3215, align 4, !tbaa !76
  %3217 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %3216)
  br label %3218

3218:                                             ; preds = %3214, %3208
  %3219 = icmp eq i32 %3212, 0
  br i1 %3219, label %3253, label %3220

3220:                                             ; preds = %3218
  %3221 = getelementptr inbounds %struct.pix_pos, ptr %12, i64 0, i32 5
  %3222 = load i16, ptr %3221, align 2, !tbaa !68
  %3223 = sext i16 %3222 to i64
  %3224 = getelementptr inbounds ptr, ptr %3134, i64 %3223
  %3225 = load ptr, ptr %3224, align 8, !tbaa !47
  %3226 = getelementptr inbounds %struct.pix_pos, ptr %12, i64 0, i32 4
  %3227 = load i16, ptr %3226, align 4, !tbaa !69
  %3228 = sext i16 %3227 to i64
  %3229 = getelementptr inbounds i16, ptr %3225, i64 %3228
  %3230 = load i16, ptr %3229, align 2, !tbaa !70
  %3231 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 1
  store i16 %3230, ptr %3231, align 2, !tbaa !70
  %3232 = getelementptr inbounds i16, ptr %3229, i64 1
  %3233 = load i16, ptr %3232, align 2, !tbaa !70
  %3234 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 2
  store i16 %3233, ptr %3234, align 4, !tbaa !70
  %3235 = getelementptr inbounds i16, ptr %3229, i64 2
  %3236 = load i16, ptr %3235, align 2, !tbaa !70
  %3237 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 3
  store i16 %3236, ptr %3237, align 2, !tbaa !70
  %3238 = getelementptr inbounds i16, ptr %3229, i64 3
  %3239 = load i16, ptr %3238, align 2, !tbaa !70
  %3240 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 4
  store i16 %3239, ptr %3240, align 8, !tbaa !70
  %3241 = getelementptr inbounds i16, ptr %3229, i64 4
  %3242 = load i16, ptr %3241, align 2, !tbaa !70
  %3243 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 5
  store i16 %3242, ptr %3243, align 2, !tbaa !70
  %3244 = getelementptr inbounds i16, ptr %3229, i64 5
  %3245 = load i16, ptr %3244, align 2, !tbaa !70
  %3246 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 6
  store i16 %3245, ptr %3246, align 4, !tbaa !70
  %3247 = getelementptr inbounds i16, ptr %3229, i64 6
  %3248 = load i16, ptr %3247, align 2, !tbaa !70
  %3249 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 7
  store i16 %3248, ptr %3249, align 2, !tbaa !70
  %3250 = getelementptr inbounds i16, ptr %3229, i64 7
  %3251 = load i16, ptr %3250, align 2, !tbaa !70
  %3252 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 8
  store i16 %3251, ptr %3252, align 16, !tbaa !70
  br label %3265

3253:                                             ; preds = %3218
  %3254 = getelementptr inbounds %struct.video_par, ptr %3120, i64 0, i32 69, i64 %3137
  %3255 = load i32, ptr %3254, align 4, !tbaa !71
  %3256 = trunc i32 %3255 to i16
  %3257 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 8
  store i16 %3256, ptr %3257, align 16, !tbaa !70
  %3258 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 7
  store i16 %3256, ptr %3258, align 2, !tbaa !70
  %3259 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 6
  store i16 %3256, ptr %3259, align 4, !tbaa !70
  %3260 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 5
  store i16 %3256, ptr %3260, align 2, !tbaa !70
  %3261 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 4
  store i16 %3256, ptr %3261, align 8, !tbaa !70
  %3262 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 3
  store i16 %3256, ptr %3262, align 2, !tbaa !70
  %3263 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 2
  store i16 %3256, ptr %3263, align 4, !tbaa !70
  %3264 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 1
  store i16 %3256, ptr %3264, align 2, !tbaa !70
  br label %3265

3265:                                             ; preds = %3253, %3220
  %3266 = icmp eq i32 %3209, 0
  %3267 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 10
  br i1 %3266, label %3300, label %3268

3268:                                             ; preds = %3265
  %3269 = getelementptr inbounds %struct.pix_pos, ptr %13, i64 0, i32 5
  %3270 = load i16, ptr %3269, align 2, !tbaa !68
  %3271 = sext i16 %3270 to i64
  %3272 = getelementptr inbounds ptr, ptr %3134, i64 %3271
  %3273 = load ptr, ptr %3272, align 8, !tbaa !47
  %3274 = getelementptr inbounds %struct.pix_pos, ptr %13, i64 0, i32 4
  %3275 = load i16, ptr %3274, align 4, !tbaa !69
  %3276 = sext i16 %3275 to i64
  %3277 = getelementptr inbounds i16, ptr %3273, i64 %3276
  %3278 = load i16, ptr %3277, align 2, !tbaa !70
  %3279 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 9
  store i16 %3278, ptr %3279, align 2, !tbaa !70
  %3280 = getelementptr inbounds i16, ptr %3277, i64 1
  %3281 = load i16, ptr %3280, align 2, !tbaa !70
  store i16 %3281, ptr %3267, align 4, !tbaa !70
  %3282 = getelementptr inbounds i16, ptr %3277, i64 2
  %3283 = load i16, ptr %3282, align 2, !tbaa !70
  %3284 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 11
  store i16 %3283, ptr %3284, align 2, !tbaa !70
  %3285 = getelementptr inbounds i16, ptr %3277, i64 3
  %3286 = load i16, ptr %3285, align 2, !tbaa !70
  %3287 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 12
  store i16 %3286, ptr %3287, align 8, !tbaa !70
  %3288 = getelementptr inbounds i16, ptr %3277, i64 4
  %3289 = load i16, ptr %3288, align 2, !tbaa !70
  %3290 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 13
  store i16 %3289, ptr %3290, align 2, !tbaa !70
  %3291 = getelementptr inbounds i16, ptr %3277, i64 5
  %3292 = load i16, ptr %3291, align 2, !tbaa !70
  %3293 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 14
  store i16 %3292, ptr %3293, align 4, !tbaa !70
  %3294 = getelementptr inbounds i16, ptr %3277, i64 6
  %3295 = load i16, ptr %3294, align 2, !tbaa !70
  %3296 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 15
  store i16 %3295, ptr %3296, align 2, !tbaa !70
  %3297 = getelementptr inbounds i16, ptr %3277, i64 7
  %3298 = load i16, ptr %3297, align 2, !tbaa !70
  %3299 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 16
  store i16 %3298, ptr %3299, align 16, !tbaa !70
  br label %3310

3300:                                             ; preds = %3265
  %3301 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 8
  %3302 = load i16, ptr %3301, align 16, !tbaa !70
  %3303 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 16
  store i16 %3302, ptr %3303, align 16, !tbaa !70
  %3304 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 15
  store i16 %3302, ptr %3304, align 2, !tbaa !70
  %3305 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 14
  store i16 %3302, ptr %3305, align 4, !tbaa !70
  %3306 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 13
  store i16 %3302, ptr %3306, align 2, !tbaa !70
  %3307 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 12
  store i16 %3302, ptr %3307, align 8, !tbaa !70
  %3308 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 11
  store i16 %3302, ptr %3308, align 2, !tbaa !70
  store i16 %3302, ptr %3267, align 4, !tbaa !70
  %3309 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 9
  store i16 %3302, ptr %3309, align 2, !tbaa !70
  br label %3310

3310:                                             ; preds = %3300, %3268
  br i1 %3213, label %3358, label %3311

3311:                                             ; preds = %3310
  %3312 = getelementptr inbounds %struct.pix_pos, ptr %11, i64 0, i32 5
  %3313 = load i16, ptr %3312, align 2, !tbaa !68
  %3314 = sext i16 %3313 to i64
  %3315 = getelementptr inbounds ptr, ptr %3134, i64 %3314
  %3316 = getelementptr inbounds %struct.pix_pos, ptr %11, i64 0, i32 4
  %3317 = load i16, ptr %3316, align 4, !tbaa !69
  %3318 = getelementptr inbounds ptr, ptr %3315, i64 1
  %3319 = load ptr, ptr %3315, align 8, !tbaa !47
  %3320 = sext i16 %3317 to i64
  %3321 = getelementptr inbounds i16, ptr %3319, i64 %3320
  %3322 = load i16, ptr %3321, align 2, !tbaa !70
  %3323 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 17
  store i16 %3322, ptr %3323, align 2, !tbaa !70
  %3324 = getelementptr inbounds ptr, ptr %3315, i64 2
  %3325 = load ptr, ptr %3318, align 8, !tbaa !47
  %3326 = getelementptr inbounds i16, ptr %3325, i64 %3320
  %3327 = load i16, ptr %3326, align 2, !tbaa !70
  %3328 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 18
  store i16 %3327, ptr %3328, align 4, !tbaa !70
  %3329 = getelementptr inbounds ptr, ptr %3315, i64 3
  %3330 = load ptr, ptr %3324, align 8, !tbaa !47
  %3331 = getelementptr inbounds i16, ptr %3330, i64 %3320
  %3332 = load i16, ptr %3331, align 2, !tbaa !70
  %3333 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 19
  store i16 %3332, ptr %3333, align 2, !tbaa !70
  %3334 = getelementptr inbounds ptr, ptr %3315, i64 4
  %3335 = load ptr, ptr %3329, align 8, !tbaa !47
  %3336 = getelementptr inbounds i16, ptr %3335, i64 %3320
  %3337 = load i16, ptr %3336, align 2, !tbaa !70
  %3338 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 20
  store i16 %3337, ptr %3338, align 8, !tbaa !70
  %3339 = getelementptr inbounds ptr, ptr %3315, i64 5
  %3340 = load ptr, ptr %3334, align 8, !tbaa !47
  %3341 = getelementptr inbounds i16, ptr %3340, i64 %3320
  %3342 = load i16, ptr %3341, align 2, !tbaa !70
  %3343 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 21
  store i16 %3342, ptr %3343, align 2, !tbaa !70
  %3344 = getelementptr inbounds ptr, ptr %3315, i64 6
  %3345 = load ptr, ptr %3339, align 8, !tbaa !47
  %3346 = getelementptr inbounds i16, ptr %3345, i64 %3320
  %3347 = load i16, ptr %3346, align 2, !tbaa !70
  %3348 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 22
  store i16 %3347, ptr %3348, align 4, !tbaa !70
  %3349 = getelementptr inbounds ptr, ptr %3315, i64 7
  %3350 = load ptr, ptr %3344, align 8, !tbaa !47
  %3351 = getelementptr inbounds i16, ptr %3350, i64 %3320
  %3352 = load i16, ptr %3351, align 2, !tbaa !70
  %3353 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 23
  store i16 %3352, ptr %3353, align 2, !tbaa !70
  %3354 = load ptr, ptr %3349, align 8, !tbaa !47
  %3355 = getelementptr inbounds i16, ptr %3354, i64 %3320
  %3356 = load i16, ptr %3355, align 2, !tbaa !70
  %3357 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 24
  store i16 %3356, ptr %3357, align 16, !tbaa !70
  br label %3370

3358:                                             ; preds = %3310
  %3359 = getelementptr inbounds %struct.video_par, ptr %3120, i64 0, i32 69, i64 %3137
  %3360 = load i32, ptr %3359, align 4, !tbaa !71
  %3361 = trunc i32 %3360 to i16
  %3362 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 24
  store i16 %3361, ptr %3362, align 16, !tbaa !70
  %3363 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 23
  store i16 %3361, ptr %3363, align 2, !tbaa !70
  %3364 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 22
  store i16 %3361, ptr %3364, align 4, !tbaa !70
  %3365 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 21
  store i16 %3361, ptr %3365, align 2, !tbaa !70
  %3366 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 20
  store i16 %3361, ptr %3366, align 8, !tbaa !70
  %3367 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 19
  store i16 %3361, ptr %3367, align 2, !tbaa !70
  %3368 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 18
  store i16 %3361, ptr %3368, align 4, !tbaa !70
  %3369 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 17
  store i16 %3361, ptr %3369, align 2, !tbaa !70
  br label %3370

3370:                                             ; preds = %3358, %3311
  %3371 = icmp eq i32 %3210, 0
  br i1 %3371, label %3383, label %3372

3372:                                             ; preds = %3370
  %3373 = getelementptr inbounds %struct.pix_pos, ptr %14, i64 0, i32 5
  %3374 = load i16, ptr %3373, align 2, !tbaa !68
  %3375 = sext i16 %3374 to i64
  %3376 = getelementptr inbounds ptr, ptr %3134, i64 %3375
  %3377 = load ptr, ptr %3376, align 8, !tbaa !47
  %3378 = getelementptr inbounds %struct.pix_pos, ptr %14, i64 0, i32 4
  %3379 = load i16, ptr %3378, align 4, !tbaa !69
  %3380 = sext i16 %3379 to i64
  %3381 = getelementptr inbounds i16, ptr %3377, i64 %3380
  %3382 = load i16, ptr %3381, align 2, !tbaa !70
  br label %3387

3383:                                             ; preds = %3370
  %3384 = getelementptr inbounds %struct.video_par, ptr %3120, i64 0, i32 69, i64 %3137
  %3385 = load i32, ptr %3384, align 4, !tbaa !71
  %3386 = trunc i32 %3385 to i16
  br label %3387

3387:                                             ; preds = %3372, %3383
  %3388 = phi i16 [ %3386, %3383 ], [ %3382, %3372 ]
  store i16 %3388, ptr %10, align 16, !tbaa !70
  %3389 = add nsw i32 %2, 7
  %3390 = add nsw i32 %2, 6
  %3391 = add nsw i32 %2, 5
  %3392 = add nsw i32 %2, 4
  %3393 = add nsw i32 %2, 3
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %10, i32 noundef %3210, i32 noundef %3212, i32 noundef %3211)
  %3394 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 17
  %3395 = load i16, ptr %3394, align 2, !tbaa !70
  %3396 = zext i16 %3395 to i32
  %3397 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 18
  %3398 = load i16, ptr %3397, align 4, !tbaa !70
  %3399 = zext i16 %3398 to i32
  %3400 = add nuw nsw i32 %3399, 1
  %3401 = add nuw nsw i32 %3400, %3396
  %3402 = lshr i32 %3401, 1
  %3403 = trunc i32 %3402 to i16
  %3404 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 19
  %3405 = load i16, ptr %3404, align 2, !tbaa !70
  %3406 = zext i16 %3405 to i32
  %3407 = shl nuw nsw i32 %3399, 1
  %3408 = add nuw nsw i32 %3406, 2
  %3409 = add nuw nsw i32 %3408, %3396
  %3410 = add nuw nsw i32 %3409, %3407
  %3411 = lshr i32 %3410, 2
  %3412 = trunc i32 %3411 to i16
  %3413 = add nuw nsw i32 %3399, 1
  %3414 = add nuw nsw i32 %3413, %3406
  %3415 = lshr i32 %3414, 1
  %3416 = trunc i32 %3415 to i16
  %3417 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 20
  %3418 = load i16, ptr %3417, align 8, !tbaa !70
  %3419 = zext i16 %3418 to i32
  %3420 = shl nuw nsw i32 %3406, 1
  %3421 = add nuw nsw i32 %3419, 2
  %3422 = add nuw nsw i32 %3421, %3399
  %3423 = add nuw nsw i32 %3422, %3420
  %3424 = lshr i32 %3423, 2
  %3425 = trunc i32 %3424 to i16
  %3426 = add nuw nsw i32 %3406, 1
  %3427 = add nuw nsw i32 %3426, %3419
  %3428 = lshr i32 %3427, 1
  %3429 = trunc i32 %3428 to i16
  %3430 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 21
  %3431 = load i16, ptr %3430, align 2, !tbaa !70
  %3432 = zext i16 %3431 to i32
  %3433 = shl nuw nsw i32 %3419, 1
  %3434 = add nuw nsw i32 %3406, 2
  %3435 = add nuw nsw i32 %3434, %3432
  %3436 = add nuw nsw i32 %3435, %3433
  %3437 = lshr i32 %3436, 2
  %3438 = trunc i32 %3437 to i16
  %3439 = add nuw nsw i32 %3419, 1
  %3440 = add nuw nsw i32 %3439, %3432
  %3441 = lshr i32 %3440, 1
  %3442 = trunc i32 %3441 to i16
  %3443 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 22
  %3444 = load i16, ptr %3443, align 4, !tbaa !70
  %3445 = zext i16 %3444 to i32
  %3446 = shl nuw nsw i32 %3432, 1
  %3447 = add nuw nsw i32 %3419, 2
  %3448 = add nuw nsw i32 %3447, %3445
  %3449 = add nuw nsw i32 %3448, %3446
  %3450 = lshr i32 %3449, 2
  %3451 = trunc i32 %3450 to i16
  %3452 = add nuw nsw i32 %3432, 1
  %3453 = add nuw nsw i32 %3452, %3445
  %3454 = lshr i32 %3453, 1
  %3455 = trunc i32 %3454 to i16
  %3456 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 23
  %3457 = load i16, ptr %3456, align 2, !tbaa !70
  %3458 = zext i16 %3457 to i32
  %3459 = shl nuw nsw i32 %3445, 1
  %3460 = add nuw nsw i32 %3432, 2
  %3461 = add nuw nsw i32 %3460, %3458
  %3462 = add nuw nsw i32 %3461, %3459
  %3463 = lshr i32 %3462, 2
  %3464 = trunc i32 %3463 to i16
  %3465 = add nuw nsw i32 %3445, 1
  %3466 = add nuw nsw i32 %3465, %3458
  %3467 = lshr i32 %3466, 1
  %3468 = trunc i32 %3467 to i16
  %3469 = getelementptr inbounds [25 x i16], ptr %10, i64 0, i64 24
  %3470 = load i16, ptr %3469, align 16, !tbaa !70
  %3471 = zext i16 %3470 to i32
  %3472 = shl nuw nsw i32 %3458, 1
  %3473 = add nuw nsw i32 %3445, 2
  %3474 = add nuw nsw i32 %3473, %3471
  %3475 = add nuw nsw i32 %3474, %3472
  %3476 = lshr i32 %3475, 2
  %3477 = trunc i32 %3476 to i16
  %3478 = add nuw nsw i32 %3458, 1
  %3479 = add nuw nsw i32 %3478, %3471
  %3480 = lshr i32 %3479, 1
  %3481 = trunc i32 %3480 to i16
  %3482 = mul nuw nsw i32 %3471, 3
  %3483 = add nuw nsw i32 %3458, 2
  %3484 = add nuw nsw i32 %3483, %3482
  %3485 = lshr i32 %3484, 2
  %3486 = trunc i32 %3485 to i16
  %3487 = sext i32 %3 to i64
  %3488 = getelementptr inbounds ptr, ptr %3139, i64 %3487
  %3489 = load ptr, ptr %3488, align 8, !tbaa !47
  %3490 = sext i32 %2 to i64
  %3491 = getelementptr inbounds i16, ptr %3489, i64 %3490
  store i16 %3403, ptr %3491, align 2
  %3492 = getelementptr inbounds i8, ptr %3491, i64 2
  store i16 %3412, ptr %3492, align 2
  %3493 = getelementptr inbounds i8, ptr %3491, i64 4
  store i16 %3416, ptr %3493, align 2
  %3494 = getelementptr inbounds i8, ptr %3491, i64 6
  store i16 %3425, ptr %3494, align 2
  %3495 = getelementptr inbounds i8, ptr %3491, i64 8
  store i16 %3429, ptr %3495, align 2
  %3496 = getelementptr inbounds i8, ptr %3491, i64 10
  store i16 %3438, ptr %3496, align 2
  %3497 = getelementptr inbounds i8, ptr %3491, i64 12
  store i16 %3442, ptr %3497, align 2
  %3498 = getelementptr inbounds i8, ptr %3491, i64 14
  store i16 %3451, ptr %3498, align 2
  %3499 = getelementptr ptr, ptr %3488, i64 1
  %3500 = load ptr, ptr %3499, align 8, !tbaa !47
  %3501 = getelementptr inbounds i16, ptr %3500, i64 %3490
  store i16 %3416, ptr %3501, align 2
  %3502 = getelementptr inbounds i8, ptr %3501, i64 2
  store i16 %3425, ptr %3502, align 2
  %3503 = getelementptr inbounds i8, ptr %3501, i64 4
  store i16 %3429, ptr %3503, align 2
  %3504 = getelementptr inbounds i8, ptr %3501, i64 6
  store i16 %3438, ptr %3504, align 2
  %3505 = getelementptr inbounds i8, ptr %3501, i64 8
  store i16 %3442, ptr %3505, align 2
  %3506 = getelementptr inbounds i8, ptr %3501, i64 10
  store i16 %3451, ptr %3506, align 2
  %3507 = getelementptr inbounds i8, ptr %3501, i64 12
  store i16 %3455, ptr %3507, align 2
  %3508 = getelementptr inbounds i8, ptr %3501, i64 14
  store i16 %3464, ptr %3508, align 2
  %3509 = getelementptr ptr, ptr %3488, i64 2
  %3510 = load ptr, ptr %3509, align 8, !tbaa !47
  %3511 = getelementptr inbounds i16, ptr %3510, i64 %3490
  store i16 %3429, ptr %3511, align 2
  %3512 = getelementptr inbounds i8, ptr %3511, i64 2
  store i16 %3438, ptr %3512, align 2
  %3513 = getelementptr inbounds i8, ptr %3511, i64 4
  store i16 %3442, ptr %3513, align 2
  %3514 = getelementptr inbounds i8, ptr %3511, i64 6
  store i16 %3451, ptr %3514, align 2
  %3515 = getelementptr inbounds i8, ptr %3511, i64 8
  store i16 %3455, ptr %3515, align 2
  %3516 = getelementptr inbounds i8, ptr %3511, i64 10
  store i16 %3464, ptr %3516, align 2
  %3517 = getelementptr inbounds i8, ptr %3511, i64 12
  store i16 %3468, ptr %3517, align 2
  %3518 = getelementptr inbounds i8, ptr %3511, i64 14
  store i16 %3477, ptr %3518, align 2
  %3519 = getelementptr ptr, ptr %3488, i64 3
  %3520 = load ptr, ptr %3519, align 8, !tbaa !47
  %3521 = getelementptr inbounds i16, ptr %3520, i64 %3490
  store i16 %3442, ptr %3521, align 2
  %3522 = getelementptr inbounds i8, ptr %3521, i64 2
  store i16 %3451, ptr %3522, align 2
  %3523 = getelementptr inbounds i8, ptr %3521, i64 4
  store i16 %3455, ptr %3523, align 2
  %3524 = getelementptr inbounds i8, ptr %3521, i64 6
  store i16 %3464, ptr %3524, align 2
  %3525 = getelementptr inbounds i8, ptr %3521, i64 8
  store i16 %3468, ptr %3525, align 2
  %3526 = getelementptr inbounds i8, ptr %3521, i64 10
  store i16 %3477, ptr %3526, align 2
  %3527 = getelementptr inbounds i8, ptr %3521, i64 12
  store i16 %3481, ptr %3527, align 2
  %3528 = getelementptr inbounds i8, ptr %3521, i64 14
  store i16 %3486, ptr %3528, align 2
  %3529 = getelementptr ptr, ptr %3488, i64 4
  %3530 = load ptr, ptr %3529, align 8, !tbaa !47
  %3531 = getelementptr inbounds i16, ptr %3530, i64 %3490
  store i16 %3455, ptr %3531, align 2
  %3532 = getelementptr inbounds i8, ptr %3531, i64 2
  store i16 %3464, ptr %3532, align 2
  %3533 = getelementptr inbounds i8, ptr %3531, i64 4
  store i16 %3468, ptr %3533, align 2
  %3534 = getelementptr inbounds i8, ptr %3531, i64 6
  store i16 %3477, ptr %3534, align 2
  %3535 = getelementptr inbounds i8, ptr %3531, i64 8
  store i16 %3481, ptr %3535, align 2
  %3536 = getelementptr inbounds i8, ptr %3531, i64 10
  store i16 %3486, ptr %3536, align 2
  %3537 = getelementptr inbounds i8, ptr %3531, i64 12
  store i16 %3470, ptr %3537, align 2
  %3538 = getelementptr ptr, ptr %3488, i64 5
  %3539 = load ptr, ptr %3538, align 8, !tbaa !47
  %3540 = getelementptr inbounds i16, ptr %3539, i64 %3490
  store i16 %3468, ptr %3540, align 2
  %3541 = getelementptr inbounds i8, ptr %3540, i64 2
  store i16 %3477, ptr %3541, align 2
  %3542 = getelementptr inbounds i8, ptr %3540, i64 4
  store i16 %3481, ptr %3542, align 2
  %3543 = getelementptr inbounds i8, ptr %3540, i64 6
  store i16 %3486, ptr %3543, align 2
  %3544 = getelementptr inbounds i8, ptr %3540, i64 8
  store i16 %3470, ptr %3544, align 2
  %3545 = getelementptr ptr, ptr %3488, i64 6
  %3546 = load ptr, ptr %3545, align 8, !tbaa !47
  %3547 = getelementptr inbounds i16, ptr %3546, i64 %3490
  store i16 %3481, ptr %3547, align 2
  %3548 = getelementptr inbounds i8, ptr %3547, i64 2
  store i16 %3486, ptr %3548, align 2
  %3549 = getelementptr inbounds i8, ptr %3547, i64 4
  store i16 %3470, ptr %3549, align 2
  %3550 = load ptr, ptr %3529, align 8, !tbaa !47
  %3551 = sext i32 %3389 to i64
  %3552 = getelementptr inbounds i16, ptr %3550, i64 %3551
  store i16 %3470, ptr %3552, align 2, !tbaa !70
  %3553 = load ptr, ptr %3538, align 8, !tbaa !47
  %3554 = getelementptr inbounds i16, ptr %3553, i64 %3551
  store i16 %3470, ptr %3554, align 2, !tbaa !70
  %3555 = sext i32 %3390 to i64
  %3556 = getelementptr inbounds i16, ptr %3553, i64 %3555
  store i16 %3470, ptr %3556, align 2, !tbaa !70
  %3557 = sext i32 %3391 to i64
  %3558 = getelementptr inbounds i16, ptr %3553, i64 %3557
  store i16 %3470, ptr %3558, align 2, !tbaa !70
  %3559 = load ptr, ptr %3545, align 8, !tbaa !47
  %3560 = getelementptr inbounds i16, ptr %3559, i64 %3551
  store i16 %3470, ptr %3560, align 2, !tbaa !70
  %3561 = getelementptr inbounds i16, ptr %3559, i64 %3555
  store i16 %3470, ptr %3561, align 2, !tbaa !70
  %3562 = getelementptr inbounds i16, ptr %3559, i64 %3557
  store i16 %3470, ptr %3562, align 2, !tbaa !70
  %3563 = sext i32 %3392 to i64
  %3564 = getelementptr inbounds i16, ptr %3559, i64 %3563
  store i16 %3470, ptr %3564, align 2, !tbaa !70
  %3565 = sext i32 %3393 to i64
  %3566 = getelementptr inbounds i16, ptr %3559, i64 %3565
  store i16 %3470, ptr %3566, align 2, !tbaa !70
  %3567 = getelementptr ptr, ptr %3488, i64 7
  %3568 = load ptr, ptr %3567, align 8, !tbaa !47
  %3569 = getelementptr inbounds i16, ptr %3568, i64 %3551
  store i16 %3470, ptr %3569, align 2, !tbaa !70
  %3570 = getelementptr inbounds i16, ptr %3568, i64 %3555
  store i16 %3470, ptr %3570, align 2, !tbaa !70
  %3571 = getelementptr inbounds i16, ptr %3568, i64 %3557
  store i16 %3470, ptr %3571, align 2, !tbaa !70
  %3572 = getelementptr inbounds i16, ptr %3568, i64 %3563
  store i16 %3470, ptr %3572, align 2, !tbaa !70
  %3573 = getelementptr inbounds i16, ptr %3568, i64 %3565
  store i16 %3470, ptr %3573, align 2, !tbaa !70
  %3574 = getelementptr i16, ptr %3568, i64 %3490
  %3575 = getelementptr i16, ptr %3574, i64 2
  store i16 %3470, ptr %3575, align 2, !tbaa !70
  %3576 = getelementptr i16, ptr %3574, i64 1
  store i16 %3470, ptr %3576, align 2, !tbaa !70
  store i16 %3470, ptr %3574, align 2, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %10) #6
  br label %4098

3577:                                             ; preds = %4
  %3578 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %3579 = load ptr, ptr %3578, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #6
  %3580 = icmp eq i32 %1, 0
  %3581 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 125
  %3582 = load ptr, ptr %3581, align 8, !tbaa !51
  br i1 %3580, label %3589, label %3583

3583:                                             ; preds = %3577
  %3584 = getelementptr inbounds %struct.storable_picture, ptr %3582, i64 0, i32 33
  %3585 = load ptr, ptr %3584, align 8, !tbaa !52
  %3586 = add i32 %1, -1
  %3587 = zext i32 %3586 to i64
  %3588 = getelementptr inbounds ptr, ptr %3585, i64 %3587
  br label %3591

3589:                                             ; preds = %3577
  %3590 = getelementptr inbounds %struct.storable_picture, ptr %3582, i64 0, i32 32
  br label %3591

3591:                                             ; preds = %3589, %3583
  %3592 = phi ptr [ %3588, %3583 ], [ %3590, %3589 ]
  %3593 = load ptr, ptr %3592, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6
  %3594 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 77
  %3595 = load ptr, ptr %3594, align 8, !tbaa !55
  %3596 = zext i32 %1 to i64
  %3597 = getelementptr inbounds ptr, ptr %3595, i64 %3596
  %3598 = load ptr, ptr %3597, align 8, !tbaa !47
  %3599 = getelementptr inbounds %struct.video_par, ptr %3579, i64 0, i32 81
  %3600 = add nsw i32 %2, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %3600, i32 noundef %3, ptr noundef nonnull %3599, ptr noundef nonnull %6) #6
  %3601 = add nsw i32 %3, -1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3601, ptr noundef nonnull %3599, ptr noundef nonnull %7) #6
  %3602 = add nsw i32 %2, 8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %3602, i32 noundef %3601, ptr noundef nonnull %3599, ptr noundef nonnull %8) #6
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef %3600, i32 noundef %3601, ptr noundef nonnull %3599, ptr noundef nonnull %9) #6
  %3603 = load i32, ptr %8, align 4, !tbaa !56
  %3604 = icmp ne i32 %3603, 0
  %3605 = icmp ne i32 %2, 8
  %3606 = icmp ne i32 %3, 8
  %3607 = or i1 %3605, %3606
  %3608 = and i1 %3607, %3604
  %3609 = zext i1 %3608 to i32
  store i32 %3609, ptr %8, align 4, !tbaa !56
  %3610 = getelementptr inbounds %struct.video_par, ptr %3579, i64 0, i32 1
  %3611 = load ptr, ptr %3610, align 8, !tbaa !58
  %3612 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %3611, i64 0, i32 30
  %3613 = load i32, ptr %3612, align 4, !tbaa !64
  %3614 = icmp eq i32 %3613, 0
  %3615 = load i32, ptr %6, align 4, !tbaa !56
  br i1 %3614, label %3664, label %3616

3616:                                             ; preds = %3591
  %3617 = icmp eq i32 %3615, 0
  br i1 %3617, label %3627, label %3618

3618:                                             ; preds = %3616
  %3619 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %3620 = load ptr, ptr %3619, align 8, !tbaa !66
  %3621 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %3622 = load i32, ptr %3621, align 4, !tbaa !67
  %3623 = sext i32 %3622 to i64
  %3624 = getelementptr inbounds i8, ptr %3620, i64 %3623
  %3625 = load i8, ptr %3624, align 1, !tbaa !48
  %3626 = sext i8 %3625 to i32
  br label %3627

3627:                                             ; preds = %3618, %3616
  %3628 = phi i32 [ %3626, %3618 ], [ 0, %3616 ]
  %3629 = load i32, ptr %7, align 4, !tbaa !56
  %3630 = icmp eq i32 %3629, 0
  br i1 %3630, label %3640, label %3631

3631:                                             ; preds = %3627
  %3632 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %3633 = load ptr, ptr %3632, align 8, !tbaa !66
  %3634 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %3635 = load i32, ptr %3634, align 4, !tbaa !67
  %3636 = sext i32 %3635 to i64
  %3637 = getelementptr inbounds i8, ptr %3633, i64 %3636
  %3638 = load i8, ptr %3637, align 1, !tbaa !48
  %3639 = sext i8 %3638 to i32
  br label %3640

3640:                                             ; preds = %3631, %3627
  %3641 = phi i32 [ %3639, %3631 ], [ 0, %3627 ]
  br i1 %3608, label %3642, label %3651

3642:                                             ; preds = %3640
  %3643 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %3644 = load ptr, ptr %3643, align 8, !tbaa !66
  %3645 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %3646 = load i32, ptr %3645, align 4, !tbaa !67
  %3647 = sext i32 %3646 to i64
  %3648 = getelementptr inbounds i8, ptr %3644, i64 %3647
  %3649 = load i8, ptr %3648, align 1, !tbaa !48
  %3650 = sext i8 %3649 to i32
  br label %3651

3651:                                             ; preds = %3642, %3640
  %3652 = phi i32 [ %3650, %3642 ], [ 0, %3640 ]
  %3653 = load i32, ptr %9, align 4, !tbaa !56
  %3654 = icmp eq i32 %3653, 0
  br i1 %3654, label %3667, label %3655

3655:                                             ; preds = %3651
  %3656 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 128
  %3657 = load ptr, ptr %3656, align 8, !tbaa !66
  %3658 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %3659 = load i32, ptr %3658, align 4, !tbaa !67
  %3660 = sext i32 %3659 to i64
  %3661 = getelementptr inbounds i8, ptr %3657, i64 %3660
  %3662 = load i8, ptr %3661, align 1, !tbaa !48
  %3663 = sext i8 %3662 to i32
  br label %3667

3664:                                             ; preds = %3591
  %3665 = load i32, ptr %7, align 4, !tbaa !56
  %3666 = load i32, ptr %9, align 4, !tbaa !56
  br label %3667

3667:                                             ; preds = %3664, %3655, %3651
  %3668 = phi i32 [ %3609, %3664 ], [ %3652, %3651 ], [ %3652, %3655 ]
  %3669 = phi i32 [ %3666, %3664 ], [ 0, %3651 ], [ %3663, %3655 ]
  %3670 = phi i32 [ %3615, %3664 ], [ %3628, %3651 ], [ %3628, %3655 ]
  %3671 = phi i32 [ %3665, %3664 ], [ %3641, %3651 ], [ %3641, %3655 ]
  %3672 = icmp ne i32 %3671, 0
  %3673 = icmp ne i32 %3670, 0
  %3674 = select i1 %3672, i1 %3673, i1 false
  %3675 = icmp ne i32 %3669, 0
  %3676 = select i1 %3674, i1 %3675, i1 false
  br i1 %3676, label %3681, label %3677

3677:                                             ; preds = %3667
  %3678 = getelementptr inbounds %struct.slice, ptr %60, i64 0, i32 20
  %3679 = load i32, ptr %3678, align 4, !tbaa !76
  %3680 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %3679)
  br label %3681

3681:                                             ; preds = %3677, %3667
  br i1 %3672, label %3682, label %3715

3682:                                             ; preds = %3681
  %3683 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %3684 = load i16, ptr %3683, align 2, !tbaa !68
  %3685 = sext i16 %3684 to i64
  %3686 = getelementptr inbounds ptr, ptr %3593, i64 %3685
  %3687 = load ptr, ptr %3686, align 8, !tbaa !47
  %3688 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %3689 = load i16, ptr %3688, align 4, !tbaa !69
  %3690 = sext i16 %3689 to i64
  %3691 = getelementptr inbounds i16, ptr %3687, i64 %3690
  %3692 = load i16, ptr %3691, align 2, !tbaa !70
  %3693 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %3692, ptr %3693, align 2, !tbaa !70
  %3694 = getelementptr inbounds i16, ptr %3691, i64 1
  %3695 = load i16, ptr %3694, align 2, !tbaa !70
  %3696 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  store i16 %3695, ptr %3696, align 4, !tbaa !70
  %3697 = getelementptr inbounds i16, ptr %3691, i64 2
  %3698 = load i16, ptr %3697, align 2, !tbaa !70
  %3699 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  store i16 %3698, ptr %3699, align 2, !tbaa !70
  %3700 = getelementptr inbounds i16, ptr %3691, i64 3
  %3701 = load i16, ptr %3700, align 2, !tbaa !70
  %3702 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  store i16 %3701, ptr %3702, align 8, !tbaa !70
  %3703 = getelementptr inbounds i16, ptr %3691, i64 4
  %3704 = load i16, ptr %3703, align 2, !tbaa !70
  %3705 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %3704, ptr %3705, align 2, !tbaa !70
  %3706 = getelementptr inbounds i16, ptr %3691, i64 5
  %3707 = load i16, ptr %3706, align 2, !tbaa !70
  %3708 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %3707, ptr %3708, align 4, !tbaa !70
  %3709 = getelementptr inbounds i16, ptr %3691, i64 6
  %3710 = load i16, ptr %3709, align 2, !tbaa !70
  %3711 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %3710, ptr %3711, align 2, !tbaa !70
  %3712 = getelementptr inbounds i16, ptr %3691, i64 7
  %3713 = load i16, ptr %3712, align 2, !tbaa !70
  %3714 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %3713, ptr %3714, align 16, !tbaa !70
  br label %3727

3715:                                             ; preds = %3681
  %3716 = getelementptr inbounds %struct.video_par, ptr %3579, i64 0, i32 69, i64 %3596
  %3717 = load i32, ptr %3716, align 4, !tbaa !71
  %3718 = trunc i32 %3717 to i16
  %3719 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  store i16 %3718, ptr %3719, align 16, !tbaa !70
  %3720 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  store i16 %3718, ptr %3720, align 2, !tbaa !70
  %3721 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  store i16 %3718, ptr %3721, align 4, !tbaa !70
  %3722 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  store i16 %3718, ptr %3722, align 2, !tbaa !70
  %3723 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  store i16 %3718, ptr %3723, align 8, !tbaa !70
  %3724 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  store i16 %3718, ptr %3724, align 2, !tbaa !70
  %3725 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  store i16 %3718, ptr %3725, align 4, !tbaa !70
  %3726 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %3718, ptr %3726, align 2, !tbaa !70
  br label %3727

3727:                                             ; preds = %3715, %3682
  %3728 = icmp eq i32 %3668, 0
  %3729 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 10
  br i1 %3728, label %3762, label %3730

3730:                                             ; preds = %3727
  %3731 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %3732 = load i16, ptr %3731, align 2, !tbaa !68
  %3733 = sext i16 %3732 to i64
  %3734 = getelementptr inbounds ptr, ptr %3593, i64 %3733
  %3735 = load ptr, ptr %3734, align 8, !tbaa !47
  %3736 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %3737 = load i16, ptr %3736, align 4, !tbaa !69
  %3738 = sext i16 %3737 to i64
  %3739 = getelementptr inbounds i16, ptr %3735, i64 %3738
  %3740 = load i16, ptr %3739, align 2, !tbaa !70
  %3741 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store i16 %3740, ptr %3741, align 2, !tbaa !70
  %3742 = getelementptr inbounds i16, ptr %3739, i64 1
  %3743 = load i16, ptr %3742, align 2, !tbaa !70
  store i16 %3743, ptr %3729, align 4, !tbaa !70
  %3744 = getelementptr inbounds i16, ptr %3739, i64 2
  %3745 = load i16, ptr %3744, align 2, !tbaa !70
  %3746 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  store i16 %3745, ptr %3746, align 2, !tbaa !70
  %3747 = getelementptr inbounds i16, ptr %3739, i64 3
  %3748 = load i16, ptr %3747, align 2, !tbaa !70
  %3749 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  store i16 %3748, ptr %3749, align 8, !tbaa !70
  %3750 = getelementptr inbounds i16, ptr %3739, i64 4
  %3751 = load i16, ptr %3750, align 2, !tbaa !70
  %3752 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %3751, ptr %3752, align 2, !tbaa !70
  %3753 = getelementptr inbounds i16, ptr %3739, i64 5
  %3754 = load i16, ptr %3753, align 2, !tbaa !70
  %3755 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %3754, ptr %3755, align 4, !tbaa !70
  %3756 = getelementptr inbounds i16, ptr %3739, i64 6
  %3757 = load i16, ptr %3756, align 2, !tbaa !70
  %3758 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %3757, ptr %3758, align 2, !tbaa !70
  %3759 = getelementptr inbounds i16, ptr %3739, i64 7
  %3760 = load i16, ptr %3759, align 2, !tbaa !70
  %3761 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %3760, ptr %3761, align 16, !tbaa !70
  br label %3772

3762:                                             ; preds = %3727
  %3763 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 8
  %3764 = load i16, ptr %3763, align 16, !tbaa !70
  %3765 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %3764, ptr %3765, align 16, !tbaa !70
  %3766 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 15
  store i16 %3764, ptr %3766, align 2, !tbaa !70
  %3767 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 14
  store i16 %3764, ptr %3767, align 4, !tbaa !70
  %3768 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 13
  store i16 %3764, ptr %3768, align 2, !tbaa !70
  %3769 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 12
  store i16 %3764, ptr %3769, align 8, !tbaa !70
  %3770 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 11
  store i16 %3764, ptr %3770, align 2, !tbaa !70
  store i16 %3764, ptr %3729, align 4, !tbaa !70
  %3771 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 9
  store i16 %3764, ptr %3771, align 2, !tbaa !70
  br label %3772

3772:                                             ; preds = %3762, %3730
  br i1 %3673, label %3773, label %3820

3773:                                             ; preds = %3772
  %3774 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %3775 = load i16, ptr %3774, align 2, !tbaa !68
  %3776 = sext i16 %3775 to i64
  %3777 = getelementptr inbounds ptr, ptr %3593, i64 %3776
  %3778 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %3779 = load i16, ptr %3778, align 4, !tbaa !69
  %3780 = getelementptr inbounds ptr, ptr %3777, i64 1
  %3781 = load ptr, ptr %3777, align 8, !tbaa !47
  %3782 = sext i16 %3779 to i64
  %3783 = getelementptr inbounds i16, ptr %3781, i64 %3782
  %3784 = load i16, ptr %3783, align 2, !tbaa !70
  %3785 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %3784, ptr %3785, align 2, !tbaa !70
  %3786 = getelementptr inbounds ptr, ptr %3777, i64 2
  %3787 = load ptr, ptr %3780, align 8, !tbaa !47
  %3788 = getelementptr inbounds i16, ptr %3787, i64 %3782
  %3789 = load i16, ptr %3788, align 2, !tbaa !70
  %3790 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %3789, ptr %3790, align 4, !tbaa !70
  %3791 = getelementptr inbounds ptr, ptr %3777, i64 3
  %3792 = load ptr, ptr %3786, align 8, !tbaa !47
  %3793 = getelementptr inbounds i16, ptr %3792, i64 %3782
  %3794 = load i16, ptr %3793, align 2, !tbaa !70
  %3795 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %3794, ptr %3795, align 2, !tbaa !70
  %3796 = getelementptr inbounds ptr, ptr %3777, i64 4
  %3797 = load ptr, ptr %3791, align 8, !tbaa !47
  %3798 = getelementptr inbounds i16, ptr %3797, i64 %3782
  %3799 = load i16, ptr %3798, align 2, !tbaa !70
  %3800 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %3799, ptr %3800, align 8, !tbaa !70
  %3801 = getelementptr inbounds ptr, ptr %3777, i64 5
  %3802 = load ptr, ptr %3796, align 8, !tbaa !47
  %3803 = getelementptr inbounds i16, ptr %3802, i64 %3782
  %3804 = load i16, ptr %3803, align 2, !tbaa !70
  %3805 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %3804, ptr %3805, align 2, !tbaa !70
  %3806 = getelementptr inbounds ptr, ptr %3777, i64 6
  %3807 = load ptr, ptr %3801, align 8, !tbaa !47
  %3808 = getelementptr inbounds i16, ptr %3807, i64 %3782
  %3809 = load i16, ptr %3808, align 2, !tbaa !70
  %3810 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %3809, ptr %3810, align 4, !tbaa !70
  %3811 = getelementptr inbounds ptr, ptr %3777, i64 7
  %3812 = load ptr, ptr %3806, align 8, !tbaa !47
  %3813 = getelementptr inbounds i16, ptr %3812, i64 %3782
  %3814 = load i16, ptr %3813, align 2, !tbaa !70
  %3815 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %3814, ptr %3815, align 2, !tbaa !70
  %3816 = load ptr, ptr %3811, align 8, !tbaa !47
  %3817 = getelementptr inbounds i16, ptr %3816, i64 %3782
  %3818 = load i16, ptr %3817, align 2, !tbaa !70
  %3819 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %3818, ptr %3819, align 16, !tbaa !70
  br label %3832

3820:                                             ; preds = %3772
  %3821 = getelementptr inbounds %struct.video_par, ptr %3579, i64 0, i32 69, i64 %3596
  %3822 = load i32, ptr %3821, align 4, !tbaa !71
  %3823 = trunc i32 %3822 to i16
  %3824 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %3823, ptr %3824, align 16, !tbaa !70
  %3825 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  store i16 %3823, ptr %3825, align 2, !tbaa !70
  %3826 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  store i16 %3823, ptr %3826, align 4, !tbaa !70
  %3827 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  store i16 %3823, ptr %3827, align 2, !tbaa !70
  %3828 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  store i16 %3823, ptr %3828, align 8, !tbaa !70
  %3829 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  store i16 %3823, ptr %3829, align 2, !tbaa !70
  %3830 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  store i16 %3823, ptr %3830, align 4, !tbaa !70
  %3831 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %3823, ptr %3831, align 2, !tbaa !70
  br label %3832

3832:                                             ; preds = %3820, %3773
  br i1 %3675, label %3833, label %3844

3833:                                             ; preds = %3832
  %3834 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %3835 = load i16, ptr %3834, align 2, !tbaa !68
  %3836 = sext i16 %3835 to i64
  %3837 = getelementptr inbounds ptr, ptr %3593, i64 %3836
  %3838 = load ptr, ptr %3837, align 8, !tbaa !47
  %3839 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %3840 = load i16, ptr %3839, align 4, !tbaa !69
  %3841 = sext i16 %3840 to i64
  %3842 = getelementptr inbounds i16, ptr %3838, i64 %3841
  %3843 = load i16, ptr %3842, align 2, !tbaa !70
  br label %3848

3844:                                             ; preds = %3832
  %3845 = getelementptr inbounds %struct.video_par, ptr %3579, i64 0, i32 69, i64 %3596
  %3846 = load i32, ptr %3845, align 4, !tbaa !71
  %3847 = trunc i32 %3846 to i16
  br label %3848

3848:                                             ; preds = %3833, %3844
  %3849 = phi i16 [ %3847, %3844 ], [ %3843, %3833 ]
  store i16 %3849, ptr %5, align 16, !tbaa !70
  call fastcc void @LowPassForIntra8x8Pred(ptr noundef nonnull %5, i32 noundef %3669, i32 noundef %3671, i32 noundef %3670)
  %3850 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  %3851 = load i16, ptr %3850, align 16, !tbaa !70
  %3852 = zext i16 %3851 to i32
  %3853 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 23
  %3854 = load i16, ptr %3853, align 2, !tbaa !70
  %3855 = zext i16 %3854 to i32
  %3856 = add nuw nsw i32 %3855, 1
  %3857 = add nuw nsw i32 %3856, %3852
  %3858 = lshr i32 %3857, 1
  %3859 = trunc i32 %3858 to i16
  %3860 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 22
  %3861 = load i16, ptr %3860, align 4, !tbaa !70
  %3862 = zext i16 %3861 to i32
  %3863 = shl nuw nsw i32 %3855, 1
  %3864 = add nuw nsw i32 %3862, 2
  %3865 = add nuw nsw i32 %3864, %3852
  %3866 = add nuw nsw i32 %3865, %3863
  %3867 = lshr i32 %3866, 2
  %3868 = trunc i32 %3867 to i16
  %3869 = add nuw nsw i32 %3855, 1
  %3870 = add nuw nsw i32 %3869, %3862
  %3871 = lshr i32 %3870, 1
  %3872 = trunc i32 %3871 to i16
  %3873 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 21
  %3874 = load i16, ptr %3873, align 2, !tbaa !70
  %3875 = zext i16 %3874 to i32
  %3876 = shl nuw nsw i32 %3862, 1
  %3877 = add nuw nsw i32 %3875, 2
  %3878 = add nuw nsw i32 %3877, %3855
  %3879 = add nuw nsw i32 %3878, %3876
  %3880 = lshr i32 %3879, 2
  %3881 = trunc i32 %3880 to i16
  %3882 = add nuw nsw i32 %3862, 1
  %3883 = add nuw nsw i32 %3882, %3875
  %3884 = lshr i32 %3883, 1
  %3885 = trunc i32 %3884 to i16
  %3886 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 20
  %3887 = load i16, ptr %3886, align 8, !tbaa !70
  %3888 = zext i16 %3887 to i32
  %3889 = shl nuw nsw i32 %3875, 1
  %3890 = add nuw nsw i32 %3862, 2
  %3891 = add nuw nsw i32 %3890, %3888
  %3892 = add nuw nsw i32 %3891, %3889
  %3893 = lshr i32 %3892, 2
  %3894 = trunc i32 %3893 to i16
  %3895 = add nuw nsw i32 %3875, 1
  %3896 = add nuw nsw i32 %3895, %3888
  %3897 = lshr i32 %3896, 1
  %3898 = trunc i32 %3897 to i16
  %3899 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 19
  %3900 = load i16, ptr %3899, align 2, !tbaa !70
  %3901 = zext i16 %3900 to i32
  %3902 = shl nuw nsw i32 %3888, 1
  %3903 = add nuw nsw i32 %3875, 2
  %3904 = add nuw nsw i32 %3903, %3901
  %3905 = add nuw nsw i32 %3904, %3902
  %3906 = lshr i32 %3905, 2
  %3907 = trunc i32 %3906 to i16
  %3908 = add nuw nsw i32 %3888, 1
  %3909 = add nuw nsw i32 %3908, %3901
  %3910 = lshr i32 %3909, 1
  %3911 = trunc i32 %3910 to i16
  %3912 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 18
  %3913 = load i16, ptr %3912, align 4, !tbaa !70
  %3914 = zext i16 %3913 to i32
  %3915 = shl nuw nsw i32 %3901, 1
  %3916 = add nuw nsw i32 %3888, 2
  %3917 = add nuw nsw i32 %3916, %3914
  %3918 = add nuw nsw i32 %3917, %3915
  %3919 = lshr i32 %3918, 2
  %3920 = trunc i32 %3919 to i16
  %3921 = add nuw nsw i32 %3901, 1
  %3922 = add nuw nsw i32 %3921, %3914
  %3923 = lshr i32 %3922, 1
  %3924 = trunc i32 %3923 to i16
  %3925 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  %3926 = load i16, ptr %3925, align 2, !tbaa !70
  %3927 = zext i16 %3926 to i32
  %3928 = shl nuw nsw i32 %3914, 1
  %3929 = add nuw nsw i32 %3901, 2
  %3930 = add nuw nsw i32 %3929, %3927
  %3931 = add nuw nsw i32 %3930, %3928
  %3932 = lshr i32 %3931, 2
  %3933 = trunc i32 %3932 to i16
  %3934 = add nuw nsw i32 %3914, 1
  %3935 = add nuw nsw i32 %3934, %3927
  %3936 = lshr i32 %3935, 1
  %3937 = trunc i32 %3936 to i16
  %3938 = load i16, ptr %5, align 16, !tbaa !70
  %3939 = zext i16 %3938 to i32
  %3940 = shl nuw nsw i32 %3927, 1
  %3941 = add nuw nsw i32 %3914, 2
  %3942 = add nuw nsw i32 %3941, %3939
  %3943 = add nuw nsw i32 %3942, %3940
  %3944 = lshr i32 %3943, 2
  %3945 = trunc i32 %3944 to i16
  %3946 = add nuw nsw i32 %3927, 1
  %3947 = add nuw nsw i32 %3946, %3939
  %3948 = lshr i32 %3947, 1
  %3949 = trunc i32 %3948 to i16
  %3950 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  %3951 = load i16, ptr %3950, align 2, !tbaa !70
  %3952 = zext i16 %3951 to i32
  %3953 = shl nuw nsw i32 %3939, 1
  %3954 = add nuw nsw i32 %3927, 2
  %3955 = add nuw nsw i32 %3954, %3952
  %3956 = add nuw nsw i32 %3955, %3953
  %3957 = lshr i32 %3956, 2
  %3958 = trunc i32 %3957 to i16
  %3959 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 2
  %3960 = load i16, ptr %3959, align 4, !tbaa !70
  %3961 = zext i16 %3960 to i32
  %3962 = shl nuw nsw i32 %3952, 1
  %3963 = add nuw nsw i32 %3939, 2
  %3964 = add nuw nsw i32 %3963, %3961
  %3965 = add nuw nsw i32 %3964, %3962
  %3966 = lshr i32 %3965, 2
  %3967 = trunc i32 %3966 to i16
  %3968 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 3
  %3969 = load i16, ptr %3968, align 2, !tbaa !70
  %3970 = zext i16 %3969 to i32
  %3971 = shl nuw nsw i32 %3961, 1
  %3972 = add nuw nsw i32 %3952, 2
  %3973 = add nuw nsw i32 %3972, %3970
  %3974 = add nuw nsw i32 %3973, %3971
  %3975 = lshr i32 %3974, 2
  %3976 = trunc i32 %3975 to i16
  %3977 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 4
  %3978 = load i16, ptr %3977, align 8, !tbaa !70
  %3979 = zext i16 %3978 to i32
  %3980 = shl nuw nsw i32 %3970, 1
  %3981 = add nuw nsw i32 %3961, 2
  %3982 = add nuw nsw i32 %3981, %3979
  %3983 = add nuw nsw i32 %3982, %3980
  %3984 = lshr i32 %3983, 2
  %3985 = trunc i32 %3984 to i16
  %3986 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 5
  %3987 = load i16, ptr %3986, align 2, !tbaa !70
  %3988 = zext i16 %3987 to i32
  %3989 = shl nuw nsw i32 %3979, 1
  %3990 = add nuw nsw i32 %3970, 2
  %3991 = add nuw nsw i32 %3990, %3988
  %3992 = add nuw nsw i32 %3991, %3989
  %3993 = lshr i32 %3992, 2
  %3994 = trunc i32 %3993 to i16
  %3995 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 6
  %3996 = load i16, ptr %3995, align 4, !tbaa !70
  %3997 = zext i16 %3996 to i32
  %3998 = shl nuw nsw i32 %3988, 1
  %3999 = add nuw nsw i32 %3979, 2
  %4000 = add nuw nsw i32 %3999, %3997
  %4001 = add nuw nsw i32 %4000, %3998
  %4002 = lshr i32 %4001, 2
  %4003 = trunc i32 %4002 to i16
  %4004 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 7
  %4005 = load i16, ptr %4004, align 2, !tbaa !70
  %4006 = zext i16 %4005 to i32
  %4007 = shl nuw nsw i32 %3997, 1
  %4008 = add nuw nsw i32 %3988, 2
  %4009 = add nuw nsw i32 %4008, %4006
  %4010 = add nuw nsw i32 %4009, %4007
  %4011 = lshr i32 %4010, 2
  %4012 = trunc i32 %4011 to i16
  %4013 = sext i32 %3 to i64
  %4014 = getelementptr inbounds ptr, ptr %3598, i64 %4013
  %4015 = load ptr, ptr %4014, align 8, !tbaa !47
  %4016 = sext i32 %2 to i64
  %4017 = getelementptr inbounds i16, ptr %4015, i64 %4016
  store i16 %3949, ptr %4017, align 2
  %4018 = getelementptr inbounds i8, ptr %4017, i64 2
  store i16 %3958, ptr %4018, align 2
  %4019 = getelementptr inbounds i8, ptr %4017, i64 4
  store i16 %3967, ptr %4019, align 2
  %4020 = getelementptr inbounds i8, ptr %4017, i64 6
  store i16 %3976, ptr %4020, align 2
  %4021 = getelementptr inbounds i8, ptr %4017, i64 8
  store i16 %3985, ptr %4021, align 2
  %4022 = getelementptr inbounds i8, ptr %4017, i64 10
  store i16 %3994, ptr %4022, align 2
  %4023 = getelementptr inbounds i8, ptr %4017, i64 12
  store i16 %4003, ptr %4023, align 2
  %4024 = getelementptr inbounds i8, ptr %4017, i64 14
  store i16 %4012, ptr %4024, align 2
  %4025 = getelementptr ptr, ptr %4014, i64 1
  %4026 = load ptr, ptr %4025, align 8, !tbaa !47
  %4027 = getelementptr inbounds i16, ptr %4026, i64 %4016
  store i16 %3937, ptr %4027, align 2
  %4028 = getelementptr inbounds i8, ptr %4027, i64 2
  store i16 %3945, ptr %4028, align 2
  %4029 = getelementptr inbounds i8, ptr %4027, i64 4
  store i16 %3949, ptr %4029, align 2
  %4030 = getelementptr inbounds i8, ptr %4027, i64 6
  store i16 %3958, ptr %4030, align 2
  %4031 = getelementptr inbounds i8, ptr %4027, i64 8
  store i16 %3967, ptr %4031, align 2
  %4032 = getelementptr inbounds i8, ptr %4027, i64 10
  store i16 %3976, ptr %4032, align 2
  %4033 = getelementptr inbounds i8, ptr %4027, i64 12
  store i16 %3985, ptr %4033, align 2
  %4034 = getelementptr inbounds i8, ptr %4027, i64 14
  store i16 %3994, ptr %4034, align 2
  %4035 = getelementptr ptr, ptr %4014, i64 2
  %4036 = load ptr, ptr %4035, align 8, !tbaa !47
  %4037 = getelementptr inbounds i16, ptr %4036, i64 %4016
  store i16 %3924, ptr %4037, align 2
  %4038 = getelementptr inbounds i8, ptr %4037, i64 2
  store i16 %3933, ptr %4038, align 2
  %4039 = getelementptr inbounds i8, ptr %4037, i64 4
  store i16 %3937, ptr %4039, align 2
  %4040 = getelementptr inbounds i8, ptr %4037, i64 6
  store i16 %3945, ptr %4040, align 2
  %4041 = getelementptr inbounds i8, ptr %4037, i64 8
  store i16 %3949, ptr %4041, align 2
  %4042 = getelementptr inbounds i8, ptr %4037, i64 10
  store i16 %3958, ptr %4042, align 2
  %4043 = getelementptr inbounds i8, ptr %4037, i64 12
  store i16 %3967, ptr %4043, align 2
  %4044 = getelementptr inbounds i8, ptr %4037, i64 14
  store i16 %3976, ptr %4044, align 2
  %4045 = getelementptr ptr, ptr %4014, i64 3
  %4046 = load ptr, ptr %4045, align 8, !tbaa !47
  %4047 = getelementptr inbounds i16, ptr %4046, i64 %4016
  store i16 %3911, ptr %4047, align 2
  %4048 = getelementptr inbounds i8, ptr %4047, i64 2
  store i16 %3920, ptr %4048, align 2
  %4049 = getelementptr inbounds i8, ptr %4047, i64 4
  store i16 %3924, ptr %4049, align 2
  %4050 = getelementptr inbounds i8, ptr %4047, i64 6
  store i16 %3933, ptr %4050, align 2
  %4051 = getelementptr inbounds i8, ptr %4047, i64 8
  store i16 %3937, ptr %4051, align 2
  %4052 = getelementptr inbounds i8, ptr %4047, i64 10
  store i16 %3945, ptr %4052, align 2
  %4053 = getelementptr inbounds i8, ptr %4047, i64 12
  store i16 %3949, ptr %4053, align 2
  %4054 = getelementptr inbounds i8, ptr %4047, i64 14
  store i16 %3958, ptr %4054, align 2
  %4055 = getelementptr ptr, ptr %4014, i64 4
  %4056 = load ptr, ptr %4055, align 8, !tbaa !47
  %4057 = getelementptr inbounds i16, ptr %4056, i64 %4016
  store i16 %3898, ptr %4057, align 2
  %4058 = getelementptr inbounds i8, ptr %4057, i64 2
  store i16 %3907, ptr %4058, align 2
  %4059 = getelementptr inbounds i8, ptr %4057, i64 4
  store i16 %3911, ptr %4059, align 2
  %4060 = getelementptr inbounds i8, ptr %4057, i64 6
  store i16 %3920, ptr %4060, align 2
  %4061 = getelementptr inbounds i8, ptr %4057, i64 8
  store i16 %3924, ptr %4061, align 2
  %4062 = getelementptr inbounds i8, ptr %4057, i64 10
  store i16 %3933, ptr %4062, align 2
  %4063 = getelementptr inbounds i8, ptr %4057, i64 12
  store i16 %3937, ptr %4063, align 2
  %4064 = getelementptr inbounds i8, ptr %4057, i64 14
  store i16 %3945, ptr %4064, align 2
  %4065 = getelementptr ptr, ptr %4014, i64 5
  %4066 = load ptr, ptr %4065, align 8, !tbaa !47
  %4067 = getelementptr inbounds i16, ptr %4066, i64 %4016
  store i16 %3885, ptr %4067, align 2
  %4068 = getelementptr inbounds i8, ptr %4067, i64 2
  store i16 %3894, ptr %4068, align 2
  %4069 = getelementptr inbounds i8, ptr %4067, i64 4
  store i16 %3898, ptr %4069, align 2
  %4070 = getelementptr inbounds i8, ptr %4067, i64 6
  store i16 %3907, ptr %4070, align 2
  %4071 = getelementptr inbounds i8, ptr %4067, i64 8
  store i16 %3911, ptr %4071, align 2
  %4072 = getelementptr inbounds i8, ptr %4067, i64 10
  store i16 %3920, ptr %4072, align 2
  %4073 = getelementptr inbounds i8, ptr %4067, i64 12
  store i16 %3924, ptr %4073, align 2
  %4074 = getelementptr inbounds i8, ptr %4067, i64 14
  store i16 %3933, ptr %4074, align 2
  %4075 = getelementptr ptr, ptr %4014, i64 6
  %4076 = load ptr, ptr %4075, align 8, !tbaa !47
  %4077 = getelementptr inbounds i16, ptr %4076, i64 %4016
  store i16 %3872, ptr %4077, align 2
  %4078 = getelementptr inbounds i8, ptr %4077, i64 2
  store i16 %3881, ptr %4078, align 2
  %4079 = getelementptr inbounds i8, ptr %4077, i64 4
  store i16 %3885, ptr %4079, align 2
  %4080 = getelementptr inbounds i8, ptr %4077, i64 6
  store i16 %3894, ptr %4080, align 2
  %4081 = getelementptr inbounds i8, ptr %4077, i64 8
  store i16 %3898, ptr %4081, align 2
  %4082 = getelementptr inbounds i8, ptr %4077, i64 10
  store i16 %3907, ptr %4082, align 2
  %4083 = getelementptr inbounds i8, ptr %4077, i64 12
  store i16 %3911, ptr %4083, align 2
  %4084 = getelementptr inbounds i8, ptr %4077, i64 14
  store i16 %3920, ptr %4084, align 2
  %4085 = getelementptr ptr, ptr %4014, i64 7
  %4086 = load ptr, ptr %4085, align 8, !tbaa !47
  %4087 = getelementptr inbounds i16, ptr %4086, i64 %4016
  store i16 %3859, ptr %4087, align 2
  %4088 = getelementptr inbounds i8, ptr %4087, i64 2
  store i16 %3868, ptr %4088, align 2
  %4089 = getelementptr inbounds i8, ptr %4087, i64 4
  store i16 %3872, ptr %4089, align 2
  %4090 = getelementptr inbounds i8, ptr %4087, i64 6
  store i16 %3881, ptr %4090, align 2
  %4091 = getelementptr inbounds i8, ptr %4087, i64 8
  store i16 %3885, ptr %4091, align 2
  %4092 = getelementptr inbounds i8, ptr %4087, i64 10
  store i16 %3894, ptr %4092, align 2
  %4093 = getelementptr inbounds i8, ptr %4087, i64 12
  store i16 %3898, ptr %4093, align 2
  %4094 = getelementptr inbounds i8, ptr %4087, i64 14
  store i16 %3907, ptr %4094, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #6
  br label %4098

4095:                                             ; preds = %4
  %4096 = zext i8 %68 to i32
  %4097 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %4096)
  br label %4098

4098:                                             ; preds = %4095, %3848, %3387, %2885, %2371, %1879, %1388, %1116, %826, %501
  %4099 = phi i32 [ 1, %4095 ], [ 0, %3848 ], [ 0, %3387 ], [ 0, %2885 ], [ 0, %2371 ], [ 0, %1879 ], [ 0, %1388 ], [ 0, %1116 ], [ 0, %826 ], [ 0, %501 ]
  ret i32 %4099
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @getNonAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @LowPassForIntra8x8Pred(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
  %5 = alloca [25 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(50) %5, ptr noundef nonnull align 2 dereferenceable(50) %0, i64 50, i1 false)
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %50, label %7

7:                                                ; preds = %4
  %8 = icmp ne i32 %2, 0
  %9 = icmp ne i32 %3, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = getelementptr inbounds i16, ptr %0, i64 17
  %13 = load i16, ptr %12, align 2, !tbaa !70
  %14 = zext i16 %13 to i32
  %15 = load i16, ptr %0, align 2, !tbaa !70
  %16 = zext i16 %15 to i32
  %17 = shl nuw nsw i32 %16, 1
  %18 = getelementptr inbounds i16, ptr %0, i64 1
  %19 = load i16, ptr %18, align 2, !tbaa !70
  %20 = zext i16 %19 to i32
  %21 = add nuw nsw i32 %14, 2
  %22 = add nuw nsw i32 %21, %17
  %23 = add nuw nsw i32 %22, %20
  %24 = lshr i32 %23, 2
  %25 = trunc i32 %24 to i16
  store i16 %25, ptr %5, align 16, !tbaa !70
  br label %50

26:                                               ; preds = %7
  br i1 %8, label %27, label %38

27:                                               ; preds = %26
  %28 = load i16, ptr %0, align 2, !tbaa !70
  %29 = zext i16 %28 to i32
  %30 = mul nuw nsw i32 %29, 3
  %31 = getelementptr inbounds i16, ptr %0, i64 1
  %32 = load i16, ptr %31, align 2, !tbaa !70
  %33 = zext i16 %32 to i32
  %34 = add nuw nsw i32 %33, 2
  %35 = add nuw nsw i32 %34, %30
  %36 = lshr i32 %35, 2
  %37 = trunc i32 %36 to i16
  store i16 %37, ptr %5, align 16, !tbaa !70
  br label %50

38:                                               ; preds = %26
  br i1 %9, label %39, label %50

39:                                               ; preds = %38
  %40 = load i16, ptr %0, align 2, !tbaa !70
  %41 = zext i16 %40 to i32
  %42 = mul nuw nsw i32 %41, 3
  %43 = getelementptr inbounds i16, ptr %0, i64 17
  %44 = load i16, ptr %43, align 2, !tbaa !70
  %45 = zext i16 %44 to i32
  %46 = add nuw nsw i32 %45, 2
  %47 = add nuw nsw i32 %46, %42
  %48 = lshr i32 %47, 2
  %49 = trunc i32 %48 to i16
  store i16 %49, ptr %5, align 16, !tbaa !70
  br label %50

50:                                               ; preds = %11, %38, %39, %27, %4
  %51 = icmp eq i32 %2, 0
  br i1 %51, label %114, label %52

52:                                               ; preds = %50
  br i1 %6, label %66, label %53

53:                                               ; preds = %52
  %54 = load i16, ptr %0, align 2, !tbaa !70
  %55 = zext i16 %54 to i32
  %56 = getelementptr inbounds i16, ptr %0, i64 1
  %57 = load i16, ptr %56, align 2, !tbaa !70
  %58 = zext i16 %57 to i32
  %59 = shl nuw nsw i32 %58, 1
  %60 = getelementptr inbounds i16, ptr %0, i64 2
  %61 = load i16, ptr %60, align 2, !tbaa !70
  %62 = zext i16 %61 to i32
  %63 = add nuw nsw i32 %55, 2
  %64 = add nuw nsw i32 %63, %59
  %65 = add nuw nsw i32 %64, %62
  br label %76

66:                                               ; preds = %52
  %67 = getelementptr inbounds i16, ptr %0, i64 1
  %68 = load i16, ptr %67, align 2, !tbaa !70
  %69 = zext i16 %68 to i32
  %70 = mul nuw nsw i32 %69, 3
  %71 = getelementptr inbounds i16, ptr %0, i64 2
  %72 = load i16, ptr %71, align 2, !tbaa !70
  %73 = zext i16 %72 to i32
  %74 = add nuw nsw i32 %73, 2
  %75 = add nuw nsw i32 %74, %70
  br label %76

76:                                               ; preds = %66, %53
  %77 = phi i32 [ %75, %66 ], [ %65, %53 ]
  %78 = lshr i32 %77, 2
  %79 = trunc i32 %78 to i16
  %80 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 1
  store i16 %79, ptr %80, align 2, !tbaa !70
  br label %81

81:                                               ; preds = %76, %81
  %82 = phi i64 [ 2, %76 ], [ %90, %81 ]
  %83 = getelementptr i16, ptr %0, i64 %82
  %84 = getelementptr i16, ptr %83, i64 -1
  %85 = load i16, ptr %84, align 2, !tbaa !70
  %86 = zext i16 %85 to i32
  %87 = load i16, ptr %83, align 2, !tbaa !70
  %88 = zext i16 %87 to i32
  %89 = shl nuw nsw i32 %88, 1
  %90 = add nuw nsw i64 %82, 1
  %91 = getelementptr inbounds i16, ptr %0, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !70
  %93 = zext i16 %92 to i32
  %94 = add nuw nsw i32 %86, 2
  %95 = add nuw nsw i32 %94, %89
  %96 = add nuw nsw i32 %95, %93
  %97 = lshr i32 %96, 2
  %98 = trunc i32 %97 to i16
  %99 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 %82
  store i16 %98, ptr %99, align 2, !tbaa !70
  %100 = icmp eq i64 %90, 16
  br i1 %100, label %101, label %81, !llvm.loop !81

101:                                              ; preds = %81
  %102 = getelementptr inbounds i16, ptr %0, i64 16
  %103 = load i16, ptr %102, align 2, !tbaa !70
  %104 = zext i16 %103 to i32
  %105 = mul nuw nsw i32 %104, 3
  %106 = getelementptr inbounds i16, ptr %0, i64 15
  %107 = load i16, ptr %106, align 2, !tbaa !70
  %108 = zext i16 %107 to i32
  %109 = add nuw nsw i32 %108, 2
  %110 = add nuw nsw i32 %109, %105
  %111 = lshr i32 %110, 2
  %112 = trunc i32 %111 to i16
  %113 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 16
  store i16 %112, ptr %113, align 16, !tbaa !70
  br label %114

114:                                              ; preds = %101, %50
  %115 = icmp eq i32 %3, 0
  br i1 %115, label %179, label %116

116:                                              ; preds = %114
  br i1 %6, label %130, label %117

117:                                              ; preds = %116
  %118 = load i16, ptr %0, align 2, !tbaa !70
  %119 = zext i16 %118 to i32
  %120 = getelementptr inbounds i16, ptr %0, i64 17
  %121 = load i16, ptr %120, align 2, !tbaa !70
  %122 = zext i16 %121 to i32
  %123 = shl nuw nsw i32 %122, 1
  %124 = getelementptr inbounds i16, ptr %0, i64 18
  %125 = load i16, ptr %124, align 2, !tbaa !70
  %126 = zext i16 %125 to i32
  %127 = add nuw nsw i32 %119, 2
  %128 = add nuw nsw i32 %127, %123
  %129 = add nuw nsw i32 %128, %126
  br label %140

130:                                              ; preds = %116
  %131 = getelementptr inbounds i16, ptr %0, i64 17
  %132 = load i16, ptr %131, align 2, !tbaa !70
  %133 = zext i16 %132 to i32
  %134 = mul nuw nsw i32 %133, 3
  %135 = getelementptr inbounds i16, ptr %0, i64 18
  %136 = load i16, ptr %135, align 2, !tbaa !70
  %137 = zext i16 %136 to i32
  %138 = add nuw nsw i32 %137, 2
  %139 = add nuw nsw i32 %138, %134
  br label %140

140:                                              ; preds = %130, %117
  %141 = phi i32 [ %139, %130 ], [ %129, %117 ]
  %142 = lshr i32 %141, 2
  %143 = trunc i32 %142 to i16
  %144 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 17
  store i16 %143, ptr %144, align 2, !tbaa !70
  br label %145

145:                                              ; preds = %140, %145
  %146 = phi i64 [ 18, %140 ], [ %154, %145 ]
  %147 = getelementptr i16, ptr %0, i64 %146
  %148 = getelementptr i16, ptr %147, i64 -1
  %149 = load i16, ptr %148, align 2, !tbaa !70
  %150 = zext i16 %149 to i32
  %151 = load i16, ptr %147, align 2, !tbaa !70
  %152 = zext i16 %151 to i32
  %153 = shl nuw nsw i32 %152, 1
  %154 = add nuw nsw i64 %146, 1
  %155 = getelementptr inbounds i16, ptr %0, i64 %154
  %156 = load i16, ptr %155, align 2, !tbaa !70
  %157 = zext i16 %156 to i32
  %158 = add nuw nsw i32 %150, 2
  %159 = add nuw nsw i32 %158, %153
  %160 = add nuw nsw i32 %159, %157
  %161 = lshr i32 %160, 2
  %162 = trunc i32 %161 to i16
  %163 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 %146
  store i16 %162, ptr %163, align 2, !tbaa !70
  %164 = icmp eq i64 %154, 24
  br i1 %164, label %165, label %145, !llvm.loop !82

165:                                              ; preds = %145
  %166 = getelementptr inbounds i16, ptr %0, i64 23
  %167 = load i16, ptr %166, align 2, !tbaa !70
  %168 = zext i16 %167 to i32
  %169 = getelementptr inbounds i16, ptr %0, i64 24
  %170 = load i16, ptr %169, align 2, !tbaa !70
  %171 = zext i16 %170 to i32
  %172 = shl nuw nsw i32 %171, 1
  %173 = add nuw nsw i32 %168, 2
  %174 = add nuw nsw i32 %173, %171
  %175 = add nuw nsw i32 %174, %172
  %176 = lshr i32 %175, 2
  %177 = trunc i32 %176 to i16
  %178 = getelementptr inbounds [25 x i16], ptr %5, i64 0, i64 24
  store i16 %177, ptr %178, align 16, !tbaa !70
  br label %179

179:                                              ; preds = %165, %114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(50) %0, ptr noundef nonnull align 16 dereferenceable(50) %5, i64 50, i1 false)
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %5) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!34 = !{!35, !39, i64 32}
!35 = !{!"macroblock", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !40, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !37, i64 80, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !41, i64 108, !37, i64 110, !37, i64 111, !41, i64 112, !41, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !37, i64 154, !39, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !39, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !41, i64 376, !41, i64 378, !41, i64 380, !39, i64 384, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !37, i64 472}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"", !41, i64 0, !41, i64 2}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !39, i64 36}
!43 = !{!35, !36, i64 0}
!44 = !{!45, !36, i64 13536}
!45 = !{!"slice", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !37, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !41, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !37, i64 136, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !37, i64 256, !37, i64 264, !36, i64 312, !36, i64 320, !36, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !39, i64 1176, !39, i64 1180, !39, i64 1184, !46, i64 1188, !41, i64 1220, !41, i64 1222, !41, i64 1224, !39, i64 1228, !39, i64 1232, !39, i64 1236, !39, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !37, i64 1288, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !39, i64 13264, !39, i64 13268, !41, i64 13272, !41, i64 13274, !41, i64 13276, !41, i64 13278, !36, i64 13280, !36, i64 13288, !36, i64 13296, !41, i64 13304, !41, i64 13306, !39, i64 13308, !39, i64 13312, !36, i64 13320, !36, i64 13328, !39, i64 13336, !37, i64 13340, !36, i64 13408, !36, i64 13416, !36, i64 13424, !36, i64 13432, !36, i64 13440, !36, i64 13448, !36, i64 13456, !36, i64 13464, !36, i64 13472, !36, i64 13480, !36, i64 13488, !36, i64 13496, !39, i64 13504, !36, i64 13512, !36, i64 13520, !36, i64 13528, !36, i64 13536, !36, i64 13544, !37, i64 13552}
!46 = !{!"nalunitheadermvcext_tag", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!47 = !{!36, !36, i64 0}
!48 = !{!37, !37, i64 0}
!49 = !{!35, !37, i64 372}
!50 = !{!35, !36, i64 8}
!51 = !{!45, !36, i64 13520}
!52 = !{!53, !36, i64 136}
!53 = !{!"storable_picture", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !37, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !41, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !37, i64 160, !54, i64 184, !37, i64 192, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !37, i64 300, !39, i64 308, !36, i64 312, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !36, i64 336, !39, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !36, i64 376, !39, i64 384, !39, i64 388, !37, i64 392, !37, i64 400}
!54 = !{!"pic_motion_params_old", !36, i64 0}
!55 = !{!45, !36, i64 1248}
!56 = !{!57, !39, i64 0}
!57 = !{!"pix_pos", !39, i64 0, !39, i64 4, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14}
!58 = !{!59, !36, i64 8}
!59 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !41, i64 849040, !41, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !60, i64 849304, !60, i64 849624, !60, i64 849944, !60, i64 850264, !60, i64 850584, !60, i64 850904, !60, i64 851224, !60, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !63, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!60 = !{!"image_data", !61, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!61 = !{!"frame_format", !39, i64 0, !39, i64 4, !62, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!62 = !{!"double", !37, i64 0}
!63 = !{!"long", !37, i64 0}
!64 = !{!65, !39, i64 2204}
!65 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 72, !37, i64 456, !37, i64 1992, !37, i64 2016, !39, i64 2040, !39, i64 2044, !39, i64 2048, !37, i64 2052, !37, i64 2084, !37, i64 2116, !39, i64 2148, !39, i64 2152, !39, i64 2156, !36, i64 2160, !39, i64 2168, !39, i64 2172, !39, i64 2176, !39, i64 2180, !39, i64 2184, !39, i64 2188, !39, i64 2192, !39, i64 2196, !39, i64 2200, !39, i64 2204, !39, i64 2208}
!66 = !{!45, !36, i64 13544}
!67 = !{!57, !39, i64 4}
!68 = !{!57, !41, i64 14}
!69 = !{!57, !41, i64 12}
!70 = !{!41, !41, i64 0}
!71 = !{!39, !39, i64 0}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = distinct !{!75, !73, !74}
!76 = !{!45, !39, i64 108}
!77 = distinct !{!77, !73, !74}
!78 = distinct !{!78, !73, !74}
!79 = distinct !{!79, !73, !74}
!80 = distinct !{!80, !73, !74}
!81 = distinct !{!81, !73, !74}
!82 = distinct !{!82, !73, !74}
