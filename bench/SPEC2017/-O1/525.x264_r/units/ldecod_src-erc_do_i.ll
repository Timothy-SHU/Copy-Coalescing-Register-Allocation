; ModuleID = 'ldecod_src/erc_do_i.c'
source_filename = "ldecod_src/erc_do_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ercVariables_s = type { i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32 }
%struct.frame_s = type { ptr, ptr, ptr, ptr }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @ercConcealIntraFrame(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %4, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.ercVariables_s, ptr %4, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ercVariables_s, ptr %4, i64 0, i32 9
  %13 = load i32, ptr %12, align 4, !tbaa !40
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = ashr i32 %3, 3
  %17 = ashr i32 %2, 3
  %18 = getelementptr inbounds %struct.ercVariables_s, ptr %4, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  tail call fastcc void @concealBlocks(ptr noundef %0, i32 noundef %17, i32 noundef %16, i32 noundef 0, ptr noundef %1, i32 noundef %2, ptr noundef %19)
  %20 = ashr i32 %3, 4
  %21 = ashr i32 %2, 4
  %22 = getelementptr inbounds %struct.ercVariables_s, ptr %4, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  tail call fastcc void @concealBlocks(ptr noundef %0, i32 noundef %21, i32 noundef %20, i32 noundef 1, ptr noundef %1, i32 noundef %2, ptr noundef %23)
  %24 = getelementptr inbounds %struct.ercVariables_s, ptr %4, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  tail call fastcc void @concealBlocks(ptr noundef %0, i32 noundef %21, i32 noundef %20, i32 noundef 2, ptr noundef %1, i32 noundef %2, ptr noundef %25)
  br label %26

26:                                               ; preds = %5, %7, %11, %15
  %27 = phi i32 [ 1, %15 ], [ 1, %11 ], [ 0, %7 ], [ 0, %5 ]
  ret i32 %27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @concealBlocks(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef %6) unnamed_addr #0 {
  %8 = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #7
  %9 = icmp eq i32 %3, 0
  %10 = select i1 %9, i32 2, i32 1
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %196

12:                                               ; preds = %7
  %13 = icmp sgt i32 %2, 0
  %14 = getelementptr inbounds %struct.frame_s, ptr %4, i64 0, i32 3
  %15 = ashr i32 %5, 1
  %16 = getelementptr inbounds %struct.frame_s, ptr %4, i64 0, i32 2
  %17 = ashr i32 %5, 1
  %18 = getelementptr inbounds %struct.frame_s, ptr %4, i64 0, i32 1
  %19 = getelementptr inbounds %struct.frame_s, ptr %4, i64 0, i32 3
  %20 = ashr i32 %5, 1
  %21 = getelementptr inbounds %struct.frame_s, ptr %4, i64 0, i32 2
  %22 = ashr i32 %5, 1
  %23 = getelementptr inbounds %struct.frame_s, ptr %4, i64 0, i32 1
  %24 = getelementptr inbounds %struct.frame_s, ptr %4, i64 0, i32 3
  %25 = ashr i32 %5, 1
  %26 = getelementptr inbounds %struct.frame_s, ptr %4, i64 0, i32 2
  %27 = ashr i32 %5, 1
  %28 = getelementptr inbounds %struct.frame_s, ptr %4, i64 0, i32 1
  %29 = zext nneg i32 %10 to i64
  %30 = zext nneg i32 %1 to i64
  %31 = sext i32 %2 to i64
  %32 = zext nneg i32 %1 to i64
  %33 = zext nneg i32 %1 to i64
  %34 = sext i32 %2 to i64
  %35 = zext nneg i32 %1 to i64
  %36 = zext nneg i32 %1 to i64
  %37 = getelementptr i8, ptr %6, i64 %33
  br label %38

38:                                               ; preds = %12, %193
  %39 = phi i64 [ 0, %12 ], [ %194, %193 ]
  br i1 %13, label %40, label %193

40:                                               ; preds = %38
  %41 = getelementptr i8, ptr %6, i64 %39
  %42 = getelementptr i8, ptr %6, i64 %39
  %43 = trunc i64 %39 to i32
  %44 = trunc i64 %39 to i32
  %45 = trunc i64 %39 to i32
  %46 = trunc i64 %39 to i32
  %47 = getelementptr i8, ptr %6, i64 %39
  %48 = trunc i64 %39 to i32
  %49 = trunc i64 %39 to i32
  %50 = trunc i64 %39 to i32
  %51 = trunc i64 %39 to i32
  %52 = getelementptr i8, ptr %6, i64 %39
  %53 = trunc i64 %39 to i32
  %54 = trunc i64 %39 to i32
  %55 = trunc i64 %39 to i32
  %56 = trunc i64 %39 to i32
  %57 = trunc i64 %39 to i32
  %58 = getelementptr i8, ptr %6, i64 %39
  %59 = trunc i64 %39 to i32
  br label %60

60:                                               ; preds = %40, %189
  %61 = phi i32 [ %191, %189 ], [ 0, %40 ]
  %62 = mul nsw i32 %61, %1
  %63 = sext i32 %62 to i64
  %64 = getelementptr i8, ptr %41, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !44
  %66 = icmp slt i8 %65, 2
  br i1 %66, label %67, label %189

67:                                               ; preds = %60
  %68 = sext i32 %61 to i64
  br label %69

69:                                               ; preds = %67, %73
  %70 = phi i64 [ %68, %67 ], [ %71, %73 ]
  %71 = add i64 %70, %29
  %72 = icmp slt i64 %71, %31
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = mul nsw i64 %71, %30
  %75 = getelementptr i8, ptr %42, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !44
  %77 = icmp sgt i8 %76, 1
  br i1 %77, label %78, label %69, !llvm.loop !45

78:                                               ; preds = %73, %69
  %79 = phi i64 [ %71, %69 ], [ %70, %73 ]
  %80 = trunc i64 %79 to i32
  %81 = icmp slt i32 %80, %2
  br i1 %81, label %115, label %82

82:                                               ; preds = %78
  %83 = icmp slt i32 %61, %2
  br i1 %83, label %84, label %189

84:                                               ; preds = %82
  %85 = sext i32 %61 to i64
  br label %86

86:                                               ; preds = %84, %111
  %87 = phi i64 [ %85, %84 ], [ %113, %111 ]
  %88 = trunc i64 %87 to i32
  %89 = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %8, i32 noundef %88, i32 noundef %43, ptr noundef %6, i32 noundef %2, i32 noundef %1, i32 noundef %10, i8 noundef zeroext 1)
  switch i32 %3, label %99 [
    i32 0, label %90
    i32 1, label %93
    i32 2, label %96
  ]

90:                                               ; preds = %86
  %91 = load ptr, ptr %18, align 8, !tbaa !48
  %92 = trunc i64 %87 to i32
  call void @ercPixConcealIMB(ptr noundef %0, ptr noundef %91, i32 noundef %92, i32 noundef %46, ptr noundef nonnull %8, i32 noundef %5, i32 noundef 2)
  br label %100

93:                                               ; preds = %86
  %94 = load ptr, ptr %16, align 8, !tbaa !50
  %95 = trunc i64 %87 to i32
  call void @ercPixConcealIMB(ptr noundef %0, ptr noundef %94, i32 noundef %95, i32 noundef %45, ptr noundef nonnull %8, i32 noundef %17, i32 noundef 1)
  br label %100

96:                                               ; preds = %86
  %97 = load ptr, ptr %14, align 8, !tbaa !51
  %98 = trunc i64 %87 to i32
  call void @ercPixConcealIMB(ptr noundef %0, ptr noundef %97, i32 noundef %98, i32 noundef %44, ptr noundef nonnull %8, i32 noundef %15, i32 noundef 1)
  br label %100

99:                                               ; preds = %86, %153, %119
  unreachable

100:                                              ; preds = %96, %93, %90
  br i1 %9, label %101, label %108

101:                                              ; preds = %100
  %102 = mul nsw i64 %87, %32
  %103 = add nsw i64 %102, %39
  %104 = getelementptr inbounds i8, ptr %6, i64 %103
  store i8 2, ptr %104, align 1, !tbaa !44
  %105 = getelementptr i8, ptr %104, i64 1
  store i8 2, ptr %105, align 1, !tbaa !44
  %106 = getelementptr i8, ptr %37, i64 %103
  store i8 2, ptr %106, align 1, !tbaa !44
  %107 = getelementptr i8, ptr %106, i64 1
  br label %111

108:                                              ; preds = %100
  %109 = mul nsw i64 %87, %35
  %110 = getelementptr i8, ptr %47, i64 %109
  br label %111

111:                                              ; preds = %101, %108
  %112 = phi ptr [ %107, %101 ], [ %110, %108 ]
  store i8 2, ptr %112, align 1, !tbaa !44
  %113 = add i64 %87, %29
  %114 = icmp slt i64 %113, %34
  br i1 %114, label %86, label %189, !llvm.loop !52

115:                                              ; preds = %78
  %116 = icmp eq i32 %61, 0
  br i1 %116, label %117, label %148

117:                                              ; preds = %115
  %118 = icmp sgt i32 %80, -1
  br i1 %118, label %119, label %146

119:                                              ; preds = %117, %142
  %120 = phi i32 [ %144, %142 ], [ %80, %117 ]
  %121 = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %8, i32 noundef %120, i32 noundef %54, ptr noundef %6, i32 noundef %2, i32 noundef %1, i32 noundef %10, i8 noundef zeroext 1)
  switch i32 %3, label %99 [
    i32 0, label %122
    i32 1, label %124
    i32 2, label %126
  ]

122:                                              ; preds = %119
  %123 = load ptr, ptr %28, align 8, !tbaa !48
  call void @ercPixConcealIMB(ptr noundef %0, ptr noundef %123, i32 noundef %120, i32 noundef %57, ptr noundef nonnull %8, i32 noundef %5, i32 noundef 2)
  br label %128

124:                                              ; preds = %119
  %125 = load ptr, ptr %26, align 8, !tbaa !50
  call void @ercPixConcealIMB(ptr noundef %0, ptr noundef %125, i32 noundef %120, i32 noundef %56, ptr noundef nonnull %8, i32 noundef %27, i32 noundef 1)
  br label %128

126:                                              ; preds = %119
  %127 = load ptr, ptr %24, align 8, !tbaa !51
  call void @ercPixConcealIMB(ptr noundef %0, ptr noundef %127, i32 noundef %120, i32 noundef %55, ptr noundef nonnull %8, i32 noundef %25, i32 noundef 1)
  br label %128

128:                                              ; preds = %126, %124, %122
  %129 = mul nsw i32 %120, %1
  br i1 %9, label %130, label %139

130:                                              ; preds = %128
  %131 = add nsw i32 %129, %59
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, ptr %6, i64 %132
  store i8 2, ptr %133, align 1, !tbaa !44
  %134 = getelementptr i8, ptr %133, i64 1
  store i8 2, ptr %134, align 1, !tbaa !44
  %135 = add nsw i32 %131, %1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, ptr %6, i64 %136
  store i8 2, ptr %137, align 1, !tbaa !44
  %138 = getelementptr i8, ptr %137, i64 1
  br label %142

139:                                              ; preds = %128
  %140 = sext i32 %129 to i64
  %141 = getelementptr i8, ptr %58, i64 %140
  br label %142

142:                                              ; preds = %130, %139
  %143 = phi ptr [ %138, %130 ], [ %141, %139 ]
  store i8 2, ptr %143, align 1, !tbaa !44
  %144 = sub nsw i32 %120, %10
  %145 = icmp sgt i32 %144, -1
  br i1 %145, label %119, label %146, !llvm.loop !53

146:                                              ; preds = %142, %117
  %147 = add nsw i32 %10, %80
  br label %189

148:                                              ; preds = %115
  %149 = add nsw i32 %10, %80
  %150 = sub i32 %10, %61
  %151 = add i32 %150, %80
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %189

153:                                              ; preds = %148, %185
  %154 = phi i32 [ %187, %185 ], [ 0, %148 ]
  %155 = phi i32 [ %162, %185 ], [ %61, %148 ]
  %156 = phi i32 [ %160, %185 ], [ %80, %148 ]
  %157 = and i32 %154, 1
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %158, i32 0, i32 %10
  %160 = sub nsw i32 %156, %159
  %161 = select i1 %158, i32 %10, i32 0
  %162 = add nsw i32 %161, %155
  %163 = select i1 %158, i32 %155, i32 %156
  %164 = call i32 @ercCollect8PredBlocks(ptr noundef nonnull %8, i32 noundef %163, i32 noundef %48, ptr noundef %6, i32 noundef %2, i32 noundef %1, i32 noundef %10, i8 noundef zeroext 1)
  switch i32 %3, label %99 [
    i32 0, label %165
    i32 1, label %167
    i32 2, label %169
  ]

165:                                              ; preds = %153
  %166 = load ptr, ptr %23, align 8, !tbaa !48
  call void @ercPixConcealIMB(ptr noundef %0, ptr noundef %166, i32 noundef %163, i32 noundef %51, ptr noundef nonnull %8, i32 noundef %5, i32 noundef 2)
  br label %171

167:                                              ; preds = %153
  %168 = load ptr, ptr %21, align 8, !tbaa !50
  call void @ercPixConcealIMB(ptr noundef %0, ptr noundef %168, i32 noundef %163, i32 noundef %50, ptr noundef nonnull %8, i32 noundef %22, i32 noundef 1)
  br label %171

169:                                              ; preds = %153
  %170 = load ptr, ptr %19, align 8, !tbaa !51
  call void @ercPixConcealIMB(ptr noundef %0, ptr noundef %170, i32 noundef %163, i32 noundef %49, ptr noundef nonnull %8, i32 noundef %20, i32 noundef 1)
  br label %171

171:                                              ; preds = %169, %167, %165
  %172 = mul nsw i32 %163, %1
  br i1 %9, label %173, label %182

173:                                              ; preds = %171
  %174 = add nsw i32 %172, %53
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, ptr %6, i64 %175
  store i8 2, ptr %176, align 1, !tbaa !44
  %177 = getelementptr i8, ptr %176, i64 1
  store i8 2, ptr %177, align 1, !tbaa !44
  %178 = add nsw i32 %174, %1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, ptr %6, i64 %179
  store i8 2, ptr %180, align 1, !tbaa !44
  %181 = getelementptr i8, ptr %180, i64 1
  br label %185

182:                                              ; preds = %171
  %183 = sext i32 %172 to i64
  %184 = getelementptr i8, ptr %52, i64 %183
  br label %185

185:                                              ; preds = %173, %182
  %186 = phi ptr [ %181, %173 ], [ %184, %182 ]
  store i8 2, ptr %186, align 1, !tbaa !44
  %187 = add nuw nsw i32 %154, %10
  %188 = icmp slt i32 %187, %151
  br i1 %188, label %153, label %189, !llvm.loop !54

189:                                              ; preds = %111, %185, %82, %148, %146, %60
  %190 = phi i32 [ %61, %60 ], [ %147, %146 ], [ %149, %148 ], [ %2, %82 ], [ %149, %185 ], [ %2, %111 ]
  %191 = add nsw i32 %190, %10
  %192 = icmp slt i32 %191, %2
  br i1 %192, label %60, label %193, !llvm.loop !55

193:                                              ; preds = %189, %38
  %194 = add i64 %39, %29
  %195 = icmp slt i64 %194, %36
  br i1 %195, label %38, label %196, !llvm.loop !56

196:                                              ; preds = %193, %7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercPixConcealIMB(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
  %8 = getelementptr inbounds i32, ptr %4, i64 4
  %9 = load i32, ptr %8, align 4, !tbaa !57
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = sub nsw i32 %2, %6
  %13 = shl i32 %5, 3
  %14 = mul i32 %13, %12
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i16, ptr %1, i64 %15
  %17 = shl nsw i32 %3, 3
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, ptr %16, i64 %18
  br label %20

20:                                               ; preds = %11, %7
  %21 = phi ptr [ null, %7 ], [ %19, %11 ]
  %22 = getelementptr inbounds i32, ptr %4, i64 5
  %23 = load i32, ptr %22, align 4, !tbaa !57
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  %26 = mul nsw i32 %5, %2
  %27 = shl nsw i32 %26, 3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, ptr %1, i64 %28
  %30 = sub nsw i32 %3, %6
  %31 = shl nsw i32 %30, 3
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i16, ptr %29, i64 %32
  br label %34

34:                                               ; preds = %25, %20
  %35 = phi ptr [ null, %20 ], [ %33, %25 ]
  %36 = getelementptr inbounds i32, ptr %4, i64 6
  %37 = load i32, ptr %36, align 4, !tbaa !57
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = add nsw i32 %6, %2
  %41 = shl i32 %5, 3
  %42 = mul i32 %41, %40
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i16, ptr %1, i64 %43
  %45 = shl nsw i32 %3, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i16, ptr %44, i64 %46
  br label %48

48:                                               ; preds = %39, %34
  %49 = phi ptr [ null, %34 ], [ %47, %39 ]
  %50 = getelementptr inbounds i32, ptr %4, i64 7
  %51 = load i32, ptr %50, align 4, !tbaa !57
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %48
  %54 = mul nsw i32 %5, %2
  %55 = shl nsw i32 %54, 3
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i16, ptr %1, i64 %56
  %58 = add nsw i32 %6, %3
  %59 = shl nsw i32 %58, 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i16, ptr %57, i64 %60
  br label %62

62:                                               ; preds = %53, %48
  %63 = phi ptr [ null, %48 ], [ %61, %53 ]
  %64 = mul nsw i32 %5, %2
  %65 = shl nsw i32 %64, 3
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i16, ptr %1, i64 %66
  %68 = shl nsw i32 %3, 3
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i16, ptr %67, i64 %69
  %71 = icmp sgt i32 %6, 0
  br i1 %71, label %72, label %169

72:                                               ; preds = %62
  %73 = shl i32 %6, 3
  %74 = add nsw i32 %73, -1
  %75 = icmp eq ptr %21, null
  %76 = mul nsw i32 %74, %5
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i16, ptr %21, i64 %77
  %79 = icmp eq ptr %35, null
  %80 = sext i32 %74 to i64
  %81 = getelementptr i16, ptr %35, i64 %80
  %82 = icmp eq ptr %49, null
  %83 = icmp eq ptr %63, null
  %84 = icmp eq i32 %6, 1
  %85 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69, i64 1
  %86 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 69
  %87 = select i1 %84, ptr %85, ptr %86
  %88 = zext i32 %73 to i64
  %89 = tail call i32 @llvm.smax.i32(i32 %73, i32 1)
  %90 = sext i32 %5 to i64
  %91 = sext i32 %5 to i64
  %92 = zext i32 %73 to i64
  %93 = tail call i32 @llvm.smax.i32(i32 %73, i32 1)
  %94 = zext nneg i32 %93 to i64
  %95 = zext nneg i32 %89 to i64
  br label %96

96:                                               ; preds = %72, %165
  %97 = phi i64 [ 0, %72 ], [ %166, %165 ]
  %98 = phi i64 [ 0, %72 ], [ %167, %165 ]
  %99 = sub nsw i64 %92, %98
  %100 = mul nsw i64 %98, %91
  %101 = getelementptr i16, ptr %81, i64 %100
  %102 = add nuw nsw i64 %98, 1
  %103 = mul nsw i64 %98, %90
  %104 = getelementptr inbounds i16, ptr %63, i64 %103
  %105 = trunc i64 %99 to i32
  %106 = trunc i64 %99 to i32
  %107 = trunc i64 %102 to i32
  %108 = trunc i64 %102 to i32
  %109 = getelementptr i16, ptr %70, i64 %97
  br label %110

110:                                              ; preds = %96, %160
  %111 = phi i64 [ 0, %96 ], [ %163, %160 ]
  br i1 %75, label %117, label %112

112:                                              ; preds = %110
  %113 = getelementptr inbounds i16, ptr %78, i64 %111
  %114 = load i16, ptr %113, align 2, !tbaa !58
  %115 = zext i16 %114 to i32
  %116 = mul nsw i32 %106, %115
  br label %117

117:                                              ; preds = %112, %110
  %118 = phi i32 [ %116, %112 ], [ 0, %110 ]
  %119 = phi i32 [ %105, %112 ], [ 0, %110 ]
  br i1 %79, label %129, label %120

120:                                              ; preds = %117
  %121 = sub nsw i64 %88, %111
  %122 = load i16, ptr %101, align 2, !tbaa !58
  %123 = zext i16 %122 to i32
  %124 = trunc i64 %121 to i32
  %125 = mul nsw i32 %124, %123
  %126 = add nsw i32 %125, %118
  %127 = trunc i64 %121 to i32
  %128 = add nsw i32 %119, %127
  br label %129

129:                                              ; preds = %120, %117
  %130 = phi i32 [ %126, %120 ], [ %118, %117 ]
  %131 = phi i32 [ %128, %120 ], [ %119, %117 ]
  br i1 %82, label %139, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds i16, ptr %49, i64 %111
  %134 = load i16, ptr %133, align 2, !tbaa !58
  %135 = zext i16 %134 to i32
  %136 = mul nsw i32 %107, %135
  %137 = add nsw i32 %136, %130
  %138 = add nsw i32 %131, %108
  br label %139

139:                                              ; preds = %132, %129
  %140 = phi i32 [ %137, %132 ], [ %130, %129 ]
  %141 = phi i32 [ %138, %132 ], [ %131, %129 ]
  br i1 %83, label %151, label %142

142:                                              ; preds = %139
  %143 = add nuw nsw i64 %111, 1
  %144 = load i16, ptr %104, align 2, !tbaa !58
  %145 = zext i16 %144 to i32
  %146 = trunc i64 %143 to i32
  %147 = mul nsw i32 %146, %145
  %148 = add nsw i32 %147, %140
  %149 = trunc i64 %143 to i32
  %150 = add nsw i32 %141, %149
  br label %151

151:                                              ; preds = %142, %139
  %152 = phi i32 [ %148, %142 ], [ %140, %139 ]
  %153 = phi i32 [ %150, %142 ], [ %141, %139 ]
  %154 = icmp sgt i32 %153, 0
  %155 = getelementptr i16, ptr %109, i64 %111
  br i1 %154, label %156, label %158

156:                                              ; preds = %151
  %157 = sdiv i32 %152, %153
  br label %160

158:                                              ; preds = %151
  %159 = load i32, ptr %87, align 4, !tbaa !57
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i32 [ %159, %158 ], [ %157, %156 ]
  %162 = trunc i32 %161 to i16
  store i16 %162, ptr %155, align 2, !tbaa !58
  %163 = add nuw nsw i64 %111, 1
  %164 = icmp eq i64 %163, %95
  br i1 %164, label %165, label %110, !llvm.loop !60

165:                                              ; preds = %160
  %166 = add i64 %97, %90
  %167 = add nuw nsw i64 %98, 1
  %168 = icmp eq i64 %167, %94
  br i1 %168, label %169, label %96, !llvm.loop !61

169:                                              ; preds = %165, %62
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @ercCollect8PredBlocks(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i8 noundef zeroext %7) local_unnamed_addr #4 {
  %9 = icmp eq i8 %7, 0
  %10 = select i1 %9, i32 4, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %11 = icmp sgt i32 %1, 0
  %12 = sub nsw i32 %4, %6
  %13 = icmp sgt i32 %12, %1
  %14 = icmp sgt i32 %2, 0
  %15 = getelementptr i8, ptr %3, i64 -1
  %16 = getelementptr i8, ptr %3, i64 -1
  %17 = getelementptr i8, ptr %3, i64 -1
  %18 = sub nsw i32 %5, %6
  %19 = icmp sgt i32 %18, %2
  %20 = add nsw i32 %1, -1
  %21 = mul nsw i32 %20, %5
  %22 = add nsw i32 %21, %2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %3, i64 %23
  %25 = getelementptr inbounds i32, ptr %0, i64 4
  %26 = add nsw i32 %6, %1
  %27 = mul nsw i32 %26, %5
  %28 = add nsw i32 %27, %2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, ptr %3, i64 %29
  %31 = getelementptr inbounds i32, ptr %0, i64 6
  %32 = mul nsw i32 %5, %1
  %33 = add nsw i32 %32, %2
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, ptr %15, i64 %34
  %36 = getelementptr inbounds i32, ptr %0, i64 5
  %37 = add nsw i32 %1, -1
  %38 = mul nsw i32 %37, %5
  %39 = add nsw i32 %38, %2
  %40 = sext i32 %39 to i64
  %41 = getelementptr i8, ptr %16, i64 %40
  %42 = getelementptr inbounds i32, ptr %0, i64 1
  %43 = add nsw i32 %6, %1
  %44 = mul nsw i32 %43, %5
  %45 = add nsw i32 %44, %2
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, ptr %17, i64 %46
  %48 = getelementptr inbounds i32, ptr %0, i64 2
  %49 = mul nsw i32 %5, %1
  %50 = add nsw i32 %49, %2
  %51 = add nsw i32 %50, %6
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %3, i64 %52
  %54 = getelementptr inbounds i32, ptr %0, i64 7
  %55 = add nsw i32 %1, -1
  %56 = mul nsw i32 %55, %5
  %57 = add nsw i32 %56, %2
  %58 = add nsw i32 %57, %6
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %3, i64 %59
  %61 = add nsw i32 %6, %1
  %62 = mul nsw i32 %61, %5
  %63 = add i32 %6, %2
  %64 = add i32 %63, %62
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %3, i64 %65
  %67 = getelementptr inbounds i32, ptr %0, i64 3
  br label %68

68:                                               ; preds = %134, %8
  %69 = phi i1 [ true, %8 ], [ false, %134 ]
  %70 = phi i32 [ 3, %8 ], [ 2, %134 ]
  br i1 %11, label %71, label %76

71:                                               ; preds = %68
  %72 = load i8, ptr %24, align 1, !tbaa !44
  %73 = sext i8 %72 to i32
  %74 = icmp sgt i32 %70, %73
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  store i32 %73, ptr %25, align 4, !tbaa !57
  br label %76

76:                                               ; preds = %75, %71, %68
  %77 = phi i32 [ 1, %75 ], [ 0, %71 ], [ 0, %68 ]
  br i1 %13, label %78, label %84

78:                                               ; preds = %76
  %79 = load i8, ptr %30, align 1, !tbaa !44
  %80 = sext i8 %79 to i32
  %81 = icmp sgt i32 %70, %80
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  store i32 %80, ptr %31, align 4, !tbaa !57
  %83 = add nuw nsw i32 %77, 1
  br label %84

84:                                               ; preds = %82, %78, %76
  %85 = phi i32 [ %83, %82 ], [ %77, %78 ], [ %77, %76 ]
  br i1 %14, label %86, label %109

86:                                               ; preds = %84
  %87 = load i8, ptr %35, align 1, !tbaa !44
  %88 = sext i8 %87 to i32
  %89 = icmp sgt i32 %70, %88
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  store i32 %88, ptr %36, align 4, !tbaa !57
  %91 = add nuw nsw i32 %85, 1
  br label %92

92:                                               ; preds = %90, %86
  %93 = phi i32 [ %91, %90 ], [ %85, %86 ]
  br i1 %9, label %94, label %109

94:                                               ; preds = %92
  br i1 %11, label %95, label %101

95:                                               ; preds = %94
  %96 = load i8, ptr %41, align 1, !tbaa !44
  %97 = sext i8 %96 to i32
  %98 = icmp sgt i32 %70, %97
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  store i32 %97, ptr %42, align 4, !tbaa !57
  %100 = add nsw i32 %93, 1
  br label %101

101:                                              ; preds = %99, %95, %94
  %102 = phi i32 [ %100, %99 ], [ %93, %95 ], [ %93, %94 ]
  br i1 %13, label %103, label %109

103:                                              ; preds = %101
  %104 = load i8, ptr %47, align 1, !tbaa !44
  %105 = sext i8 %104 to i32
  %106 = icmp sgt i32 %70, %105
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  store i32 %105, ptr %48, align 4, !tbaa !57
  %108 = add nsw i32 %102, 1
  br label %109

109:                                              ; preds = %92, %107, %103, %101, %84
  %110 = phi i32 [ %93, %92 ], [ %108, %107 ], [ %102, %103 ], [ %102, %101 ], [ %85, %84 ]
  br i1 %19, label %111, label %134

111:                                              ; preds = %109
  %112 = load i8, ptr %53, align 1, !tbaa !44
  %113 = sext i8 %112 to i32
  %114 = icmp sgt i32 %70, %113
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  store i32 %113, ptr %54, align 4, !tbaa !57
  %116 = add nsw i32 %110, 1
  br label %117

117:                                              ; preds = %115, %111
  %118 = phi i32 [ %116, %115 ], [ %110, %111 ]
  br i1 %9, label %119, label %134

119:                                              ; preds = %117
  br i1 %11, label %120, label %126

120:                                              ; preds = %119
  %121 = load i8, ptr %60, align 1, !tbaa !44
  %122 = sext i8 %121 to i32
  %123 = icmp sgt i32 %70, %122
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  store i32 %122, ptr %0, align 4, !tbaa !57
  %125 = add nsw i32 %118, 1
  br label %126

126:                                              ; preds = %124, %120, %119
  %127 = phi i32 [ %125, %124 ], [ %118, %120 ], [ %118, %119 ]
  br i1 %13, label %128, label %134

128:                                              ; preds = %126
  %129 = load i8, ptr %66, align 1, !tbaa !44
  %130 = sext i8 %129 to i32
  %131 = icmp sgt i32 %70, %130
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  store i32 %130, ptr %67, align 4, !tbaa !57
  %133 = add nsw i32 %127, 1
  br label %134

134:                                              ; preds = %117, %132, %128, %126, %109
  %135 = phi i32 [ %118, %117 ], [ %133, %132 ], [ %127, %128 ], [ %127, %126 ], [ %110, %109 ]
  %136 = icmp slt i32 %135, %10
  %137 = select i1 %69, i1 %136, i1 false
  br i1 %137, label %68, label %138, !llvm.loop !62

138:                                              ; preds = %134
  ret i32 %135
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @ercCollectColumnBlocks(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %8 = add nsw i32 %1, -1
  %9 = mul nsw i32 %8, %5
  %10 = add nsw i32 %9, %2
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %3, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !44
  %14 = icmp sgt i8 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = getelementptr inbounds i32, ptr %0, i64 4
  store i32 1, ptr %16, align 4, !tbaa !57
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi i32 [ 1, %15 ], [ 0, %7 ]
  %19 = add nsw i32 %6, %1
  %20 = mul nsw i32 %19, %5
  %21 = add nsw i32 %20, %2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %3, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !44
  %25 = icmp sgt i8 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = getelementptr inbounds i32, ptr %0, i64 6
  store i32 1, ptr %27, align 4, !tbaa !57
  %28 = add nuw nsw i32 %18, 1
  br label %29

29:                                               ; preds = %26, %17
  %30 = phi i32 [ %28, %26 ], [ %18, %17 ]
  ret i32 %30
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!34 = !{!35, !36, i64 64}
!35 = !{!"ercVariables_s", !36, i64 0, !36, i64 4, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !36, i64 40, !39, i64 48, !36, i64 56, !36, i64 60, !36, i64 64}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!35, !36, i64 60}
!41 = !{!35, !39, i64 8}
!42 = !{!35, !39, i64 16}
!43 = !{!35, !39, i64 24}
!44 = !{!37, !37, i64 0}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!49, !39, i64 8}
!49 = !{!"frame_s", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!50 = !{!49, !39, i64 16}
!51 = !{!49, !39, i64 24}
!52 = distinct !{!52, !46, !47}
!53 = distinct !{!53, !46, !47}
!54 = distinct !{!54, !46, !47}
!55 = distinct !{!55, !46, !47}
!56 = distinct !{!56, !46, !47}
!57 = !{!36, !36, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"short", !37, i64 0}
!60 = distinct !{!60, !46, !47}
!61 = distinct !{!61, !46, !47}
!62 = distinct !{!62, !46, !47}
