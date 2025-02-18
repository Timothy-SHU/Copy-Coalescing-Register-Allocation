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

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
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
  %23 = load i32, ptr %4, align 4, !tbaa !41
  %24 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 15
  %25 = load i16, ptr %24, align 2, !tbaa !34
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %32, label %36

27:                                               ; preds = %32
  %28 = zext i32 %34 to i64
  %29 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !34
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %36, !llvm.loop !43

32:                                               ; preds = %22, %27
  %33 = phi i32 [ %34, %27 ], [ 15, %22 ]
  %34 = add nsw i32 %33, -1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %27, !llvm.loop !43

36:                                               ; preds = %32, %27, %22
  %37 = phi i32 [ 15, %22 ], [ 0, %32 ], [ %34, %27 ]
  %38 = phi i1 [ false, %22 ], [ %35, %27 ], [ %35, %32 ]
  %39 = tail call i32 @llvm.umin.i32(i32 %23, i32 %37)
  br i1 %38, label %44, label %40

40:                                               ; preds = %36
  %41 = icmp ugt i32 %37, 1
  br i1 %41, label %42, label %63

42:                                               ; preds = %40
  %43 = zext i32 %37 to i64
  br label %53

44:                                               ; preds = %36
  %45 = load ptr, ptr %3, align 8, !tbaa !44
  %46 = getelementptr inbounds %struct.code, ptr %45, i64 1
  store ptr %46, ptr %3, align 8, !tbaa !44
  store i8 64, ptr %45, align 2, !tbaa.struct !46
  %47 = getelementptr inbounds i8, ptr %45, i64 1
  store i8 1, ptr %47, align 1, !tbaa.struct !48
  %48 = getelementptr inbounds i8, ptr %45, i64 2
  store i16 0, ptr %48, align 2, !tbaa.struct !49
  %49 = load ptr, ptr %3, align 8, !tbaa !44
  %50 = getelementptr inbounds %struct.code, ptr %49, i64 1
  store ptr %50, ptr %3, align 8, !tbaa !44
  store i8 64, ptr %49, align 2, !tbaa.struct !46
  %51 = getelementptr inbounds i8, ptr %49, i64 1
  store i8 1, ptr %51, align 1, !tbaa.struct !48
  %52 = getelementptr inbounds i8, ptr %49, i64 2
  store i16 0, ptr %52, align 2, !tbaa.struct !49
  br label %273

53:                                               ; preds = %42, %58
  %54 = phi i64 [ 1, %42 ], [ %59, %58 ]
  %55 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !34
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = add nuw nsw i64 %54, 1
  %60 = icmp eq i64 %59, %43
  br i1 %60, label %63, label %53, !llvm.loop !50

61:                                               ; preds = %53
  %62 = trunc i64 %54 to i32
  br label %63

63:                                               ; preds = %61, %58, %40
  %64 = phi i32 [ 1, %40 ], [ %62, %61 ], [ %37, %58 ]
  %65 = tail call i32 @llvm.umax.i32(i32 %39, i32 %64)
  br label %69

66:                                               ; preds = %69
  %67 = add nuw nsw i64 %70, 1
  %68 = icmp eq i64 %67, 16
  br i1 %68, label %78, label %69, !llvm.loop !51

69:                                               ; preds = %63, %66
  %70 = phi i64 [ 1, %63 ], [ %67, %66 ]
  %71 = phi i32 [ 1, %63 ], [ %76, %66 ]
  %72 = shl i32 %71, 1
  %73 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %70
  %74 = load i16, ptr %73, align 2, !tbaa !34
  %75 = zext i16 %74 to i32
  %76 = sub nsw i32 %72, %75
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %275, label %66

78:                                               ; preds = %66
  %79 = icmp eq i32 %76, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %78
  %81 = icmp eq i32 %0, 0
  %82 = icmp ne i32 %37, 1
  %83 = or i1 %81, %82
  br i1 %83, label %275, label %84

84:                                               ; preds = %80, %78
  %85 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 1
  store i16 0, ptr %85, align 2, !tbaa !34
  %86 = getelementptr inbounds i8, ptr %8, i64 2
  %87 = load i16, ptr %86, align 2
  br label %92

88:                                               ; preds = %92
  %89 = icmp eq i32 %2, 0
  br i1 %89, label %117, label %90

90:                                               ; preds = %88
  %91 = zext i32 %2 to i64
  br label %101

92:                                               ; preds = %84, %92
  %93 = phi i16 [ %87, %84 ], [ %97, %92 ]
  %94 = phi i64 [ 1, %84 ], [ %98, %92 ]
  %95 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %94
  %96 = load i16, ptr %95, align 2, !tbaa !34
  %97 = add i16 %96, %93
  %98 = add nuw nsw i64 %94, 1
  %99 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 %98
  store i16 %97, ptr %99, align 2, !tbaa !34
  %100 = icmp eq i64 %98, 15
  br i1 %100, label %88, label %92, !llvm.loop !52

101:                                              ; preds = %90, %114
  %102 = phi i64 [ 0, %90 ], [ %115, %114 ]
  %103 = getelementptr inbounds i16, ptr %1, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !34
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %101
  %107 = trunc i64 %102 to i16
  %108 = zext i16 %104 to i64
  %109 = getelementptr inbounds [16 x i16], ptr %8, i64 0, i64 %108
  %110 = load i16, ptr %109, align 2, !tbaa !34
  %111 = add i16 %110, 1
  store i16 %111, ptr %109, align 2, !tbaa !34
  %112 = zext i16 %110 to i64
  %113 = getelementptr inbounds i16, ptr %5, i64 %112
  store i16 %107, ptr %113, align 2, !tbaa !34
  br label %114

114:                                              ; preds = %101, %106
  %115 = add nuw nsw i64 %102, 1
  %116 = icmp eq i64 %115, %91
  br i1 %116, label %117, label %101, !llvm.loop !53

117:                                              ; preds = %114, %88
  switch i32 %0, label %119 [
    i32 0, label %120
    i32 1, label %118
  ]

118:                                              ; preds = %117
  br label %120

119:                                              ; preds = %117
  br label %120

120:                                              ; preds = %117, %119, %118
  %121 = phi ptr [ @inflate_table.dbase, %119 ], [ getelementptr inbounds ([31 x i16], ptr @inflate_table.lbase, i64 -9, i64 22), %118 ], [ %5, %117 ]
  %122 = phi ptr [ @inflate_table.dext, %119 ], [ getelementptr inbounds ([31 x i16], ptr @inflate_table.lext, i64 -9, i64 22), %118 ], [ %5, %117 ]
  %123 = phi i32 [ -1, %119 ], [ 256, %118 ], [ 19, %117 ]
  %124 = shl nuw i32 1, %65
  %125 = add i32 %124, -1
  %126 = icmp eq i32 %0, 1
  %127 = icmp ugt i32 %65, 9
  %128 = select i1 %126, i1 %127, i1 false
  br i1 %128, label %275, label %129

129:                                              ; preds = %120
  %130 = icmp eq i32 %0, 2
  %131 = select i1 %130, i1 %127, i1 false
  br i1 %131, label %275, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %3, align 8, !tbaa !44
  %134 = trunc i32 %65 to i8
  br label %135

135:                                              ; preds = %250, %132
  %136 = phi i32 [ %210, %250 ], [ %64, %132 ]
  %137 = phi i32 [ %193, %250 ], [ 0, %132 ]
  %138 = phi i32 [ %242, %250 ], [ %65, %132 ]
  %139 = phi i32 [ %218, %250 ], [ 0, %132 ]
  %140 = phi i32 [ %244, %250 ], [ %124, %132 ]
  %141 = phi i32 [ %192, %250 ], [ 0, %132 ]
  %142 = phi i32 [ %213, %250 ], [ -1, %132 ]
  %143 = phi ptr [ %220, %250 ], [ %133, %132 ]
  %144 = shl nuw i32 1, %138
  br label %145

145:                                              ; preds = %215, %135
  %146 = phi i32 [ %136, %135 ], [ %210, %215 ]
  %147 = phi i32 [ %137, %135 ], [ %193, %215 ]
  %148 = phi i32 [ %141, %135 ], [ %192, %215 ]
  %149 = sub i32 %146, %139
  %150 = trunc i32 %149 to i8
  %151 = zext i32 %147 to i64
  %152 = getelementptr inbounds i16, ptr %5, i64 %151
  %153 = load i16, ptr %152, align 2, !tbaa !34
  %154 = zext i16 %153 to i32
  %155 = icmp sgt i32 %123, %154
  br i1 %155, label %165, label %156

156:                                              ; preds = %145
  %157 = icmp slt i32 %123, %154
  br i1 %157, label %158, label %165

158:                                              ; preds = %156
  %159 = zext i16 %153 to i64
  %160 = getelementptr inbounds i16, ptr %122, i64 %159
  %161 = load i16, ptr %160, align 2, !tbaa !34
  %162 = trunc i16 %161 to i8
  %163 = getelementptr inbounds i16, ptr %121, i64 %159
  %164 = load i16, ptr %163, align 2, !tbaa !34
  br label %165

165:                                              ; preds = %156, %145, %158
  %166 = phi i16 [ %164, %158 ], [ %153, %145 ], [ 0, %156 ]
  %167 = phi i8 [ %162, %158 ], [ 0, %145 ], [ 96, %156 ]
  %168 = shl nsw i32 -1, %149
  %169 = lshr i32 %148, %139
  br label %170

170:                                              ; preds = %170, %165
  %171 = phi i32 [ %144, %165 ], [ %172, %170 ]
  %172 = add i32 %171, %168
  %173 = add i32 %172, %169
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.code, ptr %143, i64 %174
  store i8 %167, ptr %175, align 2, !tbaa.struct !46
  %176 = getelementptr inbounds i8, ptr %175, i64 1
  store i8 %150, ptr %176, align 1, !tbaa.struct !48
  %177 = getelementptr inbounds i8, ptr %175, i64 2
  store i16 %166, ptr %177, align 2, !tbaa.struct !49
  %178 = icmp eq i32 %172, 0
  br i1 %178, label %179, label %170, !llvm.loop !54

179:                                              ; preds = %170
  %180 = add i32 %146, -1
  %181 = shl nuw i32 1, %180
  br label %182

182:                                              ; preds = %182, %179
  %183 = phi i32 [ %181, %179 ], [ %186, %182 ]
  %184 = and i32 %183, %148
  %185 = icmp eq i32 %184, 0
  %186 = lshr i32 %183, 1
  br i1 %185, label %187, label %182, !llvm.loop !55

187:                                              ; preds = %182
  %188 = icmp eq i32 %183, 0
  %189 = add i32 %183, -1
  %190 = and i32 %189, %148
  %191 = add i32 %190, %183
  %192 = select i1 %188, i32 0, i32 %191
  %193 = add i32 %147, 1
  %194 = zext i32 %146 to i64
  %195 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %194
  %196 = load i16, ptr %195, align 2, !tbaa !34
  %197 = add i16 %196, -1
  store i16 %197, ptr %195, align 2, !tbaa !34
  %198 = icmp eq i16 %197, 0
  br i1 %198, label %199, label %209

199:                                              ; preds = %187
  %200 = icmp eq i32 %146, %37
  br i1 %200, label %262, label %201

201:                                              ; preds = %199
  %202 = zext i32 %193 to i64
  %203 = getelementptr inbounds i16, ptr %5, i64 %202
  %204 = load i16, ptr %203, align 2, !tbaa !34
  %205 = zext i16 %204 to i64
  %206 = getelementptr inbounds i16, ptr %1, i64 %205
  %207 = load i16, ptr %206, align 2, !tbaa !34
  %208 = zext i16 %207 to i32
  br label %209

209:                                              ; preds = %201, %187
  %210 = phi i32 [ %208, %201 ], [ %146, %187 ]
  %211 = icmp ugt i32 %210, %65
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = and i32 %192, %125
  %214 = icmp eq i32 %213, %142
  br i1 %214, label %215, label %216

215:                                              ; preds = %212, %209
  br label %145, !llvm.loop !56

216:                                              ; preds = %212
  %217 = icmp eq i32 %139, 0
  %218 = select i1 %217, i32 %65, i32 %139
  %219 = zext i32 %144 to i64
  %220 = getelementptr inbounds %struct.code, ptr %143, i64 %219
  %221 = sub i32 %210, %218
  %222 = icmp ult i32 %210, %37
  br i1 %222, label %223, label %241

223:                                              ; preds = %216
  %224 = shl nuw i32 1, %221
  %225 = sub i32 %37, %218
  br label %226

226:                                              ; preds = %223, %236
  %227 = phi i32 [ %239, %236 ], [ %210, %223 ]
  %228 = phi i32 [ %238, %236 ], [ %224, %223 ]
  %229 = phi i32 [ %237, %236 ], [ %221, %223 ]
  %230 = zext i32 %227 to i64
  %231 = getelementptr inbounds [16 x i16], ptr %7, i64 0, i64 %230
  %232 = load i16, ptr %231, align 2, !tbaa !34
  %233 = zext i16 %232 to i32
  %234 = sub nsw i32 %228, %233
  %235 = icmp slt i32 %234, 1
  br i1 %235, label %241, label %236

236:                                              ; preds = %226
  %237 = add i32 %229, 1
  %238 = shl nuw i32 %234, 1
  %239 = add i32 %237, %218
  %240 = icmp ult i32 %239, %37
  br i1 %240, label %226, label %241, !llvm.loop !57

241:                                              ; preds = %236, %226, %216
  %242 = phi i32 [ %221, %216 ], [ %225, %236 ], [ %229, %226 ]
  %243 = shl nuw i32 1, %242
  %244 = add i32 %243, %140
  %245 = icmp ugt i32 %244, 851
  %246 = select i1 %126, i1 %245, i1 false
  %247 = icmp ugt i32 %244, 591
  %248 = select i1 %130, i1 %247, i1 false
  %249 = select i1 %246, i1 true, i1 %248
  br i1 %249, label %275, label %250

250:                                              ; preds = %241
  %251 = trunc i32 %242 to i8
  %252 = load ptr, ptr %3, align 8, !tbaa !44
  %253 = zext i32 %213 to i64
  %254 = getelementptr inbounds %struct.code, ptr %252, i64 %253
  store i8 %251, ptr %254, align 2, !tbaa !58
  %255 = getelementptr inbounds %struct.code, ptr %252, i64 %253, i32 1
  store i8 %134, ptr %255, align 1, !tbaa !60
  %256 = ptrtoint ptr %220 to i64
  %257 = ptrtoint ptr %252 to i64
  %258 = sub i64 %256, %257
  %259 = lshr exact i64 %258, 2
  %260 = trunc i64 %259 to i16
  %261 = getelementptr inbounds %struct.code, ptr %252, i64 %253, i32 2
  store i16 %260, ptr %261, align 2, !tbaa !61
  br label %135, !llvm.loop !56

262:                                              ; preds = %199
  %263 = icmp eq i32 %192, 0
  br i1 %263, label %269, label %264

264:                                              ; preds = %262
  %265 = zext i32 %192 to i64
  %266 = getelementptr inbounds %struct.code, ptr %143, i64 %265
  store i8 64, ptr %266, align 2, !tbaa.struct !46
  %267 = getelementptr inbounds i8, ptr %266, i64 1
  store i8 %150, ptr %267, align 1, !tbaa.struct !48
  %268 = getelementptr inbounds i8, ptr %266, i64 2
  store i16 0, ptr %268, align 2, !tbaa.struct !49
  br label %269

269:                                              ; preds = %264, %262
  %270 = load ptr, ptr %3, align 8, !tbaa !44
  %271 = zext i32 %140 to i64
  %272 = getelementptr inbounds %struct.code, ptr %270, i64 %271
  store ptr %272, ptr %3, align 8, !tbaa !44
  br label %273

273:                                              ; preds = %44, %269
  %274 = phi i32 [ %65, %269 ], [ 1, %44 ]
  store i32 %274, ptr %4, align 4, !tbaa !41
  br label %275

275:                                              ; preds = %69, %241, %273, %120, %129, %80
  %276 = phi i32 [ -1, %80 ], [ 1, %129 ], [ 1, %120 ], [ 0, %273 ], [ 1, %241 ], [ -1, %69 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #4
  ret i32 %276
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

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"short", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !36, i64 0}
!43 = distinct !{!43, !39, !40}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !36, i64 0}
!46 = !{i64 0, i64 1, !47, i64 1, i64 1, !47, i64 2, i64 2, !34}
!47 = !{!36, !36, i64 0}
!48 = !{i64 0, i64 1, !47, i64 1, i64 2, !34}
!49 = !{i64 0, i64 2, !34}
!50 = distinct !{!50, !39, !40}
!51 = distinct !{!51, !39, !40}
!52 = distinct !{!52, !39, !40}
!53 = distinct !{!53, !39, !40}
!54 = distinct !{!54, !39, !40}
!55 = distinct !{!55, !39, !40}
!56 = distinct !{!56, !40}
!57 = distinct !{!57, !39, !40}
!58 = !{!59, !36, i64 0}
!59 = !{!"", !36, i64 0, !36, i64 1, !35, i64 2}
!60 = !{!59, !36, i64 1}
!61 = !{!59, !35, i64 2}
