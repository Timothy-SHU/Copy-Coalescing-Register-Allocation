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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ercConcealInterFrame(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [8 x i32], align 16
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #22
  %9 = icmp eq ptr %4, null
  br i1 %9, label %161, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ercVariables_s, ptr %4, i64 0, i32 10
  %12 = load i32, ptr %11, align 8, !tbaa !39
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %161, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ercVariables_s, ptr %4, i64 0, i32 9
  %16 = load i32, ptr %15, align 4, !tbaa !42
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %161, label %18

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
  %30 = tail call noalias ptr @malloc(i64 noundef %29) #23
  br label %33

31:                                               ; preds = %18
  %32 = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #23
  br label %33

33:                                               ; preds = %31, %20
  %34 = phi ptr [ %30, %20 ], [ %32, %31 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #24
  br label %37

37:                                               ; preds = %36, %33
  %38 = ashr i32 %3, 4
  %39 = ashr i32 %2, 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %160

41:                                               ; preds = %37
  %42 = icmp sgt i32 %38, 0
  %43 = getelementptr inbounds %struct.ercVariables_s, ptr %4, i64 0, i32 2
  %44 = lshr i32 %2, 2
  %45 = and i32 %44, 1073741822
  %46 = shl nsw i32 %38, 1
  %47 = shl nuw nsw i32 %39, 1
  %48 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 141
  %49 = sext i32 %38 to i64
  br label %50

50:                                               ; preds = %41, %157
  %51 = phi i32 [ 0, %41 ], [ %158, %157 ]
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  %54 = lshr i32 %51, 1
  %55 = xor i32 %54, -1
  %56 = add nsw i32 %39, %55
  %57 = select i1 %53, i32 %54, i32 %56
  br i1 %42, label %58, label %157

58:                                               ; preds = %50
  %59 = shl i32 %57, 1
  br label %60

60:                                               ; preds = %58, %153
  %61 = phi i32 [ 0, %58 ], [ %155, %153 ]
  %62 = load ptr, ptr %43, align 8, !tbaa !51
  %63 = mul i32 %45, %61
  %64 = add nsw i32 %63, %59
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %62, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !52
  %68 = icmp slt i8 %67, 2
  br i1 %68, label %69, label %153

69:                                               ; preds = %60
  %70 = sext i32 %61 to i64
  br label %71

71:                                               ; preds = %69, %75
  %72 = phi i64 [ %70, %69 ], [ %73, %75 ]
  %73 = add nsw i64 %72, 1
  %74 = icmp slt i64 %73, %49
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = trunc i64 %73 to i32
  %77 = mul i32 %45, %76
  %78 = add nsw i32 %77, %59
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %62, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !52
  %82 = icmp sgt i8 %81, 1
  br i1 %82, label %83, label %71, !llvm.loop !53

83:                                               ; preds = %75
  %84 = trunc i64 %72 to i32
  %85 = icmp sgt i32 %38, %84
  br i1 %85, label %103, label %86

86:                                               ; preds = %71, %83
  %87 = icmp slt i32 %61, %38
  br i1 %87, label %88, label %153

88:                                               ; preds = %86, %100
  %89 = phi i32 [ %101, %100 ], [ %61, %86 ]
  %90 = shl i32 %89, 1
  %91 = load ptr, ptr %43, align 8, !tbaa !51
  %92 = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %7, i32 noundef %90, i32 noundef %59, ptr noundef %91, i32 noundef %46, i32 noundef %47, i32 noundef 2, i8 noundef zeroext 0) #24
  %93 = load i32, ptr %48, align 8, !tbaa !55
  %94 = icmp sgt i32 %93, 7
  %95 = mul nsw i32 %89, %39
  %96 = add nsw i32 %95, %57
  br i1 %94, label %97, label %99

97:                                               ; preds = %88
  %98 = load ptr, ptr %43, align 8, !tbaa !51
  call fastcc void @concealByTrial(ptr noundef nonnull %0, ptr noundef %34, i32 noundef %96, ptr noundef %1, ptr noundef nonnull %7, i32 noundef %2, ptr noundef %98) #25
  br label %100

99:                                               ; preds = %88
  call fastcc void @concealByCopy(ptr noundef nonnull %0, i32 noundef %96, ptr noundef %1, i32 noundef %2) #25
  br label %100

100:                                              ; preds = %99, %97
  call void @ercMarkCurrMBConcealed(i32 noundef %96, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #24
  %101 = add i32 %89, 1
  %102 = icmp eq i32 %101, %38
  br i1 %102, label %153, label %88, !llvm.loop !56

103:                                              ; preds = %83
  %104 = icmp eq i32 %61, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %103
  %106 = icmp sgt i32 %84, -1
  br i1 %106, label %107, label %122

107:                                              ; preds = %105, %119
  %108 = phi i32 [ %120, %119 ], [ %84, %105 ]
  %109 = shl nuw i32 %108, 1
  %110 = load ptr, ptr %43, align 8, !tbaa !51
  %111 = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %7, i32 noundef %109, i32 noundef %59, ptr noundef %110, i32 noundef %46, i32 noundef %47, i32 noundef 2, i8 noundef zeroext 0) #24
  %112 = load i32, ptr %48, align 8, !tbaa !55
  %113 = icmp sgt i32 %112, 7
  %114 = mul nsw i32 %108, %39
  %115 = add nsw i32 %114, %57
  br i1 %113, label %116, label %118

116:                                              ; preds = %107
  %117 = load ptr, ptr %43, align 8, !tbaa !51
  call fastcc void @concealByTrial(ptr noundef nonnull %0, ptr noundef %34, i32 noundef %115, ptr noundef %1, ptr noundef nonnull %7, i32 noundef %2, ptr noundef %117) #25
  br label %119

118:                                              ; preds = %107
  call fastcc void @concealByCopy(ptr noundef nonnull %0, i32 noundef %115, ptr noundef %1, i32 noundef %2) #25
  br label %119

119:                                              ; preds = %118, %116
  call void @ercMarkCurrMBConcealed(i32 noundef %115, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #24
  %120 = add nsw i32 %108, -1
  %121 = icmp sgt i32 %108, 0
  br i1 %121, label %107, label %122, !llvm.loop !57

122:                                              ; preds = %119, %105
  %123 = add nsw i32 %84, 1
  br label %153

124:                                              ; preds = %103
  %125 = add nsw i32 %84, 1
  %126 = icmp sgt i32 %61, %84
  br i1 %126, label %153, label %127

127:                                              ; preds = %124
  %128 = sub i32 %125, %61
  br label %129

129:                                              ; preds = %127, %150
  %130 = phi i32 [ %151, %150 ], [ 0, %127 ]
  %131 = phi i32 [ %138, %150 ], [ %61, %127 ]
  %132 = phi i32 [ %136, %150 ], [ %84, %127 ]
  %133 = and i32 %130, 1
  %134 = icmp ne i32 %133, 0
  %135 = sext i1 %134 to i32
  %136 = add nsw i32 %132, %135
  %137 = xor i32 %133, 1
  %138 = add i32 %137, %131
  %139 = select i1 %134, i32 %132, i32 %131
  %140 = shl i32 %139, 1
  %141 = load ptr, ptr %43, align 8, !tbaa !51
  %142 = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %7, i32 noundef %140, i32 noundef %59, ptr noundef %141, i32 noundef %46, i32 noundef %47, i32 noundef 2, i8 noundef zeroext 0) #24
  %143 = load i32, ptr %48, align 8, !tbaa !55
  %144 = icmp sgt i32 %143, 7
  %145 = mul nsw i32 %139, %39
  %146 = add nsw i32 %145, %57
  br i1 %144, label %147, label %149

147:                                              ; preds = %129
  %148 = load ptr, ptr %43, align 8, !tbaa !51
  call fastcc void @concealByTrial(ptr noundef nonnull %0, ptr noundef %34, i32 noundef %146, ptr noundef %1, ptr noundef nonnull %7, i32 noundef %2, ptr noundef %148) #25
  br label %150

149:                                              ; preds = %129
  call fastcc void @concealByCopy(ptr noundef nonnull %0, i32 noundef %146, ptr noundef %1, i32 noundef %2) #25
  br label %150

150:                                              ; preds = %149, %147
  call void @ercMarkCurrMBConcealed(i32 noundef %146, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #24
  %151 = add nuw i32 %130, 1
  %152 = icmp eq i32 %151, %128
  br i1 %152, label %153, label %129, !llvm.loop !58

153:                                              ; preds = %100, %150, %86, %124, %122, %60
  %154 = phi i32 [ %61, %60 ], [ %123, %122 ], [ %125, %124 ], [ %38, %86 ], [ %125, %150 ], [ %38, %100 ]
  %155 = add nsw i32 %154, 1
  %156 = icmp slt i32 %155, %38
  br i1 %156, label %60, label %157, !llvm.loop !59

157:                                              ; preds = %153, %50
  %158 = add nuw nsw i32 %51, 1
  %159 = icmp eq i32 %158, %39
  br i1 %159, label %160, label %50, !llvm.loop !60

160:                                              ; preds = %157, %37
  call void @free(ptr noundef %34) #24
  br label %161

161:                                              ; preds = %6, %10, %14, %160
  %162 = phi i32 [ 1, %160 ], [ 1, %14 ], [ 0, %10 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #22
  ret i32 %162
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @no_mem_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ercCollect8PredBlocks(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @concealByTrial(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !PGOFuncName !61 {
  %8 = alloca [3 x i32], align 4
  %9 = alloca [3 x i32], align 8
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %9, i8 0, i64 12, i1 false)
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
  %34 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 142
  %35 = getelementptr inbounds %struct.frame_s, ptr %0, i64 0, i32 1
  br label %36

36:                                               ; preds = %148, %7
  %37 = phi i32 [ 3, %7 ], [ 2, %148 ]
  %38 = phi i32 [ 0, %7 ], [ %143, %148 ]
  %39 = phi i32 [ 0, %7 ], [ %144, %148 ]
  %40 = phi i32 [ 0, %7 ], [ %145, %148 ]
  br label %41

41:                                               ; preds = %36, %139
  %42 = phi i64 [ 4, %36 ], [ %146, %139 ]
  %43 = phi i32 [ %40, %36 ], [ %145, %139 ]
  %44 = phi i32 [ %39, %36 ], [ %144, %139 ]
  %45 = phi i32 [ %38, %36 ], [ %143, %139 ]
  %46 = phi i32 [ 0, %36 ], [ %142, %139 ]
  %47 = phi i32 [ 0, %36 ], [ %141, %139 ]
  %48 = phi i32 [ 0, %36 ], [ %140, %139 ]
  %49 = getelementptr inbounds i32, ptr %4, i64 %42
  %50 = load i32, ptr %49, align 4, !tbaa !65
  %51 = icmp slt i32 %50, %37
  br i1 %51, label %139, label %52

52:                                               ; preds = %41
  %53 = trunc i64 %42 to i32
  switch i32 %53, label %58 [
    i32 4, label %54
    i32 5, label %55
    i32 6, label %56
    i32 7, label %57
  ]

54:                                               ; preds = %52
  br label %58

55:                                               ; preds = %52
  br label %58

56:                                               ; preds = %52
  br label %58

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %52, %57, %56, %55, %54
  %59 = phi i32 [ %45, %52 ], [ 2, %57 ], [ 1, %56 ], [ 3, %55 ], [ 3, %54 ]
  %60 = phi i32 [ %44, %52 ], [ 0, %57 ], [ 0, %56 ], [ 1, %55 ], [ 2, %54 ]
  %61 = phi i32 [ %43, %52 ], [ %28, %57 ], [ %29, %56 ], [ %30, %55 ], [ %31, %54 ]
  %62 = shl i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.object_buffer, ptr %3, i64 %63
  %65 = load i8, ptr %64, align 4, !tbaa !66
  %66 = icmp ugt i8 %65, 2
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = zext nneg i32 %60 to i64
  %69 = getelementptr inbounds %struct.object_buffer, ptr %64, i64 %68
  %70 = load i8, ptr %69, align 4, !tbaa !66
  %71 = icmp eq i8 %70, 6
  br i1 %71, label %139, label %74

72:                                               ; preds = %58
  %73 = icmp eq i8 %65, 2
  br i1 %73, label %139, label %79

74:                                               ; preds = %67
  %75 = zext nneg i32 %59 to i64
  %76 = getelementptr inbounds %struct.object_buffer, ptr %64, i64 %75
  %77 = load i8, ptr %76, align 4, !tbaa !66
  %78 = icmp eq i8 %77, 6
  br i1 %78, label %139, label %79

79:                                               ; preds = %72, %74
  %80 = zext i1 %66 to i32
  %81 = getelementptr inbounds %struct.object_buffer, ptr %3, i64 %63, i32 3
  %82 = icmp eq i32 %60, %59
  %83 = select i1 %82, i32 -2, i32 -1
  br label %84

84:                                               ; preds = %79, %133
  %85 = phi i32 [ %46, %79 ], [ %136, %133 ]
  %86 = phi i32 [ %80, %79 ], [ %137, %133 ]
  %87 = phi i32 [ %47, %79 ], [ %135, %133 ]
  %88 = phi i32 [ %48, %79 ], [ %134, %133 ]
  %89 = phi i32 [ %60, %79 ], [ %59, %133 ]
  %90 = load i8, ptr %64, align 4, !tbaa !66
  %91 = icmp ugt i8 %90, 2
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = zext nneg i32 %89 to i64
  %94 = getelementptr inbounds %struct.object_buffer, ptr %64, i64 %93
  %95 = load i8, ptr %94, align 4, !tbaa !66
  switch i8 %95, label %102 [
    i8 4, label %99
    i8 6, label %133
  ]

96:                                               ; preds = %84
  switch i8 %90, label %97 [
    i8 0, label %99
    i8 2, label %133
  ]

97:                                               ; preds = %96
  %98 = zext nneg i32 %89 to i64
  br label %102

99:                                               ; preds = %92, %96
  %100 = icmp eq i32 %87, 0
  br i1 %100, label %101, label %133

101:                                              ; preds = %99
  store i32 0, ptr %32, align 4, !tbaa !65
  store i32 0, ptr %9, align 8, !tbaa !65
  br label %109

102:                                              ; preds = %92, %97
  %103 = phi i64 [ %98, %97 ], [ %93, %92 ]
  %104 = getelementptr inbounds %struct.object_buffer, ptr %64, i64 %103, i32 3
  %105 = select i1 %91, ptr %104, ptr %81
  %106 = load <2 x i32>, ptr %105, align 4, !tbaa !65
  store <2 x i32> %106, ptr %9, align 8, !tbaa !65
  %107 = getelementptr inbounds i32, ptr %105, i64 2
  %108 = load i32, ptr %107, align 4, !tbaa !65
  br label %109

109:                                              ; preds = %102, %101
  %110 = phi i32 [ %108, %102 ], [ 0, %101 ]
  %111 = phi i32 [ %87, %102 ], [ 1, %101 ]
  store i32 %110, ptr %33, align 8, !tbaa !65
  %112 = load ptr, ptr %34, align 8, !tbaa !67
  %113 = load i32, ptr %24, align 4, !tbaa !62
  %114 = load i32, ptr %27, align 4, !tbaa !64
  call fastcc void @buildPredRegionYUV(ptr noundef %112, ptr noundef nonnull %9, i32 noundef %113, i32 noundef %114, ptr noundef %1) #25
  %115 = load ptr, ptr %35, align 8, !tbaa !68
  %116 = tail call fastcc i32 @edgeDistortion(ptr noundef %4, i32 noundef %21, ptr noundef %1, ptr noundef %115, i32 noundef %5) #25
  %117 = icmp sge i32 %116, %85
  %118 = icmp ne i32 %88, 0
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %133, label %120

120:                                              ; preds = %109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false), !tbaa !65
  %121 = load i8, ptr %64, align 4, !tbaa !66
  %122 = icmp ugt i8 %121, 2
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = zext nneg i32 %89 to i64
  %125 = getelementptr inbounds %struct.object_buffer, ptr %64, i64 %124
  %126 = load i8, ptr %125, align 4, !tbaa !66
  %127 = icmp eq i8 %126, 4
  br i1 %127, label %131, label %130

128:                                              ; preds = %120
  %129 = icmp eq i8 %121, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %128, %123
  br label %131

131:                                              ; preds = %123, %128, %130
  %132 = phi i8 [ 1, %130 ], [ 0, %128 ], [ 0, %123 ]
  store i8 %132, ptr %14, align 4, !tbaa !66
  tail call fastcc void @copyPredMB(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %0, i32 noundef %5) #25
  br label %133

133:                                              ; preds = %92, %96, %131, %109, %99
  %134 = phi i32 [ %88, %99 ], [ 1, %109 ], [ 1, %131 ], [ %88, %96 ], [ %88, %92 ]
  %135 = phi i32 [ 1, %99 ], [ %111, %109 ], [ %111, %131 ], [ %87, %96 ], [ %87, %92 ]
  %136 = phi i32 [ %85, %99 ], [ %85, %109 ], [ %116, %131 ], [ %85, %96 ], [ %85, %92 ]
  %137 = add nsw i32 %86, %83
  %138 = icmp sgt i32 %137, -1
  br i1 %138, label %84, label %139, !llvm.loop !69

139:                                              ; preds = %133, %67, %72, %74, %41
  %140 = phi i32 [ %48, %41 ], [ %48, %74 ], [ %48, %72 ], [ %48, %67 ], [ %134, %133 ]
  %141 = phi i32 [ %47, %41 ], [ %47, %74 ], [ %47, %72 ], [ %47, %67 ], [ %135, %133 ]
  %142 = phi i32 [ %46, %41 ], [ %46, %74 ], [ %46, %72 ], [ %46, %67 ], [ %136, %133 ]
  %143 = phi i32 [ %45, %41 ], [ %59, %74 ], [ %59, %72 ], [ %59, %67 ], [ %59, %133 ]
  %144 = phi i32 [ %44, %41 ], [ %60, %74 ], [ %60, %72 ], [ %60, %67 ], [ %60, %133 ]
  %145 = phi i32 [ %43, %41 ], [ %61, %74 ], [ %61, %72 ], [ %61, %67 ], [ %61, %133 ]
  %146 = add nuw nsw i64 %42, 1
  %147 = icmp eq i64 %146, 8
  br i1 %147, label %148, label %41, !llvm.loop !70

148:                                              ; preds = %139
  %149 = add nsw i32 %37, -3
  %150 = icmp ult i32 %149, -2
  %151 = icmp eq i32 %140, 0
  %152 = select i1 %150, i1 %151, i1 false
  br i1 %152, label %36, label %153, !llvm.loop !71

153:                                              ; preds = %148
  %154 = icmp eq i32 %141, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %153
  store i32 0, ptr %32, align 4, !tbaa !65
  store i32 0, ptr %9, align 8, !tbaa !65
  store i32 0, ptr %33, align 8, !tbaa !65
  %156 = load ptr, ptr %34, align 8, !tbaa !67
  %157 = load i32, ptr %24, align 4, !tbaa !62
  %158 = load i32, ptr %27, align 4, !tbaa !64
  call fastcc void @buildPredRegionYUV(ptr noundef %156, ptr noundef nonnull %9, i32 noundef %157, i32 noundef %158, ptr noundef %1) #25
  %159 = load ptr, ptr %35, align 8, !tbaa !68
  %160 = tail call fastcc i32 @edgeDistortion(ptr noundef %4, i32 noundef %21, ptr noundef %1, ptr noundef %159, i32 noundef %5) #25
  %161 = icmp sge i32 %160, %142
  %162 = icmp ne i32 %140, 0
  %163 = select i1 %161, i1 %162, i1 false
  br i1 %163, label %165, label %164

164:                                              ; preds = %155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false), !tbaa !65
  store i8 0, ptr %14, align 4, !tbaa !66
  tail call fastcc void @copyPredMB(i32 noundef %21, ptr noundef %1, ptr noundef nonnull %0, i32 noundef %5) #25
  br label %165

165:                                              ; preds = %164, %155, %153
  %166 = mul nsw i64 %13, 24
  %167 = or disjoint i64 %166, 12
  %168 = getelementptr i8, ptr %3, i64 %167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %168, ptr noundef nonnull align 4 dereferenceable(12) %8, i64 12, i1 false), !tbaa !65
  %169 = sext i32 %21 to i64
  %170 = getelementptr inbounds i8, ptr %6, i64 %169
  store i8 2, ptr %170, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @concealByCopy(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #4 !PGOFuncName !72 {
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
  %16 = mul i32 %12, %15
  %17 = add i32 %16, %9
  %18 = shl i32 %17, 1
  tail call fastcc void @copyBetweenFrames(ptr noundef %0, i32 noundef %18, i32 noundef %3) #25
  ret void
}

; Function Attrs: optsize
declare void @ercMarkCurrMBConcealed(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @conceal_lost_frames(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16
  %5 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 16, i64 1
  %6 = load <2 x i32>, ptr %4, align 8, !tbaa !65
  store i32 0, ptr %5, align 4, !tbaa !65
  store i32 0, ptr %4, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 98
  %8 = load i32, ptr %7, align 4, !tbaa !75
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 94
  %12 = load i32, ptr %11, align 4, !tbaa !76
  %13 = sub nsw i32 0, %12
  %14 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 92
  store i32 %13, ptr %14, align 4, !tbaa !77
  %15 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 96
  store i32 0, ptr %15, align 4, !tbaa !78
  br label %23

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 40
  %18 = load i32, ptr %17, align 8, !tbaa !79
  %19 = add i32 %18, 1
  %20 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 52
  %21 = load i32, ptr %20, align 8, !tbaa !80
  %22 = urem i32 %19, %21
  br label %23

23:                                               ; preds = %16, %10
  %24 = phi i32 [ 0, %10 ], [ %22, %16 ]
  %25 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 35
  %26 = load i32, ptr %25, align 4, !tbaa !81
  %27 = icmp eq i32 %26, %24
  br i1 %27, label %77, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 23
  %30 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 24
  %31 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 25
  %32 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 26
  %33 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 92
  %34 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 93
  %35 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 19
  %36 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 151
  %37 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 40
  %38 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 52
  %39 = getelementptr %struct.slice, ptr %1, i64 0, i32 110
  %40 = getelementptr i8, ptr %1, i64 13344
  br label %41

41:                                               ; preds = %28, %71
  %42 = phi i32 [ %24, %28 ], [ %75, %71 ]
  %43 = load i32, ptr %29, align 4, !tbaa !84
  %44 = load i32, ptr %30, align 8, !tbaa !85
  %45 = load i32, ptr %31, align 4, !tbaa !86
  %46 = load i32, ptr %32, align 8, !tbaa !87
  %47 = tail call ptr @alloc_storable_picture(ptr noundef nonnull %3, i32 noundef 0, i32 noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %46) #24
  %48 = getelementptr inbounds %struct.storable_picture, ptr %47, i64 0, i32 24
  store i32 1, ptr %48, align 8, !tbaa !88
  %49 = getelementptr inbounds %struct.storable_picture, ptr %47, i64 0, i32 7
  store i32 %42, ptr %49, align 4, !tbaa !91
  %50 = getelementptr inbounds %struct.storable_picture, ptr %47, i64 0, i32 5
  store i32 %42, ptr %50, align 4, !tbaa !92
  %51 = getelementptr inbounds %struct.storable_picture, ptr %47, i64 0, i32 13
  store i32 0, ptr %51, align 4, !tbaa !93
  %52 = getelementptr inbounds %struct.storable_picture, ptr %47, i64 0, i32 12
  store i32 0, ptr %52, align 8, !tbaa !94
  %53 = getelementptr inbounds %struct.storable_picture, ptr %47, i64 0, i32 11
  store i32 1, ptr %53, align 4, !tbaa !95
  %54 = getelementptr inbounds %struct.storable_picture, ptr %47, i64 0, i32 59
  store i32 1, ptr %54, align 8, !tbaa !96
  %55 = getelementptr inbounds %struct.storable_picture, ptr %47, i64 0, i32 47
  store i32 0, ptr %55, align 8, !tbaa !97
  store i32 %42, ptr %25, align 4, !tbaa !81
  %56 = load i32, ptr %33, align 4, !tbaa !77
  %57 = load i32, ptr %34, align 8, !tbaa !98
  %58 = add nsw i32 %57, %56
  %59 = getelementptr inbounds %struct.storable_picture, ptr %47, i64 0, i32 1
  %60 = insertelement <4 x i32> poison, i32 %58, i64 0
  %61 = shufflevector <4 x i32> %60, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %61, ptr %59, align 4, !tbaa !65
  store i32 %58, ptr %33, align 4, !tbaa !77
  tail call fastcc void @copy_prev_pic_to_concealed_pic(ptr noundef %47, ptr noundef nonnull %0) #25
  %62 = load i32, ptr %7, align 4, !tbaa !75
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %71

64:                                               ; preds = %41
  %65 = getelementptr inbounds %struct.storable_picture, ptr %47, i64 0, i32 43
  store i32 2, ptr %65, align 8, !tbaa !99
  %66 = getelementptr inbounds %struct.storable_picture, ptr %47, i64 0, i32 44
  store i32 1, ptr %66, align 4, !tbaa !100
  %67 = load ptr, ptr %35, align 8, !tbaa !101
  %68 = load ptr, ptr %67, align 8, !tbaa !102
  %69 = getelementptr inbounds %struct.slice, ptr %68, i64 0, i32 66
  %70 = load i32, ptr %69, align 8, !tbaa !103
  tail call void @flush_dpb(ptr noundef nonnull %0, i32 noundef %70) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %59, i8 0, i64 16, i1 false)
  store i32 0, ptr %33, align 4, !tbaa !77
  br label %71

71:                                               ; preds = %64, %41
  %72 = load ptr, ptr %36, align 8, !tbaa !104
  tail call void @store_picture_in_dpb(ptr noundef %72, ptr noundef nonnull %47) #24
  store i32 %42, ptr %37, align 8, !tbaa !79
  %73 = load i32, ptr %38, align 8, !tbaa !80
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %40, ptr noundef nonnull align 4 dereferenceable(64) %39, i64 64, i1 false), !tbaa !65
  %74 = add nsw i32 %42, 1
  %75 = srem i32 %74, %73
  store i32 0, ptr %39, align 4, !tbaa !65
  %76 = icmp eq i32 %26, %75
  br i1 %76, label %77, label %41, !llvm.loop !105

77:                                               ; preds = %71, %23
  store <2 x i32> %6, ptr %4, align 8, !tbaa !65
  store i32 %26, ptr %25, align 4, !tbaa !81
  ret void
}

; Function Attrs: optsize
declare ptr @alloc_storable_picture(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_prev_pic_to_concealed_pic(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !106 {
  %3 = load ptr, ptr %1, align 8, !tbaa !73
  %4 = tail call fastcc ptr @get_last_ref_pic_from_dpb(ptr noundef nonnull %1) #25
  %5 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 99
  store i32 0, ptr %5, align 8, !tbaa !107
  tail call fastcc void @copy_to_conceal(ptr noundef %4, ptr noundef %0, ptr noundef %3) #25
  ret void
}

; Function Attrs: optsize
declare void @flush_dpb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @store_picture_in_dpb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @update_ref_list_for_concealment(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !108
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
  %13 = load ptr, ptr %7, align 8, !tbaa !109
  %14 = getelementptr inbounds ptr, ptr %13, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 11
  %17 = load i32, ptr %16, align 4, !tbaa !110
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = load ptr, ptr %8, align 8, !tbaa !112
  %21 = add i32 %12, 1
  %22 = zext i32 %12 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  store ptr %15, ptr %23, align 8, !tbaa !102
  br label %24

24:                                               ; preds = %10, %19
  %25 = phi i32 [ %21, %19 ], [ %12, %10 ]
  %26 = add nuw nsw i64 %11, 1
  %27 = icmp eq i64 %26, %9
  br i1 %27, label %28, label %10, !llvm.loop !113

28:                                               ; preds = %24, %1
  %29 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !114
  %31 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %30, i64 0, i32 21
  %32 = load i32, ptr %31, align 8, !tbaa !115
  %33 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  store i32 %32, ptr %33, align 8, !tbaa !117
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @init_lists_for_non_reference_loss(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = load ptr, ptr %0, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 18
  %8 = load i32, ptr %7, align 4, !tbaa !119
  %9 = add i32 %8, 4
  %10 = shl nsw i32 -1, %9
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %12, label %46

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !117
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %46, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !109
  %19 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 97
  %20 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 3
  %21 = zext i32 %14 to i64
  br label %22

22:                                               ; preds = %16, %43
  %23 = phi i64 [ 0, %16 ], [ %44, %43 ]
  %24 = getelementptr inbounds ptr, ptr %18, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !102
  %26 = getelementptr inbounds %struct.frame_store, ptr %25, i64 0, i32 11
  %27 = load i32, ptr %26, align 4, !tbaa !110
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.frame_store, ptr %25, i64 0, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !123
  %32 = load i32, ptr %19, align 8, !tbaa !124
  %33 = icmp ugt i32 %31, %32
  %34 = select i1 %33, i32 %10, i32 0
  %35 = add i32 %31, %34
  %36 = load ptr, ptr %20, align 8, !tbaa !112
  %37 = getelementptr inbounds ptr, ptr %36, i64 %23
  %38 = load ptr, ptr %37, align 8, !tbaa !102
  %39 = getelementptr inbounds %struct.frame_store, ptr %38, i64 0, i32 7
  store i32 %35, ptr %39, align 4, !tbaa !125
  %40 = getelementptr inbounds %struct.frame_store, ptr %38, i64 0, i32 12
  %41 = load ptr, ptr %40, align 8, !tbaa !126
  %42 = getelementptr inbounds %struct.storable_picture, ptr %41, i64 0, i32 7
  store i32 %35, ptr %42, align 4, !tbaa !91
  br label %43

43:                                               ; preds = %22, %29
  %44 = add nuw nsw i64 %23, 1
  %45 = icmp eq i64 %44, %21
  br i1 %45, label %46, label %22, !llvm.loop !127

46:                                               ; preds = %43, %12, %3
  %47 = or i32 %2, %1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %92

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %51 = load i32, ptr %50, align 4, !tbaa !108
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %80, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %55 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 19
  %56 = zext i32 %51 to i64
  br label %57

57:                                               ; preds = %53, %76
  %58 = phi i64 [ 0, %53 ], [ %78, %76 ]
  %59 = phi i32 [ 0, %53 ], [ %77, %76 ]
  %60 = load ptr, ptr %54, align 8, !tbaa !109
  %61 = getelementptr inbounds ptr, ptr %60, i64 %58
  %62 = load ptr, ptr %61, align 8, !tbaa !102
  %63 = getelementptr inbounds %struct.frame_store, ptr %62, i64 0, i32 11
  %64 = load i32, ptr %63, align 4, !tbaa !110
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %76

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.frame_store, ptr %62, i64 0, i32 12
  %68 = load ptr, ptr %67, align 8, !tbaa !126
  %69 = load ptr, ptr %55, align 8, !tbaa !101
  %70 = load ptr, ptr %69, align 8, !tbaa !102
  %71 = getelementptr inbounds %struct.slice, ptr %70, i64 0, i32 56
  %72 = load ptr, ptr %71, align 8, !tbaa !102
  %73 = add nsw i32 %59, 1
  %74 = sext i32 %59 to i64
  %75 = getelementptr inbounds ptr, ptr %72, i64 %74
  store ptr %68, ptr %75, align 8, !tbaa !102
  br label %76

76:                                               ; preds = %57, %66
  %77 = phi i32 [ %73, %66 ], [ %59, %57 ]
  %78 = add nuw nsw i64 %58, 1
  %79 = icmp eq i64 %78, %56
  br i1 %79, label %80, label %57, !llvm.loop !128

80:                                               ; preds = %76, %49
  %81 = phi i32 [ 0, %49 ], [ %77, %76 ]
  %82 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 19
  %83 = load ptr, ptr %82, align 8, !tbaa !101
  %84 = load ptr, ptr %83, align 8, !tbaa !102
  %85 = getelementptr inbounds %struct.slice, ptr %84, i64 0, i32 56
  %86 = load ptr, ptr %85, align 8, !tbaa !102
  %87 = sext i32 %81 to i64
  tail call void @qsort(ptr noundef %86, i64 noundef %87, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #24
  %88 = trunc i32 %81 to i8
  %89 = load ptr, ptr %82, align 8, !tbaa !101
  %90 = load ptr, ptr %89, align 8, !tbaa !102
  %91 = getelementptr inbounds %struct.slice, ptr %90, i64 0, i32 55
  store i8 %88, ptr %91, align 8, !tbaa !52
  br label %92

92:                                               ; preds = %80, %46
  %93 = phi i32 [ %81, %80 ], [ 0, %46 ]
  %94 = icmp eq i32 %1, 1
  %95 = and i1 %94, %11
  br i1 %95, label %96, label %255

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %98 = load i32, ptr %97, align 4, !tbaa !108
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %133, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %102 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 96
  %103 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 19
  %104 = zext i32 %98 to i64
  br label %105

105:                                              ; preds = %100, %129
  %106 = phi i64 [ 0, %100 ], [ %131, %129 ]
  %107 = phi i32 [ %93, %100 ], [ %130, %129 ]
  %108 = load ptr, ptr %101, align 8, !tbaa !109
  %109 = getelementptr inbounds ptr, ptr %108, i64 %106
  %110 = load ptr, ptr %109, align 8, !tbaa !102
  %111 = getelementptr inbounds %struct.frame_store, ptr %110, i64 0, i32 11
  %112 = load i32, ptr %111, align 4, !tbaa !110
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %129

114:                                              ; preds = %105
  %115 = load i32, ptr %102, align 4, !tbaa !78
  %116 = getelementptr inbounds %struct.frame_store, ptr %110, i64 0, i32 12
  %117 = load ptr, ptr %116, align 8, !tbaa !126
  %118 = getelementptr inbounds %struct.storable_picture, ptr %117, i64 0, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !129
  %120 = icmp sgt i32 %115, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %114
  %122 = load ptr, ptr %103, align 8, !tbaa !101
  %123 = load ptr, ptr %122, align 8, !tbaa !102
  %124 = getelementptr inbounds %struct.slice, ptr %123, i64 0, i32 56
  %125 = load ptr, ptr %124, align 8, !tbaa !102
  %126 = add nsw i32 %107, 1
  %127 = sext i32 %107 to i64
  %128 = getelementptr inbounds ptr, ptr %125, i64 %127
  store ptr %117, ptr %128, align 8, !tbaa !102
  br label %129

129:                                              ; preds = %105, %121, %114
  %130 = phi i32 [ %126, %121 ], [ %107, %114 ], [ %107, %105 ]
  %131 = add nuw nsw i64 %106, 1
  %132 = icmp eq i64 %131, %104
  br i1 %132, label %133, label %105, !llvm.loop !130

133:                                              ; preds = %129, %96
  %134 = phi i32 [ %93, %96 ], [ %130, %129 ]
  %135 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 19
  %136 = load ptr, ptr %135, align 8, !tbaa !101
  %137 = load ptr, ptr %136, align 8, !tbaa !102
  %138 = getelementptr inbounds %struct.slice, ptr %137, i64 0, i32 56
  %139 = load ptr, ptr %138, align 8, !tbaa !102
  %140 = sext i32 %134 to i64
  tail call void @qsort(ptr noundef %139, i64 noundef %140, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_desc) #24
  %141 = load i32, ptr %97, align 4, !tbaa !108
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %175, label %143

143:                                              ; preds = %133
  %144 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %145 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 96
  %146 = zext i32 %141 to i64
  br label %147

147:                                              ; preds = %143, %171
  %148 = phi i64 [ 0, %143 ], [ %173, %171 ]
  %149 = phi i32 [ %134, %143 ], [ %172, %171 ]
  %150 = load ptr, ptr %144, align 8, !tbaa !109
  %151 = getelementptr inbounds ptr, ptr %150, i64 %148
  %152 = load ptr, ptr %151, align 8, !tbaa !102
  %153 = getelementptr inbounds %struct.frame_store, ptr %152, i64 0, i32 11
  %154 = load i32, ptr %153, align 4, !tbaa !110
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %171

156:                                              ; preds = %147
  %157 = load i32, ptr %145, align 4, !tbaa !78
  %158 = getelementptr inbounds %struct.frame_store, ptr %152, i64 0, i32 12
  %159 = load ptr, ptr %158, align 8, !tbaa !126
  %160 = getelementptr inbounds %struct.storable_picture, ptr %159, i64 0, i32 1
  %161 = load i32, ptr %160, align 4, !tbaa !129
  %162 = icmp slt i32 %157, %161
  br i1 %162, label %163, label %171

163:                                              ; preds = %156
  %164 = load ptr, ptr %135, align 8, !tbaa !101
  %165 = load ptr, ptr %164, align 8, !tbaa !102
  %166 = getelementptr inbounds %struct.slice, ptr %165, i64 0, i32 56
  %167 = load ptr, ptr %166, align 8, !tbaa !102
  %168 = add nsw i32 %149, 1
  %169 = sext i32 %149 to i64
  %170 = getelementptr inbounds ptr, ptr %167, i64 %169
  store ptr %159, ptr %170, align 8, !tbaa !102
  br label %171

171:                                              ; preds = %147, %163, %156
  %172 = phi i32 [ %168, %163 ], [ %149, %156 ], [ %149, %147 ]
  %173 = add nuw nsw i64 %148, 1
  %174 = icmp eq i64 %173, %146
  br i1 %174, label %175, label %147, !llvm.loop !131

175:                                              ; preds = %171, %133
  %176 = phi i32 [ %134, %133 ], [ %172, %171 ]
  %177 = load ptr, ptr %135, align 8, !tbaa !101
  %178 = load ptr, ptr %177, align 8, !tbaa !102
  %179 = getelementptr inbounds %struct.slice, ptr %178, i64 0, i32 56
  %180 = load ptr, ptr %179, align 8, !tbaa !102
  %181 = getelementptr inbounds ptr, ptr %180, i64 %140
  %182 = sub nsw i32 %176, %134
  %183 = sext i32 %182 to i64
  tail call void @qsort(ptr noundef %181, i64 noundef %183, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_asc) #24
  %184 = icmp sgt i32 %134, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %175
  %186 = zext nneg i32 %134 to i64
  br label %191

187:                                              ; preds = %191, %175
  %188 = icmp slt i32 %134, %176
  br i1 %188, label %189, label %219

189:                                              ; preds = %187
  %190 = sext i32 %176 to i64
  br label %205

191:                                              ; preds = %185, %191
  %192 = phi i64 [ 0, %185 ], [ %203, %191 ]
  %193 = load ptr, ptr %135, align 8, !tbaa !101
  %194 = load ptr, ptr %193, align 8, !tbaa !102
  %195 = getelementptr inbounds %struct.slice, ptr %194, i64 0, i32 56
  %196 = load ptr, ptr %195, align 8, !tbaa !102
  %197 = getelementptr inbounds ptr, ptr %196, i64 %192
  %198 = load ptr, ptr %197, align 8, !tbaa !102
  %199 = getelementptr inbounds %struct.slice, ptr %194, i64 0, i32 56, i64 1
  %200 = load ptr, ptr %199, align 8, !tbaa !102
  %201 = getelementptr ptr, ptr %200, i64 %192
  %202 = getelementptr ptr, ptr %201, i64 %183
  store ptr %198, ptr %202, align 8, !tbaa !102
  %203 = add nuw nsw i64 %192, 1
  %204 = icmp eq i64 %203, %186
  br i1 %204, label %187, label %191, !llvm.loop !132

205:                                              ; preds = %189, %205
  %206 = phi i64 [ %140, %189 ], [ %217, %205 ]
  %207 = load ptr, ptr %135, align 8, !tbaa !101
  %208 = load ptr, ptr %207, align 8, !tbaa !102
  %209 = getelementptr inbounds %struct.slice, ptr %208, i64 0, i32 56
  %210 = load ptr, ptr %209, align 8, !tbaa !102
  %211 = getelementptr inbounds ptr, ptr %210, i64 %206
  %212 = load ptr, ptr %211, align 8, !tbaa !102
  %213 = getelementptr inbounds %struct.slice, ptr %208, i64 0, i32 56, i64 1
  %214 = load ptr, ptr %213, align 8, !tbaa !102
  %215 = sub nsw i64 %206, %140
  %216 = getelementptr inbounds ptr, ptr %214, i64 %215
  store ptr %212, ptr %216, align 8, !tbaa !102
  %217 = add nsw i64 %206, 1
  %218 = icmp eq i64 %217, %190
  br i1 %218, label %219, label %205, !llvm.loop !133

219:                                              ; preds = %205, %187
  %220 = trunc i32 %176 to i8
  %221 = load ptr, ptr %135, align 8, !tbaa !101
  %222 = load ptr, ptr %221, align 8, !tbaa !102
  %223 = getelementptr inbounds %struct.slice, ptr %222, i64 0, i32 55, i64 1
  store i8 %220, ptr %223, align 1, !tbaa !52
  %224 = load ptr, ptr %135, align 8, !tbaa !101
  %225 = load ptr, ptr %224, align 8, !tbaa !102
  %226 = getelementptr inbounds %struct.slice, ptr %225, i64 0, i32 55
  store i8 %220, ptr %226, align 8, !tbaa !52
  %227 = load ptr, ptr %135, align 8, !tbaa !101
  %228 = load ptr, ptr %227, align 8, !tbaa !102
  %229 = getelementptr inbounds %struct.slice, ptr %228, i64 0, i32 56
  %230 = load ptr, ptr %229, align 8, !tbaa !102
  %231 = getelementptr inbounds %struct.slice, ptr %228, i64 0, i32 55
  %232 = load i8, ptr %231, align 8, !tbaa !52
  %233 = sext i8 %232 to i64
  %234 = getelementptr inbounds ptr, ptr %230, i64 %233
  %235 = sext i8 %232 to i32
  %236 = sub nsw i32 %176, %235
  %237 = sext i32 %236 to i64
  tail call void @qsort(ptr noundef %234, i64 noundef %237, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #24
  %238 = load ptr, ptr %135, align 8, !tbaa !101
  %239 = load ptr, ptr %238, align 8, !tbaa !102
  %240 = getelementptr inbounds %struct.slice, ptr %239, i64 0, i32 56, i64 1
  %241 = load ptr, ptr %240, align 8, !tbaa !102
  %242 = getelementptr inbounds %struct.slice, ptr %239, i64 0, i32 55
  %243 = load i8, ptr %242, align 8, !tbaa !52
  %244 = sext i8 %243 to i64
  %245 = getelementptr inbounds ptr, ptr %241, i64 %244
  %246 = sext i8 %243 to i32
  %247 = sub nsw i32 %176, %246
  %248 = sext i32 %247 to i64
  tail call void @qsort(ptr noundef %245, i64 noundef %248, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #24
  %249 = load ptr, ptr %135, align 8, !tbaa !101
  %250 = load ptr, ptr %249, align 8, !tbaa !102
  %251 = getelementptr inbounds %struct.slice, ptr %250, i64 0, i32 55, i64 1
  store i8 %220, ptr %251, align 1, !tbaa !52
  %252 = load ptr, ptr %135, align 8, !tbaa !101
  %253 = load ptr, ptr %252, align 8, !tbaa !102
  %254 = getelementptr inbounds %struct.slice, ptr %253, i64 0, i32 55
  store i8 %220, ptr %254, align 8, !tbaa !52
  br label %255

255:                                              ; preds = %219, %92
  %256 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 19
  %257 = load ptr, ptr %256, align 8, !tbaa !101
  %258 = load ptr, ptr %257, align 8, !tbaa !102
  %259 = getelementptr inbounds %struct.slice, ptr %258, i64 0, i32 55
  %260 = load i8, ptr %259, align 8, !tbaa !52
  %261 = getelementptr inbounds %struct.slice, ptr %258, i64 0, i32 55, i64 1
  %262 = load i8, ptr %261, align 1, !tbaa !52
  %263 = icmp eq i8 %260, %262
  %264 = icmp sgt i8 %260, 1
  %265 = and i1 %264, %263
  br i1 %265, label %266, label %298

266:                                              ; preds = %255
  %267 = zext nneg i8 %260 to i64
  %268 = getelementptr inbounds %struct.slice, ptr %258, i64 0, i32 56
  %269 = load ptr, ptr %268, align 8, !tbaa !102
  %270 = getelementptr inbounds %struct.slice, ptr %258, i64 0, i32 56, i64 1
  %271 = load ptr, ptr %270, align 8, !tbaa !102
  br label %272

272:                                              ; preds = %266, %272
  %273 = phi i64 [ 0, %266 ], [ %281, %272 ]
  %274 = phi i32 [ 0, %266 ], [ %280, %272 ]
  %275 = getelementptr inbounds ptr, ptr %269, i64 %273
  %276 = load ptr, ptr %275, align 8, !tbaa !102
  %277 = getelementptr inbounds ptr, ptr %271, i64 %273
  %278 = load ptr, ptr %277, align 8, !tbaa !102
  %279 = icmp eq ptr %276, %278
  %280 = select i1 %279, i32 %274, i32 1
  %281 = add nuw nsw i64 %273, 1
  %282 = icmp eq i64 %281, %267
  br i1 %282, label %283, label %272, !llvm.loop !134

283:                                              ; preds = %272
  %284 = icmp eq i32 %280, 0
  br i1 %284, label %285, label %298

285:                                              ; preds = %283
  %286 = load ptr, ptr %271, align 8, !tbaa !102
  %287 = getelementptr inbounds ptr, ptr %271, i64 1
  %288 = load ptr, ptr %287, align 8, !tbaa !102
  store ptr %288, ptr %271, align 8, !tbaa !102
  %289 = load ptr, ptr %256, align 8, !tbaa !101
  %290 = load ptr, ptr %289, align 8, !tbaa !102
  %291 = getelementptr inbounds %struct.slice, ptr %290, i64 0, i32 56, i64 1
  %292 = load ptr, ptr %291, align 8, !tbaa !102
  %293 = getelementptr inbounds ptr, ptr %292, i64 1
  store ptr %286, ptr %293, align 8, !tbaa !102
  %294 = load ptr, ptr %256, align 8, !tbaa !101
  %295 = load ptr, ptr %294, align 8, !tbaa !102
  %296 = getelementptr inbounds %struct.slice, ptr %295, i64 0, i32 55
  %297 = load i8, ptr %296, align 8, !tbaa !52
  br label %298

298:                                              ; preds = %283, %285, %255
  %299 = phi i8 [ %260, %283 ], [ %297, %285 ], [ %260, %255 ]
  %300 = phi ptr [ %258, %283 ], [ %295, %285 ], [ %258, %255 ]
  %301 = getelementptr inbounds %struct.slice, ptr %300, i64 0, i32 55
  %302 = sext i8 %299 to i32
  %303 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 26
  %304 = load i32, ptr %303, align 4, !tbaa !135
  %305 = tail call fastcc i32 @imin(i32 noundef %302, i32 noundef %304) #25
  %306 = trunc i32 %305 to i8
  store i8 %306, ptr %301, align 8, !tbaa !52
  %307 = load ptr, ptr %256, align 8, !tbaa !101
  %308 = load ptr, ptr %307, align 8, !tbaa !102
  %309 = getelementptr inbounds %struct.slice, ptr %308, i64 0, i32 55, i64 1
  %310 = load i8, ptr %309, align 1, !tbaa !52
  %311 = sext i8 %310 to i32
  %312 = load i32, ptr %303, align 4, !tbaa !135
  %313 = tail call fastcc i32 @imin(i32 noundef %311, i32 noundef %312) #25
  %314 = trunc i32 %313 to i8
  store i8 %314, ptr %309, align 1, !tbaa !52
  %315 = load ptr, ptr %256, align 8, !tbaa !101
  %316 = load ptr, ptr %315, align 8, !tbaa !102
  %317 = getelementptr inbounds %struct.slice, ptr %316, i64 0, i32 55, i64 1
  store i8 0, ptr %317, align 1, !tbaa !52
  %318 = load ptr, ptr %256, align 8, !tbaa !101
  %319 = load ptr, ptr %318, align 8, !tbaa !102
  %320 = getelementptr inbounds %struct.slice, ptr %319, i64 0, i32 55
  %321 = load i8, ptr %320, align 8, !tbaa !52
  %322 = icmp ult i8 %321, 33
  br i1 %322, label %323, label %338

323:                                              ; preds = %298
  %324 = zext nneg i8 %321 to i64
  br label %325

325:                                              ; preds = %323, %325
  %326 = phi i64 [ %324, %323 ], [ %332, %325 ]
  %327 = load ptr, ptr %256, align 8, !tbaa !101
  %328 = load ptr, ptr %327, align 8, !tbaa !102
  %329 = getelementptr inbounds %struct.slice, ptr %328, i64 0, i32 56
  %330 = load ptr, ptr %329, align 8, !tbaa !102
  %331 = getelementptr inbounds ptr, ptr %330, i64 %326
  store ptr null, ptr %331, align 8, !tbaa !102
  %332 = add nuw nsw i64 %326, 1
  %333 = and i64 %332, 4294967295
  %334 = icmp eq i64 %333, 33
  br i1 %334, label %335, label %325, !llvm.loop !136

335:                                              ; preds = %325
  %336 = load ptr, ptr %256, align 8, !tbaa !101
  %337 = load ptr, ptr %336, align 8, !tbaa !102
  br label %338

338:                                              ; preds = %335, %298
  %339 = phi ptr [ %337, %335 ], [ %319, %298 ]
  %340 = getelementptr inbounds %struct.slice, ptr %339, i64 0, i32 55, i64 1
  %341 = load i8, ptr %340, align 1, !tbaa !52
  %342 = icmp ult i8 %341, 33
  br i1 %342, label %343, label %355

343:                                              ; preds = %338
  %344 = zext nneg i8 %341 to i64
  br label %345

345:                                              ; preds = %343, %345
  %346 = phi i64 [ %344, %343 ], [ %352, %345 ]
  %347 = load ptr, ptr %256, align 8, !tbaa !101
  %348 = load ptr, ptr %347, align 8, !tbaa !102
  %349 = getelementptr inbounds %struct.slice, ptr %348, i64 0, i32 56, i64 1
  %350 = load ptr, ptr %349, align 8, !tbaa !102
  %351 = getelementptr inbounds ptr, ptr %350, i64 %346
  store ptr null, ptr %351, align 8, !tbaa !102
  %352 = add nuw nsw i64 %346, 1
  %353 = and i64 %352, 4294967295
  %354 = icmp eq i64 %353, 33
  br i1 %354, label %355, label %345, !llvm.loop !137

355:                                              ; preds = %345, %338
  ret void
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_pic_num_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 !PGOFuncName !138 {
  %3 = load ptr, ptr %0, align 8, !tbaa !102
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !91
  %6 = load ptr, ptr %1, align 8, !tbaa !102
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !91
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_poc_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 !PGOFuncName !139 {
  %3 = load ptr, ptr %0, align 8, !tbaa !102
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !129
  %6 = load ptr, ptr %1, align 8, !tbaa !102
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !129
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_poc_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 !PGOFuncName !140 {
  %3 = load ptr, ptr %0, align 8, !tbaa !102
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !129
  %6 = load ptr, ptr %1, align 8, !tbaa !102
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !129
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_lt_pic_num_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #8 !PGOFuncName !141 {
  %3 = load ptr, ptr %0, align 8, !tbaa !102
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !142
  %6 = load ptr, ptr %1, align 8, !tbaa !102
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !142
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #9 !PGOFuncName !143 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @get_pic_from_dpb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 {
  %4 = load ptr, ptr %0, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !108
  %7 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 95
  %8 = load i32, ptr %7, align 8, !tbaa !144
  switch i32 %8, label %17 [
    i32 1, label %9
    i32 2, label %13
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 94
  %11 = load i32, ptr %10, align 4, !tbaa !76
  %12 = sub nsw i32 %1, %11
  br label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 94
  %15 = load i32, ptr %14, align 4, !tbaa !76
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
  %27 = load ptr, ptr %19, align 8, !tbaa !109
  %28 = and i64 %23, 4294967295
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !102
  %31 = getelementptr inbounds %struct.frame_store, ptr %30, i64 0, i32 10
  %32 = load i32, ptr %31, align 8, !tbaa !145
  %33 = icmp eq i32 %32, %18
  br i1 %33, label %34, label %21, !llvm.loop !146

34:                                               ; preds = %26
  store i32 %24, ptr %2, align 4, !tbaa !65
  %35 = getelementptr inbounds %struct.frame_store, ptr %30, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !126
  br label %37

37:                                               ; preds = %21, %34
  %38 = phi ptr [ %36, %34 ], [ null, %21 ]
  ret ptr %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @comp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = load i32, ptr %0, align 4, !tbaa !65
  %4 = load i32, ptr %1, align 4, !tbaa !65
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @init_node(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #26
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !147
  %6 = getelementptr inbounds %struct.concealment_node, ptr %3, i64 0, i32 1
  store i32 %1, ptr %6, align 8, !tbaa !149
  br label %7

7:                                                ; preds = %2, %5
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_node(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.concealment_node, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !149
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %3) #25
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_list(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  tail call void @print_node(ptr noundef nonnull %4) #25
  %5 = getelementptr inbounds %struct.concealment_node, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !150
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !151

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_list(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 38
  %4 = load ptr, ptr %3, align 8, !tbaa !152
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
  %12 = load ptr, ptr %11, align 8, !tbaa !150
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %9, !llvm.loop !153

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 39
  store ptr %10, ptr %15, align 8, !tbaa !154
  br label %16

16:                                               ; preds = %14, %8
  %17 = icmp eq ptr %1, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %21, %18 ], [ %1, %16 ]
  %20 = getelementptr inbounds %struct.concealment_node, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !150
  tail call void @free(ptr noundef nonnull %19) #24
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !llvm.loop !155

23:                                               ; preds = %18, %16, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @conceal_non_ref_pics(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  store i32 0, ptr %3, align 4, !tbaa !65
  %5 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !108
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %63, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 135
  %10 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !156
  %12 = zext i32 %11 to i64
  tail call void @qsort(ptr noundef nonnull %9, i64 noundef %12, i64 noundef 4, ptr noundef nonnull @comp) #24
  %13 = load i32, ptr %10, align 8, !tbaa !156
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %62, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 94
  %17 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 23
  %18 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 24
  %19 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 25
  %20 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 26
  %21 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 96
  %22 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 97
  %23 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 99
  br label %24

24:                                               ; preds = %15, %57
  %25 = phi i64 [ 0, %15 ], [ %27, %57 ]
  %26 = phi i32 [ %13, %15 ], [ %58, %57 ]
  store i32 %26, ptr %5, align 4, !tbaa !108
  %27 = add nuw nsw i64 %25, 1
  %28 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 135, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !65
  %30 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 135, i64 %25
  %31 = load i32, ptr %30, align 4, !tbaa !65
  %32 = sub nsw i32 %29, %31
  %33 = load i32, ptr %16, align 4, !tbaa !76
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %24
  %36 = load i32, ptr %17, align 4, !tbaa !84
  %37 = load i32, ptr %18, align 8, !tbaa !85
  %38 = load i32, ptr %19, align 4, !tbaa !86
  %39 = load i32, ptr %20, align 8, !tbaa !87
  %40 = tail call ptr @alloc_storable_picture(ptr noundef nonnull %4, i32 noundef 0, i32 noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %39) #24
  %41 = load i32, ptr %30, align 4, !tbaa !65
  %42 = load i32, ptr %16, align 4, !tbaa !76
  %43 = add nsw i32 %42, %41
  %44 = load i32, ptr %21, align 4, !tbaa !78
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %35
  store i32 %43, ptr %21, align 4, !tbaa !78
  %47 = getelementptr inbounds %struct.storable_picture, ptr %40, i64 0, i32 1
  %48 = insertelement <4 x i32> poison, i32 %43, i64 0
  %49 = shufflevector <4 x i32> %48, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %49, ptr %47, align 4, !tbaa !65
  %50 = call ptr @get_pic_from_dpb(ptr noundef nonnull %0, i32 noundef %43, ptr noundef nonnull %3) #25
  %51 = load i32, ptr %3, align 4, !tbaa !65
  %52 = add i32 %51, 1
  store i32 %52, ptr %5, align 4, !tbaa !108
  %53 = getelementptr inbounds %struct.storable_picture, ptr %50, i64 0, i32 5
  %54 = load i32, ptr %53, align 4, !tbaa !92
  %55 = add i32 %54, 1
  store i32 %55, ptr %22, align 8, !tbaa !124
  tail call void @update_ref_list_for_concealment(ptr noundef nonnull %0) #25
  store i32 1, ptr %23, align 8, !tbaa !107
  tail call fastcc void @copy_to_conceal(ptr noundef %50, ptr noundef %40, ptr noundef nonnull %4) #25
  %56 = tail call ptr @init_node(ptr noundef %40, i32 noundef %43) #25
  tail call fastcc void @add_node(ptr noundef nonnull %4, ptr noundef %56) #25
  br label %57

57:                                               ; preds = %24, %46, %35
  %58 = load i32, ptr %10, align 8, !tbaa !156
  %59 = sub i32 %58, %1
  %60 = zext i32 %59 to i64
  %61 = icmp ult i64 %27, %60
  br i1 %61, label %24, label %62, !llvm.loop !157

62:                                               ; preds = %57, %8
  store i32 %6, ptr %5, align 4, !tbaa !108
  br label %63

63:                                               ; preds = %2, %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_to_conceal(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !158 {
  %4 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 27
  %6 = load i32, ptr %5, align 4, !tbaa !159
  %7 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 27
  store i32 %6, ptr %7, align 4, !tbaa !159
  %8 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 99
  %9 = load i32, ptr %8, align 8, !tbaa !107
  %10 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 43
  store i32 %9, ptr %10, align 8, !tbaa !99
  %11 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 43
  store i32 %9, ptr %11, align 8, !tbaa !99
  %12 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 44
  store i32 0, ptr %12, align 4, !tbaa !100
  %13 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 45
  %14 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 45
  %15 = load <2 x i32>, ptr %13, align 8, !tbaa !65
  store <2 x i32> %15, ptr %14, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 47
  store i32 0, ptr %16, align 8, !tbaa !97
  %17 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 47
  store i32 0, ptr %17, align 8, !tbaa !97
  %18 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 48
  %19 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 48
  %20 = load <4 x i32>, ptr %18, align 4, !tbaa !65
  store <4 x i32> %20, ptr %19, align 4, !tbaa !65
  %21 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 52
  %22 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 52
  %23 = load <4 x i32>, ptr %21, align 4, !tbaa !65
  store <4 x i32> %23, ptr %22, align 4, !tbaa !65
  %24 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 57
  %25 = load i32, ptr %24, align 4, !tbaa !160
  %26 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 57
  store i32 %25, ptr %26, align 4, !tbaa !160
  %27 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 95
  %28 = load i32, ptr %27, align 8, !tbaa !144
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %51

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 26
  %32 = load i32, ptr %31, align 8, !tbaa !161
  %33 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 26
  store i32 %32, ptr %33, align 8, !tbaa !161
  %34 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 32
  %35 = load ptr, ptr %34, align 8, !tbaa !162
  %36 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 33
  %37 = load ptr, ptr %36, align 8, !tbaa !163
  %38 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %39 = load ptr, ptr %38, align 8, !tbaa !162
  %40 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %41 = load ptr, ptr %40, align 8, !tbaa !163
  %42 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 23
  %43 = load i32, ptr %42, align 4, !tbaa !84
  %44 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 24
  %45 = load i32, ptr %44, align 8, !tbaa !85
  %46 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 25
  %47 = load i32, ptr %46, align 4, !tbaa !86
  %48 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 26
  %49 = load i32, ptr %48, align 8, !tbaa !87
  tail call fastcc void @CopyImgData(ptr noundef %35, ptr noundef %37, ptr noundef %39, ptr noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49) #25
  %50 = load i32, ptr %27, align 8, !tbaa !144
  br label %51

51:                                               ; preds = %30, %3
  %52 = phi i32 [ %50, %30 ], [ %28, %3 ]
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %204

54:                                               ; preds = %51
  %55 = load i32, ptr %18, align 4, !tbaa !164
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 77
  %59 = load i32, ptr %58, align 4, !tbaa !43
  %60 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 78
  %61 = load i32, ptr %60, align 8, !tbaa !50
  %62 = mul nsw i32 %61, %59
  %63 = sdiv i32 %62, 8
  %64 = add nsw i32 %63, 16
  %65 = sext i32 %64 to i64
  %66 = shl nsw i64 %65, 1
  %67 = tail call noalias ptr @malloc(i64 noundef %66) #23
  br label %70

68:                                               ; preds = %54
  %69 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #23
  br label %70

70:                                               ; preds = %68, %57
  %71 = phi ptr [ %67, %57 ], [ %69, %68 ]
  %72 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 142
  store ptr %2, ptr %72, align 8, !tbaa !67
  %73 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 26
  %74 = load i32, ptr %73, align 8, !tbaa !161
  %75 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 26
  store i32 %74, ptr %75, align 8, !tbaa !161
  %76 = load i32, ptr %5, align 4, !tbaa !159
  store i32 %76, ptr %7, align 4, !tbaa !159
  %77 = udiv i32 %76, %74
  %78 = load i32, ptr %8, align 8, !tbaa !107
  %79 = icmp eq i32 %78, 1
  %80 = select i1 %79, i32 2, i32 1
  br i1 %79, label %81, label %90

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 151
  %83 = load ptr, ptr %82, align 8, !tbaa !104
  %84 = load i32, ptr %11, align 8, !tbaa !99
  %85 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 19
  %86 = load ptr, ptr %85, align 8, !tbaa !101
  %87 = load ptr, ptr %86, align 8, !tbaa !102
  %88 = getelementptr inbounds %struct.slice, ptr %87, i64 0, i32 38
  %89 = load i32, ptr %88, align 8, !tbaa !165
  tail call void @init_lists_for_non_reference_loss(ptr noundef %83, i32 noundef %84, i32 noundef %89) #25
  br label %94

90:                                               ; preds = %70
  %91 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 19
  %92 = load ptr, ptr %91, align 8, !tbaa !101
  %93 = load ptr, ptr %92, align 8, !tbaa !102
  tail call void @init_lists(ptr noundef %93) #24
  br label %94

94:                                               ; preds = %90, %81
  %95 = icmp sgt i32 %77, 0
  br i1 %95, label %96, label %203

96:                                               ; preds = %94
  %97 = shl nsw i32 %77, 2
  %98 = shl i32 %74, 2
  %99 = icmp sgt i32 %74, 0
  %100 = getelementptr inbounds %struct.storable_picture, ptr %0, i64 0, i32 35
  %101 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 1
  %102 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 2
  %103 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 35
  %104 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 32
  %105 = getelementptr inbounds i16, ptr %71, i64 16
  %106 = getelementptr inbounds %struct.storable_picture, ptr %1, i64 0, i32 33
  %107 = tail call i32 @llvm.smax.i32(i32 %98, i32 1)
  %108 = zext nneg i32 %97 to i64
  %109 = zext nneg i32 %107 to i64
  br label %110

110:                                              ; preds = %96, %199
  %111 = phi i64 [ 0, %96 ], [ %201, %199 ]
  %112 = phi i32 [ 0, %96 ], [ %200, %199 ]
  %113 = trunc i64 %111 to i32
  %114 = shl nsw i32 %113, 2
  br i1 %99, label %115, label %199

115:                                              ; preds = %110
  %116 = shl nuw nsw i64 %111, 1
  br label %117

117:                                              ; preds = %115, %196
  %118 = phi i64 [ 0, %115 ], [ %197, %196 ]
  %119 = phi i32 [ %112, %115 ], [ %151, %196 ]
  %120 = trunc i64 %118 to i32
  %121 = shl i32 %120, 2
  %122 = zext i32 %121 to i64
  %123 = shl nuw nsw i64 %122, 1
  %124 = load ptr, ptr %100, align 8, !tbaa !166
  %125 = getelementptr inbounds ptr, ptr %124, i64 %111
  %126 = load ptr, ptr %125, align 8, !tbaa !102
  %127 = getelementptr inbounds %struct.pic_motion_params, ptr %126, i64 %118, i32 1
  %128 = load i16, ptr %127, align 8, !tbaa !167
  %129 = sext i16 %128 to i32
  %130 = sdiv i32 %129, %80
  store i32 %130, ptr %4, align 4, !tbaa !65
  %131 = getelementptr inbounds %struct.pic_motion_params, ptr %126, i64 %118, i32 1, i64 0, i32 1
  %132 = load i16, ptr %131, align 2, !tbaa !169
  %133 = sext i16 %132 to i32
  %134 = sdiv i32 %133, %80
  store i32 %134, ptr %101, align 4, !tbaa !65
  %135 = getelementptr inbounds %struct.pic_motion_params, ptr %126, i64 %118, i32 2
  %136 = load i8, ptr %135, align 8, !tbaa !52
  %137 = tail call i8 @llvm.smax.i8(i8 %136, i8 0)
  %138 = zext nneg i8 %137 to i32
  store i32 %138, ptr %102, align 4, !tbaa !65
  %139 = trunc i32 %130 to i16
  %140 = load ptr, ptr %103, align 8, !tbaa !166
  %141 = getelementptr inbounds ptr, ptr %140, i64 %111
  %142 = load ptr, ptr %141, align 8, !tbaa !102
  %143 = getelementptr inbounds %struct.pic_motion_params, ptr %142, i64 %118, i32 1
  store i16 %139, ptr %143, align 8, !tbaa !167
  %144 = trunc i32 %134 to i16
  %145 = getelementptr inbounds %struct.pic_motion_params, ptr %142, i64 %118, i32 1, i64 0, i32 1
  store i16 %144, ptr %145, align 2, !tbaa !169
  %146 = getelementptr inbounds %struct.pic_motion_params, ptr %142, i64 %118, i32 2
  store i8 %137, ptr %146, align 8, !tbaa !52
  %147 = or i32 %120, %113
  %148 = and i32 %147, 3
  %149 = icmp eq i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = add nsw i32 %119, %150
  %152 = load ptr, ptr %72, align 8, !tbaa !67
  call fastcc void @buildPredblockRegionYUV(ptr noundef %152, ptr noundef nonnull %4, i32 noundef %121, i32 noundef %114, ptr noundef %71, i32 noundef %151) #25
  %153 = load ptr, ptr %104, align 8, !tbaa !162
  br label %154

154:                                              ; preds = %117, %154
  %155 = phi i64 [ 0, %117 ], [ %165, %154 ]
  %156 = shl nuw nsw i64 %155, 3
  %157 = getelementptr i8, ptr %71, i64 %156
  %158 = trunc i64 %155 to i32
  %159 = or disjoint i32 %114, %158
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds ptr, ptr %153, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !102
  %163 = getelementptr i8, ptr %162, i64 %123
  %164 = load i64, ptr %157, align 2, !tbaa !170
  store i64 %164, ptr %163, align 2, !tbaa !170
  %165 = add nuw nsw i64 %155, 1
  %166 = icmp eq i64 %165, 4
  br i1 %166, label %167, label %154, !llvm.loop !171

167:                                              ; preds = %154
  %168 = load i32, ptr %18, align 4, !tbaa !164
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %196, label %170

170:                                              ; preds = %167
  %171 = load ptr, ptr %106, align 8, !tbaa !163
  %172 = shl nuw nsw i64 %118, 1
  %173 = or disjoint i64 %172, 1
  br label %174

174:                                              ; preds = %170, %194
  %175 = phi i1 [ true, %170 ], [ false, %194 ]
  %176 = phi i64 [ 0, %170 ], [ 1, %194 ]
  %177 = phi ptr [ %105, %170 ], [ %195, %194 ]
  %178 = getelementptr inbounds ptr, ptr %171, i64 %176
  %179 = load ptr, ptr %178, align 8, !tbaa !102
  %180 = getelementptr ptr, ptr %179, i64 %116
  br label %181

181:                                              ; preds = %174, %181
  %182 = phi i1 [ true, %174 ], [ false, %181 ]
  %183 = phi i64 [ 0, %174 ], [ 1, %181 ]
  %184 = shl nuw nsw i64 %183, 1
  %185 = getelementptr ptr, ptr %180, i64 %183
  %186 = load ptr, ptr %185, align 8, !tbaa !102
  %187 = getelementptr inbounds i16, ptr %177, i64 %184
  %188 = load i16, ptr %187, align 2, !tbaa !170
  %189 = getelementptr inbounds i16, ptr %186, i64 %172
  store i16 %188, ptr %189, align 2, !tbaa !170
  %190 = or disjoint i64 %184, 1
  %191 = getelementptr inbounds i16, ptr %177, i64 %190
  %192 = load i16, ptr %191, align 2, !tbaa !170
  %193 = getelementptr inbounds i16, ptr %186, i64 %173
  store i16 %192, ptr %193, align 2, !tbaa !170
  br i1 %182, label %181, label %194, !llvm.loop !172

194:                                              ; preds = %181
  %195 = getelementptr inbounds i16, ptr %177, i64 4
  br i1 %175, label %174, label %196, !llvm.loop !173

196:                                              ; preds = %194, %167
  %197 = add nuw nsw i64 %118, 1
  %198 = icmp eq i64 %197, %109
  br i1 %198, label %199, label %117, !llvm.loop !174

199:                                              ; preds = %196, %110
  %200 = phi i32 [ %112, %110 ], [ %151, %196 ]
  %201 = add nuw nsw i64 %111, 1
  %202 = icmp ult i64 %201, %108
  br i1 %202, label %110, label %203, !llvm.loop !175

203:                                              ; preds = %199, %94
  tail call void @free(ptr noundef %71) #24
  br label %204

204:                                              ; preds = %203, %51
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @add_node(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #15 !PGOFuncName !176 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 38
  %4 = load ptr, ptr %3, align 8, !tbaa !152
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 39
  br label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 39
  %10 = load ptr, ptr %9, align 8, !tbaa !154
  %11 = getelementptr inbounds %struct.concealment_node, ptr %10, i64 0, i32 2
  store ptr %1, ptr %11, align 8, !tbaa !150
  br label %12

12:                                               ; preds = %8, %6
  %13 = phi ptr [ %9, %8 ], [ %7, %6 ]
  store ptr %1, ptr %13, align 8, !tbaa !154
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sliding_window_poc_management(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !108
  %5 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !156
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !73
  %10 = icmp eq i32 %4, 1
  br i1 %10, label %21, label %11

11:                                               ; preds = %8, %11
  %12 = phi i64 [ %13, %11 ], [ 0, %8 ]
  %13 = add nuw nsw i64 %12, 1
  %14 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 135, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !65
  %16 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 135, i64 %12
  store i32 %15, ptr %16, align 4, !tbaa !65
  %17 = load i32, ptr %5, align 8, !tbaa !156
  %18 = add i32 %17, -1
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %13, %19
  br i1 %20, label %11, label %21, !llvm.loop !177

21:                                               ; preds = %11, %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @write_lost_non_ref_pic(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.frame_store, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #22
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !178
  %10 = sub nsw i32 %1, %9
  %11 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 94
  %12 = load i32, ptr %11, align 4, !tbaa !76
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 38
  %16 = load ptr, ptr %15, align 8, !tbaa !152
  %17 = load ptr, ptr %16, align 8, !tbaa !147
  %18 = getelementptr inbounds %struct.frame_store, ptr %4, i64 0, i32 12
  store ptr %17, ptr %18, align 8, !tbaa !126
  %19 = getelementptr inbounds %struct.frame_store, ptr %4, i64 0, i32 9
  store i32 0, ptr %19, align 4, !tbaa !179
  %20 = getelementptr inbounds %struct.frame_store, ptr %4, i64 0, i32 1
  store i32 0, ptr %20, align 4, !tbaa !180
  store i32 3, ptr %4, align 8, !tbaa !181
  call void @write_stored_frame(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef %2) #24
  %21 = load ptr, ptr %15, align 8, !tbaa !152
  call fastcc void @delete_node(ptr noundef nonnull %5, ptr noundef %21) #25
  br label %22

22:                                               ; preds = %7, %14, %3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare void @write_stored_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @delete_node(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #16 !PGOFuncName !182 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 38
  %4 = load ptr, ptr %3, align 8, !tbaa !152
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.concealment_node, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !150
  store ptr %8, ptr %3, align 8, !tbaa !152
  %9 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 39
  %10 = load ptr, ptr %9, align 8, !tbaa !154
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store ptr %8, ptr %9, align 8, !tbaa !154
  br label %13

13:                                               ; preds = %12, %6
  tail call void @free(ptr noundef nonnull %1) #24
  br label %14

14:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @write_lost_ref_after_idr(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !73
  %4 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 134
  %5 = load ptr, ptr %4, align 8, !tbaa !183
  %6 = getelementptr inbounds %struct.frame_store, ptr %5, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !126
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 23
  %11 = load i32, ptr %10, align 4, !tbaa !84
  %12 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 24
  %13 = load i32, ptr %12, align 8, !tbaa !85
  %14 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 25
  %15 = load i32, ptr %14, align 4, !tbaa !86
  %16 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 26
  %17 = load i32, ptr %16, align 8, !tbaa !87
  %18 = tail call ptr @alloc_storable_picture(ptr noundef nonnull %3, i32 noundef 0, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #24
  %19 = load ptr, ptr %4, align 8, !tbaa !183
  %20 = getelementptr inbounds %struct.frame_store, ptr %19, i64 0, i32 12
  store ptr %18, ptr %20, align 8, !tbaa !126
  store i32 3, ptr %19, align 8, !tbaa !181
  br label %21

21:                                               ; preds = %9, %2
  %22 = phi ptr [ %18, %9 ], [ %7, %2 ]
  %23 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 95
  %24 = load i32, ptr %23, align 8, !tbaa !144
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, ptr %23, align 8, !tbaa !144
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi i32 [ 2, %26 ], [ 1, %21 ]
  %29 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !109
  %31 = sext i32 %1 to i64
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !102
  %34 = getelementptr inbounds %struct.frame_store, ptr %33, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !126
  tail call fastcc void @copy_to_conceal(ptr noundef %35, ptr noundef %22, ptr noundef nonnull %3) #25
  store i32 %28, ptr %23, align 8, !tbaa !144
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @copyBetweenFrames(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 !PGOFuncName !184 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 136
  %6 = load ptr, ptr %5, align 8, !tbaa !185
  %7 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 56
  %11 = load ptr, ptr %10, align 8, !tbaa !102
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  %13 = ashr i32 %2, 3
  %14 = srem i32 %1, %13
  %15 = shl nsw i32 %14, 3
  %16 = sdiv i32 %1, %13
  %17 = shl i32 %16, 3
  %18 = add nsw i32 %17, 16
  %19 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 32
  %20 = load ptr, ptr %19, align 8, !tbaa !162
  %21 = getelementptr inbounds %struct.frame_s, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !68
  %23 = sext i32 %15 to i64
  %24 = sext i32 %17 to i64
  %25 = sext i32 %2 to i64
  %26 = sext i32 %18 to i64
  %27 = add nsw i32 %15, 15
  %28 = sext i32 %27 to i64
  br label %29

29:                                               ; preds = %3, %42
  %30 = phi i64 [ %24, %3 ], [ %43, %42 ]
  %31 = mul nsw i64 %30, %25
  %32 = getelementptr inbounds ptr, ptr %20, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !102
  %34 = getelementptr i16, ptr %22, i64 %31
  br label %35

35:                                               ; preds = %29, %35
  %36 = phi i64 [ %23, %29 ], [ %40, %35 ]
  %37 = getelementptr inbounds i16, ptr %33, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !170
  %39 = getelementptr i16, ptr %34, i64 %36
  store i16 %38, ptr %39, align 2, !tbaa !170
  %40 = add nsw i64 %36, 1
  %41 = icmp slt i64 %36, %28
  br i1 %41, label %35, label %42, !llvm.loop !186

42:                                               ; preds = %35
  %43 = add nsw i64 %30, 1
  %44 = icmp slt i64 %43, %26
  br i1 %44, label %29, label %45, !llvm.loop !187

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 48
  %47 = load i32, ptr %46, align 4, !tbaa !164
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [2 x [4 x i32]], ptr @uv_div, i64 0, i64 1, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !65
  %51 = ashr i32 %17, %50
  %52 = ashr i32 %18, %50
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %99

54:                                               ; preds = %45
  %55 = getelementptr inbounds [4 x i32], ptr @uv_div, i64 0, i64 %48
  %56 = load i32, ptr %55, align 4, !tbaa !65
  %57 = ashr i32 %15, %56
  %58 = add nsw i32 %15, 16
  %59 = ashr i32 %58, %56
  %60 = icmp slt i32 %57, %59
  %61 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 33
  %62 = getelementptr inbounds %struct.frame_s, ptr %0, i64 0, i32 2
  %63 = getelementptr inbounds %struct.frame_s, ptr %0, i64 0, i32 3
  %64 = sext i32 %57 to i64
  %65 = sext i32 %51 to i64
  %66 = sext i32 %52 to i64
  %67 = sext i32 %59 to i64
  br label %68

68:                                               ; preds = %54, %96
  %69 = phi i64 [ %65, %54 ], [ %97, %96 ]
  br i1 %60, label %70, label %96

70:                                               ; preds = %68
  %71 = trunc i64 %69 to i32
  %72 = mul i32 %71, %2
  %73 = ashr i32 %72, %56
  %74 = load ptr, ptr %61, align 8, !tbaa !163
  %75 = load ptr, ptr %74, align 8, !tbaa !102
  %76 = getelementptr inbounds ptr, ptr %75, i64 %69
  %77 = load ptr, ptr %76, align 8, !tbaa !102
  %78 = load ptr, ptr %62, align 8, !tbaa !188
  %79 = getelementptr inbounds ptr, ptr %74, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !102
  %81 = getelementptr inbounds ptr, ptr %80, i64 %69
  %82 = load ptr, ptr %81, align 8, !tbaa !102
  %83 = load ptr, ptr %63, align 8, !tbaa !189
  %84 = sext i32 %73 to i64
  br label %85

85:                                               ; preds = %70, %85
  %86 = phi i64 [ %64, %70 ], [ %94, %85 ]
  %87 = add nsw i64 %86, %84
  %88 = getelementptr inbounds i16, ptr %77, i64 %86
  %89 = load i16, ptr %88, align 2, !tbaa !170
  %90 = getelementptr inbounds i16, ptr %78, i64 %87
  store i16 %89, ptr %90, align 2, !tbaa !170
  %91 = getelementptr inbounds i16, ptr %82, i64 %86
  %92 = load i16, ptr %91, align 2, !tbaa !170
  %93 = getelementptr inbounds i16, ptr %83, i64 %87
  store i16 %92, ptr %93, align 2, !tbaa !170
  %94 = add nsw i64 %86, 1
  %95 = icmp eq i64 %94, %67
  br i1 %95, label %96, label %85, !llvm.loop !190

96:                                               ; preds = %85, %68
  %97 = add nsw i64 %69, 1
  %98 = icmp eq i64 %97, %66
  br i1 %98, label %99, label %68, !llvm.loop !191

99:                                               ; preds = %96, %45
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @buildPredRegionYUV(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !PGOFuncName !192 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 136
  %8 = load ptr, ptr %7, align 8, !tbaa !185
  %9 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 48
  %10 = load i32, ptr %9, align 4, !tbaa !164
  %11 = getelementptr inbounds i32, ptr %1, i64 2
  %12 = load i32, ptr %11, align 4, !tbaa !65
  %13 = tail call fastcc i32 @imax(i32 noundef %12) #25
  %14 = sdiv i32 %3, 16
  %15 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 23
  %16 = load i32, ptr %15, align 4, !tbaa !84
  %17 = sdiv i32 %16, 16
  %18 = mul nsw i32 %17, %14
  %19 = sdiv i32 %2, 16
  %20 = add nsw i32 %18, %19
  %21 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 35
  %22 = load ptr, ptr %21, align 8, !tbaa !193
  %23 = sext i32 %20 to i64
  %24 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !194
  %26 = getelementptr inbounds %struct.slice, ptr %25, i64 0, i32 85
  %27 = load ptr, ptr %26, align 8, !tbaa !196
  %28 = call i32 @get_mem2Dpel(ptr noundef nonnull %6, i32 noundef 16, i32 noundef 16) #24
  %29 = trunc i32 %19 to i16
  %30 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %23, i32 4
  store i16 %29, ptr %30, align 4, !tbaa !197
  %31 = trunc i32 %14 to i16
  %32 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %23, i32 4, i32 1
  store i16 %31, ptr %32, align 2, !tbaa !198
  %33 = shl i32 %14, 16
  %34 = ashr exact i32 %33, 14
  %35 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %23, i32 6
  store i32 %34, ptr %35, align 4, !tbaa !199
  %36 = ashr exact i32 %33, 16
  %37 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 78
  %38 = load i32, ptr %37, align 8, !tbaa !50
  %39 = mul nsw i32 %38, %36
  %40 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %23, i32 11
  store i32 %39, ptr %40, align 8, !tbaa !200
  %41 = shl i32 %19, 16
  %42 = ashr exact i32 %41, 16
  %43 = ashr exact i32 %41, 14
  %44 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %23, i32 5
  store i32 %43, ptr %44, align 8, !tbaa !201
  %45 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 77
  %46 = load i32, ptr %45, align 4, !tbaa !43
  %47 = mul nsw i32 %46, %42
  %48 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %23, i32 10
  store i32 %47, ptr %48, align 4, !tbaa !202
  %49 = getelementptr inbounds i32, ptr %1, i64 1
  %50 = getelementptr inbounds %struct.slice, ptr %25, i64 0, i32 56
  %51 = sext i32 %13 to i64
  %52 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 67
  %53 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 20
  %54 = getelementptr inbounds %struct.macroblock, ptr %22, i64 %23, i32 45
  %55 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 70
  %56 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69
  %57 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 17
  %58 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 21
  %59 = getelementptr inbounds %struct.slice, ptr %25, i64 0, i32 77
  %60 = load ptr, ptr %6, align 8, !tbaa !102
  br label %61

61:                                               ; preds = %5, %123
  %62 = phi ptr [ %60, %5 ], [ %99, %123 ]
  %63 = phi i64 [ 0, %5 ], [ %124, %123 ]
  %64 = shl nuw nsw i64 %63, 2
  %65 = load i32, ptr %35, align 4, !tbaa !199
  %66 = trunc i64 %63 to i32
  %67 = add nsw i32 %65, %66
  %68 = shl nsw i32 %67, 4
  br label %69

69:                                               ; preds = %61, %120
  %70 = phi ptr [ %62, %61 ], [ %99, %120 ]
  %71 = phi i64 [ 0, %61 ], [ %121, %120 ]
  %72 = shl nuw nsw i64 %71, 2
  %73 = load i32, ptr %44, align 8, !tbaa !201
  %74 = trunc i64 %71 to i32
  %75 = add nsw i32 %73, %74
  %76 = shl nsw i32 %75, 4
  %77 = load i32, ptr %1, align 4, !tbaa !65
  %78 = add nsw i32 %76, %77
  %79 = load i32, ptr %49, align 4, !tbaa !65
  %80 = add nsw i32 %79, %68
  %81 = load ptr, ptr %50, align 8, !tbaa !102
  %82 = getelementptr inbounds ptr, ptr %81, i64 %51
  %83 = load ptr, ptr %82, align 8, !tbaa !102
  %84 = load i32, ptr %52, align 4, !tbaa !203
  %85 = load i32, ptr %53, align 8, !tbaa !204
  %86 = load i32, ptr %54, align 8, !tbaa !205
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %69
  %89 = load i32, ptr %57, align 4, !tbaa !206
  %90 = ashr i32 %89, 1
  %91 = add nsw i32 %90, -1
  br label %94

92:                                               ; preds = %69
  %93 = load i32, ptr %58, align 4, !tbaa !207
  br label %94

94:                                               ; preds = %92, %88
  %95 = phi i32 [ %91, %88 ], [ %93, %92 ]
  %96 = load i32, ptr %55, align 8, !tbaa !65
  %97 = load i32, ptr %56, align 4, !tbaa !65
  %98 = trunc i32 %97 to i16
  call void @get_block_luma(ptr noundef %83, i32 noundef %78, i32 noundef %80, i32 noundef 4, i32 noundef 4, ptr noundef %70, i32 noundef %84, i32 noundef %85, i32 noundef %95, ptr noundef %27, i32 noundef %96, i16 noundef zeroext %98, ptr noundef nonnull %24) #24
  %99 = load ptr, ptr %6, align 8, !tbaa !102
  %100 = load ptr, ptr %59, align 8, !tbaa !208
  %101 = load ptr, ptr %100, align 8, !tbaa !102
  %102 = getelementptr ptr, ptr %101, i64 %64
  br label %103

103:                                              ; preds = %94, %117
  %104 = phi i64 [ 0, %94 ], [ %118, %117 ]
  br label %105

105:                                              ; preds = %103, %105
  %106 = phi i64 [ 0, %103 ], [ %115, %105 ]
  %107 = getelementptr inbounds ptr, ptr %99, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !102
  %109 = getelementptr inbounds i16, ptr %108, i64 %104
  %110 = load i16, ptr %109, align 2, !tbaa !170
  %111 = getelementptr ptr, ptr %102, i64 %106
  %112 = load ptr, ptr %111, align 8, !tbaa !102
  %113 = getelementptr i16, ptr %112, i64 %104
  %114 = getelementptr i16, ptr %113, i64 %72
  store i16 %110, ptr %114, align 2, !tbaa !170
  %115 = add nuw nsw i64 %106, 1
  %116 = icmp eq i64 %115, 4
  br i1 %116, label %117, label %105, !llvm.loop !209

117:                                              ; preds = %105
  %118 = add nuw nsw i64 %104, 1
  %119 = icmp eq i64 %118, 4
  br i1 %119, label %120, label %103, !llvm.loop !210

120:                                              ; preds = %117
  %121 = add nuw nsw i64 %71, 1
  %122 = icmp eq i64 %121, 4
  br i1 %122, label %123, label %69, !llvm.loop !211

123:                                              ; preds = %120
  %124 = add nuw nsw i64 %63, 1
  %125 = icmp eq i64 %124, 4
  br i1 %125, label %126, label %61, !llvm.loop !212

126:                                              ; preds = %123, %139
  %127 = phi i64 [ %140, %139 ], [ 0, %123 ]
  %128 = getelementptr inbounds ptr, ptr %101, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !102
  %130 = shl nuw nsw i64 %127, 4
  %131 = getelementptr i16, ptr %4, i64 %130
  br label %132

132:                                              ; preds = %126, %132
  %133 = phi i64 [ 0, %126 ], [ %137, %132 ]
  %134 = getelementptr inbounds i16, ptr %129, i64 %133
  %135 = load i16, ptr %134, align 2, !tbaa !170
  %136 = getelementptr i16, ptr %131, i64 %133
  store i16 %135, ptr %136, align 2, !tbaa !170
  %137 = add nuw nsw i64 %133, 1
  %138 = icmp eq i64 %137, 16
  br i1 %138, label %139, label %132, !llvm.loop !213

139:                                              ; preds = %132
  %140 = add nuw nsw i64 %127, 1
  %141 = icmp eq i64 %140, 16
  br i1 %141, label %142, label %126, !llvm.loop !214

142:                                              ; preds = %139
  %143 = load i32, ptr %9, align 4, !tbaa !164
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %306, label %145

145:                                              ; preds = %142
  %146 = add nsw i32 %10, -1
  %147 = getelementptr inbounds i16, ptr %4, i64 256
  %148 = load i32, ptr %45, align 4, !tbaa !43
  %149 = sdiv i32 64, %148
  %150 = add nsw i32 %149, -1
  %151 = load i32, ptr %37, align 8, !tbaa !50
  %152 = sdiv i32 64, %151
  %153 = add nsw i32 %152, -1
  %154 = mul nsw i32 %152, %149
  %155 = ashr i32 %154, 1
  %156 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 75
  %157 = load i32, ptr %156, align 4, !tbaa !215
  %158 = icmp sgt i32 %157, 0
  %159 = getelementptr ptr, ptr %100, i64 1
  %160 = sext i32 %146 to i64
  %161 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 18
  %162 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 19
  %163 = zext i32 %149 to i64
  %164 = zext i32 %152 to i64
  %165 = getelementptr ptr, ptr %100, i64 1
  %166 = zext nneg i32 %157 to i64
  br label %167

167:                                              ; preds = %145, %304
  %168 = phi i1 [ true, %145 ], [ false, %304 ]
  %169 = phi i64 [ 0, %145 ], [ 1, %304 ]
  %170 = phi ptr [ %147, %145 ], [ %305, %304 ]
  br i1 %158, label %174, label %171

171:                                              ; preds = %167
  %172 = getelementptr ptr, ptr %159, i64 %169
  %173 = load ptr, ptr %172, align 8, !tbaa !102
  br label %194

174:                                              ; preds = %167
  %175 = load i32, ptr %40, align 8, !tbaa !200
  %176 = load i32, ptr %48, align 4, !tbaa !202
  %177 = load i32, ptr %1, align 4, !tbaa !65
  %178 = load i32, ptr %49, align 4, !tbaa !65
  %179 = load i32, ptr %161, align 8, !tbaa !216
  %180 = add nsw i32 %179, -1
  %181 = load i32, ptr %162, align 4, !tbaa !217
  %182 = add nsw i32 %181, -1
  %183 = load ptr, ptr %50, align 8, !tbaa !102
  %184 = getelementptr inbounds ptr, ptr %183, i64 %51
  %185 = load ptr, ptr %184, align 8, !tbaa !102
  %186 = getelementptr inbounds %struct.storable_picture, ptr %185, i64 0, i32 33
  %187 = load ptr, ptr %186, align 8, !tbaa !163
  %188 = getelementptr inbounds ptr, ptr %187, i64 %169
  %189 = load ptr, ptr %188, align 8, !tbaa !102
  %190 = getelementptr ptr, ptr %165, i64 %169
  %191 = load ptr, ptr %190, align 8, !tbaa !102
  %192 = zext i32 %177 to i64
  %193 = zext i32 %178 to i64
  br label %196

194:                                              ; preds = %285, %171
  %195 = phi ptr [ %173, %171 ], [ %191, %285 ]
  br label %288

196:                                              ; preds = %174, %285
  %197 = phi i64 [ 0, %174 ], [ %286, %285 ]
  br label %198

198:                                              ; preds = %196, %282
  %199 = phi i64 [ 0, %196 ], [ %283, %282 ]
  %200 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %160, i64 %197, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !52
  %202 = zext i8 %201 to i32
  %203 = add nsw i32 %175, %202
  %204 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %160, i64 %197, i64 %199
  %205 = load i8, ptr %204, align 1, !tbaa !52
  %206 = zext i8 %205 to i32
  %207 = add nsw i32 %176, %206
  %208 = zext i32 %207 to i64
  %209 = zext i8 %205 to i64
  %210 = zext i32 %203 to i64
  %211 = zext i8 %201 to i64
  %212 = getelementptr ptr, ptr %191, i64 %211
  br label %213

213:                                              ; preds = %198, %279
  %214 = phi i64 [ 0, %198 ], [ %280, %279 ]
  %215 = add nuw i64 %214, %210
  %216 = mul i64 %215, %164
  %217 = add i64 %216, %193
  %218 = trunc i64 %217 to i32
  %219 = sdiv i32 %218, %152
  %220 = call fastcc i32 @iClip3(i32 noundef %182, i32 noundef %219) #25
  %221 = trunc i64 %217 to i32
  %222 = add i32 %153, %221
  %223 = sdiv i32 %222, %152
  %224 = call fastcc i32 @iClip3(i32 noundef %182, i32 noundef %223) #25
  %225 = and i32 %153, %218
  %226 = sub nsw i32 %152, %225
  %227 = sext i32 %220 to i64
  %228 = getelementptr inbounds ptr, ptr %189, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !102
  %230 = sext i32 %224 to i64
  %231 = getelementptr inbounds ptr, ptr %189, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !102
  %233 = getelementptr ptr, ptr %212, i64 %214
  %234 = load ptr, ptr %233, align 8, !tbaa !102
  %235 = getelementptr i16, ptr %234, i64 %209
  br label %236

236:                                              ; preds = %213, %236
  %237 = phi i64 [ 0, %213 ], [ %277, %236 ]
  %238 = add nuw i64 %237, %208
  %239 = mul i64 %238, %163
  %240 = add i64 %239, %192
  %241 = trunc i64 %240 to i32
  %242 = sdiv i32 %241, %149
  %243 = call fastcc i32 @iClip3(i32 noundef %180, i32 noundef %242) #25
  %244 = trunc i64 %240 to i32
  %245 = add i32 %150, %244
  %246 = sdiv i32 %245, %149
  %247 = call fastcc i32 @iClip3(i32 noundef %180, i32 noundef %246) #25
  %248 = and i32 %150, %241
  %249 = sub nsw i32 %149, %248
  %250 = sext i32 %243 to i64
  %251 = getelementptr inbounds i16, ptr %229, i64 %250
  %252 = load i16, ptr %251, align 2, !tbaa !170
  %253 = zext i16 %252 to i32
  %254 = mul i32 %249, %253
  %255 = sext i32 %247 to i64
  %256 = getelementptr inbounds i16, ptr %229, i64 %255
  %257 = load i16, ptr %256, align 2, !tbaa !170
  %258 = zext i16 %257 to i32
  %259 = mul i32 %248, %258
  %260 = getelementptr inbounds i16, ptr %232, i64 %250
  %261 = load i16, ptr %260, align 2, !tbaa !170
  %262 = zext i16 %261 to i32
  %263 = mul i32 %249, %262
  %264 = getelementptr inbounds i16, ptr %232, i64 %255
  %265 = load i16, ptr %264, align 2, !tbaa !170
  %266 = zext i16 %265 to i32
  %267 = mul i32 %248, %266
  %268 = add i32 %267, %263
  %269 = mul i32 %268, %225
  %270 = add i32 %259, %254
  %271 = mul i32 %270, %226
  %272 = add i32 %271, %155
  %273 = add i32 %272, %269
  %274 = sdiv i32 %273, %154
  %275 = trunc i32 %274 to i16
  %276 = getelementptr i16, ptr %235, i64 %237
  store i16 %275, ptr %276, align 2, !tbaa !170
  %277 = add nuw nsw i64 %237, 1
  %278 = icmp eq i64 %277, 4
  br i1 %278, label %279, label %236, !llvm.loop !218

279:                                              ; preds = %236
  %280 = add nuw nsw i64 %214, 1
  %281 = icmp eq i64 %280, 4
  br i1 %281, label %282, label %213, !llvm.loop !219

282:                                              ; preds = %279
  %283 = add nuw nsw i64 %199, 1
  %284 = icmp eq i64 %283, 4
  br i1 %284, label %285, label %198, !llvm.loop !220

285:                                              ; preds = %282
  %286 = add nuw nsw i64 %197, 1
  %287 = icmp eq i64 %286, %166
  br i1 %287, label %194, label %196, !llvm.loop !221

288:                                              ; preds = %194, %301
  %289 = phi i64 [ 0, %194 ], [ %302, %301 ]
  %290 = getelementptr inbounds ptr, ptr %195, i64 %289
  %291 = load ptr, ptr %290, align 8, !tbaa !102
  %292 = shl nuw nsw i64 %289, 3
  br label %293

293:                                              ; preds = %288, %293
  %294 = phi i64 [ 0, %288 ], [ %299, %293 ]
  %295 = getelementptr inbounds i16, ptr %291, i64 %294
  %296 = load i16, ptr %295, align 2, !tbaa !170
  %297 = add nuw nsw i64 %294, %292
  %298 = getelementptr inbounds i16, ptr %170, i64 %297
  store i16 %296, ptr %298, align 2, !tbaa !170
  %299 = add nuw nsw i64 %294, 1
  %300 = icmp eq i64 %299, 8
  br i1 %300, label %301, label %293, !llvm.loop !222

301:                                              ; preds = %293
  %302 = add nuw nsw i64 %289, 1
  %303 = icmp eq i64 %302, 8
  br i1 %303, label %304, label %288, !llvm.loop !223

304:                                              ; preds = %301
  %305 = getelementptr inbounds i16, ptr %170, i64 64
  br i1 %168, label %167, label %306, !llvm.loop !224

306:                                              ; preds = %304, %142
  call void @free_mem2Dpel(ptr noundef %99) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @edgeDistortion(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #18 !PGOFuncName !225 {
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
  br label %24

24:                                               ; preds = %105, %5
  %25 = phi i32 [ 3, %5 ], [ 2, %105 ]
  br label %26

26:                                               ; preds = %24, %100
  %27 = phi i64 [ 4, %24 ], [ %103, %100 ]
  %28 = phi i32 [ 0, %24 ], [ %102, %100 ]
  %29 = phi i32 [ 0, %24 ], [ %101, %100 ]
  %30 = getelementptr inbounds i32, ptr %0, i64 %27
  %31 = load i32, ptr %30, align 4, !tbaa !65
  %32 = icmp slt i32 %31, %25
  br i1 %32, label %100, label %33

33:                                               ; preds = %26
  %34 = trunc i64 %27 to i32
  switch i32 %34, label %97 [
    i32 4, label %35
    i32 5, label %49
    i32 6, label %65
    i32 7, label %80
  ]

35:                                               ; preds = %33, %35
  %36 = phi i64 [ %47, %35 ], [ 0, %33 ]
  %37 = phi i32 [ %46, %35 ], [ %29, %33 ]
  %38 = getelementptr inbounds i16, ptr %2, i64 %36
  %39 = load i16, ptr %38, align 2, !tbaa !170
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds i16, ptr %23, i64 %36
  %42 = load i16, ptr %41, align 2, !tbaa !170
  %43 = zext i16 %42 to i32
  %44 = sub nsw i32 %40, %43
  %45 = tail call fastcc i32 @iabs(i32 noundef %44) #25
  %46 = add nsw i32 %45, %37
  %47 = add nuw nsw i64 %36, 1
  %48 = icmp eq i64 %47, 16
  br i1 %48, label %97, label %35, !llvm.loop !226

49:                                               ; preds = %33, %49
  %50 = phi i64 [ %63, %49 ], [ 0, %33 ]
  %51 = phi i32 [ %62, %49 ], [ %29, %33 ]
  %52 = shl nuw nsw i64 %50, 4
  %53 = getelementptr inbounds i16, ptr %2, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !170
  %55 = zext i16 %54 to i32
  %56 = mul nsw i64 %50, %21
  %57 = getelementptr inbounds i16, ptr %20, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !170
  %59 = zext i16 %58 to i32
  %60 = sub nsw i32 %55, %59
  %61 = tail call fastcc i32 @iabs(i32 noundef %60) #25
  %62 = add nsw i32 %61, %51
  %63 = add nuw nsw i64 %50, 1
  %64 = icmp eq i64 %63, 16
  br i1 %64, label %97, label %49, !llvm.loop !227

65:                                               ; preds = %33, %65
  %66 = phi i64 [ %78, %65 ], [ 0, %33 ]
  %67 = phi i32 [ %77, %65 ], [ %29, %33 ]
  %68 = or disjoint i64 %66, 240
  %69 = getelementptr inbounds i16, ptr %2, i64 %68
  %70 = load i16, ptr %69, align 2, !tbaa !170
  %71 = zext i16 %70 to i32
  %72 = getelementptr inbounds i16, ptr %19, i64 %66
  %73 = load i16, ptr %72, align 2, !tbaa !170
  %74 = zext i16 %73 to i32
  %75 = sub nsw i32 %71, %74
  %76 = tail call fastcc i32 @iabs(i32 noundef %75) #25
  %77 = add nsw i32 %76, %67
  %78 = add nuw nsw i64 %66, 1
  %79 = icmp eq i64 %78, 16
  br i1 %79, label %97, label %65, !llvm.loop !228

80:                                               ; preds = %33, %80
  %81 = phi i64 [ %95, %80 ], [ 0, %33 ]
  %82 = phi i32 [ %94, %80 ], [ %29, %33 ]
  %83 = shl nuw nsw i64 %81, 4
  %84 = or disjoint i64 %83, 15
  %85 = getelementptr inbounds i16, ptr %2, i64 %84
  %86 = load i16, ptr %85, align 2, !tbaa !170
  %87 = zext i16 %86 to i32
  %88 = mul nsw i64 %81, %21
  %89 = getelementptr inbounds i16, ptr %16, i64 %88
  %90 = load i16, ptr %89, align 2, !tbaa !170
  %91 = zext i16 %90 to i32
  %92 = sub nsw i32 %87, %91
  %93 = tail call fastcc i32 @iabs(i32 noundef %92) #25
  %94 = add nsw i32 %93, %82
  %95 = add nuw nsw i64 %81, 1
  %96 = icmp eq i64 %95, 16
  br i1 %96, label %97, label %80, !llvm.loop !229

97:                                               ; preds = %80, %65, %49, %35, %33
  %98 = phi i32 [ %29, %33 ], [ %46, %35 ], [ %62, %49 ], [ %77, %65 ], [ %94, %80 ]
  %99 = add nsw i32 %28, 1
  br label %100

100:                                              ; preds = %26, %97
  %101 = phi i32 [ %98, %97 ], [ %29, %26 ]
  %102 = phi i32 [ %99, %97 ], [ %28, %26 ]
  %103 = add nuw nsw i64 %27, 1
  %104 = icmp eq i64 %103, 8
  br i1 %104, label %105, label %26, !llvm.loop !230

105:                                              ; preds = %100
  %106 = add nsw i32 %25, -3
  %107 = icmp ult i32 %106, -2
  %108 = icmp eq i32 %102, 0
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %24, label %110, !llvm.loop !231

110:                                              ; preds = %105
  br i1 %108, label %113, label %111

111:                                              ; preds = %110
  %112 = sdiv i32 %101, %102
  br label %113

113:                                              ; preds = %110, %111
  %114 = phi i32 [ %112, %111 ], [ 0, %110 ]
  ret i32 %114
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @copyPredMB(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #4 !PGOFuncName !232 {
  %5 = load ptr, ptr %2, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 136
  %7 = load ptr, ptr %6, align 8, !tbaa !185
  %8 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 48
  %9 = load i32, ptr %8, align 4, !tbaa !164
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
  %22 = load ptr, ptr %21, align 8, !tbaa !162
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
  %35 = load ptr, ptr %34, align 8, !tbaa !102
  br label %36

36:                                               ; preds = %28, %36
  %37 = phi i64 [ %23, %28 ], [ %44, %36 ]
  %38 = trunc i64 %37 to i32
  %39 = add i32 %33, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, ptr %1, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !170
  %43 = getelementptr inbounds i16, ptr %35, i64 %37
  store i16 %42, ptr %43, align 2, !tbaa !170
  %44 = add nsw i64 %37, 1
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %24, %45
  br i1 %46, label %47, label %36, !llvm.loop !233

47:                                               ; preds = %36
  %48 = add nsw i64 %29, 1
  %49 = trunc i64 %48 to i32
  %50 = icmp eq i32 %27, %49
  br i1 %50, label %51, label %28, !llvm.loop !234

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
  %61 = getelementptr i16, ptr %1, i64 256
  %62 = getelementptr i16, ptr %1, i64 320
  %63 = icmp sgt i32 %59, %60
  %64 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 77
  %65 = shl nsw i32 %16, 2
  %66 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 33
  %67 = sext i32 %59 to i64
  %68 = sext i32 %65 to i64
  %69 = add i32 %60, 1
  %70 = sext i32 %55 to i64
  %71 = add i32 %56, 1
  br label %72

72:                                               ; preds = %58, %100
  %73 = phi i64 [ %70, %58 ], [ %101, %100 ]
  br i1 %63, label %100, label %74

74:                                               ; preds = %72
  %75 = sub nsw i64 %73, %70
  %76 = load i32, ptr %64, align 4, !tbaa !43
  %77 = sext i32 %76 to i64
  %78 = mul nsw i64 %75, %77
  %79 = load ptr, ptr %66, align 8, !tbaa !163
  %80 = load ptr, ptr %79, align 8, !tbaa !102
  %81 = getelementptr inbounds ptr, ptr %80, i64 %73
  %82 = load ptr, ptr %81, align 8, !tbaa !102
  %83 = getelementptr inbounds ptr, ptr %79, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !102
  %85 = getelementptr inbounds ptr, ptr %84, i64 %73
  %86 = load ptr, ptr %85, align 8, !tbaa !102
  br label %87

87:                                               ; preds = %74, %87
  %88 = phi i64 [ %67, %74 ], [ %97, %87 ]
  %89 = sub nsw i64 %88, %68
  %90 = add nsw i64 %78, %89
  %91 = getelementptr i16, ptr %61, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !170
  %93 = getelementptr inbounds i16, ptr %82, i64 %88
  store i16 %92, ptr %93, align 2, !tbaa !170
  %94 = getelementptr i16, ptr %62, i64 %90
  %95 = load i16, ptr %94, align 2, !tbaa !170
  %96 = getelementptr inbounds i16, ptr %86, i64 %88
  store i16 %95, ptr %96, align 2, !tbaa !170
  %97 = add nsw i64 %88, 1
  %98 = trunc i64 %97 to i32
  %99 = icmp eq i32 %69, %98
  br i1 %99, label %100, label %87, !llvm.loop !235

100:                                              ; preds = %87, %72
  %101 = add nsw i64 %73, 1
  %102 = trunc i64 %101 to i32
  %103 = icmp eq i32 %71, %102
  br i1 %103, label %104, label %72, !llvm.loop !236

104:                                              ; preds = %100, %54, %51
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imax(i32 noundef %0) unnamed_addr #9 !PGOFuncName !237 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: optsize
declare i32 @get_mem2Dpel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @get_block_luma(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @iClip3(i32 noundef %0, i32 noundef %1) unnamed_addr #9 !PGOFuncName !238 {
  %3 = tail call fastcc i32 @imax(i32 noundef %1) #25
  %4 = tail call fastcc i32 @imin(i32 noundef %3, i32 noundef %0) #25
  ret i32 %4
}

; Function Attrs: optsize
declare void @free_mem2Dpel(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iabs(i32 noundef %0) unnamed_addr #9 !PGOFuncName !239 {
  %2 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_last_ref_pic_from_dpb(ptr nocapture noundef readonly %0) unnamed_addr #19 !PGOFuncName !240 {
  %2 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !108
  %4 = add i32 %3, -1
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %26
  %11 = phi i64 [ %9, %6 ], [ %27, %26 ]
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !102
  %14 = load i32, ptr %13, align 8, !tbaa !181
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.frame_store, ptr %13, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !126
  %19 = getelementptr inbounds %struct.storable_picture, ptr %18, i64 0, i32 11
  %20 = load i32, ptr %19, align 4, !tbaa !95
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.storable_picture, ptr %18, i64 0, i32 10
  %24 = load i8, ptr %23, align 8, !tbaa !241
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %10, %22, %16
  %27 = add nsw i64 %11, -1
  %28 = icmp sgt i64 %11, 0
  br i1 %28, label %10, label %29, !llvm.loop !242

29:                                               ; preds = %22, %26, %1
  %30 = phi ptr [ null, %1 ], [ null, %26 ], [ %18, %22 ]
  ret ptr %30
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @CopyImgData(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #4 !PGOFuncName !243 {
  %9 = icmp sgt i32 %5, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %8
  %11 = icmp sgt i32 %4, 0
  %12 = zext nneg i32 %5 to i64
  %13 = zext nneg i32 %4 to i64
  br label %14

14:                                               ; preds = %10, %36
  %15 = phi i64 [ 0, %10 ], [ %37, %36 ]
  br i1 %11, label %16, label %36

16:                                               ; preds = %14
  %17 = getelementptr inbounds ptr, ptr %0, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !102
  %19 = getelementptr inbounds ptr, ptr %2, i64 %15
  %20 = load ptr, ptr %19, align 8, !tbaa !102
  br label %29

21:                                               ; preds = %36, %8
  %22 = icmp sgt i32 %7, 0
  br i1 %22, label %23, label %67

23:                                               ; preds = %21
  %24 = icmp sgt i32 %6, 0
  %25 = getelementptr inbounds ptr, ptr %1, i64 1
  %26 = getelementptr inbounds ptr, ptr %3, i64 1
  %27 = zext nneg i32 %7 to i64
  %28 = zext nneg i32 %6 to i64
  br label %39

29:                                               ; preds = %16, %29
  %30 = phi i64 [ 0, %16 ], [ %34, %29 ]
  %31 = getelementptr inbounds i16, ptr %18, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !170
  %33 = getelementptr inbounds i16, ptr %20, i64 %30
  store i16 %32, ptr %33, align 2, !tbaa !170
  %34 = add nuw nsw i64 %30, 1
  %35 = icmp eq i64 %34, %13
  br i1 %35, label %36, label %29, !llvm.loop !244

36:                                               ; preds = %29, %14
  %37 = add nuw nsw i64 %15, 1
  %38 = icmp eq i64 %37, %12
  br i1 %38, label %21, label %14, !llvm.loop !245

39:                                               ; preds = %23, %64
  %40 = phi i64 [ 0, %23 ], [ %65, %64 ]
  br i1 %24, label %41, label %64

41:                                               ; preds = %39
  %42 = load ptr, ptr %1, align 8, !tbaa !102
  %43 = getelementptr inbounds ptr, ptr %42, i64 %40
  %44 = load ptr, ptr %43, align 8, !tbaa !102
  %45 = load ptr, ptr %3, align 8, !tbaa !102
  %46 = getelementptr inbounds ptr, ptr %45, i64 %40
  %47 = load ptr, ptr %46, align 8, !tbaa !102
  %48 = load ptr, ptr %25, align 8, !tbaa !102
  %49 = getelementptr inbounds ptr, ptr %48, i64 %40
  %50 = load ptr, ptr %49, align 8, !tbaa !102
  %51 = load ptr, ptr %26, align 8, !tbaa !102
  %52 = getelementptr inbounds ptr, ptr %51, i64 %40
  %53 = load ptr, ptr %52, align 8, !tbaa !102
  br label %54

54:                                               ; preds = %41, %54
  %55 = phi i64 [ 0, %41 ], [ %62, %54 ]
  %56 = getelementptr inbounds i16, ptr %44, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !170
  %58 = getelementptr inbounds i16, ptr %47, i64 %55
  store i16 %57, ptr %58, align 2, !tbaa !170
  %59 = getelementptr inbounds i16, ptr %50, i64 %55
  %60 = load i16, ptr %59, align 2, !tbaa !170
  %61 = getelementptr inbounds i16, ptr %53, i64 %55
  store i16 %60, ptr %61, align 2, !tbaa !170
  %62 = add nuw nsw i64 %55, 1
  %63 = icmp eq i64 %62, %28
  br i1 %63, label %64, label %54, !llvm.loop !246

64:                                               ; preds = %54, %39
  %65 = add nuw nsw i64 %40, 1
  %66 = icmp eq i64 %65, %27
  br i1 %66, label %67, label %39, !llvm.loop !247

67:                                               ; preds = %64, %21
  ret void
}

; Function Attrs: optsize
declare void @init_lists(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @buildPredblockRegionYUV(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !248 {
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 136
  %9 = load ptr, ptr %8, align 8, !tbaa !185
  %10 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 48
  %11 = getelementptr inbounds i32, ptr %1, i64 2
  %12 = load i32, ptr %11, align 4, !tbaa !65
  %13 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 35
  %14 = load ptr, ptr %13, align 8, !tbaa !193
  %15 = sext i32 %5 to i64
  %16 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !194
  %18 = call i32 @get_mem2Dpel(ptr noundef nonnull %7, i32 noundef 16, i32 noundef 16) #24
  %19 = sdiv i32 %2, 4
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %15, i32 4
  store i16 %20, ptr %21, align 4, !tbaa !197
  %22 = sdiv i32 %3, 4
  %23 = trunc i32 %22 to i16
  %24 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %15, i32 4, i32 1
  store i16 %23, ptr %24, align 2, !tbaa !198
  %25 = shl i32 %22, 16
  %26 = ashr exact i32 %25, 14
  %27 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %15, i32 6
  store i32 %26, ptr %27, align 4, !tbaa !199
  %28 = ashr exact i32 %25, 16
  %29 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 78
  %30 = load i32, ptr %29, align 8, !tbaa !50
  %31 = mul nsw i32 %30, %28
  %32 = sdiv i32 %31, 4
  %33 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %15, i32 11
  store i32 %32, ptr %33, align 8, !tbaa !200
  %34 = shl i32 %19, 16
  %35 = ashr exact i32 %34, 16
  %36 = ashr exact i32 %34, 14
  %37 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %15, i32 5
  store i32 %36, ptr %37, align 8, !tbaa !201
  %38 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 77
  %39 = load i32, ptr %38, align 4, !tbaa !43
  %40 = mul nsw i32 %39, %35
  %41 = sdiv i32 %40, 4
  %42 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %15, i32 10
  store i32 %41, ptr %42, align 4, !tbaa !202
  %43 = shl nsw i32 %2, 2
  %44 = load i32, ptr %1, align 4, !tbaa !65
  %45 = add nsw i32 %44, %43
  %46 = shl nsw i32 %3, 2
  %47 = getelementptr inbounds i32, ptr %1, i64 1
  %48 = load i32, ptr %47, align 4, !tbaa !65
  %49 = add nsw i32 %48, %46
  %50 = getelementptr inbounds %struct.slice, ptr %17, i64 0, i32 56
  %51 = load ptr, ptr %50, align 8, !tbaa !102
  %52 = sext i32 %12 to i64
  %53 = getelementptr inbounds ptr, ptr %51, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !102
  %55 = load ptr, ptr %7, align 8, !tbaa !102
  %56 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 67
  %57 = load i32, ptr %56, align 4, !tbaa !203
  %58 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 20
  %59 = load i32, ptr %58, align 8, !tbaa !204
  %60 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %15, i32 45
  %61 = load i32, ptr %60, align 8, !tbaa !205
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %6
  %64 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 17
  %65 = load i32, ptr %64, align 4, !tbaa !206
  %66 = ashr i32 %65, 1
  %67 = add nsw i32 %66, -1
  br label %71

68:                                               ; preds = %6
  %69 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 21
  %70 = load i32, ptr %69, align 4, !tbaa !207
  br label %71

71:                                               ; preds = %68, %63
  %72 = phi i32 [ %67, %63 ], [ %70, %68 ]
  %73 = getelementptr inbounds %struct.slice, ptr %17, i64 0, i32 85
  %74 = load ptr, ptr %73, align 8, !tbaa !196
  %75 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 70
  %76 = load i32, ptr %75, align 8, !tbaa !65
  %77 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69
  %78 = load i32, ptr %77, align 4, !tbaa !65
  %79 = trunc i32 %78 to i16
  call void @get_block_luma(ptr noundef %54, i32 noundef %45, i32 noundef %49, i32 noundef 4, i32 noundef 4, ptr noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %72, ptr noundef %74, i32 noundef %76, i16 noundef zeroext %79, ptr noundef nonnull %16) #24
  %80 = load ptr, ptr %7, align 8, !tbaa !102
  %81 = getelementptr inbounds %struct.slice, ptr %17, i64 0, i32 77
  %82 = load ptr, ptr %81, align 8, !tbaa !208
  %83 = load ptr, ptr %82, align 8, !tbaa !102
  br label %84

84:                                               ; preds = %71, %97
  %85 = phi i64 [ 0, %71 ], [ %98, %97 ]
  %86 = getelementptr inbounds ptr, ptr %80, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !102
  %88 = getelementptr inbounds ptr, ptr %83, i64 %85
  %89 = load ptr, ptr %88, align 8, !tbaa !102
  br label %90

90:                                               ; preds = %84, %90
  %91 = phi i64 [ 0, %84 ], [ %95, %90 ]
  %92 = getelementptr inbounds i16, ptr %87, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !170
  %94 = getelementptr inbounds i16, ptr %89, i64 %91
  store i16 %93, ptr %94, align 2, !tbaa !170
  %95 = add nuw nsw i64 %91, 1
  %96 = icmp eq i64 %95, 4
  br i1 %96, label %97, label %90, !llvm.loop !249

97:                                               ; preds = %90
  %98 = add nuw nsw i64 %85, 1
  %99 = icmp eq i64 %98, 4
  br i1 %99, label %100, label %84, !llvm.loop !250

100:                                              ; preds = %97, %113
  %101 = phi i64 [ %114, %113 ], [ 0, %97 ]
  %102 = getelementptr inbounds ptr, ptr %83, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !102
  %104 = shl nuw nsw i64 %101, 2
  %105 = getelementptr i16, ptr %4, i64 %104
  br label %106

106:                                              ; preds = %100, %106
  %107 = phi i64 [ 0, %100 ], [ %111, %106 ]
  %108 = getelementptr inbounds i16, ptr %103, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !170
  %110 = getelementptr i16, ptr %105, i64 %107
  store i16 %109, ptr %110, align 2, !tbaa !170
  %111 = add nuw nsw i64 %107, 1
  %112 = icmp eq i64 %111, 4
  br i1 %112, label %113, label %106, !llvm.loop !251

113:                                              ; preds = %106
  %114 = add nuw nsw i64 %101, 1
  %115 = icmp eq i64 %114, 4
  br i1 %115, label %116, label %100, !llvm.loop !252

116:                                              ; preds = %113
  %117 = load i32, ptr %10, align 4, !tbaa !164
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %239, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds i16, ptr %4, i64 16
  %121 = load i32, ptr %38, align 4, !tbaa !43
  %122 = sdiv i32 64, %121
  %123 = add nsw i32 %122, -1
  %124 = load i32, ptr %29, align 8, !tbaa !50
  %125 = sdiv i32 64, %124
  %126 = add nsw i32 %125, -1
  %127 = mul nsw i32 %125, %122
  %128 = ashr i32 %127, 1
  %129 = load i32, ptr %33, align 8, !tbaa !200
  %130 = load i32, ptr %42, align 4, !tbaa !202
  %131 = load i32, ptr %1, align 4, !tbaa !65
  %132 = load i32, ptr %47, align 4, !tbaa !65
  %133 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 18
  %134 = load i32, ptr %133, align 8, !tbaa !216
  %135 = add nsw i32 %134, -1
  %136 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 19
  %137 = load i32, ptr %136, align 4, !tbaa !217
  %138 = add nsw i32 %137, -1
  %139 = load ptr, ptr %50, align 8, !tbaa !102
  %140 = getelementptr inbounds ptr, ptr %139, i64 %52
  %141 = load ptr, ptr %140, align 8, !tbaa !102
  %142 = getelementptr inbounds %struct.storable_picture, ptr %141, i64 0, i32 33
  %143 = load ptr, ptr %142, align 8, !tbaa !163
  %144 = getelementptr ptr, ptr %82, i64 1
  %145 = zext i32 %130 to i64
  %146 = zext i32 %122 to i64
  %147 = zext i32 %131 to i64
  %148 = zext i32 %129 to i64
  %149 = zext i32 %125 to i64
  %150 = zext i32 %132 to i64
  br label %151

151:                                              ; preds = %119, %237
  %152 = phi i1 [ true, %119 ], [ false, %237 ]
  %153 = phi i64 [ 0, %119 ], [ 1, %237 ]
  %154 = phi ptr [ %120, %119 ], [ %238, %237 ]
  %155 = getelementptr inbounds ptr, ptr %143, i64 %153
  %156 = load ptr, ptr %155, align 8, !tbaa !102
  %157 = getelementptr ptr, ptr %144, i64 %153
  %158 = load ptr, ptr %157, align 8, !tbaa !102
  br label %159

159:                                              ; preds = %151, %224
  %160 = phi i1 [ true, %151 ], [ false, %224 ]
  %161 = phi i64 [ 0, %151 ], [ 1, %224 ]
  %162 = add nuw nsw i64 %161, %148
  %163 = mul i64 %162, %149
  %164 = add i64 %163, %150
  %165 = trunc i64 %164 to i32
  %166 = sdiv i32 %165, %125
  %167 = call fastcc i32 @iClip3(i32 noundef %138, i32 noundef %166) #25
  %168 = trunc i64 %164 to i32
  %169 = add i32 %126, %168
  %170 = sdiv i32 %169, %125
  %171 = call fastcc i32 @iClip3(i32 noundef %138, i32 noundef %170) #25
  %172 = and i32 %126, %165
  %173 = sub nsw i32 %125, %172
  %174 = sext i32 %167 to i64
  %175 = getelementptr inbounds ptr, ptr %156, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !102
  %177 = sext i32 %171 to i64
  %178 = getelementptr inbounds ptr, ptr %156, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !102
  %180 = getelementptr inbounds ptr, ptr %158, i64 %161
  %181 = load ptr, ptr %180, align 8, !tbaa !102
  br label %182

182:                                              ; preds = %159, %182
  %183 = phi i1 [ true, %159 ], [ false, %182 ]
  %184 = phi i64 [ 0, %159 ], [ 1, %182 ]
  %185 = add nuw nsw i64 %184, %145
  %186 = mul i64 %185, %146
  %187 = add i64 %186, %147
  %188 = trunc i64 %187 to i32
  %189 = sdiv i32 %188, %122
  %190 = call fastcc i32 @iClip3(i32 noundef %135, i32 noundef %189) #25
  %191 = trunc i64 %187 to i32
  %192 = add i32 %123, %191
  %193 = sdiv i32 %192, %122
  %194 = call fastcc i32 @iClip3(i32 noundef %135, i32 noundef %193) #25
  %195 = and i32 %123, %188
  %196 = sub nsw i32 %122, %195
  %197 = sext i32 %190 to i64
  %198 = getelementptr inbounds i16, ptr %176, i64 %197
  %199 = load i16, ptr %198, align 2, !tbaa !170
  %200 = zext i16 %199 to i32
  %201 = mul i32 %196, %200
  %202 = sext i32 %194 to i64
  %203 = getelementptr inbounds i16, ptr %176, i64 %202
  %204 = load i16, ptr %203, align 2, !tbaa !170
  %205 = zext i16 %204 to i32
  %206 = mul i32 %195, %205
  %207 = getelementptr inbounds i16, ptr %179, i64 %197
  %208 = load i16, ptr %207, align 2, !tbaa !170
  %209 = zext i16 %208 to i32
  %210 = mul i32 %196, %209
  %211 = getelementptr inbounds i16, ptr %179, i64 %202
  %212 = load i16, ptr %211, align 2, !tbaa !170
  %213 = zext i16 %212 to i32
  %214 = mul i32 %195, %213
  %215 = add i32 %214, %210
  %216 = mul i32 %215, %172
  %217 = add i32 %206, %201
  %218 = mul i32 %217, %173
  %219 = add i32 %218, %128
  %220 = add i32 %219, %216
  %221 = sdiv i32 %220, %127
  %222 = trunc i32 %221 to i16
  %223 = getelementptr inbounds i16, ptr %181, i64 %184
  store i16 %222, ptr %223, align 2, !tbaa !170
  br i1 %183, label %182, label %224, !llvm.loop !253

224:                                              ; preds = %182
  br i1 %160, label %159, label %225, !llvm.loop !254

225:                                              ; preds = %224, %225
  %226 = phi i1 [ false, %225 ], [ true, %224 ]
  %227 = phi i64 [ 1, %225 ], [ 0, %224 ]
  %228 = getelementptr inbounds ptr, ptr %158, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !102
  %230 = shl nuw nsw i64 %227, 1
  %231 = load i16, ptr %229, align 2, !tbaa !170
  %232 = getelementptr inbounds i16, ptr %154, i64 %230
  store i16 %231, ptr %232, align 2, !tbaa !170
  %233 = getelementptr inbounds i16, ptr %229, i64 1
  %234 = load i16, ptr %233, align 2, !tbaa !170
  %235 = or disjoint i64 %230, 1
  %236 = getelementptr inbounds i16, ptr %154, i64 %235
  store i16 %234, ptr %236, align 2, !tbaa !170
  br i1 %226, label %225, label %237, !llvm.loop !255

237:                                              ; preds = %225
  %238 = getelementptr inbounds i16, ptr %154, i64 4
  br i1 %152, label %151, label %239, !llvm.loop !256

239:                                              ; preds = %237, %116
  call void @free_mem2Dpel(ptr noundef %80) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #21

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { nounwind optsize allocsize(0) }
attributes #24 = { nounwind optsize }
attributes #25 = { optsize }
attributes #26 = { nounwind optsize allocsize(0,1) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!44, !41, i64 856512}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !54}
!58 = distinct !{!58, !54}
!59 = distinct !{!59, !54}
!60 = distinct !{!60, !54}
!61 = !{!"erc_do_p.c:concealByTrial"}
!62 = !{!63, !41, i64 4}
!63 = !{!"object_buffer", !37, i64 0, !41, i64 4, !41, i64 8, !37, i64 12}
!64 = !{!63, !41, i64 8}
!65 = !{!41, !41, i64 0}
!66 = !{!63, !37, i64 0}
!67 = !{!44, !36, i64 856520}
!68 = !{!35, !36, i64 8}
!69 = distinct !{!69, !54}
!70 = distinct !{!70, !54}
!71 = distinct !{!71, !54}
!72 = !{!"erc_do_p.c:concealByCopy"}
!73 = !{!74, !36, i64 0}
!74 = !{!"decoded_picture_buffer", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64, !41, i64 4160, !41, i64 4164, !36, i64 4168}
!75 = !{!44, !41, i64 849252}
!76 = !{!44, !41, i64 849236}
!77 = !{!44, !41, i64 849228}
!78 = !{!44, !41, i64 849244}
!79 = !{!44, !41, i64 848944}
!80 = !{!44, !41, i64 848992}
!81 = !{!82, !41, i64 172}
!82 = !{!"slice", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !36, i64 40, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !37, i64 88, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !45, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !37, i64 136, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !37, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !36, i64 248, !37, i64 256, !37, i64 264, !36, i64 312, !36, i64 320, !36, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !41, i64 1176, !41, i64 1180, !41, i64 1184, !83, i64 1188, !45, i64 1220, !45, i64 1222, !45, i64 1224, !41, i64 1228, !41, i64 1232, !41, i64 1236, !41, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !37, i64 1288, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !41, i64 13264, !41, i64 13268, !45, i64 13272, !45, i64 13274, !45, i64 13276, !45, i64 13278, !36, i64 13280, !36, i64 13288, !36, i64 13296, !45, i64 13304, !45, i64 13306, !41, i64 13308, !41, i64 13312, !36, i64 13320, !36, i64 13328, !41, i64 13336, !37, i64 13340, !36, i64 13408, !36, i64 13416, !36, i64 13424, !36, i64 13432, !36, i64 13440, !36, i64 13448, !36, i64 13456, !36, i64 13464, !36, i64 13472, !36, i64 13480, !36, i64 13488, !36, i64 13496, !41, i64 13504, !36, i64 13512, !36, i64 13520, !36, i64 13528, !36, i64 13536, !36, i64 13544, !37, i64 13552}
!83 = !{!"nalunitheadermvcext_tag", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28}
!84 = !{!44, !41, i64 848780}
!85 = !{!44, !41, i64 848784}
!86 = !{!44, !41, i64 848788}
!87 = !{!44, !41, i64 848792}
!88 = !{!89, !41, i64 96}
!89 = !{!"storable_picture", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !37, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !45, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !37, i64 160, !90, i64 184, !37, i64 192, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !37, i64 300, !41, i64 308, !36, i64 312, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !36, i64 336, !41, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !41, i64 368, !36, i64 376, !41, i64 384, !41, i64 388, !37, i64 392, !37, i64 400}
!90 = !{!"pic_motion_params_old", !36, i64 0}
!91 = !{!89, !41, i64 28}
!92 = !{!89, !41, i64 20}
!93 = !{!89, !41, i64 52}
!94 = !{!89, !41, i64 48}
!95 = !{!89, !41, i64 44}
!96 = !{!89, !41, i64 320}
!97 = !{!89, !41, i64 264}
!98 = !{!44, !41, i64 849232}
!99 = !{!89, !41, i64 248}
!100 = !{!89, !41, i64 252}
!101 = !{!44, !36, i64 848736}
!102 = !{!36, !36, i64 0}
!103 = !{!82, !41, i64 1176}
!104 = !{!44, !36, i64 856656}
!105 = distinct !{!105, !54}
!106 = !{!"erc_do_p.c:copy_prev_pic_to_concealed_pic"}
!107 = !{!44, !41, i64 849256}
!108 = !{!74, !41, i64 44}
!109 = !{!74, !36, i64 16}
!110 = !{!111, !41, i64 44}
!111 = !{!"frame_store", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !36, i64 48, !36, i64 56, !36, i64 64, !41, i64 72, !37, i64 76, !37, i64 84}
!112 = !{!74, !36, i64 24}
!113 = distinct !{!113, !54}
!114 = !{!44, !36, i64 8}
!115 = !{!116, !41, i64 2168}
!116 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !37, i64 24, !37, i64 72, !37, i64 456, !37, i64 1992, !37, i64 2016, !41, i64 2040, !41, i64 2044, !41, i64 2048, !37, i64 2052, !37, i64 2084, !37, i64 2116, !41, i64 2148, !41, i64 2152, !41, i64 2156, !36, i64 2160, !41, i64 2168, !41, i64 2172, !41, i64 2176, !41, i64 2180, !41, i64 2184, !41, i64 2188, !41, i64 2192, !41, i64 2196, !41, i64 2200, !41, i64 2204, !41, i64 2208}
!117 = !{!74, !41, i64 48}
!118 = !{!44, !36, i64 16}
!119 = !{!120, !41, i64 2068}
!120 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !37, i64 44, !37, i64 92, !37, i64 476, !37, i64 2012, !37, i64 2036, !41, i64 2060, !41, i64 2064, !41, i64 2068, !41, i64 2072, !41, i64 2076, !41, i64 2080, !41, i64 2084, !41, i64 2088, !41, i64 2092, !37, i64 2096, !41, i64 3120, !41, i64 3124, !41, i64 3128, !41, i64 3132, !41, i64 3136, !41, i64 3140, !41, i64 3144, !41, i64 3148, !41, i64 3152, !41, i64 3156, !41, i64 3160, !41, i64 3164, !41, i64 3168, !121, i64 3172, !41, i64 4120, !41, i64 4124}
!121 = !{!"", !41, i64 0, !41, i64 4, !45, i64 8, !45, i64 10, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !122, i64 80, !41, i64 492, !122, i64 496, !41, i64 908, !41, i64 912, !41, i64 916, !41, i64 920, !41, i64 924, !41, i64 928, !41, i64 932, !41, i64 936, !41, i64 940, !41, i64 944}
!122 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !37, i64 12, !37, i64 140, !37, i64 268, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408}
!123 = !{!111, !41, i64 20}
!124 = !{!44, !41, i64 849248}
!125 = !{!111, !41, i64 28}
!126 = !{!111, !36, i64 48}
!127 = distinct !{!127, !54}
!128 = distinct !{!128, !54}
!129 = !{!89, !41, i64 4}
!130 = distinct !{!130, !54}
!131 = distinct !{!131, !54}
!132 = distinct !{!132, !54}
!133 = distinct !{!133, !54}
!134 = distinct !{!134, !54}
!135 = !{!120, !41, i64 3120}
!136 = distinct !{!136, !54}
!137 = distinct !{!137, !54}
!138 = !{!"erc_do_p.c:compare_pic_by_pic_num_desc"}
!139 = !{!"erc_do_p.c:compare_pic_by_poc_desc"}
!140 = !{!"erc_do_p.c:compare_pic_by_poc_asc"}
!141 = !{!"erc_do_p.c:compare_pic_by_lt_pic_num_asc"}
!142 = !{!89, !41, i64 32}
!143 = !{!"erc_do_p.c:imin"}
!144 = !{!44, !41, i64 849240}
!145 = !{!111, !41, i64 40}
!146 = distinct !{!146, !54}
!147 = !{!148, !36, i64 0}
!148 = !{!"concealment_node", !36, i64 0, !41, i64 8, !36, i64 16}
!149 = !{!148, !41, i64 8}
!150 = !{!148, !36, i64 16}
!151 = distinct !{!151, !54}
!152 = !{!44, !36, i64 848928}
!153 = distinct !{!153, !54}
!154 = !{!44, !36, i64 848936}
!155 = distinct !{!155, !54}
!156 = !{!74, !41, i64 40}
!157 = distinct !{!157, !54}
!158 = !{!"erc_do_p.c:copy_to_conceal"}
!159 = !{!89, !41, i64 108}
!160 = !{!89, !41, i64 308}
!161 = !{!89, !41, i64 104}
!162 = !{!89, !36, i64 128}
!163 = !{!89, !36, i64 136}
!164 = !{!89, !41, i64 268}
!165 = !{!82, !41, i64 184}
!166 = !{!89, !36, i64 152}
!167 = !{!168, !45, i64 0}
!168 = !{!"", !45, i64 0, !45, i64 2}
!169 = !{!168, !45, i64 2}
!170 = !{!45, !45, i64 0}
!171 = distinct !{!171, !54}
!172 = distinct !{!172, !54}
!173 = distinct !{!173, !54}
!174 = distinct !{!174, !54}
!175 = distinct !{!175, !54}
!176 = !{!"erc_do_p.c:add_node"}
!177 = distinct !{!177, !54}
!178 = !{!74, !41, i64 56}
!179 = !{!111, !41, i64 36}
!180 = !{!111, !41, i64 4}
!181 = !{!111, !41, i64 0}
!182 = !{!"erc_do_p.c:delete_node"}
!183 = !{!44, !36, i64 856048}
!184 = !{!"erc_do_p.c:copyBetweenFrames"}
!185 = !{!44, !36, i64 856456}
!186 = distinct !{!186, !54}
!187 = distinct !{!187, !54}
!188 = !{!35, !36, i64 16}
!189 = !{!35, !36, i64 24}
!190 = distinct !{!190, !54}
!191 = distinct !{!191, !54}
!192 = !{!"erc_do_p.c:buildPredRegionYUV"}
!193 = !{!44, !36, i64 848888}
!194 = !{!195, !36, i64 0}
!195 = !{!"macroblock", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !168, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !37, i64 72, !37, i64 80, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !45, i64 108, !37, i64 110, !37, i64 111, !45, i64 112, !45, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !45, i64 152, !37, i64 154, !41, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !41, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !45, i64 376, !45, i64 378, !45, i64 380, !41, i64 384, !41, i64 388, !41, i64 392, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !41, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !37, i64 472}
!196 = !{!82, !36, i64 1368}
!197 = !{!195, !45, i64 28}
!198 = !{!195, !45, i64 30}
!199 = !{!195, !41, i64 36}
!200 = !{!195, !41, i64 56}
!201 = !{!195, !41, i64 32}
!202 = !{!195, !41, i64 52}
!203 = !{!89, !41, i64 356}
!204 = !{!89, !41, i64 80}
!205 = !{!195, !41, i64 384}
!206 = !{!89, !41, i64 68}
!207 = !{!89, !41, i64 84}
!208 = !{!82, !36, i64 1248}
!209 = distinct !{!209, !54}
!210 = distinct !{!210, !54}
!211 = distinct !{!211, !54}
!212 = distinct !{!212, !54}
!213 = distinct !{!213, !54}
!214 = distinct !{!214, !54}
!215 = !{!44, !41, i64 849100}
!216 = !{!89, !41, i64 72}
!217 = !{!89, !41, i64 76}
!218 = distinct !{!218, !54}
!219 = distinct !{!219, !54}
!220 = distinct !{!220, !54}
!221 = distinct !{!221, !54}
!222 = distinct !{!222, !54}
!223 = distinct !{!223, !54}
!224 = distinct !{!224, !54}
!225 = !{!"erc_do_p.c:edgeDistortion"}
!226 = distinct !{!226, !54}
!227 = distinct !{!227, !54}
!228 = distinct !{!228, !54}
!229 = distinct !{!229, !54}
!230 = distinct !{!230, !54}
!231 = distinct !{!231, !54}
!232 = !{!"erc_do_p.c:copyPredMB"}
!233 = distinct !{!233, !54}
!234 = distinct !{!234, !54}
!235 = distinct !{!235, !54}
!236 = distinct !{!236, !54}
!237 = !{!"erc_do_p.c:imax"}
!238 = !{!"erc_do_p.c:iClip3"}
!239 = !{!"erc_do_p.c:iabs"}
!240 = !{!"erc_do_p.c:get_last_ref_pic_from_dpb"}
!241 = !{!89, !37, i64 40}
!242 = distinct !{!242, !54}
!243 = !{!"erc_do_p.c:CopyImgData"}
!244 = distinct !{!244, !54}
!245 = distinct !{!245, !54}
!246 = distinct !{!246, !54}
!247 = distinct !{!247, !54}
!248 = !{!"erc_do_p.c:buildPredblockRegionYUV"}
!249 = distinct !{!249, !54}
!250 = distinct !{!250, !54}
!251 = distinct !{!251, !54}
!252 = distinct !{!252, !54}
!253 = distinct !{!253, !54}
!254 = distinct !{!254, !54}
!255 = distinct !{!255, !54}
!256 = distinct !{!256, !54}
