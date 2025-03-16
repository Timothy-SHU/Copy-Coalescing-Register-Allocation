; ModuleID = 'src/getarg.c'
source_filename = "src/getarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [63 x i8] c"$Id: getarg.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@getarg_id = dso_local local_unnamed_addr global ptr @.str, align 8
@help_only = dso_local local_unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" -%s <%s> [\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"]\09%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c" -%s <string> [%s]\09%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [18 x i8] c" [+|-]%s [%s]\09%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"%s : %s invalid after -%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"%s : no argument after -%s\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @getargs(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ...) local_unnamed_addr #0 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %270

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %12 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %13 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  br label %15

15:                                               ; preds = %6, %263
  %16 = phi i32 [ %1, %6 ], [ %266, %263 ]
  %17 = phi i32 [ 0, %6 ], [ %265, %263 ]
  %18 = phi i32 [ 0, %6 ], [ %264, %263 ]
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds ptr, ptr %2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %261, label %25

25:                                               ; preds = %15
  %26 = load i8, ptr %21, align 1, !tbaa !9
  %27 = icmp eq i8 %26, 43
  switch i8 %26, label %261 [
    i8 45, label %28
    i8 43, label %28
  ]

28:                                               ; preds = %25, %25
  br label %29

29:                                               ; preds = %28, %231
  %30 = phi i32 [ %237, %231 ], [ 1, %28 ]
  %31 = phi ptr [ %234, %231 ], [ %22, %28 ]
  %32 = phi i32 [ %235, %231 ], [ %18, %28 ]
  %33 = load i8, ptr %31, align 1, !tbaa !9
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %238, label %35

35:                                               ; preds = %29
  call void @llvm.va_start(ptr nonnull %4)
  br label %36

36:                                               ; preds = %225, %35
  %37 = phi i32 [ 0, %35 ], [ %226, %225 ]
  %38 = phi i32 [ %30, %35 ], [ %227, %225 ]
  %39 = phi ptr [ %31, %35 ], [ %228, %225 ]
  %40 = phi i32 [ %32, %35 ], [ %229, %225 ]
  %41 = load i32, ptr %4, align 16
  %42 = icmp ult i32 %41, 41
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load ptr, ptr %8, align 16
  %45 = zext nneg i32 %41 to i64
  %46 = getelementptr i8, ptr %44, i64 %45
  %47 = add nuw nsw i32 %41, 8
  store i32 %47, ptr %4, align 16
  br label %51

48:                                               ; preds = %36
  %49 = load ptr, ptr %7, align 8
  %50 = getelementptr i8, ptr %49, i64 8
  store ptr %50, ptr %7, align 8
  br label %51

51:                                               ; preds = %48, %43
  %52 = phi ptr [ %46, %43 ], [ %49, %48 ]
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %231, label %55

55:                                               ; preds = %51
  %56 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %53) #7
  %57 = trunc i64 %56 to i32
  %58 = load i32, ptr %4, align 16
  %59 = icmp ult i32 %58, 41
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load ptr, ptr %10, align 16
  %62 = zext nneg i32 %58 to i64
  %63 = getelementptr i8, ptr %61, i64 %62
  %64 = add nuw nsw i32 %58, 8
  store i32 %64, ptr %4, align 16
  br label %68

65:                                               ; preds = %55
  %66 = load ptr, ptr %9, align 8
  %67 = getelementptr i8, ptr %66, i64 8
  store ptr %67, ptr %9, align 8
  br label %68

68:                                               ; preds = %65, %60
  %69 = phi ptr [ %63, %60 ], [ %66, %65 ]
  %70 = load ptr, ptr %69, align 8
  %71 = load i32, ptr %4, align 16
  %72 = icmp ult i32 %71, 41
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load ptr, ptr %12, align 16
  %75 = zext nneg i32 %71 to i64
  %76 = getelementptr i8, ptr %74, i64 %75
  %77 = add nuw nsw i32 %71, 8
  store i32 %77, ptr %4, align 16
  br label %81

78:                                               ; preds = %68
  %79 = load ptr, ptr %11, align 8
  %80 = getelementptr i8, ptr %79, i64 8
  store ptr %80, ptr %11, align 8
  br label %81

81:                                               ; preds = %78, %73
  %82 = phi ptr [ %76, %73 ], [ %79, %78 ]
  %83 = load ptr, ptr %82, align 8
  %84 = load i32, ptr %4, align 16
  %85 = icmp ult i32 %84, 41
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load ptr, ptr %14, align 16
  %88 = zext nneg i32 %84 to i64
  %89 = getelementptr i8, ptr %87, i64 %88
  %90 = add nuw nsw i32 %84, 8
  store i32 %90, ptr %4, align 16
  br label %94

91:                                               ; preds = %81
  %92 = load ptr, ptr %13, align 8
  %93 = getelementptr i8, ptr %92, i64 8
  store ptr %93, ptr %13, align 8
  br label %94

94:                                               ; preds = %91, %86
  %95 = phi ptr [ %89, %86 ], [ %92, %91 ]
  %96 = load ptr, ptr %95, align 8
  %97 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(6) @.str.1) #7
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %146

99:                                               ; preds = %94
  store i32 1, ptr @help_only, align 4, !tbaa !10
  %100 = add nsw i32 %40, 1
  %101 = icmp eq i32 %40, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load ptr, ptr @stderr, align 8, !tbaa !5
  %104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef nonnull @.str.2, ptr noundef %0) #8
  br label %105

105:                                              ; preds = %102, %99
  %106 = icmp eq ptr %70, null
  br i1 %106, label %140, label %107

107:                                              ; preds = %105
  %108 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %70, i32 noundef 37) #7
  %109 = icmp eq ptr %108, null
  %110 = load ptr, ptr @stderr, align 8, !tbaa !5
  br i1 %109, label %135, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds i8, ptr %108, i64 1
  %113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.3, ptr noundef nonnull %53, ptr noundef nonnull %112) #8
  %114 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %108) #7
  %115 = getelementptr inbounds i8, ptr %108, i64 %114
  %116 = getelementptr inbounds i8, ptr %115, i64 -1
  %117 = load i8, ptr %116, align 1, !tbaa !9
  switch i8 %117, label %132 [
    i8 101, label %118
    i8 102, label %118
    i8 103, label %118
    i8 117, label %122
    i8 100, label %122
  ]

118:                                              ; preds = %111, %111, %111
  %119 = load ptr, ptr @stderr, align 8, !tbaa !5
  %120 = load double, ptr %83, align 8, !tbaa !12
  %121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %119, ptr noundef nonnull %70, double noundef %120) #8
  br label %132

122:                                              ; preds = %111, %111
  %123 = load i8, ptr %112, align 1, !tbaa !9
  %124 = icmp eq i8 %123, 108
  %125 = load ptr, ptr @stderr, align 8, !tbaa !5
  br i1 %124, label %126, label %129

126:                                              ; preds = %122
  %127 = load i64, ptr %83, align 8, !tbaa !14
  %128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef nonnull %70, i64 noundef %127) #8
  br label %132

129:                                              ; preds = %122
  %130 = load i32, ptr %83, align 4, !tbaa !10
  %131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef nonnull %70, i32 noundef %130) #8
  br label %132

132:                                              ; preds = %126, %129, %111, %118
  %133 = load ptr, ptr @stderr, align 8, !tbaa !5
  %134 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef nonnull @.str.4, ptr noundef %96) #8
  br label %225

135:                                              ; preds = %107
  %136 = load ptr, ptr %83, align 8, !tbaa !5
  %137 = icmp eq ptr %136, null
  %138 = select i1 %137, ptr @.str.6, ptr %136
  %139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.5, ptr noundef nonnull %53, ptr noundef nonnull %138, ptr noundef %96) #8
  br label %225

140:                                              ; preds = %105
  %141 = load ptr, ptr @stderr, align 8, !tbaa !5
  %142 = load i32, ptr %83, align 4, !tbaa !10
  %143 = icmp eq i32 %142, 0
  %144 = select i1 %143, ptr @.str.9, ptr @.str.8
  %145 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef nonnull @.str.7, ptr noundef nonnull %53, ptr noundef nonnull %144, ptr noundef %96) #8
  br label %225

146:                                              ; preds = %94
  %147 = icmp sgt i32 %57, 1
  br i1 %147, label %148, label %187

148:                                              ; preds = %146
  %149 = icmp eq i32 %37, 0
  br i1 %149, label %150, label %225

150:                                              ; preds = %148
  %151 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) %53) #7
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %225

153:                                              ; preds = %150
  %154 = icmp eq ptr %70, null
  br i1 %154, label %177, label %155

155:                                              ; preds = %153
  %156 = add nsw i32 %38, %17
  %157 = icmp slt i32 %156, %16
  br i1 %157, label %158, label %173

158:                                              ; preds = %155
  %159 = add nsw i32 %38, 1
  %160 = sext i32 %156 to i64
  %161 = getelementptr inbounds ptr, ptr %2, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !5
  %163 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %70, i32 noundef 37) #7
  %164 = icmp eq ptr %163, null
  br i1 %164, label %172, label %165

165:                                              ; preds = %158
  %166 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %162, ptr noundef nonnull %70, ptr noundef %83) #6
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %183, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr @stderr, align 8, !tbaa !5
  %170 = load ptr, ptr %2, align 8, !tbaa !5
  %171 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef nonnull @.str.10, ptr noundef %170, ptr noundef %162, ptr noundef nonnull %53) #8
  br label %183

172:                                              ; preds = %158
  store ptr %162, ptr %83, align 8, !tbaa !5
  br label %183

173:                                              ; preds = %155
  %174 = load ptr, ptr @stderr, align 8, !tbaa !5
  %175 = load ptr, ptr %2, align 8, !tbaa !5
  %176 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef nonnull @.str.11, ptr noundef %175, ptr noundef nonnull %53) #8
  br label %183

177:                                              ; preds = %153
  br i1 %27, label %178, label %179

178:                                              ; preds = %177
  store i32 1, ptr %83, align 4, !tbaa !10
  br label %183

179:                                              ; preds = %177
  %180 = load i32, ptr %83, align 4, !tbaa !10
  %181 = icmp eq i32 %180, 0
  %182 = zext i1 %181 to i32
  store i32 %182, ptr %83, align 4, !tbaa !10
  br label %183

183:                                              ; preds = %172, %168, %165, %178, %179, %173
  %184 = phi i32 [ %38, %173 ], [ %38, %178 ], [ %38, %179 ], [ %159, %165 ], [ %159, %168 ], [ %159, %172 ]
  %185 = and i64 %56, 4294967295
  %186 = getelementptr inbounds i8, ptr %39, i64 %185
  br label %225

187:                                              ; preds = %146
  %188 = load i8, ptr %39, align 1, !tbaa !9
  %189 = load i8, ptr %53, align 1, !tbaa !9
  %190 = icmp eq i8 %188, %189
  br i1 %190, label %191, label %225

191:                                              ; preds = %187
  %192 = icmp eq ptr %70, null
  br i1 %192, label %215, label %193

193:                                              ; preds = %191
  %194 = add nsw i32 %38, %17
  %195 = icmp slt i32 %194, %16
  br i1 %195, label %196, label %211

196:                                              ; preds = %193
  %197 = add nsw i32 %38, 1
  %198 = sext i32 %194 to i64
  %199 = getelementptr inbounds ptr, ptr %2, i64 %198
  %200 = load ptr, ptr %199, align 8, !tbaa !5
  %201 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %70, i32 noundef 37) #7
  %202 = icmp eq ptr %201, null
  br i1 %202, label %210, label %203

203:                                              ; preds = %196
  %204 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %200, ptr noundef nonnull %70, ptr noundef %83) #6
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %221, label %206

206:                                              ; preds = %203
  %207 = load ptr, ptr @stderr, align 8, !tbaa !5
  %208 = load ptr, ptr %2, align 8, !tbaa !5
  %209 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %207, ptr noundef nonnull @.str.10, ptr noundef %208, ptr noundef %200, ptr noundef nonnull %53) #8
  br label %221

210:                                              ; preds = %196
  store ptr %200, ptr %83, align 8, !tbaa !5
  br label %221

211:                                              ; preds = %193
  %212 = load ptr, ptr @stderr, align 8, !tbaa !5
  %213 = load ptr, ptr %2, align 8, !tbaa !5
  %214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef nonnull @.str.11, ptr noundef %213, ptr noundef nonnull %53) #8
  br label %221

215:                                              ; preds = %191
  br i1 %27, label %216, label %217

216:                                              ; preds = %215
  store i32 1, ptr %83, align 4, !tbaa !10
  br label %221

217:                                              ; preds = %215
  %218 = load i32, ptr %83, align 4, !tbaa !10
  %219 = icmp eq i32 %218, 0
  %220 = zext i1 %219 to i32
  store i32 %220, ptr %83, align 4, !tbaa !10
  br label %221

221:                                              ; preds = %210, %206, %203, %216, %217, %211
  %222 = phi i32 [ %38, %211 ], [ %38, %216 ], [ %38, %217 ], [ %197, %203 ], [ %197, %206 ], [ %197, %210 ]
  %223 = add nsw i32 %37, 1
  %224 = getelementptr inbounds i8, ptr %39, i64 1
  br label %225

225:                                              ; preds = %140, %187, %148, %150, %135, %132, %221, %183
  %226 = phi i32 [ 1, %183 ], [ %223, %221 ], [ %37, %132 ], [ %37, %135 ], [ %37, %150 ], [ %37, %148 ], [ %37, %187 ], [ %37, %140 ]
  %227 = phi i32 [ %184, %183 ], [ %222, %221 ], [ %38, %132 ], [ %38, %135 ], [ %38, %150 ], [ %38, %148 ], [ %38, %187 ], [ %38, %140 ]
  %228 = phi ptr [ %186, %183 ], [ %224, %221 ], [ %39, %132 ], [ %39, %135 ], [ %39, %150 ], [ %39, %148 ], [ %39, %187 ], [ %39, %140 ]
  %229 = phi i32 [ %40, %183 ], [ %40, %221 ], [ %100, %132 ], [ %100, %135 ], [ %40, %150 ], [ %40, %148 ], [ %40, %187 ], [ %100, %140 ]
  %230 = phi i1 [ false, %183 ], [ false, %221 ], [ true, %132 ], [ true, %135 ], [ true, %150 ], [ true, %148 ], [ true, %187 ], [ true, %140 ]
  br i1 %230, label %36, label %231

231:                                              ; preds = %225, %51
  %232 = phi i32 [ %226, %225 ], [ %37, %51 ]
  %233 = phi i32 [ %227, %225 ], [ %38, %51 ]
  %234 = phi ptr [ %228, %225 ], [ %39, %51 ]
  %235 = phi i32 [ %229, %225 ], [ %40, %51 ]
  call void @llvm.va_end(ptr %4)
  %236 = icmp eq i32 %232, 0
  %237 = select i1 %236, i32 0, i32 %233
  br i1 %236, label %238, label %29

238:                                              ; preds = %231, %29
  %239 = phi i32 [ %237, %231 ], [ %30, %29 ]
  %240 = phi i32 [ %235, %231 ], [ %32, %29 ]
  %241 = icmp eq i32 %239, 0
  br i1 %241, label %259, label %242

242:                                              ; preds = %238
  %243 = sub nsw i32 %16, %239
  %244 = icmp sgt i32 %17, %243
  br i1 %244, label %263, label %245

245:                                              ; preds = %242
  %246 = sext i32 %17 to i64
  %247 = sext i32 %239 to i64
  %248 = add i32 %16, 1
  %249 = sub i32 %248, %239
  %250 = getelementptr ptr, ptr %2, i64 %247
  br label %251

251:                                              ; preds = %245, %251
  %252 = phi i64 [ %246, %245 ], [ %256, %251 ]
  %253 = getelementptr ptr, ptr %250, i64 %252
  %254 = load ptr, ptr %253, align 8, !tbaa !5
  %255 = getelementptr inbounds ptr, ptr %2, i64 %252
  store ptr %254, ptr %255, align 8, !tbaa !5
  %256 = add nsw i64 %252, 1
  %257 = trunc i64 %256 to i32
  %258 = icmp eq i32 %249, %257
  br i1 %258, label %263, label %251, !llvm.loop !16

259:                                              ; preds = %238
  %260 = add nsw i32 %17, 1
  br label %263

261:                                              ; preds = %25, %15
  %262 = add nsw i32 %17, 1
  br label %263

263:                                              ; preds = %251, %242, %259, %261
  %264 = phi i32 [ %18, %261 ], [ %240, %259 ], [ %240, %242 ], [ %240, %251 ]
  %265 = phi i32 [ %262, %261 ], [ %260, %259 ], [ %17, %242 ], [ %17, %251 ]
  %266 = phi i32 [ %16, %261 ], [ %16, %259 ], [ %243, %242 ], [ %243, %251 ]
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %15, label %268, !llvm.loop !18

268:                                              ; preds = %263
  %269 = icmp ne i32 %264, 0
  br label %270

270:                                              ; preds = %268, %3
  %271 = phi i1 [ false, %3 ], [ %269, %268 ]
  %272 = phi i32 [ %1, %3 ], [ %266, %268 ]
  %273 = load i32, ptr @help_only, align 4, !tbaa !10
  %274 = icmp ne i32 %273, 0
  %275 = select i1 %274, i1 %271, i1 false
  br i1 %275, label %276, label %279

276:                                              ; preds = %270
  %277 = load ptr, ptr @stderr, align 8, !tbaa !5
  %278 = call i32 @fputc(i32 10, ptr %277)
  br label %279

279:                                              ; preds = %276, %270
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret i32 %272
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !17}
