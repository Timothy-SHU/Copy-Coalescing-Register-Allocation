; ModuleID = 'blender/source/blender/imbuf/intern/iris.c'
source_filename = "blender/source/blender/imbuf/intern/iris.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.IMAGE = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, [80 x i8], i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@file_data = internal unnamed_addr global ptr null, align 8
@file_offset = internal unnamed_addr global i32 0, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [47 x i8] c"longimagedata: bad magic number in image file\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"longimagedata: image must have 1 or 2 byte per pix chan\0A\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"iris starttab\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"iris endtab\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"iris image\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"iris lengthtab\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"iris rlebuf\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"iris lumbuf\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"output_iris: rlebuf is too small - bad poop\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"output_iris: not enough space for image!!\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"no name\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @imb_is_a_iris(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !34
  %3 = zext i8 %2 to i32
  %4 = shl nuw nsw i32 %3, 8
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !34
  %7 = zext i8 %6 to i32
  %8 = or disjoint i32 %4, %7
  %9 = icmp eq i32 %8, 474
  %10 = shl nuw nsw i32 %7, 8
  %11 = or disjoint i32 %10, %3
  %12 = icmp eq i32 %11, 474
  %13 = select i1 %9, i1 true, i1 %12
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @imb_loadiris(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = alloca %struct.IMAGE, align 8
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %5) #13
  %6 = tail call i32 @imb_is_a_iris(ptr noundef %0) #14, !range !37
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %444, label %8

8:                                                ; preds = %4
  tail call void @colorspace_set_default_role(ptr noundef %3, i32 noundef 64, i32 noundef 4) #15
  store ptr %0, ptr @file_data, align 8, !tbaa !38
  store i32 0, ptr @file_offset, align 4, !tbaa !40
  call fastcc void @readheader(ptr noundef nonnull %5) #14
  %9 = load i16, ptr %5, align 8, !tbaa !42
  %10 = icmp eq i16 %9, 474
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @stderr, align 8, !tbaa !38
  %13 = tail call i64 @fwrite(ptr nonnull @.str, i64 46, i64 1, ptr %12) #16
  br label %444

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.IMAGE, ptr %5, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !45
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, 65280
  %19 = icmp eq i32 %18, 256
  %20 = and i32 %17, 255
  %21 = add nsw i32 %20, -3
  %22 = icmp ult i32 %21, -2
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load ptr, ptr @stderr, align 8, !tbaa !38
  %25 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 56, i64 1, ptr %24) #16
  br label %444

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.IMAGE, ptr %5, i64 0, i32 3
  %28 = load i16, ptr %27, align 2, !tbaa !46
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds %struct.IMAGE, ptr %5, i64 0, i32 4
  %31 = load i16, ptr %30, align 8, !tbaa !47
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.IMAGE, ptr %5, i64 0, i32 5
  %34 = load i16, ptr %33, align 2, !tbaa !48
  %35 = zext i16 %34 to i32
  %36 = and i32 %2, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %26
  %39 = trunc i16 %34 to i8
  %40 = shl i8 %39, 3
  %41 = tail call ptr @IMB_allocImBuf(i32 noundef %29, i32 noundef %32, i8 noundef zeroext %40, i32 noundef 0) #15
  %42 = icmp eq ptr %41, null
  br i1 %42, label %444, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ImBuf, ptr %41, i64 0, i32 26
  store i32 474, ptr %44, align 8, !tbaa !49
  br label %444

45:                                               ; preds = %26
  br i1 %19, label %46, label %239

46:                                               ; preds = %45
  %47 = shl nuw nsw i32 %32, 2
  %48 = mul i32 %47, %35
  %49 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !38
  %50 = sext i32 %48 to i64
  %51 = tail call ptr %49(i64 noundef %50, ptr noundef nonnull @.str.2) #15
  %52 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !38
  %53 = tail call ptr %52(i64 noundef %50, ptr noundef nonnull @.str.3) #15
  store i32 512, ptr @file_offset, align 4, !tbaa !40
  tail call fastcc void @readtab(ptr noundef %51, i32 noundef %48) #14
  tail call fastcc void @readtab(ptr noundef %53, i32 noundef %48) #14
  %54 = icmp eq i16 %31, 0
  br i1 %54, label %80, label %55

55:                                               ; preds = %46
  %56 = icmp eq i16 %34, 0
  %57 = zext i16 %31 to i64
  %58 = zext i16 %34 to i64
  br label %59

59:                                               ; preds = %55, %75
  %60 = phi i64 [ 0, %55 ], [ %77, %75 ]
  %61 = phi i1 [ true, %55 ], [ %78, %75 ]
  %62 = phi i32 [ 0, %55 ], [ %76, %75 ]
  br i1 %56, label %75, label %63

63:                                               ; preds = %59
  %64 = getelementptr i32, ptr %51, i64 %60
  br label %68

65:                                               ; preds = %68
  %66 = add nuw nsw i64 %69, 1
  %67 = icmp eq i64 %66, %58
  br i1 %67, label %75, label %68, !llvm.loop !54

68:                                               ; preds = %63, %65
  %69 = phi i64 [ 0, %63 ], [ %66, %65 ]
  %70 = phi i32 [ %62, %63 ], [ %73, %65 ]
  %71 = mul nuw nsw i64 %69, %57
  %72 = getelementptr i32, ptr %64, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !40
  %74 = icmp ult i32 %73, %70
  br i1 %74, label %80, label %65

75:                                               ; preds = %65, %59
  %76 = phi i32 [ %62, %59 ], [ %73, %65 ]
  %77 = add nuw nsw i64 %60, 1
  %78 = icmp ult i64 %77, %57
  %79 = icmp eq i64 %77, %57
  br i1 %79, label %80, label %59, !llvm.loop !56

80:                                               ; preds = %75, %68, %46
  %81 = phi i1 [ false, %46 ], [ %61, %68 ], [ %78, %75 ]
  %82 = icmp eq i32 %20, 1
  br i1 %82, label %83, label %166

83:                                               ; preds = %80
  %84 = trunc i16 %34 to i8
  %85 = shl i8 %84, 3
  %86 = tail call ptr @IMB_allocImBuf(i32 noundef %29, i32 noundef %32, i8 noundef zeroext %85, i32 noundef 1) #15
  %87 = getelementptr inbounds %struct.ImBuf, ptr %86, i64 0, i32 4
  %88 = load i8, ptr %87, align 8, !tbaa !57
  %89 = icmp ugt i8 %88, 32
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i8 32, ptr %87, align 8, !tbaa !57
  br label %91

91:                                               ; preds = %90, %83
  %92 = getelementptr inbounds %struct.ImBuf, ptr %86, i64 0, i32 8
  %93 = load ptr, ptr %92, align 8, !tbaa !58
  br i1 %81, label %94, label %125

94:                                               ; preds = %91
  %95 = icmp eq i16 %34, 0
  br i1 %95, label %235, label %96

96:                                               ; preds = %94
  %97 = icmp eq i16 %31, 0
  %98 = zext i16 %28 to i64
  %99 = zext i16 %31 to i64
  %100 = zext i16 %34 to i64
  br label %101

101:                                              ; preds = %96, %122
  %102 = phi i64 [ 0, %96 ], [ %123, %122 ]
  br i1 %97, label %122, label %103

103:                                              ; preds = %101
  %104 = mul nuw nsw i64 %102, %99
  %105 = trunc i64 %102 to i32
  %106 = sub i32 3, %105
  br label %107

107:                                              ; preds = %103, %107
  %108 = phi i64 [ 0, %103 ], [ %120, %107 ]
  %109 = phi ptr [ %93, %103 ], [ %119, %107 ]
  %110 = add nuw nsw i64 %108, %104
  %111 = getelementptr inbounds i32, ptr %51, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !40
  %113 = load ptr, ptr @file_data, align 8, !tbaa !38
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, ptr %113, i64 %114
  %116 = getelementptr inbounds i32, ptr %53, i64 %110
  %117 = load i32, ptr %116, align 4, !tbaa !40
  %118 = add i32 %117, %112
  store i32 %118, ptr @file_offset, align 4, !tbaa !40
  tail call fastcc void @expandrow(ptr noundef %109, ptr noundef %115, i32 noundef %106) #14
  %119 = getelementptr inbounds i32, ptr %109, i64 %98
  %120 = add nuw nsw i64 %108, 1
  %121 = icmp eq i64 %120, %99
  br i1 %121, label %122, label %107, !llvm.loop !59

122:                                              ; preds = %107, %101
  %123 = add nuw nsw i64 %102, 1
  %124 = icmp eq i64 %123, %100
  br i1 %124, label %235, label %101, !llvm.loop !60

125:                                              ; preds = %91
  %126 = icmp eq i16 %31, 0
  br i1 %126, label %235, label %127

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.ImBuf, ptr %86, i64 0, i32 16
  %129 = load ptr, ptr %128, align 8, !tbaa !61
  %130 = icmp eq i16 %34, 0
  %131 = zext i16 %28 to i64
  %132 = zext i16 %31 to i64
  %133 = zext i16 %34 to i64
  br label %134

134:                                              ; preds = %127, %161
  %135 = phi i64 [ 0, %127 ], [ %164, %161 ]
  %136 = phi ptr [ %93, %127 ], [ %162, %161 ]
  %137 = phi ptr [ %129, %127 ], [ %163, %161 ]
  br i1 %130, label %161, label %138

138:                                              ; preds = %134, %158
  %139 = phi i64 [ %159, %158 ], [ 0, %134 ]
  %140 = mul nuw nsw i64 %139, %132
  %141 = add nuw nsw i64 %140, %135
  %142 = getelementptr inbounds i32, ptr %51, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !40
  %144 = load ptr, ptr @file_data, align 8, !tbaa !38
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, ptr %144, i64 %145
  %147 = getelementptr inbounds i32, ptr %53, i64 %141
  %148 = load i32, ptr %147, align 4, !tbaa !40
  %149 = add i32 %148, %143
  store i32 %149, ptr @file_offset, align 4, !tbaa !40
  %150 = icmp ult i64 %139, 4
  br i1 %150, label %153, label %151

151:                                              ; preds = %138
  %152 = icmp ult i64 %139, 8
  br i1 %152, label %153, label %158

153:                                              ; preds = %151, %138
  %154 = phi i32 [ 3, %138 ], [ 7, %151 ]
  %155 = phi ptr [ %136, %138 ], [ %137, %151 ]
  %156 = trunc i64 %139 to i32
  %157 = xor i32 %154, %156
  tail call fastcc void @expandrow(ptr noundef %155, ptr noundef %146, i32 noundef %157) #14
  br label %158

158:                                              ; preds = %153, %151
  %159 = add nuw nsw i64 %139, 1
  %160 = icmp eq i64 %159, %133
  br i1 %160, label %161, label %138, !llvm.loop !62

161:                                              ; preds = %158, %134
  %162 = getelementptr inbounds i32, ptr %136, i64 %131
  %163 = getelementptr inbounds i32, ptr %137, i64 %131
  %164 = add nuw nsw i64 %135, 1
  %165 = icmp eq i64 %164, %132
  br i1 %165, label %235, label %134, !llvm.loop !63

166:                                              ; preds = %80
  %167 = and i32 %2, 1
  %168 = or disjoint i32 %167, 32
  %169 = tail call ptr @IMB_allocImBuf(i32 noundef %29, i32 noundef %32, i8 noundef zeroext 32, i32 noundef %168) #15
  %170 = getelementptr inbounds %struct.ImBuf, ptr %169, i64 0, i32 9
  %171 = load ptr, ptr %170, align 8, !tbaa !64
  br i1 %81, label %180, label %172

172:                                              ; preds = %166
  %173 = icmp eq i16 %31, 0
  br i1 %173, label %235, label %174

174:                                              ; preds = %172
  %175 = icmp eq i16 %34, 0
  %176 = shl nuw nsw i32 %29, 2
  %177 = zext nneg i32 %176 to i64
  %178 = zext i16 %31 to i64
  %179 = zext i16 %34 to i64
  br label %212

180:                                              ; preds = %166
  %181 = icmp eq i16 %34, 0
  br i1 %181, label %235, label %182

182:                                              ; preds = %180
  %183 = icmp eq i16 %31, 0
  %184 = shl nuw nsw i32 %29, 2
  %185 = zext nneg i32 %184 to i64
  %186 = zext i16 %31 to i64
  %187 = zext i16 %34 to i64
  br label %188

188:                                              ; preds = %182, %209
  %189 = phi i64 [ 0, %182 ], [ %210, %209 ]
  br i1 %183, label %209, label %190

190:                                              ; preds = %188
  %191 = mul nuw nsw i64 %189, %186
  %192 = trunc i64 %189 to i32
  %193 = sub i32 3, %192
  br label %194

194:                                              ; preds = %190, %194
  %195 = phi i64 [ 0, %190 ], [ %207, %194 ]
  %196 = phi ptr [ %171, %190 ], [ %206, %194 ]
  %197 = add nuw nsw i64 %195, %191
  %198 = getelementptr inbounds i32, ptr %51, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !40
  %200 = load ptr, ptr @file_data, align 8, !tbaa !38
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i8, ptr %200, i64 %201
  %203 = getelementptr inbounds i32, ptr %53, i64 %197
  %204 = load i32, ptr %203, align 4, !tbaa !40
  %205 = add i32 %204, %199
  store i32 %205, ptr @file_offset, align 4, !tbaa !40
  tail call fastcc void @expandrow2(ptr noundef %196, ptr noundef %202, i32 noundef %193) #14
  %206 = getelementptr inbounds float, ptr %196, i64 %185
  %207 = add nuw nsw i64 %195, 1
  %208 = icmp eq i64 %207, %186
  br i1 %208, label %209, label %194, !llvm.loop !65

209:                                              ; preds = %194, %188
  %210 = add nuw nsw i64 %189, 1
  %211 = icmp eq i64 %210, %187
  br i1 %211, label %235, label %188, !llvm.loop !66

212:                                              ; preds = %174, %231
  %213 = phi i64 [ 0, %174 ], [ %233, %231 ]
  %214 = phi ptr [ %171, %174 ], [ %232, %231 ]
  br i1 %175, label %231, label %215

215:                                              ; preds = %212, %215
  %216 = phi i64 [ %229, %215 ], [ 0, %212 ]
  %217 = mul nuw nsw i64 %216, %178
  %218 = add nuw nsw i64 %217, %213
  %219 = getelementptr inbounds i32, ptr %51, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !40
  %221 = load ptr, ptr @file_data, align 8, !tbaa !38
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i8, ptr %221, i64 %222
  %224 = getelementptr inbounds i32, ptr %53, i64 %218
  %225 = load i32, ptr %224, align 4, !tbaa !40
  %226 = add i32 %225, %220
  store i32 %226, ptr @file_offset, align 4, !tbaa !40
  %227 = trunc i64 %216 to i32
  %228 = sub i32 3, %227
  tail call fastcc void @expandrow2(ptr noundef %214, ptr noundef %223, i32 noundef %228) #14
  %229 = add nuw nsw i64 %216, 1
  %230 = icmp eq i64 %229, %179
  br i1 %230, label %231, label %215, !llvm.loop !67

231:                                              ; preds = %215, %212
  %232 = getelementptr inbounds float, ptr %214, i64 %177
  %233 = add nuw nsw i64 %213, 1
  %234 = icmp eq i64 %233, %178
  br i1 %234, label %235, label %212, !llvm.loop !68

235:                                              ; preds = %231, %209, %161, %122, %172, %180, %125, %94
  %236 = phi ptr [ %86, %94 ], [ %86, %125 ], [ %169, %180 ], [ %169, %172 ], [ %86, %122 ], [ %86, %161 ], [ %169, %209 ], [ %169, %231 ]
  %237 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %237(ptr noundef %51) #15
  %238 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %238(ptr noundef %53) #15
  br label %315

239:                                              ; preds = %45
  %240 = icmp eq i32 %20, 1
  br i1 %240, label %241, label %283

241:                                              ; preds = %239
  %242 = trunc i16 %34 to i8
  %243 = shl i8 %242, 3
  %244 = tail call ptr @IMB_allocImBuf(i32 noundef %29, i32 noundef %32, i8 noundef zeroext %243, i32 noundef 1) #15
  %245 = getelementptr inbounds %struct.ImBuf, ptr %244, i64 0, i32 4
  %246 = load i8, ptr %245, align 8, !tbaa !57
  %247 = icmp ugt i8 %246, 32
  br i1 %247, label %248, label %249

248:                                              ; preds = %241
  store i8 32, ptr %245, align 8, !tbaa !57
  br label %249

249:                                              ; preds = %248, %241
  %250 = getelementptr inbounds %struct.ImBuf, ptr %244, i64 0, i32 8
  %251 = load ptr, ptr %250, align 8, !tbaa !58
  %252 = getelementptr inbounds %struct.ImBuf, ptr %244, i64 0, i32 16
  %253 = load ptr, ptr %252, align 8, !tbaa !61
  store i32 512, ptr @file_offset, align 4, !tbaa !40
  %254 = icmp eq i16 %34, 0
  br i1 %254, label %437, label %255

255:                                              ; preds = %249
  %256 = load ptr, ptr @file_data, align 8, !tbaa !38
  %257 = getelementptr inbounds i8, ptr %256, i64 512
  %258 = icmp eq i16 %31, 0
  %259 = zext i16 %28 to i64
  br label %260

260:                                              ; preds = %255, %278
  %261 = phi ptr [ null, %255 ], [ %280, %278 ]
  %262 = phi i32 [ 0, %255 ], [ %281, %278 ]
  %263 = phi ptr [ %257, %255 ], [ %279, %278 ]
  %264 = icmp ult i32 %262, 4
  %265 = icmp ult i32 %262, 8
  %266 = select i1 %265, ptr %253, ptr %261
  %267 = select i1 %264, ptr %251, ptr %266
  br i1 %258, label %278, label %268

268:                                              ; preds = %260
  %269 = sub nsw i32 3, %262
  br label %270

270:                                              ; preds = %268, %270
  %271 = phi ptr [ %267, %268 ], [ %275, %270 ]
  %272 = phi i32 [ 0, %268 ], [ %276, %270 ]
  %273 = phi ptr [ %263, %268 ], [ %274, %270 ]
  tail call fastcc void @interleaverow(ptr noundef %271, ptr noundef %273, i32 noundef %269, i32 noundef %29) #14
  %274 = getelementptr inbounds i8, ptr %273, i64 %259
  %275 = getelementptr inbounds i32, ptr %271, i64 %259
  %276 = add nuw nsw i32 %272, 1
  %277 = icmp eq i32 %276, %32
  br i1 %277, label %278, label %270, !llvm.loop !69

278:                                              ; preds = %270, %260
  %279 = phi ptr [ %263, %260 ], [ %274, %270 ]
  %280 = phi ptr [ %267, %260 ], [ %275, %270 ]
  %281 = add nuw nsw i32 %262, 1
  %282 = icmp eq i32 %281, %35
  br i1 %282, label %315, label %260, !llvm.loop !70

283:                                              ; preds = %239
  %284 = and i32 %2, 1
  %285 = or disjoint i32 %284, 32
  %286 = tail call ptr @IMB_allocImBuf(i32 noundef %29, i32 noundef %32, i8 noundef zeroext 32, i32 noundef %285) #15
  %287 = getelementptr inbounds %struct.ImBuf, ptr %286, i64 0, i32 9
  %288 = load ptr, ptr %287, align 8, !tbaa !64
  store i32 512, ptr @file_offset, align 4, !tbaa !40
  %289 = icmp eq i16 %34, 0
  br i1 %289, label %432, label %290

290:                                              ; preds = %283
  %291 = load ptr, ptr @file_data, align 8, !tbaa !38
  %292 = getelementptr inbounds i8, ptr %291, i64 512
  %293 = icmp eq i16 %31, 0
  %294 = shl nuw nsw i32 %29, 1
  %295 = zext nneg i32 %294 to i64
  %296 = shl nuw nsw i32 %29, 2
  %297 = zext nneg i32 %296 to i64
  br label %298

298:                                              ; preds = %290, %311
  %299 = phi i32 [ 0, %290 ], [ %313, %311 ]
  %300 = phi ptr [ %292, %290 ], [ %312, %311 ]
  br i1 %293, label %311, label %301

301:                                              ; preds = %298
  %302 = sub nsw i32 3, %299
  br label %303

303:                                              ; preds = %301, %303
  %304 = phi ptr [ %288, %301 ], [ %308, %303 ]
  %305 = phi i32 [ 0, %301 ], [ %309, %303 ]
  %306 = phi ptr [ %300, %301 ], [ %307, %303 ]
  tail call fastcc void @interleaverow2(ptr noundef %304, ptr noundef %306, i32 noundef %302, i32 noundef %29) #14
  %307 = getelementptr inbounds i8, ptr %306, i64 %295
  %308 = getelementptr inbounds float, ptr %304, i64 %297
  %309 = add nuw nsw i32 %305, 1
  %310 = icmp eq i32 %309, %32
  br i1 %310, label %311, label %303, !llvm.loop !71

311:                                              ; preds = %303, %298
  %312 = phi ptr [ %300, %298 ], [ %307, %303 ]
  %313 = add nuw nsw i32 %299, 1
  %314 = icmp eq i32 %313, %35
  br i1 %314, label %315, label %298, !llvm.loop !72

315:                                              ; preds = %311, %278, %235
  %316 = phi ptr [ %236, %235 ], [ %244, %278 ], [ %286, %311 ]
  %317 = icmp eq i32 %20, 1
  br i1 %317, label %318, label %376

318:                                              ; preds = %315
  switch i16 %34, label %437 [
    i16 1, label %319
    i16 2, label %339
    i16 3, label %360
  ]

319:                                              ; preds = %318
  %320 = getelementptr inbounds %struct.ImBuf, ptr %316, i64 0, i32 2
  %321 = load i32, ptr %320, align 8, !tbaa !73
  %322 = getelementptr inbounds %struct.ImBuf, ptr %316, i64 0, i32 3
  %323 = load i32, ptr %322, align 4, !tbaa !74
  %324 = mul nsw i32 %323, %321
  %325 = icmp sgt i32 %324, 0
  br i1 %325, label %326, label %437

326:                                              ; preds = %319
  %327 = getelementptr inbounds %struct.ImBuf, ptr %316, i64 0, i32 8
  %328 = load ptr, ptr %327, align 8, !tbaa !58
  br label %329

329:                                              ; preds = %326, %329
  %330 = phi ptr [ %336, %329 ], [ %328, %326 ]
  %331 = phi i32 [ %337, %329 ], [ %324, %326 ]
  store i8 -1, ptr %330, align 1, !tbaa !34
  %332 = getelementptr inbounds i8, ptr %330, i64 3
  %333 = load i8, ptr %332, align 1, !tbaa !34
  %334 = getelementptr inbounds i8, ptr %330, i64 2
  store i8 %333, ptr %334, align 1, !tbaa !34
  %335 = getelementptr inbounds i8, ptr %330, i64 1
  store i8 %333, ptr %335, align 1, !tbaa !34
  %336 = getelementptr inbounds i8, ptr %330, i64 4
  %337 = add nsw i32 %331, -1
  %338 = icmp ugt i32 %331, 1
  br i1 %338, label %329, label %437, !llvm.loop !75

339:                                              ; preds = %318
  %340 = getelementptr inbounds %struct.ImBuf, ptr %316, i64 0, i32 2
  %341 = load i32, ptr %340, align 8, !tbaa !73
  %342 = getelementptr inbounds %struct.ImBuf, ptr %316, i64 0, i32 3
  %343 = load i32, ptr %342, align 4, !tbaa !74
  %344 = mul nsw i32 %343, %341
  %345 = icmp sgt i32 %344, 0
  br i1 %345, label %346, label %437

346:                                              ; preds = %339
  %347 = getelementptr inbounds %struct.ImBuf, ptr %316, i64 0, i32 8
  %348 = load ptr, ptr %347, align 8, !tbaa !58
  br label %349

349:                                              ; preds = %346, %349
  %350 = phi ptr [ %357, %349 ], [ %348, %346 ]
  %351 = phi i32 [ %358, %349 ], [ %344, %346 ]
  %352 = getelementptr inbounds i8, ptr %350, i64 2
  %353 = load i8, ptr %352, align 1, !tbaa !34
  store i8 %353, ptr %350, align 1, !tbaa !34
  %354 = getelementptr inbounds i8, ptr %350, i64 3
  %355 = load i8, ptr %354, align 1, !tbaa !34
  store i8 %355, ptr %352, align 1, !tbaa !34
  %356 = getelementptr inbounds i8, ptr %350, i64 1
  store i8 %355, ptr %356, align 1, !tbaa !34
  %357 = getelementptr inbounds i8, ptr %350, i64 4
  %358 = add nsw i32 %351, -1
  %359 = icmp ugt i32 %351, 1
  br i1 %359, label %349, label %437, !llvm.loop !76

360:                                              ; preds = %318
  %361 = getelementptr inbounds %struct.ImBuf, ptr %316, i64 0, i32 2
  %362 = load i32, ptr %361, align 8, !tbaa !73
  %363 = getelementptr inbounds %struct.ImBuf, ptr %316, i64 0, i32 3
  %364 = load i32, ptr %363, align 4, !tbaa !74
  %365 = mul nsw i32 %364, %362
  %366 = icmp sgt i32 %365, 0
  br i1 %366, label %367, label %437

367:                                              ; preds = %360
  %368 = getelementptr inbounds %struct.ImBuf, ptr %316, i64 0, i32 8
  %369 = load ptr, ptr %368, align 8, !tbaa !58
  br label %370

370:                                              ; preds = %367, %370
  %371 = phi ptr [ %373, %370 ], [ %369, %367 ]
  %372 = phi i32 [ %374, %370 ], [ %365, %367 ]
  store i8 -1, ptr %371, align 1, !tbaa !34
  %373 = getelementptr inbounds i8, ptr %371, i64 4
  %374 = add nsw i32 %372, -1
  %375 = icmp ugt i32 %372, 1
  br i1 %375, label %370, label %437, !llvm.loop !77

376:                                              ; preds = %315
  switch i16 %34, label %432 [
    i16 1, label %377
    i16 2, label %397
    i16 3, label %416
  ]

377:                                              ; preds = %376
  %378 = getelementptr inbounds %struct.ImBuf, ptr %316, i64 0, i32 2
  %379 = load i32, ptr %378, align 8, !tbaa !73
  %380 = getelementptr inbounds %struct.ImBuf, ptr %316, i64 0, i32 3
  %381 = load i32, ptr %380, align 4, !tbaa !74
  %382 = mul nsw i32 %381, %379
  %383 = icmp sgt i32 %382, 0
  br i1 %383, label %384, label %432

384:                                              ; preds = %377
  %385 = getelementptr inbounds %struct.ImBuf, ptr %316, i64 0, i32 9
  %386 = load ptr, ptr %385, align 8, !tbaa !64
  br label %387

387:                                              ; preds = %384, %387
  %388 = phi ptr [ %394, %387 ], [ %386, %384 ]
  %389 = phi i32 [ %395, %387 ], [ %382, %384 ]
  store float 1.000000e+00, ptr %388, align 4, !tbaa !78
  %390 = getelementptr inbounds float, ptr %388, i64 3
  %391 = load float, ptr %390, align 4, !tbaa !78
  %392 = getelementptr inbounds float, ptr %388, i64 2
  store float %391, ptr %392, align 4, !tbaa !78
  %393 = getelementptr inbounds float, ptr %388, i64 1
  store float %391, ptr %393, align 4, !tbaa !78
  %394 = getelementptr inbounds float, ptr %388, i64 4
  %395 = add nsw i32 %389, -1
  %396 = icmp ugt i32 %389, 1
  br i1 %396, label %387, label %432, !llvm.loop !79

397:                                              ; preds = %376
  %398 = getelementptr inbounds %struct.ImBuf, ptr %316, i64 0, i32 2
  %399 = load i32, ptr %398, align 8, !tbaa !73
  %400 = getelementptr inbounds %struct.ImBuf, ptr %316, i64 0, i32 3
  %401 = load i32, ptr %400, align 4, !tbaa !74
  %402 = mul nsw i32 %401, %399
  %403 = icmp sgt i32 %402, 0
  br i1 %403, label %404, label %432

404:                                              ; preds = %397
  %405 = getelementptr inbounds %struct.ImBuf, ptr %316, i64 0, i32 9
  %406 = load ptr, ptr %405, align 8, !tbaa !64
  br label %407

407:                                              ; preds = %404, %407
  %408 = phi ptr [ %413, %407 ], [ %406, %404 ]
  %409 = phi i32 [ %414, %407 ], [ %402, %404 ]
  %410 = getelementptr inbounds float, ptr %408, i64 2
  %411 = load <2 x float>, ptr %410, align 4, !tbaa !78
  %412 = extractelement <2 x float> %411, i64 1
  store float %412, ptr %410, align 4, !tbaa !78
  store <2 x float> %411, ptr %408, align 4, !tbaa !78
  %413 = getelementptr inbounds float, ptr %408, i64 4
  %414 = add nsw i32 %409, -1
  %415 = icmp ugt i32 %409, 1
  br i1 %415, label %407, label %432, !llvm.loop !80

416:                                              ; preds = %376
  %417 = getelementptr inbounds %struct.ImBuf, ptr %316, i64 0, i32 2
  %418 = load i32, ptr %417, align 8, !tbaa !73
  %419 = getelementptr inbounds %struct.ImBuf, ptr %316, i64 0, i32 3
  %420 = load i32, ptr %419, align 4, !tbaa !74
  %421 = mul nsw i32 %420, %418
  %422 = icmp sgt i32 %421, 0
  br i1 %422, label %423, label %432

423:                                              ; preds = %416
  %424 = getelementptr inbounds %struct.ImBuf, ptr %316, i64 0, i32 9
  %425 = load ptr, ptr %424, align 8, !tbaa !64
  br label %426

426:                                              ; preds = %423, %426
  %427 = phi ptr [ %429, %426 ], [ %425, %423 ]
  %428 = phi i32 [ %430, %426 ], [ %421, %423 ]
  store float 1.000000e+00, ptr %427, align 4, !tbaa !78
  %429 = getelementptr inbounds float, ptr %427, i64 4
  %430 = add nsw i32 %428, -1
  %431 = icmp ugt i32 %428, 1
  br i1 %431, label %426, label %432, !llvm.loop !81

432:                                              ; preds = %426, %407, %387, %283, %416, %397, %377, %376
  %433 = phi ptr [ %316, %416 ], [ %316, %397 ], [ %316, %377 ], [ %316, %376 ], [ %286, %283 ], [ %316, %387 ], [ %316, %407 ], [ %316, %426 ]
  %434 = and i32 %2, 1
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %437, label %436

436:                                              ; preds = %432
  tail call void @IMB_rect_from_float(ptr noundef %433) #15
  br label %437

437:                                              ; preds = %370, %349, %329, %249, %360, %339, %319, %318, %432, %436
  %438 = phi ptr [ %316, %360 ], [ %316, %339 ], [ %316, %319 ], [ %316, %318 ], [ %433, %432 ], [ %433, %436 ], [ %244, %249 ], [ %316, %329 ], [ %316, %349 ], [ %316, %370 ]
  %439 = getelementptr inbounds %struct.ImBuf, ptr %438, i64 0, i32 26
  store i32 474, ptr %439, align 8, !tbaa !49
  tail call fastcc void @test_endian_zbuf(ptr noundef %438) #14
  %440 = getelementptr inbounds %struct.ImBuf, ptr %438, i64 0, i32 8
  %441 = load ptr, ptr %440, align 8, !tbaa !58
  %442 = icmp eq ptr %441, null
  br i1 %442, label %444, label %443

443:                                              ; preds = %437
  tail call void @IMB_convert_rgba_to_abgr(ptr noundef nonnull %438) #15
  br label %444

444:                                              ; preds = %437, %443, %38, %43, %4, %23, %11
  %445 = phi ptr [ null, %11 ], [ null, %23 ], [ null, %4 ], [ %41, %43 ], [ null, %38 ], [ %438, %443 ], [ %438, %437 ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %5) #13
  ret ptr %445
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @colorspace_set_default_role(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @readheader(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !82 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, i8 0, i64 176, i1 false)
  %2 = tail call fastcc zeroext i16 @getshort() #14
  store i16 %2, ptr %0, align 8, !tbaa !42
  %3 = tail call fastcc zeroext i16 @getshort() #14
  %4 = getelementptr inbounds %struct.IMAGE, ptr %0, i64 0, i32 1
  store i16 %3, ptr %4, align 2, !tbaa !45
  %5 = tail call fastcc zeroext i16 @getshort() #14
  %6 = getelementptr inbounds %struct.IMAGE, ptr %0, i64 0, i32 2
  store i16 %5, ptr %6, align 4, !tbaa !83
  %7 = tail call fastcc zeroext i16 @getshort() #14
  %8 = getelementptr inbounds %struct.IMAGE, ptr %0, i64 0, i32 3
  store i16 %7, ptr %8, align 2, !tbaa !46
  %9 = tail call fastcc zeroext i16 @getshort() #14
  %10 = getelementptr inbounds %struct.IMAGE, ptr %0, i64 0, i32 4
  store i16 %9, ptr %10, align 8, !tbaa !47
  %11 = tail call fastcc zeroext i16 @getshort() #14
  %12 = getelementptr inbounds %struct.IMAGE, ptr %0, i64 0, i32 5
  store i16 %11, ptr %12, align 2, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @readtab(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !84 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %9, %4 ], [ %1, %2 ]
  %6 = phi ptr [ %8, %4 ], [ %0, %2 ]
  %7 = tail call fastcc i32 @getlong() #14
  %8 = getelementptr inbounds i32, ptr %6, i64 1
  store i32 %7, ptr %6, align 4, !tbaa !40
  %9 = add nsw i32 %5, -4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %4, !llvm.loop !85

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @expandrow(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #5 !PGOFuncName !86 {
  %4 = load i8, ptr %1, align 1, !tbaa !34
  %5 = and i8 %4, 127
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  br label %11

10:                                               ; preds = %93, %3
  ret void

11:                                               ; preds = %7, %93
  %12 = phi i8 [ %97, %93 ], [ %5, %7 ]
  %13 = phi i8 [ %96, %93 ], [ %4, %7 ]
  %14 = phi ptr [ %95, %93 ], [ %9, %7 ]
  %15 = phi ptr [ %94, %93 ], [ %1, %7 ]
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  %17 = icmp sgt i8 %13, -1
  br i1 %17, label %65, label %18

18:                                               ; preds = %11
  %19 = icmp ugt i8 %12, 7
  br i1 %19, label %26, label %22

20:                                               ; preds = %26
  %21 = icmp eq i8 %54, 0
  br i1 %21, label %93, label %22

22:                                               ; preds = %18, %20
  %23 = phi i8 [ %12, %18 ], [ %54, %20 ]
  %24 = phi ptr [ %14, %18 ], [ %52, %20 ]
  %25 = phi ptr [ %16, %18 ], [ %53, %20 ]
  br label %56

26:                                               ; preds = %18, %26
  %27 = phi i8 [ %54, %26 ], [ %12, %18 ]
  %28 = phi ptr [ %52, %26 ], [ %14, %18 ]
  %29 = phi ptr [ %53, %26 ], [ %16, %18 ]
  %30 = load i8, ptr %29, align 1, !tbaa !34
  store i8 %30, ptr %28, align 1, !tbaa !34
  %31 = getelementptr inbounds i8, ptr %29, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !34
  %33 = getelementptr inbounds i8, ptr %28, i64 4
  store i8 %32, ptr %33, align 1, !tbaa !34
  %34 = getelementptr inbounds i8, ptr %29, i64 2
  %35 = load i8, ptr %34, align 1, !tbaa !34
  %36 = getelementptr inbounds i8, ptr %28, i64 8
  store i8 %35, ptr %36, align 1, !tbaa !34
  %37 = getelementptr inbounds i8, ptr %29, i64 3
  %38 = load i8, ptr %37, align 1, !tbaa !34
  %39 = getelementptr inbounds i8, ptr %28, i64 12
  store i8 %38, ptr %39, align 1, !tbaa !34
  %40 = getelementptr inbounds i8, ptr %29, i64 4
  %41 = load i8, ptr %40, align 1, !tbaa !34
  %42 = getelementptr inbounds i8, ptr %28, i64 16
  store i8 %41, ptr %42, align 1, !tbaa !34
  %43 = getelementptr inbounds i8, ptr %29, i64 5
  %44 = load i8, ptr %43, align 1, !tbaa !34
  %45 = getelementptr inbounds i8, ptr %28, i64 20
  store i8 %44, ptr %45, align 1, !tbaa !34
  %46 = getelementptr inbounds i8, ptr %29, i64 6
  %47 = load i8, ptr %46, align 1, !tbaa !34
  %48 = getelementptr inbounds i8, ptr %28, i64 24
  store i8 %47, ptr %48, align 1, !tbaa !34
  %49 = getelementptr inbounds i8, ptr %29, i64 7
  %50 = load i8, ptr %49, align 1, !tbaa !34
  %51 = getelementptr inbounds i8, ptr %28, i64 28
  store i8 %50, ptr %51, align 1, !tbaa !34
  %52 = getelementptr inbounds i8, ptr %28, i64 32
  %53 = getelementptr inbounds i8, ptr %29, i64 8
  %54 = add i8 %27, -8
  %55 = icmp ugt i8 %54, 7
  br i1 %55, label %26, label %20, !llvm.loop !87

56:                                               ; preds = %22, %56
  %57 = phi i8 [ %60, %56 ], [ %23, %22 ]
  %58 = phi ptr [ %63, %56 ], [ %24, %22 ]
  %59 = phi ptr [ %61, %56 ], [ %25, %22 ]
  %60 = add i8 %57, -1
  %61 = getelementptr inbounds i8, ptr %59, i64 1
  %62 = load i8, ptr %59, align 1, !tbaa !34
  store i8 %62, ptr %58, align 1, !tbaa !34
  %63 = getelementptr inbounds i8, ptr %58, i64 4
  %64 = icmp eq i8 %60, 0
  br i1 %64, label %93, label %56, !llvm.loop !88

65:                                               ; preds = %11
  %66 = getelementptr inbounds i8, ptr %15, i64 2
  %67 = load i8, ptr %16, align 1, !tbaa !34
  %68 = icmp ugt i8 %12, 7
  br i1 %68, label %74, label %71

69:                                               ; preds = %74
  %70 = icmp eq i8 %85, 0
  br i1 %70, label %93, label %71

71:                                               ; preds = %65, %69
  %72 = phi i8 [ %12, %65 ], [ %85, %69 ]
  %73 = phi ptr [ %14, %65 ], [ %84, %69 ]
  br label %87

74:                                               ; preds = %65, %74
  %75 = phi i8 [ %85, %74 ], [ %12, %65 ]
  %76 = phi ptr [ %84, %74 ], [ %14, %65 ]
  store i8 %67, ptr %76, align 1, !tbaa !34
  %77 = getelementptr inbounds i8, ptr %76, i64 4
  store i8 %67, ptr %77, align 1, !tbaa !34
  %78 = getelementptr inbounds i8, ptr %76, i64 8
  store i8 %67, ptr %78, align 1, !tbaa !34
  %79 = getelementptr inbounds i8, ptr %76, i64 12
  store i8 %67, ptr %79, align 1, !tbaa !34
  %80 = getelementptr inbounds i8, ptr %76, i64 16
  store i8 %67, ptr %80, align 1, !tbaa !34
  %81 = getelementptr inbounds i8, ptr %76, i64 20
  store i8 %67, ptr %81, align 1, !tbaa !34
  %82 = getelementptr inbounds i8, ptr %76, i64 24
  store i8 %67, ptr %82, align 1, !tbaa !34
  %83 = getelementptr inbounds i8, ptr %76, i64 28
  store i8 %67, ptr %83, align 1, !tbaa !34
  %84 = getelementptr inbounds i8, ptr %76, i64 32
  %85 = add i8 %75, -8
  %86 = icmp ugt i8 %85, 7
  br i1 %86, label %74, label %69, !llvm.loop !89

87:                                               ; preds = %71, %87
  %88 = phi i8 [ %90, %87 ], [ %72, %71 ]
  %89 = phi ptr [ %91, %87 ], [ %73, %71 ]
  %90 = add i8 %88, -1
  store i8 %67, ptr %89, align 1, !tbaa !34
  %91 = getelementptr inbounds i8, ptr %89, i64 4
  %92 = icmp eq i8 %90, 0
  br i1 %92, label %93, label %87, !llvm.loop !90

93:                                               ; preds = %56, %87, %20, %69
  %94 = phi ptr [ %66, %69 ], [ %53, %20 ], [ %66, %87 ], [ %61, %56 ]
  %95 = phi ptr [ %84, %69 ], [ %52, %20 ], [ %91, %87 ], [ %63, %56 ]
  %96 = load i8, ptr %94, align 1, !tbaa !34
  %97 = and i8 %96, 127
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %10, label %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @expandrow2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #5 !PGOFuncName !91 {
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = and i8 %5, 127
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds float, ptr %0, i64 %9
  br label %12

11:                                               ; preds = %175, %3
  ret void

12:                                               ; preds = %8, %175
  %13 = phi i8 [ %180, %175 ], [ %6, %8 ]
  %14 = phi i8 [ %179, %175 ], [ %5, %8 ]
  %15 = phi ptr [ %177, %175 ], [ %10, %8 ]
  %16 = phi ptr [ %176, %175 ], [ %1, %8 ]
  %17 = getelementptr inbounds i8, ptr %16, i64 2
  %18 = zext nneg i8 %13 to i16
  %19 = icmp sgt i8 %14, -1
  br i1 %19, label %139, label %20

20:                                               ; preds = %12
  %21 = icmp ugt i8 %13, 7
  br i1 %21, label %28, label %24

22:                                               ; preds = %28
  %23 = icmp eq i16 %120, 0
  br i1 %23, label %175, label %24

24:                                               ; preds = %20, %22
  %25 = phi ptr [ %15, %20 ], [ %118, %22 ]
  %26 = phi i16 [ %18, %20 ], [ %120, %22 ]
  %27 = phi ptr [ %17, %20 ], [ %119, %22 ]
  br label %122

28:                                               ; preds = %20, %28
  %29 = phi ptr [ %118, %28 ], [ %15, %20 ]
  %30 = phi i16 [ %120, %28 ], [ %18, %20 ]
  %31 = phi ptr [ %119, %28 ], [ %17, %20 ]
  %32 = load i8, ptr %31, align 1, !tbaa !34
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !34
  %37 = zext i8 %36 to i32
  %38 = or disjoint i32 %34, %37
  %39 = sitofp i32 %38 to float
  %40 = fdiv float %39, 6.553500e+04
  store float %40, ptr %29, align 4, !tbaa !78
  %41 = getelementptr inbounds i8, ptr %31, i64 2
  %42 = load i8, ptr %41, align 1, !tbaa !34
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 8
  %45 = getelementptr inbounds i8, ptr %31, i64 3
  %46 = load i8, ptr %45, align 1, !tbaa !34
  %47 = zext i8 %46 to i32
  %48 = or disjoint i32 %44, %47
  %49 = sitofp i32 %48 to float
  %50 = fdiv float %49, 6.553500e+04
  %51 = getelementptr inbounds float, ptr %29, i64 4
  store float %50, ptr %51, align 4, !tbaa !78
  %52 = getelementptr inbounds i8, ptr %31, i64 4
  %53 = load i8, ptr %52, align 1, !tbaa !34
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 8
  %56 = getelementptr inbounds i8, ptr %31, i64 5
  %57 = load i8, ptr %56, align 1, !tbaa !34
  %58 = zext i8 %57 to i32
  %59 = or disjoint i32 %55, %58
  %60 = sitofp i32 %59 to float
  %61 = fdiv float %60, 6.553500e+04
  %62 = getelementptr inbounds float, ptr %29, i64 8
  store float %61, ptr %62, align 4, !tbaa !78
  %63 = getelementptr inbounds i8, ptr %31, i64 6
  %64 = load i8, ptr %63, align 1, !tbaa !34
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 8
  %67 = getelementptr inbounds i8, ptr %31, i64 7
  %68 = load i8, ptr %67, align 1, !tbaa !34
  %69 = zext i8 %68 to i32
  %70 = or disjoint i32 %66, %69
  %71 = sitofp i32 %70 to float
  %72 = fdiv float %71, 6.553500e+04
  %73 = getelementptr inbounds float, ptr %29, i64 12
  store float %72, ptr %73, align 4, !tbaa !78
  %74 = getelementptr inbounds i8, ptr %31, i64 8
  %75 = load i8, ptr %74, align 1, !tbaa !34
  %76 = zext i8 %75 to i32
  %77 = shl nuw nsw i32 %76, 8
  %78 = getelementptr inbounds i8, ptr %31, i64 9
  %79 = load i8, ptr %78, align 1, !tbaa !34
  %80 = zext i8 %79 to i32
  %81 = or disjoint i32 %77, %80
  %82 = sitofp i32 %81 to float
  %83 = fdiv float %82, 6.553500e+04
  %84 = getelementptr inbounds float, ptr %29, i64 16
  store float %83, ptr %84, align 4, !tbaa !78
  %85 = getelementptr inbounds i8, ptr %31, i64 10
  %86 = load i8, ptr %85, align 1, !tbaa !34
  %87 = zext i8 %86 to i32
  %88 = shl nuw nsw i32 %87, 8
  %89 = getelementptr inbounds i8, ptr %31, i64 11
  %90 = load i8, ptr %89, align 1, !tbaa !34
  %91 = zext i8 %90 to i32
  %92 = or disjoint i32 %88, %91
  %93 = sitofp i32 %92 to float
  %94 = fdiv float %93, 6.553500e+04
  %95 = getelementptr inbounds float, ptr %29, i64 20
  store float %94, ptr %95, align 4, !tbaa !78
  %96 = getelementptr inbounds i8, ptr %31, i64 12
  %97 = load i8, ptr %96, align 1, !tbaa !34
  %98 = zext i8 %97 to i32
  %99 = shl nuw nsw i32 %98, 8
  %100 = getelementptr inbounds i8, ptr %31, i64 13
  %101 = load i8, ptr %100, align 1, !tbaa !34
  %102 = zext i8 %101 to i32
  %103 = or disjoint i32 %99, %102
  %104 = sitofp i32 %103 to float
  %105 = fdiv float %104, 6.553500e+04
  %106 = getelementptr inbounds float, ptr %29, i64 24
  store float %105, ptr %106, align 4, !tbaa !78
  %107 = getelementptr inbounds i8, ptr %31, i64 14
  %108 = load i8, ptr %107, align 1, !tbaa !34
  %109 = zext i8 %108 to i32
  %110 = shl nuw nsw i32 %109, 8
  %111 = getelementptr inbounds i8, ptr %31, i64 15
  %112 = load i8, ptr %111, align 1, !tbaa !34
  %113 = zext i8 %112 to i32
  %114 = or disjoint i32 %110, %113
  %115 = sitofp i32 %114 to float
  %116 = fdiv float %115, 6.553500e+04
  %117 = getelementptr inbounds float, ptr %29, i64 28
  store float %116, ptr %117, align 4, !tbaa !78
  %118 = getelementptr inbounds float, ptr %29, i64 32
  %119 = getelementptr inbounds i8, ptr %31, i64 16
  %120 = add i16 %30, -8
  %121 = icmp ugt i16 %120, 7
  br i1 %121, label %28, label %22, !llvm.loop !92

122:                                              ; preds = %24, %122
  %123 = phi ptr [ %137, %122 ], [ %25, %24 ]
  %124 = phi i16 [ %126, %122 ], [ %26, %24 ]
  %125 = phi ptr [ %136, %122 ], [ %27, %24 ]
  %126 = add i16 %124, -1
  %127 = load i8, ptr %125, align 1, !tbaa !34
  %128 = zext i8 %127 to i32
  %129 = shl nuw nsw i32 %128, 8
  %130 = getelementptr inbounds i8, ptr %125, i64 1
  %131 = load i8, ptr %130, align 1, !tbaa !34
  %132 = zext i8 %131 to i32
  %133 = or disjoint i32 %129, %132
  %134 = sitofp i32 %133 to float
  %135 = fdiv float %134, 6.553500e+04
  store float %135, ptr %123, align 4, !tbaa !78
  %136 = getelementptr inbounds i8, ptr %125, i64 2
  %137 = getelementptr inbounds float, ptr %123, i64 4
  %138 = icmp eq i16 %126, 0
  br i1 %138, label %175, label %122, !llvm.loop !93

139:                                              ; preds = %12
  %140 = load i8, ptr %17, align 1, !tbaa !34
  %141 = zext i8 %140 to i32
  %142 = shl nuw nsw i32 %141, 8
  %143 = getelementptr inbounds i8, ptr %16, i64 3
  %144 = load i8, ptr %143, align 1, !tbaa !34
  %145 = zext i8 %144 to i32
  %146 = or disjoint i32 %142, %145
  %147 = sitofp i32 %146 to float
  %148 = fdiv float %147, 6.553500e+04
  %149 = getelementptr inbounds i8, ptr %16, i64 4
  %150 = icmp ugt i8 %13, 7
  br i1 %150, label %156, label %153

151:                                              ; preds = %156
  %152 = icmp eq i16 %167, 0
  br i1 %152, label %175, label %153

153:                                              ; preds = %139, %151
  %154 = phi ptr [ %15, %139 ], [ %166, %151 ]
  %155 = phi i16 [ %18, %139 ], [ %167, %151 ]
  br label %169

156:                                              ; preds = %139, %156
  %157 = phi ptr [ %166, %156 ], [ %15, %139 ]
  %158 = phi i16 [ %167, %156 ], [ %18, %139 ]
  store float %148, ptr %157, align 4, !tbaa !78
  %159 = getelementptr inbounds float, ptr %157, i64 4
  store float %148, ptr %159, align 4, !tbaa !78
  %160 = getelementptr inbounds float, ptr %157, i64 8
  store float %148, ptr %160, align 4, !tbaa !78
  %161 = getelementptr inbounds float, ptr %157, i64 12
  store float %148, ptr %161, align 4, !tbaa !78
  %162 = getelementptr inbounds float, ptr %157, i64 16
  store float %148, ptr %162, align 4, !tbaa !78
  %163 = getelementptr inbounds float, ptr %157, i64 20
  store float %148, ptr %163, align 4, !tbaa !78
  %164 = getelementptr inbounds float, ptr %157, i64 24
  store float %148, ptr %164, align 4, !tbaa !78
  %165 = getelementptr inbounds float, ptr %157, i64 28
  store float %148, ptr %165, align 4, !tbaa !78
  %166 = getelementptr inbounds float, ptr %157, i64 32
  %167 = add i16 %158, -8
  %168 = icmp ugt i16 %167, 7
  br i1 %168, label %156, label %151, !llvm.loop !94

169:                                              ; preds = %153, %169
  %170 = phi ptr [ %173, %169 ], [ %154, %153 ]
  %171 = phi i16 [ %172, %169 ], [ %155, %153 ]
  %172 = add i16 %171, -1
  store float %148, ptr %170, align 4, !tbaa !78
  %173 = getelementptr inbounds float, ptr %170, i64 4
  %174 = icmp eq i16 %172, 0
  br i1 %174, label %175, label %169, !llvm.loop !95

175:                                              ; preds = %122, %169, %22, %151
  %176 = phi ptr [ %149, %151 ], [ %119, %22 ], [ %149, %169 ], [ %136, %122 ]
  %177 = phi ptr [ %166, %151 ], [ %118, %22 ], [ %173, %169 ], [ %137, %122 ]
  %178 = getelementptr inbounds i8, ptr %176, i64 1
  %179 = load i8, ptr %178, align 1, !tbaa !34
  %180 = and i8 %179, 127
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %11, label %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @interleaverow(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 !PGOFuncName !96 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i32 [ %13, %9 ], [ %3, %6 ]
  %11 = phi ptr [ %16, %9 ], [ %8, %6 ]
  %12 = phi ptr [ %14, %9 ], [ %1, %6 ]
  %13 = add nsw i32 %10, -1
  %14 = getelementptr inbounds i8, ptr %12, i64 1
  %15 = load i8, ptr %12, align 1, !tbaa !34
  store i8 %15, ptr %11, align 1, !tbaa !34
  %16 = getelementptr inbounds i8, ptr %11, i64 4
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %18, label %9, !llvm.loop !97

18:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @interleaverow2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 !PGOFuncName !98 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %4
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds float, ptr %0, i64 %7
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i32 [ %13, %9 ], [ %3, %6 ]
  %11 = phi ptr [ %24, %9 ], [ %8, %6 ]
  %12 = phi ptr [ %23, %9 ], [ %1, %6 ]
  %13 = add nsw i32 %10, -1
  %14 = load i8, ptr %12, align 1, !tbaa !34
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = getelementptr inbounds i8, ptr %12, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !34
  %19 = zext i8 %18 to i32
  %20 = or disjoint i32 %16, %19
  %21 = sitofp i32 %20 to float
  %22 = fdiv float %21, 6.553500e+04
  store float %22, ptr %11, align 4, !tbaa !78
  %23 = getelementptr inbounds i8, ptr %12, i64 2
  %24 = getelementptr inbounds float, ptr %11, i64 4
  %25 = icmp eq i32 %13, 0
  br i1 %25, label %26, label %9, !llvm.loop !99

26:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @test_endian_zbuf(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !100 {
  %2 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !73
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !74
  %10 = mul nsw i32 %9, %7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %18, %12 ], [ %3, %5 ]
  %14 = phi i32 [ %15, %12 ], [ %10, %5 ]
  %15 = add nsw i32 %14, -1
  %16 = load i32, ptr %13, align 4, !tbaa !40
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  store i32 %17, ptr %13, align 4, !tbaa !40
  %18 = getelementptr inbounds i32, ptr %13, i64 1
  %19 = icmp eq i32 %15, 0
  br i1 %19, label %20, label %12, !llvm.loop !101

20:                                               ; preds = %12, %5, %1
  ret void
}

; Function Attrs: optsize
declare void @IMB_convert_rgba_to_abgr(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @imb_saveiris(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 4
  %5 = load i8, ptr %4, align 8, !tbaa !57
  %6 = zext i8 %5 to i16
  %7 = add nuw nsw i16 %6, 7
  %8 = lshr i16 %7, 3
  %9 = and i32 %2, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 16
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, i16 %8, i16 8
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi i16 [ %8, %3 ], [ %15, %11 ]
  tail call void @IMB_convert_rgba_to_abgr(ptr noundef nonnull %0) #15
  tail call fastcc void @test_endian_zbuf(ptr noundef nonnull %0) #14
  %18 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  %20 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !73
  %22 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !74
  %24 = zext nneg i16 %17 to i32
  %25 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 16
  %26 = load ptr, ptr %25, align 8, !tbaa !61
  %27 = tail call fastcc i32 @output_iris(ptr noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %24, ptr noundef %1, ptr noundef %26) #14, !range !37
  tail call void @IMB_convert_rgba_to_abgr(ptr noundef nonnull %0) #15
  tail call fastcc void @test_endian_zbuf(ptr noundef nonnull %0) #14
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @output_iris(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 !PGOFuncName !102 {
  %7 = tail call ptr @BLI_fopen(ptr noundef %4, ptr noundef nonnull @.str.4) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %130, label %9

9:                                                ; preds = %6
  %10 = mul nsw i32 %3, %2
  %11 = shl i32 %10, 2
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !38
  %13 = tail call ptr %12(i64 noundef 176, ptr noundef nonnull @.str.5) #15
  %14 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !38
  %15 = sext i32 %11 to i64
  %16 = tail call ptr %14(i64 noundef %15, ptr noundef nonnull @.str.2) #15
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !38
  %18 = tail call ptr %17(i64 noundef %15, ptr noundef nonnull @.str.6) #15
  %19 = sitofp i32 %1 to double
  %20 = tail call double @llvm.fmuladd.f64(double %19, double 1.050000e+00, double 1.000000e+01)
  %21 = fptosi double %20 to i32
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !38
  %23 = sext i32 %21 to i64
  %24 = tail call ptr %22(i64 noundef %23, ptr noundef nonnull @.str.7) #15
  %25 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !38
  %26 = sext i32 %1 to i64
  %27 = shl nsw i64 %26, 2
  %28 = tail call ptr %25(i64 noundef %27, ptr noundef nonnull @.str.8) #15
  %29 = getelementptr inbounds i8, ptr %13, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %29, i8 0, i64 160, i1 false)
  store i16 474, ptr %13, align 8, !tbaa !42
  %30 = getelementptr inbounds %struct.IMAGE, ptr %13, i64 0, i32 1
  store i16 257, ptr %30, align 2, !tbaa !45
  %31 = icmp sgt i32 %3, 1
  %32 = select i1 %31, i16 3, i16 2
  %33 = getelementptr inbounds %struct.IMAGE, ptr %13, i64 0, i32 2
  store i16 %32, ptr %33, align 4
  %34 = trunc i32 %1 to i16
  %35 = getelementptr inbounds %struct.IMAGE, ptr %13, i64 0, i32 3
  store i16 %34, ptr %35, align 2, !tbaa !46
  %36 = trunc i32 %2 to i16
  %37 = getelementptr inbounds %struct.IMAGE, ptr %13, i64 0, i32 4
  store i16 %36, ptr %37, align 8, !tbaa !47
  %38 = trunc i32 %3 to i16
  %39 = getelementptr inbounds %struct.IMAGE, ptr %13, i64 0, i32 5
  store i16 %38, ptr %39, align 2, !tbaa !48
  %40 = getelementptr inbounds %struct.IMAGE, ptr %13, i64 0, i32 6
  store i32 0, ptr %40, align 4, !tbaa !103
  %41 = getelementptr inbounds %struct.IMAGE, ptr %13, i64 0, i32 7
  store i32 255, ptr %41, align 8, !tbaa !104
  %42 = tail call fastcc i32 @writeheader(ptr noundef nonnull %7, ptr noundef nonnull %13) #14
  %43 = shl i32 %10, 3
  %44 = add nsw i32 %43, 512
  %45 = sext i32 %44 to i64
  %46 = tail call i32 @fseek(ptr noundef nonnull %7, i64 noundef %45, i32 noundef 0) #14
  %47 = icmp sgt i32 %2, 0
  br i1 %47, label %48, label %113

48:                                               ; preds = %9
  %49 = icmp sgt i32 %3, 0
  %50 = icmp eq i32 %3, 1
  %51 = zext nneg i32 %2 to i64
  %52 = zext nneg i32 %2 to i64
  %53 = zext nneg i32 %3 to i64
  br label %54

54:                                               ; preds = %48, %103
  %55 = phi i64 [ 0, %48 ], [ %111, %103 ]
  %56 = phi i32 [ %42, %48 ], [ %106, %103 ]
  %57 = phi ptr [ %0, %48 ], [ %107, %103 ]
  %58 = phi ptr [ %5, %48 ], [ %110, %103 ]
  %59 = phi i32 [ 0, %48 ], [ %105, %103 ]
  %60 = phi i32 [ %44, %48 ], [ %104, %103 ]
  br i1 %49, label %61, label %103

61:                                               ; preds = %54
  %62 = icmp ne ptr %58, null
  br label %63

63:                                               ; preds = %61, %91
  %64 = phi i64 [ 0, %61 ], [ %101, %91 ]
  %65 = phi i32 [ %56, %61 ], [ %95, %91 ]
  %66 = phi i32 [ %59, %61 ], [ %86, %91 ]
  %67 = phi i32 [ %60, %61 ], [ %100, %91 ]
  br i1 %50, label %68, label %72

68:                                               ; preds = %63
  tail call fastcc void @lumrow(ptr noundef %57, ptr noundef %28, i32 noundef %1) #14
  %69 = trunc i64 %64 to i32
  %70 = sub i32 3, %69
  %71 = tail call fastcc i32 @compressrow(ptr noundef %28, ptr noundef %24, i32 noundef %70, i32 noundef %1) #14
  br label %85

72:                                               ; preds = %63
  %73 = icmp ult i64 %64, 4
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  %75 = trunc i64 %64 to i32
  %76 = xor i32 %75, 3
  %77 = tail call fastcc i32 @compressrow(ptr noundef %57, ptr noundef %24, i32 noundef %76, i32 noundef %1) #14
  br label %85

78:                                               ; preds = %72
  %79 = icmp ult i64 %64, 8
  %80 = select i1 %79, i1 %62, i1 false
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = trunc i64 %64 to i32
  %83 = sub nuw nsw i32 7, %82
  %84 = tail call fastcc i32 @compressrow(ptr noundef nonnull %58, ptr noundef %24, i32 noundef %83, i32 noundef %1) #14
  br label %85

85:                                               ; preds = %74, %81, %78, %68
  %86 = phi i32 [ %71, %68 ], [ %77, %74 ], [ %84, %81 ], [ %66, %78 ]
  %87 = icmp sgt i32 %86, %21
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load ptr, ptr @stderr, align 8, !tbaa !38
  %90 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 44, i64 1, ptr %89) #16
  tail call void @exit(i32 noundef 1) #17
  unreachable

91:                                               ; preds = %85
  %92 = sext i32 %86 to i64
  %93 = tail call i64 @fwrite(ptr noundef %24, i64 noundef %92, i64 noundef 1, ptr noundef nonnull %7) #14
  %94 = trunc i64 %93 to i32
  %95 = mul i32 %65, %94
  %96 = mul nsw i64 %64, %51
  %97 = add nuw nsw i64 %96, %55
  %98 = getelementptr inbounds i32, ptr %16, i64 %97
  store i32 %67, ptr %98, align 4, !tbaa !40
  %99 = getelementptr inbounds i32, ptr %18, i64 %97
  store i32 %86, ptr %99, align 4, !tbaa !40
  %100 = add nsw i32 %86, %67
  %101 = add nuw nsw i64 %64, 1
  %102 = icmp eq i64 %101, %53
  br i1 %102, label %103, label %63, !llvm.loop !105

103:                                              ; preds = %91, %54
  %104 = phi i32 [ %60, %54 ], [ %100, %91 ]
  %105 = phi i32 [ %59, %54 ], [ %86, %91 ]
  %106 = phi i32 [ %56, %54 ], [ %95, %91 ]
  %107 = getelementptr inbounds i32, ptr %57, i64 %26
  %108 = icmp eq ptr %58, null
  %109 = getelementptr inbounds i32, ptr %58, i64 %26
  %110 = select i1 %108, ptr null, ptr %109
  %111 = add nuw nsw i64 %55, 1
  %112 = icmp eq i64 %111, %52
  br i1 %112, label %113, label %54, !llvm.loop !106

113:                                              ; preds = %103, %9
  %114 = phi i32 [ %42, %9 ], [ %106, %103 ]
  %115 = tail call i32 @fseek(ptr noundef nonnull %7, i64 noundef 512, i32 noundef 0) #14
  %116 = tail call fastcc i32 @writetab(ptr noundef nonnull %7, ptr noundef %16, i32 noundef %11) #14
  %117 = mul nsw i32 %116, %114
  %118 = tail call fastcc i32 @writetab(ptr noundef nonnull %7, ptr noundef %18, i32 noundef %11) #14
  %119 = mul nsw i32 %117, %118
  %120 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %120(ptr noundef nonnull %13) #15
  %121 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %121(ptr noundef %16) #15
  %122 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %122(ptr noundef %18) #15
  %123 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %123(ptr noundef %24) #15
  %124 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %124(ptr noundef %28) #15
  %125 = tail call i32 @fclose(ptr noundef nonnull %7) #14
  %126 = icmp eq i32 %119, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %113
  %128 = load ptr, ptr @stderr, align 8, !tbaa !38
  %129 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 42, i64 1, ptr %128) #16
  br label %130

130:                                              ; preds = %113, %6, %127
  %131 = phi i32 [ 0, %127 ], [ 0, %6 ], [ 1, %113 ]
  ret i32 %131
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i16 @getshort() unnamed_addr #7 !PGOFuncName !107 {
  %1 = load ptr, ptr @file_data, align 8, !tbaa !38
  %2 = load i32, ptr @file_offset, align 4, !tbaa !40
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds i8, ptr %1, i64 %3
  %5 = add nsw i32 %2, 2
  store i32 %5, ptr @file_offset, align 4, !tbaa !40
  %6 = load i8, ptr %4, align 1, !tbaa !34
  %7 = zext i8 %6 to i16
  %8 = shl nuw i16 %7, 8
  %9 = getelementptr inbounds i8, ptr %4, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !34
  %11 = zext i8 %10 to i16
  %12 = or disjoint i16 %8, %11
  ret i16 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc i32 @getlong() unnamed_addr #7 !PGOFuncName !108 {
  %1 = load ptr, ptr @file_data, align 8, !tbaa !38
  %2 = load i32, ptr @file_offset, align 4, !tbaa !40
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds i8, ptr %1, i64 %3
  %5 = add nsw i32 %2, 4
  store i32 %5, ptr @file_offset, align 4, !tbaa !40
  %6 = load i8, ptr %4, align 1, !tbaa !34
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 %7, 24
  %9 = getelementptr inbounds i8, ptr %4, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !34
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or disjoint i32 %12, %8
  %14 = getelementptr inbounds i8, ptr %4, i64 2
  %15 = load i8, ptr %14, align 1, !tbaa !34
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = or disjoint i32 %13, %17
  %19 = getelementptr inbounds i8, ptr %4, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !34
  %21 = zext i8 %20 to i32
  %22 = or disjoint i32 %18, %21
  ret i32 %22
}

; Function Attrs: optsize
declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @writeheader(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !109 {
  %3 = alloca %struct.IMAGE, align 8
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %3, i8 0, i64 176, i1 false)
  %4 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 176, i64 noundef 1, ptr noundef %0) #14
  %5 = tail call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 0) #14
  %6 = load i16, ptr %1, align 8, !tbaa !42
  tail call fastcc void @putshort(ptr noundef %0, i16 noundef zeroext %6) #14
  %7 = getelementptr inbounds %struct.IMAGE, ptr %1, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !45
  tail call fastcc void @putshort(ptr noundef %0, i16 noundef zeroext %8) #14
  %9 = getelementptr inbounds %struct.IMAGE, ptr %1, i64 0, i32 2
  %10 = load i16, ptr %9, align 4, !tbaa !83
  tail call fastcc void @putshort(ptr noundef %0, i16 noundef zeroext %10) #14
  %11 = getelementptr inbounds %struct.IMAGE, ptr %1, i64 0, i32 3
  %12 = load i16, ptr %11, align 2, !tbaa !46
  tail call fastcc void @putshort(ptr noundef %0, i16 noundef zeroext %12) #14
  %13 = getelementptr inbounds %struct.IMAGE, ptr %1, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !47
  tail call fastcc void @putshort(ptr noundef %0, i16 noundef zeroext %14) #14
  %15 = getelementptr inbounds %struct.IMAGE, ptr %1, i64 0, i32 5
  %16 = load i16, ptr %15, align 2, !tbaa !48
  tail call fastcc void @putshort(ptr noundef %0, i16 noundef zeroext %16) #14
  %17 = getelementptr inbounds %struct.IMAGE, ptr %1, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !103
  %19 = tail call fastcc i32 @putlong(ptr noundef %0, i32 noundef %18) #14
  %20 = getelementptr inbounds %struct.IMAGE, ptr %1, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !104
  %22 = tail call fastcc i32 @putlong(ptr noundef %0, i32 noundef %21) #14
  %23 = tail call fastcc i32 @putlong(ptr noundef %0, i32 noundef 0) #14
  %24 = tail call i64 @fwrite(ptr noundef nonnull @.str.11, i64 noundef 8, i64 noundef 1, ptr noundef %0) #14
  %25 = trunc i64 %24 to i32
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %3) #13
  ret i32 %25
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @lumrow(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #5 !PGOFuncName !110 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds i8, ptr %1, i64 3
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i32 [ %11, %7 ], [ %2, %5 ]
  %9 = phi ptr [ %27, %7 ], [ %6, %5 ]
  %10 = phi ptr [ %28, %7 ], [ %0, %5 ]
  %11 = add nsw i32 %8, -1
  %12 = load i8, ptr %10, align 1, !tbaa !34
  %13 = zext i8 %12 to i32
  %14 = mul nuw nsw i32 %13, 79
  %15 = getelementptr inbounds i8, ptr %10, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !34
  %17 = zext i8 %16 to i32
  %18 = mul nuw nsw i32 %17, 156
  %19 = add nuw nsw i32 %18, %14
  %20 = getelementptr inbounds i8, ptr %10, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !34
  %22 = zext i8 %21 to i32
  %23 = mul nuw nsw i32 %22, 21
  %24 = add nuw nsw i32 %19, %23
  %25 = lshr i32 %24, 8
  %26 = trunc i32 %25 to i8
  store i8 %26, ptr %9, align 1, !tbaa !34
  %27 = getelementptr inbounds i8, ptr %9, i64 4
  %28 = getelementptr inbounds i8, ptr %10, i64 4
  %29 = icmp eq i32 %11, 0
  br i1 %29, label %30, label %7, !llvm.loop !111

30:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @compressrow(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 !PGOFuncName !112 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = shl nsw i32 %3, 2
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %6, i64 %8
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %14, label %132

11:                                               ; preds = %121, %114
  %12 = phi ptr [ %103, %114 ], [ %130, %121 ]
  %13 = icmp ult ptr %115, %9
  br i1 %13, label %14, label %132, !llvm.loop !113

14:                                               ; preds = %4, %11
  %15 = phi ptr [ %115, %11 ], [ %6, %4 ]
  %16 = phi ptr [ %12, %11 ], [ %1, %4 ]
  %17 = getelementptr inbounds i8, ptr %15, i64 8
  %18 = icmp ult ptr %17, %9
  br i1 %18, label %19, label %32

19:                                               ; preds = %14, %29
  %20 = phi ptr [ %30, %29 ], [ %17, %14 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  %22 = load i8, ptr %21, align 1, !tbaa !34
  %23 = getelementptr inbounds i8, ptr %20, i64 -4
  %24 = load i8, ptr %23, align 1, !tbaa !34
  %25 = icmp eq i8 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i8, ptr %20, align 1, !tbaa !34
  %28 = icmp eq i8 %22, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %19, %26
  %30 = getelementptr inbounds i8, ptr %20, i64 4
  %31 = icmp ult ptr %30, %9
  br i1 %31, label %19, label %32, !llvm.loop !114

32:                                               ; preds = %26, %29, %14
  %33 = phi ptr [ %17, %14 ], [ %30, %29 ], [ %20, %26 ]
  %34 = getelementptr inbounds i8, ptr %33, i64 -8
  %35 = ptrtoint ptr %34 to i64
  %36 = ptrtoint ptr %15 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %102, label %45

41:                                               ; preds = %93, %57
  %42 = phi ptr [ %59, %57 ], [ %100, %93 ]
  %43 = phi ptr [ %60, %57 ], [ %99, %93 ]
  %44 = icmp eq i32 %52, 0
  br i1 %44, label %102, label %45, !llvm.loop !115

45:                                               ; preds = %32, %41
  %46 = phi i32 [ %52, %41 ], [ %39, %32 ]
  %47 = phi ptr [ %43, %41 ], [ %16, %32 ]
  %48 = phi ptr [ %42, %41 ], [ %15, %32 ]
  %49 = tail call i32 @llvm.smin.i32(i32 %46, i32 126)
  %50 = shl i32 %49, 16
  %51 = ashr exact i32 %50, 16
  %52 = sub nsw i32 %46, %51
  %53 = trunc i32 %49 to i8
  %54 = or i8 %53, -128
  %55 = getelementptr inbounds i8, ptr %47, i64 1
  store i8 %54, ptr %47, align 1, !tbaa !34
  %56 = icmp sgt i32 %51, 8
  br i1 %56, label %63, label %57

57:                                               ; preds = %63, %45
  %58 = phi i32 [ %49, %45 ], [ %91, %63 ]
  %59 = phi ptr [ %48, %45 ], [ %90, %63 ]
  %60 = phi ptr [ %55, %45 ], [ %89, %63 ]
  %61 = trunc i32 %58 to i16
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %41, label %93

63:                                               ; preds = %45, %63
  %64 = phi i32 [ %91, %63 ], [ %51, %45 ]
  %65 = phi ptr [ %89, %63 ], [ %55, %45 ]
  %66 = phi ptr [ %90, %63 ], [ %48, %45 ]
  %67 = load i8, ptr %66, align 1, !tbaa !34
  store i8 %67, ptr %65, align 1, !tbaa !34
  %68 = getelementptr inbounds i8, ptr %66, i64 4
  %69 = load i8, ptr %68, align 1, !tbaa !34
  %70 = getelementptr inbounds i8, ptr %65, i64 1
  store i8 %69, ptr %70, align 1, !tbaa !34
  %71 = getelementptr inbounds i8, ptr %66, i64 8
  %72 = load i8, ptr %71, align 1, !tbaa !34
  %73 = getelementptr inbounds i8, ptr %65, i64 2
  store i8 %72, ptr %73, align 1, !tbaa !34
  %74 = getelementptr inbounds i8, ptr %66, i64 12
  %75 = load i8, ptr %74, align 1, !tbaa !34
  %76 = getelementptr inbounds i8, ptr %65, i64 3
  store i8 %75, ptr %76, align 1, !tbaa !34
  %77 = getelementptr inbounds i8, ptr %66, i64 16
  %78 = load i8, ptr %77, align 1, !tbaa !34
  %79 = getelementptr inbounds i8, ptr %65, i64 4
  store i8 %78, ptr %79, align 1, !tbaa !34
  %80 = getelementptr inbounds i8, ptr %66, i64 20
  %81 = load i8, ptr %80, align 1, !tbaa !34
  %82 = getelementptr inbounds i8, ptr %65, i64 5
  store i8 %81, ptr %82, align 1, !tbaa !34
  %83 = getelementptr inbounds i8, ptr %66, i64 24
  %84 = load i8, ptr %83, align 1, !tbaa !34
  %85 = getelementptr inbounds i8, ptr %65, i64 6
  store i8 %84, ptr %85, align 1, !tbaa !34
  %86 = getelementptr inbounds i8, ptr %66, i64 28
  %87 = load i8, ptr %86, align 1, !tbaa !34
  %88 = getelementptr inbounds i8, ptr %65, i64 7
  store i8 %87, ptr %88, align 1, !tbaa !34
  %89 = getelementptr inbounds i8, ptr %65, i64 8
  %90 = getelementptr inbounds i8, ptr %66, i64 32
  %91 = add nsw i32 %64, -8
  %92 = icmp sgt i32 %64, 16
  br i1 %92, label %63, label %57, !llvm.loop !116

93:                                               ; preds = %57, %93
  %94 = phi i16 [ %97, %93 ], [ %61, %57 ]
  %95 = phi ptr [ %99, %93 ], [ %60, %57 ]
  %96 = phi ptr [ %100, %93 ], [ %59, %57 ]
  %97 = add i16 %94, -1
  %98 = load i8, ptr %96, align 1, !tbaa !34
  %99 = getelementptr inbounds i8, ptr %95, i64 1
  store i8 %98, ptr %95, align 1, !tbaa !34
  %100 = getelementptr inbounds i8, ptr %96, i64 4
  %101 = icmp eq i16 %97, 0
  br i1 %101, label %41, label %93, !llvm.loop !117

102:                                              ; preds = %41, %32
  %103 = phi ptr [ %16, %32 ], [ %43, %41 ]
  %104 = load i8, ptr %34, align 1, !tbaa !34
  %105 = getelementptr inbounds i8, ptr %33, i64 -4
  %106 = icmp ult ptr %105, %9
  br i1 %106, label %107, label %114

107:                                              ; preds = %102, %111
  %108 = phi ptr [ %112, %111 ], [ %105, %102 ]
  %109 = load i8, ptr %108, align 1, !tbaa !34
  %110 = icmp eq i8 %109, %104
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = getelementptr inbounds i8, ptr %108, i64 4
  %113 = icmp ult ptr %112, %9
  br i1 %113, label %107, label %114, !llvm.loop !118

114:                                              ; preds = %107, %111, %102
  %115 = phi ptr [ %105, %102 ], [ %112, %111 ], [ %108, %107 ]
  %116 = ptrtoint ptr %115 to i64
  %117 = sub i64 %116, %35
  %118 = sdiv i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %11, label %121

121:                                              ; preds = %114, %121
  %122 = phi i32 [ %127, %121 ], [ %119, %114 ]
  %123 = phi ptr [ %130, %121 ], [ %103, %114 ]
  %124 = tail call i32 @llvm.smin.i32(i32 %122, i32 126)
  %125 = shl i32 %124, 16
  %126 = ashr exact i32 %125, 16
  %127 = sub nsw i32 %122, %126
  %128 = trunc i32 %124 to i8
  %129 = getelementptr inbounds i8, ptr %123, i64 1
  store i8 %128, ptr %123, align 1, !tbaa !34
  %130 = getelementptr inbounds i8, ptr %123, i64 2
  store i8 %104, ptr %129, align 1, !tbaa !34
  %131 = icmp eq i32 %127, 0
  br i1 %131, label %11, label %121, !llvm.loop !119

132:                                              ; preds = %11, %4
  %133 = phi ptr [ %1, %4 ], [ %12, %11 ]
  %134 = getelementptr inbounds i8, ptr %133, i64 1
  store i8 0, ptr %133, align 1, !tbaa !34
  %135 = ptrtoint ptr %134 to i64
  %136 = ptrtoint ptr %1 to i64
  %137 = sub i64 %135, %136
  %138 = trunc i64 %137 to i32
  ret i32 %138
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @writetab(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 !PGOFuncName !120 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %11, %5 ], [ %2, %3 ]
  %7 = phi ptr [ %8, %5 ], [ %1, %3 ]
  %8 = getelementptr inbounds i32, ptr %7, i64 1
  %9 = load i32, ptr %7, align 4, !tbaa !40
  %10 = tail call fastcc i32 @putlong(ptr noundef %0, i32 noundef %9) #14
  %11 = add nsw i32 %6, -4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %5, !llvm.loop !121

13:                                               ; preds = %5, %3
  %14 = phi i32 [ 0, %3 ], [ %10, %5 ]
  ret i32 %14
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @putshort(ptr nocapture noundef %0, i16 noundef zeroext %1) unnamed_addr #9 !PGOFuncName !122 {
  %3 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  %4 = lshr i16 %1, 8
  %5 = trunc i16 %4 to i8
  store i8 %5, ptr %3, align 1, !tbaa !34
  %6 = trunc i16 %1 to i8
  %7 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  store i8 %6, ptr %7, align 1, !tbaa !34
  %8 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 2, i64 noundef 1, ptr noundef %0) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @putlong(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 !PGOFuncName !123 {
  %3 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = lshr i32 %1, 24
  %5 = trunc i32 %4 to i8
  store i8 %5, ptr %3, align 1, !tbaa !34
  %6 = lshr i32 %1, 16
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !34
  %9 = lshr i32 %1, 8
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  store i8 %10, ptr %11, align 1, !tbaa !34
  %12 = trunc i32 %1 to i8
  %13 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  store i8 %12, ptr %13, align 1, !tbaa !34
  %14 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 4, i64 noundef 1, ptr noundef %0) #14
  %15 = trunc i64 %14 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %15
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { cold }
attributes #17 = { noreturn nounwind optsize }

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
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{i32 0, i32 2}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !35, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !35, i64 0}
!42 = !{!43, !44, i64 0}
!43 = !{!"", !44, i64 0, !44, i64 2, !44, i64 4, !44, i64 6, !44, i64 8, !44, i64 10, !41, i64 12, !41, i64 16, !41, i64 20, !35, i64 24, !41, i64 104, !41, i64 108, !44, i64 112, !44, i64 114, !44, i64 116, !44, i64 118, !44, i64 120, !44, i64 122, !39, i64 128, !39, i64 136, !39, i64 144, !41, i64 152, !41, i64 156, !39, i64 160, !39, i64 168}
!44 = !{!"short", !35, i64 0}
!45 = !{!43, !44, i64 2}
!46 = !{!43, !44, i64 6}
!47 = !{!43, !44, i64 8}
!48 = !{!43, !44, i64 10}
!49 = !{!50, !41, i64 312}
!50 = !{!"ImBuf", !39, i64 0, !39, i64 8, !41, i64 16, !41, i64 20, !35, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !39, i64 40, !39, i64 48, !35, i64 56, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !39, i64 88, !39, i64 96, !39, i64 104, !51, i64 112, !35, i64 120, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !39, i64 296, !39, i64 304, !41, i64 312, !35, i64 316, !35, i64 1340, !39, i64 2368, !41, i64 2376, !39, i64 2384, !41, i64 2392, !41, i64 2396, !39, i64 2400, !39, i64 2408, !39, i64 2416, !39, i64 2424, !41, i64 2432, !52, i64 2436, !53, i64 2456}
!51 = !{!"float", !35, i64 0}
!52 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!53 = !{!"DDSData", !41, i64 0, !41, i64 4, !39, i64 8, !41, i64 16}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = distinct !{!56, !55}
!57 = !{!50, !35, i64 24}
!58 = !{!50, !39, i64 40}
!59 = distinct !{!59, !55}
!60 = distinct !{!60, !55}
!61 = !{!50, !39, i64 96}
!62 = distinct !{!62, !55}
!63 = distinct !{!63, !55}
!64 = !{!50, !39, i64 48}
!65 = distinct !{!65, !55}
!66 = distinct !{!66, !55}
!67 = distinct !{!67, !55}
!68 = distinct !{!68, !55}
!69 = distinct !{!69, !55}
!70 = distinct !{!70, !55}
!71 = distinct !{!71, !55}
!72 = distinct !{!72, !55}
!73 = !{!50, !41, i64 16}
!74 = !{!50, !41, i64 20}
!75 = distinct !{!75, !55}
!76 = distinct !{!76, !55}
!77 = distinct !{!77, !55}
!78 = !{!51, !51, i64 0}
!79 = distinct !{!79, !55}
!80 = distinct !{!80, !55}
!81 = distinct !{!81, !55}
!82 = !{!"iris.c:readheader"}
!83 = !{!43, !44, i64 4}
!84 = !{!"iris.c:readtab"}
!85 = distinct !{!85, !55}
!86 = !{!"iris.c:expandrow"}
!87 = distinct !{!87, !55}
!88 = distinct !{!88, !55}
!89 = distinct !{!89, !55}
!90 = distinct !{!90, !55}
!91 = !{!"iris.c:expandrow2"}
!92 = distinct !{!92, !55}
!93 = distinct !{!93, !55}
!94 = distinct !{!94, !55}
!95 = distinct !{!95, !55}
!96 = !{!"iris.c:interleaverow"}
!97 = distinct !{!97, !55}
!98 = !{!"iris.c:interleaverow2"}
!99 = distinct !{!99, !55}
!100 = !{!"iris.c:test_endian_zbuf"}
!101 = distinct !{!101, !55}
!102 = !{!"iris.c:output_iris"}
!103 = !{!43, !41, i64 12}
!104 = !{!43, !41, i64 16}
!105 = distinct !{!105, !55}
!106 = distinct !{!106, !55}
!107 = !{!"iris.c:getshort"}
!108 = !{!"iris.c:getlong"}
!109 = !{!"iris.c:writeheader"}
!110 = !{!"iris.c:lumrow"}
!111 = distinct !{!111, !55}
!112 = !{!"iris.c:compressrow"}
!113 = distinct !{!113, !55}
!114 = distinct !{!114, !55}
!115 = distinct !{!115, !55}
!116 = distinct !{!116, !55}
!117 = distinct !{!117, !55}
!118 = distinct !{!118, !55}
!119 = distinct !{!119, !55}
!120 = !{!"iris.c:writetab"}
!121 = distinct !{!121, !55}
!122 = !{!"iris.c:putshort"}
!123 = !{!"iris.c:putlong"}
