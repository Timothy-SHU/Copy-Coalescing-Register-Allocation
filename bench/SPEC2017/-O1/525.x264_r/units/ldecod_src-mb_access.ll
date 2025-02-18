; ModuleID = 'ldecod_src/mb_access.c'
source_filename = "ldecod_src/mb_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }

@PicPos = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @mb_is_available(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, 0
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 125
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 27
  %9 = load i32, ptr %8, align 4, !tbaa !45
  %10 = icmp sgt i32 %9, %0
  br i1 %10, label %11, label %25

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 20
  %13 = load i32, ptr %12, align 8, !tbaa !48
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 124
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = zext nneg i32 %0 to i64
  %19 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 21
  %20 = load i16, ptr %19, align 4, !tbaa !50
  %21 = getelementptr inbounds %struct.macroblock, ptr %1, i64 0, i32 21
  %22 = load i16, ptr %21, align 4, !tbaa !50
  %23 = icmp eq i16 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15, %11
  br label %25

25:                                               ; preds = %15, %2, %4, %24
  %26 = phi i32 [ 1, %24 ], [ 0, %4 ], [ 0, %2 ], [ 0, %15 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @CheckAvailabilityOfNeighbors(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 125
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 25
  %8 = load i32, ptr %7, align 4, !tbaa !52
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 47
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 48
  br i1 %9, label %133, label %12

12:                                               ; preds = %1
  %13 = ashr i32 %6, 1
  %14 = and i32 %6, -2
  %15 = add i32 %14, -2
  %16 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 46
  store i32 %15, ptr %16, align 4, !tbaa !53
  %17 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 26
  %18 = load i32, ptr %17, align 8, !tbaa !54
  %19 = sub i32 %13, %18
  %20 = shl i32 %19, 1
  store i32 %20, ptr %10, align 8, !tbaa !55
  %21 = add i32 %20, 2
  store i32 %21, ptr %11, align 4, !tbaa !56
  %22 = xor i32 %18, -1
  %23 = add i32 %13, %22
  %24 = shl i32 %23, 1
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 49
  store i32 %24, ptr %25, align 8, !tbaa !57
  %26 = icmp slt i32 %15, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 27
  %29 = load i32, ptr %28, align 4, !tbaa !45
  %30 = icmp sgt i32 %29, %15
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 20
  %33 = load i32, ptr %32, align 8, !tbaa !48
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 124
  %37 = load ptr, ptr %36, align 8, !tbaa !49
  %38 = zext nneg i32 %15 to i64
  %39 = getelementptr inbounds %struct.macroblock, ptr %37, i64 %38, i32 21
  %40 = load i16, ptr %39, align 4, !tbaa !50
  %41 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 21
  %42 = load i16, ptr %41, align 4, !tbaa !50
  %43 = icmp eq i16 %40, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %35, %31
  %45 = load ptr, ptr @PicPos, align 8, !tbaa !58
  %46 = sext i32 %13 to i64
  %47 = getelementptr inbounds %struct.BlockPos, ptr %45, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !59
  %49 = icmp ne i16 %48, 0
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %35, %27, %12, %44
  %52 = phi i32 [ %50, %44 ], [ 0, %12 ], [ 0, %27 ], [ 0, %35 ]
  %53 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 50
  store i32 %52, ptr %53, align 4, !tbaa !60
  %54 = icmp slt i32 %20, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 27
  %57 = load i32, ptr %56, align 4, !tbaa !45
  %58 = icmp sgt i32 %57, %20
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 20
  %61 = load i32, ptr %60, align 8, !tbaa !48
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 124
  %65 = load ptr, ptr %64, align 8, !tbaa !49
  %66 = zext nneg i32 %20 to i64
  %67 = getelementptr inbounds %struct.macroblock, ptr %65, i64 %66, i32 21
  %68 = load i16, ptr %67, align 4, !tbaa !50
  %69 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 21
  %70 = load i16, ptr %69, align 4, !tbaa !50
  %71 = icmp eq i16 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63, %59
  br label %73

73:                                               ; preds = %51, %55, %63, %72
  %74 = phi i32 [ 1, %72 ], [ 0, %55 ], [ 0, %51 ], [ 0, %63 ]
  %75 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 51
  store i32 %74, ptr %75, align 8, !tbaa !61
  %76 = icmp slt i32 %21, 0
  br i1 %76, label %102, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 27
  %79 = load i32, ptr %78, align 4, !tbaa !45
  %80 = icmp sgt i32 %79, %21
  br i1 %80, label %81, label %102

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 20
  %83 = load i32, ptr %82, align 8, !tbaa !48
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 124
  %87 = load ptr, ptr %86, align 8, !tbaa !49
  %88 = zext nneg i32 %21 to i64
  %89 = getelementptr inbounds %struct.macroblock, ptr %87, i64 %88, i32 21
  %90 = load i16, ptr %89, align 4, !tbaa !50
  %91 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 21
  %92 = load i16, ptr %91, align 4, !tbaa !50
  %93 = icmp eq i16 %90, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %85, %81
  %95 = load ptr, ptr @PicPos, align 8, !tbaa !58
  %96 = sext i32 %13 to i64
  %97 = getelementptr %struct.BlockPos, ptr %95, i64 %96
  %98 = getelementptr %struct.BlockPos, ptr %97, i64 1
  %99 = load i16, ptr %98, align 2, !tbaa !59
  %100 = icmp ne i16 %99, 0
  %101 = zext i1 %100 to i32
  br label %102

102:                                              ; preds = %85, %77, %73, %94
  %103 = phi i32 [ %101, %94 ], [ 0, %73 ], [ 0, %77 ], [ 0, %85 ]
  %104 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 52
  store i32 %103, ptr %104, align 4, !tbaa !62
  %105 = icmp slt i32 %24, 0
  br i1 %105, label %130, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 27
  %108 = load i32, ptr %107, align 4, !tbaa !45
  %109 = icmp sgt i32 %108, %24
  br i1 %109, label %110, label %130

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 20
  %112 = load i32, ptr %111, align 8, !tbaa !48
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 124
  %116 = load ptr, ptr %115, align 8, !tbaa !49
  %117 = zext nneg i32 %24 to i64
  %118 = getelementptr inbounds %struct.macroblock, ptr %116, i64 %117, i32 21
  %119 = load i16, ptr %118, align 4, !tbaa !50
  %120 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 21
  %121 = load i16, ptr %120, align 4, !tbaa !50
  %122 = icmp eq i16 %119, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %114, %110
  %124 = load ptr, ptr @PicPos, align 8, !tbaa !58
  %125 = sext i32 %13 to i64
  %126 = getelementptr inbounds %struct.BlockPos, ptr %124, i64 %125
  %127 = load i16, ptr %126, align 2, !tbaa !59
  %128 = icmp ne i16 %127, 0
  %129 = zext i1 %128 to i32
  br label %130

130:                                              ; preds = %114, %106, %102, %123
  %131 = phi i32 [ %129, %123 ], [ 0, %102 ], [ 0, %106 ], [ 0, %114 ]
  %132 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 53
  store i32 %131, ptr %132, align 8, !tbaa !63
  br label %249

133:                                              ; preds = %1
  %134 = add nsw i32 %6, -1
  %135 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 46
  store i32 %134, ptr %135, align 4, !tbaa !53
  %136 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 26
  %137 = load i32, ptr %136, align 8, !tbaa !54
  %138 = sub i32 %6, %137
  %139 = add i32 %138, -1
  %140 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 49
  store i32 %139, ptr %140, align 8, !tbaa !57
  store i32 %138, ptr %10, align 8, !tbaa !55
  %141 = add nsw i32 %138, 1
  store i32 %141, ptr %11, align 4, !tbaa !56
  %142 = icmp slt i32 %6, 1
  br i1 %142, label %167, label %143

143:                                              ; preds = %133
  %144 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 27
  %145 = load i32, ptr %144, align 4, !tbaa !45
  %146 = icmp slt i32 %145, %6
  br i1 %146, label %167, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 20
  %149 = load i32, ptr %148, align 8, !tbaa !48
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 124
  %153 = load ptr, ptr %152, align 8, !tbaa !49
  %154 = zext nneg i32 %134 to i64
  %155 = getelementptr inbounds %struct.macroblock, ptr %153, i64 %154, i32 21
  %156 = load i16, ptr %155, align 4, !tbaa !50
  %157 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 21
  %158 = load i16, ptr %157, align 4, !tbaa !50
  %159 = icmp eq i16 %156, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %151, %147
  %161 = load ptr, ptr @PicPos, align 8, !tbaa !58
  %162 = zext nneg i32 %6 to i64
  %163 = getelementptr inbounds %struct.BlockPos, ptr %161, i64 %162
  %164 = load i16, ptr %163, align 2, !tbaa !59
  %165 = icmp ne i16 %164, 0
  %166 = zext i1 %165 to i32
  br label %167

167:                                              ; preds = %151, %143, %133, %160
  %168 = phi i32 [ %166, %160 ], [ 0, %133 ], [ 0, %143 ], [ 0, %151 ]
  %169 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 50
  store i32 %168, ptr %169, align 4, !tbaa !60
  %170 = icmp slt i32 %139, 0
  br i1 %170, label %195, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 27
  %173 = load i32, ptr %172, align 4, !tbaa !45
  %174 = icmp sgt i32 %173, %139
  br i1 %174, label %175, label %195

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 20
  %177 = load i32, ptr %176, align 8, !tbaa !48
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 124
  %181 = load ptr, ptr %180, align 8, !tbaa !49
  %182 = zext nneg i32 %139 to i64
  %183 = getelementptr inbounds %struct.macroblock, ptr %181, i64 %182, i32 21
  %184 = load i16, ptr %183, align 4, !tbaa !50
  %185 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 21
  %186 = load i16, ptr %185, align 4, !tbaa !50
  %187 = icmp eq i16 %184, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %179, %175
  %189 = load ptr, ptr @PicPos, align 8, !tbaa !58
  %190 = sext i32 %6 to i64
  %191 = getelementptr inbounds %struct.BlockPos, ptr %189, i64 %190
  %192 = load i16, ptr %191, align 2, !tbaa !59
  %193 = icmp ne i16 %192, 0
  %194 = zext i1 %193 to i32
  br label %195

195:                                              ; preds = %179, %171, %167, %188
  %196 = phi i32 [ %194, %188 ], [ 0, %167 ], [ 0, %171 ], [ 0, %179 ]
  %197 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 53
  store i32 %196, ptr %197, align 8, !tbaa !63
  %198 = icmp slt i32 %138, -1
  br i1 %198, label %224, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 27
  %201 = load i32, ptr %200, align 4, !tbaa !45
  %202 = icmp sgt i32 %201, %141
  br i1 %202, label %203, label %224

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 20
  %205 = load i32, ptr %204, align 8, !tbaa !48
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 124
  %209 = load ptr, ptr %208, align 8, !tbaa !49
  %210 = zext nneg i32 %141 to i64
  %211 = getelementptr inbounds %struct.macroblock, ptr %209, i64 %210, i32 21
  %212 = load i16, ptr %211, align 4, !tbaa !50
  %213 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 21
  %214 = load i16, ptr %213, align 4, !tbaa !50
  %215 = icmp eq i16 %212, %214
  br i1 %215, label %216, label %224

216:                                              ; preds = %207, %203
  %217 = load ptr, ptr @PicPos, align 8, !tbaa !58
  %218 = sext i32 %6 to i64
  %219 = getelementptr %struct.BlockPos, ptr %217, i64 %218
  %220 = getelementptr %struct.BlockPos, ptr %219, i64 1
  %221 = load i16, ptr %220, align 2, !tbaa !59
  %222 = icmp ne i16 %221, 0
  %223 = zext i1 %222 to i32
  br label %224

224:                                              ; preds = %207, %199, %195, %216
  %225 = phi i32 [ %223, %216 ], [ 0, %195 ], [ 0, %199 ], [ 0, %207 ]
  %226 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 52
  store i32 %225, ptr %226, align 4, !tbaa !62
  %227 = icmp slt i32 %138, 0
  br i1 %227, label %246, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.storable_picture, ptr %4, i64 0, i32 27
  %230 = load i32, ptr %229, align 4, !tbaa !45
  %231 = icmp sgt i32 %230, %138
  br i1 %231, label %232, label %246

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 20
  %234 = load i32, ptr %233, align 8, !tbaa !48
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 124
  %238 = load ptr, ptr %237, align 8, !tbaa !49
  %239 = zext nneg i32 %138 to i64
  %240 = getelementptr inbounds %struct.macroblock, ptr %238, i64 %239, i32 21
  %241 = load i16, ptr %240, align 4, !tbaa !50
  %242 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 21
  %243 = load i16, ptr %242, align 4, !tbaa !50
  %244 = icmp eq i16 %241, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %236, %232
  br label %246

246:                                              ; preds = %224, %228, %236, %245
  %247 = phi i32 [ 1, %245 ], [ 0, %228 ], [ 0, %224 ], [ 0, %236 ]
  %248 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 51
  store i32 %247, ptr %248, align 8, !tbaa !61
  br label %249

249:                                              ; preds = %246, %130
  %250 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 50
  %251 = load i32, ptr %250, align 4, !tbaa !60
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %260, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 124
  %255 = load ptr, ptr %254, align 8, !tbaa !49
  %256 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 46
  %257 = load i32, ptr %256, align 4, !tbaa !53
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.macroblock, ptr %255, i64 %258
  br label %260

260:                                              ; preds = %249, %253
  %261 = phi ptr [ %259, %253 ], [ null, %249 ]
  %262 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 27
  store ptr %261, ptr %262, align 8, !tbaa !64
  %263 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 51
  %264 = load i32, ptr %263, align 8, !tbaa !61
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %273, label %266

266:                                              ; preds = %260
  %267 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 124
  %268 = load ptr, ptr %267, align 8, !tbaa !49
  %269 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 47
  %270 = load i32, ptr %269, align 8, !tbaa !55
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.macroblock, ptr %268, i64 %271
  br label %273

273:                                              ; preds = %260, %266
  %274 = phi ptr [ %272, %266 ], [ null, %260 ]
  %275 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  store ptr %274, ptr %275, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @get_mb_block_pos_normal(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr @PicPos, align 8, !tbaa !58
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds %struct.BlockPos, ptr %4, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !59
  store i16 %7, ptr %1, align 2, !tbaa !66
  %8 = getelementptr inbounds %struct.BlockPos, ptr %4, i64 %5, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !67
  store i16 %9, ptr %2, align 2, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @get_mb_block_pos_mbaff(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr @PicPos, align 8, !tbaa !58
  %5 = ashr i32 %0, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.BlockPos, ptr %4, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !59
  store i16 %8, ptr %1, align 2, !tbaa !66
  %9 = getelementptr inbounds %struct.BlockPos, ptr %4, i64 %6, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !67
  %11 = sext i16 %10 to i32
  %12 = shl nsw i32 %11, 1
  %13 = and i32 %0, 1
  %14 = or disjoint i32 %12, %13
  %15 = trunc i32 %14 to i16
  store i16 %15, ptr %2, align 2, !tbaa !66
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @get_mb_pos(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 161
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  tail call void %7(i32 noundef %1, ptr noundef %3, ptr noundef %4) #3
  %8 = load i16, ptr %3, align 2, !tbaa !66
  %9 = load i32, ptr %2, align 4, !tbaa !74
  %10 = trunc i32 %9 to i16
  %11 = mul i16 %8, %10
  store i16 %11, ptr %3, align 2, !tbaa !66
  %12 = load i16, ptr %4, align 2, !tbaa !66
  %13 = getelementptr inbounds i32, ptr %2, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !74
  %15 = trunc i32 %14 to i16
  %16 = mul i16 %12, %15
  store i16 %16, ptr %4, align 2, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @getNonAffNeighbour(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4) local_unnamed_addr #1 {
  %6 = load i32, ptr %3, align 4, !tbaa !74
  %7 = getelementptr inbounds i32, ptr %3, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !74
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %5
  %11 = icmp slt i32 %2, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 49
  %14 = load i32, ptr %13, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  store i32 %14, ptr %15, align 4, !tbaa !75
  %16 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 53
  %17 = load i32, ptr %16, align 8, !tbaa !63
  br label %49

18:                                               ; preds = %10
  %19 = icmp sgt i32 %8, %2
  br i1 %19, label %20, label %49

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 46
  %22 = load i32, ptr %21, align 4, !tbaa !53
  %23 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !75
  %24 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 50
  %25 = load i32, ptr %24, align 4, !tbaa !60
  br label %49

26:                                               ; preds = %5
  %27 = icmp sgt i32 %6, %1
  %28 = icmp slt i32 %2, 0
  br i1 %27, label %29, label %42

29:                                               ; preds = %26
  br i1 %28, label %30, label %36

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 47
  %32 = load i32, ptr %31, align 8, !tbaa !55
  %33 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  store i32 %32, ptr %33, align 4, !tbaa !75
  %34 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 51
  %35 = load i32, ptr %34, align 8, !tbaa !61
  br label %49

36:                                               ; preds = %29
  %37 = icmp sgt i32 %8, %2
  br i1 %37, label %38, label %49

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !51
  %41 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  store i32 %40, ptr %41, align 4, !tbaa !75
  br label %49

42:                                               ; preds = %26
  br i1 %28, label %43, label %49

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 48
  %45 = load i32, ptr %44, align 4, !tbaa !56
  %46 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  store i32 %45, ptr %46, align 4, !tbaa !75
  %47 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 52
  %48 = load i32, ptr %47, align 4, !tbaa !62
  br label %49

49:                                               ; preds = %42, %36, %18, %38, %30, %43, %12, %20
  %50 = phi i32 [ 1, %38 ], [ %35, %30 ], [ %48, %43 ], [ %17, %12 ], [ %25, %20 ], [ 0, %18 ], [ 0, %36 ], [ 0, %42 ]
  store i32 %50, ptr %4, align 4, !tbaa !77
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 20
  %54 = load i32, ptr %53, align 8, !tbaa !48
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %82, label %56

56:                                               ; preds = %52, %49
  %57 = load ptr, ptr @PicPos, align 8, !tbaa !58
  %58 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !75
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.BlockPos, ptr %57, i64 %60
  %62 = add i32 %6, 65535
  %63 = and i32 %62, %1
  %64 = trunc i32 %63 to i16
  %65 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 2
  store i16 %64, ptr %65, align 4, !tbaa !78
  %66 = add i32 %8, 65535
  %67 = and i32 %66, %2
  %68 = trunc i32 %67 to i16
  %69 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 3
  store i16 %68, ptr %69, align 2, !tbaa !79
  %70 = load i16, ptr %61, align 2, !tbaa !59
  %71 = zext i16 %70 to i32
  %72 = mul i32 %6, %71
  %73 = add i32 %72, %63
  %74 = trunc i32 %73 to i16
  %75 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 4
  store i16 %74, ptr %75, align 4, !tbaa !80
  %76 = getelementptr inbounds %struct.BlockPos, ptr %57, i64 %60, i32 1
  %77 = load i16, ptr %76, align 2, !tbaa !67
  %78 = trunc i32 %8 to i16
  %79 = mul i16 %77, %78
  %80 = add i16 %79, %68
  %81 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 5
  store i16 %80, ptr %81, align 2, !tbaa !81
  br label %82

82:                                               ; preds = %56, %52
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @getAffNeighbour(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = load i32, ptr %3, align 4, !tbaa !74
  %9 = getelementptr inbounds i32, ptr %3, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !74
  store i32 0, ptr %4, align 4, !tbaa !77
  %11 = add i32 %10, 65535
  %12 = icmp sgt i32 %10, %2
  br i1 %12, label %13, label %303

13:                                               ; preds = %5
  %14 = add i32 %8, 65535
  %15 = icmp sle i32 %8, %1
  %16 = icmp sgt i32 %2, -1
  %17 = and i1 %16, %15
  br i1 %17, label %303, label %18

18:                                               ; preds = %13
  %19 = icmp slt i32 %1, 0
  br i1 %19, label %20, label %153

20:                                               ; preds = %18
  %21 = icmp slt i32 %2, 0
  %22 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %23 = load i32, ptr %22, align 8, !tbaa !83
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !51
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %21, label %29, label %79

29:                                               ; preds = %20
  br i1 %24, label %30, label %56

30:                                               ; preds = %29
  br i1 %28, label %31, label %38

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 49
  %33 = load i32, ptr %32, align 8, !tbaa !57
  %34 = add nsw i32 %33, 1
  %35 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  store i32 %34, ptr %35, align 4, !tbaa !75
  %36 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 53
  %37 = load i32, ptr %36, align 8, !tbaa !63
  store i32 %37, ptr %4, align 4, !tbaa !77
  br label %270

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 46
  %40 = load i32, ptr %39, align 4, !tbaa !53
  %41 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  store i32 %40, ptr %41, align 4, !tbaa !75
  %42 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 50
  %43 = load i32, ptr %42, align 4, !tbaa !60
  store i32 %43, ptr %4, align 4, !tbaa !77
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %270, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 35
  %47 = load ptr, ptr %46, align 8, !tbaa !84
  %48 = sext i32 %40 to i64
  %49 = getelementptr inbounds %struct.macroblock, ptr %47, i64 %48, i32 45
  %50 = load i32, ptr %49, align 8, !tbaa !83
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %270, label %52

52:                                               ; preds = %45
  %53 = add nsw i32 %40, 1
  store i32 %53, ptr %41, align 4, !tbaa !75
  %54 = add nsw i32 %10, %2
  %55 = ashr i32 %54, 1
  br label %270

56:                                               ; preds = %29
  %57 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 49
  %58 = load i32, ptr %57, align 8, !tbaa !57
  br i1 %28, label %59, label %74

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  store i32 %58, ptr %60, align 4, !tbaa !75
  %61 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 53
  %62 = load i32, ptr %61, align 8, !tbaa !63
  store i32 %62, ptr %4, align 4, !tbaa !77
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %270, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 35
  %66 = load ptr, ptr %65, align 8, !tbaa !84
  %67 = sext i32 %58 to i64
  %68 = getelementptr inbounds %struct.macroblock, ptr %66, i64 %67, i32 45
  %69 = load i32, ptr %68, align 8, !tbaa !83
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %270

71:                                               ; preds = %64
  %72 = add nsw i32 %58, 1
  store i32 %72, ptr %60, align 4, !tbaa !75
  %73 = shl nsw i32 %2, 1
  br label %270

74:                                               ; preds = %56
  %75 = add nsw i32 %58, 1
  %76 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  store i32 %75, ptr %76, align 4, !tbaa !75
  %77 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 53
  %78 = load i32, ptr %77, align 8, !tbaa !63
  store i32 %78, ptr %4, align 4, !tbaa !77
  br label %270

79:                                               ; preds = %20
  %80 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 46
  %81 = load i32, ptr %80, align 4, !tbaa !53
  %82 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  store i32 %81, ptr %82, align 4, !tbaa !75
  %83 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 50
  %84 = load i32, ptr %83, align 4, !tbaa !60
  store i32 %84, ptr %4, align 4, !tbaa !77
  %85 = icmp eq i32 %84, 0
  br i1 %24, label %86, label %114

86:                                               ; preds = %79
  br i1 %28, label %87, label %99

87:                                               ; preds = %86
  br i1 %85, label %270, label %88

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 35
  %90 = load ptr, ptr %89, align 8, !tbaa !84
  %91 = sext i32 %81 to i64
  %92 = getelementptr inbounds %struct.macroblock, ptr %90, i64 %91, i32 45
  %93 = load i32, ptr %92, align 8, !tbaa !83
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %270, label %95

95:                                               ; preds = %88
  %96 = and i32 %2, 1
  %97 = add nsw i32 %81, %96
  store i32 %97, ptr %82, align 4, !tbaa !75
  %98 = lshr i32 %2, 1
  br label %270

99:                                               ; preds = %86
  br i1 %85, label %270, label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 35
  %102 = load ptr, ptr %101, align 8, !tbaa !84
  %103 = sext i32 %81 to i64
  %104 = getelementptr inbounds %struct.macroblock, ptr %102, i64 %103, i32 45
  %105 = load i32, ptr %104, align 8, !tbaa !83
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = add nsw i32 %81, 1
  store i32 %108, ptr %82, align 4, !tbaa !75
  br label %270

109:                                              ; preds = %100
  %110 = and i32 %2, 1
  %111 = add nsw i32 %81, %110
  store i32 %111, ptr %82, align 4, !tbaa !75
  %112 = add nuw nsw i32 %10, %2
  %113 = ashr i32 %112, 1
  br label %270

114:                                              ; preds = %79
  br i1 %28, label %115, label %132

115:                                              ; preds = %114
  br i1 %85, label %270, label %116

116:                                              ; preds = %115
  %117 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 35
  %118 = load ptr, ptr %117, align 8, !tbaa !84
  %119 = sext i32 %81 to i64
  %120 = getelementptr inbounds %struct.macroblock, ptr %118, i64 %119, i32 45
  %121 = load i32, ptr %120, align 8, !tbaa !83
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %270

123:                                              ; preds = %116
  %124 = lshr i32 %10, 1
  %125 = icmp sgt i32 %124, %2
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = shl nuw nsw i32 %2, 1
  br label %270

128:                                              ; preds = %123
  %129 = add nsw i32 %81, 1
  store i32 %129, ptr %82, align 4, !tbaa !75
  %130 = shl nuw i32 %2, 1
  %131 = sub nsw i32 %130, %10
  br label %270

132:                                              ; preds = %114
  br i1 %85, label %270, label %133

133:                                              ; preds = %132
  %134 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 35
  %135 = load ptr, ptr %134, align 8, !tbaa !84
  %136 = sext i32 %81 to i64
  %137 = getelementptr inbounds %struct.macroblock, ptr %135, i64 %136, i32 45
  %138 = load i32, ptr %137, align 8, !tbaa !83
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %133
  %141 = lshr i32 %10, 1
  %142 = icmp sgt i32 %141, %2
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = shl nuw nsw i32 %2, 1
  %145 = or disjoint i32 %144, 1
  br label %270

146:                                              ; preds = %140
  %147 = add nsw i32 %81, 1
  store i32 %147, ptr %82, align 4, !tbaa !75
  %148 = shl nuw i32 %2, 1
  %149 = or disjoint i32 %148, 1
  %150 = sub i32 %149, %10
  br label %270

151:                                              ; preds = %133
  %152 = add nsw i32 %81, 1
  store i32 %152, ptr %82, align 4, !tbaa !75
  br label %270

153:                                              ; preds = %18
  %154 = icmp sgt i32 %8, %1
  %155 = icmp slt i32 %2, 0
  br i1 %154, label %156, label %229

156:                                              ; preds = %153
  br i1 %155, label %157, label %213

157:                                              ; preds = %156
  %158 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %159 = load i32, ptr %158, align 8, !tbaa !83
  %160 = icmp eq i32 %159, 0
  %161 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %162 = load i32, ptr %161, align 8, !tbaa !51
  %163 = and i32 %162, 1
  %164 = icmp eq i32 %163, 0
  br i1 %160, label %165, label %190

165:                                              ; preds = %157
  br i1 %164, label %166, label %187

166:                                              ; preds = %165
  %167 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 47
  %168 = load i32, ptr %167, align 8, !tbaa !55
  %169 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  store i32 %168, ptr %169, align 4, !tbaa !75
  %170 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 51
  %171 = load i32, ptr %170, align 8, !tbaa !61
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %186, label %173

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 20
  %175 = load i32, ptr %174, align 8, !tbaa !48
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %184

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 35
  %179 = load ptr, ptr %178, align 8, !tbaa !84
  %180 = sext i32 %168 to i64
  %181 = getelementptr inbounds %struct.macroblock, ptr %179, i64 %180, i32 45
  %182 = load i32, ptr %181, align 8, !tbaa !83
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %177, %173
  %185 = add nsw i32 %168, 1
  store i32 %185, ptr %169, align 4, !tbaa !75
  br label %186

186:                                              ; preds = %177, %184, %166
  store i32 %171, ptr %4, align 4, !tbaa !77
  br label %270

187:                                              ; preds = %165
  %188 = add nsw i32 %162, -1
  %189 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  store i32 %188, ptr %189, align 4, !tbaa !75
  store i32 1, ptr %4, align 4, !tbaa !77
  br label %270

190:                                              ; preds = %157
  %191 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 47
  %192 = load i32, ptr %191, align 8, !tbaa !55
  br i1 %164, label %193, label %208

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  store i32 %192, ptr %194, align 4, !tbaa !75
  %195 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 51
  %196 = load i32, ptr %195, align 8, !tbaa !61
  store i32 %196, ptr %4, align 4, !tbaa !77
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %270, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 35
  %200 = load ptr, ptr %199, align 8, !tbaa !84
  %201 = sext i32 %192 to i64
  %202 = getelementptr inbounds %struct.macroblock, ptr %200, i64 %201, i32 45
  %203 = load i32, ptr %202, align 8, !tbaa !83
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %270

205:                                              ; preds = %198
  %206 = add nsw i32 %192, 1
  store i32 %206, ptr %194, align 4, !tbaa !75
  %207 = shl nsw i32 %2, 1
  br label %270

208:                                              ; preds = %190
  %209 = add nsw i32 %192, 1
  %210 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  store i32 %209, ptr %210, align 4, !tbaa !75
  %211 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 51
  %212 = load i32, ptr %211, align 8, !tbaa !61
  store i32 %212, ptr %4, align 4, !tbaa !77
  br label %270

213:                                              ; preds = %156
  %214 = icmp eq i32 %2, 0
  br i1 %214, label %215, label %224

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 20
  %217 = load i32, ptr %216, align 8, !tbaa !48
  %218 = icmp eq i32 %217, 2
  br i1 %218, label %219, label %224

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 47
  %221 = load i32, ptr %220, align 8, !tbaa !55
  %222 = add nsw i32 %221, 1
  %223 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  store i32 %222, ptr %223, align 4, !tbaa !75
  store i32 1, ptr %4, align 4, !tbaa !77
  br label %270

224:                                              ; preds = %215, %213
  br i1 %16, label %225, label %270

225:                                              ; preds = %224
  %226 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %227 = load i32, ptr %226, align 8, !tbaa !51
  %228 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  store i32 %227, ptr %228, align 4, !tbaa !75
  store i32 1, ptr %4, align 4, !tbaa !77
  br label %270

229:                                              ; preds = %153
  br i1 %155, label %230, label %270

230:                                              ; preds = %229
  %231 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %232 = load i32, ptr %231, align 8, !tbaa !83
  %233 = icmp eq i32 %232, 0
  %234 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %235 = load i32, ptr %234, align 8, !tbaa !51
  %236 = and i32 %235, 1
  %237 = icmp eq i32 %236, 0
  br i1 %233, label %238, label %247

238:                                              ; preds = %230
  br i1 %237, label %239, label %246

239:                                              ; preds = %238
  %240 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 48
  %241 = load i32, ptr %240, align 4, !tbaa !56
  %242 = add nsw i32 %241, 1
  %243 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  store i32 %242, ptr %243, align 4, !tbaa !75
  %244 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 52
  %245 = load i32, ptr %244, align 4, !tbaa !62
  store i32 %245, ptr %4, align 4, !tbaa !77
  br label %270

246:                                              ; preds = %238
  store i32 0, ptr %4, align 4, !tbaa !77
  br label %270

247:                                              ; preds = %230
  %248 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 48
  %249 = load i32, ptr %248, align 4, !tbaa !56
  br i1 %237, label %250, label %265

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  store i32 %249, ptr %251, align 4, !tbaa !75
  %252 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 52
  %253 = load i32, ptr %252, align 4, !tbaa !62
  store i32 %253, ptr %4, align 4, !tbaa !77
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %270, label %255

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 35
  %257 = load ptr, ptr %256, align 8, !tbaa !84
  %258 = sext i32 %249 to i64
  %259 = getelementptr inbounds %struct.macroblock, ptr %257, i64 %258, i32 45
  %260 = load i32, ptr %259, align 8, !tbaa !83
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %255
  %263 = add nsw i32 %249, 1
  store i32 %263, ptr %251, align 4, !tbaa !75
  %264 = shl nsw i32 %2, 1
  br label %270

265:                                              ; preds = %247
  %266 = add nsw i32 %249, 1
  %267 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  store i32 %266, ptr %267, align 4, !tbaa !75
  %268 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 52
  %269 = load i32, ptr %268, align 4, !tbaa !62
  store i32 %269, ptr %4, align 4, !tbaa !77
  br label %270

270:                                              ; preds = %255, %198, %116, %88, %64, %45, %219, %225, %224, %187, %186, %193, %205, %208, %246, %239, %250, %262, %265, %229, %74, %71, %59, %31, %52, %38, %99, %109, %107, %87, %95, %132, %143, %146, %151, %115, %126, %128
  %271 = phi i32 [ %73, %71 ], [ -1, %59 ], [ %2, %74 ], [ %2, %31 ], [ %55, %52 ], [ -1, %38 ], [ %127, %126 ], [ %131, %128 ], [ -1, %115 ], [ %2, %151 ], [ %145, %143 ], [ %150, %146 ], [ -1, %132 ], [ %98, %95 ], [ -1, %87 ], [ %113, %109 ], [ %2, %107 ], [ -1, %99 ], [ %207, %205 ], [ -1, %193 ], [ %2, %208 ], [ %2, %186 ], [ %2, %187 ], [ -1, %219 ], [ %2, %225 ], [ -1, %224 ], [ %264, %262 ], [ -1, %250 ], [ %2, %265 ], [ %2, %239 ], [ -1, %246 ], [ -1, %229 ], [ %2, %45 ], [ %2, %64 ], [ %2, %88 ], [ %2, %116 ], [ %2, %198 ], [ %2, %255 ]
  %272 = load i32, ptr %4, align 4, !tbaa !77
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 20
  %276 = load i32, ptr %275, align 8, !tbaa !48
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %303, label %278

278:                                              ; preds = %274, %270
  %279 = and i32 %14, %1
  %280 = trunc i32 %279 to i16
  %281 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 2
  store i16 %280, ptr %281, align 4, !tbaa !78
  %282 = and i32 %271, %11
  %283 = trunc i32 %282 to i16
  %284 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 3
  store i16 %283, ptr %284, align 2, !tbaa !79
  %285 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %286 = load i32, ptr %285, align 4, !tbaa !75
  %287 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 4
  %288 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 5
  %289 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 161
  %290 = load ptr, ptr %289, align 8, !tbaa !68
  tail call void %290(i32 noundef %286, ptr noundef nonnull %287, ptr noundef nonnull %288) #3
  %291 = load i16, ptr %287, align 2, !tbaa !66
  %292 = load i32, ptr %3, align 4, !tbaa !74
  %293 = trunc i32 %292 to i16
  %294 = mul i16 %291, %293
  store i16 %294, ptr %287, align 2, !tbaa !66
  %295 = load i16, ptr %288, align 2, !tbaa !66
  %296 = load i32, ptr %9, align 4, !tbaa !74
  %297 = trunc i32 %296 to i16
  %298 = mul i16 %295, %297
  store i16 %298, ptr %288, align 2, !tbaa !66
  %299 = load i16, ptr %281, align 4, !tbaa !78
  %300 = add i16 %299, %294
  store i16 %300, ptr %287, align 4, !tbaa !80
  %301 = load i16, ptr %284, align 2, !tbaa !79
  %302 = add i16 %301, %298
  store i16 %302, ptr %288, align 2, !tbaa !81
  br label %303

303:                                              ; preds = %274, %278, %13, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @get4x4Neighbour(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 160
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  tail call void %9(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #3
  %10 = load i32, ptr %4, align 4, !tbaa !77
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 2
  %14 = load i16, ptr %13, align 4, !tbaa !78
  %15 = ashr i16 %14, 2
  store i16 %15, ptr %13, align 4, !tbaa !78
  %16 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !79
  %18 = ashr i16 %17, 2
  store i16 %18, ptr %16, align 2, !tbaa !79
  %19 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 4
  %20 = load i16, ptr %19, align 4, !tbaa !80
  %21 = ashr i16 %20, 2
  store i16 %21, ptr %19, align 4, !tbaa !80
  %22 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 5
  %23 = load i16, ptr %22, align 2, !tbaa !81
  %24 = ashr i16 %23, 2
  store i16 %24, ptr %22, align 2, !tbaa !81
  br label %25

25:                                               ; preds = %12, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @get4x4NeighbourBase(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 160
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  tail call void %9(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #3
  %10 = load i32, ptr %4, align 4, !tbaa !77
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 2
  %14 = load i16, ptr %13, align 4, !tbaa !78
  %15 = ashr i16 %14, 2
  store i16 %15, ptr %13, align 4, !tbaa !78
  %16 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !79
  %18 = ashr i16 %17, 2
  store i16 %18, ptr %16, align 2, !tbaa !79
  br label %19

19:                                               ; preds = %12, %5
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!42 = !{!43, !36, i64 13520}
!43 = !{!"slice", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !37, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !41, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !37, i64 136, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !37, i64 256, !37, i64 264, !36, i64 312, !36, i64 320, !36, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !39, i64 1176, !39, i64 1180, !39, i64 1184, !44, i64 1188, !41, i64 1220, !41, i64 1222, !41, i64 1224, !39, i64 1228, !39, i64 1232, !39, i64 1236, !39, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !37, i64 1288, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !39, i64 13264, !39, i64 13268, !41, i64 13272, !41, i64 13274, !41, i64 13276, !41, i64 13278, !36, i64 13280, !36, i64 13288, !36, i64 13296, !41, i64 13304, !41, i64 13306, !39, i64 13308, !39, i64 13312, !36, i64 13320, !36, i64 13328, !39, i64 13336, !37, i64 13340, !36, i64 13408, !36, i64 13416, !36, i64 13424, !36, i64 13432, !36, i64 13440, !36, i64 13448, !36, i64 13456, !36, i64 13464, !36, i64 13472, !36, i64 13480, !36, i64 13488, !36, i64 13496, !39, i64 13504, !36, i64 13512, !36, i64 13520, !36, i64 13528, !36, i64 13536, !36, i64 13544, !37, i64 13552}
!44 = !{!"nalunitheadermvcext_tag", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!45 = !{!46, !39, i64 108}
!46 = !{!"storable_picture", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !37, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !41, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !37, i64 160, !47, i64 184, !37, i64 192, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !37, i64 300, !39, i64 308, !36, i64 312, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !36, i64 336, !39, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !36, i64 376, !39, i64 384, !39, i64 388, !37, i64 392, !37, i64 400}
!47 = !{!"pic_motion_params_old", !36, i64 0}
!48 = !{!35, !39, i64 104}
!49 = !{!43, !36, i64 13512}
!50 = !{!35, !41, i64 108}
!51 = !{!35, !39, i64 24}
!52 = !{!46, !39, i64 100}
!53 = !{!35, !39, i64 388}
!54 = !{!46, !39, i64 104}
!55 = !{!35, !39, i64 392}
!56 = !{!35, !39, i64 396}
!57 = !{!35, !39, i64 400}
!58 = !{!36, !36, i64 0}
!59 = !{!40, !41, i64 0}
!60 = !{!35, !39, i64 404}
!61 = !{!35, !39, i64 408}
!62 = !{!35, !39, i64 412}
!63 = !{!35, !39, i64 416}
!64 = !{!35, !36, i64 128}
!65 = !{!35, !36, i64 120}
!66 = !{!41, !41, i64 0}
!67 = !{!40, !41, i64 2}
!68 = !{!69, !36, i64 856752}
!69 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !41, i64 849040, !41, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !70, i64 849304, !70, i64 849624, !70, i64 849944, !70, i64 850264, !70, i64 850584, !70, i64 850904, !70, i64 851224, !70, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !73, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!70 = !{!"image_data", !71, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!71 = !{!"frame_format", !39, i64 0, !39, i64 4, !72, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!72 = !{!"double", !37, i64 0}
!73 = !{!"long", !37, i64 0}
!74 = !{!39, !39, i64 0}
!75 = !{!76, !39, i64 4}
!76 = !{!"pix_pos", !39, i64 0, !39, i64 4, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14}
!77 = !{!76, !39, i64 0}
!78 = !{!76, !41, i64 8}
!79 = !{!76, !41, i64 10}
!80 = !{!76, !41, i64 12}
!81 = !{!76, !41, i64 14}
!82 = !{!35, !36, i64 8}
!83 = !{!35, !39, i64 384}
!84 = !{!69, !36, i64 848888}
!85 = !{!69, !36, i64 856744}
