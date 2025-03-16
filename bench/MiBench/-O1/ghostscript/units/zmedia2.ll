; ModuleID = 'zmedia2.c'
source_filename = "zmedia2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_point_s = type { double, double }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }

@zmedia2_l2_op_defs.op_defs_ = internal constant [4 x %struct.op_def] [%struct.op_def { ptr @.str, ptr null }, %struct.op_def { ptr @.str.1, ptr @zmatchmedia }, %struct.op_def { ptr @.str.2, ptr @zmatchpagesize }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"4.matchmedia\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"6.matchpagesize\00", align 1
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"MediaPosition\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Orientation\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"RollFedMedia\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"PolicyNotFound\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Priority\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"MatchAll\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"PageSize\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zmedia2_l2_op_defs() local_unnamed_addr #0 {
  ret ptr @zmedia2_l2_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zmatchmedia(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca [14 x i8], align 2
  %5 = alloca [14 x i8], align 2
  %6 = alloca %struct.ref_s, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x %struct.ref_s], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.ref_s, align 8
  %14 = alloca %struct.ref_s, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca %struct.gs_matrix_s, align 4
  %19 = alloca %struct.gs_point_s, align 8
  %20 = alloca %struct.ref_s, align 8
  %21 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -3
  %22 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %23 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store float 0x43E0000000000000, ptr %3, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #8
  %24 = getelementptr inbounds i8, ptr %0, i64 -31
  %25 = load i8, ptr %24, align 1, !tbaa !9
  %26 = icmp eq i8 %25, 14
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !10
  %29 = getelementptr inbounds %struct.ref_s, ptr %28, i64 3
  %30 = icmp ugt ptr %29, %0
  br i1 %30, label %314, label %31

31:                                               ; preds = %27
  store i16 3584, ptr %21, align 8, !tbaa !17
  %32 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  store i16 1, ptr %32, align 8, !tbaa !9
  store i16 256, ptr %22, align 8, !tbaa !17
  %33 = load ptr, ptr @o_stack, align 8, !tbaa !18
  %34 = getelementptr inbounds %struct.ref_s, ptr %33, i64 -2
  store ptr %34, ptr @o_stack, align 8, !tbaa !18
  br label %314

35:                                               ; preds = %1
  %36 = getelementptr inbounds i8, ptr %0, i64 -47
  %37 = load i8, ptr %36, align 1, !tbaa !9
  %38 = icmp eq i8 %37, 2
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call i32 @check_type_failed(ptr noundef nonnull %21) #8
  br label %314

41:                                               ; preds = %35
  %42 = getelementptr %struct.ref_s, ptr %0, i64 -3, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !9
  %44 = load i16, ptr %43, align 8, !tbaa !19
  %45 = and i16 %44, 32
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %314, label %47

47:                                               ; preds = %41
  %48 = icmp eq i8 %25, 2
  br i1 %48, label %51, label %49

49:                                               ; preds = %47
  %50 = tail call i32 @check_type_failed(ptr noundef nonnull %22) #8
  br label %314

51:                                               ; preds = %47
  %52 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !9
  %54 = load i16, ptr %53, align 8, !tbaa !19
  %55 = and i16 %54, 32
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %314, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds i8, ptr %0, i64 -15
  %59 = load i8, ptr %58, align 1, !tbaa !9
  %60 = icmp eq i8 %59, 2
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = tail call i32 @check_type_failed(ptr noundef nonnull %23) #8
  br label %314

63:                                               ; preds = %57
  %64 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !9
  %66 = load i16, ptr %65, align 8, !tbaa !19
  %67 = and i16 %66, 32
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %314, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds i8, ptr %0, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !9
  %72 = icmp eq i8 %71, 4
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = tail call i32 @check_type_failed(ptr noundef %0) #8
  br label %314

75:                                               ; preds = %69
  %76 = load i16, ptr %0, align 8, !tbaa !17
  %77 = and i16 %76, 32
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %314, label %79

79:                                               ; preds = %75
  %80 = call i32 @dict_int_null_param(ptr noundef nonnull %21, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 32767, i32 noundef 0, ptr noundef nonnull %8) #8
  switch i32 %80, label %314 [
    i32 2, label %81
    i32 1, label %81
    i32 0, label %82
  ]

81:                                               ; preds = %79, %79
  store i32 -1, ptr %8, align 4, !tbaa !21
  br label %82

82:                                               ; preds = %81, %79
  %83 = call i32 @dict_int_null_param(ptr noundef nonnull %21, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %9) #8
  switch i32 %83, label %314 [
    i32 2, label %84
    i32 1, label %84
    i32 0, label %85
  ]

84:                                               ; preds = %82, %82
  store i32 -1, ptr %9, align 4, !tbaa !21
  br label %85

85:                                               ; preds = %84, %82
  %86 = call i32 @dict_bool_param(ptr noundef nonnull %21, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef nonnull %10) #8
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %314, label %88

88:                                               ; preds = %85
  %89 = call i32 @dict_int_param(ptr noundef nonnull %23, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 7, i32 noundef 0, ptr noundef nonnull %2) #8
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %314, label %91

91:                                               ; preds = %88
  %92 = call i32 @dict_find_string(ptr noundef nonnull %22, ptr noundef nonnull @.str.7, ptr noundef nonnull %7) #8
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load ptr, ptr %7, align 8, !tbaa !22
  %96 = getelementptr inbounds i8, ptr %95, i64 1
  %97 = load i8, ptr %96, align 1, !tbaa !9
  %98 = icmp eq i8 %97, 4
  br i1 %98, label %99, label %314

99:                                               ; preds = %94
  %100 = load i16, ptr %95, align 8, !tbaa !17
  %101 = and i16 %100, 32
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %314, label %106

103:                                              ; preds = %91
  %104 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  store ptr null, ptr %104, align 8, !tbaa !9
  store i16 1120, ptr %6, align 8, !tbaa !17
  %105 = getelementptr inbounds %struct.tas_s, ptr %6, i64 0, i32 1
  store i16 0, ptr %105, align 2, !tbaa !23
  store ptr %6, ptr %7, align 8, !tbaa !22
  br label %106

106:                                              ; preds = %99, %103
  %107 = load ptr, ptr %7, align 8, !tbaa !22
  %108 = getelementptr inbounds %struct.tas_s, ptr %107, i64 0, i32 1
  %109 = load i16, ptr %108, align 2, !tbaa !23
  %110 = call i32 @dict_first(ptr noundef nonnull %22) #8
  %111 = call i32 @dict_next(ptr noundef nonnull %22, i32 noundef %110, ptr noundef nonnull %11) #8
  %112 = icmp sgt i32 %111, -1
  br i1 %112, label %113, label %293

113:                                              ; preds = %106
  %114 = zext i16 %109 to i32
  %115 = getelementptr inbounds [2 x %struct.ref_s], ptr %11, i64 0, i64 1
  %116 = getelementptr inbounds i8, ptr %11, i64 17
  %117 = getelementptr inbounds [2 x %struct.ref_s], ptr %11, i64 0, i64 1, i32 1
  %118 = getelementptr inbounds i8, ptr %11, i64 1
  %119 = getelementptr inbounds %struct.ref_s, ptr %11, i64 0, i32 1
  %120 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %121 = getelementptr inbounds i8, ptr %13, i64 1
  %122 = getelementptr inbounds %struct.tas_s, ptr %14, i64 0, i32 1
  %123 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %124 = getelementptr inbounds i8, ptr %11, i64 2
  %125 = getelementptr inbounds i8, ptr %11, i64 2
  br label %126

126:                                              ; preds = %113, %280
  %127 = phi i32 [ %111, %113 ], [ %288, %280 ]
  %128 = phi i32 [ %114, %113 ], [ %287, %280 ]
  %129 = phi float [ 0x43E0000000000000, %113 ], [ %286, %280 ]
  %130 = phi i8 [ 0, %113 ], [ %285, %280 ]
  %131 = phi i8 [ 14, %113 ], [ %284, %280 ]
  %132 = phi i8 [ 0, %113 ], [ %283, %280 ]
  %133 = phi i8 [ 14, %113 ], [ %282, %280 ]
  %134 = phi i32 [ undef, %113 ], [ %281, %280 ]
  %135 = load i8, ptr %116, align 1, !tbaa !9
  %136 = icmp eq i8 %135, 2
  br i1 %136, label %137, label %280

137:                                              ; preds = %126
  %138 = load ptr, ptr %117, align 8, !tbaa !9
  %139 = load i16, ptr %138, align 8, !tbaa !19
  %140 = and i16 %139, 32
  %141 = icmp ne i16 %140, 0
  %142 = load i8, ptr %118, align 1
  %143 = icmp eq i8 %142, 11
  %144 = select i1 %141, i1 %143, i1 false
  br i1 %144, label %145, label %280

145:                                              ; preds = %137
  %146 = load i32, ptr %8, align 4, !tbaa !21
  %147 = icmp slt i32 %146, 0
  %148 = load i64, ptr %119, align 8
  %149 = zext nneg i32 %146 to i64
  %150 = icmp eq i64 %148, %149
  %151 = select i1 %147, i1 true, i1 %150
  br i1 %151, label %152, label %280

152:                                              ; preds = %145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  %153 = call i32 @dict_bool_param(ptr noundef nonnull %115, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull %12) #8
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %270, label %155

155:                                              ; preds = %152
  %156 = load i16, ptr %120, align 2, !tbaa !23
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %222, label %158

158:                                              ; preds = %155, %217
  %159 = phi i64 [ %218, %217 ], [ 0, %155 ]
  %160 = phi i32 [ %215, %217 ], [ %134, %155 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #8
  %161 = call i32 @array_get(ptr noundef nonnull %0, i64 noundef %159, ptr noundef nonnull %13) #8
  %162 = call i32 @dict_find(ptr noundef nonnull %115, ptr noundef nonnull %13, ptr noundef nonnull %16) #8
  %163 = icmp slt i32 %162, 1
  br i1 %163, label %214, label %164

164:                                              ; preds = %158
  %165 = call i32 @dict_find(ptr noundef nonnull %21, ptr noundef nonnull %13, ptr noundef nonnull %15) #8
  %166 = icmp slt i32 %165, 1
  br i1 %166, label %172, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr %15, align 8, !tbaa !22
  %169 = getelementptr inbounds i8, ptr %168, i64 1
  %170 = load i8, ptr %169, align 1, !tbaa !9
  %171 = icmp eq i8 %170, 14
  br i1 %171, label %172, label %176

172:                                              ; preds = %167, %164
  %173 = load i32, ptr %12, align 4, !tbaa !21
  %174 = icmp eq i32 %173, 0
  %175 = select i1 %174, i32 8, i32 9
  br label %214

176:                                              ; preds = %167
  %177 = call i32 @dict_find(ptr noundef nonnull %23, ptr noundef nonnull %13, ptr noundef nonnull %17) #8
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %176
  %180 = load ptr, ptr %17, align 8, !tbaa !22
  %181 = getelementptr inbounds i8, ptr %180, i64 1
  %182 = load i8, ptr %181, align 1, !tbaa !9
  %183 = icmp eq i8 %182, 11
  br i1 %183, label %184, label %214

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.ref_s, ptr %180, i64 0, i32 1
  %186 = load i64, ptr %185, align 8, !tbaa !9
  %187 = trunc i64 %186 to i32
  br label %190

188:                                              ; preds = %176
  %189 = load i32, ptr %2, align 4, !tbaa !21
  br label %190

190:                                              ; preds = %188, %184
  %191 = phi i32 [ %187, %184 ], [ %189, %188 ]
  %192 = load i8, ptr %121, align 1, !tbaa !9
  %193 = icmp eq i8 %192, 13
  br i1 %193, label %194, label %208

194:                                              ; preds = %190
  call void @name_string_ref(ptr noundef nonnull %13, ptr noundef nonnull %14) #8
  %195 = load i16, ptr %122, align 2, !tbaa !23
  %196 = icmp eq i16 %195, 8
  br i1 %196, label %197, label %208

197:                                              ; preds = %194
  %198 = load ptr, ptr %123, align 8, !tbaa !9
  %199 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %198, ptr noundef nonnull dereferenceable(8) @.str.9, i64 8)
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %197
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #8
  %202 = load ptr, ptr %15, align 8, !tbaa !22
  %203 = load ptr, ptr %16, align 8, !tbaa !22
  %204 = load i32, ptr %9, align 4, !tbaa !21
  %205 = call fastcc i32 @zmatch_page_size(ptr noundef %202, ptr noundef %203, i32 noundef %191, i32 noundef %204, ptr noundef nonnull %3, ptr noundef nonnull %18, ptr noundef nonnull %19)
  %206 = icmp sgt i32 %205, 0
  %207 = select i1 %206, i32 0, i32 9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #8
  br i1 %206, label %213, label %214

208:                                              ; preds = %194, %197, %190
  %209 = load ptr, ptr %15, align 8, !tbaa !22
  %210 = load ptr, ptr %16, align 8, !tbaa !22
  %211 = call i32 @obj_eq(ptr noundef %209, ptr noundef %210) #8
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %208, %201
  br label %214

214:                                              ; preds = %208, %179, %172, %158, %201, %213
  %215 = phi i32 [ %160, %213 ], [ %160, %201 ], [ %160, %158 ], [ %160, %172 ], [ -20, %179 ], [ %160, %208 ]
  %216 = phi i32 [ 0, %213 ], [ %207, %201 ], [ 8, %158 ], [ %175, %172 ], [ 1, %179 ], [ 9, %208 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #8
  switch i32 %216, label %270 [
    i32 0, label %217
    i32 8, label %217
    i32 9, label %269
  ]

217:                                              ; preds = %214, %214
  %218 = add nuw nsw i64 %159, 1
  %219 = load i16, ptr %120, align 2, !tbaa !23
  %220 = zext i16 %219 to i64
  %221 = icmp ult i64 %218, %220
  br i1 %221, label %158, label %222, !llvm.loop !24

222:                                              ; preds = %217, %155
  %223 = phi i32 [ %134, %155 ], [ %215, %217 ]
  %224 = load float, ptr %3, align 4, !tbaa !5
  %225 = fcmp olt float %224, %129
  br i1 %225, label %226, label %231

226:                                              ; preds = %222
  %227 = load ptr, ptr %7, align 8, !tbaa !22
  %228 = getelementptr inbounds %struct.tas_s, ptr %227, i64 0, i32 1
  %229 = load i16, ptr %228, align 2, !tbaa !23
  %230 = zext i16 %229 to i32
  br label %231

231:                                              ; preds = %226, %222
  %232 = phi i8 [ 14, %226 ], [ %133, %222 ]
  %233 = phi i8 [ 0, %226 ], [ %132, %222 ]
  %234 = phi float [ %224, %226 ], [ %129, %222 ]
  %235 = phi i32 [ %230, %226 ], [ %128, %222 ]
  %236 = zext i32 %235 to i64
  br label %237

237:                                              ; preds = %256, %231
  %238 = phi i64 [ %260, %256 ], [ %236, %231 ]
  %239 = phi i8 [ %257, %256 ], [ %232, %231 ]
  %240 = phi i8 [ %258, %256 ], [ %233, %231 ]
  %241 = phi i32 [ %259, %256 ], [ %235, %231 ]
  %242 = icmp eq i64 %238, 0
  br i1 %242, label %261, label %243

243:                                              ; preds = %237
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #8
  %244 = trunc i64 %238 to i32
  %245 = add nsw i32 %244, -1
  %246 = load ptr, ptr %7, align 8, !tbaa !22
  %247 = zext nneg i32 %245 to i64
  %248 = call i32 @array_get(ptr noundef %246, i64 noundef %247, ptr noundef nonnull %20) #8
  %249 = call i32 @obj_eq(ptr noundef nonnull %11, ptr noundef nonnull %20) #8
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %243
  %252 = load i16, ptr %11, align 16, !tbaa.struct !26
  %253 = trunc i16 %252 to i8
  %254 = lshr i16 %252, 8
  %255 = trunc i16 %254 to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %4, ptr noundef nonnull align 2 dereferenceable(14) %124, i64 14, i1 false), !tbaa.struct !30
  br label %256

256:                                              ; preds = %243, %251
  %257 = phi i8 [ %255, %251 ], [ %239, %243 ]
  %258 = phi i8 [ %253, %251 ], [ %240, %243 ]
  %259 = phi i32 [ %245, %251 ], [ %241, %243 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #8
  %260 = add nsw i64 %238, -1
  br i1 %250, label %237, label %261

261:                                              ; preds = %256, %237
  %262 = phi i8 [ %257, %256 ], [ %239, %237 ]
  %263 = phi i8 [ %258, %256 ], [ %240, %237 ]
  %264 = phi i32 [ %259, %256 ], [ %241, %237 ]
  %265 = load i16, ptr %11, align 16, !tbaa.struct !26
  %266 = trunc i16 %265 to i8
  %267 = lshr i16 %265, 8
  %268 = trunc i16 %267 to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %5, ptr noundef nonnull align 2 dereferenceable(14) %125, i64 14, i1 false), !tbaa.struct !30
  br label %270

269:                                              ; preds = %214
  br label %270

270:                                              ; preds = %214, %269, %261, %152
  %271 = phi i32 [ %153, %152 ], [ %223, %261 ], [ %215, %269 ], [ %215, %214 ]
  %272 = phi i8 [ %133, %152 ], [ %262, %261 ], [ %133, %269 ], [ %133, %214 ]
  %273 = phi i8 [ %132, %152 ], [ %263, %261 ], [ %132, %269 ], [ %132, %214 ]
  %274 = phi i8 [ %131, %152 ], [ %268, %261 ], [ %131, %269 ], [ %131, %214 ]
  %275 = phi i8 [ %130, %152 ], [ %266, %261 ], [ %130, %269 ], [ %130, %214 ]
  %276 = phi float [ %129, %152 ], [ %234, %261 ], [ %129, %269 ], [ %129, %214 ]
  %277 = phi i32 [ %128, %152 ], [ %264, %261 ], [ %128, %269 ], [ %128, %214 ]
  %278 = phi i32 [ 1, %152 ], [ 0, %261 ], [ 0, %269 ], [ %216, %214 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %314

280:                                              ; preds = %145, %270, %137, %126
  %281 = phi i32 [ %271, %270 ], [ %134, %137 ], [ %134, %126 ], [ %134, %145 ]
  %282 = phi i8 [ %272, %270 ], [ %133, %137 ], [ %133, %126 ], [ %133, %145 ]
  %283 = phi i8 [ %273, %270 ], [ %132, %137 ], [ %132, %126 ], [ %132, %145 ]
  %284 = phi i8 [ %274, %270 ], [ %131, %137 ], [ %131, %126 ], [ %131, %145 ]
  %285 = phi i8 [ %275, %270 ], [ %130, %137 ], [ %130, %126 ], [ %130, %145 ]
  %286 = phi float [ %276, %270 ], [ %129, %137 ], [ %129, %126 ], [ %129, %145 ]
  %287 = phi i32 [ %277, %270 ], [ %128, %137 ], [ %128, %126 ], [ %128, %145 ]
  %288 = call i32 @dict_next(ptr noundef nonnull %22, i32 noundef %127, ptr noundef nonnull %11) #8
  %289 = icmp sgt i32 %288, -1
  br i1 %289, label %126, label %290, !llvm.loop !31

290:                                              ; preds = %280
  %291 = zext i8 %283 to i16
  %292 = zext i8 %285 to i16
  br label %293

293:                                              ; preds = %290, %106
  %294 = phi i8 [ 14, %106 ], [ %282, %290 ]
  %295 = phi i16 [ 0, %106 ], [ %291, %290 ]
  %296 = phi i8 [ 14, %106 ], [ %284, %290 ]
  %297 = phi i16 [ 0, %106 ], [ %292, %290 ]
  %298 = icmp eq i8 %296, 14
  br i1 %298, label %299, label %300

299:                                              ; preds = %293
  store i16 0, ptr %42, align 8, !tbaa !9
  br label %309

300:                                              ; preds = %293
  %301 = icmp eq i8 %294, 14
  %302 = getelementptr %struct.ref_s, ptr %0, i64 -3, i32 0, i32 1
  %303 = select i1 %301, i8 %296, i8 %294
  %304 = select i1 %301, i16 %297, i16 %295
  %305 = select i1 %301, ptr %5, ptr %4
  %306 = zext i8 %303 to i16
  %307 = shl nuw i16 %306, 8
  %308 = or disjoint i16 %307, %304
  store i16 %308, ptr %21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %302, ptr noundef nonnull align 2 dereferenceable(14) %305, i64 14, i1 false)
  store i16 1, ptr %52, align 8, !tbaa !9
  br label %309

309:                                              ; preds = %300, %299
  %310 = phi ptr [ %22, %300 ], [ %21, %299 ]
  %311 = phi i64 [ -2, %300 ], [ -3, %299 ]
  store i16 256, ptr %310, align 8, !tbaa !17
  %312 = load ptr, ptr @o_stack, align 8, !tbaa !18
  %313 = getelementptr inbounds %struct.ref_s, ptr %312, i64 %311
  store ptr %313, ptr @o_stack, align 8, !tbaa !18
  br label %314

314:                                              ; preds = %270, %99, %94, %88, %85, %82, %79, %75, %63, %51, %41, %27, %309, %73, %61, %49, %39, %31
  %315 = phi i32 [ 0, %31 ], [ 0, %309 ], [ %74, %73 ], [ %62, %61 ], [ %50, %49 ], [ %40, %39 ], [ -17, %27 ], [ -7, %41 ], [ -7, %51 ], [ -7, %63 ], [ -7, %75 ], [ %80, %79 ], [ %83, %82 ], [ %86, %85 ], [ %89, %88 ], [ -20, %94 ], [ -7, %99 ], [ %271, %270 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %315
}

; Function Attrs: nounwind uwtable
define internal i32 @zmatchpagesize(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_matrix_s, align 4
  %3 = alloca float, align 4
  %4 = alloca %struct.gs_point_s, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store float 0x43E0000000000000, ptr %3, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -3
  %6 = getelementptr inbounds i8, ptr %0, i64 -47
  %7 = load i8, ptr %6, align 1, !tbaa !9
  %8 = icmp eq i8 %7, 11
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @check_type_failed(ptr noundef nonnull %5) #8
  br label %59

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %13 = getelementptr inbounds i8, ptr %0, i64 -31
  %14 = load i8, ptr %13, align 1, !tbaa !9
  switch i8 %14, label %15 [
    i8 14, label %23
    i8 11, label %17
  ]

15:                                               ; preds = %11
  %16 = tail call i32 @check_type_failed(ptr noundef nonnull %12) #8
  br label %59

17:                                               ; preds = %11
  %18 = getelementptr %struct.ref_s, ptr %0, i64 -2, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !9
  %20 = icmp ugt i64 %19, 3
  br i1 %20, label %59, label %21

21:                                               ; preds = %17
  %22 = trunc i64 %19 to i32
  br label %23

23:                                               ; preds = %11, %21
  %24 = phi i32 [ %22, %21 ], [ -1, %11 ]
  %25 = getelementptr inbounds i8, ptr %0, i64 -15
  %26 = load i8, ptr %25, align 1, !tbaa !9
  %27 = icmp eq i8 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %30 = tail call i32 @check_type_failed(ptr noundef nonnull %29) #8
  br label %59

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -5
  %33 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -4
  %34 = getelementptr %struct.ref_s, ptr %0, i64 -3, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !9
  %36 = trunc i64 %35 to i32
  %37 = call fastcc i32 @zmatch_page_size(ptr noundef nonnull %32, ptr noundef nonnull %33, i32 noundef %36, i32 noundef %24, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %4)
  switch i32 %37, label %59 [
    i32 0, label %52
    i32 1, label %38
  ]

38:                                               ; preds = %31
  %39 = call i32 @write_matrix(ptr noundef %0, ptr noundef nonnull %2) #8
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = getelementptr inbounds i8, ptr %0, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !9
  %44 = icmp eq i8 %43, 14
  br i1 %44, label %45, label %59

45:                                               ; preds = %41, %38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !26
  %46 = load double, ptr %4, align 8, !tbaa !32
  %47 = fptrunc double %46 to float
  %48 = getelementptr %struct.ref_s, ptr %0, i64 -4, i32 1
  store float %47, ptr %48, align 8, !tbaa !9
  store i16 4096, ptr %33, align 8, !tbaa !17
  %49 = getelementptr inbounds %struct.gs_point_s, ptr %4, i64 0, i32 1
  %50 = load double, ptr %49, align 8, !tbaa !35
  %51 = fptrunc double %50 to float
  store float %51, ptr %34, align 8, !tbaa !9
  store i16 4096, ptr %5, align 8, !tbaa !17
  br label %52

52:                                               ; preds = %31, %45
  %53 = phi i64 [ -2, %45 ], [ -5, %31 ]
  %54 = phi i16 [ 1, %45 ], [ 0, %31 ]
  %55 = phi ptr [ %12, %45 ], [ %32, %31 ]
  %56 = getelementptr %struct.ref_s, ptr %0, i64 %53, i32 1
  store i16 %54, ptr %56, align 8, !tbaa !9
  store i16 256, ptr %55, align 8, !tbaa !17
  %57 = load ptr, ptr @o_stack, align 8, !tbaa !18
  %58 = getelementptr inbounds %struct.ref_s, ptr %57, i64 %53
  store ptr %58, ptr @o_stack, align 8, !tbaa !18
  br label %59

59:                                               ; preds = %41, %31, %17, %52, %28, %15, %9
  %60 = phi i32 [ 0, %52 ], [ %30, %28 ], [ %16, %15 ], [ %10, %9 ], [ -15, %17 ], [ %37, %31 ], [ %39, %41 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  ret i32 %60
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #3

declare i32 @dict_int_null_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_bool_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_int_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_first(ptr noundef) local_unnamed_addr #3

declare i32 @dict_next(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @array_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @name_string_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @zmatch_page_size(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #1 {
  %8 = alloca [6 x %struct.ref_s], align 16
  %9 = alloca [6 x float], align 16
  %10 = alloca %struct.gs_point_s, align 8
  %11 = alloca %struct.gs_rect_s, align 8
  %12 = getelementptr inbounds i8, ptr %0, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !9
  %14 = icmp eq i8 %13, 4
  br i1 %14, label %17, label %15

15:                                               ; preds = %7
  %16 = tail call i32 @check_type_failed(ptr noundef %0) #8
  br label %196

17:                                               ; preds = %7
  %18 = getelementptr inbounds i8, ptr %1, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !9
  %20 = icmp eq i8 %19, 4
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @check_type_failed(ptr noundef %1) #8
  br label %196

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %25 = load i16, ptr %24, align 2, !tbaa !23
  %26 = icmp eq i16 %25, 2
  br i1 %26, label %27, label %196

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  %29 = load i16, ptr %28, align 2, !tbaa !23
  %30 = zext i16 %29 to i32
  switch i16 %29, label %196 [
    i16 4, label %31
    i16 2, label %31
  ]

31:                                               ; preds = %27, %27
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #8
  %32 = call i32 @array_get(ptr noundef %0, i64 noundef 0, ptr noundef nonnull %8) #8
  %33 = getelementptr inbounds [6 x %struct.ref_s], ptr %8, i64 0, i64 1
  %34 = call i32 @array_get(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %33) #8
  br label %35

35:                                               ; preds = %31, %35
  %36 = phi i64 [ 0, %31 ], [ %43, %35 ]
  %37 = trunc i64 %36 to i32
  %38 = urem i32 %37, %30
  %39 = zext nneg i32 %38 to i64
  %40 = add nuw nsw i64 %36, 2
  %41 = getelementptr inbounds [6 x %struct.ref_s], ptr %8, i64 0, i64 %40
  %42 = call i32 @array_get(ptr noundef %1, i64 noundef %39, ptr noundef nonnull %41) #8
  %43 = add nuw nsw i64 %36, 1
  %44 = icmp eq i64 %43, 4
  br i1 %44, label %45, label %35, !llvm.loop !36

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.ref_s, ptr %8, i64 5
  %47 = call i32 @num_params(ptr noundef nonnull %46, i32 noundef 6, ptr noundef nonnull %9) #8
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %194, label %49

49:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #8
  %50 = load float, ptr %9, align 16, !tbaa !5
  %51 = fpext float %50 to double
  store double %51, ptr %10, align 8, !tbaa !32
  %52 = getelementptr inbounds [6 x float], ptr %9, i64 0, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !5
  %54 = fpext float %53 to double
  %55 = getelementptr inbounds %struct.gs_point_s, ptr %10, i64 0, i32 1
  store double %54, ptr %55, align 8, !tbaa !35
  %56 = getelementptr inbounds [6 x float], ptr %9, i64 0, i64 2
  %57 = load float, ptr %56, align 8, !tbaa !5
  %58 = fpext float %57 to double
  store double %58, ptr %11, align 8, !tbaa !37
  %59 = getelementptr inbounds [6 x float], ptr %9, i64 0, i64 3
  %60 = load float, ptr %59, align 4, !tbaa !5
  %61 = fpext float %60 to double
  %62 = getelementptr inbounds %struct.gs_point_s, ptr %11, i64 0, i32 1
  store double %61, ptr %62, align 8, !tbaa !39
  %63 = getelementptr inbounds [6 x float], ptr %9, i64 0, i64 4
  %64 = load float, ptr %63, align 16, !tbaa !5
  %65 = fpext float %64 to double
  %66 = getelementptr inbounds %struct.gs_rect_s, ptr %11, i64 0, i32 1
  store double %65, ptr %66, align 8, !tbaa !40
  %67 = getelementptr inbounds [6 x float], ptr %9, i64 0, i64 5
  %68 = load float, ptr %67, align 4, !tbaa !5
  %69 = fpext float %68 to double
  %70 = getelementptr inbounds %struct.gs_rect_s, ptr %11, i64 0, i32 1, i32 1
  store double %69, ptr %70, align 8, !tbaa !41
  %71 = fsub double %51, %58
  %72 = fcmp ult double %71, -5.000000e+00
  %73 = fsub double %51, %65
  %74 = fcmp ugt double %73, 5.000000e+00
  %75 = select i1 %72, i1 true, i1 %74
  %76 = fsub double %54, %61
  %77 = fcmp ult double %76, -5.000000e+00
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %87, label %79

79:                                               ; preds = %49
  %80 = fsub double %54, %69
  %81 = fcmp ugt double %80, 5.000000e+00
  %82 = and i32 %3, -2147483647
  %83 = icmp eq i32 %82, 1
  %84 = or i1 %83, %81
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  store float 0.000000e+00, ptr %4, align 4, !tbaa !5
  %86 = call i32 @llvm.smax.i32(i32 %3, i32 0)
  call fastcc void @make_adjustment_matrix(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %5, i32 noundef 0, i32 noundef %86)
  br label %178

87:                                               ; preds = %79, %49
  %88 = fsub double %51, %61
  %89 = fcmp ult double %88, -5.000000e+00
  br i1 %89, label %107, label %90

90:                                               ; preds = %87
  %91 = fsub double %51, %69
  %92 = fcmp ugt double %91, 5.000000e+00
  %93 = fsub double %54, %58
  %94 = fcmp ult double %93, -5.000000e+00
  %95 = select i1 %92, i1 true, i1 %94
  br i1 %95, label %107, label %96

96:                                               ; preds = %90
  %97 = fsub double %54, %65
  %98 = fcmp ugt double %97, 5.000000e+00
  %99 = and i32 %3, -2147483647
  %100 = icmp eq i32 %99, 0
  %101 = or i1 %100, %98
  br i1 %101, label %107, label %102

102:                                              ; preds = %96
  store float 0.000000e+00, ptr %4, align 4, !tbaa !5
  %103 = fcmp olt float %50, %53
  %104 = select i1 %103, i32 -1, i32 1
  %105 = icmp slt i32 %3, 0
  %106 = select i1 %105, i32 %104, i32 %3
  call fastcc void @make_adjustment_matrix(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %5, i32 noundef 0, i32 noundef %106)
  br label %178

107:                                              ; preds = %96, %90, %87
  %108 = icmp sgt i32 %3, -1
  br i1 %108, label %117, label %109

109:                                              ; preds = %107
  %110 = fcmp olt float %50, %53
  br i1 %110, label %111, label %114

111:                                              ; preds = %109
  %112 = fcmp ogt float %64, %68
  %113 = sext i1 %112 to i32
  br label %117

114:                                              ; preds = %109
  %115 = fcmp olt float %64, %68
  %116 = zext i1 %115 to i32
  br label %117

117:                                              ; preds = %114, %111, %107
  %118 = phi i32 [ %113, %111 ], [ %116, %114 ], [ %3, %107 ]
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = fcmp ult float %68, %50
  br i1 %121, label %128, label %122

122:                                              ; preds = %120
  %123 = fcmp oge float %64, %53
  br label %128

124:                                              ; preds = %117
  %125 = fcmp ult float %64, %50
  br i1 %125, label %128, label %126

126:                                              ; preds = %124
  %127 = fcmp oge float %68, %53
  br label %128

128:                                              ; preds = %126, %124, %122, %120
  %129 = phi i1 [ false, %120 ], [ %123, %122 ], [ false, %124 ], [ %127, %126 ]
  %130 = fneg double %51
  %131 = fmul double %130, %54
  %132 = call double @llvm.fmuladd.f64(double %65, double %69, double %131)
  %133 = fptrunc double %132 to float
  switch i32 %2, label %192 [
    i32 3, label %134
    i32 5, label %135
    i32 4, label %141
    i32 6, label %142
  ]

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %134, %128
  %136 = phi i32 [ 0, %128 ], [ 1, %134 ]
  %137 = call float @llvm.fabs.f32(float %133)
  %138 = load float, ptr %4, align 4, !tbaa !5
  %139 = call float @llvm.fabs.f32(float %138)
  %140 = fcmp ult float %137, %139
  br i1 %140, label %147, label %192

141:                                              ; preds = %128
  br label %142

142:                                              ; preds = %141, %128
  %143 = phi i32 [ 0, %128 ], [ 1, %141 ]
  br i1 %129, label %144, label %192

144:                                              ; preds = %142
  %145 = load float, ptr %4, align 4, !tbaa !5
  %146 = fcmp ugt float %145, %133
  br i1 %146, label %147, label %192

147:                                              ; preds = %144, %135
  %148 = phi i32 [ %143, %144 ], [ %136, %135 ]
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %147
  %151 = xor i1 %129, true
  %152 = zext i1 %151 to i32
  call fastcc void @make_adjustment_matrix(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %5, i32 noundef %152, i32 noundef %118)
  br label %177

153:                                              ; preds = %147
  %154 = and i32 %118, 1
  %155 = icmp eq i32 %154, 0
  %156 = select i1 %155, double %54, double %51
  %157 = select i1 %155, double %51, double %54
  %158 = fcmp oeq float %50, 0.000000e+00
  %159 = fcmp olt double %157, %51
  %160 = select i1 %158, i1 %159, i1 false
  %161 = select i1 %160, double %157, double %51
  %162 = fcmp oeq float %53, 0.000000e+00
  %163 = fcmp olt double %156, %54
  %164 = and i1 %162, %163
  %165 = select i1 %164, double %156, double %54
  %166 = fmul double %161, 5.000000e-01
  %167 = fmul double %165, 5.000000e-01
  %168 = call i32 @gs_make_translation(double noundef %166, double noundef %167, ptr noundef %5) #8
  br i1 %119, label %173, label %169

169:                                              ; preds = %153
  %170 = sitofp i32 %118 to double
  %171 = fmul double %170, 9.000000e+01
  %172 = call i32 @gs_matrix_rotate(ptr noundef %5, double noundef %171, ptr noundef %5) #8
  br label %173

173:                                              ; preds = %169, %153
  %174 = fmul double %51, -5.000000e-01
  %175 = fmul double %54, -5.000000e-01
  %176 = call i32 @gs_matrix_translate(ptr noundef %5, double noundef %174, double noundef %175, ptr noundef %5) #8
  br label %177

177:                                              ; preds = %173, %150
  store float %133, ptr %4, align 4, !tbaa !5
  br label %178

178:                                              ; preds = %177, %102, %85
  %179 = load float, ptr %5, align 4, !tbaa !42
  %180 = fcmp oeq float %179, 0.000000e+00
  %181 = select i1 %180, double %51, double %54
  %182 = select i1 %180, double %54, double %51
  %183 = fcmp olt double %182, %58
  %184 = fcmp ogt double %182, %65
  %185 = select i1 %184, double %65, double %182
  %186 = select i1 %183, double %58, double %185
  store double %186, ptr %6, align 8, !tbaa !32
  %187 = fcmp olt double %181, %61
  %188 = fcmp ogt double %181, %69
  %189 = select i1 %188, double %69, double %181
  %190 = select i1 %187, double %61, double %189
  %191 = getelementptr inbounds %struct.gs_point_s, ptr %6, i64 0, i32 1
  store double %190, ptr %191, align 8, !tbaa !35
  br label %192

192:                                              ; preds = %128, %135, %142, %144, %178
  %193 = phi i32 [ 1, %178 ], [ 0, %142 ], [ 0, %144 ], [ 0, %135 ], [ 0, %128 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8
  br label %194

194:                                              ; preds = %45, %192
  %195 = phi i32 [ %193, %192 ], [ %47, %45 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #8
  br label %196

196:                                              ; preds = %23, %27, %194, %21, %15
  %197 = phi i32 [ %195, %194 ], [ %22, %21 ], [ %16, %15 ], [ -15, %27 ], [ -15, %23 ]
  ret i32 %197
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @obj_eq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @make_adjustment_matrix(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
  %6 = load double, ptr %0, align 8, !tbaa !32
  %7 = getelementptr inbounds %struct.gs_point_s, ptr %0, i64 0, i32 1
  %8 = load double, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.gs_rect_s, ptr %1, i64 0, i32 1
  %10 = load double, ptr %9, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.gs_rect_s, ptr %1, i64 0, i32 1, i32 1
  %12 = load double, ptr %11, align 8, !tbaa !41
  %13 = and i32 %4, 1
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, double %8, double %6
  %16 = select i1 %14, double %6, double %8
  %17 = load double, ptr %1, align 8, !tbaa !37
  %18 = fcmp oeq double %17, 0.000000e+00
  %19 = fcmp ogt double %10, %16
  %20 = select i1 %18, i1 %19, i1 false
  %21 = select i1 %20, double %16, double %10
  %22 = getelementptr inbounds %struct.gs_point_s, ptr %1, i64 0, i32 1
  %23 = load double, ptr %22, align 8, !tbaa !39
  %24 = fcmp oeq double %23, 0.000000e+00
  %25 = fcmp ogt double %12, %15
  %26 = select i1 %24, i1 %25, i1 false
  %27 = select i1 %26, double %15, double %12
  %28 = fmul double %21, 5.000000e-01
  %29 = fmul double %27, 5.000000e-01
  %30 = tail call i32 @gs_make_translation(double noundef %28, double noundef %29, ptr noundef %2) #8
  %31 = icmp eq i32 %4, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %5
  %33 = sitofp i32 %4 to double
  %34 = fmul double %33, 9.000000e+01
  %35 = tail call i32 @gs_matrix_rotate(ptr noundef %2, double noundef %34, ptr noundef %2) #8
  br label %36

36:                                               ; preds = %32, %5
  %37 = icmp eq i32 %3, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %36
  %39 = fdiv double %21, %16
  %40 = fdiv double %27, %15
  %41 = fcmp olt double %39, %40
  %42 = select i1 %41, double %39, double %40
  %43 = fcmp olt double %42, 1.000000e+00
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = tail call i32 @gs_matrix_scale(ptr noundef %2, double noundef %42, double noundef %42, ptr noundef %2) #8
  br label %46

46:                                               ; preds = %38, %44, %36
  %47 = load double, ptr %0, align 8, !tbaa !32
  %48 = fmul double %47, -5.000000e-01
  %49 = load double, ptr %7, align 8, !tbaa !35
  %50 = fmul double %49, -5.000000e-01
  %51 = tail call i32 @gs_matrix_translate(ptr noundef %2, double noundef %48, double noundef %50, ptr noundef %2) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare i32 @gs_make_translation(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_matrix_rotate(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_matrix_scale(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_matrix_translate(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @write_matrix(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !12, i64 8}
!11 = !{!"ref_stack_s", !12, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !16, i64 40, !16, i64 44, !13, i64 48, !16, i64 64, !16, i64 68, !16, i64 72, !16, i64 76, !16, i64 80, !13, i64 88, !16, i64 104, !16, i64 108, !16, i64 112, !12, i64 120}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"ref_s", !14, i64 0, !7, i64 8}
!14 = !{!"tas_s", !15, i64 0, !15, i64 2}
!15 = !{!"short", !7, i64 0}
!16 = !{!"int", !7, i64 0}
!17 = !{!13, !15, i64 0}
!18 = !{!11, !12, i64 0}
!19 = !{!20, !15, i64 0}
!20 = !{!"dict_s", !13, i64 0, !13, i64 16, !13, i64 32, !13, i64 48}
!21 = !{!16, !16, i64 0}
!22 = !{!12, !12, i64 0}
!23 = !{!13, !15, i64 2}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = !{i64 0, i64 2, !27, i64 2, i64 2, !27, i64 8, i64 8, !28, i64 8, i64 2, !27, i64 8, i64 4, !5, i64 8, i64 8, !28, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22, i64 8, i64 8, !22}
!27 = !{!15, !15, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"long", !7, i64 0}
!30 = !{i64 0, i64 2, !27, i64 6, i64 8, !28, i64 6, i64 2, !27, i64 6, i64 4, !5, i64 6, i64 8, !28, i64 6, i64 8, !22, i64 6, i64 8, !22, i64 6, i64 8, !22, i64 6, i64 8, !22, i64 6, i64 8, !22, i64 6, i64 8, !22, i64 6, i64 8, !22, i64 6, i64 8, !22, i64 6, i64 8, !22, i64 6, i64 8, !22, i64 6, i64 8, !22, i64 6, i64 8, !22, i64 6, i64 8, !22}
!31 = distinct !{!31, !25}
!32 = !{!33, !34, i64 0}
!33 = !{!"gs_point_s", !34, i64 0, !34, i64 8}
!34 = !{!"double", !7, i64 0}
!35 = !{!33, !34, i64 8}
!36 = distinct !{!36, !25}
!37 = !{!38, !34, i64 0}
!38 = !{!"gs_rect_s", !33, i64 0, !33, i64 16}
!39 = !{!38, !34, i64 8}
!40 = !{!38, !34, i64 16}
!41 = !{!38, !34, i64 24}
!42 = !{!43, !6, i64 0}
!43 = !{!"gs_matrix_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
