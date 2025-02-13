; ModuleID = 'zlib/inftrees.c'
source_filename = "zlib/inftrees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.code = type { i8, i8, i16 }

@inflate_copyright = dso_local local_unnamed_addr constant [47 x i8] c" inflate 1.2.6 Copyright 1995-2012 Mark Adler \00", align 16
@inflate_table.lbase = internal unnamed_addr constant [31 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258, i16 0, i16 0], align 16
@inflate_table.lext = internal unnamed_addr constant [31 x i16] [i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 17, i16 17, i16 18, i16 18, i16 18, i16 18, i16 19, i16 19, i16 19, i16 19, i16 20, i16 20, i16 20, i16 20, i16 21, i16 21, i16 21, i16 21, i16 16, i16 203, i16 69], align 16
@inflate_table.dbase = internal unnamed_addr constant [32 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577, i16 0, i16 0], align 16
@inflate_table.dext = internal unnamed_addr constant [32 x i16] [i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 18, i16 18, i16 19, i16 19, i16 20, i16 20, i16 21, i16 21, i16 22, i16 22, i16 23, i16 23, i16 24, i16 24, i16 25, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 28, i16 29, i16 29, i16 64, i16 64], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define hidden noundef i32 @inflate_table(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i16], align 16
  %8 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false), !tbaa !34
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = zext i32 %2 to i64
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i64 [ 0, %10 ], [ %20, %12 ]
  %14 = getelementptr inbounds i16, ptr %1, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !34
  %16 = zext i16 %15 to i64
  %17 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !34
  %19 = add i16 %18, 1
  store i16 %19, ptr %17, align 2, !tbaa !34
  %20 = add nuw nsw i64 %13, 1
  %21 = icmp eq i64 %20, %11
  br i1 %21, label %22, label %12, !llvm.loop !38

22:                                               ; preds = %12, %6
  %23 = load i32, ptr %4, align 4, !tbaa !40
  br label %24

24:                                               ; preds = %22, %30
  %25 = phi i32 [ 15, %22 ], [ %31, %30 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !34
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = add nsw i32 %25, -1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %24, !llvm.loop !42

33:                                               ; preds = %24
  %34 = tail call i32 @llvm.umin.i32(i32 %23, i32 %25)
  %35 = icmp ugt i32 %25, 1
  br i1 %35, label %45, label %55

36:                                               ; preds = %30
  %37 = load ptr, ptr %3, align 8, !tbaa !43
  %38 = getelementptr inbounds %struct.code, ptr %37, i64 1
  store ptr %38, ptr %3, align 8, !tbaa !43
  store i8 64, ptr %37, align 2, !tbaa.struct !45
  %39 = getelementptr inbounds i8, ptr %37, i64 1
  store i8 1, ptr %39, align 1, !tbaa.struct !47
  %40 = getelementptr inbounds i8, ptr %37, i64 2
  store i16 0, ptr %40, align 2, !tbaa.struct !48
  %41 = load ptr, ptr %3, align 8, !tbaa !43
  %42 = getelementptr inbounds %struct.code, ptr %41, i64 1
  store ptr %42, ptr %3, align 8, !tbaa !43
  store i8 64, ptr %41, align 2, !tbaa.struct !45
  %43 = getelementptr inbounds i8, ptr %41, i64 1
  store i8 1, ptr %43, align 1, !tbaa.struct !47
  %44 = getelementptr inbounds i8, ptr %41, i64 2
  store i16 0, ptr %44, align 2, !tbaa.struct !48
  br label %264

45:                                               ; preds = %33, %50
  %46 = phi i64 [ %51, %50 ], [ 1, %33 ]
  %47 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !34
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = add nuw nsw i64 %46, 1
  %52 = icmp eq i64 %51, %26
  br i1 %52, label %55, label %45, !llvm.loop !49

53:                                               ; preds = %45
  %54 = trunc i64 %46 to i32
  br label %55

55:                                               ; preds = %50, %53, %33
  %56 = phi i32 [ 1, %33 ], [ %54, %53 ], [ %25, %50 ]
  %57 = tail call i32 @llvm.umax.i32(i32 %34, i32 %56)
  br label %61

58:                                               ; preds = %61
  %59 = add nuw nsw i64 %62, 1
  %60 = icmp eq i64 %59, 16
  br i1 %60, label %70, label %61, !llvm.loop !50

61:                                               ; preds = %55, %58
  %62 = phi i64 [ 1, %55 ], [ %59, %58 ]
  %63 = phi i32 [ 1, %55 ], [ %68, %58 ]
  %64 = shl i32 %63, 1
  %65 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %62
  %66 = load i16, ptr %65, align 2, !tbaa !34
  %67 = zext i16 %66 to i32
  %68 = sub nsw i32 %64, %67
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %266, label %58

70:                                               ; preds = %58
  %71 = icmp eq i32 %68, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %70
  %73 = icmp eq i32 %0, 0
  %74 = icmp ne i32 %25, 1
  %75 = or i1 %73, %74
  br i1 %75, label %266, label %76

76:                                               ; preds = %72, %70
  %77 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 1
  store i16 0, ptr %77, align 2, !tbaa !34
  br label %81

78:                                               ; preds = %81
  br i1 %9, label %106, label %79

79:                                               ; preds = %78
  %80 = zext i32 %2 to i64
  br label %90

81:                                               ; preds = %76, %81
  %82 = phi i16 [ 0, %76 ], [ %86, %81 ]
  %83 = phi i64 [ 1, %76 ], [ %87, %81 ]
  %84 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !34
  %86 = add i16 %85, %82
  %87 = add nuw nsw i64 %83, 1
  %88 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 %87
  store i16 %86, ptr %88, align 2, !tbaa !34
  %89 = icmp eq i64 %87, 15
  br i1 %89, label %78, label %81, !llvm.loop !51

90:                                               ; preds = %79, %103
  %91 = phi i64 [ 0, %79 ], [ %104, %103 ]
  %92 = getelementptr inbounds i16, ptr %1, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !34
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %90
  %96 = trunc i64 %91 to i16
  %97 = zext i16 %93 to i64
  %98 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 %97
  %99 = load i16, ptr %98, align 2, !tbaa !34
  %100 = add i16 %99, 1
  store i16 %100, ptr %98, align 2, !tbaa !34
  %101 = zext i16 %99 to i64
  %102 = getelementptr inbounds i16, ptr %5, i64 %101
  store i16 %96, ptr %102, align 2, !tbaa !34
  br label %103

103:                                              ; preds = %90, %95
  %104 = add nuw nsw i64 %91, 1
  %105 = icmp eq i64 %104, %80
  br i1 %105, label %106, label %90, !llvm.loop !52

106:                                              ; preds = %103, %78
  switch i32 %0, label %109 [
    i32 0, label %113
    i32 1, label %107
  ]

107:                                              ; preds = %106
  %108 = icmp ugt i32 %57, 9
  br i1 %108, label %266, label %113

109:                                              ; preds = %106
  %110 = icmp ugt i32 %57, 9
  %111 = icmp eq i32 %0, 2
  %112 = select i1 %111, i1 %110, i1 false
  br i1 %112, label %266, label %113

113:                                              ; preds = %107, %106, %109
  %114 = phi i1 [ %111, %109 ], [ false, %106 ], [ false, %107 ]
  %115 = phi ptr [ @inflate_table.dbase, %109 ], [ %5, %106 ], [ getelementptr inbounds ([31 x i16], ptr @inflate_table.lbase, i64 -9, i64 22), %107 ]
  %116 = phi ptr [ @inflate_table.dext, %109 ], [ %5, %106 ], [ getelementptr inbounds ([31 x i16], ptr @inflate_table.lext, i64 -9, i64 22), %107 ]
  %117 = phi i32 [ -1, %109 ], [ 19, %106 ], [ 256, %107 ]
  %118 = phi i1 [ false, %109 ], [ false, %106 ], [ true, %107 ]
  %119 = shl nuw i32 1, %57
  %120 = add i32 %119, -1
  %121 = load ptr, ptr %3, align 8, !tbaa !43
  %122 = trunc i32 %57 to i8
  br label %123

123:                                              ; preds = %241, %113
  %124 = phi i32 [ %198, %241 ], [ %56, %113 ]
  %125 = phi i32 [ %181, %241 ], [ 0, %113 ]
  %126 = phi i32 [ %234, %241 ], [ %57, %113 ]
  %127 = phi i32 [ %206, %241 ], [ 0, %113 ]
  %128 = phi i32 [ %235, %241 ], [ %119, %113 ]
  %129 = phi i32 [ %180, %241 ], [ 0, %113 ]
  %130 = phi i32 [ %201, %241 ], [ -1, %113 ]
  %131 = phi ptr [ %208, %241 ], [ %121, %113 ]
  %132 = shl nuw i32 1, %126
  br label %133

133:                                              ; preds = %203, %123
  %134 = phi i32 [ %124, %123 ], [ %198, %203 ]
  %135 = phi i32 [ %125, %123 ], [ %181, %203 ]
  %136 = phi i32 [ %129, %123 ], [ %180, %203 ]
  %137 = sub i32 %134, %127
  %138 = trunc i32 %137 to i8
  %139 = zext i32 %135 to i64
  %140 = getelementptr inbounds i16, ptr %5, i64 %139
  %141 = load i16, ptr %140, align 2, !tbaa !34
  %142 = zext i16 %141 to i32
  %143 = icmp sgt i32 %117, %142
  br i1 %143, label %153, label %144

144:                                              ; preds = %133
  %145 = icmp slt i32 %117, %142
  br i1 %145, label %146, label %153

146:                                              ; preds = %144
  %147 = zext i16 %141 to i64
  %148 = getelementptr inbounds i16, ptr %116, i64 %147
  %149 = load i16, ptr %148, align 2, !tbaa !34
  %150 = trunc i16 %149 to i8
  %151 = getelementptr inbounds i16, ptr %115, i64 %147
  %152 = load i16, ptr %151, align 2, !tbaa !34
  br label %153

153:                                              ; preds = %144, %133, %146
  %154 = phi i16 [ %152, %146 ], [ %141, %133 ], [ 0, %144 ]
  %155 = phi i8 [ %150, %146 ], [ 0, %133 ], [ 96, %144 ]
  %156 = shl nsw i32 -1, %137
  %157 = lshr i32 %136, %127
  br label %158

158:                                              ; preds = %158, %153
  %159 = phi i32 [ %132, %153 ], [ %160, %158 ]
  %160 = add i32 %159, %156
  %161 = add i32 %160, %157
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.code, ptr %131, i64 %162
  store i8 %155, ptr %163, align 2, !tbaa.struct !45
  %164 = getelementptr inbounds i8, ptr %163, i64 1
  store i8 %138, ptr %164, align 1, !tbaa.struct !47
  %165 = getelementptr inbounds i8, ptr %163, i64 2
  store i16 %154, ptr %165, align 2, !tbaa.struct !48
  %166 = icmp eq i32 %160, 0
  br i1 %166, label %167, label %158, !llvm.loop !53

167:                                              ; preds = %158
  %168 = add i32 %134, -1
  %169 = shl nuw i32 1, %168
  br label %170

170:                                              ; preds = %170, %167
  %171 = phi i32 [ %169, %167 ], [ %174, %170 ]
  %172 = and i32 %171, %136
  %173 = icmp eq i32 %172, 0
  %174 = lshr i32 %171, 1
  br i1 %173, label %175, label %170, !llvm.loop !54

175:                                              ; preds = %170
  %176 = icmp eq i32 %171, 0
  %177 = add i32 %171, -1
  %178 = and i32 %177, %136
  %179 = add i32 %178, %171
  %180 = select i1 %176, i32 0, i32 %179
  %181 = add i32 %135, 1
  %182 = zext i32 %134 to i64
  %183 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %182
  %184 = load i16, ptr %183, align 2, !tbaa !34
  %185 = add i16 %184, -1
  store i16 %185, ptr %183, align 2, !tbaa !34
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %175
  %188 = icmp eq i32 %134, %25
  br i1 %188, label %253, label %189

189:                                              ; preds = %187
  %190 = zext i32 %181 to i64
  %191 = getelementptr inbounds i16, ptr %5, i64 %190
  %192 = load i16, ptr %191, align 2, !tbaa !34
  %193 = zext i16 %192 to i64
  %194 = getelementptr inbounds i16, ptr %1, i64 %193
  %195 = load i16, ptr %194, align 2, !tbaa !34
  %196 = zext i16 %195 to i32
  br label %197

197:                                              ; preds = %189, %175
  %198 = phi i32 [ %196, %189 ], [ %134, %175 ]
  %199 = icmp ugt i32 %198, %57
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = and i32 %180, %120
  %202 = icmp eq i32 %201, %130
  br i1 %202, label %203, label %204

203:                                              ; preds = %200, %197
  br label %133

204:                                              ; preds = %200
  %205 = icmp eq i32 %127, 0
  %206 = select i1 %205, i32 %57, i32 %127
  %207 = zext i32 %132 to i64
  %208 = getelementptr inbounds %struct.code, ptr %131, i64 %207
  %209 = sub i32 %198, %206
  %210 = shl nuw i32 1, %209
  %211 = icmp ult i32 %198, %25
  br i1 %211, label %212, label %232

212:                                              ; preds = %204
  %213 = sub i32 %25, %206
  br label %214

214:                                              ; preds = %212, %224
  %215 = phi i32 [ %227, %224 ], [ %198, %212 ]
  %216 = phi i32 [ %226, %224 ], [ %210, %212 ]
  %217 = phi i32 [ %225, %224 ], [ %209, %212 ]
  %218 = zext i32 %215 to i64
  %219 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %218
  %220 = load i16, ptr %219, align 2, !tbaa !34
  %221 = zext i16 %220 to i32
  %222 = sub nsw i32 %216, %221
  %223 = icmp slt i32 %222, 1
  br i1 %223, label %229, label %224

224:                                              ; preds = %214
  %225 = add i32 %217, 1
  %226 = shl nuw i32 %222, 1
  %227 = add i32 %225, %206
  %228 = icmp ult i32 %227, %25
  br i1 %228, label %214, label %229, !llvm.loop !55

229:                                              ; preds = %214, %224
  %230 = phi i32 [ %213, %224 ], [ %217, %214 ]
  %231 = shl nuw i32 1, %230
  br label %232

232:                                              ; preds = %229, %204
  %233 = phi i32 [ %231, %229 ], [ %210, %204 ]
  %234 = phi i32 [ %230, %229 ], [ %209, %204 ]
  %235 = add i32 %233, %128
  %236 = icmp ugt i32 %235, 851
  %237 = select i1 %118, i1 %236, i1 false
  %238 = icmp ugt i32 %235, 591
  %239 = select i1 %114, i1 %238, i1 false
  %240 = select i1 %237, i1 true, i1 %239
  br i1 %240, label %266, label %241

241:                                              ; preds = %232
  %242 = trunc i32 %234 to i8
  %243 = load ptr, ptr %3, align 8, !tbaa !43
  %244 = zext i32 %201 to i64
  %245 = getelementptr inbounds %struct.code, ptr %243, i64 %244
  store i8 %242, ptr %245, align 2, !tbaa !56
  %246 = getelementptr inbounds %struct.code, ptr %243, i64 %244, i32 1
  store i8 %122, ptr %246, align 1, !tbaa !58
  %247 = ptrtoint ptr %208 to i64
  %248 = ptrtoint ptr %243 to i64
  %249 = sub i64 %247, %248
  %250 = lshr exact i64 %249, 2
  %251 = trunc i64 %250 to i16
  %252 = getelementptr inbounds %struct.code, ptr %243, i64 %244, i32 2
  store i16 %251, ptr %252, align 2, !tbaa !59
  br label %123

253:                                              ; preds = %187
  %254 = icmp eq i32 %180, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %253
  %256 = zext i32 %180 to i64
  %257 = getelementptr inbounds %struct.code, ptr %131, i64 %256
  store i8 64, ptr %257, align 2, !tbaa.struct !45
  %258 = getelementptr inbounds i8, ptr %257, i64 1
  store i8 %138, ptr %258, align 1, !tbaa.struct !47
  %259 = getelementptr inbounds i8, ptr %257, i64 2
  store i16 0, ptr %259, align 2, !tbaa.struct !48
  br label %260

260:                                              ; preds = %255, %253
  %261 = load ptr, ptr %3, align 8, !tbaa !43
  %262 = zext i32 %128 to i64
  %263 = getelementptr inbounds %struct.code, ptr %261, i64 %262
  store ptr %263, ptr %3, align 8, !tbaa !43
  br label %264

264:                                              ; preds = %36, %260
  %265 = phi i32 [ %57, %260 ], [ 1, %36 ]
  store i32 %265, ptr %4, align 4, !tbaa !40
  br label %266

266:                                              ; preds = %61, %232, %264, %107, %109, %72
  %267 = phi i32 [ -1, %72 ], [ 1, %109 ], [ 1, %107 ], [ 0, %264 ], [ 1, %232 ], [ -1, %61 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #4
  ret i32 %267
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"short", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = distinct !{!42, !39}
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !36, i64 0}
!45 = !{i64 0, i64 1, !46, i64 1, i64 1, !46, i64 2, i64 2, !34}
!46 = !{!36, !36, i64 0}
!47 = !{i64 0, i64 1, !46, i64 1, i64 2, !34}
!48 = !{i64 0, i64 2, !34}
!49 = distinct !{!49, !39}
!50 = distinct !{!50, !39}
!51 = distinct !{!51, !39}
!52 = distinct !{!52, !39}
!53 = distinct !{!53, !39}
!54 = distinct !{!54, !39}
!55 = distinct !{!55, !39}
!56 = !{!57, !36, i64 0}
!57 = !{!"", !36, i64 0, !36, i64 1, !35, i64 2}
!58 = !{!57, !36, i64 1}
!59 = !{!57, !35, i64 2}
