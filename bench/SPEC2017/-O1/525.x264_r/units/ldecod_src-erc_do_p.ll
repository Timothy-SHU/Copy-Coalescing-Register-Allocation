; ModuleID = 'ldecod_src/erc_do_p.c'
source_filename = "ldecod_src/erc_do_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ercVariables_s = type { i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32 }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.object_buffer = type { i8, i32, i32, [3 x i32] }
%struct.frame_s = type { ptr, ptr, ptr, ptr }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }
%struct.decoded_picture_buffer = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, [1024 x i32], i32, i32, ptr }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, [2 x i32], [2 x i32] }
%struct.concealment_node = type { ptr, i32, ptr }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }

@.str = private unnamed_addr constant [29 x i8] c"ercConcealInterFrame: predMB\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Missing POC=%d\0A\00", align 1
@uv_div = internal unnamed_addr constant [2 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 1, i32 0], [4 x i32] [i32 0, i32 1, i32 0, i32 0]], align 16
@subblk_offset_y = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C"]], align 16
@subblk_offset_x = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C"]], align 16

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ercConcealInterFrame(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [8 x i32], align 16
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #19
  %9 = icmp eq ptr %4, null
  br i1 %9, label %179, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ercVariables_s, ptr %4, i64 0, i32 10
  %12 = load i32, ptr %11, align 8, !tbaa !39
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %179, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ercVariables_s, ptr %4, i64 0, i32 9
  %16 = load i32, ptr %15, align 4, !tbaa !42
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %179, label %18

18:                                               ; preds = %14
  %19 = icmp eq i32 %5, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 77
  %22 = load i32, ptr %21, align 4, !tbaa !43
  %23 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 78
  %24 = load i32, ptr %23, align 8, !tbaa !50
  %25 = shl i32 %22, 1
  %26 = mul i32 %25, %24
  %27 = add nsw i32 %26, 256
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 1
  %30 = tail call noalias ptr @malloc(i64 noundef %29) #20
  br label %33

31:                                               ; preds = %18
  %32 = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #20
  br label %33

33:                                               ; preds = %31, %20
  %34 = phi ptr [ %30, %20 ], [ %32, %31 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #19
  br label %37

37:                                               ; preds = %36, %33
  %38 = ashr i32 %3, 4
  %39 = ashr i32 %2, 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %178

41:                                               ; preds = %37
  %42 = icmp sgt i32 %38, 0
  %43 = getelementptr inbounds %struct.ercVariables_s, ptr %4, i64 0, i32 2
  %44 = ashr i32 %2, 3
  %45 = shl nsw i32 %44, 1
  %46 = shl nsw i32 %44, 1
  %47 = shl nsw i32 %38, 1
  %48 = shl nuw nsw i32 %39, 1
  %49 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 141
  %50 = shl nsw i32 %38, 1
  %51 = shl nuw nsw i32 %39, 1
  %52 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 141
  %53 = shl nsw i32 %38, 1
  %54 = shl nuw nsw i32 %39, 1
  %55 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 141
  %56 = sext i32 %38 to i64
  br label %57

57:                                               ; preds = %41, %175
  %58 = phi i32 [ 0, %41 ], [ %176, %175 ]
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  %61 = lshr i32 %58, 1
  %62 = xor i32 %61, -1
  %63 = add nsw i32 %39, %62
  %64 = select i1 %60, i32 %61, i32 %63
  br i1 %42, label %65, label %175

65:                                               ; preds = %57
  %66 = shl i32 %64, 1
  br label %67

67:                                               ; preds = %65, %171
  %68 = phi i32 [ 0, %65 ], [ %173, %171 ]
  %69 = load ptr, ptr %43, align 8, !tbaa !51
  %70 = mul i32 %45, %68
  %71 = add nsw i32 %70, %66
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %69, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !52
  %75 = icmp slt i8 %74, 2
  br i1 %75, label %76, label %171

76:                                               ; preds = %67
  %77 = sext i32 %68 to i64
  %78 = add i32 %68, 1
  %79 = call i32 @llvm.smax.i32(i32 %38, i32 %78)
  br label %80

80:                                               ; preds = %76, %84
  %81 = phi i64 [ %77, %76 ], [ %82, %84 ]
  %82 = add nsw i64 %81, 1
  %83 = icmp slt i64 %82, %56
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = trunc i64 %82 to i32
  %86 = mul i32 %46, %85
  %87 = add nsw i32 %86, %66
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, ptr %69, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !52
  %91 = icmp sgt i8 %90, 1
  br i1 %91, label %92, label %80, !llvm.loop !53

92:                                               ; preds = %84
  %93 = trunc i64 %81 to i32
  br label %94

94:                                               ; preds = %80, %92
  %95 = phi i32 [ %93, %92 ], [ %79, %80 ]
  %96 = icmp slt i32 %95, %38
  br i1 %96, label %116, label %97

97:                                               ; preds = %94
  %98 = icmp slt i32 %68, %38
  br i1 %98, label %99, label %171

99:                                               ; preds = %97, %111
  %100 = phi i32 [ %114, %111 ], [ %68, %97 ]
  %101 = shl i32 %100, 1
  %102 = load ptr, ptr %43, align 8, !tbaa !51
  %103 = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %7, i32 noundef %101, i32 noundef %66, ptr noundef %102, i32 noundef %47, i32 noundef %48, i32 noundef 2, i8 noundef zeroext 0) #19
  %104 = load i32, ptr %49, align 8, !tbaa !56
  %105 = icmp sgt i32 %104, 7
  %106 = mul nsw i32 %100, %39
  %107 = add nsw i32 %106, %64
  br i1 %105, label %108, label %110

108:                                              ; preds = %99
  %109 = load ptr, ptr %43, align 8, !tbaa !51
  call fastcc void @concealByTrial(ptr noundef nonnull %0, ptr noundef %34, i32 noundef %107, ptr noundef %1, ptr noundef nonnull %7, i32 noundef %2, ptr noundef %109)
  br label %111

110:                                              ; preds = %99
  call fastcc void @concealByCopy(ptr noundef nonnull %0, i32 noundef %107, ptr noundef %1, i32 noundef %2)
  br label %111

111:                                              ; preds = %110, %108
  %112 = mul nsw i32 %100, %39
  %113 = add nsw i32 %112, %64
  call void @ercMarkCurrMBConcealed(i32 noundef %113, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #19
  %114 = add i32 %100, 1
  %115 = icmp eq i32 %114, %38
  br i1 %115, label %171, label %99, !llvm.loop !57

116:                                              ; preds = %94
  %117 = icmp eq i32 %68, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %116
  %119 = icmp sgt i32 %95, -1
  br i1 %119, label %120, label %137

120:                                              ; preds = %118, %132
  %121 = phi i32 [ %135, %132 ], [ %95, %118 ]
  %122 = shl nuw i32 %121, 1
  %123 = load ptr, ptr %43, align 8, !tbaa !51
  %124 = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %7, i32 noundef %122, i32 noundef %66, ptr noundef %123, i32 noundef %53, i32 noundef %54, i32 noundef 2, i8 noundef zeroext 0) #19
  %125 = load i32, ptr %55, align 8, !tbaa !56
  %126 = icmp sgt i32 %125, 7
  %127 = mul nsw i32 %121, %39
  %128 = add nsw i32 %127, %64
  br i1 %126, label %129, label %131

129:                                              ; preds = %120
  %130 = load ptr, ptr %43, align 8, !tbaa !51
  call fastcc void @concealByTrial(ptr noundef nonnull %0, ptr noundef %34, i32 noundef %128, ptr noundef %1, ptr noundef nonnull %7, i32 noundef %2, ptr noundef %130)
  br label %132

131:                                              ; preds = %120
  call fastcc void @concealByCopy(ptr noundef nonnull %0, i32 noundef %128, ptr noundef %1, i32 noundef %2)
  br label %132

132:                                              ; preds = %131, %129
  %133 = mul nsw i32 %121, %39
  %134 = add nsw i32 %133, %64
  call void @ercMarkCurrMBConcealed(i32 noundef %134, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #19
  %135 = add nsw i32 %121, -1
  %136 = icmp sgt i32 %121, 0
  br i1 %136, label %120, label %137, !llvm.loop !58

137:                                              ; preds = %132, %118
  %138 = add nsw i32 %95, 1
  br label %171

139:                                              ; preds = %116
  %140 = add nsw i32 %95, 1
  %141 = icmp slt i32 %95, %68
  br i1 %141, label %171, label %142

142:                                              ; preds = %139
  %143 = add i32 %95, 1
  %144 = sub i32 %143, %68
  br label %145

145:                                              ; preds = %142, %166
  %146 = phi i32 [ %169, %166 ], [ 0, %142 ]
  %147 = phi i32 [ %154, %166 ], [ %68, %142 ]
  %148 = phi i32 [ %152, %166 ], [ %95, %142 ]
  %149 = and i32 %146, 1
  %150 = icmp ne i32 %149, 0
  %151 = sext i1 %150 to i32
  %152 = add nsw i32 %148, %151
  %153 = xor i32 %149, 1
  %154 = add i32 %153, %147
  %155 = select i1 %150, i32 %148, i32 %147
  %156 = shl i32 %155, 1
  %157 = load ptr, ptr %43, align 8, !tbaa !51
  %158 = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %7, i32 noundef %156, i32 noundef %66, ptr noundef %157, i32 noundef %50, i32 noundef %51, i32 noundef 2, i8 noundef zeroext 0) #19
  %159 = load i32, ptr %52, align 8, !tbaa !56
  %160 = icmp sgt i32 %159, 7
  %161 = mul nsw i32 %155, %39
  %162 = add nsw i32 %161, %64
  br i1 %160, label %163, label %165

163:                                              ; preds = %145
  %164 = load ptr, ptr %43, align 8, !tbaa !51
  call fastcc void @concealByTrial(ptr noundef nonnull %0, ptr noundef %34, i32 noundef %162, ptr noundef %1, ptr noundef nonnull %7, i32 noundef %2, ptr noundef %164)
  br label %166

165:                                              ; preds = %145
  call fastcc void @concealByCopy(ptr noundef nonnull %0, i32 noundef %162, ptr noundef %1, i32 noundef %2)
  br label %166

166:                                              ; preds = %165, %163
  %167 = mul nsw i32 %155, %39
  %168 = add nsw i32 %167, %64
  call void @ercMarkCurrMBConcealed(i32 noundef %168, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #19
  %169 = add nuw i32 %146, 1
  %170 = icmp eq i32 %169, %144
  br i1 %170, label %171, label %145, !llvm.loop !59

171:                                              ; preds = %111, %166, %97, %139, %137, %67
  %172 = phi i32 [ %68, %67 ], [ %138, %137 ], [ %140, %139 ], [ %38, %97 ], [ %140, %166 ], [ %38, %111 ]
  %173 = add nsw i32 %172, 1
  %174 = icmp slt i32 %173, %38
  br i1 %174, label %67, label %175, !llvm.loop !60

175:                                              ; preds = %171, %57
  %176 = add nuw nsw i32 %58, 1
  %177 = icmp eq i32 %176, %39
  br i1 %177, label %178, label %57, !llvm.loop !61

178:                                              ; preds = %175, %37
  call void @free(ptr noundef %34) #19
  br label %179

179:                                              ; preds = %6, %10, %14, %178
  %180 = phi i32 [ 1, %178 ], [ 1, %14 ], [ 0, %10 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #19
  ret i32 %180
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #3

declare i32 @ercCollect8PredBlocks(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @concealByTrial(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 {
  %8 = alloca [3 x i32], align 4
  %9 = alloca [3 x i32], align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false)
  %11 = ashr i32 %5, 4
  %12 = shl i32 %2, 2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.object_buffer, ptr %3, i64 %13
  %15 = sdiv i32 %2, %11
  %16 = ashr i32 %5, 3
  %17 = shl nsw i32 %16, 1
  %18 = mul i32 %17, %15
  %19 = srem i32 %2, %11
  %20 = shl nsw i32 %19, 1
  %21 = add nsw i32 %18, %20
  %22 = srem i32 %21, %16
  %23 = shl nsw i32 %22, 3
  %24 = getelementptr inbounds %struct.object_buffer, ptr %3, i64 %13, i32 1
  store i32 %23, ptr %24, align 4, !tbaa !62
  %25 = sdiv i32 %21, %16
  %26 = shl i32 %25, 3
  %27 = getelementptr inbounds %struct.object_buffer, ptr %3, i64 %13, i32 2
  store i32 %26, ptr %27, align 4, !tbaa !64
  %28 = add nsw i32 %2, 1
  %29 = add nsw i32 %11, %2
  %30 = add nsw i32 %2, -1
  %31 = sub nsw i32 %2, %11
  %32 = getelementptr inbounds [3 x i32], ptr %9, i64 0, i64 1
  %33 = getelementptr inbounds [3 x i32], ptr %9, i64 0, i64 2
  %34 = getelementptr inbounds [3 x i32], ptr %9, i64 0, i64 1
  %35 = getelementptr inbounds [3 x i32], ptr %9, i64 0, i64 2
  %36 = getelementptr inbounds %struct.frame_s, ptr %0, i64 0, i32 1
  %37 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 142
  br label %38

38:                                               ; preds = %162, %7
  %39 = phi i32 [ 3, %7 ], [ 2, %162 ]
  %40 = phi i32 [ 0, %7 ], [ %157, %162 ]
  %41 = phi i32 [ 0, %7 ], [ %158, %162 ]
  %42 = phi i32 [ 0, %7 ], [ %159, %162 ]
  br label %43

43:                                               ; preds = %38, %153
  %44 = phi i64 [ 4, %38 ], [ %160, %153 ]
  %45 = phi i32 [ %42, %38 ], [ %159, %153 ]
  %46 = phi i32 [ %41, %38 ], [ %158, %153 ]
  %47 = phi i32 [ %40, %38 ], [ %157, %153 ]
  %48 = phi i32 [ 0, %38 ], [ %156, %153 ]
  %49 = phi i32 [ 0, %38 ], [ %155, %153 ]
  %50 = phi i32 [ 0, %38 ], [ %154, %153 ]
  %51 = getelementptr inbounds i32, ptr %4, i64 %44
  %52 = load i32, ptr %51, align 4, !tbaa !65
  %53 = icmp slt i32 %52, %39
  br i1 %53, label %153, label %54

54:                                               ; preds = %43
  %55 = trunc i64 %44 to i32
  switch i32 %55, label %60 [
    i32 4, label %56
    i32 5, label %57
    i32 6, label %58
    i32 7, label %59
  ]

56:                                               ; preds = %54
  br label %60

57:                                               ; preds = %54
  br label %60

58:                                               ; preds = %54
  br label %60

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %54, %59, %58, %57, %56
  %61 = phi i32 [ %47, %54 ], [ 2, %59 ], [ 1, %58 ], [ 3, %57 ], [ 3, %56 ]
  %62 = phi i32 [ %46, %54 ], [ 0, %59 ], [ 0, %58 ], [ 1, %57 ], [ 2, %56 ]
  %63 = phi i32 [ %45, %54 ], [ %28, %59 ], [ %29, %58 ], [ %30, %57 ], [ %31, %56 ]
  %64 = shl i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.object_buffer, ptr %3, i64 %65
  %67 = load i8, ptr %66, align 4, !tbaa !66
  %68 = icmp ugt i8 %67, 2
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = zext nneg i32 %62 to i64
  %71 = getelementptr inbounds %struct.object_buffer, ptr %66, i64 %70
  %72 = load i8, ptr %71, align 4, !tbaa !66
  %73 = icmp eq i8 %72, 6
  br i1 %73, label %153, label %76

74:                                               ; preds = %60
  %75 = icmp eq i8 %67, 2
  br i1 %75, label %153, label %76

76:                                               ; preds = %74, %69
  br i1 %68, label %77, label %82

77:                                               ; preds = %76
  %78 = zext nneg i32 %61 to i64
  %79 = getelementptr inbounds %struct.object_buffer, ptr %66, i64 %78
  %80 = load i8, ptr %79, align 4, !tbaa !66
  %81 = icmp eq i8 %80, 6
  br i1 %81, label %153, label %84

82:                                               ; preds = %76
  %83 = icmp eq i8 %67, 2
  br i1 %83, label %153, label %84

84:                                               ; preds = %82, %77
  %85 = zext i1 %68 to i32
  %86 = getelementptr inbounds %struct.object_buffer, ptr %3, i64 %65, i32 3
  %87 = icmp eq i32 %62, %61
  %88 = select i1 %87, i32 -2, i32 -1
  br label %89

89:                                               ; preds = %84, %147
  %90 = phi i32 [ %48, %84 ], [ %150, %147 ]
  %91 = phi i32 [ %85, %84 ], [ %151, %147 ]
  %92 = phi i32 [ %49, %84 ], [ %149, %147 ]
  %93 = phi i32 [ %50, %84 ], [ %148, %147 ]
  %94 = phi i32 [ %62, %84 ], [ %61, %147 ]
  %95 = load i8, ptr %66, align 4, !tbaa !66
  %96 = icmp ugt i8 %95, 2
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = zext nneg i32 %94 to i64
  %99 = getelementptr inbounds %struct.object_buffer, ptr %66, i64 %98
  %100 = load i8, ptr %99, align 4, !tbaa !66
  %101 = icmp eq i8 %100, 4
  br i1 %101, label %104, label %107

102:                                              ; preds = %89
  %103 = icmp eq i8 %95, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %102, %97
  %105 = icmp eq i32 %92, 0
  br i1 %105, label %106, label %147

106:                                              ; preds = %104
  store i32 0, ptr %34, align 4, !tbaa !65
  store i32 0, ptr %9, align 4, !tbaa !65
  store i32 0, ptr %35, align 4, !tbaa !65
  br label %124

107:                                              ; preds = %102, %97
  br i1 %96, label %108, label %113

108:                                              ; preds = %107
  %109 = zext nneg i32 %94 to i64
  %110 = getelementptr inbounds %struct.object_buffer, ptr %66, i64 %109
  %111 = load i8, ptr %110, align 4, !tbaa !66
  %112 = icmp eq i8 %111, 6
  br i1 %112, label %147, label %115

113:                                              ; preds = %107
  %114 = icmp eq i8 %95, 2
  br i1 %114, label %147, label %115

115:                                              ; preds = %113, %108
  %116 = zext nneg i32 %94 to i64
  %117 = getelementptr inbounds %struct.object_buffer, ptr %66, i64 %116, i32 3
  %118 = select i1 %96, ptr %117, ptr %86
  %119 = load i32, ptr %118, align 4, !tbaa !65
  store i32 %119, ptr %9, align 4, !tbaa !65
  %120 = getelementptr inbounds i32, ptr %118, i64 1
  %121 = load i32, ptr %120, align 4, !tbaa !65
  store i32 %121, ptr %32, align 4, !tbaa !65
  %122 = getelementptr inbounds i32, ptr %118, i64 2
  %123 = load i32, ptr %122, align 4, !tbaa !65
  store i32 %123, ptr %33, align 4, !tbaa !65
  br label %124

124:                                              ; preds = %115, %106
  %125 = phi i32 [ 1, %106 ], [ %92, %115 ]
  %126 = load ptr, ptr %37, align 8, !tbaa !67
  %127 = load i32, ptr %24, align 4, !tbaa !62
  %128 = load i32, ptr %27, align 4, !tbaa !64
  call fastcc void @buildPredRegionYUV(ptr noundef %126, ptr noundef nonnull %9, i32 noundef %127, i32 noundef %128, ptr noundef %1)
  %129 = load ptr, ptr %36, align 8, !tbaa !68
  %130 = tail call fastcc i32 @edgeDistortion(ptr noundef %4, i32 noundef %21, ptr noundef %1, ptr noundef %129, i32 noundef %5)
  %131 = icmp sge i32 %130, %90
  %132 = icmp ne i32 %93, 0
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %147, label %134

134:                                              ; preds = %124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false), !tbaa !65
  %135 = load i8, ptr %66, align 4, !tbaa !66
  %136 = icmp ugt i8 %135, 2
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = zext nneg i32 %94 to i64
  %139 = getelementptr inbounds %struct.object_buffer, ptr %66, i64 %138
  %140 = load i8, ptr %139, align 4, !tbaa !66
  %141 = icmp eq i8 %140, 4
  br i1 %141, label %145, label %144

142:                                              ; preds = %134
  %143 = icmp eq i8 %135, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %142, %137
  br label %145

145:                                              ; preds = %137, %142, %144
  %146 = phi i8 [ 1, %144 ], [ 0, %142 ], [ 0, %137 ]
  store i8 %146, ptr %14, align 4, !tbaa !66
  tail call fastcc void @copyPredMB(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %0, i32 noundef %5)
  br label %147

147:                                              ; preds = %145, %124, %108, %113, %104
  %148 = phi i32 [ %93, %104 ], [ %93, %108 ], [ %93, %113 ], [ 1, %124 ], [ 1, %145 ]
  %149 = phi i32 [ 1, %104 ], [ %92, %108 ], [ %92, %113 ], [ %125, %124 ], [ %125, %145 ]
  %150 = phi i32 [ %90, %104 ], [ %90, %108 ], [ %90, %113 ], [ %90, %124 ], [ %130, %145 ]
  %151 = add nsw i32 %91, %88
  %152 = icmp sgt i32 %151, -1
  br i1 %152, label %89, label %153, !llvm.loop !69

153:                                              ; preds = %147, %69, %74, %77, %82, %43
  %154 = phi i32 [ %50, %43 ], [ %50, %82 ], [ %50, %77 ], [ %50, %74 ], [ %50, %69 ], [ %148, %147 ]
  %155 = phi i32 [ %49, %43 ], [ %49, %82 ], [ %49, %77 ], [ %49, %74 ], [ %49, %69 ], [ %149, %147 ]
  %156 = phi i32 [ %48, %43 ], [ %48, %82 ], [ %48, %77 ], [ %48, %74 ], [ %48, %69 ], [ %150, %147 ]
  %157 = phi i32 [ %47, %43 ], [ %61, %82 ], [ %61, %77 ], [ %61, %74 ], [ %61, %69 ], [ %61, %147 ]
  %158 = phi i32 [ %46, %43 ], [ %62, %82 ], [ %62, %77 ], [ %62, %74 ], [ %62, %69 ], [ %62, %147 ]
  %159 = phi i32 [ %45, %43 ], [ %63, %82 ], [ %63, %77 ], [ %63, %74 ], [ %63, %69 ], [ %63, %147 ]
  %160 = add nuw nsw i64 %44, 1
  %161 = icmp eq i64 %160, 8
  br i1 %161, label %162, label %43, !llvm.loop !70

162:                                              ; preds = %153
  %163 = add nsw i32 %39, -3
  %164 = icmp ult i32 %163, -2
  %165 = icmp eq i32 %154, 0
  %166 = select i1 %164, i1 %165, i1 false
  br i1 %166, label %38, label %167, !llvm.loop !71

167:                                              ; preds = %162
  %168 = icmp eq i32 %155, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %167
  %170 = getelementptr inbounds [3 x i32], ptr %9, i64 0, i64 1
  store i32 0, ptr %170, align 4, !tbaa !65
  store i32 0, ptr %9, align 4, !tbaa !65
  %171 = getelementptr inbounds [3 x i32], ptr %9, i64 0, i64 2
  store i32 0, ptr %171, align 4, !tbaa !65
  %172 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 142
  %173 = load ptr, ptr %172, align 8, !tbaa !67
  %174 = load i32, ptr %24, align 4, !tbaa !62
  %175 = load i32, ptr %27, align 4, !tbaa !64
  call fastcc void @buildPredRegionYUV(ptr noundef %173, ptr noundef nonnull %9, i32 noundef %174, i32 noundef %175, ptr noundef %1)
  %176 = getelementptr inbounds %struct.frame_s, ptr %0, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !68
  %178 = tail call fastcc i32 @edgeDistortion(ptr noundef %4, i32 noundef %21, ptr noundef %1, ptr noundef %177, i32 noundef %5)
  %179 = icmp sge i32 %178, %156
  %180 = icmp ne i32 %154, 0
  %181 = select i1 %179, i1 %180, i1 false
  br i1 %181, label %183, label %182

182:                                              ; preds = %169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, i64 12, i1 false), !tbaa !65
  store i8 0, ptr %14, align 4, !tbaa !66
  tail call fastcc void @copyPredMB(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %0, i32 noundef %5)
  br label %183

183:                                              ; preds = %182, %169, %167
  %184 = mul nsw i64 %13, 24
  %185 = or disjoint i64 %184, 12
  %186 = getelementptr i8, ptr %3, i64 %185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %186, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false), !tbaa !65
  %187 = sext i32 %21 to i64
  %188 = getelementptr inbounds i8, ptr %6, i64 %187
  store i8 2, ptr %188, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @concealByCopy(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #4 {
  %5 = shl i32 %1, 2
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.object_buffer, ptr %2, i64 %6
  store i8 0, ptr %7, align 4, !tbaa !66
  %8 = ashr i32 %3, 4
  %9 = srem i32 %1, %8
  %10 = shl nsw i32 %9, 4
  %11 = getelementptr inbounds %struct.object_buffer, ptr %2, i64 %6, i32 1
  store i32 %10, ptr %11, align 4, !tbaa !62
  %12 = sdiv i32 %1, %8
  %13 = shl i32 %12, 4
  %14 = getelementptr inbounds %struct.object_buffer, ptr %2, i64 %6, i32 2
  store i32 %13, ptr %14, align 4, !tbaa !64
  %15 = ashr i32 %3, 3
  %16 = shl nsw i32 %15, 1
  %17 = mul i32 %16, %12
  %18 = shl nsw i32 %9, 1
  %19 = add nsw i32 %17, %18
  %20 = load ptr, ptr %0, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.video_par, ptr %20, i64 0, i32 136
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = getelementptr inbounds %struct.video_par, ptr %20, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !73
  %25 = load ptr, ptr %24, align 8, !tbaa !74
  %26 = getelementptr inbounds %struct.slice, ptr %25, i64 0, i32 56
  %27 = load ptr, ptr %26, align 8, !tbaa !74
  %28 = load ptr, ptr %27, align 8, !tbaa !74
  %29 = srem i32 %19, %15
  %30 = shl nsw i32 %29, 3
  %31 = sdiv i32 %19, %15
  %32 = shl i32 %31, 3
  %33 = add nsw i32 %32, 16
  %34 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 32
  %35 = load ptr, ptr %34, align 8, !tbaa !75
  %36 = getelementptr inbounds %struct.frame_s, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !68
  %38 = sext i32 %30 to i64
  %39 = sext i32 %32 to i64
  %40 = sext i32 %3 to i64
  %41 = sext i32 %33 to i64
  %42 = add nsw i32 %30, 15
  %43 = sext i32 %42 to i64
  br label %44

44:                                               ; preds = %4, %57
  %45 = phi i64 [ %39, %4 ], [ %58, %57 ]
  %46 = mul nsw i64 %45, %40
  %47 = getelementptr inbounds ptr, ptr %35, i64 %45
  %48 = load ptr, ptr %47, align 8, !tbaa !74
  %49 = getelementptr i16, ptr %37, i64 %46
  br label %50

50:                                               ; preds = %44, %50
  %51 = phi i64 [ %38, %44 ], [ %55, %50 ]
  %52 = getelementptr inbounds i16, ptr %48, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !78
  %54 = getelementptr i16, ptr %49, i64 %51
  store i16 %53, ptr %54, align 2, !tbaa !78
  %55 = add nsw i64 %51, 1
  %56 = icmp slt i64 %51, %43
  br i1 %56, label %50, label %57, !llvm.loop !79

57:                                               ; preds = %50
  %58 = add nsw i64 %45, 1
  %59 = icmp slt i64 %58, %41
  br i1 %59, label %44, label %60, !llvm.loop !80

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.storable_picture, ptr %22, i64 0, i32 48
  %62 = load i32, ptr %61, align 4, !tbaa !81
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x [4 x i32]], ptr @uv_div, i64 0, i64 1, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !65
  %66 = ashr i32 %32, %65
  %67 = ashr i32 %33, %65
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %114

69:                                               ; preds = %60
  %70 = getelementptr inbounds [4 x i32], ptr @uv_div, i64 0, i64 %63
  %71 = load i32, ptr %70, align 4, !tbaa !65
  %72 = ashr i32 %30, %71
  %73 = add nsw i32 %30, 16
  %74 = ashr i32 %73, %71
  %75 = icmp slt i32 %72, %74
  %76 = getelementptr inbounds %struct.storable_picture, ptr %28, i64 0, i32 33
  %77 = getelementptr inbounds %struct.frame_s, ptr %0, i64 0, i32 2
  %78 = getelementptr inbounds %struct.frame_s, ptr %0, i64 0, i32 3
  %79 = sext i32 %72 to i64
  %80 = sext i32 %66 to i64
  %81 = sext i32 %67 to i64
  %82 = sext i32 %74 to i64
  br label %83

83:                                               ; preds = %69, %111
  %84 = phi i64 [ %80, %69 ], [ %112, %111 ]
  br i1 %75, label %85, label %111

85:                                               ; preds = %83
  %86 = trunc i64 %84 to i32
  %87 = mul i32 %86, %3
  %88 = ashr i32 %87, %71
  %89 = load ptr, ptr %76, align 8, !tbaa !82
  %90 = load ptr, ptr %89, align 8, !tbaa !74
  %91 = getelementptr inbounds ptr, ptr %90, i64 %84
  %92 = load ptr, ptr %91, align 8, !tbaa !74
  %93 = load ptr, ptr %77, align 8, !tbaa !83
  %94 = getelementptr inbounds ptr, ptr %89, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !74
  %96 = getelementptr inbounds ptr, ptr %95, i64 %84
  %97 = load ptr, ptr %96, align 8, !tbaa !74
  %98 = load ptr, ptr %78, align 8, !tbaa !84
  %99 = sext i32 %88 to i64
  br label %100

100:                                              ; preds = %85, %100
  %101 = phi i64 [ %79, %85 ], [ %109, %100 ]
  %102 = add nsw i64 %101, %99
  %103 = getelementptr inbounds i16, ptr %92, i64 %101
  %104 = load i16, ptr %103, align 2, !tbaa !78
  %105 = getelementptr inbounds i16, ptr %93, i64 %102
  store i16 %104, ptr %105, align 2, !tbaa !78
  %106 = getelementptr inbounds i16, ptr %97, i64 %101
  %107 = load i16, ptr %106, align 2, !tbaa !78
  %108 = getelementptr inbounds i16, ptr %98, i64 %102
  store i16 %107, ptr %108, align 2, !tbaa !78
  %109 = add nsw i64 %101, 1
  %110 = icmp eq i64 %109, %82
  br i1 %110, label %111, label %100, !llvm.loop !85

111:                                              ; preds = %100, %83
  %112 = add nsw i64 %84, 1
  %113 = icmp eq i64 %112, %81
  br i1 %113, label %114, label %83, !llvm.loop !86

114:                                              ; preds = %111, %60
  ret void
}

declare void @ercMarkCurrMBConcealed(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @conceal_lost_frames(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16
  %5 = load i32, ptr %4, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !65
  store i32 0, ptr %6, align 4, !tbaa !65
  store i32 0, ptr %4, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 98
  %9 = load i32, ptr %8, align 4, !tbaa !89
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 94
  %13 = load i32, ptr %12, align 4, !tbaa !90
  %14 = sub nsw i32 0, %13
  %15 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 92
  store i32 %14, ptr %15, align 4, !tbaa !91
  %16 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 96
  store i32 0, ptr %16, align 4, !tbaa !92
  br label %24

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 40
  %19 = load i32, ptr %18, align 8, !tbaa !93
  %20 = add i32 %19, 1
  %21 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 52
  %22 = load i32, ptr %21, align 8, !tbaa !94
  %23 = urem i32 %20, %22
  br label %24

24:                                               ; preds = %17, %11
  %25 = phi i32 [ 0, %11 ], [ %23, %17 ]
  %26 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %27 = load i32, ptr %26, align 4, !tbaa !95
  %28 = icmp eq i32 %27, %25
  br i1 %28, label %111, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 23
  %31 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 24
  %32 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 25
  %33 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 26
  %34 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 92
  %35 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 93
  %36 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %37 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %38 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 19
  %39 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 151
  %40 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 40
  %41 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 52
  %42 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 110
  %43 = getelementptr i8, ptr %1, i64 13344
  %44 = getelementptr i8, ptr %1, i64 13340
  br label %45

45:                                               ; preds = %29, %105
  %46 = phi i32 [ %25, %29 ], [ %109, %105 ]
  %47 = load i32, ptr %30, align 4, !tbaa !98
  %48 = load i32, ptr %31, align 8, !tbaa !99
  %49 = load i32, ptr %32, align 4, !tbaa !100
  %50 = load i32, ptr %33, align 8, !tbaa !101
  %51 = tail call ptr @alloc_storable_picture(ptr noundef %3, i32 noundef 0, i32 noundef %47, i32 noundef %48, i32 noundef %49, i32 noundef %50) #19
  %52 = getelementptr inbounds %struct.storable_picture, ptr %51, i64 0, i32 24
  store i32 1, ptr %52, align 8, !tbaa !102
  %53 = getelementptr inbounds %struct.storable_picture, ptr %51, i64 0, i32 7
  store i32 %46, ptr %53, align 4, !tbaa !103
  %54 = getelementptr inbounds %struct.storable_picture, ptr %51, i64 0, i32 5
  store i32 %46, ptr %54, align 4, !tbaa !104
  %55 = getelementptr inbounds %struct.storable_picture, ptr %51, i64 0, i32 13
  store i32 0, ptr %55, align 4, !tbaa !105
  %56 = getelementptr inbounds %struct.storable_picture, ptr %51, i64 0, i32 12
  store i32 0, ptr %56, align 8, !tbaa !106
  %57 = getelementptr inbounds %struct.storable_picture, ptr %51, i64 0, i32 11
  store i32 1, ptr %57, align 4, !tbaa !107
  %58 = getelementptr inbounds %struct.storable_picture, ptr %51, i64 0, i32 59
  store i32 1, ptr %58, align 8, !tbaa !108
  %59 = getelementptr inbounds %struct.storable_picture, ptr %51, i64 0, i32 47
  store i32 0, ptr %59, align 8, !tbaa !109
  store i32 %46, ptr %26, align 4, !tbaa !95
  %60 = load i32, ptr %34, align 4, !tbaa !91
  %61 = load i32, ptr %35, align 8, !tbaa !110
  %62 = add nsw i32 %61, %60
  %63 = getelementptr inbounds %struct.storable_picture, ptr %51, i64 0, i32 2
  store i32 %62, ptr %63, align 8, !tbaa !111
  %64 = getelementptr inbounds %struct.storable_picture, ptr %51, i64 0, i32 3
  store i32 %62, ptr %64, align 4, !tbaa !112
  %65 = getelementptr inbounds %struct.storable_picture, ptr %51, i64 0, i32 4
  store i32 %62, ptr %65, align 8, !tbaa !113
  %66 = getelementptr inbounds %struct.storable_picture, ptr %51, i64 0, i32 1
  store i32 %62, ptr %66, align 4, !tbaa !114
  store i32 %62, ptr %34, align 4, !tbaa !91
  %67 = load ptr, ptr %0, align 8, !tbaa !87
  %68 = load i32, ptr %36, align 4, !tbaa !115
  %69 = add i32 %68, -1
  %70 = icmp sgt i32 %69, -1
  br i1 %70, label %71, label %93

71:                                               ; preds = %45
  %72 = load ptr, ptr %37, align 8, !tbaa !116
  %73 = zext nneg i32 %69 to i64
  br label %74

74:                                               ; preds = %71, %90
  %75 = phi i64 [ %73, %71 ], [ %91, %90 ]
  %76 = getelementptr inbounds ptr, ptr %72, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !74
  %78 = load i32, ptr %77, align 8, !tbaa !117
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.frame_store, ptr %77, i64 0, i32 12
  %82 = load ptr, ptr %81, align 8, !tbaa !119
  %83 = getelementptr inbounds %struct.storable_picture, ptr %82, i64 0, i32 11
  %84 = load i32, ptr %83, align 4, !tbaa !107
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.storable_picture, ptr %82, i64 0, i32 10
  %88 = load i8, ptr %87, align 8, !tbaa !120
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86, %80, %74
  %91 = add nsw i64 %75, -1
  %92 = icmp sgt i64 %75, 0
  br i1 %92, label %74, label %93, !llvm.loop !121

93:                                               ; preds = %86, %90, %45
  %94 = phi ptr [ null, %45 ], [ %82, %86 ], [ null, %90 ]
  %95 = getelementptr inbounds %struct.video_par, ptr %67, i64 0, i32 99
  store i32 0, ptr %95, align 8, !tbaa !122
  tail call fastcc void @copy_to_conceal(ptr noundef %94, ptr noundef %51, ptr noundef %67)
  %96 = load i32, ptr %8, align 4, !tbaa !89
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.storable_picture, ptr %51, i64 0, i32 43
  store i32 2, ptr %99, align 8, !tbaa !123
  %100 = getelementptr inbounds %struct.storable_picture, ptr %51, i64 0, i32 44
  store i32 1, ptr %100, align 4, !tbaa !124
  %101 = load ptr, ptr %38, align 8, !tbaa !73
  %102 = load ptr, ptr %101, align 8, !tbaa !74
  %103 = getelementptr inbounds %struct.slice, ptr %102, i64 0, i32 66
  %104 = load i32, ptr %103, align 8, !tbaa !125
  tail call void @flush_dpb(ptr noundef nonnull %0, i32 noundef %104) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %66, i8 0, i64 16, i1 false)
  store i32 0, ptr %34, align 4, !tbaa !91
  br label %105

105:                                              ; preds = %98, %93
  %106 = load ptr, ptr %39, align 8, !tbaa !126
  tail call void @store_picture_in_dpb(ptr noundef %106, ptr noundef %51) #19
  store i32 %46, ptr %40, align 8, !tbaa !93
  %107 = load i32, ptr %41, align 8, !tbaa !94
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %43, ptr noundef nonnull align 4 dereferenceable(64) %44, i64 64, i1 false), !tbaa !65
  %108 = add nsw i32 %46, 1
  %109 = srem i32 %108, %107
  store i32 0, ptr %42, align 4, !tbaa !65
  %110 = icmp eq i32 %27, %109
  br i1 %110, label %111, label %45, !llvm.loop !127

111:                                              ; preds = %105, %24
  store i32 %5, ptr %4, align 8, !tbaa !65
  store i32 %7, ptr %6, align 4, !tbaa !65
  store i32 %27, ptr %26, align 4, !tbaa !95
  ret void
}

declare ptr @alloc_storable_picture(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @flush_dpb(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @store_picture_in_dpb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_ref_list_for_concealment(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !87
  %3 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !115
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %9 = zext i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %24
  %11 = phi i64 [ 0, %6 ], [ %26, %24 ]
  %12 = phi i32 [ 0, %6 ], [ %25, %24 ]
  %13 = load ptr, ptr %7, align 8, !tbaa !116
  %14 = getelementptr inbounds ptr, ptr %13, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  %16 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 11
  %17 = load i32, ptr %16, align 4, !tbaa !128
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = load ptr, ptr %8, align 8, !tbaa !129
  %21 = add i32 %12, 1
  %22 = zext i32 %12 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  store ptr %15, ptr %23, align 8, !tbaa !74
  br label %24

24:                                               ; preds = %10, %19
  %25 = phi i32 [ %21, %19 ], [ %12, %10 ]
  %26 = add nuw nsw i64 %11, 1
  %27 = icmp eq i64 %26, %9
  br i1 %27, label %28, label %10, !llvm.loop !130

28:                                               ; preds = %24, %1
  %29 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !131
  %31 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %30, i64 0, i32 21
  %32 = load i32, ptr %31, align 8, !tbaa !132
  %33 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  store i32 %32, ptr %33, align 8, !tbaa !134
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @init_lists_for_non_reference_loss(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = load ptr, ptr %0, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !135
  %7 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 18
  %8 = load i32, ptr %7, align 4, !tbaa !136
  %9 = add i32 %8, 4
  %10 = shl nsw i32 -1, %9
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !134
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %54, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !116
  %19 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 97
  %20 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %21 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %22 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %23 = zext i32 %14 to i64
  br label %24

24:                                               ; preds = %16, %51
  %25 = phi i64 [ 0, %16 ], [ %52, %51 ]
  %26 = getelementptr inbounds ptr, ptr %18, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !74
  %28 = getelementptr inbounds %struct.frame_store, ptr %27, i64 0, i32 11
  %29 = load i32, ptr %28, align 4, !tbaa !128
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %51

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.frame_store, ptr %27, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !140
  %34 = load i32, ptr %19, align 8, !tbaa !141
  %35 = icmp ugt i32 %33, %34
  %36 = select i1 %35, ptr %21, ptr %20
  %37 = select i1 %35, i32 %10, i32 0
  %38 = add i32 %33, %37
  %39 = load ptr, ptr %36, align 8, !tbaa !129
  %40 = getelementptr inbounds ptr, ptr %39, i64 %25
  %41 = load ptr, ptr %40, align 8, !tbaa !74
  %42 = getelementptr inbounds %struct.frame_store, ptr %41, i64 0, i32 7
  store i32 %38, ptr %42, align 4, !tbaa !142
  %43 = load ptr, ptr %22, align 8, !tbaa !129
  %44 = getelementptr inbounds ptr, ptr %43, i64 %25
  %45 = load ptr, ptr %44, align 8, !tbaa !74
  %46 = getelementptr inbounds %struct.frame_store, ptr %45, i64 0, i32 7
  %47 = load i32, ptr %46, align 4, !tbaa !142
  %48 = getelementptr inbounds %struct.frame_store, ptr %45, i64 0, i32 12
  %49 = load ptr, ptr %48, align 8, !tbaa !119
  %50 = getelementptr inbounds %struct.storable_picture, ptr %49, i64 0, i32 7
  store i32 %47, ptr %50, align 4, !tbaa !103
  br label %51

51:                                               ; preds = %24, %31
  %52 = add nuw nsw i64 %25, 1
  %53 = icmp eq i64 %52, %23
  br i1 %53, label %54, label %24, !llvm.loop !143

54:                                               ; preds = %51, %12, %3
  %55 = or i32 %2, %1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %100

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %59 = load i32, ptr %58, align 4, !tbaa !115
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %88, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %63 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 19
  %64 = zext i32 %59 to i64
  br label %65

65:                                               ; preds = %61, %84
  %66 = phi i64 [ 0, %61 ], [ %86, %84 ]
  %67 = phi i32 [ 0, %61 ], [ %85, %84 ]
  %68 = load ptr, ptr %62, align 8, !tbaa !116
  %69 = getelementptr inbounds ptr, ptr %68, i64 %66
  %70 = load ptr, ptr %69, align 8, !tbaa !74
  %71 = getelementptr inbounds %struct.frame_store, ptr %70, i64 0, i32 11
  %72 = load i32, ptr %71, align 4, !tbaa !128
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %84

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.frame_store, ptr %70, i64 0, i32 12
  %76 = load ptr, ptr %75, align 8, !tbaa !119
  %77 = load ptr, ptr %63, align 8, !tbaa !73
  %78 = load ptr, ptr %77, align 8, !tbaa !74
  %79 = getelementptr inbounds %struct.slice, ptr %78, i64 0, i32 56
  %80 = load ptr, ptr %79, align 8, !tbaa !74
  %81 = add nsw i32 %67, 1
  %82 = sext i32 %67 to i64
  %83 = getelementptr inbounds ptr, ptr %80, i64 %82
  store ptr %76, ptr %83, align 8, !tbaa !74
  br label %84

84:                                               ; preds = %65, %74
  %85 = phi i32 [ %81, %74 ], [ %67, %65 ]
  %86 = add nuw nsw i64 %66, 1
  %87 = icmp eq i64 %86, %64
  br i1 %87, label %88, label %65, !llvm.loop !144

88:                                               ; preds = %84, %57
  %89 = phi i32 [ 0, %57 ], [ %85, %84 ]
  %90 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 19
  %91 = load ptr, ptr %90, align 8, !tbaa !73
  %92 = load ptr, ptr %91, align 8, !tbaa !74
  %93 = getelementptr inbounds %struct.slice, ptr %92, i64 0, i32 56
  %94 = load ptr, ptr %93, align 8, !tbaa !74
  %95 = sext i32 %89 to i64
  tail call void @qsort(ptr noundef %94, i64 noundef %95, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #19
  %96 = trunc i32 %89 to i8
  %97 = load ptr, ptr %90, align 8, !tbaa !73
  %98 = load ptr, ptr %97, align 8, !tbaa !74
  %99 = getelementptr inbounds %struct.slice, ptr %98, i64 0, i32 55
  store i8 %96, ptr %99, align 8, !tbaa !52
  br label %100

100:                                              ; preds = %88, %54
  %101 = phi i32 [ %89, %88 ], [ 0, %54 ]
  %102 = icmp eq i32 %1, 1
  %103 = and i1 %102, %11
  br i1 %103, label %104, label %267

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %106 = load i32, ptr %105, align 4, !tbaa !115
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %141, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %110 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 96
  %111 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 19
  %112 = zext i32 %106 to i64
  br label %113

113:                                              ; preds = %108, %137
  %114 = phi i64 [ 0, %108 ], [ %139, %137 ]
  %115 = phi i32 [ %101, %108 ], [ %138, %137 ]
  %116 = load ptr, ptr %109, align 8, !tbaa !116
  %117 = getelementptr inbounds ptr, ptr %116, i64 %114
  %118 = load ptr, ptr %117, align 8, !tbaa !74
  %119 = getelementptr inbounds %struct.frame_store, ptr %118, i64 0, i32 11
  %120 = load i32, ptr %119, align 4, !tbaa !128
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %137

122:                                              ; preds = %113
  %123 = load i32, ptr %110, align 4, !tbaa !92
  %124 = getelementptr inbounds %struct.frame_store, ptr %118, i64 0, i32 12
  %125 = load ptr, ptr %124, align 8, !tbaa !119
  %126 = getelementptr inbounds %struct.storable_picture, ptr %125, i64 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !114
  %128 = icmp sgt i32 %123, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = load ptr, ptr %111, align 8, !tbaa !73
  %131 = load ptr, ptr %130, align 8, !tbaa !74
  %132 = getelementptr inbounds %struct.slice, ptr %131, i64 0, i32 56
  %133 = load ptr, ptr %132, align 8, !tbaa !74
  %134 = add nsw i32 %115, 1
  %135 = sext i32 %115 to i64
  %136 = getelementptr inbounds ptr, ptr %133, i64 %135
  store ptr %125, ptr %136, align 8, !tbaa !74
  br label %137

137:                                              ; preds = %113, %129, %122
  %138 = phi i32 [ %134, %129 ], [ %115, %122 ], [ %115, %113 ]
  %139 = add nuw nsw i64 %114, 1
  %140 = icmp eq i64 %139, %112
  br i1 %140, label %141, label %113, !llvm.loop !145

141:                                              ; preds = %137, %104
  %142 = phi i32 [ %101, %104 ], [ %138, %137 ]
  %143 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %144 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 19
  %145 = load ptr, ptr %144, align 8, !tbaa !73
  %146 = load ptr, ptr %145, align 8, !tbaa !74
  %147 = getelementptr inbounds %struct.slice, ptr %146, i64 0, i32 56
  %148 = load ptr, ptr %147, align 8, !tbaa !74
  %149 = sext i32 %142 to i64
  tail call void @qsort(ptr noundef %148, i64 noundef %149, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_desc) #19
  %150 = load i32, ptr %143, align 4, !tbaa !115
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %184, label %152

152:                                              ; preds = %141
  %153 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %154 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 96
  %155 = zext i32 %150 to i64
  br label %156

156:                                              ; preds = %152, %180
  %157 = phi i64 [ 0, %152 ], [ %182, %180 ]
  %158 = phi i32 [ %142, %152 ], [ %181, %180 ]
  %159 = load ptr, ptr %153, align 8, !tbaa !116
  %160 = getelementptr inbounds ptr, ptr %159, i64 %157
  %161 = load ptr, ptr %160, align 8, !tbaa !74
  %162 = getelementptr inbounds %struct.frame_store, ptr %161, i64 0, i32 11
  %163 = load i32, ptr %162, align 4, !tbaa !128
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %180

165:                                              ; preds = %156
  %166 = load i32, ptr %154, align 4, !tbaa !92
  %167 = getelementptr inbounds %struct.frame_store, ptr %161, i64 0, i32 12
  %168 = load ptr, ptr %167, align 8, !tbaa !119
  %169 = getelementptr inbounds %struct.storable_picture, ptr %168, i64 0, i32 1
  %170 = load i32, ptr %169, align 4, !tbaa !114
  %171 = icmp slt i32 %166, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %165
  %173 = load ptr, ptr %144, align 8, !tbaa !73
  %174 = load ptr, ptr %173, align 8, !tbaa !74
  %175 = getelementptr inbounds %struct.slice, ptr %174, i64 0, i32 56
  %176 = load ptr, ptr %175, align 8, !tbaa !74
  %177 = add nsw i32 %158, 1
  %178 = sext i32 %158 to i64
  %179 = getelementptr inbounds ptr, ptr %176, i64 %178
  store ptr %168, ptr %179, align 8, !tbaa !74
  br label %180

180:                                              ; preds = %156, %172, %165
  %181 = phi i32 [ %177, %172 ], [ %158, %165 ], [ %158, %156 ]
  %182 = add nuw nsw i64 %157, 1
  %183 = icmp eq i64 %182, %155
  br i1 %183, label %184, label %156, !llvm.loop !146

184:                                              ; preds = %180, %141
  %185 = phi i32 [ %142, %141 ], [ %181, %180 ]
  %186 = load ptr, ptr %144, align 8, !tbaa !73
  %187 = load ptr, ptr %186, align 8, !tbaa !74
  %188 = getelementptr inbounds %struct.slice, ptr %187, i64 0, i32 56
  %189 = load ptr, ptr %188, align 8, !tbaa !74
  %190 = getelementptr inbounds ptr, ptr %189, i64 %149
  %191 = sub nsw i32 %185, %142
  %192 = sext i32 %191 to i64
  tail call void @qsort(ptr noundef %190, i64 noundef %192, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_asc) #19
  %193 = icmp sgt i32 %142, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %184
  %195 = sext i32 %191 to i64
  %196 = zext nneg i32 %142 to i64
  br label %203

197:                                              ; preds = %203, %184
  %198 = icmp slt i32 %142, %185
  br i1 %198, label %199, label %231

199:                                              ; preds = %197
  %200 = sext i32 %142 to i64
  %201 = sext i32 %142 to i64
  %202 = sext i32 %185 to i64
  br label %217

203:                                              ; preds = %194, %203
  %204 = phi i64 [ 0, %194 ], [ %215, %203 ]
  %205 = load ptr, ptr %144, align 8, !tbaa !73
  %206 = load ptr, ptr %205, align 8, !tbaa !74
  %207 = getelementptr inbounds %struct.slice, ptr %206, i64 0, i32 56
  %208 = load ptr, ptr %207, align 8, !tbaa !74
  %209 = getelementptr inbounds ptr, ptr %208, i64 %204
  %210 = load ptr, ptr %209, align 8, !tbaa !74
  %211 = getelementptr inbounds %struct.slice, ptr %206, i64 0, i32 56, i64 1
  %212 = load ptr, ptr %211, align 8, !tbaa !74
  %213 = getelementptr ptr, ptr %212, i64 %204
  %214 = getelementptr ptr, ptr %213, i64 %195
  store ptr %210, ptr %214, align 8, !tbaa !74
  %215 = add nuw nsw i64 %204, 1
  %216 = icmp eq i64 %215, %196
  br i1 %216, label %197, label %203, !llvm.loop !147

217:                                              ; preds = %199, %217
  %218 = phi i64 [ %200, %199 ], [ %229, %217 ]
  %219 = load ptr, ptr %144, align 8, !tbaa !73
  %220 = load ptr, ptr %219, align 8, !tbaa !74
  %221 = getelementptr inbounds %struct.slice, ptr %220, i64 0, i32 56
  %222 = load ptr, ptr %221, align 8, !tbaa !74
  %223 = getelementptr inbounds ptr, ptr %222, i64 %218
  %224 = load ptr, ptr %223, align 8, !tbaa !74
  %225 = getelementptr inbounds %struct.slice, ptr %220, i64 0, i32 56, i64 1
  %226 = load ptr, ptr %225, align 8, !tbaa !74
  %227 = sub nsw i64 %218, %201
  %228 = getelementptr inbounds ptr, ptr %226, i64 %227
  store ptr %224, ptr %228, align 8, !tbaa !74
  %229 = add nsw i64 %218, 1
  %230 = icmp eq i64 %229, %202
  br i1 %230, label %231, label %217, !llvm.loop !148

231:                                              ; preds = %217, %197
  %232 = trunc i32 %185 to i8
  %233 = load ptr, ptr %144, align 8, !tbaa !73
  %234 = load ptr, ptr %233, align 8, !tbaa !74
  %235 = getelementptr inbounds %struct.slice, ptr %234, i64 0, i32 55, i64 1
  store i8 %232, ptr %235, align 1, !tbaa !52
  %236 = load ptr, ptr %144, align 8, !tbaa !73
  %237 = load ptr, ptr %236, align 8, !tbaa !74
  %238 = getelementptr inbounds %struct.slice, ptr %237, i64 0, i32 55
  store i8 %232, ptr %238, align 8, !tbaa !52
  %239 = load ptr, ptr %144, align 8, !tbaa !73
  %240 = load ptr, ptr %239, align 8, !tbaa !74
  %241 = getelementptr inbounds %struct.slice, ptr %240, i64 0, i32 56
  %242 = load ptr, ptr %241, align 8, !tbaa !74
  %243 = getelementptr inbounds %struct.slice, ptr %240, i64 0, i32 55
  %244 = load i8, ptr %243, align 8, !tbaa !52
  %245 = sext i8 %244 to i64
  %246 = getelementptr inbounds ptr, ptr %242, i64 %245
  %247 = sext i8 %244 to i32
  %248 = sub nsw i32 %185, %247
  %249 = sext i32 %248 to i64
  tail call void @qsort(ptr noundef %246, i64 noundef %249, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #19
  %250 = load ptr, ptr %144, align 8, !tbaa !73
  %251 = load ptr, ptr %250, align 8, !tbaa !74
  %252 = getelementptr inbounds %struct.slice, ptr %251, i64 0, i32 56, i64 1
  %253 = load ptr, ptr %252, align 8, !tbaa !74
  %254 = getelementptr inbounds %struct.slice, ptr %251, i64 0, i32 55
  %255 = load i8, ptr %254, align 8, !tbaa !52
  %256 = sext i8 %255 to i64
  %257 = getelementptr inbounds ptr, ptr %253, i64 %256
  %258 = sext i8 %255 to i32
  %259 = sub nsw i32 %185, %258
  %260 = sext i32 %259 to i64
  tail call void @qsort(ptr noundef %257, i64 noundef %260, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #19
  %261 = load ptr, ptr %144, align 8, !tbaa !73
  %262 = load ptr, ptr %261, align 8, !tbaa !74
  %263 = getelementptr inbounds %struct.slice, ptr %262, i64 0, i32 55, i64 1
  store i8 %232, ptr %263, align 1, !tbaa !52
  %264 = load ptr, ptr %144, align 8, !tbaa !73
  %265 = load ptr, ptr %264, align 8, !tbaa !74
  %266 = getelementptr inbounds %struct.slice, ptr %265, i64 0, i32 55
  store i8 %232, ptr %266, align 8, !tbaa !52
  br label %267

267:                                              ; preds = %231, %100
  %268 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 19
  %269 = load ptr, ptr %268, align 8, !tbaa !73
  %270 = load ptr, ptr %269, align 8, !tbaa !74
  %271 = getelementptr inbounds %struct.slice, ptr %270, i64 0, i32 55
  %272 = load i8, ptr %271, align 8, !tbaa !52
  %273 = getelementptr inbounds %struct.slice, ptr %270, i64 0, i32 55, i64 1
  %274 = load i8, ptr %273, align 1, !tbaa !52
  %275 = icmp eq i8 %272, %274
  %276 = icmp sgt i8 %272, 1
  %277 = and i1 %276, %275
  br i1 %277, label %278, label %309

278:                                              ; preds = %267
  %279 = sext i8 %272 to i64
  %280 = getelementptr inbounds %struct.slice, ptr %270, i64 0, i32 56
  %281 = load ptr, ptr %280, align 8, !tbaa !74
  %282 = getelementptr inbounds %struct.slice, ptr %270, i64 0, i32 56, i64 1
  %283 = load ptr, ptr %282, align 8, !tbaa !74
  %284 = and i64 %279, 4294967295
  br label %285

285:                                              ; preds = %278, %285
  %286 = phi i64 [ 0, %278 ], [ %294, %285 ]
  %287 = phi i32 [ 0, %278 ], [ %293, %285 ]
  %288 = getelementptr inbounds ptr, ptr %281, i64 %286
  %289 = load ptr, ptr %288, align 8, !tbaa !74
  %290 = getelementptr inbounds ptr, ptr %283, i64 %286
  %291 = load ptr, ptr %290, align 8, !tbaa !74
  %292 = icmp eq ptr %289, %291
  %293 = select i1 %292, i32 %287, i32 1
  %294 = add nuw nsw i64 %286, 1
  %295 = icmp eq i64 %294, %284
  br i1 %295, label %296, label %285, !llvm.loop !149

296:                                              ; preds = %285
  %297 = icmp eq i32 %293, 0
  br i1 %297, label %298, label %309

298:                                              ; preds = %296
  %299 = getelementptr inbounds %struct.slice, ptr %270, i64 0, i32 56, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !74
  %301 = load ptr, ptr %300, align 8, !tbaa !74
  %302 = getelementptr inbounds ptr, ptr %300, i64 1
  %303 = load ptr, ptr %302, align 8, !tbaa !74
  store ptr %303, ptr %300, align 8, !tbaa !74
  %304 = load ptr, ptr %268, align 8, !tbaa !73
  %305 = load ptr, ptr %304, align 8, !tbaa !74
  %306 = getelementptr inbounds %struct.slice, ptr %305, i64 0, i32 56, i64 1
  %307 = load ptr, ptr %306, align 8, !tbaa !74
  %308 = getelementptr inbounds ptr, ptr %307, i64 1
  store ptr %301, ptr %308, align 8, !tbaa !74
  br label %309

309:                                              ; preds = %296, %298, %267
  %310 = load ptr, ptr %268, align 8, !tbaa !73
  %311 = load ptr, ptr %310, align 8, !tbaa !74
  %312 = getelementptr inbounds %struct.slice, ptr %311, i64 0, i32 55
  %313 = load i8, ptr %312, align 8, !tbaa !52
  %314 = sext i8 %313 to i32
  %315 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 26
  %316 = load i32, ptr %315, align 4, !tbaa !150
  %317 = tail call i32 @llvm.smin.i32(i32 %314, i32 %316)
  %318 = trunc i32 %317 to i8
  store i8 %318, ptr %312, align 8, !tbaa !52
  %319 = load ptr, ptr %268, align 8, !tbaa !73
  %320 = load ptr, ptr %319, align 8, !tbaa !74
  %321 = getelementptr inbounds %struct.slice, ptr %320, i64 0, i32 55, i64 1
  %322 = load i8, ptr %321, align 1, !tbaa !52
  %323 = sext i8 %322 to i32
  %324 = load i32, ptr %315, align 4, !tbaa !150
  %325 = tail call i32 @llvm.smin.i32(i32 %323, i32 %324)
  %326 = trunc i32 %325 to i8
  store i8 %326, ptr %321, align 1, !tbaa !52
  %327 = load ptr, ptr %268, align 8, !tbaa !73
  %328 = load ptr, ptr %327, align 8, !tbaa !74
  %329 = getelementptr inbounds %struct.slice, ptr %328, i64 0, i32 55, i64 1
  store i8 0, ptr %329, align 1, !tbaa !52
  %330 = load ptr, ptr %268, align 8, !tbaa !73
  %331 = load ptr, ptr %330, align 8, !tbaa !74
  %332 = getelementptr inbounds %struct.slice, ptr %331, i64 0, i32 55
  %333 = load i8, ptr %332, align 8, !tbaa !52
  %334 = icmp ult i8 %333, 33
  br i1 %334, label %335, label %347

335:                                              ; preds = %309
  %336 = zext nneg i8 %333 to i64
  br label %337

337:                                              ; preds = %335, %337
  %338 = phi i64 [ %336, %335 ], [ %344, %337 ]
  %339 = load ptr, ptr %268, align 8, !tbaa !73
  %340 = load ptr, ptr %339, align 8, !tbaa !74
  %341 = getelementptr inbounds %struct.slice, ptr %340, i64 0, i32 56
  %342 = load ptr, ptr %341, align 8, !tbaa !74
  %343 = getelementptr inbounds ptr, ptr %342, i64 %338
  store ptr null, ptr %343, align 8, !tbaa !74
  %344 = add nuw nsw i64 %338, 1
  %345 = and i64 %344, 4294967295
  %346 = icmp eq i64 %345, 33
  br i1 %346, label %347, label %337, !llvm.loop !151

347:                                              ; preds = %337, %309
  %348 = load ptr, ptr %268, align 8, !tbaa !73
  %349 = load ptr, ptr %348, align 8, !tbaa !74
  %350 = getelementptr inbounds %struct.slice, ptr %349, i64 0, i32 55, i64 1
  %351 = load i8, ptr %350, align 1, !tbaa !52
  %352 = icmp ult i8 %351, 33
  br i1 %352, label %353, label %365

353:                                              ; preds = %347
  %354 = zext nneg i8 %351 to i64
  br label %355

355:                                              ; preds = %353, %355
  %356 = phi i64 [ %354, %353 ], [ %362, %355 ]
  %357 = load ptr, ptr %268, align 8, !tbaa !73
  %358 = load ptr, ptr %357, align 8, !tbaa !74
  %359 = getelementptr inbounds %struct.slice, ptr %358, i64 0, i32 56, i64 1
  %360 = load ptr, ptr %359, align 8, !tbaa !74
  %361 = getelementptr inbounds ptr, ptr %360, i64 %356
  store ptr null, ptr %361, align 8, !tbaa !74
  %362 = add nuw nsw i64 %356, 1
  %363 = and i64 %362, 4294967295
  %364 = icmp eq i64 %363, 33
  br i1 %364, label %365, label %355, !llvm.loop !152

365:                                              ; preds = %355, %347
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_pic_num_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = load ptr, ptr %0, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !103
  %6 = load ptr, ptr %1, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !103
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_poc_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = load ptr, ptr %0, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !114
  %6 = load ptr, ptr %1, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !114
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_poc_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = load ptr, ptr %0, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !114
  %6 = load ptr, ptr %1, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !114
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_lt_pic_num_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = load ptr, ptr %0, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !153
  %6 = load ptr, ptr %1, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !153
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @get_pic_from_dpb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #9 {
  %4 = load ptr, ptr %0, align 8, !tbaa !87
  %5 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !115
  %7 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 95
  %8 = load i32, ptr %7, align 8, !tbaa !154
  switch i32 %8, label %17 [
    i32 1, label %9
    i32 2, label %13
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 94
  %11 = load i32, ptr %10, align 4, !tbaa !90
  %12 = sub nsw i32 %1, %11
  br label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 94
  %15 = load i32, ptr %14, align 4, !tbaa !90
  %16 = add nsw i32 %15, %1
  br label %17

17:                                               ; preds = %3, %13, %9
  %18 = phi i32 [ %12, %9 ], [ %16, %13 ], [ 0, %3 ]
  %19 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %20 = zext i32 %6 to i64
  br label %21

21:                                               ; preds = %26, %17
  %22 = phi i64 [ %23, %26 ], [ %20, %17 ]
  %23 = add nsw i64 %22, -1
  %24 = trunc i64 %23 to i32
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load ptr, ptr %19, align 8, !tbaa !116
  %28 = and i64 %23, 4294967295
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !74
  %31 = getelementptr inbounds %struct.frame_store, ptr %30, i64 0, i32 10
  %32 = load i32, ptr %31, align 8, !tbaa !155
  %33 = icmp eq i32 %32, %18
  br i1 %33, label %34, label %21, !llvm.loop !156

34:                                               ; preds = %26
  store i32 %24, ptr %2, align 4, !tbaa !65
  %35 = getelementptr inbounds %struct.frame_store, ptr %30, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !119
  br label %37

37:                                               ; preds = %21, %34
  %38 = phi ptr [ %36, %34 ], [ null, %21 ]
  ret ptr %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @comp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = load i32, ptr %0, align 4, !tbaa !65
  %4 = load i32, ptr %1, align 4, !tbaa !65
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @init_node(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !157
  %6 = getelementptr inbounds %struct.concealment_node, ptr %3, i64 0, i32 1
  store i32 %1, ptr %6, align 8, !tbaa !159
  %7 = getelementptr inbounds %struct.concealment_node, ptr %3, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !160
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %3, %5 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_node(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.concealment_node, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !159
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %3)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind uwtable
define dso_local void @print_list(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %9, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.concealment_node, ptr %4, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !159
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %6)
  %8 = getelementptr inbounds %struct.concealment_node, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !160
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3, !llvm.loop !161

11:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @delete_list(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 38
  %4 = load ptr, ptr %3, align 8, !tbaa !162
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %4, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %16

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %12, %9 ], [ %4, %6 ]
  %11 = getelementptr inbounds %struct.concealment_node, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !160
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %9, !llvm.loop !163

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 39
  store ptr %10, ptr %15, align 8, !tbaa !164
  br label %16

16:                                               ; preds = %14, %8
  %17 = icmp eq ptr %1, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %21, %18 ], [ %1, %16 ]
  %20 = getelementptr inbounds %struct.concealment_node, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !160
  tail call void @free(ptr noundef %19) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !llvm.loop !165

23:                                               ; preds = %18, %16, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @conceal_non_ref_pics(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !115
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %140, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 135
  %9 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !166
  %11 = zext i32 %10 to i64
  tail call void @qsort(ptr noundef nonnull %8, i64 noundef %11, i64 noundef 4, ptr noundef nonnull @comp) #19
  %12 = load i32, ptr %9, align 8, !tbaa !166
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %139, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 94
  %16 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 23
  %17 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 24
  %18 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 25
  %19 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 26
  %20 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 96
  %21 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %22 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 97
  %24 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %25 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %26 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 99
  %27 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 38
  %28 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 39
  %29 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 39
  br label %30

30:                                               ; preds = %14, %134
  %31 = phi i64 [ 0, %14 ], [ %33, %134 ]
  %32 = phi i32 [ %12, %14 ], [ %135, %134 ]
  store i32 %32, ptr %4, align 4, !tbaa !115
  %33 = add nuw nsw i64 %31, 1
  %34 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 135, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !65
  %36 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 135, i64 %31
  %37 = load i32, ptr %36, align 4, !tbaa !65
  %38 = sub nsw i32 %35, %37
  %39 = load i32, ptr %15, align 4, !tbaa !90
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %134

41:                                               ; preds = %30
  %42 = load i32, ptr %16, align 4, !tbaa !98
  %43 = load i32, ptr %17, align 8, !tbaa !99
  %44 = load i32, ptr %18, align 4, !tbaa !100
  %45 = load i32, ptr %19, align 8, !tbaa !101
  %46 = tail call ptr @alloc_storable_picture(ptr noundef %3, i32 noundef 0, i32 noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %45) #19
  %47 = load i32, ptr %36, align 4, !tbaa !65
  %48 = load i32, ptr %15, align 4, !tbaa !90
  %49 = add nsw i32 %48, %47
  %50 = load i32, ptr %20, align 4, !tbaa !92
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %134

52:                                               ; preds = %41
  store i32 %49, ptr %20, align 4, !tbaa !92
  %53 = getelementptr inbounds %struct.storable_picture, ptr %46, i64 0, i32 2
  store i32 %49, ptr %53, align 8, !tbaa !111
  %54 = getelementptr inbounds %struct.storable_picture, ptr %46, i64 0, i32 3
  store i32 %49, ptr %54, align 4, !tbaa !112
  %55 = getelementptr inbounds %struct.storable_picture, ptr %46, i64 0, i32 4
  store i32 %49, ptr %55, align 8, !tbaa !113
  %56 = getelementptr inbounds %struct.storable_picture, ptr %46, i64 0, i32 1
  store i32 %49, ptr %56, align 4, !tbaa !114
  %57 = load ptr, ptr %0, align 8, !tbaa !87
  %58 = load i32, ptr %4, align 4, !tbaa !115
  %59 = getelementptr inbounds %struct.video_par, ptr %57, i64 0, i32 95
  %60 = load i32, ptr %59, align 8, !tbaa !154
  switch i32 %60, label %69 [
    i32 1, label %61
    i32 2, label %65
  ]

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.video_par, ptr %57, i64 0, i32 94
  %63 = load i32, ptr %62, align 4, !tbaa !90
  %64 = sub nsw i32 %49, %63
  br label %69

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.video_par, ptr %57, i64 0, i32 94
  %67 = load i32, ptr %66, align 4, !tbaa !90
  %68 = add nsw i32 %67, %49
  br label %69

69:                                               ; preds = %65, %61, %52
  %70 = phi i32 [ %64, %61 ], [ %68, %65 ], [ 0, %52 ]
  %71 = load ptr, ptr %21, align 8, !tbaa !116
  %72 = zext i32 %58 to i64
  br label %73

73:                                               ; preds = %73, %69
  %74 = phi i32 [ %85, %73 ], [ %58, %69 ]
  %75 = phi i64 [ %76, %73 ], [ %72, %69 ]
  %76 = add i64 %75, -1
  %77 = and i64 %76, 2147483648
  %78 = icmp eq i64 %77, 0
  tail call void @llvm.assume(i1 %78)
  %79 = and i64 %76, 2147483647
  %80 = getelementptr inbounds ptr, ptr %71, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !74
  %82 = getelementptr inbounds %struct.frame_store, ptr %81, i64 0, i32 10
  %83 = load i32, ptr %82, align 8, !tbaa !155
  %84 = icmp eq i32 %83, %70
  %85 = add i32 %74, -1
  br i1 %84, label %86, label %73, !llvm.loop !156

86:                                               ; preds = %73
  %87 = trunc i64 %75 to i32
  %88 = getelementptr inbounds %struct.frame_store, ptr %81, i64 0, i32 12
  %89 = load ptr, ptr %88, align 8, !tbaa !119
  store i32 %87, ptr %4, align 4, !tbaa !115
  %90 = getelementptr inbounds %struct.storable_picture, ptr %89, i64 0, i32 5
  %91 = load i32, ptr %90, align 4, !tbaa !104
  %92 = add i32 %91, 1
  store i32 %92, ptr %23, align 8, !tbaa !141
  %93 = icmp eq i32 %87, 0
  br i1 %93, label %114, label %94

94:                                               ; preds = %86
  %95 = zext i32 %74 to i64
  br label %96

96:                                               ; preds = %94, %110
  %97 = phi i64 [ 0, %94 ], [ %112, %110 ]
  %98 = phi i32 [ 0, %94 ], [ %111, %110 ]
  %99 = load ptr, ptr %22, align 8, !tbaa !116
  %100 = getelementptr inbounds ptr, ptr %99, i64 %97
  %101 = load ptr, ptr %100, align 8, !tbaa !74
  %102 = getelementptr inbounds %struct.frame_store, ptr %101, i64 0, i32 11
  %103 = load i32, ptr %102, align 4, !tbaa !128
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %96
  %106 = load ptr, ptr %24, align 8, !tbaa !129
  %107 = add i32 %98, 1
  %108 = zext i32 %98 to i64
  %109 = getelementptr inbounds ptr, ptr %106, i64 %108
  store ptr %101, ptr %109, align 8, !tbaa !74
  br label %110

110:                                              ; preds = %105, %96
  %111 = phi i32 [ %107, %105 ], [ %98, %96 ]
  %112 = add nuw nsw i64 %97, 1
  %113 = icmp eq i64 %112, %95
  br i1 %113, label %114, label %96, !llvm.loop !130

114:                                              ; preds = %110, %86
  %115 = getelementptr inbounds %struct.video_par, ptr %57, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !131
  %117 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %116, i64 0, i32 21
  %118 = load i32, ptr %117, align 8, !tbaa !132
  store i32 %118, ptr %25, align 8, !tbaa !134
  store i32 1, ptr %26, align 8, !tbaa !122
  tail call fastcc void @copy_to_conceal(ptr noundef %89, ptr noundef %46, ptr noundef %3)
  %119 = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #21
  %120 = icmp eq ptr %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %114
  store ptr %46, ptr %119, align 8, !tbaa !157
  %122 = getelementptr inbounds %struct.concealment_node, ptr %119, i64 0, i32 1
  store i32 %49, ptr %122, align 8, !tbaa !159
  %123 = getelementptr inbounds %struct.concealment_node, ptr %119, i64 0, i32 2
  store ptr null, ptr %123, align 8, !tbaa !160
  br label %124

124:                                              ; preds = %114, %121
  %125 = phi ptr [ %119, %121 ], [ null, %114 ]
  %126 = load ptr, ptr %27, align 8, !tbaa !162
  %127 = icmp eq ptr %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %28, align 8, !tbaa !164
  %130 = getelementptr inbounds %struct.concealment_node, ptr %129, i64 0, i32 2
  br label %131

131:                                              ; preds = %124, %128
  %132 = phi ptr [ %130, %128 ], [ %27, %124 ]
  %133 = phi ptr [ %28, %128 ], [ %29, %124 ]
  store ptr %125, ptr %132, align 8, !tbaa !74
  store ptr %125, ptr %133, align 8, !tbaa !164
  br label %134

134:                                              ; preds = %131, %30, %41
  %135 = load i32, ptr %9, align 8, !tbaa !166
  %136 = sub i32 %135, %1
  %137 = zext i32 %136 to i64
  %138 = icmp ult i64 %33, %137
  br i1 %138, label %30, label %139, !llvm.loop !167

139:                                              ; preds = %134, %7
  store i32 %5, ptr %4, align 4, !tbaa !115
  br label %140

140:                                              ; preds = %2, %139
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_to_conceal(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 27
  %6 = load i32, ptr %5, align 4, !tbaa !168
  %7 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 27
  store i32 %6, ptr %7, align 4, !tbaa !168
  %8 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 99
  %9 = load i32, ptr %8, align 8, !tbaa !122
  %10 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 43
  store i32 %9, ptr %10, align 8, !tbaa !123
  %11 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 43
  store i32 %9, ptr %11, align 8, !tbaa !123
  %12 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 44
  store i32 0, ptr %12, align 4, !tbaa !124
  %13 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 45
  %14 = load i32, ptr %13, align 8, !tbaa !169
  %15 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 45
  store i32 %14, ptr %15, align 8, !tbaa !169
  %16 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 46
  %17 = load i32, ptr %16, align 4, !tbaa !170
  %18 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 46
  store i32 %17, ptr %18, align 4, !tbaa !170
  %19 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 47
  store i32 0, ptr %19, align 8, !tbaa !109
  %20 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 47
  store i32 0, ptr %20, align 8, !tbaa !109
  %21 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 48
  %22 = load i32, ptr %21, align 4, !tbaa !81
  %23 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 48
  store i32 %22, ptr %23, align 4, !tbaa !81
  %24 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 49
  %25 = load i32, ptr %24, align 8, !tbaa !171
  %26 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 49
  store i32 %25, ptr %26, align 8, !tbaa !171
  %27 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 50
  %28 = load i32, ptr %27, align 4, !tbaa !172
  %29 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 50
  store i32 %28, ptr %29, align 4, !tbaa !172
  %30 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 51
  %31 = load i32, ptr %30, align 8, !tbaa !173
  %32 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 51
  store i32 %31, ptr %32, align 8, !tbaa !173
  %33 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 52
  %34 = load i32, ptr %33, align 4, !tbaa !174
  %35 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 52
  store i32 %34, ptr %35, align 4, !tbaa !174
  %36 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 54
  %37 = load i32, ptr %36, align 4, !tbaa !175
  %38 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 54
  store i32 %37, ptr %38, align 4, !tbaa !175
  %39 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 53
  %40 = load i32, ptr %39, align 8, !tbaa !176
  %41 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 53
  store i32 %40, ptr %41, align 8, !tbaa !176
  %42 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 55
  %43 = load i32, ptr %42, align 8, !tbaa !177
  %44 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 55
  store i32 %43, ptr %44, align 8, !tbaa !177
  %45 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 57
  %46 = load i32, ptr %45, align 4, !tbaa !178
  %47 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 57
  store i32 %46, ptr %47, align 4, !tbaa !178
  %48 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 95
  %49 = load i32, ptr %48, align 8, !tbaa !154
  switch i32 %49, label %524 [
    i32 1, label %50
    i32 2, label %131
  ]

50:                                               ; preds = %3
  %51 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 26
  %52 = load i32, ptr %51, align 8, !tbaa !179
  %53 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 26
  store i32 %52, ptr %53, align 8, !tbaa !179
  %54 = load i32, ptr %5, align 4, !tbaa !168
  store i32 %54, ptr %7, align 4, !tbaa !168
  %55 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 32
  %56 = load ptr, ptr %55, align 8, !tbaa !75
  %57 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 33
  %58 = load ptr, ptr %57, align 8, !tbaa !82
  %59 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %60 = load ptr, ptr %59, align 8, !tbaa !75
  %61 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %62 = load ptr, ptr %61, align 8, !tbaa !82
  %63 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 23
  %64 = load i32, ptr %63, align 4, !tbaa !98
  %65 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 24
  %66 = load i32, ptr %65, align 8, !tbaa !99
  %67 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 25
  %68 = load i32, ptr %67, align 4, !tbaa !100
  %69 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 26
  %70 = load i32, ptr %69, align 8, !tbaa !101
  %71 = icmp sgt i32 %66, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %50
  %73 = icmp sgt i32 %64, 0
  %74 = zext nneg i32 %66 to i64
  %75 = zext nneg i32 %64 to i64
  br label %76

76:                                               ; preds = %72, %98
  %77 = phi i64 [ 0, %72 ], [ %99, %98 ]
  br i1 %73, label %78, label %98

78:                                               ; preds = %76
  %79 = getelementptr inbounds ptr, ptr %56, i64 %77
  %80 = load ptr, ptr %79, align 8, !tbaa !74
  %81 = getelementptr inbounds ptr, ptr %60, i64 %77
  %82 = load ptr, ptr %81, align 8, !tbaa !74
  br label %91

83:                                               ; preds = %98, %50
  %84 = icmp sgt i32 %70, 0
  br i1 %84, label %85, label %129

85:                                               ; preds = %83
  %86 = icmp sgt i32 %68, 0
  %87 = getelementptr inbounds ptr, ptr %58, i64 1
  %88 = getelementptr inbounds ptr, ptr %62, i64 1
  %89 = zext nneg i32 %70 to i64
  %90 = zext nneg i32 %68 to i64
  br label %101

91:                                               ; preds = %78, %91
  %92 = phi i64 [ 0, %78 ], [ %96, %91 ]
  %93 = getelementptr inbounds i16, ptr %80, i64 %92
  %94 = load i16, ptr %93, align 2, !tbaa !78
  %95 = getelementptr inbounds i16, ptr %82, i64 %92
  store i16 %94, ptr %95, align 2, !tbaa !78
  %96 = add nuw nsw i64 %92, 1
  %97 = icmp eq i64 %96, %75
  br i1 %97, label %98, label %91, !llvm.loop !180

98:                                               ; preds = %91, %76
  %99 = add nuw nsw i64 %77, 1
  %100 = icmp eq i64 %99, %74
  br i1 %100, label %83, label %76, !llvm.loop !181

101:                                              ; preds = %85, %126
  %102 = phi i64 [ 0, %85 ], [ %127, %126 ]
  br i1 %86, label %103, label %126

103:                                              ; preds = %101
  %104 = load ptr, ptr %58, align 8, !tbaa !74
  %105 = getelementptr inbounds ptr, ptr %104, i64 %102
  %106 = load ptr, ptr %105, align 8, !tbaa !74
  %107 = load ptr, ptr %62, align 8, !tbaa !74
  %108 = getelementptr inbounds ptr, ptr %107, i64 %102
  %109 = load ptr, ptr %108, align 8, !tbaa !74
  %110 = load ptr, ptr %87, align 8, !tbaa !74
  %111 = getelementptr inbounds ptr, ptr %110, i64 %102
  %112 = load ptr, ptr %111, align 8, !tbaa !74
  %113 = load ptr, ptr %88, align 8, !tbaa !74
  %114 = getelementptr inbounds ptr, ptr %113, i64 %102
  %115 = load ptr, ptr %114, align 8, !tbaa !74
  br label %116

116:                                              ; preds = %103, %116
  %117 = phi i64 [ 0, %103 ], [ %124, %116 ]
  %118 = getelementptr inbounds i16, ptr %106, i64 %117
  %119 = load i16, ptr %118, align 2, !tbaa !78
  %120 = getelementptr inbounds i16, ptr %109, i64 %117
  store i16 %119, ptr %120, align 2, !tbaa !78
  %121 = getelementptr inbounds i16, ptr %112, i64 %117
  %122 = load i16, ptr %121, align 2, !tbaa !78
  %123 = getelementptr inbounds i16, ptr %115, i64 %117
  store i16 %122, ptr %123, align 2, !tbaa !78
  %124 = add nuw nsw i64 %117, 1
  %125 = icmp eq i64 %124, %90
  br i1 %125, label %126, label %116, !llvm.loop !182

126:                                              ; preds = %116, %101
  %127 = add nuw nsw i64 %102, 1
  %128 = icmp eq i64 %127, %89
  br i1 %128, label %129, label %101, !llvm.loop !183

129:                                              ; preds = %126, %83
  %130 = icmp eq i32 %49, 2
  br i1 %130, label %131, label %524

131:                                              ; preds = %3, %129
  %132 = load i32, ptr %21, align 4, !tbaa !81
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 77
  %136 = load i32, ptr %135, align 4, !tbaa !43
  %137 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 78
  %138 = load i32, ptr %137, align 8, !tbaa !50
  %139 = mul nsw i32 %138, %136
  %140 = sdiv i32 %139, 8
  %141 = add nsw i32 %140, 16
  %142 = sext i32 %141 to i64
  %143 = shl nsw i64 %142, 1
  %144 = tail call noalias ptr @malloc(i64 noundef %143) #20
  br label %147

145:                                              ; preds = %131
  %146 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #20
  br label %147

147:                                              ; preds = %145, %134
  %148 = phi ptr [ %144, %134 ], [ %146, %145 ]
  %149 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 142
  store ptr %2, ptr %149, align 8, !tbaa !67
  %150 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 26
  %151 = load i32, ptr %150, align 8, !tbaa !179
  %152 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 26
  store i32 %151, ptr %152, align 8, !tbaa !179
  %153 = load i32, ptr %5, align 4, !tbaa !168
  store i32 %153, ptr %7, align 4, !tbaa !168
  %154 = udiv i32 %153, %151
  %155 = icmp eq i32 %9, 1
  %156 = select i1 %155, i32 2, i32 1
  br i1 %155, label %157, label %165

157:                                              ; preds = %147
  %158 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 151
  %159 = load ptr, ptr %158, align 8, !tbaa !126
  %160 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 19
  %161 = load ptr, ptr %160, align 8, !tbaa !73
  %162 = load ptr, ptr %161, align 8, !tbaa !74
  %163 = getelementptr inbounds %struct.slice, ptr %162, i64 0, i32 38
  %164 = load i32, ptr %163, align 8, !tbaa !184
  tail call void @init_lists_for_non_reference_loss(ptr noundef %159, i32 noundef %9, i32 noundef %164)
  br label %169

165:                                              ; preds = %147
  %166 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 19
  %167 = load ptr, ptr %166, align 8, !tbaa !73
  %168 = load ptr, ptr %167, align 8, !tbaa !74
  tail call void @init_lists(ptr noundef %168) #19
  br label %169

169:                                              ; preds = %165, %157
  %170 = icmp sgt i32 %154, 0
  br i1 %170, label %171, label %523

171:                                              ; preds = %169
  %172 = shl nsw i32 %154, 2
  %173 = shl i32 %151, 2
  %174 = icmp sgt i32 %151, 0
  %175 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 35
  %176 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 35
  %177 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %178 = getelementptr inbounds i16, ptr %148, i64 16
  %179 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %180 = tail call i32 @llvm.smax.i32(i32 %173, i32 1)
  %181 = zext nneg i32 %172 to i64
  %182 = zext nneg i32 %180 to i64
  br label %183

183:                                              ; preds = %171, %519
  %184 = phi i64 [ 0, %171 ], [ %521, %519 ]
  %185 = phi i32 [ 0, %171 ], [ %520, %519 ]
  br i1 %174, label %186, label %519

186:                                              ; preds = %183
  %187 = shl i64 %184, 2
  %188 = trunc i64 %184 to i16
  %189 = trunc i64 %184 to i32
  %190 = shl i32 %189, 16
  %191 = ashr exact i32 %190, 14
  %192 = ashr exact i32 %190, 16
  %193 = trunc i64 %184 to i32
  %194 = shl nsw i32 %193, 4
  %195 = shl nuw nsw i64 %184, 1
  %196 = and i64 %187, 4294967292
  br label %197

197:                                              ; preds = %186, %516
  %198 = phi i64 [ 0, %186 ], [ %517, %516 ]
  %199 = phi i32 [ %185, %186 ], [ %228, %516 ]
  %200 = shl i64 %198, 3
  %201 = and i64 %200, 8589934584
  %202 = load ptr, ptr %175, align 8, !tbaa !185
  %203 = getelementptr inbounds ptr, ptr %202, i64 %184
  %204 = load ptr, ptr %203, align 8, !tbaa !74
  %205 = getelementptr inbounds %struct.pic_motion_params, ptr %204, i64 %198, i32 1
  %206 = load i16, ptr %205, align 8, !tbaa !186
  %207 = sext i16 %206 to i32
  %208 = sdiv i32 %207, %156
  %209 = getelementptr inbounds %struct.pic_motion_params, ptr %204, i64 %198, i32 1, i64 0, i32 1
  %210 = load i16, ptr %209, align 2, !tbaa !188
  %211 = sext i16 %210 to i32
  %212 = sdiv i32 %211, %156
  %213 = getelementptr inbounds %struct.pic_motion_params, ptr %204, i64 %198, i32 2
  %214 = load i8, ptr %213, align 8, !tbaa !52
  %215 = call i8 @llvm.smax.i8(i8 %214, i8 0)
  %216 = trunc i32 %208 to i16
  %217 = load ptr, ptr %176, align 8, !tbaa !185
  %218 = getelementptr inbounds ptr, ptr %217, i64 %184
  %219 = load ptr, ptr %218, align 8, !tbaa !74
  %220 = getelementptr inbounds %struct.pic_motion_params, ptr %219, i64 %198, i32 1
  store i16 %216, ptr %220, align 8, !tbaa !186
  %221 = trunc i32 %212 to i16
  %222 = getelementptr inbounds %struct.pic_motion_params, ptr %219, i64 %198, i32 1, i64 0, i32 1
  store i16 %221, ptr %222, align 2, !tbaa !188
  %223 = getelementptr inbounds %struct.pic_motion_params, ptr %219, i64 %198, i32 2
  store i8 %215, ptr %223, align 8, !tbaa !52
  %224 = or i64 %198, %184
  %225 = and i64 %224, 3
  %226 = icmp eq i64 %225, 0
  %227 = zext i1 %226 to i32
  %228 = add nsw i32 %199, %227
  %229 = load ptr, ptr %149, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %230 = getelementptr inbounds %struct.video_par, ptr %229, i64 0, i32 136
  %231 = load ptr, ptr %230, align 8, !tbaa !72
  %232 = getelementptr inbounds %struct.storable_picture, ptr %231, i64 0, i32 48
  %233 = load i32, ptr %232, align 4, !tbaa !81
  %234 = add nsw i32 %233, -1
  %235 = getelementptr inbounds %struct.video_par, ptr %229, i64 0, i32 35
  %236 = load ptr, ptr %235, align 8, !tbaa !189
  %237 = sext i32 %228 to i64
  %238 = getelementptr inbounds %struct.macroblock, ptr %236, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !190
  %240 = call i32 @get_mem2Dpel(ptr noundef nonnull %4, i32 noundef 16, i32 noundef 16) #19
  %241 = trunc i64 %198 to i16
  %242 = getelementptr inbounds %struct.macroblock, ptr %236, i64 %237, i32 4
  store i16 %241, ptr %242, align 4, !tbaa !192
  %243 = getelementptr inbounds %struct.macroblock, ptr %236, i64 %237, i32 4, i32 1
  store i16 %188, ptr %243, align 2, !tbaa !193
  %244 = getelementptr inbounds %struct.macroblock, ptr %236, i64 %237, i32 6
  store i32 %191, ptr %244, align 4, !tbaa !194
  %245 = getelementptr inbounds %struct.video_par, ptr %229, i64 0, i32 78
  %246 = load i32, ptr %245, align 8, !tbaa !50
  %247 = mul nsw i32 %246, %192
  %248 = sdiv i32 %247, 4
  %249 = getelementptr inbounds %struct.macroblock, ptr %236, i64 %237, i32 11
  store i32 %248, ptr %249, align 8, !tbaa !195
  %250 = trunc i64 %198 to i32
  %251 = shl i32 %250, 16
  %252 = ashr exact i32 %251, 16
  %253 = ashr exact i32 %251, 14
  %254 = getelementptr inbounds %struct.macroblock, ptr %236, i64 %237, i32 5
  store i32 %253, ptr %254, align 8, !tbaa !196
  %255 = getelementptr inbounds %struct.video_par, ptr %229, i64 0, i32 77
  %256 = load i32, ptr %255, align 4, !tbaa !43
  %257 = mul nsw i32 %256, %252
  %258 = sdiv i32 %257, 4
  %259 = getelementptr inbounds %struct.macroblock, ptr %236, i64 %237, i32 10
  store i32 %258, ptr %259, align 4, !tbaa !197
  %260 = trunc i64 %198 to i32
  %261 = shl nsw i32 %260, 4
  %262 = add nsw i32 %208, %261
  %263 = add nsw i32 %212, %194
  %264 = getelementptr inbounds %struct.slice, ptr %239, i64 0, i32 56
  %265 = load ptr, ptr %264, align 8, !tbaa !74
  %266 = zext nneg i8 %215 to i64
  %267 = getelementptr inbounds ptr, ptr %265, i64 %266
  %268 = load ptr, ptr %267, align 8, !tbaa !74
  %269 = load ptr, ptr %4, align 8, !tbaa !74
  %270 = getelementptr inbounds %struct.storable_picture, ptr %231, i64 0, i32 67
  %271 = load i32, ptr %270, align 4, !tbaa !198
  %272 = getelementptr inbounds %struct.storable_picture, ptr %231, i64 0, i32 20
  %273 = load i32, ptr %272, align 8, !tbaa !199
  %274 = getelementptr inbounds %struct.macroblock, ptr %236, i64 %237, i32 45
  %275 = load i32, ptr %274, align 8, !tbaa !200
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %282, label %277

277:                                              ; preds = %197
  %278 = getelementptr inbounds %struct.storable_picture, ptr %231, i64 0, i32 17
  %279 = load i32, ptr %278, align 4, !tbaa !201
  %280 = ashr i32 %279, 1
  %281 = add nsw i32 %280, -1
  br label %285

282:                                              ; preds = %197
  %283 = getelementptr inbounds %struct.storable_picture, ptr %231, i64 0, i32 21
  %284 = load i32, ptr %283, align 4, !tbaa !202
  br label %285

285:                                              ; preds = %282, %277
  %286 = phi i32 [ %281, %277 ], [ %284, %282 ]
  %287 = getelementptr inbounds %struct.slice, ptr %239, i64 0, i32 85
  %288 = load ptr, ptr %287, align 8, !tbaa !203
  %289 = getelementptr inbounds %struct.video_par, ptr %229, i64 0, i32 70
  %290 = load i32, ptr %289, align 8, !tbaa !65
  %291 = getelementptr inbounds %struct.video_par, ptr %229, i64 0, i32 69
  %292 = load i32, ptr %291, align 4, !tbaa !65
  %293 = trunc i32 %292 to i16
  call void @get_block_luma(ptr noundef %268, i32 noundef %262, i32 noundef %263, i32 noundef 4, i32 noundef 4, ptr noundef %269, i32 noundef %271, i32 noundef %273, i32 noundef %286, ptr noundef %288, i32 noundef %290, i16 noundef zeroext %293, ptr noundef nonnull %238) #19
  %294 = load ptr, ptr %4, align 8, !tbaa !74
  %295 = getelementptr inbounds %struct.slice, ptr %239, i64 0, i32 77
  %296 = load ptr, ptr %295, align 8, !tbaa !204
  %297 = load ptr, ptr %296, align 8, !tbaa !74
  br label %302

298:                                              ; preds = %315
  %299 = getelementptr inbounds %struct.slice, ptr %239, i64 0, i32 77
  %300 = load ptr, ptr %299, align 8, !tbaa !204
  %301 = load ptr, ptr %300, align 8, !tbaa !74
  br label %318

302:                                              ; preds = %285, %315
  %303 = phi i64 [ 0, %285 ], [ %316, %315 ]
  %304 = getelementptr inbounds ptr, ptr %294, i64 %303
  %305 = load ptr, ptr %304, align 8, !tbaa !74
  %306 = getelementptr inbounds ptr, ptr %297, i64 %303
  %307 = load ptr, ptr %306, align 8, !tbaa !74
  br label %308

308:                                              ; preds = %302, %308
  %309 = phi i64 [ 0, %302 ], [ %313, %308 ]
  %310 = getelementptr inbounds i16, ptr %305, i64 %309
  %311 = load i16, ptr %310, align 2, !tbaa !78
  %312 = getelementptr inbounds i16, ptr %307, i64 %309
  store i16 %311, ptr %312, align 2, !tbaa !78
  %313 = add nuw nsw i64 %309, 1
  %314 = icmp eq i64 %313, 4
  br i1 %314, label %315, label %308, !llvm.loop !205

315:                                              ; preds = %308
  %316 = add nuw nsw i64 %303, 1
  %317 = icmp eq i64 %316, 4
  br i1 %317, label %298, label %302, !llvm.loop !206

318:                                              ; preds = %298, %318
  %319 = phi i64 [ 0, %298 ], [ %325, %318 ]
  %320 = shl nuw nsw i64 %319, 3
  %321 = getelementptr i8, ptr %148, i64 %320
  %322 = getelementptr inbounds ptr, ptr %301, i64 %319
  %323 = load ptr, ptr %322, align 8, !tbaa !74
  %324 = load i64, ptr %323, align 2, !tbaa !78
  store i64 %324, ptr %321, align 2, !tbaa !78
  %325 = add nuw nsw i64 %319, 1
  %326 = icmp eq i64 %325, 4
  br i1 %326, label %327, label %318, !llvm.loop !207

327:                                              ; preds = %318
  %328 = load i32, ptr %232, align 4, !tbaa !81
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %469, label %330

330:                                              ; preds = %327
  %331 = load i32, ptr %255, align 4, !tbaa !43
  %332 = sdiv i32 64, %331
  %333 = add nsw i32 %332, -1
  %334 = load i32, ptr %245, align 8, !tbaa !50
  %335 = sdiv i32 64, %334
  %336 = add nsw i32 %335, -1
  %337 = mul nsw i32 %335, %332
  %338 = ashr i32 %337, 1
  %339 = sext i32 %234 to i64
  %340 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %339
  %341 = load i8, ptr %340, align 16, !tbaa !52
  %342 = zext i8 %341 to i32
  %343 = load i32, ptr %249, align 8, !tbaa !195
  %344 = add nsw i32 %343, %342
  %345 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %339
  %346 = load i8, ptr %345, align 16, !tbaa !52
  %347 = zext i8 %346 to i32
  %348 = load i32, ptr %259, align 4, !tbaa !197
  %349 = add nsw i32 %348, %347
  %350 = getelementptr inbounds %struct.storable_picture, ptr %231, i64 0, i32 18
  %351 = load i32, ptr %350, align 8, !tbaa !208
  %352 = add nsw i32 %351, -1
  %353 = getelementptr inbounds %struct.storable_picture, ptr %231, i64 0, i32 19
  %354 = load i32, ptr %353, align 4, !tbaa !209
  %355 = add nsw i32 %354, -1
  %356 = load ptr, ptr %264, align 8, !tbaa !74
  %357 = getelementptr inbounds ptr, ptr %356, i64 %266
  %358 = load ptr, ptr %357, align 8, !tbaa !74
  %359 = getelementptr inbounds %struct.storable_picture, ptr %358, i64 0, i32 33
  %360 = load ptr, ptr %359, align 8, !tbaa !82
  %361 = getelementptr inbounds %struct.slice, ptr %239, i64 0, i32 77
  %362 = load ptr, ptr %361, align 8, !tbaa !204
  %363 = getelementptr ptr, ptr %362, i64 1
  %364 = getelementptr ptr, ptr %362, i64 1
  %365 = zext i32 %349 to i64
  %366 = zext i32 %332 to i64
  %367 = zext i32 %208 to i64
  %368 = zext i32 %344 to i64
  %369 = zext i32 %335 to i64
  %370 = zext i32 %212 to i64
  br label %371

371:                                              ; preds = %330, %466
  %372 = phi i64 [ 0, %330 ], [ %467, %466 ]
  %373 = shl nuw nsw i64 %372, 3
  %374 = add nuw nsw i64 %373, 32
  %375 = getelementptr inbounds ptr, ptr %360, i64 %372
  %376 = load ptr, ptr %375, align 8, !tbaa !74
  %377 = getelementptr ptr, ptr %363, i64 %372
  %378 = load ptr, ptr %377, align 8, !tbaa !74
  br label %382

379:                                              ; preds = %453
  %380 = getelementptr ptr, ptr %364, i64 %372
  %381 = load ptr, ptr %380, align 8, !tbaa !74
  br label %456

382:                                              ; preds = %371, %453
  %383 = phi i64 [ 0, %371 ], [ %454, %453 ]
  %384 = add nuw i64 %383, %368
  %385 = mul i64 %384, %369
  %386 = add i64 %385, %370
  %387 = trunc i64 %386 to i32
  %388 = sdiv i32 %387, %335
  %389 = call i32 @llvm.smax.i32(i32 %388, i32 0)
  %390 = call i32 @llvm.smin.i32(i32 %389, i32 %355)
  %391 = trunc i64 %386 to i32
  %392 = add i32 %336, %391
  %393 = sdiv i32 %392, %335
  %394 = call i32 @llvm.smax.i32(i32 %393, i32 0)
  %395 = call i32 @llvm.smin.i32(i32 %394, i32 %355)
  %396 = trunc i64 %386 to i32
  %397 = and i32 %336, %396
  %398 = sub nsw i32 %335, %397
  %399 = sext i32 %390 to i64
  %400 = getelementptr inbounds ptr, ptr %376, i64 %399
  %401 = load ptr, ptr %400, align 8, !tbaa !74
  %402 = sext i32 %395 to i64
  %403 = getelementptr inbounds ptr, ptr %376, i64 %402
  %404 = load ptr, ptr %403, align 8, !tbaa !74
  %405 = getelementptr inbounds ptr, ptr %378, i64 %383
  %406 = load ptr, ptr %405, align 8, !tbaa !74
  br label %407

407:                                              ; preds = %382, %407
  %408 = phi i64 [ 0, %382 ], [ %451, %407 ]
  %409 = add nuw i64 %408, %365
  %410 = mul i64 %409, %366
  %411 = add i64 %410, %367
  %412 = trunc i64 %411 to i32
  %413 = sdiv i32 %412, %332
  %414 = call i32 @llvm.smax.i32(i32 %413, i32 0)
  %415 = call i32 @llvm.smin.i32(i32 %414, i32 %352)
  %416 = trunc i64 %411 to i32
  %417 = add i32 %333, %416
  %418 = sdiv i32 %417, %332
  %419 = call i32 @llvm.smax.i32(i32 %418, i32 0)
  %420 = call i32 @llvm.smin.i32(i32 %419, i32 %352)
  %421 = trunc i64 %411 to i32
  %422 = and i32 %333, %421
  %423 = sub nsw i32 %332, %422
  %424 = sext i32 %415 to i64
  %425 = getelementptr inbounds i16, ptr %401, i64 %424
  %426 = load i16, ptr %425, align 2, !tbaa !78
  %427 = zext i16 %426 to i32
  %428 = mul i32 %423, %427
  %429 = sext i32 %420 to i64
  %430 = getelementptr inbounds i16, ptr %401, i64 %429
  %431 = load i16, ptr %430, align 2, !tbaa !78
  %432 = zext i16 %431 to i32
  %433 = mul i32 %422, %432
  %434 = getelementptr inbounds i16, ptr %404, i64 %424
  %435 = load i16, ptr %434, align 2, !tbaa !78
  %436 = zext i16 %435 to i32
  %437 = mul i32 %423, %436
  %438 = getelementptr inbounds i16, ptr %404, i64 %429
  %439 = load i16, ptr %438, align 2, !tbaa !78
  %440 = zext i16 %439 to i32
  %441 = mul i32 %422, %440
  %442 = add i32 %441, %437
  %443 = mul i32 %442, %397
  %444 = add i32 %433, %428
  %445 = mul i32 %444, %398
  %446 = add i32 %445, %338
  %447 = add i32 %446, %443
  %448 = sdiv i32 %447, %337
  %449 = trunc i32 %448 to i16
  %450 = getelementptr inbounds i16, ptr %406, i64 %408
  store i16 %449, ptr %450, align 2, !tbaa !78
  %451 = add nuw nsw i64 %408, 1
  %452 = icmp eq i64 %408, 0
  br i1 %452, label %407, label %453, !llvm.loop !210

453:                                              ; preds = %407
  %454 = add nuw nsw i64 %383, 1
  %455 = icmp eq i64 %383, 0
  br i1 %455, label %382, label %379, !llvm.loop !211

456:                                              ; preds = %379, %456
  %457 = phi i64 [ 0, %379 ], [ %464, %456 ]
  %458 = shl nuw nsw i64 %457, 2
  %459 = add nuw nsw i64 %374, %458
  %460 = getelementptr i8, ptr %148, i64 %459
  %461 = getelementptr inbounds ptr, ptr %381, i64 %457
  %462 = load ptr, ptr %461, align 8, !tbaa !74
  %463 = load i32, ptr %462, align 2, !tbaa !78
  store i32 %463, ptr %460, align 2, !tbaa !78
  %464 = add nuw nsw i64 %457, 1
  %465 = icmp eq i64 %457, 0
  br i1 %465, label %456, label %466, !llvm.loop !212

466:                                              ; preds = %456
  %467 = add nuw nsw i64 %372, 1
  %468 = icmp eq i64 %372, 0
  br i1 %468, label %371, label %469, !llvm.loop !213

469:                                              ; preds = %466, %327
  %470 = load ptr, ptr %4, align 8, !tbaa !74
  call void @free_mem2Dpel(ptr noundef %470) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  %471 = load ptr, ptr %177, align 8, !tbaa !75
  %472 = getelementptr ptr, ptr %471, i64 %196
  br label %473

473:                                              ; preds = %469, %473
  %474 = phi i64 [ 0, %469 ], [ %481, %473 ]
  %475 = shl nuw nsw i64 %474, 3
  %476 = getelementptr i8, ptr %148, i64 %475
  %477 = getelementptr ptr, ptr %472, i64 %474
  %478 = load ptr, ptr %477, align 8, !tbaa !74
  %479 = getelementptr i8, ptr %478, i64 %201
  %480 = load i64, ptr %476, align 2, !tbaa !78
  store i64 %480, ptr %479, align 2, !tbaa !78
  %481 = add nuw nsw i64 %474, 1
  %482 = icmp eq i64 %481, 4
  br i1 %482, label %483, label %473, !llvm.loop !214

483:                                              ; preds = %473
  %484 = load i32, ptr %21, align 4, !tbaa !81
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %516, label %486

486:                                              ; preds = %483
  %487 = load ptr, ptr %179, align 8, !tbaa !82
  %488 = shl nuw nsw i64 %198, 1
  br label %489

489:                                              ; preds = %486, %512
  %490 = phi i64 [ 0, %486 ], [ %514, %512 ]
  %491 = phi ptr [ %178, %486 ], [ %513, %512 ]
  %492 = getelementptr inbounds ptr, ptr %487, i64 %490
  %493 = load ptr, ptr %492, align 8, !tbaa !74
  %494 = getelementptr ptr, ptr %493, i64 %195
  br label %495

495:                                              ; preds = %489, %509
  %496 = phi i64 [ 0, %489 ], [ %510, %509 ]
  %497 = shl nuw nsw i64 %496, 1
  %498 = getelementptr ptr, ptr %494, i64 %496
  %499 = load ptr, ptr %498, align 8, !tbaa !74
  %500 = getelementptr i16, ptr %499, i64 %488
  br label %501

501:                                              ; preds = %495, %501
  %502 = phi i64 [ 0, %495 ], [ %507, %501 ]
  %503 = add nuw nsw i64 %502, %497
  %504 = getelementptr inbounds i16, ptr %491, i64 %503
  %505 = load i16, ptr %504, align 2, !tbaa !78
  %506 = getelementptr i16, ptr %500, i64 %502
  store i16 %505, ptr %506, align 2, !tbaa !78
  %507 = add nuw nsw i64 %502, 1
  %508 = icmp eq i64 %502, 0
  br i1 %508, label %501, label %509, !llvm.loop !215

509:                                              ; preds = %501
  %510 = add nuw nsw i64 %496, 1
  %511 = icmp eq i64 %496, 0
  br i1 %511, label %495, label %512, !llvm.loop !216

512:                                              ; preds = %509
  %513 = getelementptr inbounds i16, ptr %491, i64 4
  %514 = add nuw nsw i64 %490, 1
  %515 = icmp eq i64 %490, 0
  br i1 %515, label %489, label %516, !llvm.loop !217

516:                                              ; preds = %512, %483
  %517 = add nuw nsw i64 %198, 1
  %518 = icmp eq i64 %517, %182
  br i1 %518, label %519, label %197, !llvm.loop !218

519:                                              ; preds = %516, %183
  %520 = phi i32 [ %185, %183 ], [ %228, %516 ]
  %521 = add nuw nsw i64 %184, 1
  %522 = icmp ult i64 %521, %181
  br i1 %522, label %183, label %523, !llvm.loop !219

523:                                              ; preds = %519, %169
  call void @free(ptr noundef %148) #19
  br label %524

524:                                              ; preds = %3, %523, %129
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sliding_window_poc_management(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !115
  %5 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !166
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !87
  %10 = load i32, ptr %5, align 8, !tbaa !166
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %12
  %13 = phi i64 [ %14, %12 ], [ 0, %8 ]
  %14 = add nuw nsw i64 %13, 1
  %15 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 135, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !65
  %17 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 135, i64 %13
  store i32 %16, ptr %17, align 4, !tbaa !65
  %18 = load i32, ptr %5, align 8, !tbaa !166
  %19 = add i32 %18, -1
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %14, %20
  br i1 %21, label %12, label %22, !llvm.loop !220

22:                                               ; preds = %12, %8, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @write_lost_non_ref_pic(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.frame_store, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #19
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !221
  %10 = sub nsw i32 %1, %9
  %11 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 94
  %12 = load i32, ptr %11, align 4, !tbaa !90
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 38
  %16 = load ptr, ptr %15, align 8, !tbaa !162
  %17 = load ptr, ptr %16, align 8, !tbaa !157
  %18 = getelementptr inbounds %struct.frame_store, ptr %4, i64 0, i32 12
  store ptr %17, ptr %18, align 8, !tbaa !119
  %19 = getelementptr inbounds %struct.frame_store, ptr %4, i64 0, i32 9
  store i32 0, ptr %19, align 4, !tbaa !222
  %20 = getelementptr inbounds %struct.frame_store, ptr %4, i64 0, i32 1
  store i32 0, ptr %20, align 4, !tbaa !223
  store i32 3, ptr %4, align 8, !tbaa !117
  call void @write_stored_frame(ptr noundef %5, ptr noundef nonnull %4, i32 noundef %2) #19
  %21 = load ptr, ptr %15, align 8, !tbaa !162
  %22 = getelementptr inbounds %struct.concealment_node, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !160
  store ptr %23, ptr %15, align 8, !tbaa !162
  %24 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 39
  %25 = load ptr, ptr %24, align 8, !tbaa !164
  %26 = icmp eq ptr %25, %21
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.concealment_node, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !160
  store ptr %29, ptr %24, align 8, !tbaa !164
  br label %30

30:                                               ; preds = %27, %14
  call void @free(ptr noundef %21) #19
  br label %31

31:                                               ; preds = %7, %30, %3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #19
  ret void
}

declare void @write_stored_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @write_lost_ref_after_idr(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 134
  %5 = load ptr, ptr %4, align 8, !tbaa !224
  %6 = getelementptr inbounds %struct.frame_store, ptr %5, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !119
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 23
  %11 = load i32, ptr %10, align 4, !tbaa !98
  %12 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 24
  %13 = load i32, ptr %12, align 8, !tbaa !99
  %14 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 25
  %15 = load i32, ptr %14, align 4, !tbaa !100
  %16 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 26
  %17 = load i32, ptr %16, align 8, !tbaa !101
  %18 = tail call ptr @alloc_storable_picture(ptr noundef %3, i32 noundef 0, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #19
  %19 = load ptr, ptr %4, align 8, !tbaa !224
  %20 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 12
  store ptr %18, ptr %20, align 8, !tbaa !119
  store i32 3, ptr %19, align 8, !tbaa !117
  br label %21

21:                                               ; preds = %9, %2
  %22 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 95
  %23 = load i32, ptr %22, align 8, !tbaa !154
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, ptr %22, align 8, !tbaa !154
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ 2, %25 ], [ 1, %21 ]
  %28 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !116
  %30 = sext i32 %1 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !74
  %33 = getelementptr inbounds %struct.frame_store, ptr %32, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !119
  %35 = load ptr, ptr %4, align 8, !tbaa !224
  %36 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 12
  %37 = load ptr, ptr %36, align 8, !tbaa !119
  tail call fastcc void @copy_to_conceal(ptr noundef %34, ptr noundef %37, ptr noundef %3)
  store i32 %27, ptr %22, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nounwind uwtable
define internal fastcc void @buildPredRegionYUV(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 136
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 48
  %10 = load i32, ptr %9, align 4, !tbaa !81
  %11 = getelementptr inbounds i32, ptr %1, i64 2
  %12 = load i32, ptr %11, align 4, !tbaa !65
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 0)
  %14 = sdiv i32 %3, 16
  %15 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 23
  %16 = load i32, ptr %15, align 4, !tbaa !98
  %17 = sdiv i32 %16, 16
  %18 = mul nsw i32 %17, %14
  %19 = sdiv i32 %2, 16
  %20 = add nsw i32 %18, %19
  %21 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 35
  %22 = load ptr, ptr %21, align 8, !tbaa !189
  %23 = sext i32 %20 to i64
  %24 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !190
  %26 = getelementptr inbounds %struct.slice, ptr %25, i64 0, i32 85
  %27 = load ptr, ptr %26, align 8, !tbaa !203
  %28 = call i32 @get_mem2Dpel(ptr noundef nonnull %6, i32 noundef 16, i32 noundef 16) #19
  %29 = trunc i32 %19 to i16
  %30 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %23, i32 4
  store i16 %29, ptr %30, align 4, !tbaa !192
  %31 = trunc i32 %14 to i16
  %32 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %23, i32 4, i32 1
  store i16 %31, ptr %32, align 2, !tbaa !193
  %33 = shl i32 %14, 16
  %34 = ashr exact i32 %33, 14
  %35 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %23, i32 6
  store i32 %34, ptr %35, align 4, !tbaa !194
  %36 = ashr exact i32 %33, 16
  %37 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 78
  %38 = load i32, ptr %37, align 8, !tbaa !50
  %39 = mul nsw i32 %38, %36
  %40 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %23, i32 11
  store i32 %39, ptr %40, align 8, !tbaa !195
  %41 = shl i32 %19, 16
  %42 = ashr exact i32 %41, 16
  %43 = ashr exact i32 %41, 14
  %44 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %23, i32 5
  store i32 %43, ptr %44, align 8, !tbaa !196
  %45 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 77
  %46 = load i32, ptr %45, align 4, !tbaa !43
  %47 = mul nsw i32 %46, %42
  %48 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %23, i32 10
  store i32 %47, ptr %48, align 4, !tbaa !197
  %49 = getelementptr inbounds i32, ptr %1, i64 1
  %50 = getelementptr inbounds %struct.slice, ptr %25, i64 0, i32 56
  %51 = zext nneg i32 %13 to i64
  %52 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 67
  %53 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 20
  %54 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %23, i32 45
  %55 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 70
  %56 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69
  %57 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 17
  %58 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 21
  %59 = getelementptr inbounds %struct.slice, ptr %25, i64 0, i32 77
  br label %64

60:                                               ; preds = %125
  %61 = getelementptr inbounds %struct.slice, ptr %25, i64 0, i32 77
  %62 = load ptr, ptr %61, align 8, !tbaa !204
  %63 = load ptr, ptr %62, align 8, !tbaa !74
  br label %128

64:                                               ; preds = %5, %125
  %65 = phi i64 [ 0, %5 ], [ %126, %125 ]
  %66 = shl nuw nsw i64 %65, 2
  %67 = load i32, ptr %35, align 4, !tbaa !194
  %68 = trunc i64 %65 to i32
  %69 = add nsw i32 %67, %68
  %70 = shl nsw i32 %69, 4
  br label %71

71:                                               ; preds = %64, %122
  %72 = phi i64 [ 0, %64 ], [ %123, %122 ]
  %73 = shl nuw nsw i64 %72, 2
  %74 = load i32, ptr %44, align 8, !tbaa !196
  %75 = trunc i64 %72 to i32
  %76 = add nsw i32 %74, %75
  %77 = shl nsw i32 %76, 4
  %78 = load i32, ptr %1, align 4, !tbaa !65
  %79 = add nsw i32 %77, %78
  %80 = load i32, ptr %49, align 4, !tbaa !65
  %81 = add nsw i32 %80, %70
  %82 = load ptr, ptr %50, align 8, !tbaa !74
  %83 = getelementptr inbounds ptr, ptr %82, i64 %51
  %84 = load ptr, ptr %83, align 8, !tbaa !74
  %85 = load ptr, ptr %6, align 8, !tbaa !74
  %86 = load i32, ptr %52, align 4, !tbaa !198
  %87 = load i32, ptr %53, align 8, !tbaa !199
  %88 = load i32, ptr %54, align 8, !tbaa !200
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %71
  %91 = load i32, ptr %57, align 4, !tbaa !201
  %92 = ashr i32 %91, 1
  %93 = add nsw i32 %92, -1
  br label %96

94:                                               ; preds = %71
  %95 = load i32, ptr %58, align 4, !tbaa !202
  br label %96

96:                                               ; preds = %94, %90
  %97 = phi i32 [ %93, %90 ], [ %95, %94 ]
  %98 = load i32, ptr %55, align 8, !tbaa !65
  %99 = load i32, ptr %56, align 4, !tbaa !65
  %100 = trunc i32 %99 to i16
  call void @get_block_luma(ptr noundef %84, i32 noundef %79, i32 noundef %81, i32 noundef 4, i32 noundef 4, ptr noundef %85, i32 noundef %86, i32 noundef %87, i32 noundef %97, ptr noundef %27, i32 noundef %98, i16 noundef zeroext %100, ptr noundef nonnull %24) #19
  %101 = load ptr, ptr %6, align 8, !tbaa !74
  %102 = load ptr, ptr %59, align 8, !tbaa !204
  %103 = load ptr, ptr %102, align 8, !tbaa !74
  %104 = getelementptr ptr, ptr %103, i64 %66
  br label %105

105:                                              ; preds = %96, %119
  %106 = phi i64 [ 0, %96 ], [ %120, %119 ]
  br label %107

107:                                              ; preds = %105, %107
  %108 = phi i64 [ 0, %105 ], [ %117, %107 ]
  %109 = getelementptr inbounds ptr, ptr %101, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !74
  %111 = getelementptr inbounds i16, ptr %110, i64 %106
  %112 = load i16, ptr %111, align 2, !tbaa !78
  %113 = getelementptr ptr, ptr %104, i64 %108
  %114 = load ptr, ptr %113, align 8, !tbaa !74
  %115 = getelementptr i16, ptr %114, i64 %106
  %116 = getelementptr i16, ptr %115, i64 %73
  store i16 %112, ptr %116, align 2, !tbaa !78
  %117 = add nuw nsw i64 %108, 1
  %118 = icmp eq i64 %117, 4
  br i1 %118, label %119, label %107, !llvm.loop !225

119:                                              ; preds = %107
  %120 = add nuw nsw i64 %106, 1
  %121 = icmp eq i64 %120, 4
  br i1 %121, label %122, label %105, !llvm.loop !226

122:                                              ; preds = %119
  %123 = add nuw nsw i64 %72, 1
  %124 = icmp eq i64 %123, 4
  br i1 %124, label %125, label %71, !llvm.loop !227

125:                                              ; preds = %122
  %126 = add nuw nsw i64 %65, 1
  %127 = icmp eq i64 %126, 4
  br i1 %127, label %60, label %64, !llvm.loop !228

128:                                              ; preds = %60, %141
  %129 = phi i64 [ 0, %60 ], [ %142, %141 ]
  %130 = getelementptr inbounds ptr, ptr %63, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !74
  %132 = shl nuw nsw i64 %129, 4
  %133 = getelementptr i16, ptr %4, i64 %132
  br label %134

134:                                              ; preds = %128, %134
  %135 = phi i64 [ 0, %128 ], [ %139, %134 ]
  %136 = getelementptr inbounds i16, ptr %131, i64 %135
  %137 = load i16, ptr %136, align 2, !tbaa !78
  %138 = getelementptr i16, ptr %133, i64 %135
  store i16 %137, ptr %138, align 2, !tbaa !78
  %139 = add nuw nsw i64 %135, 1
  %140 = icmp eq i64 %139, 16
  br i1 %140, label %141, label %134, !llvm.loop !229

141:                                              ; preds = %134
  %142 = add nuw nsw i64 %129, 1
  %143 = icmp eq i64 %142, 16
  br i1 %143, label %144, label %128, !llvm.loop !230

144:                                              ; preds = %141
  %145 = load i32, ptr %9, align 4, !tbaa !81
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %320, label %147

147:                                              ; preds = %144
  %148 = add nsw i32 %10, -1
  %149 = getelementptr inbounds i16, ptr %4, i64 256
  %150 = load i32, ptr %45, align 4, !tbaa !43
  %151 = sdiv i32 64, %150
  %152 = add nsw i32 %151, -1
  %153 = load i32, ptr %37, align 8, !tbaa !50
  %154 = sdiv i32 64, %153
  %155 = add nsw i32 %154, -1
  %156 = mul nsw i32 %154, %151
  %157 = ashr i32 %156, 1
  %158 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 75
  %159 = load i32, ptr %158, align 4, !tbaa !231
  %160 = icmp sgt i32 %159, 0
  %161 = getelementptr inbounds %struct.slice, ptr %25, i64 0, i32 77
  %162 = load ptr, ptr %161, align 8, !tbaa !204
  %163 = getelementptr ptr, ptr %162, i64 1
  %164 = sext i32 %148 to i64
  %165 = getelementptr inbounds i32, ptr %1, i64 1
  %166 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 18
  %167 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 19
  %168 = getelementptr inbounds %struct.slice, ptr %25, i64 0, i32 56
  %169 = zext nneg i32 %13 to i64
  %170 = getelementptr inbounds %struct.slice, ptr %25, i64 0, i32 77
  %171 = zext i32 %151 to i64
  %172 = zext i32 %154 to i64
  %173 = zext nneg i32 %159 to i64
  br label %174

174:                                              ; preds = %147, %316
  %175 = phi i64 [ 0, %147 ], [ %318, %316 ]
  %176 = phi ptr [ %149, %147 ], [ %317, %316 ]
  br i1 %160, label %177, label %199

177:                                              ; preds = %174
  %178 = load i32, ptr %40, align 8, !tbaa !195
  %179 = load i32, ptr %48, align 4, !tbaa !197
  %180 = load i32, ptr %1, align 4, !tbaa !65
  %181 = load i32, ptr %165, align 4, !tbaa !65
  %182 = load i32, ptr %166, align 8, !tbaa !208
  %183 = add nsw i32 %182, -1
  %184 = load i32, ptr %167, align 4, !tbaa !209
  %185 = add nsw i32 %184, -1
  %186 = load ptr, ptr %168, align 8, !tbaa !74
  %187 = getelementptr inbounds ptr, ptr %186, i64 %169
  %188 = load ptr, ptr %187, align 8, !tbaa !74
  %189 = getelementptr inbounds %struct.storable_picture, ptr %188, i64 0, i32 33
  %190 = load ptr, ptr %189, align 8, !tbaa !82
  %191 = getelementptr inbounds ptr, ptr %190, i64 %175
  %192 = load ptr, ptr %191, align 8, !tbaa !74
  %193 = load ptr, ptr %170, align 8, !tbaa !204
  %194 = getelementptr ptr, ptr %193, i64 %175
  %195 = getelementptr ptr, ptr %194, i64 1
  %196 = load ptr, ptr %195, align 8, !tbaa !74
  %197 = zext i32 %180 to i64
  %198 = zext i32 %181 to i64
  br label %202

199:                                              ; preds = %297, %174
  %200 = getelementptr ptr, ptr %163, i64 %175
  %201 = load ptr, ptr %200, align 8, !tbaa !74
  br label %300

202:                                              ; preds = %177, %297
  %203 = phi i64 [ 0, %177 ], [ %298, %297 ]
  br label %204

204:                                              ; preds = %202, %294
  %205 = phi i64 [ 0, %202 ], [ %295, %294 ]
  %206 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %164, i64 %203, i64 %205
  %207 = load i8, ptr %206, align 1, !tbaa !52
  %208 = zext i8 %207 to i32
  %209 = add nsw i32 %178, %208
  %210 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %164, i64 %203, i64 %205
  %211 = load i8, ptr %210, align 1, !tbaa !52
  %212 = zext i8 %211 to i32
  %213 = add nsw i32 %179, %212
  %214 = zext i32 %213 to i64
  %215 = zext i8 %211 to i64
  %216 = zext i32 %209 to i64
  %217 = zext i8 %207 to i64
  %218 = getelementptr ptr, ptr %196, i64 %217
  br label %219

219:                                              ; preds = %204, %291
  %220 = phi i64 [ 0, %204 ], [ %292, %291 ]
  %221 = add nuw i64 %220, %216
  %222 = mul i64 %221, %172
  %223 = add i64 %222, %198
  %224 = trunc i64 %223 to i32
  %225 = sdiv i32 %224, %154
  %226 = call i32 @llvm.smax.i32(i32 %225, i32 0)
  %227 = call i32 @llvm.smin.i32(i32 %226, i32 %185)
  %228 = trunc i64 %223 to i32
  %229 = add i32 %155, %228
  %230 = sdiv i32 %229, %154
  %231 = call i32 @llvm.smax.i32(i32 %230, i32 0)
  %232 = call i32 @llvm.smin.i32(i32 %231, i32 %185)
  %233 = trunc i64 %223 to i32
  %234 = and i32 %155, %233
  %235 = sub nsw i32 %154, %234
  %236 = sext i32 %227 to i64
  %237 = getelementptr inbounds ptr, ptr %192, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !74
  %239 = sext i32 %232 to i64
  %240 = getelementptr inbounds ptr, ptr %192, i64 %239
  %241 = load ptr, ptr %240, align 8, !tbaa !74
  %242 = getelementptr ptr, ptr %218, i64 %220
  %243 = load ptr, ptr %242, align 8, !tbaa !74
  %244 = getelementptr i16, ptr %243, i64 %215
  br label %245

245:                                              ; preds = %219, %245
  %246 = phi i64 [ 0, %219 ], [ %289, %245 ]
  %247 = add nuw i64 %246, %214
  %248 = mul i64 %247, %171
  %249 = add i64 %248, %197
  %250 = trunc i64 %249 to i32
  %251 = sdiv i32 %250, %151
  %252 = call i32 @llvm.smax.i32(i32 %251, i32 0)
  %253 = call i32 @llvm.smin.i32(i32 %252, i32 %183)
  %254 = trunc i64 %249 to i32
  %255 = add i32 %152, %254
  %256 = sdiv i32 %255, %151
  %257 = call i32 @llvm.smax.i32(i32 %256, i32 0)
  %258 = call i32 @llvm.smin.i32(i32 %257, i32 %183)
  %259 = trunc i64 %249 to i32
  %260 = and i32 %152, %259
  %261 = sub nsw i32 %151, %260
  %262 = sext i32 %253 to i64
  %263 = getelementptr inbounds i16, ptr %238, i64 %262
  %264 = load i16, ptr %263, align 2, !tbaa !78
  %265 = zext i16 %264 to i32
  %266 = mul i32 %261, %265
  %267 = sext i32 %258 to i64
  %268 = getelementptr inbounds i16, ptr %238, i64 %267
  %269 = load i16, ptr %268, align 2, !tbaa !78
  %270 = zext i16 %269 to i32
  %271 = mul i32 %260, %270
  %272 = getelementptr inbounds i16, ptr %241, i64 %262
  %273 = load i16, ptr %272, align 2, !tbaa !78
  %274 = zext i16 %273 to i32
  %275 = mul i32 %261, %274
  %276 = getelementptr inbounds i16, ptr %241, i64 %267
  %277 = load i16, ptr %276, align 2, !tbaa !78
  %278 = zext i16 %277 to i32
  %279 = mul i32 %260, %278
  %280 = add i32 %279, %275
  %281 = mul i32 %280, %234
  %282 = add i32 %271, %266
  %283 = mul i32 %282, %235
  %284 = add i32 %283, %157
  %285 = add i32 %284, %281
  %286 = sdiv i32 %285, %156
  %287 = trunc i32 %286 to i16
  %288 = getelementptr i16, ptr %244, i64 %246
  store i16 %287, ptr %288, align 2, !tbaa !78
  %289 = add nuw nsw i64 %246, 1
  %290 = icmp eq i64 %289, 4
  br i1 %290, label %291, label %245, !llvm.loop !232

291:                                              ; preds = %245
  %292 = add nuw nsw i64 %220, 1
  %293 = icmp eq i64 %292, 4
  br i1 %293, label %294, label %219, !llvm.loop !233

294:                                              ; preds = %291
  %295 = add nuw nsw i64 %205, 1
  %296 = icmp eq i64 %295, 4
  br i1 %296, label %297, label %204, !llvm.loop !234

297:                                              ; preds = %294
  %298 = add nuw nsw i64 %203, 1
  %299 = icmp eq i64 %298, %173
  br i1 %299, label %199, label %202, !llvm.loop !235

300:                                              ; preds = %199, %313
  %301 = phi i64 [ 0, %199 ], [ %314, %313 ]
  %302 = getelementptr inbounds ptr, ptr %201, i64 %301
  %303 = load ptr, ptr %302, align 8, !tbaa !74
  %304 = shl nuw nsw i64 %301, 3
  br label %305

305:                                              ; preds = %300, %305
  %306 = phi i64 [ 0, %300 ], [ %311, %305 ]
  %307 = getelementptr inbounds i16, ptr %303, i64 %306
  %308 = load i16, ptr %307, align 2, !tbaa !78
  %309 = add nuw nsw i64 %306, %304
  %310 = getelementptr inbounds i16, ptr %176, i64 %309
  store i16 %308, ptr %310, align 2, !tbaa !78
  %311 = add nuw nsw i64 %306, 1
  %312 = icmp eq i64 %311, 8
  br i1 %312, label %313, label %305, !llvm.loop !236

313:                                              ; preds = %305
  %314 = add nuw nsw i64 %301, 1
  %315 = icmp eq i64 %314, 8
  br i1 %315, label %316, label %300, !llvm.loop !237

316:                                              ; preds = %313
  %317 = getelementptr inbounds i16, ptr %176, i64 64
  %318 = add nuw nsw i64 %175, 1
  %319 = icmp eq i64 %175, 0
  br i1 %319, label %174, label %320, !llvm.loop !238

320:                                              ; preds = %316, %144
  %321 = load ptr, ptr %6, align 8, !tbaa !74
  call void @free_mem2Dpel(ptr noundef %321) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i32 @edgeDistortion(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #15 {
  %6 = ashr i32 %4, 3
  %7 = sdiv i32 %1, %6
  %8 = shl i32 %4, 3
  %9 = mul i32 %8, %7
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i16, ptr %3, i64 %10
  %12 = srem i32 %1, %6
  %13 = shl nsw i32 %12, 3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i16, ptr %11, i64 %14
  %16 = getelementptr inbounds i16, ptr %15, i64 16
  %17 = shl nsw i32 %4, 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, ptr %15, i64 %18
  %20 = getelementptr inbounds i16, ptr %15, i64 -1
  %21 = sext i32 %4 to i64
  %22 = sub nsw i64 0, %21
  %23 = getelementptr inbounds i16, ptr %15, i64 %22
  %24 = sext i32 %4 to i64
  %25 = sext i32 %4 to i64
  br label %26

26:                                               ; preds = %107, %5
  %27 = phi i32 [ 3, %5 ], [ 2, %107 ]
  br label %28

28:                                               ; preds = %26, %102
  %29 = phi i64 [ 4, %26 ], [ %105, %102 ]
  %30 = phi i32 [ 0, %26 ], [ %104, %102 ]
  %31 = phi i32 [ 0, %26 ], [ %103, %102 ]
  %32 = getelementptr inbounds i32, ptr %0, i64 %29
  %33 = load i32, ptr %32, align 4, !tbaa !65
  %34 = icmp slt i32 %33, %27
  br i1 %34, label %102, label %35

35:                                               ; preds = %28
  %36 = trunc i64 %29 to i32
  switch i32 %36, label %99 [
    i32 4, label %37
    i32 5, label %51
    i32 6, label %67
    i32 7, label %82
  ]

37:                                               ; preds = %35, %37
  %38 = phi i64 [ %49, %37 ], [ 0, %35 ]
  %39 = phi i32 [ %48, %37 ], [ %31, %35 ]
  %40 = getelementptr inbounds i16, ptr %2, i64 %38
  %41 = load i16, ptr %40, align 2, !tbaa !78
  %42 = zext i16 %41 to i32
  %43 = getelementptr inbounds i16, ptr %23, i64 %38
  %44 = load i16, ptr %43, align 2, !tbaa !78
  %45 = zext i16 %44 to i32
  %46 = sub nsw i32 %42, %45
  %47 = tail call i32 @llvm.abs.i32(i32 %46, i1 true)
  %48 = add nsw i32 %47, %39
  %49 = add nuw nsw i64 %38, 1
  %50 = icmp eq i64 %49, 16
  br i1 %50, label %99, label %37, !llvm.loop !239

51:                                               ; preds = %35, %51
  %52 = phi i64 [ %65, %51 ], [ 0, %35 ]
  %53 = phi i32 [ %64, %51 ], [ %31, %35 ]
  %54 = shl nuw nsw i64 %52, 4
  %55 = getelementptr inbounds i16, ptr %2, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !78
  %57 = zext i16 %56 to i32
  %58 = mul nsw i64 %52, %25
  %59 = getelementptr inbounds i16, ptr %20, i64 %58
  %60 = load i16, ptr %59, align 2, !tbaa !78
  %61 = zext i16 %60 to i32
  %62 = sub nsw i32 %57, %61
  %63 = tail call i32 @llvm.abs.i32(i32 %62, i1 true)
  %64 = add nsw i32 %63, %53
  %65 = add nuw nsw i64 %52, 1
  %66 = icmp eq i64 %65, 16
  br i1 %66, label %99, label %51, !llvm.loop !240

67:                                               ; preds = %35, %67
  %68 = phi i64 [ %80, %67 ], [ 0, %35 ]
  %69 = phi i32 [ %79, %67 ], [ %31, %35 ]
  %70 = or disjoint i64 %68, 240
  %71 = getelementptr inbounds i16, ptr %2, i64 %70
  %72 = load i16, ptr %71, align 2, !tbaa !78
  %73 = zext i16 %72 to i32
  %74 = getelementptr inbounds i16, ptr %19, i64 %68
  %75 = load i16, ptr %74, align 2, !tbaa !78
  %76 = zext i16 %75 to i32
  %77 = sub nsw i32 %73, %76
  %78 = tail call i32 @llvm.abs.i32(i32 %77, i1 true)
  %79 = add nsw i32 %78, %69
  %80 = add nuw nsw i64 %68, 1
  %81 = icmp eq i64 %80, 16
  br i1 %81, label %99, label %67, !llvm.loop !241

82:                                               ; preds = %35, %82
  %83 = phi i64 [ %97, %82 ], [ 0, %35 ]
  %84 = phi i32 [ %96, %82 ], [ %31, %35 ]
  %85 = shl nuw nsw i64 %83, 4
  %86 = or disjoint i64 %85, 15
  %87 = getelementptr inbounds i16, ptr %2, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !78
  %89 = zext i16 %88 to i32
  %90 = mul nsw i64 %83, %24
  %91 = getelementptr inbounds i16, ptr %16, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !78
  %93 = zext i16 %92 to i32
  %94 = sub nsw i32 %89, %93
  %95 = tail call i32 @llvm.abs.i32(i32 %94, i1 true)
  %96 = add nsw i32 %95, %84
  %97 = add nuw nsw i64 %83, 1
  %98 = icmp eq i64 %97, 16
  br i1 %98, label %99, label %82, !llvm.loop !242

99:                                               ; preds = %82, %67, %51, %37, %35
  %100 = phi i32 [ %31, %35 ], [ %48, %37 ], [ %64, %51 ], [ %79, %67 ], [ %96, %82 ]
  %101 = add nsw i32 %30, 1
  br label %102

102:                                              ; preds = %28, %99
  %103 = phi i32 [ %100, %99 ], [ %31, %28 ]
  %104 = phi i32 [ %101, %99 ], [ %30, %28 ]
  %105 = add nuw nsw i64 %29, 1
  %106 = icmp eq i64 %105, 8
  br i1 %106, label %107, label %28, !llvm.loop !243

107:                                              ; preds = %102
  %108 = add nsw i32 %27, -3
  %109 = icmp ult i32 %108, -2
  %110 = icmp eq i32 %104, 0
  %111 = select i1 %109, i1 %110, i1 false
  br i1 %111, label %26, label %112, !llvm.loop !244

112:                                              ; preds = %107
  br i1 %110, label %115, label %113

113:                                              ; preds = %112
  %114 = sdiv i32 %103, %104
  br label %115

115:                                              ; preds = %112, %113
  %116 = phi i32 [ %114, %113 ], [ 0, %112 ]
  ret i32 %116
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @copyPredMB(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #4 {
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 136
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 48
  %9 = load i32, ptr %8, align 4, !tbaa !81
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x i32], ptr @uv_div, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !65
  %13 = getelementptr inbounds [2 x [4 x i32]], ptr @uv_div, i64 0, i64 1, i64 %10
  %14 = load i32, ptr %13, align 4, !tbaa !65
  %15 = ashr i32 %3, 3
  %16 = srem i32 %0, %15
  %17 = shl nsw i32 %16, 3
  %18 = sdiv i32 %0, %15
  %19 = shl i32 %18, 3
  %20 = add i32 %19, 15
  %21 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 32
  %22 = load ptr, ptr %21, align 8, !tbaa !75
  %23 = sext i32 %17 to i64
  %24 = add i32 %17, 16
  %25 = sext i32 %19 to i64
  %26 = tail call i32 @llvm.smax.i32(i32 %19, i32 %20)
  %27 = add i32 %26, 1
  br label %28

28:                                               ; preds = %4, %47
  %29 = phi i64 [ %25, %4 ], [ %48, %47 ]
  %30 = trunc i64 %29 to i32
  %31 = sub i32 %30, %19
  %32 = shl i32 %31, 4
  %33 = sub i32 %32, %17
  %34 = getelementptr inbounds ptr, ptr %22, i64 %29
  %35 = load ptr, ptr %34, align 8, !tbaa !74
  br label %36

36:                                               ; preds = %28, %36
  %37 = phi i64 [ %23, %28 ], [ %44, %36 ]
  %38 = trunc i64 %37 to i32
  %39 = add i32 %33, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, ptr %1, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !78
  %43 = getelementptr inbounds i16, ptr %35, i64 %37
  store i16 %42, ptr %43, align 2, !tbaa !78
  %44 = add nsw i64 %37, 1
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %24, %45
  br i1 %46, label %47, label %36, !llvm.loop !245

47:                                               ; preds = %36
  %48 = add nsw i64 %29, 1
  %49 = trunc i64 %48 to i32
  %50 = icmp eq i32 %27, %49
  br i1 %50, label %51, label %28, !llvm.loop !246

51:                                               ; preds = %47
  %52 = add nsw i32 %17, 15
  %53 = icmp eq i32 %9, 0
  br i1 %53, label %104, label %54

54:                                               ; preds = %51
  %55 = ashr i32 %19, %14
  %56 = ashr i32 %20, %14
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %104, label %58

58:                                               ; preds = %54
  %59 = ashr i32 %17, %12
  %60 = ashr i32 %52, %12
  %61 = icmp sgt i32 %59, %60
  %62 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 77
  %63 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 33
  %64 = sext i32 %59 to i64
  %65 = add i32 %60, 1
  %66 = sext i32 %55 to i64
  %67 = add i32 %56, 1
  %68 = shl nsw i32 %16, 2
  br label %69

69:                                               ; preds = %58, %100
  %70 = phi i64 [ %66, %58 ], [ %101, %100 ]
  br i1 %61, label %100, label %71

71:                                               ; preds = %69
  %72 = load i32, ptr %62, align 4, !tbaa !43
  %73 = trunc i64 %70 to i32
  %74 = sub i32 %73, %55
  %75 = mul nsw i32 %72, %74
  %76 = load ptr, ptr %63, align 8, !tbaa !82
  %77 = load ptr, ptr %76, align 8, !tbaa !74
  %78 = getelementptr inbounds ptr, ptr %77, i64 %70
  %79 = load ptr, ptr %78, align 8, !tbaa !74
  %80 = getelementptr inbounds ptr, ptr %76, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !74
  %82 = getelementptr inbounds ptr, ptr %81, i64 %70
  %83 = load ptr, ptr %82, align 8, !tbaa !74
  br label %84

84:                                               ; preds = %71, %84
  %85 = phi i64 [ %64, %71 ], [ %97, %84 ]
  %86 = trunc i64 %85 to i32
  %87 = sub i32 %86, %68
  %88 = add nsw i32 %87, %75
  %89 = sext i32 %88 to i64
  %90 = getelementptr i16, ptr %1, i64 %89
  %91 = getelementptr i16, ptr %90, i64 256
  %92 = load i16, ptr %91, align 2, !tbaa !78
  %93 = getelementptr inbounds i16, ptr %79, i64 %85
  store i16 %92, ptr %93, align 2, !tbaa !78
  %94 = getelementptr i16, ptr %90, i64 320
  %95 = load i16, ptr %94, align 2, !tbaa !78
  %96 = getelementptr inbounds i16, ptr %83, i64 %85
  store i16 %95, ptr %96, align 2, !tbaa !78
  %97 = add nsw i64 %85, 1
  %98 = trunc i64 %97 to i32
  %99 = icmp eq i32 %65, %98
  br i1 %99, label %100, label %84, !llvm.loop !247

100:                                              ; preds = %84, %69
  %101 = add nsw i64 %70, 1
  %102 = trunc i64 %101 to i32
  %103 = icmp eq i32 %67, %102
  br i1 %103, label %104, label %69, !llvm.loop !248

104:                                              ; preds = %100, %54, %51
  ret void
}

declare i32 @get_mem2Dpel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @get_block_luma(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @free_mem2Dpel(ptr noundef) local_unnamed_addr #3

declare void @init_lists(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(0,1) }

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
!35 = !{!"frame_s", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !41, i64 64}
!40 = !{!"ercVariables_s", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !36, i64 48, !41, i64 56, !41, i64 60, !41, i64 64}
!41 = !{!"int", !37, i64 0}
!42 = !{!40, !41, i64 60}
!43 = !{!44, !41, i64 849108}
!44 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !41, i64 848672, !41, i64 848676, !41, i64 848680, !41, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !41, i64 848712, !41, i64 848716, !41, i64 848720, !41, i64 848724, !41, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !41, i64 848776, !41, i64 848780, !41, i64 848784, !41, i64 848788, !41, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !41, i64 848872, !41, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !41, i64 848920, !36, i64 848928, !36, i64 848936, !41, i64 848944, !41, i64 848948, !41, i64 848952, !41, i64 848956, !41, i64 848960, !41, i64 848964, !41, i64 848968, !41, i64 848972, !41, i64 848976, !41, i64 848980, !41, i64 848984, !41, i64 848988, !41, i64 848992, !41, i64 848996, !41, i64 849000, !41, i64 849004, !41, i64 849008, !41, i64 849012, !41, i64 849016, !41, i64 849020, !41, i64 849024, !41, i64 849028, !41, i64 849032, !41, i64 849036, !45, i64 849040, !45, i64 849042, !37, i64 849044, !41, i64 849052, !41, i64 849056, !37, i64 849060, !37, i64 849072, !41, i64 849084, !41, i64 849088, !41, i64 849092, !41, i64 849096, !41, i64 849100, !41, i64 849104, !41, i64 849108, !41, i64 849112, !41, i64 849116, !41, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !41, i64 849196, !41, i64 849200, !41, i64 849204, !41, i64 849208, !41, i64 849212, !41, i64 849216, !41, i64 849220, !41, i64 849224, !41, i64 849228, !41, i64 849232, !41, i64 849236, !41, i64 849240, !41, i64 849244, !41, i64 849248, !41, i64 849252, !41, i64 849256, !41, i64 849260, !41, i64 849264, !41, i64 849268, !41, i64 849272, !41, i64 849276, !41, i64 849280, !41, i64 849284, !36, i64 849288, !36, i64 849296, !46, i64 849304, !46, i64 849624, !46, i64 849944, !46, i64 850264, !46, i64 850584, !46, i64 850904, !46, i64 851224, !46, i64 851544, !41, i64 851864, !41, i64 851868, !41, i64 851872, !49, i64 851880, !41, i64 851888, !37, i64 851892, !41, i64 855988, !41, i64 855992, !41, i64 855996, !41, i64 856000, !41, i64 856004, !41, i64 856008, !41, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !41, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !41, i64 856640, !41, i64 856644, !41, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !41, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !41, i64 856824, !36, i64 856832, !41, i64 856840, !41, i64 856844, !41, i64 856848, !41, i64 856852, !41, i64 856856, !41, i64 856860, !41, i64 856864, !36, i64 856872}
!45 = !{!"short", !37, i64 0}
!46 = !{!"image_data", !47, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!47 = !{!"frame_format", !41, i64 0, !41, i64 4, !48, i64 8, !37, i64 16, !37, i64 28, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !37, i64 72, !41, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !41, i64 124, !41, i64 128}
!48 = !{!"double", !37, i64 0}
!49 = !{!"long", !37, i64 0}
!50 = !{!44, !41, i64 849112}
!51 = !{!40, !36, i64 8}
!52 = !{!37, !37, i64 0}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!44, !41, i64 856512}
!57 = distinct !{!57, !54, !55}
!58 = distinct !{!58, !54, !55}
!59 = distinct !{!59, !54, !55}
!60 = distinct !{!60, !54, !55}
!61 = distinct !{!61, !54, !55}
!62 = !{!63, !41, i64 4}
!63 = !{!"object_buffer", !37, i64 0, !41, i64 4, !41, i64 8, !37, i64 12}
!64 = !{!63, !41, i64 8}
!65 = !{!41, !41, i64 0}
!66 = !{!63, !37, i64 0}
!67 = !{!44, !36, i64 856520}
!68 = !{!35, !36, i64 8}
!69 = distinct !{!69, !54, !55}
!70 = distinct !{!70, !54, !55}
!71 = distinct !{!71, !54, !55}
!72 = !{!44, !36, i64 856456}
!73 = !{!44, !36, i64 848736}
!74 = !{!36, !36, i64 0}
!75 = !{!76, !36, i64 128}
!76 = !{!"storable_picture", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !37, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !45, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !37, i64 160, !77, i64 184, !37, i64 192, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !37, i64 300, !41, i64 308, !36, i64 312, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !36, i64 336, !41, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !41, i64 368, !36, i64 376, !41, i64 384, !41, i64 388, !37, i64 392, !37, i64 400}
!77 = !{!"pic_motion_params_old", !36, i64 0}
!78 = !{!45, !45, i64 0}
!79 = distinct !{!79, !54, !55}
!80 = distinct !{!80, !54, !55}
!81 = !{!76, !41, i64 268}
!82 = !{!76, !36, i64 136}
!83 = !{!35, !36, i64 16}
!84 = !{!35, !36, i64 24}
!85 = distinct !{!85, !54, !55}
!86 = distinct !{!86, !54, !55}
!87 = !{!88, !36, i64 0}
!88 = !{!"decoded_picture_buffer", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64, !41, i64 4160, !41, i64 4164, !36, i64 4168}
!89 = !{!44, !41, i64 849252}
!90 = !{!44, !41, i64 849236}
!91 = !{!44, !41, i64 849228}
!92 = !{!44, !41, i64 849244}
!93 = !{!44, !41, i64 848944}
!94 = !{!44, !41, i64 848992}
!95 = !{!96, !41, i64 172}
!96 = !{!"slice", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !36, i64 40, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !37, i64 88, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !45, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !37, i64 136, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !37, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !36, i64 248, !37, i64 256, !37, i64 264, !36, i64 312, !36, i64 320, !36, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !41, i64 1176, !41, i64 1180, !41, i64 1184, !97, i64 1188, !45, i64 1220, !45, i64 1222, !45, i64 1224, !41, i64 1228, !41, i64 1232, !41, i64 1236, !41, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !37, i64 1288, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !41, i64 13264, !41, i64 13268, !45, i64 13272, !45, i64 13274, !45, i64 13276, !45, i64 13278, !36, i64 13280, !36, i64 13288, !36, i64 13296, !45, i64 13304, !45, i64 13306, !41, i64 13308, !41, i64 13312, !36, i64 13320, !36, i64 13328, !41, i64 13336, !37, i64 13340, !36, i64 13408, !36, i64 13416, !36, i64 13424, !36, i64 13432, !36, i64 13440, !36, i64 13448, !36, i64 13456, !36, i64 13464, !36, i64 13472, !36, i64 13480, !36, i64 13488, !36, i64 13496, !41, i64 13504, !36, i64 13512, !36, i64 13520, !36, i64 13528, !36, i64 13536, !36, i64 13544, !37, i64 13552}
!97 = !{!"nalunitheadermvcext_tag", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28}
!98 = !{!44, !41, i64 848780}
!99 = !{!44, !41, i64 848784}
!100 = !{!44, !41, i64 848788}
!101 = !{!44, !41, i64 848792}
!102 = !{!76, !41, i64 96}
!103 = !{!76, !41, i64 28}
!104 = !{!76, !41, i64 20}
!105 = !{!76, !41, i64 52}
!106 = !{!76, !41, i64 48}
!107 = !{!76, !41, i64 44}
!108 = !{!76, !41, i64 320}
!109 = !{!76, !41, i64 264}
!110 = !{!44, !41, i64 849232}
!111 = !{!76, !41, i64 8}
!112 = !{!76, !41, i64 12}
!113 = !{!76, !41, i64 16}
!114 = !{!76, !41, i64 4}
!115 = !{!88, !41, i64 44}
!116 = !{!88, !36, i64 16}
!117 = !{!118, !41, i64 0}
!118 = !{!"frame_store", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !36, i64 48, !36, i64 56, !36, i64 64, !41, i64 72, !37, i64 76, !37, i64 84}
!119 = !{!118, !36, i64 48}
!120 = !{!76, !37, i64 40}
!121 = distinct !{!121, !54, !55}
!122 = !{!44, !41, i64 849256}
!123 = !{!76, !41, i64 248}
!124 = !{!76, !41, i64 252}
!125 = !{!96, !41, i64 1176}
!126 = !{!44, !36, i64 856656}
!127 = distinct !{!127, !54, !55}
!128 = !{!118, !41, i64 44}
!129 = !{!88, !36, i64 24}
!130 = distinct !{!130, !54, !55}
!131 = !{!44, !36, i64 8}
!132 = !{!133, !41, i64 2168}
!133 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !37, i64 24, !37, i64 72, !37, i64 456, !37, i64 1992, !37, i64 2016, !41, i64 2040, !41, i64 2044, !41, i64 2048, !37, i64 2052, !37, i64 2084, !37, i64 2116, !41, i64 2148, !41, i64 2152, !41, i64 2156, !36, i64 2160, !41, i64 2168, !41, i64 2172, !41, i64 2176, !41, i64 2180, !41, i64 2184, !41, i64 2188, !41, i64 2192, !41, i64 2196, !41, i64 2200, !41, i64 2204, !41, i64 2208}
!134 = !{!88, !41, i64 48}
!135 = !{!44, !36, i64 16}
!136 = !{!137, !41, i64 2068}
!137 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !37, i64 44, !37, i64 92, !37, i64 476, !37, i64 2012, !37, i64 2036, !41, i64 2060, !41, i64 2064, !41, i64 2068, !41, i64 2072, !41, i64 2076, !41, i64 2080, !41, i64 2084, !41, i64 2088, !41, i64 2092, !37, i64 2096, !41, i64 3120, !41, i64 3124, !41, i64 3128, !41, i64 3132, !41, i64 3136, !41, i64 3140, !41, i64 3144, !41, i64 3148, !41, i64 3152, !41, i64 3156, !41, i64 3160, !41, i64 3164, !41, i64 3168, !138, i64 3172, !41, i64 4120, !41, i64 4124}
!138 = !{!"", !41, i64 0, !41, i64 4, !45, i64 8, !45, i64 10, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !139, i64 80, !41, i64 492, !139, i64 496, !41, i64 908, !41, i64 912, !41, i64 916, !41, i64 920, !41, i64 924, !41, i64 928, !41, i64 932, !41, i64 936, !41, i64 940, !41, i64 944}
!139 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !37, i64 12, !37, i64 140, !37, i64 268, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408}
!140 = !{!118, !41, i64 20}
!141 = !{!44, !41, i64 849248}
!142 = !{!118, !41, i64 28}
!143 = distinct !{!143, !54, !55}
!144 = distinct !{!144, !54, !55}
!145 = distinct !{!145, !54, !55}
!146 = distinct !{!146, !54, !55}
!147 = distinct !{!147, !54, !55}
!148 = distinct !{!148, !54, !55}
!149 = distinct !{!149, !54, !55}
!150 = !{!137, !41, i64 3120}
!151 = distinct !{!151, !54, !55}
!152 = distinct !{!152, !54, !55}
!153 = !{!76, !41, i64 32}
!154 = !{!44, !41, i64 849240}
!155 = !{!118, !41, i64 40}
!156 = distinct !{!156, !54, !55}
!157 = !{!158, !36, i64 0}
!158 = !{!"concealment_node", !36, i64 0, !41, i64 8, !36, i64 16}
!159 = !{!158, !41, i64 8}
!160 = !{!158, !36, i64 16}
!161 = distinct !{!161, !54, !55}
!162 = !{!44, !36, i64 848928}
!163 = distinct !{!163, !54, !55}
!164 = !{!44, !36, i64 848936}
!165 = distinct !{!165, !54, !55}
!166 = !{!88, !41, i64 40}
!167 = distinct !{!167, !54, !55}
!168 = !{!76, !41, i64 108}
!169 = !{!76, !41, i64 256}
!170 = !{!76, !41, i64 260}
!171 = !{!76, !41, i64 272}
!172 = !{!76, !41, i64 276}
!173 = !{!76, !41, i64 280}
!174 = !{!76, !41, i64 284}
!175 = !{!76, !41, i64 292}
!176 = !{!76, !41, i64 288}
!177 = !{!76, !41, i64 296}
!178 = !{!76, !41, i64 308}
!179 = !{!76, !41, i64 104}
!180 = distinct !{!180, !54, !55}
!181 = distinct !{!181, !54, !55}
!182 = distinct !{!182, !54, !55}
!183 = distinct !{!183, !54, !55}
!184 = !{!96, !41, i64 184}
!185 = !{!76, !36, i64 152}
!186 = !{!187, !45, i64 0}
!187 = !{!"", !45, i64 0, !45, i64 2}
!188 = !{!187, !45, i64 2}
!189 = !{!44, !36, i64 848888}
!190 = !{!191, !36, i64 0}
!191 = !{!"macroblock", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !187, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !37, i64 72, !37, i64 80, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !45, i64 108, !37, i64 110, !37, i64 111, !45, i64 112, !45, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !45, i64 152, !37, i64 154, !41, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !41, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !45, i64 376, !45, i64 378, !45, i64 380, !41, i64 384, !41, i64 388, !41, i64 392, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !41, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !37, i64 472}
!192 = !{!191, !45, i64 28}
!193 = !{!191, !45, i64 30}
!194 = !{!191, !41, i64 36}
!195 = !{!191, !41, i64 56}
!196 = !{!191, !41, i64 32}
!197 = !{!191, !41, i64 52}
!198 = !{!76, !41, i64 356}
!199 = !{!76, !41, i64 80}
!200 = !{!191, !41, i64 384}
!201 = !{!76, !41, i64 68}
!202 = !{!76, !41, i64 84}
!203 = !{!96, !36, i64 1368}
!204 = !{!96, !36, i64 1248}
!205 = distinct !{!205, !54, !55}
!206 = distinct !{!206, !54, !55}
!207 = distinct !{!207, !54, !55}
!208 = !{!76, !41, i64 72}
!209 = !{!76, !41, i64 76}
!210 = distinct !{!210, !54, !55}
!211 = distinct !{!211, !54, !55}
!212 = distinct !{!212, !54, !55}
!213 = distinct !{!213, !54, !55}
!214 = distinct !{!214, !54, !55}
!215 = distinct !{!215, !54, !55}
!216 = distinct !{!216, !54, !55}
!217 = distinct !{!217, !54, !55}
!218 = distinct !{!218, !54, !55}
!219 = distinct !{!219, !54, !55}
!220 = distinct !{!220, !54, !55}
!221 = !{!88, !41, i64 56}
!222 = !{!118, !41, i64 36}
!223 = !{!118, !41, i64 4}
!224 = !{!44, !36, i64 856048}
!225 = distinct !{!225, !54, !55}
!226 = distinct !{!226, !54, !55}
!227 = distinct !{!227, !54, !55}
!228 = distinct !{!228, !54, !55}
!229 = distinct !{!229, !54, !55}
!230 = distinct !{!230, !54, !55}
!231 = !{!44, !41, i64 849100}
!232 = distinct !{!232, !54, !55}
!233 = distinct !{!233, !54, !55}
!234 = distinct !{!234, !54, !55}
!235 = distinct !{!235, !54, !55}
!236 = distinct !{!236, !54, !55}
!237 = distinct !{!237, !54, !55}
!238 = distinct !{!238, !54, !55}
!239 = distinct !{!239, !54, !55}
!240 = distinct !{!240, !54, !55}
!241 = distinct !{!241, !54, !55}
!242 = distinct !{!242, !54, !55}
!243 = distinct !{!243, !54, !55}
!244 = distinct !{!244, !54, !55}
!245 = distinct !{!245, !54, !55}
!246 = distinct !{!246, !54, !55}
!247 = distinct !{!247, !54, !55}
!248 = distinct !{!248, !54, !55}
