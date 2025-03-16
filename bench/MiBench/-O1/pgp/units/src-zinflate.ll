; ModuleID = 'src/zinflate.c'
source_filename = "src/zinflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.huft = type { i8, i8, %union.anon }
%union.anon = type { ptr }

@lbits = dso_local local_unnamed_addr global i32 9, align 4
@dbits = dso_local local_unnamed_addr global i32 6, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [32 x i8] c"\0A*** inflate out of memory *** \00", align 1
@hufts = dso_local local_unnamed_addr global i32 0, align 4
@slide = external local_unnamed_addr global [0 x i8], align 1
@outcnt = external local_unnamed_addr global i32, align 4
@outptr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"\0AWrite error.\0A\00", align 1
@bb = dso_local local_unnamed_addr global i64 0, align 8
@bk = dso_local local_unnamed_addr global i32 0, align 4
@wp = dso_local local_unnamed_addr global i32 0, align 4
@mask_bits = external local_unnamed_addr global [0 x i64], align 8
@incnt = external local_unnamed_addr global i32, align 4
@inptr = external local_unnamed_addr global ptr, align 8
@cplens = internal global [31 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258, i16 0, i16 0], align 16
@cplext = internal global [31 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 2, i16 3, i16 3, i16 3, i16 3, i16 4, i16 4, i16 4, i16 4, i16 5, i16 5, i16 5, i16 5, i16 0, i16 99, i16 99], align 16
@cpdist = internal global [30 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577], align 16
@cpdext = internal global [30 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 2, i16 2, i16 3, i16 3, i16 4, i16 4, i16 5, i16 5, i16 6, i16 6, i16 7, i16 7, i16 8, i16 8, i16 9, i16 9, i16 10, i16 10, i16 11, i16 11, i16 12, i16 12, i16 13, i16 13], align 16
@border = internal unnamed_addr constant [19 x i32] [i32 16, i32 17, i32 18, i32 0, i32 8, i32 7, i32 9, i32 6, i32 10, i32 5, i32 11, i32 4, i32 12, i32 3, i32 13, i32 2, i32 14, i32 1, i32 15], align 16
@bytebuf = dso_local local_unnamed_addr global i16 0, align 2

; Function Attrs: nounwind uwtable
define dso_local i32 @huft_build(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef %6) local_unnamed_addr #0 {
  %8 = alloca [17 x i32], align 16
  %9 = alloca [6 x i8], align 2
  %10 = alloca [16 x ptr], align 16
  %11 = alloca [288 x i32], align 16
  %12 = alloca [17 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %12) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %8, i8 0, i64 68, i1 false)
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i32 [ %1, %7 ], [ %22, %13 ]
  %15 = phi ptr [ %0, %7 ], [ %16, %13 ]
  %16 = getelementptr inbounds i32, ptr %15, i64 1
  %17 = load i32, ptr %15, align 4, !tbaa !5
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [17 x i32], ptr %8, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !5
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !5
  %22 = add i32 %14, -1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %13, !llvm.loop !9

24:                                               ; preds = %13
  %25 = load i32, ptr %8, align 16, !tbaa !5
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %349, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %6, align 4, !tbaa !5
  br label %29

29:                                               ; preds = %27, %34
  %30 = phi i64 [ 1, %27 ], [ %35, %34 ]
  %31 = getelementptr inbounds [17 x i32], ptr %8, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = add nuw nsw i64 %30, 1
  %36 = icmp eq i64 %35, 17
  br i1 %36, label %39, label %29, !llvm.loop !11

37:                                               ; preds = %29
  %38 = trunc i64 %30 to i32
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi i32 [ %38, %37 ], [ 17, %34 ]
  %41 = tail call i32 @llvm.umax.i32(i32 %28, i32 %40)
  br label %42

42:                                               ; preds = %39, %48
  %43 = phi i32 [ 16, %39 ], [ %49, %48 ]
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [17 x i32], ptr %8, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !5
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = add nsw i32 %43, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %42, !llvm.loop !12

51:                                               ; preds = %42, %48
  %52 = phi i32 [ %43, %42 ], [ 0, %48 ]
  %53 = tail call i32 @llvm.umin.i32(i32 %41, i32 %52)
  store i32 %53, ptr %6, align 4, !tbaa !5
  %54 = shl nuw i32 1, %40
  %55 = icmp ult i32 %40, %52
  br i1 %55, label %56, label %68

56:                                               ; preds = %51, %64
  %57 = phi i32 [ %66, %64 ], [ %54, %51 ]
  %58 = phi i32 [ %65, %64 ], [ %40, %51 ]
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [17 x i32], ptr %8, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !5
  %62 = sub i32 %57, %61
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %349, label %64

64:                                               ; preds = %56
  %65 = add nuw nsw i32 %58, 1
  %66 = shl nuw i32 %62, 1
  %67 = icmp eq i32 %65, %52
  br i1 %67, label %68, label %56, !llvm.loop !13

68:                                               ; preds = %64, %51
  %69 = phi i32 [ %54, %51 ], [ %66, %64 ]
  %70 = zext i32 %52 to i64
  %71 = getelementptr inbounds [17 x i32], ptr %8, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !5
  %73 = sub i32 %69, %72
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %349, label %75

75:                                               ; preds = %68
  store i32 %69, ptr %71, align 4, !tbaa !5
  %76 = getelementptr inbounds [17 x i32], ptr %12, i64 0, i64 1
  store i32 0, ptr %76, align 4, !tbaa !5
  %77 = add i32 %52, -1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds i32, ptr %12, i64 2
  br label %83

81:                                               ; preds = %83, %75
  %82 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  br label %94

83:                                               ; preds = %79, %83
  %84 = phi i32 [ %92, %83 ], [ %77, %79 ]
  %85 = phi ptr [ %91, %83 ], [ %80, %79 ]
  %86 = phi ptr [ %88, %83 ], [ %8, %79 ]
  %87 = phi i32 [ %90, %83 ], [ 0, %79 ]
  %88 = getelementptr inbounds i32, ptr %86, i64 1
  %89 = load i32, ptr %88, align 4, !tbaa !5
  %90 = add i32 %89, %87
  %91 = getelementptr inbounds i32, ptr %85, i64 1
  store i32 %90, ptr %85, align 4, !tbaa !5
  %92 = add i32 %84, -1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %81, label %83, !llvm.loop !14

94:                                               ; preds = %81, %107
  %95 = phi i32 [ %108, %107 ], [ 0, %81 ]
  %96 = phi ptr [ %97, %107 ], [ %0, %81 ]
  %97 = getelementptr inbounds i32, ptr %96, i64 1
  %98 = load i32, ptr %96, align 4, !tbaa !5
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %94
  %101 = zext i32 %98 to i64
  %102 = getelementptr inbounds [17 x i32], ptr %12, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !5
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 4, !tbaa !5
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds [288 x i32], ptr %11, i64 0, i64 %105
  store i32 %95, ptr %106, align 4, !tbaa !5
  br label %107

107:                                              ; preds = %94, %100
  %108 = add nuw i32 %95, 1
  %109 = icmp eq i32 %108, %82
  br i1 %109, label %110, label %94, !llvm.loop !15

110:                                              ; preds = %107
  store i32 0, ptr %12, align 16, !tbaa !5
  store ptr null, ptr %10, align 16, !tbaa !16
  %111 = icmp sgt i32 %40, %52
  br i1 %111, label %344, label %112

112:                                              ; preds = %110
  %113 = sub nsw i32 0, %53
  %114 = trunc i32 %53 to i8
  %115 = zext i32 %1 to i64
  %116 = getelementptr inbounds i32, ptr %11, i64 %115
  %117 = zext nneg i32 %40 to i64
  %118 = add nuw nsw i32 %52, 1
  %119 = zext i32 %118 to i64
  %120 = tail call i32 @llvm.umin.i32(i32 %52, i32 %41)
  br label %121

121:                                              ; preds = %112, %333
  %122 = phi i64 [ %117, %112 ], [ %342, %333 ]
  %123 = phi i32 [ 0, %112 ], [ %341, %333 ]
  %124 = phi i32 [ %113, %112 ], [ %340, %333 ]
  %125 = phi ptr [ undef, %112 ], [ %339, %333 ]
  %126 = phi ptr [ null, %112 ], [ %338, %333 ]
  %127 = phi ptr [ %11, %112 ], [ %337, %333 ]
  %128 = phi i32 [ 0, %112 ], [ %336, %333 ]
  %129 = phi i32 [ -1, %112 ], [ %335, %333 ]
  %130 = phi ptr [ %5, %112 ], [ %334, %333 ]
  %131 = getelementptr inbounds [17 x i32], ptr %8, i64 0, i64 %122
  %132 = load i32, ptr %131, align 4, !tbaa !5
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %333, label %134

134:                                              ; preds = %121
  %135 = getelementptr inbounds i32, ptr %8, i64 %122
  %136 = trunc i64 %122 to i32
  %137 = add i32 %136, -1
  %138 = shl nuw i32 1, %137
  %139 = trunc i64 %122 to i32
  %140 = trunc i64 %122 to i32
  br label %147

141:                                              ; preds = %322
  %142 = trunc i64 %325 to i32
  br label %143

143:                                              ; preds = %141, %309
  %144 = phi i32 [ %248, %309 ], [ %142, %141 ]
  %145 = phi i32 [ %251, %309 ], [ %326, %141 ]
  %146 = icmp eq i32 %157, 0
  br i1 %146, label %333, label %147, !llvm.loop !18

147:                                              ; preds = %134, %143
  %148 = phi i32 [ %123, %134 ], [ %252, %143 ]
  %149 = phi i32 [ %124, %134 ], [ %145, %143 ]
  %150 = phi ptr [ %125, %134 ], [ %285, %143 ]
  %151 = phi ptr [ %126, %134 ], [ %249, %143 ]
  %152 = phi ptr [ %127, %134 ], [ %284, %143 ]
  %153 = phi i32 [ %128, %134 ], [ %312, %143 ]
  %154 = phi i32 [ %129, %134 ], [ %144, %143 ]
  %155 = phi i32 [ %132, %134 ], [ %157, %143 ]
  %156 = phi ptr [ %130, %134 ], [ %247, %143 ]
  %157 = add i32 %155, -1
  %158 = add nsw i32 %149, %53
  %159 = sext i32 %158 to i64
  %160 = icmp sgt i64 %122, %159
  br i1 %160, label %161, label %246

161:                                              ; preds = %147
  %162 = sub i32 %52, %158
  %163 = sext i32 %154 to i64
  br label %164

164:                                              ; preds = %161, %238
  %165 = phi i64 [ %163, %161 ], [ %172, %238 ]
  %166 = phi i32 [ %162, %161 ], [ %243, %238 ]
  %167 = phi i32 [ %158, %161 ], [ %240, %238 ]
  %168 = phi i32 [ %149, %161 ], [ %167, %238 ]
  %169 = phi ptr [ %150, %161 ], [ %239, %238 ]
  %170 = phi ptr [ %156, %161 ], [ %222, %238 ]
  %171 = call i32 @llvm.umin.i32(i32 %120, i32 %166)
  %172 = add i64 %165, 1
  %173 = sub nsw i32 %52, %167
  %174 = call i32 @llvm.umin.i32(i32 %173, i32 %53)
  %175 = sub nsw i32 %139, %167
  %176 = shl nuw i32 1, %175
  %177 = icmp ugt i32 %176, %155
  br i1 %177, label %178, label %195

178:                                              ; preds = %164
  %179 = add i32 %175, 1
  %180 = icmp ult i32 %179, %174
  br i1 %180, label %181, label %195

181:                                              ; preds = %178
  %182 = sub i32 %176, %155
  br label %187

183:                                              ; preds = %187
  %184 = sub i32 %191, %193
  %185 = add nuw nsw i32 %188, 1
  %186 = icmp ult i32 %185, %174
  br i1 %186, label %187, label %195, !llvm.loop !19

187:                                              ; preds = %181, %183
  %188 = phi i32 [ %185, %183 ], [ %179, %181 ]
  %189 = phi ptr [ %192, %183 ], [ %135, %181 ]
  %190 = phi i32 [ %184, %183 ], [ %182, %181 ]
  %191 = shl i32 %190, 1
  %192 = getelementptr inbounds i32, ptr %189, i64 1
  %193 = load i32, ptr %192, align 4, !tbaa !5
  %194 = icmp ugt i32 %191, %193
  br i1 %194, label %183, label %195

195:                                              ; preds = %187, %183, %178, %164
  %196 = phi i32 [ %175, %164 ], [ %179, %178 ], [ %171, %183 ], [ %188, %187 ]
  %197 = shl nuw i32 1, %196
  %198 = add nuw i32 %197, 1
  %199 = zext i32 %198 to i64
  %200 = shl nuw nsw i64 %199, 4
  %201 = call noalias ptr @malloc(i64 noundef %200) #10
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %218

203:                                              ; preds = %195
  %204 = and i64 %172, 4294967295
  %205 = icmp eq i64 %204, 0
  %206 = load ptr, ptr %10, align 16
  %207 = icmp eq ptr %206, null
  %208 = select i1 %205, i1 true, i1 %207
  br i1 %208, label %215, label %209

209:                                              ; preds = %203, %209
  %210 = phi ptr [ %213, %209 ], [ %206, %203 ]
  %211 = getelementptr inbounds %struct.huft, ptr %210, i64 -1
  %212 = getelementptr %struct.huft, ptr %210, i64 -1, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !20
  call void @free(ptr noundef %211) #9
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %209, !llvm.loop !21

215:                                              ; preds = %209, %203
  %216 = load ptr, ptr @stderr, align 8, !tbaa !16
  %217 = call i64 @fwrite(ptr nonnull @.str, i64 31, i64 1, ptr %216) #11
  br label %349

218:                                              ; preds = %195
  %219 = load i32, ptr @hufts, align 4, !tbaa !5
  %220 = add i32 %219, %198
  store i32 %220, ptr @hufts, align 4, !tbaa !5
  %221 = getelementptr inbounds %struct.huft, ptr %201, i64 1
  store ptr %221, ptr %170, align 8, !tbaa !16
  %222 = getelementptr inbounds %struct.huft, ptr %201, i64 0, i32 2
  store ptr null, ptr %222, align 8, !tbaa !16
  %223 = getelementptr inbounds [16 x ptr], ptr %10, i64 0, i64 %172
  store ptr %221, ptr %223, align 8, !tbaa !16
  %224 = and i64 %172, 4294967295
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %238, label %226

226:                                              ; preds = %218
  %227 = getelementptr inbounds [17 x i32], ptr %12, i64 0, i64 %172
  store i32 %153, ptr %227, align 4, !tbaa !5
  %228 = trunc i32 %196 to i8
  %229 = add i8 %228, 16
  %230 = lshr i32 %153, %168
  %231 = getelementptr inbounds [16 x ptr], ptr %10, i64 0, i64 %165
  %232 = load ptr, ptr %231, align 8, !tbaa !16
  %233 = zext i32 %230 to i64
  %234 = getelementptr inbounds %struct.huft, ptr %232, i64 %233
  store i8 %229, ptr %234, align 8, !tbaa.struct !22
  %235 = getelementptr inbounds i8, ptr %234, i64 1
  store i8 %114, ptr %235, align 1, !tbaa.struct !25
  %236 = getelementptr inbounds i8, ptr %234, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %236, ptr noundef nonnull align 2 dereferenceable(6) %9, i64 6, i1 false), !tbaa.struct !26
  %237 = getelementptr inbounds i8, ptr %234, i64 8
  store ptr %221, ptr %237, align 8, !tbaa.struct !27
  br label %238

238:                                              ; preds = %226, %218
  %239 = phi ptr [ %221, %226 ], [ %169, %218 ]
  %240 = add nsw i32 %167, %53
  %241 = sext i32 %240 to i64
  %242 = icmp sgt i64 %122, %241
  %243 = sub i32 %166, %53
  br i1 %242, label %164, label %244, !llvm.loop !28

244:                                              ; preds = %238
  %245 = trunc i64 %172 to i32
  br label %246

246:                                              ; preds = %244, %147
  %247 = phi ptr [ %156, %147 ], [ %222, %244 ]
  %248 = phi i32 [ %154, %147 ], [ %245, %244 ]
  %249 = phi ptr [ %151, %147 ], [ %221, %244 ]
  %250 = phi ptr [ %150, %147 ], [ %239, %244 ]
  %251 = phi i32 [ %149, %147 ], [ %167, %244 ]
  %252 = phi i32 [ %148, %147 ], [ %197, %244 ]
  %253 = sub nsw i32 %140, %251
  %254 = trunc i32 %253 to i8
  %255 = icmp ult ptr %152, %116
  br i1 %255, label %256, label %283

256:                                              ; preds = %246
  %257 = load i32, ptr %152, align 4, !tbaa !5
  %258 = icmp ult i32 %257, %2
  br i1 %258, label %259, label %269

259:                                              ; preds = %256
  %260 = icmp ult i32 %257, 256
  %261 = select i1 %260, i8 16, i8 15
  %262 = getelementptr inbounds i32, ptr %152, i64 1
  %263 = ptrtoint ptr %250 to i64
  %264 = and i32 %257, 65535
  %265 = zext nneg i32 %264 to i64
  %266 = and i64 %263, -65536
  %267 = or disjoint i64 %266, %265
  %268 = inttoptr i64 %267 to ptr
  br label %283

269:                                              ; preds = %256
  %270 = sub i32 %257, %2
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds i16, ptr %4, i64 %271
  %273 = load i16, ptr %272, align 2, !tbaa !23
  %274 = trunc i16 %273 to i8
  %275 = getelementptr inbounds i32, ptr %152, i64 1
  %276 = getelementptr inbounds i16, ptr %3, i64 %271
  %277 = load i16, ptr %276, align 2, !tbaa !23
  %278 = ptrtoint ptr %250 to i64
  %279 = zext i16 %277 to i64
  %280 = and i64 %278, -65536
  %281 = or disjoint i64 %280, %279
  %282 = inttoptr i64 %281 to ptr
  br label %283

283:                                              ; preds = %246, %259, %269
  %284 = phi ptr [ %262, %259 ], [ %275, %269 ], [ %152, %246 ]
  %285 = phi ptr [ %268, %259 ], [ %282, %269 ], [ %250, %246 ]
  %286 = phi i8 [ %261, %259 ], [ %274, %269 ], [ 99, %246 ]
  %287 = shl nuw i32 1, %253
  %288 = lshr i32 %153, %251
  %289 = icmp ult i32 %288, %252
  br i1 %289, label %290, label %299

290:                                              ; preds = %283, %290
  %291 = phi i32 [ %297, %290 ], [ %288, %283 ]
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds %struct.huft, ptr %249, i64 %292
  store i8 %286, ptr %293, align 8, !tbaa.struct !22
  %294 = getelementptr inbounds i8, ptr %293, i64 1
  store i8 %254, ptr %294, align 1, !tbaa.struct !25
  %295 = getelementptr inbounds i8, ptr %293, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %295, ptr noundef nonnull align 2 dereferenceable(6) %9, i64 6, i1 false), !tbaa.struct !26
  %296 = getelementptr inbounds i8, ptr %293, i64 8
  store ptr %285, ptr %296, align 8, !tbaa.struct !27
  %297 = add i32 %291, %287
  %298 = icmp ult i32 %297, %252
  br i1 %298, label %290, label %299, !llvm.loop !29

299:                                              ; preds = %290, %283
  %300 = and i32 %138, %153
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %309, label %302

302:                                              ; preds = %299, %302
  %303 = phi i32 [ %306, %302 ], [ %138, %299 ]
  %304 = phi i32 [ %305, %302 ], [ %153, %299 ]
  %305 = xor i32 %303, %304
  %306 = lshr i32 %303, 1
  %307 = and i32 %306, %305
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %302, !llvm.loop !30

309:                                              ; preds = %302, %299
  %310 = phi i32 [ %153, %299 ], [ %305, %302 ]
  %311 = phi i32 [ %138, %299 ], [ %306, %302 ]
  %312 = xor i32 %311, %310
  %313 = shl nsw i32 -1, %251
  %314 = xor i32 %313, -1
  %315 = and i32 %312, %314
  %316 = sext i32 %248 to i64
  %317 = getelementptr inbounds [17 x i32], ptr %12, i64 0, i64 %316
  %318 = load i32, ptr %317, align 4, !tbaa !5
  %319 = icmp eq i32 %315, %318
  br i1 %319, label %143, label %320

320:                                              ; preds = %309
  %321 = sext i32 %248 to i64
  br label %322

322:                                              ; preds = %320, %322
  %323 = phi i64 [ %321, %320 ], [ %325, %322 ]
  %324 = phi i32 [ %251, %320 ], [ %326, %322 ]
  %325 = add i64 %323, -1
  %326 = sub nsw i32 %324, %53
  %327 = shl nsw i32 -1, %326
  %328 = xor i32 %327, -1
  %329 = and i32 %312, %328
  %330 = getelementptr inbounds [17 x i32], ptr %12, i64 0, i64 %325
  %331 = load i32, ptr %330, align 4, !tbaa !5
  %332 = icmp eq i32 %329, %331
  br i1 %332, label %141, label %322, !llvm.loop !31

333:                                              ; preds = %143, %121
  %334 = phi ptr [ %130, %121 ], [ %247, %143 ]
  %335 = phi i32 [ %129, %121 ], [ %144, %143 ]
  %336 = phi i32 [ %128, %121 ], [ %312, %143 ]
  %337 = phi ptr [ %127, %121 ], [ %284, %143 ]
  %338 = phi ptr [ %126, %121 ], [ %249, %143 ]
  %339 = phi ptr [ %125, %121 ], [ %285, %143 ]
  %340 = phi i32 [ %124, %121 ], [ %145, %143 ]
  %341 = phi i32 [ %123, %121 ], [ %252, %143 ]
  %342 = add nuw nsw i64 %122, 1
  %343 = icmp eq i64 %342, %119
  br i1 %343, label %344, label %121, !llvm.loop !32

344:                                              ; preds = %333, %110
  %345 = icmp ne i32 %69, %72
  %346 = icmp ne i32 %1, 1
  %347 = and i1 %346, %345
  %348 = zext i1 %347 to i32
  br label %349

349:                                              ; preds = %56, %68, %24, %344, %215
  %350 = phi i32 [ 3, %215 ], [ %348, %344 ], [ 2, %24 ], [ 2, %68 ], [ 2, %56 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %8) #9
  ret i32 %350
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @huft_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %7, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.huft, ptr %4, i64 -1
  %6 = getelementptr %struct.huft, ptr %4, i64 -1, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !20
  tail call void @free(ptr noundef %5) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %3, !llvm.loop !21

9:                                                ; preds = %3, %1
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @flush(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %26, label %3

3:                                                ; preds = %1, %22
  %4 = phi ptr [ %23, %22 ], [ @slide, %1 ]
  %5 = phi i32 [ %24, %22 ], [ %0, %1 ]
  %6 = load i32, ptr @outcnt, align 4, !tbaa !5
  %7 = sub nsw i32 8192, %6
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %5)
  %9 = load ptr, ptr @outptr, align 8, !tbaa !16
  %10 = zext i32 %8 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %4, i64 %10, i1 false)
  %11 = load ptr, ptr @outptr, align 8, !tbaa !16
  %12 = getelementptr inbounds i8, ptr %11, i64 %10
  store ptr %12, ptr @outptr, align 8, !tbaa !16
  %13 = load i32, ptr @outcnt, align 4, !tbaa !5
  %14 = add i32 %13, %8
  store i32 %14, ptr @outcnt, align 4, !tbaa !5
  %15 = icmp eq i32 %14, 8192
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = tail call i32 @FlushOutput() #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !16
  %21 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 14, i64 1, ptr %20) #11
  tail call void @exitPGP(i32 noundef 1) #9
  br label %22

22:                                               ; preds = %16, %19, %3
  %23 = getelementptr inbounds i8, ptr %4, i64 %10
  %24 = sub i32 %5, %8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %3, !llvm.loop !33

26:                                               ; preds = %22, %1
  ret void
}

declare i32 @FlushOutput() local_unnamed_addr #6

declare void @exitPGP(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflate_codes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i64, ptr @bb, align 8, !tbaa !34
  %6 = load i32, ptr @bk, align 4, !tbaa !5
  %7 = load i32, ptr @wp, align 4, !tbaa !5
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds [0 x i64], ptr @mask_bits, i64 0, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !34
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds [0 x i64], ptr @mask_bits, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !34
  br label %14

14:                                               ; preds = %371, %4
  %15 = phi i32 [ %7, %4 ], [ %372, %371 ]
  %16 = phi i64 [ %5, %4 ], [ %373, %371 ]
  %17 = phi i32 [ %6, %4 ], [ %374, %371 ]
  %18 = icmp ult i32 %17, %2
  br i1 %18, label %19, label %38

19:                                               ; preds = %14, %28
  %20 = phi i32 [ %36, %28 ], [ %17, %14 ]
  %21 = phi i64 [ %35, %28 ], [ %16, %14 ]
  %22 = load i32, ptr @incnt, align 4, !tbaa !5
  %23 = add nsw i32 %22, -1
  store i32 %23, ptr @incnt, align 4, !tbaa !5
  %24 = icmp slt i32 %22, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = tail call i32 @FillInBuf() #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %376

28:                                               ; preds = %25, %19
  %29 = load ptr, ptr @inptr, align 8, !tbaa !16
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %30, ptr @inptr, align 8, !tbaa !16
  %31 = load i8, ptr %29, align 1, !tbaa !20
  %32 = zext i8 %31 to i64
  %33 = zext nneg i32 %20 to i64
  %34 = shl i64 %32, %33
  %35 = or i64 %34, %21
  %36 = add i32 %20, 8
  %37 = icmp ult i32 %36, %2
  br i1 %37, label %19, label %38, !llvm.loop !36

38:                                               ; preds = %28, %14
  %39 = phi i64 [ %16, %14 ], [ %35, %28 ]
  %40 = phi i32 [ %17, %14 ], [ %36, %28 ]
  %41 = and i64 %39, %10
  %42 = getelementptr inbounds %struct.huft, ptr %0, i64 %41
  %43 = load i8, ptr %42, align 8, !tbaa !37
  %44 = zext i8 %43 to i32
  %45 = icmp ugt i8 %43, 16
  br i1 %45, label %46, label %97

46:                                               ; preds = %38, %84
  %47 = phi ptr [ %93, %84 ], [ %42, %38 ]
  %48 = phi i32 [ %95, %84 ], [ %44, %38 ]
  %49 = phi i64 [ %85, %84 ], [ %39, %38 ]
  %50 = phi i32 [ %86, %84 ], [ %40, %38 ]
  %51 = icmp eq i32 %48, 99
  br i1 %51, label %376, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.huft, ptr %47, i64 0, i32 1
  %54 = load i8, ptr %53, align 1, !tbaa !39
  %55 = zext i8 %54 to i32
  %56 = zext nneg i8 %54 to i64
  %57 = lshr i64 %49, %56
  %58 = sub i32 %50, %55
  %59 = add nsw i32 %48, -16
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %52
  %62 = zext i32 %58 to i64
  %63 = zext i32 %59 to i64
  br label %64

64:                                               ; preds = %61, %73
  %65 = phi i64 [ %62, %61 ], [ %80, %73 ]
  %66 = phi i64 [ %57, %61 ], [ %79, %73 ]
  %67 = load i32, ptr @incnt, align 4, !tbaa !5
  %68 = add nsw i32 %67, -1
  store i32 %68, ptr @incnt, align 4, !tbaa !5
  %69 = icmp slt i32 %67, 1
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = tail call i32 @FillInBuf() #9
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %376

73:                                               ; preds = %70, %64
  %74 = load ptr, ptr @inptr, align 8, !tbaa !16
  %75 = getelementptr inbounds i8, ptr %74, i64 1
  store ptr %75, ptr @inptr, align 8, !tbaa !16
  %76 = load i8, ptr %74, align 1, !tbaa !20
  %77 = zext i8 %76 to i64
  %78 = shl i64 %77, %65
  %79 = or i64 %78, %66
  %80 = add nuw nsw i64 %65, 8
  %81 = icmp ult i64 %80, %63
  br i1 %81, label %64, label %82, !llvm.loop !40

82:                                               ; preds = %73
  %83 = trunc i64 %80 to i32
  br label %84

84:                                               ; preds = %82, %52
  %85 = phi i64 [ %57, %52 ], [ %79, %82 ]
  %86 = phi i32 [ %58, %52 ], [ %83, %82 ]
  %87 = getelementptr inbounds %struct.huft, ptr %47, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !20
  %89 = zext nneg i32 %59 to i64
  %90 = getelementptr inbounds [0 x i64], ptr @mask_bits, i64 0, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !34
  %92 = and i64 %91, %85
  %93 = getelementptr inbounds %struct.huft, ptr %88, i64 %92
  %94 = load i8, ptr %93, align 8, !tbaa !37
  %95 = zext i8 %94 to i32
  %96 = icmp ugt i8 %94, 16
  br i1 %96, label %46, label %97, !llvm.loop !41

97:                                               ; preds = %84, %38
  %98 = phi ptr [ %42, %38 ], [ %93, %84 ]
  %99 = phi i32 [ %44, %38 ], [ %95, %84 ]
  %100 = phi i64 [ %39, %38 ], [ %85, %84 ]
  %101 = phi i32 [ %40, %38 ], [ %86, %84 ]
  %102 = getelementptr inbounds %struct.huft, ptr %98, i64 0, i32 1
  %103 = load i8, ptr %102, align 1, !tbaa !39
  %104 = zext i8 %103 to i32
  %105 = zext nneg i8 %103 to i64
  %106 = lshr i64 %100, %105
  %107 = sub i32 %101, %104
  %108 = trunc i32 %99 to i8
  switch i8 %108, label %109 [
    i8 16, label %114
    i8 15, label %375
  ]

109:                                              ; preds = %97
  %110 = icmp ult i32 %107, %99
  br i1 %110, label %111, label %165

111:                                              ; preds = %109
  %112 = zext i32 %107 to i64
  %113 = zext nneg i32 %99 to i64
  br label %145

114:                                              ; preds = %97
  %115 = getelementptr inbounds %struct.huft, ptr %98, i64 0, i32 2
  %116 = load i16, ptr %115, align 8, !tbaa !20
  %117 = trunc i16 %116 to i8
  %118 = add i32 %15, 1
  %119 = zext i32 %15 to i64
  %120 = getelementptr inbounds [0 x i8], ptr @slide, i64 0, i64 %119
  store i8 %117, ptr %120, align 1, !tbaa !20
  %121 = icmp eq i32 %118, 8192
  br i1 %121, label %122, label %371

122:                                              ; preds = %114, %141
  %123 = phi ptr [ %142, %141 ], [ @slide, %114 ]
  %124 = phi i32 [ %143, %141 ], [ 8192, %114 ]
  %125 = load i32, ptr @outcnt, align 4, !tbaa !5
  %126 = sub nsw i32 8192, %125
  %127 = tail call i32 @llvm.umin.i32(i32 %126, i32 %124)
  %128 = load ptr, ptr @outptr, align 8, !tbaa !16
  %129 = zext i32 %127 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %128, ptr align 1 %123, i64 %129, i1 false)
  %130 = load ptr, ptr @outptr, align 8, !tbaa !16
  %131 = getelementptr inbounds i8, ptr %130, i64 %129
  store ptr %131, ptr @outptr, align 8, !tbaa !16
  %132 = load i32, ptr @outcnt, align 4, !tbaa !5
  %133 = add i32 %132, %127
  store i32 %133, ptr @outcnt, align 4, !tbaa !5
  %134 = icmp eq i32 %133, 8192
  br i1 %134, label %135, label %141

135:                                              ; preds = %122
  %136 = tail call i32 @FlushOutput() #9
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr @stderr, align 8, !tbaa !16
  %140 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 14, i64 1, ptr %139) #11
  tail call void @exitPGP(i32 noundef 1) #9
  br label %141

141:                                              ; preds = %138, %135, %122
  %142 = getelementptr inbounds i8, ptr %123, i64 %129
  %143 = sub i32 %124, %127
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %371, label %122, !llvm.loop !33

145:                                              ; preds = %111, %154
  %146 = phi i64 [ %112, %111 ], [ %161, %154 ]
  %147 = phi i64 [ %106, %111 ], [ %160, %154 ]
  %148 = load i32, ptr @incnt, align 4, !tbaa !5
  %149 = add nsw i32 %148, -1
  store i32 %149, ptr @incnt, align 4, !tbaa !5
  %150 = icmp slt i32 %148, 1
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = tail call i32 @FillInBuf() #9
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %376

154:                                              ; preds = %151, %145
  %155 = load ptr, ptr @inptr, align 8, !tbaa !16
  %156 = getelementptr inbounds i8, ptr %155, i64 1
  store ptr %156, ptr @inptr, align 8, !tbaa !16
  %157 = load i8, ptr %155, align 1, !tbaa !20
  %158 = zext i8 %157 to i64
  %159 = shl nuw nsw i64 %158, %146
  %160 = or i64 %159, %147
  %161 = add nuw nsw i64 %146, 8
  %162 = icmp ult i64 %161, %113
  br i1 %162, label %145, label %163, !llvm.loop !42

163:                                              ; preds = %154
  %164 = trunc i64 %161 to i32
  br label %165

165:                                              ; preds = %163, %109
  %166 = phi i64 [ %106, %109 ], [ %160, %163 ]
  %167 = phi i32 [ %107, %109 ], [ %164, %163 ]
  %168 = getelementptr inbounds %struct.huft, ptr %98, i64 0, i32 2
  %169 = load i16, ptr %168, align 8, !tbaa !20
  %170 = zext i16 %169 to i64
  %171 = zext nneg i32 %99 to i64
  %172 = getelementptr inbounds [0 x i64], ptr @mask_bits, i64 0, i64 %171
  %173 = load i64, ptr %172, align 8, !tbaa !34
  %174 = and i64 %173, %166
  %175 = add i64 %174, %170
  %176 = trunc i64 %175 to i32
  %177 = lshr i64 %166, %171
  %178 = sub i32 %167, %99
  %179 = icmp ult i32 %178, %3
  br i1 %179, label %180, label %199

180:                                              ; preds = %165, %189
  %181 = phi i32 [ %197, %189 ], [ %178, %165 ]
  %182 = phi i64 [ %196, %189 ], [ %177, %165 ]
  %183 = load i32, ptr @incnt, align 4, !tbaa !5
  %184 = add nsw i32 %183, -1
  store i32 %184, ptr @incnt, align 4, !tbaa !5
  %185 = icmp slt i32 %183, 1
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = tail call i32 @FillInBuf() #9
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %376

189:                                              ; preds = %186, %180
  %190 = load ptr, ptr @inptr, align 8, !tbaa !16
  %191 = getelementptr inbounds i8, ptr %190, i64 1
  store ptr %191, ptr @inptr, align 8, !tbaa !16
  %192 = load i8, ptr %190, align 1, !tbaa !20
  %193 = zext i8 %192 to i64
  %194 = zext nneg i32 %181 to i64
  %195 = shl i64 %193, %194
  %196 = or i64 %195, %182
  %197 = add i32 %181, 8
  %198 = icmp ult i32 %197, %3
  br i1 %198, label %180, label %199, !llvm.loop !43

199:                                              ; preds = %189, %165
  %200 = phi i64 [ %177, %165 ], [ %196, %189 ]
  %201 = phi i32 [ %178, %165 ], [ %197, %189 ]
  %202 = and i64 %200, %13
  %203 = getelementptr inbounds %struct.huft, ptr %1, i64 %202
  %204 = load i8, ptr %203, align 8, !tbaa !37
  %205 = zext i8 %204 to i32
  %206 = icmp ugt i8 %204, 16
  br i1 %206, label %207, label %258

207:                                              ; preds = %199, %245
  %208 = phi ptr [ %254, %245 ], [ %203, %199 ]
  %209 = phi i32 [ %256, %245 ], [ %205, %199 ]
  %210 = phi i64 [ %246, %245 ], [ %200, %199 ]
  %211 = phi i32 [ %247, %245 ], [ %201, %199 ]
  %212 = icmp eq i32 %209, 99
  br i1 %212, label %376, label %213

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.huft, ptr %208, i64 0, i32 1
  %215 = load i8, ptr %214, align 1, !tbaa !39
  %216 = zext i8 %215 to i32
  %217 = zext nneg i8 %215 to i64
  %218 = lshr i64 %210, %217
  %219 = sub i32 %211, %216
  %220 = add nsw i32 %209, -16
  %221 = icmp ult i32 %219, %220
  br i1 %221, label %222, label %245

222:                                              ; preds = %213
  %223 = zext i32 %219 to i64
  %224 = zext i32 %220 to i64
  br label %225

225:                                              ; preds = %222, %234
  %226 = phi i64 [ %223, %222 ], [ %241, %234 ]
  %227 = phi i64 [ %218, %222 ], [ %240, %234 ]
  %228 = load i32, ptr @incnt, align 4, !tbaa !5
  %229 = add nsw i32 %228, -1
  store i32 %229, ptr @incnt, align 4, !tbaa !5
  %230 = icmp slt i32 %228, 1
  br i1 %230, label %231, label %234

231:                                              ; preds = %225
  %232 = tail call i32 @FillInBuf() #9
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %376

234:                                              ; preds = %231, %225
  %235 = load ptr, ptr @inptr, align 8, !tbaa !16
  %236 = getelementptr inbounds i8, ptr %235, i64 1
  store ptr %236, ptr @inptr, align 8, !tbaa !16
  %237 = load i8, ptr %235, align 1, !tbaa !20
  %238 = zext i8 %237 to i64
  %239 = shl i64 %238, %226
  %240 = or i64 %239, %227
  %241 = add nuw nsw i64 %226, 8
  %242 = icmp ult i64 %241, %224
  br i1 %242, label %225, label %243, !llvm.loop !44

243:                                              ; preds = %234
  %244 = trunc i64 %241 to i32
  br label %245

245:                                              ; preds = %243, %213
  %246 = phi i64 [ %218, %213 ], [ %240, %243 ]
  %247 = phi i32 [ %219, %213 ], [ %244, %243 ]
  %248 = getelementptr inbounds %struct.huft, ptr %208, i64 0, i32 2
  %249 = load ptr, ptr %248, align 8, !tbaa !20
  %250 = zext nneg i32 %220 to i64
  %251 = getelementptr inbounds [0 x i64], ptr @mask_bits, i64 0, i64 %250
  %252 = load i64, ptr %251, align 8, !tbaa !34
  %253 = and i64 %252, %246
  %254 = getelementptr inbounds %struct.huft, ptr %249, i64 %253
  %255 = load i8, ptr %254, align 8, !tbaa !37
  %256 = zext i8 %255 to i32
  %257 = icmp ugt i8 %255, 16
  br i1 %257, label %207, label %258, !llvm.loop !45

258:                                              ; preds = %245, %199
  %259 = phi ptr [ %203, %199 ], [ %254, %245 ]
  %260 = phi i32 [ %205, %199 ], [ %256, %245 ]
  %261 = phi i64 [ %200, %199 ], [ %246, %245 ]
  %262 = phi i32 [ %201, %199 ], [ %247, %245 ]
  %263 = getelementptr inbounds %struct.huft, ptr %259, i64 0, i32 1
  %264 = load i8, ptr %263, align 1, !tbaa !39
  %265 = zext i8 %264 to i32
  %266 = zext nneg i8 %264 to i64
  %267 = lshr i64 %261, %266
  %268 = sub i32 %262, %265
  %269 = icmp ult i32 %268, %260
  br i1 %269, label %270, label %293

270:                                              ; preds = %258
  %271 = zext i32 %268 to i64
  %272 = zext nneg i32 %260 to i64
  br label %273

273:                                              ; preds = %270, %282
  %274 = phi i64 [ %271, %270 ], [ %289, %282 ]
  %275 = phi i64 [ %267, %270 ], [ %288, %282 ]
  %276 = load i32, ptr @incnt, align 4, !tbaa !5
  %277 = add nsw i32 %276, -1
  store i32 %277, ptr @incnt, align 4, !tbaa !5
  %278 = icmp slt i32 %276, 1
  br i1 %278, label %279, label %282

279:                                              ; preds = %273
  %280 = tail call i32 @FillInBuf() #9
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %376

282:                                              ; preds = %279, %273
  %283 = load ptr, ptr @inptr, align 8, !tbaa !16
  %284 = getelementptr inbounds i8, ptr %283, i64 1
  store ptr %284, ptr @inptr, align 8, !tbaa !16
  %285 = load i8, ptr %283, align 1, !tbaa !20
  %286 = zext i8 %285 to i64
  %287 = shl nuw nsw i64 %286, %274
  %288 = or i64 %287, %275
  %289 = add nuw nsw i64 %274, 8
  %290 = icmp ult i64 %289, %272
  br i1 %290, label %273, label %291, !llvm.loop !46

291:                                              ; preds = %282
  %292 = trunc i64 %289 to i32
  br label %293

293:                                              ; preds = %291, %258
  %294 = phi i64 [ %267, %258 ], [ %288, %291 ]
  %295 = phi i32 [ %268, %258 ], [ %292, %291 ]
  %296 = getelementptr inbounds %struct.huft, ptr %259, i64 0, i32 2
  %297 = load i16, ptr %296, align 8, !tbaa !20
  %298 = zext i16 %297 to i32
  %299 = zext nneg i32 %260 to i64
  %300 = getelementptr inbounds [0 x i64], ptr @mask_bits, i64 0, i64 %299
  %301 = load i64, ptr %300, align 8, !tbaa !34
  %302 = and i64 %301, %294
  %303 = trunc i64 %302 to i32
  %304 = add i32 %298, %303
  %305 = sub i32 %15, %304
  %306 = lshr i64 %294, %299
  br label %307

307:                                              ; preds = %366, %293
  %308 = phi i32 [ %176, %293 ], [ %315, %366 ]
  %309 = phi i32 [ %305, %293 ], [ %340, %366 ]
  %310 = phi i32 [ %15, %293 ], [ %367, %366 ]
  %311 = and i32 %309, 8191
  %312 = tail call i32 @llvm.umax.i32(i32 %311, i32 %310)
  %313 = sub i32 8192, %312
  %314 = tail call i32 @llvm.umin.i32(i32 %313, i32 %308)
  %315 = sub i32 %308, %314
  %316 = sub i32 %310, %311
  %317 = icmp ult i32 %316, %314
  br i1 %317, label %326, label %318

318:                                              ; preds = %307
  %319 = zext i32 %310 to i64
  %320 = getelementptr inbounds i8, ptr @slide, i64 %319
  %321 = zext nneg i32 %311 to i64
  %322 = getelementptr inbounds i8, ptr @slide, i64 %321
  %323 = zext i32 %314 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %320, ptr nonnull align 1 %322, i64 %323, i1 false)
  %324 = add i32 %314, %310
  %325 = add i32 %314, %311
  br label %339

326:                                              ; preds = %307, %326
  %327 = phi i32 [ %330, %326 ], [ %311, %307 ]
  %328 = phi i32 [ %334, %326 ], [ %310, %307 ]
  %329 = phi i32 [ %337, %326 ], [ %314, %307 ]
  %330 = add i32 %327, 1
  %331 = zext i32 %327 to i64
  %332 = getelementptr inbounds [0 x i8], ptr @slide, i64 0, i64 %331
  %333 = load i8, ptr %332, align 1, !tbaa !20
  %334 = add i32 %328, 1
  %335 = zext i32 %328 to i64
  %336 = getelementptr inbounds [0 x i8], ptr @slide, i64 0, i64 %335
  store i8 %333, ptr %336, align 1, !tbaa !20
  %337 = add i32 %329, -1
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %326, !llvm.loop !47

339:                                              ; preds = %326, %318
  %340 = phi i32 [ %325, %318 ], [ %330, %326 ]
  %341 = phi i32 [ %324, %318 ], [ %334, %326 ]
  %342 = icmp eq i32 %341, 8192
  br i1 %342, label %343, label %366

343:                                              ; preds = %339, %362
  %344 = phi ptr [ %363, %362 ], [ @slide, %339 ]
  %345 = phi i32 [ %364, %362 ], [ 8192, %339 ]
  %346 = load i32, ptr @outcnt, align 4, !tbaa !5
  %347 = sub nsw i32 8192, %346
  %348 = tail call i32 @llvm.umin.i32(i32 %347, i32 %345)
  %349 = load ptr, ptr @outptr, align 8, !tbaa !16
  %350 = zext i32 %348 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %349, ptr align 1 %344, i64 %350, i1 false)
  %351 = load ptr, ptr @outptr, align 8, !tbaa !16
  %352 = getelementptr inbounds i8, ptr %351, i64 %350
  store ptr %352, ptr @outptr, align 8, !tbaa !16
  %353 = load i32, ptr @outcnt, align 4, !tbaa !5
  %354 = add i32 %353, %348
  store i32 %354, ptr @outcnt, align 4, !tbaa !5
  %355 = icmp eq i32 %354, 8192
  br i1 %355, label %356, label %362

356:                                              ; preds = %343
  %357 = tail call i32 @FlushOutput() #9
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %362, label %359

359:                                              ; preds = %356
  %360 = load ptr, ptr @stderr, align 8, !tbaa !16
  %361 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 14, i64 1, ptr %360) #11
  tail call void @exitPGP(i32 noundef 1) #9
  br label %362

362:                                              ; preds = %359, %356, %343
  %363 = getelementptr inbounds i8, ptr %344, i64 %350
  %364 = sub i32 %345, %348
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %343, !llvm.loop !33

366:                                              ; preds = %362, %339
  %367 = phi i32 [ %341, %339 ], [ 0, %362 ]
  %368 = icmp eq i32 %315, 0
  br i1 %368, label %369, label %307, !llvm.loop !48

369:                                              ; preds = %366
  %370 = sub i32 %295, %260
  br label %371

371:                                              ; preds = %141, %369, %114
  %372 = phi i32 [ %118, %114 ], [ %367, %369 ], [ 0, %141 ]
  %373 = phi i64 [ %106, %114 ], [ %306, %369 ], [ %106, %141 ]
  %374 = phi i32 [ %107, %114 ], [ %370, %369 ], [ %107, %141 ]
  br label %14, !llvm.loop !49

375:                                              ; preds = %97
  store i32 %15, ptr @wp, align 4, !tbaa !5
  store i64 %106, ptr @bb, align 8, !tbaa !34
  store i32 %107, ptr @bk, align 4, !tbaa !5
  br label %376

376:                                              ; preds = %25, %46, %151, %186, %207, %279, %70, %231, %375
  %377 = phi i32 [ 0, %375 ], [ 1, %231 ], [ 1, %70 ], [ 1, %279 ], [ 1, %207 ], [ 1, %186 ], [ 1, %151 ], [ 1, %46 ], [ 1, %25 ]
  ret i32 %377
}

declare i32 @FillInBuf() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflate_stored() local_unnamed_addr #0 {
  %1 = load i64, ptr @bb, align 8, !tbaa !34
  %2 = load i32, ptr @bk, align 4, !tbaa !5
  %3 = load i32, ptr @wp, align 4, !tbaa !5
  %4 = and i32 %2, 7
  %5 = zext nneg i32 %4 to i64
  %6 = lshr i64 %1, %5
  %7 = and i32 %2, -8
  %8 = icmp ult i32 %7, 16
  br i1 %8, label %9, label %32

9:                                                ; preds = %0
  %10 = and i32 %2, -8
  %11 = zext i32 %10 to i64
  br label %12

12:                                               ; preds = %9, %21
  %13 = phi i64 [ %11, %9 ], [ %28, %21 ]
  %14 = phi i64 [ %6, %9 ], [ %27, %21 ]
  %15 = load i32, ptr @incnt, align 4, !tbaa !5
  %16 = add nsw i32 %15, -1
  store i32 %16, ptr @incnt, align 4, !tbaa !5
  %17 = icmp slt i32 %15, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = tail call i32 @FillInBuf() #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %135

21:                                               ; preds = %18, %12
  %22 = load ptr, ptr @inptr, align 8, !tbaa !16
  %23 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %23, ptr @inptr, align 8, !tbaa !16
  %24 = load i8, ptr %22, align 1, !tbaa !20
  %25 = zext i8 %24 to i64
  %26 = shl nuw nsw i64 %25, %13
  %27 = or i64 %26, %14
  %28 = add nuw nsw i64 %13, 8
  %29 = icmp eq i64 %13, 0
  br i1 %29, label %12, label %30, !llvm.loop !50

30:                                               ; preds = %21
  %31 = trunc i64 %28 to i32
  br label %32

32:                                               ; preds = %30, %0
  %33 = phi i64 [ %6, %0 ], [ %27, %30 ]
  %34 = phi i32 [ %7, %0 ], [ %31, %30 ]
  %35 = trunc i64 %33 to i32
  %36 = and i32 %35, 65535
  %37 = lshr i64 %33, 16
  %38 = add i32 %34, -16
  %39 = icmp ult i32 %38, 16
  br i1 %39, label %40, label %62

40:                                               ; preds = %32
  %41 = zext nneg i32 %38 to i64
  br label %42

42:                                               ; preds = %40, %51
  %43 = phi i64 [ %41, %40 ], [ %58, %51 ]
  %44 = phi i64 [ %37, %40 ], [ %57, %51 ]
  %45 = load i32, ptr @incnt, align 4, !tbaa !5
  %46 = add nsw i32 %45, -1
  store i32 %46, ptr @incnt, align 4, !tbaa !5
  %47 = icmp slt i32 %45, 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = tail call i32 @FillInBuf() #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %135

51:                                               ; preds = %48, %42
  %52 = load ptr, ptr @inptr, align 8, !tbaa !16
  %53 = getelementptr inbounds i8, ptr %52, i64 1
  store ptr %53, ptr @inptr, align 8, !tbaa !16
  %54 = load i8, ptr %52, align 1, !tbaa !20
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, %43
  %57 = or i64 %56, %44
  %58 = add nuw nsw i64 %43, 8
  %59 = icmp ult i64 %43, 8
  br i1 %59, label %42, label %60, !llvm.loop !51

60:                                               ; preds = %51
  %61 = trunc i64 %58 to i32
  br label %62

62:                                               ; preds = %60, %32
  %63 = phi i64 [ %37, %32 ], [ %57, %60 ]
  %64 = phi i32 [ %38, %32 ], [ %61, %60 ]
  %65 = xor i64 %63, %33
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 65535
  br i1 %67, label %68, label %135

68:                                               ; preds = %62
  %69 = lshr i64 %63, 16
  %70 = add i32 %64, -16
  %71 = icmp eq i32 %36, 0
  br i1 %71, label %131, label %72

72:                                               ; preds = %68, %126
  %73 = phi i32 [ %77, %126 ], [ %36, %68 ]
  %74 = phi i32 [ %129, %126 ], [ %70, %68 ]
  %75 = phi i64 [ %128, %126 ], [ %69, %68 ]
  %76 = phi i32 [ %127, %126 ], [ %3, %68 ]
  %77 = add nsw i32 %73, -1
  %78 = icmp ult i32 %74, 8
  br i1 %78, label %79, label %95

79:                                               ; preds = %72
  %80 = or disjoint i32 %74, 8
  %81 = load i32, ptr @incnt, align 4, !tbaa !5
  %82 = add nsw i32 %81, -1
  store i32 %82, ptr @incnt, align 4, !tbaa !5
  %83 = icmp slt i32 %81, 1
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = tail call i32 @FillInBuf() #9
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %135

87:                                               ; preds = %84, %79
  %88 = load ptr, ptr @inptr, align 8, !tbaa !16
  %89 = getelementptr inbounds i8, ptr %88, i64 1
  store ptr %89, ptr @inptr, align 8, !tbaa !16
  %90 = load i8, ptr %88, align 1, !tbaa !20
  %91 = zext i8 %90 to i64
  %92 = zext nneg i32 %74 to i64
  %93 = shl nuw nsw i64 %91, %92
  %94 = or i64 %93, %75
  br label %95

95:                                               ; preds = %87, %72
  %96 = phi i64 [ %94, %87 ], [ %75, %72 ]
  %97 = phi i32 [ %80, %87 ], [ %74, %72 ]
  %98 = trunc i64 %96 to i8
  %99 = add i32 %76, 1
  %100 = zext i32 %76 to i64
  %101 = getelementptr inbounds [0 x i8], ptr @slide, i64 0, i64 %100
  store i8 %98, ptr %101, align 1, !tbaa !20
  %102 = icmp eq i32 %99, 8192
  br i1 %102, label %103, label %126

103:                                              ; preds = %95, %122
  %104 = phi ptr [ %123, %122 ], [ @slide, %95 ]
  %105 = phi i32 [ %124, %122 ], [ 8192, %95 ]
  %106 = load i32, ptr @outcnt, align 4, !tbaa !5
  %107 = sub nsw i32 8192, %106
  %108 = tail call i32 @llvm.umin.i32(i32 %107, i32 %105)
  %109 = load ptr, ptr @outptr, align 8, !tbaa !16
  %110 = zext i32 %108 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %109, ptr align 1 %104, i64 %110, i1 false)
  %111 = load ptr, ptr @outptr, align 8, !tbaa !16
  %112 = getelementptr inbounds i8, ptr %111, i64 %110
  store ptr %112, ptr @outptr, align 8, !tbaa !16
  %113 = load i32, ptr @outcnt, align 4, !tbaa !5
  %114 = add i32 %113, %108
  store i32 %114, ptr @outcnt, align 4, !tbaa !5
  %115 = icmp eq i32 %114, 8192
  br i1 %115, label %116, label %122

116:                                              ; preds = %103
  %117 = tail call i32 @FlushOutput() #9
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr @stderr, align 8, !tbaa !16
  %121 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 14, i64 1, ptr %120) #11
  tail call void @exitPGP(i32 noundef 1) #9
  br label %122

122:                                              ; preds = %119, %116, %103
  %123 = getelementptr inbounds i8, ptr %104, i64 %110
  %124 = sub i32 %105, %108
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %103, !llvm.loop !33

126:                                              ; preds = %122, %95
  %127 = phi i32 [ %99, %95 ], [ 0, %122 ]
  %128 = lshr i64 %96, 8
  %129 = add i32 %97, -8
  %130 = icmp eq i32 %77, 0
  br i1 %130, label %131, label %72, !llvm.loop !52

131:                                              ; preds = %126, %68
  %132 = phi i32 [ %3, %68 ], [ %127, %126 ]
  %133 = phi i64 [ %69, %68 ], [ %128, %126 ]
  %134 = phi i32 [ %70, %68 ], [ %129, %126 ]
  store i32 %132, ptr @wp, align 4, !tbaa !5
  store i64 %133, ptr @bb, align 8, !tbaa !34
  store i32 %134, ptr @bk, align 4, !tbaa !5
  br label %135

135:                                              ; preds = %18, %48, %84, %62, %131
  %136 = phi i32 [ 0, %131 ], [ 1, %62 ], [ 1, %84 ], [ 1, %48 ], [ 1, %18 ]
  ret i32 %136
}

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate_fixed() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [288 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %5) #9
  br label %6

6:                                                ; preds = %0, %6
  %7 = phi i64 [ 0, %0 ], [ %9, %6 ]
  %8 = getelementptr inbounds [288 x i32], ptr %5, i64 0, i64 %7
  store i32 8, ptr %8, align 4, !tbaa !5
  %9 = add nuw nsw i64 %7, 1
  %10 = icmp eq i64 %9, 144
  br i1 %10, label %11, label %6, !llvm.loop !53

11:                                               ; preds = %6, %11
  %12 = phi i64 [ %14, %11 ], [ 144, %6 ]
  %13 = getelementptr inbounds [288 x i32], ptr %5, i64 0, i64 %12
  store i32 9, ptr %13, align 4, !tbaa !5
  %14 = add nuw nsw i64 %12, 1
  %15 = icmp eq i64 %14, 256
  br i1 %15, label %16, label %11, !llvm.loop !54

16:                                               ; preds = %11, %16
  %17 = phi i64 [ %19, %16 ], [ 256, %11 ]
  %18 = getelementptr inbounds [288 x i32], ptr %5, i64 0, i64 %17
  store i32 7, ptr %18, align 4, !tbaa !5
  %19 = add nuw nsw i64 %17, 1
  %20 = icmp eq i64 %19, 280
  br i1 %20, label %21, label %16, !llvm.loop !55

21:                                               ; preds = %16, %21
  %22 = phi i64 [ %24, %21 ], [ 280, %16 ]
  %23 = getelementptr inbounds [288 x i32], ptr %5, i64 0, i64 %22
  store i32 8, ptr %23, align 4, !tbaa !5
  %24 = add nuw nsw i64 %22, 1
  %25 = icmp eq i64 %24, 288
  br i1 %25, label %26, label %21, !llvm.loop !56

26:                                               ; preds = %21
  store i32 7, ptr %3, align 4, !tbaa !5
  %27 = call i32 @huft_build(ptr noundef nonnull %5, i32 noundef 288, i32 noundef 257, ptr noundef nonnull @cplens, ptr noundef nonnull @cplext, ptr noundef nonnull %1, ptr noundef nonnull %3), !range !57
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %26, %29
  %30 = phi i64 [ %32, %29 ], [ 0, %26 ]
  %31 = getelementptr inbounds [288 x i32], ptr %5, i64 0, i64 %30
  store i32 5, ptr %31, align 4, !tbaa !5
  %32 = add nuw nsw i64 %30, 1
  %33 = icmp eq i64 %32, 30
  br i1 %33, label %34, label %29, !llvm.loop !58

34:                                               ; preds = %29
  store i32 5, ptr %4, align 4, !tbaa !5
  %35 = call i32 @huft_build(ptr noundef nonnull %5, i32 noundef 30, i32 noundef 0, ptr noundef nonnull @cpdist, ptr noundef nonnull @cpdext, ptr noundef nonnull %2, ptr noundef nonnull %4), !range !57
  %36 = icmp ugt i32 %35, 1
  %37 = load ptr, ptr %1, align 8, !tbaa !16
  br i1 %36, label %38, label %46

38:                                               ; preds = %34
  %39 = icmp eq ptr %37, null
  br i1 %39, label %69, label %40

40:                                               ; preds = %38, %40
  %41 = phi ptr [ %44, %40 ], [ %37, %38 ]
  %42 = getelementptr inbounds %struct.huft, ptr %41, i64 -1
  %43 = getelementptr %struct.huft, ptr %41, i64 -1, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !20
  tail call void @free(ptr noundef %42) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %69, label %40, !llvm.loop !21

46:                                               ; preds = %34
  %47 = load ptr, ptr %2, align 8, !tbaa !16
  %48 = load i32, ptr %3, align 4, !tbaa !5
  %49 = load i32, ptr %4, align 4, !tbaa !5
  %50 = tail call i32 @inflate_codes(ptr noundef %37, ptr noundef %47, i32 noundef %48, i32 noundef %49), !range !59
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = icmp eq ptr %37, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %52, %54
  %55 = phi ptr [ %58, %54 ], [ %37, %52 ]
  %56 = getelementptr inbounds %struct.huft, ptr %55, i64 -1
  %57 = getelementptr %struct.huft, ptr %55, i64 -1, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !20
  tail call void @free(ptr noundef %56) #9
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %54, !llvm.loop !21

60:                                               ; preds = %54, %52
  %61 = load ptr, ptr %2, align 8, !tbaa !16
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %60, %63
  %64 = phi ptr [ %67, %63 ], [ %61, %60 ]
  %65 = getelementptr inbounds %struct.huft, ptr %64, i64 -1
  %66 = getelementptr %struct.huft, ptr %64, i64 -1, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !20
  tail call void @free(ptr noundef %65) #9
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %63, !llvm.loop !21

69:                                               ; preds = %63, %40, %60, %38, %46, %26
  %70 = phi i32 [ %27, %26 ], [ 1, %46 ], [ %35, %38 ], [ 0, %60 ], [ %35, %40 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #9
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @inflate_dynamic() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [316 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 1264, ptr nonnull %5) #9
  %6 = load i64, ptr @bb, align 8, !tbaa !34
  %7 = load i32, ptr @bk, align 4, !tbaa !5
  %8 = icmp ult i32 %7, 5
  br i1 %8, label %9, label %25

9:                                                ; preds = %0
  %10 = or disjoint i32 %7, 8
  %11 = load i32, ptr @incnt, align 4, !tbaa !5
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr @incnt, align 4, !tbaa !5
  %13 = icmp slt i32 %11, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = tail call i32 @FillInBuf() #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %397

17:                                               ; preds = %14, %9
  %18 = load ptr, ptr @inptr, align 8, !tbaa !16
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %19, ptr @inptr, align 8, !tbaa !16
  %20 = load i8, ptr %18, align 1, !tbaa !20
  %21 = zext i8 %20 to i64
  %22 = zext nneg i32 %7 to i64
  %23 = shl nuw nsw i64 %21, %22
  %24 = or i64 %23, %6
  br label %25

25:                                               ; preds = %17, %0
  %26 = phi i64 [ %6, %0 ], [ %24, %17 ]
  %27 = phi i32 [ %7, %0 ], [ %10, %17 ]
  %28 = trunc i64 %26 to i32
  %29 = and i32 %28, 31
  %30 = add nuw nsw i32 %29, 257
  %31 = lshr i64 %26, 5
  %32 = add i32 %27, -5
  %33 = icmp ult i32 %32, 5
  br i1 %33, label %34, label %50

34:                                               ; preds = %25
  %35 = or disjoint i32 %32, 8
  %36 = load i32, ptr @incnt, align 4, !tbaa !5
  %37 = add nsw i32 %36, -1
  store i32 %37, ptr @incnt, align 4, !tbaa !5
  %38 = icmp slt i32 %36, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = tail call i32 @FillInBuf() #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %397

42:                                               ; preds = %39, %34
  %43 = load ptr, ptr @inptr, align 8, !tbaa !16
  %44 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %44, ptr @inptr, align 8, !tbaa !16
  %45 = load i8, ptr %43, align 1, !tbaa !20
  %46 = zext i8 %45 to i64
  %47 = zext nneg i32 %32 to i64
  %48 = shl nuw nsw i64 %46, %47
  %49 = or i64 %48, %31
  br label %50

50:                                               ; preds = %42, %25
  %51 = phi i64 [ %31, %25 ], [ %49, %42 ]
  %52 = phi i32 [ %32, %25 ], [ %35, %42 ]
  %53 = trunc i64 %51 to i32
  %54 = and i32 %53, 31
  %55 = add nuw nsw i32 %54, 1
  %56 = lshr i64 %51, 5
  %57 = add i32 %52, -5
  %58 = icmp ult i32 %57, 4
  br i1 %58, label %59, label %75

59:                                               ; preds = %50
  %60 = or disjoint i32 %57, 8
  %61 = load i32, ptr @incnt, align 4, !tbaa !5
  %62 = add nsw i32 %61, -1
  store i32 %62, ptr @incnt, align 4, !tbaa !5
  %63 = icmp slt i32 %61, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = tail call i32 @FillInBuf() #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %397

67:                                               ; preds = %64, %59
  %68 = load ptr, ptr @inptr, align 8, !tbaa !16
  %69 = getelementptr inbounds i8, ptr %68, i64 1
  store ptr %69, ptr @inptr, align 8, !tbaa !16
  %70 = load i8, ptr %68, align 1, !tbaa !20
  %71 = zext i8 %70 to i64
  %72 = zext nneg i32 %57 to i64
  %73 = shl nuw nsw i64 %71, %72
  %74 = or i64 %73, %56
  br label %75

75:                                               ; preds = %67, %50
  %76 = phi i64 [ %56, %50 ], [ %74, %67 ]
  %77 = phi i32 [ %57, %50 ], [ %60, %67 ]
  %78 = icmp ugt i32 %29, 29
  %79 = icmp ugt i32 %54, 29
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %397, label %81

81:                                               ; preds = %75
  %82 = and i64 %76, 15
  %83 = add i32 %77, -4
  %84 = lshr i64 %76, 4
  %85 = add nuw nsw i64 %82, 3
  br label %86

86:                                               ; preds = %81, %111
  %87 = phi i64 [ 1, %81 ], [ %124, %111 ]
  %88 = phi i64 [ 0, %81 ], [ %122, %111 ]
  %89 = phi i32 [ %83, %81 ], [ %121, %111 ]
  %90 = phi i64 [ %84, %81 ], [ %120, %111 ]
  %91 = icmp ult i32 %89, 3
  br i1 %91, label %92, label %111

92:                                               ; preds = %86
  %93 = or disjoint i32 %89, 8
  %94 = load i32, ptr @incnt, align 4, !tbaa !5
  %95 = add nsw i32 %94, -1
  store i32 %95, ptr @incnt, align 4, !tbaa !5
  %96 = icmp slt i32 %94, 1
  br i1 %96, label %100, label %103

97:                                               ; preds = %111
  %98 = trunc i64 %88 to i32
  %99 = icmp ult i32 %98, 18
  br i1 %99, label %125, label %133

100:                                              ; preds = %92
  %101 = tail call i32 @FillInBuf() #9
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %397

103:                                              ; preds = %100, %92
  %104 = load ptr, ptr @inptr, align 8, !tbaa !16
  %105 = getelementptr inbounds i8, ptr %104, i64 1
  store ptr %105, ptr @inptr, align 8, !tbaa !16
  %106 = load i8, ptr %104, align 1, !tbaa !20
  %107 = zext i8 %106 to i64
  %108 = zext nneg i32 %89 to i64
  %109 = shl nuw nsw i64 %107, %108
  %110 = or i64 %109, %90
  br label %111

111:                                              ; preds = %103, %86
  %112 = phi i64 [ %110, %103 ], [ %90, %86 ]
  %113 = phi i32 [ %93, %103 ], [ %89, %86 ]
  %114 = trunc i64 %112 to i32
  %115 = and i32 %114, 7
  %116 = getelementptr inbounds [19 x i32], ptr @border, i64 0, i64 %88
  %117 = load i32, ptr %116, align 4, !tbaa !5
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [316 x i32], ptr %5, i64 0, i64 %118
  store i32 %115, ptr %119, align 4, !tbaa !5
  %120 = lshr i64 %112, 3
  %121 = add i32 %113, -3
  %122 = add nuw nsw i64 %88, 1
  %123 = icmp eq i64 %88, %85
  %124 = add nuw nsw i64 %87, 1
  br i1 %123, label %97, label %86, !llvm.loop !60

125:                                              ; preds = %97, %125
  %126 = phi i64 [ %131, %125 ], [ %87, %97 ]
  %127 = getelementptr inbounds [19 x i32], ptr @border, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !5
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [316 x i32], ptr %5, i64 0, i64 %129
  store i32 0, ptr %130, align 4, !tbaa !5
  %131 = add nuw nsw i64 %126, 1
  %132 = icmp eq i64 %131, 19
  br i1 %132, label %133, label %125, !llvm.loop !61

133:                                              ; preds = %125, %97
  store i32 7, ptr %3, align 4, !tbaa !5
  %134 = call i32 @huft_build(ptr noundef nonnull %5, i32 noundef 19, i32 noundef 19, ptr noundef null, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %3), !range !57
  switch i32 %134, label %397 [
    i32 0, label %144
    i32 1, label %135
  ]

135:                                              ; preds = %133
  %136 = load ptr, ptr %1, align 8, !tbaa !16
  %137 = icmp eq ptr %136, null
  br i1 %137, label %397, label %138

138:                                              ; preds = %135, %138
  %139 = phi ptr [ %142, %138 ], [ %136, %135 ]
  %140 = getelementptr inbounds %struct.huft, ptr %139, i64 -1
  %141 = getelementptr %struct.huft, ptr %139, i64 -1, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !20
  tail call void @free(ptr noundef %140) #9
  %143 = icmp eq ptr %142, null
  br i1 %143, label %397, label %138, !llvm.loop !21

144:                                              ; preds = %133
  %145 = add nuw nsw i32 %55, %30
  %146 = load i32, ptr %3, align 4, !tbaa !5
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [0 x i64], ptr @mask_bits, i64 0, i64 %147
  %149 = load i64, ptr %148, align 8, !tbaa !34
  %150 = load ptr, ptr %2, align 8, !tbaa !16
  %151 = load ptr, ptr %1, align 8
  %152 = and i64 %149, 4294967295
  br label %153

153:                                              ; preds = %144, %318
  %154 = phi i32 [ %121, %144 ], [ %322, %318 ]
  %155 = phi i64 [ %120, %144 ], [ %321, %318 ]
  %156 = phi i32 [ 0, %144 ], [ %320, %318 ]
  %157 = phi i32 [ 0, %144 ], [ %319, %318 ]
  %158 = phi ptr [ %150, %144 ], [ %183, %318 ]
  %159 = icmp ult i32 %154, %146
  br i1 %159, label %160, label %179

160:                                              ; preds = %153, %169
  %161 = phi i32 [ %177, %169 ], [ %154, %153 ]
  %162 = phi i64 [ %176, %169 ], [ %155, %153 ]
  %163 = load i32, ptr @incnt, align 4, !tbaa !5
  %164 = add nsw i32 %163, -1
  store i32 %164, ptr @incnt, align 4, !tbaa !5
  %165 = icmp slt i32 %163, 1
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = tail call i32 @FillInBuf() #9
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %395

169:                                              ; preds = %166, %160
  %170 = load ptr, ptr @inptr, align 8, !tbaa !16
  %171 = getelementptr inbounds i8, ptr %170, i64 1
  store ptr %171, ptr @inptr, align 8, !tbaa !16
  %172 = load i8, ptr %170, align 1, !tbaa !20
  %173 = zext i8 %172 to i64
  %174 = zext nneg i32 %161 to i64
  %175 = shl i64 %173, %174
  %176 = or i64 %175, %162
  %177 = add i32 %161, 8
  %178 = icmp ult i32 %177, %146
  br i1 %178, label %160, label %179, !llvm.loop !62

179:                                              ; preds = %169, %153
  %180 = phi i64 [ %155, %153 ], [ %176, %169 ]
  %181 = phi i32 [ %154, %153 ], [ %177, %169 ]
  %182 = and i64 %152, %180
  %183 = getelementptr inbounds %struct.huft, ptr %151, i64 %182
  %184 = getelementptr inbounds %struct.huft, ptr %151, i64 %182, i32 1
  %185 = load i8, ptr %184, align 1, !tbaa !39
  %186 = zext i8 %185 to i32
  %187 = zext nneg i8 %185 to i64
  %188 = lshr i64 %180, %187
  %189 = sub i32 %181, %186
  %190 = getelementptr inbounds %struct.huft, ptr %151, i64 %182, i32 2
  %191 = load i16, ptr %190, align 8, !tbaa !20
  %192 = icmp ult i16 %191, 16
  br i1 %192, label %193, label %198

193:                                              ; preds = %179
  %194 = zext nneg i16 %191 to i32
  %195 = add nsw i32 %156, 1
  %196 = sext i32 %156 to i64
  %197 = getelementptr inbounds [316 x i32], ptr %5, i64 0, i64 %196
  store i32 %194, ptr %197, align 4, !tbaa !5
  br label %318

198:                                              ; preds = %179
  switch i16 %191, label %213 [
    i16 16, label %206
    i16 17, label %199
  ]

199:                                              ; preds = %198
  %200 = icmp ult i32 %189, 3
  br i1 %200, label %201, label %261

201:                                              ; preds = %199
  %202 = or disjoint i32 %189, 8
  %203 = load i32, ptr @incnt, align 4, !tbaa !5
  %204 = add nsw i32 %203, -1
  store i32 %204, ptr @incnt, align 4, !tbaa !5
  %205 = icmp slt i32 %203, 1
  br i1 %205, label %250, label %253

206:                                              ; preds = %198
  %207 = icmp ult i32 %189, 2
  br i1 %207, label %208, label %231

208:                                              ; preds = %206
  %209 = or disjoint i32 %189, 8
  %210 = load i32, ptr @incnt, align 4, !tbaa !5
  %211 = add nsw i32 %210, -1
  store i32 %211, ptr @incnt, align 4, !tbaa !5
  %212 = icmp slt i32 %210, 1
  br i1 %212, label %220, label %223

213:                                              ; preds = %198
  %214 = icmp ult i32 %189, 7
  br i1 %214, label %215, label %294

215:                                              ; preds = %213
  %216 = or disjoint i32 %189, 8
  %217 = load i32, ptr @incnt, align 4, !tbaa !5
  %218 = add nsw i32 %217, -1
  store i32 %218, ptr @incnt, align 4, !tbaa !5
  %219 = icmp slt i32 %217, 1
  br i1 %219, label %283, label %286

220:                                              ; preds = %208
  %221 = tail call i32 @FillInBuf() #9
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %393

223:                                              ; preds = %220, %208
  %224 = load ptr, ptr @inptr, align 8, !tbaa !16
  %225 = getelementptr inbounds i8, ptr %224, i64 1
  store ptr %225, ptr @inptr, align 8, !tbaa !16
  %226 = load i8, ptr %224, align 1, !tbaa !20
  %227 = zext i8 %226 to i64
  %228 = zext nneg i32 %189 to i64
  %229 = shl nuw nsw i64 %227, %228
  %230 = or i64 %229, %188
  br label %231

231:                                              ; preds = %223, %206
  %232 = phi i64 [ %230, %223 ], [ %188, %206 ]
  %233 = phi i32 [ %209, %223 ], [ %189, %206 ]
  %234 = trunc i64 %232 to i32
  %235 = and i32 %234, 3
  %236 = add nuw nsw i32 %235, 3
  %237 = lshr i64 %232, 2
  %238 = add i32 %233, -2
  %239 = add i32 %236, %156
  %240 = icmp ugt i32 %239, %145
  br i1 %240, label %396, label %241

241:                                              ; preds = %231
  %242 = sext i32 %156 to i64
  br label %243

243:                                              ; preds = %241, %243
  %244 = phi i64 [ %242, %241 ], [ %247, %243 ]
  %245 = phi i32 [ %236, %241 ], [ %246, %243 ]
  %246 = add nsw i32 %245, -1
  %247 = add nsw i64 %244, 1
  %248 = getelementptr inbounds [316 x i32], ptr %5, i64 0, i64 %244
  store i32 %157, ptr %248, align 4, !tbaa !5
  %249 = icmp eq i32 %246, 0
  br i1 %249, label %316, label %243, !llvm.loop !63

250:                                              ; preds = %201
  %251 = tail call i32 @FillInBuf() #9
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %394

253:                                              ; preds = %250, %201
  %254 = load ptr, ptr @inptr, align 8, !tbaa !16
  %255 = getelementptr inbounds i8, ptr %254, i64 1
  store ptr %255, ptr @inptr, align 8, !tbaa !16
  %256 = load i8, ptr %254, align 1, !tbaa !20
  %257 = zext i8 %256 to i64
  %258 = zext nneg i32 %189 to i64
  %259 = shl nuw nsw i64 %257, %258
  %260 = or i64 %259, %188
  br label %261

261:                                              ; preds = %253, %199
  %262 = phi i64 [ %260, %253 ], [ %188, %199 ]
  %263 = phi i32 [ %202, %253 ], [ %189, %199 ]
  %264 = trunc i64 %262 to i32
  %265 = and i32 %264, 7
  %266 = add nuw nsw i32 %265, 3
  %267 = add i32 %266, %156
  %268 = icmp ugt i32 %267, %145
  br i1 %268, label %396, label %269

269:                                              ; preds = %261
  %270 = add i32 %263, -3
  %271 = lshr i64 %262, 3
  %272 = sext i32 %156 to i64
  %273 = shl nsw i64 %272, 2
  %274 = getelementptr i8, ptr %5, i64 %273
  %275 = shl i64 %262, 2
  %276 = and i64 %275, 28
  %277 = add nuw nsw i64 %276, 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %274, i8 0, i64 %277, i1 false), !tbaa !5
  %278 = and i64 %262, 7
  %279 = zext i32 %156 to i64
  %280 = add nuw nsw i64 %279, 3
  %281 = add nuw nsw i64 %280, %278
  %282 = trunc i64 %281 to i32
  br label %318

283:                                              ; preds = %215
  %284 = tail call i32 @FillInBuf() #9
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %392

286:                                              ; preds = %283, %215
  %287 = load ptr, ptr @inptr, align 8, !tbaa !16
  %288 = getelementptr inbounds i8, ptr %287, i64 1
  store ptr %288, ptr @inptr, align 8, !tbaa !16
  %289 = load i8, ptr %287, align 1, !tbaa !20
  %290 = zext i8 %289 to i64
  %291 = zext nneg i32 %189 to i64
  %292 = shl nuw nsw i64 %290, %291
  %293 = or i64 %292, %188
  br label %294

294:                                              ; preds = %286, %213
  %295 = phi i64 [ %293, %286 ], [ %188, %213 ]
  %296 = phi i32 [ %216, %286 ], [ %189, %213 ]
  %297 = trunc i64 %295 to i32
  %298 = and i32 %297, 127
  %299 = add nuw nsw i32 %298, 11
  %300 = add i32 %299, %156
  %301 = icmp ugt i32 %300, %145
  br i1 %301, label %396, label %302

302:                                              ; preds = %294
  %303 = add i32 %296, -7
  %304 = lshr i64 %295, 7
  %305 = sext i32 %156 to i64
  %306 = shl nsw i64 %305, 2
  %307 = getelementptr i8, ptr %5, i64 %306
  %308 = shl i64 %295, 2
  %309 = and i64 %308, 508
  %310 = add nuw nsw i64 %309, 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %307, i8 0, i64 %310, i1 false), !tbaa !5
  %311 = and i64 %295, 127
  %312 = zext i32 %156 to i64
  %313 = add nuw nsw i64 %312, 11
  %314 = add nuw nsw i64 %313, %311
  %315 = trunc i64 %314 to i32
  br label %318

316:                                              ; preds = %243
  %317 = trunc i64 %247 to i32
  br label %318

318:                                              ; preds = %269, %316, %302, %193
  %319 = phi i32 [ %194, %193 ], [ 0, %302 ], [ %157, %316 ], [ 0, %269 ]
  %320 = phi i32 [ %195, %193 ], [ %315, %302 ], [ %317, %316 ], [ %282, %269 ]
  %321 = phi i64 [ %188, %193 ], [ %304, %302 ], [ %237, %316 ], [ %271, %269 ]
  %322 = phi i32 [ %189, %193 ], [ %303, %302 ], [ %238, %316 ], [ %270, %269 ]
  %323 = icmp ult i32 %320, %145
  br i1 %323, label %153, label %324, !llvm.loop !64

324:                                              ; preds = %318
  store ptr %183, ptr %2, align 8, !tbaa !16
  %325 = load ptr, ptr %1, align 8, !tbaa !16
  %326 = icmp eq ptr %325, null
  br i1 %326, label %333, label %327

327:                                              ; preds = %324, %327
  %328 = phi ptr [ %331, %327 ], [ %325, %324 ]
  %329 = getelementptr inbounds %struct.huft, ptr %328, i64 -1
  %330 = getelementptr %struct.huft, ptr %328, i64 -1, i32 2
  %331 = load ptr, ptr %330, align 8, !tbaa !20
  tail call void @free(ptr noundef %329) #9
  %332 = icmp eq ptr %331, null
  br i1 %332, label %333, label %327, !llvm.loop !21

333:                                              ; preds = %327, %324
  store i64 %321, ptr @bb, align 8, !tbaa !34
  store i32 %322, ptr @bk, align 4, !tbaa !5
  %334 = load i32, ptr @lbits, align 4, !tbaa !5
  store i32 %334, ptr %3, align 4, !tbaa !5
  %335 = call i32 @huft_build(ptr noundef nonnull %5, i32 noundef %30, i32 noundef 257, ptr noundef nonnull @cplens, ptr noundef nonnull @cplext, ptr noundef nonnull %1, ptr noundef nonnull %3), !range !57
  switch i32 %335, label %397 [
    i32 0, label %345
    i32 1, label %336
  ]

336:                                              ; preds = %333
  %337 = load ptr, ptr %1, align 8, !tbaa !16
  %338 = icmp eq ptr %337, null
  br i1 %338, label %397, label %339

339:                                              ; preds = %336, %339
  %340 = phi ptr [ %343, %339 ], [ %337, %336 ]
  %341 = getelementptr inbounds %struct.huft, ptr %340, i64 -1
  %342 = getelementptr %struct.huft, ptr %340, i64 -1, i32 2
  %343 = load ptr, ptr %342, align 8, !tbaa !20
  tail call void @free(ptr noundef %341) #9
  %344 = icmp eq ptr %343, null
  br i1 %344, label %397, label %339, !llvm.loop !21

345:                                              ; preds = %333
  %346 = load i32, ptr @dbits, align 4, !tbaa !5
  store i32 %346, ptr %4, align 4, !tbaa !5
  %347 = zext nneg i32 %30 to i64
  %348 = getelementptr inbounds i32, ptr %5, i64 %347
  %349 = call i32 @huft_build(ptr noundef nonnull %348, i32 noundef %55, i32 noundef 0, ptr noundef nonnull @cpdist, ptr noundef nonnull @cpdext, ptr noundef nonnull %2, ptr noundef nonnull %4), !range !57
  switch i32 %349, label %359 [
    i32 0, label %368
    i32 1, label %350
  ]

350:                                              ; preds = %345
  %351 = load ptr, ptr %2, align 8, !tbaa !16
  %352 = icmp eq ptr %351, null
  br i1 %352, label %359, label %353

353:                                              ; preds = %350, %353
  %354 = phi ptr [ %357, %353 ], [ %351, %350 ]
  %355 = getelementptr inbounds %struct.huft, ptr %354, i64 -1
  %356 = getelementptr %struct.huft, ptr %354, i64 -1, i32 2
  %357 = load ptr, ptr %356, align 8, !tbaa !20
  tail call void @free(ptr noundef %355) #9
  %358 = icmp eq ptr %357, null
  br i1 %358, label %359, label %353, !llvm.loop !21

359:                                              ; preds = %353, %350, %345
  %360 = load ptr, ptr %1, align 8, !tbaa !16
  %361 = icmp eq ptr %360, null
  br i1 %361, label %397, label %362

362:                                              ; preds = %359, %362
  %363 = phi ptr [ %366, %362 ], [ %360, %359 ]
  %364 = getelementptr inbounds %struct.huft, ptr %363, i64 -1
  %365 = getelementptr %struct.huft, ptr %363, i64 -1, i32 2
  %366 = load ptr, ptr %365, align 8, !tbaa !20
  tail call void @free(ptr noundef %364) #9
  %367 = icmp eq ptr %366, null
  br i1 %367, label %397, label %362, !llvm.loop !21

368:                                              ; preds = %345
  %369 = load ptr, ptr %1, align 8, !tbaa !16
  %370 = load ptr, ptr %2, align 8, !tbaa !16
  %371 = load i32, ptr %3, align 4, !tbaa !5
  %372 = load i32, ptr %4, align 4, !tbaa !5
  %373 = tail call i32 @inflate_codes(ptr noundef %369, ptr noundef %370, i32 noundef %371, i32 noundef %372), !range !59
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %397

375:                                              ; preds = %368
  %376 = icmp eq ptr %369, null
  br i1 %376, label %383, label %377

377:                                              ; preds = %375, %377
  %378 = phi ptr [ %381, %377 ], [ %369, %375 ]
  %379 = getelementptr inbounds %struct.huft, ptr %378, i64 -1
  %380 = getelementptr %struct.huft, ptr %378, i64 -1, i32 2
  %381 = load ptr, ptr %380, align 8, !tbaa !20
  tail call void @free(ptr noundef %379) #9
  %382 = icmp eq ptr %381, null
  br i1 %382, label %383, label %377, !llvm.loop !21

383:                                              ; preds = %377, %375
  %384 = load ptr, ptr %2, align 8, !tbaa !16
  %385 = icmp eq ptr %384, null
  br i1 %385, label %397, label %386

386:                                              ; preds = %383, %386
  %387 = phi ptr [ %390, %386 ], [ %384, %383 ]
  %388 = getelementptr inbounds %struct.huft, ptr %387, i64 -1
  %389 = getelementptr %struct.huft, ptr %387, i64 -1, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !20
  tail call void @free(ptr noundef %388) #9
  %391 = icmp eq ptr %390, null
  br i1 %391, label %397, label %386, !llvm.loop !21

392:                                              ; preds = %283
  store ptr %183, ptr %2, align 8, !tbaa !16
  br label %397

393:                                              ; preds = %220
  store ptr %183, ptr %2, align 8, !tbaa !16
  br label %397

394:                                              ; preds = %250
  store ptr %183, ptr %2, align 8, !tbaa !16
  br label %397

395:                                              ; preds = %166
  store ptr %158, ptr %2, align 8, !tbaa !16
  br label %397

396:                                              ; preds = %231, %261, %294
  store ptr %183, ptr %2, align 8, !tbaa !16
  br label %397

397:                                              ; preds = %100, %138, %339, %386, %362, %14, %39, %64, %396, %395, %394, %393, %392, %383, %359, %336, %135, %368, %333, %133, %75
  %398 = phi i32 [ 1, %75 ], [ %134, %133 ], [ %335, %333 ], [ 1, %368 ], [ %134, %135 ], [ %335, %336 ], [ %349, %359 ], [ 0, %383 ], [ 1, %392 ], [ 1, %393 ], [ 1, %394 ], [ 1, %395 ], [ 1, %396 ], [ 1, %64 ], [ 1, %39 ], [ 1, %14 ], [ %349, %362 ], [ 0, %386 ], [ %335, %339 ], [ %134, %138 ], [ 1, %100 ]
  call void @llvm.lifetime.end.p0(i64 1264, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #9
  ret i32 %398
}

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate_block(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load i64, ptr @bb, align 8, !tbaa !34
  %3 = load i32, ptr @bk, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load i32, ptr @incnt, align 4, !tbaa !5
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr @incnt, align 4, !tbaa !5
  %8 = icmp slt i32 %6, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = tail call i32 @FillInBuf() #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %55

12:                                               ; preds = %9, %5
  %13 = load ptr, ptr @inptr, align 8, !tbaa !16
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %14, ptr @inptr, align 8, !tbaa !16
  %15 = load i8, ptr %13, align 1, !tbaa !20
  %16 = zext i8 %15 to i64
  %17 = or i64 %2, %16
  br label %18

18:                                               ; preds = %12, %1
  %19 = phi i64 [ %2, %1 ], [ %17, %12 ]
  %20 = phi i32 [ %3, %1 ], [ 8, %12 ]
  %21 = trunc i64 %19 to i32
  %22 = and i32 %21, 1
  store i32 %22, ptr %0, align 4, !tbaa !5
  %23 = lshr i64 %19, 1
  %24 = add i32 %20, -1
  %25 = icmp ult i32 %20, 3
  br i1 %25, label %26, label %42

26:                                               ; preds = %18
  %27 = or i32 %24, 8
  %28 = load i32, ptr @incnt, align 4, !tbaa !5
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr @incnt, align 4, !tbaa !5
  %30 = icmp slt i32 %28, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = tail call i32 @FillInBuf() #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %31, %26
  %35 = load ptr, ptr @inptr, align 8, !tbaa !16
  %36 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %36, ptr @inptr, align 8, !tbaa !16
  %37 = load i8, ptr %35, align 1, !tbaa !20
  %38 = zext i8 %37 to i64
  %39 = zext nneg i32 %24 to i64
  %40 = shl nuw nsw i64 %38, %39
  %41 = or i64 %40, %23
  br label %42

42:                                               ; preds = %34, %18
  %43 = phi i64 [ %23, %18 ], [ %41, %34 ]
  %44 = phi i32 [ %24, %18 ], [ %27, %34 ]
  %45 = trunc i64 %43 to i32
  %46 = and i32 %45, 3
  %47 = lshr i64 %43, 2
  %48 = add i32 %44, -2
  store i64 %47, ptr @bb, align 8, !tbaa !34
  store i32 %48, ptr @bk, align 4, !tbaa !5
  switch i32 %46, label %55 [
    i32 2, label %49
    i32 0, label %51
    i32 1, label %53
  ]

49:                                               ; preds = %42
  %50 = tail call i32 @inflate_dynamic(), !range !57
  br label %55

51:                                               ; preds = %42
  %52 = tail call i32 @inflate_stored(), !range !59
  br label %55

53:                                               ; preds = %42
  %54 = tail call i32 @inflate_fixed(), !range !57
  br label %55

55:                                               ; preds = %9, %31, %42, %53, %51, %49
  %56 = phi i32 [ %50, %49 ], [ %52, %51 ], [ %54, %53 ], [ 2, %42 ], [ 1, %31 ], [ 1, %9 ]
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate_entry() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #9
  store i32 0, ptr @wp, align 4, !tbaa !5
  store i32 0, ptr @bk, align 4, !tbaa !5
  store i64 0, ptr @bb, align 8, !tbaa !34
  br label %2

2:                                                ; preds = %5, %0
  store i32 0, ptr @hufts, align 4, !tbaa !5
  %3 = call i32 @inflate_block(ptr noundef nonnull %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %34

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %2, label %8, !llvm.loop !65

8:                                                ; preds = %5
  %9 = load i32, ptr @wp, align 4, !tbaa !5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %8, %30
  %12 = phi ptr [ %31, %30 ], [ @slide, %8 ]
  %13 = phi i32 [ %32, %30 ], [ %9, %8 ]
  %14 = load i32, ptr @outcnt, align 4, !tbaa !5
  %15 = sub nsw i32 8192, %14
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %13)
  %17 = load ptr, ptr @outptr, align 8, !tbaa !16
  %18 = zext i32 %16 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %12, i64 %18, i1 false)
  %19 = load ptr, ptr @outptr, align 8, !tbaa !16
  %20 = getelementptr inbounds i8, ptr %19, i64 %18
  store ptr %20, ptr @outptr, align 8, !tbaa !16
  %21 = load i32, ptr @outcnt, align 4, !tbaa !5
  %22 = add i32 %21, %16
  store i32 %22, ptr @outcnt, align 4, !tbaa !5
  %23 = icmp eq i32 %22, 8192
  br i1 %23, label %24, label %30

24:                                               ; preds = %11
  %25 = tail call i32 @FlushOutput() #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr @stderr, align 8, !tbaa !16
  %29 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 14, i64 1, ptr %28) #11
  tail call void @exitPGP(i32 noundef 1) #9
  br label %30

30:                                               ; preds = %27, %24, %11
  %31 = getelementptr inbounds i8, ptr %12, i64 %18
  %32 = sub i32 %13, %16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %11, !llvm.loop !33

34:                                               ; preds = %2, %30, %8
  %35 = phi i32 [ 0, %8 ], [ 0, %30 ], [ %3, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #9
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local i32 @inflate() local_unnamed_addr #0 {
  %1 = tail call i32 @inflate_entry()
  ret i32 %1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = !{!7, !7, i64 0}
!21 = distinct !{!21, !10}
!22 = !{i64 0, i64 1, !20, i64 1, i64 1, !20, i64 8, i64 2, !23, i64 8, i64 8, !16}
!23 = !{!24, !24, i64 0}
!24 = !{!"short", !7, i64 0}
!25 = !{i64 0, i64 1, !20, i64 7, i64 2, !23, i64 7, i64 8, !16}
!26 = !{i64 6, i64 2, !23, i64 6, i64 8, !16}
!27 = !{i64 0, i64 2, !23, i64 0, i64 8, !16}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = !{!35, !35, i64 0}
!35 = !{!"long", !7, i64 0}
!36 = distinct !{!36, !10}
!37 = !{!38, !7, i64 0}
!38 = !{!"huft", !7, i64 0, !7, i64 1, !7, i64 8}
!39 = !{!38, !7, i64 1}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !10}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = !{i32 0, i32 4}
!58 = distinct !{!58, !10}
!59 = !{i32 0, i32 2}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !10}
!63 = distinct !{!63, !10}
!64 = distinct !{!64, !10}
!65 = distinct !{!65, !10}
