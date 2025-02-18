; ModuleID = 'ldecod_src/fmo.c'
source_filename = "ldecod_src/fmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [68 x i8] c"wrong pps->pic_size_in_map_units_minus1 for used SPS and FMO type 6\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"cannot allocated %d bytes for p_Vid->MapUnitToSliceGroupMap, exit\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Illegal slice_group_map_type %d , exit \0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"cannot allocate %d bytes for p_Vid->MbToSliceGroupMap, exit\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fmo_init(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 29
  %8 = load i32, ptr %7, align 4, !tbaa !46
  %9 = add i32 %8, 1
  %10 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %6, i64 0, i32 28
  %11 = load i32, ptr %10, align 4, !tbaa !50
  %12 = add i32 %11, 1
  %13 = mul i32 %12, %9
  %14 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %4, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !51
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %4, i64 0, i32 19
  %19 = load i32, ptr %18, align 4, !tbaa !53
  %20 = add i32 %19, 1
  %21 = icmp eq i32 %20, %13
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #12
  br label %23

23:                                               ; preds = %22, %17, %2
  %24 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 156
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @free(ptr noundef %25) #12
  br label %28

28:                                               ; preds = %27, %23
  %29 = zext i32 %13 to i64
  %30 = shl nuw nsw i64 %29, 2
  %31 = tail call noalias ptr @malloc(i64 noundef %30) #13
  store ptr %31, ptr %24, align 8, !tbaa !54
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %4, i64 0, i32 19
  %35 = load i32, ptr %34, align 4, !tbaa !53
  %36 = shl i32 %35, 2
  %37 = add i32 %36, 4
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %37)
  tail call void @exit(i32 noundef -1) #14
  unreachable

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %4, i64 0, i32 12
  %41 = load i32, ptr %40, align 4, !tbaa !55
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = shl i64 %29, 34
  %45 = ashr exact i64 %44, 32
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %31, i8 0, i64 %45, i1 false)
  br label %364

46:                                               ; preds = %39
  %47 = load i32, ptr %14, align 8, !tbaa !51
  switch i32 %47, label %362 [
    i32 0, label %48
    i32 1, label %87
    i32 2, label %110
    i32 3, label %162
    i32 4, label %269
    i32 5, label %296
    i32 6, label %347
  ]

48:                                               ; preds = %46
  %49 = load ptr, ptr %3, align 8, !tbaa !34
  %50 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %49, i64 0, i32 12
  br label %51

51:                                               ; preds = %84, %48
  %52 = phi i32 [ 0, %48 ], [ %85, %84 ]
  %53 = icmp ult i32 %52, %13
  br i1 %53, label %54, label %84

54:                                               ; preds = %51, %75
  %55 = phi i32 [ %79, %75 ], [ %52, %51 ]
  %56 = phi i32 [ %77, %75 ], [ 0, %51 ]
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %49, i64 0, i32 14, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !56
  %60 = zext i32 %55 to i64
  %61 = tail call i32 @llvm.usub.sat.i32(i32 %13, i32 %55)
  %62 = zext i32 %61 to i64
  %63 = icmp ugt i32 %13, %55
  br i1 %63, label %64, label %75

64:                                               ; preds = %54
  %65 = getelementptr i32, ptr %31, i64 %60
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi i64 [ %69, %66 ], [ 0, %64 ]
  %68 = getelementptr i32, ptr %65, i64 %67
  store i32 %56, ptr %68, align 4, !tbaa !56
  %69 = add nuw nsw i64 %67, 1
  %70 = trunc i64 %69 to i32
  %71 = load i32, ptr %58, align 4, !tbaa !56
  %72 = icmp ult i32 %71, %70
  %73 = icmp eq i64 %69, %62
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %75, label %66, !llvm.loop !57

75:                                               ; preds = %66, %54
  %76 = phi i32 [ %59, %54 ], [ %71, %66 ]
  %77 = add i32 %56, 1
  %78 = add i32 %55, 1
  %79 = add i32 %78, %76
  %80 = load i32, ptr %50, align 4, !tbaa !55
  %81 = icmp ule i32 %77, %80
  %82 = icmp ult i32 %79, %13
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %54, label %84, !llvm.loop !60

84:                                               ; preds = %75, %51
  %85 = phi i32 [ %52, %51 ], [ %79, %75 ]
  %86 = phi i1 [ %53, %51 ], [ %82, %75 ]
  br i1 %86, label %51, label %364, !llvm.loop !61

87:                                               ; preds = %46
  %88 = icmp eq i32 %13, 0
  br i1 %88, label %364, label %89

89:                                               ; preds = %87
  %90 = load ptr, ptr %3, align 8, !tbaa !34
  %91 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %92 = load i32, ptr %91, align 4, !tbaa !62
  %93 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %90, i64 0, i32 12
  %94 = zext i32 %13 to i64
  br label %95

95:                                               ; preds = %89, %95
  %96 = phi i64 [ 0, %89 ], [ %108, %95 ]
  %97 = trunc i64 %96 to i32
  %98 = urem i32 %97, %92
  %99 = trunc i64 %96 to i32
  %100 = udiv i32 %99, %92
  %101 = load i32, ptr %93, align 4, !tbaa !55
  %102 = add i32 %101, 1
  %103 = mul i32 %102, %100
  %104 = lshr i32 %103, 1
  %105 = add i32 %104, %98
  %106 = urem i32 %105, %102
  %107 = getelementptr inbounds i32, ptr %31, i64 %96
  store i32 %106, ptr %107, align 4, !tbaa !56
  %108 = add nuw nsw i64 %96, 1
  %109 = icmp eq i64 %108, %94
  br i1 %109, label %364, label %95, !llvm.loop !63

110:                                              ; preds = %46
  %111 = load ptr, ptr %3, align 8, !tbaa !34
  %112 = icmp eq i32 %13, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %111, i64 0, i32 12
  %115 = zext i32 %13 to i64
  br label %116

116:                                              ; preds = %113, %116
  %117 = phi i64 [ 0, %113 ], [ %120, %116 ]
  %118 = load i32, ptr %114, align 4, !tbaa !55
  %119 = getelementptr inbounds i32, ptr %31, i64 %117
  store i32 %118, ptr %119, align 4, !tbaa !56
  %120 = add nuw nsw i64 %117, 1
  %121 = icmp eq i64 %120, %115
  br i1 %121, label %122, label %116, !llvm.loop !64

122:                                              ; preds = %116, %110
  %123 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %111, i64 0, i32 12
  %124 = load i32, ptr %123, align 4, !tbaa !55
  %125 = add i32 %124, -1
  %126 = icmp sgt i32 %125, -1
  br i1 %126, label %127, label %364

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %129 = load i32, ptr %128, align 4, !tbaa !62
  %130 = zext nneg i32 %125 to i64
  br label %134

131:                                              ; preds = %159, %134
  %132 = add nsw i64 %135, -1
  %133 = icmp sgt i64 %135, 0
  br i1 %133, label %134, label %364, !llvm.loop !65

134:                                              ; preds = %127, %131
  %135 = phi i64 [ %130, %127 ], [ %132, %131 ]
  %136 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %111, i64 0, i32 15, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !56
  %138 = udiv i32 %137, %129
  %139 = urem i32 %137, %129
  %140 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %111, i64 0, i32 16, i64 %135
  %141 = load i32, ptr %140, align 4, !tbaa !56
  %142 = udiv i32 %141, %129
  %143 = urem i32 %141, %129
  %144 = icmp ugt i32 %138, %142
  br i1 %144, label %131, label %145

145:                                              ; preds = %134
  %146 = icmp ugt i32 %139, %143
  %147 = trunc i64 %135 to i32
  br label %148

148:                                              ; preds = %145, %159
  %149 = phi i32 [ %138, %145 ], [ %160, %159 ]
  br i1 %146, label %159, label %150

150:                                              ; preds = %148
  %151 = mul i32 %149, %129
  br label %152

152:                                              ; preds = %150, %152
  %153 = phi i32 [ %139, %150 ], [ %157, %152 ]
  %154 = add i32 %153, %151
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, ptr %31, i64 %155
  store i32 %147, ptr %156, align 4, !tbaa !56
  %157 = add i32 %153, 1
  %158 = icmp ugt i32 %157, %143
  br i1 %158, label %159, label %152, !llvm.loop !66

159:                                              ; preds = %152, %148
  %160 = add i32 %149, 1
  %161 = icmp ugt i32 %160, %142
  br i1 %161, label %131, label %148, !llvm.loop !67

162:                                              ; preds = %46
  %163 = load ptr, ptr %3, align 8, !tbaa !34
  %164 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %163, i64 0, i32 18
  %165 = load i32, ptr %164, align 8, !tbaa !68
  %166 = add i32 %165, 1
  %167 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 49
  %168 = load i32, ptr %167, align 4, !tbaa !69
  %169 = mul i32 %166, %168
  %170 = tail call i32 @llvm.smin.i32(i32 %169, i32 %13)
  %171 = icmp eq i32 %13, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %162
  %173 = zext i32 %13 to i64
  br label %174

174:                                              ; preds = %172, %174
  %175 = phi i64 [ 0, %172 ], [ %177, %174 ]
  %176 = getelementptr inbounds i32, ptr %31, i64 %175
  store i32 2, ptr %176, align 4, !tbaa !56
  %177 = add nuw nsw i64 %175, 1
  %178 = icmp eq i64 %177, %173
  br i1 %178, label %179, label %174, !llvm.loop !72

179:                                              ; preds = %174, %162
  %180 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %181 = load i32, ptr %180, align 4, !tbaa !62
  %182 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %163, i64 0, i32 17
  %183 = icmp eq i32 %13, 0
  br i1 %183, label %364, label %184

184:                                              ; preds = %179
  %185 = load i32, ptr %182, align 4, !tbaa !73
  %186 = add nsw i32 %185, -1
  %187 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 54
  %188 = load i32, ptr %187, align 8, !tbaa !74
  %189 = sub i32 %188, %185
  %190 = lshr i32 %189, 1
  %191 = sub i32 %181, %185
  %192 = lshr i32 %191, 1
  %193 = add nsw i32 %188, -1
  %194 = add nsw i32 %181, -1
  br label %195

195:                                              ; preds = %184, %258
  %196 = phi i32 [ 0, %184 ], [ %267, %258 ]
  %197 = phi i32 [ %185, %184 ], [ %266, %258 ]
  %198 = phi i32 [ %186, %184 ], [ %265, %258 ]
  %199 = phi i32 [ %190, %184 ], [ %264, %258 ]
  %200 = phi i32 [ %192, %184 ], [ %263, %258 ]
  %201 = phi i32 [ %190, %184 ], [ %262, %258 ]
  %202 = phi i32 [ %192, %184 ], [ %261, %258 ]
  %203 = phi i32 [ %190, %184 ], [ %260, %258 ]
  %204 = phi i32 [ %192, %184 ], [ %259, %258 ]
  %205 = mul i32 %199, %181
  %206 = add i32 %205, %200
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i32, ptr %31, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !56
  %210 = icmp eq i32 %209, 2
  %211 = zext i1 %210 to i32
  br i1 %210, label %212, label %215

212:                                              ; preds = %195
  %213 = icmp uge i32 %196, %170
  %214 = zext i1 %213 to i32
  store i32 %214, ptr %208, align 4, !tbaa !56
  br label %215

215:                                              ; preds = %212, %195
  %216 = icmp eq i32 %198, -1
  %217 = icmp eq i32 %200, %204
  %218 = select i1 %216, i1 %217, i1 false
  br i1 %218, label %219, label %225

219:                                              ; preds = %215
  %220 = tail call i32 @llvm.smax.i32(i32 %204, i32 1)
  %221 = add nsw i32 %220, -1
  %222 = load i32, ptr %182, align 4, !tbaa !73
  %223 = shl nsw i32 %222, 1
  %224 = add nsw i32 %223, -1
  br label %258

225:                                              ; preds = %215
  %226 = icmp eq i32 %198, 1
  %227 = icmp eq i32 %200, %202
  %228 = select i1 %226, i1 %227, i1 false
  br i1 %228, label %229, label %235

229:                                              ; preds = %225
  %230 = add nsw i32 %202, 1
  %231 = tail call i32 @llvm.smin.i32(i32 %230, i32 %194)
  %232 = load i32, ptr %182, align 4, !tbaa !73
  %233 = shl nsw i32 %232, 1
  %234 = sub nsw i32 1, %233
  br label %258

235:                                              ; preds = %225
  %236 = icmp eq i32 %197, -1
  %237 = icmp eq i32 %199, %203
  %238 = select i1 %236, i1 %237, i1 false
  br i1 %238, label %239, label %245

239:                                              ; preds = %235
  %240 = tail call i32 @llvm.smax.i32(i32 %203, i32 1)
  %241 = add nsw i32 %240, -1
  %242 = load i32, ptr %182, align 4, !tbaa !73
  %243 = shl nsw i32 %242, 1
  %244 = sub nsw i32 1, %243
  br label %258

245:                                              ; preds = %235
  %246 = icmp eq i32 %197, 1
  %247 = icmp eq i32 %199, %201
  %248 = select i1 %246, i1 %247, i1 false
  br i1 %248, label %249, label %255

249:                                              ; preds = %245
  %250 = add nsw i32 %201, 1
  %251 = tail call i32 @llvm.smin.i32(i32 %250, i32 %193)
  %252 = load i32, ptr %182, align 4, !tbaa !73
  %253 = shl nsw i32 %252, 1
  %254 = add nsw i32 %253, -1
  br label %258

255:                                              ; preds = %245
  %256 = add nsw i32 %198, %200
  %257 = add nsw i32 %197, %199
  br label %258

258:                                              ; preds = %255, %249, %239, %229, %219
  %259 = phi i32 [ %221, %219 ], [ %204, %229 ], [ %204, %239 ], [ %204, %249 ], [ %204, %255 ]
  %260 = phi i32 [ %203, %219 ], [ %203, %229 ], [ %241, %239 ], [ %203, %249 ], [ %203, %255 ]
  %261 = phi i32 [ %202, %219 ], [ %231, %229 ], [ %202, %239 ], [ %202, %249 ], [ %202, %255 ]
  %262 = phi i32 [ %201, %219 ], [ %201, %229 ], [ %201, %239 ], [ %251, %249 ], [ %201, %255 ]
  %263 = phi i32 [ %221, %219 ], [ %231, %229 ], [ %200, %239 ], [ %200, %249 ], [ %256, %255 ]
  %264 = phi i32 [ %199, %219 ], [ %199, %229 ], [ %241, %239 ], [ %251, %249 ], [ %257, %255 ]
  %265 = phi i32 [ 0, %219 ], [ 0, %229 ], [ %244, %239 ], [ %254, %249 ], [ %198, %255 ]
  %266 = phi i32 [ %224, %219 ], [ %234, %229 ], [ 0, %239 ], [ 0, %249 ], [ %197, %255 ]
  %267 = add i32 %196, %211
  %268 = icmp ult i32 %267, %13
  br i1 %268, label %195, label %364, !llvm.loop !75

269:                                              ; preds = %46
  %270 = load ptr, ptr %3, align 8, !tbaa !34
  %271 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %270, i64 0, i32 17
  %272 = icmp eq i32 %13, 0
  br i1 %272, label %364, label %273

273:                                              ; preds = %269
  %274 = load i32, ptr %271, align 4, !tbaa !73
  %275 = icmp eq i32 %274, 0
  %276 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %270, i64 0, i32 18
  %277 = load i32, ptr %276, align 8, !tbaa !68
  %278 = add i32 %277, 1
  %279 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 49
  %280 = load i32, ptr %279, align 4, !tbaa !69
  %281 = mul i32 %278, %280
  %282 = tail call i32 @llvm.smin.i32(i32 %281, i32 %13)
  %283 = sub i32 %13, %282
  %284 = select i1 %275, i32 %282, i32 %283
  %285 = zext i32 %284 to i64
  %286 = zext i32 %13 to i64
  br label %287

287:                                              ; preds = %273, %287
  %288 = phi i64 [ 0, %273 ], [ %294, %287 ]
  %289 = icmp ult i64 %288, %285
  %290 = load i32, ptr %271, align 4, !tbaa !73
  %291 = sub nsw i32 1, %290
  %292 = select i1 %289, i32 %290, i32 %291
  %293 = getelementptr inbounds i32, ptr %31, i64 %288
  store i32 %292, ptr %293, align 4, !tbaa !56
  %294 = add nuw nsw i64 %288, 1
  %295 = icmp eq i64 %294, %286
  br i1 %295, label %364, label %287, !llvm.loop !76

296:                                              ; preds = %46
  %297 = load ptr, ptr %3, align 8, !tbaa !34
  %298 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %297, i64 0, i32 18
  %299 = load i32, ptr %298, align 8, !tbaa !68
  %300 = add i32 %299, 1
  %301 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 49
  %302 = load i32, ptr %301, align 4, !tbaa !69
  %303 = mul i32 %300, %302
  %304 = tail call i32 @llvm.smin.i32(i32 %303, i32 %13)
  %305 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %297, i64 0, i32 17
  %306 = load i32, ptr %305, align 4, !tbaa !73
  %307 = icmp eq i32 %306, 0
  %308 = sub i32 %13, %304
  %309 = select i1 %307, i32 %304, i32 %308
  %310 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %311 = load i32, ptr %310, align 4, !tbaa !62
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %364, label %313

313:                                              ; preds = %296
  %314 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 54
  %315 = load i32, ptr %314, align 8, !tbaa !74
  %316 = icmp eq i32 %315, 0
  %317 = zext i32 %315 to i64
  br label %318

318:                                              ; preds = %313, %343
  %319 = phi i32 [ 0, %313 ], [ %344, %343 ]
  %320 = phi i32 [ 0, %313 ], [ %345, %343 ]
  br i1 %316, label %343, label %321

321:                                              ; preds = %318, %332
  %322 = phi i64 [ %339, %332 ], [ 0, %318 ]
  %323 = phi i32 [ %324, %332 ], [ %319, %318 ]
  %324 = add i32 %323, 1
  %325 = icmp ult i32 %323, %309
  %326 = load i32, ptr %305, align 4, !tbaa !73
  %327 = trunc i64 %322 to i32
  br i1 %325, label %328, label %330

328:                                              ; preds = %321
  %329 = load i32, ptr %310, align 4, !tbaa !62
  br label %332

330:                                              ; preds = %321
  %331 = sub nsw i32 1, %326
  br label %332

332:                                              ; preds = %330, %328
  %333 = phi i32 [ %311, %330 ], [ %329, %328 ]
  %334 = phi i32 [ %331, %330 ], [ %326, %328 ]
  %335 = mul i32 %333, %327
  %336 = add i32 %335, %320
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds i32, ptr %31, i64 %337
  store i32 %334, ptr %338, align 4, !tbaa !56
  %339 = add nuw nsw i64 %322, 1
  %340 = icmp eq i64 %339, %317
  br i1 %340, label %341, label %321, !llvm.loop !77

341:                                              ; preds = %332
  %342 = add i32 %315, %319
  br label %343

343:                                              ; preds = %341, %318
  %344 = phi i32 [ %319, %318 ], [ %342, %341 ]
  %345 = add nuw i32 %320, 1
  %346 = icmp eq i32 %345, %311
  br i1 %346, label %364, label %318, !llvm.loop !78

347:                                              ; preds = %46
  %348 = icmp eq i32 %13, 0
  br i1 %348, label %364, label %349

349:                                              ; preds = %347
  %350 = load ptr, ptr %3, align 8, !tbaa !34
  %351 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %350, i64 0, i32 20
  %352 = load ptr, ptr %351, align 8, !tbaa !79
  %353 = zext i32 %13 to i64
  br label %354

354:                                              ; preds = %349, %354
  %355 = phi i64 [ 0, %349 ], [ %360, %354 ]
  %356 = getelementptr inbounds i8, ptr %352, i64 %355
  %357 = load i8, ptr %356, align 1, !tbaa !80
  %358 = zext i8 %357 to i32
  %359 = getelementptr inbounds i32, ptr %31, i64 %355
  store i32 %358, ptr %359, align 4, !tbaa !56
  %360 = add nuw nsw i64 %355, 1
  %361 = icmp eq i64 %360, %353
  br i1 %361, label %364, label %354, !llvm.loop !81

362:                                              ; preds = %46
  %363 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %47)
  tail call void @exit(i32 noundef -1) #14
  unreachable

364:                                              ; preds = %354, %343, %287, %258, %131, %95, %84, %347, %296, %269, %179, %122, %87, %43
  %365 = load ptr, ptr %5, align 8, !tbaa !45
  %366 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 155
  %367 = load ptr, ptr %366, align 8, !tbaa !82
  %368 = icmp eq ptr %367, null
  br i1 %368, label %370, label %369

369:                                              ; preds = %364
  tail call void @free(ptr noundef %367) #12
  br label %370

370:                                              ; preds = %369, %364
  %371 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 57
  %372 = load i32, ptr %371, align 4, !tbaa !83
  %373 = zext i32 %372 to i64
  %374 = shl nuw nsw i64 %373, 2
  %375 = tail call noalias ptr @malloc(i64 noundef %374) #13
  store ptr %375, ptr %366, align 8, !tbaa !82
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %380

377:                                              ; preds = %370
  %378 = shl i32 %372, 2
  %379 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %378)
  tail call void @exit(i32 noundef -1) #14
  unreachable

380:                                              ; preds = %370
  %381 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %365, i64 0, i32 30
  %382 = load i32, ptr %381, align 4, !tbaa !84
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %388

384:                                              ; preds = %380
  %385 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 36
  %386 = load i32, ptr %385, align 8, !tbaa !85
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %401, label %388

388:                                              ; preds = %384, %380
  %389 = icmp eq i32 %372, 0
  br i1 %389, label %441, label %390

390:                                              ; preds = %388
  %391 = load ptr, ptr %24, align 8, !tbaa !54
  br label %392

392:                                              ; preds = %390, %392
  %393 = phi ptr [ %396, %392 ], [ %391, %390 ]
  %394 = phi ptr [ %398, %392 ], [ %375, %390 ]
  %395 = phi i32 [ %399, %392 ], [ 0, %390 ]
  %396 = getelementptr inbounds i32, ptr %393, i64 1
  %397 = load i32, ptr %393, align 4, !tbaa !56
  %398 = getelementptr inbounds i32, ptr %394, i64 1
  store i32 %397, ptr %394, align 4, !tbaa !56
  %399 = add nuw i32 %395, 1
  %400 = icmp eq i32 %399, %372
  br i1 %400, label %441, label %392, !llvm.loop !86

401:                                              ; preds = %384
  %402 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %365, i64 0, i32 31
  %403 = load i32, ptr %402, align 4, !tbaa !87
  %404 = icmp eq i32 %403, 0
  %405 = load i32, ptr %371, align 4, !tbaa !83
  %406 = icmp eq i32 %405, 0
  br i1 %404, label %411, label %407

407:                                              ; preds = %401
  br i1 %406, label %441, label %408

408:                                              ; preds = %407
  %409 = load ptr, ptr %24, align 8, !tbaa !54
  %410 = zext i32 %405 to i64
  br label %418

411:                                              ; preds = %401
  br i1 %406, label %441, label %412

412:                                              ; preds = %411
  %413 = load ptr, ptr %24, align 8, !tbaa !54
  %414 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %415 = load i32, ptr %414, align 4, !tbaa !62
  %416 = shl i32 %415, 1
  %417 = zext i32 %405 to i64
  br label %427

418:                                              ; preds = %408, %418
  %419 = phi i64 [ 0, %408 ], [ %425, %418 ]
  %420 = lshr i64 %419, 1
  %421 = and i64 %420, 2147483647
  %422 = getelementptr inbounds i32, ptr %409, i64 %421
  %423 = load i32, ptr %422, align 4, !tbaa !56
  %424 = getelementptr inbounds i32, ptr %375, i64 %419
  store i32 %423, ptr %424, align 4, !tbaa !56
  %425 = add nuw nsw i64 %419, 1
  %426 = icmp eq i64 %425, %410
  br i1 %426, label %441, label %418, !llvm.loop !88

427:                                              ; preds = %412, %427
  %428 = phi i64 [ 0, %412 ], [ %439, %427 ]
  %429 = trunc i64 %428 to i32
  %430 = udiv i32 %429, %416
  %431 = mul i32 %430, %415
  %432 = trunc i64 %428 to i32
  %433 = urem i32 %432, %415
  %434 = add i32 %431, %433
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds i32, ptr %413, i64 %435
  %437 = load i32, ptr %436, align 4, !tbaa !56
  %438 = getelementptr inbounds i32, ptr %375, i64 %428
  store i32 %437, ptr %438, align 4, !tbaa !56
  %439 = add nuw nsw i64 %428, 1
  %440 = icmp eq i64 %439, %417
  br i1 %440, label %441, label %427, !llvm.loop !89

441:                                              ; preds = %392, %418, %427, %388, %407, %411
  %442 = load i32, ptr %40, align 4, !tbaa !55
  %443 = add i32 %442, 1
  %444 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 157
  store i32 %443, ptr %444, align 8, !tbaa !90
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local noundef i32 @FmoFinit(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 155
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3) #12
  store ptr null, ptr %2, align 8, !tbaa !82
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 156
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #12
  store ptr null, ptr %7, align 8, !tbaa !54
  br label %11

11:                                               ; preds = %10, %6
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @FmoGetNumberOfSliceGroup(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 157
  %3 = load i32, ptr %2, align 8, !tbaa !90
  ret i32 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FmoGetLastMBOfPicture(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 157
  %3 = load i32, ptr %2, align 8, !tbaa !90
  %4 = add nsw i32 %3, -1
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 57
  %6 = load i32, ptr %5, align 4, !tbaa !83
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 155
  %8 = zext i32 %6 to i64
  br label %9

9:                                                ; preds = %14, %1
  %10 = phi i64 [ %11, %14 ], [ %8, %1 ]
  %11 = add nsw i64 %10, -1
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load ptr, ptr %7, align 8, !tbaa !82
  %16 = and i64 %11, 4294967295
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !56
  %19 = icmp eq i32 %18, %4
  br i1 %19, label %20, label %9, !llvm.loop !91

20:                                               ; preds = %9, %14
  %21 = phi i32 [ %12, %14 ], [ -1, %9 ]
  ret i32 %21
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FmoGetLastMBInSliceGroup(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 57
  %4 = load i32, ptr %3, align 4, !tbaa !83
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 155
  %6 = zext i32 %4 to i64
  br label %7

7:                                                ; preds = %12, %2
  %8 = phi i64 [ %9, %12 ], [ %6, %2 ]
  %9 = add nsw i64 %8, -1
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load ptr, ptr %5, align 8, !tbaa !82
  %14 = and i64 %9, 4294967295
  %15 = getelementptr inbounds i32, ptr %13, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !56
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %7, !llvm.loop !91

18:                                               ; preds = %7, %12
  %19 = phi i32 [ %10, %12 ], [ -1, %7 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FmoGetSliceGroupId(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 155
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !56
  ret i32 %7
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FmoGetNextMBNr(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 155
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !56
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 57
  %9 = load i32, ptr %8, align 4, !tbaa !83
  %10 = sext i32 %9 to i64
  br label %11

11:                                               ; preds = %15, %2
  %12 = phi i64 [ %13, %15 ], [ %5, %2 ]
  %13 = add nsw i64 %12, 1
  %14 = icmp slt i64 %13, %10
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds i32, ptr %4, i64 %13
  %17 = load i32, ptr %16, align 4, !tbaa !56
  %18 = icmp eq i32 %17, %7
  br i1 %18, label %19, label %11, !llvm.loop !92

19:                                               ; preds = %15
  %20 = trunc i64 %13 to i32
  br label %21

21:                                               ; preds = %11, %19
  %22 = phi i32 [ %20, %19 ], [ -1, %11 ]
  ret i32 %22
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { noreturn nounwind }

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
!34 = !{!35, !36, i64 8}
!35 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !40, i64 849040, !40, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !41, i64 849304, !41, i64 849624, !41, i64 849944, !41, i64 850264, !41, i64 850584, !41, i64 850904, !41, i64 851224, !41, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !44, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"image_data", !42, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!42 = !{!"frame_format", !39, i64 0, !39, i64 4, !43, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!43 = !{!"double", !37, i64 0}
!44 = !{!"long", !37, i64 0}
!45 = !{!35, !36, i64 16}
!46 = !{!47, !39, i64 3132}
!47 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !37, i64 44, !37, i64 92, !37, i64 476, !37, i64 2012, !37, i64 2036, !39, i64 2060, !39, i64 2064, !39, i64 2068, !39, i64 2072, !39, i64 2076, !39, i64 2080, !39, i64 2084, !39, i64 2088, !39, i64 2092, !37, i64 2096, !39, i64 3120, !39, i64 3124, !39, i64 3128, !39, i64 3132, !39, i64 3136, !39, i64 3140, !39, i64 3144, !39, i64 3148, !39, i64 3152, !39, i64 3156, !39, i64 3160, !39, i64 3164, !39, i64 3168, !48, i64 3172, !39, i64 4120, !39, i64 4124}
!48 = !{!"", !39, i64 0, !39, i64 4, !40, i64 8, !40, i64 10, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !49, i64 80, !39, i64 492, !49, i64 496, !39, i64 908, !39, i64 912, !39, i64 916, !39, i64 920, !39, i64 924, !39, i64 928, !39, i64 932, !39, i64 936, !39, i64 940, !39, i64 944}
!49 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !37, i64 12, !37, i64 140, !37, i64 268, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408}
!50 = !{!47, !39, i64 3128}
!51 = !{!52, !39, i64 2048}
!52 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 72, !37, i64 456, !37, i64 1992, !37, i64 2016, !39, i64 2040, !39, i64 2044, !39, i64 2048, !37, i64 2052, !37, i64 2084, !37, i64 2116, !39, i64 2148, !39, i64 2152, !39, i64 2156, !36, i64 2160, !39, i64 2168, !39, i64 2172, !39, i64 2176, !39, i64 2180, !39, i64 2184, !39, i64 2188, !39, i64 2192, !39, i64 2196, !39, i64 2200, !39, i64 2204, !39, i64 2208}
!53 = !{!52, !39, i64 2156}
!54 = !{!35, !36, i64 856712}
!55 = !{!52, !39, i64 2044}
!56 = !{!39, !39, i64 0}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = distinct !{!60, !58, !59}
!61 = distinct !{!61, !58, !59}
!62 = !{!35, !39, i64 848996}
!63 = distinct !{!63, !58, !59}
!64 = distinct !{!64, !58, !59}
!65 = distinct !{!65, !58, !59}
!66 = distinct !{!66, !58, !59}
!67 = distinct !{!67, !58, !59}
!68 = !{!52, !39, i64 2152}
!69 = !{!70, !39, i64 228}
!70 = !{!"slice", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !37, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !40, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !37, i64 136, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !37, i64 256, !37, i64 264, !36, i64 312, !36, i64 320, !36, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !39, i64 1176, !39, i64 1180, !39, i64 1184, !71, i64 1188, !40, i64 1220, !40, i64 1222, !40, i64 1224, !39, i64 1228, !39, i64 1232, !39, i64 1236, !39, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !37, i64 1288, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !39, i64 13264, !39, i64 13268, !40, i64 13272, !40, i64 13274, !40, i64 13276, !40, i64 13278, !36, i64 13280, !36, i64 13288, !36, i64 13296, !40, i64 13304, !40, i64 13306, !39, i64 13308, !39, i64 13312, !36, i64 13320, !36, i64 13328, !39, i64 13336, !37, i64 13340, !36, i64 13408, !36, i64 13416, !36, i64 13424, !36, i64 13432, !36, i64 13440, !36, i64 13448, !36, i64 13456, !36, i64 13464, !36, i64 13472, !36, i64 13480, !36, i64 13488, !36, i64 13496, !39, i64 13504, !36, i64 13512, !36, i64 13520, !36, i64 13528, !36, i64 13536, !36, i64 13544, !37, i64 13552}
!71 = !{!"nalunitheadermvcext_tag", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!72 = distinct !{!72, !58, !59}
!73 = !{!52, !39, i64 2148}
!74 = !{!35, !39, i64 849000}
!75 = distinct !{!75, !58, !59}
!76 = distinct !{!76, !58, !59}
!77 = distinct !{!77, !58, !59}
!78 = distinct !{!78, !58, !59}
!79 = !{!52, !36, i64 2160}
!80 = !{!37, !37, i64 0}
!81 = distinct !{!81, !58, !59}
!82 = !{!35, !36, i64 856704}
!83 = !{!35, !39, i64 849012}
!84 = !{!47, !39, i64 3136}
!85 = !{!70, !39, i64 176}
!86 = distinct !{!86, !58, !59}
!87 = !{!47, !39, i64 3140}
!88 = distinct !{!88, !58, !59}
!89 = distinct !{!89, !58, !59}
!90 = !{!35, !39, i64 856720}
!91 = distinct !{!91, !58, !59}
!92 = distinct !{!92, !58, !59}
